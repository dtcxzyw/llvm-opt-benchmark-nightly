Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/perf_jit_trampoline?download=true
inline.NumInlined: 32
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@perf_map_jit_init:bb.a
  %2 = alloca %struct.Header, align 16            ; 8 uses
  %i.b = alloca [100 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = tail call i32 @getpid() #10              ; 2 uses
  %i.d = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 99, ptr noundef nonnull @.str, i32 noundef %i.c) #10 ; 0 uses
  %i.e = call i32 (ptr, i32, ...) @open64(ptr noundef nonnull %i.b, i32 noundef 578, i32 noundef 438) #10 ; 6 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @sysconf(i32 noundef 30) #10 ; 4 uses
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @close(i32 noundef %i.e) #10 ; 0 uses
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.j = tail call ptr @mmap64(ptr noundef null, i64 noundef %i.g, i32 noundef 5, i32 noundef 2, i32 noundef %i.e, i64 noundef 0) #10 ; 3 uses
  store ptr %i.j, ptr getelementptr inbounds nuw (i8, ptr @perf_jit_map_state, i64 16), align 8, !tbaa !16
  %i.k = icmp eq ptr %i.j, inttoptr (i64 -1 to ptr)
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @perf_jit_map_state, i64 16), align 8, !tbaa !16
  %i.l = tail call i32 @close(i32 noundef %i.e) #10 ; 0 uses
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.m = tail call ptr @_Py_GetConfig() #10
  %i.n = getelementptr i8, ptr %i.m, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !201
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %_PyAnnotateMemoryMap.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = ptrtoint ptr %i.j to i64
  %i.q = tail call i32 (i32, ...) @prctl(i32 noundef 1398164801, i32 noundef 0, i64 noundef %i.p, i64 noundef range(i64 0, -1) %i.g, ptr noundef nonnull @.str.1) #10 ; 0 uses
  br label %_PyAnnotateMemoryMap.exit

_PyAnnotateMemoryMap.exit:                        ; preds = %bb.f, %bb.g
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @perf_jit_map_state, i64 24), align 8, !tbaa !22
  %i.r = tail call noalias ptr @fdopen(i32 noundef %i.e, ptr noundef nonnull @.str.2) #10 ; 3 uses
  store ptr %i.r, ptr @perf_jit_map_state, align 8, !tbaa !23
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_PyAnnotateMemoryMap.exit
  %i.t = tail call i32 @close(i32 noundef %i.e) #10 ; 0 uses
  br label %bb.l

bb.i:                                             ; preds = %_PyAnnotateMemoryMap.exit
  %i.u = tail call i32 @setvbuf(ptr noundef nonnull %i.r, ptr noundef null, i32 noundef 0, i64 noundef 2097152) #10 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store <4 x i32> <i32 1248416836, i32 1, i32 40, i32 62>, ptr %2, align 16, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.v, align 16, !tbaa !203
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.c, ptr %i.w, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.x = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #10 ; 0 uses
  %i.y = load i64, ptr %1, align 8, !tbaa !206
  %i.z = mul i64 %i.y, 1000000
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !207
  %i.ac = add i64 %i.z, %i.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !208
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 0, ptr %i.ae, align 16, !tbaa !209
  %i.af = load ptr, ptr @perf_jit_map_state, align 8, !tbaa !23
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.i
  %.012.i.i = phi i64 [ %i.ai, %.lr.ph.i.i ], [ 40, %bb.i ] ; 2 uses
  %.0911.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %2, %bb.i ] ; 2 uses
  %i.ag = call i64 @fwrite(ptr noundef %.0911.i.i, i64 noundef 1, i64 noundef %.012.i.i, ptr noundef %i.af) ; 3 uses
  %i.ah = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = sub i64 %.012.i.i, %i.ag                ; 2 uses
  %i.aj = getelementptr i8, ptr %.0911.i.i, i64 %i.ag
  %.not.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i, label %perf_map_jit_write_header.exit, label %.lr.ph.i.i, !llvm.loop !0

perf_map_jit_write_header.exit:                   ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.ak = tail call ptr @PyThread_allocate_lock() #10 ; 2 uses
  store ptr %i.ak, ptr getelementptr inbounds nuw (i8, ptr @perf_jit_map_state, i64 8), align 8, !tbaa !25
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %perf_map_jit_write_header.exit
  %i.am = load ptr, ptr @perf_jit_map_state, align 8, !tbaa !23
  %i.an = tail call i32 @fclose(ptr noundef %i.am) ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %perf_map_jit_write_header.exit
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @perf_jit_map_state, i64 32), align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 trunc (i64 sub (i64 ptrtoint (ptr @_Py_trampoline_func_end to i64), i64 ptrtoint (ptr @_Py_trampoline_func_start to i64)) to i32), ptr %i.ao, align 8, !tbaa !29
  store ptr %i.a, ptr %0, align 8, !tbaa !30
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.a, ptr %i.ap, align 8, !tbaa !31
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.aq, align 8, !tbaa !32
  call fastcc void @elf_init_ehframe(ptr noundef %0)
  %i.ar = load ptr, ptr %0, align 8, !tbaa !30
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !31
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  %i.aw = add i64 %i.av, 20                       ; 2 uses
  %i.ax = srem i64 %i.aw, 16                      ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0
  %i.az = sub nsw i64 16, %i.ax
  %i.ba = select i1 %i.ay, i64 0, i64 %i.az
  %.0.i = add i64 %i.ba, %i.aw
  store i64 %.0.i, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2856), align 8, !tbaa !210
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2864), align 8, !tbaa !211
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.e, %bb.h, %bb.j, %bb.k, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.h ], [ null, %bb.j ], [ @perf_jit_map_state, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal void @perf_map_jit_write_entry(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %6 = alloca %struct.ELFObjectContext, align 8   ; 9 uses
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %7 = alloca %struct.CodeUnwindingInfoEvent, align 8 ; 9 uses
  %8 = alloca %struct.EhFrameHeader, align 4      ; 8 uses
  %i.b = alloca [9 x i8], align 1                 ; 4 uses
  %9 = alloca %struct.CodeLoadEvent, align 8      ; 12 uses
  %i.c = load ptr, ptr @perf_jit_map_state, align 8, !tbaa !23
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @perf_map_jit_init()
  %.not86 = icmp eq ptr %i.e, null
  br i1 %.not86, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %3, i64 128
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !214  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @PyUnicode_AsUTF8(ptr noundef nonnull %i.g) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.040 = phi ptr [ %i.h, %bb.d ], [ @.str.4, %bb.c ] ; 2 uses
  %i.i = getelementptr i8, ptr %3, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !215  ; 2 uses
  %.not45 = icmp eq ptr %i.j, null
  br i1 %.not45, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call ptr @PyUnicode_AsUTF8(ptr noundef nonnull %i.j) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.041 = phi ptr [ %i.k, %bb.f ], [ @.str.4, %bb.e ] ; 2 uses
  %i.l = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.5, ptr noundef %.040, ptr noundef %.041) #10
  %i.m = add i32 %i.l, 1
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = tail call ptr @PyMem_RawMalloc(i64 noundef %i.n) #10 ; 5 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.o, i64 noundef %i.n, ptr noundef nonnull @.str.5, ptr noundef %.040, ptr noundef %.041) #10 ; 0 uses
  %i.r = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %2, ptr %i.s, align 8, !tbaa !29
  store ptr %i.a, ptr %6, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.a, ptr %i.t, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr null, ptr %i.u, align 8, !tbaa !32
  call fastcc void @elf_init_ehframe(ptr noundef %6)
  %i.v = load ptr, ptr %6, align 8, !tbaa !30
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !31   ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = trunc i64 %i.z to i32                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  store i32 4, ptr %7, align 8, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.ab = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #10 ; 0 uses
  %i.ac = load i64, ptr %5, align 8, !tbaa !220
  %i.ad = mul i64 %i.ac, 1000000000
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !221
  %i.ag = add i64 %i.ad, %i.af
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !222
  %sext = shl i64 %i.z, 32                        ; 2 uses
  %i.ai = ashr exact i64 %sext, 32                ; 2 uses
  %i.aj = add nsw i64 %i.ai, 20                   ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !223
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 20, ptr %i.al, align 8, !tbaa !224
  %i.am = srem i64 %i.aj, 16                      ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  %i.ao = sub nsw i64 16, %i.am
  %i.ap = select i1 %i.an, i64 0, i64 %i.ao
  %.0.i = add nsw i64 %i.ap, %i.aj
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %.0.i, ptr %i.aq, align 8, !tbaa !225
  %i.ar = add i32 %i.aa, 60                       ; 2 uses
  %i.as = srem i32 %i.ar, 8                       ; 2 uses
  %i.at = icmp eq i32 %i.as, 0
  %narrow = sub nsw i32 8, %i.as
  %narrow87 = select i1 %i.at, i32 0, i32 %narrow ; 3 uses
  %.0.i48 = add i32 %narrow87, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %.0.i48, ptr %i.au, align 4, !tbaa !226
  %i.av = load ptr, ptr @perf_jit_map_state, align 8, !tbaa !23
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.h
  %.012.i = phi i64 [ %i.ay, %.lr.ph.i ], [ 40, %bb.h ] ; 2 uses
  %.0911.i = phi ptr [ %i.az, %.lr.ph.i ], [ %7, %bb.h ] ; 2 uses
  %i.aw = call i64 @fwrite(ptr noundef %.0911.i, i64 noundef 1, i64 noundef %.012.i, ptr noundef %i.av) ; 3 uses
  %i.ax = icmp ne i64 %i.aw, 0
  call void @llvm.assume(i1 %i.ax)
  %i.ay = sub i64 %.012.i, %i.aw                  ; 2 uses
  %i.az = getelementptr i8, ptr %.0911.i, i64 %i.aw
  %.not.i49 = icmp eq i64 %i.ay, 0
  br i1 %.not.i49, label %perf_map_jit_write_fully.exit, label %.lr.ph.i, !llvm.loop !0

perf_map_jit_write_fully.exit:                    ; preds = %.lr.ph.i
  %i.ba = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bb = zext i32 %2 to i64                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  store <4 x i8> <i8 1, i8 27, i8 3, i8 59>, ptr %8, align 4, !tbaa !199
  %i.bc = sub i32 -4, %i.aa
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !228
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 1, ptr %i.be, align 4, !tbaa !229
  %i.bf = and i32 %2, 7
  %i.bg = icmp eq i32 %i.bf, 0
  %narrow88.neg = or i32 %2, -8
  %narrow89 = select i1 %i.bg, i32 0, i32 %narrow88.neg
  %10 = add i32 %2, %i.aa
  %i.bh = sub i32 %narrow89, %10
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !230
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !200
  %i.bl = ptrtoint ptr %i.bk to i64
  %.neg.neg = sub i64 %i.bl, %i.y
  %.neg46.neg = trunc i64 %.neg.neg to i32
  %.neg47 = sub i32 %.neg46.neg, %i.aa
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %.neg47, ptr %i.bm, align 4, !tbaa !231
  %i.bn = load ptr, ptr @perf_jit_map_state, align 8, !tbaa !23 ; 2 uses
  %.not10.i = icmp eq i64 %sext, 0
  br i1 %.not10.i, label %perf_map_jit_write_fully.exit55, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %perf_map_jit_write_fully.exit, %.lr.ph.i51
  %.012.i52 = phi i64 [ %i.bq, %.lr.ph.i51 ], [ %i.ai, %perf_map_jit_write_fully.exit ] ; 2 uses
  %.0911.i53 = phi ptr [ %i.br, %.lr.ph.i51 ], [ %i.w, %perf_map_jit_write_fully.exit ] ; 2 uses
  %i.bo = call i64 @fwrite(ptr noundef %.0911.i53, i64 noundef 1, i64 noundef %.012.i52, ptr noundef %i.bn) ; 3 uses
  %i.bp = icmp ne i64 %i.bo, 0
  call void @llvm.assume(i1 %i.bp)
  %i.bq = sub i64 %.012.i52, %i.bo                ; 2 uses
  %i.br = getelementptr i8, ptr %.0911.i53, i64 %i.bo
  %.not.i54 = icmp eq i64 %i.bq, 0
  br i1 %.not.i54, label %perf_map_jit_write_fully.exit55.loopexit, label %.lr.ph.i51, !llvm.loop !0

perf_map_jit_write_fully.exit55.loopexit:         ; preds = %.lr.ph.i51
  %.pre = load ptr, ptr @perf_jit_map_state, align 8, !tbaa !23
  br label %perf_map_jit_write_fully.exit55

perf_map_jit_write_fully.exit55:                  ; preds = %perf_map_jit_write_fully.exit55.loopexit, %perf_map_jit_write_fully.exit
  %i.bs = phi ptr [ %.pre, %perf_map_jit_write_fully.exit55.loopexit ], [ %i.bn, %perf_map_jit_write_fully.exit ]
  br label %.lr.ph.i56

.lr.ph.i56:                                       ; preds = %.lr.ph.i56, %perf_map_jit_write_fully.exit55
  %.012.i57 = phi i64 [ %i.bv, %.lr.ph.i56 ], [ 20, %perf_map_jit_write_fully.exit55 ] ; 2 uses
  %.0911.i58 = phi ptr [ %i.bw, %.lr.ph.i56 ], [ %8, %perf_map_jit_write_fully.exit55 ] ; 2 uses
  %i.bt = call i64 @fwrite(ptr noundef %.0911.i58, i64 noundef 1, i64 noundef %.012.i57, ptr noundef %i.bs) ; 3 uses
  %i.bu = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %i.bu)
  %i.bv = sub i64 %.012.i57, %i.bt                ; 2 uses
  %i.bw = getelementptr i8, ptr %.0911.i58, i64 %i.bt
  %.not.i59 = icmp eq i64 %i.bv, 0
  br i1 %.not.i59, label %perf_map_jit_write_fully.exit60, label %.lr.ph.i56, !llvm.loop !0

perf_map_jit_write_fully.exit60:                  ; preds = %.lr.ph.i56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.b, i8 0, i64 9, i1 false)
  %i.bx = load ptr, ptr @perf_jit_map_state, align 8, !tbaa !23
  %.not10.i61 = icmp eq i32 %narrow87, 0
  br i1 %.not10.i61, label %perf_map_jit_write_fully.exit66, label %.lr.ph.i62.preheader

.lr.ph.i62.preheader:                             ; preds = %perf_map_jit_write_fully.exit60
  %i.by = zext nneg i32 %narrow87 to i64
  br label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %.lr.ph.i62.preheader, %.lr.ph.i62
  %.012.i63 = phi i64 [ %i.cb, %.lr.ph.i62 ], [ %i.by, %.lr.ph.i62.preheader ] ; 2 uses
  %.0911.i64 = phi ptr [ %i.cc, %.lr.ph.i62 ], [ %i.b, %.lr.ph.i62.preheader ] ; 2 uses
  %i.bz = call i64 @fwrite(ptr noundef %.0911.i64, i64 noundef 1, i64 noundef %.012.i63, ptr noundef %i.bx) ; 3 uses
  %i.ca = icmp ne i64 %i.bz, 0
  call void @llvm.assume(i1 %i.ca)
  %i.cb = sub i64 %.012.i63, %i.bz                ; 2 uses
  %i.cc = getelementptr i8, ptr %.0911.i64, i64 %i.bz
  %.not.i65 = icmp eq i64 %i.cb, 0
  br i1 %.not.i65, label %perf_map_jit_write_fully.exit66, label %.lr.ph.i62, !llvm.loop !0

perf_map_jit_write_fully.exit66:                  ; preds = %.lr.ph.i62, %perf_map_jit_write_fully.exit60
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  store i32 0, ptr %9, align 8, !tbaa !233
  %i.cd = trunc i64 %i.r to i32
  %i.ce = add i32 %2, 57
  %i.cf = add i32 %i.ce, %i.cd
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.ch = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #10 ; 0 uses
  %i.ci = load i64, ptr %4, align 8, !tbaa !220
  %i.cj = mul i64 %i.ci, 1000000000
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !221
  %i.cm = add i64 %i.cj, %i.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !235
  %i.co = call i32 @getpid() #10
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %i.co, ptr %i.cp, align 8, !tbaa !236
  %i.cq = call i64 (i64, ...) @syscall(i64 noundef 186) #10
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !237
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %i.ba, ptr %i.ct, align 8, !tbaa !238
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 %i.ba, ptr %i.cu, align 8, !tbaa !239
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 %i.bb, ptr %i.cv, align 8, !tbaa !240
  %i.cw = load i32, ptr getelementptr inbounds nuw (i8, ptr @perf_jit_map_state, i64 32), align 8, !tbaa !26
  %i.cx = add i32 %i.cw, 1                        ; 2 uses
  store i32 %i.cx, ptr getelementptr inbounds nuw (i8, ptr @perf_jit_map_state, i64 32), align 8, !tbaa !26
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !241
  %i.da = load ptr, ptr @perf_jit_map_state, align 8, !tbaa !23
  br label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %.lr.ph.i68, %perf_map_jit_write_fully.exit66
  %.012.i69 = phi i64 [ %i.dd, %.lr.ph.i68 ], [ 56, %perf_map_jit_write_fully.exit66 ] ; 2 uses
  %.0911.i70 = phi ptr [ %i.de, %.lr.ph.i68 ], [ %9, %perf_map_jit_write_fully.exit66 ] ; 2 uses
  %i.db = call i64 @fwrite(ptr noundef %.0911.i70, i64 noundef 1, i64 noundef %.012.i69, ptr noundef %i.da) ; 3 uses
  %i.dc = icmp ne i64 %i.db, 0
  call void @llvm.assume(i1 %i.dc)
  %i.dd = sub i64 %.012.i69, %i.db                ; 2 uses
  %i.de = getelementptr i8, ptr %.0911.i70, i64 %i.db
  %.not.i71 = icmp eq i64 %i.dd, 0
  br i1 %.not.i71, label %perf_map_jit_write_fully.exit72, label %.lr.ph.i68, !llvm.loop !0

perf_map_jit_write_fully.exit72:                  ; preds = %.lr.ph.i68
  %i.df = add i64 %i.r, 1                         ; 2 uses
  %i.dg = load ptr, ptr @perf_jit_map_state, align 8, !tbaa !23 ; 2 uses
  %.not10.i73 = icmp eq i64 %i.df, 0
  br i1 %.not10.i73, label %perf_map_jit_write_fully.exit78, label %.lr.ph.i74

.lr.ph.i74:                                       ; preds = %perf_map_jit_write_fully.exit72, %.lr.ph.i74
  %.012.i75 = phi i64 [ %i.dj, %.lr.ph.i74 ], [ %i.df, %perf_map_jit_write_fully.exit72 ] ; 2 uses
  %.0911.i76 = phi ptr [ %i.dk, %.lr.ph.i74 ], [ %i.o, %perf_map_jit_write_fully.exit72 ] ; 2 uses
  %i.dh = call i64 @fwrite(ptr noundef %.0911.i76, i64 noundef 1, i64 noundef %.012.i75, ptr noundef %i.dg) ; 3 uses
  %i.di = icmp ne i64 %i.dh, 0
  call void @llvm.assume(i1 %i.di)
  %i.dj = sub i64 %.012.i75, %i.dh                ; 2 uses
  %i.dk = getelementptr i8, ptr %.0911.i76, i64 %i.dh
  %.not.i77 = icmp eq i64 %i.dj, 0
  br i1 %.not.i77, label %perf_map_jit_write_fully.exit78.loopexit, label %.lr.ph.i74, !llvm.loop !0

perf_map_jit_write_fully.exit78.loopexit:         ; preds = %.lr.ph.i74
  %.pre90 = load ptr, ptr @perf_jit_map_state, align 8, !tbaa !23
  br label %perf_map_jit_write_fully.exit78

perf_map_jit_write_fully.exit78:                  ; preds = %perf_map_jit_write_fully.exit78.loopexit, %perf_map_jit_write_fully.exit72
  %i.dl = phi ptr [ %.pre90, %perf_map_jit_write_fully.exit78.loopexit ], [ %i.dg, %perf_map_jit_write_fully.exit72 ]
  %.not10.i79 = icmp eq i32 %2, 0
  br i1 %.not10.i79, label %perf_map_jit_write_fully.exit84, label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %perf_map_jit_write_fully.exit78, %.lr.ph.i80
  %.012.i81 = phi i64 [ %i.do, %.lr.ph.i80 ], [ %i.bb, %perf_map_jit_write_fully.exit78 ] ; 2 uses
  %.0911.i82 = phi ptr [ %i.dp, %.lr.ph.i80 ], [ %1, %perf_map_jit_write_fully.exit78 ] ; 2 uses
  %i.dm = call i64 @fwrite(ptr noundef %.0911.i82, i64 noundef 1, i64 noundef %.012.i81, ptr noundef %i.dl) ; 3 uses
  %i.dn = icmp ne i64 %i.dm, 0
  call void @llvm.assume(i1 %i.dn)
  %i.do = sub i64 %.012.i81, %i.dm                ; 2 uses
  %i.dp = getelementptr i8, ptr %.0911.i82, i64 %i.dm
  %.not.i83 = icmp eq i64 %i.do, 0
  br i1 %.not.i83, label %perf_map_jit_write_fully.exit84, label %.lr.ph.i80, !llvm.loop !0

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
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @perf_jit_map_state, i64 8), align 8, !tbaa !25
  %i.c = tail call i32 @PyThread_acquire_lock(ptr noundef %i.b, i32 noundef 1) #10 ; 0 uses
  %i.d = load ptr, ptr @perf_jit_map_state, align 8, !tbaa !23
  %i.e = tail call i32 @fclose(ptr noundef %i.d)  ; 0 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @perf_jit_map_state, i64 8), align 8, !tbaa !25
  tail call void @PyThread_release_lock(ptr noundef %i.f) #10
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @perf_jit_map_state, i64 8), align 8, !tbaa !25
  tail call void @PyThread_free_lock(ptr noundef %i.g) #10
  store ptr null, ptr @perf_jit_map_state, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @perf_jit_map_state, i64 16), align 8, !tbaa !16 ; 2 uses
  %.not1 = icmp eq ptr %i.h, null
  br i1 %.not1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @perf_jit_map_state, i64 24), align 8, !tbaa !22
  %i.j = tail call i32 @munmap(ptr noundef nonnull %i.h, i64 noundef %i.i) #10 ; 0 uses
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @perf_jit_map_state, i64 16), align 8, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2848), align 8, !tbaa !242
end_hunk_0
