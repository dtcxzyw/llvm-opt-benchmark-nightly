Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/bin?download=true
inline.NumInlined: 9544
inline.NumDeleted: 2682
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 530
loop-unroll.NumUnrolled: 531
begin_hunk_0_@_ZN8LightGBM9SparseBinIjE12LoadFromPairERKSt6vectorISt4pairIijESaIS4_EE:bb.a
  br i1 %.not.i35.i90, label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS4_EEDpOT_.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N8LightGBM6Common18AlignmentAllocatorIjLm32EEEET0_T_S6_S5_RT1_.exit34.i88
  tail call void @free(ptr noundef nonnull %i.kw) #19
  br label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS4_EEDpOT_.exit

_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS4_EEDpOT_.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N8LightGBM6Common18AlignmentAllocatorIjLm32EEEET0_T_S6_S5_RT1_.exit34.i88, %bb.ac
  store ptr %.0.i.i.i.i.i75, ptr %i.l, align 8, !tbaa !120
  store ptr %i.lz, ptr %i.n, align 8, !tbaa !125
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i75, i64 %i.lf
  store ptr %i.ma, ptr %i.ak, align 8, !tbaa !216
  br label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE9push_backERKj.exit

_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE9push_backERKj.exit: ; preds = %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS4_EEDpOT_.exit, %bb.z, %.lr.ph110
  %.1 = phi i32 [ %.019108, %.lr.ph110 ], [ %i.ep, %bb.z ], [ %i.ep, %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS4_EEDpOT_.exit ]
  %i.mb = add nuw i64 %.018109, 1                 ; 2 uses
  %i.mc = load ptr, ptr %i.p, align 8, !tbaa !205
  %i.md = load ptr, ptr %1, align 8, !tbaa !203   ; 2 uses
  %i.me = ptrtoint ptr %i.mc to i64
  %i.mf = ptrtoint ptr %i.md to i64
  %i.mg = sub i64 %i.me, %i.mf
  %i.mh = ashr exact i64 %i.mg, 3
  %i.mi = icmp ult i64 %i.mb, %i.mh
  br i1 %i.mi, label %.lr.ph110, label %._crit_edge111, !llvm.loop !1309
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIijESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEvS8_T_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %.not101 = icmp eq ptr %2, %3
  br i1 %.not101, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt4pairIijESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 6 uses
  %i.d = sub i64 %i.b, %i.c                       ; 8 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !204
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !205  ; 17 uses
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
  br i1 %i.p, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIijESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit

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
  br i1 %i.ab, label %middle.block200, label %vector.body193, !llvm.loop !1310

middle.block200:                                  ; preds = %vector.body193
  %cmp.n201 = icmp eq i64 %i.u, %n.vec192
  br i1 %cmp.n201, label %_ZSt22__uninitialized_move_aIPSt4pairIijES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

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
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPSt4pairIijES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1311

_ZSt22__uninitialized_move_aIPSt4pairIijES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block200
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !205
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.d
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !205
  %i.ah = ptrtoint ptr %i.q to i64
  %i.ai = sub i64 %i.ah, %i.m
  %i.aj = ashr exact i64 %i.ai, 3                 ; 5 uses
  %i.ak = icmp sgt i64 %i.aj, 0
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i51.preheader, label %_ZSt13move_backwardIPSt4pairIijES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i51.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPSt4pairIijES2_SaIS1_EET0_T_S5_S4_RT1_.exit
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
  %i.an = load i32, ptr %i.al, align 4, !tbaa !51
  store i32 %i.an, ptr %i.am, align 4, !tbaa !207
  %i.ao = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.prol, i64 -4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !51
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.prol, i64 -4
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !208
  %i.ar = add nsw i64 %.010.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i51.prol.loopexit, label %.lr.ph.i.i.i.i.i51.prol, !llvm.loop !1312

.lr.ph.i.i.i.i.i51.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i51.prol, %.lr.ph.i.i.i.i.i51.preheader
  %.010.i.i.i.i.i.unr = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i51.preheader ], [ %i.ar, %.lr.ph.i.i.i.i.i51.prol ]
  %.069.i.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i51.preheader ], [ %i.am, %.lr.ph.i.i.i.i.i51.prol ]
  %.078.i.i.i.i.i.unr = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i51.preheader ], [ %i.al, %.lr.ph.i.i.i.i.i51.prol ]
  %i.as = icmp ult i64 %i.aj, 4
  br i1 %i.as, label %_ZSt13move_backwardIPSt4pairIijES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i51

.lr.ph.i.i.i.i.i51:                               ; preds = %.lr.ph.i.i.i.i.i51.prol.loopexit, %.lr.ph.i.i.i.i.i51
  %.010.i.i.i.i.i = phi i64 [ %i.br, %.lr.ph.i.i.i.i.i51 ], [ %.010.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i51.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i51 ], [ %.069.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i51.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i51 ], [ %.078.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i51.prol.loopexit ] ; 8 uses
  %i.at = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.au = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.av = load i32, ptr %i.at, align 4, !tbaa !51
  store i32 %i.av, ptr %i.au, align 4, !tbaa !207
  %i.aw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !51
  %i.ay = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -4
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !208
  %i.az = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  %i.ba = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !51
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !207
  %i.bc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -12
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !51
  %i.be = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -12
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !208
  %i.bf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.bg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !51
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !207
  %i.bi = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -20
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !51
  %i.bk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -20
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !208
  %i.bl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 2 uses
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !51
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !207
  %i.bo = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -28
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !51
  %i.bq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -28
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !208
  %i.br = add nsw i64 %.010.i.i.i.i.i, -4
  %i.bs = icmp sgt i64 %.010.i.i.i.i.i, 4
  br i1 %i.bs, label %.lr.ph.i.i.i.i.i51, label %_ZSt13move_backwardIPSt4pairIijES2_ET0_T_S4_S3_.exit, !llvm.loop !13

_ZSt13move_backwardIPSt4pairIijES2_ET0_T_S4_S3_.exit: ; preds = %.lr.ph.i.i.i.i.i51.prol.loopexit, %.lr.ph.i.i.i.i.i51, %_ZSt22__uninitialized_move_aIPSt4pairIijES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.bt = icmp sgt i64 %i.e, 0
  br i1 %i.bt, label %.lr.ph.i.i.i.i.i52.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt4pairIijESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

.lr.ph.i.i.i.i.i52.preheader:                     ; preds = %_ZSt13move_backwardIPSt4pairIijES2_ET0_T_S4_S3_.exit
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
  %wide.vec235 = load <4 x i32>, ptr %next.gep233, align 4, !tbaa !51
  %wide.vec238 = load <4 x i32>, ptr %next.gep234, align 4, !tbaa !51
  store <4 x i32> %wide.vec235, ptr %next.gep231, align 4, !tbaa !51
  store <4 x i32> %wide.vec238, ptr %next.gep232, align 4, !tbaa !51
  %index.next243 = add nuw i64 %index230, 4       ; 2 uses
  %i.cd = icmp eq i64 %index.next243, %n.vec228
  br i1 %i.cd, label %middle.block244, label %vector.body229, !llvm.loop !1313

middle.block244:                                  ; preds = %vector.body229
  %cmp.n245 = icmp eq i64 %i.e, %n.vec228
  br i1 %cmp.n245, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt4pairIijESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i52.preheader313

.lr.ph.i.i.i.i.i52.preheader313:                  ; preds = %vector.memcheck219, %.lr.ph.i.i.i.i.i52.preheader, %middle.block244
  %.012.i.i.i.i.i.ph = phi i64 [ %i.e, %vector.memcheck219 ], [ %i.e, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.bx, %middle.block244 ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck219 ], [ %1, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.bz, %middle.block244 ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %2, %vector.memcheck219 ], [ %2, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.ca, %middle.block244 ]
  br label %.lr.ph.i.i.i.i.i52

.lr.ph.i.i.i.i.i52:                               ; preds = %.lr.ph.i.i.i.i.i52.preheader313, %.lr.ph.i.i.i.i.i52
  %.012.i.i.i.i.i = phi i64 [ %i.ch, %.lr.ph.i.i.i.i.i52 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i52.preheader313 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i52 ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i52.preheader313 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i52 ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i52.preheader313 ] ; 2 uses
  %i.ce = load <2 x i32>, ptr %.0910.i.i.i.i.i, align 4, !tbaa !51
  store <2 x i32> %i.ce, ptr %.0811.i.i.i.i.i, align 4, !tbaa !51
  %i.cf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.ch = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ci = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i52, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt4pairIijESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, !llvm.loop !1314

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIijESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.cj = getelementptr inbounds i8, ptr %2, i64 %i.n ; 4 uses
  %.not7.i.i.i.i = icmp eq ptr %i.cj, %3
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt4pairIijESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIijESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
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
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !1315

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cp, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt4pairIijESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i.preheader317

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
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt4pairIijESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !1316

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt4pairIijESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !205
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt4pairIijESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt4pairIijESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt4pairIijESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIijESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.db = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt4pairIijESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit.loopexit ], [ %i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIijESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.dc = ptrtoaddr ptr %i.db to i64
  %i.dd = sub nuw nsw i64 %i.e, %i.o
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.dd ; 6 uses
  store ptr %i.de, ptr %i.h, align 8, !tbaa !205
  %.not11.i.i.i.i.i53 = icmp eq ptr %1, %i.i
  br i1 %.not11.i.i.i.i.i53, label %_ZSt22__uninitialized_move_aIPSt4pairIijES2_SaIS1_EET0_T_S5_S4_RT1_.exit59, label %.lr.ph.i.i.i.i.i54.preheader

.lr.ph.i.i.i.i.i54.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt4pairIijESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit
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
  br i1 %i.dr, label %middle.block147, label %vector.body140, !llvm.loop !1317

middle.block147:                                  ; preds = %vector.body140
  %cmp.n148 = icmp eq i64 %i.di, %n.vec139
  br i1 %cmp.n148, label %_ZSt22__uninitialized_move_aIPSt4pairIijES2_SaIS1_EET0_T_S5_S4_RT1_.exit59.loopexit, label %.lr.ph.i.i.i.i.i54.preheader316

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
  br i1 %.not.i.i.i.i.i57, label %_ZSt22__uninitialized_move_aIPSt4pairIijES2_SaIS1_EET0_T_S5_S4_RT1_.exit59.loopexit, label %.lr.ph.i.i.i.i.i54, !llvm.loop !1318

_ZSt22__uninitialized_move_aIPSt4pairIijES2_SaIS1_EET0_T_S5_S4_RT1_.exit59.loopexit: ; preds = %.lr.ph.i.i.i.i.i54, %middle.block147
  %.pre108 = load ptr, ptr %i.h, align 8, !tbaa !205
  br label %_ZSt22__uninitialized_move_aIPSt4pairIijES2_SaIS1_EET0_T_S5_S4_RT1_.exit59

_ZSt22__uninitialized_move_aIPSt4pairIijES2_SaIS1_EET0_T_S5_S4_RT1_.exit59: ; preds = %_ZSt22__uninitialized_move_aIPSt4pairIijES2_SaIS1_EET0_T_S5_S4_RT1_.exit59.loopexit, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt4pairIijESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit
  %i.dv = phi ptr [ %.pre108, %_ZSt22__uninitialized_move_aIPSt4pairIijES2_SaIS1_EET0_T_S5_S4_RT1_.exit59.loopexit ], [ %i.de, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt4pairIijESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.n
  store ptr %i.dw, ptr %i.h, align 8, !tbaa !205
  %i.dx = ashr exact i64 %i.n, 3                  ; 7 uses
  %i.dy = icmp sgt i64 %i.dx, 0
  br i1 %i.dy, label %.lr.ph.i.i.i.i.i61.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt4pairIijESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

.lr.ph.i.i.i.i.i61.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPSt4pairIijES2_SaIS1_EET0_T_S5_S4_RT1_.exit59
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
  %wide.vec = load <4 x i32>, ptr %next.gep172, align 4, !tbaa !51
  %wide.vec175 = load <4 x i32>, ptr %next.gep173, align 4, !tbaa !51
  store <4 x i32> %wide.vec, ptr %next.gep170, align 4, !tbaa !51
  store <4 x i32> %wide.vec175, ptr %next.gep171, align 4, !tbaa !51
  %index.next179 = add nuw i64 %index169, 4       ; 2 uses
  %i.ei = icmp eq i64 %index.next179, %n.vec167
  br i1 %i.ei, label %middle.block180, label %vector.body168, !llvm.loop !1319

middle.block180:                                  ; preds = %vector.body168
  %cmp.n181 = icmp eq i64 %i.dx, %n.vec167
  br i1 %cmp.n181, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt4pairIijESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i61.preheader314

.lr.ph.i.i.i.i.i61.preheader314:                  ; preds = %vector.memcheck162, %.lr.ph.i.i.i.i.i61.preheader, %middle.block180
  %.012.i.i.i.i.i62.ph = phi i64 [ %i.dx, %vector.memcheck162 ], [ %i.dx, %.lr.ph.i.i.i.i.i61.preheader ], [ %i.ec, %middle.block180 ]
  %.0811.i.i.i.i.i63.ph = phi ptr [ %1, %vector.memcheck162 ], [ %1, %.lr.ph.i.i.i.i.i61.preheader ], [ %i.ee, %middle.block180 ]
  %.0910.i.i.i.i.i64.ph = phi ptr [ %2, %vector.memcheck162 ], [ %2, %.lr.ph.i.i.i.i.i61.preheader ], [ %i.ef, %middle.block180 ]
  br label %.lr.ph.i.i.i.i.i61

.lr.ph.i.i.i.i.i61:                               ; preds = %.lr.ph.i.i.i.i.i61.preheader314, %.lr.ph.i.i.i.i.i61
  %.012.i.i.i.i.i62 = phi i64 [ %i.em, %.lr.ph.i.i.i.i.i61 ], [ %.012.i.i.i.i.i62.ph, %.lr.ph.i.i.i.i.i61.preheader314 ] ; 2 uses
  %.0811.i.i.i.i.i63 = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i61 ], [ %.0811.i.i.i.i.i63.ph, %.lr.ph.i.i.i.i.i61.preheader314 ] ; 2 uses
  %.0910.i.i.i.i.i64 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i61 ], [ %.0910.i.i.i.i.i64.ph, %.lr.ph.i.i.i.i.i61.preheader314 ] ; 2 uses
  %i.ej = load <2 x i32>, ptr %.0910.i.i.i.i.i64, align 4, !tbaa !51
  store <2 x i32> %i.ej, ptr %.0811.i.i.i.i.i63, align 4, !tbaa !51
  %i.ek = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i64, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i63, i64 8
  %i.em = add nsw i64 %.012.i.i.i.i.i62, -1
  %i.en = icmp samesign ugt i64 %.012.i.i.i.i.i62, 1
  br i1 %i.en, label %.lr.ph.i.i.i.i.i61, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt4pairIijESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, !llvm.loop !1320

bb.e:                                             ; preds = %bb.b
  %i.eo = load ptr, ptr %0, align 8, !tbaa !203   ; 7 uses
  %i.ep = ptrtoint ptr %i.eo to i64               ; 3 uses
  %i.eq = sub i64 %i.k, %i.ep
  %i.er = ashr exact i64 %i.eq, 3                 ; 4 uses
  %i.es = sub nsw i64 1152921504606846975, %i.er
  %i.et = icmp ult i64 %i.es, %i.e
  br i1 %i.et, label %bb.f, label %_ZNKSt6vectorISt4pairIijESaIS1_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #40
  unreachable

_ZNKSt6vectorISt4pairIijESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.er, i64 %i.e)
  %i.eu = add nsw i64 %.sroa.speculated.i, %i.er  ; 2 uses
  %i.ev = icmp ult i64 %i.eu, %i.er
  %i.ew = tail call i64 @llvm.umin.i64(i64 %i.eu, i64 1152921504606846975)
  %i.ex = select i1 %i.ev, i64 1152921504606846975, i64 %i.ew ; 3 uses
  %.not.i = icmp eq i64 %i.ex, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt4pairIijESaIS1_EE11_M_allocateEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorISt4pairIijESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ey = shl nuw nsw i64 %i.ex, 3
  %i.ez = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ey) #39
  br label %_ZNSt12_Vector_baseISt4pairIijESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt4pairIijESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorISt4pairIijESaIS1_EE12_M_check_lenEmPKc.exit, %bb.g
  %i.fa = phi ptr [ %i.ez, %bb.g ], [ null, %_ZNKSt6vectorISt4pairIijESaIS1_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %.not11.i.i.i.i.i66 = icmp eq ptr %i.eo, %1
  br i1 %.not11.i.i.i.i.i66, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIijES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i67.preheader

.lr.ph.i.i.i.i.i67.preheader:                     ; preds = %_ZNSt12_Vector_baseISt4pairIijESaIS1_EE11_M_allocateEm.exit
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
  br i1 %i.fl, label %middle.block260, label %vector.body253, !llvm.loop !1321

middle.block260:                                  ; preds = %vector.body253
  %cmp.n261 = icmp eq i64 %i.fe, %n.vec252
  br i1 %cmp.n261, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIijES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i67.preheader311

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
  br i1 %.not.i.i.i.i.i70, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIijES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i67, !llvm.loop !1322

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIijES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i67, %middle.block260, %_ZNSt12_Vector_baseISt4pairIijESaIS1_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i71 = phi ptr [ %i.fa, %_ZNSt12_Vector_baseISt4pairIijESaIS1_EE11_M_allocateEm.exit ], [ %i.fg, %middle.block260 ], [ %i.fo, %.lr.ph.i.i.i.i.i67 ] ; 4 uses
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

vector.ph272:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIijES2_SaIS1_EET0_T_S5_S4_RT1_.exit
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
  br i1 %i.ga, label %middle.block281, label %vector.body274, !llvm.loop !1323

middle.block281:                                  ; preds = %vector.body274
  %cmp.n282 = icmp eq i64 %i.fs, %n.vec273
  br i1 %cmp.n282, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt4pairIijESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit78, label %.lr.ph.i.i.i.i73.preheader

.lr.ph.i.i.i.i73.preheader:                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIijES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %middle.block281
  %.09.i.i.i.i74.ph = phi ptr [ %.0.lcssa.i.i.i.i.i71, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIijES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.fv, %middle.block281 ]
  %.sroa.04.08.i.i.i.i75.ph = phi ptr [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIijES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.fw, %middle.block281 ]
  br label %.lr.ph.i.i.i.i73

.lr.ph.i.i.i.i73:                                 ; preds = %.lr.ph.i.i.i.i73.preheader, %.lr.ph.i.i.i.i73
  %.09.i.i.i.i74 = phi ptr [ %i.gd, %.lr.ph.i.i.i.i73 ], [ %.09.i.i.i.i74.ph, %.lr.ph.i.i.i.i73.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i75 = phi ptr [ %i.gc, %.lr.ph.i.i.i.i73 ], [ %.sroa.04.08.i.i.i.i75.ph, %.lr.ph.i.i.i.i73.preheader ] ; 2 uses
  %i.gb = load i64, ptr %.sroa.04.08.i.i.i.i75, align 4
  store i64 %i.gb, ptr %.09.i.i.i.i74, align 4
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i75, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i74, i64 8 ; 2 uses
  %.not.i.i.i.i76 = icmp eq ptr %i.gc, %3
  br i1 %.not.i.i.i.i76, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt4pairIijESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit78, label %.lr.ph.i.i.i.i73, !llvm.loop !1324

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt4pairIijESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit78: ; preds = %.lr.ph.i.i.i.i73, %middle.block281
  %.lcssa127 = phi ptr [ %i.fv, %middle.block281 ], [ %i.gd, %.lr.ph.i.i.i.i73 ] ; 5 uses
  %.not11.i.i.i.i.i79 = icmp eq ptr %1, %i.i
  br i1 %.not11.i.i.i.i.i79, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIijES2_SaIS1_EET0_T_S5_S4_RT1_.exit85, label %.lr.ph.i.i.i.i.i80.preheader

.lr.ph.i.i.i.i.i80.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt4pairIijESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit78
  %.lcssa127288 = ptrtoaddr ptr %.lcssa127 to i64
  %i.ge = add i64 %i.k, -8
  %i.gf = sub i64 %i.ge, %i.a                     ; 2 uses
  %i.gg = lshr i64 %i.gf, 3
  %i.gh = add nuw nsw i64 %i.gg, 1                ; 2 uses
  %min.iters.check290 = icmp ult i64 %i.gf, 72
  %i.gi = sub i64 %i.a, %.lcssa127288
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi:bb.a
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load i32, ptr %1, align 4, !tbaa !51
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !51
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !235
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.dc) #38
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8, !tbaa !76
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !166
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.dd, ptr %i.a, align 8, !tbaa !235
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block135, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM3Log5WriteENS_8LogLevelEPKcS3_P13__va_list_tag(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 6 uses
  %i.b = tail call noundef nonnull align 4 dereferenceable(4) ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN8LightGBM3Log8GetLevelEvE5level)
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1641
  %.not = icmp sgt i32 %0, %i.c
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN8LightGBM3Log14GetLogCallBackEvE8callback) ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !321
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef %1) ; 0 uses
  %i.h = load ptr, ptr @stdout, align 8, !tbaa !265, !noalias !1642
  %i.i = tail call i32 @vfprintf(ptr noundef %i.h, ptr noundef %2, ptr noundef %3) #19, !inline_history !1639 ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.j = load ptr, ptr @stdout, align 8, !tbaa !265
  %i.k = tail call i32 @fflush(ptr noundef %i.j)  ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 512, ptr noundef nonnull @.str.17, ptr noundef %1) #19 ; 0 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !321
  call void %i.m(ptr noundef nonnull %i.a)
  %i.n = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 512, ptr noundef %2, ptr noundef %3) #19 ; 0 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !321
  call void %i.o(ptr noundef nonnull %i.a)
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !321
  call void %i.p(ptr noundef nonnull @.str.18)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #17

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = add i64 %i.g, -8
  %i.m = sub i64 %i.l, %i.d                       ; 3 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check139 = icmp ult i64 %i.m, 56
  br i1 %min.iters.check139, label %.lr.ph.i.preheader163, label %vector.memcheck140

vector.memcheck140:                               ; preds = %.lr.ph.i.preheader
  %i.p = and i64 %i.m, -8
  %i.q = add i64 %i.p, 8                          ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 %i.q
  %i.s = getelementptr i8, ptr %1, i64 %i.q
  %bound0141 = icmp ult ptr %0, %i.s
  %bound1142 = icmp ult ptr %1, %i.r
  %found.conflict143 = and i1 %bound0141, %bound1142
  br i1 %found.conflict143, label %.lr.ph.i.preheader163, label %vector.ph144

vector.ph144:                                     ; preds = %vector.memcheck140
  %n.vec145 = and i64 %i.o, 4611686018427387902   ; 3 uses
  %i.t = shl i64 %n.vec145, 3                     ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph144
  %index147 = phi i64 [ 0, %vector.ph144 ], [ %index.next158, %vector.body146 ] ; 2 uses
  %i.w = shl i64 %index147, 3                     ; 2 uses
  %next.gep148 = getelementptr i8, ptr %1, i64 %i.w ; 2 uses
  %next.gep149 = getelementptr i8, ptr %0, i64 %i.w ; 2 uses
  %wide.vec150 = load <4 x i32>, ptr %next.gep149, align 4, !tbaa !51, !alias.scope !1652, !noalias !1653
  %wide.vec153 = load <4 x i32>, ptr %next.gep148, align 4, !tbaa !51, !alias.scope !1653
  store <4 x i32> %wide.vec153, ptr %next.gep149, align 4, !tbaa !51, !alias.scope !1652, !noalias !1653
  store <4 x i32> %wide.vec150, ptr %next.gep148, align 4, !tbaa !51, !alias.scope !1653
  %index.next158 = add nuw i64 %index147, 2       ; 2 uses
  %i.x = icmp eq i64 %index.next158, %n.vec145
  br i1 %i.x, label %middle.block159, label %vector.body146, !llvm.loop !1646

middle.block159:                                  ; preds = %vector.body146
  %cmp.n160 = icmp eq i64 %i.o, %n.vec145
  br i1 %cmp.n160, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i.preheader163

.lr.ph.i.preheader163:                            ; preds = %vector.memcheck140, %.lr.ph.i.preheader, %middle.block159
  %.sroa.0.08.i.ph = phi ptr [ %1, %vector.memcheck140 ], [ %1, %.lr.ph.i.preheader ], [ %i.u, %middle.block159 ]
  %.sroa.04.07.i.ph = phi ptr [ %0, %vector.memcheck140 ], [ %0, %.lr.ph.i.preheader ], [ %i.v, %middle.block159 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader163, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.af, %.lr.ph.i ], [ %.sroa.0.08.i.ph, %.lr.ph.i.preheader163 ] ; 4 uses
  %.sroa.04.07.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.sroa.04.07.i.ph, %.lr.ph.i.preheader163 ] ; 4 uses
  %i.y = load i32, ptr %.sroa.04.07.i, align 4, !tbaa !51
  %i.z = load i32, ptr %.sroa.0.08.i, align 4, !tbaa !51
  store i32 %i.z, ptr %.sroa.04.07.i, align 4, !tbaa !51
  store i32 %i.y, ptr %.sroa.0.08.i, align 4, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 4 ; 2 uses
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !51
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !51
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !51
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !51
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8
  %.not.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i, !llvm.loop !1647

bb.d:                                             ; preds = %bb.c
  %i.ag = sub i64 %i.c, %i.g
  %i.ah = getelementptr inbounds i8, ptr %0, i64 %i.ag ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.056 = phi i64 [ %i.f, %bb.d ], [ %.056.be, %.backedge ] ; 7 uses
  %.0 = phi i64 [ %i.i, %bb.d ], [ %.0.be, %.backedge ] ; 14 uses
  %.sroa.026.0 = phi ptr [ %0, %bb.d ], [ %.sroa.026.0.be, %.backedge ] ; 18 uses
  %i.ai = sub nsw i64 %.056, %.0                  ; 9 uses
  %i.aj = icmp slt i64 %.0, %i.ai
  br i1 %i.aj, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp sgt i64 %i.ai, 0
  br i1 %i.ak, label %.lr.ph66.preheader, label %._crit_edge67

.lr.ph66.preheader:                               ; preds = %bb.f
  %i.al = getelementptr [8 x i8], ptr %.sroa.026.0, i64 %.0 ; 7 uses
  %min.iters.check = icmp ult i64 %i.ai, 14
  br i1 %min.iters.check, label %.lr.ph66.preheader164, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph66.preheader
  %i.am = shl i64 %.056, 3                        ; 3 uses
  %i.an = shl i64 %.0, 3                          ; 3 uses
  %i.ao = add i64 %i.am, -4                       ; 2 uses
  %i.ap = sub i64 %i.ao, %i.an
  %i.aq = getelementptr i8, ptr %.sroa.026.0, i64 %i.ap ; 3 uses
  %i.ar = getelementptr i8, ptr %.sroa.026.0, i64 %i.ao ; 3 uses
  %3 = getelementptr i8, ptr %.sroa.026.0, i64 4  ; 3 uses
  %4 = sub i64 %i.am, %i.an
  %5 = getelementptr i8, ptr %.sroa.026.0, i64 %4 ; 3 uses
  %i.as = getelementptr i8, ptr %.sroa.026.0, i64 %i.an
  %6 = getelementptr i8, ptr %i.as, i64 4         ; 3 uses
  %i.at = getelementptr i8, ptr %.sroa.026.0, i64 %i.am ; 3 uses
  %bound0.a = icmp ult ptr %.sroa.026.0, %i.ar
  %bound1.a = icmp ult ptr %i.al, %i.aq
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %bound0106 = icmp ult ptr %.sroa.026.0, %5
  %bound1107 = icmp ult ptr %3, %i.aq
  %found.conflict108 = and i1 %bound0106, %bound1107
  %conflict.rdx = or i1 %found.conflict.a, %found.conflict108
  %bound0109 = icmp ult ptr %.sroa.026.0, %i.at
  %bound1110 = icmp ult ptr %6, %i.aq
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx112 = or i1 %conflict.rdx, %found.conflict111
  %bound0113 = icmp ult ptr %i.al, %5
  %bound1114 = icmp ult ptr %3, %i.ar
  %found.conflict115 = and i1 %bound0113, %bound1114
  %conflict.rdx116 = or i1 %conflict.rdx112, %found.conflict115
  %bound0117 = icmp ult ptr %i.al, %i.at
  %bound1118 = icmp ult ptr %6, %i.ar
  %found.conflict119 = and i1 %bound0117, %bound1118
  %conflict.rdx120 = or i1 %conflict.rdx116, %found.conflict119
  %bound0121 = icmp ult ptr %3, %i.at
  %bound1122 = icmp ult ptr %6, %5
  %found.conflict123 = and i1 %bound0121, %bound1122
  %conflict.rdx124 = or i1 %conflict.rdx120, %found.conflict123
  br i1 %conflict.rdx124, label %.lr.ph66.preheader164, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ai, 9223372036854775806     ; 4 uses
  %i.au = shl i64 %n.vec, 3                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.al, i64 %i.au
  %i.aw = getelementptr i8, ptr %.sroa.026.0, i64 %i.au ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.ax ; 2 uses
  %next.gep125 = getelementptr i8, ptr %.sroa.026.0, i64 %i.ax ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep125, align 4, !tbaa !51
  %wide.vec127 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !51
  store <4 x i32> %wide.vec127, ptr %next.gep125, align 4, !tbaa !51
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !51
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1648

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %._crit_edge67, label %.lr.ph66.preheader164

.lr.ph66.preheader164:                            ; preds = %vector.memcheck, %.lr.ph66.preheader, %middle.block
  %.01964.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph66.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.sroa.025.063.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph66.preheader ], [ %i.av, %middle.block ] ; 5 uses
  %.sroa.026.162.ph = phi ptr [ %.sroa.026.0, %vector.memcheck ], [ %.sroa.026.0, %.lr.ph66.preheader ], [ %i.aw, %middle.block ] ; 5 uses
  %i.az = sub i64 %.056, %.0
  %i.ba = xor i64 %.01964.ph, -1
  %i.bb = add i64 %.056, %i.ba
  %xtraiter167 = and i64 %i.az, 1
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br i1 %lcmp.mod168.not, label %.lr.ph66.prol.loopexit, label %.lr.ph66.prol

.lr.ph66.prol:                                    ; preds = %.lr.ph66.preheader164
  %i.bc = load i32, ptr %.sroa.026.162.ph, align 4, !tbaa !51
  %i.bd = load i32, ptr %.sroa.025.063.ph, align 4, !tbaa !51
  store i32 %i.bd, ptr %.sroa.026.162.ph, align 4, !tbaa !51
  store i32 %i.bc, ptr %.sroa.025.063.ph, align 4, !tbaa !51
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.026.162.ph, i64 4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.025.063.ph, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !51
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !51
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !51
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !51
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.026.162.ph, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.025.063.ph, i64 8
  %i.bk = or disjoint i64 %.01964.ph, 1
  br label %.lr.ph66.prol.loopexit

.lr.ph66.prol.loopexit:                           ; preds = %.lr.ph66.prol, %.lr.ph66.preheader164
  %.lcssa.unr = phi ptr [ poison, %.lr.ph66.preheader164 ], [ %i.bi, %.lr.ph66.prol ]
  %.01964.unr = phi i64 [ %.01964.ph, %.lr.ph66.preheader164 ], [ %i.bk, %.lr.ph66.prol ]
  %.sroa.025.063.unr = phi ptr [ %.sroa.025.063.ph, %.lr.ph66.preheader164 ], [ %i.bj, %.lr.ph66.prol ]
  %.sroa.026.162.unr = phi ptr [ %.sroa.026.162.ph, %.lr.ph66.preheader164 ], [ %i.bi, %.lr.ph66.prol ]
  %i.bl = icmp eq i64 %i.bb, %.0
  br i1 %i.bl, label %._crit_edge67, label %.lr.ph66

._crit_edge67:                                    ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66, %middle.block, %bb.f
  %.sroa.026.1.lcssa = phi ptr [ %.sroa.026.0, %bb.f ], [ %i.aw, %middle.block ], [ %.lcssa.unr, %.lr.ph66.prol.loopexit ], [ %i.cb, %.lr.ph66 ]
  %i.bm = srem i64 %.056, %.0                     ; 2 uses
  %.not21 = icmp eq i64 %i.bm, 0
  br i1 %.not21, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %bb.g

.lr.ph66:                                         ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66
  %.01964 = phi i64 [ %i.cd, %.lr.ph66 ], [ %.01964.unr, %.lr.ph66.prol.loopexit ]
  %.sroa.025.063 = phi ptr [ %i.cc, %.lr.ph66 ], [ %.sroa.025.063.unr, %.lr.ph66.prol.loopexit ] ; 6 uses
  %.sroa.026.162 = phi ptr [ %i.cb, %.lr.ph66 ], [ %.sroa.026.162.unr, %.lr.ph66.prol.loopexit ] ; 6 uses
  %i.bn = load i32, ptr %.sroa.026.162, align 4, !tbaa !51
  %i.bo = load i32, ptr %.sroa.025.063, align 4, !tbaa !51
  store i32 %i.bo, ptr %.sroa.026.162, align 4, !tbaa !51
  store i32 %i.bn, ptr %.sroa.025.063, align 4, !tbaa !51
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.026.162, i64 4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.025.063, i64 4 ; 2 uses
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !51
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !51
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !51
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !51
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.026.162, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.025.063, i64 8 ; 2 uses
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !51
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !51
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !51
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !51
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.026.162, i64 12 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.025.063, i64 12 ; 2 uses
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !51
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !51
  store i32 %i.ca, ptr %i.bx, align 4, !tbaa !51
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !51
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.026.162, i64 16 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.025.063, i64 16
  %i.cd = add nuw nsw i64 %.01964, 2              ; 2 uses
  %exitcond71.not.1 = icmp eq i64 %i.cd, %i.ai
  br i1 %exitcond71.not.1, label %._crit_edge67, label %.lr.ph66, !llvm.loop !1649

bb.g:                                             ; preds = %._crit_edge67
  %i.ce = sub nsw i64 %.0, %i.bm
  br label %.backedge

bb.h:                                             ; preds = %bb.e
  %i.cf = getelementptr inbounds [8 x i8], ptr %.sroa.026.0, i64 %.056 ; 3 uses
  %i.cg = sub i64 0, %i.ai
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.cg ; 3 uses
  %i.ci = icmp sgt i64 %.0, 0
  br i1 %i.ci, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %xtraiter = and i64 %.0, 1
  %i.cj = icmp eq i64 %.0, 1
  br i1 %i.cj, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.0, 9223372036854775806
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.0.060.epil.init = phi ptr [ %i.cf, %.lr.ph.preheader ], [ %i.dc, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.026.259.epil.init = phi ptr [ %i.ch, %.lr.ph.preheader ], [ %i.db, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod166 = trunc i64 %.0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod166)
  %i.ck = getelementptr inbounds i8, ptr %.sroa.026.259.epil.init, i64 -8 ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %.sroa.0.060.epil.init, i64 -8 ; 2 uses
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !51
  %i.cn = load i32, ptr %i.cl, align 4, !tbaa !51
  store i32 %i.cn, ptr %i.ck, align 4, !tbaa !51
  store i32 %i.cm, ptr %i.cl, align 4, !tbaa !51
  %i.co = getelementptr inbounds i8, ptr %.sroa.026.259.epil.init, i64 -4 ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %.sroa.0.060.epil.init, i64 -4 ; 2 uses
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !51
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !51
  store i32 %i.cr, ptr %i.co, align 4, !tbaa !51
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !51
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h
  %.sroa.026.2.lcssa = phi ptr [ %i.ch, %bb.h ], [ %.sroa.026.0, %._crit_edge.loopexit.unr-lcssa ], [ %.sroa.026.0, %.lr.ph.epil.preheader ]
  %i.cs = srem i64 %.056, %i.ai                   ; 2 uses
  %.not = icmp eq i64 %i.cs, 0
  br i1 %.not, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.g
  %.056.be = phi i64 [ %.0, %bb.g ], [ %i.ai, %._crit_edge ]
  %.0.be = phi i64 [ %i.ce, %bb.g ], [ %i.cs, %._crit_edge ]
  %.sroa.026.0.be = phi ptr [ %.sroa.026.1.lcssa, %bb.g ], [ %.sroa.026.2.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !1650

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.060 = phi ptr [ %i.cf, %.lr.ph.preheader.new ], [ %i.dc, %.lr.ph ] ; 4 uses
  %.sroa.026.259 = phi ptr [ %i.ch, %.lr.ph.preheader.new ], [ %i.db, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ct = getelementptr inbounds i8, ptr %.sroa.026.259, i64 -8 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %.sroa.0.060, i64 -8 ; 2 uses
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !51
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !51
  store i32 %i.cw, ptr %i.ct, align 4, !tbaa !51
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !51
  %i.cx = getelementptr inbounds i8, ptr %.sroa.026.259, i64 -4 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.060, i64 -4 ; 2 uses
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !51
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !51
  store i32 %i.da, ptr %i.cx, align 4, !tbaa !51
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !51
  %i.db = getelementptr inbounds i8, ptr %.sroa.026.259, i64 -16 ; 4 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.0.060, i64 -16 ; 4 uses
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !51
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !51
  store i32 %i.de, ptr %i.db, align 4, !tbaa !51
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !51
  %i.df = getelementptr inbounds i8, ptr %.sroa.026.259, i64 -12 ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %.sroa.0.060, i64 -12 ; 2 uses
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !51
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !51
  store i32 %i.di, ptr %i.df, align 4, !tbaa !51
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !51
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1651

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit: ; preds = %._crit_edge, %._crit_edge67, %.lr.ph.i, %middle.block159, %bb.b, %bb.a
  %.sroa.015.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %1, %middle.block159 ], [ %1, %.lr.ph.i ], [ %i.ah, %._crit_edge67 ], [ %i.ah, %._crit_edge ]
  ret ptr %.sroa.015.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES4_lET_S9_S9_S9_T1_SA_T0_SA_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp sle i64 %3, %4
  %.not = icmp sgt i64 %4, %6
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.d, label %bb.b
end_hunk_1
