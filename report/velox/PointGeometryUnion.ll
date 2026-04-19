inline.NumInlined: 180
inline.NumDeleted: 134
begin_hunk_0_@_ZNK4geos9operation8geounion18PointGeometryUnion5UnionEv:bb.a
  %2 = alloca %"class.geos::algorithm::PointLocator", align 4 ; 4 uses
  %3 = alloca %"class.std::set", align 8          ; 11 uses
  %4 = alloca %"class.std::vector", align 8       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK4geos9operation8geounion18PointGeometryUnion5UnionEv:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = invoke noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 noundef %.053)
          to label %5 unwind label %9             ; 2 uses

5:                                                ; preds = %bb.c
  %6 = icmp eq ptr %i.r, null
  br i1 %6, label %bb.d, label %7

7:                                                ; preds = %5
  %8 = call ptr @__dynamic_cast(ptr nonnull %i.r, ptr nonnull @_ZTIN4geos4geom8GeometryE, ptr nonnull @_ZTIN4geos4geom5PointE, i64 0) #16
  br label %bb.d

9:                                                ; preds = %bb.d, %bb.c
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit42

bb.d:                                             ; preds = %5, %7
  %11 = phi ptr [ %8, %7 ], [ null, %5 ]          ; 4 uses
  %i.s = load ptr, ptr %11, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(82) %11)
          to label %bb.e unwind label %9

bb.e:                                             ; preds = %bb.d
  br i1 %i.v, label %_ZNSt3setIN4geos4geom10CoordinateESt4lessIS2_ESaIS2_EE6insertERKS2_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %11, align 8, !tbaa !24
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = invoke noundef ptr %i.y(ptr noundef nonnull align 8 dereferenceable(82) %11)
          to label %bb.g unwind label %bb.j       ; 2 uses

bb.g:                                             ; preds = %bb.f
end_hunk_1
begin_hunk_2_@_ZNK4geos9operation8geounion18PointGeometryUnion5UnionEv:bb.a
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit42

bb.p:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.au = icmp ugt i64 %i.l, 384307168202282325
  br i1 %i.au, label %bb.q, label %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EEC2EmRKS3_.exit.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.q
end_hunk_2
begin_hunk_3_@_ZNK4geos9operation8geounion18PointGeometryUnion5UnionEv:bb.a

_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EEC2EmRKS3_.exit.i: ; preds = %bb.p
  %i.av = mul nuw nsw i64 %i.l, 24
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #18
          to label %.noexc31 unwind label %bb.s   ; 5 uses

.noexc31:                                         ; preds = %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EEC2EmRKS3_.exit.i
end_hunk_3
begin_hunk_4_@_ZNK4geos9operation8geounion18PointGeometryUnion5UnionEv:bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false), !tbaa.struct !46
  %i.by = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24
  %i.bz = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.07.i.i.i.i.i) #19 ; 2 uses
  %.not.i.i.i.i.i33 = icmp eq ptr %i.bz, %i.a
  br i1 %.not.i.i.i.i.i33, label %.loopexit, label %.lr.ph.i.i.i.i.i32, !llvm.loop !48

end_hunk_4
begin_hunk_5_@_ZNK4geos9operation8geounion18PointGeometryUnion5UnionEv:bb.a
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit37
  call void @_ZdlPv(ptr noundef nonnull %i.cd) #20
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit37, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit

bb.s:                                             ; preds = %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EEC2EmRKS3_.exit.i, %bb.q
end_hunk_5
begin_hunk_6_@_ZNK4geos9operation8geounion18PointGeometryUnion5UnionEv:bb.a
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit39, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZdlPv(ptr noundef nonnull %i.cg) #20
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit39

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit39: ; preds = %bb.u, %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ce, %bb.s ], [ %i.cf, %bb.t ], [ %i.cf, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit42

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %bb.n, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit
end_hunk_6
begin_hunk_7_@_ZNK4geos9operation8geounion18PointGeometryUnion5UnionEv:bb.a
  %i.cj = load ptr, ptr %.sroa.044.0, align 8, !tbaa !24
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.sroa.044.0) #16, !inline_history !49
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit
end_hunk_7
begin_hunk_8_@_ZNK4geos9operation8geounion18PointGeometryUnion5UnionEv:bb.a
  %i.cn = load ptr, ptr %.sroa.044.0, align 8, !tbaa !24
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.sroa.044.0) #16, !inline_history !49
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit42

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i, %bb.v, %_ZNK4geos4geom8Geometry5cloneEv.exit
end_hunk_8
begin_hunk_9_@_ZNK4geos9operation8geounion18PointGeometryUnion5UnionEv:bb.a
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #21
  unreachable

_ZNSt3setIN4geos4geom10CoordinateESt4lessIS2_ESaIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit42: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit39, %bb.o, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i41, %bb.w, %bb.b, %bb.j, %bb.k, %9, %bb.m
  %.pn26.pn.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.j ], [ %i.an, %bb.m ], [ %i.m, %bb.b ], [ %10, %9 ], [ %i.af, %bb.k ], [ %i.cm, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i41 ], [ %i.cm, %bb.w ], [ %.pn, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit39 ], [ %i.at, %bb.o ]
  call void @_ZNSt3setIN4geos4geom10CoordinateESt4lessIS2_ESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %.pn26.pn.pn.pn
}

end_hunk_9
begin_hunk_10_@_ZNSt3setIN4geos4geom10CoordinateESt4lessIS2_ESaIS2_EED2Ev:bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #21
  unreachable

_ZNSt8_Rb_treeIN4geos4geom10CoordinateES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EED2Ev.exit: ; preds = %bb.a
end_hunk_10
begin_hunk_11_@_ZN4geos9operation8geounion18PointGeometryUnion5UnionERKNS_4geom8GeometryES6_
define void @_ZN4geos9operation8geounion18PointGeometryUnion5UnionERKNS_4geom8GeometryES6_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.geos::operation::geounion::PointGeometryUnion", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZN4geos9operation8geounion18PointGeometryUnionC1ERKNS_4geom8GeometryES6_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  call void @_ZNK4geos9operation8geounion18PointGeometryUnion5UnionEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

end_hunk_11
begin_hunk_12_@_ZN4geos9operation8geounion18PointGeometryUnionC2ERKNS_4geom8GeometryES6_:bb.a
; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

end_hunk_12
begin_hunk_13_@_ZNSt8_Rb_treeIN4geos4geom10CoordinateES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E:bb.a
  tail call void @_ZNSt8_Rb_treeIN4geos4geom10CoordinateES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60   ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #20
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !61

end_hunk_13
begin_hunk_14_@_ZNSt8_Rb_treeIN4geos4geom10CoordinateES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_:bb.a
  br i1 %i.q, label %bb.h, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i
  %i.r = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.021.lcssa37.i) #19 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !63
  %.pre27 = load double, ptr %1, align 8, !tbaa !63
end_hunk_14
begin_hunk_15_@_ZNSt8_Rb_treeIN4geos4geom10CoordinateES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_:bb.a

_ZNSt8_Rb_treeIN4geos4geom10CoordinateES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %i.am = phi i1 [ false, %bb.l ], [ true, %bb.h ], [ true, %bb.k ], [ true, %bb.i ], [ false, %bb.j ]
  %i.an = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #18 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.am, ptr noundef nonnull %i.an, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #16
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !17
  %i.ar = add i64 %i.aq, 1
end_hunk_15
begin_hunk_16_@_ZSt20__throw_length_errorPKc
; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_16
begin_hunk_17_@llvm.experimental.noalias.scope.decl
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
end_hunk_17
