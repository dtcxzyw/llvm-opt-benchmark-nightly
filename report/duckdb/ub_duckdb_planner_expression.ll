Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_planner_expression?download=true
inline.NumInlined: 4585
inline.NumDeleted: 1902
begin_hunk_0_@_ZN6duckdb18FunctionExpression8ToStringINS_24BoundAggregateExpressionENS_10ExpressionENS_18BoundOrderModifierEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKSA_SF_SF_bbPT0_PT1_bb:bb.a
  store i8 0, ptr %i.tp, align 8, !tbaa !77
  call void @llvm.experimental.noalias.scope.decl(metadata !530)
  %i.tz = load i64, ptr %i.ty, align 8, !tbaa !76, !noalias !530
  %i.ua = icmp eq i64 %i.tz, 4611686018427387903
  br i1 %i.ua, label %bb.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i377

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #26
          to label %.noexc382 unwind label %bb.dc

.noexc382:                                        ; preds = %bb.cw
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i377: ; preds = %bb.cv
  %i.ub = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef nonnull @.str.12, i64 noundef 1)
          to label %.noexc383 unwind label %bb.dc ; 6 uses

.noexc383:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i377
  %i.uc = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 5 uses
  store ptr %i.uc, ptr %36, align 8, !tbaa !75, !alias.scope !530
  %i.ud = load ptr, ptr %i.ub, align 8, !tbaa !83 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ub, i64 16 ; 5 uses
  %i.uf = icmp eq ptr %i.ud, %i.ue
  br i1 %i.uf, label %bb.cx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378

bb.cx:                                            ; preds = %.noexc383
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %i.uh = load i64, ptr %i.ug, align 8, !tbaa !76 ; 3 uses
  %i.ui = icmp ult i64 %i.uh, 16
  call void @llvm.assume(i1 %i.ui)
  %i.uj = add nuw nsw i64 %i.uh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.uc, ptr noundef nonnull align 8 dereferenceable(1) %i.ue, i64 %i.uj, i1 false)
  br label %bb.cy

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378: ; preds = %.noexc383
  store ptr %i.ud, ptr %36, align 8, !tbaa !83, !alias.scope !530
  %i.uk = load i64, ptr %i.ue, align 8, !tbaa !77
  store i64 %i.uk, ptr %i.uc, align 8, !tbaa !77, !alias.scope !530
  %.phi.trans.insert.i379 = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %.pre.i380 = load i64, ptr %.phi.trans.insert.i379, align 8, !tbaa !76
  br label %bb.cy

bb.cy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378, %bb.cx
  %i.ul = phi i64 [ %i.uh, %bb.cx ], [ %.pre.i380, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378 ]
  %i.um = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %i.un = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  store i64 %i.ul, ptr %i.un, align 8, !tbaa !76, !alias.scope !530
  store ptr %i.ue, ptr %i.ub, align 8, !tbaa !83
  store i64 0, ptr %i.um, align 8, !tbaa !76
  store i8 0, ptr %i.ue, align 8, !tbaa !77
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !76 ; 2 uses
  %i.up = load i64, ptr %i.ma, align 8, !tbaa !76
  %i.uq = sub i64 4611686018427387903, %i.up
  %i.ur = icmp ult i64 %i.uq, %i.uo
  br i1 %i.ur, label %bb.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i385

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #26
          to label %.noexc386 unwind label %bb.dd

.noexc386:                                        ; preds = %bb.cz
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i385: ; preds = %bb.cy
  %i.us = load ptr, ptr %36, align 8, !tbaa !83
  %i.ut = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.us, i64 noundef %i.uo)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit388 unwind label %bb.dd ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit388: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i385
  %i.uu = load ptr, ptr %36, align 8, !tbaa !83   ; 2 uses
  %i.uv = icmp eq ptr %i.uu, %i.uc
  br i1 %i.uv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit388
  call void @_ZdlPv(ptr noundef %i.uu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit388, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389
  %i.uw = load ptr, ptr %37, align 8, !tbaa !83   ; 2 uses
  %i.ux = icmp eq ptr %i.uw, %i.tn
  br i1 %i.ux, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391
  call void @_ZdlPv(ptr noundef %i.uw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392
  %i.uy = load ptr, ptr %38, align 8, !tbaa !83   ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.va = icmp eq ptr %i.uy, %i.uz
  br i1 %i.va, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394
  call void @_ZdlPv(ptr noundef %i.uy) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  br label %bb.de

bb.da:                                            ; preds = %bb.cs
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406

bb.db:                                            ; preds = %bb.ct
  %i.vc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403

bb.dc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i377, %bb.cw
  %i.vd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400

bb.dd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i385, %bb.cz
  %i.ve = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vf = load ptr, ptr %36, align 8, !tbaa !83   ; 2 uses
  %i.vg = icmp eq ptr %i.vf, %i.uc
  br i1 %i.vg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398: ; preds = %bb.dd
  call void @_ZdlPv(ptr noundef %i.vf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400: ; preds = %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398, %bb.dc
  %.pn79 = phi { ptr, i32 } [ %i.vd, %bb.dc ], [ %i.ve, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398 ], [ %i.ve, %bb.dd ] ; 2 uses
  %i.vh = load ptr, ptr %37, align 8, !tbaa !83   ; 2 uses
  %i.vi = icmp eq ptr %i.vh, %i.tn
  br i1 %i.vi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400
  call void @_ZdlPv(ptr noundef %i.vh) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401, %bb.db
  %.pn79.pn = phi { ptr, i32 } [ %i.vc, %bb.db ], [ %.pn79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401 ], [ %.pn79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400 ] ; 2 uses
  %i.vj = load ptr, ptr %38, align 8, !tbaa !83   ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.vl = icmp eq ptr %i.vj, %i.vk
  br i1 %i.vl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403
  call void @_ZdlPv(ptr noundef %i.vj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404, %bb.da
  %.pn79.pn.pn = phi { ptr, i32 } [ %i.vb, %bb.da ], [ %.pn79.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404 ], [ %.pn79.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  br label %.loopexit.split-lp

bb.de:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit370
  br i1 %9, label %bb.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

bb.df:                                            ; preds = %bb.de
  %i.vm = load i64, ptr %i.ma, align 8, !tbaa !76
  %i.vn = add i64 %i.vm, -4611686018427387891
  %i.vo = icmp ult i64 %i.vn, 13
  br i1 %i.vo, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i407

.invoke:                                          ; preds = %.peel.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, %bb.ce, %bb.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit342, %bb.df, %.loopexit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #26
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i407: ; preds = %bb.df
  %i.vp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.55, i64 noundef 13)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283
  %.pn83 = phi { ptr, i32 } [ %.pn75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366 ], [ %.pn79.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283 ], [ %.pn71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348 ], [ %.pn69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324 ], [ %.pn66.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307 ], [ %lpad.loopexit.split-lp562, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.vq = load ptr, ptr %0, align 8, !tbaa !83    ; 2 uses
  %i.vr = icmp eq ptr %i.vq, %i.lz
  br i1 %i.vr, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i411

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i411: ; preds = %.loopexit.split-lp
  call void @_ZdlPv(ptr noundef %i.vq) #25
  br label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i407, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246, %bb.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6duckdb24BoundAggregateExpression4HashEv(ptr noundef nonnull align 8 dereferenceable(512) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK6duckdb10Expression4HashEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = tail call noundef i64 @_ZNK6duckdb18BaseScalarFunction4HashEv(ptr noundef nonnull align 8 dereferenceable(236) %i.b)
  %i.d = xor i64 %i.c, %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.f = load i8, ptr %i.e, align 8, !tbaa !161
  %i.g = icmp eq i8 %i.f, 2
  %i.h = select i1 %i.g, i64 -2960836687051489901, i64 0 ; 2 uses
  %1 = lshr i64 %i.h, 32
  %2 = xor i64 %1, %i.h
  %3 = mul i64 %2, -2960836687051489901           ; 2 uses
  %i.i = lshr i64 %3, 32
  %i.j = xor i64 %i.d, %i.i
  %i.k = xor i64 %i.j, %3
  ret i64 %i.k
}

declare noundef i64 @_ZNK6duckdb10Expression4HashEv(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #2

declare noundef i64 @_ZNK6duckdb18BaseScalarFunction4HashEv(ptr noundef nonnull align 8 dereferenceable(236)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6duckdb24BoundAggregateExpression6EqualsERKNS_14BaseExpressionE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK6duckdb14BaseExpression6EqualsERKS0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(56) %1)
  br i1 %i.a, label %_ZNK6duckdb10Expression6EqualsERKNS_14BaseExpressionE.exit, label %_ZNK6duckdb10Expression6EqualsERKNS_14BaseExpressionE.exit.thread

_ZNK6duckdb10Expression6EqualsERKNS_14BaseExpressionE.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = tail call noundef zeroext i1 @_ZNK6duckdb11LogicalTypeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  br i1 %i.d, label %bb.b, label %_ZNK6duckdb10Expression6EqualsERKNS_14BaseExpressionE.exit.thread

bb.b:                                             ; preds = %_ZNK6duckdb10Expression6EqualsERKNS_14BaseExpressionE.exit
  %i.e = tail call noundef nonnull align 8 dereferenceable(512) ptr @_ZNK6duckdb14BaseExpression4CastINS_24BoundAggregateExpressionEEERKT_v(ptr noundef nonnull align 8 dereferenceable(56) %1) ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 488
  %i.g = load i8, ptr %i.f, align 8, !tbaa !161
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.i = load i8, ptr %i.h, align 8, !tbaa !161
  %.not = icmp eq i8 %i.g, %i.i
  br i1 %.not, label %bb.c, label %_ZNK6duckdb10Expression6EqualsERKNS_14BaseExpressionE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 328
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !179
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !179
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %bb.d, label %_ZNK6duckdb10Expression6EqualsERKNS_14BaseExpressionE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 336
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !180
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !180
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %bb.e, label %_ZNK6duckdb10Expression6EqualsERKNS_14BaseExpressionE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 344
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !181
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !181
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %bb.f, label %_ZNK6duckdb10Expression6EqualsERKNS_14BaseExpressionE.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !182
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !182
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.g, label %_ZNK6duckdb10Expression6EqualsERKNS_14BaseExpressionE.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !183
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !183
  %i.ah = icmp eq ptr %i.ae, %i.ag
  br i1 %i.ah, label %_ZNK6duckdb17AggregateFunctionneERKS0_.exit, label %_ZNK6duckdb10Expression6EqualsERKNS_14BaseExpressionE.exit.thread

_ZNK6duckdb17AggregateFunctionneERKS0_.exit:      ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 376
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !184
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !184
  %.not20 = icmp eq ptr %i.aj, %i.al
  br i1 %.not20, label %bb.h, label %_ZNK6duckdb10Expression6EqualsERKNS_14BaseExpressionE.exit.thread

bb.h:                                             ; preds = %_ZNK6duckdb17AggregateFunctionneERKS0_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !166
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !167
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 456 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !166
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !167
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %.not17 = icmp eq i64 %i.as, %i.az
  br i1 %.not17, label %bb.i, label %_ZNK6duckdb10Expression6EqualsERKNS_14BaseExpressionE.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 496
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.bc = tail call noundef zeroext i1 @_ZN6duckdb10Expression6EqualsERKNS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.bb)
  br i1 %i.bc, label %.preheader, label %_ZNK6duckdb10Expression6EqualsERKNS_14BaseExpressionE.exit.thread

.preheader:                                       ; preds = %bb.i
  %i.bd = load ptr, ptr %i.an, align 8, !tbaa !166
  %i.be = load ptr, ptr %i.am, align 8, !tbaa !167
  %.not1821.not = icmp eq ptr %i.bd, %i.be
  br i1 %.not1821.not, label %.critedge, label %.lr.ph

bb.j:                                             ; preds = %.lr.ph
  %i.bf = add nuw i64 %.022, 1                    ; 2 uses
  %i.bg = load ptr, ptr %i.an, align 8, !tbaa !166
  %i.bh = load ptr, ptr %i.am, align 8, !tbaa !167
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = ashr exact i64 %i.bk, 3
  %.not18 = icmp ult i64 %i.bf, %i.bl
  br i1 %.not18, label %.lr.ph, label %.critedge, !llvm.loop !531

.lr.ph:                                           ; preds = %.preheader, %bb.j
  %.022 = phi i64 [ %i.bf, %bb.j ], [ 0, %.preheader ] ; 3 uses
  %i.bm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef %.022)
  %i.bn = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bm) ; 2 uses
  %i.bo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 noundef %.022)
  %i.bp = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bo)
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !80
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = tail call noundef zeroext i1 %i.bs(ptr noundef nonnull align 8 dereferenceable(88) %i.bn, ptr noundef nonnull align 8 dereferenceable(88) %i.bp), !inline_history !2
  br i1 %i.bt, label %bb.j, label %_ZNK6duckdb10Expression6EqualsERKNS_14BaseExpressionE.exit.thread

.critedge:                                        ; preds = %bb.j, %.preheader
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !98
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 480
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !98
  %i.by = tail call noundef zeroext i1 @_ZN6duckdb12FunctionData6EqualsEPKS0_S2_(ptr noundef %i.bv, ptr noundef %i.bx)
  br i1 %i.by, label %bb.k, label %_ZNK6duckdb10Expression6EqualsERKNS_14BaseExpressionE.exit.thread

bb.k:                                             ; preds = %.critedge
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 504
  %i.cb = tail call noundef zeroext i1 @_ZN6duckdb18BoundOrderModifier6EqualsERKNS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull align 8 dereferenceable(8) %i.ca)
  br label %_ZNK6duckdb10Expression6EqualsERKNS_14BaseExpressionE.exit.thread

_ZNK6duckdb10Expression6EqualsERKNS_14BaseExpressionE.exit.thread: ; preds = %.lr.ph, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.a, %bb.b, %_ZNK6duckdb17AggregateFunctionneERKS0_.exit, %bb.h, %bb.i, %.critedge, %bb.k, %_ZNK6duckdb10Expression6EqualsERKNS_14BaseExpressionE.exit
  %.2 = phi i1 [ false, %_ZNK6duckdb10Expression6EqualsERKNS_14BaseExpressionE.exit ], [ false, %bb.h ], [ false, %bb.b ], [ false, %_ZNK6duckdb17AggregateFunctionneERKS0_.exit ], [ false, %.critedge ], [ %i.cb, %bb.k ], [ false, %bb.i ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(512) ptr @_ZNK6duckdb14BaseExpression4CastINS_24BoundAggregateExpressionEEERKT_v(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !74
  %.not = icmp eq i8 %i.b, 25
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.39, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !83     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0, label %bb.f, label %bb.h

end_hunk_0
