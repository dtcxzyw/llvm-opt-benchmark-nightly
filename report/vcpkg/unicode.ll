inline.NumInlined: 780
inline.NumDeleted: 449
begin_hunk_0_@_ZL19C_A_T_C_H_T_E_S_T_0v:._crit_edge.i.i
  %i.nu = zext i1 %i.nr to i8
  store i8 1, ptr %i.hf, align 8, !tbaa !33, !alias.scope !79
  store i8 %i.nu, ptr %i.hg, align 1, !tbaa !36, !alias.scope !79
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKN5vcpkg7Unicode9utf8_errcES5_EE, i64 16), ptr %64, align 8, !tbaa !37, !alias.scope !79
  store ptr %i.i, ptr %i.hh, align 8, !tbaa !39, !alias.scope !79
  store ptr %i.ns, ptr %i.hi, align 8, !tbaa !40, !alias.scope !79
  store i64 %i.nt, ptr %.sroa.2.0..sroa_idx.i.i214, align 8, !tbaa !21, !alias.scope !79
  store ptr %i.j, ptr %i.hj, align 8, !tbaa !39, !alias.scope !79
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %60, ptr noundef nonnull align 8 dereferenceable(10) %64)
          to label %bb.cv unwind label %bb.cz

bb.cv:                                            ; preds = %bb.cu
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %64) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #19
  br label %bb.db

bb.cw:                                            ; preds = %.body210
  %i.nv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cy unwind label %bb.gb

bb.cx:                                            ; preds = %bb.cq, %bb.cp
  %i.nw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cw, %bb.cx
  %.pn112 = phi { ptr, i32 } [ %i.nw, %bb.cx ], [ %i.nv, %bb.cw ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %56) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #19
  br label %bb.fy

bb.cz:                                            ; preds = %bb.cu
  %i.nx = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %64) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  %.25 = extractvalue { ptr, i32 } %i.nx, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #19
  %i.ny = call ptr @__cxa_begin_catch(ptr %.25) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %60)
          to label %bb.da unwind label %bb.dh

bb.da:                                            ; preds = %bb.cz
  invoke void @__cxa_end_catch()
          to label %bb.db unwind label %bb.di

bb.db:                                            ; preds = %bb.da, %bb.cv
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %60)
          to label %bb.dc unwind label %bb.di

bb.dc:                                            ; preds = %bb.db
  %i.nz = load i8, ptr %i.hk, align 2, !tbaa !41, !range !48, !noundef !49
  %i.oa = trunc nuw i8 %i.nz to i1
  br i1 %i.oa, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ob = load ptr, ptr %i.hl, align 8, !tbaa !50, !nonnull !49, !align !51 ; 2 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !37
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 112
  %i.oe = load ptr, ptr %i.od, align 8
  invoke void %i.oe(ptr noundef nonnull align 8 dereferenceable(8) %i.ob, ptr noundef nonnull align 8 dereferenceable(72) %60)
          to label %bb.df unwind label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.of = landingpad { ptr, i32 }
          catch ptr null
  %i.og = extractvalue { ptr, i32 } %i.of, 0
  call void @__clang_call_terminate(ptr %i.og) #22
  unreachable

bb.df:                                            ; preds = %bb.dc, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #19
  store ptr @.str.24, ptr %66, align 8
  store i64 7, ptr %i.hm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #19
  store ptr @.str, ptr %67, align 8, !tbaa !9
  store i64 68, ptr %i.hn, align 8, !tbaa !14
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %68, ptr noundef nonnull @.str.32) #19
  %i.oh = load ptr, ptr %68, align 8
  %i.oi = load i64, ptr %i.ho, align 8
  call void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %65, ptr noundef nonnull align 8 dereferenceable(16) %66, ptr noundef nonnull align 8 dereferenceable(16) %67, ptr %i.oh, i64 %i.oi, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.oj = load i32, ptr %i.g, align 4, !tbaa !52, !noalias !82
  %i.ok = load i32, ptr %i.md, align 4, !tbaa !52, !noalias !82
  %i.ol = icmp eq i32 %i.oj, %i.ok
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.38) #19, !noalias !82
  %i.om = load ptr, ptr %4, align 8, !noalias !82
  %i.on = load i64, ptr %i.hp, align 8, !noalias !82
  %i.oo = zext i1 %i.ol to i8
  store i8 1, ptr %i.hq, align 8, !tbaa !33, !alias.scope !82
  store i8 %i.oo, ptr %i.hr, align 1, !tbaa !36, !alias.scope !82
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKDiS2_EE, i64 16), ptr %69, align 8, !tbaa !37, !alias.scope !82
  store ptr %i.g, ptr %i.hs, align 8, !tbaa !74, !alias.scope !82
  store ptr %i.om, ptr %i.ht, align 8, !tbaa !40, !alias.scope !82
  store i64 %i.on, ptr %.sroa.2.0..sroa_idx.i.i216, align 8, !tbaa !21, !alias.scope !82
  store ptr %i.md, ptr %i.hu, align 8, !tbaa !74, !alias.scope !82
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %65, ptr noundef nonnull align 8 dereferenceable(10) %69)
          to label %bb.dg unwind label %bb.dk

bb.dg:                                            ; preds = %bb.df
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %69) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #19
  br label %bb.dm

bb.dh:                                            ; preds = %bb.cz
  %i.op = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dj unwind label %bb.gb

bb.di:                                            ; preds = %bb.db, %bb.da
  %i.oq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dh, %bb.di
  %.pn115 = phi { ptr, i32 } [ %i.oq, %bb.di ], [ %i.op, %bb.dh ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %60) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #19
  br label %bb.fn

bb.dk:                                            ; preds = %bb.df
  %i.or = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %69) #19
  %.27 = extractvalue { ptr, i32 } %i.or, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #19
  %i.os = call ptr @__cxa_begin_catch(ptr %.27) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %65)
          to label %bb.dl unwind label %bb.dx

bb.dl:                                            ; preds = %bb.dk
  invoke void @__cxa_end_catch()
          to label %bb.dm unwind label %bb.dy

bb.dm:                                            ; preds = %bb.dl, %bb.dg
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %65)
          to label %bb.dn unwind label %bb.dy

bb.dn:                                            ; preds = %bb.dm
  %i.ot = load i8, ptr %i.hv, align 2, !tbaa !41, !range !48, !noundef !49
  %i.ou = trunc nuw i8 %i.ot to i1
  br i1 %i.ou, label %_ZN5Catch16AssertionHandlerD2Ev.exit217, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ov = load ptr, ptr %i.hw, align 8, !tbaa !50, !nonnull !49, !align !51 ; 2 uses
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !37
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 112
  %i.oy = load ptr, ptr %i.ox, align 8
  invoke void %i.oy(ptr noundef nonnull align 8 dereferenceable(8) %i.ov, ptr noundef nonnull align 8 dereferenceable(72) %65)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit217 unwind label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.oz = landingpad { ptr, i32 }
          catch ptr null
  %i.pa = extractvalue { ptr, i32 } %i.oz, 0
  call void @__clang_call_terminate(ptr %i.pa) #22
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit217:          ; preds = %bb.dn, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #19
  store ptr %i.hx, ptr %70, align 8, !tbaa !15
  store i64 0, ptr %i.hy, align 8, !tbaa !17
  store i8 0, ptr %i.hx, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #19
  store ptr @.str.24, ptr %72, align 8
  store i64 7, ptr %i.hz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #19
  store ptr @.str, ptr %73, align 8, !tbaa !9
  store i64 70, ptr %i.ia, align 8, !tbaa !14
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %74, ptr noundef nonnull @.str.33) #19
  %i.pb = load ptr, ptr %74, align 8
  %i.pc = load i64, ptr %i.ib, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %71, ptr noundef nonnull align 8 dereferenceable(16) %72, ptr noundef nonnull align 8 dereferenceable(16) %73, ptr %i.pb, i64 %i.pc, i32 noundef 1)
          to label %bb.dq unwind label %bb.ea

bb.dq:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit217
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #19
  %i.pd = load i32, ptr %i.g, align 4, !tbaa !52  ; 3 uses
  %i.pe = icmp ult i32 %i.pd, 128
  br i1 %i.pe, label %bb.dr, label %bb.dt

bb.dr:                                            ; preds = %bb.dq
  %i.pf = trunc nuw nsw i32 %i.pd to i8
  %i.pg = load i64, ptr %i.hy, align 8, !tbaa !17 ; 5 uses
  %i.ph = add i64 %i.pg, 1                        ; 2 uses
  %i.pi = load ptr, ptr %70, align 8, !tbaa !20   ; 2 uses
  %i.pj = icmp eq ptr %i.pi, %i.hx
  br i1 %i.pj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i218

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i219: ; preds = %bb.dr
  %i.pk = icmp ult i64 %i.pg, 16
  call void @llvm.assume(i1 %i.pk)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i218: ; preds = %bb.dr
  %i.pl = load i64, ptr %i.hx, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i218, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i219
  %i.pm = phi i64 [ %i.pl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i218 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i219 ]
  %i.pn = icmp ugt i64 %i.ph, %i.pm
  br i1 %i.pn, label %bb.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i

bb.ds:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %70, i64 noundef %i.pg, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc220 unwind label %bb.eb

.noexc220:                                        ; preds = %bb.ds
  %.pre.i.i = load ptr, ptr %70, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i: ; preds = %.noexc220, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.po = phi ptr [ %.pre.i.i, %.noexc220 ], [ %i.pi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.pg
  store i8 %i.pf, ptr %i.pp, align 1, !tbaa !19
  store i64 %i.ph, ptr %i.hy, align 8, !tbaa !17
  %i.pq = load ptr, ptr %70, align 8, !tbaa !20
  %88 = getelementptr i8, ptr %i.pq, i64 %i.pg
  %i.pr = getelementptr i8, ptr %88, i64 1
  store i8 0, ptr %i.pr, align 1, !tbaa !19
  br label %bb.du

bb.dt:                                            ; preds = %bb.dq
  %i.ps = invoke noundef zeroext i1 @_ZN5vcpkg7Unicode26utf8_append_big_code_pointERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDi(ptr noundef nonnull align 8 dereferenceable(32) %70, i32 noundef zeroext %i.pd)
          to label %bb.du unwind label %bb.eb

bb.du:                                            ; preds = %bb.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i
  %.0.i = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i ], [ %i.ps, %bb.dt ]
  %i.pt = zext i1 %.0.i to i8                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i8 0, ptr %i.ic, align 8, !tbaa !33, !alias.scope !85
  store i8 %i.pt, ptr %i.id, align 1, !tbaa !36, !alias.scope !85
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %3, align 8, !tbaa !37, !alias.scope !85
  store i8 %i.pt, ptr %i.ie, align 2, !tbaa !57, !alias.scope !85
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %71, ptr noundef nonnull align 8 dereferenceable(10) %3)
          to label %bb.dw unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.pu = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %.body222

bb.dw:                                            ; preds = %bb.du
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.ed

bb.dx:                                            ; preds = %bb.dk
  %i.pv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dz unwind label %bb.gb

bb.dy:                                            ; preds = %bb.dm, %bb.dl
  %i.pw = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dx, %bb.dy
  %.pn118 = phi { ptr, i32 } [ %i.pw, %bb.dy ], [ %i.pv, %bb.dx ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %65) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #19
  br label %bb.fn

bb.ea:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit217
  %i.px = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #19
  br label %bb.eo

bb.eb:                                            ; preds = %bb.dt, %bb.ds
  %i.py = landingpad { ptr, i32 }
          catch ptr null
  br label %.body222

.body222:                                         ; preds = %bb.dv, %bb.eb
  %eh.lpad-body223 = phi { ptr, i32 } [ %i.py, %bb.eb ], [ %i.pu, %bb.dv ]
  %i.pz = extractvalue { ptr, i32 } %eh.lpad-body223, 0
  %i.qa = call ptr @__cxa_begin_catch(ptr %i.pz) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %71)
          to label %bb.ec unwind label %bb.el

bb.ec:                                            ; preds = %.body222
  invoke void @__cxa_end_catch()
          to label %bb.ed unwind label %bb.em

bb.ed:                                            ; preds = %bb.ec, %bb.dw
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %71)
          to label %bb.ee unwind label %bb.em

bb.ee:                                            ; preds = %bb.ed
  %i.qb = load i8, ptr %i.if, align 2, !tbaa !41, !range !48, !noundef !49
  %i.qc = trunc nuw i8 %i.qb to i1
  br i1 %i.qc, label %_ZN5Catch16AssertionHandlerD2Ev.exit225, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.qd = load ptr, ptr %i.ig, align 8, !tbaa !50, !nonnull !49, !align !51 ; 2 uses
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !37
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 112
  %i.qg = load ptr, ptr %i.qf, align 8
  invoke void %i.qg(ptr noundef nonnull align 8 dereferenceable(8) %i.qd, ptr noundef nonnull align 8 dereferenceable(72) %71)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit225 unwind label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.qh = landingpad { ptr, i32 }
          catch ptr null
  %i.qi = extractvalue { ptr, i32 } %i.qh, 0
  call void @__clang_call_terminate(ptr %i.qi) #22
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit225:          ; preds = %bb.ee, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #19
  store ptr @.str.24, ptr %76, align 8
  store i64 7, ptr %i.ih, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #19
  store ptr @.str, ptr %77, align 8, !tbaa !9
  store i64 71, ptr %i.ii, align 8, !tbaa !14
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %78, ptr noundef nonnull @.str.34) #19
  %i.qj = load ptr, ptr %78, align 8
  %i.qk = load i64, ptr %i.ij, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %75, ptr noundef nonnull align 8 dereferenceable(16) %76, ptr noundef nonnull align 8 dereferenceable(16) %77, ptr %i.qj, i64 %i.qk, i32 noundef 1)
          to label %bb.eh unwind label %bb.ep

bb.eh:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit225
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #19
  %i.ql = load i64, ptr %i.hy, align 8, !tbaa !17 ; 2 uses
  %.not.not.i.i.i.i = icmp samesign eq i64 %i.ql, 0
  br i1 %.not.not.i.i.i.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.qm = load ptr, ptr %70, align 8, !tbaa !20
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %i.qm, ptr %i.nn, i64 %i.ql)
  %.not9.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  %i.qn = zext i1 %.not9.i.i.i.i to i8
  br label %bb.ej

bb.ej:                                            ; preds = %bb.eh, %bb.ei
  %spec.select.i.i.i.i = phi i8 [ %i.qn, %bb.ei ], [ 1, %bb.eh ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store i8 0, ptr %i.ik, align 8, !tbaa !33, !alias.scope !88
  store i8 %spec.select.i.i.i.i, ptr %i.il, align 1, !tbaa !36, !alias.scope !88
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %2, align 8, !tbaa !37, !alias.scope !88
  store i8 %spec.select.i.i.i.i, ptr %i.im, align 2, !tbaa !57, !alias.scope !88
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %75, ptr noundef nonnull align 8 dereferenceable(10) %2)
          to label %bb.ek unwind label %.body226

.body226:                                         ; preds = %bb.ej
  %i.qo = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.qp = extractvalue { ptr, i32 } %i.qo, 0
  %i.qq = call ptr @__cxa_begin_catch(ptr %i.qp) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %75)
          to label %bb.eq unwind label %bb.ex

bb.ek:                                            ; preds = %bb.ej
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.er

bb.el:                                            ; preds = %.body222
  %i.qr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.en unwind label %bb.gb

bb.em:                                            ; preds = %bb.ed, %bb.ec
  %i.qs = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.en:                                            ; preds = %bb.el, %bb.em
  %.pn120 = phi { ptr, i32 } [ %i.qs, %bb.em ], [ %i.qr, %bb.el ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %71) #19
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.ea
  %.pn120.pn = phi { ptr, i32 } [ %.pn120, %bb.en ], [ %i.px, %bb.ea ]
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #19
  br label %bb.fm

bb.ep:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit225
  %i.qt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #19
  br label %bb.fa

bb.eq:                                            ; preds = %.body226
  invoke void @__cxa_end_catch()
          to label %bb.er unwind label %bb.ey

bb.er:                                            ; preds = %bb.eq, %bb.ek
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %75)
          to label %bb.es unwind label %bb.ey

bb.es:                                            ; preds = %bb.er
  %i.qu = load i8, ptr %i.in, align 2, !tbaa !41, !range !48, !noundef !49
  %i.qv = trunc nuw i8 %i.qu to i1
  br i1 %i.qv, label %_ZN5Catch16AssertionHandlerD2Ev.exit229, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.qw = load ptr, ptr %i.io, align 8, !tbaa !50, !nonnull !49, !align !51 ; 2 uses
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !37
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 112
  %i.qz = load ptr, ptr %i.qy, align 8
  invoke void %i.qz(ptr noundef nonnull align 8 dereferenceable(8) %i.qw, ptr noundef nonnull align 8 dereferenceable(72) %75)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit229 unwind label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ra = landingpad { ptr, i32 }
          catch ptr null
end_hunk_0
begin_hunk_1_@_ZN5Catch10Generators14makeGeneratorsIRA16_KcJRA24_S2_RA21_S2_RA18_S2_RA26_S2_RA15_S2_RA22_S2_S8_SG_S8_SG_EEENS0_10GeneratorsIT_EEOSI_DpOT0_:bb.a
bb.a:
  %12 = alloca %"class.Catch::Generators::GeneratorWrapper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24, !noalias !233 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Catch10Generators20SingleValueGeneratorIRA16_KcEE, i64 16), ptr %i.a, align 8, !tbaa !37, !noalias !233
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !40, !noalias !233
  %i.c = ptrtoint ptr %i.a to i64
  store i64 %i.c, ptr %12, align 8, !tbaa !129, !alias.scope !230
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Catch10Generators10GeneratorsIRA16_KcEE, i64 16), ptr %0, align 8, !tbaa !37, !alias.scope !236
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false), !alias.scope !236
  %i.e = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #24
          to label %_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i unwind label %.body, !noalias !236 ; 3 uses

_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.d, align 8, !tbaa !127, !alias.scope !236
  store ptr %i.e, ptr %i.f, align 8, !tbaa !128, !alias.scope !236
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store ptr %i.h, ptr %i.g, align 8, !tbaa !113, !alias.scope !236
  invoke void @_ZN5Catch10Generators10GeneratorsIRA16_KcE8populateINS0_16GeneratorWrapperIS4_EEJRA24_S2_RA21_S2_RA18_S2_RA26_S2_RA15_S2_RA22_S2_SC_SK_SC_SK_EEEvOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 1 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(21) %3, ptr noundef nonnull align 1 dereferenceable(18) %4, ptr noundef nonnull align 1 dereferenceable(26) %5, ptr noundef nonnull align 1 dereferenceable(15) %6, ptr noundef nonnull align 1 dereferenceable(22) %7, ptr noundef nonnull align 1 dereferenceable(21) %8, ptr noundef nonnull align 1 dereferenceable(22) %9, ptr noundef nonnull align 1 dereferenceable(21) %10, ptr noundef nonnull align 1 dereferenceable(22) %11)
          to label %_ZN5Catch10Generators14makeGeneratorsIRA16_KcJRA24_S2_RA21_S2_RA18_S2_RA26_S2_RA15_S2_RA22_S2_S8_SG_S8_SG_EEENS0_10GeneratorsIT_EEONS0_16GeneratorWrapperISI_EEDpOT0_.exit unwind label %.body

.body:                                            ; preds = %_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #19
  call void @_ZN5Catch10Generators20GeneratorUntypedBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #19
  %i.j = load ptr, ptr %12, align 8, !tbaa !129   ; 3 uses
  %.not.i.i12 = icmp eq ptr %i.j, null
  br i1 %.not.i.i12, label %_ZN5Catch10Generators16GeneratorWrapperIRA16_KcED2Ev.exit14, label %_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA16_KcEEEclEPS6_.exit.i.i13

_ZN5Catch10Generators14makeGeneratorsIRA16_KcJRA24_S2_RA21_S2_RA18_S2_RA26_S2_RA15_S2_RA22_S2_S8_SG_S8_SG_EEENS0_10GeneratorsIT_EEONS0_16GeneratorWrapperISI_EEDpOT0_.exit: ; preds = %_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i
  %i.k = load ptr, ptr %12, align 8, !tbaa !129   ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZN5Catch10Generators16GeneratorWrapperIRA16_KcED2Ev.exit, label %_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA16_KcEEEclEPS6_.exit.i.i

_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA16_KcEEEclEPS6_.exit.i.i: ; preds = %_ZN5Catch10Generators14makeGeneratorsIRA16_KcJRA24_S2_RA21_S2_RA18_S2_RA26_S2_RA15_S2_RA22_S2_S8_SG_S8_SG_EEENS0_10GeneratorsIT_EEONS0_16GeneratorWrapperISI_EEDpOT0_.exit
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #19, !inline_history !239
  br label %_ZN5Catch10Generators16GeneratorWrapperIRA16_KcED2Ev.exit

_ZN5Catch10Generators16GeneratorWrapperIRA16_KcED2Ev.exit: ; preds = %_ZN5Catch10Generators14makeGeneratorsIRA16_KcJRA24_S2_RA21_S2_RA18_S2_RA26_S2_RA15_S2_RA22_S2_S8_SG_S8_SG_EEENS0_10GeneratorsIT_EEONS0_16GeneratorWrapperISI_EEDpOT0_.exit, %_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA16_KcEEEclEPS6_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  ret void

_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA16_KcEEEclEPS6_.exit.i.i13: ; preds = %.body
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #19, !inline_history !239
  br label %_ZN5Catch10Generators16GeneratorWrapperIRA16_KcED2Ev.exit14

_ZN5Catch10Generators16GeneratorWrapperIRA16_KcED2Ev.exit14: ; preds = %.body, %_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA16_KcEEEclEPS6_.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Catch10Generators10GeneratorsIRA16_KcE8populateINS0_16GeneratorWrapperIS4_EEJRA24_S2_RA21_S2_RA18_S2_RA26_S2_RA15_S2_RA22_S2_SC_SK_SC_SK_EEEvOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(21) %3, ptr noundef nonnull align 1 dereferenceable(18) %4, ptr noundef nonnull align 1 dereferenceable(26) %5, ptr noundef nonnull align 1 dereferenceable(15) %6, ptr noundef nonnull align 1 dereferenceable(22) %7, ptr noundef nonnull align 1 dereferenceable(21) %8, ptr noundef nonnull align 1 dereferenceable(22) %9, ptr noundef nonnull align 1 dereferenceable(21) %10, ptr noundef nonnull align 1 dereferenceable(22) %11) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !113
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !129
  store i64 %i.e, ptr %i.b, align 8, !tbaa !129
  store ptr null, ptr %1, align 8, !tbaa !129
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !128
  br label %_ZN5Catch10Generators10GeneratorsIRA16_KcE8populateEONS0_16GeneratorWrapperIS4_EE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN5Catch10Generators10GeneratorsIRA16_KcE8populateEONS0_16GeneratorWrapperIS4_EE.exit

_ZN5Catch10Generators10GeneratorsIRA16_KcE8populateEONS0_16GeneratorWrapperIS4_EE.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZN5Catch10Generators10GeneratorsIRA16_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(24) %2)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA16_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(21) %3)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA16_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(18) %4)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA16_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(26) %5)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA16_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(16) %6)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA16_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(22) %7)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA16_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(21) %8)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA16_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(22) %9)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA16_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(21) %10)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA16_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(22) %11)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !127    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !128  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA16_KcEES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5Catch10Generators16GeneratorWrapperIRA16_KcEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN5Catch10Generators16GeneratorWrapperIRA16_KcEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !129 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN5Catch10Generators16GeneratorWrapperIRA16_KcEEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA16_KcEEEclEPS6_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA16_KcEEEclEPS6_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #19, !inline_history !240
  br label %_ZSt8_DestroyIN5Catch10Generators16GeneratorWrapperIRA16_KcEEEvPT_.exit.i.i

_ZSt8_DestroyIN5Catch10Generators16GeneratorWrapperIRA16_KcEEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA16_KcEEEclEPS6_.exit.i.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA16_KcEES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !132

_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA16_KcEES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5Catch10Generators16GeneratorWrapperIRA16_KcEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !127
  br label %_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA16_KcEES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA16_KcEES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA16_KcEES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA16_KcEES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA16_KcEES6_EvT_S8_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !113
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #20
  br label %_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA16_KcEES6_EvT_S8_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !127    ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE12_M_check_lenEmPS3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #23
  unreachable

_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE12_M_check_lenEmPS3_.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !129
  store i64 %i.r, ptr %i.q, align 8, !tbaa !129
  store ptr null, ptr %2, align 8, !tbaa !129
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE12_M_check_lenEmPS3_.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader61, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.w = add i64 %i.m, -8
  %i.x = sub i64 %i.w, %i.e
  %i.y = and i64 %i.x, -8                         ; 2 uses
  %3 = getelementptr i8, ptr %i.p, i64 %i.y
  %scevgep = getelementptr i8, ptr %3, i64 8
  %scevgep.a = getelementptr i8, ptr %i.c, i64 %i.y
  %scevgep35 = getelementptr i8, ptr %scevgep.a, i64 8
  %bound0 = icmp ult ptr %i.p, %scevgep35
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader61, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.p, i64 %i.z    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.c, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ac ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.c, i64 %i.ac ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.ad = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !129, !alias.scope !246, !noalias !241
  %wide.load37 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !129, !alias.scope !246, !noalias !241
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !129, !alias.scope !249, !noalias !246
  store <2 x i64> %wide.load37, ptr %i.ae, align 8, !tbaa !129, !alias.scope !249, !noalias !246
  %i.af = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !tbaa !129, !alias.scope !246, !noalias !241
  store <2 x ptr> splat (ptr null), ptr %i.af, align 8, !tbaa !129, !alias.scope !246, !noalias !241
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !251

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader61

.lr.ph.i.i.i.preheader61:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader61, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.ah = load i64, ptr %.0911.i.i.i, align 8, !tbaa !129, !alias.scope !244, !noalias !241
  store i64 %i.ah, ptr %.012.i.i.i, align 8, !tbaa !129, !alias.scope !241, !noalias !244
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !129, !alias.scope !244, !noalias !241
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !254

_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE12_M_check_lenEmPS3_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE12_M_check_lenEmPS3_.exit ], [ %i.aa, %middle.block ], [ %i.aj, %.lr.ph.i.i.i ] ; 2 uses
  %i.ak = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %i.al = add i64 %i.d, -8
  %i.am = sub i64 %i.al, %i.m                     ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %i.am, 152
  br i1 %min.iters.check46, label %.lr.ph.i.i.i17.preheader60, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.ap = add i64 %i.d, -8
  %i.aq = sub i64 %i.ap, %i.m
  %i.ar = and i64 %i.aq, -8                       ; 2 uses
  %i.as = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ar
  %scevgep40 = getelementptr i8, ptr %i.as, i64 16
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  %scevgep41 = getelementptr i8, ptr %i.at, i64 8
  %bound042 = icmp ult ptr %i.ak, %scevgep41
  %bound143 = icmp ult ptr %1, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.lr.ph.i.i.i17.preheader60, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec48 = and i64 %i.ao, 4611686018427387900   ; 3 uses
  %i.au = shl i64 %n.vec48, 3                     ; 2 uses
  %i.av = getelementptr i8, ptr %i.ak, i64 %i.au  ; 2 uses
  %i.aw = getelementptr i8, ptr %1, i64 %i.au
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next55, %vector.body49 ] ; 2 uses
  %i.ax = shl i64 %index50, 3                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.ak, i64 %i.ax ; 2 uses
  %next.gep52 = getelementptr i8, ptr %1, i64 %i.ax ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.ay = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load53 = load <2 x i64>, ptr %next.gep52, align 8, !tbaa !129, !alias.scope !260, !noalias !255
  %wide.load54 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !129, !alias.scope !260, !noalias !255
  %i.az = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x i64> %wide.load53, ptr %next.gep51, align 8, !tbaa !129, !alias.scope !263, !noalias !260
  store <2 x i64> %wide.load54, ptr %i.az, align 8, !tbaa !129, !alias.scope !263, !noalias !260
  %i.ba = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep52, align 8, !tbaa !129, !alias.scope !260, !noalias !255
  store <2 x ptr> splat (ptr null), ptr %i.ba, align 8, !tbaa !129, !alias.scope !260, !noalias !255
  %index.next55 = add nuw i64 %index50, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.bb, label %middle.block56, label %vector.body49, !llvm.loop !265

middle.block56:                                   ; preds = %vector.body49
  %cmp.n57 = icmp eq i64 %i.ao, %n.vec48
  br i1 %cmp.n57, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader60

.lr.ph.i.i.i17.preheader60:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block56
  %.012.i.i.i18.ph = phi ptr [ %i.ak, %vector.memcheck39 ], [ %i.ak, %.lr.ph.i.i.i17.preheader ], [ %i.av, %middle.block56 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.aw, %middle.block56 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader60, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.be, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader60 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.bd, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader60 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.bc = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !129, !alias.scope !258, !noalias !255
  store i64 %i.bc, ptr %.012.i.i.i18, align 8, !tbaa !129, !alias.scope !255, !noalias !258
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !129, !alias.scope !258, !noalias !255
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !266

_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block56, %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ak, %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.av, %middle.block56 ], [ %i.be, %.lr.ph.i.i.i17 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !113
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bi) #20
  br label %_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !127
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !128
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !113
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Catch10Generators10GeneratorsIRA16_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24, !noalias !267 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Catch10Generators20SingleValueGeneratorIRA16_KcEE, i64 16), ptr %i.b, align 8, !tbaa !37, !noalias !267
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !40, !noalias !267
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !128  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !113
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.f, align 8, !tbaa !129
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %i.e, align 8, !tbaa !128
  br label %_ZN5Catch10Generators16GeneratorWrapperIRA16_KcED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !127  ; 10 uses
  %i.k = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 4 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE12_M_check_lenEmPS3_.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #23
          to label %.noexc7 unwind label %_ZN5Catch10Generators16GeneratorWrapperIRA16_KcED2Ev.exit5

.noexc7:                                          ; preds = %bb.d
  unreachable

_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE12_M_check_lenEmPS3_.exit.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i, %i.o  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i6 = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i6)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #24
          to label %.noexc8 unwind label %_ZN5Catch10Generators16GeneratorWrapperIRA16_KcED2Ev.exit5 ; 10 uses

.noexc8:                                          ; preds = %_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE12_M_check_lenEmPS3_.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store i64 %i.d, ptr %i.v, align 8, !tbaa !129
  %.not10.i.i.i.i = icmp eq ptr %i.j, %i.f
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc8
  %i.w = add i64 %i.k, -8
  %i.x = sub i64 %i.w, %i.l                       ; 2 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader17, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.aa = add i64 %i.k, -8
  %i.ab = sub i64 %i.aa, %i.l
  %i.ac = and i64 %i.ab, -8                       ; 2 uses
  %2 = getelementptr i8, ptr %i.u, i64 %i.ac
  %scevgep = getelementptr i8, ptr %2, i64 8
  %scevgep.a = getelementptr i8, ptr %i.j, i64 %i.ac
  %scevgep13 = getelementptr i8, ptr %scevgep.a, i64 8
  %bound0 = icmp ult ptr %i.u, %scevgep13
  %bound1 = icmp ult ptr %i.j, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader17, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.u, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.j, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ag ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.j, i64 %i.ag ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  %i.ah = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep14, align 8, !tbaa !129, !alias.scope !277, !noalias !272
  %wide.load15 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !129, !alias.scope !277, !noalias !272
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !129, !alias.scope !280, !noalias !277
  store <2 x i64> %wide.load15, ptr %i.ai, align 8, !tbaa !129, !alias.scope !280, !noalias !277
  %i.aj = getelementptr i8, ptr %next.gep14, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep14, align 8, !tbaa !129, !alias.scope !277, !noalias !272
  store <2 x ptr> splat (ptr null), ptr %i.aj, align 8, !tbaa !129, !alias.scope !277, !noalias !272
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !282

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader17

.lr.ph.i.i.i.i.preheader17:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader17, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader17 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader17 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  %i.al = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !129, !alias.scope !275, !noalias !272
  store i64 %i.al, ptr %.012.i.i.i.i, align 8, !tbaa !129, !alias.scope !272, !noalias !275
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !129, !alias.scope !275, !noalias !272
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.am, %i.f
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !283

_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc8
  %.0.lcssa.i.i.i.i = phi ptr [ %i.u, %.noexc8 ], [ %i.ae, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i, label %.noexc, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #20
  br label %.noexc

.noexc:                                           ; preds = %bb.e, %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  store ptr %i.u, ptr %i.a, align 8, !tbaa !127
  store ptr %i.ao, ptr %i.e, align 8, !tbaa !128
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ap, ptr %i.g, align 8, !tbaa !113
  br label %_ZN5Catch10Generators16GeneratorWrapperIRA16_KcED2Ev.exit

_ZN5Catch10Generators16GeneratorWrapperIRA16_KcED2Ev.exit: ; preds = %bb.b, %.noexc
  ret void

_ZN5Catch10Generators16GeneratorWrapperIRA16_KcED2Ev.exit5: ; preds = %_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE12_M_check_lenEmPS3_.exit.i, %bb.d
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #19, !inline_history !239
  resume { ptr, i32 } %i.aq
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Catch10Generators20SingleValueGeneratorIRA16_KcED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN5Catch10Generators20GeneratorUntypedBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN5Catch10Generators20SingleValueGeneratorIRA16_KcE4nextEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(16) ptr @_ZNK5Catch10Generators20SingleValueGeneratorIRA16_KcE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !284, !nonnull !49
  ret ptr %i.b
}

; Function Attrs: nounwind
declare void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(10) dereferenceable(10)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Catch10BinaryExprIRKPKcRA1_S1_E29streamReconstructedExpressionERSo(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !286, !nonnull !49, !align !51
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40, !noalias !288
  call void @_ZN5Catch11StringMakerIPKcvE7convertB5cxx11ES2_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !40
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !291, !nonnull !49
  invoke void @_ZN5Catch11StringMakerIA1_cvE7convertB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(1) %i.f)
          to label %_ZN5Catch6Detail9stringifyIA1_cEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit unwind label %bb.c

_ZN5Catch6Detail9stringifyIA1_cEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN5Catch29formatReconstructedExpressionERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefES8_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN5Catch6Detail9stringifyIA1_cEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.g = load ptr, ptr %3, align 8, !tbaa !20     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.h, align 8, !tbaa !19
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.l = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = load i64, ptr %i.m, align 8, !tbaa !19
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

bb.d:                                             ; preds = %_ZN5Catch6Detail9stringifyIA1_cEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !20     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.d
  %i.v = load i64, ptr %i.t, align 8, !tbaa !19
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.c
  %.pn = phi { ptr, i32 } [ %i.q, %bb.c ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ], [ %i.r, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.x = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !19
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Catch10BinaryExprIRKPKcRA1_S1_ED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 {
end_hunk_1
begin_hunk_2_@_ZNK5Catch10Generators10GeneratorsIRA2_KcE3getEv:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Catch10Generators14makeGeneratorsIRA2_KcJRA5_S2_S4_RA3_S2_RA7_S2_S4_S8_S4_RA4_S2_S8_S4_EEENS0_10GeneratorsIT_EEOSE_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.Catch::Generators::Generators.53") align 8 %0, ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 1 dereferenceable(5) %2, ptr noundef nonnull align 1 dereferenceable(2) %3, ptr noundef nonnull align 1 dereferenceable(3) %4, ptr noundef nonnull align 1 dereferenceable(7) %5, ptr noundef nonnull align 1 dereferenceable(2) %6, ptr noundef nonnull align 1 dereferenceable(3) %7, ptr noundef nonnull align 1 dereferenceable(2) %8, ptr noundef nonnull align 1 dereferenceable(4) %9, ptr noundef nonnull align 1 dereferenceable(3) %10, ptr noundef nonnull align 1 dereferenceable(2) %11) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.Catch::Generators::GeneratorWrapper.60", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24, !noalias !299 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Catch10Generators20SingleValueGeneratorIRA2_KcEE, i64 16), ptr %i.a, align 8, !tbaa !37, !noalias !299
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !40, !noalias !299
  %i.c = ptrtoint ptr %i.a to i64
  store i64 %i.c, ptr %12, align 8, !tbaa !179, !alias.scope !296
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Catch10Generators10GeneratorsIRA2_KcEE, i64 16), ptr %0, align 8, !tbaa !37, !alias.scope !302
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false), !alias.scope !302
  %i.e = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #24
          to label %_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i unwind label %.body, !noalias !302 ; 3 uses

_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.d, align 8, !tbaa !177, !alias.scope !302
  store ptr %i.e, ptr %i.f, align 8, !tbaa !178, !alias.scope !302
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store ptr %i.h, ptr %i.g, align 8, !tbaa !168, !alias.scope !302
  invoke void @_ZN5Catch10Generators10GeneratorsIRA2_KcE8populateINS0_16GeneratorWrapperIS4_EEJRA5_S2_S4_RA3_S2_RA7_S2_S4_SC_S4_RA4_S2_SC_S4_EEEvOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 1 dereferenceable(5) %2, ptr noundef nonnull align 1 dereferenceable(2) %3, ptr noundef nonnull align 1 dereferenceable(3) %4, ptr noundef nonnull align 1 dereferenceable(7) %5, ptr noundef nonnull align 1 dereferenceable(2) %6, ptr noundef nonnull align 1 dereferenceable(3) %7, ptr noundef nonnull align 1 dereferenceable(2) %8, ptr noundef nonnull align 1 dereferenceable(4) %9, ptr noundef nonnull align 1 dereferenceable(3) %10, ptr noundef nonnull align 1 dereferenceable(2) %11)
          to label %_ZN5Catch10Generators14makeGeneratorsIRA2_KcJRA5_S2_S4_RA3_S2_RA7_S2_S4_S8_S4_RA4_S2_S8_S4_EEENS0_10GeneratorsIT_EEONS0_16GeneratorWrapperISE_EEDpOT0_.exit unwind label %.body

.body:                                            ; preds = %_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #19
  call void @_ZN5Catch10Generators20GeneratorUntypedBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #19
  %i.j = load ptr, ptr %12, align 8, !tbaa !179   ; 3 uses
  %.not.i.i12 = icmp eq ptr %i.j, null
  br i1 %.not.i.i12, label %_ZN5Catch10Generators16GeneratorWrapperIRA2_KcED2Ev.exit14, label %_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA2_KcEEEclEPS6_.exit.i.i13

_ZN5Catch10Generators14makeGeneratorsIRA2_KcJRA5_S2_S4_RA3_S2_RA7_S2_S4_S8_S4_RA4_S2_S8_S4_EEENS0_10GeneratorsIT_EEONS0_16GeneratorWrapperISE_EEDpOT0_.exit: ; preds = %_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i
  %i.k = load ptr, ptr %12, align 8, !tbaa !179   ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZN5Catch10Generators16GeneratorWrapperIRA2_KcED2Ev.exit, label %_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA2_KcEEEclEPS6_.exit.i.i

_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA2_KcEEEclEPS6_.exit.i.i: ; preds = %_ZN5Catch10Generators14makeGeneratorsIRA2_KcJRA5_S2_S4_RA3_S2_RA7_S2_S4_S8_S4_RA4_S2_S8_S4_EEENS0_10GeneratorsIT_EEONS0_16GeneratorWrapperISE_EEDpOT0_.exit
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #19, !inline_history !305
  br label %_ZN5Catch10Generators16GeneratorWrapperIRA2_KcED2Ev.exit

_ZN5Catch10Generators16GeneratorWrapperIRA2_KcED2Ev.exit: ; preds = %_ZN5Catch10Generators14makeGeneratorsIRA2_KcJRA5_S2_S4_RA3_S2_RA7_S2_S4_S8_S4_RA4_S2_S8_S4_EEENS0_10GeneratorsIT_EEONS0_16GeneratorWrapperISE_EEDpOT0_.exit, %_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA2_KcEEEclEPS6_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  ret void

_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA2_KcEEEclEPS6_.exit.i.i13: ; preds = %.body
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #19, !inline_history !305
  br label %_ZN5Catch10Generators16GeneratorWrapperIRA2_KcED2Ev.exit14

_ZN5Catch10Generators16GeneratorWrapperIRA2_KcED2Ev.exit14: ; preds = %.body, %_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA2_KcEEEclEPS6_.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Catch10Generators10GeneratorsIRA2_KcE8populateINS0_16GeneratorWrapperIS4_EEJRA5_S2_S4_RA3_S2_RA7_S2_S4_SC_S4_RA4_S2_SC_S4_EEEvOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(5) %2, ptr noundef nonnull align 1 dereferenceable(2) %3, ptr noundef nonnull align 1 dereferenceable(3) %4, ptr noundef nonnull align 1 dereferenceable(7) %5, ptr noundef nonnull align 1 dereferenceable(2) %6, ptr noundef nonnull align 1 dereferenceable(3) %7, ptr noundef nonnull align 1 dereferenceable(2) %8, ptr noundef nonnull align 1 dereferenceable(4) %9, ptr noundef nonnull align 1 dereferenceable(3) %10, ptr noundef nonnull align 1 dereferenceable(2) %11) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !178  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !168
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !179
  store i64 %i.e, ptr %i.b, align 8, !tbaa !179
  store ptr null, ptr %1, align 8, !tbaa !179
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !178
  br label %_ZN5Catch10Generators10GeneratorsIRA2_KcE8populateEONS0_16GeneratorWrapperIS4_EE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN5Catch10Generators10GeneratorsIRA2_KcE8populateEONS0_16GeneratorWrapperIS4_EE.exit

_ZN5Catch10Generators10GeneratorsIRA2_KcE8populateEONS0_16GeneratorWrapperIS4_EE.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZN5Catch10Generators10GeneratorsIRA2_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(5) %2)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA2_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(2) %3)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA2_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(3) %4)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA2_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(7) %5)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA2_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(2) %6)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA2_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(3) %7)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA2_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(2) %8)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA2_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(4) %9)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA2_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(3) %10)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA2_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(2) %11)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !177    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !178  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA2_KcEES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5Catch10Generators16GeneratorWrapperIRA2_KcEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN5Catch10Generators16GeneratorWrapperIRA2_KcEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !179 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN5Catch10Generators16GeneratorWrapperIRA2_KcEEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA2_KcEEEclEPS6_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA2_KcEEEclEPS6_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #19, !inline_history !306
  br label %_ZSt8_DestroyIN5Catch10Generators16GeneratorWrapperIRA2_KcEEEvPT_.exit.i.i

_ZSt8_DestroyIN5Catch10Generators16GeneratorWrapperIRA2_KcEEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA2_KcEEEclEPS6_.exit.i.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA2_KcEES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !182

_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA2_KcEES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5Catch10Generators16GeneratorWrapperIRA2_KcEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !177
  br label %_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA2_KcEES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA2_KcEES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA2_KcEES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA2_KcEES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA2_KcEES6_EvT_S8_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !168
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #20
  br label %_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA2_KcEES6_EvT_S8_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !178  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !177    ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE12_M_check_lenEmPS3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #23
  unreachable

_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE12_M_check_lenEmPS3_.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !179
  store i64 %i.r, ptr %i.q, align 8, !tbaa !179
  store ptr null, ptr %2, align 8, !tbaa !179
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE12_M_check_lenEmPS3_.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader61, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.w = add i64 %i.m, -8
  %i.x = sub i64 %i.w, %i.e
  %i.y = and i64 %i.x, -8                         ; 2 uses
  %3 = getelementptr i8, ptr %i.p, i64 %i.y
  %scevgep = getelementptr i8, ptr %3, i64 8
  %scevgep.a = getelementptr i8, ptr %i.c, i64 %i.y
  %scevgep35 = getelementptr i8, ptr %scevgep.a, i64 8
  %bound0 = icmp ult ptr %i.p, %scevgep35
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader61, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.p, i64 %i.z    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.c, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ac ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.c, i64 %i.ac ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.ad = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !179, !alias.scope !312, !noalias !307
  %wide.load37 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !179, !alias.scope !312, !noalias !307
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !179, !alias.scope !315, !noalias !312
  store <2 x i64> %wide.load37, ptr %i.ae, align 8, !tbaa !179, !alias.scope !315, !noalias !312
  %i.af = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !tbaa !179, !alias.scope !312, !noalias !307
  store <2 x ptr> splat (ptr null), ptr %i.af, align 8, !tbaa !179, !alias.scope !312, !noalias !307
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !317

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader61

.lr.ph.i.i.i.preheader61:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader61, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.ah = load i64, ptr %.0911.i.i.i, align 8, !tbaa !179, !alias.scope !310, !noalias !307
  store i64 %i.ah, ptr %.012.i.i.i, align 8, !tbaa !179, !alias.scope !307, !noalias !310
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !179, !alias.scope !310, !noalias !307
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !318

_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE12_M_check_lenEmPS3_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE12_M_check_lenEmPS3_.exit ], [ %i.aa, %middle.block ], [ %i.aj, %.lr.ph.i.i.i ] ; 2 uses
  %i.ak = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %i.al = add i64 %i.d, -8
  %i.am = sub i64 %i.al, %i.m                     ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %i.am, 152
  br i1 %min.iters.check46, label %.lr.ph.i.i.i17.preheader60, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.ap = add i64 %i.d, -8
  %i.aq = sub i64 %i.ap, %i.m
  %i.ar = and i64 %i.aq, -8                       ; 2 uses
  %i.as = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ar
  %scevgep40 = getelementptr i8, ptr %i.as, i64 16
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  %scevgep41 = getelementptr i8, ptr %i.at, i64 8
  %bound042 = icmp ult ptr %i.ak, %scevgep41
  %bound143 = icmp ult ptr %1, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.lr.ph.i.i.i17.preheader60, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec48 = and i64 %i.ao, 4611686018427387900   ; 3 uses
  %i.au = shl i64 %n.vec48, 3                     ; 2 uses
  %i.av = getelementptr i8, ptr %i.ak, i64 %i.au  ; 2 uses
  %i.aw = getelementptr i8, ptr %1, i64 %i.au
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next55, %vector.body49 ] ; 2 uses
  %i.ax = shl i64 %index50, 3                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.ak, i64 %i.ax ; 2 uses
  %next.gep52 = getelementptr i8, ptr %1, i64 %i.ax ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.ay = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load53 = load <2 x i64>, ptr %next.gep52, align 8, !tbaa !179, !alias.scope !324, !noalias !319
  %wide.load54 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !179, !alias.scope !324, !noalias !319
  %i.az = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x i64> %wide.load53, ptr %next.gep51, align 8, !tbaa !179, !alias.scope !327, !noalias !324
  store <2 x i64> %wide.load54, ptr %i.az, align 8, !tbaa !179, !alias.scope !327, !noalias !324
  %i.ba = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep52, align 8, !tbaa !179, !alias.scope !324, !noalias !319
  store <2 x ptr> splat (ptr null), ptr %i.ba, align 8, !tbaa !179, !alias.scope !324, !noalias !319
  %index.next55 = add nuw i64 %index50, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.bb, label %middle.block56, label %vector.body49, !llvm.loop !329

middle.block56:                                   ; preds = %vector.body49
  %cmp.n57 = icmp eq i64 %i.ao, %n.vec48
  br i1 %cmp.n57, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader60

.lr.ph.i.i.i17.preheader60:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block56
  %.012.i.i.i18.ph = phi ptr [ %i.ak, %vector.memcheck39 ], [ %i.ak, %.lr.ph.i.i.i17.preheader ], [ %i.av, %middle.block56 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.aw, %middle.block56 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader60, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.be, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader60 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.bd, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader60 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.bc = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !179, !alias.scope !322, !noalias !319
  store i64 %i.bc, ptr %.012.i.i.i18, align 8, !tbaa !179, !alias.scope !319, !noalias !322
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !179, !alias.scope !322, !noalias !319
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !330

_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block56, %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ak, %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.av, %middle.block56 ], [ %i.be, %.lr.ph.i.i.i17 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !168
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bi) #20
  br label %_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !177
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !178
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !168
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Catch10Generators10GeneratorsIRA2_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(2) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24, !noalias !331 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Catch10Generators20SingleValueGeneratorIRA2_KcEE, i64 16), ptr %i.b, align 8, !tbaa !37, !noalias !331
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !40, !noalias !331
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !178  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !168
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.f, align 8, !tbaa !179
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %i.e, align 8, !tbaa !178
  br label %_ZN5Catch10Generators16GeneratorWrapperIRA2_KcED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !177  ; 10 uses
  %i.k = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 4 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE12_M_check_lenEmPS3_.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #23
          to label %.noexc7 unwind label %_ZN5Catch10Generators16GeneratorWrapperIRA2_KcED2Ev.exit5

.noexc7:                                          ; preds = %bb.d
  unreachable

_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE12_M_check_lenEmPS3_.exit.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i, %i.o  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i6 = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i6)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #24
          to label %.noexc8 unwind label %_ZN5Catch10Generators16GeneratorWrapperIRA2_KcED2Ev.exit5 ; 10 uses

.noexc8:                                          ; preds = %_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE12_M_check_lenEmPS3_.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store i64 %i.d, ptr %i.v, align 8, !tbaa !179
  %.not10.i.i.i.i = icmp eq ptr %i.j, %i.f
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc8
  %i.w = add i64 %i.k, -8
  %i.x = sub i64 %i.w, %i.l                       ; 2 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader17, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.aa = add i64 %i.k, -8
  %i.ab = sub i64 %i.aa, %i.l
  %i.ac = and i64 %i.ab, -8                       ; 2 uses
  %2 = getelementptr i8, ptr %i.u, i64 %i.ac
  %scevgep = getelementptr i8, ptr %2, i64 8
  %scevgep.a = getelementptr i8, ptr %i.j, i64 %i.ac
  %scevgep13 = getelementptr i8, ptr %scevgep.a, i64 8
  %bound0 = icmp ult ptr %i.u, %scevgep13
  %bound1 = icmp ult ptr %i.j, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader17, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.u, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.j, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ag ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.j, i64 %i.ag ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.ah = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep14, align 8, !tbaa !179, !alias.scope !341, !noalias !336
  %wide.load15 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !179, !alias.scope !341, !noalias !336
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !179, !alias.scope !344, !noalias !341
  store <2 x i64> %wide.load15, ptr %i.ai, align 8, !tbaa !179, !alias.scope !344, !noalias !341
  %i.aj = getelementptr i8, ptr %next.gep14, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep14, align 8, !tbaa !179, !alias.scope !341, !noalias !336
  store <2 x ptr> splat (ptr null), ptr %i.aj, align 8, !tbaa !179, !alias.scope !341, !noalias !336
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !346

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader17

.lr.ph.i.i.i.i.preheader17:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader17, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader17 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader17 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.al = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !179, !alias.scope !339, !noalias !336
  store i64 %i.al, ptr %.012.i.i.i.i, align 8, !tbaa !179, !alias.scope !336, !noalias !339
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !179, !alias.scope !339, !noalias !336
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.am, %i.f
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !347

_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc8
  %.0.lcssa.i.i.i.i = phi ptr [ %i.u, %.noexc8 ], [ %i.ae, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i, label %.noexc, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #20
  br label %.noexc

.noexc:                                           ; preds = %bb.e, %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  store ptr %i.u, ptr %i.a, align 8, !tbaa !177
  store ptr %i.ao, ptr %i.e, align 8, !tbaa !178
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ap, ptr %i.g, align 8, !tbaa !168
  br label %_ZN5Catch10Generators16GeneratorWrapperIRA2_KcED2Ev.exit

_ZN5Catch10Generators16GeneratorWrapperIRA2_KcED2Ev.exit: ; preds = %bb.b, %.noexc
  ret void

_ZN5Catch10Generators16GeneratorWrapperIRA2_KcED2Ev.exit5: ; preds = %_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE12_M_check_lenEmPS3_.exit.i, %bb.d
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #19, !inline_history !305
  resume { ptr, i32 } %i.aq
}

; Function Attrs: nounwind
declare void @_ZN5Catch10Generators20GeneratorUntypedBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Catch10Generators20SingleValueGeneratorIRA2_KcED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN5Catch10Generators20GeneratorUntypedBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN5Catch10Generators20SingleValueGeneratorIRA2_KcE4nextEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(2) ptr @_ZNK5Catch10Generators20SingleValueGeneratorIRA2_KcE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !348, !nonnull !49
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_unicode.cpp() #14 section ".text.startup" {
bb.a:
  %0 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %1 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %2 = alloca %"struct.Catch::NameAndTags", align 8 ; 4 uses
  %3 = alloca %"class.Catch::StringRef", align 8  ; 4 uses
  %4 = alloca %"class.Catch::StringRef", align 8  ; 4 uses
  %5 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %6 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %7 = alloca %"struct.Catch::NameAndTags", align 8 ; 4 uses
  %8 = alloca %"class.Catch::StringRef", align 8  ; 4 uses
  %9 = alloca %"class.Catch::StringRef", align 8  ; 4 uses
  %10 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %11 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %12 = alloca %"struct.Catch::NameAndTags", align 8 ; 4 uses
  %13 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %14 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %15 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %16 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %17 = alloca %"struct.Catch::NameAndTags", align 8 ; 4 uses
  %18 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %19 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %20 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %21 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %22 = alloca %"struct.Catch::NameAndTags", align 8 ; 4 uses
  %23 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %24 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %25 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %26 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %27 = alloca %"struct.Catch::NameAndTags", align 8 ; 4 uses
  %28 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %29 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %i.a = tail call noundef ptr @_ZN5Catch15makeTestInvokerEPFvvE(ptr noundef nonnull @_ZL19C_A_T_C_H_T_E_S_T_0v) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  store ptr @.str, ptr %25, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 9, ptr %i.b, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  store ptr @.str.13, ptr %26, align 8, !tbaa !350
  %i.c = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !351
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull @.str.1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull @.str.2) #19
  call void @_ZN5Catch11NameAndTagsC1ERKNS_9StringRefES3_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %29) #19
  call void @_ZN5Catch7AutoRegC1EPNS_12ITestInvokerERKNS_14SourceLineInfoERKNS_9StringRefERKNS_11NameAndTagsE(ptr noundef nonnull align 8 dereferenceable(8) @_ZN12_GLOBAL__N_114autoRegistrar1E, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(32) %27) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  %i.d = call i32 @__cxa_atexit(ptr nonnull @_ZN5Catch7AutoRegD1Ev, ptr nonnull @_ZN12_GLOBAL__N_114autoRegistrar1E, ptr nonnull @__dso_handle) #19 ; 0 uses
  %i.e = call noundef ptr @_ZN5Catch15makeTestInvokerEPFvvE(ptr noundef nonnull @_ZL19C_A_T_C_H_T_E_S_T_6v) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  store ptr @.str, ptr %20, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 78, ptr %i.f, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  store ptr @.str.13, ptr %21, align 8, !tbaa !350
  %i.g = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !351
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull @.str.4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull @.str.2) #19
  call void @_ZN5Catch11NameAndTagsC1ERKNS_9StringRefES3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(16) %24) #19
  call void @_ZN5Catch7AutoRegC1EPNS_12ITestInvokerERKNS_14SourceLineInfoERKNS_9StringRefERKNS_11NameAndTagsE(ptr noundef nonnull align 8 dereferenceable(8) @_ZN12_GLOBAL__N_114autoRegistrar7E, ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(32) %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  %i.h = call i32 @__cxa_atexit(ptr nonnull @_ZN5Catch7AutoRegD1Ev, ptr nonnull @_ZN12_GLOBAL__N_114autoRegistrar7E, ptr nonnull @__dso_handle) #19 ; 0 uses
  %i.i = call noundef ptr @_ZN5Catch15makeTestInvokerEPFvvE(ptr noundef nonnull @_ZL19C_A_T_C_H_T_E_S_T_8v) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  store ptr @.str, ptr %15, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 87, ptr %i.j, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  store ptr @.str.13, ptr %16, align 8, !tbaa !350
  %i.k = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !351
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull @.str.6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull @.str.2) #19
  call void @_ZN5Catch11NameAndTagsC1ERKNS_9StringRefES3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %19) #19
  call void @_ZN5Catch7AutoRegC1EPNS_12ITestInvokerERKNS_14SourceLineInfoERKNS_9StringRefERKNS_11NameAndTagsE(ptr noundef nonnull align 8 dereferenceable(8) @_ZN12_GLOBAL__N_114autoRegistrar9E, ptr noundef %i.i, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(32) %17) #19
end_hunk_2
