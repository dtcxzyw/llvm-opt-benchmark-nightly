inline.NumInlined: 999
inline.NumDeleted: 594
begin_hunk_0_@_ZNSt19__shrink_to_fit_auxISt6vectorIjN8facebook5velox12StlAllocatorIjEEELb1EE8_S_do_itERS5_:bb.a
  %1 = alloca %"class.std::vector.101", align 8   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !261  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !261  ; 4 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !111
end_hunk_0
begin_hunk_1_@_ZNSt19__shrink_to_fit_auxISt6vectorIjN8facebook5velox12StlAllocatorIjEEELb1EE8_S_do_itERS5_:bb.a

.lr.ph.i.preheader.i.i:                           ; preds = %_ZNSt6vectorIjN8facebook5velox12StlAllocatorIjEEE17_S_check_init_lenEmRKS3_.exit.i.i
  %i.m = invoke noundef ptr @_ZN8facebook5velox12StlAllocatorIjE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.j)
          to label %.noexc5.i unwind label %.body ; 6 uses

.noexc5.i:                                        ; preds = %.lr.ph.i.preheader.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  %i.o = add i64 %i.g, -4
  %i.p = sub i64 %i.o, %i.h                       ; 2 uses
  %i.q = lshr i64 %i.p, 2
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.p, 124
  %i.s = ptrtoaddr ptr %i.m to i64
  %i.t = sub i64 %i.s, %i.h
  %diff.check = icmp ult i64 %i.t, 128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc5.i
  %n.vec = and i64 %i.r, 9223372036854775776      ; 4 uses
  %i.u = shl i64 %n.vec, 2
  %i.v = getelementptr i8, ptr %i.m, i64 %i.u     ; 2 uses
  %i.w = shl i64 %n.vec, 2
end_hunk_1
begin_hunk_2_@_ZNSt19__shrink_to_fit_auxISt6vectorIjN8facebook5velox12StlAllocatorIjEEELb1EE8_S_do_itERS5_:bb.a
  store <8 x i32> %wide.load23, ptr %i.ad, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block.a, label %vector.body, !llvm.loop !265

middle.block.a:                                   ; preds = %vector.body
  %cmp.n.a = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n.a, label %.loopexit.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.noexc5.i, %middle.block.a
  %.09.i.i.i.ph = phi ptr [ %i.m, %.noexc5.i ], [ %i.v, %middle.block.a ]
  %.sroa.05.08.i.i.i.ph = phi ptr [ %i.b, %.noexc5.i ], [ %i.x, %middle.block.a ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
end_hunk_2
begin_hunk_3_@_ZNSt19__shrink_to_fit_auxISt6vectorIjN8facebook5velox12StlAllocatorIjEEELb1EE8_S_do_itERS5_:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i.i, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 4 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.d
  br i1 %i.ai, label %.loopexit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !268

.body:                                            ; preds = %.lr.ph.i.preheader.i.i, %bb.b
  %i.aj = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4_@_ZNSt19__shrink_to_fit_auxISt6vectorIjN8facebook5velox12StlAllocatorIjEEELb1EE8_S_do_itERS5_:bb.a
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i.i, %middle.block.a
  %.lcssa = phi ptr [ %i.v, %middle.block.a ], [ %i.ah, %.lr.ph.i.i.i ]
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !233 ; 2 uses
  %.pre11 = load ptr, ptr %i.c, align 8, !tbaa !250
  %.pre12 = ptrtoint ptr %.pre to i64
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox12StlAllocatorIjE8allocateEm:bb.a

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27, !noalias !269
  store ptr @.str.33, ptr %2, align 16, !tbaa !50, !alias.scope !272, !noalias !269
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %1, ptr %i.f, align 16, !tbaa !50, !noalias !269
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 4, ptr %i.g, align 16, !tbaa !50, !noalias !269
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.42, i64 20, i64 1100, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !269
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox15checkedMultiplyImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.42) #30
          to label %bb.e unwind label %bb.f

end_hunk_5
begin_hunk_6_@llvm.smax.i32
!265 = distinct !{!265, !65, !266, !267}
!266 = !{!"llvm.loop.isvectorized", i32 1}
!267 = !{!"llvm.loop.unroll.runtime.disable"}
!268 = distinct !{!268, !65, !266}
!269 = !{!270}
!270 = distinct !{!270, !271, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!271 = distinct !{!271, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!272 = !{!273}
!273 = distinct !{!273, !274, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!274 = distinct !{!274, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
end_hunk_6
