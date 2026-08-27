Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/perf_jit_trampoline?download=true
inline.NumInlined: 32
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@perf_map_jit_write_entry:bb.a
  %.not10.i61 = icmp eq i32 %narrow87, 0
  br i1 %.not10.i61, label %perf_map_jit_write_fully.exit66, label %.lr.ph.i62.preheader

.lr.ph.i62.preheader:                             ; preds = %perf_map_jit_write_fully.exit60
  %i.cb = zext nneg i32 %narrow87 to i64
  br label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %.lr.ph.i62.preheader, %.lr.ph.i62
  %.012.i63 = phi i64 [ %i.ce, %.lr.ph.i62 ], [ %i.cb, %.lr.ph.i62.preheader ] ; 2 uses
  %.0911.i64 = phi ptr [ %i.cf, %.lr.ph.i62 ], [ %i.b, %.lr.ph.i62.preheader ] ; 2 uses
  %i.cc = call i64 @fwrite(ptr noundef %.0911.i64, i64 noundef 1, i64 noundef %.012.i63, ptr noundef %i.ca) ; 3 uses
  %i.cd = icmp ne i64 %i.cc, 0
  call void @llvm.assume(i1 %i.cd)
  %i.ce = sub i64 %.012.i63, %i.cc                ; 2 uses
  %i.cf = getelementptr i8, ptr %.0911.i64, i64 %i.cc
  %.not.i65 = icmp eq i64 %i.ce, 0
  br i1 %.not.i65, label %perf_map_jit_write_fully.exit66, label %.lr.ph.i62, !llvm.loop !32

perf_map_jit_write_fully.exit66:                  ; preds = %.lr.ph.i62, %perf_map_jit_write_fully.exit60
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  store i32 0, ptr %9, align 8, !tbaa !232
  %i.cg = trunc i64 %i.r to i32
  %i.ch = add i32 %2, 57
  %i.ci = add i32 %i.ch, %i.cg
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.ck = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #10 ; 0 uses
  %i.cl = load i64, ptr %4, align 8, !tbaa !217
  %i.cm = mul i64 %i.cl, 1000000000
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !219
  %i.cp = add i64 %i.cm, %i.co
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !235
  %i.cr = call i32 @getpid() #10
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %i.cr, ptr %i.cs, align 8, !tbaa !236
  %i.ct = call i64 (i64, ...) @syscall(i64 noundef 186) #10
  %i.cu = trunc i64 %i.ct to i32
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !237
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %i.ba, ptr %i.cw, align 8, !tbaa !238
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 %i.ba, ptr %i.cx, align 8, !tbaa !239
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 %i.bb, ptr %i.cy, align 8, !tbaa !240
  %i.cz = load i32, ptr getelementptr inbounds nuw (i8, ptr @perf_jit_map_state, i64 32), align 8, !tbaa !35
  %i.da = add i32 %i.cz, 1                        ; 2 uses
  store i32 %i.da, ptr getelementptr inbounds nuw (i8, ptr @perf_jit_map_state, i64 32), align 8, !tbaa !35
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !241
  %i.dd = load ptr, ptr @perf_jit_map_state, align 8, !tbaa !23
  br label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %.lr.ph.i68, %perf_map_jit_write_fully.exit66
  %.012.i69 = phi i64 [ %i.dg, %.lr.ph.i68 ], [ 56, %perf_map_jit_write_fully.exit66 ] ; 2 uses
  %.0911.i70 = phi ptr [ %i.dh, %.lr.ph.i68 ], [ %9, %perf_map_jit_write_fully.exit66 ] ; 2 uses
  %i.de = call i64 @fwrite(ptr noundef %.0911.i70, i64 noundef 1, i64 noundef %.012.i69, ptr noundef %i.dd) ; 3 uses
  %i.df = icmp ne i64 %i.de, 0
  call void @llvm.assume(i1 %i.df)
  %i.dg = sub i64 %.012.i69, %i.de                ; 2 uses
  %i.dh = getelementptr i8, ptr %.0911.i70, i64 %i.de
  %.not.i71 = icmp eq i64 %i.dg, 0
  br i1 %.not.i71, label %perf_map_jit_write_fully.exit72, label %.lr.ph.i68, !llvm.loop !32

perf_map_jit_write_fully.exit72:                  ; preds = %.lr.ph.i68
  %i.di = add i64 %i.r, 1                         ; 2 uses
  %i.dj = load ptr, ptr @perf_jit_map_state, align 8, !tbaa !23 ; 2 uses
  %.not10.i73 = icmp eq i64 %i.di, 0
  br i1 %.not10.i73, label %perf_map_jit_write_fully.exit78, label %.lr.ph.i74

.lr.ph.i74:                                       ; preds = %perf_map_jit_write_fully.exit72, %.lr.ph.i74
  %.012.i75 = phi i64 [ %i.dm, %.lr.ph.i74 ], [ %i.di, %perf_map_jit_write_fully.exit72 ] ; 2 uses
  %.0911.i76 = phi ptr [ %i.dn, %.lr.ph.i74 ], [ %i.o, %perf_map_jit_write_fully.exit72 ] ; 2 uses
  %i.dk = call i64 @fwrite(ptr noundef %.0911.i76, i64 noundef 1, i64 noundef %.012.i75, ptr noundef %i.dj) ; 3 uses
  %i.dl = icmp ne i64 %i.dk, 0
  call void @llvm.assume(i1 %i.dl)
  %i.dm = sub i64 %.012.i75, %i.dk                ; 2 uses
  %i.dn = getelementptr i8, ptr %.0911.i76, i64 %i.dk
  %.not.i77 = icmp eq i64 %i.dm, 0
  br i1 %.not.i77, label %perf_map_jit_write_fully.exit78.loopexit, label %.lr.ph.i74, !llvm.loop !32

perf_map_jit_write_fully.exit78.loopexit:         ; preds = %.lr.ph.i74
  %.pre90 = load ptr, ptr @perf_jit_map_state, align 8, !tbaa !23
  br label %perf_map_jit_write_fully.exit78

perf_map_jit_write_fully.exit78:                  ; preds = %perf_map_jit_write_fully.exit78.loopexit, %perf_map_jit_write_fully.exit72
  %i.do = phi ptr [ %.pre90, %perf_map_jit_write_fully.exit78.loopexit ], [ %i.dj, %perf_map_jit_write_fully.exit72 ]
  %.not10.i79 = icmp eq i32 %2, 0
  br i1 %.not10.i79, label %perf_map_jit_write_fully.exit84, label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %perf_map_jit_write_fully.exit78, %.lr.ph.i80
  %.012.i81 = phi i64 [ %i.dr, %.lr.ph.i80 ], [ %i.bb, %perf_map_jit_write_fully.exit78 ] ; 2 uses
  %.0911.i82 = phi ptr [ %i.ds, %.lr.ph.i80 ], [ %1, %perf_map_jit_write_fully.exit78 ] ; 2 uses
  %i.dp = call i64 @fwrite(ptr noundef %.0911.i82, i64 noundef 1, i64 noundef %.012.i81, ptr noundef %i.do) ; 3 uses
  %i.dq = icmp ne i64 %i.dp, 0
  call void @llvm.assume(i1 %i.dq)
  %i.dr = sub i64 %.012.i81, %i.dp                ; 2 uses
  %i.ds = getelementptr i8, ptr %.0911.i82, i64 %i.dp
  %.not.i83 = icmp eq i64 %i.dr, 0
  br i1 %.not.i83, label %perf_map_jit_write_fully.exit84, label %.lr.ph.i80, !llvm.loop !32

perf_map_jit_write_fully.exit84:                  ; preds = %.lr.ph.i80, %perf_map_jit_write_fully.exit78
  call void @PyMem_RawFree(ptr noundef nonnull %i.o) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %perf_map_jit_write_fully.exit84, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @perf_map_jit_fini(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr @perf_jit_map_state, align 8, !tbaa !23
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @perf_jit_map_state, i64 8), align 8, !tbaa !34
  %i.c = tail call i32 @PyThread_acquire_lock(ptr noundef %i.b, i32 noundef 1) #10 ; 0 uses
  %i.d = load ptr, ptr @perf_jit_map_state, align 8, !tbaa !23
  %i.e = tail call i32 @fclose(ptr noundef %i.d)  ; 0 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @perf_jit_map_state, i64 8), align 8, !tbaa !34
  tail call void @PyThread_release_lock(ptr noundef %i.f) #10
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @perf_jit_map_state, i64 8), align 8, !tbaa !34
  tail call void @PyThread_free_lock(ptr noundef %i.g) #10
  store ptr null, ptr @perf_jit_map_state, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @perf_jit_map_state, i64 16), align 8, !tbaa !11 ; 2 uses
  %.not1 = icmp eq ptr %i.h, null
  br i1 %.not1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @perf_jit_map_state, i64 24), align 8, !tbaa !22
  %i.j = tail call i32 @munmap(ptr noundef nonnull %i.h, i64 noundef %i.i) #10 ; 0 uses
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @perf_jit_map_state, i64 16), align 8, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2848), align 8, !tbaa !242
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i32 @open64(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @mmap64(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fdopen(i32 noundef, ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @setvbuf(ptr noundef captures(none), ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @PyThread_allocate_lock() local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @_Py_GetConfig() local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @prctl(i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @elf_init_ehframe(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39     ; 8 uses
  %i.b = getelementptr i8, ptr %i.a, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !7
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = getelementptr i8, ptr %i.a, i64 12       ; 2 uses
  store <4 x i8> <i8 1, i8 122, i8 82, i8 0>, ptr %i.c, align 4, !tbaa !225
  store ptr %i.e, ptr %0, align 8, !tbaa !39
  %1 = getelementptr i8, ptr %i.a, i64 20
  store <8 x i8> <i8 1, i8 120, i8 16, i8 1, i8 27, i8 12, i8 7, i8 8>, ptr %i.e, align 4, !tbaa !225
  %i.f = getelementptr i8, ptr %i.a, i64 21
  store i8 -112, ptr %1, align 4, !tbaa !225
  %i.g = getelementptr i8, ptr %i.a, i64 22       ; 3 uses
  store i8 1, ptr %i.f, align 1, !tbaa !225
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = and i64 %i.h, 7
  %.not109 = icmp eq i64 %i.i, 0
  br i1 %.not109, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a, %.lr.ph.preheader
  %.0110 = phi ptr [ %2, %.lr.ph.preheader ], [ %i.g, %bb.a ] ; 2 uses
  %2 = getelementptr i8, ptr %.0110, i64 1        ; 3 uses
  store i8 0, ptr %.0110, align 1, !tbaa !225
  %3 = ptrtoint ptr %2 to i64                     ; 2 uses
  %4 = and i64 %3, 7
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader, !llvm.loop !243

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  %.0.lcssa = phi ptr [ %i.g, %bb.a ], [ %2, %.lr.ph.preheader ] ; 9 uses
  %.lcssa108 = phi i64 [ %i.h, %bb.a ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %i.j = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.k = sub i64 %.lcssa108, %i.j
  %i.l = trunc i64 %i.k to i32
  %i.m = add i32 %i.l, -4
  store i32 %i.m, ptr %i.a, align 4, !tbaa !7
  %i.n = getelementptr i8, ptr %0, i64 16
  store ptr %.0.lcssa, ptr %i.n, align 8, !tbaa !230
  %i.o = getelementptr i8, ptr %.0.lcssa, i64 4   ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.p, %i.j
  %i.r = trunc i64 %i.q to i32
  store i32 %i.r, ptr %i.o, align 4, !tbaa !7
  %i.s = getelementptr i8, ptr %.0.lcssa, i64 8   ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 24         ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !41
  store i32 0, ptr %i.s, align 4, !tbaa !7
  %i.u = getelementptr i8, ptr %.0.lcssa, i64 12
  %i.v = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !36
  store i32 %i.w, ptr %i.u, align 4, !tbaa !7
  %i.x = getelementptr i8, ptr %.0.lcssa, i64 16
  %i.y = getelementptr i8, ptr %.0.lcssa, i64 20  ; 2 uses
  store <4 x i8> <i8 0, i8 65, i8 14, i8 16>, ptr %i.x, align 4, !tbaa !225
  store ptr %i.y, ptr %0, align 8, !tbaa !39
  %i.z = getelementptr i8, ptr %.0.lcssa, i64 28
  store <8 x i8> <i8 -122, i8 2, i8 67, i8 13, i8 6, i8 67, i8 12, i8 7>, ptr %i.y, align 4, !tbaa !225
  %i.aa = getelementptr i8, ptr %.0.lcssa, i64 29 ; 3 uses
  store i8 8, ptr %i.z, align 4, !tbaa !225
  %i.ab = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ac = and i64 %i.ab, 7
  %.not102112 = icmp eq i64 %i.ac, 0
  br i1 %.not102112, label %._crit_edge116, label %.lr.ph115.preheader

.lr.ph115.preheader:                              ; preds = %._crit_edge, %.lr.ph115.preheader
  %.1113 = phi ptr [ %5, %.lr.ph115.preheader ], [ %i.aa, %._crit_edge ] ; 2 uses
  %5 = getelementptr i8, ptr %.1113, i64 1        ; 3 uses
  store i8 0, ptr %.1113, align 1, !tbaa !225
  %6 = ptrtoint ptr %5 to i64                     ; 2 uses
  %7 = and i64 %6, 7
  %.not102 = icmp eq i64 %7, 0
  br i1 %.not102, label %._crit_edge116, label %.lr.ph115.preheader, !llvm.loop !244

._crit_edge116:                                   ; preds = %.lr.ph115.preheader, %._crit_edge
  %.1.lcssa = phi ptr [ %i.aa, %._crit_edge ], [ %5, %.lr.ph115.preheader ]
  %.lcssa = phi i64 [ %i.ab, %._crit_edge ], [ %6, %.lr.ph115.preheader ]
  %i.ad = sub i64 %.lcssa, %.lcssa108
  %i.ae = trunc i64 %i.ad to i32
  %i.af = add i32 %i.ae, -4
  store i32 %i.af, ptr %.0.lcssa, align 4, !tbaa !7
  store ptr %.1.lcssa, ptr %0, align 8, !tbaa !39
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !41  ; 3 uses
  %.not103 = icmp eq ptr %i.ag, null
  br i1 %.not103, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge116
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %.neg = sub i64 %i.aj, %i.ai
  %.neg104 = trunc i64 %.neg to i32
  %i.ak = load i32, ptr %i.v, align 8, !tbaa !36  ; 3 uses
  %i.al = and i32 %i.ak, 7
  %i.am = icmp eq i32 %i.al, 0
  %narrow.neg = or i32 %i.ak, -8
  %narrow106.neg119 = select i1 %i.am, i32 0, i32 %narrow.neg
  %.0.i.neg = sub i32 %.neg104, %i.ak
  %.neg105 = add i32 %.0.i.neg, %narrow106.neg119
  store i32 %.neg105, ptr %i.ag, align 4, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge116
  ret void
}

declare ptr @PyUnicode_AsUTF8(ptr noundef) local_unnamed_addr #5

declare ptr @PyMem_RawMalloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind
declare i64 @syscall(i64 noundef, ...) local_unnamed_addr #2

declare void @PyMem_RawFree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyThread_acquire_lock(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @PyThread_release_lock(ptr noundef) local_unnamed_addr #5

declare void @PyThread_free_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !14, i64 16}
!12 = !{!"", !13, i64 0, !14, i64 8, !14, i64 16, !15, i64 24, !8, i64 32}
!13 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"long", !9, i64 0}
!16 = !{!17, !8, i64 12}
!17 = !{!"PyConfig", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !15, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !18, i64 64, !8, i64 72, !8, i64 76, !18, i64 80, !18, i64 88, !18, i64 96, !8, i64 104, !19, i64 112, !19, i64 128, !19, i64 144, !19, i64 160, !8, i64 176, !8, i64 180, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !18, i64 232, !18, i64 240, !18, i64 248, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !18, i64 288, !18, i64 296, !18, i64 304, !18, i64 312, !8, i64 320, !19, i64 328, !18, i64 344, !18, i64 352, !18, i64 360, !18, i64 368, !18, i64 376, !18, i64 384, !18, i64 392, !8, i64 400, !18, i64 408, !18, i64 416, !18, i64 424, !18, i64 432, !8, i64 440, !8, i64 444, !8, i64 448}
!18 = !{!"p1 int", !14, i64 0}
!19 = !{!"", !15, i64 0, !20, i64 8}
!20 = !{!"p2 int", !21, i64 0}
!21 = !{!"any p2 pointer", !14, i64 0}
!22 = !{!12, !15, i64 24}
!23 = !{!12, !13, i64 0}
!24 = !{!25, !8, i64 16}
!25 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !15, i64 24, !15, i64 32}
!26 = !{!25, !8, i64 20}
!27 = !{!28, !15, i64 0}
!28 = !{!"timeval", !15, i64 0, !15, i64 8}
!29 = !{!28, !15, i64 8}
!30 = !{!25, !15, i64 24}
!31 = !{!25, !15, i64 32}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!12, !14, i64 8}
!35 = !{!12, !8, i64 32}
!36 = !{!37, !8, i64 32}
!37 = !{!"ELFObjectContext", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !8, i64 32}
!38 = !{!"p1 omnipotent char", !14, i64 0}
!39 = !{!37, !38, i64 0}
!40 = !{!37, !38, i64 8}
!41 = !{!37, !38, i64 24}
!42 = !{!43, !15, i64 2856}
!43 = !{!"pyruntimestate", !44, i64 0, !8, i64 824, !8, i64 828, !8, i64 832, !8, i64 836, !8, i64 840, !65, i64 848, !15, i64 856, !66, i64 864, !15, i64 896, !65, i64 904, !69, i64 912, !73, i64 936, !79, i64 1240, !80, i64 1256, !82, i64 1280, !86, i64 1320, !89, i64 2400, !19, i64 2408, !90, i64 2424, !92, i64 2488, !93, i64 2760, !97, i64 2800, !102, i64 10144, !103, i64 10160, !105, i64 10168, !106, i64 10176, !112, i64 10352, !115, i64 10568, !48, i64 10584, !116, i64 10592, !119, i64 10616, !14, i64 10656, !14, i64 10664, !120, i64 10672, !122, i64 10688, !123, i64 10692, !124, i64 10704, !126, i64 10720, !127, i64 14120, !128, i64 14128, !129, i64 14136, !144, i64 119552}
!44 = !{!"_Py_DebugOffsets", !9, i64 0, !15, i64 8, !15, i64 16, !45, i64 24, !46, i64 48, !47, i64 176, !48, i64 296, !49, i64 304, !50, i64 368, !51, i64 456, !52, i64 472, !53, i64 504, !54, i64 528, !55, i64 552, !56, i64 584, !57, i64 608, !58, i64 624, !59, i64 648, !60, i64 672, !61, i64 704, !62, i64 728, !63, i64 760, !64, i64 776}
!45 = !{!"_runtime_state", !15, i64 0, !15, i64 8, !15, i64 16}
!46 = !{!"_interpreter_state", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120}
!47 = !{!"_thread_state", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112}
!48 = !{!"", !15, i64 0}
!49 = !{!"_interpreter_frame", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56}
!50 = !{!"_code_object", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80}
!51 = !{!"_pyobject", !15, i64 0, !15, i64 8}
!52 = !{!"_type_object", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!53 = !{!"_tuple_object", !15, i64 0, !15, i64 8, !15, i64 16}
!54 = !{!"_list_object", !15, i64 0, !15, i64 8, !15, i64 16}
!55 = !{!"_set_object", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!56 = !{!"_dict_object", !15, i64 0, !15, i64 8, !15, i64 16}
!57 = !{!"_float_object", !15, i64 0, !15, i64 8}
!58 = !{!"_long_object", !15, i64 0, !15, i64 8, !15, i64 16}
!59 = !{!"_bytes_object", !15, i64 0, !15, i64 8, !15, i64 16}
!60 = !{!"_unicode_object", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!61 = !{!"_gc", !15, i64 0, !15, i64 8, !15, i64 16}
!62 = !{!"_gen_object", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!63 = !{!"_llist_node", !15, i64 0, !15, i64 8}
!64 = !{!"_debugger_support", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40}
!65 = !{!"p1 _ZTS3_ts", !14, i64 0}
!66 = !{!"pyinterpreters", !67, i64 0, !68, i64 8, !68, i64 16, !15, i64 24}
!67 = !{!"PyMutex", !9, i64 0}
!68 = !{!"p1 _ZTS3_is", !14, i64 0}
!69 = !{!"", !70, i64 0}
!70 = !{!"_xid_lookup_state", !71, i64 0}
!71 = !{!"", !8, i64 0, !8, i64 4, !67, i64 8, !72, i64 16}
!72 = !{!"p1 _ZTS12_xid_regitem", !14, i64 0}
!73 = !{!"_pymem_allocators", !67, i64 0, !74, i64 8, !76, i64 128, !8, i64 272, !8, i64 276, !78, i64 280}
!74 = !{!"", !75, i64 0, !75, i64 40, !75, i64 80}
!75 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32}
!76 = !{!"", !77, i64 0, !77, i64 48, !77, i64 96}
!77 = !{!"", !9, i64 0, !75, i64 8}
!78 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16}
!79 = !{!"_obmalloc_global_state", !8, i64 0, !15, i64 8}
!80 = !{!"pyhash_runtime_state", !81, i64 0}
!81 = !{!"", !8, i64 0, !15, i64 8, !15, i64 16}
!82 = !{!"_pythread_runtime_state", !8, i64 0, !83, i64 8, !84, i64 24}
!83 = !{!"", !14, i64 0, !9, i64 8}
!84 = !{!"llist_node", !85, i64 0, !85, i64 8}
!85 = !{!"p1 _ZTS10llist_node", !14, i64 0}
!86 = !{!"_signals_runtime_state", !9, i64 0, !87, i64 1040, !8, i64 1048, !88, i64 1056, !88, i64 1064, !8, i64 1072}
!87 = !{!"", !8, i64 0, !8, i64 4}
!88 = !{!"p1 _ZTS7_object", !14, i64 0}
!89 = !{!"_Py_tss_t", !8, i64 0, !8, i64 4}
!90 = !{!"_parser_runtime_state", !8, i64 0, !91, i64 8}
!91 = !{!"_expr", !8, i64 0, !9, i64 8, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52}
!92 = !{!"_atexit_runtime_state", !67, i64 0, !9, i64 8, !8, i64 264}
!93 = !{!"_import_runtime_state", !94, i64 0, !15, i64 8, !95, i64 16, !38, i64 32}
!94 = !{!"p1 _ZTS8_inittab", !14, i64 0}
!95 = !{!"", !67, i64 0, !96, i64 8}
!96 = !{!"p1 _ZTS15_Py_hashtable_t", !14, i64 0}
!97 = !{!"_ceval_runtime_state", !98, i64 0, !101, i64 112}
!98 = !{!"", !8, i64 0, !8, i64 4, !15, i64 8, !99, i64 16, !100, i64 24, !13, i64 72, !15, i64 80, !14, i64 88, !15, i64 96, !8, i64 104}
!99 = !{!"p1 _ZTS13code_arena_st", !14, i64 0}
!100 = !{!"trampoline_api_st", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !15, i64 32, !15, i64 40}
!101 = !{!"_pending_calls", !65, i64 0, !67, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !9, i64 24, !8, i64 7224, !8, i64 7228}
!102 = !{!"_gilstate_runtime_state", !8, i64 0, !68, i64 8}
!103 = !{!"_getargs_runtime_state", !104, i64 0}
!104 = !{!"p1 _ZTS13_PyArg_Parser", !14, i64 0}
!105 = !{!"_fileutils_state", !8, i64 0}
!106 = !{!"_faulthandler_runtime_state", !107, i64 0, !108, i64 40, !110, i64 120, !111, i64 128, !111, i64 152}
!107 = !{!"", !8, i64 0, !88, i64 8, !8, i64 16, !8, i64 20, !68, i64 24, !8, i64 32}
!108 = !{!"", !88, i64 0, !8, i64 8, !109, i64 16, !8, i64 24, !68, i64 32, !8, i64 40, !38, i64 48, !15, i64 56, !14, i64 64, !14, i64 72}
!109 = !{!"long long", !9, i64 0}
!110 = !{!"p1 _ZTS24faulthandler_user_signal", !14, i64 0}
!111 = !{!"", !14, i64 0, !8, i64 8, !15, i64 16}
!112 = !{!"_tracemalloc_runtime_state", !113, i64 0, !74, i64 16, !67, i64 136, !15, i64 144, !15, i64 152, !96, i64 160, !114, i64 168, !96, i64 176, !96, i64 184, !96, i64 192, !114, i64 200, !89, i64 208}
!113 = !{!"_PyTraceMalloc_Config", !8, i64 0, !8, i64 4, !8, i64 8}
!114 = !{!"p1 _ZTS21tracemalloc_traceback", !14, i64 0}
!115 = !{!"_reftracer_runtime_state", !14, i64 0, !14, i64 8}
!116 = !{!"_stoptheworld_state", !67, i64 0, !117, i64 1, !117, i64 2, !117, i64 3, !118, i64 4, !15, i64 8, !65, i64 16}
!117 = !{!"_Bool", !9, i64 0}
!118 = !{!"", !9, i64 0}
!119 = !{!"PyPreConfig", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36}
!120 = !{!"", !67, i64 0, !121, i64 8}
!121 = !{!"p1 _ZTS18_Py_AuditHookEntry", !14, i64 0}
!122 = !{!"_py_object_runtime_state", !8, i64 0}
!123 = !{!"_Py_float_runtime_state", !8, i64 0, !8, i64 4}
!124 = !{!"_Py_unicode_runtime_state", !125, i64 0}
!125 = !{!"_Py_unicode_runtime_ids", !67, i64 0, !15, i64 8}
!126 = !{!"_types_runtime_state", !8, i64 0, !118, i64 8}
!127 = !{!"_Py_time_runtime_state", !9, i64 0}
!128 = !{!"_Py_cached_objects", !96, i64 0}
!129 = !{!"_Py_static_objects", !130, i64 0}
!130 = !{!"", !9, i64 0, !131, i64 32960, !9, i64 33000, !135, i64 45288, !141, i64 105288, !131, i64 105304, !141, i64 105344, !142, i64 105360, !143, i64 105400}
!131 = !{!"", !132, i64 0, !15, i64 24, !9, i64 32}
!132 = !{!"PyVarObject", !133, i64 0, !15, i64 16}
!133 = !{!"_object", !9, i64 0, !134, i64 8}
!134 = !{!"p1 _ZTS11_typeobject", !14, i64 0}
!135 = !{!"_Py_global_strings", !136, i64 0, !140, i64 1336, !9, i64 45664, !9, i64 51808}
!136 = !{!"", !137, i64 0, !137, i64 56, !137, i64 112, !137, i64 168, !137, i64 224, !137, i64 280, !137, i64 328, !137, i64 384, !137, i64 440, !137, i64 496, !137, i64 544, !137, i64 592, !137, i64 640, !137, i64 696, !137, i64 752, !137, i64 800, !137, i64 848, !137, i64 896, !137, i64 952, !137, i64 1008, !137, i64 1064, !137, i64 1128, !137, i64 1184, !137, i64 1232, !137, i64 1288}
!137 = !{!"", !138, i64 0, !9, i64 40}
!138 = !{!"", !133, i64 0, !15, i64 16, !15, i64 24, !139, i64 32}
!139 = !{!"_PyUnicodeObject_state", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0}
!140 = !{!"", !137, i64 0, !137, i64 56, !137, i64 112, !137, i64 168, !137, i64 224, !137, i64 280, !137, i64 336, !137, i64 392, !137, i64 448, !137, i64 504, !137, i64 552, !137, i64 600, !137, i64 656, !137, i64 704, !137, i64 760, !137, i64 816, !137, i64 872, !137, i64 928, !137, i64 984, !137, i64 1032, !137, i64 1080, !137, i64 1136, !137, i64 1184, !137, i64 1240, !137, i64 1304, !137, i64 1360, !137, i64 1416, !137, i64 1464, !137, i64 1528, !137, i64 1576, !137, i64 1632, !137, i64 1688, !137, i64 1744, !137, i64 1792, !137, i64 1840, !137, i64 1896, !137, i64 1952, !137, i64 2016, !137, i64 2072, !137, i64 2136, !137, i64 2192, !137, i64 2248, !137, i64 2304, !137, i64 2360, !137, i64 2416, !137, i64 2472, !137, i64 2528, !137, i64 2584, !137, i64 2640, !137, i64 2696, !137, i64 2752, !137, i64 2808, !137, i64 2872, !137, i64 2928, !137, i64 2984, !137, i64 3048, !137, i64 3104, !137, i64 3176, !137, i64 3232, !137, i64 3304, !137, i64 3352, !137, i64 3408, !137, i64 3464, !137, i64 3520, !137, i64 3576, !137, i64 3632, !137, i64 3680, !137, i64 3736, !137, i64 3784, !137, i64 3840, !137, i64 3888, !137, i64 3944, !137, i64 4000, !137, i64 4056, !137, i64 4112, !137, i64 4168, !137, i64 4224, !137, i64 4280, !137, i64 4336, !137, i64 4384, !137, i64 4432, !137, i64 4488, !137, i64 4552, !137, i64 4608, !137, i64 4664, !137, i64 4720, !137, i64 4784, !137, i64 4840, !137, i64 4888, !137, i64 4944, !137, i64 5000, !137, i64 5056, !137, i64 5112, !137, i64 5168, !137, i64 5224, !137, i64 5280, !137, i64 5336, !137, i64 5392, !137, i64 5448, !137, i64 5504, !137, i64 5568, !137, i64 5632, !137, i64 5680, !137, i64 5736, !137, i64 5784, !137, i64 5840, !137, i64 5896, !137, i64 5960, !137, i64 6016, !137, i64 6072, !137, i64 6128, !137, i64 6184, !137, i64 6240, !137, i64 6304, !137, i64 6352, !137, i64 6400, !137, i64 6456, !137, i64 6512, !137, i64 6568, !137, i64 6624, !137, i64 6672, !137, i64 6728, !137, i64 6784, !137, i64 6840, !137, i64 6896, !137, i64 6944, !137, i64 7000, !137, i64 7056, !137, i64 7104, !137, i64 7160, !137, i64 7208, !137, i64 7256, !137, i64 7304, !137, i64 7360, !137, i64 7416, !137, i64 7472, !137, i64 7528, !137, i64 7576, !137, i64 7632, !137, i64 7688, !137, i64 7744, !137, i64 7800, !137, i64 7856, !137, i64 7904, !137, i64 7952, !137, i64 8008, !137, i64 8064, !137, i64 8120, !137, i64 8176, !137, i64 8232, !137, i64 8288, !137, i64 8344, !137, i64 8408, !137, i64 8464, !137, i64 8520, !137, i64 8576, !137, i64 8632, !137, i64 8688, !137, i64 8744, !137, i64 8800, !137, i64 8848, !137, i64 8904, !137, i64 8960, !137, i64 9016, !137, i64 9072, !137, i64 9128, !137, i64 9184, !137, i64 9240, !137, i64 9288, !137, i64 9344, !137, i64 9400, !137, i64 9456, !137, i64 9512, !137, i64 9568, !137, i64 9624, !137, i64 9680, !137, i64 9736, !137, i64 9800, !137, i64 9848, !137, i64 9896, !137, i64 9960, !137, i64 10024, !137, i64 10080, !137, i64 10136, !137, i64 10192, !137, i64 10272, !137, i64 10344, !137, i64 10408, !137, i64 10480, !137, i64 10544, !137, i64 10608, !137, i64 10664, !137, i64 10712, !137, i64 10768, !137, i64 10824, !137, i64 10872, !137, i64 10928, !137, i64 10984, !137, i64 11040, !137, i64 11112, !137, i64 11168, !137, i64 11224, !137, i64 11280, !137, i64 11336, !137, i64 11400, !137, i64 11456, !137, i64 11512, !137, i64 11568, !137, i64 11624, !137, i64 11680, !137, i64 11736, !137, i64 11784, !137, i64 11840, !137, i64 11904, !137, i64 11960, !137, i64 12016, !137, i64 12064, !137, i64 12128, !137, i64 12192, !137, i64 12248, !137, i64 12296, !137, i64 12360, !137, i64 12408, !137, i64 12472, !137, i64 12528, !137, i64 12584, !137, i64 12640, !137, i64 12696, !137, i64 12752, !137, i64 12808, !137, i64 12872, !137, i64 12944, !137, i64 13008, !137, i64 13056, !137, i64 13128, !137, i64 13200, !137, i64 13256, !137, i64 13304, !137, i64 13352, !137, i64 13400, !137, i64 13448, !137, i64 13512, !137, i64 13560, !137, i64 13616, !137, i64 13672, !137, i64 13720, !137, i64 13768, !137, i64 13816, !137, i64 13872, !137, i64 13928, !137, i64 13976, !137, i64 14024, !137, i64 14072, !137, i64 14120, !137, i64 14168, !137, i64 14224, !137, i64 14272, !137, i64 14336, !137, i64 14384, !137, i64 14432, !137, i64 14480, !137, i64 14536, !137, i64 14592, !137, i64 14648, !137, i64 14696, !137, i64 14744, !137, i64 14792, !137, i64 14848, !137, i64 14904, !137, i64 14960, !137, i64 15008, !137, i64 15064, !137, i64 15112, !137, i64 15160, !137, i64 15216, !137, i64 15272, !137, i64 15328, !137, i64 15376, !137, i64 15424, !137, i64 15480, !137, i64 15536, !137, i64 15592, !137, i64 15648, !137, i64 15696, !137, i64 15752, !137, i64 15800, !137, i64 15856, !137, i64 15920, !137, i64 15976, !137, i64 16024, !137, i64 16080, !137, i64 16144, !137, i64 16208, !137, i64 16256, !137, i64 16304, !137, i64 16352, !137, i64 16416, !137, i64 16472, !137, i64 16528, !137, i64 16584, !137, i64 16632, !137, i64 16680, !137, i64 16736, !137, i64 16792, !137, i64 16840, !137, i64 16896, !137, i64 16944, !137, i64 17008, !137, i64 17056, !137, i64 17104, !137, i64 17152, !137, i64 17200, !137, i64 17248, !137, i64 17296, !137, i64 17352, !137, i64 17408, !137, i64 17456, !137, i64 17512, !137, i64 17576, !137, i64 17632, !137, i64 17688, !137, i64 17744, !137, i64 17800, !137, i64 17864, !137, i64 17920, !137, i64 17968, !137, i64 18024, !137, i64 18080, !137, i64 18144, !137, i64 18200, !137, i64 18256, !137, i64 18312, !137, i64 18360, !137, i64 18416, !137, i64 18472, !137, i64 18520, !137, i64 18576, !137, i64 18632, !137, i64 18688, !137, i64 18736, !137, i64 18784, !137, i64 18832, !137, i64 18888, !137, i64 18944, !137, i64 18992, !137, i64 19040, !137, i64 19088, !137, i64 19136, !137, i64 19184, !137, i64 19240, !137, i64 19288, !137, i64 19336, !137, i64 19400, !137, i64 19448, !137, i64 19504, !137, i64 19552, !137, i64 19600, !137, i64 19648, !137, i64 19696, !137, i64 19744, !137, i64 19792, !137, i64 19840, !137, i64 19896, !137, i64 19944, !137, i64 19992, !137, i64 20048, !137, i64 20104, !137, i64 20160, !137, i64 20208, !137, i64 20256, !137, i64 20320, !137, i64 20368, !137, i64 20424, !137, i64 20480, !137, i64 20528, !137, i64 20576, !137, i64 20632, !137, i64 20688, !137, i64 20736, !137, i64 20784, !137, i64 20832, !137, i64 20888, !137, i64 20936, !137, i64 20992, !137, i64 21048, !137, i64 21104, !137, i64 21160, !137, i64 21216, !137, i64 21264, !137, i64 21320, !137, i64 21368, !137, i64 21424, !137, i64 21480, !137, i64 21536, !137, i64 21584, !137, i64 21640, !137, i64 21688, !137, i64 21736, !137, i64 21784, !137, i64 21840, !137, i64 21888, !137, i64 21936, !137, i64 21992, !137, i64 22040, !137, i64 22096, !137, i64 22152, !137, i64 22208, !137, i64 22272, !137, i64 22320, !137, i64 22368, !137, i64 22424, !137, i64 22472, !137, i64 22528, !137, i64 22584, !137, i64 22632, !137, i64 22688, !137, i64 22736, !137, i64 22784, !137, i64 22832, !137, i64 22880, !137, i64 22928, !137, i64 22976, !137, i64 23024, !137, i64 23072, !137, i64 23120, !137, i64 23176, !137, i64 23232, !137, i64 23280, !137, i64 23336, !137, i64 23392, !137, i64 23440, !137, i64 23488, !137, i64 23536, !137, i64 23592, !137, i64 23648, !137, i64 23696, !137, i64 23744, !137, i64 23792, !137, i64 23848, !137, i64 23904, !137, i64 23952, !137, i64 24008, !137, i64 24064, !137, i64 24120, !137, i64 24176, !137, i64 24232, !137, i64 24288, !137, i64 24336, !137, i64 24384, !137, i64 24440, !137, i64 24488, !137, i64 24536, !137, i64 24584, !137, i64 24640, !137, i64 24688, !137, i64 24744, !137, i64 24800, !137, i64 24856, !137, i64 24912, !137, i64 24960, !137, i64 25016, !137, i64 25064, !137, i64 25112, !137, i64 25168, !137, i64 25216, !137, i64 25264, !137, i64 25320, !137, i64 25376, !137, i64 25432, !137, i64 25480, !137, i64 25528, !137, i64 25576, !137, i64 25624, !137, i64 25672, !137, i64 25720, !137, i64 25768, !137, i64 25816, !137, i64 25872, !137, i64 25920, !137, i64 25976, !137, i64 26024, !137, i64 26080, !137, i64 26136, !137, i64 26184, !137, i64 26240, !137, i64 26296, !137, i64 26344, !137, i64 26400, !137, i64 26448, !137, i64 26504, !137, i64 26560, !137, i64 26616, !137, i64 26664, !137, i64 26720, !137, i64 26776, !137, i64 26832, !137, i64 26888, !137, i64 26936, !137, i64 26992, !137, i64 27040, !137, i64 27096, !137, i64 27152, !137, i64 27208, !137, i64 27256, !137, i64 27312, !137, i64 27368, !137, i64 27416, !137, i64 27472, !137, i64 27520, !137, i64 27576, !137, i64 27632, !137, i64 27680, !137, i64 27736, !137, i64 27792, !137, i64 27848, !137, i64 27896, !137, i64 27944, !137, i64 27992, !137, i64 28040, !137, i64 28096, !137, i64 28152, !137, i64 28200, !137, i64 28248, !137, i64 28304, !137, i64 28352, !137, i64 28400, !137, i64 28448, !137, i64 28496, !137, i64 28544, !137, i64 28592, !137, i64 28640, !137, i64 28688, !137, i64 28744, !137, i64 28792, !137, i64 28840, !137, i64 28896, !137, i64 28952, !137, i64 29008, !137, i64 29064, !137, i64 29120, !137, i64 29168, !137, i64 29224, !137, i64 29272, !137, i64 29320, !137, i64 29368, !137, i64 29416, !137, i64 29464, !137, i64 29512, !137, i64 29568, !137, i64 29616, !137, i64 29664, !137, i64 29712, !137, i64 29760, !137, i64 29808, !137, i64 29864, !137, i64 29912, !137, i64 29968, !137, i64 30016, !137, i64 30064, !137, i64 30112, !137, i64 30168, !137, i64 30224, !137, i64 30280, !137, i64 30328, !137, i64 30376, !137, i64 30424, !137, i64 30480, !137, i64 30536, !137, i64 30592, !137, i64 30648, !137, i64 30696, !137, i64 30752, !137, i64 30808, !137, i64 30856, !137, i64 30912, !137, i64 30968, !137, i64 31024, !137, i64 31072, !137, i64 31120, !137, i64 31168, !137, i64 31216, !137, i64 31264, !137, i64 31320, !137, i64 31368, !137, i64 31416, !137, i64 31464, !137, i64 31512, !137, i64 31560, !137, i64 31608, !137, i64 31656, !137, i64 31712, !137, i64 31776, !137, i64 31840, !137, i64 31888, !137, i64 31944, !137, i64 32008, !137, i64 32064, !137, i64 32112, !137, i64 32160, !137, i64 32208, !137, i64 32264, !137, i64 32320, !137, i64 32368, !137, i64 32424, !137, i64 32472, !137, i64 32520, !137, i64 32576, !137, i64 32632, !137, i64 32680, !137, i64 32728, !137, i64 32776, !137, i64 32824, !137, i64 32872, !137, i64 32920, !137, i64 32968, !137, i64 33016, !137, i64 33072, !137, i64 33128, !137, i64 33184, !137, i64 33240, !137, i64 33304, !137, i64 33360, !137, i64 33408, !137, i64 33456, !137, i64 33504, !137, i64 33552, !137, i64 33600, !137, i64 33656, !137, i64 33712, !137, i64 33760, !137, i64 33808, !137, i64 33856, !137, i64 33904, !137, i64 33952, !137, i64 34008, !137, i64 34056, !137, i64 34112, !137, i64 34160, !137, i64 34208, !137, i64 34256, !137, i64 34312, !137, i64 34360, !137, i64 34416, !137, i64 34464, !137, i64 34512, !137, i64 34560, !137, i64 34616, !137, i64 34672, !137, i64 34720, !137, i64 34776, !137, i64 34824, !137, i64 34880, !137, i64 34928, !137, i64 34976, !137, i64 35024, !137, i64 35072, !137, i64 35120, !137, i64 35168, !137, i64 35224, !137, i64 35288, !137, i64 35344, !137, i64 35400, !137, i64 35464, !137, i64 35528, !137, i64 35576, !137, i64 35632, !137, i64 35680, !137, i64 35728, !137, i64 35776, !137, i64 35832, !137, i64 35880, !137, i64 35936, !137, i64 35992, !137, i64 36040, !137, i64 36088, !137, i64 36136, !137, i64 36192, !137, i64 36240, !137, i64 36296, !137, i64 36352, !137, i64 36408, !137, i64 36464, !137, i64 36512, !137, i64 36568, !137, i64 36632, !137, i64 36688, !137, i64 36736, !137, i64 36784, !137, i64 36832, !137, i64 36880, !137, i64 36928, !137, i64 36976, !137, i64 37024, !137, i64 37080, !137, i64 37136, !137, i64 37184, !137, i64 37240, !137, i64 37296, !137, i64 37344, !137, i64 37392, !137, i64 37448, !137, i64 37504, !137, i64 37552, !137, i64 37616, !137, i64 37672, !137, i64 37728, !137, i64 37776, !137, i64 37824, !137, i64 37872, !137, i64 37936, !137, i64 37984, !137, i64 38040, !137, i64 38096, !137, i64 38144, !137, i64 38192, !137, i64 38240, !137, i64 38296, !137, i64 38352, !137, i64 38408, !137, i64 38456, !137, i64 38512, !137, i64 38560, !137, i64 38616, !137, i64 38672, !137, i64 38728, !137, i64 38776, !137, i64 38824, !137, i64 38872, !137, i64 38928, !137, i64 38976, !137, i64 39024, !137, i64 39072, !137, i64 39128, !137, i64 39192, !137, i64 39264, !137, i64 39312, !137, i64 39360, !137, i64 39408, !137, i64 39456, !137, i64 39520, !137, i64 39568, !137, i64 39616, !137, i64 39672, !137, i64 39728, !137, i64 39784, !137, i64 39832, !137, i64 39888, !137, i64 39944, !137, i64 39992, !137, i64 40040, !137, i64 40088, !137, i64 40136, !137, i64 40184, !137, i64 40232, !137, i64 40280, !137, i64 40336, !137, i64 40392, !137, i64 40448, !137, i64 40496, !137, i64 40552, !137, i64 40600, !137, i64 40648, !137, i64 40704, !137, i64 40776, !137, i64 40824, !137, i64 40872, !137, i64 40928, !137, i64 40976, !137, i64 41040, !137, i64 41088, !137, i64 41144, !137, i64 41200, !137, i64 41256, !137, i64 41304, !137, i64 41352, !137, i64 41408, !137, i64 41456, !137, i64 41504, !137, i64 41552, !137, i64 41608, !137, i64 41656, !137, i64 41704, !137, i64 41752, !137, i64 41800, !137, i64 41848, !137, i64 41904, !137, i64 41960, !137, i64 42016, !137, i64 42072, !137, i64 42128, !137, i64 42176, !137, i64 42232, !137, i64 42288, !137, i64 42344, !137, i64 42392, !137, i64 42440, !137, i64 42496, !137, i64 42544, !137, i64 42592, !137, i64 42640, !137, i64 42696, !137, i64 42744, !137, i64 42792, !137, i64 42840, !137, i64 42888, !137, i64 42944, !137, i64 42992, !137, i64 43048, !137, i64 43096, !137, i64 43144, !137, i64 43200, !137, i64 43248, !137, i64 43296, !137, i64 43344, !137, i64 43392, !137, i64 43448, !137, i64 43512, !137, i64 43568, !137, i64 43624, !137, i64 43672, !137, i64 43720, !137, i64 43768, !137, i64 43816, !137, i64 43864, !137, i64 43912, !137, i64 43968, !137, i64 44016, !137, i64 44072, !137, i64 44120, !137, i64 44176, !137, i64 44224, !137, i64 44272}
!141 = !{!"", !15, i64 0, !15, i64 8}
!142 = !{!"", !132, i64 0, !8, i64 24, !9, i64 32}
!143 = !{!"", !133, i64 0}
!144 = !{!"_is", !145, i64 0, !68, i64 7264, !15, i64 7272, !15, i64 7280, !8, i64 7288, !15, i64 7296, !8, i64 7304, !8, i64 7308, !8, i64 7312, !15, i64 7320, !147, i64 7328, !149, i64 7376, !65, i64 7384, !15, i64 7392, !150, i64 7400, !88, i64 7680, !88, i64 7688, !153, i64 7696, !156, i64 7832, !15, i64 8040, !157, i64 8048, !17, i64 8080, !15, i64 8536, !88, i64 8544, !88, i64 8552, !88, i64 8560, !14, i64 8568, !9, i64 8576, !9, i64 8640, !15, i64 8648, !9, i64 8656, !158, i64 10696, !88, i64 10744, !88, i64 10752, !88, i64 10760, !160, i64 10768, !161, i64 10832, !116, i64 10848, !163, i64 10872, !84, i64 10928, !67, i64 10944, !166, i64 10952, !88, i64 10960, !9, i64 10968, !9, i64 11032, !9, i64 11096, !9, i64 11160, !9, i64 11161, !167, i64 11168, !170, i64 11832, !174, i64 11888, !175, i64 11896, !177, i64 14336, !178, i64 79880, !179, i64 79896, !180, i64 79968, !181, i64 80000, !182, i64 80024, !183, i64 82008, !187, i64 223296, !9, i64 223328, !117, i64 223384, !117, i64 223385, !188, i64 223386, !190, i64 223400, !190, i64 223408, !190, i64 223416, !190, i64 223424, !15, i64 223432, !191, i64 223440, !14, i64 223448, !192, i64 223456, !118, i64 223472, !118, i64 223473, !15, i64 223480, !15, i64 223488, !9, i64 223496, !9, i64 224712, !9, i64 224776, !193, i64 224840, !194, i64 224928, !15, i64 225064, !198, i64 225072}
!145 = !{!"_ceval_state", !15, i64 0, !8, i64 8, !146, i64 16, !8, i64 24, !101, i64 32}
!146 = !{!"p1 _ZTS18_gil_runtime_state", !14, i64 0}
!147 = !{!"pythreads", !15, i64 0, !65, i64 8, !148, i64 16, !65, i64 24, !15, i64 32, !15, i64 40}
!148 = !{!"p1 _ZTS18_PyThreadStateImpl", !14, i64 0}
!149 = !{!"p1 _ZTS14pyruntimestate", !14, i64 0}
!150 = !{!"_gc_runtime_state", !8, i64 0, !8, i64 4, !151, i64 8, !9, i64 32, !151, i64 80, !9, i64 104, !8, i64 224, !152, i64 232, !88, i64 240, !88, i64 248, !15, i64 256, !15, i64 264, !8, i64 272, !8, i64 276}
!151 = !{!"gc_generation", !141, i64 0, !8, i64 16, !8, i64 20}
!152 = !{!"p1 _ZTS19_PyInterpreterFrame", !14, i64 0}
!153 = !{!"_import_state", !88, i64 0, !88, i64 8, !88, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !88, i64 40, !88, i64 48, !8, i64 56, !88, i64 64, !88, i64 72, !88, i64 80, !154, i64 88, !155, i64 112}
!154 = !{!"", !67, i64 0, !109, i64 8, !15, i64 16}
!155 = !{!"", !8, i64 0, !15, i64 8, !8, i64 16}
!156 = !{!"_gil_runtime_state", !15, i64 0, !65, i64 8, !8, i64 16, !15, i64 24, !9, i64 32, !9, i64 80, !9, i64 120, !9, i64 168}
!157 = !{!"codecs_state", !88, i64 0, !88, i64 8, !88, i64 16, !8, i64 24}
!158 = !{!"", !70, i64 0, !159, i64 24}
!159 = !{!"xi_exceptions", !88, i64 0, !88, i64 8, !88, i64 16}
!160 = !{!"_warnings_runtime_state", !88, i64 0, !88, i64 8, !88, i64 16, !154, i64 24, !15, i64 48, !88, i64 56}
!161 = !{!"atexit_state", !162, i64 0, !88, i64 8}
!162 = !{!"p1 _ZTS15atexit_callback", !14, i64 0}
!163 = !{!"_qsbr_shared", !15, i64 0, !15, i64 8, !164, i64 16, !14, i64 24, !15, i64 32, !67, i64 40, !165, i64 48}
!164 = !{!"p1 _ZTS9_qsbr_pad", !14, i64 0}
!165 = !{!"p1 _ZTS18_qsbr_thread_state", !14, i64 0}
!166 = !{!"p1 _ZTS15_obmalloc_state", !14, i64 0}
!167 = !{!"_py_object_state", !168, i64 0, !8, i64 656}
!168 = !{!"_Py_freelists", !169, i64 0, !169, i64 16, !169, i64 32, !9, i64 48, !169, i64 368, !169, i64 384, !169, i64 400, !169, i64 416, !169, i64 432, !169, i64 448, !169, i64 464, !169, i64 480, !169, i64 496, !169, i64 512, !169, i64 528, !169, i64 544, !169, i64 560, !169, i64 576, !169, i64 592, !169, i64 608, !169, i64 624, !169, i64 640}
!169 = !{!"_Py_freelist", !14, i64 0, !15, i64 8}
!170 = !{!"_Py_unicode_state", !171, i64 0, !14, i64 32, !172, i64 40}
!171 = !{!"_Py_unicode_fs_codec", !38, i64 0, !8, i64 8, !38, i64 16, !8, i64 24}
!172 = !{!"_Py_unicode_ids", !15, i64 0, !173, i64 8}
!173 = !{!"p2 _ZTS7_object", !21, i64 0}
!174 = !{!"_Py_long_state", !8, i64 0}
!175 = !{!"_dtoa_state", !9, i64 0, !9, i64 64, !9, i64 128, !176, i64 2432}
!176 = !{!"p1 double", !14, i64 0}
!177 = !{!"_py_func_state", !8, i64 0, !9, i64 8}
!178 = !{!"_py_code_state", !67, i64 0, !96, i64 8}
!179 = !{!"_Py_dict_state", !8, i64 0, !9, i64 8}
!180 = !{!"_Py_exc_state", !88, i64 0, !14, i64 8, !8, i64 16, !88, i64 24}
!181 = !{!"_Py_mem_interp_free_queue", !8, i64 0, !67, i64 4, !84, i64 8}
!182 = !{!"ast_state", !118, i64 0, !8, i64 4, !88, i64 8, !88, i64 16, !88, i64 24, !88, i64 32, !88, i64 40, !88, i64 48, !88, i64 56, !88, i64 64, !88, i64 72, !88, i64 80, !88, i64 88, !88, i64 96, !88, i64 104, !88, i64 112, !88, i64 120, !88, i64 128, !88, i64 136, !88, i64 144, !88, i64 152, !88, i64 160, !88, i64 168, !88, i64 176, !88, i64 184, !88, i64 192, !88, i64 200, !88, i64 208, !88, i64 216, !88, i64 224, !88, i64 232, !88, i64 240, !88, i64 248, !88, i64 256, !88, i64 264, !88, i64 272, !88, i64 280, !88, i64 288, !88, i64 296, !88, i64 304, !88, i64 312, !88, i64 320, !88, i64 328, !88, i64 336, !88, i64 344, !88, i64 352, !88, i64 360, !88, i64 368, !88, i64 376, !88, i64 384, !88, i64 392, !88, i64 400, !88, i64 408, !88, i64 416, !88, i64 424, !88, i64 432, !88, i64 440, !88, i64 448, !88, i64 456, !88, i64 464, !88, i64 472, !88, i64 480, !88, i64 488, !88, i64 496, !88, i64 504, !88, i64 512, !88, i64 520, !88, i64 528, !88, i64 536, !88, i64 544, !88, i64 552, !88, i64 560, !88, i64 568, !88, i64 576, !88, i64 584, !88, i64 592, !88, i64 600, !88, i64 608, !88, i64 616, !88, i64 624, !88, i64 632, !88, i64 640, !88, i64 648, !88, i64 656, !88, i64 664, !88, i64 672, !88, i64 680, !88, i64 688, !88, i64 696, !88, i64 704, !88, i64 712, !88, i64 720, !88, i64 728, !88, i64 736, !88, i64 744, !88, i64 752, !88, i64 760, !88, i64 768, !88, i64 776, !88, i64 784, !88, i64 792, !88, i64 800, !88, i64 808, !88, i64 816, !88, i64 824, !88, i64 832, !88, i64 840, !88, i64 848, !88, i64 856, !88, i64 864, !88, i64 872, !88, i64 880, !88, i64 888, !88, i64 896, !88, i64 904, !88, i64 912, !88, i64 920, !88, i64 928, !88, i64 936, !88, i64 944, !88, i64 952, !88, i64 960, !88, i64 968, !88, i64 976, !88, i64 984, !88, i64 992, !88, i64 1000, !88, i64 1008, !88, i64 1016, !88, i64 1024, !88, i64 1032, !88, i64 1040, !88, i64 1048, !88, i64 1056, !88, i64 1064, !88, i64 1072, !88, i64 1080, !88, i64 1088, !88, i64 1096, !88, i64 1104, !88, i64 1112, !88, i64 1120, !88, i64 1128, !88, i64 1136, !88, i64 1144, !88, i64 1152, !88, i64 1160, !88, i64 1168, !88, i64 1176, !88, i64 1184, !88, i64 1192, !88, i64 1200, !88, i64 1208, !88, i64 1216, !88, i64 1224, !88, i64 1232, !88, i64 1240, !88, i64 1248, !88, i64 1256, !88, i64 1264, !88, i64 1272, !88, i64 1280, !88, i64 1288, !88, i64 1296, !88, i64 1304, !88, i64 1312, !88, i64 1320, !88, i64 1328, !88, i64 1336, !88, i64 1344, !88, i64 1352, !88, i64 1360, !88, i64 1368, !88, i64 1376, !88, i64 1384, !88, i64 1392, !88, i64 1400, !88, i64 1408, !88, i64 1416, !88, i64 1424, !88, i64 1432, !88, i64 1440, !88, i64 1448, !88, i64 1456, !88, i64 1464, !88, i64 1472, !88, i64 1480, !88, i64 1488, !88, i64 1496, !88, i64 1504, !88, i64 1512, !88, i64 1520, !88, i64 1528, !88, i64 1536, !88, i64 1544, !88, i64 1552, !88, i64 1560, !88, i64 1568, !88, i64 1576, !88, i64 1584, !88, i64 1592, !88, i64 1600, !88, i64 1608, !88, i64 1616, !88, i64 1624, !88, i64 1632, !88, i64 1640, !88, i64 1648, !88, i64 1656, !88, i64 1664, !88, i64 1672, !88, i64 1680, !88, i64 1688, !88, i64 1696, !88, i64 1704, !88, i64 1712, !88, i64 1720, !88, i64 1728, !88, i64 1736, !88, i64 1744, !88, i64 1752, !88, i64 1760, !88, i64 1768, !88, i64 1776, !88, i64 1784, !88, i64 1792, !88, i64 1800, !88, i64 1808, !88, i64 1816, !88, i64 1824, !88, i64 1832, !88, i64 1840, !88, i64 1848, !88, i64 1856, !88, i64 1864, !88, i64 1872, !88, i64 1880, !88, i64 1888, !88, i64 1896, !88, i64 1904, !88, i64 1912, !88, i64 1920, !88, i64 1928, !88, i64 1936, !88, i64 1944, !88, i64 1952, !88, i64 1960, !88, i64 1968, !88, i64 1976}
!183 = !{!"types_state", !8, i64 0, !184, i64 8, !185, i64 98312, !186, i64 108016, !67, i64 108512, !9, i64 108520}
!184 = !{!"type_cache", !9, i64 0}
!185 = !{!"", !15, i64 0, !9, i64 8}
!186 = !{!"", !15, i64 0, !15, i64 8, !9, i64 16}
!187 = !{!"callable_cache", !88, i64 0, !88, i64 8, !88, i64 16, !88, i64 24}
!188 = !{!"_PyOptimizationConfig", !189, i64 0, !189, i64 2, !189, i64 4, !189, i64 6, !117, i64 8, !117, i64 9}
!189 = !{!"short", !9, i64 0}
!190 = !{!"p1 _ZTS17_PyExecutorObject", !14, i64 0}
!191 = !{!"_rare_events", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 4}
!192 = !{!"_Py_GlobalMonitors", !9, i64 0}
!193 = !{!"_Py_interp_cached_objects", !88, i64 0, !88, i64 8, !134, i64 16, !134, i64 24, !134, i64 32, !134, i64 40, !134, i64 48, !134, i64 56, !134, i64 64, !88, i64 72, !88, i64 80}
!194 = !{!"_Py_interp_static_objects", !195, i64 0}
!195 = !{!"", !8, i64 0, !141, i64 8, !196, i64 24, !197, i64 64}
!196 = !{!"", !133, i64 0, !14, i64 16, !88, i64 24, !15, i64 32}
!197 = !{!"", !133, i64 0, !88, i64 16, !88, i64 24, !88, i64 32, !88, i64 40, !88, i64 48, !88, i64 56, !9, i64 64}
!198 = !{!"_PyThreadStateImpl", !199, i64 0, !206, i64 848, !15, i64 936, !15, i64 944, !15, i64 952, !15, i64 960, !15, i64 968, !15, i64 976, !88, i64 984, !88, i64 992, !8, i64 1000, !84, i64 1008, !165, i64 1024, !84, i64 1032}
!199 = !{!"_ts", !65, i64 0, !65, i64 8, !68, i64 16, !15, i64 24, !200, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !152, i64 72, !152, i64 80, !152, i64 88, !14, i64 96, !14, i64 104, !88, i64 112, !88, i64 120, !88, i64 128, !201, i64 136, !88, i64 144, !8, i64 152, !88, i64 160, !15, i64 168, !15, i64 176, !88, i64 184, !15, i64 192, !8, i64 200, !88, i64 208, !88, i64 216, !88, i64 224, !15, i64 232, !15, i64 240, !202, i64 248, !173, i64 256, !173, i64 264, !203, i64 272, !88, i64 288, !204, i64 296, !15, i64 304, !88, i64 312, !88, i64 320, !205, i64 328}
!200 = !{!"", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0}
!201 = !{!"p1 _ZTS14_err_stackitem", !14, i64 0}
!202 = !{!"p1 _ZTS12_stack_chunk", !14, i64 0}
!203 = !{!"_err_stackitem", !88, i64 0, !201, i64 8}
!204 = !{!"p1 _ZTS11_PyExitData", !14, i64 0}
!205 = !{!"", !8, i64 0, !9, i64 4}
!206 = !{!"_PyInterpreterFrame", !9, i64 0, !152, i64 8, !9, i64 16, !88, i64 24, !88, i64 32, !88, i64 40, !207, i64 48, !14, i64 56, !208, i64 64, !189, i64 72, !9, i64 74, !9, i64 75, !9, i64 80}
!207 = !{!"p1 _ZTS6_frame", !14, i64 0}
!208 = !{!"p1 _ZTS11_PyStackRef", !14, i64 0}
!209 = !{!43, !15, i64 2864}
!210 = !{!211, !88, i64 128}
!211 = !{!"PyCodeObject", !132, i64 0, !88, i64 24, !88, i64 32, !88, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !88, i64 96, !88, i64 104, !88, i64 112, !88, i64 120, !88, i64 128, !88, i64 136, !88, i64 144, !14, i64 152, !14, i64 160, !15, i64 168, !212, i64 176, !15, i64 184, !8, i64 192, !14, i64 200, !9, i64 208}
!212 = !{!"p1 _ZTS19_PyCoMonitoringData", !14, i64 0}
!213 = !{!211, !88, i64 112}
!214 = !{!215, !8, i64 0}
!215 = !{!"", !216, i64 0, !15, i64 16, !15, i64 24, !15, i64 32}
!216 = !{!"BaseEvent", !8, i64 0, !8, i64 4, !15, i64 8}
!217 = !{!218, !15, i64 0}
!218 = !{!"timespec", !15, i64 0, !15, i64 8}
!219 = !{!218, !15, i64 8}
!220 = !{!215, !15, i64 8}
!221 = !{!215, !15, i64 16}
!222 = !{!215, !15, i64 24}
!223 = !{!215, !15, i64 32}
!224 = !{!215, !8, i64 4}
!225 = !{!9, !9, i64 0}
!226 = !{!227, !8, i64 4}
!227 = !{!"", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16}
!228 = !{!227, !8, i64 8}
!229 = !{!227, !8, i64 12}
!230 = !{!37, !38, i64 16}
!231 = !{!227, !8, i64 16}
!232 = !{!233, !8, i64 0}
!233 = !{!"", !216, i64 0, !8, i64 16, !8, i64 20, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48}
!234 = !{!233, !8, i64 4}
!235 = !{!233, !15, i64 8}
!236 = !{!233, !8, i64 16}
!237 = !{!233, !8, i64 20}
!238 = !{!233, !15, i64 24}
!239 = !{!233, !15, i64 32}
!240 = !{!233, !15, i64 40}
!241 = !{!233, !15, i64 48}
!242 = !{!43, !14, i64 2848}
!243 = distinct !{!243, !33}
!244 = distinct !{!244, !33}
end_hunk_0
