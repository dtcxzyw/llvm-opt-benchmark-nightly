Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/sharkd_session?download=true
inline.NumInlined: 486
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@sharkd_session_process_complete:bb.a
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.u, %bb.t
  call void @json_dumper_end_object(ptr noundef nonnull @dumper)
  call void @json_dumper_end_object(ptr noundef nonnull @dumper)
  %i.bq = call zeroext i1 @json_dumper_finish(ptr noundef nonnull @dumper) ; 0 uses
  %i.br = load ptr, ptr @stdout, align 8
  %i.bs = call i32 @fflush(ptr noundef %i.br)     ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @sharkd_session_process_frames(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 2147483647) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca [32 x ptr], align 16              ; 5 uses
  %i.c = alloca [32 x i16], align 16              ; 6 uses
  %i.d = alloca [32 x i16], align 16              ; 5 uses
  %i.e = alloca [64 x i8], align 16               ; 6 uses
  %i.f = alloca ptr, align 8                      ; 12 uses
  %i.g = alloca i32, align 4                      ; 12 uses
  %i.h = alloca i32, align 4                      ; 8 uses
  %i.i = alloca i32, align 4                      ; 8 uses
  %3 = alloca %struct.wtap_rec, align 8           ; 6 uses
  %4 = alloca %struct.epan_column_info, align 8   ; 9 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca ptr, align 8                      ; 5 uses
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %.thread273, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.l = zext nneg i32 %2 to i64                  ; 5 uses
  br label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.m = icmp samesign ult i64 %indvars.iv.next.i, %i.l
  br i1 %i.m, label %.lr.ph.i, label %.lr.ph.preheader.i94, !llvm.loop !0

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.n = getelementptr [20 x i8], ptr %1, i64 %indvars.iv.i ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr i8, ptr %0, i64 %i.q
  %i.s = tail call i32 @strcmp(ptr noundef readonly %i.r, ptr noundef nonnull dereferenceable(7) @.str.36) #17
  %.not.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.not.i, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %.lr.ph.i
  %i.t = getelementptr i8, ptr %i.n, i64 24
  %i.u = load i32, ptr %i.t, align 4
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr i8, ptr %0, i64 %i.v
  br label %.lr.ph.preheader.i94

.lr.ph.preheader.i94:                             ; preds = %bb.b, %.thread.i
  %.2.i = phi ptr [ %i.w, %.thread.i ], [ null, %bb.b ] ; 4 uses
  br label %.lr.ph.i95

bb.c:                                             ; preds = %.lr.ph.i95
  %indvars.iv.next.i98 = add nuw nsw i64 %indvars.iv.i96, 2 ; 2 uses
  %i.x = icmp samesign ult i64 %indvars.iv.next.i98, %i.l
  br i1 %i.x, label %.lr.ph.i95, label %.lr.ph.preheader.i103, !llvm.loop !0

.lr.ph.i95:                                       ; preds = %bb.c, %.lr.ph.preheader.i94
  %indvars.iv.i96 = phi i64 [ 0, %.lr.ph.preheader.i94 ], [ %indvars.iv.next.i98, %bb.c ] ; 2 uses
  %i.y = getelementptr [20 x i8], ptr %1, i64 %indvars.iv.i96 ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr i8, ptr %0, i64 %i.ab
  %i.ad = tail call i32 @strcmp(ptr noundef readonly %i.ac, ptr noundef nonnull dereferenceable(8) @.str.201) #17
  %.not.not.i97 = icmp eq i32 %i.ad, 0
  br i1 %.not.not.i97, label %.thread.i100, label %bb.c

.thread.i100:                                     ; preds = %.lr.ph.i95
  %i.ae = getelementptr i8, ptr %i.y, i64 24
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr i8, ptr %0, i64 %i.ag
  %i.ai = icmp eq ptr %i.ah, null
  br label %.lr.ph.preheader.i103

.lr.ph.preheader.i103:                            ; preds = %bb.c, %.thread.i100
  %.2.i99 = phi i1 [ %i.ai, %.thread.i100 ], [ true, %bb.c ]
  br label %.lr.ph.i104

bb.d:                                             ; preds = %.lr.ph.i104
  %indvars.iv.next.i107 = add nuw nsw i64 %indvars.iv.i105, 2 ; 2 uses
  %i.aj = icmp samesign ult i64 %indvars.iv.next.i107, %i.l
  br i1 %i.aj, label %.lr.ph.i104, label %.lr.ph.preheader.i112, !llvm.loop !0

.lr.ph.i104:                                      ; preds = %bb.d, %.lr.ph.preheader.i103
  %indvars.iv.i105 = phi i64 [ 0, %.lr.ph.preheader.i103 ], [ %indvars.iv.next.i107, %bb.d ] ; 2 uses
  %i.ak = getelementptr [20 x i8], ptr %1, i64 %indvars.iv.i105 ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr i8, ptr %0, i64 %i.an
  %i.ap = tail call i32 @strcmp(ptr noundef readonly %i.ao, ptr noundef nonnull dereferenceable(5) @.str.49) #17
  %.not.not.i106 = icmp eq i32 %i.ap, 0
  br i1 %.not.not.i106, label %.thread.i109, label %bb.d

.thread.i109:                                     ; preds = %.lr.ph.i104
  %i.aq = getelementptr i8, ptr %i.ak, i64 24
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr i8, ptr %0, i64 %i.as
  br label %.lr.ph.preheader.i112

.lr.ph.preheader.i112:                            ; preds = %bb.d, %.thread.i109
  %.2.i108 = phi ptr [ %i.at, %.thread.i109 ], [ null, %bb.d ] ; 2 uses
  br label %.lr.ph.i113

bb.e:                                             ; preds = %.lr.ph.i113
  %indvars.iv.next.i116 = add nuw nsw i64 %indvars.iv.i114, 2 ; 2 uses
  %i.au = icmp samesign ult i64 %indvars.iv.next.i116, %i.l
  br i1 %i.au, label %.lr.ph.i113, label %json_find_attr.exit119, !llvm.loop !0

.lr.ph.i113:                                      ; preds = %bb.e, %.lr.ph.preheader.i112
  %indvars.iv.i114 = phi i64 [ 0, %.lr.ph.preheader.i112 ], [ %indvars.iv.next.i116, %bb.e ] ; 2 uses
  %i.av = getelementptr [20 x i8], ptr %1, i64 %indvars.iv.i114 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr i8, ptr %0, i64 %i.ay
  %i.ba = tail call i32 @strcmp(ptr noundef readonly %i.az, ptr noundef nonnull dereferenceable(6) @.str.50) #17
  %.not.not.i115 = icmp eq i32 %i.ba, 0
  br i1 %.not.not.i115, label %.thread.i118, label %bb.e

.thread.i118:                                     ; preds = %.lr.ph.i113
  %i.bb = getelementptr i8, ptr %i.av, i64 24
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr i8, ptr %0, i64 %i.bd
  br label %json_find_attr.exit119

.thread273:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  store ptr null, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  store i32 -1, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store i32 0, ptr %i.h, align 4
  store i32 0, ptr %i.i, align 4
  br label %bb.x

json_find_attr.exit119:                           ; preds = %bb.e, %.thread.i118
  %.2.i117 = phi ptr [ %i.be, %.thread.i118 ], [ null, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  br label %.lr.ph.i122

bb.f:                                             ; preds = %.lr.ph.i122
  %indvars.iv.next.i125 = add nuw nsw i64 %indvars.iv.i123, 2 ; 2 uses
  %i.bf = icmp samesign ult i64 %indvars.iv.next.i125, %i.l
  br i1 %i.bf, label %.lr.ph.i122, label %json_find_attr.exit128, !llvm.loop !0

.lr.ph.i122:                                      ; preds = %bb.f, %json_find_attr.exit119
  %indvars.iv.i123 = phi i64 [ 0, %json_find_attr.exit119 ], [ %indvars.iv.next.i125, %bb.f ] ; 2 uses
  %i.bg = getelementptr [20 x i8], ptr %1, i64 %indvars.iv.i123 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 4
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr i8, ptr %0, i64 %i.bj
  %i.bl = tail call i32 @strcmp(ptr noundef readonly %i.bk, ptr noundef nonnull dereferenceable(5) @.str.51) #17
  %.not.not.i124 = icmp eq i32 %i.bl, 0
  br i1 %.not.not.i124, label %.thread.i127, label %bb.f

.thread.i127:                                     ; preds = %.lr.ph.i122
  %i.bm = getelementptr i8, ptr %i.bg, i64 24
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr i8, ptr %0, i64 %i.bo
  br label %json_find_attr.exit128

json_find_attr.exit128:                           ; preds = %bb.f, %.thread.i127
  %.2.i126 = phi ptr [ %i.bp, %.thread.i127 ], [ null, %bb.f ]
  store ptr %.2.i126, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  store i32 -1, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  br i1 %.2.i99, label %bb.q, label %bb.g

bb.g:                                             ; preds = %json_find_attr.exit128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, i8 noundef 0, i64 noundef 72, i1 noundef false) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.bq = zext nneg i32 %2 to i64
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.g, %bb.m
  %indvars.iv.i129 = phi i64 [ %indvars.iv.next.i134, %bb.m ], [ 0, %bb.g ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %i.br = trunc nuw nsw i64 %indvars.iv.i129 to i32 ; 3 uses
  %i.bs = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.e, i64 noundef 64, i32 noundef 2, i64 noundef 64, ptr noundef nonnull @.str.205, i32 noundef %i.br) ; 0 uses
  br label %.lr.ph.i.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.bt = icmp samesign ult i64 %indvars.iv.next.i.i, %i.bq
  br i1 %i.bt, label %.lr.ph.i.i, label %.loopexit.i, !llvm.loop !0

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.h ] ; 2 uses
  %i.bu = getelementptr [20 x i8], ptr %1, i64 %indvars.iv.i.i ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 4
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr i8, ptr %0, i64 %i.bx
  %i.bz = call i32 @strcmp(ptr noundef readonly %i.by, ptr noundef nonnull readonly dereferenceable(1) %i.e) #17
  %.not.not.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not.not.i.i, label %json_find_attr.exit.i, label %bb.h

json_find_attr.exit.i:                            ; preds = %.lr.ph.i.i
  %i.ca = getelementptr i8, ptr %i.bu, i64 24
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr i8, ptr %0, i64 %i.cc     ; 4 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %.loopexit.i, label %bb.i

bb.i:                                             ; preds = %json_find_attr.exit.i
  %i.cf = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv.i129 ; 2 uses
  store ptr null, ptr %i.cf, align 8
  %i.cg = getelementptr [2 x i8], ptr %i.d, i64 %indvars.iv.i129 ; 2 uses
  store i16 0, ptr %i.cg, align 2
  %i.ch = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.cd, i32 noundef 58) #17 ; 3 uses
  %.not.i132 = icmp eq ptr %i.ch, null
  br i1 %.not.i132, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.ch, align 1
  %i.ci = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv.i129
  store i16 4, ptr %i.ci, align 2
  store ptr %i.cd, ptr %i.cf, align 8
  %i.cj = getelementptr i8, ptr %i.ch, i64 1
  %i.ck = call zeroext i1 @ws_strtoi16(ptr noundef %i.cj, ptr noundef null, ptr noundef %i.cg)
  br i1 %i.ck, label %bb.m, label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.cl = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv.i129 ; 2 uses
  %i.cm = call zeroext i1 @ws_strtou16(ptr noundef nonnull %i.cd, ptr noundef null, ptr noundef %i.cl)
  br i1 %i.cm, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.cn = load i16, ptr %i.cl, align 2            ; 2 uses
  %i.co = icmp ugt i16 %i.cn, 48
  %i.cp = icmp eq i16 %i.cn, 4
  %or.cond.i = or i1 %i.co, %i.cp
  br i1 %or.cond.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  %indvars.iv.next.i134 = add nuw nsw i64 %indvars.iv.i129, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i134, 32
  br i1 %exitcond.not.i, label %.loopexit.thread.i, label %.lr.ph.preheader.i.i, !llvm.loop !31

.loopexit.thread.i:                               ; preds = %bb.m
  call void @col_setup(ptr noundef nonnull %4, i32 noundef 32)
  br label %.lr.ph.i130

.loopexit.i:                                      ; preds = %json_find_attr.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @col_setup(ptr noundef nonnull %4, i32 noundef %i.br)
  %.not61.i = icmp eq i64 %indvars.iv.i129, 0
  br i1 %.not61.i, label %sharkd_session_create_columns.exit, label %.lr.ph.i130

.lr.ph.i130:                                      ; preds = %.loopexit.i, %.loopexit.thread.i
  %.0405777.i = phi i32 [ 32, %.loopexit.thread.i ], [ %i.br, %.loopexit.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %smax.i = call i32 @llvm.smax.i32(i32 %.0405777.i, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i130
  %indvars.iv69.i = phi i64 [ 0, %.lr.ph.i130 ], [ %indvars.iv.next70.i, %bb.o ] ; 5 uses
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr [88 x i8], ptr %i.cr, i64 %indvars.iv69.i ; 5 uses
  %i.ct = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv69.i
  %i.cu = load i16, ptr %i.ct, align 2            ; 2 uses
  %i.cv = zext i16 %i.cu to i32
  store i32 %i.cv, ptr %i.cs, align 8
  %i.cw = getelementptr i8, ptr %i.cs, i64 16
  store ptr null, ptr %i.cw, align 8
  %i.cx = icmp eq i16 %i.cu, 4
  br i1 %i.cx, label %g_strdup_inline.exit.i, label %bb.o

g_strdup_inline.exit.i:                           ; preds = %bb.n
  %i.cy = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv69.i
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = call noalias ptr @g_strdup(ptr noundef %i.cz)
  %i.db = getelementptr i8, ptr %i.cs, i64 24
  store ptr %i.da, ptr %i.db, align 8
  %i.dc = getelementptr [2 x i8], ptr %i.d, i64 %indvars.iv69.i
  %i.dd = load i16, ptr %i.dc, align 2
  %i.de = sext i16 %i.dd to i32
  %i.df = getelementptr i8, ptr %i.cs, i64 32
  store i32 %i.de, ptr %i.df, align 8
  br label %bb.o

bb.o:                                             ; preds = %g_strdup_inline.exit.i, %bb.n
  %i.dg = getelementptr i8, ptr %i.cs, i64 72
  store i32 0, ptr %i.dg, align 8
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1 ; 2 uses
  %exitcond72.not.i = icmp eq i64 %indvars.iv.next70.i, %wide.trip.count.i
  br i1 %exitcond72.not.i, label %sharkd_session_create_columns.exit, label %bb.n, !llvm.loop !32

sharkd_session_create_columns.exit:               ; preds = %bb.o, %.loopexit.i
  call void @col_finalize(ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.q

bb.p:                                             ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.dh = load i32, ptr @rpcid, align 4
  call void (i32, i32, ptr, ptr, ...) @sharkd_json_error(i32 noundef %i.dh, i32 noundef -13001, ptr poison, ptr noundef nonnull @.str.202)
  br label %bb.aw

bb.q:                                             ; preds = %sharkd_session_create_columns.exit, %json_find_attr.exit128
  %.055 = phi ptr [ %4, %sharkd_session_create_columns.exit ], [ getelementptr inbounds nuw (i8, ptr @cfile, i64 288), %json_find_attr.exit128 ] ; 2 uses
  %.not75 = icmp eq ptr %.2.i, null
  br i1 %.not75, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.di = load ptr, ptr @filter_table, align 8
  %i.dj = call ptr @g_hash_table_lookup(ptr noundef %i.di, ptr noundef nonnull %.2.i) ; 2 uses
  %.not.i135 = icmp eq ptr %i.dj, null
  br i1 %.not.i135, label %bb.s, label %sharkd_session_filter_data.exit.thread

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8
  %i.dk = call i32 @sharkd_filter(ptr noundef nonnull %.2.i, ptr noundef nonnull %i.a)
  %.not26.i = icmp eq i32 %i.dk, -1
  br i1 %.not26.i, label %sharkd_session_filter_data.exit.thread165, label %sharkd_session_filter_data.exit

sharkd_session_filter_data.exit.thread165:        ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.thread

sharkd_session_filter_data.exit:                  ; preds = %bb.s
  %i.dl = call noalias dereferenceable_or_null(8) ptr @g_malloc(i64 noundef 8) #22 ; 4 uses
  %i.dm = load ptr, ptr %i.a, align 8
  store ptr %i.dm, ptr %i.dl, align 8
  %i.dn = load ptr, ptr @filter_table, align 8
  %i.do = call noalias ptr @g_strdup(ptr noundef nonnull %.2.i)
  %i.dp = call i32 @g_hash_table_insert(ptr noundef %i.dn, ptr noundef %i.do, ptr noundef %i.dl) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %.not76.not = icmp eq ptr %i.dl, null
  br i1 %.not76.not, label %.thread, label %sharkd_session_filter_data.exit.thread

.thread:                                          ; preds = %sharkd_session_filter_data.exit, %sharkd_session_filter_data.exit.thread165
  %i.dq = load i32, ptr @rpcid, align 4
  call void (i32, i32, ptr, ptr, ...) @sharkd_json_error(i32 noundef %i.dq, i32 noundef -13002, ptr poison, ptr noundef nonnull @.str.203)
  br label %bb.aw

sharkd_session_filter_data.exit.thread:           ; preds = %bb.r, %sharkd_session_filter_data.exit
  %.1.i162 = phi ptr [ %i.dl, %sharkd_session_filter_data.exit ], [ %i.dj, %bb.r ]
  %i.dr = load ptr, ptr %.1.i162, align 8
  br label %bb.t

bb.t:                                             ; preds = %sharkd_session_filter_data.exit.thread, %bb.q
  %.161 = phi ptr [ %i.dr, %sharkd_session_filter_data.exit.thread ], [ null, %bb.q ] ; 2 uses
  store i32 0, ptr %i.h, align 4
  %.not77 = icmp eq ptr %.2.i108, null
  br i1 %.not77, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ds = call zeroext i1 @ws_strtou32(ptr noundef nonnull %.2.i108, ptr noundef null, ptr noundef nonnull %i.h)
  br i1 %i.ds, label %bb.v, label %bb.aw

bb.v:                                             ; preds = %bb.u, %bb.t
  store i32 0, ptr %i.i, align 4
  %.not78 = icmp eq ptr %.2.i117, null
  br i1 %.not78, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dt = call zeroext i1 @ws_strtou32(ptr noundef nonnull %.2.i117, ptr noundef null, ptr noundef nonnull %i.i)
  br i1 %i.dt, label %bb.x, label %bb.aw

bb.x:                                             ; preds = %.thread273, %bb.w, %bb.v
  %.055263270279 = phi ptr [ getelementptr inbounds nuw (i8, ptr @cfile, i64 288), %.thread273 ], [ %.055, %bb.w ], [ %.055, %bb.v ] ; 3 uses
  %.161272278 = phi ptr [ null, %.thread273 ], [ %.161, %bb.w ], [ %.161, %bb.v ] ; 2 uses
  %i.du = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not79 = icmp eq ptr %i.du, null
  br i1 %.not79, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dv = call zeroext i1 @ws_strtou32(ptr noundef nonnull %i.du, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  br i1 %i.dv, label %bb.z, label %bb.aw

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dw = load i32, ptr @rpcid, align 4
  call void @json_dumper_begin_object(ptr noundef nonnull @dumper)
  call void @json_dumper_set_member_name(ptr noundef nonnull @dumper, ptr noundef nonnull @.str.9)
  call void @json_dumper_value_string(ptr noundef nonnull @dumper, ptr noundef nonnull @.str.10)
  call void (ptr, ptr, ...) @sharkd_json_value_anyf(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.6, i32 noundef %i.dw)
  call void @json_dumper_set_member_name(ptr noundef nonnull @dumper, ptr noundef nonnull @.str.128)
  call void @json_dumper_begin_array(ptr noundef nonnull @dumper)
  call void @wtap_rec_init(ptr noundef nonnull %3, i64 noundef 2048)
  %i.dx = load i32, ptr getelementptr inbounds nuw (i8, ptr @cfile, i64 72), align 8
  %.not80200 = icmp eq i32 %i.dx, 0
  br i1 %.not80200, label %.loopexit177, label %.lr.ph206

.lr.ph206:                                        ; preds = %bb.z
  %.not82 = icmp eq ptr %.161272278, null
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph206, %bb.at
  %.053203 = phi i32 [ 1, %.lr.ph206 ], [ %i.fr, %bb.at ] ; 13 uses
  %.056202 = phi i32 [ 0, %.lr.ph206 ], [ %.5.ph, %bb.at ] ; 4 uses
  %.058201 = phi i32 [ 0, %.lr.ph206 ], [ %.159.ph, %bb.at ] ; 2 uses
  %.not81 = icmp ne i32 %.053203, 1
  %i.dy = zext i1 %.not81 to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  br i1 %.not82, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dz = lshr i32 %.053203, 3
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr i8, ptr %.161272278, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1
  %i.ed = zext i8 %i.ec to i32
  %i.ee = and i32 %.053203, 7
  %i.ef = shl nuw nsw i32 1, %i.ee
  %i.eg = and i32 %i.ef, %i.ed
  %.not83 = icmp eq i32 %i.eg, 0
  br i1 %.not83, label %bb.at, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.eh = load i32, ptr %i.h, align 4             ; 2 uses
  %.not84 = icmp eq i32 %i.eh, 0
  br i1 %.not84, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ei = add i32 %i.eh, -1
  store i32 %i.ei, ptr %i.h, align 4
  br label %bb.at

bb.ae:                                            ; preds = %bb.ac
  %i.ej = load ptr, ptr %i.f, align 8             ; 4 uses
  %.not85 = icmp eq ptr %i.ej, null
  br i1 %.not85, label %bb.ao, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ek = load i32, ptr %i.g, align 4             ; 3 uses
  %.not86 = icmp ult i32 %.053203, %i.ek
  br i1 %.not86, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.el = load i8, ptr %i.ej, align 1
  %.not87 = icmp eq i8 %i.el, 44
  br i1 %.not87, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i32 -1, ptr %i.g, align 4
  %.pre = load i8, ptr %i.ej, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.em = phi i32 [ -1, %bb.ah ], [ %i.ek, %bb.ag ] ; 2 uses
  %i.en = phi i8 [ %.pre, %bb.ah ], [ 44, %bb.ag ] ; 2 uses
  %i.eo = icmp eq i8 %i.en, 44
  %i.ep = icmp uge i32 %.053203, %i.em
  %i.eq = and i1 %i.eo, %i.ep
  br i1 %i.eq, label %.lr.ph, label %.loopexit

bb.aj:                                            ; preds = %.lr.ph
  %i.er = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.es = load i8, ptr %i.er, align 1             ; 2 uses
  %i.et = icmp eq i8 %i.es, 44
  %i.eu = load i32, ptr %i.g, align 4             ; 2 uses
  %i.ev = icmp uge i32 %.053203, %i.eu
  %i.ew = select i1 %i.et, i1 %i.ev, i1 false
  br i1 %i.ew, label %.lr.ph, label %.loopexit, !llvm.loop !33

.lr.ph:                                           ; preds = %bb.ai, %bb.aj
  %i.ex = phi i32 [ %i.eu, %bb.aj ], [ %i.em, %bb.ai ] ; 2 uses
  %i.ey = phi ptr [ %i.er, %bb.aj ], [ %i.ej, %bb.ai ]
  %i.ez = getelementptr i8, ptr %i.ey, i64 1
  %i.fa = call zeroext i1 @ws_strtou32(ptr noundef %i.ez, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  br i1 %i.fa, label %bb.aj, label %bb.ak, !llvm.loop !33

bb.ak:                                            ; preds = %.lr.ph
  %i.fb = load ptr, ptr @stderr, align 8
  %i.fc = load ptr, ptr %i.f, align 8
  %i.fd = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.fb, i32 noundef 2, ptr noundef nonnull @.str.204, ptr noundef %i.fc) ; 0 uses
  %.pre229 = load ptr, ptr %i.f, align 8
  %.pre230 = load i8, ptr %.pre229, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.aj, %bb.ai, %bb.ak
  %i.fe = phi i8 [ %.pre230, %bb.ak ], [ %i.en, %bb.ai ], [ %i.es, %bb.aj ]
  %.2 = phi i32 [ %i.ex, %bb.ak ], [ %i.ek, %bb.ai ], [ %i.ex, %bb.aj ] ; 2 uses
  %i.ff = icmp eq i8 %i.fe, 0
  br i1 %i.ff, label %bb.al, label %bb.an

bb.al:                                            ; preds = %.loopexit
  %i.fg = load i32, ptr %i.g, align 4             ; 2 uses
end_hunk_0
begin_hunk_1_@sharkd_rtp_download_decode:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 34
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %.057 = phi ptr [ %.051, %.lr.ph ], [ %.0, %bb.o ] ; 2 uses
  %.03456 = phi ptr [ %i.j, %.lr.ph ], [ %.3, %bb.o ] ; 4 uses
  %.03555 = phi i64 [ 4096, %.lr.ph ], [ %.4, %bb.o ] ; 5 uses
  %.03954 = phi ptr [ null, %.lr.ph ], [ %.342, %bb.o ] ; 6 uses
  %.04353 = phi i32 [ 0, %.lr.ph ], [ %.245, %bb.o ] ; 3 uses
  %i.u = load ptr, ptr %.057, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store ptr null, ptr %i.d, align 8
  %i.v = call i64 @decode_rtp_packet(ptr noundef %i.u, ptr noundef nonnull %i.d, ptr noundef %i.i, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  %i.x = load i32, ptr %i.c, align 4              ; 5 uses
  %i.y = icmp eq i32 %i.x, 0
  %or.cond = select i1 %i.w, i1 true, i1 %i.y
  br i1 %or.cond, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = icmp eq i32 %.04353, 0
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  store <4 x i32> <i32 1179011410, i32 -1, i32 1163280727, i32 544501094>, ptr %i.e, align 16
  store i32 16, ptr %i.l, align 16
  store i16 1, ptr %i.m, align 4
  %i.aa = load i32, ptr %i.b, align 4             ; 2 uses
  %i.ab = trunc i32 %i.aa to i16                  ; 2 uses
  store i16 %i.ab, ptr %i.n, align 2
  store i32 %i.x, ptr %i.o, align 8
  %i.ac = shl i32 %i.x, 1
  %i.ad = mul i32 %i.ac, %i.aa
  store i32 %i.ad, ptr %i.p, align 4
  %i.ae = shl i16 %i.ab, 1
  store i16 %i.ae, ptr %i.q, align 16
  store i16 16, ptr %i.r, align 2
  store i32 1635017060, ptr %i.s, align 4
  store i32 -1, ptr %i.t, align 8
  call void @json_dumper_write_base64(ptr noundef nonnull @dumper, ptr noundef nonnull %i.e, i64 noundef 44)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  %.pre = load i32, ptr %i.c, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.af = phi i32 [ %.pre, %bb.d ], [ %i.x, %bb.c ] ; 2 uses
  %.144 = phi i32 [ %i.x, %bb.d ], [ %.04353, %bb.c ] ; 5 uses
  %i.ag = load ptr, ptr %i.d, align 8
  %.not48 = icmp eq i32 %.144, %i.af
  br i1 %.not48, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  %.not49 = icmp eq ptr %.03954, null
  br i1 %.not49, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = call ptr @speex_resampler_init(i32 noundef 1, i32 noundef %i.af, i32 noundef %.144, i32 noundef 10, ptr noundef null) ; 2 uses
  %i.ai = call i32 @speex_resampler_skip_zeros(ptr noundef %i.ah) ; 0 uses
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  call void @speex_resampler_get_rate(ptr noundef nonnull %.03954, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h)
  %i.aj = load i32, ptr %i.c, align 4             ; 2 uses
  %i.ak = load i32, ptr %i.a, align 4
  %.not50 = icmp eq i32 %i.aj, %i.ak
  br i1 %.not50, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = load i32, ptr %i.h, align 4
  %i.am = call i32 @speex_resampler_set_rate(ptr noundef nonnull %.03954, i32 noundef %i.aj, i32 noundef %i.al) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.140 = phi ptr [ %.03954, %bb.j ], [ %i.ah, %bb.g ] ; 2 uses
  %i.an = getelementptr i8, ptr %i.u, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr i8, ptr %i.ao, i64 56
  %i.aq = load i32, ptr %i.ap, align 8            ; 2 uses
  store i32 %i.aq, ptr %i.f, align 4
  %i.ar = mul i32 %i.aq, %.144
  %i.as = load i32, ptr %i.c, align 4             ; 2 uses
  %i.at = udiv i32 %i.ar, %i.as
  %i.au = urem i32 %.144, %i.as
  %i.av = icmp ne i32 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %i.ax = add i32 %i.at, %i.aw                    ; 2 uses
  store i32 %i.ax, ptr %i.g, align 4
  %i.ay = shl i32 %i.ax, 1
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = icmp ult i64 %.03555, %i.az
  br i1 %i.ba, label %.preheader, label %bb.m

.preheader:                                       ; preds = %bb.k, %.preheader
  %.136 = phi i64 [ %i.bc, %.preheader ], [ %.03555, %bb.k ] ; 4 uses
  %i.bb = icmp ult i64 %.136, %i.az
  %i.bc = shl nuw nsw i64 %.136, 1
  br i1 %i.bb, label %.preheader, label %bb.l, !llvm.loop !84

bb.l:                                             ; preds = %.preheader
  %i.bd = call ptr @g_realloc(ptr noundef %.03456, i64 noundef %.136)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.237 = phi i64 [ %.136, %bb.l ], [ %.03555, %bb.k ]
  %.1 = phi ptr [ %i.bd, %bb.l ], [ %.03456, %bb.k ] ; 3 uses
  %i.be = load ptr, ptr %i.d, align 8
  %i.bf = call i32 @speex_resampler_process_int(ptr noundef %.140, i32 noundef 0, ptr noundef %i.be, ptr noundef nonnull %i.f, ptr noundef %.1, ptr noundef nonnull %i.g) ; 0 uses
  %i.bg = load i32, ptr %i.g, align 4
  %i.bh = shl i32 %i.bg, 1
  %i.bi = zext i32 %i.bh to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.e
  %.241 = phi ptr [ %.140, %bb.m ], [ %.03954, %bb.e ]
  %.338 = phi i64 [ %.237, %bb.m ], [ %.03555, %bb.e ]
  %.2 = phi ptr [ %.1, %bb.m ], [ %.03456, %bb.e ]
  %.033 = phi ptr [ %.1, %bb.m ], [ %i.ag, %bb.e ]
  %.032 = phi i64 [ %i.bi, %bb.m ], [ %i.v, %bb.e ]
  call void @json_dumper_write_base64(ptr noundef nonnull @dumper, ptr noundef %.033, i64 noundef %.032)
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %bb.n
  %.245 = phi i32 [ %.144, %bb.n ], [ %.04353, %bb.b ]
  %.342 = phi ptr [ %.241, %bb.n ], [ %.03954, %bb.b ]
  %.4 = phi i64 [ %.338, %bb.n ], [ %.03555, %bb.b ]
  %.3 = phi ptr [ %.2, %bb.n ], [ %.03456, %bb.b ] ; 2 uses
  %i.bj = load ptr, ptr %i.d, align 8
  call void @g_free(ptr noundef %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %i.bk = getelementptr i8, ptr %.057, i64 8
  %.0 = load ptr, ptr %i.bk, align 8              ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !85

._crit_edge:                                      ; preds = %bb.o, %bb.a
  %.034.lcssa = phi ptr [ %i.j, %bb.a ], [ %.3, %bb.o ]
  call void @g_free(ptr noundef %.034.lcssa)
  call void @g_hash_table_destroy(ptr noundef %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @sharkd_rtp_download_free_items(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @g_free(ptr noundef %i.b)
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @g_free(ptr noundef %i.d)
  tail call void @g_free(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare ptr @g_memdup2(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare ptr @rtp_decoder_hash_table_new() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i64 @decode_rtp_packet(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @speex_resampler_init(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @speex_resampler_skip_zeros(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @speex_resampler_get_rate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @speex_resampler_set_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @speex_resampler_process_int(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noreturn nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind null_pointer_is_valid returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { null_pointer_is_valid allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { allocsize(0,1) }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind returns_twice }
attributes #21 = { noreturn }
attributes #22 = { allocsize(0) }
attributes #23 = { cold noreturn nounwind }
attributes #24 = { allocsize(2) }
attributes #25 = { allocsize(1) }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !{!0, !9}
!1 = distinct !{!1, !9}
!2 = !{i32 8, !"cf-protection-return", i32 1}
!3 = !{i32 8, !"cf-protection-branch", i32 1}
!4 = !{i32 4, !"probe-stack", !"inline-asm"}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9, !26}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9}
!26 = !{!"llvm.loop.peeled.count", i32 5}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !9}
!34 = distinct !{!34, !9}
!35 = distinct !{null}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !9}
!38 = distinct !{!38, !9}
!39 = distinct !{!39, !9}
!40 = distinct !{!40, !9}
!41 = distinct !{!41, !9}
!42 = distinct !{!42, !9}
!43 = distinct !{!43, !9}
!44 = distinct !{!44, !9}
!45 = distinct !{!45, !9}
!46 = distinct !{!46, !9}
!47 = distinct !{null}
!48 = distinct !{!48, !9}
!49 = distinct !{!49, !9}
!50 = distinct !{!50, !9}
!51 = distinct !{!51, !9}
!52 = distinct !{!52, !9}
!53 = distinct !{!53, !9}
!54 = distinct !{!54, !9}
!55 = distinct !{!55, !9}
!56 = distinct !{!56, !9}
!57 = distinct !{!57, !9}
!58 = distinct !{!58, !9}
!59 = distinct !{!59, !9}
!60 = distinct !{!60, !9}
!61 = distinct !{!61, !9}
!62 = distinct !{!62, !9}
!63 = distinct !{!63, !9}
!64 = distinct !{!64, !9}
!65 = distinct !{!65, !9}
!66 = distinct !{!66, !9}
!67 = distinct !{!67, !9}
!68 = distinct !{!68, !9}
!69 = distinct !{!69, !9}
!70 = distinct !{!70, !9}
!71 = distinct !{!71, !9}
!72 = distinct !{!72, !9}
!73 = distinct !{!73, !9}
!74 = distinct !{!74, !9}
!75 = distinct !{!75, !9}
!76 = distinct !{!76, !9}
!77 = distinct !{!77, !9}
!78 = distinct !{!78, !9}
!79 = distinct !{!79, !9}
!80 = distinct !{!80, !9}
!81 = distinct !{!81, !9}
!82 = distinct !{!82, !9}
!83 = distinct !{!83, !9}
!84 = distinct !{!84, !9}
!85 = distinct !{!85, !9}
end_hunk_1
