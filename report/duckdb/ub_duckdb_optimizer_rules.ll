Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_optimizer_rules?download=true
inline.NumInlined: 5380
inline.NumDeleted: 2265
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN6duckdb23JoinDependentFilterRule5ApplyERNS_15LogicalOperatorERNS_6vectorISt17reference_wrapperINS_10ExpressionEELb1ESaIS6_EEERbb:bb.a
  %.not.i23.i.i.i126 = icmp eq ptr %i.il, null
  br i1 %.not.i23.i.i.i126, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit130, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i124
  call void @_ZdlPv(ptr noundef nonnull %i.il) #28
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit130

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit130: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i124, %bb.bj
  store ptr %i.iw, ptr %i.hz, align 8, !tbaa !360
  store ptr %i.js, ptr %i.if, align 8, !tbaa !359
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.iu
  store ptr %i.jt, ptr %i.ih, align 8, !tbaa !402
  %.pr264 = load ptr, ptr %13, align 8, !tbaa !326 ; 3 uses
  %.not.i131 = icmp eq ptr %.pr264, null
  br i1 %.not.i131, label %bb.bk, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i132

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i132: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit130
  %i.ju = load ptr, ptr %.pr264, align 8, !tbaa !244
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8
  call void %i.jw(ptr noundef nonnull align 8 dereferenceable(88) %.pr264) #25, !inline_history !9
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit130.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit130, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.jx = add nuw i64 %.0320, 1                   ; 2 uses
  %i.jy = load ptr, ptr %i.l, align 8, !tbaa !359
  %i.jz = load ptr, ptr %i.j, align 8, !tbaa !360
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = ptrtoint ptr %i.jz to i64
  %i.kc = sub i64 %i.ka, %i.kb
  %i.kd = ashr exact i64 %i.kc, 3
  %i.ke = icmp ult i64 %i.jx, %i.kd
  br i1 %i.ke, label %.lr.ph321, label %._crit_edge322, !llvm.loop !1327

bb.bl:                                            ; preds = %bb.bf, %bb.be
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit136

.loopexit.split-lp278.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i116, %bb.bi
  %lpad.loopexit.split-lp618 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kg = load ptr, ptr %13, align 8, !tbaa !326  ; 3 uses
  %.not.i134 = icmp eq ptr %i.kg, null
  br i1 %.not.i134, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit136, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i135

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i135: ; preds = %.loopexit.split-lp278.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !244
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8
  call void %i.kj(ptr noundef nonnull align 8 dereferenceable(88) %i.kg) #25, !inline_history !9
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit136

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit136: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i135, %.loopexit.split-lp278.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bl
  %.pn77 = phi { ptr, i32 } [ %i.kf, %bb.bl ], [ %lpad.loopexit.split-lp618, %.loopexit.split-lp278.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp618, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i135 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %.body110

._crit_edge322:                                   ; preds = %bb.bk, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.kk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_26BoundConjunctionExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.bm:                                            ; preds = %._crit_edge322
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 88 ; 2 uses
  %i.km = load ptr, ptr %11, align 8, !tbaa !411  ; 5 uses
  store ptr null, ptr %11, align 8, !tbaa !411
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 96 ; 3 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !359 ; 6 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kk, i64 104 ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !402
  %.not.i.i137 = icmp eq ptr %i.ko, %i.kq
  br i1 %.not.i.i137, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.kr = ptrtoint ptr %i.km to i64
  store i64 %i.kr, ptr %i.ko, align 8, !tbaa !326
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store ptr %i.ks, ptr %i.kn, align 8, !tbaa !359
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit155

bb.bo:                                            ; preds = %bb.bm
  %i.kt = load ptr, ptr %i.kl, align 8, !tbaa !360 ; 10 uses
  %i.ku = ptrtoint ptr %i.ko to i64               ; 2 uses
  %i.kv = ptrtoint ptr %i.kt to i64               ; 2 uses
  %i.kw = sub i64 %i.ku, %i.kv                    ; 3 uses
  %i.kx = icmp eq i64 %i.kw, 9223372036854775800
  br i1 %i.kx, label %bb.bp, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i138

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #27
          to label %.noexc150 unwind label %.loopexit.split-lp288.loopexit.split-lp

.noexc150:                                        ; preds = %bb.bp
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i138: ; preds = %bb.bo
  %i.ky = ashr exact i64 %i.kw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i139 = call i64 @llvm.umax.i64(i64 %i.ky, i64 1)
  %i.kz = add nsw i64 %.sroa.speculated.i.i.i.i139, %i.ky ; 2 uses
  %i.la = icmp ult i64 %i.kz, %i.ky
  %i.lb = call i64 @llvm.umin.i64(i64 %i.kz, i64 1152921504606846975)
  %i.lc = select i1 %i.la, i64 1152921504606846975, i64 %i.lb ; 3 uses
  %.not.i.i.i.i140 = icmp ne i64 %i.lc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i140)
  %i.ld = shl nuw nsw i64 %i.lc, 3
  %i.le = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ld) #26
          to label %.noexc151 unwind label %.loopexit.split-lp288.loopexit.split-lp ; 10 uses

.noexc151:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i138
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.kw
  %i.lg = ptrtoint ptr %i.km to i64
  store i64 %i.lg, ptr %i.lf, align 8, !tbaa !326
  %.not10.i.i.i.i.i.i.i141 = icmp eq ptr %i.kt, %i.ko
  br i1 %.not10.i.i.i.i.i.i.i141, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i146, label %.lr.ph.i.i.i.i.i.i.i142.preheader

.lr.ph.i.i.i.i.i.i.i142.preheader:                ; preds = %.noexc151
  %i.lh = add i64 %i.ku, -8
  %i.li = sub i64 %i.lh, %i.kv                    ; 3 uses
  %i.lj = lshr i64 %i.li, 3
  %i.lk = add nuw nsw i64 %i.lj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.li, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i142.preheader614, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i142.preheader
  %i.ll = and i64 %i.li, -8
  %i.lm = add i64 %i.ll, 8                        ; 2 uses
  %i.ln = getelementptr i8, ptr %i.le, i64 %i.lm
  %i.lo = getelementptr i8, ptr %i.kt, i64 %i.lm
  %bound0 = icmp ult ptr %i.le, %i.lo
  %bound1 = icmp ult ptr %i.kt, %i.ln
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i142.preheader614, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.lk, 4611686018427387900     ; 3 uses
  %i.lp = shl i64 %n.vec, 3                       ; 2 uses
  %i.lq = getelementptr i8, ptr %i.le, i64 %i.lp  ; 2 uses
  %i.lr = getelementptr i8, ptr %i.kt, i64 %i.lp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ls = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.le, i64 %i.ls ; 2 uses
  %next.gep497 = getelementptr i8, ptr %i.kt, i64 %i.ls ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  %i.lt = getelementptr i8, ptr %next.gep497, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep497, align 8, !tbaa !326, !alias.scope !1373
  %wide.load498 = load <2 x i64>, ptr %i.lt, align 8, !tbaa !326, !alias.scope !1373
  %i.lu = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !326, !alias.scope !1374, !noalias !1375
  store <2 x i64> %wide.load498, ptr %i.lu, align 8, !tbaa !326, !alias.scope !1374, !noalias !1375
  %i.lv = getelementptr i8, ptr %next.gep497, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep497, align 8, !tbaa !326, !alias.scope !1373
  store <2 x ptr> splat (ptr null), ptr %i.lv, align 8, !tbaa !326, !alias.scope !1373
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lw = icmp eq i64 %index.next, %n.vec
  br i1 %i.lw, label %middle.block, label %vector.body, !llvm.loop !1334

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lk, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i146, label %.lr.ph.i.i.i.i.i.i.i142.preheader614

.lr.ph.i.i.i.i.i.i.i142.preheader614:             ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i142.preheader, %middle.block
  %.012.i.i.i.i.i.i.i143.ph = phi ptr [ %i.le, %vector.memcheck ], [ %i.le, %.lr.ph.i.i.i.i.i.i.i142.preheader ], [ %i.lq, %middle.block ]
  %.0911.i.i.i.i.i.i.i144.ph = phi ptr [ %i.kt, %vector.memcheck ], [ %i.kt, %.lr.ph.i.i.i.i.i.i.i142.preheader ], [ %i.lr, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i142

.lr.ph.i.i.i.i.i.i.i142:                          ; preds = %.lr.ph.i.i.i.i.i.i.i142.preheader614, %.lr.ph.i.i.i.i.i.i.i142
  %.012.i.i.i.i.i.i.i143 = phi ptr [ %i.lz, %.lr.ph.i.i.i.i.i.i.i142 ], [ %.012.i.i.i.i.i.i.i143.ph, %.lr.ph.i.i.i.i.i.i.i142.preheader614 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i144 = phi ptr [ %i.ly, %.lr.ph.i.i.i.i.i.i.i142 ], [ %.0911.i.i.i.i.i.i.i144.ph, %.lr.ph.i.i.i.i.i.i.i142.preheader614 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  %i.lx = load i64, ptr %.0911.i.i.i.i.i.i.i144, align 8, !tbaa !326, !alias.scope !1372
  store i64 %i.lx, ptr %.012.i.i.i.i.i.i.i143, align 8, !tbaa !326, !alias.scope !1371
  store ptr null, ptr %.0911.i.i.i.i.i.i.i144, align 8, !tbaa !326, !alias.scope !1372
  %i.ly = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i144, i64 8 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i143, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i145 = icmp eq ptr %i.ly, %i.ko
  br i1 %.not.i.i.i.i.i.i.i145, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i146, label %.lr.ph.i.i.i.i.i.i.i142, !llvm.loop !1335

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i146: ; preds = %.lr.ph.i.i.i.i.i.i.i142, %middle.block, %.noexc151
  %.0.lcssa.i.i.i.i.i.i.i147 = phi ptr [ %i.le, %.noexc151 ], [ %i.lq, %middle.block ], [ %i.lz, %.lr.ph.i.i.i.i.i.i.i142 ]
  %i.ma = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i147, i64 8
  %.not.i23.i.i.i148 = icmp eq ptr %i.kt, null
  br i1 %.not.i23.i.i.i148, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i149, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i146
  call void @_ZdlPv(ptr noundef nonnull %i.kt) #28
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i149

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i149: ; preds = %bb.bq, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i146
  store ptr %i.le, ptr %i.kl, align 8, !tbaa !360
  store ptr %i.ma, ptr %i.kn, align 8, !tbaa !359
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.lc
  store ptr %i.mb, ptr %i.kp, align 8, !tbaa !402
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit155

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit155: ; preds = %bb.ba, %.lr.ph.i.i.i.i113, %bb.ay, %..loopexit_crit_edge21.i.i.i.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i149, %bb.bn
  %i.mc = load ptr, ptr %11, align 8, !tbaa !411  ; 3 uses
  %.not.i156 = icmp eq ptr %i.mc, null
  br i1 %.not.i156, label %_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb26BoundConjunctionExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb26BoundConjunctionExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit155
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !244
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mf = load ptr, ptr %i.me, align 8
  call void %i.mf(ptr noundef nonnull align 8 dereferenceable(112) %i.mc) #25, !inline_history !19
  br label %_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit155, %_ZNKSt14default_deleteIN6duckdb26BoundConjunctionExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %.sroa.0247.0 = load ptr, ptr %.sroa.0247.0325, align 8, !tbaa !308 ; 2 uses
  %.not273 = icmp eq ptr %.sroa.0247.0, null
  br i1 %.not273, label %._crit_edge328, label %.lr.ph327

.loopexit.split-lp288.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i138, %bb.bp
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i157 = icmp eq ptr %i.km, null
  br i1 %.not.i157, label %.body110, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i158

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i158: ; preds = %.loopexit.split-lp288.loopexit.split-lp
  %i.mg = load ptr, ptr %i.km, align 8, !tbaa !244
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mi = load ptr, ptr %i.mh, align 8
  call void %i.mi(ptr noundef nonnull align 8 dereferenceable(88) %i.km) #25, !inline_history !9
  br label %.body110

.body110:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i158, %.loopexit.split-lp288.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit136, %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit108
  %.pn81.pn = phi { ptr, i32 } [ %i.gx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.pn75, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit108 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp288.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i158 ], [ %i.gx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.au ], [ %.pn77, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit136 ], [ %lpad.loopexit.split-lp616, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.mj = load ptr, ptr %11, align 8, !tbaa !411  ; 3 uses
  %.not.i160 = icmp eq ptr %i.mj, null
  br i1 %.not.i160, label %.body99, label %_ZNKSt14default_deleteIN6duckdb26BoundConjunctionExpressionEEclEPS1_.exit.i161

_ZNKSt14default_deleteIN6duckdb26BoundConjunctionExpressionEEclEPS1_.exit.i161: ; preds = %.body110
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !244
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mm = load ptr, ptr %i.ml, align 8
  call void %i.mm(ptr noundef nonnull align 8 dereferenceable(112) %i.mj) #25, !inline_history !19
  br label %.body99

.body99:                                          ; preds = %_ZNKSt14default_deleteIN6duckdb26BoundConjunctionExpressionEEclEPS1_.exit.i161, %.body110, %bb.aq, %bb.ai
  %.pn81.pn.pn = phi { ptr, i32 } [ %i.ed, %bb.ai ], [ %i.gj, %bb.aq ], [ %.pn81.pn, %.body110 ], [ %.pn81.pn, %_ZNKSt14default_deleteIN6duckdb26BoundConjunctionExpressionEEclEPS1_.exit.i161 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.body164

bb.br:                                            ; preds = %._crit_edge328
  %i.mn = getelementptr inbounds nuw i8, ptr %i.dz, i64 88
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !503
  %i.mp = getelementptr inbounds nuw i8, ptr %i.dz, i64 96
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !503
  %i.mr = icmp eq ptr %i.mo, %i.mq
  br i1 %i.mr, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  store ptr null, ptr %0, align 8, !tbaa !346
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit200

bb.bt:                                            ; preds = %bb.br
  call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  %i.ms = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #26
          to label %.noexc163 unwind label %bb.ck ; 3 uses

.noexc163:                                        ; preds = %bb.bt
  invoke void @_ZN6duckdb26BoundConjunctionExpressionC1ENS_14ExpressionTypeE(ptr noundef nonnull align 8 dereferenceable(112) %i.ms, i8 noundef zeroext 50)
          to label %bb.bv unwind label %bb.bu, !noalias !1376

bb.bu:                                            ; preds = %.noexc163
  %i.mt = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.ms) #28, !noalias !1376
  br label %.body164

bb.bv:                                            ; preds = %.noexc163
  store ptr %i.ms, ptr %0, align 8, !tbaa !326, !alias.scope !1376
  %i.mu = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.bw unwind label %bb.cl

bb.bw:                                            ; preds = %bb.bv
  %i.mv = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb14BaseExpression4CastINS_26BoundConjunctionExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.mu)
          to label %bb.bx unwind label %bb.cl     ; 3 uses

bb.bx:                                            ; preds = %bb.bw
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 88 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.mx = load ptr, ptr %i.g, align 8, !tbaa !244
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 136
  %i.mz = load ptr, ptr %i.my, align 8
  invoke void %i.mz(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.88") align 8 %14, ptr noundef nonnull align 8 dereferenceable(112) %i.g)
          to label %bb.by unwind label %bb.cm

bb.by:                                            ; preds = %bb.bx
  %i.na = getelementptr inbounds nuw i8, ptr %i.mv, i64 96 ; 9 uses
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !359 ; 6 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mv, i64 104 ; 6 uses
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !402
  %.not.i.i166 = icmp eq ptr %i.nb, %i.nd
  br i1 %.not.i.i166, label %bb.bz, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit181.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit181.thread: ; preds = %bb.by
  %i.ne = load i64, ptr %14, align 8, !tbaa !326
  store i64 %i.ne, ptr %i.nb, align 8, !tbaa !326
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  store ptr %i.nf, ptr %i.na, align 8, !tbaa !359
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit184

bb.bz:                                            ; preds = %bb.by
  %i.ng = load ptr, ptr %i.mw, align 8, !tbaa !360 ; 10 uses
  %i.nh = ptrtoint ptr %i.nb to i64               ; 2 uses
  %i.ni = ptrtoint ptr %i.ng to i64               ; 2 uses
  %i.nj = sub i64 %i.nh, %i.ni                    ; 3 uses
  %i.nk = icmp eq i64 %i.nj, 9223372036854775800
  br i1 %i.nk, label %bb.ca, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i167

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #27
          to label %.noexc179 unwind label %bb.cn

.noexc179:                                        ; preds = %bb.ca
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i167: ; preds = %bb.bz
  %i.nl = ashr exact i64 %i.nj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i168 = call i64 @llvm.umax.i64(i64 %i.nl, i64 1)
  %i.nm = add nsw i64 %.sroa.speculated.i.i.i.i168, %i.nl ; 2 uses
  %i.nn = icmp ult i64 %i.nm, %i.nl
  %i.no = call i64 @llvm.umin.i64(i64 %i.nm, i64 1152921504606846975)
  %i.np = select i1 %i.nn, i64 1152921504606846975, i64 %i.no ; 3 uses
  %.not.i.i.i.i169 = icmp ne i64 %i.np, 0
  call void @llvm.assume(i1 %.not.i.i.i.i169)
  %i.nq = shl nuw nsw i64 %i.np, 3
  %i.nr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nq) #26
          to label %.noexc180 unwind label %bb.cn ; 10 uses

.noexc180:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i167
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.nj
  %i.nt = load i64, ptr %14, align 8, !tbaa !326
  store i64 %i.nt, ptr %i.ns, align 8, !tbaa !326
  store ptr null, ptr %14, align 8, !tbaa !326
  %.not10.i.i.i.i.i.i.i170 = icmp eq ptr %i.ng, %i.nb
  br i1 %.not10.i.i.i.i.i.i.i170, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i175, label %.lr.ph.i.i.i.i.i.i.i171.preheader

.lr.ph.i.i.i.i.i.i.i171.preheader:                ; preds = %.noexc180
  %i.nu = add i64 %i.nh, -8
  %i.nv = sub i64 %i.nu, %i.ni                    ; 3 uses
  %i.nw = lshr i64 %i.nv, 3
  %i.nx = add nuw nsw i64 %i.nw, 1                ; 2 uses
  %min.iters.check558 = icmp ult i64 %i.nv, 136
  br i1 %min.iters.check558, label %.lr.ph.i.i.i.i.i.i.i171.preheader609, label %vector.memcheck559

vector.memcheck559:                               ; preds = %.lr.ph.i.i.i.i.i.i.i171.preheader
  %i.ny = and i64 %i.nv, -8
  %i.nz = add i64 %i.ny, 8                        ; 2 uses
  %i.oa = getelementptr i8, ptr %i.nr, i64 %i.nz
  %i.ob = getelementptr i8, ptr %i.ng, i64 %i.nz
  %bound0560 = icmp ult ptr %i.nr, %i.ob
  %bound1561 = icmp ult ptr %i.ng, %i.oa
  %found.conflict562 = and i1 %bound0560, %bound1561
  br i1 %found.conflict562, label %.lr.ph.i.i.i.i.i.i.i171.preheader609, label %vector.ph563

vector.ph563:                                     ; preds = %vector.memcheck559
  %n.vec564 = and i64 %i.nx, 4611686018427387900  ; 3 uses
  %i.oc = shl i64 %n.vec564, 3                    ; 2 uses
  %i.od = getelementptr i8, ptr %i.nr, i64 %i.oc  ; 2 uses
  %i.oe = getelementptr i8, ptr %i.ng, i64 %i.oc
  br label %vector.body565

vector.body565:                                   ; preds = %vector.body565, %vector.ph563
  %index566 = phi i64 [ 0, %vector.ph563 ], [ %index.next571, %vector.body565 ] ; 2 uses
  %i.of = shl i64 %index566, 3                    ; 2 uses
  %next.gep567 = getelementptr i8, ptr %i.nr, i64 %i.of ; 2 uses
  %next.gep568 = getelementptr i8, ptr %i.ng, i64 %i.of ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1377)
  call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  %i.og = getelementptr i8, ptr %next.gep568, i64 16
  %wide.load569 = load <2 x i64>, ptr %next.gep568, align 8, !tbaa !326, !alias.scope !1379
  %wide.load570 = load <2 x i64>, ptr %i.og, align 8, !tbaa !326, !alias.scope !1379
  %i.oh = getelementptr i8, ptr %next.gep567, i64 16
  store <2 x i64> %wide.load569, ptr %next.gep567, align 8, !tbaa !326, !alias.scope !1380, !noalias !1381
  store <2 x i64> %wide.load570, ptr %i.oh, align 8, !tbaa !326, !alias.scope !1380, !noalias !1381
  %i.oi = getelementptr i8, ptr %next.gep568, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep568, align 8, !tbaa !326, !alias.scope !1379
  store <2 x ptr> splat (ptr null), ptr %i.oi, align 8, !tbaa !326, !alias.scope !1379
  %index.next571 = add nuw i64 %index566, 4       ; 2 uses
  %i.oj = icmp eq i64 %index.next571, %n.vec564
  br i1 %i.oj, label %middle.block572, label %vector.body565, !llvm.loop !1344

middle.block572:                                  ; preds = %vector.body565
  %cmp.n573 = icmp eq i64 %i.nx, %n.vec564
  br i1 %cmp.n573, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i175, label %.lr.ph.i.i.i.i.i.i.i171.preheader609

.lr.ph.i.i.i.i.i.i.i171.preheader609:             ; preds = %vector.memcheck559, %.lr.ph.i.i.i.i.i.i.i171.preheader, %middle.block572
  %.012.i.i.i.i.i.i.i172.ph = phi ptr [ %i.nr, %vector.memcheck559 ], [ %i.nr, %.lr.ph.i.i.i.i.i.i.i171.preheader ], [ %i.od, %middle.block572 ]
  %.0911.i.i.i.i.i.i.i173.ph = phi ptr [ %i.ng, %vector.memcheck559 ], [ %i.ng, %.lr.ph.i.i.i.i.i.i.i171.preheader ], [ %i.oe, %middle.block572 ]
  br label %.lr.ph.i.i.i.i.i.i.i171

.lr.ph.i.i.i.i.i.i.i171:                          ; preds = %.lr.ph.i.i.i.i.i.i.i171.preheader609, %.lr.ph.i.i.i.i.i.i.i171
  %.012.i.i.i.i.i.i.i172 = phi ptr [ %i.om, %.lr.ph.i.i.i.i.i.i.i171 ], [ %.012.i.i.i.i.i.i.i172.ph, %.lr.ph.i.i.i.i.i.i.i171.preheader609 ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb21RegexOptimizationRule5ApplyERNS_15LogicalOperatorERNS_6vectorISt17reference_wrapperINS_10ExpressionEELb1ESaIS6_EEERbb:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i64 %i.al, ptr %i.am, align 8, !tbaa !297
  %i.an = load ptr, ptr %13, align 8, !tbaa !319
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %i.ap = load ptr, ptr %i.m, align 8, !tbaa !244
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 120
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = invoke noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(88) %i.m)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  br i1 %i.as, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr null, ptr %0, align 8, !tbaa !346
  br label %bb.cj

bb.u:                                             ; preds = %.noexc.i, %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

bb.v:                                             ; preds = %bb.r
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.w:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.av = load ptr, ptr %13, align 8, !tbaa !319
  store ptr %i.av, ptr %15, align 8, !tbaa !1771
  %i.aw = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ax = load i64, ptr %i.am, align 8, !tbaa !297
  store i64 %i.ax, ptr %i.aw, align 8, !tbaa !1772
  invoke void @_ZN10duckdb_re23RE2C1ERKNS_11StringPieceERKNS0_7OptionsE(ptr noundef nonnull align 8 dereferenceable(148) %14, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(23) %10)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.ay = getelementptr inbounds nuw i8, ptr %14, i64 68
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = and i32 %i.az, 536870911
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr null, ptr %0, align 8, !tbaa !346
  br label %bb.ch

bb.z:                                             ; preds = %bb.w
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.ci

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  store i8 1, ptr %16, align 8, !tbaa !602
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 1
  store i8 0, ptr %i.bd, align 1, !tbaa !603
  %i.be = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 9 uses
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !293
  %i.bg = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  store i64 0, ptr %i.bg, align 8, !tbaa !297
  store i8 0, ptr %i.bf, align 8, !tbaa !294
  %i.bh = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1780 ; 6 uses
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !608
  switch i8 %i.bj, label %.thread [
    i8 4, label %bb.ab
    i8 3, label %bb.ab
    i8 5, label %bb.bl
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !1781)
  store i8 1, ptr %17, align 8, !tbaa !602, !alias.scope !1781
  %i.bk = getelementptr inbounds nuw i8, ptr %17, i64 1
  store i8 0, ptr %i.bk, align 1, !tbaa !603, !alias.scope !1781
  %i.bl = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 14 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 14 uses
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !293, !alias.scope !1781
  %i.bn = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 8 uses
  store i64 0, ptr %i.bn, align 8, !tbaa !297, !alias.scope !1781
  store i8 0, ptr %i.bm, align 8, !tbaa !294, !alias.scope !1781
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !609, !noalias !1781
  %i.bq = and i16 %i.bp, 17
  %or.cond.not.i = icmp eq i16 %i.bq, 16
  br i1 %or.cond.not.i, label %bb.ac, label %_ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit.thread223

_ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit.thread223: ; preds = %bb.ab
  store i8 0, ptr %17, align 8, !tbaa !602, !alias.scope !1781
  br label %bb.an

bb.ac:                                            ; preds = %bb.ab
  %i.br = load i8, ptr %i.bi, align 8, !tbaa !608, !noalias !1781
  %i.bs = icmp eq i8 %i.br, 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !294, !noalias !1781 ; 3 uses
  br i1 %i.bs, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !294, !noalias !1781
  %.not.i62 = icmp eq i32 %i.bu, 0
  br i1 %.not.i62, label %_ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ad, %.loopexit
  %.025.i = phi i64 [ %i.cz, %.loopexit ], [ 0, %bb.ad ] ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.025.i
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.ca = invoke noundef zeroext i1 @_ZN6duckdb8Utf8Proc15CodepointToUtf8EiRiPc(i32 noundef %i.bz, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull %i.b)
          to label %.noexc157 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc157:                                        ; preds = %.lr.ph.i
  br i1 %i.ca, label %.preheader.i144, label %bb.ah

.preheader.i144:                                  ; preds = %.noexc157
  %i.cb = load i32, ptr %i.a, align 4, !tbaa !49  ; 2 uses
  %.not.i145 = icmp eq i32 %i.cb, 0
  br i1 %.not.i145, label %.loopexit, label %.lr.ph.split.us.i147

.lr.ph.split.us.i147:                             ; preds = %.preheader.i144, %_ZN6duckdbL12AddCharacterEcRNS_10LikeStringEb.exit.us.i150
  %i.cc = phi i32 [ %i.ct, %_ZN6duckdbL12AddCharacterEcRNS_10LikeStringEb.exit.us.i150 ], [ %i.cb, %.preheader.i144 ]
  %.06.us.i148 = phi i64 [ %i.cu, %_ZN6duckdbL12AddCharacterEcRNS_10LikeStringEb.exit.us.i150 ], [ 0, %.preheader.i144 ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 %.06.us.i148
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !294 ; 2 uses
  %i.cf = zext i8 %i.ce to i32
  %i.cg = call i32 @iscntrl(i32 noundef %i.cf) #30
  %.not.i.us.i149 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.us.i149, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.split.us.i147
  %i.ch = load i64, ptr %i.bn, align 8, !tbaa !297 ; 4 uses
  %i.ci = add i64 %i.ch, 1                        ; 3 uses
  %i.cj = load ptr, ptr %i.bl, align 8, !tbaa !319 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.bm
  br i1 %i.ck, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.us.i156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.us.i151

bb.af:                                            ; preds = %.lr.ph.split.us.i147
  store i8 0, ptr %17, align 8, !tbaa !602
  br label %_ZN6duckdbL12AddCharacterEcRNS_10LikeStringEb.exit.us.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.us.i151: ; preds = %bb.ae
  %i.cl = load i64, ptr %i.bm, align 8, !tbaa !294
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.us.i156: ; preds = %bb.ae
  %i.cm = icmp ult i64 %i.ch, 16
  call void @llvm.assume(i1 %i.cm)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us.i152: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.us.i156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.us.i151
  %i.cn = phi i64 [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.us.i151 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.us.i156 ]
  %i.co = icmp ugt i64 %i.ci, %i.cn
  br i1 %i.co, label %bb.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.us.i153

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us.i152
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i64 noundef %i.ch, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc158 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc158:                                        ; preds = %bb.ag
  %.pre.i.i.i.us.i155 = load ptr, ptr %i.bl, align 8, !tbaa !319
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.us.i153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.us.i153: ; preds = %.noexc158, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us.i152
  %i.cp = phi ptr [ %.pre.i.i.i.us.i155, %.noexc158 ], [ %i.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us.i152 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ch
  store i8 %i.ce, ptr %i.cq, align 1, !tbaa !294
  store i64 %i.ci, ptr %i.bn, align 8, !tbaa !297
  %i.cr = load ptr, ptr %i.bl, align 8, !tbaa !319
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.ci
  store i8 0, ptr %i.cs, align 1, !tbaa !294
  %.pre8.i154 = load i32, ptr %i.a, align 4, !tbaa !49
  br label %_ZN6duckdbL12AddCharacterEcRNS_10LikeStringEb.exit.us.i150

_ZN6duckdbL12AddCharacterEcRNS_10LikeStringEb.exit.us.i150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.us.i153, %bb.af
  %i.ct = phi i32 [ %.pre8.i154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.us.i153 ], [ %i.cc, %bb.af ] ; 2 uses
  %i.cu = add nuw nsw i64 %.06.us.i148, 1         ; 2 uses
  %i.cv = sext i32 %i.ct to i64
  %i.cw = icmp ult i64 %i.cu, %i.cv
  br i1 %i.cw, label %.lr.ph.split.us.i147, label %.loopexit, !llvm.loop !37

bb.ah:                                            ; preds = %.noexc157
  store i8 0, ptr %17, align 8, !tbaa !602
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN6duckdbL12AddCharacterEcRNS_10LikeStringEb.exit.us.i150, %bb.ah, %.preheader.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.cx = load i8, ptr %17, align 8, !tbaa !602, !range !343, !alias.scope !1781, !noundef !344 ; 2 uses
  %i.cy = trunc nuw i8 %i.cx to i1
  %i.cz = add nuw i64 %.025.i, 1                  ; 2 uses
  %exitcond.not.i = icmp ne i64 %i.cz, %i.bv
  %or.cond.not30.i = select i1 %i.cy, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not30.i, label %.lr.ph.i, label %_ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit, !llvm.loop !38

bb.ai:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i32 0, ptr %i.c, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.da = invoke noundef zeroext i1 @_ZN6duckdb8Utf8Proc15CodepointToUtf8EiRiPc(i32 noundef %i.bu, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull %i.d)
          to label %.noexc142 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc142:                                        ; preds = %bb.ai
  br i1 %i.da, label %.preheader.i, label %bb.am

.preheader.i:                                     ; preds = %.noexc142
  %i.db = load i32, ptr %i.c, align 4, !tbaa !49  ; 2 uses
  %.not.i140 = icmp eq i32 %i.db, 0
  br i1 %.not.i140, label %_ZN6duckdbL12AddCodepointEiRNS_10LikeStringEb.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.preheader.i, %_ZN6duckdbL12AddCharacterEcRNS_10LikeStringEb.exit.us.i
  %i.dc = phi i32 [ %i.dt, %_ZN6duckdbL12AddCharacterEcRNS_10LikeStringEb.exit.us.i ], [ %i.db, %.preheader.i ]
  %.06.us.i = phi i64 [ %i.du, %_ZN6duckdbL12AddCharacterEcRNS_10LikeStringEb.exit.us.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.d, i64 %.06.us.i
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !294 ; 2 uses
  %i.df = zext i8 %i.de to i32
  %i.dg = call i32 @iscntrl(i32 noundef %i.df) #30
  %.not.i.us.i = icmp eq i32 %i.dg, 0
  br i1 %.not.i.us.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph.split.us.i
  %i.dh = load i64, ptr %i.bn, align 8, !tbaa !297 ; 4 uses
  %i.di = add i64 %i.dh, 1                        ; 3 uses
  %i.dj = load ptr, ptr %i.bl, align 8, !tbaa !319 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.bm
  br i1 %i.dk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.us.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.us.i

bb.ak:                                            ; preds = %.lr.ph.split.us.i
  store i8 0, ptr %17, align 8, !tbaa !602
  br label %_ZN6duckdbL12AddCharacterEcRNS_10LikeStringEb.exit.us.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.us.i: ; preds = %bb.aj
  %i.dl = load i64, ptr %i.bm, align 8, !tbaa !294
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.us.i: ; preds = %bb.aj
  %i.dm = icmp ult i64 %i.dh, 16
  call void @llvm.assume(i1 %i.dm)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.us.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.us.i
  %i.dn = phi i64 [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.us.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.us.i ]
  %i.do = icmp ugt i64 %i.di, %i.dn
  br i1 %i.do, label %bb.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.us.i

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i64 noundef %i.dh, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc143 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc143:                                        ; preds = %bb.al
  %.pre.i.i.i.us.i = load ptr, ptr %i.bl, align 8, !tbaa !319
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.us.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.us.i: ; preds = %.noexc143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us.i
  %i.dp = phi ptr [ %.pre.i.i.i.us.i, %.noexc143 ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.us.i ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dh
  store i8 %i.de, ptr %i.dq, align 1, !tbaa !294
  store i64 %i.di, ptr %i.bn, align 8, !tbaa !297
  %i.dr = load ptr, ptr %i.bl, align 8, !tbaa !319
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.di
  store i8 0, ptr %i.ds, align 1, !tbaa !294
  %.pre8.i = load i32, ptr %i.c, align 4, !tbaa !49
  br label %_ZN6duckdbL12AddCharacterEcRNS_10LikeStringEb.exit.us.i

_ZN6duckdbL12AddCharacterEcRNS_10LikeStringEb.exit.us.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.us.i, %bb.ak
  %i.dt = phi i32 [ %.pre8.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.us.i ], [ %i.dc, %bb.ak ] ; 2 uses
  %i.du = add nuw nsw i64 %.06.us.i, 1            ; 2 uses
  %i.dv = sext i32 %i.dt to i64
  %i.dw = icmp ult i64 %i.du, %i.dv
  br i1 %i.dw, label %.lr.ph.split.us.i, label %_ZN6duckdbL12AddCodepointEiRNS_10LikeStringEb.exit, !llvm.loop !37

bb.am:                                            ; preds = %.noexc142
  store i8 0, ptr %17, align 8, !tbaa !602
  br label %_ZN6duckdbL12AddCodepointEiRNS_10LikeStringEb.exit

_ZN6duckdbL12AddCodepointEiRNS_10LikeStringEb.exit: ; preds = %_ZN6duckdbL12AddCharacterEcRNS_10LikeStringEb.exit.us.i, %.preheader.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %.pre.a = load i8, ptr %17, align 8, !tbaa !602, !range !343
  br label %_ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i, %bb.ag, %bb.al, %bb.ai
  %lpad.loopexit.split-lp233 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = load ptr, ptr %i.bl, align 8, !tbaa !319, !alias.scope !1781 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.bm
  br i1 %i.dy, label %.body63, label %.body63.sink.split

_ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit: ; preds = %.loopexit, %_ZN6duckdbL12AddCodepointEiRNS_10LikeStringEb.exit
  %i.dz = phi i8 [ %.pre.a, %_ZN6duckdbL12AddCodepointEiRNS_10LikeStringEb.exit ], [ %i.cx, %.loopexit ]
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %_ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit.thread, label %bb.an

bb.an:                                            ; preds = %_ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit.thread223, %_ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit
  store ptr null, ptr %0, align 8, !tbaa !346
  br label %bb.bk

_ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit.thread: ; preds = %bb.ad, %_ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %i.j, i64 448 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.j, i64 456 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !359 ; 2 uses
  %i.ee = load ptr, ptr %i.eb, align 8, !tbaa !360
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = icmp eq i64 %i.eh, 24
  br i1 %i.ei, label %bb.ao, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE8pop_backEv.exit

bb.ao:                                            ; preds = %_ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit.thread
  %i.ej = getelementptr inbounds i8, ptr %i.ed, i64 -8 ; 2 uses
  store ptr %i.ej, ptr %i.ec, align 8, !tbaa !359
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !326 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ek, null
  br i1 %.not.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE8pop_backEv.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i: ; preds = %bb.ao
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !244
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(88) %i.ek) #25, !inline_history !1765
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE8pop_backEv.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE8pop_backEv.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i, %bb.ao, %_ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  %i.eo = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 5 uses
  store ptr %i.eo, ptr %19, align 8, !tbaa !293
  %i.ep = load ptr, ptr %i.bl, align 8, !tbaa !319 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.bm
  br i1 %i.eq, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.ap:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE8pop_backEv.exit
  %i.er = load i64, ptr %i.bn, align 8, !tbaa !297 ; 3 uses
  %i.es = icmp ult i64 %i.er, 16
  call void @llvm.assume(i1 %i.es)
  %i.et = add nuw nsw i64 %i.er, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eo, ptr noundef nonnull align 8 dereferenceable(1) %i.bm, i64 %i.et, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE8pop_backEv.exit
  store ptr %i.ep, ptr %19, align 8, !tbaa !319
  %i.eu = load i64, ptr %i.bm, align 8, !tbaa !294
  store i64 %i.eu, ptr %i.eo, align 8, !tbaa !294
  %.pre186 = load i64, ptr %i.bn, align 8, !tbaa !297
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ev = phi i64 [ %i.er, %bb.ap ], [ %.pre186, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ew = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %i.ev, ptr %i.ew, align 8, !tbaa !297
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !319
  store i64 0, ptr %i.bn, align 8, !tbaa !297
  store i8 0, ptr %i.bm, align 8, !tbaa !294
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %18, ptr noundef nonnull %19)
          to label %bb.aq unwind label %bb.bf

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ex = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #26
          to label %.noexc65 unwind label %bb.bg  ; 7 uses

.noexc65:                                         ; preds = %bb.aq
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %18) #25, !noalias !1782
  invoke void @_ZN6duckdb23BoundConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(152) %i.ex, ptr noundef nonnull %6)
          to label %bb.as unwind label %bb.ar, !noalias !1782

bb.ar:                                            ; preds = %.noexc65
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #25, !noalias !1782
  call void @_ZdlPv(ptr noundef nonnull %i.ex) #28, !noalias !1782
  br label %.body66

bb.as:                                            ; preds = %.noexc65
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #25, !noalias !1782
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %18) #25
  %i.ez = load ptr, ptr %19, align 8, !tbaa !319  ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.eo
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.as
  call void @_ZdlPv(ptr noundef %i.ez) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  invoke void @_ZN6duckdb17GetStringContainsEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::ScalarFunction") align 8 %21)
          to label %bb.at unwind label %bb.bi

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store ptr null, ptr %i.f, align 8, !tbaa !560
  invoke void @_ZN6duckdb9make_uniqINS_23BoundFunctionExpressionEJRNS_11LogicalTypeENS_14ScalarFunctionENS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEEDnEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.496") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %i.fb, ptr noundef nonnull align 8 dereferenceable(360) %21, ptr noundef nonnull align 8 dereferenceable(24) %i.eb, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.au unwind label %bb.bj

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14ScalarFunctionE, i64 16), ptr %21, align 8, !tbaa !244
  %i.fc = getelementptr inbounds nuw i8, ptr %21, i64 352
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !552 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 4 uses
  %i.ff = load atomic i64, ptr %i.fe acquire, align 8 ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 4294967297
  %i.fh = trunc i64 %i.ff to i32                  ; 2 uses
  br i1 %i.fg, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.fe, align 8, !tbaa !554
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  store i32 0, ptr %i.fi, align 4, !tbaa !555
  %i.fj = load ptr, ptr %i.fd, align 8, !tbaa !244
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(16) %i.fd) #25, !inline_history !31
  %i.fm = load ptr, ptr %i.fd, align 8, !tbaa !244
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(16) %i.fd) #25, !inline_history !31
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.fp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !294
  %.not.i.i.i.i.i = icmp eq i8 %i.fp, 0
  br i1 %.not.i.i.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fq = add nsw i32 %i.fh, -1
  store i32 %i.fq, ptr %i.fe, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.az:                                            ; preds = %bb.ax
  %i.fr = atomicrmw volatile add ptr %i.fe, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.i.i = phi i32 [ %i.fh, %bb.ay ], [ %i.fr, %bb.az ]
  %i.fs = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.fs, label %bb.ba, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i, !prof !321

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fd) #25, !inline_history !556
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i

_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i: ; preds = %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.aw, %bb.au
  %i.ft = getelementptr inbounds nuw i8, ptr %21, i64 256
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !558 ; 2 uses
  %.not.i.i69 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i69, label %_ZN6duckdb14ScalarFunctionD2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i
  %i.fv = getelementptr inbounds nuw i8, ptr %21, i64 240 ; 2 uses
  %i.fw = invoke noundef zeroext i1 %i.fu(ptr noundef nonnull align 8 dereferenceable(32) %i.fv, ptr noundef nonnull align 8 dereferenceable(32) %i.fv, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunctionD2Ev.exit unwind label %bb.bc, !inline_history !556 ; 0 uses

bb.bc:                                            ; preds = %bb.bb
  %i.fx = landingpad { ptr, i32 }
          catch ptr null
  %i.fy = extractvalue { ptr, i32 } %i.fx, 0
  call void @__clang_call_terminate(ptr %i.fy) #29, !inline_history !556
  unreachable

_ZN6duckdb14ScalarFunctionD2Ev.exit:              ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i, %bb.bb
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %21) #25, !inline_history !556
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  %i.fz = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_23BoundFunctionExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bd unwind label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit81

bb.bd:                                            ; preds = %_ZN6duckdb14ScalarFunctionD2Ev.exit
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 448
  %i.gb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ga, i64 noundef 1)
          to label %bb.be unwind label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit81 ; 2 uses

bb.be:                                            ; preds = %bb.bd
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !326 ; 3 uses
  store ptr %i.ex, ptr %i.gb, align 8, !tbaa !326
  %.not.i.i.i.i.i70 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i.i70, label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit75, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.be
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !244
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dereferenceable(88) %i.gc) #25, !inline_history !10
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit75

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit75: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i, %bb.be
  %i.gg = load ptr, ptr %20, align 8, !tbaa !562
  store ptr %i.gg, ptr %0, align 8, !tbaa !346
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %bb.bk

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bg:                                            ; preds = %bb.aq
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %.body66

.body66:                                          ; preds = %bb.ar, %bb.bg
  %eh.lpad-body67 = phi { ptr, i32 } [ %i.gi, %bb.bg ], [ %i.ey, %bb.ar ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %18) #25
  br label %bb.bh

bb.bh:                                            ; preds = %.body66, %bb.bf
  %.pn42 = phi { ptr, i32 } [ %eh.lpad-body67, %.body66 ], [ %i.gh, %bb.bf ]
  %i.gj = load ptr, ptr %19, align 8, !tbaa !319  ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.eo
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %bb.bh
  call void @_ZdlPv(ptr noundef %i.gj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit87

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6duckdb23BoundConstantExpressionEEclEPS1_.exit.i86

bb.bj:                                            ; preds = %bb.at
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %21) #25
  br label %_ZNKSt14default_deleteIN6duckdb23BoundConstantExpressionEEclEPS1_.exit.i86

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit81: ; preds = %bb.bd, %_ZN6duckdb14ScalarFunctionD2Ev.exit
  %i.gn = landingpad { ptr, i32 }
          cleanup
  %i.go = load ptr, ptr %i.ex, align 8, !tbaa !244
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(88) %i.ex) #25, !inline_history !9
  %i.gr = load ptr, ptr %20, align 8, !tbaa !562  ; 3 uses
  %.not.i82 = icmp eq ptr %i.gr, null
  br i1 %.not.i82, label %_ZNSt10unique_ptrIN6duckdb23BoundFunctionExpressionESt14default_deleteIS1_EED2Ev.exit84.thread, label %_ZNKSt14default_deleteIN6duckdb23BoundFunctionExpressionEEclEPS1_.exit.i83

_ZNKSt14default_deleteIN6duckdb23BoundFunctionExpressionEEclEPS1_.exit.i83: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit81
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !244
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8
  call void %i.gu(ptr noundef nonnull align 8 dereferenceable(481) %i.gr) #25, !inline_history !32
  br label %_ZNSt10unique_ptrIN6duckdb23BoundFunctionExpressionESt14default_deleteIS1_EED2Ev.exit84.thread

_ZNSt10unique_ptrIN6duckdb23BoundFunctionExpressionESt14default_deleteIS1_EED2Ev.exit84.thread: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit81, %_ZNKSt14default_deleteIN6duckdb23BoundFunctionExpressionEEclEPS1_.exit.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit87

_ZNKSt14default_deleteIN6duckdb23BoundConstantExpressionEEclEPS1_.exit.i86: ; preds = %bb.bj, %bb.bi
  %.pn44 = phi { ptr, i32 } [ %i.gm, %bb.bj ], [ %i.gl, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  %i.gv = load ptr, ptr %i.ex, align 8, !tbaa !244
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(152) %i.ex) #25, !inline_history !20
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit87

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit87: ; preds = %_ZNKSt14default_deleteIN6duckdb23BoundConstantExpressionEEclEPS1_.exit.i86, %_ZNSt10unique_ptrIN6duckdb23BoundFunctionExpressionESt14default_deleteIS1_EED2Ev.exit84.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %.pn46.pn = phi { ptr, i32 } [ %.pn42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ], [ %i.gn, %_ZNSt10unique_ptrIN6duckdb23BoundFunctionExpressionESt14default_deleteIS1_EED2Ev.exit84.thread ], [ %.pn44, %_ZNKSt14default_deleteIN6duckdb23BoundConstantExpressionEEclEPS1_.exit.i86 ] ; 2 uses
  %i.gy = load ptr, ptr %i.bl, align 8, !tbaa !319 ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.bm
  br i1 %i.gz, label %.body63, label %.body63.sink.split

bb.bk:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit75, %bb.an
  %i.ha = load ptr, ptr %i.bl, align 8, !tbaa !319 ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.bm
  br i1 %i.hb, label %_ZN6duckdb10LikeStringD2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88: ; preds = %bb.bk
  call void @_ZdlPv(ptr noundef %i.ha) #28
  br label %_ZN6duckdb10LikeStringD2Ev.exit90

_ZN6duckdb10LikeStringD2Ev.exit90:                ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %bb.cf

.body63.sink.split:                               ; preds = %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit87, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.sink = phi ptr [ %i.dx, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.gy, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit87 ]
  %.pn46.pn.pn.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp233, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn46.pn, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit87 ]
  call void @_ZdlPv(ptr noundef %.sink) #28
  br label %.body63

.body63:                                          ; preds = %.body63.sink.split, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit87, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn46.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp233, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn46.pn, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit87 ], [ %.pn46.pn.pn.ph, %.body63.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %bb.cg

bb.bl:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  invoke fastcc void @_ZN6duckdbL18LikeMatchFromRegexERN10duckdb_re23RE2E(ptr dead_on_unwind noalias writable align 8 %22, ptr nonnull %i.bi)
          to label %bb.bm unwind label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.hc = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6duckdb10LikeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 8 dereferenceable(40) %22) #25 ; 0 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !319 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91: ; preds = %bb.bm
  call void @_ZdlPv(ptr noundef %i.he) #28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i92

bb.bn:                                            ; preds = %bb.bl
  %i.hh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br label %bb.cg

.thread:                                          ; preds = %bb.aa
  store i8 0, ptr %16, align 8, !tbaa !602
  br label %bb.bo

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i92: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  %.pre187 = load i8, ptr %16, align 8, !tbaa !602, !range !343
  %i.hi = trunc nuw i8 %.pre187 to i1
  br i1 %i.hi, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i92
  store ptr null, ptr %0, align 8, !tbaa !346
  br label %bb.cf

bb.bp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i92
  %i.hj = getelementptr inbounds nuw i8, ptr %i.j, i64 448 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.j, i64 456 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !359 ; 2 uses
  %i.hm = load ptr, ptr %i.hj, align 8, !tbaa !360
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = icmp eq i64 %i.hp, 24
  br i1 %i.hq, label %bb.bq, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE8pop_backEv.exit96

bb.bq:                                            ; preds = %bb.bp
  %i.hr = getelementptr inbounds i8, ptr %i.hl, i64 -8 ; 2 uses
  store ptr %i.hr, ptr %i.hk, align 8, !tbaa !359
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !326 ; 3 uses
  %.not.i.i94 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i94, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE8pop_backEv.exit96, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i95

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i95: ; preds = %bb.bq
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !244
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8
  call void %i.hv(ptr noundef nonnull align 8 dereferenceable(88) %i.hs) #25, !inline_history !1765
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE8pop_backEv.exit96

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE8pop_backEv.exit96: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i95, %bb.bq, %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  invoke void @_ZN6duckdb7LikeFun11GetFunctionEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::ScalarFunction") align 8 %24)
          to label %bb.br unwind label %bb.by

bb.br:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE8pop_backEv.exit96
  %i.hw = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  store ptr null, ptr %i.g, align 8, !tbaa !560
  invoke void @_ZN6duckdb9make_uniqINS_23BoundFunctionExpressionEJRNS_11LogicalTypeENS_14ScalarFunctionENS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEEDnEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.496") align 8 %23, ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr noundef nonnull align 8 dereferenceable(360) %24, ptr noundef nonnull align 8 dereferenceable(24) %i.hj, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.bs unwind label %bb.bz

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %24) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  %i.hx = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 5 uses
  store ptr %i.hx, ptr %27, align 8, !tbaa !293
  %i.hy = load ptr, ptr %i.be, align 8, !tbaa !319 ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.bf
  br i1 %i.hz, label %bb.bt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i97

bb.bt:                                            ; preds = %bb.bs
  %i.ia = load i64, ptr %i.bg, align 8, !tbaa !297 ; 3 uses
  %i.ib = icmp ult i64 %i.ia, 16
  call void @llvm.assume(i1 %i.ib)
  %i.ic = add nuw nsw i64 %i.ia, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hx, ptr noundef nonnull align 8 dereferenceable(1) %i.bf, i64 %i.ic, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i97: ; preds = %bb.bs
  store ptr %i.hy, ptr %27, align 8, !tbaa !319
  %i.id = load i64, ptr %i.bf, align 8, !tbaa !294
  store i64 %i.id, ptr %i.hx, align 8, !tbaa !294
  %.pre188 = load i64, ptr %i.bg, align 8, !tbaa !297
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit98: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i97
  %i.ie = phi i64 [ %i.ia, %bb.bt ], [ %.pre188, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i97 ]
  %i.if = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 %i.ie, ptr %i.if, align 8, !tbaa !297
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !319
  store i64 0, ptr %i.bg, align 8, !tbaa !297
  store i8 0, ptr %i.bf, align 8, !tbaa !294
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %26, ptr noundef nonnull %27)
          to label %bb.bu unwind label %bb.cb

bb.bu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit98
  invoke void @_ZN6duckdb9make_uniqINS_23BoundConstantExpressionEJNS_5ValueEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.141") align 8 %25, ptr noundef nonnull align 8 dereferenceable(64) %26)
          to label %bb.bv unwind label %bb.cc

bb.bv:                                            ; preds = %bb.bu
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %26) #25
  %i.ig = load ptr, ptr %27, align 8, !tbaa !319  ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.hx
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %bb.bv
  call void @_ZdlPv(ptr noundef %i.ig) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  %i.ii = load ptr, ptr %25, align 8, !tbaa !348  ; 4 uses
  store ptr null, ptr %25, align 8, !tbaa !348
  %i.ij = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_23BoundFunctionExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.bw unwind label %bb.ce

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 448
  %i.il = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ik, i64 noundef 1)
          to label %bb.bx unwind label %bb.ce     ; 2 uses

bb.bx:                                            ; preds = %bb.bw
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !326 ; 3 uses
  store ptr %i.ii, ptr %i.il, align 8, !tbaa !326
  %.not.i.i.i.i.i102 = icmp eq ptr %i.im, null
  br i1 %.not.i.i.i.i.i102, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit107, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i103

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i103: ; preds = %bb.bx
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !244
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.ip = load ptr, ptr %i.io, align 8
  call void %i.ip(ptr noundef nonnull align 8 dereferenceable(88) %i.im) #25, !inline_history !10
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit107

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit107: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i103, %bb.bx
  %i.iq = load ptr, ptr %23, align 8, !tbaa !562
  store ptr null, ptr %23, align 8, !tbaa !562
  store ptr %i.iq, ptr %0, align 8, !tbaa !346
  %i.ir = load ptr, ptr %25, align 8, !tbaa !348  ; 3 uses
  %.not.i108 = icmp eq ptr %i.ir, null
  br i1 %.not.i108, label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit110.thread, label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit110

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit110.thread: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit107
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  br label %_ZNSt10unique_ptrIN6duckdb23BoundFunctionExpressionESt14default_deleteIS1_EED2Ev.exit113

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit110: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit107
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !244
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = load ptr, ptr %i.it, align 8
  call void %i.iu(ptr noundef nonnull align 8 dereferenceable(152) %i.ir) #25, !inline_history !20
  %.pr = load ptr, ptr %23, align 8, !tbaa !562   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  %.not.i111 = icmp eq ptr %.pr, null
  br i1 %.not.i111, label %_ZNSt10unique_ptrIN6duckdb23BoundFunctionExpressionESt14default_deleteIS1_EED2Ev.exit113, label %_ZNKSt14default_deleteIN6duckdb23BoundFunctionExpressionEEclEPS1_.exit.i112

_ZNKSt14default_deleteIN6duckdb23BoundFunctionExpressionEEclEPS1_.exit.i112: ; preds = %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit110
  %i.iv = load ptr, ptr %.pr, align 8, !tbaa !244
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8
  call void %i.ix(ptr noundef nonnull align 8 dereferenceable(481) %.pr) #25, !inline_history !32
  br label %_ZNSt10unique_ptrIN6duckdb23BoundFunctionExpressionESt14default_deleteIS1_EED2Ev.exit113

_ZNSt10unique_ptrIN6duckdb23BoundFunctionExpressionESt14default_deleteIS1_EED2Ev.exit113: ; preds = %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit110.thread, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit110, %_ZNKSt14default_deleteIN6duckdb23BoundFunctionExpressionEEclEPS1_.exit.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  br label %bb.cf

bb.by:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE8pop_backEv.exit96
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bz:                                            ; preds = %bb.br
  %i.iz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %24) #25
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.pn = phi { ptr, i32 } [ %i.iz, %bb.bz ], [ %i.iy, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br label %_ZNSt10unique_ptrIN6duckdb23BoundFunctionExpressionESt14default_deleteIS1_EED2Ev.exit125

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit98
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bu
  %i.jb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %26) #25
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn37 = phi { ptr, i32 } [ %i.jb, %bb.cc ], [ %i.ja, %bb.cb ]
  %i.jc = load ptr, ptr %27, align 8, !tbaa !319  ; 2 uses
  %i.jd = icmp eq ptr %i.jc, %i.hx
  br i1 %i.jd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %bb.cd
  call void @_ZdlPv(ptr noundef %i.jc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit122

bb.ce:                                            ; preds = %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %i.je = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i117 = icmp eq ptr %i.ii, null
end_hunk_1
begin_hunk_2_@_ZN6duckdb21RegexpMatchesBindDataC2ERKS0_
define linkonce_odr void @_ZN6duckdb21RegexpMatchesBindDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(137) %0, ptr noundef nonnull align 8 dereferenceable(137) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1783 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb18RegexpBaseBindDataE, i64 16), ptr %0, align 8, !tbaa !244
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !600
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !293
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !319  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !297  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i64 %i.k, ptr %i.c, align 8, !tbaa !311
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc.i unwind label %bb.d   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.m, ptr %i.f, align 8, !tbaa !319
  %i.n = load i64, ptr %i.c, align 8, !tbaa !311
  store i64 %i.n, ptr %i.h, align 8, !tbaa !294
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %bb.a
  %i.o = phi ptr [ %i.m, %.noexc.i ], [ %i.h, %bb.a ] ; 2 uses
  switch i64 %i.k, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN6duckdb18RegexpBaseBindDataC2ERKS0_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !294
  store i8 %i.p, ptr %i.o, align 1, !tbaa !294
  br label %_ZN6duckdb18RegexpBaseBindDataC2ERKS0_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZN6duckdb18RegexpBaseBindDataC2ERKS0_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.d ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(65) %0) #25
  br label %common.resume

_ZN6duckdb18RegexpBaseBindDataC2ERKS0_.exit:      ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.r = load i64, ptr %i.c, align 8, !tbaa !311  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.r, ptr %i.s, align 8, !tbaa !297
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !319
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i8, ptr %i.w, align 8, !tbaa !1786, !range !343, !noundef !344
  store i8 %i.x, ptr %i.v, align 8, !tbaa !1786
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb21RegexpMatchesBindDataE, i64 16), ptr %0, align 8, !tbaa !244
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !293
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !319 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !297 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 %i.ad, ptr %i.b, align 8, !tbaa !311
  %i.ae = icmp ugt i64 %i.ad, 15
  br i1 %i.ae, label %.noexc.i8, label %._crit_edge.i.i

.noexc.i8:                                        ; preds = %_ZN6duckdb18RegexpBaseBindDataC2ERKS0_.exit
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %.noexc.i8
  store ptr %i.af, ptr %i.y, align 8, !tbaa !319
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !311
  store i64 %i.ag, ptr %i.aa, align 8, !tbaa !294
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZN6duckdb18RegexpBaseBindDataC2ERKS0_.exit
  %i.ah = phi ptr [ %i.af, %.noexc ], [ %i.aa, %_ZN6duckdb18RegexpBaseBindDataC2ERKS0_.exit ] ; 2 uses
  switch i64 %i.ad, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ai = load i8, ptr %i.ab, align 1, !tbaa !294
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !294
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %i.ab, i64 %i.ad, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !311 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !297
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !319
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !293
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !319 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !297 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.as, ptr %i.a, align 8, !tbaa !311
  %i.at = icmp ugt i64 %i.as, 15
  br i1 %i.at, label %.noexc.i10, label %._crit_edge.i.i9

.noexc.i10:                                       ; preds = %bb.g
  %i.au = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc11 unwind label %bb.l   ; 2 uses

.noexc11:                                         ; preds = %.noexc.i10
  store ptr %i.au, ptr %i.an, align 8, !tbaa !319
  %i.av = load i64, ptr %i.a, align 8, !tbaa !311
  store i64 %i.av, ptr %i.ap, align 8, !tbaa !294
  br label %._crit_edge.i.i9

._crit_edge.i.i9:                                 ; preds = %.noexc11, %bb.g
  %i.aw = phi ptr [ %i.au, %.noexc11 ], [ %i.ap, %bb.g ] ; 2 uses
  switch i64 %i.as, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i9
  %i.ax = load i8, ptr %i.aq, align 1, !tbaa !294
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !294
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr align 1 %i.aq, i64 %i.as, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i9
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !311 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !297
  %i.ba = load ptr, ptr %i.an, align 8, !tbaa !319
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ay
  store i8 0, ptr %i.bb, align 1, !tbaa !294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !1788, !range !343, !noundef !344
  store i8 %i.be, ptr %i.bc, align 8, !tbaa !1788
  ret void

bb.k:                                             ; preds = %.noexc.i8
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.l:                                             ; preds = %.noexc.i10
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %i.y, align 8, !tbaa !319 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.aa
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.bh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.k ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bg, %bb.l ]
  call void @_ZN6duckdb18RegexpBaseBindDataD2Ev(ptr noundef nonnull align 8 dereferenceable(65) %0) #25
  br label %common.resume
}

declare void @_ZN10duckdb_re23RE2C1ERKNS_11StringPieceERKNS0_7OptionsE(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(23)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL18LikeMatchFromRegexERN10duckdb_re23RE2E(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree readonly captures(none) %.32.val) unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !1792 {
bb.a:
  %1 = alloca %"struct.duckdb::LikeString", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  store i8 1, ptr %1, align 8, !tbaa !602
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 13 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !293
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 14 uses
  store i8 0, ptr %i.c, align 8, !tbaa !294
  %i.e = getelementptr inbounds nuw i8, ptr %.32.val, i64 6
  %i.f = load i16, ptr %i.e, align 2, !tbaa !1793 ; 3 uses
  %i.g = icmp ult i16 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %.32.val, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %.0.i = select i1 %i.g, ptr %i.h, ptr %i.i
  %.not = icmp eq i16 %i.f, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  %i.j = load i16, ptr %1, align 8
  store i16 %i.j, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !293
  br label %bb.t

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 11 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.q = zext i16 %i.f to i64                     ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37 ] ; 6 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1794 ; 4 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !608
  switch i8 %i.t, label %bb.r [
    i8 12, label %bb.c
    i8 7, label %bb.f
    i8 4, label %bb.k
    i8 3, label %bb.k
    i8 19, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37
    i8 2, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37
    i8 18, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37
  ]

bb.c:                                             ; preds = %bb.b
  %i.u = icmp eq i64 %indvars.iv, 0
  %.pre34 = load i64, ptr %i.d, align 8, !tbaa !297 ; 2 uses
  br i1 %i.u, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.d:                                             ; preds = %bb.c
  %i.v = icmp eq i64 %.pre34, 4611686018427387903
  br i1 %i.v, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.d
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull @.str.59, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %.pre33 = load i64, ptr %i.d, align 8, !tbaa !297
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34.invoke, %.invoke
  %lpad.loopexit.split-lp60 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge, %bb.c
  %i.x = phi i64 [ %.pre33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge ], [ %.pre34, %bb.c ]
  %i.y = icmp eq i64 %i.x, 4611686018427387903
  br i1 %i.y, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull @.str.60, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i30
  %i.aa = add nuw nsw i64 %indvars.iv, 1
  %i.ab = icmp eq i64 %i.aa, %i.q
  br i1 %i.ab, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit33
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !297
  %i.ad = icmp eq i64 %i.ac, 4611686018427387903
  br i1 %i.ad, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34.invoke

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34.invoke: ; preds = %bb.h, %bb.e
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull @.str.59, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.f:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !1793
  %i.ah = icmp eq i16 %i.ag, 1
  br i1 %i.ah, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1794
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !608
  %i.al = icmp eq i8 %i.ak, 12
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = load i64, ptr %i.d, align 8, !tbaa !297
  %i.an = icmp eq i64 %i.am, 4611686018427387903
  br i1 %i.an, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34.invoke

bb.i:                                             ; preds = %bb.g, %bb.f
  store i8 0, ptr %1, align 8, !tbaa !602
  %i.ao = load i16, ptr %1, align 8
  store i16 %i.ao, ptr %0, align 8
  store ptr %i.o, ptr %i.n, align 8, !tbaa !293
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !319 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.c
  br i1 %i.aq, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.ar = load i64, ptr %i.d, align 8, !tbaa !297 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.at, i1 false)
  br label %_ZN6duckdb10LikeStringC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  store ptr %i.ap, ptr %i.n, align 8, !tbaa !319
  %i.au = load i64, ptr %i.c, align 8, !tbaa !294
  store i64 %i.au, ptr %i.o, align 8, !tbaa !294
  %.pre32 = load i64, ptr %i.d, align 8, !tbaa !297
  br label %_ZN6duckdb10LikeStringC2EOS0_.exit

_ZN6duckdb10LikeStringC2EOS0_.exit:               ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.av = phi i64 [ %i.ar, %bb.j ], [ %.pre32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  store i64 %i.av, ptr %i.p, align 8, !tbaa !297
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i61.sink.split

bb.k:                                             ; preds = %bb.b, %bb.b
  %i.aw = icmp eq i64 %indvars.iv, 0
  br i1 %i.aw, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit46

bb.l:                                             ; preds = %bb.k
  %i.ax = load i64, ptr %i.d, align 8, !tbaa !297
  %i.ay = icmp eq i64 %i.ax, 4611686018427387903
  br i1 %i.ay, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i43

.invoke:                                          ; preds = %bb.d, %bb.l, %bb.h, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #27
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i43: ; preds = %bb.l
  %i.az = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull @.str.59, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i43._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit46_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i43._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit46_crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i43
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !1794
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i43._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit46_crit_edge, %bb.k
  %i.ba = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i43._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit46_crit_edge ], [ %i.s, %bb.k ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1795)
  store i8 1, ptr %0, align 8, !tbaa !602, !alias.scope !1795
  store i8 0, ptr %i.m, align 1, !tbaa !603, !alias.scope !1795
  store ptr %i.o, ptr %i.n, align 8, !tbaa !293, !alias.scope !1795
  store i64 0, ptr %i.p, align 8, !tbaa !297, !alias.scope !1795
  store i8 0, ptr %i.o, align 8, !tbaa !294, !alias.scope !1795
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !609, !noalias !1795
  %i.bd = and i16 %i.bc, 17
  %or.cond.not.i = icmp eq i16 %i.bd, 16
  br i1 %or.cond.not.i, label %bb.m, label %_ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit.thread49

_ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit.thread49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit46
  store i8 0, ptr %0, align 8, !tbaa !602, !alias.scope !1795
  br label %.critedge28

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit46
  %i.be = load i8, ptr %i.ba, align 8, !tbaa !608, !noalias !1795
  %i.bf = icmp eq i8 %i.be, 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !294, !noalias !1795 ; 3 uses
  br i1 %i.bf, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !294, !noalias !1795
  %.not.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i, label %_ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %bb.o
  %.025.i = phi i64 [ %i.bp, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.025.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !49
  invoke fastcc void @_ZN6duckdbL12AddCodepointEiRNS_10LikeStringEb(i32 noundef %i.bm, ptr noundef nonnull align 8 dereferenceable(40) %0, i1 noundef zeroext false)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %.lr.ph.i
  %i.bn = load i8, ptr %0, align 8, !tbaa !602, !range !343, !alias.scope !1795, !noundef !344 ; 2 uses
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = add nuw i64 %.025.i, 1                  ; 2 uses
  %exitcond.not.i = icmp ne i64 %i.bp, %i.bi
  %or.cond.not30.i = select i1 %i.bo, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not30.i, label %.lr.ph.i, label %_ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit, !llvm.loop !38

bb.p:                                             ; preds = %bb.m
  invoke fastcc void @_ZN6duckdbL12AddCodepointEiRNS_10LikeStringEb(i32 noundef %i.bh, ptr noundef nonnull align 8 dereferenceable(40) %0, i1 noundef zeroext false)
          to label %._ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit_crit_edge: ; preds = %bb.p
  %.pre31 = load i8, ptr %0, align 8, !tbaa !602, !range !343
  br label %_ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i, %bb.p
  %lpad.loopexit.split-lp58 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %i.n, align 8, !tbaa !319, !alias.scope !1795 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.o
  br i1 %i.br, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZdlPv(ptr noundef %i.bq) #28
  br label %.body

_ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit: ; preds = %bb.o, %._ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit_crit_edge
  %i.bs = phi i8 [ %.pre31, %._ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit_crit_edge ], [ %i.bn, %bb.o ]
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %_ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit.thread, label %.critedge28

_ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit.thread: ; preds = %bb.n, %_ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit
  %i.bu = load i64, ptr %i.p, align 8, !tbaa !297 ; 2 uses
  %i.bv = load i64, ptr %i.d, align 8, !tbaa !297
  %i.bw = sub i64 4611686018427387903, %i.bv
  %i.bx = icmp ult i64 %i.bw, %i.bu
  br i1 %i.bx, label %.invoke50, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

.invoke50:                                        ; preds = %bb.q, %_ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit.thread
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #27
          to label %.cont51 unwind label %.loopexit.split-lp5.loopexit.split-lp.loopexit.split-lp

.cont51:                                          ; preds = %.invoke50
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit.thread
  %i.by = load ptr, ptr %i.n, align 8, !tbaa !319
  %i.bz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef %i.by, i64 noundef %i.bu)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp5.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ca = load i8, ptr %i.m, align 1, !tbaa !603, !range !343, !noundef !344
  store i8 %i.ca, ptr %i.a, align 1, !tbaa !603
  %i.cb = add nuw nsw i64 %indvars.iv, 1
  %i.cc = icmp eq i64 %i.cb, %i.q
  br i1 %i.cc, label %bb.q, label %.critedge

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.cd = load i64, ptr %i.d, align 8, !tbaa !297
  %i.ce = icmp eq i64 %i.cd, 4611686018427387903
  br i1 %i.ce, label %.invoke50, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49: ; preds = %bb.q
  %i.cf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull @.str.59, i64 noundef 1)
          to label %.critedge unwind label %.loopexit.split-lp5.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp5.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %.invoke50
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = load ptr, ptr %i.n, align 8, !tbaa !319 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.o
  br i1 %i.ch, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.loopexit.split-lp5.loopexit.split-lp.loopexit.split-lp
  call void @_ZdlPv(ptr noundef %i.cg) #28
  br label %.body

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49
  %i.ci = load ptr, ptr %i.n, align 8, !tbaa !319 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.o
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53: ; preds = %.critedge
  call void @_ZdlPv(ptr noundef %i.ci) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37

bb.r:                                             ; preds = %bb.b
  store i8 0, ptr %1, align 8, !tbaa !602
  %i.ck = load i16, ptr %1, align 8
  store i16 %i.ck, ptr %0, align 8
  store ptr %i.o, ptr %i.n, align 8, !tbaa !293
  %i.cl = load ptr, ptr %i.b, align 8, !tbaa !319 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.c
  br i1 %i.cm, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

bb.s:                                             ; preds = %bb.r
  %i.cn = load i64, ptr %i.d, align 8, !tbaa !297 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 16
  call void @llvm.assume(i1 %i.co)
  %i.cp = add nuw nsw i64 %i.cn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.cp, i1 false)
  br label %_ZN6duckdb10LikeStringC2EOS0_.exit57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.r
  store ptr %i.cl, ptr %i.n, align 8, !tbaa !319
  %i.cq = load i64, ptr %i.c, align 8, !tbaa !294
  store i64 %i.cq, ptr %i.o, align 8, !tbaa !294
  %.pre35 = load i64, ptr %i.d, align 8, !tbaa !297
  br label %_ZN6duckdb10LikeStringC2EOS0_.exit57

_ZN6duckdb10LikeStringC2EOS0_.exit57:             ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  %i.cr = phi i64 [ %i.cn, %bb.s ], [ %.pre35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ]
  store i64 %i.cr, ptr %i.p, align 8, !tbaa !297
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i61.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37: ; preds = %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34.invoke, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53, %bb.b, %bb.b, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.q
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1791

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37
  %.pre36 = load ptr, ptr %i.b, align 8, !tbaa !319 ; 2 uses
  %i.cs = load i16, ptr %1, align 8
  store i16 %i.cs, ptr %0, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.cu, ptr %i.ct, align 8, !tbaa !293
  %i.cv = icmp eq ptr %.pre36, %i.c
  br i1 %i.cv, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

bb.t:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.cw = phi ptr [ %i.l, %._crit_edge.thread ], [ %i.cu, %._crit_edge ]
  %i.cx = load i64, ptr %i.d, align 8, !tbaa !297 ; 3 uses
  %i.cy = icmp ult i64 %i.cx, 16
  call void @llvm.assume(i1 %i.cy)
  %i.cz = add nuw nsw i64 %i.cx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cw, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.cz, i1 false)
  br label %_ZN6duckdb10LikeStringC2EOS0_.exit59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %._crit_edge
  store ptr %.pre36, ptr %i.ct, align 8, !tbaa !319
  %i.da = load i64, ptr %i.c, align 8, !tbaa !294
  store i64 %i.da, ptr %i.cu, align 8, !tbaa !294
  %.pre37 = load i64, ptr %i.d, align 8, !tbaa !297
  br label %_ZN6duckdb10LikeStringC2EOS0_.exit59

_ZN6duckdb10LikeStringC2EOS0_.exit59:             ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  %i.db = phi i64 [ %i.cx, %bb.t ], [ %.pre37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ]
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !297
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i61.sink.split

.critedge28:                                      ; preds = %_ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit, %_ZN6duckdbL20GetLikeStringEscapedEPN10duckdb_re26RegexpEb.exit.thread49
  %.pre38 = load ptr, ptr %i.b, align 8, !tbaa !319 ; 2 uses
  %i.dd = icmp eq ptr %.pre38, %i.c
  br i1 %i.dd, label %_ZN6duckdb10LikeStringD2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i61.sink.split: ; preds = %_ZN6duckdb10LikeStringC2EOS0_.exit59, %_ZN6duckdb10LikeStringC2EOS0_.exit57, %_ZN6duckdb10LikeStringC2EOS0_.exit
  store i64 0, ptr %i.d, align 8, !tbaa !297
  br label %_ZN6duckdb10LikeStringD2Ev.exit62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60: ; preds = %.critedge28
  call void @_ZdlPv(ptr noundef %.pre38) #28
  br label %_ZN6duckdb10LikeStringD2Ev.exit62

_ZN6duckdb10LikeStringD2Ev.exit62:                ; preds = %.critedge28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i61.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void

.body:                                            ; preds = %.loopexit.split-lp5.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp60, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %lpad.loopexit.split-lp58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %lpad.loopexit.split-lp58, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp5.loopexit.split-lp.loopexit.split-lp ]
  %i.de = load ptr, ptr %i.b, align 8, !tbaa !319 ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.c
  br i1 %i.df, label %_ZN6duckdb10LikeStringD2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.de) #28
  br label %_ZN6duckdb10LikeStringD2Ev.exit65

_ZN6duckdb10LikeStringD2Ev.exit65:                ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(40) ptr @_ZN6duckdb10LikeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1796 {
bb.a:
  %i.a = load i16, ptr %1, align 8
  store i16 %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !319  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = icmp eq ptr %i.d, %i.e
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !319  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  br i1 %i.i, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !297  ; 3 uses
  %i.l = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.l)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !321

bb.c:                                             ; preds = %bb.b
  switch i64 %i.k, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %i.g, align 1, !tbaa !294
  store i8 %i.m, ptr %i.d, align 1, !tbaa !294
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr align 1 %i.g, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.n = load i64, ptr %i.j, align 8, !tbaa !297  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !297
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !319
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !294
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !319
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.b, align 8, !tbaa !319
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !297
  store i64 %i.t, ptr %i.r, align 8, !tbaa !297
  %i.u = load i64, ptr %i.h, align 8, !tbaa !294
  store i64 %i.u, ptr %i.e, align 8, !tbaa !294
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.v = load i64, ptr %i.e, align 8, !tbaa !294
  store ptr %i.g, ptr %i.b, align 8, !tbaa !319
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !297
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.x, ptr %i.y, align 8, !tbaa !297
  %i.z = load i64, ptr %i.h, align 8, !tbaa !294
  store i64 %i.z, ptr %i.e, align 8, !tbaa !294
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.d, ptr %i.c, align 8, !tbaa !319
  store i64 %i.v, ptr %i.h, align 8, !tbaa !294
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.h, ptr %i.c, align 8, !tbaa !319
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.aa = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.d, %bb.f ], [ %i.h, %bb.g ], [ %i.g, %bb.b ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.ab, align 8, !tbaa !297
  store i8 0, ptr %i.aa, align 1, !tbaa !294
  ret ptr %0
}

declare void @_ZN6duckdb7LikeFun11GetFunctionEv(ptr dead_on_unwind writable sret(%"class.duckdb::ScalarFunction") align 8) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN10duckdb_re23RE2D1Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb21RegexpMatchesBindDataD2Ev(ptr noundef nonnull align 8 dereferenceable(137) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1797 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb21RegexpMatchesBindDataE, i64 16), ptr %0, align 8, !tbaa !244
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !319  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !319  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.f) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  tail call void @_ZN6duckdb18RegexpBaseBindDataD2Ev(ptr noundef nonnull align 8 dereferenceable(65) %0) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb19TimeStampComparisonC2ERNS_18ExpressionRewriterE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1831 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr.258", align 8 ; 12 uses
  %3 = alloca %"class.duckdb::unique_ptr.414", align 8 ; 12 uses
  %4 = alloca %"class.duckdb::unique_ptr.414", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !239
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !242
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb19TimeStampComparisonE, i64 16), ptr %0, align 8, !tbaa !244
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !396, !nonnull !344, !align !378
  store ptr %i.e, ptr %i.c, align 8, !tbaa !1832
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1833)
  %i.f = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26
          to label %bb.b unwind label %bb.aj      ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 29, ptr %i.g, align 8, !tbaa !263, !noalias !1833
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false), !noalias !1833
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb27ComparisonExpressionMatcherE, i64 16), ptr %i.f, align 8, !tbaa !244, !noalias !1833
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false), !noalias !1833
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i32 4, ptr %i.j, align 8, !tbaa !366, !noalias !1833
  store ptr %i.f, ptr %2, align 8, !tbaa !368, !alias.scope !1833
  %i.k = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_27ComparisonExpressionMatcherESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.c unwind label %bb.ak

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i32 1, ptr %i.l, align 8, !tbaa !366
  %i.m = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #26
          to label %bb.d unwind label %bb.ak      ; 5 uses

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb29SpecificExpressionTypeMatcherE, i64 16), ptr %i.m, align 8, !tbaa !244, !noalias !1834
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i8 25, ptr %i.n, align 8, !tbaa !501, !noalias !1834
  %i.o = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_27ComparisonExpressionMatcherESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %_ZNSt10unique_ptrIN6duckdb29SpecificExpressionTypeMatcherESt14default_deleteIS1_EED2Ev.exit124

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !502  ; 3 uses
  store ptr %i.m, ptr %i.p, align 8, !tbaa !502
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb29SpecificExpressionTypeMatcherESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb21ExpressionTypeMatcherEEclEPS1_.exit.i.i.i.i.i

end_hunk_2
