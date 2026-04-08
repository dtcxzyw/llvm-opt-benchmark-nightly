inline.NumInlined: 16
inline.NumDeleted: 7
begin_hunk_0_@duckdb_je_malloc_printf:bb.a
  %.not.i = icmp eq ptr %i.b, null
  %i.c = select i1 %.not.i, ptr @duckdb_je_wrtmessage, ptr %i.b
  %i.d = call i64 @duckdb_je_malloc_vsnprintf(ptr noundef nonnull %i.a, i64 noundef 4096, ptr noundef %0, ptr noundef nonnull %1) #17 ; 0 uses
  call void %i.c(ptr noundef null, ptr noundef nonnull %i.a) #15, !inline_history !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
end_hunk_0
begin_hunk_1_@llvm.abs.i32
!12 = !{!"long", !5, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long long", !5, i64 0}
!15 = !{ptr @duckdb_je_malloc_vcprintf}
end_hunk_1
