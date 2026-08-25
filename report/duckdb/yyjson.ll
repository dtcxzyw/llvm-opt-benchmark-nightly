Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/yyjson?download=true
inline.NumInlined: 31
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_ZN13duckdb_yyjson25yyjson_mut_val_write_fileEPKcPKNS_14yyjson_mut_valEjPKNS_10yyjson_alcEPNS_16yyjson_write_errE:bb.a
  %.sroa.sel29.v.sroa.sel.v.sroa.sel.v = select i1 %.not22, ptr %5, ptr %4
  %.sroa.sel29.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel29.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.95, ptr %.sroa.sel29.v.sroa.sel.v.sroa.sel, align 8, !tbaa !280
  store i32 6, ptr %i.c, align 8, !tbaa !282
  %i.j = call i32 @fclose(ptr noundef nonnull %i.g) ; 0 uses
  br label %_ZN13duckdb_yyjsonL17write_dat_to_fileEPKcPhmPNS_16yyjson_write_errE.exit

bb.h:                                             ; preds = %bb.f
  %i.k = call i32 @fclose(ptr noundef nonnull %i.g)
  %.not19.i = icmp eq i32 %i.k, 0
  br i1 %.not19.i, label %_ZN13duckdb_yyjsonL17write_dat_to_fileEPKcPhmPNS_16yyjson_write_errE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not22, ptr %5, ptr %4
  %.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.96, ptr %.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !tbaa !280
  store i32 6, ptr %i.c, align 8, !tbaa !282
  br label %_ZN13duckdb_yyjsonL17write_dat_to_fileEPKcPhmPNS_16yyjson_write_errE.exit

_ZN13duckdb_yyjsonL17write_dat_to_fileEPKcPhmPNS_16yyjson_write_errE.exit: ; preds = %bb.e, %bb.g, %bb.h, %bb.i
  %.0.i = phi i1 [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.i ], [ true, %bb.h ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !23
  call void %i.m(ptr noundef %i.o, ptr noundef nonnull %i.e)
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %_ZN13duckdb_yyjsonL17write_dat_to_fileEPKcPhmPNS_16yyjson_write_errE.exit, %.critedge
  %.0 = phi i1 [ false, %.critedge ], [ %.0.i, %_ZN13duckdb_yyjsonL17write_dat_to_fileEPKcPhmPNS_16yyjson_write_errE.exit ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN13duckdb_yyjson23yyjson_mut_val_write_fpEP8_IO_FILEPKNS_14yyjson_mut_valEjPKNS_10yyjson_alcEPNS_16yyjson_write_errE(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #10 {
bb.a:
  %5 = alloca %"struct.duckdb_yyjson::yyjson_write_err", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 0, ptr %i.a, align 8, !tbaa !91
  %.not = icmp eq ptr %3, null
  %i.b = select i1 %.not, ptr @_ZN13duckdb_yyjsonL18YYJSON_DEFAULT_ALCE, ptr %3 ; 3 uses
  %.not20 = icmp eq ptr %4, null                  ; 3 uses
  %i.c = select i1 %.not20, ptr %5, ptr %4        ; 3 uses
  %.not21 = icmp eq ptr %0, null
  br i1 %.not21, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not20, ptr %5, ptr %4
  %.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.42, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !280
  store i32 1, ptr %i.c, align 8, !tbaa !282
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = call fastcc noundef ptr @_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE(ptr noundef %1, i64 noundef 0, i32 noundef %2, ptr noundef nonnull readonly %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) ; 3 uses
  %.not22 = icmp eq ptr %i.d, null
  br i1 %.not22, label %bb.f, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.e = load i64, ptr %i.a, align 8, !tbaa !91
  %i.f = call i64 @fwrite(ptr noundef nonnull readonly %i.d, i64 noundef %i.e, i64 noundef 1, ptr noundef nonnull %0)
  %.not.i = icmp eq i64 %i.f, 1                   ; 2 uses
  br i1 %.not.i, label %_ZN13duckdb_yyjsonL15write_dat_to_fpEP8_IO_FILEPhmPNS_16yyjson_write_errE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.sel26.v.sroa.sel.v.sroa.sel.v = select i1 %.not20, ptr %5, ptr %4
  %.sroa.sel26.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel26.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.95, ptr %.sroa.sel26.v.sroa.sel.v.sroa.sel, align 8, !tbaa !280
  store i32 6, ptr %i.c, align 8, !tbaa !282
  br label %_ZN13duckdb_yyjsonL15write_dat_to_fpEP8_IO_FILEPhmPNS_16yyjson_write_errE.exit

_ZN13duckdb_yyjsonL15write_dat_to_fpEP8_IO_FILEPhmPNS_16yyjson_write_errE.exit: ; preds = %bb.d, %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23
  call void %i.h(ptr noundef %i.j, ptr noundef nonnull %i.d)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZN13duckdb_yyjsonL15write_dat_to_fpEP8_IO_FILEPhmPNS_16yyjson_write_errE.exit, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ %.not.i, %_ZN13duckdb_yyjsonL15write_dat_to_fpEP8_IO_FILEPhmPNS_16yyjson_write_errE.exit ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN13duckdb_yyjson21yyjson_mut_write_fileEPKcPKNS_14yyjson_mut_docEjPKNS_10yyjson_alcEPNS_16yyjson_write_errE(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !78
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  %i.c = tail call noundef zeroext i1 @_ZN13duckdb_yyjson25yyjson_mut_val_write_fileEPKcPKNS_14yyjson_mut_valEjPKNS_10yyjson_alcEPNS_16yyjson_write_errE(ptr noundef %0, ptr noundef %i.b, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN13duckdb_yyjson19yyjson_mut_write_fpEP8_IO_FILEPKNS_14yyjson_mut_docEjPKNS_10yyjson_alcEPNS_16yyjson_write_errE(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #10 {
bb.a:
  %5 = alloca %"struct.duckdb_yyjson::yyjson_write_err", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !78
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 0, ptr %i.a, align 8, !tbaa !91
  %.not.i = icmp eq ptr %3, null
  %i.d = select i1 %.not.i, ptr @_ZN13duckdb_yyjsonL18YYJSON_DEFAULT_ALCE, ptr %3 ; 3 uses
  %.not20.i = icmp eq ptr %4, null                ; 3 uses
  %i.e = select i1 %.not20.i, ptr %5, ptr %4      ; 3 uses
  %.not21.i = icmp eq ptr %0, null
  br i1 %.not21.i, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %bb.c
  %.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not20.i, ptr %5, ptr %4
  %.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.42, ptr %.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !280
  store i32 1, ptr %i.e, align 8, !tbaa !282
  br label %_ZN13duckdb_yyjson23yyjson_mut_val_write_fpEP8_IO_FILEPKNS_14yyjson_mut_valEjPKNS_10yyjson_alcEPNS_16yyjson_write_errE.exit

bb.e:                                             ; preds = %bb.c
  %i.f = call fastcc noundef ptr @_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE(ptr noundef %i.c, i64 noundef 0, i32 noundef %2, ptr noundef nonnull readonly %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e) ; 3 uses
  %.not22.i = icmp eq ptr %i.f, null
  br i1 %.not22.i, label %_ZN13duckdb_yyjson23yyjson_mut_val_write_fpEP8_IO_FILEPKNS_14yyjson_mut_valEjPKNS_10yyjson_alcEPNS_16yyjson_write_errE.exit, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.g = load i64, ptr %i.a, align 8, !tbaa !91
  %i.h = call i64 @fwrite(ptr noundef nonnull readonly %i.f, i64 noundef %i.g, i64 noundef 1, ptr noundef nonnull %0)
  %.not.i.i = icmp eq i64 %i.h, 1                 ; 2 uses
  br i1 %.not.i.i, label %_ZN13duckdb_yyjsonL15write_dat_to_fpEP8_IO_FILEPhmPNS_16yyjson_write_errE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.sel26.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not20.i, ptr %5, ptr %4
  %.sroa.sel26.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel26.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.95, ptr %.sroa.sel26.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !280
  store i32 6, ptr %i.e, align 8, !tbaa !282
  br label %_ZN13duckdb_yyjsonL15write_dat_to_fpEP8_IO_FILEPhmPNS_16yyjson_write_errE.exit.i

_ZN13duckdb_yyjsonL15write_dat_to_fpEP8_IO_FILEPhmPNS_16yyjson_write_errE.exit.i: ; preds = %bb.g, %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23
  call void %i.j(ptr noundef %i.l, ptr noundef nonnull %i.f), !inline_history !370
  br label %_ZN13duckdb_yyjson23yyjson_mut_val_write_fpEP8_IO_FILEPKNS_14yyjson_mut_valEjPKNS_10yyjson_alcEPNS_16yyjson_write_errE.exit

_ZN13duckdb_yyjson23yyjson_mut_val_write_fpEP8_IO_FILEPKNS_14yyjson_mut_valEjPKNS_10yyjson_alcEPNS_16yyjson_write_errE.exit: ; preds = %bb.d, %bb.e, %_ZN13duckdb_yyjsonL15write_dat_to_fpEP8_IO_FILEPhmPNS_16yyjson_write_errE.exit.i
  %.0.i = phi i1 [ false, %bb.d ], [ %.not.i.i, %_ZN13duckdb_yyjsonL15write_dat_to_fpEP8_IO_FILEPhmPNS_16yyjson_write_errE.exit.i ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noalias noundef ptr @_ZN13duckdb_yyjsonL11null_mallocEPvm(ptr nofree readnone captures(none) %0, i64 %1) #0 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noalias noundef ptr @_ZN13duckdb_yyjsonL12null_reallocEPvS0_mm(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, i64 %3) #0 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN13duckdb_yyjsonL9null_freeEPvS0_(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_ZN13duckdb_yyjsonL16is_truncated_endEPhS0_S0_jj(ptr nofree noundef readnone captures(address) %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 2, 12) %3, i32 noundef %4) unnamed_addr #22 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %.not = icmp ult ptr %1, %2
  br i1 %.not, label %bb.b, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121

bb.b:                                             ; preds = %bb.a
  switch i32 %3, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit111.thread [
    i32 11, label %bb.c
    i32 9, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit126.thread
    i32 6, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit126.thread
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.not.i133 = icmp ugt ptr %i.b, %2              ; 2 uses
  br i1 %.not.i133, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit138, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit138.thread

_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit138: ; preds = %bb.c
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d
  %bcmp.i137 = tail call i32 @bcmp(ptr %1, ptr nonnull @.str.71, i64 %i.e)
  %i.f = icmp eq i32 %bcmp.i137, 0
  br i1 %i.f, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit138.thread

_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit138.thread: ; preds = %bb.c, %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit138
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 5
  %.not.i127 = icmp ugt ptr %i.g, %2
  br i1 %.not.i127, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit132, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit132.thread

_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit132: ; preds = %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit138.thread
  %i.h = ptrtoint ptr %2 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = sub i64 %i.h, %i.i
  %bcmp.i131 = tail call i32 @bcmp(ptr %1, ptr nonnull @.str.74, i64 %i.j)
  %i.k = icmp eq i32 %bcmp.i131, 0
  br i1 %i.k, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit132.thread

_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit132.thread: ; preds = %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit138.thread, %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit132
  br i1 %.not.i133, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit126, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit126.thread

_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit126: ; preds = %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit132.thread
  %i.l = ptrtoint ptr %2 to i64
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.l, %i.m
  %bcmp.i = tail call i32 @bcmp(ptr %1, ptr nonnull @.str.73, i64 %i.n)
  %i.o = icmp eq i32 %bcmp.i, 0
  br i1 %i.o, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit126.thread

_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit126.thread: ; preds = %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit132.thread, %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit126, %bb.b, %bb.b
  %i.p = and i32 %4, 16
  %.not156 = icmp eq i32 %i.p, 0
  br i1 %.not156, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit111.thread, label %bb.d, !prof !24

bb.d:                                             ; preds = %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit126.thread
  %i.q = load i8, ptr %1, align 1, !tbaa !81
  %i.r = icmp eq i8 %i.q, 45
  %spec.select.idx = zext i1 %i.r to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.idx ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %.not.i112 = icmp ugt ptr %i.s, %2
  %.not25.i113 = icmp ugt ptr %2, %spec.select    ; 2 uses
  %or.cond.i114 = and i1 %.not25.i113, %.not.i112
  br i1 %or.cond.i114, label %.preheader164, label %.loopexit

.preheader164:                                    ; preds = %bb.d, %bb.e
  %.019.i117167 = phi ptr [ %i.z, %bb.e ], [ @.str.75, %bb.d ] ; 2 uses
  %.020.i116166 = phi ptr [ %i.y, %bb.e ], [ %spec.select, %bb.d ] ; 2 uses
  %i.t = load i8, ptr %.020.i116166, align 1, !tbaa !81 ; 2 uses
  %i.u = load i8, ptr %.019.i117167, align 1, !tbaa !81 ; 2 uses
  %.not26.i118 = icmp eq i8 %i.t, %i.u
  %i.v = zext i8 %i.u to i32
  %i.w = zext i8 %i.t to i32
  %i.x = add nsw i32 %i.v, -32
  %.not27.i119 = icmp eq i32 %i.x, %i.w
  %or.cond30.i120 = select i1 %.not26.i118, i1 true, i1 %.not27.i119
  br i1 %or.cond30.i120, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.preheader164
  %i.y = getelementptr inbounds nuw i8, ptr %.020.i116166, i64 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.019.i117167, i64 1
  %5 = icmp ult ptr %i.y, %2
  br i1 %5, label %.preheader164, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121, !llvm.loop !371

.loopexit:                                        ; preds = %.preheader164, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %spec.select, i64 3
  %.not.i102 = icmp ugt ptr %i.aa, %2
  %or.cond.i104 = and i1 %.not25.i113, %.not.i102
  br i1 %or.cond.i104, label %.preheader162, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit111.thread

.preheader162:                                    ; preds = %.loopexit, %bb.f
  %.019.i107169 = phi ptr [ %i.ah, %bb.f ], [ @.str.76, %.loopexit ] ; 2 uses
  %.020.i106168 = phi ptr [ %i.ag, %bb.f ], [ %spec.select, %.loopexit ] ; 2 uses
  %i.ab = load i8, ptr %.020.i106168, align 1, !tbaa !81 ; 2 uses
  %i.ac = load i8, ptr %.019.i107169, align 1, !tbaa !81 ; 2 uses
  %.not26.i108 = icmp eq i8 %i.ab, %i.ac
  %i.ad = zext i8 %i.ac to i32
  %i.ae = zext i8 %i.ab to i32
  %i.af = add nsw i32 %i.ad, -32
  %.not27.i109 = icmp eq i32 %i.af, %i.ae
  %or.cond30.i110 = select i1 %.not26.i108, i1 true, i1 %.not27.i109
  br i1 %or.cond30.i110, label %bb.f, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit111.thread

bb.f:                                             ; preds = %.preheader162
  %i.ag = getelementptr inbounds nuw i8, ptr %.020.i106168, i64 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.019.i107169, i64 1
  %6 = icmp ult ptr %i.ag, %2
  br i1 %6, label %.preheader162, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121, !llvm.loop !371

_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit111.thread: ; preds = %.preheader162, %.loopexit, %bb.b, %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit126.thread
  %.174 = phi ptr [ %1, %bb.b ], [ %1, %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit126.thread ], [ %spec.select, %.loopexit ], [ %spec.select, %.preheader162 ] ; 10 uses
  %.174179 = ptrtoaddr ptr %.174 to i64
  switch i32 %3, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121 [
    i32 4, label %bb.g
    i32 10, label %bb.j
  ]

bb.g:                                             ; preds = %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit111.thread
  %i.ai = and i32 %4, 16
  %.not157 = icmp eq i32 %i.ai, 0
  br i1 %.not157, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121, label %bb.h, !prof !24

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.not82 = icmp ugt ptr %i.aj, %.174
  br i1 %.not82, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds i8, ptr %.174, i64 -3 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.174, i64 5
  %.not.i = icmp ugt ptr %i.al, %2
  %.not25.i = icmp ugt ptr %2, %i.ak
  %or.cond.i = and i1 %.not.i, %.not25.i
  br i1 %or.cond.i, label %.preheader.preheader, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121

.preheader.preheader:                             ; preds = %bb.i
  %i.am = add i64 %i.a, 2
  %i.an = sub i64 %i.am, %.174179
  %scevgep180 = getelementptr i8, ptr @.str.75, i64 %i.an
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader
  %.019.i171 = phi ptr [ %i.au, %.preheader ], [ @.str.75, %.preheader.preheader ] ; 3 uses
  %.020.i170 = phi ptr [ %i.at, %.preheader ], [ %i.ak, %.preheader.preheader ] ; 2 uses
  %i.ao = load i8, ptr %.020.i170, align 1, !tbaa !81 ; 2 uses
  %i.ap = load i8, ptr %.019.i171, align 1, !tbaa !81 ; 2 uses
  %.not26.i = icmp eq i8 %i.ao, %i.ap
  %i.aq = zext i8 %i.ap to i32
  %i.ar = zext i8 %i.ao to i32
  %i.as = add nsw i32 %i.aq, -32
  %.not27.i = icmp eq i32 %i.as, %i.ar
  %or.cond30.i = select i1 %.not26.i, i1 true, i1 %.not27.i ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.020.i170, i64 1
  %i.au = getelementptr inbounds nuw i8, ptr %.019.i171, i64 1
  %exitcond181.not = icmp ne ptr %.019.i171, %scevgep180
  %or.cond.not = and i1 %exitcond181.not, %or.cond30.i
  br i1 %or.cond.not, label %.preheader, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121, !llvm.loop !371

bb.j:                                             ; preds = %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit111.thread
  %i.av = ptrtoint ptr %2 to i64
  %i.aw = ptrtoint ptr %.174 to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 3 uses
  %i.ay = load i8, ptr %.174, align 1, !tbaa !81  ; 6 uses
  %i.az = zext i8 %i.ay to i32                    ; 8 uses
  %i.ba = icmp eq i8 %i.ay, 92
  br i1 %i.ba, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bb = icmp eq i64 %i.ax, 1
  br i1 %i.bb, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = icmp ult i64 %i.ax, 6
  br i1 %i.bc, label %bb.m, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %.174, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !81
  %.not85 = icmp eq i8 %i.be, 117
  br i1 %.not85, label %bb.n, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %.174, i64 2 ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %2
  br i1 %i.bg, label %.lr.ph, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121

.lr.ph:                                           ; preds = %bb.n, %.lr.ph
  %.275172 = phi ptr [ %i.bl, %.lr.ph ], [ %i.bf, %bb.n ] ; 2 uses
  %i.bh = load i8, ptr %.275172, align 1, !tbaa !81
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !81
  %.not160 = icmp slt i8 %i.bk, 0                 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.275172, i64 1 ; 2 uses
  %exitcond.not.a = icmp ne ptr %i.bl, %2
  %or.cond202.not = select i1 %.not160, i1 %exitcond.not.a, i1 false
  br i1 %or.cond202.not, label %.lr.ph, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121, !llvm.loop !372

bb.o:                                             ; preds = %bb.j
  %.not83 = icmp sgt i8 %i.ay, -1
  br i1 %.not83, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %.174, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !81  ; 5 uses
  switch i64 %i.ax, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121 [
    i64 1, label %bb.q
    i64 2, label %bb.s
    i64 3, label %bb.w
  ]

bb.q:                                             ; preds = %bb.p
  %i.bo = and i32 %i.az, 224
  %i.bp = icmp eq i32 %i.bo, 192
  %i.bq = and i32 %i.az, 30
  %.not84 = icmp ne i32 %i.bq, 0
  %or.cond.not159 = and i1 %i.bp, %.not84
  %i.br = and i32 %i.az, 240
  %i.bs = icmp eq i32 %i.br, 224
  %or.cond100 = or i1 %i.bs, %or.cond.not159
  br i1 %or.cond100, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = and i32 %i.az, 248
  %i.bu = icmp eq i32 %i.bt, 240
  %i.bv = and i32 %i.az, 7
  %i.bw = icmp samesign ult i32 %i.bv, 5
  %or.cond87 = select i1 %i.bu, i1 %i.bw, i1 false
  br label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121

bb.s:                                             ; preds = %bb.p
  %i.bx = and i32 %i.az, 240
  %i.by = icmp eq i32 %i.bx, 224
  %i.bz = icmp slt i8 %i.bn, -64                  ; 2 uses
  %or.cond88 = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %or.cond88, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ca = shl i8 %i.ay, 1
  %i.cb = and i8 %i.ca, 30
  %i.cc = lshr i8 %i.bn, 5
  %i.cd = and i8 %i.cc, 1
  %i.ce = or disjoint i8 %i.cd, %i.cb             ; 2 uses
  %i.cf = icmp ne i8 %i.ce, 0
  %i.cg = icmp ne i8 %i.ce, 27
  %i.ch = and i1 %i.cf, %i.cg
  br label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121

bb.u:                                             ; preds = %bb.s
  %i.ci = and i32 %i.az, 248
  %i.cj = icmp eq i32 %i.ci, 240
  %or.cond89 = select i1 %i.cj, i1 %i.bz, i1 false
  br i1 %or.cond89, label %bb.v, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121

bb.v:                                             ; preds = %bb.u
  %i.ck = shl i8 %i.ay, 2
  %i.cl = and i8 %i.ck, 28
  %i.cm = lshr i8 %i.bn, 4
  %i.cn = and i8 %i.cm, 3
  %i.co = add nsw i8 %i.cl, -1
  %i.cp = add nsw i8 %i.co, %i.cn
  %i.cq = icmp ult i8 %i.cp, 16
  br label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121

bb.w:                                             ; preds = %bb.p
  %i.cr = getelementptr inbounds nuw i8, ptr %.174, i64 2
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !81
  %.old = and i32 %i.az, 248
  %.old90 = icmp eq i32 %.old, 240
  %.old92 = icmp slt i8 %i.bn, -64
  %or.cond94 = select i1 %.old90, i1 %.old92, i1 false
  %i.ct = icmp slt i8 %i.cs, -64
  %or.cond96 = select i1 %or.cond94, i1 %i.ct, i1 false
  br i1 %or.cond96, label %bb.x, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121

bb.x:                                             ; preds = %bb.w
  %i.cu = shl i8 %i.ay, 2
  %i.cv = and i8 %i.cu, 28
  %i.cw = lshr i8 %i.bn, 4
  %i.cx = and i8 %i.cw, 3
  %i.cy = add nsw i8 %i.cv, -1
  %i.cz = add nsw i8 %i.cy, %i.cx
  %i.da = icmp ult i8 %i.cz, 16
  br label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121

_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121: ; preds = %bb.e, %bb.f, %.lr.ph, %.preheader, %bb.n, %bb.u, %bb.r, %bb.x, %bb.v, %bb.t, %bb.q, %bb.l, %bb.m, %bb.k, %bb.h, %bb.g, %bb.i, %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit111.thread, %bb.p, %bb.w, %bb.o, %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit138, %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit132, %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit126, %bb.a
  %.3 = phi i1 [ %or.cond87, %bb.r ], [ true, %bb.a ], [ true, %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit138 ], [ true, %bb.n ], [ true, %bb.f ], [ true, %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit126 ], [ true, %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit132 ], [ %or.cond30.i, %.preheader ], [ false, %bb.o ], [ true, %bb.q ], [ false, %bb.h ], [ false, %bb.w ], [ false, %bb.p ], [ %.not160, %.lr.ph ], [ false, %bb.i ], [ false, %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit111.thread ], [ false, %bb.g ], [ true, %bb.k ], [ false, %bb.l ], [ %i.ch, %bb.t ], [ false, %bb.u ], [ false, %bb.m ], [ %i.da, %bb.x ], [ %i.cq, %bb.v ], [ true, %bb.e ]
  ret i1 %.3
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN13duckdb_yyjsonL15read_number_rawEPPhS1_jPNS_10yyjson_valEPPKc(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #23 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !92     ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !92     ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.b, align 1, !tbaa !81
  br label %bb.c

end_hunk_0
