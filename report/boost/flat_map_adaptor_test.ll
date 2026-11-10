Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_map_adaptor_test?download=true
inline.NumInlined: 32430
inline.NumDeleted: 3898
loop-unroll.NumCompletelyUnrolled: 264
loop-unroll.NumRuntimeUnrolled: 241
loop-unroll.NumUnrolled: 512
begin_hunk_0_@_ZN5boost7movelib10rotate_gcdIPSt4pairIiiEEET_S5_S5_S5_:bb.a
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !337
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !337
  %i.ac = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.not.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i, !llvm.loop !2493

bb.d:                                             ; preds = %bb.c
  %i.ae = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.af = sub i64 %i.ae, %i.d
  %i.ag = ashr exact i64 %i.af, 3                 ; 6 uses
  %i.ah = add nsw i64 %i.ag, -1
  %i.ai = and i64 %i.ah, %i.ag
  %i.aj = add nsw i64 %i.f, -1
  %i.ak = and i64 %i.aj, %i.f
  %i.al = or i64 %i.ai, %i.ak
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.e, label %.preheader36.i

.preheader36.i:                                   ; preds = %bb.d
  %i.an = or i64 %i.ag, %i.f
  %i.ao = and i64 %i.an, 1
  %.not.not37.i = icmp eq i64 %i.ao, 0
  br i1 %.not.not37.i, label %.lr.ph.i56, label %.preheader.i

bb.e:                                             ; preds = %bb.d
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.f)
  br label %_ZN5boost7movelib3gcdImEET_S2_S2_.exit

.preheader.i:                                     ; preds = %.lr.ph.i56, %.preheader36.i
  %.030.lcssa.i = phi i64 [ %i.ag, %.preheader36.i ], [ %i.au, %.lr.ph.i56 ] ; 3 uses
  %.029.lcssa.i = phi i64 [ %i.f, %.preheader36.i ], [ %i.av, %.lr.ph.i56 ] ; 3 uses
  %.0.lcssa.i54 = phi i64 [ 1, %.preheader36.i ], [ %i.at, %.lr.ph.i56 ]
  %i.aq = icmp ne i64 %.030.lcssa.i, 0
  %i.ar = icmp ne i64 %.029.lcssa.i, 0
  %i.as = and i1 %i.aq, %i.ar
  br i1 %i.as, label %.lr.ph45.i, label %._crit_edge.i

.lr.ph.i56:                                       ; preds = %.preheader36.i, %.lr.ph.i56
  %.040.i = phi i64 [ %i.at, %.lr.ph.i56 ], [ 1, %.preheader36.i ]
  %.02939.i = phi i64 [ %i.av, %.lr.ph.i56 ], [ %i.f, %.preheader36.i ]
  %.03038.i = phi i64 [ %i.au, %.lr.ph.i56 ], [ %i.ag, %.preheader36.i ]
  %i.at = shl i64 %.040.i, 1                      ; 2 uses
  %i.au = lshr i64 %.03038.i, 1                   ; 3 uses
  %i.av = lshr i64 %.02939.i, 1                   ; 3 uses
  %i.aw = or i64 %i.au, %i.av
  %i.ax = and i64 %i.aw, 1
  %.not.not.i = icmp eq i64 %i.ax, 0
  br i1 %.not.not.i, label %.lr.ph.i56, label %.preheader.i, !llvm.loop !37

.lr.ph45.i:                                       ; preds = %.preheader.i, %bb.l
  %.144.i = phi i64 [ %.2.i, %bb.l ], [ %.029.lcssa.i, %.preheader.i ] ; 7 uses
  %.13143.i = phi i64 [ %.232.i, %bb.l ], [ %.030.lcssa.i, %.preheader.i ] ; 7 uses
  %i.ay = and i64 %.13143.i, 1
  %.not.i55 = icmp eq i64 %i.ay, 0
  br i1 %.not.i55, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph45.i
  %i.az = lshr exact i64 %.13143.i, 1
  br label %bb.l

bb.g:                                             ; preds = %.lr.ph45.i
  %i.ba = and i64 %.144.i, 1
  %.not34.i = icmp eq i64 %i.ba, 0
  br i1 %.not34.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bb = lshr exact i64 %.144.i, 1
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %.not35.i = icmp ult i64 %.13143.i, %.144.i
  br i1 %.not35.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = sub nuw i64 %.13143.i, %.144.i
  %i.bd = lshr exact i64 %i.bc, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.be = sub nuw i64 %.144.i, %.13143.i
  %i.bf = lshr exact i64 %i.be, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.f
  %.232.i = phi i64 [ %i.bd, %bb.j ], [ %.13143.i, %bb.k ], [ %.13143.i, %bb.h ], [ %i.az, %bb.f ] ; 3 uses
  %.2.i = phi i64 [ %.144.i, %bb.j ], [ %i.bf, %bb.k ], [ %i.bb, %bb.h ], [ %.144.i, %bb.f ] ; 3 uses
  %i.bg = icmp ne i64 %.232.i, 0
  %i.bh = icmp ne i64 %.2.i, 0
  %i.bi = select i1 %i.bg, i1 %i.bh, i1 false
  br i1 %i.bi, label %.lr.ph45.i, label %._crit_edge.i, !llvm.loop !38

._crit_edge.i:                                    ; preds = %bb.l, %.preheader.i
  %.131.lcssa.i = phi i64 [ %.030.lcssa.i, %.preheader.i ], [ %.232.i, %bb.l ]
  %.1.lcssa.i = phi i64 [ %.029.lcssa.i, %.preheader.i ], [ %.2.i, %bb.l ]
  %i.bj = add i64 %.1.lcssa.i, %.131.lcssa.i
  %i.bk = mul i64 %i.bj, %.0.lcssa.i54
  br label %_ZN5boost7movelib3gcdImEET_S2_S2_.exit

_ZN5boost7movelib3gcdImEET_S2_S2_.exit:           ; preds = %bb.e, %._crit_edge.i
  %.033.i = phi i64 [ %i.ap, %bb.e ], [ %i.bk, %._crit_edge.i ] ; 2 uses
  %.idx = shl nuw nsw i64 %.033.i, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.not60 = icmp eq i64 %.033.i, 0
  br i1 %.not60, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost7movelib3gcdImEET_S2_S2_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.o
  %.04561 = phi ptr [ %0, %.lr.ph ], [ %i.cb, %bb.o ] ; 5 uses
  %i.bn = load i64, ptr %.04561, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.04561, i64 %i.e
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.044 = phi ptr [ %.04561, %bb.m ], [ %.0, %bb.n ] ; 2 uses
  %.0 = phi ptr [ %i.bo, %bb.m ], [ %i.ca, %bb.n ] ; 6 uses
  %i.bp = load i32, ptr %.0, align 4, !tbaa !337
  store i32 %i.bp, ptr %.044, align 4, !tbaa !346
  %i.bq = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !337
  %i.bs = getelementptr inbounds nuw i8, ptr %.044, i64 4
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !347
  %i.bt = ptrtoint ptr %.0 to i64
  %i.bu = sub i64 %i.ae, %i.bt
  %i.bv = ashr exact i64 %i.bu, 3                 ; 2 uses
  %i.bw = icmp ugt i64 %i.bv, %i.f
  %i.bx = getelementptr inbounds nuw i8, ptr %.0, i64 %i.e
  %i.by = sub nsw i64 0, %i.bv
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.by
  %i.ca = select i1 %i.bw, ptr %i.bx, ptr %i.bz   ; 2 uses
  %.not53 = icmp eq ptr %i.ca, %.04561
  br i1 %.not53, label %bb.o, label %bb.n, !llvm.loop !2494

bb.o:                                             ; preds = %bb.n
  store i64 %i.bn, ptr %.0, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %.04561, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cb, %i.bl
  br i1 %.not, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %bb.m, !llvm.loop !2495

_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit: ; preds = %bb.o, %.lr.ph.i, %middle.block, %_ZN5boost7movelib3gcdImEET_S2_S2_.exit, %bb.b, %bb.a
  %.046 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.h, %_ZN5boost7movelib3gcdImEET_S2_S2_.exit ], [ %i.h, %middle.block ], [ %i.h, %.lr.ph.i ], [ %i.h, %bb.o ]
  ret ptr %.046
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_NS0_7move_opES5_EEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_T3_T4_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %9 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 4 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %16 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %i.e = add i64 %5, %4                           ; 6 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %7, ptr %i.b, align 8, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %7, ptr %i.c, align 8, !tbaa !330
  %i.g = getelementptr [8 x i8], ptr %1, i64 %3   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.g, ptr %i.d, align 8, !tbaa !330
  %i.h = mul i64 %i.e, %2
  %i.i = getelementptr [8 x i8], ptr %i.g, i64 %i.h ; 12 uses
  %.not216 = icmp eq i64 %i.e, 0
  br i1 %.not216, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit150, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = icmp eq i64 %5, 0
  %i.k = select i1 %i.j, i64 0, i64 %4            ; 2 uses
  %i.l = add i64 %i.k, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.e)
  %.idx208 = shl i64 %2, 3                        ; 8 uses
  %.not121 = icmp eq i64 %6, 0
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %.not2830.i = icmp eq i64 %2, 0
  %i.n = shl i64 %3, 3                            ; 2 uses
  %i.o = or disjoint i64 %i.n, 4                  ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.o   ; 3 uses
  %i.p = mul i64 %2, %i.e
  %i.q = add i64 %i.p, %3
  %i.r = shl i64 %i.q, 3
  %i.s = getelementptr i8, ptr %1, i64 %i.r
  %scevgep328 = getelementptr i8, ptr %i.s, i64 -4 ; 3 uses
  %scevgep329 = getelementptr i8, ptr %7, i64 %.idx208 ; 4 uses
  %i.t = shl i64 %3, 3                            ; 2 uses
  %i.u = add i64 %i.t, 8
  %i.v = add i64 %i.t, %i.a
  %i.w = add i64 %i.v, %.idx208
  %i.x = add i64 %i.w, -8
  %i.y = shl i64 %3, 3
  %i.z = add i64 %i.y, %i.a
  %i.aa = add i64 %i.z, %.idx208
  %i.ab = add i64 %i.aa, -8
  %i.ac = add i64 %.idx208, -8                    ; 2 uses
  %i.ad = lshr exact i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 184
  %i.af = getelementptr i8, ptr %1, i64 %i.n
  %i.ag = getelementptr i8, ptr %i.af, i64 -4
  %i.ah = getelementptr i8, ptr %1, i64 %i.o
  %bound0333 = icmp ult ptr %7, %scevgep328
  %bound1334 = icmp ult ptr %i.g, %scevgep329
  %found.conflict335 = and i1 %bound0333, %bound1334
  %stride.check = icmp slt i64 %.idx208, 0
  %i.ai = or i1 %found.conflict335, %stride.check
  %bound0337 = icmp ult ptr %7, %i.i
  %bound1338 = icmp ult ptr %scevgep, %scevgep329
  %found.conflict339 = and i1 %bound0337, %bound1338
  %invariant.op = or i1 %i.ai, %found.conflict339
  %n.vec = and i64 %i.ae, 4611686018427387902     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 3 uses
  %i.ak = getelementptr i8, ptr %7, i64 %i.aj     ; 2 uses
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.x ] ; 3 uses
  %i.al = phi ptr [ %7, %.lr.ph ], [ %i.ha, %bb.x ] ; 5 uses
  %i.am = phi ptr [ %7, %.lr.ph ], [ %i.hb, %bb.x ] ; 11 uses
  %i.an = phi ptr [ %i.g, %.lr.ph ], [ %i.bl, %bb.x ] ; 9 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.hj, %bb.x ] ; 3 uses
  %.0227 = phi i64 [ %5, %.lr.ph ], [ %.1, %bb.x ] ; 2 uses
  %.0104226 = phi i64 [ %i.k, %.lr.ph ], [ %i.hh, %bb.x ] ; 4 uses
  %.0106223 = phi ptr [ %0, %.lr.ph ], [ %i.hf, %bb.x ] ; 16 uses
  %.0108222 = phi i8 [ 1, %.lr.ph ], [ %.1109, %bb.x ] ; 5 uses
  %.0111220 = phi ptr [ %i.g, %.lr.ph ], [ %i.he, %bb.x ] ; 5 uses
  %.0114219 = phi ptr [ %1, %.lr.ph ], [ %.1115, %bb.x ] ; 11 uses
  %.0191218 = phi ptr [ %i.f, %.lr.ph ], [ %.2193, %bb.x ] ; 16 uses
  %.0195217 = phi i64 [ %i.e, %.lr.ph ], [ %i.hk, %bb.x ] ; 4 uses
  %i.ao = ptrtoaddr ptr %i.al to i64
  %i.ap = ptrtoaddr ptr %i.am to i64
  %i.aq = icmp ult i64 %.0104226, %.0
  br i1 %i.aq, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bf, %.thread24.i ], [ %.0104226, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.be, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ar = mul i64 %.02226.i, %2
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ar
  %i.at = mul i64 %.027.i, %2
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.at
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.0106223, i64 %.02226.i
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.0106223, i64 %.027.i
  %i.ax = load i32, ptr %i.au, align 4, !tbaa !337 ; 2 uses
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !337 ; 2 uses
  %i.az = icmp slt i32 %i.ax, %i.ay
  br i1 %i.az, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ba = icmp slt i32 %i.ay, %i.ax
  br i1 %i.ba, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = load i32, ptr %i.aw, align 4, !tbaa !337
  %i.bc = load i32, ptr %i.av, align 4, !tbaa !337
  %i.bd = icmp slt i32 %i.bb, %i.bc
  %cond.fr.i = freeze i1 %i.bd
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.be = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bf = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bf, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit, label %.lr.ph.i, !llvm.loop !39

_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.be, %.thread24.i ] ; 8 uses
  %i.bg = add i64 %.022.lcssa.i, 2
  %i.bh = call i64 @llvm.umax.i64(i64 %.0, i64 %i.bg) ; 2 uses
  %.sroa.speculated180 = call i64 @llvm.umin.i64(i64 %i.bh, i64 %.0195217)
  %i.bi = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bi, 3                        ; 2 uses
  %i.bj = getelementptr i8, ptr %i.an, i64 %.idx  ; 12 uses
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %2 ; 5 uses
  %i.bl = getelementptr i8, ptr %i.an, i64 %.idx208 ; 8 uses
  %i.bm = icmp eq ptr %i.am, %i.al
  %.not120 = icmp eq i64 %.0227, 0
  br i1 %.not120, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit
  br i1 %.not121, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = load i32, ptr %i.i, align 4, !tbaa !337
  %i.bo = load i32, ptr %i.bj, align 4, !tbaa !337
  %i.bp = icmp slt i32 %i.bn, %i.bo
  br i1 %i.bp, label %.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old123 = trunc nuw i8 %.0108222 to i1
  br i1 %.old123, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit
  %.idx209 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.bq = getelementptr inbounds nuw i8, ptr %.0106223, i64 %.idx209 ; 13 uses
  %i.br = icmp eq ptr %.0191218, %i.m
  br i1 %i.br, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bs = trunc nuw i8 %.0108222 to i1
  br i1 %i.bs, label %bb.j, label %.thread270

.thread270:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.bt = load i32, ptr %i.bq, align 4, !tbaa !337
  %i.bu = load i32, ptr %.0191218, align 4, !tbaa !337
  %i.bv = icmp slt i32 %i.bt, %i.bu               ; 4 uses
  %i.bw = trunc nuw i8 %.0108222 to i1            ; 2 uses
  %i.bx = xor i1 %i.bv, %i.bw
  br i1 %i.bx, label %bb.n, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.by = phi i1 [ true, %._crit_edge ], [ %i.bv, %bb.i ]
  br i1 %i.bm, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.bz = add i64 %i.ao, -8
  %i.ca = sub i64 %i.bz, %i.ap                    ; 3 uses
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check379 = icmp ult i64 %i.ca, 40
  br i1 %min.iters.check379, label %.lr.ph.i.i.preheader529, label %vector.memcheck380

vector.memcheck380:                               ; preds = %.lr.ph.i.i.preheader
  %i.cd = and i64 %i.ca, -8
  %i.ce = add i64 %i.cd, 8                        ; 2 uses
  %i.cf = getelementptr i8, ptr %.0114219, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.am, i64 %i.ce
  %bound0381 = icmp ult ptr %.0114219, %i.cg
  %bound1382 = icmp ult ptr %i.am, %i.cf
  %found.conflict383 = and i1 %bound0381, %bound1382
  br i1 %found.conflict383, label %.lr.ph.i.i.preheader529, label %vector.ph384

vector.ph384:                                     ; preds = %vector.memcheck380
  %n.vec385 = and i64 %i.cc, 4611686018427387900  ; 3 uses
  %i.ch = shl i64 %n.vec385, 3                    ; 2 uses
  %i.ci = getelementptr i8, ptr %.0114219, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.am, i64 %i.ch
  br label %vector.body386

vector.body386:                                   ; preds = %vector.body386, %vector.ph384
  %index387 = phi i64 [ 0, %vector.ph384 ], [ %index.next400, %vector.body386 ] ; 2 uses
  %i.ck = shl i64 %index387, 3                    ; 3 uses
  %i.cl = or disjoint i64 %i.ck, 16               ; 2 uses
  %next.gep388 = getelementptr i8, ptr %.0114219, i64 %i.ck
  %next.gep389 = getelementptr i8, ptr %.0114219, i64 %i.cl
  %next.gep390 = getelementptr i8, ptr %i.am, i64 %i.ck
  %next.gep391 = getelementptr i8, ptr %i.am, i64 %i.cl
  %wide.vec392 = load <4 x i32>, ptr %next.gep390, align 4, !tbaa !337, !alias.scope !2538
  %wide.vec395 = load <4 x i32>, ptr %next.gep391, align 4, !tbaa !337, !alias.scope !2538
  store <4 x i32> %wide.vec392, ptr %next.gep388, align 4, !tbaa !337, !alias.scope !2539, !noalias !2538
  store <4 x i32> %wide.vec395, ptr %next.gep389, align 4, !tbaa !337, !alias.scope !2539, !noalias !2538
  %index.next400 = add nuw i64 %index387, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next400, %n.vec385
  br i1 %i.cm, label %middle.block401, label %vector.body386, !llvm.loop !2501

middle.block401:                                  ; preds = %vector.body386
  %cmp.n402 = icmp eq i64 %i.cc, %n.vec385
  br i1 %cmp.n402, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader529

.lr.ph.i.i.preheader529:                          ; preds = %vector.memcheck380, %.lr.ph.i.i.preheader, %middle.block401
  %.010.i.i.ph = phi ptr [ %.0114219, %vector.memcheck380 ], [ %.0114219, %.lr.ph.i.i.preheader ], [ %i.ci, %middle.block401 ]
  %.079.i.i.ph = phi ptr [ %i.am, %vector.memcheck380 ], [ %i.am, %.lr.ph.i.i.preheader ], [ %i.cj, %middle.block401 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader529, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cs, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader529 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.cr, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader529 ] ; 3 uses
  %i.cn = load i32, ptr %.079.i.i, align 4, !tbaa !337
  store i32 %i.cn, ptr %.010.i.i, align 4, !tbaa !346
  %i.co = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !337
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !347
  %i.cr = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cr, %i.al
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i, !llvm.loop !2502

_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit: ; preds = %.lr.ph.i.i, %middle.block401, %bb.j
  store ptr %7, ptr %i.b, align 8, !tbaa !330
  %.not.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairIiiES5_S5_NS0_7move_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit
  br i1 %.not2830.i, label %._crit_edge.i, label %.lr.ph.i125.preheader

.lr.ph.i125.preheader:                            ; preds = %.preheader.i
  br i1 %min.iters.check, label %.lr.ph.i125.preheader528, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i125.preheader
  %i.ct = mul i64 %indvar, %.idx208               ; 2 uses
  %i.cu = shl i64 %.022.lcssa.i, 3
  %i.cv = add i64 %i.cu, 8
  %i.cw = mul i64 %2, %i.cv
  %i.cx = getelementptr i8, ptr %i.ag, i64 %i.ct
  %i.cy = getelementptr i8, ptr %i.cx, i64 %i.cw  ; 4 uses
  %i.cz = getelementptr i8, ptr %i.ah, i64 %i.ct
  %i.da = getelementptr i8, ptr %i.cz, i64 %.idx  ; 4 uses
  %bound0 = icmp ult ptr %7, %i.cy
  %bound1 = icmp ult ptr %i.bj, %scevgep329
  %found.conflict = and i1 %bound0, %bound1
  %bound0330 = icmp ult ptr %7, %i.bk
  %bound1331 = icmp ult ptr %i.da, %scevgep329
  %found.conflict332 = and i1 %bound0330, %bound1331
  %conflict.rdx = or i1 %found.conflict, %found.conflict332
  %conflict.rdx340.reass = or i1 %conflict.rdx, %invariant.op
  %bound0341 = icmp ult ptr %i.bj, %i.bk
  %bound1342 = icmp ult ptr %i.da, %i.cy
  %found.conflict343 = and i1 %bound0341, %bound1342
  %conflict.rdx344 = or i1 %conflict.rdx340.reass, %found.conflict343
  %bound0345 = icmp ult ptr %i.bj, %scevgep328
  %bound1346 = icmp ult ptr %i.g, %i.cy
  %found.conflict347 = and i1 %bound0345, %bound1346
  %conflict.rdx348 = or i1 %conflict.rdx344, %found.conflict347
  %bound0349 = icmp ult ptr %i.bj, %i.i
  %bound1350 = icmp ult ptr %scevgep, %i.cy
  %found.conflict351 = and i1 %bound0349, %bound1350
  %conflict.rdx352 = or i1 %conflict.rdx348, %found.conflict351
  %bound0353 = icmp ult ptr %i.da, %scevgep328
  %bound1354 = icmp ult ptr %i.g, %i.bk
  %found.conflict355 = and i1 %bound0353, %bound1354
  %conflict.rdx356 = or i1 %conflict.rdx352, %found.conflict355
  %bound0357 = icmp ult ptr %i.da, %i.i
  %bound1358 = icmp ult ptr %scevgep, %i.bk
  %found.conflict359 = and i1 %bound0357, %bound1358
  %conflict.rdx360 = or i1 %conflict.rdx356, %found.conflict359
  br i1 %conflict.rdx360, label %.lr.ph.i125.preheader528, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.db = getelementptr i8, ptr %i.bj, i64 %i.aj
  %i.dc = getelementptr i8, ptr %i.an, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dd = shl i64 %index, 3                       ; 3 uses
  %next.gep = getelementptr i8, ptr %7, i64 %i.dd
  %next.gep361 = getelementptr i8, ptr %i.bj, i64 %i.dd ; 2 uses
  %next.gep362 = getelementptr i8, ptr %i.an, i64 %i.dd
  %wide.vec = load <4 x i32>, ptr %next.gep361, align 4, !tbaa !337
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !337, !alias.scope !2540, !noalias !2541
  %wide.vec364 = load <4 x i32>, ptr %next.gep362, align 4, !tbaa !337
  store <4 x i32> %wide.vec364, ptr %next.gep361, align 4, !tbaa !337
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !2509

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i125.preheader528

.lr.ph.i125.preheader528:                         ; preds = %vector.memcheck, %.lr.ph.i125.preheader, %middle.block
  %.033.i.ph = phi ptr [ %7, %vector.memcheck ], [ %7, %.lr.ph.i125.preheader ], [ %i.ak, %middle.block ]
  %.02032.i.ph = phi ptr [ %i.bj, %vector.memcheck ], [ %i.bj, %.lr.ph.i125.preheader ], [ %i.db, %middle.block ]
  %.02131.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i125.preheader ], [ %i.dc, %middle.block ]
  br label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %.lr.ph.i125.preheader528, %.lr.ph.i125
  %.033.i = phi ptr [ %i.dh, %.lr.ph.i125 ], [ %.033.i.ph, %.lr.ph.i125.preheader528 ] ; 3 uses
  %.02032.i = phi ptr [ %i.dg, %.lr.ph.i125 ], [ %.02032.i.ph, %.lr.ph.i125.preheader528 ] ; 4 uses
  %.02131.i = phi ptr [ %i.df, %.lr.ph.i125 ], [ %.02131.i.ph, %.lr.ph.i125.preheader528 ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.02131.i, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.02032.i, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.033.i, i64 8 ; 2 uses
  %i.di = load i32, ptr %.02032.i, align 4, !tbaa !337
  store i32 %i.di, ptr %.033.i, align 4, !tbaa !346
  %i.dj = getelementptr inbounds nuw i8, ptr %.02032.i, i64 4 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !337
  %i.dl = getelementptr inbounds nuw i8, ptr %.033.i, i64 4
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !347
  %i.dm = load i32, ptr %.02131.i, align 4, !tbaa !337
  store i32 %i.dm, ptr %.02032.i, align 4, !tbaa !346
  %i.dn = getelementptr inbounds nuw i8, ptr %.02131.i, i64 4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !337
  store i32 %i.do, ptr %i.dj, align 4, !tbaa !347
  %.not28.i = icmp eq ptr %i.df, %i.bl
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i125, !llvm.loop !2510

._crit_edge.i:                                    ; preds = %.lr.ph.i125, %middle.block, %.preheader.i
  %.0.lcssa.i = phi ptr [ %7, %.preheader.i ], [ %i.ak, %middle.block ], [ %i.dh, %.lr.ph.i125 ] ; 2 uses
  %.not29.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  %i.dp = load <2 x i32>, ptr %i.bq, align 4, !tbaa !337
  %i.dq = load <2 x i32>, ptr %.0106223, align 4, !tbaa !337
  store <2 x i32> %i.dq, ptr %i.bq, align 4, !tbaa !337
  store <2 x i32> %i.dp, ptr %.0106223, align 4, !tbaa !337
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %i.dr = icmp eq ptr %i.bq, %.0191218
  br i1 %i.dr, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairIiiES5_S5_NS0_7move_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ds = icmp eq ptr %.0191218, %.0106223
  %spec.select = select i1 %i.ds, ptr %i.bq, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairIiiES5_S5_NS0_7move_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairIiiES5_S5_NS0_7move_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit: ; preds = %bb.m, %bb.l, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit
  %.5 = phi ptr [ %.0191218, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %spec.select, %bb.m ], [ %.0106223, %bb.l ]
  %.1.i = phi ptr [ %7, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %.0.lcssa.i, %bb.m ], [ %.0.lcssa.i, %bb.l ] ; 2 uses
  store ptr %.1.i, ptr %i.c, align 8, !tbaa !330
  br label %bb.x

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br i1 %i.bw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dt = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_(ptr noundef %.0114219, ptr noundef %.0111220, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.bl, ptr noundef %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

bb.p:                                             ; preds = %.thread270, %bb.n
  %i.du = phi i1 [ true, %.thread270 ], [ %i.bv, %bb.n ]
  store ptr %8, ptr %9, align 8, !tbaa !384
  %i.dv = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_(ptr noundef %.0114219, ptr noundef %.0111220, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.bl, ptr noundef %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dead_on_return %9)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit: ; preds = %bb.o, %bb.p
  %i.dw = phi i1 [ %i.bv, %bb.o ], [ %i.du, %bb.p ]
  %i.dx = phi i1 [ true, %bb.o ], [ false, %bb.p ]
  %i.dy = phi ptr [ %i.dt, %bb.o ], [ %i.dv, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.dz = load ptr, ptr %i.b, align 8, !tbaa !330 ; 4 uses
  %i.ea = load ptr, ptr %i.c, align 8, !tbaa !330 ; 4 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea                ; 2 uses
  br i1 %i.eb, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit
  store ptr %7, ptr %i.b, align 8, !tbaa !330
  %i.ec = load ptr, ptr %i.d, align 8, !tbaa !330 ; 10 uses
  %i.ed = ptrtoint ptr %i.bl to i64
  %i.ee = ptrtoint ptr %i.ec to i64               ; 3 uses
  %i.ef = sub i64 %i.ed, %i.ee                    ; 2 uses
  %i.eg = ashr exact i64 %i.ef, 3
  %i.eh = sub nsw i64 0, %i.eg
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.eh ; 7 uses
  %.not.i126 = icmp eq ptr %i.ec, %i.ei
  br i1 %.not.i126, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairIiiES5_S5_NS0_7move_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit140, label %.preheader.i127

.preheader.i127:                                  ; preds = %bb.q
  %.not2830.i128 = icmp eq ptr %i.ec, %i.bl
  br i1 %.not2830.i128, label %._crit_edge.i134, label %.lr.ph.i129.preheader

.lr.ph.i129.preheader:                            ; preds = %.preheader.i127
  %i.ej = mul i64 %indvar, %.idx208               ; 3 uses
  %i.ek = add i64 %i.ab, %i.ej                    ; 2 uses
  %i.el = sub i64 %i.ek, %i.ee                    ; 2 uses
  %i.em = lshr i64 %i.el, 3
  %i.en = add nuw nsw i64 %i.em, 1                ; 2 uses
  %min.iters.check424 = icmp ult i64 %i.el, 72
  br i1 %min.iters.check424, label %.lr.ph.i129.preheader530, label %vector.memcheck425

vector.memcheck425:                               ; preds = %.lr.ph.i129.preheader
  %i.eo = add i64 %i.x, %i.ej
  %i.ep = sub i64 %i.eo, %i.ee
  %i.eq = and i64 %i.ep, -8                       ; 2 uses
  %17 = add i64 %i.eq, 8                          ; 2 uses
  %i.er = getelementptr i8, ptr %7, i64 %17       ; 2 uses
  %i.es = add i64 %i.u, %i.ej
  %i.et = shl i64 %.022.lcssa.i, 3
  %i.eu = add i64 %i.et, 8
  %i.ev = mul i64 %2, %i.eu
  %i.ew = add i64 %i.es, %i.ev
  %i.ex = add i64 %i.ew, %i.eq
  %i.ey = sub i64 %i.ex, %i.ef
  %i.ez = getelementptr i8, ptr %1, i64 %i.ey     ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ec, i64 %17    ; 2 uses
  %bound0426 = icmp ult ptr %7, %i.ez
  %bound1427 = icmp ult ptr %i.ei, %i.er
  %found.conflict428 = and i1 %bound0426, %bound1427
  %bound0429 = icmp ult ptr %7, %i.fa
  %bound1430 = icmp ult ptr %i.ec, %i.er
  %found.conflict431 = and i1 %bound0429, %bound1430
  %conflict.rdx432 = or i1 %found.conflict428, %found.conflict431
  %bound0433 = icmp ult ptr %i.ei, %i.fa
  %bound1434 = icmp ult ptr %i.ec, %i.ez
  %found.conflict435 = and i1 %bound0433, %bound1434
  %conflict.rdx436 = or i1 %conflict.rdx432, %found.conflict435
  br i1 %conflict.rdx436, label %.lr.ph.i129.preheader530, label %vector.ph437

vector.ph437:                                     ; preds = %vector.memcheck425
  %n.vec438 = and i64 %i.en, 4611686018427387902  ; 3 uses
  %i.fb = shl i64 %n.vec438, 3                    ; 3 uses
  %i.fc = getelementptr i8, ptr %7, i64 %i.fb     ; 2 uses
  %i.fd = getelementptr i8, ptr %i.ei, i64 %i.fb
  %i.fe = getelementptr i8, ptr %i.ec, i64 %i.fb
  br label %vector.body439

vector.body439:                                   ; preds = %vector.body439, %vector.ph437
  %index440 = phi i64 [ 0, %vector.ph437 ], [ %index.next452, %vector.body439 ] ; 2 uses
  %i.ff = shl i64 %index440, 3                    ; 3 uses
  %next.gep441 = getelementptr i8, ptr %7, i64 %i.ff
  %next.gep442 = getelementptr i8, ptr %i.ei, i64 %i.ff ; 2 uses
  %next.gep443 = getelementptr i8, ptr %i.ec, i64 %i.ff
  %wide.vec444 = load <4 x i32>, ptr %next.gep442, align 4, !tbaa !337, !alias.scope !2542, !noalias !2543
  store <4 x i32> %wide.vec444, ptr %next.gep441, align 4, !tbaa !337, !alias.scope !2544, !noalias !2545
  %wide.vec448 = load <4 x i32>, ptr %next.gep443, align 4, !tbaa !337, !alias.scope !2543
  store <4 x i32> %wide.vec448, ptr %next.gep442, align 4, !tbaa !337, !alias.scope !2542, !noalias !2543
  %index.next452 = add nuw i64 %index440, 2       ; 2 uses
  %i.fg = icmp eq i64 %index.next452, %n.vec438
  br i1 %i.fg, label %middle.block453, label %vector.body439, !llvm.loop !2515

middle.block453:                                  ; preds = %vector.body439
  %cmp.n454 = icmp eq i64 %i.en, %n.vec438
  br i1 %cmp.n454, label %._crit_edge.i134, label %.lr.ph.i129.preheader530

.lr.ph.i129.preheader530:                         ; preds = %vector.memcheck425, %.lr.ph.i129.preheader, %middle.block453
  %.033.i130.ph = phi ptr [ %7, %vector.memcheck425 ], [ %7, %.lr.ph.i129.preheader ], [ %i.fc, %middle.block453 ] ; 4 uses
  %.02032.i131.ph = phi ptr [ %i.ei, %vector.memcheck425 ], [ %i.ei, %.lr.ph.i129.preheader ], [ %i.fd, %middle.block453 ] ; 5 uses
  %.02131.i132.ph = phi ptr [ %i.ec, %vector.memcheck425 ], [ %i.ec, %.lr.ph.i129.preheader ], [ %i.fe, %middle.block453 ] ; 5 uses
  %.02131.i132.ph533 = ptrtoaddr ptr %.02131.i132.ph to i64
  %i.fh = sub i64 %i.ek, %.02131.i132.ph533       ; 2 uses
  %i.fi = and i64 %i.fh, 8
  %lcmp.mod.not.not = icmp eq i64 %i.fi, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i129.prol, label %.lr.ph.i129.prol.loopexit

.lr.ph.i129.prol:                                 ; preds = %.lr.ph.i129.preheader530
  %i.fj = getelementptr inbounds nuw i8, ptr %.02131.i132.ph, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %.02032.i131.ph, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %.033.i130.ph, i64 8 ; 2 uses
  %i.fm = load i32, ptr %.02032.i131.ph, align 4, !tbaa !337
  store i32 %i.fm, ptr %.033.i130.ph, align 4, !tbaa !346
  %i.fn = getelementptr inbounds nuw i8, ptr %.02032.i131.ph, i64 4 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !337
  %i.fp = getelementptr inbounds nuw i8, ptr %.033.i130.ph, i64 4
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !347
  %i.fq = load i32, ptr %.02131.i132.ph, align 4, !tbaa !337
  store i32 %i.fq, ptr %.02032.i131.ph, align 4, !tbaa !346
  %i.fr = getelementptr inbounds nuw i8, ptr %.02131.i132.ph, i64 4
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !337
  store i32 %i.fs, ptr %i.fn, align 4, !tbaa !347
  br label %.lr.ph.i129.prol.loopexit

.lr.ph.i129.prol.loopexit:                        ; preds = %.lr.ph.i129.prol, %.lr.ph.i129.preheader530
  %.lcssa531.unr = phi ptr [ poison, %.lr.ph.i129.preheader530 ], [ %i.fl, %.lr.ph.i129.prol ]
  %.033.i130.unr = phi ptr [ %.033.i130.ph, %.lr.ph.i129.preheader530 ], [ %i.fl, %.lr.ph.i129.prol ]
  %.02032.i131.unr = phi ptr [ %.02032.i131.ph, %.lr.ph.i129.preheader530 ], [ %i.fk, %.lr.ph.i129.prol ]
  %.02131.i132.unr = phi ptr [ %.02131.i132.ph, %.lr.ph.i129.preheader530 ], [ %i.fj, %.lr.ph.i129.prol ]
  %i.ft = icmp ult i64 %i.fh, 8
  br i1 %i.ft, label %._crit_edge.i134, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129
  %.033.i130 = phi ptr [ %i.gg, %.lr.ph.i129 ], [ %.033.i130.unr, %.lr.ph.i129.prol.loopexit ] ; 5 uses
  %.02032.i131 = phi ptr [ %i.gf, %.lr.ph.i129 ], [ %.02032.i131.unr, %.lr.ph.i129.prol.loopexit ] ; 6 uses
  %.02131.i132 = phi ptr [ %i.ge, %.lr.ph.i129 ], [ %.02131.i132.unr, %.lr.ph.i129.prol.loopexit ] ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 8 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.033.i130, i64 8
  %i.fx = load i32, ptr %.02032.i131, align 4, !tbaa !337
  store i32 %i.fx, ptr %.033.i130, align 4, !tbaa !346
  %i.fy = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 4 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !337
  %i.ga = getelementptr inbounds nuw i8, ptr %.033.i130, i64 4
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !347
  %i.gb = load i32, ptr %.02131.i132, align 4, !tbaa !337
  store i32 %i.gb, ptr %.02032.i131, align 4, !tbaa !346
  %i.gc = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 4
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !337
  store i32 %i.gd, ptr %i.fy, align 4, !tbaa !347
  %i.ge = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 16 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 16
  %i.gg = getelementptr inbounds nuw i8, ptr %.033.i130, i64 16 ; 2 uses
  %i.gh = load i32, ptr %i.fv, align 4, !tbaa !337
  store i32 %i.gh, ptr %i.fw, align 4, !tbaa !346
  %i.gi = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 12 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !337
  %i.gk = getelementptr inbounds nuw i8, ptr %.033.i130, i64 12
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !347
  %i.gl = load i32, ptr %i.fu, align 4, !tbaa !337
  store i32 %i.gl, ptr %i.fv, align 4, !tbaa !346
  %i.gm = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 12
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !337
  store i32 %i.gn, ptr %i.gi, align 4, !tbaa !347
  %.not28.i133.1 = icmp eq ptr %i.ge, %i.bl
  br i1 %.not28.i133.1, label %._crit_edge.i134, label %.lr.ph.i129, !llvm.loop !2516

._crit_edge.i134:                                 ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129, %middle.block453, %.preheader.i127
  %.0.lcssa.i135 = phi ptr [ %7, %.preheader.i127 ], [ %i.fc, %middle.block453 ], [ %.lcssa531.unr, %.lr.ph.i129.prol.loopexit ], [ %i.gg, %.lr.ph.i129 ] ; 2 uses
  %.not29.i136 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i136, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i134
  %i.go = load <2 x i32>, ptr %i.bq, align 4, !tbaa !337
  %i.gp = load <2 x i32>, ptr %.0106223, align 4, !tbaa !337
  store <2 x i32> %i.gp, ptr %i.bq, align 4, !tbaa !337
  store <2 x i32> %i.go, ptr %.0106223, align 4, !tbaa !337
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i134
  %i.gq = icmp eq ptr %i.bq, %.0191218
  br i1 %i.gq, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairIiiES5_S5_NS0_7move_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit140, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gr = icmp eq ptr %.0191218, %.0106223
  %spec.select205 = select i1 %i.gr, ptr %i.bq, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairIiiES5_S5_NS0_7move_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit140

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairIiiES5_S5_NS0_7move_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit140: ; preds = %bb.t, %bb.s, %bb.q
  %.6 = phi ptr [ %.0191218, %bb.q ], [ %spec.select205, %bb.t ], [ %.0106223, %bb.s ]
  %.1.i137 = phi ptr [ %7, %bb.q ], [ %.0.lcssa.i135, %bb.t ], [ %.0.lcssa.i135, %bb.s ] ; 2 uses
  store ptr %.1.i137, ptr %i.c, align 8, !tbaa !330
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPSt4pairIiiEEEvT_S6_RS6_.exit

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit
  %.not.i141 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not.i141, label %_ZN5boost7movelib15detail_adaptive10update_keyIPSt4pairIiiEEEvT_S6_RS6_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gs = load <2 x i32>, ptr %i.bq, align 4, !tbaa !337
  %i.gt = load <2 x i32>, ptr %.0106223, align 4, !tbaa !337
  store <2 x i32> %i.gt, ptr %i.bq, align 4, !tbaa !337
  store <2 x i32> %i.gs, ptr %.0106223, align 4, !tbaa !337
  %i.gu = icmp eq ptr %i.bq, %.0191218
  br i1 %i.gu, label %_ZN5boost7movelib15detail_adaptive10update_keyIPSt4pairIiiEEEvT_S6_RS6_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gv = icmp eq ptr %.0191218, %.0106223
  %spec.select206 = select i1 %i.gv, ptr %i.bq, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPSt4pairIiiEEEvT_S6_RS6_.exit

_ZN5boost7movelib15detail_adaptive10update_keyIPSt4pairIiiEEEvT_S6_RS6_.exit: ; preds = %bb.w, %bb.u, %bb.v, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairIiiES5_S5_NS0_7move_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit140
  %i.gw = phi ptr [ %.1.i137, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairIiiES5_S5_NS0_7move_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit140 ], [ %i.ea, %bb.u ], [ %i.ea, %bb.w ], [ %i.ea, %bb.v ]
  %i.gx = phi ptr [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairIiiES5_S5_NS0_7move_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit140 ], [ %i.dz, %bb.u ], [ %i.dz, %bb.w ], [ %i.dz, %bb.v ]
  %.1192 = phi ptr [ %.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairIiiES5_S5_NS0_7move_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit140 ], [ %.0191218, %bb.u ], [ %spec.select206, %bb.w ], [ %.0106223, %bb.v ]
  %i.gy = xor i1 %i.dx, %i.eb
  %i.gz = zext i1 %i.gy to i8
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyIPSt4pairIiiEEEvT_S6_RS6_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairIiiES5_S5_NS0_7move_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit
  %i.ha = phi ptr [ %i.gw, %_ZN5boost7movelib15detail_adaptive10update_keyIPSt4pairIiiEEEvT_S6_RS6_.exit ], [ %.1.i, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairIiiES5_S5_NS0_7move_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit ] ; 2 uses
  %i.hb = phi ptr [ %i.gx, %_ZN5boost7movelib15detail_adaptive10update_keyIPSt4pairIiiEEEvT_S6_RS6_.exit ], [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairIiiES5_S5_NS0_7move_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit ] ; 2 uses
  %i.hc = phi i1 [ %i.dw, %_ZN5boost7movelib15detail_adaptive10update_keyIPSt4pairIiiEEEvT_S6_RS6_.exit ], [ %i.by, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairIiiES5_S5_NS0_7move_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit ]
  %.2193 = phi ptr [ %.1192, %_ZN5boost7movelib15detail_adaptive10update_keyIPSt4pairIiiEEEvT_S6_RS6_.exit ], [ %.5, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairIiiES5_S5_NS0_7move_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit ] ; 2 uses
  %.1115 = phi ptr [ %i.dy, %_ZN5boost7movelib15detail_adaptive10update_keyIPSt4pairIiiEEEvT_S6_RS6_.exit ], [ %i.an, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairIiiES5_S5_NS0_7move_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit ] ; 2 uses
  %.1109 = phi i8 [ %i.gz, %_ZN5boost7movelib15detail_adaptive10update_keyIPSt4pairIiiEEEvT_S6_RS6_.exit ], [ %.0108222, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairIiiES5_S5_NS0_7move_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.hc, true
  %i.hd = sext i1 %not. to i64
  %.1 = add i64 %.0227, %i.hd
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %.0111220, i64 %2 ; 2 uses
  store ptr %i.bl, ptr %i.d, align 8, !tbaa !330
  %i.hf = getelementptr inbounds nuw i8, ptr %.0106223, i64 8
  %i.hg = icmp ne i64 %.0104226, 0
  %.neg = sext i1 %i.hg to i64
  %i.hh = add i64 %.0104226, %.neg
  %i.hi = icmp ne i64 %i.bh, 0
  %.neg122 = sext i1 %i.hi to i64
  %i.hj = add i64 %.sroa.speculated180, %.neg122
  %i.hk = add i64 %.0195217, -1                   ; 2 uses
  %.not = icmp eq i64 %i.hk, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !2517

.thread:                                          ; preds = %bb.x, %bb.g, %bb.f
  %i.hl = phi ptr [ %i.ha, %bb.x ], [ %i.al, %bb.g ], [ %i.al, %bb.f ] ; 3 uses
  %i.hm = phi ptr [ %i.hb, %bb.x ], [ %i.am, %bb.g ], [ %i.am, %bb.f ] ; 9 uses
  %.0195.lcssa.ph = phi i64 [ 0, %bb.x ], [ %.0195217, %bb.g ], [ %.0195217, %bb.f ] ; 3 uses
  %.0191.lcssa.ph = phi ptr [ %.2193, %bb.x ], [ %.0191218, %bb.g ], [ %.0191218, %bb.f ] ; 3 uses
  %.0114.lcssa.ph = phi ptr [ %.1115, %bb.x ], [ %.0114219, %bb.g ], [ %.0114219, %bb.f ] ; 8 uses
  %.0111.lcssa.ph = phi ptr [ %i.he, %bb.x ], [ %.0111220, %bb.g ], [ %.0111220, %bb.f ] ; 4 uses
  %.0108.lcssa.ph = phi i8 [ %.1109, %bb.x ], [ 1, %bb.g ], [ %.0108222, %bb.f ]
  %i.hn = trunc nuw i8 %.0108.lcssa.ph to i1
  %i.ho = select i1 %i.hn, ptr %.0114.lcssa.ph, ptr %.0111.lcssa.ph ; 3 uses
  %.not8.i.i144 = icmp eq ptr %i.hm, %i.hl
  br i1 %.not8.i.i144, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit150, label %.lr.ph.i.i145.preheader

.lr.ph.i.i145.preheader:                          ; preds = %.thread
  %i.hp = ptrtoaddr ptr %i.hm to i64
  %i.hq = ptrtoaddr ptr %i.hl to i64
  %i.hr = add i64 %i.hq, -8
  %i.hs = sub i64 %i.hr, %i.hp                    ; 3 uses
  %i.ht = lshr i64 %i.hs, 3
  %i.hu = add nuw nsw i64 %i.ht, 1                ; 2 uses
  %min.iters.check465 = icmp ult i64 %i.hs, 104
  br i1 %min.iters.check465, label %.lr.ph.i.i145.preheader527, label %vector.memcheck466

vector.memcheck466:                               ; preds = %.lr.ph.i.i145.preheader
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_:bb.a
  %i.ca = getelementptr i8, ptr %i.w, i64 %i.bs
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.bv  ; 3 uses
  %bound0 = icmp ult ptr %i.d, %i.bx
  %bound1 = icmp ult ptr %i.bk, %scevgep188
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx.reass = or i1 %found.conflict, %invariant.op
  %bound0192 = icmp ult ptr %i.d, %i.cb
  %bound1193 = icmp ult ptr %i.bz, %scevgep188
  %found.conflict194 = and i1 %bound0192, %bound1193
  %conflict.rdx195 = or i1 %conflict.rdx.reass, %found.conflict194
  %bound0196 = icmp ult ptr %i.bk, %scevgep
  %bound1197 = icmp ult ptr %scevgep187, %i.bx
  %found.conflict198 = and i1 %bound0196, %bound1197
  %conflict.rdx199 = or i1 %conflict.rdx195, %found.conflict198
  %bound0200 = icmp ult ptr %i.bk, %i.cb
  %bound1201 = icmp ult ptr %i.bz, %i.bx
  %found.conflict202 = and i1 %bound0200, %bound1201
  %conflict.rdx203 = or i1 %conflict.rdx199, %found.conflict202
  %bound0204 = icmp ult ptr %scevgep187, %i.cb
  %bound1205 = icmp ult ptr %i.bz, %scevgep
  %found.conflict206 = and i1 %bound0204, %bound1205
  %conflict.rdx207 = or i1 %conflict.rdx203, %found.conflict206
  br i1 %conflict.rdx207, label %.lr.ph.i.i.preheader217, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cc = getelementptr i8, ptr %i.bk, i64 %i.x
  %i.cd = getelementptr i8, ptr %.071116, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bk, i64 %i.ce ; 2 uses
  %next.gep208 = getelementptr i8, ptr %.071116, i64 %i.ce ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep208, align 4, !tbaa !337
  %wide.vec210 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !337
  store <4 x i32> %wide.vec210, ptr %next.gep208, align 4, !tbaa !337
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !337
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !2609

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i.preheader217

.lr.ph.i.i.preheader217:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bk, %vector.memcheck ], [ %i.bk, %.lr.ph.i.i.preheader ], [ %i.cc, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071116, %vector.memcheck ], [ %.071116, %.lr.ph.i.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader217, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cn, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader217 ] ; 4 uses
  %.079.i.i = phi ptr [ %i.cm, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader217 ] ; 4 uses
  %i.cg = load i32, ptr %.079.i.i, align 4, !tbaa !337
  %i.ch = load i32, ptr %.010.i.i, align 4, !tbaa !337
  store i32 %i.ch, ptr %.079.i.i, align 4, !tbaa !337
  store i32 %i.cg, ptr %.010.i.i, align 4, !tbaa !337
  %i.ci = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.ck = load i32, ptr %i.ci, align 4, !tbaa !337
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !337
  store i32 %i.cl, ptr %i.ci, align 4, !tbaa !337
  store i32 %i.ck, ptr %i.cj, align 4, !tbaa !337
  %i.cm = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cm, %i.br
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i, !llvm.loop !2610

_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i
  %i.co = load <2 x i32>, ptr %i.bg, align 4, !tbaa !337
  %i.cp = load <2 x i32>, ptr %.073114, align 4, !tbaa !337
  store <2 x i32> %i.cp, ptr %i.bg, align 4, !tbaa !337
  store <2 x i32> %i.co, ptr %.073114, align 4, !tbaa !337
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i
  %i.cq = icmp eq ptr %i.bg, %.0100110
  br i1 %i.cq, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cr = icmp eq ptr %.0100110, %.073114
  %spec.select102 = select i1 %i.cr, ptr %i.bg, ptr %.0100110
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100110, %bb.f ], [ %spec.select102, %bb.j ], [ %.073114, %bb.i ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.073114, i64 8
  %i.ct = icmp ne i64 %.072115, 0
  %.neg = sext i1 %i.ct to i64
  %i.cu = add i64 %.072115, %.neg
  %i.cv = icmp ne i64 %i.bi, 0
  %.neg78 = sext i1 %i.cv to i64
  %i.cw = add i64 %.sroa.speculated89, %.neg78
  %i.cx = add i64 %.099111, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cx, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2611

._crit_edge125.loopexit131:                       ; preds = %bb.l
  %i.cy = trunc nuw i8 %i.dp to i1
  %i.cz = select i1 %i.cy, ptr %i.dr, ptr %i.ds
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %.lr.ph124.split.us.preheader.prol.loopexit, %.lr.ph124.split.us.preheader, %._crit_edge.thread, %._crit_edge125.loopexit131, %._crit_edge
  %i.da = phi ptr [ %1, %._crit_edge ], [ %1, %._crit_edge.thread ], [ %i.cz, %._crit_edge125.loopexit131 ], [ %.069121.us.lcssa.unr, %.lr.ph124.split.us.preheader.prol.loopexit ], [ %i.an, %.lr.ph124.split.us.preheader ] ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %6
  %i.dc = ptrtoint ptr %i.e to i64
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = ashr exact i64 %i.de, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef %i.da, ptr noundef %i.e, ptr noundef %i.db, i64 noundef %i.df, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

.lr.ph124.split:                                  ; preds = %.lr.ph124, %bb.l
  %i.dg = phi i8 [ %i.dp, %bb.l ], [ 1, %.lr.ph124 ]
  %i.dh = phi i8 [ %i.dq, %bb.l ], [ 1, %.lr.ph124 ] ; 2 uses
  %.0122 = phi ptr [ %i.dt, %bb.l ], [ %0, %.lr.ph124 ] ; 2 uses
  %.069121 = phi ptr [ %i.ds, %bb.l ], [ %i.d, %.lr.ph124 ] ; 4 uses
  %.070120 = phi ptr [ %i.dr, %bb.l ], [ %1, %.lr.ph124 ]
  %i.di = load i32, ptr %.0122, align 4, !tbaa !337
  %i.dj = load i32, ptr %.1101, align 4, !tbaa !337
  %i.dk = icmp slt i32 %i.di, %i.dj
  %i.dl = zext i1 %i.dk to i8
  %i.dm = icmp eq i8 %i.dh, %i.dl
  br i1 %i.dm, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph124.split
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.069121, i64 %2
  %i.do = call noundef ptr @_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_SE_PbT0_(ptr noundef %.070120, ptr noundef %.069121, ptr noundef %i.dn, ptr noundef nonnull %i.a)
  %.pre = load i8, ptr %i.a, align 1, !tbaa !387, !range !388 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph124.split, %bb.k
  %i.dp = phi i8 [ %.pre, %bb.k ], [ %i.dg, %.lr.ph124.split ] ; 2 uses
  %i.dq = phi i8 [ %.pre, %bb.k ], [ %i.dh, %.lr.ph124.split ]
  %i.dr = phi ptr [ %i.do, %bb.k ], [ %.069121, %.lr.ph124.split ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.069121, i64 %2 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.0122, i64 8 ; 2 uses
  %.not77 = icmp eq ptr %i.dt, %i.y
  br i1 %.not77, label %._crit_edge125.loopexit131, label %.lr.ph124.split, !llvm.loop !2608
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opES7_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %9 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 4 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.20", align 8 ; 2 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.20", align 8 ; 2 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %16 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %i.e = add i64 %5, %4                           ; 6 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %7, ptr %i.b, align 8, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %7, ptr %i.c, align 8, !tbaa !330
  %i.g = getelementptr [8 x i8], ptr %1, i64 %3   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.g, ptr %i.d, align 8, !tbaa !330
  %i.h = mul i64 %i.e, %2
  %i.i = getelementptr [8 x i8], ptr %i.g, i64 %i.h ; 12 uses
  %.not216 = icmp eq i64 %i.e, 0
  br i1 %.not216, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit150, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = icmp eq i64 %5, 0
  %i.k = select i1 %i.j, i64 0, i64 %4            ; 2 uses
  %i.l = add i64 %i.k, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.e)
  %.idx208 = shl i64 %2, 3                        ; 8 uses
  %.not121 = icmp eq i64 %6, 0
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %.not2830.i = icmp eq i64 %2, 0
  %i.n = shl i64 %3, 3                            ; 2 uses
  %i.o = or disjoint i64 %i.n, 4                  ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.o   ; 3 uses
  %i.p = mul i64 %2, %i.e
  %i.q = add i64 %i.p, %3
  %i.r = shl i64 %i.q, 3
  %i.s = getelementptr i8, ptr %1, i64 %i.r
  %scevgep328 = getelementptr i8, ptr %i.s, i64 -4 ; 3 uses
  %scevgep329 = getelementptr i8, ptr %7, i64 %.idx208 ; 4 uses
  %i.t = shl i64 %3, 3                            ; 2 uses
  %i.u = add i64 %i.t, 8
  %i.v = add i64 %i.t, %i.a
  %i.w = add i64 %i.v, %.idx208
  %i.x = add i64 %i.w, -8
  %i.y = shl i64 %3, 3
  %i.z = add i64 %i.y, %i.a
  %i.aa = add i64 %i.z, %.idx208
  %i.ab = add i64 %i.aa, -8
  %i.ac = add i64 %.idx208, -8                    ; 2 uses
  %i.ad = lshr exact i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 184
  %i.af = getelementptr i8, ptr %1, i64 %i.n
  %i.ag = getelementptr i8, ptr %i.af, i64 -4
  %i.ah = getelementptr i8, ptr %1, i64 %i.o
  %bound0333 = icmp ult ptr %7, %scevgep328
  %bound1334 = icmp ult ptr %i.g, %scevgep329
  %found.conflict335 = and i1 %bound0333, %bound1334
  %stride.check = icmp slt i64 %.idx208, 0
  %i.ai = or i1 %found.conflict335, %stride.check
  %bound0337 = icmp ult ptr %7, %i.i
  %bound1338 = icmp ult ptr %scevgep, %scevgep329
  %found.conflict339 = and i1 %bound0337, %bound1338
  %invariant.op = or i1 %i.ai, %found.conflict339
  %n.vec = and i64 %i.ae, 4611686018427387902     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 3 uses
  %i.ak = getelementptr i8, ptr %7, i64 %i.aj     ; 2 uses
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.x ] ; 3 uses
  %i.al = phi ptr [ %7, %.lr.ph ], [ %i.ha, %bb.x ] ; 5 uses
  %i.am = phi ptr [ %7, %.lr.ph ], [ %i.hb, %bb.x ] ; 11 uses
  %i.an = phi ptr [ %i.g, %.lr.ph ], [ %i.bl, %bb.x ] ; 9 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.hj, %bb.x ] ; 3 uses
  %.0227 = phi i64 [ %5, %.lr.ph ], [ %.1, %bb.x ] ; 2 uses
  %.0104226 = phi i64 [ %i.k, %.lr.ph ], [ %i.hh, %bb.x ] ; 4 uses
  %.0106223 = phi ptr [ %0, %.lr.ph ], [ %i.hf, %bb.x ] ; 16 uses
  %.0108222 = phi i8 [ 1, %.lr.ph ], [ %.1109, %bb.x ] ; 5 uses
  %.0111220 = phi ptr [ %i.g, %.lr.ph ], [ %i.he, %bb.x ] ; 5 uses
  %.0114219 = phi ptr [ %1, %.lr.ph ], [ %.1115, %bb.x ] ; 11 uses
  %.0191218 = phi ptr [ %i.f, %.lr.ph ], [ %.2193, %bb.x ] ; 16 uses
  %.0195217 = phi i64 [ %i.e, %.lr.ph ], [ %i.hk, %bb.x ] ; 4 uses
  %i.ao = ptrtoaddr ptr %i.al to i64
  %i.ap = ptrtoaddr ptr %i.am to i64
  %i.aq = icmp ult i64 %.0104226, %.0
  br i1 %i.aq, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bf, %.thread24.i ], [ %.0104226, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.be, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ar = mul i64 %.02226.i, %2
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ar
  %i.at = mul i64 %.027.i, %2
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.at
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.0106223, i64 %.02226.i
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.0106223, i64 %.027.i
  %i.ax = load i32, ptr %i.au, align 4, !tbaa !337 ; 2 uses
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !337 ; 2 uses
  %i.az = icmp slt i32 %i.ax, %i.ay
  br i1 %i.az, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ba = icmp slt i32 %i.ay, %i.ax
  br i1 %i.ba, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = load i64, ptr %i.aw, align 8, !tbaa !367
  %i.bc = load i64, ptr %i.av, align 8, !tbaa !367
  %i.bd = icmp ult i64 %i.bb, %i.bc
  %cond.fr.i = freeze i1 %i.bd
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.be = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bf = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bf, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %.lr.ph.i, !llvm.loop !41

_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.be, %.thread24.i ] ; 8 uses
  %i.bg = add i64 %.022.lcssa.i, 2
  %i.bh = call i64 @llvm.umax.i64(i64 %.0, i64 %i.bg) ; 2 uses
  %.sroa.speculated180 = call i64 @llvm.umin.i64(i64 %i.bh, i64 %.0195217)
  %i.bi = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bi, 3                        ; 2 uses
  %i.bj = getelementptr i8, ptr %i.an, i64 %.idx  ; 12 uses
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %2 ; 5 uses
  %i.bl = getelementptr i8, ptr %i.an, i64 %.idx208 ; 8 uses
  %i.bm = icmp eq ptr %i.am, %i.al
  %.not120 = icmp eq i64 %.0227, 0
  br i1 %.not120, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  br i1 %.not121, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = load i32, ptr %i.i, align 4, !tbaa !337
  %i.bo = load i32, ptr %i.bj, align 4, !tbaa !337
  %i.bp = icmp slt i32 %i.bn, %i.bo
  br i1 %i.bp, label %.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old123 = trunc nuw i8 %.0108222 to i1
  br i1 %.old123, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %.idx209 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.bq = getelementptr inbounds nuw i8, ptr %.0106223, i64 %.idx209 ; 13 uses
  %i.br = icmp eq ptr %.0191218, %i.m
  br i1 %i.br, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bs = trunc nuw i8 %.0108222 to i1
  br i1 %i.bs, label %bb.j, label %.thread270

.thread270:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.bt = load i64, ptr %i.bq, align 8, !tbaa !367
  %i.bu = load i64, ptr %.0191218, align 8, !tbaa !367
  %i.bv = icmp ult i64 %i.bt, %i.bu               ; 4 uses
  %i.bw = trunc nuw i8 %.0108222 to i1            ; 2 uses
  %i.bx = xor i1 %i.bv, %i.bw
  br i1 %i.bx, label %bb.n, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.by = phi i1 [ true, %._crit_edge ], [ %i.bv, %bb.i ]
  br i1 %i.bm, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.bz = add i64 %i.ao, -8
  %i.ca = sub i64 %i.bz, %i.ap                    ; 3 uses
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check379 = icmp ult i64 %i.ca, 40
  br i1 %min.iters.check379, label %.lr.ph.i.i.preheader529, label %vector.memcheck380

vector.memcheck380:                               ; preds = %.lr.ph.i.i.preheader
  %i.cd = and i64 %i.ca, -8
  %i.ce = add i64 %i.cd, 8                        ; 2 uses
  %i.cf = getelementptr i8, ptr %.0114219, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.am, i64 %i.ce
  %bound0381 = icmp ult ptr %.0114219, %i.cg
  %bound1382 = icmp ult ptr %i.am, %i.cf
  %found.conflict383 = and i1 %bound0381, %bound1382
  br i1 %found.conflict383, label %.lr.ph.i.i.preheader529, label %vector.ph384

vector.ph384:                                     ; preds = %vector.memcheck380
  %n.vec385 = and i64 %i.cc, 4611686018427387900  ; 3 uses
  %i.ch = shl i64 %n.vec385, 3                    ; 2 uses
  %i.ci = getelementptr i8, ptr %.0114219, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.am, i64 %i.ch
  br label %vector.body386

vector.body386:                                   ; preds = %vector.body386, %vector.ph384
  %index387 = phi i64 [ 0, %vector.ph384 ], [ %index.next400, %vector.body386 ] ; 2 uses
  %i.ck = shl i64 %index387, 3                    ; 3 uses
  %i.cl = or disjoint i64 %i.ck, 16               ; 2 uses
  %next.gep388 = getelementptr i8, ptr %.0114219, i64 %i.ck
  %next.gep389 = getelementptr i8, ptr %.0114219, i64 %i.cl
  %next.gep390 = getelementptr i8, ptr %i.am, i64 %i.ck
  %next.gep391 = getelementptr i8, ptr %i.am, i64 %i.cl
  %wide.vec392 = load <4 x i32>, ptr %next.gep390, align 4, !tbaa !337, !alias.scope !2652
  %wide.vec395 = load <4 x i32>, ptr %next.gep391, align 4, !tbaa !337, !alias.scope !2652
  store <4 x i32> %wide.vec392, ptr %next.gep388, align 4, !tbaa !337, !alias.scope !2653, !noalias !2652
  store <4 x i32> %wide.vec395, ptr %next.gep389, align 4, !tbaa !337, !alias.scope !2653, !noalias !2652
  %index.next400 = add nuw i64 %index387, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next400, %n.vec385
  br i1 %i.cm, label %middle.block401, label %vector.body386, !llvm.loop !2615

middle.block401:                                  ; preds = %vector.body386
  %cmp.n402 = icmp eq i64 %i.cc, %n.vec385
  br i1 %cmp.n402, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader529

.lr.ph.i.i.preheader529:                          ; preds = %vector.memcheck380, %.lr.ph.i.i.preheader, %middle.block401
  %.010.i.i.ph = phi ptr [ %.0114219, %vector.memcheck380 ], [ %.0114219, %.lr.ph.i.i.preheader ], [ %i.ci, %middle.block401 ]
  %.079.i.i.ph = phi ptr [ %i.am, %vector.memcheck380 ], [ %i.am, %.lr.ph.i.i.preheader ], [ %i.cj, %middle.block401 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader529, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cs, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader529 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.cr, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader529 ] ; 3 uses
  %i.cn = load i32, ptr %.079.i.i, align 4, !tbaa !337
  store i32 %i.cn, ptr %.010.i.i, align 4, !tbaa !346
  %i.co = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !337
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !347
  %i.cr = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cr, %i.al
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i, !llvm.loop !2616

_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit: ; preds = %.lr.ph.i.i, %middle.block401, %bb.j
  store ptr %7, ptr %i.b, align 8, !tbaa !330
  %.not.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairIiiES6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit
  br i1 %.not2830.i, label %._crit_edge.i, label %.lr.ph.i125.preheader

.lr.ph.i125.preheader:                            ; preds = %.preheader.i
  br i1 %min.iters.check, label %.lr.ph.i125.preheader528, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i125.preheader
  %i.ct = mul i64 %indvar, %.idx208               ; 2 uses
  %i.cu = shl i64 %.022.lcssa.i, 3
  %i.cv = add i64 %i.cu, 8
  %i.cw = mul i64 %2, %i.cv
  %i.cx = getelementptr i8, ptr %i.ag, i64 %i.ct
  %i.cy = getelementptr i8, ptr %i.cx, i64 %i.cw  ; 4 uses
  %i.cz = getelementptr i8, ptr %i.ah, i64 %i.ct
  %i.da = getelementptr i8, ptr %i.cz, i64 %.idx  ; 4 uses
  %bound0 = icmp ult ptr %7, %i.cy
  %bound1 = icmp ult ptr %i.bj, %scevgep329
  %found.conflict = and i1 %bound0, %bound1
  %bound0330 = icmp ult ptr %7, %i.bk
  %bound1331 = icmp ult ptr %i.da, %scevgep329
  %found.conflict332 = and i1 %bound0330, %bound1331
  %conflict.rdx = or i1 %found.conflict, %found.conflict332
  %conflict.rdx340.reass = or i1 %conflict.rdx, %invariant.op
  %bound0341 = icmp ult ptr %i.bj, %i.bk
  %bound1342 = icmp ult ptr %i.da, %i.cy
  %found.conflict343 = and i1 %bound0341, %bound1342
  %conflict.rdx344 = or i1 %conflict.rdx340.reass, %found.conflict343
  %bound0345 = icmp ult ptr %i.bj, %scevgep328
  %bound1346 = icmp ult ptr %i.g, %i.cy
  %found.conflict347 = and i1 %bound0345, %bound1346
  %conflict.rdx348 = or i1 %conflict.rdx344, %found.conflict347
  %bound0349 = icmp ult ptr %i.bj, %i.i
  %bound1350 = icmp ult ptr %scevgep, %i.cy
  %found.conflict351 = and i1 %bound0349, %bound1350
  %conflict.rdx352 = or i1 %conflict.rdx348, %found.conflict351
  %bound0353 = icmp ult ptr %i.da, %scevgep328
  %bound1354 = icmp ult ptr %i.g, %i.bk
  %found.conflict355 = and i1 %bound0353, %bound1354
  %conflict.rdx356 = or i1 %conflict.rdx352, %found.conflict355
  %bound0357 = icmp ult ptr %i.da, %i.i
  %bound1358 = icmp ult ptr %scevgep, %i.bk
  %found.conflict359 = and i1 %bound0357, %bound1358
  %conflict.rdx360 = or i1 %conflict.rdx356, %found.conflict359
  br i1 %conflict.rdx360, label %.lr.ph.i125.preheader528, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.db = getelementptr i8, ptr %i.bj, i64 %i.aj
  %i.dc = getelementptr i8, ptr %i.an, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dd = shl i64 %index, 3                       ; 3 uses
  %next.gep = getelementptr i8, ptr %7, i64 %i.dd
  %next.gep361 = getelementptr i8, ptr %i.bj, i64 %i.dd ; 2 uses
  %next.gep362 = getelementptr i8, ptr %i.an, i64 %i.dd
  %wide.vec = load <4 x i32>, ptr %next.gep361, align 4, !tbaa !337
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !337, !alias.scope !2654, !noalias !2655
  %wide.vec364 = load <4 x i32>, ptr %next.gep362, align 4, !tbaa !337
  store <4 x i32> %wide.vec364, ptr %next.gep361, align 4, !tbaa !337
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !2623

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i125.preheader528

.lr.ph.i125.preheader528:                         ; preds = %vector.memcheck, %.lr.ph.i125.preheader, %middle.block
  %.033.i.ph = phi ptr [ %7, %vector.memcheck ], [ %7, %.lr.ph.i125.preheader ], [ %i.ak, %middle.block ]
  %.02032.i.ph = phi ptr [ %i.bj, %vector.memcheck ], [ %i.bj, %.lr.ph.i125.preheader ], [ %i.db, %middle.block ]
  %.02131.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i125.preheader ], [ %i.dc, %middle.block ]
  br label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %.lr.ph.i125.preheader528, %.lr.ph.i125
  %.033.i = phi ptr [ %i.dh, %.lr.ph.i125 ], [ %.033.i.ph, %.lr.ph.i125.preheader528 ] ; 3 uses
  %.02032.i = phi ptr [ %i.dg, %.lr.ph.i125 ], [ %.02032.i.ph, %.lr.ph.i125.preheader528 ] ; 4 uses
  %.02131.i = phi ptr [ %i.df, %.lr.ph.i125 ], [ %.02131.i.ph, %.lr.ph.i125.preheader528 ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.02131.i, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.02032.i, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.033.i, i64 8 ; 2 uses
  %i.di = load i32, ptr %.02032.i, align 4, !tbaa !337
  store i32 %i.di, ptr %.033.i, align 4, !tbaa !346
  %i.dj = getelementptr inbounds nuw i8, ptr %.02032.i, i64 4 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !337
  %i.dl = getelementptr inbounds nuw i8, ptr %.033.i, i64 4
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !347
  %i.dm = load i32, ptr %.02131.i, align 4, !tbaa !337
  store i32 %i.dm, ptr %.02032.i, align 4, !tbaa !346
  %i.dn = getelementptr inbounds nuw i8, ptr %.02131.i, i64 4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !337
  store i32 %i.do, ptr %i.dj, align 4, !tbaa !347
  %.not28.i = icmp eq ptr %i.df, %i.bl
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i125, !llvm.loop !2624

._crit_edge.i:                                    ; preds = %.lr.ph.i125, %middle.block, %.preheader.i
  %.0.lcssa.i = phi ptr [ %7, %.preheader.i ], [ %i.ak, %middle.block ], [ %i.dh, %.lr.ph.i125 ] ; 2 uses
  %.not29.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  %i.dp = load i64, ptr %i.bq, align 8, !tbaa !367
  %i.dq = load i64, ptr %.0106223, align 8, !tbaa !367
  store i64 %i.dq, ptr %i.bq, align 8, !tbaa !367
  store i64 %i.dp, ptr %.0106223, align 8, !tbaa !367
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %i.dr = icmp eq ptr %i.bq, %.0191218
  br i1 %i.dr, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairIiiES6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ds = icmp eq ptr %.0191218, %.0106223
  %spec.select = select i1 %i.ds, ptr %i.bq, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairIiiES6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairIiiES6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit: ; preds = %bb.m, %bb.l, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit
  %.5 = phi ptr [ %.0191218, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %spec.select, %bb.m ], [ %.0106223, %bb.l ]
  %.1.i = phi ptr [ %7, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %.0.lcssa.i, %bb.m ], [ %.0.lcssa.i, %bb.l ] ; 2 uses
  store ptr %.1.i, ptr %i.c, align 8, !tbaa !330
  br label %bb.x

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br i1 %i.bw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dt = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_(ptr noundef %.0114219, ptr noundef %.0111220, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.bl, ptr noundef %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

bb.p:                                             ; preds = %.thread270, %bb.n
  %i.du = phi i1 [ true, %.thread270 ], [ %i.bv, %bb.n ]
  store ptr %8, ptr %9, align 8, !tbaa !384
  %i.dv = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_(ptr noundef %.0114219, ptr noundef %.0111220, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.bl, ptr noundef %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dead_on_return %9)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit: ; preds = %bb.o, %bb.p
  %i.dw = phi i1 [ %i.bv, %bb.o ], [ %i.du, %bb.p ]
  %i.dx = phi i1 [ true, %bb.o ], [ false, %bb.p ]
  %i.dy = phi ptr [ %i.dt, %bb.o ], [ %i.dv, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.dz = load ptr, ptr %i.b, align 8, !tbaa !330 ; 4 uses
  %i.ea = load ptr, ptr %i.c, align 8, !tbaa !330 ; 4 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea                ; 2 uses
  br i1 %i.eb, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit
  store ptr %7, ptr %i.b, align 8, !tbaa !330
  %i.ec = load ptr, ptr %i.d, align 8, !tbaa !330 ; 10 uses
  %i.ed = ptrtoint ptr %i.bl to i64
  %i.ee = ptrtoint ptr %i.ec to i64               ; 3 uses
  %i.ef = sub i64 %i.ed, %i.ee                    ; 2 uses
  %i.eg = ashr exact i64 %i.ef, 3
  %i.eh = sub nsw i64 0, %i.eg
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.eh ; 7 uses
  %.not.i126 = icmp eq ptr %i.ec, %i.ei
  br i1 %.not.i126, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairIiiES6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140, label %.preheader.i127

.preheader.i127:                                  ; preds = %bb.q
  %.not2830.i128 = icmp eq ptr %i.ec, %i.bl
  br i1 %.not2830.i128, label %._crit_edge.i134, label %.lr.ph.i129.preheader

.lr.ph.i129.preheader:                            ; preds = %.preheader.i127
  %i.ej = mul i64 %indvar, %.idx208               ; 3 uses
  %i.ek = add i64 %i.ab, %i.ej                    ; 2 uses
  %i.el = sub i64 %i.ek, %i.ee                    ; 2 uses
  %i.em = lshr i64 %i.el, 3
  %i.en = add nuw nsw i64 %i.em, 1                ; 2 uses
  %min.iters.check424 = icmp ult i64 %i.el, 72
  br i1 %min.iters.check424, label %.lr.ph.i129.preheader530, label %vector.memcheck425

vector.memcheck425:                               ; preds = %.lr.ph.i129.preheader
  %i.eo = add i64 %i.x, %i.ej
  %i.ep = sub i64 %i.eo, %i.ee
  %i.eq = and i64 %i.ep, -8                       ; 2 uses
  %17 = add i64 %i.eq, 8                          ; 2 uses
  %i.er = getelementptr i8, ptr %7, i64 %17       ; 2 uses
  %i.es = add i64 %i.u, %i.ej
  %i.et = shl i64 %.022.lcssa.i, 3
  %i.eu = add i64 %i.et, 8
  %i.ev = mul i64 %2, %i.eu
  %i.ew = add i64 %i.es, %i.ev
  %i.ex = add i64 %i.ew, %i.eq
  %i.ey = sub i64 %i.ex, %i.ef
  %i.ez = getelementptr i8, ptr %1, i64 %i.ey     ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ec, i64 %17    ; 2 uses
  %bound0426 = icmp ult ptr %7, %i.ez
  %bound1427 = icmp ult ptr %i.ei, %i.er
  %found.conflict428 = and i1 %bound0426, %bound1427
  %bound0429 = icmp ult ptr %7, %i.fa
  %bound1430 = icmp ult ptr %i.ec, %i.er
  %found.conflict431 = and i1 %bound0429, %bound1430
  %conflict.rdx432 = or i1 %found.conflict428, %found.conflict431
  %bound0433 = icmp ult ptr %i.ei, %i.fa
  %bound1434 = icmp ult ptr %i.ec, %i.ez
  %found.conflict435 = and i1 %bound0433, %bound1434
  %conflict.rdx436 = or i1 %conflict.rdx432, %found.conflict435
  br i1 %conflict.rdx436, label %.lr.ph.i129.preheader530, label %vector.ph437

vector.ph437:                                     ; preds = %vector.memcheck425
  %n.vec438 = and i64 %i.en, 4611686018427387902  ; 3 uses
  %i.fb = shl i64 %n.vec438, 3                    ; 3 uses
  %i.fc = getelementptr i8, ptr %7, i64 %i.fb     ; 2 uses
  %i.fd = getelementptr i8, ptr %i.ei, i64 %i.fb
  %i.fe = getelementptr i8, ptr %i.ec, i64 %i.fb
  br label %vector.body439

vector.body439:                                   ; preds = %vector.body439, %vector.ph437
  %index440 = phi i64 [ 0, %vector.ph437 ], [ %index.next452, %vector.body439 ] ; 2 uses
  %i.ff = shl i64 %index440, 3                    ; 3 uses
  %next.gep441 = getelementptr i8, ptr %7, i64 %i.ff
  %next.gep442 = getelementptr i8, ptr %i.ei, i64 %i.ff ; 2 uses
  %next.gep443 = getelementptr i8, ptr %i.ec, i64 %i.ff
  %wide.vec444 = load <4 x i32>, ptr %next.gep442, align 4, !tbaa !337, !alias.scope !2656, !noalias !2657
  store <4 x i32> %wide.vec444, ptr %next.gep441, align 4, !tbaa !337, !alias.scope !2658, !noalias !2659
  %wide.vec448 = load <4 x i32>, ptr %next.gep443, align 4, !tbaa !337, !alias.scope !2657
  store <4 x i32> %wide.vec448, ptr %next.gep442, align 4, !tbaa !337, !alias.scope !2656, !noalias !2657
  %index.next452 = add nuw i64 %index440, 2       ; 2 uses
  %i.fg = icmp eq i64 %index.next452, %n.vec438
  br i1 %i.fg, label %middle.block453, label %vector.body439, !llvm.loop !2629

middle.block453:                                  ; preds = %vector.body439
  %cmp.n454 = icmp eq i64 %i.en, %n.vec438
  br i1 %cmp.n454, label %._crit_edge.i134, label %.lr.ph.i129.preheader530

.lr.ph.i129.preheader530:                         ; preds = %vector.memcheck425, %.lr.ph.i129.preheader, %middle.block453
  %.033.i130.ph = phi ptr [ %7, %vector.memcheck425 ], [ %7, %.lr.ph.i129.preheader ], [ %i.fc, %middle.block453 ] ; 4 uses
  %.02032.i131.ph = phi ptr [ %i.ei, %vector.memcheck425 ], [ %i.ei, %.lr.ph.i129.preheader ], [ %i.fd, %middle.block453 ] ; 5 uses
  %.02131.i132.ph = phi ptr [ %i.ec, %vector.memcheck425 ], [ %i.ec, %.lr.ph.i129.preheader ], [ %i.fe, %middle.block453 ] ; 5 uses
  %.02131.i132.ph533 = ptrtoaddr ptr %.02131.i132.ph to i64
  %i.fh = sub i64 %i.ek, %.02131.i132.ph533       ; 2 uses
  %i.fi = and i64 %i.fh, 8
  %lcmp.mod.not.not = icmp eq i64 %i.fi, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i129.prol, label %.lr.ph.i129.prol.loopexit

.lr.ph.i129.prol:                                 ; preds = %.lr.ph.i129.preheader530
  %i.fj = getelementptr inbounds nuw i8, ptr %.02131.i132.ph, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %.02032.i131.ph, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %.033.i130.ph, i64 8 ; 2 uses
  %i.fm = load i32, ptr %.02032.i131.ph, align 4, !tbaa !337
  store i32 %i.fm, ptr %.033.i130.ph, align 4, !tbaa !346
  %i.fn = getelementptr inbounds nuw i8, ptr %.02032.i131.ph, i64 4 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !337
  %i.fp = getelementptr inbounds nuw i8, ptr %.033.i130.ph, i64 4
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !347
  %i.fq = load i32, ptr %.02131.i132.ph, align 4, !tbaa !337
  store i32 %i.fq, ptr %.02032.i131.ph, align 4, !tbaa !346
  %i.fr = getelementptr inbounds nuw i8, ptr %.02131.i132.ph, i64 4
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !337
  store i32 %i.fs, ptr %i.fn, align 4, !tbaa !347
  br label %.lr.ph.i129.prol.loopexit

.lr.ph.i129.prol.loopexit:                        ; preds = %.lr.ph.i129.prol, %.lr.ph.i129.preheader530
  %.lcssa531.unr = phi ptr [ poison, %.lr.ph.i129.preheader530 ], [ %i.fl, %.lr.ph.i129.prol ]
  %.033.i130.unr = phi ptr [ %.033.i130.ph, %.lr.ph.i129.preheader530 ], [ %i.fl, %.lr.ph.i129.prol ]
  %.02032.i131.unr = phi ptr [ %.02032.i131.ph, %.lr.ph.i129.preheader530 ], [ %i.fk, %.lr.ph.i129.prol ]
  %.02131.i132.unr = phi ptr [ %.02131.i132.ph, %.lr.ph.i129.preheader530 ], [ %i.fj, %.lr.ph.i129.prol ]
  %i.ft = icmp ult i64 %i.fh, 8
  br i1 %i.ft, label %._crit_edge.i134, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129
  %.033.i130 = phi ptr [ %i.gg, %.lr.ph.i129 ], [ %.033.i130.unr, %.lr.ph.i129.prol.loopexit ] ; 5 uses
  %.02032.i131 = phi ptr [ %i.gf, %.lr.ph.i129 ], [ %.02032.i131.unr, %.lr.ph.i129.prol.loopexit ] ; 6 uses
  %.02131.i132 = phi ptr [ %i.ge, %.lr.ph.i129 ], [ %.02131.i132.unr, %.lr.ph.i129.prol.loopexit ] ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 8 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.033.i130, i64 8
  %i.fx = load i32, ptr %.02032.i131, align 4, !tbaa !337
  store i32 %i.fx, ptr %.033.i130, align 4, !tbaa !346
  %i.fy = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 4 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !337
  %i.ga = getelementptr inbounds nuw i8, ptr %.033.i130, i64 4
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !347
  %i.gb = load i32, ptr %.02131.i132, align 4, !tbaa !337
  store i32 %i.gb, ptr %.02032.i131, align 4, !tbaa !346
  %i.gc = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 4
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !337
  store i32 %i.gd, ptr %i.fy, align 4, !tbaa !347
  %i.ge = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 16 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 16
  %i.gg = getelementptr inbounds nuw i8, ptr %.033.i130, i64 16 ; 2 uses
  %i.gh = load i32, ptr %i.fv, align 4, !tbaa !337
  store i32 %i.gh, ptr %i.fw, align 4, !tbaa !346
  %i.gi = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 12 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !337
  %i.gk = getelementptr inbounds nuw i8, ptr %.033.i130, i64 12
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !347
  %i.gl = load i32, ptr %i.fu, align 4, !tbaa !337
  store i32 %i.gl, ptr %i.fv, align 4, !tbaa !346
  %i.gm = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 12
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !337
  store i32 %i.gn, ptr %i.gi, align 4, !tbaa !347
  %.not28.i133.1 = icmp eq ptr %i.ge, %i.bl
  br i1 %.not28.i133.1, label %._crit_edge.i134, label %.lr.ph.i129, !llvm.loop !2630

._crit_edge.i134:                                 ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129, %middle.block453, %.preheader.i127
  %.0.lcssa.i135 = phi ptr [ %7, %.preheader.i127 ], [ %i.fc, %middle.block453 ], [ %.lcssa531.unr, %.lr.ph.i129.prol.loopexit ], [ %i.gg, %.lr.ph.i129 ] ; 2 uses
  %.not29.i136 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i136, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i134
  %i.go = load i64, ptr %i.bq, align 8, !tbaa !367
  %i.gp = load i64, ptr %.0106223, align 8, !tbaa !367
  store i64 %i.gp, ptr %i.bq, align 8, !tbaa !367
  store i64 %i.go, ptr %.0106223, align 8, !tbaa !367
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i134
  %i.gq = icmp eq ptr %i.bq, %.0191218
  br i1 %i.gq, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairIiiES6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gr = icmp eq ptr %.0191218, %.0106223
  %spec.select205 = select i1 %i.gr, ptr %i.bq, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairIiiES6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairIiiES6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140: ; preds = %bb.t, %bb.s, %bb.q
  %.6 = phi ptr [ %.0191218, %bb.q ], [ %spec.select205, %bb.t ], [ %.0106223, %bb.s ]
  %.1.i137 = phi ptr [ %7, %bb.q ], [ %.0.lcssa.i135, %bb.t ], [ %.0.lcssa.i135, %bb.s ] ; 2 uses
  store ptr %.1.i137, ptr %i.c, align 8, !tbaa !330
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit
  %.not.i141 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not.i141, label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gs = load i64, ptr %i.bq, align 8, !tbaa !367
  %i.gt = load i64, ptr %.0106223, align 8, !tbaa !367
  store i64 %i.gt, ptr %i.bq, align 8, !tbaa !367
  store i64 %i.gs, ptr %.0106223, align 8, !tbaa !367
  %i.gu = icmp eq ptr %i.bq, %.0191218
  br i1 %i.gu, label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gv = icmp eq ptr %.0191218, %.0106223
  %spec.select206 = select i1 %i.gv, ptr %i.bq, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit

_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit: ; preds = %bb.w, %bb.u, %bb.v, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairIiiES6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140
  %i.gw = phi ptr [ %.1.i137, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairIiiES6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140 ], [ %i.ea, %bb.u ], [ %i.ea, %bb.w ], [ %i.ea, %bb.v ]
  %i.gx = phi ptr [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairIiiES6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140 ], [ %i.dz, %bb.u ], [ %i.dz, %bb.w ], [ %i.dz, %bb.v ]
  %.1192 = phi ptr [ %.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairIiiES6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140 ], [ %.0191218, %bb.u ], [ %spec.select206, %bb.w ], [ %.0106223, %bb.v ]
  %i.gy = xor i1 %i.dx, %i.eb
  %i.gz = zext i1 %i.gy to i8
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairIiiES6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit
  %i.ha = phi ptr [ %i.gw, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %.1.i, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairIiiES6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit ] ; 2 uses
  %i.hb = phi ptr [ %i.gx, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairIiiES6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit ] ; 2 uses
  %i.hc = phi i1 [ %i.dw, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %i.by, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairIiiES6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit ]
  %.2193 = phi ptr [ %.1192, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %.5, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairIiiES6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit ] ; 2 uses
  %.1115 = phi ptr [ %i.dy, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %i.an, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairIiiES6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit ] ; 2 uses
  %.1109 = phi i8 [ %i.gz, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %.0108222, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairIiiES6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.hc, true
  %i.hd = sext i1 %not. to i64
  %.1 = add i64 %.0227, %i.hd
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %.0111220, i64 %2 ; 2 uses
  store ptr %i.bl, ptr %i.d, align 8, !tbaa !330
  %i.hf = getelementptr inbounds nuw i8, ptr %.0106223, i64 8
  %i.hg = icmp ne i64 %.0104226, 0
  %.neg = sext i1 %i.hg to i64
  %i.hh = add i64 %.0104226, %.neg
  %i.hi = icmp ne i64 %i.bh, 0
  %.neg122 = sext i1 %i.hi to i64
  %i.hj = add i64 %.sroa.speculated180, %.neg122
  %i.hk = add i64 %.0195217, -1                   ; 2 uses
  %.not = icmp eq i64 %i.hk, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !2631

.thread:                                          ; preds = %bb.x, %bb.g, %bb.f
  %i.hl = phi ptr [ %i.ha, %bb.x ], [ %i.al, %bb.g ], [ %i.al, %bb.f ] ; 3 uses
  %i.hm = phi ptr [ %i.hb, %bb.x ], [ %i.am, %bb.g ], [ %i.am, %bb.f ] ; 9 uses
  %.0195.lcssa.ph = phi i64 [ 0, %bb.x ], [ %.0195217, %bb.g ], [ %.0195217, %bb.f ] ; 3 uses
  %.0191.lcssa.ph = phi ptr [ %.2193, %bb.x ], [ %.0191218, %bb.g ], [ %.0191218, %bb.f ] ; 3 uses
  %.0114.lcssa.ph = phi ptr [ %.1115, %bb.x ], [ %.0114219, %bb.g ], [ %.0114219, %bb.f ] ; 8 uses
  %.0111.lcssa.ph = phi ptr [ %i.he, %bb.x ], [ %.0111220, %bb.g ], [ %.0111220, %bb.f ] ; 4 uses
  %.0108.lcssa.ph = phi i8 [ %.1109, %bb.x ], [ 1, %bb.g ], [ %.0108222, %bb.f ]
  %i.hn = trunc nuw i8 %.0108.lcssa.ph to i1
  %i.ho = select i1 %i.hn, ptr %.0114.lcssa.ph, ptr %.0111.lcssa.ph ; 3 uses
  %.not8.i.i144 = icmp eq ptr %i.hm, %i.hl
  br i1 %.not8.i.i144, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit150, label %.lr.ph.i.i145.preheader

.lr.ph.i.i145.preheader:                          ; preds = %.thread
  %i.hp = ptrtoaddr ptr %i.hm to i64
  %i.hq = ptrtoaddr ptr %i.hl to i64
  %i.hr = add i64 %i.hq, -8
  %i.hs = sub i64 %i.hr, %i.hp                    ; 3 uses
  %i.ht = lshr i64 %i.hs, 3
  %i.hu = add nuw nsw i64 %i.ht, 1                ; 2 uses
  %min.iters.check465 = icmp ult i64 %i.hs, 104
  br i1 %min.iters.check465, label %.lr.ph.i.i145.preheader527, label %vector.memcheck466

vector.memcheck466:                               ; preds = %.lr.ph.i.i145.preheader
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_blocksIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_RT1_T0_:bb.a
  %.012.i.i = phi ptr [ %i.bl, %.lr.ph.i24.i ], [ %.012.i.i.ph, %.lr.ph.i24.i.preheader213 ] ; 2 uses
  %.0911.i.i = phi ptr [ %i.bm, %.lr.ph.i24.i ], [ %.0911.i.i.ph, %.lr.ph.i24.i.preheader213 ] ; 2 uses
  %i.bk = load i64, ptr %.012.i.i, align 4
  store i64 %i.bk, ptr %.0911.i.i, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 8
  %.not.i25.i = icmp eq ptr %i.bl, %i.at
  br i1 %.not.i25.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, label %.lr.ph.i24.i, !llvm.loop !2904

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit: ; preds = %.lr.ph.i.i, %.lr.ph.i24.i, %middle.block, %middle.block145, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i
  store i64 %.sroa.speculated58, ptr %i.i, align 8, !tbaa !372
  %i.bn = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_insertion_sort_step_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEENS0_9iter_sizeIT_E4typeESG_SI_SI_T0_T1_(ptr noundef %i.b, i64 noundef %i.c, i64 noundef %2) ; 3 uses
  %i.bo = sub i64 0, %i.bn
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bo
  %i.bq = sub i64 %.sroa.speculated58, %i.bn
  %i.br = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEENS0_9iter_sizeIT_E4typeESG_SI_SI_SI_SI_T0_T1_(ptr noundef %i.bp, i64 noundef %i.c, i64 noundef %i.bn, i64 noundef %3, i64 noundef %i.bq) ; 8 uses
  %.not46.not = icmp ugt i64 %3, %i.e
  br i1 %.not46.not, label %bb.d, label %.lr.ph.i49.preheader

bb.d:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit
  %i.bs = load ptr, ptr %4, align 8, !tbaa !371
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %.sroa.speculated58 ; 3 uses
  %i.bu = sub i64 0, %i.br                        ; 3 uses
  %.not8.i = icmp eq i64 %i.br, 0
  br i1 %.not8.i, label %.loopexit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.bv = getelementptr [8 x i8], ptr %i.b, i64 %i.bu
  %i.bw = getelementptr [8 x i8], ptr %i.bv, i64 %i.c ; 6 uses
  %.idx = shl i64 %i.bu, 3
  %i.bx = getelementptr i8, ptr %i.bt, i64 %.idx  ; 6 uses
  %i.by = add i64 %i.br, 2305843009213693951
  %i.bz = and i64 %i.by, 2305843009213693951      ; 2 uses
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check185 = icmp samesign ult i64 %i.bz, 7
  br i1 %min.iters.check185, label %.lr.ph.i.preheader211, label %vector.memcheck186

vector.memcheck186:                               ; preds = %.lr.ph.i.preheader
  %i.cb = shl i64 %1, 3
  %i.cc = getelementptr i8, ptr %0, i64 %i.cb
  %bound0187 = icmp ult ptr %i.bw, %i.bt
  %bound1188 = icmp ult ptr %i.bx, %i.cc
  %found.conflict189 = and i1 %bound0187, %bound1188
  br i1 %found.conflict189, label %.lr.ph.i.preheader211, label %vector.ph190

vector.ph190:                                     ; preds = %vector.memcheck186
  %n.vec191 = and i64 %i.ca, 4611686018427387900  ; 3 uses
  %i.cd = shl i64 %n.vec191, 3                    ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bw, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.bx, i64 %i.cd
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph190
  %index193 = phi i64 [ 0, %vector.ph190 ], [ %index.next206, %vector.body192 ] ; 2 uses
  %i.cg = shl i64 %index193, 3                    ; 3 uses
  %i.ch = or disjoint i64 %i.cg, 16               ; 2 uses
  %next.gep194 = getelementptr i8, ptr %i.bw, i64 %i.cg
  %next.gep195 = getelementptr i8, ptr %i.bw, i64 %i.ch
  %next.gep196 = getelementptr i8, ptr %i.bx, i64 %i.cg
  %next.gep197 = getelementptr i8, ptr %i.bx, i64 %i.ch
  %wide.vec198 = load <4 x i32>, ptr %next.gep196, align 4, !tbaa !337, !alias.scope !2919
  %wide.vec201 = load <4 x i32>, ptr %next.gep197, align 4, !tbaa !337, !alias.scope !2919
  store <4 x i32> %wide.vec198, ptr %next.gep194, align 4, !tbaa !337, !alias.scope !2920, !noalias !2919
  store <4 x i32> %wide.vec201, ptr %next.gep195, align 4, !tbaa !337, !alias.scope !2920, !noalias !2919
  %index.next206 = add nuw i64 %index193, 4       ; 2 uses
  %i.ci = icmp eq i64 %index.next206, %n.vec191
  br i1 %i.ci, label %middle.block207, label %vector.body192, !llvm.loop !2908

middle.block207:                                  ; preds = %vector.body192
  %cmp.n208 = icmp eq i64 %i.ca, %n.vec191
  br i1 %cmp.n208, label %.loopexit.thread, label %.lr.ph.i.preheader211

.lr.ph.i.preheader211:                            ; preds = %vector.memcheck186, %.lr.ph.i.preheader, %middle.block207
  %.010.i.ph = phi ptr [ %i.bw, %vector.memcheck186 ], [ %i.bw, %.lr.ph.i.preheader ], [ %i.ce, %middle.block207 ]
  %.079.i.ph = phi ptr [ %i.bx, %vector.memcheck186 ], [ %i.bx, %.lr.ph.i.preheader ], [ %i.cf, %middle.block207 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader211, %.lr.ph.i
  %.010.i = phi ptr [ %i.co, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader211 ] ; 3 uses
  %.079.i = phi ptr [ %i.cn, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader211 ] ; 3 uses
  %i.cj = load i32, ptr %.079.i, align 4, !tbaa !337
  store i32 %i.cj, ptr %.010.i, align 4, !tbaa !346
  %i.ck = getelementptr inbounds nuw i8, ptr %.079.i, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !337
  %i.cm = getelementptr inbounds nuw i8, ptr %.010.i, i64 4
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !347
  %i.cn = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.not.i47 = icmp eq ptr %i.cn, %i.bt
  br i1 %.not.i47, label %.loopexit.thread, label %.lr.ph.i, !llvm.loop !2909

_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit: ; preds = %bb.a
  %i.cp = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive19insertion_sort_stepIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEENS0_9iter_sizeIT_E4typeESF_SH_SH_T0_(ptr noundef %i.b, i64 noundef %i.c, i64 noundef %2) ; 3 uses
  %i.cq = sub i64 0, %i.cp
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.ct = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPSt4pairIiiEEET_S5_S5_S5_(ptr noundef %i.cr, ptr noundef %i.b, ptr noundef %i.cs) ; 0 uses
  %i.cu = sub i64 %3, %i.cp
  %i.cv = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESG_SI_SI_SI_SI_T0_T1_(ptr noundef %i.cr, i64 noundef %i.c, i64 noundef %i.cp, i64 noundef %3, i64 noundef %i.cu) ; 0 uses
  br label %bb.e

.loopexit.thread:                                 ; preds = %.lr.ph.i, %middle.block207, %bb.d
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bu
  %i.cx = sub i64 %3, %i.br
  %i.cy = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESG_SI_SI_SI_SI_T0_T1_(ptr noundef nonnull %i.cw, i64 noundef %i.c, i64 noundef %i.br, i64 noundef %3, i64 noundef %i.cx) ; 0 uses
  br label %bb.e

.lr.ph.i49.preheader:                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit
  %.pre = sub i64 0, %i.br
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.pre
  %i.da = sub i64 %3, %i.br
  %i.db = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESG_SI_SI_SI_SI_T0_T1_(ptr noundef %i.cz, i64 noundef %i.c, i64 noundef %i.br, i64 noundef %3, i64 noundef %i.da) ; 0 uses
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEEvT_NS0_9iter_sizeISF_E4typeESI_T0_T1_(ptr noundef %0, i64 noundef %i.c, i64 noundef %3)
  %i.dc = load ptr, ptr %4, align 8, !tbaa !371   ; 7 uses
  %.idx83 = shl nuw nsw i64 %.sroa.speculated58, 3 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.idx83 ; 2 uses
  %i.de = add nsw i64 %.idx83, -8                 ; 2 uses
  %i.df = lshr exact i64 %i.de, 3
  %i.dg = add nuw nsw i64 %i.df, 1                ; 2 uses
  %min.iters.check154 = icmp ult i64 %i.de, 40
  br i1 %min.iters.check154, label %.lr.ph.i49.preheader212, label %vector.memcheck155

vector.memcheck155:                               ; preds = %.lr.ph.i49.preheader
  %i.dh = getelementptr i8, ptr %0, i64 %.idx83
  %bound0156 = icmp ult ptr %0, %i.dd
  %bound1157 = icmp ult ptr %i.dc, %i.dh
  %found.conflict158 = and i1 %bound0156, %bound1157
  br i1 %found.conflict158, label %.lr.ph.i49.preheader212, label %vector.ph159

vector.ph159:                                     ; preds = %vector.memcheck155
  %n.vec160 = and i64 %i.dg, 4611686018427387900  ; 3 uses
  %i.di = shl i64 %n.vec160, 3                    ; 2 uses
  %i.dj = getelementptr i8, ptr %0, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.dc, i64 %i.di
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph159
  %index162 = phi i64 [ 0, %vector.ph159 ], [ %index.next175, %vector.body161 ] ; 2 uses
  %i.dl = shl i64 %index162, 3                    ; 3 uses
  %i.dm = or disjoint i64 %i.dl, 16               ; 2 uses
  %next.gep163 = getelementptr i8, ptr %0, i64 %i.dl
  %next.gep164 = getelementptr i8, ptr %0, i64 %i.dm
  %next.gep165 = getelementptr i8, ptr %i.dc, i64 %i.dl
  %next.gep166 = getelementptr i8, ptr %i.dc, i64 %i.dm
  %wide.vec167 = load <4 x i32>, ptr %next.gep165, align 4, !tbaa !337, !alias.scope !2921
  %wide.vec170 = load <4 x i32>, ptr %next.gep166, align 4, !tbaa !337, !alias.scope !2921
  store <4 x i32> %wide.vec167, ptr %next.gep163, align 4, !tbaa !337, !alias.scope !2922, !noalias !2921
  store <4 x i32> %wide.vec170, ptr %next.gep164, align 4, !tbaa !337, !alias.scope !2922, !noalias !2921
  %index.next175 = add nuw i64 %index162, 4       ; 2 uses
  %i.dn = icmp eq i64 %index.next175, %n.vec160
  br i1 %i.dn, label %middle.block176, label %vector.body161, !llvm.loop !2913

middle.block176:                                  ; preds = %vector.body161
  %cmp.n177 = icmp eq i64 %i.dg, %n.vec160
  br i1 %cmp.n177, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit54, label %.lr.ph.i49.preheader212

.lr.ph.i49.preheader212:                          ; preds = %vector.memcheck155, %.lr.ph.i49.preheader, %middle.block176
  %.010.i50.ph = phi ptr [ %0, %vector.memcheck155 ], [ %0, %.lr.ph.i49.preheader ], [ %i.dj, %middle.block176 ]
  %.079.i51.ph = phi ptr [ %i.dc, %vector.memcheck155 ], [ %i.dc, %.lr.ph.i49.preheader ], [ %i.dk, %middle.block176 ]
  br label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %.lr.ph.i49.preheader212, %.lr.ph.i49
  %.010.i50 = phi ptr [ %i.dt, %.lr.ph.i49 ], [ %.010.i50.ph, %.lr.ph.i49.preheader212 ] ; 3 uses
  %.079.i51 = phi ptr [ %i.ds, %.lr.ph.i49 ], [ %.079.i51.ph, %.lr.ph.i49.preheader212 ] ; 3 uses
  %i.do = load i32, ptr %.079.i51, align 4, !tbaa !337
  store i32 %i.do, ptr %.010.i50, align 4, !tbaa !346
  %i.dp = getelementptr inbounds nuw i8, ptr %.079.i51, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !337
  %i.dr = getelementptr inbounds nuw i8, ptr %.010.i50, i64 4
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !347
  %i.ds = getelementptr inbounds nuw i8, ptr %.079.i51, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.010.i50, i64 8
  %.not.i52 = icmp eq ptr %i.ds, %i.dd
  br i1 %.not.i52, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit54, label %.lr.ph.i49, !llvm.loop !2914

bb.e:                                             ; preds = %.loopexit.thread, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEEvT_NS0_9iter_sizeISF_E4typeESI_T0_T1_(ptr noundef %0, i64 noundef %i.c, i64 noundef %3)
  br label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit54

_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit54: ; preds = %.lr.ph.i49, %middle.block176, %bb.e
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !372
  %.not.i55 = icmp eq i64 %i.dv, 0
  br i1 %.not.i55, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit54
  store i64 0, ptr %i.du, align 8, !tbaa !372
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit: ; preds = %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit54, %.preheader.preheader.i.i
  %i.dw = shl i64 %3, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.dw)
  ret i64 %.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEbT_RNS0_9iter_sizeISG_E4typeESG_SJ_SJ_SK_RT1_T0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = alloca [256 x i8], align 16              ; 3 uses
  %i.c = load i64, ptr %5, align 8, !tbaa !367    ; 12 uses
  %i.d = getelementptr [8 x i8], ptr %2, i64 %i.c ; 7 uses
  %i.e = sub i64 %3, %i.c                         ; 8 uses
  %i.f = load i64, ptr %1, align 8, !tbaa !367
  %i.g = add i64 %i.f, %i.c                       ; 2 uses
  %i.h = icmp ugt i64 %i.e, %4                    ; 3 uses
  %.not139 = icmp ne i64 %i.c, 0
  %or.cond143.not189 = and i1 %.not139, %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp ule i64 %i.c, %i.j
  %or.cond187 = select i1 %or.cond143.not189, i1 %i.k, i1 false ; 8 uses
  br i1 %or.cond187, label %bb.b, label %.thread.thread

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !372  ; 3 uses
  %.not.i = icmp ugt i64 %i.c, %i.m
  %i.n = load ptr, ptr %6, align 8, !tbaa !371    ; 15 uses
  br i1 %.not.i, label %bb.c, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.b
  %.idx.i = shl nsw i64 %i.c, 3                   ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %2, i64 %.idx.i ; 2 uses
  %i.p = add i64 %.idx.i, -8                      ; 2 uses
  %i.q = lshr exact i64 %i.p, 3
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.p, 40
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader.i
  %i.s = getelementptr i8, ptr %i.n, i64 %.idx.i
  %bound0 = icmp ult ptr %i.n, %i.o
  %bound1 = icmp ult ptr %2, %i.s
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.r, 4611686018427387900      ; 3 uses
  %i.t = shl i64 %n.vec, 3                        ; 2 uses
  %i.u = getelementptr i8, ptr %i.n, i64 %i.t
  %i.v = getelementptr i8, ptr %2, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = shl i64 %index, 3                        ; 3 uses
  %i.x = or disjoint i64 %i.w, 16                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.w
  %next.gep245 = getelementptr i8, ptr %i.n, i64 %i.x
  %next.gep246 = getelementptr i8, ptr %2, i64 %i.w
  %next.gep247 = getelementptr i8, ptr %2, i64 %i.x
  %wide.vec = load <4 x i32>, ptr %next.gep246, align 4, !tbaa !337, !alias.scope !2951
  %wide.vec249 = load <4 x i32>, ptr %next.gep247, align 4, !tbaa !337, !alias.scope !2951
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !337, !alias.scope !2952, !noalias !2951
  store <4 x i32> %wide.vec249, ptr %next.gep245, align 4, !tbaa !337, !alias.scope !2952, !noalias !2951
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !2926

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader.i, %middle.block
  %.010.i.i.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.i.preheader.i ], [ %i.u, %middle.block ]
  %.079.i.i.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.i.preheader.i ], [ %i.v, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %.079.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.z = load i32, ptr %.079.i.i, align 4, !tbaa !337
  store i32 %i.z, ptr %.010.i.i, align 4, !tbaa !346
  %i.aa = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !337
  %i.ac = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !347
  %i.ad = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.ad, %i.o
  br i1 %.not.i.i, label %.thread, label %.lr.ph.i.i, !llvm.loop !2927

bb.c:                                             ; preds = %bb.b
  %.idx26.i = shl i64 %i.m, 3                     ; 6 uses
  %i.af = getelementptr i8, ptr %2, i64 %.idx26.i ; 6 uses
  %.not8.i17.i = icmp eq i64 %i.m, 0
  br i1 %.not8.i17.i, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i, label %.lr.ph.i18.i.preheader

.lr.ph.i18.i.preheader:                           ; preds = %bb.c
  %i.ag = add i64 %.idx26.i, -8                   ; 2 uses
  %i.ah = lshr exact i64 %i.ag, 3
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check259 = icmp ult i64 %i.ag, 40
  br i1 %min.iters.check259, label %.lr.ph.i18.i.preheader525, label %vector.memcheck260

vector.memcheck260:                               ; preds = %.lr.ph.i18.i.preheader
  %i.aj = getelementptr i8, ptr %i.n, i64 %.idx26.i
  %bound0261 = icmp ult ptr %i.n, %i.af
  %bound1262 = icmp ult ptr %2, %i.aj
  %found.conflict263 = and i1 %bound0261, %bound1262
  br i1 %found.conflict263, label %.lr.ph.i18.i.preheader525, label %vector.ph264

vector.ph264:                                     ; preds = %vector.memcheck260
  %n.vec265 = and i64 %i.ai, 4611686018427387900  ; 3 uses
  %i.ak = shl i64 %n.vec265, 3                    ; 2 uses
  %i.al = getelementptr i8, ptr %i.n, i64 %i.ak   ; 2 uses
  %i.am = getelementptr i8, ptr %2, i64 %i.ak
  br label %vector.body266

vector.body266:                                   ; preds = %vector.body266, %vector.ph264
  %index267 = phi i64 [ 0, %vector.ph264 ], [ %index.next280, %vector.body266 ] ; 2 uses
  %i.an = shl i64 %index267, 3                    ; 3 uses
  %i.ao = or disjoint i64 %i.an, 16               ; 2 uses
  %next.gep268 = getelementptr i8, ptr %i.n, i64 %i.an
  %next.gep269 = getelementptr i8, ptr %i.n, i64 %i.ao
  %next.gep270 = getelementptr i8, ptr %2, i64 %i.an
  %next.gep271 = getelementptr i8, ptr %2, i64 %i.ao
  %wide.vec272 = load <4 x i32>, ptr %next.gep270, align 4, !tbaa !337, !alias.scope !2953
  %wide.vec275 = load <4 x i32>, ptr %next.gep271, align 4, !tbaa !337, !alias.scope !2953
  store <4 x i32> %wide.vec272, ptr %next.gep268, align 4, !tbaa !337, !alias.scope !2954, !noalias !2953
  store <4 x i32> %wide.vec275, ptr %next.gep269, align 4, !tbaa !337, !alias.scope !2954, !noalias !2953
  %index.next280 = add nuw i64 %index267, 4       ; 2 uses
  %i.ap = icmp eq i64 %index.next280, %n.vec265
  br i1 %i.ap, label %middle.block281, label %vector.body266, !llvm.loop !2931

middle.block281:                                  ; preds = %vector.body266
  %cmp.n282 = icmp eq i64 %i.ai, %n.vec265
  br i1 %cmp.n282, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i, label %.lr.ph.i18.i.preheader525

.lr.ph.i18.i.preheader525:                        ; preds = %vector.memcheck260, %.lr.ph.i18.i.preheader, %middle.block281
  %.010.i19.i.ph = phi ptr [ %i.n, %vector.memcheck260 ], [ %i.n, %.lr.ph.i18.i.preheader ], [ %i.al, %middle.block281 ]
  %.079.i20.i.ph = phi ptr [ %2, %vector.memcheck260 ], [ %2, %.lr.ph.i18.i.preheader ], [ %i.am, %middle.block281 ]
  br label %.lr.ph.i18.i

.lr.ph.i18.i:                                     ; preds = %.lr.ph.i18.i.preheader525, %.lr.ph.i18.i
  %.010.i19.i = phi ptr [ %i.av, %.lr.ph.i18.i ], [ %.010.i19.i.ph, %.lr.ph.i18.i.preheader525 ] ; 3 uses
  %.079.i20.i = phi ptr [ %i.au, %.lr.ph.i18.i ], [ %.079.i20.i.ph, %.lr.ph.i18.i.preheader525 ] ; 3 uses
  %i.aq = load i32, ptr %.079.i20.i, align 4, !tbaa !337
  store i32 %i.aq, ptr %.010.i19.i, align 4, !tbaa !346
  %i.ar = getelementptr inbounds nuw i8, ptr %.079.i20.i, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !337
  %i.at = getelementptr inbounds nuw i8, ptr %.010.i19.i, i64 4
  store i32 %i.as, ptr %i.at, align 4, !tbaa !347
  %i.au = getelementptr inbounds nuw i8, ptr %.079.i20.i, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.010.i19.i, i64 8 ; 2 uses
  %.not.i21.i = icmp eq ptr %i.au, %i.af
  br i1 %.not.i21.i, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i, label %.lr.ph.i18.i, !llvm.loop !2932

_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i: ; preds = %.lr.ph.i18.i, %middle.block281, %bb.c
  %.0.lcssa.i22.i = phi ptr [ %i.n, %bb.c ], [ %i.al, %middle.block281 ], [ %i.av, %.lr.ph.i18.i ] ; 5 uses
  %.0.lcssa.i22.i287 = ptrtoaddr ptr %.0.lcssa.i22.i to i64
  %.idx27.i = shl nsw i64 %i.c, 3                 ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %2, i64 %.idx27.i
  %.not10.i.i = icmp eq i64 %.idx26.i, %.idx27.i
  br i1 %.not10.i.i, label %.thread, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i
  %i.ax = add i64 %.idx27.i, -8
  %i.ay = sub i64 %i.ax, %.idx26.i                ; 2 uses
  %i.az = lshr exact i64 %i.ay, 3
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check289 = icmp ult i64 %i.ay, 104
  br i1 %min.iters.check289, label %.lr.ph.i24.i.preheader524, label %vector.memcheck290

vector.memcheck290:                               ; preds = %.lr.ph.i24.i.preheader
  %i.bb = add i64 %.idx26.i, %i.a
  %i.bc = sub i64 %i.bb, %.0.lcssa.i22.i287
  %diff.check = icmp ugt i64 %i.bc, -32
  br i1 %diff.check, label %.lr.ph.i24.i.preheader524, label %vector.ph291

vector.ph291:                                     ; preds = %vector.memcheck290
  %n.vec292 = and i64 %i.ba, 4611686018427387900  ; 3 uses
  %i.bd = shl i64 %n.vec292, 3                    ; 2 uses
  %i.be = getelementptr i8, ptr %i.af, i64 %i.bd
  %i.bf = getelementptr i8, ptr %.0.lcssa.i22.i, i64 %i.bd
  br label %vector.body293

vector.body293:                                   ; preds = %vector.body293, %vector.ph291
  %index294 = phi i64 [ 0, %vector.ph291 ], [ %index.next298, %vector.body293 ] ; 2 uses
  %i.bg = shl i64 %index294, 3                    ; 2 uses
  %next.gep295 = getelementptr i8, ptr %i.af, i64 %i.bg ; 2 uses
  %next.gep296 = getelementptr i8, ptr %.0.lcssa.i22.i, i64 %i.bg ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep295, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep295, align 4
  %wide.load297 = load <2 x i64>, ptr %i.bh, align 4
  %i.bi = getelementptr i8, ptr %next.gep296, i64 16
  store <2 x i64> %wide.load, ptr %next.gep296, align 4
  store <2 x i64> %wide.load297, ptr %i.bi, align 4
  %index.next298 = add nuw i64 %index294, 4       ; 2 uses
  %i.bj = icmp eq i64 %index.next298, %n.vec292
  br i1 %i.bj, label %middle.block299, label %vector.body293, !llvm.loop !2933

middle.block299:                                  ; preds = %vector.body293
  %cmp.n300 = icmp eq i64 %i.ba, %n.vec292
  br i1 %cmp.n300, label %.thread, label %.lr.ph.i24.i.preheader524

.lr.ph.i24.i.preheader524:                        ; preds = %vector.memcheck290, %.lr.ph.i24.i.preheader, %middle.block299
  %.012.i.i.ph = phi ptr [ %i.af, %vector.memcheck290 ], [ %i.af, %.lr.ph.i24.i.preheader ], [ %i.be, %middle.block299 ]
  %.0911.i.i.ph = phi ptr [ %.0.lcssa.i22.i, %vector.memcheck290 ], [ %.0.lcssa.i22.i, %.lr.ph.i24.i.preheader ], [ %i.bf, %middle.block299 ]
  br label %.lr.ph.i24.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i.preheader524, %.lr.ph.i24.i
  %.012.i.i = phi ptr [ %i.bl, %.lr.ph.i24.i ], [ %.012.i.i.ph, %.lr.ph.i24.i.preheader524 ] ; 2 uses
  %.0911.i.i = phi ptr [ %i.bm, %.lr.ph.i24.i ], [ %.0911.i.i.ph, %.lr.ph.i24.i.preheader524 ] ; 2 uses
  %i.bk = load i64, ptr %.012.i.i, align 4
  store i64 %i.bk, ptr %.0911.i.i, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 8
  %.not.i25.i = icmp eq ptr %i.bl, %i.aw
  br i1 %.not.i25.i, label %.thread, label %.lr.ph.i24.i, !llvm.loop !2934

.thread:                                          ; preds = %.lr.ph.i.i, %.lr.ph.i24.i, %middle.block, %middle.block299, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i
  store i64 %i.c, ptr %i.l, align 8, !tbaa !372
  br i1 %i.h, label %.lr.ph, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit.sink.split

.thread.thread:                                   ; preds = %bb.a
  br i1 %i.h, label %.lr.ph, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit.sink.split

.lr.ph:                                           ; preds = %.thread.thread, %.thread
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bo = shl i64 %3, 3                           ; 3 uses
  %i.bp = shl i64 %i.c, 3
  %7 = or disjoint i64 %i.bp, 4                   ; 4 uses
  %8 = add i64 %i.bo, -4                          ; 4 uses
  %i.bq = shl i64 %3, 3
  %9 = add i64 %i.bq, -8
  %i.br = getelementptr i8, ptr %2, i64 %7
  %i.bs = getelementptr i8, ptr %2, i64 %7
  %i.bt = getelementptr i8, ptr %2, i64 %7
  %i.bu = getelementptr i8, ptr %2, i64 %7
  br label %bb.d

._crit_edge:                                      ; preds = %bb.s
  %i.bv = select i1 %.1, i1 %i.cg, i1 false       ; 2 uses
  %spec.select = select i1 %.1, i64 %.1.i, i64 0  ; 2 uses
  store i64 %spec.select, ptr %5, align 8, !tbaa !367
  %i.bw = sub i64 %i.g, %spec.select
  store i64 %i.bw, ptr %1, align 8, !tbaa !367
  br i1 %or.cond187, label %bb.t, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit

bb.d:                                             ; preds = %.lr.ph, %bb.s
  %.0205 = phi i64 [ %4, %.lr.ph ], [ %i.bz, %bb.s ] ; 5 uses
  %.0130204 = phi i64 [ 0, %.lr.ph ], [ %i.ik, %bb.s ] ; 3 uses
  %.0131203 = phi i1 [ true, %.lr.ph ], [ %.1, %bb.s ]
  %.0132202 = phi i64 [ 0, %.lr.ph ], [ %.1.i, %bb.s ]
  %.0133201 = phi i64 [ %4, %.lr.ph ], [ %spec.select15.i, %bb.s ] ; 15 uses
  %.0134200 = phi i1 [ true, %.lr.ph ], [ %i.cg, %bb.s ]
  %i.bx = load i64, ptr %5, align 8, !tbaa !367   ; 2 uses
  %i.by = load i64, ptr %1, align 8, !tbaa !367   ; 4 uses
  %i.bz = shl i64 %.0205, 1                       ; 6 uses
  %.not.i144 = icmp eq i64 %i.bx, 0
  br i1 %.not.i144, label %bb.e, label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

bb.e:                                             ; preds = %bb.d
  %i.ca = lshr i64 %i.by, 1                       ; 3 uses
  %i.cb = sub nuw i64 %i.by, %i.ca                ; 2 uses
  %i.cc = icmp ugt i64 %i.cb, 3
  br i1 %i.cc, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.cd = udiv i64 %i.bz, %i.ca
  %.not192 = icmp ult i64 %i.cb, %i.cd
  br i1 %.not192, label %.critedge.i, label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

.critedge.i:                                      ; preds = %bb.e, %bb.f
  %i.ce = udiv i64 %i.bz, %i.by
  br label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit: ; preds = %bb.d, %bb.f, %.critedge.i
  %.1 = phi i1 [ true, %bb.f ], [ false, %.critedge.i ], [ true, %bb.d ] ; 10 uses
  %.1.i = phi i64 [ %i.ca, %bb.f ], [ %i.ce, %.critedge.i ], [ %i.bx, %bb.d ] ; 14 uses
  %i.cf = and i64 %.0130204, 1
  %i.cg = icmp eq i64 %i.cf, 0                    ; 9 uses
  %i.ch = urem i64 %i.e, %i.bz                    ; 2 uses
  %.not.i145 = icmp ugt i64 %i.ch, %.0205
  %i.ci = select i1 %.not.i145, i64 0, i64 %i.ch  ; 6 uses
  %spec.select15.i = sub i64 %i.e, %i.ci          ; 5 uses
  %i.cj = icmp ne i64 %.0130204, 0
  %or.cond = and i1 %i.cj, %.0131203
  %or.cond3 = select i1 %or.cond, i1 %.0134200, i1 false
  br i1 %or.cond3, label %bb.g, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit

bb.g:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %.not = xor i1 %i.cg, true
  %or.cond5 = and i1 %.1, %.not
  br i1 %or.cond5, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ck = sub i64 0, %.0132202
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ck ; 4 uses
  %.not8.i.i146 = icmp eq i64 %.0133201, 0        ; 2 uses
  br i1 %or.cond187, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %.not8.i.i146, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit, label %.lr.ph.i.preheader.i148

.lr.ph.i.preheader.i148:                          ; preds = %bb.i
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0133201 ; 2 uses
  %.idx13.i = shl i64 %.0133201, 3                ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.idx13.i ; 2 uses
  %i.co = add i64 %.idx13.i, -8                   ; 2 uses
  %i.cp = lshr exact i64 %i.co, 3
  %i.cq = add nuw nsw i64 %i.cp, 1
  %xtraiter528 = and i64 %i.cq, 3                 ; 2 uses
  %lcmp.mod529.not = icmp eq i64 %xtraiter528, 0
  br i1 %lcmp.mod529.not, label %.lr.ph.i.i149.prol.loopexit, label %.lr.ph.i.i149.prol

.lr.ph.i.i149.prol:                               ; preds = %.lr.ph.i.preheader.i148, %.lr.ph.i.i149.prol
  %.010.i.i150.prol = phi ptr [ %i.cs, %.lr.ph.i.i149.prol ], [ %i.cm, %.lr.ph.i.preheader.i148 ] ; 2 uses
  %.079.i.i151.prol = phi ptr [ %i.cr, %.lr.ph.i.i149.prol ], [ %i.cn, %.lr.ph.i.preheader.i148 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i149.prol ], [ 0, %.lr.ph.i.preheader.i148 ]
  %i.cr = getelementptr inbounds i8, ptr %.079.i.i151.prol, i64 -8 ; 3 uses
  %i.cs = getelementptr inbounds i8, ptr %.010.i.i150.prol, i64 -8 ; 3 uses
  %i.ct = load i32, ptr %i.cr, align 4, !tbaa !337
  store i32 %i.ct, ptr %i.cs, align 4, !tbaa !346
  %i.cu = getelementptr inbounds i8, ptr %.079.i.i151.prol, i64 -4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !337
  %i.cw = getelementptr inbounds i8, ptr %.010.i.i150.prol, i64 -4
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !347
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter528
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i149.prol.loopexit, label %.lr.ph.i.i149.prol, !llvm.loop !2935

.lr.ph.i.i149.prol.loopexit:                      ; preds = %.lr.ph.i.i149.prol, %.lr.ph.i.preheader.i148
  %.010.i.i150.unr = phi ptr [ %i.cm, %.lr.ph.i.preheader.i148 ], [ %i.cs, %.lr.ph.i.i149.prol ]
  %.079.i.i151.unr = phi ptr [ %i.cn, %.lr.ph.i.preheader.i148 ], [ %i.cr, %.lr.ph.i.i149.prol ]
  %i.cx = icmp ult i64 %i.co, 24
  br i1 %i.cx, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit, label %.lr.ph.i.i149

.lr.ph.i.i149:                                    ; preds = %.lr.ph.i.i149.prol.loopexit, %.lr.ph.i.i149
  %.010.i.i150 = phi ptr [ %i.dr, %.lr.ph.i.i149 ], [ %.010.i.i150.unr, %.lr.ph.i.i149.prol.loopexit ] ; 8 uses
  %.079.i.i151 = phi ptr [ %i.dq, %.lr.ph.i.i149 ], [ %.079.i.i151.unr, %.lr.ph.i.i149.prol.loopexit ] ; 8 uses
  %i.cy = getelementptr inbounds i8, ptr %.079.i.i151, i64 -8
  %i.cz = getelementptr inbounds i8, ptr %.010.i.i150, i64 -8
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !337
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !346
  %i.db = getelementptr inbounds i8, ptr %.079.i.i151, i64 -4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !337
  %i.dd = getelementptr inbounds i8, ptr %.010.i.i150, i64 -4
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !347
  %i.de = getelementptr inbounds i8, ptr %.079.i.i151, i64 -16
  %i.df = getelementptr inbounds i8, ptr %.010.i.i150, i64 -16
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !337
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !346
  %i.dh = getelementptr inbounds i8, ptr %.079.i.i151, i64 -12
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !337
  %i.dj = getelementptr inbounds i8, ptr %.010.i.i150, i64 -12
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !347
  %i.dk = getelementptr inbounds i8, ptr %.079.i.i151, i64 -24
  %i.dl = getelementptr inbounds i8, ptr %.010.i.i150, i64 -24
  %i.dm = load i32, ptr %i.dk, align 4, !tbaa !337
  store i32 %i.dm, ptr %i.dl, align 4, !tbaa !346
  %i.dn = getelementptr inbounds i8, ptr %.079.i.i151, i64 -20
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !337
  %i.dp = getelementptr inbounds i8, ptr %.010.i.i150, i64 -20
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !347
  %i.dq = getelementptr inbounds i8, ptr %.079.i.i151, i64 -32 ; 3 uses
  %i.dr = getelementptr inbounds i8, ptr %.010.i.i150, i64 -32 ; 2 uses
  %i.ds = load i32, ptr %i.dq, align 4, !tbaa !337
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !346
  %i.dt = getelementptr inbounds i8, ptr %.079.i.i151, i64 -28
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !337
  %i.dv = getelementptr inbounds i8, ptr %.010.i.i150, i64 -28
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !347
  %.not.i.i152.3 = icmp eq ptr %i.cl, %i.dq
  br i1 %.not.i.i152.3, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit, label %.lr.ph.i.i149, !llvm.loop !32

bb.j:                                             ; preds = %bb.h
  br i1 %.not8.i.i146, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit, label %.lr.ph.i10.preheader.i

.lr.ph.i10.preheader.i:                           ; preds = %bb.j
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0133201 ; 3 uses
  %.idx.i147 = shl i64 %.0133201, 3               ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.idx.i147 ; 3 uses
  %i.dy = add i64 %.idx.i147, -8                  ; 2 uses
  %i.dz = and i64 %i.dy, 8
  %lcmp.mod.not.not = icmp eq i64 %i.dz, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i10.i.prol, label %.lr.ph.i10.i.prol.loopexit

.lr.ph.i10.i.prol:                                ; preds = %.lr.ph.i10.preheader.i
  %i.ea = getelementptr inbounds i8, ptr %i.dx, i64 -8 ; 3 uses
  %i.eb = getelementptr inbounds i8, ptr %i.dw, i64 -8 ; 3 uses
  %i.ec = load i32, ptr %i.ea, align 4, !tbaa !337
  %i.ed = load i32, ptr %i.eb, align 4, !tbaa !337
  store i32 %i.ed, ptr %i.ea, align 4, !tbaa !337
  store i32 %i.ec, ptr %i.eb, align 4, !tbaa !337
  %i.ee = getelementptr inbounds i8, ptr %i.dx, i64 -4 ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %i.dw, i64 -4 ; 2 uses
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !337
  %i.eh = load i32, ptr %i.ef, align 4, !tbaa !337
  store i32 %i.eh, ptr %i.ee, align 4, !tbaa !337
  store i32 %i.eg, ptr %i.ef, align 4, !tbaa !337
  br label %.lr.ph.i10.i.prol.loopexit

.lr.ph.i10.i.prol.loopexit:                       ; preds = %.lr.ph.i10.i.prol, %.lr.ph.i10.preheader.i
  %.08.i.i.unr = phi ptr [ %i.dw, %.lr.ph.i10.preheader.i ], [ %i.eb, %.lr.ph.i10.i.prol ]
  %.057.i.i.unr = phi ptr [ %i.dx, %.lr.ph.i10.preheader.i ], [ %i.ea, %.lr.ph.i10.i.prol ]
  %i.ei = icmp eq i64 %i.dy, 0
  br i1 %i.ei, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %.lr.ph.i10.i.prol.loopexit, %.lr.ph.i10.i
  %.08.i.i = phi ptr [ %i.es, %.lr.ph.i10.i ], [ %.08.i.i.unr, %.lr.ph.i10.i.prol.loopexit ] ; 4 uses
  %.057.i.i = phi ptr [ %i.er, %.lr.ph.i10.i ], [ %.057.i.i.unr, %.lr.ph.i10.i.prol.loopexit ] ; 4 uses
  %i.ej = getelementptr inbounds i8, ptr %.057.i.i, i64 -8 ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %.08.i.i, i64 -8 ; 2 uses
  %i.el = load i32, ptr %i.ej, align 4, !tbaa !337
  %i.em = load i32, ptr %i.ek, align 4, !tbaa !337
  store i32 %i.em, ptr %i.ej, align 4, !tbaa !337
  store i32 %i.el, ptr %i.ek, align 4, !tbaa !337
  %i.en = getelementptr inbounds i8, ptr %.057.i.i, i64 -4 ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %.08.i.i, i64 -4 ; 2 uses
  %i.ep = load i32, ptr %i.en, align 4, !tbaa !337
  %i.eq = load i32, ptr %i.eo, align 4, !tbaa !337
  store i32 %i.eq, ptr %i.en, align 4, !tbaa !337
  store i32 %i.ep, ptr %i.eo, align 4, !tbaa !337
  %i.er = getelementptr inbounds i8, ptr %.057.i.i, i64 -16 ; 4 uses
  %i.es = getelementptr inbounds i8, ptr %.08.i.i, i64 -16 ; 3 uses
  %i.et = load i32, ptr %i.er, align 4, !tbaa !337
  %i.eu = load i32, ptr %i.es, align 4, !tbaa !337
  store i32 %i.eu, ptr %i.er, align 4, !tbaa !337
  store i32 %i.et, ptr %i.es, align 4, !tbaa !337
  %i.ev = getelementptr inbounds i8, ptr %.057.i.i, i64 -12 ; 2 uses
  %i.ew = getelementptr inbounds i8, ptr %.08.i.i, i64 -12 ; 2 uses
  %i.ex = load i32, ptr %i.ev, align 4, !tbaa !337
  %i.ey = load i32, ptr %i.ew, align 4, !tbaa !337
  store i32 %i.ey, ptr %i.ev, align 4, !tbaa !337
  store i32 %i.ex, ptr %i.ew, align 4, !tbaa !337
  %.not.i11.i.1 = icmp eq ptr %i.cl, %i.er
  br i1 %.not.i11.i.1, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit, label %.lr.ph.i10.i, !llvm.loop !40

bb.k:                                             ; preds = %bb.g
  %i.ez = getelementptr [8 x i8], ptr %i.d, i64 %.0133201 ; 18 uses
  %i.fa = sub i64 0, %.1.i
  %i.fb = getelementptr [8 x i8], ptr %i.ez, i64 %i.fa ; 16 uses
  %i.fc = icmp ugt i64 %.0133201, %spec.select15.i
  br i1 %i.fc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.fd = sub nuw i64 %.0133201, %spec.select15.i ; 2 uses
  %i.fe = sub i64 0, %i.fd
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.fe ; 3 uses
  %.idx13.i161 = shl nuw nsw i64 %i.fd, 3
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.idx13.i161 ; 2 uses
  br i1 %or.cond187, label %.lr.ph.i.i162, label %.lr.ph.i10.i156

.lr.ph.i.i162:                                    ; preds = %bb.l, %.lr.ph.i.i162
  %.010.i.i163 = phi ptr [ %i.fi, %.lr.ph.i.i162 ], [ %i.ez, %bb.l ] ; 2 uses
  %.079.i.i164 = phi ptr [ %i.fh, %.lr.ph.i.i162 ], [ %i.fg, %bb.l ] ; 2 uses
  %i.fh = getelementptr inbounds i8, ptr %.079.i.i164, i64 -8 ; 3 uses
  %i.fi = getelementptr inbounds i8, ptr %.010.i.i163, i64 -8 ; 2 uses
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !337
  store i32 %i.fj, ptr %i.fi, align 4, !tbaa !346
  %i.fk = getelementptr inbounds i8, ptr %.079.i.i164, i64 -4
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !337
  %i.fm = getelementptr inbounds i8, ptr %.010.i.i163, i64 -4
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !347
  %.not.i.i165 = icmp eq ptr %i.ff, %i.fh
  br i1 %.not.i.i165, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit, label %.lr.ph.i.i162, !llvm.loop !32

.lr.ph.i10.i156:                                  ; preds = %bb.l, %.lr.ph.i10.i156
  %.08.i.i157 = phi ptr [ %i.fo, %.lr.ph.i10.i156 ], [ %i.ez, %bb.l ] ; 2 uses
  %.057.i.i158 = phi ptr [ %i.fn, %.lr.ph.i10.i156 ], [ %i.fg, %bb.l ] ; 2 uses
  %i.fn = getelementptr inbounds i8, ptr %.057.i.i158, i64 -8 ; 4 uses
  %i.fo = getelementptr inbounds i8, ptr %.08.i.i157, i64 -8 ; 3 uses
  %i.fp = load i32, ptr %i.fn, align 4, !tbaa !337
  %i.fq = load i32, ptr %i.fo, align 4, !tbaa !337
  store i32 %i.fq, ptr %i.fn, align 4, !tbaa !337
  store i32 %i.fp, ptr %i.fo, align 4, !tbaa !337
  %i.fr = getelementptr inbounds i8, ptr %.057.i.i158, i64 -4 ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %.08.i.i157, i64 -4 ; 2 uses
  %i.ft = load i32, ptr %i.fr, align 4, !tbaa !337
  %i.fu = load i32, ptr %i.fs, align 4, !tbaa !337
  store i32 %i.fu, ptr %i.fr, align 4, !tbaa !337
  store i32 %i.ft, ptr %i.fs, align 4, !tbaa !337
  %.not.i11.i159 = icmp eq ptr %i.ff, %i.fn
  br i1 %.not.i11.i159, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit, label %.lr.ph.i10.i156, !llvm.loop !40

bb.m:                                             ; preds = %bb.k
  %i.fv = icmp ult i64 %.0133201, %spec.select15.i
  br i1 %i.fv, label %bb.n, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit

bb.n:                                             ; preds = %bb.m
  %i.fw = sub nuw i64 %spec.select15.i, %.0133201
  %.idx14.i = shl i64 %i.fw, 3
  %i.fx = getelementptr i8, ptr %i.ez, i64 %.idx14.i ; 7 uses
  %i.fy = add i64 %i.ci, %.0133201
  %i.fz = add i64 %i.fy, %i.c
  %i.ga = shl i64 %i.fz, 3
  %i.gb = sub i64 %9, %i.ga                       ; 3 uses
  %i.gc = lshr exact i64 %i.gb, 3
  %i.gd = add nuw nsw i64 %i.gc, 1                ; 4 uses
  br i1 %or.cond187, label %.lr.ph.i.i168.preheader, label %.lr.ph.i9.i.preheader

.lr.ph.i9.i.preheader:                            ; preds = %bb.n
  %min.iters.check407 = icmp ult i64 %i.gb, 136
  br i1 %min.iters.check407, label %.lr.ph.i9.i.preheader520, label %vector.memcheck408

vector.memcheck408:                               ; preds = %.lr.ph.i9.i.preheader
  %10 = shl i64 %i.ci, 3
  %11 = sub i64 %8, %10
  %i.ge = getelementptr i8, ptr %2, i64 %11       ; 3 uses
  %i.gf = add i64 %i.ci, %.1.i
  %12 = shl i64 %i.gf, 3                          ; 2 uses
  %13 = sub i64 %8, %12
  %i.gg = getelementptr i8, ptr %2, i64 %13       ; 3 uses
  %i.gh = shl i64 %.0133201, 3
  %i.gi = getelementptr i8, ptr %i.br, i64 %i.gh  ; 3 uses
  %i.gj = sub i64 %.0133201, %.1.i
  %i.gk = shl i64 %i.gj, 3
  %i.gl = getelementptr i8, ptr %i.bs, i64 %i.gk  ; 3 uses
  %14 = sub i64 %i.bo, %12
  %i.gm = getelementptr i8, ptr %2, i64 %14       ; 3 uses
  %bound0409 = icmp ult ptr %i.ez, %i.gg
  %bound1410 = icmp ult ptr %i.fb, %i.ge
  %found.conflict411 = and i1 %bound0409, %bound1410
  %bound0412 = icmp ult ptr %i.ez, %i.fx
  %bound1413 = icmp ult ptr %i.gi, %i.ge
  %found.conflict414 = and i1 %bound0412, %bound1413
  %conflict.rdx415 = or i1 %found.conflict411, %found.conflict414
  %bound0416 = icmp ult ptr %i.ez, %i.gm
  %bound1417 = icmp ult ptr %i.gl, %i.ge
  %found.conflict418 = and i1 %bound0416, %bound1417
  %conflict.rdx419 = or i1 %conflict.rdx415, %found.conflict418
  %bound0420 = icmp ult ptr %i.fb, %i.fx
  %bound1421 = icmp ult ptr %i.gi, %i.gg
  %found.conflict422 = and i1 %bound0420, %bound1421
  %conflict.rdx423 = or i1 %conflict.rdx419, %found.conflict422
  %bound0424 = icmp ult ptr %i.fb, %i.gm
  %bound1425 = icmp ult ptr %i.gl, %i.gg
  %found.conflict426 = and i1 %bound0424, %bound1425
  %conflict.rdx427 = or i1 %conflict.rdx423, %found.conflict426
  %bound0428 = icmp ult ptr %i.gi, %i.gm
  %bound1429 = icmp ult ptr %i.gl, %i.fx
  %found.conflict430 = and i1 %bound0428, %bound1429
  %conflict.rdx431 = or i1 %conflict.rdx427, %found.conflict430
  br i1 %conflict.rdx431, label %.lr.ph.i9.i.preheader520, label %vector.ph432

vector.ph432:                                     ; preds = %vector.memcheck408
  %n.vec433 = and i64 %i.gd, 4611686018427387902  ; 3 uses
  %i.gn = shl i64 %n.vec433, 3                    ; 2 uses
  %i.go = getelementptr i8, ptr %i.fb, i64 %i.gn
  %i.gp = getelementptr i8, ptr %i.ez, i64 %i.gn
  br label %vector.body434

vector.body434:                                   ; preds = %vector.body434, %vector.ph432
  %index435 = phi i64 [ 0, %vector.ph432 ], [ %index.next446, %vector.body434 ] ; 2 uses
  %i.gq = shl i64 %index435, 3                    ; 2 uses
  %next.gep436 = getelementptr i8, ptr %i.fb, i64 %i.gq ; 2 uses
  %next.gep437 = getelementptr i8, ptr %i.ez, i64 %i.gq ; 2 uses
  %wide.vec438 = load <4 x i32>, ptr %next.gep437, align 4, !tbaa !337
  %wide.vec441 = load <4 x i32>, ptr %next.gep436, align 4, !tbaa !337
  store <4 x i32> %wide.vec441, ptr %next.gep437, align 4, !tbaa !337
  store <4 x i32> %wide.vec438, ptr %next.gep436, align 4, !tbaa !337
  %index.next446 = add nuw i64 %index435, 2       ; 2 uses
  %i.gr = icmp eq i64 %index.next446, %n.vec433
  br i1 %i.gr, label %middle.block447, label %vector.body434, !llvm.loop !2936

middle.block447:                                  ; preds = %vector.body434
  %cmp.n448 = icmp eq i64 %i.gd, %n.vec433
  br i1 %cmp.n448, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit, label %.lr.ph.i9.i.preheader520

.lr.ph.i9.i.preheader520:                         ; preds = %vector.memcheck408, %.lr.ph.i9.i.preheader, %middle.block447
  %.010.i10.i.ph = phi ptr [ %i.fb, %vector.memcheck408 ], [ %i.fb, %.lr.ph.i9.i.preheader ], [ %i.go, %middle.block447 ]
  %.079.i11.i.ph = phi ptr [ %i.ez, %vector.memcheck408 ], [ %i.ez, %.lr.ph.i9.i.preheader ], [ %i.gp, %middle.block447 ]
  br label %.lr.ph.i9.i

.lr.ph.i.i168.preheader:                          ; preds = %bb.n
  %min.iters.check332 = icmp ult i64 %i.gb, 200
  br i1 %min.iters.check332, label %.lr.ph.i.i168.preheader518, label %vector.memcheck333

vector.memcheck333:                               ; preds = %.lr.ph.i.i168.preheader
  %i.gs = add i64 %i.ci, %.1.i
  %15 = shl i64 %i.gs, 3                          ; 2 uses
  %16 = sub i64 %8, %15
  %i.gt = getelementptr i8, ptr %2, i64 %16       ; 3 uses
  %i.gu = shl i64 %.0133201, 3
  %i.gv = sub i64 %.0133201, %.1.i
  %i.gw = shl i64 %i.gv, 3
  %i.gx = getelementptr i8, ptr %i.bt, i64 %i.gw  ; 3 uses
  %17 = sub i64 %i.bo, %15
  %i.gy = getelementptr i8, ptr %2, i64 %17       ; 3 uses
  %18 = shl i64 %i.ci, 3
  %19 = sub i64 %8, %18
  %i.gz = getelementptr i8, ptr %2, i64 %19       ; 2 uses
  %i.ha = getelementptr i8, ptr %i.bu, i64 %i.gu  ; 2 uses
  %bound0334 = icmp ult ptr %i.fb, %i.gy
  %bound1335 = icmp ult ptr %i.gx, %i.gt
  %found.conflict336 = and i1 %bound0334, %bound1335
  %bound0337 = icmp ult ptr %i.fb, %i.gz
  %bound1338 = icmp ult ptr %i.ez, %i.gt
  %found.conflict339 = and i1 %bound0337, %bound1338
  %conflict.rdx = or i1 %found.conflict336, %found.conflict339
  %bound0340 = icmp ult ptr %i.fb, %i.fx
  %bound1341 = icmp ult ptr %i.ha, %i.gt
  %found.conflict342 = and i1 %bound0340, %bound1341
  %conflict.rdx343 = or i1 %conflict.rdx, %found.conflict342
  %bound0344 = icmp ult ptr %i.gx, %i.gz
  %bound1345 = icmp ult ptr %i.ez, %i.gy
  %found.conflict346 = and i1 %bound0344, %bound1345
  %conflict.rdx347 = or i1 %conflict.rdx343, %found.conflict346
  %bound0348 = icmp ult ptr %i.gx, %i.fx
  %bound1349 = icmp ult ptr %i.ha, %i.gy
  %found.conflict350 = and i1 %bound0348, %bound1349
  %conflict.rdx351 = or i1 %conflict.rdx347, %found.conflict350
  br i1 %conflict.rdx351, label %.lr.ph.i.i168.preheader518, label %vector.ph352

vector.ph352:                                     ; preds = %vector.memcheck333
  %n.vec353 = and i64 %i.gd, 4611686018427387900  ; 3 uses
  %i.hb = shl i64 %n.vec353, 3                    ; 2 uses
  %i.hc = getelementptr i8, ptr %i.fb, i64 %i.hb
  %i.hd = getelementptr i8, ptr %i.ez, i64 %i.hb
  br label %vector.body354

vector.body354:                                   ; preds = %vector.body354, %vector.ph352
  %index355 = phi i64 [ 0, %vector.ph352 ], [ %index.next368, %vector.body354 ] ; 2 uses
  %i.he = shl i64 %index355, 3                    ; 3 uses
  %i.hf = or disjoint i64 %i.he, 16               ; 2 uses
  %next.gep356 = getelementptr i8, ptr %i.fb, i64 %i.he
  %next.gep357 = getelementptr i8, ptr %i.fb, i64 %i.hf
  %next.gep358 = getelementptr i8, ptr %i.ez, i64 %i.he
  %next.gep359 = getelementptr i8, ptr %i.ez, i64 %i.hf
  %wide.vec360 = load <4 x i32>, ptr %next.gep358, align 4, !tbaa !337
  %wide.vec363 = load <4 x i32>, ptr %next.gep359, align 4, !tbaa !337
  store <4 x i32> %wide.vec360, ptr %next.gep356, align 4, !tbaa !337
  store <4 x i32> %wide.vec363, ptr %next.gep357, align 4, !tbaa !337
  %index.next368 = add nuw i64 %index355, 4       ; 2 uses
  %i.hg = icmp eq i64 %index.next368, %n.vec353
  br i1 %i.hg, label %middle.block369, label %vector.body354, !llvm.loop !2937

middle.block369:                                  ; preds = %vector.body354
  %cmp.n370 = icmp eq i64 %i.gd, %n.vec353
  br i1 %cmp.n370, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit, label %.lr.ph.i.i168.preheader518

.lr.ph.i.i168.preheader518:                       ; preds = %vector.memcheck333, %.lr.ph.i.i168.preheader, %middle.block369
  %.010.i.i169.ph = phi ptr [ %i.fb, %vector.memcheck333 ], [ %i.fb, %.lr.ph.i.i168.preheader ], [ %i.hc, %middle.block369 ]
  %.079.i.i170.ph = phi ptr [ %i.ez, %vector.memcheck333 ], [ %i.ez, %.lr.ph.i.i168.preheader ], [ %i.hd, %middle.block369 ]
  br label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.preheader518, %.lr.ph.i.i168
  %.010.i.i169 = phi ptr [ %i.hm, %.lr.ph.i.i168 ], [ %.010.i.i169.ph, %.lr.ph.i.i168.preheader518 ] ; 3 uses
  %.079.i.i170 = phi ptr [ %i.hl, %.lr.ph.i.i168 ], [ %.079.i.i170.ph, %.lr.ph.i.i168.preheader518 ] ; 3 uses
  %i.hh = load i32, ptr %.079.i.i170, align 4, !tbaa !337
  store i32 %i.hh, ptr %.010.i.i169, align 4, !tbaa !346
  %i.hi = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 4
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !337
  %i.hk = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 4
  store i32 %i.hj, ptr %i.hk, align 4, !tbaa !347
  %i.hl = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 8 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 8
  %.not.i.i171 = icmp eq ptr %i.hl, %i.fx
  br i1 %.not.i.i171, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit, label %.lr.ph.i.i168, !llvm.loop !2938

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.preheader520, %.lr.ph.i9.i
  %.010.i10.i = phi ptr [ %i.hu, %.lr.ph.i9.i ], [ %.010.i10.i.ph, %.lr.ph.i9.i.preheader520 ] ; 4 uses
  %.079.i11.i = phi ptr [ %i.ht, %.lr.ph.i9.i ], [ %.079.i11.i.ph, %.lr.ph.i9.i.preheader520 ] ; 4 uses
  %i.hn = load i32, ptr %.079.i11.i, align 4, !tbaa !337
  %i.ho = load i32, ptr %.010.i10.i, align 4, !tbaa !337
  store i32 %i.ho, ptr %.079.i11.i, align 4, !tbaa !337
  store i32 %i.hn, ptr %.010.i10.i, align 4, !tbaa !337
  %i.hp = getelementptr inbounds nuw i8, ptr %.079.i11.i, i64 4 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.010.i10.i, i64 4 ; 2 uses
  %i.hr = load i32, ptr %i.hp, align 4, !tbaa !337
  %i.hs = load i32, ptr %i.hq, align 4, !tbaa !337
  store i32 %i.hs, ptr %i.hp, align 4, !tbaa !337
  store i32 %i.hr, ptr %i.hq, align 4, !tbaa !337
  %i.ht = getelementptr inbounds nuw i8, ptr %.079.i11.i, i64 8 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.010.i10.i, i64 8
  %.not.i12.i = icmp eq ptr %i.ht, %i.fx
  br i1 %.not.i12.i, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit, label %.lr.ph.i9.i, !llvm.loop !2939

_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit: ; preds = %.lr.ph.i10.i.prol.loopexit, %.lr.ph.i10.i, %.lr.ph.i.i149.prol.loopexit, %.lr.ph.i.i149, %.lr.ph.i9.i, %.lr.ph.i.i168, %.lr.ph.i10.i156, %.lr.ph.i.i162, %middle.block447, %middle.block369, %bb.j, %bb.i, %bb.m, %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %.not140 = icmp eq i64 %i.by, 0
  br i1 %.not140, label %bb.r, label %bb.o

bb.o:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit
  %i.hv = udiv i64 %i.bz, %.1.i
  %i.hw = icmp ugt i64 %i.hv, 256
  br i1 %i.hw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.not6 = xor i1 %.1, true
  %or.cond8 = select i1 %.not6, i1 true, i1 %i.cg
  %i.hx = sub i64 0, %.1.i
  %.idx142 = select i1 %or.cond8, i64 0, i64 %i.hx
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.idx142
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_NS0_13adaptive_xbufIS4_S5_mEEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_bbRT3_T2_b(ptr noundef %0, ptr noundef %i.hy, i64 noundef %i.e, i64 noundef %.0205, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond187, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.cg)
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %.not9 = xor i1 %.1, true
  %or.cond11 = select i1 %.not9, i1 true, i1 %i.cg
  %i.hz = sub i64 0, %.1.i
  %.idx141 = select i1 %or.cond11, i64 0, i64 %i.hz
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.idx141
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_13adaptive_xbufIS6_S7_mEEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_bbRT3_T2_b(ptr noundef nonnull %i.b, ptr noundef %i.ia, i64 noundef %i.e, i64 noundef %.0205, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond187, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.s

bb.r:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit
  %i.ib = load i64, ptr %i.bn, align 8, !tbaa !372
  %i.ic = load ptr, ptr %6, align 8, !tbaa !371
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.ib
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = add i64 %i.ie, 7
  %i.ig = and i64 %i.if, -8
  %i.ih = inttoptr i64 %i.ig to ptr
  %.not12 = xor i1 %.1, true
  %or.cond14 = select i1 %.not12, i1 true, i1 %i.cg
  %i.ii = sub i64 0, %.1.i
  %.idx = select i1 %or.cond14, i64 0, i64 %i.ii
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.idx
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_13adaptive_xbufIS6_S7_mEEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_bbRT3_T2_b(ptr noundef %i.ih, ptr noundef %i.ij, i64 noundef %i.e, i64 noundef %.0205, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond187, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.cg)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %i.ik = add i64 %.0130204, 1
  %i.il = icmp ugt i64 %i.e, %i.bz
  br i1 %i.il, label %bb.d, label %._crit_edge, !llvm.loop !2940

bb.t:                                             ; preds = %._crit_edge
  %i.im = load ptr, ptr %6, align 8, !tbaa !371   ; 13 uses
  %i.in = load i64, ptr %5, align 8, !tbaa !367   ; 3 uses
  %.idx191 = shl i64 %i.in, 3                     ; 4 uses
  %i.io = getelementptr i8, ptr %i.im, i64 %.idx191 ; 4 uses
  %.not8.i = icmp eq i64 %i.in, 0                 ; 2 uses
  br i1 %i.bv, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  br i1 %.not8.i, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.u
  %i.ip = getelementptr [8 x i8], ptr %2, i64 %i.e ; 6 uses
  %i.iq = add i64 %.idx191, -8                    ; 2 uses
  %i.ir = lshr exact i64 %i.iq, 3
  %i.is = add nuw nsw i64 %i.ir, 1                ; 2 uses
  %min.iters.check487 = icmp ult i64 %i.iq, 104
  br i1 %min.iters.check487, label %.lr.ph.i.preheader514, label %vector.memcheck488

vector.memcheck488:                               ; preds = %.lr.ph.i.preheader
  %.idx191513 = add i64 %i.in, %3
  %i.it = sub i64 %.idx191513, %i.c
  %i.iu = shl i64 %i.it, 3
  %i.iv = getelementptr i8, ptr %2, i64 %i.iu
  %bound0489 = icmp ult ptr %i.ip, %i.io
  %bound1490 = icmp ult ptr %i.im, %i.iv
  %found.conflict491 = and i1 %bound0489, %bound1490
  br i1 %found.conflict491, label %.lr.ph.i.preheader514, label %vector.ph492

vector.ph492:                                     ; preds = %vector.memcheck488
  %n.vec493 = and i64 %i.is, 4611686018427387900  ; 3 uses
  %i.iw = shl i64 %n.vec493, 3                    ; 2 uses
  %i.ix = getelementptr i8, ptr %i.ip, i64 %i.iw
  %i.iy = getelementptr i8, ptr %i.im, i64 %i.iw
  br label %vector.body494

vector.body494:                                   ; preds = %vector.body494, %vector.ph492
  %index495 = phi i64 [ 0, %vector.ph492 ], [ %index.next508, %vector.body494 ] ; 2 uses
  %i.iz = shl i64 %index495, 3                    ; 3 uses
  %i.ja = or disjoint i64 %i.iz, 16               ; 2 uses
  %next.gep496 = getelementptr i8, ptr %i.ip, i64 %i.iz
  %next.gep497 = getelementptr i8, ptr %i.ip, i64 %i.ja
  %next.gep498 = getelementptr i8, ptr %i.im, i64 %i.iz
  %next.gep499 = getelementptr i8, ptr %i.im, i64 %i.ja
  %wide.vec500 = load <4 x i32>, ptr %next.gep498, align 4, !tbaa !337, !alias.scope !2955
  %wide.vec503 = load <4 x i32>, ptr %next.gep499, align 4, !tbaa !337, !alias.scope !2955
  store <4 x i32> %wide.vec500, ptr %next.gep496, align 4, !tbaa !337, !alias.scope !2956, !noalias !2955
  store <4 x i32> %wide.vec503, ptr %next.gep497, align 4, !tbaa !337, !alias.scope !2956, !noalias !2955
  %index.next508 = add nuw i64 %index495, 4       ; 2 uses
  %i.jb = icmp eq i64 %index.next508, %n.vec493
  br i1 %i.jb, label %middle.block509, label %vector.body494, !llvm.loop !2944

middle.block509:                                  ; preds = %vector.body494
  %cmp.n510 = icmp eq i64 %i.is, %n.vec493
  br i1 %cmp.n510, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i.preheader514

.lr.ph.i.preheader514:                            ; preds = %vector.memcheck488, %.lr.ph.i.preheader, %middle.block509
  %.010.i.ph = phi ptr [ %i.ip, %vector.memcheck488 ], [ %i.ip, %.lr.ph.i.preheader ], [ %i.ix, %middle.block509 ]
  %.079.i.ph = phi ptr [ %i.im, %vector.memcheck488 ], [ %i.im, %.lr.ph.i.preheader ], [ %i.iy, %middle.block509 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader514, %.lr.ph.i
  %.010.i = phi ptr [ %i.jh, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader514 ] ; 3 uses
  %.079.i = phi ptr [ %i.jg, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader514 ] ; 3 uses
  %i.jc = load i32, ptr %.079.i, align 4, !tbaa !337
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib10rotate_gcdINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEET_S8_S8_S8_:bb.a
  %i.ao = and i64 %i.an, %i.i
  %i.ap = or i64 %i.am, %i.ao
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.e, label %.preheader36.i

.preheader36.i:                                   ; preds = %bb.d
  %i.ar = or i64 %i.ak, %i.i
  %i.as = and i64 %i.ar, 1
  %.not.not37.i = icmp eq i64 %i.as, 0
  br i1 %.not.not37.i, label %.lr.ph.i11, label %.preheader.i

bb.e:                                             ; preds = %bb.d
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 %i.i)
  br label %_ZN5boost7movelib3gcdImEET_S2_S2_.exit

.preheader.i:                                     ; preds = %.lr.ph.i11, %.preheader36.i
  %.030.lcssa.i = phi i64 [ %i.ak, %.preheader36.i ], [ %i.ay, %.lr.ph.i11 ] ; 3 uses
  %.029.lcssa.i = phi i64 [ %i.i, %.preheader36.i ], [ %i.az, %.lr.ph.i11 ] ; 3 uses
  %.0.lcssa.i = phi i64 [ 1, %.preheader36.i ], [ %i.ax, %.lr.ph.i11 ]
  %i.au = icmp ne i64 %.030.lcssa.i, 0
  %i.av = icmp ne i64 %.029.lcssa.i, 0
  %i.aw = and i1 %i.au, %i.av
  br i1 %i.aw, label %.lr.ph45.i, label %._crit_edge.i

.lr.ph.i11:                                       ; preds = %.preheader36.i, %.lr.ph.i11
  %.040.i = phi i64 [ %i.ax, %.lr.ph.i11 ], [ 1, %.preheader36.i ]
  %.02939.i = phi i64 [ %i.az, %.lr.ph.i11 ], [ %i.i, %.preheader36.i ]
  %.03038.i = phi i64 [ %i.ay, %.lr.ph.i11 ], [ %i.ak, %.preheader36.i ]
  %i.ax = shl i64 %.040.i, 1                      ; 2 uses
  %i.ay = lshr i64 %.03038.i, 1                   ; 3 uses
  %i.az = lshr i64 %.02939.i, 1                   ; 3 uses
  %i.ba = or i64 %i.ay, %i.az
  %i.bb = and i64 %i.ba, 1
  %.not.not.i = icmp eq i64 %i.bb, 0
  br i1 %.not.not.i, label %.lr.ph.i11, label %.preheader.i, !llvm.loop !37

.lr.ph45.i:                                       ; preds = %.preheader.i, %bb.l
  %.144.i = phi i64 [ %.2.i, %bb.l ], [ %.029.lcssa.i, %.preheader.i ] ; 7 uses
  %.13143.i = phi i64 [ %.232.i, %bb.l ], [ %.030.lcssa.i, %.preheader.i ] ; 7 uses
  %i.bc = and i64 %.13143.i, 1
  %.not.i10 = icmp eq i64 %i.bc, 0
  br i1 %.not.i10, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph45.i
  %i.bd = lshr exact i64 %.13143.i, 1
  br label %bb.l

bb.g:                                             ; preds = %.lr.ph45.i
  %i.be = and i64 %.144.i, 1
  %.not34.i = icmp eq i64 %i.be, 0
  br i1 %.not34.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bf = lshr exact i64 %.144.i, 1
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %.not35.i = icmp ult i64 %.13143.i, %.144.i
  br i1 %.not35.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = sub nuw i64 %.13143.i, %.144.i
  %i.bh = lshr exact i64 %i.bg, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bi = sub nuw i64 %.144.i, %.13143.i
  %i.bj = lshr exact i64 %i.bi, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.f
  %.232.i = phi i64 [ %i.bh, %bb.j ], [ %.13143.i, %bb.k ], [ %.13143.i, %bb.h ], [ %i.bd, %bb.f ] ; 3 uses
  %.2.i = phi i64 [ %.144.i, %bb.j ], [ %i.bj, %bb.k ], [ %i.bf, %bb.h ], [ %.144.i, %bb.f ] ; 3 uses
  %i.bk = icmp ne i64 %.232.i, 0
  %i.bl = icmp ne i64 %.2.i, 0
  %i.bm = select i1 %i.bk, i1 %i.bl, i1 false
  br i1 %i.bm, label %.lr.ph45.i, label %._crit_edge.i, !llvm.loop !38

._crit_edge.i:                                    ; preds = %bb.l, %.preheader.i
  %.131.lcssa.i = phi i64 [ %.030.lcssa.i, %.preheader.i ], [ %.232.i, %bb.l ]
  %.1.lcssa.i = phi i64 [ %.029.lcssa.i, %.preheader.i ], [ %.2.i, %bb.l ]
  %i.bn = add i64 %.1.lcssa.i, %.131.lcssa.i
  %i.bo = mul i64 %i.bn, %.0.lcssa.i
  br label %_ZN5boost7movelib3gcdImEET_S2_S2_.exit

_ZN5boost7movelib3gcdImEET_S2_S2_.exit:           ; preds = %bb.e, %._crit_edge.i
  %.033.i = phi i64 [ %i.at, %bb.e ], [ %i.bo, %._crit_edge.i ] ; 2 uses
  %.idx = shl nsw i64 %.033.i, 3
  %i.bp = getelementptr inbounds i8, ptr %i.a, i64 %.idx
  %.not42 = icmp eq i64 %.033.i, 0
  br i1 %.not42, label %_ZN5boost20adl_move_swap_rangesINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET0_T_S8_S7_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost7movelib3gcdImEET_S2_S2_.exit
  %i.bq = getelementptr inbounds i8, ptr %i.a, i64 %i.h
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.024.043 = phi ptr [ %i.a, %.lr.ph ], [ %i.ce, %bb.o ] ; 5 uses
  %i.br = load i64, ptr %.sroa.024.043, align 4
  %i.bs = getelementptr inbounds i8, ptr %.sroa.024.043, i64 %i.h
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.sroa.017.0 = phi ptr [ %.sroa.024.043, %bb.m ], [ %.sroa.014.0, %bb.n ] ; 2 uses
  %.sroa.014.0 = phi ptr [ %i.bs, %bb.m ], [ %.sroa.013.0, %bb.n ] ; 6 uses
  %i.bt = load i32, ptr %.sroa.014.0, align 4, !tbaa !337
  store i32 %i.bt, ptr %.sroa.017.0, align 4, !tbaa !346
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !337
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.017.0, i64 4
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !347
  %i.bx = ptrtoint ptr %.sroa.014.0 to i64
  %i.by = sub i64 %i.ai, %i.bx
  %i.bz = ashr exact i64 %i.by, 3                 ; 2 uses
  %i.ca = icmp ugt i64 %i.bz, %i.i
  %i.cb = getelementptr inbounds i8, ptr %.sroa.014.0, i64 %i.h
  %i.cc = sub nsw i64 0, %i.bz
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.cc
  %.sroa.013.0 = select i1 %i.ca, ptr %i.cb, ptr %i.cd ; 2 uses
  %.not38 = icmp eq ptr %.sroa.013.0, %.sroa.024.043
  br i1 %.not38, label %bb.o, label %bb.n, !llvm.loop !4703

bb.o:                                             ; preds = %bb.n
  store i64 %i.br, ptr %.sroa.014.0, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.024.043, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ce, %i.bp
  br i1 %.not, label %_ZN5boost20adl_move_swap_rangesINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET0_T_S8_S7_.exit, label %bb.m, !llvm.loop !4704

_ZN5boost20adl_move_swap_rangesINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET0_T_S8_S7_.exit.sink.split: ; preds = %bb.b, %bb.a
  %.sink = phi ptr [ %i.d, %bb.a ], [ %i.a, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !349
  br label %_ZN5boost20adl_move_swap_rangesINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET0_T_S8_S7_.exit

_ZN5boost20adl_move_swap_rangesINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET0_T_S8_S7_.exit: ; preds = %bb.o, %.lr.ph.i, %middle.block, %_ZN5boost20adl_move_swap_rangesINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET0_T_S8_S7_.exit.sink.split, %_ZN5boost7movelib3gcdImEET_S2_S2_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_NS0_7move_opES7_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7) local_unnamed_addr #2 comdat {
bb.a:
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %9 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %10 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %11 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %12 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %13 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %14 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %15 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %16 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %17 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %18 = alloca %"class.boost::container::vec_iterator", align 8 ; 7 uses
  %19 = alloca %"class.boost::container::vec_iterator", align 8 ; 6 uses
  %20 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %21 = alloca %"class.boost::movelib::reverse_iterator.66", align 8 ; 4 uses
  %22 = alloca %"class.boost::movelib::reverse_iterator.66", align 8 ; 2 uses
  %23 = alloca %"class.boost::movelib::reverse_iterator.66", align 8 ; 2 uses
  %24 = alloca %"class.boost::movelib::reverse_iterator.66", align 8 ; 2 uses
  %25 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %26 = alloca %"class.boost::movelib::reverse_iterator.66", align 8 ; 2 uses
  %i.c = add i64 %5, %4                           ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !349, !noalias !4771 ; 2 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %i.d, i64 %4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %7, ptr %i.a, align 8, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %7, ptr %i.b, align 8, !tbaa !330
  %i.f = load ptr, ptr %1, align 8, !tbaa !330    ; 9 uses
  %i.g = ptrtoaddr ptr %i.f to i64                ; 2 uses
  %i.h = getelementptr [8 x i8], ptr %i.f, i64 %3 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  store ptr %i.h, ptr %18, align 8, !tbaa !349
  %i.i = mul i64 %i.c, %2
  %i.j = getelementptr [8 x i8], ptr %i.h, i64 %i.i ; 12 uses
  %.not235 = icmp eq i64 %i.c, 0
  br i1 %.not235, label %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit93, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = icmp eq i64 %5, 0
  %i.l = select i1 %i.k, i64 0, i64 %4            ; 2 uses
  %i.m = add i64 %i.l, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.c)
  %.idx227 = shl i64 %2, 3                        ; 8 uses
  %.not68 = icmp eq i64 %6, 0
  %.not79.i = icmp eq i64 %2, 0
  %i.n = shl i64 %3, 3                            ; 2 uses
  %i.o = or disjoint i64 %i.n, 4                  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.f, i64 %i.o ; 3 uses
  %i.p = mul i64 %2, %i.c
  %i.q = add i64 %i.p, %3
  %i.r = shl i64 %i.q, 3
  %i.s = getelementptr i8, ptr %i.f, i64 %i.r
  %scevgep349 = getelementptr i8, ptr %i.s, i64 -4 ; 3 uses
  %scevgep350 = getelementptr i8, ptr %7, i64 %.idx227 ; 4 uses
  %i.t = shl i64 %3, 3                            ; 2 uses
  %i.u = add i64 %i.t, 8
  %i.v = add i64 %i.t, %i.g
  %i.w = add i64 %i.v, %.idx227
  %i.x = add i64 %i.w, -8
  %i.y = shl i64 %3, 3
  %i.z = add i64 %i.y, %i.g
  %i.aa = add i64 %i.z, %.idx227
  %i.ab = add i64 %i.aa, -8
  %i.ac = add i64 %.idx227, -8                    ; 2 uses
  %i.ad = lshr exact i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 184
  %i.af = getelementptr i8, ptr %i.f, i64 %i.n
  %i.ag = getelementptr i8, ptr %i.af, i64 -4
  %i.ah = getelementptr i8, ptr %i.f, i64 %i.o
  %bound0354 = icmp ult ptr %7, %scevgep349
  %bound1355 = icmp ult ptr %i.h, %scevgep350
  %found.conflict356 = and i1 %bound0354, %bound1355
  %stride.check = icmp slt i64 %.idx227, 0
  %i.ai = or i1 %found.conflict356, %stride.check
  %bound0358 = icmp ult ptr %7, %i.j
  %bound1359 = icmp ult ptr %scevgep, %scevgep350
  %found.conflict360 = and i1 %bound0358, %bound1359
  %invariant.op = or i1 %i.ai, %found.conflict360
  %n.vec = and i64 %i.ae, 4611686018427387902     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 3 uses
  %i.ak = getelementptr i8, ptr %7, i64 %i.aj     ; 2 uses
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.x ] ; 3 uses
  %i.al = phi ptr [ %7, %.lr.ph ], [ %i.hd, %bb.x ] ; 5 uses
  %i.am = phi ptr [ %7, %.lr.ph ], [ %i.he, %bb.x ] ; 11 uses
  %i.an = phi ptr [ %i.h, %.lr.ph ], [ %i.bl, %bb.x ] ; 9 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.hm, %bb.x ] ; 3 uses
  %.057245 = phi i64 [ %i.l, %.lr.ph ], [ %i.hk, %bb.x ] ; 4 uses
  %.058244 = phi i8 [ 1, %.lr.ph ], [ %.159, %bb.x ] ; 5 uses
  %.063243 = phi i64 [ %5, %.lr.ph ], [ %.164, %bb.x ] ; 2 uses
  %.0214242 = phi i64 [ %i.c, %.lr.ph ], [ %i.hn, %bb.x ] ; 4 uses
  %.sroa.0189.0241 = phi ptr [ %i.e, %.lr.ph ], [ %.sroa.0189.2, %bb.x ] ; 16 uses
  %.sroa.0185.0240 = phi ptr [ %i.f, %.lr.ph ], [ %.sroa.0185.1, %bb.x ] ; 11 uses
  %.sroa.0179.0239 = phi ptr [ %i.h, %.lr.ph ], [ %i.hh, %bb.x ] ; 5 uses
  %.sroa.0168.0236 = phi ptr [ %i.d, %.lr.ph ], [ %i.hi, %bb.x ] ; 16 uses
  %i.ao = ptrtoaddr ptr %i.al to i64
  %i.ap = ptrtoaddr ptr %i.am to i64
  %i.aq = icmp ult i64 %.057245, %.0
  br i1 %i.aq, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread20.i
  %.023.i = phi i64 [ %i.bf, %.thread20.i ], [ %.057245, %bb.b ] ; 4 uses
  %.01822.i = phi i64 [ %i.be, %.thread20.i ], [ 0, %bb.b ] ; 4 uses
  %i.ar = mul i64 %.01822.i, %2
  %i.as = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ar
  %i.at = mul i64 %.023.i, %2
  %i.au = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.at
  %i.av = getelementptr inbounds [8 x i8], ptr %.sroa.0168.0236, i64 %.01822.i
  %i.aw = getelementptr inbounds [8 x i8], ptr %.sroa.0168.0236, i64 %.023.i
  %i.ax = load i32, ptr %i.au, align 4, !tbaa !337 ; 2 uses
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !337 ; 2 uses
  %i.az = icmp slt i32 %i.ax, %i.ay
  br i1 %i.az, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ba = icmp slt i32 %i.ay, %i.ax
  br i1 %i.ba, label %.thread20.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = load i32, ptr %i.aw, align 4, !tbaa !337
  %i.bc = load i32, ptr %i.av, align 4, !tbaa !337
  %i.bd = icmp slt i32 %i.bb, %i.bc
  %cond.fr.i = freeze i1 %i.bd
  br i1 %cond.fr.i, label %.thread.i, label %.thread20.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread20.i

.thread20.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.be = phi i64 [ %.023.i, %.thread.i ], [ %.01822.i, %bb.d ], [ %.01822.i, %bb.c ] ; 2 uses
  %i.bf = add nuw i64 %.023.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bf, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %.lr.ph.i, !llvm.loop !91

_ZN5boost7movelib15detail_adaptive15find_next_blockINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit: ; preds = %.thread20.i, %bb.b
  %.018.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.be, %.thread20.i ] ; 8 uses
  %i.bg = add i64 %.018.lcssa.i, 2
  %i.bh = call i64 @llvm.umax.i64(i64 %.0, i64 %i.bg) ; 2 uses
  %.sroa.speculated203 = call i64 @llvm.umin.i64(i64 %i.bh, i64 %.0214242)
  %i.bi = mul i64 %.018.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bi, 3                        ; 2 uses
  %i.bj = getelementptr i8, ptr %i.an, i64 %.idx  ; 12 uses
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %2 ; 5 uses
  %i.bl = getelementptr i8, ptr %i.an, i64 %.idx227 ; 8 uses
  %i.bm = icmp eq ptr %i.am, %i.al
  %.not67 = icmp eq i64 %.063243, 0
  br i1 %.not67, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  br i1 %.not68, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = load i32, ptr %i.j, align 4, !tbaa !337
  %i.bo = load i32, ptr %i.bj, align 4, !tbaa !337
  %i.bp = icmp slt i32 %i.bn, %i.bo
  br i1 %i.bp, label %.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old70 = trunc nuw i8 %.058244 to i1
  br i1 %.old70, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %.idx228 = shl nsw i64 %.018.lcssa.i, 3
  %i.bq = getelementptr inbounds i8, ptr %.sroa.0168.0236, i64 %.idx228 ; 13 uses
  %i.br = load ptr, ptr %0, align 8, !tbaa !349, !noalias !4772
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.c
  %i.bt = icmp eq ptr %.sroa.0189.0241, %i.bs
  br i1 %i.bt, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bu = trunc nuw i8 %.058244 to i1
  br i1 %i.bu, label %bb.j, label %.thread289

.thread289:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.bv = load i32, ptr %i.bq, align 4, !tbaa !337
  %i.bw = load i32, ptr %.sroa.0189.0241, align 4, !tbaa !337
  %i.bx = icmp slt i32 %i.bv, %i.bw               ; 4 uses
  %i.by = trunc nuw i8 %.058244 to i1             ; 2 uses
  %i.bz = xor i1 %i.bx, %i.by
  br i1 %i.bz, label %bb.n, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.ca = phi i1 [ true, %._crit_edge ], [ %i.bx, %bb.i ]
  br i1 %i.bm, label %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.cb = add i64 %i.ao, -8
  %i.cc = sub i64 %i.cb, %i.ap                    ; 3 uses
  %i.cd = lshr i64 %i.cc, 3
  %i.ce = add nuw nsw i64 %i.cd, 1                ; 2 uses
  %min.iters.check400 = icmp ult i64 %i.cc, 40
  br i1 %min.iters.check400, label %.lr.ph.i.i.preheader552, label %vector.memcheck401

vector.memcheck401:                               ; preds = %.lr.ph.i.i.preheader
  %i.cf = and i64 %i.cc, -8
  %i.cg = add i64 %i.cf, 8                        ; 2 uses
  %i.ch = getelementptr i8, ptr %.sroa.0185.0240, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.am, i64 %i.cg
  %bound0402 = icmp ult ptr %.sroa.0185.0240, %i.ci
  %bound1403 = icmp ult ptr %i.am, %i.ch
  %found.conflict404 = and i1 %bound0402, %bound1403
  br i1 %found.conflict404, label %.lr.ph.i.i.preheader552, label %vector.ph405

vector.ph405:                                     ; preds = %vector.memcheck401
  %n.vec406 = and i64 %i.ce, 4611686018427387900  ; 3 uses
  %i.cj = shl i64 %n.vec406, 3                    ; 2 uses
  %i.ck = getelementptr i8, ptr %.sroa.0185.0240, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.am, i64 %i.cj
  br label %vector.body407

vector.body407:                                   ; preds = %vector.body407, %vector.ph405
  %index408 = phi i64 [ 0, %vector.ph405 ], [ %index.next421, %vector.body407 ] ; 2 uses
  %i.cm = shl i64 %index408, 3                    ; 3 uses
  %i.cn = or disjoint i64 %i.cm, 16               ; 2 uses
  %next.gep409 = getelementptr i8, ptr %.sroa.0185.0240, i64 %i.cm
  %next.gep410 = getelementptr i8, ptr %.sroa.0185.0240, i64 %i.cn
  %next.gep411 = getelementptr i8, ptr %i.am, i64 %i.cm
  %next.gep412 = getelementptr i8, ptr %i.am, i64 %i.cn
  %wide.vec413 = load <4 x i32>, ptr %next.gep411, align 4, !tbaa !337, !alias.scope !4773, !noalias !4774
  %wide.vec416 = load <4 x i32>, ptr %next.gep412, align 4, !tbaa !337, !alias.scope !4773, !noalias !4774
  store <4 x i32> %wide.vec413, ptr %next.gep409, align 4, !tbaa !337, !alias.scope !4775, !noalias !4774
  store <4 x i32> %wide.vec416, ptr %next.gep410, align 4, !tbaa !337, !alias.scope !4775, !noalias !4774
  %index.next421 = add nuw i64 %index408, 4       ; 2 uses
  %i.co = icmp eq i64 %index.next421, %n.vec406
  br i1 %i.co, label %middle.block422, label %vector.body407, !llvm.loop !4720

middle.block422:                                  ; preds = %vector.body407
  %cmp.n423 = icmp eq i64 %i.ce, %n.vec406
  br i1 %cmp.n423, label %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i.preheader552

.lr.ph.i.i.preheader552:                          ; preds = %vector.memcheck401, %.lr.ph.i.i.preheader, %middle.block422
  %.ph553 = phi ptr [ %.sroa.0185.0240, %vector.memcheck401 ], [ %.sroa.0185.0240, %.lr.ph.i.i.preheader ], [ %i.ck, %middle.block422 ]
  %.05.i.i.ph = phi ptr [ %i.am, %vector.memcheck401 ], [ %i.am, %.lr.ph.i.i.preheader ], [ %i.cl, %middle.block422 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader552, %.lr.ph.i.i
  %i.cp = phi ptr [ %i.cv, %.lr.ph.i.i ], [ %.ph553, %.lr.ph.i.i.preheader552 ] ; 3 uses
  %.05.i.i = phi ptr [ %i.cu, %.lr.ph.i.i ], [ %.05.i.i.ph, %.lr.ph.i.i.preheader552 ] ; 3 uses
  %i.cq = load i32, ptr %.05.i.i, align 4, !tbaa !337, !noalias !4774
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !346, !noalias !4774
  %i.cr = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 4
end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_NS0_7move_opES7_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_:bb.a

.preheader.i:                                     ; preds = %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit
  br i1 %.not79.i, label %._crit_edge.i, label %.lr.ph.i72.preheader

.lr.ph.i72.preheader:                             ; preds = %.preheader.i
  br i1 %min.iters.check, label %.lr.ph.i72.preheader550, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i72.preheader
  %i.cw = mul i64 %indvar, %.idx227               ; 2 uses
  %i.cx = shl i64 %.018.lcssa.i, 3
  %i.cy = add i64 %i.cx, 8
  %i.cz = mul i64 %2, %i.cy
  %i.da = getelementptr i8, ptr %i.ag, i64 %i.cw
  %i.db = getelementptr i8, ptr %i.da, i64 %i.cz  ; 4 uses
  %i.dc = getelementptr i8, ptr %i.ah, i64 %i.cw
  %i.dd = getelementptr i8, ptr %i.dc, i64 %.idx  ; 4 uses
  %bound0 = icmp ult ptr %7, %i.db
  %bound1 = icmp ult ptr %i.bj, %scevgep350
  %found.conflict = and i1 %bound0, %bound1
  %bound0351 = icmp ult ptr %7, %i.bk
  %bound1352 = icmp ult ptr %i.dd, %scevgep350
  %found.conflict353 = and i1 %bound0351, %bound1352
  %conflict.rdx = or i1 %found.conflict, %found.conflict353
  %conflict.rdx361.reass = or i1 %conflict.rdx, %invariant.op
  %bound0362 = icmp ult ptr %i.bj, %i.bk
  %bound1363 = icmp ult ptr %i.dd, %i.db
  %found.conflict364 = and i1 %bound0362, %bound1363
  %conflict.rdx365 = or i1 %conflict.rdx361.reass, %found.conflict364
  %bound0366 = icmp ult ptr %i.bj, %scevgep349
  %bound1367 = icmp ult ptr %i.h, %i.db
  %found.conflict368 = and i1 %bound0366, %bound1367
  %conflict.rdx369 = or i1 %conflict.rdx365, %found.conflict368
  %bound0370 = icmp ult ptr %i.bj, %i.j
  %bound1371 = icmp ult ptr %scevgep, %i.db
  %found.conflict372 = and i1 %bound0370, %bound1371
  %conflict.rdx373 = or i1 %conflict.rdx369, %found.conflict372
  %bound0374 = icmp ult ptr %i.dd, %scevgep349
  %bound1375 = icmp ult ptr %i.h, %i.bk
  %found.conflict376 = and i1 %bound0374, %bound1375
  %conflict.rdx377 = or i1 %conflict.rdx373, %found.conflict376
  %bound0378 = icmp ult ptr %i.dd, %i.j
  %bound1379 = icmp ult ptr %scevgep, %i.bk
  %found.conflict380 = and i1 %bound0378, %bound1379
  %conflict.rdx381 = or i1 %conflict.rdx377, %found.conflict380
  br i1 %conflict.rdx381, label %.lr.ph.i72.preheader550, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.de = getelementptr i8, ptr %i.bj, i64 %i.aj
  %i.df = getelementptr i8, ptr %i.an, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dg = shl i64 %index, 3                       ; 3 uses
  %next.gep = getelementptr i8, ptr %i.bj, i64 %i.dg ; 2 uses
  %next.gep382 = getelementptr i8, ptr %i.an, i64 %i.dg
  %next.gep383 = getelementptr i8, ptr %7, i64 %i.dg
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !337
  store <4 x i32> %wide.vec, ptr %next.gep383, align 4, !tbaa !337, !alias.scope !4776, !noalias !4777
  %wide.vec385 = load <4 x i32>, ptr %next.gep382, align 4, !tbaa !337
  store <4 x i32> %wide.vec385, ptr %next.gep, align 4, !tbaa !337
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !4728

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i72.preheader550

.lr.ph.i72.preheader550:                          ; preds = %vector.memcheck, %.lr.ph.i72.preheader, %middle.block
  %.sroa.0134.0.ph = phi ptr [ %i.bj, %vector.memcheck ], [ %i.bj, %.lr.ph.i72.preheader ], [ %i.de, %middle.block ]
  %.ph551 = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i72.preheader ], [ %i.df, %middle.block ]
  %.010.i.ph = phi ptr [ %7, %vector.memcheck ], [ %7, %.lr.ph.i72.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %.lr.ph.i72.preheader550, %.lr.ph.i72
  %.sroa.0134.0 = phi ptr [ %i.dk, %.lr.ph.i72 ], [ %.sroa.0134.0.ph, %.lr.ph.i72.preheader550 ] ; 4 uses
  %i.di = phi ptr [ %i.dj, %.lr.ph.i72 ], [ %.ph551, %.lr.ph.i72.preheader550 ] ; 3 uses
  %.010.i = phi ptr [ %i.dl, %.lr.ph.i72 ], [ %.010.i.ph, %.lr.ph.i72.preheader550 ] ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0134.0, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %.010.i, i64 8 ; 2 uses
  %i.dm = load i32, ptr %.sroa.0134.0, align 4, !tbaa !337
  store i32 %i.dm, ptr %.010.i, align 4, !tbaa !346
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0134.0, i64 4 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !337
  %i.dp = getelementptr inbounds nuw i8, ptr %.010.i, i64 4
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !347
  %i.dq = load i32, ptr %i.di, align 4, !tbaa !337
  store i32 %i.dq, ptr %.sroa.0134.0, align 4, !tbaa !346
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !337
  store i32 %i.ds, ptr %i.dn, align 4, !tbaa !347
  %.not7.i = icmp eq ptr %i.dj, %i.bl
  br i1 %.not7.i, label %._crit_edge.i, label %.lr.ph.i72, !llvm.loop !4729

._crit_edge.i:                                    ; preds = %.lr.ph.i72, %middle.block, %.preheader.i
  %.0.lcssa.i = phi ptr [ %7, %.preheader.i ], [ %i.ak, %middle.block ], [ %i.dl, %.lr.ph.i72 ] ; 2 uses
  %.not8.i = icmp eq i64 %.018.lcssa.i, 0
  br i1 %.not8.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  %i.dt = load <2 x i32>, ptr %i.bq, align 4, !tbaa !337
  %i.du = load <2 x i32>, ptr %.sroa.0168.0236, align 4, !tbaa !337
  store <2 x i32> %i.du, ptr %i.bq, align 4, !tbaa !337
  store <2 x i32> %i.dt, ptr %.sroa.0168.0236, align 4, !tbaa !337
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %i.dv = icmp eq ptr %i.bq, %.sroa.0189.0241
  br i1 %i.dv, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dw = icmp eq ptr %.sroa.0189.0241, %.sroa.0168.0236
  %spec.select = select i1 %i.dw, ptr %i.bq, ptr %.sroa.0189.0241
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit: ; preds = %bb.m, %bb.l, %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit
  %.sroa.0189.5 = phi ptr [ %.sroa.0189.0241, %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit ], [ %spec.select, %bb.m ], [ %.sroa.0168.0236, %bb.l ]
  %.1.i = phi ptr [ %7, %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit ], [ %.0.lcssa.i, %bb.m ], [ %.0.lcssa.i, %bb.l ] ; 2 uses
  store ptr %.1.i, ptr %i.b, align 8, !tbaa !330
  br label %bb.x

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  br i1 %i.by, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr %.sroa.0185.0240, ptr %9, align 8, !tbaa !349, !noalias !4778
  store ptr %.sroa.0179.0239, ptr %10, align 8, !tbaa !349, !noalias !4778
  store ptr %i.bl, ptr %11, align 8, !tbaa !349, !noalias !4778
  store ptr %i.bj, ptr %12, align 8, !tbaa !349, !noalias !4778
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %19, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_b.exit

bb.p:                                             ; preds = %.thread289, %bb.n
  %i.dx = phi i1 [ true, %.thread289 ], [ %i.bx, %bb.n ]
  store ptr %.sroa.0185.0240, ptr %13, align 8, !tbaa !349, !noalias !4778
  store ptr %.sroa.0179.0239, ptr %14, align 8, !tbaa !349, !noalias !4778
  store ptr %i.bl, ptr %15, align 8, !tbaa !349, !noalias !4778
  store ptr %i.bj, ptr %16, align 8, !tbaa !349, !noalias !4778
  store ptr %8, ptr %17, align 8, !tbaa !384, !noalias !4778
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7move_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %19, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dead_on_return %17)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_b.exit: ; preds = %bb.o, %bb.p
  %i.dy = phi i1 [ %i.bx, %bb.o ], [ %i.dx, %bb.p ]
  %i.dz = phi i1 [ true, %bb.o ], [ false, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %i.ea = load ptr, ptr %i.a, align 8, !tbaa !330 ; 4 uses
  %i.eb = load ptr, ptr %i.b, align 8, !tbaa !330 ; 4 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb                ; 2 uses
  br i1 %i.ec, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_b.exit
  store ptr %7, ptr %i.a, align 8, !tbaa !330
  %i.ed = load ptr, ptr %18, align 8, !tbaa !349  ; 10 uses
  %i.ee = ptrtoint ptr %i.bl to i64
  %i.ef = ptrtoint ptr %i.ed to i64               ; 3 uses
  %i.eg = sub i64 %i.ee, %i.ef                    ; 2 uses
  %i.eh = ashr exact i64 %i.eg, 3
  %i.ei = sub nsw i64 0, %i.eh
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.ei ; 7 uses
  %.not.i73 = icmp eq ptr %i.ed, %i.ej
  br i1 %.not.i73, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit85, label %.preheader.i74

.preheader.i74:                                   ; preds = %bb.q
  %.not79.i75 = icmp eq ptr %i.ed, %i.bl
  br i1 %.not79.i75, label %._crit_edge.i79, label %.lr.ph.i76.preheader

.lr.ph.i76.preheader:                             ; preds = %.preheader.i74
  %i.ek = mul i64 %indvar, %.idx227               ; 3 uses
  %i.el = add i64 %i.ab, %i.ek                    ; 2 uses
  %i.em = sub i64 %i.el, %i.ef                    ; 2 uses
  %i.en = lshr i64 %i.em, 3
  %i.eo = add nuw nsw i64 %i.en, 1                ; 2 uses
  %min.iters.check445 = icmp ult i64 %i.em, 72
  br i1 %min.iters.check445, label %.lr.ph.i76.preheader554, label %vector.memcheck446

vector.memcheck446:                               ; preds = %.lr.ph.i76.preheader
  %i.ep = add i64 %i.x, %i.ek
  %i.eq = sub i64 %i.ep, %i.ef
  %i.er = and i64 %i.eq, -8                       ; 2 uses
  %27 = add i64 %i.er, 8                          ; 2 uses
  %i.es = getelementptr i8, ptr %7, i64 %27       ; 2 uses
  %i.et = add i64 %i.u, %i.ek
  %i.eu = shl i64 %.018.lcssa.i, 3
  %i.ev = add i64 %i.eu, 8
  %i.ew = mul i64 %2, %i.ev
  %i.ex = add i64 %i.et, %i.ew
  %i.ey = add i64 %i.ex, %i.er
  %i.ez = sub i64 %i.ey, %i.eg
  %i.fa = getelementptr i8, ptr %i.f, i64 %i.ez   ; 2 uses
  %i.fb = getelementptr i8, ptr %i.ed, i64 %27    ; 2 uses
  %bound0447 = icmp ult ptr %7, %i.fa
  %bound1448 = icmp ult ptr %i.ej, %i.es
  %found.conflict449 = and i1 %bound0447, %bound1448
  %bound0450 = icmp ult ptr %7, %i.fb
  %bound1451 = icmp ult ptr %i.ed, %i.es
  %found.conflict452 = and i1 %bound0450, %bound1451
  %conflict.rdx453 = or i1 %found.conflict449, %found.conflict452
  %bound0454 = icmp ult ptr %i.ej, %i.fb
  %bound1455 = icmp ult ptr %i.ed, %i.fa
  %found.conflict456 = and i1 %bound0454, %bound1455
  %conflict.rdx457 = or i1 %conflict.rdx453, %found.conflict456
  br i1 %conflict.rdx457, label %.lr.ph.i76.preheader554, label %vector.ph458

vector.ph458:                                     ; preds = %vector.memcheck446
  %n.vec459 = and i64 %i.eo, 4611686018427387902  ; 3 uses
  %i.fc = shl i64 %n.vec459, 3                    ; 3 uses
  %i.fd = getelementptr i8, ptr %i.ej, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.ed, i64 %i.fc
  %i.ff = getelementptr i8, ptr %7, i64 %i.fc     ; 2 uses
  br label %vector.body460

vector.body460:                                   ; preds = %vector.body460, %vector.ph458
  %index461 = phi i64 [ 0, %vector.ph458 ], [ %index.next473, %vector.body460 ] ; 2 uses
  %i.fg = shl i64 %index461, 3                    ; 3 uses
  %next.gep462 = getelementptr i8, ptr %i.ej, i64 %i.fg ; 2 uses
  %next.gep463 = getelementptr i8, ptr %i.ed, i64 %i.fg
  %next.gep464 = getelementptr i8, ptr %7, i64 %i.fg
  %wide.vec465 = load <4 x i32>, ptr %next.gep462, align 4, !tbaa !337, !alias.scope !4779, !noalias !4780
  store <4 x i32> %wide.vec465, ptr %next.gep464, align 4, !tbaa !337, !alias.scope !4781, !noalias !4782
  %wide.vec469 = load <4 x i32>, ptr %next.gep463, align 4, !tbaa !337, !alias.scope !4780
  store <4 x i32> %wide.vec469, ptr %next.gep462, align 4, !tbaa !337, !alias.scope !4779, !noalias !4780
  %index.next473 = add nuw i64 %index461, 2       ; 2 uses
  %i.fh = icmp eq i64 %index.next473, %n.vec459
  br i1 %i.fh, label %middle.block474, label %vector.body460, !llvm.loop !4736

middle.block474:                                  ; preds = %vector.body460
  %cmp.n475 = icmp eq i64 %i.eo, %n.vec459
  br i1 %cmp.n475, label %._crit_edge.i79, label %.lr.ph.i76.preheader554

.lr.ph.i76.preheader554:                          ; preds = %vector.memcheck446, %.lr.ph.i76.preheader, %middle.block474
  %.sroa.0116.0.ph = phi ptr [ %i.ej, %vector.memcheck446 ], [ %i.ej, %.lr.ph.i76.preheader ], [ %i.fd, %middle.block474 ] ; 5 uses
  %.ph555 = phi ptr [ %i.ed, %vector.memcheck446 ], [ %i.ed, %.lr.ph.i76.preheader ], [ %i.fe, %middle.block474 ] ; 5 uses
  %.010.i77.ph = phi ptr [ %7, %vector.memcheck446 ], [ %7, %.lr.ph.i76.preheader ], [ %i.ff, %middle.block474 ] ; 4 uses
  %.ph555558 = ptrtoaddr ptr %.ph555 to i64
  %i.fi = sub i64 %i.el, %.ph555558               ; 2 uses
  %i.fj = and i64 %i.fi, 8
  %lcmp.mod.not.not = icmp eq i64 %i.fj, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i76.prol, label %.lr.ph.i76.prol.loopexit

.lr.ph.i76.prol:                                  ; preds = %.lr.ph.i76.preheader554
  %i.fk = getelementptr inbounds nuw i8, ptr %.ph555, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0116.0.ph, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %.010.i77.ph, i64 8 ; 2 uses
  %i.fn = load i32, ptr %.sroa.0116.0.ph, align 4, !tbaa !337
  store i32 %i.fn, ptr %.010.i77.ph, align 4, !tbaa !346
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0116.0.ph, i64 4 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !337
  %i.fq = getelementptr inbounds nuw i8, ptr %.010.i77.ph, i64 4
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !347
  %i.fr = load i32, ptr %.ph555, align 4, !tbaa !337
  store i32 %i.fr, ptr %.sroa.0116.0.ph, align 4, !tbaa !346
  %i.fs = getelementptr inbounds nuw i8, ptr %.ph555, i64 4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !337
  store i32 %i.ft, ptr %i.fo, align 4, !tbaa !347
  br label %.lr.ph.i76.prol.loopexit

.lr.ph.i76.prol.loopexit:                         ; preds = %.lr.ph.i76.prol, %.lr.ph.i76.preheader554
  %.lcssa556.unr = phi ptr [ poison, %.lr.ph.i76.preheader554 ], [ %i.fm, %.lr.ph.i76.prol ]
  %.sroa.0116.0.unr = phi ptr [ %.sroa.0116.0.ph, %.lr.ph.i76.preheader554 ], [ %i.fl, %.lr.ph.i76.prol ]
  %.unr = phi ptr [ %.ph555, %.lr.ph.i76.preheader554 ], [ %i.fk, %.lr.ph.i76.prol ]
  %.010.i77.unr = phi ptr [ %.010.i77.ph, %.lr.ph.i76.preheader554 ], [ %i.fm, %.lr.ph.i76.prol ]
  %i.fu = icmp ult i64 %i.fi, 8
  br i1 %i.fu, label %._crit_edge.i79, label %.lr.ph.i76

.lr.ph.i76:                                       ; preds = %.lr.ph.i76.prol.loopexit, %.lr.ph.i76
  %.sroa.0116.0 = phi ptr [ %i.gh, %.lr.ph.i76 ], [ %.sroa.0116.0.unr, %.lr.ph.i76.prol.loopexit ] ; 6 uses
  %i.fv = phi ptr [ %i.gg, %.lr.ph.i76 ], [ %.unr, %.lr.ph.i76.prol.loopexit ] ; 5 uses
  %.010.i77 = phi ptr [ %i.gi, %.lr.ph.i76 ], [ %.010.i77.unr, %.lr.ph.i76.prol.loopexit ] ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0116.0, i64 8 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.010.i77, i64 8
  %i.fz = load i32, ptr %.sroa.0116.0, align 4, !tbaa !337
  store i32 %i.fz, ptr %.010.i77, align 4, !tbaa !346
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0116.0, i64 4 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !337
  %i.gc = getelementptr inbounds nuw i8, ptr %.010.i77, i64 4
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !347
  %i.gd = load i32, ptr %i.fv, align 4, !tbaa !337
  store i32 %i.gd, ptr %.sroa.0116.0, align 4, !tbaa !346
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !337
  store i32 %i.gf, ptr %i.ga, align 4, !tbaa !347
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fv, i64 16 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0116.0, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %.010.i77, i64 16 ; 2 uses
  %i.gj = load i32, ptr %i.fx, align 4, !tbaa !337
  store i32 %i.gj, ptr %i.fy, align 4, !tbaa !346
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0116.0, i64 12 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !337
  %i.gm = getelementptr inbounds nuw i8, ptr %.010.i77, i64 12
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !347
  %i.gn = load i32, ptr %i.fw, align 4, !tbaa !337
  store i32 %i.gn, ptr %i.fx, align 4, !tbaa !346
  %i.go = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !337
  store i32 %i.gp, ptr %i.gk, align 4, !tbaa !347
  %.not7.i78.1 = icmp eq ptr %i.gg, %i.bl
  br i1 %.not7.i78.1, label %._crit_edge.i79, label %.lr.ph.i76, !llvm.loop !4737

._crit_edge.i79:                                  ; preds = %.lr.ph.i76.prol.loopexit, %.lr.ph.i76, %middle.block474, %.preheader.i74
  %.0.lcssa.i80 = phi ptr [ %7, %.preheader.i74 ], [ %i.ff, %middle.block474 ], [ %.lcssa556.unr, %.lr.ph.i76.prol.loopexit ], [ %i.gi, %.lr.ph.i76 ] ; 2 uses
  %.not8.i81 = icmp eq i64 %.018.lcssa.i, 0
  br i1 %.not8.i81, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i79
  %i.gq = load <2 x i32>, ptr %i.bq, align 4, !tbaa !337
  %i.gr = load <2 x i32>, ptr %.sroa.0168.0236, align 4, !tbaa !337
  store <2 x i32> %i.gr, ptr %i.bq, align 4, !tbaa !337
  store <2 x i32> %i.gq, ptr %.sroa.0168.0236, align 4, !tbaa !337
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i79
  %i.gs = icmp eq ptr %i.bq, %.sroa.0189.0241
  br i1 %i.gs, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit85, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gt = icmp eq ptr %.sroa.0189.0241, %.sroa.0168.0236
  %spec.select224 = select i1 %i.gt, ptr %i.bq, ptr %.sroa.0189.0241
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit85

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit85: ; preds = %bb.t, %bb.s, %bb.q
  %.sroa.0189.6 = phi ptr [ %.sroa.0189.0241, %bb.q ], [ %spec.select224, %bb.t ], [ %.sroa.0168.0236, %bb.s ]
  %.1.i82 = phi ptr [ %7, %bb.q ], [ %.0.lcssa.i80, %bb.t ], [ %.0.lcssa.i80, %bb.s ] ; 2 uses
  store ptr %.1.i82, ptr %i.b, align 8, !tbaa !330
  br label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_b.exit
  %.not.i86 = icmp eq i64 %.018.lcssa.i, 0
  br i1 %.not.i86, label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gu = load <2 x i32>, ptr %i.bq, align 4, !tbaa !337
  %i.gv = load <2 x i32>, ptr %.sroa.0168.0236, align 4, !tbaa !337
  store <2 x i32> %i.gv, ptr %i.bq, align 4, !tbaa !337
  store <2 x i32> %i.gu, ptr %.sroa.0168.0236, align 4, !tbaa !337
  %i.gw = icmp eq ptr %i.bq, %.sroa.0189.0241
  br i1 %i.gw, label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gx = icmp eq ptr %.sroa.0189.0241, %.sroa.0168.0236
  %spec.select225 = select i1 %i.gx, ptr %i.bq, ptr %.sroa.0189.0241
  br label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit

_ZN5boost7movelib15detail_adaptive10update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit: ; preds = %bb.w, %bb.u, %bb.v, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit85
  %i.gy = phi ptr [ %.1.i82, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit85 ], [ %i.eb, %bb.u ], [ %i.eb, %bb.w ], [ %i.eb, %bb.v ]
  %i.gz = phi ptr [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit85 ], [ %i.ea, %bb.u ], [ %i.ea, %bb.w ], [ %i.ea, %bb.v ]
  %.sroa.0189.1 = phi ptr [ %.sroa.0189.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit85 ], [ %.sroa.0189.0241, %bb.u ], [ %spec.select225, %bb.w ], [ %.sroa.0168.0236, %bb.v ]
  %i.ha = xor i1 %i.dz, %i.ec
  %i.hb = zext i1 %i.ha to i8
  %i.hc = load ptr, ptr %19, align 8, !tbaa !330
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit
  %i.hd = phi ptr [ %i.gy, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit ], [ %.1.i, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %i.he = phi ptr [ %i.gz, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit ], [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %i.hf = phi i1 [ %i.dy, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit ], [ %i.ca, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ]
  %.sroa.0185.1 = phi ptr [ %i.hc, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit ], [ %i.an, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %.sroa.0189.2 = phi ptr [ %.sroa.0189.1, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit ], [ %.sroa.0189.5, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %.159 = phi i8 [ %i.hb, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit ], [ %.058244, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.hf, true
  %i.hg = sext i1 %not. to i64
  %.164 = add i64 %.063243, %i.hg
  %i.hh = getelementptr inbounds [8 x i8], ptr %.sroa.0179.0239, i64 %2 ; 2 uses
  store ptr %i.bl, ptr %18, align 8, !tbaa !349
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0168.0236, i64 8
  %i.hj = icmp ne i64 %.057245, 0
  %.neg = sext i1 %i.hj to i64
  %i.hk = add i64 %.057245, %.neg
  %i.hl = icmp ne i64 %i.bh, 0
  %.neg69 = sext i1 %i.hl to i64
  %i.hm = add i64 %.sroa.speculated203, %.neg69
  %i.hn = add i64 %.0214242, -1                   ; 2 uses
  %.not = icmp eq i64 %i.hn, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !4738

.thread:                                          ; preds = %bb.x, %bb.g, %bb.f
  %i.ho = phi ptr [ %i.hd, %bb.x ], [ %i.al, %bb.g ], [ %i.al, %bb.f ] ; 3 uses
  %i.hp = phi ptr [ %i.he, %bb.x ], [ %i.am, %bb.g ], [ %i.am, %bb.f ] ; 9 uses
  %.sroa.0179.0.lcssa.ph = phi ptr [ %i.hh, %bb.x ], [ %.sroa.0179.0239, %bb.g ], [ %.sroa.0179.0239, %bb.f ] ; 4 uses
  %.sroa.0185.0.lcssa.ph = phi ptr [ %.sroa.0185.1, %bb.x ], [ %.sroa.0185.0240, %bb.g ], [ %.sroa.0185.0240, %bb.f ] ; 8 uses
  %.sroa.0189.0.lcssa.ph = phi ptr [ %.sroa.0189.2, %bb.x ], [ %.sroa.0189.0241, %bb.g ], [ %.sroa.0189.0241, %bb.f ] ; 3 uses
  %.0214.lcssa.ph = phi i64 [ 0, %bb.x ], [ %.0214242, %bb.g ], [ %.0214242, %bb.f ] ; 3 uses
  %.058.lcssa.ph = phi i8 [ %.159, %bb.x ], [ 1, %bb.g ], [ %.058244, %bb.f ]
  %i.hq = trunc nuw i8 %.058.lcssa.ph to i1
  %i.hr = select i1 %i.hq, ptr %.sroa.0185.0.lcssa.ph, ptr %.sroa.0179.0.lcssa.ph ; 3 uses
  %.not4.i.i89 = icmp eq ptr %i.hp, %i.ho
  br i1 %.not4.i.i89, label %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit93, label %.lr.ph.i.i90.preheader

.lr.ph.i.i90.preheader:                           ; preds = %.thread
  %i.hs = ptrtoaddr ptr %i.hp to i64
  %i.ht = ptrtoaddr ptr %i.ho to i64
  %i.hu = add i64 %i.ht, -8
  %i.hv = sub i64 %i.hu, %i.hs                    ; 3 uses
  %i.hw = lshr i64 %i.hv, 3
  %i.hx = add nuw nsw i64 %i.hw, 1                ; 2 uses
  %min.iters.check486 = icmp ult i64 %i.hv, 104
  br i1 %min.iters.check486, label %.lr.ph.i.i90.preheader548, label %vector.memcheck487
end_hunk_4
begin_hunk_5_@_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_:bb.a
  %next.gep192 = getelementptr i8, ptr %.sroa.059.0106, i64 %i.bp ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep192, align 4, !tbaa !337, !noalias !4909
  %wide.vec194 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !337, !noalias !4909
  store <4 x i32> %wide.vec194, ptr %next.gep192, align 4, !tbaa !337, !noalias !4909
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !337, !noalias !4909
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !4899

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader200

.lr.ph.i.i.preheader200:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.sroa.04.0.i.ph = phi ptr [ %i.av, %vector.memcheck ], [ %i.av, %.lr.ph.i.i.preheader ], [ %i.bn, %middle.block ]
  %.ph = phi ptr [ %.sroa.059.0106, %vector.memcheck ], [ %.sroa.059.0106, %.lr.ph.i.i.preheader ], [ %i.bo, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader200, %.lr.ph.i.i
  %.sroa.04.0.i = phi ptr [ %i.bz, %.lr.ph.i.i ], [ %.sroa.04.0.i.ph, %.lr.ph.i.i.preheader200 ] ; 4 uses
  %i.br = phi ptr [ %i.by, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader200 ] ; 4 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !337, !noalias !4909
  %i.bt = load i32, ptr %.sroa.04.0.i, align 4, !tbaa !337, !noalias !4909
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !337, !noalias !4909
  store i32 %i.bs, ptr %.sroa.04.0.i, align 4, !tbaa !337, !noalias !4909
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 4 ; 2 uses
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !337, !noalias !4909
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !337, !noalias !4909
  store i32 %i.bx, ptr %i.bu, align 4, !tbaa !337, !noalias !4909
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !337, !noalias !4909
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 8
  %.not.i.i = icmp eq ptr %i.by, %i.bc
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i, !llvm.loop !4900

_ZN5boost20adl_move_swap_rangesINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not9.i = icmp eq i64 %.018.lcssa.i, 0
  br i1 %.not9.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET0_T_S8_S7_.exit.i
  %i.ca = load <2 x i32>, ptr %i.ar, align 4, !tbaa !337
  %i.cb = load <2 x i32>, ptr %.sroa.070.0107, align 4, !tbaa !337
  store <2 x i32> %i.cb, ptr %i.ar, align 4, !tbaa !337
  store <2 x i32> %i.ca, ptr %.sroa.070.0107, align 4, !tbaa !337
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET0_T_S8_S7_.exit.i
  %i.cc = icmp eq ptr %i.ar, %.sroa.092.0109
  br i1 %i.cc, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EEvT_S9_RS9_T0_SB_SB_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cd = icmp eq ptr %.sroa.092.0109, %.sroa.070.0107
  %spec.select97 = select i1 %i.cd, ptr %i.ar, ptr %.sroa.092.0109
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EEvT_S9_RS9_T0_SB_SB_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EEvT_S9_RS9_T0_SB_SB_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.sroa.092.1 = phi ptr [ %.sroa.092.0109, %bb.f ], [ %spec.select97, %bb.j ], [ %.sroa.070.0107, %bb.i ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.070.0107, i64 8
  %i.cf = icmp ne i64 %.0112, 0
  %.neg = sext i1 %i.cf to i64
  %i.cg = add i64 %.0112, %.neg
  %i.ch = icmp ne i64 %i.at, 0
  %.neg36 = sext i1 %i.ch to i64
  %i.ci = add i64 %.sroa.speculated80, %.neg36
  %i.cj = add i64 %.096108, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cj, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !4901

._crit_edge121.loopexit:                          ; preds = %bb.n
  %.pre128 = load i8, ptr %i.a, align 1, !tbaa !387, !range !388
  %i.ck = trunc nuw i8 %.pre128 to i1
  %i.cl = select i1 %i.ck, ptr %i.dd, ptr %i.de
  br label %._crit_edge121

._crit_edge121:                                   ; preds = %._crit_edge.thread, %._crit_edge121.loopexit, %._crit_edge
  %.sroa.speculated = phi ptr [ %i.e, %._crit_edge ], [ %i.cl, %._crit_edge121.loopexit ], [ %i.e, %._crit_edge.thread ] ; 2 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.g, i64 %6
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %.sroa.speculated, ptr %7, align 8, !tbaa !349
  store ptr %i.g, ptr %8, align 8, !tbaa !349
  store ptr %i.cm, ptr %9, align 8, !tbaa !349
  %i.cn = ptrtoint ptr %i.g to i64
  %i.co = ptrtoint ptr %.sroa.speculated to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = ashr exact i64 %i.cp, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_(ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, i64 noundef %i.cq, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

.lr.ph120:                                        ; preds = %._crit_edge, %bb.n
  %.sroa.040.0118 = phi ptr [ %i.df, %bb.n ], [ %i.c, %._crit_edge ] ; 2 uses
  %.sroa.044.0117 = phi ptr [ %i.de, %bb.n ], [ %i.f, %._crit_edge ] ; 4 uses
  %.sroa.048.0116 = phi ptr [ %i.dd, %bb.n ], [ %i.e, %._crit_edge ]
  %i.cr = load ptr, ptr %0, align 8, !tbaa !349, !noalias !4910
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.b
  %i.ct = icmp eq ptr %.sroa.092.1, %i.cs
  br i1 %i.ct, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph120
  %i.cu = load i32, ptr %.sroa.040.0118, align 4, !tbaa !337
  %i.cv = load i32, ptr %.sroa.092.1, align 4, !tbaa !337
  %i.cw = icmp slt i32 %i.cu, %i.cv
  %i.cx = zext i1 %i.cw to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph120
  %i.cy = phi i32 [ 1, %.lr.ph120 ], [ %i.cx, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.cz = load i8, ptr %i.a, align 1, !tbaa !387, !range !388, !noundef !344
  %i.da = zext nneg i8 %i.cz to i32
  %i.db = icmp eq i32 %i.cy, %i.da
  br i1 %i.db, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %.sroa.048.0116, ptr %11, align 8, !tbaa !349
  store ptr %.sroa.044.0117, ptr %12, align 8, !tbaa !349
  %i.dc = getelementptr inbounds [8 x i8], ptr %.sroa.044.0117, i64 %2
  store ptr %i.dc, ptr %13, align 8, !tbaa !349, !alias.scope !4911
  call void @_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEET_SG_SG_SG_PbT0_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull %i.a)
  %.pre = load ptr, ptr %10, align 8, !tbaa !330
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.dd = phi ptr [ %.pre, %bb.m ], [ %.sroa.044.0117, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.de = getelementptr inbounds [8 x i8], ptr %.sroa.044.0117, i64 %2 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.040.0118, i64 8 ; 2 uses
  %.not101 = icmp eq ptr %i.df, %i.aa
  br i1 %.not101, label %._crit_edge121.loopexit, label %.lr.ph120, !llvm.loop !4906
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessENS_9container12vec_iteratorIPSt4pairIiiELb0EEENS5_3dtl23flat_tree_value_compareISt4lessIiES8_NSB_9select1stIiEEEENS0_7move_opES9_EEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_T4_(ptr noundef %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7) local_unnamed_addr #2 comdat {
bb.a:
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %9 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %10 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %11 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %12 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %13 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %14 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %15 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %16 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %17 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %18 = alloca %"class.boost::container::vec_iterator", align 8 ; 7 uses
  %19 = alloca %"class.boost::container::vec_iterator", align 8 ; 6 uses
  %20 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %21 = alloca %"class.boost::movelib::reverse_iterator.66", align 8 ; 4 uses
  %22 = alloca %"class.boost::movelib::reverse_iterator.20", align 8 ; 2 uses
  %23 = alloca %"class.boost::movelib::reverse_iterator.20", align 8 ; 2 uses
  %24 = alloca %"class.boost::movelib::reverse_iterator.66", align 8 ; 2 uses
  %25 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %26 = alloca %"class.boost::movelib::reverse_iterator.66", align 8 ; 2 uses
  %i.c = add i64 %5, %4                           ; 6 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %7, ptr %i.a, align 8, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %7, ptr %i.b, align 8, !tbaa !330
  %i.e = load ptr, ptr %1, align 8, !tbaa !330    ; 9 uses
  %i.f = ptrtoaddr ptr %i.e to i64                ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %3 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  store ptr %i.g, ptr %18, align 8, !tbaa !349
  %i.h = mul i64 %i.c, %2
  %i.i = getelementptr [8 x i8], ptr %i.g, i64 %i.h ; 12 uses
  %.not234 = icmp eq i64 %i.c, 0
  br i1 %.not234, label %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit110, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = icmp eq i64 %5, 0
  %i.k = select i1 %i.j, i64 0, i64 %4            ; 2 uses
  %i.l = add i64 %i.k, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.c)
  %.idx226 = shl i64 %2, 3                        ; 8 uses
  %.not85 = icmp eq i64 %6, 0
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %.not2021.i = icmp eq i64 %2, 0
  %i.n = shl i64 %3, 3                            ; 2 uses
  %i.o = or disjoint i64 %i.n, 4                  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.e, i64 %i.o ; 3 uses
  %i.p = mul i64 %2, %i.c
  %i.q = add i64 %i.p, %3
  %i.r = shl i64 %i.q, 3
  %i.s = getelementptr i8, ptr %i.e, i64 %i.r
  %scevgep349 = getelementptr i8, ptr %i.s, i64 -4 ; 3 uses
  %scevgep350 = getelementptr i8, ptr %7, i64 %.idx226 ; 4 uses
  %i.t = shl i64 %3, 3                            ; 2 uses
  %i.u = add i64 %i.t, 8
  %i.v = add i64 %i.t, %i.f
  %i.w = add i64 %i.v, %.idx226
  %i.x = add i64 %i.w, -8
  %i.y = shl i64 %3, 3
  %i.z = add i64 %i.y, %i.f
  %i.aa = add i64 %i.z, %.idx226
  %i.ab = add i64 %i.aa, -8
  %i.ac = add i64 %.idx226, -8                    ; 2 uses
  %i.ad = lshr exact i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 184
  %i.af = getelementptr i8, ptr %i.e, i64 %i.n
  %i.ag = getelementptr i8, ptr %i.af, i64 -4
  %i.ah = getelementptr i8, ptr %i.e, i64 %i.o
  %bound0354 = icmp ult ptr %7, %scevgep349
  %bound1355 = icmp ult ptr %i.g, %scevgep350
  %found.conflict356 = and i1 %bound0354, %bound1355
  %stride.check = icmp slt i64 %.idx226, 0
  %i.ai = or i1 %found.conflict356, %stride.check
  %bound0358 = icmp ult ptr %7, %i.i
  %bound1359 = icmp ult ptr %scevgep, %scevgep350
  %found.conflict360 = and i1 %bound0358, %bound1359
  %invariant.op = or i1 %i.ai, %found.conflict360
  %n.vec = and i64 %i.ae, 4611686018427387902     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 3 uses
  %i.ak = getelementptr i8, ptr %7, i64 %i.aj     ; 2 uses
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.x ] ; 3 uses
  %i.al = phi ptr [ %7, %.lr.ph ], [ %i.hb, %bb.x ] ; 5 uses
  %i.am = phi ptr [ %7, %.lr.ph ], [ %i.hc, %bb.x ] ; 11 uses
  %i.an = phi ptr [ %i.g, %.lr.ph ], [ %i.bl, %bb.x ] ; 9 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.hk, %bb.x ] ; 3 uses
  %.071244 = phi i64 [ %i.k, %.lr.ph ], [ %i.hi, %bb.x ] ; 4 uses
  %.072241 = phi ptr [ %0, %.lr.ph ], [ %i.hg, %bb.x ] ; 16 uses
  %.074240 = phi i8 [ 1, %.lr.ph ], [ %.175, %bb.x ] ; 5 uses
  %.079239 = phi i64 [ %5, %.lr.ph ], [ %.180, %bb.x ] ; 2 uses
  %.0209238 = phi i64 [ %i.c, %.lr.ph ], [ %i.hl, %bb.x ] ; 4 uses
  %.0210237 = phi ptr [ %i.d, %.lr.ph ], [ %.2212, %bb.x ] ; 16 uses
  %.sroa.0181.0236 = phi ptr [ %i.e, %.lr.ph ], [ %.sroa.0181.1, %bb.x ] ; 11 uses
  %.sroa.0175.0235 = phi ptr [ %i.g, %.lr.ph ], [ %i.hf, %bb.x ] ; 5 uses
  %i.ao = ptrtoaddr ptr %i.al to i64
  %i.ap = ptrtoaddr ptr %i.am to i64
  %i.aq = icmp ult i64 %.071244, %.0
  br i1 %i.aq, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessENS_9container12vec_iteratorIPSt4pairIiiELb0EEENS5_3dtl23flat_tree_value_compareISt4lessIiES8_NSB_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread22.i
  %.025.i = phi i64 [ %i.bf, %.thread22.i ], [ %.071244, %bb.b ] ; 4 uses
  %.02024.i = phi i64 [ %i.be, %.thread22.i ], [ 0, %bb.b ] ; 4 uses
  %i.ar = mul i64 %.02024.i, %2
  %i.as = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ar
  %i.at = mul i64 %.025.i, %2
  %i.au = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.at
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.072241, i64 %.02024.i
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.072241, i64 %.025.i
  %i.ax = load i32, ptr %i.au, align 4, !tbaa !337 ; 2 uses
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !337 ; 2 uses
  %i.az = icmp slt i32 %i.ax, %i.ay
  br i1 %i.az, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ba = icmp slt i32 %i.ay, %i.ax
  br i1 %i.ba, label %.thread22.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = load i64, ptr %i.aw, align 8, !tbaa !367
  %i.bc = load i64, ptr %i.av, align 8, !tbaa !367
  %i.bd = icmp ult i64 %i.bb, %i.bc
  %cond.fr.i = freeze i1 %i.bd
  br i1 %cond.fr.i, label %.thread.i, label %.thread22.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread22.i

.thread22.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.be = phi i64 [ %.025.i, %.thread.i ], [ %.02024.i, %bb.d ], [ %.02024.i, %bb.c ] ; 2 uses
  %i.bf = add nuw i64 %.025.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bf, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessENS_9container12vec_iteratorIPSt4pairIiiELb0EEENS5_3dtl23flat_tree_value_compareISt4lessIiES8_NSB_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit, label %.lr.ph.i, !llvm.loop !4912

_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessENS_9container12vec_iteratorIPSt4pairIiiELb0EEENS5_3dtl23flat_tree_value_compareISt4lessIiES8_NSB_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit: ; preds = %.thread22.i, %bb.b
  %.020.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.be, %.thread22.i ] ; 8 uses
  %i.bg = add i64 %.020.lcssa.i, 2
  %i.bh = call i64 @llvm.umax.i64(i64 %.0, i64 %i.bg) ; 2 uses
  %.sroa.speculated198 = call i64 @llvm.umin.i64(i64 %i.bh, i64 %.0209238)
  %i.bi = mul i64 %.020.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bi, 3                        ; 2 uses
  %i.bj = getelementptr i8, ptr %i.an, i64 %.idx  ; 12 uses
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %2 ; 5 uses
  %i.bl = getelementptr i8, ptr %i.an, i64 %.idx226 ; 8 uses
  %i.bm = icmp eq ptr %i.am, %i.al
  %.not84 = icmp eq i64 %.079239, 0
  br i1 %.not84, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessENS_9container12vec_iteratorIPSt4pairIiiELb0EEENS5_3dtl23flat_tree_value_compareISt4lessIiES8_NSB_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit
  br i1 %.not85, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = load i32, ptr %i.i, align 4, !tbaa !337
  %i.bo = load i32, ptr %i.bj, align 4, !tbaa !337
  %i.bp = icmp slt i32 %i.bn, %i.bo
  br i1 %i.bp, label %.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old87 = trunc nuw i8 %.074240 to i1
  br i1 %.old87, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessENS_9container12vec_iteratorIPSt4pairIiiELb0EEENS5_3dtl23flat_tree_value_compareISt4lessIiES8_NSB_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit
  %.idx227 = shl nuw nsw i64 %.020.lcssa.i, 3
  %i.bq = getelementptr inbounds nuw i8, ptr %.072241, i64 %.idx227 ; 13 uses
  %i.br = icmp eq ptr %.0210237, %i.m
  br i1 %i.br, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bs = trunc nuw i8 %.074240 to i1
  br i1 %i.bs, label %bb.j, label %.thread289

.thread289:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.bt = load i64, ptr %i.bq, align 8, !tbaa !367
  %i.bu = load i64, ptr %.0210237, align 8, !tbaa !367
  %i.bv = icmp ult i64 %i.bt, %i.bu               ; 4 uses
  %i.bw = trunc nuw i8 %.074240 to i1             ; 2 uses
  %i.bx = xor i1 %i.bv, %i.bw
  br i1 %i.bx, label %bb.n, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.by = phi i1 [ true, %._crit_edge ], [ %i.bv, %bb.i ]
  br i1 %i.bm, label %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.bz = add i64 %i.ao, -8
  %i.ca = sub i64 %i.bz, %i.ap                    ; 3 uses
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check400 = icmp ult i64 %i.ca, 40
  br i1 %min.iters.check400, label %.lr.ph.i.i.preheader552, label %vector.memcheck401

vector.memcheck401:                               ; preds = %.lr.ph.i.i.preheader
  %i.cd = and i64 %i.ca, -8
  %i.ce = add i64 %i.cd, 8                        ; 2 uses
  %i.cf = getelementptr i8, ptr %.sroa.0181.0236, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.am, i64 %i.ce
  %bound0402 = icmp ult ptr %.sroa.0181.0236, %i.cg
  %bound1403 = icmp ult ptr %i.am, %i.cf
  %found.conflict404 = and i1 %bound0402, %bound1403
  br i1 %found.conflict404, label %.lr.ph.i.i.preheader552, label %vector.ph405

vector.ph405:                                     ; preds = %vector.memcheck401
  %n.vec406 = and i64 %i.cc, 4611686018427387900  ; 3 uses
  %i.ch = shl i64 %n.vec406, 3                    ; 2 uses
  %i.ci = getelementptr i8, ptr %.sroa.0181.0236, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.am, i64 %i.ch
  br label %vector.body407

vector.body407:                                   ; preds = %vector.body407, %vector.ph405
  %index408 = phi i64 [ 0, %vector.ph405 ], [ %index.next421, %vector.body407 ] ; 2 uses
  %i.ck = shl i64 %index408, 3                    ; 3 uses
  %i.cl = or disjoint i64 %i.ck, 16               ; 2 uses
  %next.gep409 = getelementptr i8, ptr %.sroa.0181.0236, i64 %i.ck
  %next.gep410 = getelementptr i8, ptr %.sroa.0181.0236, i64 %i.cl
  %next.gep411 = getelementptr i8, ptr %i.am, i64 %i.ck
  %next.gep412 = getelementptr i8, ptr %i.am, i64 %i.cl
  %wide.vec413 = load <4 x i32>, ptr %next.gep411, align 4, !tbaa !337, !alias.scope !4969, !noalias !4970
  %wide.vec416 = load <4 x i32>, ptr %next.gep412, align 4, !tbaa !337, !alias.scope !4969, !noalias !4970
  store <4 x i32> %wide.vec413, ptr %next.gep409, align 4, !tbaa !337, !alias.scope !4971, !noalias !4970
  store <4 x i32> %wide.vec416, ptr %next.gep410, align 4, !tbaa !337, !alias.scope !4971, !noalias !4970
  %index.next421 = add nuw i64 %index408, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next421, %n.vec406
  br i1 %i.cm, label %middle.block422, label %vector.body407, !llvm.loop !4920

middle.block422:                                  ; preds = %vector.body407
  %cmp.n423 = icmp eq i64 %i.cc, %n.vec406
  br i1 %cmp.n423, label %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i.preheader552

.lr.ph.i.i.preheader552:                          ; preds = %vector.memcheck401, %.lr.ph.i.i.preheader, %middle.block422
  %.ph553 = phi ptr [ %.sroa.0181.0236, %vector.memcheck401 ], [ %.sroa.0181.0236, %.lr.ph.i.i.preheader ], [ %i.ci, %middle.block422 ]
  %.05.i.i.ph = phi ptr [ %i.am, %vector.memcheck401 ], [ %i.am, %.lr.ph.i.i.preheader ], [ %i.cj, %middle.block422 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader552, %.lr.ph.i.i
  %i.cn = phi ptr [ %i.ct, %.lr.ph.i.i ], [ %.ph553, %.lr.ph.i.i.preheader552 ] ; 3 uses
  %.05.i.i = phi ptr [ %i.cs, %.lr.ph.i.i ], [ %.05.i.i.ph, %.lr.ph.i.i.preheader552 ] ; 3 uses
  %i.co = load i32, ptr %.05.i.i, align 4, !tbaa !337, !noalias !4970
  store i32 %i.co, ptr %i.cn, align 4, !tbaa !346, !noalias !4970
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !337, !noalias !4970
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
end_hunk_5
begin_hunk_6_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessENS_9container12vec_iteratorIPSt4pairIiiELb0EEENS5_3dtl23flat_tree_value_compareISt4lessIiES8_NSB_9select1stIiEEEENS0_7move_opES9_EEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_T4_:bb.a

.preheader.i:                                     ; preds = %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit
  br i1 %.not2021.i, label %._crit_edge.i, label %.lr.ph.i89.preheader

.lr.ph.i89.preheader:                             ; preds = %.preheader.i
  br i1 %min.iters.check, label %.lr.ph.i89.preheader550, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i89.preheader
  %i.cu = mul i64 %indvar, %.idx226               ; 2 uses
  %i.cv = shl i64 %.020.lcssa.i, 3
  %i.cw = add i64 %i.cv, 8
  %i.cx = mul i64 %2, %i.cw
  %i.cy = getelementptr i8, ptr %i.ag, i64 %i.cu
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cx  ; 4 uses
  %i.da = getelementptr i8, ptr %i.ah, i64 %i.cu
  %i.db = getelementptr i8, ptr %i.da, i64 %.idx  ; 4 uses
  %bound0 = icmp ult ptr %7, %i.cz
  %bound1 = icmp ult ptr %i.bj, %scevgep350
  %found.conflict = and i1 %bound0, %bound1
  %bound0351 = icmp ult ptr %7, %i.bk
  %bound1352 = icmp ult ptr %i.db, %scevgep350
  %found.conflict353 = and i1 %bound0351, %bound1352
  %conflict.rdx = or i1 %found.conflict, %found.conflict353
  %conflict.rdx361.reass = or i1 %conflict.rdx, %invariant.op
  %bound0362 = icmp ult ptr %i.bj, %i.bk
  %bound1363 = icmp ult ptr %i.db, %i.cz
  %found.conflict364 = and i1 %bound0362, %bound1363
  %conflict.rdx365 = or i1 %conflict.rdx361.reass, %found.conflict364
  %bound0366 = icmp ult ptr %i.bj, %scevgep349
  %bound1367 = icmp ult ptr %i.g, %i.cz
  %found.conflict368 = and i1 %bound0366, %bound1367
  %conflict.rdx369 = or i1 %conflict.rdx365, %found.conflict368
  %bound0370 = icmp ult ptr %i.bj, %i.i
  %bound1371 = icmp ult ptr %scevgep, %i.cz
  %found.conflict372 = and i1 %bound0370, %bound1371
  %conflict.rdx373 = or i1 %conflict.rdx369, %found.conflict372
  %bound0374 = icmp ult ptr %i.db, %scevgep349
  %bound1375 = icmp ult ptr %i.g, %i.bk
  %found.conflict376 = and i1 %bound0374, %bound1375
  %conflict.rdx377 = or i1 %conflict.rdx373, %found.conflict376
  %bound0378 = icmp ult ptr %i.db, %i.i
  %bound1379 = icmp ult ptr %scevgep, %i.bk
  %found.conflict380 = and i1 %bound0378, %bound1379
  %conflict.rdx381 = or i1 %conflict.rdx377, %found.conflict380
  br i1 %conflict.rdx381, label %.lr.ph.i89.preheader550, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dc = getelementptr i8, ptr %i.bj, i64 %i.aj
  %i.dd = getelementptr i8, ptr %i.an, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.de = shl i64 %index, 3                       ; 3 uses
  %next.gep = getelementptr i8, ptr %i.bj, i64 %i.de ; 2 uses
  %next.gep382 = getelementptr i8, ptr %i.an, i64 %i.de
  %next.gep383 = getelementptr i8, ptr %7, i64 %i.de
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !337
  store <4 x i32> %wide.vec, ptr %next.gep383, align 4, !tbaa !337, !alias.scope !4972, !noalias !4973
  %wide.vec385 = load <4 x i32>, ptr %next.gep382, align 4, !tbaa !337
  store <4 x i32> %wide.vec385, ptr %next.gep, align 4, !tbaa !337
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !4928

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i89.preheader550

.lr.ph.i89.preheader550:                          ; preds = %vector.memcheck, %.lr.ph.i89.preheader, %middle.block
  %.sroa.0144.0.ph = phi ptr [ %i.bj, %vector.memcheck ], [ %i.bj, %.lr.ph.i89.preheader ], [ %i.dc, %middle.block ]
  %.ph551 = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i89.preheader ], [ %i.dd, %middle.block ]
  %.022.i.ph = phi ptr [ %7, %vector.memcheck ], [ %7, %.lr.ph.i89.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i89

.lr.ph.i89:                                       ; preds = %.lr.ph.i89.preheader550, %.lr.ph.i89
  %.sroa.0144.0 = phi ptr [ %i.di, %.lr.ph.i89 ], [ %.sroa.0144.0.ph, %.lr.ph.i89.preheader550 ] ; 4 uses
  %i.dg = phi ptr [ %i.dh, %.lr.ph.i89 ], [ %.ph551, %.lr.ph.i89.preheader550 ] ; 3 uses
  %.022.i = phi ptr [ %i.dj, %.lr.ph.i89 ], [ %.022.i.ph, %.lr.ph.i89.preheader550 ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0144.0, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.022.i, i64 8 ; 2 uses
  %i.dk = load i32, ptr %.sroa.0144.0, align 4, !tbaa !337
  store i32 %i.dk, ptr %.022.i, align 4, !tbaa !346
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0144.0, i64 4 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !337
  %i.dn = getelementptr inbounds nuw i8, ptr %.022.i, i64 4
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !347
  %i.do = load i32, ptr %i.dg, align 4, !tbaa !337
  store i32 %i.do, ptr %.sroa.0144.0, align 4, !tbaa !346
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !337
  store i32 %i.dq, ptr %i.dl, align 4, !tbaa !347
  %.not20.i = icmp eq ptr %i.dh, %i.bl
  br i1 %.not20.i, label %._crit_edge.i, label %.lr.ph.i89, !llvm.loop !4929

._crit_edge.i:                                    ; preds = %.lr.ph.i89, %middle.block, %.preheader.i
  %.0.lcssa.i = phi ptr [ %7, %.preheader.i ], [ %i.ak, %middle.block ], [ %i.dj, %.lr.ph.i89 ] ; 2 uses
  %.not.i = icmp eq i64 %.020.lcssa.i, 0
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  %i.dr = load i64, ptr %i.bq, align 8, !tbaa !367
  %i.ds = load i64, ptr %.072241, align 8, !tbaa !367
  store i64 %i.ds, ptr %i.bq, align 8, !tbaa !367
  store i64 %i.dr, ptr %.072241, align 8, !tbaa !367
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %i.dt = icmp eq ptr %i.bq, %.0210237
  br i1 %i.dt, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmNS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.du = icmp eq ptr %.0210237, %.072241
  %spec.select = select i1 %i.du, ptr %i.bq, ptr %.0210237
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmNS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmNS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit: ; preds = %bb.m, %bb.l, %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit
  %.5 = phi ptr [ %.0210237, %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit ], [ %spec.select, %bb.m ], [ %.072241, %bb.l ]
  %.1.i = phi ptr [ %7, %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit ], [ %.0.lcssa.i, %bb.m ], [ %.0.lcssa.i, %bb.l ] ; 2 uses
  store ptr %.1.i, ptr %i.b, align 8, !tbaa !330
  br label %bb.x

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  br i1 %i.bw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr %.sroa.0181.0236, ptr %9, align 8, !tbaa !349, !noalias !4974
  store ptr %.sroa.0175.0235, ptr %10, align 8, !tbaa !349, !noalias !4974
  store ptr %i.bl, ptr %11, align 8, !tbaa !349, !noalias !4974
  store ptr %i.bj, ptr %12, align 8, !tbaa !349, !noalias !4974
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %19, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_b.exit

bb.p:                                             ; preds = %.thread289, %bb.n
  %i.dv = phi i1 [ true, %.thread289 ], [ %i.bv, %bb.n ]
  store ptr %.sroa.0181.0236, ptr %13, align 8, !tbaa !349, !noalias !4974
  store ptr %.sroa.0175.0235, ptr %14, align 8, !tbaa !349, !noalias !4974
  store ptr %i.bl, ptr %15, align 8, !tbaa !349, !noalias !4974
  store ptr %i.bj, ptr %16, align 8, !tbaa !349, !noalias !4974
  store ptr %8, ptr %17, align 8, !tbaa !384, !noalias !4974
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7move_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %19, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dead_on_return %17)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_b.exit: ; preds = %bb.o, %bb.p
  %i.dw = phi i1 [ %i.bv, %bb.o ], [ %i.dv, %bb.p ]
  %i.dx = phi i1 [ true, %bb.o ], [ false, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %i.dy = load ptr, ptr %i.a, align 8, !tbaa !330 ; 4 uses
  %i.dz = load ptr, ptr %i.b, align 8, !tbaa !330 ; 4 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz                ; 2 uses
  br i1 %i.ea, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_b.exit
  store ptr %7, ptr %i.a, align 8, !tbaa !330
  %i.eb = load ptr, ptr %18, align 8, !tbaa !349  ; 10 uses
  %i.ec = ptrtoint ptr %i.bl to i64
  %i.ed = ptrtoint ptr %i.eb to i64               ; 3 uses
  %i.ee = sub i64 %i.ec, %i.ed                    ; 2 uses
  %i.ef = ashr exact i64 %i.ee, 3
  %i.eg = sub nsw i64 0, %i.ef
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.eg ; 7 uses
  %.not19.i90 = icmp eq ptr %i.eb, %i.eh
  br i1 %.not19.i90, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmNS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit102, label %.preheader.i91

.preheader.i91:                                   ; preds = %bb.q
  %.not2021.i92 = icmp eq ptr %i.eb, %i.bl
  br i1 %.not2021.i92, label %._crit_edge.i96, label %.lr.ph.i93.preheader

.lr.ph.i93.preheader:                             ; preds = %.preheader.i91
  %i.ei = mul i64 %indvar, %.idx226               ; 3 uses
  %i.ej = add i64 %i.ab, %i.ei                    ; 2 uses
  %i.ek = sub i64 %i.ej, %i.ed                    ; 2 uses
  %i.el = lshr i64 %i.ek, 3
  %i.em = add nuw nsw i64 %i.el, 1                ; 2 uses
  %min.iters.check445 = icmp ult i64 %i.ek, 72
  br i1 %min.iters.check445, label %.lr.ph.i93.preheader554, label %vector.memcheck446

vector.memcheck446:                               ; preds = %.lr.ph.i93.preheader
  %i.en = add i64 %i.x, %i.ei
  %i.eo = sub i64 %i.en, %i.ed
  %i.ep = and i64 %i.eo, -8                       ; 2 uses
  %27 = add i64 %i.ep, 8                          ; 2 uses
  %i.eq = getelementptr i8, ptr %7, i64 %27       ; 2 uses
  %i.er = add i64 %i.u, %i.ei
  %i.es = shl i64 %.020.lcssa.i, 3
  %i.et = add i64 %i.es, 8
  %i.eu = mul i64 %2, %i.et
  %i.ev = add i64 %i.er, %i.eu
  %i.ew = add i64 %i.ev, %i.ep
  %i.ex = sub i64 %i.ew, %i.ee
  %i.ey = getelementptr i8, ptr %i.e, i64 %i.ex   ; 2 uses
  %i.ez = getelementptr i8, ptr %i.eb, i64 %27    ; 2 uses
  %bound0447 = icmp ult ptr %7, %i.ey
  %bound1448 = icmp ult ptr %i.eh, %i.eq
  %found.conflict449 = and i1 %bound0447, %bound1448
  %bound0450 = icmp ult ptr %7, %i.ez
  %bound1451 = icmp ult ptr %i.eb, %i.eq
  %found.conflict452 = and i1 %bound0450, %bound1451
  %conflict.rdx453 = or i1 %found.conflict449, %found.conflict452
  %bound0454 = icmp ult ptr %i.eh, %i.ez
  %bound1455 = icmp ult ptr %i.eb, %i.ey
  %found.conflict456 = and i1 %bound0454, %bound1455
  %conflict.rdx457 = or i1 %conflict.rdx453, %found.conflict456
  br i1 %conflict.rdx457, label %.lr.ph.i93.preheader554, label %vector.ph458

vector.ph458:                                     ; preds = %vector.memcheck446
  %n.vec459 = and i64 %i.em, 4611686018427387902  ; 3 uses
  %i.fa = shl i64 %n.vec459, 3                    ; 3 uses
  %i.fb = getelementptr i8, ptr %i.eh, i64 %i.fa
  %i.fc = getelementptr i8, ptr %i.eb, i64 %i.fa
  %i.fd = getelementptr i8, ptr %7, i64 %i.fa     ; 2 uses
  br label %vector.body460

vector.body460:                                   ; preds = %vector.body460, %vector.ph458
  %index461 = phi i64 [ 0, %vector.ph458 ], [ %index.next473, %vector.body460 ] ; 2 uses
  %i.fe = shl i64 %index461, 3                    ; 3 uses
  %next.gep462 = getelementptr i8, ptr %i.eh, i64 %i.fe ; 2 uses
  %next.gep463 = getelementptr i8, ptr %i.eb, i64 %i.fe
  %next.gep464 = getelementptr i8, ptr %7, i64 %i.fe
  %wide.vec465 = load <4 x i32>, ptr %next.gep462, align 4, !tbaa !337, !alias.scope !4975, !noalias !4976
  store <4 x i32> %wide.vec465, ptr %next.gep464, align 4, !tbaa !337, !alias.scope !4977, !noalias !4978
  %wide.vec469 = load <4 x i32>, ptr %next.gep463, align 4, !tbaa !337, !alias.scope !4976
  store <4 x i32> %wide.vec469, ptr %next.gep462, align 4, !tbaa !337, !alias.scope !4975, !noalias !4976
  %index.next473 = add nuw i64 %index461, 2       ; 2 uses
  %i.ff = icmp eq i64 %index.next473, %n.vec459
  br i1 %i.ff, label %middle.block474, label %vector.body460, !llvm.loop !4936

middle.block474:                                  ; preds = %vector.body460
  %cmp.n475 = icmp eq i64 %i.em, %n.vec459
  br i1 %cmp.n475, label %._crit_edge.i96, label %.lr.ph.i93.preheader554

.lr.ph.i93.preheader554:                          ; preds = %vector.memcheck446, %.lr.ph.i93.preheader, %middle.block474
  %.sroa.0128.0.ph = phi ptr [ %i.eh, %vector.memcheck446 ], [ %i.eh, %.lr.ph.i93.preheader ], [ %i.fb, %middle.block474 ] ; 5 uses
  %.ph555 = phi ptr [ %i.eb, %vector.memcheck446 ], [ %i.eb, %.lr.ph.i93.preheader ], [ %i.fc, %middle.block474 ] ; 5 uses
  %.022.i94.ph = phi ptr [ %7, %vector.memcheck446 ], [ %7, %.lr.ph.i93.preheader ], [ %i.fd, %middle.block474 ] ; 4 uses
  %.ph555558 = ptrtoaddr ptr %.ph555 to i64
  %i.fg = sub i64 %i.ej, %.ph555558               ; 2 uses
  %i.fh = and i64 %i.fg, 8
  %lcmp.mod.not.not = icmp eq i64 %i.fh, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i93.prol, label %.lr.ph.i93.prol.loopexit

.lr.ph.i93.prol:                                  ; preds = %.lr.ph.i93.preheader554
  %i.fi = getelementptr inbounds nuw i8, ptr %.ph555, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0128.0.ph, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %.022.i94.ph, i64 8 ; 2 uses
  %i.fl = load i32, ptr %.sroa.0128.0.ph, align 4, !tbaa !337
  store i32 %i.fl, ptr %.022.i94.ph, align 4, !tbaa !346
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0128.0.ph, i64 4 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !337
  %i.fo = getelementptr inbounds nuw i8, ptr %.022.i94.ph, i64 4
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !347
  %i.fp = load i32, ptr %.ph555, align 4, !tbaa !337
  store i32 %i.fp, ptr %.sroa.0128.0.ph, align 4, !tbaa !346
  %i.fq = getelementptr inbounds nuw i8, ptr %.ph555, i64 4
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !337
  store i32 %i.fr, ptr %i.fm, align 4, !tbaa !347
  br label %.lr.ph.i93.prol.loopexit

.lr.ph.i93.prol.loopexit:                         ; preds = %.lr.ph.i93.prol, %.lr.ph.i93.preheader554
  %.lcssa556.unr = phi ptr [ poison, %.lr.ph.i93.preheader554 ], [ %i.fk, %.lr.ph.i93.prol ]
  %.sroa.0128.0.unr = phi ptr [ %.sroa.0128.0.ph, %.lr.ph.i93.preheader554 ], [ %i.fj, %.lr.ph.i93.prol ]
  %.unr = phi ptr [ %.ph555, %.lr.ph.i93.preheader554 ], [ %i.fi, %.lr.ph.i93.prol ]
  %.022.i94.unr = phi ptr [ %.022.i94.ph, %.lr.ph.i93.preheader554 ], [ %i.fk, %.lr.ph.i93.prol ]
  %i.fs = icmp ult i64 %i.fg, 8
  br i1 %i.fs, label %._crit_edge.i96, label %.lr.ph.i93

.lr.ph.i93:                                       ; preds = %.lr.ph.i93.prol.loopexit, %.lr.ph.i93
  %.sroa.0128.0 = phi ptr [ %i.gf, %.lr.ph.i93 ], [ %.sroa.0128.0.unr, %.lr.ph.i93.prol.loopexit ] ; 6 uses
  %i.ft = phi ptr [ %i.ge, %.lr.ph.i93 ], [ %.unr, %.lr.ph.i93.prol.loopexit ] ; 5 uses
  %.022.i94 = phi ptr [ %i.gg, %.lr.ph.i93 ], [ %.022.i94.unr, %.lr.ph.i93.prol.loopexit ] ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0128.0, i64 8 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.022.i94, i64 8
  %i.fx = load i32, ptr %.sroa.0128.0, align 4, !tbaa !337
  store i32 %i.fx, ptr %.022.i94, align 4, !tbaa !346
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0128.0, i64 4 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !337
  %i.ga = getelementptr inbounds nuw i8, ptr %.022.i94, i64 4
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !347
  %i.gb = load i32, ptr %i.ft, align 4, !tbaa !337
  store i32 %i.gb, ptr %.sroa.0128.0, align 4, !tbaa !346
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !337
  store i32 %i.gd, ptr %i.fy, align 4, !tbaa !347
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0128.0, i64 16
  %i.gg = getelementptr inbounds nuw i8, ptr %.022.i94, i64 16 ; 2 uses
  %i.gh = load i32, ptr %i.fv, align 4, !tbaa !337
  store i32 %i.gh, ptr %i.fw, align 4, !tbaa !346
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0128.0, i64 12 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !337
  %i.gk = getelementptr inbounds nuw i8, ptr %.022.i94, i64 12
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !347
  %i.gl = load i32, ptr %i.fu, align 4, !tbaa !337
  store i32 %i.gl, ptr %i.fv, align 4, !tbaa !346
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ft, i64 12
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !337
  store i32 %i.gn, ptr %i.gi, align 4, !tbaa !347
  %.not20.i95.1 = icmp eq ptr %i.ge, %i.bl
  br i1 %.not20.i95.1, label %._crit_edge.i96, label %.lr.ph.i93, !llvm.loop !4937

._crit_edge.i96:                                  ; preds = %.lr.ph.i93.prol.loopexit, %.lr.ph.i93, %middle.block474, %.preheader.i91
  %.0.lcssa.i97 = phi ptr [ %7, %.preheader.i91 ], [ %i.fd, %middle.block474 ], [ %.lcssa556.unr, %.lr.ph.i93.prol.loopexit ], [ %i.gg, %.lr.ph.i93 ] ; 2 uses
  %.not.i98 = icmp eq i64 %.020.lcssa.i, 0
  br i1 %.not.i98, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i96
  %i.go = load i64, ptr %i.bq, align 8, !tbaa !367
  %i.gp = load i64, ptr %.072241, align 8, !tbaa !367
  store i64 %i.gp, ptr %i.bq, align 8, !tbaa !367
  store i64 %i.go, ptr %.072241, align 8, !tbaa !367
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i96
  %i.gq = icmp eq ptr %i.bq, %.0210237
  br i1 %i.gq, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmNS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit102, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gr = icmp eq ptr %.0210237, %.072241
  %spec.select223 = select i1 %i.gr, ptr %i.bq, ptr %.0210237
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmNS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit102

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmNS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit102: ; preds = %bb.t, %bb.s, %bb.q
  %.6 = phi ptr [ %.0210237, %bb.q ], [ %spec.select223, %bb.t ], [ %.072241, %bb.s ]
  %.1.i99 = phi ptr [ %7, %bb.q ], [ %.0.lcssa.i97, %bb.t ], [ %.0.lcssa.i97, %bb.s ] ; 2 uses
  store ptr %.1.i99, ptr %i.b, align 8, !tbaa !330
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_b.exit
  %.not.i103 = icmp eq i64 %.020.lcssa.i, 0
  br i1 %.not.i103, label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gs = load i64, ptr %i.bq, align 8, !tbaa !367
  %i.gt = load i64, ptr %.072241, align 8, !tbaa !367
  store i64 %i.gt, ptr %i.bq, align 8, !tbaa !367
  store i64 %i.gs, ptr %.072241, align 8, !tbaa !367
  %i.gu = icmp eq ptr %i.bq, %.0210237
  br i1 %i.gu, label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gv = icmp eq ptr %.0210237, %.072241
  %spec.select224 = select i1 %i.gv, ptr %i.bq, ptr %.0210237
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit

_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit: ; preds = %bb.w, %bb.u, %bb.v, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmNS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit102
  %i.gw = phi ptr [ %.1.i99, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmNS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit102 ], [ %i.dz, %bb.u ], [ %i.dz, %bb.w ], [ %i.dz, %bb.v ]
  %i.gx = phi ptr [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmNS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit102 ], [ %i.dy, %bb.u ], [ %i.dy, %bb.w ], [ %i.dy, %bb.v ]
  %.1211 = phi ptr [ %.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmNS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit102 ], [ %.0210237, %bb.u ], [ %spec.select224, %bb.w ], [ %.072241, %bb.v ]
  %i.gy = xor i1 %i.dx, %i.ea
  %i.gz = zext i1 %i.gy to i8
  %i.ha = load ptr, ptr %19, align 8, !tbaa !330
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmNS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit
  %i.hb = phi ptr [ %i.gw, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %.1.i, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmNS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit ] ; 2 uses
  %i.hc = phi ptr [ %i.gx, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmNS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit ] ; 2 uses
  %i.hd = phi i1 [ %i.dw, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %i.by, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmNS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit ]
  %.sroa.0181.1 = phi ptr [ %i.ha, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %i.an, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmNS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit ] ; 2 uses
  %.2212 = phi ptr [ %.1211, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %.5, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmNS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit ] ; 2 uses
  %.175 = phi i8 [ %i.gz, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %.074240, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmNS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.hd, true
  %i.he = sext i1 %not. to i64
  %.180 = add i64 %.079239, %i.he
  %i.hf = getelementptr inbounds [8 x i8], ptr %.sroa.0175.0235, i64 %2 ; 2 uses
  store ptr %i.bl, ptr %18, align 8, !tbaa !349
  %i.hg = getelementptr inbounds nuw i8, ptr %.072241, i64 8
  %i.hh = icmp ne i64 %.071244, 0
  %.neg = sext i1 %i.hh to i64
  %i.hi = add i64 %.071244, %.neg
  %i.hj = icmp ne i64 %i.bh, 0
  %.neg86 = sext i1 %i.hj to i64
  %i.hk = add i64 %.sroa.speculated198, %.neg86
  %i.hl = add i64 %.0209238, -1                   ; 2 uses
  %.not = icmp eq i64 %i.hl, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !4938

.thread:                                          ; preds = %bb.x, %bb.g, %bb.f
  %i.hm = phi ptr [ %i.hb, %bb.x ], [ %i.al, %bb.g ], [ %i.al, %bb.f ] ; 3 uses
  %i.hn = phi ptr [ %i.hc, %bb.x ], [ %i.am, %bb.g ], [ %i.am, %bb.f ] ; 9 uses
  %.sroa.0175.0.lcssa.ph = phi ptr [ %i.hf, %bb.x ], [ %.sroa.0175.0235, %bb.g ], [ %.sroa.0175.0235, %bb.f ] ; 4 uses
  %.sroa.0181.0.lcssa.ph = phi ptr [ %.sroa.0181.1, %bb.x ], [ %.sroa.0181.0236, %bb.g ], [ %.sroa.0181.0236, %bb.f ] ; 8 uses
  %.0210.lcssa.ph = phi ptr [ %.2212, %bb.x ], [ %.0210237, %bb.g ], [ %.0210237, %bb.f ] ; 3 uses
  %.0209.lcssa.ph = phi i64 [ 0, %bb.x ], [ %.0209238, %bb.g ], [ %.0209238, %bb.f ] ; 3 uses
  %.074.lcssa.ph = phi i8 [ %.175, %bb.x ], [ 1, %bb.g ], [ %.074240, %bb.f ]
  %i.ho = trunc nuw i8 %.074.lcssa.ph to i1
  %i.hp = select i1 %i.ho, ptr %.sroa.0181.0.lcssa.ph, ptr %.sroa.0175.0.lcssa.ph ; 3 uses
  %.not4.i.i106 = icmp eq ptr %i.hn, %i.hm
  br i1 %.not4.i.i106, label %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit110, label %.lr.ph.i.i107.preheader

.lr.ph.i.i107.preheader:                          ; preds = %.thread
  %i.hq = ptrtoaddr ptr %i.hn to i64
  %i.hr = ptrtoaddr ptr %i.hm to i64
  %i.hs = add i64 %i.hr, -8
  %i.ht = sub i64 %i.hs, %i.hq                    ; 3 uses
  %i.hu = lshr i64 %i.ht, 3
  %i.hv = add nuw nsw i64 %i.hu, 1                ; 2 uses
  %min.iters.check486 = icmp ult i64 %i.ht, 104
  br i1 %min.iters.check486, label %.lr.ph.i.i107.preheader548, label %vector.memcheck487
end_hunk_6
