inline.NumInlined: 9532
inline.NumDeleted: 3275
begin_hunk_0_@_ZNSt3_V28__rotateIPiEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
bb.e:                                             ; preds = %.backedge, %bb.d
  %.086 = phi i64 [ %i.f, %bb.d ], [ %.086.be, %.backedge ] ; 11 uses
  %.082 = phi i64 [ %i.i, %bb.d ], [ %.082.be, %.backedge ] ; 22 uses
  %.058 = phi ptr [ %0, %bb.d ], [ %.058.be, %.backedge ] ; 25 uses
  %i.ar = sub nsw i64 %.086, %.082                ; 14 uses
  %i.as = icmp slt i64 %.082, %i.ar
  br i1 %i.as, label %bb.f, label %bb.i

end_hunk_0
begin_hunk_1_@_ZNSt3_V28__rotateIPiEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  br i1 %i.ay, label %.lr.ph110.preheader.a, label %._crit_edge111

.lr.ph110.preheader.a:                            ; preds = %bb.g
  %i.az = getelementptr [4 x i8], ptr %.058, i64 %.082 ; 7 uses
  %min.iters.check = icmp ult i64 %i.ar, 4
  br i1 %min.iters.check, label %.lr.ph110.preheader245, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph110.preheader.a
end_hunk_1
begin_hunk_2_@_ZNSt3_V28__rotateIPiEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %bound0 = icmp ult ptr %.058, %scevgep137
  %bound1 = icmp ult ptr %i.az, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph110.preheader245, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check138 = icmp ult i64 %i.ar, 16
  br i1 %min.iters.check138, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ar, 12
  %n.vec = and i64 %i.ar, 9223372036854775792     ; 6 uses
  %i.bd = shl i64 %n.vec, 2
  %i.be = getelementptr i8, ptr %i.az, i64 %i.bd
  %i.bf = shl i64 %n.vec, 2
end_hunk_2
begin_hunk_3_@_ZNSt3_V28__rotateIPiEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  store <8 x i32> %wide.load140, ptr %i.bi, align 4, !tbaa !3, !alias.scope !2257
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !2259

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %._crit_edge111, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph110.preheader245, label %vec.epilog.ph, !prof !613

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec146 = and i64 %i.ar, 9223372036854775804  ; 5 uses
  %3 = shl i64 %n.vec146, 2
  %4 = getelementptr i8, ptr %i.az, i64 %3
  %5 = shl i64 %n.vec146, 2
  %6 = getelementptr i8, ptr %.058, i64 %5        ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index147 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next152, %vec.epilog.vector.body ] ; 3 uses
  %7 = shl i64 %index147, 2
  %next.gep148 = getelementptr i8, ptr %i.az, i64 %7 ; 2 uses
  %8 = shl i64 %index147, 2
  %next.gep149 = getelementptr i8, ptr %.058, i64 %8 ; 2 uses
  %wide.load150 = load <4 x i32>, ptr %next.gep149, align 4, !tbaa !3, !alias.scope !2254, !noalias !2257
  %wide.load151 = load <4 x i32>, ptr %next.gep148, align 4, !tbaa !3, !alias.scope !2257
  store <4 x i32> %wide.load151, ptr %next.gep149, align 4, !tbaa !3, !alias.scope !2254, !noalias !2257
  store <4 x i32> %wide.load150, ptr %next.gep148, align 4, !tbaa !3, !alias.scope !2257
  %index.next152 = add nuw i64 %index147, 4       ; 2 uses
  %9 = icmp eq i64 %index.next152, %n.vec146
  br i1 %9, label %middle.block.a, label %vec.epilog.vector.body, !llvm.loop !2260

middle.block.a:                                   ; preds = %vec.epilog.vector.body
  %cmp.n.a = icmp eq i64 %i.ar, %n.vec146
  br i1 %cmp.n.a, label %._crit_edge111, label %.lr.ph110.preheader245

.lr.ph110.preheader245:                           ; preds = %vector.memcheck, %.lr.ph110.preheader.a, %vec.epilog.iter.check, %middle.block.a
  %.054108.ph = phi i64 [ 0, %.lr.ph110.preheader.a ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec146, %middle.block.a ] ; 3 uses
  %.055107.ph = phi ptr [ %i.az, %.lr.ph110.preheader.a ], [ %i.az, %vector.memcheck ], [ %i.be, %vec.epilog.iter.check ], [ %4, %middle.block.a ] ; 2 uses
  %.159106.ph = phi ptr [ %.058, %.lr.ph110.preheader.a ], [ %.058, %vector.memcheck ], [ %i.bg, %vec.epilog.iter.check ], [ %6, %middle.block.a ] ; 2 uses
  %i.bk = sub i64 %.086, %.082
  %xtraiter252 = and i64 %i.bk, 3                 ; 2 uses
  %lcmp.mod253.not = icmp eq i64 %xtraiter252, 0
end_hunk_3
begin_hunk_4_@_ZNSt3_V28__rotateIPiEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %i.bp = add nuw nsw i64 %.054108.prol, 1        ; 2 uses
  %prol.iter254.next = add i64 %prol.iter254, 1   ; 2 uses
  %prol.iter254.cmp.not = icmp eq i64 %prol.iter254.next, %xtraiter252
  br i1 %prol.iter254.cmp.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol, !llvm.loop !2261

.lr.ph110.prol.loopexit:                          ; preds = %.lr.ph110.prol, %.lr.ph110.preheader245
  %.lcssa.unr = phi ptr [ poison, %.lr.ph110.preheader245 ], [ %i.bn, %.lr.ph110.prol ]
end_hunk_4
begin_hunk_5_@_ZNSt3_V28__rotateIPiEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %i.bs = icmp ugt i64 %i.br, -4
  br i1 %i.bs, label %._crit_edge111, label %.lr.ph110

._crit_edge111:                                   ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110, %middle.block, %middle.block.a, %bb.g
  %.159.lcssa = phi ptr [ %.058, %bb.g ], [ %6, %middle.block.a ], [ %i.bg, %middle.block ], [ %.lcssa.unr, %.lr.ph110.prol.loopexit ], [ %i.ci, %.lr.ph110 ]
  %i.bt = srem i64 %.086, %.082                   ; 2 uses
  %.not67 = icmp eq i64 %i.bt, 0
  br i1 %.not67, label %_ZSt11swap_rangesIPiS0_ET0_T_S2_S1_.exit, label %bb.h
end_hunk_5
begin_hunk_6_@_ZNSt3_V28__rotateIPiEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %.055107, i64 16
  %i.ck = add nuw nsw i64 %.054108, 4             ; 2 uses
  %exitcond119.not.3 = icmp eq i64 %i.ck, %i.ar
  br i1 %exitcond119.not.3, label %._crit_edge111, label %.lr.ph110, !llvm.loop !2262

bb.h:                                             ; preds = %._crit_edge111
  %i.cl = sub nsw i64 %.082, %i.bt
end_hunk_6
begin_hunk_7_@_ZNSt3_V28__rotateIPiEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %next.gep161 = getelementptr i8, ptr %i.cy, i64 %offset.idx160 ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %next.gep161, i64 -32 ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %next.gep161, i64 -64 ; 2 uses
  %wide.load162 = load <8 x i32>, ptr %i.dg, align 4, !tbaa !3, !alias.scope !2263, !noalias !2266
  %wide.load163 = load <8 x i32>, ptr %i.dh, align 4, !tbaa !3, !alias.scope !2263, !noalias !2266
  %i.di = getelementptr inbounds i8, ptr %next.gep159, i64 -32 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %next.gep159, i64 -64 ; 2 uses
  %wide.load165 = load <8 x i32>, ptr %i.di, align 4, !tbaa !3, !alias.scope !2266
  %wide.load166 = load <8 x i32>, ptr %i.dj, align 4, !tbaa !3, !alias.scope !2266
  store <8 x i32> %wide.load165, ptr %i.dg, align 4, !tbaa !3, !alias.scope !2263, !noalias !2266
  store <8 x i32> %wide.load166, ptr %i.dh, align 4, !tbaa !3, !alias.scope !2263, !noalias !2266
  store <8 x i32> %wide.load162, ptr %i.di, align 4, !tbaa !3, !alias.scope !2266
  store <8 x i32> %wide.load163, ptr %i.dj, align 4, !tbaa !3, !alias.scope !2266
  %index.next173 = add nuw i64 %index157, 16      ; 2 uses
  %i.dk = icmp eq i64 %index.next173, %n.vec155
  br i1 %i.dk, label %middle.block174, label %vector.body156, !llvm.loop !2268

middle.block174:                                  ; preds = %vector.body156
  %cmp.n175 = icmp eq i64 %.082, %n.vec155
end_hunk_7
begin_hunk_8_@_ZNSt3_V28__rotateIPiEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %i.dq = mul i64 %index180, -4
  %next.gep182 = getelementptr i8, ptr %i.cy, i64 %i.dq
  %i.dr = getelementptr inbounds i8, ptr %next.gep182, i64 -16 ; 2 uses
  %wide.load183 = load <4 x i32>, ptr %i.dr, align 4, !tbaa !3, !alias.scope !2263, !noalias !2266
  %i.ds = getelementptr inbounds i8, ptr %next.gep181, i64 -16 ; 2 uses
  %wide.load185 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !3, !alias.scope !2266
  store <4 x i32> %wide.load185, ptr %i.dr, align 4, !tbaa !3, !alias.scope !2263, !noalias !2266
  store <4 x i32> %wide.load183, ptr %i.ds, align 4, !tbaa !3, !alias.scope !2266
  %index.next189 = add nuw i64 %index180, 4       ; 2 uses
  %i.dt = icmp eq i64 %index.next189, %n.vec179
  br i1 %i.dt, label %vec.epilog.middle.block, label %vec.epilog.vector.body.a, !llvm.loop !2269

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body.a
  %cmp.n190 = icmp eq i64 %.082, %n.vec179
end_hunk_8
begin_hunk_9_@_ZNSt3_V28__rotateIPiEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %i.dy = add nuw nsw i64 %.0105.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !2270

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0105.unr = phi i64 [ %.0105.ph, %.lr.ph.preheader ], [ %i.dy, %.lr.ph.prol ]
end_hunk_9
begin_hunk_10_@_ZNSt3_V28__rotateIPiEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %.086.be = phi i64 [ %.082, %bb.h ], [ %i.ar, %._crit_edge ]
  %.082.be = phi i64 [ %i.cl, %bb.h ], [ %i.eb, %._crit_edge ]
  %.058.be = phi ptr [ %.159.lcssa, %bb.h ], [ %.260.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !2271

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0105 = phi i64 [ %i.es, %.lr.ph ], [ %.0105.unr, %.lr.ph.prol.loopexit ]
end_hunk_10
begin_hunk_11_@_ZNSt3_V28__rotateIPiEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  store i32 %i.eq, ptr %i.ep, align 4, !tbaa !3
  %i.es = add nuw nsw i64 %.0105, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.es, %.082
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !2272

_ZSt11swap_rangesIPiS0_ET0_T_S2_S1_.exit:         ; preds = %._crit_edge, %._crit_edge111, %.lr.ph.i, %middle.block222, %vec.epilog.middle.block241, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit, %_ZSt4moveIPiS0_ET0_T_S2_S1_.exit, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.aq, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit ], [ %i.aq, %_ZSt4moveIPiS0_ET0_T_S2_S1_.exit ], [ %1, %middle.block222 ], [ %1, %.lr.ph.i ], [ %1, %vec.epilog.middle.block241 ], [ %i.aq, %._crit_edge111 ], [ %i.aq, %._crit_edge ]
end_hunk_11
begin_hunk_12_@"_ZNSt17_Function_handlerIFvRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEmEZNK8facebook5velox9MapVector8toStringEiE3$_0E9_M_invokeERKSt9_Any_dataS6_Om":bb.a
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.val = load i64, ptr %2, align 8, !tbaa !43
  %i.a = trunc i64 %.val to i32                   ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !2273   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2275, !nonnull !148, !align !648
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = add nsw i32 %i.h, %i.a
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 344
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(94) %i.e, i32 noundef %i.i), !inline_history !2276
  %i.m = load ptr, ptr %3, align 8, !tbaa !56
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !60
end_hunk_12
begin_hunk_13_@"_ZNSt17_Function_handlerIFvRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEmEZNK8facebook5velox9MapVector8toStringEiE3$_0E9_M_invokeERKSt9_Any_dataS6_Om":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !47   ; 2 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !2275, !nonnull !148, !align !648
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3
  %i.v = add nsw i32 %i.u, %i.a
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !50
end_hunk_13
begin_hunk_14_@"_ZNSt17_Function_handlerIFvRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEmEZNK8facebook5velox9MapVector8toStringEiE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation":bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZNK8facebook5velox9MapVector8toStringB5cxx11EiE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !2277
  br label %"_ZNSt14_Function_base13_Base_managerIZNK8facebook5velox9MapVector8toStringB5cxx11EiE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK8facebook5velox9MapVector8toStringB5cxx11EiE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
end_hunk_14
begin_hunk_15_@llvm.vector.reduce.add.v4i32
!2257 = !{!2258}
!2258 = distinct !{!2258, !2256}
!2259 = distinct !{!2259, !71, !119, !120}
!2260 = distinct !{!2260, !71, !119, !120}
!2261 = distinct !{!2261, !205}
!2262 = distinct !{!2262, !71, !119}
!2263 = !{!2264}
!2264 = distinct !{!2264, !2265}
!2265 = distinct !{!2265, !"LVerDomain"}
!2266 = !{!2267}
!2267 = distinct !{!2267, !2265}
!2268 = distinct !{!2268, !71, !119, !120}
!2269 = distinct !{!2269, !71, !119, !120}
!2270 = distinct !{!2270, !205}
!2271 = distinct !{!2271, !71}
!2272 = distinct !{!2272, !71, !119}
!2273 = !{!2274, !493, i64 0}
!2274 = !{!"_ZTSZNK8facebook5velox9MapVector8toStringB5cxx11EiE3$_0", !493, i64 0, !103, i64 8}
!2275 = !{!2274, !103, i64 8}
!2276 = distinct !{null, null, null}
!2277 = !{i64 0, i64 8, !518, i64 8, i64 8, !104}
end_hunk_15
