Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/condition?download=true
inline.NumInlined: 658
inline.NumDeleted: 230
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7CaDiCaL8Internal15condition_roundEl:bb.a
  %i.wp = icmp ult ptr %.sroa.0493.0.lcssa, %.sroa.0487.0.lcssa
  br i1 %i.wp, label %.preheader665, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit

.preheader665:                                    ; preds = %.critedge16
  %i.wq = load ptr, ptr %i.sb, align 8, !tbaa !181 ; 5 uses
  %.not6581118 = icmp eq ptr %.sroa.0487.0.lcssa, %i.wq
  br i1 %.not6581118, label %._crit_edge1122, label %.lr.ph1121.preheader

.lr.ph1121.preheader:                             ; preds = %.preheader665
  %i.wr = ptrtoaddr ptr %i.wq to i64
  %i.ws = add i64 %i.wr, -8
  %i.wt = sub i64 %i.ws, %.sroa.0487.0.lcssa2129  ; 2 uses
  %i.wu = lshr i64 %i.wt, 3
  %i.wv = add nuw nsw i64 %i.wu, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.wt, 24
  %i.ww = sub i64 %.sroa.0487.0.lcssa2129, %.sroa.0493.0.lcssa2128
  %diff.check = icmp ugt i64 %i.ww, -32
  %or.cond2135 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond2135, label %.lr.ph1121.preheader2137, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph1121.preheader
  %n.vec = and i64 %i.wv, 4611686018427387900     ; 3 uses
  %i.wx = shl i64 %n.vec, 3                       ; 2 uses
  %i.wy = getelementptr i8, ptr %.sroa.0487.0.lcssa, i64 %i.wx
  %i.wz = getelementptr i8, ptr %.sroa.0493.0.lcssa, i64 %i.wx ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.xa = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.0487.0.lcssa, i64 %i.xa ; 2 uses
  %next.gep2130 = getelementptr i8, ptr %.sroa.0493.0.lcssa, i64 %i.xa ; 2 uses
  %i.xb = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !187
  %wide.load2131 = load <2 x ptr>, ptr %i.xb, align 8, !tbaa !187
  %i.xc = getelementptr i8, ptr %next.gep2130, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep2130, align 8, !tbaa !187
  store <2 x ptr> %wide.load2131, ptr %i.xc, align 8, !tbaa !187
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.xd = icmp eq i64 %index.next, %n.vec
  br i1 %i.xd, label %middle.block, label %vector.body, !llvm.loop !232

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.wv, %n.vec
  br i1 %cmp.n, label %._crit_edge1122, label %.lr.ph1121.preheader2137

.lr.ph1121.preheader2137:                         ; preds = %.lr.ph1121.preheader, %middle.block
  %.sroa.0487.11120.ph = phi ptr [ %.sroa.0487.0.lcssa, %.lr.ph1121.preheader ], [ %i.wy, %middle.block ]
  %.sroa.0493.21119.ph = phi ptr [ %.sroa.0493.0.lcssa, %.lr.ph1121.preheader ], [ %i.wz, %middle.block ]
  br label %.lr.ph1121

.lr.ph1121:                                       ; preds = %.lr.ph1121.preheader2137, %.lr.ph1121
  %.sroa.0487.11120 = phi ptr [ %i.xe, %.lr.ph1121 ], [ %.sroa.0487.11120.ph, %.lr.ph1121.preheader2137 ] ; 2 uses
  %.sroa.0493.21119 = phi ptr [ %i.xg, %.lr.ph1121 ], [ %.sroa.0493.21119.ph, %.lr.ph1121.preheader2137 ] ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %.sroa.0487.11120, i64 8 ; 2 uses
  %i.xf = load ptr, ptr %.sroa.0487.11120, align 8, !tbaa !187
  %i.xg = getelementptr inbounds nuw i8, ptr %.sroa.0493.21119, i64 8 ; 2 uses
  store ptr %i.xf, ptr %.sroa.0493.21119, align 8, !tbaa !187
  %.not658 = icmp eq ptr %i.xe, %i.wq
  br i1 %.not658, label %._crit_edge1122, label %.lr.ph1121, !llvm.loop !235

._crit_edge1122:                                  ; preds = %.lr.ph1121, %middle.block, %.preheader665
  %.sroa.0493.2.lcssa = phi ptr [ %.sroa.0493.0.lcssa, %.preheader665 ], [ %i.wz, %middle.block ], [ %i.xg, %.lr.ph1121 ] ; 2 uses
  %i.xh = load ptr, ptr %i.rz, align 8, !tbaa !181 ; 2 uses
  %i.xi = ptrtoint ptr %.sroa.0493.2.lcssa to i64
  %i.xj = ptrtoint ptr %i.xh to i64               ; 2 uses
  %i.xk = sub i64 %i.xi, %i.xj                    ; 2 uses
  %i.xl = ashr exact i64 %i.xk, 3                 ; 3 uses
  %i.xm = ptrtoint ptr %i.wq to i64
  %i.xn = sub i64 %i.xm, %i.xj
  %i.xo = ashr exact i64 %i.xn, 3                 ; 3 uses
  %i.xp = icmp ugt i64 %i.xl, %i.xo
  br i1 %i.xp, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %._crit_edge1122
  %i.xq = sub nuw nsw i64 %i.xl, %i.xo
  invoke void @_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.rz, i64 noundef %i.xq)
          to label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit unwind label %bb.cw

bb.cv:                                            ; preds = %._crit_edge1122
  %i.xr = icmp uge i64 %i.xl, %i.xo
  %.not.i.i448 = icmp eq ptr %i.wq, %.sroa.0493.2.lcssa
  %or.cond = or i1 %i.xr, %.not.i.i448
  br i1 %or.cond, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.cv
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xh, i64 %i.xk
  store ptr %i.xs, ptr %i.sb, align 8, !tbaa !179
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit

bb.cw:                                            ; preds = %bb.cu
  %i.xt = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit: ; preds = %.critedge16, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.cv, %bb.cu, %bb.ca
  %.sroa.0544.13 = phi ptr [ %.sroa.0544.71125, %bb.ca ], [ %.sroa.0544.8.lcssa, %bb.cu ], [ %.sroa.0544.8.lcssa, %bb.cv ], [ %.sroa.0544.8.lcssa, %.critedge16 ], [ %.sroa.0544.8.lcssa, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i ] ; 2 uses
  %.sroa.17.11 = phi ptr [ %.sroa.17.61126, %bb.ca ], [ %.sroa.17.7.lcssa, %bb.cu ], [ %.sroa.17.7.lcssa, %bb.cv ], [ %.sroa.17.7.lcssa, %.critedge16 ], [ %.sroa.17.7.lcssa, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i ] ; 2 uses
  %.sroa.30.11 = phi ptr [ %.sroa.30.61127, %bb.ca ], [ %.sroa.30.7.lcssa, %bb.cu ], [ %.sroa.30.7.lcssa, %bb.cv ], [ %.sroa.30.7.lcssa, %.critedge16 ], [ %.sroa.30.7.lcssa, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i ] ; 2 uses
  %.9 = phi i32 [ %.32511130, %bb.ca ], [ %.4.lcssa, %bb.cu ], [ %.4.lcssa, %bb.cv ], [ %.4.lcssa, %.critedge16 ], [ %.4.lcssa, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.xu = phi <2 x i64> [ %i.rn, %bb.ca ], [ %i.wo, %bb.cu ], [ %i.wo, %bb.cv ], [ %i.wo, %.critedge16 ], [ %i.wo, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i ]
  %.not330 = icmp eq i32 %.9, 0
  br i1 %.not330, label %.critedge385, label %bb.bz

.critedge14:                                      ; preds = %bb.bz, %bb.bs
  %.sroa.0544.15 = phi ptr [ %.sroa.0544.611322119, %bb.bs ], [ %.sroa.0544.71125, %bb.bz ] ; 2 uses
  %.sroa.17.12 = phi ptr [ %.sroa.17.511332118, %bb.bs ], [ %.sroa.17.61126, %bb.bz ] ; 2 uses
  %.sroa.30.12 = phi ptr [ %.sroa.30.511342117, %bb.bs ], [ %.sroa.30.61127, %bb.bz ] ; 2 uses
  %.sroa.0509.2 = phi ptr [ %.sroa.0509.111352116, %bb.bs ], [ %.sroa.0509.8, %bb.bz ] ; 2 uses
  %.sroa.14.2 = phi ptr [ %.sroa.14.111362115, %bb.bs ], [ %.sroa.14.6, %bb.bz ] ; 2 uses
  %.sroa.23.2 = phi ptr [ %.sroa.23.111372114, %bb.bs ], [ %.sroa.23.5, %bb.bz ] ; 2 uses
  %.sroa.0191.1 = phi i64 [ %.sroa.0191.011402111, %bb.bs ], [ %i.rh, %bb.bz ]
  %.10 = phi i32 [ %.225011412110, %bb.bs ], [ %.32511130, %bb.bz ]
  %.sroa.7.2 = phi i64 [ %.sroa.7.011432108, %bb.bs ], [ %.sroa.7.11131, %bb.bz ]
  %i.xv = phi <2 x i64> [ %i.pt, %bb.bs ], [ %i.rn, %bb.bz ]
  %i.xw = load i64, ptr %i.a, align 8, !tbaa !166
  %i.xx = icmp slt i64 %i.xw, %.0239
  br i1 %i.xx, label %.lr.ph2121, label %.critedge385

bb.cx:                                            ; preds = %.lr.ph2121
  %i.xy = add nsw i64 %.02531168, 1
  %i.xz = load i64, ptr %i.me, align 8, !tbaa !236
  %i.ya = add nsw i64 %i.xz, 1
  store i64 %i.ya, ptr %i.me, align 8, !tbaa !236
  %i.yb = load ptr, ptr %i.ly, align 8, !tbaa !199
  invoke void @_ZN7CaDiCaL8External28push_zero_on_extension_stackEv(ptr noundef nonnull align 8 dereferenceable(568) %i.yb)
          to label %bb.cy unwind label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.yc = load ptr, ptr %i.c, align 8, !tbaa !186 ; 2 uses
  %i.yd = load ptr, ptr %i.d, align 8, !tbaa !186 ; 2 uses
  %.not6541144 = icmp eq ptr %i.yc, %i.yd
  br i1 %.not6541144, label %._crit_edge1148, label %.lr.ph1147

._crit_edge1148:                                  ; preds = %_ZNK7CaDiCaL8Internal18is_autarky_literalEi.exit451.thread, %bb.cy
  %i.ye = load ptr, ptr %i.mf, align 8, !tbaa !237 ; 2 uses
  %.not328 = icmp eq ptr %i.ye, null
  br i1 %.not328, label %bb.dd, label %bb.dc

bb.cz:                                            ; preds = %bb.de, %bb.dd, %bb.dc, %bb.cx
  %i.yf = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph1147:                                       ; preds = %bb.cy, %_ZNK7CaDiCaL8Internal18is_autarky_literalEi.exit451.thread
  %.sroa.0473.01145 = phi ptr [ %i.yu, %_ZNK7CaDiCaL8Internal18is_autarky_literalEi.exit451.thread ], [ %i.yc, %bb.cy ] ; 2 uses
  %i.yg = load i32, ptr %.sroa.0473.01145, align 4, !tbaa !171 ; 3 uses
  %i.yh = load ptr, ptr %i.mb, align 8, !tbaa !164
  %i.yi = sext i32 %i.yg to i64
  %i.yj = getelementptr inbounds i8, ptr %i.yh, i64 %i.yi
  %i.yk = load i8, ptr %i.yj, align 1, !tbaa !165
  %i.yl = icmp sgt i8 %i.yk, 0
  br i1 %i.yl, label %_ZNK7CaDiCaL8Internal18is_autarky_literalEi.exit451, label %_ZNK7CaDiCaL8Internal18is_autarky_literalEi.exit451.thread

_ZNK7CaDiCaL8Internal18is_autarky_literalEi.exit451: ; preds = %.lr.ph1147
  %i.ym = tail call noundef i32 @llvm.abs.i32(i32 %i.yg, i1 true)
  %i.yn = zext nneg i32 %i.ym to i64
  %i.yo = load ptr, ptr %i.ma, align 8, !tbaa !192
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 %i.yn
  %i.yq = load i8, ptr %i.yp, align 1, !tbaa !165
  %i.yr = and i8 %i.yq, 1
  %.not.i450 = icmp eq i8 %i.yr, 0
  br i1 %.not.i450, label %bb.da, label %_ZNK7CaDiCaL8Internal18is_autarky_literalEi.exit451.thread

bb.da:                                            ; preds = %_ZNK7CaDiCaL8Internal18is_autarky_literalEi.exit451
  %i.ys = load ptr, ptr %i.ly, align 8, !tbaa !199
  invoke void @_ZN7CaDiCaL8External39push_witness_literal_on_extension_stackEi(ptr noundef nonnull align 8 dereferenceable(568) %i.ys, i32 noundef %i.yg)
          to label %_ZNK7CaDiCaL8Internal18is_autarky_literalEi.exit451.thread unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.yt = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK7CaDiCaL8Internal18is_autarky_literalEi.exit451.thread: ; preds = %.lr.ph1147, %bb.da, %_ZNK7CaDiCaL8Internal18is_autarky_literalEi.exit451
  %i.yu = getelementptr inbounds nuw i8, ptr %.sroa.0473.01145, i64 4 ; 2 uses
  %.not654 = icmp eq ptr %i.yu, %i.yd
  br i1 %.not654, label %._crit_edge1148, label %.lr.ph1147

bb.dc:                                            ; preds = %._crit_edge1148
  %i.yv = load ptr, ptr %.sroa.0502.01167, align 8, !tbaa !187
  invoke void @_ZN7CaDiCaL5Proof12weaken_minusEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(128) %i.ye, ptr noundef %i.yv)
          to label %bb.dd unwind label %bb.cz

bb.dd:                                            ; preds = %bb.dc, %._crit_edge1148
  %i.yw = load ptr, ptr %i.ly, align 8, !tbaa !199
  %i.yx = load ptr, ptr %.sroa.0502.01167, align 8, !tbaa !187
  invoke void @_ZN7CaDiCaL8External30push_clause_on_extension_stackEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(568) %i.yw, ptr noundef %i.yx)
          to label %bb.de unwind label %bb.cz

bb.de:                                            ; preds = %bb.dd
  %i.yy = load ptr, ptr %.sroa.0502.01167, align 8, !tbaa !187
  invoke void @_ZN7CaDiCaL8Internal12mark_garbageEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(5704) %0, ptr noundef %i.yy)
          to label %bb.df unwind label %bb.cz

bb.df:                                            ; preds = %bb.de
  %i.yz = load i64, ptr %i.mg, align 8, !tbaa !238
  %i.za = add i64 %i.yz, %.sroa.0191.011402111
  store i64 %i.za, ptr %i.mg, align 8, !tbaa !238
  %i.zb = load i64, ptr %i.mh, align 8, !tbaa !239
  %2 = load i64, ptr %i.mi, align 8, !tbaa !240
  %3 = insertelement <2 x i64> poison, i64 %2, i64 0
  %i.zc = insertelement <2 x i64> %3, i64 %i.zb, i64 1
  %i.zd = add <2 x i64> %i.zc, %i.pt              ; 2 uses
  %i.ze = extractelement <2 x i64> %i.zd, i64 1
  store i64 %i.ze, ptr %i.mh, align 8, !tbaa !239
  %i.zf = extractelement <2 x i64> %i.zd, i64 0
  store i64 %i.zf, ptr %i.mi, align 8, !tbaa !240
  %i.zg = load i64, ptr %i.mj, align 8, !tbaa !241
  %i.zh = add i64 %i.zg, %.sroa.0197.0.lcssa
  store i64 %i.zh, ptr %i.mj, align 8, !tbaa !241
  br label %.critedge385

.critedge385:                                     ; preds = %.critedge14, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit, %bb.br, %bb.df
  %.sroa.0544.6854 = phi ptr [ %.sroa.0544.611322119, %bb.df ], [ %.sroa.0544.13, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit ], [ %.sroa.0544.51161, %bb.br ], [ %.sroa.0544.15, %.critedge14 ] ; 3 uses
  %.sroa.17.5845 = phi ptr [ %.sroa.17.511332118, %bb.df ], [ %.sroa.17.11, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit ], [ %.sroa.17.41162, %bb.br ], [ %.sroa.17.12, %.critedge14 ] ; 3 uses
  %.sroa.30.5836 = phi ptr [ %.sroa.30.511342117, %bb.df ], [ %.sroa.30.11, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit ], [ %.sroa.30.41163, %bb.br ], [ %.sroa.30.12, %.critedge14 ] ; 2 uses
  %.sroa.0509.1825 = phi ptr [ %.sroa.0509.111352116, %bb.df ], [ %.sroa.0509.8, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit ], [ %.sroa.0509.01164, %bb.br ], [ %.sroa.0509.2, %.critedge14 ] ; 4 uses
  %.sroa.14.1816 = phi ptr [ %.sroa.14.111362115, %bb.df ], [ %.sroa.14.6, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit ], [ %.sroa.14.01165, %bb.br ], [ %.sroa.14.2, %.critedge14 ] ; 3 uses
  %.sroa.23.1807 = phi ptr [ %.sroa.23.111372114, %bb.df ], [ %.sroa.23.5, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit ], [ %.sroa.23.01166, %bb.br ], [ %.sroa.23.2, %.critedge14 ] ; 2 uses
  %.1254 = phi i64 [ %i.xy, %bb.df ], [ %.02531168, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit ], [ %.02531168, %bb.br ], [ %.02531168, %.critedge14 ] ; 2 uses
  %i.zi = icmp eq ptr %.sroa.0509.1825, %.sroa.14.1816
  br i1 %i.zi, label %.loopexit677, label %.preheader676

.preheader676:                                    ; preds = %.critedge385, %.preheader676
  %.sroa.14.31149 = phi ptr [ %i.zj, %.preheader676 ], [ %.sroa.14.1816, %.critedge385 ]
  %i.zj = getelementptr inbounds i8, ptr %.sroa.14.31149, i64 -4 ; 4 uses
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !171 ; 2 uses
  %i.zl = load ptr, ptr %i.mb, align 8, !tbaa !164
  %i.zm = sext i32 %i.zk to i64
  %i.zn = getelementptr inbounds i8, ptr %i.zl, i64 %i.zm
  store i8 1, ptr %i.zn, align 1, !tbaa !165
  %i.zo = load ptr, ptr %i.mb, align 8, !tbaa !164
  %i.zp = sub nsw i32 0, %i.zk
  %i.zq = sext i32 %i.zp to i64
  %i.zr = getelementptr inbounds i8, ptr %i.zo, i64 %i.zq
  store i8 -1, ptr %i.zr, align 1, !tbaa !165
  %i.zs = icmp eq ptr %.sroa.0509.1825, %i.zj
  br i1 %i.zs, label %.loopexit677, label %.preheader676

.loopexit677:                                     ; preds = %.preheader676, %.critedge385
  %.sroa.14.4 = phi ptr [ %.sroa.14.1816, %.critedge385 ], [ %i.zj, %.preheader676 ] ; 2 uses
  %i.zt = ptrtoint ptr %.sroa.17.5845 to i64
  %i.zu = ptrtoint ptr %.sroa.0544.6854 to i64    ; 2 uses
  %i.zv = sub i64 %i.zt, %i.zu
  %i.zw = ashr exact i64 %i.zv, 2
  %i.zx = icmp ult i64 %.sroa.10.0.lcssa, %i.zw
  br i1 %i.zx, label %.lr.ph1151, label %.loopexit675

.lr.ph1151:                                       ; preds = %.loopexit677, %.lr.ph1151
  %.sroa.17.131150 = phi ptr [ %i.zy, %.lr.ph1151 ], [ %.sroa.17.5845, %.loopexit677 ]
  %i.zy = getelementptr inbounds i8, ptr %.sroa.17.131150, i64 -4 ; 4 uses
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !171
  %i.aaa = tail call noundef i32 @llvm.abs.i32(i32 %i.zz, i1 true)
  %i.aab = zext nneg i32 %i.aaa to i64
  %i.aac = load ptr, ptr %i.ma, align 8, !tbaa !192
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 %i.aab ; 2 uses
  %i.aae = load i8, ptr %i.aad, align 1, !tbaa !165
  %i.aaf = and i8 %i.aae, -2
  store i8 %i.aaf, ptr %i.aad, align 1, !tbaa !165
  %i.aag = ptrtoint ptr %i.zy to i64
  %i.aah = sub i64 %i.aag, %i.zu
  %i.aai = ashr exact i64 %i.aah, 2
  %i.aaj = icmp ult i64 %.sroa.10.0.lcssa, %i.aai
  br i1 %i.aaj, label %.lr.ph1151, label %.loopexit675

.loopexit675:                                     ; preds = %.lr.ph1151, %.loopexit677
  %.sroa.17.14 = phi ptr [ %.sroa.17.5845, %.loopexit677 ], [ %i.zy, %.lr.ph1151 ] ; 2 uses
  %i.aak = load ptr, ptr %.sroa.0502.01167, align 8, !tbaa !187 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 16
  %i.aam = load i32, ptr %i.aal, align 8, !tbaa !171
  %.not3291153 = icmp eq i32 %i.aam, 0
  br i1 %.not3291153, label %.critedge381, label %.lr.ph1156.preheader

.lr.ph1156.preheader:                             ; preds = %.loopexit675
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aak, i64 24
  br label %.lr.ph1156

.lr.ph1156:                                       ; preds = %.lr.ph1156.preheader, %.lr.ph1156
  %.02381154 = phi ptr [ %i.aav, %.lr.ph1156 ], [ %i.aan, %.lr.ph1156.preheader ] ; 2 uses
  %i.aao = load i32, ptr %.02381154, align 4, !tbaa !171
  %i.aap = tail call noundef i32 @llvm.abs.i32(i32 %i.aao, i1 true)
  %i.aaq = zext nneg i32 %i.aap to i64
  %i.aar = load ptr, ptr %i.ma, align 8, !tbaa !192
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 %i.aaq ; 2 uses
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !165
  %i.aau = and i8 %i.aat, 63
  store i8 %i.aau, ptr %i.aas, align 1, !tbaa !165
  %i.aav = getelementptr inbounds nuw i8, ptr %.02381154, i64 4 ; 2 uses
  %i.aaw = load ptr, ptr %.sroa.0502.01167, align 8, !tbaa !187 ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 24
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aaw, i64 16
  %i.aaz = load i32, ptr %i.aay, align 8, !tbaa !171
  %i.aba = sext i32 %i.aaz to i64
  %i.abb = getelementptr inbounds [4 x i8], ptr %i.aax, i64 %i.aba
  %.not329 = icmp eq ptr %i.aav, %i.abb
  br i1 %.not329, label %.critedge381, label %.lr.ph1156, !llvm.loop !242

.critedge381:                                     ; preds = %.lr.ph1156, %.lr.ph1159, %.loopexit675, %.preheader672, %bb.bg
  %.sroa.0544.17 = phi ptr [ %.sroa.0544.51161, %.preheader672 ], [ %.sroa.0544.51161, %bb.bg ], [ %.sroa.0544.6854, %.loopexit675 ], [ %.sroa.0544.51161, %.lr.ph1159 ], [ %.sroa.0544.6854, %.lr.ph1156 ] ; 2 uses
  %.sroa.17.15 = phi ptr [ %.sroa.17.41162, %.preheader672 ], [ %.sroa.17.41162, %bb.bg ], [ %.sroa.17.14, %.loopexit675 ], [ %.sroa.17.41162, %.lr.ph1159 ], [ %.sroa.17.14, %.lr.ph1156 ] ; 2 uses
  %.sroa.30.13 = phi ptr [ %.sroa.30.41163, %.preheader672 ], [ %.sroa.30.41163, %bb.bg ], [ %.sroa.30.5836, %.loopexit675 ], [ %.sroa.30.41163, %.lr.ph1159 ], [ %.sroa.30.5836, %.lr.ph1156 ] ; 2 uses
  %.sroa.0509.4 = phi ptr [ %.sroa.0509.01164, %.preheader672 ], [ %.sroa.0509.01164, %bb.bg ], [ %.sroa.0509.1825, %.loopexit675 ], [ %.sroa.0509.01164, %.lr.ph1159 ], [ %.sroa.0509.1825, %.lr.ph1156 ] ; 2 uses
  %.sroa.14.5 = phi ptr [ %.sroa.14.01165, %.preheader672 ], [ %.sroa.14.01165, %bb.bg ], [ %.sroa.14.4, %.loopexit675 ], [ %.sroa.14.01165, %.lr.ph1159 ], [ %.sroa.14.4, %.lr.ph1156 ]
  %.sroa.23.3 = phi ptr [ %.sroa.23.01166, %.preheader672 ], [ %.sroa.23.01166, %bb.bg ], [ %.sroa.23.1807, %.loopexit675 ], [ %.sroa.23.01166, %.lr.ph1159 ], [ %.sroa.23.1807, %.lr.ph1156 ] ; 2 uses
  %.4257 = phi i64 [ %.02531168, %.preheader672 ], [ %.02531168, %bb.bg ], [ %.1254, %.loopexit675 ], [ %.02531168, %.lr.ph1159 ], [ %.1254, %.lr.ph1156 ] ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %.sroa.0502.01167, i64 8 ; 2 uses
  %i.abd = icmp eq ptr %i.abc, %.sroa.13.0.lcssa
  br i1 %i.abd, label %.critedge381.thread, label %bb.bg

.critedge381.thread:                              ; preds = %.critedge381, %bb.bo, %bb.bh, %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS2_16less_conditionedEEvT_SB_T0_.exit, %.sink.split.i
  %.sroa.0544.5934 = phi ptr [ %.sroa.0544.51161, %.sink.split.i ], [ %.sroa.0544.0.lcssa, %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS2_16less_conditionedEEvT_SB_T0_.exit ], [ %.sroa.0544.17, %.critedge381 ], [ %.sroa.0544.51161, %bb.bo ], [ %.sroa.0544.51161, %bb.bh ] ; 6 uses
  %.sroa.17.4922 = phi ptr [ %.sroa.17.41162, %.sink.split.i ], [ %.sroa.17.0573.lcssa, %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS2_16less_conditionedEEvT_SB_T0_.exit ], [ %.sroa.17.15, %.critedge381 ], [ %.sroa.17.41162, %bb.bo ], [ %.sroa.17.41162, %bb.bh ] ; 2 uses
  %.sroa.30.4910 = phi ptr [ %.sroa.30.41163, %.sink.split.i ], [ %.sroa.30.0.lcssa, %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS2_16less_conditionedEEvT_SB_T0_.exit ], [ %.sroa.30.13, %.critedge381 ], [ %.sroa.30.41163, %bb.bo ], [ %.sroa.30.41163, %bb.bh ]
  %.sroa.0509.0898 = phi ptr [ %.sroa.0509.01164, %.sink.split.i ], [ null, %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS2_16less_conditionedEEvT_SB_T0_.exit ], [ %.sroa.0509.4, %.critedge381 ], [ %.sroa.0509.01164, %bb.bo ], [ %.sroa.0509.01164, %bb.bh ] ; 4 uses
  %.sroa.23.0886 = phi ptr [ %.sroa.23.01166, %.sink.split.i ], [ null, %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS2_16less_conditionedEEvT_SB_T0_.exit ], [ %.sroa.23.3, %.critedge381 ], [ %.sroa.23.01166, %bb.bo ], [ %.sroa.23.01166, %bb.bh ]
  %.0253874 = phi i64 [ %.02531168, %.sink.split.i ], [ 0, %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS2_16less_conditionedEEvT_SB_T0_.exit ], [ %.4257, %.critedge381 ], [ %.02531168, %bb.bo ], [ %.02531168, %bb.bh ]
  %.not6591190 = icmp eq ptr %.sroa.0544.5934, %.sroa.17.4922
  br i1 %.not6591190, label %._crit_edge1193, label %.lr.ph1192

.lr.ph1192:                                       ; preds = %.critedge381.thread
  %i.abe = getelementptr inbounds nuw i8, ptr %0, i64 480
  br label %bb.dm

._crit_edge1193:                                  ; preds = %bb.dm, %.critedge381.thread
  %.not.i452 = icmp eq ptr %.sroa.23.0886, %.sroa.0509.0898
  br i1 %.not.i452, label %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit, label %bb.dg

bb.dg:                                            ; preds = %._crit_edge1193
  %.not.i.i.i.i453 = icmp eq ptr %.sroa.0509.0898, null
  br i1 %.not.i.i.i.i453, label %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0509.0898) #15
  br label %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit

_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit: ; preds = %._crit_edge1193, %bb.dg, %bb.dh
  %.sroa.0509.9 = phi ptr [ %.sroa.0509.0898, %._crit_edge1193 ], [ null, %bb.dg ], [ null, %bb.dh ] ; 3 uses
  %.not.i454 = icmp eq ptr %.sroa.30.4910, %.sroa.0544.5934
  br i1 %.not.i454, label %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit456, label %bb.di

bb.di:                                            ; preds = %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit
  %.not.i.i.i.i455 = icmp eq ptr %.sroa.0544.5934, null
  br i1 %.not.i.i.i.i455, label %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit456, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0544.5934) #15
  br label %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit456

_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit456: ; preds = %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit, %bb.di, %bb.dj
  %.sroa.0544.24 = phi ptr [ %.sroa.0544.5934, %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit ], [ null, %bb.di ], [ null, %bb.dj ] ; 3 uses
  br i1 %.sroa.19.0.lcssa, label %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit, label %bb.dk

bb.dk:                                            ; preds = %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit456
  %.not.i.i.i.i458 = icmp eq ptr %.sroa.0533.0.lcssa, null
  br i1 %.not.i.i.i.i458, label %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0533.0.lcssa) #15
  br label %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit

_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit: ; preds = %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit456, %bb.dk, %bb.dl
  %.sroa.0533.7 = phi ptr [ %.sroa.0533.0.lcssa, %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit456 ], [ null, %bb.dk ], [ null, %bb.dl ] ; 3 uses
  %i.abf = load ptr, ptr %i.d, align 8, !tbaa !167 ; 2 uses
  %i.abg = load ptr, ptr %i.c, align 8, !tbaa !168
  %i.abh = ptrtoint ptr %i.abf to i64
  %i.abi = ptrtoint ptr %i.abg to i64
  %i.abj = sub i64 %i.abh, %i.abi
  %i.abk = icmp ugt i64 %i.abj, %i.i
  br i1 %i.abk, label %.lr.ph1194, label %._crit_edge1195

.lr.ph1194:                                       ; preds = %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit
  %i.abl = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  br label %bb.dn

bb.dm:                                            ; preds = %.lr.ph1192, %bb.dm
  %.sroa.0469.01191 = phi ptr [ %.sroa.0544.5934, %.lr.ph1192 ], [ %i.abt, %bb.dm ] ; 2 uses
  %i.abm = load i32, ptr %.sroa.0469.01191, align 4, !tbaa !171
  %i.abn = tail call noundef i32 @llvm.abs.i32(i32 %i.abm, i1 true)
  %i.abo = zext nneg i32 %i.abn to i64
  %i.abp = load ptr, ptr %i.abe, align 8, !tbaa !192
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 %i.abo ; 2 uses
  %i.abr = load i8, ptr %i.abq, align 1, !tbaa !165
  %i.abs = and i8 %i.abr, -2
  store i8 %i.abs, ptr %i.abq, align 1, !tbaa !165
  %i.abt = getelementptr inbounds nuw i8, ptr %.sroa.0469.01191, i64 4 ; 2 uses
  %.not659 = icmp eq ptr %i.abt, %.sroa.17.4922
  br i1 %.not659, label %._crit_edge1193, label %bb.dm

bb.dn:                                            ; preds = %.lr.ph1194, %bb.dn
  %i.abu = phi ptr [ %i.abf, %.lr.ph1194 ], [ %i.ace, %bb.dn ]
  %i.abv = getelementptr inbounds i8, ptr %i.abu, i64 -4 ; 2 uses
  %i.abw = load i32, ptr %i.abv, align 4, !tbaa !171 ; 2 uses
  store ptr %i.abv, ptr %i.d, align 8, !tbaa !167
  %i.abx = load ptr, ptr %i.abl, align 8, !tbaa !164
  %i.aby = sext i32 %i.abw to i64
  %i.abz = getelementptr inbounds i8, ptr %i.abx, i64 %i.aby
  store i8 0, ptr %i.abz, align 1, !tbaa !165
  %i.aca = load ptr, ptr %i.abl, align 8, !tbaa !164
  %i.acb = sub nsw i32 0, %i.abw
  %i.acc = sext i32 %i.acb to i64
  %i.acd = getelementptr inbounds i8, ptr %i.aca, i64 %i.acc
  store i8 0, ptr %i.acd, align 1, !tbaa !165
end_hunk_0
