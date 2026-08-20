inline.NumInlined: 5724
inline.NumDeleted: 1767
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN6spacer10derivation17create_next_childER5model:bb.a

bb.ar:                                            ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i82
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %indvars.iv.i83
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !112 ; 3 uses
  %.not.i.i.i.i.i84 = icmp eq ptr %i.is, null
  br i1 %.not.i.i.i.i.i84, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i85, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8 ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !108
  %i.iv = add i32 %i.iu, 1
  store i32 %i.iv, ptr %i.it, align 4, !tbaa !108
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i85

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i85: ; preds = %bb.as, %bb.ar
  %i.iw = load ptr, ptr %i.fk, align 8, !tbaa !99 ; 4 uses
  %i.ix = icmp eq ptr %i.iw, null
  br i1 %i.ix, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i85
  %i.iy = getelementptr inbounds i8, ptr %i.iw, i64 -4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !104 ; 2 uses
  %i.ja = getelementptr inbounds i8, ptr %i.iw, i64 -8
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !104
  %i.jc = icmp eq i32 %i.iz, %i.jb
  br i1 %i.jc, label %bb.au, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i86

bb.au:                                            ; preds = %bb.at, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i85
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fk)
          to label %.noexc92 unwind label %.loopexit.split-lp293.loopexit

.noexc92:                                         ; preds = %bb.au
  %.pre.i.i.i88 = load ptr, ptr %i.fk, align 8, !tbaa !99 ; 2 uses
  %.phi.trans.insert.i.i.i89 = getelementptr inbounds i8, ptr %.pre.i.i.i88, i64 -4
  %.pre2.i.i.i90 = load i32, ptr %.phi.trans.insert.i.i.i89, align 4, !tbaa !104
  %.pre.i91 = load ptr, ptr %i.i, align 8, !tbaa !99
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i86

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i86: ; preds = %.noexc92, %bb.at
  %i.jd = phi ptr [ %.pre.i91, %.noexc92 ], [ %i.im, %bb.at ] ; 2 uses
  %i.je = phi i32 [ %.pre2.i.i.i90, %.noexc92 ], [ %i.iz, %bb.at ] ; 2 uses
  %i.jf = phi ptr [ %.pre.i.i.i88, %.noexc92 ], [ %i.iw, %bb.at ] ; 2 uses
  %i.jg = getelementptr inbounds i8, ptr %i.jf, i64 -4
  %i.jh = zext i32 %i.je to i64
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.jh
  store ptr %i.is, ptr %i.ji, align 8, !tbaa !112
  %i.jj = add i32 %i.je, 1
  store i32 %i.jj, ptr %i.jg, align 4, !tbaa !104
  %indvars.iv.next.i87 = add nuw nsw i64 %indvars.iv.i83, 1
  %i.jk = icmp eq ptr %i.jd, null
  br i1 %i.jk, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit105, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i82, !llvm.loop !165

_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i94:          ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i82
  %i.jl = getelementptr inbounds i8, ptr %i.im, i64 -4
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !104 ; 2 uses
  %i.jn = zext i32 %i.jm to i64
  %i.jo = shl nuw nsw i64 %i.jn, 3
  %i.jp = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.jo
  %.not.i95 = icmp eq i32 %i.jm, 0
  br i1 %.not.i95, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i103, label %.lr.ph.i.i96

.lr.ph.i.i96:                                     ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i94, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i99
  %.06.i.i97 = phi ptr [ %i.jw, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i99 ], [ %i.im, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i94 ] ; 2 uses
  %i.jq = load ptr, ptr %.06.i.i97, align 8, !tbaa !112 ; 3 uses
  %i.jr = load ptr, ptr %6, align 8, !tbaa !113, !nonnull !95, !align !96
  %.not.i.i.i.i.i98 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i.i.i.i98, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i99, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i96
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 8 ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !108
  %i.ju = add i32 %i.jt, -1                       ; 2 uses
  store i32 %i.ju, ptr %i.js, align 4, !tbaa !108
  %i.jv = icmp eq i32 %i.ju, 0
  br i1 %i.jv, label %bb.aw, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i99

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.jr, ptr noundef nonnull %i.jq)
          to label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i99 unwind label %.loopexit292

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i99: ; preds = %bb.aw, %bb.av, %.lr.ph.i.i96
  %i.jw = getelementptr inbounds nuw i8, ptr %.06.i.i97, i64 8 ; 2 uses
  %i.jx = icmp ult ptr %i.jw, %i.jp
  br i1 %i.jx, label %.lr.ph.i.i96, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i100, !llvm.loop !114

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i100: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i99
  %.pre.i101 = load ptr, ptr %i.i, align 8, !tbaa !99 ; 2 uses
  %.not.i.i102 = icmp eq ptr %.pre.i101, null
  br i1 %.not.i.i102, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit105, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i103

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i103: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i100, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i94
  %i.jy = phi ptr [ %.pre.i101, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i100 ], [ %i.im, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i94 ]
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 -4
  store i32 0, ptr %i.jz, align 4, !tbaa !104
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit105

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit105: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i86, %_ZN6spacer16pred_transformer3mbpER10ref_vectorI3app11ast_managerER7obj_refI4exprS3_ER5modelbb.exit, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i103, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i100
  call void @_ZN6timeitD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread

bb.ax:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %.body271

bb.ay:                                            ; preds = %bb.ae, %bb.ad
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit292:                                     ; preds = %bb.aw
  %lpad.loopexit294 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp293.loopexit:                   ; preds = %bb.au
  %lpad.loopexit297 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp293.loopexit.split-lp.loopexit: ; preds = %bb.ak
  %lpad.loopexit300 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp293.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ai
  %lpad.loopexit.split-lp301 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit292, %.loopexit.split-lp293.loopexit.split-lp.loopexit, %.loopexit.split-lp293.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp293.loopexit, %bb.ap, %bb.aq
  %eh.lpad-body = phi { ptr, i32 } [ %i.ic, %bb.ap ], [ %i.ic, %bb.aq ], [ %lpad.loopexit294, %.loopexit292 ], [ %lpad.loopexit297, %.loopexit.split-lp293.loopexit ], [ %lpad.loopexit300, %.loopexit.split-lp293.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp301, %.loopexit.split-lp293.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6timeitD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #26
  br label %bb.az

bb.az:                                            ; preds = %.body, %bb.ay
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.kb, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.body271

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit105
  %i.kc = load i32, ptr %i.j, align 8, !tbaa !185
  %i.kd = load ptr, ptr %i.k, align 8, !tbaa !182
  %i.ke = zext i32 %i.kc to i64
  %i.kf = getelementptr inbounds nuw [56 x i8], ptr %i.kd, i64 %i.ke
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !97
  %i.ki = invoke noundef zeroext i1 @_ZN5model7is_trueEP4expr(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef %i.kh)
          to label %bb.ba unwind label %.loopexit.split-lp304.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread
  br i1 %i.ki, label %bb.bk, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kj = invoke noundef i32 @_Z19get_verbosity_levelv()
          to label %bb.bc unwind label %.loopexit.split-lp304.loopexit.split-lp.loopexit.split-lp

bb.bc:                                            ; preds = %bb.bb
  %.not34 = icmp eq i32 %i.kj, 0
  br i1 %.not34, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kk = invoke noundef zeroext i1 @_Z11is_threadedv()
          to label %bb.be unwind label %.loopexit.split-lp304.loopexit.split-lp.loopexit.split-lp

bb.be:                                            ; preds = %bb.bd
  br i1 %i.kk, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  invoke void @_Z12verbose_lockv()
          to label %bb.bg unwind label %.loopexit.split-lp304.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %bb.bf
  %i.kl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.bh unwind label %.loopexit.split-lp304.loopexit.split-lp.loopexit.split-lp

bb.bh:                                            ; preds = %bb.bg
  %i.km = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kl, ptr noundef nonnull @.str.8, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp304.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.bh
  invoke void @_Z14verbose_unlockv()
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108 unwind label %.loopexit.split-lp304.loopexit.split-lp.loopexit.split-lp

bb.bi:                                            ; preds = %bb.be
  %i.kn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.bj unwind label %.loopexit.split-lp304.loopexit.split-lp.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bi
  %i.ko = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kn, ptr noundef nonnull @.str.8, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108 unwind label %.loopexit.split-lp304.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bk:                                            ; preds = %bb.ba
  %i.kp = load ptr, ptr %i.k, align 8, !tbaa !182 ; 2 uses
  %i.kq = icmp eq ptr %i.kp, null
  br i1 %i.kq, label %_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit110.thread, label %_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit110.preheader

_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit110.preheader: ; preds = %bb.bk
  %i.kr = load i32, ptr %i.j, align 8, !tbaa !185
  br label %_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit110

_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit110: ; preds = %_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit110.preheader, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit137
  %i.ks = phi ptr [ %i.nd, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit137 ], [ %i.kp, %_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit110.preheader ] ; 3 uses
  %.025334.in = phi i32 [ %.025334, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit137 ], [ %i.kr, %_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit110.preheader ]
  %.025334 = add i32 %.025334.in, 1               ; 3 uses
  %i.kt = getelementptr inbounds i8, ptr %i.ks, i64 -4
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !104
  %10 = icmp ult i32 %.025334, %i.ku
  br i1 %10, label %bb.bo, label %_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit110.thread

_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit110.thread: ; preds = %_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit110, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit137, %bb.bk
  %i.kv = load ptr, ptr %i.dg, align 8, !tbaa !97 ; 3 uses
  %.not.i.i.i.i111 = icmp eq ptr %i.kv, null
  br i1 %.not.i.i.i.i111, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i112, label %bb.bl

bb.bl:                                            ; preds = %_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit110.thread
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8 ; 2 uses
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !108
  %i.ky = add i32 %i.kx, 1
  store i32 %i.ky, ptr %i.kw, align 4, !tbaa !108
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i112

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i112: ; preds = %bb.bl, %_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit110.thread
  %i.kz = load ptr, ptr %i.h, align 8, !tbaa !192 ; 4 uses
  %i.la = icmp eq ptr %i.kz, null
  br i1 %i.la, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i112
  %i.lb = getelementptr inbounds i8, ptr %i.kz, i64 -4
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !104 ; 2 uses
  %i.ld = getelementptr inbounds i8, ptr %i.kz, i64 -8
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !104
  %i.lf = icmp eq i32 %i.lc, %i.le
  br i1 %i.lf, label %bb.bn, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i138

bb.bn:                                            ; preds = %bb.bm, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i112
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.noexc116 unwind label %.loopexit.split-lp304.loopexit.split-lp.loopexit.split-lp

.noexc116:                                        ; preds = %bb.bn
  %.pre.i.i113 = load ptr, ptr %i.h, align 8, !tbaa !192 ; 2 uses
  %.phi.trans.insert.i.i114 = getelementptr inbounds i8, ptr %.pre.i.i113, i64 -4
  %.pre2.i.i115 = load i32, ptr %.phi.trans.insert.i.i114, align 4, !tbaa !104
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i138

.loopexit288:                                     ; preds = %bb.bw
  %lpad.loopexit290 = landingpad { ptr, i32 }
          cleanup
  br label %.body271

.loopexit.split-lp289:                            ; preds = %bb.br
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body271

bb.bo:                                            ; preds = %_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit110
  %11 = zext i32 %.025334 to i64                  ; 2 uses
  %i.lg = getelementptr inbounds nuw [56 x i8], ptr %i.ks, i64 %11
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !97 ; 3 uses
  %.not.i.i.i.i118 = icmp eq ptr %i.li, null
  br i1 %.not.i.i.i.i118, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i119, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !108
  %i.ll = add i32 %i.lk, 1
  store i32 %i.ll, ptr %i.lj, align 4, !tbaa !108
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i119

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i119: ; preds = %bb.bp, %bb.bo
  %i.lm = load ptr, ptr %i.h, align 8, !tbaa !192 ; 4 uses
  %i.ln = icmp eq ptr %i.lm, null
  br i1 %i.ln, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i119
  %i.lo = getelementptr inbounds i8, ptr %i.lm, i64 -4
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !104 ; 2 uses
  %i.lq = getelementptr inbounds i8, ptr %i.lm, i64 -8
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !104
  %i.ls = icmp eq i32 %i.lp, %i.lr
  br i1 %i.ls, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i119
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.noexc123 unwind label %.loopexit.split-lp289

.noexc123:                                        ; preds = %bb.br
  %.pre.i.i120 = load ptr, ptr %i.h, align 8, !tbaa !192 ; 2 uses
  %.phi.trans.insert.i.i121 = getelementptr inbounds i8, ptr %.pre.i.i120, i64 -4
  %.pre2.i.i122 = load i32, ptr %.phi.trans.insert.i.i121, align 4, !tbaa !104
  %.pre347 = load ptr, ptr %i.k, align 8, !tbaa !182
  br label %bb.bs

bb.bs:                                            ; preds = %.noexc123, %bb.bq
  %i.lt = phi ptr [ %.pre347, %.noexc123 ], [ %i.ks, %bb.bq ] ; 2 uses
  %i.lu = phi i32 [ %.pre2.i.i122, %.noexc123 ], [ %i.lp, %bb.bq ] ; 2 uses
  %i.lv = phi ptr [ %.pre.i.i120, %.noexc123 ], [ %i.lm, %bb.bq ] ; 2 uses
  %i.lw = getelementptr inbounds i8, ptr %i.lv, i64 -4
  %i.lx = zext i32 %i.lu to i64
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.lv, i64 %i.lx
  store ptr %i.li, ptr %i.ly, align 8, !tbaa !193
  %i.lz = add i32 %i.lu, 1
  store i32 %i.lz, ptr %i.lw, align 4, !tbaa !104
  %i.ma = getelementptr inbounds nuw [56 x i8], ptr %i.lt, i64 %11
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 48 ; 2 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !99 ; 2 uses
  %i.md = icmp eq ptr %i.mc, null
  br i1 %i.md, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit137, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i126

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i126: ; preds = %bb.bs, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i130
  %i.me = phi ptr [ %i.mv, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i130 ], [ %i.mc, %bb.bs ] ; 3 uses
  %indvars.iv.i127 = phi i64 [ %indvars.iv.next.i131, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i130 ], [ 0, %bb.bs ] ; 3 uses
  %i.mf = getelementptr inbounds i8, ptr %i.me, i64 -4
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !104
  %i.mh = zext i32 %i.mg to i64
  %i.mi = icmp samesign ult i64 %indvars.iv.i127, %i.mh
  br i1 %i.mi, label %bb.bt, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit137.loopexit

bb.bt:                                            ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i126
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %indvars.iv.i127
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !112 ; 3 uses
  %.not.i.i.i.i.i128 = icmp eq ptr %i.mk, null
  br i1 %.not.i.i.i.i.i128, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i129, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8 ; 2 uses
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !108
  %i.mn = add i32 %i.mm, 1
  store i32 %i.mn, ptr %i.ml, align 4, !tbaa !108
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i129

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i129: ; preds = %bb.bu, %bb.bt
  %i.mo = load ptr, ptr %i.i, align 8, !tbaa !99  ; 4 uses
  %i.mp = icmp eq ptr %i.mo, null
  br i1 %i.mp, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i129
  %i.mq = getelementptr inbounds i8, ptr %i.mo, i64 -4
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !104 ; 2 uses
  %i.ms = getelementptr inbounds i8, ptr %i.mo, i64 -8
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !104
  %i.mu = icmp eq i32 %i.mr, %i.mt
  br i1 %i.mu, label %bb.bw, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i130

bb.bw:                                            ; preds = %bb.bv, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i129
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.noexc136 unwind label %.loopexit288

.noexc136:                                        ; preds = %bb.bw
  %.pre.i.i.i132 = load ptr, ptr %i.i, align 8, !tbaa !99 ; 2 uses
  %.phi.trans.insert.i.i.i133 = getelementptr inbounds i8, ptr %.pre.i.i.i132, i64 -4
  %.pre2.i.i.i134 = load i32, ptr %.phi.trans.insert.i.i.i133, align 4, !tbaa !104
  %.pre.i135 = load ptr, ptr %i.mb, align 8, !tbaa !99
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i130

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i130: ; preds = %.noexc136, %bb.bv
  %i.mv = phi ptr [ %.pre.i135, %.noexc136 ], [ %i.me, %bb.bv ] ; 2 uses
  %i.mw = phi i32 [ %.pre2.i.i.i134, %.noexc136 ], [ %i.mr, %bb.bv ] ; 2 uses
  %i.mx = phi ptr [ %.pre.i.i.i132, %.noexc136 ], [ %i.mo, %bb.bv ] ; 2 uses
  %i.my = getelementptr inbounds i8, ptr %i.mx, i64 -4
  %i.mz = zext i32 %i.mw to i64
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %i.mz
  store ptr %i.mk, ptr %i.na, align 8, !tbaa !112
  %i.nb = add i32 %i.mw, 1
  store i32 %i.nb, ptr %i.my, align 4, !tbaa !104
  %indvars.iv.next.i131 = add nuw nsw i64 %indvars.iv.i127, 1
  %i.nc = icmp eq ptr %i.mv, null
  br i1 %i.nc, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit137.loopexit, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i126, !llvm.loop !165

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit137.loopexit: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i130, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i126
  %.pre348 = load ptr, ptr %i.k, align 8, !tbaa !182
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit137

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit137: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit137.loopexit, %bb.bs
  %i.nd = phi ptr [ %.pre348, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit137.loopexit ], [ %i.lt, %bb.bs ] ; 2 uses
  %i.ne = icmp eq ptr %i.nd, null
  br i1 %i.ne, label %_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit110.thread, label %_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit110

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i138: ; preds = %.noexc116, %bb.bm
  %i.nf = phi i32 [ %.pre2.i.i115, %.noexc116 ], [ %i.lc, %bb.bm ] ; 2 uses
  %i.ng = phi ptr [ %.pre.i.i113, %.noexc116 ], [ %i.kz, %bb.bm ] ; 3 uses
  %i.nh = getelementptr inbounds i8, ptr %i.ng, i64 -4 ; 2 uses
  %i.ni = zext i32 %i.nf to i64
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %i.ni
  store ptr %i.kv, ptr %i.nj, align 8, !tbaa !193
  %i.nk = add i32 %i.nf, 1
  store i32 %i.nk, ptr %i.nh, align 4, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store ptr null, ptr %8, align 8, !tbaa !97
  %i.nl = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store ptr %i.f, ptr %i.nl, align 8, !tbaa !98
  %i.nm = load ptr, ptr %5, align 8, !tbaa !203, !noalias !213, !nonnull !95, !align !96
  %i.nn = load i32, ptr %i.nh, align 4, !tbaa !104, !noalias !213
  %i.no = invoke noundef ptr @_Z6mk_andR11ast_managerjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.nm, i32 noundef %i.nn, ptr noundef nonnull %i.ng)
          to label %.noexc142 unwind label %bb.co ; 3 uses

.noexc142:                                        ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i138
  %.not.i.i.i140 = icmp eq ptr %i.no, null
  br i1 %.not.i.i.i140, label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit143, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i141

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i141:     ; preds = %.noexc142
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8 ; 2 uses
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !108, !noalias !213
  %i.nr = add i32 %i.nq, 1
  store i32 %i.nr, ptr %i.np, align 4, !tbaa !108, !noalias !213
  br label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit143

_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit143: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i141, %.noexc142
  %i.ns = load ptr, ptr %8, align 8, !tbaa !97    ; 3 uses
  %.not.i.i145 = icmp eq ptr %i.ns, null
  br i1 %.not.i.i145, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit148, label %bb.bx

bb.bx:                                            ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit143
  %i.nt = load ptr, ptr %i.nl, align 8, !tbaa !107, !nonnull !95, !align !96
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ns, i64 8 ; 2 uses
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !108
  %i.nw = add i32 %i.nv, -1                       ; 2 uses
  store i32 %i.nw, ptr %i.nu, align 4, !tbaa !108
  %i.nx = icmp eq i32 %i.nw, 0
  br i1 %i.nx, label %bb.by, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit148

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.nt, ptr noundef nonnull %i.ns)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit148 unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ny = landingpad { ptr, i32 }
          catch ptr null
  %i.nz = extractvalue { ptr, i32 } %i.ny, 0
  call void @__clang_call_terminate(ptr %i.nz) #27
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit148:      ; preds = %bb.by, %bb.bx, %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit143
  store ptr %i.no, ptr %8, align 8, !tbaa !97
  %i.oa = load ptr, ptr %i.h, align 8, !tbaa !192 ; 5 uses
  %i.ob = icmp eq ptr %i.oa, null
  br i1 %i.ob, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit160, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i149

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i149:        ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit148
  %i.oc = getelementptr inbounds i8, ptr %i.oa, i64 -4
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !104 ; 2 uses
  %i.oe = zext i32 %i.od to i64
  %i.of = shl nuw nsw i64 %i.oe, 3
  %i.og = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.of
  %.not.i150 = icmp eq i32 %i.od, 0
  br i1 %.not.i150, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i158, label %.lr.ph.i.i151

.lr.ph.i.i151:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i149, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i154
  %.06.i.i152 = phi ptr [ %i.on, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i154 ], [ %i.oa, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i149 ] ; 2 uses
  %i.oh = load ptr, ptr %.06.i.i152, align 8, !tbaa !193 ; 3 uses
  %i.oi = load ptr, ptr %5, align 8, !tbaa !203, !nonnull !95, !align !96
  %.not.i.i.i.i.i153 = icmp eq ptr %i.oh, null
  br i1 %.not.i.i.i.i.i153, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i154, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph.i.i151
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 8 ; 2 uses
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !108
  %i.ol = add i32 %i.ok, -1                       ; 2 uses
  store i32 %i.ol, ptr %i.oj, align 4, !tbaa !108
  %i.om = icmp eq i32 %i.ol, 0
  br i1 %i.om, label %bb.cb, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i154

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.oi, ptr noundef nonnull %i.oh)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i154 unwind label %.loopexit.split-lp.loopexit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i154: ; preds = %bb.cb, %bb.ca, %.lr.ph.i.i151
  %i.on = getelementptr inbounds nuw i8, ptr %.06.i.i152, i64 8 ; 2 uses
  %i.oo = icmp ult ptr %i.on, %i.og
  br i1 %i.oo, label %.lr.ph.i.i151, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i155, !llvm.loop !207

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i155: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i154
  %.pre.i156 = load ptr, ptr %i.h, align 8, !tbaa !192 ; 2 uses
  %.not.i.i157 = icmp eq ptr %.pre.i156, null
  br i1 %.not.i.i157, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit160, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i158

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i158: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i155, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i149
  %i.op = phi ptr [ %.pre.i156, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i155 ], [ %i.oa, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i149 ]
  %i.oq = getelementptr inbounds i8, ptr %i.op, i64 -4
  store i32 0, ptr %i.oq, align 4, !tbaa !104
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit160

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit160: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i158, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i155, %_ZN7obj_refI4expr11ast_managerED2Ev.exit148
  %i.or = load ptr, ptr %i.i, align 8, !tbaa !99  ; 4 uses
  %i.os = icmp eq ptr %i.or, null
  br i1 %i.os, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit161.thread, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit161

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit161: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit160
  %i.ot = getelementptr inbounds i8, ptr %i.or, i64 -4
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !104
  %i.ov = icmp eq i32 %i.ou, 0
  br i1 %i.ov, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit161.thread, label %bb.cc

bb.cc:                                            ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit161
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.ow = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.cd unwind label %bb.cp

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZN6timeitC2EbPKcPSo(ptr noundef nonnull align 8 dereferenceable(8) %9, i1 noundef zeroext false, ptr noundef nonnull @.str.9, ptr noundef nonnull align 8 dereferenceable(8) %i.ow)
          to label %_ZN6timeitC2EbPKcRSo.exit163 unwind label %bb.cp

_ZN6timeitC2EbPKcRSo.exit163:                     ; preds = %bb.cd
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN17expr_safe_replaceD2Ev:bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %.06.i.i18, i64 8 ; 2 uses
  %i.cm = icmp ult ptr %i.cl, %i.ce
  br i1 %i.cm, label %.lr.ph.i.i17, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i21, !llvm.loop !207

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i21: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i20
  %.pre.i22 = load ptr, ptr %i.bx, align 8, !tbaa !192 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %.pre.i22, null
  br i1 %.not.i.i.i23, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit25, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i24

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i24: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i21, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i15
  %i.cn = phi ptr [ %.pre.i22, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i21 ], [ %i.by, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i15 ]
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.co)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit25 unwind label %bb.s

bb.s:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i24
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  tail call void @__clang_call_terminate(ptr %i.cq) #27
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  tail call void @__clang_call_terminate(ptr %i.cs) #27
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit25: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit14, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i21, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i24
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6spacer16pred_transformer3mbpER10ref_vectorI3app11ast_managerER7obj_refI4exprS3_ER5modelbb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(472) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(160) %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 6 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !209, !range !163, !noundef !95
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  store i64 %i.e, ptr %i.a, align 8, !tbaa !210
  store i8 1, ptr %i.b, align 8, !tbaa !209
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35, !nonnull !95, !align !96
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !119, !nonnull !95, !align !96
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 640
  %i.k = load i8, ptr %i.j, align 8, !tbaa !211, !range !163, !noundef !95
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = xor i1 %5, true
  invoke void @_ZN6spacer10qe_projectER11ast_managerR10ref_vectorI3appS0_ER7obj_refI4exprS0_ER5modelbbb(ptr noundef nonnull align 8 dereferenceable(952) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(160) %3, i1 noundef zeroext %4, i1 noundef zeroext %i.l, i1 noundef zeroext %i.m)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = load i8, ptr %i.b, align 8, !tbaa !209, !range !163, !noundef !95
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.e, label %_ZN12scoped_watchD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %.sroa.0.0.copyload.i2.i.i.i = load i64, ptr %i.a, align 8, !tbaa !210
  %i.q = sub i64 %i.p, %.sroa.0.0.copyload.i2.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !212
  %i.t = add nsw i64 %i.q, %i.s
  store i64 %i.t, ptr %i.r, align 8, !tbaa !212
  store i8 0, ptr %i.b, align 8, !tbaa !209
  br label %_ZN12scoped_watchD2Ev.exit

_ZN12scoped_watchD2Ev.exit:                       ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load i8, ptr %i.b, align 8, !tbaa !209, !range !163, !noundef !95
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %_ZN12scoped_watchD2Ev.exit8

bb.g:                                             ; preds = %bb.f
  %i.x = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %.sroa.0.0.copyload.i2.i.i.i7 = load i64, ptr %i.a, align 8, !tbaa !210
  %i.y = sub i64 %i.x, %.sroa.0.0.copyload.i2.i.i.i7
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !212
  %i.ab = add nsw i64 %i.y, %i.aa
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !212
  store i8 0, ptr %i.b, align 8, !tbaa !209
  br label %_ZN12scoped_watchD2Ev.exit8

_ZN12scoped_watchD2Ev.exit8:                      ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.u
}

; Function Attrs: nounwind
declare void @_ZN6timeitD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

declare noundef zeroext i1 @_ZN5model7is_trueEP4expr(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) local_unnamed_addr #3

declare noundef i32 @_Z19get_verbosity_levelv() local_unnamed_addr #3

declare noundef zeroext i1 @_Z11is_threadedv() local_unnamed_addr #3

declare void @_Z12verbose_lockv() local_unnamed_addr #3

declare void @_Z14verbose_unlockv() local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192  ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !104  ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i
  %.06.i = phi ptr [ %i.o, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i ], [ %i.b, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit ] ; 2 uses
  %i.i = load ptr, ptr %.06.i, align 8, !tbaa !193 ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !203, !nonnull !95, !align !96
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !108
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 4, !tbaa !108
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.j, ptr noundef nonnull %i.i)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i unwind label %bb.e

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i: ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.06.i, i64 8 ; 2 uses
  %i.p = icmp ult ptr %i.o, %i.h
  br i1 %i.p, label %.lr.ph.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit, !llvm.loop !207

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !192 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit
  %i.q = phi ptr [ %.pre, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit ], [ %i.b, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit ]
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.r)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #27
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit:                 ; preds = %bb.a, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7
  ret void

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #27
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN6spacer10derivation17create_next_childEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.ref_vector.34, align 8       ; 11 uses
  %2 = alloca %class.obj_ref, align 8             ; 10 uses
  %3 = alloca %class.ref.117, align 8             ; 12 uses
  %4 = alloca %class.obj_ref, align 8             ; 6 uses
  %5 = alloca %class.ref_vector.34, align 8       ; 8 uses
  %6 = alloca %class.obj_ref, align 8             ; 7 uses
  %7 = alloca %class.ref_vector.34, align 8       ; 9 uses
  %8 = alloca %class.ref_vector, align 8          ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !185  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !182  ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit.thread, label %_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit

_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit: ; preds = %bb.a
  %i.f = add i32 %i.b, 1
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !104
  %.not = icmp ult i32 %i.f, %i.h
  br i1 %.not, label %_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit57.preheader, label %_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit.thread

_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit57.preheader: ; preds = %_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit
  %i.i = zext i32 %i.b to i64
  %i.j = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !218, !nonnull !95, !align !96 ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !191, !nonnull !95, !align !96
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !118, !nonnull !95, !align !96 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !35, !nonnull !95, !align !96 ; 3 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !216, !nonnull !95, !align !96
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.r = ptrtoint ptr %i.p to i64                 ; 3 uses
  store i64 %i.r, ptr %1, align 8, !tbaa !98
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 16 uses
  store ptr null, ptr %i.s, align 8, !tbaa !192
  %.038221309 = add i32 %i.b, 1                   ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !104
  %9 = icmp ult i32 %.038221309, %i.u
  br i1 %9, label %.lr.ph311, label %_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit57.thread

_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit57.thread: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit, %_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit57.preheader
  %.lcssa307 = phi ptr [ %i.d, %_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit57.preheader ], [ %i.as, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ]
  %.pre226 = load i32, ptr %i.a, align 8, !tbaa !185
  %.pre232 = zext i32 %.pre226 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr null, ptr %2, align 8, !tbaa !97
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.p, ptr %i.v, align 8, !tbaa !98
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !97
  %i.y = getelementptr inbounds nuw [56 x i8], ptr %.lcssa307, i64 %.pre232
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !217
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ac = add i32 %i.aa, 1
  invoke void @_ZNK6spacer7sym_mux10shift_exprEP4exprjjR7obj_refIS1_11ast_managerEb(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef %i.x, i32 noundef %i.ac, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false)
          to label %_ZNK6spacer7manager11formula_o2nEP4exprR7obj_refIS1_11ast_managerEjb.exit unwind label %bb.m

bb.b:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

.lr.ph311:                                        ; preds = %_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit57.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit
  %.038221310 = phi i32 [ %.038221, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ], [ %.038221309, %_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit57.preheader ] ; 2 uses
  %i.ae = phi ptr [ %i.at, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ], [ null, %_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit57.preheader ] ; 4 uses
  %i.af = phi ptr [ %i.as, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ], [ %i.d, %_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit57.preheader ] ; 2 uses
  %10 = zext i32 %.038221310 to i64
  %i.ag = getelementptr inbounds nuw [56 x i8], ptr %i.af, i64 %10
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !97 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph311
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !108
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !108
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.c, %.lr.ph311
  %i.am = icmp eq ptr %i.ae, null
  br i1 %i.am, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.an = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !104 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !104
  %i.ar = icmp eq i32 %i.ao, %i.aq
  br i1 %i.ar, label %bb.e, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.e:                                             ; preds = %bb.d, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.e
  %.pre.i.i = load ptr, ptr %i.s, align 8, !tbaa !192 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !104
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !182
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %bb.d, %.noexc
  %i.as = phi ptr [ %.pre, %.noexc ], [ %i.af, %bb.d ] ; 4 uses
  %i.at = phi ptr [ %.pre.i.i, %.noexc ], [ %i.ae, %bb.d ] ; 3 uses
  %i.au = phi i32 [ %.pre2.i.i, %.noexc ], [ %i.ao, %bb.d ] ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -4
  %i.aw = zext i32 %i.au to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.aw
  store ptr %i.ai, ptr %i.ax, align 8, !tbaa !193
  %i.ay = add i32 %i.au, 1
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !104
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %.038221 = add i32 %.038221310, 1               ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.as, i64 -4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !104
  %11 = icmp ult i32 %.038221, %i.ba
  br i1 %11, label %.lr.ph311, label %_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit57.thread

_ZNK6spacer7manager11formula_o2nEP4exprR7obj_refIS1_11ast_managerEjb.exit: ; preds = %_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit57.thread
  %i.bb = load ptr, ptr %2, align 8, !tbaa !97    ; 3 uses
  %.not.i.i.i.i58 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i58, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i59, label %bb.f

bb.f:                                             ; preds = %_ZNK6spacer7manager11formula_o2nEP4exprR7obj_refIS1_11ast_managerEjb.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !108
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !108
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i59

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i59: ; preds = %bb.f, %_ZNK6spacer7manager11formula_o2nEP4exprR7obj_refIS1_11ast_managerEjb.exit
  %i.bf = load ptr, ptr %i.s, align 8, !tbaa !192 ; 4 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i59
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 -4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !104 ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bf, i64 -8
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !104
  %i.bl = icmp eq i32 %i.bi, %i.bk
  br i1 %i.bl, label %bb.h, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

bb.h:                                             ; preds = %bb.g, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i59
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %.noexc63 unwind label %bb.m

.noexc63:                                         ; preds = %bb.h
  %.pre.i.i60 = load ptr, ptr %i.s, align 8, !tbaa !192 ; 2 uses
  %.phi.trans.insert.i.i61 = getelementptr inbounds i8, ptr %.pre.i.i60, i64 -4
  %.pre2.i.i62 = load i32, ptr %.phi.trans.insert.i.i61, align 4, !tbaa !104
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %.noexc63, %bb.g
  %i.bm = phi i32 [ %.pre2.i.i62, %.noexc63 ], [ %i.bi, %bb.g ] ; 2 uses
  %i.bn = phi ptr [ %.pre.i.i60, %.noexc63 ], [ %i.bf, %bb.g ] ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -4 ; 2 uses
  %i.bp = zext i32 %i.bm to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bp
  store ptr %i.bb, ptr %i.bq, align 8, !tbaa !193
  %i.br = add i32 %i.bm, 1
  store i32 %i.br, ptr %i.bo, align 4, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr null, ptr %3, align 8, !tbaa !293
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !296)
  %i.bs = load ptr, ptr %1, align 8, !tbaa !203, !noalias !296, !nonnull !95, !align !96
  %i.bt = load i32, ptr %i.bo, align 4, !tbaa !104, !noalias !296
  %i.bu = invoke noundef ptr @_Z6mk_andR11ast_managerjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.bs, i32 noundef %i.bt, ptr noundef nonnull %i.bn)
          to label %.noexc65 unwind label %bb.n   ; 6 uses

.noexc65:                                         ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.bv = load ptr, ptr %1, align 8, !tbaa !203, !noalias !296, !nonnull !95, !align !96 ; 2 uses
  store ptr %i.bu, ptr %4, align 8, !tbaa !97, !alias.scope !296
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !98, !alias.scope !296
  %.not.i.i.i = icmp eq ptr %i.bu, null           ; 2 uses
  br i1 %.not.i.i.i, label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i:        ; preds = %.noexc65
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !108, !noalias !296
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !108, !noalias !296
  br label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit

_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i, %.noexc65
  %i.ca = invoke noundef zeroext i1 @_ZN6spacer16pred_transformer17is_must_reachableEP4exprP3refI5modelE(ptr noundef nonnull align 8 dereferenceable(472) %i.k, ptr noundef %i.bu, ptr noundef nonnull %3)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit
  br i1 %.not.i.i.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !108
  %i.cd = add i32 %i.cc, -1                       ; 2 uses
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !108
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.k, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bv, ptr noundef nonnull %i.bu)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #27
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %i.ca, label %bb.q, label %bb.ci

bb.m:                                             ; preds = %bb.h, %_ZNK6vectorIN6spacer10derivation7premiseELb1EjE4sizeEv.exit57.thread
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.n:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cj, %bb.o ], [ %i.ci, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.ct

bb.q:                                             ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.ck = load ptr, ptr %3, align 8, !tbaa !293
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 128
  invoke void @_ZN15model_evaluator20set_model_completionEb(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, i1 noundef zeroext false)
          to label %_ZN5model20set_model_completionEb.exit unwind label %bb.aq

_ZN5model20set_model_completionEb.exit:           ; preds = %bb.q
  %i.cm = load ptr, ptr %3, align 8, !tbaa !293
  %i.cn = invoke noundef ptr @_ZN6spacer16pred_transformer11get_used_rfER5modelb(ptr noundef nonnull align 8 dereferenceable(472) %i.k, ptr noundef nonnull align 8 dereferenceable(160) %i.cm, i1 noundef zeroext true)
          to label %bb.r unwind label %bb.ar      ; 2 uses

bb.r:                                             ; preds = %_ZN5model20set_model_completionEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i64 %i.r, ptr %5, align 8, !tbaa !98
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store ptr null, ptr %i.co, align 8, !tbaa !192
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !97 ; 3 uses
  %.not.i.i.i.i67 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i67, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i68, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !108
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !108
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i68

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i68: ; preds = %bb.r, %bb.s
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.co)
          to label %bb.t unwind label %bb.as

bb.t:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i68
  %.pre.i.i69 = load ptr, ptr %i.co, align 8, !tbaa !192 ; 2 uses
  %.phi.trans.insert.i.i70 = getelementptr inbounds i8, ptr %.pre.i.i69, i64 -4 ; 2 uses
  %.pre2.i.i71 = load i32, ptr %.phi.trans.insert.i.i70, align 4, !tbaa !104 ; 2 uses
  %i.cu = zext i32 %.pre2.i.i71 to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i69, i64 %i.cu
  store ptr %i.cq, ptr %i.cv, align 8, !tbaa !193
  %i.cw = add i32 %.pre2.i.i71, 1
  store i32 %i.cw, ptr %.phi.trans.insert.i.i70, align 4, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.cx = load ptr, ptr %3, align 8, !tbaa !293
  invoke void @_ZN6spacer26compute_implicant_literalsER5modelR10ref_vectorI4expr11ast_managerE(ptr dead_on_unwind nonnull writable sret(%class.ref_vector.34) align 8 %7, ptr noundef nonnull align 8 dereferenceable(160) %i.cx, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.u unwind label %bb.at

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %i.cy = load ptr, ptr %7, align 8, !tbaa !203, !noalias !299, !nonnull !95, !align !96
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !192, !noalias !299 ; 3 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i74, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = getelementptr inbounds i8, ptr %i.da, i64 -4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !104, !noalias !299
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i74

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i74: ; preds = %bb.v, %bb.u
  %.0.i.i.i75 = phi i32 [ %i.dd, %bb.v ], [ 0, %bb.u ]
  %i.de = invoke noundef ptr @_Z6mk_andR11ast_managerjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.cy, i32 noundef %.0.i.i.i75, ptr noundef %i.da)
          to label %.noexc78 unwind label %bb.au  ; 6 uses

.noexc78:                                         ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i74
  %i.df = load ptr, ptr %7, align 8, !tbaa !203, !noalias !299, !nonnull !95, !align !96
  store ptr %i.de, ptr %6, align 8, !tbaa !97, !alias.scope !299
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !98, !alias.scope !299
  %.not.i.i.i76 = icmp eq ptr %i.de, null         ; 2 uses
  br i1 %.not.i.i.i76, label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit79, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i77

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i77:      ; preds = %.noexc78
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !108, !noalias !299
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !108, !noalias !299
  br label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit79
end_hunk_1
