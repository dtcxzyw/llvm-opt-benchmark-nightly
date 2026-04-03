begin_hunk_0
inline.NumInlined: 256
inline.NumDeleted: 85
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
bb.a:
  %2 = alloca [73 x %struct.cache_bin_info_s], align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(146) %2, i8 0, i64 146, i1 false)
  %i.c = load i8, ptr %0, align 8, !tbaa !10, !range !12, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  br i1 %i.d, label %bb.b, label %duckdb_je_tcache_cleanup.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39   ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
end_hunk_1
begin_hunk_2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1752) %i.l, i8 0, i64 1752, i1 false)
  br label %duckdb_je_tcache_cleanup.exit

duckdb_je_tcache_cleanup.exit:                    ; preds = %bb.d, %tcache_bin_settings_backup.exit, %bb.a
  %.0 = phi ptr [ undef, %bb.a ], [ %i.f, %tcache_bin_settings_backup.exit ], [ %i.f, %bb.d ]
  %i.m = icmp ult i64 %1, 4097
  br i1 %i.m, label %bb.e, label %bb.f, !prof !119

end_hunk_2
begin_hunk_3
  %i.t = add nuw nsw i32 %.0.i.i, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 %i.t, ptr %i.u, align 8, !tbaa !35
  br i1 %i.d, label %tcache_max_set.exit12, label %bb.g

tcache_max_set.exit12:                            ; preds = %tcache_max_set.exit
  call fastcc void @duckdb_je_tsd_tcache_data_init(ptr noundef nonnull %0, ptr noundef %.0, ptr noundef nonnull %2)
  br label %bb.g

bb.g:                                             ; preds = %tcache_max_set.exit, %tcache_max_set.exit12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}
end_hunk_3
