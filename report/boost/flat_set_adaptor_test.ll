Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_set_adaptor_test?download=true
inline.NumInlined: 24951
inline.NumDeleted: 2813
loop-unroll.NumCompletelyUnrolled: 140
loop-unroll.NumRuntimeUnrolled: 160
loop-unroll.NumUnrolled: 306
begin_hunk_0_@_ZN5boost7movelib10rotate_gcdIPiEET_S3_S3_S3_:bb.a
  %i.av = and i64 %i.au, 1
  %.not.not.i = icmp eq i64 %i.av, 0
  br i1 %.not.not.i, label %.lr.ph.i56, label %.preheader.i, !llvm.loop !50

.lr.ph45.i:                                       ; preds = %.preheader.i, %bb.l
  %.144.i = phi i64 [ %.2.i, %bb.l ], [ %.029.lcssa.i, %.preheader.i ] ; 7 uses
  %.13143.i = phi i64 [ %.232.i, %bb.l ], [ %.030.lcssa.i, %.preheader.i ] ; 7 uses
  %i.aw = and i64 %.13143.i, 1
  %.not.i55 = icmp eq i64 %i.aw, 0
  br i1 %.not.i55, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph45.i
  %i.ax = lshr exact i64 %.13143.i, 1
  br label %bb.l

bb.g:                                             ; preds = %.lr.ph45.i
  %i.ay = and i64 %.144.i, 1
  %.not34.i = icmp eq i64 %i.ay, 0
  br i1 %.not34.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.az = lshr exact i64 %.144.i, 1
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %.not35.i = icmp ult i64 %.13143.i, %.144.i
  br i1 %.not35.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = sub nuw i64 %.13143.i, %.144.i
  %i.bb = lshr exact i64 %i.ba, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bc = sub nuw i64 %.144.i, %.13143.i
  %i.bd = lshr exact i64 %i.bc, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.f
  %.232.i = phi i64 [ %i.bb, %bb.j ], [ %.13143.i, %bb.k ], [ %.13143.i, %bb.h ], [ %i.ax, %bb.f ] ; 3 uses
  %.2.i = phi i64 [ %.144.i, %bb.j ], [ %i.bd, %bb.k ], [ %i.az, %bb.h ], [ %.144.i, %bb.f ] ; 3 uses
  %i.be = icmp ne i64 %.232.i, 0
  %i.bf = icmp ne i64 %.2.i, 0
  %i.bg = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %i.bg, label %.lr.ph45.i, label %._crit_edge.i, !llvm.loop !51

._crit_edge.i:                                    ; preds = %bb.l, %.preheader.i
  %.131.lcssa.i = phi i64 [ %.030.lcssa.i, %.preheader.i ], [ %.232.i, %bb.l ]
  %.1.lcssa.i = phi i64 [ %.029.lcssa.i, %.preheader.i ], [ %.2.i, %bb.l ]
  %i.bh = add i64 %.1.lcssa.i, %.131.lcssa.i
  %i.bi = mul i64 %i.bh, %.0.lcssa.i54
  br label %_ZN5boost7movelib3gcdImEET_S2_S2_.exit

_ZN5boost7movelib3gcdImEET_S2_S2_.exit:           ; preds = %bb.e, %._crit_edge.i
  %.033.i = phi i64 [ %i.an, %bb.e ], [ %i.bi, %._crit_edge.i ] ; 2 uses
  %.idx = shl i64 %.033.i, 2                      ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.not60 = icmp eq i64 %.033.i, 0
  br i1 %.not60, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost7movelib3gcdImEET_S2_S2_.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %i.e ; 3 uses
  %i.bl = add i64 %.idx, -4                       ; 2 uses
  %i.bm = and i64 %i.bl, 4
  %lcmp.mod.not.not = icmp eq i64 %i.bm, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph
  %i.bn = load i32, ptr %0, align 4, !tbaa !296
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.prol.preheader
  %.044.prol = phi ptr [ %0, %.prol.preheader ], [ %.0.prol, %bb.m ]
  %.0.prol = phi ptr [ %i.bo, %.prol.preheader ], [ %i.bx, %bb.m ] ; 5 uses
  %i.bp = load i32, ptr %.0.prol, align 4, !tbaa !296
  store i32 %i.bp, ptr %.044.prol, align 4, !tbaa !296
  %i.bq = ptrtoint ptr %.0.prol to i64
  %i.br = sub i64 %i.ac, %i.bq
  %i.bs = ashr exact i64 %i.br, 2                 ; 2 uses
  %i.bt = icmp ugt i64 %i.bs, %i.f
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.prol, i64 %i.e
  %i.bv = sub nsw i64 0, %i.bs
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bv
  %i.bx = select i1 %i.bt, ptr %i.bu, ptr %i.bw   ; 2 uses
  %.not53.prol = icmp eq ptr %i.bx, %0
  br i1 %.not53.prol, label %.prol.loopexit.unr-lcssa, label %bb.m, !llvm.loop !3157

.prol.loopexit.unr-lcssa:                         ; preds = %bb.m
  store i32 %i.bn, ptr %.0.prol, align 4, !tbaa !296
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.04561.unr = phi ptr [ %0, %.lr.ph ], [ %i.by, %.prol.loopexit.unr-lcssa ]
  %i.bz = icmp eq i64 %i.bl, 0
  br i1 %i.bz, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %bb.q
  %.04561 = phi ptr [ %i.cx, %bb.q ], [ %.04561.unr, %.prol.loopexit ] ; 6 uses
  %i.ca = load i32, ptr %.04561, align 4, !tbaa !296
  %i.cb = getelementptr inbounds nuw i8, ptr %.04561, i64 %i.e
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.new
  %.044 = phi ptr [ %.04561, %.lr.ph.new ], [ %.0, %bb.n ]
  %.0 = phi ptr [ %i.cb, %.lr.ph.new ], [ %i.ck, %bb.n ] ; 5 uses
  %i.cc = load i32, ptr %.0, align 4, !tbaa !296
  store i32 %i.cc, ptr %.044, align 4, !tbaa !296
  %i.cd = ptrtoint ptr %.0 to i64
  %i.ce = sub i64 %i.ac, %i.cd
  %i.cf = ashr exact i64 %i.ce, 2                 ; 2 uses
  %i.cg = icmp ugt i64 %i.cf, %i.f
  %i.ch = getelementptr inbounds nuw i8, ptr %.0, i64 %i.e
  %i.ci = sub nsw i64 0, %i.cf
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.ci
  %i.ck = select i1 %i.cg, ptr %i.ch, ptr %i.cj   ; 2 uses
  %.not53 = icmp eq ptr %i.ck, %.04561
  br i1 %.not53, label %bb.o, label %bb.n, !llvm.loop !3157

bb.o:                                             ; preds = %bb.n
  store i32 %i.ca, ptr %.0, align 4, !tbaa !296
  %i.cl = getelementptr inbounds nuw i8, ptr %.04561, i64 4 ; 4 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !296
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.e
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.044.1 = phi ptr [ %i.cl, %bb.o ], [ %.0.1, %bb.p ]
  %.0.1 = phi ptr [ %i.cn, %bb.o ], [ %i.cw, %bb.p ] ; 5 uses
  %i.co = load i32, ptr %.0.1, align 4, !tbaa !296
  store i32 %i.co, ptr %.044.1, align 4, !tbaa !296
  %i.cp = ptrtoint ptr %.0.1 to i64
  %i.cq = sub i64 %i.ac, %i.cp
  %i.cr = ashr exact i64 %i.cq, 2                 ; 2 uses
  %i.cs = icmp ugt i64 %i.cr, %i.f
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.1, i64 %i.e
  %i.cu = sub nsw i64 0, %i.cr
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.cu
  %i.cw = select i1 %i.cs, ptr %i.ct, ptr %i.cv   ; 2 uses
  %.not53.1 = icmp eq ptr %i.cw, %i.cl
  br i1 %.not53.1, label %bb.q, label %bb.p, !llvm.loop !3157

bb.q:                                             ; preds = %bb.p
  store i32 %i.cm, ptr %.0.1, align 4, !tbaa !296
  %i.cx = getelementptr inbounds nuw i8, ptr %.04561, i64 8 ; 2 uses
  %.not.1 = icmp eq ptr %i.cx, %i.bj
  br i1 %.not.1, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.new, !llvm.loop !3158

_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit: ; preds = %.prol.loopexit, %bb.q, %.lr.ph.i, %middle.block, %_ZN5boost7movelib3gcdImEET_S2_S2_.exit, %bb.b, %bb.a
  %.046 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.h, %_ZN5boost7movelib3gcdImEET_S2_S2_.exit ], [ %i.h, %middle.block ], [ %i.h, %.lr.ph.i ], [ %i.h, %bb.q ], [ %i.h, %.prol.loopexit ]
  ret ptr %.046
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_NS0_7move_opES3_EEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_T3_T4_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %7 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %9 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %i.c = alloca ptr, align 8                      ; 10 uses
  %i.d = alloca ptr, align 8                      ; 9 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 4 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %16 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %i.f = add i64 %5, %4                           ; 6 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %7, ptr %i.c, align 8, !tbaa !299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %7, ptr %i.d, align 8, !tbaa !299
  %i.h = getelementptr [4 x i8], ptr %1, i64 %3   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store ptr %i.h, ptr %i.e, align 8, !tbaa !299
  %i.i = mul i64 %i.f, %2
  %i.j = getelementptr [4 x i8], ptr %i.h, i64 %i.i ; 9 uses
  %.not215 = icmp eq i64 %i.f, 0
  br i1 %.not215, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit150, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = icmp eq i64 %5, 0
  %i.l = select i1 %i.k, i64 0, i64 %4            ; 2 uses
  %i.m = add i64 %i.l, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.f)
  %.idx207 = shl i64 %2, 2                        ; 7 uses
  %.not121 = icmp eq i64 %6, 0
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f
  %.not2830.i = icmp eq i64 %2, 0
  %scevgep = getelementptr i8, ptr %7, i64 %.idx207 ; 2 uses
  %i.o = shl i64 %3, 2                            ; 2 uses
  %i.p = add i64 %i.o, 4
  %i.q = add i64 %i.o, %i.b
  %i.r = add i64 %i.q, %.idx207
  %i.s = add i64 %i.r, -4
  %i.t = shl i64 %3, 2
  %i.u = add i64 %i.t, %i.b
  %i.v = add i64 %i.u, %.idx207
  %i.w = add i64 %i.v, -4
  %i.x = add i64 %.idx207, -4                     ; 2 uses
  %i.y = lshr exact i64 %i.x, 2
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 44
  %bound0304 = icmp ult ptr %7, %i.j
  %bound1305 = icmp ult ptr %i.h, %scevgep
  %found.conflict306 = and i1 %bound0304, %bound1305
  %stride.check = icmp slt i64 %.idx207, 0
  %i.aa = or i1 %found.conflict306, %stride.check
  %n.vec = and i64 %i.z, 9223372036854775800      ; 3 uses
  %i.ab = shl i64 %n.vec, 2                       ; 3 uses
  %i.ac = getelementptr i8, ptr %7, i64 %i.ab     ; 2 uses
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.x ] ; 2 uses
  %i.ad = phi ptr [ %7, %.lr.ph ], [ %i.gc, %bb.x ] ; 5 uses
  %i.ae = phi ptr [ %7, %.lr.ph ], [ %i.gd, %bb.x ] ; 7 uses
  %i.af = phi ptr [ %i.h, %.lr.ph ], [ %i.bd, %bb.x ] ; 9 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.gl, %bb.x ] ; 3 uses
  %.0226 = phi i64 [ %5, %.lr.ph ], [ %.1, %bb.x ] ; 2 uses
  %.0104225 = phi i64 [ %i.l, %.lr.ph ], [ %i.gj, %bb.x ] ; 4 uses
  %.0106222 = phi ptr [ %0, %.lr.ph ], [ %i.gh, %bb.x ] ; 16 uses
  %.0108221 = phi i8 [ 1, %.lr.ph ], [ %.1109, %bb.x ] ; 5 uses
  %.0111219 = phi ptr [ %i.h, %.lr.ph ], [ %i.gg, %bb.x ] ; 5 uses
  %.0114218 = phi ptr [ %1, %.lr.ph ], [ %.1115, %bb.x ] ; 8 uses
  %.0190217 = phi ptr [ %i.g, %.lr.ph ], [ %.2192, %bb.x ] ; 16 uses
  %.0194216 = phi i64 [ %i.f, %.lr.ph ], [ %i.gm, %bb.x ] ; 4 uses
  %i.ag = ptrtoaddr ptr %i.ad to i64
  %.0114218320 = ptrtoaddr ptr %.0114218 to i64
  %i.ah = ptrtoaddr ptr %i.ae to i64              ; 2 uses
  %i.ai = icmp ult i64 %.0104225, %.0
  br i1 %i.ai, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.ax, %.thread24.i ], [ %.0104225, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.aw, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.aj = mul i64 %.02226.i, %2
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.aj
  %i.al = mul i64 %.027.i, %2
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.al
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.0106222, i64 %.02226.i
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.0106222, i64 %.027.i
  %i.ap = load i32, ptr %i.am, align 4, !tbaa !296 ; 2 uses
  %i.aq = load i32, ptr %i.ak, align 4, !tbaa !296 ; 2 uses
  %i.ar = icmp slt i32 %i.ap, %i.aq
  br i1 %i.ar, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.as = icmp slt i32 %i.aq, %i.ap
  br i1 %i.as, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = load i32, ptr %i.ao, align 4, !tbaa !296
  %i.au = load i32, ptr %i.an, align 4, !tbaa !296
  %i.av = icmp slt i32 %i.at, %i.au
  %cond.fr.i = freeze i1 %i.av
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.aw = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.ax = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ax, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit, label %.lr.ph.i, !llvm.loop !52

_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.aw, %.thread24.i ] ; 7 uses
  %i.ay = add i64 %.022.lcssa.i, 2
  %i.az = call i64 @llvm.umax.i64(i64 %.0, i64 %i.ay) ; 2 uses
  %.sroa.speculated179 = call i64 @llvm.umin.i64(i64 %i.az, i64 %.0194216)
  %i.ba = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.ba, 2
  %i.bb = getelementptr i8, ptr %i.af, i64 %.idx  ; 10 uses
  %i.bc = getelementptr [4 x i8], ptr %i.bb, i64 %2 ; 3 uses
  %i.bd = getelementptr i8, ptr %i.af, i64 %.idx207 ; 8 uses
  %i.be = icmp eq ptr %i.ae, %i.ad
  %.not120 = icmp eq i64 %.0226, 0
  br i1 %.not120, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit
  br i1 %.not121, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = load i32, ptr %i.j, align 4, !tbaa !296
  %i.bg = load i32, ptr %i.bb, align 4, !tbaa !296
  %i.bh = icmp slt i32 %i.bf, %i.bg
  br i1 %i.bh, label %.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old123 = trunc nuw i8 %.0108221 to i1
  br i1 %.old123, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit
  %.idx208 = shl nuw nsw i64 %.022.lcssa.i, 2
  %i.bi = getelementptr inbounds nuw i8, ptr %.0106222, i64 %.idx208 ; 13 uses
  %i.bj = icmp eq ptr %.0190217, %i.n
  br i1 %i.bj, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bk = trunc nuw i8 %.0108221 to i1
  br i1 %i.bk, label %bb.j, label %.thread276

.thread276:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.bl = load i32, ptr %i.bi, align 4, !tbaa !296
  %i.bm = load i32, ptr %.0190217, align 4, !tbaa !296
  %i.bn = icmp slt i32 %i.bl, %i.bm               ; 4 uses
  %i.bo = trunc nuw i8 %.0108221 to i1            ; 2 uses
  %i.bp = xor i1 %i.bn, %i.bo
  br i1 %i.bp, label %bb.n, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.bq = phi i1 [ true, %._crit_edge ], [ %i.bn, %bb.i ]
  br i1 %i.be, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.br = add i64 %i.ag, -4
  %i.bs = sub i64 %i.br, %i.ah                    ; 2 uses
  %i.bt = lshr i64 %i.bs, 2
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %min.iters.check322 = icmp ult i64 %i.bs, 28
  %i.bv = sub i64 %i.ah, %.0114218320
  %diff.check = icmp ugt i64 %i.bv, -32
  %or.cond = select i1 %min.iters.check322, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader461, label %vector.ph324

vector.ph324:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec325 = and i64 %i.bu, 9223372036854775800  ; 3 uses
  %i.bw = shl i64 %n.vec325, 2                    ; 2 uses
  %i.bx = getelementptr i8, ptr %.0114218, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.ae, i64 %i.bw
  br label %vector.body326

vector.body326:                                   ; preds = %vector.body326, %vector.ph324
  %index327 = phi i64 [ 0, %vector.ph324 ], [ %index.next332, %vector.body326 ] ; 2 uses
  %i.bz = shl i64 %index327, 2                    ; 2 uses
  %next.gep328 = getelementptr i8, ptr %.0114218, i64 %i.bz ; 2 uses
  %next.gep329 = getelementptr i8, ptr %i.ae, i64 %i.bz ; 2 uses
  %i.ca = getelementptr i8, ptr %next.gep329, i64 16
  %wide.load330 = load <4 x i32>, ptr %next.gep329, align 4, !tbaa !296
  %wide.load331 = load <4 x i32>, ptr %i.ca, align 4, !tbaa !296
  %i.cb = getelementptr i8, ptr %next.gep328, i64 16
  store <4 x i32> %wide.load330, ptr %next.gep328, align 4, !tbaa !296
  store <4 x i32> %wide.load331, ptr %i.cb, align 4, !tbaa !296
  %index.next332 = add nuw i64 %index327, 8       ; 2 uses
  %i.cc = icmp eq i64 %index.next332, %n.vec325
  br i1 %i.cc, label %middle.block333, label %vector.body326, !llvm.loop !3161

middle.block333:                                  ; preds = %vector.body326
  %cmp.n334 = icmp eq i64 %i.bu, %n.vec325
  br i1 %cmp.n334, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit, label %.lr.ph.i.i.preheader461

.lr.ph.i.i.preheader461:                          ; preds = %.lr.ph.i.i.preheader, %middle.block333
  %.010.i.i.ph = phi ptr [ %.0114218, %.lr.ph.i.i.preheader ], [ %i.bx, %middle.block333 ]
  %.079.i.i.ph = phi ptr [ %i.ae, %.lr.ph.i.i.preheader ], [ %i.by, %middle.block333 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader461, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cf, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader461 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.ce, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader461 ] ; 2 uses
  %i.cd = load i32, ptr %.079.i.i, align 4, !tbaa !296
  store i32 %i.cd, ptr %.010.i.i, align 4, !tbaa !296
  %i.ce = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.ce, %i.ad
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit, label %.lr.ph.i.i, !llvm.loop !3162

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit: ; preds = %.lr.ph.i.i, %middle.block333, %bb.j
  store ptr %7, ptr %i.c, align 8, !tbaa !299
  %.not.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit
  br i1 %.not2830.i, label %._crit_edge.i, label %.lr.ph.i125.preheader

.lr.ph.i125.preheader:                            ; preds = %.preheader.i
  br i1 %min.iters.check, label %.lr.ph.i125.preheader460, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i125.preheader
  %bound0 = icmp ult ptr %7, %i.bc
  %bound1 = icmp ult ptr %i.bb, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.aa
  %bound0307 = icmp ult ptr %i.bb, %i.j
  %bound1308 = icmp ult ptr %i.h, %i.bc
  %found.conflict309 = and i1 %bound0307, %bound1308
  %conflict.rdx310 = or i1 %conflict.rdx, %found.conflict309
  br i1 %conflict.rdx310, label %.lr.ph.i125.preheader460, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cg = getelementptr i8, ptr %i.bb, i64 %i.ab
  %i.ch = getelementptr i8, ptr %i.af, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ci = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %7, i64 %i.ci ; 2 uses
  %next.gep311 = getelementptr i8, ptr %i.bb, i64 %i.ci ; 3 uses
  %next.gep312 = getelementptr i8, ptr %i.af, i64 %i.ci ; 2 uses
  %i.cj = getelementptr i8, ptr %next.gep311, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep311, align 4, !tbaa !296, !alias.scope !3193, !noalias !3194
  %wide.load313 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !296, !alias.scope !3193, !noalias !3194
  %i.ck = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !296, !alias.scope !3195, !noalias !3196
  store <4 x i32> %wide.load313, ptr %i.ck, align 4, !tbaa !296, !alias.scope !3195, !noalias !3196
  %i.cl = getelementptr i8, ptr %next.gep312, i64 16
  %wide.load314 = load <4 x i32>, ptr %next.gep312, align 4, !tbaa !296, !alias.scope !3194
  %wide.load315 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !296, !alias.scope !3194
  store <4 x i32> %wide.load314, ptr %next.gep311, align 4, !tbaa !296, !alias.scope !3193, !noalias !3194
  store <4 x i32> %wide.load315, ptr %i.cj, align 4, !tbaa !296, !alias.scope !3193, !noalias !3194
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !3167

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i125.preheader460

.lr.ph.i125.preheader460:                         ; preds = %vector.memcheck, %.lr.ph.i125.preheader, %middle.block
  %.033.i.ph = phi ptr [ %7, %vector.memcheck ], [ %7, %.lr.ph.i125.preheader ], [ %i.ac, %middle.block ]
  %.02032.i.ph = phi ptr [ %i.bb, %vector.memcheck ], [ %i.bb, %.lr.ph.i125.preheader ], [ %i.cg, %middle.block ]
  %.02131.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i125.preheader ], [ %i.ch, %middle.block ]
  br label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %.lr.ph.i125.preheader460, %.lr.ph.i125
  %.033.i = phi ptr [ %i.cp, %.lr.ph.i125 ], [ %.033.i.ph, %.lr.ph.i125.preheader460 ] ; 2 uses
  %.02032.i = phi ptr [ %i.co, %.lr.ph.i125 ], [ %.02032.i.ph, %.lr.ph.i125.preheader460 ] ; 3 uses
  %.02131.i = phi ptr [ %i.cn, %.lr.ph.i125 ], [ %.02131.i.ph, %.lr.ph.i125.preheader460 ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.02131.i, i64 4 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.02032.i, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %.033.i, i64 4 ; 2 uses
  %i.cq = load i32, ptr %.02032.i, align 4, !tbaa !296
  store i32 %i.cq, ptr %.033.i, align 4, !tbaa !296
  %i.cr = load i32, ptr %.02131.i, align 4, !tbaa !296
  store i32 %i.cr, ptr %.02032.i, align 4, !tbaa !296
  %.not28.i = icmp eq ptr %i.cn, %i.bd
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i125, !llvm.loop !3168

._crit_edge.i:                                    ; preds = %.lr.ph.i125, %middle.block, %.preheader.i
  %.0.lcssa.i = phi ptr [ %7, %.preheader.i ], [ %i.ac, %middle.block ], [ %i.cp, %.lr.ph.i125 ] ; 2 uses
  %.not29.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  %i.cs = load i32, ptr %i.bi, align 4, !tbaa !296
  %i.ct = load i32, ptr %.0106222, align 4, !tbaa !296
  store i32 %i.ct, ptr %i.bi, align 4, !tbaa !296
  store i32 %i.cs, ptr %.0106222, align 4, !tbaa !296
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %i.cu = icmp eq ptr %i.bi, %.0190217
  br i1 %i.cu, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cv = icmp eq ptr %.0190217, %.0106222
  %spec.select = select i1 %i.cv, ptr %i.bi, ptr %.0190217
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit: ; preds = %bb.m, %bb.l, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit
  %.5 = phi ptr [ %.0190217, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ], [ %spec.select, %bb.m ], [ %.0106222, %bb.l ]
  %.1.i = phi ptr [ %7, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ], [ %.0.lcssa.i, %bb.m ], [ %.0.lcssa.i, %bb.l ] ; 2 uses
  store ptr %.1.i, ptr %i.d, align 8, !tbaa !299
  br label %bb.x

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br i1 %i.bo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cw = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_(ptr noundef %.0114218, ptr noundef %.0111219, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.bd, ptr noundef %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit

bb.p:                                             ; preds = %.thread276, %bb.n
  %i.cx = phi i1 [ true, %.thread276 ], [ %i.bn, %bb.n ]
  store ptr %8, ptr %9, align 8, !tbaa !439
  %i.cy = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPiS3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_(ptr noundef %.0114218, ptr noundef %.0111219, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.bd, ptr noundef %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dead_on_return %9)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit: ; preds = %bb.o, %bb.p
  %i.cz = phi i1 [ %i.bn, %bb.o ], [ %i.cx, %bb.p ]
  %i.da = phi i1 [ true, %bb.o ], [ false, %bb.p ]
  %i.db = phi ptr [ %i.cw, %bb.o ], [ %i.cy, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.dc = load ptr, ptr %i.c, align 8, !tbaa !299 ; 4 uses
  %i.dd = load ptr, ptr %i.d, align 8, !tbaa !299 ; 4 uses
  %i.de = icmp eq ptr %i.dc, %i.dd                ; 2 uses
  br i1 %i.de, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit
  store ptr %7, ptr %i.c, align 8, !tbaa !299
  %i.df = load ptr, ptr %i.e, align 8, !tbaa !299 ; 10 uses
  %i.dg = ptrtoint ptr %i.bd to i64
  %i.dh = ptrtoint ptr %i.df to i64               ; 3 uses
  %i.di = sub i64 %i.dg, %i.dh                    ; 2 uses
  %i.dj = ashr exact i64 %i.di, 2
  %i.dk = sub nsw i64 0, %i.dj
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.dk ; 7 uses
  %.not.i126 = icmp eq ptr %i.df, %i.dl
  br i1 %.not.i126, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140, label %.preheader.i127

.preheader.i127:                                  ; preds = %bb.q
  %.not2830.i128 = icmp eq ptr %i.df, %i.bd
  br i1 %.not2830.i128, label %._crit_edge.i134, label %.lr.ph.i129.preheader

.lr.ph.i129.preheader:                            ; preds = %.preheader.i127
  %i.dm = mul i64 %indvar, %.idx207               ; 3 uses
  %i.dn = add i64 %i.w, %i.dm                     ; 2 uses
  %i.do = sub i64 %i.dn, %i.dh                    ; 2 uses
  %i.dp = lshr i64 %i.do, 2
  %i.dq = add nuw nsw i64 %i.dp, 1                ; 2 uses
  %min.iters.check356 = icmp ult i64 %i.do, 76
  br i1 %min.iters.check356, label %.lr.ph.i129.preheader462, label %vector.memcheck357

vector.memcheck357:                               ; preds = %.lr.ph.i129.preheader
  %i.dr = add i64 %i.s, %i.dm
  %i.ds = sub i64 %i.dr, %i.dh
  %i.dt = and i64 %i.ds, -4                       ; 2 uses
  %17 = add i64 %i.dt, 4                          ; 2 uses
  %i.du = getelementptr i8, ptr %7, i64 %17       ; 2 uses
  %i.dv = add i64 %i.p, %i.dm
  %i.dw = shl i64 %.022.lcssa.i, 2
  %i.dx = add i64 %i.dw, 4
  %i.dy = mul i64 %2, %i.dx
  %i.dz = add i64 %i.dv, %i.dy
  %i.ea = add i64 %i.dz, %i.dt
  %i.eb = sub i64 %i.ea, %i.di
  %i.ec = getelementptr i8, ptr %1, i64 %i.eb     ; 2 uses
  %i.ed = getelementptr i8, ptr %i.df, i64 %17    ; 2 uses
  %bound0358 = icmp ult ptr %7, %i.ec
  %bound1359 = icmp ult ptr %i.dl, %i.du
  %found.conflict360 = and i1 %bound0358, %bound1359
  %bound0361 = icmp ult ptr %7, %i.ed
  %bound1362 = icmp ult ptr %i.df, %i.du
  %found.conflict363 = and i1 %bound0361, %bound1362
  %conflict.rdx364 = or i1 %found.conflict360, %found.conflict363
  %bound0365 = icmp ult ptr %i.dl, %i.ed
  %bound1366 = icmp ult ptr %i.df, %i.ec
  %found.conflict367 = and i1 %bound0365, %bound1366
  %conflict.rdx368 = or i1 %conflict.rdx364, %found.conflict367
  br i1 %conflict.rdx368, label %.lr.ph.i129.preheader462, label %vector.ph369

vector.ph369:                                     ; preds = %vector.memcheck357
  %n.vec370 = and i64 %i.dq, 9223372036854775800  ; 3 uses
  %i.ee = shl i64 %n.vec370, 2                    ; 3 uses
  %i.ef = getelementptr i8, ptr %7, i64 %i.ee     ; 2 uses
  %i.eg = getelementptr i8, ptr %i.dl, i64 %i.ee
  %i.eh = getelementptr i8, ptr %i.df, i64 %i.ee
  br label %vector.body371

vector.body371:                                   ; preds = %vector.body371, %vector.ph369
  %index372 = phi i64 [ 0, %vector.ph369 ], [ %index.next380, %vector.body371 ] ; 2 uses
  %i.ei = shl i64 %index372, 2                    ; 3 uses
  %next.gep373 = getelementptr i8, ptr %7, i64 %i.ei ; 2 uses
  %next.gep374 = getelementptr i8, ptr %i.dl, i64 %i.ei ; 3 uses
  %next.gep375 = getelementptr i8, ptr %i.df, i64 %i.ei ; 2 uses
  %i.ej = getelementptr i8, ptr %next.gep374, i64 16 ; 2 uses
  %wide.load376 = load <4 x i32>, ptr %next.gep374, align 4, !tbaa !296, !alias.scope !3197, !noalias !3198
  %wide.load377 = load <4 x i32>, ptr %i.ej, align 4, !tbaa !296, !alias.scope !3197, !noalias !3198
  %i.ek = getelementptr i8, ptr %next.gep373, i64 16
  store <4 x i32> %wide.load376, ptr %next.gep373, align 4, !tbaa !296, !alias.scope !3199, !noalias !3200
  store <4 x i32> %wide.load377, ptr %i.ek, align 4, !tbaa !296, !alias.scope !3199, !noalias !3200
  %i.el = getelementptr i8, ptr %next.gep375, i64 16
  %wide.load378 = load <4 x i32>, ptr %next.gep375, align 4, !tbaa !296, !alias.scope !3198
  %wide.load379 = load <4 x i32>, ptr %i.el, align 4, !tbaa !296, !alias.scope !3198
  store <4 x i32> %wide.load378, ptr %next.gep374, align 4, !tbaa !296, !alias.scope !3197, !noalias !3198
  store <4 x i32> %wide.load379, ptr %i.ej, align 4, !tbaa !296, !alias.scope !3197, !noalias !3198
  %index.next380 = add nuw i64 %index372, 8       ; 2 uses
  %i.em = icmp eq i64 %index.next380, %n.vec370
  br i1 %i.em, label %middle.block381, label %vector.body371, !llvm.loop !3173

middle.block381:                                  ; preds = %vector.body371
  %cmp.n382 = icmp eq i64 %i.dq, %n.vec370
  br i1 %cmp.n382, label %._crit_edge.i134, label %.lr.ph.i129.preheader462

.lr.ph.i129.preheader462:                         ; preds = %vector.memcheck357, %.lr.ph.i129.preheader, %middle.block381
  %.033.i130.ph = phi ptr [ %7, %vector.memcheck357 ], [ %7, %.lr.ph.i129.preheader ], [ %i.ef, %middle.block381 ] ; 2 uses
  %.02032.i131.ph = phi ptr [ %i.dl, %vector.memcheck357 ], [ %i.dl, %.lr.ph.i129.preheader ], [ %i.eg, %middle.block381 ] ; 2 uses
  %.02131.i132.ph = phi ptr [ %i.df, %vector.memcheck357 ], [ %i.df, %.lr.ph.i129.preheader ], [ %i.eh, %middle.block381 ] ; 3 uses
  %.02131.i132.ph465 = ptrtoaddr ptr %.02131.i132.ph to i64
  %i.en = sub i64 %i.dn, %.02131.i132.ph465       ; 2 uses
  %i.eo = lshr i64 %i.en, 2
  %i.ep = add nuw nsw i64 %i.eo, 1
  %xtraiter = and i64 %i.ep, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i129.prol.loopexit, label %.lr.ph.i129.prol

.lr.ph.i129.prol:                                 ; preds = %.lr.ph.i129.preheader462, %.lr.ph.i129.prol
  %.033.i130.prol = phi ptr [ %i.es, %.lr.ph.i129.prol ], [ %.033.i130.ph, %.lr.ph.i129.preheader462 ] ; 2 uses
  %.02032.i131.prol = phi ptr [ %i.er, %.lr.ph.i129.prol ], [ %.02032.i131.ph, %.lr.ph.i129.preheader462 ] ; 3 uses
  %.02131.i132.prol = phi ptr [ %i.eq, %.lr.ph.i129.prol ], [ %.02131.i132.ph, %.lr.ph.i129.preheader462 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i129.prol ], [ 0, %.lr.ph.i129.preheader462 ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.02131.i132.prol, i64 4 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.02032.i131.prol, i64 4 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.033.i130.prol, i64 4 ; 3 uses
  %i.et = load i32, ptr %.02032.i131.prol, align 4, !tbaa !296
  store i32 %i.et, ptr %.033.i130.prol, align 4, !tbaa !296
  %i.eu = load i32, ptr %.02131.i132.prol, align 4, !tbaa !296
  store i32 %i.eu, ptr %.02032.i131.prol, align 4, !tbaa !296
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i129.prol.loopexit, label %.lr.ph.i129.prol, !llvm.loop !3174

.lr.ph.i129.prol.loopexit:                        ; preds = %.lr.ph.i129.prol, %.lr.ph.i129.preheader462
  %.lcssa463.unr = phi ptr [ poison, %.lr.ph.i129.preheader462 ], [ %i.es, %.lr.ph.i129.prol ]
  %.033.i130.unr = phi ptr [ %.033.i130.ph, %.lr.ph.i129.preheader462 ], [ %i.es, %.lr.ph.i129.prol ]
  %.02032.i131.unr = phi ptr [ %.02032.i131.ph, %.lr.ph.i129.preheader462 ], [ %i.er, %.lr.ph.i129.prol ]
  %.02131.i132.unr = phi ptr [ %.02131.i132.ph, %.lr.ph.i129.preheader462 ], [ %i.eq, %.lr.ph.i129.prol ]
  %i.ev = icmp ult i64 %i.en, 12
  br i1 %i.ev, label %._crit_edge.i134, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129
  %.033.i130 = phi ptr [ %i.fn, %.lr.ph.i129 ], [ %.033.i130.unr, %.lr.ph.i129.prol.loopexit ] ; 5 uses
  %.02032.i131 = phi ptr [ %i.fm, %.lr.ph.i129 ], [ %.02032.i131.unr, %.lr.ph.i129.prol.loopexit ] ; 6 uses
  %.02131.i132 = phi ptr [ %i.fl, %.lr.ph.i129 ], [ %.02131.i132.unr, %.lr.ph.i129.prol.loopexit ] ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 4
  %i.ex = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 4 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.033.i130, i64 4
  %i.ez = load i32, ptr %.02032.i131, align 4, !tbaa !296
  store i32 %i.ez, ptr %.033.i130, align 4, !tbaa !296
  %i.fa = load i32, ptr %.02131.i132, align 4, !tbaa !296
  store i32 %i.fa, ptr %.02032.i131, align 4, !tbaa !296
  %i.fb = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 8 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.033.i130, i64 8
  %i.fe = load i32, ptr %i.ex, align 4, !tbaa !296
  store i32 %i.fe, ptr %i.ey, align 4, !tbaa !296
  %i.ff = load i32, ptr %i.ew, align 4, !tbaa !296
  store i32 %i.ff, ptr %i.ex, align 4, !tbaa !296
  %i.fg = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 12
  %i.fh = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 12 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.033.i130, i64 12
  %i.fj = load i32, ptr %i.fc, align 4, !tbaa !296
  store i32 %i.fj, ptr %i.fd, align 4, !tbaa !296
  %i.fk = load i32, ptr %i.fb, align 4, !tbaa !296
  store i32 %i.fk, ptr %i.fc, align 4, !tbaa !296
  %i.fl = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 16 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 16
  %i.fn = getelementptr inbounds nuw i8, ptr %.033.i130, i64 16 ; 2 uses
  %i.fo = load i32, ptr %i.fh, align 4, !tbaa !296
  store i32 %i.fo, ptr %i.fi, align 4, !tbaa !296
  %i.fp = load i32, ptr %i.fg, align 4, !tbaa !296
  store i32 %i.fp, ptr %i.fh, align 4, !tbaa !296
  %.not28.i133.3 = icmp eq ptr %i.fl, %i.bd
  br i1 %.not28.i133.3, label %._crit_edge.i134, label %.lr.ph.i129, !llvm.loop !3175

._crit_edge.i134:                                 ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129, %middle.block381, %.preheader.i127
  %.0.lcssa.i135 = phi ptr [ %7, %.preheader.i127 ], [ %i.ef, %middle.block381 ], [ %.lcssa463.unr, %.lr.ph.i129.prol.loopexit ], [ %i.fn, %.lr.ph.i129 ] ; 2 uses
  %.not29.i136 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i136, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i134
  %i.fq = load i32, ptr %i.bi, align 4, !tbaa !296
  %i.fr = load i32, ptr %.0106222, align 4, !tbaa !296
  store i32 %i.fr, ptr %i.bi, align 4, !tbaa !296
  store i32 %i.fq, ptr %.0106222, align 4, !tbaa !296
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i134
  %i.fs = icmp eq ptr %i.bi, %.0190217
  br i1 %i.fs, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ft = icmp eq ptr %.0190217, %.0106222
  %spec.select204 = select i1 %i.ft, ptr %i.bi, ptr %.0190217
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140: ; preds = %bb.t, %bb.s, %bb.q
  %.6 = phi ptr [ %.0190217, %bb.q ], [ %spec.select204, %bb.t ], [ %.0106222, %bb.s ]
  %.1.i137 = phi ptr [ %7, %bb.q ], [ %.0.lcssa.i135, %bb.t ], [ %.0.lcssa.i135, %bb.s ] ; 2 uses
  store ptr %.1.i137, ptr %i.d, align 8, !tbaa !299
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit
  %.not.i141 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not.i141, label %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fu = load i32, ptr %i.bi, align 4, !tbaa !296
  %i.fv = load i32, ptr %.0106222, align 4, !tbaa !296
  store i32 %i.fv, ptr %i.bi, align 4, !tbaa !296
  store i32 %i.fu, ptr %.0106222, align 4, !tbaa !296
  %i.fw = icmp eq ptr %i.bi, %.0190217
  br i1 %i.fw, label %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fx = icmp eq ptr %.0190217, %.0106222
  %spec.select205 = select i1 %i.fx, ptr %i.bi, ptr %.0190217
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit

_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit: ; preds = %bb.w, %bb.u, %bb.v, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140
  %i.fy = phi ptr [ %.1.i137, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140 ], [ %i.dd, %bb.u ], [ %i.dd, %bb.w ], [ %i.dd, %bb.v ]
  %i.fz = phi ptr [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140 ], [ %i.dc, %bb.u ], [ %i.dc, %bb.w ], [ %i.dc, %bb.v ]
  %.1191 = phi ptr [ %.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140 ], [ %.0190217, %bb.u ], [ %spec.select205, %bb.w ], [ %.0106222, %bb.v ]
  %i.ga = xor i1 %i.da, %i.de
  %i.gb = zext i1 %i.ga to i8
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit
  %i.gc = phi ptr [ %i.fy, %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit ], [ %.1.i, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit ] ; 2 uses
  %i.gd = phi ptr [ %i.fz, %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit ], [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit ] ; 2 uses
  %i.ge = phi i1 [ %i.cz, %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit ], [ %i.bq, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit ]
  %.2192 = phi ptr [ %.1191, %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit ], [ %.5, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit ] ; 2 uses
  %.1115 = phi ptr [ %i.db, %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit ], [ %i.af, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit ] ; 2 uses
  %.1109 = phi i8 [ %i.gb, %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit ], [ %.0108221, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.ge, true
  %i.gf = sext i1 %not. to i64
  %.1 = add i64 %.0226, %i.gf
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.0111219, i64 %2 ; 2 uses
  store ptr %i.bd, ptr %i.e, align 8, !tbaa !299
  %i.gh = getelementptr inbounds nuw i8, ptr %.0106222, i64 4
  %i.gi = icmp ne i64 %.0104225, 0
  %.neg = sext i1 %i.gi to i64
  %i.gj = add i64 %.0104225, %.neg
  %i.gk = icmp ne i64 %i.az, 0
  %.neg122 = sext i1 %i.gk to i64
  %i.gl = add i64 %.sroa.speculated179, %.neg122
  %i.gm = add i64 %.0194216, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gm, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !3176

.thread:                                          ; preds = %bb.x, %bb.g, %bb.f
  %i.gn = phi ptr [ %i.gc, %bb.x ], [ %i.ad, %bb.g ], [ %i.ad, %bb.f ] ; 3 uses
  %i.go = phi ptr [ %i.gd, %bb.x ], [ %i.ae, %bb.g ], [ %i.ae, %bb.f ] ; 5 uses
  %.0194.lcssa.ph = phi i64 [ 0, %bb.x ], [ %.0194216, %bb.g ], [ %.0194216, %bb.f ] ; 3 uses
  %.0190.lcssa.ph = phi ptr [ %.2192, %bb.x ], [ %.0190217, %bb.g ], [ %.0190217, %bb.f ] ; 3 uses
  %.0114.lcssa.ph = phi ptr [ %.1115, %bb.x ], [ %.0114218, %bb.g ], [ %.0114218, %bb.f ] ; 5 uses
  %.0111.lcssa.ph = phi ptr [ %i.gg, %bb.x ], [ %.0111219, %bb.g ], [ %.0111219, %bb.f ] ; 4 uses
  %.0108.lcssa.ph = phi i8 [ %.1109, %bb.x ], [ 1, %bb.g ], [ %.0108221, %bb.f ]
  %i.gp = trunc nuw i8 %.0108.lcssa.ph to i1
  %i.gq = select i1 %i.gp, ptr %.0114.lcssa.ph, ptr %.0111.lcssa.ph ; 3 uses
  %.not8.i.i144 = icmp eq ptr %i.go, %i.gn
  br i1 %.not8.i.i144, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit150, label %.lr.ph.i.i145.preheader

.lr.ph.i.i145.preheader:                          ; preds = %.thread
  %i.gr = ptrtoaddr ptr %i.go to i64              ; 2 uses
  %.0114.lcssa.ph389 = ptrtoaddr ptr %.0114.lcssa.ph to i64
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_NS0_7move_opES3_EEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_T3_T4_:bb.a
  %n.vec414 = and i64 %i.hl, 9223372036854775800  ; 3 uses
  %i.hr = shl i64 %n.vec414, 2                    ; 2 uses
  %i.hs = getelementptr i8, ptr %7, i64 %i.hr
  %i.ht = getelementptr i8, ptr %i.j, i64 %i.hr
  br label %vector.body415

vector.body415:                                   ; preds = %vector.body415, %vector.ph413
  %index416 = phi i64 [ 0, %vector.ph413 ], [ %index.next421, %vector.body415 ] ; 2 uses
  %i.hu = shl i64 %index416, 2                    ; 2 uses
  %next.gep417 = getelementptr i8, ptr %7, i64 %i.hu ; 2 uses
  %next.gep418 = getelementptr i8, ptr %i.j, i64 %i.hu ; 2 uses
  %i.hv = getelementptr i8, ptr %next.gep418, i64 16
  %wide.load419 = load <4 x i32>, ptr %next.gep418, align 4, !tbaa !296
  %wide.load420 = load <4 x i32>, ptr %i.hv, align 4, !tbaa !296
  %i.hw = getelementptr i8, ptr %next.gep417, i64 16
  store <4 x i32> %wide.load419, ptr %next.gep417, align 4, !tbaa !296
  store <4 x i32> %wide.load420, ptr %i.hw, align 4, !tbaa !296
  %index.next421 = add nuw i64 %index416, 8       ; 2 uses
  %i.hx = icmp eq i64 %index.next421, %n.vec414
  br i1 %i.hx, label %middle.block422, label %vector.body415, !llvm.loop !3179

middle.block422:                                  ; preds = %vector.body415
  %cmp.n423 = icmp eq i64 %i.hl, %n.vec414
  br i1 %cmp.n423, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit157, label %.lr.ph.i.i152.preheader458

.lr.ph.i.i152.preheader458:                       ; preds = %vector.memcheck411, %.lr.ph.i.i152.preheader, %middle.block422
  %.010.i.i153.ph = phi ptr [ %7, %vector.memcheck411 ], [ %7, %.lr.ph.i.i152.preheader ], [ %i.hs, %middle.block422 ]
  %.079.i.i154.ph = phi ptr [ %i.j, %vector.memcheck411 ], [ %i.j, %.lr.ph.i.i152.preheader ], [ %i.ht, %middle.block422 ]
  br label %.lr.ph.i.i152

.lr.ph.i.i152:                                    ; preds = %.lr.ph.i.i152.preheader458, %.lr.ph.i.i152
  %.010.i.i153 = phi ptr [ %i.ia, %.lr.ph.i.i152 ], [ %.010.i.i153.ph, %.lr.ph.i.i152.preheader458 ] ; 2 uses
  %.079.i.i154 = phi ptr [ %i.hz, %.lr.ph.i.i152 ], [ %.079.i.i154.ph, %.lr.ph.i.i152.preheader458 ] ; 2 uses
  %i.hy = load i32, ptr %.079.i.i154, align 4, !tbaa !296
  store i32 %i.hy, ptr %.010.i.i153, align 4, !tbaa !296
  %i.hz = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 4 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 4
  %.not.i.i155 = icmp eq ptr %i.hz, %i.hi
  br i1 %.not.i.i155, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit157, label %.lr.ph.i.i152, !llvm.loop !3180

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit157: ; preds = %.lr.ph.i.i152, %middle.block422, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit150
  store ptr %7, ptr %i.c, align 8, !tbaa !299
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.ib, ptr %i.d, align 8, !tbaa !299
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store ptr %i.ib, ptr %10, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %5
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %4
  store ptr %i.id, ptr %12, align 8, !tbaa !441, !alias.scope !3201
  store ptr %.0190.lcssa284, ptr %13, align 8, !tbaa !441, !alias.scope !3202
  store ptr %i.j, ptr %14, align 8, !tbaa !441, !alias.scope !3203
  store ptr %7, ptr %15, align 8, !tbaa !441, !alias.scope !3204
  store ptr %i.hi, ptr %16, align 8, !tbaa !441, !alias.scope !3205
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_S5_S5_SG_NS0_7move_opEEET3_T_SJ_T0_T1_RT2_SM_SI_NS0_9iter_sizeISL_E4typeESQ_SQ_SQ_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %2, i64 noundef %.0194.lcssa283, i64 noundef 0, i64 noundef %.0194.lcssa283, i1 noundef zeroext true)
  %i.ie = load ptr, ptr %11, align 8, !tbaa !441  ; 2 uses
  %i.if = ptrtoaddr ptr %i.ie to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.ig = load ptr, ptr %10, align 8, !tbaa !441  ; 2 uses
  %i.ih = load ptr, ptr %i.c, align 8, !tbaa !299 ; 4 uses
  %i.ii = ptrtoaddr ptr %i.ih to i64
  %.not27.i = icmp eq ptr %i.ih, %i.ig
  br i1 %.not27.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEPiSC_EEvT2_SD_SD_T1_SE_T_T0_.exit, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit157, %bb.y
  %indvar432 = phi i64 [ %indvar.next433, %bb.y ], [ 0, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit157 ] ; 2 uses
  %.030.i = phi ptr [ %.030..i, %bb.y ], [ %i.ig, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit157 ] ; 7 uses
  %.01929.i = phi ptr [ %..01929.i, %bb.y ], [ %.0111.lcssa285, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit157 ] ; 3 uses
  %.02128.i = phi ptr [ %i.jj, %bb.y ], [ %i.ie, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit157 ] ; 5 uses
  %i.ij = icmp eq ptr %.0108.lcssa286, %.01929.i
  br i1 %i.ij, label %.lr.ph.i.i.i.preheader, label %bb.y

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i158
  %.030.i431.le = ptrtoaddr ptr %.030.i to i64    ; 2 uses
  %i.ik = add i64 %.030.i431.le, -4
  %i.il = sub i64 %i.ik, %i.ii                    ; 2 uses
  %i.im = lshr i64 %i.il, 2
  %i.in = add nuw nsw i64 %i.im, 1                ; 2 uses
  %min.iters.check435 = icmp ult i64 %i.il, 76
  br i1 %min.iters.check435, label %.lr.ph.i.i.i.preheader452, label %vector.memcheck436

vector.memcheck436:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.io = shl i64 %indvar432, 2
  %i.ip = sub i64 %i.io, %i.if
  %i.iq = add i64 %i.ip, %.030.i431.le
  %i.ir = add i64 %i.iq, -1
  %diff.check437 = icmp ult i64 %i.ir, 31
  br i1 %diff.check437, label %.lr.ph.i.i.i.preheader452, label %vector.ph438

vector.ph438:                                     ; preds = %vector.memcheck436
  %n.vec439 = and i64 %i.in, 9223372036854775800  ; 3 uses
  %i.is = mul i64 %n.vec439, -4                   ; 2 uses
  %i.it = getelementptr i8, ptr %.02128.i, i64 %i.is
  %i.iu = getelementptr i8, ptr %.030.i, i64 %i.is
  br label %vector.body440

vector.body440:                                   ; preds = %vector.body440, %vector.ph438
  %index441 = phi i64 [ 0, %vector.ph438 ], [ %index.next446, %vector.body440 ] ; 2 uses
  %i.iv = mul i64 %index441, -4                   ; 2 uses
  %next.gep442 = getelementptr i8, ptr %.02128.i, i64 %i.iv ; 2 uses
  %next.gep443 = getelementptr i8, ptr %.030.i, i64 %i.iv ; 2 uses
  %i.iw = getelementptr inbounds i8, ptr %next.gep443, i64 -16
  %i.ix = getelementptr inbounds i8, ptr %next.gep443, i64 -32
  %wide.load444 = load <4 x i32>, ptr %i.iw, align 4, !tbaa !296
  %wide.load445 = load <4 x i32>, ptr %i.ix, align 4, !tbaa !296
  %i.iy = getelementptr inbounds i8, ptr %next.gep442, i64 -16
  %i.iz = getelementptr inbounds i8, ptr %next.gep442, i64 -32
  store <4 x i32> %wide.load444, ptr %i.iy, align 4, !tbaa !296
  store <4 x i32> %wide.load445, ptr %i.iz, align 4, !tbaa !296
  %index.next446 = add nuw i64 %index441, 8       ; 2 uses
  %i.ja = icmp eq i64 %index.next446, %n.vec439
  br i1 %i.ja, label %middle.block447, label %vector.body440, !llvm.loop !3191

middle.block447:                                  ; preds = %vector.body440
  %cmp.n448 = icmp eq i64 %i.in, %n.vec439
  br i1 %cmp.n448, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEPiSC_EEvT2_SD_SD_T1_SE_T_T0_.exit, label %.lr.ph.i.i.i.preheader452

.lr.ph.i.i.i.preheader452:                        ; preds = %vector.memcheck436, %.lr.ph.i.i.i.preheader, %middle.block447
  %.010.i.i.i.ph = phi ptr [ %.02128.i, %vector.memcheck436 ], [ %.02128.i, %.lr.ph.i.i.i.preheader ], [ %i.it, %middle.block447 ]
  %.079.i.i.i.ph = phi ptr [ %.030.i, %vector.memcheck436 ], [ %.030.i, %.lr.ph.i.i.i.preheader ], [ %i.iu, %middle.block447 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader452, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.jc, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader452 ]
  %.079.i.i.i = phi ptr [ %i.jb, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader452 ]
  %i.jb = getelementptr inbounds i8, ptr %.079.i.i.i, i64 -4 ; 3 uses
  %i.jc = getelementptr inbounds i8, ptr %.010.i.i.i, i64 -4 ; 2 uses
  %i.jd = load i32, ptr %i.jb, align 4, !tbaa !296
  store i32 %i.jd, ptr %i.jc, align 4, !tbaa !296
  %.not.i.i.i = icmp eq ptr %i.ih, %i.jb
  br i1 %.not.i.i.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEPiSC_EEvT2_SD_SD_T1_SE_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !3192

bb.y:                                             ; preds = %.lr.ph.i158
  %i.je = getelementptr inbounds i8, ptr %.030.i, i64 -4 ; 2 uses
  %i.jf = getelementptr inbounds i8, ptr %.01929.i, i64 -4 ; 2 uses
  %i.jg = load i32, ptr %i.je, align 4, !tbaa !296 ; 2 uses
  %i.jh = load i32, ptr %i.jf, align 4, !tbaa !296 ; 2 uses
  %i.ji = icmp slt i32 %i.jg, %i.jh               ; 2 uses
  %i.jj = getelementptr inbounds i8, ptr %.02128.i, i64 -4 ; 2 uses
  %..i = call i32 @llvm.smax.i32(i32 %i.jg, i32 %i.jh)
  %..01929.i = select i1 %i.ji, ptr %i.jf, ptr %.01929.i
  %.030..i = select i1 %i.ji, ptr %.030.i, ptr %i.je ; 2 uses
  store i32 %..i, ptr %i.jj, align 4, !tbaa !296
  %.not.i159 = icmp eq ptr %i.ih, %.030..i
  %indvar.next433 = add i64 %indvar432, 1
  br i1 %.not.i159, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEPiSC_EEvT2_SD_SD_T1_SE_T_T0_.exit, label %.lr.ph.i158, !llvm.loop !49

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEPiSC_EEvT2_SD_SD_T1_SE_T_T0_.exit: ; preds = %bb.y, %.lr.ph.i.i.i, %middle.block447, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit157
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_NS0_7swap_opES3_EEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_T3_T4_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7) local_unnamed_addr #1 comdat {
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
  %i.e = add i64 %5, %4                           ; 5 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %7, ptr %i.b, align 8, !tbaa !299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %7, ptr %i.c, align 8, !tbaa !299
  %i.g = getelementptr [4 x i8], ptr %1, i64 %3   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.g, ptr %i.d, align 8, !tbaa !299
  %i.h = mul i64 %i.e, %2
  %i.i = getelementptr [4 x i8], ptr %i.g, i64 %i.h ; 10 uses
  %.not216 = icmp eq i64 %i.e, 0
  br i1 %.not216, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit150, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = icmp eq i64 %5, 0
  %i.k = select i1 %i.j, i64 0, i64 %4            ; 2 uses
  %i.l = add i64 %i.k, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.e)
  %.idx208 = shl i64 %2, 2                        ; 7 uses
  %.not121 = icmp eq i64 %6, 0
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  %.not2830.i = icmp eq i64 %2, 0
  %scevgep = getelementptr i8, ptr %7, i64 %.idx208 ; 2 uses
  %i.n = shl i64 %3, 2                            ; 2 uses
  %i.o = add i64 %i.n, 4
  %i.p = add i64 %i.n, %i.a
  %i.q = add i64 %i.p, %.idx208
  %i.r = add i64 %i.q, -4
  %i.s = shl i64 %3, 2
  %i.t = add i64 %i.s, %i.a
  %i.u = add i64 %i.t, %.idx208
  %i.v = add i64 %i.u, -4
  %i.w = add i64 %.idx208, -4                     ; 2 uses
  %i.x = lshr exact i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 44
  %bound0309 = icmp ult ptr %7, %i.i
  %bound1310 = icmp ult ptr %i.g, %scevgep
  %found.conflict311 = and i1 %bound0309, %bound1310
  %stride.check = icmp slt i64 %.idx208, 0
  %i.z = or i1 %found.conflict311, %stride.check
  %n.vec = and i64 %i.y, 9223372036854775800      ; 3 uses
  %i.aa = shl i64 %n.vec, 2                       ; 3 uses
  %i.ab = getelementptr i8, ptr %7, i64 %i.aa     ; 2 uses
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.x ] ; 2 uses
  %i.ac = phi ptr [ %7, %.lr.ph ], [ %i.gl, %bb.x ] ; 5 uses
  %i.ad = phi ptr [ %7, %.lr.ph ], [ %i.gm, %bb.x ] ; 10 uses
  %i.ae = phi ptr [ %i.g, %.lr.ph ], [ %i.bc, %bb.x ] ; 9 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.gu, %bb.x ] ; 3 uses
  %.0227 = phi i64 [ %5, %.lr.ph ], [ %.1, %bb.x ] ; 2 uses
  %.0104226 = phi i64 [ %i.k, %.lr.ph ], [ %i.gs, %bb.x ] ; 4 uses
  %.0106223 = phi ptr [ %0, %.lr.ph ], [ %i.gq, %bb.x ] ; 16 uses
  %.0108222 = phi i8 [ 1, %.lr.ph ], [ %.1109, %bb.x ] ; 5 uses
  %.0111220 = phi ptr [ %i.g, %.lr.ph ], [ %i.gp, %bb.x ] ; 5 uses
  %.0114219 = phi ptr [ %1, %.lr.ph ], [ %.1115, %bb.x ] ; 10 uses
  %.0191218 = phi ptr [ %i.f, %.lr.ph ], [ %.2193, %bb.x ] ; 16 uses
  %.0195217 = phi i64 [ %i.e, %.lr.ph ], [ %i.gv, %bb.x ] ; 4 uses
  %i.af = ptrtoaddr ptr %i.ac to i64
  %i.ag = ptrtoaddr ptr %i.ad to i64
  %i.ah = icmp ult i64 %.0104226, %.0
  br i1 %i.ah, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.aw, %.thread24.i ], [ %.0104226, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.av, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ai = mul i64 %.02226.i, %2
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ai
  %i.ak = mul i64 %.027.i, %2
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ak
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.0106223, i64 %.02226.i
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.0106223, i64 %.027.i
  %i.ao = load i32, ptr %i.al, align 4, !tbaa !296 ; 2 uses
  %i.ap = load i32, ptr %i.aj, align 4, !tbaa !296 ; 2 uses
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ar = icmp slt i32 %i.ap, %i.ao
  br i1 %i.ar, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = load i32, ptr %i.an, align 4, !tbaa !296
  %i.at = load i32, ptr %i.am, align 4, !tbaa !296
  %i.au = icmp slt i32 %i.as, %i.at
  %cond.fr.i = freeze i1 %i.au
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.av = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.aw = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aw, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit, label %.lr.ph.i, !llvm.loop !52

_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.av, %.thread24.i ] ; 7 uses
  %i.ax = add i64 %.022.lcssa.i, 2
  %i.ay = call i64 @llvm.umax.i64(i64 %.0, i64 %i.ax) ; 2 uses
  %.sroa.speculated180 = call i64 @llvm.umin.i64(i64 %i.ay, i64 %.0195217)
  %i.az = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.az, 2
  %i.ba = getelementptr i8, ptr %i.ae, i64 %.idx  ; 10 uses
  %i.bb = getelementptr [4 x i8], ptr %i.ba, i64 %2 ; 3 uses
  %i.bc = getelementptr i8, ptr %i.ae, i64 %.idx208 ; 8 uses
  %i.bd = icmp eq ptr %i.ad, %i.ac
  %.not120 = icmp eq i64 %.0227, 0
  br i1 %.not120, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit
  br i1 %.not121, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = load i32, ptr %i.i, align 4, !tbaa !296
  %i.bf = load i32, ptr %i.ba, align 4, !tbaa !296
  %i.bg = icmp slt i32 %i.be, %i.bf
  br i1 %i.bg, label %.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old123 = trunc nuw i8 %.0108222 to i1
  br i1 %.old123, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit
  %.idx209 = shl nuw nsw i64 %.022.lcssa.i, 2
  %i.bh = getelementptr inbounds nuw i8, ptr %.0106223, i64 %.idx209 ; 13 uses
  %i.bi = icmp eq ptr %.0191218, %i.m
  br i1 %i.bi, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bj = trunc nuw i8 %.0108222 to i1
  br i1 %i.bj, label %bb.j, label %.thread281

.thread281:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !296
  %i.bl = load i32, ptr %.0191218, align 4, !tbaa !296
  %i.bm = icmp slt i32 %i.bk, %i.bl               ; 4 uses
  %i.bn = trunc nuw i8 %.0108222 to i1            ; 2 uses
  %i.bo = xor i1 %i.bm, %i.bn
  br i1 %i.bo, label %bb.n, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.bp = phi i1 [ true, %._crit_edge ], [ %i.bm, %bb.i ]
  br i1 %i.bd, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.bq = add i64 %i.af, -4
  %i.br = sub i64 %i.bq, %i.ag                    ; 3 uses
  %i.bs = lshr i64 %i.br, 2
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check334 = icmp ult i64 %i.br, 28
  br i1 %min.iters.check334, label %.lr.ph.i.i.preheader501, label %vector.memcheck335

vector.memcheck335:                               ; preds = %.lr.ph.i.i.preheader
  %i.bu = and i64 %i.br, -4
  %i.bv = add i64 %i.bu, 4                        ; 2 uses
  %i.bw = getelementptr i8, ptr %i.ad, i64 %i.bv
  %i.bx = getelementptr i8, ptr %.0114219, i64 %i.bv
  %bound0336 = icmp ult ptr %i.ad, %i.bx
  %bound1337 = icmp ult ptr %.0114219, %i.bw
  %found.conflict338 = and i1 %bound0336, %bound1337
  br i1 %found.conflict338, label %.lr.ph.i.i.preheader501, label %vector.ph339

vector.ph339:                                     ; preds = %vector.memcheck335
  %n.vec340 = and i64 %i.bt, 9223372036854775800  ; 3 uses
  %i.by = shl i64 %n.vec340, 2                    ; 2 uses
  %i.bz = getelementptr i8, ptr %.0114219, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.ad, i64 %i.by
  br label %vector.body341

vector.body341:                                   ; preds = %vector.body341, %vector.ph339
  %index342 = phi i64 [ 0, %vector.ph339 ], [ %index.next349, %vector.body341 ] ; 2 uses
  %i.cb = shl i64 %index342, 2                    ; 2 uses
  %next.gep343 = getelementptr i8, ptr %.0114219, i64 %i.cb ; 3 uses
  %next.gep344 = getelementptr i8, ptr %i.ad, i64 %i.cb ; 3 uses
  %i.cc = getelementptr i8, ptr %next.gep344, i64 16 ; 2 uses
  %wide.load345 = load <4 x i32>, ptr %next.gep344, align 4, !tbaa !296, !alias.scope !3251, !noalias !3252
  %wide.load346 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !296, !alias.scope !3251, !noalias !3252
  %i.cd = getelementptr i8, ptr %next.gep343, i64 16 ; 2 uses
  %wide.load347 = load <4 x i32>, ptr %next.gep343, align 4, !tbaa !296, !alias.scope !3252
  %wide.load348 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !296, !alias.scope !3252
  store <4 x i32> %wide.load347, ptr %next.gep344, align 4, !tbaa !296, !alias.scope !3251, !noalias !3252
  store <4 x i32> %wide.load348, ptr %i.cc, align 4, !tbaa !296, !alias.scope !3251, !noalias !3252
  store <4 x i32> %wide.load345, ptr %next.gep343, align 4, !tbaa !296, !alias.scope !3252
  store <4 x i32> %wide.load346, ptr %i.cd, align 4, !tbaa !296, !alias.scope !3252
  %index.next349 = add nuw i64 %index342, 8       ; 2 uses
  %i.ce = icmp eq i64 %index.next349, %n.vec340
  br i1 %i.ce, label %middle.block350, label %vector.body341, !llvm.loop !3209

middle.block350:                                  ; preds = %vector.body341
  %cmp.n351 = icmp eq i64 %i.bt, %n.vec340
  br i1 %cmp.n351, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit, label %.lr.ph.i.i.preheader501

.lr.ph.i.i.preheader501:                          ; preds = %vector.memcheck335, %.lr.ph.i.i.preheader, %middle.block350
  %.010.i.i.ph = phi ptr [ %.0114219, %vector.memcheck335 ], [ %.0114219, %.lr.ph.i.i.preheader ], [ %i.bz, %middle.block350 ]
  %.079.i.i.ph = phi ptr [ %i.ad, %vector.memcheck335 ], [ %i.ad, %.lr.ph.i.i.preheader ], [ %i.ca, %middle.block350 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader501, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ci, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader501 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.ch, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader501 ] ; 3 uses
  %i.cf = load i32, ptr %.079.i.i, align 4, !tbaa !296
  %i.cg = load i32, ptr %.010.i.i, align 4, !tbaa !296
  store i32 %i.cg, ptr %.079.i.i, align 4, !tbaa !296
  store i32 %i.cf, ptr %.010.i.i, align 4, !tbaa !296
  %i.ch = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.ch, %i.ac
  br i1 %.not.i.i, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit, label %.lr.ph.i.i, !llvm.loop !3210

_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit: ; preds = %.lr.ph.i.i, %middle.block350, %bb.j
  store ptr %7, ptr %i.b, align 8, !tbaa !299
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit
  br i1 %.not2830.i, label %._crit_edge.i, label %.lr.ph.i125.preheader

.lr.ph.i125.preheader:                            ; preds = %.preheader.i
  br i1 %min.iters.check, label %.lr.ph.i125.preheader500, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i125.preheader
  %bound0 = icmp ult ptr %7, %i.bb
  %bound1 = icmp ult ptr %i.ba, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.z
  %bound0312 = icmp ult ptr %i.ba, %i.i
  %bound1313 = icmp ult ptr %i.g, %i.bb
  %found.conflict314 = and i1 %bound0312, %bound1313
  %conflict.rdx315 = or i1 %conflict.rdx, %found.conflict314
  br i1 %conflict.rdx315, label %.lr.ph.i125.preheader500, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cj = getelementptr i8, ptr %i.ba, i64 %i.aa
  %i.ck = getelementptr i8, ptr %i.ae, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cl = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %7, i64 %i.cl ; 3 uses
  %next.gep316 = getelementptr i8, ptr %i.ba, i64 %i.cl ; 3 uses
  %next.gep317 = getelementptr i8, ptr %i.ae, i64 %i.cl ; 3 uses
  %i.cm = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !296, !alias.scope !3253, !noalias !3254
  %wide.load318 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !296, !alias.scope !3253, !noalias !3254
  %i.cn = getelementptr i8, ptr %next.gep316, i64 16 ; 2 uses
  %wide.load319 = load <4 x i32>, ptr %next.gep316, align 4, !tbaa !296, !alias.scope !3255, !noalias !3256
  %wide.load320 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !296, !alias.scope !3255, !noalias !3256
  store <4 x i32> %wide.load319, ptr %next.gep, align 4, !tbaa !296, !alias.scope !3253, !noalias !3254
  store <4 x i32> %wide.load320, ptr %i.cm, align 4, !tbaa !296, !alias.scope !3253, !noalias !3254
  %i.co = getelementptr i8, ptr %next.gep317, i64 16 ; 2 uses
  %wide.load321 = load <4 x i32>, ptr %next.gep317, align 4, !tbaa !296, !alias.scope !3256
  %wide.load322 = load <4 x i32>, ptr %i.co, align 4, !tbaa !296, !alias.scope !3256
  store <4 x i32> %wide.load321, ptr %next.gep316, align 4, !tbaa !296, !alias.scope !3255, !noalias !3256
  store <4 x i32> %wide.load322, ptr %i.cn, align 4, !tbaa !296, !alias.scope !3255, !noalias !3256
  store <4 x i32> %wide.load, ptr %next.gep317, align 4, !tbaa !296, !alias.scope !3256
  store <4 x i32> %wide.load318, ptr %i.co, align 4, !tbaa !296, !alias.scope !3256
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !3215

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i125.preheader500

.lr.ph.i125.preheader500:                         ; preds = %vector.memcheck, %.lr.ph.i125.preheader, %middle.block
  %.033.i.ph = phi ptr [ %7, %vector.memcheck ], [ %7, %.lr.ph.i125.preheader ], [ %i.ab, %middle.block ]
  %.02032.i.ph = phi ptr [ %i.ba, %vector.memcheck ], [ %i.ba, %.lr.ph.i125.preheader ], [ %i.cj, %middle.block ]
  %.02131.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i125.preheader ], [ %i.ck, %middle.block ]
  br label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %.lr.ph.i125.preheader500, %.lr.ph.i125
  %.033.i = phi ptr [ %i.cs, %.lr.ph.i125 ], [ %.033.i.ph, %.lr.ph.i125.preheader500 ] ; 3 uses
  %.02032.i = phi ptr [ %i.cr, %.lr.ph.i125 ], [ %.02032.i.ph, %.lr.ph.i125.preheader500 ] ; 3 uses
  %.02131.i = phi ptr [ %i.cq, %.lr.ph.i125 ], [ %.02131.i.ph, %.lr.ph.i125.preheader500 ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.02131.i, i64 4 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.02032.i, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %.033.i, i64 4 ; 2 uses
  %i.ct = load i32, ptr %.033.i, align 4, !tbaa !296
  %i.cu = load i32, ptr %.02032.i, align 4, !tbaa !296
  store i32 %i.cu, ptr %.033.i, align 4, !tbaa !296
  %i.cv = load i32, ptr %.02131.i, align 4, !tbaa !296
  store i32 %i.cv, ptr %.02032.i, align 4, !tbaa !296
  store i32 %i.ct, ptr %.02131.i, align 4, !tbaa !296
  %.not28.i = icmp eq ptr %i.cq, %i.bc
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i125, !llvm.loop !3216

._crit_edge.i:                                    ; preds = %.lr.ph.i125, %middle.block, %.preheader.i
  %.0.lcssa.i = phi ptr [ %7, %.preheader.i ], [ %i.ab, %middle.block ], [ %i.cs, %.lr.ph.i125 ] ; 2 uses
  %.not29.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  %i.cw = load i32, ptr %i.bh, align 4, !tbaa !296
  %i.cx = load i32, ptr %.0106223, align 4, !tbaa !296
  store i32 %i.cx, ptr %i.bh, align 4, !tbaa !296
  store i32 %i.cw, ptr %.0106223, align 4, !tbaa !296
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %i.cy = icmp eq ptr %i.bh, %.0191218
  br i1 %i.cy, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cz = icmp eq ptr %.0191218, %.0106223
  %spec.select = select i1 %i.cz, ptr %i.bh, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit: ; preds = %bb.m, %bb.l, %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit
  %.5 = phi ptr [ %.0191218, %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ], [ %spec.select, %bb.m ], [ %.0106223, %bb.l ]
  %.1.i = phi ptr [ %7, %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ], [ %.0.lcssa.i, %bb.m ], [ %.0.lcssa.i, %bb.l ] ; 2 uses
  store ptr %.1.i, ptr %i.c, align 8, !tbaa !299
  br label %bb.x

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.da = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_(ptr noundef %.0114219, ptr noundef %.0111220, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.bc, ptr noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit

bb.p:                                             ; preds = %.thread281, %bb.n
  %i.db = phi i1 [ true, %.thread281 ], [ %i.bm, %bb.n ]
  store ptr %8, ptr %9, align 8, !tbaa !439
  %i.dc = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPiS3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_(ptr noundef %.0114219, ptr noundef %.0111220, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.bc, ptr noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dead_on_return %9)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit: ; preds = %bb.o, %bb.p
  %i.dd = phi i1 [ %i.bm, %bb.o ], [ %i.db, %bb.p ]
  %i.de = phi i1 [ true, %bb.o ], [ false, %bb.p ]
  %i.df = phi ptr [ %i.da, %bb.o ], [ %i.dc, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.dg = load ptr, ptr %i.b, align 8, !tbaa !299 ; 4 uses
  %i.dh = load ptr, ptr %i.c, align 8, !tbaa !299 ; 4 uses
  %i.di = icmp eq ptr %i.dg, %i.dh                ; 2 uses
  br i1 %i.di, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit
  store ptr %7, ptr %i.b, align 8, !tbaa !299
  %i.dj = load ptr, ptr %i.d, align 8, !tbaa !299 ; 10 uses
  %i.dk = ptrtoint ptr %i.bc to i64
  %i.dl = ptrtoint ptr %i.dj to i64               ; 3 uses
  %i.dm = sub i64 %i.dk, %i.dl                    ; 2 uses
  %i.dn = ashr exact i64 %i.dm, 2
  %i.do = sub nsw i64 0, %i.dn
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.do ; 7 uses
  %.not.i126 = icmp eq ptr %i.dj, %i.dp
  br i1 %.not.i126, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140, label %.preheader.i127

.preheader.i127:                                  ; preds = %bb.q
  %.not2830.i128 = icmp eq ptr %i.dj, %i.bc
  br i1 %.not2830.i128, label %._crit_edge.i134, label %.lr.ph.i129.preheader

.lr.ph.i129.preheader:                            ; preds = %.preheader.i127
  %i.dq = mul i64 %indvar, %.idx208               ; 3 uses
  %i.dr = add i64 %i.v, %i.dq                     ; 2 uses
  %i.ds = sub i64 %i.dr, %i.dl                    ; 2 uses
  %i.dt = lshr i64 %i.ds, 2
  %i.du = add nuw nsw i64 %i.dt, 1                ; 2 uses
  %min.iters.check373 = icmp ult i64 %i.ds, 60
  br i1 %min.iters.check373, label %.lr.ph.i129.preheader502, label %vector.memcheck374

vector.memcheck374:                               ; preds = %.lr.ph.i129.preheader
  %i.dv = add i64 %i.r, %i.dq
  %i.dw = sub i64 %i.dv, %i.dl
  %i.dx = and i64 %i.dw, -4                       ; 2 uses
  %17 = add i64 %i.dx, 4                          ; 2 uses
  %i.dy = getelementptr i8, ptr %7, i64 %17       ; 2 uses
  %i.dz = add i64 %i.o, %i.dq
  %i.ea = shl i64 %.022.lcssa.i, 2
  %i.eb = add i64 %i.ea, 4
  %i.ec = mul i64 %2, %i.eb
  %i.ed = add i64 %i.dz, %i.ec
  %i.ee = add i64 %i.ed, %i.dx
  %i.ef = sub i64 %i.ee, %i.dm
  %i.eg = getelementptr i8, ptr %1, i64 %i.ef     ; 2 uses
  %i.eh = getelementptr i8, ptr %i.dj, i64 %17    ; 2 uses
  %bound0375 = icmp ult ptr %7, %i.eg
  %bound1376 = icmp ult ptr %i.dp, %i.dy
  %found.conflict377 = and i1 %bound0375, %bound1376
  %bound0378 = icmp ult ptr %7, %i.eh
  %bound1379 = icmp ult ptr %i.dj, %i.dy
  %found.conflict380 = and i1 %bound0378, %bound1379
  %conflict.rdx381 = or i1 %found.conflict377, %found.conflict380
  %bound0382 = icmp ult ptr %i.dp, %i.eh
  %bound1383 = icmp ult ptr %i.dj, %i.eg
  %found.conflict384 = and i1 %bound0382, %bound1383
  %conflict.rdx385 = or i1 %conflict.rdx381, %found.conflict384
  br i1 %conflict.rdx385, label %.lr.ph.i129.preheader502, label %vector.ph386

vector.ph386:                                     ; preds = %vector.memcheck374
  %n.vec387 = and i64 %i.du, 9223372036854775800  ; 3 uses
  %i.ei = shl i64 %n.vec387, 2                    ; 3 uses
  %i.ej = getelementptr i8, ptr %7, i64 %i.ei     ; 2 uses
  %i.ek = getelementptr i8, ptr %i.dp, i64 %i.ei
  %i.el = getelementptr i8, ptr %i.dj, i64 %i.ei
  br label %vector.body388

vector.body388:                                   ; preds = %vector.body388, %vector.ph386
  %index389 = phi i64 [ 0, %vector.ph386 ], [ %index.next399, %vector.body388 ] ; 2 uses
  %i.em = shl i64 %index389, 2                    ; 3 uses
  %next.gep390 = getelementptr i8, ptr %7, i64 %i.em ; 3 uses
  %next.gep391 = getelementptr i8, ptr %i.dp, i64 %i.em ; 3 uses
  %next.gep392 = getelementptr i8, ptr %i.dj, i64 %i.em ; 3 uses
  %i.en = getelementptr i8, ptr %next.gep390, i64 16 ; 2 uses
  %wide.load393 = load <4 x i32>, ptr %next.gep390, align 4, !tbaa !296, !alias.scope !3257, !noalias !3258
  %wide.load394 = load <4 x i32>, ptr %i.en, align 4, !tbaa !296, !alias.scope !3257, !noalias !3258
  %i.eo = getelementptr i8, ptr %next.gep391, i64 16 ; 2 uses
  %wide.load395 = load <4 x i32>, ptr %next.gep391, align 4, !tbaa !296, !alias.scope !3259, !noalias !3260
  %wide.load396 = load <4 x i32>, ptr %i.eo, align 4, !tbaa !296, !alias.scope !3259, !noalias !3260
  store <4 x i32> %wide.load395, ptr %next.gep390, align 4, !tbaa !296, !alias.scope !3257, !noalias !3258
  store <4 x i32> %wide.load396, ptr %i.en, align 4, !tbaa !296, !alias.scope !3257, !noalias !3258
  %i.ep = getelementptr i8, ptr %next.gep392, i64 16 ; 2 uses
  %wide.load397 = load <4 x i32>, ptr %next.gep392, align 4, !tbaa !296, !alias.scope !3260
  %wide.load398 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !296, !alias.scope !3260
  store <4 x i32> %wide.load397, ptr %next.gep391, align 4, !tbaa !296, !alias.scope !3259, !noalias !3260
  store <4 x i32> %wide.load398, ptr %i.eo, align 4, !tbaa !296, !alias.scope !3259, !noalias !3260
  store <4 x i32> %wide.load393, ptr %next.gep392, align 4, !tbaa !296, !alias.scope !3260
  store <4 x i32> %wide.load394, ptr %i.ep, align 4, !tbaa !296, !alias.scope !3260
  %index.next399 = add nuw i64 %index389, 8       ; 2 uses
  %i.eq = icmp eq i64 %index.next399, %n.vec387
  br i1 %i.eq, label %middle.block400, label %vector.body388, !llvm.loop !3221

middle.block400:                                  ; preds = %vector.body388
  %cmp.n401 = icmp eq i64 %i.du, %n.vec387
  br i1 %cmp.n401, label %._crit_edge.i134, label %.lr.ph.i129.preheader502

.lr.ph.i129.preheader502:                         ; preds = %vector.memcheck374, %.lr.ph.i129.preheader, %middle.block400
  %.033.i130.ph = phi ptr [ %7, %vector.memcheck374 ], [ %7, %.lr.ph.i129.preheader ], [ %i.ej, %middle.block400 ] ; 2 uses
  %.02032.i131.ph = phi ptr [ %i.dp, %vector.memcheck374 ], [ %i.dp, %.lr.ph.i129.preheader ], [ %i.ek, %middle.block400 ] ; 2 uses
  %.02131.i132.ph = phi ptr [ %i.dj, %vector.memcheck374 ], [ %i.dj, %.lr.ph.i129.preheader ], [ %i.el, %middle.block400 ] ; 3 uses
  %.02131.i132.ph505 = ptrtoaddr ptr %.02131.i132.ph to i64
  %i.er = sub i64 %i.dr, %.02131.i132.ph505       ; 2 uses
  %i.es = lshr i64 %i.er, 2
  %i.et = add nuw nsw i64 %i.es, 1
  %xtraiter = and i64 %i.et, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i129.prol.loopexit, label %.lr.ph.i129.prol

.lr.ph.i129.prol:                                 ; preds = %.lr.ph.i129.preheader502, %.lr.ph.i129.prol
  %.033.i130.prol = phi ptr [ %i.ew, %.lr.ph.i129.prol ], [ %.033.i130.ph, %.lr.ph.i129.preheader502 ] ; 3 uses
  %.02032.i131.prol = phi ptr [ %i.ev, %.lr.ph.i129.prol ], [ %.02032.i131.ph, %.lr.ph.i129.preheader502 ] ; 3 uses
  %.02131.i132.prol = phi ptr [ %i.eu, %.lr.ph.i129.prol ], [ %.02131.i132.ph, %.lr.ph.i129.preheader502 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i129.prol ], [ 0, %.lr.ph.i129.preheader502 ]
  %i.eu = getelementptr inbounds nuw i8, ptr %.02131.i132.prol, i64 4 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.02032.i131.prol, i64 4 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.033.i130.prol, i64 4 ; 3 uses
  %i.ex = load i32, ptr %.033.i130.prol, align 4, !tbaa !296
  %i.ey = load i32, ptr %.02032.i131.prol, align 4, !tbaa !296
  store i32 %i.ey, ptr %.033.i130.prol, align 4, !tbaa !296
  %i.ez = load i32, ptr %.02131.i132.prol, align 4, !tbaa !296
  store i32 %i.ez, ptr %.02032.i131.prol, align 4, !tbaa !296
  store i32 %i.ex, ptr %.02131.i132.prol, align 4, !tbaa !296
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i129.prol.loopexit, label %.lr.ph.i129.prol, !llvm.loop !3222

.lr.ph.i129.prol.loopexit:                        ; preds = %.lr.ph.i129.prol, %.lr.ph.i129.preheader502
  %.lcssa503.unr = phi ptr [ poison, %.lr.ph.i129.preheader502 ], [ %i.ew, %.lr.ph.i129.prol ]
  %.033.i130.unr = phi ptr [ %.033.i130.ph, %.lr.ph.i129.preheader502 ], [ %i.ew, %.lr.ph.i129.prol ]
  %.02032.i131.unr = phi ptr [ %.02032.i131.ph, %.lr.ph.i129.preheader502 ], [ %i.ev, %.lr.ph.i129.prol ]
  %.02131.i132.unr = phi ptr [ %.02131.i132.ph, %.lr.ph.i129.preheader502 ], [ %i.eu, %.lr.ph.i129.prol ]
  %i.fa = icmp ult i64 %i.er, 12
  br i1 %i.fa, label %._crit_edge.i134, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129
  %.033.i130 = phi ptr [ %i.fv, %.lr.ph.i129 ], [ %.033.i130.unr, %.lr.ph.i129.prol.loopexit ] ; 6 uses
  %.02032.i131 = phi ptr [ %i.fu, %.lr.ph.i129 ], [ %.02032.i131.unr, %.lr.ph.i129.prol.loopexit ] ; 6 uses
  %.02131.i132 = phi ptr [ %i.ft, %.lr.ph.i129 ], [ %.02131.i132.unr, %.lr.ph.i129.prol.loopexit ] ; 6 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 4 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 4 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.033.i130, i64 4 ; 2 uses
  %i.fe = load i32, ptr %.033.i130, align 4, !tbaa !296
  %i.ff = load i32, ptr %.02032.i131, align 4, !tbaa !296
  store i32 %i.ff, ptr %.033.i130, align 4, !tbaa !296
  %i.fg = load i32, ptr %.02131.i132, align 4, !tbaa !296
  store i32 %i.fg, ptr %.02032.i131, align 4, !tbaa !296
  store i32 %i.fe, ptr %.02131.i132, align 4, !tbaa !296
  %i.fh = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 8 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 8 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.033.i130, i64 8 ; 2 uses
  %i.fk = load i32, ptr %i.fd, align 4, !tbaa !296
  %i.fl = load i32, ptr %i.fc, align 4, !tbaa !296
  store i32 %i.fl, ptr %i.fd, align 4, !tbaa !296
  %i.fm = load i32, ptr %i.fb, align 4, !tbaa !296
  store i32 %i.fm, ptr %i.fc, align 4, !tbaa !296
  store i32 %i.fk, ptr %i.fb, align 4, !tbaa !296
  %i.fn = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 12 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 12 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.033.i130, i64 12 ; 2 uses
  %i.fq = load i32, ptr %i.fj, align 4, !tbaa !296
  %i.fr = load i32, ptr %i.fi, align 4, !tbaa !296
  store i32 %i.fr, ptr %i.fj, align 4, !tbaa !296
  %i.fs = load i32, ptr %i.fh, align 4, !tbaa !296
  store i32 %i.fs, ptr %i.fi, align 4, !tbaa !296
  store i32 %i.fq, ptr %i.fh, align 4, !tbaa !296
  %i.ft = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 16 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %.033.i130, i64 16 ; 2 uses
  %i.fw = load i32, ptr %i.fp, align 4, !tbaa !296
  %i.fx = load i32, ptr %i.fo, align 4, !tbaa !296
  store i32 %i.fx, ptr %i.fp, align 4, !tbaa !296
  %i.fy = load i32, ptr %i.fn, align 4, !tbaa !296
  store i32 %i.fy, ptr %i.fo, align 4, !tbaa !296
  store i32 %i.fw, ptr %i.fn, align 4, !tbaa !296
  %.not28.i133.3 = icmp eq ptr %i.ft, %i.bc
  br i1 %.not28.i133.3, label %._crit_edge.i134, label %.lr.ph.i129, !llvm.loop !3223

._crit_edge.i134:                                 ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129, %middle.block400, %.preheader.i127
  %.0.lcssa.i135 = phi ptr [ %7, %.preheader.i127 ], [ %i.ej, %middle.block400 ], [ %.lcssa503.unr, %.lr.ph.i129.prol.loopexit ], [ %i.fv, %.lr.ph.i129 ] ; 2 uses
  %.not29.i136 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i136, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i134
  %i.fz = load i32, ptr %i.bh, align 4, !tbaa !296
  %i.ga = load i32, ptr %.0106223, align 4, !tbaa !296
  store i32 %i.ga, ptr %i.bh, align 4, !tbaa !296
  store i32 %i.fz, ptr %.0106223, align 4, !tbaa !296
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i134
  %i.gb = icmp eq ptr %i.bh, %.0191218
  br i1 %i.gb, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gc = icmp eq ptr %.0191218, %.0106223
  %spec.select205 = select i1 %i.gc, ptr %i.bh, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140: ; preds = %bb.t, %bb.s, %bb.q
  %.6 = phi ptr [ %.0191218, %bb.q ], [ %spec.select205, %bb.t ], [ %.0106223, %bb.s ]
  %.1.i137 = phi ptr [ %7, %bb.q ], [ %.0.lcssa.i135, %bb.t ], [ %.0.lcssa.i135, %bb.s ] ; 2 uses
  store ptr %.1.i137, ptr %i.c, align 8, !tbaa !299
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit
  %.not.i141 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not.i141, label %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gd = load i32, ptr %i.bh, align 4, !tbaa !296
  %i.ge = load i32, ptr %.0106223, align 4, !tbaa !296
  store i32 %i.ge, ptr %i.bh, align 4, !tbaa !296
  store i32 %i.gd, ptr %.0106223, align 4, !tbaa !296
  %i.gf = icmp eq ptr %i.bh, %.0191218
  br i1 %i.gf, label %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gg = icmp eq ptr %.0191218, %.0106223
  %spec.select206 = select i1 %i.gg, ptr %i.bh, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit

_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit: ; preds = %bb.w, %bb.u, %bb.v, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140
  %i.gh = phi ptr [ %.1.i137, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140 ], [ %i.dh, %bb.u ], [ %i.dh, %bb.w ], [ %i.dh, %bb.v ]
  %i.gi = phi ptr [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140 ], [ %i.dg, %bb.u ], [ %i.dg, %bb.w ], [ %i.dg, %bb.v ]
  %.1192 = phi ptr [ %.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140 ], [ %.0191218, %bb.u ], [ %spec.select206, %bb.w ], [ %.0106223, %bb.v ]
  %i.gj = xor i1 %i.de, %i.di
  %i.gk = zext i1 %i.gj to i8
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit
  %i.gl = phi ptr [ %i.gh, %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit ], [ %.1.i, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit ] ; 2 uses
  %i.gm = phi ptr [ %i.gi, %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit ], [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit ] ; 2 uses
  %i.gn = phi i1 [ %i.dd, %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit ], [ %i.bp, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit ]
  %.2193 = phi ptr [ %.1192, %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit ], [ %.5, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit ] ; 2 uses
  %.1115 = phi ptr [ %i.df, %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit ], [ %i.ae, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit ] ; 2 uses
  %.1109 = phi i8 [ %i.gk, %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit ], [ %.0108222, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.gn, true
  %i.go = sext i1 %not. to i64
  %.1 = add i64 %.0227, %i.go
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.0111220, i64 %2 ; 2 uses
  store ptr %i.bc, ptr %i.d, align 8, !tbaa !299
  %i.gq = getelementptr inbounds nuw i8, ptr %.0106223, i64 4
  %i.gr = icmp ne i64 %.0104226, 0
  %.neg = sext i1 %i.gr to i64
  %i.gs = add i64 %.0104226, %.neg
  %i.gt = icmp ne i64 %i.ay, 0
  %.neg122 = sext i1 %i.gt to i64
  %i.gu = add i64 %.sroa.speculated180, %.neg122
  %i.gv = add i64 %.0195217, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gv, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !3224

.thread:                                          ; preds = %bb.x, %bb.g, %bb.f
  %i.gw = phi ptr [ %i.gl, %bb.x ], [ %i.ac, %bb.g ], [ %i.ac, %bb.f ] ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EEvT_T0_T1_NS0_9iter_sizeISF_E4typeESI_SI_SI_SI_T2_:bb.a
  %i.bj = icmp sge i32 %i.bh, %i.bi
  %spec.select = zext i1 %i.bj to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit
  %.1 = phi i8 [ %.074113, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.bk = zext nneg i8 %.1 to i64
  %i.bl = add i64 %.075112, %i.bk                 ; 3 uses
  %i.bm = getelementptr i8, ptr %.071116, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.be, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPiS3_EEvT_S4_RS4_T0_S6_S6_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader169, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bn = mul i64 %indvar, %.idx104
  %i.bo = shl i64 %.022.lcssa.i, 2
  %i.bp = add i64 %i.bo, 4
  %i.bq = mul i64 %2, %i.bp
  %i.br = getelementptr i8, ptr %i.r, i64 %i.bn
  %i.bs = getelementptr i8, ptr %i.br, i64 %i.bq
  %bound0 = icmp ult ptr %i.d, %i.bs
  %bound1 = icmp ult ptr %i.bf, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.bt = or i1 %found.conflict, %stride.check
  br i1 %i.bt, label %.lr.ph.i.i.preheader169, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bu = getelementptr i8, ptr %i.bf, i64 %i.s
  %i.bv = getelementptr i8, ptr %.071116, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bf, i64 %i.bw ; 3 uses
  %next.gep162 = getelementptr i8, ptr %.071116, i64 %i.bw ; 3 uses
  %i.bx = getelementptr i8, ptr %next.gep162, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep162, align 4, !tbaa !296, !alias.scope !3280, !noalias !3281
  %wide.load163 = load <4 x i32>, ptr %i.bx, align 4, !tbaa !296, !alias.scope !3280, !noalias !3281
  %i.by = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load164 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !296, !alias.scope !3281
  %wide.load165 = load <4 x i32>, ptr %i.by, align 4, !tbaa !296, !alias.scope !3281
  store <4 x i32> %wide.load164, ptr %next.gep162, align 4, !tbaa !296, !alias.scope !3280, !noalias !3281
  store <4 x i32> %wide.load165, ptr %i.bx, align 4, !tbaa !296, !alias.scope !3280, !noalias !3281
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !296, !alias.scope !3281
  store <4 x i32> %wide.load163, ptr %i.by, align 4, !tbaa !296, !alias.scope !3281
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !3277

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit.i, label %.lr.ph.i.i.preheader169

.lr.ph.i.i.preheader169:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bf, %vector.memcheck ], [ %i.bf, %.lr.ph.i.i.preheader ], [ %i.bu, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071116, %vector.memcheck ], [ %.071116, %.lr.ph.i.i.preheader ], [ %i.bv, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader169, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader169 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader169 ] ; 3 uses
  %i.ca = load i32, ptr %.079.i.i, align 4, !tbaa !296
  %i.cb = load i32, ptr %.010.i.i, align 4, !tbaa !296
  store i32 %i.cb, ptr %.079.i.i, align 4, !tbaa !296
  store i32 %i.ca, ptr %.010.i.i, align 4, !tbaa !296
  %i.cc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.cc, %i.bm
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit.i, label %.lr.ph.i.i, !llvm.loop !3278

_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit.i
  %i.ce = load i32, ptr %i.bb, align 4, !tbaa !296
  %i.cf = load i32, ptr %.073114, align 4, !tbaa !296
  store i32 %i.cf, ptr %i.bb, align 4, !tbaa !296
  store i32 %i.ce, ptr %.073114, align 4, !tbaa !296
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit.i
  %i.cg = icmp eq ptr %i.bb, %.0100110
  br i1 %i.cg, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPiS3_EEvT_S4_RS4_T0_S6_S6_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = icmp eq ptr %.0100110, %.073114
  %spec.select102 = select i1 %i.ch, ptr %i.bb, ptr %.0100110
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPiS3_EEvT_S4_RS4_T0_S6_S6_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPiS3_EEvT_S4_RS4_T0_S6_S6_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100110, %bb.f ], [ %spec.select102, %bb.j ], [ %.073114, %bb.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.073114, i64 4
  %i.cj = icmp ne i64 %.072115, 0
  %.neg = sext i1 %i.cj to i64
  %i.ck = add i64 %.072115, %.neg
  %i.cl = icmp ne i64 %i.bd, 0
  %.neg78 = sext i1 %i.cl to i64
  %i.cm = add i64 %.sroa.speculated89, %.neg78
  %i.cn = add i64 %.099111, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cn, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3279

._crit_edge125.loopexit131:                       ; preds = %bb.l
  %i.co = trunc nuw i8 %i.df to i1
  %i.cp = select i1 %i.co, ptr %i.dh, ptr %i.di
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %.lr.ph124.split.us.preheader.prol.loopexit, %.lr.ph124.split.us.preheader, %._crit_edge.thread, %._crit_edge125.loopexit131, %._crit_edge
  %i.cq = phi ptr [ %1, %._crit_edge ], [ %1, %._crit_edge.thread ], [ %i.cp, %._crit_edge125.loopexit131 ], [ %.069121.us.lcssa.unr, %.lr.ph124.split.us.preheader.prol.loopexit ], [ %i.ai, %.lr.ph124.split.us.preheader ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %6
  %i.cs = ptrtoint ptr %i.e to i64
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = ashr exact i64 %i.cu, 2
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SC_SC_NS0_9iter_sizeISC_E4typeESF_T0_(ptr noundef %i.cq, ptr noundef %i.e, ptr noundef %i.cr, i64 noundef %i.cv, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

.lr.ph124.split:                                  ; preds = %.lr.ph124, %bb.l
  %i.cw = phi i8 [ %i.df, %bb.l ], [ 1, %.lr.ph124 ]
  %i.cx = phi i8 [ %i.dg, %bb.l ], [ 1, %.lr.ph124 ] ; 2 uses
  %.0122 = phi ptr [ %i.dj, %bb.l ], [ %0, %.lr.ph124 ] ; 2 uses
  %.069121 = phi ptr [ %i.di, %bb.l ], [ %i.d, %.lr.ph124 ] ; 4 uses
  %.070120 = phi ptr [ %i.dh, %bb.l ], [ %1, %.lr.ph124 ]
  %i.cy = load i32, ptr %.0122, align 4, !tbaa !296
  %i.cz = load i32, ptr %.1101, align 4, !tbaa !296
  %i.da = icmp slt i32 %i.cy, %i.cz
  %i.db = zext i1 %i.da to i8
  %i.dc = icmp eq i8 %i.cx, %i.db
  br i1 %i.dc, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph124.split
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.069121, i64 %2
  %i.de = call noundef ptr @_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_SD_PbT0_(ptr noundef %.070120, ptr noundef %.069121, ptr noundef %i.dd, ptr noundef nonnull %i.a)
  %.pre = load i8, ptr %i.a, align 1, !tbaa !442, !range !443 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph124.split, %bb.k
  %i.df = phi i8 [ %.pre, %bb.k ], [ %i.cw, %.lr.ph124.split ] ; 2 uses
  %i.dg = phi i8 [ %.pre, %bb.k ], [ %i.cx, %.lr.ph124.split ]
  %i.dh = phi ptr [ %i.de, %bb.k ], [ %.069121, %.lr.ph124.split ] ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.069121, i64 %2 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.0122, i64 4 ; 2 uses
  %.not77 = icmp eq ptr %i.dj, %i.t
  br i1 %.not77, label %._crit_edge125.loopexit131, label %.lr.ph124.split, !llvm.loop !3273
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opES5_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_T4_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %7 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %9 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %i.c = alloca ptr, align 8                      ; 10 uses
  %i.d = alloca ptr, align 8                      ; 9 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 4 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.25", align 8 ; 2 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.25", align 8 ; 2 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %16 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %i.f = add i64 %5, %4                           ; 6 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %7, ptr %i.c, align 8, !tbaa !299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %7, ptr %i.d, align 8, !tbaa !299
  %i.h = getelementptr [4 x i8], ptr %1, i64 %3   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store ptr %i.h, ptr %i.e, align 8, !tbaa !299
  %i.i = mul i64 %i.f, %2
  %i.j = getelementptr [4 x i8], ptr %i.h, i64 %i.i ; 9 uses
  %.not215 = icmp eq i64 %i.f, 0
  br i1 %.not215, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit150, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = icmp eq i64 %5, 0
  %i.l = select i1 %i.k, i64 0, i64 %4            ; 2 uses
  %i.m = add i64 %i.l, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.f)
  %.idx207 = shl i64 %2, 2                        ; 7 uses
  %.not121 = icmp eq i64 %6, 0
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f
  %.not2830.i = icmp eq i64 %2, 0
  %scevgep = getelementptr i8, ptr %7, i64 %.idx207 ; 2 uses
  %i.o = shl i64 %3, 2                            ; 2 uses
  %i.p = add i64 %i.o, 4
  %i.q = add i64 %i.o, %i.b
  %i.r = add i64 %i.q, %.idx207
  %i.s = add i64 %i.r, -4
  %i.t = shl i64 %3, 2
  %i.u = add i64 %i.t, %i.b
  %i.v = add i64 %i.u, %.idx207
  %i.w = add i64 %i.v, -4
  %i.x = add i64 %.idx207, -4                     ; 2 uses
  %i.y = lshr exact i64 %i.x, 2
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 44
  %bound0304 = icmp ult ptr %7, %i.j
  %bound1305 = icmp ult ptr %i.h, %scevgep
  %found.conflict306 = and i1 %bound0304, %bound1305
  %stride.check = icmp slt i64 %.idx207, 0
  %i.aa = or i1 %found.conflict306, %stride.check
  %n.vec = and i64 %i.z, 9223372036854775800      ; 3 uses
  %i.ab = shl i64 %n.vec, 2                       ; 3 uses
  %i.ac = getelementptr i8, ptr %7, i64 %i.ab     ; 2 uses
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.x ] ; 2 uses
  %i.ad = phi ptr [ %7, %.lr.ph ], [ %i.gc, %bb.x ] ; 5 uses
  %i.ae = phi ptr [ %7, %.lr.ph ], [ %i.gd, %bb.x ] ; 7 uses
  %i.af = phi ptr [ %i.h, %.lr.ph ], [ %i.bd, %bb.x ] ; 9 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.gl, %bb.x ] ; 3 uses
  %.0226 = phi i64 [ %5, %.lr.ph ], [ %.1, %bb.x ] ; 2 uses
  %.0104225 = phi i64 [ %i.l, %.lr.ph ], [ %i.gj, %bb.x ] ; 4 uses
  %.0106222 = phi ptr [ %0, %.lr.ph ], [ %i.gh, %bb.x ] ; 16 uses
  %.0108221 = phi i8 [ 1, %.lr.ph ], [ %.1109, %bb.x ] ; 5 uses
  %.0111219 = phi ptr [ %i.h, %.lr.ph ], [ %i.gg, %bb.x ] ; 5 uses
  %.0114218 = phi ptr [ %1, %.lr.ph ], [ %.1115, %bb.x ] ; 8 uses
  %.0190217 = phi ptr [ %i.g, %.lr.ph ], [ %.2192, %bb.x ] ; 16 uses
  %.0194216 = phi i64 [ %i.f, %.lr.ph ], [ %i.gm, %bb.x ] ; 4 uses
  %i.ag = ptrtoaddr ptr %i.ad to i64
  %.0114218320 = ptrtoaddr ptr %.0114218 to i64
  %i.ah = ptrtoaddr ptr %i.ae to i64              ; 2 uses
  %i.ai = icmp ult i64 %.0104225, %.0
  br i1 %i.ai, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.ax, %.thread24.i ], [ %.0104225, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.aw, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.aj = mul i64 %.02226.i, %2
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.aj
  %i.al = mul i64 %.027.i, %2
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.0106222, i64 %.02226.i
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.0106222, i64 %.027.i
  %i.ap = load i32, ptr %i.am, align 4, !tbaa !296 ; 2 uses
  %i.aq = load i32, ptr %i.ak, align 4, !tbaa !296 ; 2 uses
  %i.ar = icmp slt i32 %i.ap, %i.aq
  br i1 %i.ar, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.as = icmp slt i32 %i.aq, %i.ap
  br i1 %i.as, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = load i64, ptr %i.ao, align 8, !tbaa !319
  %i.au = load i64, ptr %i.an, align 8, !tbaa !319
  %i.av = icmp ult i64 %i.at, %i.au
  %cond.fr.i = freeze i1 %i.av
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.aw = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.ax = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ax, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit, label %.lr.ph.i, !llvm.loop !53

_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.aw, %.thread24.i ] ; 7 uses
  %i.ay = add i64 %.022.lcssa.i, 2
  %i.az = call i64 @llvm.umax.i64(i64 %.0, i64 %i.ay) ; 2 uses
  %.sroa.speculated179 = call i64 @llvm.umin.i64(i64 %i.az, i64 %.0194216)
  %i.ba = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.ba, 2
  %i.bb = getelementptr i8, ptr %i.af, i64 %.idx  ; 10 uses
  %i.bc = getelementptr [4 x i8], ptr %i.bb, i64 %2 ; 3 uses
  %i.bd = getelementptr i8, ptr %i.af, i64 %.idx207 ; 8 uses
  %i.be = icmp eq ptr %i.ae, %i.ad
  %.not120 = icmp eq i64 %.0226, 0
  br i1 %.not120, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit
  br i1 %.not121, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = load i32, ptr %i.j, align 4, !tbaa !296
  %i.bg = load i32, ptr %i.bb, align 4, !tbaa !296
  %i.bh = icmp slt i32 %i.bf, %i.bg
  br i1 %i.bh, label %.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old123 = trunc nuw i8 %.0108221 to i1
  br i1 %.old123, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit
  %.idx208 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %.0106222, i64 %.idx208 ; 13 uses
  %i.bj = icmp eq ptr %.0190217, %i.n
  br i1 %i.bj, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bk = trunc nuw i8 %.0108221 to i1
  br i1 %i.bk, label %bb.j, label %.thread276

.thread276:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.bl = load i64, ptr %i.bi, align 8, !tbaa !319
  %i.bm = load i64, ptr %.0190217, align 8, !tbaa !319
  %i.bn = icmp ult i64 %i.bl, %i.bm               ; 4 uses
  %i.bo = trunc nuw i8 %.0108221 to i1            ; 2 uses
  %i.bp = xor i1 %i.bn, %i.bo
  br i1 %i.bp, label %bb.n, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.bq = phi i1 [ true, %._crit_edge ], [ %i.bn, %bb.i ]
  br i1 %i.be, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.br = add i64 %i.ag, -4
  %i.bs = sub i64 %i.br, %i.ah                    ; 2 uses
  %i.bt = lshr i64 %i.bs, 2
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %min.iters.check322 = icmp ult i64 %i.bs, 28
  %i.bv = sub i64 %i.ah, %.0114218320
  %diff.check = icmp ugt i64 %i.bv, -32
  %or.cond = select i1 %min.iters.check322, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader461, label %vector.ph324

vector.ph324:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec325 = and i64 %i.bu, 9223372036854775800  ; 3 uses
  %i.bw = shl i64 %n.vec325, 2                    ; 2 uses
  %i.bx = getelementptr i8, ptr %.0114218, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.ae, i64 %i.bw
  br label %vector.body326

vector.body326:                                   ; preds = %vector.body326, %vector.ph324
  %index327 = phi i64 [ 0, %vector.ph324 ], [ %index.next332, %vector.body326 ] ; 2 uses
  %i.bz = shl i64 %index327, 2                    ; 2 uses
  %next.gep328 = getelementptr i8, ptr %.0114218, i64 %i.bz ; 2 uses
  %next.gep329 = getelementptr i8, ptr %i.ae, i64 %i.bz ; 2 uses
  %i.ca = getelementptr i8, ptr %next.gep329, i64 16
  %wide.load330 = load <4 x i32>, ptr %next.gep329, align 4, !tbaa !296
  %wide.load331 = load <4 x i32>, ptr %i.ca, align 4, !tbaa !296
  %i.cb = getelementptr i8, ptr %next.gep328, i64 16
  store <4 x i32> %wide.load330, ptr %next.gep328, align 4, !tbaa !296
  store <4 x i32> %wide.load331, ptr %i.cb, align 4, !tbaa !296
  %index.next332 = add nuw i64 %index327, 8       ; 2 uses
  %i.cc = icmp eq i64 %index.next332, %n.vec325
  br i1 %i.cc, label %middle.block333, label %vector.body326, !llvm.loop !3282

middle.block333:                                  ; preds = %vector.body326
  %cmp.n334 = icmp eq i64 %i.bu, %n.vec325
  br i1 %cmp.n334, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit, label %.lr.ph.i.i.preheader461

.lr.ph.i.i.preheader461:                          ; preds = %.lr.ph.i.i.preheader, %middle.block333
  %.010.i.i.ph = phi ptr [ %.0114218, %.lr.ph.i.i.preheader ], [ %i.bx, %middle.block333 ]
  %.079.i.i.ph = phi ptr [ %i.ae, %.lr.ph.i.i.preheader ], [ %i.by, %middle.block333 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader461, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cf, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader461 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.ce, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader461 ] ; 2 uses
  %i.cd = load i32, ptr %.079.i.i, align 4, !tbaa !296
  store i32 %i.cd, ptr %.010.i.i, align 4, !tbaa !296
  %i.ce = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.ce, %i.ad
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit, label %.lr.ph.i.i, !llvm.loop !3283

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit: ; preds = %.lr.ph.i.i, %middle.block333, %bb.j
  store ptr %7, ptr %i.c, align 8, !tbaa !299
  %.not.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit
  br i1 %.not2830.i, label %._crit_edge.i, label %.lr.ph.i125.preheader

.lr.ph.i125.preheader:                            ; preds = %.preheader.i
  br i1 %min.iters.check, label %.lr.ph.i125.preheader460, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i125.preheader
  %bound0 = icmp ult ptr %7, %i.bc
  %bound1 = icmp ult ptr %i.bb, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.aa
  %bound0307 = icmp ult ptr %i.bb, %i.j
  %bound1308 = icmp ult ptr %i.h, %i.bc
  %found.conflict309 = and i1 %bound0307, %bound1308
  %conflict.rdx310 = or i1 %conflict.rdx, %found.conflict309
  br i1 %conflict.rdx310, label %.lr.ph.i125.preheader460, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cg = getelementptr i8, ptr %i.bb, i64 %i.ab
  %i.ch = getelementptr i8, ptr %i.af, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ci = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %7, i64 %i.ci ; 2 uses
  %next.gep311 = getelementptr i8, ptr %i.bb, i64 %i.ci ; 3 uses
  %next.gep312 = getelementptr i8, ptr %i.af, i64 %i.ci ; 2 uses
  %i.cj = getelementptr i8, ptr %next.gep311, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep311, align 4, !tbaa !296, !alias.scope !3314, !noalias !3315
  %wide.load313 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !296, !alias.scope !3314, !noalias !3315
  %i.ck = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !296, !alias.scope !3316, !noalias !3317
  store <4 x i32> %wide.load313, ptr %i.ck, align 4, !tbaa !296, !alias.scope !3316, !noalias !3317
  %i.cl = getelementptr i8, ptr %next.gep312, i64 16
  %wide.load314 = load <4 x i32>, ptr %next.gep312, align 4, !tbaa !296, !alias.scope !3315
  %wide.load315 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !296, !alias.scope !3315
  store <4 x i32> %wide.load314, ptr %next.gep311, align 4, !tbaa !296, !alias.scope !3314, !noalias !3315
  store <4 x i32> %wide.load315, ptr %i.cj, align 4, !tbaa !296, !alias.scope !3314, !noalias !3315
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !3288

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i125.preheader460

.lr.ph.i125.preheader460:                         ; preds = %vector.memcheck, %.lr.ph.i125.preheader, %middle.block
  %.033.i.ph = phi ptr [ %7, %vector.memcheck ], [ %7, %.lr.ph.i125.preheader ], [ %i.ac, %middle.block ]
  %.02032.i.ph = phi ptr [ %i.bb, %vector.memcheck ], [ %i.bb, %.lr.ph.i125.preheader ], [ %i.cg, %middle.block ]
  %.02131.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i125.preheader ], [ %i.ch, %middle.block ]
  br label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %.lr.ph.i125.preheader460, %.lr.ph.i125
  %.033.i = phi ptr [ %i.cp, %.lr.ph.i125 ], [ %.033.i.ph, %.lr.ph.i125.preheader460 ] ; 2 uses
  %.02032.i = phi ptr [ %i.co, %.lr.ph.i125 ], [ %.02032.i.ph, %.lr.ph.i125.preheader460 ] ; 3 uses
  %.02131.i = phi ptr [ %i.cn, %.lr.ph.i125 ], [ %.02131.i.ph, %.lr.ph.i125.preheader460 ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.02131.i, i64 4 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.02032.i, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %.033.i, i64 4 ; 2 uses
  %i.cq = load i32, ptr %.02032.i, align 4, !tbaa !296
  store i32 %i.cq, ptr %.033.i, align 4, !tbaa !296
  %i.cr = load i32, ptr %.02131.i, align 4, !tbaa !296
  store i32 %i.cr, ptr %.02032.i, align 4, !tbaa !296
  %.not28.i = icmp eq ptr %i.cn, %i.bd
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i125, !llvm.loop !3289

._crit_edge.i:                                    ; preds = %.lr.ph.i125, %middle.block, %.preheader.i
  %.0.lcssa.i = phi ptr [ %7, %.preheader.i ], [ %i.ac, %middle.block ], [ %i.cp, %.lr.ph.i125 ] ; 2 uses
  %.not29.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  %i.cs = load i64, ptr %i.bi, align 8, !tbaa !319
  %i.ct = load i64, ptr %.0106222, align 8, !tbaa !319
  store i64 %i.ct, ptr %i.bi, align 8, !tbaa !319
  store i64 %i.cs, ptr %.0106222, align 8, !tbaa !319
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %i.cu = icmp eq ptr %i.bi, %.0190217
  br i1 %i.cu, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cv = icmp eq ptr %.0190217, %.0106222
  %spec.select = select i1 %i.cv, ptr %i.bi, ptr %.0190217
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit: ; preds = %bb.m, %bb.l, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit
  %.5 = phi ptr [ %.0190217, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ], [ %spec.select, %bb.m ], [ %.0106222, %bb.l ]
  %.1.i = phi ptr [ %7, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ], [ %.0.lcssa.i, %bb.m ], [ %.0.lcssa.i, %bb.l ] ; 2 uses
  store ptr %.1.i, ptr %i.d, align 8, !tbaa !299
  br label %bb.x

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br i1 %i.bo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cw = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_(ptr noundef %.0114218, ptr noundef %.0111219, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.bd, ptr noundef %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit

bb.p:                                             ; preds = %.thread276, %bb.n
  %i.cx = phi i1 [ true, %.thread276 ], [ %i.bn, %bb.n ]
  store ptr %8, ptr %9, align 8, !tbaa !439
  %i.cy = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPiS3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_(ptr noundef %.0114218, ptr noundef %.0111219, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.bd, ptr noundef %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dead_on_return %9)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit: ; preds = %bb.o, %bb.p
  %i.cz = phi i1 [ %i.bn, %bb.o ], [ %i.cx, %bb.p ]
  %i.da = phi i1 [ true, %bb.o ], [ false, %bb.p ]
  %i.db = phi ptr [ %i.cw, %bb.o ], [ %i.cy, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.dc = load ptr, ptr %i.c, align 8, !tbaa !299 ; 4 uses
  %i.dd = load ptr, ptr %i.d, align 8, !tbaa !299 ; 4 uses
  %i.de = icmp eq ptr %i.dc, %i.dd                ; 2 uses
  br i1 %i.de, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit
  store ptr %7, ptr %i.c, align 8, !tbaa !299
  %i.df = load ptr, ptr %i.e, align 8, !tbaa !299 ; 10 uses
  %i.dg = ptrtoint ptr %i.bd to i64
  %i.dh = ptrtoint ptr %i.df to i64               ; 3 uses
  %i.di = sub i64 %i.dg, %i.dh                    ; 2 uses
  %i.dj = ashr exact i64 %i.di, 2
  %i.dk = sub nsw i64 0, %i.dj
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.dk ; 7 uses
  %.not.i126 = icmp eq ptr %i.df, %i.dl
  br i1 %.not.i126, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit140, label %.preheader.i127

.preheader.i127:                                  ; preds = %bb.q
  %.not2830.i128 = icmp eq ptr %i.df, %i.bd
  br i1 %.not2830.i128, label %._crit_edge.i134, label %.lr.ph.i129.preheader

.lr.ph.i129.preheader:                            ; preds = %.preheader.i127
  %i.dm = mul i64 %indvar, %.idx207               ; 3 uses
  %i.dn = add i64 %i.w, %i.dm                     ; 2 uses
  %i.do = sub i64 %i.dn, %i.dh                    ; 2 uses
  %i.dp = lshr i64 %i.do, 2
  %i.dq = add nuw nsw i64 %i.dp, 1                ; 2 uses
  %min.iters.check356 = icmp ult i64 %i.do, 76
  br i1 %min.iters.check356, label %.lr.ph.i129.preheader462, label %vector.memcheck357

vector.memcheck357:                               ; preds = %.lr.ph.i129.preheader
  %i.dr = add i64 %i.s, %i.dm
  %i.ds = sub i64 %i.dr, %i.dh
  %i.dt = and i64 %i.ds, -4                       ; 2 uses
  %17 = add i64 %i.dt, 4                          ; 2 uses
  %i.du = getelementptr i8, ptr %7, i64 %17       ; 2 uses
  %i.dv = add i64 %i.p, %i.dm
  %i.dw = shl i64 %.022.lcssa.i, 2
  %i.dx = add i64 %i.dw, 4
  %i.dy = mul i64 %2, %i.dx
  %i.dz = add i64 %i.dv, %i.dy
  %i.ea = add i64 %i.dz, %i.dt
  %i.eb = sub i64 %i.ea, %i.di
  %i.ec = getelementptr i8, ptr %1, i64 %i.eb     ; 2 uses
  %i.ed = getelementptr i8, ptr %i.df, i64 %17    ; 2 uses
  %bound0358 = icmp ult ptr %7, %i.ec
  %bound1359 = icmp ult ptr %i.dl, %i.du
  %found.conflict360 = and i1 %bound0358, %bound1359
  %bound0361 = icmp ult ptr %7, %i.ed
  %bound1362 = icmp ult ptr %i.df, %i.du
  %found.conflict363 = and i1 %bound0361, %bound1362
  %conflict.rdx364 = or i1 %found.conflict360, %found.conflict363
  %bound0365 = icmp ult ptr %i.dl, %i.ed
  %bound1366 = icmp ult ptr %i.df, %i.ec
  %found.conflict367 = and i1 %bound0365, %bound1366
  %conflict.rdx368 = or i1 %conflict.rdx364, %found.conflict367
  br i1 %conflict.rdx368, label %.lr.ph.i129.preheader462, label %vector.ph369

vector.ph369:                                     ; preds = %vector.memcheck357
  %n.vec370 = and i64 %i.dq, 9223372036854775800  ; 3 uses
  %i.ee = shl i64 %n.vec370, 2                    ; 3 uses
  %i.ef = getelementptr i8, ptr %7, i64 %i.ee     ; 2 uses
  %i.eg = getelementptr i8, ptr %i.dl, i64 %i.ee
  %i.eh = getelementptr i8, ptr %i.df, i64 %i.ee
  br label %vector.body371

vector.body371:                                   ; preds = %vector.body371, %vector.ph369
  %index372 = phi i64 [ 0, %vector.ph369 ], [ %index.next380, %vector.body371 ] ; 2 uses
  %i.ei = shl i64 %index372, 2                    ; 3 uses
  %next.gep373 = getelementptr i8, ptr %7, i64 %i.ei ; 2 uses
  %next.gep374 = getelementptr i8, ptr %i.dl, i64 %i.ei ; 3 uses
  %next.gep375 = getelementptr i8, ptr %i.df, i64 %i.ei ; 2 uses
  %i.ej = getelementptr i8, ptr %next.gep374, i64 16 ; 2 uses
  %wide.load376 = load <4 x i32>, ptr %next.gep374, align 4, !tbaa !296, !alias.scope !3318, !noalias !3319
  %wide.load377 = load <4 x i32>, ptr %i.ej, align 4, !tbaa !296, !alias.scope !3318, !noalias !3319
  %i.ek = getelementptr i8, ptr %next.gep373, i64 16
  store <4 x i32> %wide.load376, ptr %next.gep373, align 4, !tbaa !296, !alias.scope !3320, !noalias !3321
  store <4 x i32> %wide.load377, ptr %i.ek, align 4, !tbaa !296, !alias.scope !3320, !noalias !3321
  %i.el = getelementptr i8, ptr %next.gep375, i64 16
  %wide.load378 = load <4 x i32>, ptr %next.gep375, align 4, !tbaa !296, !alias.scope !3319
  %wide.load379 = load <4 x i32>, ptr %i.el, align 4, !tbaa !296, !alias.scope !3319
  store <4 x i32> %wide.load378, ptr %next.gep374, align 4, !tbaa !296, !alias.scope !3318, !noalias !3319
  store <4 x i32> %wide.load379, ptr %i.ej, align 4, !tbaa !296, !alias.scope !3318, !noalias !3319
  %index.next380 = add nuw i64 %index372, 8       ; 2 uses
  %i.em = icmp eq i64 %index.next380, %n.vec370
  br i1 %i.em, label %middle.block381, label %vector.body371, !llvm.loop !3294

middle.block381:                                  ; preds = %vector.body371
  %cmp.n382 = icmp eq i64 %i.dq, %n.vec370
  br i1 %cmp.n382, label %._crit_edge.i134, label %.lr.ph.i129.preheader462

.lr.ph.i129.preheader462:                         ; preds = %vector.memcheck357, %.lr.ph.i129.preheader, %middle.block381
  %.033.i130.ph = phi ptr [ %7, %vector.memcheck357 ], [ %7, %.lr.ph.i129.preheader ], [ %i.ef, %middle.block381 ] ; 2 uses
  %.02032.i131.ph = phi ptr [ %i.dl, %vector.memcheck357 ], [ %i.dl, %.lr.ph.i129.preheader ], [ %i.eg, %middle.block381 ] ; 2 uses
  %.02131.i132.ph = phi ptr [ %i.df, %vector.memcheck357 ], [ %i.df, %.lr.ph.i129.preheader ], [ %i.eh, %middle.block381 ] ; 3 uses
  %.02131.i132.ph465 = ptrtoaddr ptr %.02131.i132.ph to i64
  %i.en = sub i64 %i.dn, %.02131.i132.ph465       ; 2 uses
  %i.eo = lshr i64 %i.en, 2
  %i.ep = add nuw nsw i64 %i.eo, 1
  %xtraiter = and i64 %i.ep, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i129.prol.loopexit, label %.lr.ph.i129.prol

.lr.ph.i129.prol:                                 ; preds = %.lr.ph.i129.preheader462, %.lr.ph.i129.prol
  %.033.i130.prol = phi ptr [ %i.es, %.lr.ph.i129.prol ], [ %.033.i130.ph, %.lr.ph.i129.preheader462 ] ; 2 uses
  %.02032.i131.prol = phi ptr [ %i.er, %.lr.ph.i129.prol ], [ %.02032.i131.ph, %.lr.ph.i129.preheader462 ] ; 3 uses
  %.02131.i132.prol = phi ptr [ %i.eq, %.lr.ph.i129.prol ], [ %.02131.i132.ph, %.lr.ph.i129.preheader462 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i129.prol ], [ 0, %.lr.ph.i129.preheader462 ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.02131.i132.prol, i64 4 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.02032.i131.prol, i64 4 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.033.i130.prol, i64 4 ; 3 uses
  %i.et = load i32, ptr %.02032.i131.prol, align 4, !tbaa !296
  store i32 %i.et, ptr %.033.i130.prol, align 4, !tbaa !296
  %i.eu = load i32, ptr %.02131.i132.prol, align 4, !tbaa !296
  store i32 %i.eu, ptr %.02032.i131.prol, align 4, !tbaa !296
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i129.prol.loopexit, label %.lr.ph.i129.prol, !llvm.loop !3295

.lr.ph.i129.prol.loopexit:                        ; preds = %.lr.ph.i129.prol, %.lr.ph.i129.preheader462
  %.lcssa463.unr = phi ptr [ poison, %.lr.ph.i129.preheader462 ], [ %i.es, %.lr.ph.i129.prol ]
  %.033.i130.unr = phi ptr [ %.033.i130.ph, %.lr.ph.i129.preheader462 ], [ %i.es, %.lr.ph.i129.prol ]
  %.02032.i131.unr = phi ptr [ %.02032.i131.ph, %.lr.ph.i129.preheader462 ], [ %i.er, %.lr.ph.i129.prol ]
  %.02131.i132.unr = phi ptr [ %.02131.i132.ph, %.lr.ph.i129.preheader462 ], [ %i.eq, %.lr.ph.i129.prol ]
  %i.ev = icmp ult i64 %i.en, 12
  br i1 %i.ev, label %._crit_edge.i134, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129
  %.033.i130 = phi ptr [ %i.fn, %.lr.ph.i129 ], [ %.033.i130.unr, %.lr.ph.i129.prol.loopexit ] ; 5 uses
  %.02032.i131 = phi ptr [ %i.fm, %.lr.ph.i129 ], [ %.02032.i131.unr, %.lr.ph.i129.prol.loopexit ] ; 6 uses
  %.02131.i132 = phi ptr [ %i.fl, %.lr.ph.i129 ], [ %.02131.i132.unr, %.lr.ph.i129.prol.loopexit ] ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 4
  %i.ex = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 4 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.033.i130, i64 4
  %i.ez = load i32, ptr %.02032.i131, align 4, !tbaa !296
  store i32 %i.ez, ptr %.033.i130, align 4, !tbaa !296
  %i.fa = load i32, ptr %.02131.i132, align 4, !tbaa !296
  store i32 %i.fa, ptr %.02032.i131, align 4, !tbaa !296
  %i.fb = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 8 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.033.i130, i64 8
  %i.fe = load i32, ptr %i.ex, align 4, !tbaa !296
  store i32 %i.fe, ptr %i.ey, align 4, !tbaa !296
  %i.ff = load i32, ptr %i.ew, align 4, !tbaa !296
  store i32 %i.ff, ptr %i.ex, align 4, !tbaa !296
  %i.fg = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 12
  %i.fh = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 12 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.033.i130, i64 12
  %i.fj = load i32, ptr %i.fc, align 4, !tbaa !296
  store i32 %i.fj, ptr %i.fd, align 4, !tbaa !296
  %i.fk = load i32, ptr %i.fb, align 4, !tbaa !296
  store i32 %i.fk, ptr %i.fc, align 4, !tbaa !296
  %i.fl = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 16 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 16
  %i.fn = getelementptr inbounds nuw i8, ptr %.033.i130, i64 16 ; 2 uses
  %i.fo = load i32, ptr %i.fh, align 4, !tbaa !296
  store i32 %i.fo, ptr %i.fi, align 4, !tbaa !296
  %i.fp = load i32, ptr %i.fg, align 4, !tbaa !296
  store i32 %i.fp, ptr %i.fh, align 4, !tbaa !296
  %.not28.i133.3 = icmp eq ptr %i.fl, %i.bd
  br i1 %.not28.i133.3, label %._crit_edge.i134, label %.lr.ph.i129, !llvm.loop !3296

._crit_edge.i134:                                 ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129, %middle.block381, %.preheader.i127
  %.0.lcssa.i135 = phi ptr [ %7, %.preheader.i127 ], [ %i.ef, %middle.block381 ], [ %.lcssa463.unr, %.lr.ph.i129.prol.loopexit ], [ %i.fn, %.lr.ph.i129 ] ; 2 uses
  %.not29.i136 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i136, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i134
  %i.fq = load i64, ptr %i.bi, align 8, !tbaa !319
  %i.fr = load i64, ptr %.0106222, align 8, !tbaa !319
  store i64 %i.fr, ptr %i.bi, align 8, !tbaa !319
  store i64 %i.fq, ptr %.0106222, align 8, !tbaa !319
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i134
  %i.fs = icmp eq ptr %i.bi, %.0190217
  br i1 %i.fs, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit140, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ft = icmp eq ptr %.0190217, %.0106222
  %spec.select204 = select i1 %i.ft, ptr %i.bi, ptr %.0190217
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit140

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit140: ; preds = %bb.t, %bb.s, %bb.q
  %.6 = phi ptr [ %.0190217, %bb.q ], [ %spec.select204, %bb.t ], [ %.0106222, %bb.s ]
  %.1.i137 = phi ptr [ %7, %bb.q ], [ %.0.lcssa.i135, %bb.t ], [ %.0.lcssa.i135, %bb.s ] ; 2 uses
  store ptr %.1.i137, ptr %i.d, align 8, !tbaa !299
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit
  %.not.i141 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not.i141, label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fu = load i64, ptr %i.bi, align 8, !tbaa !319
  %i.fv = load i64, ptr %.0106222, align 8, !tbaa !319
  store i64 %i.fv, ptr %i.bi, align 8, !tbaa !319
  store i64 %i.fu, ptr %.0106222, align 8, !tbaa !319
  %i.fw = icmp eq ptr %i.bi, %.0190217
  br i1 %i.fw, label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fx = icmp eq ptr %.0190217, %.0106222
  %spec.select205 = select i1 %i.fx, ptr %i.bi, ptr %.0190217
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit

_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit: ; preds = %bb.w, %bb.u, %bb.v, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit140
  %i.fy = phi ptr [ %.1.i137, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit140 ], [ %i.dd, %bb.u ], [ %i.dd, %bb.w ], [ %i.dd, %bb.v ]
  %i.fz = phi ptr [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit140 ], [ %i.dc, %bb.u ], [ %i.dc, %bb.w ], [ %i.dc, %bb.v ]
  %.1191 = phi ptr [ %.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit140 ], [ %.0190217, %bb.u ], [ %spec.select205, %bb.w ], [ %.0106222, %bb.v ]
  %i.ga = xor i1 %i.da, %i.de
  %i.gb = zext i1 %i.ga to i8
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit
  %i.gc = phi ptr [ %i.fy, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %.1.i, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit ] ; 2 uses
  %i.gd = phi ptr [ %i.fz, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit ] ; 2 uses
  %i.ge = phi i1 [ %i.cz, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %i.bq, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit ]
  %.2192 = phi ptr [ %.1191, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %.5, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit ] ; 2 uses
  %.1115 = phi ptr [ %i.db, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %i.af, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit ] ; 2 uses
  %.1109 = phi i8 [ %i.gb, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %.0108221, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.ge, true
  %i.gf = sext i1 %not. to i64
  %.1 = add i64 %.0226, %i.gf
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.0111219, i64 %2 ; 2 uses
  store ptr %i.bd, ptr %i.e, align 8, !tbaa !299
  %i.gh = getelementptr inbounds nuw i8, ptr %.0106222, i64 8
  %i.gi = icmp ne i64 %.0104225, 0
  %.neg = sext i1 %i.gi to i64
  %i.gj = add i64 %.0104225, %.neg
  %i.gk = icmp ne i64 %i.az, 0
  %.neg122 = sext i1 %i.gk to i64
  %i.gl = add i64 %.sroa.speculated179, %.neg122
  %i.gm = add i64 %.0194216, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gm, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !3297

.thread:                                          ; preds = %bb.x, %bb.g, %bb.f
  %i.gn = phi ptr [ %i.gc, %bb.x ], [ %i.ad, %bb.g ], [ %i.ad, %bb.f ] ; 3 uses
  %i.go = phi ptr [ %i.gd, %bb.x ], [ %i.ae, %bb.g ], [ %i.ae, %bb.f ] ; 5 uses
  %.0194.lcssa.ph = phi i64 [ 0, %bb.x ], [ %.0194216, %bb.g ], [ %.0194216, %bb.f ] ; 3 uses
  %.0190.lcssa.ph = phi ptr [ %.2192, %bb.x ], [ %.0190217, %bb.g ], [ %.0190217, %bb.f ] ; 3 uses
  %.0114.lcssa.ph = phi ptr [ %.1115, %bb.x ], [ %.0114218, %bb.g ], [ %.0114218, %bb.f ] ; 5 uses
  %.0111.lcssa.ph = phi ptr [ %i.gg, %bb.x ], [ %.0111219, %bb.g ], [ %.0111219, %bb.f ] ; 4 uses
  %.0108.lcssa.ph = phi i8 [ %.1109, %bb.x ], [ 1, %bb.g ], [ %.0108221, %bb.f ]
  %i.gp = trunc nuw i8 %.0108.lcssa.ph to i1
  %i.gq = select i1 %i.gp, ptr %.0114.lcssa.ph, ptr %.0111.lcssa.ph ; 3 uses
  %.not8.i.i144 = icmp eq ptr %i.go, %i.gn
  br i1 %.not8.i.i144, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit150, label %.lr.ph.i.i145.preheader

.lr.ph.i.i145.preheader:                          ; preds = %.thread
  %i.gr = ptrtoaddr ptr %i.go to i64              ; 2 uses
  %.0114.lcssa.ph389 = ptrtoaddr ptr %.0114.lcssa.ph to i64
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEbT_RNS0_9iter_sizeISF_E4typeESF_SI_SI_SJ_RT1_T0_:bb.a
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
  %i.m = load i64, ptr %i.l, align 8, !tbaa !427  ; 3 uses
  %.not.i = icmp ugt i64 %i.c, %i.m
  %i.n = load ptr, ptr %6, align 8, !tbaa !426    ; 8 uses
  %i.o = ptrtoaddr ptr %i.n to i64                ; 2 uses
  br i1 %.not.i, label %bb.c, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.b
  %.idx.i = shl nsw i64 %i.c, 2                   ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %2, i64 %.idx.i
  %i.q = add i64 %.idx.i, -4                      ; 2 uses
  %i.r = lshr exact i64 %i.q, 2
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.q, 44
  %i.t = sub i64 %i.a, %i.o
  %diff.check = icmp ugt i64 %i.t, -32
  %or.cond456 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond456, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i
  %n.vec = and i64 %i.s, 9223372036854775800      ; 3 uses
  %i.u = shl i64 %n.vec, 2                        ; 2 uses
  %i.v = getelementptr i8, ptr %i.n, i64 %i.u
  %i.w = getelementptr i8, ptr %2, i64 %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.x ; 2 uses
  %next.gep247 = getelementptr i8, ptr %2, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep247, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep247, align 4, !tbaa !296
  %wide.load248 = load <4 x i32>, ptr %i.y, align 4, !tbaa !296
  %i.z = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !296
  store <4 x i32> %wide.load248, ptr %i.z, align 4, !tbaa !296
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !3567

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block
  %.010.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.preheader.i ], [ %i.v, %middle.block ]
  %.079.i.i.ph = phi ptr [ %2, %.lr.ph.i.preheader.i ], [ %i.w, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.079.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ab = load i32, ptr %.079.i.i, align 4, !tbaa !296
  store i32 %i.ab, ptr %.010.i.i, align 4, !tbaa !296
  %i.ac = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.ac, %i.p
  br i1 %.not.i.i, label %.thread, label %.lr.ph.i.i, !llvm.loop !3568

bb.c:                                             ; preds = %bb.b
  %.idx26.i = shl i64 %i.m, 2                     ; 5 uses
  %i.ae = getelementptr inbounds i8, ptr %2, i64 %.idx26.i ; 5 uses
  %.not8.i17.i = icmp eq i64 %i.m, 0
  br i1 %.not8.i17.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i, label %.lr.ph.i18.i.preheader

.lr.ph.i18.i.preheader:                           ; preds = %bb.c
  %i.af = add i64 %.idx26.i, -4                   ; 2 uses
  %i.ag = lshr exact i64 %i.af, 2
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check253 = icmp ult i64 %i.af, 44
  %i.ai = sub i64 %i.a, %i.o
  %diff.check255 = icmp ugt i64 %i.ai, -32
  %or.cond457 = select i1 %min.iters.check253, i1 true, i1 %diff.check255
  br i1 %or.cond457, label %.lr.ph.i18.i.preheader475, label %vector.ph256

vector.ph256:                                     ; preds = %.lr.ph.i18.i.preheader
  %n.vec257 = and i64 %i.ah, 9223372036854775800  ; 3 uses
  %i.aj = shl i64 %n.vec257, 2                    ; 2 uses
  %i.ak = getelementptr i8, ptr %i.n, i64 %i.aj   ; 2 uses
  %i.al = getelementptr i8, ptr %2, i64 %i.aj
  br label %vector.body258

vector.body258:                                   ; preds = %vector.body258, %vector.ph256
  %index259 = phi i64 [ 0, %vector.ph256 ], [ %index.next264, %vector.body258 ] ; 2 uses
  %i.am = shl i64 %index259, 2                    ; 2 uses
  %next.gep260 = getelementptr i8, ptr %i.n, i64 %i.am ; 2 uses
  %next.gep261 = getelementptr i8, ptr %2, i64 %i.am ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep261, i64 16
  %wide.load262 = load <4 x i32>, ptr %next.gep261, align 4, !tbaa !296
  %wide.load263 = load <4 x i32>, ptr %i.an, align 4, !tbaa !296
  %i.ao = getelementptr i8, ptr %next.gep260, i64 16
  store <4 x i32> %wide.load262, ptr %next.gep260, align 4, !tbaa !296
  store <4 x i32> %wide.load263, ptr %i.ao, align 4, !tbaa !296
  %index.next264 = add nuw i64 %index259, 8       ; 2 uses
  %i.ap = icmp eq i64 %index.next264, %n.vec257
  br i1 %i.ap, label %middle.block265, label %vector.body258, !llvm.loop !3569

middle.block265:                                  ; preds = %vector.body258
  %cmp.n266 = icmp eq i64 %i.ah, %n.vec257
  br i1 %cmp.n266, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i, label %.lr.ph.i18.i.preheader475

.lr.ph.i18.i.preheader475:                        ; preds = %.lr.ph.i18.i.preheader, %middle.block265
  %.010.i19.i.ph = phi ptr [ %i.n, %.lr.ph.i18.i.preheader ], [ %i.ak, %middle.block265 ]
  %.079.i20.i.ph = phi ptr [ %2, %.lr.ph.i18.i.preheader ], [ %i.al, %middle.block265 ]
  br label %.lr.ph.i18.i

.lr.ph.i18.i:                                     ; preds = %.lr.ph.i18.i.preheader475, %.lr.ph.i18.i
  %.010.i19.i = phi ptr [ %i.as, %.lr.ph.i18.i ], [ %.010.i19.i.ph, %.lr.ph.i18.i.preheader475 ] ; 2 uses
  %.079.i20.i = phi ptr [ %i.ar, %.lr.ph.i18.i ], [ %.079.i20.i.ph, %.lr.ph.i18.i.preheader475 ] ; 2 uses
  %i.aq = load i32, ptr %.079.i20.i, align 4, !tbaa !296
  store i32 %i.aq, ptr %.010.i19.i, align 4, !tbaa !296
  %i.ar = getelementptr inbounds nuw i8, ptr %.079.i20.i, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.010.i19.i, i64 4 ; 2 uses
  %.not.i21.i = icmp eq ptr %i.ar, %i.ae
  br i1 %.not.i21.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i, label %.lr.ph.i18.i, !llvm.loop !3570

_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i:       ; preds = %.lr.ph.i18.i, %middle.block265, %bb.c
  %.0.lcssa.i22.i = phi ptr [ %i.n, %bb.c ], [ %i.ak, %middle.block265 ], [ %i.as, %.lr.ph.i18.i ] ; 5 uses
  %.0.lcssa.i22.i272 = ptrtoaddr ptr %.0.lcssa.i22.i to i64
  %.idx27.i = shl nsw i64 %i.c, 2                 ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %2, i64 %.idx27.i
  %.not10.i.i = icmp eq i64 %.idx26.i, %.idx27.i
  br i1 %.not10.i.i, label %.thread, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i
  %i.au = add i64 %.idx27.i, -4
  %i.av = sub i64 %i.au, %.idx26.i                ; 2 uses
  %i.aw = lshr exact i64 %i.av, 2
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check274 = icmp ult i64 %i.av, 60
  br i1 %min.iters.check274, label %.lr.ph.i24.i.preheader474, label %vector.memcheck275

vector.memcheck275:                               ; preds = %.lr.ph.i24.i.preheader
  %i.ay = add i64 %.idx26.i, %i.a
  %i.az = sub i64 %i.ay, %.0.lcssa.i22.i272
  %diff.check276 = icmp ugt i64 %i.az, -32
  br i1 %diff.check276, label %.lr.ph.i24.i.preheader474, label %vector.ph277

vector.ph277:                                     ; preds = %vector.memcheck275
  %n.vec278 = and i64 %i.ax, 9223372036854775800  ; 3 uses
  %i.ba = shl i64 %n.vec278, 2                    ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ae, i64 %i.ba
  %i.bc = getelementptr i8, ptr %.0.lcssa.i22.i, i64 %i.ba
  br label %vector.body279

vector.body279:                                   ; preds = %vector.body279, %vector.ph277
  %index280 = phi i64 [ 0, %vector.ph277 ], [ %index.next285, %vector.body279 ] ; 2 uses
  %i.bd = shl i64 %index280, 2                    ; 2 uses
  %next.gep281 = getelementptr i8, ptr %i.ae, i64 %i.bd ; 2 uses
  %next.gep282 = getelementptr i8, ptr %.0.lcssa.i22.i, i64 %i.bd ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep281, i64 16
  %wide.load283 = load <4 x i32>, ptr %next.gep281, align 4, !tbaa !296
  %wide.load284 = load <4 x i32>, ptr %i.be, align 4, !tbaa !296
  %i.bf = getelementptr i8, ptr %next.gep282, i64 16
  store <4 x i32> %wide.load283, ptr %next.gep282, align 4, !tbaa !296
  store <4 x i32> %wide.load284, ptr %i.bf, align 4, !tbaa !296
  %index.next285 = add nuw i64 %index280, 8       ; 2 uses
  %i.bg = icmp eq i64 %index.next285, %n.vec278
  br i1 %i.bg, label %middle.block286, label %vector.body279, !llvm.loop !3571

middle.block286:                                  ; preds = %vector.body279
  %cmp.n287 = icmp eq i64 %i.ax, %n.vec278
  br i1 %cmp.n287, label %.thread, label %.lr.ph.i24.i.preheader474

.lr.ph.i24.i.preheader474:                        ; preds = %vector.memcheck275, %.lr.ph.i24.i.preheader, %middle.block286
  %.012.i.i.ph = phi ptr [ %i.ae, %vector.memcheck275 ], [ %i.ae, %.lr.ph.i24.i.preheader ], [ %i.bb, %middle.block286 ]
  %.0911.i.i.ph = phi ptr [ %.0.lcssa.i22.i, %vector.memcheck275 ], [ %.0.lcssa.i22.i, %.lr.ph.i24.i.preheader ], [ %i.bc, %middle.block286 ]
  br label %.lr.ph.i24.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i.preheader474, %.lr.ph.i24.i
  %.012.i.i = phi ptr [ %i.bi, %.lr.ph.i24.i ], [ %.012.i.i.ph, %.lr.ph.i24.i.preheader474 ] ; 2 uses
  %.0911.i.i = phi ptr [ %i.bj, %.lr.ph.i24.i ], [ %.0911.i.i.ph, %.lr.ph.i24.i.preheader474 ] ; 2 uses
  %i.bh = load i32, ptr %.012.i.i, align 4, !tbaa !296
  store i32 %i.bh, ptr %.0911.i.i, align 4, !tbaa !296
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 4
  %.not.i25.i = icmp eq ptr %i.bi, %i.at
  br i1 %.not.i25.i, label %.thread, label %.lr.ph.i24.i, !llvm.loop !3572

.thread:                                          ; preds = %.lr.ph.i.i, %.lr.ph.i24.i, %middle.block, %middle.block286, %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i
  store i64 %i.c, ptr %i.l, align 8, !tbaa !427
  br i1 %i.h, label %.lr.ph, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit.sink.split

.thread.thread:                                   ; preds = %bb.a
  br i1 %i.h, label %.lr.ph, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit.sink.split

.lr.ph:                                           ; preds = %.thread.thread, %.thread
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bl = shl i64 %3, 2
  %i.bm = add i64 %i.bl, -4
  %i.bn = shl i64 %3, 2
  %invariant.op = sub i64 -4, %i.bn
  br label %bb.d

._crit_edge:                                      ; preds = %bb.s
  %i.bo = select i1 %.1, i1 %i.bz, i1 false       ; 2 uses
  %spec.select = select i1 %.1, i64 %.1.i, i64 0  ; 2 uses
  store i64 %spec.select, ptr %5, align 8, !tbaa !319
  %i.bp = sub i64 %i.g, %spec.select
  store i64 %i.bp, ptr %1, align 8, !tbaa !319
  br i1 %or.cond187, label %bb.t, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit

bb.d:                                             ; preds = %.lr.ph, %bb.s
  %.0205 = phi i64 [ %4, %.lr.ph ], [ %i.bs, %bb.s ] ; 5 uses
  %.0130204 = phi i64 [ 0, %.lr.ph ], [ %i.gz, %bb.s ] ; 3 uses
  %.0131203 = phi i1 [ true, %.lr.ph ], [ %.1, %bb.s ]
  %.0132202 = phi i64 [ 0, %.lr.ph ], [ %.1.i, %bb.s ] ; 2 uses
  %.0133201 = phi i64 [ %4, %.lr.ph ], [ %spec.select15.i, %bb.s ] ; 12 uses
  %.0134200 = phi i1 [ true, %.lr.ph ], [ %i.bz, %bb.s ]
  %i.bq = load i64, ptr %5, align 8, !tbaa !319   ; 2 uses
  %i.br = load i64, ptr %1, align 8, !tbaa !319   ; 4 uses
  %i.bs = shl i64 %.0205, 1                       ; 6 uses
  %.not.i144 = icmp eq i64 %i.bq, 0
  br i1 %.not.i144, label %bb.e, label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

bb.e:                                             ; preds = %bb.d
  %i.bt = lshr i64 %i.br, 1                       ; 3 uses
  %i.bu = sub nuw i64 %i.br, %i.bt                ; 2 uses
  %i.bv = icmp ugt i64 %i.bu, 3
  br i1 %i.bv, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.bw = udiv i64 %i.bs, %i.bt
  %.not192 = icmp ult i64 %i.bu, %i.bw
  br i1 %.not192, label %.critedge.i, label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

.critedge.i:                                      ; preds = %bb.e, %bb.f
  %i.bx = udiv i64 %i.bs, %i.br
  br label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit: ; preds = %bb.d, %bb.f, %.critedge.i
  %.1 = phi i1 [ true, %bb.f ], [ false, %.critedge.i ], [ true, %bb.d ] ; 10 uses
  %.1.i = phi i64 [ %i.bt, %bb.f ], [ %i.bx, %.critedge.i ], [ %i.bq, %bb.d ] ; 13 uses
  %i.by = and i64 %.0130204, 1
  %i.bz = icmp eq i64 %i.by, 0                    ; 9 uses
  %i.ca = urem i64 %i.e, %i.bs                    ; 2 uses
  %.not.i145 = icmp ugt i64 %i.ca, %.0205
  %i.cb = select i1 %.not.i145, i64 0, i64 %i.ca  ; 5 uses
  %spec.select15.i = sub i64 %i.e, %i.cb          ; 5 uses
  %i.cc = icmp ne i64 %.0130204, 0
  %or.cond = and i1 %i.cc, %.0131203
  %or.cond3 = select i1 %or.cond, i1 %.0134200, i1 false
  br i1 %or.cond3, label %bb.g, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit

bb.g:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %.not = xor i1 %i.bz, true
  %or.cond5 = and i1 %.1, %.not
  br i1 %or.cond5, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cd = sub i64 0, %.0132202
  %i.ce = getelementptr [4 x i8], ptr %i.d, i64 %i.cd ; 5 uses
  %.not8.i.i146 = icmp eq i64 %.0133201, 0        ; 2 uses
  br i1 %or.cond187, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %.not8.i.i146, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i.preheader.i148

.lr.ph.i.preheader.i148:                          ; preds = %bb.i
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0133201 ; 3 uses
  %.idx13.i = shl i64 %.0133201, 2                ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx13.i ; 3 uses
  %i.ch = add i64 %.idx13.i, -4                   ; 2 uses
  %i.ci = lshr exact i64 %i.ch, 2
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check377 = icmp ult i64 %i.ch, 28
  %i.ck = shl i64 %.0132202, 2
  %diff.check379 = icmp ugt i64 %i.ck, -32
  %or.cond458 = select i1 %min.iters.check377, i1 true, i1 %diff.check379
  br i1 %or.cond458, label %.lr.ph.i.i149.preheader, label %vector.ph380

vector.ph380:                                     ; preds = %.lr.ph.i.preheader.i148
  %n.vec381 = and i64 %i.cj, 9223372036854775800  ; 3 uses
  %i.cl = mul i64 %n.vec381, -4                   ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cg, i64 %i.cl
  br label %vector.body382

vector.body382:                                   ; preds = %vector.body382, %vector.ph380
  %index383 = phi i64 [ 0, %vector.ph380 ], [ %index.next388, %vector.body382 ] ; 2 uses
  %i.co = mul i64 %index383, -4                   ; 2 uses
  %next.gep384 = getelementptr i8, ptr %i.cf, i64 %i.co ; 2 uses
  %next.gep385 = getelementptr i8, ptr %i.cg, i64 %i.co ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %next.gep385, i64 -16
  %i.cq = getelementptr inbounds i8, ptr %next.gep385, i64 -32
  %wide.load386 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !296
  %wide.load387 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !296
  %i.cr = getelementptr inbounds i8, ptr %next.gep384, i64 -16
  %i.cs = getelementptr inbounds i8, ptr %next.gep384, i64 -32
  store <4 x i32> %wide.load386, ptr %i.cr, align 4, !tbaa !296
  store <4 x i32> %wide.load387, ptr %i.cs, align 4, !tbaa !296
  %index.next388 = add nuw i64 %index383, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next388, %n.vec381
  br i1 %i.ct, label %middle.block389, label %vector.body382, !llvm.loop !3573

middle.block389:                                  ; preds = %vector.body382
  %cmp.n390 = icmp eq i64 %i.cj, %n.vec381
  br i1 %cmp.n390, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i.i149.preheader

.lr.ph.i.i149.preheader:                          ; preds = %.lr.ph.i.preheader.i148, %middle.block389
  %.010.i.i150.ph = phi ptr [ %i.cf, %.lr.ph.i.preheader.i148 ], [ %i.cm, %middle.block389 ]
  %.079.i.i151.ph = phi ptr [ %i.cg, %.lr.ph.i.preheader.i148 ], [ %i.cn, %middle.block389 ]
  br label %.lr.ph.i.i149

.lr.ph.i.i149:                                    ; preds = %.lr.ph.i.i149.preheader, %.lr.ph.i.i149
  %.010.i.i150 = phi ptr [ %i.cv, %.lr.ph.i.i149 ], [ %.010.i.i150.ph, %.lr.ph.i.i149.preheader ]
  %.079.i.i151 = phi ptr [ %i.cu, %.lr.ph.i.i149 ], [ %.079.i.i151.ph, %.lr.ph.i.i149.preheader ]
  %i.cu = getelementptr inbounds i8, ptr %.079.i.i151, i64 -4 ; 3 uses
  %i.cv = getelementptr inbounds i8, ptr %.010.i.i150, i64 -4 ; 2 uses
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !296
  store i32 %i.cw, ptr %i.cv, align 4, !tbaa !296
  %.not.i.i152 = icmp eq ptr %i.ce, %i.cu
  br i1 %.not.i.i152, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i.i149, !llvm.loop !3574

bb.j:                                             ; preds = %bb.h
  br i1 %.not8.i.i146, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i10.preheader.i

.lr.ph.i10.preheader.i:                           ; preds = %bb.j
  %i.cx = getelementptr [4 x i8], ptr %i.d, i64 %.0133201 ; 5 uses
  %.idx.i147 = shl i64 %.0133201, 2               ; 2 uses
  %i.cy = getelementptr i8, ptr %i.ce, i64 %.idx.i147 ; 5 uses
  %i.cz = add i64 %.idx.i147, -4                  ; 2 uses
  %i.da = lshr exact i64 %i.cz, 2
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %min.iters.check398 = icmp ult i64 %i.cz, 28
  br i1 %min.iters.check398, label %.lr.ph.i10.i.preheader, label %vector.memcheck399

vector.memcheck399:                               ; preds = %.lr.ph.i10.preheader.i
  %bound0400 = icmp ult ptr %i.ce, %i.cx
  %bound1401 = icmp ult ptr %i.d, %i.cy
  %found.conflict402 = and i1 %bound0400, %bound1401
  br i1 %found.conflict402, label %.lr.ph.i10.i.preheader, label %vector.ph403

vector.ph403:                                     ; preds = %vector.memcheck399
  %n.vec404 = and i64 %i.db, 9223372036854775800  ; 3 uses
  %i.dc = mul i64 %n.vec404, -4                   ; 2 uses
  %i.dd = getelementptr i8, ptr %i.cx, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.cy, i64 %i.dc
  br label %vector.body405

vector.body405:                                   ; preds = %vector.body405, %vector.ph403
  %index406 = phi i64 [ 0, %vector.ph403 ], [ %index.next413, %vector.body405 ] ; 2 uses
  %i.df = mul i64 %index406, -4                   ; 2 uses
  %next.gep407 = getelementptr i8, ptr %i.cx, i64 %i.df ; 2 uses
  %next.gep408 = getelementptr i8, ptr %i.cy, i64 %i.df ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %next.gep408, i64 -16 ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %next.gep408, i64 -32 ; 2 uses
  %wide.load409 = load <4 x i32>, ptr %i.dg, align 4, !tbaa !296, !alias.scope !3599, !noalias !3600
  %wide.load410 = load <4 x i32>, ptr %i.dh, align 4, !tbaa !296, !alias.scope !3599, !noalias !3600
  %i.di = getelementptr inbounds i8, ptr %next.gep407, i64 -16 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %next.gep407, i64 -32 ; 2 uses
  %wide.load411 = load <4 x i32>, ptr %i.di, align 4, !tbaa !296, !alias.scope !3600
  %wide.load412 = load <4 x i32>, ptr %i.dj, align 4, !tbaa !296, !alias.scope !3600
  store <4 x i32> %wide.load411, ptr %i.dg, align 4, !tbaa !296, !alias.scope !3599, !noalias !3600
  store <4 x i32> %wide.load412, ptr %i.dh, align 4, !tbaa !296, !alias.scope !3599, !noalias !3600
  store <4 x i32> %wide.load409, ptr %i.di, align 4, !tbaa !296, !alias.scope !3600
  store <4 x i32> %wide.load410, ptr %i.dj, align 4, !tbaa !296, !alias.scope !3600
  %index.next413 = add nuw i64 %index406, 8       ; 2 uses
  %i.dk = icmp eq i64 %index.next413, %n.vec404
  br i1 %i.dk, label %middle.block414, label %vector.body405, !llvm.loop !3578

middle.block414:                                  ; preds = %vector.body405
  %cmp.n415 = icmp eq i64 %i.db, %n.vec404
  br i1 %cmp.n415, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i10.i.preheader

.lr.ph.i10.i.preheader:                           ; preds = %vector.memcheck399, %.lr.ph.i10.preheader.i, %middle.block414
  %.08.i.i.ph = phi ptr [ %i.cx, %vector.memcheck399 ], [ %i.cx, %.lr.ph.i10.preheader.i ], [ %i.dd, %middle.block414 ]
  %.057.i.i.ph = phi ptr [ %i.cy, %vector.memcheck399 ], [ %i.cy, %.lr.ph.i10.preheader.i ], [ %i.de, %middle.block414 ]
  br label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %.lr.ph.i10.i.preheader, %.lr.ph.i10.i
  %.08.i.i = phi ptr [ %i.dm, %.lr.ph.i10.i ], [ %.08.i.i.ph, %.lr.ph.i10.i.preheader ]
  %.057.i.i = phi ptr [ %i.dl, %.lr.ph.i10.i ], [ %.057.i.i.ph, %.lr.ph.i10.i.preheader ]
  %i.dl = getelementptr inbounds i8, ptr %.057.i.i, i64 -4 ; 4 uses
  %i.dm = getelementptr inbounds i8, ptr %.08.i.i, i64 -4 ; 3 uses
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !296
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !296
  store i32 %i.do, ptr %i.dl, align 4, !tbaa !296
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !296
  %.not.i11.i = icmp eq ptr %i.ce, %i.dl
  br i1 %.not.i11.i, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i10.i, !llvm.loop !3579

bb.k:                                             ; preds = %bb.g
  %i.dp = getelementptr [4 x i8], ptr %i.d, i64 %.0133201 ; 18 uses
  %i.dq = sub i64 0, %.1.i
  %i.dr = getelementptr [4 x i8], ptr %i.dp, i64 %i.dq ; 9 uses
  %i.ds = icmp ugt i64 %.0133201, %spec.select15.i
  br i1 %i.ds, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dt = sub nuw i64 %.0133201, %spec.select15.i ; 2 uses
  %i.du = sub i64 0, %i.dt
  %i.dv = getelementptr [4 x i8], ptr %i.dr, i64 %i.du ; 4 uses
  %.idx13.i161 = shl i64 %i.dt, 2
  %i.dw = getelementptr i8, ptr %i.dv, i64 %.idx13.i161 ; 8 uses
  %i.dx = add i64 %i.cb, %.0133201
  %i.dy = add i64 %i.dx, %i.c
  %i.dz = shl i64 %i.dy, 2
  %.reass = add i64 %i.dz, %invariant.op          ; 2 uses
  %i.ea = lshr exact i64 %.reass, 2
  %i.eb = add nuw nsw i64 %i.ea, 1                ; 4 uses
  %min.iters.check293 = icmp ult i64 %.reass, 28  ; 2 uses
  br i1 %or.cond187, label %.lr.ph.i.i162.preheader, label %.lr.ph.i10.i156.preheader

.lr.ph.i10.i156.preheader:                        ; preds = %bb.l
  br i1 %min.iters.check293, label %.lr.ph.i10.i156.preheader466, label %vector.memcheck313

vector.memcheck313:                               ; preds = %.lr.ph.i10.i156.preheader
  %7 = sub i64 %3, %i.cb
  %8 = shl i64 %7, 2
  %i.ec = getelementptr i8, ptr %2, i64 %8
  %bound0 = icmp ult ptr %i.dv, %i.dp
  %bound1 = icmp ult ptr %i.ec, %i.dw
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i10.i156.preheader466, label %vector.ph314

vector.ph314:                                     ; preds = %vector.memcheck313
  %n.vec315 = and i64 %i.eb, 9223372036854775800  ; 3 uses
  %i.ed = mul i64 %n.vec315, -4                   ; 2 uses
  %i.ee = getelementptr i8, ptr %i.dp, i64 %i.ed
  %i.ef = getelementptr i8, ptr %i.dw, i64 %i.ed
  br label %vector.body316

vector.body316:                                   ; preds = %vector.body316, %vector.ph314
  %index317 = phi i64 [ 0, %vector.ph314 ], [ %index.next324, %vector.body316 ] ; 2 uses
  %i.eg = mul i64 %index317, -4                   ; 2 uses
  %next.gep318 = getelementptr i8, ptr %i.dp, i64 %i.eg ; 2 uses
  %next.gep319 = getelementptr i8, ptr %i.dw, i64 %i.eg ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %next.gep319, i64 -16 ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %next.gep319, i64 -32 ; 2 uses
  %wide.load320 = load <4 x i32>, ptr %i.eh, align 4, !tbaa !296, !alias.scope !3601, !noalias !3602
  %wide.load321 = load <4 x i32>, ptr %i.ei, align 4, !tbaa !296, !alias.scope !3601, !noalias !3602
  %i.ej = getelementptr inbounds i8, ptr %next.gep318, i64 -16 ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %next.gep318, i64 -32 ; 2 uses
  %wide.load322 = load <4 x i32>, ptr %i.ej, align 4, !tbaa !296, !alias.scope !3602
  %wide.load323 = load <4 x i32>, ptr %i.ek, align 4, !tbaa !296, !alias.scope !3602
  store <4 x i32> %wide.load322, ptr %i.eh, align 4, !tbaa !296, !alias.scope !3601, !noalias !3602
  store <4 x i32> %wide.load323, ptr %i.ei, align 4, !tbaa !296, !alias.scope !3601, !noalias !3602
  store <4 x i32> %wide.load320, ptr %i.ej, align 4, !tbaa !296, !alias.scope !3602
  store <4 x i32> %wide.load321, ptr %i.ek, align 4, !tbaa !296, !alias.scope !3602
  %index.next324 = add nuw i64 %index317, 8       ; 2 uses
  %i.el = icmp eq i64 %index.next324, %n.vec315
  br i1 %i.el, label %middle.block325, label %vector.body316, !llvm.loop !3583

middle.block325:                                  ; preds = %vector.body316
  %cmp.n326 = icmp eq i64 %i.eb, %n.vec315
  br i1 %cmp.n326, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i10.i156.preheader466

.lr.ph.i10.i156.preheader466:                     ; preds = %vector.memcheck313, %.lr.ph.i10.i156.preheader, %middle.block325
  %.08.i.i157.ph = phi ptr [ %i.dp, %vector.memcheck313 ], [ %i.dp, %.lr.ph.i10.i156.preheader ], [ %i.ee, %middle.block325 ]
  %.057.i.i158.ph = phi ptr [ %i.dw, %vector.memcheck313 ], [ %i.dw, %.lr.ph.i10.i156.preheader ], [ %i.ef, %middle.block325 ]
  br label %.lr.ph.i10.i156

.lr.ph.i.i162.preheader:                          ; preds = %bb.l
  %i.em = shl i64 %.1.i, 2
  %diff.check295 = icmp ugt i64 %i.em, -32
  %or.cond459 = select i1 %min.iters.check293, i1 true, i1 %diff.check295
  br i1 %or.cond459, label %.lr.ph.i.i162.preheader465, label %vector.ph296

vector.ph296:                                     ; preds = %.lr.ph.i.i162.preheader
  %n.vec297 = and i64 %i.eb, 9223372036854775800  ; 3 uses
  %i.en = mul i64 %n.vec297, -4                   ; 2 uses
  %i.eo = getelementptr i8, ptr %i.dp, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.dw, i64 %i.en
  br label %vector.body298

vector.body298:                                   ; preds = %vector.body298, %vector.ph296
  %index299 = phi i64 [ 0, %vector.ph296 ], [ %index.next304, %vector.body298 ] ; 2 uses
  %i.eq = mul i64 %index299, -4                   ; 2 uses
  %next.gep300 = getelementptr i8, ptr %i.dp, i64 %i.eq ; 2 uses
  %next.gep301 = getelementptr i8, ptr %i.dw, i64 %i.eq ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %next.gep301, i64 -16
  %i.es = getelementptr inbounds i8, ptr %next.gep301, i64 -32
  %wide.load302 = load <4 x i32>, ptr %i.er, align 4, !tbaa !296
  %wide.load303 = load <4 x i32>, ptr %i.es, align 4, !tbaa !296
  %i.et = getelementptr inbounds i8, ptr %next.gep300, i64 -16
  %i.eu = getelementptr inbounds i8, ptr %next.gep300, i64 -32
  store <4 x i32> %wide.load302, ptr %i.et, align 4, !tbaa !296
  store <4 x i32> %wide.load303, ptr %i.eu, align 4, !tbaa !296
  %index.next304 = add nuw i64 %index299, 8       ; 2 uses
  %i.ev = icmp eq i64 %index.next304, %n.vec297
  br i1 %i.ev, label %middle.block305, label %vector.body298, !llvm.loop !3584

middle.block305:                                  ; preds = %vector.body298
  %cmp.n306 = icmp eq i64 %i.eb, %n.vec297
  br i1 %cmp.n306, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i.i162.preheader465

.lr.ph.i.i162.preheader465:                       ; preds = %.lr.ph.i.i162.preheader, %middle.block305
  %.010.i.i163.ph = phi ptr [ %i.dp, %.lr.ph.i.i162.preheader ], [ %i.eo, %middle.block305 ]
  %.079.i.i164.ph = phi ptr [ %i.dw, %.lr.ph.i.i162.preheader ], [ %i.ep, %middle.block305 ]
  br label %.lr.ph.i.i162

.lr.ph.i.i162:                                    ; preds = %.lr.ph.i.i162.preheader465, %.lr.ph.i.i162
  %.010.i.i163 = phi ptr [ %i.ex, %.lr.ph.i.i162 ], [ %.010.i.i163.ph, %.lr.ph.i.i162.preheader465 ]
  %.079.i.i164 = phi ptr [ %i.ew, %.lr.ph.i.i162 ], [ %.079.i.i164.ph, %.lr.ph.i.i162.preheader465 ]
  %i.ew = getelementptr inbounds i8, ptr %.079.i.i164, i64 -4 ; 3 uses
  %i.ex = getelementptr inbounds i8, ptr %.010.i.i163, i64 -4 ; 2 uses
  %i.ey = load i32, ptr %i.ew, align 4, !tbaa !296
  store i32 %i.ey, ptr %i.ex, align 4, !tbaa !296
  %.not.i.i165 = icmp eq ptr %i.dv, %i.ew
  br i1 %.not.i.i165, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i.i162, !llvm.loop !3585

.lr.ph.i10.i156:                                  ; preds = %.lr.ph.i10.i156.preheader466, %.lr.ph.i10.i156
  %.08.i.i157 = phi ptr [ %i.fa, %.lr.ph.i10.i156 ], [ %.08.i.i157.ph, %.lr.ph.i10.i156.preheader466 ]
  %.057.i.i158 = phi ptr [ %i.ez, %.lr.ph.i10.i156 ], [ %.057.i.i158.ph, %.lr.ph.i10.i156.preheader466 ]
  %i.ez = getelementptr inbounds i8, ptr %.057.i.i158, i64 -4 ; 4 uses
  %i.fa = getelementptr inbounds i8, ptr %.08.i.i157, i64 -4 ; 3 uses
  %i.fb = load i32, ptr %i.ez, align 4, !tbaa !296
  %i.fc = load i32, ptr %i.fa, align 4, !tbaa !296
  store i32 %i.fc, ptr %i.ez, align 4, !tbaa !296
  store i32 %i.fb, ptr %i.fa, align 4, !tbaa !296
  %.not.i11.i159 = icmp eq ptr %i.dv, %i.ez
  br i1 %.not.i11.i159, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i10.i156, !llvm.loop !3586

bb.m:                                             ; preds = %bb.k
  %i.fd = icmp ult i64 %.0133201, %spec.select15.i
  br i1 %i.fd, label %bb.n, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit

bb.n:                                             ; preds = %bb.m
  %i.fe = sub nuw i64 %spec.select15.i, %.0133201
  %.idx14.i = shl i64 %i.fe, 2
  %i.ff = getelementptr i8, ptr %i.dp, i64 %.idx14.i ; 3 uses
  %i.fg = add i64 %i.cb, %.0133201
  %i.fh = add i64 %i.fg, %i.c
  %i.fi = shl i64 %i.fh, 2
  %i.fj = sub i64 %i.bm, %i.fi                    ; 2 uses
  %i.fk = lshr exact i64 %i.fj, 2
  %i.fl = add nuw nsw i64 %i.fk, 1                ; 4 uses
  %min.iters.check332 = icmp ult i64 %i.fj, 28    ; 2 uses
  br i1 %or.cond187, label %.lr.ph.i.i168.preheader, label %.lr.ph.i9.i.preheader

.lr.ph.i9.i.preheader:                            ; preds = %bb.n
  br i1 %min.iters.check332, label %.lr.ph.i9.i.preheader470, label %vector.memcheck355

vector.memcheck355:                               ; preds = %.lr.ph.i9.i.preheader
  %i.fm = add i64 %i.cb, %.1.i
  %9 = sub i64 %3, %i.fm
  %10 = shl i64 %9, 2
  %i.fn = getelementptr i8, ptr %2, i64 %10
  %bound0356 = icmp ult ptr %i.dp, %i.fn
  %bound1357 = icmp ult ptr %i.dr, %i.ff
  %found.conflict358 = and i1 %bound0356, %bound1357
  br i1 %found.conflict358, label %.lr.ph.i9.i.preheader470, label %vector.ph359

vector.ph359:                                     ; preds = %vector.memcheck355
  %n.vec360 = and i64 %i.fl, 9223372036854775800  ; 3 uses
  %i.fo = shl i64 %n.vec360, 2                    ; 2 uses
  %i.fp = getelementptr i8, ptr %i.dr, i64 %i.fo
  %i.fq = getelementptr i8, ptr %i.dp, i64 %i.fo
  br label %vector.body361

vector.body361:                                   ; preds = %vector.body361, %vector.ph359
  %index362 = phi i64 [ 0, %vector.ph359 ], [ %index.next369, %vector.body361 ] ; 2 uses
  %i.fr = shl i64 %index362, 2                    ; 2 uses
  %next.gep363 = getelementptr i8, ptr %i.dr, i64 %i.fr ; 3 uses
  %next.gep364 = getelementptr i8, ptr %i.dp, i64 %i.fr ; 3 uses
  %i.fs = getelementptr i8, ptr %next.gep364, i64 16 ; 2 uses
  %wide.load365 = load <4 x i32>, ptr %next.gep364, align 4, !tbaa !296, !alias.scope !3603, !noalias !3604
  %wide.load366 = load <4 x i32>, ptr %i.fs, align 4, !tbaa !296, !alias.scope !3603, !noalias !3604
  %i.ft = getelementptr i8, ptr %next.gep363, i64 16 ; 2 uses
  %wide.load367 = load <4 x i32>, ptr %next.gep363, align 4, !tbaa !296, !alias.scope !3604
  %wide.load368 = load <4 x i32>, ptr %i.ft, align 4, !tbaa !296, !alias.scope !3604
  store <4 x i32> %wide.load367, ptr %next.gep364, align 4, !tbaa !296, !alias.scope !3603, !noalias !3604
  store <4 x i32> %wide.load368, ptr %i.fs, align 4, !tbaa !296, !alias.scope !3603, !noalias !3604
  store <4 x i32> %wide.load365, ptr %next.gep363, align 4, !tbaa !296, !alias.scope !3604
  store <4 x i32> %wide.load366, ptr %i.ft, align 4, !tbaa !296, !alias.scope !3604
  %index.next369 = add nuw i64 %index362, 8       ; 2 uses
  %i.fu = icmp eq i64 %index.next369, %n.vec360
  br i1 %i.fu, label %middle.block370, label %vector.body361, !llvm.loop !3590

middle.block370:                                  ; preds = %vector.body361
  %cmp.n371 = icmp eq i64 %i.fl, %n.vec360
  br i1 %cmp.n371, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i9.i.preheader470

.lr.ph.i9.i.preheader470:                         ; preds = %vector.memcheck355, %.lr.ph.i9.i.preheader, %middle.block370
  %.010.i10.i.ph = phi ptr [ %i.dr, %vector.memcheck355 ], [ %i.dr, %.lr.ph.i9.i.preheader ], [ %i.fp, %middle.block370 ]
  %.079.i11.i.ph = phi ptr [ %i.dp, %vector.memcheck355 ], [ %i.dp, %.lr.ph.i9.i.preheader ], [ %i.fq, %middle.block370 ]
  br label %.lr.ph.i9.i

.lr.ph.i.i168.preheader:                          ; preds = %bb.n
  %i.fv = shl i64 %.1.i, 2
  %diff.check334 = icmp ugt i64 %i.fv, -32
  %or.cond460 = select i1 %min.iters.check332, i1 true, i1 %diff.check334
  br i1 %or.cond460, label %.lr.ph.i.i168.preheader468, label %vector.ph335

vector.ph335:                                     ; preds = %.lr.ph.i.i168.preheader
  %n.vec336 = and i64 %i.fl, 9223372036854775800  ; 3 uses
  %i.fw = shl i64 %n.vec336, 2                    ; 2 uses
  %i.fx = getelementptr i8, ptr %i.dr, i64 %i.fw
  %i.fy = getelementptr i8, ptr %i.dp, i64 %i.fw
  br label %vector.body337

vector.body337:                                   ; preds = %vector.body337, %vector.ph335
  %index338 = phi i64 [ 0, %vector.ph335 ], [ %index.next343, %vector.body337 ] ; 2 uses
  %i.fz = shl i64 %index338, 2                    ; 2 uses
  %next.gep339 = getelementptr i8, ptr %i.dr, i64 %i.fz ; 2 uses
  %next.gep340 = getelementptr i8, ptr %i.dp, i64 %i.fz ; 2 uses
  %i.ga = getelementptr i8, ptr %next.gep340, i64 16
  %wide.load341 = load <4 x i32>, ptr %next.gep340, align 4, !tbaa !296
  %wide.load342 = load <4 x i32>, ptr %i.ga, align 4, !tbaa !296
  %i.gb = getelementptr i8, ptr %next.gep339, i64 16
  store <4 x i32> %wide.load341, ptr %next.gep339, align 4, !tbaa !296
  store <4 x i32> %wide.load342, ptr %i.gb, align 4, !tbaa !296
  %index.next343 = add nuw i64 %index338, 8       ; 2 uses
  %i.gc = icmp eq i64 %index.next343, %n.vec336
  br i1 %i.gc, label %middle.block344, label %vector.body337, !llvm.loop !3591

middle.block344:                                  ; preds = %vector.body337
  %cmp.n345 = icmp eq i64 %i.fl, %n.vec336
  br i1 %cmp.n345, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i.i168.preheader468

.lr.ph.i.i168.preheader468:                       ; preds = %.lr.ph.i.i168.preheader, %middle.block344
  %.010.i.i169.ph = phi ptr [ %i.dr, %.lr.ph.i.i168.preheader ], [ %i.fx, %middle.block344 ]
  %.079.i.i170.ph = phi ptr [ %i.dp, %.lr.ph.i.i168.preheader ], [ %i.fy, %middle.block344 ]
  br label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.preheader468, %.lr.ph.i.i168
  %.010.i.i169 = phi ptr [ %i.gf, %.lr.ph.i.i168 ], [ %.010.i.i169.ph, %.lr.ph.i.i168.preheader468 ] ; 2 uses
  %.079.i.i170 = phi ptr [ %i.ge, %.lr.ph.i.i168 ], [ %.079.i.i170.ph, %.lr.ph.i.i168.preheader468 ] ; 2 uses
  %i.gd = load i32, ptr %.079.i.i170, align 4, !tbaa !296
  store i32 %i.gd, ptr %.010.i.i169, align 4, !tbaa !296
  %i.ge = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 4 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 4
  %.not.i.i171 = icmp eq ptr %i.ge, %i.ff
  br i1 %.not.i.i171, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i.i168, !llvm.loop !3592

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.preheader470, %.lr.ph.i9.i
  %.010.i10.i = phi ptr [ %i.gj, %.lr.ph.i9.i ], [ %.010.i10.i.ph, %.lr.ph.i9.i.preheader470 ] ; 3 uses
  %.079.i11.i = phi ptr [ %i.gi, %.lr.ph.i9.i ], [ %.079.i11.i.ph, %.lr.ph.i9.i.preheader470 ] ; 3 uses
  %i.gg = load i32, ptr %.079.i11.i, align 4, !tbaa !296
  %i.gh = load i32, ptr %.010.i10.i, align 4, !tbaa !296
  store i32 %i.gh, ptr %.079.i11.i, align 4, !tbaa !296
  store i32 %i.gg, ptr %.010.i10.i, align 4, !tbaa !296
  %i.gi = getelementptr inbounds nuw i8, ptr %.079.i11.i, i64 4 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.010.i10.i, i64 4
  %.not.i12.i = icmp eq ptr %i.gi, %i.ff
  br i1 %.not.i12.i, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i9.i, !llvm.loop !3593

_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit: ; preds = %.lr.ph.i10.i, %.lr.ph.i.i149, %.lr.ph.i9.i, %.lr.ph.i.i168, %.lr.ph.i10.i156, %.lr.ph.i.i162, %middle.block414, %middle.block389, %middle.block370, %middle.block344, %middle.block325, %middle.block305, %bb.j, %bb.i, %bb.m, %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %.not140 = icmp eq i64 %i.br, 0
  br i1 %.not140, label %bb.r, label %bb.o

bb.o:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit
  %i.gk = udiv i64 %i.bs, %.1.i
  %i.gl = icmp ugt i64 %i.gk, 256
  br i1 %i.gl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.not6 = xor i1 %.1, true
  %or.cond8 = select i1 %.not6, i1 true, i1 %i.bz
  %i.gm = sub i64 0, %.1.i
  %.idx142 = select i1 %or.cond8, i64 0, i64 %i.gm
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.idx142
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_NS0_13adaptive_xbufIiS3_mEEEEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_bbRT3_T2_b(ptr noundef %0, ptr noundef %i.gn, i64 noundef %i.e, i64 noundef %.0205, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond187, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.bz)
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %.not9 = xor i1 %.1, true
  %or.cond11 = select i1 %.not9, i1 true, i1 %i.bz
  %i.go = sub i64 0, %.1.i
  %.idx141 = select i1 %or.cond11, i64 0, i64 %i.go
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.idx141
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPhNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_bbRT3_T2_b(ptr noundef nonnull %i.b, ptr noundef %i.gp, i64 noundef %i.e, i64 noundef %.0205, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond187, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.s

bb.r:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit
  %i.gq = load i64, ptr %i.bk, align 8, !tbaa !427
  %i.gr = load ptr, ptr %6, align 8, !tbaa !426
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.gq
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = add i64 %i.gt, 7
  %i.gv = and i64 %i.gu, -8
  %i.gw = inttoptr i64 %i.gv to ptr
  %.not12 = xor i1 %.1, true
  %or.cond14 = select i1 %.not12, i1 true, i1 %i.bz
  %i.gx = sub i64 0, %.1.i
  %.idx = select i1 %or.cond14, i64 0, i64 %i.gx
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.idx
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_bbRT3_T2_b(ptr noundef %i.gw, ptr noundef %i.gy, i64 noundef %i.e, i64 noundef %.0205, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond187, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.bz)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %i.gz = add i64 %.0130204, 1
  %i.ha = icmp ugt i64 %i.e, %i.bs
  br i1 %i.ha, label %bb.d, label %._crit_edge, !llvm.loop !3594

bb.t:                                             ; preds = %._crit_edge
  %i.hb = load ptr, ptr %6, align 8, !tbaa !426   ; 9 uses
  %i.hc = ptrtoaddr ptr %i.hb to i64              ; 2 uses
  %i.hd = load i64, ptr %5, align 8, !tbaa !319   ; 2 uses
  %.idx191 = shl i64 %i.hd, 2                     ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 %.idx191 ; 2 uses
  %.not8.i = icmp eq i64 %i.hd, 0                 ; 2 uses
  br i1 %i.bo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  br i1 %.not8.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.u
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.e ; 4 uses
  %i.hg = add i64 %.idx191, -4                    ; 2 uses
  %i.hh = lshr exact i64 %i.hg, 2
  %i.hi = add nuw nsw i64 %i.hh, 1                ; 2 uses
  %min.iters.check440 = icmp ult i64 %i.hg, 92
  br i1 %min.iters.check440, label %.lr.ph.i.preheader462, label %vector.memcheck441

vector.memcheck441:                               ; preds = %.lr.ph.i.preheader
  %i.hj = shl i64 %3, 2
  %i.hk = shl i64 %i.c, 2
  %i.hl = add i64 %i.hj, %i.a
  %i.hm = add i64 %i.hk, %i.hc
  %i.hn = sub i64 %i.hm, %i.hl
  %diff.check442 = icmp ugt i64 %i.hn, -32
  br i1 %diff.check442, label %.lr.ph.i.preheader462, label %vector.ph443

vector.ph443:                                     ; preds = %vector.memcheck441
  %n.vec444 = and i64 %i.hi, 9223372036854775800  ; 3 uses
  %i.ho = shl i64 %n.vec444, 2                    ; 2 uses
  %i.hp = getelementptr i8, ptr %i.hf, i64 %i.ho
  %i.hq = getelementptr i8, ptr %i.hb, i64 %i.ho
  br label %vector.body445

vector.body445:                                   ; preds = %vector.body445, %vector.ph443
  %index446 = phi i64 [ 0, %vector.ph443 ], [ %index.next451, %vector.body445 ] ; 2 uses
  %i.hr = shl i64 %index446, 2                    ; 2 uses
  %next.gep447 = getelementptr i8, ptr %i.hf, i64 %i.hr ; 2 uses
  %next.gep448 = getelementptr i8, ptr %i.hb, i64 %i.hr ; 2 uses
  %i.hs = getelementptr i8, ptr %next.gep448, i64 16
  %wide.load449 = load <4 x i32>, ptr %next.gep448, align 4, !tbaa !296
  %wide.load450 = load <4 x i32>, ptr %i.hs, align 4, !tbaa !296
  %i.ht = getelementptr i8, ptr %next.gep447, i64 16
  store <4 x i32> %wide.load449, ptr %next.gep447, align 4, !tbaa !296
  store <4 x i32> %wide.load450, ptr %i.ht, align 4, !tbaa !296
  %index.next451 = add nuw i64 %index446, 8       ; 2 uses
  %i.hu = icmp eq i64 %index.next451, %n.vec444
  br i1 %i.hu, label %middle.block452, label %vector.body445, !llvm.loop !3595

end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_S3_S3_SC_NS0_7swap_opEEET3_T_SF_T0_T1_RT2_SI_SE_NS0_9iter_sizeISH_E4typeESM_SM_SM_T4_bT5_:bb.a
  %found.conflict280 = and i1 %bound0278, %bound1279
  br i1 %found.conflict280, label %.lr.ph.i.i.preheader346, label %vector.ph281

vector.ph281:                                     ; preds = %vector.memcheck277
  %n.vec282 = and i64 %i.fb, 9223372036854775800  ; 3 uses
  %i.fi = shl i64 %n.vec282, 2                    ; 2 uses
  %i.fj = getelementptr i8, ptr %i.bo, i64 %i.fi  ; 2 uses
  %i.fk = getelementptr i8, ptr %.184, i64 %i.fi
  br label %vector.body283

vector.body283:                                   ; preds = %vector.body283, %vector.ph281
  %index284 = phi i64 [ 0, %vector.ph281 ], [ %index.next291, %vector.body283 ] ; 2 uses
  %i.fl = shl i64 %index284, 2                    ; 2 uses
  %next.gep285 = getelementptr i8, ptr %i.bo, i64 %i.fl ; 3 uses
  %next.gep286 = getelementptr i8, ptr %.184, i64 %i.fl ; 3 uses
  %i.fm = getelementptr i8, ptr %next.gep286, i64 16 ; 2 uses
  %wide.load287 = load <4 x i32>, ptr %next.gep286, align 4, !tbaa !296, !alias.scope !3882, !noalias !3883
  %wide.load288 = load <4 x i32>, ptr %i.fm, align 4, !tbaa !296, !alias.scope !3882, !noalias !3883
  %i.fn = getelementptr i8, ptr %next.gep285, i64 16 ; 2 uses
  %wide.load289 = load <4 x i32>, ptr %next.gep285, align 4, !tbaa !296, !alias.scope !3883
  %wide.load290 = load <4 x i32>, ptr %i.fn, align 4, !tbaa !296, !alias.scope !3883
  store <4 x i32> %wide.load289, ptr %next.gep286, align 4, !tbaa !296, !alias.scope !3882, !noalias !3883
  store <4 x i32> %wide.load290, ptr %i.fm, align 4, !tbaa !296, !alias.scope !3882, !noalias !3883
  store <4 x i32> %wide.load287, ptr %next.gep285, align 4, !tbaa !296, !alias.scope !3883
  store <4 x i32> %wide.load288, ptr %i.fn, align 4, !tbaa !296, !alias.scope !3883
  %index.next291 = add nuw i64 %index284, 8       ; 2 uses
  %i.fo = icmp eq i64 %index.next291, %n.vec282
  br i1 %i.fo, label %middle.block292, label %vector.body283, !llvm.loop !3872

middle.block292:                                  ; preds = %vector.body283
  %cmp.n293 = icmp eq i64 %i.fb, %n.vec282
  br i1 %cmp.n293, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i.i.preheader346

.lr.ph.i.i.preheader346:                          ; preds = %vector.memcheck277, %.lr.ph.i.i.preheader, %middle.block292
  %.010.i.i.ph = phi ptr [ %i.bo, %vector.memcheck277 ], [ %i.bo, %.lr.ph.i.i.preheader ], [ %i.fj, %middle.block292 ] ; 2 uses
  %.079.i.i.ph = phi ptr [ %.184, %vector.memcheck277 ], [ %.184, %.lr.ph.i.i.preheader ], [ %i.fk, %middle.block292 ] ; 3 uses
  %.079.i.i.ph398 = ptrtoaddr ptr %.079.i.i.ph to i64
  %i.fp = sub i64 %i.ey, %.079.i.i.ph398          ; 2 uses
  %i.fq = lshr i64 %i.fp, 2
  %i.fr = add nuw nsw i64 %i.fq, 1
  %xtraiter399 = and i64 %i.fr, 3                 ; 2 uses
  %lcmp.mod400.not = icmp eq i64 %xtraiter399, 0
  br i1 %lcmp.mod400.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader346, %.lr.ph.i.i.prol
  %.010.i.i.prol = phi ptr [ %i.fv, %.lr.ph.i.i.prol ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader346 ] ; 3 uses
  %.079.i.i.prol = phi ptr [ %i.fu, %.lr.ph.i.i.prol ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader346 ] ; 3 uses
  %prol.iter401 = phi i64 [ %prol.iter401.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader346 ]
  %i.fs = load i32, ptr %.079.i.i.prol, align 4, !tbaa !296
  %i.ft = load i32, ptr %.010.i.i.prol, align 4, !tbaa !296
  store i32 %i.ft, ptr %.079.i.i.prol, align 4, !tbaa !296
  store i32 %i.fs, ptr %.010.i.i.prol, align 4, !tbaa !296
  %i.fu = getelementptr inbounds nuw i8, ptr %.079.i.i.prol, i64 4 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.010.i.i.prol, i64 4 ; 3 uses
  %prol.iter401.next = add i64 %prol.iter401, 1   ; 2 uses
  %prol.iter401.cmp.not = icmp eq i64 %prol.iter401.next, %xtraiter399
  br i1 %prol.iter401.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3873

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader346
  %.lcssa395.unr = phi ptr [ poison, %.lr.ph.i.i.preheader346 ], [ %i.fv, %.lr.ph.i.i.prol ]
  %.010.i.i.unr = phi ptr [ %.010.i.i.ph, %.lr.ph.i.i.preheader346 ], [ %i.fv, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %.079.i.i.ph, %.lr.ph.i.i.preheader346 ], [ %i.fu, %.lr.ph.i.i.prol ]
  %i.fw = icmp ult i64 %i.fp, 12
  br i1 %i.fw, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.gm, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %.079.i.i = phi ptr [ %i.gl, %.lr.ph.i.i ], [ %.079.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.fx = load i32, ptr %.079.i.i, align 4, !tbaa !296
  %i.fy = load i32, ptr %.010.i.i, align 4, !tbaa !296
  store i32 %i.fy, ptr %.079.i.i, align 4, !tbaa !296
  store i32 %i.fx, ptr %.010.i.i, align 4, !tbaa !296
  %i.fz = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.gb = load i32, ptr %i.fz, align 4, !tbaa !296
  %i.gc = load i32, ptr %i.ga, align 4, !tbaa !296
  store i32 %i.gc, ptr %i.fz, align 4, !tbaa !296
  store i32 %i.gb, ptr %i.ga, align 4, !tbaa !296
  %i.gd = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !296
  %i.gg = load i32, ptr %i.ge, align 4, !tbaa !296
  store i32 %i.gg, ptr %i.gd, align 4, !tbaa !296
  store i32 %i.gf, ptr %i.ge, align 4, !tbaa !296
  %i.gh = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 12 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 12 ; 2 uses
  %i.gj = load i32, ptr %i.gh, align 4, !tbaa !296
  %i.gk = load i32, ptr %i.gi, align 4, !tbaa !296
  store i32 %i.gk, ptr %i.gh, align 4, !tbaa !296
  store i32 %i.gj, ptr %i.gi, align 4, !tbaa !296
  %i.gl = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 16 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 16 ; 2 uses
  %.not.i.i52.3 = icmp eq ptr %i.gl, %i.ab
  br i1 %.not.i.i52.3, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i.i, !llvm.loop !3874

_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit: ; preds = %.lr.ph.i49.prol.loopexit, %.lr.ph.i49, %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.lr.ph.i48, %middle.block339, %middle.block292, %middle.block, %bb.w, %bb.v, %bb.t, %bb.s
  %.1 = phi ptr [ %i.ab, %bb.s ], [ %i.ct, %.lr.ph.i48 ], [ %i.gm, %.lr.ph.i.i ], [ %.184, %bb.t ], [ %i.bo, %bb.v ], [ %i.bo, %bb.w ], [ %i.ck, %middle.block ], [ %i.fj, %middle.block292 ], [ %i.dh, %middle.block339 ], [ %.lcssa395.unr, %.lr.ph.i.i.prol.loopexit ], [ %.lcssa394.unr, %.lr.ph.i49.prol.loopexit ], [ %i.et, %.lr.ph.i49 ] ; 2 uses
  %.not.i53 = icmp eq ptr %i.ab, %.080
  %brmerge = or i1 %.not.i53, %.not43
  br i1 %brmerge, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPiS3_EEvT_S4_RS4_T0_S6_S6_.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit
  %.idx88 = shl nuw nsw i64 %.022.lcssa.i, 2
  %i.gn = getelementptr inbounds nuw i8, ptr %.0126, i64 %.idx88 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !296
  %i.gp = load i32, ptr %.0126, align 4, !tbaa !296
  store i32 %i.gp, ptr %i.gn, align 4, !tbaa !296
  store i32 %i.go, ptr %.0126, align 4, !tbaa !296
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPiS3_EEvT_S4_RS4_T0_S6_S6_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPiS3_EEvT_S4_RS4_T0_S6_S6_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, %bb.x
  %i.gq = getelementptr inbounds nuw i8, ptr %.0126, i64 4
  %i.gr = icmp ne i64 %.039124, 0
  %.neg = sext i1 %i.gr to i64
  %i.gs = add i64 %.039124, %.neg
  %i.gt = icmp ne i64 %i.aa, 0
  %.neg44 = sext i1 %i.gt to i64
  %i.gu = add i64 %.sroa.speculated, %.neg44
  %i.gv = add i64 %.082123, -1                    ; 2 uses
  %.not = icmp eq i64 %i.gv, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3875

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPiS3_EEvT_S4_RS4_T0_S6_S6_.exit, %bb.a
  %.038.lcssa = phi ptr [ %5, %bb.a ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPiS3_EEvT_S4_RS4_T0_S6_S6_.exit ]
  ret ptr %.038.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_SG_NS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat {
bb.a:
  %7 = alloca %"class.boost::movelib::inverse", align 1 ; 4 uses
  %8 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %9 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %16 = alloca %"struct.boost::movelib::antistable.24", align 8 ; 5 uses
  %17 = alloca %"class.boost::movelib::inverse", align 1 ; 4 uses
  %18 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %19 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %20 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %21 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %22 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %23 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %24 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %25 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %26 = alloca %"struct.boost::movelib::antistable.24", align 8 ; 5 uses
  %27 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 9 uses
  %28 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 12 uses
  %29 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 12 uses
  %30 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %31 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %32 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 8 uses
  %33 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 4 uses
  %34 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %35 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %36 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %37 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %38 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %i.a = add i64 %5, %4                           ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !441    ; 3 uses
  %i.c = sub i64 0, %4
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !441    ; 8 uses
  %i.f = ptrtoaddr ptr %i.e to i64                ; 3 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.e, i64 %2 ; 2 uses
  %i.h = sub i64 0, %3
  %i.i = getelementptr [4 x i8], ptr %i.e, i64 %i.h ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  store ptr %i.i, ptr %27, align 8, !tbaa !441
  %i.j = mul i64 %2, %i.a
  %i.k = sub i64 0, %i.j
  %i.l = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.k ; 9 uses
  %i.m = icmp eq i64 %5, 0
  %i.n = select i1 %i.m, i64 0, i64 %4            ; 3 uses
  %i.o = add i64 %i.n, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.a) ; 2 uses
  %.not332 = icmp eq i64 %i.a, 0
  br i1 %.not332, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = mul i64 %2, -4
  %i.q = sub i64 0, %2                            ; 2 uses
  %.idx = shl i64 %i.q, 2                         ; 2 uses
  %.not68 = icmp eq i64 %6, 0
  %i.r = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.s = sub i64 0, %i.a
  %.not1.i.i72 = icmp eq i64 %2, 0
  %i.t = add i64 %5, %4
  %.neg590 = sub i64 1, %i.t
  %.neg591 = mul i64 %.neg590, %2
  %i.u = sub i64 %.neg591, %3
  %i.v = shl i64 %i.u, 2
  %scevgep = getelementptr i8, ptr %i.e, i64 %i.v
  %i.w = mul i64 %3, -4
  %i.x = shl i64 %2, 2                            ; 2 uses
  %i.y = sub i64 %i.w, %i.x
  %scevgep447.a = getelementptr i8, ptr %i.e, i64 %i.y
  %i.z = add i64 %3, %2
  %i.aa = shl i64 %i.z, 2
  %.neg592 = sub i64 %i.aa, %i.f
  %i.ab = add i64 %.neg592, -4
  %i.ac = shl i64 %2, 2
  %i.ad = add i64 %3, %2
  %i.ae = shl i64 %i.ad, 2
  %.neg593 = sub i64 %i.ae, %i.f
  %i.af = add i64 %.neg593, -4
  %i.ag = add i64 %2, 4611686018427387903
  %i.ah = and i64 %i.ag, 4611686018427387903      ; 2 uses
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ah, 7
  %stride.check = icmp slt i64 %.idx, 0
  %n.vec = and i64 %i.ai, 9223372036854775800     ; 3 uses
  %i.aj = mul i64 %n.vec, -4                      ; 2 uses
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.sink.split.i
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.sink.split.i ] ; 3 uses
  %i.ak = phi ptr [ %i.i, %.lr.ph ], [ %i.bj, %.sink.split.i ] ; 16 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.gu, %.sink.split.i ] ; 3 uses
  %.0342 = phi i64 [ %5, %.lr.ph ], [ %.1, %.sink.split.i ] ; 2 uses
  %.060341 = phi i8 [ 1, %.lr.ph ], [ %.262, %.sink.split.i ] ; 8 uses
  %.063340 = phi i64 [ %i.n, %.lr.ph ], [ %i.gs, %.sink.split.i ] ; 7 uses
  %.0284339 = phi i64 [ %i.a, %.lr.ph ], [ %i.gv, %.sink.split.i ] ; 5 uses
  %.sroa.0260.0338 = phi ptr [ %i.d, %.lr.ph ], [ %.sroa.0260.1, %.sink.split.i ] ; 13 uses
  %.sroa.0249.0337 = phi ptr [ %i.g, %.lr.ph ], [ %.sroa.0249.3, %.sink.split.i ] ; 15 uses
  %.sroa.0235.0336 = phi ptr [ %i.e, %.lr.ph ], [ %.sroa.0235.2, %.sink.split.i ] ; 15 uses
  %.sroa.0220.0335 = phi ptr [ %i.i, %.lr.ph ], [ %.sroa.0220.2, %.sink.split.i ] ; 16 uses
  %.sroa.0210.0333 = phi ptr [ %i.b, %.lr.ph ], [ %i.gq, %.sink.split.i ] ; 13 uses
  %.sroa.0220.0335456 = ptrtoaddr ptr %.sroa.0220.0335 to i64
  %.sroa.0235.0336457 = ptrtoaddr ptr %.sroa.0235.0336 to i64 ; 2 uses
  %.sroa.0249.0337458 = ptrtoaddr ptr %.sroa.0249.0337 to i64
  %i.al = icmp ult i64 %.063340, %.0
  br i1 %i.al, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_SG_EENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread20.i
  %.023.i = phi i64 [ %i.be, %.thread20.i ], [ %.063340, %bb.b ] ; 4 uses
  %.01822.i = phi i64 [ %i.bd, %.thread20.i ], [ 0, %bb.b ] ; 4 uses
  %i.am = mul i64 %.01822.i, %2
  %i.an = xor i64 %i.am, -1
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.an
  %i.ap = mul i64 %.023.i, %2
  %i.aq = xor i64 %i.ap, -1
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.aq
  %i.as = xor i64 %.01822.i, -1
  %i.at = getelementptr inbounds [4 x i8], ptr %.sroa.0210.0333, i64 %i.as
  %i.au = xor i64 %.023.i, -1
  %i.av = getelementptr inbounds [4 x i8], ptr %.sroa.0210.0333, i64 %i.au
  %i.aw = load i32, ptr %i.ao, align 4, !tbaa !296 ; 2 uses
  %i.ax = load i32, ptr %i.ar, align 4, !tbaa !296 ; 2 uses
  %i.ay = icmp slt i32 %i.aw, %i.ax
  br i1 %i.ay, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.az = icmp slt i32 %i.ax, %i.aw
  br i1 %i.az, label %.thread20.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = load i32, ptr %i.at, align 4, !tbaa !296
  %i.bb = load i32, ptr %i.av, align 4, !tbaa !296
  %i.bc = icmp slt i32 %i.ba, %i.bb
  %cond.fr.i = freeze i1 %i.bc
  br i1 %cond.fr.i, label %.thread.i, label %.thread20.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread20.i

.thread20.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bd = phi i64 [ %.023.i, %.thread.i ], [ %.01822.i, %bb.d ], [ %.01822.i, %bb.c ] ; 2 uses
  %i.be = add nuw i64 %.023.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.be, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_SG_EENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit, label %.lr.ph.i, !llvm.loop !54

_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_SG_EENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit: ; preds = %.thread20.i, %bb.b
  %.018.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bd, %.thread20.i ] ; 4 uses
  %i.bf = add i64 %.018.lcssa.i, 2
  %i.bg = call i64 @llvm.umax.i64(i64 %.0, i64 %i.bf) ; 2 uses
  %.sroa.speculated273 = call i64 @llvm.umin.i64(i64 %i.bg, i64 %.0284339) ; 4 uses
  %.neg300 = mul i64 %i.p, %.018.lcssa.i          ; 2 uses
  %i.bh = getelementptr i8, ptr %i.ak, i64 %.neg300 ; 11 uses
  %i.bi = getelementptr [4 x i8], ptr %i.bh, i64 %i.q ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ak, i64 %.idx  ; 15 uses
  %.not67 = icmp eq i64 %.0342, 0
  br i1 %.not67, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_SG_EENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  br i1 %.not68, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bk = getelementptr inbounds i8, ptr %i.bh, i64 -4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !296
  %i.bm = load i32, ptr %i.r, align 4, !tbaa !296
  %i.bn = icmp slt i32 %i.bl, %i.bm
  br i1 %i.bn, label %.thread.loopexit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old70 = trunc nuw i8 %.060341 to i1
  br i1 %.old70, label %.thread.thread, label %bb.h

.thread.thread:                                   ; preds = %bb.g
  %i.bo = icmp eq ptr %.sroa.0220.0335, %.sroa.0249.0337
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  store ptr %i.l, ptr %32, align 8, !tbaa !441
  br i1 %i.bo, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98, label %bb.ak

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_SG_EENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  %.neg302 = mul i64 %.018.lcssa.i, -4            ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %.sroa.0210.0333, i64 %.neg302 ; 7 uses
  %i.bq = load ptr, ptr %0, align 8, !tbaa !441
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.s
  %i.bs = icmp eq ptr %.sroa.0260.0338, %i.br
  br i1 %i.bs, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bt = icmp eq ptr %.sroa.0220.0335, %.sroa.0249.0337 ; 2 uses
  %i.bu = trunc nuw i8 %.060341 to i1
  br i1 %i.bu, label %bb.j, label %.thread413

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds i8, ptr %i.bp, i64 -4
  %i.bw = getelementptr inbounds i8, ptr %.sroa.0260.0338, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !296
  %i.by = load i32, ptr %i.bv, align 4, !tbaa !296
  %i.bz = icmp slt i32 %i.bx, %i.by               ; 7 uses
  %i.ca = zext i1 %i.bz to i8                     ; 4 uses
  %i.cb = icmp eq ptr %.sroa.0220.0335, %.sroa.0249.0337 ; 2 uses
  %i.cc = trunc nuw i8 %.060341 to i1             ; 3 uses
  %i.cd = xor i1 %i.bz, %i.cc
  br i1 %i.cd, label %bb.o, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.ce = phi i1 [ %i.bt, %._crit_edge ], [ %i.cb, %bb.i ]
  %i.cf = phi i1 [ true, %._crit_edge ], [ %i.bz, %bb.i ] ; 3 uses
  %.not1.i.i = icmp eq ptr %.sroa.0235.0336, %.sroa.0220.0335
  %or.cond306 = select i1 %i.ce, i1 true, i1 %.not1.i.i
  br i1 %or.cond306, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.cg = add i64 %.sroa.0235.0336457, -4
  %i.ch = sub i64 %i.cg, %.sroa.0220.0335456      ; 2 uses
  %i.ci = lshr i64 %i.ch, 2
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check460 = icmp ult i64 %i.ch, 28
  %i.ck = sub i64 %.sroa.0249.0337458, %.sroa.0235.0336457
  %diff.check = icmp ugt i64 %i.ck, -32
  %or.cond594 = select i1 %min.iters.check460, i1 true, i1 %diff.check
  br i1 %or.cond594, label %.lr.ph.i.i.preheader621, label %vector.ph462

vector.ph462:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec463 = and i64 %i.cj, 9223372036854775800  ; 3 uses
  %i.cl = mul i64 %n.vec463, -4                   ; 2 uses
  %i.cm = getelementptr i8, ptr %.sroa.0249.0337, i64 %i.cl ; 2 uses
  %i.cn = getelementptr i8, ptr %.sroa.0235.0336, i64 %i.cl
  br label %vector.body464

vector.body464:                                   ; preds = %vector.body464, %vector.ph462
  %index465 = phi i64 [ 0, %vector.ph462 ], [ %index.next470, %vector.body464 ] ; 2 uses
  %i.co = mul i64 %index465, -4                   ; 2 uses
  %next.gep466 = getelementptr i8, ptr %.sroa.0249.0337, i64 %i.co ; 2 uses
  %next.gep467 = getelementptr i8, ptr %.sroa.0235.0336, i64 %i.co ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %next.gep467, i64 -16
  %i.cq = getelementptr inbounds i8, ptr %next.gep467, i64 -32
  %wide.load468 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !296, !noalias !3937
  %wide.load469 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !296, !noalias !3937
  %i.cr = getelementptr inbounds i8, ptr %next.gep466, i64 -16
  %i.cs = getelementptr inbounds i8, ptr %next.gep466, i64 -32
  store <4 x i32> %wide.load468, ptr %i.cr, align 4, !tbaa !296, !noalias !3937
  store <4 x i32> %wide.load469, ptr %i.cs, align 4, !tbaa !296, !noalias !3937
  %index.next470 = add nuw i64 %index465, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next470, %n.vec463
  br i1 %i.ct, label %middle.block471, label %vector.body464, !llvm.loop !3888

middle.block471:                                  ; preds = %vector.body464
  %cmp.n472 = icmp eq i64 %i.cj, %n.vec463
  br i1 %cmp.n472, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader621

.lr.ph.i.i.preheader621:                          ; preds = %.lr.ph.i.i.preheader, %middle.block471
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.0249.0337, %.lr.ph.i.i.preheader ], [ %i.cm, %middle.block471 ]
  %.ph622 = phi ptr [ %.sroa.0235.0336, %.lr.ph.i.i.preheader ], [ %i.cn, %middle.block471 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader621, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.cx, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader621 ]
  %i.cu = phi ptr [ %i.cv, %.lr.ph.i.i ], [ %.ph622, %.lr.ph.i.i.preheader621 ]
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -4 ; 3 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !296, !noalias !3937
  %i.cx = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 3 uses
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !296, !noalias !3937
  %.not.i.i = icmp eq ptr %i.cv, %.sroa.0220.0335
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i, !llvm.loop !3889

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit: ; preds = %.lr.ph.i.i, %middle.block471, %bb.j
  %.sroa.0249.1 = phi ptr [ %.sroa.0249.0337, %bb.j ], [ %i.cm, %middle.block471 ], [ %i.cx, %.lr.ph.i.i ] ; 3 uses
  %.not.i = icmp eq i64 %.neg300, 0
  br i1 %.not.i, label %.sink.split.i, label %bb.k

bb.k:                                             ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit
  br i1 %.not1.i.i72, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i73.preheader

.lr.ph.i.i73.preheader:                           ; preds = %bb.k
  br i1 %min.iters.check, label %.lr.ph.i.i73.preheader619, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i73.preheader
  %bound0 = icmp ult ptr %scevgep447.a, %i.bh
  %bound1 = icmp ult ptr %i.bi, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.cy = or i1 %found.conflict, %stride.check
  br i1 %i.cy, label %.lr.ph.i.i73.preheader619, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cz = getelementptr i8, ptr %i.bh, i64 %i.aj
  %i.da = getelementptr i8, ptr %i.ak, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.db = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.db ; 2 uses
  %next.gep448 = getelementptr i8, ptr %i.ak, i64 %i.db ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %next.gep448, i64 -16 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %next.gep448, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.dc, align 4, !tbaa !296, !alias.scope !3938, !noalias !3939
  %wide.load449 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !296, !alias.scope !3938, !noalias !3939
  %i.de = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  %wide.load450 = load <4 x i32>, ptr %i.de, align 4, !tbaa !296, !alias.scope !3940, !noalias !3941
  %wide.load451 = load <4 x i32>, ptr %i.df, align 4, !tbaa !296, !alias.scope !3940, !noalias !3941
  store <4 x i32> %wide.load450, ptr %i.dc, align 4, !tbaa !296, !alias.scope !3938, !noalias !3939
  store <4 x i32> %wide.load451, ptr %i.dd, align 4, !tbaa !296, !alias.scope !3938, !noalias !3939
  store <4 x i32> %wide.load, ptr %i.de, align 4, !tbaa !296, !alias.scope !3940, !noalias !3941
  store <4 x i32> %wide.load449, ptr %i.df, align 4, !tbaa !296, !alias.scope !3940, !noalias !3941
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !3895

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i73.preheader619

.lr.ph.i.i73.preheader619:                        ; preds = %vector.memcheck, %.lr.ph.i.i73.preheader, %middle.block
  %.sroa.04.0.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i73.preheader ], [ %i.cz, %middle.block ]
  %.ph620 = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i.i73.preheader ], [ %i.da, %middle.block ]
  br label %.lr.ph.i.i73

.lr.ph.i.i73:                                     ; preds = %.lr.ph.i.i73.preheader619, %.lr.ph.i.i73
  %.sroa.04.0.i = phi ptr [ %i.dj, %.lr.ph.i.i73 ], [ %.sroa.04.0.i.ph, %.lr.ph.i.i73.preheader619 ]
  %i.dh = phi ptr [ %i.di, %.lr.ph.i.i73 ], [ %.ph620, %.lr.ph.i.i73.preheader619 ]
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 -4 ; 4 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.04.0.i, i64 -4 ; 3 uses
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !296, !noalias !3941
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !296, !noalias !3941
  store i32 %i.dl, ptr %i.di, align 4, !tbaa !296, !noalias !3941
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !296, !noalias !3941
  %.not.i.i74 = icmp eq ptr %i.di, %i.bj
  br i1 %.not.i.i74, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i73, !llvm.loop !3896

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i73, %middle.block, %bb.k
  %.not9.i = icmp eq i64 %.neg302, 0
  br i1 %.not9.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.dm = getelementptr inbounds i8, ptr %i.bp, i64 -4 ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0210.0333, i64 -4 ; 2 uses
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !296
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !296
  store i32 %i.dp, ptr %i.dm, align 4, !tbaa !296
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !296
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.dq = icmp eq ptr %i.bp, %.sroa.0260.0338
  br i1 %i.dq, label %.sink.split.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dr = icmp eq ptr %.sroa.0260.0338, %.sroa.0210.0333
  %spec.select = select i1 %i.dr, ptr %i.bp, ptr %.sroa.0260.0338
  br label %.sink.split.i

bb.o:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  br i1 %i.cb, label %bb.p, label %bb.s

.thread413:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  br i1 %i.bt, label %.thread414, label %.thread415

.thread415:                                       ; preds = %.thread413
  store ptr %.sroa.0235.0336, ptr %28, align 8, !tbaa !441
  store ptr %.sroa.0220.0335, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %i.ds = ptrtoint ptr %.sroa.0235.0336 to i64
  %i.dt = ptrtoint ptr %.sroa.0220.0335 to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = ashr exact i64 %i.du, 2
  %i.dw = sub nsw i64 0, %i.dv
  %i.dx = getelementptr inbounds [4 x i8], ptr %.sroa.0249.0337, i64 %i.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  br label %bb.u

.thread414:                                       ; preds = %.thread413
  %i.dy = ptrtoint ptr %.sroa.0235.0336 to i64
  %i.dz = ptrtoint ptr %.sroa.0220.0335 to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = getelementptr inbounds i8, ptr %i.ak, i64 %i.ea ; 2 uses
  store ptr %i.eb, ptr %28, align 8, !tbaa !441
  store ptr %i.eb, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ec = ptrtoint ptr %.sroa.0235.0336 to i64
  %i.ed = ptrtoint ptr %.sroa.0220.0335 to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = getelementptr inbounds i8, ptr %i.ak, i64 %i.ee ; 2 uses
  store ptr %i.ef, ptr %28, align 8, !tbaa !441
  store ptr %i.ef, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  br i1 %i.cc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr %.sroa.0235.0336, ptr %18, align 8, !tbaa !441, !noalias !3942
  store ptr %.sroa.0220.0335, ptr %19, align 8, !tbaa !441, !noalias !3942
  store ptr %i.bj, ptr %20, align 8, !tbaa !441, !noalias !3942
  store ptr %i.bh, ptr %21, align 8, !tbaa !441, !noalias !3942
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %30, ptr noundef nonnull align 8 dead_on_return %18, ptr noundef nonnull align 8 dead_on_return %19, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %20, ptr noundef nonnull align 8 dead_on_return %21, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit

bb.r:                                             ; preds = %.thread414, %bb.p
  %i.eg = phi i8 [ 1, %.thread414 ], [ %i.ca, %bb.p ]
  %i.eh = phi i1 [ true, %.thread414 ], [ %i.bz, %bb.p ]
  store ptr %.sroa.0235.0336, ptr %22, align 8, !tbaa !441, !noalias !3942
  store ptr %.sroa.0220.0335, ptr %23, align 8, !tbaa !441, !noalias !3942
  store ptr %i.bj, ptr %24, align 8, !tbaa !441, !noalias !3942
  store ptr %i.bh, ptr %25, align 8, !tbaa !441, !noalias !3942
  store ptr %17, ptr %26, align 8, !tbaa !455, !noalias !3942
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7move_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %30, ptr noundef nonnull align 8 dead_on_return %22, ptr noundef nonnull align 8 dead_on_return %23, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %24, ptr noundef nonnull align 8 dead_on_return %25, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dead_on_return %26)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit: ; preds = %bb.q, %bb.r
  %i.ei = phi i8 [ %i.ca, %bb.q ], [ %i.eg, %bb.r ]
  %i.ej = phi i1 [ %i.bz, %bb.q ], [ %i.eh, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  store ptr %.sroa.0235.0336, ptr %28, align 8, !tbaa !441
  store ptr %.sroa.0220.0335, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %i.ek = ptrtoint ptr %.sroa.0235.0336 to i64
  %i.el = ptrtoint ptr %.sroa.0220.0335 to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 2
  %i.eo = sub nsw i64 0, %i.en
  %i.ep = getelementptr inbounds [4 x i8], ptr %.sroa.0249.0337, i64 %i.eo ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  br i1 %i.cc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store ptr %.sroa.0249.0337, ptr %8, align 8, !tbaa !441, !noalias !3943
  store ptr %i.ep, ptr %9, align 8, !tbaa !441, !noalias !3943
  store ptr %i.bj, ptr %10, align 8, !tbaa !441, !noalias !3943
  store ptr %i.bh, ptr %11, align 8, !tbaa !441, !noalias !3943
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %31, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75

bb.u:                                             ; preds = %.thread415, %bb.s
  %i.eq = phi ptr [ %i.dx, %.thread415 ], [ %i.ep, %bb.s ]
  %i.er = phi i8 [ 1, %.thread415 ], [ %i.ca, %bb.s ]
  %i.es = phi i1 [ true, %.thread415 ], [ %i.bz, %bb.s ]
  store ptr %.sroa.0249.0337, ptr %12, align 8, !tbaa !441, !noalias !3943
  store ptr %i.eq, ptr %13, align 8, !tbaa !441, !noalias !3943
  store ptr %i.bj, ptr %14, align 8, !tbaa !441, !noalias !3943
  store ptr %i.bh, ptr %15, align 8, !tbaa !441, !noalias !3943
  store ptr %7, ptr %16, align 8, !tbaa !455, !noalias !3943
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7move_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %31, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dead_on_return %16)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75: ; preds = %bb.t, %bb.u
  %i.et = phi i8 [ %i.ca, %bb.t ], [ %i.er, %bb.u ]
  %i.eu = phi i1 [ %i.bz, %bb.t ], [ %i.es, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  br label %bb.v

bb.v:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit
  %i.ev = phi i1 [ %i.eu, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75 ], [ %i.ej, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit ]
  %i.ew = phi i8 [ %i.et, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75 ], [ %i.ei, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit ]
  %i.ex = load ptr, ptr %27, align 8, !tbaa !441  ; 11 uses
  %i.ey = ptrtoint ptr %i.ex to i64               ; 4 uses
  %i.ez = ptrtoint ptr %i.bj to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = getelementptr inbounds i8, ptr %i.bi, i64 %i.fa ; 6 uses
  %.not.i76 = icmp eq ptr %i.ex, %i.fb
  br i1 %.not.i76, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not1.i.i77 = icmp eq ptr %i.ex, %i.bj
  br i1 %.not1.i.i77, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78.preheader

.lr.ph.i.i78.preheader:                           ; preds = %bb.w
  %i.fc = mul i64 %indvar, %i.ac
  %i.fd = add i64 %i.af, %i.fc
  %i.fe = add i64 %i.fd, %i.ey                    ; 2 uses
  %i.ff = lshr i64 %i.fe, 2
  %i.fg = add nuw nsw i64 %i.ff, 1                ; 2 uses
  %min.iters.check484 = icmp ult i64 %i.fe, 44
  br i1 %min.iters.check484, label %.lr.ph.i.i78.preheader623, label %vector.memcheck485

vector.memcheck485:                               ; preds = %.lr.ph.i.i78.preheader
  %i.fh = mul i64 %indvar, %i.x
  %i.fi = add i64 %i.ab, %i.fh
  %i.fj = add i64 %i.fi, %i.ey
  %i.fk = and i64 %i.fj, -4                       ; 2 uses
  %i.fl = sub nuw nsw i64 -4, %i.fk
  %i.fm = getelementptr i8, ptr %i.ex, i64 %i.fl
  %i.fn = mul i64 %.018.lcssa.i, %2
  %i.fo = shl i64 %i.fn, 2
  %39 = add i64 %i.fo, %i.fk
  %i.fp = add i64 %39, %i.f
  %reass.sub = sub i64 %i.ey, %i.fp
  %40 = getelementptr i8, ptr %i.e, i64 %reass.sub
  %i.fq = getelementptr i8, ptr %40, i64 -4
  %bound0486 = icmp ult ptr %i.fm, %i.fb
  %bound1487 = icmp ult ptr %i.fq, %i.ex
  %found.conflict488 = and i1 %bound0486, %bound1487
  br i1 %found.conflict488, label %.lr.ph.i.i78.preheader623, label %vector.ph489

vector.ph489:                                     ; preds = %vector.memcheck485
  %n.vec490 = and i64 %i.fg, 9223372036854775800  ; 3 uses
  %i.fr = mul i64 %n.vec490, -4                   ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fb, i64 %i.fr
  %i.ft = getelementptr i8, ptr %i.ex, i64 %i.fr
  br label %vector.body491

vector.body491:                                   ; preds = %vector.body491, %vector.ph489
  %index492 = phi i64 [ 0, %vector.ph489 ], [ %index.next499, %vector.body491 ] ; 2 uses
  %i.fu = mul i64 %index492, -4                   ; 2 uses
  %next.gep493 = getelementptr i8, ptr %i.fb, i64 %i.fu ; 2 uses
  %next.gep494 = getelementptr i8, ptr %i.ex, i64 %i.fu ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %next.gep494, i64 -16 ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %next.gep494, i64 -32 ; 2 uses
  %wide.load495 = load <4 x i32>, ptr %i.fv, align 4, !tbaa !296, !alias.scope !3944, !noalias !3945
  %wide.load496 = load <4 x i32>, ptr %i.fw, align 4, !tbaa !296, !alias.scope !3944, !noalias !3945
  %i.fx = getelementptr inbounds i8, ptr %next.gep493, i64 -16 ; 2 uses
  %i.fy = getelementptr inbounds i8, ptr %next.gep493, i64 -32 ; 2 uses
  %wide.load497 = load <4 x i32>, ptr %i.fx, align 4, !tbaa !296, !alias.scope !3946, !noalias !3947
  %wide.load498 = load <4 x i32>, ptr %i.fy, align 4, !tbaa !296, !alias.scope !3946, !noalias !3947
  store <4 x i32> %wide.load497, ptr %i.fv, align 4, !tbaa !296, !alias.scope !3944, !noalias !3945
  store <4 x i32> %wide.load498, ptr %i.fw, align 4, !tbaa !296, !alias.scope !3944, !noalias !3945
  store <4 x i32> %wide.load495, ptr %i.fx, align 4, !tbaa !296, !alias.scope !3946, !noalias !3947
  store <4 x i32> %wide.load496, ptr %i.fy, align 4, !tbaa !296, !alias.scope !3946, !noalias !3947
  %index.next499 = add nuw i64 %index492, 8       ; 2 uses
  %i.fz = icmp eq i64 %index.next499, %n.vec490
  br i1 %i.fz, label %middle.block500, label %vector.body491, !llvm.loop !3906

middle.block500:                                  ; preds = %vector.body491
  %cmp.n501 = icmp eq i64 %i.fg, %n.vec490
  br i1 %cmp.n501, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78.preheader623

.lr.ph.i.i78.preheader623:                        ; preds = %vector.memcheck485, %.lr.ph.i.i78.preheader, %middle.block500
  %.sroa.04.0.i79.ph = phi ptr [ %i.fb, %vector.memcheck485 ], [ %i.fb, %.lr.ph.i.i78.preheader ], [ %i.fs, %middle.block500 ]
  %.ph624 = phi ptr [ %i.ex, %vector.memcheck485 ], [ %i.ex, %.lr.ph.i.i78.preheader ], [ %i.ft, %middle.block500 ]
  br label %.lr.ph.i.i78

.lr.ph.i.i78:                                     ; preds = %.lr.ph.i.i78.preheader623, %.lr.ph.i.i78
  %.sroa.04.0.i79 = phi ptr [ %i.gc, %.lr.ph.i.i78 ], [ %.sroa.04.0.i79.ph, %.lr.ph.i.i78.preheader623 ]
  %i.ga = phi ptr [ %i.gb, %.lr.ph.i.i78 ], [ %.ph624, %.lr.ph.i.i78.preheader623 ]
  %i.gb = getelementptr inbounds i8, ptr %i.ga, i64 -4 ; 4 uses
  %i.gc = getelementptr inbounds i8, ptr %.sroa.04.0.i79, i64 -4 ; 3 uses
  %i.gd = load i32, ptr %i.gb, align 4, !tbaa !296, !noalias !3947
  %i.ge = load i32, ptr %i.gc, align 4, !tbaa !296, !noalias !3947
  store i32 %i.ge, ptr %i.gb, align 4, !tbaa !296, !noalias !3947
  store i32 %i.gd, ptr %i.gc, align 4, !tbaa !296, !noalias !3947
  %.not.i.i80 = icmp eq ptr %i.gb, %i.bj
  br i1 %.not.i.i80, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78, !llvm.loop !3907

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81: ; preds = %.lr.ph.i.i78, %middle.block500, %bb.w
  %.not9.i82 = icmp eq i64 %.neg302, 0
  br i1 %.not9.i82, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81
  %i.gf = getelementptr inbounds i8, ptr %i.bp, i64 -4 ; 2 uses
  %i.gg = getelementptr inbounds i8, ptr %.sroa.0210.0333, i64 -4 ; 2 uses
  %i.gh = load i32, ptr %i.gf, align 4, !tbaa !296
  %i.gi = load i32, ptr %i.gg, align 4, !tbaa !296
  store i32 %i.gi, ptr %i.gf, align 4, !tbaa !296
  store i32 %i.gh, ptr %i.gg, align 4, !tbaa !296
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81
  %i.gj = icmp eq ptr %i.bp, %.sroa.0260.0338
  br i1 %i.gj, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gk = icmp eq ptr %.sroa.0260.0338, %.sroa.0210.0333
  %spec.select298 = select i1 %i.gk, ptr %i.bp, ptr %.sroa.0260.0338
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85: ; preds = %bb.z, %bb.y, %bb.v
  %.sroa.0260.5 = phi ptr [ %.sroa.0260.0338, %bb.v ], [ %spec.select298, %bb.z ], [ %.sroa.0210.0333, %bb.y ]
  %i.gl = load ptr, ptr %28, align 8, !tbaa !441  ; 2 uses
  %i.gm = load ptr, ptr %29, align 8, !tbaa !441  ; 3 uses
  %.not303 = icmp eq ptr %i.gl, %i.gm
  br i1 %.not303, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %2
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85, %bb.aa
  %.sroa.0220.1 = phi ptr [ %i.bj, %bb.aa ], [ %i.gm, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85 ]
  %.sroa.0235.1 = phi ptr [ %i.ex, %bb.aa ], [ %i.gl, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85 ]
  %.sroa.0249.2 = phi ptr [ %i.gn, %bb.aa ], [ %i.gm, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85 ]
  %.161 = phi i8 [ %i.ew, %bb.aa ], [ %.060341, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit, %bb.m, %bb.ab
  %i.go = phi i1 [ %i.ev, %bb.ab ], [ %i.cf, %bb.m ], [ %i.cf, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.cf, %bb.n ]
  %.sroa.0220.2 = phi ptr [ %.sroa.0220.1, %bb.ab ], [ %i.bj, %bb.m ], [ %i.bj, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.bj, %bb.n ] ; 2 uses
  %.sroa.0235.2 = phi ptr [ %.sroa.0235.1, %bb.ab ], [ %i.ak, %bb.m ], [ %i.ak, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.ak, %bb.n ] ; 2 uses
  %.sroa.0249.3 = phi ptr [ %.sroa.0249.2, %bb.ab ], [ %.sroa.0249.1, %bb.m ], [ %.sroa.0249.1, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %.sroa.0249.1, %bb.n ] ; 2 uses
  %.sroa.0260.1 = phi ptr [ %.sroa.0260.5, %bb.ab ], [ %.sroa.0210.0333, %bb.m ], [ %.sroa.0260.0338, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %spec.select, %bb.n ] ; 2 uses
  %.262 = phi i8 [ %.161, %bb.ab ], [ %.060341, %bb.m ], [ %.060341, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %.060341, %bb.n ] ; 2 uses
  %not. = xor i1 %i.go, true
  %i.gp = sext i1 %not. to i64
  %.1 = add i64 %.0342, %i.gp
  store ptr %i.bj, ptr %27, align 8, !tbaa !441
  %i.gq = getelementptr inbounds i8, ptr %.sroa.0210.0333, i64 -4 ; 2 uses
  %i.gr = icmp ne i64 %.063340, 0
  %.neg = sext i1 %i.gr to i64
  %i.gs = add i64 %.063340, %.neg                 ; 2 uses
  %i.gt = icmp ne i64 %i.bg, 0
  %.neg69 = sext i1 %i.gt to i64
  %i.gu = add i64 %.sroa.speculated273, %.neg69   ; 2 uses
  %i.gv = add i64 %.0284339, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gv, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !3908

.thread.loopexit:                                 ; preds = %bb.f, %.sink.split.i
  %i.gw = phi ptr [ %i.bj, %.sink.split.i ], [ %i.ak, %bb.f ]
  %.4 = phi i64 [ %i.gu, %.sink.split.i ], [ %.sroa.speculated273, %bb.f ]
  %.sroa.0210.0.lcssa.ph = phi ptr [ %i.gq, %.sink.split.i ], [ %.sroa.0210.0333, %bb.f ]
  %.sroa.0220.0.lcssa.ph = phi ptr [ %.sroa.0220.2, %.sink.split.i ], [ %.sroa.0220.0335, %bb.f ]
  %.sroa.0235.0.lcssa.ph = phi ptr [ %.sroa.0235.2, %.sink.split.i ], [ %.sroa.0235.0336, %bb.f ]
  %.sroa.0249.0.lcssa.ph = phi ptr [ %.sroa.0249.3, %.sink.split.i ], [ %.sroa.0249.0337, %bb.f ]
  %.sroa.0260.0.lcssa.ph = phi ptr [ %.sroa.0260.1, %.sink.split.i ], [ %.sroa.0260.0338, %bb.f ]
  %.0284.lcssa.ph = phi i64 [ 0, %.sink.split.i ], [ %.0284339, %bb.f ]
  %.063.lcssa.ph = phi i64 [ %i.gs, %.sink.split.i ], [ %.063340, %bb.f ]
  %.060.lcssa.ph = phi i8 [ %.262, %.sink.split.i ], [ %.060341, %bb.f ]
  %i.gx = trunc nuw i8 %.060.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.gy = phi ptr [ %i.i, %bb.a ], [ %i.gw, %.thread.loopexit ] ; 8 uses
  %.1390 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.sroa.0210.0.lcssa = phi ptr [ %i.b, %bb.a ], [ %.sroa.0210.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.sroa.0220.0.lcssa = phi ptr [ %i.i, %bb.a ], [ %.sroa.0220.0.lcssa.ph, %.thread.loopexit ] ; 8 uses
  %.sroa.0235.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %.sroa.0235.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.sroa.0249.0.lcssa = phi ptr [ %i.g, %bb.a ], [ %.sroa.0249.0.lcssa.ph, %.thread.loopexit ] ; 4 uses
  %.sroa.0260.0.lcssa = phi ptr [ %i.d, %bb.a ], [ %.sroa.0260.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0284.lcssa = phi i64 [ 0, %bb.a ], [ %.0284.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.063.lcssa = phi i64 [ %i.n, %bb.a ], [ %.063.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.060.lcssa = phi i1 [ true, %bb.a ], [ %i.gx, %.thread.loopexit ]
  %i.gz = ptrtoaddr ptr %i.gy to i64
  %i.ha = icmp eq ptr %.sroa.0220.0.lcssa, %.sroa.0249.0.lcssa ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  store ptr %i.l, ptr %32, align 8, !tbaa !441
  %.neg305 = mul i64 %6, -4                       ; 2 uses
  %i.hb = getelementptr inbounds i8, ptr %i.l, i64 %.neg305 ; 7 uses
  %i.hc = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.hc, i1 %.060.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.ha, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not1.i = icmp eq ptr %.sroa.0235.0.lcssa, %.sroa.0220.0.lcssa
  br i1 %.not1.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %.lr.ph.i86

.lr.ph.i86:                                       ; preds = %bb.ad
  %i.hd = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !296, !noalias !3948
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i86
  %i.hf = phi ptr [ %.sroa.0235.0.lcssa, %.lr.ph.i86 ], [ %i.hg, %bb.af ] ; 2 uses
  %i.hg = getelementptr inbounds i8, ptr %i.hf, i64 -4 ; 4 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !296, !noalias !3948
  %i.hi = icmp slt i32 %i.hh, %i.he
  br i1 %i.hi, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.i87 = icmp eq ptr %i.hg, %.sroa.0220.0.lcssa
  br i1 %.not.i87, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !81

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.lcssa.i = phi ptr [ %.sroa.0235.0.lcssa, %bb.ad ], [ %i.hf, %bb.ae ], [ %i.hg, %bb.af ] ; 5 uses
  %i.hj = ptrtoint ptr %.lcssa.i to i64           ; 2 uses
  %i.hk = ptrtoint ptr %.sroa.0220.0.lcssa to i64 ; 3 uses
  %i.hl = sub i64 %i.hj, %i.hk
  %i.hm = getelementptr inbounds i8, ptr %i.gy, i64 %i.hl ; 5 uses
  %.not1.i.i88 = icmp eq ptr %.lcssa.i, %.sroa.0220.0.lcssa
  br i1 %.not1.i.i88, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit92, label %.lr.ph.i.i89.preheader

.lr.ph.i.i89.preheader:                           ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit
  %i.hn = add i64 %i.hj, -4
  %i.ho = sub i64 %i.hn, %i.hk                    ; 2 uses
  %i.hp = lshr i64 %i.ho, 2
  %i.hq = add nuw nsw i64 %i.hp, 1                ; 2 uses
  %min.iters.check531 = icmp ult i64 %i.ho, 44
  %i.hr = sub i64 %i.gz, %i.hk
  %diff.check533 = icmp ugt i64 %i.hr, -32
  %or.cond595 = select i1 %min.iters.check531, i1 true, i1 %diff.check533
  br i1 %or.cond595, label %.lr.ph.i.i89.preheader613, label %vector.ph534

vector.ph534:                                     ; preds = %.lr.ph.i.i89.preheader
  %n.vec535 = and i64 %i.hq, 9223372036854775800  ; 3 uses
  %i.hs = mul i64 %n.vec535, -4                   ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_SG_NS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_:bb.a
vector.ph515:                                     ; preds = %.lr.ph.i.i100.preheader
  %n.vec516 = and i64 %i.jm, 9223372036854775800  ; 3 uses
  %i.jo = mul i64 %n.vec516, -4                   ; 2 uses
  %i.jp = getelementptr i8, ptr %.sroa.0249.0323, i64 %i.jo ; 2 uses
  %i.jq = getelementptr i8, ptr %.sroa.0235.0325, i64 %i.jo
  br label %vector.body517

vector.body517:                                   ; preds = %vector.body517, %vector.ph515
  %index518 = phi i64 [ 0, %vector.ph515 ], [ %index.next523, %vector.body517 ] ; 2 uses
  %i.jr = mul i64 %index518, -4                   ; 2 uses
  %next.gep519 = getelementptr i8, ptr %.sroa.0249.0323, i64 %i.jr ; 2 uses
  %next.gep520 = getelementptr i8, ptr %.sroa.0235.0325, i64 %i.jr ; 2 uses
  %i.js = getelementptr inbounds i8, ptr %next.gep520, i64 -16
  %i.jt = getelementptr inbounds i8, ptr %next.gep520, i64 -32
  %wide.load521 = load <4 x i32>, ptr %i.js, align 4, !tbaa !296, !noalias !3952
  %wide.load522 = load <4 x i32>, ptr %i.jt, align 4, !tbaa !296, !noalias !3952
  %i.ju = getelementptr inbounds i8, ptr %next.gep519, i64 -16
  %i.jv = getelementptr inbounds i8, ptr %next.gep519, i64 -32
  store <4 x i32> %wide.load521, ptr %i.ju, align 4, !tbaa !296, !noalias !3952
  store <4 x i32> %wide.load522, ptr %i.jv, align 4, !tbaa !296, !noalias !3952
  %index.next523 = add nuw i64 %index518, 8       ; 2 uses
  %i.jw = icmp eq i64 %index.next523, %n.vec516
  br i1 %i.jw, label %middle.block524, label %vector.body517, !llvm.loop !3929

middle.block524:                                  ; preds = %vector.body517
  %cmp.n525 = icmp eq i64 %i.jm, %n.vec516
  br i1 %cmp.n525, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98, label %.lr.ph.i.i100.preheader615

.lr.ph.i.i100.preheader615:                       ; preds = %.lr.ph.i.i100.preheader, %middle.block524
  %.sroa.0.0.i101.ph = phi ptr [ %.sroa.0249.0323, %.lr.ph.i.i100.preheader ], [ %i.jp, %middle.block524 ]
  %.ph616 = phi ptr [ %.sroa.0235.0325, %.lr.ph.i.i100.preheader ], [ %i.jq, %middle.block524 ]
  br label %.lr.ph.i.i100

.lr.ph.i.i100:                                    ; preds = %.lr.ph.i.i100.preheader615, %.lr.ph.i.i100
  %.sroa.0.0.i101 = phi ptr [ %i.ka, %.lr.ph.i.i100 ], [ %.sroa.0.0.i101.ph, %.lr.ph.i.i100.preheader615 ]
  %i.jx = phi ptr [ %i.jy, %.lr.ph.i.i100 ], [ %.ph616, %.lr.ph.i.i100.preheader615 ]
  %i.jy = getelementptr inbounds i8, ptr %i.jx, i64 -4 ; 3 uses
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !296, !noalias !3952
  %i.ka = getelementptr inbounds i8, ptr %.sroa.0.0.i101, i64 -4 ; 3 uses
  store i32 %i.jz, ptr %i.ka, align 4, !tbaa !296, !noalias !3952
  %.not.i.i102 = icmp eq ptr %i.jy, %.sroa.0220.0328
  br i1 %.not.i.i102, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98, label %.lr.ph.i.i100, !llvm.loop !3930

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98: ; preds = %.lr.ph.i.i100, %.lr.ph.i.i95, %middle.block524, %middle.block567, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit, %bb.aj
  %i.kb = phi ptr [ %i.gy, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %i.ak, %.thread.thread ], [ %i.gy, %bb.aj ], [ %i.jh, %bb.ak ], [ %i.gy, %middle.block567 ], [ %i.jh, %middle.block524 ], [ %i.gy, %.lr.ph.i.i95 ], [ %i.jh, %.lr.ph.i.i100 ]
  %.3 = phi i64 [ %.1390, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.speculated273, %.thread.thread ], [ %.1390, %bb.aj ], [ %.2, %bb.ak ], [ %.1390, %middle.block567 ], [ %.2, %middle.block524 ], [ %.1390, %.lr.ph.i.i95 ], [ %.2, %.lr.ph.i.i100 ]
  %.sroa.0210.0331 = phi ptr [ %.sroa.0210.0.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.0210.0333, %.thread.thread ], [ %.sroa.0210.0.lcssa, %bb.aj ], [ %.sroa.0210.0330, %bb.ak ], [ %.sroa.0210.0.lcssa, %middle.block567 ], [ %.sroa.0210.0330, %middle.block524 ], [ %.sroa.0210.0.lcssa, %.lr.ph.i.i95 ], [ %.sroa.0210.0330, %.lr.ph.i.i100 ]
  %.sroa.0260.0321 = phi ptr [ %.sroa.0260.0.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.0260.0338, %.thread.thread ], [ %.sroa.0260.0.lcssa, %bb.aj ], [ %.sroa.0260.0320, %bb.ak ], [ %.sroa.0260.0.lcssa, %middle.block567 ], [ %.sroa.0260.0320, %middle.block524 ], [ %.sroa.0260.0.lcssa, %.lr.ph.i.i95 ], [ %.sroa.0260.0320, %.lr.ph.i.i100 ]
  %.0284318 = phi i64 [ %.0284.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.0284339, %.thread.thread ], [ %.0284.lcssa, %bb.aj ], [ %.0284317, %bb.ak ], [ %.0284.lcssa, %middle.block567 ], [ %.0284317, %middle.block524 ], [ %.0284.lcssa, %.lr.ph.i.i95 ], [ %.0284317, %.lr.ph.i.i100 ]
  %.063315 = phi i64 [ %.063.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.063340, %.thread.thread ], [ %.063.lcssa, %bb.aj ], [ %.063314, %bb.ak ], [ %.063.lcssa, %middle.block567 ], [ %.063314, %middle.block524 ], [ %.063.lcssa, %.lr.ph.i.i95 ], [ %.063314, %.lr.ph.i.i100 ]
  %i.kc = phi ptr [ %i.hb, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %i.l, %.thread.thread ], [ %i.hb, %bb.aj ], [ %i.ji, %bb.ak ], [ %i.hb, %middle.block567 ], [ %i.ji, %middle.block524 ], [ %i.hb, %.lr.ph.i.i95 ], [ %i.ji, %.lr.ph.i.i100 ] ; 4 uses
  %.sroa.0249.7 = phi ptr [ %.sroa.0120.1, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.0249.0337, %.thread.thread ], [ %.sroa.0249.0.lcssa, %bb.aj ], [ %.sroa.0249.0323, %bb.ak ], [ %i.iv, %middle.block567 ], [ %i.jp, %middle.block524 ], [ %i.jg, %.lr.ph.i.i95 ], [ %i.ka, %.lr.ph.i.i100 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  store ptr %.sroa.0210.0331, ptr %34, align 8, !tbaa !441
  store ptr %.sroa.0260.0321, ptr %35, align 8, !tbaa !441
  store ptr %i.kb, ptr %36, align 8, !tbaa !441
  store ptr %i.kc, ptr %37, align 8, !tbaa !441
  store ptr %.sroa.0249.7, ptr %38, align 8, !tbaa !441
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_S5_S5_SG_NS0_7move_opEEET3_T_SJ_T0_T1_RT2_SM_SI_NS0_9iter_sizeISL_E4typeESQ_SQ_SQ_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %33, ptr noundef nonnull align 8 dead_on_return %34, ptr noundef nonnull align 8 dead_on_return %35, ptr noundef nonnull align 8 dead_on_return %36, ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dead_on_return %37, ptr noundef nonnull align 8 dead_on_return %38, i64 noundef %2, i64 noundef %.0284318, i64 noundef %.063315, i64 noundef %.3, i1 noundef zeroext false)
  %i.kd = load ptr, ptr %33, align 8, !tbaa !441  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  %i.ke = load ptr, ptr %32, align 8, !tbaa !441  ; 5 uses
  %.not1.i.i104 = icmp eq ptr %i.ke, %i.kc
  br i1 %.not1.i.i104, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit108, label %.lr.ph.i.i105.preheader

.lr.ph.i.i105.preheader:                          ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98
  %i.kf = ptrtoaddr ptr %i.ke to i64              ; 2 uses
  %i.kg = ptrtoaddr ptr %i.kd to i64
  %i.kh = ptrtoaddr ptr %i.kc to i64
  %i.ki = add i64 %i.kf, -4
  %i.kj = sub i64 %i.ki, %i.kh                    ; 2 uses
  %i.kk = lshr i64 %i.kj, 2
  %i.kl = add nuw nsw i64 %i.kk, 1                ; 2 uses
  %min.iters.check574 = icmp ult i64 %i.kj, 44
  %i.km = sub i64 %i.kg, %i.kf
  %diff.check576 = icmp ugt i64 %i.km, -32
  %or.cond598 = select i1 %min.iters.check574, i1 true, i1 %diff.check576
  br i1 %or.cond598, label %.lr.ph.i.i105.preheader599, label %vector.ph577

vector.ph577:                                     ; preds = %.lr.ph.i.i105.preheader
  %n.vec578 = and i64 %i.kl, 9223372036854775800  ; 3 uses
  %i.kn = mul i64 %n.vec578, -4                   ; 2 uses
  %i.ko = getelementptr i8, ptr %i.kd, i64 %i.kn
  %i.kp = getelementptr i8, ptr %i.ke, i64 %i.kn
  br label %vector.body579

vector.body579:                                   ; preds = %vector.body579, %vector.ph577
  %index580 = phi i64 [ 0, %vector.ph577 ], [ %index.next585, %vector.body579 ] ; 2 uses
  %i.kq = mul i64 %index580, -4                   ; 2 uses
  %next.gep581 = getelementptr i8, ptr %i.kd, i64 %i.kq ; 2 uses
  %next.gep582 = getelementptr i8, ptr %i.ke, i64 %i.kq ; 2 uses
  %i.kr = getelementptr inbounds i8, ptr %next.gep582, i64 -16
  %i.ks = getelementptr inbounds i8, ptr %next.gep582, i64 -32
  %wide.load583 = load <4 x i32>, ptr %i.kr, align 4, !tbaa !296, !noalias !3953
  %wide.load584 = load <4 x i32>, ptr %i.ks, align 4, !tbaa !296, !noalias !3953
  %i.kt = getelementptr inbounds i8, ptr %next.gep581, i64 -16
  %i.ku = getelementptr inbounds i8, ptr %next.gep581, i64 -32
  store <4 x i32> %wide.load583, ptr %i.kt, align 4, !tbaa !296, !noalias !3953
  store <4 x i32> %wide.load584, ptr %i.ku, align 4, !tbaa !296, !noalias !3953
  %index.next585 = add nuw i64 %index580, 8       ; 2 uses
  %i.kv = icmp eq i64 %index.next585, %n.vec578
  br i1 %i.kv, label %middle.block586, label %vector.body579, !llvm.loop !3935

middle.block586:                                  ; preds = %vector.body579
  %cmp.n587 = icmp eq i64 %i.kl, %n.vec578
  br i1 %cmp.n587, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit108, label %.lr.ph.i.i105.preheader599

.lr.ph.i.i105.preheader599:                       ; preds = %.lr.ph.i.i105.preheader, %middle.block586
  %.sroa.0.0.i106.ph = phi ptr [ %i.kd, %.lr.ph.i.i105.preheader ], [ %i.ko, %middle.block586 ]
  %.ph = phi ptr [ %i.ke, %.lr.ph.i.i105.preheader ], [ %i.kp, %middle.block586 ]
  br label %.lr.ph.i.i105

.lr.ph.i.i105:                                    ; preds = %.lr.ph.i.i105.preheader599, %.lr.ph.i.i105
  %.sroa.0.0.i106 = phi ptr [ %i.kz, %.lr.ph.i.i105 ], [ %.sroa.0.0.i106.ph, %.lr.ph.i.i105.preheader599 ]
  %i.kw = phi ptr [ %i.kx, %.lr.ph.i.i105 ], [ %.ph, %.lr.ph.i.i105.preheader599 ]
  %i.kx = getelementptr inbounds i8, ptr %i.kw, i64 -4 ; 3 uses
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !296, !noalias !3953
  %i.kz = getelementptr inbounds i8, ptr %.sroa.0.0.i106, i64 -4 ; 2 uses
  store i32 %i.ky, ptr %i.kz, align 4, !tbaa !296, !noalias !3953
  %.not.i.i107 = icmp eq ptr %i.kx, %i.kc
  br i1 %.not.i.i107, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit108, label %.lr.ph.i.i105, !llvm.loop !3936

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit108: ; preds = %.lr.ph.i.i105, %middle.block586, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_SG_NS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat {
bb.a:
  %7 = alloca %"class.boost::movelib::inverse", align 1 ; 4 uses
  %8 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %9 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %16 = alloca %"struct.boost::movelib::antistable.24", align 8 ; 5 uses
  %17 = alloca %"class.boost::movelib::inverse", align 1 ; 4 uses
  %18 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %19 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %20 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %21 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %22 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %23 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %24 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %25 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %26 = alloca %"struct.boost::movelib::antistable.24", align 8 ; 5 uses
  %27 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 9 uses
  %28 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 12 uses
  %29 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 12 uses
  %30 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %31 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %32 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 8 uses
  %33 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 4 uses
  %34 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %35 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %36 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %37 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %38 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %i.a = add i64 %5, %4                           ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !441    ; 3 uses
  %i.c = sub i64 0, %4
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !441    ; 8 uses
  %i.f = ptrtoaddr ptr %i.e to i64                ; 3 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.e, i64 %2 ; 2 uses
  %i.h = sub i64 0, %3
  %i.i = getelementptr [4 x i8], ptr %i.e, i64 %i.h ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  store ptr %i.i, ptr %27, align 8, !tbaa !441
  %i.j = mul i64 %2, %i.a
  %i.k = sub i64 0, %i.j
  %i.l = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.k ; 9 uses
  %i.m = icmp eq i64 %5, 0
  %i.n = select i1 %i.m, i64 0, i64 %4            ; 3 uses
  %i.o = add i64 %i.n, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.a) ; 2 uses
  %.not336 = icmp eq i64 %i.a, 0
  br i1 %.not336, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = mul i64 %2, -4
  %i.q = sub i64 0, %2                            ; 2 uses
  %.idx = shl i64 %i.q, 2                         ; 2 uses
  %.not68 = icmp eq i64 %6, 0
  %i.r = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.s = sub i64 0, %i.a
  %.not1.i.i72 = icmp eq i64 %2, 0
  %i.t = add i64 %5, %4
  %.neg636 = sub i64 1, %i.t
  %.neg637 = mul i64 %.neg636, %2
  %i.u = sub i64 %.neg637, %3
  %i.v = shl i64 %i.u, 2
  %scevgep = getelementptr i8, ptr %i.e, i64 %i.v
  %i.w = mul i64 %3, -4
  %i.x = shl i64 %2, 2                            ; 2 uses
  %i.y = sub i64 %i.w, %i.x
  %scevgep452.a = getelementptr i8, ptr %i.e, i64 %i.y
  %i.z = add i64 %3, %2
  %i.aa = shl i64 %i.z, 2
  %.neg638 = sub i64 %i.aa, %i.f
  %i.ab = add i64 %.neg638, -4
  %i.ac = shl i64 %2, 2
  %i.ad = add i64 %3, %2
  %i.ae = shl i64 %i.ad, 2
  %.neg639 = sub i64 %i.ae, %i.f
  %i.af = add i64 %.neg639, -4
  %i.ag = add i64 %2, 4611686018427387903
  %i.ah = and i64 %i.ag, 4611686018427387903      ; 2 uses
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ah, 7
  %stride.check = icmp slt i64 %.idx, 0
  %n.vec = and i64 %i.ai, 9223372036854775800     ; 3 uses
  %i.aj = mul i64 %n.vec, -4                      ; 2 uses
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.sink.split.i
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.sink.split.i ] ; 3 uses
  %i.ak = phi ptr [ %i.i, %.lr.ph ], [ %i.bj, %.sink.split.i ] ; 16 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.gx, %.sink.split.i ] ; 3 uses
  %.0346 = phi i64 [ %5, %.lr.ph ], [ %.1, %.sink.split.i ] ; 2 uses
  %.060345 = phi i8 [ 1, %.lr.ph ], [ %.262, %.sink.split.i ] ; 8 uses
  %.063344 = phi i64 [ %i.n, %.lr.ph ], [ %i.gv, %.sink.split.i ] ; 7 uses
  %.0288343 = phi i64 [ %i.a, %.lr.ph ], [ %i.gy, %.sink.split.i ] ; 5 uses
  %.sroa.0264.0342 = phi ptr [ %i.d, %.lr.ph ], [ %.sroa.0264.1, %.sink.split.i ] ; 13 uses
  %.sroa.0253.0341 = phi ptr [ %i.g, %.lr.ph ], [ %.sroa.0253.3, %.sink.split.i ] ; 17 uses
  %.sroa.0239.0340 = phi ptr [ %i.e, %.lr.ph ], [ %.sroa.0239.2, %.sink.split.i ] ; 18 uses
  %.sroa.0224.0339 = phi ptr [ %i.i, %.lr.ph ], [ %.sroa.0224.2, %.sink.split.i ] ; 16 uses
  %.sroa.0214.0337 = phi ptr [ %i.b, %.lr.ph ], [ %i.gt, %.sink.split.i ] ; 13 uses
  %.sroa.0239.0340468 = ptrtoaddr ptr %.sroa.0239.0340 to i64
  %.sroa.0224.0339469 = ptrtoaddr ptr %.sroa.0224.0339 to i64
  %i.al = icmp ult i64 %.063344, %.0
  br i1 %i.al, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_SG_EENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread20.i
  %.023.i = phi i64 [ %i.be, %.thread20.i ], [ %.063344, %bb.b ] ; 4 uses
  %.01822.i = phi i64 [ %i.bd, %.thread20.i ], [ 0, %bb.b ] ; 4 uses
  %i.am = mul i64 %.01822.i, %2
  %i.an = xor i64 %i.am, -1
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.an
  %i.ap = mul i64 %.023.i, %2
  %i.aq = xor i64 %i.ap, -1
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.aq
  %i.as = xor i64 %.01822.i, -1
  %i.at = getelementptr inbounds [4 x i8], ptr %.sroa.0214.0337, i64 %i.as
  %i.au = xor i64 %.023.i, -1
  %i.av = getelementptr inbounds [4 x i8], ptr %.sroa.0214.0337, i64 %i.au
  %i.aw = load i32, ptr %i.ao, align 4, !tbaa !296 ; 2 uses
  %i.ax = load i32, ptr %i.ar, align 4, !tbaa !296 ; 2 uses
  %i.ay = icmp slt i32 %i.aw, %i.ax
  br i1 %i.ay, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.az = icmp slt i32 %i.ax, %i.aw
  br i1 %i.az, label %.thread20.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = load i32, ptr %i.at, align 4, !tbaa !296
  %i.bb = load i32, ptr %i.av, align 4, !tbaa !296
  %i.bc = icmp slt i32 %i.ba, %i.bb
  %cond.fr.i = freeze i1 %i.bc
  br i1 %cond.fr.i, label %.thread.i, label %.thread20.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread20.i

.thread20.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bd = phi i64 [ %.023.i, %.thread.i ], [ %.01822.i, %bb.d ], [ %.01822.i, %bb.c ] ; 2 uses
  %i.be = add nuw i64 %.023.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.be, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_SG_EENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit, label %.lr.ph.i, !llvm.loop !54

_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_SG_EENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit: ; preds = %.thread20.i, %bb.b
  %.018.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bd, %.thread20.i ] ; 4 uses
  %i.bf = add i64 %.018.lcssa.i, 2
  %i.bg = call i64 @llvm.umax.i64(i64 %.0, i64 %i.bf) ; 2 uses
  %.sroa.speculated277 = call i64 @llvm.umin.i64(i64 %i.bg, i64 %.0288343) ; 4 uses
  %.neg304 = mul i64 %i.p, %.018.lcssa.i          ; 2 uses
  %i.bh = getelementptr i8, ptr %i.ak, i64 %.neg304 ; 11 uses
  %i.bi = getelementptr [4 x i8], ptr %i.bh, i64 %i.q ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ak, i64 %.idx  ; 15 uses
  %.not67 = icmp eq i64 %.0346, 0
  br i1 %.not67, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_SG_EENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  br i1 %.not68, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bk = getelementptr inbounds i8, ptr %i.bh, i64 -4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !296
  %i.bm = load i32, ptr %i.r, align 4, !tbaa !296
  %i.bn = icmp slt i32 %i.bl, %i.bm
  br i1 %i.bn, label %.thread.loopexit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old70 = trunc nuw i8 %.060345 to i1
  br i1 %.old70, label %.thread.thread, label %bb.h

.thread.thread:                                   ; preds = %bb.g
  %i.bo = icmp eq ptr %.sroa.0224.0339, %.sroa.0253.0341
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  store ptr %i.l, ptr %32, align 8, !tbaa !441
  br i1 %i.bo, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit100, label %bb.ak

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_SG_EENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  %.neg306 = mul i64 %.018.lcssa.i, -4            ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %.sroa.0214.0337, i64 %.neg306 ; 7 uses
  %i.bq = load ptr, ptr %0, align 8, !tbaa !441
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.s
  %i.bs = icmp eq ptr %.sroa.0264.0342, %i.br
  br i1 %i.bs, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bt = icmp eq ptr %.sroa.0224.0339, %.sroa.0253.0341 ; 2 uses
  %i.bu = trunc nuw i8 %.060345 to i1
  br i1 %i.bu, label %bb.j, label %.thread418

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds i8, ptr %i.bp, i64 -4
  %i.bw = getelementptr inbounds i8, ptr %.sroa.0264.0342, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !296
  %i.by = load i32, ptr %i.bv, align 4, !tbaa !296
  %i.bz = icmp slt i32 %i.bx, %i.by               ; 7 uses
  %i.ca = zext i1 %i.bz to i8                     ; 4 uses
  %i.cb = icmp eq ptr %.sroa.0224.0339, %.sroa.0253.0341 ; 2 uses
  %i.cc = trunc nuw i8 %.060345 to i1             ; 3 uses
  %i.cd = xor i1 %i.bz, %i.cc
  br i1 %i.cd, label %bb.o, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.ce = phi i1 [ %i.bt, %._crit_edge ], [ %i.cb, %bb.i ]
  %i.cf = phi i1 [ true, %._crit_edge ], [ %i.bz, %bb.i ] ; 3 uses
  %.not1.i.i = icmp eq ptr %.sroa.0239.0340, %.sroa.0224.0339
  %or.cond310 = select i1 %i.ce, i1 true, i1 %.not1.i.i
  br i1 %or.cond310, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.cg = add i64 %.sroa.0239.0340468, -4
  %i.ch = sub i64 %i.cg, %.sroa.0224.0339469      ; 3 uses
  %i.ci = lshr i64 %i.ch, 2
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check471 = icmp ult i64 %i.ch, 28
  br i1 %min.iters.check471, label %.lr.ph.i.i.preheader669, label %vector.memcheck472

vector.memcheck472:                               ; preds = %.lr.ph.i.i.preheader
  %.not640 = and i64 %i.ch, -4
  %i.ck = xor i64 %.not640, -4                    ; 2 uses
  %i.cl = getelementptr i8, ptr %.sroa.0239.0340, i64 %i.ck
  %i.cm = getelementptr i8, ptr %.sroa.0253.0341, i64 %i.ck
  %bound0473 = icmp ult ptr %i.cl, %.sroa.0253.0341
  %bound1474 = icmp ult ptr %i.cm, %.sroa.0239.0340
  %found.conflict475 = and i1 %bound0473, %bound1474
  br i1 %found.conflict475, label %.lr.ph.i.i.preheader669, label %vector.ph476

vector.ph476:                                     ; preds = %vector.memcheck472
  %n.vec477 = and i64 %i.cj, 9223372036854775800  ; 3 uses
  %i.cn = mul i64 %n.vec477, -4                   ; 2 uses
  %i.co = getelementptr i8, ptr %.sroa.0253.0341, i64 %i.cn ; 2 uses
  %i.cp = getelementptr i8, ptr %.sroa.0239.0340, i64 %i.cn
  br label %vector.body478

vector.body478:                                   ; preds = %vector.body478, %vector.ph476
  %index479 = phi i64 [ 0, %vector.ph476 ], [ %index.next486, %vector.body478 ] ; 2 uses
  %i.cq = mul i64 %index479, -4                   ; 2 uses
  %next.gep480 = getelementptr i8, ptr %.sroa.0253.0341, i64 %i.cq ; 2 uses
  %next.gep481 = getelementptr i8, ptr %.sroa.0239.0340, i64 %i.cq ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %next.gep481, i64 -16 ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %next.gep481, i64 -32 ; 2 uses
  %wide.load482 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !296, !alias.scope !4022, !noalias !4023
  %wide.load483 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !296, !alias.scope !4022, !noalias !4023
  %i.ct = getelementptr inbounds i8, ptr %next.gep480, i64 -16 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %next.gep480, i64 -32 ; 2 uses
  %wide.load484 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !296, !alias.scope !4024, !noalias !4025
  %wide.load485 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !296, !alias.scope !4024, !noalias !4025
  store <4 x i32> %wide.load484, ptr %i.cr, align 4, !tbaa !296, !alias.scope !4022, !noalias !4023
  store <4 x i32> %wide.load485, ptr %i.cs, align 4, !tbaa !296, !alias.scope !4022, !noalias !4023
  store <4 x i32> %wide.load482, ptr %i.ct, align 4, !tbaa !296, !alias.scope !4024, !noalias !4025
  store <4 x i32> %wide.load483, ptr %i.cu, align 4, !tbaa !296, !alias.scope !4024, !noalias !4025
  %index.next486 = add nuw i64 %index479, 8       ; 2 uses
  %i.cv = icmp eq i64 %index.next486, %n.vec477
  br i1 %i.cv, label %middle.block487, label %vector.body478, !llvm.loop !3961

middle.block487:                                  ; preds = %vector.body478
  %cmp.n488 = icmp eq i64 %i.cj, %n.vec477
  br i1 %cmp.n488, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader669

.lr.ph.i.i.preheader669:                          ; preds = %vector.memcheck472, %.lr.ph.i.i.preheader, %middle.block487
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.0253.0341, %vector.memcheck472 ], [ %.sroa.0253.0341, %.lr.ph.i.i.preheader ], [ %i.co, %middle.block487 ]
  %.ph670 = phi ptr [ %.sroa.0239.0340, %vector.memcheck472 ], [ %.sroa.0239.0340, %.lr.ph.i.i.preheader ], [ %i.cp, %middle.block487 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader669, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.cy, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader669 ]
  %i.cw = phi ptr [ %i.cx, %.lr.ph.i.i ], [ %.ph670, %.lr.ph.i.i.preheader669 ]
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -4 ; 4 uses
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 4 uses
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !296, !noalias !4025
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !296, !noalias !4025
  store i32 %i.da, ptr %i.cx, align 4, !tbaa !296, !noalias !4025
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !296, !noalias !4025
  %.not.i.i = icmp eq ptr %i.cx, %.sroa.0224.0339
  br i1 %.not.i.i, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i, !llvm.loop !3962

_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit: ; preds = %.lr.ph.i.i, %middle.block487, %bb.j
  %.sroa.0253.1 = phi ptr [ %.sroa.0253.0341, %bb.j ], [ %i.co, %middle.block487 ], [ %i.cy, %.lr.ph.i.i ] ; 3 uses
  %.not.i = icmp eq i64 %.neg304, 0
  br i1 %.not.i, label %.sink.split.i, label %bb.k

bb.k:                                             ; preds = %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit
  br i1 %.not1.i.i72, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i73.preheader

.lr.ph.i.i73.preheader:                           ; preds = %bb.k
  br i1 %min.iters.check, label %.lr.ph.i.i73.preheader667, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i73.preheader
  %bound0 = icmp ult ptr %scevgep452.a, %i.bh
  %bound1 = icmp ult ptr %i.bi, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.db = or i1 %found.conflict, %stride.check
  br i1 %i.db, label %.lr.ph.i.i73.preheader667, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dc = getelementptr i8, ptr %i.bh, i64 %i.aj
  %i.dd = getelementptr i8, ptr %i.ak, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.de = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.de ; 2 uses
  %next.gep453 = getelementptr i8, ptr %i.ak, i64 %i.de ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %next.gep453, i64 -16 ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %next.gep453, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.df, align 4, !tbaa !296, !alias.scope !4026, !noalias !4027
  %wide.load454 = load <4 x i32>, ptr %i.dg, align 4, !tbaa !296, !alias.scope !4026, !noalias !4027
  %i.dh = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  %wide.load455 = load <4 x i32>, ptr %i.dh, align 4, !tbaa !296, !alias.scope !4028, !noalias !4029
  %wide.load456 = load <4 x i32>, ptr %i.di, align 4, !tbaa !296, !alias.scope !4028, !noalias !4029
  store <4 x i32> %wide.load455, ptr %i.df, align 4, !tbaa !296, !alias.scope !4026, !noalias !4027
  store <4 x i32> %wide.load456, ptr %i.dg, align 4, !tbaa !296, !alias.scope !4026, !noalias !4027
  store <4 x i32> %wide.load, ptr %i.dh, align 4, !tbaa !296, !alias.scope !4028, !noalias !4029
  store <4 x i32> %wide.load454, ptr %i.di, align 4, !tbaa !296, !alias.scope !4028, !noalias !4029
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !3968

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i73.preheader667

.lr.ph.i.i73.preheader667:                        ; preds = %vector.memcheck, %.lr.ph.i.i73.preheader, %middle.block
  %.sroa.04.0.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i73.preheader ], [ %i.dc, %middle.block ]
  %.ph668 = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i.i73.preheader ], [ %i.dd, %middle.block ]
  br label %.lr.ph.i.i73

.lr.ph.i.i73:                                     ; preds = %.lr.ph.i.i73.preheader667, %.lr.ph.i.i73
  %.sroa.04.0.i = phi ptr [ %i.dm, %.lr.ph.i.i73 ], [ %.sroa.04.0.i.ph, %.lr.ph.i.i73.preheader667 ]
  %i.dk = phi ptr [ %i.dl, %.lr.ph.i.i73 ], [ %.ph668, %.lr.ph.i.i73.preheader667 ]
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -4 ; 4 uses
  %i.dm = getelementptr inbounds i8, ptr %.sroa.04.0.i, i64 -4 ; 3 uses
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !296, !noalias !4029
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !296, !noalias !4029
  store i32 %i.do, ptr %i.dl, align 4, !tbaa !296, !noalias !4029
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !296, !noalias !4029
  %.not.i.i74 = icmp eq ptr %i.dl, %i.bj
  br i1 %.not.i.i74, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i73, !llvm.loop !3969

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i73, %middle.block, %bb.k
  %.not9.i = icmp eq i64 %.neg306, 0
  br i1 %.not9.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.dp = getelementptr inbounds i8, ptr %i.bp, i64 -4 ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %.sroa.0214.0337, i64 -4 ; 2 uses
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !296
  %i.ds = load i32, ptr %i.dq, align 4, !tbaa !296
  store i32 %i.ds, ptr %i.dp, align 4, !tbaa !296
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !296
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.dt = icmp eq ptr %i.bp, %.sroa.0264.0342
  br i1 %i.dt, label %.sink.split.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.du = icmp eq ptr %.sroa.0264.0342, %.sroa.0214.0337
  %spec.select = select i1 %i.du, ptr %i.bp, ptr %.sroa.0264.0342
  br label %.sink.split.i

bb.o:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  br i1 %i.cb, label %bb.p, label %bb.s

.thread418:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  br i1 %i.bt, label %.thread419, label %.thread420

.thread420:                                       ; preds = %.thread418
  store ptr %.sroa.0239.0340, ptr %28, align 8, !tbaa !441
  store ptr %.sroa.0224.0339, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %i.dv = ptrtoint ptr %.sroa.0239.0340 to i64
  %i.dw = ptrtoint ptr %.sroa.0224.0339 to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = ashr exact i64 %i.dx, 2
  %i.dz = sub nsw i64 0, %i.dy
  %i.ea = getelementptr inbounds [4 x i8], ptr %.sroa.0253.0341, i64 %i.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  br label %bb.u

.thread419:                                       ; preds = %.thread418
  %i.eb = ptrtoint ptr %.sroa.0239.0340 to i64
  %i.ec = ptrtoint ptr %.sroa.0224.0339 to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = getelementptr inbounds i8, ptr %i.ak, i64 %i.ed ; 2 uses
  store ptr %i.ee, ptr %28, align 8, !tbaa !441
  store ptr %i.ee, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ef = ptrtoint ptr %.sroa.0239.0340 to i64
  %i.eg = ptrtoint ptr %.sroa.0224.0339 to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = getelementptr inbounds i8, ptr %i.ak, i64 %i.eh ; 2 uses
  store ptr %i.ei, ptr %28, align 8, !tbaa !441
  store ptr %i.ei, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  br i1 %i.cc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr %.sroa.0239.0340, ptr %18, align 8, !tbaa !441, !noalias !4030
  store ptr %.sroa.0224.0339, ptr %19, align 8, !tbaa !441, !noalias !4030
  store ptr %i.bj, ptr %20, align 8, !tbaa !441, !noalias !4030
  store ptr %i.bh, ptr %21, align 8, !tbaa !441, !noalias !4030
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %30, ptr noundef nonnull align 8 dead_on_return %18, ptr noundef nonnull align 8 dead_on_return %19, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %20, ptr noundef nonnull align 8 dead_on_return %21, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit

bb.r:                                             ; preds = %.thread419, %bb.p
  %i.ej = phi i8 [ 1, %.thread419 ], [ %i.ca, %bb.p ]
  %i.ek = phi i1 [ true, %.thread419 ], [ %i.bz, %bb.p ]
  store ptr %.sroa.0239.0340, ptr %22, align 8, !tbaa !441, !noalias !4030
  store ptr %.sroa.0224.0339, ptr %23, align 8, !tbaa !441, !noalias !4030
  store ptr %i.bj, ptr %24, align 8, !tbaa !441, !noalias !4030
  store ptr %i.bh, ptr %25, align 8, !tbaa !441, !noalias !4030
  store ptr %17, ptr %26, align 8, !tbaa !455, !noalias !4030
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %30, ptr noundef nonnull align 8 dead_on_return %22, ptr noundef nonnull align 8 dead_on_return %23, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %24, ptr noundef nonnull align 8 dead_on_return %25, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dead_on_return %26)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit: ; preds = %bb.q, %bb.r
  %i.el = phi i8 [ %i.ca, %bb.q ], [ %i.ej, %bb.r ]
  %i.em = phi i1 [ %i.bz, %bb.q ], [ %i.ek, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  store ptr %.sroa.0239.0340, ptr %28, align 8, !tbaa !441
  store ptr %.sroa.0224.0339, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %i.en = ptrtoint ptr %.sroa.0239.0340 to i64
  %i.eo = ptrtoint ptr %.sroa.0224.0339 to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = ashr exact i64 %i.ep, 2
  %i.er = sub nsw i64 0, %i.eq
  %i.es = getelementptr inbounds [4 x i8], ptr %.sroa.0253.0341, i64 %i.er ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  br i1 %i.cc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store ptr %.sroa.0253.0341, ptr %8, align 8, !tbaa !441, !noalias !4031
  store ptr %i.es, ptr %9, align 8, !tbaa !441, !noalias !4031
  store ptr %i.bj, ptr %10, align 8, !tbaa !441, !noalias !4031
  store ptr %i.bh, ptr %11, align 8, !tbaa !441, !noalias !4031
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %31, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75

bb.u:                                             ; preds = %.thread420, %bb.s
  %i.et = phi ptr [ %i.ea, %.thread420 ], [ %i.es, %bb.s ]
  %i.eu = phi i8 [ 1, %.thread420 ], [ %i.ca, %bb.s ]
  %i.ev = phi i1 [ true, %.thread420 ], [ %i.bz, %bb.s ]
  store ptr %.sroa.0253.0341, ptr %12, align 8, !tbaa !441, !noalias !4031
  store ptr %i.et, ptr %13, align 8, !tbaa !441, !noalias !4031
  store ptr %i.bj, ptr %14, align 8, !tbaa !441, !noalias !4031
  store ptr %i.bh, ptr %15, align 8, !tbaa !441, !noalias !4031
  store ptr %7, ptr %16, align 8, !tbaa !455, !noalias !4031
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %31, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dead_on_return %16)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75: ; preds = %bb.t, %bb.u
  %i.ew = phi i8 [ %i.ca, %bb.t ], [ %i.eu, %bb.u ]
  %i.ex = phi i1 [ %i.bz, %bb.t ], [ %i.ev, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  br label %bb.v

bb.v:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit
  %i.ey = phi i1 [ %i.ex, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75 ], [ %i.em, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit ]
  %i.ez = phi i8 [ %i.ew, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75 ], [ %i.el, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit ]
  %i.fa = load ptr, ptr %27, align 8, !tbaa !441  ; 11 uses
  %i.fb = ptrtoint ptr %i.fa to i64               ; 4 uses
  %i.fc = ptrtoint ptr %i.bj to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = getelementptr inbounds i8, ptr %i.bi, i64 %i.fd ; 6 uses
  %.not.i76 = icmp eq ptr %i.fa, %i.fe
  br i1 %.not.i76, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not1.i.i77 = icmp eq ptr %i.fa, %i.bj
  br i1 %.not1.i.i77, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78.preheader

.lr.ph.i.i78.preheader:                           ; preds = %bb.w
  %i.ff = mul i64 %indvar, %i.ac
  %i.fg = add i64 %i.af, %i.ff
  %i.fh = add i64 %i.fg, %i.fb                    ; 2 uses
  %i.fi = lshr i64 %i.fh, 2
  %i.fj = add nuw nsw i64 %i.fi, 1                ; 2 uses
  %min.iters.check500 = icmp ult i64 %i.fh, 44
  br i1 %min.iters.check500, label %.lr.ph.i.i78.preheader671, label %vector.memcheck501

vector.memcheck501:                               ; preds = %.lr.ph.i.i78.preheader
  %i.fk = mul i64 %indvar, %i.x
  %i.fl = add i64 %i.ab, %i.fk
  %i.fm = add i64 %i.fl, %i.fb
  %i.fn = and i64 %i.fm, -4                       ; 2 uses
  %i.fo = sub nuw nsw i64 -4, %i.fn
  %i.fp = getelementptr i8, ptr %i.fa, i64 %i.fo
  %i.fq = mul i64 %.018.lcssa.i, %2
  %i.fr = shl i64 %i.fq, 2
  %39 = add i64 %i.fr, %i.fn
  %i.fs = add i64 %39, %i.f
  %reass.sub = sub i64 %i.fb, %i.fs
  %40 = getelementptr i8, ptr %i.e, i64 %reass.sub
  %i.ft = getelementptr i8, ptr %40, i64 -4
  %bound0502 = icmp ult ptr %i.fp, %i.fe
  %bound1503 = icmp ult ptr %i.ft, %i.fa
  %found.conflict504 = and i1 %bound0502, %bound1503
  br i1 %found.conflict504, label %.lr.ph.i.i78.preheader671, label %vector.ph505

vector.ph505:                                     ; preds = %vector.memcheck501
  %n.vec506 = and i64 %i.fj, 9223372036854775800  ; 3 uses
  %i.fu = mul i64 %n.vec506, -4                   ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fe, i64 %i.fu
  %i.fw = getelementptr i8, ptr %i.fa, i64 %i.fu
  br label %vector.body507

vector.body507:                                   ; preds = %vector.body507, %vector.ph505
  %index508 = phi i64 [ 0, %vector.ph505 ], [ %index.next515, %vector.body507 ] ; 2 uses
  %i.fx = mul i64 %index508, -4                   ; 2 uses
  %next.gep509 = getelementptr i8, ptr %i.fe, i64 %i.fx ; 2 uses
  %next.gep510 = getelementptr i8, ptr %i.fa, i64 %i.fx ; 2 uses
  %i.fy = getelementptr inbounds i8, ptr %next.gep510, i64 -16 ; 2 uses
  %i.fz = getelementptr inbounds i8, ptr %next.gep510, i64 -32 ; 2 uses
  %wide.load511 = load <4 x i32>, ptr %i.fy, align 4, !tbaa !296, !alias.scope !4032, !noalias !4033
  %wide.load512 = load <4 x i32>, ptr %i.fz, align 4, !tbaa !296, !alias.scope !4032, !noalias !4033
  %i.ga = getelementptr inbounds i8, ptr %next.gep509, i64 -16 ; 2 uses
  %i.gb = getelementptr inbounds i8, ptr %next.gep509, i64 -32 ; 2 uses
  %wide.load513 = load <4 x i32>, ptr %i.ga, align 4, !tbaa !296, !alias.scope !4034, !noalias !4035
  %wide.load514 = load <4 x i32>, ptr %i.gb, align 4, !tbaa !296, !alias.scope !4034, !noalias !4035
  store <4 x i32> %wide.load513, ptr %i.fy, align 4, !tbaa !296, !alias.scope !4032, !noalias !4033
  store <4 x i32> %wide.load514, ptr %i.fz, align 4, !tbaa !296, !alias.scope !4032, !noalias !4033
  store <4 x i32> %wide.load511, ptr %i.ga, align 4, !tbaa !296, !alias.scope !4034, !noalias !4035
  store <4 x i32> %wide.load512, ptr %i.gb, align 4, !tbaa !296, !alias.scope !4034, !noalias !4035
  %index.next515 = add nuw i64 %index508, 8       ; 2 uses
  %i.gc = icmp eq i64 %index.next515, %n.vec506
  br i1 %i.gc, label %middle.block516, label %vector.body507, !llvm.loop !3979

middle.block516:                                  ; preds = %vector.body507
  %cmp.n517 = icmp eq i64 %i.fj, %n.vec506
  br i1 %cmp.n517, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78.preheader671

.lr.ph.i.i78.preheader671:                        ; preds = %vector.memcheck501, %.lr.ph.i.i78.preheader, %middle.block516
  %.sroa.04.0.i79.ph = phi ptr [ %i.fe, %vector.memcheck501 ], [ %i.fe, %.lr.ph.i.i78.preheader ], [ %i.fv, %middle.block516 ]
  %.ph672 = phi ptr [ %i.fa, %vector.memcheck501 ], [ %i.fa, %.lr.ph.i.i78.preheader ], [ %i.fw, %middle.block516 ]
  br label %.lr.ph.i.i78

.lr.ph.i.i78:                                     ; preds = %.lr.ph.i.i78.preheader671, %.lr.ph.i.i78
  %.sroa.04.0.i79 = phi ptr [ %i.gf, %.lr.ph.i.i78 ], [ %.sroa.04.0.i79.ph, %.lr.ph.i.i78.preheader671 ]
  %i.gd = phi ptr [ %i.ge, %.lr.ph.i.i78 ], [ %.ph672, %.lr.ph.i.i78.preheader671 ]
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 -4 ; 4 uses
  %i.gf = getelementptr inbounds i8, ptr %.sroa.04.0.i79, i64 -4 ; 3 uses
  %i.gg = load i32, ptr %i.ge, align 4, !tbaa !296, !noalias !4035
  %i.gh = load i32, ptr %i.gf, align 4, !tbaa !296, !noalias !4035
  store i32 %i.gh, ptr %i.ge, align 4, !tbaa !296, !noalias !4035
  store i32 %i.gg, ptr %i.gf, align 4, !tbaa !296, !noalias !4035
  %.not.i.i80 = icmp eq ptr %i.ge, %i.bj
  br i1 %.not.i.i80, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78, !llvm.loop !3980

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81: ; preds = %.lr.ph.i.i78, %middle.block516, %bb.w
  %.not9.i82 = icmp eq i64 %.neg306, 0
  br i1 %.not9.i82, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81
  %i.gi = getelementptr inbounds i8, ptr %i.bp, i64 -4 ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %.sroa.0214.0337, i64 -4 ; 2 uses
  %i.gk = load i32, ptr %i.gi, align 4, !tbaa !296
  %i.gl = load i32, ptr %i.gj, align 4, !tbaa !296
  store i32 %i.gl, ptr %i.gi, align 4, !tbaa !296
  store i32 %i.gk, ptr %i.gj, align 4, !tbaa !296
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81
  %i.gm = icmp eq ptr %i.bp, %.sroa.0264.0342
  br i1 %i.gm, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gn = icmp eq ptr %.sroa.0264.0342, %.sroa.0214.0337
  %spec.select302 = select i1 %i.gn, ptr %i.bp, ptr %.sroa.0264.0342
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85: ; preds = %bb.z, %bb.y, %bb.v
  %.sroa.0264.5 = phi ptr [ %.sroa.0264.0342, %bb.v ], [ %spec.select302, %bb.z ], [ %.sroa.0214.0337, %bb.y ]
  %i.go = load ptr, ptr %28, align 8, !tbaa !441  ; 2 uses
  %i.gp = load ptr, ptr %29, align 8, !tbaa !441  ; 3 uses
  %.not307 = icmp eq ptr %i.go, %i.gp
  br i1 %.not307, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %2
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85, %bb.aa
  %.sroa.0224.1 = phi ptr [ %i.bj, %bb.aa ], [ %i.gp, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85 ]
  %.sroa.0239.1 = phi ptr [ %i.fa, %bb.aa ], [ %i.go, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85 ]
  %.sroa.0253.2 = phi ptr [ %i.gq, %bb.aa ], [ %i.gp, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85 ]
  %.161 = phi i8 [ %i.ez, %bb.aa ], [ %.060345, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit, %bb.m, %bb.ab
  %i.gr = phi i1 [ %i.ey, %bb.ab ], [ %i.cf, %bb.m ], [ %i.cf, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.cf, %bb.n ]
  %.sroa.0224.2 = phi ptr [ %.sroa.0224.1, %bb.ab ], [ %i.bj, %bb.m ], [ %i.bj, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.bj, %bb.n ] ; 2 uses
  %.sroa.0239.2 = phi ptr [ %.sroa.0239.1, %bb.ab ], [ %i.ak, %bb.m ], [ %i.ak, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.ak, %bb.n ] ; 2 uses
  %.sroa.0253.3 = phi ptr [ %.sroa.0253.2, %bb.ab ], [ %.sroa.0253.1, %bb.m ], [ %.sroa.0253.1, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %.sroa.0253.1, %bb.n ] ; 2 uses
  %.sroa.0264.1 = phi ptr [ %.sroa.0264.5, %bb.ab ], [ %.sroa.0214.0337, %bb.m ], [ %.sroa.0264.0342, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %spec.select, %bb.n ] ; 2 uses
  %.262 = phi i8 [ %.161, %bb.ab ], [ %.060345, %bb.m ], [ %.060345, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %.060345, %bb.n ] ; 2 uses
  %not. = xor i1 %i.gr, true
  %i.gs = sext i1 %not. to i64
  %.1 = add i64 %.0346, %i.gs
  store ptr %i.bj, ptr %27, align 8, !tbaa !441
  %i.gt = getelementptr inbounds i8, ptr %.sroa.0214.0337, i64 -4 ; 2 uses
  %i.gu = icmp ne i64 %.063344, 0
  %.neg = sext i1 %i.gu to i64
  %i.gv = add i64 %.063344, %.neg                 ; 2 uses
  %i.gw = icmp ne i64 %i.bg, 0
  %.neg69 = sext i1 %i.gw to i64
  %i.gx = add i64 %.sroa.speculated277, %.neg69   ; 2 uses
  %i.gy = add i64 %.0288343, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gy, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !3981

.thread.loopexit:                                 ; preds = %bb.f, %.sink.split.i
  %i.gz = phi ptr [ %i.bj, %.sink.split.i ], [ %i.ak, %bb.f ]
  %.4 = phi i64 [ %i.gx, %.sink.split.i ], [ %.sroa.speculated277, %bb.f ]
  %.sroa.0214.0.lcssa.ph = phi ptr [ %i.gt, %.sink.split.i ], [ %.sroa.0214.0337, %bb.f ]
  %.sroa.0224.0.lcssa.ph = phi ptr [ %.sroa.0224.2, %.sink.split.i ], [ %.sroa.0224.0339, %bb.f ]
  %.sroa.0239.0.lcssa.ph = phi ptr [ %.sroa.0239.2, %.sink.split.i ], [ %.sroa.0239.0340, %bb.f ]
  %.sroa.0253.0.lcssa.ph = phi ptr [ %.sroa.0253.3, %.sink.split.i ], [ %.sroa.0253.0341, %bb.f ]
  %.sroa.0264.0.lcssa.ph = phi ptr [ %.sroa.0264.1, %.sink.split.i ], [ %.sroa.0264.0342, %bb.f ]
  %.0288.lcssa.ph = phi i64 [ 0, %.sink.split.i ], [ %.0288343, %bb.f ]
  %.063.lcssa.ph = phi i64 [ %i.gv, %.sink.split.i ], [ %.063344, %bb.f ]
  %.060.lcssa.ph = phi i8 [ %.262, %.sink.split.i ], [ %.060345, %bb.f ]
  %i.ha = trunc nuw i8 %.060.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.hb = phi ptr [ %i.i, %bb.a ], [ %i.gz, %.thread.loopexit ] ; 8 uses
  %.1395 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.sroa.0214.0.lcssa = phi ptr [ %i.b, %bb.a ], [ %.sroa.0214.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.sroa.0224.0.lcssa = phi ptr [ %i.i, %bb.a ], [ %.sroa.0224.0.lcssa.ph, %.thread.loopexit ] ; 8 uses
  %.sroa.0239.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %.sroa.0239.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.sroa.0253.0.lcssa = phi ptr [ %i.g, %bb.a ], [ %.sroa.0253.0.lcssa.ph, %.thread.loopexit ] ; 4 uses
  %.sroa.0264.0.lcssa = phi ptr [ %i.d, %bb.a ], [ %.sroa.0264.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0288.lcssa = phi i64 [ 0, %bb.a ], [ %.0288.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.063.lcssa = phi i64 [ %i.n, %bb.a ], [ %.063.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.060.lcssa = phi i1 [ true, %bb.a ], [ %i.ha, %.thread.loopexit ]
  %i.hc = icmp eq ptr %.sroa.0224.0.lcssa, %.sroa.0253.0.lcssa ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  store ptr %i.l, ptr %32, align 8, !tbaa !441
  %.neg309 = mul i64 %6, -4                       ; 2 uses
  %i.hd = getelementptr inbounds i8, ptr %i.l, i64 %.neg309 ; 7 uses
  %i.he = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.he, i1 %.060.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.hc, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not1.i = icmp eq ptr %.sroa.0239.0.lcssa, %.sroa.0224.0.lcssa
  br i1 %.not1.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %.lr.ph.i86

.lr.ph.i86:                                       ; preds = %bb.ad
  %i.hf = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !296, !noalias !4036
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i86
  %i.hh = phi ptr [ %.sroa.0239.0.lcssa, %.lr.ph.i86 ], [ %i.hi, %bb.af ] ; 2 uses
  %i.hi = getelementptr inbounds i8, ptr %i.hh, i64 -4 ; 4 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !296, !noalias !4036
  %i.hk = icmp slt i32 %i.hj, %i.hg
  br i1 %i.hk, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.i87 = icmp eq ptr %i.hi, %.sroa.0224.0.lcssa
  br i1 %.not.i87, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !81

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.lcssa.i = phi ptr [ %.sroa.0239.0.lcssa, %bb.ad ], [ %i.hh, %bb.ae ], [ %i.hi, %bb.af ] ; 8 uses
  %i.hl = ptrtoint ptr %.lcssa.i to i64           ; 2 uses
  %i.hm = ptrtoint ptr %.sroa.0224.0.lcssa to i64 ; 2 uses
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = getelementptr i8, ptr %i.hb, i64 %i.hn  ; 7 uses
  %.not1.i.i88 = icmp eq ptr %.lcssa.i, %.sroa.0224.0.lcssa
  br i1 %.not1.i.i88, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit93, label %.lr.ph.i.i89.preheader

.lr.ph.i.i89.preheader:                           ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit
  %i.hp = add i64 %i.hl, -4
  %i.hq = sub i64 %i.hp, %i.hm                    ; 4 uses
  %i.hr = lshr i64 %i.hq, 2
  %i.hs = add nuw nsw i64 %i.hr, 1                ; 2 uses
  %min.iters.check558 = icmp ult i64 %i.hq, 60
  br i1 %min.iters.check558, label %.lr.ph.i.i89.preheader661, label %vector.memcheck559

vector.memcheck559:                               ; preds = %.lr.ph.i.i89.preheader
  %.not642.a = and i64 %i.hq, -4
  %i.ht = xor i64 %.not642.a, -4
  %i.hu = getelementptr i8, ptr %.lcssa.i, i64 %i.ht
  %i.hv = and i64 %i.hq, 3
  %i.hw = getelementptr i8, ptr %i.hb, i64 %i.hv
  %bound0560 = icmp ult ptr %i.hu, %i.ho
end_hunk_5
begin_hunk_6_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPhNS1_4lessEPiS5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET3_T_SH_T0_T1_RT2_SK_SG_NS0_9iter_sizeISJ_E4typeESO_SO_SO_T4_bT5_:bb.a
  %bound1278 = icmp ult ptr %i.bo, %i.fg
  %found.conflict279 = and i1 %bound0277, %bound1278
  br i1 %found.conflict279, label %.lr.ph.i.i.preheader345, label %vector.ph280

vector.ph280:                                     ; preds = %vector.memcheck276
  %n.vec281 = and i64 %i.fb, 9223372036854775800  ; 3 uses
  %i.fi = shl i64 %n.vec281, 2                    ; 2 uses
  %i.fj = getelementptr i8, ptr %i.bo, i64 %i.fi  ; 2 uses
  %i.fk = getelementptr i8, ptr %.184, i64 %i.fi
  br label %vector.body282

vector.body282:                                   ; preds = %vector.body282, %vector.ph280
  %index283 = phi i64 [ 0, %vector.ph280 ], [ %index.next290, %vector.body282 ] ; 2 uses
  %i.fl = shl i64 %index283, 2                    ; 2 uses
  %next.gep284 = getelementptr i8, ptr %i.bo, i64 %i.fl ; 3 uses
  %next.gep285 = getelementptr i8, ptr %.184, i64 %i.fl ; 3 uses
  %i.fm = getelementptr i8, ptr %next.gep285, i64 16 ; 2 uses
  %wide.load286 = load <4 x i32>, ptr %next.gep285, align 4, !tbaa !296, !alias.scope !4336, !noalias !4337
  %wide.load287 = load <4 x i32>, ptr %i.fm, align 4, !tbaa !296, !alias.scope !4336, !noalias !4337
  %i.fn = getelementptr i8, ptr %next.gep284, i64 16 ; 2 uses
  %wide.load288 = load <4 x i32>, ptr %next.gep284, align 4, !tbaa !296, !alias.scope !4337
  %wide.load289 = load <4 x i32>, ptr %i.fn, align 4, !tbaa !296, !alias.scope !4337
  store <4 x i32> %wide.load288, ptr %next.gep285, align 4, !tbaa !296, !alias.scope !4336, !noalias !4337
  store <4 x i32> %wide.load289, ptr %i.fm, align 4, !tbaa !296, !alias.scope !4336, !noalias !4337
  store <4 x i32> %wide.load286, ptr %next.gep284, align 4, !tbaa !296, !alias.scope !4337
  store <4 x i32> %wide.load287, ptr %i.fn, align 4, !tbaa !296, !alias.scope !4337
  %index.next290 = add nuw i64 %index283, 8       ; 2 uses
  %i.fo = icmp eq i64 %index.next290, %n.vec281
  br i1 %i.fo, label %middle.block291, label %vector.body282, !llvm.loop !4326

middle.block291:                                  ; preds = %vector.body282
  %cmp.n292 = icmp eq i64 %i.fb, %n.vec281
  br i1 %cmp.n292, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i.i.preheader345

.lr.ph.i.i.preheader345:                          ; preds = %vector.memcheck276, %.lr.ph.i.i.preheader, %middle.block291
  %.010.i.i.ph = phi ptr [ %i.bo, %vector.memcheck276 ], [ %i.bo, %.lr.ph.i.i.preheader ], [ %i.fj, %middle.block291 ] ; 2 uses
  %.079.i.i.ph = phi ptr [ %.184, %vector.memcheck276 ], [ %.184, %.lr.ph.i.i.preheader ], [ %i.fk, %middle.block291 ] ; 3 uses
  %.079.i.i.ph397 = ptrtoaddr ptr %.079.i.i.ph to i64
  %i.fp = sub i64 %i.ey, %.079.i.i.ph397          ; 2 uses
  %i.fq = lshr i64 %i.fp, 2
  %i.fr = add nuw nsw i64 %i.fq, 1
  %xtraiter398 = and i64 %i.fr, 3                 ; 2 uses
  %lcmp.mod399.not = icmp eq i64 %xtraiter398, 0
  br i1 %lcmp.mod399.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader345, %.lr.ph.i.i.prol
  %.010.i.i.prol = phi ptr [ %i.fv, %.lr.ph.i.i.prol ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader345 ] ; 3 uses
  %.079.i.i.prol = phi ptr [ %i.fu, %.lr.ph.i.i.prol ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader345 ] ; 3 uses
  %prol.iter400 = phi i64 [ %prol.iter400.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader345 ]
  %i.fs = load i32, ptr %.079.i.i.prol, align 4, !tbaa !296
  %i.ft = load i32, ptr %.010.i.i.prol, align 4, !tbaa !296
  store i32 %i.ft, ptr %.079.i.i.prol, align 4, !tbaa !296
  store i32 %i.fs, ptr %.010.i.i.prol, align 4, !tbaa !296
  %i.fu = getelementptr inbounds nuw i8, ptr %.079.i.i.prol, i64 4 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.010.i.i.prol, i64 4 ; 3 uses
  %prol.iter400.next = add i64 %prol.iter400, 1   ; 2 uses
  %prol.iter400.cmp.not = icmp eq i64 %prol.iter400.next, %xtraiter398
  br i1 %prol.iter400.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4327

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader345
  %.lcssa394.unr = phi ptr [ poison, %.lr.ph.i.i.preheader345 ], [ %i.fv, %.lr.ph.i.i.prol ]
  %.010.i.i.unr = phi ptr [ %.010.i.i.ph, %.lr.ph.i.i.preheader345 ], [ %i.fv, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %.079.i.i.ph, %.lr.ph.i.i.preheader345 ], [ %i.fu, %.lr.ph.i.i.prol ]
  %i.fw = icmp ult i64 %i.fp, 12
  br i1 %i.fw, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.gm, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %.079.i.i = phi ptr [ %i.gl, %.lr.ph.i.i ], [ %.079.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.fx = load i32, ptr %.079.i.i, align 4, !tbaa !296
  %i.fy = load i32, ptr %.010.i.i, align 4, !tbaa !296
  store i32 %i.fy, ptr %.079.i.i, align 4, !tbaa !296
  store i32 %i.fx, ptr %.010.i.i, align 4, !tbaa !296
  %i.fz = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.gb = load i32, ptr %i.fz, align 4, !tbaa !296
  %i.gc = load i32, ptr %i.ga, align 4, !tbaa !296
  store i32 %i.gc, ptr %i.fz, align 4, !tbaa !296
  store i32 %i.gb, ptr %i.ga, align 4, !tbaa !296
  %i.gd = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !296
  %i.gg = load i32, ptr %i.ge, align 4, !tbaa !296
  store i32 %i.gg, ptr %i.gd, align 4, !tbaa !296
  store i32 %i.gf, ptr %i.ge, align 4, !tbaa !296
  %i.gh = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 12 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 12 ; 2 uses
  %i.gj = load i32, ptr %i.gh, align 4, !tbaa !296
  %i.gk = load i32, ptr %i.gi, align 4, !tbaa !296
  store i32 %i.gk, ptr %i.gh, align 4, !tbaa !296
  store i32 %i.gj, ptr %i.gi, align 4, !tbaa !296
  %i.gl = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 16 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 16 ; 2 uses
  %.not.i.i52.3 = icmp eq ptr %i.gl, %i.ab
  br i1 %.not.i.i52.3, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i.i, !llvm.loop !4328

_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit: ; preds = %.lr.ph.i49.prol.loopexit, %.lr.ph.i49, %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.lr.ph.i48, %middle.block338, %middle.block291, %middle.block, %bb.w, %bb.v, %bb.t, %bb.s
  %.1 = phi ptr [ %i.ab, %bb.s ], [ %i.ct, %.lr.ph.i48 ], [ %i.gm, %.lr.ph.i.i ], [ %.184, %bb.t ], [ %i.bo, %bb.v ], [ %i.bo, %bb.w ], [ %i.ck, %middle.block ], [ %i.fj, %middle.block291 ], [ %i.dh, %middle.block338 ], [ %.lcssa394.unr, %.lr.ph.i.i.prol.loopexit ], [ %.lcssa393.unr, %.lr.ph.i49.prol.loopexit ], [ %i.et, %.lr.ph.i49 ] ; 2 uses
  %.not.i53 = icmp eq ptr %i.ab, %.080
  %brmerge = or i1 %.not.i53, %.not43
  br i1 %brmerge, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %.0125, i64 %.022.lcssa.i ; 2 uses
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !276
  %i.gp = load i8, ptr %.0125, align 1, !tbaa !276
  store i8 %i.gp, ptr %i.gn, align 1, !tbaa !276
  store i8 %i.go, ptr %.0125, align 1, !tbaa !276
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, %bb.x
  %i.gq = getelementptr inbounds nuw i8, ptr %.0125, i64 1
  %i.gr = icmp ne i64 %.039123, 0
  %.neg = sext i1 %i.gr to i64
  %i.gs = add i64 %.039123, %.neg
  %i.gt = icmp ne i64 %i.aa, 0
  %.neg44 = sext i1 %i.gt to i64
  %i.gu = add i64 %.sroa.speculated, %.neg44
  %i.gv = add i64 %.082122, -1                    ; 2 uses
  %.not = icmp eq i64 %i.gv, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !4329

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit, %bb.a
  %.038.lcssa = phi ptr [ %5, %bb.a ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ]
  ret ptr %.038.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISO_E4typeESR_SR_SR_SR_T2_T3_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat {
bb.a:
  %7 = alloca %"class.boost::movelib::inverse", align 1 ; 4 uses
  %8 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %9 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %16 = alloca %"struct.boost::movelib::antistable.24", align 8 ; 5 uses
  %17 = alloca %"class.boost::movelib::inverse", align 1 ; 4 uses
  %18 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %19 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %20 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %21 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %22 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %23 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %24 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %25 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %26 = alloca %"struct.boost::movelib::antistable.24", align 8 ; 5 uses
  %27 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 9 uses
  %28 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 12 uses
  %29 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 12 uses
  %30 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %31 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %32 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 8 uses
  %33 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 4 uses
  %34 = alloca %"class.boost::movelib::reverse_iterator.27", align 8 ; 2 uses
  %35 = alloca %"class.boost::movelib::reverse_iterator.27", align 8 ; 2 uses
  %36 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %37 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %38 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %i.a = add i64 %5, %4                           ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !453    ; 3 uses
  %i.c = sub i64 0, %4
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !441    ; 8 uses
  %i.f = ptrtoaddr ptr %i.e to i64                ; 3 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.e, i64 %2 ; 2 uses
  %i.h = sub i64 0, %3
  %i.i = getelementptr [4 x i8], ptr %i.e, i64 %i.h ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  store ptr %i.i, ptr %27, align 8, !tbaa !441
  %i.j = mul i64 %2, %i.a
  %i.k = sub i64 0, %i.j
  %i.l = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.k ; 9 uses
  %i.m = icmp eq i64 %5, 0
  %i.n = select i1 %i.m, i64 0, i64 %4            ; 3 uses
  %i.o = add i64 %i.n, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.a) ; 2 uses
  %.not333 = icmp eq i64 %i.a, 0
  br i1 %.not333, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = mul i64 %2, -4
  %i.q = sub i64 0, %2                            ; 2 uses
  %.idx = shl i64 %i.q, 2                         ; 2 uses
  %.not68 = icmp eq i64 %6, 0
  %i.r = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.s = sub i64 0, %i.a
  %.not1.i.i72 = icmp eq i64 %2, 0
  %i.t = add i64 %5, %4
  %.neg591 = sub i64 1, %i.t
  %.neg592 = mul i64 %.neg591, %2
  %i.u = sub i64 %.neg592, %3
  %i.v = shl i64 %i.u, 2
  %scevgep = getelementptr i8, ptr %i.e, i64 %i.v
  %i.w = mul i64 %3, -4
  %i.x = shl i64 %2, 2                            ; 2 uses
  %i.y = sub i64 %i.w, %i.x
  %scevgep448.a = getelementptr i8, ptr %i.e, i64 %i.y
  %i.z = add i64 %3, %2
  %i.aa = shl i64 %i.z, 2
  %.neg593 = sub i64 %i.aa, %i.f
  %i.ab = add i64 %.neg593, -4
  %i.ac = shl i64 %2, 2
  %i.ad = add i64 %3, %2
  %i.ae = shl i64 %i.ad, 2
  %.neg594 = sub i64 %i.ae, %i.f
  %i.af = add i64 %.neg594, -4
  %i.ag = add i64 %2, 4611686018427387903
  %i.ah = and i64 %i.ag, 4611686018427387903      ; 2 uses
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ah, 7
  %stride.check = icmp slt i64 %.idx, 0
  %n.vec = and i64 %i.ai, 9223372036854775800     ; 3 uses
  %i.aj = mul i64 %n.vec, -4                      ; 2 uses
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 3 uses
  %i.ak = phi ptr [ %i.i, %.lr.ph ], [ %i.bj, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 16 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.gv, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 3 uses
  %.0343 = phi i64 [ %5, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %.060342 = phi i8 [ 1, %.lr.ph ], [ %.262, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 8 uses
  %.063341 = phi i64 [ %i.n, %.lr.ph ], [ %i.gt, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 7 uses
  %.0287340 = phi i64 [ %i.a, %.lr.ph ], [ %i.gw, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 5 uses
  %.sroa.0263.0339 = phi ptr [ %i.d, %.lr.ph ], [ %.sroa.0263.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 13 uses
  %.sroa.0252.0338 = phi ptr [ %i.g, %.lr.ph ], [ %.sroa.0252.3, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 15 uses
  %.sroa.0238.0337 = phi ptr [ %i.e, %.lr.ph ], [ %.sroa.0238.2, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 15 uses
  %.sroa.0223.0336 = phi ptr [ %i.i, %.lr.ph ], [ %.sroa.0223.2, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 16 uses
  %.sroa.0213.0334 = phi ptr [ %i.b, %.lr.ph ], [ %i.gr, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 13 uses
  %.sroa.0223.0336457 = ptrtoaddr ptr %.sroa.0223.0336 to i64
  %.sroa.0238.0337458 = ptrtoaddr ptr %.sroa.0238.0337 to i64 ; 2 uses
  %.sroa.0252.0338459 = ptrtoaddr ptr %.sroa.0252.0338 to i64
  %i.al = icmp ult i64 %.063341, %.0
  br i1 %i.al, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread20.i
  %.023.i = phi i64 [ %i.be, %.thread20.i ], [ %.063341, %bb.b ] ; 4 uses
  %.01822.i = phi i64 [ %i.bd, %.thread20.i ], [ 0, %bb.b ] ; 4 uses
  %i.am = mul i64 %.01822.i, %2
  %i.an = xor i64 %i.am, -1
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.an
  %i.ap = mul i64 %.023.i, %2
  %i.aq = xor i64 %i.ap, -1
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.aq
  %i.as = xor i64 %.01822.i, -1
  %i.at = getelementptr inbounds i8, ptr %.sroa.0213.0334, i64 %i.as
  %i.au = xor i64 %.023.i, -1
  %i.av = getelementptr inbounds i8, ptr %.sroa.0213.0334, i64 %i.au
  %i.aw = load i32, ptr %i.ao, align 4, !tbaa !296 ; 2 uses
  %i.ax = load i32, ptr %i.ar, align 4, !tbaa !296 ; 2 uses
  %i.ay = icmp slt i32 %i.aw, %i.ax
  br i1 %i.ay, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.az = icmp slt i32 %i.ax, %i.aw
  br i1 %i.az, label %.thread20.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = load i8, ptr %i.at, align 1, !tbaa !276
  %i.bb = load i8, ptr %i.av, align 1, !tbaa !276
  %i.bc = icmp ult i8 %i.ba, %i.bb
  %cond.fr.i = freeze i1 %i.bc
  br i1 %cond.fr.i, label %.thread.i, label %.thread20.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread20.i

.thread20.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bd = phi i64 [ %.023.i, %.thread.i ], [ %.01822.i, %bb.d ], [ %.01822.i, %bb.c ] ; 2 uses
  %i.be = add nuw i64 %.023.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.be, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit, label %.lr.ph.i, !llvm.loop !84

_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit: ; preds = %.thread20.i, %bb.b
  %.018.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bd, %.thread20.i ] ; 6 uses
  %i.bf = add i64 %.018.lcssa.i, 2
  %i.bg = call i64 @llvm.umax.i64(i64 %.0, i64 %i.bf) ; 2 uses
  %.sroa.speculated276 = call i64 @llvm.umin.i64(i64 %i.bg, i64 %.0287340) ; 4 uses
  %.neg303 = mul i64 %i.p, %.018.lcssa.i          ; 2 uses
  %i.bh = getelementptr i8, ptr %i.ak, i64 %.neg303 ; 11 uses
  %i.bi = getelementptr [4 x i8], ptr %i.bh, i64 %i.q ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ak, i64 %.idx  ; 15 uses
  %.not67 = icmp eq i64 %.0343, 0
  br i1 %.not67, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit
  br i1 %.not68, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bk = getelementptr inbounds i8, ptr %i.bh, i64 -4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !296
  %i.bm = load i32, ptr %i.r, align 4, !tbaa !296
  %i.bn = icmp slt i32 %i.bl, %i.bm
  br i1 %i.bn, label %.thread.loopexit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old70 = trunc nuw i8 %.060342 to i1
  br i1 %.old70, label %.thread.thread, label %bb.h

.thread.thread:                                   ; preds = %bb.g
  %i.bo = icmp eq ptr %.sroa.0223.0336, %.sroa.0252.0338
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  store ptr %i.l, ptr %32, align 8, !tbaa !441
  br i1 %i.bo, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit99, label %bb.ak

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit
  %i.bp = sub i64 0, %.018.lcssa.i
  %i.bq = getelementptr inbounds i8, ptr %.sroa.0213.0334, i64 %i.bp ; 7 uses
  %i.br = load ptr, ptr %0, align 8, !tbaa !453
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %i.s
  %i.bt = icmp eq ptr %.sroa.0263.0339, %i.bs
  br i1 %i.bt, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bu = icmp eq ptr %.sroa.0223.0336, %.sroa.0252.0338 ; 2 uses
  %i.bv = trunc nuw i8 %.060342 to i1
  br i1 %i.bv, label %bb.j, label %.thread414

bb.i:                                             ; preds = %bb.h
  %i.bw = getelementptr inbounds i8, ptr %i.bq, i64 -1
  %i.bx = getelementptr inbounds i8, ptr %.sroa.0263.0339, i64 -1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !276
  %i.bz = load i8, ptr %i.bw, align 1, !tbaa !276
  %i.ca = icmp ult i8 %i.by, %i.bz                ; 7 uses
  %i.cb = zext i1 %i.ca to i8                     ; 4 uses
  %i.cc = icmp eq ptr %.sroa.0223.0336, %.sroa.0252.0338 ; 2 uses
  %i.cd = trunc nuw i8 %.060342 to i1             ; 3 uses
  %i.ce = xor i1 %i.ca, %i.cd
  br i1 %i.ce, label %bb.o, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.cf = phi i1 [ %i.bu, %._crit_edge ], [ %i.cc, %bb.i ]
  %i.cg = phi i1 [ true, %._crit_edge ], [ %i.ca, %bb.i ] ; 3 uses
  %.not1.i.i = icmp eq ptr %.sroa.0238.0337, %.sroa.0223.0336
  %or.cond307 = select i1 %i.cf, i1 true, i1 %.not1.i.i
  br i1 %or.cond307, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.ch = add i64 %.sroa.0238.0337458, -4
  %i.ci = sub i64 %i.ch, %.sroa.0223.0336457      ; 2 uses
  %i.cj = lshr i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check461 = icmp ult i64 %i.ci, 28
  %i.cl = sub i64 %.sroa.0252.0338459, %.sroa.0238.0337458
  %diff.check = icmp ugt i64 %i.cl, -32
  %or.cond595 = select i1 %min.iters.check461, i1 true, i1 %diff.check
  br i1 %or.cond595, label %.lr.ph.i.i.preheader622, label %vector.ph463

vector.ph463:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec464 = and i64 %i.ck, 9223372036854775800  ; 3 uses
  %i.cm = mul i64 %n.vec464, -4                   ; 2 uses
  %i.cn = getelementptr i8, ptr %.sroa.0252.0338, i64 %i.cm ; 2 uses
  %i.co = getelementptr i8, ptr %.sroa.0238.0337, i64 %i.cm
  br label %vector.body465

vector.body465:                                   ; preds = %vector.body465, %vector.ph463
  %index466 = phi i64 [ 0, %vector.ph463 ], [ %index.next471, %vector.body465 ] ; 2 uses
  %i.cp = mul i64 %index466, -4                   ; 2 uses
  %next.gep467 = getelementptr i8, ptr %.sroa.0252.0338, i64 %i.cp ; 2 uses
  %next.gep468 = getelementptr i8, ptr %.sroa.0238.0337, i64 %i.cp ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %next.gep468, i64 -16
  %i.cr = getelementptr inbounds i8, ptr %next.gep468, i64 -32
  %wide.load469 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !296, !noalias !4391
  %wide.load470 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !296, !noalias !4391
  %i.cs = getelementptr inbounds i8, ptr %next.gep467, i64 -16
  %i.ct = getelementptr inbounds i8, ptr %next.gep467, i64 -32
  store <4 x i32> %wide.load469, ptr %i.cs, align 4, !tbaa !296, !noalias !4391
  store <4 x i32> %wide.load470, ptr %i.ct, align 4, !tbaa !296, !noalias !4391
  %index.next471 = add nuw i64 %index466, 8       ; 2 uses
  %i.cu = icmp eq i64 %index.next471, %n.vec464
  br i1 %i.cu, label %middle.block472, label %vector.body465, !llvm.loop !4342

middle.block472:                                  ; preds = %vector.body465
  %cmp.n473 = icmp eq i64 %i.ck, %n.vec464
  br i1 %cmp.n473, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader622

.lr.ph.i.i.preheader622:                          ; preds = %.lr.ph.i.i.preheader, %middle.block472
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.0252.0338, %.lr.ph.i.i.preheader ], [ %i.cn, %middle.block472 ]
  %.ph623 = phi ptr [ %.sroa.0238.0337, %.lr.ph.i.i.preheader ], [ %i.co, %middle.block472 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader622, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.cy, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader622 ]
  %i.cv = phi ptr [ %i.cw, %.lr.ph.i.i ], [ %.ph623, %.lr.ph.i.i.preheader622 ]
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -4 ; 3 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !296, !noalias !4391
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 3 uses
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !296, !noalias !4391
  %.not.i.i = icmp eq ptr %i.cw, %.sroa.0223.0336
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i, !llvm.loop !4343

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit: ; preds = %.lr.ph.i.i, %middle.block472, %bb.j
  %.sroa.0252.1 = phi ptr [ %.sroa.0252.0338, %bb.j ], [ %i.cn, %middle.block472 ], [ %i.cy, %.lr.ph.i.i ] ; 3 uses
  %.not.i = icmp eq i64 %.neg303, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit
  br i1 %.not1.i.i72, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i73.preheader

.lr.ph.i.i73.preheader:                           ; preds = %bb.k
  br i1 %min.iters.check, label %.lr.ph.i.i73.preheader620, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i73.preheader
  %bound0 = icmp ult ptr %scevgep448.a, %i.bh
  %bound1 = icmp ult ptr %i.bi, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.cz = or i1 %found.conflict, %stride.check
  br i1 %i.cz, label %.lr.ph.i.i73.preheader620, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.da = getelementptr i8, ptr %i.bh, i64 %i.aj
  %i.db = getelementptr i8, ptr %i.ak, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dc = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.dc ; 2 uses
  %next.gep449 = getelementptr i8, ptr %i.ak, i64 %i.dc ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %next.gep449, i64 -16 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %next.gep449, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.dd, align 4, !tbaa !296, !alias.scope !4392, !noalias !4393
  %wide.load450 = load <4 x i32>, ptr %i.de, align 4, !tbaa !296, !alias.scope !4392, !noalias !4393
  %i.df = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  %wide.load451 = load <4 x i32>, ptr %i.df, align 4, !tbaa !296, !alias.scope !4394, !noalias !4395
  %wide.load452 = load <4 x i32>, ptr %i.dg, align 4, !tbaa !296, !alias.scope !4394, !noalias !4395
  store <4 x i32> %wide.load451, ptr %i.dd, align 4, !tbaa !296, !alias.scope !4392, !noalias !4393
  store <4 x i32> %wide.load452, ptr %i.de, align 4, !tbaa !296, !alias.scope !4392, !noalias !4393
  store <4 x i32> %wide.load, ptr %i.df, align 4, !tbaa !296, !alias.scope !4394, !noalias !4395
  store <4 x i32> %wide.load450, ptr %i.dg, align 4, !tbaa !296, !alias.scope !4394, !noalias !4395
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !4349

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i73.preheader620

.lr.ph.i.i73.preheader620:                        ; preds = %vector.memcheck, %.lr.ph.i.i73.preheader, %middle.block
  %.sroa.04.0.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i73.preheader ], [ %i.da, %middle.block ]
  %.ph621 = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i.i73.preheader ], [ %i.db, %middle.block ]
  br label %.lr.ph.i.i73

.lr.ph.i.i73:                                     ; preds = %.lr.ph.i.i73.preheader620, %.lr.ph.i.i73
  %.sroa.04.0.i = phi ptr [ %i.dk, %.lr.ph.i.i73 ], [ %.sroa.04.0.i.ph, %.lr.ph.i.i73.preheader620 ]
  %i.di = phi ptr [ %i.dj, %.lr.ph.i.i73 ], [ %.ph621, %.lr.ph.i.i73.preheader620 ]
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -4 ; 4 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.04.0.i, i64 -4 ; 3 uses
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !296, !noalias !4395
  %i.dm = load i32, ptr %i.dk, align 4, !tbaa !296, !noalias !4395
  store i32 %i.dm, ptr %i.dj, align 4, !tbaa !296, !noalias !4395
  store i32 %i.dl, ptr %i.dk, align 4, !tbaa !296, !noalias !4395
  %.not.i.i74 = icmp eq ptr %i.dj, %i.bj
  br i1 %.not.i.i74, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i73, !llvm.loop !4350

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i73, %middle.block, %bb.k
  %.not9.i = icmp eq i64 %.018.lcssa.i, 0
  br i1 %.not9.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.dn = getelementptr inbounds i8, ptr %i.bq, i64 -1 ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.0213.0334, i64 -1 ; 2 uses
  %i.dp = load i8, ptr %i.dn, align 1, !tbaa !276
  %i.dq = load i8, ptr %i.do, align 1, !tbaa !276
  store i8 %i.dq, ptr %i.dn, align 1, !tbaa !276
  store i8 %i.dp, ptr %i.do, align 1, !tbaa !276
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.dr = icmp eq ptr %i.bq, %.sroa.0263.0339
  br i1 %i.dr, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ds = icmp eq ptr %.sroa.0263.0339, %.sroa.0213.0334
  %spec.select = select i1 %i.ds, ptr %i.bq, ptr %.sroa.0263.0339
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit

bb.o:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  br i1 %i.cc, label %bb.p, label %bb.s

.thread414:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  br i1 %i.bu, label %.thread415, label %.thread416

.thread416:                                       ; preds = %.thread414
  store ptr %.sroa.0238.0337, ptr %28, align 8, !tbaa !441
  store ptr %.sroa.0223.0336, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %i.dt = ptrtoint ptr %.sroa.0238.0337 to i64
  %i.du = ptrtoint ptr %.sroa.0223.0336 to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 2
  %i.dx = sub nsw i64 0, %i.dw
  %i.dy = getelementptr inbounds [4 x i8], ptr %.sroa.0252.0338, i64 %i.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  br label %bb.u

.thread415:                                       ; preds = %.thread414
  %i.dz = ptrtoint ptr %.sroa.0238.0337 to i64
  %i.ea = ptrtoint ptr %.sroa.0223.0336 to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = getelementptr inbounds i8, ptr %i.ak, i64 %i.eb ; 2 uses
  store ptr %i.ec, ptr %28, align 8, !tbaa !441
  store ptr %i.ec, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ed = ptrtoint ptr %.sroa.0238.0337 to i64
  %i.ee = ptrtoint ptr %.sroa.0223.0336 to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = getelementptr inbounds i8, ptr %i.ak, i64 %i.ef ; 2 uses
  store ptr %i.eg, ptr %28, align 8, !tbaa !441
  store ptr %i.eg, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  br i1 %i.cd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr %.sroa.0238.0337, ptr %18, align 8, !tbaa !441, !noalias !4396
  store ptr %.sroa.0223.0336, ptr %19, align 8, !tbaa !441, !noalias !4396
  store ptr %i.bj, ptr %20, align 8, !tbaa !441, !noalias !4396
  store ptr %i.bh, ptr %21, align 8, !tbaa !441, !noalias !4396
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %30, ptr noundef nonnull align 8 dead_on_return %18, ptr noundef nonnull align 8 dead_on_return %19, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %20, ptr noundef nonnull align 8 dead_on_return %21, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit

bb.r:                                             ; preds = %.thread415, %bb.p
  %i.eh = phi i8 [ 1, %.thread415 ], [ %i.cb, %bb.p ]
  %i.ei = phi i1 [ true, %.thread415 ], [ %i.ca, %bb.p ]
  store ptr %.sroa.0238.0337, ptr %22, align 8, !tbaa !441, !noalias !4396
  store ptr %.sroa.0223.0336, ptr %23, align 8, !tbaa !441, !noalias !4396
  store ptr %i.bj, ptr %24, align 8, !tbaa !441, !noalias !4396
  store ptr %i.bh, ptr %25, align 8, !tbaa !441, !noalias !4396
  store ptr %17, ptr %26, align 8, !tbaa !455, !noalias !4396
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7move_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %30, ptr noundef nonnull align 8 dead_on_return %22, ptr noundef nonnull align 8 dead_on_return %23, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %24, ptr noundef nonnull align 8 dead_on_return %25, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dead_on_return %26)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit: ; preds = %bb.q, %bb.r
  %i.ej = phi i8 [ %i.cb, %bb.q ], [ %i.eh, %bb.r ]
  %i.ek = phi i1 [ %i.ca, %bb.q ], [ %i.ei, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  store ptr %.sroa.0238.0337, ptr %28, align 8, !tbaa !441
  store ptr %.sroa.0223.0336, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %i.el = ptrtoint ptr %.sroa.0238.0337 to i64
  %i.em = ptrtoint ptr %.sroa.0223.0336 to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = ashr exact i64 %i.en, 2
  %i.ep = sub nsw i64 0, %i.eo
  %i.eq = getelementptr inbounds [4 x i8], ptr %.sroa.0252.0338, i64 %i.ep ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  br i1 %i.cd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store ptr %.sroa.0252.0338, ptr %8, align 8, !tbaa !441, !noalias !4397
  store ptr %i.eq, ptr %9, align 8, !tbaa !441, !noalias !4397
  store ptr %i.bj, ptr %10, align 8, !tbaa !441, !noalias !4397
  store ptr %i.bh, ptr %11, align 8, !tbaa !441, !noalias !4397
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %31, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75

bb.u:                                             ; preds = %.thread416, %bb.s
  %i.er = phi ptr [ %i.dy, %.thread416 ], [ %i.eq, %bb.s ]
  %i.es = phi i8 [ 1, %.thread416 ], [ %i.cb, %bb.s ]
  %i.et = phi i1 [ true, %.thread416 ], [ %i.ca, %bb.s ]
  store ptr %.sroa.0252.0338, ptr %12, align 8, !tbaa !441, !noalias !4397
  store ptr %i.er, ptr %13, align 8, !tbaa !441, !noalias !4397
  store ptr %i.bj, ptr %14, align 8, !tbaa !441, !noalias !4397
  store ptr %i.bh, ptr %15, align 8, !tbaa !441, !noalias !4397
  store ptr %7, ptr %16, align 8, !tbaa !455, !noalias !4397
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7move_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %31, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dead_on_return %16)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75: ; preds = %bb.t, %bb.u
  %i.eu = phi i8 [ %i.cb, %bb.t ], [ %i.es, %bb.u ]
  %i.ev = phi i1 [ %i.ca, %bb.t ], [ %i.et, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  br label %bb.v

bb.v:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit
  %i.ew = phi i1 [ %i.ev, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75 ], [ %i.ek, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit ]
  %i.ex = phi i8 [ %i.eu, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75 ], [ %i.ej, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit ]
  %i.ey = load ptr, ptr %27, align 8, !tbaa !441  ; 11 uses
  %i.ez = ptrtoint ptr %i.ey to i64               ; 4 uses
  %i.fa = ptrtoint ptr %i.bj to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = getelementptr inbounds i8, ptr %i.bi, i64 %i.fb ; 6 uses
  %.not.i76 = icmp eq ptr %i.ey, %i.fc
  br i1 %.not.i76, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not1.i.i77 = icmp eq ptr %i.ey, %i.bj
  br i1 %.not1.i.i77, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78.preheader

.lr.ph.i.i78.preheader:                           ; preds = %bb.w
  %i.fd = mul i64 %indvar, %i.ac
  %i.fe = add i64 %i.af, %i.fd
  %i.ff = add i64 %i.fe, %i.ez                    ; 2 uses
  %i.fg = lshr i64 %i.ff, 2
  %i.fh = add nuw nsw i64 %i.fg, 1                ; 2 uses
  %min.iters.check485 = icmp ult i64 %i.ff, 44
  br i1 %min.iters.check485, label %.lr.ph.i.i78.preheader624, label %vector.memcheck486

vector.memcheck486:                               ; preds = %.lr.ph.i.i78.preheader
  %i.fi = mul i64 %indvar, %i.x
  %i.fj = add i64 %i.ab, %i.fi
  %i.fk = add i64 %i.fj, %i.ez
  %i.fl = and i64 %i.fk, -4                       ; 2 uses
  %i.fm = sub nuw nsw i64 -4, %i.fl
  %i.fn = getelementptr i8, ptr %i.ey, i64 %i.fm
  %i.fo = mul i64 %.018.lcssa.i, %2
  %i.fp = shl i64 %i.fo, 2
  %39 = add i64 %i.fp, %i.fl
  %i.fq = add i64 %39, %i.f
  %reass.sub = sub i64 %i.ez, %i.fq
  %40 = getelementptr i8, ptr %i.e, i64 %reass.sub
  %i.fr = getelementptr i8, ptr %40, i64 -4
  %bound0487 = icmp ult ptr %i.fn, %i.fc
  %bound1488 = icmp ult ptr %i.fr, %i.ey
  %found.conflict489 = and i1 %bound0487, %bound1488
  br i1 %found.conflict489, label %.lr.ph.i.i78.preheader624, label %vector.ph490

vector.ph490:                                     ; preds = %vector.memcheck486
  %n.vec491 = and i64 %i.fh, 9223372036854775800  ; 3 uses
  %i.fs = mul i64 %n.vec491, -4                   ; 2 uses
  %i.ft = getelementptr i8, ptr %i.fc, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.ey, i64 %i.fs
  br label %vector.body492

vector.body492:                                   ; preds = %vector.body492, %vector.ph490
  %index493 = phi i64 [ 0, %vector.ph490 ], [ %index.next500, %vector.body492 ] ; 2 uses
  %i.fv = mul i64 %index493, -4                   ; 2 uses
  %next.gep494 = getelementptr i8, ptr %i.fc, i64 %i.fv ; 2 uses
  %next.gep495 = getelementptr i8, ptr %i.ey, i64 %i.fv ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %next.gep495, i64 -16 ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %next.gep495, i64 -32 ; 2 uses
  %wide.load496 = load <4 x i32>, ptr %i.fw, align 4, !tbaa !296, !alias.scope !4398, !noalias !4399
  %wide.load497 = load <4 x i32>, ptr %i.fx, align 4, !tbaa !296, !alias.scope !4398, !noalias !4399
  %i.fy = getelementptr inbounds i8, ptr %next.gep494, i64 -16 ; 2 uses
  %i.fz = getelementptr inbounds i8, ptr %next.gep494, i64 -32 ; 2 uses
  %wide.load498 = load <4 x i32>, ptr %i.fy, align 4, !tbaa !296, !alias.scope !4400, !noalias !4401
  %wide.load499 = load <4 x i32>, ptr %i.fz, align 4, !tbaa !296, !alias.scope !4400, !noalias !4401
  store <4 x i32> %wide.load498, ptr %i.fw, align 4, !tbaa !296, !alias.scope !4398, !noalias !4399
  store <4 x i32> %wide.load499, ptr %i.fx, align 4, !tbaa !296, !alias.scope !4398, !noalias !4399
  store <4 x i32> %wide.load496, ptr %i.fy, align 4, !tbaa !296, !alias.scope !4400, !noalias !4401
  store <4 x i32> %wide.load497, ptr %i.fz, align 4, !tbaa !296, !alias.scope !4400, !noalias !4401
  %index.next500 = add nuw i64 %index493, 8       ; 2 uses
  %i.ga = icmp eq i64 %index.next500, %n.vec491
  br i1 %i.ga, label %middle.block501, label %vector.body492, !llvm.loop !4360

middle.block501:                                  ; preds = %vector.body492
  %cmp.n502 = icmp eq i64 %i.fh, %n.vec491
  br i1 %cmp.n502, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78.preheader624

.lr.ph.i.i78.preheader624:                        ; preds = %vector.memcheck486, %.lr.ph.i.i78.preheader, %middle.block501
  %.sroa.04.0.i79.ph = phi ptr [ %i.fc, %vector.memcheck486 ], [ %i.fc, %.lr.ph.i.i78.preheader ], [ %i.ft, %middle.block501 ]
  %.ph625 = phi ptr [ %i.ey, %vector.memcheck486 ], [ %i.ey, %.lr.ph.i.i78.preheader ], [ %i.fu, %middle.block501 ]
  br label %.lr.ph.i.i78

.lr.ph.i.i78:                                     ; preds = %.lr.ph.i.i78.preheader624, %.lr.ph.i.i78
  %.sroa.04.0.i79 = phi ptr [ %i.gd, %.lr.ph.i.i78 ], [ %.sroa.04.0.i79.ph, %.lr.ph.i.i78.preheader624 ]
  %i.gb = phi ptr [ %i.gc, %.lr.ph.i.i78 ], [ %.ph625, %.lr.ph.i.i78.preheader624 ]
  %i.gc = getelementptr inbounds i8, ptr %i.gb, i64 -4 ; 4 uses
  %i.gd = getelementptr inbounds i8, ptr %.sroa.04.0.i79, i64 -4 ; 3 uses
  %i.ge = load i32, ptr %i.gc, align 4, !tbaa !296, !noalias !4401
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !296, !noalias !4401
  store i32 %i.gf, ptr %i.gc, align 4, !tbaa !296, !noalias !4401
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !296, !noalias !4401
  %.not.i.i80 = icmp eq ptr %i.gc, %i.bj
  br i1 %.not.i.i80, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78, !llvm.loop !4361

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81: ; preds = %.lr.ph.i.i78, %middle.block501, %bb.w
  %.not9.i82 = icmp eq i64 %.018.lcssa.i, 0
  br i1 %.not9.i82, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81
  %i.gg = getelementptr inbounds i8, ptr %i.bq, i64 -1 ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %.sroa.0213.0334, i64 -1 ; 2 uses
  %i.gi = load i8, ptr %i.gg, align 1, !tbaa !276
  %i.gj = load i8, ptr %i.gh, align 1, !tbaa !276
  store i8 %i.gj, ptr %i.gg, align 1, !tbaa !276
  store i8 %i.gi, ptr %i.gh, align 1, !tbaa !276
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81
  %i.gk = icmp eq ptr %i.bq, %.sroa.0263.0339
  br i1 %i.gk, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gl = icmp eq ptr %.sroa.0263.0339, %.sroa.0213.0334
  %spec.select301 = select i1 %i.gl, ptr %i.bq, ptr %.sroa.0263.0339
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86: ; preds = %bb.z, %bb.y, %bb.v
  %.sroa.0263.5 = phi ptr [ %.sroa.0263.0339, %bb.v ], [ %spec.select301, %bb.z ], [ %.sroa.0213.0334, %bb.y ]
  %i.gm = load ptr, ptr %28, align 8, !tbaa !441  ; 2 uses
  %i.gn = load ptr, ptr %29, align 8, !tbaa !441  ; 3 uses
  %.not304 = icmp eq ptr %i.gm, %i.gn
  br i1 %.not304, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86
  %i.go = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %2
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86, %bb.aa
  %.sroa.0223.1 = phi ptr [ %i.bj, %bb.aa ], [ %i.gn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86 ]
  %.sroa.0238.1 = phi ptr [ %i.ey, %bb.aa ], [ %i.gm, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86 ]
  %.sroa.0252.2 = phi ptr [ %i.go, %bb.aa ], [ %i.gn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86 ]
  %.161 = phi i8 [ %i.ex, %bb.aa ], [ %.060342, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit: ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit, %bb.m, %bb.n, %bb.ab
  %i.gp = phi i1 [ %i.ew, %bb.ab ], [ %i.cg, %bb.n ], [ %i.cg, %bb.m ], [ %i.cg, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ]
  %.sroa.0223.2 = phi ptr [ %.sroa.0223.1, %bb.ab ], [ %i.bj, %bb.n ], [ %i.bj, %bb.m ], [ %i.bj, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ] ; 2 uses
  %.sroa.0238.2 = phi ptr [ %.sroa.0238.1, %bb.ab ], [ %i.ak, %bb.n ], [ %i.ak, %bb.m ], [ %i.ak, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ] ; 2 uses
  %.sroa.0252.3 = phi ptr [ %.sroa.0252.2, %bb.ab ], [ %.sroa.0252.1, %bb.n ], [ %.sroa.0252.1, %bb.m ], [ %.sroa.0252.1, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ] ; 2 uses
  %.sroa.0263.1 = phi ptr [ %.sroa.0263.5, %bb.ab ], [ %spec.select, %bb.n ], [ %.sroa.0213.0334, %bb.m ], [ %.sroa.0263.0339, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ] ; 2 uses
  %.262 = phi i8 [ %.161, %bb.ab ], [ %.060342, %bb.n ], [ %.060342, %bb.m ], [ %.060342, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ] ; 2 uses
  %not. = xor i1 %i.gp, true
  %i.gq = sext i1 %not. to i64
  %.1 = add i64 %.0343, %i.gq
  store ptr %i.bj, ptr %27, align 8, !tbaa !441
  %i.gr = getelementptr inbounds i8, ptr %.sroa.0213.0334, i64 -1 ; 2 uses
  %i.gs = icmp ne i64 %.063341, 0
  %.neg = sext i1 %i.gs to i64
  %i.gt = add i64 %.063341, %.neg                 ; 2 uses
  %i.gu = icmp ne i64 %i.bg, 0
  %.neg69 = sext i1 %i.gu to i64
  %i.gv = add i64 %.sroa.speculated276, %.neg69   ; 2 uses
  %i.gw = add i64 %.0287340, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gw, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !4362

.thread.loopexit:                                 ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit
  %i.gx = phi ptr [ %i.bj, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %i.ak, %bb.f ]
  %.4 = phi i64 [ %i.gv, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.sroa.speculated276, %bb.f ]
  %.sroa.0213.0.lcssa.ph = phi ptr [ %i.gr, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.sroa.0213.0334, %bb.f ]
  %.sroa.0223.0.lcssa.ph = phi ptr [ %.sroa.0223.2, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.sroa.0223.0336, %bb.f ]
  %.sroa.0238.0.lcssa.ph = phi ptr [ %.sroa.0238.2, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.sroa.0238.0337, %bb.f ]
  %.sroa.0252.0.lcssa.ph = phi ptr [ %.sroa.0252.3, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.sroa.0252.0338, %bb.f ]
  %.sroa.0263.0.lcssa.ph = phi ptr [ %.sroa.0263.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.sroa.0263.0339, %bb.f ]
  %.0287.lcssa.ph = phi i64 [ 0, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.0287340, %bb.f ]
  %.063.lcssa.ph = phi i64 [ %i.gt, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.063341, %bb.f ]
  %.060.lcssa.ph = phi i8 [ %.262, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.060342, %bb.f ]
  %i.gy = trunc nuw i8 %.060.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.gz = phi ptr [ %i.i, %bb.a ], [ %i.gx, %.thread.loopexit ] ; 8 uses
  %.1391 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.sroa.0213.0.lcssa = phi ptr [ %i.b, %bb.a ], [ %.sroa.0213.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.sroa.0223.0.lcssa = phi ptr [ %i.i, %bb.a ], [ %.sroa.0223.0.lcssa.ph, %.thread.loopexit ] ; 8 uses
  %.sroa.0238.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %.sroa.0238.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.sroa.0252.0.lcssa = phi ptr [ %i.g, %bb.a ], [ %.sroa.0252.0.lcssa.ph, %.thread.loopexit ] ; 4 uses
  %.sroa.0263.0.lcssa = phi ptr [ %i.d, %bb.a ], [ %.sroa.0263.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0287.lcssa = phi i64 [ 0, %bb.a ], [ %.0287.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.063.lcssa = phi i64 [ %i.n, %bb.a ], [ %.063.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.060.lcssa = phi i1 [ true, %bb.a ], [ %i.gy, %.thread.loopexit ]
  %i.ha = ptrtoaddr ptr %i.gz to i64
  %i.hb = icmp eq ptr %.sroa.0223.0.lcssa, %.sroa.0252.0.lcssa ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  store ptr %i.l, ptr %32, align 8, !tbaa !441
  %.neg306 = mul i64 %6, -4                       ; 2 uses
  %i.hc = getelementptr inbounds i8, ptr %i.l, i64 %.neg306 ; 7 uses
  %i.hd = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.hd, i1 %.060.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.hb, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not1.i = icmp eq ptr %.sroa.0238.0.lcssa, %.sroa.0223.0.lcssa
  br i1 %.not1.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %bb.ad
  %i.he = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !296, !noalias !4402
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i87
  %i.hg = phi ptr [ %.sroa.0238.0.lcssa, %.lr.ph.i87 ], [ %i.hh, %bb.af ] ; 2 uses
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 -4 ; 4 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !296, !noalias !4402
  %i.hj = icmp slt i32 %i.hi, %i.hf
  br i1 %i.hj, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.i88 = icmp eq ptr %i.hh, %.sroa.0223.0.lcssa
  br i1 %.not.i88, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !81

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.lcssa.i = phi ptr [ %.sroa.0238.0.lcssa, %bb.ad ], [ %i.hg, %bb.ae ], [ %i.hh, %bb.af ] ; 5 uses
  %i.hk = ptrtoint ptr %.lcssa.i to i64           ; 2 uses
  %i.hl = ptrtoint ptr %.sroa.0223.0.lcssa to i64 ; 3 uses
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = getelementptr inbounds i8, ptr %i.gz, i64 %i.hm ; 5 uses
  %.not1.i.i89 = icmp eq ptr %.lcssa.i, %.sroa.0223.0.lcssa
  br i1 %.not1.i.i89, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit93, label %.lr.ph.i.i90.preheader

.lr.ph.i.i90.preheader:                           ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit
  %i.ho = add i64 %i.hk, -4
  %i.hp = sub i64 %i.ho, %i.hl                    ; 2 uses
  %i.hq = lshr i64 %i.hp, 2
  %i.hr = add nuw nsw i64 %i.hq, 1                ; 2 uses
  %min.iters.check532 = icmp ult i64 %i.hp, 44
  %i.hs = sub i64 %i.ha, %i.hl
  %diff.check534 = icmp ugt i64 %i.hs, -32
  %or.cond596 = select i1 %min.iters.check532, i1 true, i1 %diff.check534
  br i1 %or.cond596, label %.lr.ph.i.i90.preheader614, label %vector.ph535

vector.ph535:                                     ; preds = %.lr.ph.i.i90.preheader
  %n.vec536 = and i64 %i.hr, 9223372036854775800  ; 3 uses
  %i.ht = mul i64 %n.vec536, -4                   ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISO_E4typeESR_SR_SR_SR_T2_T3_:bb.a
vector.ph516:                                     ; preds = %.lr.ph.i.i101.preheader
  %n.vec517 = and i64 %i.jn, 9223372036854775800  ; 3 uses
  %i.jp = mul i64 %n.vec517, -4                   ; 2 uses
  %i.jq = getelementptr i8, ptr %.sroa.0252.0324, i64 %i.jp ; 2 uses
  %i.jr = getelementptr i8, ptr %.sroa.0238.0326, i64 %i.jp
  br label %vector.body518

vector.body518:                                   ; preds = %vector.body518, %vector.ph516
  %index519 = phi i64 [ 0, %vector.ph516 ], [ %index.next524, %vector.body518 ] ; 2 uses
  %i.js = mul i64 %index519, -4                   ; 2 uses
  %next.gep520 = getelementptr i8, ptr %.sroa.0252.0324, i64 %i.js ; 2 uses
  %next.gep521 = getelementptr i8, ptr %.sroa.0238.0326, i64 %i.js ; 2 uses
  %i.jt = getelementptr inbounds i8, ptr %next.gep521, i64 -16
  %i.ju = getelementptr inbounds i8, ptr %next.gep521, i64 -32
  %wide.load522 = load <4 x i32>, ptr %i.jt, align 4, !tbaa !296, !noalias !4406
  %wide.load523 = load <4 x i32>, ptr %i.ju, align 4, !tbaa !296, !noalias !4406
  %i.jv = getelementptr inbounds i8, ptr %next.gep520, i64 -16
  %i.jw = getelementptr inbounds i8, ptr %next.gep520, i64 -32
  store <4 x i32> %wide.load522, ptr %i.jv, align 4, !tbaa !296, !noalias !4406
  store <4 x i32> %wide.load523, ptr %i.jw, align 4, !tbaa !296, !noalias !4406
  %index.next524 = add nuw i64 %index519, 8       ; 2 uses
  %i.jx = icmp eq i64 %index.next524, %n.vec517
  br i1 %i.jx, label %middle.block525, label %vector.body518, !llvm.loop !4383

middle.block525:                                  ; preds = %vector.body518
  %cmp.n526 = icmp eq i64 %i.jn, %n.vec517
  br i1 %cmp.n526, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit99, label %.lr.ph.i.i101.preheader616

.lr.ph.i.i101.preheader616:                       ; preds = %.lr.ph.i.i101.preheader, %middle.block525
  %.sroa.0.0.i102.ph = phi ptr [ %.sroa.0252.0324, %.lr.ph.i.i101.preheader ], [ %i.jq, %middle.block525 ]
  %.ph617 = phi ptr [ %.sroa.0238.0326, %.lr.ph.i.i101.preheader ], [ %i.jr, %middle.block525 ]
  br label %.lr.ph.i.i101

.lr.ph.i.i101:                                    ; preds = %.lr.ph.i.i101.preheader616, %.lr.ph.i.i101
  %.sroa.0.0.i102 = phi ptr [ %i.kb, %.lr.ph.i.i101 ], [ %.sroa.0.0.i102.ph, %.lr.ph.i.i101.preheader616 ]
  %i.jy = phi ptr [ %i.jz, %.lr.ph.i.i101 ], [ %.ph617, %.lr.ph.i.i101.preheader616 ]
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 -4 ; 3 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !296, !noalias !4406
  %i.kb = getelementptr inbounds i8, ptr %.sroa.0.0.i102, i64 -4 ; 3 uses
  store i32 %i.ka, ptr %i.kb, align 4, !tbaa !296, !noalias !4406
  %.not.i.i103 = icmp eq ptr %i.jz, %.sroa.0223.0329
  br i1 %.not.i.i103, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit99, label %.lr.ph.i.i101, !llvm.loop !4384

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit99: ; preds = %.lr.ph.i.i101, %.lr.ph.i.i96, %middle.block525, %middle.block568, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit, %bb.aj
  %i.kc = phi ptr [ %i.gz, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %i.ak, %.thread.thread ], [ %i.gz, %bb.aj ], [ %i.ji, %bb.ak ], [ %i.gz, %middle.block568 ], [ %i.ji, %middle.block525 ], [ %i.gz, %.lr.ph.i.i96 ], [ %i.ji, %.lr.ph.i.i101 ]
  %.3 = phi i64 [ %.1391, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.speculated276, %.thread.thread ], [ %.1391, %bb.aj ], [ %.2, %bb.ak ], [ %.1391, %middle.block568 ], [ %.2, %middle.block525 ], [ %.1391, %.lr.ph.i.i96 ], [ %.2, %.lr.ph.i.i101 ]
  %.sroa.0213.0332 = phi ptr [ %.sroa.0213.0.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.0213.0334, %.thread.thread ], [ %.sroa.0213.0.lcssa, %bb.aj ], [ %.sroa.0213.0331, %bb.ak ], [ %.sroa.0213.0.lcssa, %middle.block568 ], [ %.sroa.0213.0331, %middle.block525 ], [ %.sroa.0213.0.lcssa, %.lr.ph.i.i96 ], [ %.sroa.0213.0331, %.lr.ph.i.i101 ]
  %.sroa.0263.0322 = phi ptr [ %.sroa.0263.0.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.0263.0339, %.thread.thread ], [ %.sroa.0263.0.lcssa, %bb.aj ], [ %.sroa.0263.0321, %bb.ak ], [ %.sroa.0263.0.lcssa, %middle.block568 ], [ %.sroa.0263.0321, %middle.block525 ], [ %.sroa.0263.0.lcssa, %.lr.ph.i.i96 ], [ %.sroa.0263.0321, %.lr.ph.i.i101 ]
  %.0287319 = phi i64 [ %.0287.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.0287340, %.thread.thread ], [ %.0287.lcssa, %bb.aj ], [ %.0287318, %bb.ak ], [ %.0287.lcssa, %middle.block568 ], [ %.0287318, %middle.block525 ], [ %.0287.lcssa, %.lr.ph.i.i96 ], [ %.0287318, %.lr.ph.i.i101 ]
  %.063316 = phi i64 [ %.063.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.063341, %.thread.thread ], [ %.063.lcssa, %bb.aj ], [ %.063315, %bb.ak ], [ %.063.lcssa, %middle.block568 ], [ %.063315, %middle.block525 ], [ %.063.lcssa, %.lr.ph.i.i96 ], [ %.063315, %.lr.ph.i.i101 ]
  %i.kd = phi ptr [ %i.hc, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %i.l, %.thread.thread ], [ %i.hc, %bb.aj ], [ %i.jj, %bb.ak ], [ %i.hc, %middle.block568 ], [ %i.jj, %middle.block525 ], [ %i.hc, %.lr.ph.i.i96 ], [ %i.jj, %.lr.ph.i.i101 ] ; 4 uses
  %.sroa.0252.7 = phi ptr [ %.sroa.0121.1, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.0252.0338, %.thread.thread ], [ %.sroa.0252.0.lcssa, %bb.aj ], [ %.sroa.0252.0324, %bb.ak ], [ %i.iw, %middle.block568 ], [ %i.jq, %middle.block525 ], [ %i.jh, %.lr.ph.i.i96 ], [ %i.kb, %.lr.ph.i.i101 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  store ptr %.sroa.0213.0332, ptr %34, align 8, !tbaa !453
  store ptr %.sroa.0263.0322, ptr %35, align 8, !tbaa !453
  store ptr %i.kc, ptr %36, align 8, !tbaa !441
  store ptr %i.kd, ptr %37, align 8, !tbaa !441
  store ptr %.sroa.0252.7, ptr %38, align 8, !tbaa !441
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEESA_SA_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET3_T_SN_T0_T1_RT2_SQ_SM_NS0_9iter_sizeISP_E4typeESU_SU_SU_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %33, ptr noundef nonnull align 8 dead_on_return %34, ptr noundef nonnull align 8 dead_on_return %35, ptr noundef nonnull align 8 dead_on_return %36, ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dead_on_return %37, ptr noundef nonnull align 8 dead_on_return %38, i64 noundef %2, i64 noundef %.0287319, i64 noundef %.063316, i64 noundef %.3, i1 noundef zeroext false)
  %i.ke = load ptr, ptr %33, align 8, !tbaa !441  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  %i.kf = load ptr, ptr %32, align 8, !tbaa !441  ; 5 uses
  %.not1.i.i105 = icmp eq ptr %i.kf, %i.kd
  br i1 %.not1.i.i105, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit109, label %.lr.ph.i.i106.preheader

.lr.ph.i.i106.preheader:                          ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit99
  %i.kg = ptrtoaddr ptr %i.kf to i64              ; 2 uses
  %i.kh = ptrtoaddr ptr %i.ke to i64
  %i.ki = ptrtoaddr ptr %i.kd to i64
  %i.kj = add i64 %i.kg, -4
  %i.kk = sub i64 %i.kj, %i.ki                    ; 2 uses
  %i.kl = lshr i64 %i.kk, 2
  %i.km = add nuw nsw i64 %i.kl, 1                ; 2 uses
  %min.iters.check575 = icmp ult i64 %i.kk, 44
  %i.kn = sub i64 %i.kh, %i.kg
  %diff.check577 = icmp ugt i64 %i.kn, -32
  %or.cond599 = select i1 %min.iters.check575, i1 true, i1 %diff.check577
  br i1 %or.cond599, label %.lr.ph.i.i106.preheader600, label %vector.ph578

vector.ph578:                                     ; preds = %.lr.ph.i.i106.preheader
  %n.vec579 = and i64 %i.km, 9223372036854775800  ; 3 uses
  %i.ko = mul i64 %n.vec579, -4                   ; 2 uses
  %i.kp = getelementptr i8, ptr %i.ke, i64 %i.ko
  %i.kq = getelementptr i8, ptr %i.kf, i64 %i.ko
  br label %vector.body580

vector.body580:                                   ; preds = %vector.body580, %vector.ph578
  %index581 = phi i64 [ 0, %vector.ph578 ], [ %index.next586, %vector.body580 ] ; 2 uses
  %i.kr = mul i64 %index581, -4                   ; 2 uses
  %next.gep582 = getelementptr i8, ptr %i.ke, i64 %i.kr ; 2 uses
  %next.gep583 = getelementptr i8, ptr %i.kf, i64 %i.kr ; 2 uses
  %i.ks = getelementptr inbounds i8, ptr %next.gep583, i64 -16
  %i.kt = getelementptr inbounds i8, ptr %next.gep583, i64 -32
  %wide.load584 = load <4 x i32>, ptr %i.ks, align 4, !tbaa !296, !noalias !4407
  %wide.load585 = load <4 x i32>, ptr %i.kt, align 4, !tbaa !296, !noalias !4407
  %i.ku = getelementptr inbounds i8, ptr %next.gep582, i64 -16
  %i.kv = getelementptr inbounds i8, ptr %next.gep582, i64 -32
  store <4 x i32> %wide.load584, ptr %i.ku, align 4, !tbaa !296, !noalias !4407
  store <4 x i32> %wide.load585, ptr %i.kv, align 4, !tbaa !296, !noalias !4407
  %index.next586 = add nuw i64 %index581, 8       ; 2 uses
  %i.kw = icmp eq i64 %index.next586, %n.vec579
  br i1 %i.kw, label %middle.block587, label %vector.body580, !llvm.loop !4389

middle.block587:                                  ; preds = %vector.body580
  %cmp.n588 = icmp eq i64 %i.km, %n.vec579
  br i1 %cmp.n588, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit109, label %.lr.ph.i.i106.preheader600

.lr.ph.i.i106.preheader600:                       ; preds = %.lr.ph.i.i106.preheader, %middle.block587
  %.sroa.0.0.i107.ph = phi ptr [ %i.ke, %.lr.ph.i.i106.preheader ], [ %i.kp, %middle.block587 ]
  %.ph = phi ptr [ %i.kf, %.lr.ph.i.i106.preheader ], [ %i.kq, %middle.block587 ]
  br label %.lr.ph.i.i106

.lr.ph.i.i106:                                    ; preds = %.lr.ph.i.i106.preheader600, %.lr.ph.i.i106
  %.sroa.0.0.i107 = phi ptr [ %i.la, %.lr.ph.i.i106 ], [ %.sroa.0.0.i107.ph, %.lr.ph.i.i106.preheader600 ]
  %i.kx = phi ptr [ %i.ky, %.lr.ph.i.i106 ], [ %.ph, %.lr.ph.i.i106.preheader600 ]
  %i.ky = getelementptr inbounds i8, ptr %i.kx, i64 -4 ; 3 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !296, !noalias !4407
  %i.la = getelementptr inbounds i8, ptr %.sroa.0.0.i107, i64 -4 ; 2 uses
  store i32 %i.kz, ptr %i.la, align 4, !tbaa !296, !noalias !4407
  %.not.i.i108 = icmp eq ptr %i.ky, %i.kd
  br i1 %.not.i.i108, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit109, label %.lr.ph.i.i106, !llvm.loop !4390

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit109: ; preds = %.lr.ph.i.i106, %middle.block587, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit99
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISO_E4typeESR_SR_SR_SR_T2_T3_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat {
bb.a:
  %7 = alloca %"class.boost::movelib::inverse", align 1 ; 4 uses
  %8 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %9 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %16 = alloca %"struct.boost::movelib::antistable.24", align 8 ; 5 uses
  %17 = alloca %"class.boost::movelib::inverse", align 1 ; 4 uses
  %18 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %19 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %20 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %21 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %22 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %23 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %24 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %25 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %26 = alloca %"struct.boost::movelib::antistable.24", align 8 ; 5 uses
  %27 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 9 uses
  %28 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 12 uses
  %29 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 12 uses
  %30 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %31 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %32 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 8 uses
  %33 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 4 uses
  %34 = alloca %"class.boost::movelib::reverse_iterator.27", align 8 ; 2 uses
  %35 = alloca %"class.boost::movelib::reverse_iterator.27", align 8 ; 2 uses
  %36 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %37 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %38 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %i.a = add i64 %5, %4                           ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !453    ; 3 uses
  %i.c = sub i64 0, %4
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !441    ; 8 uses
  %i.f = ptrtoaddr ptr %i.e to i64                ; 3 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.e, i64 %2 ; 2 uses
  %i.h = sub i64 0, %3
  %i.i = getelementptr [4 x i8], ptr %i.e, i64 %i.h ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  store ptr %i.i, ptr %27, align 8, !tbaa !441
  %i.j = mul i64 %2, %i.a
  %i.k = sub i64 0, %i.j
  %i.l = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.k ; 9 uses
  %i.m = icmp eq i64 %5, 0
  %i.n = select i1 %i.m, i64 0, i64 %4            ; 3 uses
  %i.o = add i64 %i.n, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.a) ; 2 uses
  %.not337 = icmp eq i64 %i.a, 0
  br i1 %.not337, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = mul i64 %2, -4
  %i.q = sub i64 0, %2                            ; 2 uses
  %.idx = shl i64 %i.q, 2                         ; 2 uses
  %.not68 = icmp eq i64 %6, 0
  %i.r = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.s = sub i64 0, %i.a
  %.not1.i.i72 = icmp eq i64 %2, 0
  %i.t = add i64 %5, %4
  %.neg637 = sub i64 1, %i.t
  %.neg638 = mul i64 %.neg637, %2
  %i.u = sub i64 %.neg638, %3
  %i.v = shl i64 %i.u, 2
  %scevgep = getelementptr i8, ptr %i.e, i64 %i.v
  %i.w = mul i64 %3, -4
  %i.x = shl i64 %2, 2                            ; 2 uses
  %i.y = sub i64 %i.w, %i.x
  %scevgep453.a = getelementptr i8, ptr %i.e, i64 %i.y
  %i.z = add i64 %3, %2
  %i.aa = shl i64 %i.z, 2
  %.neg639 = sub i64 %i.aa, %i.f
  %i.ab = add i64 %.neg639, -4
  %i.ac = shl i64 %2, 2
  %i.ad = add i64 %3, %2
  %i.ae = shl i64 %i.ad, 2
  %.neg640 = sub i64 %i.ae, %i.f
  %i.af = add i64 %.neg640, -4
  %i.ag = add i64 %2, 4611686018427387903
  %i.ah = and i64 %i.ag, 4611686018427387903      ; 2 uses
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ah, 7
  %stride.check = icmp slt i64 %.idx, 0
  %n.vec = and i64 %i.ai, 9223372036854775800     ; 3 uses
  %i.aj = mul i64 %n.vec, -4                      ; 2 uses
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 3 uses
  %i.ak = phi ptr [ %i.i, %.lr.ph ], [ %i.bj, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 16 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.gy, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 3 uses
  %.0347 = phi i64 [ %5, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %.060346 = phi i8 [ 1, %.lr.ph ], [ %.262, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 8 uses
  %.063345 = phi i64 [ %i.n, %.lr.ph ], [ %i.gw, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 7 uses
  %.0291344 = phi i64 [ %i.a, %.lr.ph ], [ %i.gz, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 5 uses
  %.sroa.0267.0343 = phi ptr [ %i.d, %.lr.ph ], [ %.sroa.0267.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 13 uses
  %.sroa.0256.0342 = phi ptr [ %i.g, %.lr.ph ], [ %.sroa.0256.3, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 17 uses
  %.sroa.0242.0341 = phi ptr [ %i.e, %.lr.ph ], [ %.sroa.0242.2, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 18 uses
  %.sroa.0227.0340 = phi ptr [ %i.i, %.lr.ph ], [ %.sroa.0227.2, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 16 uses
  %.sroa.0217.0338 = phi ptr [ %i.b, %.lr.ph ], [ %i.gu, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 13 uses
  %.sroa.0242.0341469 = ptrtoaddr ptr %.sroa.0242.0341 to i64
  %.sroa.0227.0340470 = ptrtoaddr ptr %.sroa.0227.0340 to i64
  %i.al = icmp ult i64 %.063345, %.0
  br i1 %i.al, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread20.i
  %.023.i = phi i64 [ %i.be, %.thread20.i ], [ %.063345, %bb.b ] ; 4 uses
  %.01822.i = phi i64 [ %i.bd, %.thread20.i ], [ 0, %bb.b ] ; 4 uses
  %i.am = mul i64 %.01822.i, %2
  %i.an = xor i64 %i.am, -1
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.an
  %i.ap = mul i64 %.023.i, %2
  %i.aq = xor i64 %i.ap, -1
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.aq
  %i.as = xor i64 %.01822.i, -1
  %i.at = getelementptr inbounds i8, ptr %.sroa.0217.0338, i64 %i.as
  %i.au = xor i64 %.023.i, -1
  %i.av = getelementptr inbounds i8, ptr %.sroa.0217.0338, i64 %i.au
  %i.aw = load i32, ptr %i.ao, align 4, !tbaa !296 ; 2 uses
  %i.ax = load i32, ptr %i.ar, align 4, !tbaa !296 ; 2 uses
  %i.ay = icmp slt i32 %i.aw, %i.ax
  br i1 %i.ay, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.az = icmp slt i32 %i.ax, %i.aw
  br i1 %i.az, label %.thread20.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = load i8, ptr %i.at, align 1, !tbaa !276
  %i.bb = load i8, ptr %i.av, align 1, !tbaa !276
  %i.bc = icmp ult i8 %i.ba, %i.bb
  %cond.fr.i = freeze i1 %i.bc
  br i1 %cond.fr.i, label %.thread.i, label %.thread20.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread20.i

.thread20.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bd = phi i64 [ %.023.i, %.thread.i ], [ %.01822.i, %bb.d ], [ %.01822.i, %bb.c ] ; 2 uses
  %i.be = add nuw i64 %.023.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.be, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit, label %.lr.ph.i, !llvm.loop !84

_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit: ; preds = %.thread20.i, %bb.b
  %.018.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bd, %.thread20.i ] ; 6 uses
  %i.bf = add i64 %.018.lcssa.i, 2
  %i.bg = call i64 @llvm.umax.i64(i64 %.0, i64 %i.bf) ; 2 uses
  %.sroa.speculated280 = call i64 @llvm.umin.i64(i64 %i.bg, i64 %.0291344) ; 4 uses
  %.neg307 = mul i64 %i.p, %.018.lcssa.i          ; 2 uses
  %i.bh = getelementptr i8, ptr %i.ak, i64 %.neg307 ; 11 uses
  %i.bi = getelementptr [4 x i8], ptr %i.bh, i64 %i.q ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ak, i64 %.idx  ; 15 uses
  %.not67 = icmp eq i64 %.0347, 0
  br i1 %.not67, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit
  br i1 %.not68, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bk = getelementptr inbounds i8, ptr %i.bh, i64 -4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !296
  %i.bm = load i32, ptr %i.r, align 4, !tbaa !296
  %i.bn = icmp slt i32 %i.bl, %i.bm
  br i1 %i.bn, label %.thread.loopexit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old70 = trunc nuw i8 %.060346 to i1
  br i1 %.old70, label %.thread.thread, label %bb.h

.thread.thread:                                   ; preds = %bb.g
  %i.bo = icmp eq ptr %.sroa.0227.0340, %.sroa.0256.0342
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  store ptr %i.l, ptr %32, align 8, !tbaa !441
  br i1 %i.bo, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit101, label %bb.ak

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit
  %i.bp = sub i64 0, %.018.lcssa.i
  %i.bq = getelementptr inbounds i8, ptr %.sroa.0217.0338, i64 %i.bp ; 7 uses
  %i.br = load ptr, ptr %0, align 8, !tbaa !453
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %i.s
  %i.bt = icmp eq ptr %.sroa.0267.0343, %i.bs
  br i1 %i.bt, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bu = icmp eq ptr %.sroa.0227.0340, %.sroa.0256.0342 ; 2 uses
  %i.bv = trunc nuw i8 %.060346 to i1
  br i1 %i.bv, label %bb.j, label %.thread419

bb.i:                                             ; preds = %bb.h
  %i.bw = getelementptr inbounds i8, ptr %i.bq, i64 -1
  %i.bx = getelementptr inbounds i8, ptr %.sroa.0267.0343, i64 -1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !276
  %i.bz = load i8, ptr %i.bw, align 1, !tbaa !276
  %i.ca = icmp ult i8 %i.by, %i.bz                ; 7 uses
  %i.cb = zext i1 %i.ca to i8                     ; 4 uses
  %i.cc = icmp eq ptr %.sroa.0227.0340, %.sroa.0256.0342 ; 2 uses
  %i.cd = trunc nuw i8 %.060346 to i1             ; 3 uses
  %i.ce = xor i1 %i.ca, %i.cd
  br i1 %i.ce, label %bb.o, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.cf = phi i1 [ %i.bu, %._crit_edge ], [ %i.cc, %bb.i ]
  %i.cg = phi i1 [ true, %._crit_edge ], [ %i.ca, %bb.i ] ; 3 uses
  %.not1.i.i = icmp eq ptr %.sroa.0242.0341, %.sroa.0227.0340
  %or.cond311 = select i1 %i.cf, i1 true, i1 %.not1.i.i
  br i1 %or.cond311, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.ch = add i64 %.sroa.0242.0341469, -4
  %i.ci = sub i64 %i.ch, %.sroa.0227.0340470      ; 3 uses
  %i.cj = lshr i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check472 = icmp ult i64 %i.ci, 28
  br i1 %min.iters.check472, label %.lr.ph.i.i.preheader670, label %vector.memcheck473

vector.memcheck473:                               ; preds = %.lr.ph.i.i.preheader
  %.not641 = and i64 %i.ci, -4
  %i.cl = xor i64 %.not641, -4                    ; 2 uses
  %i.cm = getelementptr i8, ptr %.sroa.0242.0341, i64 %i.cl
  %i.cn = getelementptr i8, ptr %.sroa.0256.0342, i64 %i.cl
  %bound0474 = icmp ult ptr %i.cm, %.sroa.0256.0342
  %bound1475 = icmp ult ptr %i.cn, %.sroa.0242.0341
  %found.conflict476 = and i1 %bound0474, %bound1475
  br i1 %found.conflict476, label %.lr.ph.i.i.preheader670, label %vector.ph477

vector.ph477:                                     ; preds = %vector.memcheck473
  %n.vec478 = and i64 %i.ck, 9223372036854775800  ; 3 uses
  %i.co = mul i64 %n.vec478, -4                   ; 2 uses
  %i.cp = getelementptr i8, ptr %.sroa.0256.0342, i64 %i.co ; 2 uses
  %i.cq = getelementptr i8, ptr %.sroa.0242.0341, i64 %i.co
  br label %vector.body479

vector.body479:                                   ; preds = %vector.body479, %vector.ph477
  %index480 = phi i64 [ 0, %vector.ph477 ], [ %index.next487, %vector.body479 ] ; 2 uses
  %i.cr = mul i64 %index480, -4                   ; 2 uses
  %next.gep481 = getelementptr i8, ptr %.sroa.0256.0342, i64 %i.cr ; 2 uses
  %next.gep482 = getelementptr i8, ptr %.sroa.0242.0341, i64 %i.cr ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %next.gep482, i64 -16 ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %next.gep482, i64 -32 ; 2 uses
  %wide.load483 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !296, !alias.scope !4476, !noalias !4477
  %wide.load484 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !296, !alias.scope !4476, !noalias !4477
  %i.cu = getelementptr inbounds i8, ptr %next.gep481, i64 -16 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %next.gep481, i64 -32 ; 2 uses
  %wide.load485 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !296, !alias.scope !4478, !noalias !4479
  %wide.load486 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !296, !alias.scope !4478, !noalias !4479
  store <4 x i32> %wide.load485, ptr %i.cs, align 4, !tbaa !296, !alias.scope !4476, !noalias !4477
  store <4 x i32> %wide.load486, ptr %i.ct, align 4, !tbaa !296, !alias.scope !4476, !noalias !4477
  store <4 x i32> %wide.load483, ptr %i.cu, align 4, !tbaa !296, !alias.scope !4478, !noalias !4479
  store <4 x i32> %wide.load484, ptr %i.cv, align 4, !tbaa !296, !alias.scope !4478, !noalias !4479
  %index.next487 = add nuw i64 %index480, 8       ; 2 uses
  %i.cw = icmp eq i64 %index.next487, %n.vec478
  br i1 %i.cw, label %middle.block488, label %vector.body479, !llvm.loop !4415

middle.block488:                                  ; preds = %vector.body479
  %cmp.n489 = icmp eq i64 %i.ck, %n.vec478
  br i1 %cmp.n489, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader670

.lr.ph.i.i.preheader670:                          ; preds = %vector.memcheck473, %.lr.ph.i.i.preheader, %middle.block488
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.0256.0342, %vector.memcheck473 ], [ %.sroa.0256.0342, %.lr.ph.i.i.preheader ], [ %i.cp, %middle.block488 ]
  %.ph671 = phi ptr [ %.sroa.0242.0341, %vector.memcheck473 ], [ %.sroa.0242.0341, %.lr.ph.i.i.preheader ], [ %i.cq, %middle.block488 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader670, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.cz, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader670 ]
  %i.cx = phi ptr [ %i.cy, %.lr.ph.i.i ], [ %.ph671, %.lr.ph.i.i.preheader670 ]
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -4 ; 4 uses
  %i.cz = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 4 uses
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !296, !noalias !4479
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !296, !noalias !4479
  store i32 %i.db, ptr %i.cy, align 4, !tbaa !296, !noalias !4479
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !296, !noalias !4479
  %.not.i.i = icmp eq ptr %i.cy, %.sroa.0227.0340
  br i1 %.not.i.i, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i, !llvm.loop !4416

_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit: ; preds = %.lr.ph.i.i, %middle.block488, %bb.j
  %.sroa.0256.1 = phi ptr [ %.sroa.0256.0342, %bb.j ], [ %i.cp, %middle.block488 ], [ %i.cz, %.lr.ph.i.i ] ; 3 uses
  %.not.i = icmp eq i64 %.neg307, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit
  br i1 %.not1.i.i72, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i73.preheader

.lr.ph.i.i73.preheader:                           ; preds = %bb.k
  br i1 %min.iters.check, label %.lr.ph.i.i73.preheader668, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i73.preheader
  %bound0 = icmp ult ptr %scevgep453.a, %i.bh
  %bound1 = icmp ult ptr %i.bi, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.dc = or i1 %found.conflict, %stride.check
  br i1 %i.dc, label %.lr.ph.i.i73.preheader668, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dd = getelementptr i8, ptr %i.bh, i64 %i.aj
  %i.de = getelementptr i8, ptr %i.ak, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.df = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.df ; 2 uses
  %next.gep454 = getelementptr i8, ptr %i.ak, i64 %i.df ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %next.gep454, i64 -16 ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %next.gep454, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.dg, align 4, !tbaa !296, !alias.scope !4480, !noalias !4481
  %wide.load455 = load <4 x i32>, ptr %i.dh, align 4, !tbaa !296, !alias.scope !4480, !noalias !4481
  %i.di = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  %wide.load456 = load <4 x i32>, ptr %i.di, align 4, !tbaa !296, !alias.scope !4482, !noalias !4483
  %wide.load457 = load <4 x i32>, ptr %i.dj, align 4, !tbaa !296, !alias.scope !4482, !noalias !4483
  store <4 x i32> %wide.load456, ptr %i.dg, align 4, !tbaa !296, !alias.scope !4480, !noalias !4481
  store <4 x i32> %wide.load457, ptr %i.dh, align 4, !tbaa !296, !alias.scope !4480, !noalias !4481
  store <4 x i32> %wide.load, ptr %i.di, align 4, !tbaa !296, !alias.scope !4482, !noalias !4483
  store <4 x i32> %wide.load455, ptr %i.dj, align 4, !tbaa !296, !alias.scope !4482, !noalias !4483
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !4422

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i73.preheader668

.lr.ph.i.i73.preheader668:                        ; preds = %vector.memcheck, %.lr.ph.i.i73.preheader, %middle.block
  %.sroa.04.0.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i73.preheader ], [ %i.dd, %middle.block ]
  %.ph669 = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i.i73.preheader ], [ %i.de, %middle.block ]
  br label %.lr.ph.i.i73

.lr.ph.i.i73:                                     ; preds = %.lr.ph.i.i73.preheader668, %.lr.ph.i.i73
  %.sroa.04.0.i = phi ptr [ %i.dn, %.lr.ph.i.i73 ], [ %.sroa.04.0.i.ph, %.lr.ph.i.i73.preheader668 ]
  %i.dl = phi ptr [ %i.dm, %.lr.ph.i.i73 ], [ %.ph669, %.lr.ph.i.i73.preheader668 ]
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -4 ; 4 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.04.0.i, i64 -4 ; 3 uses
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !296, !noalias !4483
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !296, !noalias !4483
  store i32 %i.dp, ptr %i.dm, align 4, !tbaa !296, !noalias !4483
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !296, !noalias !4483
  %.not.i.i74 = icmp eq ptr %i.dm, %i.bj
  br i1 %.not.i.i74, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i73, !llvm.loop !4423

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i73, %middle.block, %bb.k
  %.not9.i = icmp eq i64 %.018.lcssa.i, 0
  br i1 %.not9.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.dq = getelementptr inbounds i8, ptr %i.bq, i64 -1 ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0217.0338, i64 -1 ; 2 uses
  %i.ds = load i8, ptr %i.dq, align 1, !tbaa !276
  %i.dt = load i8, ptr %i.dr, align 1, !tbaa !276
  store i8 %i.dt, ptr %i.dq, align 1, !tbaa !276
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !276
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.du = icmp eq ptr %i.bq, %.sroa.0267.0343
  br i1 %i.du, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dv = icmp eq ptr %.sroa.0267.0343, %.sroa.0217.0338
  %spec.select = select i1 %i.dv, ptr %i.bq, ptr %.sroa.0267.0343
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit

bb.o:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  br i1 %i.cc, label %bb.p, label %bb.s

.thread419:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  br i1 %i.bu, label %.thread420, label %.thread421

.thread421:                                       ; preds = %.thread419
  store ptr %.sroa.0242.0341, ptr %28, align 8, !tbaa !441
  store ptr %.sroa.0227.0340, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %i.dw = ptrtoint ptr %.sroa.0242.0341 to i64
  %i.dx = ptrtoint ptr %.sroa.0227.0340 to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = ashr exact i64 %i.dy, 2
  %i.ea = sub nsw i64 0, %i.dz
  %i.eb = getelementptr inbounds [4 x i8], ptr %.sroa.0256.0342, i64 %i.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  br label %bb.u

.thread420:                                       ; preds = %.thread419
  %i.ec = ptrtoint ptr %.sroa.0242.0341 to i64
  %i.ed = ptrtoint ptr %.sroa.0227.0340 to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = getelementptr inbounds i8, ptr %i.ak, i64 %i.ee ; 2 uses
  store ptr %i.ef, ptr %28, align 8, !tbaa !441
  store ptr %i.ef, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.eg = ptrtoint ptr %.sroa.0242.0341 to i64
  %i.eh = ptrtoint ptr %.sroa.0227.0340 to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = getelementptr inbounds i8, ptr %i.ak, i64 %i.ei ; 2 uses
  store ptr %i.ej, ptr %28, align 8, !tbaa !441
  store ptr %i.ej, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  br i1 %i.cd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr %.sroa.0242.0341, ptr %18, align 8, !tbaa !441, !noalias !4484
  store ptr %.sroa.0227.0340, ptr %19, align 8, !tbaa !441, !noalias !4484
  store ptr %i.bj, ptr %20, align 8, !tbaa !441, !noalias !4484
  store ptr %i.bh, ptr %21, align 8, !tbaa !441, !noalias !4484
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %30, ptr noundef nonnull align 8 dead_on_return %18, ptr noundef nonnull align 8 dead_on_return %19, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %20, ptr noundef nonnull align 8 dead_on_return %21, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit

bb.r:                                             ; preds = %.thread420, %bb.p
  %i.ek = phi i8 [ 1, %.thread420 ], [ %i.cb, %bb.p ]
  %i.el = phi i1 [ true, %.thread420 ], [ %i.ca, %bb.p ]
  store ptr %.sroa.0242.0341, ptr %22, align 8, !tbaa !441, !noalias !4484
  store ptr %.sroa.0227.0340, ptr %23, align 8, !tbaa !441, !noalias !4484
  store ptr %i.bj, ptr %24, align 8, !tbaa !441, !noalias !4484
  store ptr %i.bh, ptr %25, align 8, !tbaa !441, !noalias !4484
  store ptr %17, ptr %26, align 8, !tbaa !455, !noalias !4484
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %30, ptr noundef nonnull align 8 dead_on_return %22, ptr noundef nonnull align 8 dead_on_return %23, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %24, ptr noundef nonnull align 8 dead_on_return %25, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dead_on_return %26)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit: ; preds = %bb.q, %bb.r
  %i.em = phi i8 [ %i.cb, %bb.q ], [ %i.ek, %bb.r ]
  %i.en = phi i1 [ %i.ca, %bb.q ], [ %i.el, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  store ptr %.sroa.0242.0341, ptr %28, align 8, !tbaa !441
  store ptr %.sroa.0227.0340, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %i.eo = ptrtoint ptr %.sroa.0242.0341 to i64
  %i.ep = ptrtoint ptr %.sroa.0227.0340 to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = ashr exact i64 %i.eq, 2
  %i.es = sub nsw i64 0, %i.er
  %i.et = getelementptr inbounds [4 x i8], ptr %.sroa.0256.0342, i64 %i.es ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  br i1 %i.cd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store ptr %.sroa.0256.0342, ptr %8, align 8, !tbaa !441, !noalias !4485
  store ptr %i.et, ptr %9, align 8, !tbaa !441, !noalias !4485
  store ptr %i.bj, ptr %10, align 8, !tbaa !441, !noalias !4485
  store ptr %i.bh, ptr %11, align 8, !tbaa !441, !noalias !4485
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %31, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75

bb.u:                                             ; preds = %.thread421, %bb.s
  %i.eu = phi ptr [ %i.eb, %.thread421 ], [ %i.et, %bb.s ]
  %i.ev = phi i8 [ 1, %.thread421 ], [ %i.cb, %bb.s ]
  %i.ew = phi i1 [ true, %.thread421 ], [ %i.ca, %bb.s ]
  store ptr %.sroa.0256.0342, ptr %12, align 8, !tbaa !441, !noalias !4485
  store ptr %i.eu, ptr %13, align 8, !tbaa !441, !noalias !4485
  store ptr %i.bj, ptr %14, align 8, !tbaa !441, !noalias !4485
  store ptr %i.bh, ptr %15, align 8, !tbaa !441, !noalias !4485
  store ptr %7, ptr %16, align 8, !tbaa !455, !noalias !4485
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %31, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dead_on_return %16)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75: ; preds = %bb.t, %bb.u
  %i.ex = phi i8 [ %i.cb, %bb.t ], [ %i.ev, %bb.u ]
  %i.ey = phi i1 [ %i.ca, %bb.t ], [ %i.ew, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  br label %bb.v

bb.v:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit
  %i.ez = phi i1 [ %i.ey, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75 ], [ %i.en, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit ]
  %i.fa = phi i8 [ %i.ex, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75 ], [ %i.em, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit ]
  %i.fb = load ptr, ptr %27, align 8, !tbaa !441  ; 11 uses
  %i.fc = ptrtoint ptr %i.fb to i64               ; 4 uses
  %i.fd = ptrtoint ptr %i.bj to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = getelementptr inbounds i8, ptr %i.bi, i64 %i.fe ; 6 uses
  %.not.i76 = icmp eq ptr %i.fb, %i.ff
  br i1 %.not.i76, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not1.i.i77 = icmp eq ptr %i.fb, %i.bj
  br i1 %.not1.i.i77, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78.preheader

.lr.ph.i.i78.preheader:                           ; preds = %bb.w
  %i.fg = mul i64 %indvar, %i.ac
  %i.fh = add i64 %i.af, %i.fg
  %i.fi = add i64 %i.fh, %i.fc                    ; 2 uses
  %i.fj = lshr i64 %i.fi, 2
  %i.fk = add nuw nsw i64 %i.fj, 1                ; 2 uses
  %min.iters.check501 = icmp ult i64 %i.fi, 44
  br i1 %min.iters.check501, label %.lr.ph.i.i78.preheader672, label %vector.memcheck502

vector.memcheck502:                               ; preds = %.lr.ph.i.i78.preheader
  %i.fl = mul i64 %indvar, %i.x
  %i.fm = add i64 %i.ab, %i.fl
  %i.fn = add i64 %i.fm, %i.fc
  %i.fo = and i64 %i.fn, -4                       ; 2 uses
  %i.fp = sub nuw nsw i64 -4, %i.fo
  %i.fq = getelementptr i8, ptr %i.fb, i64 %i.fp
  %i.fr = mul i64 %.018.lcssa.i, %2
  %i.fs = shl i64 %i.fr, 2
  %39 = add i64 %i.fs, %i.fo
  %i.ft = add i64 %39, %i.f
  %reass.sub = sub i64 %i.fc, %i.ft
  %40 = getelementptr i8, ptr %i.e, i64 %reass.sub
  %i.fu = getelementptr i8, ptr %40, i64 -4
  %bound0503 = icmp ult ptr %i.fq, %i.ff
  %bound1504 = icmp ult ptr %i.fu, %i.fb
  %found.conflict505 = and i1 %bound0503, %bound1504
  br i1 %found.conflict505, label %.lr.ph.i.i78.preheader672, label %vector.ph506

vector.ph506:                                     ; preds = %vector.memcheck502
  %n.vec507 = and i64 %i.fk, 9223372036854775800  ; 3 uses
  %i.fv = mul i64 %n.vec507, -4                   ; 2 uses
  %i.fw = getelementptr i8, ptr %i.ff, i64 %i.fv
  %i.fx = getelementptr i8, ptr %i.fb, i64 %i.fv
  br label %vector.body508

vector.body508:                                   ; preds = %vector.body508, %vector.ph506
  %index509 = phi i64 [ 0, %vector.ph506 ], [ %index.next516, %vector.body508 ] ; 2 uses
  %i.fy = mul i64 %index509, -4                   ; 2 uses
  %next.gep510 = getelementptr i8, ptr %i.ff, i64 %i.fy ; 2 uses
  %next.gep511 = getelementptr i8, ptr %i.fb, i64 %i.fy ; 2 uses
  %i.fz = getelementptr inbounds i8, ptr %next.gep511, i64 -16 ; 2 uses
  %i.ga = getelementptr inbounds i8, ptr %next.gep511, i64 -32 ; 2 uses
  %wide.load512 = load <4 x i32>, ptr %i.fz, align 4, !tbaa !296, !alias.scope !4486, !noalias !4487
  %wide.load513 = load <4 x i32>, ptr %i.ga, align 4, !tbaa !296, !alias.scope !4486, !noalias !4487
  %i.gb = getelementptr inbounds i8, ptr %next.gep510, i64 -16 ; 2 uses
  %i.gc = getelementptr inbounds i8, ptr %next.gep510, i64 -32 ; 2 uses
  %wide.load514 = load <4 x i32>, ptr %i.gb, align 4, !tbaa !296, !alias.scope !4488, !noalias !4489
  %wide.load515 = load <4 x i32>, ptr %i.gc, align 4, !tbaa !296, !alias.scope !4488, !noalias !4489
  store <4 x i32> %wide.load514, ptr %i.fz, align 4, !tbaa !296, !alias.scope !4486, !noalias !4487
  store <4 x i32> %wide.load515, ptr %i.ga, align 4, !tbaa !296, !alias.scope !4486, !noalias !4487
  store <4 x i32> %wide.load512, ptr %i.gb, align 4, !tbaa !296, !alias.scope !4488, !noalias !4489
  store <4 x i32> %wide.load513, ptr %i.gc, align 4, !tbaa !296, !alias.scope !4488, !noalias !4489
  %index.next516 = add nuw i64 %index509, 8       ; 2 uses
  %i.gd = icmp eq i64 %index.next516, %n.vec507
  br i1 %i.gd, label %middle.block517, label %vector.body508, !llvm.loop !4433

middle.block517:                                  ; preds = %vector.body508
  %cmp.n518 = icmp eq i64 %i.fk, %n.vec507
  br i1 %cmp.n518, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78.preheader672

.lr.ph.i.i78.preheader672:                        ; preds = %vector.memcheck502, %.lr.ph.i.i78.preheader, %middle.block517
  %.sroa.04.0.i79.ph = phi ptr [ %i.ff, %vector.memcheck502 ], [ %i.ff, %.lr.ph.i.i78.preheader ], [ %i.fw, %middle.block517 ]
  %.ph673 = phi ptr [ %i.fb, %vector.memcheck502 ], [ %i.fb, %.lr.ph.i.i78.preheader ], [ %i.fx, %middle.block517 ]
  br label %.lr.ph.i.i78

.lr.ph.i.i78:                                     ; preds = %.lr.ph.i.i78.preheader672, %.lr.ph.i.i78
  %.sroa.04.0.i79 = phi ptr [ %i.gg, %.lr.ph.i.i78 ], [ %.sroa.04.0.i79.ph, %.lr.ph.i.i78.preheader672 ]
  %i.ge = phi ptr [ %i.gf, %.lr.ph.i.i78 ], [ %.ph673, %.lr.ph.i.i78.preheader672 ]
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 -4 ; 4 uses
  %i.gg = getelementptr inbounds i8, ptr %.sroa.04.0.i79, i64 -4 ; 3 uses
  %i.gh = load i32, ptr %i.gf, align 4, !tbaa !296, !noalias !4489
  %i.gi = load i32, ptr %i.gg, align 4, !tbaa !296, !noalias !4489
  store i32 %i.gi, ptr %i.gf, align 4, !tbaa !296, !noalias !4489
  store i32 %i.gh, ptr %i.gg, align 4, !tbaa !296, !noalias !4489
  %.not.i.i80 = icmp eq ptr %i.gf, %i.bj
  br i1 %.not.i.i80, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78, !llvm.loop !4434

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81: ; preds = %.lr.ph.i.i78, %middle.block517, %bb.w
  %.not9.i82 = icmp eq i64 %.018.lcssa.i, 0
  br i1 %.not9.i82, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81
  %i.gj = getelementptr inbounds i8, ptr %i.bq, i64 -1 ; 2 uses
  %i.gk = getelementptr inbounds i8, ptr %.sroa.0217.0338, i64 -1 ; 2 uses
  %i.gl = load i8, ptr %i.gj, align 1, !tbaa !276
  %i.gm = load i8, ptr %i.gk, align 1, !tbaa !276
  store i8 %i.gm, ptr %i.gj, align 1, !tbaa !276
  store i8 %i.gl, ptr %i.gk, align 1, !tbaa !276
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81
  %i.gn = icmp eq ptr %i.bq, %.sroa.0267.0343
  br i1 %i.gn, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.go = icmp eq ptr %.sroa.0267.0343, %.sroa.0217.0338
  %spec.select305 = select i1 %i.go, ptr %i.bq, ptr %.sroa.0267.0343
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86: ; preds = %bb.z, %bb.y, %bb.v
  %.sroa.0267.5 = phi ptr [ %.sroa.0267.0343, %bb.v ], [ %spec.select305, %bb.z ], [ %.sroa.0217.0338, %bb.y ]
  %i.gp = load ptr, ptr %28, align 8, !tbaa !441  ; 2 uses
  %i.gq = load ptr, ptr %29, align 8, !tbaa !441  ; 3 uses
  %.not308 = icmp eq ptr %i.gp, %i.gq
  br i1 %.not308, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %2
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86, %bb.aa
  %.sroa.0227.1 = phi ptr [ %i.bj, %bb.aa ], [ %i.gq, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86 ]
  %.sroa.0242.1 = phi ptr [ %i.fb, %bb.aa ], [ %i.gp, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86 ]
  %.sroa.0256.2 = phi ptr [ %i.gr, %bb.aa ], [ %i.gq, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86 ]
  %.161 = phi i8 [ %i.fa, %bb.aa ], [ %.060346, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit: ; preds = %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit, %bb.m, %bb.n, %bb.ab
  %i.gs = phi i1 [ %i.ez, %bb.ab ], [ %i.cg, %bb.n ], [ %i.cg, %bb.m ], [ %i.cg, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ]
  %.sroa.0227.2 = phi ptr [ %.sroa.0227.1, %bb.ab ], [ %i.bj, %bb.n ], [ %i.bj, %bb.m ], [ %i.bj, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ] ; 2 uses
  %.sroa.0242.2 = phi ptr [ %.sroa.0242.1, %bb.ab ], [ %i.ak, %bb.n ], [ %i.ak, %bb.m ], [ %i.ak, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ] ; 2 uses
  %.sroa.0256.3 = phi ptr [ %.sroa.0256.2, %bb.ab ], [ %.sroa.0256.1, %bb.n ], [ %.sroa.0256.1, %bb.m ], [ %.sroa.0256.1, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ] ; 2 uses
  %.sroa.0267.1 = phi ptr [ %.sroa.0267.5, %bb.ab ], [ %spec.select, %bb.n ], [ %.sroa.0217.0338, %bb.m ], [ %.sroa.0267.0343, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ] ; 2 uses
  %.262 = phi i8 [ %.161, %bb.ab ], [ %.060346, %bb.n ], [ %.060346, %bb.m ], [ %.060346, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ] ; 2 uses
  %not. = xor i1 %i.gs, true
  %i.gt = sext i1 %not. to i64
  %.1 = add i64 %.0347, %i.gt
  store ptr %i.bj, ptr %27, align 8, !tbaa !441
  %i.gu = getelementptr inbounds i8, ptr %.sroa.0217.0338, i64 -1 ; 2 uses
  %i.gv = icmp ne i64 %.063345, 0
  %.neg = sext i1 %i.gv to i64
  %i.gw = add i64 %.063345, %.neg                 ; 2 uses
  %i.gx = icmp ne i64 %i.bg, 0
  %.neg69 = sext i1 %i.gx to i64
  %i.gy = add i64 %.sroa.speculated280, %.neg69   ; 2 uses
  %i.gz = add i64 %.0291344, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gz, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !4435

.thread.loopexit:                                 ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit
  %i.ha = phi ptr [ %i.bj, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %i.ak, %bb.f ]
  %.4 = phi i64 [ %i.gy, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.sroa.speculated280, %bb.f ]
  %.sroa.0217.0.lcssa.ph = phi ptr [ %i.gu, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.sroa.0217.0338, %bb.f ]
  %.sroa.0227.0.lcssa.ph = phi ptr [ %.sroa.0227.2, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.sroa.0227.0340, %bb.f ]
  %.sroa.0242.0.lcssa.ph = phi ptr [ %.sroa.0242.2, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.sroa.0242.0341, %bb.f ]
  %.sroa.0256.0.lcssa.ph = phi ptr [ %.sroa.0256.3, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.sroa.0256.0342, %bb.f ]
  %.sroa.0267.0.lcssa.ph = phi ptr [ %.sroa.0267.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.sroa.0267.0343, %bb.f ]
  %.0291.lcssa.ph = phi i64 [ 0, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.0291344, %bb.f ]
  %.063.lcssa.ph = phi i64 [ %i.gw, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.063345, %bb.f ]
  %.060.lcssa.ph = phi i8 [ %.262, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.060346, %bb.f ]
  %i.hb = trunc nuw i8 %.060.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.hc = phi ptr [ %i.i, %bb.a ], [ %i.ha, %.thread.loopexit ] ; 8 uses
  %.1396 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.sroa.0217.0.lcssa = phi ptr [ %i.b, %bb.a ], [ %.sroa.0217.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.sroa.0227.0.lcssa = phi ptr [ %i.i, %bb.a ], [ %.sroa.0227.0.lcssa.ph, %.thread.loopexit ] ; 8 uses
  %.sroa.0242.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %.sroa.0242.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.sroa.0256.0.lcssa = phi ptr [ %i.g, %bb.a ], [ %.sroa.0256.0.lcssa.ph, %.thread.loopexit ] ; 4 uses
  %.sroa.0267.0.lcssa = phi ptr [ %i.d, %bb.a ], [ %.sroa.0267.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0291.lcssa = phi i64 [ 0, %bb.a ], [ %.0291.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.063.lcssa = phi i64 [ %i.n, %bb.a ], [ %.063.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.060.lcssa = phi i1 [ true, %bb.a ], [ %i.hb, %.thread.loopexit ]
  %i.hd = icmp eq ptr %.sroa.0227.0.lcssa, %.sroa.0256.0.lcssa ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  store ptr %i.l, ptr %32, align 8, !tbaa !441
  %.neg310 = mul i64 %6, -4                       ; 2 uses
  %i.he = getelementptr inbounds i8, ptr %i.l, i64 %.neg310 ; 7 uses
  %i.hf = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.hf, i1 %.060.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.hd, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not1.i = icmp eq ptr %.sroa.0242.0.lcssa, %.sroa.0227.0.lcssa
  br i1 %.not1.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %bb.ad
  %i.hg = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !296, !noalias !4490
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i87
  %i.hi = phi ptr [ %.sroa.0242.0.lcssa, %.lr.ph.i87 ], [ %i.hj, %bb.af ] ; 2 uses
  %i.hj = getelementptr inbounds i8, ptr %i.hi, i64 -4 ; 4 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !296, !noalias !4490
  %i.hl = icmp slt i32 %i.hk, %i.hh
  br i1 %i.hl, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.i88 = icmp eq ptr %i.hj, %.sroa.0227.0.lcssa
  br i1 %.not.i88, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !81

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.lcssa.i = phi ptr [ %.sroa.0242.0.lcssa, %bb.ad ], [ %i.hi, %bb.ae ], [ %i.hj, %bb.af ] ; 8 uses
  %i.hm = ptrtoint ptr %.lcssa.i to i64           ; 2 uses
  %i.hn = ptrtoint ptr %.sroa.0227.0.lcssa to i64 ; 2 uses
  %i.ho = sub i64 %i.hm, %i.hn
  %i.hp = getelementptr i8, ptr %i.hc, i64 %i.ho  ; 7 uses
  %.not1.i.i89 = icmp eq ptr %.lcssa.i, %.sroa.0227.0.lcssa
  br i1 %.not1.i.i89, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit94, label %.lr.ph.i.i90.preheader

.lr.ph.i.i90.preheader:                           ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit
  %i.hq = add i64 %i.hm, -4
  %i.hr = sub i64 %i.hq, %i.hn                    ; 4 uses
  %i.hs = lshr i64 %i.hr, 2
  %i.ht = add nuw nsw i64 %i.hs, 1                ; 2 uses
  %min.iters.check559 = icmp ult i64 %i.hr, 60
  br i1 %min.iters.check559, label %.lr.ph.i.i90.preheader662, label %vector.memcheck560

vector.memcheck560:                               ; preds = %.lr.ph.i.i90.preheader
  %.not643.a = and i64 %i.hr, -4
  %i.hu = xor i64 %.not643.a, -4
  %i.hv = getelementptr i8, ptr %.lcssa.i, i64 %i.hu
  %i.hw = and i64 %i.hr, 3
  %i.hx = getelementptr i8, ptr %i.hc, i64 %i.hw
  %bound0561 = icmp ult ptr %i.hv, %i.hp
end_hunk_7
begin_hunk_8_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPmNS1_4lessEPiS5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET3_T_SH_T0_T1_RT2_SK_SG_NS0_9iter_sizeISJ_E4typeESO_SO_SO_T4_bT5_:bb.a
  %found.conflict280 = and i1 %bound0278, %bound1279
  br i1 %found.conflict280, label %.lr.ph.i.i.preheader346, label %vector.ph281

vector.ph281:                                     ; preds = %vector.memcheck277
  %n.vec282 = and i64 %i.fb, 9223372036854775800  ; 3 uses
  %i.fi = shl i64 %n.vec282, 2                    ; 2 uses
  %i.fj = getelementptr i8, ptr %i.bo, i64 %i.fi  ; 2 uses
  %i.fk = getelementptr i8, ptr %.184, i64 %i.fi
  br label %vector.body283

vector.body283:                                   ; preds = %vector.body283, %vector.ph281
  %index284 = phi i64 [ 0, %vector.ph281 ], [ %index.next291, %vector.body283 ] ; 2 uses
  %i.fl = shl i64 %index284, 2                    ; 2 uses
  %next.gep285 = getelementptr i8, ptr %i.bo, i64 %i.fl ; 3 uses
  %next.gep286 = getelementptr i8, ptr %.184, i64 %i.fl ; 3 uses
  %i.fm = getelementptr i8, ptr %next.gep286, i64 16 ; 2 uses
  %wide.load287 = load <4 x i32>, ptr %next.gep286, align 4, !tbaa !296, !alias.scope !4746, !noalias !4747
  %wide.load288 = load <4 x i32>, ptr %i.fm, align 4, !tbaa !296, !alias.scope !4746, !noalias !4747
  %i.fn = getelementptr i8, ptr %next.gep285, i64 16 ; 2 uses
  %wide.load289 = load <4 x i32>, ptr %next.gep285, align 4, !tbaa !296, !alias.scope !4747
  %wide.load290 = load <4 x i32>, ptr %i.fn, align 4, !tbaa !296, !alias.scope !4747
  store <4 x i32> %wide.load289, ptr %next.gep286, align 4, !tbaa !296, !alias.scope !4746, !noalias !4747
  store <4 x i32> %wide.load290, ptr %i.fm, align 4, !tbaa !296, !alias.scope !4746, !noalias !4747
  store <4 x i32> %wide.load287, ptr %next.gep285, align 4, !tbaa !296, !alias.scope !4747
  store <4 x i32> %wide.load288, ptr %i.fn, align 4, !tbaa !296, !alias.scope !4747
  %index.next291 = add nuw i64 %index284, 8       ; 2 uses
  %i.fo = icmp eq i64 %index.next291, %n.vec282
  br i1 %i.fo, label %middle.block292, label %vector.body283, !llvm.loop !4736

middle.block292:                                  ; preds = %vector.body283
  %cmp.n293 = icmp eq i64 %i.fb, %n.vec282
  br i1 %cmp.n293, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i.i.preheader346

.lr.ph.i.i.preheader346:                          ; preds = %vector.memcheck277, %.lr.ph.i.i.preheader, %middle.block292
  %.010.i.i.ph = phi ptr [ %i.bo, %vector.memcheck277 ], [ %i.bo, %.lr.ph.i.i.preheader ], [ %i.fj, %middle.block292 ] ; 2 uses
  %.079.i.i.ph = phi ptr [ %.184, %vector.memcheck277 ], [ %.184, %.lr.ph.i.i.preheader ], [ %i.fk, %middle.block292 ] ; 3 uses
  %.079.i.i.ph398 = ptrtoaddr ptr %.079.i.i.ph to i64
  %i.fp = sub i64 %i.ey, %.079.i.i.ph398          ; 2 uses
  %i.fq = lshr i64 %i.fp, 2
  %i.fr = add nuw nsw i64 %i.fq, 1
  %xtraiter399 = and i64 %i.fr, 3                 ; 2 uses
  %lcmp.mod400.not = icmp eq i64 %xtraiter399, 0
  br i1 %lcmp.mod400.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader346, %.lr.ph.i.i.prol
  %.010.i.i.prol = phi ptr [ %i.fv, %.lr.ph.i.i.prol ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader346 ] ; 3 uses
  %.079.i.i.prol = phi ptr [ %i.fu, %.lr.ph.i.i.prol ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader346 ] ; 3 uses
  %prol.iter401 = phi i64 [ %prol.iter401.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader346 ]
  %i.fs = load i32, ptr %.079.i.i.prol, align 4, !tbaa !296
  %i.ft = load i32, ptr %.010.i.i.prol, align 4, !tbaa !296
  store i32 %i.ft, ptr %.079.i.i.prol, align 4, !tbaa !296
  store i32 %i.fs, ptr %.010.i.i.prol, align 4, !tbaa !296
  %i.fu = getelementptr inbounds nuw i8, ptr %.079.i.i.prol, i64 4 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.010.i.i.prol, i64 4 ; 3 uses
  %prol.iter401.next = add i64 %prol.iter401, 1   ; 2 uses
  %prol.iter401.cmp.not = icmp eq i64 %prol.iter401.next, %xtraiter399
  br i1 %prol.iter401.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4737

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader346
  %.lcssa395.unr = phi ptr [ poison, %.lr.ph.i.i.preheader346 ], [ %i.fv, %.lr.ph.i.i.prol ]
  %.010.i.i.unr = phi ptr [ %.010.i.i.ph, %.lr.ph.i.i.preheader346 ], [ %i.fv, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %.079.i.i.ph, %.lr.ph.i.i.preheader346 ], [ %i.fu, %.lr.ph.i.i.prol ]
  %i.fw = icmp ult i64 %i.fp, 12
  br i1 %i.fw, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.gm, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %.079.i.i = phi ptr [ %i.gl, %.lr.ph.i.i ], [ %.079.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.fx = load i32, ptr %.079.i.i, align 4, !tbaa !296
  %i.fy = load i32, ptr %.010.i.i, align 4, !tbaa !296
  store i32 %i.fy, ptr %.079.i.i, align 4, !tbaa !296
  store i32 %i.fx, ptr %.010.i.i, align 4, !tbaa !296
  %i.fz = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.gb = load i32, ptr %i.fz, align 4, !tbaa !296
  %i.gc = load i32, ptr %i.ga, align 4, !tbaa !296
  store i32 %i.gc, ptr %i.fz, align 4, !tbaa !296
  store i32 %i.gb, ptr %i.ga, align 4, !tbaa !296
  %i.gd = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !296
  %i.gg = load i32, ptr %i.ge, align 4, !tbaa !296
  store i32 %i.gg, ptr %i.gd, align 4, !tbaa !296
  store i32 %i.gf, ptr %i.ge, align 4, !tbaa !296
  %i.gh = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 12 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 12 ; 2 uses
  %i.gj = load i32, ptr %i.gh, align 4, !tbaa !296
  %i.gk = load i32, ptr %i.gi, align 4, !tbaa !296
  store i32 %i.gk, ptr %i.gh, align 4, !tbaa !296
  store i32 %i.gj, ptr %i.gi, align 4, !tbaa !296
  %i.gl = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 16 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 16 ; 2 uses
  %.not.i.i52.3 = icmp eq ptr %i.gl, %i.ab
  br i1 %.not.i.i52.3, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i.i, !llvm.loop !4738

_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit: ; preds = %.lr.ph.i49.prol.loopexit, %.lr.ph.i49, %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.lr.ph.i48, %middle.block339, %middle.block292, %middle.block, %bb.w, %bb.v, %bb.t, %bb.s
  %.1 = phi ptr [ %i.ab, %bb.s ], [ %i.ct, %.lr.ph.i48 ], [ %i.gm, %.lr.ph.i.i ], [ %.184, %bb.t ], [ %i.bo, %bb.v ], [ %i.bo, %bb.w ], [ %i.ck, %middle.block ], [ %i.fj, %middle.block292 ], [ %i.dh, %middle.block339 ], [ %.lcssa395.unr, %.lr.ph.i.i.prol.loopexit ], [ %.lcssa394.unr, %.lr.ph.i49.prol.loopexit ], [ %i.et, %.lr.ph.i49 ] ; 2 uses
  %.not.i53 = icmp eq ptr %i.ab, %.080
  %brmerge = or i1 %.not.i53, %.not43
  br i1 %brmerge, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPiEEvT_S5_RS5_T0_S7_S7_.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit
  %.idx88 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.gn = getelementptr inbounds nuw i8, ptr %.0126, i64 %.idx88 ; 2 uses
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !319
  %i.gp = load i64, ptr %.0126, align 8, !tbaa !319
  store i64 %i.gp, ptr %i.gn, align 8, !tbaa !319
  store i64 %i.go, ptr %.0126, align 8, !tbaa !319
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPiEEvT_S5_RS5_T0_S7_S7_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPiEEvT_S5_RS5_T0_S7_S7_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, %bb.x
  %i.gq = getelementptr inbounds nuw i8, ptr %.0126, i64 8
  %i.gr = icmp ne i64 %.039124, 0
  %.neg = sext i1 %i.gr to i64
  %i.gs = add i64 %.039124, %.neg
  %i.gt = icmp ne i64 %i.aa, 0
  %.neg44 = sext i1 %i.gt to i64
  %i.gu = add i64 %.sroa.speculated, %.neg44
  %i.gv = add i64 %.082123, -1                    ; 2 uses
  %.not = icmp eq i64 %i.gv, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !4739

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPiEEvT_S5_RS5_T0_S7_S7_.exit, %bb.a
  %.038.lcssa = phi ptr [ %5, %bb.a ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPiEEvT_S5_RS5_T0_S7_S7_.exit ]
  ret ptr %.038.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISO_E4typeESR_SR_SR_SR_T2_T3_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat {
bb.a:
  %7 = alloca %"class.boost::movelib::inverse", align 1 ; 4 uses
  %8 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %9 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %16 = alloca %"struct.boost::movelib::antistable.24", align 8 ; 5 uses
  %17 = alloca %"class.boost::movelib::inverse", align 1 ; 4 uses
  %18 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %19 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %20 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %21 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %22 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %23 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %24 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %25 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %26 = alloca %"struct.boost::movelib::antistable.24", align 8 ; 5 uses
  %27 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 9 uses
  %28 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 12 uses
  %29 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 12 uses
  %30 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %31 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %32 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 8 uses
  %33 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 4 uses
  %34 = alloca %"class.boost::movelib::reverse_iterator.25", align 8 ; 2 uses
  %35 = alloca %"class.boost::movelib::reverse_iterator.25", align 8 ; 2 uses
  %36 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %37 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %38 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %i.a = add i64 %5, %4                           ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !446    ; 3 uses
  %i.c = sub i64 0, %4
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !441    ; 8 uses
  %i.f = ptrtoaddr ptr %i.e to i64                ; 3 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.e, i64 %2 ; 2 uses
  %i.h = sub i64 0, %3
  %i.i = getelementptr [4 x i8], ptr %i.e, i64 %i.h ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  store ptr %i.i, ptr %27, align 8, !tbaa !441
  %i.j = mul i64 %2, %i.a
  %i.k = sub i64 0, %i.j
  %i.l = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.k ; 9 uses
  %i.m = icmp eq i64 %5, 0
  %i.n = select i1 %i.m, i64 0, i64 %4            ; 3 uses
  %i.o = add i64 %i.n, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.a) ; 2 uses
  %.not332 = icmp eq i64 %i.a, 0
  br i1 %.not332, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = mul i64 %2, -4
  %i.q = sub i64 0, %2                            ; 2 uses
  %.idx = shl i64 %i.q, 2                         ; 2 uses
  %.not68 = icmp eq i64 %6, 0
  %i.r = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.s = sub i64 0, %i.a
  %.not1.i.i72 = icmp eq i64 %2, 0
  %i.t = add i64 %5, %4
  %.neg590 = sub i64 1, %i.t
  %.neg591 = mul i64 %.neg590, %2
  %i.u = sub i64 %.neg591, %3
  %i.v = shl i64 %i.u, 2
  %scevgep = getelementptr i8, ptr %i.e, i64 %i.v
  %i.w = mul i64 %3, -4
  %i.x = shl i64 %2, 2                            ; 2 uses
  %i.y = sub i64 %i.w, %i.x
  %scevgep447.a = getelementptr i8, ptr %i.e, i64 %i.y
  %i.z = add i64 %3, %2
  %i.aa = shl i64 %i.z, 2
  %.neg592 = sub i64 %i.aa, %i.f
  %i.ab = add i64 %.neg592, -4
  %i.ac = shl i64 %2, 2
  %i.ad = add i64 %3, %2
  %i.ae = shl i64 %i.ad, 2
  %.neg593 = sub i64 %i.ae, %i.f
  %i.af = add i64 %.neg593, -4
  %i.ag = add i64 %2, 4611686018427387903
  %i.ah = and i64 %i.ag, 4611686018427387903      ; 2 uses
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ah, 7
  %stride.check = icmp slt i64 %.idx, 0
  %n.vec = and i64 %i.ai, 9223372036854775800     ; 3 uses
  %i.aj = mul i64 %n.vec, -4                      ; 2 uses
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.sink.split.i
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.sink.split.i ] ; 3 uses
  %i.ak = phi ptr [ %i.i, %.lr.ph ], [ %i.bj, %.sink.split.i ] ; 16 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.gu, %.sink.split.i ] ; 3 uses
  %.0342 = phi i64 [ %5, %.lr.ph ], [ %.1, %.sink.split.i ] ; 2 uses
  %.060341 = phi i8 [ 1, %.lr.ph ], [ %.262, %.sink.split.i ] ; 8 uses
  %.063340 = phi i64 [ %i.n, %.lr.ph ], [ %i.gs, %.sink.split.i ] ; 7 uses
  %.0284339 = phi i64 [ %i.a, %.lr.ph ], [ %i.gv, %.sink.split.i ] ; 5 uses
  %.sroa.0260.0338 = phi ptr [ %i.d, %.lr.ph ], [ %.sroa.0260.1, %.sink.split.i ] ; 13 uses
  %.sroa.0249.0337 = phi ptr [ %i.g, %.lr.ph ], [ %.sroa.0249.3, %.sink.split.i ] ; 15 uses
  %.sroa.0235.0336 = phi ptr [ %i.e, %.lr.ph ], [ %.sroa.0235.2, %.sink.split.i ] ; 15 uses
  %.sroa.0220.0335 = phi ptr [ %i.i, %.lr.ph ], [ %.sroa.0220.2, %.sink.split.i ] ; 16 uses
  %.sroa.0210.0333 = phi ptr [ %i.b, %.lr.ph ], [ %i.gq, %.sink.split.i ] ; 13 uses
  %.sroa.0220.0335456 = ptrtoaddr ptr %.sroa.0220.0335 to i64
  %.sroa.0235.0336457 = ptrtoaddr ptr %.sroa.0235.0336 to i64 ; 2 uses
  %.sroa.0249.0337458 = ptrtoaddr ptr %.sroa.0249.0337 to i64
  %i.al = icmp ult i64 %.063340, %.0
  br i1 %i.al, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread20.i
  %.023.i = phi i64 [ %i.be, %.thread20.i ], [ %.063340, %bb.b ] ; 4 uses
  %.01822.i = phi i64 [ %i.bd, %.thread20.i ], [ 0, %bb.b ] ; 4 uses
  %i.am = mul i64 %.01822.i, %2
  %i.an = xor i64 %i.am, -1
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.an
  %i.ap = mul i64 %.023.i, %2
  %i.aq = xor i64 %i.ap, -1
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.aq
  %i.as = xor i64 %.01822.i, -1
  %i.at = getelementptr inbounds [8 x i8], ptr %.sroa.0210.0333, i64 %i.as
  %i.au = xor i64 %.023.i, -1
  %i.av = getelementptr inbounds [8 x i8], ptr %.sroa.0210.0333, i64 %i.au
  %i.aw = load i32, ptr %i.ao, align 4, !tbaa !296 ; 2 uses
  %i.ax = load i32, ptr %i.ar, align 4, !tbaa !296 ; 2 uses
  %i.ay = icmp slt i32 %i.aw, %i.ax
  br i1 %i.ay, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.az = icmp slt i32 %i.ax, %i.aw
  br i1 %i.az, label %.thread20.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = load i64, ptr %i.at, align 8, !tbaa !319
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !319
  %i.bc = icmp ult i64 %i.ba, %i.bb
  %cond.fr.i = freeze i1 %i.bc
  br i1 %cond.fr.i, label %.thread.i, label %.thread20.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread20.i

.thread20.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bd = phi i64 [ %.023.i, %.thread.i ], [ %.01822.i, %bb.d ], [ %.01822.i, %bb.c ] ; 2 uses
  %i.be = add nuw i64 %.023.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.be, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit, label %.lr.ph.i, !llvm.loop !74

_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit: ; preds = %.thread20.i, %bb.b
  %.018.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bd, %.thread20.i ] ; 4 uses
  %i.bf = add i64 %.018.lcssa.i, 2
  %i.bg = call i64 @llvm.umax.i64(i64 %.0, i64 %i.bf) ; 2 uses
  %.sroa.speculated273 = call i64 @llvm.umin.i64(i64 %i.bg, i64 %.0284339) ; 4 uses
  %.neg300 = mul i64 %i.p, %.018.lcssa.i          ; 2 uses
  %i.bh = getelementptr i8, ptr %i.ak, i64 %.neg300 ; 11 uses
  %i.bi = getelementptr [4 x i8], ptr %i.bh, i64 %i.q ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ak, i64 %.idx  ; 15 uses
  %.not67 = icmp eq i64 %.0342, 0
  br i1 %.not67, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit
  br i1 %.not68, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bk = getelementptr inbounds i8, ptr %i.bh, i64 -4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !296
  %i.bm = load i32, ptr %i.r, align 4, !tbaa !296
  %i.bn = icmp slt i32 %i.bl, %i.bm
  br i1 %i.bn, label %.thread.loopexit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old70 = trunc nuw i8 %.060341 to i1
  br i1 %.old70, label %.thread.thread, label %bb.h

.thread.thread:                                   ; preds = %bb.g
  %i.bo = icmp eq ptr %.sroa.0220.0335, %.sroa.0249.0337
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  store ptr %i.l, ptr %32, align 8, !tbaa !441
  br i1 %i.bo, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98, label %bb.ak

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit
  %.neg302 = mul i64 %.018.lcssa.i, -8            ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %.sroa.0210.0333, i64 %.neg302 ; 7 uses
  %i.bq = load ptr, ptr %0, align 8, !tbaa !446
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.s
  %i.bs = icmp eq ptr %.sroa.0260.0338, %i.br
  br i1 %i.bs, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bt = icmp eq ptr %.sroa.0220.0335, %.sroa.0249.0337 ; 2 uses
  %i.bu = trunc nuw i8 %.060341 to i1
  br i1 %i.bu, label %bb.j, label %.thread413

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds i8, ptr %i.bp, i64 -8
  %i.bw = getelementptr inbounds i8, ptr %.sroa.0260.0338, i64 -8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !319
  %i.by = load i64, ptr %i.bv, align 8, !tbaa !319
  %i.bz = icmp ult i64 %i.bx, %i.by               ; 7 uses
  %i.ca = zext i1 %i.bz to i8                     ; 4 uses
  %i.cb = icmp eq ptr %.sroa.0220.0335, %.sroa.0249.0337 ; 2 uses
  %i.cc = trunc nuw i8 %.060341 to i1             ; 3 uses
  %i.cd = xor i1 %i.bz, %i.cc
  br i1 %i.cd, label %bb.o, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.ce = phi i1 [ %i.bt, %._crit_edge ], [ %i.cb, %bb.i ]
  %i.cf = phi i1 [ true, %._crit_edge ], [ %i.bz, %bb.i ] ; 3 uses
  %.not1.i.i = icmp eq ptr %.sroa.0235.0336, %.sroa.0220.0335
  %or.cond306 = select i1 %i.ce, i1 true, i1 %.not1.i.i
  br i1 %or.cond306, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.cg = add i64 %.sroa.0235.0336457, -4
  %i.ch = sub i64 %i.cg, %.sroa.0220.0335456      ; 2 uses
  %i.ci = lshr i64 %i.ch, 2
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check460 = icmp ult i64 %i.ch, 28
  %i.ck = sub i64 %.sroa.0249.0337458, %.sroa.0235.0336457
  %diff.check = icmp ugt i64 %i.ck, -32
  %or.cond594 = select i1 %min.iters.check460, i1 true, i1 %diff.check
  br i1 %or.cond594, label %.lr.ph.i.i.preheader621, label %vector.ph462

vector.ph462:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec463 = and i64 %i.cj, 9223372036854775800  ; 3 uses
  %i.cl = mul i64 %n.vec463, -4                   ; 2 uses
  %i.cm = getelementptr i8, ptr %.sroa.0249.0337, i64 %i.cl ; 2 uses
  %i.cn = getelementptr i8, ptr %.sroa.0235.0336, i64 %i.cl
  br label %vector.body464

vector.body464:                                   ; preds = %vector.body464, %vector.ph462
  %index465 = phi i64 [ 0, %vector.ph462 ], [ %index.next470, %vector.body464 ] ; 2 uses
  %i.co = mul i64 %index465, -4                   ; 2 uses
  %next.gep466 = getelementptr i8, ptr %.sroa.0249.0337, i64 %i.co ; 2 uses
  %next.gep467 = getelementptr i8, ptr %.sroa.0235.0336, i64 %i.co ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %next.gep467, i64 -16
  %i.cq = getelementptr inbounds i8, ptr %next.gep467, i64 -32
  %wide.load468 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !296, !noalias !4801
  %wide.load469 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !296, !noalias !4801
  %i.cr = getelementptr inbounds i8, ptr %next.gep466, i64 -16
  %i.cs = getelementptr inbounds i8, ptr %next.gep466, i64 -32
  store <4 x i32> %wide.load468, ptr %i.cr, align 4, !tbaa !296, !noalias !4801
  store <4 x i32> %wide.load469, ptr %i.cs, align 4, !tbaa !296, !noalias !4801
  %index.next470 = add nuw i64 %index465, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next470, %n.vec463
  br i1 %i.ct, label %middle.block471, label %vector.body464, !llvm.loop !4752

middle.block471:                                  ; preds = %vector.body464
  %cmp.n472 = icmp eq i64 %i.cj, %n.vec463
  br i1 %cmp.n472, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader621

.lr.ph.i.i.preheader621:                          ; preds = %.lr.ph.i.i.preheader, %middle.block471
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.0249.0337, %.lr.ph.i.i.preheader ], [ %i.cm, %middle.block471 ]
  %.ph622 = phi ptr [ %.sroa.0235.0336, %.lr.ph.i.i.preheader ], [ %i.cn, %middle.block471 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader621, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.cx, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader621 ]
  %i.cu = phi ptr [ %i.cv, %.lr.ph.i.i ], [ %.ph622, %.lr.ph.i.i.preheader621 ]
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -4 ; 3 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !296, !noalias !4801
  %i.cx = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 3 uses
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !296, !noalias !4801
  %.not.i.i = icmp eq ptr %i.cv, %.sroa.0220.0335
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i, !llvm.loop !4753

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit: ; preds = %.lr.ph.i.i, %middle.block471, %bb.j
  %.sroa.0249.1 = phi ptr [ %.sroa.0249.0337, %bb.j ], [ %i.cm, %middle.block471 ], [ %i.cx, %.lr.ph.i.i ] ; 3 uses
  %.not.i = icmp eq i64 %.neg300, 0
  br i1 %.not.i, label %.sink.split.i, label %bb.k

bb.k:                                             ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit
  br i1 %.not1.i.i72, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i73.preheader

.lr.ph.i.i73.preheader:                           ; preds = %bb.k
  br i1 %min.iters.check, label %.lr.ph.i.i73.preheader619, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i73.preheader
  %bound0 = icmp ult ptr %scevgep447.a, %i.bh
  %bound1 = icmp ult ptr %i.bi, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.cy = or i1 %found.conflict, %stride.check
  br i1 %i.cy, label %.lr.ph.i.i73.preheader619, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cz = getelementptr i8, ptr %i.bh, i64 %i.aj
  %i.da = getelementptr i8, ptr %i.ak, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.db = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.db ; 2 uses
  %next.gep448 = getelementptr i8, ptr %i.ak, i64 %i.db ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %next.gep448, i64 -16 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %next.gep448, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.dc, align 4, !tbaa !296, !alias.scope !4802, !noalias !4803
  %wide.load449 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !296, !alias.scope !4802, !noalias !4803
  %i.de = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  %wide.load450 = load <4 x i32>, ptr %i.de, align 4, !tbaa !296, !alias.scope !4804, !noalias !4805
  %wide.load451 = load <4 x i32>, ptr %i.df, align 4, !tbaa !296, !alias.scope !4804, !noalias !4805
  store <4 x i32> %wide.load450, ptr %i.dc, align 4, !tbaa !296, !alias.scope !4802, !noalias !4803
  store <4 x i32> %wide.load451, ptr %i.dd, align 4, !tbaa !296, !alias.scope !4802, !noalias !4803
  store <4 x i32> %wide.load, ptr %i.de, align 4, !tbaa !296, !alias.scope !4804, !noalias !4805
  store <4 x i32> %wide.load449, ptr %i.df, align 4, !tbaa !296, !alias.scope !4804, !noalias !4805
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !4759

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i73.preheader619

.lr.ph.i.i73.preheader619:                        ; preds = %vector.memcheck, %.lr.ph.i.i73.preheader, %middle.block
  %.sroa.04.0.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i73.preheader ], [ %i.cz, %middle.block ]
  %.ph620 = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i.i73.preheader ], [ %i.da, %middle.block ]
  br label %.lr.ph.i.i73

.lr.ph.i.i73:                                     ; preds = %.lr.ph.i.i73.preheader619, %.lr.ph.i.i73
  %.sroa.04.0.i = phi ptr [ %i.dj, %.lr.ph.i.i73 ], [ %.sroa.04.0.i.ph, %.lr.ph.i.i73.preheader619 ]
  %i.dh = phi ptr [ %i.di, %.lr.ph.i.i73 ], [ %.ph620, %.lr.ph.i.i73.preheader619 ]
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 -4 ; 4 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.04.0.i, i64 -4 ; 3 uses
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !296, !noalias !4805
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !296, !noalias !4805
  store i32 %i.dl, ptr %i.di, align 4, !tbaa !296, !noalias !4805
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !296, !noalias !4805
  %.not.i.i74 = icmp eq ptr %i.di, %i.bj
  br i1 %.not.i.i74, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i73, !llvm.loop !4760

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i73, %middle.block, %bb.k
  %.not9.i = icmp eq i64 %.neg302, 0
  br i1 %.not9.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.dm = getelementptr inbounds i8, ptr %i.bp, i64 -8 ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0210.0333, i64 -8 ; 2 uses
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !319
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !319
  store i64 %i.dp, ptr %i.dm, align 8, !tbaa !319
  store i64 %i.do, ptr %i.dn, align 8, !tbaa !319
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.dq = icmp eq ptr %i.bp, %.sroa.0260.0338
  br i1 %i.dq, label %.sink.split.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dr = icmp eq ptr %.sroa.0260.0338, %.sroa.0210.0333
  %spec.select = select i1 %i.dr, ptr %i.bp, ptr %.sroa.0260.0338
  br label %.sink.split.i

bb.o:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  br i1 %i.cb, label %bb.p, label %bb.s

.thread413:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  br i1 %i.bt, label %.thread414, label %.thread415

.thread415:                                       ; preds = %.thread413
  store ptr %.sroa.0235.0336, ptr %28, align 8, !tbaa !441
  store ptr %.sroa.0220.0335, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %i.ds = ptrtoint ptr %.sroa.0235.0336 to i64
  %i.dt = ptrtoint ptr %.sroa.0220.0335 to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = ashr exact i64 %i.du, 2
  %i.dw = sub nsw i64 0, %i.dv
  %i.dx = getelementptr inbounds [4 x i8], ptr %.sroa.0249.0337, i64 %i.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  br label %bb.u

.thread414:                                       ; preds = %.thread413
  %i.dy = ptrtoint ptr %.sroa.0235.0336 to i64
  %i.dz = ptrtoint ptr %.sroa.0220.0335 to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = getelementptr inbounds i8, ptr %i.ak, i64 %i.ea ; 2 uses
  store ptr %i.eb, ptr %28, align 8, !tbaa !441
  store ptr %i.eb, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ec = ptrtoint ptr %.sroa.0235.0336 to i64
  %i.ed = ptrtoint ptr %.sroa.0220.0335 to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = getelementptr inbounds i8, ptr %i.ak, i64 %i.ee ; 2 uses
  store ptr %i.ef, ptr %28, align 8, !tbaa !441
  store ptr %i.ef, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  br i1 %i.cc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr %.sroa.0235.0336, ptr %18, align 8, !tbaa !441, !noalias !4806
  store ptr %.sroa.0220.0335, ptr %19, align 8, !tbaa !441, !noalias !4806
  store ptr %i.bj, ptr %20, align 8, !tbaa !441, !noalias !4806
  store ptr %i.bh, ptr %21, align 8, !tbaa !441, !noalias !4806
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %30, ptr noundef nonnull align 8 dead_on_return %18, ptr noundef nonnull align 8 dead_on_return %19, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %20, ptr noundef nonnull align 8 dead_on_return %21, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit

bb.r:                                             ; preds = %.thread414, %bb.p
  %i.eg = phi i8 [ 1, %.thread414 ], [ %i.ca, %bb.p ]
  %i.eh = phi i1 [ true, %.thread414 ], [ %i.bz, %bb.p ]
  store ptr %.sroa.0235.0336, ptr %22, align 8, !tbaa !441, !noalias !4806
  store ptr %.sroa.0220.0335, ptr %23, align 8, !tbaa !441, !noalias !4806
  store ptr %i.bj, ptr %24, align 8, !tbaa !441, !noalias !4806
  store ptr %i.bh, ptr %25, align 8, !tbaa !441, !noalias !4806
  store ptr %17, ptr %26, align 8, !tbaa !455, !noalias !4806
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7move_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %30, ptr noundef nonnull align 8 dead_on_return %22, ptr noundef nonnull align 8 dead_on_return %23, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %24, ptr noundef nonnull align 8 dead_on_return %25, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dead_on_return %26)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit: ; preds = %bb.q, %bb.r
  %i.ei = phi i8 [ %i.ca, %bb.q ], [ %i.eg, %bb.r ]
  %i.ej = phi i1 [ %i.bz, %bb.q ], [ %i.eh, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  store ptr %.sroa.0235.0336, ptr %28, align 8, !tbaa !441
  store ptr %.sroa.0220.0335, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %i.ek = ptrtoint ptr %.sroa.0235.0336 to i64
  %i.el = ptrtoint ptr %.sroa.0220.0335 to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 2
  %i.eo = sub nsw i64 0, %i.en
  %i.ep = getelementptr inbounds [4 x i8], ptr %.sroa.0249.0337, i64 %i.eo ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  br i1 %i.cc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store ptr %.sroa.0249.0337, ptr %8, align 8, !tbaa !441, !noalias !4807
  store ptr %i.ep, ptr %9, align 8, !tbaa !441, !noalias !4807
  store ptr %i.bj, ptr %10, align 8, !tbaa !441, !noalias !4807
  store ptr %i.bh, ptr %11, align 8, !tbaa !441, !noalias !4807
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %31, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75

bb.u:                                             ; preds = %.thread415, %bb.s
  %i.eq = phi ptr [ %i.dx, %.thread415 ], [ %i.ep, %bb.s ]
  %i.er = phi i8 [ 1, %.thread415 ], [ %i.ca, %bb.s ]
  %i.es = phi i1 [ true, %.thread415 ], [ %i.bz, %bb.s ]
  store ptr %.sroa.0249.0337, ptr %12, align 8, !tbaa !441, !noalias !4807
  store ptr %i.eq, ptr %13, align 8, !tbaa !441, !noalias !4807
  store ptr %i.bj, ptr %14, align 8, !tbaa !441, !noalias !4807
  store ptr %i.bh, ptr %15, align 8, !tbaa !441, !noalias !4807
  store ptr %7, ptr %16, align 8, !tbaa !455, !noalias !4807
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7move_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %31, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dead_on_return %16)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75: ; preds = %bb.t, %bb.u
  %i.et = phi i8 [ %i.ca, %bb.t ], [ %i.er, %bb.u ]
  %i.eu = phi i1 [ %i.bz, %bb.t ], [ %i.es, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  br label %bb.v

bb.v:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit
  %i.ev = phi i1 [ %i.eu, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75 ], [ %i.ej, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit ]
  %i.ew = phi i8 [ %i.et, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75 ], [ %i.ei, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit ]
  %i.ex = load ptr, ptr %27, align 8, !tbaa !441  ; 11 uses
  %i.ey = ptrtoint ptr %i.ex to i64               ; 4 uses
  %i.ez = ptrtoint ptr %i.bj to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = getelementptr inbounds i8, ptr %i.bi, i64 %i.fa ; 6 uses
  %.not.i76 = icmp eq ptr %i.ex, %i.fb
  br i1 %.not.i76, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not1.i.i77 = icmp eq ptr %i.ex, %i.bj
  br i1 %.not1.i.i77, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78.preheader

.lr.ph.i.i78.preheader:                           ; preds = %bb.w
  %i.fc = mul i64 %indvar, %i.ac
  %i.fd = add i64 %i.af, %i.fc
  %i.fe = add i64 %i.fd, %i.ey                    ; 2 uses
  %i.ff = lshr i64 %i.fe, 2
  %i.fg = add nuw nsw i64 %i.ff, 1                ; 2 uses
  %min.iters.check484 = icmp ult i64 %i.fe, 44
  br i1 %min.iters.check484, label %.lr.ph.i.i78.preheader623, label %vector.memcheck485

vector.memcheck485:                               ; preds = %.lr.ph.i.i78.preheader
  %i.fh = mul i64 %indvar, %i.x
  %i.fi = add i64 %i.ab, %i.fh
  %i.fj = add i64 %i.fi, %i.ey
  %i.fk = and i64 %i.fj, -4                       ; 2 uses
  %i.fl = sub nuw nsw i64 -4, %i.fk
  %i.fm = getelementptr i8, ptr %i.ex, i64 %i.fl
  %i.fn = mul i64 %.018.lcssa.i, %2
  %i.fo = shl i64 %i.fn, 2
  %39 = add i64 %i.fo, %i.fk
  %i.fp = add i64 %39, %i.f
  %reass.sub = sub i64 %i.ey, %i.fp
  %40 = getelementptr i8, ptr %i.e, i64 %reass.sub
  %i.fq = getelementptr i8, ptr %40, i64 -4
  %bound0486 = icmp ult ptr %i.fm, %i.fb
  %bound1487 = icmp ult ptr %i.fq, %i.ex
  %found.conflict488 = and i1 %bound0486, %bound1487
  br i1 %found.conflict488, label %.lr.ph.i.i78.preheader623, label %vector.ph489

vector.ph489:                                     ; preds = %vector.memcheck485
  %n.vec490 = and i64 %i.fg, 9223372036854775800  ; 3 uses
  %i.fr = mul i64 %n.vec490, -4                   ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fb, i64 %i.fr
  %i.ft = getelementptr i8, ptr %i.ex, i64 %i.fr
  br label %vector.body491

vector.body491:                                   ; preds = %vector.body491, %vector.ph489
  %index492 = phi i64 [ 0, %vector.ph489 ], [ %index.next499, %vector.body491 ] ; 2 uses
  %i.fu = mul i64 %index492, -4                   ; 2 uses
  %next.gep493 = getelementptr i8, ptr %i.fb, i64 %i.fu ; 2 uses
  %next.gep494 = getelementptr i8, ptr %i.ex, i64 %i.fu ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %next.gep494, i64 -16 ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %next.gep494, i64 -32 ; 2 uses
  %wide.load495 = load <4 x i32>, ptr %i.fv, align 4, !tbaa !296, !alias.scope !4808, !noalias !4809
  %wide.load496 = load <4 x i32>, ptr %i.fw, align 4, !tbaa !296, !alias.scope !4808, !noalias !4809
  %i.fx = getelementptr inbounds i8, ptr %next.gep493, i64 -16 ; 2 uses
  %i.fy = getelementptr inbounds i8, ptr %next.gep493, i64 -32 ; 2 uses
  %wide.load497 = load <4 x i32>, ptr %i.fx, align 4, !tbaa !296, !alias.scope !4810, !noalias !4811
  %wide.load498 = load <4 x i32>, ptr %i.fy, align 4, !tbaa !296, !alias.scope !4810, !noalias !4811
  store <4 x i32> %wide.load497, ptr %i.fv, align 4, !tbaa !296, !alias.scope !4808, !noalias !4809
  store <4 x i32> %wide.load498, ptr %i.fw, align 4, !tbaa !296, !alias.scope !4808, !noalias !4809
  store <4 x i32> %wide.load495, ptr %i.fx, align 4, !tbaa !296, !alias.scope !4810, !noalias !4811
  store <4 x i32> %wide.load496, ptr %i.fy, align 4, !tbaa !296, !alias.scope !4810, !noalias !4811
  %index.next499 = add nuw i64 %index492, 8       ; 2 uses
  %i.fz = icmp eq i64 %index.next499, %n.vec490
  br i1 %i.fz, label %middle.block500, label %vector.body491, !llvm.loop !4770

middle.block500:                                  ; preds = %vector.body491
  %cmp.n501 = icmp eq i64 %i.fg, %n.vec490
  br i1 %cmp.n501, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78.preheader623

.lr.ph.i.i78.preheader623:                        ; preds = %vector.memcheck485, %.lr.ph.i.i78.preheader, %middle.block500
  %.sroa.04.0.i79.ph = phi ptr [ %i.fb, %vector.memcheck485 ], [ %i.fb, %.lr.ph.i.i78.preheader ], [ %i.fs, %middle.block500 ]
  %.ph624 = phi ptr [ %i.ex, %vector.memcheck485 ], [ %i.ex, %.lr.ph.i.i78.preheader ], [ %i.ft, %middle.block500 ]
  br label %.lr.ph.i.i78

.lr.ph.i.i78:                                     ; preds = %.lr.ph.i.i78.preheader623, %.lr.ph.i.i78
  %.sroa.04.0.i79 = phi ptr [ %i.gc, %.lr.ph.i.i78 ], [ %.sroa.04.0.i79.ph, %.lr.ph.i.i78.preheader623 ]
  %i.ga = phi ptr [ %i.gb, %.lr.ph.i.i78 ], [ %.ph624, %.lr.ph.i.i78.preheader623 ]
  %i.gb = getelementptr inbounds i8, ptr %i.ga, i64 -4 ; 4 uses
  %i.gc = getelementptr inbounds i8, ptr %.sroa.04.0.i79, i64 -4 ; 3 uses
  %i.gd = load i32, ptr %i.gb, align 4, !tbaa !296, !noalias !4811
  %i.ge = load i32, ptr %i.gc, align 4, !tbaa !296, !noalias !4811
  store i32 %i.ge, ptr %i.gb, align 4, !tbaa !296, !noalias !4811
  store i32 %i.gd, ptr %i.gc, align 4, !tbaa !296, !noalias !4811
  %.not.i.i80 = icmp eq ptr %i.gb, %i.bj
  br i1 %.not.i.i80, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78, !llvm.loop !4771

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81: ; preds = %.lr.ph.i.i78, %middle.block500, %bb.w
  %.not9.i82 = icmp eq i64 %.neg302, 0
  br i1 %.not9.i82, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81
  %i.gf = getelementptr inbounds i8, ptr %i.bp, i64 -8 ; 2 uses
  %i.gg = getelementptr inbounds i8, ptr %.sroa.0210.0333, i64 -8 ; 2 uses
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !319
  %i.gi = load i64, ptr %i.gg, align 8, !tbaa !319
  store i64 %i.gi, ptr %i.gf, align 8, !tbaa !319
  store i64 %i.gh, ptr %i.gg, align 8, !tbaa !319
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81
  %i.gj = icmp eq ptr %i.bp, %.sroa.0260.0338
  br i1 %i.gj, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gk = icmp eq ptr %.sroa.0260.0338, %.sroa.0210.0333
  %spec.select298 = select i1 %i.gk, ptr %i.bp, ptr %.sroa.0260.0338
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85: ; preds = %bb.z, %bb.y, %bb.v
  %.sroa.0260.5 = phi ptr [ %.sroa.0260.0338, %bb.v ], [ %spec.select298, %bb.z ], [ %.sroa.0210.0333, %bb.y ]
  %i.gl = load ptr, ptr %28, align 8, !tbaa !441  ; 2 uses
  %i.gm = load ptr, ptr %29, align 8, !tbaa !441  ; 3 uses
  %.not303 = icmp eq ptr %i.gl, %i.gm
  br i1 %.not303, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %2
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85, %bb.aa
  %.sroa.0220.1 = phi ptr [ %i.bj, %bb.aa ], [ %i.gm, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85 ]
  %.sroa.0235.1 = phi ptr [ %i.ex, %bb.aa ], [ %i.gl, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85 ]
  %.sroa.0249.2 = phi ptr [ %i.gn, %bb.aa ], [ %i.gm, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85 ]
  %.161 = phi i8 [ %i.ew, %bb.aa ], [ %.060341, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit, %bb.m, %bb.ab
  %i.go = phi i1 [ %i.ev, %bb.ab ], [ %i.cf, %bb.m ], [ %i.cf, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.cf, %bb.n ]
  %.sroa.0220.2 = phi ptr [ %.sroa.0220.1, %bb.ab ], [ %i.bj, %bb.m ], [ %i.bj, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.bj, %bb.n ] ; 2 uses
  %.sroa.0235.2 = phi ptr [ %.sroa.0235.1, %bb.ab ], [ %i.ak, %bb.m ], [ %i.ak, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.ak, %bb.n ] ; 2 uses
  %.sroa.0249.3 = phi ptr [ %.sroa.0249.2, %bb.ab ], [ %.sroa.0249.1, %bb.m ], [ %.sroa.0249.1, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %.sroa.0249.1, %bb.n ] ; 2 uses
  %.sroa.0260.1 = phi ptr [ %.sroa.0260.5, %bb.ab ], [ %.sroa.0210.0333, %bb.m ], [ %.sroa.0260.0338, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %spec.select, %bb.n ] ; 2 uses
  %.262 = phi i8 [ %.161, %bb.ab ], [ %.060341, %bb.m ], [ %.060341, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %.060341, %bb.n ] ; 2 uses
  %not. = xor i1 %i.go, true
  %i.gp = sext i1 %not. to i64
  %.1 = add i64 %.0342, %i.gp
  store ptr %i.bj, ptr %27, align 8, !tbaa !441
  %i.gq = getelementptr inbounds i8, ptr %.sroa.0210.0333, i64 -8 ; 2 uses
  %i.gr = icmp ne i64 %.063340, 0
  %.neg = sext i1 %i.gr to i64
  %i.gs = add i64 %.063340, %.neg                 ; 2 uses
  %i.gt = icmp ne i64 %i.bg, 0
  %.neg69 = sext i1 %i.gt to i64
  %i.gu = add i64 %.sroa.speculated273, %.neg69   ; 2 uses
  %i.gv = add i64 %.0284339, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gv, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !4772

.thread.loopexit:                                 ; preds = %bb.f, %.sink.split.i
  %i.gw = phi ptr [ %i.bj, %.sink.split.i ], [ %i.ak, %bb.f ]
  %.4 = phi i64 [ %i.gu, %.sink.split.i ], [ %.sroa.speculated273, %bb.f ]
  %.sroa.0210.0.lcssa.ph = phi ptr [ %i.gq, %.sink.split.i ], [ %.sroa.0210.0333, %bb.f ]
  %.sroa.0220.0.lcssa.ph = phi ptr [ %.sroa.0220.2, %.sink.split.i ], [ %.sroa.0220.0335, %bb.f ]
  %.sroa.0235.0.lcssa.ph = phi ptr [ %.sroa.0235.2, %.sink.split.i ], [ %.sroa.0235.0336, %bb.f ]
  %.sroa.0249.0.lcssa.ph = phi ptr [ %.sroa.0249.3, %.sink.split.i ], [ %.sroa.0249.0337, %bb.f ]
  %.sroa.0260.0.lcssa.ph = phi ptr [ %.sroa.0260.1, %.sink.split.i ], [ %.sroa.0260.0338, %bb.f ]
  %.0284.lcssa.ph = phi i64 [ 0, %.sink.split.i ], [ %.0284339, %bb.f ]
  %.063.lcssa.ph = phi i64 [ %i.gs, %.sink.split.i ], [ %.063340, %bb.f ]
  %.060.lcssa.ph = phi i8 [ %.262, %.sink.split.i ], [ %.060341, %bb.f ]
  %i.gx = trunc nuw i8 %.060.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.gy = phi ptr [ %i.i, %bb.a ], [ %i.gw, %.thread.loopexit ] ; 8 uses
  %.1390 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.sroa.0210.0.lcssa = phi ptr [ %i.b, %bb.a ], [ %.sroa.0210.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.sroa.0220.0.lcssa = phi ptr [ %i.i, %bb.a ], [ %.sroa.0220.0.lcssa.ph, %.thread.loopexit ] ; 8 uses
  %.sroa.0235.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %.sroa.0235.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.sroa.0249.0.lcssa = phi ptr [ %i.g, %bb.a ], [ %.sroa.0249.0.lcssa.ph, %.thread.loopexit ] ; 4 uses
  %.sroa.0260.0.lcssa = phi ptr [ %i.d, %bb.a ], [ %.sroa.0260.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0284.lcssa = phi i64 [ 0, %bb.a ], [ %.0284.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.063.lcssa = phi i64 [ %i.n, %bb.a ], [ %.063.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.060.lcssa = phi i1 [ true, %bb.a ], [ %i.gx, %.thread.loopexit ]
  %i.gz = ptrtoaddr ptr %i.gy to i64
  %i.ha = icmp eq ptr %.sroa.0220.0.lcssa, %.sroa.0249.0.lcssa ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  store ptr %i.l, ptr %32, align 8, !tbaa !441
  %.neg305 = mul i64 %6, -4                       ; 2 uses
  %i.hb = getelementptr inbounds i8, ptr %i.l, i64 %.neg305 ; 7 uses
  %i.hc = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.hc, i1 %.060.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.ha, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not1.i = icmp eq ptr %.sroa.0235.0.lcssa, %.sroa.0220.0.lcssa
  br i1 %.not1.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %.lr.ph.i86

.lr.ph.i86:                                       ; preds = %bb.ad
  %i.hd = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !296, !noalias !4812
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i86
  %i.hf = phi ptr [ %.sroa.0235.0.lcssa, %.lr.ph.i86 ], [ %i.hg, %bb.af ] ; 2 uses
  %i.hg = getelementptr inbounds i8, ptr %i.hf, i64 -4 ; 4 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !296, !noalias !4812
  %i.hi = icmp slt i32 %i.hh, %i.he
  br i1 %i.hi, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.i87 = icmp eq ptr %i.hg, %.sroa.0220.0.lcssa
  br i1 %.not.i87, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !81

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.lcssa.i = phi ptr [ %.sroa.0235.0.lcssa, %bb.ad ], [ %i.hf, %bb.ae ], [ %i.hg, %bb.af ] ; 5 uses
  %i.hj = ptrtoint ptr %.lcssa.i to i64           ; 2 uses
  %i.hk = ptrtoint ptr %.sroa.0220.0.lcssa to i64 ; 3 uses
  %i.hl = sub i64 %i.hj, %i.hk
  %i.hm = getelementptr inbounds i8, ptr %i.gy, i64 %i.hl ; 5 uses
  %.not1.i.i88 = icmp eq ptr %.lcssa.i, %.sroa.0220.0.lcssa
  br i1 %.not1.i.i88, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit92, label %.lr.ph.i.i89.preheader

.lr.ph.i.i89.preheader:                           ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit
  %i.hn = add i64 %i.hj, -4
  %i.ho = sub i64 %i.hn, %i.hk                    ; 2 uses
  %i.hp = lshr i64 %i.ho, 2
  %i.hq = add nuw nsw i64 %i.hp, 1                ; 2 uses
  %min.iters.check531 = icmp ult i64 %i.ho, 44
  %i.hr = sub i64 %i.gz, %i.hk
  %diff.check533 = icmp ugt i64 %i.hr, -32
  %or.cond595 = select i1 %min.iters.check531, i1 true, i1 %diff.check533
  br i1 %or.cond595, label %.lr.ph.i.i89.preheader613, label %vector.ph534

vector.ph534:                                     ; preds = %.lr.ph.i.i89.preheader
  %n.vec535 = and i64 %i.hq, 9223372036854775800  ; 3 uses
  %i.hs = mul i64 %n.vec535, -4                   ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISO_E4typeESR_SR_SR_SR_T2_T3_:bb.a
vector.ph515:                                     ; preds = %.lr.ph.i.i100.preheader
  %n.vec516 = and i64 %i.jm, 9223372036854775800  ; 3 uses
  %i.jo = mul i64 %n.vec516, -4                   ; 2 uses
  %i.jp = getelementptr i8, ptr %.sroa.0249.0323, i64 %i.jo ; 2 uses
  %i.jq = getelementptr i8, ptr %.sroa.0235.0325, i64 %i.jo
  br label %vector.body517

vector.body517:                                   ; preds = %vector.body517, %vector.ph515
  %index518 = phi i64 [ 0, %vector.ph515 ], [ %index.next523, %vector.body517 ] ; 2 uses
  %i.jr = mul i64 %index518, -4                   ; 2 uses
  %next.gep519 = getelementptr i8, ptr %.sroa.0249.0323, i64 %i.jr ; 2 uses
  %next.gep520 = getelementptr i8, ptr %.sroa.0235.0325, i64 %i.jr ; 2 uses
  %i.js = getelementptr inbounds i8, ptr %next.gep520, i64 -16
  %i.jt = getelementptr inbounds i8, ptr %next.gep520, i64 -32
  %wide.load521 = load <4 x i32>, ptr %i.js, align 4, !tbaa !296, !noalias !4816
  %wide.load522 = load <4 x i32>, ptr %i.jt, align 4, !tbaa !296, !noalias !4816
  %i.ju = getelementptr inbounds i8, ptr %next.gep519, i64 -16
  %i.jv = getelementptr inbounds i8, ptr %next.gep519, i64 -32
  store <4 x i32> %wide.load521, ptr %i.ju, align 4, !tbaa !296, !noalias !4816
  store <4 x i32> %wide.load522, ptr %i.jv, align 4, !tbaa !296, !noalias !4816
  %index.next523 = add nuw i64 %index518, 8       ; 2 uses
  %i.jw = icmp eq i64 %index.next523, %n.vec516
  br i1 %i.jw, label %middle.block524, label %vector.body517, !llvm.loop !4793

middle.block524:                                  ; preds = %vector.body517
  %cmp.n525 = icmp eq i64 %i.jm, %n.vec516
  br i1 %cmp.n525, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98, label %.lr.ph.i.i100.preheader615

.lr.ph.i.i100.preheader615:                       ; preds = %.lr.ph.i.i100.preheader, %middle.block524
  %.sroa.0.0.i101.ph = phi ptr [ %.sroa.0249.0323, %.lr.ph.i.i100.preheader ], [ %i.jp, %middle.block524 ]
  %.ph616 = phi ptr [ %.sroa.0235.0325, %.lr.ph.i.i100.preheader ], [ %i.jq, %middle.block524 ]
  br label %.lr.ph.i.i100

.lr.ph.i.i100:                                    ; preds = %.lr.ph.i.i100.preheader615, %.lr.ph.i.i100
  %.sroa.0.0.i101 = phi ptr [ %i.ka, %.lr.ph.i.i100 ], [ %.sroa.0.0.i101.ph, %.lr.ph.i.i100.preheader615 ]
  %i.jx = phi ptr [ %i.jy, %.lr.ph.i.i100 ], [ %.ph616, %.lr.ph.i.i100.preheader615 ]
  %i.jy = getelementptr inbounds i8, ptr %i.jx, i64 -4 ; 3 uses
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !296, !noalias !4816
  %i.ka = getelementptr inbounds i8, ptr %.sroa.0.0.i101, i64 -4 ; 3 uses
  store i32 %i.jz, ptr %i.ka, align 4, !tbaa !296, !noalias !4816
  %.not.i.i102 = icmp eq ptr %i.jy, %.sroa.0220.0328
  br i1 %.not.i.i102, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98, label %.lr.ph.i.i100, !llvm.loop !4794

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98: ; preds = %.lr.ph.i.i100, %.lr.ph.i.i95, %middle.block524, %middle.block567, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit, %bb.aj
  %i.kb = phi ptr [ %i.gy, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %i.ak, %.thread.thread ], [ %i.gy, %bb.aj ], [ %i.jh, %bb.ak ], [ %i.gy, %middle.block567 ], [ %i.jh, %middle.block524 ], [ %i.gy, %.lr.ph.i.i95 ], [ %i.jh, %.lr.ph.i.i100 ]
  %.3 = phi i64 [ %.1390, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.speculated273, %.thread.thread ], [ %.1390, %bb.aj ], [ %.2, %bb.ak ], [ %.1390, %middle.block567 ], [ %.2, %middle.block524 ], [ %.1390, %.lr.ph.i.i95 ], [ %.2, %.lr.ph.i.i100 ]
  %.sroa.0210.0331 = phi ptr [ %.sroa.0210.0.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.0210.0333, %.thread.thread ], [ %.sroa.0210.0.lcssa, %bb.aj ], [ %.sroa.0210.0330, %bb.ak ], [ %.sroa.0210.0.lcssa, %middle.block567 ], [ %.sroa.0210.0330, %middle.block524 ], [ %.sroa.0210.0.lcssa, %.lr.ph.i.i95 ], [ %.sroa.0210.0330, %.lr.ph.i.i100 ]
  %.sroa.0260.0321 = phi ptr [ %.sroa.0260.0.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.0260.0338, %.thread.thread ], [ %.sroa.0260.0.lcssa, %bb.aj ], [ %.sroa.0260.0320, %bb.ak ], [ %.sroa.0260.0.lcssa, %middle.block567 ], [ %.sroa.0260.0320, %middle.block524 ], [ %.sroa.0260.0.lcssa, %.lr.ph.i.i95 ], [ %.sroa.0260.0320, %.lr.ph.i.i100 ]
  %.0284318 = phi i64 [ %.0284.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.0284339, %.thread.thread ], [ %.0284.lcssa, %bb.aj ], [ %.0284317, %bb.ak ], [ %.0284.lcssa, %middle.block567 ], [ %.0284317, %middle.block524 ], [ %.0284.lcssa, %.lr.ph.i.i95 ], [ %.0284317, %.lr.ph.i.i100 ]
  %.063315 = phi i64 [ %.063.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.063340, %.thread.thread ], [ %.063.lcssa, %bb.aj ], [ %.063314, %bb.ak ], [ %.063.lcssa, %middle.block567 ], [ %.063314, %middle.block524 ], [ %.063.lcssa, %.lr.ph.i.i95 ], [ %.063314, %.lr.ph.i.i100 ]
  %i.kc = phi ptr [ %i.hb, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %i.l, %.thread.thread ], [ %i.hb, %bb.aj ], [ %i.ji, %bb.ak ], [ %i.hb, %middle.block567 ], [ %i.ji, %middle.block524 ], [ %i.hb, %.lr.ph.i.i95 ], [ %i.ji, %.lr.ph.i.i100 ] ; 4 uses
  %.sroa.0249.7 = phi ptr [ %.sroa.0120.1, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.0249.0337, %.thread.thread ], [ %.sroa.0249.0.lcssa, %bb.aj ], [ %.sroa.0249.0323, %bb.ak ], [ %i.iv, %middle.block567 ], [ %i.jp, %middle.block524 ], [ %i.jg, %.lr.ph.i.i95 ], [ %i.ka, %.lr.ph.i.i100 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  store ptr %.sroa.0210.0331, ptr %34, align 8, !tbaa !446
  store ptr %.sroa.0260.0321, ptr %35, align 8, !tbaa !446
  store ptr %i.kb, ptr %36, align 8, !tbaa !441
  store ptr %i.kc, ptr %37, align 8, !tbaa !441
  store ptr %.sroa.0249.7, ptr %38, align 8, !tbaa !441
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEESA_SA_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET3_T_SN_T0_T1_RT2_SQ_SM_NS0_9iter_sizeISP_E4typeESU_SU_SU_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %33, ptr noundef nonnull align 8 dead_on_return %34, ptr noundef nonnull align 8 dead_on_return %35, ptr noundef nonnull align 8 dead_on_return %36, ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dead_on_return %37, ptr noundef nonnull align 8 dead_on_return %38, i64 noundef %2, i64 noundef %.0284318, i64 noundef %.063315, i64 noundef %.3, i1 noundef zeroext false)
  %i.kd = load ptr, ptr %33, align 8, !tbaa !441  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  %i.ke = load ptr, ptr %32, align 8, !tbaa !441  ; 5 uses
  %.not1.i.i104 = icmp eq ptr %i.ke, %i.kc
  br i1 %.not1.i.i104, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit108, label %.lr.ph.i.i105.preheader

.lr.ph.i.i105.preheader:                          ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98
  %i.kf = ptrtoaddr ptr %i.ke to i64              ; 2 uses
  %i.kg = ptrtoaddr ptr %i.kd to i64
  %i.kh = ptrtoaddr ptr %i.kc to i64
  %i.ki = add i64 %i.kf, -4
  %i.kj = sub i64 %i.ki, %i.kh                    ; 2 uses
  %i.kk = lshr i64 %i.kj, 2
  %i.kl = add nuw nsw i64 %i.kk, 1                ; 2 uses
  %min.iters.check574 = icmp ult i64 %i.kj, 44
  %i.km = sub i64 %i.kg, %i.kf
  %diff.check576 = icmp ugt i64 %i.km, -32
  %or.cond598 = select i1 %min.iters.check574, i1 true, i1 %diff.check576
  br i1 %or.cond598, label %.lr.ph.i.i105.preheader599, label %vector.ph577

vector.ph577:                                     ; preds = %.lr.ph.i.i105.preheader
  %n.vec578 = and i64 %i.kl, 9223372036854775800  ; 3 uses
  %i.kn = mul i64 %n.vec578, -4                   ; 2 uses
  %i.ko = getelementptr i8, ptr %i.kd, i64 %i.kn
  %i.kp = getelementptr i8, ptr %i.ke, i64 %i.kn
  br label %vector.body579

vector.body579:                                   ; preds = %vector.body579, %vector.ph577
  %index580 = phi i64 [ 0, %vector.ph577 ], [ %index.next585, %vector.body579 ] ; 2 uses
  %i.kq = mul i64 %index580, -4                   ; 2 uses
  %next.gep581 = getelementptr i8, ptr %i.kd, i64 %i.kq ; 2 uses
  %next.gep582 = getelementptr i8, ptr %i.ke, i64 %i.kq ; 2 uses
  %i.kr = getelementptr inbounds i8, ptr %next.gep582, i64 -16
  %i.ks = getelementptr inbounds i8, ptr %next.gep582, i64 -32
  %wide.load583 = load <4 x i32>, ptr %i.kr, align 4, !tbaa !296, !noalias !4817
  %wide.load584 = load <4 x i32>, ptr %i.ks, align 4, !tbaa !296, !noalias !4817
  %i.kt = getelementptr inbounds i8, ptr %next.gep581, i64 -16
  %i.ku = getelementptr inbounds i8, ptr %next.gep581, i64 -32
  store <4 x i32> %wide.load583, ptr %i.kt, align 4, !tbaa !296, !noalias !4817
  store <4 x i32> %wide.load584, ptr %i.ku, align 4, !tbaa !296, !noalias !4817
  %index.next585 = add nuw i64 %index580, 8       ; 2 uses
  %i.kv = icmp eq i64 %index.next585, %n.vec578
  br i1 %i.kv, label %middle.block586, label %vector.body579, !llvm.loop !4799

middle.block586:                                  ; preds = %vector.body579
  %cmp.n587 = icmp eq i64 %i.kl, %n.vec578
  br i1 %cmp.n587, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit108, label %.lr.ph.i.i105.preheader599

.lr.ph.i.i105.preheader599:                       ; preds = %.lr.ph.i.i105.preheader, %middle.block586
  %.sroa.0.0.i106.ph = phi ptr [ %i.kd, %.lr.ph.i.i105.preheader ], [ %i.ko, %middle.block586 ]
  %.ph = phi ptr [ %i.ke, %.lr.ph.i.i105.preheader ], [ %i.kp, %middle.block586 ]
  br label %.lr.ph.i.i105

.lr.ph.i.i105:                                    ; preds = %.lr.ph.i.i105.preheader599, %.lr.ph.i.i105
  %.sroa.0.0.i106 = phi ptr [ %i.kz, %.lr.ph.i.i105 ], [ %.sroa.0.0.i106.ph, %.lr.ph.i.i105.preheader599 ]
  %i.kw = phi ptr [ %i.kx, %.lr.ph.i.i105 ], [ %.ph, %.lr.ph.i.i105.preheader599 ]
  %i.kx = getelementptr inbounds i8, ptr %i.kw, i64 -4 ; 3 uses
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !296, !noalias !4817
  %i.kz = getelementptr inbounds i8, ptr %.sroa.0.0.i106, i64 -4 ; 2 uses
  store i32 %i.ky, ptr %i.kz, align 4, !tbaa !296, !noalias !4817
  %.not.i.i107 = icmp eq ptr %i.kx, %i.kc
  br i1 %.not.i.i107, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit108, label %.lr.ph.i.i105, !llvm.loop !4800

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit108: ; preds = %.lr.ph.i.i105, %middle.block586, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISO_E4typeESR_SR_SR_SR_T2_T3_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat {
bb.a:
  %7 = alloca %"class.boost::movelib::inverse", align 1 ; 4 uses
  %8 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %9 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %16 = alloca %"struct.boost::movelib::antistable.24", align 8 ; 5 uses
  %17 = alloca %"class.boost::movelib::inverse", align 1 ; 4 uses
  %18 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %19 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %20 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %21 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %22 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %23 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %24 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %25 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %26 = alloca %"struct.boost::movelib::antistable.24", align 8 ; 5 uses
  %27 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 9 uses
  %28 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 12 uses
  %29 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 12 uses
  %30 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %31 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %32 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 8 uses
  %33 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 4 uses
  %34 = alloca %"class.boost::movelib::reverse_iterator.25", align 8 ; 2 uses
  %35 = alloca %"class.boost::movelib::reverse_iterator.25", align 8 ; 2 uses
  %36 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %37 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %38 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %i.a = add i64 %5, %4                           ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !446    ; 3 uses
  %i.c = sub i64 0, %4
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !441    ; 8 uses
  %i.f = ptrtoaddr ptr %i.e to i64                ; 3 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.e, i64 %2 ; 2 uses
  %i.h = sub i64 0, %3
  %i.i = getelementptr [4 x i8], ptr %i.e, i64 %i.h ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  store ptr %i.i, ptr %27, align 8, !tbaa !441
  %i.j = mul i64 %2, %i.a
  %i.k = sub i64 0, %i.j
  %i.l = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.k ; 9 uses
  %i.m = icmp eq i64 %5, 0
  %i.n = select i1 %i.m, i64 0, i64 %4            ; 3 uses
  %i.o = add i64 %i.n, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.a) ; 2 uses
  %.not336 = icmp eq i64 %i.a, 0
  br i1 %.not336, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = mul i64 %2, -4
  %i.q = sub i64 0, %2                            ; 2 uses
  %.idx = shl i64 %i.q, 2                         ; 2 uses
  %.not68 = icmp eq i64 %6, 0
  %i.r = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.s = sub i64 0, %i.a
  %.not1.i.i72 = icmp eq i64 %2, 0
  %i.t = add i64 %5, %4
  %.neg636 = sub i64 1, %i.t
  %.neg637 = mul i64 %.neg636, %2
  %i.u = sub i64 %.neg637, %3
  %i.v = shl i64 %i.u, 2
  %scevgep = getelementptr i8, ptr %i.e, i64 %i.v
  %i.w = mul i64 %3, -4
  %i.x = shl i64 %2, 2                            ; 2 uses
  %i.y = sub i64 %i.w, %i.x
  %scevgep452.a = getelementptr i8, ptr %i.e, i64 %i.y
  %i.z = add i64 %3, %2
  %i.aa = shl i64 %i.z, 2
  %.neg638 = sub i64 %i.aa, %i.f
  %i.ab = add i64 %.neg638, -4
  %i.ac = shl i64 %2, 2
  %i.ad = add i64 %3, %2
  %i.ae = shl i64 %i.ad, 2
  %.neg639 = sub i64 %i.ae, %i.f
  %i.af = add i64 %.neg639, -4
  %i.ag = add i64 %2, 4611686018427387903
  %i.ah = and i64 %i.ag, 4611686018427387903      ; 2 uses
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ah, 7
  %stride.check = icmp slt i64 %.idx, 0
  %n.vec = and i64 %i.ai, 9223372036854775800     ; 3 uses
  %i.aj = mul i64 %n.vec, -4                      ; 2 uses
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.sink.split.i
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.sink.split.i ] ; 3 uses
  %i.ak = phi ptr [ %i.i, %.lr.ph ], [ %i.bj, %.sink.split.i ] ; 16 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.gx, %.sink.split.i ] ; 3 uses
  %.0346 = phi i64 [ %5, %.lr.ph ], [ %.1, %.sink.split.i ] ; 2 uses
  %.060345 = phi i8 [ 1, %.lr.ph ], [ %.262, %.sink.split.i ] ; 8 uses
  %.063344 = phi i64 [ %i.n, %.lr.ph ], [ %i.gv, %.sink.split.i ] ; 7 uses
  %.0288343 = phi i64 [ %i.a, %.lr.ph ], [ %i.gy, %.sink.split.i ] ; 5 uses
  %.sroa.0264.0342 = phi ptr [ %i.d, %.lr.ph ], [ %.sroa.0264.1, %.sink.split.i ] ; 13 uses
  %.sroa.0253.0341 = phi ptr [ %i.g, %.lr.ph ], [ %.sroa.0253.3, %.sink.split.i ] ; 17 uses
  %.sroa.0239.0340 = phi ptr [ %i.e, %.lr.ph ], [ %.sroa.0239.2, %.sink.split.i ] ; 18 uses
  %.sroa.0224.0339 = phi ptr [ %i.i, %.lr.ph ], [ %.sroa.0224.2, %.sink.split.i ] ; 16 uses
  %.sroa.0214.0337 = phi ptr [ %i.b, %.lr.ph ], [ %i.gt, %.sink.split.i ] ; 13 uses
  %.sroa.0239.0340468 = ptrtoaddr ptr %.sroa.0239.0340 to i64
  %.sroa.0224.0339469 = ptrtoaddr ptr %.sroa.0224.0339 to i64
  %i.al = icmp ult i64 %.063344, %.0
  br i1 %i.al, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread20.i
  %.023.i = phi i64 [ %i.be, %.thread20.i ], [ %.063344, %bb.b ] ; 4 uses
  %.01822.i = phi i64 [ %i.bd, %.thread20.i ], [ 0, %bb.b ] ; 4 uses
  %i.am = mul i64 %.01822.i, %2
  %i.an = xor i64 %i.am, -1
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.an
  %i.ap = mul i64 %.023.i, %2
  %i.aq = xor i64 %i.ap, -1
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.aq
  %i.as = xor i64 %.01822.i, -1
  %i.at = getelementptr inbounds [8 x i8], ptr %.sroa.0214.0337, i64 %i.as
  %i.au = xor i64 %.023.i, -1
  %i.av = getelementptr inbounds [8 x i8], ptr %.sroa.0214.0337, i64 %i.au
  %i.aw = load i32, ptr %i.ao, align 4, !tbaa !296 ; 2 uses
  %i.ax = load i32, ptr %i.ar, align 4, !tbaa !296 ; 2 uses
  %i.ay = icmp slt i32 %i.aw, %i.ax
  br i1 %i.ay, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.az = icmp slt i32 %i.ax, %i.aw
  br i1 %i.az, label %.thread20.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = load i64, ptr %i.at, align 8, !tbaa !319
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !319
  %i.bc = icmp ult i64 %i.ba, %i.bb
  %cond.fr.i = freeze i1 %i.bc
  br i1 %cond.fr.i, label %.thread.i, label %.thread20.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread20.i

.thread20.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bd = phi i64 [ %.023.i, %.thread.i ], [ %.01822.i, %bb.d ], [ %.01822.i, %bb.c ] ; 2 uses
  %i.be = add nuw i64 %.023.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.be, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit, label %.lr.ph.i, !llvm.loop !74

_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit: ; preds = %.thread20.i, %bb.b
  %.018.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bd, %.thread20.i ] ; 4 uses
  %i.bf = add i64 %.018.lcssa.i, 2
  %i.bg = call i64 @llvm.umax.i64(i64 %.0, i64 %i.bf) ; 2 uses
  %.sroa.speculated277 = call i64 @llvm.umin.i64(i64 %i.bg, i64 %.0288343) ; 4 uses
  %.neg304 = mul i64 %i.p, %.018.lcssa.i          ; 2 uses
  %i.bh = getelementptr i8, ptr %i.ak, i64 %.neg304 ; 11 uses
  %i.bi = getelementptr [4 x i8], ptr %i.bh, i64 %i.q ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ak, i64 %.idx  ; 15 uses
  %.not67 = icmp eq i64 %.0346, 0
  br i1 %.not67, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit
  br i1 %.not68, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bk = getelementptr inbounds i8, ptr %i.bh, i64 -4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !296
  %i.bm = load i32, ptr %i.r, align 4, !tbaa !296
  %i.bn = icmp slt i32 %i.bl, %i.bm
  br i1 %i.bn, label %.thread.loopexit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old70 = trunc nuw i8 %.060345 to i1
  br i1 %.old70, label %.thread.thread, label %bb.h

.thread.thread:                                   ; preds = %bb.g
  %i.bo = icmp eq ptr %.sroa.0224.0339, %.sroa.0253.0341
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  store ptr %i.l, ptr %32, align 8, !tbaa !441
  br i1 %i.bo, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit100, label %bb.ak

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit
  %.neg306 = mul i64 %.018.lcssa.i, -8            ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %.sroa.0214.0337, i64 %.neg306 ; 7 uses
  %i.bq = load ptr, ptr %0, align 8, !tbaa !446
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.s
  %i.bs = icmp eq ptr %.sroa.0264.0342, %i.br
  br i1 %i.bs, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bt = icmp eq ptr %.sroa.0224.0339, %.sroa.0253.0341 ; 2 uses
  %i.bu = trunc nuw i8 %.060345 to i1
  br i1 %i.bu, label %bb.j, label %.thread418

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds i8, ptr %i.bp, i64 -8
  %i.bw = getelementptr inbounds i8, ptr %.sroa.0264.0342, i64 -8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !319
  %i.by = load i64, ptr %i.bv, align 8, !tbaa !319
  %i.bz = icmp ult i64 %i.bx, %i.by               ; 7 uses
  %i.ca = zext i1 %i.bz to i8                     ; 4 uses
  %i.cb = icmp eq ptr %.sroa.0224.0339, %.sroa.0253.0341 ; 2 uses
  %i.cc = trunc nuw i8 %.060345 to i1             ; 3 uses
  %i.cd = xor i1 %i.bz, %i.cc
  br i1 %i.cd, label %bb.o, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.ce = phi i1 [ %i.bt, %._crit_edge ], [ %i.cb, %bb.i ]
  %i.cf = phi i1 [ true, %._crit_edge ], [ %i.bz, %bb.i ] ; 3 uses
  %.not1.i.i = icmp eq ptr %.sroa.0239.0340, %.sroa.0224.0339
  %or.cond310 = select i1 %i.ce, i1 true, i1 %.not1.i.i
  br i1 %or.cond310, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.cg = add i64 %.sroa.0239.0340468, -4
  %i.ch = sub i64 %i.cg, %.sroa.0224.0339469      ; 3 uses
  %i.ci = lshr i64 %i.ch, 2
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check471 = icmp ult i64 %i.ch, 28
  br i1 %min.iters.check471, label %.lr.ph.i.i.preheader669, label %vector.memcheck472

vector.memcheck472:                               ; preds = %.lr.ph.i.i.preheader
  %.not640 = and i64 %i.ch, -4
  %i.ck = xor i64 %.not640, -4                    ; 2 uses
  %i.cl = getelementptr i8, ptr %.sroa.0239.0340, i64 %i.ck
  %i.cm = getelementptr i8, ptr %.sroa.0253.0341, i64 %i.ck
  %bound0473 = icmp ult ptr %i.cl, %.sroa.0253.0341
  %bound1474 = icmp ult ptr %i.cm, %.sroa.0239.0340
  %found.conflict475 = and i1 %bound0473, %bound1474
  br i1 %found.conflict475, label %.lr.ph.i.i.preheader669, label %vector.ph476

vector.ph476:                                     ; preds = %vector.memcheck472
  %n.vec477 = and i64 %i.cj, 9223372036854775800  ; 3 uses
  %i.cn = mul i64 %n.vec477, -4                   ; 2 uses
  %i.co = getelementptr i8, ptr %.sroa.0253.0341, i64 %i.cn ; 2 uses
  %i.cp = getelementptr i8, ptr %.sroa.0239.0340, i64 %i.cn
  br label %vector.body478

vector.body478:                                   ; preds = %vector.body478, %vector.ph476
  %index479 = phi i64 [ 0, %vector.ph476 ], [ %index.next486, %vector.body478 ] ; 2 uses
  %i.cq = mul i64 %index479, -4                   ; 2 uses
  %next.gep480 = getelementptr i8, ptr %.sroa.0253.0341, i64 %i.cq ; 2 uses
  %next.gep481 = getelementptr i8, ptr %.sroa.0239.0340, i64 %i.cq ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %next.gep481, i64 -16 ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %next.gep481, i64 -32 ; 2 uses
  %wide.load482 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !296, !alias.scope !4886, !noalias !4887
  %wide.load483 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !296, !alias.scope !4886, !noalias !4887
  %i.ct = getelementptr inbounds i8, ptr %next.gep480, i64 -16 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %next.gep480, i64 -32 ; 2 uses
  %wide.load484 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !296, !alias.scope !4888, !noalias !4889
  %wide.load485 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !296, !alias.scope !4888, !noalias !4889
  store <4 x i32> %wide.load484, ptr %i.cr, align 4, !tbaa !296, !alias.scope !4886, !noalias !4887
  store <4 x i32> %wide.load485, ptr %i.cs, align 4, !tbaa !296, !alias.scope !4886, !noalias !4887
  store <4 x i32> %wide.load482, ptr %i.ct, align 4, !tbaa !296, !alias.scope !4888, !noalias !4889
  store <4 x i32> %wide.load483, ptr %i.cu, align 4, !tbaa !296, !alias.scope !4888, !noalias !4889
  %index.next486 = add nuw i64 %index479, 8       ; 2 uses
  %i.cv = icmp eq i64 %index.next486, %n.vec477
  br i1 %i.cv, label %middle.block487, label %vector.body478, !llvm.loop !4825

middle.block487:                                  ; preds = %vector.body478
  %cmp.n488 = icmp eq i64 %i.cj, %n.vec477
  br i1 %cmp.n488, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader669

.lr.ph.i.i.preheader669:                          ; preds = %vector.memcheck472, %.lr.ph.i.i.preheader, %middle.block487
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.0253.0341, %vector.memcheck472 ], [ %.sroa.0253.0341, %.lr.ph.i.i.preheader ], [ %i.co, %middle.block487 ]
  %.ph670 = phi ptr [ %.sroa.0239.0340, %vector.memcheck472 ], [ %.sroa.0239.0340, %.lr.ph.i.i.preheader ], [ %i.cp, %middle.block487 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader669, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.cy, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader669 ]
  %i.cw = phi ptr [ %i.cx, %.lr.ph.i.i ], [ %.ph670, %.lr.ph.i.i.preheader669 ]
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -4 ; 4 uses
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 4 uses
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !296, !noalias !4889
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !296, !noalias !4889
  store i32 %i.da, ptr %i.cx, align 4, !tbaa !296, !noalias !4889
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !296, !noalias !4889
  %.not.i.i = icmp eq ptr %i.cx, %.sroa.0224.0339
  br i1 %.not.i.i, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i, !llvm.loop !4826

_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit: ; preds = %.lr.ph.i.i, %middle.block487, %bb.j
  %.sroa.0253.1 = phi ptr [ %.sroa.0253.0341, %bb.j ], [ %i.co, %middle.block487 ], [ %i.cy, %.lr.ph.i.i ] ; 3 uses
  %.not.i = icmp eq i64 %.neg304, 0
  br i1 %.not.i, label %.sink.split.i, label %bb.k

bb.k:                                             ; preds = %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit
  br i1 %.not1.i.i72, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i73.preheader

.lr.ph.i.i73.preheader:                           ; preds = %bb.k
  br i1 %min.iters.check, label %.lr.ph.i.i73.preheader667, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i73.preheader
  %bound0 = icmp ult ptr %scevgep452.a, %i.bh
  %bound1 = icmp ult ptr %i.bi, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.db = or i1 %found.conflict, %stride.check
  br i1 %i.db, label %.lr.ph.i.i73.preheader667, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dc = getelementptr i8, ptr %i.bh, i64 %i.aj
  %i.dd = getelementptr i8, ptr %i.ak, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.de = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.de ; 2 uses
  %next.gep453 = getelementptr i8, ptr %i.ak, i64 %i.de ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %next.gep453, i64 -16 ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %next.gep453, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.df, align 4, !tbaa !296, !alias.scope !4890, !noalias !4891
  %wide.load454 = load <4 x i32>, ptr %i.dg, align 4, !tbaa !296, !alias.scope !4890, !noalias !4891
  %i.dh = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  %wide.load455 = load <4 x i32>, ptr %i.dh, align 4, !tbaa !296, !alias.scope !4892, !noalias !4893
  %wide.load456 = load <4 x i32>, ptr %i.di, align 4, !tbaa !296, !alias.scope !4892, !noalias !4893
  store <4 x i32> %wide.load455, ptr %i.df, align 4, !tbaa !296, !alias.scope !4890, !noalias !4891
  store <4 x i32> %wide.load456, ptr %i.dg, align 4, !tbaa !296, !alias.scope !4890, !noalias !4891
  store <4 x i32> %wide.load, ptr %i.dh, align 4, !tbaa !296, !alias.scope !4892, !noalias !4893
  store <4 x i32> %wide.load454, ptr %i.di, align 4, !tbaa !296, !alias.scope !4892, !noalias !4893
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !4832

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i73.preheader667

.lr.ph.i.i73.preheader667:                        ; preds = %vector.memcheck, %.lr.ph.i.i73.preheader, %middle.block
  %.sroa.04.0.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i73.preheader ], [ %i.dc, %middle.block ]
  %.ph668 = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i.i73.preheader ], [ %i.dd, %middle.block ]
  br label %.lr.ph.i.i73

.lr.ph.i.i73:                                     ; preds = %.lr.ph.i.i73.preheader667, %.lr.ph.i.i73
  %.sroa.04.0.i = phi ptr [ %i.dm, %.lr.ph.i.i73 ], [ %.sroa.04.0.i.ph, %.lr.ph.i.i73.preheader667 ]
  %i.dk = phi ptr [ %i.dl, %.lr.ph.i.i73 ], [ %.ph668, %.lr.ph.i.i73.preheader667 ]
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -4 ; 4 uses
  %i.dm = getelementptr inbounds i8, ptr %.sroa.04.0.i, i64 -4 ; 3 uses
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !296, !noalias !4893
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !296, !noalias !4893
  store i32 %i.do, ptr %i.dl, align 4, !tbaa !296, !noalias !4893
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !296, !noalias !4893
  %.not.i.i74 = icmp eq ptr %i.dl, %i.bj
  br i1 %.not.i.i74, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i73, !llvm.loop !4833

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i73, %middle.block, %bb.k
  %.not9.i = icmp eq i64 %.neg306, 0
  br i1 %.not9.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.dp = getelementptr inbounds i8, ptr %i.bp, i64 -8 ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %.sroa.0214.0337, i64 -8 ; 2 uses
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !319
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !319
  store i64 %i.ds, ptr %i.dp, align 8, !tbaa !319
  store i64 %i.dr, ptr %i.dq, align 8, !tbaa !319
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.dt = icmp eq ptr %i.bp, %.sroa.0264.0342
  br i1 %i.dt, label %.sink.split.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.du = icmp eq ptr %.sroa.0264.0342, %.sroa.0214.0337
  %spec.select = select i1 %i.du, ptr %i.bp, ptr %.sroa.0264.0342
  br label %.sink.split.i

bb.o:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  br i1 %i.cb, label %bb.p, label %bb.s

.thread418:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  br i1 %i.bt, label %.thread419, label %.thread420

.thread420:                                       ; preds = %.thread418
  store ptr %.sroa.0239.0340, ptr %28, align 8, !tbaa !441
  store ptr %.sroa.0224.0339, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %i.dv = ptrtoint ptr %.sroa.0239.0340 to i64
  %i.dw = ptrtoint ptr %.sroa.0224.0339 to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = ashr exact i64 %i.dx, 2
  %i.dz = sub nsw i64 0, %i.dy
  %i.ea = getelementptr inbounds [4 x i8], ptr %.sroa.0253.0341, i64 %i.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  br label %bb.u

.thread419:                                       ; preds = %.thread418
  %i.eb = ptrtoint ptr %.sroa.0239.0340 to i64
  %i.ec = ptrtoint ptr %.sroa.0224.0339 to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = getelementptr inbounds i8, ptr %i.ak, i64 %i.ed ; 2 uses
  store ptr %i.ee, ptr %28, align 8, !tbaa !441
  store ptr %i.ee, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ef = ptrtoint ptr %.sroa.0239.0340 to i64
  %i.eg = ptrtoint ptr %.sroa.0224.0339 to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = getelementptr inbounds i8, ptr %i.ak, i64 %i.eh ; 2 uses
  store ptr %i.ei, ptr %28, align 8, !tbaa !441
  store ptr %i.ei, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  br i1 %i.cc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr %.sroa.0239.0340, ptr %18, align 8, !tbaa !441, !noalias !4894
  store ptr %.sroa.0224.0339, ptr %19, align 8, !tbaa !441, !noalias !4894
  store ptr %i.bj, ptr %20, align 8, !tbaa !441, !noalias !4894
  store ptr %i.bh, ptr %21, align 8, !tbaa !441, !noalias !4894
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %30, ptr noundef nonnull align 8 dead_on_return %18, ptr noundef nonnull align 8 dead_on_return %19, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %20, ptr noundef nonnull align 8 dead_on_return %21, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit

bb.r:                                             ; preds = %.thread419, %bb.p
  %i.ej = phi i8 [ 1, %.thread419 ], [ %i.ca, %bb.p ]
  %i.ek = phi i1 [ true, %.thread419 ], [ %i.bz, %bb.p ]
  store ptr %.sroa.0239.0340, ptr %22, align 8, !tbaa !441, !noalias !4894
  store ptr %.sroa.0224.0339, ptr %23, align 8, !tbaa !441, !noalias !4894
  store ptr %i.bj, ptr %24, align 8, !tbaa !441, !noalias !4894
  store ptr %i.bh, ptr %25, align 8, !tbaa !441, !noalias !4894
  store ptr %17, ptr %26, align 8, !tbaa !455, !noalias !4894
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %30, ptr noundef nonnull align 8 dead_on_return %22, ptr noundef nonnull align 8 dead_on_return %23, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %24, ptr noundef nonnull align 8 dead_on_return %25, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dead_on_return %26)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit: ; preds = %bb.q, %bb.r
  %i.el = phi i8 [ %i.ca, %bb.q ], [ %i.ej, %bb.r ]
  %i.em = phi i1 [ %i.bz, %bb.q ], [ %i.ek, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  store ptr %.sroa.0239.0340, ptr %28, align 8, !tbaa !441
  store ptr %.sroa.0224.0339, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %i.en = ptrtoint ptr %.sroa.0239.0340 to i64
  %i.eo = ptrtoint ptr %.sroa.0224.0339 to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = ashr exact i64 %i.ep, 2
  %i.er = sub nsw i64 0, %i.eq
  %i.es = getelementptr inbounds [4 x i8], ptr %.sroa.0253.0341, i64 %i.er ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  br i1 %i.cc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store ptr %.sroa.0253.0341, ptr %8, align 8, !tbaa !441, !noalias !4895
  store ptr %i.es, ptr %9, align 8, !tbaa !441, !noalias !4895
  store ptr %i.bj, ptr %10, align 8, !tbaa !441, !noalias !4895
  store ptr %i.bh, ptr %11, align 8, !tbaa !441, !noalias !4895
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %31, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75

bb.u:                                             ; preds = %.thread420, %bb.s
  %i.et = phi ptr [ %i.ea, %.thread420 ], [ %i.es, %bb.s ]
  %i.eu = phi i8 [ 1, %.thread420 ], [ %i.ca, %bb.s ]
  %i.ev = phi i1 [ true, %.thread420 ], [ %i.bz, %bb.s ]
  store ptr %.sroa.0253.0341, ptr %12, align 8, !tbaa !441, !noalias !4895
  store ptr %i.et, ptr %13, align 8, !tbaa !441, !noalias !4895
  store ptr %i.bj, ptr %14, align 8, !tbaa !441, !noalias !4895
  store ptr %i.bh, ptr %15, align 8, !tbaa !441, !noalias !4895
  store ptr %7, ptr %16, align 8, !tbaa !455, !noalias !4895
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %31, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dead_on_return %16)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75: ; preds = %bb.t, %bb.u
  %i.ew = phi i8 [ %i.ca, %bb.t ], [ %i.eu, %bb.u ]
  %i.ex = phi i1 [ %i.bz, %bb.t ], [ %i.ev, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  br label %bb.v

bb.v:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit
  %i.ey = phi i1 [ %i.ex, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75 ], [ %i.em, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit ]
  %i.ez = phi i8 [ %i.ew, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75 ], [ %i.el, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit ]
  %i.fa = load ptr, ptr %27, align 8, !tbaa !441  ; 11 uses
  %i.fb = ptrtoint ptr %i.fa to i64               ; 4 uses
  %i.fc = ptrtoint ptr %i.bj to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = getelementptr inbounds i8, ptr %i.bi, i64 %i.fd ; 6 uses
  %.not.i76 = icmp eq ptr %i.fa, %i.fe
  br i1 %.not.i76, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not1.i.i77 = icmp eq ptr %i.fa, %i.bj
  br i1 %.not1.i.i77, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78.preheader

.lr.ph.i.i78.preheader:                           ; preds = %bb.w
  %i.ff = mul i64 %indvar, %i.ac
  %i.fg = add i64 %i.af, %i.ff
  %i.fh = add i64 %i.fg, %i.fb                    ; 2 uses
  %i.fi = lshr i64 %i.fh, 2
  %i.fj = add nuw nsw i64 %i.fi, 1                ; 2 uses
  %min.iters.check500 = icmp ult i64 %i.fh, 44
  br i1 %min.iters.check500, label %.lr.ph.i.i78.preheader671, label %vector.memcheck501

vector.memcheck501:                               ; preds = %.lr.ph.i.i78.preheader
  %i.fk = mul i64 %indvar, %i.x
  %i.fl = add i64 %i.ab, %i.fk
  %i.fm = add i64 %i.fl, %i.fb
  %i.fn = and i64 %i.fm, -4                       ; 2 uses
  %i.fo = sub nuw nsw i64 -4, %i.fn
  %i.fp = getelementptr i8, ptr %i.fa, i64 %i.fo
  %i.fq = mul i64 %.018.lcssa.i, %2
  %i.fr = shl i64 %i.fq, 2
  %39 = add i64 %i.fr, %i.fn
  %i.fs = add i64 %39, %i.f
  %reass.sub = sub i64 %i.fb, %i.fs
  %40 = getelementptr i8, ptr %i.e, i64 %reass.sub
  %i.ft = getelementptr i8, ptr %40, i64 -4
  %bound0502 = icmp ult ptr %i.fp, %i.fe
  %bound1503 = icmp ult ptr %i.ft, %i.fa
  %found.conflict504 = and i1 %bound0502, %bound1503
  br i1 %found.conflict504, label %.lr.ph.i.i78.preheader671, label %vector.ph505

vector.ph505:                                     ; preds = %vector.memcheck501
  %n.vec506 = and i64 %i.fj, 9223372036854775800  ; 3 uses
  %i.fu = mul i64 %n.vec506, -4                   ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fe, i64 %i.fu
  %i.fw = getelementptr i8, ptr %i.fa, i64 %i.fu
  br label %vector.body507

vector.body507:                                   ; preds = %vector.body507, %vector.ph505
  %index508 = phi i64 [ 0, %vector.ph505 ], [ %index.next515, %vector.body507 ] ; 2 uses
  %i.fx = mul i64 %index508, -4                   ; 2 uses
  %next.gep509 = getelementptr i8, ptr %i.fe, i64 %i.fx ; 2 uses
  %next.gep510 = getelementptr i8, ptr %i.fa, i64 %i.fx ; 2 uses
  %i.fy = getelementptr inbounds i8, ptr %next.gep510, i64 -16 ; 2 uses
  %i.fz = getelementptr inbounds i8, ptr %next.gep510, i64 -32 ; 2 uses
  %wide.load511 = load <4 x i32>, ptr %i.fy, align 4, !tbaa !296, !alias.scope !4896, !noalias !4897
  %wide.load512 = load <4 x i32>, ptr %i.fz, align 4, !tbaa !296, !alias.scope !4896, !noalias !4897
  %i.ga = getelementptr inbounds i8, ptr %next.gep509, i64 -16 ; 2 uses
  %i.gb = getelementptr inbounds i8, ptr %next.gep509, i64 -32 ; 2 uses
  %wide.load513 = load <4 x i32>, ptr %i.ga, align 4, !tbaa !296, !alias.scope !4898, !noalias !4899
  %wide.load514 = load <4 x i32>, ptr %i.gb, align 4, !tbaa !296, !alias.scope !4898, !noalias !4899
  store <4 x i32> %wide.load513, ptr %i.fy, align 4, !tbaa !296, !alias.scope !4896, !noalias !4897
  store <4 x i32> %wide.load514, ptr %i.fz, align 4, !tbaa !296, !alias.scope !4896, !noalias !4897
  store <4 x i32> %wide.load511, ptr %i.ga, align 4, !tbaa !296, !alias.scope !4898, !noalias !4899
  store <4 x i32> %wide.load512, ptr %i.gb, align 4, !tbaa !296, !alias.scope !4898, !noalias !4899
  %index.next515 = add nuw i64 %index508, 8       ; 2 uses
  %i.gc = icmp eq i64 %index.next515, %n.vec506
  br i1 %i.gc, label %middle.block516, label %vector.body507, !llvm.loop !4843

middle.block516:                                  ; preds = %vector.body507
  %cmp.n517 = icmp eq i64 %i.fj, %n.vec506
  br i1 %cmp.n517, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78.preheader671

.lr.ph.i.i78.preheader671:                        ; preds = %vector.memcheck501, %.lr.ph.i.i78.preheader, %middle.block516
  %.sroa.04.0.i79.ph = phi ptr [ %i.fe, %vector.memcheck501 ], [ %i.fe, %.lr.ph.i.i78.preheader ], [ %i.fv, %middle.block516 ]
  %.ph672 = phi ptr [ %i.fa, %vector.memcheck501 ], [ %i.fa, %.lr.ph.i.i78.preheader ], [ %i.fw, %middle.block516 ]
  br label %.lr.ph.i.i78

.lr.ph.i.i78:                                     ; preds = %.lr.ph.i.i78.preheader671, %.lr.ph.i.i78
  %.sroa.04.0.i79 = phi ptr [ %i.gf, %.lr.ph.i.i78 ], [ %.sroa.04.0.i79.ph, %.lr.ph.i.i78.preheader671 ]
  %i.gd = phi ptr [ %i.ge, %.lr.ph.i.i78 ], [ %.ph672, %.lr.ph.i.i78.preheader671 ]
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 -4 ; 4 uses
  %i.gf = getelementptr inbounds i8, ptr %.sroa.04.0.i79, i64 -4 ; 3 uses
  %i.gg = load i32, ptr %i.ge, align 4, !tbaa !296, !noalias !4899
  %i.gh = load i32, ptr %i.gf, align 4, !tbaa !296, !noalias !4899
  store i32 %i.gh, ptr %i.ge, align 4, !tbaa !296, !noalias !4899
  store i32 %i.gg, ptr %i.gf, align 4, !tbaa !296, !noalias !4899
  %.not.i.i80 = icmp eq ptr %i.ge, %i.bj
  br i1 %.not.i.i80, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78, !llvm.loop !4844

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81: ; preds = %.lr.ph.i.i78, %middle.block516, %bb.w
  %.not9.i82 = icmp eq i64 %.neg306, 0
  br i1 %.not9.i82, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81
  %i.gi = getelementptr inbounds i8, ptr %i.bp, i64 -8 ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %.sroa.0214.0337, i64 -8 ; 2 uses
  %i.gk = load i64, ptr %i.gi, align 8, !tbaa !319
  %i.gl = load i64, ptr %i.gj, align 8, !tbaa !319
  store i64 %i.gl, ptr %i.gi, align 8, !tbaa !319
  store i64 %i.gk, ptr %i.gj, align 8, !tbaa !319
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81
  %i.gm = icmp eq ptr %i.bp, %.sroa.0264.0342
  br i1 %i.gm, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gn = icmp eq ptr %.sroa.0264.0342, %.sroa.0214.0337
  %spec.select302 = select i1 %i.gn, ptr %i.bp, ptr %.sroa.0264.0342
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85: ; preds = %bb.z, %bb.y, %bb.v
  %.sroa.0264.5 = phi ptr [ %.sroa.0264.0342, %bb.v ], [ %spec.select302, %bb.z ], [ %.sroa.0214.0337, %bb.y ]
  %i.go = load ptr, ptr %28, align 8, !tbaa !441  ; 2 uses
  %i.gp = load ptr, ptr %29, align 8, !tbaa !441  ; 3 uses
  %.not307 = icmp eq ptr %i.go, %i.gp
  br i1 %.not307, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %2
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85, %bb.aa
  %.sroa.0224.1 = phi ptr [ %i.bj, %bb.aa ], [ %i.gp, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85 ]
  %.sroa.0239.1 = phi ptr [ %i.fa, %bb.aa ], [ %i.go, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85 ]
  %.sroa.0253.2 = phi ptr [ %i.gq, %bb.aa ], [ %i.gp, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85 ]
  %.161 = phi i8 [ %i.ez, %bb.aa ], [ %.060345, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit, %bb.m, %bb.ab
  %i.gr = phi i1 [ %i.ey, %bb.ab ], [ %i.cf, %bb.m ], [ %i.cf, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.cf, %bb.n ]
  %.sroa.0224.2 = phi ptr [ %.sroa.0224.1, %bb.ab ], [ %i.bj, %bb.m ], [ %i.bj, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.bj, %bb.n ] ; 2 uses
  %.sroa.0239.2 = phi ptr [ %.sroa.0239.1, %bb.ab ], [ %i.ak, %bb.m ], [ %i.ak, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.ak, %bb.n ] ; 2 uses
  %.sroa.0253.3 = phi ptr [ %.sroa.0253.2, %bb.ab ], [ %.sroa.0253.1, %bb.m ], [ %.sroa.0253.1, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %.sroa.0253.1, %bb.n ] ; 2 uses
  %.sroa.0264.1 = phi ptr [ %.sroa.0264.5, %bb.ab ], [ %.sroa.0214.0337, %bb.m ], [ %.sroa.0264.0342, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %spec.select, %bb.n ] ; 2 uses
  %.262 = phi i8 [ %.161, %bb.ab ], [ %.060345, %bb.m ], [ %.060345, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %.060345, %bb.n ] ; 2 uses
  %not. = xor i1 %i.gr, true
  %i.gs = sext i1 %not. to i64
  %.1 = add i64 %.0346, %i.gs
  store ptr %i.bj, ptr %27, align 8, !tbaa !441
  %i.gt = getelementptr inbounds i8, ptr %.sroa.0214.0337, i64 -8 ; 2 uses
  %i.gu = icmp ne i64 %.063344, 0
  %.neg = sext i1 %i.gu to i64
  %i.gv = add i64 %.063344, %.neg                 ; 2 uses
  %i.gw = icmp ne i64 %i.bg, 0
  %.neg69 = sext i1 %i.gw to i64
  %i.gx = add i64 %.sroa.speculated277, %.neg69   ; 2 uses
  %i.gy = add i64 %.0288343, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gy, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !4845

.thread.loopexit:                                 ; preds = %bb.f, %.sink.split.i
  %i.gz = phi ptr [ %i.bj, %.sink.split.i ], [ %i.ak, %bb.f ]
  %.4 = phi i64 [ %i.gx, %.sink.split.i ], [ %.sroa.speculated277, %bb.f ]
  %.sroa.0214.0.lcssa.ph = phi ptr [ %i.gt, %.sink.split.i ], [ %.sroa.0214.0337, %bb.f ]
  %.sroa.0224.0.lcssa.ph = phi ptr [ %.sroa.0224.2, %.sink.split.i ], [ %.sroa.0224.0339, %bb.f ]
  %.sroa.0239.0.lcssa.ph = phi ptr [ %.sroa.0239.2, %.sink.split.i ], [ %.sroa.0239.0340, %bb.f ]
  %.sroa.0253.0.lcssa.ph = phi ptr [ %.sroa.0253.3, %.sink.split.i ], [ %.sroa.0253.0341, %bb.f ]
  %.sroa.0264.0.lcssa.ph = phi ptr [ %.sroa.0264.1, %.sink.split.i ], [ %.sroa.0264.0342, %bb.f ]
  %.0288.lcssa.ph = phi i64 [ 0, %.sink.split.i ], [ %.0288343, %bb.f ]
  %.063.lcssa.ph = phi i64 [ %i.gv, %.sink.split.i ], [ %.063344, %bb.f ]
  %.060.lcssa.ph = phi i8 [ %.262, %.sink.split.i ], [ %.060345, %bb.f ]
  %i.ha = trunc nuw i8 %.060.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.hb = phi ptr [ %i.i, %bb.a ], [ %i.gz, %.thread.loopexit ] ; 8 uses
  %.1395 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.sroa.0214.0.lcssa = phi ptr [ %i.b, %bb.a ], [ %.sroa.0214.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.sroa.0224.0.lcssa = phi ptr [ %i.i, %bb.a ], [ %.sroa.0224.0.lcssa.ph, %.thread.loopexit ] ; 8 uses
  %.sroa.0239.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %.sroa.0239.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.sroa.0253.0.lcssa = phi ptr [ %i.g, %bb.a ], [ %.sroa.0253.0.lcssa.ph, %.thread.loopexit ] ; 4 uses
  %.sroa.0264.0.lcssa = phi ptr [ %i.d, %bb.a ], [ %.sroa.0264.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0288.lcssa = phi i64 [ 0, %bb.a ], [ %.0288.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.063.lcssa = phi i64 [ %i.n, %bb.a ], [ %.063.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.060.lcssa = phi i1 [ true, %bb.a ], [ %i.ha, %.thread.loopexit ]
  %i.hc = icmp eq ptr %.sroa.0224.0.lcssa, %.sroa.0253.0.lcssa ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  store ptr %i.l, ptr %32, align 8, !tbaa !441
  %.neg309 = mul i64 %6, -4                       ; 2 uses
  %i.hd = getelementptr inbounds i8, ptr %i.l, i64 %.neg309 ; 7 uses
  %i.he = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.he, i1 %.060.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.hc, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not1.i = icmp eq ptr %.sroa.0239.0.lcssa, %.sroa.0224.0.lcssa
  br i1 %.not1.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %.lr.ph.i86

.lr.ph.i86:                                       ; preds = %bb.ad
  %i.hf = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !296, !noalias !4900
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i86
  %i.hh = phi ptr [ %.sroa.0239.0.lcssa, %.lr.ph.i86 ], [ %i.hi, %bb.af ] ; 2 uses
  %i.hi = getelementptr inbounds i8, ptr %i.hh, i64 -4 ; 4 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !296, !noalias !4900
  %i.hk = icmp slt i32 %i.hj, %i.hg
  br i1 %i.hk, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.i87 = icmp eq ptr %i.hi, %.sroa.0224.0.lcssa
  br i1 %.not.i87, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !81

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.lcssa.i = phi ptr [ %.sroa.0239.0.lcssa, %bb.ad ], [ %i.hh, %bb.ae ], [ %i.hi, %bb.af ] ; 8 uses
  %i.hl = ptrtoint ptr %.lcssa.i to i64           ; 2 uses
  %i.hm = ptrtoint ptr %.sroa.0224.0.lcssa to i64 ; 2 uses
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = getelementptr i8, ptr %i.hb, i64 %i.hn  ; 7 uses
  %.not1.i.i88 = icmp eq ptr %.lcssa.i, %.sroa.0224.0.lcssa
  br i1 %.not1.i.i88, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit93, label %.lr.ph.i.i89.preheader

.lr.ph.i.i89.preheader:                           ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit
  %i.hp = add i64 %i.hl, -4
  %i.hq = sub i64 %i.hp, %i.hm                    ; 4 uses
  %i.hr = lshr i64 %i.hq, 2
  %i.hs = add nuw nsw i64 %i.hr, 1                ; 2 uses
  %min.iters.check558 = icmp ult i64 %i.hq, 60
  br i1 %min.iters.check558, label %.lr.ph.i.i89.preheader661, label %vector.memcheck559

vector.memcheck559:                               ; preds = %.lr.ph.i.i89.preheader
  %.not642.a = and i64 %i.hq, -4
  %i.ht = xor i64 %.not642.a, -4
  %i.hu = getelementptr i8, ptr %.lcssa.i, i64 %i.ht
  %i.hv = and i64 %i.hq, 3
  %i.hw = getelementptr i8, ptr %i.hb, i64 %i.hv
  %bound0560 = icmp ult ptr %i.hu, %i.ho
end_hunk_9
