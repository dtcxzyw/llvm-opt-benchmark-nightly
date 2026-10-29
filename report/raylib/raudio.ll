Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 99
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 302
begin_hunk_0_@drwav_init:bb.a
  %.sroa.6.0.copyload27.i.i = load ptr, ptr %.sroa.6.0..sroa_idx26.i.i, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx28.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.7.0.copyload29.i.i = load ptr, ptr %.sroa.7.0..sroa_idx28.i.i, align 8 ; 2 uses
  %.sroa.5.0.copyload25.i.i = load ptr, ptr %.sroa.5.0..sroa_idx24.i.i, align 8
  %i.i = load <2 x ptr>, ptr %5, align 8
  store <2 x ptr> %i.i, ptr %i.h, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.6.0.copyload27.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.7.0.copyload29.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8
  %i.j = icmp eq ptr %.sroa.7.0.copyload29.i.i, null
  br i1 %i.j, label %drwav_init_ex.exit, label %bb.c

bb.c:                                             ; preds = %drwav_copy_allocation_callbacks_or_defaults.exit.i.i
  %i.k = icmp eq ptr %.sroa.5.0.copyload25.i.i, null
  %i.l = icmp eq ptr %.sroa.6.0.copyload27.i.i, null
  %or.cond39.i.i = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond39.i.i, label %drwav_init_ex.exit, label %drwav_preinit.exit.i

drwav_preinit.exit.i:                             ; preds = %bb.c, %.thread.i.i
  %i.m = tail call fastcc i32 @drwav_init__internal(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, i32 noundef 0)
  br label %drwav_init_ex.exit

drwav_init_ex.exit:                               ; preds = %bb.a, %drwav_copy_allocation_callbacks_or_defaults.exit.i.i, %bb.c, %drwav_preinit.exit.i
  %.0.i = phi i32 [ %i.m, %drwav_preinit.exit.i ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %drwav_copy_allocation_callbacks_or_defaults.exit.i.i ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @drwav_init_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(address_is_null) %8) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond3.i = or i1 %or.cond.i, %i.c
  br i1 %or.cond3.i, label %drwav_preinit.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.d, i8 0, i64 400, i1 false)
  store ptr %1, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %5, ptr %i.g, align 8
  %.not.i.i = icmp eq ptr %8, null
  br i1 %.not.i.i, label %.thread.i, label %drwav_copy_allocation_callbacks_or_defaults.exit.i

.thread.i:                                        ; preds = %bb.b
  %.sroa.5.0..sroa_idx36.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @drwav__malloc_default, ptr %.sroa.5.0..sroa_idx36.i, align 8
  %.sroa.6.0..sroa_idx37.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @drwav__realloc_default, ptr %.sroa.6.0..sroa_idx37.i, align 8
  %.sroa.7.0..sroa_idx38.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @drwav__free_default, ptr %.sroa.7.0..sroa_idx38.i, align 8
  br label %drwav_preinit.exit

drwav_copy_allocation_callbacks_or_defaults.exit.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.6.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.6.0.copyload27.i = load ptr, ptr %.sroa.6.0..sroa_idx26.i, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.7.0.copyload29.i = load ptr, ptr %.sroa.7.0..sroa_idx28.i, align 8 ; 2 uses
  %.sroa.5.0.copyload25.i = load ptr, ptr %.sroa.5.0..sroa_idx24.i, align 8
  %i.i = load <2 x ptr>, ptr %8, align 8
  store <2 x ptr> %i.i, ptr %i.h, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.6.0.copyload27.i, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.7.0.copyload29.i, ptr %.sroa.7.0..sroa_idx.i, align 8
  %i.j = icmp eq ptr %.sroa.7.0.copyload29.i, null
  br i1 %i.j, label %drwav_preinit.exit.thread, label %bb.c

bb.c:                                             ; preds = %drwav_copy_allocation_callbacks_or_defaults.exit.i
  %i.k = icmp eq ptr %.sroa.5.0.copyload25.i, null
  %i.l = icmp eq ptr %.sroa.6.0.copyload27.i, null
  %or.cond39.i = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond39.i, label %drwav_preinit.exit.thread, label %drwav_preinit.exit

drwav_preinit.exit:                               ; preds = %bb.c, %.thread.i
  %i.m = tail call fastcc i32 @drwav_init__internal(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %6, i32 noundef %7)
  br label %drwav_preinit.exit.thread

drwav_preinit.exit.thread:                        ; preds = %drwav_copy_allocation_callbacks_or_defaults.exit.i, %bb.c, %bb.a, %drwav_preinit.exit
  %.0 = phi i32 [ %i.m, %drwav_preinit.exit ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %drwav_copy_allocation_callbacks_or_defaults.exit.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @drwav_init__internal(ptr nofree noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #8 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 5 uses
  %i.d = alloca i64, align 8                      ; 25 uses
  %i.e = alloca [4 x i8], align 1                 ; 13 uses
  %4 = alloca %struct.drwav_fmt, align 4          ; 20 uses
  %i.f = alloca i64, align 8                      ; 7 uses
  %5 = alloca %struct.drwav__metadata_parser, align 8 ; 14 uses
  %i.g = alloca [12 x i8], align 8                ; 5 uses
  %i.h = alloca [4 x i8], align 4                 ; 5 uses
  %i.i = alloca [4 x i8], align 1                 ; 8 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [16 x i8], align 16               ; 5 uses
  %i.l = alloca [4 x i8], align 4                 ; 7 uses
  %i.m = alloca [4 x i8], align 1                 ; 10 uses
  %i.n = alloca [8 x i8], align 8                 ; 7 uses
  %6 = alloca %struct.drwav_chunk_header, align 8 ; 7 uses
  %7 = alloca %struct.drwav_chunk_header, align 8 ; 22 uses
  %i.o = alloca [16 x i8], align 16               ; 22 uses
  %i.p = alloca [2 x i8], align 2                 ; 7 uses
  %i.q = alloca [22 x i8], align 16               ; 9 uses
  %i.r = alloca [4 x i8], align 4                 ; 6 uses
  %i.s = alloca [24 x i8], align 16               ; 15 uses
  %i.t = alloca [8 x i8], align 4                 ; 7 uses
  %8 = alloca %struct.drwav_chunk_header, align 8 ; 10 uses
  %i.u = alloca i64, align 8                      ; 4 uses
  %i.v = alloca [4096 x i8], align 16             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #61
  store i64 0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #61
  %i.w = trunc i32 %3 to i1                       ; 2 uses
  %i.x = and i32 %3, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %i.y = load ptr, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 43 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call i64 %i.y(ptr noundef %i.aa, ptr noundef nonnull %i.e, i64 noundef 4) #61, !inline_history !839
  %.not = icmp eq i64 %i.ab, 4
  br i1 %.not, label %bb.b, label %drwav_free.exit779

bb.b:                                             ; preds = %bb.a
  %i.ac = load i8, ptr %i.e, align 1
  switch i8 %i.ac, label %drwav_free.exit779 [
    i8 82, label %bb.c
    i8 114, label %bb.d
    i8 70, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.ae = load i8, ptr %i.ad, align 1             ; 2 uses
  %i.af = icmp eq i8 %i.ae, 73
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.ah = load i8, ptr %i.ag, align 1             ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 70
  %or.cond1022 = select i1 %i.af, i1 %i.ai, i1 false ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.ak = load i8, ptr %i.aj, align 1             ; 3 uses
  %.not1212 = icmp eq i8 %i.ak, 70
  %or.cond1240 = select i1 %or.cond1022, i1 %.not1212, i1 false
  br i1 %or.cond1240, label %.thread1552, label %.thread

.thread:                                          ; preds = %bb.c
  %.not1213 = icmp eq i8 %i.ak, 88
  %or.cond1243 = select i1 %or.cond1022, i1 %.not1213, i1 false
  br i1 %or.cond1243, label %.thread1552, label %.thread805

bb.d:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.am = load i8, ptr %i.al, align 1
  %i.an = icmp eq i8 %i.am, 105
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = icmp eq i8 %i.ap, 102
  %or.cond1030 = select i1 %i.an, i1 %i.aq, i1 false
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.as = load i8, ptr %i.ar, align 1
  %.not1211 = icmp eq i8 %i.as, 102
  %or.cond1246 = select i1 %or.cond1030, i1 %.not1211, i1 false
  br i1 %or.cond1246, label %bb.e, label %drwav_free.exit779

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #61
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i32 2, ptr %i.at, align 8
  %i.au = load ptr, ptr %0, align 8
  %i.av = load ptr, ptr %i.z, align 8
  %i.aw = call i64 %i.au(ptr noundef %i.av, ptr noundef nonnull %i.g, i64 noundef 12) #61, !inline_history !839
  %.not468 = icmp eq i64 %i.aw, 12
  %i.ax = load <8 x i8>, ptr %i.g, align 8
  %.fr1828 = freeze <8 x i8> %i.ax
  %i.ay = icmp eq <8 x i8> %.fr1828, <i8 46, i8 -111, i8 -49, i8 17, i8 -91, i8 -42, i8 40, i8 -37> ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ba = load <4 x i8>, ptr %i.az, align 8
  %.fr1829 = freeze <4 x i8> %i.ba
  %i.bb = icmp eq <4 x i8> %.fr1829, <i8 4, i8 -63, i8 0, i8 0>
  %i.bc = shufflevector <8 x i1> %i.ay, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op1826 = and <4 x i1> %i.bc, %i.bb
  %i.bd = shufflevector <4 x i1> %rdx.op1826, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.be = shufflevector <8 x i1> %i.bd, <8 x i1> %i.ay, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.bf = bitcast <8 x i1> %i.be to i8
  %i.bg = icmp eq i8 %i.bf, -1
  %op.rdx1827 = select i1 %i.bg, i1 %.not468, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #61
  br i1 %op.rdx1827, label %bb.g, label %drwav_free.exit779

.thread805:                                       ; preds = %.thread
  %i.bh = icmp eq i8 %i.ae, 70
  %i.bi = icmp eq i8 %i.ah, 54
  %or.cond1034 = select i1 %i.bh, i1 %i.bi, i1 false
  %.not1214 = icmp eq i8 %i.ak, 52
  %or.cond1249 = select i1 %or.cond1034, i1 %.not1214, i1 false
  br i1 %or.cond1249, label %.thread1552, label %drwav_free.exit779

bb.f:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = icmp eq i8 %i.bk, 79
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = icmp eq i8 %i.bn, 82
  %or.cond1038 = select i1 %i.bl, i1 %i.bo, i1 false
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.bq = load i8, ptr %i.bp, align 1
  %.not1210 = icmp eq i8 %i.bq, 77
  %or.cond1252 = select i1 %or.cond1038, i1 %.not1210, i1 false
  br i1 %or.cond1252, label %.thread1553, label %drwav_free.exit779

.thread1553:                                      ; preds = %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 4, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.o

.thread1552:                                      ; preds = %.thread805, %.thread, %bb.c
  %.sink = phi i32 [ 0, %bb.c ], [ 1, %.thread ], [ 3, %.thread805 ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.sink, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.pre = load i32, ptr %i.at, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  switch i32 %.pre, label %drwav_free.exit779 [
    i32 0, label %bb.h
    i32 1, label %bb.h
    i32 3, label %bb.h
    i32 2, label %bb.l
    i32 4, label %bb.o
  ]

bb.h:                                             ; preds = %.thread1552, %bb.g, %bb.g, %bb.g
  %i.bw = phi ptr [ %i.bu, %.thread1552 ], [ %i.bv, %bb.g ], [ %i.bv, %bb.g ], [ %i.bv, %bb.g ] ; 2 uses
  %i.bx = phi i64 [ 4, %.thread1552 ], [ 16, %bb.g ], [ 16, %bb.g ], [ 16, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #61
  %i.by = load ptr, ptr %0, align 8
  %i.bz = load ptr, ptr %i.z, align 8
  %i.ca = call i64 %i.by(ptr noundef %i.bz, ptr noundef nonnull %i.h, i64 noundef 4) #61, !inline_history !839 ; 2 uses
  %i.cb = add i64 %i.bx, %i.ca
  %.not477 = icmp eq i64 %i.ca, 4
  br i1 %.not477, label %bb.i, label %.critedge537

bb.i:                                             ; preds = %bb.h
  %i.cc = load i32, ptr %i.bw, align 8
  switch i32 %i.cc, label %.critedge537 [
    i32 3, label %bb.j
    i32 1, label %drwav_bytes_to_u32_ex.exit590
    i32 0, label %drwav_bytes_to_u32_ex.exit590
  ]

bb.j:                                             ; preds = %bb.i
  %i.cd = load i32, ptr %i.h, align 4
  %.not478 = icmp eq i32 %i.cd, -1
  br i1 %.not478, label %drwav_bytes_to_u32_ex.exit590, label %.critedge537

drwav_bytes_to_u32_ex.exit590:                    ; preds = %bb.i, %bb.i, %bb.j
  %i.ce = load ptr, ptr %0, align 8
  %i.cf = load ptr, ptr %i.z, align 8
  %i.cg = call i64 %i.ce(ptr noundef %i.cf, ptr noundef nonnull %i.i, i64 noundef 4) #61, !inline_history !839 ; 2 uses
  %i.ch = add i64 %i.cg, %i.cb                    ; 2 uses
  store i64 %i.ch, ptr %i.d, align 8
  %.not479 = icmp eq i64 %i.cg, 4
  br i1 %.not479, label %bb.k, label %.critedge537

bb.k:                                             ; preds = %drwav_bytes_to_u32_ex.exit590
  %i.ci = load i8, ptr %i.i, align 1
  %i.cj = icmp eq i8 %i.ci, 87
  %i.ck = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = icmp eq i8 %i.cl, 65
  %or.cond1042 = select i1 %i.cj, i1 %i.cm, i1 false
  %i.cn = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = icmp eq i8 %i.co, 86
  %or.cond1046 = select i1 %or.cond1042, i1 %i.cp, i1 false
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.cr = load i8, ptr %i.cq, align 1
  %.fr = freeze i8 %i.cr
  %.not1217 = icmp eq i8 %.fr, 69
  %or.cond1255 = and i1 %or.cond1046, %.not1217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #61
  br i1 %or.cond1255, label %.thread821, label %drwav_free.exit779

bb.l:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #61
  %i.cs = load ptr, ptr %0, align 8
  %i.ct = load ptr, ptr %i.z, align 8
  %i.cu = call i64 %i.cs(ptr noundef %i.ct, ptr noundef nonnull %i.j, i64 noundef 8) #61, !inline_history !839
  %.not474 = icmp ne i64 %i.cu, 8
  %i.cv = load i64, ptr %i.j, align 8
  %i.cw = icmp ult i64 %i.cv, 80
  %or.cond1048 = select i1 %.not474, i1 true, i1 %i.cw
  br i1 %or.cond1048, label %.critedge540, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cx = load ptr, ptr %0, align 8
  %i.cy = load ptr, ptr %i.z, align 8
  %i.cz = call i64 %i.cx(ptr noundef %i.cy, ptr noundef nonnull %i.k, i64 noundef 16) #61, !inline_history !839 ; 2 uses
  %i.da = add i64 %i.cz, 24                       ; 2 uses
  store i64 %i.da, ptr %i.d, align 8
  %.not475 = icmp eq i64 %i.cz, 16
  br i1 %.not475, label %bb.n, label %.critedge540

bb.n:                                             ; preds = %bb.m
  %i.db = call i32 @drwav_guid_equal(ptr noundef nonnull %i.k, ptr noundef nonnull @drwavGUID_W64_WAVE)
  %.not476.not = icmp eq i32 %i.db, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #61
  br i1 %.not476.not, label %drwav_free.exit779, label %.thread821

bb.o:                                             ; preds = %.thread1553, %bb.g
  %i.dc = phi ptr [ %i.bs, %.thread1553 ], [ %i.bv, %bb.g ] ; 2 uses
  %i.dd = phi i64 [ 4, %.thread1553 ], [ 16, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #61
  %i.de = load ptr, ptr %0, align 8
  %i.df = load ptr, ptr %i.z, align 8
  %i.dg = call i64 %i.de(ptr noundef %i.df, ptr noundef nonnull %i.l, i64 noundef 4) #61, !inline_history !839 ; 2 uses
  %i.dh = add i64 %i.dd, %i.dg
  %.not470 = icmp eq i64 %i.dg, 4
  br i1 %.not470, label %bb.p, label %.thread827

bb.p:                                             ; preds = %bb.o
  %i.di = load i32, ptr %i.l, align 4
  %i.dj = call i32 @llvm.bswap.i32(i32 %i.di)
  %i.dk = icmp ult i32 %i.dj, 18
  br i1 %i.dk, label %.thread827, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dl = load ptr, ptr %0, align 8
  %i.dm = load ptr, ptr %i.z, align 8
  %i.dn = call i64 %i.dl(ptr noundef %i.dm, ptr noundef nonnull %i.m, i64 noundef 4) #61, !inline_history !839 ; 2 uses
  %i.do = add i64 %i.dn, %i.dh                    ; 3 uses
  store i64 %i.do, ptr %i.d, align 8
  %.not471 = icmp eq i64 %i.dn, 4
  br i1 %.not471, label %bb.r, label %.thread827

bb.r:                                             ; preds = %bb.q
  %i.dp = load i8, ptr %i.m, align 1
  %i.dq = icmp eq i8 %i.dp, 65
  br i1 %i.dq, label %bb.s, label %.thread834

bb.s:                                             ; preds = %bb.r
  %i.dr = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = icmp eq i8 %i.ds, 73
  %i.du = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.dv = load i8, ptr %i.du, align 1
  %i.dw = icmp eq i8 %i.dv, 70
  %or.cond1052 = select i1 %i.dt, i1 %i.dw, i1 false ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.dy = load i8, ptr %i.dx, align 1             ; 2 uses
  %.not1215 = icmp eq i8 %i.dy, 70
  %or.cond1258 = select i1 %or.cond1052, i1 %.not1215, i1 false
  br i1 %or.cond1258, label %.thread830, label %.thread823

.thread830:                                       ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #61
  br label %.thread821

.thread823:                                       ; preds = %bb.s
  br i1 %or.cond1052, label %bb.t, label %.thread834

.thread827:                                       ; preds = %bb.q, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #61
  br label %drwav_free.exit779

.thread834:                                       ; preds = %.thread823, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #61
  br label %drwav_free.exit779

bb.t:                                             ; preds = %.thread823
  %.not1216.not = icmp eq i8 %i.dy, 67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #61
  br i1 %.not1216.not, label %.thread821, label %drwav_free.exit779
end_hunk_0
begin_hunk_1_@drwav_init__internal:bb.a
  %i.ho = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.o, i64 13
  %i.hq = getelementptr inbounds nuw i8, ptr %i.o, i64 14 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.o, i64 15
  %i.hs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %4, i64 18 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.hv = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.hx = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.hy = getelementptr inbounds nuw i8, ptr %i.q, i64 2 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  br label %bb.ae

bb.ae:                                            ; preds = %.backedge, %bb.ad
  %i.ia = phi i64 [ %i.fp, %bb.ad ], [ %i.xc, %.backedge ] ; 2 uses
  %i.ib = phi i32 [ %i.fq, %bb.ad ], [ %.pre1479, %.backedge ] ; 2 uses
  %.2413 = phi i64 [ %.1412, %bb.ad ], [ %.6417.jt6, %.backedge ] ; 14 uses
  %.0408 = phi i8 [ 0, %bb.ad ], [ %.1409.jt6, %.backedge ] ; 17 uses
  %.0406 = phi i8 [ 0, %bb.ad ], [ %.1407.jt6, %.backedge ] ; 13 uses
  %.0400 = phi i64 [ 0, %bb.ad ], [ %.2402.jt6, %.backedge ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #61
  %i.ic = load ptr, ptr %0, align 8               ; 4 uses
  %i.id = load ptr, ptr %i.z, align 8             ; 4 uses
  switch i32 %i.ib, label %.loopexit1323 [
    i32 4, label %bb.af
    i32 3, label %bb.af
    i32 1, label %bb.af
    i32 0, label %bb.af
    i32 2, label %bb.al
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae, %bb.ae, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  %i.ie = call i64 %i.ic(ptr noundef %i.id, ptr noundef nonnull %7, i64 noundef 4) #61, !inline_history !841
  %.not35.i666 = icmp eq i64 %i.ie, 4
  br i1 %.not35.i666, label %bb.ag, label %.thread.i667

bb.ag:                                            ; preds = %bb.af
  %i.if = call i64 %i.ic(ptr noundef %i.id, ptr noundef nonnull %i.a, i64 noundef 4) #61, !inline_history !841
  %.not36.i669 = icmp eq i64 %i.if, 4
  br i1 %.not36.i669, label %bb.ah, label %.thread.i667

bb.ah:                                            ; preds = %bb.ag
  switch i32 %i.ib, label %bb.aj [
    i32 4, label %bb.ai
    i32 1, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah, %bb.ah
  %i.ig = load i32, ptr %i.a, align 4
  %i.ih = call i32 @llvm.bswap.i32(i32 %i.ig)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.ii = load i32, ptr %i.a, align 4
  br label %bb.ak

.thread.i667:                                     ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  br label %.loopexit1323

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.0.i.i670 = phi i32 [ %i.ih, %bb.ai ], [ %i.ii, %bb.aj ] ; 2 uses
  %i.ij = zext i32 %.0.i.i670 to i64              ; 2 uses
  store i64 %i.ij, ptr %i.fz, align 8
  %i.ik = and i32 %.0.i.i670, 1
  store i32 %i.ik, ptr %i.ga, align 8
  %i.il = add i64 %i.ia, 8                        ; 2 uses
  store i64 %i.il, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  br label %drwav__read_chunk_header.exit671

bb.al:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  %i.im = call i64 %i.ic(ptr noundef %i.id, ptr noundef nonnull %7, i64 noundef 16) #61, !inline_history !841
  %.not.i661 = icmp eq i64 %i.im, 16
  br i1 %.not.i661, label %bb.am, label %.thread40.i662

bb.am:                                            ; preds = %bb.al
  %i.in = call i64 %i.ic(ptr noundef %i.id, ptr noundef nonnull %i.b, i64 noundef 8) #61, !inline_history !841
  %.not34.i665 = icmp eq i64 %i.in, 8
  br i1 %.not34.i665, label %bb.an, label %.thread40.i662

.thread40.i662:                                   ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  br label %.loopexit1323

bb.an:                                            ; preds = %bb.am
  %i.io = load i64, ptr %i.b, align 8             ; 2 uses
  %i.ip = add i64 %i.io, -24                      ; 2 uses
  store i64 %i.ip, ptr %i.fz, align 8
  %i.iq = trunc i64 %i.io to i32
  %i.ir = and i32 %i.iq, 7
  store i32 %i.ir, ptr %i.ga, align 8
  %i.is = add i64 %i.ia, 24                       ; 2 uses
  store i64 %i.is, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  br label %drwav__read_chunk_header.exit671

drwav__read_chunk_header.exit671:                 ; preds = %bb.an, %bb.ak
  %i.it = phi i64 [ %i.ip, %bb.an ], [ %i.ij, %bb.ak ] ; 9 uses
  %i.iu = phi i64 [ %i.is, %bb.an ], [ %i.il, %bb.ak ] ; 14 uses
  br i1 %or.cond, label %bb.ao, label %.critedge542

bb.ao:                                            ; preds = %drwav__read_chunk_header.exit671
  %i.iv = load ptr, ptr %0, align 8
  %i.iw = load ptr, ptr %i.gd, align 8
  %i.ix = load ptr, ptr %i.z, align 8
  %i.iy = load i32, ptr %i.dz, align 8
  %i.iz = call i64 %1(ptr noundef %2, ptr noundef %i.iv, ptr noundef %i.iw, ptr noundef %i.ix, ptr noundef nonnull %7, i32 noundef %i.iy, ptr noundef nonnull %4) #61
  %.not490 = icmp eq i64 %i.iz, 0
  br i1 %.not490, label %.critedge542, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ja = load ptr, ptr %i.gd, align 8            ; 3 uses
  %i.jb = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.jc = icmp ult i64 %i.iu, 2147483648
  br i1 %i.jc, label %drwav__seek_from_start.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jd = call i32 %i.ja(ptr noundef %i.jb, i32 noundef 2147483647, i32 noundef 0) #61, !inline_history !842
  %.not.i672 = icmp eq i32 %i.jd, 0
  br i1 %.not.i672, label %.thread988, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.aq
  %.014.i1817 = add i64 %i.iu, -2147483647        ; 3 uses
  %i.je = icmp ult i64 %.014.i1817, 2147483648
  br i1 %i.je, label %drwav__seek_from_start.exit, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  %.014.i = add i64 %.014.i1818, -2147483647      ; 3 uses
  %i.jf = icmp ult i64 %.014.i, 2147483648
  br i1 %i.jf, label %drwav__seek_from_start.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.014.i1818 = phi i64 [ %.014.i, %.preheader.i ], [ %.014.i1817, %.preheader.i.preheader ]
  %i.jg = call i32 %i.ja(ptr noundef %i.jb, i32 noundef 2147483647, i32 noundef 1) #61, !inline_history !842
  %.not16.i = icmp eq i32 %i.jg, 0
  br i1 %.not16.i, label %.thread988, label %.preheader.i

drwav__seek_from_start.exit:                      ; preds = %.preheader.i, %.preheader.i.preheader, %bb.ap
  %.014.lcssa.sink.i = phi i64 [ %i.iu, %bb.ap ], [ %.014.i1817, %.preheader.i.preheader ], [ %.014.i, %.preheader.i ]
  %.sink21.i = phi i32 [ 0, %bb.ap ], [ 1, %.preheader.i.preheader ], [ 1, %.preheader.i ]
  %i.jh = trunc nuw nsw i64 %.014.lcssa.sink.i to i32
  %i.ji = call i32 %i.ja(ptr noundef %i.jb, i32 noundef %i.jh, i32 noundef %.sink21.i) #61, !inline_history !842
  %i.jj = icmp eq i32 %i.ji, 0
  br i1 %i.jj, label %.thread988, label %.critedge542

.critedge542:                                     ; preds = %bb.ao, %drwav__seek_from_start.exit, %drwav__read_chunk_header.exit671
  %i.jk = load i32, ptr %i.dz, align 8            ; 5 uses
  switch i32 %i.jk, label %drwav_fourcc_equal.exit713.thread [
    i32 0, label %bb.ar
    i32 1, label %bb.ar
    i32 3, label %bb.ar
    i32 2, label %.critedge542._crit_edge1484
    i32 4, label %.critedge542._crit_edge
  ]

.critedge542._crit_edge1484:                      ; preds = %.critedge542
  %.pre1485 = load i8, ptr %7, align 8
  %.pre1486.pre = load i8, ptr %i.ge, align 1
  %.pre1487.pre = load i8, ptr %i.gf, align 2
  %.pre1488.pre = load i8, ptr %i.gg, align 1
  br label %bb.as

.critedge542._crit_edge:                          ; preds = %.critedge542
  %.pre1480 = load i8, ptr %7, align 8            ; 2 uses
  %.pre1481 = load i8, ptr %i.ge, align 1         ; 2 uses
  %.pre1482 = load i8, ptr %i.gf, align 2         ; 2 uses
  %.pre1483 = load i8, ptr %i.gg, align 1         ; 2 uses
  %i.jl = icmp eq i8 %.pre1480, 67
  %i.jm = icmp eq i8 %.pre1481, 79
  %or.cond1146 = select i1 %i.jl, i1 %i.jm, i1 false
  %i.jn = icmp eq i8 %.pre1482, 77
  %or.cond1150 = select i1 %or.cond1146, i1 %i.jn, i1 false
  %.not1221 = icmp eq i8 %.pre1483, 77
  %or.cond1279 = select i1 %or.cond1150, i1 %.not1221, i1 false
  br i1 %or.cond1279, label %bb.cc, label %.thread964

bb.ar:                                            ; preds = %.critedge542, %.critedge542, %.critedge542
  %i.jo = load i8, ptr %7, align 8                ; 3 uses
  %i.jp = icmp eq i8 %i.jo, 102                   ; 2 uses
  %i.jq = load i8, ptr %i.ge, align 1             ; 3 uses
  %i.jr = icmp eq i8 %i.jq, 109
  %or.cond1068 = select i1 %i.jp, i1 %i.jr, i1 false
  %i.js = load i8, ptr %i.gf, align 2             ; 3 uses
  %i.jt = icmp eq i8 %i.js, 116                   ; 2 uses
  %or.cond1072 = select i1 %or.cond1068, i1 %i.jt, i1 false
  %i.ju = load i8, ptr %i.gg, align 1             ; 4 uses
  %.not1219 = icmp eq i8 %i.ju, 32
  %or.cond1264 = select i1 %or.cond1072, i1 %.not1219, i1 false
  br i1 %or.cond1264, label %bb.au, label %drwav_fourcc_equal.exit674.thread

drwav_fourcc_equal.exit674.thread:                ; preds = %bb.ar
  %i.jv = icmp eq i32 %i.jk, 2
  br i1 %i.jv, label %bb.as, label %bb.bp

bb.as:                                            ; preds = %drwav_fourcc_equal.exit674.thread, %.critedge542._crit_edge1484
  %.pre1488 = phi i8 [ %.pre1488.pre, %.critedge542._crit_edge1484 ], [ %i.ju, %drwav_fourcc_equal.exit674.thread ] ; 2 uses
  %.pre1487 = phi i8 [ %.pre1487.pre, %.critedge542._crit_edge1484 ], [ %i.js, %drwav_fourcc_equal.exit674.thread ] ; 2 uses
  %.pre1486 = phi i8 [ %.pre1486.pre, %.critedge542._crit_edge1484 ], [ %i.jq, %drwav_fourcc_equal.exit674.thread ] ; 2 uses
  %.pr1009 = phi i8 [ %.pre1485, %.critedge542._crit_edge1484 ], [ %i.jo, %drwav_fourcc_equal.exit674.thread ] ; 2 uses
  %.not.i675 = icmp eq i8 %.pr1009, 102
  %i.jw = load <4 x i8>, ptr %i.gz, align 4
  %i.jx = load <4 x i8>, ptr %i.ha, align 8
  %i.jy = load <4 x i8>, ptr %i.hb, align 1
  %.fr1832 = freeze <4 x i8> %i.jy                ; 2 uses
  %.pre1500 = load i8, ptr %i.hc, align 1         ; 2 uses
  br i1 %.not.i675, label %bb.at, label %drwav_guid_equal.exit.thread

bb.at:                                            ; preds = %bb.as
  %i.jz = load <4 x i8>, ptr %i.ha, align 8
  %i.ka = load <4 x i8>, ptr %i.gz, align 4
  %.not.1.i = icmp eq i8 %.pre1486, 109
  %.not.2.i = icmp eq i8 %.pre1487, 116
  %i.kb = shufflevector <4 x i8> %i.ka, <4 x i8> %i.jz, <8 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6>
  %i.kc = insertelement <8 x i8> %i.kb, i8 %.pre1488, i64 0
  %.fr1831 = freeze <8 x i8> %i.kc
  %i.kd = icmp eq <8 x i8> %.fr1831, <i8 32, i8 -13, i8 -84, i8 -45, i8 17, i8 -116, i8 -47, i8 0> ; 2 uses
  %i.ke = icmp eq <4 x i8> %.fr1832, <i8 -64, i8 79, i8 -114, i8 -37>
  %.not.15.i.not = icmp eq i8 %.pre1500, -118
  %i.kf = shufflevector <8 x i1> %i.kd, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op1822 = and <4 x i1> %i.kf, %i.ke
  %i.kg = shufflevector <4 x i1> %rdx.op1822, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kh = shufflevector <8 x i1> %i.kg, <8 x i1> %i.kd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.ki = bitcast <8 x i1> %i.kh to i8
  %i.kj = icmp eq i8 %i.ki, -1
  %op.rdx1823 = select i1 %i.kj, i1 %.not.1.i, i1 false
  %9 = select i1 %op.rdx1823, i1 %.not.2.i, i1 false
  %op.rdx1825 = select i1 %9, i1 %.not.15.i.not, i1 false
  br i1 %op.rdx1825, label %bb.au, label %drwav_guid_equal.exit.thread

bb.au:                                            ; preds = %bb.at, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #61
  %i.kk = load ptr, ptr %0, align 8
  %i.kl = load ptr, ptr %i.z, align 8
  %i.km = call i64 %i.kk(ptr noundef %i.kl, ptr noundef nonnull %i.o, i64 noundef 16) #61
  %.not519 = icmp eq i64 %i.km, 16
  br i1 %.not519, label %bb.av, label %drwav__seek_forward.exit684.thread.jt1

bb.av:                                            ; preds = %bb.au
  %i.kn = add i64 %i.iu, 16                       ; 2 uses
  store i64 %i.kn, ptr %i.d, align 8
  %i.ko = load i32, ptr %i.dz, align 8
  switch i32 %i.ko, label %bb.ax [
    i32 4, label %bb.aw
    i32 1, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.av, %bb.av
  %i.kp = load i8, ptr %i.hd, align 1
  %i.kq = zext i8 %i.kp to i16
  %i.kr = load i8, ptr %i.o, align 16
  %i.ks = zext i8 %i.kr to i16
  %i.kt = shl nuw i16 %i.ks, 8
  %i.ku = or disjoint i16 %i.kt, %i.kq
  store i16 %i.ku, ptr %4, align 4
  %i.kv = load i8, ptr %i.hf, align 1
  %i.kw = zext i8 %i.kv to i16
  %i.kx = load i8, ptr %i.he, align 2
  %i.ky = zext i8 %i.kx to i16
  %i.kz = shl nuw i16 %i.ky, 8
  %i.la = or disjoint i16 %i.kz, %i.kw
  store i16 %i.la, ptr %i.gt, align 2
  %i.lb = load i8, ptr %i.hh, align 1
  %i.lc = zext i8 %i.lb to i32
  %i.ld = load i8, ptr %i.hi, align 2
  %i.le = zext i8 %i.ld to i32
  %i.lf = shl nuw nsw i32 %i.le, 8
  %i.lg = or disjoint i32 %i.lf, %i.lc
  %i.lh = load i8, ptr %i.hj, align 1
  %i.li = zext i8 %i.lh to i32
  %i.lj = shl nuw nsw i32 %i.li, 16
  %i.lk = or disjoint i32 %i.lg, %i.lj
  %i.ll = load i8, ptr %i.hg, align 4
  %i.lm = zext i8 %i.ll to i32
  %i.ln = shl nuw i32 %i.lm, 24
  %i.lo = or disjoint i32 %i.lk, %i.ln
  store i32 %i.lo, ptr %i.gu, align 4
  %i.lp = load i8, ptr %i.hl, align 1
  %i.lq = zext i8 %i.lp to i32
  %i.lr = load i8, ptr %i.hm, align 2
  %i.ls = zext i8 %i.lr to i32
  %i.lt = shl nuw nsw i32 %i.ls, 8
  %i.lu = or disjoint i32 %i.lt, %i.lq
  %i.lv = load i8, ptr %i.hn, align 1
  %i.lw = zext i8 %i.lv to i32
  %i.lx = shl nuw nsw i32 %i.lw, 16
  %i.ly = or disjoint i32 %i.lu, %i.lx
  %i.lz = load i8, ptr %i.hk, align 8
  %i.ma = zext i8 %i.lz to i32
  %i.mb = shl nuw i32 %i.ma, 24
  %i.mc = or disjoint i32 %i.ly, %i.mb
  store i32 %i.mc, ptr %i.gx, align 4
  %i.md = load i8, ptr %i.hp, align 1
  %i.me = zext i8 %i.md to i16
  %i.mf = load i8, ptr %i.ho, align 4
  %i.mg = zext i8 %i.mf to i16
  %i.mh = shl nuw i16 %i.mg, 8
  %i.mi = or disjoint i16 %i.mh, %i.me
  store i16 %i.mi, ptr %i.gw, align 4
  %i.mj = load i8, ptr %i.hr, align 1
  %i.mk = zext i8 %i.mj to i16
  %i.ml = load i8, ptr %i.hq, align 2
  %i.mm = zext i8 %i.ml to i16
  %i.mn = shl nuw i16 %i.mm, 8
  %i.mo = or disjoint i16 %i.mn, %i.mk
  br label %drwav_bytes_to_u16_ex.exit625

bb.ax:                                            ; preds = %bb.av
  %i.mp = load <2 x i16>, ptr %i.o, align 16
  store <2 x i16> %i.mp, ptr %4, align 4
  %i.mq = load <2 x i32>, ptr %i.hg, align 4
  store <2 x i32> %i.mq, ptr %i.gu, align 4
  %i.mr = load i16, ptr %i.ho, align 4
  store i16 %i.mr, ptr %i.gw, align 4
  %i.ms = load i16, ptr %i.hq, align 2
  br label %drwav_bytes_to_u16_ex.exit625

drwav_bytes_to_u16_ex.exit625:                    ; preds = %bb.aw, %bb.ax
  %.0.i624 = phi i16 [ %i.mo, %bb.aw ], [ %i.ms, %bb.ax ]
  store i16 %.0.i624, ptr %i.gv, align 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.hs, i8 0, i64 24, i1 false)
  %i.mt = load i64, ptr %i.fz, align 8
  %i.mu = icmp ugt i64 %i.mt, 16
  br i1 %i.mu, label %bb.ay, label %bb.bm

bb.ay:                                            ; preds = %drwav_bytes_to_u16_ex.exit625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #61
  %i.mv = load ptr, ptr %0, align 8
  %i.mw = load ptr, ptr %i.z, align 8
  %i.mx = call i64 %i.mv(ptr noundef %i.mw, ptr noundef nonnull %i.p, i64 noundef 2) #61
  %.not520 = icmp eq i64 %i.mx, 2
  br i1 %.not520, label %bb.az, label %.critedge546

bb.az:                                            ; preds = %bb.ay
  %i.my = add i64 %i.iu, 18                       ; 3 uses
  store i64 %i.my, ptr %i.d, align 8
  %i.mz = load i32, ptr %i.dz, align 8
  switch i32 %i.mz, label %bb.bb [
    i32 4, label %bb.ba
    i32 1, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az
  %i.na = load i8, ptr %i.hw, align 1
  %i.nb = zext i8 %i.na to i16
  %i.nc = load i8, ptr %i.p, align 2
  %i.nd = zext i8 %i.nc to i16
  %i.ne = shl nuw i16 %i.nd, 8
  %i.nf = or disjoint i16 %i.ne, %i.nb
  br label %drwav_bytes_to_u16_ex.exit619

bb.bb:                                            ; preds = %bb.az
  %i.ng = load i16, ptr %i.p, align 2
  br label %drwav_bytes_to_u16_ex.exit619

drwav_bytes_to_u16_ex.exit619:                    ; preds = %bb.ba, %bb.bb
  %.0.i618 = phi i16 [ %i.nf, %bb.ba ], [ %i.ng, %bb.bb ] ; 5 uses
  store i16 %.0.i618, ptr %i.hs, align 4
  %i.nh = zext i16 %.0.i618 to i32
  %.not521 = icmp eq i16 %.0.i618, 0
  br i1 %.not521, label %bb.bk, label %bb.bc

bb.bc:                                            ; preds = %drwav_bytes_to_u16_ex.exit619
  %i.ni = load i16, ptr %4, align 4
  %i.nj = icmp eq i16 %i.ni, -2                   ; 2 uses
  %i.nk = icmp ne i16 %.0.i618, 22
  %or.cond53 = and i1 %i.nk, %i.nj
  br i1 %or.cond53, label %.critedge546, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.nj, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #61
  %i.nl = load ptr, ptr %0, align 8
  %i.nm = load ptr, ptr %i.z, align 8
  %i.nn = zext i16 %.0.i618 to i64
  %i.no = call i64 %i.nl(ptr noundef %i.nm, ptr noundef nonnull %i.q, i64 noundef %i.nn) #61
  %i.np = load i16, ptr %i.hs, align 4
  %i.nq = zext i16 %i.np to i64                   ; 2 uses
  %.not522 = icmp eq i64 %i.no, %i.nq
  br i1 %.not522, label %bb.bf, label %.critedge544

bb.bf:                                            ; preds = %bb.be
  %i.nr = load i32, ptr %i.dz, align 8
  switch i32 %i.nr, label %bb.bh [
    i32 4, label %bb.bg
    i32 1, label %bb.bg
  ]

bb.bg:                                            ; preds = %bb.bf, %bb.bf
  %i.ns = load i8, ptr %i.hx, align 1
  %i.nt = zext i8 %i.ns to i16
  %i.nu = load i8, ptr %i.q, align 16
  %i.nv = zext i8 %i.nu to i16
  %i.nw = shl nuw i16 %i.nv, 8
  %i.nx = or disjoint i16 %i.nw, %i.nt
  store i16 %i.nx, ptr %i.ht, align 2
  %i.ny = load i32, ptr %i.hy, align 2
  %i.nz = call i32 @llvm.bswap.i32(i32 %i.ny)
  br label %drwav_bytes_to_u32_ex.exit572

bb.bh:                                            ; preds = %bb.bf
  %i.oa = load i16, ptr %i.q, align 16
  store i16 %i.oa, ptr %i.ht, align 2
  %i.ob = load i32, ptr %i.hy, align 2
  br label %drwav_bytes_to_u32_ex.exit572

drwav_bytes_to_u32_ex.exit572:                    ; preds = %bb.bg, %bb.bh
  %.0.i571 = phi i32 [ %i.nz, %bb.bg ], [ %i.ob, %bb.bh ]
  store i32 %.0.i571, ptr %i.hu, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hv, ptr noundef nonnull align 2 dereferenceable(16) %i.hz, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #61
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bd
  %i.oc = load ptr, ptr %i.gd, align 8
  %i.od = load ptr, ptr %i.z, align 8
  %i.oe = call i32 %i.oc(ptr noundef %i.od, i32 noundef %i.nh, i32 noundef 1) #61
  %i.of = icmp eq i32 %i.oe, 0
  br i1 %i.of, label %.critedge546, label %._crit_edge1501

._crit_edge1501:                                  ; preds = %bb.bi
  %.pre1502 = load i16, ptr %i.hs, align 4
  %.pre1507 = zext i16 %.pre1502 to i64
  br label %bb.bj

bb.bj:                                            ; preds = %._crit_edge1501, %drwav_bytes_to_u32_ex.exit572
  %.pre-phi = phi i64 [ %.pre1507, %._crit_edge1501 ], [ %i.nq, %drwav_bytes_to_u32_ex.exit572 ] ; 2 uses
  %i.og = add i64 %i.my, %.pre-phi
  %i.oh = add nuw nsw i64 %.pre-phi, 18
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %drwav_bytes_to_u16_ex.exit619
  %i.oi = phi i64 [ %i.og, %bb.bj ], [ %i.my, %drwav_bytes_to_u16_ex.exit619 ]
  %.0393 = phi i64 [ %i.oh, %bb.bj ], [ 18, %drwav_bytes_to_u16_ex.exit619 ] ; 2 uses
  %i.oj = load ptr, ptr %i.gd, align 8
  %i.ok = load ptr, ptr %i.z, align 8
  %i.ol = load i64, ptr %i.fz, align 8
  %i.om = sub i64 %i.ol, %.0393
  %i.on = trunc i64 %i.om to i32
  %i.oo = call i32 %i.oj(ptr noundef %i.ok, i32 noundef %i.on, i32 noundef 1) #61
  %i.op = icmp eq i32 %i.oo, 0
  br i1 %i.op, label %.critedge546, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.oq = load i64, ptr %i.fz, align 8
  %i.or = sub i64 %i.oq, %.0393
  %i.os = add i64 %i.or, %i.oi                    ; 2 uses
  store i64 %i.os, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #61
  br label %bb.bm

.critedge544:                                     ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #61
  br label %.critedge546

bb.bm:                                            ; preds = %bb.bl, %drwav_bytes_to_u16_ex.exit625
  %i.ot = phi i64 [ %i.os, %bb.bl ], [ %i.kn, %drwav_bytes_to_u16_ex.exit625 ] ; 2 uses
  %i.ou = load i32, ptr %i.ga, align 8            ; 4 uses
  %.not523 = icmp eq i32 %i.ou, 0
  br i1 %.not523, label %drwav__seek_forward.exit684.thread.jt6, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ov = load ptr, ptr %i.gd, align 8            ; 2 uses
  %i.ow = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ox = icmp slt i32 %i.ou, 0
  br i1 %i.ox, label %.lr.ph1405.preheader, label %drwav__seek_forward.exit684

.lr.ph1405.preheader:                             ; preds = %bb.bn
  %i.oy = zext i32 %i.ou to i64
  br label %.lr.ph1405

.lr.ph1405:                                       ; preds = %.lr.ph1405.preheader, %.lr.ph.i678
  %.013.i6791404 = phi i64 [ %i.pa, %.lr.ph.i678 ], [ %i.oy, %.lr.ph1405.preheader ]
  %i.oz = call i32 %i.ov(ptr noundef %i.ow, i32 noundef 2147483647, i32 noundef 1) #61, !inline_history !840
  %.not11.i683 = icmp eq i32 %i.oz, 0
  br i1 %.not11.i683, label %drwav__seek_forward.exit684.thread.jt5, label %.lr.ph.i678

.lr.ph.i678:                                      ; preds = %.lr.ph1405
  %i.pa = add i64 %.013.i6791404, -2147483647     ; 3 uses
  %i.pb = icmp ugt i64 %i.pa, 2147483647
  br i1 %i.pb, label %.lr.ph1405, label %drwav__seek_forward.exit684.loopexit

drwav__seek_forward.exit684.loopexit:             ; preds = %.lr.ph.i678
  %i.pc = trunc nuw nsw i64 %i.pa to i32
  br label %drwav__seek_forward.exit684

drwav__seek_forward.exit684:                      ; preds = %drwav__seek_forward.exit684.loopexit, %bb.bn
  %.013.i679.lcssa = phi i32 [ %i.ou, %bb.bn ], [ %i.pc, %drwav__seek_forward.exit684.loopexit ]
  %i.pd = call i32 %i.ov(ptr noundef %i.ow, i32 noundef %.013.i679.lcssa, i32 noundef 1) #61, !inline_history !840
  %.not10.i680.not = icmp eq i32 %i.pd, 0
  br i1 %.not10.i680.not, label %drwav__seek_forward.exit684.thread.jt5, label %bb.bo

bb.bo:                                            ; preds = %drwav__seek_forward.exit684
  %i.pe = load i32, ptr %i.ga, align 8
  %i.pf = zext i32 %i.pe to i64
  %i.pg = add i64 %i.ot, %i.pf                    ; 2 uses
  store i64 %i.pg, ptr %i.d, align 8
  br label %drwav__seek_forward.exit684.thread.jt6

.critedge546:                                     ; preds = %bb.bk, %bb.bc, %bb.bi, %bb.ay, %.critedge544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #61
  br label %drwav__seek_forward.exit684.thread.jt1

drwav__seek_forward.exit684.thread.jt6:           ; preds = %bb.bm, %bb.bo
  %i.ph = phi i64 [ %i.pg, %bb.bo ], [ %i.ot, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #61
  br label %.backedge

drwav__seek_forward.exit684.thread.jt5:           ; preds = %drwav__seek_forward.exit684, %.lr.ph1405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #61
  br label %.loopexit1323

drwav__seek_forward.exit684.thread.jt1:           ; preds = %bb.au, %.critedge546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #61
  br label %bb.dj

bb.bp:                                            ; preds = %drwav_fourcc_equal.exit674.thread
  %i.pi = icmp eq i8 %i.jo, 100
  %i.pj = icmp eq i8 %i.jq, 97                    ; 2 uses
  %or.cond1102 = select i1 %i.pi, i1 %i.pj, i1 false
  %or.cond1106 = select i1 %or.cond1102, i1 %i.jt, i1 false
  %.not1220 = icmp eq i8 %i.ju, 97
  %or.cond1270 = select i1 %or.cond1106, i1 %.not1220, i1 false
  br i1 %or.cond1270, label %bb.bq, label %drwav_fourcc_equal.exit685.thread

drwav_guid_equal.exit.thread:                     ; preds = %bb.at, %bb.as
  %.not.i686 = icmp eq i8 %.pr1009, 100
  %.not.1.i688 = icmp eq i8 %.pre1486, 97
  %.not.2.i689 = icmp eq i8 %.pre1487, 116
  %i.pk = shufflevector <4 x i8> %i.jw, <4 x i8> %i.jx, <8 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6>
  %i.pl = insertelement <8 x i8> %i.pk, i8 %.pre1488, i64 0
  %.fr1833 = freeze <8 x i8> %i.pl
  %i.pm = icmp eq <8 x i8> %.fr1833, <i8 97, i8 -13, i8 -84, i8 -45, i8 17, i8 -116, i8 -47, i8 0> ; 2 uses
  %i.pn = icmp eq <4 x i8> %.fr1832, <i8 -64, i8 79, i8 -114, i8 -37>
  %.not.15.i702.not = icmp eq i8 %.pre1500, -118
  %i.po = shufflevector <8 x i1> %i.pm, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = and <4 x i1> %i.po, %i.pn
  %i.pp = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pq = shufflevector <8 x i1> %i.pp, <8 x i1> %i.pm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.pr = bitcast <8 x i1> %i.pq to i8
  %i.ps = icmp eq i8 %i.pr, -1
  %op.rdx1819 = and i1 %i.ps, %.not.i686
  %10 = select i1 %op.rdx1819, i1 %.not.1.i688, i1 false
  %op.rdx1820 = select i1 %10, i1 %.not.2.i689, i1 false
  %op.rdx1821 = select i1 %op.rdx1820, i1 %.not.15.i702.not, i1 false
  br i1 %op.rdx1821, label %bb.bq, label %drwav_guid_equal.exit704.thread

bb.bq:                                            ; preds = %drwav_guid_equal.exit.thread, %bb.bp
  store i64 %i.iu, ptr %i.gh, align 8
  %.not518 = icmp eq i32 %i.jk, 3
  %spec.select = select i1 %.not518, i64 %.2413, i64 %i.it ; 4 uses
  br i1 %or.cond13, label %bb.br, label %.loopexit1323

bb.br:                                            ; preds = %bb.bq
  %i.pt = load i32, ptr %i.ga, align 8
  %i.pu = zext i32 %i.pt to i64
  %i.pv = add i64 %i.it, %i.pu                    ; 5 uses
  %i.pw = load ptr, ptr %i.gd, align 8            ; 2 uses
  %i.px = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not12.i705 = icmp eq i64 %i.pv, 0
  br i1 %.not12.i705, label %drwav__seek_forward.exit712.thread876, label %.lr.ph.i706.preheader

.lr.ph.i706.preheader:                            ; preds = %bb.br
  %i.py = icmp ugt i64 %i.pv, 2147483647
  br i1 %i.py, label %.lr.ph1401, label %drwav__seek_forward.exit712

.lr.ph1401:                                       ; preds = %.lr.ph.i706.preheader, %.lr.ph.i706
  %.013.i7071400 = phi i64 [ %i.qa, %.lr.ph.i706 ], [ %i.pv, %.lr.ph.i706.preheader ]
  %i.pz = call i32 %i.pw(ptr noundef %i.px, i32 noundef 2147483647, i32 noundef 1) #61, !inline_history !840
  %.not11.i711 = icmp eq i32 %i.pz, 0
  br i1 %.not11.i711, label %.loopexit1323, label %.lr.ph.i706

.lr.ph.i706:                                      ; preds = %.lr.ph1401
  %i.qa = add i64 %.013.i7071400, -2147483647     ; 3 uses
  %i.qb = icmp ugt i64 %i.qa, 2147483647
  br i1 %i.qb, label %.lr.ph1401, label %drwav__seek_forward.exit712

drwav__seek_forward.exit712:                      ; preds = %.lr.ph.i706, %.lr.ph.i706.preheader
  %.013.i707.lcssa = phi i64 [ %i.pv, %.lr.ph.i706.preheader ], [ %i.qa, %.lr.ph.i706 ]
  %i.qc = trunc nuw nsw i64 %.013.i707.lcssa to i32
  %i.qd = call i32 %i.pw(ptr noundef %i.px, i32 noundef %i.qc, i32 noundef 1) #61, !inline_history !840
  %.not10.i708.not = icmp eq i32 %i.qd, 0
  br i1 %.not10.i708.not, label %.loopexit1323, label %drwav__seek_forward.exit712.thread876

drwav__seek_forward.exit712.thread876:            ; preds = %bb.br, %drwav__seek_forward.exit712
  %i.qe = add i64 %i.pv, %i.iu                    ; 2 uses
  store i64 %i.qe, ptr %i.d, align 8
  br label %.backedge

drwav_fourcc_equal.exit685.thread:                ; preds = %bb.bp
  switch i32 %i.jk, label %drwav_fourcc_equal.exit713.thread [
    i32 0, label %bb.bs
    i32 1, label %bb.bs
    i32 3, label %bb.bs
  ]

bb.bs:                                            ; preds = %drwav_fourcc_equal.exit685.thread, %drwav_fourcc_equal.exit685.thread, %drwav_fourcc_equal.exit685.thread
  %or.cond1138 = select i1 %i.jp, i1 %i.pj, i1 false
  %i.qf = icmp eq i8 %i.js, 99
  %or.cond1142 = select i1 %or.cond1138, i1 %i.qf, i1 false
  %.not1234 = icmp eq i8 %i.ju, 116
  %or.cond1276 = select i1 %or.cond1142, i1 %.not1234, i1 false
  br i1 %or.cond1276, label %bb.bt, label %drwav_fourcc_equal.exit713.thread

drwav_guid_equal.exit704.thread:                  ; preds = %drwav_guid_equal.exit.thread
  %i.qg = call i32 @drwav_guid_equal(ptr noundef nonnull %7, ptr noundef nonnull @drwavGUID_W64_FACT)
  %.not496 = icmp eq i32 %i.qg, 0
  br i1 %.not496, label %drwav_fourcc_equal.exit713.thread, label %.thread883

bb.bt:                                            ; preds = %bb.bs
  switch i32 %i.jk, label %bb.cb [
    i32 0, label %bb.bu
    i32 1, label %bb.bu
    i32 2, label %.thread883
  ]

bb.bu:                                            ; preds = %bb.bt, %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #61
  %i.qh = load ptr, ptr %0, align 8
  %i.qi = load ptr, ptr %i.z, align 8
  %i.qj = call i64 %i.qh(ptr noundef %i.qi, ptr noundef nonnull %i.r, i64 noundef 4) #61, !inline_history !839 ; 2 uses
  %i.qk = add i64 %i.iu, %i.qj                    ; 2 uses
  store i64 %i.qk, ptr %i.d, align 8
  %.not517 = icmp eq i64 %i.qj, 4
  br i1 %.not517, label %bb.bv, label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  %i.ql = add i64 %i.it, -4
  %i.qm = load i16, ptr %i.gy, align 4
  %i.qn = icmp eq i16 %i.qm, 2
  br i1 %i.qn, label %bb.bw, label %.thread884

bb.bw:                                            ; preds = %bb.bv
  %i.qo = load i32, ptr %i.dz, align 8
  switch i32 %i.qo, label %bb.by [
    i32 4, label %bb.bx
    i32 1, label %bb.bx
  ]

bb.bx:                                            ; preds = %bb.bw, %bb.bw
  %i.qp = load i32, ptr %i.r, align 4
  %i.qq = call i32 @llvm.bswap.i32(i32 %i.qp)
  br label %.thread884

bb.by:                                            ; preds = %bb.bw
  %i.qr = load i32, ptr %i.r, align 4
  br label %.thread884

.thread884:                                       ; preds = %bb.by, %bb.bx, %bb.bv
  %storemerge.shrunk = phi i32 [ 0, %bb.bv ], [ %i.qq, %bb.bx ], [ %i.qr, %bb.by ]
  %storemerge = zext i32 %storemerge.shrunk to i64
  store i64 %storemerge, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #61
  br label %bb.cb

bb.bz:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #61
  br label %.thread988

.thread883:                                       ; preds = %drwav_guid_equal.exit704.thread, %bb.bt
  %i.qs = load ptr, ptr %0, align 8
  %i.qt = load ptr, ptr %i.z, align 8
  %i.qu = call i64 %i.qs(ptr noundef %i.qt, ptr noundef nonnull %i.f, i64 noundef 8) #61, !inline_history !839 ; 2 uses
  %i.qv = add i64 %i.iu, %i.qu                    ; 2 uses
  store i64 %i.qv, ptr %i.d, align 8
  %.not516 = icmp eq i64 %i.qu, 8
  br i1 %.not516, label %bb.ca, label %.thread988

bb.ca:                                            ; preds = %.thread883
  %i.qw = add i64 %i.it, -8
  br label %bb.cb

bb.cb:                                            ; preds = %.thread884, %bb.bt, %bb.ca
  %i.qx = phi i64 [ %i.qk, %.thread884 ], [ %i.qv, %bb.ca ], [ %i.iu, %bb.bt ]
  %.1395 = phi i64 [ %i.ql, %.thread884 ], [ %i.qw, %bb.ca ], [ %i.it, %bb.bt ]
  %i.qy = load i32, ptr %i.ga, align 8
  %i.qz = zext i32 %i.qy to i64
  %i.ra = add i64 %.1395, %i.qz                   ; 5 uses
  %i.rb = load ptr, ptr %i.gd, align 8            ; 2 uses
  %i.rc = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not12.i714 = icmp eq i64 %i.ra, 0
  br i1 %.not12.i714, label %drwav__seek_forward.exit721.thread887, label %.lr.ph.i715.preheader

.lr.ph.i715.preheader:                            ; preds = %bb.cb
  %i.rd = icmp ugt i64 %i.ra, 2147483647
  br i1 %i.rd, label %.lr.ph1398, label %drwav__seek_forward.exit721

.lr.ph1398:                                       ; preds = %.lr.ph.i715.preheader, %.lr.ph.i715
  %.013.i7161397 = phi i64 [ %i.rf, %.lr.ph.i715 ], [ %i.ra, %.lr.ph.i715.preheader ]
  %i.re = call i32 %i.rb(ptr noundef %i.rc, i32 noundef 2147483647, i32 noundef 1) #61, !inline_history !840
  %.not11.i720 = icmp eq i32 %i.re, 0
  br i1 %.not11.i720, label %.loopexit1323, label %.lr.ph.i715

.lr.ph.i715:                                      ; preds = %.lr.ph1398
  %i.rf = add i64 %.013.i7161397, -2147483647     ; 3 uses
  %i.rg = icmp ugt i64 %i.rf, 2147483647
  br i1 %i.rg, label %.lr.ph1398, label %drwav__seek_forward.exit721

drwav__seek_forward.exit721:                      ; preds = %.lr.ph.i715, %.lr.ph.i715.preheader
  %.013.i716.lcssa = phi i64 [ %i.ra, %.lr.ph.i715.preheader ], [ %i.rf, %.lr.ph.i715 ]
  %i.rh = trunc nuw nsw i64 %.013.i716.lcssa to i32
  %i.ri = call i32 %i.rb(ptr noundef %i.rc, i32 noundef %i.rh, i32 noundef 1) #61, !inline_history !840
  %.not10.i717.not = icmp eq i32 %i.ri, 0
  br i1 %.not10.i717.not, label %.loopexit1323, label %drwav__seek_forward.exit721.thread887

drwav__seek_forward.exit721.thread887:            ; preds = %bb.cb, %drwav__seek_forward.exit721
  %i.rj = add i64 %i.qx, %i.ra                    ; 2 uses
  store i64 %i.rj, ptr %i.d, align 8
  br label %.backedge

bb.cc:                                            ; preds = %.critedge542._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #61
  %i.rk = load i64, ptr %i.fz, align 8            ; 2 uses
  br i1 %.2405, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.rl = icmp ult i64 %i.rk, 24
  br i1 %i.rl, label %drwav_fourcc_equal.exit734.thread.jt1, label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %.not502 = icmp eq i64 %i.rk, 18
  br i1 %.not502, label %bb.cf, label %drwav_fourcc_equal.exit734.thread.jt1

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.0392 = phi i64 [ 24, %bb.cd ], [ 18, %bb.ce ] ; 3 uses
  %i.rm = load ptr, ptr %0, align 8
  %i.rn = load ptr, ptr %i.z, align 8
  %i.ro = call i64 %i.rm(ptr noundef %i.rn, ptr noundef nonnull %i.s, i64 noundef range(i64 0, -602) %.0392) #61, !inline_history !839 ; 2 uses
  %i.rp = add i64 %i.iu, %i.ro                    ; 3 uses
  store i64 %i.rp, ptr %i.d, align 8
  %.not503 = icmp eq i64 %i.ro, %.0392
  br i1 %.not503, label %bb.cg, label %drwav_fourcc_equal.exit734.thread.jt1

bb.cg:                                            ; preds = %bb.cf
  %i.rq = load i32, ptr %i.dz, align 8
  switch i32 %i.rq, label %bb.ci [
    i32 4, label %bb.ch
    i32 1, label %bb.ch
  ]

bb.ch:                                            ; preds = %bb.cg, %bb.cg
  %i.rr = load i8, ptr %i.gi, align 1
  %i.rs = zext i8 %i.rr to i16
  %i.rt = load i8, ptr %i.s, align 16
end_hunk_1
begin_hunk_2_@vorbis_finish_frame:bb.a
._crit_edge77.split:                              ; preds = %._crit_edge75, %.preheader.lr.ph, %thread-pre-split
  %.not6798 = phi i1 [ %.not67, %thread-pre-split ], [ %.not6799, %.preheader.lr.ph ], [ %.not6799, %._crit_edge75 ]
  br i1 %.not6798, label %.critedge, label %bb.e

bb.e:                                             ; preds = %._crit_edge77.split.thread, %._crit_edge77.split
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %3)
  %i.dn = sub nsw i32 %spec.select, %2            ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1804 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = add i32 %i.dp, %i.dn
  store i32 %i.dq, ptr %i.do, align 4
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %get_window.exit, %._crit_edge77.split, %bb.e
  %.1 = phi i32 [ %i.dn, %bb.e ], [ 0, %._crit_edge77.split ], [ 0, %bb.c ], [ 0, %get_window.exit ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden ptr @stb_vorbis_open_pushdata(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #8 {
bb.a:
  %5 = alloca %struct.stb_vorbis, align 8         ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1904) %5, i8 0, i64 1904, i1 false)
  %.not.i = icmp eq ptr %4, null
  br i1 %.not.i, label %vorbis_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(16) %4, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 136 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, -8                         ; 2 uses
  store i32 %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 148
  store i32 %i.d, ptr %i.e, align 4
  br label %vorbis_init.exit

vorbis_init.exit:                                 ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 152 ; 2 uses
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 156 ; 2 uses
  store i32 0, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 184
  store ptr null, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 1808
  store i32 -1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 60
  store i32 0, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr null, ptr %i.l, align 8
  store ptr %0, ptr %i.h, align 8
  %i.m = sext i32 %1 to i64
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 80
  store ptr %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 92
  store i8 1, ptr %i.p, align 4
  %i.q = call fastcc i32 @start_decoder(ptr noundef %5)
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %vorbis_init.exit
  %i.r = load i32, ptr %i.f, align 8
  %.not14 = icmp eq i32 %i.r, 0
  %i.s = load i32, ptr %i.g, align 4
  %storemerge = select i1 %.not14, i32 %i.s, i32 1
  store i32 %storemerge, ptr %3, align 4
  call fastcc void @vorbis_deinit(ptr noundef %5)
  br label %bb.i

bb.d:                                             ; preds = %vorbis_init.exit
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8
  %i.v = add i32 %i.u, 1904
  store i32 %i.v, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8              ; 2 uses
  %i.aa = add nsw i32 %i.z, 1904                  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 148
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = icmp sgt i32 %i.aa, %i.ac
  br i1 %i.ad, label %vorbis_alloc.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = sext i32 %i.z to i64
  %i.af = getelementptr inbounds i8, ptr %i.x, i64 %i.ae
  store i32 %i.aa, ptr %i.y, align 8
  br label %vorbis_alloc.exit

bb.g:                                             ; preds = %bb.d
  %i.ag = call noalias dereferenceable_or_null(1904) ptr @malloc(i64 noundef 1904) #74
  br label %vorbis_alloc.exit

vorbis_alloc.exit:                                ; preds = %bb.f, %bb.g
  %.1.i.i = phi ptr [ %i.ag, %bb.g ], [ %i.af, %bb.f ] ; 4 uses
  %.not15 = icmp eq ptr %.1.i.i, null
  br i1 %.not15, label %vorbis_alloc.exit.thread, label %bb.h

bb.h:                                             ; preds = %vorbis_alloc.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1904) %.1.i.i, ptr noundef nonnull align 8 dereferenceable(1904) %5, i64 1904, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %0 to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.al to i32
  store i32 %i.am, ptr %2, align 4
  store i32 0, ptr %3, align 4
  br label %bb.i

vorbis_alloc.exit.thread:                         ; preds = %bb.e, %vorbis_alloc.exit
  call fastcc void @vorbis_deinit(ptr noundef %5)
  br label %bb.i

bb.i:                                             ; preds = %vorbis_alloc.exit.thread, %bb.h, %bb.c
  %.0 = phi ptr [ %.1.i.i, %bb.h ], [ null, %vorbis_alloc.exit.thread ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #61
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @start_decoder(ptr nofree noundef nonnull initializes((1765, 1766)) %0) unnamed_addr #8 {
bb.a:
  %i.a = alloca [6 x i8], align 4                 ; 20 uses
  %1 = alloca [250 x %struct.stbv__floor_ordering], align 16 ; 8 uses
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1765
  store i8 1, ptr %i.c, align 1
  %i.d = tail call fastcc i32 @start_page(ptr noundef nonnull %0)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1763
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i32                      ; 3 uses
  %i.h = and i32 %i.g, 2
  %.not1077 = icmp eq i32 %i.h, 0
  br i1 %.not1077, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 34, ptr %i.i, align 4
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.j = and i32 %i.g, 4
  %.not1078 = icmp eq i32 %i.j, 0
  br i1 %.not1078, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 34, ptr %i.k, align 4
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.l = and i32 %i.g, 1
  %.not1079 = icmp eq i32 %i.l, 0
  br i1 %.not1079, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 34, ptr %i.m, align 4
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1504
  %i.o = load i32, ptr %i.n, align 8
  %.not1080 = icmp eq i32 %i.o, 1
  br i1 %.not1080, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 34, ptr %i.p, align 4
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1508
  %i.r = load i8, ptr %i.q, align 4
  switch i8 %i.r, label %bb.o [
    i8 30, label %bb.p
    i8 64, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.s = call fastcc i32 @getn(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 6)
  %i.t = icmp ne i32 %i.s, 0
  %i.u = load <4 x i8>, ptr %i.a, align 4
  %.fr = freeze <4 x i8> %i.u
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.w = load i8, ptr %i.v, align 4
  %i.x = icmp eq i8 %i.w, 101
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = icmp eq i8 %i.z, 97
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.ab = icmp eq i32 %.fr.scalar, 1752394086
  %op.rdx = select i1 %i.ab, i1 %i.t, i1 false
  %i.ac = select i1 %op.rdx, i1 %i.x, i1 false
  %op.rdx1880 = select i1 %i.ac, i1 %i.aa, i1 false
  br i1 %op.rdx1880, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ad = tail call fastcc zeroext i8 @get8(ptr noundef nonnull %0)
  %i.ae = icmp eq i8 %i.ad, 100
  br i1 %i.ae, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.af = tail call fastcc zeroext i8 @get8(ptr noundef nonnull %0)
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 38, ptr %i.ah, align 4
  br label %.critedge

bb.o:                                             ; preds = %bb.j, %bb.m, %bb.l, %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 34, ptr %i.ai, align 4
  br label %.critedge

bb.p:                                             ; preds = %bb.j
  %i.aj = tail call fastcc zeroext i8 @get8(ptr noundef nonnull %0)
  %.not1082 = icmp eq i8 %i.aj, 1
  br i1 %.not1082, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 34, ptr %i.ak, align 4
  br label %.critedge

bb.r:                                             ; preds = %bb.p
  %i.al = call fastcc i32 @getn(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 6)
  %.not1083 = icmp eq i32 %i.al, 0
  br i1 %.not1083, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 10, ptr %i.am, align 4
  br label %.critedge

bb.t:                                             ; preds = %bb.r
  %i.an = load i32, ptr %i.a, align 4
  %i.ao = load i32, ptr @vorbis_validate.vorbis, align 1
  %i.ap = xor i32 %i.an, %i.ao
  %i.aq = getelementptr i8, ptr %i.a, i64 4
  %i.ar = load i16, ptr %i.aq, align 4
  %i.as = load i16, ptr getelementptr (i8, ptr @vorbis_validate.vorbis, i64 4), align 1
  %i.at = zext i16 %i.ar to i32
  %i.au = zext i16 %i.as to i32
  %i.av = xor i32 %i.at, %i.au
  %i.aw = or i32 %i.ap, %i.av
  %i.ax = icmp ne i32 %i.aw, 0
  %i.ay = zext i1 %i.ax to i32
  %.not1243 = icmp eq i32 %i.ay, 0
  br i1 %.not1243, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 34, ptr %i.az, align 4
  br label %.critedge

bb.v:                                             ; preds = %bb.t
  %i.ba = tail call fastcc i32 @get32(ptr noundef nonnull %0)
  %.not1085 = icmp eq i32 %i.ba, 0
  br i1 %.not1085, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 34, ptr %i.bb, align 4
  br label %.critedge

bb.x:                                             ; preds = %bb.v
  %i.bc = tail call fastcc zeroext i8 @get8(ptr noundef nonnull %0) ; 3 uses
  %i.bd = zext i8 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 11 uses
  store i32 %i.bd, ptr %i.be, align 4
  %.not1086 = icmp eq i8 %i.bc, 0
  br i1 %.not1086, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 34, ptr %i.bf, align 4
  br label %.critedge

bb.z:                                             ; preds = %bb.x
  %i.bg = icmp ugt i8 %i.bc, 16
  br i1 %i.bg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 5, ptr %i.bh, align 4
  br label %.critedge

bb.ab:                                            ; preds = %bb.z
  %i.bi = tail call fastcc i32 @get32(ptr noundef nonnull %0) ; 2 uses
  store i32 %i.bi, ptr %0, align 8
  %.not1087 = icmp eq i32 %i.bi, 0
  br i1 %.not1087, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 34, ptr %i.bj, align 4
  br label %.critedge

bb.ad:                                            ; preds = %bb.ab
  %i.bk = tail call fastcc i32 @get32(ptr noundef nonnull %0) ; 0 uses
  %i.bl = tail call fastcc i32 @get32(ptr noundef nonnull %0) ; 0 uses
  %i.bm = tail call fastcc i32 @get32(ptr noundef nonnull %0) ; 0 uses
  %i.bn = tail call fastcc zeroext i8 @get8(ptr noundef nonnull %0) ; 2 uses
  %i.bo = zext i8 %i.bn to i32                    ; 2 uses
  %i.bp = and i32 %i.bo, 15                       ; 3 uses
  %i.bq = lshr i32 %i.bo, 4                       ; 2 uses
  %i.br = shl nuw nsw i32 1, %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  store i32 %i.br, ptr %i.bs, align 8
  %i.bt = shl nuw nsw i32 1, %i.bq
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 6 uses
  store i32 %i.bt, ptr %i.bu, align 4
  %i.bv = add nsw i32 %i.bp, -14
  %or.cond42 = icmp ult i32 %i.bv, -8
  br i1 %or.cond42, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.bw, align 4
  br label %.critedge

bb.af:                                            ; preds = %bb.ad
  %i.bx = add i8 %i.bn, 32
  %or.cond44 = icmp sgt i8 %i.bx, -1
  br i1 %or.cond44, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.by, align 4
  br label %.critedge

bb.ah:                                            ; preds = %bb.af
  %i.bz = icmp samesign ugt i32 %i.bp, %i.bq
  br i1 %i.bz, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.ca, align 4
  br label %.critedge

bb.aj:                                            ; preds = %bb.ah
  %i.cb = tail call fastcc zeroext i8 @get8(ptr noundef nonnull %0)
  %i.cc = and i8 %i.cb, 1
  %.not1088 = icmp eq i8 %i.cc, 0
  br i1 %.not1088, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 34, ptr %i.cd, align 4
  br label %.critedge

bb.al:                                            ; preds = %bb.aj
  %i.ce = tail call fastcc i32 @start_page(ptr noundef nonnull %0)
  %.not1089 = icmp eq i32 %i.ce, 0
  br i1 %.not1089, label %.critedge, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cf = tail call fastcc i32 @start_packet(ptr noundef nonnull %0)
  %.not1090 = icmp eq i32 %i.cf, 0
  br i1 %.not1090, label %.critedge, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cg = tail call fastcc i32 @next_segment(ptr noundef nonnull %0)
  %.not1091 = icmp eq i32 %i.cg, 0
  br i1 %.not1091, label %.critedge, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ch = tail call fastcc range(i32 -1, 256) i32 @get8_packet_raw(ptr noundef nonnull %0)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1784 ; 17 uses
  store i32 0, ptr %i.ci, align 8
  %.not1092 = icmp eq i32 %i.ch, 3
  br i1 %.not1092, label %.preheader1269.preheader, label %bb.ap

.preheader1269.preheader:                         ; preds = %bb.ao
  %i.cj = tail call fastcc range(i32 -1, 256) i32 @get8_packet_raw(ptr noundef nonnull %0)
  store i32 0, ptr %i.ci, align 8
  %i.ck = trunc i32 %i.cj to i8
  store i8 %i.ck, ptr %i.a, align 4
  %i.cl = tail call fastcc range(i32 -1, 256) i32 @get8_packet_raw(ptr noundef nonnull %0)
  store i32 0, ptr %i.ci, align 8
  %i.cm = trunc i32 %i.cl to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store i8 %i.cm, ptr %i.cn, align 1
  %i.co = tail call fastcc range(i32 -1, 256) i32 @get8_packet_raw(ptr noundef nonnull %0)
  store i32 0, ptr %i.ci, align 8
  %i.cp = trunc i32 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store i8 %i.cp, ptr %i.cq, align 2
  %i.cr = tail call fastcc range(i32 -1, 256) i32 @get8_packet_raw(ptr noundef nonnull %0)
  store i32 0, ptr %i.ci, align 8
  %i.cs = trunc i32 %i.cr to i8
end_hunk_2
