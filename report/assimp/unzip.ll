inline.NumInlined: 71
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@unzStringFileNameCompare:bb.a
.preheader:                                       ; preds = %bb.a, %bb.f
  %.024.i = phi ptr [ %i.c, %bb.f ], [ %0, %bb.a ] ; 2 uses
  %.023.i = phi ptr [ %i.e, %bb.f ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.024.i, i64 1
  %i.d = load i8, ptr %.024.i, align 1            ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.023.i, i64 1
  %i.f = load i8, ptr %.023.i, align 1            ; 3 uses
  %i.g = add i8 %i.d, -97
  %or.cond.i = icmp ult i8 %i.g, 26
  %i.h = add nsw i8 %i.d, -32
  %spec.select.i = select i1 %or.cond.i, i8 %i.h, i8 %i.d ; 3 uses
  %i.i = add i8 %i.f, -97
  %or.cond5.i = icmp ult i8 %i.i, 26
  %i.j = add nsw i8 %i.f, -32
  %.021.i = select i1 %or.cond5.i, i8 %i.j, i8 %i.f ; 4 uses
  %i.k = icmp eq i8 %spec.select.i, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader
  %i.l = icmp ne i8 %.021.i, 0
  %i.m = sext i1 %i.l to i32
  br label %strcmpcasenosensitive_internal.exit

bb.d:                                             ; preds = %.preheader
  %i.n = icmp eq i8 %.021.i, 0
  br i1 %i.n, label %strcmpcasenosensitive_internal.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp slt i8 %spec.select.i, %.021.i
  br i1 %i.o, label %strcmpcasenosensitive_internal.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp sgt i8 %spec.select.i, %.021.i
  br i1 %.not.i, label %strcmpcasenosensitive_internal.exit, label %.preheader

strcmpcasenosensitive_internal.exit:              ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.m, %bb.c ], [ 1, %bb.f ], [ 1, %bb.d ], [ -1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noundef ptr @unzOpen2(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.zlib_filefunc64_32_def_s, align 8 ; 4 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @fill_zlib_filefunc64_32_def_from_filefunc32(ptr noundef nonnull %2, ptr noundef nonnull %1) #14
  %i.a = call fastcc ptr @unzOpenInternal(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call fastcc ptr @unzOpenInternal(ptr noundef %0, ptr noundef null, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @fill_zlib_filefunc64_32_def_from_filefunc32(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @unzOpenInternal(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 5 uses
  %i.d = alloca [2 x i8], align 2                 ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 5 uses
  %i.f = alloca [4 x i8], align 4                 ; 5 uses
  %i.g = alloca [2 x i8], align 2                 ; 5 uses
  %i.h = alloca [2 x i8], align 2                 ; 5 uses
  %i.i = alloca [2 x i8], align 2                 ; 5 uses
  %i.j = alloca [2 x i8], align 2                 ; 5 uses
  %i.k = alloca [4 x i8], align 1                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [4 x i8], align 4                 ; 5 uses
  %i.q = alloca [4 x i8], align 4                 ; 5 uses
  %i.r = alloca [2 x i8], align 1                 ; 4 uses
  %i.s = alloca [2 x i8], align 1                 ; 4 uses
  %i.t = alloca [8 x i8], align 1                 ; 4 uses
  %i.u = alloca [4 x i8], align 1                 ; 4 uses
  %i.v = alloca [4 x i8], align 4                 ; 4 uses
  %i.w = alloca [4 x i8], align 1                 ; 4 uses
  %3 = alloca %struct.unz64_s, align 8            ; 66 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.y = icmp eq ptr %1, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @fill_fopen64_filefunc(ptr noundef nonnull %3) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i32 %2, ptr %i.z, align 8
  %i.aa = call ptr @call_zopen64(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 5) #14 ; 18 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 23 uses
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = icmp eq ptr %i.aa, null
  br i1 %i.ac, label %bb.bg, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = call i64 @call_zseek64(ptr noundef nonnull %3, ptr noundef nonnull %i.aa, i64 noundef 0, i32 noundef 2) #14
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %bb.f, label %unz64local_SearchCentralDir64.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ae = call i64 @call_ztell64(ptr noundef nonnull %3, ptr noundef nonnull %i.aa) #14 ; 3 uses
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.ae, i64 65535) ; 2 uses
  %i.af = call noalias dereferenceable_or_null(1028) ptr @malloc(i64 noundef 1028) #15 ; 6 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %unz64local_SearchCentralDir64.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.ah = icmp ugt i64 %i.ae, 4
  br i1 %i.ah, label %.lr.ph105.i, label %.thread92.i

.lr.ph105.i:                                      ; preds = %.preheader.i
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 16 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 31 uses
  br label %bb.g

.thread92.i:                                      ; preds = %.thread99.i, %.preheader.i
  call void @free(ptr noundef nonnull %i.af) #14
  br label %unz64local_SearchCentralDir64.exit.thread

bb.g:                                             ; preds = %.thread99.i, %.lr.ph105.i
  %.061104.i = phi i64 [ 4, %.lr.ph105.i ], [ %spec.select..i, %.thread99.i ]
  %i.ak = add nuw nsw i64 %.061104.i, 1024        ; 2 uses
  %spec.select..i = call i64 @llvm.umin.i64(i64 %i.ak, i64 %spec.select.i) ; 3 uses
  %i.al = sub i64 %i.ae, %spec.select..i          ; 2 uses
  %i.am = call i64 @llvm.umin.i64(i64 %spec.select..i, i64 1028) ; 3 uses
  %i.an = call i64 @call_zseek64(ptr noundef nonnull %3, ptr noundef nonnull %i.aa, i64 noundef %i.al, i32 noundef 0) #14
  %.not70.i = icmp eq i64 %i.an, 0
  br i1 %.not70.i, label %bb.h, label %.thread95.i

bb.h:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %i.ai, align 8
  %i.ap = load ptr, ptr %i.aj, align 8
  %i.aq = call i64 %i.ao(ptr noundef %i.ap, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.af, i64 noundef %i.am) #14, !inline_history !3
  %.not71.i = icmp eq i64 %i.aq, %i.am
  br i1 %.not71.i, label %.lr.ph.preheader.i, label %.thread95.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %i.ar = add nuw nsw i64 %i.am, 4294967292
  %i.as = and i64 %i.ar, 4294967295
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.as, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.l ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv.i ; 4 uses
  %i.au = load i8, ptr %i.at, align 1
  %i.av = icmp eq i8 %i.au, 80
  br i1 %i.av, label %bb.i, label %bb.l

bb.i:                                             ; preds = %.lr.ph.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = icmp eq i8 %i.ax, 75
  br i1 %i.ay, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = icmp eq i8 %i.ba, 6
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 3
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = icmp eq i8 %i.bd, 7
  br i1 %i.be, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.bf = trunc nuw i64 %indvars.iv.i to i32
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph.i, label %.thread99.i

bb.m:                                             ; preds = %bb.k
  %4 = and i64 %indvars.iv.i, 4294967295
  %i.bh = add i64 %4, %i.al                       ; 2 uses
  %.not72.i = icmp eq i64 %i.bh, -1
  br i1 %.not72.i, label %.thread99.i, label %bb.n

.thread99.i:                                      ; preds = %bb.l, %bb.m
  %i.bi = icmp ult i64 %i.ak, %spec.select.i
  br i1 %i.bi, label %bb.g, label %.thread92.i

.thread95.i:                                      ; preds = %bb.h, %bb.g
  call void @free(ptr noundef nonnull %i.af) #14
  br label %unz64local_SearchCentralDir64.exit.thread

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %i.af) #14
  %i.bj = call i64 @call_zseek64(ptr noundef nonnull %3, ptr noundef nonnull %i.aa, i64 noundef %i.bh, i32 noundef 0) #14
  %.not73.i = icmp eq i64 %i.bj, 0
  br i1 %.not73.i, label %bb.o, label %unz64local_SearchCentralDir64.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #14
  %i.bk = load ptr, ptr %i.ai, align 8
  %i.bl = load ptr, ptr %i.aj, align 8
  %i.bm = call i64 %i.bk(ptr noundef %i.bl, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.w, i64 noundef 4) #14, !inline_history !4
  %i.bn = and i64 %i.bm, 4294967295
  %i.bo = icmp eq i64 %i.bn, 4
  br i1 %i.bo, label %unz64local_getLong.exit.thread.i, label %unz64local_getLong.exit.i

unz64local_getLong.exit.thread.i:                 ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #14
  br label %bb.p

unz64local_getLong.exit.i:                        ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = load ptr, ptr %i.aj, align 8
  %i.bs = call i32 %i.bq(ptr noundef %i.br, ptr noundef nonnull %i.aa) #14, !inline_history !4
  %.not.i.not.i = icmp eq i32 %i.bs, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #14
  br i1 %.not.i.not.i, label %bb.p, label %unz64local_SearchCentralDir64.exit.thread

bb.p:                                             ; preds = %unz64local_getLong.exit.i, %unz64local_getLong.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #14
  %i.bt = load ptr, ptr %i.ai, align 8
  %i.bu = load ptr, ptr %i.aj, align 8
  %i.bv = call i64 %i.bt(ptr noundef %i.bu, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.v, i64 noundef 4) #14, !inline_history !4
  %i.bw = and i64 %i.bv, 4294967295
  %i.bx = icmp eq i64 %i.bw, 4
  br i1 %i.bx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.by = load i32, ptr %i.v, align 4
  br label %unz64local_getLong.exit89.i

bb.r:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = load ptr, ptr %i.aj, align 8
  %i.cc = call i32 %i.ca(ptr noundef %i.cb, ptr noundef nonnull %i.aa) #14, !inline_history !4
  br label %unz64local_getLong.exit89.i

unz64local_getLong.exit89.i:                      ; preds = %bb.r, %bb.q
  %.0.i88.in.i = phi i32 [ %i.by, %bb.q ], [ %i.cc, %bb.r ]
  %.0.i88.i = icmp eq i32 %.0.i88.in.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #14
  br i1 %.0.i88.i, label %bb.s, label %unz64local_SearchCentralDir64.exit.thread

bb.s:                                             ; preds = %unz64local_getLong.exit89.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.cd = load ptr, ptr %i.ai, align 8
  %i.ce = load ptr, ptr %i.aj, align 8
  %i.cf = call i64 %i.cd(ptr noundef %i.ce, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.a, i64 noundef 8) #14, !inline_history !5
  %i.cg = and i64 %i.cf, 4294967295
  %i.ch = icmp eq i64 %i.cg, 8
  br i1 %i.ch, label %unz64local_getLong64.exit146.thread, label %unz64local_getLong64.exit146

unz64local_getLong64.exit146.thread:              ; preds = %bb.s
  %i.ci = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.t

unz64local_getLong64.exit146:                     ; preds = %bb.s
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = load ptr, ptr %i.aj, align 8
  %i.cm = call i32 %i.ck(ptr noundef %i.cl, ptr noundef nonnull %i.aa) #14, !inline_history !5
  %.not.i143.not = icmp eq i32 %i.cm, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br i1 %.not.i143.not, label %bb.t, label %unz64local_SearchCentralDir64.exit.thread

bb.t:                                             ; preds = %unz64local_getLong64.exit146.thread, %unz64local_getLong64.exit146
  %.0166172 = phi i64 [ %i.ci, %unz64local_getLong64.exit146.thread ], [ 0, %unz64local_getLong64.exit146 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.cn = load ptr, ptr %i.ai, align 8
  %i.co = load ptr, ptr %i.aj, align 8
  %i.cp = call i64 %i.cn(ptr noundef %i.co, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.b, i64 noundef 4) #14, !inline_history !6
  %i.cq = and i64 %i.cp, 4294967295
  %i.cr = icmp eq i64 %i.cq, 4
  br i1 %i.cr, label %unz64local_getLong.exit142, label %unz64local_getLong.exit142.thread

unz64local_getLong.exit142.thread:                ; preds = %bb.t
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = load ptr, ptr %i.aj, align 8
  %i.cv = call i32 %i.ct(ptr noundef %i.cu, ptr noundef nonnull %i.aa) #14, !inline_history !6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %unz64local_SearchCentralDir64.exit.thread

unz64local_getLong.exit142:                       ; preds = %bb.t
  %i.cw = load i32, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %.not79.i = icmp eq i32 %i.cw, 1
  br i1 %.not79.i, label %bb.u, label %unz64local_SearchCentralDir64.exit.thread

bb.u:                                             ; preds = %unz64local_getLong.exit142
  %i.cx = call i64 @call_zseek64(ptr noundef nonnull %3, ptr noundef nonnull %i.aa, i64 noundef %.0166172, i32 noundef 0) #14
  %.not80.i = icmp eq i64 %i.cx, 0
  br i1 %.not80.i, label %bb.v, label %unz64local_SearchCentralDir64.exit.thread

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.cy = load ptr, ptr %i.ai, align 8
  %i.cz = load ptr, ptr %i.aj, align 8
  %i.da = call i64 %i.cy(ptr noundef %i.cz, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.c, i64 noundef 4) #14, !inline_history !6
  %i.db = and i64 %i.da, 4294967295
  %i.dc = icmp eq i64 %i.db, 4
  br i1 %i.dc, label %unz64local_getLong.exit138, label %unz64local_getLong.exit138.thread

unz64local_getLong.exit138.thread:                ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = load ptr, ptr %i.aj, align 8
  %i.dg = call i32 %i.de(ptr noundef %i.df, ptr noundef nonnull %i.aa) #14, !inline_history !6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %unz64local_SearchCentralDir64.exit.thread

unz64local_getLong.exit138:                       ; preds = %bb.v
  %i.dh = load i32, ptr %i.c, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %.not82.i = icmp ne i32 %i.dh, 101075792
  %.not = icmp eq i64 %.0166172, -1
  %or.cond293 = select i1 %.not82.i, i1 true, i1 %.not
  br i1 %or.cond293, label %unz64local_SearchCentralDir64.exit.thread, label %bb.w

bb.w:                                             ; preds = %unz64local_getLong.exit138
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 332
  store i32 1, ptr %i.di, align 4
  %i.dj = load ptr, ptr %i.ab, align 8
  %i.dk = call i64 @call_zseek64(ptr noundef nonnull %3, ptr noundef %i.dj, i64 noundef %.0166172, i32 noundef 0) #14
  %.not41 = icmp ne i64 %i.dk, 0
  %spec.select = sext i1 %.not41 to i32
  %i.dl = load ptr, ptr %i.ab, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #14
  %i.dm = load ptr, ptr %i.ai, align 8
  %i.dn = load ptr, ptr %i.aj, align 8
  %i.do = call i64 %i.dm(ptr noundef %i.dn, ptr noundef %i.dl, ptr noundef nonnull %i.u, i64 noundef 4) #14, !inline_history !6
  %i.dp = and i64 %i.do, 4294967295
  %i.dq = icmp eq i64 %i.dp, 4
  br i1 %i.dq, label %unz64local_getLong.exit.thread, label %unz64local_getLong.exit

unz64local_getLong.exit.thread:                   ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #14
  br label %bb.x

unz64local_getLong.exit:                          ; preds = %bb.w
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = load ptr, ptr %i.aj, align 8
  %i.du = call i32 %i.ds(ptr noundef %i.dt, ptr noundef %i.dl) #14, !inline_history !6
  %.fr = freeze i32 %i.du
  %.not.i59.not = icmp eq i32 %.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #14
  br i1 %.not.i59.not, label %bb.x, label %bb.y

bb.x:                                             ; preds = %unz64local_getLong.exit.thread, %unz64local_getLong.exit
  br label %bb.y

bb.y:                                             ; preds = %unz64local_getLong.exit, %bb.x
  %i.dv = phi i32 [ %spec.select, %bb.x ], [ -1, %unz64local_getLong.exit ]
  %i.dw = load ptr, ptr %i.ab, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #14
  %i.dx = load ptr, ptr %i.ai, align 8
  %i.dy = load ptr, ptr %i.aj, align 8
  %i.dz = call i64 %i.dx(ptr noundef %i.dy, ptr noundef %i.dw, ptr noundef nonnull %i.t, i64 noundef 8) #14, !inline_history !5
  %i.ea = and i64 %i.dz, 4294967295
  %i.eb = icmp eq i64 %i.ea, 8
  br i1 %i.eb, label %unz64local_getLong64.exit.thread, label %unz64local_getLong64.exit

unz64local_getLong64.exit.thread:                 ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #14
  br label %bb.z

unz64local_getLong64.exit:                        ; preds = %bb.y
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = load ptr, ptr %i.aj, align 8
  %i.ef = call i32 %i.ed(ptr noundef %i.ee, ptr noundef %i.dw) #14, !inline_history !5
  %.fr303 = freeze i32 %i.ef
  %.not.i60.not = icmp eq i32 %.fr303, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #14
  br i1 %.not.i60.not, label %bb.z, label %bb.aa

end_hunk_0
begin_hunk_1_@unzOpenInternal:bb.a

unz64local_getLong64.exit81.thread:               ; preds = %bb.ag
  %i.gk = load i64, ptr %i.o, align 8
  store i64 %i.gk, ptr %i.ge, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  br label %bb.ah

unz64local_getLong64.exit81:                      ; preds = %bb.ag
  store i64 0, ptr %i.ge, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = load ptr, ptr %i.aj, align 8
  %i.go = call i32 %i.gm(ptr noundef %i.gn, ptr noundef %i.gd) #14, !inline_history !5
  %.fr308 = freeze i32 %i.go
  %.not.i78.not = icmp eq i32 %.fr308, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  br i1 %.not.i78.not, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %unz64local_getLong64.exit81.thread, %unz64local_getLong64.exit81
  br label %bb.ai

bb.ai:                                            ; preds = %unz64local_getLong64.exit81, %bb.ah
  %i.gp = phi i32 [ %i.gc, %bb.ah ], [ -1, %unz64local_getLong64.exit81 ] ; 2 uses
  %i.gq = load ptr, ptr %i.ab, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #14
  %i.gr = load ptr, ptr %i.ai, align 8
  %i.gs = load ptr, ptr %i.aj, align 8
  %i.gt = call i64 %i.gr(ptr noundef %i.gs, ptr noundef %i.gq, ptr noundef nonnull %i.n, i64 noundef 8) #14, !inline_history !5
  %i.gu = and i64 %i.gt, 4294967295
  %i.gv = icmp eq i64 %i.gu, 8
  br i1 %i.gv, label %unz64local_getLong64.exit85.thread, label %unz64local_getLong64.exit85

unz64local_getLong64.exit85.thread:               ; preds = %bb.ai
  %i.gw = load i64, ptr %i.n, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  br label %bb.aj

unz64local_getLong64.exit85:                      ; preds = %bb.ai
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = load ptr, ptr %i.aj, align 8
  %i.ha = call i32 %i.gy(ptr noundef %i.gz, ptr noundef %i.gq) #14, !inline_history !5
  %.fr309 = freeze i32 %i.ha
  %.not.i82.not = icmp eq i32 %.fr309, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  %spec.select296 = select i1 %.not.i82.not, i32 %i.gp, i32 -1
  br label %bb.aj

bb.aj:                                            ; preds = %unz64local_getLong64.exit85, %unz64local_getLong64.exit85.thread
  %.0218 = phi i64 [ 0, %unz64local_getLong64.exit85 ], [ %i.gw, %unz64local_getLong64.exit85.thread ]
  %i.hb = phi i32 [ %spec.select296, %unz64local_getLong64.exit85 ], [ %i.gp, %unz64local_getLong64.exit85.thread ]
  %i.hc = load i64, ptr %i.ge, align 8
  %i.hd = icmp ne i64 %.0218, %i.hc
  %or.cond = select i1 %i.hd, i1 true, i1 %.0158207
  %or.cond3 = select i1 %or.cond, i1 true, i1 %.0160200
  %.9 = select i1 %or.cond3, i32 -103, i32 %i.hb
  %i.he = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  %i.hg = load ptr, ptr %i.ai, align 8
  %i.hh = load ptr, ptr %i.aj, align 8
  %i.hi = call i64 %i.hg(ptr noundef %i.hh, ptr noundef %i.he, ptr noundef nonnull %i.m, i64 noundef 8) #14, !inline_history !5
  %i.hj = and i64 %i.hi, 4294967295
  %i.hk = icmp eq i64 %i.hj, 8
  br i1 %i.hk, label %unz64local_getLong64.exit89.thread, label %unz64local_getLong64.exit89

unz64local_getLong64.exit89.thread:               ; preds = %bb.aj
  %i.hl = load i64, ptr %i.m, align 8
  store i64 %i.hl, ptr %i.hf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  br label %bb.ak

unz64local_getLong64.exit89:                      ; preds = %bb.aj
  store i64 0, ptr %i.hf, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = load ptr, ptr %i.aj, align 8
  %i.hp = call i32 %i.hn(ptr noundef %i.ho, ptr noundef %i.he) #14, !inline_history !5
  %.fr310 = freeze i32 %i.hp
  %.not.i86.not = icmp eq i32 %.fr310, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  br i1 %.not.i86.not, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %unz64local_getLong64.exit89.thread, %unz64local_getLong64.exit89
  br label %bb.al

bb.al:                                            ; preds = %unz64local_getLong64.exit89, %bb.ak
  %i.hq = phi i32 [ %.9, %bb.ak ], [ -1, %unz64local_getLong64.exit89 ]
  %i.hr = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  %i.ht = load ptr, ptr %i.ai, align 8
  %i.hu = load ptr, ptr %i.aj, align 8
  %i.hv = call i64 %i.ht(ptr noundef %i.hu, ptr noundef %i.hr, ptr noundef nonnull %i.l, i64 noundef 8) #14, !inline_history !5
  %i.hw = and i64 %i.hv, 4294967295
  %i.hx = icmp eq i64 %i.hw, 8
  br i1 %i.hx, label %unz64local_getLong64.exit93.thread, label %unz64local_getLong64.exit93

unz64local_getLong64.exit93.thread:               ; preds = %bb.al
  %i.hy = load i64, ptr %i.l, align 8
  store i64 %i.hy, ptr %i.hs, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  br label %bb.am

unz64local_getLong64.exit93:                      ; preds = %bb.al
  store i64 0, ptr %i.hs, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ia = load ptr, ptr %i.hz, align 8
  %i.ib = load ptr, ptr %i.aj, align 8
  %i.ic = call i32 %i.ia(ptr noundef %i.ib, ptr noundef %i.hr) #14, !inline_history !5
  %.fr311 = freeze i32 %i.ic
  %.not.i90.not = icmp eq i32 %.fr311, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  br i1 %.not.i90.not, label %bb.am, label %bb.an

bb.am:                                            ; preds = %unz64local_getLong64.exit93.thread, %unz64local_getLong64.exit93
  br label %bb.an

bb.an:                                            ; preds = %unz64local_getLong64.exit93, %bb.am
  %i.id = phi i32 [ %i.hq, %bb.am ], [ -1, %unz64local_getLong64.exit93 ]
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i64 0, ptr %i.ie, align 8
  br label %bb.be

unz64local_SearchCentralDir64.exit.thread:        ; preds = %unz64local_getLong.exit138.thread, %unz64local_getLong.exit142.thread, %.thread92.i, %unz64local_getLong.exit142, %unz64local_getLong64.exit146, %bb.u, %unz64local_getLong.exit89.i, %unz64local_getLong.exit.i, %bb.n, %.thread95.i, %bb.f, %bb.e, %unz64local_getLong.exit138
  %i.if = load ptr, ptr %i.ab, align 8            ; 4 uses
  %i.ig = call i64 @call_zseek64(ptr noundef nonnull %3, ptr noundef %i.if, i64 noundef 0, i32 noundef 2) #14
  %.not.i94 = icmp eq i64 %i.ig, 0
  br i1 %.not.i94, label %bb.ao, label %unz64local_SearchCentralDir.exit.thread

bb.ao:                                            ; preds = %unz64local_SearchCentralDir64.exit.thread
  %i.ih = call i64 @call_ztell64(ptr noundef nonnull %3, ptr noundef %i.if) #14 ; 3 uses
  %spec.select.i95 = call i64 @llvm.umin.i64(i64 %i.ih, i64 65535) ; 2 uses
  %i.ii = call noalias dereferenceable_or_null(1028) ptr @malloc(i64 noundef 1028) #15 ; 4 uses
  %i.ij = icmp eq ptr %i.ii, null
  br i1 %i.ij, label %unz64local_SearchCentralDir.exit.thread, label %.preheader.i96

.preheader.i96:                                   ; preds = %bb.ao
  %i.ik = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.il = icmp ugt i64 %i.ih, 4
  br i1 %i.il, label %.lr.ph66.i, label %unz64local_SearchCentralDir.exit.thread.sink.split

.lr.ph66.i:                                       ; preds = %.preheader.i96
  %i.im = getelementptr inbounds nuw i8, ptr %3, i64 56
  br label %bb.ap

bb.ap:                                            ; preds = %.thread60.i, %.lr.ph66.i
  %.04665.i = phi i64 [ 4, %.lr.ph66.i ], [ %spec.select..i97, %.thread60.i ]
  %i.in = add nuw nsw i64 %.04665.i, 1024         ; 2 uses
  %spec.select..i97 = call i64 @llvm.umin.i64(i64 %i.in, i64 %spec.select.i95) ; 3 uses
  %i.io = sub i64 %i.ih, %spec.select..i97        ; 2 uses
  %i.ip = call i64 @llvm.umin.i64(i64 %spec.select..i97, i64 1028) ; 3 uses
  %i.iq = call i64 @call_zseek64(ptr noundef nonnull %3, ptr noundef %i.if, i64 noundef %i.io, i32 noundef 0) #14
  %.not55.i = icmp eq i64 %i.iq, 0
  br i1 %.not55.i, label %bb.aq, label %unz64local_SearchCentralDir.exit.thread.sink.split

bb.aq:                                            ; preds = %bb.ap
  %i.ir = load ptr, ptr %i.ik, align 8
  %i.is = load ptr, ptr %i.im, align 8
  %i.it = call i64 %i.ir(ptr noundef %i.is, ptr noundef %i.if, ptr noundef nonnull %i.ii, i64 noundef %i.ip) #14, !inline_history !8
  %.not56.i = icmp eq i64 %i.it, %i.ip
  br i1 %.not56.i, label %.lr.ph.preheader.i98, label %unz64local_SearchCentralDir.exit.thread.sink.split

.lr.ph.preheader.i98:                             ; preds = %bb.aq
  %i.iu = add nuw nsw i64 %i.ip, 4294967292
  %i.iv = and i64 %i.iu, 4294967295
  br label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %bb.au, %.lr.ph.preheader.i98
  %indvars.iv.i100 = phi i64 [ %i.iv, %.lr.ph.preheader.i98 ], [ %indvars.iv.next.i101, %bb.au ] ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ii, i64 %indvars.iv.i100 ; 4 uses
  %i.ix = load i8, ptr %i.iw, align 1
  %i.iy = icmp eq i8 %i.ix, 80
  br i1 %i.iy, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %.lr.ph.i99
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 1
  %i.ja = load i8, ptr %i.iz, align 1
  %i.jb = icmp eq i8 %i.ja, 75
  br i1 %i.jb, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iw, i64 2
  %i.jd = load i8, ptr %i.jc, align 1
  %i.je = icmp eq i8 %i.jd, 5
  br i1 %i.je, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iw, i64 3
  %i.jg = load i8, ptr %i.jf, align 1
  %i.jh = icmp eq i8 %i.jg, 6
  br i1 %i.jh, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %.lr.ph.i99
  %indvars.iv.next.i101 = add nsw i64 %indvars.iv.i100, -1
  %i.ji = trunc nuw i64 %indvars.iv.i100 to i32
  %i.jj = icmp sgt i32 %i.ji, 0
  br i1 %i.jj, label %.lr.ph.i99, label %.thread60.i

bb.av:                                            ; preds = %bb.at
  %5 = and i64 %indvars.iv.i100, 4294967295
  %i.jk = add i64 %5, %i.io                       ; 2 uses
  %.not57.i = icmp eq i64 %i.jk, -1
  br i1 %.not57.i, label %.thread60.i, label %unz64local_SearchCentralDir.exit.thread.sink.split

.thread60.i:                                      ; preds = %bb.au, %bb.av
  %i.jl = icmp ult i64 %i.in, %spec.select.i95
  br i1 %i.jl, label %bb.ap, label %unz64local_SearchCentralDir.exit.thread.sink.split

unz64local_SearchCentralDir.exit.thread.sink.split: ; preds = %bb.av, %.thread60.i, %bb.ap, %bb.aq, %.preheader.i96
  %.045.i229.ph = phi i64 [ -1, %.preheader.i96 ], [ -1, %bb.aq ], [ -1, %bb.ap ], [ -1, %.thread60.i ], [ %i.jk, %bb.av ]
  %.ph = phi i32 [ -1, %.preheader.i96 ], [ -1, %bb.aq ], [ -1, %bb.ap ], [ -1, %.thread60.i ], [ 0, %bb.av ]
  call void @free(ptr noundef nonnull %i.ii) #14
  br label %unz64local_SearchCentralDir.exit.thread

unz64local_SearchCentralDir.exit.thread:          ; preds = %unz64local_SearchCentralDir.exit.thread.sink.split, %bb.ao, %unz64local_SearchCentralDir64.exit.thread
  %.045.i229 = phi i64 [ -1, %unz64local_SearchCentralDir64.exit.thread ], [ -1, %bb.ao ], [ %.045.i229.ph, %unz64local_SearchCentralDir.exit.thread.sink.split ] ; 3 uses
  %i.jm = phi i32 [ -1, %unz64local_SearchCentralDir64.exit.thread ], [ -1, %bb.ao ], [ %.ph, %unz64local_SearchCentralDir.exit.thread.sink.split ]
  %i.jn = getelementptr inbounds nuw i8, ptr %3, i64 332
  store i32 0, ptr %i.jn, align 4
  %i.jo = load ptr, ptr %i.ab, align 8
  %i.jp = call i64 @call_zseek64(ptr noundef nonnull %3, ptr noundef %i.jo, i64 noundef %.045.i229, i32 noundef 0) #14
  %.not32 = icmp eq i64 %i.jp, 0
  %.13 = select i1 %.not32, i32 %i.jm, i32 -1
  %i.jq = load ptr, ptr %i.ab, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  %i.jr = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %i.js = load ptr, ptr %i.jr, align 8
  %i.jt = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 16 uses
  %i.ju = load ptr, ptr %i.jt, align 8
  %i.jv = call i64 %i.js(ptr noundef %i.ju, ptr noundef %i.jq, ptr noundef nonnull %i.k, i64 noundef 4) #14, !inline_history !6
  %i.jw = and i64 %i.jv, 4294967295
  %i.jx = icmp eq i64 %i.jw, 4
  br i1 %i.jx, label %unz64local_getLong.exit105.thread, label %unz64local_getLong.exit105

unz64local_getLong.exit105.thread:                ; preds = %unz64local_SearchCentralDir.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  br label %bb.aw

unz64local_getLong.exit105:                       ; preds = %unz64local_SearchCentralDir.exit.thread
  %i.jy = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.jz = load ptr, ptr %i.jy, align 8
  %i.ka = load ptr, ptr %i.jt, align 8
  %i.kb = call i32 %i.jz(ptr noundef %i.ka, ptr noundef %i.jq) #14, !inline_history !6
  %.fr312 = freeze i32 %i.kb
  %.not.i102.not = icmp eq i32 %.fr312, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  br i1 %.not.i102.not, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %unz64local_getLong.exit105.thread, %unz64local_getLong.exit105
  br label %bb.ax

bb.ax:                                            ; preds = %unz64local_getLong.exit105, %bb.aw
  %i.kc = phi i32 [ %.13, %bb.aw ], [ -1, %unz64local_getLong.exit105 ] ; 2 uses
  %i.kd = load ptr, ptr %i.ab, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  %i.ke = load ptr, ptr %i.jr, align 8
  %i.kf = load ptr, ptr %i.jt, align 8
  %i.kg = call i64 %i.ke(ptr noundef %i.kf, ptr noundef %i.kd, ptr noundef nonnull %i.j, i64 noundef 2) #14, !inline_history !7
  %i.kh = and i64 %i.kg, 4294967295
  %i.ki = icmp eq i64 %i.kh, 2
  br i1 %i.ki, label %unz64local_getShort.exit109.thread, label %unz64local_getShort.exit109

unz64local_getShort.exit109.thread:               ; preds = %bb.ax
  %i.kj = load i16, ptr %i.j, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  %i.kk = icmp ne i16 %i.kj, 0
  br label %bb.ay

unz64local_getShort.exit109:                      ; preds = %bb.ax
  %i.kl = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.km = load ptr, ptr %i.kl, align 8
  %i.kn = load ptr, ptr %i.jt, align 8
  %i.ko = call i32 %i.km(ptr noundef %i.kn, ptr noundef %i.kd) #14, !inline_history !7
  %.fr313 = freeze i32 %i.ko
  %.not.i106.not = icmp eq i32 %.fr313, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  %spec.select297 = select i1 %.not.i106.not, i32 %i.kc, i32 -1
  br label %bb.ay

bb.ay:                                            ; preds = %unz64local_getShort.exit109, %unz64local_getShort.exit109.thread
  %.1161243 = phi i1 [ false, %unz64local_getShort.exit109 ], [ %i.kk, %unz64local_getShort.exit109.thread ]
  %i.kp = phi i32 [ %spec.select297, %unz64local_getShort.exit109 ], [ %i.kc, %unz64local_getShort.exit109.thread ] ; 2 uses
  %i.kq = load ptr, ptr %i.ab, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  %i.kr = load ptr, ptr %i.jr, align 8
  %i.ks = load ptr, ptr %i.jt, align 8
  %i.kt = call i64 %i.kr(ptr noundef %i.ks, ptr noundef %i.kq, ptr noundef nonnull %i.i, i64 noundef 2) #14, !inline_history !7
  %i.ku = and i64 %i.kt, 4294967295
  %i.kv = icmp eq i64 %i.ku, 2
  br i1 %i.kv, label %unz64local_getShort.exit113.thread, label %unz64local_getShort.exit113

unz64local_getShort.exit113.thread:               ; preds = %bb.ay
  %i.kw = load i16, ptr %i.i, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  %i.kx = icmp ne i16 %i.kw, 0
  br label %bb.az

unz64local_getShort.exit113:                      ; preds = %bb.ay
  %i.ky = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.kz = load ptr, ptr %i.ky, align 8
  %i.la = load ptr, ptr %i.jt, align 8
  %i.lb = call i32 %i.kz(ptr noundef %i.la, ptr noundef %i.kq) #14, !inline_history !7
  %.fr314 = freeze i32 %i.lb
  %.not.i110.not = icmp eq i32 %.fr314, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  %spec.select298 = select i1 %.not.i110.not, i32 %i.kp, i32 -1
  br label %bb.az

bb.az:                                            ; preds = %unz64local_getShort.exit113, %unz64local_getShort.exit113.thread
  %.1159250 = phi i1 [ false, %unz64local_getShort.exit113 ], [ %i.kx, %unz64local_getShort.exit113.thread ]
  %i.lc = phi i32 [ %spec.select298, %unz64local_getShort.exit113 ], [ %i.kp, %unz64local_getShort.exit113.thread ] ; 2 uses
  %i.ld = load ptr, ptr %i.ab, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  %i.le = load ptr, ptr %i.jr, align 8
  %i.lf = load ptr, ptr %i.jt, align 8
  %i.lg = call i64 %i.le(ptr noundef %i.lf, ptr noundef %i.ld, ptr noundef nonnull %i.h, i64 noundef 2) #14, !inline_history !7
  %i.lh = and i64 %i.lg, 4294967295
  %i.li = icmp eq i64 %i.lh, 2
  br i1 %i.li, label %unz64local_getShort.exit117.thread, label %unz64local_getShort.exit117

unz64local_getShort.exit117.thread:               ; preds = %bb.az
  %i.lj = load i16, ptr %i.h, align 2
  %i.lk = zext i16 %i.lj to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  br label %bb.ba

unz64local_getShort.exit117:                      ; preds = %bb.az
  %i.ll = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.lm = load ptr, ptr %i.ll, align 8
  %i.ln = load ptr, ptr %i.jt, align 8
  %i.lo = call i32 %i.lm(ptr noundef %i.ln, ptr noundef %i.ld) #14, !inline_history !7
  %.fr315 = freeze i32 %i.lo
  %.not.i114.not = icmp eq i32 %.fr315, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  %spec.select299 = select i1 %.not.i114.not, i32 %i.lc, i32 -1
  br label %bb.ba

bb.ba:                                            ; preds = %unz64local_getShort.exit117, %unz64local_getShort.exit117.thread
  %.0162257 = phi i64 [ 0, %unz64local_getShort.exit117 ], [ %i.lk, %unz64local_getShort.exit117.thread ]
  %i.lp = phi i32 [ %spec.select299, %unz64local_getShort.exit117 ], [ %i.lc, %unz64local_getShort.exit117.thread ] ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  store i64 %.0162257, ptr %i.lq, align 8
  %i.lr = load ptr, ptr %i.ab, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  %i.ls = load ptr, ptr %i.jr, align 8
  %i.lt = load ptr, ptr %i.jt, align 8
  %i.lu = call i64 %i.ls(ptr noundef %i.lt, ptr noundef %i.lr, ptr noundef nonnull %i.g, i64 noundef 2) #14, !inline_history !7
  %i.lv = and i64 %i.lu, 4294967295
  %i.lw = icmp eq i64 %i.lv, 2
  br i1 %i.lw, label %unz64local_getShort.exit121.thread, label %unz64local_getShort.exit121

unz64local_getShort.exit121.thread:               ; preds = %bb.ba
  %i.lx = load i16, ptr %i.g, align 2
  %i.ly = zext i16 %i.lx to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  br label %bb.bb

unz64local_getShort.exit121:                      ; preds = %bb.ba
  %i.lz = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ma = load ptr, ptr %i.lz, align 8
  %i.mb = load ptr, ptr %i.jt, align 8
  %i.mc = call i32 %i.ma(ptr noundef %i.mb, ptr noundef %i.lr) #14, !inline_history !7
  %.fr316 = freeze i32 %i.mc
  %.not.i118.not = icmp eq i32 %.fr316, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  %spec.select300 = select i1 %.not.i118.not, i32 %i.lp, i32 -1
  br label %bb.bb

bb.bb:                                            ; preds = %unz64local_getShort.exit121, %unz64local_getShort.exit121.thread
  %.1163264 = phi i64 [ 0, %unz64local_getShort.exit121 ], [ %i.ly, %unz64local_getShort.exit121.thread ]
  %i.md = phi i32 [ %spec.select300, %unz64local_getShort.exit121 ], [ %i.lp, %unz64local_getShort.exit121.thread ]
  %i.me = load i64, ptr %i.lq, align 8
  %i.mf = icmp ne i64 %.1163264, %i.me
  %or.cond5 = select i1 %i.mf, i1 true, i1 %.1159250
  %or.cond7 = select i1 %or.cond5, i1 true, i1 %.1161243
  %.19 = select i1 %or.cond7, i32 -103, i32 %i.md ; 2 uses
  %i.mg = load ptr, ptr %i.ab, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.mh = load ptr, ptr %i.jr, align 8
  %i.mi = load ptr, ptr %i.jt, align 8
  %i.mj = call i64 %i.mh(ptr noundef %i.mi, ptr noundef %i.mg, ptr noundef nonnull %i.f, i64 noundef 4) #14, !inline_history !6
  %i.mk = and i64 %i.mj, 4294967295
  %i.ml = icmp eq i64 %i.mk, 4
  br i1 %i.ml, label %unz64local_getLong.exit125.thread, label %unz64local_getLong.exit125

unz64local_getLong.exit125.thread:                ; preds = %bb.bb
  %i.mm = load i32, ptr %i.f, align 4
  %i.mn = zext i32 %i.mm to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %bb.bc

unz64local_getLong.exit125:                       ; preds = %bb.bb
  %i.mo = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.mp = load ptr, ptr %i.mo, align 8
  %i.mq = load ptr, ptr %i.jt, align 8
  %i.mr = call i32 %i.mp(ptr noundef %i.mq, ptr noundef %i.mg) #14, !inline_history !6
  %.fr317 = freeze i32 %i.mr
  %.not.i122.not = icmp eq i32 %.fr317, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  %spec.select301 = select i1 %.not.i122.not, i32 %.19, i32 -1
  br label %bb.bc
end_hunk_1
