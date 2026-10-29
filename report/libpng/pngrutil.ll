Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngrutil?download=true
inline.NumInlined: 112
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@png_handle_bKGD:bb.a
  %.not47 = icmp eq i32 %.highbits, 0
  br i1 %.not47, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.32) #13
  br label %bb.y

bb.s:                                             ; preds = %._crit_edge55, %bb.q
  %i.as = phi i8 [ %.pre57, %._crit_edge55 ], [ %i.aq, %bb.q ]
  store i8 0, ptr %3, align 2, !tbaa !185
  %i.at = zext i8 %.pre54 to i16
  %i.au = shl nuw i16 %i.at, 8
  %i.av = zext i8 %i.as to i16
  %i.aw = or disjoint i16 %i.au, %i.av            ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !191
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 6
  store i16 %i.aw, ptr %i.ay, align 2, !tbaa !190
  br label %bb.x

bb.t:                                             ; preds = %bb.n
  %i.az = icmp ult i8 %i.am, 9
  %.pre = load i8, ptr %i.a, align 1, !tbaa !8    ; 2 uses
  br i1 %i.az, label %bb.u, label %._crit_edge

._crit_edge:                                      ; preds = %bb.t
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.pre51 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !8
  %.phi.trans.insert52 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.pre53 = load i8, ptr %.phi.trans.insert52, align 1, !tbaa !8
  %i.ba = zext i8 %.pre51 to i16
  %i.bb = shl nuw i16 %i.ba, 8
  %i.bc = zext i8 %.pre53 to i16
  %i.bd = shl nuw i16 %i.bc, 8
  br label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.be = icmp ne i8 %.pre, 0
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = icmp ne i8 %i.bg, 0
  %or.cond = select i1 %i.be, i1 true, i1 %i.bh
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = icmp ne i8 %i.bj, 0
  %or.cond7 = select i1 %or.cond, i1 true, i1 %i.bk
  br i1 %or.cond7, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.33) #13
  br label %bb.y

bb.w:                                             ; preds = %._crit_edge, %bb.u
  %i.bl = phi i16 [ %i.bd, %._crit_edge ], [ 0, %bb.u ]
  %i.bm = phi i16 [ %i.bb, %._crit_edge ], [ 0, %bb.u ]
  store i8 0, ptr %3, align 2, !tbaa !185
  %i.bn = zext i8 %.pre to i16
  %i.bo = shl nuw i16 %i.bn, 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !8
  %i.br = zext i8 %i.bq to i16
  %i.bs = or disjoint i16 %i.bo, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 %i.bs, ptr %i.bt, align 2, !tbaa !188
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !8
  %i.bw = zext i8 %i.bv to i16
  %i.bx = or disjoint i16 %i.bm, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i16 %i.bx, ptr %i.by, align 2, !tbaa !189
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !8
  %i.cb = zext i8 %i.ca to i16
  %i.cc = or disjoint i16 %i.bl, %i.cb
  br label %bb.x

bb.x:                                             ; preds = %bb.l, %bb.m, %bb.s, %bb.w
  %.sink70.sroa.phi = phi ptr [ %.sink70.sroa.gep, %bb.s ], [ %.sink70.sroa.gep74, %bb.w ], [ %.sink70.sroa.gep75, %bb.m ], [ %.sink70.sroa.gep76, %bb.l ]
  %.sink68 = phi i16 [ %i.aw, %bb.s ], [ %i.cc, %bb.w ], [ 0, %bb.m ], [ %i.ag, %bb.l ]
  %.sink67.sroa.phi = phi ptr [ %.sink67.sroa.gep, %bb.s ], [ %.sink67.sroa.gep71, %bb.w ], [ %.sink67.sroa.gep72, %bb.m ], [ %.sink67.sroa.gep73, %bb.l ]
  %.sink65 = phi i16 [ %i.aw, %bb.s ], [ 0, %bb.w ], [ 0, %bb.m ], [ 0, %bb.l ]
  store i16 %.sink68, ptr %.sink70.sroa.phi, align 2, !tbaa !50
  store i16 %.sink65, ptr %.sink67.sroa.phi, align 2, !tbaa !50
  call void @png_set_bKGD(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3) #13
  br label %bb.y

bb.y:                                             ; preds = %png_crc_read.exit, %bb.x, %bb.v, %bb.r, %bb.k, %bb.f, %bb.c
  %.037 = phi i32 [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %bb.v ], [ 0, %bb.k ], [ 3, %bb.x ], [ 0, %bb.r ], [ 0, %png_crc_read.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.037
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @png_handle_cHRM(ptr noalias noundef %0, ptr noalias noundef %1, i32 %2) #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %png_crc_read.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 32) #13
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 32) #13
  br label %png_crc_read.exit

png_crc_read.exit:                                ; preds = %bb.a, %bb.b
  %i.c = call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %png_get_int_32_checked.exit, label %bb.e

png_get_int_32_checked.exit:                      ; preds = %png_crc_read.exit
  %i.d = load i8, ptr %i.a, align 16, !tbaa !8
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw i32 %i.e, 24                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8
  %i.i = zext i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.l = load i8, ptr %i.k, align 2, !tbaa !8
  %i.m = zext i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !8
  %i.q = zext i8 %i.p to i32
  %i.r = or disjoint i32 %i.j, %i.q
  %i.s = or disjoint i32 %i.r, %i.n
  %i.t = or disjoint i32 %i.s, %i.f               ; 2 uses
  %i.u = icmp slt i32 %i.f, 0
  %notsub.i = add i32 %i.t, -1
  %i.v = icmp sgt i32 %notsub.i, -1
  %or.cond.i.not = select i1 %i.u, i1 %i.v, i1 false ; 2 uses
  %spec.select41 = select i1 %or.cond.i.not, i32 0, i32 %i.t ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.x = load i8, ptr %i.w, align 4, !tbaa !8
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw i32 %i.y, 24                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.af = load i8, ptr %i.ae, align 2, !tbaa !8
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !8
  %i.ak = zext i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ad, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  %i.an = or disjoint i32 %i.am, %i.z             ; 2 uses
  %i.ao = icmp slt i32 %i.z, 0
  %notsub.i9 = add i32 %i.an, -1
  %i.ap = icmp sgt i32 %notsub.i9, -1
  %or.cond.i10.not = select i1 %i.ao, i1 %i.ap, i1 false ; 2 uses
  %.0.i11 = select i1 %or.cond.i10.not, i32 0, i32 %i.an ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ar = load <16 x i8>, ptr %i.aq, align 8, !tbaa !8 ; 4 uses
  %i.as = shufflevector <16 x i8> %i.ar, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.at = zext <4 x i8> %i.as to <4 x i32>
  %i.au = shl nuw <4 x i32> %i.at, splat (i32 24) ; 2 uses
  %i.av = shufflevector <16 x i8> %i.ar, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %i.aw = zext <4 x i8> %i.av to <4 x i32>
  %i.ax = shl nuw nsw <4 x i32> %i.aw, splat (i32 16)
  %i.ay = shufflevector <16 x i8> %i.ar, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.az = zext <4 x i8> %i.ay to <4 x i32>
  %i.ba = shl nuw nsw <4 x i32> %i.az, splat (i32 8)
  %i.bb = shufflevector <16 x i8> %i.ar, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.bc = zext <4 x i8> %i.bb to <4 x i32>
  %i.bd = or disjoint <4 x i32> %i.ax, %i.bc
  %i.be = or disjoint <4 x i32> %i.bd, %i.ba
  %i.bf = or disjoint <4 x i32> %i.be, %i.au      ; 2 uses
  %i.bg = icmp slt <4 x i32> %i.au, zeroinitializer
  %i.bh = add <4 x i32> %i.bf, splat (i32 -1)
  %i.bi = icmp sgt <4 x i32> %i.bh, splat (i32 -1)
  %i.bj = select <4 x i1> %i.bg, <4 x i1> %i.bi, <4 x i1> zeroinitializer
  %i.bk = freeze <4 x i1> %i.bj                   ; 2 uses
  %i.bl = select <4 x i1> %i.bk, <4 x i32> zeroinitializer, <4 x i32> %i.bf ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !8
  %i.bo = zext i8 %i.bn to i32
  %i.bp = shl nuw i32 %i.bo, 24                   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !8
  %i.bs = zext i8 %i.br to i32
  %i.bt = shl nuw nsw i32 %i.bs, 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.bv = load i8, ptr %i.bu, align 2, !tbaa !8
  %i.bw = zext i8 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 27
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !8
  %i.ca = zext i8 %i.bz to i32
  %i.cb = or disjoint i32 %i.bt, %i.ca
  %i.cc = or disjoint i32 %i.cb, %i.bx
  %i.cd = or disjoint i32 %i.cc, %i.bp            ; 2 uses
  %i.ce = icmp slt i32 %i.bp, 0
  %notsub.i29 = add i32 %i.cd, -1
  %i.cf = icmp sgt i32 %notsub.i29, -1
  %or.cond.i30.not = select i1 %i.ce, i1 %i.cf, i1 false ; 2 uses
  %.0.i31 = select i1 %or.cond.i30.not, i32 0, i32 %i.cd ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ch = load i8, ptr %i.cg, align 4, !tbaa !8
  %i.ci = zext i8 %i.ch to i32
  %i.cj = shl nuw i32 %i.ci, 24                   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 29
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !8
  %i.cm = zext i8 %i.cl to i32
  %i.cn = shl nuw nsw i32 %i.cm, 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  %i.cp = load i8, ptr %i.co, align 2, !tbaa !8
  %i.cq = zext i8 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 31
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !8
  %i.cu = zext i8 %i.ct to i32
  %i.cv = or disjoint i32 %i.cn, %i.cu
  %i.cw = or disjoint i32 %i.cv, %i.cr
  %i.cx = or disjoint i32 %i.cw, %i.cj            ; 3 uses
  %i.cy = icmp slt i32 %i.cj, 0
  %notsub.i33 = add i32 %i.cx, -1
  %i.cz = icmp sgt i32 %notsub.i33, -1
  %or.cond.i34.not61 = select i1 %i.cy, i1 %i.cz, i1 false
  %i.da = bitcast <4 x i1> %i.bk to i4
  %i.db = icmp ne i4 %i.da, 0
  %op.rdx = select i1 %i.db, i1 true, i1 %or.cond.i34.not61
  %op.rdx64.a = select i1 %op.rdx, i1 true, i1 %or.cond.i30.not
  %op.rdx64 = select i1 %op.rdx64.a, i1 true, i1 %or.cond.i10.not
  %op.rdx65 = select i1 %op.rdx64, i1 true, i1 %or.cond.i.not
  br i1 %op.rdx65, label %png_get_int_32_checked.exit36.thread, label %bb.c

png_get_int_32_checked.exit36.thread:             ; preds = %png_get_int_32_checked.exit
  call void @png_chunk_benign_error(ptr noundef %0, ptr noundef nonnull @.str.30) #13
  br label %bb.e

bb.c:                                             ; preds = %png_get_int_32_checked.exit
  %i.dc = extractelement <4 x i32> %i.bl, i64 0
  %i.dd = extractelement <4 x i32> %i.bl, i64 1
  %i.de = extractelement <4 x i32> %i.bl, i64 2
  %i.df = extractelement <4 x i32> %i.bl, i64 3
  call void @png_set_cHRM_fixed(ptr noundef %0, ptr noundef %1, i32 noundef %spec.select41, i32 noundef %.0.i11, i32 noundef %i.dc, i32 noundef %i.dd, i32 noundef %i.de, i32 noundef %i.df, i32 noundef %.0.i31, i32 noundef %i.cx) #13
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !38
  %i.di = and i32 %i.dh, 65536
  %.not8 = icmp eq i32 %i.di, 0
  br i1 %.not8, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 680
  store <4 x i32> %i.bl, ptr %i.dj, align 8, !tbaa !45
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i32 %.0.i31, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !45
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 700
  store i32 %i.cx, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !45
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 704
  store i32 %spec.select41, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !45
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 708
  store i32 %.0.i11, ptr %.sroa.17.0..sroa_idx, align 4, !tbaa !45
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %png_crc_read.exit, %png_get_int_32_checked.exit36.thread
  %.0 = phi i32 [ 0, %png_crc_read.exit ], [ 0, %png_get_int_32_checked.exit36.thread ], [ 3, %bb.d ], [ 3, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @png_handle_cICP(ptr noalias noundef %0, ptr noalias noundef %1, i32 %2) #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %png_crc_read.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 4) #13
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 4) #13
  br label %png_crc_read.exit

png_crc_read.exit:                                ; preds = %bb.a, %bb.b
  %i.c = call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %png_crc_read.exit
  %i.d = load i8, ptr %i.a, align 1, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !8
  call void @png_set_cICP(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %i.d, i8 noundef zeroext %i.f, i8 noundef zeroext %i.h, i8 noundef zeroext %i.j) #13
  br label %bb.d

bb.d:                                             ; preds = %png_crc_read.exit, %bb.c
  %.0 = phi i32 [ 3, %bb.c ], [ 0, %png_crc_read.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @png_handle_cLLI(ptr noalias noundef %0, ptr noalias noundef %1, i32 %2) #0 {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %png_crc_read.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 8) #13
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 8) #13
  br label %png_crc_read.exit

png_crc_read.exit:                                ; preds = %bb.a, %bb.b
  %i.c = call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %png_crc_read.exit
  %i.d = load i32, ptr %i.a, align 4
  %i.e = call i32 @llvm.bswap.i32(i32 %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = call i32 @llvm.bswap.i32(i32 %i.g)
  call void @png_set_cLLI_fixed(ptr noundef %0, ptr noundef %1, i32 noundef %i.e, i32 noundef %i.h) #13
  br label %bb.d

bb.d:                                             ; preds = %png_crc_read.exit, %bb.c
  %.0 = phi i32 [ 3, %bb.c ], [ 0, %png_crc_read.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @png_handle_eXIf(ptr noalias noundef %0, ptr noalias noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = zext i32 %2 to i64                       ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59, !alias.scope !194 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.e = load i64, ptr %i.d, align 8, !tbaa !37, !alias.scope !194
  %i.f = icmp ult i64 %i.e, %i.a
  br i1 %i.f, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.h = load i64, ptr %i.g, align 8, !tbaa !60, !alias.scope !194
  %i.i = icmp ult i64 %i.h, %i.a
  br i1 %i.i, label %bb.d, label %png_crc_read.exit

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !alias.scope !194
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.j = tail call noalias ptr @png_malloc_base(ptr noundef nonnull %0, i64 noundef range(i64 0, 4294967296) %i.a) #13 ; 4 uses
  %.not27.i = icmp eq ptr %i.j, null
  br i1 %.not27.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.j, i8 0, i64 range(i64 0, 4294967296) %i.a, i1 false)
  store ptr %i.j, ptr %i.b, align 8, !tbaa !59, !alias.scope !194
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store i64 %i.a, ptr %i.k, align 8, !tbaa !60, !alias.scope !194
  br label %png_crc_read.exit

bb.g:                                             ; preds = %bb.a, %bb.e
  %i.l = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.22) #13
  br label %bb.k

png_crc_read.exit:                                ; preds = %bb.f, %bb.c
  %.021.i = phi ptr [ %i.c, %bb.c ], [ %i.j, %bb.f ] ; 4 uses
  tail call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %.021.i, i64 noundef %i.a) #13
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %.021.i, i64 noundef %i.a) #13
  %i.m = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0)
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.h, label %bb.k

bb.h:                                             ; preds = %png_crc_read.exit
  %i.n = load i32, ptr %.021.i, align 1
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.n)
  switch i32 %i.o, label %bb.i [
    i32 1296891946, label %bb.j
    i32 1229531648, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.30) #13
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.h
  tail call void @png_set_eXIf_1(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %.021.i) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %png_crc_read.exit, %bb.j, %bb.g
  %.1 = phi i32 [ 0, %bb.g ], [ 0, %bb.i ], [ 3, %bb.j ], [ 0, %png_crc_read.exit ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @png_handle_gAMA(ptr noalias noundef %0, ptr noalias noundef %1, i32 %2) #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %png_crc_read.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 4) #13
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 4) #13
  br label %png_crc_read.exit

png_crc_read.exit:                                ; preds = %bb.a, %bb.b
  %i.c = call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %png_crc_read.exit
  %i.d = load i8, ptr %i.a, align 1, !tbaa !8
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw i32 %i.e, 24                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
end_hunk_0
