Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/btree_test?download=true
inline.NumInlined: 114243
inline.NumDeleted: 30281
loop-unroll.NumCompletelyUnrolled: 135
loop-unroll.NumRuntimeUnrolled: 618
loop-unroll.NumUnrolled: 756
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESA_IbLb1EEEEEE5mergeEPSE_PS9_:bb.a
  %i.cr = trunc i32 %i.bf to i8
  %.033.i = add i8 %i.cr, 1                       ; 2 uses
  %.not34.i = icmp ugt i8 %.033.i, %i.bd
  br i1 %.not34.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESA_IbLb1EEEEEE13remove_valuesEhhPS9_.exit, label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %.preheader.i, %.lr.ph37.i
  %.035.i = phi i8 [ %.0.i, %.lr.ph37.i ], [ %.033.i, %.preheader.i ] ; 3 uses
  %i.cs = add i8 %.035.i, -1                      ; 2 uses
  %i.ct = zext i8 %.035.i to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !1179 ; 2 uses
  %i.cw = zext i8 %i.cs to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cw
  store ptr %i.cv, ptr %i.cx, align 8, !tbaa !1179
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i8 %i.cs, ptr %i.cy, align 1, !tbaa !794
  %.0.i = add i8 %.035.i, 1                       ; 2 uses
  %.not.i22 = icmp ugt i8 %.0.i, %i.bd
  br i1 %.not.i22, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESA_IbLb1EEEEEE13remove_valuesEhhPS9_.exit, label %.lr.ph37.i, !llvm.loop !216

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESA_IbLb1EEEEEE13remove_valuesEhhPS9_.exit: ; preds = %.lr.ph37.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJSt4lessIiESaISt4pairIKiiEESt17integral_constantIiLi256EESA_IbLb1EEEEEE10transfer_nEmmmPSE_PS9_.exit.i, %.preheader.i
  %i.cz = add i8 %i.bd, -1
  store i8 %i.cz, ptr %i.bc, align 1, !tbaa !794
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIiiESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %.not101 = icmp eq ptr %2, %3
  br i1 %.not101, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 6 uses
  %i.d = sub i64 %i.b, %i.c                       ; 8 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !995
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !992  ; 17 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 7 uses
  %i.l = sub i64 %i.j, %i.k
  %.not = icmp ult i64 %i.l, %i.d
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.k, %i.m                       ; 6 uses
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, %i.e
  br i1 %i.p, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.d
  %i.q = getelementptr inbounds i8, ptr %i.i, i64 %.idx ; 6 uses
  %i.r = add i64 %i.b, -8
  %i.s = sub i64 %i.r, %i.c                       ; 2 uses
  %i.t = lshr i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check188 = icmp ult i64 %i.s, 56
  %diff.check190 = icmp ult i64 %i.d, 32
  %or.cond = or i1 %min.iters.check188, %diff.check190
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph191

vector.ph191:                                     ; preds = %bb.d
  %n.vec192 = and i64 %i.u, 4611686018427387900   ; 3 uses
  %i.v = shl i64 %n.vec192, 3                     ; 2 uses
  %i.w = getelementptr i8, ptr %i.i, i64 %i.v
  %i.x = getelementptr i8, ptr %i.q, i64 %i.v
  br label %vector.body193

vector.body193:                                   ; preds = %vector.body193, %vector.ph191
  %index194 = phi i64 [ 0, %vector.ph191 ], [ %index.next199, %vector.body193 ] ; 2 uses
  %i.y = shl i64 %index194, 3                     ; 2 uses
  %next.gep195 = getelementptr i8, ptr %i.i, i64 %i.y ; 2 uses
  %next.gep196 = getelementptr i8, ptr %i.q, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep196, i64 16
  %wide.load197 = load <2 x i64>, ptr %next.gep196, align 4
  %wide.load198 = load <2 x i64>, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %next.gep195, i64 16
  store <2 x i64> %wide.load197, ptr %next.gep195, align 4
  store <2 x i64> %wide.load198, ptr %i.aa, align 4
  %index.next199 = add nuw i64 %index194, 4       ; 2 uses
  %i.ab = icmp eq i64 %index.next199, %n.vec192
  br i1 %i.ab, label %middle.block200, label %vector.body193, !llvm.loop !7339

middle.block200:                                  ; preds = %vector.body193
  %cmp.n201 = icmp eq i64 %i.u, %n.vec192
  br i1 %cmp.n201, label %_ZSt22__uninitialized_move_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %middle.block200
  %.013.i.i.i.i.i.ph = phi ptr [ %i.i, %bb.d ], [ %i.w, %middle.block200 ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.q, %bb.d ], [ %i.x, %middle.block200 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ac = load i64, ptr %.sroa.08.012.i.i.i.i.i, align 4
  store i64 %i.ac, ptr %.013.i.i.i.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !7340

_ZSt22__uninitialized_move_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block200
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !992
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.d
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !992
  %i.ah = ptrtoint ptr %i.q to i64
  %i.ai = sub i64 %i.ah, %i.m
  %i.aj = ashr exact i64 %i.ai, 3                 ; 5 uses
  %i.ak = icmp sgt i64 %i.aj, 0
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i51.preheader, label %_ZSt13move_backwardIPSt4pairIiiES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i51.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %xtraiter = and i64 %i.aj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i51.prol.loopexit, label %.lr.ph.i.i.i.i.i51.prol

.lr.ph.i.i.i.i.i51.prol:                          ; preds = %.lr.ph.i.i.i.i.i51.preheader, %.lr.ph.i.i.i.i.i51.prol
  %.010.i.i.i.i.i.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i51.prol ], [ %i.aj, %.lr.ph.i.i.i.i.i51.preheader ]
  %.069.i.i.i.i.i.prol = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i51.prol ], [ %i.i, %.lr.ph.i.i.i.i.i51.preheader ] ; 2 uses
  %.078.i.i.i.i.i.prol = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i51.prol ], [ %i.q, %.lr.ph.i.i.i.i.i51.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i51.prol ], [ 0, %.lr.ph.i.i.i.i.i51.preheader ]
  %i.al = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.am = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.an = load i32, ptr %i.al, align 4, !tbaa !783
  store i32 %i.an, ptr %i.am, align 4, !tbaa !1005
  %i.ao = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.prol, i64 -4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !783
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.prol, i64 -4
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !1008
  %i.ar = add nsw i64 %.010.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i51.prol.loopexit, label %.lr.ph.i.i.i.i.i51.prol, !llvm.loop !7341

.lr.ph.i.i.i.i.i51.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i51.prol, %.lr.ph.i.i.i.i.i51.preheader
  %.010.i.i.i.i.i.unr = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i51.preheader ], [ %i.ar, %.lr.ph.i.i.i.i.i51.prol ]
  %.069.i.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i51.preheader ], [ %i.am, %.lr.ph.i.i.i.i.i51.prol ]
  %.078.i.i.i.i.i.unr = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i51.preheader ], [ %i.al, %.lr.ph.i.i.i.i.i51.prol ]
  %i.as = icmp ult i64 %i.aj, 4
  br i1 %i.as, label %_ZSt13move_backwardIPSt4pairIiiES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i51

.lr.ph.i.i.i.i.i51:                               ; preds = %.lr.ph.i.i.i.i.i51.prol.loopexit, %.lr.ph.i.i.i.i.i51
  %.010.i.i.i.i.i = phi i64 [ %i.br, %.lr.ph.i.i.i.i.i51 ], [ %.010.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i51.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i51 ], [ %.069.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i51.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i51 ], [ %.078.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i51.prol.loopexit ] ; 8 uses
  %i.at = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.au = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.av = load i32, ptr %i.at, align 4, !tbaa !783
  store i32 %i.av, ptr %i.au, align 4, !tbaa !1005
  %i.aw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !783
  %i.ay = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -4
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !1008
  %i.az = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  %i.ba = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !783
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !1005
  %i.bc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -12
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !783
  %i.be = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -12
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !1008
  %i.bf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.bg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !783
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !1005
  %i.bi = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -20
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !783
  %i.bk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -20
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !1008
  %i.bl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 2 uses
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !783
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !1005
  %i.bo = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -28
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !783
  %i.bq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -28
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !1008
  %i.br = add nsw i64 %.010.i.i.i.i.i, -4
  %i.bs = icmp sgt i64 %.010.i.i.i.i.i, 4
  br i1 %i.bs, label %.lr.ph.i.i.i.i.i51, label %_ZSt13move_backwardIPSt4pairIiiES2_ET0_T_S4_S3_.exit, !llvm.loop !92

_ZSt13move_backwardIPSt4pairIiiES2_ET0_T_S4_S3_.exit: ; preds = %.lr.ph.i.i.i.i.i51.prol.loopexit, %.lr.ph.i.i.i.i.i51, %_ZSt22__uninitialized_move_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.bt = icmp sgt i64 %i.e, 0
  br i1 %i.bt, label %.lr.ph.i.i.i.i.i52.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

.lr.ph.i.i.i.i.i52.preheader:                     ; preds = %_ZSt13move_backwardIPSt4pairIiiES2_ET0_T_S4_S3_.exit
  %min.iters.check218 = icmp ult i64 %i.e, 14
  br i1 %min.iters.check218, label %.lr.ph.i.i.i.i.i52.preheader313, label %vector.memcheck219

vector.memcheck219:                               ; preds = %.lr.ph.i.i.i.i.i52.preheader
  %i.bu = add i64 %i.d, -4                        ; 2 uses
  %i.bv = getelementptr i8, ptr %1, i64 %i.bu
  %i.bw = getelementptr i8, ptr %2, i64 %i.bu
  %4 = getelementptr i8, ptr %1, i64 4
  %5 = getelementptr i8, ptr %1, i64 %i.d
  %6 = getelementptr i8, ptr %2, i64 4
  %bound0220 = icmp ult ptr %1, %i.bw
  %bound1221 = icmp ult ptr %2, %i.bv
  %found.conflict222 = and i1 %bound0220, %bound1221
  %bound0223 = icmp ult ptr %4, %3
  %bound1224 = icmp ult ptr %6, %5
  %found.conflict225 = and i1 %bound0223, %bound1224
  %conflict.rdx226 = or i1 %found.conflict222, %found.conflict225
  br i1 %conflict.rdx226, label %.lr.ph.i.i.i.i.i52.preheader313, label %vector.ph227

vector.ph227:                                     ; preds = %vector.memcheck219
  %n.vec228 = and i64 %i.e, 9223372036854775804   ; 3 uses
  %i.bx = and i64 %i.e, 3
  %i.by = shl i64 %n.vec228, 3                    ; 2 uses
  %i.bz = getelementptr i8, ptr %1, i64 %i.by
  %i.ca = getelementptr i8, ptr %2, i64 %i.by
  br label %vector.body229

vector.body229:                                   ; preds = %vector.body229, %vector.ph227
  %index230 = phi i64 [ 0, %vector.ph227 ], [ %index.next243, %vector.body229 ] ; 2 uses
  %i.cb = shl i64 %index230, 3                    ; 3 uses
  %i.cc = or disjoint i64 %i.cb, 16               ; 2 uses
  %next.gep231 = getelementptr i8, ptr %1, i64 %i.cb
  %next.gep232 = getelementptr i8, ptr %1, i64 %i.cc
  %next.gep233 = getelementptr i8, ptr %2, i64 %i.cb
  %next.gep234 = getelementptr i8, ptr %2, i64 %i.cc
  %wide.vec235 = load <4 x i32>, ptr %next.gep233, align 4, !tbaa !783
  %wide.vec238 = load <4 x i32>, ptr %next.gep234, align 4, !tbaa !783
  store <4 x i32> %wide.vec235, ptr %next.gep231, align 4, !tbaa !783
  store <4 x i32> %wide.vec238, ptr %next.gep232, align 4, !tbaa !783
  %index.next243 = add nuw i64 %index230, 4       ; 2 uses
  %i.cd = icmp eq i64 %index.next243, %n.vec228
  br i1 %i.cd, label %middle.block244, label %vector.body229, !llvm.loop !7342

middle.block244:                                  ; preds = %vector.body229
  %cmp.n245 = icmp eq i64 %i.e, %n.vec228
  br i1 %cmp.n245, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.i52.preheader313

.lr.ph.i.i.i.i.i52.preheader313:                  ; preds = %vector.memcheck219, %.lr.ph.i.i.i.i.i52.preheader, %middle.block244
  %.012.i.i.i.i.i.ph = phi i64 [ %i.e, %vector.memcheck219 ], [ %i.e, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.bx, %middle.block244 ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck219 ], [ %1, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.bz, %middle.block244 ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %2, %vector.memcheck219 ], [ %2, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.ca, %middle.block244 ]
  br label %.lr.ph.i.i.i.i.i52

.lr.ph.i.i.i.i.i52:                               ; preds = %.lr.ph.i.i.i.i.i52.preheader313, %.lr.ph.i.i.i.i.i52
  %.012.i.i.i.i.i = phi i64 [ %i.ch, %.lr.ph.i.i.i.i.i52 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i52.preheader313 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i52 ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i52.preheader313 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i52 ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i52.preheader313 ] ; 2 uses
  %i.ce = load <2 x i32>, ptr %.0910.i.i.i.i.i, align 4, !tbaa !783
  store <2 x i32> %i.ce, ptr %.0811.i.i.i.i.i, align 4, !tbaa !783
  %i.cf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.ch = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ci = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i52, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, !llvm.loop !7343

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.cj = getelementptr inbounds i8, ptr %2, i64 %i.n ; 4 uses
  %.not7.i.i.i.i = icmp eq ptr %i.cj, %3
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.ck = add i64 %i.b, %i.m
  %i.cl = add i64 %i.ck, -8
  %i.cm = add i64 %i.k, %i.c
  %i.cn = sub i64 %i.cl, %i.cm                    ; 2 uses
  %i.co = lshr i64 %i.cn, 3
  %i.cp = add nuw nsw i64 %i.co, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cn, 72
  %i.cq = sub i64 %i.c, %i.m
  %diff.check = icmp ugt i64 %i.cq, -32
  %or.cond306 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond306, label %.lr.ph.i.i.i.i.preheader317, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.cp, 4611686018427387900     ; 3 uses
  %i.cr = shl i64 %n.vec, 3                       ; 2 uses
  %i.cs = getelementptr i8, ptr %i.i, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cj, i64 %i.cr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.cu ; 2 uses
  %next.gep129 = getelementptr i8, ptr %i.cj, i64 %i.cu ; 2 uses
  %i.cv = getelementptr i8, ptr %next.gep129, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep129, align 4
  %wide.load130 = load <2 x i64>, ptr %i.cv, align 4
  %i.cw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load130, ptr %i.cw, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !7344

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cp, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i.preheader317

.lr.ph.i.i.i.i.preheader317:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.cs, %middle.block ]
  %.sroa.04.08.i.i.i.i.ph = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.preheader ], [ %i.ct, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader317, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader317 ] ; 2 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader317 ] ; 2 uses
  %i.cy = load i64, ptr %.sroa.04.08.i.i.i.i, align 4
  store i64 %i.cy, ptr %.09.i.i.i.i, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.cz, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !7345

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !992
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.db = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit.loopexit ], [ %i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.dc = ptrtoaddr ptr %i.db to i64
  %i.dd = sub nuw nsw i64 %i.e, %i.o
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.dd ; 6 uses
  store ptr %i.de, ptr %i.h, align 8, !tbaa !992
  %.not11.i.i.i.i.i53 = icmp eq ptr %1, %i.i
  br i1 %.not11.i.i.i.i.i53, label %_ZSt22__uninitialized_move_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit59, label %.lr.ph.i.i.i.i.i54.preheader

.lr.ph.i.i.i.i.i54.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit
  %i.df = add i64 %i.k, -8
  %i.dg = sub i64 %i.df, %i.m                     ; 2 uses
  %i.dh = lshr i64 %i.dg, 3
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %min.iters.check135 = icmp ult i64 %i.dg, 136
  br i1 %min.iters.check135, label %.lr.ph.i.i.i.i.i54.preheader316, label %vector.memcheck136

vector.memcheck136:                               ; preds = %.lr.ph.i.i.i.i.i54.preheader
  %i.dj = add i64 %i.d, %i.dc
  %i.dk = sub i64 %i.k, %i.dj
  %diff.check137 = icmp ugt i64 %i.dk, -32
  br i1 %diff.check137, label %.lr.ph.i.i.i.i.i54.preheader316, label %vector.ph138

vector.ph138:                                     ; preds = %vector.memcheck136
  %n.vec139 = and i64 %i.di, 4611686018427387900  ; 3 uses
  %i.dl = shl i64 %n.vec139, 3                    ; 2 uses
  %i.dm = getelementptr i8, ptr %i.de, i64 %i.dl
  %i.dn = getelementptr i8, ptr %1, i64 %i.dl
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph138
  %index141 = phi i64 [ 0, %vector.ph138 ], [ %index.next146, %vector.body140 ] ; 2 uses
  %i.do = shl i64 %index141, 3                    ; 2 uses
  %next.gep142 = getelementptr i8, ptr %i.de, i64 %i.do ; 2 uses
  %next.gep143 = getelementptr i8, ptr %1, i64 %i.do ; 2 uses
  %i.dp = getelementptr i8, ptr %next.gep143, i64 16
  %wide.load144 = load <2 x i64>, ptr %next.gep143, align 4
  %wide.load145 = load <2 x i64>, ptr %i.dp, align 4
  %i.dq = getelementptr i8, ptr %next.gep142, i64 16
  store <2 x i64> %wide.load144, ptr %next.gep142, align 4
  store <2 x i64> %wide.load145, ptr %i.dq, align 4
  %index.next146 = add nuw i64 %index141, 4       ; 2 uses
  %i.dr = icmp eq i64 %index.next146, %n.vec139
  br i1 %i.dr, label %middle.block147, label %vector.body140, !llvm.loop !7346

middle.block147:                                  ; preds = %vector.body140
  %cmp.n148 = icmp eq i64 %i.di, %n.vec139
  br i1 %cmp.n148, label %_ZSt22__uninitialized_move_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit59.loopexit, label %.lr.ph.i.i.i.i.i54.preheader316

.lr.ph.i.i.i.i.i54.preheader316:                  ; preds = %vector.memcheck136, %.lr.ph.i.i.i.i.i54.preheader, %middle.block147
  %.013.i.i.i.i.i55.ph = phi ptr [ %i.de, %vector.memcheck136 ], [ %i.de, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.dm, %middle.block147 ]
  %.sroa.08.012.i.i.i.i.i56.ph = phi ptr [ %1, %vector.memcheck136 ], [ %1, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.dn, %middle.block147 ]
  br label %.lr.ph.i.i.i.i.i54

.lr.ph.i.i.i.i.i54:                               ; preds = %.lr.ph.i.i.i.i.i54.preheader316, %.lr.ph.i.i.i.i.i54
  %.013.i.i.i.i.i55 = phi ptr [ %i.du, %.lr.ph.i.i.i.i.i54 ], [ %.013.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i54.preheader316 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i56 = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i54 ], [ %.sroa.08.012.i.i.i.i.i56.ph, %.lr.ph.i.i.i.i.i54.preheader316 ] ; 2 uses
  %i.ds = load i64, ptr %.sroa.08.012.i.i.i.i.i56, align 4
  store i64 %i.ds, ptr %.013.i.i.i.i.i55, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i56, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i55, i64 8
  %.not.i.i.i.i.i57 = icmp eq ptr %i.dt, %i.i
  br i1 %.not.i.i.i.i.i57, label %_ZSt22__uninitialized_move_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit59.loopexit, label %.lr.ph.i.i.i.i.i54, !llvm.loop !7347

_ZSt22__uninitialized_move_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit59.loopexit: ; preds = %.lr.ph.i.i.i.i.i54, %middle.block147
  %.pre108 = load ptr, ptr %i.h, align 8, !tbaa !992
  br label %_ZSt22__uninitialized_move_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit59

_ZSt22__uninitialized_move_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit59: ; preds = %_ZSt22__uninitialized_move_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit59.loopexit, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit
  %i.dv = phi ptr [ %.pre108, %_ZSt22__uninitialized_move_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit59.loopexit ], [ %i.de, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.n
  store ptr %i.dw, ptr %i.h, align 8, !tbaa !992
  %i.dx = ashr exact i64 %i.n, 3                  ; 7 uses
  %i.dy = icmp sgt i64 %i.dx, 0
  br i1 %i.dy, label %.lr.ph.i.i.i.i.i61.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

.lr.ph.i.i.i.i.i61.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit59
  %min.iters.check161 = icmp ult i64 %i.dx, 14
  br i1 %min.iters.check161, label %.lr.ph.i.i.i.i.i61.preheader314, label %vector.memcheck162

vector.memcheck162:                               ; preds = %.lr.ph.i.i.i.i.i61.preheader
  %i.dz = add i64 %i.n, -4                        ; 2 uses
  %i.ea = getelementptr i8, ptr %1, i64 %i.dz
  %i.eb = getelementptr i8, ptr %2, i64 %i.dz
  %7 = getelementptr i8, ptr %1, i64 4
  %8 = getelementptr i8, ptr %2, i64 4
  %9 = getelementptr i8, ptr %2, i64 %i.n
  %bound0 = icmp ult ptr %1, %i.eb
  %bound1 = icmp ult ptr %2, %i.ea
  %found.conflict = and i1 %bound0, %bound1
  %bound0163 = icmp ult ptr %7, %9
  %bound1164 = icmp ult ptr %8, %i.i
  %found.conflict165 = and i1 %bound0163, %bound1164
  %conflict.rdx = or i1 %found.conflict, %found.conflict165
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i61.preheader314, label %vector.ph166

vector.ph166:                                     ; preds = %vector.memcheck162
  %n.vec167 = and i64 %i.dx, 9223372036854775804  ; 3 uses
  %i.ec = and i64 %i.dx, 3
  %i.ed = shl i64 %n.vec167, 3                    ; 2 uses
  %i.ee = getelementptr i8, ptr %1, i64 %i.ed
  %i.ef = getelementptr i8, ptr %2, i64 %i.ed
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph166
  %index169 = phi i64 [ 0, %vector.ph166 ], [ %index.next179, %vector.body168 ] ; 2 uses
  %i.eg = shl i64 %index169, 3                    ; 3 uses
  %i.eh = or disjoint i64 %i.eg, 16               ; 2 uses
  %next.gep170 = getelementptr i8, ptr %1, i64 %i.eg
  %next.gep171 = getelementptr i8, ptr %1, i64 %i.eh
  %next.gep172 = getelementptr i8, ptr %2, i64 %i.eg
  %next.gep173 = getelementptr i8, ptr %2, i64 %i.eh
  %wide.vec = load <4 x i32>, ptr %next.gep172, align 4, !tbaa !783
  %wide.vec175 = load <4 x i32>, ptr %next.gep173, align 4, !tbaa !783
  store <4 x i32> %wide.vec, ptr %next.gep170, align 4, !tbaa !783
  store <4 x i32> %wide.vec175, ptr %next.gep171, align 4, !tbaa !783
  %index.next179 = add nuw i64 %index169, 4       ; 2 uses
  %i.ei = icmp eq i64 %index.next179, %n.vec167
  br i1 %i.ei, label %middle.block180, label %vector.body168, !llvm.loop !7348

middle.block180:                                  ; preds = %vector.body168
  %cmp.n181 = icmp eq i64 %i.dx, %n.vec167
  br i1 %cmp.n181, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.i61.preheader314

.lr.ph.i.i.i.i.i61.preheader314:                  ; preds = %vector.memcheck162, %.lr.ph.i.i.i.i.i61.preheader, %middle.block180
  %.012.i.i.i.i.i62.ph = phi i64 [ %i.dx, %vector.memcheck162 ], [ %i.dx, %.lr.ph.i.i.i.i.i61.preheader ], [ %i.ec, %middle.block180 ]
  %.0811.i.i.i.i.i63.ph = phi ptr [ %1, %vector.memcheck162 ], [ %1, %.lr.ph.i.i.i.i.i61.preheader ], [ %i.ee, %middle.block180 ]
  %.0910.i.i.i.i.i64.ph = phi ptr [ %2, %vector.memcheck162 ], [ %2, %.lr.ph.i.i.i.i.i61.preheader ], [ %i.ef, %middle.block180 ]
  br label %.lr.ph.i.i.i.i.i61

.lr.ph.i.i.i.i.i61:                               ; preds = %.lr.ph.i.i.i.i.i61.preheader314, %.lr.ph.i.i.i.i.i61
  %.012.i.i.i.i.i62 = phi i64 [ %i.em, %.lr.ph.i.i.i.i.i61 ], [ %.012.i.i.i.i.i62.ph, %.lr.ph.i.i.i.i.i61.preheader314 ] ; 2 uses
  %.0811.i.i.i.i.i63 = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i61 ], [ %.0811.i.i.i.i.i63.ph, %.lr.ph.i.i.i.i.i61.preheader314 ] ; 2 uses
  %.0910.i.i.i.i.i64 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i61 ], [ %.0910.i.i.i.i.i64.ph, %.lr.ph.i.i.i.i.i61.preheader314 ] ; 2 uses
  %i.ej = load <2 x i32>, ptr %.0910.i.i.i.i.i64, align 4, !tbaa !783
  store <2 x i32> %i.ej, ptr %.0811.i.i.i.i.i63, align 4, !tbaa !783
  %i.ek = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i64, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i63, i64 8
  %i.em = add nsw i64 %.012.i.i.i.i.i62, -1
  %i.en = icmp samesign ugt i64 %.012.i.i.i.i.i62, 1
  br i1 %i.en, label %.lr.ph.i.i.i.i.i61, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, !llvm.loop !7349

bb.e:                                             ; preds = %bb.b
  %i.eo = load ptr, ptr %0, align 8, !tbaa !993   ; 7 uses
  %i.ep = ptrtoint ptr %i.eo to i64               ; 3 uses
  %i.eq = sub i64 %i.k, %i.ep
  %i.er = ashr exact i64 %i.eq, 3                 ; 4 uses
  %i.es = sub nsw i64 1152921504606846975, %i.er
  %i.et = icmp ult i64 %i.es, %i.e
  br i1 %i.et, label %bb.f, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.370) #38
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.er, i64 %i.e)
  %i.eu = add nsw i64 %.sroa.speculated.i, %i.er  ; 2 uses
  %i.ev = icmp ult i64 %i.eu, %i.er
  %i.ew = tail call i64 @llvm.umin.i64(i64 %i.eu, i64 1152921504606846975)
  %i.ex = select i1 %i.ev, i64 1152921504606846975, i64 %i.ew ; 3 uses
  %.not.i = icmp eq i64 %i.ex, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ey = shl nuw nsw i64 %i.ex, 3
  %i.ez = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ey) #35
  br label %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit, %bb.g
  %i.fa = phi ptr [ %i.ez, %bb.g ], [ null, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %.not11.i.i.i.i.i66 = icmp eq ptr %i.eo, %1
  br i1 %.not11.i.i.i.i.i66, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i67.preheader

.lr.ph.i.i.i.i.i67.preheader:                     ; preds = %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit
  %i.fb = add i64 %i.a, -8
  %i.fc = sub i64 %i.fb, %i.ep                    ; 2 uses
  %i.fd = lshr i64 %i.fc, 3
  %i.fe = add nuw nsw i64 %i.fd, 1                ; 2 uses
  %min.iters.check250 = icmp ult i64 %i.fc, 24
  br i1 %min.iters.check250, label %.lr.ph.i.i.i.i.i67.preheader311, label %vector.ph251

vector.ph251:                                     ; preds = %.lr.ph.i.i.i.i.i67.preheader
  %n.vec252 = and i64 %i.fe, 4611686018427387900  ; 3 uses
  %i.ff = shl i64 %n.vec252, 3                    ; 2 uses
  %i.fg = getelementptr i8, ptr %i.fa, i64 %i.ff  ; 2 uses
  %i.fh = getelementptr i8, ptr %i.eo, i64 %i.ff
  br label %vector.body253

vector.body253:                                   ; preds = %vector.body253, %vector.ph251
  %index254 = phi i64 [ 0, %vector.ph251 ], [ %index.next259, %vector.body253 ] ; 2 uses
  %i.fi = shl i64 %index254, 3                    ; 2 uses
  %next.gep255 = getelementptr i8, ptr %i.fa, i64 %i.fi ; 2 uses
  %next.gep256 = getelementptr i8, ptr %i.eo, i64 %i.fi ; 2 uses
  %i.fj = getelementptr i8, ptr %next.gep256, i64 16
  %wide.load257 = load <2 x i64>, ptr %next.gep256, align 4
  %wide.load258 = load <2 x i64>, ptr %i.fj, align 4
  %i.fk = getelementptr i8, ptr %next.gep255, i64 16
  store <2 x i64> %wide.load257, ptr %next.gep255, align 4
  store <2 x i64> %wide.load258, ptr %i.fk, align 4
  %index.next259 = add nuw i64 %index254, 4       ; 2 uses
  %i.fl = icmp eq i64 %index.next259, %n.vec252
  br i1 %i.fl, label %middle.block260, label %vector.body253, !llvm.loop !7350

middle.block260:                                  ; preds = %vector.body253
  %cmp.n261 = icmp eq i64 %i.fe, %n.vec252
  br i1 %cmp.n261, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i67.preheader311

.lr.ph.i.i.i.i.i67.preheader311:                  ; preds = %.lr.ph.i.i.i.i.i67.preheader, %middle.block260
  %.013.i.i.i.i.i68.ph = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.i67.preheader ], [ %i.fg, %middle.block260 ]
  %.sroa.08.012.i.i.i.i.i69.ph = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i67.preheader ], [ %i.fh, %middle.block260 ]
  br label %.lr.ph.i.i.i.i.i67

.lr.ph.i.i.i.i.i67:                               ; preds = %.lr.ph.i.i.i.i.i67.preheader311, %.lr.ph.i.i.i.i.i67
  %.013.i.i.i.i.i68 = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i67 ], [ %.013.i.i.i.i.i68.ph, %.lr.ph.i.i.i.i.i67.preheader311 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i69 = phi ptr [ %i.fn, %.lr.ph.i.i.i.i.i67 ], [ %.sroa.08.012.i.i.i.i.i69.ph, %.lr.ph.i.i.i.i.i67.preheader311 ] ; 2 uses
  %i.fm = load i64, ptr %.sroa.08.012.i.i.i.i.i69, align 4
  store i64 %i.fm, ptr %.013.i.i.i.i.i68, align 4
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i69, i64 8 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i68, i64 8 ; 2 uses
  %.not.i.i.i.i.i70 = icmp eq ptr %i.fn, %1
  br i1 %.not.i.i.i.i.i70, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i67, !llvm.loop !7351

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i67, %middle.block260, %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i71 = phi ptr [ %i.fa, %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit ], [ %i.fg, %middle.block260 ], [ %i.fo, %.lr.ph.i.i.i.i.i67 ] ; 4 uses
  %i.fp = add i64 %i.b, -8
  %i.fq = sub i64 %i.fp, %i.c                     ; 2 uses
  %i.fr = lshr i64 %i.fq, 3
  %i.fs = add nuw nsw i64 %i.fr, 1                ; 2 uses
  %min.iters.check269 = icmp ult i64 %i.fq, 72
  %.0.lcssa.i.i.i.i.i71267 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i71 to i64
  %i.ft = sub i64 %i.c, %.0.lcssa.i.i.i.i.i71267
  %diff.check271 = icmp ugt i64 %i.ft, -32
  %or.cond307 = select i1 %min.iters.check269, i1 true, i1 %diff.check271
  br i1 %or.cond307, label %.lr.ph.i.i.i.i73.preheader, label %vector.ph272

vector.ph272:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %n.vec273 = and i64 %i.fs, 4611686018427387900  ; 3 uses
  %i.fu = shl i64 %n.vec273, 3                    ; 2 uses
  %i.fv = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i71, i64 %i.fu ; 2 uses
  %i.fw = getelementptr i8, ptr %2, i64 %i.fu
  br label %vector.body274

vector.body274:                                   ; preds = %vector.body274, %vector.ph272
  %index275 = phi i64 [ 0, %vector.ph272 ], [ %index.next280, %vector.body274 ] ; 2 uses
  %i.fx = shl i64 %index275, 3                    ; 2 uses
  %next.gep276 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i71, i64 %i.fx ; 2 uses
  %next.gep277 = getelementptr i8, ptr %2, i64 %i.fx ; 2 uses
  %i.fy = getelementptr i8, ptr %next.gep277, i64 16
  %wide.load278 = load <2 x i64>, ptr %next.gep277, align 4
  %wide.load279 = load <2 x i64>, ptr %i.fy, align 4
  %i.fz = getelementptr i8, ptr %next.gep276, i64 16
  store <2 x i64> %wide.load278, ptr %next.gep276, align 4
  store <2 x i64> %wide.load279, ptr %i.fz, align 4
  %index.next280 = add nuw i64 %index275, 4       ; 2 uses
  %i.ga = icmp eq i64 %index.next280, %n.vec273
  br i1 %i.ga, label %middle.block281, label %vector.body274, !llvm.loop !7352

middle.block281:                                  ; preds = %vector.body274
  %cmp.n282 = icmp eq i64 %i.fs, %n.vec273
  br i1 %cmp.n282, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit78, label %.lr.ph.i.i.i.i73.preheader

.lr.ph.i.i.i.i73.preheader:                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %middle.block281
  %.09.i.i.i.i74.ph = phi ptr [ %.0.lcssa.i.i.i.i.i71, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.fv, %middle.block281 ]
  %.sroa.04.08.i.i.i.i75.ph = phi ptr [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.fw, %middle.block281 ]
  br label %.lr.ph.i.i.i.i73

.lr.ph.i.i.i.i73:                                 ; preds = %.lr.ph.i.i.i.i73.preheader, %.lr.ph.i.i.i.i73
  %.09.i.i.i.i74 = phi ptr [ %i.gd, %.lr.ph.i.i.i.i73 ], [ %.09.i.i.i.i74.ph, %.lr.ph.i.i.i.i73.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i75 = phi ptr [ %i.gc, %.lr.ph.i.i.i.i73 ], [ %.sroa.04.08.i.i.i.i75.ph, %.lr.ph.i.i.i.i73.preheader ] ; 2 uses
  %i.gb = load i64, ptr %.sroa.04.08.i.i.i.i75, align 4
  store i64 %i.gb, ptr %.09.i.i.i.i74, align 4
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i75, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i74, i64 8 ; 2 uses
  %.not.i.i.i.i76 = icmp eq ptr %i.gc, %3
  br i1 %.not.i.i.i.i76, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit78, label %.lr.ph.i.i.i.i73, !llvm.loop !7353

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit78: ; preds = %.lr.ph.i.i.i.i73, %middle.block281
  %.lcssa127 = phi ptr [ %i.fv, %middle.block281 ], [ %i.gd, %.lr.ph.i.i.i.i73 ] ; 5 uses
  %.not11.i.i.i.i.i79 = icmp eq ptr %1, %i.i
  br i1 %.not11.i.i.i.i.i79, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit85, label %.lr.ph.i.i.i.i.i80.preheader

.lr.ph.i.i.i.i.i80.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairIiiESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit78
  %.lcssa127288 = ptrtoaddr ptr %.lcssa127 to i64
  %i.ge = add i64 %i.k, -8
  %i.gf = sub i64 %i.ge, %i.a                     ; 2 uses
  %i.gg = lshr i64 %i.gf, 3
  %i.gh = add nuw nsw i64 %i.gg, 1                ; 2 uses
  %min.iters.check290 = icmp ult i64 %i.gf, 72
  %i.gi = sub i64 %i.a, %.lcssa127288
end_hunk_0
begin_hunk_1_@_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multisetINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorENS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEED0Ev:bb.a
  %.not.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multisetINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorENS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multisetINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorENS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multisetINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorENS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2515
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multisetINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorENS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multisetINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorENS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEE8IsSharedEv.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !794
  %i.f = atomicrmw add ptr %i.e, i32 -1 acq_rel, align 4
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multisetINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorENS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !2510
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2515
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !794
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multisetINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorENS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEED2Ev.exit unwind label %bb.d, !inline_history !654

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #39, !inline_history !2516
  unreachable

_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multisetINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorENS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multisetINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorENS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multisetINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorENS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEE19MatchAndExplainImplINSE_11ValuePolicyIPKNS_16MatcherInterfaceISD_EELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_fp1_EERKSE_SD_PNS_19MatchResultListenerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !794
  %i.b = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !2512 ; 2 uses
  %i.c = load ptr, ptr %.val.val, align 8, !tbaa !797
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %.val.val, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2)
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multisetINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorENS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEE12DescribeImplINSE_11ValuePolicyIPKNS_16MatcherInterfaceISD_EELb1EEEEEvRKSE_PSob(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4 = load ptr, ptr %i.a, align 8, !tbaa !794
  %i.b = getelementptr i8, ptr %.val4, i64 8
  %.val4.val = load ptr, ptr %i.b, align 8, !tbaa !2512 ; 2 uses
  %i.c = load ptr, ptr %.val4.val, align 8, !tbaa !797
  %. = select i1 %2, i64 24, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %.
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %.val4.val, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multisetINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorENS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEE16GetDescriberImplINSE_11ValuePolicyIPKNS_16MatcherInterfaceISD_EELb1EEEEEPKNS_25MatcherDescriberInterfaceERKSE_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !794
  %i.b = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !2512
  ret ptr %.val.val
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_2026052614btree_multisetINS5_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorENS8_32OnlyConstructibleByAllocatorCompENS8_26OnlyConstructibleAllocatorIS9_EEEEEESt14default_deleteISH_EEE7DestroyEPNS0_17SharedPayloadBaseE(ptr noundef %0) #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !2512 ; 3 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_2026052614btree_multisetINS5_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorENS8_32OnlyConstructibleByAllocatorCompENS8_26OnlyConstructibleAllocatorIS9_EEEEEESt14default_deleteISH_EEED2Ev.exit, label %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_2026052614btree_multisetINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorENS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEEEEclEPSF_.exit.i.i

_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_2026052614btree_multisetINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorENS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEEEEclEPSF_.exit.i.i: ; preds = %bb.b
  %i.c = load ptr, ptr %.val, align 8, !tbaa !797
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %.val) #37, !inline_history !19176
  br label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_2026052614btree_multisetINS5_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorENS8_32OnlyConstructibleByAllocatorCompENS8_26OnlyConstructibleAllocatorIS9_EEEEEESt14default_deleteISH_EEED2Ev.exit

_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_2026052614btree_multisetINS5_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorENS8_32OnlyConstructibleByAllocatorCompENS8_26OnlyConstructibleAllocatorIS9_EEEEEESt14default_deleteISH_EEED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_2026052614btree_multisetINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorENS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEEEEclEPSF_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  br label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_2026052614btree_multisetINS5_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorENS8_32OnlyConstructibleByAllocatorCompENS8_26OnlyConstructibleAllocatorIS9_EEEEEESt14default_deleteISH_EEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE16internal_emplaceIJRPNS1_13map_slot_typeIS5_iEEEEENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKS5_iEPSL_EESO_DpOT_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr %1, i32 %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.4158", align 8 ; 6 uses
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 11
  %.val = load i8, ptr %i.b, align 1, !tbaa !794  ; 2 uses
  %.not.i = icmp eq i8 %.val, 0
  br i1 %.not.i, label %.thread.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert18 = getelementptr i8, ptr %1, i64 10
  %.val5.pre = load i8, ptr %.phi.trans.insert18, align 1, !tbaa !794
  br label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.d = and i32 %2, 255
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.e
  %.11727.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !2524 ; 3 uses
  %i.g = getelementptr i8, ptr %.11727.i.i.i, i64 11
  %.117.val2028.i.i.i = load i8, ptr %i.g, align 1, !tbaa !794 ; 2 uses
  %.not.i29.i.i.i = icmp eq i8 %.117.val2028.i.i.i, 0
  br i1 %.not.i29.i.i.i, label %.lr.ph31.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS5_32OnlyConstructibleByAllocatorCompENS5_26OnlyConstructibleAllocatorIS6_EEEEEEERSt4pairIKS6_iEPSE_EmmEv.exit

.lr.ph31.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph31.i.i.i
  %.11730.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph31.i.i.i ], [ %.11727.i.i.i, %.thread.i.i ] ; 2 uses
  %i.h = getelementptr i8, ptr %.11730.i.i.i, i64 10
  %.117.val18.i.i.i = load i8, ptr %i.h, align 1, !tbaa !794
  %i.i = getelementptr inbounds nuw i8, ptr %.11730.i.i.i, i64 256
  %i.j = zext i8 %.117.val18.i.i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %.117.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !2524 ; 3 uses
  %i.l = getelementptr i8, ptr %.117.i.i.i, i64 11
  %.117.val20.i.i.i = load i8, ptr %i.l, align 1, !tbaa !794 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %.117.val20.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph31.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS5_32OnlyConstructibleByAllocatorCompENS5_26OnlyConstructibleAllocatorIS6_EEEEEEERSt4pairIKS6_iEPSE_EmmEv.exit, !llvm.loop !672

_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS5_32OnlyConstructibleByAllocatorCompENS5_26OnlyConstructibleAllocatorIS6_EEEEEEERSt4pairIKS6_iEPSE_EmmEv.exit: ; preds = %.lr.ph31.i.i.i, %.thread.i.i
  %.val4.pre = phi i8 [ %.117.val2028.i.i.i, %.thread.i.i ], [ %.117.val20.i.i.i, %.lr.ph31.i.i.i ]
  %.117.lcssa.i.i.i = phi ptr [ %.11727.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph31.i.i.i ] ; 3 uses
  %i.m = getelementptr i8, ptr %.117.lcssa.i.i.i, i64 10
  %.117.val.i.i.i = load i8, ptr %i.m, align 1, !tbaa !794 ; 2 uses
  %i.n = zext i8 %.117.val.i.i.i to i32
  store ptr %.117.lcssa.i.i.i, ptr %4, align 8
  store i32 %i.n, ptr %i.a, align 8, !tbaa !2575
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS5_32OnlyConstructibleByAllocatorCompENS5_26OnlyConstructibleAllocatorIS6_EEEEEEERSt4pairIKS6_iEPSE_EmmEv.exit
  %.val5 = phi i8 [ %.117.val.i.i.i, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS5_32OnlyConstructibleByAllocatorCompENS5_26OnlyConstructibleAllocatorIS6_EEEEEEERSt4pairIKS6_iEPSE_EmmEv.exit ], [ %.val5.pre, %._crit_edge ] ; 3 uses
  %.val4 = phi i8 [ %.val4.pre, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS5_32OnlyConstructibleByAllocatorCompENS5_26OnlyConstructibleAllocatorIS6_EEEEEEERSt4pairIKS6_iEPSE_EmmEv.exit ], [ %.val, %._crit_edge ]
  %i.o = phi ptr [ %.117.lcssa.i.i.i, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS5_32OnlyConstructibleByAllocatorCompENS5_26OnlyConstructibleAllocatorIS6_EEEEEEERSt4pairIKS6_iEPSE_EmmEv.exit ], [ %1, %._crit_edge ] ; 5 uses
  %i.p = getelementptr i8, ptr %i.o, i64 10       ; 2 uses
  %i.q = icmp eq i8 %.val5, %.val4
  br i1 %i.q, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i8 %.val5, 30
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = shl nuw nsw i8 %.val5, 1
  %i.t = tail call i8 @llvm.umin.i8(i8 %i.s, i8 30) ; 2 uses
  %i.u = shl nuw i8 %i.t, 3
  %i.v = zext i8 %i.u to i64
  %i.w = add nuw nsw i64 %i.v, 16
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #35 ; 13 uses
  store ptr %i.x, ptr %i.x, align 8, !tbaa !2524
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i8 0, ptr %i.y, align 8, !tbaa !794
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 9
  store i8 0, ptr %i.z, align 1, !tbaa !794
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 11
  store i8 %i.t, ptr %i.aa, align 1, !tbaa !794
  store ptr %i.x, ptr %4, align 8, !tbaa !2576
  %.val13.i.i = load i8, ptr %i.p, align 1, !tbaa !794 ; 3 uses
  %i.ab = zext i8 %.val13.i.i to i64
  %i.ac = getelementptr i8, ptr %i.o, i64 12      ; 7 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.ab, 3          ; 4 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 %.idx.i.i.i ; 2 uses
  %.not1.i.i.i = icmp eq i8 %.val13.i.i, 0
  br i1 %.not1.i.i.i, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE16internal_emplaceIJRPNS1_13map_slot_typeIS5_iEEEEENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKS5_iEPSL_EESO_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.ae = getelementptr i8, ptr %i.x, i64 12      ; 6 uses
  %i.af = add nsw i64 %.idx.i.i.i, -8             ; 2 uses
  %i.ag = lshr exact i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i9.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.i.i
  %i.ai = add nuw nsw i64 %.idx.i.i.i, 8          ; 2 uses
  %i.aj = getelementptr i8, ptr %i.x, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.o, i64 %i.ai
  %5 = getelementptr i8, ptr %i.x, i64 16
  %6 = getelementptr i8, ptr %i.x, i64 %.idx.i.i.i
  %7 = getelementptr i8, ptr %6, i64 12
  %i.al = getelementptr i8, ptr %i.o, i64 16
  %bound0 = icmp ult ptr %i.ae, %i.ak
  %bound1 = icmp ult ptr %i.ac, %i.aj
  %found.conflict = and i1 %bound0, %bound1
  %bound029 = icmp ult ptr %5, %i.ad
  %bound130 = icmp ult ptr %i.al, %7
  %found.conflict31 = and i1 %bound029, %bound130
  %conflict.rdx = or i1 %found.conflict, %found.conflict31
  br i1 %conflict.rdx, label %.lr.ph.i.i.i9.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.ae, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.ac, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3                       ; 3 uses
  %i.aq = or disjoint i64 %i.ap, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ae, i64 %i.ap
  %next.gep32 = getelementptr i8, ptr %i.ae, i64 %i.aq
  %next.gep33 = getelementptr i8, ptr %i.ac, i64 %i.ap
  %next.gep34 = getelementptr i8, ptr %i.ac, i64 %i.aq
  %wide.vec = load <4 x i32>, ptr %next.gep33, align 4, !tbaa !783
  %wide.vec36 = load <4 x i32>, ptr %next.gep34, align 4, !tbaa !783
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !783
  store <4 x i32> %wide.vec36, ptr %next.gep32, align 4, !tbaa !783
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !19177

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE16internal_emplaceIJRPNS1_13map_slot_typeIS5_iEEEEENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKS5_iEPSL_EESO_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i9.preheader

.lr.ph.i.i.i9.preheader:                          ; preds = %vector.memcheck, %.lr.ph.preheader.i.i.i, %middle.block
  %.03.i.i.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.preheader.i.i.i ], [ %i.an, %middle.block ]
  %.0122.i.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.preheader.i.i.i ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i9

.lr.ph.i.i.i9:                                    ; preds = %.lr.ph.i.i.i9.preheader, %.lr.ph.i.i.i9
  %.03.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i9 ], [ %.03.i.i.i.ph, %.lr.ph.i.i.i9.preheader ] ; 2 uses
  %.0122.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i9 ], [ %.0122.i.i.i.ph, %.lr.ph.i.i.i9.preheader ] ; 2 uses
  %i.as = load <2 x i32>, ptr %.0122.i.i.i, align 4, !tbaa !783
  store <2 x i32> %i.as, ptr %.03.i.i.i, align 4, !tbaa !783
  %i.at = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 8
  %.not.i.i.i10 = icmp eq ptr %i.at, %i.ad
  br i1 %.not.i.i.i10, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE16internal_emplaceIJRPNS1_13map_slot_typeIS5_iEEEEENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKS5_iEPSL_EESO_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i9, !llvm.loop !19178

_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE16internal_emplaceIJRPNS1_13map_slot_typeIS5_iEEEEENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKS5_iEPSL_EESO_DpOT_ENKUlhE_clEh.exit: ; preds = %.lr.ph.i.i.i9, %middle.block, %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  store i8 %.val13.i.i, ptr %i.av, align 2, !tbaa !794
  store i8 0, ptr %i.p, align 1, !tbaa !794
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE16clear_and_deleteEPSA_PS8_(ptr noundef nonnull %i.o)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.aw, align 8, !tbaa !2524
  store ptr %i.x, ptr %0, align 8, !tbaa !2524
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKS5_iEPSG_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %4)
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE16internal_emplaceIJRPNS1_13map_slot_typeIS5_iEEEEENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKS5_iEPSL_EESO_DpOT_ENKUlhE_clEh.exit, %bb.e, %bb.b
  %i.ax = load ptr, ptr %4, align 8, !tbaa !2576  ; 6 uses
  %i.ay = load i32, ptr %i.a, align 8, !tbaa !2575 ; 3 uses
  %i.az = trunc i32 %i.ay to i8                   ; 2 uses
  %.val8 = load ptr, ptr %3, align 8
  %i.ba = and i32 %i.ay, 255                      ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ax, i64 10     ; 3 uses
  %.val21.i = load i8, ptr %i.bb, align 1, !tbaa !794 ; 3 uses
  %i.bc = icmp ugt i8 %.val21.i, %i.az
  %i.bd = zext nneg i32 %i.ba to i64              ; 4 uses
  br i1 %i.bc, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.bf = getelementptr [8 x i8], ptr %i.be, i64 %i.bd ; 3 uses
  %narrow.i = sub nuw i8 %.val21.i, %i.az
  %i.bg = zext i8 %narrow.i to i64                ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.bg, 3            ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bf, i64 8
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.bg ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bf, i64 %.idx.i.i ; 2 uses
  %i.bk = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.bl = lshr exact i64 %i.bk, 3
  %i.bm = add nuw nsw i64 %i.bl, 1
  %xtraiter = and i64 %i.bm, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %.03.i.i.prol = phi ptr [ %i.bn, %.lr.ph.i.i.prol ], [ %i.bi, %.lr.ph.preheader.i.i ]
  %.0142.i.i.prol = phi ptr [ %i.bo, %.lr.ph.i.i.prol ], [ %i.bj, %.lr.ph.preheader.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.bn = getelementptr inbounds i8, ptr %.03.i.i.prol, i64 -8 ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %.0142.i.i.prol, i64 -8 ; 3 uses
  %i.bp = load <2 x i32>, ptr %i.bo, align 4, !tbaa !783
  store <2 x i32> %i.bp, ptr %i.bn, align 4, !tbaa !783
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !19179

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.03.i.i.unr = phi ptr [ %i.bi, %.lr.ph.preheader.i.i ], [ %i.bn, %.lr.ph.i.i.prol ]
  %.0142.i.i.unr = phi ptr [ %i.bj, %.lr.ph.preheader.i.i ], [ %i.bo, %.lr.ph.i.i.prol ]
  %i.bq = icmp ult i64 %i.bk, 56
  br i1 %i.bq, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.03.i.i = phi ptr [ %i.cm, %.lr.ph.i.i ], [ %.03.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 8 uses
  %.0142.i.i = phi ptr [ %i.cn, %.lr.ph.i.i ], [ %.0142.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 8 uses
  %i.br = getelementptr inbounds i8, ptr %.03.i.i, i64 -8
  %i.bs = getelementptr inbounds i8, ptr %.0142.i.i, i64 -8
  %i.bt = load <2 x i32>, ptr %i.bs, align 4, !tbaa !783
  store <2 x i32> %i.bt, ptr %i.br, align 4, !tbaa !783
  %i.bu = getelementptr inbounds i8, ptr %.03.i.i, i64 -16
  %i.bv = getelementptr inbounds i8, ptr %.0142.i.i, i64 -16
  %i.bw = load <2 x i32>, ptr %i.bv, align 4, !tbaa !783
  store <2 x i32> %i.bw, ptr %i.bu, align 4, !tbaa !783
  %i.bx = getelementptr inbounds i8, ptr %.03.i.i, i64 -24
  %i.by = getelementptr inbounds i8, ptr %.0142.i.i, i64 -24
  %i.bz = load <2 x i32>, ptr %i.by, align 4, !tbaa !783
  store <2 x i32> %i.bz, ptr %i.bx, align 4, !tbaa !783
  %i.ca = getelementptr inbounds i8, ptr %.03.i.i, i64 -32
  %i.cb = getelementptr inbounds i8, ptr %.0142.i.i, i64 -32
  %i.cc = load <2 x i32>, ptr %i.cb, align 4, !tbaa !783
  store <2 x i32> %i.cc, ptr %i.ca, align 4, !tbaa !783
  %i.cd = getelementptr inbounds i8, ptr %.03.i.i, i64 -40
  %i.ce = getelementptr inbounds i8, ptr %.0142.i.i, i64 -40
  %i.cf = load <2 x i32>, ptr %i.ce, align 4, !tbaa !783
  store <2 x i32> %i.cf, ptr %i.cd, align 4, !tbaa !783
  %i.cg = getelementptr inbounds i8, ptr %.03.i.i, i64 -48
  %i.ch = getelementptr inbounds i8, ptr %.0142.i.i, i64 -48
  %i.ci = load <2 x i32>, ptr %i.ch, align 4, !tbaa !783
  store <2 x i32> %i.ci, ptr %i.cg, align 4, !tbaa !783
  %i.cj = getelementptr inbounds i8, ptr %.03.i.i, i64 -56
  %i.ck = getelementptr inbounds i8, ptr %.0142.i.i, i64 -56
  %i.cl = load <2 x i32>, ptr %i.ck, align 4, !tbaa !783
  store <2 x i32> %i.cl, ptr %i.cj, align 4, !tbaa !783
  %i.cm = getelementptr inbounds i8, ptr %.03.i.i, i64 -64 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %.0142.i.i, i64 -64 ; 3 uses
  %i.co = load <2 x i32>, ptr %i.cn, align 4, !tbaa !783
  store <2 x i32> %i.co, ptr %i.cm, align 4, !tbaa !783
  %.not.i.i12.7 = icmp eq ptr %i.cn, %i.bf
  br i1 %.not.i.i12.7, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !673

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.val19.pre.i = load i8, ptr %i.bb, align 1, !tbaa !794
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.loopexit.i, %bb.f
  %.val19.i = phi i8 [ %.val19.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.loopexit.i ], [ %.val21.i, %bb.f ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.bd
  %i.cr = load <2 x i32>, ptr %.val8, align 4, !tbaa !783
  store <2 x i32> %i.cr, ptr %i.cq, align 4, !tbaa !783
  %i.cs = add i8 %.val19.i, 1                     ; 3 uses
  store i8 %i.cs, ptr %i.bb, align 1, !tbaa !794
  %i.ct = getelementptr i8, ptr %i.ax, i64 11
  %.val22.i = load i8, ptr %i.ct, align 1, !tbaa !794
  %.not.i25.i = icmp eq i8 %.val22.i, 0
  br i1 %.not.i25.i, label %bb.g, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE13emplace_valueIJRPNS1_13map_slot_typeIS5_iEEEEEvhPS8_DpOT_.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i
  %i.cu = zext i8 %i.cs to i32
  %i.cv = add nuw nsw i32 %i.ba, 1                ; 2 uses
  %i.cw = icmp samesign ult i32 %i.cv, %i.cu
  br i1 %i.cw, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE13emplace_valueIJRPNS1_13map_slot_typeIS5_iEEEEEvhPS8_DpOT_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ax, i64 256 ; 10 uses
  %i.cy = zext i8 %i.cs to i64                    ; 4 uses
  %i.cz = zext nneg i32 %i.cv to i64
  %i.da = xor i64 %i.bd, -1
  %i.db = add nsw i64 %i.da, %i.cy
  %i.dc = add nsw i64 %i.cy, -2
  %i.dd = sub nsw i64 %i.dc, %i.bd
  %xtraiter41 = and i64 %i.db, 3                  ; 2 uses
  %lcmp.mod42.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod42.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.de, %.prol.preheader ], [ %i.cy, %.lr.ph.i ] ; 3 uses
  %prol.iter43 = phi i64 [ %prol.iter43.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.de = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !2524 ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.prol
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !2524
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dj = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.dj, ptr %i.di, align 1, !tbaa !794
  %prol.iter43.next = add i64 %prol.iter43, 1     ; 2 uses
  %prol.iter43.cmp.not = icmp eq i64 %prol.iter43.next, %xtraiter41
  br i1 %prol.iter43.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !19180

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.unr = phi i64 [ %i.cy, %.lr.ph.i ], [ %i.de, %.prol.preheader ]
  %i.dk = icmp ult i64 %i.dd, 3
  br i1 %i.dk, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE13emplace_valueIJRPNS1_13map_slot_typeIS5_iEEEEEvhPS8_DpOT_.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv = phi i64 [ %i.ed, %.lr.ph.i.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.dl = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.dl
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !2524 ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !2524
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dq = trunc nuw i64 %indvars.iv to i8
  store i8 %i.dq, ptr %i.dp, align 1, !tbaa !794
  %i.dr = add nsw i64 %indvars.iv, -2             ; 3 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !2524 ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.dl
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !2524
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dw = trunc nuw i64 %i.dl to i8
  store i8 %i.dw, ptr %i.dv, align 1, !tbaa !794
  %i.dx = add nsw i64 %indvars.iv, -3             ; 3 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.dx
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !2524 ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.dr
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !2524
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ec = trunc nuw i64 %i.dr to i8
  store i8 %i.ec, ptr %i.eb, align 1, !tbaa !794
  %i.ed = add nsw i64 %indvars.iv, -4             ; 3 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !2524 ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.dx
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !2524
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ei = trunc nuw i64 %i.dx to i8
  store i8 %i.ei, ptr %i.eh, align 1, !tbaa !794
  %.wide.3 = icmp ugt i64 %i.ed, %i.cz
  br i1 %.wide.3, label %.lr.ph.i.new, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE13emplace_valueIJRPNS1_13map_slot_typeIS5_iEEEEEvhPS8_DpOT_.exit, !llvm.loop !19181

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE13emplace_valueIJRPNS1_13map_slot_typeIS5_iEEEEEvhPS8_DpOT_.exit: ; preds = %.prol.loopexit, %.lr.ph.i.new, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i, %bb.g
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !2523
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr %i.ej, align 8, !tbaa !2523
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %i.ax, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %i.ay, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKS5_iEPSG_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.4158", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !2524   ; 16 uses
  %.val105 = load ptr, ptr %i.b, align 8, !tbaa !2524 ; 7 uses
  %.val117 = load ptr, ptr %0, align 8, !tbaa !2522
  %.not = icmp eq ptr %i.b, %.val117
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %.val103 = load i8, ptr %i.c, align 8, !tbaa !794 ; 6 uses
  %.not84 = icmp eq i8 %.val103, 0
  br i1 %.not84, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add i8 %.val103, -1
  %i.e = getelementptr inbounds nuw i8, ptr %.val105, i64 256
  %i.f = zext i8 %i.d to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2524 ; 14 uses
  %i.i = getelementptr i8, ptr %i.h, i64 10       ; 7 uses
  %.val115 = load i8, ptr %i.i, align 1, !tbaa !794 ; 4 uses
  %i.j = icmp ult i8 %.val115, 30
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 30, %.val115
  %i.k = load i32, ptr %i.a, align 8, !tbaa !783  ; 2 uses
  %i.l = and i32 %i.k, 254
  %i.m = icmp samesign ult i32 %i.l, 30
  %i.n = zext i1 %i.m to i8
  %i.o = lshr i8 %narrow, %i.n                    ; 3 uses
  %.sroa.speculated151 = tail call i8 @llvm.umax.i8(i8 %i.o, i8 1) ; 9 uses
  %i.p = and i32 %i.k, 255
  %i.q = zext nneg i8 %.sroa.speculated151 to i32 ; 5 uses
  %.not85 = icmp samesign uge i32 %i.p, %i.q
  %narrow164 = add nuw nsw i8 %.sroa.speculated151, %.val115
  %i.r = icmp samesign ult i8 %narrow164, 30
  %or.cond = select i1 %.not85, i1 true, i1 %i.r
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = zext nneg i8 %.val115 to i64             ; 2 uses
  %i.t = getelementptr i8, ptr %i.h, i64 8        ; 2 uses
  %.val50.i = load i8, ptr %i.t, align 1, !tbaa !794
  %i.u = zext i8 %.val50.i to i64                 ; 2 uses
  %.val52.i = load ptr, ptr %i.h, align 8, !tbaa !2524
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.s ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val52.i, i64 12 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.u
  %i.z = load <2 x i32>, ptr %i.y, align 4, !tbaa !783
  store <2 x i32> %i.z, ptr %i.w, align 4, !tbaa !783
  %i.aa = add nsw i32 %i.q, -1                    ; 2 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.b, i64 12      ; 13 uses
  %.idx.i.i = shl nuw nsw i64 %i.ab, 3            ; 3 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 %.idx.i.i ; 2 uses
  %.not1.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not1.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.ae = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 264
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader265, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.ah = shl nuw nsw i64 %i.s, 3                 ; 3 uses
  %i.ai = getelementptr i8, ptr %i.h, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 20
  %i.ak = add nuw nsw i64 %i.ah, %.idx.i.i        ; 2 uses
  %i.al = getelementptr i8, ptr %i.h, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 16
  %i.an = tail call i8 @llvm.umax.i8(i8 %i.o, i8 1)
  %i.ao = shl nuw i8 %i.an, 3
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr i8, ptr %i.b, i64 %i.ap
  %3 = getelementptr i8, ptr %i.h, i64 %i.ah
  %4 = getelementptr i8, ptr %3, i64 24
  %5 = getelementptr i8, ptr %i.h, i64 %i.ak
  %i.ar = getelementptr i8, ptr %5, i64 20
  %i.as = getelementptr i8, ptr %i.b, i64 16
  %bound0 = icmp ult ptr %i.aj, %i.aq
  %bound1 = icmp ult ptr %i.ac, %i.am
  %found.conflict = and i1 %bound0, %bound1
  %bound0185 = icmp ult ptr %4, %i.ad
  %bound1186 = icmp ult ptr %i.as, %i.ar
  %found.conflict187 = and i1 %bound0185, %bound1186
  %conflict.rdx = or i1 %found.conflict, %found.conflict187
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader265, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 4611686018427387900     ; 3 uses
  %i.at = shl i64 %n.vec, 3                       ; 2 uses
  %i.au = getelementptr i8, ptr %i.w, i64 %i.at
  %i.av = getelementptr i8, ptr %i.ac, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 3                       ; 3 uses
  %i.ax = or disjoint i64 %i.aw, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.aw
  %next.gep188 = getelementptr i8, ptr %i.w, i64 %i.ax
  %next.gep189 = getelementptr i8, ptr %i.ac, i64 %i.aw
  %next.gep190 = getelementptr i8, ptr %i.ac, i64 %i.ax
  %i.ay = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %next.gep188, i64 8
  %wide.vec = load <4 x i32>, ptr %next.gep189, align 4, !tbaa !783
  %wide.vec192 = load <4 x i32>, ptr %next.gep190, align 4, !tbaa !783
  store <4 x i32> %wide.vec, ptr %i.ay, align 4, !tbaa !783
  store <4 x i32> %wide.vec192, ptr %i.az, align 4, !tbaa !783
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !19182

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.loopexit.i, label %.lr.ph.i.i.preheader265

.lr.ph.i.i.preheader265:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.03.i.pn.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.preheader ], [ %i.au, %middle.block ]
  %.0122.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader265, %.lr.ph.i.i
  %.03.i.pn.i = phi ptr [ %.03.i.i, %.lr.ph.i.i ], [ %.03.i.pn.i.ph, %.lr.ph.i.i.preheader265 ]
  %.0122.i.i = phi ptr [ %i.bc, %.lr.ph.i.i ], [ %.0122.i.i.ph, %.lr.ph.i.i.preheader265 ] ; 2 uses
  %.03.i.i = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 8 ; 2 uses
  %i.bb = load <2 x i32>, ptr %.0122.i.i, align 4, !tbaa !783
  store <2 x i32> %i.bb, ptr %.03.i.i, align 4, !tbaa !783
  %i.bc = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bc, %i.ad
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !19183

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block
  %.val49.pre.i = load i8, ptr %i.t, align 8, !tbaa !794
  %.pre.i = zext i8 %.val49.pre.i to i64
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.loopexit.i, %bb.e
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.loopexit.i ], [ %i.u, %bb.e ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.pre-phi.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ab
  %i.bf = load <2 x i32>, ptr %i.be, align 4, !tbaa !783
  store <2 x i32> %i.bf, ptr %i.bd, align 4, !tbaa !783
  %i.bg = getelementptr i8, ptr %i.b, i64 10      ; 5 uses
  %.val54.i = load i8, ptr %i.bg, align 2, !tbaa !794 ; 3 uses
  %i.bh = zext i8 %.val54.i to i32
  %i.bi = sub nsw i32 %i.bh, %i.q
  %i.bj = sext i32 %i.bi to i64
  %i.bk = zext nneg i8 %.sroa.speculated151 to i64 ; 4 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bk ; 5 uses
  %.idx.i57.i = shl nuw nsw i64 %i.bj, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx.i57.i
  %.not1.i58.i = icmp eq i8 %.val54.i, %.sroa.speculated151
  br i1 %.not1.i58.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit66.i, label %.lr.ph.i60.i.preheader

.lr.ph.i60.i.preheader:                           ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.i
  %i.bn = zext i8 %.val54.i to i64
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = shl nuw nsw i64 %i.bk, 3
  %i.bq = add nsw i64 %i.bo, -8
  %i.br = sub nsw i64 %i.bq, %i.bp                ; 2 uses
  %i.bs = lshr exact i64 %i.br, 3
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check198 = icmp ult i64 %i.br, 24
  br i1 %min.iters.check198, label %.lr.ph.i60.i.preheader264, label %vector.ph199

vector.ph199:                                     ; preds = %.lr.ph.i60.i.preheader
  %n.vec200 = and i64 %i.bt, 4611686018427387900  ; 3 uses
  %i.bu = shl i64 %n.vec200, 3                    ; 2 uses
  %i.bv = getelementptr i8, ptr %i.ac, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bl, i64 %i.bu
  br label %vector.body201

vector.body201:                                   ; preds = %vector.body201, %vector.ph199
  %index202 = phi i64 [ 0, %vector.ph199 ], [ %index.next215, %vector.body201 ] ; 2 uses
  %i.bx = shl i64 %index202, 3                    ; 3 uses
  %i.by = or disjoint i64 %i.bx, 16               ; 2 uses
  %next.gep203 = getelementptr i8, ptr %i.ac, i64 %i.bx
  %next.gep204 = getelementptr i8, ptr %i.ac, i64 %i.by
  %next.gep205 = getelementptr i8, ptr %i.bl, i64 %i.bx
  %next.gep206 = getelementptr i8, ptr %i.bl, i64 %i.by
  %wide.vec207 = load <4 x i32>, ptr %next.gep205, align 4, !tbaa !783
  %wide.vec210 = load <4 x i32>, ptr %next.gep206, align 4, !tbaa !783
  store <4 x i32> %wide.vec207, ptr %next.gep203, align 4, !tbaa !783
  store <4 x i32> %wide.vec210, ptr %next.gep204, align 4, !tbaa !783
  %index.next215 = add nuw i64 %index202, 4       ; 2 uses
  %i.bz = icmp eq i64 %index.next215, %n.vec200
  br i1 %i.bz, label %middle.block216, label %vector.body201, !llvm.loop !19184

middle.block216:                                  ; preds = %vector.body201
  %cmp.n217 = icmp eq i64 %i.bt, %n.vec200
  br i1 %cmp.n217, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit66.i, label %.lr.ph.i60.i.preheader264

.lr.ph.i60.i.preheader264:                        ; preds = %.lr.ph.i60.i.preheader, %middle.block216
  %.03.i61.i.ph = phi ptr [ %i.ac, %.lr.ph.i60.i.preheader ], [ %i.bv, %middle.block216 ]
  %.0122.i62.i.ph = phi ptr [ %i.bl, %.lr.ph.i60.i.preheader ], [ %i.bw, %middle.block216 ]
  br label %.lr.ph.i60.i

.lr.ph.i60.i:                                     ; preds = %.lr.ph.i60.i.preheader264, %.lr.ph.i60.i
  %.03.i61.i = phi ptr [ %i.cc, %.lr.ph.i60.i ], [ %.03.i61.i.ph, %.lr.ph.i60.i.preheader264 ] ; 2 uses
  %.0122.i62.i = phi ptr [ %i.cb, %.lr.ph.i60.i ], [ %.0122.i62.i.ph, %.lr.ph.i60.i.preheader264 ] ; 2 uses
  %i.ca = load <2 x i32>, ptr %.0122.i62.i, align 4, !tbaa !783
  store <2 x i32> %i.ca, ptr %.03.i61.i, align 4, !tbaa !783
  %i.cb = getelementptr inbounds nuw i8, ptr %.0122.i62.i, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.03.i61.i, i64 8
  %.not.i65.i = icmp eq ptr %i.cb, %i.bm
  br i1 %.not.i65.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit66.i, label %.lr.ph.i60.i, !llvm.loop !19185

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit66.i: ; preds = %.lr.ph.i60.i, %middle.block216, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.i
  %i.cd = getelementptr i8, ptr %i.h, i64 11
  %.val53.i = load i8, ptr %i.cd, align 1, !tbaa !794
  %.not.i67.i = icmp eq i8 %.val53.i, 0
  br i1 %.not.i67.i, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE23rebalance_right_to_leftEhPSA_PS8_.exit

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit66.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.h, i64 256 ; 3 uses
  %xtraiter = and i64 %i.bk, 1
  %i.cg = icmp samesign ult i8 %i.o, 2
  br i1 %i.cg, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.bk, 30
  br label %bb.f

.preheader.i.unr-lcssa:                           ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.preheader.i.unr-lcssa ] ; 2 uses
  %lcmp.mod266 = trunc i8 %.sroa.speculated151 to i1
  tail call void @llvm.assume(i1 %lcmp.mod266)
  %.val46.i.epil = load i8, ptr %i.i, align 2, !tbaa !794
  %i.ch = trunc i64 %indvars.iv.i.epil.init to i8
  %i.ci = add i8 %i.ch, 1
  %i.cj = add i8 %.val46.i.epil, %i.ci            ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i.epil.init
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !2524 ; 3 uses
  %i.cm = zext i8 %i.cj to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cm
  store ptr %i.cl, ptr %i.cn, align 8, !tbaa !2524
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i8 %i.cj, ptr %i.co, align 1, !tbaa !794
  store ptr %i.h, ptr %i.cl, align 8, !tbaa !2524
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %.val453.i = load i8, ptr %i.bg, align 2, !tbaa !794
  %.not4.i = icmp ult i8 %.val453.i, %.sroa.speculated151
  br i1 %.not4.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE23rebalance_right_to_leftEhPSA_PS8_.exit, label %.lr.ph6.i

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.f ]
  %.val46.i = load i8, ptr %i.i, align 2, !tbaa !794
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.cp = trunc nuw i64 %indvars.iv.next.i to i8
  %i.cq = add i8 %.val46.i, %i.cp                 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !2524 ; 3 uses
  %i.ct = zext i8 %i.cq to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.ct
  store ptr %i.cs, ptr %i.cu, align 8, !tbaa !2524
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i8 %i.cq, ptr %i.cv, align 1, !tbaa !794
  store ptr %i.h, ptr %i.cs, align 8, !tbaa !2524
  %.val46.i.1 = load i8, ptr %i.i, align 2, !tbaa !794
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %i.cw = trunc nuw i64 %indvars.iv.next.i.1 to i8
  %i.cx = add i8 %.val46.i.1, %i.cw               ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next.i
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !2524 ; 3 uses
  %i.da = zext i8 %i.cx to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.da
  store ptr %i.cz, ptr %i.db, align 8, !tbaa !2524
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i8 %i.cx, ptr %i.dc, align 1, !tbaa !794
  store ptr %i.h, ptr %i.cz, align 8, !tbaa !2524
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.unr-lcssa, label %bb.f, !llvm.loop !19186

.lr.ph6.i:                                        ; preds = %.preheader.i, %.lr.ph6.i
  %.05.i = phi i8 [ %i.dk, %.lr.ph6.i ], [ 0, %.preheader.i ] ; 4 uses
  %i.dd = add i8 %.05.i, %.sroa.speculated151
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !2524 ; 3 uses
  %i.dh = zext i8 %.05.i to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.dh
  store ptr %i.dg, ptr %i.di, align 8, !tbaa !2524
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i8 %.05.i, ptr %i.dj, align 1, !tbaa !794
  store ptr %i.b, ptr %i.dg, align 8, !tbaa !2524
  %i.dk = add i8 %.05.i, 1                        ; 2 uses
  %i.dl = zext i8 %i.dk to i32
  %.val45.i = load i8, ptr %i.bg, align 2, !tbaa !794
  %i.dm = zext i8 %.val45.i to i32
  %i.dn = sub nsw i32 %i.dm, %i.q
  %.not.i = icmp slt i32 %i.dn, %i.dl
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE23rebalance_right_to_leftEhPSA_PS8_.exit, label %.lr.ph6.i, !llvm.loop !19187

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE23rebalance_right_to_leftEhPSA_PS8_.exit: ; preds = %.lr.ph6.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit66.i, %.preheader.i
  %.val44.i = load i8, ptr %i.i, align 2, !tbaa !794
  %i.do = add i8 %.val44.i, %.sroa.speculated151
  store i8 %i.do, ptr %i.i, align 2, !tbaa !794
  %.val.i = load i8, ptr %i.bg, align 2, !tbaa !794
  %i.dp = sub i8 %.val.i, %.sroa.speculated151
  store i8 %i.dp, ptr %i.bg, align 2, !tbaa !794
  %i.dq = load i32, ptr %i.a, align 8, !tbaa !783
  %i.dr = and i32 %i.dq, 255
  %i.ds = sub nsw i32 %i.dr, %i.q                 ; 3 uses
  store i32 %i.ds, ptr %i.a, align 8, !tbaa !783
  %i.dt = icmp slt i32 %i.ds, 0
  br i1 %i.dt, label %bb.g, label %.critedge

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE23rebalance_right_to_leftEhPSA_PS8_.exit
  %.val112 = load i8, ptr %i.i, align 2, !tbaa !794
  %i.du = zext i8 %.val112 to i32
  %i.dv = add nsw i32 %i.ds, 1
  %i.dw = add nsw i32 %i.dv, %i.du
  br label %.critedge.sink.split

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.dx = getelementptr i8, ptr %.val105, i64 10
  %.val95 = load i8, ptr %i.dx, align 1, !tbaa !794 ; 2 uses
  %i.dy = icmp ult i8 %.val103, %.val95
  br i1 %i.dy, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.dz = add nuw i8 %.val103, 1
  %i.ea = getelementptr inbounds nuw i8, ptr %.val105, i64 256
  %i.eb = zext i8 %i.dz to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.eb
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !2524 ; 14 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 10     ; 4 uses
  %.val111 = load i8, ptr %i.ee, align 1, !tbaa !794 ; 5 uses
  %i.ef = icmp ult i8 %.val111, 30
  br i1 %i.ef, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %narrow165 = sub nuw nsw i8 30, %.val111
  %i.eg = load i32, ptr %i.a, align 8, !tbaa !783 ; 2 uses
  %.inv = icmp sgt i32 %i.eg, 0
  %i.eh = zext i1 %.inv to i8
  %i.ei = lshr i8 %narrow165, %i.eh               ; 4 uses
  %.sroa.speculated = tail call i8 @llvm.umax.i8(i8 %i.ei, i8 1) ; 11 uses
  %i.ej = and i32 %i.eg, 255
  %i.ek = getelementptr i8, ptr %i.b, i64 10      ; 8 uses
  %.val94 = load i8, ptr %i.ek, align 2, !tbaa !794
  %i.el = zext i8 %.val94 to i32
  %i.em = zext nneg i8 %.sroa.speculated to i32   ; 3 uses
  %i.en = sub nsw i32 %i.el, %i.em
  %.not86 = icmp sle i32 %i.ej, %i.en
  %narrow166 = add nuw nsw i8 %.sroa.speculated, %.val111
  %i.eo = icmp samesign ult i8 %narrow166, 30
  %or.cond163 = select i1 %.not86, i1 true, i1 %i.eo
  br i1 %or.cond163, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ep = getelementptr i8, ptr %i.ed, i64 12     ; 10 uses
  %.not1.i.i120 = icmp eq i8 %.val111, 0
  br i1 %.not1.i.i120, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.k
  %i.eq = zext nneg i8 %.val111 to i64            ; 2 uses
  %i.er = zext nneg i8 %.sroa.speculated to i64
  %.idx.i.i121 = shl nuw nsw i64 %i.eq, 3         ; 2 uses
  %i.es = getelementptr [8 x i8], ptr %i.ep, i64 %i.er
  %i.et = getelementptr [8 x i8], ptr %i.es, i64 %i.eq ; 2 uses
  %i.eu = getelementptr i8, ptr %i.ep, i64 %.idx.i.i121 ; 2 uses
  %i.ev = add nsw i64 %.idx.i.i121, -8            ; 2 uses
  %i.ew = lshr exact i64 %i.ev, 3
  %i.ex = add nuw nsw i64 %i.ew, 1
  %xtraiter267 = and i64 %i.ex, 7                 ; 2 uses
  %lcmp.mod268.not = icmp eq i64 %xtraiter267, 0
  br i1 %lcmp.mod268.not, label %.lr.ph.i.i122.prol.loopexit, label %.lr.ph.i.i122.prol

.lr.ph.i.i122.prol:                               ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i122.prol
  %.03.i.i123.prol = phi ptr [ %i.ey, %.lr.ph.i.i122.prol ], [ %i.et, %.lr.ph.preheader.i.i ]
  %.0142.i.i.prol = phi ptr [ %i.ez, %.lr.ph.i.i122.prol ], [ %i.eu, %.lr.ph.preheader.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i122.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.ey = getelementptr inbounds i8, ptr %.03.i.i123.prol, i64 -8 ; 3 uses
  %i.ez = getelementptr inbounds i8, ptr %.0142.i.i.prol, i64 -8 ; 3 uses
  %i.fa = load <2 x i32>, ptr %i.ez, align 4, !tbaa !783
  store <2 x i32> %i.fa, ptr %i.ey, align 4, !tbaa !783
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter267
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i122.prol.loopexit, label %.lr.ph.i.i122.prol, !llvm.loop !19188

.lr.ph.i.i122.prol.loopexit:                      ; preds = %.lr.ph.i.i122.prol, %.lr.ph.preheader.i.i
  %.03.i.i123.unr = phi ptr [ %i.et, %.lr.ph.preheader.i.i ], [ %i.ey, %.lr.ph.i.i122.prol ]
  %.0142.i.i.unr = phi ptr [ %i.eu, %.lr.ph.preheader.i.i ], [ %i.ez, %.lr.ph.i.i122.prol ]
  %i.fb = icmp ult i64 %i.ev, 56
  br i1 %i.fb, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i.loopexit, label %.lr.ph.i.i122

.lr.ph.i.i122:                                    ; preds = %.lr.ph.i.i122.prol.loopexit, %.lr.ph.i.i122
  %.03.i.i123 = phi ptr [ %i.fx, %.lr.ph.i.i122 ], [ %.03.i.i123.unr, %.lr.ph.i.i122.prol.loopexit ] ; 8 uses
  %.0142.i.i = phi ptr [ %i.fy, %.lr.ph.i.i122 ], [ %.0142.i.i.unr, %.lr.ph.i.i122.prol.loopexit ] ; 8 uses
  %i.fc = getelementptr inbounds i8, ptr %.03.i.i123, i64 -8
  %i.fd = getelementptr inbounds i8, ptr %.0142.i.i, i64 -8
  %i.fe = load <2 x i32>, ptr %i.fd, align 4, !tbaa !783
  store <2 x i32> %i.fe, ptr %i.fc, align 4, !tbaa !783
  %i.ff = getelementptr inbounds i8, ptr %.03.i.i123, i64 -16
  %i.fg = getelementptr inbounds i8, ptr %.0142.i.i, i64 -16
  %i.fh = load <2 x i32>, ptr %i.fg, align 4, !tbaa !783
  store <2 x i32> %i.fh, ptr %i.ff, align 4, !tbaa !783
  %i.fi = getelementptr inbounds i8, ptr %.03.i.i123, i64 -24
  %i.fj = getelementptr inbounds i8, ptr %.0142.i.i, i64 -24
  %i.fk = load <2 x i32>, ptr %i.fj, align 4, !tbaa !783
  store <2 x i32> %i.fk, ptr %i.fi, align 4, !tbaa !783
  %i.fl = getelementptr inbounds i8, ptr %.03.i.i123, i64 -32
  %i.fm = getelementptr inbounds i8, ptr %.0142.i.i, i64 -32
  %i.fn = load <2 x i32>, ptr %i.fm, align 4, !tbaa !783
  store <2 x i32> %i.fn, ptr %i.fl, align 4, !tbaa !783
  %i.fo = getelementptr inbounds i8, ptr %.03.i.i123, i64 -40
  %i.fp = getelementptr inbounds i8, ptr %.0142.i.i, i64 -40
  %i.fq = load <2 x i32>, ptr %i.fp, align 4, !tbaa !783
  store <2 x i32> %i.fq, ptr %i.fo, align 4, !tbaa !783
  %i.fr = getelementptr inbounds i8, ptr %.03.i.i123, i64 -48
  %i.fs = getelementptr inbounds i8, ptr %.0142.i.i, i64 -48
  %i.ft = load <2 x i32>, ptr %i.fs, align 4, !tbaa !783
  store <2 x i32> %i.ft, ptr %i.fr, align 4, !tbaa !783
  %i.fu = getelementptr inbounds i8, ptr %.03.i.i123, i64 -56
  %i.fv = getelementptr inbounds i8, ptr %.0142.i.i, i64 -56
  %i.fw = load <2 x i32>, ptr %i.fv, align 4, !tbaa !783
  store <2 x i32> %i.fw, ptr %i.fu, align 4, !tbaa !783
  %i.fx = getelementptr inbounds i8, ptr %.03.i.i123, i64 -64 ; 2 uses
  %i.fy = getelementptr inbounds i8, ptr %.0142.i.i, i64 -64 ; 3 uses
  %i.fz = load <2 x i32>, ptr %i.fy, align 4, !tbaa !783
  store <2 x i32> %i.fz, ptr %i.fx, align 4, !tbaa !783
  %.not.i.i125.7 = icmp eq ptr %i.fy, %i.ep
  br i1 %.not.i.i125.7, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i.loopexit, label %.lr.ph.i.i122, !llvm.loop !673

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i.loopexit: ; preds = %.lr.ph.i.i122, %.lr.ph.i.i122.prol.loopexit
  %.val54.i126.pre = load i8, ptr %i.c, align 8, !tbaa !794
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i.loopexit, %bb.k
  %.val54.i126 = phi i8 [ %.val54.i126.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i.loopexit ], [ %.val103, %bb.k ]
  %i.ga = add nsw i32 %i.em, -1                   ; 3 uses
  %i.gb = zext nneg i32 %i.ga to i64              ; 2 uses
  %i.gc = zext i8 %.val54.i126 to i64
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.gb
  %i.ge = getelementptr inbounds nuw i8, ptr %.val105, i64 12 ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.gc
  %i.gg = load <2 x i32>, ptr %i.gf, align 4, !tbaa !783
  store <2 x i32> %i.gg, ptr %i.gd, align 4, !tbaa !783
  %.val52.i128 = load i8, ptr %i.ek, align 2, !tbaa !794 ; 2 uses
  %i.gh = zext i8 %.val52.i128 to i32             ; 2 uses
  %i.gi = sub nsw i32 %i.gh, %i.ga
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr i8, ptr %i.b, i64 12      ; 2 uses
  %i.gl = getelementptr [8 x i8], ptr %i.gk, i64 %i.gj ; 7 uses
  %.idx.i60.i = shl nuw nsw i64 %i.gb, 3          ; 4 uses
  %i.gm = getelementptr i8, ptr %i.gl, i64 %.idx.i60.i ; 2 uses
  %.not1.i61.i = icmp eq i32 %i.ga, 0
  br i1 %.not1.i61.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.i135, label %.lr.ph.i63.i.preheader

.lr.ph.i63.i.preheader:                           ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i
  %i.gn = add nsw i64 %.idx.i60.i, -8             ; 2 uses
  %i.go = lshr exact i64 %i.gn, 3
  %i.gp = add nuw nsw i64 %i.go, 1                ; 2 uses
  %min.iters.check233 = icmp ult i64 %i.gn, 264
  br i1 %min.iters.check233, label %.lr.ph.i63.i.preheader263, label %vector.memcheck234

vector.memcheck234:                               ; preds = %.lr.ph.i63.i.preheader
  %i.gq = tail call i8 @llvm.umax.i8(i8 %i.ei, i8 1)
  %i.gr = shl nuw i8 %i.gq, 3
  %i.gs = zext i8 %i.gr to i64                    ; 3 uses
  %i.gt = getelementptr i8, ptr %i.ed, i64 %i.gs
  %i.gu = zext i8 %.val52.i128 to i64
  %i.gv = shl nuw nsw i64 %i.gu, 3                ; 2 uses
  %i.gw = add nuw nsw i64 %i.gv, %.idx.i60.i
  %i.gx = add nuw nsw i64 %i.gw, 16
  %i.gy = sub nsw i64 %i.gx, %i.gs
  %i.gz = getelementptr i8, ptr %i.b, i64 %i.gy
  %i.ha = getelementptr i8, ptr %i.ed, i64 16
  %i.hb = getelementptr i8, ptr %i.ed, i64 %.idx.i60.i
  %i.hc = getelementptr i8, ptr %i.hb, i64 12
  %i.hd = add nuw nsw i64 %i.gv, 24
  %i.he = sub nsw i64 %i.hd, %i.gs
  %i.hf = getelementptr i8, ptr %i.b, i64 %i.he
  %bound0235 = icmp ult ptr %i.ep, %i.gz
  %bound1236 = icmp ult ptr %i.gl, %i.gt
  %found.conflict237 = and i1 %bound0235, %bound1236
  %bound0238 = icmp ult ptr %i.ha, %i.gm
  %bound1239 = icmp ult ptr %i.hf, %i.hc
  %found.conflict240 = and i1 %bound0238, %bound1239
  %conflict.rdx241 = or i1 %found.conflict237, %found.conflict240
  br i1 %conflict.rdx241, label %.lr.ph.i63.i.preheader263, label %vector.ph242

vector.ph242:                                     ; preds = %vector.memcheck234
  %n.vec243 = and i64 %i.gp, 4611686018427387900  ; 3 uses
  %i.hg = shl i64 %n.vec243, 3                    ; 2 uses
  %i.hh = getelementptr i8, ptr %i.ep, i64 %i.hg
  %i.hi = getelementptr i8, ptr %i.gl, i64 %i.hg
  br label %vector.body244

vector.body244:                                   ; preds = %vector.body244, %vector.ph242
  %index245 = phi i64 [ 0, %vector.ph242 ], [ %index.next258, %vector.body244 ] ; 2 uses
  %i.hj = shl i64 %index245, 3                    ; 3 uses
  %i.hk = or disjoint i64 %i.hj, 16               ; 2 uses
  %next.gep246 = getelementptr i8, ptr %i.ep, i64 %i.hj
  %next.gep247 = getelementptr i8, ptr %i.ep, i64 %i.hk
  %next.gep248 = getelementptr i8, ptr %i.gl, i64 %i.hj
  %next.gep249 = getelementptr i8, ptr %i.gl, i64 %i.hk
  %wide.vec250 = load <4 x i32>, ptr %next.gep248, align 4, !tbaa !783
  %wide.vec253 = load <4 x i32>, ptr %next.gep249, align 4, !tbaa !783
  store <4 x i32> %wide.vec250, ptr %next.gep246, align 4, !tbaa !783
  store <4 x i32> %wide.vec253, ptr %next.gep247, align 4, !tbaa !783
  %index.next258 = add nuw i64 %index245, 4       ; 2 uses
  %i.hl = icmp eq i64 %index.next258, %n.vec243
  br i1 %i.hl, label %middle.block259, label %vector.body244, !llvm.loop !19189

middle.block259:                                  ; preds = %vector.body244
  %cmp.n260 = icmp eq i64 %i.gp, %n.vec243
  br i1 %cmp.n260, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.loopexit.i133, label %.lr.ph.i63.i.preheader263

.lr.ph.i63.i.preheader263:                        ; preds = %vector.memcheck234, %.lr.ph.i63.i.preheader, %middle.block259
  %.03.i64.i.ph = phi ptr [ %i.ep, %vector.memcheck234 ], [ %i.ep, %.lr.ph.i63.i.preheader ], [ %i.hh, %middle.block259 ]
  %.0122.i.i129.ph = phi ptr [ %i.gl, %vector.memcheck234 ], [ %i.gl, %.lr.ph.i63.i.preheader ], [ %i.hi, %middle.block259 ]
  br label %.lr.ph.i63.i

.lr.ph.i63.i:                                     ; preds = %.lr.ph.i63.i.preheader263, %.lr.ph.i63.i
  %.03.i64.i = phi ptr [ %i.ho, %.lr.ph.i63.i ], [ %.03.i64.i.ph, %.lr.ph.i63.i.preheader263 ] ; 2 uses
  %.0122.i.i129 = phi ptr [ %i.hn, %.lr.ph.i63.i ], [ %.0122.i.i129.ph, %.lr.ph.i63.i.preheader263 ] ; 2 uses
  %i.hm = load <2 x i32>, ptr %.0122.i.i129, align 4, !tbaa !783
  store <2 x i32> %i.hm, ptr %.03.i64.i, align 4, !tbaa !783
  %i.hn = getelementptr inbounds nuw i8, ptr %.0122.i.i129, i64 8 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.03.i64.i, i64 8
  %.not.i65.i132 = icmp eq ptr %i.hn, %i.gm
  br i1 %.not.i65.i132, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.loopexit.i133, label %.lr.ph.i63.i, !llvm.loop !19190

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.loopexit.i133: ; preds = %.lr.ph.i63.i, %middle.block259
  %.val51.pre.i = load i8, ptr %i.ek, align 2, !tbaa !794
  %.pre.i134 = zext i8 %.val51.pre.i to i32
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.i135

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.i135: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.loopexit.i133, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i
  %.pre-phi.i136 = phi i32 [ %.pre.i134, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.loopexit.i133 ], [ %i.gh, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i ]
  %.val53.i137 = load i8, ptr %i.c, align 8, !tbaa !794
  %i.hp = zext i8 %.val53.i137 to i64
  %i.hq = sub nsw i32 %.pre-phi.i136, %i.em
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.hp
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.hr
  %i.hu = load <2 x i32>, ptr %i.ht, align 4, !tbaa !783
  store <2 x i32> %i.hu, ptr %i.hs, align 4, !tbaa !783
  %i.hv = getelementptr i8, ptr %i.b, i64 11
  %.val57.i = load i8, ptr %i.hv, align 1, !tbaa !794
  %.not.i68.i = icmp eq i8 %.val57.i, 0
  br i1 %.not.i68.i, label %bb.l, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE23rebalance_left_to_rightEhPSA_PS8_.exit

bb.l:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.i135
  %.val50.i139 = load i8, ptr %i.ee, align 1, !tbaa !794 ; 5 uses
  %i.hw = add i8 %.val50.i139, 1                  ; 2 uses
  %.not1.i = icmp eq i8 %i.hw, 0
  br i1 %.not1.i, label %.lr.ph5.i, label %.lr.ph.i140

.lr.ph.i140:                                      ; preds = %bb.l
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ed, i64 256 ; 6 uses
  %i.hy = zext i8 %i.hw to i64                    ; 2 uses
  %i.hz = and i8 %.val50.i139, 1
  %lcmp.mod270.not.not = icmp eq i8 %i.hz, 0
  br i1 %lcmp.mod270.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i140
  %i.ia = add i8 %.val50.i139, %.sroa.speculated  ; 2 uses
  %i.ib = zext i8 %.val50.i139 to i64
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.ib
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !2524 ; 3 uses
  %i.ie = zext i8 %i.ia to i64
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.ie
  store ptr %i.id, ptr %i.if, align 8, !tbaa !2524
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store i8 %i.ia, ptr %i.ig, align 1, !tbaa !794
  store ptr %i.ed, ptr %i.id, align 8, !tbaa !2524
  %indvars.iv.next.i142.prol = add nsw i64 %i.hy, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i140
  %indvars.iv.i141.unr = phi i64 [ %i.hy, %.lr.ph.i140 ], [ %indvars.iv.next.i142.prol, %.prol.loopexit.unr-lcssa ]
  %i.ih = icmp eq i8 %.val50.i139, 0
  br i1 %i.ih, label %.lr.ph5.i, label %.lr.ph.i140.new

.lr.ph5.i:                                        ; preds = %.prol.loopexit, %.lr.ph.i140.new, %bb.l
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ed, i64 256 ; 3 uses
  %i.ik = tail call i8 @llvm.umax.i8(i8 %i.ei, i8 1) ; 2 uses
  %umax = zext nneg i8 %i.ik to i64               ; 2 uses
  %xtraiter273 = and i64 %umax, 1
  %i.il = icmp samesign ult i8 %i.ei, 2
  br i1 %i.il, label %.epil.preheader272, label %.lr.ph5.i.new

.lr.ph5.i.new:                                    ; preds = %.lr.ph5.i
  %unroll_iter276 = and i64 %umax, 30
  %invariant.op = sub i8 1, %.sroa.speculated
  br label %bb.m

.lr.ph.i140.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i140.new
  %indvars.iv.i141 = phi i64 [ %indvars.iv.next.i142.1, %.lr.ph.i140.new ], [ %indvars.iv.i141.unr, %.prol.loopexit ] ; 3 uses
  %i.im = trunc nuw i64 %indvars.iv.i141 to i8
  %i.in = add i8 %i.im, -1                        ; 2 uses
  %i.io = add i8 %i.in, %.sroa.speculated         ; 2 uses
  %i.ip = zext i8 %i.in to i64
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.ip
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !2524 ; 3 uses
  %i.is = zext i8 %i.io to i64
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.is
  store ptr %i.ir, ptr %i.it, align 8, !tbaa !2524
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store i8 %i.io, ptr %i.iu, align 1, !tbaa !794
  store ptr %i.ed, ptr %i.ir, align 8, !tbaa !2524
  %i.iv = trunc i64 %indvars.iv.i141 to i8
  %i.iw = add i8 %i.iv, -2                        ; 2 uses
  %i.ix = add i8 %i.iw, %.sroa.speculated         ; 2 uses
  %i.iy = zext i8 %i.iw to i64
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.iy
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !2524 ; 3 uses
  %i.jb = zext i8 %i.ix to i64
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.jb
  store ptr %i.ja, ptr %i.jc, align 8, !tbaa !2524
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  store i8 %i.ix, ptr %i.jd, align 1, !tbaa !794
  store ptr %i.ed, ptr %i.ja, align 8, !tbaa !2524
  %indvars.iv.next.i142.1 = add nsw i64 %indvars.iv.i141, -2 ; 2 uses
  %i.je = and i64 %indvars.iv.next.i142.1, 255
  %.not.i143.1 = icmp eq i64 %i.je, 0
  br i1 %.not.i143.1, label %.lr.ph5.i, label %.lr.ph.i140.new, !llvm.loop !19191

bb.m:                                             ; preds = %bb.m, %.lr.ph5.i.new
  %indvars.iv7.i = phi i64 [ 1, %.lr.ph5.i.new ], [ %indvars.iv.next8.i.1, %bb.m ] ; 6 uses
  %niter277 = phi i64 [ 0, %.lr.ph5.i.new ], [ %niter277.next.1, %bb.m ]
  %i.jf = add nsw i64 %indvars.iv7.i, -1          ; 2 uses
  %.val49.i = load i8, ptr %i.ek, align 2, !tbaa !794
  %i.jg = trunc nuw i64 %indvars.iv7.i to i8
  %i.jh = sub i8 %i.jg, %.sroa.speculated
  %i.ji = add i8 %i.jh, %.val49.i
  %i.jj = zext i8 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.jj
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !2524 ; 3 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.jf
  store ptr %i.jl, ptr %i.jm, align 8, !tbaa !2524
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jo = trunc nuw i64 %i.jf to i8
  store i8 %i.jo, ptr %i.jn, align 1, !tbaa !794
  store ptr %i.ed, ptr %i.jl, align 8, !tbaa !2524
  %.val49.i.1 = load i8, ptr %i.ek, align 2, !tbaa !794
  %i.jp = trunc i64 %indvars.iv7.i to i8
  %.reass = add i8 %i.jp, %invariant.op
  %i.jq = add i8 %.reass, %.val49.i.1
  %i.jr = zext i8 %i.jq to i64
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.jr
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !2524 ; 3 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv7.i
  store ptr %i.jt, ptr %i.ju, align 8, !tbaa !2524
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jw = trunc nuw i64 %indvars.iv7.i to i8
  store i8 %i.jw, ptr %i.jv, align 1, !tbaa !794
  store ptr %i.ed, ptr %i.jt, align 8, !tbaa !2524
  %indvars.iv.next8.i.1 = add nuw nsw i64 %indvars.iv7.i, 2 ; 2 uses
  %niter277.next.1 = add nuw i64 %niter277, 2     ; 2 uses
  %niter277.ncmp.1 = icmp eq i64 %niter277.next.1, %unroll_iter276
  br i1 %niter277.ncmp.1, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE23rebalance_left_to_rightEhPSA_PS8_.exit.loopexit.unr-lcssa, label %bb.m, !llvm.loop !19192

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE23rebalance_left_to_rightEhPSA_PS8_.exit.loopexit.unr-lcssa: ; preds = %bb.m
  %lcmp.mod274.not = icmp eq i64 %xtraiter273, 0
  br i1 %lcmp.mod274.not, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE23rebalance_left_to_rightEhPSA_PS8_.exit, label %.epil.preheader272

.epil.preheader272:                               ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE23rebalance_left_to_rightEhPSA_PS8_.exit.loopexit.unr-lcssa, %.lr.ph5.i
  %indvars.iv7.i.epil.init = phi i64 [ 1, %.lr.ph5.i ], [ %indvars.iv.next8.i.1, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE23rebalance_left_to_rightEhPSA_PS8_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod275 = trunc i8 %i.ik to i1
  tail call void @llvm.assume(i1 %lcmp.mod275)
  %i.jx = add nsw i64 %indvars.iv7.i.epil.init, -1 ; 2 uses
  %.val49.i.epil = load i8, ptr %i.ek, align 2, !tbaa !794
  %i.jy = trunc nuw i64 %indvars.iv7.i.epil.init to i8
  %i.jz = sub i8 %i.jy, %.sroa.speculated
  %i.ka = add i8 %i.jz, %.val49.i.epil
  %i.kb = zext i8 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.kb
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !2524 ; 3 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.jx
  store ptr %i.kd, ptr %i.ke, align 8, !tbaa !2524
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kg = trunc nuw i64 %i.jx to i8
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKS5_iEPSG_EE:bb.a
  %i.lt = load i32, ptr %i.a, align 8, !tbaa !783
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE5splitEiPSA_PS8_(ptr noundef nonnull align 1 dereferenceable(1) %i.ls, i32 noundef %i.lt, ptr noundef nonnull %i.ln)
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.u
  %.0 = phi ptr [ %i.ld, %bb.t ], [ %i.ld, %bb.s ], [ %i.ln, %bb.u ]
  %i.lu = load i32, ptr %i.a, align 8, !tbaa !783 ; 2 uses
  %i.lv = load ptr, ptr %1, align 8, !tbaa !2524
  %i.lw = getelementptr i8, ptr %i.lv, i64 10
  %.val = load i8, ptr %i.lw, align 1, !tbaa !794
  %i.lx = zext i8 %.val to i32                    ; 2 uses
  %i.ly = icmp sgt i32 %i.lu, %i.lx
  br i1 %i.ly, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.lz = xor i32 %i.lx, -1
  %i.ma = add nsw i32 %i.lu, %i.lz
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.w, %bb.g, %bb.n
  %.sink176 = phi i32 [ %i.kp, %bb.n ], [ %i.dw, %bb.g ], [ %i.ma, %bb.w ]
  %.sink = phi ptr [ %i.ed, %bb.n ], [ %i.h, %bb.g ], [ %.0, %bb.w ]
  store i32 %.sink176, ptr %i.a, align 8, !tbaa !783
  store ptr %.sink, ptr %1, align 8, !tbaa !2524
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE23rebalance_left_to_rightEhPSA_PS8_.exit, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE23rebalance_right_to_leftEhPSA_PS8_.exit, %bb.v
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE16clear_and_deleteEPSA_PS8_(ptr noundef %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 11
  %.val55 = load i8, ptr %i.a, align 1, !tbaa !794 ; 2 uses
  %.not1 = icmp eq i8 %.val55, 0
  br i1 %.not1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i8 %.val55 to i64
  %i.c = shl nuw nsw i64 %i.b, 3
  %i.d = add nuw nsw i64 %i.c, 16
  br label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 10
  %.val66 = load i8, ptr %i.e, align 1, !tbaa !794
  %i.f = icmp eq i8 %.val66, 0
  br i1 %i.f, label %.loopexit.sink.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %.val59 = load ptr, ptr %0, align 8, !tbaa !2524
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0497 = phi ptr [ %.049.val69, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %i.g = getelementptr i8, ptr %.0497, i64 256
  %.049.val69 = load ptr, ptr %i.g, align 8, !tbaa !2524 ; 4 uses
  %i.h = getelementptr i8, ptr %.049.val69, i64 11
  %.049.val62 = load i8, ptr %i.h, align 1, !tbaa !794
  %.not.i = icmp eq i8 %.049.val62, 0
  br i1 %.not.i, label %.lr.ph, label %._crit_edge, !llvm.loop !19193

._crit_edge:                                      ; preds = %.lr.ph
  %i.i = getelementptr i8, ptr %.049.val69, i64 8
  %.049.val = load i8, ptr %i.i, align 1, !tbaa !794
  %i.j = zext i8 %.049.val to i64
  %.049.val58 = load ptr, ptr %.049.val69, align 8, !tbaa !2524
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %._crit_edge
  %.147 = phi i64 [ %i.j, %._crit_edge ], [ %.147.be, %.backedge ] ; 2 uses
  %.1 = phi ptr [ %.049.val58, %._crit_edge ], [ %.1.be, %.backedge ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.1, i64 256
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.147
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2524 ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 11
  %.val61 = load i8, ptr %i.n, align 1, !tbaa !794 ; 2 uses
  %.not.i70 = icmp eq i8 %.val61, 0
  br i1 %.not.i70, label %.lr.ph11, label %bb.e

.lr.ph11:                                         ; preds = %bb.d, %.lr.ph11
  %.15010 = phi ptr [ %.150.val68, %.lr.ph11 ], [ %i.m, %bb.d ]
  %i.o = getelementptr i8, ptr %.15010, i64 256
  %.150.val68 = load ptr, ptr %i.o, align 8, !tbaa !2524 ; 5 uses
  %i.p = getelementptr i8, ptr %.150.val68, i64 11
  %.150.val60 = load i8, ptr %i.p, align 1, !tbaa !794 ; 2 uses
  %.not.i71 = icmp eq i8 %.150.val60, 0
  br i1 %.not.i71, label %.lr.ph11, label %._crit_edge12, !llvm.loop !19194

._crit_edge12:                                    ; preds = %.lr.ph11
  %i.q = getelementptr i8, ptr %.150.val68, i64 8
  %.150.val = load i8, ptr %i.q, align 1, !tbaa !794
  %i.r = zext i8 %.150.val to i64
  %.150.val57 = load ptr, ptr %.150.val68, align 8, !tbaa !2524
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge12, %bb.d
  %.251.val = phi i8 [ %.150.val60, %._crit_edge12 ], [ %.val61, %bb.d ]
  %.251 = phi ptr [ %.150.val68, %._crit_edge12 ], [ %i.m, %bb.d ]
  %.248 = phi i64 [ %i.r, %._crit_edge12 ], [ %.147, %bb.d ] ; 2 uses
  %.2 = phi ptr [ %.150.val57, %._crit_edge12 ], [ %.1, %bb.d ] ; 3 uses
  %i.s = zext i8 %.251.val to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 16
  tail call void @_ZdlPvm(ptr noundef nonnull %.251, i64 noundef %i.u) #36
  %i.v = getelementptr i8, ptr %.2, i64 10
  %.2.val = load i8, ptr %i.v, align 1, !tbaa !794
  %i.w = zext i8 %.2.val to i64
  %.not.not = icmp samesign ult i64 %.248, %i.w
  br i1 %.not.not, label %.backedge, label %.preheader2

.backedge:                                        ; preds = %bb.e, %bb.g
  %.147.be.in = phi i64 [ %.248, %bb.e ], [ %i.aa, %bb.g ]
  %.1.be = phi ptr [ %.2, %bb.e ], [ %.3.val56, %bb.g ]
  %.147.be = add nuw nsw i64 %.147.be.in, 1
  br label %bb.d

.preheader2:                                      ; preds = %bb.e, %bb.f
  %.3 = phi ptr [ %.3.val56, %bb.f ], [ %.2, %bb.e ] ; 3 uses
  %i.x = getelementptr i8, ptr %.3, i64 8
  %.3.val = load i8, ptr %i.x, align 1, !tbaa !794 ; 2 uses
  %.3.val56 = load ptr, ptr %.3, align 8, !tbaa !2524 ; 4 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.3, i64 noundef 504) #36
  %i.y = icmp eq ptr %.3.val56, %.val59
  br i1 %i.y, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.preheader2
  %i.z = getelementptr i8, ptr %.3.val56, i64 10
  %.val = load i8, ptr %i.z, align 1, !tbaa !794
  %.not = icmp ult i8 %.3.val, %.val
  br i1 %.not, label %bb.g, label %.preheader2, !llvm.loop !19195

bb.g:                                             ; preds = %bb.f
  %i.aa = zext i8 %.3.val to i64
  br label %.backedge

.loopexit.sink.split:                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ %i.d, %bb.b ], [ 504, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef %.sink) #36
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader2, %.loopexit.sink.split
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE5splitEiPSA_PS8_(ptr nofree noundef nonnull align 1 captures(address) dereferenceable(1) %0, i32 noundef %1, ptr noundef initializes((10, 11)) %2) unnamed_addr #27 align 2 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 30, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 10
  %.val31 = load i8, ptr %i.a, align 1, !tbaa !794
  %i.b = add i8 %.val31, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 10
  %.val39 = load i8, ptr %i.c, align 1, !tbaa !794
  %i.d = lshr i8 %.val39, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.b, %bb.b ], [ %i.d, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.sink, ptr %i.e, align 1, !tbaa !794
  %i.f = getelementptr i8, ptr %0, i64 10         ; 5 uses
  %.val30 = load i8, ptr %i.f, align 1, !tbaa !794
  %i.g = getelementptr i8, ptr %2, i64 10         ; 2 uses
  %i.h = sub i8 %.val30, %.sink                   ; 3 uses
  store i8 %i.h, ptr %i.f, align 1, !tbaa !794
  %.val37 = load i8, ptr %i.g, align 1, !tbaa !794 ; 2 uses
  %i.i = zext i8 %.val37 to i64
  %i.j = zext i8 %i.h to i64                      ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 12         ; 2 uses
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.j ; 7 uses
  %.idx.i = shl nuw nsw i64 %i.i, 3               ; 5 uses
  %i.m = getelementptr i8, ptr %i.l, i64 %.idx.i  ; 2 uses
  %.not1.i = icmp eq i8 %.val37, 0
  br i1 %.not1.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.n = getelementptr i8, ptr %2, i64 12         ; 6 uses
  %i.o = add nsw i64 %.idx.i, -8                  ; 2 uses
  %i.p = lshr exact i64 %i.o, 3
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.o, 200
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.r = getelementptr i8, ptr %2, i64 %.idx.i
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = shl nuw nsw i64 %i.j, 3                  ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 %.idx.i
  %i.v = getelementptr i8, ptr %i.u, i64 %i.t
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %3 = getelementptr i8, ptr %2, i64 16
  %4 = getelementptr i8, ptr %2, i64 %.idx.i
  %5 = getelementptr i8, ptr %4, i64 12
  %i.x = getelementptr i8, ptr %0, i64 %i.t
  %i.y = getelementptr i8, ptr %i.x, i64 16
  %bound0 = icmp ult ptr %i.n, %i.w
  %bound1 = icmp ult ptr %i.l, %i.s
  %found.conflict = and i1 %bound0, %bound1
  %bound015 = icmp ult ptr %3, %i.m
  %bound116 = icmp ult ptr %i.y, %5
  %found.conflict17 = and i1 %bound015, %bound116
  %conflict.rdx = or i1 %found.conflict, %found.conflict17
  br i1 %conflict.rdx, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.q, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.n, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.l, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 3 uses
  %i.ad = or disjoint i64 %i.ac, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.ac
  %next.gep18 = getelementptr i8, ptr %i.n, i64 %i.ad
  %next.gep19 = getelementptr i8, ptr %i.l, i64 %i.ac
  %next.gep20 = getelementptr i8, ptr %i.l, i64 %i.ad
  %wide.vec = load <4 x i32>, ptr %next.gep19, align 4, !tbaa !783
  %wide.vec22 = load <4 x i32>, ptr %next.gep20, align 4, !tbaa !783
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !783
  store <4 x i32> %wide.vec22, ptr %next.gep18, align 4, !tbaa !783
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !19196

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %.03.i.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.preheader.i ], [ %i.aa, %middle.block ]
  %.0122.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.preheader.i ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.03.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %.03.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.0122.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %.0122.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.af = load <2 x i32>, ptr %.0122.i, align 4, !tbaa !783
  store <2 x i32> %i.af, ptr %.03.i, align 4, !tbaa !783
  %i.ag = getelementptr inbounds nuw i8, ptr %.0122.i, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.03.i, i64 8
  %.not.i = icmp eq ptr %i.ag, %i.m
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.loopexit, label %.lr.ph.i, !llvm.loop !19197

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.pre = load i8, ptr %i.f, align 1, !tbaa !794
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.loopexit, %bb.d
  %i.ai = phi i8 [ %.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.loopexit ], [ %i.h, %bb.d ]
  %i.aj = add i8 %i.ai, -1                        ; 2 uses
  store i8 %i.aj, ptr %i.f, align 1, !tbaa !794
  %.val35 = load ptr, ptr %0, align 8, !tbaa !2524 ; 5 uses
  %i.ak = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.val33 = load i8, ptr %i.ak, align 8, !tbaa !794 ; 4 uses
  %i.al = zext i8 %i.aj to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.al
  %i.an = zext i8 %.val33 to i32
  %i.ao = getelementptr i8, ptr %.val35, i64 10   ; 3 uses
  %.val21.i = load i8, ptr %i.ao, align 1, !tbaa !794 ; 3 uses
  %i.ap = icmp ult i8 %.val33, %.val21.i
  %i.aq = zext i8 %.val33 to i64                  ; 4 uses
  br i1 %i.ap, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.val35, i64 12
  %i.as = getelementptr [8 x i8], ptr %i.ar, i64 %i.aq ; 3 uses
  %narrow.i = sub nuw i8 %.val21.i, %.val33
  %i.at = zext i8 %narrow.i to i64                ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.at, 3            ; 2 uses
  %i.au = getelementptr i8, ptr %i.as, i64 8
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %i.at ; 2 uses
  %i.aw = getelementptr i8, ptr %i.as, i64 %.idx.i.i ; 2 uses
  %i.ax = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 3
  %i.az = add nuw nsw i64 %i.ay, 1
  %xtraiter = and i64 %i.az, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %.03.i.i.prol = phi ptr [ %i.ba, %.lr.ph.i.i.prol ], [ %i.av, %.lr.ph.preheader.i.i ]
  %.0142.i.i.prol = phi ptr [ %i.bb, %.lr.ph.i.i.prol ], [ %i.aw, %.lr.ph.preheader.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.ba = getelementptr inbounds i8, ptr %.03.i.i.prol, i64 -8 ; 3 uses
  %i.bb = getelementptr inbounds i8, ptr %.0142.i.i.prol, i64 -8 ; 3 uses
  %i.bc = load <2 x i32>, ptr %i.bb, align 4, !tbaa !783
  store <2 x i32> %i.bc, ptr %i.ba, align 4, !tbaa !783
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !19198

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.03.i.i.unr = phi ptr [ %i.av, %.lr.ph.preheader.i.i ], [ %i.ba, %.lr.ph.i.i.prol ]
  %.0142.i.i.unr = phi ptr [ %i.aw, %.lr.ph.preheader.i.i ], [ %i.bb, %.lr.ph.i.i.prol ]
  %i.bd = icmp ult i64 %i.ax, 56
  br i1 %i.bd, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.03.i.i = phi ptr [ %i.bz, %.lr.ph.i.i ], [ %.03.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 8 uses
  %.0142.i.i = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %.0142.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 8 uses
  %i.be = getelementptr inbounds i8, ptr %.03.i.i, i64 -8
  %i.bf = getelementptr inbounds i8, ptr %.0142.i.i, i64 -8
  %i.bg = load <2 x i32>, ptr %i.bf, align 4, !tbaa !783
  store <2 x i32> %i.bg, ptr %i.be, align 4, !tbaa !783
  %i.bh = getelementptr inbounds i8, ptr %.03.i.i, i64 -16
  %i.bi = getelementptr inbounds i8, ptr %.0142.i.i, i64 -16
  %i.bj = load <2 x i32>, ptr %i.bi, align 4, !tbaa !783
  store <2 x i32> %i.bj, ptr %i.bh, align 4, !tbaa !783
  %i.bk = getelementptr inbounds i8, ptr %.03.i.i, i64 -24
  %i.bl = getelementptr inbounds i8, ptr %.0142.i.i, i64 -24
  %i.bm = load <2 x i32>, ptr %i.bl, align 4, !tbaa !783
  store <2 x i32> %i.bm, ptr %i.bk, align 4, !tbaa !783
  %i.bn = getelementptr inbounds i8, ptr %.03.i.i, i64 -32
  %i.bo = getelementptr inbounds i8, ptr %.0142.i.i, i64 -32
  %i.bp = load <2 x i32>, ptr %i.bo, align 4, !tbaa !783
  store <2 x i32> %i.bp, ptr %i.bn, align 4, !tbaa !783
  %i.bq = getelementptr inbounds i8, ptr %.03.i.i, i64 -40
  %i.br = getelementptr inbounds i8, ptr %.0142.i.i, i64 -40
  %i.bs = load <2 x i32>, ptr %i.br, align 4, !tbaa !783
  store <2 x i32> %i.bs, ptr %i.bq, align 4, !tbaa !783
  %i.bt = getelementptr inbounds i8, ptr %.03.i.i, i64 -48
  %i.bu = getelementptr inbounds i8, ptr %.0142.i.i, i64 -48
  %i.bv = load <2 x i32>, ptr %i.bu, align 4, !tbaa !783
  store <2 x i32> %i.bv, ptr %i.bt, align 4, !tbaa !783
  %i.bw = getelementptr inbounds i8, ptr %.03.i.i, i64 -56
  %i.bx = getelementptr inbounds i8, ptr %.0142.i.i, i64 -56
  %i.by = load <2 x i32>, ptr %i.bx, align 4, !tbaa !783
  store <2 x i32> %i.by, ptr %i.bw, align 4, !tbaa !783
  %i.bz = getelementptr inbounds i8, ptr %.03.i.i, i64 -64 ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %.0142.i.i, i64 -64 ; 3 uses
  %i.cb = load <2 x i32>, ptr %i.ca, align 4, !tbaa !783
  store <2 x i32> %i.cb, ptr %i.bz, align 4, !tbaa !783
  %.not.i.i.7 = icmp eq ptr %i.ca, %i.as
  br i1 %.not.i.i.7, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !673

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.val19.pre.i = load i8, ptr %i.ao, align 1, !tbaa !794
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.loopexit.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit
  %.val19.i = phi i8 [ %.val19.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.loopexit.i ], [ %.val21.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.val35, i64 12
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.aq
  %i.ce = load <2 x i32>, ptr %i.am, align 4, !tbaa !783
  store <2 x i32> %i.ce, ptr %i.cd, align 4, !tbaa !783
  %i.cf = add i8 %.val19.i, 1                     ; 3 uses
  store i8 %i.cf, ptr %i.ao, align 1, !tbaa !794
  %i.cg = getelementptr i8, ptr %.val35, i64 11
  %.val22.i = load i8, ptr %i.cg, align 1, !tbaa !794
  %.not.i25.i = icmp eq i8 %.val22.i, 0
  br i1 %.not.i25.i, label %bb.e, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE13emplace_valueIJPNS1_13map_slot_typeIS5_iEEEEEvhPS8_DpOT_.exit

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i
  %i.ch = zext i8 %i.cf to i32
  %i.ci = add nuw nsw i32 %i.an, 1                ; 2 uses
  %i.cj = icmp samesign ult i32 %i.ci, %i.ch
  br i1 %i.cj, label %.lr.ph.i41, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE13emplace_valueIJPNS1_13map_slot_typeIS5_iEEEEEvhPS8_DpOT_.exit

.lr.ph.i41:                                       ; preds = %bb.e
  %i.ck = getelementptr inbounds nuw i8, ptr %.val35, i64 256 ; 10 uses
  %i.cl = zext i8 %i.cf to i64                    ; 4 uses
  %i.cm = zext nneg i32 %i.ci to i64
  %i.cn = xor i64 %i.aq, -1
  %i.co = add nsw i64 %i.cn, %i.cl
  %i.cp = add nsw i64 %i.cl, -2
  %i.cq = sub nsw i64 %i.cp, %i.aq
  %xtraiter27 = and i64 %i.co, 3                  ; 2 uses
  %lcmp.mod28.not = icmp eq i64 %xtraiter27, 0
  br i1 %lcmp.mod28.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i41, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.cr, %.prol.preheader ], [ %i.cl, %.lr.ph.i41 ] ; 3 uses
  %prol.iter29 = phi i64 [ %prol.iter29.next, %.prol.preheader ], [ 0, %.lr.ph.i41 ]
  %i.cr = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !2524 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.prol
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !2524
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cw = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.cw, ptr %i.cv, align 1, !tbaa !794
  %prol.iter29.next = add i64 %prol.iter29, 1     ; 2 uses
  %prol.iter29.cmp.not = icmp eq i64 %prol.iter29.next, %xtraiter27
  br i1 %prol.iter29.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !19199

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i41
  %indvars.iv.unr = phi i64 [ %i.cl, %.lr.ph.i41 ], [ %i.cr, %.prol.preheader ]
  %i.cx = icmp ult i64 %i.cq, 3
  br i1 %i.cx, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE13emplace_valueIJPNS1_13map_slot_typeIS5_iEEEEEvhPS8_DpOT_.exit, label %.lr.ph.i41.new

.lr.ph.i41.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i41.new
  %indvars.iv = phi i64 [ %i.dq, %.lr.ph.i41.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.cy = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !2524 ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv
  store ptr %i.da, ptr %i.db, align 8, !tbaa !2524
end_hunk_2
begin_hunk_3_@_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiNS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEED0Ev:bb.a
  %.not.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiNS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiNS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiNS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2545
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiNS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiNS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEE8IsSharedEv.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !794
  %i.f = atomicrmw add ptr %i.e, i32 -1 acq_rel, align 4
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiNS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !2540
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2545
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !794
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiNS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEED2Ev.exit unwind label %bb.d, !inline_history !661

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #39, !inline_history !2546
  unreachable

_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiNS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiNS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiNS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEE19MatchAndExplainImplINSE_11ValuePolicyIPKNS_16MatcherInterfaceISD_EELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_fp1_EERKSE_SD_PNS_19MatchResultListenerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !794
  %i.b = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !2542 ; 2 uses
  %i.c = load ptr, ptr %.val.val, align 8, !tbaa !797
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %.val.val, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2)
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiNS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEE12DescribeImplINSE_11ValuePolicyIPKNS_16MatcherInterfaceISD_EELb1EEEEEvRKSE_PSob(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4 = load ptr, ptr %i.a, align 8, !tbaa !794
  %i.b = getelementptr i8, ptr %.val4, i64 8
  %.val4.val = load ptr, ptr %i.b, align 8, !tbaa !2542 ; 2 uses
  %i.c = load ptr, ptr %.val4.val, align 8, !tbaa !797
  %. = select i1 %2, i64 24, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %.
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %.val4.val, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiNS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEE16GetDescriberImplINSE_11ValuePolicyIPKNS_16MatcherInterfaceISD_EELb1EEEEEPKNS_25MatcherDescriberInterfaceERKSE_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !794
  %i.b = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !2542
  ret ptr %.val.val
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605269btree_mapINS5_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiNS8_32OnlyConstructibleByAllocatorCompENS8_26OnlyConstructibleAllocatorIS9_EEEEEESt14default_deleteISH_EEE7DestroyEPNS0_17SharedPayloadBaseE(ptr noundef %0) #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !2542 ; 3 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605269btree_mapINS5_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiNS8_32OnlyConstructibleByAllocatorCompENS8_26OnlyConstructibleAllocatorIS9_EEEEEESt14default_deleteISH_EEED2Ev.exit, label %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiNS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEEEEclEPSF_.exit.i.i

_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiNS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEEEEclEPSF_.exit.i.i: ; preds = %bb.b
  %i.c = load ptr, ptr %.val, align 8, !tbaa !797
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %.val) #37, !inline_history !19301
  br label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605269btree_mapINS5_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiNS8_32OnlyConstructibleByAllocatorCompENS8_26OnlyConstructibleAllocatorIS9_EEEEEESt14default_deleteISH_EEED2Ev.exit

_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605269btree_mapINS5_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiNS8_32OnlyConstructibleByAllocatorCompENS8_26OnlyConstructibleAllocatorIS9_EEEEEESt14default_deleteISH_EEED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiNS6_32OnlyConstructibleByAllocatorCompENS6_26OnlyConstructibleAllocatorIS7_EEEEEEEclEPSF_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  br label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605269btree_mapINS5_18container_internal12_GLOBAL__N_128OnlyConstructibleByAllocatorEiNS8_32OnlyConstructibleByAllocatorCompENS8_26OnlyConstructibleAllocatorIS9_EEEEEESt14default_deleteISH_EEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE16internal_emplaceIJPNS1_13map_slot_typeIS5_iEEEEENS1_14btree_iteratorINS1_10btree_nodeISC_EERSt4pairIKS5_iEPSN_EESQ_DpOT_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr %1, i32 %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.4180", align 8 ; 6 uses
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 11
  %.val = load i8, ptr %i.b, align 1, !tbaa !794  ; 2 uses
  %.not.i = icmp eq i8 %.val, 0
  br i1 %.not.i, label %.thread.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert18 = getelementptr i8, ptr %1, i64 10
  %.val5.pre = load i8, ptr %.phi.trans.insert18, align 1, !tbaa !794
  br label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.d = and i32 %2, 255
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.e
  %.11727.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !2554 ; 3 uses
  %i.g = getelementptr i8, ptr %.11727.i.i.i, i64 11
  %.117.val2028.i.i.i = load i8, ptr %i.g, align 1, !tbaa !794 ; 2 uses
  %.not.i29.i.i.i = icmp eq i8 %.117.val2028.i.i.i, 0
  br i1 %.not.i29.i.i.i, label %.lr.ph31.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS5_32OnlyConstructibleByAllocatorCompENS5_26OnlyConstructibleAllocatorIS6_EESt17integral_constantIiLi256EESA_IbLb1EEEEEEERSt4pairIKS6_iEPSH_EmmEv.exit

.lr.ph31.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph31.i.i.i
  %.11730.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph31.i.i.i ], [ %.11727.i.i.i, %.thread.i.i ] ; 2 uses
  %i.h = getelementptr i8, ptr %.11730.i.i.i, i64 10
  %.117.val18.i.i.i = load i8, ptr %i.h, align 1, !tbaa !794
  %i.i = getelementptr inbounds nuw i8, ptr %.11730.i.i.i, i64 256
  %i.j = zext i8 %.117.val18.i.i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %.117.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !2554 ; 3 uses
  %i.l = getelementptr i8, ptr %.117.i.i.i, i64 11
  %.117.val20.i.i.i = load i8, ptr %i.l, align 1, !tbaa !794 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %.117.val20.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph31.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS5_32OnlyConstructibleByAllocatorCompENS5_26OnlyConstructibleAllocatorIS6_EESt17integral_constantIiLi256EESA_IbLb1EEEEEEERSt4pairIKS6_iEPSH_EmmEv.exit, !llvm.loop !662

_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS5_32OnlyConstructibleByAllocatorCompENS5_26OnlyConstructibleAllocatorIS6_EESt17integral_constantIiLi256EESA_IbLb1EEEEEEERSt4pairIKS6_iEPSH_EmmEv.exit: ; preds = %.lr.ph31.i.i.i, %.thread.i.i
  %.val4.pre = phi i8 [ %.117.val2028.i.i.i, %.thread.i.i ], [ %.117.val20.i.i.i, %.lr.ph31.i.i.i ]
  %.117.lcssa.i.i.i = phi ptr [ %.11727.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph31.i.i.i ] ; 3 uses
  %i.m = getelementptr i8, ptr %.117.lcssa.i.i.i, i64 10
  %.117.val.i.i.i = load i8, ptr %i.m, align 1, !tbaa !794 ; 2 uses
  %i.n = zext i8 %.117.val.i.i.i to i32
  store ptr %.117.lcssa.i.i.i, ptr %4, align 8
  store i32 %i.n, ptr %i.a, align 8, !tbaa !2582
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS5_32OnlyConstructibleByAllocatorCompENS5_26OnlyConstructibleAllocatorIS6_EESt17integral_constantIiLi256EESA_IbLb1EEEEEEERSt4pairIKS6_iEPSH_EmmEv.exit
  %.val5 = phi i8 [ %.117.val.i.i.i, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS5_32OnlyConstructibleByAllocatorCompENS5_26OnlyConstructibleAllocatorIS6_EESt17integral_constantIiLi256EESA_IbLb1EEEEEEERSt4pairIKS6_iEPSH_EmmEv.exit ], [ %.val5.pre, %._crit_edge ] ; 3 uses
  %.val4 = phi i8 [ %.val4.pre, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS5_32OnlyConstructibleByAllocatorCompENS5_26OnlyConstructibleAllocatorIS6_EESt17integral_constantIiLi256EESA_IbLb1EEEEEEERSt4pairIKS6_iEPSH_EmmEv.exit ], [ %.val, %._crit_edge ]
  %i.o = phi ptr [ %.117.lcssa.i.i.i, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS5_32OnlyConstructibleByAllocatorCompENS5_26OnlyConstructibleAllocatorIS6_EESt17integral_constantIiLi256EESA_IbLb1EEEEEEERSt4pairIKS6_iEPSH_EmmEv.exit ], [ %1, %._crit_edge ] ; 5 uses
  %i.p = getelementptr i8, ptr %i.o, i64 10       ; 2 uses
  %i.q = icmp eq i8 %.val5, %.val4
  br i1 %i.q, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i8 %.val5, 30
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = shl nuw nsw i8 %.val5, 1
  %i.t = tail call i8 @llvm.umin.i8(i8 %i.s, i8 30) ; 2 uses
  %i.u = shl nuw i8 %i.t, 3
  %i.v = zext i8 %i.u to i64
  %i.w = add nuw nsw i64 %i.v, 16
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #35 ; 13 uses
  store ptr %i.x, ptr %i.x, align 8, !tbaa !2554
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i8 0, ptr %i.y, align 8, !tbaa !794
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 9
  store i8 0, ptr %i.z, align 1, !tbaa !794
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 11
  store i8 %i.t, ptr %i.aa, align 1, !tbaa !794
  store ptr %i.x, ptr %4, align 8, !tbaa !2583
  %.val13.i.i = load i8, ptr %i.p, align 1, !tbaa !794 ; 3 uses
  %i.ab = zext i8 %.val13.i.i to i64
  %i.ac = getelementptr i8, ptr %i.o, i64 12      ; 7 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.ab, 3          ; 4 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 %.idx.i.i.i ; 2 uses
  %.not1.i.i.i = icmp eq i8 %.val13.i.i, 0
  br i1 %.not1.i.i.i, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE16internal_emplaceIJPNS1_13map_slot_typeIS5_iEEEEENS1_14btree_iteratorINS1_10btree_nodeISC_EERSt4pairIKS5_iEPSN_EESQ_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.ae = getelementptr i8, ptr %i.x, i64 12      ; 6 uses
  %i.af = add nsw i64 %.idx.i.i.i, -8             ; 2 uses
  %i.ag = lshr exact i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i9.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.i.i
  %i.ai = add nuw nsw i64 %.idx.i.i.i, 8          ; 2 uses
  %i.aj = getelementptr i8, ptr %i.x, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.o, i64 %i.ai
  %5 = getelementptr i8, ptr %i.x, i64 16
  %6 = getelementptr i8, ptr %i.x, i64 %.idx.i.i.i
  %7 = getelementptr i8, ptr %6, i64 12
  %i.al = getelementptr i8, ptr %i.o, i64 16
  %bound0 = icmp ult ptr %i.ae, %i.ak
  %bound1 = icmp ult ptr %i.ac, %i.aj
  %found.conflict = and i1 %bound0, %bound1
  %bound08 = icmp ult ptr %5, %i.ad
  %bound19 = icmp ult ptr %i.al, %7
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %.lr.ph.i.i.i9.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.ae, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.ac, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3                       ; 3 uses
  %i.aq = or disjoint i64 %i.ap, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ae, i64 %i.ap
  %next.gep11 = getelementptr i8, ptr %i.ae, i64 %i.aq
  %next.gep12 = getelementptr i8, ptr %i.ac, i64 %i.ap
  %next.gep13 = getelementptr i8, ptr %i.ac, i64 %i.aq
  %wide.vec = load <4 x i32>, ptr %next.gep12, align 4, !tbaa !783
  %wide.vec15 = load <4 x i32>, ptr %next.gep13, align 4, !tbaa !783
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !783
  store <4 x i32> %wide.vec15, ptr %next.gep11, align 4, !tbaa !783
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !19302

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE16internal_emplaceIJPNS1_13map_slot_typeIS5_iEEEEENS1_14btree_iteratorINS1_10btree_nodeISC_EERSt4pairIKS5_iEPSN_EESQ_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i9.preheader

.lr.ph.i.i.i9.preheader:                          ; preds = %vector.memcheck, %.lr.ph.preheader.i.i.i, %middle.block
  %.03.i.i.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.preheader.i.i.i ], [ %i.an, %middle.block ]
  %.0122.i.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.preheader.i.i.i ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i9

.lr.ph.i.i.i9:                                    ; preds = %.lr.ph.i.i.i9.preheader, %.lr.ph.i.i.i9
  %.03.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i9 ], [ %.03.i.i.i.ph, %.lr.ph.i.i.i9.preheader ] ; 2 uses
  %.0122.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i9 ], [ %.0122.i.i.i.ph, %.lr.ph.i.i.i9.preheader ] ; 2 uses
  %i.as = load <2 x i32>, ptr %.0122.i.i.i, align 4, !tbaa !783
  store <2 x i32> %i.as, ptr %.03.i.i.i, align 4, !tbaa !783
  %i.at = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 8
  %.not.i.i.i10 = icmp eq ptr %i.at, %i.ad
  br i1 %.not.i.i.i10, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE16internal_emplaceIJPNS1_13map_slot_typeIS5_iEEEEENS1_14btree_iteratorINS1_10btree_nodeISC_EERSt4pairIKS5_iEPSN_EESQ_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i9, !llvm.loop !19303

_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE16internal_emplaceIJPNS1_13map_slot_typeIS5_iEEEEENS1_14btree_iteratorINS1_10btree_nodeISC_EERSt4pairIKS5_iEPSN_EESQ_DpOT_ENKUlhE_clEh.exit: ; preds = %.lr.ph.i.i.i9, %middle.block, %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  store i8 %.val13.i.i, ptr %i.av, align 2, !tbaa !794
  store i8 0, ptr %i.p, align 1, !tbaa !794
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE16clear_and_deleteEPSD_PS8_(ptr noundef nonnull %i.o)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.aw, align 8, !tbaa !2554
  store ptr %i.x, ptr %0, align 8, !tbaa !2554
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISC_EERSt4pairIKS5_iEPSJ_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %4)
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE16internal_emplaceIJPNS1_13map_slot_typeIS5_iEEEEENS1_14btree_iteratorINS1_10btree_nodeISC_EERSt4pairIKS5_iEPSN_EESQ_DpOT_ENKUlhE_clEh.exit, %bb.e, %bb.b
  %i.ax = load ptr, ptr %4, align 8, !tbaa !2583  ; 5 uses
  %i.ay = load i32, ptr %i.a, align 8, !tbaa !2582 ; 2 uses
  %i.az = trunc i32 %i.ay to i8                   ; 2 uses
  %.val8 = load ptr, ptr %3, align 8
  %i.ba = and i32 %i.ay, 255                      ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ax, i64 10     ; 3 uses
  %.val21.i = load i8, ptr %i.bb, align 1, !tbaa !794 ; 3 uses
  %i.bc = icmp ugt i8 %.val21.i, %i.az
  %i.bd = zext nneg i32 %i.ba to i64              ; 4 uses
  br i1 %i.bc, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.bf = getelementptr [8 x i8], ptr %i.be, i64 %i.bd ; 3 uses
  %narrow.i = sub nuw i8 %.val21.i, %i.az
  %i.bg = zext i8 %narrow.i to i64                ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.bg, 3            ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bf, i64 8
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.bg ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bf, i64 %.idx.i.i ; 2 uses
  %i.bk = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.bl = lshr exact i64 %i.bk, 3
  %i.bm = add nuw nsw i64 %i.bl, 1
  %xtraiter = and i64 %i.bm, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %.03.i.i.prol = phi ptr [ %i.bn, %.lr.ph.i.i.prol ], [ %i.bi, %.lr.ph.preheader.i.i ]
  %.0142.i.i.prol = phi ptr [ %i.bo, %.lr.ph.i.i.prol ], [ %i.bj, %.lr.ph.preheader.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.bn = getelementptr inbounds i8, ptr %.03.i.i.prol, i64 -8 ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %.0142.i.i.prol, i64 -8 ; 3 uses
  %i.bp = load <2 x i32>, ptr %i.bo, align 4, !tbaa !783
  store <2 x i32> %i.bp, ptr %i.bn, align 4, !tbaa !783
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !19304

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.03.i.i.unr = phi ptr [ %i.bi, %.lr.ph.preheader.i.i ], [ %i.bn, %.lr.ph.i.i.prol ]
  %.0142.i.i.unr = phi ptr [ %i.bj, %.lr.ph.preheader.i.i ], [ %i.bo, %.lr.ph.i.i.prol ]
  %i.bq = icmp ult i64 %i.bk, 56
  br i1 %i.bq, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.03.i.i = phi ptr [ %i.cm, %.lr.ph.i.i ], [ %.03.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 8 uses
  %.0142.i.i = phi ptr [ %i.cn, %.lr.ph.i.i ], [ %.0142.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 8 uses
  %i.br = getelementptr inbounds i8, ptr %.03.i.i, i64 -8
  %i.bs = getelementptr inbounds i8, ptr %.0142.i.i, i64 -8
  %i.bt = load <2 x i32>, ptr %i.bs, align 4, !tbaa !783
  store <2 x i32> %i.bt, ptr %i.br, align 4, !tbaa !783
  %i.bu = getelementptr inbounds i8, ptr %.03.i.i, i64 -16
  %i.bv = getelementptr inbounds i8, ptr %.0142.i.i, i64 -16
  %i.bw = load <2 x i32>, ptr %i.bv, align 4, !tbaa !783
  store <2 x i32> %i.bw, ptr %i.bu, align 4, !tbaa !783
  %i.bx = getelementptr inbounds i8, ptr %.03.i.i, i64 -24
  %i.by = getelementptr inbounds i8, ptr %.0142.i.i, i64 -24
  %i.bz = load <2 x i32>, ptr %i.by, align 4, !tbaa !783
  store <2 x i32> %i.bz, ptr %i.bx, align 4, !tbaa !783
  %i.ca = getelementptr inbounds i8, ptr %.03.i.i, i64 -32
  %i.cb = getelementptr inbounds i8, ptr %.0142.i.i, i64 -32
  %i.cc = load <2 x i32>, ptr %i.cb, align 4, !tbaa !783
  store <2 x i32> %i.cc, ptr %i.ca, align 4, !tbaa !783
  %i.cd = getelementptr inbounds i8, ptr %.03.i.i, i64 -40
  %i.ce = getelementptr inbounds i8, ptr %.0142.i.i, i64 -40
  %i.cf = load <2 x i32>, ptr %i.ce, align 4, !tbaa !783
  store <2 x i32> %i.cf, ptr %i.cd, align 4, !tbaa !783
  %i.cg = getelementptr inbounds i8, ptr %.03.i.i, i64 -48
  %i.ch = getelementptr inbounds i8, ptr %.0142.i.i, i64 -48
  %i.ci = load <2 x i32>, ptr %i.ch, align 4, !tbaa !783
  store <2 x i32> %i.ci, ptr %i.cg, align 4, !tbaa !783
  %i.cj = getelementptr inbounds i8, ptr %.03.i.i, i64 -56
  %i.ck = getelementptr inbounds i8, ptr %.0142.i.i, i64 -56
  %i.cl = load <2 x i32>, ptr %i.ck, align 4, !tbaa !783
  store <2 x i32> %i.cl, ptr %i.cj, align 4, !tbaa !783
  %i.cm = getelementptr inbounds i8, ptr %.03.i.i, i64 -64 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %.0142.i.i, i64 -64 ; 3 uses
  %i.co = load <2 x i32>, ptr %i.cn, align 4, !tbaa !783
  store <2 x i32> %i.co, ptr %i.cm, align 4, !tbaa !783
  %.not.i.i12.7 = icmp eq ptr %i.cn, %i.bf
  br i1 %.not.i.i12.7, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !678

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.val19.pre.i = load i8, ptr %i.bb, align 1, !tbaa !794
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.loopexit.i, %bb.f
  %.val19.i = phi i8 [ %.val19.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.loopexit.i ], [ %.val21.i, %bb.f ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.bd
  %i.cr = load <2 x i32>, ptr %.val8, align 4, !tbaa !783
  store <2 x i32> %i.cr, ptr %i.cq, align 4, !tbaa !783
  %i.cs = add i8 %.val19.i, 1                     ; 3 uses
  store i8 %i.cs, ptr %i.bb, align 1, !tbaa !794
  %i.ct = getelementptr i8, ptr %i.ax, i64 11
  %.val22.i = load i8, ptr %i.ct, align 1, !tbaa !794
  %.not.i25.i = icmp eq i8 %.val22.i, 0
  br i1 %.not.i25.i, label %bb.g, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE13emplace_valueIJPNS1_13map_slot_typeIS5_iEEEEEvhPS8_DpOT_.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i
  %i.cu = zext i8 %i.cs to i32
  %i.cv = add nuw nsw i32 %i.ba, 1                ; 2 uses
  %i.cw = icmp samesign ult i32 %i.cv, %i.cu
  br i1 %i.cw, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE13emplace_valueIJPNS1_13map_slot_typeIS5_iEEEEEvhPS8_DpOT_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ax, i64 256 ; 10 uses
  %i.cy = zext i8 %i.cs to i64                    ; 4 uses
  %i.cz = zext nneg i32 %i.cv to i64
  %i.da = xor i64 %i.bd, -1
  %i.db = add nsw i64 %i.da, %i.cy
  %i.dc = add nsw i64 %i.cy, -2
  %i.dd = sub nsw i64 %i.dc, %i.bd
  %xtraiter20 = and i64 %i.db, 3                  ; 2 uses
  %lcmp.mod21.not = icmp eq i64 %xtraiter20, 0
  br i1 %lcmp.mod21.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.de, %.prol.preheader ], [ %i.cy, %.lr.ph.i ] ; 3 uses
  %prol.iter22 = phi i64 [ %prol.iter22.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.de = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !2554 ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.prol
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !2554
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dj = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.dj, ptr %i.di, align 1, !tbaa !794
  %prol.iter22.next = add i64 %prol.iter22, 1     ; 2 uses
  %prol.iter22.cmp.not = icmp eq i64 %prol.iter22.next, %xtraiter20
  br i1 %prol.iter22.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !19305

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.unr = phi i64 [ %i.cy, %.lr.ph.i ], [ %i.de, %.prol.preheader ]
  %i.dk = icmp ult i64 %i.dd, 3
  br i1 %i.dk, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE13emplace_valueIJPNS1_13map_slot_typeIS5_iEEEEEvhPS8_DpOT_.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv = phi i64 [ %i.ed, %.lr.ph.i.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.dl = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.dl
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !2554 ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !2554
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dq = trunc nuw i64 %indvars.iv to i8
  store i8 %i.dq, ptr %i.dp, align 1, !tbaa !794
  %i.dr = add nsw i64 %indvars.iv, -2             ; 3 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !2554 ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.dl
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !2554
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dw = trunc nuw i64 %i.dl to i8
  store i8 %i.dw, ptr %i.dv, align 1, !tbaa !794
  %i.dx = add nsw i64 %indvars.iv, -3             ; 3 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.dx
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !2554 ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.dr
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !2554
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ec = trunc nuw i64 %i.dr to i8
  store i8 %i.ec, ptr %i.eb, align 1, !tbaa !794
  %i.ed = add nsw i64 %indvars.iv, -4             ; 3 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !2554 ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.dx
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !2554
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ei = trunc nuw i64 %i.dx to i8
  store i8 %i.ei, ptr %i.eh, align 1, !tbaa !794
  %.wide.3 = icmp ugt i64 %i.ed, %i.cz
  br i1 %.wide.3, label %.lr.ph.i.new, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE13emplace_valueIJPNS1_13map_slot_typeIS5_iEEEEEvhPS8_DpOT_.exit, !llvm.loop !679

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE13emplace_valueIJPNS1_13map_slot_typeIS5_iEEEEEvhPS8_DpOT_.exit: ; preds = %.prol.loopexit, %.lr.ph.i.new, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i, %bb.g
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !2553
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr %i.ej, align 8, !tbaa !2553
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISC_EERSt4pairIKS5_iEPSJ_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.4180", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !2554   ; 16 uses
  %.val105 = load ptr, ptr %i.b, align 8, !tbaa !2554 ; 7 uses
  %.val118 = load ptr, ptr %0, align 8, !tbaa !2552
  %.not = icmp eq ptr %i.b, %.val118
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %.val103 = load i8, ptr %i.c, align 8, !tbaa !794 ; 6 uses
  %.not84 = icmp eq i8 %.val103, 0
  br i1 %.not84, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add i8 %.val103, -1
  %i.e = getelementptr inbounds nuw i8, ptr %.val105, i64 256
  %i.f = zext i8 %i.d to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2554 ; 14 uses
  %i.i = getelementptr i8, ptr %i.h, i64 10       ; 7 uses
  %.val116 = load i8, ptr %i.i, align 1, !tbaa !794 ; 4 uses
  %i.j = icmp ult i8 %.val116, 30
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 30, %.val116
  %i.k = load i32, ptr %i.a, align 8, !tbaa !783  ; 2 uses
  %i.l = and i32 %i.k, 254
  %i.m = icmp samesign ult i32 %i.l, 30
  %i.n = zext i1 %i.m to i8
  %i.o = lshr i8 %narrow, %i.n                    ; 3 uses
  %.sroa.speculated151 = tail call i8 @llvm.umax.i8(i8 %i.o, i8 1) ; 9 uses
  %i.p = and i32 %i.k, 255
  %i.q = zext nneg i8 %.sroa.speculated151 to i32 ; 5 uses
  %.not85 = icmp samesign uge i32 %i.p, %i.q
  %narrow164 = add nuw nsw i8 %.sroa.speculated151, %.val116
  %i.r = icmp samesign ult i8 %narrow164, 30
  %or.cond = select i1 %.not85, i1 true, i1 %i.r
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = zext nneg i8 %.val116 to i64             ; 2 uses
  %i.t = getelementptr i8, ptr %i.h, i64 8        ; 2 uses
  %.val50.i = load i8, ptr %i.t, align 1, !tbaa !794
  %i.u = zext i8 %.val50.i to i64                 ; 2 uses
  %.val52.i = load ptr, ptr %i.h, align 8, !tbaa !2554
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.s ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val52.i, i64 12 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.u
  %i.z = load <2 x i32>, ptr %i.y, align 4, !tbaa !783
  store <2 x i32> %i.z, ptr %i.w, align 4, !tbaa !783
  %i.aa = add nsw i32 %i.q, -1                    ; 2 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.b, i64 12      ; 13 uses
  %.idx.i.i = shl nuw nsw i64 %i.ab, 3            ; 3 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 %.idx.i.i ; 2 uses
  %.not1.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not1.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.ae = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 264
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader265, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.ah = shl nuw nsw i64 %i.s, 3                 ; 3 uses
  %i.ai = getelementptr i8, ptr %i.h, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 20
  %i.ak = add nuw nsw i64 %i.ah, %.idx.i.i        ; 2 uses
  %i.al = getelementptr i8, ptr %i.h, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 16
  %i.an = tail call i8 @llvm.umax.i8(i8 %i.o, i8 1)
  %i.ao = shl nuw i8 %i.an, 3
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr i8, ptr %i.b, i64 %i.ap
  %3 = getelementptr i8, ptr %i.h, i64 %i.ah
  %4 = getelementptr i8, ptr %3, i64 24
  %5 = getelementptr i8, ptr %i.h, i64 %i.ak
  %i.ar = getelementptr i8, ptr %5, i64 20
  %i.as = getelementptr i8, ptr %i.b, i64 16
  %bound0 = icmp ult ptr %i.aj, %i.aq
  %bound1 = icmp ult ptr %i.ac, %i.am
  %found.conflict = and i1 %bound0, %bound1
  %bound0185 = icmp ult ptr %4, %i.ad
  %bound1186 = icmp ult ptr %i.as, %i.ar
  %found.conflict187 = and i1 %bound0185, %bound1186
  %conflict.rdx = or i1 %found.conflict, %found.conflict187
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader265, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 4611686018427387900     ; 3 uses
  %i.at = shl i64 %n.vec, 3                       ; 2 uses
  %i.au = getelementptr i8, ptr %i.w, i64 %i.at
  %i.av = getelementptr i8, ptr %i.ac, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 3                       ; 3 uses
  %i.ax = or disjoint i64 %i.aw, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.aw
  %next.gep188 = getelementptr i8, ptr %i.w, i64 %i.ax
  %next.gep189 = getelementptr i8, ptr %i.ac, i64 %i.aw
  %next.gep190 = getelementptr i8, ptr %i.ac, i64 %i.ax
  %i.ay = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %next.gep188, i64 8
  %wide.vec = load <4 x i32>, ptr %next.gep189, align 4, !tbaa !783
  %wide.vec192 = load <4 x i32>, ptr %next.gep190, align 4, !tbaa !783
  store <4 x i32> %wide.vec, ptr %i.ay, align 4, !tbaa !783
  store <4 x i32> %wide.vec192, ptr %i.az, align 4, !tbaa !783
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !19306

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit.i, label %.lr.ph.i.i.preheader265

.lr.ph.i.i.preheader265:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.03.i.pn.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.preheader ], [ %i.au, %middle.block ]
  %.0122.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader265, %.lr.ph.i.i
  %.03.i.pn.i = phi ptr [ %.03.i.i, %.lr.ph.i.i ], [ %.03.i.pn.i.ph, %.lr.ph.i.i.preheader265 ]
  %.0122.i.i = phi ptr [ %i.bc, %.lr.ph.i.i ], [ %.0122.i.i.ph, %.lr.ph.i.i.preheader265 ] ; 2 uses
  %.03.i.i = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 8 ; 2 uses
  %i.bb = load <2 x i32>, ptr %.0122.i.i, align 4, !tbaa !783
  store <2 x i32> %i.bb, ptr %.03.i.i, align 4, !tbaa !783
  %i.bc = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bc, %i.ad
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !19307

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block
  %.val49.pre.i = load i8, ptr %i.t, align 8, !tbaa !794
  %.pre.i = zext i8 %.val49.pre.i to i64
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit.i, %bb.e
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit.i ], [ %i.u, %bb.e ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.pre-phi.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ab
  %i.bf = load <2 x i32>, ptr %i.be, align 4, !tbaa !783
  store <2 x i32> %i.bf, ptr %i.bd, align 4, !tbaa !783
  %i.bg = getelementptr i8, ptr %i.b, i64 10      ; 5 uses
  %.val54.i = load i8, ptr %i.bg, align 2, !tbaa !794 ; 3 uses
  %i.bh = zext i8 %.val54.i to i32
  %i.bi = sub nsw i32 %i.bh, %i.q
  %i.bj = sext i32 %i.bi to i64
  %i.bk = zext nneg i8 %.sroa.speculated151 to i64 ; 4 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bk ; 5 uses
  %.idx.i57.i = shl nuw nsw i64 %i.bj, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx.i57.i
  %.not1.i58.i = icmp eq i8 %.val54.i, %.sroa.speculated151
  br i1 %.not1.i58.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit66.i, label %.lr.ph.i60.i.preheader

.lr.ph.i60.i.preheader:                           ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.i
  %i.bn = zext i8 %.val54.i to i64
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = shl nuw nsw i64 %i.bk, 3
  %i.bq = add nsw i64 %i.bo, -8
  %i.br = sub nsw i64 %i.bq, %i.bp                ; 2 uses
  %i.bs = lshr exact i64 %i.br, 3
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check198 = icmp ult i64 %i.br, 24
  br i1 %min.iters.check198, label %.lr.ph.i60.i.preheader264, label %vector.ph199

vector.ph199:                                     ; preds = %.lr.ph.i60.i.preheader
  %n.vec200 = and i64 %i.bt, 4611686018427387900  ; 3 uses
  %i.bu = shl i64 %n.vec200, 3                    ; 2 uses
  %i.bv = getelementptr i8, ptr %i.ac, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bl, i64 %i.bu
  br label %vector.body201

vector.body201:                                   ; preds = %vector.body201, %vector.ph199
  %index202 = phi i64 [ 0, %vector.ph199 ], [ %index.next215, %vector.body201 ] ; 2 uses
  %i.bx = shl i64 %index202, 3                    ; 3 uses
  %i.by = or disjoint i64 %i.bx, 16               ; 2 uses
  %next.gep203 = getelementptr i8, ptr %i.ac, i64 %i.bx
  %next.gep204 = getelementptr i8, ptr %i.ac, i64 %i.by
  %next.gep205 = getelementptr i8, ptr %i.bl, i64 %i.bx
  %next.gep206 = getelementptr i8, ptr %i.bl, i64 %i.by
  %wide.vec207 = load <4 x i32>, ptr %next.gep205, align 4, !tbaa !783
  %wide.vec210 = load <4 x i32>, ptr %next.gep206, align 4, !tbaa !783
  store <4 x i32> %wide.vec207, ptr %next.gep203, align 4, !tbaa !783
  store <4 x i32> %wide.vec210, ptr %next.gep204, align 4, !tbaa !783
  %index.next215 = add nuw i64 %index202, 4       ; 2 uses
  %i.bz = icmp eq i64 %index.next215, %n.vec200
  br i1 %i.bz, label %middle.block216, label %vector.body201, !llvm.loop !19308

middle.block216:                                  ; preds = %vector.body201
  %cmp.n217 = icmp eq i64 %i.bt, %n.vec200
  br i1 %cmp.n217, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit66.i, label %.lr.ph.i60.i.preheader264

.lr.ph.i60.i.preheader264:                        ; preds = %.lr.ph.i60.i.preheader, %middle.block216
  %.03.i61.i.ph = phi ptr [ %i.ac, %.lr.ph.i60.i.preheader ], [ %i.bv, %middle.block216 ]
  %.0122.i62.i.ph = phi ptr [ %i.bl, %.lr.ph.i60.i.preheader ], [ %i.bw, %middle.block216 ]
  br label %.lr.ph.i60.i

.lr.ph.i60.i:                                     ; preds = %.lr.ph.i60.i.preheader264, %.lr.ph.i60.i
  %.03.i61.i = phi ptr [ %i.cc, %.lr.ph.i60.i ], [ %.03.i61.i.ph, %.lr.ph.i60.i.preheader264 ] ; 2 uses
  %.0122.i62.i = phi ptr [ %i.cb, %.lr.ph.i60.i ], [ %.0122.i62.i.ph, %.lr.ph.i60.i.preheader264 ] ; 2 uses
  %i.ca = load <2 x i32>, ptr %.0122.i62.i, align 4, !tbaa !783
  store <2 x i32> %i.ca, ptr %.03.i61.i, align 4, !tbaa !783
  %i.cb = getelementptr inbounds nuw i8, ptr %.0122.i62.i, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.03.i61.i, i64 8
  %.not.i65.i = icmp eq ptr %i.cb, %i.bm
  br i1 %.not.i65.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit66.i, label %.lr.ph.i60.i, !llvm.loop !19309

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit66.i: ; preds = %.lr.ph.i60.i, %middle.block216, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.i
  %i.cd = getelementptr i8, ptr %i.h, i64 11
  %.val53.i = load i8, ptr %i.cd, align 1, !tbaa !794
  %.not.i67.i = icmp eq i8 %.val53.i, 0
  br i1 %.not.i67.i, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE23rebalance_right_to_leftEhPSD_PS8_.exit

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit66.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.h, i64 256 ; 3 uses
  %xtraiter = and i64 %i.bk, 1
  %i.cg = icmp samesign ult i8 %i.o, 2
  br i1 %i.cg, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.bk, 30
  br label %bb.f

.preheader.i.unr-lcssa:                           ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.preheader.i.unr-lcssa ] ; 2 uses
  %lcmp.mod266 = trunc i8 %.sroa.speculated151 to i1
  tail call void @llvm.assume(i1 %lcmp.mod266)
  %.val46.i.epil = load i8, ptr %i.i, align 2, !tbaa !794
  %i.ch = trunc i64 %indvars.iv.i.epil.init to i8
  %i.ci = add i8 %i.ch, 1
  %i.cj = add i8 %.val46.i.epil, %i.ci            ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i.epil.init
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !2554 ; 3 uses
  %i.cm = zext i8 %i.cj to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cm
  store ptr %i.cl, ptr %i.cn, align 8, !tbaa !2554
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i8 %i.cj, ptr %i.co, align 1, !tbaa !794
  store ptr %i.h, ptr %i.cl, align 8, !tbaa !2554
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %.val453.i = load i8, ptr %i.bg, align 2, !tbaa !794
  %.not4.i = icmp ult i8 %.val453.i, %.sroa.speculated151
  br i1 %.not4.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE23rebalance_right_to_leftEhPSD_PS8_.exit, label %.lr.ph6.i

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.f ]
  %.val46.i = load i8, ptr %i.i, align 2, !tbaa !794
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.cp = trunc nuw i64 %indvars.iv.next.i to i8
  %i.cq = add i8 %.val46.i, %i.cp                 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !2554 ; 3 uses
  %i.ct = zext i8 %i.cq to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.ct
  store ptr %i.cs, ptr %i.cu, align 8, !tbaa !2554
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i8 %i.cq, ptr %i.cv, align 1, !tbaa !794
  store ptr %i.h, ptr %i.cs, align 8, !tbaa !2554
  %.val46.i.1 = load i8, ptr %i.i, align 2, !tbaa !794
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %i.cw = trunc nuw i64 %indvars.iv.next.i.1 to i8
  %i.cx = add i8 %.val46.i.1, %i.cw               ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next.i
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !2554 ; 3 uses
  %i.da = zext i8 %i.cx to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.da
  store ptr %i.cz, ptr %i.db, align 8, !tbaa !2554
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i8 %i.cx, ptr %i.dc, align 1, !tbaa !794
  store ptr %i.h, ptr %i.cz, align 8, !tbaa !2554
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.unr-lcssa, label %bb.f, !llvm.loop !19310

.lr.ph6.i:                                        ; preds = %.preheader.i, %.lr.ph6.i
  %.05.i = phi i8 [ %i.dk, %.lr.ph6.i ], [ 0, %.preheader.i ] ; 4 uses
  %i.dd = add i8 %.05.i, %.sroa.speculated151
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !2554 ; 3 uses
  %i.dh = zext i8 %.05.i to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.dh
  store ptr %i.dg, ptr %i.di, align 8, !tbaa !2554
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i8 %.05.i, ptr %i.dj, align 1, !tbaa !794
  store ptr %i.b, ptr %i.dg, align 8, !tbaa !2554
  %i.dk = add i8 %.05.i, 1                        ; 2 uses
  %i.dl = zext i8 %i.dk to i32
  %.val45.i = load i8, ptr %i.bg, align 2, !tbaa !794
  %i.dm = zext i8 %.val45.i to i32
  %i.dn = sub nsw i32 %i.dm, %i.q
  %.not.i = icmp slt i32 %i.dn, %i.dl
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE23rebalance_right_to_leftEhPSD_PS8_.exit, label %.lr.ph6.i, !llvm.loop !19311

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE23rebalance_right_to_leftEhPSD_PS8_.exit: ; preds = %.lr.ph6.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit66.i, %.preheader.i
  %.val44.i = load i8, ptr %i.i, align 2, !tbaa !794
  %i.do = add i8 %.val44.i, %.sroa.speculated151
  store i8 %i.do, ptr %i.i, align 2, !tbaa !794
  %.val.i = load i8, ptr %i.bg, align 2, !tbaa !794
  %i.dp = sub i8 %.val.i, %.sroa.speculated151
  store i8 %i.dp, ptr %i.bg, align 2, !tbaa !794
  %i.dq = load i32, ptr %i.a, align 8, !tbaa !783
  %i.dr = and i32 %i.dq, 255
  %i.ds = sub nsw i32 %i.dr, %i.q                 ; 3 uses
  store i32 %i.ds, ptr %i.a, align 8, !tbaa !783
  %i.dt = icmp slt i32 %i.ds, 0
  br i1 %i.dt, label %bb.g, label %.critedge

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE23rebalance_right_to_leftEhPSD_PS8_.exit
  %.val113 = load i8, ptr %i.i, align 2, !tbaa !794
  %i.du = zext i8 %.val113 to i32
  %i.dv = add nsw i32 %i.ds, 1
  %i.dw = add nsw i32 %i.dv, %i.du
  br label %.critedge.sink.split

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.dx = getelementptr i8, ptr %.val105, i64 10
  %.val95 = load i8, ptr %i.dx, align 1, !tbaa !794 ; 2 uses
  %i.dy = icmp ult i8 %.val103, %.val95
  br i1 %i.dy, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.dz = add nuw i8 %.val103, 1
  %i.ea = getelementptr inbounds nuw i8, ptr %.val105, i64 256
  %i.eb = zext i8 %i.dz to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.eb
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !2554 ; 14 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 10     ; 4 uses
  %.val112 = load i8, ptr %i.ee, align 1, !tbaa !794 ; 5 uses
  %i.ef = icmp ult i8 %.val112, 30
  br i1 %i.ef, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %narrow165 = sub nuw nsw i8 30, %.val112
  %i.eg = load i32, ptr %i.a, align 8, !tbaa !783 ; 2 uses
  %.inv = icmp sgt i32 %i.eg, 0
  %i.eh = zext i1 %.inv to i8
  %i.ei = lshr i8 %narrow165, %i.eh               ; 4 uses
  %.sroa.speculated = tail call i8 @llvm.umax.i8(i8 %i.ei, i8 1) ; 11 uses
  %i.ej = and i32 %i.eg, 255
  %i.ek = getelementptr i8, ptr %i.b, i64 10      ; 8 uses
  %.val94 = load i8, ptr %i.ek, align 2, !tbaa !794
  %i.el = zext i8 %.val94 to i32
  %i.em = zext nneg i8 %.sroa.speculated to i32   ; 3 uses
  %i.en = sub nsw i32 %i.el, %i.em
  %.not86 = icmp sle i32 %i.ej, %i.en
  %narrow166 = add nuw nsw i8 %.sroa.speculated, %.val112
  %i.eo = icmp samesign ult i8 %narrow166, 30
  %or.cond163 = select i1 %.not86, i1 true, i1 %i.eo
  br i1 %or.cond163, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ep = getelementptr i8, ptr %i.ed, i64 12     ; 10 uses
  %.not1.i.i120 = icmp eq i8 %.val112, 0
  br i1 %.not1.i.i120, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.k
  %i.eq = zext nneg i8 %.val112 to i64            ; 2 uses
  %i.er = zext nneg i8 %.sroa.speculated to i64
  %.idx.i.i121 = shl nuw nsw i64 %i.eq, 3         ; 2 uses
  %i.es = getelementptr [8 x i8], ptr %i.ep, i64 %i.er
  %i.et = getelementptr [8 x i8], ptr %i.es, i64 %i.eq ; 2 uses
  %i.eu = getelementptr i8, ptr %i.ep, i64 %.idx.i.i121 ; 2 uses
  %i.ev = add nsw i64 %.idx.i.i121, -8            ; 2 uses
  %i.ew = lshr exact i64 %i.ev, 3
  %i.ex = add nuw nsw i64 %i.ew, 1
  %xtraiter267 = and i64 %i.ex, 7                 ; 2 uses
  %lcmp.mod268.not = icmp eq i64 %xtraiter267, 0
  br i1 %lcmp.mod268.not, label %.lr.ph.i.i122.prol.loopexit, label %.lr.ph.i.i122.prol

.lr.ph.i.i122.prol:                               ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i122.prol
  %.03.i.i123.prol = phi ptr [ %i.ey, %.lr.ph.i.i122.prol ], [ %i.et, %.lr.ph.preheader.i.i ]
  %.0142.i.i.prol = phi ptr [ %i.ez, %.lr.ph.i.i122.prol ], [ %i.eu, %.lr.ph.preheader.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i122.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.ey = getelementptr inbounds i8, ptr %.03.i.i123.prol, i64 -8 ; 3 uses
  %i.ez = getelementptr inbounds i8, ptr %.0142.i.i.prol, i64 -8 ; 3 uses
  %i.fa = load <2 x i32>, ptr %i.ez, align 4, !tbaa !783
  store <2 x i32> %i.fa, ptr %i.ey, align 4, !tbaa !783
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter267
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i122.prol.loopexit, label %.lr.ph.i.i122.prol, !llvm.loop !19312

.lr.ph.i.i122.prol.loopexit:                      ; preds = %.lr.ph.i.i122.prol, %.lr.ph.preheader.i.i
  %.03.i.i123.unr = phi ptr [ %i.et, %.lr.ph.preheader.i.i ], [ %i.ey, %.lr.ph.i.i122.prol ]
  %.0142.i.i.unr = phi ptr [ %i.eu, %.lr.ph.preheader.i.i ], [ %i.ez, %.lr.ph.i.i122.prol ]
  %i.fb = icmp ult i64 %i.ev, 56
  br i1 %i.fb, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i.loopexit, label %.lr.ph.i.i122

.lr.ph.i.i122:                                    ; preds = %.lr.ph.i.i122.prol.loopexit, %.lr.ph.i.i122
  %.03.i.i123 = phi ptr [ %i.fx, %.lr.ph.i.i122 ], [ %.03.i.i123.unr, %.lr.ph.i.i122.prol.loopexit ] ; 8 uses
  %.0142.i.i = phi ptr [ %i.fy, %.lr.ph.i.i122 ], [ %.0142.i.i.unr, %.lr.ph.i.i122.prol.loopexit ] ; 8 uses
  %i.fc = getelementptr inbounds i8, ptr %.03.i.i123, i64 -8
  %i.fd = getelementptr inbounds i8, ptr %.0142.i.i, i64 -8
  %i.fe = load <2 x i32>, ptr %i.fd, align 4, !tbaa !783
  store <2 x i32> %i.fe, ptr %i.fc, align 4, !tbaa !783
  %i.ff = getelementptr inbounds i8, ptr %.03.i.i123, i64 -16
  %i.fg = getelementptr inbounds i8, ptr %.0142.i.i, i64 -16
  %i.fh = load <2 x i32>, ptr %i.fg, align 4, !tbaa !783
  store <2 x i32> %i.fh, ptr %i.ff, align 4, !tbaa !783
  %i.fi = getelementptr inbounds i8, ptr %.03.i.i123, i64 -24
  %i.fj = getelementptr inbounds i8, ptr %.0142.i.i, i64 -24
  %i.fk = load <2 x i32>, ptr %i.fj, align 4, !tbaa !783
  store <2 x i32> %i.fk, ptr %i.fi, align 4, !tbaa !783
  %i.fl = getelementptr inbounds i8, ptr %.03.i.i123, i64 -32
  %i.fm = getelementptr inbounds i8, ptr %.0142.i.i, i64 -32
  %i.fn = load <2 x i32>, ptr %i.fm, align 4, !tbaa !783
  store <2 x i32> %i.fn, ptr %i.fl, align 4, !tbaa !783
  %i.fo = getelementptr inbounds i8, ptr %.03.i.i123, i64 -40
  %i.fp = getelementptr inbounds i8, ptr %.0142.i.i, i64 -40
  %i.fq = load <2 x i32>, ptr %i.fp, align 4, !tbaa !783
  store <2 x i32> %i.fq, ptr %i.fo, align 4, !tbaa !783
  %i.fr = getelementptr inbounds i8, ptr %.03.i.i123, i64 -48
  %i.fs = getelementptr inbounds i8, ptr %.0142.i.i, i64 -48
  %i.ft = load <2 x i32>, ptr %i.fs, align 4, !tbaa !783
  store <2 x i32> %i.ft, ptr %i.fr, align 4, !tbaa !783
  %i.fu = getelementptr inbounds i8, ptr %.03.i.i123, i64 -56
  %i.fv = getelementptr inbounds i8, ptr %.0142.i.i, i64 -56
  %i.fw = load <2 x i32>, ptr %i.fv, align 4, !tbaa !783
  store <2 x i32> %i.fw, ptr %i.fu, align 4, !tbaa !783
  %i.fx = getelementptr inbounds i8, ptr %.03.i.i123, i64 -64 ; 2 uses
  %i.fy = getelementptr inbounds i8, ptr %.0142.i.i, i64 -64 ; 3 uses
  %i.fz = load <2 x i32>, ptr %i.fy, align 4, !tbaa !783
  store <2 x i32> %i.fz, ptr %i.fx, align 4, !tbaa !783
  %.not.i.i125.7 = icmp eq ptr %i.fy, %i.ep
  br i1 %.not.i.i125.7, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i.loopexit, label %.lr.ph.i.i122, !llvm.loop !678

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i.loopexit: ; preds = %.lr.ph.i.i122, %.lr.ph.i.i122.prol.loopexit
  %.val54.i126.pre = load i8, ptr %i.c, align 8, !tbaa !794
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i.loopexit, %bb.k
  %.val54.i126 = phi i8 [ %.val54.i126.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i.loopexit ], [ %.val103, %bb.k ]
  %i.ga = add nsw i32 %i.em, -1                   ; 3 uses
  %i.gb = zext nneg i32 %i.ga to i64              ; 2 uses
  %i.gc = zext i8 %.val54.i126 to i64
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.gb
  %i.ge = getelementptr inbounds nuw i8, ptr %.val105, i64 12 ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.gc
  %i.gg = load <2 x i32>, ptr %i.gf, align 4, !tbaa !783
  store <2 x i32> %i.gg, ptr %i.gd, align 4, !tbaa !783
  %.val52.i128 = load i8, ptr %i.ek, align 2, !tbaa !794 ; 2 uses
  %i.gh = zext i8 %.val52.i128 to i32             ; 2 uses
  %i.gi = sub nsw i32 %i.gh, %i.ga
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr i8, ptr %i.b, i64 12      ; 2 uses
  %i.gl = getelementptr [8 x i8], ptr %i.gk, i64 %i.gj ; 7 uses
  %.idx.i60.i = shl nuw nsw i64 %i.gb, 3          ; 4 uses
  %i.gm = getelementptr i8, ptr %i.gl, i64 %.idx.i60.i ; 2 uses
  %.not1.i61.i = icmp eq i32 %i.ga, 0
  br i1 %.not1.i61.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.i135, label %.lr.ph.i63.i.preheader

.lr.ph.i63.i.preheader:                           ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i
  %i.gn = add nsw i64 %.idx.i60.i, -8             ; 2 uses
  %i.go = lshr exact i64 %i.gn, 3
  %i.gp = add nuw nsw i64 %i.go, 1                ; 2 uses
  %min.iters.check233 = icmp ult i64 %i.gn, 264
  br i1 %min.iters.check233, label %.lr.ph.i63.i.preheader263, label %vector.memcheck234

vector.memcheck234:                               ; preds = %.lr.ph.i63.i.preheader
  %i.gq = tail call i8 @llvm.umax.i8(i8 %i.ei, i8 1)
  %i.gr = shl nuw i8 %i.gq, 3
  %i.gs = zext i8 %i.gr to i64                    ; 3 uses
  %i.gt = getelementptr i8, ptr %i.ed, i64 %i.gs
  %i.gu = zext i8 %.val52.i128 to i64
  %i.gv = shl nuw nsw i64 %i.gu, 3                ; 2 uses
  %i.gw = add nuw nsw i64 %i.gv, %.idx.i60.i
  %i.gx = add nuw nsw i64 %i.gw, 16
  %i.gy = sub nsw i64 %i.gx, %i.gs
  %i.gz = getelementptr i8, ptr %i.b, i64 %i.gy
  %i.ha = getelementptr i8, ptr %i.ed, i64 16
  %i.hb = getelementptr i8, ptr %i.ed, i64 %.idx.i60.i
  %i.hc = getelementptr i8, ptr %i.hb, i64 12
  %i.hd = add nuw nsw i64 %i.gv, 24
  %i.he = sub nsw i64 %i.hd, %i.gs
  %i.hf = getelementptr i8, ptr %i.b, i64 %i.he
  %bound0235 = icmp ult ptr %i.ep, %i.gz
  %bound1236 = icmp ult ptr %i.gl, %i.gt
  %found.conflict237 = and i1 %bound0235, %bound1236
  %bound0238 = icmp ult ptr %i.ha, %i.gm
  %bound1239 = icmp ult ptr %i.hf, %i.hc
  %found.conflict240 = and i1 %bound0238, %bound1239
  %conflict.rdx241 = or i1 %found.conflict237, %found.conflict240
  br i1 %conflict.rdx241, label %.lr.ph.i63.i.preheader263, label %vector.ph242

vector.ph242:                                     ; preds = %vector.memcheck234
  %n.vec243 = and i64 %i.gp, 4611686018427387900  ; 3 uses
  %i.hg = shl i64 %n.vec243, 3                    ; 2 uses
  %i.hh = getelementptr i8, ptr %i.ep, i64 %i.hg
  %i.hi = getelementptr i8, ptr %i.gl, i64 %i.hg
  br label %vector.body244

vector.body244:                                   ; preds = %vector.body244, %vector.ph242
  %index245 = phi i64 [ 0, %vector.ph242 ], [ %index.next258, %vector.body244 ] ; 2 uses
  %i.hj = shl i64 %index245, 3                    ; 3 uses
  %i.hk = or disjoint i64 %i.hj, 16               ; 2 uses
  %next.gep246 = getelementptr i8, ptr %i.ep, i64 %i.hj
  %next.gep247 = getelementptr i8, ptr %i.ep, i64 %i.hk
  %next.gep248 = getelementptr i8, ptr %i.gl, i64 %i.hj
  %next.gep249 = getelementptr i8, ptr %i.gl, i64 %i.hk
  %wide.vec250 = load <4 x i32>, ptr %next.gep248, align 4, !tbaa !783
  %wide.vec253 = load <4 x i32>, ptr %next.gep249, align 4, !tbaa !783
  store <4 x i32> %wide.vec250, ptr %next.gep246, align 4, !tbaa !783
  store <4 x i32> %wide.vec253, ptr %next.gep247, align 4, !tbaa !783
  %index.next258 = add nuw i64 %index245, 4       ; 2 uses
  %i.hl = icmp eq i64 %index.next258, %n.vec243
  br i1 %i.hl, label %middle.block259, label %vector.body244, !llvm.loop !19313

middle.block259:                                  ; preds = %vector.body244
  %cmp.n260 = icmp eq i64 %i.gp, %n.vec243
  br i1 %cmp.n260, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit.i133, label %.lr.ph.i63.i.preheader263

.lr.ph.i63.i.preheader263:                        ; preds = %vector.memcheck234, %.lr.ph.i63.i.preheader, %middle.block259
  %.03.i64.i.ph = phi ptr [ %i.ep, %vector.memcheck234 ], [ %i.ep, %.lr.ph.i63.i.preheader ], [ %i.hh, %middle.block259 ]
  %.0122.i.i129.ph = phi ptr [ %i.gl, %vector.memcheck234 ], [ %i.gl, %.lr.ph.i63.i.preheader ], [ %i.hi, %middle.block259 ]
  br label %.lr.ph.i63.i

.lr.ph.i63.i:                                     ; preds = %.lr.ph.i63.i.preheader263, %.lr.ph.i63.i
  %.03.i64.i = phi ptr [ %i.ho, %.lr.ph.i63.i ], [ %.03.i64.i.ph, %.lr.ph.i63.i.preheader263 ] ; 2 uses
  %.0122.i.i129 = phi ptr [ %i.hn, %.lr.ph.i63.i ], [ %.0122.i.i129.ph, %.lr.ph.i63.i.preheader263 ] ; 2 uses
  %i.hm = load <2 x i32>, ptr %.0122.i.i129, align 4, !tbaa !783
  store <2 x i32> %i.hm, ptr %.03.i64.i, align 4, !tbaa !783
  %i.hn = getelementptr inbounds nuw i8, ptr %.0122.i.i129, i64 8 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.03.i64.i, i64 8
  %.not.i65.i132 = icmp eq ptr %i.hn, %i.gm
  br i1 %.not.i65.i132, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit.i133, label %.lr.ph.i63.i, !llvm.loop !19314

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit.i133: ; preds = %.lr.ph.i63.i, %middle.block259
  %.val51.pre.i = load i8, ptr %i.ek, align 2, !tbaa !794
  %.pre.i134 = zext i8 %.val51.pre.i to i32
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.i135

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.i135: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit.i133, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i
  %.pre-phi.i136 = phi i32 [ %.pre.i134, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit.i133 ], [ %i.gh, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i ]
  %.val53.i137 = load i8, ptr %i.c, align 8, !tbaa !794
  %i.hp = zext i8 %.val53.i137 to i64
  %i.hq = sub nsw i32 %.pre-phi.i136, %i.em
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.hp
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.hr
  %i.hu = load <2 x i32>, ptr %i.ht, align 4, !tbaa !783
  store <2 x i32> %i.hu, ptr %i.hs, align 4, !tbaa !783
  %i.hv = getelementptr i8, ptr %i.b, i64 11
  %.val57.i = load i8, ptr %i.hv, align 1, !tbaa !794
  %.not.i68.i = icmp eq i8 %.val57.i, 0
  br i1 %.not.i68.i, label %bb.l, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE23rebalance_left_to_rightEhPSD_PS8_.exit

bb.l:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.i135
  %.val50.i139 = load i8, ptr %i.ee, align 1, !tbaa !794 ; 5 uses
  %i.hw = add i8 %.val50.i139, 1                  ; 2 uses
  %.not1.i = icmp eq i8 %i.hw, 0
  br i1 %.not1.i, label %.lr.ph5.i, label %.lr.ph.i140

.lr.ph.i140:                                      ; preds = %bb.l
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ed, i64 256 ; 6 uses
  %i.hy = zext i8 %i.hw to i64                    ; 2 uses
  %i.hz = and i8 %.val50.i139, 1
  %lcmp.mod270.not.not = icmp eq i8 %i.hz, 0
  br i1 %lcmp.mod270.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i140
  %i.ia = add i8 %.val50.i139, %.sroa.speculated  ; 2 uses
  %i.ib = zext i8 %.val50.i139 to i64
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.ib
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !2554 ; 3 uses
  %i.ie = zext i8 %i.ia to i64
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.ie
  store ptr %i.id, ptr %i.if, align 8, !tbaa !2554
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store i8 %i.ia, ptr %i.ig, align 1, !tbaa !794
  store ptr %i.ed, ptr %i.id, align 8, !tbaa !2554
  %indvars.iv.next.i142.prol = add nsw i64 %i.hy, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i140
  %indvars.iv.i141.unr = phi i64 [ %i.hy, %.lr.ph.i140 ], [ %indvars.iv.next.i142.prol, %.prol.loopexit.unr-lcssa ]
  %i.ih = icmp eq i8 %.val50.i139, 0
  br i1 %i.ih, label %.lr.ph5.i, label %.lr.ph.i140.new

.lr.ph5.i:                                        ; preds = %.prol.loopexit, %.lr.ph.i140.new, %bb.l
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ed, i64 256 ; 3 uses
  %i.ik = tail call i8 @llvm.umax.i8(i8 %i.ei, i8 1) ; 2 uses
  %umax = zext nneg i8 %i.ik to i64               ; 2 uses
  %xtraiter273 = and i64 %umax, 1
  %i.il = icmp samesign ult i8 %i.ei, 2
  br i1 %i.il, label %.epil.preheader272, label %.lr.ph5.i.new

.lr.ph5.i.new:                                    ; preds = %.lr.ph5.i
  %unroll_iter276 = and i64 %umax, 30
  %invariant.op = sub i8 1, %.sroa.speculated
  br label %bb.m

.lr.ph.i140.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i140.new
  %indvars.iv.i141 = phi i64 [ %indvars.iv.next.i142.1, %.lr.ph.i140.new ], [ %indvars.iv.i141.unr, %.prol.loopexit ] ; 3 uses
  %i.im = trunc nuw i64 %indvars.iv.i141 to i8
  %i.in = add i8 %i.im, -1                        ; 2 uses
  %i.io = add i8 %i.in, %.sroa.speculated         ; 2 uses
  %i.ip = zext i8 %i.in to i64
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.ip
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !2554 ; 3 uses
  %i.is = zext i8 %i.io to i64
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.is
  store ptr %i.ir, ptr %i.it, align 8, !tbaa !2554
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store i8 %i.io, ptr %i.iu, align 1, !tbaa !794
  store ptr %i.ed, ptr %i.ir, align 8, !tbaa !2554
  %i.iv = trunc i64 %indvars.iv.i141 to i8
  %i.iw = add i8 %i.iv, -2                        ; 2 uses
  %i.ix = add i8 %i.iw, %.sroa.speculated         ; 2 uses
  %i.iy = zext i8 %i.iw to i64
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.iy
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !2554 ; 3 uses
  %i.jb = zext i8 %i.ix to i64
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.jb
  store ptr %i.ja, ptr %i.jc, align 8, !tbaa !2554
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  store i8 %i.ix, ptr %i.jd, align 1, !tbaa !794
  store ptr %i.ed, ptr %i.ja, align 8, !tbaa !2554
  %indvars.iv.next.i142.1 = add nsw i64 %indvars.iv.i141, -2 ; 2 uses
  %i.je = and i64 %indvars.iv.next.i142.1, 255
  %.not.i143.1 = icmp eq i64 %i.je, 0
  br i1 %.not.i143.1, label %.lr.ph5.i, label %.lr.ph.i140.new, !llvm.loop !19315

bb.m:                                             ; preds = %bb.m, %.lr.ph5.i.new
  %indvars.iv7.i = phi i64 [ 1, %.lr.ph5.i.new ], [ %indvars.iv.next8.i.1, %bb.m ] ; 6 uses
  %niter277 = phi i64 [ 0, %.lr.ph5.i.new ], [ %niter277.next.1, %bb.m ]
  %i.jf = add nsw i64 %indvars.iv7.i, -1          ; 2 uses
  %.val49.i = load i8, ptr %i.ek, align 2, !tbaa !794
  %i.jg = trunc nuw i64 %indvars.iv7.i to i8
  %i.jh = sub i8 %i.jg, %.sroa.speculated
  %i.ji = add i8 %i.jh, %.val49.i
  %i.jj = zext i8 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.jj
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !2554 ; 3 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.jf
  store ptr %i.jl, ptr %i.jm, align 8, !tbaa !2554
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jo = trunc nuw i64 %i.jf to i8
  store i8 %i.jo, ptr %i.jn, align 1, !tbaa !794
  store ptr %i.ed, ptr %i.jl, align 8, !tbaa !2554
  %.val49.i.1 = load i8, ptr %i.ek, align 2, !tbaa !794
  %i.jp = trunc i64 %indvars.iv7.i to i8
  %.reass = add i8 %i.jp, %invariant.op
  %i.jq = add i8 %.reass, %.val49.i.1
  %i.jr = zext i8 %i.jq to i64
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.jr
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !2554 ; 3 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv7.i
  store ptr %i.jt, ptr %i.ju, align 8, !tbaa !2554
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jw = trunc nuw i64 %indvars.iv7.i to i8
  store i8 %i.jw, ptr %i.jv, align 1, !tbaa !794
  store ptr %i.ed, ptr %i.jt, align 8, !tbaa !2554
  %indvars.iv.next8.i.1 = add nuw nsw i64 %indvars.iv7.i, 2 ; 2 uses
  %niter277.next.1 = add nuw i64 %niter277, 2     ; 2 uses
  %niter277.ncmp.1 = icmp eq i64 %niter277.next.1, %unroll_iter276
  br i1 %niter277.ncmp.1, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE23rebalance_left_to_rightEhPSD_PS8_.exit.loopexit.unr-lcssa, label %bb.m, !llvm.loop !19316

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE23rebalance_left_to_rightEhPSD_PS8_.exit.loopexit.unr-lcssa: ; preds = %bb.m
  %lcmp.mod274.not = icmp eq i64 %xtraiter273, 0
  br i1 %lcmp.mod274.not, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE23rebalance_left_to_rightEhPSD_PS8_.exit, label %.epil.preheader272

.epil.preheader272:                               ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE23rebalance_left_to_rightEhPSD_PS8_.exit.loopexit.unr-lcssa, %.lr.ph5.i
  %indvars.iv7.i.epil.init = phi i64 [ 1, %.lr.ph5.i ], [ %indvars.iv.next8.i.1, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE23rebalance_left_to_rightEhPSD_PS8_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod275 = trunc i8 %i.ik to i1
  tail call void @llvm.assume(i1 %lcmp.mod275)
  %i.jx = add nsw i64 %indvars.iv7.i.epil.init, -1 ; 2 uses
  %.val49.i.epil = load i8, ptr %i.ek, align 2, !tbaa !794
  %i.jy = trunc nuw i64 %indvars.iv7.i.epil.init to i8
  %i.jz = sub i8 %i.jy, %.sroa.speculated
  %i.ka = add i8 %i.jz, %.val49.i.epil
  %i.kb = zext i8 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.kb
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !2554 ; 3 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.jx
  store ptr %i.kd, ptr %i.ke, align 8, !tbaa !2554
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kg = trunc nuw i64 %i.jx to i8
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISC_EERSt4pairIKS5_iEPSJ_EE:bb.a
  %i.lt = load i32, ptr %i.a, align 8, !tbaa !783
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE5splitEiPSD_PS8_(ptr noundef nonnull align 1 dereferenceable(1) %i.ls, i32 noundef %i.lt, ptr noundef nonnull %i.ln)
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.u
  %.0 = phi ptr [ %i.ld, %bb.t ], [ %i.ld, %bb.s ], [ %i.ln, %bb.u ]
  %i.lu = load i32, ptr %i.a, align 8, !tbaa !783 ; 2 uses
  %i.lv = load ptr, ptr %1, align 8, !tbaa !2554
  %i.lw = getelementptr i8, ptr %i.lv, i64 10
  %.val = load i8, ptr %i.lw, align 1, !tbaa !794
  %i.lx = zext i8 %.val to i32                    ; 2 uses
  %i.ly = icmp sgt i32 %i.lu, %i.lx
  br i1 %i.ly, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.lz = xor i32 %i.lx, -1
  %i.ma = add nsw i32 %i.lu, %i.lz
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.w, %bb.g, %bb.n
  %.sink176 = phi i32 [ %i.kp, %bb.n ], [ %i.dw, %bb.g ], [ %i.ma, %bb.w ]
  %.sink = phi ptr [ %i.ed, %bb.n ], [ %i.h, %bb.g ], [ %.0, %bb.w ]
  store i32 %.sink176, ptr %i.a, align 8, !tbaa !783
  store ptr %.sink, ptr %1, align 8, !tbaa !2554
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE23rebalance_left_to_rightEhPSD_PS8_.exit, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE23rebalance_right_to_leftEhPSD_PS8_.exit, %bb.v
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE16clear_and_deleteEPSD_PS8_(ptr noundef %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 11
  %.val55 = load i8, ptr %i.a, align 1, !tbaa !794 ; 2 uses
  %.not1 = icmp eq i8 %.val55, 0
  br i1 %.not1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i8 %.val55 to i64
  %i.c = shl nuw nsw i64 %i.b, 3
  %i.d = add nuw nsw i64 %i.c, 16
  br label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 10
  %.val66 = load i8, ptr %i.e, align 1, !tbaa !794
  %i.f = icmp eq i8 %.val66, 0
  br i1 %i.f, label %.loopexit.sink.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %.val59 = load ptr, ptr %0, align 8, !tbaa !2554
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0497 = phi ptr [ %.049.val69, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %i.g = getelementptr i8, ptr %.0497, i64 256
  %.049.val69 = load ptr, ptr %i.g, align 8, !tbaa !2554 ; 4 uses
  %i.h = getelementptr i8, ptr %.049.val69, i64 11
  %.049.val62 = load i8, ptr %i.h, align 1, !tbaa !794
  %.not.i = icmp eq i8 %.049.val62, 0
  br i1 %.not.i, label %.lr.ph, label %._crit_edge, !llvm.loop !19317

._crit_edge:                                      ; preds = %.lr.ph
  %i.i = getelementptr i8, ptr %.049.val69, i64 8
  %.049.val = load i8, ptr %i.i, align 1, !tbaa !794
  %i.j = zext i8 %.049.val to i64
  %.049.val58 = load ptr, ptr %.049.val69, align 8, !tbaa !2554
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %._crit_edge
  %.147 = phi i64 [ %i.j, %._crit_edge ], [ %.147.be, %.backedge ] ; 2 uses
  %.1 = phi ptr [ %.049.val58, %._crit_edge ], [ %.1.be, %.backedge ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.1, i64 256
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.147
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2554 ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 11
  %.val61 = load i8, ptr %i.n, align 1, !tbaa !794 ; 2 uses
  %.not.i70 = icmp eq i8 %.val61, 0
  br i1 %.not.i70, label %.lr.ph11, label %bb.e

.lr.ph11:                                         ; preds = %bb.d, %.lr.ph11
  %.15010 = phi ptr [ %.150.val68, %.lr.ph11 ], [ %i.m, %bb.d ]
  %i.o = getelementptr i8, ptr %.15010, i64 256
  %.150.val68 = load ptr, ptr %i.o, align 8, !tbaa !2554 ; 5 uses
  %i.p = getelementptr i8, ptr %.150.val68, i64 11
  %.150.val60 = load i8, ptr %i.p, align 1, !tbaa !794 ; 2 uses
  %.not.i71 = icmp eq i8 %.150.val60, 0
  br i1 %.not.i71, label %.lr.ph11, label %._crit_edge12, !llvm.loop !19318

._crit_edge12:                                    ; preds = %.lr.ph11
  %i.q = getelementptr i8, ptr %.150.val68, i64 8
  %.150.val = load i8, ptr %i.q, align 1, !tbaa !794
  %i.r = zext i8 %.150.val to i64
  %.150.val57 = load ptr, ptr %.150.val68, align 8, !tbaa !2554
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge12, %bb.d
  %.251.val = phi i8 [ %.150.val60, %._crit_edge12 ], [ %.val61, %bb.d ]
  %.251 = phi ptr [ %.150.val68, %._crit_edge12 ], [ %i.m, %bb.d ]
  %.248 = phi i64 [ %i.r, %._crit_edge12 ], [ %.147, %bb.d ] ; 2 uses
  %.2 = phi ptr [ %.150.val57, %._crit_edge12 ], [ %.1, %bb.d ] ; 3 uses
  %i.s = zext i8 %.251.val to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 16
  tail call void @_ZdlPvm(ptr noundef nonnull %.251, i64 noundef %i.u) #36
  %i.v = getelementptr i8, ptr %.2, i64 10
  %.2.val = load i8, ptr %i.v, align 1, !tbaa !794
  %i.w = zext i8 %.2.val to i64
  %.not.not = icmp samesign ult i64 %.248, %i.w
  br i1 %.not.not, label %.backedge, label %.preheader2

.backedge:                                        ; preds = %bb.e, %bb.g
  %.147.be.in = phi i64 [ %.248, %bb.e ], [ %i.aa, %bb.g ]
  %.1.be = phi ptr [ %.2, %bb.e ], [ %.3.val56, %bb.g ]
  %.147.be = add nuw nsw i64 %.147.be.in, 1
  br label %bb.d

.preheader2:                                      ; preds = %bb.e, %bb.f
  %.3 = phi ptr [ %.3.val56, %bb.f ], [ %.2, %bb.e ] ; 3 uses
  %i.x = getelementptr i8, ptr %.3, i64 8
  %.3.val = load i8, ptr %i.x, align 1, !tbaa !794 ; 2 uses
  %.3.val56 = load ptr, ptr %.3, align 8, !tbaa !2554 ; 4 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.3, i64 noundef 504) #36
  %i.y = icmp eq ptr %.3.val56, %.val59
  br i1 %i.y, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.preheader2
  %i.z = getelementptr i8, ptr %.3.val56, i64 10
  %.val = load i8, ptr %i.z, align 1, !tbaa !794
  %.not = icmp ult i8 %.3.val, %.val
  br i1 %.not, label %bb.g, label %.preheader2, !llvm.loop !19319

bb.g:                                             ; preds = %bb.f
  %i.aa = zext i8 %.3.val to i64
  br label %.backedge

.loopexit.sink.split:                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ %i.d, %bb.b ], [ 504, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef %.sink) #36
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader2, %.loopexit.sink.split
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE5splitEiPSD_PS8_(ptr nofree noundef nonnull align 1 captures(address) dereferenceable(1) %0, i32 noundef %1, ptr noundef initializes((10, 11)) %2) unnamed_addr #27 align 2 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 30, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 10
  %.val31 = load i8, ptr %i.a, align 1, !tbaa !794
  %i.b = add i8 %.val31, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 10
  %.val39 = load i8, ptr %i.c, align 1, !tbaa !794
  %i.d = lshr i8 %.val39, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.b, %bb.b ], [ %i.d, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.sink, ptr %i.e, align 1, !tbaa !794
  %i.f = getelementptr i8, ptr %0, i64 10         ; 5 uses
  %.val30 = load i8, ptr %i.f, align 1, !tbaa !794
  %i.g = getelementptr i8, ptr %2, i64 10         ; 2 uses
  %i.h = sub i8 %.val30, %.sink                   ; 3 uses
  store i8 %i.h, ptr %i.f, align 1, !tbaa !794
  %.val37 = load i8, ptr %i.g, align 1, !tbaa !794 ; 2 uses
  %i.i = zext i8 %.val37 to i64
  %i.j = zext i8 %i.h to i64                      ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 12         ; 2 uses
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.j ; 7 uses
  %.idx.i = shl nuw nsw i64 %i.i, 3               ; 5 uses
  %i.m = getelementptr i8, ptr %i.l, i64 %.idx.i  ; 2 uses
  %.not1.i = icmp eq i8 %.val37, 0
  br i1 %.not1.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.n = getelementptr i8, ptr %2, i64 12         ; 6 uses
  %i.o = add nsw i64 %.idx.i, -8                  ; 2 uses
  %i.p = lshr exact i64 %i.o, 3
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.o, 200
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.r = getelementptr i8, ptr %2, i64 %.idx.i
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = shl nuw nsw i64 %i.j, 3                  ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 %.idx.i
  %i.v = getelementptr i8, ptr %i.u, i64 %i.t
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %3 = getelementptr i8, ptr %2, i64 16
  %4 = getelementptr i8, ptr %2, i64 %.idx.i
  %5 = getelementptr i8, ptr %4, i64 12
  %i.x = getelementptr i8, ptr %0, i64 %i.t
  %i.y = getelementptr i8, ptr %i.x, i64 16
  %bound0 = icmp ult ptr %i.n, %i.w
  %bound1 = icmp ult ptr %i.l, %i.s
  %found.conflict = and i1 %bound0, %bound1
  %bound015 = icmp ult ptr %3, %i.m
  %bound116 = icmp ult ptr %i.y, %5
  %found.conflict17 = and i1 %bound015, %bound116
  %conflict.rdx = or i1 %found.conflict, %found.conflict17
  br i1 %conflict.rdx, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.q, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.n, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.l, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 3 uses
  %i.ad = or disjoint i64 %i.ac, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.ac
  %next.gep18 = getelementptr i8, ptr %i.n, i64 %i.ad
  %next.gep19 = getelementptr i8, ptr %i.l, i64 %i.ac
  %next.gep20 = getelementptr i8, ptr %i.l, i64 %i.ad
  %wide.vec = load <4 x i32>, ptr %next.gep19, align 4, !tbaa !783
  %wide.vec22 = load <4 x i32>, ptr %next.gep20, align 4, !tbaa !783
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !783
  store <4 x i32> %wide.vec22, ptr %next.gep18, align 4, !tbaa !783
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !19320

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %.03.i.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.preheader.i ], [ %i.aa, %middle.block ]
  %.0122.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.preheader.i ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.03.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %.03.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.0122.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %.0122.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.af = load <2 x i32>, ptr %.0122.i, align 4, !tbaa !783
  store <2 x i32> %i.af, ptr %.03.i, align 4, !tbaa !783
  %i.ag = getelementptr inbounds nuw i8, ptr %.0122.i, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.03.i, i64 8
  %.not.i = icmp eq ptr %i.ag, %i.m
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit, label %.lr.ph.i, !llvm.loop !19321

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.pre = load i8, ptr %i.f, align 1, !tbaa !794
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit, %bb.d
  %i.ai = phi i8 [ %.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit ], [ %i.h, %bb.d ]
  %i.aj = add i8 %i.ai, -1                        ; 2 uses
  store i8 %i.aj, ptr %i.f, align 1, !tbaa !794
  %.val35 = load ptr, ptr %0, align 8, !tbaa !2554 ; 5 uses
  %i.ak = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.val33 = load i8, ptr %i.ak, align 8, !tbaa !794 ; 4 uses
  %i.al = zext i8 %i.aj to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.al
  %i.an = zext i8 %.val33 to i32
  %i.ao = getelementptr i8, ptr %.val35, i64 10   ; 3 uses
  %.val21.i = load i8, ptr %i.ao, align 1, !tbaa !794 ; 3 uses
  %i.ap = icmp ult i8 %.val33, %.val21.i
  %i.aq = zext i8 %.val33 to i64                  ; 4 uses
  br i1 %i.ap, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.val35, i64 12
  %i.as = getelementptr [8 x i8], ptr %i.ar, i64 %i.aq ; 3 uses
  %narrow.i = sub nuw i8 %.val21.i, %.val33
  %i.at = zext i8 %narrow.i to i64                ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.at, 3            ; 2 uses
  %i.au = getelementptr i8, ptr %i.as, i64 8
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %i.at ; 2 uses
  %i.aw = getelementptr i8, ptr %i.as, i64 %.idx.i.i ; 2 uses
  %i.ax = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 3
  %i.az = add nuw nsw i64 %i.ay, 1
  %xtraiter = and i64 %i.az, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %.03.i.i.prol = phi ptr [ %i.ba, %.lr.ph.i.i.prol ], [ %i.av, %.lr.ph.preheader.i.i ]
  %.0142.i.i.prol = phi ptr [ %i.bb, %.lr.ph.i.i.prol ], [ %i.aw, %.lr.ph.preheader.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.ba = getelementptr inbounds i8, ptr %.03.i.i.prol, i64 -8 ; 3 uses
  %i.bb = getelementptr inbounds i8, ptr %.0142.i.i.prol, i64 -8 ; 3 uses
  %i.bc = load <2 x i32>, ptr %i.bb, align 4, !tbaa !783
  store <2 x i32> %i.bc, ptr %i.ba, align 4, !tbaa !783
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !19322

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.03.i.i.unr = phi ptr [ %i.av, %.lr.ph.preheader.i.i ], [ %i.ba, %.lr.ph.i.i.prol ]
  %.0142.i.i.unr = phi ptr [ %i.aw, %.lr.ph.preheader.i.i ], [ %i.bb, %.lr.ph.i.i.prol ]
  %i.bd = icmp ult i64 %i.ax, 56
  br i1 %i.bd, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.03.i.i = phi ptr [ %i.bz, %.lr.ph.i.i ], [ %.03.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 8 uses
  %.0142.i.i = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %.0142.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 8 uses
  %i.be = getelementptr inbounds i8, ptr %.03.i.i, i64 -8
  %i.bf = getelementptr inbounds i8, ptr %.0142.i.i, i64 -8
  %i.bg = load <2 x i32>, ptr %i.bf, align 4, !tbaa !783
  store <2 x i32> %i.bg, ptr %i.be, align 4, !tbaa !783
  %i.bh = getelementptr inbounds i8, ptr %.03.i.i, i64 -16
  %i.bi = getelementptr inbounds i8, ptr %.0142.i.i, i64 -16
  %i.bj = load <2 x i32>, ptr %i.bi, align 4, !tbaa !783
  store <2 x i32> %i.bj, ptr %i.bh, align 4, !tbaa !783
  %i.bk = getelementptr inbounds i8, ptr %.03.i.i, i64 -24
  %i.bl = getelementptr inbounds i8, ptr %.0142.i.i, i64 -24
  %i.bm = load <2 x i32>, ptr %i.bl, align 4, !tbaa !783
  store <2 x i32> %i.bm, ptr %i.bk, align 4, !tbaa !783
  %i.bn = getelementptr inbounds i8, ptr %.03.i.i, i64 -32
  %i.bo = getelementptr inbounds i8, ptr %.0142.i.i, i64 -32
  %i.bp = load <2 x i32>, ptr %i.bo, align 4, !tbaa !783
  store <2 x i32> %i.bp, ptr %i.bn, align 4, !tbaa !783
  %i.bq = getelementptr inbounds i8, ptr %.03.i.i, i64 -40
  %i.br = getelementptr inbounds i8, ptr %.0142.i.i, i64 -40
  %i.bs = load <2 x i32>, ptr %i.br, align 4, !tbaa !783
  store <2 x i32> %i.bs, ptr %i.bq, align 4, !tbaa !783
  %i.bt = getelementptr inbounds i8, ptr %.03.i.i, i64 -48
  %i.bu = getelementptr inbounds i8, ptr %.0142.i.i, i64 -48
  %i.bv = load <2 x i32>, ptr %i.bu, align 4, !tbaa !783
  store <2 x i32> %i.bv, ptr %i.bt, align 4, !tbaa !783
  %i.bw = getelementptr inbounds i8, ptr %.03.i.i, i64 -56
  %i.bx = getelementptr inbounds i8, ptr %.0142.i.i, i64 -56
  %i.by = load <2 x i32>, ptr %i.bx, align 4, !tbaa !783
  store <2 x i32> %i.by, ptr %i.bw, align 4, !tbaa !783
  %i.bz = getelementptr inbounds i8, ptr %.03.i.i, i64 -64 ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %.0142.i.i, i64 -64 ; 3 uses
  %i.cb = load <2 x i32>, ptr %i.ca, align 4, !tbaa !783
  store <2 x i32> %i.cb, ptr %i.bz, align 4, !tbaa !783
  %.not.i.i.7 = icmp eq ptr %i.ca, %i.as
  br i1 %.not.i.i.7, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !678

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.val19.pre.i = load i8, ptr %i.ao, align 1, !tbaa !794
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.loopexit.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit
  %.val19.i = phi i8 [ %.val19.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.loopexit.i ], [ %.val21.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.val35, i64 12
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.aq
  %i.ce = load <2 x i32>, ptr %i.am, align 4, !tbaa !783
  store <2 x i32> %i.ce, ptr %i.cd, align 4, !tbaa !783
  %i.cf = add i8 %.val19.i, 1                     ; 3 uses
  store i8 %i.cf, ptr %i.ao, align 1, !tbaa !794
  %i.cg = getelementptr i8, ptr %.val35, i64 11
  %.val22.i = load i8, ptr %i.cg, align 1, !tbaa !794
  %.not.i25.i = icmp eq i8 %.val22.i, 0
  br i1 %.not.i25.i, label %bb.e, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE13emplace_valueIJPNS1_13map_slot_typeIS5_iEEEEEvhPS8_DpOT_.exit

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i
  %i.ch = zext i8 %i.cf to i32
  %i.ci = add nuw nsw i32 %i.an, 1                ; 2 uses
  %i.cj = icmp samesign ult i32 %i.ci, %i.ch
  br i1 %i.cj, label %.lr.ph.i41, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE13emplace_valueIJPNS1_13map_slot_typeIS5_iEEEEEvhPS8_DpOT_.exit

.lr.ph.i41:                                       ; preds = %bb.e
  %i.ck = getelementptr inbounds nuw i8, ptr %.val35, i64 256 ; 10 uses
  %i.cl = zext i8 %i.cf to i64                    ; 4 uses
  %i.cm = zext nneg i32 %i.ci to i64
  %i.cn = xor i64 %i.aq, -1
  %i.co = add nsw i64 %i.cn, %i.cl
  %i.cp = add nsw i64 %i.cl, -2
  %i.cq = sub nsw i64 %i.cp, %i.aq
  %xtraiter27 = and i64 %i.co, 3                  ; 2 uses
  %lcmp.mod28.not = icmp eq i64 %xtraiter27, 0
  br i1 %lcmp.mod28.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i41, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.cr, %.prol.preheader ], [ %i.cl, %.lr.ph.i41 ] ; 3 uses
  %prol.iter29 = phi i64 [ %prol.iter29.next, %.prol.preheader ], [ 0, %.lr.ph.i41 ]
  %i.cr = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !2554 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.prol
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !2554
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cw = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.cw, ptr %i.cv, align 1, !tbaa !794
  %prol.iter29.next = add i64 %prol.iter29, 1     ; 2 uses
  %prol.iter29.cmp.not = icmp eq i64 %prol.iter29.next, %xtraiter27
  br i1 %prol.iter29.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !19323

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i41
  %indvars.iv.unr = phi i64 [ %i.cl, %.lr.ph.i41 ], [ %i.cr, %.prol.preheader ]
  %i.cx = icmp ult i64 %i.cq, 3
  br i1 %i.cx, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE13emplace_valueIJPNS1_13map_slot_typeIS5_iEEEEEvhPS8_DpOT_.exit, label %.lr.ph.i41.new

.lr.ph.i41.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i41.new
  %indvars.iv = phi i64 [ %i.dq, %.lr.ph.i41.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.cy = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !2554 ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv
  store ptr %i.da, ptr %i.db, align 8, !tbaa !2554
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE11merge_nodesEPNS1_10btree_nodeISC_EESG_:bb.a
  %i.ba = shl nuw nsw i64 %i.ar, 2
  %i.bb = shl nuw nsw i64 %i.at, 2
  %i.bc = add nsw i64 %i.ba, -4
  %i.bd = sub nsw i64 %i.bc, %i.bb                ; 2 uses
  %i.be = lshr exact i64 %i.bd, 2
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check11 = icmp ult i64 %i.bd, 76
  br i1 %min.iters.check11, label %.lr.ph.i.i.i.preheader, label %vector.memcheck12

vector.memcheck12:                                ; preds = %.lr.ph.preheader.i.i.i
  %i.bg = sub nsw i64 %i.ay, %i.at
  %i.bh = and i64 %i.bg, 4611686018427387896
  %diff.check13 = icmp eq i64 %i.bh, 0
  br i1 %diff.check13, label %.lr.ph.i.i.i.preheader, label %vector.ph14

vector.ph14:                                      ; preds = %vector.memcheck12
  %n.vec15 = and i64 %i.bf, 9223372036854775800   ; 3 uses
  %i.bi = shl i64 %n.vec15, 2                     ; 2 uses
  %i.bj = getelementptr i8, ptr %i.az, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.aw, i64 %i.bi
  br label %vector.body16

vector.body16:                                    ; preds = %vector.body16, %vector.ph14
  %index17 = phi i64 [ 0, %vector.ph14 ], [ %index.next22, %vector.body16 ] ; 2 uses
  %i.bl = shl i64 %index17, 2                     ; 2 uses
  %next.gep18 = getelementptr i8, ptr %i.az, i64 %i.bl ; 2 uses
  %next.gep19 = getelementptr i8, ptr %i.aw, i64 %i.bl ; 2 uses
  %i.bm = getelementptr i8, ptr %next.gep19, i64 16
  %wide.load20 = load <4 x i32>, ptr %next.gep19, align 4, !tbaa !2592
  %wide.load21 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !2592
  %i.bn = getelementptr i8, ptr %next.gep18, i64 16
  store <4 x i32> %wide.load20, ptr %next.gep18, align 4, !tbaa !2592
  store <4 x i32> %wide.load21, ptr %i.bn, align 4, !tbaa !2592
  %index.next22 = add nuw i64 %index17, 8         ; 2 uses
  %i.bo = icmp eq i64 %index.next22, %n.vec15
  br i1 %i.bo, label %middle.block23, label %vector.body16, !llvm.loop !20043

middle.block23:                                   ; preds = %vector.body16
  %cmp.n24 = icmp eq i64 %i.bf, %n.vec15
  br i1 %cmp.n24, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck12, %.lr.ph.preheader.i.i.i, %middle.block23
  %.03.i.i.i.ph = phi ptr [ %i.az, %vector.memcheck12 ], [ %i.az, %.lr.ph.preheader.i.i.i ], [ %i.bj, %middle.block23 ]
  %.0122.i.i.i.ph = phi ptr [ %i.aw, %vector.memcheck12 ], [ %i.aw, %.lr.ph.preheader.i.i.i ], [ %i.bk, %middle.block23 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.03.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i ], [ %.03.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0122.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i ], [ %.0122.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.012.val.i.i.i = load i32, ptr %.0122.i.i.i, align 4, !tbaa !2592
  store i32 %.012.val.i.i.i, ptr %.03.i.i.i, align 4, !tbaa !2592
  %i.bp = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.bp, %i.ax
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !20044

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block23, %.loopexit.i
  %i.br = getelementptr i8, ptr %.val25.i, i64 11
  %.val31.i.i = load i8, ptr %i.br, align 1, !tbaa !794
  %.not.i32.i.i = icmp eq i8 %.val31.i.i, 0
  br i1 %.not.i32.i.i, label %.critedge.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE5mergeEPSD_PS8_.exit

.critedge.i.i:                                    ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.val25.i, i64 256 ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.at
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !2616
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE16clear_and_deleteEPSD_PS8_(ptr noundef %i.bu)
  %i.bv = add i8 %.val23.i, 2                     ; 2 uses
  %.not1.i33.i = icmp ugt i8 %i.bv, %.val.i.i
  br i1 %.not1.i33.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE5mergeEPSD_PS8_.exit, label %.lr.ph.i34.i

.lr.ph.i34.i:                                     ; preds = %.critedge.i.i, %.lr.ph.i34.i
  %.02.i.i = phi i8 [ %i.cd, %.lr.ph.i34.i ], [ %i.bv, %.critedge.i.i ] ; 3 uses
  %i.bw = add i8 %.02.i.i, -1                     ; 2 uses
  %i.bx = zext i8 %.02.i.i to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !2616 ; 2 uses
  %i.ca = zext i8 %i.bw to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ca
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !2616
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i8 %i.bw, ptr %i.cc, align 1, !tbaa !794
  %i.cd = add i8 %.02.i.i, 1                      ; 2 uses
  %.not.i35.i = icmp ugt i8 %i.cd, %.val.i.i
  br i1 %.not.i35.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE5mergeEPSD_PS8_.exit, label %.lr.ph.i34.i, !llvm.loop !20045

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE5mergeEPSD_PS8_.exit: ; preds = %.lr.ph.i34.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.i.i, %.critedge.i.i
  %i.ce = add i8 %.val.i.i, -1
  store i8 %i.ce, ptr %i.aq, align 1, !tbaa !794
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.cf, align 8, !tbaa !2616
  %i.cg = icmp eq ptr %.val, %2
  br i1 %i.cg, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE5mergeEPSD_PS8_.exit
  store ptr %1, ptr %i.cf, align 8, !tbaa !2616
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_113NotAssignableEJSt4lessIS5_ESaIS5_ESt17integral_constantIiLi256EES9_IbLb1EEEEEE5mergeEPSD_PS8_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE16internal_emplaceIJRPNS1_13map_slot_typeIS5_iEEEEENS1_14btree_iteratorINS1_10btree_nodeIS6_EERSt4pairIKS5_iEPSI_EESL_DpOT_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr %1, i32 %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.4433", align 8 ; 6 uses
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 11
  %.val = load i8, ptr %i.b, align 1, !tbaa !794  ; 2 uses
  %.not.i = icmp eq i8 %.val, 0
  br i1 %.not.i, label %.thread.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert18 = getelementptr i8, ptr %1, i64 10
  %.val5.pre = load i8, ptr %.phi.trans.insert18, align 1, !tbaa !794
  br label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.d = and i32 %2, 255
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.e
  %.11727.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !2636 ; 3 uses
  %i.g = getelementptr i8, ptr %.11727.i.i.i, i64 11
  %.117.val2028.i.i.i = load i8, ptr %i.g, align 1, !tbaa !794 ; 2 uses
  %.not.i29.i.i.i = icmp eq i8 %.117.val2028.i.i.i, 0
  br i1 %.not.i29.i.i.i, label %.lr.ph31.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEEERSt4pairIKS6_iEPSB_EmmEv.exit

.lr.ph31.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph31.i.i.i
  %.11730.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph31.i.i.i ], [ %.11727.i.i.i, %.thread.i.i ] ; 2 uses
  %i.h = getelementptr i8, ptr %.11730.i.i.i, i64 10
  %.117.val18.i.i.i = load i8, ptr %i.h, align 1, !tbaa !794
  %i.i = getelementptr inbounds nuw i8, ptr %.11730.i.i.i, i64 256
  %i.j = zext i8 %.117.val18.i.i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %.117.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !2636 ; 3 uses
  %i.l = getelementptr i8, ptr %.117.i.i.i, i64 11
  %.117.val20.i.i.i = load i8, ptr %i.l, align 1, !tbaa !794 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %.117.val20.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph31.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEEERSt4pairIKS6_iEPSB_EmmEv.exit, !llvm.loop !686

_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEEERSt4pairIKS6_iEPSB_EmmEv.exit: ; preds = %.lr.ph31.i.i.i, %.thread.i.i
  %.val4.pre = phi i8 [ %.117.val2028.i.i.i, %.thread.i.i ], [ %.117.val20.i.i.i, %.lr.ph31.i.i.i ]
  %.117.lcssa.i.i.i = phi ptr [ %.11727.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph31.i.i.i ] ; 3 uses
  %i.m = getelementptr i8, ptr %.117.lcssa.i.i.i, i64 10
  %.117.val.i.i.i = load i8, ptr %i.m, align 1, !tbaa !794 ; 2 uses
  %i.n = zext i8 %.117.val.i.i.i to i32
  store ptr %.117.lcssa.i.i.i, ptr %4, align 8
  store i32 %i.n, ptr %i.a, align 8, !tbaa !2687
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEEERSt4pairIKS6_iEPSB_EmmEv.exit
  %.val5 = phi i8 [ %.117.val.i.i.i, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEEERSt4pairIKS6_iEPSB_EmmEv.exit ], [ %.val5.pre, %._crit_edge ] ; 3 uses
  %.val4 = phi i8 [ %.val4.pre, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEEERSt4pairIKS6_iEPSB_EmmEv.exit ], [ %.val, %._crit_edge ]
  %i.o = phi ptr [ %.117.lcssa.i.i.i, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEEERSt4pairIKS6_iEPSB_EmmEv.exit ], [ %1, %._crit_edge ] ; 5 uses
  %i.p = getelementptr i8, ptr %i.o, i64 10       ; 2 uses
  %i.q = icmp eq i8 %.val5, %.val4
  br i1 %i.q, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i8 %.val5, 30
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = shl nuw nsw i8 %.val5, 1
  %i.t = tail call i8 @llvm.umin.i8(i8 %i.s, i8 30) ; 2 uses
  %i.u = shl nuw i8 %i.t, 3
  %i.v = zext i8 %i.u to i64
  %i.w = add nuw nsw i64 %i.v, 16
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #35 ; 13 uses
  store ptr %i.x, ptr %i.x, align 8, !tbaa !2636
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i8 0, ptr %i.y, align 8, !tbaa !794
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 9
  store i8 0, ptr %i.z, align 1, !tbaa !794
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 11
  store i8 %i.t, ptr %i.aa, align 1, !tbaa !794
  store ptr %i.x, ptr %4, align 8, !tbaa !2688
  %.val13.i.i = load i8, ptr %i.p, align 1, !tbaa !794 ; 3 uses
  %i.ab = zext i8 %.val13.i.i to i64
  %i.ac = getelementptr i8, ptr %i.o, i64 12      ; 7 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.ab, 3          ; 4 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 %.idx.i.i.i ; 2 uses
  %.not1.i.i.i = icmp eq i8 %.val13.i.i, 0
  br i1 %.not1.i.i.i, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE16internal_emplaceIJRPNS1_13map_slot_typeIS5_iEEEEENS1_14btree_iteratorINS1_10btree_nodeIS6_EERSt4pairIKS5_iEPSI_EESL_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.ae = getelementptr i8, ptr %i.x, i64 12      ; 6 uses
  %i.af = add nsw i64 %.idx.i.i.i, -8             ; 2 uses
  %i.ag = lshr exact i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i9.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.i.i
  %i.ai = add nuw nsw i64 %.idx.i.i.i, 8          ; 2 uses
  %i.aj = getelementptr i8, ptr %i.x, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.o, i64 %i.ai
  %5 = getelementptr i8, ptr %i.x, i64 16
  %6 = getelementptr i8, ptr %i.x, i64 %.idx.i.i.i
  %7 = getelementptr i8, ptr %6, i64 12
  %i.al = getelementptr i8, ptr %i.o, i64 16
  %bound0 = icmp ult ptr %i.ae, %i.ak
  %bound1 = icmp ult ptr %i.ac, %i.aj
  %found.conflict = and i1 %bound0, %bound1
  %bound08 = icmp ult ptr %5, %i.ad
  %bound19 = icmp ult ptr %i.al, %7
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %.lr.ph.i.i.i9.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.ae, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.ac, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3                       ; 3 uses
  %i.aq = or disjoint i64 %i.ap, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ae, i64 %i.ap
  %next.gep11 = getelementptr i8, ptr %i.ae, i64 %i.aq
  %next.gep12 = getelementptr i8, ptr %i.ac, i64 %i.ap
  %next.gep13 = getelementptr i8, ptr %i.ac, i64 %i.aq
  %wide.vec = load <4 x i32>, ptr %next.gep12, align 4, !tbaa !783
  %wide.vec15 = load <4 x i32>, ptr %next.gep13, align 4, !tbaa !783
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !783
  store <4 x i32> %wide.vec15, ptr %next.gep11, align 4, !tbaa !783
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !20046

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE16internal_emplaceIJRPNS1_13map_slot_typeIS5_iEEEEENS1_14btree_iteratorINS1_10btree_nodeIS6_EERSt4pairIKS5_iEPSI_EESL_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i9.preheader

.lr.ph.i.i.i9.preheader:                          ; preds = %vector.memcheck, %.lr.ph.preheader.i.i.i, %middle.block
  %.03.i.i.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.preheader.i.i.i ], [ %i.an, %middle.block ]
  %.0122.i.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.preheader.i.i.i ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i9

.lr.ph.i.i.i9:                                    ; preds = %.lr.ph.i.i.i9.preheader, %.lr.ph.i.i.i9
  %.03.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i9 ], [ %.03.i.i.i.ph, %.lr.ph.i.i.i9.preheader ] ; 2 uses
  %.0122.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i9 ], [ %.0122.i.i.i.ph, %.lr.ph.i.i.i9.preheader ] ; 2 uses
  %i.as = load <2 x i32>, ptr %.0122.i.i.i, align 4, !tbaa !783
  store <2 x i32> %i.as, ptr %.03.i.i.i, align 4, !tbaa !783
  %i.at = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 8
  %.not.i.i.i10 = icmp eq ptr %i.at, %i.ad
  br i1 %.not.i.i.i10, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE16internal_emplaceIJRPNS1_13map_slot_typeIS5_iEEEEENS1_14btree_iteratorINS1_10btree_nodeIS6_EERSt4pairIKS5_iEPSI_EESL_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i9, !llvm.loop !20047

_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE16internal_emplaceIJRPNS1_13map_slot_typeIS5_iEEEEENS1_14btree_iteratorINS1_10btree_nodeIS6_EERSt4pairIKS5_iEPSI_EESL_DpOT_ENKUlhE_clEh.exit: ; preds = %.lr.ph.i.i.i9, %middle.block, %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  store i8 %.val13.i.i, ptr %i.av, align 2, !tbaa !794
  store i8 0, ptr %i.p, align 1, !tbaa !794
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE16clear_and_deleteEPS7_PSaISt4pairIKS5_iEE(ptr noundef nonnull %i.o)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.aw, align 8, !tbaa !2636
  store ptr %i.x, ptr %0, align 8, !tbaa !2636
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS6_EERSt4pairIKS5_iEPSD_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %4)
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE16internal_emplaceIJRPNS1_13map_slot_typeIS5_iEEEEENS1_14btree_iteratorINS1_10btree_nodeIS6_EERSt4pairIKS5_iEPSI_EESL_DpOT_ENKUlhE_clEh.exit, %bb.e, %bb.b
  %i.ax = load ptr, ptr %4, align 8, !tbaa !2688  ; 5 uses
  %i.ay = load i32, ptr %i.a, align 8, !tbaa !2687 ; 2 uses
  %i.az = trunc i32 %i.ay to i8                   ; 2 uses
  %.val8 = load ptr, ptr %3, align 8
  %i.ba = and i32 %i.ay, 255                      ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ax, i64 10     ; 3 uses
  %.val21.i = load i8, ptr %i.bb, align 1, !tbaa !794 ; 3 uses
  %i.bc = icmp ugt i8 %.val21.i, %i.az
  %i.bd = zext nneg i32 %i.ba to i64              ; 4 uses
  br i1 %i.bc, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.bf = getelementptr [8 x i8], ptr %i.be, i64 %i.bd ; 3 uses
  %narrow.i = sub nuw i8 %.val21.i, %i.az
  %i.bg = zext i8 %narrow.i to i64                ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.bg, 3            ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bf, i64 8
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.bg ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bf, i64 %.idx.i.i ; 2 uses
  %i.bk = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.bl = lshr exact i64 %i.bk, 3
  %i.bm = add nuw nsw i64 %i.bl, 1
  %xtraiter = and i64 %i.bm, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %.03.i.i.prol = phi ptr [ %i.bn, %.lr.ph.i.i.prol ], [ %i.bi, %.lr.ph.preheader.i.i ]
  %.0142.i.i.prol = phi ptr [ %i.bo, %.lr.ph.i.i.prol ], [ %i.bj, %.lr.ph.preheader.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.bn = getelementptr inbounds i8, ptr %.03.i.i.prol, i64 -8 ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %.0142.i.i.prol, i64 -8 ; 3 uses
  %i.bp = load <2 x i32>, ptr %i.bo, align 4, !tbaa !783
  store <2 x i32> %i.bp, ptr %i.bn, align 4, !tbaa !783
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !20048

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.03.i.i.unr = phi ptr [ %i.bi, %.lr.ph.preheader.i.i ], [ %i.bn, %.lr.ph.i.i.prol ]
  %.0142.i.i.unr = phi ptr [ %i.bj, %.lr.ph.preheader.i.i ], [ %i.bo, %.lr.ph.i.i.prol ]
  %i.bq = icmp ult i64 %i.bk, 56
  br i1 %i.bq, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.03.i.i = phi ptr [ %i.cm, %.lr.ph.i.i ], [ %.03.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 8 uses
  %.0142.i.i = phi ptr [ %i.cn, %.lr.ph.i.i ], [ %.0142.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 8 uses
  %i.br = getelementptr inbounds i8, ptr %.03.i.i, i64 -8
  %i.bs = getelementptr inbounds i8, ptr %.0142.i.i, i64 -8
  %i.bt = load <2 x i32>, ptr %i.bs, align 4, !tbaa !783
  store <2 x i32> %i.bt, ptr %i.br, align 4, !tbaa !783
  %i.bu = getelementptr inbounds i8, ptr %.03.i.i, i64 -16
  %i.bv = getelementptr inbounds i8, ptr %.0142.i.i, i64 -16
  %i.bw = load <2 x i32>, ptr %i.bv, align 4, !tbaa !783
  store <2 x i32> %i.bw, ptr %i.bu, align 4, !tbaa !783
  %i.bx = getelementptr inbounds i8, ptr %.03.i.i, i64 -24
  %i.by = getelementptr inbounds i8, ptr %.0142.i.i, i64 -24
  %i.bz = load <2 x i32>, ptr %i.by, align 4, !tbaa !783
  store <2 x i32> %i.bz, ptr %i.bx, align 4, !tbaa !783
  %i.ca = getelementptr inbounds i8, ptr %.03.i.i, i64 -32
  %i.cb = getelementptr inbounds i8, ptr %.0142.i.i, i64 -32
  %i.cc = load <2 x i32>, ptr %i.cb, align 4, !tbaa !783
  store <2 x i32> %i.cc, ptr %i.ca, align 4, !tbaa !783
  %i.cd = getelementptr inbounds i8, ptr %.03.i.i, i64 -40
  %i.ce = getelementptr inbounds i8, ptr %.0142.i.i, i64 -40
  %i.cf = load <2 x i32>, ptr %i.ce, align 4, !tbaa !783
  store <2 x i32> %i.cf, ptr %i.cd, align 4, !tbaa !783
  %i.cg = getelementptr inbounds i8, ptr %.03.i.i, i64 -48
  %i.ch = getelementptr inbounds i8, ptr %.0142.i.i, i64 -48
  %i.ci = load <2 x i32>, ptr %i.ch, align 4, !tbaa !783
  store <2 x i32> %i.ci, ptr %i.cg, align 4, !tbaa !783
  %i.cj = getelementptr inbounds i8, ptr %.03.i.i, i64 -56
  %i.ck = getelementptr inbounds i8, ptr %.0142.i.i, i64 -56
  %i.cl = load <2 x i32>, ptr %i.ck, align 4, !tbaa !783
  store <2 x i32> %i.cl, ptr %i.cj, align 4, !tbaa !783
  %i.cm = getelementptr inbounds i8, ptr %.03.i.i, i64 -64 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %.0142.i.i, i64 -64 ; 3 uses
  %i.co = load <2 x i32>, ptr %i.cn, align 4, !tbaa !783
  store <2 x i32> %i.co, ptr %i.cm, align 4, !tbaa !783
  %.not.i.i12.7 = icmp eq ptr %i.cn, %i.bf
  br i1 %.not.i.i12.7, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !702

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.val19.pre.i = load i8, ptr %i.bb, align 1, !tbaa !794
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit.i, %bb.f
  %.val19.i = phi i8 [ %.val19.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit.i ], [ %.val21.i, %bb.f ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.bd
  %i.cr = load <2 x i32>, ptr %.val8, align 4, !tbaa !783
  store <2 x i32> %i.cr, ptr %i.cq, align 4, !tbaa !783
  %i.cs = add i8 %.val19.i, 1                     ; 3 uses
  store i8 %i.cs, ptr %i.bb, align 1, !tbaa !794
  %i.ct = getelementptr i8, ptr %i.ax, i64 11
  %.val22.i = load i8, ptr %i.ct, align 1, !tbaa !794
  %.not.i25.i = icmp eq i8 %.val22.i, 0
  br i1 %.not.i25.i, label %bb.g, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE13emplace_valueIJRPNS1_13map_slot_typeIS5_iEEEEEvhPSaISt4pairIKS5_iEEDpOT_.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit.i
  %i.cu = zext i8 %i.cs to i32
  %i.cv = add nuw nsw i32 %i.ba, 1                ; 2 uses
  %i.cw = icmp samesign ult i32 %i.cv, %i.cu
  br i1 %i.cw, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE13emplace_valueIJRPNS1_13map_slot_typeIS5_iEEEEEvhPSaISt4pairIKS5_iEEDpOT_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ax, i64 256 ; 10 uses
  %i.cy = zext i8 %i.cs to i64                    ; 4 uses
  %i.cz = zext nneg i32 %i.cv to i64
  %i.da = xor i64 %i.bd, -1
  %i.db = add nsw i64 %i.da, %i.cy
  %i.dc = add nsw i64 %i.cy, -2
  %i.dd = sub nsw i64 %i.dc, %i.bd
  %xtraiter20 = and i64 %i.db, 3                  ; 2 uses
  %lcmp.mod21.not = icmp eq i64 %xtraiter20, 0
  br i1 %lcmp.mod21.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.de, %.prol.preheader ], [ %i.cy, %.lr.ph.i ] ; 3 uses
  %prol.iter22 = phi i64 [ %prol.iter22.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.de = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !2636 ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.prol
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !2636
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dj = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.dj, ptr %i.di, align 1, !tbaa !794
  %prol.iter22.next = add i64 %prol.iter22, 1     ; 2 uses
  %prol.iter22.cmp.not = icmp eq i64 %prol.iter22.next, %xtraiter20
  br i1 %prol.iter22.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !20049

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.unr = phi i64 [ %i.cy, %.lr.ph.i ], [ %i.de, %.prol.preheader ]
  %i.dk = icmp ult i64 %i.dd, 3
  br i1 %i.dk, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE13emplace_valueIJRPNS1_13map_slot_typeIS5_iEEEEEvhPSaISt4pairIKS5_iEEDpOT_.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS6_EERSt4pairIKS5_iEPSD_EE:bb.a
bb.r:                                             ; preds = %bb.o
  %i.bv = tail call noalias noundef nonnull dereferenceable(504) ptr @_Znwm(i64 noundef 504) #35 ; 7 uses
  store ptr %.083, ptr %i.bv, align 8, !tbaa !2636
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i8 %i.bk, ptr %i.bw, align 8, !tbaa !794
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 9
  store i8 0, ptr %i.bx, align 1, !tbaa !794
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 10
  store i8 0, ptr %i.by, align 2, !tbaa !794
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 11
  store i8 0, ptr %i.bz, align 1, !tbaa !794
  %i.ca = load ptr, ptr %1, align 8, !tbaa !2636
  %i.cb = load i32, ptr %i.a, align 8, !tbaa !783
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE5splitEiPS7_PSaISt4pairIKS5_iEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ca, i32 noundef %i.cb, ptr noundef nonnull %i.bv)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.0 = phi ptr [ %i.bl, %bb.q ], [ %i.bl, %bb.p ], [ %i.bv, %bb.r ]
  %i.cc = load i32, ptr %i.a, align 8, !tbaa !783 ; 2 uses
  %i.cd = load ptr, ptr %1, align 8, !tbaa !2636
  %i.ce = getelementptr i8, ptr %i.cd, i64 10
  %.val = load i8, ptr %i.ce, align 1, !tbaa !794
  %i.cf = zext i8 %.val to i32                    ; 2 uses
  %i.cg = icmp sgt i32 %i.cc, %i.cf
  br i1 %i.cg, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.ch = xor i32 %i.cf, -1
  %i.ci = add nsw i32 %i.cc, %i.ch
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.t, %bb.f, %bb.k
  %.sink149 = phi i32 [ %i.ax, %bb.k ], [ %i.y, %bb.f ], [ %i.ci, %bb.t ]
  %.sink = phi ptr [ %i.af, %bb.k ], [ %i.h, %bb.f ], [ %.0, %bb.t ]
  store i32 %.sink149, ptr %i.a, align 8, !tbaa !783
  store ptr %.sink, ptr %1, align 8, !tbaa !2636
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.j, %bb.e, %bb.s
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE16clear_and_deleteEPS7_PSaISt4pairIKS5_iEE(ptr noundef %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 11
  %.val55 = load i8, ptr %i.a, align 1, !tbaa !794 ; 2 uses
  %.not1 = icmp eq i8 %.val55, 0
  br i1 %.not1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i8 %.val55 to i64
  %i.c = shl nuw nsw i64 %i.b, 3
  %i.d = add nuw nsw i64 %i.c, 16
  br label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 10
  %.val66 = load i8, ptr %i.e, align 1, !tbaa !794
  %i.f = icmp eq i8 %.val66, 0
  br i1 %i.f, label %.loopexit.sink.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %.val59 = load ptr, ptr %0, align 8, !tbaa !2636
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0497 = phi ptr [ %.049.val69, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %i.g = getelementptr i8, ptr %.0497, i64 256
  %.049.val69 = load ptr, ptr %i.g, align 8, !tbaa !2636 ; 4 uses
  %i.h = getelementptr i8, ptr %.049.val69, i64 11
  %.049.val62 = load i8, ptr %i.h, align 1, !tbaa !794
  %.not.i = icmp eq i8 %.049.val62, 0
  br i1 %.not.i, label %.lr.ph, label %._crit_edge, !llvm.loop !20051

._crit_edge:                                      ; preds = %.lr.ph
  %i.i = getelementptr i8, ptr %.049.val69, i64 8
  %.049.val = load i8, ptr %i.i, align 1, !tbaa !794
  %i.j = zext i8 %.049.val to i64
  %.049.val58 = load ptr, ptr %.049.val69, align 8, !tbaa !2636
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %._crit_edge
  %.147 = phi i64 [ %i.j, %._crit_edge ], [ %.147.be, %.backedge ] ; 2 uses
  %.1 = phi ptr [ %.049.val58, %._crit_edge ], [ %.1.be, %.backedge ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.1, i64 256
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.147
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2636 ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 11
  %.val61 = load i8, ptr %i.n, align 1, !tbaa !794 ; 2 uses
  %.not.i70 = icmp eq i8 %.val61, 0
  br i1 %.not.i70, label %.lr.ph11, label %bb.e

.lr.ph11:                                         ; preds = %bb.d, %.lr.ph11
  %.15010 = phi ptr [ %.150.val68, %.lr.ph11 ], [ %i.m, %bb.d ]
  %i.o = getelementptr i8, ptr %.15010, i64 256
  %.150.val68 = load ptr, ptr %i.o, align 8, !tbaa !2636 ; 5 uses
  %i.p = getelementptr i8, ptr %.150.val68, i64 11
  %.150.val60 = load i8, ptr %i.p, align 1, !tbaa !794 ; 2 uses
  %.not.i71 = icmp eq i8 %.150.val60, 0
  br i1 %.not.i71, label %.lr.ph11, label %._crit_edge12, !llvm.loop !20052

._crit_edge12:                                    ; preds = %.lr.ph11
  %i.q = getelementptr i8, ptr %.150.val68, i64 8
  %.150.val = load i8, ptr %i.q, align 1, !tbaa !794
  %i.r = zext i8 %.150.val to i64
  %.150.val57 = load ptr, ptr %.150.val68, align 8, !tbaa !2636
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge12, %bb.d
  %.251.val = phi i8 [ %.150.val60, %._crit_edge12 ], [ %.val61, %bb.d ]
  %.251 = phi ptr [ %.150.val68, %._crit_edge12 ], [ %i.m, %bb.d ]
  %.248 = phi i64 [ %i.r, %._crit_edge12 ], [ %.147, %bb.d ] ; 2 uses
  %.2 = phi ptr [ %.150.val57, %._crit_edge12 ], [ %.1, %bb.d ] ; 3 uses
  %i.s = zext i8 %.251.val to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 16
  tail call void @_ZdlPvm(ptr noundef nonnull %.251, i64 noundef %i.u) #36
  %i.v = getelementptr i8, ptr %.2, i64 10
  %.2.val = load i8, ptr %i.v, align 1, !tbaa !794
  %i.w = zext i8 %.2.val to i64
  %.not.not = icmp samesign ult i64 %.248, %i.w
  br i1 %.not.not, label %.backedge, label %.preheader2

.backedge:                                        ; preds = %bb.e, %bb.g
  %.147.be.in = phi i64 [ %.248, %bb.e ], [ %i.aa, %bb.g ]
  %.1.be = phi ptr [ %.2, %bb.e ], [ %.3.val56, %bb.g ]
  %.147.be = add nuw nsw i64 %.147.be.in, 1
  br label %bb.d

.preheader2:                                      ; preds = %bb.e, %bb.f
  %.3 = phi ptr [ %.3.val56, %bb.f ], [ %.2, %bb.e ] ; 3 uses
  %i.x = getelementptr i8, ptr %.3, i64 8
  %.3.val = load i8, ptr %i.x, align 1, !tbaa !794 ; 2 uses
  %.3.val56 = load ptr, ptr %.3, align 8, !tbaa !2636 ; 4 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.3, i64 noundef 504) #36
  %i.y = icmp eq ptr %.3.val56, %.val59
  br i1 %i.y, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.preheader2
  %i.z = getelementptr i8, ptr %.3.val56, i64 10
  %.val = load i8, ptr %i.z, align 1, !tbaa !794
  %.not = icmp ult i8 %.3.val, %.val
  br i1 %.not, label %bb.g, label %.preheader2, !llvm.loop !20053

bb.g:                                             ; preds = %bb.f
  %i.aa = zext i8 %.3.val to i64
  br label %.backedge

.loopexit.sink.split:                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ %i.d, %bb.b ], [ 504, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef %.sink) #36
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader2, %.loopexit.sink.split
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE23rebalance_right_to_leftEhPS7_PSaISt4pairIKS5_iEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #27 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 10         ; 6 uses
  %.val48 = load i8, ptr %i.a, align 1, !tbaa !794
  %i.b = zext i8 %.val48 to i64                   ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val50 = load i8, ptr %i.c, align 1, !tbaa !794
  %i.d = zext i8 %.val50 to i64                   ; 2 uses
  %.val52 = load ptr, ptr %0, align 8, !tbaa !2636
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.b ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val52, i64 12 ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.d
  %i.i = load <2 x i32>, ptr %i.h, align 4, !tbaa !783
  store <2 x i32> %i.i, ptr %i.f, align 4, !tbaa !783
  %i.j = zext i8 %1 to i32                        ; 3 uses
  %i.k = add nsw i32 %i.j, -1                     ; 3 uses
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = getelementptr i8, ptr %2, i64 12         ; 13 uses
  %.idx.i = shl nsw i64 %i.l, 3
  %i.n = getelementptr i8, ptr %i.m, i64 %.idx.i  ; 2 uses
  %.not1.i = icmp eq i32 %i.k, 0
  br i1 %.not1.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.o = zext i8 %1 to i64                        ; 2 uses
  %i.p = add nuw nsw i64 %i.o, 2305843009213693950
  %i.q = and i64 %i.p, 2305843009213693951        ; 2 uses
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.q, 29
  br i1 %min.iters.check, label %.lr.ph.i.preheader54, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.s = shl nuw nsw i64 %i.b, 3                  ; 3 uses
  %i.t = getelementptr i8, ptr %0, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 20
  %i.v = shl nuw nsw i64 %i.o, 3                  ; 2 uses
  %i.w = add nuw nsw i64 %i.s, %i.v               ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %i.z = getelementptr i8, ptr %2, i64 %i.v
  %3 = getelementptr i8, ptr %0, i64 %i.s
  %4 = getelementptr i8, ptr %3, i64 24
  %5 = getelementptr i8, ptr %0, i64 %i.w
  %i.aa = getelementptr i8, ptr %5, i64 12
  %i.ab = getelementptr i8, ptr %2, i64 16
  %bound0 = icmp ult ptr %i.u, %i.z
  %bound1 = icmp ult ptr %i.m, %i.y
  %found.conflict = and i1 %bound0, %bound1
  %bound018 = icmp ult ptr %4, %i.n
  %bound119 = icmp ult ptr %i.ab, %i.aa
  %found.conflict20 = and i1 %bound018, %bound119
  %conflict.rdx = or i1 %found.conflict, %found.conflict20
  br i1 %conflict.rdx, label %.lr.ph.i.preheader54, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.r, 4611686018427387900      ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.f, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.m, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 3 uses
  %i.ag = or disjoint i64 %i.af, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.af
  %next.gep21 = getelementptr i8, ptr %i.f, i64 %i.ag
  %next.gep22 = getelementptr i8, ptr %i.m, i64 %i.af
  %next.gep23 = getelementptr i8, ptr %i.m, i64 %i.ag
  %i.ah = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %next.gep21, i64 8
  %wide.vec = load <4 x i32>, ptr %next.gep22, align 4, !tbaa !783
  %wide.vec25 = load <4 x i32>, ptr %next.gep23, align 4, !tbaa !783
  store <4 x i32> %wide.vec, ptr %i.ah, align 4, !tbaa !783
  store <4 x i32> %wide.vec25, ptr %i.ai, align 4, !tbaa !783
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !20054

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit, label %.lr.ph.i.preheader54

.lr.ph.i.preheader54:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.03.i.pn.ph = phi ptr [ %i.f, %vector.memcheck ], [ %i.f, %.lr.ph.i.preheader ], [ %i.ad, %middle.block ]
  %.0122.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader54, %.lr.ph.i
  %.03.i.pn = phi ptr [ %.03.i, %.lr.ph.i ], [ %.03.i.pn.ph, %.lr.ph.i.preheader54 ]
  %.0122.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.0122.i.ph, %.lr.ph.i.preheader54 ] ; 2 uses
  %.03.i = getelementptr inbounds nuw i8, ptr %.03.i.pn, i64 8 ; 2 uses
  %i.ak = load <2 x i32>, ptr %.0122.i, align 4, !tbaa !783
  store <2 x i32> %i.ak, ptr %.03.i, align 4, !tbaa !783
  %i.al = getelementptr inbounds nuw i8, ptr %.0122.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.al, %i.n
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit, label %.lr.ph.i, !llvm.loop !20055

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.val49.pre = load i8, ptr %i.c, align 8, !tbaa !794
  %.pre = zext i8 %.val49.pre to i64
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit ], [ %i.d, %bb.a ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.pre-phi
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.ao = load <2 x i32>, ptr %i.an, align 4, !tbaa !783
  store <2 x i32> %i.ao, ptr %i.am, align 4, !tbaa !783
  %i.ap = getelementptr i8, ptr %2, i64 10        ; 5 uses
  %.val54 = load i8, ptr %i.ap, align 1, !tbaa !794 ; 3 uses
  %i.aq = zext i8 %.val54 to i32
  %i.ar = sub nsw i32 %i.aq, %i.j
  %i.as = sext i32 %i.ar to i64
  %i.at = zext i8 %1 to i64                       ; 4 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.at ; 5 uses
  %.idx.i57 = shl nuw nsw i64 %i.as, 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx.i57
  %.not1.i58 = icmp eq i8 %.val54, %1
  br i1 %.not1.i58, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit66, label %.lr.ph.i60.preheader

.lr.ph.i60.preheader:                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit
  %i.aw = zext i8 %.val54 to i64
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = shl nuw nsw i64 %i.at, 3
  %i.az = add nsw i64 %i.ax, -8
  %i.ba = sub nsw i64 %i.az, %i.ay                ; 2 uses
  %i.bb = lshr exact i64 %i.ba, 3
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check31 = icmp ult i64 %i.ba, 24
  br i1 %min.iters.check31, label %.lr.ph.i60.preheader53, label %vector.ph32

vector.ph32:                                      ; preds = %.lr.ph.i60.preheader
  %n.vec33 = and i64 %i.bc, 4611686018427387900   ; 3 uses
  %i.bd = shl i64 %n.vec33, 3                     ; 2 uses
  %i.be = getelementptr i8, ptr %i.m, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.au, i64 %i.bd
  br label %vector.body34

vector.body34:                                    ; preds = %vector.body34, %vector.ph32
  %index35 = phi i64 [ 0, %vector.ph32 ], [ %index.next48, %vector.body34 ] ; 2 uses
  %i.bg = shl i64 %index35, 3                     ; 3 uses
  %i.bh = or disjoint i64 %i.bg, 16               ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.m, i64 %i.bg
  %next.gep37 = getelementptr i8, ptr %i.m, i64 %i.bh
  %next.gep38 = getelementptr i8, ptr %i.au, i64 %i.bg
  %next.gep39 = getelementptr i8, ptr %i.au, i64 %i.bh
  %wide.vec40 = load <4 x i32>, ptr %next.gep38, align 4, !tbaa !783
  %wide.vec43 = load <4 x i32>, ptr %next.gep39, align 4, !tbaa !783
  store <4 x i32> %wide.vec40, ptr %next.gep36, align 4, !tbaa !783
  store <4 x i32> %wide.vec43, ptr %next.gep37, align 4, !tbaa !783
  %index.next48 = add nuw i64 %index35, 4         ; 2 uses
  %i.bi = icmp eq i64 %index.next48, %n.vec33
  br i1 %i.bi, label %middle.block49, label %vector.body34, !llvm.loop !20056

middle.block49:                                   ; preds = %vector.body34
  %cmp.n50 = icmp eq i64 %i.bc, %n.vec33
  br i1 %cmp.n50, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit66, label %.lr.ph.i60.preheader53

.lr.ph.i60.preheader53:                           ; preds = %.lr.ph.i60.preheader, %middle.block49
  %.03.i61.ph = phi ptr [ %i.m, %.lr.ph.i60.preheader ], [ %i.be, %middle.block49 ]
  %.0122.i62.ph = phi ptr [ %i.au, %.lr.ph.i60.preheader ], [ %i.bf, %middle.block49 ]
  br label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %.lr.ph.i60.preheader53, %.lr.ph.i60
  %.03.i61 = phi ptr [ %i.bl, %.lr.ph.i60 ], [ %.03.i61.ph, %.lr.ph.i60.preheader53 ] ; 2 uses
  %.0122.i62 = phi ptr [ %i.bk, %.lr.ph.i60 ], [ %.0122.i62.ph, %.lr.ph.i60.preheader53 ] ; 2 uses
  %i.bj = load <2 x i32>, ptr %.0122.i62, align 4, !tbaa !783
  store <2 x i32> %i.bj, ptr %.03.i61, align 4, !tbaa !783
  %i.bk = getelementptr inbounds nuw i8, ptr %.0122.i62, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.03.i61, i64 8
  %.not.i65 = icmp eq ptr %i.bk, %i.av
  br i1 %.not.i65, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit66, label %.lr.ph.i60, !llvm.loop !20057

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit66: ; preds = %.lr.ph.i60, %middle.block49, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit
  %i.bm = getelementptr i8, ptr %0, i64 11
  %.val53 = load i8, ptr %i.bm, align 1, !tbaa !794
  %.not.i67 = icmp eq i8 %.val53, 0
  br i1 %.not.i67, label %.preheader1, label %.loopexit

.preheader1:                                      ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit66
  %.not7 = icmp eq i8 %1, 0
  br i1 %.not7, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader1
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %xtraiter = and i64 %i.at, 1
  %i.bp = icmp eq i32 %i.k, 0
  br i1 %i.bp, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.at, 254
  br label %bb.b

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod55 = trunc i8 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod55)
  %.val46.epil = load i8, ptr %i.a, align 2, !tbaa !794
  %i.bq = trunc i64 %indvars.iv.epil.init to i8
  %i.br = add i8 %i.bq, 1
  %i.bs = add i8 %.val46.epil, %i.br              ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.epil.init
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !2636 ; 3 uses
  %i.bv = zext i8 %i.bs to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bv
  store ptr %i.bu, ptr %i.bw, align 8, !tbaa !2636
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i8 %i.bs, ptr %i.bx, align 1, !tbaa !794
  store ptr %0, ptr %i.bu, align 8, !tbaa !2636
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader1
  %.val453 = load i8, ptr %i.ap, align 1, !tbaa !794
  %.not4 = icmp ult i8 %.val453, %1
  br i1 %.not4, label %.loopexit, label %.lr.ph6

.lr.ph6:                                          ; preds = %.preheader
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %.val46 = load i8, ptr %i.a, align 2, !tbaa !794
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bz = trunc nuw i64 %indvars.iv.next to i8
  %i.ca = add i8 %.val46, %i.bz                   ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !2636 ; 3 uses
  %i.cd = zext i8 %i.ca to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.cd
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !2636
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i8 %i.ca, ptr %i.cf, align 1, !tbaa !794
  store ptr %0, ptr %i.cc, align 8, !tbaa !2636
  %.val46.1 = load i8, ptr %i.a, align 2, !tbaa !794
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.cg = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.ch = add i8 %.val46.1, %i.cg                 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !2636 ; 3 uses
  %i.ck = zext i8 %i.ch to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.ck
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !2636
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i8 %i.ch, ptr %i.cm, align 1, !tbaa !794
  store ptr %0, ptr %i.cj, align 8, !tbaa !2636
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !20058

bb.c:                                             ; preds = %.lr.ph6, %bb.c
  %.05 = phi i8 [ 0, %.lr.ph6 ], [ %i.cu, %bb.c ] ; 4 uses
  %i.cn = add i8 %.05, %1
  %i.co = zext i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !2636 ; 3 uses
  %i.cr = zext i8 %.05 to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cr
  store ptr %i.cq, ptr %i.cs, align 8, !tbaa !2636
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i8 %.05, ptr %i.ct, align 1, !tbaa !794
  store ptr %2, ptr %i.cq, align 8, !tbaa !2636
  %i.cu = add i8 %.05, 1                          ; 2 uses
  %i.cv = zext i8 %i.cu to i32
  %.val45 = load i8, ptr %i.ap, align 1, !tbaa !794
  %i.cw = zext i8 %.val45 to i32
  %i.cx = sub nsw i32 %i.cw, %i.j
  %.not = icmp slt i32 %i.cx, %i.cv
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !20059

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit66
  %.val44 = load i8, ptr %i.a, align 2, !tbaa !794
  %i.cy = add i8 %.val44, %1
  store i8 %i.cy, ptr %i.a, align 2, !tbaa !794
  %.val = load i8, ptr %i.ap, align 1, !tbaa !794
  %i.cz = sub i8 %.val, %1
  store i8 %i.cz, ptr %i.ap, align 1, !tbaa !794
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE23rebalance_left_to_rightEhPS7_PSaISt4pairIKS5_iEE(ptr nofree noundef nonnull align 1 captures(address) dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #27 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 10         ; 4 uses
  %.val58 = load i8, ptr %i.a, align 1, !tbaa !794 ; 2 uses
  %i.b = zext i8 %1 to i32                        ; 2 uses
  %i.c = getelementptr i8, ptr %2, i64 12         ; 10 uses
  %.not1.i = icmp eq i8 %.val58, 0
  br i1 %.not1.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.d = zext i8 %.val58 to i64                   ; 2 uses
  %i.e = zext i8 %1 to i64
  %.idx.i = shl nuw nsw i64 %i.d, 3               ; 2 uses
  %i.f = getelementptr [8 x i8], ptr %i.c, i64 %i.e
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %i.d ; 2 uses
  %i.h = getelementptr i8, ptr %i.c, i64 %.idx.i  ; 2 uses
  %i.i = add nsw i64 %.idx.i, -8                  ; 2 uses
  %i.j = lshr exact i64 %i.i, 3
  %i.k = add nuw nsw i64 %i.j, 1
  %xtraiter = and i64 %i.k, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %.03.i.prol = phi ptr [ %i.l, %.lr.ph.i.prol ], [ %i.g, %.lr.ph.preheader.i ]
  %.0142.i.prol = phi ptr [ %i.m, %.lr.ph.i.prol ], [ %i.h, %.lr.ph.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.l = getelementptr inbounds i8, ptr %.03.i.prol, i64 -8 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.0142.i.prol, i64 -8 ; 3 uses
  %i.n = load <2 x i32>, ptr %i.m, align 4, !tbaa !783
  store <2 x i32> %i.n, ptr %i.l, align 4, !tbaa !783
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !20060

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.03.i.unr = phi ptr [ %i.g, %.lr.ph.preheader.i ], [ %i.l, %.lr.ph.i.prol ]
  %.0142.i.unr = phi ptr [ %i.h, %.lr.ph.preheader.i ], [ %i.m, %.lr.ph.i.prol ]
  %i.o = icmp ult i64 %i.i, 56
  br i1 %i.o, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.03.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %.03.i.unr, %.lr.ph.i.prol.loopexit ] ; 8 uses
  %.0142.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.0142.i.unr, %.lr.ph.i.prol.loopexit ] ; 8 uses
  %i.p = getelementptr inbounds i8, ptr %.03.i, i64 -8
  %i.q = getelementptr inbounds i8, ptr %.0142.i, i64 -8
  %i.r = load <2 x i32>, ptr %i.q, align 4, !tbaa !783
  store <2 x i32> %i.r, ptr %i.p, align 4, !tbaa !783
  %i.s = getelementptr inbounds i8, ptr %.03.i, i64 -16
  %i.t = getelementptr inbounds i8, ptr %.0142.i, i64 -16
  %i.u = load <2 x i32>, ptr %i.t, align 4, !tbaa !783
  store <2 x i32> %i.u, ptr %i.s, align 4, !tbaa !783
  %i.v = getelementptr inbounds i8, ptr %.03.i, i64 -24
  %i.w = getelementptr inbounds i8, ptr %.0142.i, i64 -24
  %i.x = load <2 x i32>, ptr %i.w, align 4, !tbaa !783
  store <2 x i32> %i.x, ptr %i.v, align 4, !tbaa !783
  %i.y = getelementptr inbounds i8, ptr %.03.i, i64 -32
  %i.z = getelementptr inbounds i8, ptr %.0142.i, i64 -32
  %i.aa = load <2 x i32>, ptr %i.z, align 4, !tbaa !783
  store <2 x i32> %i.aa, ptr %i.y, align 4, !tbaa !783
  %i.ab = getelementptr inbounds i8, ptr %.03.i, i64 -40
  %i.ac = getelementptr inbounds i8, ptr %.0142.i, i64 -40
  %i.ad = load <2 x i32>, ptr %i.ac, align 4, !tbaa !783
  store <2 x i32> %i.ad, ptr %i.ab, align 4, !tbaa !783
  %i.ae = getelementptr inbounds i8, ptr %.03.i, i64 -48
  %i.af = getelementptr inbounds i8, ptr %.0142.i, i64 -48
  %i.ag = load <2 x i32>, ptr %i.af, align 4, !tbaa !783
  store <2 x i32> %i.ag, ptr %i.ae, align 4, !tbaa !783
  %i.ah = getelementptr inbounds i8, ptr %.03.i, i64 -56
  %i.ai = getelementptr inbounds i8, ptr %.0142.i, i64 -56
  %i.aj = load <2 x i32>, ptr %i.ai, align 4, !tbaa !783
  store <2 x i32> %i.aj, ptr %i.ah, align 4, !tbaa !783
  %i.ak = getelementptr inbounds i8, ptr %.03.i, i64 -64 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.0142.i, i64 -64 ; 3 uses
  %i.am = load <2 x i32>, ptr %i.al, align 4, !tbaa !783
  store <2 x i32> %i.am, ptr %i.ak, align 4, !tbaa !783
  %.not.i.7 = icmp eq ptr %i.al, %i.c
  br i1 %.not.i.7, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit, label %.lr.ph.i, !llvm.loop !702

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %i.an = add nsw i32 %i.b, -1                    ; 3 uses
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.val54 = load i8, ptr %i.ap, align 1, !tbaa !794
  %i.aq = zext i8 %.val54 to i64
  %.val56 = load ptr, ptr %0, align 8, !tbaa !2636
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ao
  %i.as = getelementptr inbounds nuw i8, ptr %.val56, i64 12 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.aq
  %i.au = load <2 x i32>, ptr %i.at, align 4, !tbaa !783
  store <2 x i32> %i.au, ptr %i.ar, align 4, !tbaa !783
  %i.av = getelementptr i8, ptr %0, i64 10        ; 7 uses
  %.val52 = load i8, ptr %i.av, align 2, !tbaa !794 ; 2 uses
  %i.aw = zext i8 %.val52 to i32                  ; 2 uses
  %i.ax = sub nsw i32 %i.aw, %i.an
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr i8, ptr %0, i64 12        ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %i.ay ; 7 uses
  %.idx.i60 = shl nsw i64 %i.ao, 3
  %i.bb = getelementptr i8, ptr %i.ba, i64 %.idx.i60 ; 2 uses
  %.not1.i61 = icmp eq i32 %i.an, 0
  br i1 %.not1.i61, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit, label %.lr.ph.i63.preheader

.lr.ph.i63.preheader:                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit
  %i.bc = zext i8 %1 to i64                       ; 2 uses
  %i.bd = add nuw nsw i64 %i.bc, 2305843009213693950
  %i.be = and i64 %i.bd, 2305843009213693951      ; 2 uses
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.be, 27
  br i1 %min.iters.check, label %.lr.ph.i63.preheader32, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i63.preheader
  %i.bg = shl nuw nsw i64 %i.bc, 3                ; 3 uses
  %i.bh = getelementptr i8, ptr %2, i64 %i.bg
  %i.bi = zext i8 %.val52 to i64
  %i.bj = shl nuw nsw i64 %i.bi, 3                ; 2 uses
  %i.bk = getelementptr i8, ptr %0, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  %3 = getelementptr i8, ptr %2, i64 16
  %4 = getelementptr i8, ptr %2, i64 %i.bg
  %5 = getelementptr i8, ptr %4, i64 4
  %6 = add nuw nsw i64 %i.bj, 24
  %7 = sub nsw i64 %6, %i.bg
  %i.bm = getelementptr i8, ptr %0, i64 %7
  %bound0 = icmp ult ptr %i.c, %i.bl
  %bound1 = icmp ult ptr %i.ba, %i.bh
  %found.conflict = and i1 %bound0, %bound1
  %bound020 = icmp ult ptr %3, %i.bb
  %bound121 = icmp ult ptr %i.bm, %5
  %found.conflict22 = and i1 %bound020, %bound121
  %conflict.rdx = or i1 %found.conflict, %found.conflict22
  br i1 %conflict.rdx, label %.lr.ph.i63.preheader32, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bf, 4611686018427387900     ; 3 uses
  %i.bn = shl i64 %n.vec, 3                       ; 2 uses
  %i.bo = getelementptr i8, ptr %i.c, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.ba, i64 %i.bn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = shl i64 %index, 3                       ; 3 uses
  %i.br = or disjoint i64 %i.bq, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.bq
  %next.gep23 = getelementptr i8, ptr %i.c, i64 %i.br
  %next.gep24 = getelementptr i8, ptr %i.ba, i64 %i.bq
  %next.gep25 = getelementptr i8, ptr %i.ba, i64 %i.br
  %wide.vec = load <4 x i32>, ptr %next.gep24, align 4, !tbaa !783
  %wide.vec27 = load <4 x i32>, ptr %next.gep25, align 4, !tbaa !783
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !783
  store <4 x i32> %wide.vec27, ptr %next.gep23, align 4, !tbaa !783
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !20061

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit, label %.lr.ph.i63.preheader32

.lr.ph.i63.preheader32:                           ; preds = %vector.memcheck, %.lr.ph.i63.preheader, %middle.block
  %.03.i64.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i63.preheader ], [ %i.bo, %middle.block ]
  %.0122.i.ph = phi ptr [ %i.ba, %vector.memcheck ], [ %i.ba, %.lr.ph.i63.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %.lr.ph.i63.preheader32, %.lr.ph.i63
  %.03.i64 = phi ptr [ %i.bv, %.lr.ph.i63 ], [ %.03.i64.ph, %.lr.ph.i63.preheader32 ] ; 2 uses
  %.0122.i = phi ptr [ %i.bu, %.lr.ph.i63 ], [ %.0122.i.ph, %.lr.ph.i63.preheader32 ] ; 2 uses
  %i.bt = load <2 x i32>, ptr %.0122.i, align 4, !tbaa !783
  store <2 x i32> %i.bt, ptr %.03.i64, align 4, !tbaa !783
  %i.bu = getelementptr inbounds nuw i8, ptr %.0122.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.03.i64, i64 8
  %.not.i65 = icmp eq ptr %i.bu, %i.bb
  br i1 %.not.i65, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit, label %.lr.ph.i63, !llvm.loop !20062

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit: ; preds = %.lr.ph.i63, %middle.block
  %.val51.pre = load i8, ptr %i.av, align 2, !tbaa !794
  %.pre = zext i8 %.val51.pre to i32
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit
  %.pre-phi = phi i32 [ %.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit ], [ %i.aw, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit ]
  %.val53 = load i8, ptr %i.ap, align 8, !tbaa !794
  %i.bw = zext i8 %.val53 to i64
  %i.bx = sub nsw i32 %.pre-phi, %i.b
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.bw
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.by
  %i.cb = load <2 x i32>, ptr %i.ca, align 4, !tbaa !783
  store <2 x i32> %i.cb, ptr %i.bz, align 4, !tbaa !783
  %i.cc = getelementptr i8, ptr %0, i64 11
  %.val57 = load i8, ptr %i.cc, align 1, !tbaa !794
  %.not.i68 = icmp eq i8 %.val57, 0
  br i1 %.not.i68, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit
  %.val50 = load i8, ptr %i.a, align 1, !tbaa !794 ; 5 uses
  %i.cd = add i8 %.val50, 1                       ; 2 uses
  %.not1 = icmp eq i8 %i.cd, 0
  br i1 %.not1, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 6 uses
  %i.cf = zext i8 %i.cd to i64                    ; 2 uses
  %i.cg = and i8 %.val50, 1
  %lcmp.mod34.not.not = icmp eq i8 %i.cg, 0
  br i1 %lcmp.mod34.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.ch = add i8 %.val50, %1                      ; 2 uses
  %i.ci = zext i8 %.val50 to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !2636 ; 3 uses
  %i.cl = zext i8 %i.ch to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cl
  store ptr %i.ck, ptr %i.cm, align 8, !tbaa !2636
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i8 %i.ch, ptr %i.cn, align 1, !tbaa !794
  store ptr %2, ptr %i.ck, align 8, !tbaa !2636
  %indvars.iv.next.prol = add nsw i64 %i.cf, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.cf, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.co = icmp eq i8 %.val50, 0
  br i1 %i.co, label %.preheader, label %.lr.ph.new

.preheader:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %bb.b
  %.not463 = icmp eq i8 %1, 0
  br i1 %.not463, label %.loopexit, label %.lr.ph5

.lr.ph5:                                          ; preds = %.preheader
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.cr = add i8 %1, 1                            ; 2 uses
  %umax = tail call i8 @llvm.umax.i8(i8 %i.cr, i8 2)
  %wide.trip.count = zext i8 %umax to i64
  %i.cs = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter36 = and i64 %i.cs, 1
  %i.ct = icmp ult i8 %i.cr, 3
  br i1 %i.ct, label %.epil.preheader, label %.lr.ph5.new

.lr.ph5.new:                                      ; preds = %.lr.ph5
  %unroll_iter = and i64 %i.cs, -2
  %invariant.op = sub i8 1, %1
  br label %bb.c

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.cu = trunc nuw i64 %indvars.iv to i8
  %i.cv = add i8 %i.cu, -1                        ; 2 uses
  %i.cw = add i8 %i.cv, %1                        ; 2 uses
  %i.cx = zext i8 %i.cv to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !2636 ; 3 uses
  %i.da = zext i8 %i.cw to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.da
  store ptr %i.cz, ptr %i.db, align 8, !tbaa !2636
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i8 %i.cw, ptr %i.dc, align 1, !tbaa !794
  store ptr %2, ptr %i.cz, align 8, !tbaa !2636
  %i.dd = trunc i64 %indvars.iv to i8
  %i.de = add i8 %i.dd, -2                        ; 2 uses
  %i.df = add i8 %i.de, %1                        ; 2 uses
  %i.dg = zext i8 %i.de to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !2636 ; 3 uses
  %i.dj = zext i8 %i.df to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.dj
  store ptr %i.di, ptr %i.dk, align 8, !tbaa !2636
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i8 %i.df, ptr %i.dl, align 1, !tbaa !794
  store ptr %2, ptr %i.di, align 8, !tbaa !2636
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.dm = and i64 %indvars.iv.next.1, 255
  %.not.1 = icmp eq i64 %i.dm, 0
  br i1 %.not.1, label %.preheader, label %.lr.ph.new, !llvm.loop !20063

bb.c:                                             ; preds = %bb.c, %.lr.ph5.new
  %indvars.iv7 = phi i64 [ 1, %.lr.ph5.new ], [ %indvars.iv.next8.1, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph5.new ], [ %niter.next.1, %bb.c ]
  %i.dn = add nsw i64 %indvars.iv7, -1            ; 2 uses
  %.val49 = load i8, ptr %i.av, align 2, !tbaa !794
  %i.do = trunc nuw i64 %indvars.iv7 to i8
  %i.dp = sub i8 %i.do, %1
  %i.dq = add i8 %i.dp, %.val49
  %i.dr = zext i8 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !2636 ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.dn
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !2636
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dw = trunc nuw i64 %i.dn to i8
  store i8 %i.dw, ptr %i.dv, align 1, !tbaa !794
  store ptr %2, ptr %i.dt, align 8, !tbaa !2636
  %.val49.1 = load i8, ptr %i.av, align 2, !tbaa !794
  %i.dx = trunc i64 %indvars.iv7 to i8
  %.reass = add i8 %i.dx, %invariant.op
  %i.dy = add i8 %.reass, %.val49.1
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !2636 ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv7
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !2636
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ee = trunc nuw i64 %indvars.iv7 to i8
  store i8 %i.ee, ptr %i.ed, align 1, !tbaa !794
  store ptr %2, ptr %i.eb, align 8, !tbaa !2636
  %indvars.iv.next8.1 = add nuw nsw i64 %indvars.iv7, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !20064

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod37.not = icmp eq i64 %xtraiter36, 0
  br i1 %lcmp.mod37.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph5
  %indvars.iv7.epil.init = phi i64 [ 1, %.lr.ph5 ], [ %indvars.iv.next8.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod38 = trunc i64 %i.cs to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.ef = add nsw i64 %indvars.iv7.epil.init, -1  ; 2 uses
  %.val49.epil = load i8, ptr %i.av, align 2, !tbaa !794
  %i.eg = trunc nuw i64 %indvars.iv7.epil.init to i8
  %i.eh = sub i8 %i.eg, %1
  %i.ei = add i8 %i.eh, %.val49.epil
  %i.ej = zext i8 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.ej
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !2636 ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.ef
  store ptr %i.el, ptr %i.em, align 8, !tbaa !2636
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.eo = trunc nuw i64 %i.ef to i8
  store i8 %i.eo, ptr %i.en, align 1, !tbaa !794
  store ptr %2, ptr %i.el, align 8, !tbaa !2636
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit
  %.val47 = load i8, ptr %i.av, align 2, !tbaa !794
  %i.ep = sub i8 %.val47, %1
  store i8 %i.ep, ptr %i.av, align 2, !tbaa !794
  %.val = load i8, ptr %i.a, align 1, !tbaa !794
  %i.eq = add i8 %.val, %1
  store i8 %i.eq, ptr %i.a, align 1, !tbaa !794
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE5splitEiPS7_PSaISt4pairIKS5_iEE(ptr nofree noundef nonnull align 1 captures(address) dereferenceable(1) %0, i32 noundef %1, ptr noundef initializes((10, 11)) %2) unnamed_addr #27 align 2 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 30, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 10
  %.val31 = load i8, ptr %i.a, align 1, !tbaa !794
  %i.b = add i8 %.val31, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 10
  %.val39 = load i8, ptr %i.c, align 1, !tbaa !794
  %i.d = lshr i8 %.val39, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.b, %bb.b ], [ %i.d, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.sink, ptr %i.e, align 1, !tbaa !794
  %i.f = getelementptr i8, ptr %0, i64 10         ; 5 uses
  %.val30 = load i8, ptr %i.f, align 1, !tbaa !794
  %i.g = getelementptr i8, ptr %2, i64 10         ; 2 uses
  %i.h = sub i8 %.val30, %.sink                   ; 3 uses
  store i8 %i.h, ptr %i.f, align 1, !tbaa !794
  %.val37 = load i8, ptr %i.g, align 1, !tbaa !794 ; 2 uses
  %i.i = zext i8 %.val37 to i64
  %i.j = zext i8 %i.h to i64                      ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 12         ; 2 uses
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.j ; 7 uses
  %.idx.i = shl nuw nsw i64 %i.i, 3               ; 5 uses
  %i.m = getelementptr i8, ptr %i.l, i64 %.idx.i  ; 2 uses
  %.not1.i = icmp eq i8 %.val37, 0
  br i1 %.not1.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.n = getelementptr i8, ptr %2, i64 12         ; 6 uses
  %i.o = add nsw i64 %.idx.i, -8                  ; 2 uses
  %i.p = lshr exact i64 %i.o, 3
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.o, 200
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.r = getelementptr i8, ptr %2, i64 %.idx.i
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = shl nuw nsw i64 %i.j, 3                  ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 %.idx.i
  %i.v = getelementptr i8, ptr %i.u, i64 %i.t
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %3 = getelementptr i8, ptr %2, i64 16
  %4 = getelementptr i8, ptr %2, i64 %.idx.i
  %5 = getelementptr i8, ptr %4, i64 12
  %i.x = getelementptr i8, ptr %0, i64 %i.t
  %i.y = getelementptr i8, ptr %i.x, i64 16
  %bound0 = icmp ult ptr %i.n, %i.w
  %bound1 = icmp ult ptr %i.l, %i.s
  %found.conflict = and i1 %bound0, %bound1
  %bound015 = icmp ult ptr %3, %i.m
  %bound116 = icmp ult ptr %i.y, %5
  %found.conflict17 = and i1 %bound015, %bound116
  %conflict.rdx = or i1 %found.conflict, %found.conflict17
  br i1 %conflict.rdx, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.q, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.n, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.l, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 3 uses
  %i.ad = or disjoint i64 %i.ac, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.ac
  %next.gep18 = getelementptr i8, ptr %i.n, i64 %i.ad
  %next.gep19 = getelementptr i8, ptr %i.l, i64 %i.ac
  %next.gep20 = getelementptr i8, ptr %i.l, i64 %i.ad
  %wide.vec = load <4 x i32>, ptr %next.gep19, align 4, !tbaa !783
  %wide.vec22 = load <4 x i32>, ptr %next.gep20, align 4, !tbaa !783
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !783
  store <4 x i32> %wide.vec22, ptr %next.gep18, align 4, !tbaa !783
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !20065

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %.03.i.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.preheader.i ], [ %i.aa, %middle.block ]
  %.0122.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.preheader.i ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.03.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %.03.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.0122.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %.0122.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.af = load <2 x i32>, ptr %.0122.i, align 4, !tbaa !783
  store <2 x i32> %i.af, ptr %.03.i, align 4, !tbaa !783
  %i.ag = getelementptr inbounds nuw i8, ptr %.0122.i, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.03.i, i64 8
  %.not.i = icmp eq ptr %i.ag, %i.m
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit, label %.lr.ph.i, !llvm.loop !20066

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.pre = load i8, ptr %i.f, align 1, !tbaa !794
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit, %bb.d
  %i.ai = phi i8 [ %.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit ], [ %i.h, %bb.d ]
  %i.aj = add i8 %i.ai, -1                        ; 2 uses
  store i8 %i.aj, ptr %i.f, align 1, !tbaa !794
  %.val35 = load ptr, ptr %0, align 8, !tbaa !2636 ; 5 uses
  %i.ak = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.val33 = load i8, ptr %i.ak, align 8, !tbaa !794 ; 4 uses
  %i.al = zext i8 %i.aj to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.al
  %i.an = zext i8 %.val33 to i32
  %i.ao = getelementptr i8, ptr %.val35, i64 10   ; 3 uses
  %.val21.i = load i8, ptr %i.ao, align 1, !tbaa !794 ; 3 uses
  %i.ap = icmp ult i8 %.val33, %.val21.i
  %i.aq = zext i8 %.val33 to i64                  ; 4 uses
  br i1 %i.ap, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.val35, i64 12
  %i.as = getelementptr [8 x i8], ptr %i.ar, i64 %i.aq ; 3 uses
  %narrow.i = sub nuw i8 %.val21.i, %.val33
  %i.at = zext i8 %narrow.i to i64                ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.at, 3            ; 2 uses
  %i.au = getelementptr i8, ptr %i.as, i64 8
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %i.at ; 2 uses
  %i.aw = getelementptr i8, ptr %i.as, i64 %.idx.i.i ; 2 uses
  %i.ax = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 3
  %i.az = add nuw nsw i64 %i.ay, 1
  %xtraiter = and i64 %i.az, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %.03.i.i.prol = phi ptr [ %i.ba, %.lr.ph.i.i.prol ], [ %i.av, %.lr.ph.preheader.i.i ]
  %.0142.i.i.prol = phi ptr [ %i.bb, %.lr.ph.i.i.prol ], [ %i.aw, %.lr.ph.preheader.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.ba = getelementptr inbounds i8, ptr %.03.i.i.prol, i64 -8 ; 3 uses
  %i.bb = getelementptr inbounds i8, ptr %.0142.i.i.prol, i64 -8 ; 3 uses
  %i.bc = load <2 x i32>, ptr %i.bb, align 4, !tbaa !783
  store <2 x i32> %i.bc, ptr %i.ba, align 4, !tbaa !783
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !20067

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.03.i.i.unr = phi ptr [ %i.av, %.lr.ph.preheader.i.i ], [ %i.ba, %.lr.ph.i.i.prol ]
  %.0142.i.i.unr = phi ptr [ %i.aw, %.lr.ph.preheader.i.i ], [ %i.bb, %.lr.ph.i.i.prol ]
  %i.bd = icmp ult i64 %i.ax, 56
  br i1 %i.bd, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.03.i.i = phi ptr [ %i.bz, %.lr.ph.i.i ], [ %.03.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 8 uses
  %.0142.i.i = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %.0142.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 8 uses
  %i.be = getelementptr inbounds i8, ptr %.03.i.i, i64 -8
  %i.bf = getelementptr inbounds i8, ptr %.0142.i.i, i64 -8
  %i.bg = load <2 x i32>, ptr %i.bf, align 4, !tbaa !783
  store <2 x i32> %i.bg, ptr %i.be, align 4, !tbaa !783
  %i.bh = getelementptr inbounds i8, ptr %.03.i.i, i64 -16
  %i.bi = getelementptr inbounds i8, ptr %.0142.i.i, i64 -16
  %i.bj = load <2 x i32>, ptr %i.bi, align 4, !tbaa !783
  store <2 x i32> %i.bj, ptr %i.bh, align 4, !tbaa !783
  %i.bk = getelementptr inbounds i8, ptr %.03.i.i, i64 -24
  %i.bl = getelementptr inbounds i8, ptr %.0142.i.i, i64 -24
  %i.bm = load <2 x i32>, ptr %i.bl, align 4, !tbaa !783
  store <2 x i32> %i.bm, ptr %i.bk, align 4, !tbaa !783
  %i.bn = getelementptr inbounds i8, ptr %.03.i.i, i64 -32
  %i.bo = getelementptr inbounds i8, ptr %.0142.i.i, i64 -32
  %i.bp = load <2 x i32>, ptr %i.bo, align 4, !tbaa !783
  store <2 x i32> %i.bp, ptr %i.bn, align 4, !tbaa !783
  %i.bq = getelementptr inbounds i8, ptr %.03.i.i, i64 -40
  %i.br = getelementptr inbounds i8, ptr %.0142.i.i, i64 -40
  %i.bs = load <2 x i32>, ptr %i.br, align 4, !tbaa !783
  store <2 x i32> %i.bs, ptr %i.bq, align 4, !tbaa !783
  %i.bt = getelementptr inbounds i8, ptr %.03.i.i, i64 -48
  %i.bu = getelementptr inbounds i8, ptr %.0142.i.i, i64 -48
  %i.bv = load <2 x i32>, ptr %i.bu, align 4, !tbaa !783
  store <2 x i32> %i.bv, ptr %i.bt, align 4, !tbaa !783
  %i.bw = getelementptr inbounds i8, ptr %.03.i.i, i64 -56
  %i.bx = getelementptr inbounds i8, ptr %.0142.i.i, i64 -56
  %i.by = load <2 x i32>, ptr %i.bx, align 4, !tbaa !783
  store <2 x i32> %i.by, ptr %i.bw, align 4, !tbaa !783
  %i.bz = getelementptr inbounds i8, ptr %.03.i.i, i64 -64 ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %.0142.i.i, i64 -64 ; 3 uses
  %i.cb = load <2 x i32>, ptr %i.ca, align 4, !tbaa !783
  store <2 x i32> %i.cb, ptr %i.bz, align 4, !tbaa !783
  %.not.i.i.7 = icmp eq ptr %i.ca, %i.as
  br i1 %.not.i.i.7, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !702

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.val19.pre.i = load i8, ptr %i.ao, align 1, !tbaa !794
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit
  %.val19.i = phi i8 [ %.val19.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit.i ], [ %.val21.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.val35, i64 12
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.aq
  %i.ce = load <2 x i32>, ptr %i.am, align 4, !tbaa !783
  store <2 x i32> %i.ce, ptr %i.cd, align 4, !tbaa !783
  %i.cf = add i8 %.val19.i, 1                     ; 3 uses
  store i8 %i.cf, ptr %i.ao, align 1, !tbaa !794
  %i.cg = getelementptr i8, ptr %.val35, i64 11
  %.val22.i = load i8, ptr %i.cg, align 1, !tbaa !794
  %.not.i25.i = icmp eq i8 %.val22.i, 0
  br i1 %.not.i25.i, label %bb.e, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE13emplace_valueIJPNS1_13map_slot_typeIS5_iEEEEEvhPSaISt4pairIKS5_iEEDpOT_.exit

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit.i
  %i.ch = zext i8 %i.cf to i32
  %i.ci = add nuw nsw i32 %i.an, 1                ; 2 uses
  %i.cj = icmp samesign ult i32 %i.ci, %i.ch
  br i1 %i.cj, label %.lr.ph.i41, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE13emplace_valueIJPNS1_13map_slot_typeIS5_iEEEEEvhPSaISt4pairIKS5_iEEDpOT_.exit

.lr.ph.i41:                                       ; preds = %bb.e
  %i.ck = getelementptr inbounds nuw i8, ptr %.val35, i64 256 ; 10 uses
  %i.cl = zext i8 %i.cf to i64                    ; 4 uses
  %i.cm = zext nneg i32 %i.ci to i64
  %i.cn = xor i64 %i.aq, -1
  %i.co = add nsw i64 %i.cn, %i.cl
  %i.cp = add nsw i64 %i.cl, -2
  %i.cq = sub nsw i64 %i.cp, %i.aq
  %xtraiter27 = and i64 %i.co, 3                  ; 2 uses
  %lcmp.mod28.not = icmp eq i64 %xtraiter27, 0
  br i1 %lcmp.mod28.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i41, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.cr, %.prol.preheader ], [ %i.cl, %.lr.ph.i41 ] ; 3 uses
  %prol.iter29 = phi i64 [ %prol.iter29.next, %.prol.preheader ], [ 0, %.lr.ph.i41 ]
  %i.cr = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !2636 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.prol
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !2636
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cw = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.cw, ptr %i.cv, align 1, !tbaa !794
  %prol.iter29.next = add i64 %prol.iter29, 1     ; 2 uses
  %prol.iter29.cmp.not = icmp eq i64 %prol.iter29.next, %xtraiter27
  br i1 %prol.iter29.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !20068

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i41
  %indvars.iv.unr = phi i64 [ %i.cl, %.lr.ph.i41 ], [ %i.cr, %.prol.preheader ]
  %i.cx = icmp ult i64 %i.cq, 3
  br i1 %i.cx, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE13emplace_valueIJPNS1_13map_slot_typeIS5_iEEEEEvhPSaISt4pairIKS5_iEEDpOT_.exit, label %.lr.ph.i41.new

.lr.ph.i41.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i41.new
  %indvars.iv = phi i64 [ %i.dq, %.lr.ph.i41.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.cy = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !2636 ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv
  store ptr %i.da, ptr %i.db, align 8, !tbaa !2636
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = trunc nuw i64 %indvars.iv to i8
  store i8 %i.dd, ptr %i.dc, align 1, !tbaa !794
  %i.de = add nsw i64 %indvars.iv, -2             ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !2636 ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cy
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !2636
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dj = trunc nuw i64 %i.cy to i8
  store i8 %i.dj, ptr %i.di, align 1, !tbaa !794
  %i.dk = add nsw i64 %indvars.iv, -3             ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !2636 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.de
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !2636
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dp = trunc nuw i64 %i.de to i8
  store i8 %i.dp, ptr %i.do, align 1, !tbaa !794
  %i.dq = add nsw i64 %indvars.iv, -4             ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !2636 ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dk
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !2636
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dv = trunc nuw i64 %i.dk to i8
  store i8 %i.dv, ptr %i.du, align 1, !tbaa !794
  %.wide.3 = icmp ugt i64 %i.dq, %i.cm
  br i1 %.wide.3, label %.lr.ph.i41.new, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE13emplace_valueIJPNS1_13map_slot_typeIS5_iEEEEEvhPSaISt4pairIKS5_iEEDpOT_.exit, !llvm.loop !20069

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE13emplace_valueIJPNS1_13map_slot_typeIS5_iEEEEEvhPSaISt4pairIKS5_iEEDpOT_.exit: ; preds = %.prol.loopexit, %.lr.ph.i41.new, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit.i, %bb.e
  %.val34 = load ptr, ptr %0, align 8, !tbaa !2636
  %.val32 = load i8, ptr %i.ak, align 8, !tbaa !794
  %i.dw = add i8 %.val32, 1
  %i.dx = getelementptr inbounds nuw i8, ptr %.val34, i64 256
  %i.dy = zext i8 %i.dw to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dy
  store ptr %2, ptr %i.dz, align 8, !tbaa !2636
  %i.ea = getelementptr i8, ptr %0, i64 11
  %.val36 = load i8, ptr %i.ea, align 1, !tbaa !794
  %.not.i42 = icmp eq i8 %.val36, 0
  br i1 %.not.i42, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE13emplace_valueIJPNS1_13map_slot_typeIS5_iEEEEEvhPSaISt4pairIKS5_iEEDpOT_.exit
  %.val27 = load i8, ptr %i.f, align 2, !tbaa !794
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 256
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.g
  %.0.in3 = phi i8 [ %.val27, %bb.f ], [ %.0, %bb.g ]
  %.0252 = phi i8 [ 0, %bb.f ], [ %i.ej, %bb.g ]  ; 3 uses
  %.0 = add i8 %.0.in3, 1                         ; 2 uses
  %i.ed = zext i8 %.0 to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !2636 ; 3 uses
  %i.eg = zext i8 %.0252 to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eg
  store ptr %i.ef, ptr %i.eh, align 8, !tbaa !2636
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i8 %.0252, ptr %i.ei, align 1, !tbaa !794
  store ptr %2, ptr %i.ef, align 8, !tbaa !2636
  %i.ej = add i8 %.0252, 1                        ; 2 uses
  %.val = load i8, ptr %i.g, align 1, !tbaa !794
  %.not = icmp ugt i8 %i.ej, %.val
  br i1 %.not, label %.loopexit, label %bb.g, !llvm.loop !20070

.loopexit:                                        ; preds = %bb.g, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE13emplace_valueIJPNS1_13map_slot_typeIS5_iEEEEEvhPSaISt4pairIKS5_iEEDpOT_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE16internal_emplaceIJSt4pairIKS5_iEEEENS1_14btree_iteratorINS1_10btree_nodeIS6_EERSB_PSB_EESH_DpOT_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr %1, i32 %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.4433", align 8 ; 6 uses
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 11
  %.val = load i8, ptr %i.b, align 1, !tbaa !794  ; 2 uses
  %.not.i = icmp eq i8 %.val, 0
  br i1 %.not.i, label %.thread.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert17 = getelementptr i8, ptr %1, i64 10
  %.val5.pre = load i8, ptr %.phi.trans.insert17, align 1, !tbaa !794
  br label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.d = and i32 %2, 255
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.e
  %.11727.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !2636 ; 3 uses
  %i.g = getelementptr i8, ptr %.11727.i.i.i, i64 11
  %.117.val2028.i.i.i = load i8, ptr %i.g, align 1, !tbaa !794 ; 2 uses
  %.not.i29.i.i.i = icmp eq i8 %.117.val2028.i.i.i, 0
  br i1 %.not.i29.i.i.i, label %.lr.ph31.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEEERSt4pairIKS6_iEPSB_EmmEv.exit

.lr.ph31.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph31.i.i.i
  %.11730.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph31.i.i.i ], [ %.11727.i.i.i, %.thread.i.i ] ; 2 uses
  %i.h = getelementptr i8, ptr %.11730.i.i.i, i64 10
  %.117.val18.i.i.i = load i8, ptr %i.h, align 1, !tbaa !794
  %i.i = getelementptr inbounds nuw i8, ptr %.11730.i.i.i, i64 256
  %i.j = zext i8 %.117.val18.i.i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %.117.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !2636 ; 3 uses
  %i.l = getelementptr i8, ptr %.117.i.i.i, i64 11
  %.117.val20.i.i.i = load i8, ptr %i.l, align 1, !tbaa !794 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %.117.val20.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph31.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEEERSt4pairIKS6_iEPSB_EmmEv.exit, !llvm.loop !686

_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEEERSt4pairIKS6_iEPSB_EmmEv.exit: ; preds = %.lr.ph31.i.i.i, %.thread.i.i
  %.val4.pre = phi i8 [ %.117.val2028.i.i.i, %.thread.i.i ], [ %.117.val20.i.i.i, %.lr.ph31.i.i.i ]
  %.117.lcssa.i.i.i = phi ptr [ %.11727.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph31.i.i.i ] ; 3 uses
  %i.m = getelementptr i8, ptr %.117.lcssa.i.i.i, i64 10
  %.117.val.i.i.i = load i8, ptr %i.m, align 1, !tbaa !794 ; 2 uses
  %i.n = zext i8 %.117.val.i.i.i to i32
  store ptr %.117.lcssa.i.i.i, ptr %4, align 8
  store i32 %i.n, ptr %i.a, align 8, !tbaa !2687
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEEERSt4pairIKS6_iEPSB_EmmEv.exit
  %.val5 = phi i8 [ %.117.val.i.i.i, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEEERSt4pairIKS6_iEPSB_EmmEv.exit ], [ %.val5.pre, %._crit_edge ] ; 3 uses
  %.val4 = phi i8 [ %.val4.pre, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEEERSt4pairIKS6_iEPSB_EmmEv.exit ], [ %.val, %._crit_edge ]
  %i.o = phi ptr [ %.117.lcssa.i.i.i, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEEERSt4pairIKS6_iEPSB_EmmEv.exit ], [ %1, %._crit_edge ] ; 5 uses
  %i.p = getelementptr i8, ptr %i.o, i64 10       ; 2 uses
  %i.q = icmp eq i8 %.val5, %.val4
  br i1 %i.q, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i8 %.val5, 30
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = shl nuw nsw i8 %.val5, 1
  %i.t = tail call i8 @llvm.umin.i8(i8 %i.s, i8 30) ; 2 uses
  %i.u = shl nuw i8 %i.t, 3
  %i.v = zext i8 %i.u to i64
  %i.w = add nuw nsw i64 %i.v, 16
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #35 ; 13 uses
  store ptr %i.x, ptr %i.x, align 8, !tbaa !2636
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i8 0, ptr %i.y, align 8, !tbaa !794
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 9
  store i8 0, ptr %i.z, align 1, !tbaa !794
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 11
  store i8 %i.t, ptr %i.aa, align 1, !tbaa !794
  store ptr %i.x, ptr %4, align 8, !tbaa !2688
  %.val13.i.i = load i8, ptr %i.p, align 1, !tbaa !794 ; 3 uses
  %i.ab = zext i8 %.val13.i.i to i64
  %i.ac = getelementptr i8, ptr %i.o, i64 12      ; 7 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.ab, 3          ; 4 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 %.idx.i.i.i ; 2 uses
  %.not1.i.i.i = icmp eq i8 %.val13.i.i, 0
  br i1 %.not1.i.i.i, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE16internal_emplaceIJSt4pairIKS5_iEEEENS1_14btree_iteratorINS1_10btree_nodeIS6_EERSB_PSB_EESH_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.ae = getelementptr i8, ptr %i.x, i64 12      ; 6 uses
  %i.af = add nsw i64 %.idx.i.i.i, -8             ; 2 uses
  %i.ag = lshr exact i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i8.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.i.i
  %i.ai = add nuw nsw i64 %.idx.i.i.i, 8          ; 2 uses
  %i.aj = getelementptr i8, ptr %i.x, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.o, i64 %i.ai
  %5 = getelementptr i8, ptr %i.x, i64 16
  %6 = getelementptr i8, ptr %i.x, i64 %.idx.i.i.i
  %7 = getelementptr i8, ptr %6, i64 12
  %i.al = getelementptr i8, ptr %i.o, i64 16
  %bound0 = icmp ult ptr %i.ae, %i.ak
  %bound1 = icmp ult ptr %i.ac, %i.aj
  %found.conflict = and i1 %bound0, %bound1
  %bound08 = icmp ult ptr %5, %i.ad
  %bound19 = icmp ult ptr %i.al, %7
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %.lr.ph.i.i.i8.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.ae, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.ac, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3                       ; 3 uses
  %i.aq = or disjoint i64 %i.ap, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ae, i64 %i.ap
  %next.gep11 = getelementptr i8, ptr %i.ae, i64 %i.aq
  %next.gep12 = getelementptr i8, ptr %i.ac, i64 %i.ap
  %next.gep13 = getelementptr i8, ptr %i.ac, i64 %i.aq
  %wide.vec = load <4 x i32>, ptr %next.gep12, align 4, !tbaa !783
  %wide.vec15 = load <4 x i32>, ptr %next.gep13, align 4, !tbaa !783
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !783
  store <4 x i32> %wide.vec15, ptr %next.gep11, align 4, !tbaa !783
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !20071

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE16internal_emplaceIJSt4pairIKS5_iEEEENS1_14btree_iteratorINS1_10btree_nodeIS6_EERSB_PSB_EESH_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i8.preheader

.lr.ph.i.i.i8.preheader:                          ; preds = %vector.memcheck, %.lr.ph.preheader.i.i.i, %middle.block
  %.03.i.i.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.preheader.i.i.i ], [ %i.an, %middle.block ]
  %.0122.i.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.preheader.i.i.i ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %.lr.ph.i.i.i8.preheader, %.lr.ph.i.i.i8
  %.03.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i8 ], [ %.03.i.i.i.ph, %.lr.ph.i.i.i8.preheader ] ; 2 uses
  %.0122.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i8 ], [ %.0122.i.i.i.ph, %.lr.ph.i.i.i8.preheader ] ; 2 uses
  %i.as = load <2 x i32>, ptr %.0122.i.i.i, align 4, !tbaa !783
  store <2 x i32> %i.as, ptr %.03.i.i.i, align 4, !tbaa !783
  %i.at = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 8
  %.not.i.i.i9 = icmp eq ptr %i.at, %i.ad
  br i1 %.not.i.i.i9, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE16internal_emplaceIJSt4pairIKS5_iEEEENS1_14btree_iteratorINS1_10btree_nodeIS6_EERSB_PSB_EESH_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i8, !llvm.loop !20072

_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE16internal_emplaceIJSt4pairIKS5_iEEEENS1_14btree_iteratorINS1_10btree_nodeIS6_EERSB_PSB_EESH_DpOT_ENKUlhE_clEh.exit: ; preds = %.lr.ph.i.i.i8, %middle.block, %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  store i8 %.val13.i.i, ptr %i.av, align 2, !tbaa !794
  store i8 0, ptr %i.p, align 1, !tbaa !794
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE16clear_and_deleteEPS7_PSaISt4pairIKS5_iEE(ptr noundef nonnull %i.o)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.aw, align 8, !tbaa !2636
  store ptr %i.x, ptr %0, align 8, !tbaa !2636
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS6_EERSt4pairIKS5_iEPSD_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %4)
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE16internal_emplaceIJSt4pairIKS5_iEEEENS1_14btree_iteratorINS1_10btree_nodeIS6_EERSB_PSB_EESH_DpOT_ENKUlhE_clEh.exit, %bb.e, %bb.b
  %i.ax = load ptr, ptr %4, align 8, !tbaa !2688  ; 5 uses
  %i.ay = load i32, ptr %i.a, align 8, !tbaa !2687 ; 2 uses
  %i.az = trunc i32 %i.ay to i8                   ; 2 uses
  %i.ba = and i32 %i.ay, 255                      ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ax, i64 10     ; 3 uses
  %.val21.i = load i8, ptr %i.bb, align 1, !tbaa !794 ; 3 uses
  %i.bc = icmp ugt i8 %.val21.i, %i.az
  %i.bd = zext nneg i32 %i.ba to i64              ; 4 uses
  br i1 %i.bc, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.bf = getelementptr [8 x i8], ptr %i.be, i64 %i.bd ; 3 uses
  %narrow.i = sub nuw i8 %.val21.i, %i.az
  %i.bg = zext i8 %narrow.i to i64                ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.bg, 3            ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bf, i64 8
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.bg ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bf, i64 %.idx.i.i ; 2 uses
  %i.bk = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.bl = lshr exact i64 %i.bk, 3
  %i.bm = add nuw nsw i64 %i.bl, 1
  %xtraiter = and i64 %i.bm, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %.03.i.i.prol = phi ptr [ %i.bn, %.lr.ph.i.i.prol ], [ %i.bi, %.lr.ph.preheader.i.i ]
  %.0142.i.i.prol = phi ptr [ %i.bo, %.lr.ph.i.i.prol ], [ %i.bj, %.lr.ph.preheader.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.bn = getelementptr inbounds i8, ptr %.03.i.i.prol, i64 -8 ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %.0142.i.i.prol, i64 -8 ; 3 uses
  %i.bp = load <2 x i32>, ptr %i.bo, align 4, !tbaa !783
  store <2 x i32> %i.bp, ptr %i.bn, align 4, !tbaa !783
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !20073

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.03.i.i.unr = phi ptr [ %i.bi, %.lr.ph.preheader.i.i ], [ %i.bn, %.lr.ph.i.i.prol ]
  %.0142.i.i.unr = phi ptr [ %i.bj, %.lr.ph.preheader.i.i ], [ %i.bo, %.lr.ph.i.i.prol ]
  %i.bq = icmp ult i64 %i.bk, 56
  br i1 %i.bq, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.03.i.i = phi ptr [ %i.cm, %.lr.ph.i.i ], [ %.03.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 8 uses
  %.0142.i.i = phi ptr [ %i.cn, %.lr.ph.i.i ], [ %.0142.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 8 uses
  %i.br = getelementptr inbounds i8, ptr %.03.i.i, i64 -8
  %i.bs = getelementptr inbounds i8, ptr %.0142.i.i, i64 -8
  %i.bt = load <2 x i32>, ptr %i.bs, align 4, !tbaa !783
  store <2 x i32> %i.bt, ptr %i.br, align 4, !tbaa !783
  %i.bu = getelementptr inbounds i8, ptr %.03.i.i, i64 -16
  %i.bv = getelementptr inbounds i8, ptr %.0142.i.i, i64 -16
  %i.bw = load <2 x i32>, ptr %i.bv, align 4, !tbaa !783
  store <2 x i32> %i.bw, ptr %i.bu, align 4, !tbaa !783
  %i.bx = getelementptr inbounds i8, ptr %.03.i.i, i64 -24
  %i.by = getelementptr inbounds i8, ptr %.0142.i.i, i64 -24
  %i.bz = load <2 x i32>, ptr %i.by, align 4, !tbaa !783
  store <2 x i32> %i.bz, ptr %i.bx, align 4, !tbaa !783
  %i.ca = getelementptr inbounds i8, ptr %.03.i.i, i64 -32
  %i.cb = getelementptr inbounds i8, ptr %.0142.i.i, i64 -32
  %i.cc = load <2 x i32>, ptr %i.cb, align 4, !tbaa !783
  store <2 x i32> %i.cc, ptr %i.ca, align 4, !tbaa !783
  %i.cd = getelementptr inbounds i8, ptr %.03.i.i, i64 -40
  %i.ce = getelementptr inbounds i8, ptr %.0142.i.i, i64 -40
  %i.cf = load <2 x i32>, ptr %i.ce, align 4, !tbaa !783
  store <2 x i32> %i.cf, ptr %i.cd, align 4, !tbaa !783
  %i.cg = getelementptr inbounds i8, ptr %.03.i.i, i64 -48
  %i.ch = getelementptr inbounds i8, ptr %.0142.i.i, i64 -48
  %i.ci = load <2 x i32>, ptr %i.ch, align 4, !tbaa !783
  store <2 x i32> %i.ci, ptr %i.cg, align 4, !tbaa !783
  %i.cj = getelementptr inbounds i8, ptr %.03.i.i, i64 -56
  %i.ck = getelementptr inbounds i8, ptr %.0142.i.i, i64 -56
  %i.cl = load <2 x i32>, ptr %i.ck, align 4, !tbaa !783
  store <2 x i32> %i.cl, ptr %i.cj, align 4, !tbaa !783
  %i.cm = getelementptr inbounds i8, ptr %.03.i.i, i64 -64 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %.0142.i.i, i64 -64 ; 3 uses
  %i.co = load <2 x i32>, ptr %i.cn, align 4, !tbaa !783
  store <2 x i32> %i.co, ptr %i.cm, align 4, !tbaa !783
  %.not.i.i11.7 = icmp eq ptr %i.cn, %i.bf
  br i1 %.not.i.i11.7, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !702

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.val19.pre.i = load i8, ptr %i.bb, align 1, !tbaa !794
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit.i, %bb.f
  %.val19.i = phi i8 [ %.val19.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit.i ], [ %.val21.i, %bb.f ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.bd ; 2 uses
  %.val.i.i.i.i.i = load i32, ptr %3, align 4, !tbaa !2592
  store i32 %.val.i.i.i.i.i, ptr %i.cq, align 4, !tbaa !2592
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !783
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !2635
  %i.cu = add i8 %.val19.i, 1                     ; 3 uses
  store i8 %i.cu, ptr %i.bb, align 1, !tbaa !794
  %i.cv = getelementptr i8, ptr %i.ax, i64 11
  %.val22.i = load i8, ptr %i.cv, align 1, !tbaa !794
  %.not.i23.i = icmp eq i8 %.val22.i, 0
  br i1 %.not.i23.i, label %bb.g, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE13emplace_valueIJSt4pairIKS5_iEEEEvhPSaISB_EDpOT_.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE19transfer_n_backwardEmmmPS7_PSaISt4pairIKS5_iEE.exit.i
  %i.cw = zext i8 %i.cu to i32
  %i.cx = add nuw nsw i32 %i.ba, 1                ; 2 uses
  %i.cy = icmp samesign ult i32 %i.cx, %i.cw
  br i1 %i.cy, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE13emplace_valueIJSt4pairIKS5_iEEEEvhPSaISB_EDpOT_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ax, i64 256 ; 10 uses
  %i.da = zext i8 %i.cu to i64                    ; 4 uses
  %i.db = zext nneg i32 %i.cx to i64
  %i.dc = xor i64 %i.bd, -1
  %i.dd = add nsw i64 %i.dc, %i.da
  %i.de = add nsw i64 %i.da, -2
  %i.df = sub nsw i64 %i.de, %i.bd
  %xtraiter20 = and i64 %i.dd, 3                  ; 2 uses
  %lcmp.mod21.not = icmp eq i64 %xtraiter20, 0
  br i1 %lcmp.mod21.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.dg, %.prol.preheader ], [ %i.da, %.lr.ph.i ] ; 3 uses
  %prol.iter22 = phi i64 [ %prol.iter22.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.dg = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !2636 ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.prol
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !2636
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dl = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.dl, ptr %i.dk, align 1, !tbaa !794
  %prol.iter22.next = add i64 %prol.iter22, 1     ; 2 uses
  %prol.iter22.cmp.not = icmp eq i64 %prol.iter22.next, %xtraiter20
  br i1 %prol.iter22.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !20074

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.unr = phi i64 [ %i.da, %.lr.ph.i ], [ %i.dg, %.prol.preheader ]
  %i.dm = icmp ult i64 %i.df, 3
end_hunk_6
begin_hunk_7_@_ZN7testing7MatcherIRKN4absl12lts_202605269btree_mapINS2_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS6_ESaISt4pairIKS6_iEEEEED0Ev:bb.a
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEED2Ev.exit unwind label %bb.d, !inline_history !688

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #39, !inline_history !2651
  unreachable

_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE18DescribeNegationToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2644
  %i.c = icmp ne ptr %i.b, null
  %i.d = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.c)
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !2644
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2649
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEEE, i64 16), ptr %0, align 8, !tbaa !797
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val.i.i = load ptr, ptr %i.a, align 8, !tbaa !2644 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2650
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE8IsSharedEv.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !794
  %i.f = atomicrmw add ptr %i.e, i32 -1 acq_rel, align 4
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !2644
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2650
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !794
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEED2Ev.exit unwind label %bb.d, !inline_history !688

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #39, !inline_history !2651
  unreachable

_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE19MatchAndExplainImplINSH_11ValuePolicyIPKNS_16MatcherInterfaceISG_EELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_fp1_EERKSH_SG_PNS_19MatchResultListenerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !794
  %i.b = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !2646 ; 2 uses
  %i.c = load ptr, ptr %.val.val, align 8, !tbaa !797
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %.val.val, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2)
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE12DescribeImplINSH_11ValuePolicyIPKNS_16MatcherInterfaceISG_EELb1EEEEEvRKSH_PSob(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4 = load ptr, ptr %i.a, align 8, !tbaa !794
  %i.b = getelementptr i8, ptr %.val4, i64 8
  %.val4.val = load ptr, ptr %i.b, align 8, !tbaa !2646 ; 2 uses
  %i.c = load ptr, ptr %.val4.val, align 8, !tbaa !797
  %. = select i1 %2, i64 24, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %.
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %.val4.val, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE16GetDescriberImplINSH_11ValuePolicyIPKNS_16MatcherInterfaceISG_EELb1EEEEEPKNS_25MatcherDescriberInterfaceERKSH_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !794
  %i.b = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !2646
  ret ptr %.val.val
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605269btree_mapINS5_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS9_ESaISt4pairIKS9_iEEEEEESt14default_deleteISK_EEE7DestroyEPNS0_17SharedPayloadBaseE(ptr noundef %0) #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !2646 ; 3 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605269btree_mapINS5_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS9_ESaISt4pairIKS9_iEEEEEESt14default_deleteISK_EEED2Ev.exit, label %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEEEEclEPSI_.exit.i.i

_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEEEEclEPSI_.exit.i.i: ; preds = %bb.b
  %i.c = load ptr, ptr %.val, align 8, !tbaa !797
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %.val) #37, !inline_history !20323
  br label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605269btree_mapINS5_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS9_ESaISt4pairIKS9_iEEEEEESt14default_deleteISK_EEED2Ev.exit

_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605269btree_mapINS5_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS9_ESaISt4pairIKS9_iEEEEEESt14default_deleteISK_EEED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_202605269btree_mapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEEEEclEPSI_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  br label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605269btree_mapINS5_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS9_ESaISt4pairIKS9_iEEEEEESt14default_deleteISK_EEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE11merge_nodesEPNS1_10btree_nodeIS6_EESA_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, ptr nofree noundef captures(address) %2) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 10         ; 4 uses
  %.val22.i = load i8, ptr %i.a, align 1, !tbaa !794 ; 2 uses
  %.val26.i = load ptr, ptr %1, align 8, !tbaa !2636
  %i.b = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val24.i = load i8, ptr %i.b, align 8, !tbaa !794
  %i.c = zext i8 %.val24.i to i64
  %i.d = getelementptr inbounds nuw i8, ptr %.val26.i, i64 12
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = zext i8 %.val22.i to i64                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f ; 6 uses
  %i.i = load <2 x i32>, ptr %i.e, align 4, !tbaa !783
  store <2 x i32> %i.i, ptr %i.h, align 4, !tbaa !783
  %i.j = getelementptr i8, ptr %2, i64 10         ; 4 uses
  %.val30.i = load i8, ptr %i.j, align 1, !tbaa !794 ; 2 uses
  %i.k = zext i8 %.val30.i to i64
  %i.l = getelementptr i8, ptr %2, i64 12         ; 7 uses
  %.idx.i.i = shl nuw nsw i64 %i.k, 3             ; 4 uses
  %i.m = getelementptr i8, ptr %i.l, i64 %.idx.i.i ; 2 uses
  %.not1.i.i = icmp eq i8 %.val30.i, 0
  br i1 %.not1.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.n = add nsw i64 %.idx.i.i, -8                ; 2 uses
  %i.o = lshr exact i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 232
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader68, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.q = shl nuw nsw i64 %i.f, 3                  ; 3 uses
  %i.r = getelementptr i8, ptr %1, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 20
  %i.t = add nuw nsw i64 %.idx.i.i, %i.q          ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %i.w = getelementptr i8, ptr %2, i64 %.idx.i.i
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %3 = getelementptr i8, ptr %1, i64 %i.q
  %4 = getelementptr i8, ptr %3, i64 24
  %5 = getelementptr i8, ptr %1, i64 %i.t
  %i.y = getelementptr i8, ptr %5, i64 20
  %i.z = getelementptr i8, ptr %2, i64 16
  %bound0 = icmp ult ptr %i.s, %i.x
  %bound1 = icmp ult ptr %i.l, %i.v
  %found.conflict = and i1 %bound0, %bound1
  %bound013 = icmp ult ptr %4, %i.m
  %bound114 = icmp ult ptr %i.z, %i.y
  %found.conflict15 = and i1 %bound013, %bound114
  %conflict.rdx = or i1 %found.conflict, %found.conflict15
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader68, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.p, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.h, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.l, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 3 uses
  %i.ae = or disjoint i64 %i.ad, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.ad
  %next.gep16 = getelementptr i8, ptr %i.h, i64 %i.ae
  %next.gep17 = getelementptr i8, ptr %i.l, i64 %i.ad
  %next.gep18 = getelementptr i8, ptr %i.l, i64 %i.ae
  %i.af = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %next.gep16, i64 8
  %wide.vec = load <4 x i32>, ptr %next.gep17, align 4, !tbaa !783
  %wide.vec20 = load <4 x i32>, ptr %next.gep18, align 4, !tbaa !783
  store <4 x i32> %wide.vec, ptr %i.af, align 4, !tbaa !783
  store <4 x i32> %wide.vec20, ptr %i.ag, align 4, !tbaa !783
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !20324

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit.i, label %.lr.ph.i.i.preheader68

.lr.ph.i.i.preheader68:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.03.i.pn.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0122.i.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader68, %.lr.ph.i.i
  %.03.i.pn.i = phi ptr [ %.03.i.i, %.lr.ph.i.i ], [ %.03.i.pn.i.ph, %.lr.ph.i.i.preheader68 ]
  %.0122.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %.0122.i.i.ph, %.lr.ph.i.i.preheader68 ] ; 2 uses
  %.03.i.i = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 8 ; 2 uses
  %i.ai = load <2 x i32>, ptr %.0122.i.i, align 4, !tbaa !783
  store <2 x i32> %i.ai, ptr %.03.i.i, align 4, !tbaa !783
  %i.aj = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, %i.m
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !20325

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block
  %.val29.pre4.pre.i = load i8, ptr %i.a, align 2, !tbaa !794
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit.i, %bb.a
  %.val29.pre4.i = phi i8 [ %.val29.pre4.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.loopexit.i ], [ %.val22.i, %bb.a ] ; 2 uses
  %i.ak = getelementptr i8, ptr %1, i64 11
  %.val27.i = load i8, ptr %i.ak, align 1, !tbaa !794
  %.not.i33.i = icmp eq i8 %.val27.i, 0
  br i1 %.not.i33.i, label %bb.b, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit..loopexit_crit_edge.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit..loopexit_crit_edge.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.i
  %.val28.pre.i = load i8, ptr %i.j, align 1, !tbaa !794
  br label %.loopexit.i

bb.b:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 256
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.in3.i = phi i8 [ %.val29.pre4.i, %bb.b ], [ %.0.i, %bb.c ]
  %.0192.i = phi i8 [ 0, %bb.b ], [ %i.at, %bb.c ] ; 2 uses
  %.0.i = add i8 %.0.in3.i, 1                     ; 3 uses
  %i.an = zext i8 %.0192.i to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2636 ; 3 uses
  %i.aq = zext i8 %.0.i to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.aq
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !2636
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i8 %.0.i, ptr %i.as, align 1, !tbaa !794
  store ptr %1, ptr %i.ap, align 8, !tbaa !2636
  %i.at = add i8 %.0192.i, 1                      ; 2 uses
  %.val.i = load i8, ptr %i.j, align 1, !tbaa !794 ; 2 uses
  %.not.i = icmp ugt i8 %i.at, %.val.i
  br i1 %.not.i, label %.loopexit.loopexit.i, label %bb.c, !llvm.loop !20326

.loopexit.loopexit.i:                             ; preds = %bb.c
  %.val29.pre.i = load i8, ptr %i.a, align 2, !tbaa !794
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit..loopexit_crit_edge.i
  %.val28.i = phi i8 [ %.val.i, %.loopexit.loopexit.i ], [ %.val28.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit..loopexit_crit_edge.i ]
  %.val29.i = phi i8 [ %.val29.pre.i, %.loopexit.loopexit.i ], [ %.val29.pre4.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit..loopexit_crit_edge.i ]
  %i.au = add i8 %.val28.i, 1
  %i.av = add i8 %i.au, %.val29.i
  store i8 %i.av, ptr %i.a, align 2, !tbaa !794
  store i8 0, ptr %i.j, align 1, !tbaa !794
  %.val25.i = load ptr, ptr %1, align 8, !tbaa !2636 ; 9 uses
  %.val23.i = load i8, ptr %i.b, align 8, !tbaa !794 ; 3 uses
  %i.aw = getelementptr i8, ptr %.val25.i, i64 10 ; 2 uses
  %.val.i.i = load i8, ptr %i.aw, align 1, !tbaa !794 ; 5 uses
  %i.ax = zext i8 %.val.i.i to i64                ; 3 uses
  %i.ay = add i8 %.val23.i, 1                     ; 2 uses
  %i.az = zext i8 %i.ay to i64                    ; 5 uses
  %i.ba = sub nsw i64 %i.ax, %i.az
  %i.bb = getelementptr i8, ptr %.val25.i, i64 12 ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %i.bb, i64 %i.az ; 7 uses
  %.idx.i.i.i = shl nsw i64 %i.ba, 3
  %i.bd = getelementptr i8, ptr %i.bc, i64 %.idx.i.i.i ; 2 uses
  %.not1.i.i.i = icmp eq i8 %.val.i.i, %i.ay
  br i1 %.not1.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.loopexit.i
  %i.be = zext i8 %.val23.i to i64                ; 2 uses
  %i.bf = getelementptr [8 x i8], ptr %i.bb, i64 %i.be ; 6 uses
  %i.bg = shl nuw nsw i64 %i.ax, 3
  %i.bh = shl nuw nsw i64 %i.az, 3
  %i.bi = add nsw i64 %i.bg, -8
  %i.bj = sub nsw i64 %i.bi, %i.bh                ; 2 uses
  %i.bk = lshr exact i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check38 = icmp ult i64 %i.bj, 296
  br i1 %min.iters.check38, label %.lr.ph.i.i.i.preheader, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.preheader.i.i.i
  %i.bm = shl nuw nsw i64 %i.ax, 3                ; 2 uses
  %i.bn = shl nuw nsw i64 %i.be, 3                ; 2 uses
  %i.bo = shl nuw nsw i64 %i.az, 3                ; 3 uses
  %i.bp = add nuw nsw i64 %i.bm, %i.bn            ; 2 uses
  %i.bq = add nuw nsw i64 %i.bp, 8
  %i.br = sub nsw i64 %i.bq, %i.bo
  %i.bs = getelementptr i8, ptr %.val25.i, i64 %i.br
  %i.bt = getelementptr i8, ptr %.val25.i, i64 %i.bm
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %6 = getelementptr i8, ptr %.val25.i, i64 %i.bn
  %7 = getelementptr i8, ptr %6, i64 16
  %8 = add nuw nsw i64 %i.bp, 12
  %9 = sub nsw i64 %8, %i.bo
  %i.bv = getelementptr i8, ptr %.val25.i, i64 %9
  %10 = getelementptr i8, ptr %.val25.i, i64 %i.bo
  %11 = getelementptr i8, ptr %10, i64 16
  %bound040 = icmp ult ptr %i.bf, %i.bu
  %bound141 = icmp ult ptr %i.bc, %i.bs
  %found.conflict42 = and i1 %bound040, %bound141
  %bound043 = icmp ult ptr %7, %i.bd
  %bound144 = icmp ult ptr %11, %i.bv
  %found.conflict45 = and i1 %bound043, %bound144
  %conflict.rdx46 = or i1 %found.conflict42, %found.conflict45
  br i1 %conflict.rdx46, label %.lr.ph.i.i.i.preheader, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec48 = and i64 %i.bl, 4611686018427387900   ; 3 uses
  %i.bw = shl i64 %n.vec48, 3                     ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bf, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bc, i64 %i.bw
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next63, %vector.body49 ] ; 2 uses
  %i.bz = shl i64 %index50, 3                     ; 3 uses
  %i.ca = or disjoint i64 %i.bz, 16               ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.bf, i64 %i.bz
  %next.gep52 = getelementptr i8, ptr %i.bf, i64 %i.ca
  %next.gep53 = getelementptr i8, ptr %i.bc, i64 %i.bz
  %next.gep54 = getelementptr i8, ptr %i.bc, i64 %i.ca
  %wide.vec55 = load <4 x i32>, ptr %next.gep53, align 4, !tbaa !783
  %wide.vec58 = load <4 x i32>, ptr %next.gep54, align 4, !tbaa !783
  store <4 x i32> %wide.vec55, ptr %next.gep51, align 4, !tbaa !783
  store <4 x i32> %wide.vec58, ptr %next.gep52, align 4, !tbaa !783
  %index.next63 = add nuw i64 %index50, 4         ; 2 uses
  %i.cb = icmp eq i64 %index.next63, %n.vec48
  br i1 %i.cb, label %middle.block64, label %vector.body49, !llvm.loop !20327

middle.block64:                                   ; preds = %vector.body49
  %cmp.n65 = icmp eq i64 %i.bl, %n.vec48
  br i1 %cmp.n65, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck39, %.lr.ph.preheader.i.i.i, %middle.block64
  %.03.i.i.i.ph = phi ptr [ %i.bf, %vector.memcheck39 ], [ %i.bf, %.lr.ph.preheader.i.i.i ], [ %i.bx, %middle.block64 ]
  %.0122.i.i.i.ph = phi ptr [ %i.bc, %vector.memcheck39 ], [ %i.bc, %.lr.ph.preheader.i.i.i ], [ %i.by, %middle.block64 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.03.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i ], [ %.03.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0122.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i ], [ %.0122.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.cc = load <2 x i32>, ptr %.0122.i.i.i, align 4, !tbaa !783
  store <2 x i32> %i.cc, ptr %.03.i.i.i, align 4, !tbaa !783
  %i.cd = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.cd, %i.bd
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !20328

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block64, %.loopexit.i
  %i.cf = getelementptr i8, ptr %.val25.i, i64 11
  %.val31.i.i = load i8, ptr %i.cf, align 1, !tbaa !794
  %.not.i32.i.i = icmp eq i8 %.val31.i.i, 0
  br i1 %.not.i32.i.i, label %.critedge.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE5mergeEPS7_PSaISt4pairIKS5_iEE.exit

.critedge.i.i:                                    ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.val25.i, i64 256 ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.az
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !2636
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE16clear_and_deleteEPS7_PSaISt4pairIKS5_iEE(ptr noundef %i.ci)
  %i.cj = add i8 %.val23.i, 2                     ; 2 uses
  %.not1.i34.i = icmp ugt i8 %i.cj, %.val.i.i
  br i1 %.not1.i34.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE5mergeEPS7_PSaISt4pairIKS5_iEE.exit, label %.lr.ph.i35.i

.lr.ph.i35.i:                                     ; preds = %.critedge.i.i, %.lr.ph.i35.i
  %.02.i.i = phi i8 [ %i.cr, %.lr.ph.i35.i ], [ %i.cj, %.critedge.i.i ] ; 3 uses
  %i.ck = add i8 %.02.i.i, -1                     ; 2 uses
  %i.cl = zext i8 %.02.i.i to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !2636 ; 2 uses
  %i.co = zext i8 %i.ck to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.co
  store ptr %i.cn, ptr %i.cp, align 8, !tbaa !2636
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i8 %i.ck, ptr %i.cq, align 1, !tbaa !794
  %i.cr = add i8 %.02.i.i, 1                      ; 2 uses
  %.not.i36.i = icmp ugt i8 %i.cr, %.val.i.i
  br i1 %.not.i36.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE5mergeEPS7_PSaISt4pairIKS5_iEE.exit, label %.lr.ph.i35.i, !llvm.loop !20329

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE5mergeEPS7_PSaISt4pairIKS5_iEE.exit: ; preds = %.lr.ph.i35.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_iEE.exit.i.i, %.critedge.i.i
  %i.cs = add i8 %.val.i.i, -1
  store i8 %i.cs, ptr %i.aw, align 1, !tbaa !794
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.ct, align 8, !tbaa !2636
  %i.cu = icmp eq ptr %.val, %2
  br i1 %i.cu, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE5mergeEPS7_PSaISt4pairIKS5_iEE.exit
  store ptr %1, ptr %i.ct, align 8, !tbaa !2636
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJEEEE5mergeEPS7_PSaISt4pairIKS5_iEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc ptr @_ZN7testing8internal20TransformTupleValuesISt5tupleIJNS0_11PairMatcherIiiEES4_S4_EENS0_22CastAndAppendTransformIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEEESt20back_insert_iteratorISt6vectorINS_7MatcherISG_EESaISL_EEEEET1_T0_RKT_SP_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %0, ptr nofree returned captures(ret: address, provenance) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::Matcher.4591", align 8 ; 8 uses
  %3 = alloca %"class.testing::Matcher.4591", align 8 ; 8 uses
  %4 = alloca %"class.testing::Matcher.4591", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20412)
  %i.b = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #35, !noalias !20413 ; 8 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !1790, !noalias !20413
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1791, !noalias !20413
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing8internal15PairMatcherImplIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEEE, i64 16), ptr %i.b, align 8, !tbaa !797, !noalias !20413
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %i.h, align 8, !alias.scope !20414, !noalias !20413
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEE9GetVTableINS9_11ValuePolicyINS0_9EqMatcherIiEELb1EEEEEPKNS9_6VTableEvE7kVTable, ptr %i.g, align 8, !tbaa !2675, !alias.scope !20414, !noalias !20413
  store i32 %i.c, ptr %i.h, align 8, !alias.scope !20414, !noalias !20413
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEEE, i64 16), ptr %i.f, align 8, !tbaa !797, !alias.scope !20414, !noalias !20413
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKiEE, i64 16), ptr %i.i, align 8, !tbaa !797, !alias.scope !20415, !noalias !20413
  %.sroa.11.16.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i32 %i.e to i64
  store ptr @_ZZN7testing8internal11MatcherBaseIRKiE9GetVTableINS4_11ValuePolicyINS0_9EqMatcherIiEELb1EEEEEPKNS4_6VTableEvE7kVTable, ptr %i.j, align 8, !tbaa !1712, !alias.scope !20415, !noalias !20413
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %.sroa.11.16.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.k, align 8, !tbaa !794, !alias.scope !20415, !noalias !20413
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEE9GetVTableINSC_11ValuePolicyIPKNS_16MatcherInterfaceISB_EELb1EEEEEPKNSC_6VTableEvE7kVTable, ptr %i.l, align 8, !tbaa !2691, !alias.scope !20413
  %i.n = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #35, !noalias !20413 ; 3 uses
  store i32 1, ptr %i.n, align 4, !tbaa !1707, !noalias !20413
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = ptrtoint ptr %i.b to i64
  store i64 %i.p, ptr %i.o, align 8, !tbaa !2693, !noalias !20413
  store ptr %i.n, ptr %i.m, align 8, !tbaa !794, !alias.scope !20413
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEEE, i64 16), ptr %4, align 8, !tbaa !797, !alias.scope !20413
  invoke fastcc void @_ZNSt6vectorIN7testing7MatcherIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEEESaISC_EE9push_backEOSC_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEEESaISD_EEEaSEOSD_.exit.i.i unwind label %bb.m

_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEEESaISD_EEEaSEOSD_.exit.i.i: ; preds = %bb.a
  %.val.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !2691 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEED2Ev.exit.i.i, label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEE8IsSharedEv.exit.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEE8IsSharedEv.exit.i.i.i.i: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEEESaISD_EEEaSEOSD_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !2695
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEE8IsSharedEv.exit.i.i.i.i
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !794  ; 2 uses
  %i.t = atomicrmw add ptr %i.s, i32 -1 acq_rel, align 4
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEED2Ev.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !2695
  invoke void %i.v(ptr noundef %i.s)
          to label %_ZN7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEED2Ev.exit.i.i unwind label %bb.d, !inline_history !705

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #39, !inline_history !2696
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEED2Ev.exit.i.i: ; preds = %bb.c, %bb.b, %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEE8IsSharedEv.exit.i.i.i.i, %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEEESaISD_EEEaSEOSD_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20420)
  %i.z = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #35, !noalias !20421 ; 8 uses
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !1790, !noalias !20421
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !1791, !noalias !20421
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing8internal15PairMatcherImplIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEEE, i64 16), ptr %i.z, align 8, !tbaa !797, !noalias !20421
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  store i64 0, ptr %i.af, align 8, !alias.scope !20422, !noalias !20421
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEE9GetVTableINS9_11ValuePolicyINS0_9EqMatcherIiEELb1EEEEEPKNS9_6VTableEvE7kVTable, ptr %i.ae, align 8, !tbaa !2675, !alias.scope !20422, !noalias !20421
  store i32 %i.aa, ptr %i.af, align 8, !alias.scope !20422, !noalias !20421
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEEE, i64 16), ptr %i.ad, align 8, !tbaa !797, !alias.scope !20422, !noalias !20421
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKiEE, i64 16), ptr %i.ag, align 8, !tbaa !797, !alias.scope !20423, !noalias !20421
  %.sroa.11.16.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i32 %i.ac to i64
  store ptr @_ZZN7testing8internal11MatcherBaseIRKiE9GetVTableINS4_11ValuePolicyINS0_9EqMatcherIiEELb1EEEEEPKNS4_6VTableEvE7kVTable, ptr %i.ah, align 8, !tbaa !1712, !alias.scope !20423, !noalias !20421
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store i64 %.sroa.11.16.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !794, !alias.scope !20423, !noalias !20421
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEE9GetVTableINSC_11ValuePolicyIPKNS_16MatcherInterfaceISB_EELb1EEEEEPKNSC_6VTableEvE7kVTable, ptr %i.aj, align 8, !tbaa !2691, !alias.scope !20421
  %i.al = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #35, !noalias !20421 ; 3 uses
  store i32 1, ptr %i.al, align 4, !tbaa !1707, !noalias !20421
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
end_hunk_7
begin_hunk_8_@_ZN7testing8internal20TransformTupleValuesISt5tupleIJNS0_11PairMatcherIiiEES4_S4_EENS0_22CastAndAppendTransformIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEEESt20back_insert_iteratorISt6vectorINS_7MatcherISG_EESaISL_EEEEET1_T0_RKT_SP_:bb.a
  tail call void @__clang_call_terminate(ptr %i.av) #39, !inline_history !2696
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEED2Ev.exit.i.i.i: ; preds = %bb.f, %bb.e, %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEE8IsSharedEv.exit.i.i.i.i.i, %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEEESaISD_EEEaSEOSD_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20428)
  %i.aw = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #35, !noalias !20429 ; 8 uses
  %i.ax = load i32, ptr %0, align 4, !tbaa !1790, !noalias !20429
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !1791, !noalias !20429
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing8internal15PairMatcherImplIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEEE, i64 16), ptr %i.aw, align 8, !tbaa !797, !noalias !20429
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  store i64 0, ptr %i.bc, align 8, !alias.scope !20430, !noalias !20429
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEE9GetVTableINS9_11ValuePolicyINS0_9EqMatcherIiEELb1EEEEEPKNS9_6VTableEvE7kVTable, ptr %i.bb, align 8, !tbaa !2675, !alias.scope !20430, !noalias !20429
  store i32 %i.ax, ptr %i.bc, align 8, !alias.scope !20430, !noalias !20429
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEEE, i64 16), ptr %i.ba, align 8, !tbaa !797, !alias.scope !20430, !noalias !20429
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKiEE, i64 16), ptr %i.bd, align 8, !tbaa !797, !alias.scope !20431, !noalias !20429
  %.sroa.11.16.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i32 %i.az to i64
  store ptr @_ZZN7testing8internal11MatcherBaseIRKiE9GetVTableINS4_11ValuePolicyINS0_9EqMatcherIiEELb1EEEEEPKNS4_6VTableEvE7kVTable, ptr %i.be, align 8, !tbaa !1712, !alias.scope !20431, !noalias !20429
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  store i64 %.sroa.11.16.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.bf, align 8, !tbaa !794, !alias.scope !20431, !noalias !20429
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEE9GetVTableINSC_11ValuePolicyIPKNS_16MatcherInterfaceISB_EELb1EEEEEPKNSC_6VTableEvE7kVTable, ptr %i.bg, align 8, !tbaa !2691, !alias.scope !20429
  %i.bi = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #35, !noalias !20429 ; 3 uses
  store i32 1, ptr %i.bi, align 4, !tbaa !1707, !noalias !20429
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = ptrtoint ptr %i.aw to i64
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !2693, !noalias !20429
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !794, !alias.scope !20429
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEEE, i64 16), ptr %2, align 8, !tbaa !797, !alias.scope !20429
  invoke fastcc void @_ZNSt6vectorIN7testing7MatcherIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEEESaISC_EE9push_backEOSC_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEEESaISD_EEEaSEOSD_.exit.i.i.i.i unwind label %bb.k

_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEEESaISD_EEEaSEOSD_.exit.i.i.i.i: ; preds = %_ZN7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEED2Ev.exit.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !tbaa !2691 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN7testing8internal26TransformTupleValuesHelperISt5tupleIJNS0_11PairMatcherIiiEES4_S4_EENS0_22CastAndAppendTransformIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEEESt20back_insert_iteratorISt6vectorINS_7MatcherISG_EESaISL_EEEE3RunESH_RKS5_SO_.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEE8IsSharedEv.exit.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEE8IsSharedEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEEESaISD_EEEaSEOSD_.exit.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !2695
  %.not.i.i.i4.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i4.i.i.i, label %_ZN7testing8internal26TransformTupleValuesHelperISt5tupleIJNS0_11PairMatcherIiiEES4_S4_EENS0_22CastAndAppendTransformIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEEESt20back_insert_iteratorISt6vectorINS_7MatcherISG_EESaISL_EEEE3RunESH_RKS5_SO_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEE8IsSharedEv.exit.i.i.i.i.i.i
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !794 ; 2 uses
  %i.bo = atomicrmw add ptr %i.bn, i32 -1 acq_rel, align 4
  %i.bp = icmp eq i32 %i.bo, 1
  br i1 %i.bp, label %bb.i, label %_ZN7testing8internal26TransformTupleValuesHelperISt5tupleIJNS0_11PairMatcherIiiEES4_S4_EENS0_22CastAndAppendTransformIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEEESt20back_insert_iteratorISt6vectorINS_7MatcherISG_EESaISL_EEEE3RunESH_RKS5_SO_.exit

bb.i:                                             ; preds = %bb.h
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !2695
  invoke void %i.bq(ptr noundef %i.bn)
          to label %_ZN7testing8internal26TransformTupleValuesHelperISt5tupleIJNS0_11PairMatcherIiiEES4_S4_EENS0_22CastAndAppendTransformIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEEESt20back_insert_iteratorISt6vectorINS_7MatcherISG_EESaISL_EEEE3RunESH_RKS5_SO_.exit unwind label %bb.j, !inline_history !705

bb.j:                                             ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  tail call void @__clang_call_terminate(ptr %i.bs) #39, !inline_history !2696
  unreachable

common.resume.i.i:                                ; preds = %bb.m, %bb.l, %bb.k
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.bv, %bb.m ], [ %i.bt, %bb.k ], [ %i.bu, %bb.l ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.k:                                             ; preds = %_ZN7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEED2Ev.exit.i.i.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume.i.i

bb.l:                                             ; preds = %_ZN7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEED2Ev.exit.i.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %common.resume.i.i

bb.m:                                             ; preds = %bb.a
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %common.resume.i.i

_ZN7testing8internal26TransformTupleValuesHelperISt5tupleIJNS0_11PairMatcherIiiEES4_S4_EENS0_22CastAndAppendTransformIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEEESt20back_insert_iteratorISt6vectorINS_7MatcherISG_EESaISL_EEEE3RunESH_RKS5_SO_.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEEESaISD_EEEaSEOSD_.exit.i.i.i.i, %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKN4absl12lts_2026052618container_internal12_GLOBAL__N_113NotAssignableEiEE8IsSharedEv.exit.i.i.i.i.i.i, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret ptr %1
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE16internal_emplaceIJPNS1_13map_slot_typeIS5_iEEEEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSA_PSA_EESQ_DpOT_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr %1, i32 %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.4450", align 8 ; 6 uses
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 11
  %.val = load i8, ptr %i.b, align 1, !tbaa !794  ; 2 uses
  %.not.i = icmp eq i8 %.val, 0
  br i1 %.not.i, label %.thread.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert18 = getelementptr i8, ptr %1, i64 10
  %.val5.pre = load i8, ptr %.phi.trans.insert18, align 1, !tbaa !794
  br label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.d = and i32 %2, 255
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.e
  %.11727.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !2659 ; 3 uses
  %i.g = getelementptr i8, ptr %.11727.i.i.i, i64 11
  %.117.val2028.i.i.i = load i8, ptr %i.g, align 1, !tbaa !794 ; 2 uses
  %.not.i29.i.i.i = icmp eq i8 %.117.val2028.i.i.i, 0
  br i1 %.not.i29.i.i.i, label %.lr.ph31.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS6_ESaISt4pairIKS6_iEESt17integral_constantIiLi256EESD_IbLb1EEEEEEERSB_PSB_EmmEv.exit

.lr.ph31.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph31.i.i.i
  %.11730.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph31.i.i.i ], [ %.11727.i.i.i, %.thread.i.i ] ; 2 uses
  %i.h = getelementptr i8, ptr %.11730.i.i.i, i64 10
  %.117.val18.i.i.i = load i8, ptr %i.h, align 1, !tbaa !794
  %i.i = getelementptr inbounds nuw i8, ptr %.11730.i.i.i, i64 256
  %i.j = zext i8 %.117.val18.i.i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %.117.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !2659 ; 3 uses
  %i.l = getelementptr i8, ptr %.117.i.i.i, i64 11
  %.117.val20.i.i.i = load i8, ptr %i.l, align 1, !tbaa !794 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %.117.val20.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph31.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS6_ESaISt4pairIKS6_iEESt17integral_constantIiLi256EESD_IbLb1EEEEEEERSB_PSB_EmmEv.exit, !llvm.loop !689

_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS6_ESaISt4pairIKS6_iEESt17integral_constantIiLi256EESD_IbLb1EEEEEEERSB_PSB_EmmEv.exit: ; preds = %.lr.ph31.i.i.i, %.thread.i.i
  %.val4.pre = phi i8 [ %.117.val2028.i.i.i, %.thread.i.i ], [ %.117.val20.i.i.i, %.lr.ph31.i.i.i ]
  %.117.lcssa.i.i.i = phi ptr [ %.11727.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph31.i.i.i ] ; 3 uses
  %i.m = getelementptr i8, ptr %.117.lcssa.i.i.i, i64 10
  %.117.val.i.i.i = load i8, ptr %i.m, align 1, !tbaa !794 ; 2 uses
  %i.n = zext i8 %.117.val.i.i.i to i32
  store ptr %.117.lcssa.i.i.i, ptr %4, align 8
  store i32 %i.n, ptr %i.a, align 8, !tbaa !2702
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS6_ESaISt4pairIKS6_iEESt17integral_constantIiLi256EESD_IbLb1EEEEEEERSB_PSB_EmmEv.exit
  %.val5 = phi i8 [ %.117.val.i.i.i, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS6_ESaISt4pairIKS6_iEESt17integral_constantIiLi256EESD_IbLb1EEEEEEERSB_PSB_EmmEv.exit ], [ %.val5.pre, %._crit_edge ] ; 3 uses
  %.val4 = phi i8 [ %.val4.pre, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS6_ESaISt4pairIKS6_iEESt17integral_constantIiLi256EESD_IbLb1EEEEEEERSB_PSB_EmmEv.exit ], [ %.val, %._crit_edge ]
  %i.o = phi ptr [ %.117.lcssa.i.i.i, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS6_ESaISt4pairIKS6_iEESt17integral_constantIiLi256EESD_IbLb1EEEEEEERSB_PSB_EmmEv.exit ], [ %1, %._crit_edge ] ; 5 uses
  %i.p = getelementptr i8, ptr %i.o, i64 10       ; 2 uses
  %i.q = icmp eq i8 %.val5, %.val4
  br i1 %i.q, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i8 %.val5, 30
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = shl nuw nsw i8 %.val5, 1
  %i.t = tail call i8 @llvm.umin.i8(i8 %i.s, i8 30) ; 2 uses
  %i.u = shl nuw i8 %i.t, 3
  %i.v = zext i8 %i.u to i64
  %i.w = add nuw nsw i64 %i.v, 16
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #35 ; 13 uses
  store ptr %i.x, ptr %i.x, align 8, !tbaa !2659
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i8 0, ptr %i.y, align 8, !tbaa !794
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 9
  store i8 0, ptr %i.z, align 1, !tbaa !794
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 11
  store i8 %i.t, ptr %i.aa, align 1, !tbaa !794
  store ptr %i.x, ptr %4, align 8, !tbaa !2703
  %.val13.i.i = load i8, ptr %i.p, align 1, !tbaa !794 ; 3 uses
  %i.ab = zext i8 %.val13.i.i to i64
  %i.ac = getelementptr i8, ptr %i.o, i64 12      ; 7 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.ab, 3          ; 4 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 %.idx.i.i.i ; 2 uses
  %.not1.i.i.i = icmp eq i8 %.val13.i.i, 0
  br i1 %.not1.i.i.i, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE16internal_emplaceIJPNS1_13map_slot_typeIS5_iEEEEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSA_PSA_EESQ_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.ae = getelementptr i8, ptr %i.x, i64 12      ; 6 uses
  %i.af = add nsw i64 %.idx.i.i.i, -8             ; 2 uses
  %i.ag = lshr exact i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i9.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.i.i
  %i.ai = add nuw nsw i64 %.idx.i.i.i, 8          ; 2 uses
  %i.aj = getelementptr i8, ptr %i.x, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.o, i64 %i.ai
  %5 = getelementptr i8, ptr %i.x, i64 16
  %6 = getelementptr i8, ptr %i.x, i64 %.idx.i.i.i
  %7 = getelementptr i8, ptr %6, i64 12
  %i.al = getelementptr i8, ptr %i.o, i64 16
  %bound0 = icmp ult ptr %i.ae, %i.ak
  %bound1 = icmp ult ptr %i.ac, %i.aj
  %found.conflict = and i1 %bound0, %bound1
  %bound08 = icmp ult ptr %5, %i.ad
  %bound19 = icmp ult ptr %i.al, %7
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %.lr.ph.i.i.i9.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.ae, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.ac, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3                       ; 3 uses
  %i.aq = or disjoint i64 %i.ap, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ae, i64 %i.ap
  %next.gep11 = getelementptr i8, ptr %i.ae, i64 %i.aq
  %next.gep12 = getelementptr i8, ptr %i.ac, i64 %i.ap
  %next.gep13 = getelementptr i8, ptr %i.ac, i64 %i.aq
  %wide.vec = load <4 x i32>, ptr %next.gep12, align 4, !tbaa !783
  %wide.vec15 = load <4 x i32>, ptr %next.gep13, align 4, !tbaa !783
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !783
  store <4 x i32> %wide.vec15, ptr %next.gep11, align 4, !tbaa !783
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !20432

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE16internal_emplaceIJPNS1_13map_slot_typeIS5_iEEEEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSA_PSA_EESQ_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i9.preheader

.lr.ph.i.i.i9.preheader:                          ; preds = %vector.memcheck, %.lr.ph.preheader.i.i.i, %middle.block
  %.03.i.i.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.preheader.i.i.i ], [ %i.an, %middle.block ]
  %.0122.i.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.preheader.i.i.i ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i9

.lr.ph.i.i.i9:                                    ; preds = %.lr.ph.i.i.i9.preheader, %.lr.ph.i.i.i9
  %.03.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i9 ], [ %.03.i.i.i.ph, %.lr.ph.i.i.i9.preheader ] ; 2 uses
  %.0122.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i9 ], [ %.0122.i.i.i.ph, %.lr.ph.i.i.i9.preheader ] ; 2 uses
  %i.as = load <2 x i32>, ptr %.0122.i.i.i, align 4, !tbaa !783
  store <2 x i32> %i.as, ptr %.03.i.i.i, align 4, !tbaa !783
  %i.at = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 8
  %.not.i.i.i10 = icmp eq ptr %i.at, %i.ad
  br i1 %.not.i.i.i10, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE16internal_emplaceIJPNS1_13map_slot_typeIS5_iEEEEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSA_PSA_EESQ_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i9, !llvm.loop !20433

_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE16internal_emplaceIJPNS1_13map_slot_typeIS5_iEEEEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSA_PSA_EESQ_DpOT_ENKUlhE_clEh.exit: ; preds = %.lr.ph.i.i.i9, %middle.block, %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  store i8 %.val13.i.i, ptr %i.av, align 2, !tbaa !794
  store i8 0, ptr %i.p, align 1, !tbaa !794
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE16clear_and_deleteEPSG_PSB_(ptr noundef nonnull %i.o)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.aw, align 8, !tbaa !2659
  store ptr %i.x, ptr %0, align 8, !tbaa !2659
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISF_EERSA_PSA_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %4)
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE16internal_emplaceIJPNS1_13map_slot_typeIS5_iEEEEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSA_PSA_EESQ_DpOT_ENKUlhE_clEh.exit, %bb.e, %bb.b
  %i.ax = load ptr, ptr %4, align 8, !tbaa !2703  ; 5 uses
  %i.ay = load i32, ptr %i.a, align 8, !tbaa !2702 ; 2 uses
  %i.az = trunc i32 %i.ay to i8                   ; 2 uses
  %.val8 = load ptr, ptr %3, align 8
  %i.ba = and i32 %i.ay, 255                      ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ax, i64 10     ; 3 uses
  %.val21.i = load i8, ptr %i.bb, align 1, !tbaa !794 ; 3 uses
  %i.bc = icmp ugt i8 %.val21.i, %i.az
  %i.bd = zext nneg i32 %i.ba to i64              ; 4 uses
  br i1 %i.bc, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.bf = getelementptr [8 x i8], ptr %i.be, i64 %i.bd ; 3 uses
  %narrow.i = sub nuw i8 %.val21.i, %i.az
  %i.bg = zext i8 %narrow.i to i64                ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.bg, 3            ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bf, i64 8
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.bg ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bf, i64 %.idx.i.i ; 2 uses
  %i.bk = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.bl = lshr exact i64 %i.bk, 3
  %i.bm = add nuw nsw i64 %i.bl, 1
  %xtraiter = and i64 %i.bm, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %.03.i.i.prol = phi ptr [ %i.bn, %.lr.ph.i.i.prol ], [ %i.bi, %.lr.ph.preheader.i.i ]
  %.0142.i.i.prol = phi ptr [ %i.bo, %.lr.ph.i.i.prol ], [ %i.bj, %.lr.ph.preheader.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.bn = getelementptr inbounds i8, ptr %.03.i.i.prol, i64 -8 ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %.0142.i.i.prol, i64 -8 ; 3 uses
  %i.bp = load <2 x i32>, ptr %i.bo, align 4, !tbaa !783
  store <2 x i32> %i.bp, ptr %i.bn, align 4, !tbaa !783
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !20434

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.03.i.i.unr = phi ptr [ %i.bi, %.lr.ph.preheader.i.i ], [ %i.bn, %.lr.ph.i.i.prol ]
  %.0142.i.i.unr = phi ptr [ %i.bj, %.lr.ph.preheader.i.i ], [ %i.bo, %.lr.ph.i.i.prol ]
  %i.bq = icmp ult i64 %i.bk, 56
  br i1 %i.bq, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.03.i.i = phi ptr [ %i.cm, %.lr.ph.i.i ], [ %.03.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 8 uses
  %.0142.i.i = phi ptr [ %i.cn, %.lr.ph.i.i ], [ %.0142.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 8 uses
  %i.br = getelementptr inbounds i8, ptr %.03.i.i, i64 -8
  %i.bs = getelementptr inbounds i8, ptr %.0142.i.i, i64 -8
  %i.bt = load <2 x i32>, ptr %i.bs, align 4, !tbaa !783
  store <2 x i32> %i.bt, ptr %i.br, align 4, !tbaa !783
  %i.bu = getelementptr inbounds i8, ptr %.03.i.i, i64 -16
  %i.bv = getelementptr inbounds i8, ptr %.0142.i.i, i64 -16
  %i.bw = load <2 x i32>, ptr %i.bv, align 4, !tbaa !783
  store <2 x i32> %i.bw, ptr %i.bu, align 4, !tbaa !783
  %i.bx = getelementptr inbounds i8, ptr %.03.i.i, i64 -24
  %i.by = getelementptr inbounds i8, ptr %.0142.i.i, i64 -24
  %i.bz = load <2 x i32>, ptr %i.by, align 4, !tbaa !783
  store <2 x i32> %i.bz, ptr %i.bx, align 4, !tbaa !783
  %i.ca = getelementptr inbounds i8, ptr %.03.i.i, i64 -32
  %i.cb = getelementptr inbounds i8, ptr %.0142.i.i, i64 -32
  %i.cc = load <2 x i32>, ptr %i.cb, align 4, !tbaa !783
  store <2 x i32> %i.cc, ptr %i.ca, align 4, !tbaa !783
  %i.cd = getelementptr inbounds i8, ptr %.03.i.i, i64 -40
  %i.ce = getelementptr inbounds i8, ptr %.0142.i.i, i64 -40
  %i.cf = load <2 x i32>, ptr %i.ce, align 4, !tbaa !783
  store <2 x i32> %i.cf, ptr %i.cd, align 4, !tbaa !783
  %i.cg = getelementptr inbounds i8, ptr %.03.i.i, i64 -48
  %i.ch = getelementptr inbounds i8, ptr %.0142.i.i, i64 -48
  %i.ci = load <2 x i32>, ptr %i.ch, align 4, !tbaa !783
  store <2 x i32> %i.ci, ptr %i.cg, align 4, !tbaa !783
  %i.cj = getelementptr inbounds i8, ptr %.03.i.i, i64 -56
  %i.ck = getelementptr inbounds i8, ptr %.0142.i.i, i64 -56
  %i.cl = load <2 x i32>, ptr %i.ck, align 4, !tbaa !783
  store <2 x i32> %i.cl, ptr %i.cj, align 4, !tbaa !783
  %i.cm = getelementptr inbounds i8, ptr %.03.i.i, i64 -64 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %.0142.i.i, i64 -64 ; 3 uses
  %i.co = load <2 x i32>, ptr %i.cn, align 4, !tbaa !783
  store <2 x i32> %i.co, ptr %i.cm, align 4, !tbaa !783
  %.not.i.i12.7 = icmp eq ptr %i.cn, %i.bf
  br i1 %.not.i.i12.7, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !710

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.val19.pre.i = load i8, ptr %i.bb, align 1, !tbaa !794
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit.loopexit.i, %bb.f
  %.val19.i = phi i8 [ %.val19.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit.loopexit.i ], [ %.val21.i, %bb.f ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.bd
  %i.cr = load <2 x i32>, ptr %.val8, align 4, !tbaa !783
  store <2 x i32> %i.cr, ptr %i.cq, align 4, !tbaa !783
  %i.cs = add i8 %.val19.i, 1                     ; 3 uses
  store i8 %i.cs, ptr %i.bb, align 1, !tbaa !794
  %i.ct = getelementptr i8, ptr %i.ax, i64 11
  %.val22.i = load i8, ptr %i.ct, align 1, !tbaa !794
  %.not.i25.i = icmp eq i8 %.val22.i, 0
  br i1 %.not.i25.i, label %bb.g, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE13emplace_valueIJPNS1_13map_slot_typeIS5_iEEEEEvhPSB_DpOT_.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit.i
  %i.cu = zext i8 %i.cs to i32
  %i.cv = add nuw nsw i32 %i.ba, 1                ; 2 uses
  %i.cw = icmp samesign ult i32 %i.cv, %i.cu
  br i1 %i.cw, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE13emplace_valueIJPNS1_13map_slot_typeIS5_iEEEEEvhPSB_DpOT_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ax, i64 256 ; 10 uses
  %i.cy = zext i8 %i.cs to i64                    ; 4 uses
  %i.cz = zext nneg i32 %i.cv to i64
  %i.da = xor i64 %i.bd, -1
  %i.db = add nsw i64 %i.da, %i.cy
  %i.dc = add nsw i64 %i.cy, -2
  %i.dd = sub nsw i64 %i.dc, %i.bd
  %xtraiter20 = and i64 %i.db, 3                  ; 2 uses
  %lcmp.mod21.not = icmp eq i64 %xtraiter20, 0
  br i1 %lcmp.mod21.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.de, %.prol.preheader ], [ %i.cy, %.lr.ph.i ] ; 3 uses
  %prol.iter22 = phi i64 [ %prol.iter22.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.de = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !2659 ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.prol
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !2659
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dj = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.dj, ptr %i.di, align 1, !tbaa !794
  %prol.iter22.next = add i64 %prol.iter22, 1     ; 2 uses
  %prol.iter22.cmp.not = icmp eq i64 %prol.iter22.next, %xtraiter20
  br i1 %prol.iter22.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !20435

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.unr = phi i64 [ %i.cy, %.lr.ph.i ], [ %i.de, %.prol.preheader ]
  %i.dk = icmp ult i64 %i.dd, 3
  br i1 %i.dk, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE13emplace_valueIJPNS1_13map_slot_typeIS5_iEEEEEvhPSB_DpOT_.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISF_EERSA_PSA_EE:bb.a
bb.r:                                             ; preds = %bb.o
  %i.bv = tail call noalias noundef nonnull dereferenceable(504) ptr @_Znwm(i64 noundef 504) #35 ; 7 uses
  store ptr %.083, ptr %i.bv, align 8, !tbaa !2659
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i8 %i.bk, ptr %i.bw, align 8, !tbaa !794
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 9
  store i8 0, ptr %i.bx, align 1, !tbaa !794
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 10
  store i8 0, ptr %i.by, align 2, !tbaa !794
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 11
  store i8 0, ptr %i.bz, align 1, !tbaa !794
  %i.ca = load ptr, ptr %1, align 8, !tbaa !2659
  %i.cb = load i32, ptr %i.a, align 8, !tbaa !783
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE5splitEiPSG_PSB_(ptr noundef nonnull align 1 dereferenceable(1) %i.ca, i32 noundef %i.cb, ptr noundef nonnull %i.bv)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.0 = phi ptr [ %i.bl, %bb.q ], [ %i.bl, %bb.p ], [ %i.bv, %bb.r ]
  %i.cc = load i32, ptr %i.a, align 8, !tbaa !783 ; 2 uses
  %i.cd = load ptr, ptr %1, align 8, !tbaa !2659
  %i.ce = getelementptr i8, ptr %i.cd, i64 10
  %.val = load i8, ptr %i.ce, align 1, !tbaa !794
  %i.cf = zext i8 %.val to i32                    ; 2 uses
  %i.cg = icmp sgt i32 %i.cc, %i.cf
  br i1 %i.cg, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.ch = xor i32 %i.cf, -1
  %i.ci = add nsw i32 %i.cc, %i.ch
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.t, %bb.f, %bb.k
  %.sink149 = phi i32 [ %i.ax, %bb.k ], [ %i.y, %bb.f ], [ %i.ci, %bb.t ]
  %.sink = phi ptr [ %i.af, %bb.k ], [ %i.h, %bb.f ], [ %.0, %bb.t ]
  store i32 %.sink149, ptr %i.a, align 8, !tbaa !783
  store ptr %.sink, ptr %1, align 8, !tbaa !2659
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.j, %bb.e, %bb.s
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE16clear_and_deleteEPSG_PSB_(ptr noundef %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 11
  %.val55 = load i8, ptr %i.a, align 1, !tbaa !794 ; 2 uses
  %.not1 = icmp eq i8 %.val55, 0
  br i1 %.not1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i8 %.val55 to i64
  %i.c = shl nuw nsw i64 %i.b, 3
  %i.d = add nuw nsw i64 %i.c, 16
  br label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 10
  %.val66 = load i8, ptr %i.e, align 1, !tbaa !794
  %i.f = icmp eq i8 %.val66, 0
  br i1 %i.f, label %.loopexit.sink.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %.val59 = load ptr, ptr %0, align 8, !tbaa !2659
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0497 = phi ptr [ %.049.val69, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %i.g = getelementptr i8, ptr %.0497, i64 256
  %.049.val69 = load ptr, ptr %i.g, align 8, !tbaa !2659 ; 4 uses
  %i.h = getelementptr i8, ptr %.049.val69, i64 11
  %.049.val62 = load i8, ptr %i.h, align 1, !tbaa !794
  %.not.i = icmp eq i8 %.049.val62, 0
  br i1 %.not.i, label %.lr.ph, label %._crit_edge, !llvm.loop !20436

._crit_edge:                                      ; preds = %.lr.ph
  %i.i = getelementptr i8, ptr %.049.val69, i64 8
  %.049.val = load i8, ptr %i.i, align 1, !tbaa !794
  %i.j = zext i8 %.049.val to i64
  %.049.val58 = load ptr, ptr %.049.val69, align 8, !tbaa !2659
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %._crit_edge
  %.147 = phi i64 [ %i.j, %._crit_edge ], [ %.147.be, %.backedge ] ; 2 uses
  %.1 = phi ptr [ %.049.val58, %._crit_edge ], [ %.1.be, %.backedge ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.1, i64 256
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.147
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2659 ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 11
  %.val61 = load i8, ptr %i.n, align 1, !tbaa !794 ; 2 uses
  %.not.i70 = icmp eq i8 %.val61, 0
  br i1 %.not.i70, label %.lr.ph11, label %bb.e

.lr.ph11:                                         ; preds = %bb.d, %.lr.ph11
  %.15010 = phi ptr [ %.150.val68, %.lr.ph11 ], [ %i.m, %bb.d ]
  %i.o = getelementptr i8, ptr %.15010, i64 256
  %.150.val68 = load ptr, ptr %i.o, align 8, !tbaa !2659 ; 5 uses
  %i.p = getelementptr i8, ptr %.150.val68, i64 11
  %.150.val60 = load i8, ptr %i.p, align 1, !tbaa !794 ; 2 uses
  %.not.i71 = icmp eq i8 %.150.val60, 0
  br i1 %.not.i71, label %.lr.ph11, label %._crit_edge12, !llvm.loop !20437

._crit_edge12:                                    ; preds = %.lr.ph11
  %i.q = getelementptr i8, ptr %.150.val68, i64 8
  %.150.val = load i8, ptr %i.q, align 1, !tbaa !794
  %i.r = zext i8 %.150.val to i64
  %.150.val57 = load ptr, ptr %.150.val68, align 8, !tbaa !2659
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge12, %bb.d
  %.251.val = phi i8 [ %.150.val60, %._crit_edge12 ], [ %.val61, %bb.d ]
  %.251 = phi ptr [ %.150.val68, %._crit_edge12 ], [ %i.m, %bb.d ]
  %.248 = phi i64 [ %i.r, %._crit_edge12 ], [ %.147, %bb.d ] ; 2 uses
  %.2 = phi ptr [ %.150.val57, %._crit_edge12 ], [ %.1, %bb.d ] ; 3 uses
  %i.s = zext i8 %.251.val to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 16
  tail call void @_ZdlPvm(ptr noundef nonnull %.251, i64 noundef %i.u) #36
  %i.v = getelementptr i8, ptr %.2, i64 10
  %.2.val = load i8, ptr %i.v, align 1, !tbaa !794
  %i.w = zext i8 %.2.val to i64
  %.not.not = icmp samesign ult i64 %.248, %i.w
  br i1 %.not.not, label %.backedge, label %.preheader2

.backedge:                                        ; preds = %bb.e, %bb.g
  %.147.be.in = phi i64 [ %.248, %bb.e ], [ %i.aa, %bb.g ]
  %.1.be = phi ptr [ %.2, %bb.e ], [ %.3.val56, %bb.g ]
  %.147.be = add nuw nsw i64 %.147.be.in, 1
  br label %bb.d

.preheader2:                                      ; preds = %bb.e, %bb.f
  %.3 = phi ptr [ %.3.val56, %bb.f ], [ %.2, %bb.e ] ; 3 uses
  %i.x = getelementptr i8, ptr %.3, i64 8
  %.3.val = load i8, ptr %i.x, align 1, !tbaa !794 ; 2 uses
  %.3.val56 = load ptr, ptr %.3, align 8, !tbaa !2659 ; 4 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.3, i64 noundef 504) #36
  %i.y = icmp eq ptr %.3.val56, %.val59
  br i1 %i.y, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.preheader2
  %i.z = getelementptr i8, ptr %.3.val56, i64 10
  %.val = load i8, ptr %i.z, align 1, !tbaa !794
  %.not = icmp ult i8 %.3.val, %.val
  br i1 %.not, label %bb.g, label %.preheader2, !llvm.loop !20438

bb.g:                                             ; preds = %bb.f
  %i.aa = zext i8 %.3.val to i64
  br label %.backedge

.loopexit.sink.split:                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ %i.d, %bb.b ], [ 504, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef %.sink) #36
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader2, %.loopexit.sink.split
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE23rebalance_right_to_leftEhPSG_PSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #27 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 10         ; 6 uses
  %.val48 = load i8, ptr %i.a, align 1, !tbaa !794
  %i.b = zext i8 %.val48 to i64                   ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val50 = load i8, ptr %i.c, align 1, !tbaa !794
  %i.d = zext i8 %.val50 to i64                   ; 2 uses
  %.val52 = load ptr, ptr %0, align 8, !tbaa !2659
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.b ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val52, i64 12 ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.d
  %i.i = load <2 x i32>, ptr %i.h, align 4, !tbaa !783
  store <2 x i32> %i.i, ptr %i.f, align 4, !tbaa !783
  %i.j = zext i8 %1 to i32                        ; 3 uses
  %i.k = add nsw i32 %i.j, -1                     ; 3 uses
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = getelementptr i8, ptr %2, i64 12         ; 13 uses
  %.idx.i = shl nsw i64 %i.l, 3
  %i.n = getelementptr i8, ptr %i.m, i64 %.idx.i  ; 2 uses
  %.not1.i = icmp eq i32 %i.k, 0
  br i1 %.not1.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.o = zext i8 %1 to i64                        ; 2 uses
  %i.p = add nuw nsw i64 %i.o, 2305843009213693950
  %i.q = and i64 %i.p, 2305843009213693951        ; 2 uses
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.q, 29
  br i1 %min.iters.check, label %.lr.ph.i.preheader54, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.s = shl nuw nsw i64 %i.b, 3                  ; 3 uses
  %i.t = getelementptr i8, ptr %0, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 20
  %i.v = shl nuw nsw i64 %i.o, 3                  ; 2 uses
  %i.w = add nuw nsw i64 %i.s, %i.v               ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %i.z = getelementptr i8, ptr %2, i64 %i.v
  %3 = getelementptr i8, ptr %0, i64 %i.s
  %4 = getelementptr i8, ptr %3, i64 24
  %5 = getelementptr i8, ptr %0, i64 %i.w
  %i.aa = getelementptr i8, ptr %5, i64 12
  %i.ab = getelementptr i8, ptr %2, i64 16
  %bound0 = icmp ult ptr %i.u, %i.z
  %bound1 = icmp ult ptr %i.m, %i.y
  %found.conflict = and i1 %bound0, %bound1
  %bound018 = icmp ult ptr %4, %i.n
  %bound119 = icmp ult ptr %i.ab, %i.aa
  %found.conflict20 = and i1 %bound018, %bound119
  %conflict.rdx = or i1 %found.conflict, %found.conflict20
  br i1 %conflict.rdx, label %.lr.ph.i.preheader54, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.r, 4611686018427387900      ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.f, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.m, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 3 uses
  %i.ag = or disjoint i64 %i.af, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.af
  %next.gep21 = getelementptr i8, ptr %i.f, i64 %i.ag
  %next.gep22 = getelementptr i8, ptr %i.m, i64 %i.af
  %next.gep23 = getelementptr i8, ptr %i.m, i64 %i.ag
  %i.ah = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %next.gep21, i64 8
  %wide.vec = load <4 x i32>, ptr %next.gep22, align 4, !tbaa !783
  %wide.vec25 = load <4 x i32>, ptr %next.gep23, align 4, !tbaa !783
  store <4 x i32> %wide.vec, ptr %i.ah, align 4, !tbaa !783
  store <4 x i32> %wide.vec25, ptr %i.ai, align 4, !tbaa !783
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !20439

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.loopexit, label %.lr.ph.i.preheader54

.lr.ph.i.preheader54:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.03.i.pn.ph = phi ptr [ %i.f, %vector.memcheck ], [ %i.f, %.lr.ph.i.preheader ], [ %i.ad, %middle.block ]
  %.0122.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader54, %.lr.ph.i
  %.03.i.pn = phi ptr [ %.03.i, %.lr.ph.i ], [ %.03.i.pn.ph, %.lr.ph.i.preheader54 ]
  %.0122.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.0122.i.ph, %.lr.ph.i.preheader54 ] ; 2 uses
  %.03.i = getelementptr inbounds nuw i8, ptr %.03.i.pn, i64 8 ; 2 uses
  %i.ak = load <2 x i32>, ptr %.0122.i, align 4, !tbaa !783
  store <2 x i32> %i.ak, ptr %.03.i, align 4, !tbaa !783
  %i.al = getelementptr inbounds nuw i8, ptr %.0122.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.al, %i.n
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.loopexit, label %.lr.ph.i, !llvm.loop !20440

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.val49.pre = load i8, ptr %i.c, align 8, !tbaa !794
  %.pre = zext i8 %.val49.pre to i64
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.loopexit ], [ %i.d, %bb.a ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.pre-phi
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.ao = load <2 x i32>, ptr %i.an, align 4, !tbaa !783
  store <2 x i32> %i.ao, ptr %i.am, align 4, !tbaa !783
  %i.ap = getelementptr i8, ptr %2, i64 10        ; 5 uses
  %.val54 = load i8, ptr %i.ap, align 1, !tbaa !794 ; 3 uses
  %i.aq = zext i8 %.val54 to i32
  %i.ar = sub nsw i32 %i.aq, %i.j
  %i.as = sext i32 %i.ar to i64
  %i.at = zext i8 %1 to i64                       ; 4 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.at ; 5 uses
  %.idx.i57 = shl nuw nsw i64 %i.as, 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx.i57
  %.not1.i58 = icmp eq i8 %.val54, %1
  br i1 %.not1.i58, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit66, label %.lr.ph.i60.preheader

.lr.ph.i60.preheader:                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit
  %i.aw = zext i8 %.val54 to i64
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = shl nuw nsw i64 %i.at, 3
  %i.az = add nsw i64 %i.ax, -8
  %i.ba = sub nsw i64 %i.az, %i.ay                ; 2 uses
  %i.bb = lshr exact i64 %i.ba, 3
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check31 = icmp ult i64 %i.ba, 24
  br i1 %min.iters.check31, label %.lr.ph.i60.preheader53, label %vector.ph32

vector.ph32:                                      ; preds = %.lr.ph.i60.preheader
  %n.vec33 = and i64 %i.bc, 4611686018427387900   ; 3 uses
  %i.bd = shl i64 %n.vec33, 3                     ; 2 uses
  %i.be = getelementptr i8, ptr %i.m, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.au, i64 %i.bd
  br label %vector.body34

vector.body34:                                    ; preds = %vector.body34, %vector.ph32
  %index35 = phi i64 [ 0, %vector.ph32 ], [ %index.next48, %vector.body34 ] ; 2 uses
  %i.bg = shl i64 %index35, 3                     ; 3 uses
  %i.bh = or disjoint i64 %i.bg, 16               ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.m, i64 %i.bg
  %next.gep37 = getelementptr i8, ptr %i.m, i64 %i.bh
  %next.gep38 = getelementptr i8, ptr %i.au, i64 %i.bg
  %next.gep39 = getelementptr i8, ptr %i.au, i64 %i.bh
  %wide.vec40 = load <4 x i32>, ptr %next.gep38, align 4, !tbaa !783
  %wide.vec43 = load <4 x i32>, ptr %next.gep39, align 4, !tbaa !783
  store <4 x i32> %wide.vec40, ptr %next.gep36, align 4, !tbaa !783
  store <4 x i32> %wide.vec43, ptr %next.gep37, align 4, !tbaa !783
  %index.next48 = add nuw i64 %index35, 4         ; 2 uses
  %i.bi = icmp eq i64 %index.next48, %n.vec33
  br i1 %i.bi, label %middle.block49, label %vector.body34, !llvm.loop !20441

middle.block49:                                   ; preds = %vector.body34
  %cmp.n50 = icmp eq i64 %i.bc, %n.vec33
  br i1 %cmp.n50, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit66, label %.lr.ph.i60.preheader53

.lr.ph.i60.preheader53:                           ; preds = %.lr.ph.i60.preheader, %middle.block49
  %.03.i61.ph = phi ptr [ %i.m, %.lr.ph.i60.preheader ], [ %i.be, %middle.block49 ]
  %.0122.i62.ph = phi ptr [ %i.au, %.lr.ph.i60.preheader ], [ %i.bf, %middle.block49 ]
  br label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %.lr.ph.i60.preheader53, %.lr.ph.i60
  %.03.i61 = phi ptr [ %i.bl, %.lr.ph.i60 ], [ %.03.i61.ph, %.lr.ph.i60.preheader53 ] ; 2 uses
  %.0122.i62 = phi ptr [ %i.bk, %.lr.ph.i60 ], [ %.0122.i62.ph, %.lr.ph.i60.preheader53 ] ; 2 uses
  %i.bj = load <2 x i32>, ptr %.0122.i62, align 4, !tbaa !783
  store <2 x i32> %i.bj, ptr %.03.i61, align 4, !tbaa !783
  %i.bk = getelementptr inbounds nuw i8, ptr %.0122.i62, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.03.i61, i64 8
  %.not.i65 = icmp eq ptr %i.bk, %i.av
  br i1 %.not.i65, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit66, label %.lr.ph.i60, !llvm.loop !20442

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit66: ; preds = %.lr.ph.i60, %middle.block49, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit
  %i.bm = getelementptr i8, ptr %0, i64 11
  %.val53 = load i8, ptr %i.bm, align 1, !tbaa !794
  %.not.i67 = icmp eq i8 %.val53, 0
  br i1 %.not.i67, label %.preheader1, label %.loopexit

.preheader1:                                      ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit66
  %.not7 = icmp eq i8 %1, 0
  br i1 %.not7, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader1
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %xtraiter = and i64 %i.at, 1
  %i.bp = icmp eq i32 %i.k, 0
  br i1 %i.bp, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.at, 254
  br label %bb.b

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod55 = trunc i8 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod55)
  %.val46.epil = load i8, ptr %i.a, align 2, !tbaa !794
  %i.bq = trunc i64 %indvars.iv.epil.init to i8
  %i.br = add i8 %i.bq, 1
  %i.bs = add i8 %.val46.epil, %i.br              ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.epil.init
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !2659 ; 3 uses
  %i.bv = zext i8 %i.bs to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bv
  store ptr %i.bu, ptr %i.bw, align 8, !tbaa !2659
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i8 %i.bs, ptr %i.bx, align 1, !tbaa !794
  store ptr %0, ptr %i.bu, align 8, !tbaa !2659
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader1
  %.val453 = load i8, ptr %i.ap, align 1, !tbaa !794
  %.not4 = icmp ult i8 %.val453, %1
  br i1 %.not4, label %.loopexit, label %.lr.ph6

.lr.ph6:                                          ; preds = %.preheader
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %.val46 = load i8, ptr %i.a, align 2, !tbaa !794
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bz = trunc nuw i64 %indvars.iv.next to i8
  %i.ca = add i8 %.val46, %i.bz                   ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !2659 ; 3 uses
  %i.cd = zext i8 %i.ca to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.cd
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !2659
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i8 %i.ca, ptr %i.cf, align 1, !tbaa !794
  store ptr %0, ptr %i.cc, align 8, !tbaa !2659
  %.val46.1 = load i8, ptr %i.a, align 2, !tbaa !794
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.cg = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.ch = add i8 %.val46.1, %i.cg                 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !2659 ; 3 uses
  %i.ck = zext i8 %i.ch to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.ck
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !2659
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i8 %i.ch, ptr %i.cm, align 1, !tbaa !794
  store ptr %0, ptr %i.cj, align 8, !tbaa !2659
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !20443

bb.c:                                             ; preds = %.lr.ph6, %bb.c
  %.05 = phi i8 [ 0, %.lr.ph6 ], [ %i.cu, %bb.c ] ; 4 uses
  %i.cn = add i8 %.05, %1
  %i.co = zext i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !2659 ; 3 uses
  %i.cr = zext i8 %.05 to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cr
  store ptr %i.cq, ptr %i.cs, align 8, !tbaa !2659
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i8 %.05, ptr %i.ct, align 1, !tbaa !794
  store ptr %2, ptr %i.cq, align 8, !tbaa !2659
  %i.cu = add i8 %.05, 1                          ; 2 uses
  %i.cv = zext i8 %i.cu to i32
  %.val45 = load i8, ptr %i.ap, align 1, !tbaa !794
  %i.cw = zext i8 %.val45 to i32
  %i.cx = sub nsw i32 %i.cw, %i.j
  %.not = icmp slt i32 %i.cx, %i.cv
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !20444

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit66
  %.val44 = load i8, ptr %i.a, align 2, !tbaa !794
  %i.cy = add i8 %.val44, %1
  store i8 %i.cy, ptr %i.a, align 2, !tbaa !794
  %.val = load i8, ptr %i.ap, align 1, !tbaa !794
  %i.cz = sub i8 %.val, %1
  store i8 %i.cz, ptr %i.ap, align 1, !tbaa !794
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE23rebalance_left_to_rightEhPSG_PSB_(ptr nofree noundef nonnull align 1 captures(address) dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #27 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 10         ; 4 uses
  %.val58 = load i8, ptr %i.a, align 1, !tbaa !794 ; 2 uses
  %i.b = zext i8 %1 to i32                        ; 2 uses
  %i.c = getelementptr i8, ptr %2, i64 12         ; 10 uses
  %.not1.i = icmp eq i8 %.val58, 0
  br i1 %.not1.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.d = zext i8 %.val58 to i64                   ; 2 uses
  %i.e = zext i8 %1 to i64
  %.idx.i = shl nuw nsw i64 %i.d, 3               ; 2 uses
  %i.f = getelementptr [8 x i8], ptr %i.c, i64 %i.e
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %i.d ; 2 uses
  %i.h = getelementptr i8, ptr %i.c, i64 %.idx.i  ; 2 uses
  %i.i = add nsw i64 %.idx.i, -8                  ; 2 uses
  %i.j = lshr exact i64 %i.i, 3
  %i.k = add nuw nsw i64 %i.j, 1
  %xtraiter = and i64 %i.k, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %.03.i.prol = phi ptr [ %i.l, %.lr.ph.i.prol ], [ %i.g, %.lr.ph.preheader.i ]
  %.0142.i.prol = phi ptr [ %i.m, %.lr.ph.i.prol ], [ %i.h, %.lr.ph.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.l = getelementptr inbounds i8, ptr %.03.i.prol, i64 -8 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.0142.i.prol, i64 -8 ; 3 uses
  %i.n = load <2 x i32>, ptr %i.m, align 4, !tbaa !783
  store <2 x i32> %i.n, ptr %i.l, align 4, !tbaa !783
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !20445

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.03.i.unr = phi ptr [ %i.g, %.lr.ph.preheader.i ], [ %i.l, %.lr.ph.i.prol ]
  %.0142.i.unr = phi ptr [ %i.h, %.lr.ph.preheader.i ], [ %i.m, %.lr.ph.i.prol ]
  %i.o = icmp ult i64 %i.i, 56
  br i1 %i.o, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.03.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %.03.i.unr, %.lr.ph.i.prol.loopexit ] ; 8 uses
  %.0142.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.0142.i.unr, %.lr.ph.i.prol.loopexit ] ; 8 uses
  %i.p = getelementptr inbounds i8, ptr %.03.i, i64 -8
  %i.q = getelementptr inbounds i8, ptr %.0142.i, i64 -8
  %i.r = load <2 x i32>, ptr %i.q, align 4, !tbaa !783
  store <2 x i32> %i.r, ptr %i.p, align 4, !tbaa !783
  %i.s = getelementptr inbounds i8, ptr %.03.i, i64 -16
  %i.t = getelementptr inbounds i8, ptr %.0142.i, i64 -16
  %i.u = load <2 x i32>, ptr %i.t, align 4, !tbaa !783
  store <2 x i32> %i.u, ptr %i.s, align 4, !tbaa !783
  %i.v = getelementptr inbounds i8, ptr %.03.i, i64 -24
  %i.w = getelementptr inbounds i8, ptr %.0142.i, i64 -24
  %i.x = load <2 x i32>, ptr %i.w, align 4, !tbaa !783
  store <2 x i32> %i.x, ptr %i.v, align 4, !tbaa !783
  %i.y = getelementptr inbounds i8, ptr %.03.i, i64 -32
  %i.z = getelementptr inbounds i8, ptr %.0142.i, i64 -32
  %i.aa = load <2 x i32>, ptr %i.z, align 4, !tbaa !783
  store <2 x i32> %i.aa, ptr %i.y, align 4, !tbaa !783
  %i.ab = getelementptr inbounds i8, ptr %.03.i, i64 -40
  %i.ac = getelementptr inbounds i8, ptr %.0142.i, i64 -40
  %i.ad = load <2 x i32>, ptr %i.ac, align 4, !tbaa !783
  store <2 x i32> %i.ad, ptr %i.ab, align 4, !tbaa !783
  %i.ae = getelementptr inbounds i8, ptr %.03.i, i64 -48
  %i.af = getelementptr inbounds i8, ptr %.0142.i, i64 -48
  %i.ag = load <2 x i32>, ptr %i.af, align 4, !tbaa !783
  store <2 x i32> %i.ag, ptr %i.ae, align 4, !tbaa !783
  %i.ah = getelementptr inbounds i8, ptr %.03.i, i64 -56
  %i.ai = getelementptr inbounds i8, ptr %.0142.i, i64 -56
  %i.aj = load <2 x i32>, ptr %i.ai, align 4, !tbaa !783
  store <2 x i32> %i.aj, ptr %i.ah, align 4, !tbaa !783
  %i.ak = getelementptr inbounds i8, ptr %.03.i, i64 -64 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.0142.i, i64 -64 ; 3 uses
  %i.am = load <2 x i32>, ptr %i.al, align 4, !tbaa !783
  store <2 x i32> %i.am, ptr %i.ak, align 4, !tbaa !783
  %.not.i.7 = icmp eq ptr %i.al, %i.c
  br i1 %.not.i.7, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit, label %.lr.ph.i, !llvm.loop !710

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %i.an = add nsw i32 %i.b, -1                    ; 3 uses
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.val54 = load i8, ptr %i.ap, align 1, !tbaa !794
  %i.aq = zext i8 %.val54 to i64
  %.val56 = load ptr, ptr %0, align 8, !tbaa !2659
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ao
  %i.as = getelementptr inbounds nuw i8, ptr %.val56, i64 12 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.aq
  %i.au = load <2 x i32>, ptr %i.at, align 4, !tbaa !783
  store <2 x i32> %i.au, ptr %i.ar, align 4, !tbaa !783
  %i.av = getelementptr i8, ptr %0, i64 10        ; 7 uses
  %.val52 = load i8, ptr %i.av, align 2, !tbaa !794 ; 2 uses
  %i.aw = zext i8 %.val52 to i32                  ; 2 uses
  %i.ax = sub nsw i32 %i.aw, %i.an
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr i8, ptr %0, i64 12        ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %i.ay ; 7 uses
  %.idx.i60 = shl nsw i64 %i.ao, 3
  %i.bb = getelementptr i8, ptr %i.ba, i64 %.idx.i60 ; 2 uses
  %.not1.i61 = icmp eq i32 %i.an, 0
  br i1 %.not1.i61, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit, label %.lr.ph.i63.preheader

.lr.ph.i63.preheader:                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit
  %i.bc = zext i8 %1 to i64                       ; 2 uses
  %i.bd = add nuw nsw i64 %i.bc, 2305843009213693950
  %i.be = and i64 %i.bd, 2305843009213693951      ; 2 uses
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.be, 27
  br i1 %min.iters.check, label %.lr.ph.i63.preheader32, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i63.preheader
  %i.bg = shl nuw nsw i64 %i.bc, 3                ; 3 uses
  %i.bh = getelementptr i8, ptr %2, i64 %i.bg
  %i.bi = zext i8 %.val52 to i64
  %i.bj = shl nuw nsw i64 %i.bi, 3                ; 2 uses
  %i.bk = getelementptr i8, ptr %0, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  %3 = getelementptr i8, ptr %2, i64 16
  %4 = getelementptr i8, ptr %2, i64 %i.bg
  %5 = getelementptr i8, ptr %4, i64 4
  %6 = add nuw nsw i64 %i.bj, 24
  %7 = sub nsw i64 %6, %i.bg
  %i.bm = getelementptr i8, ptr %0, i64 %7
  %bound0 = icmp ult ptr %i.c, %i.bl
  %bound1 = icmp ult ptr %i.ba, %i.bh
  %found.conflict = and i1 %bound0, %bound1
  %bound020 = icmp ult ptr %3, %i.bb
  %bound121 = icmp ult ptr %i.bm, %5
  %found.conflict22 = and i1 %bound020, %bound121
  %conflict.rdx = or i1 %found.conflict, %found.conflict22
  br i1 %conflict.rdx, label %.lr.ph.i63.preheader32, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bf, 4611686018427387900     ; 3 uses
  %i.bn = shl i64 %n.vec, 3                       ; 2 uses
  %i.bo = getelementptr i8, ptr %i.c, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.ba, i64 %i.bn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = shl i64 %index, 3                       ; 3 uses
  %i.br = or disjoint i64 %i.bq, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.bq
  %next.gep23 = getelementptr i8, ptr %i.c, i64 %i.br
  %next.gep24 = getelementptr i8, ptr %i.ba, i64 %i.bq
  %next.gep25 = getelementptr i8, ptr %i.ba, i64 %i.br
  %wide.vec = load <4 x i32>, ptr %next.gep24, align 4, !tbaa !783
  %wide.vec27 = load <4 x i32>, ptr %next.gep25, align 4, !tbaa !783
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !783
  store <4 x i32> %wide.vec27, ptr %next.gep23, align 4, !tbaa !783
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !20446

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.loopexit, label %.lr.ph.i63.preheader32

.lr.ph.i63.preheader32:                           ; preds = %vector.memcheck, %.lr.ph.i63.preheader, %middle.block
  %.03.i64.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i63.preheader ], [ %i.bo, %middle.block ]
  %.0122.i.ph = phi ptr [ %i.ba, %vector.memcheck ], [ %i.ba, %.lr.ph.i63.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %.lr.ph.i63.preheader32, %.lr.ph.i63
  %.03.i64 = phi ptr [ %i.bv, %.lr.ph.i63 ], [ %.03.i64.ph, %.lr.ph.i63.preheader32 ] ; 2 uses
  %.0122.i = phi ptr [ %i.bu, %.lr.ph.i63 ], [ %.0122.i.ph, %.lr.ph.i63.preheader32 ] ; 2 uses
  %i.bt = load <2 x i32>, ptr %.0122.i, align 4, !tbaa !783
  store <2 x i32> %i.bt, ptr %.03.i64, align 4, !tbaa !783
  %i.bu = getelementptr inbounds nuw i8, ptr %.0122.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.03.i64, i64 8
  %.not.i65 = icmp eq ptr %i.bu, %i.bb
  br i1 %.not.i65, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.loopexit, label %.lr.ph.i63, !llvm.loop !20447

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.loopexit: ; preds = %.lr.ph.i63, %middle.block
  %.val51.pre = load i8, ptr %i.av, align 2, !tbaa !794
  %.pre = zext i8 %.val51.pre to i32
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.loopexit, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit
  %.pre-phi = phi i32 [ %.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.loopexit ], [ %i.aw, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit ]
  %.val53 = load i8, ptr %i.ap, align 8, !tbaa !794
  %i.bw = zext i8 %.val53 to i64
  %i.bx = sub nsw i32 %.pre-phi, %i.b
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.bw
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.by
  %i.cb = load <2 x i32>, ptr %i.ca, align 4, !tbaa !783
  store <2 x i32> %i.cb, ptr %i.bz, align 4, !tbaa !783
  %i.cc = getelementptr i8, ptr %0, i64 11
  %.val57 = load i8, ptr %i.cc, align 1, !tbaa !794
  %.not.i68 = icmp eq i8 %.val57, 0
  br i1 %.not.i68, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit
  %.val50 = load i8, ptr %i.a, align 1, !tbaa !794 ; 5 uses
  %i.cd = add i8 %.val50, 1                       ; 2 uses
  %.not1 = icmp eq i8 %i.cd, 0
  br i1 %.not1, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 6 uses
  %i.cf = zext i8 %i.cd to i64                    ; 2 uses
  %i.cg = and i8 %.val50, 1
  %lcmp.mod34.not.not = icmp eq i8 %i.cg, 0
  br i1 %lcmp.mod34.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.ch = add i8 %.val50, %1                      ; 2 uses
  %i.ci = zext i8 %.val50 to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !2659 ; 3 uses
  %i.cl = zext i8 %i.ch to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cl
  store ptr %i.ck, ptr %i.cm, align 8, !tbaa !2659
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i8 %i.ch, ptr %i.cn, align 1, !tbaa !794
  store ptr %2, ptr %i.ck, align 8, !tbaa !2659
  %indvars.iv.next.prol = add nsw i64 %i.cf, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.cf, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.co = icmp eq i8 %.val50, 0
  br i1 %i.co, label %.preheader, label %.lr.ph.new

.preheader:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %bb.b
  %.not463 = icmp eq i8 %1, 0
  br i1 %.not463, label %.loopexit, label %.lr.ph5

.lr.ph5:                                          ; preds = %.preheader
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.cr = add i8 %1, 1                            ; 2 uses
  %umax = tail call i8 @llvm.umax.i8(i8 %i.cr, i8 2)
  %wide.trip.count = zext i8 %umax to i64
  %i.cs = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter36 = and i64 %i.cs, 1
  %i.ct = icmp ult i8 %i.cr, 3
  br i1 %i.ct, label %.epil.preheader, label %.lr.ph5.new

.lr.ph5.new:                                      ; preds = %.lr.ph5
  %unroll_iter = and i64 %i.cs, -2
  %invariant.op = sub i8 1, %1
  br label %bb.c

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.cu = trunc nuw i64 %indvars.iv to i8
  %i.cv = add i8 %i.cu, -1                        ; 2 uses
  %i.cw = add i8 %i.cv, %1                        ; 2 uses
  %i.cx = zext i8 %i.cv to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !2659 ; 3 uses
  %i.da = zext i8 %i.cw to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.da
  store ptr %i.cz, ptr %i.db, align 8, !tbaa !2659
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i8 %i.cw, ptr %i.dc, align 1, !tbaa !794
  store ptr %2, ptr %i.cz, align 8, !tbaa !2659
  %i.dd = trunc i64 %indvars.iv to i8
  %i.de = add i8 %i.dd, -2                        ; 2 uses
  %i.df = add i8 %i.de, %1                        ; 2 uses
  %i.dg = zext i8 %i.de to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !2659 ; 3 uses
  %i.dj = zext i8 %i.df to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.dj
  store ptr %i.di, ptr %i.dk, align 8, !tbaa !2659
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i8 %i.df, ptr %i.dl, align 1, !tbaa !794
  store ptr %2, ptr %i.di, align 8, !tbaa !2659
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.dm = and i64 %indvars.iv.next.1, 255
  %.not.1 = icmp eq i64 %i.dm, 0
  br i1 %.not.1, label %.preheader, label %.lr.ph.new, !llvm.loop !20448

bb.c:                                             ; preds = %bb.c, %.lr.ph5.new
  %indvars.iv7 = phi i64 [ 1, %.lr.ph5.new ], [ %indvars.iv.next8.1, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph5.new ], [ %niter.next.1, %bb.c ]
  %i.dn = add nsw i64 %indvars.iv7, -1            ; 2 uses
  %.val49 = load i8, ptr %i.av, align 2, !tbaa !794
  %i.do = trunc nuw i64 %indvars.iv7 to i8
  %i.dp = sub i8 %i.do, %1
  %i.dq = add i8 %i.dp, %.val49
  %i.dr = zext i8 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !2659 ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.dn
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !2659
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dw = trunc nuw i64 %i.dn to i8
  store i8 %i.dw, ptr %i.dv, align 1, !tbaa !794
  store ptr %2, ptr %i.dt, align 8, !tbaa !2659
  %.val49.1 = load i8, ptr %i.av, align 2, !tbaa !794
  %i.dx = trunc i64 %indvars.iv7 to i8
  %.reass = add i8 %i.dx, %invariant.op
  %i.dy = add i8 %.reass, %.val49.1
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !2659 ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv7
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !2659
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ee = trunc nuw i64 %indvars.iv7 to i8
  store i8 %i.ee, ptr %i.ed, align 1, !tbaa !794
  store ptr %2, ptr %i.eb, align 8, !tbaa !2659
  %indvars.iv.next8.1 = add nuw nsw i64 %indvars.iv7, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !20449

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod37.not = icmp eq i64 %xtraiter36, 0
  br i1 %lcmp.mod37.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph5
  %indvars.iv7.epil.init = phi i64 [ 1, %.lr.ph5 ], [ %indvars.iv.next8.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod38 = trunc i64 %i.cs to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.ef = add nsw i64 %indvars.iv7.epil.init, -1  ; 2 uses
  %.val49.epil = load i8, ptr %i.av, align 2, !tbaa !794
  %i.eg = trunc nuw i64 %indvars.iv7.epil.init to i8
  %i.eh = sub i8 %i.eg, %1
  %i.ei = add i8 %i.eh, %.val49.epil
  %i.ej = zext i8 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.ej
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !2659 ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.ef
  store ptr %i.el, ptr %i.em, align 8, !tbaa !2659
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.eo = trunc nuw i64 %i.ef to i8
  store i8 %i.eo, ptr %i.en, align 1, !tbaa !794
  store ptr %2, ptr %i.el, align 8, !tbaa !2659
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit
  %.val47 = load i8, ptr %i.av, align 2, !tbaa !794
  %i.ep = sub i8 %.val47, %1
  store i8 %i.ep, ptr %i.av, align 2, !tbaa !794
  %.val = load i8, ptr %i.a, align 1, !tbaa !794
  %i.eq = add i8 %.val, %1
  store i8 %i.eq, ptr %i.a, align 1, !tbaa !794
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE5splitEiPSG_PSB_(ptr nofree noundef nonnull align 1 captures(address) dereferenceable(1) %0, i32 noundef %1, ptr noundef initializes((10, 11)) %2) unnamed_addr #27 align 2 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 30, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 10
  %.val31 = load i8, ptr %i.a, align 1, !tbaa !794
  %i.b = add i8 %.val31, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 10
  %.val39 = load i8, ptr %i.c, align 1, !tbaa !794
  %i.d = lshr i8 %.val39, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.b, %bb.b ], [ %i.d, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.sink, ptr %i.e, align 1, !tbaa !794
  %i.f = getelementptr i8, ptr %0, i64 10         ; 5 uses
  %.val30 = load i8, ptr %i.f, align 1, !tbaa !794
  %i.g = getelementptr i8, ptr %2, i64 10         ; 2 uses
  %i.h = sub i8 %.val30, %.sink                   ; 3 uses
  store i8 %i.h, ptr %i.f, align 1, !tbaa !794
  %.val37 = load i8, ptr %i.g, align 1, !tbaa !794 ; 2 uses
  %i.i = zext i8 %.val37 to i64
  %i.j = zext i8 %i.h to i64                      ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 12         ; 2 uses
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.j ; 7 uses
  %.idx.i = shl nuw nsw i64 %i.i, 3               ; 5 uses
  %i.m = getelementptr i8, ptr %i.l, i64 %.idx.i  ; 2 uses
  %.not1.i = icmp eq i8 %.val37, 0
  br i1 %.not1.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.n = getelementptr i8, ptr %2, i64 12         ; 6 uses
  %i.o = add nsw i64 %.idx.i, -8                  ; 2 uses
  %i.p = lshr exact i64 %i.o, 3
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.o, 200
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.r = getelementptr i8, ptr %2, i64 %.idx.i
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = shl nuw nsw i64 %i.j, 3                  ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 %.idx.i
  %i.v = getelementptr i8, ptr %i.u, i64 %i.t
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %3 = getelementptr i8, ptr %2, i64 16
  %4 = getelementptr i8, ptr %2, i64 %.idx.i
  %5 = getelementptr i8, ptr %4, i64 12
  %i.x = getelementptr i8, ptr %0, i64 %i.t
  %i.y = getelementptr i8, ptr %i.x, i64 16
  %bound0 = icmp ult ptr %i.n, %i.w
  %bound1 = icmp ult ptr %i.l, %i.s
  %found.conflict = and i1 %bound0, %bound1
  %bound015 = icmp ult ptr %3, %i.m
  %bound116 = icmp ult ptr %i.y, %5
  %found.conflict17 = and i1 %bound015, %bound116
  %conflict.rdx = or i1 %found.conflict, %found.conflict17
  br i1 %conflict.rdx, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.q, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.n, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.l, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 3 uses
  %i.ad = or disjoint i64 %i.ac, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.ac
  %next.gep18 = getelementptr i8, ptr %i.n, i64 %i.ad
  %next.gep19 = getelementptr i8, ptr %i.l, i64 %i.ac
  %next.gep20 = getelementptr i8, ptr %i.l, i64 %i.ad
  %wide.vec = load <4 x i32>, ptr %next.gep19, align 4, !tbaa !783
  %wide.vec22 = load <4 x i32>, ptr %next.gep20, align 4, !tbaa !783
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !783
  store <4 x i32> %wide.vec22, ptr %next.gep18, align 4, !tbaa !783
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !20450

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %.03.i.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.preheader.i ], [ %i.aa, %middle.block ]
  %.0122.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.preheader.i ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.03.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %.03.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.0122.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %.0122.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.af = load <2 x i32>, ptr %.0122.i, align 4, !tbaa !783
  store <2 x i32> %i.af, ptr %.03.i, align 4, !tbaa !783
  %i.ag = getelementptr inbounds nuw i8, ptr %.0122.i, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.03.i, i64 8
  %.not.i = icmp eq ptr %i.ag, %i.m
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.loopexit, label %.lr.ph.i, !llvm.loop !20451

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.pre = load i8, ptr %i.f, align 1, !tbaa !794
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.loopexit, %bb.d
  %i.ai = phi i8 [ %.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.loopexit ], [ %i.h, %bb.d ]
  %i.aj = add i8 %i.ai, -1                        ; 2 uses
  store i8 %i.aj, ptr %i.f, align 1, !tbaa !794
  %.val35 = load ptr, ptr %0, align 8, !tbaa !2659 ; 5 uses
  %i.ak = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.val33 = load i8, ptr %i.ak, align 8, !tbaa !794 ; 4 uses
  %i.al = zext i8 %i.aj to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.al
  %i.an = zext i8 %.val33 to i32
  %i.ao = getelementptr i8, ptr %.val35, i64 10   ; 3 uses
  %.val21.i = load i8, ptr %i.ao, align 1, !tbaa !794 ; 3 uses
  %i.ap = icmp ult i8 %.val33, %.val21.i
  %i.aq = zext i8 %.val33 to i64                  ; 4 uses
  br i1 %i.ap, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.val35, i64 12
  %i.as = getelementptr [8 x i8], ptr %i.ar, i64 %i.aq ; 3 uses
  %narrow.i = sub nuw i8 %.val21.i, %.val33
  %i.at = zext i8 %narrow.i to i64                ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.at, 3            ; 2 uses
  %i.au = getelementptr i8, ptr %i.as, i64 8
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %i.at ; 2 uses
  %i.aw = getelementptr i8, ptr %i.as, i64 %.idx.i.i ; 2 uses
  %i.ax = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 3
  %i.az = add nuw nsw i64 %i.ay, 1
  %xtraiter = and i64 %i.az, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %.03.i.i.prol = phi ptr [ %i.ba, %.lr.ph.i.i.prol ], [ %i.av, %.lr.ph.preheader.i.i ]
  %.0142.i.i.prol = phi ptr [ %i.bb, %.lr.ph.i.i.prol ], [ %i.aw, %.lr.ph.preheader.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.ba = getelementptr inbounds i8, ptr %.03.i.i.prol, i64 -8 ; 3 uses
  %i.bb = getelementptr inbounds i8, ptr %.0142.i.i.prol, i64 -8 ; 3 uses
  %i.bc = load <2 x i32>, ptr %i.bb, align 4, !tbaa !783
  store <2 x i32> %i.bc, ptr %i.ba, align 4, !tbaa !783
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !20452

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.03.i.i.unr = phi ptr [ %i.av, %.lr.ph.preheader.i.i ], [ %i.ba, %.lr.ph.i.i.prol ]
  %.0142.i.i.unr = phi ptr [ %i.aw, %.lr.ph.preheader.i.i ], [ %i.bb, %.lr.ph.i.i.prol ]
  %i.bd = icmp ult i64 %i.ax, 56
  br i1 %i.bd, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.03.i.i = phi ptr [ %i.bz, %.lr.ph.i.i ], [ %.03.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 8 uses
  %.0142.i.i = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %.0142.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 8 uses
  %i.be = getelementptr inbounds i8, ptr %.03.i.i, i64 -8
  %i.bf = getelementptr inbounds i8, ptr %.0142.i.i, i64 -8
  %i.bg = load <2 x i32>, ptr %i.bf, align 4, !tbaa !783
  store <2 x i32> %i.bg, ptr %i.be, align 4, !tbaa !783
  %i.bh = getelementptr inbounds i8, ptr %.03.i.i, i64 -16
  %i.bi = getelementptr inbounds i8, ptr %.0142.i.i, i64 -16
  %i.bj = load <2 x i32>, ptr %i.bi, align 4, !tbaa !783
  store <2 x i32> %i.bj, ptr %i.bh, align 4, !tbaa !783
  %i.bk = getelementptr inbounds i8, ptr %.03.i.i, i64 -24
  %i.bl = getelementptr inbounds i8, ptr %.0142.i.i, i64 -24
  %i.bm = load <2 x i32>, ptr %i.bl, align 4, !tbaa !783
  store <2 x i32> %i.bm, ptr %i.bk, align 4, !tbaa !783
  %i.bn = getelementptr inbounds i8, ptr %.03.i.i, i64 -32
  %i.bo = getelementptr inbounds i8, ptr %.0142.i.i, i64 -32
  %i.bp = load <2 x i32>, ptr %i.bo, align 4, !tbaa !783
  store <2 x i32> %i.bp, ptr %i.bn, align 4, !tbaa !783
  %i.bq = getelementptr inbounds i8, ptr %.03.i.i, i64 -40
  %i.br = getelementptr inbounds i8, ptr %.0142.i.i, i64 -40
  %i.bs = load <2 x i32>, ptr %i.br, align 4, !tbaa !783
  store <2 x i32> %i.bs, ptr %i.bq, align 4, !tbaa !783
  %i.bt = getelementptr inbounds i8, ptr %.03.i.i, i64 -48
  %i.bu = getelementptr inbounds i8, ptr %.0142.i.i, i64 -48
  %i.bv = load <2 x i32>, ptr %i.bu, align 4, !tbaa !783
  store <2 x i32> %i.bv, ptr %i.bt, align 4, !tbaa !783
  %i.bw = getelementptr inbounds i8, ptr %.03.i.i, i64 -56
  %i.bx = getelementptr inbounds i8, ptr %.0142.i.i, i64 -56
  %i.by = load <2 x i32>, ptr %i.bx, align 4, !tbaa !783
  store <2 x i32> %i.by, ptr %i.bw, align 4, !tbaa !783
  %i.bz = getelementptr inbounds i8, ptr %.03.i.i, i64 -64 ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %.0142.i.i, i64 -64 ; 3 uses
  %i.cb = load <2 x i32>, ptr %i.ca, align 4, !tbaa !783
  store <2 x i32> %i.cb, ptr %i.bz, align 4, !tbaa !783
  %.not.i.i.7 = icmp eq ptr %i.ca, %i.as
  br i1 %.not.i.i.7, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !710

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.val19.pre.i = load i8, ptr %i.ao, align 1, !tbaa !794
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit.loopexit.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit
  %.val19.i = phi i8 [ %.val19.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit.loopexit.i ], [ %.val21.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.val35, i64 12
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.aq
  %i.ce = load <2 x i32>, ptr %i.am, align 4, !tbaa !783
  store <2 x i32> %i.ce, ptr %i.cd, align 4, !tbaa !783
  %i.cf = add i8 %.val19.i, 1                     ; 3 uses
  store i8 %i.cf, ptr %i.ao, align 1, !tbaa !794
  %i.cg = getelementptr i8, ptr %.val35, i64 11
  %.val22.i = load i8, ptr %i.cg, align 1, !tbaa !794
  %.not.i25.i = icmp eq i8 %.val22.i, 0
  br i1 %.not.i25.i, label %bb.e, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE13emplace_valueIJPNS1_13map_slot_typeIS5_iEEEEEvhPSB_DpOT_.exit

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit.i
  %i.ch = zext i8 %i.cf to i32
  %i.ci = add nuw nsw i32 %i.an, 1                ; 2 uses
  %i.cj = icmp samesign ult i32 %i.ci, %i.ch
  br i1 %i.cj, label %.lr.ph.i41, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE13emplace_valueIJPNS1_13map_slot_typeIS5_iEEEEEvhPSB_DpOT_.exit

.lr.ph.i41:                                       ; preds = %bb.e
  %i.ck = getelementptr inbounds nuw i8, ptr %.val35, i64 256 ; 10 uses
  %i.cl = zext i8 %i.cf to i64                    ; 4 uses
  %i.cm = zext nneg i32 %i.ci to i64
  %i.cn = xor i64 %i.aq, -1
  %i.co = add nsw i64 %i.cn, %i.cl
  %i.cp = add nsw i64 %i.cl, -2
  %i.cq = sub nsw i64 %i.cp, %i.aq
  %xtraiter27 = and i64 %i.co, 3                  ; 2 uses
  %lcmp.mod28.not = icmp eq i64 %xtraiter27, 0
  br i1 %lcmp.mod28.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i41, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.cr, %.prol.preheader ], [ %i.cl, %.lr.ph.i41 ] ; 3 uses
  %prol.iter29 = phi i64 [ %prol.iter29.next, %.prol.preheader ], [ 0, %.lr.ph.i41 ]
  %i.cr = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !2659 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.prol
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !2659
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cw = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.cw, ptr %i.cv, align 1, !tbaa !794
  %prol.iter29.next = add i64 %prol.iter29, 1     ; 2 uses
  %prol.iter29.cmp.not = icmp eq i64 %prol.iter29.next, %xtraiter27
  br i1 %prol.iter29.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !20453

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i41
  %indvars.iv.unr = phi i64 [ %i.cl, %.lr.ph.i41 ], [ %i.cr, %.prol.preheader ]
  %i.cx = icmp ult i64 %i.cq, 3
  br i1 %i.cx, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE13emplace_valueIJPNS1_13map_slot_typeIS5_iEEEEEvhPSB_DpOT_.exit, label %.lr.ph.i41.new

.lr.ph.i41.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i41.new
  %indvars.iv = phi i64 [ %i.dq, %.lr.ph.i41.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.cy = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !2659 ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv
  store ptr %i.da, ptr %i.db, align 8, !tbaa !2659
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = trunc nuw i64 %indvars.iv to i8
  store i8 %i.dd, ptr %i.dc, align 1, !tbaa !794
  %i.de = add nsw i64 %indvars.iv, -2             ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !2659 ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cy
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !2659
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dj = trunc nuw i64 %i.cy to i8
  store i8 %i.dj, ptr %i.di, align 1, !tbaa !794
  %i.dk = add nsw i64 %indvars.iv, -3             ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !2659 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.de
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !2659
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dp = trunc nuw i64 %i.de to i8
  store i8 %i.dp, ptr %i.do, align 1, !tbaa !794
  %i.dq = add nsw i64 %indvars.iv, -4             ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !2659 ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dk
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !2659
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dv = trunc nuw i64 %i.dk to i8
  store i8 %i.dv, ptr %i.du, align 1, !tbaa !794
  %.wide.3 = icmp ugt i64 %i.dq, %i.cm
  br i1 %.wide.3, label %.lr.ph.i41.new, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE13emplace_valueIJPNS1_13map_slot_typeIS5_iEEEEEvhPSB_DpOT_.exit, !llvm.loop !711

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE13emplace_valueIJPNS1_13map_slot_typeIS5_iEEEEEvhPSB_DpOT_.exit: ; preds = %.prol.loopexit, %.lr.ph.i41.new, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit.i, %bb.e
  %.val34 = load ptr, ptr %0, align 8, !tbaa !2659
  %.val32 = load i8, ptr %i.ak, align 8, !tbaa !794
  %i.dw = add i8 %.val32, 1
  %i.dx = getelementptr inbounds nuw i8, ptr %.val34, i64 256
  %i.dy = zext i8 %i.dw to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dy
  store ptr %2, ptr %i.dz, align 8, !tbaa !2659
  %i.ea = getelementptr i8, ptr %0, i64 11
  %.val36 = load i8, ptr %i.ea, align 1, !tbaa !794
  %.not.i42 = icmp eq i8 %.val36, 0
  br i1 %.not.i42, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE13emplace_valueIJPNS1_13map_slot_typeIS5_iEEEEEvhPSB_DpOT_.exit
  %.val27 = load i8, ptr %i.f, align 2, !tbaa !794
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 256
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.g
  %.0.in3 = phi i8 [ %.val27, %bb.f ], [ %.0, %bb.g ]
  %.0252 = phi i8 [ 0, %bb.f ], [ %i.ej, %bb.g ]  ; 3 uses
  %.0 = add i8 %.0.in3, 1                         ; 2 uses
  %i.ed = zext i8 %.0 to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !2659 ; 3 uses
  %i.eg = zext i8 %.0252 to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eg
  store ptr %i.ef, ptr %i.eh, align 8, !tbaa !2659
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i8 %.0252, ptr %i.ei, align 1, !tbaa !794
  store ptr %2, ptr %i.ef, align 8, !tbaa !2659
  %i.ej = add i8 %.0252, 1                        ; 2 uses
  %.val = load i8, ptr %i.g, align 1, !tbaa !794
  %.not = icmp ugt i8 %i.ej, %.val
  br i1 %.not, label %.loopexit, label %bb.g, !llvm.loop !20454

.loopexit:                                        ; preds = %bb.g, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE13emplace_valueIJPNS1_13map_slot_typeIS5_iEEEEEvhPSB_DpOT_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE16internal_emplaceIJSA_EEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSA_PSA_EESN_DpOT_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr %1, i32 %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.4450", align 8 ; 6 uses
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 11
  %.val = load i8, ptr %i.b, align 1, !tbaa !794  ; 2 uses
  %.not.i = icmp eq i8 %.val, 0
  br i1 %.not.i, label %.thread.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert17 = getelementptr i8, ptr %1, i64 10
  %.val5.pre = load i8, ptr %.phi.trans.insert17, align 1, !tbaa !794
  br label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.d = and i32 %2, 255
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.e
  %.11727.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !2659 ; 3 uses
  %i.g = getelementptr i8, ptr %.11727.i.i.i, i64 11
  %.117.val2028.i.i.i = load i8, ptr %i.g, align 1, !tbaa !794 ; 2 uses
  %.not.i29.i.i.i = icmp eq i8 %.117.val2028.i.i.i, 0
  br i1 %.not.i29.i.i.i, label %.lr.ph31.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS6_ESaISt4pairIKS6_iEESt17integral_constantIiLi256EESD_IbLb1EEEEEEERSB_PSB_EmmEv.exit

.lr.ph31.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph31.i.i.i
  %.11730.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph31.i.i.i ], [ %.11727.i.i.i, %.thread.i.i ] ; 2 uses
  %i.h = getelementptr i8, ptr %.11730.i.i.i, i64 10
  %.117.val18.i.i.i = load i8, ptr %i.h, align 1, !tbaa !794
  %i.i = getelementptr inbounds nuw i8, ptr %.11730.i.i.i, i64 256
  %i.j = zext i8 %.117.val18.i.i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %.117.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !2659 ; 3 uses
  %i.l = getelementptr i8, ptr %.117.i.i.i, i64 11
  %.117.val20.i.i.i = load i8, ptr %i.l, align 1, !tbaa !794 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %.117.val20.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph31.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS6_ESaISt4pairIKS6_iEESt17integral_constantIiLi256EESD_IbLb1EEEEEEERSB_PSB_EmmEv.exit, !llvm.loop !689

_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS6_ESaISt4pairIKS6_iEESt17integral_constantIiLi256EESD_IbLb1EEEEEEERSB_PSB_EmmEv.exit: ; preds = %.lr.ph31.i.i.i, %.thread.i.i
  %.val4.pre = phi i8 [ %.117.val2028.i.i.i, %.thread.i.i ], [ %.117.val20.i.i.i, %.lr.ph31.i.i.i ]
  %.117.lcssa.i.i.i = phi ptr [ %.11727.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph31.i.i.i ] ; 3 uses
  %i.m = getelementptr i8, ptr %.117.lcssa.i.i.i, i64 10
  %.117.val.i.i.i = load i8, ptr %i.m, align 1, !tbaa !794 ; 2 uses
  %i.n = zext i8 %.117.val.i.i.i to i32
  store ptr %.117.lcssa.i.i.i, ptr %4, align 8
  store i32 %i.n, ptr %i.a, align 8, !tbaa !2702
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS6_ESaISt4pairIKS6_iEESt17integral_constantIiLi256EESD_IbLb1EEEEEEERSB_PSB_EmmEv.exit
  %.val5 = phi i8 [ %.117.val.i.i.i, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS6_ESaISt4pairIKS6_iEESt17integral_constantIiLi256EESD_IbLb1EEEEEEERSB_PSB_EmmEv.exit ], [ %.val5.pre, %._crit_edge ] ; 3 uses
  %.val4 = phi i8 [ %.val4.pre, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS6_ESaISt4pairIKS6_iEESt17integral_constantIiLi256EESD_IbLb1EEEEEEERSB_PSB_EmmEv.exit ], [ %.val, %._crit_edge ]
  %i.o = phi ptr [ %.117.lcssa.i.i.i, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS6_ESaISt4pairIKS6_iEESt17integral_constantIiLi256EESD_IbLb1EEEEEEERSB_PSB_EmmEv.exit ], [ %1, %._crit_edge ] ; 5 uses
  %i.p = getelementptr i8, ptr %i.o, i64 10       ; 2 uses
  %i.q = icmp eq i8 %.val5, %.val4
  br i1 %i.q, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i8 %.val5, 30
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = shl nuw nsw i8 %.val5, 1
  %i.t = tail call i8 @llvm.umin.i8(i8 %i.s, i8 30) ; 2 uses
  %i.u = shl nuw i8 %i.t, 3
  %i.v = zext i8 %i.u to i64
  %i.w = add nuw nsw i64 %i.v, 16
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #35 ; 13 uses
  store ptr %i.x, ptr %i.x, align 8, !tbaa !2659
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i8 0, ptr %i.y, align 8, !tbaa !794
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 9
  store i8 0, ptr %i.z, align 1, !tbaa !794
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 11
  store i8 %i.t, ptr %i.aa, align 1, !tbaa !794
  store ptr %i.x, ptr %4, align 8, !tbaa !2703
  %.val13.i.i = load i8, ptr %i.p, align 1, !tbaa !794 ; 3 uses
  %i.ab = zext i8 %.val13.i.i to i64
  %i.ac = getelementptr i8, ptr %i.o, i64 12      ; 7 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.ab, 3          ; 4 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 %.idx.i.i.i ; 2 uses
  %.not1.i.i.i = icmp eq i8 %.val13.i.i, 0
  br i1 %.not1.i.i.i, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE16internal_emplaceIJSA_EEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSA_PSA_EESN_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.ae = getelementptr i8, ptr %i.x, i64 12      ; 6 uses
  %i.af = add nsw i64 %.idx.i.i.i, -8             ; 2 uses
  %i.ag = lshr exact i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i8.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.i.i
  %i.ai = add nuw nsw i64 %.idx.i.i.i, 8          ; 2 uses
  %i.aj = getelementptr i8, ptr %i.x, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.o, i64 %i.ai
  %5 = getelementptr i8, ptr %i.x, i64 16
  %6 = getelementptr i8, ptr %i.x, i64 %.idx.i.i.i
  %7 = getelementptr i8, ptr %6, i64 12
  %i.al = getelementptr i8, ptr %i.o, i64 16
  %bound0 = icmp ult ptr %i.ae, %i.ak
  %bound1 = icmp ult ptr %i.ac, %i.aj
  %found.conflict = and i1 %bound0, %bound1
  %bound08 = icmp ult ptr %5, %i.ad
  %bound19 = icmp ult ptr %i.al, %7
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %.lr.ph.i.i.i8.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.ae, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.ac, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3                       ; 3 uses
  %i.aq = or disjoint i64 %i.ap, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ae, i64 %i.ap
  %next.gep11 = getelementptr i8, ptr %i.ae, i64 %i.aq
  %next.gep12 = getelementptr i8, ptr %i.ac, i64 %i.ap
  %next.gep13 = getelementptr i8, ptr %i.ac, i64 %i.aq
  %wide.vec = load <4 x i32>, ptr %next.gep12, align 4, !tbaa !783
  %wide.vec15 = load <4 x i32>, ptr %next.gep13, align 4, !tbaa !783
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !783
  store <4 x i32> %wide.vec15, ptr %next.gep11, align 4, !tbaa !783
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !20455

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE16internal_emplaceIJSA_EEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSA_PSA_EESN_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i8.preheader

.lr.ph.i.i.i8.preheader:                          ; preds = %vector.memcheck, %.lr.ph.preheader.i.i.i, %middle.block
  %.03.i.i.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.preheader.i.i.i ], [ %i.an, %middle.block ]
  %.0122.i.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.preheader.i.i.i ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %.lr.ph.i.i.i8.preheader, %.lr.ph.i.i.i8
  %.03.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i8 ], [ %.03.i.i.i.ph, %.lr.ph.i.i.i8.preheader ] ; 2 uses
  %.0122.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i8 ], [ %.0122.i.i.i.ph, %.lr.ph.i.i.i8.preheader ] ; 2 uses
  %i.as = load <2 x i32>, ptr %.0122.i.i.i, align 4, !tbaa !783
  store <2 x i32> %i.as, ptr %.03.i.i.i, align 4, !tbaa !783
  %i.at = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 8
  %.not.i.i.i9 = icmp eq ptr %i.at, %i.ad
  br i1 %.not.i.i.i9, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE16internal_emplaceIJSA_EEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSA_PSA_EESN_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i8, !llvm.loop !20456

_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE16internal_emplaceIJSA_EEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSA_PSA_EESN_DpOT_ENKUlhE_clEh.exit: ; preds = %.lr.ph.i.i.i8, %middle.block, %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  store i8 %.val13.i.i, ptr %i.av, align 2, !tbaa !794
  store i8 0, ptr %i.p, align 1, !tbaa !794
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE16clear_and_deleteEPSG_PSB_(ptr noundef nonnull %i.o)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.aw, align 8, !tbaa !2659
  store ptr %i.x, ptr %0, align 8, !tbaa !2659
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISF_EERSA_PSA_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %4)
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE16internal_emplaceIJSA_EEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSA_PSA_EESN_DpOT_ENKUlhE_clEh.exit, %bb.e, %bb.b
  %i.ax = load ptr, ptr %4, align 8, !tbaa !2703  ; 5 uses
  %i.ay = load i32, ptr %i.a, align 8, !tbaa !2702 ; 2 uses
  %i.az = trunc i32 %i.ay to i8                   ; 2 uses
  %i.ba = and i32 %i.ay, 255                      ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ax, i64 10     ; 3 uses
  %.val21.i = load i8, ptr %i.bb, align 1, !tbaa !794 ; 3 uses
  %i.bc = icmp ugt i8 %.val21.i, %i.az
  %i.bd = zext nneg i32 %i.ba to i64              ; 4 uses
  br i1 %i.bc, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.bf = getelementptr [8 x i8], ptr %i.be, i64 %i.bd ; 3 uses
  %narrow.i = sub nuw i8 %.val21.i, %i.az
  %i.bg = zext i8 %narrow.i to i64                ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.bg, 3            ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bf, i64 8
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.bg ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bf, i64 %.idx.i.i ; 2 uses
  %i.bk = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.bl = lshr exact i64 %i.bk, 3
  %i.bm = add nuw nsw i64 %i.bl, 1
  %xtraiter = and i64 %i.bm, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %.03.i.i.prol = phi ptr [ %i.bn, %.lr.ph.i.i.prol ], [ %i.bi, %.lr.ph.preheader.i.i ]
  %.0142.i.i.prol = phi ptr [ %i.bo, %.lr.ph.i.i.prol ], [ %i.bj, %.lr.ph.preheader.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.bn = getelementptr inbounds i8, ptr %.03.i.i.prol, i64 -8 ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %.0142.i.i.prol, i64 -8 ; 3 uses
  %i.bp = load <2 x i32>, ptr %i.bo, align 4, !tbaa !783
  store <2 x i32> %i.bp, ptr %i.bn, align 4, !tbaa !783
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !20457

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.03.i.i.unr = phi ptr [ %i.bi, %.lr.ph.preheader.i.i ], [ %i.bn, %.lr.ph.i.i.prol ]
  %.0142.i.i.unr = phi ptr [ %i.bj, %.lr.ph.preheader.i.i ], [ %i.bo, %.lr.ph.i.i.prol ]
  %i.bq = icmp ult i64 %i.bk, 56
  br i1 %i.bq, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.03.i.i = phi ptr [ %i.cm, %.lr.ph.i.i ], [ %.03.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 8 uses
  %.0142.i.i = phi ptr [ %i.cn, %.lr.ph.i.i ], [ %.0142.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 8 uses
  %i.br = getelementptr inbounds i8, ptr %.03.i.i, i64 -8
  %i.bs = getelementptr inbounds i8, ptr %.0142.i.i, i64 -8
  %i.bt = load <2 x i32>, ptr %i.bs, align 4, !tbaa !783
  store <2 x i32> %i.bt, ptr %i.br, align 4, !tbaa !783
  %i.bu = getelementptr inbounds i8, ptr %.03.i.i, i64 -16
  %i.bv = getelementptr inbounds i8, ptr %.0142.i.i, i64 -16
  %i.bw = load <2 x i32>, ptr %i.bv, align 4, !tbaa !783
  store <2 x i32> %i.bw, ptr %i.bu, align 4, !tbaa !783
  %i.bx = getelementptr inbounds i8, ptr %.03.i.i, i64 -24
  %i.by = getelementptr inbounds i8, ptr %.0142.i.i, i64 -24
  %i.bz = load <2 x i32>, ptr %i.by, align 4, !tbaa !783
  store <2 x i32> %i.bz, ptr %i.bx, align 4, !tbaa !783
  %i.ca = getelementptr inbounds i8, ptr %.03.i.i, i64 -32
  %i.cb = getelementptr inbounds i8, ptr %.0142.i.i, i64 -32
  %i.cc = load <2 x i32>, ptr %i.cb, align 4, !tbaa !783
  store <2 x i32> %i.cc, ptr %i.ca, align 4, !tbaa !783
  %i.cd = getelementptr inbounds i8, ptr %.03.i.i, i64 -40
  %i.ce = getelementptr inbounds i8, ptr %.0142.i.i, i64 -40
  %i.cf = load <2 x i32>, ptr %i.ce, align 4, !tbaa !783
  store <2 x i32> %i.cf, ptr %i.cd, align 4, !tbaa !783
  %i.cg = getelementptr inbounds i8, ptr %.03.i.i, i64 -48
  %i.ch = getelementptr inbounds i8, ptr %.0142.i.i, i64 -48
  %i.ci = load <2 x i32>, ptr %i.ch, align 4, !tbaa !783
  store <2 x i32> %i.ci, ptr %i.cg, align 4, !tbaa !783
  %i.cj = getelementptr inbounds i8, ptr %.03.i.i, i64 -56
  %i.ck = getelementptr inbounds i8, ptr %.0142.i.i, i64 -56
  %i.cl = load <2 x i32>, ptr %i.ck, align 4, !tbaa !783
  store <2 x i32> %i.cl, ptr %i.cj, align 4, !tbaa !783
  %i.cm = getelementptr inbounds i8, ptr %.03.i.i, i64 -64 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %.0142.i.i, i64 -64 ; 3 uses
  %i.co = load <2 x i32>, ptr %i.cn, align 4, !tbaa !783
  store <2 x i32> %i.co, ptr %i.cm, align 4, !tbaa !783
  %.not.i.i11.7 = icmp eq ptr %i.cn, %i.bf
  br i1 %.not.i.i11.7, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !710

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.val19.pre.i = load i8, ptr %i.bb, align 1, !tbaa !794
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit.loopexit.i, %bb.f
  %.val19.i = phi i8 [ %.val19.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit.loopexit.i ], [ %.val21.i, %bb.f ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.bd ; 2 uses
  %.val.i.i.i.i.i = load i32, ptr %3, align 4, !tbaa !2592
  store i32 %.val.i.i.i.i.i, ptr %i.cq, align 4, !tbaa !2592
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !783
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !2635
  %i.cu = add i8 %.val19.i, 1                     ; 3 uses
  store i8 %i.cu, ptr %i.bb, align 1, !tbaa !794
  %i.cv = getelementptr i8, ptr %i.ax, i64 11
  %.val22.i = load i8, ptr %i.cv, align 1, !tbaa !794
  %.not.i23.i = icmp eq i8 %.val22.i, 0
  br i1 %.not.i23.i, label %bb.g, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE13emplace_valueIJSA_EEEvhPSB_DpOT_.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE19transfer_n_backwardEmmmPSG_PSB_.exit.i
  %i.cw = zext i8 %i.cu to i32
  %i.cx = add nuw nsw i32 %i.ba, 1                ; 2 uses
  %i.cy = icmp samesign ult i32 %i.cx, %i.cw
  br i1 %i.cy, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE13emplace_valueIJSA_EEEvhPSB_DpOT_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ax, i64 256 ; 10 uses
  %i.da = zext i8 %i.cu to i64                    ; 4 uses
  %i.db = zext nneg i32 %i.cx to i64
  %i.dc = xor i64 %i.bd, -1
  %i.dd = add nsw i64 %i.dc, %i.da
  %i.de = add nsw i64 %i.da, -2
  %i.df = sub nsw i64 %i.de, %i.bd
  %xtraiter20 = and i64 %i.dd, 3                  ; 2 uses
  %lcmp.mod21.not = icmp eq i64 %xtraiter20, 0
  br i1 %lcmp.mod21.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.dg, %.prol.preheader ], [ %i.da, %.lr.ph.i ] ; 3 uses
  %prol.iter22 = phi i64 [ %prol.iter22.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.dg = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !2659 ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.prol
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !2659
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dl = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.dl, ptr %i.dk, align 1, !tbaa !794
  %prol.iter22.next = add i64 %prol.iter22, 1     ; 2 uses
  %prol.iter22.cmp.not = icmp eq i64 %prol.iter22.next, %xtraiter20
  br i1 %prol.iter22.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !20458

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.unr = phi i64 [ %i.da, %.lr.ph.i ], [ %i.dg, %.prol.preheader ]
  %i.dm = icmp ult i64 %i.df, 3
end_hunk_9
begin_hunk_10_@_ZN7testing7MatcherIRKN4absl12lts_2026052614btree_multimapINS2_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS6_ESaISt4pairIKS6_iEEEEED0Ev:bb.a
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEED2Ev.exit unwind label %bb.d, !inline_history !690

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #39, !inline_history !2669
  unreachable

_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE18DescribeNegationToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2662
  %i.c = icmp ne ptr %i.b, null
  %i.d = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.c)
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.664, i32 noundef 252)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.665, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !2662
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2667
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEEE, i64 16), ptr %0, align 8, !tbaa !797
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val.i.i = load ptr, ptr %i.a, align 8, !tbaa !2662 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2668
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE8IsSharedEv.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !794
  %i.f = atomicrmw add ptr %i.e, i32 -1 acq_rel, align 4
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !2662
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2668
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !794
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEED2Ev.exit unwind label %bb.d, !inline_history !690

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #39, !inline_history !2669
  unreachable

_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE19MatchAndExplainImplINSH_11ValuePolicyIPKNS_16MatcherInterfaceISG_EELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_fp1_EERKSH_SG_PNS_19MatchResultListenerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !794
  %i.b = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !2664 ; 2 uses
  %i.c = load ptr, ptr %.val.val, align 8, !tbaa !797
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %.val.val, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2)
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE12DescribeImplINSH_11ValuePolicyIPKNS_16MatcherInterfaceISG_EELb1EEEEEvRKSH_PSob(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4 = load ptr, ptr %i.a, align 8, !tbaa !794
  %i.b = getelementptr i8, ptr %.val4, i64 8
  %.val4.val = load ptr, ptr %i.b, align 8, !tbaa !2664 ; 2 uses
  %i.c = load ptr, ptr %.val4.val, align 8, !tbaa !797
  %. = select i1 %2, i64 24, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %.
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %.val4.val, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEE16GetDescriberImplINSH_11ValuePolicyIPKNS_16MatcherInterfaceISG_EELb1EEEEEPKNS_25MatcherDescriberInterfaceERKSH_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !794
  %i.b = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !2664
  ret ptr %.val.val
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_2026052614btree_multimapINS5_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS9_ESaISt4pairIKS9_iEEEEEESt14default_deleteISK_EEE7DestroyEPNS0_17SharedPayloadBaseE(ptr noundef %0) #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !2664 ; 3 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_2026052614btree_multimapINS5_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS9_ESaISt4pairIKS9_iEEEEEESt14default_deleteISK_EEED2Ev.exit, label %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEEEEclEPSI_.exit.i.i

_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEEEEclEPSI_.exit.i.i: ; preds = %bb.b
  %i.c = load ptr, ptr %.val, align 8, !tbaa !797
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %.val) #37, !inline_history !20508
  br label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_2026052614btree_multimapINS5_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS9_ESaISt4pairIKS9_iEEEEEESt14default_deleteISK_EEED2Ev.exit

_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_2026052614btree_multimapINS5_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS9_ESaISt4pairIKS9_iEEEEEESt14default_deleteISK_EEED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_2026052614btree_multimapINS3_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS7_ESaISt4pairIKS7_iEEEEEEEclEPSI_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  br label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_2026052614btree_multimapINS5_18container_internal12_GLOBAL__N_113NotAssignableEiSt4lessIS9_ESaISt4pairIKS9_iEEEEEESt14default_deleteISK_EEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE11merge_nodesEPNS1_10btree_nodeISF_EESJ_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, ptr nofree noundef captures(address) %2) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 10         ; 4 uses
  %.val22.i = load i8, ptr %i.a, align 1, !tbaa !794 ; 2 uses
  %.val26.i = load ptr, ptr %1, align 8, !tbaa !2659
  %i.b = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val24.i = load i8, ptr %i.b, align 8, !tbaa !794
  %i.c = zext i8 %.val24.i to i64
  %i.d = getelementptr inbounds nuw i8, ptr %.val26.i, i64 12
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = zext i8 %.val22.i to i64                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f ; 6 uses
  %i.i = load <2 x i32>, ptr %i.e, align 4, !tbaa !783
  store <2 x i32> %i.i, ptr %i.h, align 4, !tbaa !783
  %i.j = getelementptr i8, ptr %2, i64 10         ; 4 uses
  %.val30.i = load i8, ptr %i.j, align 1, !tbaa !794 ; 2 uses
  %i.k = zext i8 %.val30.i to i64
  %i.l = getelementptr i8, ptr %2, i64 12         ; 7 uses
  %.idx.i.i = shl nuw nsw i64 %i.k, 3             ; 4 uses
  %i.m = getelementptr i8, ptr %i.l, i64 %.idx.i.i ; 2 uses
  %.not1.i.i = icmp eq i8 %.val30.i, 0
  br i1 %.not1.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.n = add nsw i64 %.idx.i.i, -8                ; 2 uses
  %i.o = lshr exact i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 232
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader68, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.q = shl nuw nsw i64 %i.f, 3                  ; 3 uses
  %i.r = getelementptr i8, ptr %1, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 20
  %i.t = add nuw nsw i64 %.idx.i.i, %i.q          ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %i.w = getelementptr i8, ptr %2, i64 %.idx.i.i
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %3 = getelementptr i8, ptr %1, i64 %i.q
  %4 = getelementptr i8, ptr %3, i64 24
  %5 = getelementptr i8, ptr %1, i64 %i.t
  %i.y = getelementptr i8, ptr %5, i64 20
  %i.z = getelementptr i8, ptr %2, i64 16
  %bound0 = icmp ult ptr %i.s, %i.x
  %bound1 = icmp ult ptr %i.l, %i.v
  %found.conflict = and i1 %bound0, %bound1
  %bound013 = icmp ult ptr %4, %i.m
  %bound114 = icmp ult ptr %i.z, %i.y
  %found.conflict15 = and i1 %bound013, %bound114
  %conflict.rdx = or i1 %found.conflict, %found.conflict15
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader68, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.p, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.h, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.l, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 3 uses
  %i.ae = or disjoint i64 %i.ad, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.ad
  %next.gep16 = getelementptr i8, ptr %i.h, i64 %i.ae
  %next.gep17 = getelementptr i8, ptr %i.l, i64 %i.ad
  %next.gep18 = getelementptr i8, ptr %i.l, i64 %i.ae
  %i.af = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %next.gep16, i64 8
  %wide.vec = load <4 x i32>, ptr %next.gep17, align 4, !tbaa !783
  %wide.vec20 = load <4 x i32>, ptr %next.gep18, align 4, !tbaa !783
  store <4 x i32> %wide.vec, ptr %i.af, align 4, !tbaa !783
  store <4 x i32> %wide.vec20, ptr %i.ag, align 4, !tbaa !783
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !20509

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.loopexit.i, label %.lr.ph.i.i.preheader68

.lr.ph.i.i.preheader68:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.03.i.pn.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0122.i.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader68, %.lr.ph.i.i
  %.03.i.pn.i = phi ptr [ %.03.i.i, %.lr.ph.i.i ], [ %.03.i.pn.i.ph, %.lr.ph.i.i.preheader68 ]
  %.0122.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %.0122.i.i.ph, %.lr.ph.i.i.preheader68 ] ; 2 uses
  %.03.i.i = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 8 ; 2 uses
  %i.ai = load <2 x i32>, ptr %.0122.i.i, align 4, !tbaa !783
  store <2 x i32> %i.ai, ptr %.03.i.i, align 4, !tbaa !783
  %i.aj = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, %i.m
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !20510

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block
  %.val29.pre4.pre.i = load i8, ptr %i.a, align 2, !tbaa !794
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.loopexit.i, %bb.a
  %.val29.pre4.i = phi i8 [ %.val29.pre4.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.loopexit.i ], [ %.val22.i, %bb.a ] ; 2 uses
  %i.ak = getelementptr i8, ptr %1, i64 11
  %.val27.i = load i8, ptr %i.ak, align 1, !tbaa !794
  %.not.i33.i = icmp eq i8 %.val27.i, 0
  br i1 %.not.i33.i, label %bb.b, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit..loopexit_crit_edge.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit..loopexit_crit_edge.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.i
  %.val28.pre.i = load i8, ptr %i.j, align 1, !tbaa !794
  br label %.loopexit.i

bb.b:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 256
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.in3.i = phi i8 [ %.val29.pre4.i, %bb.b ], [ %.0.i, %bb.c ]
  %.0192.i = phi i8 [ 0, %bb.b ], [ %i.at, %bb.c ] ; 2 uses
  %.0.i = add i8 %.0.in3.i, 1                     ; 3 uses
  %i.an = zext i8 %.0192.i to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2659 ; 3 uses
  %i.aq = zext i8 %.0.i to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.aq
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !2659
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i8 %.0.i, ptr %i.as, align 1, !tbaa !794
  store ptr %1, ptr %i.ap, align 8, !tbaa !2659
  %i.at = add i8 %.0192.i, 1                      ; 2 uses
  %.val.i = load i8, ptr %i.j, align 1, !tbaa !794 ; 2 uses
  %.not.i = icmp ugt i8 %i.at, %.val.i
  br i1 %.not.i, label %.loopexit.loopexit.i, label %bb.c, !llvm.loop !20511

.loopexit.loopexit.i:                             ; preds = %bb.c
  %.val29.pre.i = load i8, ptr %i.a, align 2, !tbaa !794
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit..loopexit_crit_edge.i
  %.val28.i = phi i8 [ %.val.i, %.loopexit.loopexit.i ], [ %.val28.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit..loopexit_crit_edge.i ]
  %.val29.i = phi i8 [ %.val29.pre.i, %.loopexit.loopexit.i ], [ %.val29.pre4.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit..loopexit_crit_edge.i ]
  %i.au = add i8 %.val28.i, 1
  %i.av = add i8 %i.au, %.val29.i
  store i8 %i.av, ptr %i.a, align 2, !tbaa !794
  store i8 0, ptr %i.j, align 1, !tbaa !794
  %.val25.i = load ptr, ptr %1, align 8, !tbaa !2659 ; 9 uses
  %.val23.i = load i8, ptr %i.b, align 8, !tbaa !794 ; 3 uses
  %i.aw = getelementptr i8, ptr %.val25.i, i64 10 ; 2 uses
  %.val.i.i = load i8, ptr %i.aw, align 1, !tbaa !794 ; 5 uses
  %i.ax = zext i8 %.val.i.i to i64                ; 3 uses
  %i.ay = add i8 %.val23.i, 1                     ; 2 uses
  %i.az = zext i8 %i.ay to i64                    ; 5 uses
  %i.ba = sub nsw i64 %i.ax, %i.az
  %i.bb = getelementptr i8, ptr %.val25.i, i64 12 ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %i.bb, i64 %i.az ; 7 uses
  %.idx.i.i.i = shl nsw i64 %i.ba, 3
  %i.bd = getelementptr i8, ptr %i.bc, i64 %.idx.i.i.i ; 2 uses
  %.not1.i.i.i = icmp eq i8 %.val.i.i, %i.ay
  br i1 %.not1.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.loopexit.i
  %i.be = zext i8 %.val23.i to i64                ; 2 uses
  %i.bf = getelementptr [8 x i8], ptr %i.bb, i64 %i.be ; 6 uses
  %i.bg = shl nuw nsw i64 %i.ax, 3
  %i.bh = shl nuw nsw i64 %i.az, 3
  %i.bi = add nsw i64 %i.bg, -8
  %i.bj = sub nsw i64 %i.bi, %i.bh                ; 2 uses
  %i.bk = lshr exact i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check38 = icmp ult i64 %i.bj, 296
  br i1 %min.iters.check38, label %.lr.ph.i.i.i.preheader, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.preheader.i.i.i
  %i.bm = shl nuw nsw i64 %i.ax, 3                ; 2 uses
  %i.bn = shl nuw nsw i64 %i.be, 3                ; 2 uses
  %i.bo = shl nuw nsw i64 %i.az, 3                ; 3 uses
  %i.bp = add nuw nsw i64 %i.bm, %i.bn            ; 2 uses
  %i.bq = add nuw nsw i64 %i.bp, 8
  %i.br = sub nsw i64 %i.bq, %i.bo
  %i.bs = getelementptr i8, ptr %.val25.i, i64 %i.br
  %i.bt = getelementptr i8, ptr %.val25.i, i64 %i.bm
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %6 = getelementptr i8, ptr %.val25.i, i64 %i.bn
  %7 = getelementptr i8, ptr %6, i64 16
  %8 = add nuw nsw i64 %i.bp, 12
  %9 = sub nsw i64 %8, %i.bo
  %i.bv = getelementptr i8, ptr %.val25.i, i64 %9
  %10 = getelementptr i8, ptr %.val25.i, i64 %i.bo
  %11 = getelementptr i8, ptr %10, i64 16
  %bound040 = icmp ult ptr %i.bf, %i.bu
  %bound141 = icmp ult ptr %i.bc, %i.bs
  %found.conflict42 = and i1 %bound040, %bound141
  %bound043 = icmp ult ptr %7, %i.bd
  %bound144 = icmp ult ptr %11, %i.bv
  %found.conflict45 = and i1 %bound043, %bound144
  %conflict.rdx46 = or i1 %found.conflict42, %found.conflict45
  br i1 %conflict.rdx46, label %.lr.ph.i.i.i.preheader, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec48 = and i64 %i.bl, 4611686018427387900   ; 3 uses
  %i.bw = shl i64 %n.vec48, 3                     ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bf, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bc, i64 %i.bw
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next63, %vector.body49 ] ; 2 uses
  %i.bz = shl i64 %index50, 3                     ; 3 uses
  %i.ca = or disjoint i64 %i.bz, 16               ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.bf, i64 %i.bz
  %next.gep52 = getelementptr i8, ptr %i.bf, i64 %i.ca
  %next.gep53 = getelementptr i8, ptr %i.bc, i64 %i.bz
  %next.gep54 = getelementptr i8, ptr %i.bc, i64 %i.ca
  %wide.vec55 = load <4 x i32>, ptr %next.gep53, align 4, !tbaa !783
  %wide.vec58 = load <4 x i32>, ptr %next.gep54, align 4, !tbaa !783
  store <4 x i32> %wide.vec55, ptr %next.gep51, align 4, !tbaa !783
  store <4 x i32> %wide.vec58, ptr %next.gep52, align 4, !tbaa !783
  %index.next63 = add nuw i64 %index50, 4         ; 2 uses
  %i.cb = icmp eq i64 %index.next63, %n.vec48
  br i1 %i.cb, label %middle.block64, label %vector.body49, !llvm.loop !20512

middle.block64:                                   ; preds = %vector.body49
  %cmp.n65 = icmp eq i64 %i.bl, %n.vec48
  br i1 %cmp.n65, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck39, %.lr.ph.preheader.i.i.i, %middle.block64
  %.03.i.i.i.ph = phi ptr [ %i.bf, %vector.memcheck39 ], [ %i.bf, %.lr.ph.preheader.i.i.i ], [ %i.bx, %middle.block64 ]
  %.0122.i.i.i.ph = phi ptr [ %i.bc, %vector.memcheck39 ], [ %i.bc, %.lr.ph.preheader.i.i.i ], [ %i.by, %middle.block64 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.03.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i ], [ %.03.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0122.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i ], [ %.0122.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.cc = load <2 x i32>, ptr %.0122.i.i.i, align 4, !tbaa !783
  store <2 x i32> %i.cc, ptr %.03.i.i.i, align 4, !tbaa !783
  %i.cd = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.cd, %i.bd
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !20513

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block64, %.loopexit.i
  %i.cf = getelementptr i8, ptr %.val25.i, i64 11
  %.val31.i.i = load i8, ptr %i.cf, align 1, !tbaa !794
  %.not.i32.i.i = icmp eq i8 %.val31.i.i, 0
  br i1 %.not.i32.i.i, label %.critedge.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE5mergeEPSG_PSB_.exit

.critedge.i.i:                                    ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.val25.i, i64 256 ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.az
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !2659
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE16clear_and_deleteEPSG_PSB_(ptr noundef %i.ci)
  %i.cj = add i8 %.val23.i, 2                     ; 2 uses
  %.not1.i34.i = icmp ugt i8 %i.cj, %.val.i.i
  br i1 %.not1.i34.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE5mergeEPSG_PSB_.exit, label %.lr.ph.i35.i

.lr.ph.i35.i:                                     ; preds = %.critedge.i.i, %.lr.ph.i35.i
  %.02.i.i = phi i8 [ %i.cr, %.lr.ph.i35.i ], [ %i.cj, %.critedge.i.i ] ; 3 uses
  %i.ck = add i8 %.02.i.i, -1                     ; 2 uses
  %i.cl = zext i8 %.02.i.i to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !2659 ; 2 uses
  %i.co = zext i8 %i.ck to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.co
  store ptr %i.cn, ptr %i.cp, align 8, !tbaa !2659
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i8 %i.ck, ptr %i.cq, align 1, !tbaa !794
  %i.cr = add i8 %.02.i.i, 1                      ; 2 uses
  %.not.i36.i = icmp ugt i8 %i.cr, %.val.i.i
  br i1 %.not.i36.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE5mergeEPSG_PSB_.exit, label %.lr.ph.i35.i, !llvm.loop !20514

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE5mergeEPSG_PSB_.exit: ; preds = %.lr.ph.i35.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.i.i, %.critedge.i.i
  %i.cs = add i8 %.val.i.i, -1
  store i8 %i.cs, ptr %i.aw, align 1, !tbaa !794
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.ct, align 8, !tbaa !2659
  %i.cu = icmp eq ptr %.val, %2
  br i1 %i.cu, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE5mergeEPSG_PSB_.exit
  store ptr %1, ptr %i.ct, align 8, !tbaa !2659
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NotAssignableEiJSt4lessIS5_ESaISt4pairIKS5_iEESt17integral_constantIiLi256EESC_IbLb1EEEEEE5mergeEPSG_PSB_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_128Btree_ReusePoisonMemory_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_128Btree_ReusePoisonMemory_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #35 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal12_GLOBAL__N_128Btree_ReusePoisonMemory_TestE, i64 16), ptr %i.a, align 8, !tbaa !797
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_128Btree_ReusePoisonMemory_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_128Btree_ReusePoisonMemory_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.absl::lts_20260526::container_internal::(anonymous namespace)::ArenaLike", align 8 ; 7 uses
  %2 = alloca %"class.absl::lts_20260526::btree_set.4673", align 8 ; 16 uses
  %3 = alloca %"struct.std::pair.4682", align 8   ; 4 uses
  %4 = alloca %"struct.std::pair.4682", align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  store ptr @_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE9EmptyNodeEvE10empty_node, ptr %2, align 8, !tbaa !2712
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !2713
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr @_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE9EmptyNodeEvE10empty_node, ptr %i.b, align 8, !tbaa !20533
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 11 uses
  store i64 0, ptr %i.c, align 8, !tbaa !2714
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal19btree_set_containerINS1_5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEEEE6insertEOl(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 0)
          to label %bb.b unwind label %bb.am

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %.val.i = load ptr, ptr %2, align 8, !tbaa !2712 ; 2 uses
  %.val5.i = load ptr, ptr %i.b, align 8          ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %.val.i, %bb.b ], [ %i.o, %bb.e ] ; 5 uses
  %i.d = getelementptr i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 10
  %.val.i.i.i.i.i.i.i.i = load i8, ptr %i.d, align 1, !tbaa !794, !noalias !20534 ; 2 uses
  %i.e = zext i8 %.val.i.i.i.i.i.i.i.i to i64     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE11lower_boundIlEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS5_lE15checked_compareE.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.c, %bb.d
  %.01.i.i.i.i.i.i.i.i.i = phi i64 [ %i.j, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.01.i.i.i.i.i.i.i.i.i
  %i.h = load i64, ptr %i.g, align 8, !tbaa !785, !noalias !20534
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE11lower_boundIlEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS5_lE15checked_compareE.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.j = add nuw nsw i64 %.01.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.j, %i.e
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE11lower_boundIlEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS5_lE15checked_compareE.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !715

_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE11lower_boundIlEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS5_lE15checked_compareE.exit.i.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.e, %bb.d ], [ %.01.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.k = getelementptr i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 11
  %.val4.i.i.i.i.i.i = load i8, ptr %i.k, align 1, !tbaa !794, !noalias !20534
  %.not.i.i.i.i.i.i = icmp eq i8 %.val4.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE15internal_locateIlEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS9_EERKlPSG_EELb0EEERKT_.exit.i.i.i.i.i

bb.e:                                             ; preds = %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE11lower_boundIlEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS5_lE15checked_compareE.exit.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 256
  %i.m = and i64 %.0.lcssa.i.i.i.i.i.i.i.i.i, 255
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2715, !noalias !20534
  br label %bb.c

_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE15internal_locateIlEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS9_EERKlPSG_EELb0EEERKT_.exit.i.i.i.i.i: ; preds = %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE11lower_boundIlEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS5_lE15checked_compareE.exit.i.i.i.i.i.i
  %i.p = trunc i64 %.0.lcssa.i.i.i.i.i.i.i.i.i to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE15internal_locateIlEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS9_EERKlPSG_EELb0EEERKT_.exit.i.i.i.i.i
  %.sroa.7.0.i.i.i.i.i.i = phi i32 [ %i.p, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE15internal_locateIlEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS9_EERKlPSG_EELb0EEERKT_.exit.i.i.i.i.i ], [ %i.u, %bb.g ] ; 3 uses
  %.sroa.0.0.i9.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE15internal_locateIlEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS9_EERKlPSG_EELb0EEERKT_.exit.i.i.i.i.i ], [ %.val3.i.i.i.i.i.i, %bb.g ] ; 4 uses
  %i.q = getelementptr i8, ptr %.sroa.0.0.i9.i.i.i.i.i, i64 10
  %.val.i.i.i.i.i.i = load i8, ptr %i.q, align 1, !tbaa !794, !noalias !20534 ; 2 uses
  %i.r = zext i8 %.val.i.i.i.i.i.i to i32
  %i.s = icmp eq i32 %.sroa.7.0.i.i.i.i.i.i, %i.r
  br i1 %i.s, label %bb.g, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeIS9_EERKlPSF_EE.exit.loopexit.i.i.i.i

end_hunk_10
