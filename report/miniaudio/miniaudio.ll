Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 280
begin_hunk_0_@ma_dr_wav_version_string:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i16 @ma_dr_wav_fmt_get_format(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %0, align 4, !tbaa !1077   ; 2 uses
  %.not = icmp eq i16 %i.b, -2
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i16, ptr %i.c, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i16 [ %i.d, %bb.c ], [ 0, %bb.a ], [ %i.b, %bb.b ]
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i16 @ma_dr_wav_bytes_to_u16(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = load i16, ptr %0, align 1
  ret i16 %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ma_dr_wav_init_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(address_is_null) %8) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond3.i = or i1 %or.cond.i, %i.c
  br i1 %or.cond3.i, label %ma_dr_wav_preinit.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.d, i8 0, i64 400, i1 false)
  store ptr %1, ptr %0, align 8, !tbaa !673
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !674
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.f, align 8, !tbaa !675
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %5, ptr %i.g, align 8, !tbaa !676
  %.not.i.i = icmp eq ptr %8, null
  br i1 %.not.i.i, label %.thread.i, label %ma_dr_wav_copy_allocation_callbacks_or_defaults.exit.i

.thread.i:                                        ; preds = %bb.b
  %.sroa.5.0..sroa_idx36.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @ma_dr_wav__malloc_default, ptr %.sroa.5.0..sroa_idx36.i, align 8, !tbaa !134
  %.sroa.6.0..sroa_idx37.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @ma_dr_wav__realloc_default, ptr %.sroa.6.0..sroa_idx37.i, align 8, !tbaa !134
  %.sroa.7.0..sroa_idx38.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @ma_dr_wav__free_default, ptr %.sroa.7.0..sroa_idx38.i, align 8, !tbaa !134
  br label %ma_dr_wav_preinit.exit

ma_dr_wav_copy_allocation_callbacks_or_defaults.exit.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.6.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.6.0.copyload27.i = load ptr, ptr %.sroa.6.0..sroa_idx26.i, align 8, !tbaa !134 ; 2 uses
  %.sroa.7.0..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.7.0.copyload29.i = load ptr, ptr %.sroa.7.0..sroa_idx28.i, align 8, !tbaa !134 ; 2 uses
  %.sroa.5.0.copyload25.i = load ptr, ptr %.sroa.5.0..sroa_idx24.i, align 8, !tbaa !134
  %i.i = load <2 x ptr>, ptr %8, align 8, !tbaa !134
  store <2 x ptr> %i.i, ptr %i.h, align 8, !tbaa !134
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.6.0.copyload27.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !134
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.7.0.copyload29.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !134
  %i.j = icmp eq ptr %.sroa.7.0.copyload29.i, null
  br i1 %i.j, label %ma_dr_wav_preinit.exit.thread, label %bb.c

bb.c:                                             ; preds = %ma_dr_wav_copy_allocation_callbacks_or_defaults.exit.i
  %i.k = icmp eq ptr %.sroa.5.0.copyload25.i, null
  %i.l = icmp eq ptr %.sroa.6.0.copyload27.i, null
  %or.cond39.i = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond39.i, label %ma_dr_wav_preinit.exit.thread, label %ma_dr_wav_preinit.exit

ma_dr_wav_preinit.exit:                           ; preds = %bb.c, %.thread.i
  %i.m = tail call fastcc i32 @ma_dr_wav_init__internal(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %6, i32 noundef %7)
  br label %ma_dr_wav_preinit.exit.thread

ma_dr_wav_preinit.exit.thread:                    ; preds = %ma_dr_wav_copy_allocation_callbacks_or_defaults.exit.i, %bb.c, %bb.a, %ma_dr_wav_preinit.exit
  %.0 = phi i32 [ %i.m, %ma_dr_wav_preinit.exit ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %ma_dr_wav_copy_allocation_callbacks_or_defaults.exit.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ma_dr_wav_init__internal(ptr nofree noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #8 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 5 uses
  %i.d = alloca i64, align 8                      ; 24 uses
  %i.e = alloca [4 x i8], align 1                 ; 13 uses
  %4 = alloca %struct.ma_dr_wav_fmt, align 4      ; 20 uses
  %i.f = alloca i64, align 8                      ; 7 uses
  %5 = alloca %struct.ma_dr_wav__metadata_parser, align 8 ; 14 uses
  %i.g = alloca [12 x i8], align 8                ; 5 uses
  %i.h = alloca [4 x i8], align 4                 ; 5 uses
  %i.i = alloca [4 x i8], align 1                 ; 8 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [16 x i8], align 16               ; 5 uses
  %i.l = alloca [4 x i8], align 4                 ; 7 uses
  %i.m = alloca [4 x i8], align 1                 ; 10 uses
  %i.n = alloca [8 x i8], align 8                 ; 7 uses
  %6 = alloca %struct.ma_dr_wav_chunk_header, align 8 ; 7 uses
  %7 = alloca %struct.ma_dr_wav_chunk_header, align 8 ; 22 uses
  %i.o = alloca [16 x i8], align 16               ; 22 uses
  %i.p = alloca [2 x i8], align 2                 ; 7 uses
  %i.q = alloca [22 x i8], align 16               ; 9 uses
  %i.r = alloca [4 x i8], align 4                 ; 6 uses
  %i.s = alloca [24 x i8], align 16               ; 15 uses
  %i.t = alloca [8 x i8], align 4                 ; 7 uses
  %8 = alloca %struct.ma_dr_wav_chunk_header, align 8 ; 10 uses
  %i.u = alloca i64, align 8                      ; 4 uses
  %i.v = alloca [4096 x i8], align 16             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #55
  store i64 0, ptr %i.f, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  %i.w = trunc i32 %3 to i1                       ; 2 uses
  %i.x = and i32 %3, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %i.y = load ptr, ptr %0, align 8, !tbaa !673
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 43 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.ab = call i64 %i.y(ptr noundef %i.aa, ptr noundef nonnull %i.e, i64 noundef 4) #55, !inline_history !2815
  %.not = icmp eq i64 %i.ab, 4
  br i1 %.not, label %bb.b, label %ma_dr_wav_free.exit779

bb.b:                                             ; preds = %bb.a
  %i.ac = load i8, ptr %i.e, align 1, !tbaa !119
  switch i8 %i.ac, label %ma_dr_wav_free.exit779 [
    i8 82, label %bb.c
    i8 114, label %bb.d
    i8 70, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !119 ; 2 uses
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
  %i.am = load i8, ptr %i.al, align 1, !tbaa !119
  %i.an = icmp eq i8 %i.am, 105
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = icmp eq i8 %i.ap, 102
  %or.cond1030 = select i1 %i.an, i1 %i.aq, i1 false
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.as = load i8, ptr %i.ar, align 1
  %.not1211 = icmp eq i8 %i.as, 102
  %or.cond1246 = select i1 %or.cond1030, i1 %.not1211, i1 false
  br i1 %or.cond1246, label %bb.e, label %ma_dr_wav_free.exit779

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #55
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i32 2, ptr %i.at, align 8, !tbaa !683
  %i.au = load ptr, ptr %0, align 8, !tbaa !673
  %i.av = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.aw = call i64 %i.au(ptr noundef %i.av, ptr noundef nonnull %i.g, i64 noundef 12) #55, !inline_history !2815
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #55
  br i1 %op.rdx1827, label %bb.g, label %ma_dr_wav_free.exit779

.thread805:                                       ; preds = %.thread
  %i.bh = icmp eq i8 %i.ae, 70
  %i.bi = icmp eq i8 %i.ah, 54
  %or.cond1034 = select i1 %i.bh, i1 %i.bi, i1 false
  %.not1214 = icmp eq i8 %i.ak, 52
  %or.cond1249 = select i1 %or.cond1034, i1 %.not1214, i1 false
  br i1 %or.cond1249, label %.thread1552, label %ma_dr_wav_free.exit779

bb.f:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !119
  %i.bl = icmp eq i8 %i.bk, 79
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = icmp eq i8 %i.bn, 82
  %or.cond1038 = select i1 %i.bl, i1 %i.bo, i1 false
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.bq = load i8, ptr %i.bp, align 1
  %.not1210 = icmp eq i8 %i.bq, 77
  %or.cond1252 = select i1 %or.cond1038, i1 %.not1210, i1 false
  br i1 %or.cond1252, label %.thread1553, label %ma_dr_wav_free.exit779

.thread1553:                                      ; preds = %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 4, ptr %i.br, align 8, !tbaa !683
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.o

.thread1552:                                      ; preds = %.thread805, %.thread, %bb.c
  %.sink = phi i32 [ 0, %bb.c ], [ 1, %.thread ], [ 3, %.thread805 ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.sink, ptr %i.bt, align 8, !tbaa !683
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.pre = load i32, ptr %i.at, align 8, !tbaa !683
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  switch i32 %.pre, label %ma_dr_wav_free.exit779 [
    i32 0, label %bb.h
    i32 1, label %bb.h
    i32 3, label %bb.h
    i32 2, label %bb.l
    i32 4, label %bb.o
  ]

bb.h:                                             ; preds = %.thread1552, %bb.g, %bb.g, %bb.g
  %i.bw = phi ptr [ %i.bu, %.thread1552 ], [ %i.bv, %bb.g ], [ %i.bv, %bb.g ], [ %i.bv, %bb.g ] ; 2 uses
  %i.bx = phi i64 [ 4, %.thread1552 ], [ 16, %bb.g ], [ 16, %bb.g ], [ 16, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #55
  %i.by = load ptr, ptr %0, align 8, !tbaa !673
  %i.bz = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.ca = call i64 %i.by(ptr noundef %i.bz, ptr noundef nonnull %i.h, i64 noundef 4) #55, !inline_history !2815 ; 2 uses
  %i.cb = add i64 %i.bx, %i.ca
  %.not477 = icmp eq i64 %i.ca, 4
  br i1 %.not477, label %bb.i, label %.critedge537

bb.i:                                             ; preds = %bb.h
  %i.cc = load i32, ptr %i.bw, align 8, !tbaa !683
  switch i32 %i.cc, label %.critedge537 [
    i32 3, label %bb.j
    i32 1, label %ma_dr_wav_bytes_to_u32_ex.exit590
    i32 0, label %ma_dr_wav_bytes_to_u32_ex.exit590
  ]

bb.j:                                             ; preds = %bb.i
  %i.cd = load i32, ptr %i.h, align 4
  %.not478 = icmp eq i32 %i.cd, -1
  br i1 %.not478, label %ma_dr_wav_bytes_to_u32_ex.exit590, label %.critedge537

ma_dr_wav_bytes_to_u32_ex.exit590:                ; preds = %bb.i, %bb.i, %bb.j
  %i.ce = load ptr, ptr %0, align 8, !tbaa !673
  %i.cf = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.cg = call i64 %i.ce(ptr noundef %i.cf, ptr noundef nonnull %i.i, i64 noundef 4) #55, !inline_history !2815 ; 2 uses
  %i.ch = add i64 %i.cg, %i.cb                    ; 2 uses
  store i64 %i.ch, ptr %i.d, align 8, !tbaa !164
  %.not479 = icmp eq i64 %i.cg, 4
  br i1 %.not479, label %bb.k, label %.critedge537

bb.k:                                             ; preds = %ma_dr_wav_bytes_to_u32_ex.exit590
  %i.ci = load i8, ptr %i.i, align 1, !tbaa !119
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #55
  br i1 %or.cond1255, label %.thread821, label %ma_dr_wav_free.exit779

bb.l:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #55
  %i.cs = load ptr, ptr %0, align 8, !tbaa !673
  %i.ct = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.cu = call i64 %i.cs(ptr noundef %i.ct, ptr noundef nonnull %i.j, i64 noundef 8) #55, !inline_history !2815
  %.not474 = icmp ne i64 %i.cu, 8
  %i.cv = load i64, ptr %i.j, align 8
  %i.cw = icmp ult i64 %i.cv, 80
  %or.cond1048 = select i1 %.not474, i1 true, i1 %i.cw
  br i1 %or.cond1048, label %.critedge540, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cx = load ptr, ptr %0, align 8, !tbaa !673
  %i.cy = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.cz = call i64 %i.cx(ptr noundef %i.cy, ptr noundef nonnull %i.k, i64 noundef 16) #55, !inline_history !2815 ; 2 uses
  %i.da = add i64 %i.cz, 24                       ; 2 uses
  store i64 %i.da, ptr %i.d, align 8, !tbaa !164
  %.not475 = icmp eq i64 %i.cz, 16
  br i1 %.not475, label %bb.n, label %.critedge540

bb.n:                                             ; preds = %bb.m
  %i.db = call i32 @ma_dr_wav_guid_equal(ptr noundef nonnull %i.k, ptr noundef nonnull @ma_dr_wavGUID_W64_WAVE)
  %.not476.not = icmp eq i32 %i.db, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #55
  br i1 %.not476.not, label %ma_dr_wav_free.exit779, label %.thread821

bb.o:                                             ; preds = %.thread1553, %bb.g
  %i.dc = phi ptr [ %i.bs, %.thread1553 ], [ %i.bv, %bb.g ] ; 2 uses
  %i.dd = phi i64 [ 4, %.thread1553 ], [ 16, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #55
  %i.de = load ptr, ptr %0, align 8, !tbaa !673
  %i.df = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.dg = call i64 %i.de(ptr noundef %i.df, ptr noundef nonnull %i.l, i64 noundef 4) #55, !inline_history !2815 ; 2 uses
  %i.dh = add i64 %i.dd, %i.dg
  %.not470 = icmp eq i64 %i.dg, 4
  br i1 %.not470, label %bb.p, label %.thread827

bb.p:                                             ; preds = %bb.o
  %i.di = load i32, ptr %i.l, align 4
  %i.dj = call i32 @llvm.bswap.i32(i32 %i.di)
  %i.dk = icmp ult i32 %i.dj, 18
  br i1 %i.dk, label %.thread827, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dl = load ptr, ptr %0, align 8, !tbaa !673
  %i.dm = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.dn = call i64 %i.dl(ptr noundef %i.dm, ptr noundef nonnull %i.m, i64 noundef 4) #55, !inline_history !2815 ; 2 uses
  %i.do = add i64 %i.dn, %i.dh                    ; 3 uses
  store i64 %i.do, ptr %i.d, align 8, !tbaa !164
  %.not471 = icmp eq i64 %i.dn, 4
  br i1 %.not471, label %bb.r, label %.thread827

bb.r:                                             ; preds = %bb.q
  %i.dp = load i8, ptr %i.m, align 1, !tbaa !119
  %i.dq = icmp eq i8 %i.dp, 65
  br i1 %i.dq, label %bb.s, label %.thread834

bb.s:                                             ; preds = %bb.r
  %i.dr = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !119
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #55
  br label %.thread821

.thread823:                                       ; preds = %bb.s
  br i1 %or.cond1052, label %bb.t, label %.thread834

.thread827:                                       ; preds = %bb.q, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #55
  br label %ma_dr_wav_free.exit779

.thread834:                                       ; preds = %.thread823, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #55
  br label %ma_dr_wav_free.exit779

bb.t:                                             ; preds = %.thread823
  %.not1216.not = icmp eq i8 %i.dy, 67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #55
  br i1 %.not1216.not, label %.thread821, label %ma_dr_wav_free.exit779
end_hunk_0
begin_hunk_1_@ma_dr_wav_init__internal:bb.a
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
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #55
  %i.ic = load ptr, ptr %0, align 8, !tbaa !673   ; 4 uses
  %i.id = load ptr, ptr %i.z, align 8, !tbaa !676 ; 4 uses
  switch i32 %i.ib, label %.loopexit1323 [
    i32 4, label %bb.af
    i32 3, label %bb.af
    i32 1, label %bb.af
    i32 0, label %bb.af
    i32 2, label %bb.al
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae, %bb.ae, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.ie = call i64 %i.ic(ptr noundef %i.id, ptr noundef nonnull %7, i64 noundef 4) #55, !inline_history !2817
  %.not35.i666 = icmp eq i64 %i.ie, 4
  br i1 %.not35.i666, label %bb.ag, label %.thread.i667

bb.ag:                                            ; preds = %bb.af
  %i.if = call i64 %i.ic(ptr noundef %i.id, ptr noundef nonnull %i.a, i64 noundef 4) #55, !inline_history !2817
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %.loopexit1323

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.0.i.i670 = phi i32 [ %i.ih, %bb.ai ], [ %i.ii, %bb.aj ] ; 2 uses
  %i.ij = zext i32 %.0.i.i670 to i64              ; 2 uses
  store i64 %i.ij, ptr %i.fz, align 8, !tbaa !1079
  %i.ik = and i32 %.0.i.i670, 1
  store i32 %i.ik, ptr %i.ga, align 8, !tbaa !1080
  %i.il = add i64 %i.ia, 8                        ; 2 uses
  store i64 %i.il, ptr %i.d, align 8, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %ma_dr_wav__read_chunk_header.exit671

bb.al:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %i.im = call i64 %i.ic(ptr noundef %i.id, ptr noundef nonnull %7, i64 noundef 16) #55, !inline_history !2817
  %.not.i661 = icmp eq i64 %i.im, 16
  br i1 %.not.i661, label %bb.am, label %.thread40.i662

bb.am:                                            ; preds = %bb.al
  %i.in = call i64 %i.ic(ptr noundef %i.id, ptr noundef nonnull %i.b, i64 noundef 8) #55, !inline_history !2817
  %.not34.i665 = icmp eq i64 %i.in, 8
  br i1 %.not34.i665, label %bb.an, label %.thread40.i662

.thread40.i662:                                   ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  br label %.loopexit1323

bb.an:                                            ; preds = %bb.am
  %i.io = load i64, ptr %i.b, align 8             ; 2 uses
  %i.ip = add i64 %i.io, -24                      ; 2 uses
  store i64 %i.ip, ptr %i.fz, align 8, !tbaa !1079
  %i.iq = trunc i64 %i.io to i32
  %i.ir = and i32 %i.iq, 7
  store i32 %i.ir, ptr %i.ga, align 8, !tbaa !1080
  %i.is = add i64 %i.ia, 24                       ; 2 uses
  store i64 %i.is, ptr %i.d, align 8, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  br label %ma_dr_wav__read_chunk_header.exit671

ma_dr_wav__read_chunk_header.exit671:             ; preds = %bb.an, %bb.ak
  %i.it = phi i64 [ %i.ip, %bb.an ], [ %i.ij, %bb.ak ] ; 9 uses
  %i.iu = phi i64 [ %i.is, %bb.an ], [ %i.il, %bb.ak ] ; 14 uses
  br i1 %or.cond, label %bb.ao, label %.critedge542

bb.ao:                                            ; preds = %ma_dr_wav__read_chunk_header.exit671
  %i.iv = load ptr, ptr %0, align 8, !tbaa !673
  %i.iw = load ptr, ptr %i.gd, align 8, !tbaa !674
  %i.ix = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.iy = load i32, ptr %i.dz, align 8, !tbaa !683
  %i.iz = call i64 %1(ptr noundef %2, ptr noundef %i.iv, ptr noundef %i.iw, ptr noundef %i.ix, ptr noundef nonnull %7, i32 noundef %i.iy, ptr noundef nonnull %4) #55
  %.not490 = icmp eq i64 %i.iz, 0
  br i1 %.not490, label %.critedge542, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ja = load ptr, ptr %i.gd, align 8, !tbaa !674 ; 3 uses
  %i.jb = load ptr, ptr %i.z, align 8, !tbaa !676 ; 3 uses
  %i.jc = icmp ult i64 %i.iu, 2147483648
  br i1 %i.jc, label %ma_dr_wav__seek_from_start.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jd = call i32 %i.ja(ptr noundef %i.jb, i32 noundef 2147483647, i32 noundef 0) #55, !inline_history !2818
  %.not.i672 = icmp eq i32 %i.jd, 0
  br i1 %.not.i672, label %.thread988, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.aq
  %.014.i1817 = add i64 %i.iu, -2147483647        ; 3 uses
  %i.je = icmp ult i64 %.014.i1817, 2147483648
  br i1 %i.je, label %ma_dr_wav__seek_from_start.exit, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  %.014.i = add i64 %.014.i1818, -2147483647      ; 3 uses
  %i.jf = icmp ult i64 %.014.i, 2147483648
  br i1 %i.jf, label %ma_dr_wav__seek_from_start.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.014.i1818 = phi i64 [ %.014.i, %.preheader.i ], [ %.014.i1817, %.preheader.i.preheader ]
  %i.jg = call i32 %i.ja(ptr noundef %i.jb, i32 noundef 2147483647, i32 noundef 1) #55, !inline_history !2818
  %.not16.i = icmp eq i32 %i.jg, 0
  br i1 %.not16.i, label %.thread988, label %.preheader.i

ma_dr_wav__seek_from_start.exit:                  ; preds = %.preheader.i, %.preheader.i.preheader, %bb.ap
  %.014.lcssa.sink.i = phi i64 [ %i.iu, %bb.ap ], [ %.014.i1817, %.preheader.i.preheader ], [ %.014.i, %.preheader.i ]
  %.sink21.i = phi i32 [ 0, %bb.ap ], [ 1, %.preheader.i.preheader ], [ 1, %.preheader.i ]
  %i.jh = trunc nuw nsw i64 %.014.lcssa.sink.i to i32
  %i.ji = call i32 %i.ja(ptr noundef %i.jb, i32 noundef %i.jh, i32 noundef %.sink21.i) #55, !inline_history !2818
  %i.jj = icmp eq i32 %i.ji, 0
  br i1 %i.jj, label %.thread988, label %.critedge542

.critedge542:                                     ; preds = %bb.ao, %ma_dr_wav__seek_from_start.exit, %ma_dr_wav__read_chunk_header.exit671
  %i.jk = load i32, ptr %i.dz, align 8, !tbaa !683 ; 5 uses
  switch i32 %i.jk, label %ma_dr_wav_fourcc_equal.exit713.thread [
    i32 0, label %bb.ar
    i32 1, label %bb.ar
    i32 3, label %bb.ar
    i32 2, label %.critedge542._crit_edge1484
    i32 4, label %.critedge542._crit_edge
  ]

.critedge542._crit_edge1484:                      ; preds = %.critedge542
  %.pre1485 = load i8, ptr %7, align 8, !tbaa !119
  %.pre1486.pre = load i8, ptr %i.ge, align 1
  %.pre1487.pre = load i8, ptr %i.gf, align 2
  %.pre1488.pre = load i8, ptr %i.gg, align 1
  br label %bb.as

.critedge542._crit_edge:                          ; preds = %.critedge542
  %.pre1480 = load i8, ptr %7, align 8, !tbaa !119 ; 2 uses
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
  %i.jo = load i8, ptr %7, align 8, !tbaa !119    ; 3 uses
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
  br i1 %or.cond1264, label %bb.au, label %ma_dr_wav_fourcc_equal.exit674.thread

ma_dr_wav_fourcc_equal.exit674.thread:            ; preds = %bb.ar
  %i.jv = icmp eq i32 %i.jk, 2
  br i1 %i.jv, label %bb.as, label %bb.bp

bb.as:                                            ; preds = %ma_dr_wav_fourcc_equal.exit674.thread, %.critedge542._crit_edge1484
  %.pre1488 = phi i8 [ %.pre1488.pre, %.critedge542._crit_edge1484 ], [ %i.ju, %ma_dr_wav_fourcc_equal.exit674.thread ] ; 2 uses
  %.pre1487 = phi i8 [ %.pre1487.pre, %.critedge542._crit_edge1484 ], [ %i.js, %ma_dr_wav_fourcc_equal.exit674.thread ] ; 2 uses
  %.pre1486 = phi i8 [ %.pre1486.pre, %.critedge542._crit_edge1484 ], [ %i.jq, %ma_dr_wav_fourcc_equal.exit674.thread ] ; 2 uses
  %.pr1009 = phi i8 [ %.pre1485, %.critedge542._crit_edge1484 ], [ %i.jo, %ma_dr_wav_fourcc_equal.exit674.thread ] ; 2 uses
  %.not.i675 = icmp eq i8 %.pr1009, 102
  %i.jw = load <4 x i8>, ptr %i.gz, align 4
  %i.jx = load <4 x i8>, ptr %i.ha, align 8
  %i.jy = load <4 x i8>, ptr %i.hb, align 1
  %.fr1832 = freeze <4 x i8> %i.jy                ; 2 uses
  %.pre1500 = load i8, ptr %i.hc, align 1         ; 2 uses
  br i1 %.not.i675, label %bb.at, label %ma_dr_wav_guid_equal.exit.thread

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
  br i1 %op.rdx1825, label %bb.au, label %ma_dr_wav_guid_equal.exit.thread

bb.au:                                            ; preds = %bb.at, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #55
  %i.kk = load ptr, ptr %0, align 8, !tbaa !673
  %i.kl = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.km = call i64 %i.kk(ptr noundef %i.kl, ptr noundef nonnull %i.o, i64 noundef 16) #55
  %.not519 = icmp eq i64 %i.km, 16
  br i1 %.not519, label %bb.av, label %ma_dr_wav__seek_forward.exit684.thread.jt1

bb.av:                                            ; preds = %bb.au
  %i.kn = add i64 %i.iu, 16                       ; 2 uses
  store i64 %i.kn, ptr %i.d, align 8, !tbaa !164
  %i.ko = load i32, ptr %i.dz, align 8, !tbaa !683
  switch i32 %i.ko, label %bb.ax [
    i32 4, label %bb.aw
    i32 1, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.av, %bb.av
  %i.kp = load i8, ptr %i.hd, align 1, !tbaa !119
  %i.kq = zext i8 %i.kp to i16
  %i.kr = load i8, ptr %i.o, align 16, !tbaa !119
  %i.ks = zext i8 %i.kr to i16
  %i.kt = shl nuw i16 %i.ks, 8
  %i.ku = or disjoint i16 %i.kt, %i.kq
  store i16 %i.ku, ptr %4, align 4, !tbaa !1077
  %i.kv = load i8, ptr %i.hf, align 1, !tbaa !119
  %i.kw = zext i8 %i.kv to i16
  %i.kx = load i8, ptr %i.he, align 2, !tbaa !119
  %i.ky = zext i8 %i.kx to i16
  %i.kz = shl nuw i16 %i.ky, 8
  %i.la = or disjoint i16 %i.kz, %i.kw
  store i16 %i.la, ptr %i.gt, align 2, !tbaa !2819
  %i.lb = load i8, ptr %i.hh, align 1, !tbaa !119
  %i.lc = zext i8 %i.lb to i32
  %i.ld = load i8, ptr %i.hi, align 2, !tbaa !119
  %i.le = zext i8 %i.ld to i32
  %i.lf = shl nuw nsw i32 %i.le, 8
  %i.lg = or disjoint i32 %i.lf, %i.lc
  %i.lh = load i8, ptr %i.hj, align 1, !tbaa !119
  %i.li = zext i8 %i.lh to i32
  %i.lj = shl nuw nsw i32 %i.li, 16
  %i.lk = or disjoint i32 %i.lg, %i.lj
  %i.ll = load i8, ptr %i.hg, align 4, !tbaa !119
  %i.lm = zext i8 %i.ll to i32
  %i.ln = shl nuw i32 %i.lm, 24
  %i.lo = or disjoint i32 %i.lk, %i.ln
  store i32 %i.lo, ptr %i.gu, align 4, !tbaa !2820
  %i.lp = load i8, ptr %i.hl, align 1, !tbaa !119
  %i.lq = zext i8 %i.lp to i32
  %i.lr = load i8, ptr %i.hm, align 2, !tbaa !119
  %i.ls = zext i8 %i.lr to i32
  %i.lt = shl nuw nsw i32 %i.ls, 8
  %i.lu = or disjoint i32 %i.lt, %i.lq
  %i.lv = load i8, ptr %i.hn, align 1, !tbaa !119
  %i.lw = zext i8 %i.lv to i32
  %i.lx = shl nuw nsw i32 %i.lw, 16
  %i.ly = or disjoint i32 %i.lu, %i.lx
  %i.lz = load i8, ptr %i.hk, align 8, !tbaa !119
  %i.ma = zext i8 %i.lz to i32
  %i.mb = shl nuw i32 %i.ma, 24
  %i.mc = or disjoint i32 %i.ly, %i.mb
  store i32 %i.mc, ptr %i.gx, align 4, !tbaa !2821
  %i.md = load i8, ptr %i.hp, align 1, !tbaa !119
  %i.me = zext i8 %i.md to i16
  %i.mf = load i8, ptr %i.ho, align 4, !tbaa !119
  %i.mg = zext i8 %i.mf to i16
  %i.mh = shl nuw i16 %i.mg, 8
  %i.mi = or disjoint i16 %i.mh, %i.me
  store i16 %i.mi, ptr %i.gw, align 4, !tbaa !2822
  %i.mj = load i8, ptr %i.hr, align 1, !tbaa !119
  %i.mk = zext i8 %i.mj to i16
  %i.ml = load i8, ptr %i.hq, align 2, !tbaa !119
  %i.mm = zext i8 %i.ml to i16
  %i.mn = shl nuw i16 %i.mm, 8
  %i.mo = or disjoint i16 %i.mn, %i.mk
  br label %ma_dr_wav_bytes_to_u16_ex.exit625

bb.ax:                                            ; preds = %bb.av
  %i.mp = load <2 x i16>, ptr %i.o, align 16
  store <2 x i16> %i.mp, ptr %4, align 4, !tbaa !122
  %i.mq = load <2 x i32>, ptr %i.hg, align 4
  store <2 x i32> %i.mq, ptr %i.gu, align 4, !tbaa !118
  %i.mr = load i16, ptr %i.ho, align 4
  store i16 %i.mr, ptr %i.gw, align 4, !tbaa !2822
  %i.ms = load i16, ptr %i.hq, align 2
  br label %ma_dr_wav_bytes_to_u16_ex.exit625

ma_dr_wav_bytes_to_u16_ex.exit625:                ; preds = %bb.aw, %bb.ax
  %.0.i624 = phi i16 [ %i.mo, %bb.aw ], [ %i.ms, %bb.ax ]
  store i16 %.0.i624, ptr %i.gv, align 2, !tbaa !2823
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.hs, i8 0, i64 24, i1 false)
  %i.mt = load i64, ptr %i.fz, align 8, !tbaa !1079
  %i.mu = icmp ugt i64 %i.mt, 16
  br i1 %i.mu, label %bb.ay, label %bb.bm

bb.ay:                                            ; preds = %ma_dr_wav_bytes_to_u16_ex.exit625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #55
  %i.mv = load ptr, ptr %0, align 8, !tbaa !673
  %i.mw = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.mx = call i64 %i.mv(ptr noundef %i.mw, ptr noundef nonnull %i.p, i64 noundef 2) #55
  %.not520 = icmp eq i64 %i.mx, 2
  br i1 %.not520, label %bb.az, label %.critedge546

bb.az:                                            ; preds = %bb.ay
  %i.my = add i64 %i.iu, 18                       ; 2 uses
  %i.mz = load i32, ptr %i.dz, align 8, !tbaa !683
  switch i32 %i.mz, label %bb.bb [
    i32 4, label %bb.ba
    i32 1, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az
  %i.na = load i8, ptr %i.hw, align 1, !tbaa !119
  %i.nb = zext i8 %i.na to i16
  %i.nc = load i8, ptr %i.p, align 2, !tbaa !119
  %i.nd = zext i8 %i.nc to i16
  %i.ne = shl nuw i16 %i.nd, 8
  %i.nf = or disjoint i16 %i.ne, %i.nb
  br label %ma_dr_wav_bytes_to_u16_ex.exit619

bb.bb:                                            ; preds = %bb.az
  %i.ng = load i16, ptr %i.p, align 2
  br label %ma_dr_wav_bytes_to_u16_ex.exit619

ma_dr_wav_bytes_to_u16_ex.exit619:                ; preds = %bb.ba, %bb.bb
  %.0.i618 = phi i16 [ %i.nf, %bb.ba ], [ %i.ng, %bb.bb ] ; 5 uses
  store i16 %.0.i618, ptr %i.hs, align 4, !tbaa !2824
  %i.nh = zext i16 %.0.i618 to i32
  %.not521 = icmp eq i16 %.0.i618, 0
  br i1 %.not521, label %bb.bk, label %bb.bc

bb.bc:                                            ; preds = %ma_dr_wav_bytes_to_u16_ex.exit619
  %i.ni = load i16, ptr %4, align 4, !tbaa !1077
  %i.nj = icmp eq i16 %i.ni, -2                   ; 2 uses
  %i.nk = icmp ne i16 %.0.i618, 22
  %or.cond53 = and i1 %i.nk, %i.nj
  br i1 %or.cond53, label %.critedge546, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.nj, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #55
  %i.nl = load ptr, ptr %0, align 8, !tbaa !673
  %i.nm = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.nn = zext i16 %.0.i618 to i64
  %i.no = call i64 %i.nl(ptr noundef %i.nm, ptr noundef nonnull %i.q, i64 noundef %i.nn) #55
  %i.np = load i16, ptr %i.hs, align 4, !tbaa !2824
  %i.nq = zext i16 %i.np to i64                   ; 2 uses
  %.not522 = icmp eq i64 %i.no, %i.nq
  br i1 %.not522, label %bb.bf, label %.critedge544

bb.bf:                                            ; preds = %bb.be
  %i.nr = load i32, ptr %i.dz, align 8, !tbaa !683
  switch i32 %i.nr, label %bb.bh [
    i32 4, label %bb.bg
    i32 1, label %bb.bg
  ]

bb.bg:                                            ; preds = %bb.bf, %bb.bf
  %i.ns = load i8, ptr %i.hx, align 1, !tbaa !119
  %i.nt = zext i8 %i.ns to i16
  %i.nu = load i8, ptr %i.q, align 16, !tbaa !119
  %i.nv = zext i8 %i.nu to i16
  %i.nw = shl nuw i16 %i.nv, 8
  %i.nx = or disjoint i16 %i.nw, %i.nt
  store i16 %i.nx, ptr %i.ht, align 2, !tbaa !2825
  %i.ny = load i32, ptr %i.hy, align 2
  %i.nz = call i32 @llvm.bswap.i32(i32 %i.ny)
  br label %ma_dr_wav_bytes_to_u32_ex.exit572

bb.bh:                                            ; preds = %bb.bf
  %i.oa = load i16, ptr %i.q, align 16
  store i16 %i.oa, ptr %i.ht, align 2, !tbaa !2825
  %i.ob = load i32, ptr %i.hy, align 2
  br label %ma_dr_wav_bytes_to_u32_ex.exit572

ma_dr_wav_bytes_to_u32_ex.exit572:                ; preds = %bb.bg, %bb.bh
  %.0.i571 = phi i32 [ %i.nz, %bb.bg ], [ %i.ob, %bb.bh ]
  store i32 %.0.i571, ptr %i.hu, align 4, !tbaa !2826
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hv, ptr noundef nonnull align 2 dereferenceable(16) %i.hz, i64 16, i1 false), !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #55
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bd
  %i.oc = load ptr, ptr %i.gd, align 8, !tbaa !674
  %i.od = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.oe = call i32 %i.oc(ptr noundef %i.od, i32 noundef %i.nh, i32 noundef 1) #55
  %i.of = icmp eq i32 %i.oe, 0
  br i1 %i.of, label %.critedge546, label %._crit_edge1501

._crit_edge1501:                                  ; preds = %bb.bi
  %.pre1502 = load i16, ptr %i.hs, align 4, !tbaa !2824
  %.pre1507 = zext i16 %.pre1502 to i64
  br label %bb.bj

bb.bj:                                            ; preds = %._crit_edge1501, %ma_dr_wav_bytes_to_u32_ex.exit572
  %.pre-phi = phi i64 [ %.pre1507, %._crit_edge1501 ], [ %i.nq, %ma_dr_wav_bytes_to_u32_ex.exit572 ] ; 2 uses
  %i.og = add i64 %i.my, %.pre-phi
  %i.oh = add nuw nsw i64 %.pre-phi, 18
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %ma_dr_wav_bytes_to_u16_ex.exit619
  %i.oi = phi i64 [ %i.og, %bb.bj ], [ %i.my, %ma_dr_wav_bytes_to_u16_ex.exit619 ]
  %.0393 = phi i64 [ %i.oh, %bb.bj ], [ 18, %ma_dr_wav_bytes_to_u16_ex.exit619 ] ; 2 uses
  %i.oj = load ptr, ptr %i.gd, align 8, !tbaa !674
  %i.ok = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.ol = load i64, ptr %i.fz, align 8, !tbaa !1079
  %i.om = sub i64 %i.ol, %.0393
  %i.on = trunc i64 %i.om to i32
  %i.oo = call i32 %i.oj(ptr noundef %i.ok, i32 noundef %i.on, i32 noundef 1) #55
  %i.op = icmp eq i32 %i.oo, 0
  br i1 %i.op, label %.critedge546, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.oq = load i64, ptr %i.fz, align 8, !tbaa !1079
  %i.or = sub i64 %i.oq, %.0393
  %i.os = add i64 %i.or, %i.oi                    ; 2 uses
  store i64 %i.os, ptr %i.d, align 8, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #55
  br label %bb.bm

.critedge544:                                     ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #55
  br label %.critedge546

bb.bm:                                            ; preds = %bb.bl, %ma_dr_wav_bytes_to_u16_ex.exit625
  %i.ot = phi i64 [ %i.os, %bb.bl ], [ %i.kn, %ma_dr_wav_bytes_to_u16_ex.exit625 ] ; 2 uses
  %i.ou = load i32, ptr %i.ga, align 8, !tbaa !1080 ; 4 uses
  %.not523 = icmp eq i32 %i.ou, 0
  br i1 %.not523, label %ma_dr_wav__seek_forward.exit684.thread.jt6, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ov = load ptr, ptr %i.gd, align 8, !tbaa !674 ; 2 uses
  %i.ow = load ptr, ptr %i.z, align 8, !tbaa !676 ; 2 uses
  %i.ox = icmp slt i32 %i.ou, 0
  br i1 %i.ox, label %.lr.ph1405.preheader, label %ma_dr_wav__seek_forward.exit684

.lr.ph1405.preheader:                             ; preds = %bb.bn
  %i.oy = zext i32 %i.ou to i64
  br label %.lr.ph1405

.lr.ph1405:                                       ; preds = %.lr.ph1405.preheader, %.lr.ph.i678
  %.013.i6791404 = phi i64 [ %i.pa, %.lr.ph.i678 ], [ %i.oy, %.lr.ph1405.preheader ]
  %i.oz = call i32 %i.ov(ptr noundef %i.ow, i32 noundef 2147483647, i32 noundef 1) #55, !inline_history !2816
  %.not11.i683 = icmp eq i32 %i.oz, 0
  br i1 %.not11.i683, label %ma_dr_wav__seek_forward.exit684.thread.jt5, label %.lr.ph.i678

.lr.ph.i678:                                      ; preds = %.lr.ph1405
  %i.pa = add i64 %.013.i6791404, -2147483647     ; 3 uses
  %i.pb = icmp ugt i64 %i.pa, 2147483647
  br i1 %i.pb, label %.lr.ph1405, label %ma_dr_wav__seek_forward.exit684.loopexit

ma_dr_wav__seek_forward.exit684.loopexit:         ; preds = %.lr.ph.i678
  %i.pc = trunc nuw nsw i64 %i.pa to i32
  br label %ma_dr_wav__seek_forward.exit684

ma_dr_wav__seek_forward.exit684:                  ; preds = %ma_dr_wav__seek_forward.exit684.loopexit, %bb.bn
  %.013.i679.lcssa = phi i32 [ %i.ou, %bb.bn ], [ %i.pc, %ma_dr_wav__seek_forward.exit684.loopexit ]
  %i.pd = call i32 %i.ov(ptr noundef %i.ow, i32 noundef %.013.i679.lcssa, i32 noundef 1) #55, !inline_history !2816
  %.not10.i680.not = icmp eq i32 %i.pd, 0
  br i1 %.not10.i680.not, label %ma_dr_wav__seek_forward.exit684.thread.jt5, label %bb.bo

bb.bo:                                            ; preds = %ma_dr_wav__seek_forward.exit684
  %i.pe = load i32, ptr %i.ga, align 8, !tbaa !1080
  %i.pf = zext i32 %i.pe to i64
  %i.pg = add i64 %i.ot, %i.pf                    ; 2 uses
  store i64 %i.pg, ptr %i.d, align 8, !tbaa !164
  br label %ma_dr_wav__seek_forward.exit684.thread.jt6

.critedge546:                                     ; preds = %bb.bk, %bb.bc, %bb.bi, %bb.ay, %.critedge544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #55
  br label %ma_dr_wav__seek_forward.exit684.thread.jt1

ma_dr_wav__seek_forward.exit684.thread.jt6:       ; preds = %bb.bm, %bb.bo
  %i.ph = phi i64 [ %i.pg, %bb.bo ], [ %i.ot, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #55
  br label %.backedge

ma_dr_wav__seek_forward.exit684.thread.jt5:       ; preds = %ma_dr_wav__seek_forward.exit684, %.lr.ph1405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #55
  br label %.loopexit1323

ma_dr_wav__seek_forward.exit684.thread.jt1:       ; preds = %bb.au, %.critedge546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #55
  br label %bb.dj

bb.bp:                                            ; preds = %ma_dr_wav_fourcc_equal.exit674.thread
  %i.pi = icmp eq i8 %i.jo, 100
  %i.pj = icmp eq i8 %i.jq, 97                    ; 2 uses
  %or.cond1102 = select i1 %i.pi, i1 %i.pj, i1 false
  %or.cond1106 = select i1 %or.cond1102, i1 %i.jt, i1 false
  %.not1220 = icmp eq i8 %i.ju, 97
  %or.cond1270 = select i1 %or.cond1106, i1 %.not1220, i1 false
  br i1 %or.cond1270, label %bb.bq, label %ma_dr_wav_fourcc_equal.exit685.thread

ma_dr_wav_guid_equal.exit.thread:                 ; preds = %bb.at, %bb.as
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
  br i1 %op.rdx1821, label %bb.bq, label %ma_dr_wav_guid_equal.exit704.thread

bb.bq:                                            ; preds = %ma_dr_wav_guid_equal.exit.thread, %bb.bp
  store i64 %i.iu, ptr %i.gh, align 8, !tbaa !688
  %.not518 = icmp eq i32 %i.jk, 3
  %spec.select = select i1 %.not518, i64 %.2413, i64 %i.it ; 4 uses
  br i1 %or.cond13, label %bb.br, label %.loopexit1323

bb.br:                                            ; preds = %bb.bq
  %i.pt = load i32, ptr %i.ga, align 8, !tbaa !1080
  %i.pu = zext i32 %i.pt to i64
  %i.pv = add i64 %i.it, %i.pu                    ; 5 uses
  %i.pw = load ptr, ptr %i.gd, align 8, !tbaa !674 ; 2 uses
  %i.px = load ptr, ptr %i.z, align 8, !tbaa !676 ; 2 uses
  %.not12.i705 = icmp eq i64 %i.pv, 0
  br i1 %.not12.i705, label %ma_dr_wav__seek_forward.exit712.thread876, label %.lr.ph.i706.preheader

.lr.ph.i706.preheader:                            ; preds = %bb.br
  %i.py = icmp ugt i64 %i.pv, 2147483647
  br i1 %i.py, label %.lr.ph1401, label %ma_dr_wav__seek_forward.exit712

.lr.ph1401:                                       ; preds = %.lr.ph.i706.preheader, %.lr.ph.i706
  %.013.i7071400 = phi i64 [ %i.qa, %.lr.ph.i706 ], [ %i.pv, %.lr.ph.i706.preheader ]
  %i.pz = call i32 %i.pw(ptr noundef %i.px, i32 noundef 2147483647, i32 noundef 1) #55, !inline_history !2816
  %.not11.i711 = icmp eq i32 %i.pz, 0
  br i1 %.not11.i711, label %.loopexit1323, label %.lr.ph.i706

.lr.ph.i706:                                      ; preds = %.lr.ph1401
  %i.qa = add i64 %.013.i7071400, -2147483647     ; 3 uses
  %i.qb = icmp ugt i64 %i.qa, 2147483647
  br i1 %i.qb, label %.lr.ph1401, label %ma_dr_wav__seek_forward.exit712

ma_dr_wav__seek_forward.exit712:                  ; preds = %.lr.ph.i706, %.lr.ph.i706.preheader
  %.013.i707.lcssa = phi i64 [ %i.pv, %.lr.ph.i706.preheader ], [ %i.qa, %.lr.ph.i706 ]
  %i.qc = trunc nuw nsw i64 %.013.i707.lcssa to i32
  %i.qd = call i32 %i.pw(ptr noundef %i.px, i32 noundef %i.qc, i32 noundef 1) #55, !inline_history !2816
  %.not10.i708.not = icmp eq i32 %i.qd, 0
  br i1 %.not10.i708.not, label %.loopexit1323, label %ma_dr_wav__seek_forward.exit712.thread876

ma_dr_wav__seek_forward.exit712.thread876:        ; preds = %bb.br, %ma_dr_wav__seek_forward.exit712
  %i.qe = add i64 %i.pv, %i.iu                    ; 2 uses
  store i64 %i.qe, ptr %i.d, align 8, !tbaa !164
  br label %.backedge

ma_dr_wav_fourcc_equal.exit685.thread:            ; preds = %bb.bp
  switch i32 %i.jk, label %ma_dr_wav_fourcc_equal.exit713.thread [
    i32 0, label %bb.bs
    i32 1, label %bb.bs
    i32 3, label %bb.bs
  ]

bb.bs:                                            ; preds = %ma_dr_wav_fourcc_equal.exit685.thread, %ma_dr_wav_fourcc_equal.exit685.thread, %ma_dr_wav_fourcc_equal.exit685.thread
  %or.cond1138 = select i1 %i.jp, i1 %i.pj, i1 false
  %i.qf = icmp eq i8 %i.js, 99
  %or.cond1142 = select i1 %or.cond1138, i1 %i.qf, i1 false
  %.not1234 = icmp eq i8 %i.ju, 116
  %or.cond1276 = select i1 %or.cond1142, i1 %.not1234, i1 false
  br i1 %or.cond1276, label %bb.bt, label %ma_dr_wav_fourcc_equal.exit713.thread

ma_dr_wav_guid_equal.exit704.thread:              ; preds = %ma_dr_wav_guid_equal.exit.thread
  %i.qg = call i32 @ma_dr_wav_guid_equal(ptr noundef nonnull %7, ptr noundef nonnull @ma_dr_wavGUID_W64_FACT)
  %.not496 = icmp eq i32 %i.qg, 0
  br i1 %.not496, label %ma_dr_wav_fourcc_equal.exit713.thread, label %.thread883

bb.bt:                                            ; preds = %bb.bs
  switch i32 %i.jk, label %bb.cb [
    i32 0, label %bb.bu
    i32 1, label %bb.bu
    i32 2, label %.thread883
  ]

bb.bu:                                            ; preds = %bb.bt, %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #55
  %i.qh = load ptr, ptr %0, align 8, !tbaa !673
  %i.qi = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.qj = call i64 %i.qh(ptr noundef %i.qi, ptr noundef nonnull %i.r, i64 noundef 4) #55, !inline_history !2815 ; 2 uses
  %i.qk = add i64 %i.iu, %i.qj                    ; 2 uses
  store i64 %i.qk, ptr %i.d, align 8, !tbaa !164
  %.not517 = icmp eq i64 %i.qj, 4
  br i1 %.not517, label %bb.bv, label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  %i.ql = add i64 %i.it, -4
  %i.qm = load i16, ptr %i.gy, align 4, !tbaa !693
  %i.qn = icmp eq i16 %i.qm, 2
  br i1 %i.qn, label %bb.bw, label %.thread884

bb.bw:                                            ; preds = %bb.bv
  %i.qo = load i32, ptr %i.dz, align 8, !tbaa !683
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
  store i64 %storemerge, ptr %i.f, align 8, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #55
  br label %bb.cb

bb.bz:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #55
  br label %.thread988

.thread883:                                       ; preds = %ma_dr_wav_guid_equal.exit704.thread, %bb.bt
  %i.qs = load ptr, ptr %0, align 8, !tbaa !673
  %i.qt = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.qu = call i64 %i.qs(ptr noundef %i.qt, ptr noundef nonnull %i.f, i64 noundef 8) #55, !inline_history !2815 ; 2 uses
  %i.qv = add i64 %i.iu, %i.qu                    ; 2 uses
  store i64 %i.qv, ptr %i.d, align 8, !tbaa !164
  %.not516 = icmp eq i64 %i.qu, 8
  br i1 %.not516, label %bb.ca, label %.thread988

bb.ca:                                            ; preds = %.thread883
  %i.qw = add i64 %i.it, -8
  br label %bb.cb

bb.cb:                                            ; preds = %.thread884, %bb.bt, %bb.ca
  %i.qx = phi i64 [ %i.qk, %.thread884 ], [ %i.qv, %bb.ca ], [ %i.iu, %bb.bt ]
  %.1395 = phi i64 [ %i.ql, %.thread884 ], [ %i.qw, %bb.ca ], [ %i.it, %bb.bt ]
  %i.qy = load i32, ptr %i.ga, align 8, !tbaa !1080
  %i.qz = zext i32 %i.qy to i64
  %i.ra = add i64 %.1395, %i.qz                   ; 5 uses
  %i.rb = load ptr, ptr %i.gd, align 8, !tbaa !674 ; 2 uses
  %i.rc = load ptr, ptr %i.z, align 8, !tbaa !676 ; 2 uses
  %.not12.i714 = icmp eq i64 %i.ra, 0
  br i1 %.not12.i714, label %ma_dr_wav__seek_forward.exit721.thread887, label %.lr.ph.i715.preheader

.lr.ph.i715.preheader:                            ; preds = %bb.cb
  %i.rd = icmp ugt i64 %i.ra, 2147483647
  br i1 %i.rd, label %.lr.ph1398, label %ma_dr_wav__seek_forward.exit721

.lr.ph1398:                                       ; preds = %.lr.ph.i715.preheader, %.lr.ph.i715
  %.013.i7161397 = phi i64 [ %i.rf, %.lr.ph.i715 ], [ %i.ra, %.lr.ph.i715.preheader ]
  %i.re = call i32 %i.rb(ptr noundef %i.rc, i32 noundef 2147483647, i32 noundef 1) #55, !inline_history !2816
  %.not11.i720 = icmp eq i32 %i.re, 0
  br i1 %.not11.i720, label %.loopexit1323, label %.lr.ph.i715

.lr.ph.i715:                                      ; preds = %.lr.ph1398
  %i.rf = add i64 %.013.i7161397, -2147483647     ; 3 uses
  %i.rg = icmp ugt i64 %i.rf, 2147483647
  br i1 %i.rg, label %.lr.ph1398, label %ma_dr_wav__seek_forward.exit721

ma_dr_wav__seek_forward.exit721:                  ; preds = %.lr.ph.i715, %.lr.ph.i715.preheader
  %.013.i716.lcssa = phi i64 [ %i.ra, %.lr.ph.i715.preheader ], [ %i.rf, %.lr.ph.i715 ]
  %i.rh = trunc nuw nsw i64 %.013.i716.lcssa to i32
  %i.ri = call i32 %i.rb(ptr noundef %i.rc, i32 noundef %i.rh, i32 noundef 1) #55, !inline_history !2816
  %.not10.i717.not = icmp eq i32 %i.ri, 0
  br i1 %.not10.i717.not, label %.loopexit1323, label %ma_dr_wav__seek_forward.exit721.thread887

ma_dr_wav__seek_forward.exit721.thread887:        ; preds = %bb.cb, %ma_dr_wav__seek_forward.exit721
  %i.rj = add i64 %i.qx, %i.ra                    ; 2 uses
  store i64 %i.rj, ptr %i.d, align 8, !tbaa !164
  br label %.backedge

bb.cc:                                            ; preds = %.critedge542._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #55
  %i.rk = load i64, ptr %i.fz, align 8, !tbaa !1079 ; 2 uses
  br i1 %.2405, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.rl = icmp ult i64 %i.rk, 24
  br i1 %i.rl, label %ma_dr_wav_fourcc_equal.exit734.thread.jt1, label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %.not502 = icmp eq i64 %i.rk, 18
  br i1 %.not502, label %bb.cf, label %ma_dr_wav_fourcc_equal.exit734.thread.jt1

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.0392 = phi i64 [ 24, %bb.cd ], [ 18, %bb.ce ] ; 3 uses
  %i.rm = load ptr, ptr %0, align 8, !tbaa !673
  %i.rn = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.ro = call i64 %i.rm(ptr noundef %i.rn, ptr noundef nonnull %i.s, i64 noundef range(i64 0, -602) %.0392) #55, !inline_history !2815 ; 2 uses
  %i.rp = add i64 %i.iu, %i.ro                    ; 3 uses
  store i64 %i.rp, ptr %i.d, align 8, !tbaa !164
  %.not503 = icmp eq i64 %i.ro, %.0392
  br i1 %.not503, label %bb.cg, label %ma_dr_wav_fourcc_equal.exit734.thread.jt1

bb.cg:                                            ; preds = %bb.cf
  %i.rq = load i32, ptr %i.dz, align 8, !tbaa !683
  switch i32 %i.rq, label %bb.ci [
    i32 4, label %bb.ch
    i32 1, label %bb.ch
  ]

bb.ch:                                            ; preds = %bb.cg, %bb.cg
  %i.rr = load i8, ptr %i.gi, align 1, !tbaa !119
  %i.rs = zext i8 %i.rr to i16
  %i.rt = load i8, ptr %i.s, align 16, !tbaa !119
end_hunk_1
