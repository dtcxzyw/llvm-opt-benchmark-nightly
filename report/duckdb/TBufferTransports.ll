inline.NumInlined: 99
inline.NumDeleted: 53
begin_hunk_0_@_ZN13duckdb_apache6thrift9transport13TMemoryBufferD0Ev:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.e) #15
  br label %_ZN13duckdb_apache6thrift9transport13TMemoryBufferD2Ev.exit

_ZN13duckdb_apache6thrift9transport13TMemoryBufferD2Ev.exit: ; preds = %bb.a, %bb.b
end_hunk_0
begin_hunk_1_@_ZN13duckdb_apache6thrift9transport17TVirtualTransportINS1_13TMemoryBufferENS1_11TBufferBaseEE9read_virtEPhj:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  %.not.i = icmp ugt ptr %i.d, %i.f
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.b, i64 %i.c, i1 false)
end_hunk_1
begin_hunk_2_@_ZN13duckdb_apache6thrift9transport17TVirtualTransportINS1_13TMemoryBufferENS1_11TBufferBaseEE9read_virtEPhj:bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2)
  br label %_ZN13duckdb_apache6thrift9transport11TBufferBase4readEPhj.exit

_ZN13duckdb_apache6thrift9transport11TBufferBase4readEPhj.exit: ; preds = %bb.b, %bb.c
end_hunk_2
begin_hunk_3_@_ZN13duckdb_apache6thrift9transport17TVirtualTransportINS1_13TMemoryBufferENS1_11TBufferBaseEE12readAll_virtEPhj:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  %.not.i.i = icmp ugt ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.b, i64 %i.c, i1 false)
end_hunk_3
begin_hunk_4_@_ZN13duckdb_apache6thrift9transport17TVirtualTransportINS1_13TMemoryBufferENS1_11TBufferBaseEE10write_virtEPKhj:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25
  %.not.i = icmp ugt ptr %i.d, %i.f
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.b, ptr align 1 %1, i64 %i.c, i1 false)
end_hunk_4
begin_hunk_5_@_ZN13duckdb_apache6thrift9transport17TVirtualTransportINS1_13TMemoryBufferENS1_11TBufferBaseEE10write_virtEPKhj:bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2)
  br label %_ZN13duckdb_apache6thrift9transport11TBufferBase5writeEPKhj.exit

_ZN13duckdb_apache6thrift9transport11TBufferBase5writeEPKhj.exit: ; preds = %bb.b, %bb.c
end_hunk_5
begin_hunk_6_@_ZN13duckdb_apache6thrift9transport17TVirtualTransportINS1_13TMemoryBufferENS1_11TBufferBaseEE11borrow_virtEPhPj:bb.a
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %.not.i = icmp slt i64 %i.i, %i.b
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.i to i32
end_hunk_6
begin_hunk_7_@_ZN13duckdb_apache6thrift9transport17TVirtualTransportINS1_13TMemoryBufferENS1_11TBufferBaseEE11borrow_virtEPhPj:bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %_ZN13duckdb_apache6thrift9transport11TBufferBase6borrowEPhPj.exit

_ZN13duckdb_apache6thrift9transport11TBufferBase6borrowEPhPj.exit: ; preds = %bb.b, %bb.c
end_hunk_7
begin_hunk_8_@_ZN13duckdb_apache6thrift10TExceptionD0Ev:bb.a
  br i1 %i.d, label %_ZN13duckdb_apache6thrift10TExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #16
  br label %_ZN13duckdb_apache6thrift10TExceptionD2Ev.exit

_ZN13duckdb_apache6thrift10TExceptionD2Ev.exit:   ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #15
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}
end_hunk_8
begin_hunk_9_@_ZN13duckdb_apache6thrift9transport7readAllINS1_11TBufferBaseEEEjRT_Phj:bb.a
bb.b:                                             ; preds = %_ZN13duckdb_apache6thrift9transport11TBufferBase4readEPhj.exit
  %i.c = add i32 %.0.i, %.01524                   ; 3 uses
  %i.d = icmp ult i32 %i.c, %2
  br i1 %i.d, label %bb.c, label %._crit_edge, !llvm.loop !45

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.01524 = phi i32 [ 0, %.lr.ph ], [ %i.c, %bb.b ] ; 3 uses
end_hunk_9
begin_hunk_10_@_ZN13duckdb_apache6thrift9transport7readAllINS1_11TBufferBaseEEEjRT_Phj:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i ; 2 uses
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !14
  %.not.i = icmp ugt ptr %i.j, %i.k
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !44

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.f, ptr align 1 %i.h, i64 %i.i, i1 false)
end_hunk_10
begin_hunk_11_@_ZN13duckdb_apache6thrift9transport7readAllINS1_11TBufferBaseEEEjRT_Phj:bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.f, i32 noundef %i.g)
  br label %_ZN13duckdb_apache6thrift9transport11TBufferBase4readEPhj.exit

_ZN13duckdb_apache6thrift9transport11TBufferBase4readEPhj.exit: ; preds = %bb.d, %bb.e
end_hunk_11
begin_hunk_12_@_ZN13duckdb_apache6thrift9transport11TBufferBase7consumeEj:bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %.not = icmp slt i64 %i.h, %i.a
  br i1 %.not, label %bb.c, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.a
end_hunk_12
begin_hunk_13_@llvm.umin.i32
!41 = !{!"_ZTSN13duckdb_apache6thrift10TExceptionE", !42, i64 0, !22, i64 8}
!42 = !{!"_ZTSSt9exception"}
!43 = !{!"_ZTSN13duckdb_apache6thrift9transport19TTransportException23TTransportExceptionTypeE", !5, i64 0}
!44 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!45 = distinct !{!45, !33}
end_hunk_13
