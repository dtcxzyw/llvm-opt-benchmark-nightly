Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/sigh_mixin?download=true
inline.NumInlined: 12652
inline.NumDeleted: 4104
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZNSt6vectorIPN4entt6entityEN4test18throwing_allocatorIS2_EEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S6_EEmRKS2_:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 48
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !227
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !227
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 56
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !227
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !227
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i, i64 64 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 64
  %i.au = icmp eq ptr %i.as, %i.e
  br i1 %i.au, label %_ZSt22__uninitialized_move_aIPPN4entt6entityES3_N4test18throwing_allocatorIS2_EEET0_T_S8_S7_RT1_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !1843

_ZSt22__uninitialized_move_aIPPN4entt6entityES3_N4test18throwing_allocatorIS2_EEET0_T_S8_S7_RT1_.exit.loopexit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !616
  br label %_ZSt22__uninitialized_move_aIPPN4entt6entityES3_N4test18throwing_allocatorIS2_EEET0_T_S8_S7_RT1_.exit

_ZSt22__uninitialized_move_aIPPN4entt6entityES3_N4test18throwing_allocatorIS2_EEET0_T_S8_S7_RT1_.exit: ; preds = %_ZSt22__uninitialized_move_aIPPN4entt6entityES3_N4test18throwing_allocatorIS2_EEET0_T_S8_S7_RT1_.exit.loopexit, %bb.d
  %i.av = phi ptr [ %.pre, %_ZSt22__uninitialized_move_aIPPN4entt6entityES3_N4test18throwing_allocatorIS2_EEET0_T_S8_S7_RT1_.exit.loopexit ], [ %i.e, %bb.d ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %2
  store ptr %i.aw, ptr %i.d, align 8, !tbaa !616
  %i.ax = ptrtoint ptr %i.o to i64
  %i.ay = sub i64 %i.ax, %i.k                     ; 3 uses
  %i.az = ashr exact i64 %i.ay, 3                 ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 1
  br i1 %i.ba, label %bb.e, label %bb.f, !prof !325

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPPN4entt6entityES3_N4test18throwing_allocatorIS2_EEET0_T_S8_S7_RT1_.exit
  %i.bb = sub nsw i64 0, %i.az
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.bb
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bc, ptr align 8 %1, i64 %i.ay, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPPN4entt6entityES3_N4test18throwing_allocatorIS2_EEET0_T_S8_S7_RT1_.exit
  %i.bd = icmp eq i64 %i.ay, 8
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.bf = load ptr, ptr %1, align 8, !tbaa !227
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !227
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.bh = add nsw i64 %.idx, -8                   ; 2 uses
  %i.bi = lshr exact i64 %i.bh, 3
  %i.bj = add nuw nsw i64 %i.bi, 1
  %xtraiter149 = and i64 %i.bj, 7                 ; 2 uses
  %lcmp.mod150.not = icmp eq i64 %xtraiter149, 0
  br i1 %lcmp.mod150.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %bb.h, %.lr.ph.i.i.i.prol
  %.07.i.i.i.prol = phi ptr [ %i.bk, %.lr.ph.i.i.i.prol ], [ %1, %bb.h ] ; 2 uses
  %prol.iter151 = phi i64 [ %prol.iter151.next, %.lr.ph.i.i.i.prol ], [ 0, %bb.h ]
  store ptr %i.j, ptr %.07.i.i.i.prol, align 8, !tbaa !227
  %i.bk = getelementptr inbounds nuw i8, ptr %.07.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter151.next = add i64 %prol.iter151, 1   ; 2 uses
  %prol.iter151.cmp.not = icmp eq i64 %prol.iter151.next, %xtraiter149
  br i1 %prol.iter151.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1844

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %bb.h
  %.07.i.i.i.unr = phi ptr [ %1, %bb.h ], [ %i.bk, %.lr.ph.i.i.i.prol ]
  %i.bl = icmp ult i64 %i.bh, 56
  br i1 %i.bl, label %_ZSt4fillIPPN4entt6entityES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i ], [ %.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  store ptr %i.j, ptr %.07.i.i.i, align 8, !tbaa !227
  %i.bm = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8
  store ptr %i.j, ptr %i.bm, align 8, !tbaa !227
  %i.bn = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 16
  store ptr %i.j, ptr %i.bn, align 8, !tbaa !227
  %i.bo = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 24
  store ptr %i.j, ptr %i.bo, align 8, !tbaa !227
  %i.bp = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 32
  store ptr %i.j, ptr %i.bp, align 8, !tbaa !227
  %i.bq = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 40
  store ptr %i.j, ptr %i.bq, align 8, !tbaa !227
  %i.br = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 48
  store ptr %i.j, ptr %i.br, align 8, !tbaa !227
  %i.bs = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 56
  store ptr %i.j, ptr %i.bs, align 8, !tbaa !227
  %i.bt = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.7 = icmp eq ptr %i.bt, %i.bg
  br i1 %.not.i.i.i.7, label %_ZSt4fillIPPN4entt6entityES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !26

bb.i:                                             ; preds = %bb.c
  %i.bu = sub nuw i64 %2, %i.m                    ; 6 uses
  %.not8.i = icmp eq i64 %i.bu, 0
  br i1 %.not8.i, label %_ZSt24__uninitialized_fill_n_aIPPN4entt6entityEmS2_N4test18throwing_allocatorIS2_EEET_S7_T0_RKT1_RT2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.i
  %min.iters.check = icmp ult i64 %i.bu, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader147, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.bu, -4                      ; 3 uses
  %i.bv = shl i64 %n.vec, 3
  %i.bw = getelementptr i8, ptr %i.e, i64 %i.bv   ; 2 uses
  %i.bx = and i64 %i.bu, 3
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.j, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.by = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.e, i64 %i.by ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8, !tbaa !227
  store <2 x ptr> %broadcast.splat, ptr %i.bz, align 8, !tbaa !227
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !1845

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPPN4entt6entityEmS2_N4test18throwing_allocatorIS2_EEET_S7_T0_RKT1_RT2_.exit, label %.lr.ph.i.preheader147

.lr.ph.i.preheader147:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.010.i.ph = phi ptr [ %i.e, %.lr.ph.i.preheader ], [ %i.bw, %middle.block ]
  %.079.i.ph = phi i64 [ %i.bu, %.lr.ph.i.preheader ], [ %i.bx, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader147, %.lr.ph.i
  %.010.i = phi ptr [ %i.cc, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader147 ] ; 2 uses
  %.079.i = phi i64 [ %i.cb, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader147 ]
  store ptr %i.j, ptr %.010.i, align 8, !tbaa !227
  %i.cb = add i64 %.079.i, -1                     ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.010.i, i64 8 ; 2 uses
  %.not.i = icmp eq i64 %i.cb, 0
  br i1 %.not.i, label %_ZSt24__uninitialized_fill_n_aIPPN4entt6entityEmS2_N4test18throwing_allocatorIS2_EEET_S7_T0_RKT1_RT2_.exit, label %.lr.ph.i, !llvm.loop !1846

_ZSt24__uninitialized_fill_n_aIPPN4entt6entityEmS2_N4test18throwing_allocatorIS2_EEET_S7_T0_RKT1_RT2_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.i
  %i.cd = phi ptr [ %i.e, %bb.i ], [ %i.bw, %middle.block ], [ %i.cc, %.lr.ph.i ] ; 3 uses
  store ptr %i.cd, ptr %i.d, align 8, !tbaa !616
  %i.ce = icmp eq ptr %1, %i.e
  br i1 %i.ce, label %_ZSt22__uninitialized_move_aIPPN4entt6entityES3_N4test18throwing_allocatorIS2_EEET0_T_S8_S7_RT1_.exit72.thread, label %.lr.ph.i.i68

_ZSt22__uninitialized_move_aIPPN4entt6entityES3_N4test18throwing_allocatorIS2_EEET0_T_S8_S7_RT1_.exit72.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPPN4entt6entityEmS2_N4test18throwing_allocatorIS2_EEET_S7_T0_RKT1_RT2_.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.l
  store ptr %i.cf, ptr %i.d, align 8, !tbaa !616
  br label %_ZSt4fillIPPN4entt6entityES2_EvT_S4_RKT0_.exit

.lr.ph.i.i68:                                     ; preds = %_ZSt24__uninitialized_fill_n_aIPPN4entt6entityEmS2_N4test18throwing_allocatorIS2_EEET_S7_T0_RKT1_RT2_.exit, %.lr.ph.i.i68
  %.09.i.i69 = phi ptr [ %i.ci, %.lr.ph.i.i68 ], [ %i.cd, %_ZSt24__uninitialized_fill_n_aIPPN4entt6entityEmS2_N4test18throwing_allocatorIS2_EEET_S7_T0_RKT1_RT2_.exit ] ; 2 uses
  %.sroa.05.08.i.i70 = phi ptr [ %i.ch, %.lr.ph.i.i68 ], [ %1, %_ZSt24__uninitialized_fill_n_aIPPN4entt6entityEmS2_N4test18throwing_allocatorIS2_EEET_S7_T0_RKT1_RT2_.exit ] ; 2 uses
  %i.cg = load ptr, ptr %.sroa.05.08.i.i70, align 8, !tbaa !227
  store ptr %i.cg, ptr %.09.i.i69, align 8, !tbaa !227
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i70, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.09.i.i69, i64 8
  %i.cj = icmp eq ptr %i.ch, %i.e
  br i1 %i.cj, label %_ZSt22__uninitialized_move_aIPPN4entt6entityES3_N4test18throwing_allocatorIS2_EEET0_T_S8_S7_RT1_.exit72, label %.lr.ph.i.i68, !llvm.loop !1843

_ZSt22__uninitialized_move_aIPPN4entt6entityES3_N4test18throwing_allocatorIS2_EEET0_T_S8_S7_RT1_.exit72: ; preds = %.lr.ph.i.i68
  %i.ck = load ptr, ptr %i.d, align 8, !tbaa !616
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.l
  store ptr %i.cl, ptr %i.d, align 8, !tbaa !616
  br label %.lr.ph.i.i.i74

.lr.ph.i.i.i74:                                   ; preds = %_ZSt22__uninitialized_move_aIPPN4entt6entityES3_N4test18throwing_allocatorIS2_EEET0_T_S8_S7_RT1_.exit72, %.lr.ph.i.i.i74
  %.07.i.i.i75 = phi ptr [ %i.cm, %.lr.ph.i.i.i74 ], [ %1, %_ZSt22__uninitialized_move_aIPPN4entt6entityES3_N4test18throwing_allocatorIS2_EEET0_T_S8_S7_RT1_.exit72 ] ; 2 uses
  store ptr %i.j, ptr %.07.i.i.i75, align 8, !tbaa !227
  %i.cm = getelementptr inbounds nuw i8, ptr %.07.i.i.i75, i64 8 ; 2 uses
  %.not.i.i.i76 = icmp eq ptr %i.cm, %i.e
  br i1 %.not.i.i.i76, label %_ZSt4fillIPPN4entt6entityES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i74, !llvm.loop !26

bb.j:                                             ; preds = %bb.b
  %i.cn = load ptr, ptr %i.a, align 8, !tbaa !617 ; 5 uses
  %i.co = ptrtoint ptr %i.cn to i64               ; 3 uses
  %i.cp = sub i64 %i.g, %i.co
  %i.cq = ashr exact i64 %i.cp, 3                 ; 4 uses
  %i.cr = sub nsw i64 1152921504606846975, %i.cq
  %i.cs = icmp ult i64 %i.cr, %2
  br i1 %i.cs, label %bb.k, label %_ZNKSt6vectorIPN4entt6entityEN4test18throwing_allocatorIS2_EEE12_M_check_lenEmPKc.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #29
  unreachable

_ZNKSt6vectorIPN4entt6entityEN4test18throwing_allocatorIS2_EEE12_M_check_lenEmPKc.exit: ; preds = %bb.j
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 %2)
  %i.ct = add nsw i64 %.sroa.speculated.i, %i.cq  ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.cq
  %i.cv = tail call i64 @llvm.umin.i64(i64 %i.ct, i64 1152921504606846975)
  %i.cw = select i1 %i.cu, i64 1152921504606846975, i64 %i.cv ; 3 uses
  %i.cx = ptrtoint ptr %1 to i64
  %i.cy = sub i64 %i.cx, %i.co
  %.not.i78 = icmp eq i64 %i.cw, 0
  br i1 %.not.i78, label %.lr.ph.preheader.i80, label %bb.l

bb.l:                                             ; preds = %_ZNKSt6vectorIPN4entt6entityEN4test18throwing_allocatorIS2_EEE12_M_check_lenEmPKc.exit
  %i.cz = tail call noundef ptr @_ZN4test18throwing_allocatorIPN4entt6entityEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.cw)
  br label %.lr.ph.preheader.i80

.lr.ph.preheader.i80:                             ; preds = %bb.l, %_ZNKSt6vectorIPN4entt6entityEN4test18throwing_allocatorIS2_EEE12_M_check_lenEmPKc.exit
  %i.da = phi ptr [ %i.cz, %bb.l ], [ null, %_ZNKSt6vectorIPN4entt6entityEN4test18throwing_allocatorIS2_EEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cy ; 3 uses
  %.pre.i81 = load ptr, ptr %3, align 8, !tbaa !227 ; 2 uses
  %min.iters.check132 = icmp samesign ult i64 %2, 4
  br i1 %min.iters.check132, label %.lr.ph.i82.preheader, label %vector.ph133

vector.ph133:                                     ; preds = %.lr.ph.preheader.i80
  %n.vec134 = and i64 %2, -4                      ; 3 uses
  %i.dc = shl nuw i64 %n.vec134, 3
  %i.dd = getelementptr i8, ptr %i.db, i64 %i.dc
  %i.de = and i64 %2, 3
  %broadcast.splatinsert135 = insertelement <2 x ptr> poison, ptr %.pre.i81, i64 0
  %broadcast.splat136 = shufflevector <2 x ptr> %broadcast.splatinsert135, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph133
  %index138 = phi i64 [ 0, %vector.ph133 ], [ %index.next140, %vector.body137 ] ; 2 uses
  %i.df = shl i64 %index138, 3
  %next.gep139 = getelementptr i8, ptr %i.db, i64 %i.df ; 2 uses
  %i.dg = getelementptr i8, ptr %next.gep139, i64 16
  store <2 x ptr> %broadcast.splat136, ptr %next.gep139, align 8, !tbaa !227
  store <2 x ptr> %broadcast.splat136, ptr %i.dg, align 8, !tbaa !227
  %index.next140 = add nuw i64 %index138, 4       ; 2 uses
  %i.dh = icmp eq i64 %index.next140, %n.vec134
  br i1 %i.dh, label %middle.block141, label %vector.body137, !llvm.loop !1847

middle.block141:                                  ; preds = %vector.body137
  %cmp.n142 = icmp eq i64 %2, %n.vec134
  br i1 %cmp.n142, label %_ZSt24__uninitialized_fill_n_aIPPN4entt6entityEmS2_N4test18throwing_allocatorIS2_EEET_S7_T0_RKT1_RT2_.exit87, label %.lr.ph.i82.preheader

.lr.ph.i82.preheader:                             ; preds = %.lr.ph.preheader.i80, %middle.block141
  %.010.i83.ph = phi ptr [ %i.db, %.lr.ph.preheader.i80 ], [ %i.dd, %middle.block141 ]
  %.079.i84.ph = phi i64 [ %2, %.lr.ph.preheader.i80 ], [ %i.de, %middle.block141 ]
  br label %.lr.ph.i82

.lr.ph.i82:                                       ; preds = %.lr.ph.i82.preheader, %.lr.ph.i82
  %.010.i83 = phi ptr [ %i.dj, %.lr.ph.i82 ], [ %.010.i83.ph, %.lr.ph.i82.preheader ] ; 2 uses
  %.079.i84 = phi i64 [ %i.di, %.lr.ph.i82 ], [ %.079.i84.ph, %.lr.ph.i82.preheader ]
  store ptr %.pre.i81, ptr %.010.i83, align 8, !tbaa !227
  %i.di = add i64 %.079.i84, -1                   ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.010.i83, i64 8
  %.not.i85 = icmp eq i64 %i.di, 0
  br i1 %.not.i85, label %_ZSt24__uninitialized_fill_n_aIPPN4entt6entityEmS2_N4test18throwing_allocatorIS2_EEET_S7_T0_RKT1_RT2_.exit87, label %.lr.ph.i82, !llvm.loop !1848

_ZSt24__uninitialized_fill_n_aIPPN4entt6entityEmS2_N4test18throwing_allocatorIS2_EEET_S7_T0_RKT1_RT2_.exit87: ; preds = %.lr.ph.i82, %middle.block141
  %i.dk = icmp eq ptr %i.cn, %1
  br i1 %i.dk, label %_ZSt34__uninitialized_move_if_noexcept_aIPPN4entt6entityES3_N4test18throwing_allocatorIS2_EEET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i88

.lr.ph.i.i88:                                     ; preds = %_ZSt24__uninitialized_fill_n_aIPPN4entt6entityEmS2_N4test18throwing_allocatorIS2_EEET_S7_T0_RKT1_RT2_.exit87, %.lr.ph.i.i88
  %.09.i.i89 = phi ptr [ %i.dn, %.lr.ph.i.i88 ], [ %i.da, %_ZSt24__uninitialized_fill_n_aIPPN4entt6entityEmS2_N4test18throwing_allocatorIS2_EEET_S7_T0_RKT1_RT2_.exit87 ] ; 2 uses
  %.sroa.05.08.i.i90 = phi ptr [ %i.dm, %.lr.ph.i.i88 ], [ %i.cn, %_ZSt24__uninitialized_fill_n_aIPPN4entt6entityEmS2_N4test18throwing_allocatorIS2_EEET_S7_T0_RKT1_RT2_.exit87 ] ; 2 uses
  %i.dl = load ptr, ptr %.sroa.05.08.i.i90, align 8, !tbaa !227
  store ptr %i.dl, ptr %.09.i.i89, align 8, !tbaa !227
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i90, i64 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.09.i.i89, i64 8 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %1
  br i1 %i.do, label %_ZSt34__uninitialized_move_if_noexcept_aIPPN4entt6entityES3_N4test18throwing_allocatorIS2_EEET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i88, !llvm.loop !1843

_ZSt34__uninitialized_move_if_noexcept_aIPPN4entt6entityES3_N4test18throwing_allocatorIS2_EEET0_T_S8_S7_RT1_.exit: ; preds = %.lr.ph.i.i88, %_ZSt24__uninitialized_fill_n_aIPPN4entt6entityEmS2_N4test18throwing_allocatorIS2_EEET_S7_T0_RKT1_RT2_.exit87
  %.0.lcssa.i.i91 = phi ptr [ %i.da, %_ZSt24__uninitialized_fill_n_aIPPN4entt6entityEmS2_N4test18throwing_allocatorIS2_EEET_S7_T0_RKT1_RT2_.exit87 ], [ %i.dn, %.lr.ph.i.i88 ]
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.0.lcssa.i.i91, i64 %2 ; 2 uses
  %i.dq = icmp eq ptr %1, %i.e
  br i1 %i.dq, label %_ZSt34__uninitialized_move_if_noexcept_aIPPN4entt6entityES3_N4test18throwing_allocatorIS2_EEET0_T_S8_S7_RT1_.exit96, label %.lr.ph.i.i92

.lr.ph.i.i92:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN4entt6entityES3_N4test18throwing_allocatorIS2_EEET0_T_S8_S7_RT1_.exit, %.lr.ph.i.i92
  %.09.i.i93 = phi ptr [ %i.dt, %.lr.ph.i.i92 ], [ %i.dp, %_ZSt34__uninitialized_move_if_noexcept_aIPPN4entt6entityES3_N4test18throwing_allocatorIS2_EEET0_T_S8_S7_RT1_.exit ] ; 2 uses
  %.sroa.05.08.i.i94 = phi ptr [ %i.ds, %.lr.ph.i.i92 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPPN4entt6entityES3_N4test18throwing_allocatorIS2_EEET0_T_S8_S7_RT1_.exit ] ; 2 uses
  %i.dr = load ptr, ptr %.sroa.05.08.i.i94, align 8, !tbaa !227
  store ptr %i.dr, ptr %.09.i.i93, align 8, !tbaa !227
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i94, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.09.i.i93, i64 8 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.e
  br i1 %i.du, label %_ZSt34__uninitialized_move_if_noexcept_aIPPN4entt6entityES3_N4test18throwing_allocatorIS2_EEET0_T_S8_S7_RT1_.exit96, label %.lr.ph.i.i92, !llvm.loop !1843

_ZSt34__uninitialized_move_if_noexcept_aIPPN4entt6entityES3_N4test18throwing_allocatorIS2_EEET0_T_S8_S7_RT1_.exit96: ; preds = %.lr.ph.i.i92, %_ZSt34__uninitialized_move_if_noexcept_aIPPN4entt6entityES3_N4test18throwing_allocatorIS2_EEET0_T_S8_S7_RT1_.exit
  %.0.lcssa.i.i95 = phi ptr [ %i.dp, %_ZSt34__uninitialized_move_if_noexcept_aIPPN4entt6entityES3_N4test18throwing_allocatorIS2_EEET0_T_S8_S7_RT1_.exit ], [ %i.dt, %.lr.ph.i.i92 ]
  %.not.i97 = icmp eq ptr %i.cn, null
  br i1 %.not.i97, label %_ZNSt12_Vector_baseIPN4entt6entityEN4test18throwing_allocatorIS2_EEE13_M_deallocateEPS2_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN4entt6entityES3_N4test18throwing_allocatorIS2_EEET0_T_S8_S7_RT1_.exit96
  %i.dv = load ptr, ptr %i.b, align 8, !tbaa !620
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = sub i64 %i.dw, %i.co
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.dx) #32
  br label %_ZNSt12_Vector_baseIPN4entt6entityEN4test18throwing_allocatorIS2_EEE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIPN4entt6entityEN4test18throwing_allocatorIS2_EEE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN4entt6entityES3_N4test18throwing_allocatorIS2_EEET0_T_S8_S7_RT1_.exit96, %bb.m
  store ptr %i.da, ptr %i.a, align 8, !tbaa !617
  store ptr %.0.lcssa.i.i95, ptr %i.d, align 8, !tbaa !616
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cw
  store ptr %i.dy, ptr %i.b, align 8, !tbaa !620
  br label %_ZSt4fillIPPN4entt6entityES2_EvT_S4_RKT0_.exit

_ZSt4fillIPPN4entt6entityES2_EvT_S4_RKT0_.exit:   ; preds = %.lr.ph.i.i.i74, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZSt22__uninitialized_move_aIPPN4entt6entityES3_N4test18throwing_allocatorIS2_EEET0_T_S8_S7_RT1_.exit72.thread, %_ZNSt12_Vector_baseIPN4entt6entityEN4test18throwing_allocatorIS2_EEE13_M_deallocateEPS2_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN4test18throwing_allocatorIPN4entt6entityEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = load atomic i8, ptr @_ZGVZN4entt7type_idIPNS_6entityEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN4entt7type_idIPNS_6entityEEERKNS_9type_infoEv.exit, !prof !256

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIPNS_6entityEEERKNS_9type_infoEvE8instance) #28
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN4entt7type_idIPNS_6entityEEERKNS_9type_infoEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IPNS_6entityEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIPNS_6entityEEERKNS_9type_infoEvE8instance) #28
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIPNS_6entityEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIPNS_6entityEEERKNS_9type_infoEvE8instance) #28
  br label %_ZN4entt7type_idIPNS_6entityEEERKNS_9type_infoEv.exit

_ZN4entt7type_idIPNS_6entityEEERKNS_9type_infoEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idIPNS_6entityEEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !259 ; 3 uses
  store i32 %i.f, ptr %i.a, align 4, !tbaa !176
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !559  ; 6 uses
  %i.i = zext i32 %i.f to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !339
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !249  ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = lshr exact i64 %i.o, 3
  %i.q = add nuw nsw i64 %i.p, 4294967295
  %i.r = and i64 %i.q, %i.i
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN4entt7type_idIPNS_6entityEEERKNS_9type_infoEv.exit
  %.07.in.i.i.i = phi ptr [ %i.s, %_ZN4entt7type_idIPNS_6entityEEERKNS_9type_infoEv.exit ], [ %i.v, %bb.e ]
  %.07.i.i.i = load i64, ptr %.07.in.i.i.i, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.07.i.i.i, -1
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %.07.i.i.i ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !176
  %i.y = icmp eq i32 %i.x, %i.f
  br i1 %i.y, label %_ZNK4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE4findERS6_.exit.loopexit.i, label %bb.d, !llvm.loop !109

bb.f:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !611 ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.u to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ad
  br label %_ZNK4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE8containsERS6_.exit

_ZNK4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE4findERS6_.exit.loopexit.i: ; preds = %bb.e
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !611
  br label %_ZNK4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE8containsERS6_.exit

_ZNK4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE8containsERS6_.exit: ; preds = %bb.f, %_ZNK4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE4findERS6_.exit.loopexit.i
  %i.af = phi ptr [ %i.aa, %bb.f ], [ %.pre.i, %_ZNK4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE4findERS6_.exit.loopexit.i ]
  %.sroa.0.1.i.i.i = phi ptr [ %i.ae, %bb.f ], [ %i.v, %_ZNK4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE4findERS6_.exit.loopexit.i ]
  %.not = icmp eq ptr %.sroa.0.1.i.i.i, %i.af
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNK4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE8containsERS6_.exit
  %i.ag = call { ptr, i8 } @_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE20insert_or_do_nothingIRS6_JEEEDaOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(52) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 16 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !172 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !559
  %i.al = call noundef i64 @_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE5eraseERS6_(ptr noundef nonnull align 8 dereferenceable(52) %i.ak, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  %i.am = call ptr @__cxa_allocate_exception(i64 1) #28
  call void @__cxa_throw(ptr %i.am, ptr nonnull @_ZTIN4test28throwing_allocator_exceptionE, ptr null) #29
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.an = add i64 %i.ai, -1
  store i64 %i.an, ptr %i.ah, align 8, !tbaa !172
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE8containsERS6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ao = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.ao, label %bb.k, label %_ZNSt15__new_allocatorIPN4entt6entityEE8allocateEmPKv.exit, !prof !145

bb.k:                                             ; preds = %bb.j
  %i.ap = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

bb.m:                                             ; preds = %bb.k
  call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt15__new_allocatorIPN4entt6entityEE8allocateEmPKv.exit: ; preds = %bb.j
  %i.aq = shl nuw nsw i64 %1, 3
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIPiN4test18throwing_allocatorIS0_EEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S4_EEmRKS0_:bb.a
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !352
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !352
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 40
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !352
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !352
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 48
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !352
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !352
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 56
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !352
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !352
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i, i64 64 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 64
  %i.au = icmp eq ptr %i.as, %i.e
  br i1 %i.au, label %_ZSt22__uninitialized_move_aIPPiS1_N4test18throwing_allocatorIS0_EEET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !1895

_ZSt22__uninitialized_move_aIPPiS1_N4test18throwing_allocatorIS0_EEET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %2
  store ptr %i.av, ptr %i.d, align 8, !tbaa !567
  %i.aw = ptrtoint ptr %i.o to i64
  %i.ax = sub i64 %i.aw, %i.k                     ; 3 uses
  %i.ay = ashr exact i64 %i.ax, 3                 ; 2 uses
  %i.az = icmp sgt i64 %i.ay, 1
  br i1 %i.az, label %bb.e, label %bb.f, !prof !325

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPPiS1_N4test18throwing_allocatorIS0_EEET0_T_S6_S5_RT1_.exit
  %i.ba = sub nsw i64 0, %i.ay
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ba
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 8 %1, i64 %i.ax, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPPiS1_N4test18throwing_allocatorIS0_EEET0_T_S6_S5_RT1_.exit
  %i.bc = icmp eq i64 %i.ax, 8
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.be = load ptr, ptr %1, align 8, !tbaa !352
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !352
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.bg = add nsw i64 %.idx, -8                   ; 2 uses
  %i.bh = lshr exact i64 %i.bg, 3
  %i.bi = add nuw nsw i64 %i.bh, 1
  %xtraiter149 = and i64 %i.bi, 7                 ; 2 uses
  %lcmp.mod150.not = icmp eq i64 %xtraiter149, 0
  br i1 %lcmp.mod150.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %bb.h, %.lr.ph.i.i.i.prol
  %.07.i.i.i.prol = phi ptr [ %i.bj, %.lr.ph.i.i.i.prol ], [ %1, %bb.h ] ; 2 uses
  %prol.iter151 = phi i64 [ %prol.iter151.next, %.lr.ph.i.i.i.prol ], [ 0, %bb.h ]
  store ptr %i.j, ptr %.07.i.i.i.prol, align 8, !tbaa !352
  %i.bj = getelementptr inbounds nuw i8, ptr %.07.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter151.next = add i64 %prol.iter151, 1   ; 2 uses
  %prol.iter151.cmp.not = icmp eq i64 %prol.iter151.next, %xtraiter149
  br i1 %prol.iter151.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1896

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %bb.h
  %.07.i.i.i.unr = phi ptr [ %1, %bb.h ], [ %i.bj, %.lr.ph.i.i.i.prol ]
  %i.bk = icmp ult i64 %i.bg, 56
  br i1 %i.bk, label %_ZSt4fillIPPiS0_EvT_S2_RKT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i ], [ %.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  store ptr %i.j, ptr %.07.i.i.i, align 8, !tbaa !352
  %i.bl = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8
  store ptr %i.j, ptr %i.bl, align 8, !tbaa !352
  %i.bm = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 16
  store ptr %i.j, ptr %i.bm, align 8, !tbaa !352
  %i.bn = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 24
  store ptr %i.j, ptr %i.bn, align 8, !tbaa !352
  %i.bo = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 32
  store ptr %i.j, ptr %i.bo, align 8, !tbaa !352
  %i.bp = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 40
  store ptr %i.j, ptr %i.bp, align 8, !tbaa !352
  %i.bq = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 48
  store ptr %i.j, ptr %i.bq, align 8, !tbaa !352
  %i.br = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 56
  store ptr %i.j, ptr %i.br, align 8, !tbaa !352
  %i.bs = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.7 = icmp eq ptr %i.bs, %i.bf
  br i1 %.not.i.i.i.7, label %_ZSt4fillIPPiS0_EvT_S2_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !49

bb.i:                                             ; preds = %bb.c
  %i.bt = sub nuw i64 %2, %i.m                    ; 6 uses
  %.not8.i = icmp eq i64 %i.bt, 0
  br i1 %.not8.i, label %_ZSt24__uninitialized_fill_n_aIPPimS0_N4test18throwing_allocatorIS0_EEET_S5_T0_RKT1_RT2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.i
  %min.iters.check = icmp ult i64 %i.bt, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader147, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.bt, -4                      ; 3 uses
  %i.bu = shl i64 %n.vec, 3
  %i.bv = getelementptr i8, ptr %i.e, i64 %i.bu   ; 2 uses
  %i.bw = and i64 %i.bt, 3
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.j, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.e, i64 %i.bx ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8, !tbaa !352
  store <2 x ptr> %broadcast.splat, ptr %i.by, align 8, !tbaa !352
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !1897

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPPimS0_N4test18throwing_allocatorIS0_EEET_S5_T0_RKT1_RT2_.exit, label %.lr.ph.i.preheader147

.lr.ph.i.preheader147:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.010.i.ph = phi ptr [ %i.e, %.lr.ph.i.preheader ], [ %i.bv, %middle.block ]
  %.079.i.ph = phi i64 [ %i.bt, %.lr.ph.i.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader147, %.lr.ph.i
  %.010.i = phi ptr [ %i.cb, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader147 ] ; 2 uses
  %.079.i = phi i64 [ %i.ca, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader147 ]
  store ptr %i.j, ptr %.010.i, align 8, !tbaa !352
  %i.ca = add i64 %.079.i, -1                     ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.010.i, i64 8 ; 2 uses
  %.not.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i, label %_ZSt24__uninitialized_fill_n_aIPPimS0_N4test18throwing_allocatorIS0_EEET_S5_T0_RKT1_RT2_.exit, label %.lr.ph.i, !llvm.loop !1898

_ZSt24__uninitialized_fill_n_aIPPimS0_N4test18throwing_allocatorIS0_EEET_S5_T0_RKT1_RT2_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.i
  %.0.lcssa.i = phi ptr [ %i.e, %bb.i ], [ %i.bv, %middle.block ], [ %i.cb, %.lr.ph.i ] ; 3 uses
  %i.cc = icmp eq ptr %1, %i.e
  br i1 %i.cc, label %_ZSt22__uninitialized_move_aIPPiS1_N4test18throwing_allocatorIS0_EEET0_T_S6_S5_RT1_.exit72.thread, label %.lr.ph.i.i68

_ZSt22__uninitialized_move_aIPPiS1_N4test18throwing_allocatorIS0_EEET0_T_S6_S5_RT1_.exit72.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPPimS0_N4test18throwing_allocatorIS0_EEET_S5_T0_RKT1_RT2_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 %i.l
  store ptr %i.cd, ptr %i.d, align 8, !tbaa !567
  br label %_ZSt4fillIPPiS0_EvT_S2_RKT0_.exit

.lr.ph.i.i68:                                     ; preds = %_ZSt24__uninitialized_fill_n_aIPPimS0_N4test18throwing_allocatorIS0_EEET_S5_T0_RKT1_RT2_.exit, %.lr.ph.i.i68
  %.09.i.i69 = phi ptr [ %i.cg, %.lr.ph.i.i68 ], [ %.0.lcssa.i, %_ZSt24__uninitialized_fill_n_aIPPimS0_N4test18throwing_allocatorIS0_EEET_S5_T0_RKT1_RT2_.exit ] ; 2 uses
  %.sroa.05.08.i.i70 = phi ptr [ %i.cf, %.lr.ph.i.i68 ], [ %1, %_ZSt24__uninitialized_fill_n_aIPPimS0_N4test18throwing_allocatorIS0_EEET_S5_T0_RKT1_RT2_.exit ] ; 2 uses
  %i.ce = load ptr, ptr %.sroa.05.08.i.i70, align 8, !tbaa !352
  store ptr %i.ce, ptr %.09.i.i69, align 8, !tbaa !352
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i70, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.09.i.i69, i64 8
  %i.ch = icmp eq ptr %i.cf, %i.e
  br i1 %i.ch, label %_ZSt22__uninitialized_move_aIPPiS1_N4test18throwing_allocatorIS0_EEET0_T_S6_S5_RT1_.exit72, label %.lr.ph.i.i68, !llvm.loop !1895

_ZSt22__uninitialized_move_aIPPiS1_N4test18throwing_allocatorIS0_EEET0_T_S6_S5_RT1_.exit72: ; preds = %.lr.ph.i.i68
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 %i.l
  store ptr %i.ci, ptr %i.d, align 8, !tbaa !567
  br label %.lr.ph.i.i.i74

.lr.ph.i.i.i74:                                   ; preds = %_ZSt22__uninitialized_move_aIPPiS1_N4test18throwing_allocatorIS0_EEET0_T_S6_S5_RT1_.exit72, %.lr.ph.i.i.i74
  %.07.i.i.i75 = phi ptr [ %i.cj, %.lr.ph.i.i.i74 ], [ %1, %_ZSt22__uninitialized_move_aIPPiS1_N4test18throwing_allocatorIS0_EEET0_T_S6_S5_RT1_.exit72 ] ; 2 uses
  store ptr %i.j, ptr %.07.i.i.i75, align 8, !tbaa !352
  %i.cj = getelementptr inbounds nuw i8, ptr %.07.i.i.i75, i64 8 ; 2 uses
  %.not.i.i.i76 = icmp eq ptr %i.cj, %i.e
  br i1 %.not.i.i.i76, label %_ZSt4fillIPPiS0_EvT_S2_RKT0_.exit, label %.lr.ph.i.i.i74, !llvm.loop !49

bb.j:                                             ; preds = %bb.b
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !568 ; 5 uses
  %i.cl = ptrtoint ptr %i.ck to i64               ; 3 uses
  %i.cm = sub i64 %i.g, %i.cl
  %i.cn = ashr exact i64 %i.cm, 3                 ; 4 uses
  %i.co = sub nsw i64 1152921504606846975, %i.cn
  %i.cp = icmp ult i64 %i.co, %2
  br i1 %i.cp, label %bb.k, label %_ZNKSt6vectorIPiN4test18throwing_allocatorIS0_EEE12_M_check_lenEmPKc.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #29
  unreachable

_ZNKSt6vectorIPiN4test18throwing_allocatorIS0_EEE12_M_check_lenEmPKc.exit: ; preds = %bb.j
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cn, i64 %2)
  %i.cq = add nsw i64 %.sroa.speculated.i, %i.cn  ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.cn
  %i.cs = tail call i64 @llvm.umin.i64(i64 %i.cq, i64 1152921504606846975)
  %i.ct = select i1 %i.cr, i64 1152921504606846975, i64 %i.cs ; 3 uses
  %i.cu = ptrtoint ptr %1 to i64
  %i.cv = sub i64 %i.cu, %i.cl
  %.not.i78 = icmp eq i64 %i.ct, 0
  br i1 %.not.i78, label %.lr.ph.preheader.i80, label %bb.l

bb.l:                                             ; preds = %_ZNKSt6vectorIPiN4test18throwing_allocatorIS0_EEE12_M_check_lenEmPKc.exit
  %i.cw = tail call noundef ptr @_ZN4test18throwing_allocatorIPiE8allocateEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.ct)
  br label %.lr.ph.preheader.i80

.lr.ph.preheader.i80:                             ; preds = %bb.l, %_ZNKSt6vectorIPiN4test18throwing_allocatorIS0_EEE12_M_check_lenEmPKc.exit
  %i.cx = phi ptr [ %i.cw, %bb.l ], [ null, %_ZNKSt6vectorIPiN4test18throwing_allocatorIS0_EEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cv ; 3 uses
  %.pre.i81 = load ptr, ptr %3, align 8, !tbaa !352 ; 2 uses
  %min.iters.check132 = icmp samesign ult i64 %2, 4
  br i1 %min.iters.check132, label %.lr.ph.i82.preheader, label %vector.ph133

vector.ph133:                                     ; preds = %.lr.ph.preheader.i80
  %n.vec134 = and i64 %2, -4                      ; 3 uses
  %i.cz = shl nuw i64 %n.vec134, 3
  %i.da = getelementptr i8, ptr %i.cy, i64 %i.cz
  %i.db = and i64 %2, 3
  %broadcast.splatinsert135 = insertelement <2 x ptr> poison, ptr %.pre.i81, i64 0
  %broadcast.splat136 = shufflevector <2 x ptr> %broadcast.splatinsert135, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph133
  %index138 = phi i64 [ 0, %vector.ph133 ], [ %index.next140, %vector.body137 ] ; 2 uses
  %i.dc = shl i64 %index138, 3
  %next.gep139 = getelementptr i8, ptr %i.cy, i64 %i.dc ; 2 uses
  %i.dd = getelementptr i8, ptr %next.gep139, i64 16
  store <2 x ptr> %broadcast.splat136, ptr %next.gep139, align 8, !tbaa !352
  store <2 x ptr> %broadcast.splat136, ptr %i.dd, align 8, !tbaa !352
  %index.next140 = add nuw i64 %index138, 4       ; 2 uses
  %i.de = icmp eq i64 %index.next140, %n.vec134
  br i1 %i.de, label %middle.block141, label %vector.body137, !llvm.loop !1899

middle.block141:                                  ; preds = %vector.body137
  %cmp.n142 = icmp eq i64 %2, %n.vec134
  br i1 %cmp.n142, label %_ZSt24__uninitialized_fill_n_aIPPimS0_N4test18throwing_allocatorIS0_EEET_S5_T0_RKT1_RT2_.exit87, label %.lr.ph.i82.preheader

.lr.ph.i82.preheader:                             ; preds = %.lr.ph.preheader.i80, %middle.block141
  %.010.i83.ph = phi ptr [ %i.cy, %.lr.ph.preheader.i80 ], [ %i.da, %middle.block141 ]
  %.079.i84.ph = phi i64 [ %2, %.lr.ph.preheader.i80 ], [ %i.db, %middle.block141 ]
  br label %.lr.ph.i82

.lr.ph.i82:                                       ; preds = %.lr.ph.i82.preheader, %.lr.ph.i82
  %.010.i83 = phi ptr [ %i.dg, %.lr.ph.i82 ], [ %.010.i83.ph, %.lr.ph.i82.preheader ] ; 2 uses
  %.079.i84 = phi i64 [ %i.df, %.lr.ph.i82 ], [ %.079.i84.ph, %.lr.ph.i82.preheader ]
  store ptr %.pre.i81, ptr %.010.i83, align 8, !tbaa !352
  %i.df = add i64 %.079.i84, -1                   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.010.i83, i64 8
  %.not.i85 = icmp eq i64 %i.df, 0
  br i1 %.not.i85, label %_ZSt24__uninitialized_fill_n_aIPPimS0_N4test18throwing_allocatorIS0_EEET_S5_T0_RKT1_RT2_.exit87, label %.lr.ph.i82, !llvm.loop !1900

_ZSt24__uninitialized_fill_n_aIPPimS0_N4test18throwing_allocatorIS0_EEET_S5_T0_RKT1_RT2_.exit87: ; preds = %.lr.ph.i82, %middle.block141
  %i.dh = icmp eq ptr %i.ck, %1
  br i1 %i.dh, label %_ZSt34__uninitialized_move_if_noexcept_aIPPiS1_N4test18throwing_allocatorIS0_EEET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i88

.lr.ph.i.i88:                                     ; preds = %_ZSt24__uninitialized_fill_n_aIPPimS0_N4test18throwing_allocatorIS0_EEET_S5_T0_RKT1_RT2_.exit87, %.lr.ph.i.i88
  %.09.i.i89 = phi ptr [ %i.dk, %.lr.ph.i.i88 ], [ %i.cx, %_ZSt24__uninitialized_fill_n_aIPPimS0_N4test18throwing_allocatorIS0_EEET_S5_T0_RKT1_RT2_.exit87 ] ; 2 uses
  %.sroa.05.08.i.i90 = phi ptr [ %i.dj, %.lr.ph.i.i88 ], [ %i.ck, %_ZSt24__uninitialized_fill_n_aIPPimS0_N4test18throwing_allocatorIS0_EEET_S5_T0_RKT1_RT2_.exit87 ] ; 2 uses
  %i.di = load ptr, ptr %.sroa.05.08.i.i90, align 8, !tbaa !352
  store ptr %i.di, ptr %.09.i.i89, align 8, !tbaa !352
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i90, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.09.i.i89, i64 8 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %1
  br i1 %i.dl, label %_ZSt34__uninitialized_move_if_noexcept_aIPPiS1_N4test18throwing_allocatorIS0_EEET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i88, !llvm.loop !1895

_ZSt34__uninitialized_move_if_noexcept_aIPPiS1_N4test18throwing_allocatorIS0_EEET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i88, %_ZSt24__uninitialized_fill_n_aIPPimS0_N4test18throwing_allocatorIS0_EEET_S5_T0_RKT1_RT2_.exit87
  %.0.lcssa.i.i91 = phi ptr [ %i.cx, %_ZSt24__uninitialized_fill_n_aIPPimS0_N4test18throwing_allocatorIS0_EEET_S5_T0_RKT1_RT2_.exit87 ], [ %i.dk, %.lr.ph.i.i88 ]
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.0.lcssa.i.i91, i64 %2 ; 2 uses
  %i.dn = icmp eq ptr %1, %i.e
  br i1 %i.dn, label %_ZSt34__uninitialized_move_if_noexcept_aIPPiS1_N4test18throwing_allocatorIS0_EEET0_T_S6_S5_RT1_.exit96, label %.lr.ph.i.i92

.lr.ph.i.i92:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPiS1_N4test18throwing_allocatorIS0_EEET0_T_S6_S5_RT1_.exit, %.lr.ph.i.i92
  %.09.i.i93 = phi ptr [ %i.dq, %.lr.ph.i.i92 ], [ %i.dm, %_ZSt34__uninitialized_move_if_noexcept_aIPPiS1_N4test18throwing_allocatorIS0_EEET0_T_S6_S5_RT1_.exit ] ; 2 uses
  %.sroa.05.08.i.i94 = phi ptr [ %i.dp, %.lr.ph.i.i92 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPPiS1_N4test18throwing_allocatorIS0_EEET0_T_S6_S5_RT1_.exit ] ; 2 uses
  %i.do = load ptr, ptr %.sroa.05.08.i.i94, align 8, !tbaa !352
  store ptr %i.do, ptr %.09.i.i93, align 8, !tbaa !352
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i94, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.09.i.i93, i64 8 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.e
  br i1 %i.dr, label %_ZSt34__uninitialized_move_if_noexcept_aIPPiS1_N4test18throwing_allocatorIS0_EEET0_T_S6_S5_RT1_.exit96, label %.lr.ph.i.i92, !llvm.loop !1895

_ZSt34__uninitialized_move_if_noexcept_aIPPiS1_N4test18throwing_allocatorIS0_EEET0_T_S6_S5_RT1_.exit96: ; preds = %.lr.ph.i.i92, %_ZSt34__uninitialized_move_if_noexcept_aIPPiS1_N4test18throwing_allocatorIS0_EEET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i95 = phi ptr [ %i.dm, %_ZSt34__uninitialized_move_if_noexcept_aIPPiS1_N4test18throwing_allocatorIS0_EEET0_T_S6_S5_RT1_.exit ], [ %i.dq, %.lr.ph.i.i92 ]
  %.not.i97 = icmp eq ptr %i.ck, null
  br i1 %.not.i97, label %_ZNSt12_Vector_baseIPiN4test18throwing_allocatorIS0_EEE13_M_deallocateEPS0_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPiS1_N4test18throwing_allocatorIS0_EEET0_T_S6_S5_RT1_.exit96
  %i.ds = load ptr, ptr %i.b, align 8, !tbaa !619
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = sub i64 %i.dt, %i.cl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.du) #32
  br label %_ZNSt12_Vector_baseIPiN4test18throwing_allocatorIS0_EEE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseIPiN4test18throwing_allocatorIS0_EEE13_M_deallocateEPS0_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPiS1_N4test18throwing_allocatorIS0_EEET0_T_S6_S5_RT1_.exit96, %bb.m
  store ptr %i.cx, ptr %i.a, align 8, !tbaa !568
  store ptr %.0.lcssa.i.i95, ptr %i.d, align 8, !tbaa !567
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.ct
  store ptr %i.dv, ptr %i.b, align 8, !tbaa !619
  br label %_ZSt4fillIPPiS0_EvT_S2_RKT0_.exit

_ZSt4fillIPPiS0_EvT_S2_RKT0_.exit:                ; preds = %.lr.ph.i.i.i74, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZSt22__uninitialized_move_aIPPiS1_N4test18throwing_allocatorIS0_EEET0_T_S6_S5_RT1_.exit72.thread, %_ZNSt12_Vector_baseIPiN4test18throwing_allocatorIS0_EEE13_M_deallocateEPS0_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN4test18throwing_allocatorIPiE8allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = load atomic i8, ptr @_ZGVZN4entt7type_idIPiEERKNS_9type_infoEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN4entt7type_idIPiEERKNS_9type_infoEv.exit, !prof !256

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIPiEERKNS_9type_infoEvE8instance) #28
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN4entt7type_idIPiEERKNS_9type_infoEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IPiEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIPiEERKNS_9type_infoEvE8instance) #28
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIPiEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIPiEERKNS_9type_infoEvE8instance) #28
  br label %_ZN4entt7type_idIPiEERKNS_9type_infoEv.exit

_ZN4entt7type_idIPiEERKNS_9type_infoEv.exit:      ; preds = %bb.a, %bb.b, %bb.c
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idIPiEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !259 ; 3 uses
  store i32 %i.f, ptr %i.a, align 4, !tbaa !176
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !559  ; 6 uses
  %i.i = zext i32 %i.f to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !339
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !249  ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = lshr exact i64 %i.o, 3
  %i.q = add nuw nsw i64 %i.p, 4294967295
  %i.r = and i64 %i.q, %i.i
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN4entt7type_idIPiEERKNS_9type_infoEv.exit
  %.07.in.i.i.i = phi ptr [ %i.s, %_ZN4entt7type_idIPiEERKNS_9type_infoEv.exit ], [ %i.v, %bb.e ]
  %.07.i.i.i = load i64, ptr %.07.in.i.i.i, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.07.i.i.i, -1
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %.07.i.i.i ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !176
  %i.y = icmp eq i32 %i.x, %i.f
  br i1 %i.y, label %_ZNK4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE4findERS6_.exit.loopexit.i, label %bb.d, !llvm.loop !109

bb.f:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !611 ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.u to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ad
  br label %_ZNK4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE8containsERS6_.exit

_ZNK4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE4findERS6_.exit.loopexit.i: ; preds = %bb.e
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !611
  br label %_ZNK4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE8containsERS6_.exit

_ZNK4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE8containsERS6_.exit: ; preds = %bb.f, %_ZNK4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE4findERS6_.exit.loopexit.i
  %i.af = phi ptr [ %i.aa, %bb.f ], [ %.pre.i, %_ZNK4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE4findERS6_.exit.loopexit.i ]
  %.sroa.0.1.i.i.i = phi ptr [ %i.ae, %bb.f ], [ %i.v, %_ZNK4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE4findERS6_.exit.loopexit.i ]
  %.not = icmp eq ptr %.sroa.0.1.i.i.i, %i.af
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNK4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE8containsERS6_.exit
  %i.ag = call { ptr, i8 } @_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE20insert_or_do_nothingIRS6_JEEEDaOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(52) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 16 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !172 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !559
  %i.al = call noundef i64 @_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE5eraseERS6_(ptr noundef nonnull align 8 dereferenceable(52) %i.ak, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  %i.am = call ptr @__cxa_allocate_exception(i64 1) #28
  call void @__cxa_throw(ptr %i.am, ptr nonnull @_ZTIN4test28throwing_allocator_exceptionE, ptr null) #29
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.an = add i64 %i.ai, -1
  store i64 %i.an, ptr %i.ah, align 8, !tbaa !172
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE8containsERS6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ao = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.ao, label %bb.k, label %_ZNSt15__new_allocatorIPiE8allocateEmPKv.exit, !prof !145

bb.k:                                             ; preds = %bb.j
  %i.ap = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

bb.m:                                             ; preds = %bb.k
  call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt15__new_allocatorIPiE8allocateEmPKv.exit:    ; preds = %bb.j
  %i.aq = shl nuw nsw i64 %1, 3
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEENS0_18throwing_allocatorIS6_EEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS6_S9_EEmRKS6_:bb.a
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !423
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !423
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 40
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !423
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !423
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 48
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !423
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !423
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 56
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !423
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !423
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i, i64 64 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 64
  %i.au = icmp eq ptr %i.as, %i.e
  br i1 %i.au, label %_ZSt22__uninitialized_move_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEES7_NS0_18throwing_allocatorIS6_EEET0_T_SB_SA_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !2073

_ZSt22__uninitialized_move_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEES7_NS0_18throwing_allocatorIS6_EEET0_T_SB_SA_RT1_.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %2
  store ptr %i.av, ptr %i.d, align 8, !tbaa !685
  %i.aw = ptrtoint ptr %i.o to i64
  %i.ax = sub i64 %i.aw, %i.k                     ; 3 uses
  %i.ay = ashr exact i64 %i.ax, 3                 ; 2 uses
  %i.az = icmp sgt i64 %i.ay, 1
  br i1 %i.az, label %bb.e, label %bb.f, !prof !325

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEES7_NS0_18throwing_allocatorIS6_EEET0_T_SB_SA_RT1_.exit
  %i.ba = sub nsw i64 0, %i.ay
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ba
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 8 %1, i64 %i.ax, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEES7_NS0_18throwing_allocatorIS6_EEET0_T_SB_SA_RT1_.exit
  %i.bc = icmp eq i64 %i.ax, 8
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.be = load ptr, ptr %1, align 8, !tbaa !423
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !423
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.bg = add nsw i64 %.idx, -8                   ; 2 uses
  %i.bh = lshr exact i64 %i.bg, 3
  %i.bi = add nuw nsw i64 %i.bh, 1
  %xtraiter149 = and i64 %i.bi, 7                 ; 2 uses
  %lcmp.mod150.not = icmp eq i64 %xtraiter149, 0
  br i1 %lcmp.mod150.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %bb.h, %.lr.ph.i.i.i.prol
  %.07.i.i.i.prol = phi ptr [ %i.bj, %.lr.ph.i.i.i.prol ], [ %1, %bb.h ] ; 2 uses
  %prol.iter151 = phi i64 [ %prol.iter151.next, %.lr.ph.i.i.i.prol ], [ 0, %bb.h ]
  store ptr %i.j, ptr %.07.i.i.i.prol, align 8, !tbaa !423
  %i.bj = getelementptr inbounds nuw i8, ptr %.07.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter151.next = add i64 %prol.iter151, 1   ; 2 uses
  %prol.iter151.cmp.not = icmp eq i64 %prol.iter151.next, %xtraiter149
  br i1 %prol.iter151.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !2074

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %bb.h
  %.07.i.i.i.unr = phi ptr [ %1, %bb.h ], [ %i.bj, %.lr.ph.i.i.i.prol ]
  %i.bk = icmp ult i64 %i.bg, 56
  br i1 %i.bk, label %_ZSt4fillIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEES6_EvT_S8_RKT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i ], [ %.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  store ptr %i.j, ptr %.07.i.i.i, align 8, !tbaa !423
  %i.bl = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8
  store ptr %i.j, ptr %i.bl, align 8, !tbaa !423
  %i.bm = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 16
  store ptr %i.j, ptr %i.bm, align 8, !tbaa !423
  %i.bn = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 24
  store ptr %i.j, ptr %i.bn, align 8, !tbaa !423
  %i.bo = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 32
  store ptr %i.j, ptr %i.bo, align 8, !tbaa !423
  %i.bp = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 40
  store ptr %i.j, ptr %i.bp, align 8, !tbaa !423
  %i.bq = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 48
  store ptr %i.j, ptr %i.bq, align 8, !tbaa !423
  %i.br = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 56
  store ptr %i.j, ptr %i.br, align 8, !tbaa !423
  %i.bs = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.7 = icmp eq ptr %i.bs, %i.bf
  br i1 %.not.i.i.i.7, label %_ZSt4fillIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEES6_EvT_S8_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !60

bb.i:                                             ; preds = %bb.c
  %i.bt = sub nuw i64 %2, %i.m                    ; 6 uses
  %.not8.i = icmp eq i64 %i.bt, 0
  br i1 %.not8.i, label %_ZSt24__uninitialized_fill_n_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEEmS6_NS0_18throwing_allocatorIS6_EEET_SA_T0_RKT1_RT2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.i
  %min.iters.check = icmp ult i64 %i.bt, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader147, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.bt, -4                      ; 3 uses
  %i.bu = shl i64 %n.vec, 3
  %i.bv = getelementptr i8, ptr %i.e, i64 %i.bu   ; 2 uses
  %i.bw = and i64 %i.bt, 3
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.j, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.e, i64 %i.bx ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8, !tbaa !423
  store <2 x ptr> %broadcast.splat, ptr %i.by, align 8, !tbaa !423
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !2075

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEEmS6_NS0_18throwing_allocatorIS6_EEET_SA_T0_RKT1_RT2_.exit, label %.lr.ph.i.preheader147

.lr.ph.i.preheader147:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.010.i.ph = phi ptr [ %i.e, %.lr.ph.i.preheader ], [ %i.bv, %middle.block ]
  %.079.i.ph = phi i64 [ %i.bt, %.lr.ph.i.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader147, %.lr.ph.i
  %.010.i = phi ptr [ %i.cb, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader147 ] ; 2 uses
  %.079.i = phi i64 [ %i.ca, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader147 ]
  store ptr %i.j, ptr %.010.i, align 8, !tbaa !423
  %i.ca = add i64 %.079.i, -1                     ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.010.i, i64 8 ; 2 uses
  %.not.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i, label %_ZSt24__uninitialized_fill_n_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEEmS6_NS0_18throwing_allocatorIS6_EEET_SA_T0_RKT1_RT2_.exit, label %.lr.ph.i, !llvm.loop !2076

_ZSt24__uninitialized_fill_n_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEEmS6_NS0_18throwing_allocatorIS6_EEET_SA_T0_RKT1_RT2_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.i
  %.0.lcssa.i = phi ptr [ %i.e, %bb.i ], [ %i.bv, %middle.block ], [ %i.cb, %.lr.ph.i ] ; 3 uses
  %i.cc = icmp eq ptr %1, %i.e
  br i1 %i.cc, label %_ZSt22__uninitialized_move_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEES7_NS0_18throwing_allocatorIS6_EEET0_T_SB_SA_RT1_.exit72.thread, label %.lr.ph.i.i68

_ZSt22__uninitialized_move_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEES7_NS0_18throwing_allocatorIS6_EEET0_T_SB_SA_RT1_.exit72.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEEmS6_NS0_18throwing_allocatorIS6_EEET_SA_T0_RKT1_RT2_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 %i.l
  store ptr %i.cd, ptr %i.d, align 8, !tbaa !685
  br label %_ZSt4fillIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEES6_EvT_S8_RKT0_.exit

.lr.ph.i.i68:                                     ; preds = %_ZSt24__uninitialized_fill_n_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEEmS6_NS0_18throwing_allocatorIS6_EEET_SA_T0_RKT1_RT2_.exit, %.lr.ph.i.i68
  %.09.i.i69 = phi ptr [ %i.cg, %.lr.ph.i.i68 ], [ %.0.lcssa.i, %_ZSt24__uninitialized_fill_n_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEEmS6_NS0_18throwing_allocatorIS6_EEET_SA_T0_RKT1_RT2_.exit ] ; 2 uses
  %.sroa.05.08.i.i70 = phi ptr [ %i.cf, %.lr.ph.i.i68 ], [ %1, %_ZSt24__uninitialized_fill_n_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEEmS6_NS0_18throwing_allocatorIS6_EEET_SA_T0_RKT1_RT2_.exit ] ; 2 uses
  %i.ce = load ptr, ptr %.sroa.05.08.i.i70, align 8, !tbaa !423
  store ptr %i.ce, ptr %.09.i.i69, align 8, !tbaa !423
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i70, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.09.i.i69, i64 8
  %i.ch = icmp eq ptr %i.cf, %i.e
  br i1 %i.ch, label %_ZSt22__uninitialized_move_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEES7_NS0_18throwing_allocatorIS6_EEET0_T_SB_SA_RT1_.exit72, label %.lr.ph.i.i68, !llvm.loop !2073

_ZSt22__uninitialized_move_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEES7_NS0_18throwing_allocatorIS6_EEET0_T_SB_SA_RT1_.exit72: ; preds = %.lr.ph.i.i68
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 %i.l
  store ptr %i.ci, ptr %i.d, align 8, !tbaa !685
  br label %.lr.ph.i.i.i74

.lr.ph.i.i.i74:                                   ; preds = %_ZSt22__uninitialized_move_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEES7_NS0_18throwing_allocatorIS6_EEET0_T_SB_SA_RT1_.exit72, %.lr.ph.i.i.i74
  %.07.i.i.i75 = phi ptr [ %i.cj, %.lr.ph.i.i.i74 ], [ %1, %_ZSt22__uninitialized_move_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEES7_NS0_18throwing_allocatorIS6_EEET0_T_SB_SA_RT1_.exit72 ] ; 2 uses
  store ptr %i.j, ptr %.07.i.i.i75, align 8, !tbaa !423
  %i.cj = getelementptr inbounds nuw i8, ptr %.07.i.i.i75, i64 8 ; 2 uses
  %.not.i.i.i76 = icmp eq ptr %i.cj, %i.e
  br i1 %.not.i.i.i76, label %_ZSt4fillIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEES6_EvT_S8_RKT0_.exit, label %.lr.ph.i.i.i74, !llvm.loop !60

bb.j:                                             ; preds = %bb.b
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !686 ; 5 uses
  %i.cl = ptrtoint ptr %i.ck to i64               ; 3 uses
  %i.cm = sub i64 %i.g, %i.cl
  %i.cn = ashr exact i64 %i.cm, 3                 ; 4 uses
  %i.co = sub nsw i64 1152921504606846975, %i.cn
  %i.cp = icmp ult i64 %i.co, %2
  br i1 %i.cp, label %bb.k, label %_ZNKSt6vectorIPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEENS0_18throwing_allocatorIS6_EEE12_M_check_lenEmPKc.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #29
  unreachable

_ZNKSt6vectorIPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEENS0_18throwing_allocatorIS6_EEE12_M_check_lenEmPKc.exit: ; preds = %bb.j
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cn, i64 %2)
  %i.cq = add nsw i64 %.sroa.speculated.i, %i.cn  ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.cn
  %i.cs = tail call i64 @llvm.umin.i64(i64 %i.cq, i64 1152921504606846975)
  %i.ct = select i1 %i.cr, i64 1152921504606846975, i64 %i.cs ; 3 uses
  %i.cu = ptrtoint ptr %1 to i64
  %i.cv = sub i64 %i.cu, %i.cl
  %.not.i78 = icmp eq i64 %i.ct, 0
  br i1 %.not.i78, label %.lr.ph.preheader.i80, label %bb.l

bb.l:                                             ; preds = %_ZNKSt6vectorIPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEENS0_18throwing_allocatorIS6_EEE12_M_check_lenEmPKc.exit
  %i.cw = tail call noundef ptr @_ZN4test18throwing_allocatorIPNS_8internal20pointer_stable_mixinINS1_10value_typeIiEEEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.ct)
  br label %.lr.ph.preheader.i80

.lr.ph.preheader.i80:                             ; preds = %bb.l, %_ZNKSt6vectorIPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEENS0_18throwing_allocatorIS6_EEE12_M_check_lenEmPKc.exit
  %i.cx = phi ptr [ %i.cw, %bb.l ], [ null, %_ZNKSt6vectorIPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEENS0_18throwing_allocatorIS6_EEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cv ; 3 uses
  %.pre.i81 = load ptr, ptr %3, align 8, !tbaa !423 ; 2 uses
  %min.iters.check132 = icmp samesign ult i64 %2, 4
  br i1 %min.iters.check132, label %.lr.ph.i82.preheader, label %vector.ph133

vector.ph133:                                     ; preds = %.lr.ph.preheader.i80
  %n.vec134 = and i64 %2, -4                      ; 3 uses
  %i.cz = shl nuw i64 %n.vec134, 3
  %i.da = getelementptr i8, ptr %i.cy, i64 %i.cz
  %i.db = and i64 %2, 3
  %broadcast.splatinsert135 = insertelement <2 x ptr> poison, ptr %.pre.i81, i64 0
  %broadcast.splat136 = shufflevector <2 x ptr> %broadcast.splatinsert135, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph133
  %index138 = phi i64 [ 0, %vector.ph133 ], [ %index.next140, %vector.body137 ] ; 2 uses
  %i.dc = shl i64 %index138, 3
  %next.gep139 = getelementptr i8, ptr %i.cy, i64 %i.dc ; 2 uses
  %i.dd = getelementptr i8, ptr %next.gep139, i64 16
  store <2 x ptr> %broadcast.splat136, ptr %next.gep139, align 8, !tbaa !423
  store <2 x ptr> %broadcast.splat136, ptr %i.dd, align 8, !tbaa !423
  %index.next140 = add nuw i64 %index138, 4       ; 2 uses
  %i.de = icmp eq i64 %index.next140, %n.vec134
  br i1 %i.de, label %middle.block141, label %vector.body137, !llvm.loop !2077

middle.block141:                                  ; preds = %vector.body137
  %cmp.n142 = icmp eq i64 %2, %n.vec134
  br i1 %cmp.n142, label %_ZSt24__uninitialized_fill_n_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEEmS6_NS0_18throwing_allocatorIS6_EEET_SA_T0_RKT1_RT2_.exit87, label %.lr.ph.i82.preheader

.lr.ph.i82.preheader:                             ; preds = %.lr.ph.preheader.i80, %middle.block141
  %.010.i83.ph = phi ptr [ %i.cy, %.lr.ph.preheader.i80 ], [ %i.da, %middle.block141 ]
  %.079.i84.ph = phi i64 [ %2, %.lr.ph.preheader.i80 ], [ %i.db, %middle.block141 ]
  br label %.lr.ph.i82

.lr.ph.i82:                                       ; preds = %.lr.ph.i82.preheader, %.lr.ph.i82
  %.010.i83 = phi ptr [ %i.dg, %.lr.ph.i82 ], [ %.010.i83.ph, %.lr.ph.i82.preheader ] ; 2 uses
  %.079.i84 = phi i64 [ %i.df, %.lr.ph.i82 ], [ %.079.i84.ph, %.lr.ph.i82.preheader ]
  store ptr %.pre.i81, ptr %.010.i83, align 8, !tbaa !423
  %i.df = add i64 %.079.i84, -1                   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.010.i83, i64 8
  %.not.i85 = icmp eq i64 %i.df, 0
  br i1 %.not.i85, label %_ZSt24__uninitialized_fill_n_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEEmS6_NS0_18throwing_allocatorIS6_EEET_SA_T0_RKT1_RT2_.exit87, label %.lr.ph.i82, !llvm.loop !2078

_ZSt24__uninitialized_fill_n_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEEmS6_NS0_18throwing_allocatorIS6_EEET_SA_T0_RKT1_RT2_.exit87: ; preds = %.lr.ph.i82, %middle.block141
  %i.dh = icmp eq ptr %i.ck, %1
  br i1 %i.dh, label %_ZSt34__uninitialized_move_if_noexcept_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEES7_NS0_18throwing_allocatorIS6_EEET0_T_SB_SA_RT1_.exit, label %.lr.ph.i.i88

.lr.ph.i.i88:                                     ; preds = %_ZSt24__uninitialized_fill_n_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEEmS6_NS0_18throwing_allocatorIS6_EEET_SA_T0_RKT1_RT2_.exit87, %.lr.ph.i.i88
  %.09.i.i89 = phi ptr [ %i.dk, %.lr.ph.i.i88 ], [ %i.cx, %_ZSt24__uninitialized_fill_n_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEEmS6_NS0_18throwing_allocatorIS6_EEET_SA_T0_RKT1_RT2_.exit87 ] ; 2 uses
  %.sroa.05.08.i.i90 = phi ptr [ %i.dj, %.lr.ph.i.i88 ], [ %i.ck, %_ZSt24__uninitialized_fill_n_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEEmS6_NS0_18throwing_allocatorIS6_EEET_SA_T0_RKT1_RT2_.exit87 ] ; 2 uses
  %i.di = load ptr, ptr %.sroa.05.08.i.i90, align 8, !tbaa !423
  store ptr %i.di, ptr %.09.i.i89, align 8, !tbaa !423
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i90, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.09.i.i89, i64 8 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %1
  br i1 %i.dl, label %_ZSt34__uninitialized_move_if_noexcept_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEES7_NS0_18throwing_allocatorIS6_EEET0_T_SB_SA_RT1_.exit, label %.lr.ph.i.i88, !llvm.loop !2073

_ZSt34__uninitialized_move_if_noexcept_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEES7_NS0_18throwing_allocatorIS6_EEET0_T_SB_SA_RT1_.exit: ; preds = %.lr.ph.i.i88, %_ZSt24__uninitialized_fill_n_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEEmS6_NS0_18throwing_allocatorIS6_EEET_SA_T0_RKT1_RT2_.exit87
  %.0.lcssa.i.i91 = phi ptr [ %i.cx, %_ZSt24__uninitialized_fill_n_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEEmS6_NS0_18throwing_allocatorIS6_EEET_SA_T0_RKT1_RT2_.exit87 ], [ %i.dk, %.lr.ph.i.i88 ]
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.0.lcssa.i.i91, i64 %2 ; 2 uses
  %i.dn = icmp eq ptr %1, %i.e
  br i1 %i.dn, label %_ZSt34__uninitialized_move_if_noexcept_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEES7_NS0_18throwing_allocatorIS6_EEET0_T_SB_SA_RT1_.exit96, label %.lr.ph.i.i92

.lr.ph.i.i92:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEES7_NS0_18throwing_allocatorIS6_EEET0_T_SB_SA_RT1_.exit, %.lr.ph.i.i92
  %.09.i.i93 = phi ptr [ %i.dq, %.lr.ph.i.i92 ], [ %i.dm, %_ZSt34__uninitialized_move_if_noexcept_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEES7_NS0_18throwing_allocatorIS6_EEET0_T_SB_SA_RT1_.exit ] ; 2 uses
  %.sroa.05.08.i.i94 = phi ptr [ %i.dp, %.lr.ph.i.i92 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEES7_NS0_18throwing_allocatorIS6_EEET0_T_SB_SA_RT1_.exit ] ; 2 uses
  %i.do = load ptr, ptr %.sroa.05.08.i.i94, align 8, !tbaa !423
  store ptr %i.do, ptr %.09.i.i93, align 8, !tbaa !423
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i94, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.09.i.i93, i64 8 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.e
  br i1 %i.dr, label %_ZSt34__uninitialized_move_if_noexcept_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEES7_NS0_18throwing_allocatorIS6_EEET0_T_SB_SA_RT1_.exit96, label %.lr.ph.i.i92, !llvm.loop !2073

_ZSt34__uninitialized_move_if_noexcept_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEES7_NS0_18throwing_allocatorIS6_EEET0_T_SB_SA_RT1_.exit96: ; preds = %.lr.ph.i.i92, %_ZSt34__uninitialized_move_if_noexcept_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEES7_NS0_18throwing_allocatorIS6_EEET0_T_SB_SA_RT1_.exit
  %.0.lcssa.i.i95 = phi ptr [ %i.dm, %_ZSt34__uninitialized_move_if_noexcept_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEES7_NS0_18throwing_allocatorIS6_EEET0_T_SB_SA_RT1_.exit ], [ %i.dq, %.lr.ph.i.i92 ]
  %.not.i97 = icmp eq ptr %i.ck, null
  br i1 %.not.i97, label %_ZNSt12_Vector_baseIPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEENS0_18throwing_allocatorIS6_EEE13_M_deallocateEPS6_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEES7_NS0_18throwing_allocatorIS6_EEET0_T_SB_SA_RT1_.exit96
  %i.ds = load ptr, ptr %i.b, align 8, !tbaa !696
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = sub i64 %i.dt, %i.cl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.du) #32
  br label %_ZNSt12_Vector_baseIPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEENS0_18throwing_allocatorIS6_EEE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseIPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEENS0_18throwing_allocatorIS6_EEE13_M_deallocateEPS6_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEES7_NS0_18throwing_allocatorIS6_EEET0_T_SB_SA_RT1_.exit96, %bb.m
  store ptr %i.cx, ptr %i.a, align 8, !tbaa !686
  store ptr %.0.lcssa.i.i95, ptr %i.d, align 8, !tbaa !685
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.ct
  store ptr %i.dv, ptr %i.b, align 8, !tbaa !696
  br label %_ZSt4fillIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEES6_EvT_S8_RKT0_.exit

_ZSt4fillIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEES6_EvT_S8_RKT0_.exit: ; preds = %.lr.ph.i.i.i74, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZSt22__uninitialized_move_aIPPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEES7_NS0_18throwing_allocatorIS6_EEET0_T_SB_SA_RT1_.exit72.thread, %_ZNSt12_Vector_baseIPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEENS0_18throwing_allocatorIS6_EEE13_M_deallocateEPS6_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN4test18throwing_allocatorIPNS_8internal20pointer_stable_mixinINS1_10value_typeIiEEEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = load atomic i8, ptr @_ZGVZN4entt7type_idIPN4test8internal20pointer_stable_mixinINS2_10value_typeIiEEEEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN4entt7type_idIPN4test8internal20pointer_stable_mixinINS2_10value_typeIiEEEEEERKNS_9type_infoEv.exit, !prof !256

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIPN4test8internal20pointer_stable_mixinINS2_10value_typeIiEEEEEERKNS_9type_infoEvE8instance) #28
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN4entt7type_idIPN4test8internal20pointer_stable_mixinINS2_10value_typeIiEEEEEERKNS_9type_infoEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IPN4test8internal20pointer_stable_mixinINS3_10value_typeIiEEEEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIPN4test8internal20pointer_stable_mixinINS2_10value_typeIiEEEEEERKNS_9type_infoEvE8instance) #28
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIPN4test8internal20pointer_stable_mixinINS2_10value_typeIiEEEEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIPN4test8internal20pointer_stable_mixinINS2_10value_typeIiEEEEEERKNS_9type_infoEvE8instance) #28
  br label %_ZN4entt7type_idIPN4test8internal20pointer_stable_mixinINS2_10value_typeIiEEEEEERKNS_9type_infoEv.exit

_ZN4entt7type_idIPN4test8internal20pointer_stable_mixinINS2_10value_typeIiEEEEEERKNS_9type_infoEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idIPN4test8internal20pointer_stable_mixinINS2_10value_typeIiEEEEEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !259 ; 3 uses
  store i32 %i.f, ptr %i.a, align 4, !tbaa !176
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !559  ; 6 uses
  %i.i = zext i32 %i.f to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !339
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !249  ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = lshr exact i64 %i.o, 3
  %i.q = add nuw nsw i64 %i.p, 4294967295
  %i.r = and i64 %i.q, %i.i
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN4entt7type_idIPN4test8internal20pointer_stable_mixinINS2_10value_typeIiEEEEEERKNS_9type_infoEv.exit
  %.07.in.i.i.i = phi ptr [ %i.s, %_ZN4entt7type_idIPN4test8internal20pointer_stable_mixinINS2_10value_typeIiEEEEEERKNS_9type_infoEv.exit ], [ %i.v, %bb.e ]
  %.07.i.i.i = load i64, ptr %.07.in.i.i.i, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.07.i.i.i, -1
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %.07.i.i.i ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !176
  %i.y = icmp eq i32 %i.x, %i.f
  br i1 %i.y, label %_ZNK4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE4findERS6_.exit.loopexit.i, label %bb.d, !llvm.loop !109

bb.f:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !611 ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.u to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ad
  br label %_ZNK4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE8containsERS6_.exit

_ZNK4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE4findERS6_.exit.loopexit.i: ; preds = %bb.e
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !611
  br label %_ZNK4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE8containsERS6_.exit

_ZNK4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE8containsERS6_.exit: ; preds = %bb.f, %_ZNK4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE4findERS6_.exit.loopexit.i
  %i.af = phi ptr [ %i.aa, %bb.f ], [ %.pre.i, %_ZNK4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE4findERS6_.exit.loopexit.i ]
  %.sroa.0.1.i.i.i = phi ptr [ %i.ae, %bb.f ], [ %i.v, %_ZNK4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE4findERS6_.exit.loopexit.i ]
  %.not = icmp eq ptr %.sroa.0.1.i.i.i, %i.af
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNK4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE8containsERS6_.exit
  %i.ag = call { ptr, i8 } @_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE20insert_or_do_nothingIRS6_JEEEDaOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(52) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 16 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !172 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !559
  %i.al = call noundef i64 @_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE5eraseERS6_(ptr noundef nonnull align 8 dereferenceable(52) %i.ak, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  %i.am = call ptr @__cxa_allocate_exception(i64 1) #28
  call void @__cxa_throw(ptr %i.am, ptr nonnull @_ZTIN4test28throwing_allocator_exceptionE, ptr null) #29
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.an = add i64 %i.ai, -1
  store i64 %i.an, ptr %i.ah, align 8, !tbaa !172
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE8containsERS6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ao = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.ao, label %bb.k, label %_ZNSt15__new_allocatorIPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEEE8allocateEmPKv.exit, !prof !145

bb.k:                                             ; preds = %bb.j
  %i.ap = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

bb.m:                                             ; preds = %bb.k
  call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt15__new_allocatorIPN4test8internal20pointer_stable_mixinINS1_10value_typeIiEEEEE8allocateEmPKv.exit: ; preds = %bb.j
  %i.aq = shl nuw nsw i64 %1, 3
end_hunk_2
begin_hunk_3_@_ZN32SighMixin_ThrowingAllocator_TestIiE8TestBodyEv:bb.a
  %.pn421.pn = phi { ptr, i32 } [ %i.awm, %bb.ss ], [ %.pn421, %bb.sv ], [ %.pn421, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i886 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %102) #28
  br label %bb.ta

bb.sw:                                            ; preds = %bb.sk, %_ZN7testing7MessageD2Ev.exit884
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %102) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #28
  br label %bb.sx

bb.sx:                                            ; preds = %_ZN7testing7MessageD2Ev.exit876, %_ZN7testing7MessageD2Ev.exit865, %_ZN7testing7MessageD2Ev.exit850, %bb.sw, %_ZN7testing8internal14TrueWithStringD2Ev.exit838
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #28
  br label %bb.sy

bb.sy:                                            ; preds = %_ZN7testing7MessageD2Ev.exit816, %_ZN7testing7MessageD2Ev.exit801, %_ZN7testing8internal14TrueWithStringD2Ev.exit789, %bb.sx
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #28
  br label %bb.sz

bb.sz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit768, %_ZN7testing7MessageD2Ev.exit729, %_ZN7testing7MessageD2Ev.exit696, %_ZN7testing7MessageD2Ev.exit684, %_ZN7testing7MessageD2Ev.exit650, %_ZN7testing7MessageD2Ev.exit638, %_ZN7testing15AssertionResultD2Ev.exit586, %_ZN7testing15AssertionResultD2Ev.exit563, %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing8internal14TrueWithStringD2Ev.exit750, %_ZN7testing8internal14TrueWithStringD2Ev.exit717, %_ZN7testing8internal14TrueWithStringD2Ev.exit672, %_ZN7testing8internal14TrueWithStringD2Ev.exit628, %_ZN7testing8internal14TrueWithStringD2Ev.exit548, %_ZN7testing8internal14TrueWithStringD2Ev.exit, %bb.sy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @_ZN4entt14basic_registryINS_6entityEN4test18throwing_allocatorIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(600) dereferenceable(600) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @_ZN4entt16basic_sigh_mixinINS_13basic_storageIiNS_6entityEN4test18throwing_allocatorIiEEEENS_14basic_registryIS2_NS4_IS2_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.ta:                                            ; preds = %_ZN7testing7MessageD2Ev.exit887, %bb.sm
  %.pn421.pn.pn = phi { ptr, i32 } [ %.pn421.pn, %_ZN7testing7MessageD2Ev.exit887 ], [ %i.awd, %bb.sm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #28
  br label %bb.tb

bb.tb:                                            ; preds = %bb.ta, %bb.sl, %_ZN7testing7MessageD2Ev.exit871, %_ZN7testing7MessageD2Ev.exit856, %_ZN7testing8internal14TrueWithStringD2Ev.exit844, %bb.pw, %bb.pv
  %.pn421.pn.pn.pn = phi { ptr, i32 } [ %.pn421.pn.pn, %bb.ta ], [ %.pn417.pn.pn, %bb.sl ], [ %.pn413.pn.pn, %_ZN7testing7MessageD2Ev.exit871 ], [ %.pn409.pn.pn, %_ZN7testing7MessageD2Ev.exit856 ], [ %.pn405.pn.pn, %_ZN7testing8internal14TrueWithStringD2Ev.exit844 ], [ %i.aqn, %bb.pw ], [ %i.aqm, %bb.pv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #28
  br label %bb.tc

bb.tc:                                            ; preds = %bb.tb, %bb.pu, %_ZN7testing7MessageD2Ev.exit822, %_ZN7testing7MessageD2Ev.exit807, %_ZN7testing8internal14TrueWithStringD2Ev.exit795, %bb.nn
  %.pn421.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn421.pn.pn.pn, %bb.tb ], [ %i.aql, %bb.pu ], [ %.pn391.pn.pn, %_ZN7testing7MessageD2Ev.exit822 ], [ %.pn387.pn.pn, %_ZN7testing7MessageD2Ev.exit807 ], [ %.pn383.pn.pn, %_ZN7testing8internal14TrueWithStringD2Ev.exit795 ], [ %i.akz, %bb.nn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #28
  br label %bb.td

bb.td:                                            ; preds = %bb.tc, %bb.nm, %_ZN7testing7MessageD2Ev.exit774, %_ZN7testing8internal14TrueWithStringD2Ev.exit762, %_ZN7testing7MessageD2Ev.exit735, %_ZN7testing8internal14TrueWithStringD2Ev.exit723, %bb.kf, %_ZN7testing7MessageD2Ev.exit702, %_ZN7testing7MessageD2Ev.exit690, %_ZN7testing8internal14TrueWithStringD2Ev.exit678, %bb.ic, %_ZN7testing7MessageD2Ev.exit656, %_ZN7testing7MessageD2Ev.exit644, %_ZN7testing8internal14TrueWithStringD2Ev.exit632, %bb.fz, %bb.fy, %bb.en, %bb.em, %_ZN7testing8internal14TrueWithStringD2Ev.exit553, %bb.cu, %bb.ct, %_ZN7testing8internal14TrueWithStringD2Ev.exit486, %bb.ag, %bb.af, %bb.ae
  %.pn421.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn421.pn.pn.pn.pn, %bb.tc ], [ %i.aky, %bb.nm ], [ %.pn369.pn.pn, %_ZN7testing7MessageD2Ev.exit774 ], [ %.pn364.pn.pn.pn, %_ZN7testing8internal14TrueWithStringD2Ev.exit762 ], [ %.pn354.pn.pn, %_ZN7testing7MessageD2Ev.exit735 ], [ %.pn350.pn.pn, %_ZN7testing8internal14TrueWithStringD2Ev.exit723 ], [ %i.adk, %bb.kf ], [ %.pn336.pn.pn, %_ZN7testing7MessageD2Ev.exit702 ], [ %.pn332.pn.pn, %_ZN7testing7MessageD2Ev.exit690 ], [ %.pn328.pn.pn, %_ZN7testing8internal14TrueWithStringD2Ev.exit678 ], [ %i.yr, %bb.ic ], [ %.pn316.pn.pn, %_ZN7testing7MessageD2Ev.exit656 ], [ %.pn312.pn.pn, %_ZN7testing7MessageD2Ev.exit644 ], [ %.pn308.pn.pn, %_ZN7testing8internal14TrueWithStringD2Ev.exit632 ], [ %i.tt, %bb.fz ], [ %.pn294.pn.pn, %bb.fy ], [ %i.qh, %bb.en ], [ %.pn290.pn.pn, %bb.em ], [ %.pn286.pn.pn, %_ZN7testing8internal14TrueWithStringD2Ev.exit553 ], [ %i.lv, %bb.cu ], [ %.pn274.pn.pn, %bb.ct ], [ %.pn270.pn.pn, %_ZN7testing8internal14TrueWithStringD2Ev.exit486 ], [ %i.ed, %bb.ag ], [ %i.ec, %bb.af ], [ %i.eb, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @_ZN4entt14basic_registryINS_6entityEN4test18throwing_allocatorIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(600) dereferenceable(600) %3) #28
  br label %bb.te

bb.te:                                            ; preds = %bb.td, %bb.ad
  %.pn421.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn421.pn.pn.pn.pn.pn, %bb.td ], [ %i.ea, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @_ZN4entt16basic_sigh_mixinINS_13basic_storageIiNS_6entityEN4test18throwing_allocatorIiEEEENS_14basic_registryIS2_NS4_IS2_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn421.pn.pn.pn.pn.pn.pn

bb.tf:                                            ; preds = %bb.qo, %bb.qj, %bb.of, %bb.oa, %bb.mk, %bb.mf, %bb.kx, %bb.ks, %bb.is, %bb.in, %bb.gr, %bb.gm, %bb.dk, %bb.df, %bb.aw, %bb.ar
  %i.awt = landingpad { ptr, i32 }
          catch ptr null
  %i.awu = extractvalue { ptr, i32 } %i.awt, 0
  call void @__clang_call_terminate(ptr %i.awu) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4test18throwing_allocatorIiE13throw_counterIiEEvm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.d = load atomic i8, ptr @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit, !prof !256

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #28
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IiEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #28
  %i.g = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #28
  br label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit

_ZN4entt7type_idIiEERKNS_9type_infoEv.exit:       ; preds = %bb.a, %bb.b, %bb.c
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !259
  store i32 %i.h, ptr %i.a, align 4, !tbaa !176
  %i.i = call { ptr, i8 } @_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE20insert_or_do_nothingIjJEEEDaOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(52) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 16
  store i64 %1, ptr %i.j, align 8, !tbaa !172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4test18throwing_allocatorIiE13throw_counterIN4entt6entityEEEvm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.d = load atomic i8, ptr @_ZGVZN4entt7type_idINS_6entityEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN4entt7type_idINS_6entityEEERKNS_9type_infoEv.exit, !prof !256

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idINS_6entityEEERKNS_9type_infoEvE8instance) #28
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN4entt7type_idINS_6entityEEERKNS_9type_infoEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2INS_6entityEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idINS_6entityEEERKNS_9type_infoEvE8instance) #28
  %i.g = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idINS_6entityEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idINS_6entityEEERKNS_9type_infoEvE8instance) #28
  br label %_ZN4entt7type_idINS_6entityEEERKNS_9type_infoEv.exit

_ZN4entt7type_idINS_6entityEEERKNS_9type_infoEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idINS_6entityEEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !259
  store i32 %i.h, ptr %i.a, align 4, !tbaa !176
  %i.i = call { ptr, i8 } @_ZN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEE20insert_or_do_nothingIjJEEEDaOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(52) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 16
  store i64 %1, ptr %i.j, align 8, !tbaa !172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN4entt16basic_sigh_mixinINS_13basic_storageIiNS_6entityEN4test18throwing_allocatorIiEEEENS_14basic_registryIS2_NS4_IS2_EEEEE7emplaceIJiEEEDcS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(328) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call { ptr, i64 } @_ZN4entt13basic_storageIiNS_6entityEN4test18throwing_allocatorIiEEE15emplace_elementIJiEEEDaS1_bDpOT_(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, i1 noundef zeroext false, ptr noundef nonnull align 4 dereferenceable(4) %2) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !598
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !599  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !600  ; 2 uses
  %.not5.i = icmp eq ptr %i.f, %i.g
  br i1 %.not5.i, label %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityEN4test18throwing_allocatorIS2_EEEES2_ENS4_IiEEE7publishES7_S2_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.06.i = phi i64 [ %i.l, %.lr.ph.i ], [ %i.k, %.lr.ph.preheader.i ]
  %i.l = add i64 %.06.i, -1                       ; 3 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !600
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.l ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !602
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !603
  tail call void %i.p(ptr noundef %i.q, ptr noundef nonnull align 8 dereferenceable(600) %i.c, i32 noundef %1), !inline_history !104
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityEN4test18throwing_allocatorIS2_EEEES2_ENS4_IiEEE7publishES7_S2_.exit, label %.lr.ph.i, !llvm.loop !93

_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityEN4test18throwing_allocatorIS2_EEEES2_ENS4_IiEEE7publishES7_S2_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = and i32 %1, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = lshr i64 %i.t, 12
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !617
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !227
  %i.z = and i64 %i.t, 4095
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !171
  %i.ac = and i32 %i.ab, 1048575
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = lshr i64 %i.ad, 10
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !568
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !352
  %i.ai = and i64 %i.ad, 1023
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ai
  ret ptr %i.aj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt16basic_sparse_setINS_6entityEN4test18throwing_allocatorIS1_EEE7compactEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i8, ptr %i.a, align 8, !tbaa !605
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZNSt6vectorIN4entt6entityEN4test18throwing_allocatorIS1_EEE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S5_EESA_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !563  ; 3 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !562  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !172  ; 2 uses
  store i64 1048575, ptr %i.h, align 8, !tbaa !172
  %.not37 = icmp eq ptr %i.f, %i.g
  br i1 %.not37, label %.critedge, label %.lr.ph40.preheader

.lr.ph40.preheader:                               ; preds = %bb.b
  %1 = ptrtoint ptr %i.f to i64
  %2 = ptrtoint ptr %i.g to i64
  %3 = sub i64 %1, %2
  %4 = ashr exact i64 %3, 2
  br label %.lr.ph40

bb.c:                                             ; preds = %.lr.ph40
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %.critedge, label %.lr.ph40, !llvm.loop !2162

.lr.ph40:                                         ; preds = %.lr.ph40.preheader, %bb.c
  %.038 = phi i64 [ %i.j, %bb.c ], [ %4, %.lr.ph40.preheader ] ; 2 uses
  %i.j = add i64 %.038, -1                        ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !171
  %i.m = icmp ugt i32 %i.l, -1048577
  br i1 %i.m, label %bb.c, label %..critedge_crit_edge41, !llvm.loop !2162

..critedge_crit_edge41:                           ; preds = %.lr.ph40
  br label %.critedge, !llvm.loop !2162

.critedge:                                        ; preds = %bb.c, %..critedge_crit_edge41, %bb.b
  %.0.lcssa = phi i64 [ 0, %bb.b ], [ %.038, %..critedge_crit_edge41 ], [ 0, %bb.c ] ; 2 uses
  %.not2131 = icmp eq i64 %i.i, 1048575
  br i1 %.not2131, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.critedge2
  %i.o = phi ptr [ %i.g, %.lr.ph ], [ %i.as, %.critedge2 ] ; 2 uses
  %.133 = phi i64 [ %.0.lcssa, %.lr.ph ], [ %.3, %.critedge2 ] ; 3 uses
  %.03032 = phi i64 [ %i.i, %.lr.ph ], [ %i.s, %.critedge2 ] ; 5 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.03032
  %i.q = load i32, ptr %i.p, align 4, !tbaa !171
  %i.r = and i32 %i.q, 1048575                    ; 2 uses
  %i.s = zext nneg i32 %i.r to i64
  %i.t = icmp ult i64 %.03032, %.133
  br i1 %i.t, label %bb.e, label %.critedge2

bb.e:                                             ; preds = %bb.d
  %i.u = add i64 %.133, -1                        ; 4 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !158
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.u, i64 noundef %.03032)
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !562  ; 6 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.u
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !171 ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.03032
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !171
  %i.ac = trunc i64 %.03032 to i32
  %i.ad = and i32 %i.ac, 1048575
  %i.ae = and i32 %i.aa, -1048576
  %i.af = or disjoint i32 %i.ae, %i.ad
  %i.ag = and i32 %i.aa, 1048575
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = lshr i64 %i.ah, 12
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !617
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ai
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !227
  %i.am = and i64 %i.ah, 4095
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am
  store i32 %i.af, ptr %i.an, align 4, !tbaa !171
  %.not2243 = icmp eq i64 %i.u, 0
  br i1 %.not2243, label %.critedge2, label %.lr.ph46

bb.f:                                             ; preds = %.lr.ph46
  %.not22 = icmp eq i64 %i.ao, 0
  br i1 %.not22, label %.critedge2, label %.lr.ph46, !llvm.loop !2163

.lr.ph46:                                         ; preds = %bb.e, %bb.f
  %.244 = phi i64 [ %i.ao, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %i.ao = add i64 %.244, -1                       ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !171
  %i.ar = icmp ugt i32 %i.aq, -1048577
  br i1 %i.ar, label %bb.f, label %..critedge2.loopexit_crit_edge48, !llvm.loop !2163

..critedge2.loopexit_crit_edge48:                 ; preds = %.lr.ph46
  br label %.critedge2, !llvm.loop !2163

.critedge2:                                       ; preds = %bb.f, %bb.e, %..critedge2.loopexit_crit_edge48, %bb.d
  %i.as = phi ptr [ %i.o, %bb.d ], [ %i.y, %bb.e ], [ %i.y, %..critedge2.loopexit_crit_edge48 ], [ %i.y, %bb.f ]
  %.3 = phi i64 [ %.133, %bb.d ], [ 0, %bb.e ], [ %.244, %..critedge2.loopexit_crit_edge48 ], [ 0, %bb.f ] ; 2 uses
  %.not21 = icmp eq i32 %i.r, 1048575
  br i1 %.not21, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !2164

._crit_edge.loopexit:                             ; preds = %.critedge2
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !227
  %.pre34 = load ptr, ptr %i.e, align 8, !tbaa !227
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.critedge
  %i.at = phi ptr [ %i.f, %.critedge ], [ %.pre34, %._crit_edge.loopexit ]
  %i.au = phi ptr [ %i.g, %.critedge ], [ %.pre, %._crit_edge.loopexit ]
  %.1.lcssa = phi i64 [ %.0.lcssa, %.critedge ], [ %.3, %._crit_edge.loopexit ]
  %i.av = getelementptr inbounds [4 x i8], ptr %i.au, i64 %.1.lcssa ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.at
  br i1 %i.aw, label %_ZNSt6vectorIN4entt6entityEN4test18throwing_allocatorIS1_EEE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S5_EESA_.exit, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS3_N4test18throwing_allocatorIS3_EEEEESA_ET0_T_SC_SB_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS3_N4test18throwing_allocatorIS3_EEEEESA_ET0_T_SC_SB_.exit.i.i: ; preds = %._crit_edge
  store ptr %i.av, ptr %i.e, align 8, !tbaa !563
  br label %_ZNSt6vectorIN4entt6entityEN4test18throwing_allocatorIS1_EEE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S5_EESA_.exit

_ZNSt6vectorIN4entt6entityEN4test18throwing_allocatorIS1_EEE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S5_EESA_.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS3_N4test18throwing_allocatorIS3_EEEEESA_ET0_T_SC_SB_.exit.i.i, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  %i.b = load ptr, ptr %2, align 8, !tbaa !148
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull %1, i64 noundef %i.a, ptr noundef %i.b, i64 noundef %i.d, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt16basic_sigh_mixinINS_13basic_storageIiNS_6entityEN4test18throwing_allocatorIiEEEENS_14basic_registryIS2_NS4_IS2_EEEEE6insertIJiETkSt14input_iteratorPKS2_TkSt14input_iteratorSD_EEvT0_T1_DpOT_(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !563
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !562
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2                   ; 2 uses
  %.not7.i = icmp eq ptr %1, %2
  br i1 %.not7.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.08.i = phi ptr [ %i.k, %.lr.ph.i ], [ %1, %bb.a ] ; 2 uses
  %i.i = load i32, ptr %.08.i, align 4, !tbaa !171
  %i.j = tail call { ptr, i64 } @_ZN4entt13basic_storageIiNS_6entityEN4test18throwing_allocatorIiEEE15emplace_elementIJRKiEEEDaS1_bDpOT_(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %i.i, i1 noundef zeroext true, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.08.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.k, %2
  br i1 %.not.i, label %_ZN4entt13basic_storageIiNS_6entityEN4test18throwing_allocatorIiEEE6insertITkSt14input_iteratorPKS1_TkSt14input_iteratorS8_EENS_8internal16storage_iteratorISt6vectorIPiNS3_ISC_EEELm1024EEET_T0_RKi.exit, label %.lr.ph.i, !llvm.loop !2165

_ZN4entt13basic_storageIiNS_6entityEN4test18throwing_allocatorIiEEE6insertITkSt14input_iteratorPKS1_TkSt14input_iteratorS8_EENS_8internal16storage_iteratorISt6vectorIPiNS3_ISC_EEELm1024EEET_T0_RKi.exit: ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !563
  %.pre13 = load ptr, ptr %i.a, align 8, !tbaa !562
  %.pre14 = ptrtoint ptr %.pre to i64
  %.pre15 = ptrtoint ptr %.pre13 to i64
  %.pre17 = sub i64 %.pre14, %.pre15
  %.pre19 = ashr exact i64 %.pre17, 2             ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !598
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !615
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !615
  %i.r = icmp eq ptr %i.o, %i.q
  %.not10 = icmp eq i64 %i.h, %.pre19
  %or.cond = select i1 %i.r, i1 true, i1 %.not10
  br i1 %or.cond, label %.loopexit, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %_ZN4entt13basic_storageIiNS_6entityEN4test18throwing_allocatorIiEEE6insertITkSt14input_iteratorPKS1_TkSt14input_iteratorS8_EENS_8internal16storage_iteratorISt6vectorIPiNS3_ISC_EEELm1024EEET_T0_RKi.exit, %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityEN4test18throwing_allocatorIS2_EEEES2_ENS4_IiEEE7publishES7_S2_.exit
  %.011 = phi i64 [ %i.ah, %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityEN4test18throwing_allocatorIS2_EEEES2_ENS4_IiEEE7publishES7_S2_.exit ], [ %i.h, %_ZN4entt13basic_storageIiNS_6entityEN4test18throwing_allocatorIiEEE6insertITkSt14input_iteratorPKS1_TkSt14input_iteratorS8_EENS_8internal16storage_iteratorISt6vectorIPiNS3_ISC_EEELm1024EEET_T0_RKi.exit ] ; 2 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !562
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.011
  %i.u = load i32, ptr %i.t, align 4, !tbaa !171
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !599  ; 2 uses
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !600  ; 2 uses
  %.not5.i = icmp eq ptr %i.v, %i.w
  br i1 %.not5.i, label %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityEN4test18throwing_allocatorIS2_EEEES2_ENS4_IiEEE7publishES7_S2_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.split
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 4
  br label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %.lr.ph.i8, %.lr.ph.preheader.i
  %.06.i = phi i64 [ %i.ab, %.lr.ph.i8 ], [ %i.aa, %.lr.ph.preheader.i ]
  %i.ab = add i64 %.06.i, -1                      ; 3 uses
  %i.ac = load ptr, ptr %i.n, align 8, !tbaa !600
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ab ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !602
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !603
  tail call void %i.af(ptr noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(600) %i.m, i32 noundef %i.u), !inline_history !104
  %.not.i9 = icmp eq i64 %i.ab, 0
  br i1 %.not.i9, label %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityEN4test18throwing_allocatorIS2_EEEES2_ENS4_IiEEE7publishES7_S2_.exit, label %.lr.ph.i8, !llvm.loop !93

_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityEN4test18throwing_allocatorIS2_EEEES2_ENS4_IiEEE7publishES7_S2_.exit: ; preds = %.lr.ph.i8, %.lr.ph.split
  %i.ah = add i64 %.011, 1                        ; 2 uses
  %.not = icmp eq i64 %i.ah, %.pre19
  br i1 %.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !2166

.loopexit:                                        ; preds = %_ZNK4entt4sighIFvRNS_14basic_registryINS_6entityEN4test18throwing_allocatorIS2_EEEES2_ENS4_IiEEE7publishES7_S2_.exit, %bb.a, %_ZN4entt13basic_storageIiNS_6entityEN4test18throwing_allocatorIiEEE6insertITkSt14input_iteratorPKS1_TkSt14input_iteratorS8_EENS_8internal16storage_iteratorISt6vectorIPiNS3_ISC_EEELm1024EEET_T0_RKi.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt16basic_sigh_mixinINS_13basic_storageIiNS_6entityEN4test18throwing_allocatorIiEEEENS_14basic_registryIS2_NS4_IS2_EEEEE6insertIJPKiETkSt14input_iteratorPKS2_TkSt14input_iteratorSF_EEvT0_T1_DpOT_(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !563
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !562
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2                   ; 2 uses
  %.not9.i = icmp eq ptr %1, %2
  br i1 %.not9.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = load ptr, ptr %3, align 8, !tbaa !352
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.011.i = phi ptr [ %i.l, %.lr.ph.i ], [ %1, %.lr.ph.i.preheader ] ; 2 uses
  %.0810.i = phi ptr [ %i.m, %.lr.ph.i ], [ %i.i, %.lr.ph.i.preheader ] ; 2 uses
end_hunk_3
