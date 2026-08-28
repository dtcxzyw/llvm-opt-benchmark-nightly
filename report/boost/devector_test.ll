Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/devector_test?download=true
inline.NumInlined: 42022
inline.NumDeleted: 5232
loop-unroll.NumCompletelyUnrolled: 330
loop-unroll.NumRuntimeUnrolled: 853
loop-unroll.NumUnrolled: 1191
begin_hunk_0_@_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE14priv_push_backIS3_EEvOT_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.d
  %i.g = load i32, ptr %1, align 4, !tbaa !2425
  store i32 %i.g, ptr %i.f, align 4, !tbaa !2425
  store i32 0, ptr %1, align 4, !tbaa !2425
  %i.h = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.j = add i64 %i.d, 1
  store i64 %i.j, ptr %i.c, align 8, !tbaa !2433
  br label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.b
  %i.l = tail call noundef ptr @_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.k, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %1) ; 0 uses
  br label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE12emplace_backIJS3_EEERS3_DpOT_.exit

_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE12insert_rangeISt14_List_iteratorIiEEEPS3_PKS3_T_SC_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i.i = icmp eq ptr %2, %3
  br i1 %.not4.i.i, label %bb.b, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.a, %.lr.ph.i.i ], [ 0, %bb.a ] ; 23 uses
  %.sroa.02.05.i.i = phi ptr [ %i.b, %.lr.ph.i.i ], [ %2, %bb.a ]
  %i.a = add i64 %.06.i.i, 1                      ; 18 uses
  %i.b = load ptr, ptr %.sroa.02.05.i.i, align 8, !tbaa !2636 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %3
  br i1 %.not.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit, label %.lr.ph.i.i, !llvm.loop !2685

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !2436
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !2435
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  br label %bb.m

_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit: ; preds = %.lr.ph.i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !2436   ; 10 uses
  %i.l = ptrtoaddr ptr %i.k to i64                ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !2433 ; 8 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.n ; 17 uses
  %i.p = icmp eq ptr %1, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !2439
  %i.s = sub i64 %i.r, %i.n
  %.not49.not = icmp ugt i64 %i.s, %.06.i.i
  br i1 %.not49.not, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.015.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.o, %bb.c ] ; 3 uses
  %.sroa.010.014.i = phi ptr [ %i.x, %.lr.ph.i ], [ %2, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i) ]
  %i.u = load i32, ptr %i.t, align 4, !tbaa !18
  store i32 %i.u, ptr %.015.i, align 4, !tbaa !2425
  %i.v = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.x = load ptr, ptr %.sroa.010.014.i, align 8, !tbaa !2636 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %.not.i = icmp eq ptr %i.x, %3
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test11movable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit, label %.lr.ph.i, !llvm.loop !3688

_ZN5boost9container24uninitialized_copy_allocISaINS0_4test11movable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit: ; preds = %.lr.ph.i
  %i.z = add i64 %i.n, %i.a
  store i64 %i.z, ptr %i.m, align 8, !tbaa !2422
  br label %bb.m

bb.d:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !2435 ; 8 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ab ; 15 uses
  %i.ad = icmp eq ptr %1, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not48.not = icmp ugt i64 %i.ab, %.06.i.i
  br i1 %.not48.not, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ae = xor i64 %.06.i.i, -1
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  br label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.f, %.lr.ph.i51
  %.015.i52 = phi ptr [ %i.al, %.lr.ph.i51 ], [ %i.af, %bb.f ] ; 3 uses
  %.sroa.010.014.i53 = phi ptr [ %i.ak, %.lr.ph.i51 ], [ %2, %bb.f ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i53, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i52) ]
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !18
  store i32 %i.ah, ptr %.015.i52, align 4, !tbaa !2425
  %i.ai = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.ak = load ptr, ptr %.sroa.010.014.i53, align 8, !tbaa !2636 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.015.i52, i64 4
  %.not.i54 = icmp eq ptr %i.ak, %3
  br i1 %.not.i54, label %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test11movable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit56, label %.lr.ph.i51, !llvm.loop !3688

_ZN5boost9container24uninitialized_copy_allocISaINS0_4test11movable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit56: ; preds = %.lr.ph.i51
  %i.am = sub nuw i64 %i.ab, %i.a                 ; 2 uses
  store i64 %i.am, ptr %i.aa, align 8, !tbaa !2421
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.am
  br label %bb.m

bb.g:                                             ; preds = %bb.d
  %i.ao = ptrtoint ptr %1 to i64                  ; 6 uses
  %i.ap = ptrtoint ptr %i.ac to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2                 ; 8 uses
  %i.as = sub i64 %i.n, %i.ab
  %i.at = lshr i64 %i.as, 1
  %.not = icmp ult i64 %i.ar, %i.at
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !2439
  %i.aw = sub i64 %i.av, %i.n
  %.not47.not = icmp ugt i64 %i.aw, %.06.i.i
  br i1 %.not47.not, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ax = ptrtoint ptr %i.o to i64
  %i.ay = sub i64 %i.ax, %i.ao
  %i.az = ashr exact i64 %i.ay, 2                 ; 7 uses
  %.not.i57.not = icmp ugt i64 %i.az, %.06.i.i
  br i1 %.not.i57.not, label %bb.j, label %.lr.ph.i48.preheader.i

bb.j:                                             ; preds = %bb.i
  %i.ba = xor i64 %.06.i.i, -1
  %i.bb = getelementptr [4 x i8], ptr %i.o, i64 %i.ba ; 10 uses
  %i.bc = and i64 %.06.i.i, 1
  %lcmp.mod179.not.not = icmp eq i64 %i.bc, 0
  br i1 %lcmp.mod179.not.not, label %.lr.ph.i.i58.prol, label %.lr.ph.i.i58.prol.loopexit

.lr.ph.i.i58.prol:                                ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !2425
  store i32 %i.bd, ptr %i.o, align 4, !tbaa !2425
  store i32 0, ptr %i.bb, align 4, !tbaa !2425
  %i.be = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br label %.lr.ph.i.i58.prol.loopexit

.lr.ph.i.i58.prol.loopexit:                       ; preds = %.lr.ph.i.i58.prol, %bb.j
  %.020.i.i.unr = phi i64 [ %i.a, %bb.j ], [ %.06.i.i, %.lr.ph.i.i58.prol ]
  %.0819.i.i.unr = phi ptr [ %i.bb, %bb.j ], [ %i.bg, %.lr.ph.i.i58.prol ]
  %.01618.i.i.unr = phi ptr [ %i.o, %bb.j ], [ %i.bh, %.lr.ph.i.i58.prol ]
  %i.bi = icmp eq i64 %.06.i.i, 0
  br i1 %i.bi, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i, label %.lr.ph.i.i58

.lr.ph.i.i58:                                     ; preds = %.lr.ph.i.i58.prol.loopexit, %.lr.ph.i.i58
  %.020.i.i = phi i64 [ %i.bo, %.lr.ph.i.i58 ], [ %.020.i.i.unr, %.lr.ph.i.i58.prol.loopexit ]
  %.0819.i.i = phi ptr [ %i.bs, %.lr.ph.i.i58 ], [ %.0819.i.i.unr, %.lr.ph.i.i58.prol.loopexit ] ; 4 uses
  %.01618.i.i = phi ptr [ %i.bt, %.lr.ph.i.i58 ], [ %.01618.i.i.unr, %.lr.ph.i.i58.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i) ]
  %i.bj = load i32, ptr %.0819.i.i, align 4, !tbaa !2425
  store i32 %i.bj, ptr %.01618.i.i, align 4, !tbaa !2425
  store i32 0, ptr %.0819.i.i, align 4, !tbaa !2425
  %i.bk = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 4
  %i.bo = add i64 %.020.i.i, -2                   ; 2 uses
  %i.bp = load i32, ptr %i.bm, align 4, !tbaa !2425
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !2425
  store i32 0, ptr %i.bm, align 4, !tbaa !2425
  %i.bq = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %.not.i.i59.1 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i59.1, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i, label %.lr.ph.i.i58, !llvm.loop !3307

_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i: ; preds = %.lr.ph.i.i58, %.lr.ph.i.i58.prol.loopexit
  %.not8.i.i = icmp eq ptr %1, %i.bb
  br i1 %.not8.i.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i.preheader

.lr.ph.i40.i.preheader:                           ; preds = %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i
  %4 = shl nuw nsw i64 %i.n, 2
  %5 = add i64 %4, %i.l
  %i.bu = mul i64 %.06.i.i, -4
  %reass.sub = sub i64 %i.bu, %i.ao
  %i.bv = add i64 %reass.sub, -8
  %i.bw = add i64 %5, %i.bv                       ; 2 uses
  %i.bx = lshr i64 %i.bw, 2
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bw, 172
  br i1 %min.iters.check, label %.lr.ph.i40.i.preheader171, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.preheader
  %i.bz = shl nuw nsw i64 %i.n, 2                 ; 3 uses
  %i.ca = getelementptr i8, ptr %i.k, i64 %i.bz
  %scevgep = getelementptr i8, ptr %i.ca, i64 -4
  %i.cb = add i64 %i.bz, %i.l
  %i.cc = mul i64 %.06.i.i, -4                    ; 2 uses
  %reass.sub164 = sub i64 %i.cc, %i.ao
  %i.cd = add i64 %reass.sub164, -8
  %i.ce = add i64 %i.cb, %i.cd                    ; 2 uses
  %i.cf = lshr i64 %i.ce, 2
  %i.cg = mul i64 %i.cf, -4
  %scevgep136 = getelementptr i8, ptr %scevgep, i64 %i.cg
  %scevgep137 = getelementptr i8, ptr %i.k, i64 %i.bz
  %i.ch = add i64 %i.cc, -8
  %i.ci = and i64 %i.ce, -4
  %i.cj = sub i64 %i.ch, %i.ci
  %scevgep138 = getelementptr i8, ptr %scevgep137, i64 %i.cj
  %bound0 = icmp ult ptr %scevgep136, %i.bb
  %bound1 = icmp ult ptr %scevgep138, %i.o
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.preheader171, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.by, 9223372036854775800     ; 3 uses
  %i.ck = mul i64 %n.vec, -4                      ; 2 uses
  %i.cl = getelementptr i8, ptr %i.o, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.bb, i64 %i.ck
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cn = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.cn ; 2 uses
  %next.gep139 = getelementptr i8, ptr %i.bb, i64 %i.cn ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %next.gep139, i64 -16 ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %next.gep139, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.co, align 4, !tbaa !2425, !alias.scope !3689
  %wide.load140 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !2425, !alias.scope !3689
  %i.cq = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cr = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cq, align 4, !tbaa !2425, !alias.scope !3692, !noalias !3689
  store <4 x i32> %wide.load140, ptr %i.cr, align 4, !tbaa !2425, !alias.scope !3692, !noalias !3689
  store <4 x i32> zeroinitializer, ptr %i.co, align 4, !tbaa !2425, !alias.scope !3689
  store <4 x i32> zeroinitializer, ptr %i.cp, align 4, !tbaa !2425, !alias.scope !3689
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !3694

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i.preheader171

.lr.ph.i40.i.preheader171:                        ; preds = %vector.memcheck, %.lr.ph.i40.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i40.i.preheader ], [ %i.cl, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.bb, %vector.memcheck ], [ %i.bb, %.lr.ph.i40.i.preheader ], [ %i.cm, %middle.block ]
  br label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %.lr.ph.i40.i.preheader171, %.lr.ph.i40.i
  %.010.i.i = phi ptr [ %i.cu, %.lr.ph.i40.i ], [ %.010.i.i.ph, %.lr.ph.i40.i.preheader171 ]
  %.079.i.i = phi ptr [ %i.ct, %.lr.ph.i40.i ], [ %.079.i.i.ph, %.lr.ph.i40.i.preheader171 ]
  %i.ct = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 4 uses
  %i.cu = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !2425
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !2425
  store i32 0, ptr %i.ct, align 4, !tbaa !2425
  %.not.i41.i = icmp eq ptr %1, %i.ct
  br i1 %.not.i41.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i, !llvm.loop !3695

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i40.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i
  %xtraiter181 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod182.not = icmp eq i64 %xtraiter181, 0
  br i1 %lcmp.mod182.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.09.i.i.i.prol = phi i64 [ %i.cw, %.lr.ph.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.preheader ]
  %.048.i.i.i.prol = phi ptr [ %i.da, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.prol = phi ptr [ %i.cz, %.lr.ph.i.i.i.prol ], [ %2, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter183 = phi i64 [ %prol.iter183.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.cw = add i64 %.09.i.i.i.prol, -1             ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.prol, i64 16
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !18
  store i32 %i.cy, ptr %.048.i.i.i.prol, align 4, !tbaa !2425
  %i.cz = load ptr, ptr %.sroa.0.07.i.i.i.prol, align 8, !tbaa !2636 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.048.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter183.next = add i64 %prol.iter183, 1   ; 2 uses
  %prol.iter183.cmp.not = icmp eq i64 %prol.iter183.next, %xtraiter181
  br i1 %prol.iter183.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !3696

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.unr = phi i64 [ %i.a, %.lr.ph.i.i.i.preheader ], [ %i.cw, %.lr.ph.i.i.i.prol ]
  %.048.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.preheader ], [ %i.da, %.lr.ph.i.i.i.prol ]
  %.sroa.0.07.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.preheader ], [ %i.cz, %.lr.ph.i.i.i.prol ]
  %i.db = icmp ult i64 %.06.i.i, 3
  br i1 %i.db, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test11movable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.do, %.lr.ph.i.i.i ], [ %.09.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.048.i.i.i = phi ptr [ %i.ds, %.lr.ph.i.i.i ], [ %.048.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 16
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !18
  store i32 %i.dd, ptr %.048.i.i.i, align 4, !tbaa !2425
  %i.de = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !2636 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !18
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !2425
  %i.di = load ptr, ptr %i.de, align 8, !tbaa !2636 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !18
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !2425
  %i.dm = load ptr, ptr %i.di, align 8, !tbaa !2636 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 12
  %i.do = add i64 %.09.i.i.i, -4                  ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !18
  store i32 %i.dq, ptr %i.dn, align 4, !tbaa !2425
  %i.dr = load ptr, ptr %i.dm, align 8, !tbaa !2636
  %i.ds = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test11movable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i.i, !llvm.loop !3697

.lr.ph.i48.preheader.i:                           ; preds = %bb.i
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.a
  br label %.lr.ph.i48.i

.lr.ph.i48.i:                                     ; preds = %.lr.ph.i48.i, %.lr.ph.i48.preheader.i
  %.018.i.i = phi ptr [ %i.dx, %.lr.ph.i48.i ], [ %1, %.lr.ph.i48.preheader.i ] ; 3 uses
  %.01517.i.i = phi ptr [ %i.dy, %.lr.ph.i48.i ], [ %i.dt, %.lr.ph.i48.preheader.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.du = load i32, ptr %.018.i.i, align 4, !tbaa !2425
  store i32 %i.du, ptr %.01517.i.i, align 4, !tbaa !2425
  store i32 0, ptr %.018.i.i, align 4, !tbaa !2425
  %i.dv = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.dw = add i32 %i.dv, 1
  store i32 %i.dw, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.dx = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4
  %.not.i49.i = icmp eq ptr %i.dx, %i.o
  br i1 %.not.i49.i, label %.lr.ph.i.i52.i.preheader, label %.lr.ph.i48.i, !llvm.loop !3319

.lr.ph.i.i52.i.preheader:                         ; preds = %.lr.ph.i48.i
  %xtraiter = and i64 %i.az, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i52.i.prol.loopexit, label %.lr.ph.i.i52.i.prol

.lr.ph.i.i52.i.prol:                              ; preds = %.lr.ph.i.i52.i.preheader, %.lr.ph.i.i52.i.prol
  %.09.i.i53.i.prol = phi i64 [ %i.dz, %.lr.ph.i.i52.i.prol ], [ %i.az, %.lr.ph.i.i52.i.preheader ]
  %.048.i.i54.i.prol = phi ptr [ %i.ed, %.lr.ph.i.i52.i.prol ], [ %1, %.lr.ph.i.i52.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i55.i.prol = phi ptr [ %i.ec, %.lr.ph.i.i52.i.prol ], [ %2, %.lr.ph.i.i52.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i52.i.prol ], [ 0, %.lr.ph.i.i52.i.preheader ]
  %i.dz = add i64 %.09.i.i53.i.prol, -1           ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.prol, i64 16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !18
  store i32 %i.eb, ptr %.048.i.i54.i.prol, align 4, !tbaa !2425
  %i.ec = load ptr, ptr %.sroa.0.07.i.i55.i.prol, align 8, !tbaa !2636 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i52.i.prol.loopexit, label %.lr.ph.i.i52.i.prol, !llvm.loop !3698

.lr.ph.i.i52.i.prol.loopexit:                     ; preds = %.lr.ph.i.i52.i.prol, %.lr.ph.i.i52.i.preheader
  %.lcssa173.unr = phi ptr [ poison, %.lr.ph.i.i52.i.preheader ], [ %i.ec, %.lr.ph.i.i52.i.prol ]
  %.09.i.i53.i.unr = phi i64 [ %i.az, %.lr.ph.i.i52.i.preheader ], [ %i.dz, %.lr.ph.i.i52.i.prol ]
  %.048.i.i54.i.unr = phi ptr [ %1, %.lr.ph.i.i52.i.preheader ], [ %i.ed, %.lr.ph.i.i52.i.prol ]
  %.sroa.0.07.i.i55.i.unr = phi ptr [ %2, %.lr.ph.i.i52.i.preheader ], [ %i.ec, %.lr.ph.i.i52.i.prol ]
  %i.ee = icmp ult i64 %i.az, 4
  br i1 %i.ee, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test11movable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i, label %.lr.ph.i.i52.i

.lr.ph.i.i52.i:                                   ; preds = %.lr.ph.i.i52.i.prol.loopexit, %.lr.ph.i.i52.i
  %.09.i.i53.i = phi i64 [ %i.er, %.lr.ph.i.i52.i ], [ %.09.i.i53.i.unr, %.lr.ph.i.i52.i.prol.loopexit ]
  %.048.i.i54.i = phi ptr [ %i.ev, %.lr.ph.i.i52.i ], [ %.048.i.i54.i.unr, %.lr.ph.i.i52.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i55.i = phi ptr [ %i.eu, %.lr.ph.i.i52.i ], [ %.sroa.0.07.i.i55.i.unr, %.lr.ph.i.i52.i.prol.loopexit ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i, i64 16
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !18
  store i32 %i.eg, ptr %.048.i.i54.i, align 4, !tbaa !2425
  %i.eh = load ptr, ptr %.sroa.0.07.i.i55.i, align 8, !tbaa !2636 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !18
  store i32 %i.ek, ptr %i.ei, align 4, !tbaa !2425
  %i.el = load ptr, ptr %i.eh, align 8, !tbaa !2636 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !18
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !2425
  %i.ep = load ptr, ptr %i.el, align 8, !tbaa !2636 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 12
  %i.er = add i64 %.09.i.i53.i, -4                ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.et = load i32, ptr %i.es, align 4, !tbaa !18
  store i32 %i.et, ptr %i.eq, align 4, !tbaa !2425
  %i.eu = load ptr, ptr %i.ep, align 8, !tbaa !2636 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 16
  %.not.i.i56.i.3 = icmp eq i64 %i.er, 0
  br i1 %.not.i.i56.i.3, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test11movable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i, label %.lr.ph.i.i52.i, !llvm.loop !3697

_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test11movable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i: ; preds = %.lr.ph.i.i52.i, %.lr.ph.i.i52.i.prol.loopexit
  %.lcssa173 = phi ptr [ %.lcssa173.unr, %.lr.ph.i.i52.i.prol.loopexit ], [ %i.eu, %.lr.ph.i.i52.i ] ; 3 uses
  %i.ew = sub i64 %i.a, %i.az                     ; 3 uses
  %xtraiter175 = and i64 %i.ew, 1
  %lcmp.mod176.not = icmp eq i64 %xtraiter175, 0
  br i1 %lcmp.mod176.not, label %.lr.ph.i.i60.i.prol.loopexit, label %.lr.ph.i.i60.i.prol

.lr.ph.i.i60.i.prol:                              ; preds = %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test11movable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.lcssa173, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !18
  store i32 %i.ey, ptr %i.o, align 4, !tbaa !2425
  %i.ez = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.fa = add i32 %i.ez, 1
  store i32 %i.fa, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.fb = load ptr, ptr %.lcssa173, align 8, !tbaa !2636
  %i.fc = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.fd = add nsw i64 %i.ew, -1
  br label %.lr.ph.i.i60.i.prol.loopexit

.lr.ph.i.i60.i.prol.loopexit:                     ; preds = %.lr.ph.i.i60.i.prol, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test11movable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i
  %.018.i.i.i.unr = phi i64 [ %i.ew, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test11movable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i ], [ %i.fd, %.lr.ph.i.i60.i.prol ]
  %.01417.i.i.i.unr = phi ptr [ %i.o, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test11movable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i ], [ %i.fc, %.lr.ph.i.i60.i.prol ]
  %.sroa.0.016.i.i.i.unr = phi ptr [ %.lcssa173, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test11movable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i ], [ %i.fb, %.lr.ph.i.i60.i.prol ]
  %i.fe = icmp eq i64 %.06.i.i, %i.az
  br i1 %i.fe, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test11movable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i60.i

.lr.ph.i.i60.i:                                   ; preds = %.lr.ph.i.i60.i.prol.loopexit, %.lr.ph.i.i60.i
  %.018.i.i.i = phi i64 [ %i.fq, %.lr.ph.i.i60.i ], [ %.018.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ]
  %.01417.i.i.i = phi ptr [ %i.fp, %.lr.ph.i.i60.i ], [ %.01417.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i = phi ptr [ %i.fo, %.lr.ph.i.i60.i ], [ %.sroa.0.016.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i) ]
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !18
  store i32 %i.fg, ptr %.01417.i.i.i, align 4, !tbaa !2425
  %i.fh = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18 ; 2 uses
  %i.fi = add i32 %i.fh, 1
  store i32 %i.fi, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.fj = load ptr, ptr %.sroa.0.016.i.i.i, align 8, !tbaa !2636 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !18
  store i32 %i.fm, ptr %i.fk, align 4, !tbaa !2425
  %i.fn = add i32 %i.fh, 2
  store i32 %i.fn, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.fo = load ptr, ptr %i.fj, align 8, !tbaa !2636
  %i.fp = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 8
  %i.fq = add i64 %.018.i.i.i, -2                 ; 2 uses
  %.not.i.i61.i.1 = icmp eq i64 %i.fq, 0
  br i1 %.not.i.i61.i.1, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test11movable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i60.i, !llvm.loop !3699

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test11movable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit: ; preds = %.lr.ph.i.i60.i.prol.loopexit, %.lr.ph.i.i60.i, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.fr = add i64 %i.n, %i.a
  store i64 %i.fr, ptr %i.m, align 8, !tbaa !2422
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %.not46.not = icmp ugt i64 %i.ab, %.06.i.i
  br i1 %.not46.not, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %.not.i60.not = icmp ugt i64 %i.ar, %.06.i.i
  %i.fs = xor i64 %.06.i.i, -1                    ; 2 uses
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.fs ; 3 uses
  br i1 %.not.i60.not, label %.lr.ph.i.i62.preheader, label %.lr.ph.i48.i78

.lr.ph.i.i62.preheader:                           ; preds = %bb.l
  %i.fu = icmp eq i64 %.06.i.i, 0
  br i1 %i.fu, label %.lr.ph.i.i62.epil.preheader, label %.lr.ph.i.i62.preheader.new

.lr.ph.i.i62.preheader.new:                       ; preds = %.lr.ph.i.i62.preheader
  %unroll_iter = and i64 %i.a, -2
  br label %.lr.ph.i.i62

.lr.ph.i.i62:                                     ; preds = %.lr.ph.i.i62, %.lr.ph.i.i62.preheader.new
  %indvar = phi i64 [ 0, %.lr.ph.i.i62.preheader.new ], [ %indvar.next.1, %.lr.ph.i.i62 ] ; 2 uses
  %.0919.i.i = phi ptr [ %i.ac, %.lr.ph.i.i62.preheader.new ], [ %i.gd, %.lr.ph.i.i62 ] ; 4 uses
  %.01618.i.i64 = phi ptr [ %i.ft, %.lr.ph.i.i62.preheader.new ], [ %i.ge, %.lr.ph.i.i62 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i62.preheader.new ], [ %niter.next.1, %.lr.ph.i.i62 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i64) ]
  %i.fv = load i32, ptr %.0919.i.i, align 4, !tbaa !2425
  store i32 %i.fv, ptr %.01618.i.i64, align 4, !tbaa !2425
  store i32 0, ptr %.0919.i.i, align 4, !tbaa !2425
  %i.fw = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.fx = add i32 %i.fw, 1
  store i32 %i.fx, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.fy = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 4 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.01618.i.i64, i64 4
  %i.ga = load i32, ptr %i.fy, align 4, !tbaa !2425
  store i32 %i.ga, ptr %i.fz, align 4, !tbaa !2425
  store i32 0, ptr %i.fy, align 4, !tbaa !2425
  %i.gb = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.gc = add i32 %i.gb, 1
  store i32 %i.gc, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.gd = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 8 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.01618.i.i64, i64 8 ; 2 uses
  %indvar.next.1 = add i64 %indvar, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa, label %.lr.ph.i.i62, !llvm.loop !3327

_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i62
  %indvar.next = or disjoint i64 %indvar, 1
  %i.gf = and i64 %.06.i.i, 1
  %lcmp.mod191.not.not = icmp eq i64 %i.gf, 0
  br i1 %lcmp.mod191.not.not, label %.lr.ph.i.i62.epil.preheader, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i

.lr.ph.i.i62.epil.preheader:                      ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa, %.lr.ph.i.i62.preheader
  %indvar.epil.init = phi i64 [ 0, %.lr.ph.i.i62.preheader ], [ %indvar.next.1, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ]
  %.0919.i.i.epil.init = phi ptr [ %i.ac, %.lr.ph.i.i62.preheader ], [ %i.gd, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ] ; 3 uses
  %.01618.i.i64.epil.init = phi ptr [ %i.ft, %.lr.ph.i.i62.preheader ], [ %i.ge, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod194 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod194)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i64.epil.init) ]
  %i.gg = load i32, ptr %.0919.i.i.epil.init, align 4, !tbaa !2425
  store i32 %i.gg, ptr %.01618.i.i64.epil.init, align 4, !tbaa !2425
  store i32 0, ptr %.0919.i.i.epil.init, align 4, !tbaa !2425
  %i.gh = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.gi = add i32 %i.gh, 1
  store i32 %i.gi, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.gj = getelementptr inbounds nuw i8, ptr %.0919.i.i.epil.init, i64 4
  br label %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa, %.lr.ph.i.i62.epil.preheader
  %indvar.lcssa = phi i64 [ %indvar.next, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ], [ %indvar.epil.init, %.lr.ph.i.i62.epil.preheader ]
  %.lcssa167 = phi ptr [ %i.gd, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ], [ %i.gj, %.lr.ph.i.i62.epil.preheader ] ; 6 uses
  %.not8.i.i66 = icmp eq ptr %.lcssa167, %1
  br i1 %.not8.i.i66, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67.preheader

.lr.ph.i40.i67.preheader:                         ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i
  %.neg = mul i64 %i.ab, -4
  %.neg165 = sub i64 %.neg, %i.l
  %i.gk = add i64 %i.ao, -8
  %i.gl = shl i64 %.06.i.i, 2
  %6 = sub i64 %i.gk, %i.gl
  %7 = add i64 %.neg165, %6                       ; 2 uses
  %i.gm = lshr i64 %7, 2
  %i.gn = add nuw nsw i64 %i.gm, 1                ; 2 uses
  %min.iters.check150 = icmp ult i64 %7, 172
  br i1 %min.iters.check150, label %.lr.ph.i40.i67.preheader166, label %vector.memcheck142

vector.memcheck142:                               ; preds = %.lr.ph.i40.i67.preheader
  %i.go = shl nuw nsw i64 %i.ab, 2                ; 3 uses
  %i.gp = getelementptr i8, ptr %i.k, i64 %i.go
  %scevgep143 = getelementptr i8, ptr %i.gp, i64 4
  %i.gq = add i64 %i.go, %i.l
  %i.gr = add i64 %i.ao, -8
  %i.gs = shl i64 %.06.i.i, 2
  %i.gt = add i64 %i.gs, %i.gq
  %i.gu = sub i64 %i.gr, %i.gt
  %i.gv = and i64 %i.gu, -4                       ; 2 uses
  %scevgep144 = getelementptr i8, ptr %scevgep143, i64 %i.gv
  %i.gw = shl i64 %indvar.lcssa, 2
  %i.gx = getelementptr i8, ptr %i.k, i64 %i.gw
  %i.gy = getelementptr i8, ptr %i.gx, i64 %i.go
  %i.gz = getelementptr i8, ptr %i.gy, i64 8
  %scevgep145 = getelementptr i8, ptr %i.gz, i64 %i.gv
  %bound0146 = icmp ult ptr %i.ac, %scevgep145
  %bound1147 = icmp ult ptr %.lcssa167, %scevgep144
  %found.conflict148 = and i1 %bound0146, %bound1147
  br i1 %found.conflict148, label %.lr.ph.i40.i67.preheader166, label %vector.ph151

vector.ph151:                                     ; preds = %vector.memcheck142
  %n.vec152 = and i64 %i.gn, 9223372036854775800  ; 3 uses
  %i.ha = shl i64 %n.vec152, 2                    ; 2 uses
  %i.hb = getelementptr i8, ptr %i.ac, i64 %i.ha  ; 2 uses
  %i.hc = getelementptr i8, ptr %.lcssa167, i64 %i.ha
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next159, %vector.body153 ] ; 2 uses
  %i.hd = shl i64 %index154, 2                    ; 2 uses
  %next.gep155 = getelementptr i8, ptr %i.ac, i64 %i.hd ; 2 uses
  %next.gep156 = getelementptr i8, ptr %.lcssa167, i64 %i.hd ; 3 uses
  %i.he = getelementptr i8, ptr %next.gep156, i64 16 ; 2 uses
  %wide.load157 = load <4 x i32>, ptr %next.gep156, align 4, !tbaa !2425, !alias.scope !3700
  %wide.load158 = load <4 x i32>, ptr %i.he, align 4, !tbaa !2425, !alias.scope !3700
  %i.hf = getelementptr i8, ptr %next.gep155, i64 16
  store <4 x i32> %wide.load157, ptr %next.gep155, align 4, !tbaa !2425, !alias.scope !3703, !noalias !3700
  store <4 x i32> %wide.load158, ptr %i.hf, align 4, !tbaa !2425, !alias.scope !3703, !noalias !3700
  store <4 x i32> zeroinitializer, ptr %next.gep156, align 4, !tbaa !2425, !alias.scope !3700
  store <4 x i32> zeroinitializer, ptr %i.he, align 4, !tbaa !2425, !alias.scope !3700
  %index.next159 = add nuw i64 %index154, 8       ; 2 uses
  %i.hg = icmp eq i64 %index.next159, %n.vec152
  br i1 %i.hg, label %middle.block160, label %vector.body153, !llvm.loop !3705

middle.block160:                                  ; preds = %vector.body153
  %cmp.n161 = icmp eq i64 %i.gn, %n.vec152
  br i1 %cmp.n161, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67.preheader166

.lr.ph.i40.i67.preheader166:                      ; preds = %vector.memcheck142, %.lr.ph.i40.i67.preheader, %middle.block160
  %.010.i.i68.ph = phi ptr [ %i.ac, %vector.memcheck142 ], [ %i.ac, %.lr.ph.i40.i67.preheader ], [ %i.hb, %middle.block160 ]
  %.079.i.i69.ph = phi ptr [ %.lcssa167, %vector.memcheck142 ], [ %.lcssa167, %.lr.ph.i40.i67.preheader ], [ %i.hc, %middle.block160 ]
  br label %.lr.ph.i40.i67

.lr.ph.i40.i67:                                   ; preds = %.lr.ph.i40.i67.preheader166, %.lr.ph.i40.i67
  %.010.i.i68 = phi ptr [ %i.hj, %.lr.ph.i40.i67 ], [ %.010.i.i68.ph, %.lr.ph.i40.i67.preheader166 ] ; 2 uses
  %.079.i.i69 = phi ptr [ %i.hi, %.lr.ph.i40.i67 ], [ %.079.i.i69.ph, %.lr.ph.i40.i67.preheader166 ] ; 3 uses
  %i.hh = load i32, ptr %.079.i.i69, align 4, !tbaa !2425
  store i32 %i.hh, ptr %.010.i.i68, align 4, !tbaa !2425
  store i32 0, ptr %.079.i.i69, align 4, !tbaa !2425
  %i.hi = getelementptr inbounds nuw i8, ptr %.079.i.i69, i64 4 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.010.i.i68, i64 4 ; 2 uses
  %.not.i41.i70 = icmp eq ptr %i.hi, %1
  br i1 %.not.i41.i70, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67, !llvm.loop !3706

.lr.ph.i.i.i72.preheader:                         ; preds = %.lr.ph.i40.i67, %middle.block160, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i
  %.048.i.i.i74.ph = phi ptr [ %i.ac, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i ], [ %i.hb, %middle.block160 ], [ %i.hj, %.lr.ph.i40.i67 ] ; 2 uses
  %xtraiter195 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod196.not = icmp eq i64 %xtraiter195, 0
  br i1 %lcmp.mod196.not, label %.lr.ph.i.i.i72.prol.loopexit, label %.lr.ph.i.i.i72.prol

.lr.ph.i.i.i72.prol:                              ; preds = %.lr.ph.i.i.i72.preheader, %.lr.ph.i.i.i72.prol
  %.09.i.i.i73.prol = phi i64 [ %i.hk, %.lr.ph.i.i.i72.prol ], [ %i.a, %.lr.ph.i.i.i72.preheader ]
  %.048.i.i.i74.prol = phi ptr [ %i.ho, %.lr.ph.i.i.i72.prol ], [ %.048.i.i.i74.ph, %.lr.ph.i.i.i72.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i75.prol = phi ptr [ %i.hn, %.lr.ph.i.i.i72.prol ], [ %2, %.lr.ph.i.i.i72.preheader ] ; 2 uses
  %prol.iter197 = phi i64 [ %prol.iter197.next, %.lr.ph.i.i.i72.prol ], [ 0, %.lr.ph.i.i.i72.preheader ]
  %i.hk = add i64 %.09.i.i.i73.prol, -1           ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i75.prol, i64 16
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !18
  store i32 %i.hm, ptr %.048.i.i.i74.prol, align 4, !tbaa !2425
  %i.hn = load ptr, ptr %.sroa.0.07.i.i.i75.prol, align 8, !tbaa !2636 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.048.i.i.i74.prol, i64 4 ; 2 uses
  %prol.iter197.next = add i64 %prol.iter197, 1   ; 2 uses
  %prol.iter197.cmp.not = icmp eq i64 %prol.iter197.next, %xtraiter195
  br i1 %prol.iter197.cmp.not, label %.lr.ph.i.i.i72.prol.loopexit, label %.lr.ph.i.i.i72.prol, !llvm.loop !3707

.lr.ph.i.i.i72.prol.loopexit:                     ; preds = %.lr.ph.i.i.i72.prol, %.lr.ph.i.i.i72.preheader
  %.09.i.i.i73.unr = phi i64 [ %i.a, %.lr.ph.i.i.i72.preheader ], [ %i.hk, %.lr.ph.i.i.i72.prol ]
  %.048.i.i.i74.unr = phi ptr [ %.048.i.i.i74.ph, %.lr.ph.i.i.i72.preheader ], [ %i.ho, %.lr.ph.i.i.i72.prol ]
  %.sroa.0.07.i.i.i75.unr = phi ptr [ %2, %.lr.ph.i.i.i72.preheader ], [ %i.hn, %.lr.ph.i.i.i72.prol ]
  %i.hp = icmp ult i64 %.06.i.i, 3
  br i1 %i.hp, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test11movable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i.i72

.lr.ph.i.i.i72:                                   ; preds = %.lr.ph.i.i.i72.prol.loopexit, %.lr.ph.i.i.i72
  %.09.i.i.i73 = phi i64 [ %i.ic, %.lr.ph.i.i.i72 ], [ %.09.i.i.i73.unr, %.lr.ph.i.i.i72.prol.loopexit ]
  %.048.i.i.i74 = phi ptr [ %i.ig, %.lr.ph.i.i.i72 ], [ %.048.i.i.i74.unr, %.lr.ph.i.i.i72.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i75 = phi ptr [ %i.if, %.lr.ph.i.i.i72 ], [ %.sroa.0.07.i.i.i75.unr, %.lr.ph.i.i.i72.prol.loopexit ] ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i75, i64 16
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !18
  store i32 %i.hr, ptr %.048.i.i.i74, align 4, !tbaa !2425
  %i.hs = load ptr, ptr %.sroa.0.07.i.i.i75, align 8, !tbaa !2636 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 4
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !18
  store i32 %i.hv, ptr %i.ht, align 4, !tbaa !2425
  %i.hw = load ptr, ptr %i.hs, align 8, !tbaa !2636 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !18
  store i32 %i.hz, ptr %i.hx, align 4, !tbaa !2425
  %i.ia = load ptr, ptr %i.hw, align 8, !tbaa !2636 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 12
  %i.ic = add i64 %.09.i.i.i73, -4                ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !18
  store i32 %i.ie, ptr %i.ib, align 4, !tbaa !2425
  %i.if = load ptr, ptr %i.ia, align 8, !tbaa !2636
  %i.ig = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 16
  %.not.i.i.i76.3 = icmp eq i64 %i.ic, 0
  br i1 %.not.i.i.i76.3, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test11movable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i.i72, !llvm.loop !3697

.lr.ph.i48.i78:                                   ; preds = %bb.l, %.lr.ph.i48.i78
  %.018.i.i79 = phi ptr [ %i.ik, %.lr.ph.i48.i78 ], [ %i.ac, %bb.l ] ; 3 uses
  %.01517.i.i80 = phi ptr [ %i.il, %.lr.ph.i48.i78 ], [ %i.ft, %bb.l ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i80) ]
  %i.ih = load i32, ptr %.018.i.i79, align 4, !tbaa !2425
  store i32 %i.ih, ptr %.01517.i.i80, align 4, !tbaa !2425
  store i32 0, ptr %.018.i.i79, align 4, !tbaa !2425
  %i.ii = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.ij = add i32 %i.ii, 1
  store i32 %i.ij, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.ik = getelementptr inbounds nuw i8, ptr %.018.i.i79, i64 4 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.01517.i.i80, i64 4 ; 3 uses
  %.not.i49.i81 = icmp eq ptr %i.ik, %1
  br i1 %.not.i49.i81, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i, label %.lr.ph.i48.i78, !llvm.loop !3319

_ZN5boost9container24uninitialized_move_allocISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i: ; preds = %.lr.ph.i48.i78
  %i.im = sub i64 %i.a, %i.ar                     ; 3 uses
  %xtraiter184 = and i64 %i.im, 1
  %lcmp.mod185.not = icmp eq i64 %xtraiter184, 0
  br i1 %lcmp.mod185.not, label %.lr.ph.i.i51.i.prol.loopexit, label %.lr.ph.i.i51.i.prol

.lr.ph.i.i51.i.prol:                              ; preds = %_ZN5boost9container24uninitialized_move_allocISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i
  %i.in = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.io = load i32, ptr %i.in, align 4, !tbaa !18
  store i32 %i.io, ptr %i.il, align 4, !tbaa !2425
  %i.ip = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.iq = add i32 %i.ip, 1
  store i32 %i.iq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.ir = load ptr, ptr %2, align 8, !tbaa !2636  ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.01517.i.i80, i64 8
  %i.it = add nsw i64 %i.im, -1
  br label %.lr.ph.i.i51.i.prol.loopexit

.lr.ph.i.i51.i.prol.loopexit:                     ; preds = %.lr.ph.i.i51.i.prol, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i
  %.lcssa169.unr = phi ptr [ poison, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ], [ %i.ir, %.lr.ph.i.i51.i.prol ]
  %.018.i.i.i82.unr = phi i64 [ %i.im, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ], [ %i.it, %.lr.ph.i.i51.i.prol ]
  %.01417.i.i.i83.unr = phi ptr [ %i.il, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ], [ %i.is, %.lr.ph.i.i51.i.prol ]
  %.sroa.0.016.i.i.i84.unr = phi ptr [ %2, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ], [ %i.ir, %.lr.ph.i.i51.i.prol ]
  %i.iu = icmp eq i64 %.06.i.i, %i.ar
  br i1 %i.iu, label %.lr.ph.i.i56.i.preheader, label %.lr.ph.i.i51.i

.lr.ph.i.i51.i:                                   ; preds = %.lr.ph.i.i51.i.prol.loopexit, %.lr.ph.i.i51.i
  %.018.i.i.i82 = phi i64 [ %i.jg, %.lr.ph.i.i51.i ], [ %.018.i.i.i82.unr, %.lr.ph.i.i51.i.prol.loopexit ]
  %.01417.i.i.i83 = phi ptr [ %i.jf, %.lr.ph.i.i51.i ], [ %.01417.i.i.i83.unr, %.lr.ph.i.i51.i.prol.loopexit ] ; 3 uses
  %.sroa.0.016.i.i.i84 = phi ptr [ %i.je, %.lr.ph.i.i51.i ], [ %.sroa.0.016.i.i.i84.unr, %.lr.ph.i.i51.i.prol.loopexit ] ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i84, i64 16
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !18
  store i32 %i.iw, ptr %.01417.i.i.i83, align 4, !tbaa !2425
  %i.ix = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18 ; 2 uses
  %i.iy = add i32 %i.ix, 1
  store i32 %i.iy, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.iz = load ptr, ptr %.sroa.0.016.i.i.i84, align 8, !tbaa !2636 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.01417.i.i.i83, i64 4
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !18
  store i32 %i.jc, ptr %i.ja, align 4, !tbaa !2425
  %i.jd = add i32 %i.ix, 2
  store i32 %i.jd, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.je = load ptr, ptr %i.iz, align 8, !tbaa !2636 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.01417.i.i.i83, i64 8
  %i.jg = add i64 %.018.i.i.i82, -2               ; 2 uses
  %.not.i.i52.i.1 = icmp eq i64 %i.jg, 0
  br i1 %.not.i.i52.i.1, label %.lr.ph.i.i56.i.preheader, label %.lr.ph.i.i51.i, !llvm.loop !3699

.lr.ph.i.i56.i.preheader:                         ; preds = %.lr.ph.i.i51.i, %.lr.ph.i.i51.i.prol.loopexit
  %.lcssa169 = phi ptr [ %.lcssa169.unr, %.lr.ph.i.i51.i.prol.loopexit ], [ %i.je, %.lr.ph.i.i51.i ] ; 2 uses
  %xtraiter187 = and i64 %i.ar, 3                 ; 2 uses
  %lcmp.mod188.not = icmp eq i64 %xtraiter187, 0
  br i1 %lcmp.mod188.not, label %.lr.ph.i.i56.i.prol.loopexit, label %.lr.ph.i.i56.i.prol

.lr.ph.i.i56.i.prol:                              ; preds = %.lr.ph.i.i56.i.preheader, %.lr.ph.i.i56.i.prol
  %.09.i.i57.i.prol = phi i64 [ %i.jh, %.lr.ph.i.i56.i.prol ], [ %i.ar, %.lr.ph.i.i56.i.preheader ]
  %.048.i.i58.i.prol = phi ptr [ %i.jl, %.lr.ph.i.i56.i.prol ], [ %i.ac, %.lr.ph.i.i56.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i59.i.prol = phi ptr [ %i.jk, %.lr.ph.i.i56.i.prol ], [ %.lcssa169, %.lr.ph.i.i56.i.preheader ] ; 2 uses
  %prol.iter189 = phi i64 [ %prol.iter189.next, %.lr.ph.i.i56.i.prol ], [ 0, %.lr.ph.i.i56.i.preheader ]
  %i.jh = add i64 %.09.i.i57.i.prol, -1           ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i59.i.prol, i64 16
end_hunk_0
begin_hunk_1_@_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE21resize_back_slow_pathIJRKS3_EEEvmmDpOT_:bb.a
  br i1 %.not.i22, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, label %.lr.ph.i21, !llvm.loop !2487

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit: ; preds = %.lr.ph.i21, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS4_EEDpOT_.exit
  %.not.i24 = icmp eq ptr %i.bg, null
  br i1 %.not.i24, label %_ZN5boost9container6detail16allocation_guardISaINS0_4test24movable_and_copyable_intEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit
  %i.bt = load i64, ptr %i.d, align 8, !tbaa !2488
  %i.bu = shl i64 %i.bt, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bu) #30
  %.pre43 = load i64, ptr %i.x, align 8, !tbaa !2482
  br label %_ZN5boost9container6detail16allocation_guardISaINS0_4test24movable_and_copyable_intEEED2Ev.exit

_ZN5boost9container6detail16allocation_guardISaINS0_4test24movable_and_copyable_intEEED2Ev.exit: ; preds = %bb.j, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit
  %i.bv = phi i64 [ %.pre43, %bb.j ], [ %i.y, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit ]
  store ptr %.0.i.i17, ptr %0, align 8, !tbaa !2485
  store i64 %i.p, ptr %i.d, align 8, !tbaa !2472
  %i.bw = add i64 %i.bv, %2
  store i64 %i.bw, ptr %i.x, align 8, !tbaa !2471
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE12insert_rangeISt14_List_iteratorIiEEEPS3_PKS3_T_SC_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i.i = icmp eq ptr %2, %3
  br i1 %.not4.i.i, label %bb.b, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.a, %.lr.ph.i.i ], [ 0, %bb.a ] ; 23 uses
  %.sroa.02.05.i.i = phi ptr [ %i.b, %.lr.ph.i.i ], [ %2, %bb.a ]
  %i.a = add i64 %.06.i.i, 1                      ; 18 uses
  %i.b = load ptr, ptr %.sroa.02.05.i.i, align 8, !tbaa !2636 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %3
  br i1 %.not.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit, label %.lr.ph.i.i, !llvm.loop !2685

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !2485
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !2484
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  br label %bb.m

_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit: ; preds = %.lr.ph.i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !2485   ; 10 uses
  %i.l = ptrtoaddr ptr %i.k to i64                ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !2482 ; 8 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.n ; 17 uses
  %i.p = icmp eq ptr %1, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !2488
  %i.s = sub i64 %i.r, %i.n
  %.not49.not = icmp ugt i64 %i.s, %.06.i.i
  br i1 %.not49.not, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.015.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.o, %bb.c ] ; 3 uses
  %.sroa.010.014.i = phi ptr [ %i.x, %.lr.ph.i ], [ %2, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i) ]
  %i.u = load i32, ptr %i.t, align 4, !tbaa !18
  store i32 %i.u, ptr %.015.i, align 4, !tbaa !2474
  %i.v = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.x = load ptr, ptr %.sroa.010.014.i, align 8, !tbaa !2636 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %.not.i = icmp eq ptr %i.x, %3
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test24movable_and_copyable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit, label %.lr.ph.i, !llvm.loop !4722

_ZN5boost9container24uninitialized_copy_allocISaINS0_4test24movable_and_copyable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit: ; preds = %.lr.ph.i
  %i.z = add i64 %i.n, %i.a
  store i64 %i.z, ptr %i.m, align 8, !tbaa !2471
  br label %bb.m

bb.d:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !2484 ; 8 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ab ; 15 uses
  %i.ad = icmp eq ptr %1, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not48.not = icmp ugt i64 %i.ab, %.06.i.i
  br i1 %.not48.not, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ae = xor i64 %.06.i.i, -1
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  br label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.f, %.lr.ph.i51
  %.015.i52 = phi ptr [ %i.al, %.lr.ph.i51 ], [ %i.af, %bb.f ] ; 3 uses
  %.sroa.010.014.i53 = phi ptr [ %i.ak, %.lr.ph.i51 ], [ %2, %bb.f ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i53, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i52) ]
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !18
  store i32 %i.ah, ptr %.015.i52, align 4, !tbaa !2474
  %i.ai = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.ak = load ptr, ptr %.sroa.010.014.i53, align 8, !tbaa !2636 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.015.i52, i64 4
  %.not.i54 = icmp eq ptr %i.ak, %3
  br i1 %.not.i54, label %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test24movable_and_copyable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit56, label %.lr.ph.i51, !llvm.loop !4722

_ZN5boost9container24uninitialized_copy_allocISaINS0_4test24movable_and_copyable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit56: ; preds = %.lr.ph.i51
  %i.am = sub nuw i64 %i.ab, %i.a                 ; 2 uses
  store i64 %i.am, ptr %i.aa, align 8, !tbaa !2470
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.am
  br label %bb.m

bb.g:                                             ; preds = %bb.d
  %i.ao = ptrtoint ptr %1 to i64                  ; 6 uses
  %i.ap = ptrtoint ptr %i.ac to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2                 ; 8 uses
  %i.as = sub i64 %i.n, %i.ab
  %i.at = lshr i64 %i.as, 1
  %.not = icmp ult i64 %i.ar, %i.at
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !2488
  %i.aw = sub i64 %i.av, %i.n
  %.not47.not = icmp ugt i64 %i.aw, %.06.i.i
  br i1 %.not47.not, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ax = ptrtoint ptr %i.o to i64
  %i.ay = sub i64 %i.ax, %i.ao
  %i.az = ashr exact i64 %i.ay, 2                 ; 7 uses
  %.not.i57.not = icmp ugt i64 %i.az, %.06.i.i
  br i1 %.not.i57.not, label %bb.j, label %.lr.ph.i48.preheader.i

bb.j:                                             ; preds = %bb.i
  %i.ba = xor i64 %.06.i.i, -1
  %i.bb = getelementptr [4 x i8], ptr %i.o, i64 %i.ba ; 10 uses
  %i.bc = and i64 %.06.i.i, 1
  %lcmp.mod179.not.not = icmp eq i64 %i.bc, 0
  br i1 %lcmp.mod179.not.not, label %.lr.ph.i.i58.prol, label %.lr.ph.i.i58.prol.loopexit

.lr.ph.i.i58.prol:                                ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !2474
  store i32 %i.bd, ptr %i.o, align 4, !tbaa !2474
  store i32 0, ptr %i.bb, align 4, !tbaa !2474
  %i.be = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br label %.lr.ph.i.i58.prol.loopexit

.lr.ph.i.i58.prol.loopexit:                       ; preds = %.lr.ph.i.i58.prol, %bb.j
  %.020.i.i.unr = phi i64 [ %i.a, %bb.j ], [ %.06.i.i, %.lr.ph.i.i58.prol ]
  %.0819.i.i.unr = phi ptr [ %i.bb, %bb.j ], [ %i.bg, %.lr.ph.i.i58.prol ]
  %.01618.i.i.unr = phi ptr [ %i.o, %bb.j ], [ %i.bh, %.lr.ph.i.i58.prol ]
  %i.bi = icmp eq i64 %.06.i.i, 0
  br i1 %i.bi, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i, label %.lr.ph.i.i58

.lr.ph.i.i58:                                     ; preds = %.lr.ph.i.i58.prol.loopexit, %.lr.ph.i.i58
  %.020.i.i = phi i64 [ %i.bo, %.lr.ph.i.i58 ], [ %.020.i.i.unr, %.lr.ph.i.i58.prol.loopexit ]
  %.0819.i.i = phi ptr [ %i.bs, %.lr.ph.i.i58 ], [ %.0819.i.i.unr, %.lr.ph.i.i58.prol.loopexit ] ; 4 uses
  %.01618.i.i = phi ptr [ %i.bt, %.lr.ph.i.i58 ], [ %.01618.i.i.unr, %.lr.ph.i.i58.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i) ]
  %i.bj = load i32, ptr %.0819.i.i, align 4, !tbaa !2474
  store i32 %i.bj, ptr %.01618.i.i, align 4, !tbaa !2474
  store i32 0, ptr %.0819.i.i, align 4, !tbaa !2474
  %i.bk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 4
  %i.bo = add i64 %.020.i.i, -2                   ; 2 uses
  %i.bp = load i32, ptr %i.bm, align 4, !tbaa !2474
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !2474
  store i32 0, ptr %i.bm, align 4, !tbaa !2474
  %i.bq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %.not.i.i59.1 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i59.1, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i, label %.lr.ph.i.i58, !llvm.loop !3980

_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i: ; preds = %.lr.ph.i.i58, %.lr.ph.i.i58.prol.loopexit
  %.not8.i.i = icmp eq ptr %1, %i.bb
  br i1 %.not8.i.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i.preheader

.lr.ph.i40.i.preheader:                           ; preds = %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i
  %4 = shl nuw nsw i64 %i.n, 2
  %5 = add i64 %4, %i.l
  %i.bu = mul i64 %.06.i.i, -4
  %reass.sub = sub i64 %i.bu, %i.ao
  %i.bv = add i64 %reass.sub, -8
  %i.bw = add i64 %5, %i.bv                       ; 2 uses
  %i.bx = lshr i64 %i.bw, 2
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bw, 172
  br i1 %min.iters.check, label %.lr.ph.i40.i.preheader171, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.preheader
  %i.bz = shl nuw nsw i64 %i.n, 2                 ; 3 uses
  %i.ca = getelementptr i8, ptr %i.k, i64 %i.bz
  %scevgep = getelementptr i8, ptr %i.ca, i64 -4
  %i.cb = add i64 %i.bz, %i.l
  %i.cc = mul i64 %.06.i.i, -4                    ; 2 uses
  %reass.sub164 = sub i64 %i.cc, %i.ao
  %i.cd = add i64 %reass.sub164, -8
  %i.ce = add i64 %i.cb, %i.cd                    ; 2 uses
  %i.cf = lshr i64 %i.ce, 2
  %i.cg = mul i64 %i.cf, -4
  %scevgep136 = getelementptr i8, ptr %scevgep, i64 %i.cg
  %scevgep137 = getelementptr i8, ptr %i.k, i64 %i.bz
  %i.ch = add i64 %i.cc, -8
  %i.ci = and i64 %i.ce, -4
  %i.cj = sub i64 %i.ch, %i.ci
  %scevgep138 = getelementptr i8, ptr %scevgep137, i64 %i.cj
  %bound0 = icmp ult ptr %scevgep136, %i.bb
  %bound1 = icmp ult ptr %scevgep138, %i.o
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.preheader171, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.by, 9223372036854775800     ; 3 uses
  %i.ck = mul i64 %n.vec, -4                      ; 2 uses
  %i.cl = getelementptr i8, ptr %i.o, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.bb, i64 %i.ck
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cn = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.cn ; 2 uses
  %next.gep139 = getelementptr i8, ptr %i.bb, i64 %i.cn ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %next.gep139, i64 -16 ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %next.gep139, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.co, align 4, !tbaa !2474, !alias.scope !4723
  %wide.load140 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !2474, !alias.scope !4723
  %i.cq = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cr = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cq, align 4, !tbaa !2474, !alias.scope !4726, !noalias !4723
  store <4 x i32> %wide.load140, ptr %i.cr, align 4, !tbaa !2474, !alias.scope !4726, !noalias !4723
  store <4 x i32> zeroinitializer, ptr %i.co, align 4, !tbaa !2474, !alias.scope !4723
  store <4 x i32> zeroinitializer, ptr %i.cp, align 4, !tbaa !2474, !alias.scope !4723
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !4728

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i.preheader171

.lr.ph.i40.i.preheader171:                        ; preds = %vector.memcheck, %.lr.ph.i40.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i40.i.preheader ], [ %i.cl, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.bb, %vector.memcheck ], [ %i.bb, %.lr.ph.i40.i.preheader ], [ %i.cm, %middle.block ]
  br label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %.lr.ph.i40.i.preheader171, %.lr.ph.i40.i
  %.010.i.i = phi ptr [ %i.cu, %.lr.ph.i40.i ], [ %.010.i.i.ph, %.lr.ph.i40.i.preheader171 ]
  %.079.i.i = phi ptr [ %i.ct, %.lr.ph.i40.i ], [ %.079.i.i.ph, %.lr.ph.i40.i.preheader171 ]
  %i.ct = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 4 uses
  %i.cu = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !2474
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !2474
  store i32 0, ptr %i.ct, align 4, !tbaa !2474
  %.not.i41.i = icmp eq ptr %1, %i.ct
  br i1 %.not.i41.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i, !llvm.loop !4729

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i40.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i
  %xtraiter181 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod182.not = icmp eq i64 %xtraiter181, 0
  br i1 %lcmp.mod182.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.09.i.i.i.prol = phi i64 [ %i.cw, %.lr.ph.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.preheader ]
  %.048.i.i.i.prol = phi ptr [ %i.da, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.prol = phi ptr [ %i.cz, %.lr.ph.i.i.i.prol ], [ %2, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter183 = phi i64 [ %prol.iter183.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.cw = add i64 %.09.i.i.i.prol, -1             ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.prol, i64 16
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !18
  store i32 %i.cy, ptr %.048.i.i.i.prol, align 4, !tbaa !2474
  %i.cz = load ptr, ptr %.sroa.0.07.i.i.i.prol, align 8, !tbaa !2636 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.048.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter183.next = add i64 %prol.iter183, 1   ; 2 uses
  %prol.iter183.cmp.not = icmp eq i64 %prol.iter183.next, %xtraiter181
  br i1 %prol.iter183.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !4730

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.unr = phi i64 [ %i.a, %.lr.ph.i.i.i.preheader ], [ %i.cw, %.lr.ph.i.i.i.prol ]
  %.048.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.preheader ], [ %i.da, %.lr.ph.i.i.i.prol ]
  %.sroa.0.07.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.preheader ], [ %i.cz, %.lr.ph.i.i.i.prol ]
  %i.db = icmp ult i64 %.06.i.i, 3
  br i1 %i.db, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.do, %.lr.ph.i.i.i ], [ %.09.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.048.i.i.i = phi ptr [ %i.ds, %.lr.ph.i.i.i ], [ %.048.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 16
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !18
  store i32 %i.dd, ptr %.048.i.i.i, align 4, !tbaa !2474
  %i.de = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !2636 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !18
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !2474
  %i.di = load ptr, ptr %i.de, align 8, !tbaa !2636 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !18
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !2474
  %i.dm = load ptr, ptr %i.di, align 8, !tbaa !2636 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 12
  %i.do = add i64 %.09.i.i.i, -4                  ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !18
  store i32 %i.dq, ptr %i.dn, align 4, !tbaa !2474
  %i.dr = load ptr, ptr %i.dm, align 8, !tbaa !2636
  %i.ds = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i.i, !llvm.loop !4731

.lr.ph.i48.preheader.i:                           ; preds = %bb.i
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.a
  br label %.lr.ph.i48.i

.lr.ph.i48.i:                                     ; preds = %.lr.ph.i48.i, %.lr.ph.i48.preheader.i
  %.018.i.i = phi ptr [ %i.dx, %.lr.ph.i48.i ], [ %1, %.lr.ph.i48.preheader.i ] ; 3 uses
  %.01517.i.i = phi ptr [ %i.dy, %.lr.ph.i48.i ], [ %i.dt, %.lr.ph.i48.preheader.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.du = load i32, ptr %.018.i.i, align 4, !tbaa !2474
  store i32 %i.du, ptr %.01517.i.i, align 4, !tbaa !2474
  store i32 0, ptr %.018.i.i, align 4, !tbaa !2474
  %i.dv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.dw = add i32 %i.dv, 1
  store i32 %i.dw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.dx = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4
  %.not.i49.i = icmp eq ptr %i.dx, %i.o
  br i1 %.not.i49.i, label %.lr.ph.i.i52.i.preheader, label %.lr.ph.i48.i, !llvm.loop !3992

.lr.ph.i.i52.i.preheader:                         ; preds = %.lr.ph.i48.i
  %xtraiter = and i64 %i.az, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i52.i.prol.loopexit, label %.lr.ph.i.i52.i.prol

.lr.ph.i.i52.i.prol:                              ; preds = %.lr.ph.i.i52.i.preheader, %.lr.ph.i.i52.i.prol
  %.09.i.i53.i.prol = phi i64 [ %i.dz, %.lr.ph.i.i52.i.prol ], [ %i.az, %.lr.ph.i.i52.i.preheader ]
  %.048.i.i54.i.prol = phi ptr [ %i.ed, %.lr.ph.i.i52.i.prol ], [ %1, %.lr.ph.i.i52.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i55.i.prol = phi ptr [ %i.ec, %.lr.ph.i.i52.i.prol ], [ %2, %.lr.ph.i.i52.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i52.i.prol ], [ 0, %.lr.ph.i.i52.i.preheader ]
  %i.dz = add i64 %.09.i.i53.i.prol, -1           ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.prol, i64 16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !18
  store i32 %i.eb, ptr %.048.i.i54.i.prol, align 4, !tbaa !2474
  %i.ec = load ptr, ptr %.sroa.0.07.i.i55.i.prol, align 8, !tbaa !2636 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i52.i.prol.loopexit, label %.lr.ph.i.i52.i.prol, !llvm.loop !4732

.lr.ph.i.i52.i.prol.loopexit:                     ; preds = %.lr.ph.i.i52.i.prol, %.lr.ph.i.i52.i.preheader
  %.lcssa173.unr = phi ptr [ poison, %.lr.ph.i.i52.i.preheader ], [ %i.ec, %.lr.ph.i.i52.i.prol ]
  %.09.i.i53.i.unr = phi i64 [ %i.az, %.lr.ph.i.i52.i.preheader ], [ %i.dz, %.lr.ph.i.i52.i.prol ]
  %.048.i.i54.i.unr = phi ptr [ %1, %.lr.ph.i.i52.i.preheader ], [ %i.ed, %.lr.ph.i.i52.i.prol ]
  %.sroa.0.07.i.i55.i.unr = phi ptr [ %2, %.lr.ph.i.i52.i.preheader ], [ %i.ec, %.lr.ph.i.i52.i.prol ]
  %i.ee = icmp ult i64 %i.az, 4
  br i1 %i.ee, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test24movable_and_copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i, label %.lr.ph.i.i52.i

.lr.ph.i.i52.i:                                   ; preds = %.lr.ph.i.i52.i.prol.loopexit, %.lr.ph.i.i52.i
  %.09.i.i53.i = phi i64 [ %i.er, %.lr.ph.i.i52.i ], [ %.09.i.i53.i.unr, %.lr.ph.i.i52.i.prol.loopexit ]
  %.048.i.i54.i = phi ptr [ %i.ev, %.lr.ph.i.i52.i ], [ %.048.i.i54.i.unr, %.lr.ph.i.i52.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i55.i = phi ptr [ %i.eu, %.lr.ph.i.i52.i ], [ %.sroa.0.07.i.i55.i.unr, %.lr.ph.i.i52.i.prol.loopexit ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i, i64 16
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !18
  store i32 %i.eg, ptr %.048.i.i54.i, align 4, !tbaa !2474
  %i.eh = load ptr, ptr %.sroa.0.07.i.i55.i, align 8, !tbaa !2636 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !18
  store i32 %i.ek, ptr %i.ei, align 4, !tbaa !2474
  %i.el = load ptr, ptr %i.eh, align 8, !tbaa !2636 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !18
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !2474
  %i.ep = load ptr, ptr %i.el, align 8, !tbaa !2636 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 12
  %i.er = add i64 %.09.i.i53.i, -4                ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.et = load i32, ptr %i.es, align 4, !tbaa !18
  store i32 %i.et, ptr %i.eq, align 4, !tbaa !2474
  %i.eu = load ptr, ptr %i.ep, align 8, !tbaa !2636 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 16
  %.not.i.i56.i.3 = icmp eq i64 %i.er, 0
  br i1 %.not.i.i56.i.3, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test24movable_and_copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i, label %.lr.ph.i.i52.i, !llvm.loop !4731

_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test24movable_and_copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i: ; preds = %.lr.ph.i.i52.i, %.lr.ph.i.i52.i.prol.loopexit
  %.lcssa173 = phi ptr [ %.lcssa173.unr, %.lr.ph.i.i52.i.prol.loopexit ], [ %i.eu, %.lr.ph.i.i52.i ] ; 3 uses
  %i.ew = sub i64 %i.a, %i.az                     ; 3 uses
  %xtraiter175 = and i64 %i.ew, 1
  %lcmp.mod176.not = icmp eq i64 %xtraiter175, 0
  br i1 %lcmp.mod176.not, label %.lr.ph.i.i60.i.prol.loopexit, label %.lr.ph.i.i60.i.prol

.lr.ph.i.i60.i.prol:                              ; preds = %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test24movable_and_copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.lcssa173, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !18
  store i32 %i.ey, ptr %i.o, align 4, !tbaa !2474
  %i.ez = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.fa = add i32 %i.ez, 1
  store i32 %i.fa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.fb = load ptr, ptr %.lcssa173, align 8, !tbaa !2636
  %i.fc = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.fd = add nsw i64 %i.ew, -1
  br label %.lr.ph.i.i60.i.prol.loopexit

.lr.ph.i.i60.i.prol.loopexit:                     ; preds = %.lr.ph.i.i60.i.prol, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test24movable_and_copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i
  %.018.i.i.i.unr = phi i64 [ %i.ew, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test24movable_and_copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i ], [ %i.fd, %.lr.ph.i.i60.i.prol ]
  %.01417.i.i.i.unr = phi ptr [ %i.o, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test24movable_and_copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i ], [ %i.fc, %.lr.ph.i.i60.i.prol ]
  %.sroa.0.016.i.i.i.unr = phi ptr [ %.lcssa173, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test24movable_and_copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i ], [ %i.fb, %.lr.ph.i.i60.i.prol ]
  %i.fe = icmp eq i64 %.06.i.i, %i.az
  br i1 %i.fe, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i60.i

.lr.ph.i.i60.i:                                   ; preds = %.lr.ph.i.i60.i.prol.loopexit, %.lr.ph.i.i60.i
  %.018.i.i.i = phi i64 [ %i.fq, %.lr.ph.i.i60.i ], [ %.018.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ]
  %.01417.i.i.i = phi ptr [ %i.fp, %.lr.ph.i.i60.i ], [ %.01417.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i = phi ptr [ %i.fo, %.lr.ph.i.i60.i ], [ %.sroa.0.016.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i) ]
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !18
  store i32 %i.fg, ptr %.01417.i.i.i, align 4, !tbaa !2474
  %i.fh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18 ; 2 uses
  %i.fi = add i32 %i.fh, 1
  store i32 %i.fi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.fj = load ptr, ptr %.sroa.0.016.i.i.i, align 8, !tbaa !2636 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !18
  store i32 %i.fm, ptr %i.fk, align 4, !tbaa !2474
  %i.fn = add i32 %i.fh, 2
  store i32 %i.fn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.fo = load ptr, ptr %i.fj, align 8, !tbaa !2636
  %i.fp = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 8
  %i.fq = add i64 %.018.i.i.i, -2                 ; 2 uses
  %.not.i.i61.i.1 = icmp eq i64 %i.fq, 0
  br i1 %.not.i.i61.i.1, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i60.i, !llvm.loop !4733

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit: ; preds = %.lr.ph.i.i60.i.prol.loopexit, %.lr.ph.i.i60.i, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.fr = add i64 %i.n, %i.a
  store i64 %i.fr, ptr %i.m, align 8, !tbaa !2471
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %.not46.not = icmp ugt i64 %i.ab, %.06.i.i
  br i1 %.not46.not, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %.not.i60.not = icmp ugt i64 %i.ar, %.06.i.i
  %i.fs = xor i64 %.06.i.i, -1                    ; 2 uses
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.fs ; 3 uses
  br i1 %.not.i60.not, label %.lr.ph.i.i62.preheader, label %.lr.ph.i48.i78

.lr.ph.i.i62.preheader:                           ; preds = %bb.l
  %i.fu = icmp eq i64 %.06.i.i, 0
  br i1 %i.fu, label %.lr.ph.i.i62.epil.preheader, label %.lr.ph.i.i62.preheader.new

.lr.ph.i.i62.preheader.new:                       ; preds = %.lr.ph.i.i62.preheader
  %unroll_iter = and i64 %i.a, -2
  br label %.lr.ph.i.i62

.lr.ph.i.i62:                                     ; preds = %.lr.ph.i.i62, %.lr.ph.i.i62.preheader.new
  %indvar = phi i64 [ 0, %.lr.ph.i.i62.preheader.new ], [ %indvar.next.1, %.lr.ph.i.i62 ] ; 2 uses
  %.0919.i.i = phi ptr [ %i.ac, %.lr.ph.i.i62.preheader.new ], [ %i.gd, %.lr.ph.i.i62 ] ; 4 uses
  %.01618.i.i64 = phi ptr [ %i.ft, %.lr.ph.i.i62.preheader.new ], [ %i.ge, %.lr.ph.i.i62 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i62.preheader.new ], [ %niter.next.1, %.lr.ph.i.i62 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i64) ]
  %i.fv = load i32, ptr %.0919.i.i, align 4, !tbaa !2474
  store i32 %i.fv, ptr %.01618.i.i64, align 4, !tbaa !2474
  store i32 0, ptr %.0919.i.i, align 4, !tbaa !2474
  %i.fw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.fx = add i32 %i.fw, 1
  store i32 %i.fx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.fy = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 4 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.01618.i.i64, i64 4
  %i.ga = load i32, ptr %i.fy, align 4, !tbaa !2474
  store i32 %i.ga, ptr %i.fz, align 4, !tbaa !2474
  store i32 0, ptr %i.fy, align 4, !tbaa !2474
  %i.gb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.gc = add i32 %i.gb, 1
  store i32 %i.gc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.gd = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 8 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.01618.i.i64, i64 8 ; 2 uses
  %indvar.next.1 = add i64 %indvar, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa, label %.lr.ph.i.i62, !llvm.loop !4000

_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i62
  %indvar.next = or disjoint i64 %indvar, 1
  %i.gf = and i64 %.06.i.i, 1
  %lcmp.mod191.not.not = icmp eq i64 %i.gf, 0
  br i1 %lcmp.mod191.not.not, label %.lr.ph.i.i62.epil.preheader, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i

.lr.ph.i.i62.epil.preheader:                      ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa, %.lr.ph.i.i62.preheader
  %indvar.epil.init = phi i64 [ 0, %.lr.ph.i.i62.preheader ], [ %indvar.next.1, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ]
  %.0919.i.i.epil.init = phi ptr [ %i.ac, %.lr.ph.i.i62.preheader ], [ %i.gd, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ] ; 3 uses
  %.01618.i.i64.epil.init = phi ptr [ %i.ft, %.lr.ph.i.i62.preheader ], [ %i.ge, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod194 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod194)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i64.epil.init) ]
  %i.gg = load i32, ptr %.0919.i.i.epil.init, align 4, !tbaa !2474
  store i32 %i.gg, ptr %.01618.i.i64.epil.init, align 4, !tbaa !2474
  store i32 0, ptr %.0919.i.i.epil.init, align 4, !tbaa !2474
  %i.gh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.gi = add i32 %i.gh, 1
  store i32 %i.gi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.gj = getelementptr inbounds nuw i8, ptr %.0919.i.i.epil.init, i64 4
  br label %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa, %.lr.ph.i.i62.epil.preheader
  %indvar.lcssa = phi i64 [ %indvar.next, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ], [ %indvar.epil.init, %.lr.ph.i.i62.epil.preheader ]
  %.lcssa167 = phi ptr [ %i.gd, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ], [ %i.gj, %.lr.ph.i.i62.epil.preheader ] ; 6 uses
  %.not8.i.i66 = icmp eq ptr %.lcssa167, %1
  br i1 %.not8.i.i66, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67.preheader

.lr.ph.i40.i67.preheader:                         ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i
  %.neg = mul i64 %i.ab, -4
  %.neg165 = sub i64 %.neg, %i.l
  %i.gk = add i64 %i.ao, -8
  %i.gl = shl i64 %.06.i.i, 2
  %6 = sub i64 %i.gk, %i.gl
  %7 = add i64 %.neg165, %6                       ; 2 uses
  %i.gm = lshr i64 %7, 2
  %i.gn = add nuw nsw i64 %i.gm, 1                ; 2 uses
  %min.iters.check150 = icmp ult i64 %7, 172
  br i1 %min.iters.check150, label %.lr.ph.i40.i67.preheader166, label %vector.memcheck142

vector.memcheck142:                               ; preds = %.lr.ph.i40.i67.preheader
  %i.go = shl nuw nsw i64 %i.ab, 2                ; 3 uses
  %i.gp = getelementptr i8, ptr %i.k, i64 %i.go
  %scevgep143 = getelementptr i8, ptr %i.gp, i64 4
  %i.gq = add i64 %i.go, %i.l
  %i.gr = add i64 %i.ao, -8
  %i.gs = shl i64 %.06.i.i, 2
  %i.gt = add i64 %i.gs, %i.gq
  %i.gu = sub i64 %i.gr, %i.gt
  %i.gv = and i64 %i.gu, -4                       ; 2 uses
  %scevgep144 = getelementptr i8, ptr %scevgep143, i64 %i.gv
  %i.gw = shl i64 %indvar.lcssa, 2
  %i.gx = getelementptr i8, ptr %i.k, i64 %i.gw
  %i.gy = getelementptr i8, ptr %i.gx, i64 %i.go
  %i.gz = getelementptr i8, ptr %i.gy, i64 8
  %scevgep145 = getelementptr i8, ptr %i.gz, i64 %i.gv
  %bound0146 = icmp ult ptr %i.ac, %scevgep145
  %bound1147 = icmp ult ptr %.lcssa167, %scevgep144
  %found.conflict148 = and i1 %bound0146, %bound1147
  br i1 %found.conflict148, label %.lr.ph.i40.i67.preheader166, label %vector.ph151

vector.ph151:                                     ; preds = %vector.memcheck142
  %n.vec152 = and i64 %i.gn, 9223372036854775800  ; 3 uses
  %i.ha = shl i64 %n.vec152, 2                    ; 2 uses
  %i.hb = getelementptr i8, ptr %i.ac, i64 %i.ha  ; 2 uses
  %i.hc = getelementptr i8, ptr %.lcssa167, i64 %i.ha
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next159, %vector.body153 ] ; 2 uses
  %i.hd = shl i64 %index154, 2                    ; 2 uses
  %next.gep155 = getelementptr i8, ptr %i.ac, i64 %i.hd ; 2 uses
  %next.gep156 = getelementptr i8, ptr %.lcssa167, i64 %i.hd ; 3 uses
  %i.he = getelementptr i8, ptr %next.gep156, i64 16 ; 2 uses
  %wide.load157 = load <4 x i32>, ptr %next.gep156, align 4, !tbaa !2474, !alias.scope !4734
  %wide.load158 = load <4 x i32>, ptr %i.he, align 4, !tbaa !2474, !alias.scope !4734
  %i.hf = getelementptr i8, ptr %next.gep155, i64 16
  store <4 x i32> %wide.load157, ptr %next.gep155, align 4, !tbaa !2474, !alias.scope !4737, !noalias !4734
  store <4 x i32> %wide.load158, ptr %i.hf, align 4, !tbaa !2474, !alias.scope !4737, !noalias !4734
  store <4 x i32> zeroinitializer, ptr %next.gep156, align 4, !tbaa !2474, !alias.scope !4734
  store <4 x i32> zeroinitializer, ptr %i.he, align 4, !tbaa !2474, !alias.scope !4734
  %index.next159 = add nuw i64 %index154, 8       ; 2 uses
  %i.hg = icmp eq i64 %index.next159, %n.vec152
  br i1 %i.hg, label %middle.block160, label %vector.body153, !llvm.loop !4739

middle.block160:                                  ; preds = %vector.body153
  %cmp.n161 = icmp eq i64 %i.gn, %n.vec152
  br i1 %cmp.n161, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67.preheader166

.lr.ph.i40.i67.preheader166:                      ; preds = %vector.memcheck142, %.lr.ph.i40.i67.preheader, %middle.block160
  %.010.i.i68.ph = phi ptr [ %i.ac, %vector.memcheck142 ], [ %i.ac, %.lr.ph.i40.i67.preheader ], [ %i.hb, %middle.block160 ]
  %.079.i.i69.ph = phi ptr [ %.lcssa167, %vector.memcheck142 ], [ %.lcssa167, %.lr.ph.i40.i67.preheader ], [ %i.hc, %middle.block160 ]
  br label %.lr.ph.i40.i67

.lr.ph.i40.i67:                                   ; preds = %.lr.ph.i40.i67.preheader166, %.lr.ph.i40.i67
  %.010.i.i68 = phi ptr [ %i.hj, %.lr.ph.i40.i67 ], [ %.010.i.i68.ph, %.lr.ph.i40.i67.preheader166 ] ; 2 uses
  %.079.i.i69 = phi ptr [ %i.hi, %.lr.ph.i40.i67 ], [ %.079.i.i69.ph, %.lr.ph.i40.i67.preheader166 ] ; 3 uses
  %i.hh = load i32, ptr %.079.i.i69, align 4, !tbaa !2474
  store i32 %i.hh, ptr %.010.i.i68, align 4, !tbaa !2474
  store i32 0, ptr %.079.i.i69, align 4, !tbaa !2474
  %i.hi = getelementptr inbounds nuw i8, ptr %.079.i.i69, i64 4 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.010.i.i68, i64 4 ; 2 uses
  %.not.i41.i70 = icmp eq ptr %i.hi, %1
  br i1 %.not.i41.i70, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67, !llvm.loop !4740

.lr.ph.i.i.i72.preheader:                         ; preds = %.lr.ph.i40.i67, %middle.block160, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i
  %.048.i.i.i74.ph = phi ptr [ %i.ac, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i ], [ %i.hb, %middle.block160 ], [ %i.hj, %.lr.ph.i40.i67 ] ; 2 uses
  %xtraiter195 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod196.not = icmp eq i64 %xtraiter195, 0
  br i1 %lcmp.mod196.not, label %.lr.ph.i.i.i72.prol.loopexit, label %.lr.ph.i.i.i72.prol

.lr.ph.i.i.i72.prol:                              ; preds = %.lr.ph.i.i.i72.preheader, %.lr.ph.i.i.i72.prol
  %.09.i.i.i73.prol = phi i64 [ %i.hk, %.lr.ph.i.i.i72.prol ], [ %i.a, %.lr.ph.i.i.i72.preheader ]
  %.048.i.i.i74.prol = phi ptr [ %i.ho, %.lr.ph.i.i.i72.prol ], [ %.048.i.i.i74.ph, %.lr.ph.i.i.i72.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i75.prol = phi ptr [ %i.hn, %.lr.ph.i.i.i72.prol ], [ %2, %.lr.ph.i.i.i72.preheader ] ; 2 uses
  %prol.iter197 = phi i64 [ %prol.iter197.next, %.lr.ph.i.i.i72.prol ], [ 0, %.lr.ph.i.i.i72.preheader ]
  %i.hk = add i64 %.09.i.i.i73.prol, -1           ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i75.prol, i64 16
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !18
  store i32 %i.hm, ptr %.048.i.i.i74.prol, align 4, !tbaa !2474
  %i.hn = load ptr, ptr %.sroa.0.07.i.i.i75.prol, align 8, !tbaa !2636 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.048.i.i.i74.prol, i64 4 ; 2 uses
  %prol.iter197.next = add i64 %prol.iter197, 1   ; 2 uses
  %prol.iter197.cmp.not = icmp eq i64 %prol.iter197.next, %xtraiter195
  br i1 %prol.iter197.cmp.not, label %.lr.ph.i.i.i72.prol.loopexit, label %.lr.ph.i.i.i72.prol, !llvm.loop !4741

.lr.ph.i.i.i72.prol.loopexit:                     ; preds = %.lr.ph.i.i.i72.prol, %.lr.ph.i.i.i72.preheader
  %.09.i.i.i73.unr = phi i64 [ %i.a, %.lr.ph.i.i.i72.preheader ], [ %i.hk, %.lr.ph.i.i.i72.prol ]
  %.048.i.i.i74.unr = phi ptr [ %.048.i.i.i74.ph, %.lr.ph.i.i.i72.preheader ], [ %i.ho, %.lr.ph.i.i.i72.prol ]
  %.sroa.0.07.i.i.i75.unr = phi ptr [ %2, %.lr.ph.i.i.i72.preheader ], [ %i.hn, %.lr.ph.i.i.i72.prol ]
  %i.hp = icmp ult i64 %.06.i.i, 3
  br i1 %i.hp, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i.i72

.lr.ph.i.i.i72:                                   ; preds = %.lr.ph.i.i.i72.prol.loopexit, %.lr.ph.i.i.i72
  %.09.i.i.i73 = phi i64 [ %i.ic, %.lr.ph.i.i.i72 ], [ %.09.i.i.i73.unr, %.lr.ph.i.i.i72.prol.loopexit ]
  %.048.i.i.i74 = phi ptr [ %i.ig, %.lr.ph.i.i.i72 ], [ %.048.i.i.i74.unr, %.lr.ph.i.i.i72.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i75 = phi ptr [ %i.if, %.lr.ph.i.i.i72 ], [ %.sroa.0.07.i.i.i75.unr, %.lr.ph.i.i.i72.prol.loopexit ] ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i75, i64 16
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !18
  store i32 %i.hr, ptr %.048.i.i.i74, align 4, !tbaa !2474
  %i.hs = load ptr, ptr %.sroa.0.07.i.i.i75, align 8, !tbaa !2636 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 4
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !18
  store i32 %i.hv, ptr %i.ht, align 4, !tbaa !2474
  %i.hw = load ptr, ptr %i.hs, align 8, !tbaa !2636 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !18
  store i32 %i.hz, ptr %i.hx, align 4, !tbaa !2474
  %i.ia = load ptr, ptr %i.hw, align 8, !tbaa !2636 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 12
  %i.ic = add i64 %.09.i.i.i73, -4                ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !18
  store i32 %i.ie, ptr %i.ib, align 4, !tbaa !2474
  %i.if = load ptr, ptr %i.ia, align 8, !tbaa !2636
  %i.ig = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 16
  %.not.i.i.i76.3 = icmp eq i64 %i.ic, 0
  br i1 %.not.i.i.i76.3, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i.i72, !llvm.loop !4731

.lr.ph.i48.i78:                                   ; preds = %bb.l, %.lr.ph.i48.i78
  %.018.i.i79 = phi ptr [ %i.ik, %.lr.ph.i48.i78 ], [ %i.ac, %bb.l ] ; 3 uses
  %.01517.i.i80 = phi ptr [ %i.il, %.lr.ph.i48.i78 ], [ %i.ft, %bb.l ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i80) ]
  %i.ih = load i32, ptr %.018.i.i79, align 4, !tbaa !2474
  store i32 %i.ih, ptr %.01517.i.i80, align 4, !tbaa !2474
  store i32 0, ptr %.018.i.i79, align 4, !tbaa !2474
  %i.ii = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.ij = add i32 %i.ii, 1
  store i32 %i.ij, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.ik = getelementptr inbounds nuw i8, ptr %.018.i.i79, i64 4 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.01517.i.i80, i64 4 ; 3 uses
  %.not.i49.i81 = icmp eq ptr %i.ik, %1
  br i1 %.not.i49.i81, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i, label %.lr.ph.i48.i78, !llvm.loop !3992

_ZN5boost9container24uninitialized_move_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i: ; preds = %.lr.ph.i48.i78
  %i.im = sub i64 %i.a, %i.ar                     ; 3 uses
  %xtraiter184 = and i64 %i.im, 1
  %lcmp.mod185.not = icmp eq i64 %xtraiter184, 0
  br i1 %lcmp.mod185.not, label %.lr.ph.i.i51.i.prol.loopexit, label %.lr.ph.i.i51.i.prol

.lr.ph.i.i51.i.prol:                              ; preds = %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i
  %i.in = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.io = load i32, ptr %i.in, align 4, !tbaa !18
  store i32 %i.io, ptr %i.il, align 4, !tbaa !2474
  %i.ip = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.iq = add i32 %i.ip, 1
  store i32 %i.iq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.ir = load ptr, ptr %2, align 8, !tbaa !2636  ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.01517.i.i80, i64 8
  %i.it = add nsw i64 %i.im, -1
  br label %.lr.ph.i.i51.i.prol.loopexit

.lr.ph.i.i51.i.prol.loopexit:                     ; preds = %.lr.ph.i.i51.i.prol, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i
  %.lcssa169.unr = phi ptr [ poison, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ], [ %i.ir, %.lr.ph.i.i51.i.prol ]
  %.018.i.i.i82.unr = phi i64 [ %i.im, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ], [ %i.it, %.lr.ph.i.i51.i.prol ]
  %.01417.i.i.i83.unr = phi ptr [ %i.il, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ], [ %i.is, %.lr.ph.i.i51.i.prol ]
  %.sroa.0.016.i.i.i84.unr = phi ptr [ %2, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ], [ %i.ir, %.lr.ph.i.i51.i.prol ]
  %i.iu = icmp eq i64 %.06.i.i, %i.ar
  br i1 %i.iu, label %.lr.ph.i.i56.i.preheader, label %.lr.ph.i.i51.i

.lr.ph.i.i51.i:                                   ; preds = %.lr.ph.i.i51.i.prol.loopexit, %.lr.ph.i.i51.i
  %.018.i.i.i82 = phi i64 [ %i.jg, %.lr.ph.i.i51.i ], [ %.018.i.i.i82.unr, %.lr.ph.i.i51.i.prol.loopexit ]
  %.01417.i.i.i83 = phi ptr [ %i.jf, %.lr.ph.i.i51.i ], [ %.01417.i.i.i83.unr, %.lr.ph.i.i51.i.prol.loopexit ] ; 3 uses
  %.sroa.0.016.i.i.i84 = phi ptr [ %i.je, %.lr.ph.i.i51.i ], [ %.sroa.0.016.i.i.i84.unr, %.lr.ph.i.i51.i.prol.loopexit ] ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i84, i64 16
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !18
  store i32 %i.iw, ptr %.01417.i.i.i83, align 4, !tbaa !2474
  %i.ix = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18 ; 2 uses
  %i.iy = add i32 %i.ix, 1
  store i32 %i.iy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.iz = load ptr, ptr %.sroa.0.016.i.i.i84, align 8, !tbaa !2636 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.01417.i.i.i83, i64 4
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !18
  store i32 %i.jc, ptr %i.ja, align 4, !tbaa !2474
  %i.jd = add i32 %i.ix, 2
  store i32 %i.jd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.je = load ptr, ptr %i.iz, align 8, !tbaa !2636 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.01417.i.i.i83, i64 8
  %i.jg = add i64 %.018.i.i.i82, -2               ; 2 uses
  %.not.i.i52.i.1 = icmp eq i64 %i.jg, 0
  br i1 %.not.i.i52.i.1, label %.lr.ph.i.i56.i.preheader, label %.lr.ph.i.i51.i, !llvm.loop !4733

.lr.ph.i.i56.i.preheader:                         ; preds = %.lr.ph.i.i51.i, %.lr.ph.i.i51.i.prol.loopexit
  %.lcssa169 = phi ptr [ %.lcssa169.unr, %.lr.ph.i.i51.i.prol.loopexit ], [ %i.je, %.lr.ph.i.i51.i ] ; 2 uses
  %xtraiter187 = and i64 %i.ar, 3                 ; 2 uses
  %lcmp.mod188.not = icmp eq i64 %xtraiter187, 0
  br i1 %lcmp.mod188.not, label %.lr.ph.i.i56.i.prol.loopexit, label %.lr.ph.i.i56.i.prol

.lr.ph.i.i56.i.prol:                              ; preds = %.lr.ph.i.i56.i.preheader, %.lr.ph.i.i56.i.prol
  %.09.i.i57.i.prol = phi i64 [ %i.jh, %.lr.ph.i.i56.i.prol ], [ %i.ar, %.lr.ph.i.i56.i.preheader ]
  %.048.i.i58.i.prol = phi ptr [ %i.jl, %.lr.ph.i.i56.i.prol ], [ %i.ac, %.lr.ph.i.i56.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i59.i.prol = phi ptr [ %i.jk, %.lr.ph.i.i56.i.prol ], [ %.lcssa169, %.lr.ph.i.i56.i.preheader ] ; 2 uses
  %prol.iter189 = phi i64 [ %prol.iter189.next, %.lr.ph.i.i56.i.prol ], [ 0, %.lr.ph.i.i56.i.preheader ]
  %i.jh = add i64 %.09.i.i57.i.prol, -1           ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i59.i.prol, i64 16
end_hunk_1
begin_hunk_2_@_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE21resize_back_slow_pathIJRKS3_EEEvmmDpOT_:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %3, align 4, !tbaa !2523
  store i32 %i.av, ptr %i.au, align 4, !tbaa !2523
  %i.aw = add i32 %i.ap, 2
  store i32 %i.aw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.07.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %3, align 4, !tbaa !2523
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !2523
  %i.ba = add i32 %i.ap, 3
  store i32 %i.ba, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.07.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.bd = load i32, ptr %3, align 4, !tbaa !2523
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !2523
  %i.be = add i32 %i.ap, 4                        ; 2 uses
  store i32 %i.be, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.bf = add nuw i64 %.07.i, 4                   ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bf, %2
  br i1 %exitcond.not.i.3, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS4_EEDpOT_.exit, label %scalar.ph, !llvm.loop !5564

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS4_EEDpOT_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit
  %i.bg = load ptr, ptr %0, align 8, !tbaa !2534  ; 4 uses
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !2533 ; 4 uses
  %i.bi = getelementptr [4 x i8], ptr %i.bg, i64 %i.bh ; 8 uses
  %i.bj = getelementptr [4 x i8], ptr %i.bg, i64 %i.y ; 4 uses
  %.not16.i = icmp samesign eq i64 %i.bh, %i.y
  br i1 %.not16.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, label %.lr.ph.i18.preheader

.lr.ph.i18.preheader:                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS4_EEDpOT_.exit
  %i.bk = getelementptr [4 x i8], ptr %.0.i.i17, i64 %i.bh ; 6 uses
  %_ZN5boost9container4test12copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18 ; 3 uses
  %i.bl = shl i64 %i.y, 2
  %i.bm = shl i64 %i.bh, 2
  %i.bn = add i64 %i.bl, -4
  %i.bo = sub i64 %i.bn, %i.bm                    ; 3 uses
  %i.bp = lshr exact i64 %i.bo, 2
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 3 uses
  %min.iters.check61 = icmp ult i64 %i.bo, 92
  br i1 %min.iters.check61, label %.lr.ph.i18.preheader84, label %vector.memcheck49

vector.memcheck49:                                ; preds = %.lr.ph.i18.preheader
  %bound050 = icmp ult ptr %i.bk, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound151 = icmp ugt ptr %i.z, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict52 = and i1 %bound050, %bound151
  %bound053 = icmp ult ptr %i.bk, %i.bj
  %bound154 = icmp ult ptr %i.bi, %i.z
  %found.conflict55 = and i1 %bound053, %bound154
  %conflict.rdx = or i1 %found.conflict52, %found.conflict55
  %bound056 = icmp ugt ptr %i.bj, @_ZN5boost9container4test12copyable_int5countE
  %bound157 = icmp ult ptr %i.bi, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict58 = and i1 %bound056, %bound157
  %conflict.rdx59 = or i1 %conflict.rdx, %found.conflict58
  br i1 %conflict.rdx59, label %.lr.ph.i18.preheader84, label %vector.ph62

vector.ph62:                                      ; preds = %vector.memcheck49
  %n.vec63 = and i64 %i.bq, 9223372036854775800   ; 3 uses
  %i.br = shl i64 %n.vec63, 2                     ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bi, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bk, i64 %i.br
  %i.bu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test12copyable_int5countE.promoted, i64 0
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph62
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next77, %vector.body64 ] ; 2 uses
  %vec.phi66 = phi <4 x i32> [ %i.bu, %vector.ph62 ], [ %i.by, %vector.body64 ]
  %vec.phi67 = phi <4 x i32> [ zeroinitializer, %vector.ph62 ], [ %i.bz, %vector.body64 ]
  %i.bv = shl i64 %index65, 2                     ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bi, i64 %i.bv ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.bk, i64 %i.bv ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep68) ]
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !2523, !alias.scope !5565
  %wide.load76 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !2523, !alias.scope !5565
  %i.bx = getelementptr i8, ptr %next.gep68, i64 16
  store <4 x i32> %wide.load, ptr %next.gep68, align 4, !tbaa !2523, !alias.scope !5568, !noalias !5570
  store <4 x i32> %wide.load76, ptr %i.bx, align 4, !tbaa !2523, !alias.scope !5568, !noalias !5570
  %i.by = add <4 x i32> %vec.phi66, splat (i32 1) ; 2 uses
  %i.bz = add <4 x i32> %vec.phi67, splat (i32 1) ; 2 uses
  %index.next77 = add nuw i64 %index65, 8         ; 2 uses
  %i.ca = icmp eq i64 %index.next77, %n.vec63
  br i1 %i.ca, label %middle.block78, label %vector.body64, !llvm.loop !5572

middle.block78:                                   ; preds = %vector.body64
  %bin.rdx79 = add <4 x i32> %i.bz, %i.by
  %i.cb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx79) ; 2 uses
  store i32 %i.cb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18, !alias.scope !5573, !noalias !5565
  %cmp.n80 = icmp eq i64 %i.bq, %n.vec63
  br i1 %cmp.n80, label %.lr.ph.i21.preheader, label %.lr.ph.i18.preheader84

.lr.ph.i18.preheader84:                           ; preds = %vector.memcheck49, %.lr.ph.i18.preheader, %middle.block78
  %.ph = phi i32 [ %_ZN5boost9container4test12copyable_int5countE.promoted, %vector.memcheck49 ], [ %_ZN5boost9container4test12copyable_int5countE.promoted, %.lr.ph.i18.preheader ], [ %i.cb, %middle.block78 ]
  %.018.i.ph = phi ptr [ %i.bi, %vector.memcheck49 ], [ %i.bi, %.lr.ph.i18.preheader ], [ %i.bs, %middle.block78 ]
  %.01517.i.ph = phi ptr [ %i.bk, %vector.memcheck49 ], [ %i.bk, %.lr.ph.i18.preheader ], [ %i.bt, %middle.block78 ]
  br label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %.lr.ph.i18.preheader84, %.lr.ph.i18
  %i.cc = phi i32 [ %i.ce, %.lr.ph.i18 ], [ %.ph, %.lr.ph.i18.preheader84 ]
  %.018.i = phi ptr [ %i.cf, %.lr.ph.i18 ], [ %.018.i.ph, %.lr.ph.i18.preheader84 ] ; 2 uses
  %.01517.i = phi ptr [ %i.cg, %.lr.ph.i18 ], [ %.01517.i.ph, %.lr.ph.i18.preheader84 ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.cd = load i32, ptr %.018.i, align 4, !tbaa !2523
  store i32 %i.cd, ptr %.01517.i, align 4, !tbaa !2523
  %i.ce = add i32 %i.cc, 1                        ; 2 uses
  store i32 %i.ce, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  %.not.i19 = icmp eq ptr %i.cf, %i.bj
  br i1 %.not.i19, label %.lr.ph.i21.preheader, label %.lr.ph.i18, !llvm.loop !5574

.lr.ph.i21.preheader:                             ; preds = %.lr.ph.i18, %middle.block78
  %xtraiter89 = and i64 %i.bq, 3                  ; 2 uses
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %.lr.ph.i21.prol.loopexit, label %.lr.ph.i21.prol

.lr.ph.i21.prol:                                  ; preds = %.lr.ph.i21.preheader, %.lr.ph.i21.prol
  %.06.i.prol = phi ptr [ %i.cj, %.lr.ph.i21.prol ], [ %i.bi, %.lr.ph.i21.preheader ] ; 2 uses
  %prol.iter91 = phi i64 [ %prol.iter91.next, %.lr.ph.i21.prol ], [ 0, %.lr.ph.i21.preheader ]
  store i32 -2147483648, ptr %.06.i.prol, align 4, !tbaa !2523
  %i.ch = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.ci = add i32 %i.ch, -1
  store i32 %i.ci, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %.06.i.prol, i64 4 ; 2 uses
  %prol.iter91.next = add i64 %prol.iter91, 1     ; 2 uses
  %prol.iter91.cmp.not = icmp eq i64 %prol.iter91.next, %xtraiter89
  br i1 %prol.iter91.cmp.not, label %.lr.ph.i21.prol.loopexit, label %.lr.ph.i21.prol, !llvm.loop !5575

.lr.ph.i21.prol.loopexit:                         ; preds = %.lr.ph.i21.prol, %.lr.ph.i21.preheader
  %.06.i.unr = phi ptr [ %i.bi, %.lr.ph.i21.preheader ], [ %i.cj, %.lr.ph.i21.prol ]
  %i.ck = icmp ult i64 %i.bo, 12
  br i1 %i.ck, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.lr.ph.i21.prol.loopexit, %.lr.ph.i21
  %.06.i = phi ptr [ %i.ct, %.lr.ph.i21 ], [ %.06.i.unr, %.lr.ph.i21.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.06.i, align 4, !tbaa !2523
  %i.cl = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18 ; 4 uses
  %i.cm = add i32 %i.cl, -1
  store i32 %i.cm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.cn = getelementptr inbounds nuw i8, ptr %.06.i, i64 4
  store i32 -2147483648, ptr %i.cn, align 4, !tbaa !2523
  %i.co = add i32 %i.cl, -2
  store i32 %i.co, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  store i32 -2147483648, ptr %i.cp, align 4, !tbaa !2523
  %i.cq = add i32 %i.cl, -3
  store i32 %i.cq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %.06.i, i64 12
  store i32 -2147483648, ptr %i.cr, align 4, !tbaa !2523
  %i.cs = add i32 %i.cl, -4
  store i32 %i.cs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i, i64 16 ; 2 uses
  %.not.i22.3 = icmp eq ptr %i.ct, %i.bj
  br i1 %.not.i22.3, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, label %.lr.ph.i21, !llvm.loop !2536

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit: ; preds = %.lr.ph.i21.prol.loopexit, %.lr.ph.i21, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS4_EEDpOT_.exit
  %.not.i24 = icmp eq ptr %i.bg, null
  br i1 %.not.i24, label %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit
  %i.cu = load i64, ptr %i.d, align 8, !tbaa !2537
  %i.cv = shl i64 %i.cu, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.cv) #30
  %.pre43 = load i64, ptr %i.x, align 8, !tbaa !2531
  br label %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit

_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit: ; preds = %bb.j, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit
  %i.cw = phi i64 [ %.pre43, %bb.j ], [ %i.y, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit ]
  store ptr %.0.i.i17, ptr %0, align 8, !tbaa !2534
  store i64 %i.p, ptr %i.d, align 8, !tbaa !2521
  %i.cx = add i64 %i.cw, %2
  store i64 %i.cx, ptr %i.x, align 8, !tbaa !2520
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE12insert_rangeISt14_List_iteratorIiEEEPS3_PKS3_T_SC_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i.i = icmp eq ptr %2, %3
  br i1 %.not4.i.i, label %bb.b, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.a, %.lr.ph.i.i ], [ 0, %bb.a ] ; 20 uses
  %.sroa.02.05.i.i = phi ptr [ %i.b, %.lr.ph.i.i ], [ %2, %bb.a ]
  %i.a = add nuw i64 %.06.i.i, 1                  ; 20 uses
  %i.b = load ptr, ptr %.sroa.02.05.i.i, align 8, !tbaa !2636 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %3
  br i1 %.not.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit, label %.lr.ph.i.i, !llvm.loop !2685

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !2534
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !2533
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  br label %bb.m

_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit: ; preds = %.lr.ph.i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !2534   ; 5 uses
  %4 = ptrtoaddr ptr %i.k to i64                  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !2531 ; 7 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.m ; 15 uses
  %i.o = icmp eq ptr %1, %i.n
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !2537
  %i.r = sub i64 %i.q, %i.m
  %.not49.not = icmp ugt i64 %i.r, %.06.i.i
  br i1 %.not49.not, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.015.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.n, %bb.c ] ; 3 uses
  %.sroa.010.014.i = phi ptr [ %i.w, %.lr.ph.i ], [ %2, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i) ]
  %i.t = load i32, ptr %i.s, align 4, !tbaa !18
  store i32 %i.t, ptr %.015.i, align 4, !tbaa !2523
  %i.u = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.w = load ptr, ptr %.sroa.010.014.i, align 8, !tbaa !2636 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %.not.i = icmp eq ptr %i.w, %3
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test12copyable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit, label %.lr.ph.i, !llvm.loop !5576

_ZN5boost9container24uninitialized_copy_allocISaINS0_4test12copyable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit: ; preds = %.lr.ph.i
  %i.y = add i64 %i.m, %i.a
  store i64 %i.y, ptr %i.l, align 8, !tbaa !2520
  br label %bb.m

bb.d:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !2533 ; 7 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.aa ; 14 uses
  %i.ac = icmp eq ptr %1, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not48.not = icmp ugt i64 %i.aa, %.06.i.i
  br i1 %.not48.not, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ad = xor i64 %.06.i.i, -1
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ad
  br label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.f, %.lr.ph.i51
  %.015.i52 = phi ptr [ %i.ak, %.lr.ph.i51 ], [ %i.ae, %bb.f ] ; 3 uses
  %.sroa.010.014.i53 = phi ptr [ %i.aj, %.lr.ph.i51 ], [ %2, %bb.f ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i53, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i52) ]
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !18
  store i32 %i.ag, ptr %.015.i52, align 4, !tbaa !2523
  %i.ah = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.aj = load ptr, ptr %.sroa.010.014.i53, align 8, !tbaa !2636 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.015.i52, i64 4
  %.not.i54 = icmp eq ptr %i.aj, %3
  br i1 %.not.i54, label %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test12copyable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit56, label %.lr.ph.i51, !llvm.loop !5576

_ZN5boost9container24uninitialized_copy_allocISaINS0_4test12copyable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit56: ; preds = %.lr.ph.i51
  %i.al = sub nuw i64 %i.aa, %i.a                 ; 2 uses
  store i64 %i.al, ptr %i.z, align 8, !tbaa !2519
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.al
  br label %bb.m

bb.g:                                             ; preds = %bb.d
  %i.an = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.ao = ptrtoint ptr %i.ab to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2                 ; 8 uses
  %i.ar = sub i64 %i.m, %i.aa
  %i.as = lshr i64 %i.ar, 1
  %.not = icmp ult i64 %i.aq, %i.as
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load i64, ptr %i.at, align 8, !tbaa !2537
  %i.av = sub i64 %i.au, %i.m
  %.not47.not = icmp ugt i64 %i.av, %.06.i.i
  br i1 %.not47.not, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.aw = ptrtoint ptr %i.n to i64
  %i.ax = sub i64 %i.aw, %i.an
  %i.ay = ashr exact i64 %i.ax, 2                 ; 7 uses
  %.not.i57.not = icmp ugt i64 %i.ay, %.06.i.i
  br i1 %.not.i57.not, label %bb.j, label %.lr.ph.i48.preheader.i

bb.j:                                             ; preds = %bb.i
  %i.az = xor i64 %.06.i.i, -1
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.az ; 7 uses
  %xtraiter169 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod170.not = icmp eq i64 %xtraiter169, 0
  br i1 %lcmp.mod170.not, label %.lr.ph.i.i58.prol.loopexit, label %.lr.ph.i.i58.prol

.lr.ph.i.i58.prol:                                ; preds = %bb.j, %.lr.ph.i.i58.prol
  %.020.i.i.prol = phi i64 [ %i.bb, %.lr.ph.i.i58.prol ], [ %i.a, %bb.j ]
  %.0819.i.i.prol = phi ptr [ %i.bf, %.lr.ph.i.i58.prol ], [ %i.ba, %bb.j ] ; 2 uses
  %.01618.i.i.prol = phi ptr [ %i.bg, %.lr.ph.i.i58.prol ], [ %i.n, %bb.j ] ; 3 uses
  %prol.iter171 = phi i64 [ %prol.iter171.next, %.lr.ph.i.i58.prol ], [ 0, %bb.j ]
  %i.bb = add i64 %.020.i.i.prol, -1              ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.prol) ]
  %i.bc = load i32, ptr %.0819.i.i.prol, align 4, !tbaa !2523
  store i32 %i.bc, ptr %.01618.i.i.prol, align 4, !tbaa !2523
  %i.bd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %.0819.i.i.prol, i64 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.01618.i.i.prol, i64 4 ; 2 uses
  %prol.iter171.next = add i64 %prol.iter171, 1   ; 2 uses
  %prol.iter171.cmp.not = icmp eq i64 %prol.iter171.next, %xtraiter169
  br i1 %prol.iter171.cmp.not, label %.lr.ph.i.i58.prol.loopexit, label %.lr.ph.i.i58.prol, !llvm.loop !5577

.lr.ph.i.i58.prol.loopexit:                       ; preds = %.lr.ph.i.i58.prol, %bb.j
  %.020.i.i.unr = phi i64 [ %i.a, %bb.j ], [ %i.bb, %.lr.ph.i.i58.prol ]
  %.0819.i.i.unr = phi ptr [ %i.ba, %bb.j ], [ %i.bf, %.lr.ph.i.i58.prol ]
  %.01618.i.i.unr = phi ptr [ %i.n, %bb.j ], [ %i.bg, %.lr.ph.i.i58.prol ]
  %i.bh = icmp ult i64 %.06.i.i, 3
  br i1 %i.bh, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i, label %.lr.ph.i.i58

.lr.ph.i.i58:                                     ; preds = %.lr.ph.i.i58.prol.loopexit, %.lr.ph.i.i58
  %.020.i.i = phi i64 [ %i.bv, %.lr.ph.i.i58 ], [ %.020.i.i.unr, %.lr.ph.i.i58.prol.loopexit ]
  %.0819.i.i = phi ptr [ %i.by, %.lr.ph.i.i58 ], [ %.0819.i.i.unr, %.lr.ph.i.i58.prol.loopexit ] ; 5 uses
  %.01618.i.i = phi ptr [ %i.bz, %.lr.ph.i.i58 ], [ %.01618.i.i.unr, %.lr.ph.i.i58.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i) ]
  %i.bi = load i32, ptr %.0819.i.i, align 4, !tbaa !2523
  store i32 %i.bi, ptr %.01618.i.i, align 4, !tbaa !2523
  %i.bj = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18 ; 4 uses
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 4
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !2523
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !2523
  %i.bo = add i32 %i.bj, 2
  store i32 %i.bo, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !2523
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !2523
  %i.bs = add i32 %i.bj, 3
  store i32 %i.bs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 12
  %i.bu = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 12
  %i.bv = add i64 %.020.i.i, -4                   ; 2 uses
  %i.bw = load i32, ptr %i.bt, align 4, !tbaa !2523
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !2523
  %i.bx = add i32 %i.bj, 4
  store i32 %i.bx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 16
  %.not.i.i59.3 = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i59.3, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i, label %.lr.ph.i.i58, !llvm.loop !4993

_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i: ; preds = %.lr.ph.i.i58, %.lr.ph.i.i58.prol.loopexit
  %.not8.i.i = icmp eq ptr %1, %i.ba
  br i1 %.not8.i.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i.preheader

.lr.ph.i40.i.preheader:                           ; preds = %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i
  %5 = shl nuw nsw i64 %i.m, 2
  %i.ca = add i64 %5, %4
  %6 = mul i64 %.06.i.i, -4
  %reass.sub = sub i64 %6, %i.an
  %7 = add i64 %reass.sub, -8
  %i.cb = add i64 %i.ca, %7                       ; 2 uses
  %8 = lshr i64 %i.cb, 2
  %i.cc = add nuw nsw i64 %8, 1                   ; 2 uses
  %min.iters.check = icmp ult i64 %i.cb, 76
  br i1 %min.iters.check, label %.lr.ph.i40.i.preheader162, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.preheader
  %i.cd = shl i64 %.06.i.i, 2
  %i.ce = add i64 %i.cd, 35
  %diff.check = icmp ult i64 %i.ce, 31
  br i1 %diff.check, label %.lr.ph.i40.i.preheader162, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cc, 9223372036854775800     ; 3 uses
  %i.cf = mul i64 %n.vec, -4                      ; 2 uses
  %i.cg = getelementptr i8, ptr %i.n, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.ba, i64 %i.cf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ci = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.ci ; 2 uses
  %next.gep136 = getelementptr i8, ptr %i.ba, i64 %i.ci ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %next.gep136, i64 -16
  %i.ck = getelementptr inbounds i8, ptr %next.gep136, i64 -32
  %wide.load = load <4 x i32>, ptr %i.cj, align 4, !tbaa !2523
  %wide.load137 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !2523
  %i.cl = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cm = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cl, align 4, !tbaa !2523
  store <4 x i32> %wide.load137, ptr %i.cm, align 4, !tbaa !2523
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !5578

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i.preheader162

.lr.ph.i40.i.preheader162:                        ; preds = %vector.memcheck, %.lr.ph.i40.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.i40.i.preheader ], [ %i.cg, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.ba, %vector.memcheck ], [ %i.ba, %.lr.ph.i40.i.preheader ], [ %i.ch, %middle.block ]
  br label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %.lr.ph.i40.i.preheader162, %.lr.ph.i40.i
  %.010.i.i = phi ptr [ %i.cp, %.lr.ph.i40.i ], [ %.010.i.i.ph, %.lr.ph.i40.i.preheader162 ]
  %.079.i.i = phi ptr [ %i.co, %.lr.ph.i40.i ], [ %.079.i.i.ph, %.lr.ph.i40.i.preheader162 ]
  %i.co = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 3 uses
  %i.cp = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !2523
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !2523
  %.not.i41.i = icmp eq ptr %1, %i.co
  br i1 %.not.i41.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i, !llvm.loop !5579

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i40.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i
  %xtraiter172 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod173.not = icmp eq i64 %xtraiter172, 0
  br i1 %lcmp.mod173.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.09.i.i.i.prol = phi i64 [ %i.cr, %.lr.ph.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.preheader ]
  %.048.i.i.i.prol = phi ptr [ %i.cv, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.prol = phi ptr [ %i.cu, %.lr.ph.i.i.i.prol ], [ %2, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter174 = phi i64 [ %prol.iter174.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.cr = add i64 %.09.i.i.i.prol, -1             ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.prol, i64 16
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !18
  store i32 %i.ct, ptr %.048.i.i.i.prol, align 4, !tbaa !2523
  %i.cu = load ptr, ptr %.sroa.0.07.i.i.i.prol, align 8, !tbaa !2636 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.048.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter174.next = add i64 %prol.iter174, 1   ; 2 uses
  %prol.iter174.cmp.not = icmp eq i64 %prol.iter174.next, %xtraiter172
  br i1 %prol.iter174.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !5580

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.unr = phi i64 [ %i.a, %.lr.ph.i.i.i.preheader ], [ %i.cr, %.lr.ph.i.i.i.prol ]
  %.048.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.preheader ], [ %i.cv, %.lr.ph.i.i.i.prol ]
  %.sroa.0.07.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.preheader ], [ %i.cu, %.lr.ph.i.i.i.prol ]
  %i.cw = icmp ult i64 %.06.i.i, 3
  br i1 %i.cw, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.dj, %.lr.ph.i.i.i ], [ %.09.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.048.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i ], [ %.048.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i = phi ptr [ %i.dm, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 16
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !18
  store i32 %i.cy, ptr %.048.i.i.i, align 4, !tbaa !2523
  %i.cz = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !2636 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !18
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !2523
  %i.dd = load ptr, ptr %i.cz, align 8, !tbaa !2636 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !18
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !2523
  %i.dh = load ptr, ptr %i.dd, align 8, !tbaa !2636 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 12
  %i.dj = add i64 %.09.i.i.i, -4                  ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !18
  store i32 %i.dl, ptr %i.di, align 4, !tbaa !2523
  %i.dm = load ptr, ptr %i.dh, align 8, !tbaa !2636
  %i.dn = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.dj, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i.i, !llvm.loop !5581

.lr.ph.i48.preheader.i:                           ; preds = %bb.i
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.a
  br label %.lr.ph.i48.i

.lr.ph.i48.i:                                     ; preds = %.lr.ph.i48.i, %.lr.ph.i48.preheader.i
  %.018.i.i = phi ptr [ %i.ds, %.lr.ph.i48.i ], [ %1, %.lr.ph.i48.preheader.i ] ; 2 uses
  %.01517.i.i = phi ptr [ %i.dt, %.lr.ph.i48.i ], [ %i.do, %.lr.ph.i48.preheader.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.dp = load i32, ptr %.018.i.i, align 4, !tbaa !2523
  store i32 %i.dp, ptr %.01517.i.i, align 4, !tbaa !2523
  %i.dq = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4
  %.not.i49.i = icmp eq ptr %i.ds, %i.n
  br i1 %.not.i49.i, label %.lr.ph.i.i52.i.preheader, label %.lr.ph.i48.i, !llvm.loop !5000

.lr.ph.i.i52.i.preheader:                         ; preds = %.lr.ph.i48.i
  %xtraiter = and i64 %i.ay, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i52.i.prol.loopexit, label %.lr.ph.i.i52.i.prol

.lr.ph.i.i52.i.prol:                              ; preds = %.lr.ph.i.i52.i.preheader, %.lr.ph.i.i52.i.prol
  %.09.i.i53.i.prol = phi i64 [ %i.du, %.lr.ph.i.i52.i.prol ], [ %i.ay, %.lr.ph.i.i52.i.preheader ]
  %.048.i.i54.i.prol = phi ptr [ %i.dy, %.lr.ph.i.i52.i.prol ], [ %1, %.lr.ph.i.i52.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i55.i.prol = phi ptr [ %i.dx, %.lr.ph.i.i52.i.prol ], [ %2, %.lr.ph.i.i52.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i52.i.prol ], [ 0, %.lr.ph.i.i52.i.preheader ]
  %i.du = add i64 %.09.i.i53.i.prol, -1           ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.prol, i64 16
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !18
  store i32 %i.dw, ptr %.048.i.i54.i.prol, align 4, !tbaa !2523
  %i.dx = load ptr, ptr %.sroa.0.07.i.i55.i.prol, align 8, !tbaa !2636 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i52.i.prol.loopexit, label %.lr.ph.i.i52.i.prol, !llvm.loop !5582

.lr.ph.i.i52.i.prol.loopexit:                     ; preds = %.lr.ph.i.i52.i.prol, %.lr.ph.i.i52.i.preheader
  %.lcssa164.unr = phi ptr [ poison, %.lr.ph.i.i52.i.preheader ], [ %i.dx, %.lr.ph.i.i52.i.prol ]
  %.09.i.i53.i.unr = phi i64 [ %i.ay, %.lr.ph.i.i52.i.preheader ], [ %i.du, %.lr.ph.i.i52.i.prol ]
  %.048.i.i54.i.unr = phi ptr [ %1, %.lr.ph.i.i52.i.preheader ], [ %i.dy, %.lr.ph.i.i52.i.prol ]
  %.sroa.0.07.i.i55.i.unr = phi ptr [ %2, %.lr.ph.i.i52.i.preheader ], [ %i.dx, %.lr.ph.i.i52.i.prol ]
  %i.dz = icmp ult i64 %i.ay, 4
  br i1 %i.dz, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i, label %.lr.ph.i.i52.i

.lr.ph.i.i52.i:                                   ; preds = %.lr.ph.i.i52.i.prol.loopexit, %.lr.ph.i.i52.i
  %.09.i.i53.i = phi i64 [ %i.em, %.lr.ph.i.i52.i ], [ %.09.i.i53.i.unr, %.lr.ph.i.i52.i.prol.loopexit ]
  %.048.i.i54.i = phi ptr [ %i.eq, %.lr.ph.i.i52.i ], [ %.048.i.i54.i.unr, %.lr.ph.i.i52.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i55.i = phi ptr [ %i.ep, %.lr.ph.i.i52.i ], [ %.sroa.0.07.i.i55.i.unr, %.lr.ph.i.i52.i.prol.loopexit ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i, i64 16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !18
  store i32 %i.eb, ptr %.048.i.i54.i, align 4, !tbaa !2523
  %i.ec = load ptr, ptr %.sroa.0.07.i.i55.i, align 8, !tbaa !2636 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !18
  store i32 %i.ef, ptr %i.ed, align 4, !tbaa !2523
  %i.eg = load ptr, ptr %i.ec, align 8, !tbaa !2636 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !18
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !2523
  %i.ek = load ptr, ptr %i.eg, align 8, !tbaa !2636 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 12
  %i.em = add i64 %.09.i.i53.i, -4                ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !18
  store i32 %i.eo, ptr %i.el, align 4, !tbaa !2523
  %i.ep = load ptr, ptr %i.ek, align 8, !tbaa !2636 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 16
  %.not.i.i56.i.3 = icmp eq i64 %i.em, 0
  br i1 %.not.i.i56.i.3, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i, label %.lr.ph.i.i52.i, !llvm.loop !5581

_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i: ; preds = %.lr.ph.i.i52.i, %.lr.ph.i.i52.i.prol.loopexit
  %.lcssa164 = phi ptr [ %.lcssa164.unr, %.lr.ph.i.i52.i.prol.loopexit ], [ %i.ep, %.lr.ph.i.i52.i ] ; 3 uses
  %i.er = sub i64 %i.a, %i.ay                     ; 3 uses
  %xtraiter166 = and i64 %i.er, 1
  %lcmp.mod167.not = icmp eq i64 %xtraiter166, 0
  br i1 %lcmp.mod167.not, label %.lr.ph.i.i60.i.prol.loopexit, label %.lr.ph.i.i60.i.prol

.lr.ph.i.i60.i.prol:                              ; preds = %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i
  %i.es = getelementptr inbounds nuw i8, ptr %.lcssa164, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.et = load i32, ptr %i.es, align 4, !tbaa !18
  store i32 %i.et, ptr %i.n, align 4, !tbaa !2523
  %i.eu = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.ev = add i32 %i.eu, 1
  store i32 %i.ev, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.ew = load ptr, ptr %.lcssa164, align 8, !tbaa !2636
  %i.ex = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.ey = add nsw i64 %i.er, -1
  br label %.lr.ph.i.i60.i.prol.loopexit

.lr.ph.i.i60.i.prol.loopexit:                     ; preds = %.lr.ph.i.i60.i.prol, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i
  %.018.i.i.i.unr = phi i64 [ %i.er, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i ], [ %i.ey, %.lr.ph.i.i60.i.prol ]
  %.01417.i.i.i.unr = phi ptr [ %i.n, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i ], [ %i.ex, %.lr.ph.i.i60.i.prol ]
  %.sroa.0.016.i.i.i.unr = phi ptr [ %.lcssa164, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i ], [ %i.ew, %.lr.ph.i.i60.i.prol ]
  %i.ez = icmp eq i64 %.06.i.i, %i.ay
  br i1 %i.ez, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i60.i

.lr.ph.i.i60.i:                                   ; preds = %.lr.ph.i.i60.i.prol.loopexit, %.lr.ph.i.i60.i
  %.018.i.i.i = phi i64 [ %i.fl, %.lr.ph.i.i60.i ], [ %.018.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ]
  %.01417.i.i.i = phi ptr [ %i.fk, %.lr.ph.i.i60.i ], [ %.01417.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i = phi ptr [ %i.fj, %.lr.ph.i.i60.i ], [ %.sroa.0.016.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i) ]
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !18
  store i32 %i.fb, ptr %.01417.i.i.i, align 4, !tbaa !2523
  %i.fc = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18 ; 2 uses
  %i.fd = add i32 %i.fc, 1
  store i32 %i.fd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.fe = load ptr, ptr %.sroa.0.016.i.i.i, align 8, !tbaa !2636 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !18
  store i32 %i.fh, ptr %i.ff, align 4, !tbaa !2523
  %i.fi = add i32 %i.fc, 2
  store i32 %i.fi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.fj = load ptr, ptr %i.fe, align 8, !tbaa !2636
  %i.fk = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 8
  %i.fl = add i64 %.018.i.i.i, -2                 ; 2 uses
  %.not.i.i61.i.1 = icmp eq i64 %i.fl, 0
  br i1 %.not.i.i61.i.1, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i60.i, !llvm.loop !5583

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit: ; preds = %.lr.ph.i.i60.i.prol.loopexit, %.lr.ph.i.i60.i, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.fm = add i64 %i.m, %i.a
  store i64 %i.fm, ptr %i.l, align 8, !tbaa !2520
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %.not46.not = icmp ugt i64 %i.aa, %.06.i.i
  br i1 %.not46.not, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %.not.i60.not = icmp ugt i64 %i.aq, %.06.i.i
  %i.fn = xor i64 %.06.i.i, -1                    ; 2 uses
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.fn ; 3 uses
  br i1 %.not.i60.not, label %.lr.ph.i.i62.preheader, label %.lr.ph.i48.i78

.lr.ph.i.i62.preheader:                           ; preds = %bb.l
  %i.fp = icmp eq i64 %.06.i.i, 0
  br i1 %i.fp, label %.lr.ph.i.i62.epil.preheader, label %.lr.ph.i.i62.preheader.new

.lr.ph.i.i62.preheader.new:                       ; preds = %.lr.ph.i.i62.preheader
  %unroll_iter = and i64 %i.a, -2
  br label %.lr.ph.i.i62

.lr.ph.i.i62:                                     ; preds = %.lr.ph.i.i62, %.lr.ph.i.i62.preheader.new
  %indvar = phi i64 [ 0, %.lr.ph.i.i62.preheader.new ], [ %indvar.next.1, %.lr.ph.i.i62 ] ; 2 uses
  %.0919.i.i = phi ptr [ %i.ab, %.lr.ph.i.i62.preheader.new ], [ %i.fx, %.lr.ph.i.i62 ] ; 3 uses
  %.01618.i.i64 = phi ptr [ %i.fo, %.lr.ph.i.i62.preheader.new ], [ %i.fy, %.lr.ph.i.i62 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i62.preheader.new ], [ %niter.next.1, %.lr.ph.i.i62 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i64) ]
  %i.fq = load i32, ptr %.0919.i.i, align 4, !tbaa !2523
  store i32 %i.fq, ptr %.01618.i.i64, align 4, !tbaa !2523
  %i.fr = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18 ; 2 uses
  %i.fs = add i32 %i.fr, 1
  store i32 %i.fs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.ft = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 4
  %i.fu = getelementptr inbounds nuw i8, ptr %.01618.i.i64, i64 4
  %i.fv = load i32, ptr %i.ft, align 4, !tbaa !2523
  store i32 %i.fv, ptr %i.fu, align 4, !tbaa !2523
  %i.fw = add i32 %i.fr, 2
  store i32 %i.fw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.fx = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 8 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.01618.i.i64, i64 8 ; 2 uses
  %indvar.next.1 = add i64 %indvar, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa, label %.lr.ph.i.i62, !llvm.loop !5009

_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i62
  %indvar.next = or disjoint i64 %indvar, 1
  %i.fz = and i64 %.06.i.i, 1
  %lcmp.mod182.not.not = icmp eq i64 %i.fz, 0
  br i1 %lcmp.mod182.not.not, label %.lr.ph.i.i62.epil.preheader, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i

.lr.ph.i.i62.epil.preheader:                      ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa, %.lr.ph.i.i62.preheader
  %indvar.epil.init = phi i64 [ 0, %.lr.ph.i.i62.preheader ], [ %indvar.next.1, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ]
  %.0919.i.i.epil.init = phi ptr [ %i.ab, %.lr.ph.i.i62.preheader ], [ %i.fx, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ] ; 2 uses
  %.01618.i.i64.epil.init = phi ptr [ %i.fo, %.lr.ph.i.i62.preheader ], [ %i.fy, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod185 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod185)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i64.epil.init) ]
  %i.ga = load i32, ptr %.0919.i.i.epil.init, align 4, !tbaa !2523
  store i32 %i.ga, ptr %.01618.i.i64.epil.init, align 4, !tbaa !2523
  %i.gb = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.gc = add i32 %i.gb, 1
  store i32 %i.gc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.gd = getelementptr inbounds nuw i8, ptr %.0919.i.i.epil.init, i64 4
  br label %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa, %.lr.ph.i.i62.epil.preheader
  %indvar.lcssa = phi i64 [ %indvar.next, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ], [ %indvar.epil.init, %.lr.ph.i.i62.epil.preheader ]
  %.lcssa158 = phi ptr [ %i.fx, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ], [ %i.gd, %.lr.ph.i.i62.epil.preheader ] ; 5 uses
  %.not8.i.i66 = icmp eq ptr %.lcssa158, %1
  br i1 %.not8.i.i66, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67.preheader

.lr.ph.i40.i67.preheader:                         ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i
  %.neg = mul i64 %i.aa, -4
  %.neg156 = sub i64 %.neg, %4
  %i.ge = add i64 %i.an, -8
  %i.gf = shl i64 %.06.i.i, 2
  %9 = sub i64 %i.ge, %i.gf
  %10 = add i64 %.neg156, %9                      ; 2 uses
  %i.gg = lshr i64 %10, 2
  %i.gh = add nuw nsw i64 %i.gg, 1                ; 2 uses
  %min.iters.check142 = icmp ult i64 %10, 76
  br i1 %min.iters.check142, label %.lr.ph.i40.i67.preheader157, label %vector.memcheck139

vector.memcheck139:                               ; preds = %.lr.ph.i40.i67.preheader
  %i.gi = shl i64 %indvar.lcssa, 2
  %i.gj = add i64 %i.gi, 35
  %diff.check140 = icmp ult i64 %i.gj, 31
  br i1 %diff.check140, label %.lr.ph.i40.i67.preheader157, label %vector.ph143

vector.ph143:                                     ; preds = %vector.memcheck139
  %n.vec144 = and i64 %i.gh, 9223372036854775800  ; 3 uses
  %i.gk = shl i64 %n.vec144, 2                    ; 2 uses
  %i.gl = getelementptr i8, ptr %i.ab, i64 %i.gk  ; 2 uses
  %i.gm = getelementptr i8, ptr %.lcssa158, i64 %i.gk
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph143
  %index146 = phi i64 [ 0, %vector.ph143 ], [ %index.next151, %vector.body145 ] ; 2 uses
  %i.gn = shl i64 %index146, 2                    ; 2 uses
  %next.gep147 = getelementptr i8, ptr %i.ab, i64 %i.gn ; 2 uses
  %next.gep148 = getelementptr i8, ptr %.lcssa158, i64 %i.gn ; 2 uses
  %i.go = getelementptr i8, ptr %next.gep148, i64 16
  %wide.load149 = load <4 x i32>, ptr %next.gep148, align 4, !tbaa !2523
  %wide.load150 = load <4 x i32>, ptr %i.go, align 4, !tbaa !2523
  %i.gp = getelementptr i8, ptr %next.gep147, i64 16
  store <4 x i32> %wide.load149, ptr %next.gep147, align 4, !tbaa !2523
  store <4 x i32> %wide.load150, ptr %i.gp, align 4, !tbaa !2523
  %index.next151 = add nuw i64 %index146, 8       ; 2 uses
  %i.gq = icmp eq i64 %index.next151, %n.vec144
  br i1 %i.gq, label %middle.block152, label %vector.body145, !llvm.loop !5584

middle.block152:                                  ; preds = %vector.body145
  %cmp.n153 = icmp eq i64 %i.gh, %n.vec144
  br i1 %cmp.n153, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67.preheader157

.lr.ph.i40.i67.preheader157:                      ; preds = %vector.memcheck139, %.lr.ph.i40.i67.preheader, %middle.block152
  %.010.i.i68.ph = phi ptr [ %i.ab, %vector.memcheck139 ], [ %i.ab, %.lr.ph.i40.i67.preheader ], [ %i.gl, %middle.block152 ]
  %.079.i.i69.ph = phi ptr [ %.lcssa158, %vector.memcheck139 ], [ %.lcssa158, %.lr.ph.i40.i67.preheader ], [ %i.gm, %middle.block152 ]
  br label %.lr.ph.i40.i67

.lr.ph.i40.i67:                                   ; preds = %.lr.ph.i40.i67.preheader157, %.lr.ph.i40.i67
  %.010.i.i68 = phi ptr [ %i.gt, %.lr.ph.i40.i67 ], [ %.010.i.i68.ph, %.lr.ph.i40.i67.preheader157 ] ; 2 uses
  %.079.i.i69 = phi ptr [ %i.gs, %.lr.ph.i40.i67 ], [ %.079.i.i69.ph, %.lr.ph.i40.i67.preheader157 ] ; 2 uses
  %i.gr = load i32, ptr %.079.i.i69, align 4, !tbaa !2523
  store i32 %i.gr, ptr %.010.i.i68, align 4, !tbaa !2523
  %i.gs = getelementptr inbounds nuw i8, ptr %.079.i.i69, i64 4 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.010.i.i68, i64 4 ; 2 uses
  %.not.i41.i70 = icmp eq ptr %i.gs, %1
  br i1 %.not.i41.i70, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67, !llvm.loop !5585

.lr.ph.i.i.i72.preheader:                         ; preds = %.lr.ph.i40.i67, %middle.block152, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i
  %.048.i.i.i74.ph = phi ptr [ %i.ab, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i ], [ %i.gl, %middle.block152 ], [ %i.gt, %.lr.ph.i40.i67 ] ; 2 uses
  %xtraiter186 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  br i1 %lcmp.mod187.not, label %.lr.ph.i.i.i72.prol.loopexit, label %.lr.ph.i.i.i72.prol

.lr.ph.i.i.i72.prol:                              ; preds = %.lr.ph.i.i.i72.preheader, %.lr.ph.i.i.i72.prol
  %.09.i.i.i73.prol = phi i64 [ %i.gu, %.lr.ph.i.i.i72.prol ], [ %i.a, %.lr.ph.i.i.i72.preheader ]
  %.048.i.i.i74.prol = phi ptr [ %i.gy, %.lr.ph.i.i.i72.prol ], [ %.048.i.i.i74.ph, %.lr.ph.i.i.i72.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i75.prol = phi ptr [ %i.gx, %.lr.ph.i.i.i72.prol ], [ %2, %.lr.ph.i.i.i72.preheader ] ; 2 uses
  %prol.iter188 = phi i64 [ %prol.iter188.next, %.lr.ph.i.i.i72.prol ], [ 0, %.lr.ph.i.i.i72.preheader ]
  %i.gu = add i64 %.09.i.i.i73.prol, -1           ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i75.prol, i64 16
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !18
  store i32 %i.gw, ptr %.048.i.i.i74.prol, align 4, !tbaa !2523
  %i.gx = load ptr, ptr %.sroa.0.07.i.i.i75.prol, align 8, !tbaa !2636 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.048.i.i.i74.prol, i64 4 ; 2 uses
  %prol.iter188.next = add i64 %prol.iter188, 1   ; 2 uses
  %prol.iter188.cmp.not = icmp eq i64 %prol.iter188.next, %xtraiter186
  br i1 %prol.iter188.cmp.not, label %.lr.ph.i.i.i72.prol.loopexit, label %.lr.ph.i.i.i72.prol, !llvm.loop !5586

.lr.ph.i.i.i72.prol.loopexit:                     ; preds = %.lr.ph.i.i.i72.prol, %.lr.ph.i.i.i72.preheader
  %.09.i.i.i73.unr = phi i64 [ %i.a, %.lr.ph.i.i.i72.preheader ], [ %i.gu, %.lr.ph.i.i.i72.prol ]
  %.048.i.i.i74.unr = phi ptr [ %.048.i.i.i74.ph, %.lr.ph.i.i.i72.preheader ], [ %i.gy, %.lr.ph.i.i.i72.prol ]
  %.sroa.0.07.i.i.i75.unr = phi ptr [ %2, %.lr.ph.i.i.i72.preheader ], [ %i.gx, %.lr.ph.i.i.i72.prol ]
  %i.gz = icmp ult i64 %.06.i.i, 3
  br i1 %i.gz, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i.i72

.lr.ph.i.i.i72:                                   ; preds = %.lr.ph.i.i.i72.prol.loopexit, %.lr.ph.i.i.i72
  %.09.i.i.i73 = phi i64 [ %i.hm, %.lr.ph.i.i.i72 ], [ %.09.i.i.i73.unr, %.lr.ph.i.i.i72.prol.loopexit ]
  %.048.i.i.i74 = phi ptr [ %i.hq, %.lr.ph.i.i.i72 ], [ %.048.i.i.i74.unr, %.lr.ph.i.i.i72.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i75 = phi ptr [ %i.hp, %.lr.ph.i.i.i72 ], [ %.sroa.0.07.i.i.i75.unr, %.lr.ph.i.i.i72.prol.loopexit ] ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i75, i64 16
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !18
  store i32 %i.hb, ptr %.048.i.i.i74, align 4, !tbaa !2523
  %i.hc = load ptr, ptr %.sroa.0.07.i.i.i75, align 8, !tbaa !2636 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 4
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !18
  store i32 %i.hf, ptr %i.hd, align 4, !tbaa !2523
  %i.hg = load ptr, ptr %i.hc, align 8, !tbaa !2636 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !18
  store i32 %i.hj, ptr %i.hh, align 4, !tbaa !2523
  %i.hk = load ptr, ptr %i.hg, align 8, !tbaa !2636 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 12
  %i.hm = add i64 %.09.i.i.i73, -4                ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !18
  store i32 %i.ho, ptr %i.hl, align 4, !tbaa !2523
  %i.hp = load ptr, ptr %i.hk, align 8, !tbaa !2636
  %i.hq = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 16
  %.not.i.i.i76.3 = icmp eq i64 %i.hm, 0
  br i1 %.not.i.i.i76.3, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i.i72, !llvm.loop !5581

.lr.ph.i48.i78:                                   ; preds = %bb.l, %.lr.ph.i48.i78
  %.018.i.i79 = phi ptr [ %i.hu, %.lr.ph.i48.i78 ], [ %i.ab, %bb.l ] ; 2 uses
  %.01517.i.i80 = phi ptr [ %i.hv, %.lr.ph.i48.i78 ], [ %i.fo, %bb.l ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i80) ]
  %i.hr = load i32, ptr %.018.i.i79, align 4, !tbaa !2523
  store i32 %i.hr, ptr %.01517.i.i80, align 4, !tbaa !2523
  %i.hs = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.ht = add i32 %i.hs, 1
  store i32 %i.ht, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.hu = getelementptr inbounds nuw i8, ptr %.018.i.i79, i64 4 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.01517.i.i80, i64 4 ; 3 uses
  %.not.i49.i81 = icmp eq ptr %i.hu, %1
  br i1 %.not.i49.i81, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i, label %.lr.ph.i48.i78, !llvm.loop !5000

_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i: ; preds = %.lr.ph.i48.i78
  %i.hw = sub i64 %i.a, %i.aq                     ; 3 uses
  %xtraiter175 = and i64 %i.hw, 1
  %lcmp.mod176.not = icmp eq i64 %xtraiter175, 0
  br i1 %lcmp.mod176.not, label %.lr.ph.i.i51.i.prol.loopexit, label %.lr.ph.i.i51.i.prol

.lr.ph.i.i51.i.prol:                              ; preds = %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !18
  store i32 %i.hy, ptr %i.hv, align 4, !tbaa !2523
  %i.hz = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.ia = add i32 %i.hz, 1
  store i32 %i.ia, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.ib = load ptr, ptr %2, align 8, !tbaa !2636  ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.01517.i.i80, i64 8
  %i.id = add nsw i64 %i.hw, -1
  br label %.lr.ph.i.i51.i.prol.loopexit

.lr.ph.i.i51.i.prol.loopexit:                     ; preds = %.lr.ph.i.i51.i.prol, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i
  %.lcssa160.unr = phi ptr [ poison, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ], [ %i.ib, %.lr.ph.i.i51.i.prol ]
  %.018.i.i.i82.unr = phi i64 [ %i.hw, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ], [ %i.id, %.lr.ph.i.i51.i.prol ]
  %.01417.i.i.i83.unr = phi ptr [ %i.hv, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ], [ %i.ic, %.lr.ph.i.i51.i.prol ]
  %.sroa.0.016.i.i.i84.unr = phi ptr [ %2, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ], [ %i.ib, %.lr.ph.i.i51.i.prol ]
  %i.ie = icmp eq i64 %.06.i.i, %i.aq
  br i1 %i.ie, label %.lr.ph.i.i56.i.preheader, label %.lr.ph.i.i51.i

.lr.ph.i.i51.i:                                   ; preds = %.lr.ph.i.i51.i.prol.loopexit, %.lr.ph.i.i51.i
  %.018.i.i.i82 = phi i64 [ %i.iq, %.lr.ph.i.i51.i ], [ %.018.i.i.i82.unr, %.lr.ph.i.i51.i.prol.loopexit ]
  %.01417.i.i.i83 = phi ptr [ %i.ip, %.lr.ph.i.i51.i ], [ %.01417.i.i.i83.unr, %.lr.ph.i.i51.i.prol.loopexit ] ; 3 uses
  %.sroa.0.016.i.i.i84 = phi ptr [ %i.io, %.lr.ph.i.i51.i ], [ %.sroa.0.016.i.i.i84.unr, %.lr.ph.i.i51.i.prol.loopexit ] ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i84, i64 16
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !18
  store i32 %i.ig, ptr %.01417.i.i.i83, align 4, !tbaa !2523
  %i.ih = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18 ; 2 uses
  %i.ii = add i32 %i.ih, 1
  store i32 %i.ii, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.ij = load ptr, ptr %.sroa.0.016.i.i.i84, align 8, !tbaa !2636 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.01417.i.i.i83, i64 4
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.im = load i32, ptr %i.il, align 4, !tbaa !18
  store i32 %i.im, ptr %i.ik, align 4, !tbaa !2523
  %i.in = add i32 %i.ih, 2
  store i32 %i.in, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.io = load ptr, ptr %i.ij, align 8, !tbaa !2636 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.01417.i.i.i83, i64 8
  %i.iq = add i64 %.018.i.i.i82, -2               ; 2 uses
  %.not.i.i52.i.1 = icmp eq i64 %i.iq, 0
  br i1 %.not.i.i52.i.1, label %.lr.ph.i.i56.i.preheader, label %.lr.ph.i.i51.i, !llvm.loop !5583

.lr.ph.i.i56.i.preheader:                         ; preds = %.lr.ph.i.i51.i, %.lr.ph.i.i51.i.prol.loopexit
  %.lcssa160 = phi ptr [ %.lcssa160.unr, %.lr.ph.i.i51.i.prol.loopexit ], [ %i.io, %.lr.ph.i.i51.i ] ; 2 uses
  %xtraiter178 = and i64 %i.aq, 3                 ; 2 uses
  %lcmp.mod179.not = icmp eq i64 %xtraiter178, 0
  br i1 %lcmp.mod179.not, label %.lr.ph.i.i56.i.prol.loopexit, label %.lr.ph.i.i56.i.prol

.lr.ph.i.i56.i.prol:                              ; preds = %.lr.ph.i.i56.i.preheader, %.lr.ph.i.i56.i.prol
  %.09.i.i57.i.prol = phi i64 [ %i.ir, %.lr.ph.i.i56.i.prol ], [ %i.aq, %.lr.ph.i.i56.i.preheader ]
  %.048.i.i58.i.prol = phi ptr [ %i.iv, %.lr.ph.i.i56.i.prol ], [ %i.ab, %.lr.ph.i.i56.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i59.i.prol = phi ptr [ %i.iu, %.lr.ph.i.i56.i.prol ], [ %.lcssa160, %.lr.ph.i.i56.i.preheader ] ; 2 uses
  %prol.iter180 = phi i64 [ %prol.iter180.next, %.lr.ph.i.i56.i.prol ], [ 0, %.lr.ph.i.i56.i.preheader ]
  %i.ir = add i64 %.09.i.i57.i.prol, -1           ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i59.i.prol, i64 16
  %i.it = load i32, ptr %i.is, align 4, !tbaa !18
  store i32 %i.it, ptr %.048.i.i58.i.prol, align 4, !tbaa !2523
  %i.iu = load ptr, ptr %.sroa.0.07.i.i59.i.prol, align 8, !tbaa !2636 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.048.i.i58.i.prol, i64 4 ; 2 uses
  %prol.iter180.next = add i64 %prol.iter180, 1   ; 2 uses
  %prol.iter180.cmp.not = icmp eq i64 %prol.iter180.next, %xtraiter178
  br i1 %prol.iter180.cmp.not, label %.lr.ph.i.i56.i.prol.loopexit, label %.lr.ph.i.i56.i.prol, !llvm.loop !5587

.lr.ph.i.i56.i.prol.loopexit:                     ; preds = %.lr.ph.i.i56.i.prol, %.lr.ph.i.i56.i.preheader
  %.09.i.i57.i.unr = phi i64 [ %i.aq, %.lr.ph.i.i56.i.preheader ], [ %i.ir, %.lr.ph.i.i56.i.prol ]
  %.048.i.i58.i.unr = phi ptr [ %i.ab, %.lr.ph.i.i56.i.preheader ], [ %i.iv, %.lr.ph.i.i56.i.prol ]
  %.sroa.0.07.i.i59.i.unr = phi ptr [ %.lcssa160, %.lr.ph.i.i56.i.preheader ], [ %i.iu, %.lr.ph.i.i56.i.prol ]
  %i.iw = icmp ult i64 %i.aq, 4
  br i1 %i.iw, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i56.i

.lr.ph.i.i56.i:                                   ; preds = %.lr.ph.i.i56.i.prol.loopexit, %.lr.ph.i.i56.i
  %.09.i.i57.i = phi i64 [ %i.jj, %.lr.ph.i.i56.i ], [ %.09.i.i57.i.unr, %.lr.ph.i.i56.i.prol.loopexit ]
  %.048.i.i58.i = phi ptr [ %i.jn, %.lr.ph.i.i56.i ], [ %.048.i.i58.i.unr, %.lr.ph.i.i56.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i59.i = phi ptr [ %i.jm, %.lr.ph.i.i56.i ], [ %.sroa.0.07.i.i59.i.unr, %.lr.ph.i.i56.i.prol.loopexit ] ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE14priv_push_backIS3_EEvOT_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.d
  %i.g = load i32, ptr %1, align 4, !tbaa !2425
  store i32 %i.g, ptr %i.f, align 4, !tbaa !2425
  store i32 0, ptr %1, align 4, !tbaa !2425
  %i.h = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.j = add i64 %i.d, 1
  store i64 %i.j, ptr %i.c, align 8, !tbaa !5751
  br label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.b
  %i.l = tail call noundef ptr @_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.k, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %1) ; 0 uses
  br label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE12emplace_backIJS3_EEERS3_DpOT_.exit

_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE12insert_rangeISt14_List_iteratorIiEEEPS3_PKS3_T_SD_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i.i = icmp eq ptr %2, %3
  br i1 %.not4.i.i, label %bb.b, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.a, %.lr.ph.i.i ], [ 0, %bb.a ] ; 23 uses
  %.sroa.02.05.i.i = phi ptr [ %i.b, %.lr.ph.i.i ], [ %2, %bb.a ]
  %i.a = add i64 %.06.i.i, 1                      ; 18 uses
  %i.b = load ptr, ptr %.sroa.02.05.i.i, align 8, !tbaa !2636 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %3
  br i1 %.not.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit, label %.lr.ph.i.i, !llvm.loop !2685

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !5754
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !5753
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  br label %bb.m

_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit: ; preds = %.lr.ph.i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !5754   ; 10 uses
  %i.l = ptrtoaddr ptr %i.k to i64                ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !5751 ; 8 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.n ; 17 uses
  %i.p = icmp eq ptr %1, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !6147
  %i.s = sub i64 %i.r, %i.n
  %.not49.not = icmp ugt i64 %i.s, %.06.i.i
  br i1 %.not49.not, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.015.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.o, %bb.c ] ; 3 uses
  %.sroa.010.014.i = phi ptr [ %i.x, %.lr.ph.i ], [ %2, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i) ]
  %i.u = load i32, ptr %i.t, align 4, !tbaa !18
  store i32 %i.u, ptr %.015.i, align 4, !tbaa !2425
  %i.v = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.x = load ptr, ptr %.sroa.010.014.i, align 8, !tbaa !2636 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %.not.i = icmp eq ptr %i.x, %3
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i, !llvm.loop !6607

_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit: ; preds = %.lr.ph.i
  %i.z = add i64 %i.n, %i.a
  store i64 %i.z, ptr %i.m, align 8, !tbaa !5742
  br label %bb.m

bb.d:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !5753 ; 8 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ab ; 15 uses
  %i.ad = icmp eq ptr %1, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not48.not = icmp ugt i64 %i.ab, %.06.i.i
  br i1 %.not48.not, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ae = xor i64 %.06.i.i, -1
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  br label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.f, %.lr.ph.i51
  %.015.i52 = phi ptr [ %i.al, %.lr.ph.i51 ], [ %i.af, %bb.f ] ; 3 uses
  %.sroa.010.014.i53 = phi ptr [ %i.ak, %.lr.ph.i51 ], [ %2, %bb.f ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i53, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i52) ]
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !18
  store i32 %i.ah, ptr %.015.i52, align 4, !tbaa !2425
  %i.ai = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.ak = load ptr, ptr %.sroa.010.014.i53, align 8, !tbaa !2636 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.015.i52, i64 4
  %.not.i54 = icmp eq ptr %i.ak, %3
  br i1 %.not.i54, label %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit56, label %.lr.ph.i51, !llvm.loop !6607

_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit56: ; preds = %.lr.ph.i51
  %i.am = sub nuw i64 %i.ab, %i.a                 ; 2 uses
  store i64 %i.am, ptr %i.aa, align 8, !tbaa !5741
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.am
  br label %bb.m

bb.g:                                             ; preds = %bb.d
  %i.ao = ptrtoint ptr %1 to i64                  ; 6 uses
  %i.ap = ptrtoint ptr %i.ac to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2                 ; 8 uses
  %i.as = sub i64 %i.n, %i.ab
  %i.at = lshr i64 %i.as, 1
  %.not = icmp ult i64 %i.ar, %i.at
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !6147
  %i.aw = sub i64 %i.av, %i.n
  %.not47.not = icmp ugt i64 %i.aw, %.06.i.i
  br i1 %.not47.not, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ax = ptrtoint ptr %i.o to i64
  %i.ay = sub i64 %i.ax, %i.ao
  %i.az = ashr exact i64 %i.ay, 2                 ; 7 uses
  %.not.i57.not = icmp ugt i64 %i.az, %.06.i.i
  br i1 %.not.i57.not, label %bb.j, label %.lr.ph.i48.preheader.i

bb.j:                                             ; preds = %bb.i
  %i.ba = xor i64 %.06.i.i, -1
  %i.bb = getelementptr [4 x i8], ptr %i.o, i64 %i.ba ; 10 uses
  %i.bc = and i64 %.06.i.i, 1
  %lcmp.mod179.not.not = icmp eq i64 %i.bc, 0
  br i1 %lcmp.mod179.not.not, label %.lr.ph.i.i58.prol, label %.lr.ph.i.i58.prol.loopexit

.lr.ph.i.i58.prol:                                ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !2425
  store i32 %i.bd, ptr %i.o, align 4, !tbaa !2425
  store i32 0, ptr %i.bb, align 4, !tbaa !2425
  %i.be = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br label %.lr.ph.i.i58.prol.loopexit

.lr.ph.i.i58.prol.loopexit:                       ; preds = %.lr.ph.i.i58.prol, %bb.j
  %.020.i.i.unr = phi i64 [ %i.a, %bb.j ], [ %.06.i.i, %.lr.ph.i.i58.prol ]
  %.0819.i.i.unr = phi ptr [ %i.bb, %bb.j ], [ %i.bg, %.lr.ph.i.i58.prol ]
  %.01618.i.i.unr = phi ptr [ %i.o, %bb.j ], [ %i.bh, %.lr.ph.i.i58.prol ]
  %i.bi = icmp eq i64 %.06.i.i, 0
  br i1 %i.bi, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i58

.lr.ph.i.i58:                                     ; preds = %.lr.ph.i.i58.prol.loopexit, %.lr.ph.i.i58
  %.020.i.i = phi i64 [ %i.bo, %.lr.ph.i.i58 ], [ %.020.i.i.unr, %.lr.ph.i.i58.prol.loopexit ]
  %.0819.i.i = phi ptr [ %i.bs, %.lr.ph.i.i58 ], [ %.0819.i.i.unr, %.lr.ph.i.i58.prol.loopexit ] ; 4 uses
  %.01618.i.i = phi ptr [ %i.bt, %.lr.ph.i.i58 ], [ %.01618.i.i.unr, %.lr.ph.i.i58.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i) ]
  %i.bj = load i32, ptr %.0819.i.i, align 4, !tbaa !2425
  store i32 %i.bj, ptr %.01618.i.i, align 4, !tbaa !2425
  store i32 0, ptr %.0819.i.i, align 4, !tbaa !2425
  %i.bk = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 4
  %i.bo = add i64 %.020.i.i, -2                   ; 2 uses
  %i.bp = load i32, ptr %i.bm, align 4, !tbaa !2425
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !2425
  store i32 0, ptr %i.bm, align 4, !tbaa !2425
  %i.bq = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %.not.i.i59.1 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i59.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i58, !llvm.loop !6229

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i: ; preds = %.lr.ph.i.i58, %.lr.ph.i.i58.prol.loopexit
  %.not8.i.i = icmp eq ptr %1, %i.bb
  br i1 %.not8.i.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i.preheader

.lr.ph.i40.i.preheader:                           ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %4 = shl nuw nsw i64 %i.n, 2
  %5 = add i64 %4, %i.l
  %i.bu = mul i64 %.06.i.i, -4
  %reass.sub = sub i64 %i.bu, %i.ao
  %i.bv = add i64 %reass.sub, -8
  %i.bw = add i64 %5, %i.bv                       ; 2 uses
  %i.bx = lshr i64 %i.bw, 2
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bw, 172
  br i1 %min.iters.check, label %.lr.ph.i40.i.preheader171, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.preheader
  %i.bz = shl nuw nsw i64 %i.n, 2                 ; 3 uses
  %i.ca = getelementptr i8, ptr %i.k, i64 %i.bz
  %scevgep = getelementptr i8, ptr %i.ca, i64 -4
  %i.cb = add i64 %i.bz, %i.l
  %i.cc = mul i64 %.06.i.i, -4                    ; 2 uses
  %reass.sub164 = sub i64 %i.cc, %i.ao
  %i.cd = add i64 %reass.sub164, -8
  %i.ce = add i64 %i.cb, %i.cd                    ; 2 uses
  %i.cf = lshr i64 %i.ce, 2
  %i.cg = mul i64 %i.cf, -4
  %scevgep136 = getelementptr i8, ptr %scevgep, i64 %i.cg
  %scevgep137 = getelementptr i8, ptr %i.k, i64 %i.bz
  %i.ch = add i64 %i.cc, -8
  %i.ci = and i64 %i.ce, -4
  %i.cj = sub i64 %i.ch, %i.ci
  %scevgep138 = getelementptr i8, ptr %scevgep137, i64 %i.cj
  %bound0 = icmp ult ptr %scevgep136, %i.bb
  %bound1 = icmp ult ptr %scevgep138, %i.o
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.preheader171, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.by, 9223372036854775800     ; 3 uses
  %i.ck = mul i64 %n.vec, -4                      ; 2 uses
  %i.cl = getelementptr i8, ptr %i.o, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.bb, i64 %i.ck
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cn = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.cn ; 2 uses
  %next.gep139 = getelementptr i8, ptr %i.bb, i64 %i.cn ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %next.gep139, i64 -16 ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %next.gep139, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.co, align 4, !tbaa !2425, !alias.scope !6608
  %wide.load140 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !2425, !alias.scope !6608
  %i.cq = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cr = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cq, align 4, !tbaa !2425, !alias.scope !6611, !noalias !6608
  store <4 x i32> %wide.load140, ptr %i.cr, align 4, !tbaa !2425, !alias.scope !6611, !noalias !6608
  store <4 x i32> zeroinitializer, ptr %i.co, align 4, !tbaa !2425, !alias.scope !6608
  store <4 x i32> zeroinitializer, ptr %i.cp, align 4, !tbaa !2425, !alias.scope !6608
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !6613

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i.preheader171

.lr.ph.i40.i.preheader171:                        ; preds = %vector.memcheck, %.lr.ph.i40.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i40.i.preheader ], [ %i.cl, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.bb, %vector.memcheck ], [ %i.bb, %.lr.ph.i40.i.preheader ], [ %i.cm, %middle.block ]
  br label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %.lr.ph.i40.i.preheader171, %.lr.ph.i40.i
  %.010.i.i = phi ptr [ %i.cu, %.lr.ph.i40.i ], [ %.010.i.i.ph, %.lr.ph.i40.i.preheader171 ]
  %.079.i.i = phi ptr [ %i.ct, %.lr.ph.i40.i ], [ %.079.i.i.ph, %.lr.ph.i40.i.preheader171 ]
  %i.ct = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 4 uses
  %i.cu = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !2425
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !2425
  store i32 0, ptr %i.ct, align 4, !tbaa !2425
  %.not.i41.i = icmp eq ptr %1, %i.ct
  br i1 %.not.i41.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i, !llvm.loop !6614

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i40.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %xtraiter181 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod182.not = icmp eq i64 %xtraiter181, 0
  br i1 %lcmp.mod182.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.09.i.i.i.prol = phi i64 [ %i.cw, %.lr.ph.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.preheader ]
  %.048.i.i.i.prol = phi ptr [ %i.da, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.prol = phi ptr [ %i.cz, %.lr.ph.i.i.i.prol ], [ %2, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter183 = phi i64 [ %prol.iter183.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.cw = add i64 %.09.i.i.i.prol, -1             ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.prol, i64 16
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !18
  store i32 %i.cy, ptr %.048.i.i.i.prol, align 4, !tbaa !2425
  %i.cz = load ptr, ptr %.sroa.0.07.i.i.i.prol, align 8, !tbaa !2636 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.048.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter183.next = add i64 %prol.iter183, 1   ; 2 uses
  %prol.iter183.cmp.not = icmp eq i64 %prol.iter183.next, %xtraiter181
  br i1 %prol.iter183.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !6615

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.unr = phi i64 [ %i.a, %.lr.ph.i.i.i.preheader ], [ %i.cw, %.lr.ph.i.i.i.prol ]
  %.048.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.preheader ], [ %i.da, %.lr.ph.i.i.i.prol ]
  %.sroa.0.07.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.preheader ], [ %i.cz, %.lr.ph.i.i.i.prol ]
  %i.db = icmp ult i64 %.06.i.i, 3
  br i1 %i.db, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.do, %.lr.ph.i.i.i ], [ %.09.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.048.i.i.i = phi ptr [ %i.ds, %.lr.ph.i.i.i ], [ %.048.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 16
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !18
  store i32 %i.dd, ptr %.048.i.i.i, align 4, !tbaa !2425
  %i.de = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !2636 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !18
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !2425
  %i.di = load ptr, ptr %i.de, align 8, !tbaa !2636 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !18
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !2425
  %i.dm = load ptr, ptr %i.di, align 8, !tbaa !2636 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 12
  %i.do = add i64 %.09.i.i.i, -4                  ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !18
  store i32 %i.dq, ptr %i.dn, align 4, !tbaa !2425
  %i.dr = load ptr, ptr %i.dm, align 8, !tbaa !2636
  %i.ds = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i, !llvm.loop !3697

.lr.ph.i48.preheader.i:                           ; preds = %bb.i
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.a
  br label %.lr.ph.i48.i

.lr.ph.i48.i:                                     ; preds = %.lr.ph.i48.i, %.lr.ph.i48.preheader.i
  %.018.i.i = phi ptr [ %i.dx, %.lr.ph.i48.i ], [ %1, %.lr.ph.i48.preheader.i ] ; 3 uses
  %.01517.i.i = phi ptr [ %i.dy, %.lr.ph.i48.i ], [ %i.dt, %.lr.ph.i48.preheader.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.du = load i32, ptr %.018.i.i, align 4, !tbaa !2425
  store i32 %i.du, ptr %.01517.i.i, align 4, !tbaa !2425
  store i32 0, ptr %.018.i.i, align 4, !tbaa !2425
  %i.dv = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.dw = add i32 %i.dv, 1
  store i32 %i.dw, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.dx = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4
  %.not.i49.i = icmp eq ptr %i.dx, %i.o
  br i1 %.not.i49.i, label %.lr.ph.i.i52.i.preheader, label %.lr.ph.i48.i, !llvm.loop !6240

.lr.ph.i.i52.i.preheader:                         ; preds = %.lr.ph.i48.i
  %xtraiter = and i64 %i.az, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i52.i.prol.loopexit, label %.lr.ph.i.i52.i.prol

.lr.ph.i.i52.i.prol:                              ; preds = %.lr.ph.i.i52.i.preheader, %.lr.ph.i.i52.i.prol
  %.09.i.i53.i.prol = phi i64 [ %i.dz, %.lr.ph.i.i52.i.prol ], [ %i.az, %.lr.ph.i.i52.i.preheader ]
  %.048.i.i54.i.prol = phi ptr [ %i.ed, %.lr.ph.i.i52.i.prol ], [ %1, %.lr.ph.i.i52.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i55.i.prol = phi ptr [ %i.ec, %.lr.ph.i.i52.i.prol ], [ %2, %.lr.ph.i.i52.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i52.i.prol ], [ 0, %.lr.ph.i.i52.i.preheader ]
  %i.dz = add i64 %.09.i.i53.i.prol, -1           ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.prol, i64 16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !18
  store i32 %i.eb, ptr %.048.i.i54.i.prol, align 4, !tbaa !2425
  %i.ec = load ptr, ptr %.sroa.0.07.i.i55.i.prol, align 8, !tbaa !2636 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i52.i.prol.loopexit, label %.lr.ph.i.i52.i.prol, !llvm.loop !6616

.lr.ph.i.i52.i.prol.loopexit:                     ; preds = %.lr.ph.i.i52.i.prol, %.lr.ph.i.i52.i.preheader
  %.lcssa173.unr = phi ptr [ poison, %.lr.ph.i.i52.i.preheader ], [ %i.ec, %.lr.ph.i.i52.i.prol ]
  %.09.i.i53.i.unr = phi i64 [ %i.az, %.lr.ph.i.i52.i.preheader ], [ %i.dz, %.lr.ph.i.i52.i.prol ]
  %.048.i.i54.i.unr = phi ptr [ %1, %.lr.ph.i.i52.i.preheader ], [ %i.ed, %.lr.ph.i.i52.i.prol ]
  %.sroa.0.07.i.i55.i.unr = phi ptr [ %2, %.lr.ph.i.i52.i.preheader ], [ %i.ec, %.lr.ph.i.i52.i.prol ]
  %i.ee = icmp ult i64 %i.az, 4
  br i1 %i.ee, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i, label %.lr.ph.i.i52.i

.lr.ph.i.i52.i:                                   ; preds = %.lr.ph.i.i52.i.prol.loopexit, %.lr.ph.i.i52.i
  %.09.i.i53.i = phi i64 [ %i.er, %.lr.ph.i.i52.i ], [ %.09.i.i53.i.unr, %.lr.ph.i.i52.i.prol.loopexit ]
  %.048.i.i54.i = phi ptr [ %i.ev, %.lr.ph.i.i52.i ], [ %.048.i.i54.i.unr, %.lr.ph.i.i52.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i55.i = phi ptr [ %i.eu, %.lr.ph.i.i52.i ], [ %.sroa.0.07.i.i55.i.unr, %.lr.ph.i.i52.i.prol.loopexit ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i, i64 16
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !18
  store i32 %i.eg, ptr %.048.i.i54.i, align 4, !tbaa !2425
  %i.eh = load ptr, ptr %.sroa.0.07.i.i55.i, align 8, !tbaa !2636 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !18
  store i32 %i.ek, ptr %i.ei, align 4, !tbaa !2425
  %i.el = load ptr, ptr %i.eh, align 8, !tbaa !2636 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !18
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !2425
  %i.ep = load ptr, ptr %i.el, align 8, !tbaa !2636 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 12
  %i.er = add i64 %.09.i.i53.i, -4                ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.et = load i32, ptr %i.es, align 4, !tbaa !18
  store i32 %i.et, ptr %i.eq, align 4, !tbaa !2425
  %i.eu = load ptr, ptr %i.ep, align 8, !tbaa !2636 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 16
  %.not.i.i56.i.3 = icmp eq i64 %i.er, 0
  br i1 %.not.i.i56.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i, label %.lr.ph.i.i52.i, !llvm.loop !3697

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i: ; preds = %.lr.ph.i.i52.i, %.lr.ph.i.i52.i.prol.loopexit
  %.lcssa173 = phi ptr [ %.lcssa173.unr, %.lr.ph.i.i52.i.prol.loopexit ], [ %i.eu, %.lr.ph.i.i52.i ] ; 3 uses
  %i.ew = sub i64 %i.a, %i.az                     ; 3 uses
  %xtraiter175 = and i64 %i.ew, 1
  %lcmp.mod176.not = icmp eq i64 %xtraiter175, 0
  br i1 %lcmp.mod176.not, label %.lr.ph.i.i60.i.prol.loopexit, label %.lr.ph.i.i60.i.prol

.lr.ph.i.i60.i.prol:                              ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.lcssa173, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !18
  store i32 %i.ey, ptr %i.o, align 4, !tbaa !2425
  %i.ez = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.fa = add i32 %i.ez, 1
  store i32 %i.fa, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.fb = load ptr, ptr %.lcssa173, align 8, !tbaa !2636
  %i.fc = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.fd = add nsw i64 %i.ew, -1
  br label %.lr.ph.i.i60.i.prol.loopexit

.lr.ph.i.i60.i.prol.loopexit:                     ; preds = %.lr.ph.i.i60.i.prol, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i
  %.018.i.i.i.unr = phi i64 [ %i.ew, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i ], [ %i.fd, %.lr.ph.i.i60.i.prol ]
  %.01417.i.i.i.unr = phi ptr [ %i.o, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i ], [ %i.fc, %.lr.ph.i.i60.i.prol ]
  %.sroa.0.016.i.i.i.unr = phi ptr [ %.lcssa173, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i ], [ %i.fb, %.lr.ph.i.i60.i.prol ]
  %i.fe = icmp eq i64 %.06.i.i, %i.az
  br i1 %i.fe, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i60.i

.lr.ph.i.i60.i:                                   ; preds = %.lr.ph.i.i60.i.prol.loopexit, %.lr.ph.i.i60.i
  %.018.i.i.i = phi i64 [ %i.fq, %.lr.ph.i.i60.i ], [ %.018.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ]
  %.01417.i.i.i = phi ptr [ %i.fp, %.lr.ph.i.i60.i ], [ %.01417.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i = phi ptr [ %i.fo, %.lr.ph.i.i60.i ], [ %.sroa.0.016.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i) ]
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !18
  store i32 %i.fg, ptr %.01417.i.i.i, align 4, !tbaa !2425
  %i.fh = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18 ; 2 uses
  %i.fi = add i32 %i.fh, 1
  store i32 %i.fi, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.fj = load ptr, ptr %.sroa.0.016.i.i.i, align 8, !tbaa !2636 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !18
  store i32 %i.fm, ptr %i.fk, align 4, !tbaa !2425
  %i.fn = add i32 %i.fh, 2
  store i32 %i.fn, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.fo = load ptr, ptr %i.fj, align 8, !tbaa !2636
  %i.fp = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 8
  %i.fq = add i64 %.018.i.i.i, -2                 ; 2 uses
  %.not.i.i61.i.1 = icmp eq i64 %i.fq, 0
  br i1 %.not.i.i61.i.1, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i60.i, !llvm.loop !6617

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit: ; preds = %.lr.ph.i.i60.i.prol.loopexit, %.lr.ph.i.i60.i, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.fr = add i64 %i.n, %i.a
  store i64 %i.fr, ptr %i.m, align 8, !tbaa !5742
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %.not46.not = icmp ugt i64 %i.ab, %.06.i.i
  br i1 %.not46.not, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %.not.i60.not = icmp ugt i64 %i.ar, %.06.i.i
  %i.fs = xor i64 %.06.i.i, -1                    ; 2 uses
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.fs ; 3 uses
  br i1 %.not.i60.not, label %.lr.ph.i.i62.preheader, label %.lr.ph.i48.i78

.lr.ph.i.i62.preheader:                           ; preds = %bb.l
  %i.fu = icmp eq i64 %.06.i.i, 0
  br i1 %i.fu, label %.lr.ph.i.i62.epil.preheader, label %.lr.ph.i.i62.preheader.new

.lr.ph.i.i62.preheader.new:                       ; preds = %.lr.ph.i.i62.preheader
  %unroll_iter = and i64 %i.a, -2
  br label %.lr.ph.i.i62

.lr.ph.i.i62:                                     ; preds = %.lr.ph.i.i62, %.lr.ph.i.i62.preheader.new
  %indvar = phi i64 [ 0, %.lr.ph.i.i62.preheader.new ], [ %indvar.next.1, %.lr.ph.i.i62 ] ; 2 uses
  %.0919.i.i = phi ptr [ %i.ac, %.lr.ph.i.i62.preheader.new ], [ %i.gd, %.lr.ph.i.i62 ] ; 4 uses
  %.01618.i.i64 = phi ptr [ %i.ft, %.lr.ph.i.i62.preheader.new ], [ %i.ge, %.lr.ph.i.i62 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i62.preheader.new ], [ %niter.next.1, %.lr.ph.i.i62 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i64) ]
  %i.fv = load i32, ptr %.0919.i.i, align 4, !tbaa !2425
  store i32 %i.fv, ptr %.01618.i.i64, align 4, !tbaa !2425
  store i32 0, ptr %.0919.i.i, align 4, !tbaa !2425
  %i.fw = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.fx = add i32 %i.fw, 1
  store i32 %i.fx, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.fy = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 4 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.01618.i.i64, i64 4
  %i.ga = load i32, ptr %i.fy, align 4, !tbaa !2425
  store i32 %i.ga, ptr %i.fz, align 4, !tbaa !2425
  store i32 0, ptr %i.fy, align 4, !tbaa !2425
  %i.gb = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.gc = add i32 %i.gb, 1
  store i32 %i.gc, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.gd = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 8 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.01618.i.i64, i64 8 ; 2 uses
  %indvar.next.1 = add i64 %indvar, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, label %.lr.ph.i.i62, !llvm.loop !6248

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i62
  %indvar.next = or disjoint i64 %indvar, 1
  %i.gf = and i64 %.06.i.i, 1
  %lcmp.mod191.not.not = icmp eq i64 %i.gf, 0
  br i1 %lcmp.mod191.not.not, label %.lr.ph.i.i62.epil.preheader, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i

.lr.ph.i.i62.epil.preheader:                      ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, %.lr.ph.i.i62.preheader
  %indvar.epil.init = phi i64 [ 0, %.lr.ph.i.i62.preheader ], [ %indvar.next.1, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ]
  %.0919.i.i.epil.init = phi ptr [ %i.ac, %.lr.ph.i.i62.preheader ], [ %i.gd, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ] ; 3 uses
  %.01618.i.i64.epil.init = phi ptr [ %i.ft, %.lr.ph.i.i62.preheader ], [ %i.ge, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod194 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod194)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i64.epil.init) ]
  %i.gg = load i32, ptr %.0919.i.i.epil.init, align 4, !tbaa !2425
  store i32 %i.gg, ptr %.01618.i.i64.epil.init, align 4, !tbaa !2425
  store i32 0, ptr %.0919.i.i.epil.init, align 4, !tbaa !2425
  %i.gh = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.gi = add i32 %i.gh, 1
  store i32 %i.gi, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.gj = getelementptr inbounds nuw i8, ptr %.0919.i.i.epil.init, i64 4
  br label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, %.lr.ph.i.i62.epil.preheader
  %indvar.lcssa = phi i64 [ %indvar.next, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ], [ %indvar.epil.init, %.lr.ph.i.i62.epil.preheader ]
  %.lcssa167 = phi ptr [ %i.gd, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ], [ %i.gj, %.lr.ph.i.i62.epil.preheader ] ; 6 uses
  %.not8.i.i66 = icmp eq ptr %.lcssa167, %1
  br i1 %.not8.i.i66, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67.preheader

.lr.ph.i40.i67.preheader:                         ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %.neg = mul i64 %i.ab, -4
  %.neg165 = sub i64 %.neg, %i.l
  %i.gk = add i64 %i.ao, -8
  %i.gl = shl i64 %.06.i.i, 2
  %6 = sub i64 %i.gk, %i.gl
  %7 = add i64 %.neg165, %6                       ; 2 uses
  %i.gm = lshr i64 %7, 2
  %i.gn = add nuw nsw i64 %i.gm, 1                ; 2 uses
  %min.iters.check150 = icmp ult i64 %7, 172
  br i1 %min.iters.check150, label %.lr.ph.i40.i67.preheader166, label %vector.memcheck142

vector.memcheck142:                               ; preds = %.lr.ph.i40.i67.preheader
  %i.go = shl nuw nsw i64 %i.ab, 2                ; 3 uses
  %i.gp = getelementptr i8, ptr %i.k, i64 %i.go
  %scevgep143 = getelementptr i8, ptr %i.gp, i64 4
  %i.gq = add i64 %i.go, %i.l
  %i.gr = add i64 %i.ao, -8
  %i.gs = shl i64 %.06.i.i, 2
  %i.gt = add i64 %i.gs, %i.gq
  %i.gu = sub i64 %i.gr, %i.gt
  %i.gv = and i64 %i.gu, -4                       ; 2 uses
  %scevgep144 = getelementptr i8, ptr %scevgep143, i64 %i.gv
  %i.gw = shl i64 %indvar.lcssa, 2
  %i.gx = getelementptr i8, ptr %i.k, i64 %i.gw
  %i.gy = getelementptr i8, ptr %i.gx, i64 %i.go
  %i.gz = getelementptr i8, ptr %i.gy, i64 8
  %scevgep145 = getelementptr i8, ptr %i.gz, i64 %i.gv
  %bound0146 = icmp ult ptr %i.ac, %scevgep145
  %bound1147 = icmp ult ptr %.lcssa167, %scevgep144
  %found.conflict148 = and i1 %bound0146, %bound1147
  br i1 %found.conflict148, label %.lr.ph.i40.i67.preheader166, label %vector.ph151

vector.ph151:                                     ; preds = %vector.memcheck142
  %n.vec152 = and i64 %i.gn, 9223372036854775800  ; 3 uses
  %i.ha = shl i64 %n.vec152, 2                    ; 2 uses
  %i.hb = getelementptr i8, ptr %i.ac, i64 %i.ha  ; 2 uses
  %i.hc = getelementptr i8, ptr %.lcssa167, i64 %i.ha
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next159, %vector.body153 ] ; 2 uses
  %i.hd = shl i64 %index154, 2                    ; 2 uses
  %next.gep155 = getelementptr i8, ptr %i.ac, i64 %i.hd ; 2 uses
  %next.gep156 = getelementptr i8, ptr %.lcssa167, i64 %i.hd ; 3 uses
  %i.he = getelementptr i8, ptr %next.gep156, i64 16 ; 2 uses
  %wide.load157 = load <4 x i32>, ptr %next.gep156, align 4, !tbaa !2425, !alias.scope !6618
  %wide.load158 = load <4 x i32>, ptr %i.he, align 4, !tbaa !2425, !alias.scope !6618
  %i.hf = getelementptr i8, ptr %next.gep155, i64 16
  store <4 x i32> %wide.load157, ptr %next.gep155, align 4, !tbaa !2425, !alias.scope !6621, !noalias !6618
  store <4 x i32> %wide.load158, ptr %i.hf, align 4, !tbaa !2425, !alias.scope !6621, !noalias !6618
  store <4 x i32> zeroinitializer, ptr %next.gep156, align 4, !tbaa !2425, !alias.scope !6618
  store <4 x i32> zeroinitializer, ptr %i.he, align 4, !tbaa !2425, !alias.scope !6618
  %index.next159 = add nuw i64 %index154, 8       ; 2 uses
  %i.hg = icmp eq i64 %index.next159, %n.vec152
  br i1 %i.hg, label %middle.block160, label %vector.body153, !llvm.loop !6623

middle.block160:                                  ; preds = %vector.body153
  %cmp.n161 = icmp eq i64 %i.gn, %n.vec152
  br i1 %cmp.n161, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67.preheader166

.lr.ph.i40.i67.preheader166:                      ; preds = %vector.memcheck142, %.lr.ph.i40.i67.preheader, %middle.block160
  %.010.i.i68.ph = phi ptr [ %i.ac, %vector.memcheck142 ], [ %i.ac, %.lr.ph.i40.i67.preheader ], [ %i.hb, %middle.block160 ]
  %.079.i.i69.ph = phi ptr [ %.lcssa167, %vector.memcheck142 ], [ %.lcssa167, %.lr.ph.i40.i67.preheader ], [ %i.hc, %middle.block160 ]
  br label %.lr.ph.i40.i67

.lr.ph.i40.i67:                                   ; preds = %.lr.ph.i40.i67.preheader166, %.lr.ph.i40.i67
  %.010.i.i68 = phi ptr [ %i.hj, %.lr.ph.i40.i67 ], [ %.010.i.i68.ph, %.lr.ph.i40.i67.preheader166 ] ; 2 uses
  %.079.i.i69 = phi ptr [ %i.hi, %.lr.ph.i40.i67 ], [ %.079.i.i69.ph, %.lr.ph.i40.i67.preheader166 ] ; 3 uses
  %i.hh = load i32, ptr %.079.i.i69, align 4, !tbaa !2425
  store i32 %i.hh, ptr %.010.i.i68, align 4, !tbaa !2425
  store i32 0, ptr %.079.i.i69, align 4, !tbaa !2425
  %i.hi = getelementptr inbounds nuw i8, ptr %.079.i.i69, i64 4 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.010.i.i68, i64 4 ; 2 uses
  %.not.i41.i70 = icmp eq ptr %i.hi, %1
  br i1 %.not.i41.i70, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67, !llvm.loop !6624

.lr.ph.i.i.i72.preheader:                         ; preds = %.lr.ph.i40.i67, %middle.block160, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %.048.i.i.i74.ph = phi ptr [ %i.ac, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i ], [ %i.hb, %middle.block160 ], [ %i.hj, %.lr.ph.i40.i67 ] ; 2 uses
  %xtraiter195 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod196.not = icmp eq i64 %xtraiter195, 0
  br i1 %lcmp.mod196.not, label %.lr.ph.i.i.i72.prol.loopexit, label %.lr.ph.i.i.i72.prol

.lr.ph.i.i.i72.prol:                              ; preds = %.lr.ph.i.i.i72.preheader, %.lr.ph.i.i.i72.prol
  %.09.i.i.i73.prol = phi i64 [ %i.hk, %.lr.ph.i.i.i72.prol ], [ %i.a, %.lr.ph.i.i.i72.preheader ]
  %.048.i.i.i74.prol = phi ptr [ %i.ho, %.lr.ph.i.i.i72.prol ], [ %.048.i.i.i74.ph, %.lr.ph.i.i.i72.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i75.prol = phi ptr [ %i.hn, %.lr.ph.i.i.i72.prol ], [ %2, %.lr.ph.i.i.i72.preheader ] ; 2 uses
  %prol.iter197 = phi i64 [ %prol.iter197.next, %.lr.ph.i.i.i72.prol ], [ 0, %.lr.ph.i.i.i72.preheader ]
  %i.hk = add i64 %.09.i.i.i73.prol, -1           ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i75.prol, i64 16
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !18
  store i32 %i.hm, ptr %.048.i.i.i74.prol, align 4, !tbaa !2425
  %i.hn = load ptr, ptr %.sroa.0.07.i.i.i75.prol, align 8, !tbaa !2636 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.048.i.i.i74.prol, i64 4 ; 2 uses
  %prol.iter197.next = add i64 %prol.iter197, 1   ; 2 uses
  %prol.iter197.cmp.not = icmp eq i64 %prol.iter197.next, %xtraiter195
  br i1 %prol.iter197.cmp.not, label %.lr.ph.i.i.i72.prol.loopexit, label %.lr.ph.i.i.i72.prol, !llvm.loop !6625

.lr.ph.i.i.i72.prol.loopexit:                     ; preds = %.lr.ph.i.i.i72.prol, %.lr.ph.i.i.i72.preheader
  %.09.i.i.i73.unr = phi i64 [ %i.a, %.lr.ph.i.i.i72.preheader ], [ %i.hk, %.lr.ph.i.i.i72.prol ]
  %.048.i.i.i74.unr = phi ptr [ %.048.i.i.i74.ph, %.lr.ph.i.i.i72.preheader ], [ %i.ho, %.lr.ph.i.i.i72.prol ]
  %.sroa.0.07.i.i.i75.unr = phi ptr [ %2, %.lr.ph.i.i.i72.preheader ], [ %i.hn, %.lr.ph.i.i.i72.prol ]
  %i.hp = icmp ult i64 %.06.i.i, 3
  br i1 %i.hp, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i72

.lr.ph.i.i.i72:                                   ; preds = %.lr.ph.i.i.i72.prol.loopexit, %.lr.ph.i.i.i72
  %.09.i.i.i73 = phi i64 [ %i.ic, %.lr.ph.i.i.i72 ], [ %.09.i.i.i73.unr, %.lr.ph.i.i.i72.prol.loopexit ]
  %.048.i.i.i74 = phi ptr [ %i.ig, %.lr.ph.i.i.i72 ], [ %.048.i.i.i74.unr, %.lr.ph.i.i.i72.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i75 = phi ptr [ %i.if, %.lr.ph.i.i.i72 ], [ %.sroa.0.07.i.i.i75.unr, %.lr.ph.i.i.i72.prol.loopexit ] ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i75, i64 16
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !18
  store i32 %i.hr, ptr %.048.i.i.i74, align 4, !tbaa !2425
  %i.hs = load ptr, ptr %.sroa.0.07.i.i.i75, align 8, !tbaa !2636 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 4
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !18
  store i32 %i.hv, ptr %i.ht, align 4, !tbaa !2425
  %i.hw = load ptr, ptr %i.hs, align 8, !tbaa !2636 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !18
  store i32 %i.hz, ptr %i.hx, align 4, !tbaa !2425
  %i.ia = load ptr, ptr %i.hw, align 8, !tbaa !2636 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 12
  %i.ic = add i64 %.09.i.i.i73, -4                ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !18
  store i32 %i.ie, ptr %i.ib, align 4, !tbaa !2425
  %i.if = load ptr, ptr %i.ia, align 8, !tbaa !2636
  %i.ig = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 16
  %.not.i.i.i76.3 = icmp eq i64 %i.ic, 0
  br i1 %.not.i.i.i76.3, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i72, !llvm.loop !3697

.lr.ph.i48.i78:                                   ; preds = %bb.l, %.lr.ph.i48.i78
  %.018.i.i79 = phi ptr [ %i.ik, %.lr.ph.i48.i78 ], [ %i.ac, %bb.l ] ; 3 uses
  %.01517.i.i80 = phi ptr [ %i.il, %.lr.ph.i48.i78 ], [ %i.ft, %bb.l ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i80) ]
  %i.ih = load i32, ptr %.018.i.i79, align 4, !tbaa !2425
  store i32 %i.ih, ptr %.01517.i.i80, align 4, !tbaa !2425
  store i32 0, ptr %.018.i.i79, align 4, !tbaa !2425
  %i.ii = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.ij = add i32 %i.ii, 1
  store i32 %i.ij, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.ik = getelementptr inbounds nuw i8, ptr %.018.i.i79, i64 4 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.01517.i.i80, i64 4 ; 3 uses
  %.not.i49.i81 = icmp eq ptr %i.ik, %1
  br i1 %.not.i49.i81, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, label %.lr.ph.i48.i78, !llvm.loop !6240

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i: ; preds = %.lr.ph.i48.i78
  %i.im = sub i64 %i.a, %i.ar                     ; 3 uses
  %xtraiter184 = and i64 %i.im, 1
  %lcmp.mod185.not = icmp eq i64 %xtraiter184, 0
  br i1 %lcmp.mod185.not, label %.lr.ph.i.i51.i.prol.loopexit, label %.lr.ph.i.i51.i.prol

.lr.ph.i.i51.i.prol:                              ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %i.in = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.io = load i32, ptr %i.in, align 4, !tbaa !18
  store i32 %i.io, ptr %i.il, align 4, !tbaa !2425
  %i.ip = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.iq = add i32 %i.ip, 1
  store i32 %i.iq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.ir = load ptr, ptr %2, align 8, !tbaa !2636  ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.01517.i.i80, i64 8
  %i.it = add nsw i64 %i.im, -1
  br label %.lr.ph.i.i51.i.prol.loopexit

.lr.ph.i.i51.i.prol.loopexit:                     ; preds = %.lr.ph.i.i51.i.prol, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %.lcssa169.unr = phi ptr [ poison, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.ir, %.lr.ph.i.i51.i.prol ]
  %.018.i.i.i82.unr = phi i64 [ %i.im, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.it, %.lr.ph.i.i51.i.prol ]
  %.01417.i.i.i83.unr = phi ptr [ %i.il, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.is, %.lr.ph.i.i51.i.prol ]
  %.sroa.0.016.i.i.i84.unr = phi ptr [ %2, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.ir, %.lr.ph.i.i51.i.prol ]
  %i.iu = icmp eq i64 %.06.i.i, %i.ar
  br i1 %i.iu, label %.lr.ph.i.i56.i.preheader, label %.lr.ph.i.i51.i

.lr.ph.i.i51.i:                                   ; preds = %.lr.ph.i.i51.i.prol.loopexit, %.lr.ph.i.i51.i
  %.018.i.i.i82 = phi i64 [ %i.jg, %.lr.ph.i.i51.i ], [ %.018.i.i.i82.unr, %.lr.ph.i.i51.i.prol.loopexit ]
  %.01417.i.i.i83 = phi ptr [ %i.jf, %.lr.ph.i.i51.i ], [ %.01417.i.i.i83.unr, %.lr.ph.i.i51.i.prol.loopexit ] ; 3 uses
  %.sroa.0.016.i.i.i84 = phi ptr [ %i.je, %.lr.ph.i.i51.i ], [ %.sroa.0.016.i.i.i84.unr, %.lr.ph.i.i51.i.prol.loopexit ] ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i84, i64 16
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !18
  store i32 %i.iw, ptr %.01417.i.i.i83, align 4, !tbaa !2425
  %i.ix = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18 ; 2 uses
  %i.iy = add i32 %i.ix, 1
  store i32 %i.iy, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.iz = load ptr, ptr %.sroa.0.016.i.i.i84, align 8, !tbaa !2636 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.01417.i.i.i83, i64 4
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !18
  store i32 %i.jc, ptr %i.ja, align 4, !tbaa !2425
  %i.jd = add i32 %i.ix, 2
  store i32 %i.jd, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !18
  %i.je = load ptr, ptr %i.iz, align 8, !tbaa !2636 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.01417.i.i.i83, i64 8
  %i.jg = add i64 %.018.i.i.i82, -2               ; 2 uses
  %.not.i.i52.i.1 = icmp eq i64 %i.jg, 0
  br i1 %.not.i.i52.i.1, label %.lr.ph.i.i56.i.preheader, label %.lr.ph.i.i51.i, !llvm.loop !6617

.lr.ph.i.i56.i.preheader:                         ; preds = %.lr.ph.i.i51.i, %.lr.ph.i.i51.i.prol.loopexit
  %.lcssa169 = phi ptr [ %.lcssa169.unr, %.lr.ph.i.i51.i.prol.loopexit ], [ %i.je, %.lr.ph.i.i51.i ] ; 2 uses
  %xtraiter187 = and i64 %i.ar, 3                 ; 2 uses
  %lcmp.mod188.not = icmp eq i64 %xtraiter187, 0
  br i1 %lcmp.mod188.not, label %.lr.ph.i.i56.i.prol.loopexit, label %.lr.ph.i.i56.i.prol

.lr.ph.i.i56.i.prol:                              ; preds = %.lr.ph.i.i56.i.preheader, %.lr.ph.i.i56.i.prol
  %.09.i.i57.i.prol = phi i64 [ %i.jh, %.lr.ph.i.i56.i.prol ], [ %i.ar, %.lr.ph.i.i56.i.preheader ]
  %.048.i.i58.i.prol = phi ptr [ %i.jl, %.lr.ph.i.i56.i.prol ], [ %i.ac, %.lr.ph.i.i56.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i59.i.prol = phi ptr [ %i.jk, %.lr.ph.i.i56.i.prol ], [ %.lcssa169, %.lr.ph.i.i56.i.preheader ] ; 2 uses
  %prol.iter189 = phi i64 [ %prol.iter189.next, %.lr.ph.i.i56.i.prol ], [ 0, %.lr.ph.i.i56.i.preheader ]
  %i.jh = add i64 %.09.i.i57.i.prol, -1           ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i59.i.prol, i64 16
end_hunk_3
begin_hunk_4_@_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE23allocate_and_copy_rangeIPKS3_EEvT_SA_:bb.a
  br i1 %.not.i19, label %_ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef nonnull %i.p)
          to label %_ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #31
  unreachable

_ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEED2Ev.exit: ; preds = %bb.e, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.d, ptr %i.ab, align 8, !tbaa !5788
  store ptr %i.o, ptr %0, align 8, !tbaa !5799
  store i64 0, ptr %i.q, align 8, !tbaa !5798
  store i64 %i.d, ptr %i.s, align 8, !tbaa !5787
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE12insert_rangeISt14_List_iteratorIiEEEPS3_PKS3_T_SD_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i.i = icmp eq ptr %2, %3
  br i1 %.not4.i.i, label %bb.b, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.a, %.lr.ph.i.i ], [ 0, %bb.a ] ; 23 uses
  %.sroa.02.05.i.i = phi ptr [ %i.b, %.lr.ph.i.i ], [ %2, %bb.a ]
  %i.a = add i64 %.06.i.i, 1                      ; 18 uses
  %i.b = load ptr, ptr %.sroa.02.05.i.i, align 8, !tbaa !2636 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %3
  br i1 %.not.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit, label %.lr.ph.i.i, !llvm.loop !2685

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !5799
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !5798
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  br label %bb.m

_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit: ; preds = %.lr.ph.i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !5799   ; 10 uses
  %i.l = ptrtoaddr ptr %i.k to i64                ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !5796 ; 8 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.n ; 17 uses
  %i.p = icmp eq ptr %1, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !6786
  %i.s = sub i64 %i.r, %i.n
  %.not49.not = icmp ugt i64 %i.s, %.06.i.i
  br i1 %.not49.not, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.015.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.o, %bb.c ] ; 3 uses
  %.sroa.010.014.i = phi ptr [ %i.x, %.lr.ph.i ], [ %2, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i) ]
  %i.u = load i32, ptr %i.t, align 4, !tbaa !18
  store i32 %i.u, ptr %.015.i, align 4, !tbaa !2474
  %i.v = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.x = load ptr, ptr %.sroa.010.014.i, align 8, !tbaa !2636 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %.not.i = icmp eq ptr %i.x, %3
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i, !llvm.loop !7525

_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit: ; preds = %.lr.ph.i
  %i.z = add i64 %i.n, %i.a
  store i64 %i.z, ptr %i.m, align 8, !tbaa !5787
  br label %bb.m

bb.d:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !5798 ; 8 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ab ; 15 uses
  %i.ad = icmp eq ptr %1, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not48.not = icmp ugt i64 %i.ab, %.06.i.i
  br i1 %.not48.not, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ae = xor i64 %.06.i.i, -1
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  br label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.f, %.lr.ph.i51
  %.015.i52 = phi ptr [ %i.al, %.lr.ph.i51 ], [ %i.af, %bb.f ] ; 3 uses
  %.sroa.010.014.i53 = phi ptr [ %i.ak, %.lr.ph.i51 ], [ %2, %bb.f ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i53, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i52) ]
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !18
  store i32 %i.ah, ptr %.015.i52, align 4, !tbaa !2474
  %i.ai = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.ak = load ptr, ptr %.sroa.010.014.i53, align 8, !tbaa !2636 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.015.i52, i64 4
  %.not.i54 = icmp eq ptr %i.ak, %3
  br i1 %.not.i54, label %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit56, label %.lr.ph.i51, !llvm.loop !7525

_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit56: ; preds = %.lr.ph.i51
  %i.am = sub nuw i64 %i.ab, %i.a                 ; 2 uses
  store i64 %i.am, ptr %i.aa, align 8, !tbaa !5786
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.am
  br label %bb.m

bb.g:                                             ; preds = %bb.d
  %i.ao = ptrtoint ptr %1 to i64                  ; 6 uses
  %i.ap = ptrtoint ptr %i.ac to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2                 ; 8 uses
  %i.as = sub i64 %i.n, %i.ab
  %i.at = lshr i64 %i.as, 1
  %.not = icmp ult i64 %i.ar, %i.at
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !6786
  %i.aw = sub i64 %i.av, %i.n
  %.not47.not = icmp ugt i64 %i.aw, %.06.i.i
  br i1 %.not47.not, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ax = ptrtoint ptr %i.o to i64
  %i.ay = sub i64 %i.ax, %i.ao
  %i.az = ashr exact i64 %i.ay, 2                 ; 7 uses
  %.not.i57.not = icmp ugt i64 %i.az, %.06.i.i
  br i1 %.not.i57.not, label %bb.j, label %.lr.ph.i48.preheader.i

bb.j:                                             ; preds = %bb.i
  %i.ba = xor i64 %.06.i.i, -1
  %i.bb = getelementptr [4 x i8], ptr %i.o, i64 %i.ba ; 10 uses
  %i.bc = and i64 %.06.i.i, 1
  %lcmp.mod179.not.not = icmp eq i64 %i.bc, 0
  br i1 %lcmp.mod179.not.not, label %.lr.ph.i.i58.prol, label %.lr.ph.i.i58.prol.loopexit

.lr.ph.i.i58.prol:                                ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !2474
  store i32 %i.bd, ptr %i.o, align 4, !tbaa !2474
  store i32 0, ptr %i.bb, align 4, !tbaa !2474
  %i.be = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br label %.lr.ph.i.i58.prol.loopexit

.lr.ph.i.i58.prol.loopexit:                       ; preds = %.lr.ph.i.i58.prol, %bb.j
  %.020.i.i.unr = phi i64 [ %i.a, %bb.j ], [ %.06.i.i, %.lr.ph.i.i58.prol ]
  %.0819.i.i.unr = phi ptr [ %i.bb, %bb.j ], [ %i.bg, %.lr.ph.i.i58.prol ]
  %.01618.i.i.unr = phi ptr [ %i.o, %bb.j ], [ %i.bh, %.lr.ph.i.i58.prol ]
  %i.bi = icmp eq i64 %.06.i.i, 0
  br i1 %i.bi, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i58

.lr.ph.i.i58:                                     ; preds = %.lr.ph.i.i58.prol.loopexit, %.lr.ph.i.i58
  %.020.i.i = phi i64 [ %i.bo, %.lr.ph.i.i58 ], [ %.020.i.i.unr, %.lr.ph.i.i58.prol.loopexit ]
  %.0819.i.i = phi ptr [ %i.bs, %.lr.ph.i.i58 ], [ %.0819.i.i.unr, %.lr.ph.i.i58.prol.loopexit ] ; 4 uses
  %.01618.i.i = phi ptr [ %i.bt, %.lr.ph.i.i58 ], [ %.01618.i.i.unr, %.lr.ph.i.i58.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i) ]
  %i.bj = load i32, ptr %.0819.i.i, align 4, !tbaa !2474
  store i32 %i.bj, ptr %.01618.i.i, align 4, !tbaa !2474
  store i32 0, ptr %.0819.i.i, align 4, !tbaa !2474
  %i.bk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 4
  %i.bo = add i64 %.020.i.i, -2                   ; 2 uses
  %i.bp = load i32, ptr %i.bm, align 4, !tbaa !2474
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !2474
  store i32 0, ptr %i.bm, align 4, !tbaa !2474
  %i.bq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %.not.i.i59.1 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i59.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i58, !llvm.loop !6881

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i: ; preds = %.lr.ph.i.i58, %.lr.ph.i.i58.prol.loopexit
  %.not8.i.i = icmp eq ptr %1, %i.bb
  br i1 %.not8.i.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i.preheader

.lr.ph.i40.i.preheader:                           ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %4 = shl nuw nsw i64 %i.n, 2
  %5 = add i64 %4, %i.l
  %i.bu = mul i64 %.06.i.i, -4
  %reass.sub = sub i64 %i.bu, %i.ao
  %i.bv = add i64 %reass.sub, -8
  %i.bw = add i64 %5, %i.bv                       ; 2 uses
  %i.bx = lshr i64 %i.bw, 2
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bw, 172
  br i1 %min.iters.check, label %.lr.ph.i40.i.preheader171, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.preheader
  %i.bz = shl nuw nsw i64 %i.n, 2                 ; 3 uses
  %i.ca = getelementptr i8, ptr %i.k, i64 %i.bz
  %scevgep = getelementptr i8, ptr %i.ca, i64 -4
  %i.cb = add i64 %i.bz, %i.l
  %i.cc = mul i64 %.06.i.i, -4                    ; 2 uses
  %reass.sub164 = sub i64 %i.cc, %i.ao
  %i.cd = add i64 %reass.sub164, -8
  %i.ce = add i64 %i.cb, %i.cd                    ; 2 uses
  %i.cf = lshr i64 %i.ce, 2
  %i.cg = mul i64 %i.cf, -4
  %scevgep136 = getelementptr i8, ptr %scevgep, i64 %i.cg
  %scevgep137 = getelementptr i8, ptr %i.k, i64 %i.bz
  %i.ch = add i64 %i.cc, -8
  %i.ci = and i64 %i.ce, -4
  %i.cj = sub i64 %i.ch, %i.ci
  %scevgep138 = getelementptr i8, ptr %scevgep137, i64 %i.cj
  %bound0 = icmp ult ptr %scevgep136, %i.bb
  %bound1 = icmp ult ptr %scevgep138, %i.o
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.preheader171, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.by, 9223372036854775800     ; 3 uses
  %i.ck = mul i64 %n.vec, -4                      ; 2 uses
  %i.cl = getelementptr i8, ptr %i.o, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.bb, i64 %i.ck
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cn = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.cn ; 2 uses
  %next.gep139 = getelementptr i8, ptr %i.bb, i64 %i.cn ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %next.gep139, i64 -16 ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %next.gep139, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.co, align 4, !tbaa !2474, !alias.scope !7526
  %wide.load140 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !2474, !alias.scope !7526
  %i.cq = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cr = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cq, align 4, !tbaa !2474, !alias.scope !7529, !noalias !7526
  store <4 x i32> %wide.load140, ptr %i.cr, align 4, !tbaa !2474, !alias.scope !7529, !noalias !7526
  store <4 x i32> zeroinitializer, ptr %i.co, align 4, !tbaa !2474, !alias.scope !7526
  store <4 x i32> zeroinitializer, ptr %i.cp, align 4, !tbaa !2474, !alias.scope !7526
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !7531

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i.preheader171

.lr.ph.i40.i.preheader171:                        ; preds = %vector.memcheck, %.lr.ph.i40.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i40.i.preheader ], [ %i.cl, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.bb, %vector.memcheck ], [ %i.bb, %.lr.ph.i40.i.preheader ], [ %i.cm, %middle.block ]
  br label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %.lr.ph.i40.i.preheader171, %.lr.ph.i40.i
  %.010.i.i = phi ptr [ %i.cu, %.lr.ph.i40.i ], [ %.010.i.i.ph, %.lr.ph.i40.i.preheader171 ]
  %.079.i.i = phi ptr [ %i.ct, %.lr.ph.i40.i ], [ %.079.i.i.ph, %.lr.ph.i40.i.preheader171 ]
  %i.ct = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 4 uses
  %i.cu = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !2474
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !2474
  store i32 0, ptr %i.ct, align 4, !tbaa !2474
  %.not.i41.i = icmp eq ptr %1, %i.ct
  br i1 %.not.i41.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i, !llvm.loop !7532

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i40.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %xtraiter181 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod182.not = icmp eq i64 %xtraiter181, 0
  br i1 %lcmp.mod182.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.09.i.i.i.prol = phi i64 [ %i.cw, %.lr.ph.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.preheader ]
  %.048.i.i.i.prol = phi ptr [ %i.da, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.prol = phi ptr [ %i.cz, %.lr.ph.i.i.i.prol ], [ %2, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter183 = phi i64 [ %prol.iter183.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.cw = add i64 %.09.i.i.i.prol, -1             ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.prol, i64 16
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !18
  store i32 %i.cy, ptr %.048.i.i.i.prol, align 4, !tbaa !2474
  %i.cz = load ptr, ptr %.sroa.0.07.i.i.i.prol, align 8, !tbaa !2636 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.048.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter183.next = add i64 %prol.iter183, 1   ; 2 uses
  %prol.iter183.cmp.not = icmp eq i64 %prol.iter183.next, %xtraiter181
  br i1 %prol.iter183.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !7533

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.unr = phi i64 [ %i.a, %.lr.ph.i.i.i.preheader ], [ %i.cw, %.lr.ph.i.i.i.prol ]
  %.048.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.preheader ], [ %i.da, %.lr.ph.i.i.i.prol ]
  %.sroa.0.07.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.preheader ], [ %i.cz, %.lr.ph.i.i.i.prol ]
  %i.db = icmp ult i64 %.06.i.i, 3
  br i1 %i.db, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.do, %.lr.ph.i.i.i ], [ %.09.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.048.i.i.i = phi ptr [ %i.ds, %.lr.ph.i.i.i ], [ %.048.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 16
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !18
  store i32 %i.dd, ptr %.048.i.i.i, align 4, !tbaa !2474
  %i.de = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !2636 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !18
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !2474
  %i.di = load ptr, ptr %i.de, align 8, !tbaa !2636 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !18
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !2474
  %i.dm = load ptr, ptr %i.di, align 8, !tbaa !2636 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 12
  %i.do = add i64 %.09.i.i.i, -4                  ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !18
  store i32 %i.dq, ptr %i.dn, align 4, !tbaa !2474
  %i.dr = load ptr, ptr %i.dm, align 8, !tbaa !2636
  %i.ds = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i, !llvm.loop !4731

.lr.ph.i48.preheader.i:                           ; preds = %bb.i
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.a
  br label %.lr.ph.i48.i

.lr.ph.i48.i:                                     ; preds = %.lr.ph.i48.i, %.lr.ph.i48.preheader.i
  %.018.i.i = phi ptr [ %i.dx, %.lr.ph.i48.i ], [ %1, %.lr.ph.i48.preheader.i ] ; 3 uses
  %.01517.i.i = phi ptr [ %i.dy, %.lr.ph.i48.i ], [ %i.dt, %.lr.ph.i48.preheader.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.du = load i32, ptr %.018.i.i, align 4, !tbaa !2474
  store i32 %i.du, ptr %.01517.i.i, align 4, !tbaa !2474
  store i32 0, ptr %.018.i.i, align 4, !tbaa !2474
  %i.dv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.dw = add i32 %i.dv, 1
  store i32 %i.dw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.dx = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4
  %.not.i49.i = icmp eq ptr %i.dx, %i.o
  br i1 %.not.i49.i, label %.lr.ph.i.i52.i.preheader, label %.lr.ph.i48.i, !llvm.loop !6892

.lr.ph.i.i52.i.preheader:                         ; preds = %.lr.ph.i48.i
  %xtraiter = and i64 %i.az, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i52.i.prol.loopexit, label %.lr.ph.i.i52.i.prol

.lr.ph.i.i52.i.prol:                              ; preds = %.lr.ph.i.i52.i.preheader, %.lr.ph.i.i52.i.prol
  %.09.i.i53.i.prol = phi i64 [ %i.dz, %.lr.ph.i.i52.i.prol ], [ %i.az, %.lr.ph.i.i52.i.preheader ]
  %.048.i.i54.i.prol = phi ptr [ %i.ed, %.lr.ph.i.i52.i.prol ], [ %1, %.lr.ph.i.i52.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i55.i.prol = phi ptr [ %i.ec, %.lr.ph.i.i52.i.prol ], [ %2, %.lr.ph.i.i52.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i52.i.prol ], [ 0, %.lr.ph.i.i52.i.preheader ]
  %i.dz = add i64 %.09.i.i53.i.prol, -1           ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.prol, i64 16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !18
  store i32 %i.eb, ptr %.048.i.i54.i.prol, align 4, !tbaa !2474
  %i.ec = load ptr, ptr %.sroa.0.07.i.i55.i.prol, align 8, !tbaa !2636 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i52.i.prol.loopexit, label %.lr.ph.i.i52.i.prol, !llvm.loop !7534

.lr.ph.i.i52.i.prol.loopexit:                     ; preds = %.lr.ph.i.i52.i.prol, %.lr.ph.i.i52.i.preheader
  %.lcssa173.unr = phi ptr [ poison, %.lr.ph.i.i52.i.preheader ], [ %i.ec, %.lr.ph.i.i52.i.prol ]
  %.09.i.i53.i.unr = phi i64 [ %i.az, %.lr.ph.i.i52.i.preheader ], [ %i.dz, %.lr.ph.i.i52.i.prol ]
  %.048.i.i54.i.unr = phi ptr [ %1, %.lr.ph.i.i52.i.preheader ], [ %i.ed, %.lr.ph.i.i52.i.prol ]
  %.sroa.0.07.i.i55.i.unr = phi ptr [ %2, %.lr.ph.i.i52.i.preheader ], [ %i.ec, %.lr.ph.i.i52.i.prol ]
  %i.ee = icmp ult i64 %i.az, 4
  br i1 %i.ee, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i, label %.lr.ph.i.i52.i

.lr.ph.i.i52.i:                                   ; preds = %.lr.ph.i.i52.i.prol.loopexit, %.lr.ph.i.i52.i
  %.09.i.i53.i = phi i64 [ %i.er, %.lr.ph.i.i52.i ], [ %.09.i.i53.i.unr, %.lr.ph.i.i52.i.prol.loopexit ]
  %.048.i.i54.i = phi ptr [ %i.ev, %.lr.ph.i.i52.i ], [ %.048.i.i54.i.unr, %.lr.ph.i.i52.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i55.i = phi ptr [ %i.eu, %.lr.ph.i.i52.i ], [ %.sroa.0.07.i.i55.i.unr, %.lr.ph.i.i52.i.prol.loopexit ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i, i64 16
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !18
  store i32 %i.eg, ptr %.048.i.i54.i, align 4, !tbaa !2474
  %i.eh = load ptr, ptr %.sroa.0.07.i.i55.i, align 8, !tbaa !2636 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !18
  store i32 %i.ek, ptr %i.ei, align 4, !tbaa !2474
  %i.el = load ptr, ptr %i.eh, align 8, !tbaa !2636 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !18
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !2474
  %i.ep = load ptr, ptr %i.el, align 8, !tbaa !2636 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 12
  %i.er = add i64 %.09.i.i53.i, -4                ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.et = load i32, ptr %i.es, align 4, !tbaa !18
  store i32 %i.et, ptr %i.eq, align 4, !tbaa !2474
  %i.eu = load ptr, ptr %i.ep, align 8, !tbaa !2636 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 16
  %.not.i.i56.i.3 = icmp eq i64 %i.er, 0
  br i1 %.not.i.i56.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i, label %.lr.ph.i.i52.i, !llvm.loop !4731

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i: ; preds = %.lr.ph.i.i52.i, %.lr.ph.i.i52.i.prol.loopexit
  %.lcssa173 = phi ptr [ %.lcssa173.unr, %.lr.ph.i.i52.i.prol.loopexit ], [ %i.eu, %.lr.ph.i.i52.i ] ; 3 uses
  %i.ew = sub i64 %i.a, %i.az                     ; 3 uses
  %xtraiter175 = and i64 %i.ew, 1
  %lcmp.mod176.not = icmp eq i64 %xtraiter175, 0
  br i1 %lcmp.mod176.not, label %.lr.ph.i.i60.i.prol.loopexit, label %.lr.ph.i.i60.i.prol

.lr.ph.i.i60.i.prol:                              ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.lcssa173, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !18
  store i32 %i.ey, ptr %i.o, align 4, !tbaa !2474
  %i.ez = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.fa = add i32 %i.ez, 1
  store i32 %i.fa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.fb = load ptr, ptr %.lcssa173, align 8, !tbaa !2636
  %i.fc = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.fd = add nsw i64 %i.ew, -1
  br label %.lr.ph.i.i60.i.prol.loopexit

.lr.ph.i.i60.i.prol.loopexit:                     ; preds = %.lr.ph.i.i60.i.prol, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i
  %.018.i.i.i.unr = phi i64 [ %i.ew, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i ], [ %i.fd, %.lr.ph.i.i60.i.prol ]
  %.01417.i.i.i.unr = phi ptr [ %i.o, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i ], [ %i.fc, %.lr.ph.i.i60.i.prol ]
  %.sroa.0.016.i.i.i.unr = phi ptr [ %.lcssa173, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i ], [ %i.fb, %.lr.ph.i.i60.i.prol ]
  %i.fe = icmp eq i64 %.06.i.i, %i.az
  br i1 %i.fe, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i60.i

.lr.ph.i.i60.i:                                   ; preds = %.lr.ph.i.i60.i.prol.loopexit, %.lr.ph.i.i60.i
  %.018.i.i.i = phi i64 [ %i.fq, %.lr.ph.i.i60.i ], [ %.018.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ]
  %.01417.i.i.i = phi ptr [ %i.fp, %.lr.ph.i.i60.i ], [ %.01417.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i = phi ptr [ %i.fo, %.lr.ph.i.i60.i ], [ %.sroa.0.016.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i) ]
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !18
  store i32 %i.fg, ptr %.01417.i.i.i, align 4, !tbaa !2474
  %i.fh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18 ; 2 uses
  %i.fi = add i32 %i.fh, 1
  store i32 %i.fi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.fj = load ptr, ptr %.sroa.0.016.i.i.i, align 8, !tbaa !2636 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !18
  store i32 %i.fm, ptr %i.fk, align 4, !tbaa !2474
  %i.fn = add i32 %i.fh, 2
  store i32 %i.fn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.fo = load ptr, ptr %i.fj, align 8, !tbaa !2636
  %i.fp = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 8
  %i.fq = add i64 %.018.i.i.i, -2                 ; 2 uses
  %.not.i.i61.i.1 = icmp eq i64 %i.fq, 0
  br i1 %.not.i.i61.i.1, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i60.i, !llvm.loop !7535

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit: ; preds = %.lr.ph.i.i60.i.prol.loopexit, %.lr.ph.i.i60.i, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.fr = add i64 %i.n, %i.a
  store i64 %i.fr, ptr %i.m, align 8, !tbaa !5787
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %.not46.not = icmp ugt i64 %i.ab, %.06.i.i
  br i1 %.not46.not, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %.not.i60.not = icmp ugt i64 %i.ar, %.06.i.i
  %i.fs = xor i64 %.06.i.i, -1                    ; 2 uses
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.fs ; 3 uses
  br i1 %.not.i60.not, label %.lr.ph.i.i62.preheader, label %.lr.ph.i48.i78

.lr.ph.i.i62.preheader:                           ; preds = %bb.l
  %i.fu = icmp eq i64 %.06.i.i, 0
  br i1 %i.fu, label %.lr.ph.i.i62.epil.preheader, label %.lr.ph.i.i62.preheader.new

.lr.ph.i.i62.preheader.new:                       ; preds = %.lr.ph.i.i62.preheader
  %unroll_iter = and i64 %i.a, -2
  br label %.lr.ph.i.i62

.lr.ph.i.i62:                                     ; preds = %.lr.ph.i.i62, %.lr.ph.i.i62.preheader.new
  %indvar = phi i64 [ 0, %.lr.ph.i.i62.preheader.new ], [ %indvar.next.1, %.lr.ph.i.i62 ] ; 2 uses
  %.0919.i.i = phi ptr [ %i.ac, %.lr.ph.i.i62.preheader.new ], [ %i.gd, %.lr.ph.i.i62 ] ; 4 uses
  %.01618.i.i64 = phi ptr [ %i.ft, %.lr.ph.i.i62.preheader.new ], [ %i.ge, %.lr.ph.i.i62 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i62.preheader.new ], [ %niter.next.1, %.lr.ph.i.i62 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i64) ]
  %i.fv = load i32, ptr %.0919.i.i, align 4, !tbaa !2474
  store i32 %i.fv, ptr %.01618.i.i64, align 4, !tbaa !2474
  store i32 0, ptr %.0919.i.i, align 4, !tbaa !2474
  %i.fw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.fx = add i32 %i.fw, 1
  store i32 %i.fx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.fy = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 4 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.01618.i.i64, i64 4
  %i.ga = load i32, ptr %i.fy, align 4, !tbaa !2474
  store i32 %i.ga, ptr %i.fz, align 4, !tbaa !2474
  store i32 0, ptr %i.fy, align 4, !tbaa !2474
  %i.gb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.gc = add i32 %i.gb, 1
  store i32 %i.gc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.gd = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 8 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.01618.i.i64, i64 8 ; 2 uses
  %indvar.next.1 = add i64 %indvar, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, label %.lr.ph.i.i62, !llvm.loop !6900

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i62
  %indvar.next = or disjoint i64 %indvar, 1
  %i.gf = and i64 %.06.i.i, 1
  %lcmp.mod191.not.not = icmp eq i64 %i.gf, 0
  br i1 %lcmp.mod191.not.not, label %.lr.ph.i.i62.epil.preheader, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i

.lr.ph.i.i62.epil.preheader:                      ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, %.lr.ph.i.i62.preheader
  %indvar.epil.init = phi i64 [ 0, %.lr.ph.i.i62.preheader ], [ %indvar.next.1, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ]
  %.0919.i.i.epil.init = phi ptr [ %i.ac, %.lr.ph.i.i62.preheader ], [ %i.gd, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ] ; 3 uses
  %.01618.i.i64.epil.init = phi ptr [ %i.ft, %.lr.ph.i.i62.preheader ], [ %i.ge, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod194 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod194)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i64.epil.init) ]
  %i.gg = load i32, ptr %.0919.i.i.epil.init, align 4, !tbaa !2474
  store i32 %i.gg, ptr %.01618.i.i64.epil.init, align 4, !tbaa !2474
  store i32 0, ptr %.0919.i.i.epil.init, align 4, !tbaa !2474
  %i.gh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.gi = add i32 %i.gh, 1
  store i32 %i.gi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.gj = getelementptr inbounds nuw i8, ptr %.0919.i.i.epil.init, i64 4
  br label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, %.lr.ph.i.i62.epil.preheader
  %indvar.lcssa = phi i64 [ %indvar.next, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ], [ %indvar.epil.init, %.lr.ph.i.i62.epil.preheader ]
  %.lcssa167 = phi ptr [ %i.gd, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ], [ %i.gj, %.lr.ph.i.i62.epil.preheader ] ; 6 uses
  %.not8.i.i66 = icmp eq ptr %.lcssa167, %1
  br i1 %.not8.i.i66, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67.preheader

.lr.ph.i40.i67.preheader:                         ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %.neg = mul i64 %i.ab, -4
  %.neg165 = sub i64 %.neg, %i.l
  %i.gk = add i64 %i.ao, -8
  %i.gl = shl i64 %.06.i.i, 2
  %6 = sub i64 %i.gk, %i.gl
  %7 = add i64 %.neg165, %6                       ; 2 uses
  %i.gm = lshr i64 %7, 2
  %i.gn = add nuw nsw i64 %i.gm, 1                ; 2 uses
  %min.iters.check150 = icmp ult i64 %7, 172
  br i1 %min.iters.check150, label %.lr.ph.i40.i67.preheader166, label %vector.memcheck142

vector.memcheck142:                               ; preds = %.lr.ph.i40.i67.preheader
  %i.go = shl nuw nsw i64 %i.ab, 2                ; 3 uses
  %i.gp = getelementptr i8, ptr %i.k, i64 %i.go
  %scevgep143 = getelementptr i8, ptr %i.gp, i64 4
  %i.gq = add i64 %i.go, %i.l
  %i.gr = add i64 %i.ao, -8
  %i.gs = shl i64 %.06.i.i, 2
  %i.gt = add i64 %i.gs, %i.gq
  %i.gu = sub i64 %i.gr, %i.gt
  %i.gv = and i64 %i.gu, -4                       ; 2 uses
  %scevgep144 = getelementptr i8, ptr %scevgep143, i64 %i.gv
  %i.gw = shl i64 %indvar.lcssa, 2
  %i.gx = getelementptr i8, ptr %i.k, i64 %i.gw
  %i.gy = getelementptr i8, ptr %i.gx, i64 %i.go
  %i.gz = getelementptr i8, ptr %i.gy, i64 8
  %scevgep145 = getelementptr i8, ptr %i.gz, i64 %i.gv
  %bound0146 = icmp ult ptr %i.ac, %scevgep145
  %bound1147 = icmp ult ptr %.lcssa167, %scevgep144
  %found.conflict148 = and i1 %bound0146, %bound1147
  br i1 %found.conflict148, label %.lr.ph.i40.i67.preheader166, label %vector.ph151

vector.ph151:                                     ; preds = %vector.memcheck142
  %n.vec152 = and i64 %i.gn, 9223372036854775800  ; 3 uses
  %i.ha = shl i64 %n.vec152, 2                    ; 2 uses
  %i.hb = getelementptr i8, ptr %i.ac, i64 %i.ha  ; 2 uses
  %i.hc = getelementptr i8, ptr %.lcssa167, i64 %i.ha
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next159, %vector.body153 ] ; 2 uses
  %i.hd = shl i64 %index154, 2                    ; 2 uses
  %next.gep155 = getelementptr i8, ptr %i.ac, i64 %i.hd ; 2 uses
  %next.gep156 = getelementptr i8, ptr %.lcssa167, i64 %i.hd ; 3 uses
  %i.he = getelementptr i8, ptr %next.gep156, i64 16 ; 2 uses
  %wide.load157 = load <4 x i32>, ptr %next.gep156, align 4, !tbaa !2474, !alias.scope !7536
  %wide.load158 = load <4 x i32>, ptr %i.he, align 4, !tbaa !2474, !alias.scope !7536
  %i.hf = getelementptr i8, ptr %next.gep155, i64 16
  store <4 x i32> %wide.load157, ptr %next.gep155, align 4, !tbaa !2474, !alias.scope !7539, !noalias !7536
  store <4 x i32> %wide.load158, ptr %i.hf, align 4, !tbaa !2474, !alias.scope !7539, !noalias !7536
  store <4 x i32> zeroinitializer, ptr %next.gep156, align 4, !tbaa !2474, !alias.scope !7536
  store <4 x i32> zeroinitializer, ptr %i.he, align 4, !tbaa !2474, !alias.scope !7536
  %index.next159 = add nuw i64 %index154, 8       ; 2 uses
  %i.hg = icmp eq i64 %index.next159, %n.vec152
  br i1 %i.hg, label %middle.block160, label %vector.body153, !llvm.loop !7541

middle.block160:                                  ; preds = %vector.body153
  %cmp.n161 = icmp eq i64 %i.gn, %n.vec152
  br i1 %cmp.n161, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67.preheader166

.lr.ph.i40.i67.preheader166:                      ; preds = %vector.memcheck142, %.lr.ph.i40.i67.preheader, %middle.block160
  %.010.i.i68.ph = phi ptr [ %i.ac, %vector.memcheck142 ], [ %i.ac, %.lr.ph.i40.i67.preheader ], [ %i.hb, %middle.block160 ]
  %.079.i.i69.ph = phi ptr [ %.lcssa167, %vector.memcheck142 ], [ %.lcssa167, %.lr.ph.i40.i67.preheader ], [ %i.hc, %middle.block160 ]
  br label %.lr.ph.i40.i67

.lr.ph.i40.i67:                                   ; preds = %.lr.ph.i40.i67.preheader166, %.lr.ph.i40.i67
  %.010.i.i68 = phi ptr [ %i.hj, %.lr.ph.i40.i67 ], [ %.010.i.i68.ph, %.lr.ph.i40.i67.preheader166 ] ; 2 uses
  %.079.i.i69 = phi ptr [ %i.hi, %.lr.ph.i40.i67 ], [ %.079.i.i69.ph, %.lr.ph.i40.i67.preheader166 ] ; 3 uses
  %i.hh = load i32, ptr %.079.i.i69, align 4, !tbaa !2474
  store i32 %i.hh, ptr %.010.i.i68, align 4, !tbaa !2474
  store i32 0, ptr %.079.i.i69, align 4, !tbaa !2474
  %i.hi = getelementptr inbounds nuw i8, ptr %.079.i.i69, i64 4 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.010.i.i68, i64 4 ; 2 uses
  %.not.i41.i70 = icmp eq ptr %i.hi, %1
  br i1 %.not.i41.i70, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67, !llvm.loop !7542

.lr.ph.i.i.i72.preheader:                         ; preds = %.lr.ph.i40.i67, %middle.block160, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %.048.i.i.i74.ph = phi ptr [ %i.ac, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i ], [ %i.hb, %middle.block160 ], [ %i.hj, %.lr.ph.i40.i67 ] ; 2 uses
  %xtraiter195 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod196.not = icmp eq i64 %xtraiter195, 0
  br i1 %lcmp.mod196.not, label %.lr.ph.i.i.i72.prol.loopexit, label %.lr.ph.i.i.i72.prol

.lr.ph.i.i.i72.prol:                              ; preds = %.lr.ph.i.i.i72.preheader, %.lr.ph.i.i.i72.prol
  %.09.i.i.i73.prol = phi i64 [ %i.hk, %.lr.ph.i.i.i72.prol ], [ %i.a, %.lr.ph.i.i.i72.preheader ]
  %.048.i.i.i74.prol = phi ptr [ %i.ho, %.lr.ph.i.i.i72.prol ], [ %.048.i.i.i74.ph, %.lr.ph.i.i.i72.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i75.prol = phi ptr [ %i.hn, %.lr.ph.i.i.i72.prol ], [ %2, %.lr.ph.i.i.i72.preheader ] ; 2 uses
  %prol.iter197 = phi i64 [ %prol.iter197.next, %.lr.ph.i.i.i72.prol ], [ 0, %.lr.ph.i.i.i72.preheader ]
  %i.hk = add i64 %.09.i.i.i73.prol, -1           ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i75.prol, i64 16
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !18
  store i32 %i.hm, ptr %.048.i.i.i74.prol, align 4, !tbaa !2474
  %i.hn = load ptr, ptr %.sroa.0.07.i.i.i75.prol, align 8, !tbaa !2636 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.048.i.i.i74.prol, i64 4 ; 2 uses
  %prol.iter197.next = add i64 %prol.iter197, 1   ; 2 uses
  %prol.iter197.cmp.not = icmp eq i64 %prol.iter197.next, %xtraiter195
  br i1 %prol.iter197.cmp.not, label %.lr.ph.i.i.i72.prol.loopexit, label %.lr.ph.i.i.i72.prol, !llvm.loop !7543

.lr.ph.i.i.i72.prol.loopexit:                     ; preds = %.lr.ph.i.i.i72.prol, %.lr.ph.i.i.i72.preheader
  %.09.i.i.i73.unr = phi i64 [ %i.a, %.lr.ph.i.i.i72.preheader ], [ %i.hk, %.lr.ph.i.i.i72.prol ]
  %.048.i.i.i74.unr = phi ptr [ %.048.i.i.i74.ph, %.lr.ph.i.i.i72.preheader ], [ %i.ho, %.lr.ph.i.i.i72.prol ]
  %.sroa.0.07.i.i.i75.unr = phi ptr [ %2, %.lr.ph.i.i.i72.preheader ], [ %i.hn, %.lr.ph.i.i.i72.prol ]
  %i.hp = icmp ult i64 %.06.i.i, 3
  br i1 %i.hp, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i72

.lr.ph.i.i.i72:                                   ; preds = %.lr.ph.i.i.i72.prol.loopexit, %.lr.ph.i.i.i72
  %.09.i.i.i73 = phi i64 [ %i.ic, %.lr.ph.i.i.i72 ], [ %.09.i.i.i73.unr, %.lr.ph.i.i.i72.prol.loopexit ]
  %.048.i.i.i74 = phi ptr [ %i.ig, %.lr.ph.i.i.i72 ], [ %.048.i.i.i74.unr, %.lr.ph.i.i.i72.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i75 = phi ptr [ %i.if, %.lr.ph.i.i.i72 ], [ %.sroa.0.07.i.i.i75.unr, %.lr.ph.i.i.i72.prol.loopexit ] ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i75, i64 16
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !18
  store i32 %i.hr, ptr %.048.i.i.i74, align 4, !tbaa !2474
  %i.hs = load ptr, ptr %.sroa.0.07.i.i.i75, align 8, !tbaa !2636 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 4
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !18
  store i32 %i.hv, ptr %i.ht, align 4, !tbaa !2474
  %i.hw = load ptr, ptr %i.hs, align 8, !tbaa !2636 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !18
  store i32 %i.hz, ptr %i.hx, align 4, !tbaa !2474
  %i.ia = load ptr, ptr %i.hw, align 8, !tbaa !2636 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 12
  %i.ic = add i64 %.09.i.i.i73, -4                ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !18
  store i32 %i.ie, ptr %i.ib, align 4, !tbaa !2474
  %i.if = load ptr, ptr %i.ia, align 8, !tbaa !2636
  %i.ig = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 16
  %.not.i.i.i76.3 = icmp eq i64 %i.ic, 0
  br i1 %.not.i.i.i76.3, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i72, !llvm.loop !4731

.lr.ph.i48.i78:                                   ; preds = %bb.l, %.lr.ph.i48.i78
  %.018.i.i79 = phi ptr [ %i.ik, %.lr.ph.i48.i78 ], [ %i.ac, %bb.l ] ; 3 uses
  %.01517.i.i80 = phi ptr [ %i.il, %.lr.ph.i48.i78 ], [ %i.ft, %bb.l ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i80) ]
  %i.ih = load i32, ptr %.018.i.i79, align 4, !tbaa !2474
  store i32 %i.ih, ptr %.01517.i.i80, align 4, !tbaa !2474
  store i32 0, ptr %.018.i.i79, align 4, !tbaa !2474
  %i.ii = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.ij = add i32 %i.ii, 1
  store i32 %i.ij, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.ik = getelementptr inbounds nuw i8, ptr %.018.i.i79, i64 4 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.01517.i.i80, i64 4 ; 3 uses
  %.not.i49.i81 = icmp eq ptr %i.ik, %1
  br i1 %.not.i49.i81, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, label %.lr.ph.i48.i78, !llvm.loop !6892

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i: ; preds = %.lr.ph.i48.i78
  %i.im = sub i64 %i.a, %i.ar                     ; 3 uses
  %xtraiter184 = and i64 %i.im, 1
  %lcmp.mod185.not = icmp eq i64 %xtraiter184, 0
  br i1 %lcmp.mod185.not, label %.lr.ph.i.i51.i.prol.loopexit, label %.lr.ph.i.i51.i.prol

.lr.ph.i.i51.i.prol:                              ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %i.in = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.io = load i32, ptr %i.in, align 4, !tbaa !18
  store i32 %i.io, ptr %i.il, align 4, !tbaa !2474
  %i.ip = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.iq = add i32 %i.ip, 1
  store i32 %i.iq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.ir = load ptr, ptr %2, align 8, !tbaa !2636  ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.01517.i.i80, i64 8
  %i.it = add nsw i64 %i.im, -1
  br label %.lr.ph.i.i51.i.prol.loopexit

.lr.ph.i.i51.i.prol.loopexit:                     ; preds = %.lr.ph.i.i51.i.prol, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %.lcssa169.unr = phi ptr [ poison, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.ir, %.lr.ph.i.i51.i.prol ]
  %.018.i.i.i82.unr = phi i64 [ %i.im, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.it, %.lr.ph.i.i51.i.prol ]
  %.01417.i.i.i83.unr = phi ptr [ %i.il, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.is, %.lr.ph.i.i51.i.prol ]
  %.sroa.0.016.i.i.i84.unr = phi ptr [ %2, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.ir, %.lr.ph.i.i51.i.prol ]
  %i.iu = icmp eq i64 %.06.i.i, %i.ar
  br i1 %i.iu, label %.lr.ph.i.i56.i.preheader, label %.lr.ph.i.i51.i

.lr.ph.i.i51.i:                                   ; preds = %.lr.ph.i.i51.i.prol.loopexit, %.lr.ph.i.i51.i
  %.018.i.i.i82 = phi i64 [ %i.jg, %.lr.ph.i.i51.i ], [ %.018.i.i.i82.unr, %.lr.ph.i.i51.i.prol.loopexit ]
  %.01417.i.i.i83 = phi ptr [ %i.jf, %.lr.ph.i.i51.i ], [ %.01417.i.i.i83.unr, %.lr.ph.i.i51.i.prol.loopexit ] ; 3 uses
  %.sroa.0.016.i.i.i84 = phi ptr [ %i.je, %.lr.ph.i.i51.i ], [ %.sroa.0.016.i.i.i84.unr, %.lr.ph.i.i51.i.prol.loopexit ] ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i84, i64 16
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !18
  store i32 %i.iw, ptr %.01417.i.i.i83, align 4, !tbaa !2474
  %i.ix = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18 ; 2 uses
  %i.iy = add i32 %i.ix, 1
  store i32 %i.iy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.iz = load ptr, ptr %.sroa.0.016.i.i.i84, align 8, !tbaa !2636 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.01417.i.i.i83, i64 4
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !18
  store i32 %i.jc, ptr %i.ja, align 4, !tbaa !2474
  %i.jd = add i32 %i.ix, 2
  store i32 %i.jd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.je = load ptr, ptr %i.iz, align 8, !tbaa !2636 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.01417.i.i.i83, i64 8
  %i.jg = add i64 %.018.i.i.i82, -2               ; 2 uses
  %.not.i.i52.i.1 = icmp eq i64 %i.jg, 0
  br i1 %.not.i.i52.i.1, label %.lr.ph.i.i56.i.preheader, label %.lr.ph.i.i51.i, !llvm.loop !7535

.lr.ph.i.i56.i.preheader:                         ; preds = %.lr.ph.i.i51.i, %.lr.ph.i.i51.i.prol.loopexit
  %.lcssa169 = phi ptr [ %.lcssa169.unr, %.lr.ph.i.i51.i.prol.loopexit ], [ %i.je, %.lr.ph.i.i51.i ] ; 2 uses
  %xtraiter187 = and i64 %i.ar, 3                 ; 2 uses
  %lcmp.mod188.not = icmp eq i64 %xtraiter187, 0
  br i1 %lcmp.mod188.not, label %.lr.ph.i.i56.i.prol.loopexit, label %.lr.ph.i.i56.i.prol

.lr.ph.i.i56.i.prol:                              ; preds = %.lr.ph.i.i56.i.preheader, %.lr.ph.i.i56.i.prol
  %.09.i.i57.i.prol = phi i64 [ %i.jh, %.lr.ph.i.i56.i.prol ], [ %i.ar, %.lr.ph.i.i56.i.preheader ]
  %.048.i.i58.i.prol = phi ptr [ %i.jl, %.lr.ph.i.i56.i.prol ], [ %i.ac, %.lr.ph.i.i56.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i59.i.prol = phi ptr [ %i.jk, %.lr.ph.i.i56.i.prol ], [ %.lcssa169, %.lr.ph.i.i56.i.preheader ] ; 2 uses
  %prol.iter189 = phi i64 [ %prol.iter189.next, %.lr.ph.i.i56.i.prol ], [ 0, %.lr.ph.i.i56.i.preheader ]
  %i.jh = add i64 %.09.i.i57.i.prol, -1           ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i59.i.prol, i64 16
end_hunk_4
begin_hunk_5_@_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE21resize_back_slow_pathIJRKS3_EEEvmmDpOT_:bb.a
  br i1 %lcmp.mod.not, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS5_EEDpOT_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS5_EEDpOT_.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.07.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ai, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS5_EEDpOT_.exit.loopexit.unr-lcssa ]
  %lcmp.mod42 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod42)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.07.i.epil.init
  %i.ak = load i32, ptr %3, align 4, !tbaa !2523
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !2523
  %i.al = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS5_EEDpOT_.exit

_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS5_EEDpOT_.exit: ; preds = %.epil.preheader, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS5_EEDpOT_.exit.loopexit.unr-lcssa, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit
  %i.an = load ptr, ptr %0, align 8, !tbaa !5844  ; 4 uses
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !5843 ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.w ; 2 uses
  %.not16.i = icmp samesign eq i64 %i.ao, %i.w
  br i1 %.not16.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit, label %.lr.ph.i18.preheader

.lr.ph.i18.preheader:                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS5_EEDpOT_.exit
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i17, i64 %i.ao
  br label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %.lr.ph.i18.preheader, %.lr.ph.i18
  %.018.i = phi ptr [ %i.av, %.lr.ph.i18 ], [ %i.ap, %.lr.ph.i18.preheader ] ; 2 uses
  %.01517.i = phi ptr [ %i.aw, %.lr.ph.i18 ], [ %i.ar, %.lr.ph.i18.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.as = load i32, ptr %.018.i, align 4, !tbaa !2523
  store i32 %i.as, ptr %.01517.i, align 4, !tbaa !2523
  %i.at = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  %.not.i19 = icmp eq ptr %i.av, %i.aq
  br i1 %.not.i19, label %.lr.ph.i21, label %.lr.ph.i18, !llvm.loop !7786

.lr.ph.i21:                                       ; preds = %.lr.ph.i18, %.lr.ph.i21
  %.06.i = phi ptr [ %i.az, %.lr.ph.i21 ], [ %i.ap, %.lr.ph.i18 ] ; 2 uses
  store i32 -2147483648, ptr %.06.i, align 4, !tbaa !2523
  %i.ax = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.ay = add i32 %i.ax, -1
  store i32 %i.ay, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %.06.i, i64 4 ; 2 uses
  %.not.i22 = icmp eq ptr %i.az, %i.aq
  br i1 %.not.i22, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit, label %.lr.ph.i21, !llvm.loop !5846

_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit: ; preds = %.lr.ph.i21, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS5_EEDpOT_.exit
  %.not.i24 = icmp eq ptr %i.an, null
  br i1 %.not.i24, label %_ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef nonnull %i.an)
          to label %._ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEED2Ev.exit_crit_edge unwind label %bb.l

._ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEED2Ev.exit_crit_edge: ; preds = %bb.k
  %.pre = load i64, ptr %i.v, align 8, !tbaa !5841
  br label %_ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEED2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #31
  unreachable

_ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEED2Ev.exit: ; preds = %._ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEED2Ev.exit_crit_edge, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit
  %i.bc = phi i64 [ %.pre, %._ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEED2Ev.exit_crit_edge ], [ %i.w, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit ]
  store ptr %.0.i.i17, ptr %0, align 8, !tbaa !5844
  store i64 %i.o, ptr %i.d, align 8, !tbaa !5833
  %i.bd = add i64 %i.bc, %2
  store i64 %i.bd, ptr %i.v, align 8, !tbaa !5832
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE23allocate_and_copy_rangeIPKS3_EEvT_SA_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %.not = icmp eq ptr %2, %1
  br i1 %.not, label %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.split

.split:                                           ; preds = %bb.a
  %i.e = icmp ugt i64 %i.d, 2305843009213693951
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.split
  tail call void @_ZN5boost9container15throw_bad_allocEv() #28
  unreachable

bb.c:                                             ; preds = %.split
  %i.f = tail call noundef ptr @_ZN5boost9container17dlmalloc_memalignEmm(i64 noundef %i.c, i64 noundef 4) ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %bb.d, label %.lr.ph.i.preheader

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container15throw_bad_allocEv() #28
  unreachable

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !7807
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.g, align 8, !tbaa !7807
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.018.i = phi ptr [ %i.m, %.lr.ph.i ], [ %1, %.lr.ph.i.preheader ] ; 2 uses
  %.01517.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.f, %.lr.ph.i.preheader ] ; 2 uses
  %i.j = load i32, ptr %.018.i, align 4, !tbaa !2523
  store i32 %i.j, ptr %.01517.i, align 4, !tbaa !2523
  %i.k = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  %.not.i = icmp eq ptr %i.m, %2
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i, !llvm.loop !7728

_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.o = phi ptr [ null, %bb.a ], [ %i.f, %.lr.ph.i ]
  %i.p = load ptr, ptr %0, align 8, !tbaa !5844   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !5843 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !5841 ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.t
  %.not5.i = icmp samesign eq i64 %i.r, %i.t
  br i1 %.not5.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit, label %.lr.ph.i17.preheader

.lr.ph.i17.preheader:                             ; preds = %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.r
  br label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %.lr.ph.i17.preheader, %.lr.ph.i17
  %.06.i = phi ptr [ %i.y, %.lr.ph.i17 ], [ %i.v, %.lr.ph.i17.preheader ] ; 2 uses
  store i32 -2147483648, ptr %.06.i, align 4, !tbaa !2523
  %i.w = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.x = add i32 %i.w, -1
  store i32 %i.x, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i, i64 4 ; 2 uses
  %.not.i18 = icmp eq ptr %i.y, %i.u
  br i1 %.not.i18, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit, label %.lr.ph.i17, !llvm.loop !5846

_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit: ; preds = %.lr.ph.i17, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit
  %.not.i19 = icmp eq ptr %i.p, null
  br i1 %.not.i19, label %_ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef nonnull %i.p)
          to label %_ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #31
  unreachable

_ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEED2Ev.exit: ; preds = %bb.e, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.d, ptr %i.ab, align 8, !tbaa !5833
  store ptr %i.o, ptr %0, align 8, !tbaa !5844
  store i64 0, ptr %i.q, align 8, !tbaa !5843
  store i64 %i.d, ptr %i.s, align 8, !tbaa !5832
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE12insert_rangeISt14_List_iteratorIiEEEPS3_PKS3_T_SD_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i.i = icmp eq ptr %2, %3
  br i1 %.not4.i.i, label %bb.b, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.a, %.lr.ph.i.i ], [ 0, %bb.a ] ; 20 uses
  %.sroa.02.05.i.i = phi ptr [ %i.b, %.lr.ph.i.i ], [ %2, %bb.a ]
  %i.a = add nuw i64 %.06.i.i, 1                  ; 20 uses
  %i.b = load ptr, ptr %.sroa.02.05.i.i, align 8, !tbaa !2636 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %3
  br i1 %.not.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit, label %.lr.ph.i.i, !llvm.loop !2685

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !5844
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !5843
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  br label %bb.m

_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit: ; preds = %.lr.ph.i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !5844   ; 5 uses
  %4 = ptrtoaddr ptr %i.k to i64                  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !5841 ; 7 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.m ; 15 uses
  %i.o = icmp eq ptr %1, %i.n
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !7704
  %i.r = sub i64 %i.q, %i.m
  %.not49.not = icmp ugt i64 %i.r, %.06.i.i
  br i1 %.not49.not, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.015.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.n, %bb.c ] ; 3 uses
  %.sroa.010.014.i = phi ptr [ %i.w, %.lr.ph.i ], [ %2, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i) ]
  %i.t = load i32, ptr %i.s, align 4, !tbaa !18
  store i32 %i.t, ptr %.015.i, align 4, !tbaa !2523
  %i.u = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.w = load ptr, ptr %.sroa.010.014.i, align 8, !tbaa !2636 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %.not.i = icmp eq ptr %i.w, %3
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i, !llvm.loop !8102

_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit: ; preds = %.lr.ph.i
  %i.y = add i64 %i.m, %i.a
  store i64 %i.y, ptr %i.l, align 8, !tbaa !5832
  br label %bb.m

bb.d:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !5843 ; 7 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.aa ; 14 uses
  %i.ac = icmp eq ptr %1, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not48.not = icmp ugt i64 %i.aa, %.06.i.i
  br i1 %.not48.not, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ad = xor i64 %.06.i.i, -1
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ad
  br label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.f, %.lr.ph.i51
  %.015.i52 = phi ptr [ %i.ak, %.lr.ph.i51 ], [ %i.ae, %bb.f ] ; 3 uses
  %.sroa.010.014.i53 = phi ptr [ %i.aj, %.lr.ph.i51 ], [ %2, %bb.f ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i53, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i52) ]
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !18
  store i32 %i.ag, ptr %.015.i52, align 4, !tbaa !2523
  %i.ah = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.aj = load ptr, ptr %.sroa.010.014.i53, align 8, !tbaa !2636 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.015.i52, i64 4
  %.not.i54 = icmp eq ptr %i.aj, %3
  br i1 %.not.i54, label %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit56, label %.lr.ph.i51, !llvm.loop !8102

_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit56: ; preds = %.lr.ph.i51
  %i.al = sub nuw i64 %i.aa, %i.a                 ; 2 uses
  store i64 %i.al, ptr %i.z, align 8, !tbaa !5831
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.al
  br label %bb.m

bb.g:                                             ; preds = %bb.d
  %i.an = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.ao = ptrtoint ptr %i.ab to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2                 ; 8 uses
  %i.ar = sub i64 %i.m, %i.aa
  %i.as = lshr i64 %i.ar, 1
  %.not = icmp ult i64 %i.aq, %i.as
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load i64, ptr %i.at, align 8, !tbaa !7704
  %i.av = sub i64 %i.au, %i.m
  %.not47.not = icmp ugt i64 %i.av, %.06.i.i
  br i1 %.not47.not, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.aw = ptrtoint ptr %i.n to i64
  %i.ax = sub i64 %i.aw, %i.an
  %i.ay = ashr exact i64 %i.ax, 2                 ; 7 uses
  %.not.i57.not = icmp ugt i64 %i.ay, %.06.i.i
  br i1 %.not.i57.not, label %bb.j, label %.lr.ph.i48.preheader.i

bb.j:                                             ; preds = %bb.i
  %i.az = xor i64 %.06.i.i, -1
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.az ; 7 uses
  %xtraiter169 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod170.not = icmp eq i64 %xtraiter169, 0
  br i1 %lcmp.mod170.not, label %.lr.ph.i.i58.prol.loopexit, label %.lr.ph.i.i58.prol

.lr.ph.i.i58.prol:                                ; preds = %bb.j, %.lr.ph.i.i58.prol
  %.020.i.i.prol = phi i64 [ %i.bb, %.lr.ph.i.i58.prol ], [ %i.a, %bb.j ]
  %.0819.i.i.prol = phi ptr [ %i.bf, %.lr.ph.i.i58.prol ], [ %i.ba, %bb.j ] ; 2 uses
  %.01618.i.i.prol = phi ptr [ %i.bg, %.lr.ph.i.i58.prol ], [ %i.n, %bb.j ] ; 3 uses
  %prol.iter171 = phi i64 [ %prol.iter171.next, %.lr.ph.i.i58.prol ], [ 0, %bb.j ]
  %i.bb = add i64 %.020.i.i.prol, -1              ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.prol) ]
  %i.bc = load i32, ptr %.0819.i.i.prol, align 4, !tbaa !2523
  store i32 %i.bc, ptr %.01618.i.i.prol, align 4, !tbaa !2523
  %i.bd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %.0819.i.i.prol, i64 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.01618.i.i.prol, i64 4 ; 2 uses
  %prol.iter171.next = add i64 %prol.iter171, 1   ; 2 uses
  %prol.iter171.cmp.not = icmp eq i64 %prol.iter171.next, %xtraiter169
  br i1 %prol.iter171.cmp.not, label %.lr.ph.i.i58.prol.loopexit, label %.lr.ph.i.i58.prol, !llvm.loop !8103

.lr.ph.i.i58.prol.loopexit:                       ; preds = %.lr.ph.i.i58.prol, %bb.j
  %.020.i.i.unr = phi i64 [ %i.a, %bb.j ], [ %i.bb, %.lr.ph.i.i58.prol ]
  %.0819.i.i.unr = phi ptr [ %i.ba, %bb.j ], [ %i.bf, %.lr.ph.i.i58.prol ]
  %.01618.i.i.unr = phi ptr [ %i.n, %bb.j ], [ %i.bg, %.lr.ph.i.i58.prol ]
  %i.bh = icmp ult i64 %.06.i.i, 3
  br i1 %i.bh, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i58

.lr.ph.i.i58:                                     ; preds = %.lr.ph.i.i58.prol.loopexit, %.lr.ph.i.i58
  %.020.i.i = phi i64 [ %i.bv, %.lr.ph.i.i58 ], [ %.020.i.i.unr, %.lr.ph.i.i58.prol.loopexit ]
  %.0819.i.i = phi ptr [ %i.by, %.lr.ph.i.i58 ], [ %.0819.i.i.unr, %.lr.ph.i.i58.prol.loopexit ] ; 5 uses
  %.01618.i.i = phi ptr [ %i.bz, %.lr.ph.i.i58 ], [ %.01618.i.i.unr, %.lr.ph.i.i58.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i) ]
  %i.bi = load i32, ptr %.0819.i.i, align 4, !tbaa !2523
  store i32 %i.bi, ptr %.01618.i.i, align 4, !tbaa !2523
  %i.bj = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18 ; 4 uses
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 4
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !2523
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !2523
  %i.bo = add i32 %i.bj, 2
  store i32 %i.bo, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !2523
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !2523
  %i.bs = add i32 %i.bj, 3
  store i32 %i.bs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 12
  %i.bu = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 12
  %i.bv = add i64 %.020.i.i, -4                   ; 2 uses
  %i.bw = load i32, ptr %i.bt, align 4, !tbaa !2523
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !2523
  %i.bx = add i32 %i.bj, 4
  store i32 %i.bx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 16
  %.not.i.i59.3 = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i59.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i58, !llvm.loop !7780

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i: ; preds = %.lr.ph.i.i58, %.lr.ph.i.i58.prol.loopexit
  %.not8.i.i = icmp eq ptr %1, %i.ba
  br i1 %.not8.i.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i.preheader

.lr.ph.i40.i.preheader:                           ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %5 = shl nuw nsw i64 %i.m, 2
  %i.ca = add i64 %5, %4
  %6 = mul i64 %.06.i.i, -4
  %reass.sub = sub i64 %6, %i.an
  %7 = add i64 %reass.sub, -8
  %i.cb = add i64 %i.ca, %7                       ; 2 uses
  %8 = lshr i64 %i.cb, 2
  %i.cc = add nuw nsw i64 %8, 1                   ; 2 uses
  %min.iters.check = icmp ult i64 %i.cb, 76
  br i1 %min.iters.check, label %.lr.ph.i40.i.preheader162, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.preheader
  %i.cd = shl i64 %.06.i.i, 2
  %i.ce = add i64 %i.cd, 35
  %diff.check = icmp ult i64 %i.ce, 31
  br i1 %diff.check, label %.lr.ph.i40.i.preheader162, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cc, 9223372036854775800     ; 3 uses
  %i.cf = mul i64 %n.vec, -4                      ; 2 uses
  %i.cg = getelementptr i8, ptr %i.n, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.ba, i64 %i.cf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ci = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.ci ; 2 uses
  %next.gep136 = getelementptr i8, ptr %i.ba, i64 %i.ci ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %next.gep136, i64 -16
  %i.ck = getelementptr inbounds i8, ptr %next.gep136, i64 -32
  %wide.load = load <4 x i32>, ptr %i.cj, align 4, !tbaa !2523
  %wide.load137 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !2523
  %i.cl = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cm = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cl, align 4, !tbaa !2523
  store <4 x i32> %wide.load137, ptr %i.cm, align 4, !tbaa !2523
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !8104

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i.preheader162

.lr.ph.i40.i.preheader162:                        ; preds = %vector.memcheck, %.lr.ph.i40.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.i40.i.preheader ], [ %i.cg, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.ba, %vector.memcheck ], [ %i.ba, %.lr.ph.i40.i.preheader ], [ %i.ch, %middle.block ]
  br label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %.lr.ph.i40.i.preheader162, %.lr.ph.i40.i
  %.010.i.i = phi ptr [ %i.cp, %.lr.ph.i40.i ], [ %.010.i.i.ph, %.lr.ph.i40.i.preheader162 ]
  %.079.i.i = phi ptr [ %i.co, %.lr.ph.i40.i ], [ %.079.i.i.ph, %.lr.ph.i40.i.preheader162 ]
  %i.co = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 3 uses
  %i.cp = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !2523
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !2523
  %.not.i41.i = icmp eq ptr %1, %i.co
  br i1 %.not.i41.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i, !llvm.loop !8105

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i40.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %xtraiter172 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod173.not = icmp eq i64 %xtraiter172, 0
  br i1 %lcmp.mod173.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.09.i.i.i.prol = phi i64 [ %i.cr, %.lr.ph.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.preheader ]
  %.048.i.i.i.prol = phi ptr [ %i.cv, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.prol = phi ptr [ %i.cu, %.lr.ph.i.i.i.prol ], [ %2, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter174 = phi i64 [ %prol.iter174.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.cr = add i64 %.09.i.i.i.prol, -1             ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.prol, i64 16
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !18
  store i32 %i.ct, ptr %.048.i.i.i.prol, align 4, !tbaa !2523
  %i.cu = load ptr, ptr %.sroa.0.07.i.i.i.prol, align 8, !tbaa !2636 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.048.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter174.next = add i64 %prol.iter174, 1   ; 2 uses
  %prol.iter174.cmp.not = icmp eq i64 %prol.iter174.next, %xtraiter172
  br i1 %prol.iter174.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !8106

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.unr = phi i64 [ %i.a, %.lr.ph.i.i.i.preheader ], [ %i.cr, %.lr.ph.i.i.i.prol ]
  %.048.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.preheader ], [ %i.cv, %.lr.ph.i.i.i.prol ]
  %.sroa.0.07.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.preheader ], [ %i.cu, %.lr.ph.i.i.i.prol ]
  %i.cw = icmp ult i64 %.06.i.i, 3
  br i1 %i.cw, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.dj, %.lr.ph.i.i.i ], [ %.09.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.048.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i ], [ %.048.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i = phi ptr [ %i.dm, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 16
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !18
  store i32 %i.cy, ptr %.048.i.i.i, align 4, !tbaa !2523
  %i.cz = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !2636 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !18
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !2523
  %i.dd = load ptr, ptr %i.cz, align 8, !tbaa !2636 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !18
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !2523
  %i.dh = load ptr, ptr %i.dd, align 8, !tbaa !2636 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 12
  %i.dj = add i64 %.09.i.i.i, -4                  ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !18
  store i32 %i.dl, ptr %i.di, align 4, !tbaa !2523
  %i.dm = load ptr, ptr %i.dh, align 8, !tbaa !2636
  %i.dn = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.dj, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i, !llvm.loop !5581

.lr.ph.i48.preheader.i:                           ; preds = %bb.i
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.a
  br label %.lr.ph.i48.i

.lr.ph.i48.i:                                     ; preds = %.lr.ph.i48.i, %.lr.ph.i48.preheader.i
  %.018.i.i = phi ptr [ %i.ds, %.lr.ph.i48.i ], [ %1, %.lr.ph.i48.preheader.i ] ; 2 uses
  %.01517.i.i = phi ptr [ %i.dt, %.lr.ph.i48.i ], [ %i.do, %.lr.ph.i48.preheader.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.dp = load i32, ptr %.018.i.i, align 4, !tbaa !2523
  store i32 %i.dp, ptr %.01517.i.i, align 4, !tbaa !2523
  %i.dq = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4
  %.not.i49.i = icmp eq ptr %i.ds, %i.n
  br i1 %.not.i49.i, label %.lr.ph.i.i52.i.preheader, label %.lr.ph.i48.i, !llvm.loop !7786

.lr.ph.i.i52.i.preheader:                         ; preds = %.lr.ph.i48.i
  %xtraiter = and i64 %i.ay, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i52.i.prol.loopexit, label %.lr.ph.i.i52.i.prol

.lr.ph.i.i52.i.prol:                              ; preds = %.lr.ph.i.i52.i.preheader, %.lr.ph.i.i52.i.prol
  %.09.i.i53.i.prol = phi i64 [ %i.du, %.lr.ph.i.i52.i.prol ], [ %i.ay, %.lr.ph.i.i52.i.preheader ]
  %.048.i.i54.i.prol = phi ptr [ %i.dy, %.lr.ph.i.i52.i.prol ], [ %1, %.lr.ph.i.i52.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i55.i.prol = phi ptr [ %i.dx, %.lr.ph.i.i52.i.prol ], [ %2, %.lr.ph.i.i52.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i52.i.prol ], [ 0, %.lr.ph.i.i52.i.preheader ]
  %i.du = add i64 %.09.i.i53.i.prol, -1           ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.prol, i64 16
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !18
  store i32 %i.dw, ptr %.048.i.i54.i.prol, align 4, !tbaa !2523
  %i.dx = load ptr, ptr %.sroa.0.07.i.i55.i.prol, align 8, !tbaa !2636 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i52.i.prol.loopexit, label %.lr.ph.i.i52.i.prol, !llvm.loop !8107

.lr.ph.i.i52.i.prol.loopexit:                     ; preds = %.lr.ph.i.i52.i.prol, %.lr.ph.i.i52.i.preheader
  %.lcssa164.unr = phi ptr [ poison, %.lr.ph.i.i52.i.preheader ], [ %i.dx, %.lr.ph.i.i52.i.prol ]
  %.09.i.i53.i.unr = phi i64 [ %i.ay, %.lr.ph.i.i52.i.preheader ], [ %i.du, %.lr.ph.i.i52.i.prol ]
  %.048.i.i54.i.unr = phi ptr [ %1, %.lr.ph.i.i52.i.preheader ], [ %i.dy, %.lr.ph.i.i52.i.prol ]
  %.sroa.0.07.i.i55.i.unr = phi ptr [ %2, %.lr.ph.i.i52.i.preheader ], [ %i.dx, %.lr.ph.i.i52.i.prol ]
  %i.dz = icmp ult i64 %i.ay, 4
  br i1 %i.dz, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i, label %.lr.ph.i.i52.i

.lr.ph.i.i52.i:                                   ; preds = %.lr.ph.i.i52.i.prol.loopexit, %.lr.ph.i.i52.i
  %.09.i.i53.i = phi i64 [ %i.em, %.lr.ph.i.i52.i ], [ %.09.i.i53.i.unr, %.lr.ph.i.i52.i.prol.loopexit ]
  %.048.i.i54.i = phi ptr [ %i.eq, %.lr.ph.i.i52.i ], [ %.048.i.i54.i.unr, %.lr.ph.i.i52.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i55.i = phi ptr [ %i.ep, %.lr.ph.i.i52.i ], [ %.sroa.0.07.i.i55.i.unr, %.lr.ph.i.i52.i.prol.loopexit ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i, i64 16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !18
  store i32 %i.eb, ptr %.048.i.i54.i, align 4, !tbaa !2523
  %i.ec = load ptr, ptr %.sroa.0.07.i.i55.i, align 8, !tbaa !2636 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !18
  store i32 %i.ef, ptr %i.ed, align 4, !tbaa !2523
  %i.eg = load ptr, ptr %i.ec, align 8, !tbaa !2636 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !18
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !2523
  %i.ek = load ptr, ptr %i.eg, align 8, !tbaa !2636 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 12
  %i.em = add i64 %.09.i.i53.i, -4                ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !18
  store i32 %i.eo, ptr %i.el, align 4, !tbaa !2523
  %i.ep = load ptr, ptr %i.ek, align 8, !tbaa !2636 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 16
  %.not.i.i56.i.3 = icmp eq i64 %i.em, 0
  br i1 %.not.i.i56.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i, label %.lr.ph.i.i52.i, !llvm.loop !5581

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i: ; preds = %.lr.ph.i.i52.i, %.lr.ph.i.i52.i.prol.loopexit
  %.lcssa164 = phi ptr [ %.lcssa164.unr, %.lr.ph.i.i52.i.prol.loopexit ], [ %i.ep, %.lr.ph.i.i52.i ] ; 3 uses
  %i.er = sub i64 %i.a, %i.ay                     ; 3 uses
  %xtraiter166 = and i64 %i.er, 1
  %lcmp.mod167.not = icmp eq i64 %xtraiter166, 0
  br i1 %lcmp.mod167.not, label %.lr.ph.i.i60.i.prol.loopexit, label %.lr.ph.i.i60.i.prol

.lr.ph.i.i60.i.prol:                              ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i
  %i.es = getelementptr inbounds nuw i8, ptr %.lcssa164, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.et = load i32, ptr %i.es, align 4, !tbaa !18
  store i32 %i.et, ptr %i.n, align 4, !tbaa !2523
  %i.eu = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.ev = add i32 %i.eu, 1
  store i32 %i.ev, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.ew = load ptr, ptr %.lcssa164, align 8, !tbaa !2636
  %i.ex = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.ey = add nsw i64 %i.er, -1
  br label %.lr.ph.i.i60.i.prol.loopexit

.lr.ph.i.i60.i.prol.loopexit:                     ; preds = %.lr.ph.i.i60.i.prol, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i
  %.018.i.i.i.unr = phi i64 [ %i.er, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i ], [ %i.ey, %.lr.ph.i.i60.i.prol ]
  %.01417.i.i.i.unr = phi ptr [ %i.n, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i ], [ %i.ex, %.lr.ph.i.i60.i.prol ]
  %.sroa.0.016.i.i.i.unr = phi ptr [ %.lcssa164, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i ], [ %i.ew, %.lr.ph.i.i60.i.prol ]
  %i.ez = icmp eq i64 %.06.i.i, %i.ay
  br i1 %i.ez, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i60.i

.lr.ph.i.i60.i:                                   ; preds = %.lr.ph.i.i60.i.prol.loopexit, %.lr.ph.i.i60.i
  %.018.i.i.i = phi i64 [ %i.fl, %.lr.ph.i.i60.i ], [ %.018.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ]
  %.01417.i.i.i = phi ptr [ %i.fk, %.lr.ph.i.i60.i ], [ %.01417.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i = phi ptr [ %i.fj, %.lr.ph.i.i60.i ], [ %.sroa.0.016.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i) ]
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !18
  store i32 %i.fb, ptr %.01417.i.i.i, align 4, !tbaa !2523
  %i.fc = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18 ; 2 uses
  %i.fd = add i32 %i.fc, 1
  store i32 %i.fd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.fe = load ptr, ptr %.sroa.0.016.i.i.i, align 8, !tbaa !2636 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !18
  store i32 %i.fh, ptr %i.ff, align 4, !tbaa !2523
  %i.fi = add i32 %i.fc, 2
  store i32 %i.fi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.fj = load ptr, ptr %i.fe, align 8, !tbaa !2636
  %i.fk = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 8
  %i.fl = add i64 %.018.i.i.i, -2                 ; 2 uses
  %.not.i.i61.i.1 = icmp eq i64 %i.fl, 0
  br i1 %.not.i.i61.i.1, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i60.i, !llvm.loop !8108

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit: ; preds = %.lr.ph.i.i60.i.prol.loopexit, %.lr.ph.i.i60.i, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.fm = add i64 %i.m, %i.a
  store i64 %i.fm, ptr %i.l, align 8, !tbaa !5832
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %.not46.not = icmp ugt i64 %i.aa, %.06.i.i
  br i1 %.not46.not, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %.not.i60.not = icmp ugt i64 %i.aq, %.06.i.i
  %i.fn = xor i64 %.06.i.i, -1                    ; 2 uses
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.fn ; 3 uses
  br i1 %.not.i60.not, label %.lr.ph.i.i62.preheader, label %.lr.ph.i48.i78

.lr.ph.i.i62.preheader:                           ; preds = %bb.l
  %i.fp = icmp eq i64 %.06.i.i, 0
  br i1 %i.fp, label %.lr.ph.i.i62.epil.preheader, label %.lr.ph.i.i62.preheader.new

.lr.ph.i.i62.preheader.new:                       ; preds = %.lr.ph.i.i62.preheader
  %unroll_iter = and i64 %i.a, -2
  br label %.lr.ph.i.i62

.lr.ph.i.i62:                                     ; preds = %.lr.ph.i.i62, %.lr.ph.i.i62.preheader.new
  %indvar = phi i64 [ 0, %.lr.ph.i.i62.preheader.new ], [ %indvar.next.1, %.lr.ph.i.i62 ] ; 2 uses
  %.0919.i.i = phi ptr [ %i.ab, %.lr.ph.i.i62.preheader.new ], [ %i.fx, %.lr.ph.i.i62 ] ; 3 uses
  %.01618.i.i64 = phi ptr [ %i.fo, %.lr.ph.i.i62.preheader.new ], [ %i.fy, %.lr.ph.i.i62 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i62.preheader.new ], [ %niter.next.1, %.lr.ph.i.i62 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i64) ]
  %i.fq = load i32, ptr %.0919.i.i, align 4, !tbaa !2523
  store i32 %i.fq, ptr %.01618.i.i64, align 4, !tbaa !2523
  %i.fr = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18 ; 2 uses
  %i.fs = add i32 %i.fr, 1
  store i32 %i.fs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.ft = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 4
  %i.fu = getelementptr inbounds nuw i8, ptr %.01618.i.i64, i64 4
  %i.fv = load i32, ptr %i.ft, align 4, !tbaa !2523
  store i32 %i.fv, ptr %i.fu, align 4, !tbaa !2523
  %i.fw = add i32 %i.fr, 2
  store i32 %i.fw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.fx = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 8 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.01618.i.i64, i64 8 ; 2 uses
  %indvar.next.1 = add i64 %indvar, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, label %.lr.ph.i.i62, !llvm.loop !7795

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i62
  %indvar.next = or disjoint i64 %indvar, 1
  %i.fz = and i64 %.06.i.i, 1
  %lcmp.mod182.not.not = icmp eq i64 %i.fz, 0
  br i1 %lcmp.mod182.not.not, label %.lr.ph.i.i62.epil.preheader, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i

.lr.ph.i.i62.epil.preheader:                      ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, %.lr.ph.i.i62.preheader
  %indvar.epil.init = phi i64 [ 0, %.lr.ph.i.i62.preheader ], [ %indvar.next.1, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ]
  %.0919.i.i.epil.init = phi ptr [ %i.ab, %.lr.ph.i.i62.preheader ], [ %i.fx, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ] ; 2 uses
  %.01618.i.i64.epil.init = phi ptr [ %i.fo, %.lr.ph.i.i62.preheader ], [ %i.fy, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod185 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod185)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i64.epil.init) ]
  %i.ga = load i32, ptr %.0919.i.i.epil.init, align 4, !tbaa !2523
  store i32 %i.ga, ptr %.01618.i.i64.epil.init, align 4, !tbaa !2523
  %i.gb = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.gc = add i32 %i.gb, 1
  store i32 %i.gc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.gd = getelementptr inbounds nuw i8, ptr %.0919.i.i.epil.init, i64 4
  br label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, %.lr.ph.i.i62.epil.preheader
  %indvar.lcssa = phi i64 [ %indvar.next, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ], [ %indvar.epil.init, %.lr.ph.i.i62.epil.preheader ]
  %.lcssa158 = phi ptr [ %i.fx, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ], [ %i.gd, %.lr.ph.i.i62.epil.preheader ] ; 5 uses
  %.not8.i.i66 = icmp eq ptr %.lcssa158, %1
  br i1 %.not8.i.i66, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67.preheader

.lr.ph.i40.i67.preheader:                         ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %.neg = mul i64 %i.aa, -4
  %.neg156 = sub i64 %.neg, %4
  %i.ge = add i64 %i.an, -8
  %i.gf = shl i64 %.06.i.i, 2
  %9 = sub i64 %i.ge, %i.gf
  %10 = add i64 %.neg156, %9                      ; 2 uses
  %i.gg = lshr i64 %10, 2
  %i.gh = add nuw nsw i64 %i.gg, 1                ; 2 uses
  %min.iters.check142 = icmp ult i64 %10, 76
  br i1 %min.iters.check142, label %.lr.ph.i40.i67.preheader157, label %vector.memcheck139

vector.memcheck139:                               ; preds = %.lr.ph.i40.i67.preheader
  %i.gi = shl i64 %indvar.lcssa, 2
  %i.gj = add i64 %i.gi, 35
  %diff.check140 = icmp ult i64 %i.gj, 31
  br i1 %diff.check140, label %.lr.ph.i40.i67.preheader157, label %vector.ph143

vector.ph143:                                     ; preds = %vector.memcheck139
  %n.vec144 = and i64 %i.gh, 9223372036854775800  ; 3 uses
  %i.gk = shl i64 %n.vec144, 2                    ; 2 uses
  %i.gl = getelementptr i8, ptr %i.ab, i64 %i.gk  ; 2 uses
  %i.gm = getelementptr i8, ptr %.lcssa158, i64 %i.gk
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph143
  %index146 = phi i64 [ 0, %vector.ph143 ], [ %index.next151, %vector.body145 ] ; 2 uses
  %i.gn = shl i64 %index146, 2                    ; 2 uses
  %next.gep147 = getelementptr i8, ptr %i.ab, i64 %i.gn ; 2 uses
  %next.gep148 = getelementptr i8, ptr %.lcssa158, i64 %i.gn ; 2 uses
  %i.go = getelementptr i8, ptr %next.gep148, i64 16
  %wide.load149 = load <4 x i32>, ptr %next.gep148, align 4, !tbaa !2523
  %wide.load150 = load <4 x i32>, ptr %i.go, align 4, !tbaa !2523
  %i.gp = getelementptr i8, ptr %next.gep147, i64 16
  store <4 x i32> %wide.load149, ptr %next.gep147, align 4, !tbaa !2523
  store <4 x i32> %wide.load150, ptr %i.gp, align 4, !tbaa !2523
  %index.next151 = add nuw i64 %index146, 8       ; 2 uses
  %i.gq = icmp eq i64 %index.next151, %n.vec144
  br i1 %i.gq, label %middle.block152, label %vector.body145, !llvm.loop !8109

middle.block152:                                  ; preds = %vector.body145
  %cmp.n153 = icmp eq i64 %i.gh, %n.vec144
  br i1 %cmp.n153, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67.preheader157

.lr.ph.i40.i67.preheader157:                      ; preds = %vector.memcheck139, %.lr.ph.i40.i67.preheader, %middle.block152
  %.010.i.i68.ph = phi ptr [ %i.ab, %vector.memcheck139 ], [ %i.ab, %.lr.ph.i40.i67.preheader ], [ %i.gl, %middle.block152 ]
  %.079.i.i69.ph = phi ptr [ %.lcssa158, %vector.memcheck139 ], [ %.lcssa158, %.lr.ph.i40.i67.preheader ], [ %i.gm, %middle.block152 ]
  br label %.lr.ph.i40.i67

.lr.ph.i40.i67:                                   ; preds = %.lr.ph.i40.i67.preheader157, %.lr.ph.i40.i67
  %.010.i.i68 = phi ptr [ %i.gt, %.lr.ph.i40.i67 ], [ %.010.i.i68.ph, %.lr.ph.i40.i67.preheader157 ] ; 2 uses
  %.079.i.i69 = phi ptr [ %i.gs, %.lr.ph.i40.i67 ], [ %.079.i.i69.ph, %.lr.ph.i40.i67.preheader157 ] ; 2 uses
  %i.gr = load i32, ptr %.079.i.i69, align 4, !tbaa !2523
  store i32 %i.gr, ptr %.010.i.i68, align 4, !tbaa !2523
  %i.gs = getelementptr inbounds nuw i8, ptr %.079.i.i69, i64 4 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.010.i.i68, i64 4 ; 2 uses
  %.not.i41.i70 = icmp eq ptr %i.gs, %1
  br i1 %.not.i41.i70, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67, !llvm.loop !8110

.lr.ph.i.i.i72.preheader:                         ; preds = %.lr.ph.i40.i67, %middle.block152, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %.048.i.i.i74.ph = phi ptr [ %i.ab, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i ], [ %i.gl, %middle.block152 ], [ %i.gt, %.lr.ph.i40.i67 ] ; 2 uses
  %xtraiter186 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  br i1 %lcmp.mod187.not, label %.lr.ph.i.i.i72.prol.loopexit, label %.lr.ph.i.i.i72.prol

.lr.ph.i.i.i72.prol:                              ; preds = %.lr.ph.i.i.i72.preheader, %.lr.ph.i.i.i72.prol
  %.09.i.i.i73.prol = phi i64 [ %i.gu, %.lr.ph.i.i.i72.prol ], [ %i.a, %.lr.ph.i.i.i72.preheader ]
  %.048.i.i.i74.prol = phi ptr [ %i.gy, %.lr.ph.i.i.i72.prol ], [ %.048.i.i.i74.ph, %.lr.ph.i.i.i72.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i75.prol = phi ptr [ %i.gx, %.lr.ph.i.i.i72.prol ], [ %2, %.lr.ph.i.i.i72.preheader ] ; 2 uses
  %prol.iter188 = phi i64 [ %prol.iter188.next, %.lr.ph.i.i.i72.prol ], [ 0, %.lr.ph.i.i.i72.preheader ]
  %i.gu = add i64 %.09.i.i.i73.prol, -1           ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i75.prol, i64 16
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !18
  store i32 %i.gw, ptr %.048.i.i.i74.prol, align 4, !tbaa !2523
  %i.gx = load ptr, ptr %.sroa.0.07.i.i.i75.prol, align 8, !tbaa !2636 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.048.i.i.i74.prol, i64 4 ; 2 uses
  %prol.iter188.next = add i64 %prol.iter188, 1   ; 2 uses
  %prol.iter188.cmp.not = icmp eq i64 %prol.iter188.next, %xtraiter186
  br i1 %prol.iter188.cmp.not, label %.lr.ph.i.i.i72.prol.loopexit, label %.lr.ph.i.i.i72.prol, !llvm.loop !8111

.lr.ph.i.i.i72.prol.loopexit:                     ; preds = %.lr.ph.i.i.i72.prol, %.lr.ph.i.i.i72.preheader
  %.09.i.i.i73.unr = phi i64 [ %i.a, %.lr.ph.i.i.i72.preheader ], [ %i.gu, %.lr.ph.i.i.i72.prol ]
  %.048.i.i.i74.unr = phi ptr [ %.048.i.i.i74.ph, %.lr.ph.i.i.i72.preheader ], [ %i.gy, %.lr.ph.i.i.i72.prol ]
  %.sroa.0.07.i.i.i75.unr = phi ptr [ %2, %.lr.ph.i.i.i72.preheader ], [ %i.gx, %.lr.ph.i.i.i72.prol ]
  %i.gz = icmp ult i64 %.06.i.i, 3
  br i1 %i.gz, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i72

.lr.ph.i.i.i72:                                   ; preds = %.lr.ph.i.i.i72.prol.loopexit, %.lr.ph.i.i.i72
  %.09.i.i.i73 = phi i64 [ %i.hm, %.lr.ph.i.i.i72 ], [ %.09.i.i.i73.unr, %.lr.ph.i.i.i72.prol.loopexit ]
  %.048.i.i.i74 = phi ptr [ %i.hq, %.lr.ph.i.i.i72 ], [ %.048.i.i.i74.unr, %.lr.ph.i.i.i72.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i75 = phi ptr [ %i.hp, %.lr.ph.i.i.i72 ], [ %.sroa.0.07.i.i.i75.unr, %.lr.ph.i.i.i72.prol.loopexit ] ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i75, i64 16
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !18
  store i32 %i.hb, ptr %.048.i.i.i74, align 4, !tbaa !2523
  %i.hc = load ptr, ptr %.sroa.0.07.i.i.i75, align 8, !tbaa !2636 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 4
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !18
  store i32 %i.hf, ptr %i.hd, align 4, !tbaa !2523
  %i.hg = load ptr, ptr %i.hc, align 8, !tbaa !2636 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !18
  store i32 %i.hj, ptr %i.hh, align 4, !tbaa !2523
  %i.hk = load ptr, ptr %i.hg, align 8, !tbaa !2636 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 12
  %i.hm = add i64 %.09.i.i.i73, -4                ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !18
  store i32 %i.ho, ptr %i.hl, align 4, !tbaa !2523
  %i.hp = load ptr, ptr %i.hk, align 8, !tbaa !2636
  %i.hq = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 16
  %.not.i.i.i76.3 = icmp eq i64 %i.hm, 0
  br i1 %.not.i.i.i76.3, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i72, !llvm.loop !5581

.lr.ph.i48.i78:                                   ; preds = %bb.l, %.lr.ph.i48.i78
  %.018.i.i79 = phi ptr [ %i.hu, %.lr.ph.i48.i78 ], [ %i.ab, %bb.l ] ; 2 uses
  %.01517.i.i80 = phi ptr [ %i.hv, %.lr.ph.i48.i78 ], [ %i.fo, %bb.l ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i80) ]
  %i.hr = load i32, ptr %.018.i.i79, align 4, !tbaa !2523
  store i32 %i.hr, ptr %.01517.i.i80, align 4, !tbaa !2523
  %i.hs = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.ht = add i32 %i.hs, 1
  store i32 %i.ht, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.hu = getelementptr inbounds nuw i8, ptr %.018.i.i79, i64 4 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.01517.i.i80, i64 4 ; 3 uses
  %.not.i49.i81 = icmp eq ptr %i.hu, %1
  br i1 %.not.i49.i81, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, label %.lr.ph.i48.i78, !llvm.loop !7786

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i: ; preds = %.lr.ph.i48.i78
  %i.hw = sub i64 %i.a, %i.aq                     ; 3 uses
  %xtraiter175 = and i64 %i.hw, 1
  %lcmp.mod176.not = icmp eq i64 %xtraiter175, 0
  br i1 %lcmp.mod176.not, label %.lr.ph.i.i51.i.prol.loopexit, label %.lr.ph.i.i51.i.prol

.lr.ph.i.i51.i.prol:                              ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !18
  store i32 %i.hy, ptr %i.hv, align 4, !tbaa !2523
  %i.hz = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.ia = add i32 %i.hz, 1
  store i32 %i.ia, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.ib = load ptr, ptr %2, align 8, !tbaa !2636  ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.01517.i.i80, i64 8
  %i.id = add nsw i64 %i.hw, -1
  br label %.lr.ph.i.i51.i.prol.loopexit

.lr.ph.i.i51.i.prol.loopexit:                     ; preds = %.lr.ph.i.i51.i.prol, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %.lcssa160.unr = phi ptr [ poison, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.ib, %.lr.ph.i.i51.i.prol ]
  %.018.i.i.i82.unr = phi i64 [ %i.hw, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.id, %.lr.ph.i.i51.i.prol ]
  %.01417.i.i.i83.unr = phi ptr [ %i.hv, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.ic, %.lr.ph.i.i51.i.prol ]
  %.sroa.0.016.i.i.i84.unr = phi ptr [ %2, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.ib, %.lr.ph.i.i51.i.prol ]
  %i.ie = icmp eq i64 %.06.i.i, %i.aq
  br i1 %i.ie, label %.lr.ph.i.i56.i.preheader, label %.lr.ph.i.i51.i

.lr.ph.i.i51.i:                                   ; preds = %.lr.ph.i.i51.i.prol.loopexit, %.lr.ph.i.i51.i
  %.018.i.i.i82 = phi i64 [ %i.iq, %.lr.ph.i.i51.i ], [ %.018.i.i.i82.unr, %.lr.ph.i.i51.i.prol.loopexit ]
  %.01417.i.i.i83 = phi ptr [ %i.ip, %.lr.ph.i.i51.i ], [ %.01417.i.i.i83.unr, %.lr.ph.i.i51.i.prol.loopexit ] ; 3 uses
  %.sroa.0.016.i.i.i84 = phi ptr [ %i.io, %.lr.ph.i.i51.i ], [ %.sroa.0.016.i.i.i84.unr, %.lr.ph.i.i51.i.prol.loopexit ] ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i84, i64 16
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !18
  store i32 %i.ig, ptr %.01417.i.i.i83, align 4, !tbaa !2523
  %i.ih = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18 ; 2 uses
  %i.ii = add i32 %i.ih, 1
  store i32 %i.ii, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.ij = load ptr, ptr %.sroa.0.016.i.i.i84, align 8, !tbaa !2636 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.01417.i.i.i83, i64 4
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.im = load i32, ptr %i.il, align 4, !tbaa !18
  store i32 %i.im, ptr %i.ik, align 4, !tbaa !2523
  %i.in = add i32 %i.ih, 2
  store i32 %i.in, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.io = load ptr, ptr %i.ij, align 8, !tbaa !2636 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.01417.i.i.i83, i64 8
  %i.iq = add i64 %.018.i.i.i82, -2               ; 2 uses
  %.not.i.i52.i.1 = icmp eq i64 %i.iq, 0
  br i1 %.not.i.i52.i.1, label %.lr.ph.i.i56.i.preheader, label %.lr.ph.i.i51.i, !llvm.loop !8108

.lr.ph.i.i56.i.preheader:                         ; preds = %.lr.ph.i.i51.i, %.lr.ph.i.i51.i.prol.loopexit
  %.lcssa160 = phi ptr [ %.lcssa160.unr, %.lr.ph.i.i51.i.prol.loopexit ], [ %i.io, %.lr.ph.i.i51.i ] ; 2 uses
  %xtraiter178 = and i64 %i.aq, 3                 ; 2 uses
  %lcmp.mod179.not = icmp eq i64 %xtraiter178, 0
  br i1 %lcmp.mod179.not, label %.lr.ph.i.i56.i.prol.loopexit, label %.lr.ph.i.i56.i.prol

.lr.ph.i.i56.i.prol:                              ; preds = %.lr.ph.i.i56.i.preheader, %.lr.ph.i.i56.i.prol
  %.09.i.i57.i.prol = phi i64 [ %i.ir, %.lr.ph.i.i56.i.prol ], [ %i.aq, %.lr.ph.i.i56.i.preheader ]
  %.048.i.i58.i.prol = phi ptr [ %i.iv, %.lr.ph.i.i56.i.prol ], [ %i.ab, %.lr.ph.i.i56.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i59.i.prol = phi ptr [ %i.iu, %.lr.ph.i.i56.i.prol ], [ %.lcssa160, %.lr.ph.i.i56.i.preheader ] ; 2 uses
  %prol.iter180 = phi i64 [ %prol.iter180.next, %.lr.ph.i.i56.i.prol ], [ 0, %.lr.ph.i.i56.i.preheader ]
  %i.ir = add i64 %.09.i.i57.i.prol, -1           ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i59.i.prol, i64 16
  %i.it = load i32, ptr %i.is, align 4, !tbaa !18
  store i32 %i.it, ptr %.048.i.i58.i.prol, align 4, !tbaa !2523
  %i.iu = load ptr, ptr %.sroa.0.07.i.i59.i.prol, align 8, !tbaa !2636 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.048.i.i58.i.prol, i64 4 ; 2 uses
  %prol.iter180.next = add i64 %prol.iter180, 1   ; 2 uses
  %prol.iter180.cmp.not = icmp eq i64 %prol.iter180.next, %xtraiter178
  br i1 %prol.iter180.cmp.not, label %.lr.ph.i.i56.i.prol.loopexit, label %.lr.ph.i.i56.i.prol, !llvm.loop !8112

.lr.ph.i.i56.i.prol.loopexit:                     ; preds = %.lr.ph.i.i56.i.prol, %.lr.ph.i.i56.i.preheader
  %.09.i.i57.i.unr = phi i64 [ %i.aq, %.lr.ph.i.i56.i.preheader ], [ %i.ir, %.lr.ph.i.i56.i.prol ]
  %.048.i.i58.i.unr = phi ptr [ %i.ab, %.lr.ph.i.i56.i.preheader ], [ %i.iv, %.lr.ph.i.i56.i.prol ]
  %.sroa.0.07.i.i59.i.unr = phi ptr [ %.lcssa160, %.lr.ph.i.i56.i.preheader ], [ %i.iu, %.lr.ph.i.i56.i.prol ]
  %i.iw = icmp ult i64 %i.aq, 4
  br i1 %i.iw, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i56.i

.lr.ph.i.i56.i:                                   ; preds = %.lr.ph.i.i56.i.prol.loopexit, %.lr.ph.i.i56.i
  %.09.i.i57.i = phi i64 [ %i.jj, %.lr.ph.i.i56.i ], [ %.09.i.i57.i.unr, %.lr.ph.i.i56.i.prol.loopexit ]
  %.048.i.i58.i = phi ptr [ %i.jn, %.lr.ph.i.i56.i ], [ %.048.i.i58.i.unr, %.lr.ph.i.i56.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i59.i = phi ptr [ %i.jm, %.lr.ph.i.i56.i ], [ %.sroa.0.07.i.i59.i.unr, %.lr.ph.i.i56.i.prol.loopexit ] ; 2 uses
end_hunk_5
