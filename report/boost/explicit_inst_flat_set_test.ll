Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_flat_set_test?download=true
inline.NumInlined: 23167
inline.NumDeleted: 2555
loop-unroll.NumRuntimeUnrolled: 280
loop-unroll.NumUnrolled: 291
begin_hunk_0_@_ZN5boost9container13flat_multisetINS0_4test24movable_and_copyable_intESt4lessIS3_ENS0_13static_vectorIS3_Lm10EvEEEC2EOS8_RKNS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEE:bb.a
  store i32 %i.x, ptr %i.w, align 4, !tbaa !247
  store i32 0, ptr %i.v, align 4, !tbaa !247
  %i.y = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 8
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !247
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !247
  store i32 0, ptr %i.y, align 4, !tbaa !247
  %i.ab = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 12
  %i.ad = add i64 %.020.i.i.i.i.i.i, -4           ; 2 uses
  %i.ae = load i32, ptr %i.ab, align 4, !tbaa !247
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !247
  store i32 0, ptr %i.ab, align 4, !tbaa !247
  %i.af = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i.3, label %.lr.ph.i6.i.i.i.i.i.preheader, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1176

.lr.ph.i6.i.i.i.i.i.preheader:                    ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block
  %min.iters.check9 = icmp ult i64 %i.c, 8
  br i1 %min.iters.check9, label %.lr.ph.i6.i.i.i.i.i.preheader20, label %vector.ph10

vector.ph10:                                      ; preds = %.lr.ph.i6.i.i.i.i.i.preheader
  %n.vec11 = and i64 %i.c, -8                     ; 3 uses
  %i.ah = and i64 %i.c, 7
  %i.ai = shl i64 %n.vec11, 2
  %i.aj = getelementptr i8, ptr %1, i64 %i.ai
  br label %vector.body12

vector.body12:                                    ; preds = %vector.body12, %vector.ph10
  %index13 = phi i64 [ 0, %vector.ph10 ], [ %index.next15, %vector.body12 ] ; 2 uses
  %i.ak = shl i64 %index13, 2
  %next.gep14 = getelementptr i8, ptr %1, i64 %i.ak ; 2 uses
  %i.al = getelementptr i8, ptr %next.gep14, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep14, align 8, !tbaa !247
  store <4 x i32> splat (i32 -2147483648), ptr %i.al, align 8, !tbaa !247
  %index.next15 = add nuw i64 %index13, 8         ; 2 uses
  %i.am = icmp eq i64 %index.next15, %n.vec11
  br i1 %i.am, label %middle.block16, label %vector.body12, !llvm.loop !1177

middle.block16:                                   ; preds = %vector.body12
  %cmp.n17 = icmp eq i64 %i.c, %n.vec11
  br i1 %cmp.n17, label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13static_vectorIS4_Lm10EvEEEC2EOSC_RKNS1_24static_storage_allocatorIS4_Lm10ELm0ELb1EEE.exit, label %.lr.ph.i6.i.i.i.i.i.preheader20

.lr.ph.i6.i.i.i.i.i.preheader20:                  ; preds = %.lr.ph.i6.i.i.i.i.i.preheader, %middle.block16
  %.05.i.i.i.i.i.i.ph = phi i64 [ %i.c, %.lr.ph.i6.i.i.i.i.i.preheader ], [ %i.ah, %middle.block16 ]
  %storemerge4.i.i.i.i.i.i.ph = phi ptr [ %1, %.lr.ph.i6.i.i.i.i.i.preheader ], [ %i.aj, %middle.block16 ]
  br label %.lr.ph.i6.i.i.i.i.i

.lr.ph.i6.i.i.i.i.i:                              ; preds = %.lr.ph.i6.i.i.i.i.i.preheader20, %.lr.ph.i6.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i6.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i6.i.i.i.i.i.preheader20 ]
  %storemerge4.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i6.i.i.i.i.i ], [ %storemerge4.i.i.i.i.i.i.ph, %.lr.ph.i6.i.i.i.i.i.preheader20 ] ; 2 uses
  %i.an = add i64 %.05.i.i.i.i.i.i, -1            ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.i, align 4, !tbaa !247
  %i.ao = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i, i64 4
  %.not.i7.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i7.i.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13static_vectorIS4_Lm10EvEEEC2EOSC_RKNS1_24static_storage_allocatorIS4_Lm10ELm0ELb1EEE.exit, label %.lr.ph.i6.i.i.i.i.i, !llvm.loop !1178

_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13static_vectorIS4_Lm10EvEEEC2EOSC_RKNS1_24static_storage_allocatorIS4_Lm10ELm0ELb1EEE.exit: ; preds = %.lr.ph.i6.i.i.i.i.i, %middle.block16, %bb.a
  store i64 0, ptr %i.b, align 8, !tbaa !294
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZN5boost9container13flat_multisetINS0_4test24movable_and_copyable_intESt4lessIS3_ENS0_13static_vectorIS3_Lm10EvEEEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13static_vectorIS4_Lm10EvEEEaSERKSC_.exit, label %bb.b, !prof !222

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !296  ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !296  ; 12 uses
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not7.i.i.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.c
  %min.iters.check40 = icmp ult i64 %i.d, 8
  %i.h = sub i64 %i.a, %i.b
  %diff.check42 = icmp ugt i64 %i.h, -32
  %or.cond = or i1 %min.iters.check40, %diff.check42
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader109, label %vector.ph43

vector.ph43:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec44 = and i64 %i.d, -8                     ; 3 uses
  %i.i = shl i64 %n.vec44, 2                      ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.i       ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 %i.i       ; 2 uses
  %i.l = and i64 %i.d, 7
  br label %vector.body45

vector.body45:                                    ; preds = %vector.body45, %vector.ph43
  %index46 = phi i64 [ 0, %vector.ph43 ], [ %index.next51, %vector.body45 ] ; 2 uses
  %i.m = shl i64 %index46, 2                      ; 2 uses
  %next.gep47 = getelementptr i8, ptr %0, i64 %i.m ; 2 uses
  %next.gep48 = getelementptr i8, ptr %1, i64 %i.m ; 2 uses
  %i.n = getelementptr i8, ptr %next.gep48, i64 16
  %wide.load49 = load <4 x i32>, ptr %next.gep48, align 8, !tbaa !247
  %wide.load50 = load <4 x i32>, ptr %i.n, align 8, !tbaa !247
  %i.o = getelementptr i8, ptr %next.gep47, i64 16
  store <4 x i32> %wide.load49, ptr %next.gep47, align 8, !tbaa !247
  store <4 x i32> %wide.load50, ptr %i.o, align 8, !tbaa !247
  %index.next51 = add nuw i64 %index46, 8         ; 2 uses
  %i.p = icmp eq i64 %index.next51, %n.vec44
  br i1 %i.p, label %middle.block52, label %vector.body45, !llvm.loop !1181

middle.block52:                                   ; preds = %vector.body45
  %cmp.n53 = icmp eq i64 %i.d, %n.vec44
  br i1 %cmp.n53, label %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader109

.lr.ph.i.i.i.i.i.i.i.preheader109:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block52
  %.ph110 = phi ptr [ %0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.j, %middle.block52 ] ; 2 uses
  %.09.i.i.i.i.i.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.k, %middle.block52 ] ; 2 uses
  %.068.i.i.i.i.i.i.i.ph = phi i64 [ %i.d, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.l, %middle.block52 ] ; 4 uses
  %i.q = add i64 %.068.i.i.i.i.i.i.i.ph, -1
  %xtraiter122 = and i64 %.068.i.i.i.i.i.i.i.ph, 7 ; 2 uses
  %lcmp.mod123.not = icmp eq i64 %xtraiter122, 0
  br i1 %lcmp.mod123.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader109, %.lr.ph.i.i.i.i.i.i.i.prol
  %i.r = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.ph110, %.lr.ph.i.i.i.i.i.i.i.preheader109 ] ; 2 uses
  %.09.i.i.i.i.i.i.i.prol = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader109 ] ; 2 uses
  %.068.i.i.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.068.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader109 ]
  %prol.iter124 = phi i64 [ %prol.iter124.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader109 ]
  %i.s = add i64 %.068.i.i.i.i.i.i.i.prol, -1     ; 2 uses
  %i.t = load i32, ptr %.09.i.i.i.i.i.i.i.prol, align 4, !tbaa !247
  store i32 %i.t, ptr %i.r, align 4, !tbaa !247
  %i.u = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.prol, i64 4 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 3 uses
  %prol.iter124.next = add i64 %prol.iter124, 1   ; 2 uses
  %prol.iter124.cmp.not = icmp eq i64 %prol.iter124.next, %xtraiter122
  br i1 %prol.iter124.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !1182

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader109
  %.lcssa112.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader109 ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.lcssa111.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader109 ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.unr125 = phi ptr [ %.ph110, %.lr.ph.i.i.i.i.i.i.i.preheader109 ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.09.i.i.i.i.i.i.i.unr = phi ptr [ %.09.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader109 ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.i.unr = phi i64 [ %.068.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader109 ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.w = icmp ult i64 %i.q, 7
  br i1 %i.w, label %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %i.x = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ], [ %.unr125, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i.i.i ], [ %.068.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %i.y = load i32, ptr %.09.i.i.i.i.i.i.i, align 4, !tbaa !247
  store i32 %i.y, ptr %i.x, align 4, !tbaa !247
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !247
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !247
  %i.ac = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !247
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !247
  %i.af = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !247
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !247
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !247
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !247
  %i.al = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 20
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.an = load i32, ptr %i.al, align 4, !tbaa !247
  store i32 %i.an, ptr %i.am, align 4, !tbaa !247
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !247
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !247
  %i.ar = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 28
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %i.at = add i64 %.068.i.i.i.i.i.i.i, -8         ; 2 uses
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !247
  store i32 %i.au, ptr %i.as, align 4, !tbaa !247
  %i.av = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.7 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i.i.i.i.i.i.7, label %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1183

_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block52, %bb.c
  %.0.i.i.i.i.i.i = phi ptr [ %0, %bb.c ], [ %i.j, %middle.block52 ], [ %.lcssa111.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %1, %bb.c ], [ %i.k, %middle.block52 ], [ %.lcssa112.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i ] ; 7 uses
  %i.ax = sub i64 %i.f, %i.d                      ; 6 uses
  %.pre13.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248 ; 3 uses
  %min.iters.check70 = icmp ult i64 %i.ax, 24
  br i1 %min.iters.check70, label %.lr.ph.i14.i.i.i.i.i.i.preheader, label %vector.memcheck71

vector.memcheck71:                                ; preds = %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i.i.i
  %i.ay = sub i64 %i.f, %i.d
  %i.az = shl i64 %i.ay, 2                        ; 2 uses
  %i.ba = getelementptr i8, ptr %.0.i.i.i.i.i.i, i64 %i.az ; 2 uses
  %bound072 = icmp ult ptr %.0.i.i.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound173 = icmp ugt ptr %i.ba, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict74 = and i1 %bound072, %bound173
  %2 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 %i.az ; 2 uses
  %bound075 = icmp ult ptr %.0.i.i.i.i.i.i, %2
  %bound176 = icmp ult ptr %.0.lcssa.i.i.i.i.i.i.i, %i.ba
  %found.conflict77 = and i1 %bound075, %bound176
  %conflict.rdx = or i1 %found.conflict74, %found.conflict77
  %bound078 = icmp ugt ptr %2, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound179 = icmp ult ptr %.0.lcssa.i.i.i.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict80 = and i1 %bound078, %bound179
  %conflict.rdx81 = or i1 %conflict.rdx, %found.conflict80
  br i1 %conflict.rdx81, label %.lr.ph.i14.i.i.i.i.i.i.preheader, label %vector.ph82

vector.ph82:                                      ; preds = %vector.memcheck71
  %n.vec83 = and i64 %i.ax, -8                    ; 3 uses
  %i.bb = and i64 %i.ax, 7
  %i.bc = shl i64 %n.vec83, 2                     ; 2 uses
  %i.bd = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 %i.bc
  %i.be = getelementptr i8, ptr %.0.i.i.i.i.i.i, i64 %i.bc
  %i.bf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre13.i.i.i.i.i, i64 0
  br label %vector.body84

vector.body84:                                    ; preds = %vector.body84, %vector.ph82
  %index85 = phi i64 [ 0, %vector.ph82 ], [ %index.next99, %vector.body84 ] ; 2 uses
  %vec.phi86 = phi <4 x i32> [ %i.bf, %vector.ph82 ], [ %i.bj, %vector.body84 ]
  %vec.phi87 = phi <4 x i32> [ zeroinitializer, %vector.ph82 ], [ %i.bk, %vector.body84 ]
  %i.bg = shl i64 %index85, 2                     ; 2 uses
  %next.gep88 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 %i.bg ; 2 uses
  %next.gep89 = getelementptr i8, ptr %.0.i.i.i.i.i.i, i64 %i.bg ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep89) ]
  %i.bh = getelementptr i8, ptr %next.gep88, i64 16
  %wide.load97 = load <4 x i32>, ptr %next.gep88, align 4, !tbaa !247, !alias.scope !1200
  %wide.load98 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !247, !alias.scope !1200
  %i.bi = getelementptr i8, ptr %next.gep89, i64 16
  store <4 x i32> %wide.load97, ptr %next.gep89, align 4, !tbaa !247, !alias.scope !1201, !noalias !1202
  store <4 x i32> %wide.load98, ptr %i.bi, align 4, !tbaa !247, !alias.scope !1201, !noalias !1202
  %i.bj = add <4 x i32> %vec.phi86, splat (i32 1) ; 2 uses
  %i.bk = add <4 x i32> %vec.phi87, splat (i32 1) ; 2 uses
  %index.next99 = add nuw i64 %index85, 8         ; 2 uses
  %i.bl = icmp eq i64 %index.next99, %n.vec83
  br i1 %i.bl, label %middle.block100, label %vector.body84, !llvm.loop !1188

middle.block100:                                  ; preds = %vector.body84
  %bin.rdx101 = add <4 x i32> %i.bk, %i.bj
  %i.bm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx101) ; 2 uses
  store i32 %i.bm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !alias.scope !1203, !noalias !1200
  %cmp.n102 = icmp eq i64 %i.ax, %n.vec83
  br i1 %cmp.n102, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE16priv_copy_assignIS6_EEvRKNS1_IS3_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS3_S9_E4typeELi0EEE5valueENSD_13enable_if_natEE4typeE.exit.i.i.i.i, label %.lr.ph.i14.i.i.i.i.i.i.preheader

.lr.ph.i14.i.i.i.i.i.i.preheader:                 ; preds = %vector.memcheck71, %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i.i.i, %middle.block100
  %.ph = phi i32 [ %.pre13.i.i.i.i.i, %vector.memcheck71 ], [ %.pre13.i.i.i.i.i, %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i.i.i ], [ %i.bm, %middle.block100 ] ; 2 uses
  %.020.i.i.i.i.i.i.i.ph = phi i64 [ %i.ax, %vector.memcheck71 ], [ %i.ax, %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i.i.i ], [ %i.bb, %middle.block100 ] ; 4 uses
  %.0819.i.i.i.i.i.i.i.ph = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %vector.memcheck71 ], [ %.0.lcssa.i.i.i.i.i.i.i, %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i.i.i ], [ %i.bd, %middle.block100 ] ; 2 uses
  %.01618.i.i.i.i.i.i.i.ph = phi ptr [ %.0.i.i.i.i.i.i, %vector.memcheck71 ], [ %.0.i.i.i.i.i.i, %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i.i.i ], [ %i.be, %middle.block100 ] ; 2 uses
  %i.bn = add i64 %.020.i.i.i.i.i.i.i.ph, -1
  %xtraiter126 = and i64 %.020.i.i.i.i.i.i.i.ph, 3 ; 2 uses
  %lcmp.mod127.not = icmp eq i64 %xtraiter126, 0
  br i1 %lcmp.mod127.not, label %.lr.ph.i14.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i14.i.i.i.i.i.i.prol

.lr.ph.i14.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i14.i.i.i.i.i.i.preheader, %.lr.ph.i14.i.i.i.i.i.i.prol
  %i.bo = phi i32 [ %i.br, %.lr.ph.i14.i.i.i.i.i.i.prol ], [ %.ph, %.lr.ph.i14.i.i.i.i.i.i.preheader ]
  %.020.i.i.i.i.i.i.i.prol = phi i64 [ %i.bp, %.lr.ph.i14.i.i.i.i.i.i.prol ], [ %.020.i.i.i.i.i.i.i.ph, %.lr.ph.i14.i.i.i.i.i.i.preheader ]
  %.0819.i.i.i.i.i.i.i.prol = phi ptr [ %i.bs, %.lr.ph.i14.i.i.i.i.i.i.prol ], [ %.0819.i.i.i.i.i.i.i.ph, %.lr.ph.i14.i.i.i.i.i.i.preheader ] ; 2 uses
  %.01618.i.i.i.i.i.i.i.prol = phi ptr [ %i.bt, %.lr.ph.i14.i.i.i.i.i.i.prol ], [ %.01618.i.i.i.i.i.i.i.ph, %.lr.ph.i14.i.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter128 = phi i64 [ %prol.iter128.next, %.lr.ph.i14.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i14.i.i.i.i.i.i.preheader ]
  %i.bp = add i64 %.020.i.i.i.i.i.i.i.prol, -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.i.i.i.prol) ]
  %i.bq = load i32, ptr %.0819.i.i.i.i.i.i.i.prol, align 4, !tbaa !247
  store i32 %i.bq, ptr %.01618.i.i.i.i.i.i.i.prol, align 4, !tbaa !247
  %i.br = add i32 %i.bo, 1                        ; 3 uses
  store i32 %i.br, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bs = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter128.next = add i64 %prol.iter128, 1   ; 2 uses
  %prol.iter128.cmp.not = icmp eq i64 %prol.iter128.next, %xtraiter126
  br i1 %prol.iter128.cmp.not, label %.lr.ph.i14.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i14.i.i.i.i.i.i.prol, !llvm.loop !1189

.lr.ph.i14.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i14.i.i.i.i.i.i.prol, %.lr.ph.i14.i.i.i.i.i.i.preheader
  %.unr129 = phi i32 [ %.ph, %.lr.ph.i14.i.i.i.i.i.i.preheader ], [ %i.br, %.lr.ph.i14.i.i.i.i.i.i.prol ]
  %.020.i.i.i.i.i.i.i.unr = phi i64 [ %.020.i.i.i.i.i.i.i.ph, %.lr.ph.i14.i.i.i.i.i.i.preheader ], [ %i.bp, %.lr.ph.i14.i.i.i.i.i.i.prol ]
  %.0819.i.i.i.i.i.i.i.unr = phi ptr [ %.0819.i.i.i.i.i.i.i.ph, %.lr.ph.i14.i.i.i.i.i.i.preheader ], [ %i.bs, %.lr.ph.i14.i.i.i.i.i.i.prol ]
  %.01618.i.i.i.i.i.i.i.unr = phi ptr [ %.01618.i.i.i.i.i.i.i.ph, %.lr.ph.i14.i.i.i.i.i.i.preheader ], [ %i.bt, %.lr.ph.i14.i.i.i.i.i.i.prol ]
  %i.bu = icmp ult i64 %i.bn, 3
  br i1 %i.bu, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE16priv_copy_assignIS6_EEvRKNS1_IS3_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS3_S9_E4typeELi0EEE5valueENSD_13enable_if_natEE4typeE.exit.i.i.i.i, label %.lr.ph.i14.i.i.i.i.i.i

.lr.ph.i14.i.i.i.i.i.i:                           ; preds = %.lr.ph.i14.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i14.i.i.i.i.i.i
  %i.bv = phi i32 [ %i.ck, %.lr.ph.i14.i.i.i.i.i.i ], [ %.unr129, %.lr.ph.i14.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.020.i.i.i.i.i.i.i = phi i64 [ %i.ci, %.lr.ph.i14.i.i.i.i.i.i ], [ %.020.i.i.i.i.i.i.i.unr, %.lr.ph.i14.i.i.i.i.i.i.prol.loopexit ]
  %.0819.i.i.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i14.i.i.i.i.i.i ], [ %.0819.i.i.i.i.i.i.i.unr, %.lr.ph.i14.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i14.i.i.i.i.i.i ], [ %.01618.i.i.i.i.i.i.i.unr, %.lr.ph.i14.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.i.i.i) ]
  %i.bw = load i32, ptr %.0819.i.i.i.i.i.i.i, align 4, !tbaa !247
  store i32 %i.bw, ptr %.01618.i.i.i.i.i.i.i, align 4, !tbaa !247
  %i.bx = add i32 %i.bv, 1
  store i32 %i.bx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.by = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i.i, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 4
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !247
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !247
  %i.cb = add i32 %i.bv, 2
  store i32 %i.cb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.cc = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i.i, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 8
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !247
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !247
  %i.cf = add i32 %i.bv, 3
  store i32 %i.cf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.cg = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i.i, i64 12
  %i.ch = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 12
  %i.ci = add i64 %.020.i.i.i.i.i.i.i, -4         ; 2 uses
  %i.cj = load i32, ptr %i.cg, align 4, !tbaa !247
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !247
  %i.ck = add i32 %i.bv, 4                        ; 2 uses
  store i32 %i.ck, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.cl = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i.i, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 16
  %.not.i15.i.i.i.i.i.i.3 = icmp eq i64 %i.ci, 0
  br i1 %.not.i15.i.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE16priv_copy_assignIS6_EEvRKNS1_IS3_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS3_S9_E4typeELi0EEE5valueENSD_13enable_if_natEE4typeE.exit.i.i.i.i, label %.lr.ph.i14.i.i.i.i.i.i, !llvm.loop !1190

bb.d:                                             ; preds = %bb.b
  %.not8.i.i.i.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not8.i.i.i.i.i.i.i, label %_ZN5boost9container6copy_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.preheader

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %bb.d
  %min.iters.check = icmp ult i64 %i.f, 8
  %i.cn = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.cn, -32
  %or.cond107 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond107, label %.lr.ph.i17.i.i.i.i.i.i.preheader117, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.f, -8                       ; 3 uses
  %i.co = shl i64 %n.vec, 2                       ; 2 uses
  %i.cp = getelementptr i8, ptr %0, i64 %i.co     ; 2 uses
  %i.cq = and i64 %i.f, 7
  %i.cr = getelementptr i8, ptr %1, i64 %i.co
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cs = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.cs ; 2 uses
  %next.gep18 = getelementptr i8, ptr %1, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep18, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep18, align 8, !tbaa !247
  %wide.load19 = load <4 x i32>, ptr %i.ct, align 8, !tbaa !247
  %i.cu = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 8, !tbaa !247
  store <4 x i32> %wide.load19, ptr %i.cu, align 8, !tbaa !247
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !1191

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6copy_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.preheader117

.lr.ph.i17.i.i.i.i.i.i.preheader117:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.i.i.i.ph = phi ptr [ %0, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.cp, %middle.block ] ; 2 uses
  %.0610.i.i.i.i.i.i.i.ph = phi i64 [ %i.f, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.cq, %middle.block ] ; 4 uses
  %.079.i.i.i.i.i.i.i.ph = phi ptr [ %1, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.cr, %middle.block ] ; 2 uses
  %i.cw = add i64 %.0610.i.i.i.i.i.i.i.ph, -1
  %xtraiter = and i64 %.0610.i.i.i.i.i.i.i.ph, 7  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader117, %.lr.ph.i17.i.i.i.i.i.i.prol
  %.011.i.i.i.i.i.i.i.prol = phi ptr [ %i.da, %.lr.ph.i17.i.i.i.i.i.i.prol ], [ %.011.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader117 ] ; 2 uses
  %.0610.i.i.i.i.i.i.i.prol = phi i64 [ %i.cx, %.lr.ph.i17.i.i.i.i.i.i.prol ], [ %.0610.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader117 ]
  %.079.i.i.i.i.i.i.i.prol = phi ptr [ %i.cz, %.lr.ph.i17.i.i.i.i.i.i.prol ], [ %.079.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader117 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i17.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.preheader117 ]
  %i.cx = add i64 %.0610.i.i.i.i.i.i.i.prol, -1   ; 2 uses
  %i.cy = load i32, ptr %.079.i.i.i.i.i.i.i.prol, align 4, !tbaa !247
  store i32 %i.cy, ptr %.011.i.i.i.i.i.i.i.prol, align 4, !tbaa !247
  %i.cz = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.prol, i64 4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol, !llvm.loop !1192

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader117
  %.lcssa118.unr = phi ptr [ poison, %.lr.ph.i17.i.i.i.i.i.i.preheader117 ], [ %i.da, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %.011.i.i.i.i.i.i.i.unr = phi ptr [ %.011.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader117 ], [ %i.da, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %.0610.i.i.i.i.i.i.i.unr = phi i64 [ %.0610.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader117 ], [ %i.cx, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %.079.i.i.i.i.i.i.i.unr = phi ptr [ %.079.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader117 ], [ %i.cz, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.db = icmp ult i64 %i.cw, 7
  br i1 %i.db, label %_ZN5boost9container6copy_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i17.i.i.i.i.i.i ], [ %.011.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0610.i.i.i.i.i.i.i = phi i64 [ %i.dx, %.lr.ph.i17.i.i.i.i.i.i ], [ %.0610.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ]
  %.079.i.i.i.i.i.i.i = phi ptr [ %i.dz, %.lr.ph.i17.i.i.i.i.i.i ], [ %.079.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.dc = load i32, ptr %.079.i.i.i.i.i.i.i, align 4, !tbaa !247
  store i32 %i.dc, ptr %.011.i.i.i.i.i.i.i, align 4, !tbaa !247
  %i.dd = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.i.i, i64 4
  %i.de = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i, i64 4
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !247
  store i32 %i.df, ptr %i.de, align 4, !tbaa !247
  %i.dg = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.i.i, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i, i64 8
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !247
  store i32 %i.di, ptr %i.dh, align 4, !tbaa !247
  %i.dj = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.i.i, i64 12
  %i.dk = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i, i64 12
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !247
  store i32 %i.dl, ptr %i.dk, align 4, !tbaa !247
  %i.dm = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.i.i, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i, i64 16
end_hunk_0
begin_hunk_1_@_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC2Ev:bb.a

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #4 comdat($_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC5ERKS5_) align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #4 comdat($_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC5ERKS7_) align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC2ERKS5_RKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat($_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC5ERKS5_RKS7_) align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC2ESt16initializer_listIS3_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) unnamed_addr #4 comdat($_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC5ESt16initializer_listIS3_E) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE19insert_unique_rangeIPKS4_EEvT_SH_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2IPKS4_EEbT_SH_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %i.b

_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2IPKS4_EEbT_SH_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC2ESt16initializer_listIS3_ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #4 comdat($_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC5ESt16initializer_listIS3_ERKS7_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE19insert_unique_rangeIPKS4_EEvT_SH_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2IPKS4_EEbT_SH_RKSB_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %i.b

_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2IPKS4_EEbT_SH_RKSB_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC2ESt16initializer_listIS3_ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #4 comdat($_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC5ESt16initializer_listIS3_ERKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE19insert_unique_rangeIPKS4_EEvT_SH_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2IPKS4_EEbT_SH_RKS9_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %i.b

_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2IPKS4_EEbT_SH_RKS9_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC2ESt16initializer_listIS3_ERKS5_RKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #4 comdat($_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC5ESt16initializer_listIS3_ERKS5_RKS7_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE19insert_unique_rangeIPKS4_EEvT_SH_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2IPKS4_EEbT_SH_RKS9_RKSB_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %i.b

_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2IPKS4_EEbT_SH_RKS9_RKSB_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC2ENS0_22ordered_unique_range_tESt16initializer_listIS3_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) unnamed_addr #4 comdat($_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC5ENS0_22ordered_unique_range_tESt16initializer_listIS3_E) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE15_M_range_insertIPKS3_EEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2IPKS4_EENS0_22ordered_unique_range_tET_SI_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %i.b

_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2IPKS4_EENS0_22ordered_unique_range_tET_SI_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC2ENS0_22ordered_unique_range_tESt16initializer_listIS3_ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #4 comdat($_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC5ENS0_22ordered_unique_range_tESt16initializer_listIS3_ERKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE15_M_range_insertIPKS3_EEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2IPKS4_EENS0_22ordered_unique_range_tET_SI_RKS9_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %i.b

_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2IPKS4_EENS0_22ordered_unique_range_tET_SI_RKS9_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC2ENS0_22ordered_unique_range_tESt16initializer_listIS3_ERKS5_RKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #4 comdat($_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC5ENS0_22ordered_unique_range_tESt16initializer_listIS3_ERKS5_RKS7_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE15_M_range_insertIPKS3_EEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2IPKS4_EENS0_22ordered_unique_range_tET_SI_RKS9_RKSB_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %i.b

_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2IPKS4_EENS0_22ordered_unique_range_tET_SI_RKS9_RKSB_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 comdat($_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC5ERKS9_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !301  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !302    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN5boost9container4test24movable_and_copyable_intEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !222

.noexc.i.i.i.i:                                   ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt15__new_allocatorIN5boost9container4test24movable_and_copyable_intEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN5boost9container4test24movable_and_copyable_intEE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN5boost9container4test24movable_and_copyable_intEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 11 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !302
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !301
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !303
  %i.m = load ptr, ptr %1, align 8, !tbaa !250    ; 9 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !250  ; 3 uses
  %.not11.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not11.i.i.i.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2ERKSD_.exit, label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %bb.c
  %i.o = ptrtoaddr ptr %i.n to i64
  %i.p = ptrtoaddr ptr %i.m to i64
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248 ; 3 uses
  %i.q = add i64 %i.o, -4
  %i.r = sub i64 %i.q, %i.p                       ; 3 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 124
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i
  %i.u = and i64 %i.r, -4
  %i.v = add i64 %i.u, 4                          ; 2 uses
  %i.w = getelementptr i8, ptr %i.i, i64 %i.v     ; 2 uses
  %bound0 = icmp ult ptr %i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %i.w, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %2 = getelementptr i8, ptr %i.m, i64 %i.v       ; 2 uses
  %bound012 = icmp ult ptr %i.i, %2
  %bound113 = icmp ult ptr %i.m, %i.w
  %found.conflict14 = and i1 %bound012, %bound113
  %conflict.rdx = or i1 %found.conflict, %found.conflict14
  %bound015 = icmp ugt ptr %2, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound116 = icmp ult ptr %i.m, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict17 = and i1 %bound015, %bound116
  %conflict.rdx18 = or i1 %conflict.rdx, %found.conflict17
  br i1 %conflict.rdx18, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.x = shl i64 %n.vec, 2                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.i, i64 %i.x     ; 2 uses
  %i.z = getelementptr i8, ptr %i.m, i64 %i.x
  %i.aa = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.aa, %vector.ph ], [ %i.ae, %vector.body ]
  %vec.phi19 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %i.ab = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.ab ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.m, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep20, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep20, align 4, !tbaa !247, !alias.scope !1387
  %wide.load21 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !247, !alias.scope !1387
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !247, !alias.scope !1388, !noalias !1389
  store <4 x i32> %wide.load21, ptr %i.ad, align 4, !tbaa !247, !alias.scope !1388, !noalias !1389
  %i.ae = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.af = add <4 x i32> %vec.phi19, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !1385

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.af, %i.ae
  %i.ah = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ah, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !alias.scope !1390, !noalias !1387
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2ERKSD_.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader.i.i.i, %middle.block
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %vector.memcheck ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i ], [ %i.ah, %middle.block ]
  %.013.i.i.i.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.preheader.i.i.i ], [ %i.y, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.i.i.preheader.i.i.i ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %i.ai = phi i32 [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %.013.i.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.aj = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i, align 4, !tbaa !247
  store i32 %i.aj, ptr %.013.i.i.i.i.i.i.i, align 4, !tbaa !247
  %i.ak = add i32 %i.ai, 1                        ; 2 uses
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.al, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2ERKSD_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1386

_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2ERKSD_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.c
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.y, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !301
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC2EOS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat($_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC5EOS9_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !250
  store <2 x ptr> %i.a, ptr %0, align 8, !tbaa !250
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !303
  store ptr %i.d, ptr %i.b, align 8, !tbaa !303
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC2ERKS9_RKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat($_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC5ERKS9_RKS7_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !301  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !302    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EEC2EmRKS4_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN5boost9container4test24movable_and_copyable_intEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !222

.noexc.i.i.i.i:                                   ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt15__new_allocatorIN5boost9container4test24movable_and_copyable_intEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27
  br label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EEC2EmRKS4_.exit.i.i.i

_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EEC2EmRKS4_.exit.i.i.i: ; preds = %_ZNSt15__new_allocatorIN5boost9container4test24movable_and_copyable_intEE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN5boost9container4test24movable_and_copyable_intEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 11 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !302
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !301
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !303
  %i.m = load ptr, ptr %1, align 8, !tbaa !250    ; 9 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !250  ; 3 uses
  %.not11.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not11.i.i.i.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2ERKSD_RKSB_.exit, label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EEC2EmRKS4_.exit.i.i.i
  %i.o = ptrtoaddr ptr %i.n to i64
  %i.p = ptrtoaddr ptr %i.m to i64
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248 ; 3 uses
  %i.q = add i64 %i.o, -4
  %i.r = sub i64 %i.q, %i.p                       ; 3 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 124
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i
  %i.u = and i64 %i.r, -4
  %i.v = add i64 %i.u, 4                          ; 2 uses
  %i.w = getelementptr i8, ptr %i.i, i64 %i.v     ; 2 uses
  %bound0 = icmp ult ptr %i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %i.w, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %3 = getelementptr i8, ptr %i.m, i64 %i.v       ; 2 uses
  %bound013 = icmp ult ptr %i.i, %3
  %bound114 = icmp ult ptr %i.m, %i.w
  %found.conflict15 = and i1 %bound013, %bound114
  %conflict.rdx = or i1 %found.conflict, %found.conflict15
  %bound016 = icmp ugt ptr %3, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound117 = icmp ult ptr %i.m, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict18 = and i1 %bound016, %bound117
  %conflict.rdx19 = or i1 %conflict.rdx, %found.conflict18
  br i1 %conflict.rdx19, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.x = shl i64 %n.vec, 2                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.i, i64 %i.x     ; 2 uses
  %i.z = getelementptr i8, ptr %i.m, i64 %i.x
  %i.aa = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.aa, %vector.ph ], [ %i.ae, %vector.body ]
  %vec.phi20 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %i.ab = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.ab ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.m, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep21, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep21, align 4, !tbaa !247, !alias.scope !1397
  %wide.load22 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !247, !alias.scope !1397
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !247, !alias.scope !1398, !noalias !1399
  store <4 x i32> %wide.load22, ptr %i.ad, align 4, !tbaa !247, !alias.scope !1398, !noalias !1399
  %i.ae = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.af = add <4 x i32> %vec.phi20, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !1395

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.af, %i.ae
  %i.ah = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ah, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !alias.scope !1400, !noalias !1397
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2ERKSD_RKSB_.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader.i.i.i, %middle.block
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %vector.memcheck ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i ], [ %i.ah, %middle.block ]
  %.013.i.i.i.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.preheader.i.i.i ], [ %i.y, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.i.i.preheader.i.i.i ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %i.ai = phi i32 [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %.013.i.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.aj = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i, align 4, !tbaa !247
  store i32 %i.aj, ptr %.013.i.i.i.i.i.i.i, align 4, !tbaa !247
  %i.ak = add i32 %i.ai, 1                        ; 2 uses
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.al, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2ERKSD_RKSB_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1396

_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEC2ERKSD_RKSB_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EEC2EmRKS4_.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.i, %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EEC2EmRKS4_.exit.i.i.i ], [ %i.y, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !301
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC2EOS9_RKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat($_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEC5EOS9_RKS7_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !250
  store <2 x ptr> %i.a, ptr %0, align 8, !tbaa !250
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !303
  store ptr %i.d, ptr %i.b, align 8, !tbaa !303
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEaSERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEaSEOS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !302    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !301  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !303
  %i.f = load <2 x ptr>, ptr %1, align 8, !tbaa !250
  store <2 x ptr> %i.f, ptr %0, align 8, !tbaa !250
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !303
  store ptr %i.h, ptr %i.d, align 8, !tbaa !303
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.a, %i.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  store i32 -2147483648, ptr %.05.i.i.i.i.i.i.i, align 4, !tbaa !247
  %i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.j = add i32 %i.i, -1
  store i32 %i.j, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.k, %i.c
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.a
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEaSEOSD_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i
  %i.l = ptrtoint ptr %i.e to i64
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.n) #28
  br label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEaSEOSD_.exit

_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEEaSEOSD_.exit: ; preds = %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container8flat_setINS0_4test24movable_and_copyable_intESt4lessIS3_ESt6vectorIS3_SaIS3_EEEaSESt16initializer_listIS3_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !302    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !301  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE5clearEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  store i32 -2147483648, ptr %.05.i.i.i.i.i, align 4, !tbaa !247
  %i.d = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.e = add i32 %i.d, -1
  store i32 %i.e, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.a, ptr %i.b, align 8, !tbaa !301
  br label %_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE5clearEv.exit

_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  tail call void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE19insert_unique_rangeIPKS4_EEvT_SH_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %i.g)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE19insert_unique_rangeIPKS4_EEvT_SH_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::movelib::adaptive_xbuf.62", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !250
  %i.c = load ptr, ptr %0, align 8, !tbaa !250    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  tail call void @_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE15_M_range_insertIPKS3_EEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.g, ptr noundef %1, ptr noundef %2)
  %i.h = load ptr, ptr %0, align 8, !tbaa !250    ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 %i.f ; 13 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !250  ; 4 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN5boost7movelib7pdqsortIN9__gnu_cxx17__normal_iteratorIPNS_9container4test24movable_and_copyable_intESt6vectorIS6_SaIS6_EEEENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEvT_SK_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 2
  %i.p = lshr i64 %i.o, 1
  %i.q = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 false)
  %i.r = sub nuw nsw i64 64, %i.q
  tail call void @_ZN5boost7movelib14pdqsort_detail12pdqsort_loopIN9__gnu_cxx17__normal_iteratorIPNS_9container4test24movable_and_copyable_intESt6vectorIS7_SaIS7_EEEENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEEvT_SL_T0_NS0_9iter_sizeISL_E4typeEb(ptr %i.i, ptr %i.j, i64 noundef %i.r, i1 noundef zeroext true)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !250
  %.pre31 = load ptr, ptr %0, align 8, !tbaa !250
  br label %_ZN5boost7movelib7pdqsortIN9__gnu_cxx17__normal_iteratorIPNS_9container4test24movable_and_copyable_intESt6vectorIS6_SaIS6_EEEENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEvT_SK_T0_.exit

_ZN5boost7movelib7pdqsortIN9__gnu_cxx17__normal_iteratorIPNS_9container4test24movable_and_copyable_intESt6vectorIS6_SaIS6_EEEENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEvT_SK_T0_.exit: ; preds = %bb.a, %bb.b
  %i.s = phi ptr [ %i.h, %bb.a ], [ %.pre31, %bb.b ]
  %i.t = phi ptr [ %i.j, %bb.a ], [ %.pre, %bb.b ]
  %i.u = tail call ptr @_ZN5boost7movelib29inplace_set_unique_differenceIN9__gnu_cxx17__normal_iteratorIPNS_9container4test24movable_and_copyable_intESt6vectorIS6_SaIS6_EEEESB_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEET_SK_SK_T0_SL_T1_(ptr %i.i, ptr %i.t, ptr %i.s, ptr %i.i) ; 4 uses
  %.not = icmp eq ptr %i.u, %i.i
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !250  ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !250    ; 5 uses
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.z = sub i64 %i.x, %i.y
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 %i.z ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.u
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit, label %.lr.ph.i.i.i.i.i

end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_S6_S6_SE_NS0_7move_opEEET3_T_SH_T0_T1_RT2_SK_SG_NS0_9iter_sizeISJ_E4typeESO_SO_SO_T4_bT5_:bb.a
bb.g:                                             ; preds = %.split.i.i, %.outer.i.i
  %.030.i.i = phi ptr [ %.13137.i.i, %.split.i.i ], [ %.030.ph.i.i, %.outer.i.i ] ; 4 uses
  %.026.i.i = phi ptr [ %i.ah, %.split.i.i ], [ %.026.ph.i.i, %.outer.i.i ] ; 5 uses
  %.025.i.i = phi ptr [ %i.ai, %.split.i.i ], [ %.025.ph.i.i, %.outer.i.i ] ; 6 uses
  %i.ae = load i32, ptr %.025.i.i, align 4, !tbaa !247 ; 2 uses
  %i.af = load i32, ptr %.028.ph.i.i, align 4, !tbaa !247 ; 2 uses
  %i.ag = icmp slt i32 %i.ae, %i.af
  br i1 %i.ag, label %.split.i.i, label %bb.h

.split.i.i:                                       ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 4 ; 2 uses
  store i32 %i.ae, ptr %.030.i.i, align 4, !tbaa !247
  store i32 0, ptr %.025.i.i, align 4, !tbaa !247
  %i.aj = load i32, ptr %.026.i.i, align 4, !tbaa !247
  store i32 %i.aj, ptr %.025.i.i, align 4, !tbaa !247
  store i32 0, ptr %.026.i.i, align 4, !tbaa !247
  %.not43.i.i = icmp eq ptr %i.ah, %i.z
  %.13137.i.i = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 4 ; 2 uses
  br i1 %.not43.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %bb.g, !llvm.loop !55

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.028.ph.i.i, i64 4 ; 3 uses
  store i32 %i.af, ptr %.030.i.i, align 4, !tbaa !247
  store i32 0, ptr %.028.ph.i.i, align 4, !tbaa !247
  %.not42.i.i = icmp eq ptr %i.ak, %4
  %.131.i.i = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 4 ; 2 uses
  br i1 %.not42.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.outer.i.i, !llvm.loop !55

bb.i:                                             ; preds = %bb.e
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit, label %.outer.i15.i

.outer.i15.i:                                     ; preds = %bb.i, %bb.k
  %.030.ph.i16.i = phi ptr [ %.131.i33.i, %bb.k ], [ %.038125, %bb.i ]
  %.028.ph.i17.i = phi ptr [ %i.aq, %bb.k ], [ %i.ad, %bb.i ] ; 4 uses
  %.026.ph.i18.i = phi ptr [ %.026.i21.i, %bb.k ], [ %.083122, %bb.i ]
  %.025.ph.i19.i = phi ptr [ %.025.i22.i, %bb.k ], [ %i.ab, %bb.i ]
  br label %bb.j

bb.j:                                             ; preds = %.split.i24.i, %.outer.i15.i
  %.030.i20.i = phi ptr [ %.13137.i25.i, %.split.i24.i ], [ %.030.ph.i16.i, %.outer.i15.i ] ; 4 uses
  %.026.i21.i = phi ptr [ %i.an, %.split.i24.i ], [ %.026.ph.i18.i, %.outer.i15.i ] ; 5 uses
  %.025.i22.i = phi ptr [ %i.ao, %.split.i24.i ], [ %.025.ph.i19.i, %.outer.i15.i ] ; 6 uses
  %i.al = load i32, ptr %.028.ph.i17.i, align 4, !tbaa !247 ; 2 uses
  %i.am = load i32, ptr %.025.i22.i, align 4, !tbaa !247 ; 2 uses
  %.not42.i23.i = icmp slt i32 %i.al, %i.am
  br i1 %.not42.i23.i, label %bb.k, label %.split.i24.i

.split.i24.i:                                     ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %.026.i21.i, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.025.i22.i, i64 4 ; 2 uses
  store i32 %i.am, ptr %.030.i20.i, align 4, !tbaa !247
  store i32 0, ptr %.025.i22.i, align 4, !tbaa !247
  %i.ap = load i32, ptr %.026.i21.i, align 4, !tbaa !247
  store i32 %i.ap, ptr %.025.i22.i, align 4, !tbaa !247
  store i32 0, ptr %.026.i21.i, align 4, !tbaa !247
  %.not44.i.i = icmp eq ptr %i.an, %i.z
  %.13137.i25.i = getelementptr inbounds nuw i8, ptr %.030.i20.i, i64 4 ; 2 uses
  br i1 %.not44.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !56

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %.028.ph.i17.i, i64 4 ; 3 uses
  store i32 %i.al, ptr %.030.i20.i, align 4, !tbaa !247
  store i32 0, ptr %.028.ph.i17.i, align 4, !tbaa !247
  %.not43.i32.i = icmp eq ptr %i.aq, %4
  %.131.i33.i = getelementptr inbounds nuw i8, ptr %.030.i20.i, i64 4 ; 2 uses
  br i1 %.not43.i32.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.outer.i15.i, !llvm.loop !56

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit
  br i1 %10, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.o
  %.024.i.i.ph = phi ptr [ %i.au, %bb.o ], [ %.038125, %bb.m ]
  %.021.i.i.ph = phi ptr [ %i.ax, %bb.o ], [ %i.ad, %bb.m ] ; 4 uses
  %.0.i.i.ph = phi ptr [ %.0.i.i, %bb.o ], [ %.083122, %bb.m ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.n
  %.024.i.i = phi ptr [ %i.au, %bb.n ], [ %.024.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %.0.i.i = phi ptr [ %i.av, %bb.n ], [ %.0.i.i.ph, %.preheader.i.i.outer ] ; 5 uses
  %i.ar = load i32, ptr %.0.i.i, align 4, !tbaa !247 ; 2 uses
  %i.as = load i32, ptr %.021.i.i.ph, align 4, !tbaa !247 ; 2 uses
  %i.at = icmp slt i32 %i.ar, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 4 ; 4 uses
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 2 uses
  store i32 %i.ar, ptr %.024.i.i, align 4, !tbaa !247
  store i32 0, ptr %.0.i.i, align 4, !tbaa !247
  %i.aw = icmp eq ptr %i.av, %i.z
  br i1 %i.aw, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !53

bb.o:                                             ; preds = %.preheader.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.021.i.i.ph, i64 4 ; 3 uses
  store i32 %i.as, ptr %.024.i.i, align 4, !tbaa !247
  store i32 0, ptr %.021.i.i.ph, align 4, !tbaa !247
  %i.ay = icmp eq ptr %i.ax, %4
  br i1 %i.ay, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !53

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i13.i.outer

.preheader.i13.i.outer:                           ; preds = %bb.p, %bb.r
  %.024.i14.i.ph = phi ptr [ %i.bb, %bb.r ], [ %.038125, %bb.p ]
  %.021.i15.i.ph = phi ptr [ %i.be, %bb.r ], [ %i.ad, %bb.p ] ; 4 uses
  %.0.i16.i.ph = phi ptr [ %.0.i16.i, %bb.r ], [ %.083122, %bb.p ]
  br label %.preheader.i13.i

.preheader.i13.i:                                 ; preds = %.preheader.i13.i.outer, %bb.q
  %.024.i14.i = phi ptr [ %i.bb, %bb.q ], [ %.024.i14.i.ph, %.preheader.i13.i.outer ] ; 3 uses
  %.0.i16.i = phi ptr [ %i.bc, %bb.q ], [ %.0.i16.i.ph, %.preheader.i13.i.outer ] ; 5 uses
  %i.az = load i32, ptr %.021.i15.i.ph, align 4, !tbaa !247 ; 2 uses
  %i.ba = load i32, ptr %.0.i16.i, align 4, !tbaa !247 ; 2 uses
  %.not37.i.i = icmp slt i32 %i.az, %i.ba
  %i.bb = getelementptr inbounds nuw i8, ptr %.024.i14.i, i64 4 ; 4 uses
  br i1 %.not37.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i13.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 4 ; 2 uses
  store i32 %i.ba, ptr %.024.i14.i, align 4, !tbaa !247
  store i32 0, ptr %.0.i16.i, align 4, !tbaa !247
  %i.bd = icmp eq ptr %i.bc, %i.z
  br i1 %i.bd, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i13.i, !llvm.loop !57

bb.r:                                             ; preds = %.preheader.i13.i
  %i.be = getelementptr inbounds nuw i8, ptr %.021.i15.i.ph, i64 4 ; 3 uses
  store i32 %i.az, ptr %.024.i14.i, align 4, !tbaa !247
  store i32 0, ptr %.021.i15.i.ph, align 4, !tbaa !247
  %i.bf = icmp eq ptr %i.be, %4
  br i1 %i.bf, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i13.i.outer, !llvm.loop !57

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split: ; preds = %bb.k, %bb.h, %bb.q, %bb.r, %bb.n, %bb.o, %.split.i24.i, %.split.i.i, %bb.p, %bb.m
  %.12938.i30.sink.i.sink = phi ptr [ %.028.ph.i.i, %.split.i.i ], [ %.028.ph.i17.i, %.split.i24.i ], [ %i.be, %bb.r ], [ %i.ax, %bb.o ], [ %i.ad, %bb.p ], [ %i.ad, %bb.m ], [ %i.ak, %bb.h ], [ %.021.i.i.ph, %bb.n ], [ %.021.i15.i.ph, %bb.q ], [ %i.aq, %bb.k ]
  %.184.ph = phi ptr [ %i.z, %.split.i.i ], [ %i.z, %.split.i24.i ], [ %.0.i16.i, %bb.r ], [ %.0.i.i, %bb.o ], [ %.083122, %bb.p ], [ %.083122, %bb.m ], [ %.026.i.i, %bb.h ], [ %i.z, %bb.n ], [ %i.z, %bb.q ], [ %.026.i21.i, %bb.k ]
  %.080.ph = phi ptr [ %i.ai, %.split.i.i ], [ %i.ao, %.split.i24.i ], [ %i.ab, %bb.q ], [ %i.ab, %bb.n ], [ %i.ab, %bb.p ], [ %i.ab, %bb.m ], [ %.025.i.i, %bb.h ], [ %i.ab, %bb.o ], [ %i.ab, %bb.r ], [ %.025.i22.i, %bb.k ]
  %.ph = phi ptr [ %.13137.i.i, %.split.i.i ], [ %.13137.i25.i, %.split.i24.i ], [ %i.bb, %bb.q ], [ %i.au, %bb.n ], [ %.038125, %bb.p ], [ %.038125, %bb.m ], [ %.131.i.i, %bb.h ], [ %i.au, %bb.o ], [ %i.bb, %bb.r ], [ %.131.i33.i, %bb.k ]
  store ptr %.12938.i30.sink.i.sink, ptr %3, align 8, !tbaa !250
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.184 = phi ptr [ %.083122, %bb.i ], [ %.083122, %bb.f ], [ %.184.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split ] ; 18 uses
  %.080 = phi ptr [ %i.ab, %bb.i ], [ %i.ab, %bb.f ], [ %.080.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split ] ; 10 uses
  %i.bg = phi ptr [ %.038125, %bb.i ], [ %.038125, %bb.f ], [ %.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split ] ; 16 uses
  %.184260 = ptrtoaddr ptr %.184 to i64           ; 4 uses
  %i.bh = icmp eq ptr %.184, %i.bg
  br i1 %i.bh, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit
  br i1 %.not43, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not8.i = icmp eq ptr %.080, %i.ac
  br i1 %.not8.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %bb.t, %.lr.ph.i48
  %.010.i = phi ptr [ %i.bp, %.lr.ph.i48 ], [ %.184, %bb.t ] ; 3 uses
  %.079.i = phi ptr [ %i.bo, %.lr.ph.i48 ], [ %.080, %bb.t ] ; 4 uses
  %i.bi = load i32, ptr %.079.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i, align 4, !tbaa !247
  %i.bj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bl = load i32, ptr %.010.i, align 4, !tbaa !247
  store i32 %i.bl, ptr %.079.i, align 4, !tbaa !247
  store i32 %i.bi, ptr %.010.i, align 4, !tbaa !247
  %i.bm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bn = add i32 %i.bm, -1
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bo = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bo, %i.ac
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i48, !llvm.loop !41

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit
  %.not8.i.i = icmp eq ptr %.184, %i.z            ; 2 uses
  br i1 %.not43, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i49.preheader

.lr.ph.i49.preheader:                             ; preds = %bb.v
  %i.bq = mul i64 %indvar, %.idx                  ; 2 uses
  %i.br = add i64 %i.e, %i.bq                     ; 2 uses
  %i.bs = sub i64 %i.br, %.184260                 ; 2 uses
  %i.bt = lshr i64 %i.bs, 2
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %min.iters.check281 = icmp ult i64 %i.bs, 44
  br i1 %min.iters.check281, label %.lr.ph.i49.preheader311, label %vector.memcheck282

vector.memcheck282:                               ; preds = %.lr.ph.i49.preheader
  %i.bv = add i64 %i.c, %i.bq
  %i.bw = sub i64 %i.bv, %.184260
  %i.bx = and i64 %i.bw, -4
  %i.by = add i64 %i.bx, 4                        ; 3 uses
  %i.bz = getelementptr i8, ptr %i.bg, i64 %i.by  ; 2 uses
  %i.ca = getelementptr i8, ptr %.080, i64 %i.by  ; 2 uses
  %bound0283 = icmp ult ptr %i.bg, %i.ca
  %bound0283.a = icmp ult ptr %.080, %i.bz
  %found.conflict285 = and i1 %bound0283, %bound0283.a
  %11 = getelementptr i8, ptr %.184, i64 %i.by    ; 2 uses
  %bound0286 = icmp ult ptr %i.bg, %11
  %bound1287 = icmp ult ptr %.184, %i.bz
  %found.conflict288 = and i1 %bound0286, %bound1287
  %conflict.rdx = or i1 %found.conflict285, %found.conflict288
  %bound0289 = icmp ult ptr %.080, %11
  %bound1290 = icmp ult ptr %.184, %i.ca
  %found.conflict291 = and i1 %bound0289, %bound1290
  %conflict.rdx292 = or i1 %conflict.rdx, %found.conflict291
  br i1 %conflict.rdx292, label %.lr.ph.i49.preheader311, label %vector.ph293

vector.ph293:                                     ; preds = %vector.memcheck282
  %n.vec294 = and i64 %i.bu, 9223372036854775804  ; 3 uses
  %i.cb = shl i64 %n.vec294, 2                    ; 3 uses
  %i.cc = getelementptr i8, ptr %i.bg, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %.080, i64 %i.cb
  %i.ce = getelementptr i8, ptr %.184, i64 %i.cb
  br label %vector.body295

vector.body295:                                   ; preds = %vector.body295, %vector.ph293
  %index296 = phi i64 [ 0, %vector.ph293 ], [ %index.next302, %vector.body295 ] ; 2 uses
  %i.cf = shl i64 %index296, 2                    ; 3 uses
  %next.gep297 = getelementptr i8, ptr %i.bg, i64 %i.cf
  %next.gep298 = getelementptr i8, ptr %.080, i64 %i.cf ; 3 uses
  %next.gep299 = getelementptr i8, ptr %.184, i64 %i.cf ; 2 uses
  %wide.load300 = load <4 x i32>, ptr %next.gep298, align 4, !tbaa !247, !alias.scope !1945, !noalias !1946
  store <4 x i32> %wide.load300, ptr %next.gep297, align 4, !tbaa !247, !alias.scope !1947, !noalias !1948
  store <4 x i32> zeroinitializer, ptr %next.gep298, align 4, !tbaa !247, !alias.scope !1945, !noalias !1946
  %wide.load301 = load <4 x i32>, ptr %next.gep299, align 4, !tbaa !247, !alias.scope !1946
  store <4 x i32> %wide.load301, ptr %next.gep298, align 4, !tbaa !247, !alias.scope !1945, !noalias !1946
  store <4 x i32> zeroinitializer, ptr %next.gep299, align 4, !tbaa !247, !alias.scope !1946
  %index.next302 = add nuw i64 %index296, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next302, %n.vec294
  br i1 %i.cg, label %middle.block303, label %vector.body295, !llvm.loop !1935

middle.block303:                                  ; preds = %vector.body295
  %cmp.n304 = icmp eq i64 %i.bu, %n.vec294
  br i1 %cmp.n304, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i49.preheader311

.lr.ph.i49.preheader311:                          ; preds = %vector.memcheck282, %.lr.ph.i49.preheader, %middle.block303
  %.012.i.ph = phi ptr [ %i.bg, %vector.memcheck282 ], [ %i.bg, %.lr.ph.i49.preheader ], [ %i.cc, %middle.block303 ] ; 2 uses
  %.0711.i.ph = phi ptr [ %.080, %vector.memcheck282 ], [ %.080, %.lr.ph.i49.preheader ], [ %i.cd, %middle.block303 ] ; 2 uses
  %.0810.i.ph = phi ptr [ %.184, %vector.memcheck282 ], [ %.184, %.lr.ph.i49.preheader ], [ %i.ce, %middle.block303 ] ; 3 uses
  %.0810.i.ph356 = ptrtoaddr ptr %.0810.i.ph to i64
  %i.ch = sub i64 %i.br, %.0810.i.ph356           ; 2 uses
  %i.ci = lshr i64 %i.ch, 2
  %i.cj = add nuw nsw i64 %i.ci, 1
  %xtraiter = and i64 %i.cj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i49.prol.loopexit, label %.lr.ph.i49.prol

.lr.ph.i49.prol:                                  ; preds = %.lr.ph.i49.preheader311, %.lr.ph.i49.prol
  %.012.i.prol = phi ptr [ %i.cm, %.lr.ph.i49.prol ], [ %.012.i.ph, %.lr.ph.i49.preheader311 ] ; 2 uses
  %.0711.i.prol = phi ptr [ %i.cl, %.lr.ph.i49.prol ], [ %.0711.i.ph, %.lr.ph.i49.preheader311 ] ; 4 uses
  %.0810.i.prol = phi ptr [ %i.ck, %.lr.ph.i49.prol ], [ %.0810.i.ph, %.lr.ph.i49.preheader311 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i49.prol ], [ 0, %.lr.ph.i49.preheader311 ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.0810.i.prol, i64 4 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0711.i.prol, i64 4 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.prol, i64 4 ; 3 uses
  %i.cn = load i32, ptr %.0711.i.prol, align 4, !tbaa !247
  store i32 %i.cn, ptr %.012.i.prol, align 4, !tbaa !247
  store i32 0, ptr %.0711.i.prol, align 4, !tbaa !247
  %i.co = load i32, ptr %.0810.i.prol, align 4, !tbaa !247
  store i32 %i.co, ptr %.0711.i.prol, align 4, !tbaa !247
  store i32 0, ptr %.0810.i.prol, align 4, !tbaa !247
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i49.prol.loopexit, label %.lr.ph.i49.prol, !llvm.loop !1936

.lr.ph.i49.prol.loopexit:                         ; preds = %.lr.ph.i49.prol, %.lr.ph.i49.preheader311
  %.lcssa353.unr = phi ptr [ poison, %.lr.ph.i49.preheader311 ], [ %i.cm, %.lr.ph.i49.prol ]
  %.012.i.unr = phi ptr [ %.012.i.ph, %.lr.ph.i49.preheader311 ], [ %i.cm, %.lr.ph.i49.prol ]
  %.0711.i.unr = phi ptr [ %.0711.i.ph, %.lr.ph.i49.preheader311 ], [ %i.cl, %.lr.ph.i49.prol ]
  %.0810.i.unr = phi ptr [ %.0810.i.ph, %.lr.ph.i49.preheader311 ], [ %i.ck, %.lr.ph.i49.prol ]
  %i.cp = icmp ult i64 %i.ch, 12
  br i1 %i.cp, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %.lr.ph.i49.prol.loopexit, %.lr.ph.i49
  %.012.i = phi ptr [ %i.dh, %.lr.ph.i49 ], [ %.012.i.unr, %.lr.ph.i49.prol.loopexit ] ; 5 uses
  %.0711.i = phi ptr [ %i.dg, %.lr.ph.i49 ], [ %.0711.i.unr, %.lr.ph.i49.prol.loopexit ] ; 7 uses
  %.0810.i = phi ptr [ %i.df, %.lr.ph.i49 ], [ %.0810.i.unr, %.lr.ph.i49.prol.loopexit ] ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0810.i, i64 4 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0711.i, i64 4 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i, i64 4
  %i.ct = load i32, ptr %.0711.i, align 4, !tbaa !247
  store i32 %i.ct, ptr %.012.i, align 4, !tbaa !247
  store i32 0, ptr %.0711.i, align 4, !tbaa !247
  %i.cu = load i32, ptr %.0810.i, align 4, !tbaa !247
  store i32 %i.cu, ptr %.0711.i, align 4, !tbaa !247
  store i32 0, ptr %.0810.i, align 4, !tbaa !247
  %i.cv = getelementptr inbounds nuw i8, ptr %.0810.i, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0711.i, i64 8 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i, i64 8
  %i.cy = load i32, ptr %i.cr, align 4, !tbaa !247
  store i32 %i.cy, ptr %i.cs, align 4, !tbaa !247
  store i32 0, ptr %i.cr, align 4, !tbaa !247
  %i.cz = load i32, ptr %i.cq, align 4, !tbaa !247
  store i32 %i.cz, ptr %i.cr, align 4, !tbaa !247
  store i32 0, ptr %i.cq, align 4, !tbaa !247
  %i.da = getelementptr inbounds nuw i8, ptr %.0810.i, i64 12 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0711.i, i64 12 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.012.i, i64 12
  %i.dd = load i32, ptr %i.cw, align 4, !tbaa !247
  store i32 %i.dd, ptr %i.cx, align 4, !tbaa !247
  store i32 0, ptr %i.cw, align 4, !tbaa !247
  %i.de = load i32, ptr %i.cv, align 4, !tbaa !247
  store i32 %i.de, ptr %i.cw, align 4, !tbaa !247
  store i32 0, ptr %i.cv, align 4, !tbaa !247
  %i.df = getelementptr inbounds nuw i8, ptr %.0810.i, i64 16 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0711.i, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i, i64 16 ; 2 uses
  %i.di = load i32, ptr %i.db, align 4, !tbaa !247
  store i32 %i.di, ptr %i.dc, align 4, !tbaa !247
  store i32 0, ptr %i.db, align 4, !tbaa !247
  %i.dj = load i32, ptr %i.da, align 4, !tbaa !247
  store i32 %i.dj, ptr %i.db, align 4, !tbaa !247
  store i32 0, ptr %i.da, align 4, !tbaa !247
  %.not.i50.3 = icmp eq ptr %i.df, %i.z
  br i1 %.not.i50.3, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i49, !llvm.loop !1937

bb.w:                                             ; preds = %bb.u
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.dk = mul i64 %indvar, %.idx                  ; 2 uses
  %i.dl = add i64 %i.g, %i.dk                     ; 2 uses
  %i.dm = sub i64 %i.dl, %.184260                 ; 2 uses
  %i.dn = lshr i64 %i.dm, 2
  %i.do = add nuw nsw i64 %i.dn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dm, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader309, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.dp = add i64 %i.c, %i.dk
  %i.dq = sub i64 %i.dp, %.184260
  %i.dr = and i64 %i.dq, -4
  %i.ds = add i64 %i.dr, 4                        ; 2 uses
  %i.dt = getelementptr i8, ptr %i.bg, i64 %i.ds
  %i.du = getelementptr i8, ptr %.184, i64 %i.ds
  %bound0 = icmp ult ptr %i.bg, %i.du
  %bound1 = icmp ult ptr %.184, %i.dt
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader309, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.do, 9223372036854775800     ; 3 uses
  %i.dv = shl i64 %n.vec, 2                       ; 2 uses
  %i.dw = getelementptr i8, ptr %i.bg, i64 %i.dv  ; 2 uses
  %i.dx = getelementptr i8, ptr %.184, i64 %i.dv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dy = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bg, i64 %i.dy ; 2 uses
  %next.gep261 = getelementptr i8, ptr %.184, i64 %i.dy ; 3 uses
  %i.dz = getelementptr i8, ptr %next.gep261, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep261, align 4, !tbaa !247, !alias.scope !1949
  %wide.load262 = load <4 x i32>, ptr %i.dz, align 4, !tbaa !247, !alias.scope !1949
  %i.ea = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !247, !alias.scope !1950, !noalias !1949
  store <4 x i32> %wide.load262, ptr %i.ea, align 4, !tbaa !247, !alias.scope !1950, !noalias !1949
  store <4 x i32> zeroinitializer, ptr %next.gep261, align 4, !tbaa !247, !alias.scope !1949
  store <4 x i32> zeroinitializer, ptr %i.dz, align 4, !tbaa !247, !alias.scope !1949
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !1941

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.do, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader309

.lr.ph.i.i.preheader309:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph.i.i.preheader ], [ %i.dw, %middle.block ] ; 2 uses
  %.079.i.i.ph = phi ptr [ %.184, %vector.memcheck ], [ %.184, %.lr.ph.i.i.preheader ], [ %i.dx, %middle.block ] ; 3 uses
  %.079.i.i.ph357 = ptrtoaddr ptr %.079.i.i.ph to i64
  %i.ec = sub i64 %i.dl, %.079.i.i.ph357          ; 2 uses
  %i.ed = lshr i64 %i.ec, 2
  %i.ee = add nuw nsw i64 %i.ed, 1
  %xtraiter358 = and i64 %i.ee, 7                 ; 2 uses
  %lcmp.mod359.not = icmp eq i64 %xtraiter358, 0
  br i1 %lcmp.mod359.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader309, %.lr.ph.i.i.prol
  %.010.i.i.prol = phi ptr [ %i.eh, %.lr.ph.i.i.prol ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader309 ] ; 2 uses
  %.079.i.i.prol = phi ptr [ %i.eg, %.lr.ph.i.i.prol ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader309 ] ; 3 uses
  %prol.iter360 = phi i64 [ %prol.iter360.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader309 ]
  %i.ef = load i32, ptr %.079.i.i.prol, align 4, !tbaa !247
  store i32 %i.ef, ptr %.010.i.i.prol, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i.prol, align 4, !tbaa !247
  %i.eg = getelementptr inbounds nuw i8, ptr %.079.i.i.prol, i64 4 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.010.i.i.prol, i64 4 ; 3 uses
  %prol.iter360.next = add i64 %prol.iter360, 1   ; 2 uses
  %prol.iter360.cmp.not = icmp eq i64 %prol.iter360.next, %xtraiter358
  br i1 %prol.iter360.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1942

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader309
  %.lcssa354.unr = phi ptr [ poison, %.lr.ph.i.i.preheader309 ], [ %i.eh, %.lr.ph.i.i.prol ]
  %.010.i.i.unr = phi ptr [ %.010.i.i.ph, %.lr.ph.i.i.preheader309 ], [ %i.eh, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %.079.i.i.ph, %.lr.ph.i.i.preheader309 ], [ %i.eg, %.lr.ph.i.i.prol ]
  %i.ei = icmp ult i64 %i.ec, 28
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEES8_S8_S8_SI_NS0_7move_opEEET3_T_SL_T0_T1_RT2_SO_SK_NS0_9iter_sizeISN_E4typeESS_SS_SS_T4_bT5_:bb.a
bb.g:                                             ; preds = %bb.h, %.outer.i.i
  %.sroa.027.1.i = phi ptr [ %.sroa.027.0.i, %.outer.i.i ], [ %i.au, %bb.h ] ; 2 uses
  %.sroa.017.0.i.i = phi ptr [ %.sroa.017.0.ph.i.i, %.outer.i.i ], [ %i.an, %bb.h ] ; 3 uses
  %i.an = getelementptr inbounds i8, ptr %.sroa.017.0.i.i, i64 -4 ; 5 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !247, !noalias !2148 ; 2 uses
  %i.ap = load i32, ptr %i.am, align 4, !tbaa !247, !noalias !2148 ; 2 uses
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %.split.i.i, label %bb.h

.split.i.i:                                       ; preds = %bb.g
  %i.ar = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i.i, i64 -4 ; 4 uses
  %i.as = getelementptr inbounds i8, ptr %.sroa.027.1.i, i64 -4 ; 3 uses
  store i32 %i.ap, ptr %i.as, align 4, !tbaa !247, !noalias !2148
  store i32 0, ptr %i.am, align 4, !tbaa !247, !noalias !2148
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !247, !noalias !2148
  store i32 %i.at, ptr %i.am, align 4, !tbaa !247, !noalias !2148
  store i32 0, ptr %i.ar, align 4, !tbaa !247, !noalias !2148
  %.not27.i.i = icmp eq ptr %i.ar, %i.ae
  br i1 %.not27.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.outer.i.i, !llvm.loop !68

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds i8, ptr %.sroa.027.1.i, i64 -4 ; 3 uses
  store i32 %i.ao, ptr %i.au, align 4, !tbaa !247, !noalias !2148
  store i32 0, ptr %i.an, align 4, !tbaa !247, !noalias !2148
  %.not26.i.i = icmp eq ptr %i.an, %i.aj
  br i1 %.not26.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %bb.g, !llvm.loop !68

bb.i:                                             ; preds = %bb.e
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit, label %.outer.i8.i

.outer.i8.i:                                      ; preds = %bb.i, %.split.i14.i
  %.sroa.020.0.i = phi ptr [ %i.ba, %.split.i14.i ], [ %i.ak, %bb.i ]
  %.sroa.010.0.ph.i9.i = phi ptr [ %i.av, %.split.i14.i ], [ %i.ah, %bb.i ] ; 2 uses
  %.sroa.013.0.ph.i10.i = phi ptr [ %i.az, %.split.i14.i ], [ %i.g, %bb.i ] ; 2 uses
  %.sroa.017.0.ph.i11.i = phi ptr [ %.sroa.017.0.i12.i, %.split.i14.i ], [ %i.al, %bb.i ]
  %i.av = getelementptr inbounds i8, ptr %.sroa.010.0.ph.i9.i, i64 -4 ; 5 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.outer.i8.i
  %.sroa.020.1.i = phi ptr [ %.sroa.020.0.i, %.outer.i8.i ], [ %i.bc, %bb.k ] ; 2 uses
  %.sroa.017.0.i12.i = phi ptr [ %.sroa.017.0.ph.i11.i, %.outer.i8.i ], [ %i.aw, %bb.k ] ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %.sroa.017.0.i12.i, i64 -4 ; 5 uses
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !247, !noalias !2149 ; 2 uses
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !247, !noalias !2149 ; 2 uses
  %.not26.i13.i = icmp slt i32 %i.ax, %i.ay
  br i1 %.not26.i13.i, label %bb.k, label %.split.i14.i

.split.i14.i:                                     ; preds = %bb.j
  %i.az = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i10.i, i64 -4 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -4 ; 3 uses
  store i32 %i.ax, ptr %i.ba, align 4, !tbaa !247, !noalias !2149
  store i32 0, ptr %i.av, align 4, !tbaa !247, !noalias !2149
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !247, !noalias !2149
  store i32 %i.bb, ptr %i.av, align 4, !tbaa !247, !noalias !2149
  store i32 0, ptr %i.az, align 4, !tbaa !247, !noalias !2149
  %.not28.i.i = icmp eq ptr %i.az, %i.ae
  br i1 %.not28.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.outer.i8.i, !llvm.loop !69

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -4 ; 3 uses
  store i32 %i.ay, ptr %i.bc, align 4, !tbaa !247, !noalias !2149
  store i32 0, ptr %i.aw, align 4, !tbaa !247, !noalias !2149
  %.not27.i19.i = icmp eq ptr %i.aw, %i.aj
  br i1 %.not27.i19.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !69

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit
  br i1 %11, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.n
  %.sroa.019.0.i.ph = phi ptr [ %i.bi, %bb.n ], [ %i.ak, %bb.m ]
  %.sroa.07.0.i.i.ph = phi ptr [ %i.bj, %bb.n ], [ %i.g, %bb.m ] ; 3 uses
  %.sroa.012.0.i.i.ph = phi ptr [ %.sroa.012.0.i.i, %bb.n ], [ %i.al, %bb.m ]
  %i.bd = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.o
  %.sroa.019.0.i = phi ptr [ %i.bi, %bb.o ], [ %.sroa.019.0.i.ph, %.preheader.i.i.outer ]
  %.sroa.012.0.i.i = phi ptr [ %i.be, %bb.o ], [ %.sroa.012.0.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %i.be = getelementptr inbounds i8, ptr %.sroa.012.0.i.i, i64 -4 ; 5 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !247, !noalias !2150 ; 2 uses
  %i.bg = load i32, ptr %i.bd, align 4, !tbaa !247, !noalias !2150 ; 2 uses
  %i.bh = icmp slt i32 %i.bf, %i.bg
  %i.bi = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -4 ; 6 uses
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.bj = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4 ; 3 uses
  store i32 %i.bg, ptr %i.bi, align 4, !tbaa !247, !noalias !2150
  store i32 0, ptr %i.bj, align 4, !tbaa !247, !noalias !2150
  %i.bk = icmp eq ptr %i.bj, %i.ae
  br i1 %i.bk, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !66

bb.o:                                             ; preds = %.preheader.i.i
  store i32 %i.bf, ptr %i.bi, align 4, !tbaa !247, !noalias !2150
  store i32 0, ptr %i.be, align 4, !tbaa !247, !noalias !2150
  %i.bl = icmp eq ptr %i.be, %i.aj
  br i1 %i.bl, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !66

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer

.preheader.i6.i.outer:                            ; preds = %bb.p, %bb.q
  %.sroa.013.0.i.ph = phi ptr [ %i.bq, %bb.q ], [ %i.ak, %bb.p ]
  %.sroa.07.0.i7.i.ph = phi ptr [ %i.br, %bb.q ], [ %i.g, %bb.p ] ; 3 uses
  %.sroa.012.0.i8.i.ph = phi ptr [ %.sroa.012.0.i8.i, %bb.q ], [ %i.al, %bb.p ]
  %i.bm = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4
  br label %.preheader.i6.i

.preheader.i6.i:                                  ; preds = %.preheader.i6.i.outer, %bb.r
  %.sroa.013.0.i = phi ptr [ %i.bq, %bb.r ], [ %.sroa.013.0.i.ph, %.preheader.i6.i.outer ]
  %.sroa.012.0.i8.i = phi ptr [ %i.bn, %bb.r ], [ %.sroa.012.0.i8.i.ph, %.preheader.i6.i.outer ] ; 3 uses
  %i.bn = getelementptr inbounds i8, ptr %.sroa.012.0.i8.i, i64 -4 ; 5 uses
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !247, !noalias !2151 ; 2 uses
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !247, !noalias !2151 ; 2 uses
  %.not18.i.i = icmp slt i32 %i.bo, %i.bp
  %i.bq = getelementptr inbounds i8, ptr %.sroa.013.0.i, i64 -4 ; 6 uses
  br i1 %.not18.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i6.i
  %i.br = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4 ; 3 uses
  store i32 %i.bo, ptr %i.bq, align 4, !tbaa !247, !noalias !2151
  store i32 0, ptr %i.br, align 4, !tbaa !247, !noalias !2151
  %i.bs = icmp eq ptr %i.br, %i.ae
  br i1 %i.bs, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer, !llvm.loop !70

bb.r:                                             ; preds = %.preheader.i6.i
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !247, !noalias !2151
  store i32 0, ptr %i.bn, align 4, !tbaa !247, !noalias !2151
  %i.bt = icmp eq ptr %i.bn, %i.aj
  br i1 %i.bt, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i6.i, !llvm.loop !70

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split: ; preds = %.split.i14.i, %.split.i.i, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.h, %bb.p, %bb.m
  %.sroa.017.124.i16.sink.i.sink = phi ptr [ %i.an, %bb.h ], [ %i.aw, %bb.k ], [ %.sroa.012.0.i8.i, %bb.q ], [ %.sroa.012.0.i.i, %bb.n ], [ %i.al, %bb.p ], [ %i.al, %bb.m ], [ %.sroa.017.0.i.i, %.split.i.i ], [ %i.be, %bb.o ], [ %i.bn, %bb.r ], [ %.sroa.017.0.i12.i, %.split.i14.i ]
  %.sroa.013.123.i17.sink.i.sink = phi ptr [ %.sroa.013.0.ph.i.i, %bb.h ], [ %.sroa.013.0.ph.i10.i, %bb.k ], [ %i.ae, %bb.q ], [ %i.ae, %bb.n ], [ %i.g, %bb.p ], [ %i.g, %bb.m ], [ %i.ae, %.split.i.i ], [ %.sroa.07.0.i.i.ph, %bb.o ], [ %.sroa.07.0.i7.i.ph, %bb.r ], [ %i.ae, %.split.i14.i ]
  %.sroa.064.0.ph = phi ptr [ %i.au, %bb.h ], [ %i.bc, %bb.k ], [ %i.bq, %bb.r ], [ %i.bi, %bb.o ], [ %i.ak, %bb.p ], [ %i.ak, %bb.m ], [ %i.as, %.split.i.i ], [ %i.bi, %bb.n ], [ %i.bq, %bb.q ], [ %i.ba, %.split.i14.i ]
  %.sroa.069.0.ph = phi ptr [ %.sroa.010.0.ph.i.i, %bb.h ], [ %.sroa.010.0.ph.i9.i, %bb.k ], [ %i.ah, %bb.r ], [ %i.ah, %bb.o ], [ %i.ah, %bb.p ], [ %i.ah, %bb.m ], [ %i.am, %.split.i.i ], [ %i.ah, %bb.n ], [ %i.ah, %bb.q ], [ %i.av, %.split.i14.i ]
  store ptr %.sroa.017.124.i16.sink.i.sink, ptr %4, align 8, !tbaa !330, !noalias !322
  store ptr %.sroa.013.123.i17.sink.i.sink, ptr %3, align 8, !tbaa !330, !noalias !322
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.064.0 = phi ptr [ %i.ak, %bb.f ], [ %i.ak, %bb.i ], [ %.sroa.064.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split ] ; 17 uses
  %.sroa.069.0 = phi ptr [ %i.ah, %bb.f ], [ %i.ah, %bb.i ], [ %.sroa.069.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split ] ; 10 uses
  store ptr %.sroa.064.0, ptr %6, align 8, !tbaa !330
  %i.bu = load ptr, ptr %3, align 8, !tbaa !330   ; 18 uses
  %i.bv = ptrtoaddr ptr %i.bu to i64              ; 4 uses
  %i.bw = icmp eq ptr %i.bu, %.sroa.064.0
  br i1 %i.bw, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.069.0, %i.ai
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.t, %.lr.ph.i28
  %.sroa.052.0 = phi ptr [ %i.bz, %.lr.ph.i28 ], [ %i.bu, %bb.t ]
  %i.bx = phi ptr [ %i.by, %.lr.ph.i28 ], [ %.sroa.069.0, %bb.t ]
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 5 uses
  %i.bz = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -4 ; 4 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !247, !noalias !2152
  store i32 0, ptr %i.by, align 4, !tbaa !247, !noalias !2152
  %i.cb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2152
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2152
  %i.cd = load i32, ptr %i.bz, align 4, !tbaa !247, !noalias !2152
  store i32 %i.cd, ptr %i.by, align 4, !tbaa !247, !noalias !2152
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !247, !noalias !2152
  %i.ce = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2152
  %i.cf = add i32 %i.ce, -1
  store i32 %i.cf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2152
  %.not.i = icmp eq ptr %i.by, %i.ai
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i28, !llvm.loop !64

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.bu, %i.ae           ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %bb.v
  %.reass = add i64 %i.bv, %invariant.op
  %i.cg = sub i64 %.reass, %i.h                   ; 2 uses
  %i.ch = lshr i64 %i.cg, 2
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check330 = icmp ult i64 %i.cg, 44
  br i1 %min.iters.check330, label %.lr.ph.i29.preheader364, label %vector.memcheck331

vector.memcheck331:                               ; preds = %.lr.ph.i29.preheader
  %i.cj = sub i64 %i.bv, %i.h
  %i.ck = add i64 %i.c, %i.cj
  %.not359 = and i64 %i.ck, -4
  %i.cl = xor i64 %.not359, -4                    ; 3 uses
  %i.cm = getelementptr i8, ptr %.sroa.064.0, i64 %i.cl ; 2 uses
  %i.cn = getelementptr i8, ptr %.sroa.069.0, i64 %i.cl ; 2 uses
  %bound0332 = icmp ult ptr %i.cm, %.sroa.069.0
  %bound0332.a = icmp ult ptr %i.cn, %.sroa.064.0
  %found.conflict334 = and i1 %bound0332, %bound0332.a
  %12 = getelementptr i8, ptr %i.bu, i64 %i.cl    ; 2 uses
  %bound0335 = icmp ult ptr %i.cm, %i.bu
  %bound1336 = icmp ult ptr %12, %.sroa.064.0
  %found.conflict337 = and i1 %bound0335, %bound1336
  %conflict.rdx = or i1 %found.conflict334, %found.conflict337
  %bound0338 = icmp ult ptr %i.cn, %i.bu
  %bound1339 = icmp ult ptr %12, %.sroa.069.0
  %found.conflict340 = and i1 %bound0338, %bound1339
  %conflict.rdx341 = or i1 %conflict.rdx, %found.conflict340
  br i1 %conflict.rdx341, label %.lr.ph.i29.preheader364, label %vector.ph342

vector.ph342:                                     ; preds = %vector.memcheck331
  %n.vec343 = and i64 %i.ci, 9223372036854775800  ; 3 uses
  %i.co = mul i64 %n.vec343, -4                   ; 3 uses
  %i.cp = getelementptr i8, ptr %.sroa.069.0, i64 %i.co
  %i.cq = getelementptr i8, ptr %.sroa.064.0, i64 %i.co ; 2 uses
  %i.cr = getelementptr i8, ptr %i.bu, i64 %i.co
  br label %vector.body344

vector.body344:                                   ; preds = %vector.body344, %vector.ph342
  %index345 = phi i64 [ 0, %vector.ph342 ], [ %index.next353, %vector.body344 ] ; 2 uses
  %i.cs = mul i64 %index345, -4                   ; 3 uses
  %next.gep346 = getelementptr i8, ptr %.sroa.069.0, i64 %i.cs ; 2 uses
  %next.gep347 = getelementptr i8, ptr %.sroa.064.0, i64 %i.cs ; 2 uses
  %next.gep348 = getelementptr i8, ptr %i.bu, i64 %i.cs ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %next.gep346, i64 -16 ; 3 uses
  %i.cu = getelementptr inbounds i8, ptr %next.gep346, i64 -32 ; 3 uses
  %wide.load349 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !247, !alias.scope !2153, !noalias !2154
  %wide.load350 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !247, !alias.scope !2153, !noalias !2154
  %i.cv = getelementptr inbounds i8, ptr %next.gep347, i64 -16
  %i.cw = getelementptr inbounds i8, ptr %next.gep347, i64 -32
  store <4 x i32> %wide.load349, ptr %i.cv, align 4, !tbaa !247, !alias.scope !2155, !noalias !2156
  store <4 x i32> %wide.load350, ptr %i.cw, align 4, !tbaa !247, !alias.scope !2155, !noalias !2156
  store <4 x i32> zeroinitializer, ptr %i.ct, align 4, !tbaa !247, !alias.scope !2153, !noalias !2154
  store <4 x i32> zeroinitializer, ptr %i.cu, align 4, !tbaa !247, !alias.scope !2153, !noalias !2154
  %i.cx = getelementptr inbounds i8, ptr %next.gep348, i64 -16 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %next.gep348, i64 -32 ; 2 uses
  %wide.load351 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !247, !alias.scope !2157, !noalias !2158
  %wide.load352 = load <4 x i32>, ptr %i.cy, align 4, !tbaa !247, !alias.scope !2157, !noalias !2158
  store <4 x i32> %wide.load351, ptr %i.ct, align 4, !tbaa !247, !alias.scope !2153, !noalias !2154
  store <4 x i32> %wide.load352, ptr %i.cu, align 4, !tbaa !247, !alias.scope !2153, !noalias !2154
  store <4 x i32> zeroinitializer, ptr %i.cx, align 4, !tbaa !247, !alias.scope !2157, !noalias !2158
  store <4 x i32> zeroinitializer, ptr %i.cy, align 4, !tbaa !247, !alias.scope !2157, !noalias !2158
  %index.next353 = add nuw i64 %index345, 8       ; 2 uses
  %i.cz = icmp eq i64 %index.next353, %n.vec343
  br i1 %i.cz, label %middle.block354, label %vector.body344, !llvm.loop !2136

middle.block354:                                  ; preds = %vector.body344
  %cmp.n355 = icmp eq i64 %i.ci, %n.vec343
  br i1 %cmp.n355, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i29.preheader364

.lr.ph.i29.preheader364:                          ; preds = %vector.memcheck331, %.lr.ph.i29.preheader, %middle.block354
  %.sroa.046.0.ph = phi ptr [ %.sroa.069.0, %vector.memcheck331 ], [ %.sroa.069.0, %.lr.ph.i29.preheader ], [ %i.cp, %middle.block354 ]
  %.sroa.045.0.ph = phi ptr [ %.sroa.064.0, %vector.memcheck331 ], [ %.sroa.064.0, %.lr.ph.i29.preheader ], [ %i.cq, %middle.block354 ]
  %.ph365 = phi ptr [ %i.bu, %vector.memcheck331 ], [ %i.bu, %.lr.ph.i29.preheader ], [ %i.cr, %middle.block354 ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader364, %.lr.ph.i29
  %.sroa.046.0 = phi ptr [ %i.dc, %.lr.ph.i29 ], [ %.sroa.046.0.ph, %.lr.ph.i29.preheader364 ]
  %.sroa.045.0 = phi ptr [ %i.dd, %.lr.ph.i29 ], [ %.sroa.045.0.ph, %.lr.ph.i29.preheader364 ]
  %i.da = phi ptr [ %i.db, %.lr.ph.i29 ], [ %.ph365, %.lr.ph.i29.preheader364 ]
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -4 ; 4 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 4 uses
  %i.dd = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4 ; 3 uses
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !247, !noalias !2158
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !247, !noalias !2158
  store i32 0, ptr %i.dc, align 4, !tbaa !247, !noalias !2158
  %i.df = load i32, ptr %i.db, align 4, !tbaa !247, !noalias !2158
  store i32 %i.df, ptr %i.dc, align 4, !tbaa !247, !noalias !2158
  store i32 0, ptr %i.db, align 4, !tbaa !247, !noalias !2158
  %.not.i30 = icmp eq ptr %i.db, %i.ae
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i29, !llvm.loop !2137

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %.reass470 = add i64 %i.bv, %invariant.op469
  %i.dg = sub i64 %.reass470, %i.h                ; 2 uses
  %i.dh = lshr i64 %i.dg, 2
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dg, 44
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader362, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.dj = sub i64 %i.bv, %i.h
  %i.dk = add i64 %i.c, %i.dj
  %.not360 = and i64 %i.dk, -4
  %i.dl = xor i64 %.not360, -4                    ; 2 uses
  %i.dm = getelementptr i8, ptr %.sroa.064.0, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.bu, i64 %i.dl
  %bound0 = icmp ult ptr %i.dm, %i.bu
  %bound1 = icmp ult ptr %i.dn, %.sroa.064.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader362, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.di, 9223372036854775800     ; 3 uses
  %i.do = mul i64 %n.vec, -4                      ; 2 uses
  %i.dp = getelementptr i8, ptr %.sroa.064.0, i64 %i.do ; 2 uses
  %i.dq = getelementptr i8, ptr %i.bu, i64 %i.do
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dr = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.064.0, i64 %i.dr ; 2 uses
  %next.gep310 = getelementptr i8, ptr %i.bu, i64 %i.dr ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %next.gep310, i64 -16 ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %next.gep310, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ds, align 4, !tbaa !247, !alias.scope !2159, !noalias !2160
  %wide.load311 = load <4 x i32>, ptr %i.dt, align 4, !tbaa !247, !alias.scope !2159, !noalias !2160
  %i.du = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.dv = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.du, align 4, !tbaa !247, !alias.scope !2161, !noalias !2162
  store <4 x i32> %wide.load311, ptr %i.dv, align 4, !tbaa !247, !alias.scope !2161, !noalias !2162
  store <4 x i32> zeroinitializer, ptr %i.ds, align 4, !tbaa !247, !alias.scope !2159, !noalias !2160
  store <4 x i32> zeroinitializer, ptr %i.dt, align 4, !tbaa !247, !alias.scope !2159, !noalias !2160
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !2145

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.di, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i.preheader362

.lr.ph.i.i.preheader362:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.064.0, %vector.memcheck ], [ %.sroa.064.0, %.lr.ph.i.i.preheader ], [ %i.dp, %middle.block ]
  %.ph = phi ptr [ %i.bu, %vector.memcheck ], [ %i.bu, %.lr.ph.i.i.preheader ], [ %i.dq, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader362, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader362 ]
  %i.dx = phi ptr [ %i.dy, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader362 ]
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -4 ; 4 uses
  %i.dz = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 3 uses
  %i.ea = load i32, ptr %i.dy, align 4, !tbaa !247, !noalias !2160
  store i32 %i.ea, ptr %i.dz, align 4, !tbaa !247, !noalias !2160
  store i32 0, ptr %i.dy, align 4, !tbaa !247, !noalias !2160
  %.not.i.i31 = icmp eq ptr %i.dy, %i.ae
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i, !llvm.loop !2146

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %middle.block354, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.ae, %bb.s ], [ %i.dz, %.lr.ph.i.i ], [ %i.bu, %bb.t ], [ %i.bz, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.dp, %middle.block ], [ %i.cq, %middle.block354 ], [ %i.dd, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !330
  %i.eb = load ptr, ptr %1, align 8, !tbaa !330   ; 4 uses
  %.neg98 = mul i64 %.018.lcssa.i, -4             ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.ae, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 -4 ; 3 uses
  %i.ee = getelementptr inbounds i8, ptr %i.eb, i64 -4 ; 2 uses
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !247
  store i32 0, ptr %i.ed, align 4, !tbaa !247
  %i.eg = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.eh = add i32 %i.eg, 1
  store i32 %i.eh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ei = load i32, ptr %i.ee, align 4, !tbaa !247
  store i32 %i.ei, ptr %i.ed, align 4, !tbaa !247
  store i32 %i.ef, ptr %i.ee, align 4, !tbaa !247
  %i.ej = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ek = add i32 %i.ej, -1
  store i32 %i.ek, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.el = load ptr, ptr %2, align 8, !tbaa !330   ; 2 uses
  %i.em = icmp eq ptr %i.ec, %i.el
  br i1 %i.em, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.en = icmp eq ptr %i.el, %i.eb
  br i1 %i.en, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.eb, %bb.y ], [ %i.ec, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !330
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, %bb.z, %.sink.split.i
  store ptr %i.ae, ptr %3, align 8, !tbaa !330
  %i.eo = load ptr, ptr %1, align 8, !tbaa !330
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 -4 ; 2 uses
  store ptr %i.ep, ptr %1, align 8, !tbaa !330
  %i.eq = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.eq to i64
  %i.er = add i64 %.0140, %.neg
  %i.es = icmp ne i64 %i.ad, 0
  %.neg24 = sext i1 %i.es to i64
  %i.et = add i64 %.sroa.speculated, %.neg24
  %i.eu = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.eu, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2147

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit, %bb.a
end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intES8_S8_NS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7move_opEEET3_T_SJ_T0_T1_RT2_SM_SI_NS0_9iter_sizeISL_E4typeESQ_SQ_SQ_T4_bT5_:bb.a
bb.g:                                             ; preds = %.split.i.i, %.outer.i.i
  %.030.i.i = phi ptr [ %.13137.i.i, %.split.i.i ], [ %.030.ph.i.i, %.outer.i.i ] ; 4 uses
  %.026.i.i = phi ptr [ %i.ah, %.split.i.i ], [ %.026.ph.i.i, %.outer.i.i ] ; 5 uses
  %.025.i.i = phi ptr [ %i.ai, %.split.i.i ], [ %.025.ph.i.i, %.outer.i.i ] ; 6 uses
  %i.ae = load i32, ptr %.025.i.i, align 4, !tbaa !247 ; 2 uses
  %i.af = load i32, ptr %.028.ph.i.i, align 4, !tbaa !247 ; 2 uses
  %i.ag = icmp slt i32 %i.ae, %i.af
  br i1 %i.ag, label %.split.i.i, label %bb.h

.split.i.i:                                       ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 4 ; 2 uses
  store i32 %i.ae, ptr %.030.i.i, align 4, !tbaa !247
  store i32 0, ptr %.025.i.i, align 4, !tbaa !247
  %i.aj = load i32, ptr %.026.i.i, align 4, !tbaa !247
  store i32 %i.aj, ptr %.025.i.i, align 4, !tbaa !247
  store i32 0, ptr %.026.i.i, align 4, !tbaa !247
  %.not43.i.i = icmp eq ptr %i.ah, %i.z
  %.13137.i.i = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 4 ; 2 uses
  br i1 %.not43.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %bb.g, !llvm.loop !55

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.028.ph.i.i, i64 4 ; 3 uses
  store i32 %i.af, ptr %.030.i.i, align 4, !tbaa !247
  store i32 0, ptr %.028.ph.i.i, align 4, !tbaa !247
  %.not42.i.i = icmp eq ptr %i.ak, %4
  %.131.i.i = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 4 ; 2 uses
  br i1 %.not42.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.outer.i.i, !llvm.loop !55

bb.i:                                             ; preds = %bb.e
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit, label %.outer.i15.i

.outer.i15.i:                                     ; preds = %bb.i, %bb.k
  %.030.ph.i16.i = phi ptr [ %.131.i33.i, %bb.k ], [ %.038124, %bb.i ]
  %.028.ph.i17.i = phi ptr [ %i.aq, %bb.k ], [ %i.ad, %bb.i ] ; 4 uses
  %.026.ph.i18.i = phi ptr [ %.026.i21.i, %bb.k ], [ %.083121, %bb.i ]
  %.025.ph.i19.i = phi ptr [ %.025.i22.i, %bb.k ], [ %i.ab, %bb.i ]
  br label %bb.j

bb.j:                                             ; preds = %.split.i24.i, %.outer.i15.i
  %.030.i20.i = phi ptr [ %.13137.i25.i, %.split.i24.i ], [ %.030.ph.i16.i, %.outer.i15.i ] ; 4 uses
  %.026.i21.i = phi ptr [ %i.an, %.split.i24.i ], [ %.026.ph.i18.i, %.outer.i15.i ] ; 5 uses
  %.025.i22.i = phi ptr [ %i.ao, %.split.i24.i ], [ %.025.ph.i19.i, %.outer.i15.i ] ; 6 uses
  %i.al = load i32, ptr %.028.ph.i17.i, align 4, !tbaa !247 ; 2 uses
  %i.am = load i32, ptr %.025.i22.i, align 4, !tbaa !247 ; 2 uses
  %.not42.i23.i = icmp slt i32 %i.al, %i.am
  br i1 %.not42.i23.i, label %bb.k, label %.split.i24.i

.split.i24.i:                                     ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %.026.i21.i, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.025.i22.i, i64 4 ; 2 uses
  store i32 %i.am, ptr %.030.i20.i, align 4, !tbaa !247
  store i32 0, ptr %.025.i22.i, align 4, !tbaa !247
  %i.ap = load i32, ptr %.026.i21.i, align 4, !tbaa !247
  store i32 %i.ap, ptr %.025.i22.i, align 4, !tbaa !247
  store i32 0, ptr %.026.i21.i, align 4, !tbaa !247
  %.not44.i.i = icmp eq ptr %i.an, %i.z
  %.13137.i25.i = getelementptr inbounds nuw i8, ptr %.030.i20.i, i64 4 ; 2 uses
  br i1 %.not44.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !56

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %.028.ph.i17.i, i64 4 ; 3 uses
  store i32 %i.al, ptr %.030.i20.i, align 4, !tbaa !247
  store i32 0, ptr %.028.ph.i17.i, align 4, !tbaa !247
  %.not43.i32.i = icmp eq ptr %i.aq, %4
  %.131.i33.i = getelementptr inbounds nuw i8, ptr %.030.i20.i, i64 4 ; 2 uses
  br i1 %.not43.i32.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.outer.i15.i, !llvm.loop !56

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  br i1 %10, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.o
  %.024.i.i.ph = phi ptr [ %i.au, %bb.o ], [ %.038124, %bb.m ]
  %.021.i.i.ph = phi ptr [ %i.ax, %bb.o ], [ %i.ad, %bb.m ] ; 4 uses
  %.0.i.i.ph = phi ptr [ %.0.i.i, %bb.o ], [ %.083121, %bb.m ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.n
  %.024.i.i = phi ptr [ %i.au, %bb.n ], [ %.024.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %.0.i.i = phi ptr [ %i.av, %bb.n ], [ %.0.i.i.ph, %.preheader.i.i.outer ] ; 5 uses
  %i.ar = load i32, ptr %.0.i.i, align 4, !tbaa !247 ; 2 uses
  %i.as = load i32, ptr %.021.i.i.ph, align 4, !tbaa !247 ; 2 uses
  %i.at = icmp slt i32 %i.ar, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 4 ; 4 uses
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 2 uses
  store i32 %i.ar, ptr %.024.i.i, align 4, !tbaa !247
  store i32 0, ptr %.0.i.i, align 4, !tbaa !247
  %i.aw = icmp eq ptr %i.av, %i.z
  br i1 %i.aw, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !53

bb.o:                                             ; preds = %.preheader.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.021.i.i.ph, i64 4 ; 3 uses
  store i32 %i.as, ptr %.024.i.i, align 4, !tbaa !247
  store i32 0, ptr %.021.i.i.ph, align 4, !tbaa !247
  %i.ay = icmp eq ptr %i.ax, %4
  br i1 %i.ay, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !53

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i13.i.outer

.preheader.i13.i.outer:                           ; preds = %bb.p, %bb.r
  %.024.i14.i.ph = phi ptr [ %i.bb, %bb.r ], [ %.038124, %bb.p ]
  %.021.i15.i.ph = phi ptr [ %i.be, %bb.r ], [ %i.ad, %bb.p ] ; 4 uses
  %.0.i16.i.ph = phi ptr [ %.0.i16.i, %bb.r ], [ %.083121, %bb.p ]
  br label %.preheader.i13.i

.preheader.i13.i:                                 ; preds = %.preheader.i13.i.outer, %bb.q
  %.024.i14.i = phi ptr [ %i.bb, %bb.q ], [ %.024.i14.i.ph, %.preheader.i13.i.outer ] ; 3 uses
  %.0.i16.i = phi ptr [ %i.bc, %bb.q ], [ %.0.i16.i.ph, %.preheader.i13.i.outer ] ; 5 uses
  %i.az = load i32, ptr %.021.i15.i.ph, align 4, !tbaa !247 ; 2 uses
  %i.ba = load i32, ptr %.0.i16.i, align 4, !tbaa !247 ; 2 uses
  %.not37.i.i = icmp slt i32 %i.az, %i.ba
  %i.bb = getelementptr inbounds nuw i8, ptr %.024.i14.i, i64 4 ; 4 uses
  br i1 %.not37.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i13.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 4 ; 2 uses
  store i32 %i.ba, ptr %.024.i14.i, align 4, !tbaa !247
  store i32 0, ptr %.0.i16.i, align 4, !tbaa !247
  %i.bd = icmp eq ptr %i.bc, %i.z
  br i1 %i.bd, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i13.i, !llvm.loop !57

bb.r:                                             ; preds = %.preheader.i13.i
  %i.be = getelementptr inbounds nuw i8, ptr %.021.i15.i.ph, i64 4 ; 3 uses
  store i32 %i.az, ptr %.024.i14.i, align 4, !tbaa !247
  store i32 0, ptr %.021.i15.i.ph, align 4, !tbaa !247
  %i.bf = icmp eq ptr %i.be, %4
  br i1 %i.bf, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i13.i.outer, !llvm.loop !57

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split: ; preds = %bb.k, %bb.h, %bb.q, %bb.r, %bb.n, %bb.o, %.split.i24.i, %.split.i.i, %bb.p, %bb.m
  %.12938.i30.sink.i.sink = phi ptr [ %.028.ph.i.i, %.split.i.i ], [ %.028.ph.i17.i, %.split.i24.i ], [ %i.be, %bb.r ], [ %i.ax, %bb.o ], [ %i.ad, %bb.p ], [ %i.ad, %bb.m ], [ %i.ak, %bb.h ], [ %.021.i.i.ph, %bb.n ], [ %.021.i15.i.ph, %bb.q ], [ %i.aq, %bb.k ]
  %.184.ph = phi ptr [ %i.z, %.split.i.i ], [ %i.z, %.split.i24.i ], [ %.0.i16.i, %bb.r ], [ %.0.i.i, %bb.o ], [ %.083121, %bb.p ], [ %.083121, %bb.m ], [ %.026.i.i, %bb.h ], [ %i.z, %bb.n ], [ %i.z, %bb.q ], [ %.026.i21.i, %bb.k ]
  %.080.ph = phi ptr [ %i.ai, %.split.i.i ], [ %i.ao, %.split.i24.i ], [ %i.ab, %bb.q ], [ %i.ab, %bb.n ], [ %i.ab, %bb.p ], [ %i.ab, %bb.m ], [ %.025.i.i, %bb.h ], [ %i.ab, %bb.o ], [ %i.ab, %bb.r ], [ %.025.i22.i, %bb.k ]
  %.ph = phi ptr [ %.13137.i.i, %.split.i.i ], [ %.13137.i25.i, %.split.i24.i ], [ %i.bb, %bb.q ], [ %i.au, %bb.n ], [ %.038124, %bb.p ], [ %.038124, %bb.m ], [ %.131.i.i, %bb.h ], [ %i.au, %bb.o ], [ %i.bb, %bb.r ], [ %.131.i33.i, %bb.k ]
  store ptr %.12938.i30.sink.i.sink, ptr %3, align 8, !tbaa !250
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.184 = phi ptr [ %.083121, %bb.i ], [ %.083121, %bb.f ], [ %.184.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split ] ; 18 uses
  %.080 = phi ptr [ %i.ab, %bb.i ], [ %i.ab, %bb.f ], [ %.080.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split ] ; 10 uses
  %i.bg = phi ptr [ %.038124, %bb.i ], [ %.038124, %bb.f ], [ %.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split ] ; 16 uses
  %.184259 = ptrtoaddr ptr %.184 to i64           ; 4 uses
  %i.bh = icmp eq ptr %.184, %i.bg
  br i1 %i.bh, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit
  br i1 %.not43, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not8.i = icmp eq ptr %.080, %i.ac
  br i1 %.not8.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %bb.t, %.lr.ph.i48
  %.010.i = phi ptr [ %i.bp, %.lr.ph.i48 ], [ %.184, %bb.t ] ; 3 uses
  %.079.i = phi ptr [ %i.bo, %.lr.ph.i48 ], [ %.080, %bb.t ] ; 4 uses
  %i.bi = load i32, ptr %.079.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i, align 4, !tbaa !247
  %i.bj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bl = load i32, ptr %.010.i, align 4, !tbaa !247
  store i32 %i.bl, ptr %.079.i, align 4, !tbaa !247
  store i32 %i.bi, ptr %.010.i, align 4, !tbaa !247
  %i.bm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bn = add i32 %i.bm, -1
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bo = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bo, %i.ac
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i48, !llvm.loop !41

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit
  %.not8.i.i = icmp eq ptr %.184, %i.z            ; 2 uses
  br i1 %.not43, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i49.preheader

.lr.ph.i49.preheader:                             ; preds = %bb.v
  %i.bq = mul i64 %indvar, %.idx                  ; 2 uses
  %i.br = add i64 %i.e, %i.bq                     ; 2 uses
  %i.bs = sub i64 %i.br, %.184259                 ; 2 uses
  %i.bt = lshr i64 %i.bs, 2
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %min.iters.check280 = icmp ult i64 %i.bs, 44
  br i1 %min.iters.check280, label %.lr.ph.i49.preheader310, label %vector.memcheck281

vector.memcheck281:                               ; preds = %.lr.ph.i49.preheader
  %i.bv = add i64 %i.c, %i.bq
  %i.bw = sub i64 %i.bv, %.184259
  %i.bx = and i64 %i.bw, -4
  %i.by = add i64 %i.bx, 4                        ; 3 uses
  %i.bz = getelementptr i8, ptr %i.bg, i64 %i.by  ; 2 uses
  %i.ca = getelementptr i8, ptr %.080, i64 %i.by  ; 2 uses
  %bound0282 = icmp ult ptr %i.bg, %i.ca
  %bound0282.a = icmp ult ptr %.080, %i.bz
  %found.conflict284 = and i1 %bound0282, %bound0282.a
  %11 = getelementptr i8, ptr %.184, i64 %i.by    ; 2 uses
  %bound0285 = icmp ult ptr %i.bg, %11
  %bound1286 = icmp ult ptr %.184, %i.bz
  %found.conflict287 = and i1 %bound0285, %bound1286
  %conflict.rdx = or i1 %found.conflict284, %found.conflict287
  %bound0288 = icmp ult ptr %.080, %11
  %bound1289 = icmp ult ptr %.184, %i.ca
  %found.conflict290 = and i1 %bound0288, %bound1289
  %conflict.rdx291 = or i1 %conflict.rdx, %found.conflict290
  br i1 %conflict.rdx291, label %.lr.ph.i49.preheader310, label %vector.ph292

vector.ph292:                                     ; preds = %vector.memcheck281
  %n.vec293 = and i64 %i.bu, 9223372036854775804  ; 3 uses
  %i.cb = shl i64 %n.vec293, 2                    ; 3 uses
  %i.cc = getelementptr i8, ptr %i.bg, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %.080, i64 %i.cb
  %i.ce = getelementptr i8, ptr %.184, i64 %i.cb
  br label %vector.body294

vector.body294:                                   ; preds = %vector.body294, %vector.ph292
  %index295 = phi i64 [ 0, %vector.ph292 ], [ %index.next301, %vector.body294 ] ; 2 uses
  %i.cf = shl i64 %index295, 2                    ; 3 uses
  %next.gep296 = getelementptr i8, ptr %i.bg, i64 %i.cf
  %next.gep297 = getelementptr i8, ptr %.080, i64 %i.cf ; 3 uses
  %next.gep298 = getelementptr i8, ptr %.184, i64 %i.cf ; 2 uses
  %wide.load299 = load <4 x i32>, ptr %next.gep297, align 4, !tbaa !247, !alias.scope !2405, !noalias !2406
  store <4 x i32> %wide.load299, ptr %next.gep296, align 4, !tbaa !247, !alias.scope !2407, !noalias !2408
  store <4 x i32> zeroinitializer, ptr %next.gep297, align 4, !tbaa !247, !alias.scope !2405, !noalias !2406
  %wide.load300 = load <4 x i32>, ptr %next.gep298, align 4, !tbaa !247, !alias.scope !2406
  store <4 x i32> %wide.load300, ptr %next.gep297, align 4, !tbaa !247, !alias.scope !2405, !noalias !2406
  store <4 x i32> zeroinitializer, ptr %next.gep298, align 4, !tbaa !247, !alias.scope !2406
  %index.next301 = add nuw i64 %index295, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next301, %n.vec293
  br i1 %i.cg, label %middle.block302, label %vector.body294, !llvm.loop !2395

middle.block302:                                  ; preds = %vector.body294
  %cmp.n303 = icmp eq i64 %i.bu, %n.vec293
  br i1 %cmp.n303, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i49.preheader310

.lr.ph.i49.preheader310:                          ; preds = %vector.memcheck281, %.lr.ph.i49.preheader, %middle.block302
  %.012.i.ph = phi ptr [ %i.bg, %vector.memcheck281 ], [ %i.bg, %.lr.ph.i49.preheader ], [ %i.cc, %middle.block302 ] ; 2 uses
  %.0711.i.ph = phi ptr [ %.080, %vector.memcheck281 ], [ %.080, %.lr.ph.i49.preheader ], [ %i.cd, %middle.block302 ] ; 2 uses
  %.0810.i.ph = phi ptr [ %.184, %vector.memcheck281 ], [ %.184, %.lr.ph.i49.preheader ], [ %i.ce, %middle.block302 ] ; 3 uses
  %.0810.i.ph355 = ptrtoaddr ptr %.0810.i.ph to i64
  %i.ch = sub i64 %i.br, %.0810.i.ph355           ; 2 uses
  %i.ci = lshr i64 %i.ch, 2
  %i.cj = add nuw nsw i64 %i.ci, 1
  %xtraiter = and i64 %i.cj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i49.prol.loopexit, label %.lr.ph.i49.prol

.lr.ph.i49.prol:                                  ; preds = %.lr.ph.i49.preheader310, %.lr.ph.i49.prol
  %.012.i.prol = phi ptr [ %i.cm, %.lr.ph.i49.prol ], [ %.012.i.ph, %.lr.ph.i49.preheader310 ] ; 2 uses
  %.0711.i.prol = phi ptr [ %i.cl, %.lr.ph.i49.prol ], [ %.0711.i.ph, %.lr.ph.i49.preheader310 ] ; 4 uses
  %.0810.i.prol = phi ptr [ %i.ck, %.lr.ph.i49.prol ], [ %.0810.i.ph, %.lr.ph.i49.preheader310 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i49.prol ], [ 0, %.lr.ph.i49.preheader310 ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.0810.i.prol, i64 4 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0711.i.prol, i64 4 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.prol, i64 4 ; 3 uses
  %i.cn = load i32, ptr %.0711.i.prol, align 4, !tbaa !247
  store i32 %i.cn, ptr %.012.i.prol, align 4, !tbaa !247
  store i32 0, ptr %.0711.i.prol, align 4, !tbaa !247
  %i.co = load i32, ptr %.0810.i.prol, align 4, !tbaa !247
  store i32 %i.co, ptr %.0711.i.prol, align 4, !tbaa !247
  store i32 0, ptr %.0810.i.prol, align 4, !tbaa !247
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i49.prol.loopexit, label %.lr.ph.i49.prol, !llvm.loop !2396

.lr.ph.i49.prol.loopexit:                         ; preds = %.lr.ph.i49.prol, %.lr.ph.i49.preheader310
  %.lcssa352.unr = phi ptr [ poison, %.lr.ph.i49.preheader310 ], [ %i.cm, %.lr.ph.i49.prol ]
  %.012.i.unr = phi ptr [ %.012.i.ph, %.lr.ph.i49.preheader310 ], [ %i.cm, %.lr.ph.i49.prol ]
  %.0711.i.unr = phi ptr [ %.0711.i.ph, %.lr.ph.i49.preheader310 ], [ %i.cl, %.lr.ph.i49.prol ]
  %.0810.i.unr = phi ptr [ %.0810.i.ph, %.lr.ph.i49.preheader310 ], [ %i.ck, %.lr.ph.i49.prol ]
  %i.cp = icmp ult i64 %i.ch, 12
  br i1 %i.cp, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %.lr.ph.i49.prol.loopexit, %.lr.ph.i49
  %.012.i = phi ptr [ %i.dh, %.lr.ph.i49 ], [ %.012.i.unr, %.lr.ph.i49.prol.loopexit ] ; 5 uses
  %.0711.i = phi ptr [ %i.dg, %.lr.ph.i49 ], [ %.0711.i.unr, %.lr.ph.i49.prol.loopexit ] ; 7 uses
  %.0810.i = phi ptr [ %i.df, %.lr.ph.i49 ], [ %.0810.i.unr, %.lr.ph.i49.prol.loopexit ] ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0810.i, i64 4 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0711.i, i64 4 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i, i64 4
  %i.ct = load i32, ptr %.0711.i, align 4, !tbaa !247
  store i32 %i.ct, ptr %.012.i, align 4, !tbaa !247
  store i32 0, ptr %.0711.i, align 4, !tbaa !247
  %i.cu = load i32, ptr %.0810.i, align 4, !tbaa !247
  store i32 %i.cu, ptr %.0711.i, align 4, !tbaa !247
  store i32 0, ptr %.0810.i, align 4, !tbaa !247
  %i.cv = getelementptr inbounds nuw i8, ptr %.0810.i, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0711.i, i64 8 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i, i64 8
  %i.cy = load i32, ptr %i.cr, align 4, !tbaa !247
  store i32 %i.cy, ptr %i.cs, align 4, !tbaa !247
  store i32 0, ptr %i.cr, align 4, !tbaa !247
  %i.cz = load i32, ptr %i.cq, align 4, !tbaa !247
  store i32 %i.cz, ptr %i.cr, align 4, !tbaa !247
  store i32 0, ptr %i.cq, align 4, !tbaa !247
  %i.da = getelementptr inbounds nuw i8, ptr %.0810.i, i64 12 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0711.i, i64 12 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.012.i, i64 12
  %i.dd = load i32, ptr %i.cw, align 4, !tbaa !247
  store i32 %i.dd, ptr %i.cx, align 4, !tbaa !247
  store i32 0, ptr %i.cw, align 4, !tbaa !247
  %i.de = load i32, ptr %i.cv, align 4, !tbaa !247
  store i32 %i.de, ptr %i.cw, align 4, !tbaa !247
  store i32 0, ptr %i.cv, align 4, !tbaa !247
  %i.df = getelementptr inbounds nuw i8, ptr %.0810.i, i64 16 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0711.i, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i, i64 16 ; 2 uses
  %i.di = load i32, ptr %i.db, align 4, !tbaa !247
  store i32 %i.di, ptr %i.dc, align 4, !tbaa !247
  store i32 0, ptr %i.db, align 4, !tbaa !247
  %i.dj = load i32, ptr %i.da, align 4, !tbaa !247
  store i32 %i.dj, ptr %i.db, align 4, !tbaa !247
  store i32 0, ptr %i.da, align 4, !tbaa !247
  %.not.i50.3 = icmp eq ptr %i.df, %i.z
  br i1 %.not.i50.3, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i49, !llvm.loop !2397

bb.w:                                             ; preds = %bb.u
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.dk = mul i64 %indvar, %.idx                  ; 2 uses
  %i.dl = add i64 %i.g, %i.dk                     ; 2 uses
  %i.dm = sub i64 %i.dl, %.184259                 ; 2 uses
  %i.dn = lshr i64 %i.dm, 2
  %i.do = add nuw nsw i64 %i.dn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dm, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader308, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.dp = add i64 %i.c, %i.dk
  %i.dq = sub i64 %i.dp, %.184259
  %i.dr = and i64 %i.dq, -4
  %i.ds = add i64 %i.dr, 4                        ; 2 uses
  %i.dt = getelementptr i8, ptr %i.bg, i64 %i.ds
  %i.du = getelementptr i8, ptr %.184, i64 %i.ds
  %bound0 = icmp ult ptr %i.bg, %i.du
  %bound1 = icmp ult ptr %.184, %i.dt
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader308, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.do, 9223372036854775800     ; 3 uses
  %i.dv = shl i64 %n.vec, 2                       ; 2 uses
  %i.dw = getelementptr i8, ptr %i.bg, i64 %i.dv  ; 2 uses
  %i.dx = getelementptr i8, ptr %.184, i64 %i.dv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dy = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bg, i64 %i.dy ; 2 uses
  %next.gep260 = getelementptr i8, ptr %.184, i64 %i.dy ; 3 uses
  %i.dz = getelementptr i8, ptr %next.gep260, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep260, align 4, !tbaa !247, !alias.scope !2409
  %wide.load261 = load <4 x i32>, ptr %i.dz, align 4, !tbaa !247, !alias.scope !2409
  %i.ea = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !247, !alias.scope !2410, !noalias !2409
  store <4 x i32> %wide.load261, ptr %i.ea, align 4, !tbaa !247, !alias.scope !2410, !noalias !2409
  store <4 x i32> zeroinitializer, ptr %next.gep260, align 4, !tbaa !247, !alias.scope !2409
  store <4 x i32> zeroinitializer, ptr %i.dz, align 4, !tbaa !247, !alias.scope !2409
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !2401

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.do, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader308

.lr.ph.i.i.preheader308:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph.i.i.preheader ], [ %i.dw, %middle.block ] ; 2 uses
  %.079.i.i.ph = phi ptr [ %.184, %vector.memcheck ], [ %.184, %.lr.ph.i.i.preheader ], [ %i.dx, %middle.block ] ; 3 uses
  %.079.i.i.ph356 = ptrtoaddr ptr %.079.i.i.ph to i64
  %i.ec = sub i64 %i.dl, %.079.i.i.ph356          ; 2 uses
  %i.ed = lshr i64 %i.ec, 2
  %i.ee = add nuw nsw i64 %i.ed, 1
  %xtraiter357 = and i64 %i.ee, 7                 ; 2 uses
  %lcmp.mod358.not = icmp eq i64 %xtraiter357, 0
  br i1 %lcmp.mod358.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader308, %.lr.ph.i.i.prol
  %.010.i.i.prol = phi ptr [ %i.eh, %.lr.ph.i.i.prol ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader308 ] ; 2 uses
  %.079.i.i.prol = phi ptr [ %i.eg, %.lr.ph.i.i.prol ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader308 ] ; 3 uses
  %prol.iter359 = phi i64 [ %prol.iter359.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader308 ]
  %i.ef = load i32, ptr %.079.i.i.prol, align 4, !tbaa !247
  store i32 %i.ef, ptr %.010.i.i.prol, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i.prol, align 4, !tbaa !247
  %i.eg = getelementptr inbounds nuw i8, ptr %.079.i.i.prol, i64 4 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.010.i.i.prol, i64 4 ; 3 uses
  %prol.iter359.next = add i64 %prol.iter359, 1   ; 2 uses
  %prol.iter359.cmp.not = icmp eq i64 %prol.iter359.next, %xtraiter357
  br i1 %prol.iter359.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2402

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader308
  %.lcssa353.unr = phi ptr [ poison, %.lr.ph.i.i.preheader308 ], [ %i.eh, %.lr.ph.i.i.prol ]
  %.010.i.i.unr = phi ptr [ %.010.i.i.ph, %.lr.ph.i.i.preheader308 ], [ %i.eh, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %.079.i.i.ph, %.lr.ph.i.i.preheader308 ], [ %i.eg, %.lr.ph.i.i.prol ]
  %i.ei = icmp ult i64 %i.ec, 28
end_hunk_4
begin_hunk_5_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test24movable_and_copyable_intEEESD_SD_NS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEENS0_7move_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_:bb.a
  %.sroa.017.0.i.i = phi ptr [ %.sroa.017.0.ph.i.i, %.outer.i.i ], [ %i.ar, %bb.h ] ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %.sroa.017.0.i.i, i64 -4 ; 5 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !247, !noalias !2572 ; 2 uses
  %i.at = load i32, ptr %i.aq, align 4, !tbaa !247, !noalias !2572 ; 2 uses
  %i.au = icmp slt i32 %i.as, %i.at
  br i1 %i.au, label %.split.i.i, label %bb.h

.split.i.i:                                       ; preds = %bb.g
  %i.av = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i.i, i64 -4 ; 4 uses
  %i.aw = getelementptr inbounds i8, ptr %.sroa.027.1.i, i64 -4 ; 3 uses
  store i32 %i.at, ptr %i.aw, align 4, !tbaa !247, !noalias !2572
  store i32 0, ptr %i.aq, align 4, !tbaa !247, !noalias !2572
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !247, !noalias !2572
  store i32 %i.ax, ptr %i.aq, align 4, !tbaa !247, !noalias !2572
  store i32 0, ptr %i.av, align 4, !tbaa !247, !noalias !2572
  %.not27.i.i = icmp eq ptr %i.av, %i.ai
  br i1 %.not27.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.outer.i.i, !llvm.loop !68

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds i8, ptr %.sroa.027.1.i, i64 -4 ; 3 uses
  store i32 %i.as, ptr %i.ay, align 4, !tbaa !247, !noalias !2572
  store i32 0, ptr %i.ar, align 4, !tbaa !247, !noalias !2572
  %.not26.i.i = icmp eq ptr %i.ar, %i.an
  br i1 %.not26.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %bb.g, !llvm.loop !68

bb.i:                                             ; preds = %bb.e
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit, label %.outer.i8.i

.outer.i8.i:                                      ; preds = %bb.i, %.split.i14.i
  %.sroa.020.0.i = phi ptr [ %i.be, %.split.i14.i ], [ %i.ao, %bb.i ]
  %.sroa.010.0.ph.i9.i = phi ptr [ %i.az, %.split.i14.i ], [ %i.al, %bb.i ] ; 2 uses
  %.sroa.013.0.ph.i10.i = phi ptr [ %i.bd, %.split.i14.i ], [ %i.k, %bb.i ] ; 2 uses
  %.sroa.017.0.ph.i11.i = phi ptr [ %.sroa.017.0.i12.i, %.split.i14.i ], [ %i.ap, %bb.i ]
  %i.az = getelementptr inbounds i8, ptr %.sroa.010.0.ph.i9.i, i64 -4 ; 5 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.outer.i8.i
  %.sroa.020.1.i = phi ptr [ %.sroa.020.0.i, %.outer.i8.i ], [ %i.bg, %bb.k ] ; 2 uses
  %.sroa.017.0.i12.i = phi ptr [ %.sroa.017.0.ph.i11.i, %.outer.i8.i ], [ %i.ba, %bb.k ] ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %.sroa.017.0.i12.i, i64 -4 ; 5 uses
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !247, !noalias !2573 ; 2 uses
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !247, !noalias !2573 ; 2 uses
  %.not26.i13.i = icmp slt i32 %i.bb, %i.bc
  br i1 %.not26.i13.i, label %bb.k, label %.split.i14.i

.split.i14.i:                                     ; preds = %bb.j
  %i.bd = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i10.i, i64 -4 ; 4 uses
  %i.be = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -4 ; 3 uses
  store i32 %i.bb, ptr %i.be, align 4, !tbaa !247, !noalias !2573
  store i32 0, ptr %i.az, align 4, !tbaa !247, !noalias !2573
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !247, !noalias !2573
  store i32 %i.bf, ptr %i.az, align 4, !tbaa !247, !noalias !2573
  store i32 0, ptr %i.bd, align 4, !tbaa !247, !noalias !2573
  %.not28.i.i = icmp eq ptr %i.bd, %i.ai
  br i1 %.not28.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.outer.i8.i, !llvm.loop !69

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -4 ; 3 uses
  store i32 %i.bc, ptr %i.bg, align 4, !tbaa !247, !noalias !2573
  store i32 0, ptr %i.ba, align 4, !tbaa !247, !noalias !2573
  %.not27.i19.i = icmp eq ptr %i.ba, %i.an
  br i1 %.not27.i19.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !69

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test24movable_and_copyable_intEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SO_SQ_SQ_SQ_T2_.exit
  br i1 %11, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.n
  %.sroa.019.0.i.ph = phi ptr [ %i.bm, %bb.n ], [ %i.ao, %bb.m ]
  %.sroa.07.0.i.i.ph = phi ptr [ %i.bn, %bb.n ], [ %i.k, %bb.m ] ; 3 uses
  %.sroa.012.0.i.i.ph = phi ptr [ %.sroa.012.0.i.i, %bb.n ], [ %i.ap, %bb.m ]
  %i.bh = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.o
  %.sroa.019.0.i = phi ptr [ %i.bm, %bb.o ], [ %.sroa.019.0.i.ph, %.preheader.i.i.outer ]
  %.sroa.012.0.i.i = phi ptr [ %i.bi, %bb.o ], [ %.sroa.012.0.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %i.bi = getelementptr inbounds i8, ptr %.sroa.012.0.i.i, i64 -4 ; 5 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !247, !noalias !2574 ; 2 uses
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !247, !noalias !2574 ; 2 uses
  %i.bl = icmp slt i32 %i.bj, %i.bk
  %i.bm = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -4 ; 6 uses
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.bn = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4 ; 3 uses
  store i32 %i.bk, ptr %i.bm, align 4, !tbaa !247, !noalias !2574
  store i32 0, ptr %i.bn, align 4, !tbaa !247, !noalias !2574
  %i.bo = icmp eq ptr %i.bn, %i.ai
  br i1 %i.bo, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !66

bb.o:                                             ; preds = %.preheader.i.i
  store i32 %i.bj, ptr %i.bm, align 4, !tbaa !247, !noalias !2574
  store i32 0, ptr %i.bi, align 4, !tbaa !247, !noalias !2574
  %i.bp = icmp eq ptr %i.bi, %i.an
  br i1 %i.bp, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !66

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer

.preheader.i6.i.outer:                            ; preds = %bb.p, %bb.q
  %.sroa.013.0.i.ph = phi ptr [ %i.bu, %bb.q ], [ %i.ao, %bb.p ]
  %.sroa.07.0.i7.i.ph = phi ptr [ %i.bv, %bb.q ], [ %i.k, %bb.p ] ; 3 uses
  %.sroa.012.0.i8.i.ph = phi ptr [ %.sroa.012.0.i8.i, %bb.q ], [ %i.ap, %bb.p ]
  %i.bq = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4
  br label %.preheader.i6.i

.preheader.i6.i:                                  ; preds = %.preheader.i6.i.outer, %bb.r
  %.sroa.013.0.i = phi ptr [ %i.bu, %bb.r ], [ %.sroa.013.0.i.ph, %.preheader.i6.i.outer ]
  %.sroa.012.0.i8.i = phi ptr [ %i.br, %bb.r ], [ %.sroa.012.0.i8.i.ph, %.preheader.i6.i.outer ] ; 3 uses
  %i.br = getelementptr inbounds i8, ptr %.sroa.012.0.i8.i, i64 -4 ; 5 uses
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !247, !noalias !2575 ; 2 uses
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !247, !noalias !2575 ; 2 uses
  %.not18.i.i = icmp slt i32 %i.bs, %i.bt
  %i.bu = getelementptr inbounds i8, ptr %.sroa.013.0.i, i64 -4 ; 6 uses
  br i1 %.not18.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i6.i
  %i.bv = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4 ; 3 uses
  store i32 %i.bs, ptr %i.bu, align 4, !tbaa !247, !noalias !2575
  store i32 0, ptr %i.bv, align 4, !tbaa !247, !noalias !2575
  %i.bw = icmp eq ptr %i.bv, %i.ai
  br i1 %i.bw, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer, !llvm.loop !70

bb.r:                                             ; preds = %.preheader.i6.i
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !247, !noalias !2575
  store i32 0, ptr %i.br, align 4, !tbaa !247, !noalias !2575
  %i.bx = icmp eq ptr %i.br, %i.an
  br i1 %i.bx, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i6.i, !llvm.loop !70

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split: ; preds = %.split.i14.i, %.split.i.i, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.h, %bb.p, %bb.m
  %.sroa.017.124.i16.sink.i.sink = phi ptr [ %i.ar, %bb.h ], [ %i.ba, %bb.k ], [ %.sroa.012.0.i8.i, %bb.q ], [ %.sroa.012.0.i.i, %bb.n ], [ %i.ap, %bb.p ], [ %i.ap, %bb.m ], [ %.sroa.017.0.i.i, %.split.i.i ], [ %i.bi, %bb.o ], [ %i.br, %bb.r ], [ %.sroa.017.0.i12.i, %.split.i14.i ]
  %.sroa.013.123.i17.sink.i.sink = phi ptr [ %.sroa.013.0.ph.i.i, %bb.h ], [ %.sroa.013.0.ph.i10.i, %bb.k ], [ %i.ai, %bb.q ], [ %i.ai, %bb.n ], [ %i.k, %bb.p ], [ %i.k, %bb.m ], [ %i.ai, %.split.i.i ], [ %.sroa.07.0.i.i.ph, %bb.o ], [ %.sroa.07.0.i7.i.ph, %bb.r ], [ %i.ai, %.split.i14.i ]
  %.sroa.066.0.ph = phi ptr [ %i.ay, %bb.h ], [ %i.bg, %bb.k ], [ %i.bu, %bb.r ], [ %i.bm, %bb.o ], [ %i.ao, %bb.p ], [ %i.ao, %bb.m ], [ %i.aw, %.split.i.i ], [ %i.bm, %bb.n ], [ %i.bu, %bb.q ], [ %i.be, %.split.i14.i ]
  %.sroa.071.0.ph = phi ptr [ %.sroa.010.0.ph.i.i, %bb.h ], [ %.sroa.010.0.ph.i9.i, %bb.k ], [ %i.al, %bb.r ], [ %i.al, %bb.o ], [ %i.al, %bb.p ], [ %i.al, %bb.m ], [ %i.aq, %.split.i.i ], [ %i.al, %bb.n ], [ %i.al, %bb.q ], [ %i.az, %.split.i14.i ]
  store ptr %.sroa.017.124.i16.sink.i.sink, ptr %4, align 8, !tbaa !330, !noalias !322
  store ptr %.sroa.013.123.i17.sink.i.sink, ptr %3, align 8, !tbaa !330, !noalias !322
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.066.0 = phi ptr [ %i.ao, %bb.f ], [ %i.ao, %bb.i ], [ %.sroa.066.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split ] ; 17 uses
  %.sroa.071.0 = phi ptr [ %i.al, %bb.f ], [ %i.al, %bb.i ], [ %.sroa.071.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split ] ; 10 uses
  store ptr %.sroa.066.0, ptr %6, align 8, !tbaa !330
  %i.by = load ptr, ptr %3, align 8, !tbaa !330   ; 18 uses
  %i.bz = ptrtoaddr ptr %i.by to i64              ; 4 uses
  %i.ca = icmp eq ptr %i.by, %.sroa.066.0
  br i1 %i.ca, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.071.0, %i.am
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.t, %.lr.ph.i28
  %.sroa.054.0 = phi ptr [ %i.cd, %.lr.ph.i28 ], [ %i.by, %bb.t ]
  %i.cb = phi ptr [ %i.cc, %.lr.ph.i28 ], [ %.sroa.071.0, %bb.t ]
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -4 ; 5 uses
  %i.cd = getelementptr inbounds i8, ptr %.sroa.054.0, i64 -4 ; 4 uses
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !247, !noalias !2576
  store i32 0, ptr %i.cc, align 4, !tbaa !247, !noalias !2576
  %i.cf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2576
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2576
  %i.ch = load i32, ptr %i.cd, align 4, !tbaa !247, !noalias !2576
  store i32 %i.ch, ptr %i.cc, align 4, !tbaa !247, !noalias !2576
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !247, !noalias !2576
  %i.ci = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2576
  %i.cj = add i32 %i.ci, -1
  store i32 %i.cj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2576
  %.not.i = icmp eq ptr %i.cc, %i.am
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i28, !llvm.loop !64

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.by, %i.ai           ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %bb.v
  %i.ck = mul i64 %indvar, %i.e
  %i.cl = add i64 %i.g, %i.ck
  %i.cm = add i64 %i.cl, %i.bz                    ; 2 uses
  %i.cn = lshr i64 %i.cm, 2
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check333 = icmp ult i64 %i.cm, 44
  br i1 %min.iters.check333, label %.lr.ph.i29.preheader367, label %vector.memcheck334

vector.memcheck334:                               ; preds = %.lr.ph.i29.preheader
  %i.cp = mul i64 %indvar, %i.b
  %i.cq = add i64 %i.d, %i.cp
  %i.cr = add i64 %i.cq, %i.bz
  %.not362 = and i64 %i.cr, -4
  %i.cs = xor i64 %.not362, -4                    ; 3 uses
  %i.ct = getelementptr i8, ptr %.sroa.066.0, i64 %i.cs ; 2 uses
  %i.cu = getelementptr i8, ptr %.sroa.071.0, i64 %i.cs ; 2 uses
  %bound0335 = icmp ult ptr %i.ct, %.sroa.071.0
  %bound0335.a = icmp ult ptr %i.cu, %.sroa.066.0
  %found.conflict337 = and i1 %bound0335, %bound0335.a
  %12 = getelementptr i8, ptr %i.by, i64 %i.cs    ; 2 uses
  %bound0338 = icmp ult ptr %i.ct, %i.by
  %bound1339 = icmp ult ptr %12, %.sroa.066.0
  %found.conflict340 = and i1 %bound0338, %bound1339
  %conflict.rdx = or i1 %found.conflict337, %found.conflict340
  %bound0341 = icmp ult ptr %i.cu, %i.by
  %bound1342 = icmp ult ptr %12, %.sroa.071.0
  %found.conflict343 = and i1 %bound0341, %bound1342
  %conflict.rdx344 = or i1 %conflict.rdx, %found.conflict343
  br i1 %conflict.rdx344, label %.lr.ph.i29.preheader367, label %vector.ph345

vector.ph345:                                     ; preds = %vector.memcheck334
  %n.vec346 = and i64 %i.co, 9223372036854775800  ; 3 uses
  %i.cv = mul i64 %n.vec346, -4                   ; 3 uses
  %i.cw = getelementptr i8, ptr %.sroa.071.0, i64 %i.cv
  %i.cx = getelementptr i8, ptr %.sroa.066.0, i64 %i.cv ; 2 uses
  %i.cy = getelementptr i8, ptr %i.by, i64 %i.cv
  br label %vector.body347

vector.body347:                                   ; preds = %vector.body347, %vector.ph345
  %index348 = phi i64 [ 0, %vector.ph345 ], [ %index.next356, %vector.body347 ] ; 2 uses
  %i.cz = mul i64 %index348, -4                   ; 3 uses
  %next.gep349 = getelementptr i8, ptr %.sroa.071.0, i64 %i.cz ; 2 uses
  %next.gep350 = getelementptr i8, ptr %.sroa.066.0, i64 %i.cz ; 2 uses
  %next.gep351 = getelementptr i8, ptr %i.by, i64 %i.cz ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %next.gep349, i64 -16 ; 3 uses
  %i.db = getelementptr inbounds i8, ptr %next.gep349, i64 -32 ; 3 uses
  %wide.load352 = load <4 x i32>, ptr %i.da, align 4, !tbaa !247, !alias.scope !2577, !noalias !2578
  %wide.load353 = load <4 x i32>, ptr %i.db, align 4, !tbaa !247, !alias.scope !2577, !noalias !2578
  %i.dc = getelementptr inbounds i8, ptr %next.gep350, i64 -16
  %i.dd = getelementptr inbounds i8, ptr %next.gep350, i64 -32
  store <4 x i32> %wide.load352, ptr %i.dc, align 4, !tbaa !247, !alias.scope !2579, !noalias !2580
  store <4 x i32> %wide.load353, ptr %i.dd, align 4, !tbaa !247, !alias.scope !2579, !noalias !2580
  store <4 x i32> zeroinitializer, ptr %i.da, align 4, !tbaa !247, !alias.scope !2577, !noalias !2578
  store <4 x i32> zeroinitializer, ptr %i.db, align 4, !tbaa !247, !alias.scope !2577, !noalias !2578
  %i.de = getelementptr inbounds i8, ptr %next.gep351, i64 -16 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %next.gep351, i64 -32 ; 2 uses
  %wide.load354 = load <4 x i32>, ptr %i.de, align 4, !tbaa !247, !alias.scope !2581, !noalias !2582
  %wide.load355 = load <4 x i32>, ptr %i.df, align 4, !tbaa !247, !alias.scope !2581, !noalias !2582
  store <4 x i32> %wide.load354, ptr %i.da, align 4, !tbaa !247, !alias.scope !2577, !noalias !2578
  store <4 x i32> %wide.load355, ptr %i.db, align 4, !tbaa !247, !alias.scope !2577, !noalias !2578
  store <4 x i32> zeroinitializer, ptr %i.de, align 4, !tbaa !247, !alias.scope !2581, !noalias !2582
  store <4 x i32> zeroinitializer, ptr %i.df, align 4, !tbaa !247, !alias.scope !2581, !noalias !2582
  %index.next356 = add nuw i64 %index348, 8       ; 2 uses
  %i.dg = icmp eq i64 %index.next356, %n.vec346
  br i1 %i.dg, label %middle.block357, label %vector.body347, !llvm.loop !2560

middle.block357:                                  ; preds = %vector.body347
  %cmp.n358 = icmp eq i64 %i.co, %n.vec346
  br i1 %cmp.n358, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i29.preheader367

.lr.ph.i29.preheader367:                          ; preds = %vector.memcheck334, %.lr.ph.i29.preheader, %middle.block357
  %.sroa.048.0.ph = phi ptr [ %.sroa.071.0, %vector.memcheck334 ], [ %.sroa.071.0, %.lr.ph.i29.preheader ], [ %i.cw, %middle.block357 ]
  %.sroa.047.0.ph = phi ptr [ %.sroa.066.0, %vector.memcheck334 ], [ %.sroa.066.0, %.lr.ph.i29.preheader ], [ %i.cx, %middle.block357 ]
  %.ph368 = phi ptr [ %i.by, %vector.memcheck334 ], [ %i.by, %.lr.ph.i29.preheader ], [ %i.cy, %middle.block357 ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader367, %.lr.ph.i29
  %.sroa.048.0 = phi ptr [ %i.dj, %.lr.ph.i29 ], [ %.sroa.048.0.ph, %.lr.ph.i29.preheader367 ]
  %.sroa.047.0 = phi ptr [ %i.dk, %.lr.ph.i29 ], [ %.sroa.047.0.ph, %.lr.ph.i29.preheader367 ]
  %i.dh = phi ptr [ %i.di, %.lr.ph.i29 ], [ %.ph368, %.lr.ph.i29.preheader367 ]
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 -4 ; 4 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.048.0, i64 -4 ; 4 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.047.0, i64 -4 ; 3 uses
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !247, !noalias !2582
  store i32 %i.dl, ptr %i.dk, align 4, !tbaa !247, !noalias !2582
  store i32 0, ptr %i.dj, align 4, !tbaa !247, !noalias !2582
  %i.dm = load i32, ptr %i.di, align 4, !tbaa !247, !noalias !2582
  store i32 %i.dm, ptr %i.dj, align 4, !tbaa !247, !noalias !2582
  store i32 0, ptr %i.di, align 4, !tbaa !247, !noalias !2582
  %.not.i30 = icmp eq ptr %i.di, %i.ai
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i29, !llvm.loop !2561

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.dn = mul i64 %indvar, %i.h
  %i.do = add i64 %i.j, %i.dn
  %i.dp = add i64 %i.do, %i.bz                    ; 2 uses
  %i.dq = lshr i64 %i.dp, 2
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dp, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader365, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.ds = mul i64 %indvar, %i.b
  %i.dt = add i64 %i.d, %i.ds
  %i.du = add i64 %i.dt, %i.bz
  %.not363 = and i64 %i.du, -4
  %i.dv = xor i64 %.not363, -4                    ; 2 uses
  %i.dw = getelementptr i8, ptr %.sroa.066.0, i64 %i.dv
  %i.dx = getelementptr i8, ptr %i.by, i64 %i.dv
  %bound0 = icmp ult ptr %i.dw, %i.by
  %bound1 = icmp ult ptr %i.dx, %.sroa.066.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader365, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dr, 9223372036854775800     ; 3 uses
  %i.dy = mul i64 %n.vec, -4                      ; 2 uses
  %i.dz = getelementptr i8, ptr %.sroa.066.0, i64 %i.dy ; 2 uses
  %i.ea = getelementptr i8, ptr %i.by, i64 %i.dy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eb = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.066.0, i64 %i.eb ; 2 uses
  %next.gep313 = getelementptr i8, ptr %i.by, i64 %i.eb ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %next.gep313, i64 -16 ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %next.gep313, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ec, align 4, !tbaa !247, !alias.scope !2583, !noalias !2584
  %wide.load314 = load <4 x i32>, ptr %i.ed, align 4, !tbaa !247, !alias.scope !2583, !noalias !2584
  %i.ee = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ef = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ee, align 4, !tbaa !247, !alias.scope !2585, !noalias !2586
  store <4 x i32> %wide.load314, ptr %i.ef, align 4, !tbaa !247, !alias.scope !2585, !noalias !2586
  store <4 x i32> zeroinitializer, ptr %i.ec, align 4, !tbaa !247, !alias.scope !2583, !noalias !2584
  store <4 x i32> zeroinitializer, ptr %i.ed, align 4, !tbaa !247, !alias.scope !2583, !noalias !2584
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !2569

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dr, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i.preheader365

.lr.ph.i.i.preheader365:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.066.0, %vector.memcheck ], [ %.sroa.066.0, %.lr.ph.i.i.preheader ], [ %i.dz, %middle.block ]
  %.ph = phi ptr [ %i.by, %vector.memcheck ], [ %i.by, %.lr.ph.i.i.preheader ], [ %i.ea, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader365, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ej, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader365 ]
  %i.eh = phi ptr [ %i.ei, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader365 ]
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -4 ; 4 uses
  %i.ej = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 3 uses
  %i.ek = load i32, ptr %i.ei, align 4, !tbaa !247, !noalias !2584
  store i32 %i.ek, ptr %i.ej, align 4, !tbaa !247, !noalias !2584
  store i32 0, ptr %i.ei, align 4, !tbaa !247, !noalias !2584
  %.not.i.i31 = icmp eq ptr %i.ei, %i.ai
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i, !llvm.loop !2570

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %middle.block357, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.ai, %bb.s ], [ %i.ej, %.lr.ph.i.i ], [ %i.by, %bb.t ], [ %i.cd, %.lr.ph.i28 ], [ %.sroa.066.0, %bb.v ], [ %.sroa.066.0, %bb.w ], [ %i.dz, %middle.block ], [ %i.cx, %middle.block357 ], [ %i.dk, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !330
  %i.el = sub i64 0, %.018.lcssa.i
  %i.em = getelementptr inbounds i8, ptr %i.l, i64 %i.el ; 3 uses
  %.not.i32 = icmp eq ptr %i.ai, %.sroa.071.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit
  br i1 %.not23, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 -1 ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %i.l, i64 -1 ; 2 uses
  %i.ep = load i8, ptr %i.en, align 1, !tbaa !314
  %i.eq = load i8, ptr %i.eo, align 1, !tbaa !314
  store i8 %i.eq, ptr %i.en, align 1, !tbaa !314
  store i8 %i.ep, ptr %i.eo, align 1, !tbaa !314
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.er = load ptr, ptr %2, align 8, !tbaa !316   ; 2 uses
  %i.es = icmp eq ptr %i.em, %i.er
  br i1 %i.es, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.et = icmp eq ptr %i.er, %i.l
  br i1 %i.et, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.l, %bb.y ], [ %i.em, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !316
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, %bb.z, %.sink.split.i
  store ptr %i.ai, ptr %3, align 8, !tbaa !330
  %i.eu = load ptr, ptr %1, align 8, !tbaa !316
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 -1 ; 2 uses
  store ptr %i.ev, ptr %1, align 8, !tbaa !316
  %i.ew = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.ew to i64
  %i.ex = add i64 %.0140, %.neg
  %i.ey = icmp ne i64 %i.ah, 0
  %.neg24 = sext i1 %i.ey to i64
  %i.ez = add i64 %.sroa.speculated, %.neg24
  %i.fa = add i64 %.097139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.fa, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2571

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, %bb.a
  %i.fb = load ptr, ptr %6, align 8, !tbaa !330
  store ptr %i.fb, ptr %0, align 8, !tbaa !330
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_5
begin_hunk_6_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intES8_S8_NS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7move_opEEET3_T_SJ_T0_T1_RT2_SM_SI_NS0_9iter_sizeISL_E4typeESQ_SQ_SQ_T4_bT5_:bb.a
bb.g:                                             ; preds = %.split.i.i, %.outer.i.i
  %.030.i.i = phi ptr [ %.13137.i.i, %.split.i.i ], [ %.030.ph.i.i, %.outer.i.i ] ; 4 uses
  %.026.i.i = phi ptr [ %i.ah, %.split.i.i ], [ %.026.ph.i.i, %.outer.i.i ] ; 5 uses
  %.025.i.i = phi ptr [ %i.ai, %.split.i.i ], [ %.025.ph.i.i, %.outer.i.i ] ; 6 uses
  %i.ae = load i32, ptr %.025.i.i, align 4, !tbaa !247 ; 2 uses
  %i.af = load i32, ptr %.028.ph.i.i, align 4, !tbaa !247 ; 2 uses
  %i.ag = icmp slt i32 %i.ae, %i.af
  br i1 %i.ag, label %.split.i.i, label %bb.h

.split.i.i:                                       ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 4 ; 2 uses
  store i32 %i.ae, ptr %.030.i.i, align 4, !tbaa !247
  store i32 0, ptr %.025.i.i, align 4, !tbaa !247
  %i.aj = load i32, ptr %.026.i.i, align 4, !tbaa !247
  store i32 %i.aj, ptr %.025.i.i, align 4, !tbaa !247
  store i32 0, ptr %.026.i.i, align 4, !tbaa !247
  %.not43.i.i = icmp eq ptr %i.ah, %i.z
  %.13137.i.i = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 4 ; 2 uses
  br i1 %.not43.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %bb.g, !llvm.loop !55

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.028.ph.i.i, i64 4 ; 3 uses
  store i32 %i.af, ptr %.030.i.i, align 4, !tbaa !247
  store i32 0, ptr %.028.ph.i.i, align 4, !tbaa !247
  %.not42.i.i = icmp eq ptr %i.ak, %4
  %.131.i.i = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 4 ; 2 uses
  br i1 %.not42.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.outer.i.i, !llvm.loop !55

bb.i:                                             ; preds = %bb.e
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit, label %.outer.i15.i

.outer.i15.i:                                     ; preds = %bb.i, %bb.k
  %.030.ph.i16.i = phi ptr [ %.131.i33.i, %bb.k ], [ %.038125, %bb.i ]
  %.028.ph.i17.i = phi ptr [ %i.aq, %bb.k ], [ %i.ad, %bb.i ] ; 4 uses
  %.026.ph.i18.i = phi ptr [ %.026.i21.i, %bb.k ], [ %.083122, %bb.i ]
  %.025.ph.i19.i = phi ptr [ %.025.i22.i, %bb.k ], [ %i.ab, %bb.i ]
  br label %bb.j

bb.j:                                             ; preds = %.split.i24.i, %.outer.i15.i
  %.030.i20.i = phi ptr [ %.13137.i25.i, %.split.i24.i ], [ %.030.ph.i16.i, %.outer.i15.i ] ; 4 uses
  %.026.i21.i = phi ptr [ %i.an, %.split.i24.i ], [ %.026.ph.i18.i, %.outer.i15.i ] ; 5 uses
  %.025.i22.i = phi ptr [ %i.ao, %.split.i24.i ], [ %.025.ph.i19.i, %.outer.i15.i ] ; 6 uses
  %i.al = load i32, ptr %.028.ph.i17.i, align 4, !tbaa !247 ; 2 uses
  %i.am = load i32, ptr %.025.i22.i, align 4, !tbaa !247 ; 2 uses
  %.not42.i23.i = icmp slt i32 %i.al, %i.am
  br i1 %.not42.i23.i, label %bb.k, label %.split.i24.i

.split.i24.i:                                     ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %.026.i21.i, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.025.i22.i, i64 4 ; 2 uses
  store i32 %i.am, ptr %.030.i20.i, align 4, !tbaa !247
  store i32 0, ptr %.025.i22.i, align 4, !tbaa !247
  %i.ap = load i32, ptr %.026.i21.i, align 4, !tbaa !247
  store i32 %i.ap, ptr %.025.i22.i, align 4, !tbaa !247
  store i32 0, ptr %.026.i21.i, align 4, !tbaa !247
  %.not44.i.i = icmp eq ptr %i.an, %i.z
  %.13137.i25.i = getelementptr inbounds nuw i8, ptr %.030.i20.i, i64 4 ; 2 uses
  br i1 %.not44.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !56

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %.028.ph.i17.i, i64 4 ; 3 uses
  store i32 %i.al, ptr %.030.i20.i, align 4, !tbaa !247
  store i32 0, ptr %.028.ph.i17.i, align 4, !tbaa !247
  %.not43.i32.i = icmp eq ptr %i.aq, %4
  %.131.i33.i = getelementptr inbounds nuw i8, ptr %.030.i20.i, i64 4 ; 2 uses
  br i1 %.not43.i32.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.outer.i15.i, !llvm.loop !56

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  br i1 %10, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.o
  %.024.i.i.ph = phi ptr [ %i.au, %bb.o ], [ %.038125, %bb.m ]
  %.021.i.i.ph = phi ptr [ %i.ax, %bb.o ], [ %i.ad, %bb.m ] ; 4 uses
  %.0.i.i.ph = phi ptr [ %.0.i.i, %bb.o ], [ %.083122, %bb.m ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.n
  %.024.i.i = phi ptr [ %i.au, %bb.n ], [ %.024.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %.0.i.i = phi ptr [ %i.av, %bb.n ], [ %.0.i.i.ph, %.preheader.i.i.outer ] ; 5 uses
  %i.ar = load i32, ptr %.0.i.i, align 4, !tbaa !247 ; 2 uses
  %i.as = load i32, ptr %.021.i.i.ph, align 4, !tbaa !247 ; 2 uses
  %i.at = icmp slt i32 %i.ar, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 4 ; 4 uses
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 2 uses
  store i32 %i.ar, ptr %.024.i.i, align 4, !tbaa !247
  store i32 0, ptr %.0.i.i, align 4, !tbaa !247
  %i.aw = icmp eq ptr %i.av, %i.z
  br i1 %i.aw, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !53

bb.o:                                             ; preds = %.preheader.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.021.i.i.ph, i64 4 ; 3 uses
  store i32 %i.as, ptr %.024.i.i, align 4, !tbaa !247
  store i32 0, ptr %.021.i.i.ph, align 4, !tbaa !247
  %i.ay = icmp eq ptr %i.ax, %4
  br i1 %i.ay, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !53

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i13.i.outer

.preheader.i13.i.outer:                           ; preds = %bb.p, %bb.r
  %.024.i14.i.ph = phi ptr [ %i.bb, %bb.r ], [ %.038125, %bb.p ]
  %.021.i15.i.ph = phi ptr [ %i.be, %bb.r ], [ %i.ad, %bb.p ] ; 4 uses
  %.0.i16.i.ph = phi ptr [ %.0.i16.i, %bb.r ], [ %.083122, %bb.p ]
  br label %.preheader.i13.i

.preheader.i13.i:                                 ; preds = %.preheader.i13.i.outer, %bb.q
  %.024.i14.i = phi ptr [ %i.bb, %bb.q ], [ %.024.i14.i.ph, %.preheader.i13.i.outer ] ; 3 uses
  %.0.i16.i = phi ptr [ %i.bc, %bb.q ], [ %.0.i16.i.ph, %.preheader.i13.i.outer ] ; 5 uses
  %i.az = load i32, ptr %.021.i15.i.ph, align 4, !tbaa !247 ; 2 uses
  %i.ba = load i32, ptr %.0.i16.i, align 4, !tbaa !247 ; 2 uses
  %.not37.i.i = icmp slt i32 %i.az, %i.ba
  %i.bb = getelementptr inbounds nuw i8, ptr %.024.i14.i, i64 4 ; 4 uses
  br i1 %.not37.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i13.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 4 ; 2 uses
  store i32 %i.ba, ptr %.024.i14.i, align 4, !tbaa !247
  store i32 0, ptr %.0.i16.i, align 4, !tbaa !247
  %i.bd = icmp eq ptr %i.bc, %i.z
  br i1 %i.bd, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i13.i, !llvm.loop !57

bb.r:                                             ; preds = %.preheader.i13.i
  %i.be = getelementptr inbounds nuw i8, ptr %.021.i15.i.ph, i64 4 ; 3 uses
  store i32 %i.az, ptr %.024.i14.i, align 4, !tbaa !247
  store i32 0, ptr %.021.i15.i.ph, align 4, !tbaa !247
  %i.bf = icmp eq ptr %i.be, %4
  br i1 %i.bf, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i13.i.outer, !llvm.loop !57

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split: ; preds = %bb.k, %bb.h, %bb.q, %bb.r, %bb.n, %bb.o, %.split.i24.i, %.split.i.i, %bb.p, %bb.m
  %.12938.i30.sink.i.sink = phi ptr [ %.028.ph.i.i, %.split.i.i ], [ %.028.ph.i17.i, %.split.i24.i ], [ %i.be, %bb.r ], [ %i.ax, %bb.o ], [ %i.ad, %bb.p ], [ %i.ad, %bb.m ], [ %i.ak, %bb.h ], [ %.021.i.i.ph, %bb.n ], [ %.021.i15.i.ph, %bb.q ], [ %i.aq, %bb.k ]
  %.184.ph = phi ptr [ %i.z, %.split.i.i ], [ %i.z, %.split.i24.i ], [ %.0.i16.i, %bb.r ], [ %.0.i.i, %bb.o ], [ %.083122, %bb.p ], [ %.083122, %bb.m ], [ %.026.i.i, %bb.h ], [ %i.z, %bb.n ], [ %i.z, %bb.q ], [ %.026.i21.i, %bb.k ]
  %.080.ph = phi ptr [ %i.ai, %.split.i.i ], [ %i.ao, %.split.i24.i ], [ %i.ab, %bb.q ], [ %i.ab, %bb.n ], [ %i.ab, %bb.p ], [ %i.ab, %bb.m ], [ %.025.i.i, %bb.h ], [ %i.ab, %bb.o ], [ %i.ab, %bb.r ], [ %.025.i22.i, %bb.k ]
  %.ph = phi ptr [ %.13137.i.i, %.split.i.i ], [ %.13137.i25.i, %.split.i24.i ], [ %i.bb, %bb.q ], [ %i.au, %bb.n ], [ %.038125, %bb.p ], [ %.038125, %bb.m ], [ %.131.i.i, %bb.h ], [ %i.au, %bb.o ], [ %i.bb, %bb.r ], [ %.131.i33.i, %bb.k ]
  store ptr %.12938.i30.sink.i.sink, ptr %3, align 8, !tbaa !250
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.184 = phi ptr [ %.083122, %bb.i ], [ %.083122, %bb.f ], [ %.184.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split ] ; 18 uses
  %.080 = phi ptr [ %i.ab, %bb.i ], [ %i.ab, %bb.f ], [ %.080.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split ] ; 10 uses
  %i.bg = phi ptr [ %.038125, %bb.i ], [ %.038125, %bb.f ], [ %.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split ] ; 16 uses
  %.184260 = ptrtoaddr ptr %.184 to i64           ; 4 uses
  %i.bh = icmp eq ptr %.184, %i.bg
  br i1 %i.bh, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit
  br i1 %.not43, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not8.i = icmp eq ptr %.080, %i.ac
  br i1 %.not8.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %bb.t, %.lr.ph.i48
  %.010.i = phi ptr [ %i.bp, %.lr.ph.i48 ], [ %.184, %bb.t ] ; 3 uses
  %.079.i = phi ptr [ %i.bo, %.lr.ph.i48 ], [ %.080, %bb.t ] ; 4 uses
  %i.bi = load i32, ptr %.079.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i, align 4, !tbaa !247
  %i.bj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bl = load i32, ptr %.010.i, align 4, !tbaa !247
  store i32 %i.bl, ptr %.079.i, align 4, !tbaa !247
  store i32 %i.bi, ptr %.010.i, align 4, !tbaa !247
  %i.bm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bn = add i32 %i.bm, -1
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bo = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bo, %i.ac
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i48, !llvm.loop !41

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit
  %.not8.i.i = icmp eq ptr %.184, %i.z            ; 2 uses
  br i1 %.not43, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i49.preheader

.lr.ph.i49.preheader:                             ; preds = %bb.v
  %i.bq = mul i64 %indvar, %.idx                  ; 2 uses
  %i.br = add i64 %i.e, %i.bq                     ; 2 uses
  %i.bs = sub i64 %i.br, %.184260                 ; 2 uses
  %i.bt = lshr i64 %i.bs, 2
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %min.iters.check281 = icmp ult i64 %i.bs, 44
  br i1 %min.iters.check281, label %.lr.ph.i49.preheader311, label %vector.memcheck282

vector.memcheck282:                               ; preds = %.lr.ph.i49.preheader
  %i.bv = add i64 %i.c, %i.bq
  %i.bw = sub i64 %i.bv, %.184260
  %i.bx = and i64 %i.bw, -4
  %i.by = add i64 %i.bx, 4                        ; 3 uses
  %i.bz = getelementptr i8, ptr %i.bg, i64 %i.by  ; 2 uses
  %i.ca = getelementptr i8, ptr %.080, i64 %i.by  ; 2 uses
  %bound0283 = icmp ult ptr %i.bg, %i.ca
  %bound0283.a = icmp ult ptr %.080, %i.bz
  %found.conflict285 = and i1 %bound0283, %bound0283.a
  %11 = getelementptr i8, ptr %.184, i64 %i.by    ; 2 uses
  %bound0286 = icmp ult ptr %i.bg, %11
  %bound1287 = icmp ult ptr %.184, %i.bz
  %found.conflict288 = and i1 %bound0286, %bound1287
  %conflict.rdx = or i1 %found.conflict285, %found.conflict288
  %bound0289 = icmp ult ptr %.080, %11
  %bound1290 = icmp ult ptr %.184, %i.ca
  %found.conflict291 = and i1 %bound0289, %bound1290
  %conflict.rdx292 = or i1 %conflict.rdx, %found.conflict291
  br i1 %conflict.rdx292, label %.lr.ph.i49.preheader311, label %vector.ph293

vector.ph293:                                     ; preds = %vector.memcheck282
  %n.vec294 = and i64 %i.bu, 9223372036854775804  ; 3 uses
  %i.cb = shl i64 %n.vec294, 2                    ; 3 uses
  %i.cc = getelementptr i8, ptr %i.bg, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %.080, i64 %i.cb
  %i.ce = getelementptr i8, ptr %.184, i64 %i.cb
  br label %vector.body295

vector.body295:                                   ; preds = %vector.body295, %vector.ph293
  %index296 = phi i64 [ 0, %vector.ph293 ], [ %index.next302, %vector.body295 ] ; 2 uses
  %i.cf = shl i64 %index296, 2                    ; 3 uses
  %next.gep297 = getelementptr i8, ptr %i.bg, i64 %i.cf
  %next.gep298 = getelementptr i8, ptr %.080, i64 %i.cf ; 3 uses
  %next.gep299 = getelementptr i8, ptr %.184, i64 %i.cf ; 2 uses
  %wide.load300 = load <4 x i32>, ptr %next.gep298, align 4, !tbaa !247, !alias.scope !2665, !noalias !2666
  store <4 x i32> %wide.load300, ptr %next.gep297, align 4, !tbaa !247, !alias.scope !2667, !noalias !2668
  store <4 x i32> zeroinitializer, ptr %next.gep298, align 4, !tbaa !247, !alias.scope !2665, !noalias !2666
  %wide.load301 = load <4 x i32>, ptr %next.gep299, align 4, !tbaa !247, !alias.scope !2666
  store <4 x i32> %wide.load301, ptr %next.gep298, align 4, !tbaa !247, !alias.scope !2665, !noalias !2666
  store <4 x i32> zeroinitializer, ptr %next.gep299, align 4, !tbaa !247, !alias.scope !2666
  %index.next302 = add nuw i64 %index296, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next302, %n.vec294
  br i1 %i.cg, label %middle.block303, label %vector.body295, !llvm.loop !2655

middle.block303:                                  ; preds = %vector.body295
  %cmp.n304 = icmp eq i64 %i.bu, %n.vec294
  br i1 %cmp.n304, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i49.preheader311

.lr.ph.i49.preheader311:                          ; preds = %vector.memcheck282, %.lr.ph.i49.preheader, %middle.block303
  %.012.i.ph = phi ptr [ %i.bg, %vector.memcheck282 ], [ %i.bg, %.lr.ph.i49.preheader ], [ %i.cc, %middle.block303 ] ; 2 uses
  %.0711.i.ph = phi ptr [ %.080, %vector.memcheck282 ], [ %.080, %.lr.ph.i49.preheader ], [ %i.cd, %middle.block303 ] ; 2 uses
  %.0810.i.ph = phi ptr [ %.184, %vector.memcheck282 ], [ %.184, %.lr.ph.i49.preheader ], [ %i.ce, %middle.block303 ] ; 3 uses
  %.0810.i.ph356 = ptrtoaddr ptr %.0810.i.ph to i64
  %i.ch = sub i64 %i.br, %.0810.i.ph356           ; 2 uses
  %i.ci = lshr i64 %i.ch, 2
  %i.cj = add nuw nsw i64 %i.ci, 1
  %xtraiter = and i64 %i.cj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i49.prol.loopexit, label %.lr.ph.i49.prol

.lr.ph.i49.prol:                                  ; preds = %.lr.ph.i49.preheader311, %.lr.ph.i49.prol
  %.012.i.prol = phi ptr [ %i.cm, %.lr.ph.i49.prol ], [ %.012.i.ph, %.lr.ph.i49.preheader311 ] ; 2 uses
  %.0711.i.prol = phi ptr [ %i.cl, %.lr.ph.i49.prol ], [ %.0711.i.ph, %.lr.ph.i49.preheader311 ] ; 4 uses
  %.0810.i.prol = phi ptr [ %i.ck, %.lr.ph.i49.prol ], [ %.0810.i.ph, %.lr.ph.i49.preheader311 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i49.prol ], [ 0, %.lr.ph.i49.preheader311 ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.0810.i.prol, i64 4 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0711.i.prol, i64 4 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.prol, i64 4 ; 3 uses
  %i.cn = load i32, ptr %.0711.i.prol, align 4, !tbaa !247
  store i32 %i.cn, ptr %.012.i.prol, align 4, !tbaa !247
  store i32 0, ptr %.0711.i.prol, align 4, !tbaa !247
  %i.co = load i32, ptr %.0810.i.prol, align 4, !tbaa !247
  store i32 %i.co, ptr %.0711.i.prol, align 4, !tbaa !247
  store i32 0, ptr %.0810.i.prol, align 4, !tbaa !247
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i49.prol.loopexit, label %.lr.ph.i49.prol, !llvm.loop !2656

.lr.ph.i49.prol.loopexit:                         ; preds = %.lr.ph.i49.prol, %.lr.ph.i49.preheader311
  %.lcssa353.unr = phi ptr [ poison, %.lr.ph.i49.preheader311 ], [ %i.cm, %.lr.ph.i49.prol ]
  %.012.i.unr = phi ptr [ %.012.i.ph, %.lr.ph.i49.preheader311 ], [ %i.cm, %.lr.ph.i49.prol ]
  %.0711.i.unr = phi ptr [ %.0711.i.ph, %.lr.ph.i49.preheader311 ], [ %i.cl, %.lr.ph.i49.prol ]
  %.0810.i.unr = phi ptr [ %.0810.i.ph, %.lr.ph.i49.preheader311 ], [ %i.ck, %.lr.ph.i49.prol ]
  %i.cp = icmp ult i64 %i.ch, 12
  br i1 %i.cp, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %.lr.ph.i49.prol.loopexit, %.lr.ph.i49
  %.012.i = phi ptr [ %i.dh, %.lr.ph.i49 ], [ %.012.i.unr, %.lr.ph.i49.prol.loopexit ] ; 5 uses
  %.0711.i = phi ptr [ %i.dg, %.lr.ph.i49 ], [ %.0711.i.unr, %.lr.ph.i49.prol.loopexit ] ; 7 uses
  %.0810.i = phi ptr [ %i.df, %.lr.ph.i49 ], [ %.0810.i.unr, %.lr.ph.i49.prol.loopexit ] ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0810.i, i64 4 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0711.i, i64 4 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i, i64 4
  %i.ct = load i32, ptr %.0711.i, align 4, !tbaa !247
  store i32 %i.ct, ptr %.012.i, align 4, !tbaa !247
  store i32 0, ptr %.0711.i, align 4, !tbaa !247
  %i.cu = load i32, ptr %.0810.i, align 4, !tbaa !247
  store i32 %i.cu, ptr %.0711.i, align 4, !tbaa !247
  store i32 0, ptr %.0810.i, align 4, !tbaa !247
  %i.cv = getelementptr inbounds nuw i8, ptr %.0810.i, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0711.i, i64 8 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i, i64 8
  %i.cy = load i32, ptr %i.cr, align 4, !tbaa !247
  store i32 %i.cy, ptr %i.cs, align 4, !tbaa !247
  store i32 0, ptr %i.cr, align 4, !tbaa !247
  %i.cz = load i32, ptr %i.cq, align 4, !tbaa !247
  store i32 %i.cz, ptr %i.cr, align 4, !tbaa !247
  store i32 0, ptr %i.cq, align 4, !tbaa !247
  %i.da = getelementptr inbounds nuw i8, ptr %.0810.i, i64 12 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0711.i, i64 12 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.012.i, i64 12
  %i.dd = load i32, ptr %i.cw, align 4, !tbaa !247
  store i32 %i.dd, ptr %i.cx, align 4, !tbaa !247
  store i32 0, ptr %i.cw, align 4, !tbaa !247
  %i.de = load i32, ptr %i.cv, align 4, !tbaa !247
  store i32 %i.de, ptr %i.cw, align 4, !tbaa !247
  store i32 0, ptr %i.cv, align 4, !tbaa !247
  %i.df = getelementptr inbounds nuw i8, ptr %.0810.i, i64 16 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0711.i, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i, i64 16 ; 2 uses
  %i.di = load i32, ptr %i.db, align 4, !tbaa !247
  store i32 %i.di, ptr %i.dc, align 4, !tbaa !247
  store i32 0, ptr %i.db, align 4, !tbaa !247
  %i.dj = load i32, ptr %i.da, align 4, !tbaa !247
  store i32 %i.dj, ptr %i.db, align 4, !tbaa !247
  store i32 0, ptr %i.da, align 4, !tbaa !247
  %.not.i50.3 = icmp eq ptr %i.df, %i.z
  br i1 %.not.i50.3, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i49, !llvm.loop !2657

bb.w:                                             ; preds = %bb.u
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.dk = mul i64 %indvar, %.idx                  ; 2 uses
  %i.dl = add i64 %i.g, %i.dk                     ; 2 uses
  %i.dm = sub i64 %i.dl, %.184260                 ; 2 uses
  %i.dn = lshr i64 %i.dm, 2
  %i.do = add nuw nsw i64 %i.dn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dm, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader309, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.dp = add i64 %i.c, %i.dk
  %i.dq = sub i64 %i.dp, %.184260
  %i.dr = and i64 %i.dq, -4
  %i.ds = add i64 %i.dr, 4                        ; 2 uses
  %i.dt = getelementptr i8, ptr %i.bg, i64 %i.ds
  %i.du = getelementptr i8, ptr %.184, i64 %i.ds
  %bound0 = icmp ult ptr %i.bg, %i.du
  %bound1 = icmp ult ptr %.184, %i.dt
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader309, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.do, 9223372036854775800     ; 3 uses
  %i.dv = shl i64 %n.vec, 2                       ; 2 uses
  %i.dw = getelementptr i8, ptr %i.bg, i64 %i.dv  ; 2 uses
  %i.dx = getelementptr i8, ptr %.184, i64 %i.dv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dy = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bg, i64 %i.dy ; 2 uses
  %next.gep261 = getelementptr i8, ptr %.184, i64 %i.dy ; 3 uses
  %i.dz = getelementptr i8, ptr %next.gep261, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep261, align 4, !tbaa !247, !alias.scope !2669
  %wide.load262 = load <4 x i32>, ptr %i.dz, align 4, !tbaa !247, !alias.scope !2669
  %i.ea = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !247, !alias.scope !2670, !noalias !2669
  store <4 x i32> %wide.load262, ptr %i.ea, align 4, !tbaa !247, !alias.scope !2670, !noalias !2669
  store <4 x i32> zeroinitializer, ptr %next.gep261, align 4, !tbaa !247, !alias.scope !2669
  store <4 x i32> zeroinitializer, ptr %i.dz, align 4, !tbaa !247, !alias.scope !2669
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !2661

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.do, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader309

.lr.ph.i.i.preheader309:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph.i.i.preheader ], [ %i.dw, %middle.block ] ; 2 uses
  %.079.i.i.ph = phi ptr [ %.184, %vector.memcheck ], [ %.184, %.lr.ph.i.i.preheader ], [ %i.dx, %middle.block ] ; 3 uses
  %.079.i.i.ph357 = ptrtoaddr ptr %.079.i.i.ph to i64
  %i.ec = sub i64 %i.dl, %.079.i.i.ph357          ; 2 uses
  %i.ed = lshr i64 %i.ec, 2
  %i.ee = add nuw nsw i64 %i.ed, 1
  %xtraiter358 = and i64 %i.ee, 7                 ; 2 uses
  %lcmp.mod359.not = icmp eq i64 %xtraiter358, 0
  br i1 %lcmp.mod359.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader309, %.lr.ph.i.i.prol
  %.010.i.i.prol = phi ptr [ %i.eh, %.lr.ph.i.i.prol ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader309 ] ; 2 uses
  %.079.i.i.prol = phi ptr [ %i.eg, %.lr.ph.i.i.prol ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader309 ] ; 3 uses
  %prol.iter360 = phi i64 [ %prol.iter360.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader309 ]
  %i.ef = load i32, ptr %.079.i.i.prol, align 4, !tbaa !247
  store i32 %i.ef, ptr %.010.i.i.prol, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i.prol, align 4, !tbaa !247
  %i.eg = getelementptr inbounds nuw i8, ptr %.079.i.i.prol, i64 4 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.010.i.i.prol, i64 4 ; 3 uses
  %prol.iter360.next = add i64 %prol.iter360, 1   ; 2 uses
  %prol.iter360.cmp.not = icmp eq i64 %prol.iter360.next, %xtraiter358
  br i1 %prol.iter360.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2662

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader309
  %.lcssa354.unr = phi ptr [ poison, %.lr.ph.i.i.preheader309 ], [ %i.eh, %.lr.ph.i.i.prol ]
  %.010.i.i.unr = phi ptr [ %.010.i.i.ph, %.lr.ph.i.i.preheader309 ], [ %i.eh, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %.079.i.i.ph, %.lr.ph.i.i.preheader309 ], [ %i.eg, %.lr.ph.i.i.prol ]
  %i.ei = icmp ult i64 %i.ec, 28
end_hunk_6
begin_hunk_7_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test24movable_and_copyable_intEEESD_SD_NS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEENS0_7move_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_:bb.a
  %.sroa.017.0.i.i = phi ptr [ %.sroa.017.0.ph.i.i, %.outer.i.i ], [ %i.ar, %bb.h ] ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %.sroa.017.0.i.i, i64 -4 ; 5 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !247, !noalias !2832 ; 2 uses
  %i.at = load i32, ptr %i.aq, align 4, !tbaa !247, !noalias !2832 ; 2 uses
  %i.au = icmp slt i32 %i.as, %i.at
  br i1 %i.au, label %.split.i.i, label %bb.h

.split.i.i:                                       ; preds = %bb.g
  %i.av = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i.i, i64 -4 ; 4 uses
  %i.aw = getelementptr inbounds i8, ptr %.sroa.027.1.i, i64 -4 ; 3 uses
  store i32 %i.at, ptr %i.aw, align 4, !tbaa !247, !noalias !2832
  store i32 0, ptr %i.aq, align 4, !tbaa !247, !noalias !2832
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !247, !noalias !2832
  store i32 %i.ax, ptr %i.aq, align 4, !tbaa !247, !noalias !2832
  store i32 0, ptr %i.av, align 4, !tbaa !247, !noalias !2832
  %.not27.i.i = icmp eq ptr %i.av, %i.ai
  br i1 %.not27.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.outer.i.i, !llvm.loop !68

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds i8, ptr %.sroa.027.1.i, i64 -4 ; 3 uses
  store i32 %i.as, ptr %i.ay, align 4, !tbaa !247, !noalias !2832
  store i32 0, ptr %i.ar, align 4, !tbaa !247, !noalias !2832
  %.not26.i.i = icmp eq ptr %i.ar, %i.an
  br i1 %.not26.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %bb.g, !llvm.loop !68

bb.i:                                             ; preds = %bb.e
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit, label %.outer.i8.i

.outer.i8.i:                                      ; preds = %bb.i, %.split.i14.i
  %.sroa.020.0.i = phi ptr [ %i.be, %.split.i14.i ], [ %i.ao, %bb.i ]
  %.sroa.010.0.ph.i9.i = phi ptr [ %i.az, %.split.i14.i ], [ %i.al, %bb.i ] ; 2 uses
  %.sroa.013.0.ph.i10.i = phi ptr [ %i.bd, %.split.i14.i ], [ %i.k, %bb.i ] ; 2 uses
  %.sroa.017.0.ph.i11.i = phi ptr [ %.sroa.017.0.i12.i, %.split.i14.i ], [ %i.ap, %bb.i ]
  %i.az = getelementptr inbounds i8, ptr %.sroa.010.0.ph.i9.i, i64 -4 ; 5 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.outer.i8.i
  %.sroa.020.1.i = phi ptr [ %.sroa.020.0.i, %.outer.i8.i ], [ %i.bg, %bb.k ] ; 2 uses
  %.sroa.017.0.i12.i = phi ptr [ %.sroa.017.0.ph.i11.i, %.outer.i8.i ], [ %i.ba, %bb.k ] ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %.sroa.017.0.i12.i, i64 -4 ; 5 uses
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !247, !noalias !2833 ; 2 uses
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !247, !noalias !2833 ; 2 uses
  %.not26.i13.i = icmp slt i32 %i.bb, %i.bc
  br i1 %.not26.i13.i, label %bb.k, label %.split.i14.i

.split.i14.i:                                     ; preds = %bb.j
  %i.bd = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i10.i, i64 -4 ; 4 uses
  %i.be = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -4 ; 3 uses
  store i32 %i.bb, ptr %i.be, align 4, !tbaa !247, !noalias !2833
  store i32 0, ptr %i.az, align 4, !tbaa !247, !noalias !2833
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !247, !noalias !2833
  store i32 %i.bf, ptr %i.az, align 4, !tbaa !247, !noalias !2833
  store i32 0, ptr %i.bd, align 4, !tbaa !247, !noalias !2833
  %.not28.i.i = icmp eq ptr %i.bd, %i.ai
  br i1 %.not28.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.outer.i8.i, !llvm.loop !69

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -4 ; 3 uses
  store i32 %i.bc, ptr %i.bg, align 4, !tbaa !247, !noalias !2833
  store i32 0, ptr %i.ba, align 4, !tbaa !247, !noalias !2833
  %.not27.i19.i = icmp eq ptr %i.ba, %i.an
  br i1 %.not27.i19.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !69

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test24movable_and_copyable_intEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SO_SQ_SQ_SQ_T2_.exit
  br i1 %11, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.n
  %.sroa.019.0.i.ph = phi ptr [ %i.bm, %bb.n ], [ %i.ao, %bb.m ]
  %.sroa.07.0.i.i.ph = phi ptr [ %i.bn, %bb.n ], [ %i.k, %bb.m ] ; 3 uses
  %.sroa.012.0.i.i.ph = phi ptr [ %.sroa.012.0.i.i, %bb.n ], [ %i.ap, %bb.m ]
  %i.bh = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.o
  %.sroa.019.0.i = phi ptr [ %i.bm, %bb.o ], [ %.sroa.019.0.i.ph, %.preheader.i.i.outer ]
  %.sroa.012.0.i.i = phi ptr [ %i.bi, %bb.o ], [ %.sroa.012.0.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %i.bi = getelementptr inbounds i8, ptr %.sroa.012.0.i.i, i64 -4 ; 5 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !247, !noalias !2834 ; 2 uses
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !247, !noalias !2834 ; 2 uses
  %i.bl = icmp slt i32 %i.bj, %i.bk
  %i.bm = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -4 ; 6 uses
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.bn = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4 ; 3 uses
  store i32 %i.bk, ptr %i.bm, align 4, !tbaa !247, !noalias !2834
  store i32 0, ptr %i.bn, align 4, !tbaa !247, !noalias !2834
  %i.bo = icmp eq ptr %i.bn, %i.ai
  br i1 %i.bo, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !66

bb.o:                                             ; preds = %.preheader.i.i
  store i32 %i.bj, ptr %i.bm, align 4, !tbaa !247, !noalias !2834
  store i32 0, ptr %i.bi, align 4, !tbaa !247, !noalias !2834
  %i.bp = icmp eq ptr %i.bi, %i.an
  br i1 %i.bp, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !66

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer

.preheader.i6.i.outer:                            ; preds = %bb.p, %bb.q
  %.sroa.013.0.i.ph = phi ptr [ %i.bu, %bb.q ], [ %i.ao, %bb.p ]
  %.sroa.07.0.i7.i.ph = phi ptr [ %i.bv, %bb.q ], [ %i.k, %bb.p ] ; 3 uses
  %.sroa.012.0.i8.i.ph = phi ptr [ %.sroa.012.0.i8.i, %bb.q ], [ %i.ap, %bb.p ]
  %i.bq = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4
  br label %.preheader.i6.i

.preheader.i6.i:                                  ; preds = %.preheader.i6.i.outer, %bb.r
  %.sroa.013.0.i = phi ptr [ %i.bu, %bb.r ], [ %.sroa.013.0.i.ph, %.preheader.i6.i.outer ]
  %.sroa.012.0.i8.i = phi ptr [ %i.br, %bb.r ], [ %.sroa.012.0.i8.i.ph, %.preheader.i6.i.outer ] ; 3 uses
  %i.br = getelementptr inbounds i8, ptr %.sroa.012.0.i8.i, i64 -4 ; 5 uses
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !247, !noalias !2835 ; 2 uses
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !247, !noalias !2835 ; 2 uses
  %.not18.i.i = icmp slt i32 %i.bs, %i.bt
  %i.bu = getelementptr inbounds i8, ptr %.sroa.013.0.i, i64 -4 ; 6 uses
  br i1 %.not18.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i6.i
  %i.bv = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4 ; 3 uses
  store i32 %i.bs, ptr %i.bu, align 4, !tbaa !247, !noalias !2835
  store i32 0, ptr %i.bv, align 4, !tbaa !247, !noalias !2835
  %i.bw = icmp eq ptr %i.bv, %i.ai
  br i1 %i.bw, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer, !llvm.loop !70

bb.r:                                             ; preds = %.preheader.i6.i
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !247, !noalias !2835
  store i32 0, ptr %i.br, align 4, !tbaa !247, !noalias !2835
  %i.bx = icmp eq ptr %i.br, %i.an
  br i1 %i.bx, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i6.i, !llvm.loop !70

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split: ; preds = %.split.i14.i, %.split.i.i, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.h, %bb.p, %bb.m
  %.sroa.017.124.i16.sink.i.sink = phi ptr [ %i.ar, %bb.h ], [ %i.ba, %bb.k ], [ %.sroa.012.0.i8.i, %bb.q ], [ %.sroa.012.0.i.i, %bb.n ], [ %i.ap, %bb.p ], [ %i.ap, %bb.m ], [ %.sroa.017.0.i.i, %.split.i.i ], [ %i.bi, %bb.o ], [ %i.br, %bb.r ], [ %.sroa.017.0.i12.i, %.split.i14.i ]
  %.sroa.013.123.i17.sink.i.sink = phi ptr [ %.sroa.013.0.ph.i.i, %bb.h ], [ %.sroa.013.0.ph.i10.i, %bb.k ], [ %i.ai, %bb.q ], [ %i.ai, %bb.n ], [ %i.k, %bb.p ], [ %i.k, %bb.m ], [ %i.ai, %.split.i.i ], [ %.sroa.07.0.i.i.ph, %bb.o ], [ %.sroa.07.0.i7.i.ph, %bb.r ], [ %i.ai, %.split.i14.i ]
  %.sroa.064.0.ph = phi ptr [ %i.ay, %bb.h ], [ %i.bg, %bb.k ], [ %i.bu, %bb.r ], [ %i.bm, %bb.o ], [ %i.ao, %bb.p ], [ %i.ao, %bb.m ], [ %i.aw, %.split.i.i ], [ %i.bm, %bb.n ], [ %i.bu, %bb.q ], [ %i.be, %.split.i14.i ]
  %.sroa.069.0.ph = phi ptr [ %.sroa.010.0.ph.i.i, %bb.h ], [ %.sroa.010.0.ph.i9.i, %bb.k ], [ %i.al, %bb.r ], [ %i.al, %bb.o ], [ %i.al, %bb.p ], [ %i.al, %bb.m ], [ %i.aq, %.split.i.i ], [ %i.al, %bb.n ], [ %i.al, %bb.q ], [ %i.az, %.split.i14.i ]
  store ptr %.sroa.017.124.i16.sink.i.sink, ptr %4, align 8, !tbaa !330, !noalias !322
  store ptr %.sroa.013.123.i17.sink.i.sink, ptr %3, align 8, !tbaa !330, !noalias !322
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.064.0 = phi ptr [ %i.ao, %bb.f ], [ %i.ao, %bb.i ], [ %.sroa.064.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split ] ; 17 uses
  %.sroa.069.0 = phi ptr [ %i.al, %bb.f ], [ %i.al, %bb.i ], [ %.sroa.069.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split ] ; 10 uses
  store ptr %.sroa.064.0, ptr %6, align 8, !tbaa !330
  %i.by = load ptr, ptr %3, align 8, !tbaa !330   ; 18 uses
  %i.bz = ptrtoaddr ptr %i.by to i64              ; 4 uses
  %i.ca = icmp eq ptr %i.by, %.sroa.064.0
  br i1 %i.ca, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.069.0, %i.am
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.t, %.lr.ph.i28
  %.sroa.052.0 = phi ptr [ %i.cd, %.lr.ph.i28 ], [ %i.by, %bb.t ]
  %i.cb = phi ptr [ %i.cc, %.lr.ph.i28 ], [ %.sroa.069.0, %bb.t ]
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -4 ; 5 uses
  %i.cd = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -4 ; 4 uses
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !247, !noalias !2836
  store i32 0, ptr %i.cc, align 4, !tbaa !247, !noalias !2836
  %i.cf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2836
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2836
  %i.ch = load i32, ptr %i.cd, align 4, !tbaa !247, !noalias !2836
  store i32 %i.ch, ptr %i.cc, align 4, !tbaa !247, !noalias !2836
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !247, !noalias !2836
  %i.ci = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2836
  %i.cj = add i32 %i.ci, -1
  store i32 %i.cj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !noalias !2836
  %.not.i = icmp eq ptr %i.cc, %i.am
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i28, !llvm.loop !64

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.by, %i.ai           ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %bb.v
  %i.ck = mul i64 %indvar, %i.e
  %i.cl = add i64 %i.g, %i.ck
  %i.cm = add i64 %i.cl, %i.bz                    ; 2 uses
  %i.cn = lshr i64 %i.cm, 2
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check335 = icmp ult i64 %i.cm, 44
  br i1 %min.iters.check335, label %.lr.ph.i29.preheader369, label %vector.memcheck336

vector.memcheck336:                               ; preds = %.lr.ph.i29.preheader
  %i.cp = mul i64 %indvar, %i.b
  %i.cq = add i64 %i.d, %i.cp
  %i.cr = add i64 %i.cq, %i.bz
  %.not364 = and i64 %i.cr, -4
  %i.cs = xor i64 %.not364, -4                    ; 3 uses
  %i.ct = getelementptr i8, ptr %.sroa.064.0, i64 %i.cs ; 2 uses
  %i.cu = getelementptr i8, ptr %.sroa.069.0, i64 %i.cs ; 2 uses
  %bound0337 = icmp ult ptr %i.ct, %.sroa.069.0
  %bound0337.a = icmp ult ptr %i.cu, %.sroa.064.0
  %found.conflict339 = and i1 %bound0337, %bound0337.a
  %12 = getelementptr i8, ptr %i.by, i64 %i.cs    ; 2 uses
  %bound0340 = icmp ult ptr %i.ct, %i.by
  %bound1341 = icmp ult ptr %12, %.sroa.064.0
  %found.conflict342 = and i1 %bound0340, %bound1341
  %conflict.rdx = or i1 %found.conflict339, %found.conflict342
  %bound0343 = icmp ult ptr %i.cu, %i.by
  %bound1344 = icmp ult ptr %12, %.sroa.069.0
  %found.conflict345 = and i1 %bound0343, %bound1344
  %conflict.rdx346 = or i1 %conflict.rdx, %found.conflict345
  br i1 %conflict.rdx346, label %.lr.ph.i29.preheader369, label %vector.ph347

vector.ph347:                                     ; preds = %vector.memcheck336
  %n.vec348 = and i64 %i.co, 9223372036854775800  ; 3 uses
  %i.cv = mul i64 %n.vec348, -4                   ; 3 uses
  %i.cw = getelementptr i8, ptr %.sroa.069.0, i64 %i.cv
  %i.cx = getelementptr i8, ptr %.sroa.064.0, i64 %i.cv ; 2 uses
  %i.cy = getelementptr i8, ptr %i.by, i64 %i.cv
  br label %vector.body349

vector.body349:                                   ; preds = %vector.body349, %vector.ph347
  %index350 = phi i64 [ 0, %vector.ph347 ], [ %index.next358, %vector.body349 ] ; 2 uses
  %i.cz = mul i64 %index350, -4                   ; 3 uses
  %next.gep351 = getelementptr i8, ptr %.sroa.069.0, i64 %i.cz ; 2 uses
  %next.gep352 = getelementptr i8, ptr %.sroa.064.0, i64 %i.cz ; 2 uses
  %next.gep353 = getelementptr i8, ptr %i.by, i64 %i.cz ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %next.gep351, i64 -16 ; 3 uses
  %i.db = getelementptr inbounds i8, ptr %next.gep351, i64 -32 ; 3 uses
  %wide.load354 = load <4 x i32>, ptr %i.da, align 4, !tbaa !247, !alias.scope !2837, !noalias !2838
  %wide.load355 = load <4 x i32>, ptr %i.db, align 4, !tbaa !247, !alias.scope !2837, !noalias !2838
  %i.dc = getelementptr inbounds i8, ptr %next.gep352, i64 -16
  %i.dd = getelementptr inbounds i8, ptr %next.gep352, i64 -32
  store <4 x i32> %wide.load354, ptr %i.dc, align 4, !tbaa !247, !alias.scope !2839, !noalias !2840
  store <4 x i32> %wide.load355, ptr %i.dd, align 4, !tbaa !247, !alias.scope !2839, !noalias !2840
  store <4 x i32> zeroinitializer, ptr %i.da, align 4, !tbaa !247, !alias.scope !2837, !noalias !2838
  store <4 x i32> zeroinitializer, ptr %i.db, align 4, !tbaa !247, !alias.scope !2837, !noalias !2838
  %i.de = getelementptr inbounds i8, ptr %next.gep353, i64 -16 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %next.gep353, i64 -32 ; 2 uses
  %wide.load356 = load <4 x i32>, ptr %i.de, align 4, !tbaa !247, !alias.scope !2841, !noalias !2842
  %wide.load357 = load <4 x i32>, ptr %i.df, align 4, !tbaa !247, !alias.scope !2841, !noalias !2842
  store <4 x i32> %wide.load356, ptr %i.da, align 4, !tbaa !247, !alias.scope !2837, !noalias !2838
  store <4 x i32> %wide.load357, ptr %i.db, align 4, !tbaa !247, !alias.scope !2837, !noalias !2838
  store <4 x i32> zeroinitializer, ptr %i.de, align 4, !tbaa !247, !alias.scope !2841, !noalias !2842
  store <4 x i32> zeroinitializer, ptr %i.df, align 4, !tbaa !247, !alias.scope !2841, !noalias !2842
  %index.next358 = add nuw i64 %index350, 8       ; 2 uses
  %i.dg = icmp eq i64 %index.next358, %n.vec348
  br i1 %i.dg, label %middle.block359, label %vector.body349, !llvm.loop !2820

middle.block359:                                  ; preds = %vector.body349
  %cmp.n360 = icmp eq i64 %i.co, %n.vec348
  br i1 %cmp.n360, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i29.preheader369

.lr.ph.i29.preheader369:                          ; preds = %vector.memcheck336, %.lr.ph.i29.preheader, %middle.block359
  %.sroa.046.0.ph = phi ptr [ %.sroa.069.0, %vector.memcheck336 ], [ %.sroa.069.0, %.lr.ph.i29.preheader ], [ %i.cw, %middle.block359 ]
  %.sroa.045.0.ph = phi ptr [ %.sroa.064.0, %vector.memcheck336 ], [ %.sroa.064.0, %.lr.ph.i29.preheader ], [ %i.cx, %middle.block359 ]
  %.ph370 = phi ptr [ %i.by, %vector.memcheck336 ], [ %i.by, %.lr.ph.i29.preheader ], [ %i.cy, %middle.block359 ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader369, %.lr.ph.i29
  %.sroa.046.0 = phi ptr [ %i.dj, %.lr.ph.i29 ], [ %.sroa.046.0.ph, %.lr.ph.i29.preheader369 ]
  %.sroa.045.0 = phi ptr [ %i.dk, %.lr.ph.i29 ], [ %.sroa.045.0.ph, %.lr.ph.i29.preheader369 ]
  %i.dh = phi ptr [ %i.di, %.lr.ph.i29 ], [ %.ph370, %.lr.ph.i29.preheader369 ]
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 -4 ; 4 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 4 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4 ; 3 uses
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !247, !noalias !2842
  store i32 %i.dl, ptr %i.dk, align 4, !tbaa !247, !noalias !2842
  store i32 0, ptr %i.dj, align 4, !tbaa !247, !noalias !2842
  %i.dm = load i32, ptr %i.di, align 4, !tbaa !247, !noalias !2842
  store i32 %i.dm, ptr %i.dj, align 4, !tbaa !247, !noalias !2842
  store i32 0, ptr %i.di, align 4, !tbaa !247, !noalias !2842
  %.not.i30 = icmp eq ptr %i.di, %i.ai
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i29, !llvm.loop !2821

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.dn = mul i64 %indvar, %i.h
  %i.do = add i64 %i.j, %i.dn
  %i.dp = add i64 %i.do, %i.bz                    ; 2 uses
  %i.dq = lshr i64 %i.dp, 2
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dp, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader367, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.ds = mul i64 %indvar, %i.b
  %i.dt = add i64 %i.d, %i.ds
  %i.du = add i64 %i.dt, %i.bz
  %.not365 = and i64 %i.du, -4
  %i.dv = xor i64 %.not365, -4                    ; 2 uses
  %i.dw = getelementptr i8, ptr %.sroa.064.0, i64 %i.dv
  %i.dx = getelementptr i8, ptr %i.by, i64 %i.dv
  %bound0 = icmp ult ptr %i.dw, %i.by
  %bound1 = icmp ult ptr %i.dx, %.sroa.064.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader367, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dr, 9223372036854775800     ; 3 uses
  %i.dy = mul i64 %n.vec, -4                      ; 2 uses
  %i.dz = getelementptr i8, ptr %.sroa.064.0, i64 %i.dy ; 2 uses
  %i.ea = getelementptr i8, ptr %i.by, i64 %i.dy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eb = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.064.0, i64 %i.eb ; 2 uses
  %next.gep315 = getelementptr i8, ptr %i.by, i64 %i.eb ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %next.gep315, i64 -16 ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %next.gep315, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ec, align 4, !tbaa !247, !alias.scope !2843, !noalias !2844
  %wide.load316 = load <4 x i32>, ptr %i.ed, align 4, !tbaa !247, !alias.scope !2843, !noalias !2844
  %i.ee = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ef = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ee, align 4, !tbaa !247, !alias.scope !2845, !noalias !2846
  store <4 x i32> %wide.load316, ptr %i.ef, align 4, !tbaa !247, !alias.scope !2845, !noalias !2846
  store <4 x i32> zeroinitializer, ptr %i.ec, align 4, !tbaa !247, !alias.scope !2843, !noalias !2844
  store <4 x i32> zeroinitializer, ptr %i.ed, align 4, !tbaa !247, !alias.scope !2843, !noalias !2844
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !2829

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dr, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i.preheader367

.lr.ph.i.i.preheader367:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.064.0, %vector.memcheck ], [ %.sroa.064.0, %.lr.ph.i.i.preheader ], [ %i.dz, %middle.block ]
  %.ph = phi ptr [ %i.by, %vector.memcheck ], [ %i.by, %.lr.ph.i.i.preheader ], [ %i.ea, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader367, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ej, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader367 ]
  %i.eh = phi ptr [ %i.ei, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader367 ]
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -4 ; 4 uses
  %i.ej = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 3 uses
  %i.ek = load i32, ptr %i.ei, align 4, !tbaa !247, !noalias !2844
  store i32 %i.ek, ptr %i.ej, align 4, !tbaa !247, !noalias !2844
  store i32 0, ptr %i.ei, align 4, !tbaa !247, !noalias !2844
  %.not.i.i31 = icmp eq ptr %i.ei, %i.ai
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i, !llvm.loop !2830

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %middle.block359, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.ai, %bb.s ], [ %i.ej, %.lr.ph.i.i ], [ %i.by, %bb.t ], [ %i.cd, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.dz, %middle.block ], [ %i.cx, %middle.block359 ], [ %i.dk, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !330
  %.neg98 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %i.l, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.ai, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.em = getelementptr inbounds i8, ptr %i.el, i64 -8 ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %i.l, i64 -8 ; 2 uses
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !223
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !223
  store i64 %i.ep, ptr %i.em, align 8, !tbaa !223
  store i64 %i.eo, ptr %i.en, align 8, !tbaa !223
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.eq = load ptr, ptr %2, align 8, !tbaa !321   ; 2 uses
  %i.er = icmp eq ptr %i.el, %i.eq
  br i1 %i.er, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.es = icmp eq ptr %i.eq, %i.l
  br i1 %i.es, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.l, %bb.y ], [ %i.el, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !321
  %.pre194 = load ptr, ptr %1, align 8, !tbaa !321
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, %bb.z, %.sink.split.i
  %i.et = phi ptr [ %i.l, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit ], [ %i.l, %bb.z ], [ %.pre194, %.sink.split.i ]
  store ptr %i.ai, ptr %3, align 8, !tbaa !330
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 -8 ; 2 uses
  store ptr %i.eu, ptr %1, align 8, !tbaa !321
  %i.ev = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.ev to i64
  %i.ew = add i64 %.0140, %.neg
  %i.ex = icmp ne i64 %i.ah, 0
  %.neg24 = sext i1 %i.ex to i64
  %i.ey = add i64 %.sroa.speculated, %.neg24
  %i.ez = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.ez, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2831

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, %bb.a
  %i.fa = load ptr, ptr %6, align 8, !tbaa !330
  store ptr %i.fa, ptr %0, align 8, !tbaa !330
  ret void
}
end_hunk_7
begin_hunk_8_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_NS0_7move_opES6_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_T4_:bb.a
  %next.gep339 = getelementptr i8, ptr %.0114219, i64 %i.cb ; 2 uses
  %next.gep340 = getelementptr i8, ptr %i.ad, i64 %i.cb ; 3 uses
  %i.cc = getelementptr i8, ptr %next.gep340, i64 16 ; 2 uses
  %wide.load341 = load <4 x i32>, ptr %next.gep340, align 4, !tbaa !247, !alias.scope !3158
  %wide.load342 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !247, !alias.scope !3158
  %i.cd = getelementptr i8, ptr %next.gep339, i64 16
  store <4 x i32> %wide.load341, ptr %next.gep339, align 4, !tbaa !247, !alias.scope !3159, !noalias !3158
  store <4 x i32> %wide.load342, ptr %i.cd, align 4, !tbaa !247, !alias.scope !3159, !noalias !3158
  store <4 x i32> zeroinitializer, ptr %next.gep340, align 4, !tbaa !247, !alias.scope !3158
  store <4 x i32> zeroinitializer, ptr %i.cc, align 4, !tbaa !247, !alias.scope !3158
  %index.next343 = add nuw i64 %index338, 8       ; 2 uses
  %i.ce = icmp eq i64 %index.next343, %n.vec336
  br i1 %i.ce, label %middle.block344, label %vector.body337, !llvm.loop !3117

middle.block344:                                  ; preds = %vector.body337
  %cmp.n345 = icmp eq i64 %i.bt, %n.vec336
  br i1 %cmp.n345, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit, label %.lr.ph.i.i.preheader486

.lr.ph.i.i.preheader486:                          ; preds = %vector.memcheck331, %.lr.ph.i.i.preheader, %middle.block344
  %.010.i.i.ph = phi ptr [ %.0114219, %vector.memcheck331 ], [ %.0114219, %.lr.ph.i.i.preheader ], [ %i.bz, %middle.block344 ]
  %.079.i.i.ph = phi ptr [ %i.ad, %vector.memcheck331 ], [ %i.ad, %.lr.ph.i.i.preheader ], [ %i.ca, %middle.block344 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader486, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ch, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader486 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.cg, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader486 ] ; 3 uses
  %i.cf = load i32, ptr %.079.i.i, align 4, !tbaa !247
  store i32 %i.cf, ptr %.010.i.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i, align 4, !tbaa !247
  %i.cg = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.cg, %i.ac
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit, label %.lr.ph.i.i, !llvm.loop !3118

_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit: ; preds = %.lr.ph.i.i, %middle.block344, %bb.j
  store ptr %7, ptr %i.b, align 8, !tbaa !250
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit
  br i1 %.not2830.i, label %._crit_edge.i, label %.lr.ph.i125.preheader

.lr.ph.i125.preheader:                            ; preds = %.preheader.i
  br i1 %min.iters.check, label %.lr.ph.i125.preheader485, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i125.preheader
  %bound0 = icmp ult ptr %7, %i.bb
  %bound1 = icmp ult ptr %i.ba, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.z
  %bound0312 = icmp ult ptr %i.ba, %i.i
  %bound1313 = icmp ult ptr %i.g, %i.bb
  %found.conflict314 = and i1 %bound0312, %bound1313
  %conflict.rdx315 = or i1 %conflict.rdx, %found.conflict314
  br i1 %conflict.rdx315, label %.lr.ph.i125.preheader485, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ci = getelementptr i8, ptr %i.ba, i64 %i.aa
  %i.cj = getelementptr i8, ptr %i.ae, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ck = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %7, i64 %i.ck
  %next.gep316 = getelementptr i8, ptr %i.ba, i64 %i.ck ; 3 uses
  %next.gep317 = getelementptr i8, ptr %i.ae, i64 %i.ck ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep316, align 4, !tbaa !247, !alias.scope !3160, !noalias !3161
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !247, !alias.scope !3162, !noalias !3163
  store <4 x i32> zeroinitializer, ptr %next.gep316, align 4, !tbaa !247, !alias.scope !3160, !noalias !3161
  %wide.load318 = load <4 x i32>, ptr %next.gep317, align 4, !tbaa !247, !alias.scope !3161
  store <4 x i32> %wide.load318, ptr %next.gep316, align 4, !tbaa !247, !alias.scope !3160, !noalias !3161
  store <4 x i32> zeroinitializer, ptr %next.gep317, align 4, !tbaa !247, !alias.scope !3161
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !3123

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i125.preheader485

.lr.ph.i125.preheader485:                         ; preds = %vector.memcheck, %.lr.ph.i125.preheader, %middle.block
  %.033.i.ph = phi ptr [ %7, %vector.memcheck ], [ %7, %.lr.ph.i125.preheader ], [ %i.ab, %middle.block ]
  %.02032.i.ph = phi ptr [ %i.ba, %vector.memcheck ], [ %i.ba, %.lr.ph.i125.preheader ], [ %i.ci, %middle.block ]
  %.02131.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i125.preheader ], [ %i.cj, %middle.block ]
  br label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %.lr.ph.i125.preheader485, %.lr.ph.i125
  %.033.i = phi ptr [ %i.co, %.lr.ph.i125 ], [ %.033.i.ph, %.lr.ph.i125.preheader485 ] ; 2 uses
  %.02032.i = phi ptr [ %i.cn, %.lr.ph.i125 ], [ %.02032.i.ph, %.lr.ph.i125.preheader485 ] ; 4 uses
  %.02131.i = phi ptr [ %i.cm, %.lr.ph.i125 ], [ %.02131.i.ph, %.lr.ph.i125.preheader485 ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.02131.i, i64 4 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.02032.i, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %.033.i, i64 4 ; 2 uses
  %i.cp = load i32, ptr %.02032.i, align 4, !tbaa !247
  store i32 %i.cp, ptr %.033.i, align 4, !tbaa !247
  store i32 0, ptr %.02032.i, align 4, !tbaa !247
  %i.cq = load i32, ptr %.02131.i, align 4, !tbaa !247
  store i32 %i.cq, ptr %.02032.i, align 4, !tbaa !247
  store i32 0, ptr %.02131.i, align 4, !tbaa !247
  %.not28.i = icmp eq ptr %i.cm, %i.bc
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i125, !llvm.loop !3124

._crit_edge.i:                                    ; preds = %.lr.ph.i125, %middle.block, %.preheader.i
  %.0.lcssa.i = phi ptr [ %7, %.preheader.i ], [ %i.ab, %middle.block ], [ %i.co, %.lr.ph.i125 ] ; 2 uses
  %.not29.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  %i.cr = load i32, ptr %i.bh, align 4, !tbaa !247
  store i32 0, ptr %i.bh, align 4, !tbaa !247
  %i.cs = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.cu = load i32, ptr %.0106223, align 4, !tbaa !247
  store i32 %i.cu, ptr %i.bh, align 4, !tbaa !247
  store i32 %i.cr, ptr %.0106223, align 4, !tbaa !247
  %i.cv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.cw = add i32 %i.cv, -1
  store i32 %i.cw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %i.cx = icmp eq ptr %i.bh, %.0191218
  br i1 %i.cx, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cy = icmp eq ptr %.0191218, %.0106223
  %spec.select = select i1 %i.cy, ptr %i.bh, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit: ; preds = %bb.m, %bb.l, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit
  %.5 = phi ptr [ %.0191218, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %spec.select, %bb.m ], [ %.0106223, %bb.l ]
  %.1.i = phi ptr [ %7, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %.0.lcssa.i, %bb.m ], [ %.0.lcssa.i, %bb.l ] ; 2 uses
  store ptr %.1.i, ptr %i.c, align 8, !tbaa !250
  br label %bb.x

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cz = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_(ptr noundef %.0114219, ptr noundef %.0111220, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.bc, ptr noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_b.exit

bb.p:                                             ; preds = %.thread281, %bb.n
  %i.da = phi i1 [ true, %.thread281 ], [ %i.bm, %bb.n ]
  store ptr %8, ptr %9, align 8, !tbaa !327
  %i.db = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPNS_9container4test24movable_and_copyable_intES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr noundef %.0114219, ptr noundef %.0111220, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.bc, ptr noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dead_on_return %9)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_b.exit: ; preds = %bb.o, %bb.p
  %i.dc = phi i1 [ %i.bm, %bb.o ], [ %i.da, %bb.p ]
  %i.dd = phi i1 [ true, %bb.o ], [ false, %bb.p ]
  %i.de = phi ptr [ %i.cz, %bb.o ], [ %i.db, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.df = load ptr, ptr %i.b, align 8, !tbaa !250 ; 4 uses
  %i.dg = load ptr, ptr %i.c, align 8, !tbaa !250 ; 4 uses
  %i.dh = icmp eq ptr %i.df, %i.dg                ; 2 uses
  br i1 %i.dh, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_b.exit
  store ptr %7, ptr %i.b, align 8, !tbaa !250
  %i.di = load ptr, ptr %i.d, align 8, !tbaa !250 ; 10 uses
  %i.dj = ptrtoint ptr %i.bc to i64
  %i.dk = ptrtoint ptr %i.di to i64               ; 3 uses
  %i.dl = sub i64 %i.dj, %i.dk                    ; 2 uses
  %i.dm = ashr exact i64 %i.dl, 2
  %i.dn = sub nsw i64 0, %i.dm
  %i.do = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.dn ; 7 uses
  %.not.i126 = icmp eq ptr %i.di, %i.do
  br i1 %.not.i126, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140, label %.preheader.i127

.preheader.i127:                                  ; preds = %bb.q
  %.not2830.i128 = icmp eq ptr %i.di, %i.bc
  br i1 %.not2830.i128, label %._crit_edge.i134, label %.lr.ph.i129.preheader

.lr.ph.i129.preheader:                            ; preds = %.preheader.i127
  %i.dp = mul i64 %indvar, %.idx208               ; 3 uses
  %i.dq = add i64 %i.v, %i.dp                     ; 2 uses
  %i.dr = sub i64 %i.dq, %i.dk                    ; 2 uses
  %i.ds = lshr i64 %i.dr, 2
  %i.dt = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %min.iters.check368 = icmp ult i64 %i.dr, 60
  br i1 %min.iters.check368, label %.lr.ph.i129.preheader487, label %vector.memcheck369

vector.memcheck369:                               ; preds = %.lr.ph.i129.preheader
  %i.du = add i64 %i.r, %i.dp
  %i.dv = sub i64 %i.du, %i.dk
  %i.dw = and i64 %i.dv, -4                       ; 3 uses
  %i.dx = getelementptr i8, ptr %scevgep366, i64 %i.dw ; 2 uses
  %i.dy = add i64 %i.o, %i.dp
  %i.dz = shl i64 %.022.lcssa.i, 2
  %i.ea = add i64 %i.dz, 4
  %i.eb = mul i64 %2, %i.ea
  %i.ec = add i64 %i.dy, %i.eb
  %i.ed = add i64 %i.ec, %i.dw
  %i.ee = sub i64 %i.ed, %i.dl
  %i.ef = getelementptr i8, ptr %1, i64 %i.ee     ; 2 uses
  %bound0370 = icmp ult ptr %7, %i.ef
  %bound1371 = icmp ult ptr %i.do, %i.dx
  %found.conflict372 = and i1 %bound0370, %bound1371
  %17 = getelementptr i8, ptr %i.di, i64 %i.dw
  %18 = getelementptr i8, ptr %17, i64 4          ; 2 uses
  %bound0373 = icmp ult ptr %7, %18
  %bound1374 = icmp ult ptr %i.di, %i.dx
  %found.conflict375 = and i1 %bound0373, %bound1374
  %conflict.rdx376 = or i1 %found.conflict372, %found.conflict375
  %bound0377 = icmp ult ptr %i.do, %18
  %bound1378 = icmp ult ptr %i.di, %i.ef
  %found.conflict379 = and i1 %bound0377, %bound1378
  %conflict.rdx380 = or i1 %conflict.rdx376, %found.conflict379
  br i1 %conflict.rdx380, label %.lr.ph.i129.preheader487, label %vector.ph381

vector.ph381:                                     ; preds = %vector.memcheck369
  %n.vec382 = and i64 %i.dt, 9223372036854775804  ; 3 uses
  %i.eg = shl i64 %n.vec382, 2                    ; 3 uses
  %i.eh = getelementptr i8, ptr %7, i64 %i.eg     ; 2 uses
  %i.ei = getelementptr i8, ptr %i.do, i64 %i.eg
  %i.ej = getelementptr i8, ptr %i.di, i64 %i.eg
  br label %vector.body383

vector.body383:                                   ; preds = %vector.body383, %vector.ph381
  %index384 = phi i64 [ 0, %vector.ph381 ], [ %index.next390, %vector.body383 ] ; 2 uses
  %i.ek = shl i64 %index384, 2                    ; 3 uses
  %next.gep385 = getelementptr i8, ptr %7, i64 %i.ek
  %next.gep386 = getelementptr i8, ptr %i.do, i64 %i.ek ; 3 uses
  %next.gep387 = getelementptr i8, ptr %i.di, i64 %i.ek ; 2 uses
  %wide.load388 = load <4 x i32>, ptr %next.gep386, align 4, !tbaa !247, !alias.scope !3164, !noalias !3165
  store <4 x i32> %wide.load388, ptr %next.gep385, align 4, !tbaa !247, !alias.scope !3166, !noalias !3167
  store <4 x i32> zeroinitializer, ptr %next.gep386, align 4, !tbaa !247, !alias.scope !3164, !noalias !3165
  %wide.load389 = load <4 x i32>, ptr %next.gep387, align 4, !tbaa !247, !alias.scope !3165
  store <4 x i32> %wide.load389, ptr %next.gep386, align 4, !tbaa !247, !alias.scope !3164, !noalias !3165
  store <4 x i32> zeroinitializer, ptr %next.gep387, align 4, !tbaa !247, !alias.scope !3165
  %index.next390 = add nuw i64 %index384, 4       ; 2 uses
  %i.el = icmp eq i64 %index.next390, %n.vec382
  br i1 %i.el, label %middle.block391, label %vector.body383, !llvm.loop !3129

middle.block391:                                  ; preds = %vector.body383
  %cmp.n392 = icmp eq i64 %i.dt, %n.vec382
  br i1 %cmp.n392, label %._crit_edge.i134, label %.lr.ph.i129.preheader487

.lr.ph.i129.preheader487:                         ; preds = %vector.memcheck369, %.lr.ph.i129.preheader, %middle.block391
  %.033.i130.ph = phi ptr [ %7, %vector.memcheck369 ], [ %7, %.lr.ph.i129.preheader ], [ %i.eh, %middle.block391 ] ; 2 uses
  %.02032.i131.ph = phi ptr [ %i.do, %vector.memcheck369 ], [ %i.do, %.lr.ph.i129.preheader ], [ %i.ei, %middle.block391 ] ; 2 uses
  %.02131.i132.ph = phi ptr [ %i.di, %vector.memcheck369 ], [ %i.di, %.lr.ph.i129.preheader ], [ %i.ej, %middle.block391 ] ; 3 uses
  %.02131.i132.ph490 = ptrtoaddr ptr %.02131.i132.ph to i64
  %i.em = sub i64 %i.dq, %.02131.i132.ph490       ; 2 uses
  %i.en = lshr i64 %i.em, 2
  %i.eo = add nuw nsw i64 %i.en, 1
  %xtraiter = and i64 %i.eo, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i129.prol.loopexit, label %.lr.ph.i129.prol

.lr.ph.i129.prol:                                 ; preds = %.lr.ph.i129.preheader487, %.lr.ph.i129.prol
  %.033.i130.prol = phi ptr [ %i.er, %.lr.ph.i129.prol ], [ %.033.i130.ph, %.lr.ph.i129.preheader487 ] ; 2 uses
  %.02032.i131.prol = phi ptr [ %i.eq, %.lr.ph.i129.prol ], [ %.02032.i131.ph, %.lr.ph.i129.preheader487 ] ; 4 uses
  %.02131.i132.prol = phi ptr [ %i.ep, %.lr.ph.i129.prol ], [ %.02131.i132.ph, %.lr.ph.i129.preheader487 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i129.prol ], [ 0, %.lr.ph.i129.preheader487 ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.02131.i132.prol, i64 4 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.02032.i131.prol, i64 4 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.033.i130.prol, i64 4 ; 3 uses
  %i.es = load i32, ptr %.02032.i131.prol, align 4, !tbaa !247
  store i32 %i.es, ptr %.033.i130.prol, align 4, !tbaa !247
  store i32 0, ptr %.02032.i131.prol, align 4, !tbaa !247
  %i.et = load i32, ptr %.02131.i132.prol, align 4, !tbaa !247
  store i32 %i.et, ptr %.02032.i131.prol, align 4, !tbaa !247
  store i32 0, ptr %.02131.i132.prol, align 4, !tbaa !247
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i129.prol.loopexit, label %.lr.ph.i129.prol, !llvm.loop !3130

.lr.ph.i129.prol.loopexit:                        ; preds = %.lr.ph.i129.prol, %.lr.ph.i129.preheader487
  %.lcssa488.unr = phi ptr [ poison, %.lr.ph.i129.preheader487 ], [ %i.er, %.lr.ph.i129.prol ]
  %.033.i130.unr = phi ptr [ %.033.i130.ph, %.lr.ph.i129.preheader487 ], [ %i.er, %.lr.ph.i129.prol ]
  %.02032.i131.unr = phi ptr [ %.02032.i131.ph, %.lr.ph.i129.preheader487 ], [ %i.eq, %.lr.ph.i129.prol ]
  %.02131.i132.unr = phi ptr [ %.02131.i132.ph, %.lr.ph.i129.preheader487 ], [ %i.ep, %.lr.ph.i129.prol ]
  %i.eu = icmp ult i64 %i.em, 12
  br i1 %i.eu, label %._crit_edge.i134, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129
  %.033.i130 = phi ptr [ %i.fm, %.lr.ph.i129 ], [ %.033.i130.unr, %.lr.ph.i129.prol.loopexit ] ; 5 uses
  %.02032.i131 = phi ptr [ %i.fl, %.lr.ph.i129 ], [ %.02032.i131.unr, %.lr.ph.i129.prol.loopexit ] ; 7 uses
  %.02131.i132 = phi ptr [ %i.fk, %.lr.ph.i129 ], [ %.02131.i132.unr, %.lr.ph.i129.prol.loopexit ] ; 6 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 4 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 4 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.033.i130, i64 4
  %i.ey = load i32, ptr %.02032.i131, align 4, !tbaa !247
  store i32 %i.ey, ptr %.033.i130, align 4, !tbaa !247
  store i32 0, ptr %.02032.i131, align 4, !tbaa !247
  %i.ez = load i32, ptr %.02131.i132, align 4, !tbaa !247
  store i32 %i.ez, ptr %.02032.i131, align 4, !tbaa !247
  store i32 0, ptr %.02131.i132, align 4, !tbaa !247
  %i.fa = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 8 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.033.i130, i64 8
  %i.fd = load i32, ptr %i.ew, align 4, !tbaa !247
  store i32 %i.fd, ptr %i.ex, align 4, !tbaa !247
  store i32 0, ptr %i.ew, align 4, !tbaa !247
  %i.fe = load i32, ptr %i.ev, align 4, !tbaa !247
  store i32 %i.fe, ptr %i.ew, align 4, !tbaa !247
  store i32 0, ptr %i.ev, align 4, !tbaa !247
  %i.ff = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 12 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 12 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.033.i130, i64 12
  %i.fi = load i32, ptr %i.fb, align 4, !tbaa !247
  store i32 %i.fi, ptr %i.fc, align 4, !tbaa !247
  store i32 0, ptr %i.fb, align 4, !tbaa !247
  %i.fj = load i32, ptr %i.fa, align 4, !tbaa !247
  store i32 %i.fj, ptr %i.fb, align 4, !tbaa !247
  store i32 0, ptr %i.fa, align 4, !tbaa !247
  %i.fk = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 16 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %.033.i130, i64 16 ; 2 uses
  %i.fn = load i32, ptr %i.fg, align 4, !tbaa !247
  store i32 %i.fn, ptr %i.fh, align 4, !tbaa !247
  store i32 0, ptr %i.fg, align 4, !tbaa !247
  %i.fo = load i32, ptr %i.ff, align 4, !tbaa !247
  store i32 %i.fo, ptr %i.fg, align 4, !tbaa !247
  store i32 0, ptr %i.ff, align 4, !tbaa !247
  %.not28.i133.3 = icmp eq ptr %i.fk, %i.bc
  br i1 %.not28.i133.3, label %._crit_edge.i134, label %.lr.ph.i129, !llvm.loop !3131

._crit_edge.i134:                                 ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129, %middle.block391, %.preheader.i127
  %.0.lcssa.i135 = phi ptr [ %7, %.preheader.i127 ], [ %i.eh, %middle.block391 ], [ %.lcssa488.unr, %.lr.ph.i129.prol.loopexit ], [ %i.fm, %.lr.ph.i129 ] ; 2 uses
  %.not29.i136 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i136, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i134
  %i.fp = load i32, ptr %i.bh, align 4, !tbaa !247
  store i32 0, ptr %i.bh, align 4, !tbaa !247
  %i.fq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fr = add i32 %i.fq, 1
  store i32 %i.fr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fs = load i32, ptr %.0106223, align 4, !tbaa !247
  store i32 %i.fs, ptr %i.bh, align 4, !tbaa !247
  store i32 %i.fp, ptr %.0106223, align 4, !tbaa !247
  %i.ft = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fu = add i32 %i.ft, -1
  store i32 %i.fu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i134
  %i.fv = icmp eq ptr %i.bh, %.0191218
  br i1 %i.fv, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fw = icmp eq ptr %.0191218, %.0106223
  %spec.select205 = select i1 %i.fw, ptr %i.bh, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140: ; preds = %bb.t, %bb.s, %bb.q
  %.6 = phi ptr [ %.0191218, %bb.q ], [ %spec.select205, %bb.t ], [ %.0106223, %bb.s ]
  %.1.i137 = phi ptr [ %7, %bb.q ], [ %.0.lcssa.i135, %bb.t ], [ %.0.lcssa.i135, %bb.s ] ; 2 uses
  store ptr %.1.i137, ptr %i.c, align 8, !tbaa !250
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_b.exit
  %.not.i141 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not.i141, label %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fx = load i32, ptr %i.bh, align 4, !tbaa !247
  store i32 0, ptr %i.bh, align 4, !tbaa !247
  %i.fy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fz = add i32 %i.fy, 1
  store i32 %i.fz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ga = load i32, ptr %.0106223, align 4, !tbaa !247
  store i32 %i.ga, ptr %i.bh, align 4, !tbaa !247
  store i32 %i.fx, ptr %.0106223, align 4, !tbaa !247
  %i.gb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.gc = add i32 %i.gb, -1
  store i32 %i.gc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.gd = icmp eq ptr %i.bh, %.0191218
  br i1 %i.gd, label %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ge = icmp eq ptr %.0191218, %.0106223
  %spec.select206 = select i1 %i.ge, ptr %i.bh, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit

_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit: ; preds = %bb.w, %bb.u, %bb.v, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140
  %i.gf = phi ptr [ %.1.i137, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140 ], [ %i.dg, %bb.u ], [ %i.dg, %bb.w ], [ %i.dg, %bb.v ]
  %i.gg = phi ptr [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140 ], [ %i.df, %bb.u ], [ %i.df, %bb.w ], [ %i.df, %bb.v ]
  %.1192 = phi ptr [ %.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140 ], [ %.0191218, %bb.u ], [ %spec.select206, %bb.w ], [ %.0106223, %bb.v ]
  %i.gh = xor i1 %i.dd, %i.dh
  %i.gi = zext i1 %i.gh to i8
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit
  %i.gj = phi ptr [ %i.gf, %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit ], [ %.1.i, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit ] ; 2 uses
  %i.gk = phi ptr [ %i.gg, %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit ], [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit ] ; 2 uses
  %i.gl = phi i1 [ %i.dc, %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit ], [ %i.bp, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit ]
  %.2193 = phi ptr [ %.1192, %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit ], [ %.5, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit ] ; 2 uses
  %.1115 = phi ptr [ %i.de, %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit ], [ %i.ae, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit ] ; 2 uses
  %.1109 = phi i8 [ %i.gi, %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit ], [ %.0108222, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.gl, true
  %i.gm = sext i1 %not. to i64
  %.1 = add i64 %.0227, %i.gm
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %.0111220, i64 %2 ; 2 uses
  store ptr %i.bc, ptr %i.d, align 8, !tbaa !250
  %i.go = getelementptr inbounds nuw i8, ptr %.0106223, i64 4
  %i.gp = icmp ne i64 %.0104226, 0
  %.neg = sext i1 %i.gp to i64
end_hunk_8
begin_hunk_9_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7move_opES8_EEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_T4_:bb.a
  %i.bz = getelementptr i8, ptr %.0114219, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.ad, i64 %i.by
  br label %vector.body337

vector.body337:                                   ; preds = %vector.body337, %vector.ph335
  %index338 = phi i64 [ 0, %vector.ph335 ], [ %index.next343, %vector.body337 ] ; 2 uses
  %i.cb = shl i64 %index338, 2                    ; 2 uses
  %next.gep339 = getelementptr i8, ptr %.0114219, i64 %i.cb ; 2 uses
  %next.gep340 = getelementptr i8, ptr %i.ad, i64 %i.cb ; 3 uses
  %i.cc = getelementptr i8, ptr %next.gep340, i64 16 ; 2 uses
  %wide.load341 = load <4 x i32>, ptr %next.gep340, align 4, !tbaa !247, !alias.scope !3241
  %wide.load342 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !247, !alias.scope !3241
  %i.cd = getelementptr i8, ptr %next.gep339, i64 16
  store <4 x i32> %wide.load341, ptr %next.gep339, align 4, !tbaa !247, !alias.scope !3242, !noalias !3241
  store <4 x i32> %wide.load342, ptr %i.cd, align 4, !tbaa !247, !alias.scope !3242, !noalias !3241
  store <4 x i32> zeroinitializer, ptr %next.gep340, align 4, !tbaa !247, !alias.scope !3241
  store <4 x i32> zeroinitializer, ptr %i.cc, align 4, !tbaa !247, !alias.scope !3241
  %index.next343 = add nuw i64 %index338, 8       ; 2 uses
  %i.ce = icmp eq i64 %index.next343, %n.vec336
  br i1 %i.ce, label %middle.block344, label %vector.body337, !llvm.loop !3200

middle.block344:                                  ; preds = %vector.body337
  %cmp.n345 = icmp eq i64 %i.bt, %n.vec336
  br i1 %cmp.n345, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit, label %.lr.ph.i.i.preheader486

.lr.ph.i.i.preheader486:                          ; preds = %vector.memcheck331, %.lr.ph.i.i.preheader, %middle.block344
  %.010.i.i.ph = phi ptr [ %.0114219, %vector.memcheck331 ], [ %.0114219, %.lr.ph.i.i.preheader ], [ %i.bz, %middle.block344 ]
  %.079.i.i.ph = phi ptr [ %i.ad, %vector.memcheck331 ], [ %i.ad, %.lr.ph.i.i.preheader ], [ %i.ca, %middle.block344 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader486, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ch, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader486 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.cg, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader486 ] ; 3 uses
  %i.cf = load i32, ptr %.079.i.i, align 4, !tbaa !247
  store i32 %i.cf, ptr %.010.i.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i, align 4, !tbaa !247
  %i.cg = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.cg, %i.ac
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit, label %.lr.ph.i.i, !llvm.loop !3201

_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit: ; preds = %.lr.ph.i.i, %middle.block344, %bb.j
  store ptr %7, ptr %i.b, align 8, !tbaa !250
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit
  br i1 %.not2830.i, label %._crit_edge.i, label %.lr.ph.i125.preheader

.lr.ph.i125.preheader:                            ; preds = %.preheader.i
  br i1 %min.iters.check, label %.lr.ph.i125.preheader485, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i125.preheader
  %bound0 = icmp ult ptr %7, %i.bb
  %bound1 = icmp ult ptr %i.ba, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.z
  %bound0312 = icmp ult ptr %i.ba, %i.i
  %bound1313 = icmp ult ptr %i.g, %i.bb
  %found.conflict314 = and i1 %bound0312, %bound1313
  %conflict.rdx315 = or i1 %conflict.rdx, %found.conflict314
  br i1 %conflict.rdx315, label %.lr.ph.i125.preheader485, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ci = getelementptr i8, ptr %i.ba, i64 %i.aa
  %i.cj = getelementptr i8, ptr %i.ae, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ck = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %7, i64 %i.ck
  %next.gep316 = getelementptr i8, ptr %i.ba, i64 %i.ck ; 3 uses
  %next.gep317 = getelementptr i8, ptr %i.ae, i64 %i.ck ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep316, align 4, !tbaa !247, !alias.scope !3243, !noalias !3244
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !247, !alias.scope !3245, !noalias !3246
  store <4 x i32> zeroinitializer, ptr %next.gep316, align 4, !tbaa !247, !alias.scope !3243, !noalias !3244
  %wide.load318 = load <4 x i32>, ptr %next.gep317, align 4, !tbaa !247, !alias.scope !3244
  store <4 x i32> %wide.load318, ptr %next.gep316, align 4, !tbaa !247, !alias.scope !3243, !noalias !3244
  store <4 x i32> zeroinitializer, ptr %next.gep317, align 4, !tbaa !247, !alias.scope !3244
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !3206

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i125.preheader485

.lr.ph.i125.preheader485:                         ; preds = %vector.memcheck, %.lr.ph.i125.preheader, %middle.block
  %.033.i.ph = phi ptr [ %7, %vector.memcheck ], [ %7, %.lr.ph.i125.preheader ], [ %i.ab, %middle.block ]
  %.02032.i.ph = phi ptr [ %i.ba, %vector.memcheck ], [ %i.ba, %.lr.ph.i125.preheader ], [ %i.ci, %middle.block ]
  %.02131.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i125.preheader ], [ %i.cj, %middle.block ]
  br label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %.lr.ph.i125.preheader485, %.lr.ph.i125
  %.033.i = phi ptr [ %i.co, %.lr.ph.i125 ], [ %.033.i.ph, %.lr.ph.i125.preheader485 ] ; 2 uses
  %.02032.i = phi ptr [ %i.cn, %.lr.ph.i125 ], [ %.02032.i.ph, %.lr.ph.i125.preheader485 ] ; 4 uses
  %.02131.i = phi ptr [ %i.cm, %.lr.ph.i125 ], [ %.02131.i.ph, %.lr.ph.i125.preheader485 ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.02131.i, i64 4 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.02032.i, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %.033.i, i64 4 ; 2 uses
  %i.cp = load i32, ptr %.02032.i, align 4, !tbaa !247
  store i32 %i.cp, ptr %.033.i, align 4, !tbaa !247
  store i32 0, ptr %.02032.i, align 4, !tbaa !247
  %i.cq = load i32, ptr %.02131.i, align 4, !tbaa !247
  store i32 %i.cq, ptr %.02032.i, align 4, !tbaa !247
  store i32 0, ptr %.02131.i, align 4, !tbaa !247
  %.not28.i = icmp eq ptr %i.cm, %i.bc
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i125, !llvm.loop !3207

._crit_edge.i:                                    ; preds = %.lr.ph.i125, %middle.block, %.preheader.i
  %.0.lcssa.i = phi ptr [ %7, %.preheader.i ], [ %i.ab, %middle.block ], [ %i.co, %.lr.ph.i125 ] ; 2 uses
  %.not29.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  %i.cr = load i64, ptr %i.bh, align 8, !tbaa !223
  %i.cs = load i64, ptr %.0106223, align 8, !tbaa !223
  store i64 %i.cs, ptr %i.bh, align 8, !tbaa !223
  store i64 %i.cr, ptr %.0106223, align 8, !tbaa !223
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %i.ct = icmp eq ptr %i.bh, %.0191218
  br i1 %i.ct, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cu = icmp eq ptr %.0191218, %.0106223
  %spec.select = select i1 %i.cu, ptr %i.bh, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit: ; preds = %bb.m, %bb.l, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit
  %.5 = phi ptr [ %.0191218, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %spec.select, %bb.m ], [ %.0106223, %bb.l ]
  %.1.i = phi ptr [ %7, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %.0.lcssa.i, %bb.m ], [ %.0.lcssa.i, %bb.l ] ; 2 uses
  store ptr %.1.i, ptr %i.c, align 8, !tbaa !250
  br label %bb.x

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cv = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_(ptr noundef %.0114219, ptr noundef %.0111220, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.bc, ptr noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_b.exit

bb.p:                                             ; preds = %.thread281, %bb.n
  %i.cw = phi i1 [ true, %.thread281 ], [ %i.bm, %bb.n ]
  store ptr %8, ptr %9, align 8, !tbaa !327
  %i.cx = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPNS_9container4test24movable_and_copyable_intES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr noundef %.0114219, ptr noundef %.0111220, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.bc, ptr noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dead_on_return %9)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_b.exit: ; preds = %bb.o, %bb.p
  %i.cy = phi i1 [ %i.bm, %bb.o ], [ %i.cw, %bb.p ]
  %i.cz = phi i1 [ true, %bb.o ], [ false, %bb.p ]
  %i.da = phi ptr [ %i.cv, %bb.o ], [ %i.cx, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.db = load ptr, ptr %i.b, align 8, !tbaa !250 ; 4 uses
  %i.dc = load ptr, ptr %i.c, align 8, !tbaa !250 ; 4 uses
  %i.dd = icmp eq ptr %i.db, %i.dc                ; 2 uses
  br i1 %i.dd, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_b.exit
  store ptr %7, ptr %i.b, align 8, !tbaa !250
  %i.de = load ptr, ptr %i.d, align 8, !tbaa !250 ; 10 uses
  %i.df = ptrtoint ptr %i.bc to i64
  %i.dg = ptrtoint ptr %i.de to i64               ; 3 uses
  %i.dh = sub i64 %i.df, %i.dg                    ; 2 uses
  %i.di = ashr exact i64 %i.dh, 2
  %i.dj = sub nsw i64 0, %i.di
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.dj ; 7 uses
  %.not.i126 = icmp eq ptr %i.de, %i.dk
  br i1 %.not.i126, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit140, label %.preheader.i127

.preheader.i127:                                  ; preds = %bb.q
  %.not2830.i128 = icmp eq ptr %i.de, %i.bc
  br i1 %.not2830.i128, label %._crit_edge.i134, label %.lr.ph.i129.preheader

.lr.ph.i129.preheader:                            ; preds = %.preheader.i127
  %i.dl = mul i64 %indvar, %.idx208               ; 3 uses
  %i.dm = add i64 %i.v, %i.dl                     ; 2 uses
  %i.dn = sub i64 %i.dm, %i.dg                    ; 2 uses
  %i.do = lshr i64 %i.dn, 2
  %i.dp = add nuw nsw i64 %i.do, 1                ; 2 uses
  %min.iters.check368 = icmp ult i64 %i.dn, 60
  br i1 %min.iters.check368, label %.lr.ph.i129.preheader487, label %vector.memcheck369

vector.memcheck369:                               ; preds = %.lr.ph.i129.preheader
  %i.dq = add i64 %i.r, %i.dl
  %i.dr = sub i64 %i.dq, %i.dg
  %i.ds = and i64 %i.dr, -4                       ; 3 uses
  %i.dt = getelementptr i8, ptr %scevgep366, i64 %i.ds ; 2 uses
  %i.du = add i64 %i.o, %i.dl
  %i.dv = shl i64 %.022.lcssa.i, 2
  %i.dw = add i64 %i.dv, 4
  %i.dx = mul i64 %2, %i.dw
  %i.dy = add i64 %i.du, %i.dx
  %i.dz = add i64 %i.dy, %i.ds
  %i.ea = sub i64 %i.dz, %i.dh
  %i.eb = getelementptr i8, ptr %1, i64 %i.ea     ; 2 uses
  %bound0370 = icmp ult ptr %7, %i.eb
  %bound1371 = icmp ult ptr %i.dk, %i.dt
  %found.conflict372 = and i1 %bound0370, %bound1371
  %17 = getelementptr i8, ptr %i.de, i64 %i.ds
  %18 = getelementptr i8, ptr %17, i64 4          ; 2 uses
  %bound0373 = icmp ult ptr %7, %18
  %bound1374 = icmp ult ptr %i.de, %i.dt
  %found.conflict375 = and i1 %bound0373, %bound1374
  %conflict.rdx376 = or i1 %found.conflict372, %found.conflict375
  %bound0377 = icmp ult ptr %i.dk, %18
  %bound1378 = icmp ult ptr %i.de, %i.eb
  %found.conflict379 = and i1 %bound0377, %bound1378
  %conflict.rdx380 = or i1 %conflict.rdx376, %found.conflict379
  br i1 %conflict.rdx380, label %.lr.ph.i129.preheader487, label %vector.ph381

vector.ph381:                                     ; preds = %vector.memcheck369
  %n.vec382 = and i64 %i.dp, 9223372036854775804  ; 3 uses
  %i.ec = shl i64 %n.vec382, 2                    ; 3 uses
  %i.ed = getelementptr i8, ptr %7, i64 %i.ec     ; 2 uses
  %i.ee = getelementptr i8, ptr %i.dk, i64 %i.ec
  %i.ef = getelementptr i8, ptr %i.de, i64 %i.ec
  br label %vector.body383

vector.body383:                                   ; preds = %vector.body383, %vector.ph381
  %index384 = phi i64 [ 0, %vector.ph381 ], [ %index.next390, %vector.body383 ] ; 2 uses
  %i.eg = shl i64 %index384, 2                    ; 3 uses
  %next.gep385 = getelementptr i8, ptr %7, i64 %i.eg
  %next.gep386 = getelementptr i8, ptr %i.dk, i64 %i.eg ; 3 uses
  %next.gep387 = getelementptr i8, ptr %i.de, i64 %i.eg ; 2 uses
  %wide.load388 = load <4 x i32>, ptr %next.gep386, align 4, !tbaa !247, !alias.scope !3247, !noalias !3248
  store <4 x i32> %wide.load388, ptr %next.gep385, align 4, !tbaa !247, !alias.scope !3249, !noalias !3250
  store <4 x i32> zeroinitializer, ptr %next.gep386, align 4, !tbaa !247, !alias.scope !3247, !noalias !3248
  %wide.load389 = load <4 x i32>, ptr %next.gep387, align 4, !tbaa !247, !alias.scope !3248
  store <4 x i32> %wide.load389, ptr %next.gep386, align 4, !tbaa !247, !alias.scope !3247, !noalias !3248
  store <4 x i32> zeroinitializer, ptr %next.gep387, align 4, !tbaa !247, !alias.scope !3248
  %index.next390 = add nuw i64 %index384, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next390, %n.vec382
  br i1 %i.eh, label %middle.block391, label %vector.body383, !llvm.loop !3212

middle.block391:                                  ; preds = %vector.body383
  %cmp.n392 = icmp eq i64 %i.dp, %n.vec382
  br i1 %cmp.n392, label %._crit_edge.i134, label %.lr.ph.i129.preheader487

.lr.ph.i129.preheader487:                         ; preds = %vector.memcheck369, %.lr.ph.i129.preheader, %middle.block391
  %.033.i130.ph = phi ptr [ %7, %vector.memcheck369 ], [ %7, %.lr.ph.i129.preheader ], [ %i.ed, %middle.block391 ] ; 2 uses
  %.02032.i131.ph = phi ptr [ %i.dk, %vector.memcheck369 ], [ %i.dk, %.lr.ph.i129.preheader ], [ %i.ee, %middle.block391 ] ; 2 uses
  %.02131.i132.ph = phi ptr [ %i.de, %vector.memcheck369 ], [ %i.de, %.lr.ph.i129.preheader ], [ %i.ef, %middle.block391 ] ; 3 uses
  %.02131.i132.ph490 = ptrtoaddr ptr %.02131.i132.ph to i64
  %i.ei = sub i64 %i.dm, %.02131.i132.ph490       ; 2 uses
  %i.ej = lshr i64 %i.ei, 2
  %i.ek = add nuw nsw i64 %i.ej, 1
  %xtraiter = and i64 %i.ek, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i129.prol.loopexit, label %.lr.ph.i129.prol

.lr.ph.i129.prol:                                 ; preds = %.lr.ph.i129.preheader487, %.lr.ph.i129.prol
  %.033.i130.prol = phi ptr [ %i.en, %.lr.ph.i129.prol ], [ %.033.i130.ph, %.lr.ph.i129.preheader487 ] ; 2 uses
  %.02032.i131.prol = phi ptr [ %i.em, %.lr.ph.i129.prol ], [ %.02032.i131.ph, %.lr.ph.i129.preheader487 ] ; 4 uses
  %.02131.i132.prol = phi ptr [ %i.el, %.lr.ph.i129.prol ], [ %.02131.i132.ph, %.lr.ph.i129.preheader487 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i129.prol ], [ 0, %.lr.ph.i129.preheader487 ]
  %i.el = getelementptr inbounds nuw i8, ptr %.02131.i132.prol, i64 4 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.02032.i131.prol, i64 4 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.033.i130.prol, i64 4 ; 3 uses
  %i.eo = load i32, ptr %.02032.i131.prol, align 4, !tbaa !247
  store i32 %i.eo, ptr %.033.i130.prol, align 4, !tbaa !247
  store i32 0, ptr %.02032.i131.prol, align 4, !tbaa !247
  %i.ep = load i32, ptr %.02131.i132.prol, align 4, !tbaa !247
  store i32 %i.ep, ptr %.02032.i131.prol, align 4, !tbaa !247
  store i32 0, ptr %.02131.i132.prol, align 4, !tbaa !247
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i129.prol.loopexit, label %.lr.ph.i129.prol, !llvm.loop !3213

.lr.ph.i129.prol.loopexit:                        ; preds = %.lr.ph.i129.prol, %.lr.ph.i129.preheader487
  %.lcssa488.unr = phi ptr [ poison, %.lr.ph.i129.preheader487 ], [ %i.en, %.lr.ph.i129.prol ]
  %.033.i130.unr = phi ptr [ %.033.i130.ph, %.lr.ph.i129.preheader487 ], [ %i.en, %.lr.ph.i129.prol ]
  %.02032.i131.unr = phi ptr [ %.02032.i131.ph, %.lr.ph.i129.preheader487 ], [ %i.em, %.lr.ph.i129.prol ]
  %.02131.i132.unr = phi ptr [ %.02131.i132.ph, %.lr.ph.i129.preheader487 ], [ %i.el, %.lr.ph.i129.prol ]
  %i.eq = icmp ult i64 %i.ei, 12
  br i1 %i.eq, label %._crit_edge.i134, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129
  %.033.i130 = phi ptr [ %i.fi, %.lr.ph.i129 ], [ %.033.i130.unr, %.lr.ph.i129.prol.loopexit ] ; 5 uses
  %.02032.i131 = phi ptr [ %i.fh, %.lr.ph.i129 ], [ %.02032.i131.unr, %.lr.ph.i129.prol.loopexit ] ; 7 uses
  %.02131.i132 = phi ptr [ %i.fg, %.lr.ph.i129 ], [ %.02131.i132.unr, %.lr.ph.i129.prol.loopexit ] ; 6 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 4 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 4 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.033.i130, i64 4
  %i.eu = load i32, ptr %.02032.i131, align 4, !tbaa !247
  store i32 %i.eu, ptr %.033.i130, align 4, !tbaa !247
  store i32 0, ptr %.02032.i131, align 4, !tbaa !247
  %i.ev = load i32, ptr %.02131.i132, align 4, !tbaa !247
  store i32 %i.ev, ptr %.02032.i131, align 4, !tbaa !247
  store i32 0, ptr %.02131.i132, align 4, !tbaa !247
  %i.ew = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 8 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.033.i130, i64 8
  %i.ez = load i32, ptr %i.es, align 4, !tbaa !247
  store i32 %i.ez, ptr %i.et, align 4, !tbaa !247
  store i32 0, ptr %i.es, align 4, !tbaa !247
  %i.fa = load i32, ptr %i.er, align 4, !tbaa !247
  store i32 %i.fa, ptr %i.es, align 4, !tbaa !247
  store i32 0, ptr %i.er, align 4, !tbaa !247
  %i.fb = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 12 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 12 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.033.i130, i64 12
  %i.fe = load i32, ptr %i.ex, align 4, !tbaa !247
  store i32 %i.fe, ptr %i.ey, align 4, !tbaa !247
  store i32 0, ptr %i.ex, align 4, !tbaa !247
  %i.ff = load i32, ptr %i.ew, align 4, !tbaa !247
  store i32 %i.ff, ptr %i.ex, align 4, !tbaa !247
  store i32 0, ptr %i.ew, align 4, !tbaa !247
  %i.fg = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 16 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %.033.i130, i64 16 ; 2 uses
  %i.fj = load i32, ptr %i.fc, align 4, !tbaa !247
  store i32 %i.fj, ptr %i.fd, align 4, !tbaa !247
  store i32 0, ptr %i.fc, align 4, !tbaa !247
  %i.fk = load i32, ptr %i.fb, align 4, !tbaa !247
  store i32 %i.fk, ptr %i.fc, align 4, !tbaa !247
  store i32 0, ptr %i.fb, align 4, !tbaa !247
  %.not28.i133.3 = icmp eq ptr %i.fg, %i.bc
  br i1 %.not28.i133.3, label %._crit_edge.i134, label %.lr.ph.i129, !llvm.loop !3214

._crit_edge.i134:                                 ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129, %middle.block391, %.preheader.i127
  %.0.lcssa.i135 = phi ptr [ %7, %.preheader.i127 ], [ %i.ed, %middle.block391 ], [ %.lcssa488.unr, %.lr.ph.i129.prol.loopexit ], [ %i.fi, %.lr.ph.i129 ] ; 2 uses
  %.not29.i136 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i136, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i134
  %i.fl = load i64, ptr %i.bh, align 8, !tbaa !223
  %i.fm = load i64, ptr %.0106223, align 8, !tbaa !223
  store i64 %i.fm, ptr %i.bh, align 8, !tbaa !223
  store i64 %i.fl, ptr %.0106223, align 8, !tbaa !223
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i134
  %i.fn = icmp eq ptr %i.bh, %.0191218
  br i1 %i.fn, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit140, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fo = icmp eq ptr %.0191218, %.0106223
  %spec.select205 = select i1 %i.fo, ptr %i.bh, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit140

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit140: ; preds = %bb.t, %bb.s, %bb.q
  %.6 = phi ptr [ %.0191218, %bb.q ], [ %spec.select205, %bb.t ], [ %.0106223, %bb.s ]
  %.1.i137 = phi ptr [ %7, %bb.q ], [ %.0.lcssa.i135, %bb.t ], [ %.0.lcssa.i135, %bb.s ] ; 2 uses
  store ptr %.1.i137, ptr %i.c, align 8, !tbaa !250
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_b.exit
  %.not.i141 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not.i141, label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fp = load i64, ptr %i.bh, align 8, !tbaa !223
  %i.fq = load i64, ptr %.0106223, align 8, !tbaa !223
  store i64 %i.fq, ptr %i.bh, align 8, !tbaa !223
  store i64 %i.fp, ptr %.0106223, align 8, !tbaa !223
  %i.fr = icmp eq ptr %i.bh, %.0191218
  br i1 %i.fr, label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fs = icmp eq ptr %.0191218, %.0106223
  %spec.select206 = select i1 %i.fs, ptr %i.bh, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit

_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit: ; preds = %bb.w, %bb.u, %bb.v, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit140
  %i.ft = phi ptr [ %.1.i137, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit140 ], [ %i.dc, %bb.u ], [ %i.dc, %bb.w ], [ %i.dc, %bb.v ]
  %i.fu = phi ptr [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit140 ], [ %i.db, %bb.u ], [ %i.db, %bb.w ], [ %i.db, %bb.v ]
  %.1192 = phi ptr [ %.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit140 ], [ %.0191218, %bb.u ], [ %spec.select206, %bb.w ], [ %.0106223, %bb.v ]
  %i.fv = xor i1 %i.cz, %i.dd
  %i.fw = zext i1 %i.fv to i8
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit
  %i.fx = phi ptr [ %i.ft, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %.1.i, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit ] ; 2 uses
  %i.fy = phi ptr [ %i.fu, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit ] ; 2 uses
  %i.fz = phi i1 [ %i.cy, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %i.bp, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit ]
  %.2193 = phi ptr [ %.1192, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %.5, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit ] ; 2 uses
  %.1115 = phi ptr [ %i.da, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %i.ae, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit ] ; 2 uses
  %.1109 = phi i8 [ %i.fw, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %.0108222, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.fz, true
  %i.ga = sext i1 %not. to i64
  %.1 = add i64 %.0227, %i.ga
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.0111220, i64 %2 ; 2 uses
  store ptr %i.bc, ptr %i.d, align 8, !tbaa !250
  %i.gc = getelementptr inbounds nuw i8, ptr %.0106223, i64 8
  %i.gd = icmp ne i64 %.0104226, 0
  %.neg = sext i1 %i.gd to i64
  %i.ge = add i64 %.0104226, %.neg
  %i.gf = icmp ne i64 %i.ay, 0
  %.neg122 = sext i1 %i.gf to i64
  %i.gg = add i64 %.sroa.speculated180, %.neg122
  %i.gh = add i64 %.0195217, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gh, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !3215

.thread:                                          ; preds = %bb.x, %bb.g, %bb.f
  %i.gi = phi ptr [ %i.fx, %bb.x ], [ %i.ac, %bb.g ], [ %i.ac, %bb.f ] ; 3 uses
  %i.gj = phi ptr [ %i.fy, %bb.x ], [ %i.ad, %bb.g ], [ %i.ad, %bb.f ] ; 8 uses
  %.0195.lcssa.ph = phi i64 [ 0, %bb.x ], [ %.0195217, %bb.g ], [ %.0195217, %bb.f ] ; 3 uses
  %.0191.lcssa.ph = phi ptr [ %.2193, %bb.x ], [ %.0191218, %bb.g ], [ %.0191218, %bb.f ] ; 3 uses
end_hunk_9
begin_hunk_10_@_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE15_M_range_insertIPKS3_EEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SD_St20forward_iterator_tag:bb.a
  %i.cz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #27
  br label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit, %bb.g
  %i.da = phi ptr [ %i.cz, %bb.g ], [ null, %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %.not13.i.i.i.i.i = icmp eq ptr %i.co, %1
  br i1 %.not13.i.i.i.i.i, label %.lr.ph.i.i.i.i74.preheader, label %.lr.ph.i.i.i.i.i70.preheader

.lr.ph.i.i.i.i.i70.preheader:                     ; preds = %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248 ; 3 uses
  %i.db = add i64 %i.a, -4
  %i.dc = sub i64 %i.db, %i.cp                    ; 3 uses
  %i.dd = lshr i64 %i.dc, 2
  %i.de = add nuw nsw i64 %i.dd, 1                ; 2 uses
  %min.iters.check179 = icmp ult i64 %i.dc, 60
  br i1 %min.iters.check179, label %.lr.ph.i.i.i.i.i70.preheader200, label %vector.memcheck180

vector.memcheck180:                               ; preds = %.lr.ph.i.i.i.i.i70.preheader
  %i.df = and i64 %i.dc, -4
  %i.dg = getelementptr i8, ptr %i.co, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 4
  %bound0181 = icmp ugt ptr %i.dh, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound1182 = icmp ult ptr %i.co, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict183 = and i1 %bound0181, %bound1182
  br i1 %found.conflict183, label %.lr.ph.i.i.i.i.i70.preheader200, label %vector.ph184

vector.ph184:                                     ; preds = %vector.memcheck180
  %n.vec185 = and i64 %i.de, 9223372036854775800  ; 3 uses
  %i.di = shl i64 %n.vec185, 2                    ; 2 uses
  %i.dj = getelementptr i8, ptr %i.da, i64 %i.di  ; 2 uses
  %i.dk = getelementptr i8, ptr %i.co, i64 %i.di
  %i.dl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, i64 0
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph184
  %index187 = phi i64 [ 0, %vector.ph184 ], [ %index.next193, %vector.body186 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.dl, %vector.ph184 ], [ %i.dp, %vector.body186 ]
  %vec.phi188 = phi <4 x i32> [ zeroinitializer, %vector.ph184 ], [ %i.dq, %vector.body186 ]
  %i.dm = shl i64 %index187, 2                    ; 2 uses
  %next.gep189 = getelementptr i8, ptr %i.da, i64 %i.dm ; 2 uses
  %next.gep190 = getelementptr i8, ptr %i.co, i64 %i.dm ; 2 uses
  %i.dn = getelementptr i8, ptr %next.gep190, i64 16
  %wide.load191 = load <4 x i32>, ptr %next.gep190, align 4, !tbaa !247, !alias.scope !15027
  %wide.load192 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !247, !alias.scope !15027
  %i.do = getelementptr i8, ptr %next.gep189, i64 16
  store <4 x i32> %wide.load191, ptr %next.gep189, align 4, !tbaa !247
  store <4 x i32> %wide.load192, ptr %i.do, align 4, !tbaa !247
  %i.dp = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.dq = add <4 x i32> %vec.phi188, splat (i32 1) ; 2 uses
  %index.next193 = add nuw i64 %index187, 8       ; 2 uses
  %i.dr = icmp eq i64 %index.next193, %n.vec185
  br i1 %i.dr, label %middle.block194, label %vector.body186, !llvm.loop !15022

middle.block194:                                  ; preds = %vector.body186
  %bin.rdx = add <4 x i32> %i.dq, %i.dp
  %i.ds = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ds, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !alias.scope !15028, !noalias !15027
  %cmp.n195 = icmp eq i64 %i.de, %n.vec185
  br i1 %cmp.n195, label %.lr.ph.i.i.i.i74.preheader, label %.lr.ph.i.i.i.i.i70.preheader200

.lr.ph.i.i.i.i.i70.preheader200:                  ; preds = %vector.memcheck180, %.lr.ph.i.i.i.i.i70.preheader, %middle.block194
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %vector.memcheck180 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.ds, %middle.block194 ]
  %.015.i.i.i.i.i.ph = phi ptr [ %i.da, %vector.memcheck180 ], [ %i.da, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.dj, %middle.block194 ]
  %.01214.i.i.i.i.i.ph = phi ptr [ %i.co, %vector.memcheck180 ], [ %i.co, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.dk, %middle.block194 ]
  br label %.lr.ph.i.i.i.i.i70

.lr.ph.i.i.i.i.i70:                               ; preds = %.lr.ph.i.i.i.i.i70.preheader200, %.lr.ph.i.i.i.i.i70
  %i.dt = phi i32 [ %i.dv, %.lr.ph.i.i.i.i.i70 ], [ %.ph, %.lr.ph.i.i.i.i.i70.preheader200 ]
  %.015.i.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i70 ], [ %.015.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i70.preheader200 ] ; 2 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i70 ], [ %.01214.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i70.preheader200 ] ; 2 uses
  %i.du = load i32, ptr %.01214.i.i.i.i.i, align 4, !tbaa !247
  store i32 %i.du, ptr %.015.i.i.i.i.i, align 4, !tbaa !247
  %i.dv = add i32 %i.dt, 1                        ; 2 uses
  store i32 %i.dv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.dw = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 4 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i71 = icmp eq ptr %i.dw, %1
  br i1 %.not.i.i.i.i.i71, label %.lr.ph.i.i.i.i74.preheader, label %.lr.ph.i.i.i.i.i70, !llvm.loop !15024

.lr.ph.i.i.i.i74.preheader:                       ; preds = %.lr.ph.i.i.i.i.i70, %middle.block194, %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit
  %.015.i.i.i.i75.ph = phi ptr [ %i.da, %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit ], [ %i.dj, %middle.block194 ], [ %i.dx, %.lr.ph.i.i.i.i.i70 ]
  br label %.lr.ph.i.i.i.i74

.lr.ph.i.i.i.i74:                                 ; preds = %.lr.ph.i.i.i.i74.preheader, %.lr.ph.i.i.i.i74
  %.015.i.i.i.i75 = phi ptr [ %i.ec, %.lr.ph.i.i.i.i74 ], [ %.015.i.i.i.i75.ph, %.lr.ph.i.i.i.i74.preheader ] ; 2 uses
  %.01214.i.i.i.i76 = phi ptr [ %i.eb, %.lr.ph.i.i.i.i74 ], [ %2, %.lr.ph.i.i.i.i74.preheader ] ; 2 uses
  %i.dy = load i32, ptr %.01214.i.i.i.i76, align 4, !tbaa !247
  store i32 %i.dy, ptr %.015.i.i.i.i75, align 4, !tbaa !247
  %i.dz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ea = add i32 %i.dz, 1
  store i32 %i.ea, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.eb = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i76, i64 4 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i75, i64 4 ; 3 uses
  %.not.i.i.i.i77 = icmp eq ptr %i.eb, %3
  br i1 %.not.i.i.i.i77, label %_ZSt22__uninitialized_copy_aIPKN5boost9container4test24movable_and_copyable_intEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit79, label %.lr.ph.i.i.i.i74, !llvm.loop !15017

_ZSt22__uninitialized_copy_aIPKN5boost9container4test24movable_and_copyable_intEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit79: ; preds = %.lr.ph.i.i.i.i74
  %.not13.i.i.i.i.i80 = icmp eq ptr %1, %i.i
  br i1 %.not13.i.i.i.i.i80, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit86, label %.lr.ph.i.i.i.i.i81

.lr.ph.i.i.i.i.i81:                               ; preds = %_ZSt22__uninitialized_copy_aIPKN5boost9container4test24movable_and_copyable_intEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit79, %.lr.ph.i.i.i.i.i81
  %.015.i.i.i.i.i82 = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i81 ], [ %i.ec, %_ZSt22__uninitialized_copy_aIPKN5boost9container4test24movable_and_copyable_intEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit79 ] ; 2 uses
  %.01214.i.i.i.i.i83 = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i81 ], [ %1, %_ZSt22__uninitialized_copy_aIPKN5boost9container4test24movable_and_copyable_intEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit79 ] ; 2 uses
  %i.ed = load i32, ptr %.01214.i.i.i.i.i83, align 4, !tbaa !247
  store i32 %i.ed, ptr %.015.i.i.i.i.i82, align 4, !tbaa !247
  %i.ee = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.eg = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i83, i64 4 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i82, i64 4 ; 2 uses
  %.not.i.i.i.i.i84 = icmp eq ptr %i.eg, %i.i
  br i1 %.not.i.i.i.i.i84, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit86, label %.lr.ph.i.i.i.i.i81, !llvm.loop !15017

_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit86: ; preds = %.lr.ph.i.i.i.i.i81, %_ZSt22__uninitialized_copy_aIPKN5boost9container4test24movable_and_copyable_intEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit79
  %.0.lcssa.i.i.i.i.i85 = phi ptr [ %i.ec, %_ZSt22__uninitialized_copy_aIPKN5boost9container4test24movable_and_copyable_intEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit79 ], [ %i.eh, %.lr.ph.i.i.i.i.i81 ]
  %.not4.i.i = icmp eq ptr %i.co, %i.i
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit86, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.ek, %.lr.ph.i.i ], [ %i.co, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit86 ] ; 2 uses
  store i32 -2147483648, ptr %.05.i.i, align 4, !tbaa !247
  %i.ei = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ej = add i32 %i.ei, -1
  store i32 %i.ej, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ek = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ek, %i.i
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit, label %.lr.ph.i.i, !llvm.loop !17

_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit86
  %.not.i87 = icmp eq ptr %i.co, null
  br i1 %.not.i87, label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit
  %i.el = load ptr, ptr %i.f, align 8, !tbaa !303
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = sub i64 %i.em, %i.cp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.en) #28
  br label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit, %bb.h
  store ptr %i.da, ptr %0, align 8, !tbaa !302
  store ptr %.0.lcssa.i.i.i.i.i85, ptr %i.h, align 8, !tbaa !301
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.cx
  store ptr %i.eo, ptr %i.f, align 8, !tbaa !303
  br label %_ZSt4copyIPKN5boost9container4test24movable_and_copyable_intEN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEET0_T_SE_SD_.exit

_ZSt4copyIPKN5boost9container4test24movable_and_copyable_intEN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEET0_T_SE_SD_.exit: ; preds = %.lr.ph.i.i.i.i.i65, %.lr.ph.i.i.i.i.i56, %middle.block, %middle.block169, %_ZSt22__uninitialized_move_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit63, %_ZSt13move_backwardIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit, %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !301  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !302    ; 15 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !303
  %i.j = load ptr, ptr %0, align 8, !tbaa !302    ; 13 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 6 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.o, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !222

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27 ; 10 uses
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248 ; 3 uses
  %i.q = add i64 %i.d, -4
  %i.r = sub i64 %i.q, %i.e                       ; 3 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check86 = icmp ult i64 %i.r, 124
  br i1 %min.iters.check86, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck87

vector.memcheck87:                                ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.u = and i64 %i.r, -4
  %i.v = add i64 %i.u, 4                          ; 2 uses
  %i.w = getelementptr i8, ptr %i.p, i64 %i.v     ; 2 uses
  %bound0 = icmp ult ptr %i.p, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %i.w, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %2 = getelementptr i8, ptr %i.c, i64 %i.v       ; 2 uses
  %bound088 = icmp ult ptr %i.p, %2
  %bound189 = icmp ult ptr %i.c, %i.w
  %found.conflict90 = and i1 %bound088, %bound189
  %conflict.rdx = or i1 %found.conflict, %found.conflict90
  %bound091 = icmp ugt ptr %2, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound192 = icmp ult ptr %i.c, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict93 = and i1 %bound091, %bound192
  %conflict.rdx94 = or i1 %conflict.rdx, %found.conflict93
  br i1 %conflict.rdx94, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph95

vector.ph95:                                      ; preds = %vector.memcheck87
  %n.vec96 = and i64 %i.t, 9223372036854775800    ; 3 uses
  %i.x = shl i64 %n.vec96, 2                      ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x
  %i.z = getelementptr i8, ptr %i.c, i64 %i.x
  %i.aa = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, i64 0
  br label %vector.body97

vector.body97:                                    ; preds = %vector.body97, %vector.ph95
  %index98 = phi i64 [ 0, %vector.ph95 ], [ %index.next104, %vector.body97 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.aa, %vector.ph95 ], [ %i.ae, %vector.body97 ]
  %vec.phi99 = phi <4 x i32> [ zeroinitializer, %vector.ph95 ], [ %i.af, %vector.body97 ]
  %i.ab = shl i64 %index98, 2                     ; 2 uses
  %next.gep100 = getelementptr i8, ptr %i.p, i64 %i.ab ; 2 uses
  %next.gep101 = getelementptr i8, ptr %i.c, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep101, i64 16
  %wide.load102 = load <4 x i32>, ptr %next.gep101, align 4, !tbaa !247, !alias.scope !15041
  %wide.load103 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !247, !alias.scope !15041
  %i.ad = getelementptr i8, ptr %next.gep100, i64 16
  store <4 x i32> %wide.load102, ptr %next.gep100, align 4, !tbaa !247, !alias.scope !15042, !noalias !15043
  store <4 x i32> %wide.load103, ptr %i.ad, align 4, !tbaa !247, !alias.scope !15042, !noalias !15043
  %i.ae = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.af = add <4 x i32> %vec.phi99, splat (i32 1) ; 2 uses
  %index.next104 = add nuw i64 %index98, 8        ; 2 uses
  %i.ag = icmp eq i64 %index.next104, %n.vec96
  br i1 %i.ag, label %middle.block105, label %vector.body97, !llvm.loop !15033

middle.block105:                                  ; preds = %vector.body97
  %bin.rdx = add <4 x i32> %i.af, %i.ae
  %i.ah = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ah, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !alias.scope !15044, !noalias !15041
  %cmp.n106 = icmp eq i64 %i.t, %n.vec96
  br i1 %cmp.n106, label %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck87, %.lr.ph.i.i.i.i.preheader.i, %middle.block105
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %vector.memcheck87 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %.lr.ph.i.i.i.i.preheader.i ], [ %i.ah, %middle.block105 ]
  %.013.i.i.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck87 ], [ %i.p, %.lr.ph.i.i.i.i.preheader.i ], [ %i.y, %middle.block105 ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck87 ], [ %i.c, %.lr.ph.i.i.i.i.preheader.i ], [ %i.z, %middle.block105 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %i.ai = phi i32 [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.013.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.aj = load i32, ptr %.sroa.08.012.i.i.i.i.i, align 4, !tbaa !247
  store i32 %i.aj, ptr %.013.i.i.i.i.i, align 4, !tbaa !247
  %i.ak = add i32 %i.ai, 1                        ; 2 uses
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !15034

_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block105
  %i.an = load ptr, ptr %0, align 8, !tbaa !302   ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !301 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.an, %i.ap
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.as, %.lr.ph.i.i ], [ %i.an, %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit ] ; 2 uses
  store i32 -2147483648, ptr %.05.i.i, align 4, !tbaa !247
  %i.aq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ar = add i32 %i.aq, -1
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 4 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.as, %i.ap
  br i1 %.not.i.i25, label %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit, label %.lr.ph.i.i, !llvm.loop !17

_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit: ; preds = %.lr.ph.i.i, %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !303
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.an to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.aw) #28
  br label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !302
  %i.ax = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.ax, ptr %i.h, align 8, !tbaa !303
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit

bb.f:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !301 ; 4 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.bb, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = icmp sgt i64 %i.g, 0
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i26.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

.lr.ph.i.i.i.i.i26.preheader:                     ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.g, 8
  %i.bd = sub i64 %i.e, %i.l
  %diff.check = icmp ugt i64 %i.bd, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i26.preheader114, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i26.preheader
  %n.vec = and i64 %i.g, 9223372036854775800      ; 3 uses
  %i.be = and i64 %i.g, 7
  %i.bf = shl i64 %n.vec, 2                       ; 2 uses
  %i.bg = getelementptr i8, ptr %i.j, i64 %i.bf   ; 2 uses
  %i.bh = getelementptr i8, ptr %i.c, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.bi ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.c, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep52, align 4, !tbaa !247
  %wide.load53 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !247
  %i.bk = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !247
  store <4 x i32> %wide.load53, ptr %i.bk, align 4, !tbaa !247
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !15035

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit, label %.lr.ph.i.i.i.i.i26.preheader114

.lr.ph.i.i.i.i.i26.preheader114:                  ; preds = %.lr.ph.i.i.i.i.i26.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.be, %middle.block ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bg, %middle.block ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bh, %middle.block ]
  br label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26.preheader114, %.lr.ph.i.i.i.i.i26
  %.012.i.i.i.i.i = phi i64 [ %i.bp, %.lr.ph.i.i.i.i.i26 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i26.preheader114 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i26 ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i26.preheader114 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i26 ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i26.preheader114 ] ; 2 uses
  %i.bm = load i32, ptr %.0910.i.i.i.i.i, align 4, !tbaa !247
  store i32 %i.bm, ptr %.0811.i.i.i.i.i, align 4, !tbaa !247
  %i.bn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 4 ; 2 uses
  %i.bp = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bq = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit, !llvm.loop !15036

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i26, %middle.block
  %.lcssa = phi ptr [ %i.bg, %middle.block ], [ %i.bo, %.lr.ph.i.i.i.i.i26 ] ; 2 uses
  %.pre = ptrtoint ptr %.lcssa to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit, %bb.g
  %.pre-phi = phi i64 [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.l, %bb.g ]
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.lcssa, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.j, %bb.g ]
  %.not4.i.i27 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.az
  br i1 %.not4.i.i27, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i28.preheader

.lr.ph.i.i28.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit
  %i.br = sub i64 %.pre-phi, %i.l
  %i.bs = getelementptr inbounds i8, ptr %i.j, i64 %i.br
  br label %.lr.ph.i.i28

.lr.ph.i.i28:                                     ; preds = %.lr.ph.i.i28.preheader, %.lr.ph.i.i28
  %.sroa.01.05.i.i = phi ptr [ %i.bv, %.lr.ph.i.i28 ], [ %i.bs, %.lr.ph.i.i28.preheader ] ; 2 uses
  store i32 -2147483648, ptr %.sroa.01.05.i.i, align 4, !tbaa !247
  %i.bt = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bu = add i32 %i.bt, -1
  store i32 %i.bu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 4 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.bv, %i.az
  br i1 %.not.i.i29, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i28, !llvm.loop !15037

bb.h:                                             ; preds = %bb.f
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bb ; 2 uses
  %i.bx = ashr exact i64 %i.bb, 2                 ; 6 uses
  %i.by = icmp sgt i64 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i.i.i.i.i31.preheader, label %_ZSt4copyIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i31.preheader:                     ; preds = %bb.h
  %min.iters.check59 = icmp ult i64 %i.bx, 8
  %i.bz = sub i64 %i.e, %i.l
  %diff.check61 = icmp ugt i64 %i.bz, -32
  %or.cond109 = or i1 %min.iters.check59, %diff.check61
  br i1 %or.cond109, label %.lr.ph.i.i.i.i.i31.preheader112, label %vector.ph62

vector.ph62:                                      ; preds = %.lr.ph.i.i.i.i.i31.preheader
  %n.vec63 = and i64 %i.bx, 9223372036854775800   ; 3 uses
  %i.ca = and i64 %i.bx, 7
  %i.cb = shl i64 %n.vec63, 2                     ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN5boost7movelib16heap_sort_helperIN9__gnu_cxx17__normal_iteratorIPNS_9container4test24movable_and_copyable_intESt6vectorIS6_SaIS6_EEEENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEE4sortESB_SB_SJ_:bb.a
  %i.aw = getelementptr inbounds [4 x i8], ptr %0, i64 %.02751.i.i19
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !247
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !247
  store i32 0, ptr %i.av, align 4, !tbaa !247
  %.026.in.i.i21 = shl i64 %spec.select.i.i20, 1  ; 3 uses
  %.026.i.i22 = add i64 %.026.in.i.i21, 2         ; 3 uses
  %i.ay = icmp ult i64 %.026.i.i22, %i.an
  br i1 %i.ay, label %.lr.ph.i.i16, label %._crit_edge.i.i6, !llvm.loop !15069

._crit_edge.i.i6:                                 ; preds = %.lr.ph.i.i16
  %i.az = or disjoint i64 %.026.in.i.i21, 1
  %i.ba = icmp eq i64 %.026.i.i22, %i.an
  br i1 %i.ba, label %.thread.i, label %bb.f

._crit_edge.i.i6.thread:                          ; preds = %.lr.ph.i
  %i.bb = icmp eq i64 %i.an, 2
  br i1 %i.bb, label %.thread.i, label %.loopexit.i.thread

.loopexit.i.thread:                               ; preds = %._crit_edge.i.i6.thread
  store i32 %i.aj, ptr %0, align 4, !tbaa !247
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bd = add i32 %i.bc, -1
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  br label %_ZN5boost7movelib16heap_sort_helperIN9__gnu_cxx17__normal_iteratorIPNS_9container4test24movable_and_copyable_intESt6vectorIS6_SaIS6_EEEENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEE9sort_heapESB_SB_SJ_.exit

.thread.i:                                        ; preds = %._crit_edge.i.i6.thread, %._crit_edge.i.i6
  %.026.in.lcssa.i.i828 = phi i64 [ 1, %._crit_edge.i.i6.thread ], [ %i.az, %._crit_edge.i.i6 ] ; 2 uses
  %.027.lcssa.i.i727 = phi i64 [ 0, %._crit_edge.i.i6.thread ], [ %spec.select.i.i20, %._crit_edge.i.i6 ]
  %i.be = getelementptr inbounds [4 x i8], ptr %0, i64 %.026.in.lcssa.i.i828 ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %0, i64 %.027.lcssa.i.i727
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !247
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !247
  store i32 0, ptr %i.be, align 4, !tbaa !247
  br label %.lr.ph61.i.i11.preheader

bb.f:                                             ; preds = %._crit_edge.i.i6
  %.not.i10 = icmp eq i64 %spec.select.i.i20, 0
  br i1 %.not.i10, label %.loopexit.i, label %.lr.ph61.i.i11.preheader

.lr.ph61.i.i11.preheader:                         ; preds = %bb.f, %.thread.i
  %.258.i.i12.ph = phi i64 [ %spec.select.i.i20, %bb.f ], [ %.026.in.lcssa.i.i828, %.thread.i ]
  br label %.lr.ph61.i.i11

.lr.ph61.i.i11:                                   ; preds = %.lr.ph61.i.i11.preheader, %bb.g
  %.258.i.i12 = phi i64 [ %.059.i.i14, %bb.g ], [ %.258.i.i12.ph, %.lr.ph61.i.i11.preheader ] ; 3 uses
  %.059.in.i.i13 = add i64 %.258.i.i12, -1
  %.059.i.i14 = lshr i64 %.059.in.i.i13, 1        ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.059.i.i14 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !247 ; 2 uses
  %i.bj = icmp slt i32 %i.bi, %i.aj
  br i1 %i.bj, label %bb.g, label %.loopexit.i

bb.g:                                             ; preds = %.lr.ph61.i.i11
  %i.bk = getelementptr inbounds [4 x i8], ptr %0, i64 %.258.i.i12
  store i32 %i.bi, ptr %i.bk, align 4, !tbaa !247
  store i32 0, ptr %i.bh, align 4, !tbaa !247
  %.not10.i = icmp eq i64 %.059.i.i14, 0
  br i1 %.not10.i, label %.loopexit.i, label %.lr.ph61.i.i11, !llvm.loop !15070

.loopexit.i:                                      ; preds = %bb.g, %.lr.ph61.i.i11, %bb.f
  %.2.lcssa.i.i15 = phi i64 [ 0, %bb.f ], [ 0, %bb.g ], [ %.258.i.i12, %.lr.ph61.i.i11 ]
  %i.bl = getelementptr inbounds [4 x i8], ptr %0, i64 %.2.lcssa.i.i15
  store i32 %i.aj, ptr %i.bl, align 4, !tbaa !247
  %i.bm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bn = add i32 %i.bm, -1
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bo = icmp ugt i64 %i.an, 1
  br i1 %i.bo, label %.lr.ph.i, label %_ZN5boost7movelib16heap_sort_helperIN9__gnu_cxx17__normal_iteratorIPNS_9container4test24movable_and_copyable_intESt6vectorIS6_SaIS6_EEEENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEE9sort_heapESB_SB_SJ_.exit, !llvm.loop !15072

_ZN5boost7movelib16heap_sort_helperIN9__gnu_cxx17__normal_iteratorIPNS_9container4test24movable_and_copyable_intESt6vectorIS6_SaIS6_EEEENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEE9sort_heapESB_SB_SJ_.exit: ; preds = %.loopexit.i, %bb.a, %.loopexit.i.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !301  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !302    ; 12 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775804
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #25
  unreachable

_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 2                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 2305843009213693951)
  %i.l = select i1 %i.j, i64 2305843009213693951, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 2
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i32, ptr %2, align 4, !tbaa !247
  store i32 %i.r, ptr %i.q, align 4, !tbaa !247
  %i.s = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.t = add i32 %i.s, 1                          ; 5 uses
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %.not13.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit
  %i.u = add i64 %i.m, -4
  %i.v = sub i64 %i.u, %i.e                       ; 3 uses
  %i.w = lshr i64 %i.v, 2
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader106, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.y = and i64 %i.v, -4
  %i.z = getelementptr i8, ptr %i.c, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 4
  %bound0 = icmp ugt ptr %i.aa, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound1 = icmp ult ptr %i.c, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader106, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 9223372036854775800      ; 3 uses
  %i.ab = shl i64 %n.vec, 2                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.p, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.c, i64 %i.ab
  %i.ae = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.t, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ae, %vector.ph ], [ %i.ai, %vector.body ]
  %vec.phi57 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aj, %vector.body ]
  %i.af = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.af ; 2 uses
  %next.gep58 = getelementptr i8, ptr %i.c, i64 %i.af ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep58, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep58, align 4, !tbaa !247, !alias.scope !15084
  %wide.load59 = load <4 x i32>, ptr %i.ag, align 4, !tbaa !247, !alias.scope !15084
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !247
  store <4 x i32> %wide.load59, ptr %i.ah, align 4, !tbaa !247
  %i.ai = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.aj = add <4 x i32> %vec.phi57, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !15075

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aj, %i.ai
  %i.al = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 3 uses
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !alias.scope !15085, !noalias !15084
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader106

.lr.ph.i.i.i.i.i.preheader106:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.ph107 = phi i32 [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  %.015.i.i.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.01214.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader106, %.lr.ph.i.i.i.i.i
  %i.am = phi i32 [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.ph107, %.lr.ph.i.i.i.i.i.preheader106 ]
  %.015.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.015.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader106 ] ; 2 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.01214.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader106 ] ; 2 uses
  %i.an = load i32, ptr %.01214.i.i.i.i.i, align 4, !tbaa !247
  store i32 %i.an, ptr %.015.i.i.i.i.i, align 4, !tbaa !247
  %i.ao = add i32 %i.am, 1                        ; 3 uses
  store i32 %i.ao, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ap = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !15077

_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit
  %i.ar = phi i32 [ %i.t, %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.al, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.ac, %middle.block ], [ %i.aq, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.as = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 4 ; 7 uses
  %.not13.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit34, label %.lr.ph.i.i.i.i.i29.preheader

.lr.ph.i.i.i.i.i29.preheader:                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.at = add i64 %i.d, -4
  %i.au = sub i64 %i.at, %i.m                     ; 3 uses
  %i.av = lshr i64 %i.au, 2
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check74 = icmp ult i64 %i.au, 124
  br i1 %min.iters.check74, label %.lr.ph.i.i.i.i.i29.preheader103, label %vector.memcheck75

vector.memcheck75:                                ; preds = %.lr.ph.i.i.i.i.i29.preheader
  %i.ax = and i64 %i.au, -4                       ; 2 uses
  %i.ay = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 8      ; 2 uses
  %bound076 = icmp ult ptr %i.as, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound177 = icmp ugt ptr %i.az, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict78 = and i1 %bound076, %bound177
  %3 = getelementptr i8, ptr %1, i64 %i.ax
  %4 = getelementptr i8, ptr %3, i64 4            ; 2 uses
  %bound079 = icmp ult ptr %i.as, %4
  %bound180 = icmp ult ptr %1, %i.az
  %found.conflict81 = and i1 %bound079, %bound180
  %conflict.rdx = or i1 %found.conflict78, %found.conflict81
  %bound082 = icmp ugt ptr %4, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound183 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %conflict.rdx, %found.conflict84
  br i1 %conflict.rdx85, label %.lr.ph.i.i.i.i.i29.preheader103, label %vector.ph86

vector.ph86:                                      ; preds = %vector.memcheck75
  %n.vec87 = and i64 %i.aw, 9223372036854775800   ; 3 uses
  %i.ba = shl i64 %n.vec87, 2                     ; 2 uses
  %i.bb = getelementptr i8, ptr %i.as, i64 %i.ba  ; 2 uses
  %i.bc = getelementptr i8, ptr %1, i64 %i.ba
  %i.bd = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ar, i64 0
  br label %vector.body88

vector.body88:                                    ; preds = %vector.body88, %vector.ph86
  %index89 = phi i64 [ 0, %vector.ph86 ], [ %index.next96, %vector.body88 ] ; 2 uses
  %vec.phi90 = phi <4 x i32> [ %i.bd, %vector.ph86 ], [ %i.bh, %vector.body88 ]
  %vec.phi91 = phi <4 x i32> [ zeroinitializer, %vector.ph86 ], [ %i.bi, %vector.body88 ]
  %i.be = shl i64 %index89, 2                     ; 2 uses
  %next.gep92 = getelementptr i8, ptr %i.as, i64 %i.be ; 2 uses
  %next.gep93 = getelementptr i8, ptr %1, i64 %i.be ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep93, i64 16
  %wide.load94 = load <4 x i32>, ptr %next.gep93, align 4, !tbaa !247, !alias.scope !15086
  %wide.load95 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !247, !alias.scope !15086
  %i.bg = getelementptr i8, ptr %next.gep92, i64 16
  store <4 x i32> %wide.load94, ptr %next.gep92, align 4, !tbaa !247, !alias.scope !15087, !noalias !15088
  store <4 x i32> %wide.load95, ptr %i.bg, align 4, !tbaa !247, !alias.scope !15087, !noalias !15088
  %i.bh = add <4 x i32> %vec.phi90, splat (i32 1) ; 2 uses
  %i.bi = add <4 x i32> %vec.phi91, splat (i32 1) ; 2 uses
  %index.next96 = add nuw i64 %index89, 8         ; 2 uses
  %i.bj = icmp eq i64 %index.next96, %n.vec87
  br i1 %i.bj, label %middle.block97, label %vector.body88, !llvm.loop !15082

middle.block97:                                   ; preds = %vector.body88
  %bin.rdx98 = add <4 x i32> %i.bi, %i.bh
  %i.bk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx98) ; 2 uses
  store i32 %i.bk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !alias.scope !15089, !noalias !15086
  %cmp.n99 = icmp eq i64 %i.aw, %n.vec87
  br i1 %cmp.n99, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit34, label %.lr.ph.i.i.i.i.i29.preheader103

.lr.ph.i.i.i.i.i29.preheader103:                  ; preds = %vector.memcheck75, %.lr.ph.i.i.i.i.i29.preheader, %middle.block97
  %.ph = phi i32 [ %i.ar, %vector.memcheck75 ], [ %i.ar, %.lr.ph.i.i.i.i.i29.preheader ], [ %i.bk, %middle.block97 ]
  %.015.i.i.i.i.i30.ph = phi ptr [ %i.as, %vector.memcheck75 ], [ %i.as, %.lr.ph.i.i.i.i.i29.preheader ], [ %i.bb, %middle.block97 ]
  %.01214.i.i.i.i.i31.ph = phi ptr [ %1, %vector.memcheck75 ], [ %1, %.lr.ph.i.i.i.i.i29.preheader ], [ %i.bc, %middle.block97 ]
  br label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %.lr.ph.i.i.i.i.i29.preheader103, %.lr.ph.i.i.i.i.i29
  %i.bl = phi i32 [ %i.bn, %.lr.ph.i.i.i.i.i29 ], [ %.ph, %.lr.ph.i.i.i.i.i29.preheader103 ]
  %.015.i.i.i.i.i30 = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i29 ], [ %.015.i.i.i.i.i30.ph, %.lr.ph.i.i.i.i.i29.preheader103 ] ; 2 uses
  %.01214.i.i.i.i.i31 = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i29 ], [ %.01214.i.i.i.i.i31.ph, %.lr.ph.i.i.i.i.i29.preheader103 ] ; 2 uses
  %i.bm = load i32, ptr %.01214.i.i.i.i.i31, align 4, !tbaa !247
  store i32 %i.bm, ptr %.015.i.i.i.i.i30, align 4, !tbaa !247
  %i.bn = add i32 %i.bl, 1                        ; 2 uses
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bo = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i31, i64 4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i30, i64 4 ; 2 uses
  %.not.i.i.i.i.i32 = icmp eq ptr %i.bo, %i.b
  br i1 %.not.i.i.i.i.i32, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit34, label %.lr.ph.i.i.i.i.i29, !llvm.loop !15083

_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit34: ; preds = %.lr.ph.i.i.i.i.i29, %middle.block97, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %.0.lcssa.i.i.i.i.i33 = phi ptr [ %i.as, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit ], [ %i.bb, %middle.block97 ], [ %i.bp, %.lr.ph.i.i.i.i.i29 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit34, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.bs, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit34 ] ; 2 uses
  store i32 -2147483648, ptr %.05.i.i, align 4, !tbaa !247
  %i.bq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.br = add i32 %i.bq, -1
  store i32 %i.br, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bs = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bs, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit, label %.lr.ph.i.i, !llvm.loop !17

_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit34
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !303
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = sub i64 %i.bv, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bw) #28
  br label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !302
  store ptr %.0.lcssa.i.i.i.i.i33, ptr %i.a, align 8, !tbaa !301
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bx, ptr %i.bt, align 8, !tbaa !303
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !301  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !302    ; 12 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775804
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #25
  unreachable

_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 2                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 2305843009213693951)
  %i.l = select i1 %i.j, i64 2305843009213693951, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 2
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i32, ptr %2, align 4, !tbaa !247
  store i32 %i.r, ptr %i.q, align 4, !tbaa !247
  store i32 0, ptr %2, align 4, !tbaa !247
  %i.s = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.t = add i32 %i.s, 1                          ; 5 uses
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %.not13.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit
  %i.u = add i64 %i.m, -4
  %i.v = sub i64 %i.u, %i.e                       ; 3 uses
  %i.w = lshr i64 %i.v, 2
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader106, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.y = and i64 %i.v, -4
  %i.z = getelementptr i8, ptr %i.c, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 4
  %bound0 = icmp ugt ptr %i.aa, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound1 = icmp ult ptr %i.c, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader106, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 9223372036854775800      ; 3 uses
  %i.ab = shl i64 %n.vec, 2                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.p, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.c, i64 %i.ab
  %i.ae = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.t, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ae, %vector.ph ], [ %i.ai, %vector.body ]
  %vec.phi57 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aj, %vector.body ]
  %i.af = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.af ; 2 uses
  %next.gep58 = getelementptr i8, ptr %i.c, i64 %i.af ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep58, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep58, align 4, !tbaa !247, !alias.scope !15101
  %wide.load59 = load <4 x i32>, ptr %i.ag, align 4, !tbaa !247, !alias.scope !15101
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !247
  store <4 x i32> %wide.load59, ptr %i.ah, align 4, !tbaa !247
  %i.ai = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.aj = add <4 x i32> %vec.phi57, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !15092

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aj, %i.ai
  %i.al = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 3 uses
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !alias.scope !15102, !noalias !15101
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader106

.lr.ph.i.i.i.i.i.preheader106:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.ph107 = phi i32 [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  %.015.i.i.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.01214.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader106, %.lr.ph.i.i.i.i.i
  %i.am = phi i32 [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.ph107, %.lr.ph.i.i.i.i.i.preheader106 ]
  %.015.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.015.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader106 ] ; 2 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.01214.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader106 ] ; 2 uses
  %i.an = load i32, ptr %.01214.i.i.i.i.i, align 4, !tbaa !247
  store i32 %i.an, ptr %.015.i.i.i.i.i, align 4, !tbaa !247
  %i.ao = add i32 %i.am, 1                        ; 3 uses
  store i32 %i.ao, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ap = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !15094

_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit
  %i.ar = phi i32 [ %i.t, %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.al, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.ac, %middle.block ], [ %i.aq, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.as = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 4 ; 7 uses
  %.not13.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit34, label %.lr.ph.i.i.i.i.i29.preheader

.lr.ph.i.i.i.i.i29.preheader:                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.at = add i64 %i.d, -4
  %i.au = sub i64 %i.at, %i.m                     ; 3 uses
  %i.av = lshr i64 %i.au, 2
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check74 = icmp ult i64 %i.au, 124
  br i1 %min.iters.check74, label %.lr.ph.i.i.i.i.i29.preheader103, label %vector.memcheck75

vector.memcheck75:                                ; preds = %.lr.ph.i.i.i.i.i29.preheader
  %i.ax = and i64 %i.au, -4                       ; 2 uses
  %i.ay = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 8      ; 2 uses
  %bound076 = icmp ult ptr %i.as, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound177 = icmp ugt ptr %i.az, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict78 = and i1 %bound076, %bound177
  %3 = getelementptr i8, ptr %1, i64 %i.ax
  %4 = getelementptr i8, ptr %3, i64 4            ; 2 uses
  %bound079 = icmp ult ptr %i.as, %4
  %bound180 = icmp ult ptr %1, %i.az
  %found.conflict81 = and i1 %bound079, %bound180
  %conflict.rdx = or i1 %found.conflict78, %found.conflict81
  %bound082 = icmp ugt ptr %4, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound183 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %conflict.rdx, %found.conflict84
  br i1 %conflict.rdx85, label %.lr.ph.i.i.i.i.i29.preheader103, label %vector.ph86

vector.ph86:                                      ; preds = %vector.memcheck75
  %n.vec87 = and i64 %i.aw, 9223372036854775800   ; 3 uses
  %i.ba = shl i64 %n.vec87, 2                     ; 2 uses
  %i.bb = getelementptr i8, ptr %i.as, i64 %i.ba  ; 2 uses
  %i.bc = getelementptr i8, ptr %1, i64 %i.ba
  %i.bd = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ar, i64 0
  br label %vector.body88

vector.body88:                                    ; preds = %vector.body88, %vector.ph86
  %index89 = phi i64 [ 0, %vector.ph86 ], [ %index.next96, %vector.body88 ] ; 2 uses
  %vec.phi90 = phi <4 x i32> [ %i.bd, %vector.ph86 ], [ %i.bh, %vector.body88 ]
  %vec.phi91 = phi <4 x i32> [ zeroinitializer, %vector.ph86 ], [ %i.bi, %vector.body88 ]
  %i.be = shl i64 %index89, 2                     ; 2 uses
  %next.gep92 = getelementptr i8, ptr %i.as, i64 %i.be ; 2 uses
  %next.gep93 = getelementptr i8, ptr %1, i64 %i.be ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep93, i64 16
  %wide.load94 = load <4 x i32>, ptr %next.gep93, align 4, !tbaa !247, !alias.scope !15103
  %wide.load95 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !247, !alias.scope !15103
  %i.bg = getelementptr i8, ptr %next.gep92, i64 16
  store <4 x i32> %wide.load94, ptr %next.gep92, align 4, !tbaa !247, !alias.scope !15104, !noalias !15105
  store <4 x i32> %wide.load95, ptr %i.bg, align 4, !tbaa !247, !alias.scope !15104, !noalias !15105
  %i.bh = add <4 x i32> %vec.phi90, splat (i32 1) ; 2 uses
  %i.bi = add <4 x i32> %vec.phi91, splat (i32 1) ; 2 uses
  %index.next96 = add nuw i64 %index89, 8         ; 2 uses
  %i.bj = icmp eq i64 %index.next96, %n.vec87
  br i1 %i.bj, label %middle.block97, label %vector.body88, !llvm.loop !15099

middle.block97:                                   ; preds = %vector.body88
  %bin.rdx98 = add <4 x i32> %i.bi, %i.bh
  %i.bk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx98) ; 2 uses
  store i32 %i.bk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !alias.scope !15106, !noalias !15103
  %cmp.n99 = icmp eq i64 %i.aw, %n.vec87
  br i1 %cmp.n99, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit34, label %.lr.ph.i.i.i.i.i29.preheader103

.lr.ph.i.i.i.i.i29.preheader103:                  ; preds = %vector.memcheck75, %.lr.ph.i.i.i.i.i29.preheader, %middle.block97
  %.ph = phi i32 [ %i.ar, %vector.memcheck75 ], [ %i.ar, %.lr.ph.i.i.i.i.i29.preheader ], [ %i.bk, %middle.block97 ]
  %.015.i.i.i.i.i30.ph = phi ptr [ %i.as, %vector.memcheck75 ], [ %i.as, %.lr.ph.i.i.i.i.i29.preheader ], [ %i.bb, %middle.block97 ]
  %.01214.i.i.i.i.i31.ph = phi ptr [ %1, %vector.memcheck75 ], [ %1, %.lr.ph.i.i.i.i.i29.preheader ], [ %i.bc, %middle.block97 ]
  br label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %.lr.ph.i.i.i.i.i29.preheader103, %.lr.ph.i.i.i.i.i29
  %i.bl = phi i32 [ %i.bn, %.lr.ph.i.i.i.i.i29 ], [ %.ph, %.lr.ph.i.i.i.i.i29.preheader103 ]
  %.015.i.i.i.i.i30 = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i29 ], [ %.015.i.i.i.i.i30.ph, %.lr.ph.i.i.i.i.i29.preheader103 ] ; 2 uses
  %.01214.i.i.i.i.i31 = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i29 ], [ %.01214.i.i.i.i.i31.ph, %.lr.ph.i.i.i.i.i29.preheader103 ] ; 2 uses
  %i.bm = load i32, ptr %.01214.i.i.i.i.i31, align 4, !tbaa !247
  store i32 %i.bm, ptr %.015.i.i.i.i.i30, align 4, !tbaa !247
  %i.bn = add i32 %i.bl, 1                        ; 2 uses
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bo = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i31, i64 4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i30, i64 4 ; 2 uses
  %.not.i.i.i.i.i32 = icmp eq ptr %i.bo, %i.b
  br i1 %.not.i.i.i.i.i32, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit34, label %.lr.ph.i.i.i.i.i29, !llvm.loop !15100

_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit34: ; preds = %.lr.ph.i.i.i.i.i29, %middle.block97, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %.0.lcssa.i.i.i.i.i33 = phi ptr [ %i.as, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit ], [ %i.bb, %middle.block97 ], [ %i.bp, %.lr.ph.i.i.i.i.i29 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit34, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.bs, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit34 ] ; 2 uses
  store i32 -2147483648, ptr %.05.i.i, align 4, !tbaa !247
  %i.bq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.br = add i32 %i.bq, -1
  store i32 %i.br, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bs = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bs, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit, label %.lr.ph.i.i, !llvm.loop !17

_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit34
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !303
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = sub i64 %i.bv, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bw) #28
  br label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !302
  store ptr %.0.lcssa.i.i.i.i.i33, ptr %i.a, align 8, !tbaa !301
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bx, ptr %i.bt, align 8, !tbaa !303
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl22flat_tree_merge_uniqueISt6vectorINS0_4test24movable_and_copyable_intESaIS5_EEPKS5_NS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_T0_SJ_T1_NSD_5bool_ILb0EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::movelib::adaptive_xbuf.62", align 8 ; 8 uses
  %.not = icmp eq ptr %1, %2
  br i1 %.not, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeISt6vectorINS0_4test24movable_and_copyable_intESaIS5_EENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_NSF_8iteratorET0_NSB_5bool_ILb1EEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !301  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !302    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  tail call void @_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE15_M_range_insertIPKS3_EEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.g, ptr noundef %1, ptr noundef %2)
  %i.h = load ptr, ptr %0, align 8, !tbaa !250    ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 %i.f ; 2 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !250
  %i.k = tail call ptr @_ZN5boost7movelib29inplace_set_unique_differenceIN9__gnu_cxx17__normal_iteratorIPNS_9container4test24movable_and_copyable_intESt6vectorIS6_SaIS6_EEEESB_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEET_SK_SK_T0_SL_T1_(ptr %i.i, ptr %i.j, ptr %i.h, ptr %i.i) ; 4 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !250  ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !250    ; 5 uses
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.k
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.q, %bb.b ] ; 2 uses
  store i32 -2147483648, ptr %.05.i.i.i.i.i, align 4, !tbaa !247
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.s = add i32 %i.r, -1
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %i.l
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.q, ptr %i.a, align 8, !tbaa !301
  %.pre = ptrtoint ptr %i.k to i64
  %.pre33 = sub i64 %.pre, %i.o
  br label %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit

_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit: ; preds = %bb.b, %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %.pre-phi34 = phi i64 [ %i.p, %bb.b ], [ %.pre33, %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intES3_EvT_S5_RSaIT0_E.exit.i.i.i ]
  %i.u = phi ptr [ %i.k, %bb.b ], [ %i.q, %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intES3_EvT_S5_RSaIT0_E.exit.i.i.i ]
  %i.v = getelementptr inbounds i8, ptr %i.m, i64 %i.f ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %.pre-phi34
  %i.x = icmp eq ptr %i.b, %i.c
  %i.y = icmp eq ptr %i.v, %i.u
  %or.cond.i.i21 = or i1 %i.x, %i.y
  br i1 %or.cond.i.i21, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeISt6vectorINS0_4test24movable_and_copyable_intESaIS5_EENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_NSF_8iteratorET0_NSB_5bool_ILb1EEE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit
  %i.z = load i32, ptr %i.v, align 4, !tbaa !247
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.ac, %bb.d ], [ %i.m, %.preheader.i.i ] ; 4 uses
  %i.aa = load i32, ptr %.0.i.i, align 4, !tbaa !247
  %i.ab = icmp slt i32 %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.v
  br i1 %i.ad, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeISt6vectorINS0_4test24movable_and_copyable_intESaIS5_EENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_NSF_8iteratorET0_NSB_5bool_ILb1EEE.exit, label %bb.c, !llvm.loop !3

bb.e:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !247
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.025.i.i = phi ptr [ %i.w, %bb.e ], [ %i.ag, %bb.h ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.025.i.i, i64 -4 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !247
  %i.ai = icmp slt i32 %i.ah, %i.af
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ak = ptrtoint ptr %i.v to i64                ; 2 uses
  %i.al = ptrtoint ptr %.0.i.i to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 2
  %i.ao = ptrtoint ptr %.025.i.i to i64
  %i.ap = sub i64 %i.ao, %i.ak
  %i.aq = ashr exact i64 %i.ap, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost7movelib15detail_adaptive19adaptive_merge_implIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_NS0_9iter_sizeISH_E4typeESK_T0_RT1_(ptr noundef nonnull %.0.i.i, i64 noundef %i.an, i64 noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.i unwind label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ar = icmp eq ptr %i.ag, %i.v
  br i1 %i.ar, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeISt6vectorINS0_4test24movable_and_copyable_intESaIS5_EENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_NSF_8iteratorET0_NSB_5bool_ILb1EEE.exit, label %bb.f, !llvm.loop !4

bb.i:                                             ; preds = %bb.g
  %i.as = load i64, ptr %i.aj, align 8, !tbaa !254 ; 4 uses
end_hunk_11
