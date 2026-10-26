Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/rule_properties?download=true
inline.NumInlined: 1019
inline.NumDeleted: 505
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_Z18for_each_expr_coreIN7datalog15rule_propertiesE16expr_sparse_markLb1ELb0EEvRT_RT0_P4expr:bb.a
  %.pre2.pre.i108 = load i32, ptr %i.ac, align 8, !tbaa !214
  br label %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i109

bb.be:                                            ; preds = %bb.be, %.lr.ph.i.i100.new
  %indvars.iv.i.i102 = phi i64 [ 0, %.lr.ph.i.i100.new ], [ %indvars.iv.next.i.i103.1, %bb.be ] ; 4 uses
  %niter887 = phi i64 [ 0, %.lr.ph.i.i100.new ], [ %niter887.next.1, %bb.be ]
  %i.jb = getelementptr inbounds nuw [16 x i8], ptr %i.iv, i64 %indvars.iv.i.i102
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i99, i64 %indvars.iv.i.i102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jb, ptr noundef nonnull align 8 dereferenceable(16) %i.jc, i64 16, i1 false)
  %indvars.iv.next.i.i103 = or disjoint i64 %indvars.iv.i.i102, 1 ; 2 uses
  %i.jd = getelementptr inbounds nuw [16 x i8], ptr %i.iv, i64 %indvars.iv.next.i.i103
  %i.je = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i99, i64 %indvars.iv.next.i.i103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jd, ptr noundef nonnull align 8 dereferenceable(16) %i.je, i64 16, i1 false)
  %indvars.iv.next.i.i103.1 = add nuw nsw i64 %indvars.iv.i.i102, 2 ; 2 uses
  %niter887.next.1 = add i64 %niter887, 2         ; 2 uses
  %niter887.ncmp.1 = icmp eq i64 %niter887.next.1, %unroll_iter886
  br i1 %niter887.ncmp.1, label %._crit_edge.i.i105.loopexit.unr-lcssa, label %bb.be, !llvm.loop !211

_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i109: ; preds = %.noexc114, %._crit_edge.i.i105
  %.pre2.i110 = phi i32 [ %i.iw, %._crit_edge.i.i105 ], [ %.pre2.pre.i108, %.noexc114 ]
  store ptr %i.iv, ptr %5, align 8, !tbaa !135
  store i32 %i.is, ptr %i.ad, align 4, !tbaa !213
  br label %_ZN7datalog15rule_propertiesclEP10quantifier.exit

bb.bf:                                            ; preds = %_ZN16expr_sparse_mark4markEP4expr.exit
  %i.jf = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !136
  %i.jh = icmp eq i32 %i.jg, 0
  br i1 %i.jh, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN7datalog15rule_propertiesclEP3app(ptr noundef nonnull align 8 dereferenceable(258) %0, ptr noundef nonnull %i.cq)
          to label %_ZNK16expr_sparse_mark9is_markedEP4expr.exit81 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bh:                                            ; preds = %bb.bf
  %i.ji = load i32, ptr %i.ac, align 8, !tbaa !214 ; 2 uses
  %i.jj = load i32, ptr %i.ad, align 4, !tbaa !213 ; 2 uses
  %.not.i116 = icmp ult i32 %i.ji, %i.jj
  br i1 %.not.i116, label %._crit_edge.i130, label %bb.bi

._crit_edge.i130:                                 ; preds = %bb.bh
  %.pre.i131 = load ptr, ptr %5, align 8, !tbaa !135
  br label %_ZN7datalog15rule_propertiesclEP10quantifier.exit

bb.bi:                                            ; preds = %bb.bh
  %i.jk = shl i32 %i.jj, 1                        ; 2 uses
  %i.jl = zext i32 %i.jk to i64
  %i.jm = shl nuw nsw i64 %i.jl, 4
  %i.jn = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.jm)
          to label %.noexc132 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc132:                                        ; preds = %bb.bi
  %i.jo = load i32, ptr %i.ac, align 8, !tbaa !214 ; 5 uses
  %.not.i.i117 = icmp eq i32 %i.jo, 0
  %.pre.i.i118 = load ptr, ptr %5, align 8, !tbaa !135 ; 6 uses
  br i1 %.not.i.i117, label %._crit_edge.i.i124, label %.lr.ph.i.i119

.lr.ph.i.i119:                                    ; preds = %.noexc132
  %wide.trip.count.i.i120 = zext i32 %i.jo to i64 ; 2 uses
  %xtraiter877 = and i64 %wide.trip.count.i.i120, 1
  %i.jp = icmp eq i32 %i.jo, 1
  br i1 %i.jp, label %.epil.preheader876, label %.lr.ph.i.i119.new

.lr.ph.i.i119.new:                                ; preds = %.lr.ph.i.i119
  %unroll_iter880 = and i64 %wide.trip.count.i.i120, 4294967294
  br label %bb.bk

._crit_edge.i.i124.loopexit.unr-lcssa:            ; preds = %bb.bk
  %lcmp.mod878.not = icmp eq i64 %xtraiter877, 0
  br i1 %lcmp.mod878.not, label %._crit_edge.i.i124, label %.epil.preheader876

.epil.preheader876:                               ; preds = %._crit_edge.i.i124.loopexit.unr-lcssa, %.lr.ph.i.i119
  %indvars.iv.i.i121.epil.init = phi i64 [ 0, %.lr.ph.i.i119 ], [ %indvars.iv.next.i.i122.1, %._crit_edge.i.i124.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod879 = trunc i32 %i.jo to i1
  call void @llvm.assume(i1 %lcmp.mod879)
  %i.jq = getelementptr inbounds nuw [16 x i8], ptr %i.jn, i64 %indvars.iv.i.i121.epil.init
  %i.jr = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i118, i64 %indvars.iv.i.i121.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jq, ptr noundef nonnull align 8 dereferenceable(16) %i.jr, i64 16, i1 false)
  br label %._crit_edge.i.i124

._crit_edge.i.i124:                               ; preds = %.epil.preheader876, %._crit_edge.i.i124.loopexit.unr-lcssa, %.noexc132
  %.not.i.i.i125 = icmp eq ptr %.pre.i.i118, %i.ab
  %i.js = icmp eq ptr %.pre.i.i118, null
  %or.cond.i.i.i126 = or i1 %.not.i.i.i125, %i.js
  br i1 %or.cond.i.i.i126, label %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i128, label %bb.bj

bb.bj:                                            ; preds = %._crit_edge.i.i124
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i118)
          to label %.noexc133 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc133:                                        ; preds = %bb.bj
  %.pre2.pre.i127 = load i32, ptr %i.ac, align 8, !tbaa !214
  br label %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i128

bb.bk:                                            ; preds = %bb.bk, %.lr.ph.i.i119.new
  %indvars.iv.i.i121 = phi i64 [ 0, %.lr.ph.i.i119.new ], [ %indvars.iv.next.i.i122.1, %bb.bk ] ; 4 uses
  %niter881 = phi i64 [ 0, %.lr.ph.i.i119.new ], [ %niter881.next.1, %bb.bk ]
  %i.jt = getelementptr inbounds nuw [16 x i8], ptr %i.jn, i64 %indvars.iv.i.i121
  %i.ju = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i118, i64 %indvars.iv.i.i121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jt, ptr noundef nonnull align 8 dereferenceable(16) %i.ju, i64 16, i1 false)
  %indvars.iv.next.i.i122 = or disjoint i64 %indvars.iv.i.i121, 1 ; 2 uses
  %i.jv = getelementptr inbounds nuw [16 x i8], ptr %i.jn, i64 %indvars.iv.next.i.i122
  %i.jw = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i118, i64 %indvars.iv.next.i.i122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jv, ptr noundef nonnull align 8 dereferenceable(16) %i.jw, i64 16, i1 false)
  %indvars.iv.next.i.i122.1 = add nuw nsw i64 %indvars.iv.i.i121, 2 ; 2 uses
  %niter881.next.1 = add i64 %niter881, 2         ; 2 uses
  %niter881.ncmp.1 = icmp eq i64 %niter881.next.1, %unroll_iter880
  br i1 %niter881.ncmp.1, label %._crit_edge.i.i124.loopexit.unr-lcssa, label %bb.bk, !llvm.loop !211

_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i128: ; preds = %.noexc133, %._crit_edge.i.i124
  %.pre2.i129 = phi i32 [ %i.jo, %._crit_edge.i.i124 ], [ %.pre2.pre.i127, %.noexc133 ]
  store ptr %i.jn, ptr %5, align 8, !tbaa !135
  store i32 %i.jk, ptr %i.ad, align 4, !tbaa !213
  br label %_ZN7datalog15rule_propertiesclEP10quantifier.exit

bb.bl:                                            ; preds = %_ZN16expr_sparse_mark4markEP4expr.exit
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.25, i32 noundef 73, ptr noundef nonnull @.str.15)
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bm:                                            ; preds = %bb.bl
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %_ZNK16expr_sparse_mark9is_markedEP4expr.exit81 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK16expr_sparse_mark9is_markedEP4expr.exit81:   ; preds = %bb.o, %bb.r, %_ZN6vectorIPN7datalog4ruleELb0EjE9push_backERKS2_.exit.i.i87, %_ZNK7datalog12dl_decl_util12is_rule_sortEP4sort.exit.i.i91, %_ZNK17array_recognizers8is_arrayEP4sort.exit.thread.i.i84, %bb.bg, %bb.bm
  %i.jx = load i32, ptr %i.cj, align 8, !tbaa !217 ; 2 uses
  %i.jy = icmp ult i32 %i.jx, %i.ci
  br i1 %i.jy, label %bb.n, label %._crit_edge409.loopexit

._crit_edge409.loopexit:                          ; preds = %_ZNK16expr_sparse_mark9is_markedEP4expr.exit81
  %.pre485 = load i32, ptr %i.ac, align 8, !tbaa !214
  %.pre492 = add i32 %.pre485, -1
  br label %._crit_edge409

._crit_edge409:                                   ; preds = %bb.m, %._crit_edge409.loopexit
  %.pre-phi493 = phi i32 [ %.pre492, %._crit_edge409.loopexit ], [ %i.ar, %bb.m ]
  store i32 %.pre-phi493, ptr %i.ac, align 8, !tbaa !214
  invoke void @_ZN7datalog15rule_propertiesclEP3app(ptr noundef nonnull align 8 dereferenceable(258) %0, ptr noundef %i.av)
          to label %thread-pre-splitthread-pre-split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bn:                                            ; preds = %bb.h
  %i.jz = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !218 ; 3 uses
  %i.kb = add i32 %i.ka, 1
  %i.kc = getelementptr inbounds nuw i8, ptr %i.av, i64 76
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !219
  %i.ke = add i32 %i.kb, %i.kd                    ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !217 ; 2 uses
  %i.kh = icmp ult i32 %i.kg, %i.ke
  br i1 %i.kh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.bn
  %i.ki = getelementptr inbounds nuw i8, ptr %i.av, i64 80 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.av, i64 20 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.kl = load i32, ptr %i.d, align 8, !tbaa !76  ; 6 uses
  %i.km = add i32 %i.kl, -1
  %i.kn = load ptr, ptr %1, align 8, !tbaa !82    ; 4 uses
  %i.ko = zext i32 %i.kl to i64                   ; 2 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.ko
  %i.kq = zext i32 %i.kg to i64
  %i.kr = zext i32 %i.ka to i64
  %i.ks = xor i32 %i.ka, -1
  br label %bb.bo

bb.bo:                                            ; preds = %.lr.ph, %_ZNK16expr_sparse_mark9is_markedEP4expr.exit155
  %indvars.iv = phi i64 [ %i.kq, %.lr.ph ], [ %indvars.iv.next, %_ZNK16expr_sparse_mark9is_markedEP4expr.exit155 ] ; 5 uses
  %i.kt = icmp eq i64 %indvars.iv, 0
  br i1 %i.kt, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.not.i135 = icmp samesign ugt i64 %indvars.iv, %i.kr
  br i1 %.not.i135, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ku = load i32, ptr %i.kj, align 4, !tbaa !220
  %i.kv = zext i32 %i.ku to i64                   ; 2 uses
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %i.kv
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %i.kv
  %i.ky = getelementptr [8 x i8], ptr %i.kx, i64 %indvars.iv
  %i.kz = getelementptr i8, ptr %i.ky, i64 -8
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.la = trunc nuw i64 %indvars.iv to i32
  %i.lb = add i32 %i.la, %i.ks
  %i.lc = load i32, ptr %i.kj, align 4, !tbaa !220
  %i.ld = zext i32 %i.lc to i64                   ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %i.ld
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.ld
  %i.lg = zext i32 %i.lb to i64
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %i.lg
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bo, %bb.br, %bb.bq
  %.0.in.i = phi ptr [ %i.lh, %bb.br ], [ %i.kz, %bb.bq ], [ %i.kk, %bb.bo ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !132 ; 12 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !131 ; 4 uses
  %i.lk = and i32 %i.km, %i.lj                    ; 6 uses
  %i.ll = zext i32 %i.lk to i64
  %.idx.i.i.i136 = shl nuw nsw i64 %i.ll, 3       ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kn, i64 %.idx.i.i.i136 ; 3 uses
  %.not34.i.i.i137 = icmp eq i32 %i.lk, %i.kl
  br i1 %.not34.i.i.i137, label %.preheader.i.i.i143, label %.lr.ph.i.i.i138

.preheader.i.i.i143:                              ; preds = %bb.bv, %bb.bs
  %.not2736.i.i.i144 = icmp eq i32 %i.lk, 0
  %i.ln = trunc i64 %indvars.iv.next to i32       ; 4 uses
  br i1 %.not2736.i.i.i144, label %.loopexit332, label %.lr.ph38.i.i.i145

.lr.ph.i.i.i138:                                  ; preds = %bb.bs, %bb.bv
  %.035.i.i.i139 = phi ptr [ %i.lu, %bb.bv ], [ %i.lm, %bb.bs ] ; 2 uses
  %i.lo = load ptr, ptr %.035.i.i.i139, align 8, !tbaa !81 ; 4 uses
  %.not.i.not.i140 = icmp ult ptr %i.lo, inttoptr (i64 2 to ptr)
  br i1 %.not.i.not.i140, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph.i.i.i138
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 12
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !131
  %i.lr = icmp eq i32 %i.lq, %i.lj
  %i.ls = icmp eq ptr %i.lo, %.0.i
  %or.cond.i.i.i141 = and i1 %i.ls, %i.lr
  br i1 %or.cond.i.i.i141, label %_ZNK16expr_sparse_mark9is_markedEP4expr.exit155.loopexit415, label %bb.bv, !llvm.loop !212

bb.bu:                                            ; preds = %.lr.ph.i.i.i138
  %i.lt = icmp eq ptr %i.lo, null
  br i1 %i.lt, label %.loopexit334, label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.lu = getelementptr inbounds nuw i8, ptr %.035.i.i.i139, i64 8 ; 2 uses
  %.not.i.i.i142 = icmp eq ptr %i.lu, %i.kp
  br i1 %.not.i.i.i142, label %.preheader.i.i.i143, label %.lr.ph.i.i.i138, !llvm.loop !208

.lr.ph38.i.i.i145:                                ; preds = %.preheader.i.i.i143, %.lr.ph38.i.i.i145.backedge
  %.137.i.i.i146 = phi ptr [ %.137.i.i.i146.be, %.lr.ph38.i.i.i145.backedge ], [ %i.kn, %.preheader.i.i.i143 ] ; 3 uses
  %i.lv = load ptr, ptr %.137.i.i.i146, align 8, !tbaa !81 ; 4 uses
  %i.lw = icmp ult ptr %i.lv, inttoptr (i64 2 to ptr)
  br i1 %i.lw, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph38.i.i.i145
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 12
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !131
  %i.lz = icmp eq i32 %i.ly, %i.lj
  %i.ma = icmp eq ptr %i.lv, %.0.i
  %or.cond31.i.i.i147 = and i1 %i.ma, %i.lz
  br i1 %or.cond31.i.i.i147, label %_ZNK16expr_sparse_mark9is_markedEP4expr.exit155, label %bb.by, !llvm.loop !212

bb.bx:                                            ; preds = %.lr.ph38.i.i.i145
  %i.mb = icmp eq ptr %i.lv, null
  %i.mc = getelementptr inbounds nuw i8, ptr %.137.i.i.i146, i64 8 ; 2 uses
  %.not27.i.i.i153 = icmp eq ptr %i.mc, %i.lm
  %or.cond43.i.i.i154 = select i1 %i.mb, i1 true, i1 %.not27.i.i.i153
  br i1 %or.cond43.i.i.i154, label %.loopexit332, label %.lr.ph38.i.i.i145.backedge

bb.by:                                            ; preds = %bb.bw
  %.old.i.i.i148 = getelementptr inbounds nuw i8, ptr %.137.i.i.i146, i64 8 ; 2 uses
  %.not27.old.i.i.i149 = icmp eq ptr %.old.i.i.i148, %i.lm
  br i1 %.not27.old.i.i.i149, label %.loopexit332, label %.lr.ph38.i.i.i145.backedge

.lr.ph38.i.i.i145.backedge:                       ; preds = %bb.by, %bb.bx
  %.137.i.i.i146.be = phi ptr [ %i.mc, %bb.bx ], [ %.old.i.i.i148, %bb.by ]
  br label %.lr.ph38.i.i.i145, !llvm.loop !209

.loopexit334:                                     ; preds = %bb.bu
  %i.md = trunc nuw i64 %indvars.iv.next to i32
  br label %.loopexit332

.loopexit332:                                     ; preds = %.preheader.i.i.i143, %bb.bx, %bb.by, %.loopexit334
  %6 = phi i32 [ %i.lk, %bb.bx ], [ %i.lk, %.loopexit334 ], [ %i.lk, %bb.by ], [ 0, %.preheader.i.i.i143 ]
  %.sink = phi i32 [ %i.ln, %bb.bx ], [ %i.md, %.loopexit334 ], [ %i.ln, %bb.by ], [ %i.ln, %.preheader.i.i.i143 ]
  %i.me = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  store i32 %.sink, ptr %i.kf, align 8, !tbaa !217
  %i.mf = load i32, ptr %i.ae, align 4, !tbaa !77
  %i.mg = load i32, ptr %i.af, align 8, !tbaa !78 ; 2 uses
  %i.mh = add i32 %i.mg, %i.mf
  %i.mi = shl i32 %i.mh, 2
  %i.mj = mul i32 %i.kl, 3
  %i.mk = icmp ugt i32 %i.mi, %i.mj
  br i1 %i.mk, label %bb.bz, label %bb.ce

bb.bz:                                            ; preds = %.loopexit332
  %i.ml = shl i32 %i.kl, 1                        ; 6 uses
  %i.mm = zext i32 %i.ml to i64                   ; 3 uses
  %i.mn = shl nuw nsw i64 %i.mm, 3                ; 2 uses
  %i.mo = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.mn)
          to label %.noexc274 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc274:                                        ; preds = %bb.bz
  %.not6.i.i.i.i.i.i252 = icmp eq i32 %i.ml, 0
  br i1 %.not6.i.i.i.i.i.i252, label %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE11alloc_tableEj.exit.i254, label %.lr.ph.preheader.i.i.i.i.i.i253

.lr.ph.preheader.i.i.i.i.i.i253:                  ; preds = %.noexc274
  call void @llvm.memset.p0.i64(ptr align 8 %i.mo, i8 0, i64 %i.mn, i1 false), !tbaa !81
  br label %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE11alloc_tableEj.exit.i254

_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE11alloc_tableEj.exit.i254: ; preds = %.lr.ph.preheader.i.i.i.i.i.i253, %.noexc274
  %i.mp = load ptr, ptr %1, align 8, !tbaa !82    ; 3 uses
  %i.mq = load i32, ptr %i.d, align 8, !tbaa !76  ; 2 uses
  %i.mr = add i32 %i.ml, -1                       ; 2 uses
  %i.ms = zext i32 %i.mq to i64
  %.idx.i.i255 = shl nuw nsw i64 %i.ms, 3
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mp, i64 %.idx.i.i255
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %i.mm
  %.not38.i.i256 = icmp eq i32 %i.mq, 0
  br i1 %.not38.i.i256, label %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit.i273, label %.lr.ph41.i.i257

.lr.ph41.i.i257:                                  ; preds = %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE11alloc_tableEj.exit.i254, %.noexc276
  %.02839.i.i258 = phi ptr [ %i.nj, %.noexc276 ], [ %i.mp, %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE11alloc_tableEj.exit.i254 ] ; 2 uses
  %i.mv = load ptr, ptr %.02839.i.i258, align 8   ; 3 uses
  %i.mw = icmp ult ptr %i.mv, inttoptr (i64 2 to ptr)
  %i.mx = ptrtoint ptr %i.mv to i64
  br i1 %i.mw, label %.noexc276, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph41.i.i257
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 12
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !131
  %i.na = and i32 %i.mz, %i.mr                    ; 3 uses
  %i.nb = zext i32 %i.na to i64
  %.idx43.i.i259 = shl nuw nsw i64 %i.nb, 3
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mo, i64 %.idx43.i.i259 ; 2 uses
  %.not2933.i.i260 = icmp eq i32 %i.na, %i.ml
  br i1 %.not2933.i.i260, label %.preheader.i.i264, label %.lr.ph.i.i261

.preheader.i.i264:                                ; preds = %bb.cb, %bb.ca
  %.not3035.i.i265 = icmp eq i32 %i.na, 0
  br i1 %.not3035.i.i265, label %._crit_edge.i.i269, label %.lr.ph37.i.i266

.lr.ph.i.i261:                                    ; preds = %bb.ca, %bb.cb
  %.034.i.i262 = phi ptr [ %i.nf, %bb.cb ], [ %i.nc, %bb.ca ] ; 3 uses
  %i.nd = load ptr, ptr %.034.i.i262, align 8, !tbaa !81
  %i.ne = icmp eq ptr %i.nd, null
  br i1 %i.ne, label %.noexc276.sink.split, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i.i261
  %i.nf = getelementptr inbounds nuw i8, ptr %.034.i.i262, i64 8 ; 2 uses
  %.not29.i.i263 = icmp eq ptr %i.nf, %i.mu
  br i1 %.not29.i.i263, label %.preheader.i.i264, label %.lr.ph.i.i261, !llvm.loop !2

.lr.ph37.i.i266:                                  ; preds = %.preheader.i.i264, %bb.cc
  %.136.i.i267 = phi ptr [ %i.ni, %bb.cc ], [ %i.mo, %.preheader.i.i264 ] ; 3 uses
  %i.ng = load ptr, ptr %.136.i.i267, align 8, !tbaa !81
  %i.nh = icmp eq ptr %i.ng, null
  br i1 %i.nh, label %.noexc276.sink.split, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph37.i.i266
  %i.ni = getelementptr inbounds nuw i8, ptr %.136.i.i267, i64 8 ; 2 uses
  %.not30.i.i268 = icmp eq ptr %i.ni, %i.nc
  br i1 %.not30.i.i268, label %._crit_edge.i.i269, label %.lr.ph37.i.i266, !llvm.loop !3

._crit_edge.i.i269:                               ; preds = %bb.cc, %.preheader.i.i264
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.26, i32 noundef 213, ptr noundef nonnull @.str.15)
          to label %.noexc275 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc275:                                        ; preds = %._crit_edge.i.i269
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %.noexc276 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc276.sink.split:                             ; preds = %.lr.ph.i.i261, %.lr.ph37.i.i266
  %.136.i.i267.lcssa.sink = phi ptr [ %.136.i.i267, %.lr.ph37.i.i266 ], [ %.034.i.i262, %.lr.ph.i.i261 ]
  store i64 %i.mx, ptr %.136.i.i267.lcssa.sink, align 8, !tbaa !132
  br label %.noexc276

.noexc276:                                        ; preds = %.noexc276.sink.split, %.noexc275, %.lr.ph41.i.i257
  %i.nj = getelementptr inbounds nuw i8, ptr %.02839.i.i258, i64 8 ; 2 uses
  %.not.i.i270 = icmp eq ptr %i.nj, %i.mt
  br i1 %.not.i.i270, label %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit.loopexit.i271, label %.lr.ph41.i.i257, !llvm.loop !4

_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit.loopexit.i271: ; preds = %.noexc276
  %.pre.i272 = load ptr, ptr %1, align 8, !tbaa !82
  br label %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit.i273

_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit.i273: ; preds = %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit.loopexit.i271, %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE11alloc_tableEj.exit.i254
  %i.nk = phi ptr [ %.pre.i272, %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit.loopexit.i271 ], [ %i.mp, %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE11alloc_tableEj.exit.i254 ] ; 2 uses
  %i.nl = icmp eq ptr %i.nk, null
  br i1 %i.nl, label %.noexc214, label %bb.cd

bb.cd:                                            ; preds = %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit.i273
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.nk)
          to label %.noexc214 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc214:                                        ; preds = %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit.i273, %bb.cd
  store ptr %i.mo, ptr %1, align 8, !tbaa !82
  store i32 %i.ml, ptr %i.d, align 8, !tbaa !76
  store i32 0, ptr %i.af, align 8, !tbaa !78
  %.pre = load i32, ptr %i.me, align 4, !tbaa !131 ; 2 uses
  %.pre495 = and i32 %i.mr, %.pre                 ; 2 uses
  %.pre497 = zext i32 %.pre495 to i64
  %.pre499 = shl nuw nsw i64 %.pre497, 3
  br label %bb.ce

bb.ce:                                            ; preds = %.noexc214, %.loopexit332
  %.pre-phi500 = phi i64 [ %i.mm, %.noexc214 ], [ %i.ko, %.loopexit332 ]
  %.idx.i191.pre-phi = phi i64 [ %.pre499, %.noexc214 ], [ %.idx.i.i.i136, %.loopexit332 ]
  %.pre-phi496 = phi i32 [ %.pre495, %.noexc214 ], [ %6, %.loopexit332 ] ; 2 uses
  %i.nm = phi i32 [ 0, %.noexc214 ], [ %i.mg, %.loopexit332 ] ; 2 uses
  %i.nn = phi ptr [ %i.mo, %.noexc214 ], [ %i.kn, %.loopexit332 ] ; 3 uses
  %i.no = phi i32 [ %.pre, %.noexc214 ], [ %i.lj, %.loopexit332 ] ; 2 uses
  %i.np = phi i32 [ %i.ml, %.noexc214 ], [ %i.kl, %.loopexit332 ]
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 %.idx.i191.pre-phi ; 2 uses
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %.pre-phi500
  %.not62.i192 = icmp eq i32 %.pre-phi496, %i.np
  br i1 %.not62.i192, label %.preheader.i199, label %.lr.ph.i193

.preheader.i199:                                  ; preds = %bb.cl, %bb.ce
  %.044.lcssa.i200 = phi ptr [ null, %bb.ce ], [ %.1.i197, %bb.cl ]
  %.not4765.i201 = icmp eq i32 %.pre-phi496, 0
  br i1 %.not4765.i201, label %._crit_edge.i208, label %.lr.ph68.i202

.lr.ph.i193:                                      ; preds = %bb.ce, %bb.cl
  %.04464.i194 = phi ptr [ %.1.i197, %bb.cl ], [ null, %bb.ce ] ; 3 uses
  %.04563.i195 = phi ptr [ %i.oc, %bb.cl ], [ %i.nq, %bb.ce ] ; 5 uses
  %i.ns = load ptr, ptr %.04563.i195, align 8, !tbaa !81 ; 4 uses
  %i.nt = icmp ult ptr %i.ns, inttoptr (i64 2 to ptr)
  br i1 %i.nt, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph.i193
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ns, i64 12
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !131
  %i.nw = icmp eq i32 %i.nv, %i.no
  %i.nx = icmp eq ptr %i.ns, %.0.i
  %or.cond.i196 = and i1 %i.nx, %i.nw
  br i1 %or.cond.i196, label %bb.cg, label %bb.cl

bb.cg:                                            ; preds = %bb.cf
  store ptr %.0.i, ptr %.04563.i195, align 8, !tbaa !81
  br label %_ZN16expr_sparse_mark4markEP4expr.exit157

bb.ch:                                            ; preds = %.lr.ph.i193
  %i.ny = icmp eq ptr %i.ns, null
  br i1 %i.ny, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %.not49.i211 = icmp eq ptr %.04464.i194, null
  br i1 %.not49.i211, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.nz = add i32 %i.nm, -1
  store i32 %i.nz, ptr %i.af, align 8, !tbaa !78
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.043.i212 = phi ptr [ %.04464.i194, %bb.cj ], [ %.04563.i195, %bb.ci ]
  store ptr %.0.i, ptr %.043.i212, align 8, !tbaa !81
  %i.oa = load i32, ptr %i.ae, align 4, !tbaa !77
  %i.ob = add i32 %i.oa, 1
  store i32 %i.ob, ptr %i.ae, align 4, !tbaa !77
  br label %_ZN16expr_sparse_mark4markEP4expr.exit157

bb.cl:                                            ; preds = %bb.ch, %bb.cf
  %.1.i197 = phi ptr [ %.04563.i195, %bb.ch ], [ %.04464.i194, %bb.cf ] ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.04563.i195, i64 8 ; 2 uses
  %.not.i198 = icmp eq ptr %i.oc, %i.nr
  br i1 %.not.i198, label %.preheader.i199, label %.lr.ph.i193, !llvm.loop !5

.lr.ph68.i202:                                    ; preds = %.preheader.i199, %bb.cs
  %.267.i203 = phi ptr [ %.3.i206, %bb.cs ], [ %.044.lcssa.i200, %.preheader.i199 ] ; 3 uses
  %.14666.i204 = phi ptr [ %i.on, %bb.cs ], [ %i.nn, %.preheader.i199 ] ; 5 uses
  %i.od = load ptr, ptr %.14666.i204, align 8, !tbaa !81 ; 4 uses
  %i.oe = icmp ult ptr %i.od, inttoptr (i64 2 to ptr)
  br i1 %i.oe, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph68.i202
  %i.of = getelementptr inbounds nuw i8, ptr %i.od, i64 12
  %i.og = load i32, ptr %i.of, align 4, !tbaa !131
  %i.oh = icmp eq i32 %i.og, %i.no
  %i.oi = icmp eq ptr %i.od, %.0.i
  %or.cond53.i205 = and i1 %i.oi, %i.oh
  br i1 %or.cond53.i205, label %bb.cn, label %bb.cs

bb.cn:                                            ; preds = %bb.cm
  store ptr %.0.i, ptr %.14666.i204, align 8, !tbaa !81
  br label %_ZN16expr_sparse_mark4markEP4expr.exit157

bb.co:                                            ; preds = %.lr.ph68.i202
  %i.oj = icmp eq ptr %i.od, null
  br i1 %i.oj, label %bb.cp, label %bb.cs

bb.cp:                                            ; preds = %bb.co
  %.not48.i209 = icmp eq ptr %.267.i203, null
  br i1 %.not48.i209, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ok = add i32 %i.nm, -1
  store i32 %i.ok, ptr %i.af, align 8, !tbaa !78
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.0.i210 = phi ptr [ %.267.i203, %bb.cq ], [ %.14666.i204, %bb.cp ]
  store ptr %.0.i, ptr %.0.i210, align 8, !tbaa !81
  %i.ol = load i32, ptr %i.ae, align 4, !tbaa !77
  %i.om = add i32 %i.ol, 1
  store i32 %i.om, ptr %i.ae, align 4, !tbaa !77
  br label %_ZN16expr_sparse_mark4markEP4expr.exit157

bb.cs:                                            ; preds = %bb.co, %bb.cm
  %.3.i206 = phi ptr [ %.14666.i204, %bb.co ], [ %.267.i203, %bb.cm ]
  %i.on = getelementptr inbounds nuw i8, ptr %.14666.i204, i64 8 ; 2 uses
  %.not47.i207 = icmp eq ptr %i.on, %i.nq
  br i1 %.not47.i207, label %._crit_edge.i208, label %.lr.ph68.i202, !llvm.loop !6

._crit_edge.i208:                                 ; preds = %bb.cs, %.preheader.i199
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.26, i32 noundef 390, ptr noundef nonnull @.str.15)
          to label %.noexc215 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc215:                                        ; preds = %._crit_edge.i208
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %_ZN16expr_sparse_mark4markEP4expr.exit157 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN16expr_sparse_mark4markEP4expr.exit157:        ; preds = %.noexc215, %bb.cg, %bb.ck, %bb.cn, %bb.cr
  %i.oo = load i32, ptr %i.ac, align 8, !tbaa !214 ; 2 uses
  %i.op = load i32, ptr %i.ad, align 4, !tbaa !213 ; 2 uses
  %.not.i158 = icmp ult i32 %i.oo, %i.op
  br i1 %.not.i158, label %._crit_edge.i172, label %bb.ct

._crit_edge.i172:                                 ; preds = %_ZN16expr_sparse_mark4markEP4expr.exit157
  %.pre.i173 = load ptr, ptr %5, align 8, !tbaa !135
  br label %_ZN7datalog15rule_propertiesclEP10quantifier.exit

bb.ct:                                            ; preds = %_ZN16expr_sparse_mark4markEP4expr.exit157
  %i.oq = shl i32 %i.op, 1                        ; 2 uses
  %i.or = zext i32 %i.oq to i64
  %i.os = shl nuw nsw i64 %i.or, 4
  %i.ot = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.os)
          to label %.noexc174 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc174:                                        ; preds = %bb.ct
  %i.ou = load i32, ptr %i.ac, align 8, !tbaa !214 ; 5 uses
  %.not.i.i159 = icmp eq i32 %i.ou, 0
  %.pre.i.i160 = load ptr, ptr %5, align 8, !tbaa !135 ; 6 uses
  br i1 %.not.i.i159, label %._crit_edge.i.i166, label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.noexc174
  %wide.trip.count.i.i162 = zext i32 %i.ou to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i162, 1
  %i.ov = icmp eq i32 %i.ou, 1
  br i1 %i.ov, label %.epil.preheader, label %.lr.ph.i.i161.new

.lr.ph.i.i161.new:                                ; preds = %.lr.ph.i.i161
  %unroll_iter = and i64 %wide.trip.count.i.i162, 4294967294
  br label %bb.cv

._crit_edge.i.i166.loopexit.unr-lcssa:            ; preds = %bb.cv
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i166, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i166.loopexit.unr-lcssa, %.lr.ph.i.i161
  %indvars.iv.i.i163.epil.init = phi i64 [ 0, %.lr.ph.i.i161 ], [ %indvars.iv.next.i.i164.1, %._crit_edge.i.i166.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod875 = trunc i32 %i.ou to i1
  call void @llvm.assume(i1 %lcmp.mod875)
  %i.ow = getelementptr inbounds nuw [16 x i8], ptr %i.ot, i64 %indvars.iv.i.i163.epil.init
  %i.ox = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i160, i64 %indvars.iv.i.i163.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ow, ptr noundef nonnull align 8 dereferenceable(16) %i.ox, i64 16, i1 false)
  br label %._crit_edge.i.i166

._crit_edge.i.i166:                               ; preds = %.epil.preheader, %._crit_edge.i.i166.loopexit.unr-lcssa, %.noexc174
  %.not.i.i.i167 = icmp eq ptr %.pre.i.i160, %i.ab
  %i.oy = icmp eq ptr %.pre.i.i160, null
  %or.cond.i.i.i168 = or i1 %.not.i.i.i167, %i.oy
  br i1 %or.cond.i.i.i168, label %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i170, label %bb.cu

bb.cu:                                            ; preds = %._crit_edge.i.i166
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i160)
          to label %.noexc175 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc175:                                        ; preds = %bb.cu
  %.pre2.pre.i169 = load i32, ptr %i.ac, align 8, !tbaa !214
  br label %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i170

bb.cv:                                            ; preds = %bb.cv, %.lr.ph.i.i161.new
  %indvars.iv.i.i163 = phi i64 [ 0, %.lr.ph.i.i161.new ], [ %indvars.iv.next.i.i164.1, %bb.cv ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i161.new ], [ %niter.next.1, %bb.cv ]
  %i.oz = getelementptr inbounds nuw [16 x i8], ptr %i.ot, i64 %indvars.iv.i.i163
  %i.pa = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i160, i64 %indvars.iv.i.i163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oz, ptr noundef nonnull align 8 dereferenceable(16) %i.pa, i64 16, i1 false)
  %indvars.iv.next.i.i164 = or disjoint i64 %indvars.iv.i.i163, 1 ; 2 uses
  %i.pb = getelementptr inbounds nuw [16 x i8], ptr %i.ot, i64 %indvars.iv.next.i.i164
  %i.pc = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i160, i64 %indvars.iv.next.i.i164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pb, ptr noundef nonnull align 8 dereferenceable(16) %i.pc, i64 16, i1 false)
  %indvars.iv.next.i.i164.1 = add nuw nsw i64 %indvars.iv.i.i163, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i166.loopexit.unr-lcssa, label %bb.cv, !llvm.loop !211

_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i170: ; preds = %.noexc175, %._crit_edge.i.i166
  %.pre2.i171 = phi i32 [ %i.ou, %._crit_edge.i.i166 ], [ %.pre2.pre.i169, %.noexc175 ]
  store ptr %i.ot, ptr %5, align 8, !tbaa !135
  store i32 %i.oq, ptr %i.ad, align 4, !tbaa !213
  br label %_ZN7datalog15rule_propertiesclEP10quantifier.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %._crit_edge.i.i269, %.noexc275, %.noexc249, %._crit_edge.i.i245, %bb.y, %bb.u, %bb.az, %bb.ar, %.noexc185, %._crit_edge.i181, %bb.ap, %bb.ao, %bb.bm, %bb.bl, %bb.bg, %._crit_edge.i208, %.noexc215, %bb.bz, %bb.cd, %bb.bd, %bb.bc, %bb.bj, %bb.bi, %bb.cu, %bb.ct, %._crit_edge.i235.invoke, %.noexc242.invoke, %bb.cw, %bb.l, %bb.j, %bb.i, %._crit_edge409
  %lpad.loopexit.split-lp788 = landingpad { ptr, i32 }
          cleanup
  br label %.body

end_hunk_0
