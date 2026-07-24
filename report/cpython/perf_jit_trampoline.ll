inline.NumInlined: 32
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@perf_map_jit_write_entry:bb.a
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @elf_init_ehframe(ptr nofree noundef nonnull captures(none) initializes((16, 32)) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39     ; 9 uses
  %1 = ptrtoint ptr %i.a to i64                   ; 4 uses
  %i.b = getelementptr i8, ptr %i.a, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !7
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = getelementptr i8, ptr %i.a, i64 12
  store <4 x i8> <i8 1, i8 122, i8 82, i8 0>, ptr %i.c, align 4, !tbaa !225
  %i.f = getelementptr i8, ptr %i.a, i64 13       ; 2 uses
  store i8 1, ptr %i.e, align 4, !tbaa !225
  store ptr %i.f, ptr %0, align 8, !tbaa !39
  %i.g = getelementptr i8, ptr %i.a, i64 21
  store <8 x i8> <i8 120, i8 16, i8 1, i8 27, i8 12, i8 7, i8 8, i8 -112>, ptr %i.f, align 1, !tbaa !225
  %i.h = getelementptr i8, ptr %i.a, i64 22       ; 3 uses
  store i8 1, ptr %i.g, align 1, !tbaa !225
  %i.i = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.j = and i64 %i.i, 7
  %.not109 = icmp eq i64 %i.j, 0
  br i1 %.not109, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.k = sub i64 1, %1
  %i.l = and i64 %i.k, 7                          ; 3 uses
  %i.m = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.h, i8 0, i64 %i.m, i1 false), !tbaa !225
  %i.n = getelementptr i8, ptr %i.a, i64 %i.l
  %scevgep = getelementptr i8, ptr %i.n, i64 23   ; 2 uses
  %i.o = add i64 %i.l, %1
  %i.p = add i64 %i.o, 23
  %.pre = ptrtoint ptr %scevgep to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  %.0.lcssa124.pre-phi = phi i64 [ %.pre, %.lr.ph.preheader ], [ %i.i, %bb.a ] ; 2 uses
  %.0.lcssa = phi ptr [ %scevgep, %.lr.ph.preheader ], [ %i.h, %bb.a ] ; 14 uses
  %.lcssa108 = phi i64 [ %i.p, %.lr.ph.preheader ], [ %i.i, %bb.a ] ; 2 uses
  %i.q = sub i64 %.lcssa108, %1
  %i.r = trunc i64 %i.q to i32
  %i.s = add i32 %i.r, -4
  store i32 %i.s, ptr %i.a, align 4, !tbaa !7
  %i.t = getelementptr i8, ptr %0, i64 16
  store ptr %.0.lcssa, ptr %i.t, align 8, !tbaa !230
  %i.u = getelementptr i8, ptr %.0.lcssa, i64 4   ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %1
  %i.x = trunc i64 %i.w to i32
  store i32 %i.x, ptr %i.u, align 4, !tbaa !7
  %i.y = getelementptr i8, ptr %.0.lcssa, i64 8   ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 24         ; 2 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !41
  store i32 0, ptr %i.y, align 4, !tbaa !7
  %i.aa = getelementptr i8, ptr %.0.lcssa, i64 12
  %i.ab = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !36
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !7
  %i.ad = getelementptr i8, ptr %.0.lcssa, i64 16
  %i.ae = getelementptr i8, ptr %.0.lcssa, i64 20
  store <4 x i8> <i8 0, i8 65, i8 14, i8 16>, ptr %i.ad, align 4, !tbaa !225
  %i.af = getelementptr i8, ptr %.0.lcssa, i64 21
  store i8 -122, ptr %i.ae, align 4, !tbaa !225
  %i.ag = getelementptr i8, ptr %.0.lcssa, i64 22 ; 2 uses
  store i8 2, ptr %i.af, align 1, !tbaa !225
  store ptr %i.ag, ptr %0, align 8, !tbaa !39
  %i.ah = getelementptr i8, ptr %.0.lcssa, i64 26
  store <4 x i8> <i8 67, i8 13, i8 6, i8 67>, ptr %i.ag, align 2, !tbaa !225
  %i.ai = getelementptr i8, ptr %.0.lcssa, i64 27
  store i8 12, ptr %i.ah, align 2, !tbaa !225
  %i.aj = getelementptr i8, ptr %.0.lcssa, i64 28
  store i8 7, ptr %i.ai, align 1, !tbaa !225
  %i.ak = getelementptr i8, ptr %.0.lcssa, i64 29 ; 3 uses
  store i8 8, ptr %i.aj, align 4, !tbaa !225
  %i.al = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.am = and i64 %i.al, 7
  %.not102112 = icmp eq i64 %i.am, 0
  br i1 %.not102112, label %._crit_edge116, label %.lr.ph115.preheader

.lr.ph115.preheader:                              ; preds = %._crit_edge
  %i.an = sub i64 2, %.0.lcssa124.pre-phi
  %i.ao = and i64 %i.an, 7                        ; 3 uses
  %i.ap = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ak, i8 0, i64 %i.ap, i1 false), !tbaa !225
  %i.aq = getelementptr i8, ptr %.0.lcssa, i64 %i.ao
  %scevgep125 = getelementptr i8, ptr %i.aq, i64 30
  %i.ar = add i64 %.0.lcssa124.pre-phi, %i.ao
  %i.as = add i64 %i.ar, 30
  br label %._crit_edge116

._crit_edge116:                                   ; preds = %.lr.ph115.preheader, %._crit_edge
  %.1.lcssa = phi ptr [ %i.ak, %._crit_edge ], [ %scevgep125, %.lr.ph115.preheader ]
  %.lcssa = phi i64 [ %i.al, %._crit_edge ], [ %i.as, %.lr.ph115.preheader ]
  %i.at = sub i64 %.lcssa, %.lcssa108
  %i.au = trunc i64 %i.at to i32
  %i.av = add i32 %i.au, -4
  store i32 %i.av, ptr %.0.lcssa, align 4, !tbaa !7
  store ptr %.1.lcssa, ptr %0, align 8, !tbaa !39
  %i.aw = load ptr, ptr %i.z, align 8, !tbaa !41  ; 3 uses
  %.not103 = icmp eq ptr %i.aw, null
  br i1 %.not103, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge116
  %i.ax = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %.neg = sub i64 %i.az, %i.ay
  %.neg104 = trunc i64 %.neg to i32
  %i.ba = load i32, ptr %i.ab, align 8, !tbaa !36 ; 3 uses
  %i.bb = and i32 %i.ba, 7
  %i.bc = icmp eq i32 %i.bb, 0
  %narrow.neg = or i32 %i.ba, -8
  %narrow106.neg119 = select i1 %i.bc, i32 0, i32 %narrow.neg
  %.0.i.neg = sub i32 %.neg104, %i.ba
  %.neg105 = add i32 %.0.i.neg, %narrow106.neg119
  store i32 %.neg105, ptr %i.aw, align 4, !tbaa !7
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
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
end_hunk_0
