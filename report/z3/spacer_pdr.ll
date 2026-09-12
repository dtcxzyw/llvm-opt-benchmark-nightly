Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/spacer_pdr?download=true
inline.NumInlined: 825
inline.NumDeleted: 463
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6spacer7context26gpdr_create_split_childrenERNS_3pobERKN7datalog4ruleEP4exprR5modelR11sref_bufferIS1_Lj16EE:bb.a
  %i.ke = extractvalue { ptr, i32 } %i.kd, 0
  call void @__clang_call_terminate(ptr %i.ke) #20
  unreachable

_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjED2Ev.exit: ; preds = %_ZN6vectorIjLb0EjED2Ev.exit, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.kf = load ptr, ptr %i.fm, align 8, !tbaa !196 ; 5 uses
  %i.kg = icmp eq ptr %i.kf, null
  br i1 %i.kg, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit117, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i107

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i107:        ; preds = %_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjED2Ev.exit
  %i.kh = getelementptr inbounds i8, ptr %i.kf, i64 -4
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !57 ; 2 uses
  %i.kj = zext i32 %i.ki to i64
  %i.kk = shl nuw nsw i64 %i.kj, 3
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.kk
  %.not.i108 = icmp eq i32 %i.ki, 0
  br i1 %.not.i108, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i116, label %.lr.ph.i.i109

.lr.ph.i.i109:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i107, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i112
  %.06.i.i110 = phi ptr [ %i.ks, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i112 ], [ %i.kf, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i107 ] ; 2 uses
  %i.km = load ptr, ptr %.06.i.i110, align 8, !tbaa !200 ; 3 uses
  %i.kn = load ptr, ptr %10, align 8, !tbaa !201, !nonnull !60, !align !179
  %.not.i.i.i.i.i111 = icmp eq ptr %i.km, null
  br i1 %.not.i.i.i.i.i111, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i112, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.i109
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 8 ; 2 uses
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !202
  %i.kq = add i32 %i.kp, -1                       ; 2 uses
  store i32 %i.kq, ptr %i.ko, align 4, !tbaa !202
  %i.kr = icmp eq i32 %i.kq, 0
  br i1 %i.kr, label %bb.bf, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i112

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.kn, ptr noundef nonnull %i.km)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i112 unwind label %bb.bh

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i112: ; preds = %bb.bf, %bb.be, %.lr.ph.i.i109
  %i.ks = getelementptr inbounds nuw i8, ptr %.06.i.i110, i64 8 ; 2 uses
  %i.kt = icmp ult ptr %i.ks, %i.kl
  br i1 %i.kt, label %.lr.ph.i.i109, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i113, !llvm.loop !10

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i113: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i112
  %.pre.i114 = load ptr, ptr %i.fm, align 8, !tbaa !196 ; 2 uses
  %.not.i.i.i115 = icmp eq ptr %.pre.i114, null
  br i1 %.not.i.i.i115, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit117, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i116

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i116: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i113, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i107
  %i.ku = phi ptr [ %.pre.i114, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i113 ], [ %i.kf, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i107 ]
  %i.kv = getelementptr inbounds i8, ptr %i.ku, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.kv)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit117 unwind label %bb.bg

bb.bg:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i116
  %i.kw = landingpad { ptr, i32 }
          catch ptr null
  %i.kx = extractvalue { ptr, i32 } %i.kw, 0
  call void @__clang_call_terminate(ptr %i.kx) #20
  unreachable

bb.bh:                                            ; preds = %bb.bf
  %i.ky = landingpad { ptr, i32 }
          catch ptr null
  %i.kz = extractvalue { ptr, i32 } %i.ky, 0
  call void @__clang_call_terminate(ptr %i.kz) #20
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit117: ; preds = %_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjED2Ev.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i113, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.la = load ptr, ptr %8, align 8, !tbaa !193   ; 2 uses
  %i.lb = icmp eq ptr %i.la, null
  br i1 %i.lb, label %_ZN7obj_mapI9func_decljED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit117
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.la)
          to label %_ZN7obj_mapI9func_decljED2Ev.exit unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lc = landingpad { ptr, i32 }
          catch ptr null
  %i.ld = extractvalue { ptr, i32 } %i.lc, 0
  call void @__clang_call_terminate(ptr %i.ld) #20
  unreachable

_ZN7obj_mapI9func_decljED2Ev.exit:                ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit117, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.le = load ptr, ptr %7, align 8, !tbaa !190   ; 2 uses
  %.not.i.i118 = icmp eq ptr %i.le, null
  br i1 %.not.i.i118, label %_ZN6vectorIPN6spacer16pred_transformerELb0EjED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZN7obj_mapI9func_decljED2Ev.exit
  %i.lf = getelementptr inbounds i8, ptr %i.le, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.lf)
          to label %_ZN6vectorIPN6spacer16pred_transformerELb0EjED2Ev.exit unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.lg = landingpad { ptr, i32 }
          catch ptr null
  %i.lh = extractvalue { ptr, i32 } %i.lg, 0
  call void @__clang_call_terminate(ptr %i.lh) #20
  unreachable

_ZN6vectorIPN6spacer16pred_transformerELb0EjED2Ev.exit: ; preds = %_ZN7obj_mapI9func_decljED2Ev.exit, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.li = load ptr, ptr %6, align 8, !tbaa !187   ; 2 uses
  %.not.i.i119 = icmp eq ptr %i.li, null
  br i1 %.not.i.i119, label %_ZN6vectorIP9func_declLb0EjED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZN6vectorIPN6spacer16pred_transformerELb0EjED2Ev.exit
  %i.lj = getelementptr inbounds i8, ptr %i.li, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.lj)
          to label %_ZN6vectorIP9func_declLb0EjED2Ev.exit unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.lk = landingpad { ptr, i32 }
          catch ptr null
  %i.ll = extractvalue { ptr, i32 } %i.lk, 0
  call void @__clang_call_terminate(ptr %i.ll) #20
  unreachable

_ZN6vectorIP9func_declLb0EjED2Ev.exit:            ; preds = %_ZN6vectorIPN6spacer16pred_transformerELb0EjED2Ev.exit, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret i1 true

bb.bo:                                            ; preds = %.lr.ph244, %_ZN7obj_refI4expr11ast_managerED2Ev.exit179
  %indvars.iv277 = phi i64 [ 0, %.lr.ph244 ], [ %indvars.iv.next278, %_ZN7obj_refI4expr11ast_managerED2Ev.exit179 ] ; 2 uses
  %i.lm = load ptr, ptr %13, align 8, !tbaa !203
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %indvars.iv277
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !57 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.lp = load ptr, ptr %i.br, align 8, !tbaa !178, !nonnull !60, !align !179
  store ptr null, ptr %14, align 8, !tbaa !83
  store ptr %i.lp, ptr %i.jq, align 8, !tbaa !195
  %i.lq = load ptr, ptr %7, align 8, !tbaa !190
  %i.lr = zext i32 %i.lo to i64                   ; 2 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %i.lr
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !110
  %i.lu = load ptr, ptr %11, align 8, !tbaa !199
  %i.lv = getelementptr inbounds nuw [16 x i8], ptr %i.lu, i64 %i.lr ; 2 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !201, !noalias !467, !nonnull !60, !align !179
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !196, !noalias !467 ; 3 uses
  %i.lz = icmp eq ptr %i.ly, null
  br i1 %i.lz, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ma = getelementptr inbounds i8, ptr %i.ly, i64 -4
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !57, !noalias !467
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %bb.bp, %bb.bo
  %.0.i.i.i = phi i32 [ %i.mb, %bb.bp ], [ 0, %bb.bo ]
  %i.mc = invoke noundef ptr @_Z6mk_andR11ast_managerjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.lw, i32 noundef %.0.i.i.i, ptr noundef %i.ly)
          to label %.noexc121 unwind label %bb.cl ; 4 uses

.noexc121:                                        ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %.not.i.i.i120 = icmp eq ptr %i.mc, null
  br i1 %.not.i.i.i120, label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i:        ; preds = %.noexc121
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8 ; 2 uses
  %i.me = load i32, ptr %i.md, align 4, !tbaa !202, !noalias !467
  %i.mf = add i32 %i.me, 1
  store i32 %i.mf, ptr %i.md, align 4, !tbaa !202, !noalias !467
  br label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit

_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i, %.noexc121
  %i.mg = load ptr, ptr %14, align 8, !tbaa !83   ; 3 uses
  %.not.i.i123 = icmp eq ptr %i.mg, null
  br i1 %.not.i.i123, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.bq

bb.bq:                                            ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit
  %i.mh = load ptr, ptr %i.jq, align 8, !tbaa !204, !nonnull !60, !align !179
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 8 ; 2 uses
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !202
  %i.mk = add i32 %i.mj, -1                       ; 2 uses
  store i32 %i.mk, ptr %i.mi, align 4, !tbaa !202
  %i.ml = icmp eq i32 %i.mk, 0
  br i1 %i.ml, label %bb.br, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.mh, ptr noundef nonnull %i.mg)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.mm = landingpad { ptr, i32 }
          catch ptr null
  %i.mn = extractvalue { ptr, i32 } %i.mm, 0
  call void @__clang_call_terminate(ptr %i.mn) #20
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.br, %bb.bq, %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit
  store ptr %i.mc, ptr %14, align 8, !tbaa !83
  %i.mo = add i32 %i.lo, 1
  invoke void @_ZNK6spacer7sym_mux10shift_exprEP4exprjjR7obj_refIS1_11ast_managerEb(ptr noundef nonnull align 8 dereferenceable(56) %i.jr, ptr noundef %i.mc, i32 noundef %i.mo, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %14, i1 noundef zeroext true)
          to label %bb.bt unwind label %bb.ck

bb.bt:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.mp = load i64, ptr %i.js, align 8            ; 2 uses
  %i.mq = trunc i64 %i.mp to i32
  %i.mr = and i32 %i.mq, 65535                    ; 2 uses
  %i.ms = icmp eq i32 %i.mr, 65535
  %spec.select.i = call i32 @llvm.usub.sat.i32(i32 %i.mr, i32 1)
  %.0.i126 = select i1 %i.ms, i32 -1, i32 %spec.select.i
  %15 = lshr i64 %i.mp, 16
  %16 = trunc i64 %15 to i32
  %17 = and i32 %16, 65535
  %i.mt = load ptr, ptr %14, align 8, !tbaa !83
  %i.mu = getelementptr inbounds nuw i8, ptr %i.lt, i64 136
  %i.mv = invoke noundef ptr @_ZN6spacer16pred_transformer11pob_manager6mk_pobEPNS_3pobEjjP4expr(ptr noundef nonnull align 8 dereferenceable(40) %i.mu, ptr noundef nonnull %1, i32 noundef %.0.i126, i32 noundef %17, ptr noundef %i.mt)
          to label %_ZN6spacer16pred_transformer6mk_pobEPNS_3pobEjjP4expr.exit unwind label %bb.cm ; 10 uses

_ZN6spacer16pred_transformer6mk_pobEPNS_3pobEjjP4expr.exit: ; preds = %bb.bt
  %.not.i.i.i128 = icmp eq ptr %i.mv, null
  br i1 %.not.i.i.i128, label %_ZN15ref_buffer_coreIN6spacer3pobE21ref_unmanaged_wrapperIS1_ELj16EE7inc_refEPS1_.exit.i, label %bb.bu

bb.bu:                                            ; preds = %_ZN6spacer16pred_transformer6mk_pobEPNS_3pobEjjP4expr.exit
  %i.mw = load i32, ptr %i.mv, align 8, !tbaa !45
  %i.mx = add i32 %i.mw, 1
  store i32 %i.mx, ptr %i.mv, align 8, !tbaa !45
  br label %_ZN15ref_buffer_coreIN6spacer3pobE21ref_unmanaged_wrapperIS1_ELj16EE7inc_refEPS1_.exit.i

_ZN15ref_buffer_coreIN6spacer3pobE21ref_unmanaged_wrapperIS1_ELj16EE7inc_refEPS1_.exit.i: ; preds = %bb.bu, %_ZN6spacer16pred_transformer6mk_pobEPNS_3pobEjjP4expr.exit
  %i.my = load i32, ptr %i.jt, align 8, !tbaa !183 ; 2 uses
  %i.mz = load i32, ptr %i.ju, align 4, !tbaa !184 ; 2 uses
  %.not.i.i129 = icmp ult i32 %i.my, %i.mz
  br i1 %.not.i.i129, label %._crit_edge.i.i, label %bb.bv

._crit_edge.i.i:                                  ; preds = %_ZN15ref_buffer_coreIN6spacer3pobE21ref_unmanaged_wrapperIS1_ELj16EE7inc_refEPS1_.exit.i
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !182
  br label %bb.bx

bb.bv:                                            ; preds = %_ZN15ref_buffer_coreIN6spacer3pobE21ref_unmanaged_wrapperIS1_ELj16EE7inc_refEPS1_.exit.i
  %i.na = shl i32 %i.mz, 1                        ; 2 uses
  %i.nb = zext i32 %i.na to i64
  %i.nc = shl nuw nsw i64 %i.nb, 3
  %i.nd = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.nc)
          to label %.noexc132 unwind label %bb.cm ; 9 uses

.noexc132:                                        ; preds = %bb.bv
  %i.ne = load i32, ptr %i.jt, align 8, !tbaa !183 ; 4 uses
  %.not.i.i1.i = icmp eq i32 %i.ne, 0
  %.pre.i.i.i = load ptr, ptr %5, align 8, !tbaa !182 ; 10 uses
  br i1 %.not.i.i1.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc132
  %.pre.i.i.i378 = ptrtoaddr ptr %.pre.i.i.i to i64
  %i.nf = ptrtoaddr ptr %i.nd to i64
  %wide.trip.count.i.i.i = zext i32 %i.ne to i64  ; 5 uses
  %min.iters.check380 = icmp ult i32 %i.ne, 4
  %i.ng = sub i64 %.pre.i.i.i378, %i.nf
  %diff.check = icmp ugt i64 %i.ng, -32
  %or.cond = select i1 %min.iters.check380, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph379.preheader, label %vector.ph381

vector.ph381:                                     ; preds = %.lr.ph.i.i.i
  %n.vec382 = and i64 %wide.trip.count.i.i.i, 4294967292 ; 3 uses
  br label %vector.body383

vector.body383:                                   ; preds = %vector.body383, %vector.ph381
  %index384 = phi i64 [ 0, %vector.ph381 ], [ %index.next386, %vector.body383 ] ; 3 uses
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %index384 ; 2 uses
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %index384 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ni, align 8, !tbaa !185
  %wide.load385 = load <2 x ptr>, ptr %i.nj, align 8, !tbaa !185
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  store <2 x ptr> %wide.load, ptr %i.nh, align 8, !tbaa !185
  store <2 x ptr> %wide.load385, ptr %i.nk, align 8, !tbaa !185
  %index.next386 = add nuw i64 %index384, 4       ; 2 uses
  %i.nl = icmp eq i64 %index.next386, %n.vec382
  br i1 %i.nl, label %middle.block387, label %vector.body383, !llvm.loop !447

middle.block387:                                  ; preds = %vector.body383
  %cmp.n388 = icmp eq i64 %n.vec382, %wide.trip.count.i.i.i
  br i1 %cmp.n388, label %._crit_edge.i.i.i, label %scalar.ph379.preheader

scalar.ph379.preheader:                           ; preds = %.lr.ph.i.i.i, %middle.block387
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec382, %middle.block387 ] ; 3 uses
  %xtraiter408 = and i64 %wide.trip.count.i.i.i, 3 ; 2 uses
  %lcmp.mod409.not = icmp eq i64 %xtraiter408, 0
  br i1 %lcmp.mod409.not, label %scalar.ph379.prol.loopexit, label %scalar.ph379.prol

scalar.ph379.prol:                                ; preds = %scalar.ph379.preheader, %scalar.ph379.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph379.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph379.preheader ] ; 3 uses
  %prol.iter410 = phi i64 [ %prol.iter410.next, %scalar.ph379.prol ], [ 0, %scalar.ph379.preheader ]
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %indvars.iv.i.i.i.prol
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !185
  store ptr %i.no, ptr %i.nm, align 8, !tbaa !185
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter410.next = add i64 %prol.iter410, 1   ; 2 uses
  %prol.iter410.cmp.not = icmp eq i64 %prol.iter410.next, %xtraiter408
  br i1 %prol.iter410.cmp.not, label %scalar.ph379.prol.loopexit, label %scalar.ph379.prol, !llvm.loop !448

scalar.ph379.prol.loopexit:                       ; preds = %scalar.ph379.prol, %scalar.ph379.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph379.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph379.prol ]
  %i.np = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.nq = icmp ugt i64 %i.np, -4
  br i1 %i.nq, label %._crit_edge.i.i.i, label %scalar.ph379

._crit_edge.i.i.i:                                ; preds = %scalar.ph379.prol.loopexit, %scalar.ph379, %middle.block387, %.noexc132
  %.not.i.i.i.i130 = icmp eq ptr %.pre.i.i.i, %i.jv
  %i.nr = icmp eq ptr %.pre.i.i.i, null
  %or.cond.i.i.i.i131 = or i1 %.not.i.i.i.i130, %i.nr
  br i1 %or.cond.i.i.i.i131, label %_ZN6bufferIPN6spacer3pobELb0ELj16EE6expandEv.exit.i.i, label %bb.bw

bb.bw:                                            ; preds = %._crit_edge.i.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i.i)
          to label %.noexc133 unwind label %bb.cm

.noexc133:                                        ; preds = %bb.bw
  %.pre2.pre.i.i = load i32, ptr %i.jt, align 8, !tbaa !183
  br label %_ZN6bufferIPN6spacer3pobELb0ELj16EE6expandEv.exit.i.i

scalar.ph379:                                     ; preds = %scalar.ph379.prol.loopexit, %scalar.ph379
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph379 ], [ %indvars.iv.i.i.i.unr, %scalar.ph379.prol.loopexit ] ; 6 uses
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %indvars.iv.i.i.i
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !185
  store ptr %i.nu, ptr %i.ns, align 8, !tbaa !185
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %indvars.iv.next.i.i.i
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !185
  store ptr %i.nx, ptr %i.nv, align 8, !tbaa !185
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %indvars.iv.next.i.i.i.1
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !185
  store ptr %i.oa, ptr %i.ny, align 8, !tbaa !185
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %indvars.iv.next.i.i.i.2
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !185
  store ptr %i.od, ptr %i.ob, align 8, !tbaa !185
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.i.i.i, label %scalar.ph379, !llvm.loop !449

_ZN6bufferIPN6spacer3pobELb0ELj16EE6expandEv.exit.i.i: ; preds = %.noexc133, %._crit_edge.i.i.i
  %.pre2.i.i = phi i32 [ %i.ne, %._crit_edge.i.i.i ], [ %.pre2.pre.i.i, %.noexc133 ]
  store ptr %i.nd, ptr %5, align 8, !tbaa !182
  store i32 %i.na, ptr %i.ju, align 4, !tbaa !184
  br label %bb.bx

bb.bx:                                            ; preds = %_ZN6bufferIPN6spacer3pobELb0ELj16EE6expandEv.exit.i.i, %._crit_edge.i.i
  %i.oe = phi i32 [ %i.my, %._crit_edge.i.i ], [ %.pre2.i.i, %_ZN6bufferIPN6spacer3pobELb0ELj16EE6expandEv.exit.i.i ] ; 2 uses
  %i.of = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.nd, %_ZN6bufferIPN6spacer3pobELb0ELj16EE6expandEv.exit.i.i ]
  %i.og = zext i32 %i.oe to i64
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %i.og
  store ptr %i.mv, ptr %i.oh, align 8, !tbaa !185
  %i.oi = add i32 %i.oe, 1
  store i32 %i.oi, ptr %i.jt, align 8, !tbaa !183
  %i.oj = invoke noundef i32 @_Z19get_verbosity_levelv()
          to label %bb.by unwind label %bb.cm

bb.by:                                            ; preds = %bb.bx
  %.not69 = icmp eq i32 %i.oj, 0
  br i1 %.not69, label %bb.cu, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ok = invoke noundef zeroext i1 @_Z11is_threadedv()
          to label %bb.ca unwind label %bb.cm

bb.ca:                                            ; preds = %bb.bz
  br i1 %i.ok, label %bb.cb, label %bb.cn

bb.cb:                                            ; preds = %bb.ca
  invoke void @_Z12verbose_lockv()
          to label %bb.cc unwind label %bb.cm

bb.cc:                                            ; preds = %bb.cb
  %i.ol = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.cd unwind label %bb.cm     ; 6 uses

bb.cd:                                            ; preds = %bb.cc
  %i.om = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ol, ptr noundef nonnull @.str.6, i64 noundef 16)
          to label %bb.ce unwind label %bb.cm     ; 0 uses

bb.ce:                                            ; preds = %bb.cd
  %i.on = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !186, !nonnull !60, !align !179
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 24
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !102
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %.sroa.01.0.copyload = load ptr, ptr %i.or, align 8, !tbaa !468 ; 4 uses
  %i.os = ptrtoint ptr %.sroa.01.0.copyload to i64 ; 2 uses
  %i.ot = and i64 %i.os, 7
  %i.ou = icmp eq i64 %i.ot, 0
  br i1 %i.ou, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %.not.i135 = icmp eq ptr %.sroa.01.0.copyload, null
  br i1 %.not.i135, label %.invoke362, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.cf
  %i.ov = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.01.0.copyload) #19
  br label %.invoke362

.invoke362:                                       ; preds = %bb.cf, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.ow = phi ptr [ %.sroa.01.0.copyload, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ @.str.12, %bb.cf ]
  %i.ox = phi i64 [ %i.ov, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ 4, %bb.cf ]
  %i.oy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ol, ptr noundef nonnull %i.ow, i64 noundef %i.ox)
          to label %_ZlsRSo6symbol.exit unwind label %bb.cm ; 0 uses

bb.cg:                                            ; preds = %bb.ce
  %i.oz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ol, ptr noundef nonnull @.str.13, i64 noundef 2)
          to label %.noexc138 unwind label %bb.cm ; 0 uses

end_hunk_0
