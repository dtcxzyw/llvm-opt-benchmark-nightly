Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/zip?download=true
inline.NumInlined: 158
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 47
begin_hunk_0_@tdefl_write_image_to_png_file_in_memory_ex:bb.a
  %i.lw = load i64, ptr %7, align 8, !tbaa !150
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.lw
  %i.ly = getelementptr inbounds i8, ptr %i.lx, i64 -15
  store i8 %i.lu, ptr %i.ly, align 1, !tbaa !80
  %i.lz = lshr i32 %.012.lcssa.i, 8
  %i.ma = trunc i32 %i.lz to i8
  %i.mb = load ptr, ptr %i.o, align 8, !tbaa !151
  %i.mc = load i64, ptr %7, align 8, !tbaa !150
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.mc
  %i.me = getelementptr inbounds i8, ptr %i.md, i64 -14
  store i8 %i.ma, ptr %i.me, align 1, !tbaa !80
  %i.mf = trunc i32 %.012.lcssa.i to i8
  %i.mg = load ptr, ptr %i.o, align 8, !tbaa !151
  %i.mh = load i64, ptr %7, align 8, !tbaa !150
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.mh
  %i.mj = getelementptr inbounds i8, ptr %i.mi, i64 -13
  store i8 %i.mf, ptr %i.mj, align 1, !tbaa !80
  %i.mk = load i64, ptr %4, align 8, !tbaa !117
  %i.ml = add i64 %i.mk, 57
  store i64 %i.ml, ptr %4, align 8, !tbaa !117
  call void @free(ptr noundef nonnull %i.e) #33
  %i.mm = load ptr, ptr %i.o, align 8, !tbaa !151
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %mz_crc32.exit83, %bb.k, %bb.h, %bb.c
  %.054 = phi ptr [ null, %bb.c ], [ null, %bb.h ], [ %i.mm, %mz_crc32.exit83 ], [ null, %bb.k ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  ret ptr %.054
}

; Function Attrs: nounwind uwtable
define hidden ptr @tdefl_write_image_to_png_file_in_memory(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) initializes((0, 8)) %4) local_unnamed_addr #5 !guid !391 {
bb.a:
  %i.a = tail call ptr @tdefl_write_image_to_png_file_in_memory_ex(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef 6, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @mz_zip_reader_init(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #5 !guid !392 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %mz_zip_reader_end.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155
  %.not10 = icmp eq ptr %i.b, null
  br i1 %.not10, label %mz_zip_reader_end.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !156
  %.not22.i = icmp eq ptr %i.d, null
  br i1 %.not22.i, label %bb.d, label %mz_zip_reader_end.exit

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !157
  %.not23.i = icmp eq i32 %i.f, 0
  br i1 %.not23.i, label %bb.e, label %mz_zip_reader_end.exit

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !158  ; 2 uses
  %.not24.i = icmp eq ptr %i.h, null
  br i1 %.not24.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr @def_alloc_func, ptr %i.g, align 8, !tbaa !158
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.i = phi ptr [ @def_alloc_func, %bb.f ], [ %i.h, %bb.e ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !159
  %.not25.i = icmp eq ptr %i.k, null
  br i1 %.not25.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr @def_free_func, ptr %i.j, align 8, !tbaa !159
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !160
  %.not26.i = icmp eq ptr %i.m, null
  br i1 %.not26.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr @def_realloc_func, ptr %i.l, align 8, !tbaa !160
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 1, ptr %i.e, align 4, !tbaa !157
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !161
  %i.p = tail call ptr %i.i(ptr noundef %i.o, i64 noundef 1, i64 noundef 152) #33, !inline_history !2 ; 3 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !156
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %mz_zip_reader_end.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.p, i8 0, i64 152, i1 false)
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !156  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i32 1, ptr %i.s, align 8, !tbaa !165
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store i32 4, ptr %i.t, align 8, !tbaa !166
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  store i32 4, ptr %i.u, align 8, !tbaa !167
  store i64 %1, ptr %0, align 8, !tbaa !168
  %i.v = tail call fastcc i32 @mz_zip_reader_read_central_dir(ptr noundef nonnull %0, i32 noundef %2)
  %.not12 = icmp eq i32 %i.v, 0
  br i1 %.not12, label %bb.m, label %mz_zip_reader_end.exit

bb.m:                                             ; preds = %bb.l
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !156  ; 7 uses
  %.not23.i14 = icmp eq ptr %i.w, null
  br i1 %.not23.i14, label %mz_zip_reader_end.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !158
  %.not24.i15 = icmp eq ptr %i.x, null
  br i1 %.not24.i15, label %mz_zip_reader_end.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !159  ; 2 uses
  %.not25.i16 = icmp eq ptr %i.y, null
  br i1 %.not25.i16, label %mz_zip_reader_end.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.z = load i32, ptr %i.e, align 4, !tbaa !157
  %.not26.i17 = icmp eq i32 %i.z, 1
  br i1 %.not26.i17, label %bb.q, label %mz_zip_reader_end.exit

bb.q:                                             ; preds = %bb.p
  store ptr null, ptr %i.c, align 8, !tbaa !156
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !161
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !169
  tail call void %i.y(ptr noundef %i.aa, ptr noundef %i.ab) #33, !inline_history !170
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i8 0, i64 32, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !159
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !161
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !169
  tail call void %i.ad(ptr noundef %i.ae, ptr noundef %i.af) #33, !inline_history !170
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 0, i64 32, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 64 ; 2 uses
  %i.ah = load ptr, ptr %i.j, align 8, !tbaa !159
  %i.ai = load ptr, ptr %i.n, align 8, !tbaa !161
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !169
  tail call void %i.ah(ptr noundef %i.ai, ptr noundef %i.aj) #33, !inline_history !170
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i8 0, i64 32, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 112 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !171 ; 2 uses
  %.not27.i = icmp eq ptr %i.al, null
  br i1 %.not27.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = tail call i32 @fclose(ptr noundef nonnull %i.al) ; 0 uses
  store ptr null, ptr %i.ak, align 8, !tbaa !171
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !159
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !161
  tail call void %i.an(ptr noundef %i.ao, ptr noundef nonnull %i.w) #33, !inline_history !170
  store i32 0, ptr %i.e, align 4, !tbaa !157
  br label %mz_zip_reader_end.exit

mz_zip_reader_end.exit:                           ; preds = %bb.c, %bb.d, %bb.k, %bb.s, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.s ], [ 1, %bb.l ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.k ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @mz_zip_reader_read_central_dir(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) unnamed_addr #5 !guid !397 {
bb.a:
  %i.a = alloca [1024 x i32], align 16            ; 6 uses
  %i.b = alloca [1024 x i32], align 16            ; 10 uses
  %i.c = alloca [5 x i32], align 16               ; 6 uses
  %i.d = alloca [14 x i32], align 16              ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.e = and i32 %1, 2048
  %i.f = icmp eq i32 %i.e, 0                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.g = load i64, ptr %0, align 8, !tbaa !168    ; 3 uses
  %i.h = icmp ult i64 %i.g, 22
  br i1 %i.h, label %mz_zip_set_error.exit349, label %bb.b

mz_zip_set_error.exit349:                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 8, ptr %i.i, align 4, !tbaa !398
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.j = tail call i64 @llvm.smax.i64(i64 %i.g, i64 4096)
  %spec.select.i = add nsw i64 %i.j, -4096
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.b
  %indvars.iv.i.a = phi i64 [ %i.g, %bb.b ], [ %i.ac, %bb.h ]
  %.039.i = phi i64 [ %spec.select.i, %bb.b ], [ %i.af, %bb.h ] ; 6 uses
  %i.m = sub i64 %indvars.iv.i.a, %.039.i         ; 2 uses
  %spec.select4859.i = call i64 @llvm.umin.i64(i64 %i.m, i64 4096) ; 3 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !155
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !172
  %i.p = call i64 %i.n(ptr noundef %i.o, i64 noundef %.039.i, ptr noundef nonnull %i.a, i64 noundef %spec.select4859.i) #33, !inline_history !393
  %.not.i351 = icmp eq i64 %i.p, %spec.select4859.i
  br i1 %.not.i351, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.q = icmp ugt i64 %i.m, 3
  br i1 %i.q, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.r = add nuw nsw i64 %spec.select4859.i, 4294967292
  %i.s = and i64 %i.r, 4294967295
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv65.i = phi i64 [ %i.s, %.lr.ph.i ], [ %indvars.iv.next66.i, %bb.g ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv65.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !18
  %i.v = icmp eq i32 %i.u, 101010256
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %0, align 8, !tbaa !168
  %i.x = add i64 %indvars.iv65.i, %.039.i         ; 4 uses
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp ugt i64 %i.y, 21
  br i1 %i.z, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next66.i = add nsw i64 %indvars.iv65.i, -1
  %i.aa = trunc nuw i64 %indvars.iv65.i to i32
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %.critedge.i, !llvm.loop !394

.critedge.i:                                      ; preds = %bb.g, %bb.d
  %.not47.i = icmp eq i64 %.039.i, 0
  br i1 %.not47.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge.i
  %i.ac = load i64, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.ad = sub i64 %i.ac, %.039.i
  %i.ae = icmp ugt i64 %i.ad, 65556
  %i.af = add i64 %.039.i, -4093
  br i1 %i.ae, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.c, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.j

bb.i:                                             ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %.not.i346 = icmp eq ptr %0, null
  br i1 %.not.i346, label %.critedge, label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 7, ptr %i.ag, align 4, !tbaa !398
  br label %.critedge

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !155
  %i.ai = load ptr, ptr %i.l, align 8, !tbaa !172
  %i.aj = call i64 %i.ah(ptr noundef %i.ai, i64 noundef %i.x, ptr noundef nonnull %i.b, i64 noundef 22) #33
  %.not264 = icmp eq i64 %i.aj, 22
  br i1 %.not264, label %bb.l, label %mz_zip_set_error.exit345

mz_zip_set_error.exit345:                         ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 20, ptr %i.ak, align 4, !tbaa !398
  br label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.al = load i32, ptr %i.b, align 16, !tbaa !18
  %.not265 = icmp eq i32 %i.al, 101010256
  br i1 %.not265, label %bb.m, label %mz_zip_set_error.exit343

mz_zip_set_error.exit343:                         ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 8, ptr %i.am, align 4, !tbaa !398
  br label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.an = icmp sgt i64 %i.x, 75
  br i1 %i.an, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.ao = load ptr, ptr %i.k, align 8, !tbaa !155
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !172
  %i.aq = add nsw i64 %i.x, -20
  %i.ar = call i64 %i.ao(ptr noundef %i.ap, i64 noundef %i.aq, ptr noundef nonnull %i.c, i64 noundef 20) #33
  %i.as = icmp eq i64 %i.ar, 20
  %i.at = load i32, ptr %i.c, align 16
  %i.au = icmp eq i32 %i.at, 117853008
  %or.cond285 = select i1 %i.as, i1 %i.au, i1 false
  br i1 %or.cond285, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = load i64, ptr %0, align 8, !tbaa !168
  %i.ay = add i64 %i.ax, -56
  %i.az = icmp ugt i64 %i.aw, %i.ay
  br i1 %i.az, label %mz_zip_set_error.exit341, label %bb.p

mz_zip_set_error.exit341:                         ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 8, ptr %i.ba, align 4, !tbaa !398
  br label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !155
  %i.bc = load ptr, ptr %i.l, align 8, !tbaa !172
  %i.bd = call i64 %i.bb(ptr noundef %i.bc, i64 noundef %i.aw, ptr noundef nonnull %i.d, i64 noundef 56) #33
  %i.be = icmp eq i64 %i.bd, 56
  %i.bf = load i32, ptr %i.d, align 16
  %i.bg = icmp eq i32 %i.bf, 101075792
  %or.cond287 = select i1 %i.be, i1 %i.bg, i1 false
  br i1 %or.cond287, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !156
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 100
  store i32 1, ptr %i.bj, align 4, !tbaa !173
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.p, %bb.q, %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !140
  %i.bm = zext i16 %i.bl to i32                   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !174
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bp = load i16, ptr %i.bo, align 8, !tbaa !140
  %i.bq = zext i16 %i.bp to i32
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bs = load i16, ptr %i.br, align 4, !tbaa !140
  %i.bt = zext i16 %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !140
  %i.bw = zext i16 %i.bv to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ca = load i32, ptr %i.bz, align 16, !tbaa !18
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 8 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !156 ; 7 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 100
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !173
  %.not266 = icmp eq i32 %i.cf, 0
  br i1 %.not266, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ch = load i32, ptr %i.cg, align 16, !tbaa !18 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.cp = load i64, ptr %i.co, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !18
  %i.cu = icmp ult i64 %i.cp, 44
  br i1 %i.cu, label %mz_zip_set_error.exit339, label %bb.t

mz_zip_set_error.exit339:                         ; preds = %bb.s
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 9, ptr %i.cv, align 4, !tbaa !398
  br label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cx = load i32, ptr %i.cw, align 16, !tbaa !18
  %.not267 = icmp eq i32 %i.cx, 1
  br i1 %.not267, label %bb.u, label %mz_zip_set_error.exit337

mz_zip_set_error.exit337:                         ; preds = %bb.t
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 10, ptr %i.cy, align 4, !tbaa !398
  br label %.critedge

bb.u:                                             ; preds = %bb.t
  %.not268 = icmp eq i32 %i.cj, 0
  br i1 %.not268, label %bb.v, label %mz_zip_set_error.exit335

mz_zip_set_error.exit335:                         ; preds = %bb.u
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 2, ptr %i.cz, align 4, !tbaa !398
  br label %.critedge

bb.v:                                             ; preds = %bb.u
  store i32 %i.ch, ptr %i.bn, align 8, !tbaa !174
  %.not269 = icmp eq i32 %i.cn, 0
  br i1 %.not269, label %bb.w, label %mz_zip_set_error.exit333

mz_zip_set_error.exit333:                         ; preds = %bb.v
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 2, ptr %i.da, align 4, !tbaa !398
  br label %.critedge

bb.w:                                             ; preds = %bb.v
  %.not270 = icmp eq i32 %i.ct, 0
  br i1 %.not270, label %bb.x, label %mz_zip_set_error.exit331

mz_zip_set_error.exit331:                         ; preds = %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 15, ptr %i.db, align 4, !tbaa !398
  br label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dd = load i32, ptr %i.dc, align 16, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.df = load i32, ptr %i.de, align 4, !tbaa !18
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.dh = load i64, ptr %i.dg, align 16
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.r
  %i.di = phi i32 [ %i.ch, %bb.x ], [ %i.bm, %bb.r ] ; 4 uses
  %.1241 = phi i32 [ %i.cr, %bb.x ], [ %i.by, %bb.r ] ; 3 uses
  %.1239 = phi i32 [ %i.cl, %bb.x ], [ %i.bq, %bb.r ]
  %.1237 = phi i32 [ %i.dd, %bb.x ], [ %i.bt, %bb.r ] ; 3 uses
  %.1235 = phi i32 [ %i.df, %bb.x ], [ %i.bw, %bb.r ] ; 2 uses
  %.1233 = phi i64 [ %i.dh, %bb.x ], [ %i.cb, %bb.r ] ; 4 uses
  %.not271 = icmp eq i32 %i.di, %.1239
  br i1 %.not271, label %bb.z, label %mz_zip_set_error.exit329

mz_zip_set_error.exit329:                         ; preds = %bb.y
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 10, ptr %i.dj, align 4, !tbaa !398
  br label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.dk = or i32 %.1235, %.1237
  %.not272 = icmp eq i32 %i.dk, 0
end_hunk_0
begin_hunk_1_@mz_zip_reader_sort_central_dir_offsets_by_filename:bb.a
  %.not.i95 = icmp eq i8 %spec.select2, %.in39.i94
  br i1 %.not.i95, label %bb.j, label %mz_zip_reader_filename_less.exit98.loopexit

bb.j:                                             ; preds = %.lr.ph30
  %i.eb = getelementptr inbounds nuw i8, ptr %.035.i8427, i64 1 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.034.i8528, i64 1
  %i.ed = icmp ult ptr %i.eb, %i.dv
  br i1 %i.ed, label %.lr.ph30, label %mz_zip_reader_filename_less.exit98.loopexit, !llvm.loop !572

mz_zip_reader_filename_less.exit98.loopexit:      ; preds = %bb.j, %.lr.ph30
  %.in39.i94.lcssa = phi i8 [ %spec.select2, %bb.j ], [ %.in39.i94, %.lr.ph30 ]
  %.035.i84.lcssa.ph = phi ptr [ %i.eb, %bb.j ], [ %.035.i8427, %.lr.ph30 ]
  %i.ee = icmp ult i8 %spec.select2, %.in39.i94.lcssa
  br label %mz_zip_reader_filename_less.exit98

mz_zip_reader_filename_less.exit98:               ; preds = %mz_zip_reader_filename_less.exit98.loopexit, %bb.i
  %.035.i84.lcssa = phi ptr [ %i.ds, %bb.i ], [ %.035.i84.lcssa.ph, %mz_zip_reader_filename_less.exit98.loopexit ]
  %.133.i88 = phi i1 [ false, %bb.i ], [ %i.ee, %mz_zip_reader_filename_less.exit98.loopexit ]
  %i.ef = icmp eq ptr %.035.i84.lcssa, %i.dv
  %.in40.i90 = select i1 %i.ef, i1 %i.dt, i1 %.133.i88
  %i.eg = zext i1 %.in40.i90 to i32
  br label %bb.k

bb.k:                                             ; preds = %mz_zip_reader_filename_less.exit98, %bb.h
  %i.eh = phi i32 [ 0, %bb.h ], [ %i.eg, %mz_zip_reader_filename_less.exit98 ]
  %i.ei = add nsw i32 %i.eh, %i.cu                ; 3 uses
  %i.ej = sext i32 %.050 to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ej
  %i.el = sext i32 %i.ei to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.el ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !18 ; 2 uses
  %i.eo = load i32, ptr %i.ct, align 4, !tbaa !18
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ep ; 2 uses
  %i.er = zext i32 %i.en to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !18
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.eu ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 28
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !140 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 28
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !140 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 46 ; 3 uses
  %i.fb = icmp uge i16 %i.ex, %i.ez
  %.v.i = tail call i16 @llvm.umin.i16(i16 %i.ex, i16 %i.ez) ; 2 uses
  %i.fc = zext i16 %.v.i to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fc ; 2 uses
  %.not61 = icmp eq i16 %.v.i, 0
  br i1 %.not61, label %mz_zip_reader_filename_less.exit, label %.lr.ph41.preheader

.lr.ph41.preheader:                               ; preds = %bb.k
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ev, i64 46
  br label %.lr.ph41

.lr.ph41:                                         ; preds = %.lr.ph41.preheader, %bb.l
  %.034.i39 = phi ptr [ %i.fk, %bb.l ], [ %i.fe, %.lr.ph41.preheader ] ; 2 uses
  %.035.i38 = phi ptr [ %i.fj, %bb.l ], [ %i.fa, %.lr.ph41.preheader ] ; 3 uses
  %i.ff = load i8, ptr %.035.i38, align 1, !tbaa !80 ; 3 uses
  %i.fg = add i8 %i.ff, -65
  %or.cond.i = icmp ult i8 %i.fg, 26
  %narrow.i = add nuw nsw i8 %i.ff, 32
  %spec.select3 = select i1 %or.cond.i, i8 %narrow.i, i8 %i.ff ; 3 uses
  %i.fh = load i8, ptr %.034.i39, align 1, !tbaa !80 ; 3 uses
  %i.fi = add i8 %i.fh, -65
  %or.cond41.i = icmp ult i8 %i.fi, 26
  %narrow38.i = add nuw nsw i8 %i.fh, 32
  %.in39.i = select i1 %or.cond41.i, i8 %narrow38.i, i8 %i.fh ; 2 uses
  %.not.i = icmp eq i8 %spec.select3, %.in39.i
  br i1 %.not.i, label %bb.l, label %mz_zip_reader_filename_less.exit.loopexit

bb.l:                                             ; preds = %.lr.ph41
  %i.fj = getelementptr inbounds nuw i8, ptr %.035.i38, i64 1 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.034.i39, i64 1
  %i.fl = icmp ult ptr %i.fj, %i.fd
  br i1 %i.fl, label %.lr.ph41, label %mz_zip_reader_filename_less.exit.loopexit, !llvm.loop !572

mz_zip_reader_filename_less.exit.loopexit:        ; preds = %bb.l, %.lr.ph41
  %.in39.i.lcssa = phi i8 [ %spec.select3, %bb.l ], [ %.in39.i, %.lr.ph41 ]
  %.035.i.lcssa.ph = phi ptr [ %i.fj, %bb.l ], [ %.035.i38, %.lr.ph41 ]
  %i.fm = icmp uge i8 %spec.select3, %.in39.i.lcssa
  br label %mz_zip_reader_filename_less.exit

mz_zip_reader_filename_less.exit:                 ; preds = %mz_zip_reader_filename_less.exit.loopexit, %bb.k
  %.035.i.lcssa = phi ptr [ %i.fa, %bb.k ], [ %.035.i.lcssa.ph, %mz_zip_reader_filename_less.exit.loopexit ]
  %.133.i = phi i1 [ true, %bb.k ], [ %i.fm, %mz_zip_reader_filename_less.exit.loopexit ]
  %i.fn = icmp eq ptr %.035.i.lcssa, %i.fd
  %.in40.i = select i1 %i.fn, i1 %i.fb, i1 %.133.i
  br i1 %.in40.i, label %mz_zip_reader_filename_less.exit._crit_edge, label %bb.m

bb.m:                                             ; preds = %mz_zip_reader_filename_less.exit
  store i32 %i.en, ptr %i.ek, align 4, !tbaa !18
  store i32 %i.co, ptr %i.em, align 4, !tbaa !18
  %i.fo = shl i32 %i.ei, 1                        ; 2 uses
  %i.fp = or disjoint i32 %i.fo, 1                ; 2 uses
  %i.fq = sext i32 %i.fp to i64
  %.not = icmp sgt i64 %indvars.iv.next, %i.fq
  br i1 %.not, label %bb.h, label %mz_zip_reader_filename_less.exit._crit_edge

mz_zip_reader_filename_less.exit._crit_edge:      ; preds = %bb.m, %mz_zip_reader_filename_less.exit
  %i.fr = icmp sgt i64 %indvars.iv, 2
  br i1 %i.fr, label %.lr.ph56, label %._crit_edge57, !llvm.loop !574

._crit_edge57:                                    ; preds = %.lr.ph56, %mz_zip_reader_filename_less.exit._crit_edge, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare noundef i64 @mktime(ptr noundef captures(none)) local_unnamed_addr #27

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @utime(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @mz_zip_array_ensure_capacity(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #5 !guid !576 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !176  ; 2 uses
  %.not = icmp ult i64 %i.b, %2
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not22 = icmp eq i32 %3, 0
  br i1 %.not22, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ %spec.select, %bb.c ], [ %i.d, %bb.d ] ; 3 uses
  %i.c = icmp ult i64 %.0, %2
  %i.d = shl i64 %.0, 1
  br i1 %i.c, label %bb.d, label %.loopexit, !llvm.loop !7

.loopexit:                                        ; preds = %bb.d, %bb.b
  %.1 = phi i64 [ %2, %bb.b ], [ %.0, %bb.d ]     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !160
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !161
  %i.i = load ptr, ptr %1, align 8, !tbaa !169
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !177
  %i.l = zext i32 %i.k to i64
  %i.m = tail call ptr %i.f(ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.l, i64 noundef %.1) #33 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  store ptr %i.m, ptr %1, align 8, !tbaa !169
  store i64 %.1, ptr %i.a, align 8, !tbaa !176
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %bb.a, %bb.e
  %.018 = phi i32 [ 1, %bb.e ], [ 1, %bb.a ], [ 0, %.loopexit ]
  ret i32 %.018
}

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind
declare i32 @ftruncate(i32 noundef, i64 noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @zip_central_dir_delete(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #13 !guid !587 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.preheader63.lr.ph, label %._crit_edge71

.preheader63.lr.ph:                               ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %wide.trip.count62.i = zext nneg i32 %2 to i64  ; 2 uses
  %i.d = zext nneg i32 %2 to i64                  ; 5 uses
  br label %.preheader63

.preheader59.lr.ph:                               ; preds = %zip_central_dir_move.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = zext nneg i32 %2 to i64                  ; 3 uses
  br label %.preheader59

.preheader63:                                     ; preds = %.preheader63.backedge, %.preheader63.lr.ph
  %indvars.iv = phi i64 [ 0, %.preheader63.lr.ph ], [ %indvars.iv.be, %.preheader63.backedge ] ; 8 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !18
  %.not53 = icmp eq i32 %i.h, 0
  %i.i = icmp slt i64 %indvars.iv, %i.d
  %i.j = and i1 %i.i, %.not53
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %i.j, label %.preheader63.backedge, label %.preheader62

.preheader63.backedge:                            ; preds = %.preheader63, %zip_central_dir_move.exit
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %.preheader63 ], [ %indvars.iv78, %zip_central_dir_move.exit ]
  br label %.preheader63, !llvm.loop !577

.preheader62:                                     ; preds = %.preheader63
  %3 = trunc nsw i64 %indvars.iv to i32
  br label %.preheader62.a

.preheader62.a:                                   ; preds = %.preheader62.a, %.preheader62
  %indvar = phi i64 [ %indvar.next, %.preheader62.a ], [ 0, %.preheader62 ] ; 3 uses
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %.preheader62.a ], [ %indvars.iv, %.preheader62 ] ; 12 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv78
  %i.l = load i32, ptr %i.k, align 4, !tbaa !18
  %i.m = icmp ne i32 %i.l, 0
  %i.n = icmp slt i64 %indvars.iv78, %i.d         ; 3 uses
  %i.o = and i1 %i.n, %i.m
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.o, label %.preheader62.a, label %bb.b, !llvm.loop !578

bb.b:                                             ; preds = %.preheader62.a
  %i.p = trunc nsw i64 %indvars.iv78 to i32       ; 2 uses
  %i.q = icmp eq i32 %2, %3
  br i1 %i.q, label %zip_central_dir_move.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %0, align 8, !tbaa !180    ; 3 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !181  ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !18   ; 3 uses
  %i.v = zext i32 %i.u to i64                     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v
  %i.x = icmp eq i32 %2, %i.p
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv78
  %i.z = load i32, ptr %i.y, align 4, !tbaa !18   ; 2 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.aa
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !216
  %i.ad = sub i64 %i.ac, %i.aa
  %gepdiff.i = sub i32 %i.z, %i.u
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.049.i = phi i64 [ %i.ad, %bb.d ], [ 0, %bb.c ] ; 5 uses
  %.048.i = phi i32 [ %gepdiff.i, %bb.d ], [ 0, %bb.c ] ; 4 uses
  %.047.i = phi ptr [ %i.ab, %bb.d ], [ null, %bb.c ] ; 2 uses
  %i.ae = icmp eq i32 %i.u, 0
  br i1 %i.ae, label %bb.f, label %.loopexit54.i

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %.047.i, i64 %.049.i, i1 false)
  %i.af = load ptr, ptr %0, align 8, !tbaa !180
  %i.ag = tail call ptr @realloc(ptr noundef %i.af, i64 noundef %.049.i) #35
  store ptr %i.ag, ptr %0, align 8, !tbaa !180
  br i1 %i.n, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !181 ; 2 uses
  %i.ai = add i64 %indvars.iv, %indvar
  %i.aj = sub i64 %i.d, %i.ai                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.aj, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.aj, -8                      ; 3 uses
  %i.ak = add i64 %indvars.iv78, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.048.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.al = getelementptr [4 x i8], ptr %i.ah, i64 %indvars.iv78
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = getelementptr [4 x i8], ptr %i.al, i64 %index ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.am, align 4, !tbaa !18
  %wide.load5 = load <4 x i32>, ptr %i.an, align 4, !tbaa !18
  %i.ao = sub <4 x i32> %wide.load, %broadcast.splat
  %i.ap = sub <4 x i32> %wide.load5, %broadcast.splat
  store <4 x i32> %i.ao, ptr %i.am, align 4, !tbaa !18
  store <4 x i32> %i.ap, ptr %i.an, align 4, !tbaa !18
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !579

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %indvars.iv78, %.lr.ph.i ], [ %i.ak, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %indvars.iv.i ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !18
  %i.at = sub i32 %i.as, %.048.i
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !18
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count62.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %scalar.ph, !llvm.loop !580

.loopexit54.i:                                    ; preds = %bb.e
  %i.au = mul i64 %.049.i, %i.v
  %.not.i = icmp eq i64 %i.au, 0
  br i1 %.not.i, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %.loopexit54.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %.047.i, i64 %.049.i, i1 false)
  br i1 %i.n, label %.lr.ph57.i, label %.loopexit.i

.lr.ph57.i:                                       ; preds = %bb.g
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !181 ; 2 uses
  %i.aw = add i64 %indvars.iv, %indvar
  %i.ax = sub i64 %i.d, %i.aw                     ; 3 uses
  %min.iters.check7 = icmp ult i64 %i.ax, 8
  br i1 %min.iters.check7, label %scalar.ph6.preheader, label %vector.ph8

vector.ph8:                                       ; preds = %.lr.ph57.i
  %n.vec9 = and i64 %i.ax, -8                     ; 3 uses
  %i.ay = add i64 %indvars.iv78, %n.vec9
  %broadcast.splatinsert10 = insertelement <4 x i32> poison, i32 %.048.i, i64 0
  %broadcast.splat11 = shufflevector <4 x i32> %broadcast.splatinsert10, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.az = getelementptr [4 x i8], ptr %i.av, i64 %indvars.iv78
  br label %vector.body12

vector.body12:                                    ; preds = %vector.body12, %vector.ph8
  %index13 = phi i64 [ 0, %vector.ph8 ], [ %index.next16, %vector.body12 ] ; 2 uses
  %i.ba = getelementptr [4 x i8], ptr %i.az, i64 %index13 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %wide.load14 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !18
  %wide.load15 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !18
  %i.bc = sub <4 x i32> %wide.load14, %broadcast.splat11
  %i.bd = sub <4 x i32> %wide.load15, %broadcast.splat11
  store <4 x i32> %i.bc, ptr %i.ba, align 4, !tbaa !18
  store <4 x i32> %i.bd, ptr %i.bb, align 4, !tbaa !18
  %index.next16 = add nuw i64 %index13, 8         ; 2 uses
  %i.be = icmp eq i64 %index.next16, %n.vec9
  br i1 %i.be, label %middle.block17, label %vector.body12, !llvm.loop !581

middle.block17:                                   ; preds = %vector.body12
  %cmp.n18 = icmp eq i64 %i.ax, %n.vec9
  br i1 %cmp.n18, label %.loopexit.i, label %scalar.ph6.preheader

scalar.ph6.preheader:                             ; preds = %.lr.ph57.i, %middle.block17
  %indvars.iv59.i.ph = phi i64 [ %indvars.iv78, %.lr.ph57.i ], [ %i.ay, %middle.block17 ]
  br label %scalar.ph6

scalar.ph6:                                       ; preds = %scalar.ph6.preheader, %scalar.ph6
  %indvars.iv59.i = phi i64 [ %indvars.iv.next60.i, %scalar.ph6 ], [ %indvars.iv59.i.ph, %scalar.ph6.preheader ] ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.av, i64 %indvars.iv59.i ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !18
  %i.bh = sub i32 %i.bg, %.048.i
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !18
  %indvars.iv.next60.i = add nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next60.i, %wide.trip.count62.i
  br i1 %exitcond63.not.i, label %.loopexit.i, label %scalar.ph6, !llvm.loop !582

.loopexit.i:                                      ; preds = %scalar.ph6, %scalar.ph, %middle.block17, %middle.block, %bb.f, %bb.g, %.loopexit54.i
  %i.bi = add i64 %.049.i, %i.v
  store i64 %i.bi, ptr %i.c, align 8, !tbaa !216
  br label %zip_central_dir_move.exit

zip_central_dir_move.exit:                        ; preds = %bb.b, %.loopexit.i
  %i.bj = icmp sgt i32 %2, %i.p
  br i1 %i.bj, label %.preheader63.backedge, label %.preheader59.lr.ph

.preheader59:                                     ; preds = %._crit_edge, %.preheader59.lr.ph
  %.05070 = phi i32 [ 0, %.preheader59.lr.ph ], [ %i.cn, %._crit_edge ] ; 3 uses
  %.369 = phi i64 [ 0, %.preheader59.lr.ph ], [ %indvars.iv84, %._crit_edge ]
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader59
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %bb.h ], [ %.369, %.preheader59 ] ; 7 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv81
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !18
  %.not = icmp eq i32 %i.bl, 0
  %i.bm = icmp slt i64 %indvars.iv81, %i.f
  %i.bn = and i1 %i.bm, %.not
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, 1
  br i1 %i.bn, label %bb.h, label %bb.i, !llvm.loop !583

bb.i:                                             ; preds = %bb.h
  %i.bo = trunc nsw i64 %indvars.iv81 to i32      ; 3 uses
  %i.bp = icmp eq i32 %2, %i.bo
  br i1 %i.bp, label %._crit_edge71, label %.preheader58

.preheader58:                                     ; preds = %bb.i, %.preheader58
  %indvar22 = phi i64 [ %indvar.next23, %.preheader58 ], [ 0, %bb.i ] ; 3 uses
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %.preheader58 ], [ %indvars.iv81, %bb.i ] ; 9 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv84
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !18
  %i.bs = icmp ne i32 %i.br, 0
  %i.bt = icmp slt i64 %indvars.iv84, %i.f
  %i.bu = and i1 %i.bt, %i.bs
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 1
  %indvar.next23 = add i64 %indvar22, 1
  br i1 %i.bu, label %.preheader58, label %.preheader, !llvm.loop !584

.preheader:                                       ; preds = %.preheader58
  %i.bv = trunc nsw i64 %indvars.iv84 to i32      ; 3 uses
  %i.bw = icmp sgt i32 %2, %i.bv
  br i1 %i.bw, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader
  %i.bx = sub i32 %.05070, %i.bo
  %i.by = add i32 %i.bx, %i.bv
  br label %._crit_edge71

.lr.ph:                                           ; preds = %.preheader
  %i.bz = load ptr, ptr %i.e, align 8, !tbaa !181 ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.bz, i64 %indvars.iv81 ; 2 uses
  %i.ca = add i64 %indvars.iv84, 1
  %i.cb = tail call i64 @llvm.smax.i64(i64 %i.ca, i64 %i.d)
  %i.cc = add i64 %indvars.iv81, %indvar22
  %i.cd = sub i64 %i.cb, %i.cc                    ; 3 uses
  %min.iters.check25 = icmp ult i64 %i.cd, 8
end_hunk_1
