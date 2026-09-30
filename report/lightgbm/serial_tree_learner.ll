Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/serial_tree_learner?download=true
inline.NumInlined: 18193
inline.NumDeleted: 6360
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi:bb.a
  br i1 %min.iters.check139, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %bb.t
  %n.vec141 = and i64 %i.ck, 9223372036854775800  ; 3 uses
  %i.cl = shl i64 %n.vec141, 2
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cl
  %broadcast.splatinsert142 = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat143 = shufflevector <4 x i32> %broadcast.splatinsert142, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph140
  %index145 = phi i64 [ 0, %vector.ph140 ], [ %index.next147, %vector.body144 ] ; 2 uses
  %i.cn = shl i64 %index145, 2
  %next.gep146 = getelementptr i8, ptr %i.cf, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep146, i64 16
  store <4 x i32> %broadcast.splat143, ptr %next.gep146, align 4, !tbaa !198
  store <4 x i32> %broadcast.splat143, ptr %i.co, align 4, !tbaa !198
  %index.next147 = add nuw i64 %index145, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.cp, label %middle.block148, label %vector.body144, !llvm.loop !688

middle.block148:                                  ; preds = %vector.body144
  %cmp.n149 = icmp eq i64 %i.ck, %n.vec141
  br i1 %cmp.n149, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block148
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cf, %bb.t ], [ %i.cm, %middle.block148 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.ch, ptr %.06.i.i.i.i.i.i.i77, align 4, !tbaa !198
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cq, %i.cg
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !689

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block148
  %i.cr = icmp sgt i64 %i.cb, 4
  br i1 %i.cr, label %bb.u, label %bb.v, !prof !366

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.bq, i64 %i.cb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cs = icmp eq i64 %i.cb, 4
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load i32, ptr %i.bq, align 4, !tbaa !198
  store i32 %i.ct, ptr %i.ce, align 4, !tbaa !198
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 4
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !366

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load i32, ptr %1, align 4, !tbaa !198
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !198
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !238
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.dc) #40
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8, !tbaa !195
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !290
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.dd, ptr %i.a, align 8, !tbaa !238
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block135, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM27IntermediateLeafConstraints24GoUpToFindLeavesToUpdateEiPSt6vectorIiSaIiEEPS1_IjSaIjEEPS1_IbSaIbEEiRKNS_9SplitInfoEjRKS1_ISB_SaISB_EE(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(122) %6, i32 noundef %7, ptr noundef nonnull align 8 dereferenceable(24) %8) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = sext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !195
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.b
  %i.e = load i32, ptr %i.d, align 4, !tbaa !198  ; 2 uses
  %.not68 = icmp eq i32 %i.e, -1
  br i1 %.not68, label %tailrecurse._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN8LightGBM27IntermediateLeafConstraints28OppositeChildShouldBeUpdatedEbRKSt6vectorIiSaIiEEiRKS1_IbSaIbEEb.exit
  %i.n = phi i32 [ %i.e, %.lr.ph ], [ %i.ej, %_ZN8LightGBM27IntermediateLeafConstraints28OppositeChildShouldBeUpdatedEbRKSt6vectorIiSaIiEEiRKS1_IbSaIbEEb.exit ] ; 2 uses
  %.tr6069 = phi i32 [ %1, %.lr.ph ], [ %i.n, %_ZN8LightGBM27IntermediateLeafConstraints28OppositeChildShouldBeUpdatedEbRKSt6vectorIiSaIiEEiRKS1_IbSaIbEEb.exit ] ; 3 uses
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !302  ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.q = sext i32 %i.n to i64                     ; 9 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !195
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.q
  %i.t = load i32, ptr %i.s, align 4, !tbaa !198
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !195
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.q
  %i.x = load i32, ptr %i.w, align 4, !tbaa !198
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !411
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 528
  %i.aa = sext i32 %i.x to i64
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !347
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !294 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !195
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.q
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !198 ; 3 uses
  %i.ai = icmp eq i32 %i.ah, %.tr6069
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 264
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !347
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.q
  %i.am = load i8, ptr %i.al, align 1, !tbaa !294
  %i.an = and i8 %i.am, 1
  %.not.i = icmp eq i8 %i.an, 0
  br i1 %.not.i, label %.preheader.i, label %_ZN8LightGBM27IntermediateLeafConstraints28OppositeChildShouldBeUpdatedEbRKSt6vectorIiSaIiEEiRKS1_IbSaIbEEb.exit

.preheader.i:                                     ; preds = %bb.b
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !290 ; 2 uses
  %i.ap = load ptr, ptr %2, align 8, !tbaa !195   ; 3 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 2
  %i.av = load ptr, ptr %4, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.01113.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bj, %bb.e ] ; 5 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.01113.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !198
  %i.ay = icmp eq i32 %i.ax, %i.t
  br i1 %i.ay, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.az = sdiv i64 %.01113.i, 64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.az
  %i.bb = and i64 %.01113.i, -9223372036854775745
  %i.bc = icmp ugt i64 %i.bb, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i = select i1 %i.bc, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ba, i64 %storemerge.idx.i.i.i.i.i.i
  %i.bd = and i64 %.01113.i, 63
  %i.be = shl nuw i64 1, %i.bd
  %i.bf = load i64, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !243
  %i.bg = and i64 %i.bf, %i.be
  %i.bh = icmp ne i64 %i.bg, 0
  %i.bi = xor i1 %i.ai, %i.bh
  br i1 %i.bi, label %bb.e, label %_ZN8LightGBM27IntermediateLeafConstraints28OppositeChildShouldBeUpdatedEbRKSt6vectorIiSaIiEEiRKS1_IbSaIbEEb.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bj = add nuw i64 %.01113.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bj, %i.au
  br i1 %exitcond.not.i, label %.loopexit, label %bb.c, !llvm.loop !19

.loopexit:                                        ; preds = %bb.e, %.preheader.i
  %.not50 = icmp eq i8 %i.ad, 0
  br i1 %.not50, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !195
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.q
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !198 ; 2 uses
  %9 = icmp ne i32 %i.bn, %.tr6069                ; 2 uses
  %i.bo = select i1 %9, i32 %i.bn, i32 %i.ah
  %10 = icmp slt i8 %i.ad, 0
  %i.bp = xor i1 %10, %9
  tail call void @_ZN8LightGBM27IntermediateLeafConstraints26GoDownToFindLeavesToUpdateEiRKSt6vectorIiSaIiEERKS1_IjSaIjEERKS1_IbSaIbEEbiRKNS_9SplitInfoEbbjRKS1_ISE_SaISE_EE(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i1 noundef zeroext %i.bp, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(122) %6, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !302 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.pre70 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !195
  %.phi.trans.insert71 = getelementptr inbounds nuw [4 x i8], ptr %.pre70, i64 %i.q
  %.pre72 = load i32, ptr %.phi.trans.insert71, align 4, !tbaa !198
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit
  %i.bq = phi i32 [ %.pre72, %bb.f ], [ %i.ah, %.loopexit ]
  %i.br = phi ptr [ %.pre, %bb.f ], [ %i.o, %.loopexit ] ; 2 uses
  %i.bs = icmp eq i32 %i.bq, %.tr6069             ; 2 uses
  %i.bt = load ptr, ptr %i.i, align 8, !tbaa !280 ; 7 uses
  %i.bu = load ptr, ptr %i.j, align 8, !tbaa !392
  %.not.i51 = icmp eq ptr %i.bt, %i.bu
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 4 uses
  br i1 %.not.i51, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bv = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.bv, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !281
  %i.bw = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.bw, label %bb.i, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !281
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.bx, ptr %i.i, align 8, !tbaa !280
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.i, %bb.h
  %i.by = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.bz = shl nuw i64 1, %i.by                    ; 2 uses
  br i1 %i.bs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.ca = load i64, ptr %i.bt, align 8, !tbaa !243
  %i.cb = or i64 %i.ca, %i.bz
  store i64 %i.cb, ptr %i.bt, align 8, !tbaa !243
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.k:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.cc = xor i64 %i.bz, -1
  %i.cd = load i64, ptr %i.bt, align 8, !tbaa !243
  %i.ce = and i64 %i.cd, %i.cc
  store i64 %i.ce, ptr %i.bt, align 8, !tbaa !243
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.l:                                             ; preds = %bb.g
  tail call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr %i.bt, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %i.bs)
  %.pre73 = load ptr, ptr %i.f, align 8, !tbaa !302
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %bb.j, %bb.k, %bb.l
  %i.cf = phi ptr [ %i.br, %bb.j ], [ %i.br, %bb.k ], [ %.pre73, %bb.l ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 112
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !222
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.q
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !198 ; 2 uses
  %i.ck = load ptr, ptr %i.k, align 8, !tbaa !403 ; 4 uses
  %i.cl = load ptr, ptr %i.l, align 8, !tbaa !223
  %.not.i.i = icmp eq ptr %i.ck, %i.cl
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !198
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store ptr %i.cm, ptr %i.k, align 8, !tbaa !403
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.n:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %i.cn = load ptr, ptr %3, align 8, !tbaa !222   ; 4 uses
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = ptrtoint ptr %i.cn to i64               ; 2 uses
  %i.cq = sub i64 %i.co, %i.cp                    ; 5 uses
  %i.cr = icmp eq i64 %i.cq, 9223372036854775804
  br i1 %i.cr, label %bb.o, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #43
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.cs = ashr exact i64 %i.cq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cs, i64 1)
  %i.ct = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cs ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.cs
  %i.cv = tail call i64 @llvm.umin.i64(i64 %i.ct, i64 2305843009213693951)
  %i.cw = select i1 %i.cu, i64 2305843009213693951, i64 %i.cv ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cx = shl nuw nsw i64 %i.cw, 2
  %i.cy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #41 ; 4 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 %i.cq ; 2 uses
  store i32 %i.cj, ptr %i.cz, align 4, !tbaa !198
  %i.da = icmp sgt i64 %i.cq, 0
  br i1 %i.da, label %bb.p, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.p:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cy, ptr align 4 %i.cn, i64 %i.cq, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.p, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.dc = load ptr, ptr %i.l, align 8, !tbaa !223
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = sub i64 %i.dd, %i.cp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.de) #40
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.cy, ptr %3, align 8, !tbaa !222
  store ptr %i.db, ptr %i.k, align 8, !tbaa !403
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.cw
  store ptr %i.df, ptr %i.l, align 8, !tbaa !223
  %.pre74 = load ptr, ptr %i.f, align 8, !tbaa !302
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.m, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %i.dg = phi ptr [ %i.cf, %bb.m ], [ %.pre74, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !195
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.q
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !198 ; 2 uses
  %i.dl = load ptr, ptr %i.h, align 8, !tbaa !290 ; 4 uses
  %i.dm = load ptr, ptr %i.m, align 8, !tbaa !238
  %.not.i.i52 = icmp eq ptr %i.dl, %i.dm
  br i1 %.not.i.i52, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !198
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store ptr %i.dn, ptr %i.h, align 8, !tbaa !290
  br label %_ZN8LightGBM27IntermediateLeafConstraints28OppositeChildShouldBeUpdatedEbRKSt6vectorIiSaIiEEiRKS1_IbSaIbEEb.exit

bb.s:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.do = load ptr, ptr %2, align 8, !tbaa !195   ; 4 uses
  %i.dp = ptrtoint ptr %i.dl to i64
  %i.dq = ptrtoint ptr %i.do to i64               ; 2 uses
  %i.dr = sub i64 %i.dp, %i.dq                    ; 5 uses
  %i.ds = icmp eq i64 %i.dr, 9223372036854775804
  br i1 %i.ds, label %bb.t, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #43
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.s
  %i.dt = ashr exact i64 %i.dr, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i53 = tail call i64 @llvm.umax.i64(i64 %i.dt, i64 1)
  %i.du = add nsw i64 %.sroa.speculated.i.i.i.i53, %i.dt ; 2 uses
  %i.dv = icmp ult i64 %i.du, %i.dt
  %i.dw = tail call i64 @llvm.umin.i64(i64 %i.du, i64 2305843009213693951)
  %i.dx = select i1 %i.dv, i64 2305843009213693951, i64 %i.dw ; 3 uses
  %.not.i.i.i.i54 = icmp ne i64 %i.dx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i54)
  %i.dy = shl nuw nsw i64 %i.dx, 2
  %i.dz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #41 ; 4 uses
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 %i.dr ; 2 uses
  store i32 %i.dk, ptr %i.ea, align 4, !tbaa !198
  %i.eb = icmp sgt i64 %i.dr, 0
  br i1 %i.eb, label %bb.u, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.u:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dz, ptr align 4 %i.do, i64 %i.dr, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.u, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %.not.i17.i.i.i55 = icmp eq ptr %i.do, null
  br i1 %.not.i17.i.i.i55, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.ed = load ptr, ptr %i.m, align 8, !tbaa !238
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = sub i64 %i.ee, %i.dq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.ef) #40
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.dz, ptr %2, align 8, !tbaa !195
  store ptr %i.ec, ptr %i.h, align 8, !tbaa !290
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.dx
  store ptr %i.eg, ptr %i.m, align 8, !tbaa !238
  br label %_ZN8LightGBM27IntermediateLeafConstraints28OppositeChildShouldBeUpdatedEbRKSt6vectorIiSaIiEEiRKS1_IbSaIbEEb.exit

_ZN8LightGBM27IntermediateLeafConstraints28OppositeChildShouldBeUpdatedEbRKSt6vectorIiSaIiEEiRKS1_IbSaIbEEb.exit: ; preds = %bb.d, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.r, %bb.b
  %i.eh = load ptr, ptr %i.a, align 8, !tbaa !195
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.q
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !198 ; 2 uses
  %.not = icmp eq i32 %i.ej, -1
  br i1 %.not, label %tailrecurse._crit_edge, label %bb.b

tailrecurse._crit_edge:                           ; preds = %_ZN8LightGBM27IntermediateLeafConstraints28OppositeChildShouldBeUpdatedEbRKSt6vectorIiSaIiEEiRKS1_IbSaIbEEb.exit, %bb.a
  ret void
end_hunk_0
begin_hunk_1_@_ZN8LightGBM23AdvancedLeafConstraintsD0Ev:bb.a
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #40, !inline_history !418
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i

_ZNSt6vectorIiSaIiEED2Ev.exit2.i:                 ; preds = %bb.d, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN8LightGBM20BasicLeafConstraintsE, i64 16), ptr %0, align 8, !tbaa !226
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !413  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !416 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM15ConstraintEntryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM15ConstraintEntryESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ag, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM15ConstraintEntryESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i ], [ %i.z, %_ZNSt6vectorIiSaIiEED2Ev.exit2.i ] ; 2 uses
  %i.ac = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !415 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8LightGBM15ConstraintEntryESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN8LightGBM15ConstraintEntryEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8LightGBM15ConstraintEntryEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !226
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #18, !inline_history !13
  br label %_ZSt8_DestroyISt10unique_ptrIN8LightGBM15ConstraintEntryESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8LightGBM15ConstraintEntryESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8LightGBM15ConstraintEntryEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, %i.ab
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM15ConstraintEntryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !14

_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM15ConstraintEntryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8LightGBM15ConstraintEntryESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !413
  br label %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM15ConstraintEntryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM15ConstraintEntryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM15ConstraintEntryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  %i.ah = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM15ConstraintEntryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.z, %_ZNSt6vectorIiSaIiEED2Ev.exit2.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i1.i.i.i, label %_ZN8LightGBM27IntermediateLeafConstraintsD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM15ConstraintEntryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !417
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #40, !inline_history !419
  br label %_ZN8LightGBM27IntermediateLeafConstraintsD2Ev.exit

_ZN8LightGBM27IntermediateLeafConstraintsD2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM15ConstraintEntryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM23AdvancedLeafConstraints28GoUpToFindConstrainingLeavesEiiPSt6vectorIiSaIiEEPS1_IjSaIjEEPS1_IbSaIbEEPNS_26FeatureMinOrMaxConstraintsEbjjj(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i1 noundef zeroext %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZN8LightGBM27IntermediateLeafConstraints28OppositeChildShouldBeUpdatedEbRKSt6vectorIiSaIiEEiRKS1_IbSaIbEEb.exit, %bb.a
  %.tr104 = phi i32 [ %2, %bb.a ], [ %i.t, %_ZN8LightGBM27IntermediateLeafConstraints28OppositeChildShouldBeUpdatedEbRKSt6vectorIiSaIiEEiRKS1_IbSaIbEEb.exit ] ; 5 uses
  %.tr110 = phi i32 [ %8, %bb.a ], [ %.09499, %_ZN8LightGBM27IntermediateLeafConstraints28OppositeChildShouldBeUpdatedEbRKSt6vectorIiSaIiEEiRKS1_IbSaIbEEb.exit ] ; 4 uses
  %.tr111 = phi i32 [ %9, %bb.a ], [ %.08992101, %_ZN8LightGBM27IntermediateLeafConstraints28OppositeChildShouldBeUpdatedEbRKSt6vectorIiSaIiEEiRKS1_IbSaIbEEb.exit ] ; 4 uses
  %i.j = icmp slt i32 %.tr104, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %tailrecurse
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !302
  %i.l = xor i32 %.tr104, -1
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 312
  %i.n = zext nneg i32 %i.l to i64
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !195
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.n
  br label %bb.d

bb.c:                                             ; preds = %tailrecurse
  %i.q = zext nneg i32 %.tr104 to i64
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !195
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in = phi ptr [ %i.p, %bb.b ], [ %i.s, %bb.c ]
  %i.t = load i32, ptr %.in, align 4, !tbaa !198  ; 4 uses
  %.not = icmp eq i32 %i.t, -1
  br i1 %.not, label %bb.ae, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !302  ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.w = sext i32 %i.t to i64                     ; 6 uses
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !195
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.w
  %i.z = load i32, ptr %i.y, align 4, !tbaa !198  ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !195
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.w
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !198
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !411
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 528
  %i.ag = sext i32 %i.ad to i64
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !347
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !294 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !195
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.w
  %i.an = load i32, ptr %i.am, align 4, !tbaa !198 ; 2 uses
  %i.ao = icmp eq i32 %i.an, %.tr104              ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 264
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !347
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.w
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !294
  %i.at = and i8 %i.as, 1
  %.not.i = icmp eq i8 %i.at, 0                   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !222
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.w
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !198 ; 4 uses
  %i.ay = icmp eq i32 %1, %i.z
  %or.cond = and i1 %i.ay, %.not.i
  br i1 %or.cond, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.speculated70 = tail call i32 @llvm.umax.i32(i32 %i.ax, i32 %.tr110)
  br label %.preheader.i

bb.h:                                             ; preds = %bb.f
  %i.az = add i32 %i.ax, 1
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %.tr111, i32 %i.az)
  br label %.preheader.i

bb.i:                                             ; preds = %bb.e
  br i1 %.not.i, label %.preheader.i, label %_ZN8LightGBM27IntermediateLeafConstraints28OppositeChildShouldBeUpdatedEbRKSt6vectorIiSaIiEEiRKS1_IbSaIbEEb.exit

.preheader.i:                                     ; preds = %bb.h, %bb.g, %bb.i
  %.095 = phi i32 [ %.tr110, %bb.i ], [ %.tr110, %bb.h ], [ %.sroa.speculated70, %bb.g ] ; 4 uses
  %.08993 = phi i32 [ %.tr111, %bb.i ], [ %.sroa.speculated, %bb.h ], [ %.tr111, %bb.g ] ; 4 uses
  %i.ba = load ptr, ptr %i.d, align 8, !tbaa !290 ; 2 uses
  %i.bb = load ptr, ptr %3, align 8, !tbaa !195   ; 3 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 2
  %i.bh = load ptr, ptr %5, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.lr.ph.i
  %.01113.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bv, %bb.l ] ; 5 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.01113.i
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !198
  %i.bk = icmp eq i32 %i.bj, %i.z
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bl = sdiv i64 %.01113.i, 64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bl
  %i.bn = and i64 %.01113.i, -9223372036854775745
  %i.bo = icmp ugt i64 %i.bn, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i = select i1 %i.bo, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bm, i64 %storemerge.idx.i.i.i.i.i.i
  %i.bp = and i64 %.01113.i, 63
  %i.bq = shl nuw i64 1, %i.bp
  %i.br = load i64, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !243
  %i.bs = and i64 %i.br, %i.bq
  %i.bt = icmp ne i64 %i.bs, 0
  %i.bu = xor i1 %i.ao, %i.bt
  br i1 %i.bu, label %bb.l, label %_ZN8LightGBM27IntermediateLeafConstraints28OppositeChildShouldBeUpdatedEbRKSt6vectorIiSaIiEEiRKS1_IbSaIbEEb.exit

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bv = add nuw i64 %.01113.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bv, %i.bg
  br i1 %exitcond.not.i, label %.loopexit, label %bb.j, !llvm.loop !19

.loopexit:                                        ; preds = %bb.l, %.preheader.i
  %.not56 = icmp eq i8 %i.aj, 0
  br i1 %.not56, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.loopexit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !195
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.w
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !198 ; 2 uses
  %11 = icmp slt i8 %i.aj, 0
  %12 = icmp eq i32 %i.bz, %.tr104                ; 2 uses
  %i.ca = xor i1 %11, %12
  %i.cb = xor i1 %7, %i.ca
  br i1 %i.cb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cc = select i1 %12, i32 %i.an, i32 %i.bz
  tail call void @_ZN8LightGBM23AdvancedLeafConstraints30GoDownToFindConstrainingLeavesEiiibjjRKSt6vectorIiSaIiEERKS1_IjSaIjEERKS1_IbSaIbEEPNS_26FeatureMinOrMaxConstraintsEj(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, i32 noundef %i.z, i32 noundef %i.cc, i1 noundef zeroext %7, i32 noundef %.095, i32 noundef %.08993, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %6, i32 noundef %10)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %.loopexit
  %i.cd = load ptr, ptr %i.e, align 8, !tbaa !280 ; 7 uses
  %i.ce = load ptr, ptr %i.f, align 8, !tbaa !392
  %.not.i59 = icmp eq ptr %i.cd, %i.ce
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 4 uses
  br i1 %.not.i59, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.cf, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !281
  %i.cg = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.cg, label %bb.q, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !281
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.ch, ptr %i.e, align 8, !tbaa !280
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.q, %bb.p
  %i.ci = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.cj = shl nuw i64 1, %i.ci                    ; 2 uses
  br i1 %i.ao, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.ck = load i64, ptr %i.cd, align 8, !tbaa !243
  %i.cl = or i64 %i.ck, %i.cj
  store i64 %i.cl, ptr %i.cd, align 8, !tbaa !243
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.s:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.cm = xor i64 %i.cj, -1
  %i.cn = load i64, ptr %i.cd, align 8, !tbaa !243
  %i.co = and i64 %i.cn, %i.cm
  store i64 %i.co, ptr %i.cd, align 8, !tbaa !243
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.t:                                             ; preds = %bb.o
  tail call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr %i.cd, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %i.ao)
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %bb.r, %bb.s, %bb.t
  %i.cp = load ptr, ptr %i.g, align 8, !tbaa !403 ; 4 uses
  %i.cq = load ptr, ptr %i.h, align 8, !tbaa !223
  %.not.i60 = icmp eq ptr %i.cp, %i.cq
  br i1 %.not.i60, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  store i32 %i.ax, ptr %i.cp, align 4, !tbaa !198
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store ptr %i.cr, ptr %i.g, align 8, !tbaa !403
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.v:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %i.cs = load ptr, ptr %4, align 8, !tbaa !222   ; 4 uses
  %i.ct = ptrtoint ptr %i.cp to i64
  %i.cu = ptrtoint ptr %i.cs to i64               ; 2 uses
  %i.cv = sub i64 %i.ct, %i.cu                    ; 5 uses
  %i.cw = icmp eq i64 %i.cv, 9223372036854775804
  br i1 %i.cw, label %bb.w, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #43
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.cx = ashr exact i64 %i.cv, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cx, i64 1)
  %i.cy = add nsw i64 %.sroa.speculated.i.i.i, %i.cx ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cx
  %i.da = tail call i64 @llvm.umin.i64(i64 %i.cy, i64 2305843009213693951)
  %i.db = select i1 %i.cz, i64 2305843009213693951, i64 %i.da ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.db, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.dc = shl nuw nsw i64 %i.db, 2
  %i.dd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #41 ; 4 uses
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 %i.cv ; 2 uses
  store i32 %i.ax, ptr %i.de, align 4, !tbaa !198
  %i.df = icmp sgt i64 %i.cv, 0
  br i1 %i.df, label %bb.x, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.x:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dd, ptr align 4 %i.cs, i64 %i.cv, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.x, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %.not.i17.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.dh = load ptr, ptr %i.h, align 8, !tbaa !223
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = sub i64 %i.di, %i.cu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.dj) #40
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.dd, ptr %4, align 8, !tbaa !222
  store ptr %i.dg, ptr %i.g, align 8, !tbaa !403
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.db
  store ptr %i.dk, ptr %i.h, align 8, !tbaa !223
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %bb.u, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  %i.dl = load ptr, ptr %i.d, align 8, !tbaa !290 ; 4 uses
  %i.dm = load ptr, ptr %i.i, align 8, !tbaa !238
  %.not.i61 = icmp eq ptr %i.dl, %i.dm
  br i1 %.not.i61, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  store i32 %i.z, ptr %i.dl, align 4, !tbaa !198
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store ptr %i.dn, ptr %i.d, align 8, !tbaa !290
  br label %_ZN8LightGBM27IntermediateLeafConstraints28OppositeChildShouldBeUpdatedEbRKSt6vectorIiSaIiEEiRKS1_IbSaIbEEb.exit

bb.aa:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.do = load ptr, ptr %3, align 8, !tbaa !195   ; 4 uses
  %i.dp = ptrtoint ptr %i.dl to i64
  %i.dq = ptrtoint ptr %i.do to i64               ; 2 uses
  %i.dr = sub i64 %i.dp, %i.dq                    ; 5 uses
  %i.ds = icmp eq i64 %i.dr, 9223372036854775804
  br i1 %i.ds, label %bb.ab, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #43
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aa
  %i.dt = ashr exact i64 %i.dr, 2                 ; 3 uses
  %.sroa.speculated.i.i.i62 = tail call i64 @llvm.umax.i64(i64 %i.dt, i64 1)
  %i.du = add nsw i64 %.sroa.speculated.i.i.i62, %i.dt ; 2 uses
  %i.dv = icmp ult i64 %i.du, %i.dt
  %i.dw = tail call i64 @llvm.umin.i64(i64 %i.du, i64 2305843009213693951)
  %i.dx = select i1 %i.dv, i64 2305843009213693951, i64 %i.dw ; 3 uses
  %.not.i.i.i63 = icmp ne i64 %i.dx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i63)
  %i.dy = shl nuw nsw i64 %i.dx, 2
  %i.dz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #41 ; 4 uses
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 %i.dr ; 2 uses
  store i32 %i.z, ptr %i.ea, align 4, !tbaa !198
  %i.eb = icmp sgt i64 %i.dr, 0
  br i1 %i.eb, label %bb.ac, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.ac:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dz, ptr align 4 %i.do, i64 %i.dr, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.ac, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %.not.i17.i.i64 = icmp eq ptr %i.do, null
  br i1 %.not.i17.i.i64, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.ed = load ptr, ptr %i.i, align 8, !tbaa !238
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = sub i64 %i.ee, %i.dq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.ef) #40
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.ad, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.dz, ptr %3, align 8, !tbaa !195
  store ptr %i.ec, ptr %i.d, align 8, !tbaa !290
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.dx
  store ptr %i.eg, ptr %i.i, align 8, !tbaa !238
  br label %_ZN8LightGBM27IntermediateLeafConstraints28OppositeChildShouldBeUpdatedEbRKSt6vectorIiSaIiEEiRKS1_IbSaIbEEb.exit

_ZN8LightGBM27IntermediateLeafConstraints28OppositeChildShouldBeUpdatedEbRKSt6vectorIiSaIiEEiRKS1_IbSaIbEEb.exit: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.z, %bb.i
  %.08992101 = phi i32 [ %.08993, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.tr111, %bb.i ], [ %.08993, %bb.z ], [ %.08993, %bb.k ]
  %.09499 = phi i32 [ %.095, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.tr110, %bb.i ], [ %.095, %bb.z ], [ %.095, %bb.k ]
  %.not57 = icmp eq i32 %i.t, 0
  br i1 %.not57, label %bb.ae, label %tailrecurse

bb.ae:                                            ; preds = %_ZN8LightGBM27IntermediateLeafConstraints28OppositeChildShouldBeUpdatedEbRKSt6vectorIiSaIiEEiRKS1_IbSaIbEEb.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN8LightGBM26AdvancedFeatureConstraintsESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !428    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !429  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN8LightGBM26AdvancedFeatureConstraintsES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.g, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !226
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(282) dereferenceable(282) %.05.i.i) #18, !inline_history !21
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 288 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN8LightGBM26AdvancedFeatureConstraintsES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !22

_ZSt8_DestroyIPN8LightGBM26AdvancedFeatureConstraintsES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
end_hunk_1
begin_hunk_2_@_ZN8LightGBM27CumulativeFeatureConstraintC2ERKS0_:bb.a
  %.not.i.i.i48 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit47
  %i.fd = load ptr, ptr %i.ai, align 8, !tbaa !223
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = ptrtoint ptr %i.fc to i64
  %i.fg = sub i64 %i.fe, %i.ff
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef %i.fg) #40
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.an, %_ZNSt6vectorIdSaIdEED2Ev.exit47, %bb.af
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ei, %bb.af ], [ %.pn.pn.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit47 ], [ %.pn.pn.pn, %bb.an ]
  %i.fh = load ptr, ptr %0, align 8, !tbaa !222   ; 3 uses
  %.not.i.i.i49 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i49, label %_ZNSt6vectorIjSaIjEED2Ev.exit50, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.fi = load ptr, ptr %i.l, align 8, !tbaa !223
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = ptrtoint ptr %i.fh to i64
  %i.fl = sub i64 %i.fj, %i.fk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef %i.fl) #40
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit50

_ZNSt6vectorIjSaIjEED2Ev.exit50:                  ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.ao
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM23AdvancedLeafConstraints30GoDownToFindConstrainingLeavesEiiibjjRKSt6vectorIiSaIiEERKS1_IjSaIjEERKS1_IbSaIbEEPNS_26FeatureMinOrMaxConstraintsEj(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef %5, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef %10, i32 noundef %11) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  store i32 %6, ptr %i.a, align 4, !tbaa !198
  %i.c = icmp slt i32 %3, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br i1 %i.c, label %.tailrecurse._crit_edge_crit_edge, label %.lr.ph

.tailrecurse._crit_edge_crit_edge:                ; preds = %bb.a
  %.pre87.a = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !302
  br label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.e = icmp ne i32 %2, %1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %or.cond10.v.i = select i1 %4, i8 -1, i8 1
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !302
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %.tailrecurse._crit_edge_crit_edge
  %i.g = phi ptr [ %.pre87.a, %.tailrecurse._crit_edge_crit_edge ], [ %i.cn, %tailrecurse ]
  %.tr69.lcssa = phi i32 [ %3, %.tailrecurse._crit_edge_crit_edge ], [ %i.cr, %tailrecurse ]
  %.tr71.lcssa = phi i32 [ %5, %.tailrecurse._crit_edge_crit_edge ], [ %i.cm, %tailrecurse ]
  %i.h = xor i32 %.tr69.lcssa, -1
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.j = zext nneg i32 %i.h to i64
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !308
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load double, ptr %i.l, align 8, !tbaa !309
  tail call void @_ZN8LightGBM23AdvancedLeafConstraints17UpdateConstraintsEPNS_26FeatureMinOrMaxConstraintsEdjjbj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %10, double noundef %i.m, i32 noundef %.tr71.lcssa, i32 noundef %6, i1 noundef zeroext %4, i32 noundef %11)
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %i.n = phi i32 [ %5, %.lr.ph ], [ %i.cm, %tailrecurse ] ; 3 uses
  %i.o = phi ptr [ %.pre, %.lr.ph ], [ %i.cn, %tailrecurse ] ; 5 uses
  %.tr6982 = phi i32 [ %3, %.lr.ph ], [ %i.cr, %tailrecurse ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.q = zext nneg i32 %.tr6982 to i64            ; 6 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !195
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.q
  %i.t = load i32, ptr %i.s, align 4, !tbaa !198  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !222
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.q
  %i.x = load i32, ptr %i.w, align 4, !tbaa !198  ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 264
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !347
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.q
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !294
  %i.ac = and i8 %i.ab, 1
  %.not.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i, label %.preheader.i, label %_ZN8LightGBM27IntermediateLeafConstraints24ShouldKeepGoingLeftRightEiRKSt6vectorIiSaIiEERKS1_IjSaIjEERKS1_IbSaIbEE.exit

.preheader.i:                                     ; preds = %bb.b
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !290 ; 2 uses
  %i.ae = load ptr, ptr %7, align 8, !tbaa !195   ; 3 uses
  %.not42.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not42.i, label %_ZN8LightGBM27IntermediateLeafConstraints24ShouldKeepGoingLeftRightEiRKSt6vectorIiSaIiEERKS1_IjSaIjEERKS1_IbSaIbEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2
  %i.aj = load ptr, ptr %8, align 8
  %i.ak = load ptr, ptr %9, align 8               ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.j, %.lr.ph.i
  %.034.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bi, %bb.j ] ; 9 uses
  %.02633.i = phi i8 [ 1, %.lr.ph.i ], [ %.1.i, %bb.j ] ; 4 uses
  %.02732.i = phi i8 [ 1, %.lr.ph.i ], [ %.229.i, %bb.j ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.034.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !198
  %i.an = icmp eq i32 %i.am, %i.t
  br i1 %i.an, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.034.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !198 ; 2 uses
  %.not.i = icmp ult i32 %i.x, %i.ap
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = sdiv i64 %.034.i, 64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.aq
  %i.as = and i64 %.034.i, -9223372036854775745
  %i.at = icmp ugt i64 %i.as, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i = select i1 %i.at, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ar, i64 %storemerge.idx.i.i.i.i.i.i
  %i.au = and i64 %.034.i, 63
  %i.av = shl nuw i64 1, %i.au
  %i.aw = load i64, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !243
  %i.ax = and i64 %i.aw, %i.av
  %.not30.i = icmp eq i64 %i.ax, 0
  br i1 %.not30.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = trunc nuw i8 %.02633.i to i1
  br i1 %i.ay, label %bb.g, label %.loopexit.loopexit.i

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.128.i = phi i8 [ %.02732.i, %bb.d ], [ %.02732.i, %bb.e ], [ 0, %bb.f ] ; 3 uses
  %.not20.i = icmp ugt i32 %i.x, %i.ap
  br i1 %.not20.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = sdiv i64 %.034.i, 64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.az
  %i.bb = and i64 %.034.i, -9223372036854775745
  %i.bc = icmp ugt i64 %i.bb, -9223372036854775808
  %storemerge.idx.i.i.i.i.i21.i = select i1 %i.bc, i64 -8, i64 0
  %storemerge.i.i.i.i.i22.i = getelementptr inbounds i8, ptr %i.ba, i64 %storemerge.idx.i.i.i.i.i21.i
  %i.bd = and i64 %.034.i, 63
  %i.be = shl nuw i64 1, %i.bd
  %i.bf = load i64, ptr %storemerge.i.i.i.i.i22.i, align 8, !tbaa !243
  %i.bg = and i64 %i.bf, %i.be
  %.not31.i = icmp eq i64 %i.bg, 0
  br i1 %.not31.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = trunc nuw i8 %.128.i to i1
  br i1 %i.bh, label %bb.j, label %.loopexit.loopexit.i

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.c
  %.229.i = phi i8 [ %.128.i, %bb.g ], [ 1, %bb.i ], [ %.128.i, %bb.h ], [ %.02732.i, %bb.c ] ; 2 uses
  %.1.i = phi i8 [ %.02633.i, %bb.g ], [ 0, %bb.i ], [ %.02633.i, %bb.h ], [ %.02633.i, %bb.c ] ; 2 uses
  %i.bi = add nuw i64 %.034.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bi, %i.ai
  br i1 %exitcond.not.i, label %.loopexit.loopexit.i, label %bb.c, !llvm.loop !20

.loopexit.loopexit.i:                             ; preds = %bb.j, %bb.i, %bb.f
  %.3.ph.i = phi i8 [ %.229.i, %bb.j ], [ 0, %bb.i ], [ 0, %bb.f ]
  %.2.ph.i = phi i8 [ %.1.i, %bb.j ], [ 0, %bb.i ], [ 0, %bb.f ]
  %i.bj = zext nneg i8 %.3.ph.i to i16
  %i.bk = shl nuw nsw i16 %i.bj, 8
  %i.bl = zext nneg i8 %.2.ph.i to i16
  %i.bm = or disjoint i16 %i.bk, %i.bl
  br label %_ZN8LightGBM27IntermediateLeafConstraints24ShouldKeepGoingLeftRightEiRKSt6vectorIiSaIiEERKS1_IjSaIjEERKS1_IbSaIbEE.exit

_ZN8LightGBM27IntermediateLeafConstraints24ShouldKeepGoingLeftRightEiRKSt6vectorIiSaIiEERKS1_IjSaIjEERKS1_IbSaIbEE.exit: ; preds = %bb.b, %.preheader.i, %.loopexit.loopexit.i
  %.3.i = phi i16 [ 257, %bb.b ], [ 257, %.preheader.i ], [ %i.bm, %.loopexit.loopexit.i ] ; 2 uses
  %i.bn = icmp eq i32 %i.t, %1                    ; 3 uses
  %i.bo = and i1 %i.e, %i.bn
  br i1 %i.bo, label %_ZN8LightGBM23AdvancedLeafConstraints36LeftRightContainsRelevantInformationEbib.exit, label %bb.k

bb.k:                                             ; preds = %_ZN8LightGBM27IntermediateLeafConstraints24ShouldKeepGoingLeftRightEiRKSt6vectorIiSaIiEERKS1_IjSaIjEERKS1_IbSaIbEE.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !195
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.q
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !198
  %i.bt = load ptr, ptr %i.f, align 8, !tbaa !411
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 528
  %i.bv = sext i32 %i.bs to i64
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !347
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !294 ; 2 uses
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %_ZN8LightGBM23AdvancedLeafConstraints36LeftRightContainsRelevantInformationEbib.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %or.cond10.not.i = icmp eq i8 %i.by, %or.cond10.v.i
  %i.ca = select i1 %or.cond10.not.i, i16 1, i16 256
  br label %_ZN8LightGBM23AdvancedLeafConstraints36LeftRightContainsRelevantInformationEbib.exit

_ZN8LightGBM23AdvancedLeafConstraints36LeftRightContainsRelevantInformationEbib.exit: ; preds = %_ZN8LightGBM27IntermediateLeafConstraints24ShouldKeepGoingLeftRightEiRKSt6vectorIiSaIiEERKS1_IjSaIjEERKS1_IbSaIbEE.exit, %bb.k, %bb.l
  %.sroa.5.0.i = phi i16 [ 257, %bb.k ], [ 257, %_ZN8LightGBM27IntermediateLeafConstraints24ShouldKeepGoingLeftRightEiRKSt6vectorIiSaIiEERKS1_IjSaIjEERKS1_IbSaIbEE.exit ], [ %i.ca, %bb.l ] ; 2 uses
  %i.cb = trunc i16 %.3.i to i1                   ; 2 uses
  %i.cc = trunc i16 %.sroa.5.0.i to i1
  %i.cd = and i16 %.3.i, 256                      ; 2 uses
  %12 = icmp eq i16 %i.cd, 0
  %or.cond = select i1 %i.cc, i1 true, i1 %12
  %or.cond58 = select i1 %i.cb, i1 %or.cond, i1 false
  br i1 %or.cond58, label %bb.m, label %bb.p

bb.m:                                             ; preds = %_ZN8LightGBM23AdvancedLeafConstraints36LeftRightContainsRelevantInformationEbib.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ce = add i32 %i.x, 1                         ; 2 uses
  store i32 %i.ce, ptr %i.b, align 4, !tbaa !198
  %i.cf = icmp ult i32 %6, %i.ce
  %..i = select i1 %i.cf, ptr %i.a, ptr %i.b
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.in = phi ptr [ %..i, %bb.n ], [ %i.a, %bb.m ]
  %i.cg = load i32, ptr %.in, align 4, !tbaa !198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !195
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.q
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !198
  tail call void @_ZN8LightGBM23AdvancedLeafConstraints30GoDownToFindConstrainingLeavesEiiibjjRKSt6vectorIiSaIiEERKS1_IjSaIjEERKS1_IbSaIbEEPNS_26FeatureMinOrMaxConstraintsEj(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.ck, i1 noundef zeroext %4, i32 noundef %i.n, i32 noundef %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef %10, i32 noundef %11)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN8LightGBM23AdvancedLeafConstraints36LeftRightContainsRelevantInformationEbib.exit
  %.not86 = icmp eq i16 %i.cd, 0
  %.not54 = icmp samesign ult i16 %.sroa.5.0.i, 256
  %or.cond6 = and i1 %.not54, %i.cb
  %or.cond79 = select i1 %.not86, i1 true, i1 %or.cond6
  br i1 %or.cond79, label %.loopexit, label %tailrecurse

tailrecurse:                                      ; preds = %bb.p
  %i.cl = add i32 %i.x, 1
  %.pre86 = tail call i32 @llvm.umax.i32(i32 %i.cl, i32 %i.n)
  %i.cm = select i1 %i.bn, i32 %.pre86, i32 %i.n  ; 2 uses
  %i.cn = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !302 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !195
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.q
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !198 ; 3 uses
  %i.cs = icmp slt i32 %i.cr, 0
  br i1 %i.cs, label %tailrecurse._crit_edge, label %bb.b

.loopexit:                                        ; preds = %bb.p, %tailrecurse._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM23AdvancedLeafConstraints17UpdateConstraintsEPNS_26FeatureMinOrMaxConstraintsEdjjbj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, i32 noundef %6) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca double, align 8                   ; 9 uses
  store double %2, ptr %i.a, align 8, !tbaa !309
  store i32 %3, ptr %i.b, align 4, !tbaa !198
  store i32 %4, ptr %i.c, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.e = select i1 %5, double f0xFFEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF
  store double %i.e, ptr %i.d, align 8, !tbaa !309
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 11 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !403
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !222  ; 3 uses
  %.not148 = icmp eq ptr %i.h, %i.i
  br i1 %.not148, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.aa
  %.pre155158 = phi ptr [ %i.i, %.lr.ph ], [ %.pre155159, %bb.aa ] ; 4 uses
  %i.k = phi ptr [ %i.i, %.lr.ph ], [ %i.cf, %bb.aa ] ; 5 uses
  %.0139 = phi i8 [ 0, %.lr.ph ], [ %.2, %bb.aa ]
  %.081138 = phi i64 [ 0, %.lr.ph ], [ %i.cg, %bb.aa ] ; 8 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !308
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.081138 ; 5 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !309 ; 5 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.081138
  %i.p = load i32, ptr %i.o, align 4, !tbaa !198  ; 7 uses
  %i.q = load i32, ptr %i.b, align 4, !tbaa !198  ; 2 uses
  %i.r = icmp eq i32 %i.p, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = load double, ptr %i.a, align 8, !tbaa !309 ; 3 uses
  %i.t = fcmp olt double %i.n, %i.s
  %i.u = fcmp olt double %i.s, %i.n
  %.sink = select i1 %5, i1 %i.u, i1 %i.t
  %i.v = select i1 %.sink, double %i.n, double %i.s ; 2 uses
  store double %i.v, ptr %i.m, align 8, !tbaa !309
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = phi double [ %i.v, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %.1 = phi i8 [ 1, %bb.c ], [ %.0139, %bb.b ]    ; 2 uses
  %i.x = icmp ugt i32 %i.p, %i.q
  %.pre153 = load i32, ptr %i.c, align 4, !tbaa !198 ; 5 uses
  br i1 %i.x, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.y = icmp ult i32 %i.p, %.pre153
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = load double, ptr %i.a, align 8, !tbaa !309 ; 2 uses
  %i.aa = fcmp olt double %i.w, %i.z
  %i.ab = fcmp olt double %i.z, %i.w
  %.sink199 = select i1 %5, i1 %i.ab, i1 %i.aa
  %..i93 = select i1 %.sink199, ptr %i.m, ptr %i.a
  %i.ac = load double, ptr %..i93, align 8, !tbaa !309
  store double %i.ac, ptr %i.m, align 8, !tbaa !309
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ad = trunc nuw i8 %.1 to i1
  br i1 %i.ad, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load double, ptr %i.a, align 8, !tbaa !309 ; 2 uses
  %i.af = load double, ptr %i.d, align 8, !tbaa !309 ; 2 uses
  br i1 %5, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.ag = fcmp ogt double %i.ae, %i.af
  br i1 %i.ag, label %bb.j, label %bb.k

.critedge:                                        ; preds = %bb.h
  %i.ah = fcmp olt double %i.ae, %i.af
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge, %bb.i
  %i.ai = call ptr @_ZNSt6vectorIdSaIdEE6insertEN9__gnu_cxx17__normal_iteratorIPKdS1_EERS4_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !329
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %.081138
  %i.al = call ptr @_ZNSt6vectorIjSaIjEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS1_EERS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr %i.ak, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 0 uses
  %i.am = add nuw i64 %.081138, 1                 ; 2 uses
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !222 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.am
  %.pre151 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !198
  %.pre152 = load i32, ptr %i.c, align 4, !tbaa !198
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.g, %bb.j, %.critedge, %bb.d
  %.pre155157 = phi ptr [ %.pre155158, %bb.g ], [ %.pre, %bb.j ], [ %.pre155158, %bb.d ], [ %.pre155158, %.critedge ], [ %.pre155158, %bb.i ] ; 5 uses
  %i.an = phi ptr [ %i.k, %bb.g ], [ %.pre, %bb.j ], [ %i.k, %bb.d ], [ %i.k, %.critedge ], [ %i.k, %bb.i ] ; 5 uses
  %i.ao = phi i32 [ %.pre153, %bb.g ], [ %.pre152, %bb.j ], [ %.pre153, %bb.d ], [ %.pre153, %.critedge ], [ %.pre153, %bb.i ] ; 2 uses
  %i.ap = phi i32 [ %i.p, %bb.g ], [ %.pre151, %bb.j ], [ %i.p, %bb.d ], [ %i.p, %.critedge ], [ %i.p, %bb.i ] ; 2 uses
  %.182 = phi i64 [ %.081138, %bb.g ], [ %i.am, %bb.j ], [ %.081138, %bb.d ], [ %.081138, %.critedge ], [ %.081138, %bb.i ] ; 7 uses
  %.2 = phi i8 [ 1, %bb.g ], [ 1, %bb.j ], [ %.1, %bb.d ], [ 1, %.critedge ], [ 1, %bb.i ] ; 2 uses
  %i.aq = icmp eq i32 %i.ap, %i.ao                ; 3 uses
  br i1 %i.aq, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = icmp ugt i32 %i.ap, %i.ao
  %.not85 = icmp eq i64 %.182, 0                  ; 2 uses
  br i1 %i.ar, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %.not85, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load double, ptr %i.d, align 8, !tbaa !309
  %i.at = load ptr, ptr %1, align 8, !tbaa !308
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %.182 ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 -8
  %i.aw = load double, ptr %i.av, align 8, !tbaa !309
  %i.ax = fcmp une double %i.as, %i.aw
  br i1 %i.ax, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.ay = call ptr @_ZNSt6vectorIdSaIdEE6insertEN9__gnu_cxx17__normal_iteratorIPKdS1_EERS4_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %i.au, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !329
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.az, i64 %.182
  %i.bb = call ptr @_ZNSt6vectorIjSaIjEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS1_EERS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr nonnull %i.ba, ptr noundef nonnull align 4 dereferenceable(4) %i.c) ; 0 uses
  br label %.loopexit

bb.p:                                             ; preds = %bb.l
  br i1 %.not85, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = load ptr, ptr %1, align 8, !tbaa !308   ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.182 ; 4 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !309
  %i.bf = add i64 %.182, -1                       ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !309
  %i.bi = fcmp oeq double %i.be, %i.bh
  br i1 %i.bi, label %bb.r, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bk = load ptr, ptr %i.j, align 8, !tbaa !269 ; 5 uses
  %.not.i.i = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE5eraseEN9__gnu_cxx17__normal_iteratorIPKdS1_EE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp sgt i64 %i.bn, 8
  br i1 %i.bo, label %bb.t, label %bb.u, !prof !366

bb.t:                                             ; preds = %bb.s
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bd, ptr nonnull align 8 %i.bj, i64 %i.bn, i1 false)
  %.pre.i.i = load ptr, ptr %i.j, align 8, !tbaa !431
  %.pre154 = load ptr, ptr %i.f, align 8, !tbaa !329 ; 2 uses
  br label %_ZNSt6vectorIdSaIdEE5eraseEN9__gnu_cxx17__normal_iteratorIPKdS1_EE.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = icmp eq i64 %i.bn, 8
  br i1 %i.bp, label %bb.v, label %_ZNSt6vectorIdSaIdEE5eraseEN9__gnu_cxx17__normal_iteratorIPKdS1_EE.exit

bb.v:                                             ; preds = %bb.u
  %i.bq = load double, ptr %i.bj, align 8, !tbaa !309
  store double %i.bq, ptr %i.bd, align 8, !tbaa !309
  br label %_ZNSt6vectorIdSaIdEE5eraseEN9__gnu_cxx17__normal_iteratorIPKdS1_EE.exit

_ZNSt6vectorIdSaIdEE5eraseEN9__gnu_cxx17__normal_iteratorIPKdS1_EE.exit: ; preds = %bb.r, %bb.t, %bb.u, %bb.v
  %.pre155156 = phi ptr [ %.pre155157, %bb.v ], [ %.pre155157, %bb.u ], [ %.pre154, %bb.t ], [ %.pre155157, %bb.r ] ; 3 uses
  %i.br = phi ptr [ %i.an, %bb.v ], [ %i.an, %bb.u ], [ %.pre154, %bb.t ], [ %i.an, %bb.r ]
  %i.bs = phi ptr [ %i.bk, %bb.v ], [ %i.bk, %bb.u ], [ %.pre.i.i, %bb.t ], [ %i.bk, %bb.r ]
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -8
  store ptr %i.bt, ptr %i.j, align 8, !tbaa !431
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.br, i64 %.182 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 4 uses
  %i.bw = load ptr, ptr %i.g, align 8, !tbaa !329 ; 5 uses
  %.not.i.i94 = icmp eq ptr %i.bv, %i.bw
end_hunk_2
