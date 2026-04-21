inline.NumInlined: 779
inline.NumDeleted: 461
begin_hunk_0_@_ZNSt19__shrink_to_fit_auxISt6vectorIjN8facebook5velox12StlAllocatorIjEEELb1EE8_S_do_itERS5_:bb.a
  %1 = alloca %"class.std::vector.85", align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !212  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !212  ; 4 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !213
end_hunk_0
begin_hunk_1_@_ZNSt19__shrink_to_fit_auxISt6vectorIjN8facebook5velox12StlAllocatorIjEEELb1EE8_S_do_itERS5_:bb.a

.lr.ph.i.preheader.i.i:                           ; preds = %_ZNSt6vectorIjN8facebook5velox12StlAllocatorIjEEE17_S_check_init_lenEmRKS3_.exit.i.i
  %i.m = invoke noundef ptr @_ZN8facebook5velox12StlAllocatorIjE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.j)
          to label %.noexc5.i unwind label %.body ; 8 uses

.noexc5.i:                                        ; preds = %.lr.ph.i.preheader.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  %i.o = add i64 %i.g, -4
  %i.p = sub i64 %i.o, %i.h                       ; 3 uses
  %i.q = lshr i64 %i.p, 2
  %i.r = add nuw nsw i64 %i.q, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.p, 12
  %i.s = ptrtoaddr ptr %i.m to i64
  %i.t = sub i64 %i.s, %i.h
  %diff.check = icmp ult i64 %i.t, 128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %.noexc5.i
  %min.iters.check19 = icmp ult i64 %i.p, 124
  br i1 %min.iters.check19, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.r, 28
  %n.vec = and i64 %i.r, 9223372036854775776      ; 5 uses
  %i.u = shl i64 %n.vec, 2
  %i.v = getelementptr i8, ptr %i.m, i64 %i.u     ; 2 uses
  %i.w = shl i64 %n.vec, 2
end_hunk_1
begin_hunk_2_@_ZNSt19__shrink_to_fit_auxISt6vectorIjN8facebook5velox12StlAllocatorIjEEELb1EE8_S_do_itERS5_:bb.a
  store <8 x i32> %wide.load23, ptr %i.ad, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !214

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !217

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec27 = and i64 %i.r, 9223372036854775804    ; 4 uses
  %2 = shl i64 %n.vec27, 2
  %3 = getelementptr i8, ptr %i.m, i64 %2         ; 2 uses
  %4 = shl i64 %n.vec27, 2
  %5 = getelementptr i8, ptr %i.b, i64 %4
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index28 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next32, %vec.epilog.vector.body ] ; 3 uses
  %6 = shl i64 %index28, 2
  %next.gep29 = getelementptr i8, ptr %i.m, i64 %6
  %7 = shl i64 %index28, 2
  %next.gep30 = getelementptr i8, ptr %i.b, i64 %7
  %wide.load31 = load <4 x i32>, ptr %next.gep30, align 4, !tbaa !3
  store <4 x i32> %wide.load31, ptr %next.gep29, align 4, !tbaa !3
  %index.next32 = add nuw i64 %index28, 4         ; 2 uses
  %8 = icmp eq i64 %index.next32, %n.vec27
  br i1 %8, label %middle.block.a, label %vec.epilog.vector.body, !llvm.loop !218

middle.block.a:                                   ; preds = %vec.epilog.vector.body
  %cmp.n.a = icmp eq i64 %i.r, %n.vec27
  br i1 %cmp.n.a, label %.loopexit.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.noexc5.i, %vec.epilog.iter.check, %middle.block.a
  %.09.i.i.i.ph = phi ptr [ %i.m, %.noexc5.i ], [ %i.v, %vec.epilog.iter.check ], [ %3, %middle.block.a ]
  %.sroa.05.08.i.i.i.ph = phi ptr [ %i.b, %.noexc5.i ], [ %i.x, %vec.epilog.iter.check ], [ %5, %middle.block.a ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
end_hunk_2
begin_hunk_3_@_ZNSt19__shrink_to_fit_auxISt6vectorIjN8facebook5velox12StlAllocatorIjEEELb1EE8_S_do_itERS5_:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i.i, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 4 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.d
  br i1 %i.ai, label %.loopexit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !219

.body:                                            ; preds = %.lr.ph.i.preheader.i.i, %bb.b
  %i.aj = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4_@_ZNSt19__shrink_to_fit_auxISt6vectorIjN8facebook5velox12StlAllocatorIjEEELb1EE8_S_do_itERS5_:bb.a
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i.i, %middle.block.a, %middle.block
  %.lcssa = phi ptr [ %3, %middle.block.a ], [ %i.v, %middle.block ], [ %i.ah, %.lr.ph.i.i.i ]
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !144 ; 2 uses
  %.pre11 = load ptr, ptr %i.c, align 8, !tbaa !211
  %.pre12 = ptrtoint ptr %.pre to i64
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox12StlAllocatorIjE8allocateEm:bb.a

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !220
  store ptr @.str.26, ptr %2, align 16, !tbaa !14, !alias.scope !223, !noalias !220
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %1, ptr %i.f, align 16, !tbaa !14, !noalias !220
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 4, ptr %i.g, align 16, !tbaa !14, !noalias !220
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.36, i64 20, i64 1100, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !220
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox15checkedMultiplyImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.36) #28
          to label %bb.e unwind label %bb.f

end_hunk_5
begin_hunk_6_@_ZN8facebook5velox12StlAllocatorIjE8allocateEm:bb.a

_ZN8facebook5velox19HashStringAllocator5State13currentHeaderEv.exit.i: ; preds = %_ZN8facebook5velox15checkedMultiplyImEET_S2_S2_PKc.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 37240
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !226
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN8facebook5velox19HashStringAllocator8allocateEi.exit, label %bb.h, !prof !190

end_hunk_6
begin_hunk_7_@_ZN5boost6random6detail20generate_uniform_intIN5folly12xoshiro256ppIjDv4_yEElEET0_RT_S7_S7_NS_17integral_constantIbLb1EEE:bb.a
.preheader.split.us:                              ; preds = %.preheader, %.preheader.split.us
  %i.bb = tail call noundef i64 @_ZN5boost6random6detail20generate_uniform_intIN5folly12xoshiro256ppIjDv4_yEEmEET0_RT_S7_S7_NS_17integral_constantIbLb1EEE(ptr noundef nonnull align 32 dereferenceable(1288) %0, i64 noundef 0, i64 noundef %.0.i) ; 2 uses
  %i.bc = icmp ugt i64 %i.bb, %.0.i
  br i1 %i.bc, label %.preheader.split.us, label %.split.us, !llvm.loop !227

.lr.ph:                                           ; preds = %.preheader, %.lr.ph.backedge
  %.promoted = load i64, ptr %i.n, align 32, !tbaa !18
end_hunk_7
begin_hunk_8_@_ZN5boost6random6detail20generate_uniform_intIN5folly12xoshiro256ppIjDv4_yEElEET0_RT_S7_S7_NS_17integral_constantIbLb1EEE:bb.a
bb.g:                                             ; preds = %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit86
  %i.hd = shl i64 %.069106, 32                    ; 4 uses
  %.not83 = icmp samesign ugt i64 %i.hd, %.071
  br i1 %.not83, label %._crit_edge, label %bb.e, !llvm.loop !228

._crit_edge:                                      ; preds = %bb.g
  %i.he = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.hd, i1 true) ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN5boost6random6detail20generate_uniform_intIN5folly12xoshiro256ppIjDv4_yEElEET0_RT_S7_S7_NS_17integral_constantIbLb1EEE:bb.a
  br i1 %i.hi, label %.lr.ph.backedge, label %bb.h

.lr.ph.backedge:                                  ; preds = %._crit_edge, %bb.h
  br label %.lr.ph, !llvm.loop !227

bb.h:                                             ; preds = %._crit_edge
  %i.hj = mul i64 %i.hg, %i.hd                    ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN5boost6random6detail20generate_uniform_intIN5folly12xoshiro256ppIjDv4_yEEmEET0_RT_S7_S7_NS_17integral_constantIbLb1EEE:bb.a
.preheader.split.us:                              ; preds = %.preheader, %.preheader.split.us
  %i.bc = tail call noundef i64 @_ZN5boost6random6detail20generate_uniform_intIN5folly12xoshiro256ppIjDv4_yEEmEET0_RT_S7_S7_NS_17integral_constantIbLb1EEE(ptr noundef nonnull align 32 dereferenceable(1288) %0, i64 noundef 0, i64 noundef %i.a) ; 2 uses
  %i.bd = icmp ugt i64 %i.bc, %i.a
  br i1 %i.bd, label %.preheader.split.us, label %.split.us, !llvm.loop !229

.lr.ph:                                           ; preds = %.preheader, %.lr.ph.backedge
  %.promoted = load i64, ptr %i.o, align 32, !tbaa !18
end_hunk_10
begin_hunk_11_@_ZN5boost6random6detail20generate_uniform_intIN5folly12xoshiro256ppIjDv4_yEEmEET0_RT_S7_S7_NS_17integral_constantIbLb1EEE:bb.a
bb.g:                                             ; preds = %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit86
  %i.he = shl i64 %.069106, 32                    ; 4 uses
  %.not83 = icmp samesign ugt i64 %i.he, %.071
  br i1 %.not83, label %._crit_edge, label %bb.e, !llvm.loop !230

._crit_edge:                                      ; preds = %bb.g
  %i.hf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.he, i1 true) ; 2 uses
end_hunk_11
begin_hunk_12_@_ZN5boost6random6detail20generate_uniform_intIN5folly12xoshiro256ppIjDv4_yEEmEET0_RT_S7_S7_NS_17integral_constantIbLb1EEE:bb.a
  br i1 %i.hj, label %.lr.ph.backedge, label %bb.h

.lr.ph.backedge:                                  ; preds = %._crit_edge, %bb.h
  br label %.lr.ph, !llvm.loop !229

bb.h:                                             ; preds = %._crit_edge
  %i.hk = mul i64 %i.hh, %i.he                    ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEED2Ev
define linkonce_odr void @_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !231  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !232
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
end_hunk_13
begin_hunk_14_@_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEED2Ev:bb.a
bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = icmp ugt i64 %i.g, 3072
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !233  ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
end_hunk_14
begin_hunk_15_@_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEED2Ev:bb.a

_ZNSt6vectorIaN8facebook5velox12StlAllocatorIaEEED2Ev.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !234  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !235
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
end_hunk_15
begin_hunk_16_@_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEED2Ev:bb.a
bb.f:                                             ; preds = %_ZNSt6vectorIaN8facebook5velox12StlAllocatorIaEEED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = icmp ugt i64 %i.t, 3072
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !236  ; 2 uses
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
end_hunk_16
begin_hunk_17_@_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEED2Ev:bb.a

_ZNSt6vectorItN8facebook5velox12StlAllocatorItEEED2Ev.exit: ; preds = %_ZNSt6vectorIaN8facebook5velox12StlAllocatorIaEEED2Ev.exit, %bb.g, %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !231 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !232
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
end_hunk_17
begin_hunk_18_@_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEED2Ev:bb.a
bb.j:                                             ; preds = %_ZNSt6vectorItN8facebook5velox12StlAllocatorItEEED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = icmp ugt i64 %i.ag, 3072
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !233 ; 2 uses
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
end_hunk_18
begin_hunk_19_@_ZNSt7__cxx1115wstring_convertISt12codecvt_utf8IDsLm1114111ELSt12codecvt_mode0EEDsSaIDsESaIcEED2Ev:bb.a
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(28) %i.n) #25, !inline_history !237
  br label %_ZNSt8__detail11_Scoped_ptrISt12codecvt_utf8IDsLm1114111ELSt12codecvt_mode0EEED2Ev.exit

_ZNSt8__detail11_Scoped_ptrISt12codecvt_utf8IDsLm1114111ELSt12codecvt_mode0EEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
end_hunk_19
begin_hunk_20_@llvm.smax.i32
!214 = distinct !{!214, !66, !215, !216}
!215 = !{!"llvm.loop.isvectorized", i32 1}
!216 = !{!"llvm.loop.unroll.runtime.disable"}
!217 = !{!"branch_weights", i32 4, i32 28}
!218 = distinct !{!218, !66, !215, !216}
!219 = distinct !{!219, !66, !215}
!220 = !{!221}
!221 = distinct !{!221, !222, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!222 = distinct !{!222, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!223 = !{!224}
!224 = distinct !{!224, !225, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!225 = distinct !{!225, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!226 = !{!106, !106, i64 0}
!227 = distinct !{!227, !66}
!228 = distinct !{!228, !66}
!229 = distinct !{!229, !66}
!230 = distinct !{!230, !66}
!231 = !{!125, !9, i64 0}
!232 = !{!125, !9, i64 16}
!233 = !{!124, !113, i64 0}
!234 = !{!130, !131, i64 0}
!235 = !{!130, !131, i64 16}
!236 = !{!129, !113, i64 0}
!237 = distinct !{null}
end_hunk_20
