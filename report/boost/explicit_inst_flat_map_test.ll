Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_flat_map_test?download=true
inline.NumInlined: 24578
inline.NumDeleted: 2911
loop-unroll.NumRuntimeUnrolled: 171
loop-unroll.NumUnrolled: 179
begin_hunk_0_@_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEC2EOSA_RKNS0_3dtl24static_storage_allocatorIS8_Lm10ELm0ELb1EEE:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 8
  %i.aa = add i64 %.020.i.i.i.i.i.i, -2           ; 2 uses
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !254
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !254
  store i32 0, ptr %i.y, align 4, !tbaa !254
  %i.ac = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !254
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !254
  store i32 0, ptr %i.ad, align 4, !tbaa !254
  %i.af = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i.1 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i.1, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2EOSD_RKNS1_24static_storage_allocatorIS6_Lm10ELm0ELb1EEE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2810

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEC2EOSD_RKNS1_24static_storage_allocatorIS6_Lm10ELm0ELb1EEE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.a
  store i64 0, ptr %i.b, align 8, !tbaa !317
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(88) ptr @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEaSERKSA_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEaSERKSD_.exit, label %bb.b, !prof !225

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !319  ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load i64, ptr %i.c, align 8, !tbaa !319  ; 14 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not7.i.i.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZN5boost9container18copy_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.c
  %min.iters.check26 = icmp ult i64 %i.b, 8
  br i1 %min.iters.check26, label %.lr.ph.i.i.i.i.i.i.i.preheader104, label %vector.memcheck27

vector.memcheck27:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.f = shl i64 %i.b, 3                          ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %i.h = getelementptr i8, ptr %1, i64 %i.f
  %bound028 = icmp ult ptr %0, %i.h
  %bound129 = icmp ult ptr %1, %i.g
  %found.conflict30 = and i1 %bound028, %bound129
  br i1 %found.conflict30, label %.lr.ph.i.i.i.i.i.i.i.preheader104, label %vector.ph31

vector.ph31:                                      ; preds = %vector.memcheck27
  %n.vec32 = and i64 %i.b, -4                     ; 3 uses
  %i.i = shl i64 %n.vec32, 3                      ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.i       ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 %i.i       ; 2 uses
  %i.l = and i64 %i.b, 3
  br label %vector.body33

vector.body33:                                    ; preds = %vector.body33, %vector.ph31
  %index34 = phi i64 [ 0, %vector.ph31 ], [ %index.next47, %vector.body33 ] ; 2 uses
  %i.m = shl i64 %index34, 3                      ; 3 uses
  %i.n = or disjoint i64 %i.m, 16                 ; 2 uses
  %next.gep35 = getelementptr i8, ptr %0, i64 %i.m
  %next.gep36 = getelementptr i8, ptr %0, i64 %i.n
  %next.gep37 = getelementptr i8, ptr %1, i64 %i.m
  %next.gep38 = getelementptr i8, ptr %1, i64 %i.n
  %wide.vec39 = load <4 x i32>, ptr %next.gep37, align 8, !tbaa !254, !alias.scope !2831
  %wide.vec42 = load <4 x i32>, ptr %next.gep38, align 8, !tbaa !254, !alias.scope !2831
  store <4 x i32> %wide.vec39, ptr %next.gep35, align 8, !tbaa !254, !alias.scope !2832, !noalias !2831
  store <4 x i32> %wide.vec42, ptr %next.gep36, align 8, !tbaa !254, !alias.scope !2832, !noalias !2831
  %index.next47 = add nuw i64 %index34, 4         ; 2 uses
  %i.o = icmp eq i64 %index.next47, %n.vec32
  br i1 %i.o, label %middle.block48, label %vector.body33, !llvm.loop !2816

middle.block48:                                   ; preds = %vector.body33
  %cmp.n49 = icmp eq i64 %i.b, %n.vec32
  br i1 %cmp.n49, label %_ZN5boost9container18copy_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader104

.lr.ph.i.i.i.i.i.i.i.preheader104:                ; preds = %vector.memcheck27, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block48
  %.ph105 = phi ptr [ %0, %vector.memcheck27 ], [ %0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.j, %middle.block48 ] ; 2 uses
  %.09.i.i.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck27 ], [ %1, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.k, %middle.block48 ] ; 2 uses
  %.068.i.i.i.i.i.i.i.ph = phi i64 [ %i.b, %vector.memcheck27 ], [ %i.b, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.l, %middle.block48 ] ; 4 uses
  %i.p = add i64 %.068.i.i.i.i.i.i.i.ph, -1
  %xtraiter109 = and i64 %.068.i.i.i.i.i.i.i.ph, 3 ; 2 uses
  %lcmp.mod110.not = icmp eq i64 %xtraiter109, 0
  br i1 %lcmp.mod110.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader104, %.lr.ph.i.i.i.i.i.i.i.prol
  %i.q = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.ph105, %.lr.ph.i.i.i.i.i.i.i.preheader104 ] ; 3 uses
  %.09.i.i.i.i.i.i.i.prol = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader104 ] ; 3 uses
  %.068.i.i.i.i.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.068.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader104 ]
  %prol.iter111 = phi i64 [ %prol.iter111.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader104 ]
  %i.r = add i64 %.068.i.i.i.i.i.i.i.prol, -1     ; 2 uses
  %i.s = load i32, ptr %.09.i.i.i.i.i.i.i.prol, align 4, !tbaa !254
  store i32 %i.s, ptr %i.q, align 4, !tbaa !254
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.prol, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.v = load i32, ptr %i.t, align 4, !tbaa !254
  store i32 %i.v, ptr %i.u, align 4, !tbaa !254
  %i.w = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.prol, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %prol.iter111.next = add i64 %prol.iter111, 1   ; 2 uses
  %prol.iter111.cmp.not = icmp eq i64 %prol.iter111.next, %xtraiter109
  br i1 %prol.iter111.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !2817

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader104
  %.lcssa107.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader104 ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.lcssa106.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader104 ], [ %i.x, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.unr = phi ptr [ %.ph105, %.lr.ph.i.i.i.i.i.i.i.preheader104 ], [ %i.x, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.09.i.i.i.i.i.i.i.unr = phi ptr [ %.09.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader104 ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.i.unr = phi i64 [ %.068.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader104 ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.y = icmp ult i64 %i.p, 3
  br i1 %i.y, label %_ZN5boost9container18copy_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %i.z = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i.i.i ], [ %.068.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %i.aa = load i32, ptr %.09.i.i.i.i.i.i.i, align 4, !tbaa !254
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !254
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !254
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !254
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !254
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !254
  %i.ah = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !254
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !254
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !254
  store i32 %i.am, ptr %i.al, align 4, !tbaa !254
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !254
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !254
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.as = add i64 %.068.i.i.i.i.i.i.i, -4         ; 2 uses
  %i.at = load i32, ptr %i.aq, align 4, !tbaa !254
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !254
  %i.au = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 28
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !254
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !254
  %i.ax = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i.i.i.i.i.3, label %_ZN5boost9container18copy_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2818

_ZN5boost9container18copy_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block48, %bb.c
  %.0.i.i.i.i.i.i = phi ptr [ %0, %bb.c ], [ %i.j, %middle.block48 ], [ %.lcssa106.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ] ; 8 uses
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %1, %bb.c ], [ %i.k, %middle.block48 ], [ %.lcssa107.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i ] ; 8 uses
  %i.az = sub i64 %i.d, %i.b                      ; 6 uses
  %.pre.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255 ; 3 uses
  %min.iters.check66 = icmp ult i64 %i.az, 18
  br i1 %min.iters.check66, label %.lr.ph.i14.i.i.i.i.i.i.preheader, label %vector.memcheck67

vector.memcheck67:                                ; preds = %_ZN5boost9container18copy_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i.i
  %i.ba = sub i64 %i.d, %i.b
  %i.bb = shl i64 %i.ba, 3                        ; 2 uses
  %i.bc = getelementptr i8, ptr %.0.i.i.i.i.i.i, i64 %i.bb ; 2 uses
  %i.bd = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 %i.bb ; 2 uses
  %bound068 = icmp ult ptr %.0.i.i.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound169 = icmp ugt ptr %i.bc, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict70 = and i1 %bound068, %bound169
  %bound071 = icmp ult ptr %.0.i.i.i.i.i.i, %i.bd
  %bound172 = icmp ult ptr %.0.lcssa.i.i.i.i.i.i.i, %i.bc
  %found.conflict73 = and i1 %bound071, %bound172
  %conflict.rdx = or i1 %found.conflict70, %found.conflict73
  %bound074 = icmp ugt ptr %i.bd, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound175 = icmp ult ptr %.0.lcssa.i.i.i.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict76 = and i1 %bound074, %bound175
  %conflict.rdx77 = or i1 %conflict.rdx, %found.conflict76
  br i1 %conflict.rdx77, label %.lr.ph.i14.i.i.i.i.i.i.preheader, label %vector.ph78

vector.ph78:                                      ; preds = %vector.memcheck67
  %n.vec79 = and i64 %i.az, -4                    ; 3 uses
  %i.be = and i64 %i.az, 3
  %i.bf = shl i64 %n.vec79, 3                     ; 2 uses
  %i.bg = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 %i.bf
  %i.bh = getelementptr i8, ptr %.0.i.i.i.i.i.i, i64 %i.bf
  %i.bi = insertelement <2 x i32> <i32 poison, i32 0>, i32 %.pre.i.i.i.i.i, i64 0
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph78
  %index81 = phi i64 [ 0, %vector.ph78 ], [ %index.next97, %vector.body80 ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.bi, %vector.ph78 ], [ %i.bl, %vector.body80 ]
  %vec.phi82 = phi <2 x i32> [ zeroinitializer, %vector.ph78 ], [ %i.bm, %vector.body80 ]
  %i.bj = shl i64 %index81, 3                     ; 3 uses
  %i.bk = or disjoint i64 %i.bj, 16               ; 2 uses
  %next.gep83 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 %i.bj
  %next.gep84 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 %i.bk
  %next.gep85 = getelementptr i8, ptr %.0.i.i.i.i.i.i, i64 %i.bj ; 2 uses
  %next.gep87 = getelementptr i8, ptr %.0.i.i.i.i.i.i, i64 %i.bk ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep85) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep87) ]
  %wide.vec89 = load <4 x i32>, ptr %next.gep83, align 4, !tbaa !254, !alias.scope !2833
  %wide.vec92 = load <4 x i32>, ptr %next.gep84, align 4, !tbaa !254, !alias.scope !2833
  store <4 x i32> %wide.vec89, ptr %next.gep85, align 4, !tbaa !254, !alias.scope !2834, !noalias !2835
  store <4 x i32> %wide.vec92, ptr %next.gep87, align 4, !tbaa !254, !alias.scope !2834, !noalias !2835
  %i.bl = add <2 x i32> %vec.phi, splat (i32 2)   ; 2 uses
  %i.bm = add <2 x i32> %vec.phi82, splat (i32 2) ; 2 uses
  %index.next97 = add nuw i64 %index81, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next97, %n.vec79
  br i1 %i.bn, label %middle.block98, label %vector.body80, !llvm.loop !2823

middle.block98:                                   ; preds = %vector.body80
  %bin.rdx = add <2 x i32> %i.bm, %i.bl
  %i.bo = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !alias.scope !2836, !noalias !2833
  %cmp.n99 = icmp eq i64 %i.az, %n.vec79
  br i1 %cmp.n99, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE16priv_copy_assignIS8_EEvRKNS1_IS5_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS5_SB_E4typeELi0EEE5valueENSF_13enable_if_natEE4typeE.exit.i.i.i.i, label %.lr.ph.i14.i.i.i.i.i.i.preheader

.lr.ph.i14.i.i.i.i.i.i.preheader:                 ; preds = %vector.memcheck67, %_ZN5boost9container18copy_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i.i, %middle.block98
  %.ph = phi i32 [ %.pre.i.i.i.i.i, %vector.memcheck67 ], [ %.pre.i.i.i.i.i, %_ZN5boost9container18copy_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i.i ], [ %i.bo, %middle.block98 ] ; 2 uses
  %.020.i.i.i.i.i.i.i.ph = phi i64 [ %i.az, %vector.memcheck67 ], [ %i.az, %_ZN5boost9container18copy_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i.i ], [ %i.be, %middle.block98 ] ; 4 uses
  %.0819.i.i.i.i.i.i.i.ph = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %vector.memcheck67 ], [ %.0.lcssa.i.i.i.i.i.i.i, %_ZN5boost9container18copy_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i.i ], [ %i.bg, %middle.block98 ] ; 4 uses
  %.01618.i.i.i.i.i.i.i.ph = phi ptr [ %.0.i.i.i.i.i.i, %vector.memcheck67 ], [ %.0.i.i.i.i.i.i, %_ZN5boost9container18copy_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i.i ], [ %i.bh, %middle.block98 ] ; 5 uses
  %xtraiter112 = and i64 %.020.i.i.i.i.i.i.i.ph, 1
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %.lr.ph.i14.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i14.i.i.i.i.i.i.prol

.lr.ph.i14.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i14.i.i.i.i.i.i.preheader
  %i.bp = add nsw i64 %.020.i.i.i.i.i.i.i.ph, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.i.i.i.ph) ]
  %i.bq = load i32, ptr %.0819.i.i.i.i.i.i.i.ph, align 4, !tbaa !254
  store i32 %i.bq, ptr %.01618.i.i.i.i.i.i.i.ph, align 4, !tbaa !254
  %i.br = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i.ph, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i.i.ph, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !254
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !254
  %i.bu = add i32 %.ph, 2                         ; 2 uses
  store i32 %i.bu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.bv = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i.i.ph, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i.ph, i64 8
  br label %.lr.ph.i14.i.i.i.i.i.i.prol.loopexit

.lr.ph.i14.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i14.i.i.i.i.i.i.prol, %.lr.ph.i14.i.i.i.i.i.i.preheader
  %.unr115 = phi i32 [ %.ph, %.lr.ph.i14.i.i.i.i.i.i.preheader ], [ %i.bu, %.lr.ph.i14.i.i.i.i.i.i.prol ]
  %.020.i.i.i.i.i.i.i.unr = phi i64 [ %.020.i.i.i.i.i.i.i.ph, %.lr.ph.i14.i.i.i.i.i.i.preheader ], [ %i.bp, %.lr.ph.i14.i.i.i.i.i.i.prol ]
  %.0819.i.i.i.i.i.i.i.unr = phi ptr [ %.0819.i.i.i.i.i.i.i.ph, %.lr.ph.i14.i.i.i.i.i.i.preheader ], [ %i.bv, %.lr.ph.i14.i.i.i.i.i.i.prol ]
  %.01618.i.i.i.i.i.i.i.unr = phi ptr [ %.01618.i.i.i.i.i.i.i.ph, %.lr.ph.i14.i.i.i.i.i.i.preheader ], [ %i.bw, %.lr.ph.i14.i.i.i.i.i.i.prol ]
  %i.bx = icmp eq i64 %.020.i.i.i.i.i.i.i.ph, 1
  br i1 %i.bx, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE16priv_copy_assignIS8_EEvRKNS1_IS5_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS5_SB_E4typeELi0EEE5valueENSF_13enable_if_natEE4typeE.exit.i.i.i.i, label %.lr.ph.i14.i.i.i.i.i.i

.lr.ph.i14.i.i.i.i.i.i:                           ; preds = %.lr.ph.i14.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i14.i.i.i.i.i.i
  %i.by = phi i32 [ %i.cl, %.lr.ph.i14.i.i.i.i.i.i ], [ %.unr115, %.lr.ph.i14.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.020.i.i.i.i.i.i.i = phi i64 [ %i.cg, %.lr.ph.i14.i.i.i.i.i.i ], [ %.020.i.i.i.i.i.i.i.unr, %.lr.ph.i14.i.i.i.i.i.i.prol.loopexit ]
  %.0819.i.i.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i14.i.i.i.i.i.i ], [ %.0819.i.i.i.i.i.i.i.unr, %.lr.ph.i14.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i14.i.i.i.i.i.i ], [ %.01618.i.i.i.i.i.i.i.unr, %.lr.ph.i14.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.i.i.i) ]
  %i.bz = load i32, ptr %.0819.i.i.i.i.i.i.i, align 4, !tbaa !254
  store i32 %i.bz, ptr %.01618.i.i.i.i.i.i.i, align 4, !tbaa !254
  %i.ca = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 4
  %i.cb = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i.i, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !254
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !254
  %i.cd = add i32 %i.by, 2
  store i32 %i.cd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.ce = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i.i, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 8
  %i.cg = add i64 %.020.i.i.i.i.i.i.i, -2         ; 2 uses
  %i.ch = load i32, ptr %i.ce, align 4, !tbaa !254
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !254
  %i.ci = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 12
  %i.cj = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i.i, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !254
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !254
  %i.cl = add i32 %i.by, 4                        ; 2 uses
  store i32 %i.cl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.cm = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i.i, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 16
  %.not.i15.i.i.i.i.i.i.1 = icmp eq i64 %i.cg, 0
  br i1 %.not.i15.i.i.i.i.i.i.1, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE16priv_copy_assignIS8_EEvRKNS1_IS5_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS5_SB_E4typeELi0EEE5valueENSF_13enable_if_natEE4typeE.exit.i.i.i.i, label %.lr.ph.i14.i.i.i.i.i.i, !llvm.loop !2824

bb.d:                                             ; preds = %bb.b
  %.not8.i.i.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not8.i.i.i.i.i.i.i, label %_ZN5boost9container6copy_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.preheader

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %bb.d
  %min.iters.check = icmp ult i64 %i.d, 8
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader108, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.co = shl i64 %i.d, 3                         ; 2 uses
  %i.cp = getelementptr i8, ptr %0, i64 %i.co
  %i.cq = getelementptr i8, ptr %1, i64 %i.co
  %bound0 = icmp ult ptr %0, %i.cq
  %bound1 = icmp ult ptr %1, %i.cp
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i.preheader108, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.d, -4                       ; 3 uses
  %i.cr = shl i64 %n.vec, 3                       ; 2 uses
  %i.cs = getelementptr i8, ptr %0, i64 %i.cr
  %i.ct = and i64 %i.d, 3
  %i.cu = getelementptr i8, ptr %1, i64 %i.cr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cv = shl i64 %index, 3                       ; 3 uses
  %i.cw = or disjoint i64 %i.cv, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.cv
  %next.gep10 = getelementptr i8, ptr %0, i64 %i.cw
  %next.gep11 = getelementptr i8, ptr %1, i64 %i.cv
  %next.gep12 = getelementptr i8, ptr %1, i64 %i.cw
  %wide.vec = load <4 x i32>, ptr %next.gep11, align 8, !tbaa !254, !alias.scope !2837
  %wide.vec14 = load <4 x i32>, ptr %next.gep12, align 8, !tbaa !254, !alias.scope !2837
  store <4 x i32> %wide.vec, ptr %next.gep, align 8, !tbaa !254, !alias.scope !2838, !noalias !2837
  store <4 x i32> %wide.vec14, ptr %next.gep10, align 8, !tbaa !254, !alias.scope !2838, !noalias !2837
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !2828

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6copy_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.preheader108

.lr.ph.i17.i.i.i.i.i.i.preheader108:              ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.i.i.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.cs, %middle.block ] ; 2 uses
  %.0610.i.i.i.i.i.i.i.ph = phi i64 [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.ct, %middle.block ] ; 4 uses
  %.079.i.i.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.cu, %middle.block ] ; 2 uses
  %i.cy = add i64 %.0610.i.i.i.i.i.i.i.ph, -1
  %xtraiter = and i64 %.0610.i.i.i.i.i.i.i.ph, 3  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader108, %.lr.ph.i17.i.i.i.i.i.i.prol
  %.011.i.i.i.i.i.i.i.prol = phi ptr [ %i.df, %.lr.ph.i17.i.i.i.i.i.i.prol ], [ %.011.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader108 ] ; 3 uses
  %.0610.i.i.i.i.i.i.i.prol = phi i64 [ %i.cz, %.lr.ph.i17.i.i.i.i.i.i.prol ], [ %.0610.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader108 ]
  %.079.i.i.i.i.i.i.i.prol = phi ptr [ %i.de, %.lr.ph.i17.i.i.i.i.i.i.prol ], [ %.079.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader108 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i17.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.preheader108 ]
  %i.cz = add i64 %.0610.i.i.i.i.i.i.i.prol, -1   ; 2 uses
  %i.da = load i32, ptr %.079.i.i.i.i.i.i.i.prol, align 4, !tbaa !254
  store i32 %i.da, ptr %.011.i.i.i.i.i.i.i.prol, align 4, !tbaa !254
  %i.db = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.i.i.prol, i64 4
  %i.dc = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.prol, i64 4
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !254
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !254
  %i.de = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol, !llvm.loop !2829

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader108
  %.011.i.i.i.i.i.i.i.unr = phi ptr [ %.011.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader108 ], [ %i.df, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %.0610.i.i.i.i.i.i.i.unr = phi i64 [ %.0610.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader108 ], [ %i.cz, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %.079.i.i.i.i.i.i.i.unr = phi ptr [ %.079.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader108 ], [ %i.de, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.dg = icmp ult i64 %i.cy, 3
  br i1 %i.dg, label %_ZN5boost9container6copy_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i = phi ptr [ %i.ef, %.lr.ph.i17.i.i.i.i.i.i ], [ %.011.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0610.i.i.i.i.i.i.i = phi i64 [ %i.dz, %.lr.ph.i17.i.i.i.i.i.i ], [ %.0610.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ]
  %.079.i.i.i.i.i.i.i = phi ptr [ %i.ee, %.lr.ph.i17.i.i.i.i.i.i ], [ %.079.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.dh = load i32, ptr %.079.i.i.i.i.i.i.i, align 4, !tbaa !254
  store i32 %i.dh, ptr %.011.i.i.i.i.i.i.i, align 4, !tbaa !254
  %i.di = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.i.i, i64 4
  %i.dj = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i, i64 4
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !254
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !254
  %i.dl = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.i.i, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i, i64 8
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !254
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !254
  %i.do = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.i.i, i64 12
  %i.dp = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i, i64 12
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !254
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !254
  %i.dr = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.i.i, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i, i64 16
  %i.dt = load i32, ptr %i.dr, align 4, !tbaa !254
  store i32 %i.dt, ptr %i.ds, align 4, !tbaa !254
  %i.du = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.i.i, i64 20
  %i.dv = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i, i64 20
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !254
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !254
  %i.dx = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.i.i, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i, i64 24
  %i.dz = add i64 %.0610.i.i.i.i.i.i.i, -4        ; 2 uses
  %i.ea = load i32, ptr %i.dx, align 4, !tbaa !254
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !254
  %i.eb = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.i.i, i64 28
  %i.ec = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i, i64 28
  %i.ed = load i32, ptr %i.eb, align 4, !tbaa !254
  store i32 %i.ed, ptr %i.ec, align 4, !tbaa !254
  %i.ee = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.i.i, i64 32
  %i.ef = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i, i64 32
  %.not.i18.i.i.i.i.i.i.3 = icmp eq i64 %i.dz, 0
  br i1 %.not.i18.i.i.i.i.i.i.3, label %_ZN5boost9container6copy_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !2830

_ZN5boost9container6copy_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block, %bb.d
  %.not3.i.i.i.i.i.i.i = icmp eq i64 %i.b, %i.d
  br i1 %.not3.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE16priv_copy_assignIS8_EEvRKNS1_IS5_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS5_SB_E4typeELi0EEE5valueENSF_13enable_if_natEE4typeE.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZN5boost9container6copy_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i.i.i
  %.neg.i.i.i.i.i.i = sub i64 %i.d, %i.b
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %.neg21.i.i.i.i.i.i = trunc i64 %.neg.i.i.i.i.i.i to i32
  %.neg22.i.i.i.i.i.i = shl i32 %.neg21.i.i.i.i.i.i, 1
  %i.eg = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i, %.neg22.i.i.i.i.i.i
  store i32 %i.eg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE16priv_copy_assignIS8_EEvRKNS1_IS5_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS5_SB_E4typeELi0EEE5valueENSF_13enable_if_natEE4typeE.exit.i.i.i.i

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE16priv_copy_assignIS8_EEvRKNS1_IS5_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS5_SB_E4typeELi0EEE5valueENSF_13enable_if_natEE4typeE.exit.i.i.i.i: ; preds = %.lr.ph.i14.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i14.i.i.i.i.i.i, %middle.block98, %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZN5boost9container6copy_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i.i.i
  store i64 %i.d, ptr %i.a, align 8, !tbaa !317
  br label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEaSERKSD_.exit

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEaSERKSD_.exit: ; preds = %bb.a, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE16priv_copy_assignIS8_EEvRKNS1_IS5_T_vEEPNS_11move_detail11enable_if_cIXsr3dtl10is_versionINS0_14real_allocatorIS5_SB_E4typeELi0EEE5valueENSF_13enable_if_natEE4typeE.exit.i.i.i.i
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(88) ptr @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEEaSEOSA_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEEaSEOSD_.exit, label %bb.b, !prof !225

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !319  ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !319  ; 14 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not7.i.i.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZN5boost9container18move_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.c
  %min.iters.check21 = icmp ult i64 %i.b, 6
  br i1 %min.iters.check21, label %.lr.ph.i.i.i.i.i.i.i.preheader93, label %vector.memcheck22

vector.memcheck22:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.f = shl i64 %i.b, 3                          ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %i.h = getelementptr i8, ptr %1, i64 %i.f
  %bound023 = icmp ult ptr %0, %i.h
  %bound124 = icmp ult ptr %1, %i.g
  %found.conflict25 = and i1 %bound023, %bound124
  br i1 %found.conflict25, label %.lr.ph.i.i.i.i.i.i.i.preheader93, label %vector.ph26

vector.ph26:                                      ; preds = %vector.memcheck22
  %n.vec27 = and i64 %i.b, -2                     ; 3 uses
  %i.i = shl i64 %n.vec27, 3                      ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.i       ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 %i.i       ; 2 uses
  %i.l = and i64 %i.b, 1
  br label %vector.body28

vector.body28:                                    ; preds = %vector.body28, %vector.ph26
  %index29 = phi i64 [ 0, %vector.ph26 ], [ %index.next36, %vector.body28 ] ; 2 uses
  %i.m = shl i64 %index29, 3                      ; 2 uses
  %next.gep30 = getelementptr i8, ptr %0, i64 %i.m
  %next.gep31 = getelementptr i8, ptr %1, i64 %i.m ; 2 uses
  %wide.vec32 = load <4 x i32>, ptr %next.gep31, align 8, !tbaa !254, !alias.scope !2855
  store <4 x i32> %wide.vec32, ptr %next.gep30, align 8, !tbaa !254, !alias.scope !2856, !noalias !2855
  store <4 x i32> zeroinitializer, ptr %next.gep31, align 8, !tbaa !254, !alias.scope !2855
  %index.next36 = add nuw i64 %index29, 2         ; 2 uses
  %i.n = icmp eq i64 %index.next36, %n.vec27
  br i1 %i.n, label %middle.block37, label %vector.body28, !llvm.loop !2842

middle.block37:                                   ; preds = %vector.body28
  %cmp.n38 = icmp eq i64 %i.b, %n.vec27
  br i1 %cmp.n38, label %_ZN5boost9container18move_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader93

.lr.ph.i.i.i.i.i.i.i.preheader93:                 ; preds = %vector.memcheck22, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block37
  %.ph94 = phi ptr [ %0, %vector.memcheck22 ], [ %0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.j, %middle.block37 ] ; 4 uses
  %.09.i.i.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck22 ], [ %1, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.k, %middle.block37 ] ; 5 uses
  %.068.i.i.i.i.i.i.i.ph = phi i64 [ %i.b, %vector.memcheck22 ], [ %i.b, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.l, %middle.block37 ] ; 4 uses
  %xtraiter98 = and i64 %.068.i.i.i.i.i.i.i.ph, 1
  %lcmp.mod99.not = icmp eq i64 %xtraiter98, 0
  br i1 %lcmp.mod99.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader93
  %i.o = add nsw i64 %.068.i.i.i.i.i.i.i.ph, -1
  %i.p = load i32, ptr %.09.i.i.i.i.i.i.i.ph, align 4, !tbaa !254
  store i32 %i.p, ptr %.ph94, align 4, !tbaa !254
  store i32 0, ptr %.09.i.i.i.i.i.i.i.ph, align 4, !tbaa !254
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.ph, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.ph94, i64 4
  %i.s = load i32, ptr %i.q, align 4, !tbaa !254
  store i32 %i.s, ptr %i.r, align 4, !tbaa !254
  store i32 0, ptr %i.q, align 4, !tbaa !254
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.ph, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.ph94, i64 8 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader93
  %.lcssa96.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader93 ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.lcssa95.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader93 ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.unr = phi ptr [ %.ph94, %.lr.ph.i.i.i.i.i.i.i.preheader93 ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.09.i.i.i.i.i.i.i.unr = phi ptr [ %.09.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader93 ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.i.unr = phi i64 [ %.068.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader93 ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.v = icmp eq i64 %.068.i.i.i.i.i.i.i.ph, 1
  br i1 %i.v, label %_ZN5boost9container18move_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %i.w = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.068.i.i.i.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i.i ], [ %.068.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %i.x = load i32, ptr %.09.i.i.i.i.i.i.i, align 4, !tbaa !254
  store i32 %i.x, ptr %i.w, align 4, !tbaa !254
  store i32 0, ptr %.09.i.i.i.i.i.i.i, align 4, !tbaa !254
  %i.y = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !254
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !254
  store i32 0, ptr %i.y, align 4, !tbaa !254
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ad = add i64 %.068.i.i.i.i.i.i.i, -2         ; 2 uses
  %i.ae = load i32, ptr %i.ab, align 4, !tbaa !254
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !254
  store i32 0, ptr %i.ab, align 4, !tbaa !254
  %i.af = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !254
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !254
  store i32 0, ptr %i.af, align 4, !tbaa !254
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i.i.1, label %_ZN5boost9container18move_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2843

_ZN5boost9container18move_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block37, %bb.c
  %.0.i.i.i.i.i.i = phi ptr [ %0, %bb.c ], [ %i.j, %middle.block37 ], [ %.lcssa95.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ] ; 8 uses
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %1, %bb.c ], [ %i.k, %middle.block37 ], [ %.lcssa96.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ] ; 8 uses
  %i.ak = sub i64 %i.d, %i.b                      ; 6 uses
  %.pre.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255 ; 3 uses
  %min.iters.check55 = icmp ult i64 %i.ak, 14
  br i1 %min.iters.check55, label %.lr.ph.i14.i.i.i.i.i.i.preheader, label %vector.memcheck56

vector.memcheck56:                                ; preds = %_ZN5boost9container18move_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i.i
  %i.al = sub i64 %i.d, %i.b
  %i.am = shl i64 %i.al, 3                        ; 2 uses
  %i.an = getelementptr i8, ptr %.0.i.i.i.i.i.i, i64 %i.am ; 2 uses
  %i.ao = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 %i.am ; 2 uses
  %bound057 = icmp ult ptr %.0.i.i.i.i.i.i, %i.ao
  %bound158 = icmp ult ptr %.0.lcssa.i.i.i.i.i.i.i, %i.an
  %found.conflict59 = and i1 %bound057, %bound158
  %bound060 = icmp ult ptr %.0.i.i.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound161 = icmp ugt ptr %i.an, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict62 = and i1 %bound060, %bound161
  %conflict.rdx = or i1 %found.conflict59, %found.conflict62
  %bound063 = icmp ult ptr %.0.lcssa.i.i.i.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound164 = icmp ugt ptr %i.ao, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict65 = and i1 %bound063, %bound164
  %conflict.rdx66 = or i1 %conflict.rdx, %found.conflict65
  br i1 %conflict.rdx66, label %.lr.ph.i14.i.i.i.i.i.i.preheader, label %vector.ph67

vector.ph67:                                      ; preds = %vector.memcheck56
  %n.vec68 = and i64 %i.ak, -4                    ; 3 uses
  %i.ap = and i64 %i.ak, 3
  %i.aq = shl i64 %n.vec68, 3                     ; 2 uses
  %i.ar = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 %i.aq
  %i.as = getelementptr i8, ptr %.0.i.i.i.i.i.i, i64 %i.aq
  %i.at = insertelement <2 x i32> <i32 poison, i32 0>, i32 %.pre.i.i.i.i.i, i64 0
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph67
  %index70 = phi i64 [ 0, %vector.ph67 ], [ %index.next86, %vector.body69 ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.at, %vector.ph67 ], [ %i.aw, %vector.body69 ]
  %vec.phi71 = phi <2 x i32> [ zeroinitializer, %vector.ph67 ], [ %i.ax, %vector.body69 ]
  %i.au = shl i64 %index70, 3                     ; 3 uses
  %i.av = or disjoint i64 %i.au, 16               ; 2 uses
  %next.gep72 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 %i.au ; 2 uses
  %next.gep73 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 %i.av ; 2 uses
  %next.gep74 = getelementptr i8, ptr %.0.i.i.i.i.i.i, i64 %i.au ; 2 uses
  %next.gep76 = getelementptr i8, ptr %.0.i.i.i.i.i.i, i64 %i.av ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep74) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep76) ]
  %wide.vec78 = load <4 x i32>, ptr %next.gep72, align 4, !tbaa !254, !alias.scope !2857, !noalias !2858
  %wide.vec81 = load <4 x i32>, ptr %next.gep73, align 4, !tbaa !254, !alias.scope !2857, !noalias !2858
  store <4 x i32> %wide.vec78, ptr %next.gep74, align 4, !tbaa !254, !alias.scope !2859, !noalias !2860
  store <4 x i32> %wide.vec81, ptr %next.gep76, align 4, !tbaa !254, !alias.scope !2859, !noalias !2860
  store <4 x i32> zeroinitializer, ptr %next.gep72, align 4, !tbaa !254, !alias.scope !2857, !noalias !2858
  store <4 x i32> zeroinitializer, ptr %next.gep73, align 4, !tbaa !254, !alias.scope !2857, !noalias !2858
  %i.aw = add <2 x i32> %vec.phi, splat (i32 2)   ; 2 uses
  %i.ax = add <2 x i32> %vec.phi71, splat (i32 2) ; 2 uses
  %index.next86 = add nuw i64 %index70, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next86, %n.vec68
  br i1 %i.ay, label %middle.block87, label %vector.body69, !llvm.loop !2848

middle.block87:                                   ; preds = %vector.body69
  %bin.rdx = add <2 x i32> %i.ax, %i.aw
  %i.az = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  store i32 %i.az, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !alias.scope !2858
  %cmp.n88 = icmp eq i64 %i.ak, %n.vec68
  br i1 %cmp.n88, label %_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EEvRT_T0_mT1_m.exit.i.i.i.i.i, label %.lr.ph.i14.i.i.i.i.i.i.preheader

.lr.ph.i14.i.i.i.i.i.i.preheader:                 ; preds = %vector.memcheck56, %_ZN5boost9container18move_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i.i, %middle.block87
  %.ph = phi i32 [ %.pre.i.i.i.i.i, %vector.memcheck56 ], [ %.pre.i.i.i.i.i, %_ZN5boost9container18move_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i.i ], [ %i.az, %middle.block87 ] ; 2 uses
  %.020.i.i.i.i.i.i.i.ph = phi i64 [ %i.ak, %vector.memcheck56 ], [ %i.ak, %_ZN5boost9container18move_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i.i ], [ %i.ap, %middle.block87 ] ; 4 uses
  %.0819.i.i.i.i.i.i.i.ph = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %vector.memcheck56 ], [ %.0.lcssa.i.i.i.i.i.i.i, %_ZN5boost9container18move_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i.i ], [ %i.ar, %middle.block87 ] ; 5 uses
  %.01618.i.i.i.i.i.i.i.ph = phi ptr [ %.0.i.i.i.i.i.i, %vector.memcheck56 ], [ %.0.i.i.i.i.i.i, %_ZN5boost9container18move_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i.i ], [ %i.as, %middle.block87 ] ; 5 uses
  %xtraiter100 = and i64 %.020.i.i.i.i.i.i.i.ph, 1
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %.lr.ph.i14.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i14.i.i.i.i.i.i.prol

.lr.ph.i14.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i14.i.i.i.i.i.i.preheader
  %i.ba = add nsw i64 %.020.i.i.i.i.i.i.i.ph, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.i.i.i.ph) ]
  %i.bb = load i32, ptr %.0819.i.i.i.i.i.i.i.ph, align 4, !tbaa !254
  store i32 %i.bb, ptr %.01618.i.i.i.i.i.i.i.ph, align 4, !tbaa !254
  store i32 0, ptr %.0819.i.i.i.i.i.i.i.ph, align 4, !tbaa !254
  %i.bc = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i.ph, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i.i.ph, i64 4 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !254
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !254
  store i32 0, ptr %i.bd, align 4, !tbaa !254
  %i.bf = add i32 %.ph, 2                         ; 2 uses
  store i32 %i.bf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.bg = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i.i.ph, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i.ph, i64 8
  br label %.lr.ph.i14.i.i.i.i.i.i.prol.loopexit

.lr.ph.i14.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i14.i.i.i.i.i.i.prol, %.lr.ph.i14.i.i.i.i.i.i.preheader
  %.unr102 = phi i32 [ %.ph, %.lr.ph.i14.i.i.i.i.i.i.preheader ], [ %i.bf, %.lr.ph.i14.i.i.i.i.i.i.prol ]
  %.020.i.i.i.i.i.i.i.unr = phi i64 [ %.020.i.i.i.i.i.i.i.ph, %.lr.ph.i14.i.i.i.i.i.i.preheader ], [ %i.ba, %.lr.ph.i14.i.i.i.i.i.i.prol ]
  %.0819.i.i.i.i.i.i.i.unr = phi ptr [ %.0819.i.i.i.i.i.i.i.ph, %.lr.ph.i14.i.i.i.i.i.i.preheader ], [ %i.bg, %.lr.ph.i14.i.i.i.i.i.i.prol ]
  %.01618.i.i.i.i.i.i.i.unr = phi ptr [ %.01618.i.i.i.i.i.i.i.ph, %.lr.ph.i14.i.i.i.i.i.i.preheader ], [ %i.bh, %.lr.ph.i14.i.i.i.i.i.i.prol ]
  %i.bi = icmp eq i64 %.020.i.i.i.i.i.i.i.ph, 1
  br i1 %i.bi, label %_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EEvRT_T0_mT1_m.exit.i.i.i.i.i, label %.lr.ph.i14.i.i.i.i.i.i

.lr.ph.i14.i.i.i.i.i.i:                           ; preds = %.lr.ph.i14.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i14.i.i.i.i.i.i
  %i.bj = phi i32 [ %i.bw, %.lr.ph.i14.i.i.i.i.i.i ], [ %.unr102, %.lr.ph.i14.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.020.i.i.i.i.i.i.i = phi i64 [ %i.br, %.lr.ph.i14.i.i.i.i.i.i ], [ %.020.i.i.i.i.i.i.i.unr, %.lr.ph.i14.i.i.i.i.i.i.prol.loopexit ]
  %.0819.i.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i14.i.i.i.i.i.i ], [ %.0819.i.i.i.i.i.i.i.unr, %.lr.ph.i14.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.01618.i.i.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i14.i.i.i.i.i.i ], [ %.01618.i.i.i.i.i.i.i.unr, %.lr.ph.i14.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.i.i.i) ]
  %i.bk = load i32, ptr %.0819.i.i.i.i.i.i.i, align 4, !tbaa !254
  store i32 %i.bk, ptr %.01618.i.i.i.i.i.i.i, align 4, !tbaa !254
  store i32 0, ptr %.0819.i.i.i.i.i.i.i, align 4, !tbaa !254
  %i.bl = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !254
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !254
  store i32 0, ptr %i.bm, align 4, !tbaa !254
  %i.bo = add i32 %i.bj, 2
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.bp = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 8
  %i.br = add i64 %.020.i.i.i.i.i.i.i, -2         ; 2 uses
  %i.bs = load i32, ptr %i.bp, align 4, !tbaa !254
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !254
  store i32 0, ptr %i.bp, align 4, !tbaa !254
  %i.bt = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 12
  %i.bu = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !254
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !254
  store i32 0, ptr %i.bu, align 4, !tbaa !254
  %i.bw = add i32 %i.bj, 4                        ; 2 uses
  store i32 %i.bw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.bx = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i.i, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.i, i64 16
  %.not.i15.i.i.i.i.i.i.1 = icmp eq i64 %i.br, 0
  br i1 %.not.i15.i.i.i.i.i.i.1, label %_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EEvRT_T0_mT1_m.exit.i.i.i.i.i, label %.lr.ph.i14.i.i.i.i.i.i, !llvm.loop !2849

bb.d:                                             ; preds = %bb.b
  %.not8.i.i.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not8.i.i.i.i.i.i.i, label %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.preheader

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %bb.d
  %min.iters.check = icmp ult i64 %i.d, 6
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader97, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.bz = shl i64 %i.d, 3                         ; 2 uses
  %i.ca = getelementptr i8, ptr %0, i64 %i.bz
  %i.cb = getelementptr i8, ptr %1, i64 %i.bz
  %bound0 = icmp ult ptr %0, %i.cb
  %bound1 = icmp ult ptr %1, %i.ca
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i.preheader97, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.d, -2                       ; 3 uses
  %i.cc = shl i64 %n.vec, 3                       ; 2 uses
  %i.cd = getelementptr i8, ptr %0, i64 %i.cc
  %i.ce = and i64 %i.d, 1
  %i.cf = getelementptr i8, ptr %1, i64 %i.cc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cg = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.cg
  %next.gep11 = getelementptr i8, ptr %1, i64 %i.cg ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep11, align 8, !tbaa !254, !alias.scope !2861
  store <4 x i32> %wide.vec, ptr %next.gep, align 8, !tbaa !254, !alias.scope !2862, !noalias !2861
  store <4 x i32> zeroinitializer, ptr %next.gep11, align 8, !tbaa !254, !alias.scope !2861
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !2853

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.preheader97

.lr.ph.i17.i.i.i.i.i.i.preheader97:               ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.i.i.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.cd, %middle.block ] ; 4 uses
  %.0610.i.i.i.i.i.i.i.ph = phi i64 [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.ce, %middle.block ] ; 4 uses
  %.079.i.i.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.cf, %middle.block ] ; 5 uses
  %xtraiter = and i64 %.0610.i.i.i.i.i.i.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader97
  %i.ci = add nsw i64 %.0610.i.i.i.i.i.i.i.ph, -1
  %i.cj = load i32, ptr %.079.i.i.i.i.i.i.i.ph, align 4, !tbaa !254
  store i32 %i.cj, ptr %.011.i.i.i.i.i.i.i.ph, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i.i.i.i.i.ph, align 4, !tbaa !254
  %i.ck = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.i.i.ph, i64 4 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.ph, i64 4
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !254
  store i32 %i.cm, ptr %i.cl, align 4, !tbaa !254
  store i32 0, ptr %i.ck, align 4, !tbaa !254
  %i.cn = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.i.i.ph, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.ph, i64 8
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader97
  %.011.i.i.i.i.i.i.i.unr = phi ptr [ %.011.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader97 ], [ %i.co, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %.0610.i.i.i.i.i.i.i.unr = phi i64 [ %.0610.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader97 ], [ %i.ci, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %.079.i.i.i.i.i.i.i.unr = phi ptr [ %.079.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader97 ], [ %i.cn, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.cp = icmp eq i64 %.0610.i.i.i.i.i.i.i.ph, 1
  br i1 %i.cp, label %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i17.i.i.i.i.i.i ], [ %.011.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.0610.i.i.i.i.i.i.i = phi i64 [ %i.cw, %.lr.ph.i17.i.i.i.i.i.i ], [ %.0610.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ]
  %.079.i.i.i.i.i.i.i = phi ptr [ %i.db, %.lr.ph.i17.i.i.i.i.i.i ], [ %.079.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cq = load i32, ptr %.079.i.i.i.i.i.i.i, align 4, !tbaa !254
  store i32 %i.cq, ptr %.011.i.i.i.i.i.i.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i.i.i.i.i, align 4, !tbaa !254
  %i.cr = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i, i64 4
  %i.ct = load i32, ptr %i.cr, align 4, !tbaa !254
  store i32 %i.ct, ptr %i.cs, align 4, !tbaa !254
  store i32 0, ptr %i.cr, align 4, !tbaa !254
  %i.cu = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i, i64 8
  %i.cw = add i64 %.0610.i.i.i.i.i.i.i, -2        ; 2 uses
  %i.cx = load i32, ptr %i.cu, align 4, !tbaa !254
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !254
  store i32 0, ptr %i.cu, align 4, !tbaa !254
  %i.cy = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i, i64 12
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !254
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !254
  store i32 0, ptr %i.cy, align 4, !tbaa !254
  %i.db = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.i.i, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i, i64 16
  %.not.i18.i.i.i.i.i.i.1 = icmp eq i64 %i.cw, 0
  br i1 %.not.i18.i.i.i.i.i.i.1, label %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !2854

_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block, %bb.d
  %.not3.i.i.i.i.i.i.i = icmp eq i64 %i.b, %i.d
  br i1 %.not3.i.i.i.i.i.i.i, label %_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EEvRT_T0_mT1_m.exit.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i.i.i
  %.neg.i.i.i.i.i.i = sub i64 %i.d, %i.b
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %.neg21.i.i.i.i.i.i = trunc i64 %.neg.i.i.i.i.i.i to i32
  %.neg22.i.i.i.i.i.i = shl i32 %.neg21.i.i.i.i.i.i, 1
  %i.dd = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i, %.neg22.i.i.i.i.i.i
  store i32 %i.dd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EEvRT_T0_mT1_m.exit.i.i.i.i.i

_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EEvRT_T0_mT1_m.exit.i.i.i.i.i: ; preds = %.lr.ph.i14.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i14.i.i.i.i.i.i, %middle.block87, %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i.i.i
  store i64 %i.d, ptr %i.a, align 8, !tbaa !317
end_hunk_0
begin_hunk_1_@_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEE16extract_sequenceEv:bb.a
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !3211

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13static_vectorISt4pairINS0_4test24movable_and_copyable_intES4_ELm10EvEC2EOS6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.a, %middle.block
  %.020.i.i.i.i.ph = phi i64 [ %i.c, %bb.a ], [ %i.d, %middle.block ]
  %.0819.i.i.i.i.ph = phi ptr [ %1, %bb.a ], [ %i.f, %middle.block ]
  %.01618.i.i.i.i.ph = phi ptr [ %0, %bb.a ], [ %i.g, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.020.i.i.i.i = phi i64 [ %i.j, %.lr.ph.i.i.i.i ], [ %.020.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ]
  %.0819.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i ], [ %.0819.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i ], [ %.01618.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.j = add i64 %.020.i.i.i.i, -1                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4
  %i.l = load <2 x i32>, ptr %.0819.i.i.i.i, align 4, !tbaa !254
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !254
  store <2 x i32> %i.l, ptr %.01618.i.i.i.i, align 4, !tbaa !254
  store i32 0, ptr %i.k, align 4, !tbaa !254
  %i.m = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container13static_vectorISt4pairINS0_4test24movable_and_copyable_intES4_ELm10EvEC2EOS6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3212

_ZN5boost9container13static_vectorISt4pairINS0_4test24movable_and_copyable_intES4_ELm10EvEC2EOS6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.a
  store i64 0, ptr %i.b, align 8, !tbaa !317
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEE14adopt_sequenceEOS9_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN5boost9container3dtl30flat_tree_adopt_sequence_equalINS0_13static_vectorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSF_T0_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13static_vectorISt4pairIS3_S3_ELm10EvEEE14adopt_sequenceENS0_15ordered_range_tEOS9_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13static_vectorIS6_Lm10EvEEE20adopt_sequence_equalENS0_15ordered_range_tEOSC_.exit, label %bb.b, !prof !225

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !319  ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !319  ; 14 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not7.i.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN5boost9container18move_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.c
  %min.iters.check21 = icmp ult i64 %i.b, 6
  br i1 %min.iters.check21, label %.lr.ph.i.i.i.i.i.i.preheader93, label %vector.memcheck22

vector.memcheck22:                                ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.f = shl i64 %i.b, 3                          ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %i.h = getelementptr i8, ptr %1, i64 %i.f
  %bound023 = icmp ult ptr %0, %i.h
  %bound124 = icmp ult ptr %1, %i.g
  %found.conflict25 = and i1 %bound023, %bound124
  br i1 %found.conflict25, label %.lr.ph.i.i.i.i.i.i.preheader93, label %vector.ph26

vector.ph26:                                      ; preds = %vector.memcheck22
  %n.vec27 = and i64 %i.b, -2                     ; 3 uses
  %i.i = shl i64 %n.vec27, 3                      ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.i       ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 %i.i       ; 2 uses
  %i.l = and i64 %i.b, 1
  br label %vector.body28

vector.body28:                                    ; preds = %vector.body28, %vector.ph26
  %index29 = phi i64 [ 0, %vector.ph26 ], [ %index.next36, %vector.body28 ] ; 2 uses
  %i.m = shl i64 %index29, 3                      ; 2 uses
  %next.gep30 = getelementptr i8, ptr %0, i64 %i.m
  %next.gep31 = getelementptr i8, ptr %1, i64 %i.m ; 2 uses
  %wide.vec32 = load <4 x i32>, ptr %next.gep31, align 8, !tbaa !254, !alias.scope !3229
  store <4 x i32> %wide.vec32, ptr %next.gep30, align 8, !tbaa !254, !alias.scope !3230, !noalias !3229
  store <4 x i32> zeroinitializer, ptr %next.gep31, align 8, !tbaa !254, !alias.scope !3229
  %index.next36 = add nuw i64 %index29, 2         ; 2 uses
  %i.n = icmp eq i64 %index.next36, %n.vec27
  br i1 %i.n, label %middle.block37, label %vector.body28, !llvm.loop !3216

middle.block37:                                   ; preds = %vector.body28
  %cmp.n38 = icmp eq i64 %i.b, %n.vec27
  br i1 %cmp.n38, label %_ZN5boost9container18move_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader93

.lr.ph.i.i.i.i.i.i.preheader93:                   ; preds = %vector.memcheck22, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block37
  %.ph94 = phi ptr [ %0, %vector.memcheck22 ], [ %0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.j, %middle.block37 ] ; 4 uses
  %.09.i.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck22 ], [ %1, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.k, %middle.block37 ] ; 5 uses
  %.068.i.i.i.i.i.i.ph = phi i64 [ %i.b, %vector.memcheck22 ], [ %i.b, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.l, %middle.block37 ] ; 4 uses
  %xtraiter98 = and i64 %.068.i.i.i.i.i.i.ph, 1
  %lcmp.mod99.not = icmp eq i64 %xtraiter98, 0
  br i1 %lcmp.mod99.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader93
  %i.o = add nsw i64 %.068.i.i.i.i.i.i.ph, -1
  %i.p = load i32, ptr %.09.i.i.i.i.i.i.ph, align 4, !tbaa !254
  store i32 %i.p, ptr %.ph94, align 4, !tbaa !254
  store i32 0, ptr %.09.i.i.i.i.i.i.ph, align 4, !tbaa !254
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.ph, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.ph94, i64 4
  %i.s = load i32, ptr %i.q, align 4, !tbaa !254
  store i32 %i.s, ptr %i.r, align 4, !tbaa !254
  store i32 0, ptr %i.q, align 4, !tbaa !254
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.ph, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.ph94, i64 8 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader93
  %.lcssa96.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader93 ], [ %i.t, %.lr.ph.i.i.i.i.i.i.prol ]
  %.lcssa95.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader93 ], [ %i.u, %.lr.ph.i.i.i.i.i.i.prol ]
  %.unr = phi ptr [ %.ph94, %.lr.ph.i.i.i.i.i.i.preheader93 ], [ %i.u, %.lr.ph.i.i.i.i.i.i.prol ]
  %.09.i.i.i.i.i.i.unr = phi ptr [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader93 ], [ %i.t, %.lr.ph.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.unr = phi i64 [ %.068.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader93 ], [ %i.o, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.v = icmp eq i64 %.068.i.i.i.i.i.i.ph, 1
  br i1 %i.v, label %_ZN5boost9container18move_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %i.w = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.09.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.068.i.i.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %.068.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %i.x = load i32, ptr %.09.i.i.i.i.i.i, align 4, !tbaa !254
  store i32 %i.x, ptr %i.w, align 4, !tbaa !254
  store i32 0, ptr %.09.i.i.i.i.i.i, align 4, !tbaa !254
  %i.y = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !254
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !254
  store i32 0, ptr %i.y, align 4, !tbaa !254
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ad = add i64 %.068.i.i.i.i.i.i, -2           ; 2 uses
  %i.ae = load i32, ptr %i.ab, align 4, !tbaa !254
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !254
  store i32 0, ptr %i.ab, align 4, !tbaa !254
  %i.af = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !254
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !254
  store i32 0, ptr %i.af, align 4, !tbaa !254
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i.1, label %_ZN5boost9container18move_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3217

_ZN5boost9container18move_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block37, %bb.c
  %.0.i.i.i.i.i = phi ptr [ %0, %bb.c ], [ %i.j, %middle.block37 ], [ %.lcssa95.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.aj, %.lr.ph.i.i.i.i.i.i ] ; 8 uses
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %1, %bb.c ], [ %i.k, %middle.block37 ], [ %.lcssa96.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.ai, %.lr.ph.i.i.i.i.i.i ] ; 8 uses
  %i.ak = sub i64 %i.d, %i.b                      ; 6 uses
  %.pre.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255 ; 3 uses
  %min.iters.check55 = icmp ult i64 %i.ak, 14
  br i1 %min.iters.check55, label %.lr.ph.i14.i.i.i.i.i.preheader, label %vector.memcheck56

vector.memcheck56:                                ; preds = %_ZN5boost9container18move_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i
  %i.al = sub i64 %i.d, %i.b
  %i.am = shl i64 %i.al, 3                        ; 2 uses
  %i.an = getelementptr i8, ptr %.0.i.i.i.i.i, i64 %i.am ; 2 uses
  %i.ao = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 %i.am ; 2 uses
  %bound057 = icmp ult ptr %.0.i.i.i.i.i, %i.ao
  %bound158 = icmp ult ptr %.0.lcssa.i.i.i.i.i.i, %i.an
  %found.conflict59 = and i1 %bound057, %bound158
  %bound060 = icmp ult ptr %.0.i.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound161 = icmp ugt ptr %i.an, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict62 = and i1 %bound060, %bound161
  %conflict.rdx = or i1 %found.conflict59, %found.conflict62
  %bound063 = icmp ult ptr %.0.lcssa.i.i.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound164 = icmp ugt ptr %i.ao, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict65 = and i1 %bound063, %bound164
  %conflict.rdx66 = or i1 %conflict.rdx, %found.conflict65
  br i1 %conflict.rdx66, label %.lr.ph.i14.i.i.i.i.i.preheader, label %vector.ph67

vector.ph67:                                      ; preds = %vector.memcheck56
  %n.vec68 = and i64 %i.ak, -4                    ; 3 uses
  %i.ap = and i64 %i.ak, 3
  %i.aq = shl i64 %n.vec68, 3                     ; 2 uses
  %i.ar = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 %i.aq
  %i.as = getelementptr i8, ptr %.0.i.i.i.i.i, i64 %i.aq
  %i.at = insertelement <2 x i32> <i32 poison, i32 0>, i32 %.pre.i.i.i.i, i64 0
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph67
  %index70 = phi i64 [ 0, %vector.ph67 ], [ %index.next86, %vector.body69 ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.at, %vector.ph67 ], [ %i.aw, %vector.body69 ]
  %vec.phi71 = phi <2 x i32> [ zeroinitializer, %vector.ph67 ], [ %i.ax, %vector.body69 ]
  %i.au = shl i64 %index70, 3                     ; 3 uses
  %i.av = or disjoint i64 %i.au, 16               ; 2 uses
  %next.gep72 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 %i.au ; 2 uses
  %next.gep73 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 %i.av ; 2 uses
  %next.gep74 = getelementptr i8, ptr %.0.i.i.i.i.i, i64 %i.au ; 2 uses
  %next.gep76 = getelementptr i8, ptr %.0.i.i.i.i.i, i64 %i.av ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep74) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep76) ]
  %wide.vec78 = load <4 x i32>, ptr %next.gep72, align 4, !tbaa !254, !alias.scope !3231, !noalias !3232
  %wide.vec81 = load <4 x i32>, ptr %next.gep73, align 4, !tbaa !254, !alias.scope !3231, !noalias !3232
  store <4 x i32> %wide.vec78, ptr %next.gep74, align 4, !tbaa !254, !alias.scope !3233, !noalias !3234
  store <4 x i32> %wide.vec81, ptr %next.gep76, align 4, !tbaa !254, !alias.scope !3233, !noalias !3234
  store <4 x i32> zeroinitializer, ptr %next.gep72, align 4, !tbaa !254, !alias.scope !3231, !noalias !3232
  store <4 x i32> zeroinitializer, ptr %next.gep73, align 4, !tbaa !254, !alias.scope !3231, !noalias !3232
  %i.aw = add <2 x i32> %vec.phi, splat (i32 2)   ; 2 uses
  %i.ax = add <2 x i32> %vec.phi71, splat (i32 2) ; 2 uses
  %index.next86 = add nuw i64 %index70, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next86, %n.vec68
  br i1 %i.ay, label %middle.block87, label %vector.body69, !llvm.loop !3222

middle.block87:                                   ; preds = %vector.body69
  %bin.rdx = add <2 x i32> %i.ax, %i.aw
  %i.az = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  store i32 %i.az, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !alias.scope !3232
  %cmp.n88 = icmp eq i64 %i.ak, %n.vec68
  br i1 %cmp.n88, label %_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EEvRT_T0_mT1_m.exit.i.i.i.i, label %.lr.ph.i14.i.i.i.i.i.preheader

.lr.ph.i14.i.i.i.i.i.preheader:                   ; preds = %vector.memcheck56, %_ZN5boost9container18move_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i, %middle.block87
  %.ph = phi i32 [ %.pre.i.i.i.i, %vector.memcheck56 ], [ %.pre.i.i.i.i, %_ZN5boost9container18move_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i ], [ %i.az, %middle.block87 ] ; 2 uses
  %.020.i.i.i.i.i.i.ph = phi i64 [ %i.ak, %vector.memcheck56 ], [ %i.ak, %_ZN5boost9container18move_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i ], [ %i.ap, %middle.block87 ] ; 4 uses
  %.0819.i.i.i.i.i.i.ph = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %vector.memcheck56 ], [ %.0.lcssa.i.i.i.i.i.i, %_ZN5boost9container18move_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i ], [ %i.ar, %middle.block87 ] ; 5 uses
  %.01618.i.i.i.i.i.i.ph = phi ptr [ %.0.i.i.i.i.i, %vector.memcheck56 ], [ %.0.i.i.i.i.i, %_ZN5boost9container18move_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i.i ], [ %i.as, %middle.block87 ] ; 5 uses
  %xtraiter100 = and i64 %.020.i.i.i.i.i.i.ph, 1
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %.lr.ph.i14.i.i.i.i.i.prol.loopexit, label %.lr.ph.i14.i.i.i.i.i.prol

.lr.ph.i14.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i14.i.i.i.i.i.preheader
  %i.ba = add nsw i64 %.020.i.i.i.i.i.i.ph, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.i.i.ph) ]
  %i.bb = load i32, ptr %.0819.i.i.i.i.i.i.ph, align 4, !tbaa !254
  store i32 %i.bb, ptr %.01618.i.i.i.i.i.i.ph, align 4, !tbaa !254
  store i32 0, ptr %.0819.i.i.i.i.i.i.ph, align 4, !tbaa !254
  %i.bc = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.ph, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i.ph, i64 4 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !254
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !254
  store i32 0, ptr %i.bd, align 4, !tbaa !254
  %i.bf = add i32 %.ph, 2                         ; 2 uses
  store i32 %i.bf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.bg = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i.ph, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i.ph, i64 8
  br label %.lr.ph.i14.i.i.i.i.i.prol.loopexit

.lr.ph.i14.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i14.i.i.i.i.i.prol, %.lr.ph.i14.i.i.i.i.i.preheader
  %.unr102 = phi i32 [ %.ph, %.lr.ph.i14.i.i.i.i.i.preheader ], [ %i.bf, %.lr.ph.i14.i.i.i.i.i.prol ]
  %.020.i.i.i.i.i.i.unr = phi i64 [ %.020.i.i.i.i.i.i.ph, %.lr.ph.i14.i.i.i.i.i.preheader ], [ %i.ba, %.lr.ph.i14.i.i.i.i.i.prol ]
  %.0819.i.i.i.i.i.i.unr = phi ptr [ %.0819.i.i.i.i.i.i.ph, %.lr.ph.i14.i.i.i.i.i.preheader ], [ %i.bg, %.lr.ph.i14.i.i.i.i.i.prol ]
  %.01618.i.i.i.i.i.i.unr = phi ptr [ %.01618.i.i.i.i.i.i.ph, %.lr.ph.i14.i.i.i.i.i.preheader ], [ %i.bh, %.lr.ph.i14.i.i.i.i.i.prol ]
  %i.bi = icmp eq i64 %.020.i.i.i.i.i.i.ph, 1
  br i1 %i.bi, label %_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EEvRT_T0_mT1_m.exit.i.i.i.i, label %.lr.ph.i14.i.i.i.i.i

.lr.ph.i14.i.i.i.i.i:                             ; preds = %.lr.ph.i14.i.i.i.i.i.prol.loopexit, %.lr.ph.i14.i.i.i.i.i
  %i.bj = phi i32 [ %i.bw, %.lr.ph.i14.i.i.i.i.i ], [ %.unr102, %.lr.ph.i14.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.020.i.i.i.i.i.i = phi i64 [ %i.br, %.lr.ph.i14.i.i.i.i.i ], [ %.020.i.i.i.i.i.i.unr, %.lr.ph.i14.i.i.i.i.i.prol.loopexit ]
  %.0819.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i14.i.i.i.i.i ], [ %.0819.i.i.i.i.i.i.unr, %.lr.ph.i14.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.01618.i.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i14.i.i.i.i.i ], [ %.01618.i.i.i.i.i.i.unr, %.lr.ph.i14.i.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.i.i) ]
  %i.bk = load i32, ptr %.0819.i.i.i.i.i.i, align 4, !tbaa !254
  store i32 %i.bk, ptr %.01618.i.i.i.i.i.i, align 4, !tbaa !254
  store i32 0, ptr %.0819.i.i.i.i.i.i, align 4, !tbaa !254
  %i.bl = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !254
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !254
  store i32 0, ptr %i.bm, align 4, !tbaa !254
  %i.bo = add i32 %i.bj, 2
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.bp = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 8
  %i.br = add i64 %.020.i.i.i.i.i.i, -2           ; 2 uses
  %i.bs = load i32, ptr %i.bp, align 4, !tbaa !254
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !254
  store i32 0, ptr %i.bp, align 4, !tbaa !254
  %i.bt = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 12
  %i.bu = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !254
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !254
  store i32 0, ptr %i.bu, align 4, !tbaa !254
  %i.bw = add i32 %i.bj, 4                        ; 2 uses
  store i32 %i.bw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.bx = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 16
  %.not.i15.i.i.i.i.i.1 = icmp eq i64 %i.br, 0
  br i1 %.not.i15.i.i.i.i.i.1, label %_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EEvRT_T0_mT1_m.exit.i.i.i.i, label %.lr.ph.i14.i.i.i.i.i, !llvm.loop !3223

bb.d:                                             ; preds = %bb.b
  %.not8.i.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.preheader

.lr.ph.i17.i.i.i.i.i.preheader:                   ; preds = %bb.d
  %min.iters.check = icmp ult i64 %i.d, 6
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.preheader97, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.preheader
  %i.bz = shl i64 %i.d, 3                         ; 2 uses
  %i.ca = getelementptr i8, ptr %0, i64 %i.bz
  %i.cb = getelementptr i8, ptr %1, i64 %i.bz
  %bound0 = icmp ult ptr %0, %i.cb
  %bound1 = icmp ult ptr %1, %i.ca
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.preheader97, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.d, -2                       ; 3 uses
  %i.cc = shl i64 %n.vec, 3                       ; 2 uses
  %i.cd = getelementptr i8, ptr %0, i64 %i.cc
  %i.ce = and i64 %i.d, 1
  %i.cf = getelementptr i8, ptr %1, i64 %i.cc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cg = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.cg
  %next.gep11 = getelementptr i8, ptr %1, i64 %i.cg ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep11, align 8, !tbaa !254, !alias.scope !3235
  store <4 x i32> %wide.vec, ptr %next.gep, align 8, !tbaa !254, !alias.scope !3236, !noalias !3235
  store <4 x i32> zeroinitializer, ptr %next.gep11, align 8, !tbaa !254, !alias.scope !3235
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !3227

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.preheader97

.lr.ph.i17.i.i.i.i.i.preheader97:                 ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.i.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i17.i.i.i.i.i.preheader ], [ %i.cd, %middle.block ] ; 4 uses
  %.0610.i.i.i.i.i.i.ph = phi i64 [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i17.i.i.i.i.i.preheader ], [ %i.ce, %middle.block ] ; 4 uses
  %.079.i.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i17.i.i.i.i.i.preheader ], [ %i.cf, %middle.block ] ; 5 uses
  %xtraiter = and i64 %.0610.i.i.i.i.i.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i17.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i17.i.i.i.i.i.preheader97
  %i.ci = add nsw i64 %.0610.i.i.i.i.i.i.ph, -1
  %i.cj = load i32, ptr %.079.i.i.i.i.i.i.ph, align 4, !tbaa !254
  store i32 %i.cj, ptr %.011.i.i.i.i.i.i.ph, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i.i.i.i.ph, align 4, !tbaa !254
  %i.ck = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.i.ph, i64 4 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.ph, i64 4
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !254
  store i32 %i.cm, ptr %i.cl, align 4, !tbaa !254
  store i32 0, ptr %i.ck, align 4, !tbaa !254
  %i.cn = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.i.ph, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.ph, i64 8
  br label %.lr.ph.i17.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i17.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.preheader97
  %.011.i.i.i.i.i.i.unr = phi ptr [ %.011.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.preheader97 ], [ %i.co, %.lr.ph.i17.i.i.i.i.i.prol ]
  %.0610.i.i.i.i.i.i.unr = phi i64 [ %.0610.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.preheader97 ], [ %i.ci, %.lr.ph.i17.i.i.i.i.i.prol ]
  %.079.i.i.i.i.i.i.unr = phi ptr [ %.079.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.preheader97 ], [ %i.cn, %.lr.ph.i17.i.i.i.i.i.prol ]
  %i.cp = icmp eq i64 %.0610.i.i.i.i.i.i.ph, 1
  br i1 %i.cp, label %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i:                             ; preds = %.lr.ph.i17.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i17.i.i.i.i.i ], [ %.011.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.0610.i.i.i.i.i.i = phi i64 [ %i.cw, %.lr.ph.i17.i.i.i.i.i ], [ %.0610.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.prol.loopexit ]
  %.079.i.i.i.i.i.i = phi ptr [ %i.db, %.lr.ph.i17.i.i.i.i.i ], [ %.079.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cq = load i32, ptr %.079.i.i.i.i.i.i, align 4, !tbaa !254
  store i32 %i.cq, ptr %.011.i.i.i.i.i.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i.i.i.i, align 4, !tbaa !254
  %i.cr = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 4
  %i.ct = load i32, ptr %i.cr, align 4, !tbaa !254
  store i32 %i.ct, ptr %i.cs, align 4, !tbaa !254
  store i32 0, ptr %i.cr, align 4, !tbaa !254
  %i.cu = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 8
  %i.cw = add i64 %.0610.i.i.i.i.i.i, -2          ; 2 uses
  %i.cx = load i32, ptr %i.cu, align 4, !tbaa !254
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !254
  store i32 0, ptr %i.cu, align 4, !tbaa !254
  %i.cy = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 12
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !254
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !254
  store i32 0, ptr %i.cy, align 4, !tbaa !254
  %i.db = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.i, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 16
  %.not.i18.i.i.i.i.i.1 = icmp eq i64 %i.cw, 0
  br i1 %.not.i18.i.i.i.i.i.1, label %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i, !llvm.loop !3228

_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i.i: ; preds = %.lr.ph.i17.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i, %middle.block, %bb.d
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.b, %i.d
  br i1 %.not3.i.i.i.i.i.i, label %_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EEvRT_T0_mT1_m.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i.i
  %.neg.i.i.i.i.i = sub i64 %i.d, %i.b
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %.neg21.i.i.i.i.i = trunc i64 %.neg.i.i.i.i.i to i32
  %.neg22.i.i.i.i.i = shl i32 %.neg21.i.i.i.i.i, 1
  %i.dd = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i, %.neg22.i.i.i.i.i
  store i32 %i.dd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EEvRT_T0_mT1_m.exit.i.i.i.i

_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EEvRT_T0_mT1_m.exit.i.i.i.i: ; preds = %.lr.ph.i14.i.i.i.i.i.prol.loopexit, %.lr.ph.i14.i.i.i.i.i, %middle.block87, %.lr.ph.preheader.i.i.i.i.i.i, %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i.i
  store i64 %i.d, ptr %i.a, align 8, !tbaa !317
end_hunk_1
begin_hunk_2_@_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE18priv_merge_genericIPKS5_NS6_23flat_tree_value_compareISt4lessIS4_ES5_NS6_9select1stIS4_EEEEEEvT_SJ_T0_:bb.a

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.c
  br i1 %i.as, label %_ZN5boost7movelib14adaptive_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_T0_PNS0_15iterator_traitsISF_E10value_typeENS0_9iter_sizeISF_E4typeE.exit, label %bb.d, !llvm.loop !8

bb.f:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !254
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.025.i = phi ptr [ %i.ak, %bb.f ], [ %i.av, %bb.i ] ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.025.i, i64 -8 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !254
  %i.ax = icmp slt i32 %i.aw, %i.au
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.ak, ptr %3, align 8, !tbaa !267
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %i.ay, align 8, !tbaa !266
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.al, ptr %i.az, align 8, !tbaa !268
  %i.ba = ptrtoint ptr %i.c to i64                ; 2 uses
  %i.bb = ptrtoint ptr %.0.i to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 3
  %i.be = ptrtoint ptr %.025.i to i64
  %i.bf = sub i64 %i.be, %i.ba
  %i.bg = ashr exact i64 %i.bf, 3
  invoke void @_ZN5boost7movelib15detail_adaptive19adaptive_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_NS0_9iter_sizeISI_E4typeESL_T0_RT1_(ptr noundef nonnull %.0.i, i64 noundef %i.bd, i64 noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.bh = icmp eq ptr %i.av, %i.c
  br i1 %i.bh, label %_ZN5boost7movelib14adaptive_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_T0_PNS0_15iterator_traitsISF_E10value_typeENS0_9iter_sizeISF_E4typeE.exit, label %bb.g, !llvm.loop !9

bb.j:                                             ; preds = %bb.h
  %i.bi = load i64, ptr %i.ay, align 8, !tbaa !266 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.j
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = shl i32 %i.bj, 1
  %i.bl = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i, %i.bk
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit.i

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit.i: ; preds = %.preheader.i.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN5boost7movelib14adaptive_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_T0_PNS0_15iterator_traitsISF_E10value_typeENS0_9iter_sizeISF_E4typeE.exit

bb.k:                                             ; preds = %bb.h
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = load i64, ptr %i.ay, align 8, !tbaa !266 ; 2 uses
  %.not.i.i30.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i30.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit33.i, label %.preheader.i.i.i31.i

.preheader.i.i.i31.i:                             ; preds = %bb.k
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i32.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = shl i32 %i.bo, 1
  %i.bq = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i32.i, %i.bp
  store i32 %i.bq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit33.i

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit33.i: ; preds = %.preheader.i.i.i31.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.bm

_ZN5boost7movelib14adaptive_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_T0_PNS0_15iterator_traitsISF_E10value_typeENS0_9iter_sizeISF_E4typeE.exit: ; preds = %bb.e, %bb.i, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE6insertIPKS5_EENS0_12vec_iteratorIPS5_Lb0EEENSD_ISE_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS6_17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESP_E4typeE.exit, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEE14priv_deep_swapIS8_mSB_EEvRNS1_IT_T0_T1_EE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !317  ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !317  ; 11 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not18.i = icmp eq i64 %i.b, 0
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter123 = and i64 %i.b, 1
  %i.f = icmp eq i64 %i.b, 1
  br i1 %i.f, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter128 = and i64 %i.b, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.01520.i = phi ptr [ %0, %.lr.ph.i.preheader.new ], [ %i.u, %.lr.ph.i ] ; 7 uses
  %.01619.i = phi ptr [ %1, %.lr.ph.i.preheader.new ], [ %i.v, %.lr.ph.i ] ; 6 uses
  %niter129 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter129.next.1, %.lr.ph.i ]
  %i.g = load i32, ptr %.01520.i, align 4, !tbaa !254
  store i32 0, ptr %.01520.i, align 4, !tbaa !254
  %i.h = load i32, ptr %.01619.i, align 4, !tbaa !254
  store i32 %i.h, ptr %.01520.i, align 4, !tbaa !254
  store i32 %i.g, ptr %.01619.i, align 4, !tbaa !254
  %i.i = getelementptr inbounds nuw i8, ptr %.01520.i, i64 4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.01619.i, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.i, align 4, !tbaa !254
  store i32 0, ptr %i.i, align 4, !tbaa !254
  %i.l = load i32, ptr %i.j, align 4, !tbaa !254
  store i32 %i.l, ptr %i.i, align 4, !tbaa !254
  store i32 %i.k, ptr %i.j, align 4, !tbaa !254
  %i.m = getelementptr inbounds nuw i8, ptr %.01520.i, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01619.i, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.m, align 4, !tbaa !254
  store i32 0, ptr %i.m, align 4, !tbaa !254
  %i.p = load i32, ptr %i.n, align 4, !tbaa !254
  store i32 %i.p, ptr %i.m, align 4, !tbaa !254
  store i32 %i.o, ptr %i.n, align 4, !tbaa !254
  %i.q = getelementptr inbounds nuw i8, ptr %.01520.i, i64 12 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.01619.i, i64 12 ; 2 uses
  %i.s = load i32, ptr %i.q, align 4, !tbaa !254
  store i32 0, ptr %i.q, align 4, !tbaa !254
  %i.t = load i32, ptr %i.r, align 4, !tbaa !254
  store i32 %i.t, ptr %i.q, align 4, !tbaa !254
  store i32 %i.s, ptr %i.r, align 4, !tbaa !254
  %i.u = getelementptr inbounds nuw i8, ptr %.01520.i, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01619.i, i64 16 ; 3 uses
  %niter129.next.1 = add nuw i64 %niter129, 2     ; 2 uses
  %niter129.ncmp.1 = icmp eq i64 %niter129.next.1, %unroll_iter128
  br i1 %niter129.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !16591

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod124.not = icmp eq i64 %xtraiter123, 0
  br i1 %lcmp.mod124.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.01520.i.epil.init = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.u, %._crit_edge.i.loopexit.unr-lcssa ] ; 5 uses
  %.01619.i.epil.init = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.v, %._crit_edge.i.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod127 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod127)
  %i.w = load i32, ptr %.01520.i.epil.init, align 4, !tbaa !254
  store i32 0, ptr %.01520.i.epil.init, align 4, !tbaa !254
  %i.x = load i32, ptr %.01619.i.epil.init, align 4, !tbaa !254
  store i32 %i.x, ptr %.01520.i.epil.init, align 4, !tbaa !254
  store i32 %i.w, ptr %.01619.i.epil.init, align 4, !tbaa !254
  %i.y = getelementptr inbounds nuw i8, ptr %.01520.i.epil.init, i64 4 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01619.i.epil.init, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !254
  store i32 0, ptr %i.y, align 4, !tbaa !254
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !254
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !254
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !254
  %i.ac = getelementptr inbounds nuw i8, ptr %.01520.i.epil.init, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.01619.i.epil.init, i64 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.b
  %.016.lcssa.i = phi ptr [ %1, %bb.b ], [ %i.v, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.ad, %.lr.ph.i.epil.preheader ] ; 7 uses
  %.015.lcssa.i = phi ptr [ %0, %bb.b ], [ %i.u, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.ac, %.lr.ph.i.epil.preheader ] ; 7 uses
  %i.ae = sub i64 %i.d, %i.b                      ; 9 uses
  %.pre37 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255 ; 3 uses
  %min.iters.check73 = icmp ult i64 %i.ae, 8
  br i1 %min.iters.check73, label %.lr.ph.i.i.preheader, label %vector.memcheck74

vector.memcheck74:                                ; preds = %._crit_edge.i
  %i.af = sub i64 %i.d, %i.b
  %i.ag = shl i64 %i.af, 3                        ; 2 uses
  %i.ah = getelementptr i8, ptr %.015.lcssa.i, i64 %i.ag
  %i.ai = getelementptr i8, ptr %.016.lcssa.i, i64 %i.ag
  %bound075 = icmp ult ptr %.015.lcssa.i, %i.ai
  %bound176 = icmp ult ptr %.016.lcssa.i, %i.ah
  %found.conflict77 = and i1 %bound075, %bound176
  br i1 %found.conflict77, label %.lr.ph.i.i.preheader, label %vector.ph78

vector.ph78:                                      ; preds = %vector.memcheck74
  %n.vec79 = and i64 %i.ae, -4                    ; 3 uses
  %i.aj = and i64 %i.ae, 3
  %i.ak = shl i64 %n.vec79, 3                     ; 2 uses
  %i.al = getelementptr i8, ptr %.016.lcssa.i, i64 %i.ak
  %i.am = getelementptr i8, ptr %.015.lcssa.i, i64 %i.ak
  %i.an = insertelement <2 x i32> <i32 poison, i32 0>, i32 %.pre37, i64 0
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph78
  %index81 = phi i64 [ 0, %vector.ph78 ], [ %index.next98, %vector.body80 ] ; 2 uses
  %vec.phi82 = phi <2 x i32> [ %i.an, %vector.ph78 ], [ %i.aq, %vector.body80 ]
  %vec.phi83 = phi <2 x i32> [ zeroinitializer, %vector.ph78 ], [ %i.ar, %vector.body80 ]
  %i.ao = shl i64 %index81, 3                     ; 3 uses
  %i.ap = or disjoint i64 %i.ao, 16               ; 2 uses
  %next.gep84 = getelementptr i8, ptr %.016.lcssa.i, i64 %i.ao ; 2 uses
  %next.gep85 = getelementptr i8, ptr %.016.lcssa.i, i64 %i.ap ; 2 uses
  %next.gep86 = getelementptr i8, ptr %.015.lcssa.i, i64 %i.ao ; 2 uses
  %next.gep88 = getelementptr i8, ptr %.015.lcssa.i, i64 %i.ap ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep86) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep88) ]
  %wide.vec90 = load <4 x i32>, ptr %next.gep84, align 4, !tbaa !254, !alias.scope !16602
  %wide.vec93 = load <4 x i32>, ptr %next.gep85, align 4, !tbaa !254, !alias.scope !16602
  store <4 x i32> %wide.vec90, ptr %next.gep86, align 4, !tbaa !254, !alias.scope !16603, !noalias !16602
  store <4 x i32> %wide.vec93, ptr %next.gep88, align 4, !tbaa !254, !alias.scope !16603, !noalias !16602
  store <4 x i32> zeroinitializer, ptr %next.gep84, align 4, !tbaa !254, !alias.scope !16602
  store <4 x i32> zeroinitializer, ptr %next.gep85, align 4, !tbaa !254, !alias.scope !16602
  %i.aq = add <2 x i32> %vec.phi82, splat (i32 2) ; 2 uses
  %i.ar = add <2 x i32> %vec.phi83, splat (i32 2) ; 2 uses
  %index.next98 = add nuw i64 %index81, 4         ; 2 uses
  %i.as = icmp eq i64 %index.next98, %n.vec79
  br i1 %i.as, label %middle.block99, label %vector.body80, !llvm.loop !16595

middle.block99:                                   ; preds = %vector.body80
  %bin.rdx100 = add <2 x i32> %i.ar, %i.aq
  %i.at = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx100) ; 2 uses
  %cmp.n101 = icmp eq i64 %i.ae, %n.vec79
  br i1 %cmp.n101, label %_ZN5boost9container17deep_swap_alloc_nILm80ENS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EENS2_38disable_if_memtransfer_copy_assignableIT1_T2_vE4typeERT0_SB_mSC_m.exit.sink.split, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck74, %._crit_edge.i, %middle.block99
  %.ph = phi i32 [ %.pre37, %vector.memcheck74 ], [ %.pre37, %._crit_edge.i ], [ %i.at, %middle.block99 ] ; 2 uses
  %.020.i.i.ph = phi i64 [ %i.ae, %vector.memcheck74 ], [ %i.ae, %._crit_edge.i ], [ %i.aj, %middle.block99 ] ; 4 uses
  %.0819.i.i.ph = phi ptr [ %.016.lcssa.i, %vector.memcheck74 ], [ %.016.lcssa.i, %._crit_edge.i ], [ %i.al, %middle.block99 ] ; 5 uses
  %.01618.i.i.ph = phi ptr [ %.015.lcssa.i, %vector.memcheck74 ], [ %.015.lcssa.i, %._crit_edge.i ], [ %i.am, %middle.block99 ] ; 5 uses
  %xtraiter130 = and i64 %.020.i.i.ph, 1
  %lcmp.mod131.not = icmp eq i64 %xtraiter130, 0
  br i1 %lcmp.mod131.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.au = add nsw i64 %.020.i.i.ph, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.ph) ]
  %i.av = load i32, ptr %.0819.i.i.ph, align 4, !tbaa !254
  store i32 %i.av, ptr %.01618.i.i.ph, align 4, !tbaa !254
  store i32 0, ptr %.0819.i.i.ph, align 4, !tbaa !254
  %i.aw = getelementptr inbounds nuw i8, ptr %.01618.i.i.ph, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %.0819.i.i.ph, i64 4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !254
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !254
  store i32 0, ptr %i.ax, align 4, !tbaa !254
  %i.az = add i32 %.ph, 2                         ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0819.i.i.ph, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.01618.i.i.ph, i64 8
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i.i.preheader ], [ %i.az, %.lr.ph.i.i.prol ]
  %.unr132 = phi i32 [ %.ph, %.lr.ph.i.i.preheader ], [ %i.az, %.lr.ph.i.i.prol ]
  %.020.i.i.unr = phi i64 [ %.020.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.au, %.lr.ph.i.i.prol ]
  %.0819.i.i.unr = phi ptr [ %.0819.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ba, %.lr.ph.i.i.prol ]
  %.01618.i.i.unr = phi ptr [ %.01618.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bb, %.lr.ph.i.i.prol ]
  %i.bc = icmp eq i64 %.020.i.i.ph, 1
  br i1 %i.bc, label %_ZN5boost9container17deep_swap_alloc_nILm80ENS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EENS2_38disable_if_memtransfer_copy_assignableIT1_T2_vE4typeERT0_SB_mSC_m.exit.sink.split, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.bd = phi i32 [ %i.bp, %.lr.ph.i.i ], [ %.unr132, %.lr.ph.i.i.prol.loopexit ]
  %.020.i.i = phi i64 [ %i.bk, %.lr.ph.i.i ], [ %.020.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.0819.i.i = phi ptr [ %i.bq, %.lr.ph.i.i ], [ %.0819.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %.01618.i.i = phi ptr [ %i.br, %.lr.ph.i.i ], [ %.01618.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i) ]
  %i.be = load i32, ptr %.0819.i.i, align 4, !tbaa !254
  store i32 %i.be, ptr %.01618.i.i, align 4, !tbaa !254
  store i32 0, ptr %.0819.i.i, align 4, !tbaa !254
  %i.bf = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 4 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !254
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !254
  store i32 0, ptr %i.bg, align 4, !tbaa !254
  %i.bi = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %i.bk = add i64 %.020.i.i, -2                   ; 2 uses
  %i.bl = load i32, ptr %i.bi, align 4, !tbaa !254
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !254
  store i32 0, ptr %i.bi, align 4, !tbaa !254
  %i.bm = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 12
  %i.bn = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 12 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !254
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !254
  store i32 0, ptr %i.bn, align 4, !tbaa !254
  %i.bp = add i32 %i.bd, 4                        ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 16
  %.not.i.i.1 = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.1, label %_ZN5boost9container17deep_swap_alloc_nILm80ENS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EENS2_38disable_if_memtransfer_copy_assignableIT1_T2_vE4typeERT0_SB_mSC_m.exit.sink.split, label %.lr.ph.i.i, !llvm.loop !16596

bb.c:                                             ; preds = %bb.a
  %.not18.i10 = icmp eq i64 %i.d, 0
  br i1 %.not18.i10, label %._crit_edge.i16, label %.lr.ph.i11.preheader

.lr.ph.i11.preheader:                             ; preds = %bb.c
  %xtraiter = and i64 %i.d, 1
  %i.bs = icmp eq i64 %i.d, 1
  br i1 %i.bs, label %.lr.ph.i11.epil.preheader, label %.lr.ph.i11.preheader.new

.lr.ph.i11.preheader.new:                         ; preds = %.lr.ph.i11.preheader
  %unroll_iter = and i64 %i.d, -2
  br label %.lr.ph.i11

.lr.ph.i11:                                       ; preds = %.lr.ph.i11, %.lr.ph.i11.preheader.new
  %.01520.i13 = phi ptr [ %1, %.lr.ph.i11.preheader.new ], [ %i.ch, %.lr.ph.i11 ] ; 7 uses
  %.01619.i14 = phi ptr [ %0, %.lr.ph.i11.preheader.new ], [ %i.ci, %.lr.ph.i11 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i11.preheader.new ], [ %niter.next.1, %.lr.ph.i11 ]
  %i.bt = load i32, ptr %.01520.i13, align 4, !tbaa !254
  store i32 0, ptr %.01520.i13, align 4, !tbaa !254
  %i.bu = load i32, ptr %.01619.i14, align 4, !tbaa !254
  store i32 %i.bu, ptr %.01520.i13, align 4, !tbaa !254
  store i32 %i.bt, ptr %.01619.i14, align 4, !tbaa !254
  %i.bv = getelementptr inbounds nuw i8, ptr %.01520.i13, i64 4 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.01619.i14, i64 4 ; 2 uses
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !254
  store i32 0, ptr %i.bv, align 4, !tbaa !254
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !254
  store i32 %i.by, ptr %i.bv, align 4, !tbaa !254
  store i32 %i.bx, ptr %i.bw, align 4, !tbaa !254
  %i.bz = getelementptr inbounds nuw i8, ptr %.01520.i13, i64 8 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.01619.i14, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !254
  store i32 0, ptr %i.bz, align 4, !tbaa !254
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !254
  store i32 %i.cc, ptr %i.bz, align 4, !tbaa !254
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !254
  %i.cd = getelementptr inbounds nuw i8, ptr %.01520.i13, i64 12 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.01619.i14, i64 12 ; 2 uses
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !254
  store i32 0, ptr %i.cd, align 4, !tbaa !254
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !254
  store i32 %i.cg, ptr %i.cd, align 4, !tbaa !254
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !254
  %i.ch = getelementptr inbounds nuw i8, ptr %.01520.i13, i64 16 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.01619.i14, i64 16 ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i16.loopexit.unr-lcssa, label %.lr.ph.i11, !llvm.loop !16591

._crit_edge.i16.loopexit.unr-lcssa:               ; preds = %.lr.ph.i11
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i16, label %.lr.ph.i11.epil.preheader

.lr.ph.i11.epil.preheader:                        ; preds = %._crit_edge.i16.loopexit.unr-lcssa, %.lr.ph.i11.preheader
  %.01520.i13.epil.init = phi ptr [ %1, %.lr.ph.i11.preheader ], [ %i.ch, %._crit_edge.i16.loopexit.unr-lcssa ] ; 5 uses
  %.01619.i14.epil.init = phi ptr [ %0, %.lr.ph.i11.preheader ], [ %i.ci, %._crit_edge.i16.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod120 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod120)
  %i.cj = load i32, ptr %.01520.i13.epil.init, align 4, !tbaa !254
  store i32 0, ptr %.01520.i13.epil.init, align 4, !tbaa !254
  %i.ck = load i32, ptr %.01619.i14.epil.init, align 4, !tbaa !254
  store i32 %i.ck, ptr %.01520.i13.epil.init, align 4, !tbaa !254
  store i32 %i.cj, ptr %.01619.i14.epil.init, align 4, !tbaa !254
  %i.cl = getelementptr inbounds nuw i8, ptr %.01520.i13.epil.init, i64 4 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.01619.i14.epil.init, i64 4 ; 2 uses
  %i.cn = load i32, ptr %i.cl, align 4, !tbaa !254
  store i32 0, ptr %i.cl, align 4, !tbaa !254
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !254
  store i32 %i.co, ptr %i.cl, align 4, !tbaa !254
  store i32 %i.cn, ptr %i.cm, align 4, !tbaa !254
  %i.cp = getelementptr inbounds nuw i8, ptr %.01520.i13.epil.init, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.01619.i14.epil.init, i64 8
  br label %._crit_edge.i16

._crit_edge.i16:                                  ; preds = %.lr.ph.i11.epil.preheader, %._crit_edge.i16.loopexit.unr-lcssa, %bb.c
  %.016.lcssa.i17 = phi ptr [ %0, %bb.c ], [ %i.ci, %._crit_edge.i16.loopexit.unr-lcssa ], [ %i.cq, %.lr.ph.i11.epil.preheader ] ; 7 uses
  %.015.lcssa.i18 = phi ptr [ %1, %bb.c ], [ %i.ch, %._crit_edge.i16.loopexit.unr-lcssa ], [ %i.cp, %.lr.ph.i11.epil.preheader ] ; 7 uses
  %i.cr = sub nuw i64 %i.b, %i.d                  ; 10 uses
  %.not17.i.i19 = icmp eq i64 %i.cr, 0
  br i1 %.not17.i.i19, label %_ZN5boost9container17deep_swap_alloc_nILm80ENS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EENS2_38disable_if_memtransfer_copy_assignableIT1_T2_vE4typeERT0_SB_mSC_m.exit, label %.lr.ph.i.i20.preheader

.lr.ph.i.i20.preheader:                           ; preds = %._crit_edge.i16
  %.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255 ; 3 uses
  %min.iters.check = icmp ult i64 %i.cr, 8
  br i1 %min.iters.check, label %.lr.ph.i.i20.preheader110, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i20.preheader
  %i.cs = sub i64 %i.b, %i.d
  %i.ct = shl i64 %i.cs, 3                        ; 2 uses
  %i.cu = getelementptr i8, ptr %.015.lcssa.i18, i64 %i.ct
  %i.cv = getelementptr i8, ptr %.016.lcssa.i17, i64 %i.ct
  %bound0 = icmp ult ptr %.015.lcssa.i18, %i.cv
  %bound1 = icmp ult ptr %.016.lcssa.i17, %i.cu
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i20.preheader110, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cr, -4                      ; 3 uses
  %i.cw = and i64 %i.cr, 3
  %i.cx = shl i64 %n.vec, 3                       ; 2 uses
  %i.cy = getelementptr i8, ptr %.016.lcssa.i17, i64 %i.cx
  %i.cz = getelementptr i8, ptr %.015.lcssa.i18, i64 %i.cx
  %i.da = insertelement <2 x i32> <i32 poison, i32 0>, i32 %.pre, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.da, %vector.ph ], [ %i.dd, %vector.body ]
  %vec.phi54 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.de, %vector.body ]
  %i.db = shl i64 %index, 3                       ; 3 uses
  %i.dc = or disjoint i64 %i.db, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.016.lcssa.i17, i64 %i.db ; 2 uses
  %next.gep55 = getelementptr i8, ptr %.016.lcssa.i17, i64 %i.dc ; 2 uses
  %next.gep56 = getelementptr i8, ptr %.015.lcssa.i18, i64 %i.db ; 2 uses
  %next.gep58 = getelementptr i8, ptr %.015.lcssa.i18, i64 %i.dc ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep56) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep58) ]
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !254, !alias.scope !16604
  %wide.vec61 = load <4 x i32>, ptr %next.gep55, align 4, !tbaa !254, !alias.scope !16604
  store <4 x i32> %wide.vec, ptr %next.gep56, align 4, !tbaa !254, !alias.scope !16605, !noalias !16604
  store <4 x i32> %wide.vec61, ptr %next.gep58, align 4, !tbaa !254, !alias.scope !16605, !noalias !16604
  store <4 x i32> zeroinitializer, ptr %next.gep, align 4, !tbaa !254, !alias.scope !16604
  store <4 x i32> zeroinitializer, ptr %next.gep55, align 4, !tbaa !254, !alias.scope !16604
  %i.dd = add <2 x i32> %vec.phi, splat (i32 2)   ; 2 uses
  %i.de = add <2 x i32> %vec.phi54, splat (i32 2) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !16600

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.de, %i.dd
  %i.dg = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container17deep_swap_alloc_nILm80ENS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EENS2_38disable_if_memtransfer_copy_assignableIT1_T2_vE4typeERT0_SB_mSC_m.exit.sink.split, label %.lr.ph.i.i20.preheader110

.lr.ph.i.i20.preheader110:                        ; preds = %vector.memcheck, %.lr.ph.i.i20.preheader, %middle.block
  %.ph111 = phi i32 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.i.i20.preheader ], [ %i.dg, %middle.block ] ; 2 uses
  %.020.i.i21.ph = phi i64 [ %i.cr, %vector.memcheck ], [ %i.cr, %.lr.ph.i.i20.preheader ], [ %i.cw, %middle.block ] ; 4 uses
  %.0819.i.i22.ph = phi ptr [ %.016.lcssa.i17, %vector.memcheck ], [ %.016.lcssa.i17, %.lr.ph.i.i20.preheader ], [ %i.cy, %middle.block ] ; 5 uses
  %.01618.i.i23.ph = phi ptr [ %.015.lcssa.i18, %vector.memcheck ], [ %.015.lcssa.i18, %.lr.ph.i.i20.preheader ], [ %i.cz, %middle.block ] ; 5 uses
  %xtraiter121 = and i64 %.020.i.i21.ph, 1
  %lcmp.mod122.not = icmp eq i64 %xtraiter121, 0
  br i1 %lcmp.mod122.not, label %.lr.ph.i.i20.prol.loopexit, label %.lr.ph.i.i20.prol

.lr.ph.i.i20.prol:                                ; preds = %.lr.ph.i.i20.preheader110
  %i.dh = add nsw i64 %.020.i.i21.ph, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i23.ph) ]
  %i.di = load i32, ptr %.0819.i.i22.ph, align 4, !tbaa !254
  store i32 %i.di, ptr %.01618.i.i23.ph, align 4, !tbaa !254
  store i32 0, ptr %.0819.i.i22.ph, align 4, !tbaa !254
  %i.dj = getelementptr inbounds nuw i8, ptr %.01618.i.i23.ph, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %.0819.i.i22.ph, i64 4 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !254
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !254
  store i32 0, ptr %i.dk, align 4, !tbaa !254
  %i.dm = add i32 %.ph111, 2                      ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0819.i.i22.ph, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %.01618.i.i23.ph, i64 8
  br label %.lr.ph.i.i20.prol.loopexit

.lr.ph.i.i20.prol.loopexit:                       ; preds = %.lr.ph.i.i20.prol, %.lr.ph.i.i20.preheader110
  %.lcssa113.unr = phi i32 [ poison, %.lr.ph.i.i20.preheader110 ], [ %i.dm, %.lr.ph.i.i20.prol ]
  %.unr = phi i32 [ %.ph111, %.lr.ph.i.i20.preheader110 ], [ %i.dm, %.lr.ph.i.i20.prol ]
  %.020.i.i21.unr = phi i64 [ %.020.i.i21.ph, %.lr.ph.i.i20.preheader110 ], [ %i.dh, %.lr.ph.i.i20.prol ]
  %.0819.i.i22.unr = phi ptr [ %.0819.i.i22.ph, %.lr.ph.i.i20.preheader110 ], [ %i.dn, %.lr.ph.i.i20.prol ]
  %.01618.i.i23.unr = phi ptr [ %.01618.i.i23.ph, %.lr.ph.i.i20.preheader110 ], [ %i.do, %.lr.ph.i.i20.prol ]
  %i.dp = icmp eq i64 %.020.i.i21.ph, 1
  br i1 %i.dp, label %_ZN5boost9container17deep_swap_alloc_nILm80ENS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EENS2_38disable_if_memtransfer_copy_assignableIT1_T2_vE4typeERT0_SB_mSC_m.exit.sink.split, label %.lr.ph.i.i20

.lr.ph.i.i20:                                     ; preds = %.lr.ph.i.i20.prol.loopexit, %.lr.ph.i.i20
  %i.dq = phi i32 [ %i.ec, %.lr.ph.i.i20 ], [ %.unr, %.lr.ph.i.i20.prol.loopexit ]
  %.020.i.i21 = phi i64 [ %i.dx, %.lr.ph.i.i20 ], [ %.020.i.i21.unr, %.lr.ph.i.i20.prol.loopexit ]
  %.0819.i.i22 = phi ptr [ %i.ed, %.lr.ph.i.i20 ], [ %.0819.i.i22.unr, %.lr.ph.i.i20.prol.loopexit ] ; 6 uses
  %.01618.i.i23 = phi ptr [ %i.ee, %.lr.ph.i.i20 ], [ %.01618.i.i23.unr, %.lr.ph.i.i20.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i23) ]
  %i.dr = load i32, ptr %.0819.i.i22, align 4, !tbaa !254
  store i32 %i.dr, ptr %.01618.i.i23, align 4, !tbaa !254
  store i32 0, ptr %.0819.i.i22, align 4, !tbaa !254
  %i.ds = getelementptr inbounds nuw i8, ptr %.01618.i.i23, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %.0819.i.i22, i64 4 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !254
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !254
  store i32 0, ptr %i.dt, align 4, !tbaa !254
  %i.dv = getelementptr inbounds nuw i8, ptr %.0819.i.i22, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.01618.i.i23, i64 8
  %i.dx = add i64 %.020.i.i21, -2                 ; 2 uses
  %i.dy = load i32, ptr %i.dv, align 4, !tbaa !254
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !254
  store i32 0, ptr %i.dv, align 4, !tbaa !254
  %i.dz = getelementptr inbounds nuw i8, ptr %.01618.i.i23, i64 12
  %i.ea = getelementptr inbounds nuw i8, ptr %.0819.i.i22, i64 12 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !254
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !254
  store i32 0, ptr %i.ea, align 4, !tbaa !254
  %i.ec = add i32 %i.dq, 4                        ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.0819.i.i22, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %.01618.i.i23, i64 16
  %.not.i.i24.1 = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i24.1, label %_ZN5boost9container17deep_swap_alloc_nILm80ENS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EENS2_38disable_if_memtransfer_copy_assignableIT1_T2_vE4typeERT0_SB_mSC_m.exit.sink.split, label %.lr.ph.i.i20, !llvm.loop !16601

_ZN5boost9container17deep_swap_alloc_nILm80ENS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EENS2_38disable_if_memtransfer_copy_assignableIT1_T2_vE4typeERT0_SB_mSC_m.exit.sink.split: ; preds = %.lr.ph.i.i20.prol.loopexit, %.lr.ph.i.i20, %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %middle.block99
  %.sink46 = phi i64 [ %i.ae, %middle.block99 ], [ %i.cr, %middle.block ], [ %i.ae, %.lr.ph.i.i.prol.loopexit ], [ %i.ae, %.lr.ph.i.i ], [ %i.cr, %.lr.ph.i.i20 ], [ %i.cr, %.lr.ph.i.i20.prol.loopexit ]
  %.lcssa42.sink = phi i32 [ %i.at, %middle.block99 ], [ %i.dg, %middle.block ], [ %i.bp, %.lr.ph.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.lcssa113.unr, %.lr.ph.i.i20.prol.loopexit ], [ %i.ec, %.lr.ph.i.i20 ]
  %i.ef = trunc i64 %.sink46 to i32
  %i.eg = shl i32 %i.ef, 1
  %i.eh = sub i32 %.lcssa42.sink, %i.eg
  store i32 %i.eh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container17deep_swap_alloc_nILm80ENS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EENS2_38disable_if_memtransfer_copy_assignableIT1_T2_vE4typeERT0_SB_mSC_m.exit

_ZN5boost9container17deep_swap_alloc_nILm80ENS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EENS2_38disable_if_memtransfer_copy_assignableIT1_T2_vE4typeERT0_SB_mSC_m.exit: ; preds = %_ZN5boost9container17deep_swap_alloc_nILm80ENS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EENS2_38disable_if_memtransfer_copy_assignableIT1_T2_vE4typeERT0_SB_mSC_m.exit.sink.split, %._crit_edge.i16
  store i64 %i.d, ptr %i.a, align 8, !tbaa !226
  store i64 %i.b, ptr %i.c, align 8, !tbaa !226
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl30flat_tree_adopt_sequence_equalINS0_13static_vectorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSF_T0_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::movelib::adaptive_xbuf.86", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !319  ; 2 uses
  %.not3.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not3.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE5clearEv.exit.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.a
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.c = trunc i64 %i.b to i32
  %i.d = shl i32 %i.c, 1
  %i.e = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i, %i.d
  store i32 %i.e, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE5clearEv.exit.i

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE5clearEv.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i, %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !319
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !319
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_NS0_9iter_sizeISI_E4typeET0_RT1_(ptr noundef nonnull align 8 dereferenceable(88) %1, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE5clearEv.exit.i
  %i.i = load i64, ptr %i.h, align 8, !tbaa !266  ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_13static_vectorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSF_T0_.exit, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.b
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.j = trunc i64 %i.i to i32
  %i.k = shl i32 %i.j, 1
  %i.l = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i, %i.k
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_13static_vectorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSF_T0_.exit

bb.c:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE5clearEv.exit.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load i64, ptr %i.h, align 8, !tbaa !266  ; 2 uses
  %.not.i.i6.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i6.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit9.i.i, label %.preheader.i.i.i7.i.i

.preheader.i.i.i7.i.i:                            ; preds = %bb.c
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i8.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.o = trunc i64 %i.n to i32
  %i.p = shl i32 %i.o, 1
  %i.q = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i8.i.i, %i.p
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit9.i.i

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit9.i.i: ; preds = %.preheader.i.i.i7.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.m

_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_13static_vectorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSF_T0_.exit: ; preds = %bb.b, %.preheader.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.not.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i, label %_ZN5boost9container13static_vectorISt4pairINS0_4test24movable_and_copyable_intES4_ELm10EvEaSEOS6_.exit, label %bb.d, !prof !225

bb.d:                                             ; preds = %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_13static_vectorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSF_T0_.exit
  %i.r = load i64, ptr %i.a, align 8, !tbaa !319  ; 13 uses
  %i.s = load i64, ptr %i.f, align 8, !tbaa !319  ; 14 uses
  %i.t = icmp ult i64 %i.r, %i.s
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not7.i.i.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not7.i.i.i.i.i, label %_ZN5boost9container18move_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.e
  %min.iters.check27 = icmp ult i64 %i.r, 6
  br i1 %min.iters.check27, label %.lr.ph.i.i.i.i.i.preheader99, label %vector.memcheck28

vector.memcheck28:                                ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.u = shl i64 %i.r, 3                          ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 %i.u
  %i.w = getelementptr i8, ptr %1, i64 %i.u
  %bound029 = icmp ult ptr %0, %i.w
  %bound130 = icmp ult ptr %1, %i.v
  %found.conflict31 = and i1 %bound029, %bound130
  br i1 %found.conflict31, label %.lr.ph.i.i.i.i.i.preheader99, label %vector.ph32

vector.ph32:                                      ; preds = %vector.memcheck28
  %n.vec33 = and i64 %i.r, -2                     ; 3 uses
  %i.x = shl i64 %n.vec33, 3                      ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 %i.x       ; 2 uses
  %i.z = getelementptr i8, ptr %1, i64 %i.x       ; 2 uses
  %i.aa = and i64 %i.r, 1
  br label %vector.body34

vector.body34:                                    ; preds = %vector.body34, %vector.ph32
  %index35 = phi i64 [ 0, %vector.ph32 ], [ %index.next42, %vector.body34 ] ; 2 uses
  %i.ab = shl i64 %index35, 3                     ; 2 uses
  %next.gep36 = getelementptr i8, ptr %0, i64 %i.ab
  %next.gep37 = getelementptr i8, ptr %1, i64 %i.ab ; 2 uses
  %wide.vec38 = load <4 x i32>, ptr %next.gep37, align 8, !tbaa !254, !alias.scope !16622
  store <4 x i32> %wide.vec38, ptr %next.gep36, align 8, !tbaa !254, !alias.scope !16623, !noalias !16622
  store <4 x i32> zeroinitializer, ptr %next.gep37, align 8, !tbaa !254, !alias.scope !16622
  %index.next42 = add nuw i64 %index35, 2         ; 2 uses
  %i.ac = icmp eq i64 %index.next42, %n.vec33
  br i1 %i.ac, label %middle.block43, label %vector.body34, !llvm.loop !16609

middle.block43:                                   ; preds = %vector.body34
  %cmp.n44 = icmp eq i64 %i.r, %n.vec33
  br i1 %cmp.n44, label %_ZN5boost9container18move_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader99

.lr.ph.i.i.i.i.i.preheader99:                     ; preds = %vector.memcheck28, %.lr.ph.i.i.i.i.i.preheader, %middle.block43
  %.ph100 = phi ptr [ %0, %vector.memcheck28 ], [ %0, %.lr.ph.i.i.i.i.i.preheader ], [ %i.y, %middle.block43 ] ; 4 uses
  %.09.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck28 ], [ %1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.z, %middle.block43 ] ; 5 uses
  %.068.i.i.i.i.i.ph = phi i64 [ %i.r, %vector.memcheck28 ], [ %i.r, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aa, %middle.block43 ] ; 4 uses
  %xtraiter104 = and i64 %.068.i.i.i.i.i.ph, 1
  %lcmp.mod105.not = icmp eq i64 %xtraiter104, 0
  br i1 %lcmp.mod105.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader99
  %i.ad = add nsw i64 %.068.i.i.i.i.i.ph, -1
  %i.ae = load i32, ptr %.09.i.i.i.i.i.ph, align 4, !tbaa !254
  store i32 %i.ae, ptr %.ph100, align 4, !tbaa !254
  store i32 0, ptr %.09.i.i.i.i.i.ph, align 4, !tbaa !254
  %i.af = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.ph, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.ph100, i64 4
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !254
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !254
  store i32 0, ptr %i.af, align 4, !tbaa !254
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.ph, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.ph100, i64 8 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader99
  %.lcssa102.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.preheader99 ], [ %i.ai, %.lr.ph.i.i.i.i.i.prol ]
  %.lcssa101.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.preheader99 ], [ %i.aj, %.lr.ph.i.i.i.i.i.prol ]
  %.unr = phi ptr [ %.ph100, %.lr.ph.i.i.i.i.i.preheader99 ], [ %i.aj, %.lr.ph.i.i.i.i.i.prol ]
  %.09.i.i.i.i.i.unr = phi ptr [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader99 ], [ %i.ai, %.lr.ph.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.unr = phi i64 [ %.068.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader99 ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol ]
  %i.ak = icmp eq i64 %.068.i.i.i.i.i.ph, 1
  br i1 %i.ak, label %_ZN5boost9container18move_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %i.al = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.09.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.068.i.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i ], [ %.068.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.am = load i32, ptr %.09.i.i.i.i.i, align 4, !tbaa !254
  store i32 %i.am, ptr %i.al, align 4, !tbaa !254
  store i32 0, ptr %.09.i.i.i.i.i, align 4, !tbaa !254
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !254
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !254
  store i32 0, ptr %i.an, align 4, !tbaa !254
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.as = add i64 %.068.i.i.i.i.i, -2             ; 2 uses
  %i.at = load i32, ptr %i.aq, align 4, !tbaa !254
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !254
  store i32 0, ptr %i.aq, align 4, !tbaa !254
  %i.au = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 12 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !254
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !254
  store i32 0, ptr %i.au, align 4, !tbaa !254
  %i.ax = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %.not.i.i.i.i.i.1 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i.i.i.1, label %_ZN5boost9container18move_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !16610

_ZN5boost9container18move_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %middle.block43, %bb.e
  %.0.i.i.i.i = phi ptr [ %0, %bb.e ], [ %i.y, %middle.block43 ], [ %.lcssa101.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ay, %.lr.ph.i.i.i.i.i ] ; 8 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %1, %bb.e ], [ %i.z, %middle.block43 ], [ %.lcssa102.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ax, %.lr.ph.i.i.i.i.i ] ; 8 uses
  %i.az = sub i64 %i.s, %i.r                      ; 6 uses
  %.pre.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255 ; 3 uses
  %min.iters.check61 = icmp ult i64 %i.az, 14
  br i1 %min.iters.check61, label %.lr.ph.i14.i.i.i.i.preheader, label %vector.memcheck62

vector.memcheck62:                                ; preds = %_ZN5boost9container18move_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i
  %i.ba = sub i64 %i.s, %i.r
  %i.bb = shl i64 %i.ba, 3                        ; 2 uses
  %i.bc = getelementptr i8, ptr %.0.i.i.i.i, i64 %i.bb ; 2 uses
  %i.bd = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 %i.bb ; 2 uses
  %bound063 = icmp ult ptr %.0.i.i.i.i, %i.bd
  %bound164 = icmp ult ptr %.0.lcssa.i.i.i.i.i, %i.bc
  %found.conflict65 = and i1 %bound063, %bound164
  %bound066 = icmp ult ptr %.0.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound167 = icmp ugt ptr %i.bc, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict68 = and i1 %bound066, %bound167
  %conflict.rdx = or i1 %found.conflict65, %found.conflict68
  %bound069 = icmp ult ptr %.0.lcssa.i.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound170 = icmp ugt ptr %i.bd, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict71 = and i1 %bound069, %bound170
  %conflict.rdx72 = or i1 %conflict.rdx, %found.conflict71
  br i1 %conflict.rdx72, label %.lr.ph.i14.i.i.i.i.preheader, label %vector.ph73

vector.ph73:                                      ; preds = %vector.memcheck62
  %n.vec74 = and i64 %i.az, -4                    ; 3 uses
  %i.be = and i64 %i.az, 3
  %i.bf = shl i64 %n.vec74, 3                     ; 2 uses
  %i.bg = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 %i.bf
  %i.bh = getelementptr i8, ptr %.0.i.i.i.i, i64 %i.bf
  %i.bi = insertelement <2 x i32> <i32 poison, i32 0>, i32 %.pre.i.i.i, i64 0
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph73
  %index76 = phi i64 [ 0, %vector.ph73 ], [ %index.next92, %vector.body75 ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.bi, %vector.ph73 ], [ %i.bl, %vector.body75 ]
  %vec.phi77 = phi <2 x i32> [ zeroinitializer, %vector.ph73 ], [ %i.bm, %vector.body75 ]
  %i.bj = shl i64 %index76, 3                     ; 3 uses
  %i.bk = or disjoint i64 %i.bj, 16               ; 2 uses
  %next.gep78 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 %i.bj ; 2 uses
  %next.gep79 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 %i.bk ; 2 uses
  %next.gep80 = getelementptr i8, ptr %.0.i.i.i.i, i64 %i.bj ; 2 uses
  %next.gep82 = getelementptr i8, ptr %.0.i.i.i.i, i64 %i.bk ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep80) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep82) ]
  %wide.vec84 = load <4 x i32>, ptr %next.gep78, align 4, !tbaa !254, !alias.scope !16624, !noalias !16625
  %wide.vec87 = load <4 x i32>, ptr %next.gep79, align 4, !tbaa !254, !alias.scope !16624, !noalias !16625
  store <4 x i32> %wide.vec84, ptr %next.gep80, align 4, !tbaa !254, !alias.scope !16626, !noalias !16627
  store <4 x i32> %wide.vec87, ptr %next.gep82, align 4, !tbaa !254, !alias.scope !16626, !noalias !16627
  store <4 x i32> zeroinitializer, ptr %next.gep78, align 4, !tbaa !254, !alias.scope !16624, !noalias !16625
  store <4 x i32> zeroinitializer, ptr %next.gep79, align 4, !tbaa !254, !alias.scope !16624, !noalias !16625
  %i.bl = add <2 x i32> %vec.phi, splat (i32 2)   ; 2 uses
  %i.bm = add <2 x i32> %vec.phi77, splat (i32 2) ; 2 uses
  %index.next92 = add nuw i64 %index76, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next92, %n.vec74
  br i1 %i.bn, label %middle.block93, label %vector.body75, !llvm.loop !16615

middle.block93:                                   ; preds = %vector.body75
  %bin.rdx = add <2 x i32> %i.bm, %i.bl
  %i.bo = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !alias.scope !16625
  %cmp.n94 = icmp eq i64 %i.az, %n.vec74
  br i1 %cmp.n94, label %_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EEvRT_T0_mT1_m.exit.i.i.i, label %.lr.ph.i14.i.i.i.i.preheader

.lr.ph.i14.i.i.i.i.preheader:                     ; preds = %vector.memcheck62, %_ZN5boost9container18move_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i, %middle.block93
  %.ph = phi i32 [ %.pre.i.i.i, %vector.memcheck62 ], [ %.pre.i.i.i, %_ZN5boost9container18move_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i ], [ %i.bo, %middle.block93 ] ; 2 uses
  %.020.i.i.i.i.i.ph = phi i64 [ %i.az, %vector.memcheck62 ], [ %i.az, %_ZN5boost9container18move_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i ], [ %i.be, %middle.block93 ] ; 4 uses
  %.0819.i.i.i.i.i.ph = phi ptr [ %.0.lcssa.i.i.i.i.i, %vector.memcheck62 ], [ %.0.lcssa.i.i.i.i.i, %_ZN5boost9container18move_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i ], [ %i.bg, %middle.block93 ] ; 5 uses
  %.01618.i.i.i.i.i.ph = phi ptr [ %.0.i.i.i.i, %vector.memcheck62 ], [ %.0.i.i.i.i, %_ZN5boost9container18move_n_source_destIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i.i.i.i ], [ %i.bh, %middle.block93 ] ; 5 uses
  %xtraiter106 = and i64 %.020.i.i.i.i.i.ph, 1
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %.lr.ph.i14.i.i.i.i.prol.loopexit, label %.lr.ph.i14.i.i.i.i.prol

.lr.ph.i14.i.i.i.i.prol:                          ; preds = %.lr.ph.i14.i.i.i.i.preheader
  %i.bp = add nsw i64 %.020.i.i.i.i.i.ph, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.i.ph) ]
  %i.bq = load i32, ptr %.0819.i.i.i.i.i.ph, align 4, !tbaa !254
  store i32 %i.bq, ptr %.01618.i.i.i.i.i.ph, align 4, !tbaa !254
  store i32 0, ptr %.0819.i.i.i.i.i.ph, align 4, !tbaa !254
  %i.br = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.ph, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.ph, i64 4 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !254
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !254
  store i32 0, ptr %i.bs, align 4, !tbaa !254
  %i.bu = add i32 %.ph, 2                         ; 2 uses
  store i32 %i.bu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.bv = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.ph, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.ph, i64 8
  br label %.lr.ph.i14.i.i.i.i.prol.loopexit

.lr.ph.i14.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i14.i.i.i.i.prol, %.lr.ph.i14.i.i.i.i.preheader
  %.unr108 = phi i32 [ %.ph, %.lr.ph.i14.i.i.i.i.preheader ], [ %i.bu, %.lr.ph.i14.i.i.i.i.prol ]
  %.020.i.i.i.i.i.unr = phi i64 [ %.020.i.i.i.i.i.ph, %.lr.ph.i14.i.i.i.i.preheader ], [ %i.bp, %.lr.ph.i14.i.i.i.i.prol ]
  %.0819.i.i.i.i.i.unr = phi ptr [ %.0819.i.i.i.i.i.ph, %.lr.ph.i14.i.i.i.i.preheader ], [ %i.bv, %.lr.ph.i14.i.i.i.i.prol ]
  %.01618.i.i.i.i.i.unr = phi ptr [ %.01618.i.i.i.i.i.ph, %.lr.ph.i14.i.i.i.i.preheader ], [ %i.bw, %.lr.ph.i14.i.i.i.i.prol ]
  %i.bx = icmp eq i64 %.020.i.i.i.i.i.ph, 1
  br i1 %i.bx, label %_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EEvRT_T0_mT1_m.exit.i.i.i, label %.lr.ph.i14.i.i.i.i

.lr.ph.i14.i.i.i.i:                               ; preds = %.lr.ph.i14.i.i.i.i.prol.loopexit, %.lr.ph.i14.i.i.i.i
  %i.by = phi i32 [ %i.cl, %.lr.ph.i14.i.i.i.i ], [ %.unr108, %.lr.ph.i14.i.i.i.i.prol.loopexit ] ; 2 uses
  %.020.i.i.i.i.i = phi i64 [ %i.cg, %.lr.ph.i14.i.i.i.i ], [ %.020.i.i.i.i.i.unr, %.lr.ph.i14.i.i.i.i.prol.loopexit ]
  %.0819.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i14.i.i.i.i ], [ %.0819.i.i.i.i.i.unr, %.lr.ph.i14.i.i.i.i.prol.loopexit ] ; 6 uses
  %.01618.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i14.i.i.i.i ], [ %.01618.i.i.i.i.i.unr, %.lr.ph.i14.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.i) ]
  %i.bz = load i32, ptr %.0819.i.i.i.i.i, align 4, !tbaa !254
  store i32 %i.bz, ptr %.01618.i.i.i.i.i, align 4, !tbaa !254
  store i32 0, ptr %.0819.i.i.i.i.i, align 4, !tbaa !254
  %i.ca = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 4
  %i.cb = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i, i64 4 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !254
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !254
  store i32 0, ptr %i.cb, align 4, !tbaa !254
  %i.cd = add i32 %i.by, 2
  store i32 %i.cd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.ce = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 8
  %i.cg = add i64 %.020.i.i.i.i.i, -2             ; 2 uses
  %i.ch = load i32, ptr %i.ce, align 4, !tbaa !254
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !254
  store i32 0, ptr %i.ce, align 4, !tbaa !254
  %i.ci = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 12
  %i.cj = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i, i64 12 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !254
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !254
  store i32 0, ptr %i.cj, align 4, !tbaa !254
  %i.cl = add i32 %i.by, 4                        ; 2 uses
  store i32 %i.cl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.cm = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 16
  %.not.i15.i.i.i.i.1 = icmp eq i64 %i.cg, 0
  br i1 %.not.i15.i.i.i.i.1, label %_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EEvRT_T0_mT1_m.exit.i.i.i, label %.lr.ph.i14.i.i.i.i, !llvm.loop !16616

bb.f:                                             ; preds = %bb.d
  %.not8.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not8.i.i.i.i.i, label %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i, label %.lr.ph.i17.i.i.i.i.preheader

.lr.ph.i17.i.i.i.i.preheader:                     ; preds = %bb.f
  %min.iters.check = icmp ult i64 %i.s, 6
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.preheader103, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.preheader
  %i.co = shl i64 %i.s, 3                         ; 2 uses
  %i.cp = getelementptr i8, ptr %0, i64 %i.co
  %i.cq = getelementptr i8, ptr %1, i64 %i.co
  %bound0 = icmp ult ptr %0, %i.cq
  %bound1 = icmp ult ptr %1, %i.cp
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.preheader103, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.s, -2                       ; 3 uses
  %i.cr = shl i64 %n.vec, 3                       ; 2 uses
  %i.cs = getelementptr i8, ptr %0, i64 %i.cr
  %i.ct = and i64 %i.s, 1
  %i.cu = getelementptr i8, ptr %1, i64 %i.cr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cv = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.cv
  %next.gep17 = getelementptr i8, ptr %1, i64 %i.cv ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep17, align 8, !tbaa !254, !alias.scope !16628
  store <4 x i32> %wide.vec, ptr %next.gep, align 8, !tbaa !254, !alias.scope !16629, !noalias !16628
  store <4 x i32> zeroinitializer, ptr %next.gep17, align 8, !tbaa !254, !alias.scope !16628
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !16620

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i, label %.lr.ph.i17.i.i.i.i.preheader103

.lr.ph.i17.i.i.i.i.preheader103:                  ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i17.i.i.i.i.preheader ], [ %i.cs, %middle.block ] ; 4 uses
  %.0610.i.i.i.i.i.ph = phi i64 [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i17.i.i.i.i.preheader ], [ %i.ct, %middle.block ] ; 4 uses
  %.079.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i17.i.i.i.i.preheader ], [ %i.cu, %middle.block ] ; 5 uses
  %xtraiter = and i64 %.0610.i.i.i.i.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i17.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.prol:                          ; preds = %.lr.ph.i17.i.i.i.i.preheader103
  %i.cx = add nsw i64 %.0610.i.i.i.i.i.ph, -1
  %i.cy = load i32, ptr %.079.i.i.i.i.i.ph, align 4, !tbaa !254
  store i32 %i.cy, ptr %.011.i.i.i.i.i.ph, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i.i.i.ph, align 4, !tbaa !254
  %i.cz = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.ph, i64 4 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.ph, i64 4
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !254
  store i32 %i.db, ptr %i.da, align 4, !tbaa !254
  store i32 0, ptr %i.cz, align 4, !tbaa !254
  %i.dc = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i.ph, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.ph, i64 8
  br label %.lr.ph.i17.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i17.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.preheader103
  %.011.i.i.i.i.i.unr = phi ptr [ %.011.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.preheader103 ], [ %i.dd, %.lr.ph.i17.i.i.i.i.prol ]
  %.0610.i.i.i.i.i.unr = phi i64 [ %.0610.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.preheader103 ], [ %i.cx, %.lr.ph.i17.i.i.i.i.prol ]
  %.079.i.i.i.i.i.unr = phi ptr [ %.079.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.preheader103 ], [ %i.dc, %.lr.ph.i17.i.i.i.i.prol ]
  %i.de = icmp eq i64 %.0610.i.i.i.i.i.ph, 1
  br i1 %i.de, label %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i, label %.lr.ph.i17.i.i.i.i

.lr.ph.i17.i.i.i.i:                               ; preds = %.lr.ph.i17.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.dr, %.lr.ph.i17.i.i.i.i ], [ %.011.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.prol.loopexit ] ; 5 uses
  %.0610.i.i.i.i.i = phi i64 [ %i.dl, %.lr.ph.i17.i.i.i.i ], [ %.0610.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.prol.loopexit ]
  %.079.i.i.i.i.i = phi ptr [ %i.dq, %.lr.ph.i17.i.i.i.i ], [ %.079.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.df = load i32, ptr %.079.i.i.i.i.i, align 4, !tbaa !254
  store i32 %i.df, ptr %.011.i.i.i.i.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i.i.i, align 4, !tbaa !254
  %i.dg = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 4 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 4
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !254
  store i32 %i.di, ptr %i.dh, align 4, !tbaa !254
  store i32 0, ptr %i.dg, align 4, !tbaa !254
  %i.dj = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %i.dl = add i64 %.0610.i.i.i.i.i, -2            ; 2 uses
  %i.dm = load i32, ptr %i.dj, align 4, !tbaa !254
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !254
  store i32 0, ptr %i.dj, align 4, !tbaa !254
  %i.dn = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 12 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 12
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !254
  store i32 %i.dp, ptr %i.do, align 4, !tbaa !254
  store i32 0, ptr %i.dn, align 4, !tbaa !254
  %i.dq = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %.not.i18.i.i.i.i.1 = icmp eq i64 %i.dl, 0
  br i1 %.not.i18.i.i.i.i.1, label %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i, label %.lr.ph.i17.i.i.i.i, !llvm.loop !16621

_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i: ; preds = %.lr.ph.i17.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i, %middle.block, %bb.f
  %.not3.i.i.i.i.i = icmp eq i64 %i.r, %i.s
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EEvRT_T0_mT1_m.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i
  %.neg.i.i.i.i = sub i64 %i.s, %i.r
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i4 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %.neg21.i.i.i.i = trunc i64 %.neg.i.i.i.i to i32
  %.neg22.i.i.i.i = shl i32 %.neg21.i.i.i.i, 1
  %i.ds = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i4, %.neg22.i.i.i.i
  store i32 %i.ds, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EEvRT_T0_mT1_m.exit.i.i.i

_ZN5boost9container25move_assign_range_alloc_nINS0_3dtl24static_storage_allocatorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ELm0ELb1EEEPS7_S9_EEvRT_T0_mT1_m.exit.i.i.i: ; preds = %.lr.ph.i14.i.i.i.i.prol.loopexit, %.lr.ph.i14.i.i.i.i, %middle.block93, %.lr.ph.preheader.i.i.i.i.i, %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i.i.i.i
  store i64 %i.s, ptr %i.a, align 8, !tbaa !317
end_hunk_2
