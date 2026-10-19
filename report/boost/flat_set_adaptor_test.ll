Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_set_adaptor_test?download=true
inline.NumInlined: 24951
inline.NumDeleted: 2813
loop-unroll.NumCompletelyUnrolled: 140
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 315
begin_hunk_0_@_ZN5boost7movelib10rotate_gcdIPiEET_S3_S3_S3_:bb.a
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
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
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
  %.idx207 = shl i64 %2, 2                        ; 5 uses
  %.not121 = icmp eq i64 %6, 0
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f
  %.not2830.i = icmp eq i64 %2, 0
  %scevgep = getelementptr i8, ptr %7, i64 %.idx207 ; 2 uses
  %scevgep330.a = getelementptr i8, ptr %7, i64 4
  %i.o = shl i64 %3, 2                            ; 2 uses
  %i.p = add i64 %i.o, %i.b
  %i.q = add i64 %i.p, %.idx207
  %i.r = add i64 %i.q, -4                         ; 2 uses
  %i.s = shl i64 %2, 2
  %i.t = shl i64 %2, 2
  %i.u = getelementptr i8, ptr %1, i64 %i.o
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %i.w = add i64 %.idx207, -4                     ; 2 uses
  %i.x = lshr exact i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 60
  %bound0297 = icmp ult ptr %7, %i.j
  %bound1298 = icmp ult ptr %i.h, %scevgep
  %found.conflict299 = and i1 %bound0297, %bound1298
  %stride.check = icmp slt i64 %.idx207, 0
  %i.z = or i1 %found.conflict299, %stride.check
  %n.vec = and i64 %i.y, 9223372036854775800      ; 3 uses
  %i.aa = shl i64 %n.vec, 2                       ; 3 uses
  %i.ab = getelementptr i8, ptr %7, i64 %i.aa     ; 2 uses
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.x ] ; 3 uses
  %i.ac = phi ptr [ %7, %.lr.ph ], [ %i.gv, %bb.x ] ; 5 uses
  %i.ad = phi ptr [ %7, %.lr.ph ], [ %i.gw, %bb.x ] ; 7 uses
  %i.ae = phi ptr [ %i.h, %.lr.ph ], [ %i.bg, %bb.x ] ; 9 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.he, %bb.x ] ; 3 uses
  %.0226 = phi i64 [ %5, %.lr.ph ], [ %.1, %bb.x ] ; 2 uses
  %.0104225 = phi i64 [ %i.l, %.lr.ph ], [ %i.hc, %bb.x ] ; 4 uses
  %.0106222 = phi ptr [ %0, %.lr.ph ], [ %i.ha, %bb.x ] ; 16 uses
  %.0108221 = phi i8 [ 1, %.lr.ph ], [ %.1109, %bb.x ] ; 5 uses
  %.0111219 = phi ptr [ %i.h, %.lr.ph ], [ %i.gz, %bb.x ] ; 5 uses
  %.0114218 = phi ptr [ %1, %.lr.ph ], [ %.1115, %bb.x ] ; 8 uses
  %.0190217 = phi ptr [ %i.g, %.lr.ph ], [ %.2192, %bb.x ] ; 16 uses
  %.0194216 = phi i64 [ %i.f, %.lr.ph ], [ %i.hf, %bb.x ] ; 4 uses
  %i.af = mul i64 %i.t, %indvar
  %i.ag = add i64 %i.r, %i.af                     ; 3 uses
  %i.ah = mul i64 %i.s, %indvar                   ; 2 uses
  %i.ai = add i64 %i.r, %i.ah
  %scevgep332.a = getelementptr i8, ptr %i.v, i64 %i.ah
  %i.aj = ptrtoaddr ptr %i.ac to i64
  %.0114218313 = ptrtoaddr ptr %.0114218 to i64
  %i.ak = ptrtoaddr ptr %i.ad to i64              ; 2 uses
  %i.al = icmp ult i64 %.0104225, %.0
  br i1 %i.al, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.ba, %.thread24.i ], [ %.0104225, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.az, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.am = mul i64 %.02226.i, %2
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.am
  %i.ao = mul i64 %.027.i, %2
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ao
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.0106222, i64 %.02226.i
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.0106222, i64 %.027.i
  %i.as = load i32, ptr %i.ap, align 4, !tbaa !296 ; 2 uses
  %i.at = load i32, ptr %i.an, align 4, !tbaa !296 ; 2 uses
  %i.au = icmp slt i32 %i.as, %i.at
  br i1 %i.au, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.av = icmp slt i32 %i.at, %i.as
  br i1 %i.av, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = load i32, ptr %i.ar, align 4, !tbaa !296
  %i.ax = load i32, ptr %i.aq, align 4, !tbaa !296
  %i.ay = icmp slt i32 %i.aw, %i.ax
  %cond.fr.i = freeze i1 %i.ay
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.az = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.ba = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ba, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit, label %.lr.ph.i, !llvm.loop !52

_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.az, %.thread24.i ] ; 7 uses
  %i.bb = add i64 %.022.lcssa.i, 2
  %i.bc = call i64 @llvm.umax.i64(i64 %.0, i64 %i.bb) ; 2 uses
  %.sroa.speculated179 = call i64 @llvm.umin.i64(i64 %i.bc, i64 %.0194216)
  %i.bd = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bd, 2
  %i.be = getelementptr i8, ptr %i.ae, i64 %.idx  ; 10 uses
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %2 ; 3 uses
  %i.bg = getelementptr i8, ptr %i.ae, i64 %.idx207 ; 8 uses
  %i.bh = icmp eq ptr %i.ad, %i.ac
  %.not120 = icmp eq i64 %.0226, 0
  br i1 %.not120, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit
  br i1 %.not121, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = load i32, ptr %i.j, align 4, !tbaa !296
  %i.bj = load i32, ptr %i.be, align 4, !tbaa !296
  %i.bk = icmp slt i32 %i.bi, %i.bj
  br i1 %i.bk, label %.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old123 = trunc nuw i8 %.0108221 to i1
  br i1 %.old123, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit
  %.idx208 = shl nuw nsw i64 %.022.lcssa.i, 2
  %i.bl = getelementptr inbounds nuw i8, ptr %.0106222, i64 %.idx208 ; 13 uses
  %i.bm = icmp eq ptr %.0190217, %i.n
  br i1 %i.bm, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bn = trunc nuw i8 %.0108221 to i1
  br i1 %i.bn, label %bb.j, label %.thread276

.thread276:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.bo = load i32, ptr %i.bl, align 4, !tbaa !296
  %i.bp = load i32, ptr %.0190217, align 4, !tbaa !296
  %i.bq = icmp slt i32 %i.bo, %i.bp               ; 4 uses
  %i.br = trunc nuw i8 %.0108221 to i1            ; 2 uses
  %i.bs = xor i1 %i.bq, %i.br
  br i1 %i.bs, label %bb.n, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.bt = phi i1 [ true, %._crit_edge ], [ %i.bq, %bb.i ]
  br i1 %i.bh, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.bu = add i64 %i.aj, -4
  %i.bv = sub i64 %i.bu, %i.ak                    ; 2 uses
  %i.bw = lshr i64 %i.bv, 2
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %min.iters.check315 = icmp ult i64 %i.bv, 28
  %i.by = sub i64 %i.ak, %.0114218313
  %diff.check = icmp ugt i64 %i.by, -32
  %or.cond = select i1 %min.iters.check315, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader436, label %vector.ph316

vector.ph316:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec317 = and i64 %i.bx, 9223372036854775800  ; 3 uses
  %i.bz = shl i64 %n.vec317, 2                    ; 2 uses
  %i.ca = getelementptr i8, ptr %.0114218, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ad, i64 %i.bz
  br label %vector.body318

vector.body318:                                   ; preds = %vector.body318, %vector.ph316
  %index319 = phi i64 [ 0, %vector.ph316 ], [ %index.next324, %vector.body318 ] ; 2 uses
  %i.cc = shl i64 %index319, 2                    ; 2 uses
  %next.gep320.a = getelementptr i8, ptr %.0114218, i64 %i.cc ; 2 uses
  %next.gep321 = getelementptr i8, ptr %i.ad, i64 %i.cc ; 2 uses
  %i.cd = getelementptr i8, ptr %next.gep321, i64 16
  %wide.load322.a = load <4 x i32>, ptr %next.gep321, align 4, !tbaa !296
  %wide.load323 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !296
  %i.ce = getelementptr i8, ptr %next.gep320.a, i64 16
  store <4 x i32> %wide.load322.a, ptr %next.gep320.a, align 4, !tbaa !296
  store <4 x i32> %wide.load323, ptr %i.ce, align 4, !tbaa !296
  %index.next324 = add nuw i64 %index319, 8       ; 2 uses
  %i.cf = icmp eq i64 %index.next324, %n.vec317
  br i1 %i.cf, label %middle.block325, label %vector.body318, !llvm.loop !3161

middle.block325:                                  ; preds = %vector.body318
  %cmp.n326 = icmp eq i64 %i.bx, %n.vec317
  br i1 %cmp.n326, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit, label %.lr.ph.i.i.preheader436

.lr.ph.i.i.preheader436:                          ; preds = %.lr.ph.i.i.preheader, %middle.block325
  %.010.i.i.ph = phi ptr [ %.0114218, %.lr.ph.i.i.preheader ], [ %i.ca, %middle.block325 ]
  %.079.i.i.ph = phi ptr [ %i.ad, %.lr.ph.i.i.preheader ], [ %i.cb, %middle.block325 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader436, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ci, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader436 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.ch, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader436 ] ; 2 uses
  %i.cg = load i32, ptr %.079.i.i, align 4, !tbaa !296
  store i32 %i.cg, ptr %.010.i.i, align 4, !tbaa !296
  %i.ch = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.ch, %i.ac
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit, label %.lr.ph.i.i, !llvm.loop !3162

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit: ; preds = %.lr.ph.i.i, %middle.block325, %bb.j
  store ptr %7, ptr %i.c, align 8, !tbaa !299
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit
  br i1 %.not2830.i, label %._crit_edge.i, label %.lr.ph.i125.preheader

.lr.ph.i125.preheader:                            ; preds = %.preheader.i
  br i1 %min.iters.check, label %.lr.ph.i125.preheader435, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i125.preheader
  %bound0 = icmp ult ptr %7, %i.bf
  %bound1 = icmp ult ptr %i.be, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.z
  %bound0300 = icmp ult ptr %i.be, %i.j
  %bound1301 = icmp ult ptr %i.h, %i.bf
  %found.conflict302 = and i1 %bound0300, %bound1301
  %conflict.rdx304 = or i1 %found.conflict302, %conflict.rdx
  br i1 %conflict.rdx304, label %.lr.ph.i125.preheader435, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cj = getelementptr i8, ptr %i.be, i64 %i.aa
  %i.ck = getelementptr i8, ptr %i.ae, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cl = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %7, i64 %i.cl ; 2 uses
  %next.gep305.a = getelementptr i8, ptr %i.be, i64 %i.cl ; 3 uses
  %next.gep306 = getelementptr i8, ptr %i.ae, i64 %i.cl ; 2 uses
  %i.cm = getelementptr i8, ptr %next.gep305.a, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep305.a, align 4, !tbaa !296, !alias.scope !3194, !noalias !3195
  %wide.load307.a = load <4 x i32>, ptr %i.cm, align 4, !tbaa !296, !alias.scope !3194, !noalias !3195
  %i.cn = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !296, !alias.scope !3196, !noalias !3197
  store <4 x i32> %wide.load307.a, ptr %i.cn, align 4, !tbaa !296, !alias.scope !3196, !noalias !3197
  %i.co = getelementptr i8, ptr %next.gep306, i64 16
  %wide.load308.a = load <4 x i32>, ptr %next.gep306, align 4, !tbaa !296, !alias.scope !3195
  %wide.load309 = load <4 x i32>, ptr %i.co, align 4, !tbaa !296, !alias.scope !3195
  store <4 x i32> %wide.load308.a, ptr %next.gep305.a, align 4, !tbaa !296, !alias.scope !3194, !noalias !3195
  store <4 x i32> %wide.load309, ptr %i.cm, align 4, !tbaa !296, !alias.scope !3194, !noalias !3195
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !3167

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i125.preheader435

.lr.ph.i125.preheader435:                         ; preds = %vector.memcheck, %.lr.ph.i125.preheader, %middle.block
  %.033.i.ph = phi ptr [ %7, %vector.memcheck ], [ %7, %.lr.ph.i125.preheader ], [ %i.ab, %middle.block ] ; 2 uses
  %.02032.i.ph = phi ptr [ %i.be, %vector.memcheck ], [ %i.be, %.lr.ph.i125.preheader ], [ %i.cj, %middle.block ] ; 2 uses
  %.02131.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i125.preheader ], [ %i.ck, %middle.block ] ; 3 uses
  %.02131.i.ph441 = ptrtoaddr ptr %.02131.i.ph to i64
  %i.cq = sub i64 %i.ag, %.02131.i.ph441          ; 2 uses
  %i.cr = lshr i64 %i.cq, 2
  %i.cs = add nuw nsw i64 %i.cr, 1
  %xtraiter442 = and i64 %i.cs, 3                 ; 2 uses
  %lcmp.mod443.not = icmp eq i64 %xtraiter442, 0
  br i1 %lcmp.mod443.not, label %.lr.ph.i125.prol.loopexit, label %.lr.ph.i125.prol

.lr.ph.i125.prol:                                 ; preds = %.lr.ph.i125.preheader435, %.lr.ph.i125.prol
  %.033.i.prol = phi ptr [ %i.cv, %.lr.ph.i125.prol ], [ %.033.i.ph, %.lr.ph.i125.preheader435 ] ; 2 uses
  %.02032.i.prol = phi ptr [ %i.cu, %.lr.ph.i125.prol ], [ %.02032.i.ph, %.lr.ph.i125.preheader435 ] ; 3 uses
  %.02131.i.prol = phi ptr [ %i.ct, %.lr.ph.i125.prol ], [ %.02131.i.ph, %.lr.ph.i125.preheader435 ] ; 2 uses
  %prol.iter444 = phi i64 [ %prol.iter444.next, %.lr.ph.i125.prol ], [ 0, %.lr.ph.i125.preheader435 ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.02131.i.prol, i64 4 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.02032.i.prol, i64 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.033.i.prol, i64 4 ; 3 uses
  %i.cw = load i32, ptr %.02032.i.prol, align 4, !tbaa !296
  store i32 %i.cw, ptr %.033.i.prol, align 4, !tbaa !296
  %i.cx = load i32, ptr %.02131.i.prol, align 4, !tbaa !296
  store i32 %i.cx, ptr %.02032.i.prol, align 4, !tbaa !296
  %prol.iter444.next = add i64 %prol.iter444, 1   ; 2 uses
  %prol.iter444.cmp.not = icmp eq i64 %prol.iter444.next, %xtraiter442
  br i1 %prol.iter444.cmp.not, label %.lr.ph.i125.prol.loopexit, label %.lr.ph.i125.prol, !llvm.loop !3168

.lr.ph.i125.prol.loopexit:                        ; preds = %.lr.ph.i125.prol, %.lr.ph.i125.preheader435
  %.lcssa439.unr = phi ptr [ poison, %.lr.ph.i125.preheader435 ], [ %i.cv, %.lr.ph.i125.prol ]
  %.033.i.unr = phi ptr [ %.033.i.ph, %.lr.ph.i125.preheader435 ], [ %i.cv, %.lr.ph.i125.prol ]
  %.02032.i.unr = phi ptr [ %.02032.i.ph, %.lr.ph.i125.preheader435 ], [ %i.cu, %.lr.ph.i125.prol ]
  %.02131.i.unr = phi ptr [ %.02131.i.ph, %.lr.ph.i125.preheader435 ], [ %i.ct, %.lr.ph.i125.prol ]
  %i.cy = icmp ult i64 %i.cq, 12
  br i1 %i.cy, label %._crit_edge.i, label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %.lr.ph.i125.prol.loopexit, %.lr.ph.i125
  %.033.i = phi ptr [ %i.dq, %.lr.ph.i125 ], [ %.033.i.unr, %.lr.ph.i125.prol.loopexit ] ; 5 uses
  %.02032.i = phi ptr [ %i.dp, %.lr.ph.i125 ], [ %.02032.i.unr, %.lr.ph.i125.prol.loopexit ] ; 6 uses
  %.02131.i = phi ptr [ %i.do, %.lr.ph.i125 ], [ %.02131.i.unr, %.lr.ph.i125.prol.loopexit ] ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.02131.i, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %.02032.i, i64 4 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.033.i, i64 4
  %i.dc = load i32, ptr %.02032.i, align 4, !tbaa !296
  store i32 %i.dc, ptr %.033.i, align 4, !tbaa !296
  %i.dd = load i32, ptr %.02131.i, align 4, !tbaa !296
  store i32 %i.dd, ptr %.02032.i, align 4, !tbaa !296
  %i.de = getelementptr inbounds nuw i8, ptr %.02131.i, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %.02032.i, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.033.i, i64 8
  %i.dh = load i32, ptr %i.da, align 4, !tbaa !296
  store i32 %i.dh, ptr %i.db, align 4, !tbaa !296
  %i.di = load i32, ptr %i.cz, align 4, !tbaa !296
  store i32 %i.di, ptr %i.da, align 4, !tbaa !296
  %i.dj = getelementptr inbounds nuw i8, ptr %.02131.i, i64 12
  %i.dk = getelementptr inbounds nuw i8, ptr %.02032.i, i64 12 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.033.i, i64 12
  %i.dm = load i32, ptr %i.df, align 4, !tbaa !296
  store i32 %i.dm, ptr %i.dg, align 4, !tbaa !296
  %i.dn = load i32, ptr %i.de, align 4, !tbaa !296
  store i32 %i.dn, ptr %i.df, align 4, !tbaa !296
  %i.do = getelementptr inbounds nuw i8, ptr %.02131.i, i64 16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.02032.i, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %.033.i, i64 16 ; 2 uses
  %i.dr = load i32, ptr %i.dk, align 4, !tbaa !296
  store i32 %i.dr, ptr %i.dl, align 4, !tbaa !296
  %i.ds = load i32, ptr %i.dj, align 4, !tbaa !296
  store i32 %i.ds, ptr %i.dk, align 4, !tbaa !296
  %.not28.i.3 = icmp eq ptr %i.do, %i.bg
  br i1 %.not28.i.3, label %._crit_edge.i, label %.lr.ph.i125, !llvm.loop !3169

._crit_edge.i:                                    ; preds = %.lr.ph.i125.prol.loopexit, %.lr.ph.i125, %middle.block, %.preheader.i
  %.0.lcssa.i = phi ptr [ %7, %.preheader.i ], [ %i.ab, %middle.block ], [ %.lcssa439.unr, %.lr.ph.i125.prol.loopexit ], [ %i.dq, %.lr.ph.i125 ] ; 2 uses
  %.not29.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  %i.dt = load i32, ptr %i.bl, align 4, !tbaa !296
  %i.du = load i32, ptr %.0106222, align 4, !tbaa !296
  store i32 %i.du, ptr %i.bl, align 4, !tbaa !296
  store i32 %i.dt, ptr %.0106222, align 4, !tbaa !296
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %i.dv = icmp eq ptr %i.bl, %.0190217
  br i1 %i.dv, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dw = icmp eq ptr %.0190217, %.0106222
  %spec.select = select i1 %i.dw, ptr %i.bl, ptr %.0190217
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit: ; preds = %bb.m, %bb.l, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit
  %.5 = phi ptr [ %.0190217, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ], [ %spec.select, %bb.m ], [ %.0106222, %bb.l ]
  %.1.i = phi ptr [ %7, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ], [ %.0.lcssa.i, %bb.m ], [ %.0.lcssa.i, %bb.l ] ; 2 uses
  store ptr %.1.i, ptr %i.d, align 8, !tbaa !299
  br label %bb.x

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br i1 %i.br, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dx = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_(ptr noundef %.0114218, ptr noundef %.0111219, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.bg, ptr noundef %i.be, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit

bb.p:                                             ; preds = %.thread276, %bb.n
  %i.dy = phi i1 [ true, %.thread276 ], [ %i.bq, %bb.n ]
  store ptr %8, ptr %9, align 8, !tbaa !439
  %i.dz = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPiS3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_(ptr noundef %.0114218, ptr noundef %.0111219, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.bg, ptr noundef %i.be, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dead_on_return %9)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit: ; preds = %bb.o, %bb.p
  %i.ea = phi i1 [ %i.bq, %bb.o ], [ %i.dy, %bb.p ]
  %i.eb = phi i1 [ true, %bb.o ], [ false, %bb.p ]
  %i.ec = phi ptr [ %i.dx, %bb.o ], [ %i.dz, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.ed = load ptr, ptr %i.c, align 8, !tbaa !299 ; 4 uses
  %i.ee = load ptr, ptr %i.d, align 8, !tbaa !299 ; 4 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee                ; 2 uses
  br i1 %i.ef, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit
  store ptr %7, ptr %i.c, align 8, !tbaa !299
  %i.eg = load ptr, ptr %i.e, align 8, !tbaa !299 ; 10 uses
  %i.eh = ptrtoint ptr %i.bg to i64
  %i.ei = ptrtoint ptr %i.eg to i64               ; 3 uses
  %i.ej = sub i64 %i.eh, %i.ei                    ; 2 uses
  %i.ek = ashr exact i64 %i.ej, 2
  %i.el = sub nsw i64 0, %i.ek
  %i.em = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.el ; 7 uses
  %.not.i126 = icmp eq ptr %i.eg, %i.em
  br i1 %.not.i126, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140, label %.preheader.i127

.preheader.i127:                                  ; preds = %bb.q
  %.not2830.i128 = icmp eq ptr %i.eg, %i.bg
  br i1 %.not2830.i128, label %._crit_edge.i134, label %.lr.ph.i129.preheader

.lr.ph.i129.preheader:                            ; preds = %.preheader.i127
  %i.en = sub i64 %i.ag, %i.ei                    ; 2 uses
  %i.eo = lshr i64 %i.en, 2
  %i.ep = add nuw nsw i64 %i.eo, 1                ; 2 uses
  %min.iters.check348 = icmp ult i64 %i.en, 76
  br i1 %min.iters.check348, label %.lr.ph.i129.preheader437, label %vector.memcheck329

vector.memcheck329:                               ; preds = %.lr.ph.i129.preheader
  %i.eq = sub i64 %i.ai, %i.ei
  %i.er = and i64 %i.eq, -4                       ; 3 uses
  %scevgep331 = getelementptr i8, ptr %scevgep330.a, i64 %i.er ; 2 uses
  %i.es = shl i64 %.022.lcssa.i, 2
  %i.et = add i64 %i.es, 4
  %i.eu = mul i64 %2, %i.et
  %i.ev = add i64 %i.eu, %i.er
  %i.ew = sub i64 %i.ev, %i.ej
  %scevgep333.a = getelementptr i8, ptr %scevgep332.a, i64 %i.ew ; 2 uses
  %scevgep334.a = getelementptr i8, ptr %i.eg, i64 4
  %scevgep335 = getelementptr i8, ptr %scevgep334.a, i64 %i.er ; 2 uses
  %bound0336 = icmp ult ptr %7, %scevgep333.a
  %bound1337 = icmp ult ptr %i.em, %scevgep331
  %found.conflict338 = and i1 %bound0336, %bound1337
  %bound0339 = icmp ult ptr %7, %scevgep335
  %bound1340 = icmp ult ptr %i.eg, %scevgep331
  %found.conflict341 = and i1 %bound0339, %bound1340
  %conflict.rdx342 = or i1 %found.conflict338, %found.conflict341
  %bound0343 = icmp ult ptr %i.em, %scevgep335
  %bound1344 = icmp ult ptr %i.eg, %scevgep333.a
  %found.conflict345 = and i1 %bound0343, %bound1344
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_NS0_7swap_opES3_EEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_T3_T4_:bb.a

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.x ] ; 3 uses
  %i.ab = phi ptr [ %7, %.lr.ph ], [ %i.hb, %bb.x ] ; 5 uses
  %i.ac = phi ptr [ %7, %.lr.ph ], [ %i.hc, %bb.x ] ; 10 uses
  %i.ad = phi ptr [ %i.f, %.lr.ph ], [ %i.bf, %bb.x ] ; 9 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.hk, %bb.x ] ; 3 uses
  %.0227 = phi i64 [ %5, %.lr.ph ], [ %.1, %bb.x ] ; 2 uses
  %.0104226 = phi i64 [ %i.k, %.lr.ph ], [ %i.hi, %bb.x ] ; 4 uses
  %.0106223 = phi ptr [ %0, %.lr.ph ], [ %i.hg, %bb.x ] ; 16 uses
  %.0108222 = phi i8 [ 1, %.lr.ph ], [ %.1109, %bb.x ] ; 5 uses
  %.0111220 = phi ptr [ %i.f, %.lr.ph ], [ %i.hf, %bb.x ] ; 5 uses
  %.0114219 = phi ptr [ %1, %.lr.ph ], [ %.1115, %bb.x ] ; 10 uses
  %.0191218 = phi ptr [ %i.e, %.lr.ph ], [ %.2193, %bb.x ] ; 16 uses
  %.0195217 = phi i64 [ %i.d, %.lr.ph ], [ %i.hl, %bb.x ] ; 4 uses
  %i.ae = mul i64 %i.s, %indvar
  %i.af = add i64 %i.q, %i.ae                     ; 3 uses
  %i.ag = mul i64 %i.r, %indvar                   ; 2 uses
  %i.ah = add i64 %i.q, %i.ag
  %scevgep344.a = getelementptr i8, ptr %i.u, i64 %i.ag
  %i.ai = ptrtoaddr ptr %i.ab to i64              ; 2 uses
  %i.aj = ptrtoaddr ptr %i.ac to i64              ; 2 uses
  %i.ak = icmp ult i64 %.0104226, %.0
  br i1 %i.ak, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.az, %.thread24.i ], [ %.0104226, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.ay, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.al = mul i64 %.02226.i, %2
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.al
  %i.an = mul i64 %.027.i, %2
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.an
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.0106223, i64 %.02226.i
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.0106223, i64 %.027.i
  %i.ar = load i32, ptr %i.ao, align 4, !tbaa !296 ; 2 uses
  %i.as = load i32, ptr %i.am, align 4, !tbaa !296 ; 2 uses
  %i.at = icmp slt i32 %i.ar, %i.as
  br i1 %i.at, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.au = icmp slt i32 %i.as, %i.ar
  br i1 %i.au, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = load i32, ptr %i.aq, align 4, !tbaa !296
  %i.aw = load i32, ptr %i.ap, align 4, !tbaa !296
  %i.ax = icmp slt i32 %i.av, %i.aw
  %cond.fr.i = freeze i1 %i.ax
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.ay = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.az = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.az, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit, label %.lr.ph.i, !llvm.loop !52

_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.ay, %.thread24.i ] ; 7 uses
  %i.ba = add i64 %.022.lcssa.i, 2
  %i.bb = call i64 @llvm.umax.i64(i64 %.0, i64 %i.ba) ; 2 uses
  %.sroa.speculated180 = call i64 @llvm.umin.i64(i64 %i.bb, i64 %.0195217)
  %i.bc = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bc, 2
  %i.bd = getelementptr i8, ptr %i.ad, i64 %.idx  ; 10 uses
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %2 ; 3 uses
  %i.bf = getelementptr i8, ptr %i.ad, i64 %.idx208 ; 8 uses
  %i.bg = icmp eq ptr %i.ac, %i.ab
  %.not120 = icmp eq i64 %.0227, 0
  br i1 %.not120, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit
  br i1 %.not121, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = load i32, ptr %i.h, align 4, !tbaa !296
  %i.bi = load i32, ptr %i.bd, align 4, !tbaa !296
  %i.bj = icmp slt i32 %i.bh, %i.bi
  br i1 %i.bj, label %.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old123 = trunc nuw i8 %.0108222 to i1
  br i1 %.old123, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit
  %.idx209 = shl nuw nsw i64 %.022.lcssa.i, 2
  %i.bk = getelementptr inbounds nuw i8, ptr %.0106223, i64 %.idx209 ; 13 uses
  %i.bl = icmp eq ptr %.0191218, %i.m
  br i1 %i.bl, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bm = trunc nuw i8 %.0108222 to i1
  br i1 %i.bm, label %bb.j, label %.thread281

.thread281:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.bn = load i32, ptr %i.bk, align 4, !tbaa !296
  %i.bo = load i32, ptr %.0191218, align 4, !tbaa !296
  %i.bp = icmp slt i32 %i.bn, %i.bo               ; 4 uses
  %i.bq = trunc nuw i8 %.0108222 to i1            ; 2 uses
  %i.br = xor i1 %i.bp, %i.bq
  br i1 %i.br, label %bb.n, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.bs = phi i1 [ true, %._crit_edge ], [ %i.bp, %bb.i ]
  br i1 %i.bg, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.bt = add i64 %i.ai, -4
  %i.bu = sub i64 %i.bt, %i.aj                    ; 2 uses
  %i.bv = lshr i64 %i.bu, 2
  %i.bw = add nuw nsw i64 %i.bv, 1                ; 2 uses
  %min.iters.check325 = icmp ult i64 %i.bu, 28
  br i1 %min.iters.check325, label %.lr.ph.i.i.preheader467, label %vector.memcheck316

vector.memcheck316:                               ; preds = %.lr.ph.i.i.preheader
  %scevgep317.a = getelementptr i8, ptr %i.ac, i64 4
  %i.bx = add i64 %i.ai, -4
  %i.by = sub i64 %i.bx, %i.aj
  %i.bz = and i64 %i.by, -4                       ; 2 uses
  %scevgep318.a = getelementptr i8, ptr %scevgep317.a, i64 %i.bz
  %scevgep319.a = getelementptr i8, ptr %.0114219, i64 4
  %scevgep320 = getelementptr i8, ptr %scevgep319.a, i64 %i.bz
  %bound0321 = icmp ult ptr %i.ac, %scevgep320
  %bound1322 = icmp ult ptr %.0114219, %scevgep318.a
  %found.conflict323 = and i1 %bound0321, %bound1322
  br i1 %found.conflict323, label %.lr.ph.i.i.preheader467, label %vector.ph326

vector.ph326:                                     ; preds = %vector.memcheck316
  %n.vec327 = and i64 %i.bw, 9223372036854775800  ; 3 uses
  %i.ca = shl i64 %n.vec327, 2                    ; 2 uses
  %i.cb = getelementptr i8, ptr %.0114219, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.ac, i64 %i.ca
  br label %vector.body328

vector.body328:                                   ; preds = %vector.body328, %vector.ph326
  %index329 = phi i64 [ 0, %vector.ph326 ], [ %index.next336, %vector.body328 ] ; 2 uses
  %i.cd = shl i64 %index329, 2                    ; 2 uses
  %next.gep330.a = getelementptr i8, ptr %.0114219, i64 %i.cd ; 3 uses
  %next.gep331 = getelementptr i8, ptr %i.ac, i64 %i.cd ; 3 uses
  %i.ce = getelementptr i8, ptr %next.gep331, i64 16 ; 2 uses
  %wide.load332.a = load <4 x i32>, ptr %next.gep331, align 4, !tbaa !296, !alias.scope !3253, !noalias !3254
  %wide.load333.a = load <4 x i32>, ptr %i.ce, align 4, !tbaa !296, !alias.scope !3253, !noalias !3254
  %i.cf = getelementptr i8, ptr %next.gep330.a, i64 16 ; 2 uses
  %wide.load334.a = load <4 x i32>, ptr %next.gep330.a, align 4, !tbaa !296, !alias.scope !3254
  %wide.load335 = load <4 x i32>, ptr %i.cf, align 4, !tbaa !296, !alias.scope !3254
  store <4 x i32> %wide.load334.a, ptr %next.gep331, align 4, !tbaa !296, !alias.scope !3253, !noalias !3254
  store <4 x i32> %wide.load335, ptr %i.ce, align 4, !tbaa !296, !alias.scope !3253, !noalias !3254
  store <4 x i32> %wide.load332.a, ptr %next.gep330.a, align 4, !tbaa !296, !alias.scope !3254
  store <4 x i32> %wide.load333.a, ptr %i.cf, align 4, !tbaa !296, !alias.scope !3254
  %index.next336 = add nuw i64 %index329, 8       ; 2 uses
  %i.cg = icmp eq i64 %index.next336, %n.vec327
  br i1 %i.cg, label %middle.block337, label %vector.body328, !llvm.loop !3210

middle.block337:                                  ; preds = %vector.body328
  %cmp.n338 = icmp eq i64 %i.bw, %n.vec327
  br i1 %cmp.n338, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit, label %.lr.ph.i.i.preheader467

.lr.ph.i.i.preheader467:                          ; preds = %vector.memcheck316, %.lr.ph.i.i.preheader, %middle.block337
  %.010.i.i.ph = phi ptr [ %.0114219, %vector.memcheck316 ], [ %.0114219, %.lr.ph.i.i.preheader ], [ %i.cb, %middle.block337 ]
  %.079.i.i.ph = phi ptr [ %i.ac, %vector.memcheck316 ], [ %i.ac, %.lr.ph.i.i.preheader ], [ %i.cc, %middle.block337 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader467, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ck, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader467 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.cj, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader467 ] ; 3 uses
  %i.ch = load i32, ptr %.079.i.i, align 4, !tbaa !296
  %i.ci = load i32, ptr %.010.i.i, align 4, !tbaa !296
  store i32 %i.ci, ptr %.079.i.i, align 4, !tbaa !296
  store i32 %i.ch, ptr %.010.i.i, align 4, !tbaa !296
  %i.cj = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.cj, %i.ab
  br i1 %.not.i.i, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit, label %.lr.ph.i.i, !llvm.loop !3211

_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit: ; preds = %.lr.ph.i.i, %middle.block337, %bb.j
  store ptr %7, ptr %i.a, align 8, !tbaa !299
  %.not.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit
  br i1 %.not2830.i, label %._crit_edge.i, label %.lr.ph.i125.preheader

.lr.ph.i125.preheader:                            ; preds = %.preheader.i
  br i1 %min.iters.check, label %.lr.ph.i125.preheader466, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i125.preheader
  %bound0 = icmp ult ptr %7, %i.be
  %bound1 = icmp ult ptr %i.bd, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.y
  %bound0305 = icmp ult ptr %i.bd, %i.h
  %bound1306 = icmp ult ptr %i.f, %i.be
  %found.conflict307 = and i1 %bound0305, %bound1306
  %conflict.rdx309 = or i1 %found.conflict307, %conflict.rdx
  br i1 %conflict.rdx309, label %.lr.ph.i125.preheader466, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cl = getelementptr i8, ptr %i.bd, i64 %i.z
  %i.cm = getelementptr i8, ptr %i.ad, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cn = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %7, i64 %i.cn ; 2 uses
  %next.gep310.a = getelementptr i8, ptr %i.bd, i64 %i.cn ; 2 uses
  %next.gep311 = getelementptr i8, ptr %i.ad, i64 %i.cn ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !296, !alias.scope !3255, !noalias !3256
  %wide.load312.a = load <4 x i32>, ptr %next.gep310.a, align 4, !tbaa !296, !alias.scope !3257, !noalias !3258
  store <4 x i32> %wide.load312.a, ptr %next.gep, align 4, !tbaa !296, !alias.scope !3255, !noalias !3256
  %wide.load313 = load <4 x i32>, ptr %next.gep311, align 4, !tbaa !296, !alias.scope !3258
  store <4 x i32> %wide.load313, ptr %next.gep310.a, align 4, !tbaa !296, !alias.scope !3257, !noalias !3258
  store <4 x i32> %wide.load, ptr %next.gep311, align 4, !tbaa !296, !alias.scope !3258
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !3216

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i125.preheader466

.lr.ph.i125.preheader466:                         ; preds = %vector.memcheck, %.lr.ph.i125.preheader, %middle.block
  %.033.i.ph = phi ptr [ %7, %vector.memcheck ], [ %7, %.lr.ph.i125.preheader ], [ %i.aa, %middle.block ] ; 2 uses
  %.02032.i.ph = phi ptr [ %i.bd, %vector.memcheck ], [ %i.bd, %.lr.ph.i125.preheader ], [ %i.cl, %middle.block ] ; 2 uses
  %.02131.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i125.preheader ], [ %i.cm, %middle.block ] ; 3 uses
  %.02131.i.ph472 = ptrtoaddr ptr %.02131.i.ph to i64
  %i.cp = sub i64 %i.af, %.02131.i.ph472          ; 2 uses
  %i.cq = lshr i64 %i.cp, 2
  %i.cr = add nuw nsw i64 %i.cq, 1
  %xtraiter473 = and i64 %i.cr, 3                 ; 2 uses
  %lcmp.mod474.not = icmp eq i64 %xtraiter473, 0
  br i1 %lcmp.mod474.not, label %.lr.ph.i125.prol.loopexit, label %.lr.ph.i125.prol

.lr.ph.i125.prol:                                 ; preds = %.lr.ph.i125.preheader466, %.lr.ph.i125.prol
  %.033.i.prol = phi ptr [ %i.cu, %.lr.ph.i125.prol ], [ %.033.i.ph, %.lr.ph.i125.preheader466 ] ; 3 uses
  %.02032.i.prol = phi ptr [ %i.ct, %.lr.ph.i125.prol ], [ %.02032.i.ph, %.lr.ph.i125.preheader466 ] ; 3 uses
  %.02131.i.prol = phi ptr [ %i.cs, %.lr.ph.i125.prol ], [ %.02131.i.ph, %.lr.ph.i125.preheader466 ] ; 3 uses
  %prol.iter475 = phi i64 [ %prol.iter475.next, %.lr.ph.i125.prol ], [ 0, %.lr.ph.i125.preheader466 ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.02131.i.prol, i64 4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.02032.i.prol, i64 4 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.033.i.prol, i64 4 ; 3 uses
  %i.cv = load i32, ptr %.033.i.prol, align 4, !tbaa !296
  %i.cw = load i32, ptr %.02032.i.prol, align 4, !tbaa !296
  store i32 %i.cw, ptr %.033.i.prol, align 4, !tbaa !296
  %i.cx = load i32, ptr %.02131.i.prol, align 4, !tbaa !296
  store i32 %i.cx, ptr %.02032.i.prol, align 4, !tbaa !296
  store i32 %i.cv, ptr %.02131.i.prol, align 4, !tbaa !296
  %prol.iter475.next = add i64 %prol.iter475, 1   ; 2 uses
  %prol.iter475.cmp.not = icmp eq i64 %prol.iter475.next, %xtraiter473
  br i1 %prol.iter475.cmp.not, label %.lr.ph.i125.prol.loopexit, label %.lr.ph.i125.prol, !llvm.loop !3217

.lr.ph.i125.prol.loopexit:                        ; preds = %.lr.ph.i125.prol, %.lr.ph.i125.preheader466
  %.lcssa470.unr = phi ptr [ poison, %.lr.ph.i125.preheader466 ], [ %i.cu, %.lr.ph.i125.prol ]
  %.033.i.unr = phi ptr [ %.033.i.ph, %.lr.ph.i125.preheader466 ], [ %i.cu, %.lr.ph.i125.prol ]
  %.02032.i.unr = phi ptr [ %.02032.i.ph, %.lr.ph.i125.preheader466 ], [ %i.ct, %.lr.ph.i125.prol ]
  %.02131.i.unr = phi ptr [ %.02131.i.ph, %.lr.ph.i125.preheader466 ], [ %i.cs, %.lr.ph.i125.prol ]
  %i.cy = icmp ult i64 %i.cp, 12
  br i1 %i.cy, label %._crit_edge.i, label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %.lr.ph.i125.prol.loopexit, %.lr.ph.i125
  %.033.i = phi ptr [ %i.dt, %.lr.ph.i125 ], [ %.033.i.unr, %.lr.ph.i125.prol.loopexit ] ; 6 uses
  %.02032.i = phi ptr [ %i.ds, %.lr.ph.i125 ], [ %.02032.i.unr, %.lr.ph.i125.prol.loopexit ] ; 6 uses
  %.02131.i = phi ptr [ %i.dr, %.lr.ph.i125 ], [ %.02131.i.unr, %.lr.ph.i125.prol.loopexit ] ; 6 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.02131.i, i64 4 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.02032.i, i64 4 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.033.i, i64 4 ; 2 uses
  %i.dc = load i32, ptr %.033.i, align 4, !tbaa !296
  %i.dd = load i32, ptr %.02032.i, align 4, !tbaa !296
  store i32 %i.dd, ptr %.033.i, align 4, !tbaa !296
  %i.de = load i32, ptr %.02131.i, align 4, !tbaa !296
  store i32 %i.de, ptr %.02032.i, align 4, !tbaa !296
  store i32 %i.dc, ptr %.02131.i, align 4, !tbaa !296
  %i.df = getelementptr inbounds nuw i8, ptr %.02131.i, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.02032.i, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.033.i, i64 8 ; 2 uses
  %i.di = load i32, ptr %i.db, align 4, !tbaa !296
  %i.dj = load i32, ptr %i.da, align 4, !tbaa !296
  store i32 %i.dj, ptr %i.db, align 4, !tbaa !296
  %i.dk = load i32, ptr %i.cz, align 4, !tbaa !296
  store i32 %i.dk, ptr %i.da, align 4, !tbaa !296
  store i32 %i.di, ptr %i.cz, align 4, !tbaa !296
  %i.dl = getelementptr inbounds nuw i8, ptr %.02131.i, i64 12 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.02032.i, i64 12 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.033.i, i64 12 ; 2 uses
  %i.do = load i32, ptr %i.dh, align 4, !tbaa !296
  %i.dp = load i32, ptr %i.dg, align 4, !tbaa !296
  store i32 %i.dp, ptr %i.dh, align 4, !tbaa !296
  %i.dq = load i32, ptr %i.df, align 4, !tbaa !296
  store i32 %i.dq, ptr %i.dg, align 4, !tbaa !296
  store i32 %i.do, ptr %i.df, align 4, !tbaa !296
  %i.dr = getelementptr inbounds nuw i8, ptr %.02131.i, i64 16 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.02032.i, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %.033.i, i64 16 ; 2 uses
  %i.du = load i32, ptr %i.dn, align 4, !tbaa !296
  %i.dv = load i32, ptr %i.dm, align 4, !tbaa !296
  store i32 %i.dv, ptr %i.dn, align 4, !tbaa !296
  %i.dw = load i32, ptr %i.dl, align 4, !tbaa !296
  store i32 %i.dw, ptr %i.dm, align 4, !tbaa !296
  store i32 %i.du, ptr %i.dl, align 4, !tbaa !296
  %.not28.i.3 = icmp eq ptr %i.dr, %i.bf
  br i1 %.not28.i.3, label %._crit_edge.i, label %.lr.ph.i125, !llvm.loop !3218

._crit_edge.i:                                    ; preds = %.lr.ph.i125.prol.loopexit, %.lr.ph.i125, %middle.block, %.preheader.i
  %.0.lcssa.i = phi ptr [ %7, %.preheader.i ], [ %i.aa, %middle.block ], [ %.lcssa470.unr, %.lr.ph.i125.prol.loopexit ], [ %i.dt, %.lr.ph.i125 ] ; 2 uses
  %.not29.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  %i.dx = load i32, ptr %i.bk, align 4, !tbaa !296
  %i.dy = load i32, ptr %.0106223, align 4, !tbaa !296
  store i32 %i.dy, ptr %i.bk, align 4, !tbaa !296
  store i32 %i.dx, ptr %.0106223, align 4, !tbaa !296
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %i.dz = icmp eq ptr %i.bk, %.0191218
  br i1 %i.dz, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ea = icmp eq ptr %.0191218, %.0106223
  %spec.select = select i1 %i.ea, ptr %i.bk, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit: ; preds = %bb.m, %bb.l, %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit
  %.5 = phi ptr [ %.0191218, %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ], [ %spec.select, %bb.m ], [ %.0106223, %bb.l ]
  %.1.i = phi ptr [ %7, %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ], [ %.0.lcssa.i, %bb.m ], [ %.0.lcssa.i, %bb.l ] ; 2 uses
  store ptr %.1.i, ptr %i.b, align 8, !tbaa !299
  br label %bb.x

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.eb = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_(ptr noundef %.0114219, ptr noundef %.0111220, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.bf, ptr noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit

bb.p:                                             ; preds = %.thread281, %bb.n
  %i.ec = phi i1 [ true, %.thread281 ], [ %i.bp, %bb.n ]
  store ptr %8, ptr %9, align 8, !tbaa !439
  %i.ed = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPiS3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_(ptr noundef %.0114219, ptr noundef %.0111220, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.bf, ptr noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dead_on_return %9)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit: ; preds = %bb.o, %bb.p
  %i.ee = phi i1 [ %i.bp, %bb.o ], [ %i.ec, %bb.p ]
  %i.ef = phi i1 [ true, %bb.o ], [ false, %bb.p ]
  %i.eg = phi ptr [ %i.eb, %bb.o ], [ %i.ed, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.eh = load ptr, ptr %i.a, align 8, !tbaa !299 ; 4 uses
  %i.ei = load ptr, ptr %i.b, align 8, !tbaa !299 ; 4 uses
  %i.ej = icmp eq ptr %i.eh, %i.ei                ; 2 uses
  br i1 %i.ej, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit
  store ptr %7, ptr %i.a, align 8, !tbaa !299
  %i.ek = load ptr, ptr %i.c, align 8, !tbaa !299 ; 10 uses
  %i.el = ptrtoint ptr %i.bf to i64
  %i.em = ptrtoint ptr %i.ek to i64               ; 3 uses
  %i.en = sub i64 %i.el, %i.em                    ; 2 uses
  %i.eo = ashr exact i64 %i.en, 2
  %i.ep = sub nsw i64 0, %i.eo
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.ep ; 7 uses
  %.not.i126 = icmp eq ptr %i.ek, %i.eq
  br i1 %.not.i126, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140, label %.preheader.i127

.preheader.i127:                                  ; preds = %bb.q
  %.not2830.i128 = icmp eq ptr %i.ek, %i.bf
  br i1 %.not2830.i128, label %._crit_edge.i134, label %.lr.ph.i129.preheader

.lr.ph.i129.preheader:                            ; preds = %.preheader.i127
  %i.er = sub i64 %i.af, %i.em                    ; 2 uses
  %i.es = lshr i64 %i.er, 2
  %i.et = add nuw nsw i64 %i.es, 1                ; 2 uses
  %min.iters.check360 = icmp ult i64 %i.er, 60
  br i1 %min.iters.check360, label %.lr.ph.i129.preheader468, label %vector.memcheck341

vector.memcheck341:                               ; preds = %.lr.ph.i129.preheader
  %i.eu = sub i64 %i.ah, %i.em
  %i.ev = and i64 %i.eu, -4                       ; 3 uses
  %scevgep343 = getelementptr i8, ptr %scevgep342.a, i64 %i.ev ; 2 uses
  %i.ew = shl i64 %.022.lcssa.i, 2
  %i.ex = add i64 %i.ew, 4
  %i.ey = mul i64 %2, %i.ex
  %i.ez = add i64 %i.ey, %i.ev
  %i.fa = sub i64 %i.ez, %i.en
  %scevgep345.a = getelementptr i8, ptr %scevgep344.a, i64 %i.fa ; 2 uses
  %scevgep346.a = getelementptr i8, ptr %i.ek, i64 4
  %scevgep347 = getelementptr i8, ptr %scevgep346.a, i64 %i.ev ; 2 uses
  %bound0348 = icmp ult ptr %7, %scevgep345.a
  %bound1349 = icmp ult ptr %i.eq, %scevgep343
  %found.conflict350 = and i1 %bound0348, %bound1349
  %bound0351 = icmp ult ptr %7, %scevgep347
  %bound1352 = icmp ult ptr %i.ek, %scevgep343
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EEvT_T0_T1_NS0_9iter_sizeISF_E4typeESI_SI_SI_SI_T2_:bb.a
bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit
  %.1 = phi i8 [ %.074113, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.bi = zext nneg i8 %.1 to i64
  %i.bj = add i64 %.075112, %i.bi                 ; 3 uses
  %i.bk = getelementptr i8, ptr %.071116, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPiS3_EEvT_S4_RS4_T0_S6_S6_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader169, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bl = shl i64 %.022.lcssa.i, 2
  %i.bm = add i64 %i.bl, 4
  %i.bn = mul i64 %2, %i.bm
  %scevgep161 = getelementptr i8, ptr %.071116, i64 %i.bn
  %bound0 = icmp ult ptr %i.d, %scevgep161
  %bound1 = icmp ult ptr %i.bd, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.bo = or i1 %found.conflict, %stride.check
  br i1 %i.bo, label %.lr.ph.i.i.preheader169, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bp = getelementptr i8, ptr %i.bd, i64 %i.q
  %i.bq = getelementptr i8, ptr %.071116, i64 %i.q
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bd, i64 %i.br ; 3 uses
  %next.gep162 = getelementptr i8, ptr %.071116, i64 %i.br ; 3 uses
  %i.bs = getelementptr i8, ptr %next.gep162, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep162, align 4, !tbaa !296, !alias.scope !3282, !noalias !3283
  %wide.load163 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !296, !alias.scope !3282, !noalias !3283
  %i.bt = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load164 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !296, !alias.scope !3283
  %wide.load165 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !296, !alias.scope !3283
  store <4 x i32> %wide.load164, ptr %next.gep162, align 4, !tbaa !296, !alias.scope !3282, !noalias !3283
  store <4 x i32> %wide.load165, ptr %i.bs, align 4, !tbaa !296, !alias.scope !3282, !noalias !3283
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !296, !alias.scope !3283
  store <4 x i32> %wide.load163, ptr %i.bt, align 4, !tbaa !296, !alias.scope !3283
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !3279

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit.i, label %.lr.ph.i.i.preheader169

.lr.ph.i.i.preheader169:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bd, %vector.memcheck ], [ %i.bd, %.lr.ph.i.i.preheader ], [ %i.bp, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071116, %vector.memcheck ], [ %.071116, %.lr.ph.i.i.preheader ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader169, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.by, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader169 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.bx, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader169 ] ; 3 uses
  %i.bv = load i32, ptr %.079.i.i, align 4, !tbaa !296
  %i.bw = load i32, ptr %.010.i.i, align 4, !tbaa !296
  store i32 %i.bw, ptr %.079.i.i, align 4, !tbaa !296
  store i32 %i.bv, ptr %.010.i.i, align 4, !tbaa !296
  %i.bx = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.bx, %i.bk
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit.i, label %.lr.ph.i.i, !llvm.loop !3280

_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit.i
  %i.bz = load i32, ptr %i.az, align 4, !tbaa !296
  %i.ca = load i32, ptr %.073114, align 4, !tbaa !296
  store i32 %i.ca, ptr %i.az, align 4, !tbaa !296
  store i32 %i.bz, ptr %.073114, align 4, !tbaa !296
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit.i
  %i.cb = icmp eq ptr %i.az, %.0100110
  br i1 %i.cb, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPiS3_EEvT_S4_RS4_T0_S6_S6_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cc = icmp eq ptr %.0100110, %.073114
  %spec.select102 = select i1 %i.cc, ptr %i.az, ptr %.0100110
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPiS3_EEvT_S4_RS4_T0_S6_S6_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPiS3_EEvT_S4_RS4_T0_S6_S6_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100110, %bb.f ], [ %spec.select102, %bb.j ], [ %.073114, %bb.i ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.073114, i64 4
  %i.ce = icmp ne i64 %.072115, 0
  %.neg = sext i1 %i.ce to i64
  %i.cf = add i64 %.072115, %.neg
  %i.cg = icmp ne i64 %i.bb, 0
  %.neg78 = sext i1 %i.cg to i64
  %i.ch = add i64 %.sroa.speculated89, %.neg78
  %i.ci = add i64 %.099111, -1                    ; 2 uses
  %.not = icmp eq i64 %i.ci, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3281

._crit_edge125.loopexit131:                       ; preds = %bb.l
  %i.cj = trunc nuw i8 %i.da to i1
  %i.ck = select i1 %i.cj, ptr %i.dc, ptr %i.dd
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %.lr.ph124.split.us.preheader.prol.loopexit, %.lr.ph124.split.us.preheader, %._crit_edge.thread, %._crit_edge125.loopexit131, %._crit_edge
  %i.cl = phi ptr [ %1, %._crit_edge ], [ %1, %._crit_edge.thread ], [ %i.ck, %._crit_edge125.loopexit131 ], [ %.069121.us.lcssa.unr, %.lr.ph124.split.us.preheader.prol.loopexit ], [ %i.ag, %.lr.ph124.split.us.preheader ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %6
  %i.cn = ptrtoint ptr %i.e to i64
  %i.co = ptrtoint ptr %i.cl to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = ashr exact i64 %i.cp, 2
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SC_SC_NS0_9iter_sizeISC_E4typeESF_T0_(ptr noundef %i.cl, ptr noundef %i.e, ptr noundef %i.cm, i64 noundef %i.cq, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

.lr.ph124.split:                                  ; preds = %.lr.ph124, %bb.l
  %i.cr = phi i8 [ %i.da, %bb.l ], [ 1, %.lr.ph124 ]
  %i.cs = phi i8 [ %i.db, %bb.l ], [ 1, %.lr.ph124 ] ; 2 uses
  %.0122 = phi ptr [ %i.de, %bb.l ], [ %0, %.lr.ph124 ] ; 2 uses
  %.069121 = phi ptr [ %i.dd, %bb.l ], [ %i.d, %.lr.ph124 ] ; 4 uses
  %.070120 = phi ptr [ %i.dc, %bb.l ], [ %1, %.lr.ph124 ]
  %i.ct = load i32, ptr %.0122, align 4, !tbaa !296
  %i.cu = load i32, ptr %.1101, align 4, !tbaa !296
  %i.cv = icmp slt i32 %i.ct, %i.cu
  %i.cw = zext i1 %i.cv to i8
  %i.cx = icmp eq i8 %i.cs, %i.cw
  br i1 %i.cx, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph124.split
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.069121, i64 %2
  %i.cz = call noundef ptr @_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_SD_PbT0_(ptr noundef %.070120, ptr noundef %.069121, ptr noundef %i.cy, ptr noundef nonnull %i.a)
  %.pre = load i8, ptr %i.a, align 1, !tbaa !442, !range !443 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph124.split, %bb.k
  %i.da = phi i8 [ %.pre, %bb.k ], [ %i.cr, %.lr.ph124.split ] ; 2 uses
  %i.db = phi i8 [ %.pre, %bb.k ], [ %i.cs, %.lr.ph124.split ]
  %i.dc = phi ptr [ %i.cz, %bb.k ], [ %.069121, %.lr.ph124.split ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.069121, i64 %2 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0122, i64 4 ; 2 uses
  %.not77 = icmp eq ptr %i.de, %i.r
  br i1 %.not77, label %._crit_edge125.loopexit131, label %.lr.ph124.split, !llvm.loop !3275
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opES5_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_T4_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %7 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
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
  %.idx207 = shl i64 %2, 2                        ; 5 uses
  %.not121 = icmp eq i64 %6, 0
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f
  %.not2830.i = icmp eq i64 %2, 0
  %scevgep = getelementptr i8, ptr %7, i64 %.idx207 ; 2 uses
  %scevgep330.a = getelementptr i8, ptr %7, i64 4
  %i.o = shl i64 %3, 2                            ; 2 uses
  %i.p = add i64 %i.o, %i.b
  %i.q = add i64 %i.p, %.idx207
  %i.r = add i64 %i.q, -4                         ; 2 uses
  %i.s = shl i64 %2, 2
  %i.t = shl i64 %2, 2
  %i.u = getelementptr i8, ptr %1, i64 %i.o
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %i.w = add i64 %.idx207, -4                     ; 2 uses
  %i.x = lshr exact i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 60
  %bound0297 = icmp ult ptr %7, %i.j
  %bound1298 = icmp ult ptr %i.h, %scevgep
  %found.conflict299 = and i1 %bound0297, %bound1298
  %stride.check = icmp slt i64 %.idx207, 0
  %i.z = or i1 %found.conflict299, %stride.check
  %n.vec = and i64 %i.y, 9223372036854775800      ; 3 uses
  %i.aa = shl i64 %n.vec, 2                       ; 3 uses
  %i.ab = getelementptr i8, ptr %7, i64 %i.aa     ; 2 uses
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.x ] ; 3 uses
  %i.ac = phi ptr [ %7, %.lr.ph ], [ %i.gv, %bb.x ] ; 5 uses
  %i.ad = phi ptr [ %7, %.lr.ph ], [ %i.gw, %bb.x ] ; 7 uses
  %i.ae = phi ptr [ %i.h, %.lr.ph ], [ %i.bg, %bb.x ] ; 9 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.he, %bb.x ] ; 3 uses
  %.0226 = phi i64 [ %5, %.lr.ph ], [ %.1, %bb.x ] ; 2 uses
  %.0104225 = phi i64 [ %i.l, %.lr.ph ], [ %i.hc, %bb.x ] ; 4 uses
  %.0106222 = phi ptr [ %0, %.lr.ph ], [ %i.ha, %bb.x ] ; 16 uses
  %.0108221 = phi i8 [ 1, %.lr.ph ], [ %.1109, %bb.x ] ; 5 uses
  %.0111219 = phi ptr [ %i.h, %.lr.ph ], [ %i.gz, %bb.x ] ; 5 uses
  %.0114218 = phi ptr [ %1, %.lr.ph ], [ %.1115, %bb.x ] ; 8 uses
  %.0190217 = phi ptr [ %i.g, %.lr.ph ], [ %.2192, %bb.x ] ; 16 uses
  %.0194216 = phi i64 [ %i.f, %.lr.ph ], [ %i.hf, %bb.x ] ; 4 uses
  %i.af = mul i64 %i.t, %indvar
  %i.ag = add i64 %i.r, %i.af                     ; 3 uses
  %i.ah = mul i64 %i.s, %indvar                   ; 2 uses
  %i.ai = add i64 %i.r, %i.ah
  %scevgep332.a = getelementptr i8, ptr %i.v, i64 %i.ah
  %i.aj = ptrtoaddr ptr %i.ac to i64
  %.0114218313 = ptrtoaddr ptr %.0114218 to i64
  %i.ak = ptrtoaddr ptr %i.ad to i64              ; 2 uses
  %i.al = icmp ult i64 %.0104225, %.0
  br i1 %i.al, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.ba, %.thread24.i ], [ %.0104225, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.az, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.am = mul i64 %.02226.i, %2
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.am
  %i.ao = mul i64 %.027.i, %2
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ao
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.0106222, i64 %.02226.i
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.0106222, i64 %.027.i
  %i.as = load i32, ptr %i.ap, align 4, !tbaa !296 ; 2 uses
  %i.at = load i32, ptr %i.an, align 4, !tbaa !296 ; 2 uses
  %i.au = icmp slt i32 %i.as, %i.at
  br i1 %i.au, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.av = icmp slt i32 %i.at, %i.as
  br i1 %i.av, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = load i64, ptr %i.ar, align 8, !tbaa !319
  %i.ax = load i64, ptr %i.aq, align 8, !tbaa !319
  %i.ay = icmp ult i64 %i.aw, %i.ax
  %cond.fr.i = freeze i1 %i.ay
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.az = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.ba = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ba, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit, label %.lr.ph.i, !llvm.loop !53

_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.az, %.thread24.i ] ; 7 uses
  %i.bb = add i64 %.022.lcssa.i, 2
  %i.bc = call i64 @llvm.umax.i64(i64 %.0, i64 %i.bb) ; 2 uses
  %.sroa.speculated179 = call i64 @llvm.umin.i64(i64 %i.bc, i64 %.0194216)
  %i.bd = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bd, 2
  %i.be = getelementptr i8, ptr %i.ae, i64 %.idx  ; 10 uses
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %2 ; 3 uses
  %i.bg = getelementptr i8, ptr %i.ae, i64 %.idx207 ; 8 uses
  %i.bh = icmp eq ptr %i.ad, %i.ac
  %.not120 = icmp eq i64 %.0226, 0
  br i1 %.not120, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit
  br i1 %.not121, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = load i32, ptr %i.j, align 4, !tbaa !296
  %i.bj = load i32, ptr %i.be, align 4, !tbaa !296
  %i.bk = icmp slt i32 %i.bi, %i.bj
  br i1 %i.bk, label %.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old123 = trunc nuw i8 %.0108221 to i1
  br i1 %.old123, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit
  %.idx208 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %.0106222, i64 %.idx208 ; 13 uses
  %i.bm = icmp eq ptr %.0190217, %i.n
  br i1 %i.bm, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bn = trunc nuw i8 %.0108221 to i1
  br i1 %i.bn, label %bb.j, label %.thread276

.thread276:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.bo = load i64, ptr %i.bl, align 8, !tbaa !319
  %i.bp = load i64, ptr %.0190217, align 8, !tbaa !319
  %i.bq = icmp ult i64 %i.bo, %i.bp               ; 4 uses
  %i.br = trunc nuw i8 %.0108221 to i1            ; 2 uses
  %i.bs = xor i1 %i.bq, %i.br
  br i1 %i.bs, label %bb.n, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.bt = phi i1 [ true, %._crit_edge ], [ %i.bq, %bb.i ]
  br i1 %i.bh, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.bu = add i64 %i.aj, -4
  %i.bv = sub i64 %i.bu, %i.ak                    ; 2 uses
  %i.bw = lshr i64 %i.bv, 2
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %min.iters.check315 = icmp ult i64 %i.bv, 28
  %i.by = sub i64 %i.ak, %.0114218313
  %diff.check = icmp ugt i64 %i.by, -32
  %or.cond = select i1 %min.iters.check315, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader436, label %vector.ph316

vector.ph316:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec317 = and i64 %i.bx, 9223372036854775800  ; 3 uses
  %i.bz = shl i64 %n.vec317, 2                    ; 2 uses
  %i.ca = getelementptr i8, ptr %.0114218, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ad, i64 %i.bz
  br label %vector.body318

vector.body318:                                   ; preds = %vector.body318, %vector.ph316
  %index319 = phi i64 [ 0, %vector.ph316 ], [ %index.next324, %vector.body318 ] ; 2 uses
  %i.cc = shl i64 %index319, 2                    ; 2 uses
  %next.gep320.a = getelementptr i8, ptr %.0114218, i64 %i.cc ; 2 uses
  %next.gep321 = getelementptr i8, ptr %i.ad, i64 %i.cc ; 2 uses
  %i.cd = getelementptr i8, ptr %next.gep321, i64 16
  %wide.load322.a = load <4 x i32>, ptr %next.gep321, align 4, !tbaa !296
  %wide.load323 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !296
  %i.ce = getelementptr i8, ptr %next.gep320.a, i64 16
  store <4 x i32> %wide.load322.a, ptr %next.gep320.a, align 4, !tbaa !296
  store <4 x i32> %wide.load323, ptr %i.ce, align 4, !tbaa !296
  %index.next324 = add nuw i64 %index319, 8       ; 2 uses
  %i.cf = icmp eq i64 %index.next324, %n.vec317
  br i1 %i.cf, label %middle.block325, label %vector.body318, !llvm.loop !3284

middle.block325:                                  ; preds = %vector.body318
  %cmp.n326 = icmp eq i64 %i.bx, %n.vec317
  br i1 %cmp.n326, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit, label %.lr.ph.i.i.preheader436

.lr.ph.i.i.preheader436:                          ; preds = %.lr.ph.i.i.preheader, %middle.block325
  %.010.i.i.ph = phi ptr [ %.0114218, %.lr.ph.i.i.preheader ], [ %i.ca, %middle.block325 ]
  %.079.i.i.ph = phi ptr [ %i.ad, %.lr.ph.i.i.preheader ], [ %i.cb, %middle.block325 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader436, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ci, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader436 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.ch, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader436 ] ; 2 uses
  %i.cg = load i32, ptr %.079.i.i, align 4, !tbaa !296
  store i32 %i.cg, ptr %.010.i.i, align 4, !tbaa !296
  %i.ch = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.ch, %i.ac
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit, label %.lr.ph.i.i, !llvm.loop !3285

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit: ; preds = %.lr.ph.i.i, %middle.block325, %bb.j
  store ptr %7, ptr %i.c, align 8, !tbaa !299
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit
  br i1 %.not2830.i, label %._crit_edge.i, label %.lr.ph.i125.preheader

.lr.ph.i125.preheader:                            ; preds = %.preheader.i
  br i1 %min.iters.check, label %.lr.ph.i125.preheader435, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i125.preheader
  %bound0 = icmp ult ptr %7, %i.bf
  %bound1 = icmp ult ptr %i.be, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.z
  %bound0300 = icmp ult ptr %i.be, %i.j
  %bound1301 = icmp ult ptr %i.h, %i.bf
  %found.conflict302 = and i1 %bound0300, %bound1301
  %conflict.rdx304 = or i1 %found.conflict302, %conflict.rdx
  br i1 %conflict.rdx304, label %.lr.ph.i125.preheader435, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cj = getelementptr i8, ptr %i.be, i64 %i.aa
  %i.ck = getelementptr i8, ptr %i.ae, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cl = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %7, i64 %i.cl ; 2 uses
  %next.gep305.a = getelementptr i8, ptr %i.be, i64 %i.cl ; 3 uses
  %next.gep306 = getelementptr i8, ptr %i.ae, i64 %i.cl ; 2 uses
  %i.cm = getelementptr i8, ptr %next.gep305.a, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep305.a, align 4, !tbaa !296, !alias.scope !3317, !noalias !3318
  %wide.load307.a = load <4 x i32>, ptr %i.cm, align 4, !tbaa !296, !alias.scope !3317, !noalias !3318
  %i.cn = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !296, !alias.scope !3319, !noalias !3320
  store <4 x i32> %wide.load307.a, ptr %i.cn, align 4, !tbaa !296, !alias.scope !3319, !noalias !3320
  %i.co = getelementptr i8, ptr %next.gep306, i64 16
  %wide.load308.a = load <4 x i32>, ptr %next.gep306, align 4, !tbaa !296, !alias.scope !3318
  %wide.load309 = load <4 x i32>, ptr %i.co, align 4, !tbaa !296, !alias.scope !3318
  store <4 x i32> %wide.load308.a, ptr %next.gep305.a, align 4, !tbaa !296, !alias.scope !3317, !noalias !3318
  store <4 x i32> %wide.load309, ptr %i.cm, align 4, !tbaa !296, !alias.scope !3317, !noalias !3318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !3290

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i125.preheader435

.lr.ph.i125.preheader435:                         ; preds = %vector.memcheck, %.lr.ph.i125.preheader, %middle.block
  %.033.i.ph = phi ptr [ %7, %vector.memcheck ], [ %7, %.lr.ph.i125.preheader ], [ %i.ab, %middle.block ] ; 2 uses
  %.02032.i.ph = phi ptr [ %i.be, %vector.memcheck ], [ %i.be, %.lr.ph.i125.preheader ], [ %i.cj, %middle.block ] ; 2 uses
  %.02131.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i125.preheader ], [ %i.ck, %middle.block ] ; 3 uses
  %.02131.i.ph441 = ptrtoaddr ptr %.02131.i.ph to i64
  %i.cq = sub i64 %i.ag, %.02131.i.ph441          ; 2 uses
  %i.cr = lshr i64 %i.cq, 2
  %i.cs = add nuw nsw i64 %i.cr, 1
  %xtraiter442 = and i64 %i.cs, 3                 ; 2 uses
  %lcmp.mod443.not = icmp eq i64 %xtraiter442, 0
  br i1 %lcmp.mod443.not, label %.lr.ph.i125.prol.loopexit, label %.lr.ph.i125.prol

.lr.ph.i125.prol:                                 ; preds = %.lr.ph.i125.preheader435, %.lr.ph.i125.prol
  %.033.i.prol = phi ptr [ %i.cv, %.lr.ph.i125.prol ], [ %.033.i.ph, %.lr.ph.i125.preheader435 ] ; 2 uses
  %.02032.i.prol = phi ptr [ %i.cu, %.lr.ph.i125.prol ], [ %.02032.i.ph, %.lr.ph.i125.preheader435 ] ; 3 uses
  %.02131.i.prol = phi ptr [ %i.ct, %.lr.ph.i125.prol ], [ %.02131.i.ph, %.lr.ph.i125.preheader435 ] ; 2 uses
  %prol.iter444 = phi i64 [ %prol.iter444.next, %.lr.ph.i125.prol ], [ 0, %.lr.ph.i125.preheader435 ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.02131.i.prol, i64 4 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.02032.i.prol, i64 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.033.i.prol, i64 4 ; 3 uses
  %i.cw = load i32, ptr %.02032.i.prol, align 4, !tbaa !296
  store i32 %i.cw, ptr %.033.i.prol, align 4, !tbaa !296
  %i.cx = load i32, ptr %.02131.i.prol, align 4, !tbaa !296
  store i32 %i.cx, ptr %.02032.i.prol, align 4, !tbaa !296
  %prol.iter444.next = add i64 %prol.iter444, 1   ; 2 uses
  %prol.iter444.cmp.not = icmp eq i64 %prol.iter444.next, %xtraiter442
  br i1 %prol.iter444.cmp.not, label %.lr.ph.i125.prol.loopexit, label %.lr.ph.i125.prol, !llvm.loop !3291

.lr.ph.i125.prol.loopexit:                        ; preds = %.lr.ph.i125.prol, %.lr.ph.i125.preheader435
  %.lcssa439.unr = phi ptr [ poison, %.lr.ph.i125.preheader435 ], [ %i.cv, %.lr.ph.i125.prol ]
  %.033.i.unr = phi ptr [ %.033.i.ph, %.lr.ph.i125.preheader435 ], [ %i.cv, %.lr.ph.i125.prol ]
  %.02032.i.unr = phi ptr [ %.02032.i.ph, %.lr.ph.i125.preheader435 ], [ %i.cu, %.lr.ph.i125.prol ]
  %.02131.i.unr = phi ptr [ %.02131.i.ph, %.lr.ph.i125.preheader435 ], [ %i.ct, %.lr.ph.i125.prol ]
  %i.cy = icmp ult i64 %i.cq, 12
  br i1 %i.cy, label %._crit_edge.i, label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %.lr.ph.i125.prol.loopexit, %.lr.ph.i125
  %.033.i = phi ptr [ %i.dq, %.lr.ph.i125 ], [ %.033.i.unr, %.lr.ph.i125.prol.loopexit ] ; 5 uses
  %.02032.i = phi ptr [ %i.dp, %.lr.ph.i125 ], [ %.02032.i.unr, %.lr.ph.i125.prol.loopexit ] ; 6 uses
  %.02131.i = phi ptr [ %i.do, %.lr.ph.i125 ], [ %.02131.i.unr, %.lr.ph.i125.prol.loopexit ] ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.02131.i, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %.02032.i, i64 4 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.033.i, i64 4
  %i.dc = load i32, ptr %.02032.i, align 4, !tbaa !296
  store i32 %i.dc, ptr %.033.i, align 4, !tbaa !296
  %i.dd = load i32, ptr %.02131.i, align 4, !tbaa !296
  store i32 %i.dd, ptr %.02032.i, align 4, !tbaa !296
  %i.de = getelementptr inbounds nuw i8, ptr %.02131.i, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %.02032.i, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.033.i, i64 8
  %i.dh = load i32, ptr %i.da, align 4, !tbaa !296
  store i32 %i.dh, ptr %i.db, align 4, !tbaa !296
  %i.di = load i32, ptr %i.cz, align 4, !tbaa !296
  store i32 %i.di, ptr %i.da, align 4, !tbaa !296
  %i.dj = getelementptr inbounds nuw i8, ptr %.02131.i, i64 12
  %i.dk = getelementptr inbounds nuw i8, ptr %.02032.i, i64 12 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.033.i, i64 12
  %i.dm = load i32, ptr %i.df, align 4, !tbaa !296
  store i32 %i.dm, ptr %i.dg, align 4, !tbaa !296
  %i.dn = load i32, ptr %i.de, align 4, !tbaa !296
  store i32 %i.dn, ptr %i.df, align 4, !tbaa !296
  %i.do = getelementptr inbounds nuw i8, ptr %.02131.i, i64 16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.02032.i, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %.033.i, i64 16 ; 2 uses
  %i.dr = load i32, ptr %i.dk, align 4, !tbaa !296
  store i32 %i.dr, ptr %i.dl, align 4, !tbaa !296
  %i.ds = load i32, ptr %i.dj, align 4, !tbaa !296
  store i32 %i.ds, ptr %i.dk, align 4, !tbaa !296
  %.not28.i.3 = icmp eq ptr %i.do, %i.bg
  br i1 %.not28.i.3, label %._crit_edge.i, label %.lr.ph.i125, !llvm.loop !3292

._crit_edge.i:                                    ; preds = %.lr.ph.i125.prol.loopexit, %.lr.ph.i125, %middle.block, %.preheader.i
  %.0.lcssa.i = phi ptr [ %7, %.preheader.i ], [ %i.ab, %middle.block ], [ %.lcssa439.unr, %.lr.ph.i125.prol.loopexit ], [ %i.dq, %.lr.ph.i125 ] ; 2 uses
  %.not29.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  %i.dt = load i64, ptr %i.bl, align 8, !tbaa !319
  %i.du = load i64, ptr %.0106222, align 8, !tbaa !319
  store i64 %i.du, ptr %i.bl, align 8, !tbaa !319
  store i64 %i.dt, ptr %.0106222, align 8, !tbaa !319
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %i.dv = icmp eq ptr %i.bl, %.0190217
  br i1 %i.dv, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dw = icmp eq ptr %.0190217, %.0106222
  %spec.select = select i1 %i.dw, ptr %i.bl, ptr %.0190217
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit: ; preds = %bb.m, %bb.l, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit
  %.5 = phi ptr [ %.0190217, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ], [ %spec.select, %bb.m ], [ %.0106222, %bb.l ]
  %.1.i = phi ptr [ %7, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ], [ %.0.lcssa.i, %bb.m ], [ %.0.lcssa.i, %bb.l ] ; 2 uses
  store ptr %.1.i, ptr %i.d, align 8, !tbaa !299
  br label %bb.x

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br i1 %i.br, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dx = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_(ptr noundef %.0114218, ptr noundef %.0111219, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.bg, ptr noundef %i.be, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit

bb.p:                                             ; preds = %.thread276, %bb.n
  %i.dy = phi i1 [ true, %.thread276 ], [ %i.bq, %bb.n ]
  store ptr %8, ptr %9, align 8, !tbaa !439
  %i.dz = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPiS3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_(ptr noundef %.0114218, ptr noundef %.0111219, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.bg, ptr noundef %i.be, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dead_on_return %9)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit: ; preds = %bb.o, %bb.p
  %i.ea = phi i1 [ %i.bq, %bb.o ], [ %i.dy, %bb.p ]
  %i.eb = phi i1 [ true, %bb.o ], [ false, %bb.p ]
  %i.ec = phi ptr [ %i.dx, %bb.o ], [ %i.dz, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.ed = load ptr, ptr %i.c, align 8, !tbaa !299 ; 4 uses
  %i.ee = load ptr, ptr %i.d, align 8, !tbaa !299 ; 4 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee                ; 2 uses
  br i1 %i.ef, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit
  store ptr %7, ptr %i.c, align 8, !tbaa !299
  %i.eg = load ptr, ptr %i.e, align 8, !tbaa !299 ; 10 uses
  %i.eh = ptrtoint ptr %i.bg to i64
  %i.ei = ptrtoint ptr %i.eg to i64               ; 3 uses
  %i.ej = sub i64 %i.eh, %i.ei                    ; 2 uses
  %i.ek = ashr exact i64 %i.ej, 2
  %i.el = sub nsw i64 0, %i.ek
  %i.em = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.el ; 7 uses
  %.not.i126 = icmp eq ptr %i.eg, %i.em
  br i1 %.not.i126, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit140, label %.preheader.i127

.preheader.i127:                                  ; preds = %bb.q
  %.not2830.i128 = icmp eq ptr %i.eg, %i.bg
  br i1 %.not2830.i128, label %._crit_edge.i134, label %.lr.ph.i129.preheader

.lr.ph.i129.preheader:                            ; preds = %.preheader.i127
  %i.en = sub i64 %i.ag, %i.ei                    ; 2 uses
  %i.eo = lshr i64 %i.en, 2
  %i.ep = add nuw nsw i64 %i.eo, 1                ; 2 uses
  %min.iters.check348 = icmp ult i64 %i.en, 76
  br i1 %min.iters.check348, label %.lr.ph.i129.preheader437, label %vector.memcheck329

vector.memcheck329:                               ; preds = %.lr.ph.i129.preheader
  %i.eq = sub i64 %i.ai, %i.ei
  %i.er = and i64 %i.eq, -4                       ; 3 uses
  %scevgep331 = getelementptr i8, ptr %scevgep330.a, i64 %i.er ; 2 uses
  %i.es = shl i64 %.022.lcssa.i, 2
  %i.et = add i64 %i.es, 4
  %i.eu = mul i64 %2, %i.et
  %i.ev = add i64 %i.eu, %i.er
  %i.ew = sub i64 %i.ev, %i.ej
  %scevgep333.a = getelementptr i8, ptr %scevgep332.a, i64 %i.ew ; 2 uses
  %scevgep334.a = getelementptr i8, ptr %i.eg, i64 4
  %scevgep335 = getelementptr i8, ptr %scevgep334.a, i64 %i.er ; 2 uses
  %bound0336 = icmp ult ptr %7, %scevgep333.a
  %bound1337 = icmp ult ptr %i.em, %scevgep331
  %found.conflict338 = and i1 %bound0336, %bound1337
  %bound0339 = icmp ult ptr %7, %scevgep335
  %bound1340 = icmp ult ptr %i.eg, %scevgep331
  %found.conflict341 = and i1 %bound0339, %bound1340
  %conflict.rdx342 = or i1 %found.conflict338, %found.conflict341
  %bound0343 = icmp ult ptr %i.em, %scevgep335
  %bound1344 = icmp ult ptr %i.eg, %scevgep333.a
  %found.conflict345 = and i1 %bound0343, %bound1344
end_hunk_2
