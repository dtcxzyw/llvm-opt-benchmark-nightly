Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/seek?download=true
inline.NumInlined: 43
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ff_seek_frame_binary:bb.a
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.c, ptr noundef nonnull align 1 dereferenceable(6) @.str.21, i64 6, i1 false)
  br label %av_ts_make_string.exit72

bb.i:                                             ; preds = %.thread, %bb.g
  %i.af = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 32, ptr noundef nonnull @.str.22, i64 noundef %i.y) #17 ; 0 uses
  br label %av_ts_make_string.exit72

av_ts_make_string.exit72:                         ; preds = %bb.h, %bb.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 56, ptr noundef nonnull @.str.11, i64 noundef %i.z, ptr noundef nonnull %i.c) #17
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !55
  %.pre79 = load i32, ptr %i.r, align 8, !tbaa !54
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %av_ts_make_string.exit72
  %i.ag = phi i32 [ %.pre79, %av_ts_make_string.exit72 ], [ %i.s, %bb.f ] ; 2 uses
  %i.ah = phi ptr [ %.pre, %av_ts_make_string.exit72 ], [ %i.p, %bb.f ] ; 2 uses
  %.064 = phi i64 [ %i.z, %av_ts_make_string.exit72 ], [ 0, %bb.f ] ; 2 uses
  %.058 = phi i64 [ %i.y, %av_ts_make_string.exit72 ], [ -9223372036854775808, %bb.f ] ; 2 uses
  %i.ai = and i32 %3, -2
  %i.aj = call i32 @ff_index_search_timestamp(ptr noundef %i.ah, i32 noundef %i.ag, i64 noundef %2, i32 noundef %i.ai) ; 3 uses
  %i.ak = icmp slt i32 %i.aj, %i.ag
  br i1 %i.ak, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.2, i32 noundef 333) #17
  call void @abort() #18
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.al = icmp sgt i32 %i.aj, -1
  br i1 %i.al, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.am = zext nneg i32 %i.aj to i64
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.am ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !66 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !62 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !67
  %i.at = sext i32 %i.as to i64
  %i.au = sub nsw i64 %i.ao, %i.at                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.av = icmp eq i64 %i.aq, -9223372036854775808
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.d, ptr noundef nonnull align 1 dereferenceable(6) @.str.21, i64 6, i1 false)
  br label %av_ts_make_string.exit73

bb.o:                                             ; preds = %bb.m
  %i.aw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 32, ptr noundef nonnull @.str.22, i64 noundef %i.aq) #17 ; 0 uses
  br label %av_ts_make_string.exit73

av_ts_make_string.exit73:                         ; preds = %bb.n, %bb.o
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 56, ptr noundef nonnull @.str.13, i64 noundef %i.ao, i64 noundef %i.au, ptr noundef nonnull %i.d) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %av_ts_make_string.exit73, %av_ts_make_string.exit
  %.165 = phi i64 [ 0, %av_ts_make_string.exit ], [ %.064, %av_ts_make_string.exit73 ], [ %.064, %bb.l ]
  %.163 = phi i64 [ 0, %av_ts_make_string.exit ], [ %i.ao, %av_ts_make_string.exit73 ], [ 0, %bb.l ]
  %.161 = phi i64 [ -1, %av_ts_make_string.exit ], [ %i.au, %av_ts_make_string.exit73 ], [ -1, %bb.l ]
  %.159 = phi i64 [ -9223372036854775808, %av_ts_make_string.exit ], [ %.058, %av_ts_make_string.exit73 ], [ %.058, %bb.l ]
  %.1 = phi i64 [ -9223372036854775808, %av_ts_make_string.exit ], [ %i.aq, %av_ts_make_string.exit73 ], [ -9223372036854775808, %bb.l ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !79
  %i.az = call i64 @ff_gen_search(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %.165, i64 noundef %.163, i64 noundef %.161, i64 noundef %.159, i64 noundef %.1, i32 noundef %3, ptr noundef nonnull %i.a, ptr noundef %i.ay) ; 2 uses
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %avpriv_update_cur_dts.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !69
  %i.bd = call i64 @avio_seek(ptr noundef %i.bc, i64 noundef %i.az, i32 noundef 0) #17 ; 2 uses
  %i.be = icmp slt i64 %i.bd, 0
  br i1 %i.be, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bf = trunc i64 %i.bd to i32
  br label %avpriv_update_cur_dts.exit

bb.s:                                             ; preds = %bb.q
  call void @ff_flush_packet_queue(ptr noundef nonnull %0) #17
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !9  ; 2 uses
  %.not25.i = icmp eq i32 %i.bh, 0
  br i1 %.not25.i, label %avpriv_update_cur_dts.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 268
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %.lr.ph.i
  %i.bj = phi i32 [ %i.bh, %.lr.ph.i ], [ %i.bp, %bb.v ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.v ] ; 2 uses
  %i.bk = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.i
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !35 ; 12 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 816 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !83 ; 2 uses
  %.not.i = icmp eq ptr %i.bo, null
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @av_parser_close(ptr noundef nonnull %i.bo) #17
  store ptr null, ptr %i.bn, align 8, !tbaa !83
  %.pre80 = load i32, ptr %i.bg, align 4, !tbaa !9
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bp = phi i32 [ %.pre80, %bb.u ], [ %i.bj, %bb.t ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 792
  store i64 -9223372036854775808, ptr %i.bq, align 8, !tbaa !84
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 728
  store i64 -9223372036854775808, ptr %i.br, align 8, !tbaa !85
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 840
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !86
  %i.bu = icmp eq i64 %i.bt, -9223372036854775808
  %spec.select.i = select i1 %i.bu, i64 9223090561878065151, i64 -9223372036854775808
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 848
  store i64 %spec.select.i, ptr %i.bv, align 8, !tbaa !37
  %i.bw = load i32, ptr %i.bi, align 4, !tbaa !87
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 804
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !88
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 592
  store <4 x i64> splat (i64 -9223372036854775808), ptr %i.by, align 8, !tbaa !57
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 624
  store <4 x i64> splat (i64 -9223372036854775808), ptr %i.bz, align 8, !tbaa !57
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bm, i64 656
  store <4 x i64> splat (i64 -9223372036854775808), ptr %i.ca, align 8, !tbaa !57
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bm, i64 688
  store <4 x i64> splat (i64 -9223372036854775808), ptr %i.cb, align 8, !tbaa !57
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 720
  store i64 -9223372036854775808, ptr %i.cc, align 8, !tbaa !57
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bm, i64 360
  store i32 0, ptr %i.cd, align 8, !tbaa !89
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ce = zext i32 %i.bp to i64                   ; 2 uses
  %i.cf = icmp samesign ult i64 %indvars.iv.next.i, %i.ce
  br i1 %i.cf, label %bb.t, label %ff_read_frame_flush.exit, !llvm.loop !90

ff_read_frame_flush.exit:                         ; preds = %bb.v
  %i.cg = load i64, ptr %i.a, align 8, !tbaa !57
  %.not.i74 = icmp eq i32 %i.bp, 0
  br i1 %.not.i74, label %avpriv_update_cur_dts.exit, label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %ff_read_frame_flush.exit
  %i.ch = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.ci = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !27
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.n, i64 36
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !34
  %i.cn = sext i32 %i.cm to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i75
  %indvars.iv.i76 = phi i64 [ 0, %.lr.ph.i75 ], [ %indvars.iv.next.i77, %bb.w ] ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.i76
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !35 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 36
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !34
  %i.ct = sext i32 %i.cs to i64
  %i.cu = mul nsw i64 %i.ct, %i.ck
  %i.cv = load i32, ptr %i.cq, align 8, !tbaa !27
  %i.cw = sext i32 %i.cv to i64
  %i.cx = mul nsw i64 %i.cw, %i.cn
  %i.cy = call i64 @av_rescale(i64 noundef %i.cg, i64 noundef %i.cu, i64 noundef %i.cx) #16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 848
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !37
  %indvars.iv.next.i77 = add nuw nsw i64 %indvars.iv.i76, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i77, %i.ce
  br i1 %exitcond.not.i, label %avpriv_update_cur_dts.exit, label %bb.w, !llvm.loop !51

avpriv_update_cur_dts.exit:                       ; preds = %bb.w, %bb.s, %ff_read_frame_flush.exit, %bb.p, %bb.a, %bb.r
  %.066 = phi i32 [ -1, %bb.p ], [ -1, %bb.a ], [ %i.bf, %bb.r ], [ 0, %bb.s ], [ 0, %ff_read_frame_flush.exit ], [ 0, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.066
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nounwind uwtable
define i64 @ff_gen_search(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, ptr nofree noundef writeonly captures(none) %9, ptr nofree noundef readonly captures(none) %10) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 11 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = alloca [32 x i8], align 1                ; 4 uses
  %i.f = alloca [32 x i8], align 1                ; 3 uses
  %i.g = alloca [32 x i8], align 1                ; 3 uses
  %i.h = alloca [32 x i8], align 1                ; 3 uses
  %i.i = alloca [32 x i8], align 1                ; 4 uses
  %i.j = alloca [32 x i8], align 1                ; 3 uses
  %i.k = alloca [32 x i8], align 1                ; 3 uses
  store i64 %3, ptr %i.a, align 8, !tbaa !57
  store i64 %4, ptr %i.b, align 8, !tbaa !57
  store i64 %7, ptr %i.c, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.l = icmp eq i64 %2, -9223372036854775808
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.e, ptr noundef nonnull align 1 dereferenceable(6) @.str.21, i64 6, i1 false)
  br label %av_ts_make_string.exit

bb.c:                                             ; preds = %bb.a
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 32, ptr noundef nonnull @.str.22, i64 noundef %2) #17 ; 0 uses
  br label %av_ts_make_string.exit

av_ts_make_string.exit:                           ; preds = %bb.b, %bb.c
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 56, ptr noundef nonnull @.str.15, i32 noundef %1, ptr noundef nonnull %i.e) #17
  %i.n = icmp eq i64 %6, -9223372036854775808
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %av_ts_make_string.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.p = load i64, ptr %i.o, align 8, !tbaa !91
  store i64 %i.p, ptr %i.a, align 8, !tbaa !57
  %i.q = call i64 %10(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.a, i64 noundef 9223372036854775807) #17, !inline_history !94 ; 2 uses
  %i.r = icmp sgt i32 %1, -1
  br i1 %i.r, label %bb.e, label %read_timestamp.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.u = zext nneg i32 %1 to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !35
  %i.x = call i64 @ff_wrap_timestamp(ptr noundef %i.w, i64 noundef %i.q) #17
  br label %read_timestamp.exit

read_timestamp.exit:                              ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.x, %bb.e ], [ %i.q, %bb.d ] ; 2 uses
  %i.y = icmp eq i64 %.0.i, -9223372036854775808
  br i1 %i.y, label %bb.ab, label %bb.f

bb.f:                                             ; preds = %read_timestamp.exit, %av_ts_make_string.exit
  %.063 = phi i64 [ %.0.i, %read_timestamp.exit ], [ %6, %av_ts_make_string.exit ] ; 4 uses
  %.not = icmp slt i64 %.063, %2
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %.063, ptr %9, align 8, !tbaa !57
  %i.z = load i64, ptr %i.a, align 8, !tbaa !57
  br label %bb.ab

bb.h:                                             ; preds = %bb.f
  %i.aa = icmp eq i64 %7, -9223372036854775808
  br i1 %i.aa, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ab = call i32 @ff_find_last_ts(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef %10)
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.ab, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !57  ; 2 uses
  %.pre = load i64, ptr %i.c, align 8, !tbaa !57
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.promoted = phi i64 [ %i.ad, %bb.j ], [ %4, %bb.h ] ; 3 uses
  %.promoted100 = phi i64 [ %.pre, %bb.j ], [ %7, %bb.h ] ; 4 uses
  %.061 = phi i64 [ %i.ad, %bb.j ], [ %5, %bb.h ] ; 2 uses
  %.not78 = icmp sgt i64 %.promoted100, %2
  br i1 %.not78, label %.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 %.promoted100, ptr %9, align 8, !tbaa !57
  br label %bb.ab

.preheader:                                       ; preds = %bb.k
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !57  ; 3 uses
  %i.af = icmp slt i64 %i.ae, %.061
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ag = icmp sgt i32 %1, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = zext nneg i32 %1 to i64
  br label %av_ts_make_string.exit85

av_ts_make_string.exit85:                         ; preds = %.lr.ph, %bb.aa
  %i.aj = phi i64 [ %i.ae, %.lr.ph ], [ %i.bt, %bb.aa ]
  %.060108 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.aa ] ; 2 uses
  %.162107 = phi i64 [ %.061, %.lr.ph ], [ %.2, %bb.aa ] ; 7 uses
  %.164106 = phi i64 [ %.063, %.lr.ph ], [ %.265, %bb.aa ] ; 5 uses
  %i.ak = phi i64 [ %.promoted, %.lr.ph ], [ %i.bs, %bb.aa ] ; 7 uses
  %.0.i86102105 = phi i64 [ %.promoted100, %.lr.ph ], [ %.0.i86101, %bb.aa ] ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  %i.al = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 32, ptr noundef nonnull @.str.22, i64 noundef %.164106) #17 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  %i.am = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.g, i64 noundef 32, ptr noundef nonnull @.str.22, i64 noundef %.0.i86102105) #17 ; 0 uses
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 56, ptr noundef nonnull @.str.17, i64 noundef %i.aj, i64 noundef %i.ak, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #17
  %.not80 = icmp sgt i64 %.162107, %i.ak
  br i1 %.not80, label %bb.m, label %bb.n

bb.m:                                             ; preds = %av_ts_make_string.exit85
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef 443) #17
  call void @abort() #18
  unreachable

bb.n:                                             ; preds = %av_ts_make_string.exit85
  switch i32 %.060108, label %.thread [
    i32 0, label %bb.o
    i32 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.an = sub nsw i64 %2, %.164106
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !57  ; 3 uses
  %i.ap = sub nsw i64 %i.ak, %i.ao
  %i.aq = sub nsw i64 %.0.i86102105, %.164106
  %i.ar = call i64 @av_rescale(i64 noundef %i.an, i64 noundef %i.ap, i64 noundef %i.aq) #16
  %i.as = sub i64 %.162107, %i.ak
  %.neg = add i64 %i.as, %i.ao
  %i.at = add i64 %.neg, %i.ar
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.au = load i64, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %i.av = add nsw i64 %i.au, %.162107
  %i.aw = ashr i64 %i.av, 1
  br label %bb.q

.thread:                                          ; preds = %bb.n
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !57
  br label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink = phi i64 [ %i.aw, %bb.p ], [ %i.at, %bb.o ] ; 4 uses
  %i.ay = phi i64 [ %i.au, %bb.p ], [ %i.ao, %bb.o ] ; 2 uses
  store i64 %.sink, ptr %i.d, align 8, !tbaa !57
  %.not81 = icmp sgt i64 %.sink, %i.ay
  br i1 %.not81, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.thread, %bb.q
  %i.az = phi i64 [ %i.ax, %.thread ], [ %i.ay, %bb.q ]
  %i.ba = add nsw i64 %i.az, 1
  br label %.sink.split

bb.s:                                             ; preds = %bb.q
  %i.bb = icmp sgt i64 %.sink, %.162107
  br i1 %i.bb, label %.sink.split, label %bb.t

.sink.split:                                      ; preds = %bb.s, %bb.r
  %.162107.sink = phi i64 [ %i.ba, %bb.r ], [ %.162107, %bb.s ] ; 2 uses
  store i64 %.162107.sink, ptr %i.d, align 8, !tbaa !57
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.s
  %i.bc = phi i64 [ %.sink, %bb.s ], [ %.162107.sink, %.sink.split ] ; 2 uses
  %i.bd = call i64 %10(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.d, i64 noundef 9223372036854775807) #17, !inline_history !94 ; 2 uses
  br i1 %i.ag, label %bb.u, label %av_ts_make_string.exit88

bb.u:                                             ; preds = %bb.t
  %i.be = load ptr, ptr %i.ah, align 8, !tbaa !26
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.ai
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !35
  %i.bh = call i64 @ff_wrap_timestamp(ptr noundef %i.bg, i64 noundef %i.bd) #17
  br label %av_ts_make_string.exit88

av_ts_make_string.exit88:                         ; preds = %bb.t, %bb.u
  %.0.i86 = phi i64 [ %i.bh, %bb.u ], [ %i.bd, %bb.t ] ; 6 uses
  %i.bi = load i64, ptr %i.d, align 8, !tbaa !57  ; 2 uses
  %i.bj = icmp eq i64 %i.bi, %i.ak
  %i.bk = add nsw i32 %.060108, 1
  %.1 = select i1 %i.bj, i32 %i.bk, i32 0         ; 2 uses
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  %i.bm = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.h, i64 noundef 32, ptr noundef nonnull @.str.22, i64 noundef %.164106) #17 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  %i.bn = icmp eq i64 %.0.i86, -9223372036854775808 ; 2 uses
  br i1 %i.bn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %av_ts_make_string.exit88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.i, ptr noundef nonnull align 1 dereferenceable(6) @.str.21, i64 6, i1 false)
  br label %av_ts_make_string.exit90

bb.w:                                             ; preds = %av_ts_make_string.exit88
  %i.bo = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 32, ptr noundef nonnull @.str.22, i64 noundef %.0.i86) #17 ; 0 uses
  br label %av_ts_make_string.exit90

av_ts_make_string.exit90:                         ; preds = %bb.v, %bb.w
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  %i.bp = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.j, i64 noundef 32, ptr noundef nonnull @.str.22, i64 noundef %.0.i86102105) #17 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  %11 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.k, i64 noundef 32, ptr noundef nonnull @.str.22, i64 noundef %2) #17 ; 0 uses
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 56, ptr noundef nonnull @.str.19, i64 noundef %i.bl, i64 noundef %i.bi, i64 noundef %i.ak, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, i64 noundef %.162107, i64 noundef %i.bc, i32 noundef %.1) #17
  br i1 %i.bn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %av_ts_make_string.exit90
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.20) #17
  br label %bb.ab

bb.y:                                             ; preds = %av_ts_make_string.exit90
  %.not82 = icmp sgt i64 %2, %.0.i86              ; 3 uses
  %i.bq = add nsw i64 %i.bc, -1
  %i.br = load i64, ptr %i.d, align 8             ; 3 uses
  %.0.i86101 = select i1 %.not82, i64 %.0.i86102105, i64 %.0.i86 ; 2 uses
  %i.bs = select i1 %.not82, i64 %i.ak, i64 %i.br ; 2 uses
  %.2 = select i1 %.not82, i64 %.162107, i64 %i.bq ; 2 uses
  %.not83 = icmp slt i64 %2, %.0.i86
  br i1 %.not83, label %._crit_edge119, label %bb.z

._crit_edge119:                                   ; preds = %bb.y
  %.pre120 = load i64, ptr %i.a, align 8, !tbaa !57
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i64 %i.br, ptr %i.a, align 8, !tbaa !57
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge119, %bb.z
  %i.bt = phi i64 [ %i.br, %bb.z ], [ %.pre120, %._crit_edge119 ] ; 3 uses
  %.265 = phi i64 [ %.0.i86, %bb.z ], [ %.164106, %._crit_edge119 ] ; 2 uses
  %i.bu = icmp slt i64 %i.bt, %.2
  br i1 %i.bu, label %av_ts_make_string.exit85, label %._crit_edge, !llvm.loop !95

._crit_edge:                                      ; preds = %bb.aa, %.preheader
  %.0.i86102.lcssa = phi i64 [ %.promoted100, %.preheader ], [ %.0.i86101, %bb.aa ]
  %.lcssa97 = phi i64 [ %.promoted, %.preheader ], [ %i.bs, %bb.aa ]
  %.164.lcssa = phi i64 [ %.063, %.preheader ], [ %.265, %bb.aa ]
  %.lcssa = phi i64 [ %i.ae, %.preheader ], [ %i.bt, %bb.aa ]
  %i.bv = and i32 %8, 1
  %.not79 = icmp eq i32 %i.bv, 0                  ; 2 uses
  %i.bw = select i1 %.not79, i64 %.lcssa97, i64 %.lcssa
  %i.bx = select i1 %.not79, i64 %.0.i86102.lcssa, i64 %.164.lcssa
  store i64 %i.bx, ptr %9, align 8, !tbaa !57
  br label %bb.ab

bb.ab:                                            ; preds = %bb.i, %read_timestamp.exit, %._crit_edge, %bb.x, %bb.l, %bb.g
  %.0 = phi i64 [ %i.bw, %._crit_edge ], [ %i.z, %bb.g ], [ -1, %read_timestamp.exit ], [ %.promoted, %bb.l ], [ -1, %bb.x ], [ -1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  ret i64 %.0
}

declare i64 @avio_seek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @ff_read_frame_flush(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  tail call void @ff_flush_packet_queue(ptr noundef %0) #17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9
  %.not25 = icmp eq i32 %i.b, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 268
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35   ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 816 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @av_parser_close(ptr noundef nonnull %i.i) #17
  store ptr null, ptr %i.h, align 8, !tbaa !83
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 792
  store i64 -9223372036854775808, ptr %i.j, align 8, !tbaa !84
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 728
  store i64 -9223372036854775808, ptr %i.k, align 8, !tbaa !85
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 840
  %i.m = load i64, ptr %i.l, align 8, !tbaa !86
  %i.n = icmp eq i64 %i.m, -9223372036854775808
  %spec.select = select i1 %i.n, i64 9223090561878065151, i64 -9223372036854775808
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 848
  store i64 %spec.select, ptr %i.o, align 8, !tbaa !37
  %i.p = load i32, ptr %i.d, align 4, !tbaa !87
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 804
  store i32 %i.p, ptr %i.q, align 4, !tbaa !88
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 592
  store <4 x i64> splat (i64 -9223372036854775808), ptr %i.r, align 8, !tbaa !57
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 624
  store <4 x i64> splat (i64 -9223372036854775808), ptr %i.s, align 8, !tbaa !57
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 656
  store <4 x i64> splat (i64 -9223372036854775808), ptr %i.t, align 8, !tbaa !57
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 688
  store <4 x i64> splat (i64 -9223372036854775808), ptr %i.u, align 8, !tbaa !57
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 720
  store i64 -9223372036854775808, ptr %i.v, align 8, !tbaa !57
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 360
  store i32 0, ptr %i.w, align 8, !tbaa !89
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = load i32, ptr %i.a, align 4, !tbaa !9
  %i.y = zext i32 %i.x to i64
  %i.z = icmp samesign ult i64 %indvars.iv.next, %i.y
  br i1 %i.z, label %bb.b, label %._crit_edge, !llvm.loop !90
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @ff_find_last_ts(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 16 uses
  %i.b = alloca i64, align 8                      ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69
  %i.e = tail call i64 @avio_size(ptr noundef %i.d) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.f = add nsw i64 %i.e, -1
  store i64 %i.f, ptr %i.a, align 8, !tbaa !57
  %i.g = icmp sgt i32 %1, -1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.i = zext nneg i32 %1 to i64                  ; 3 uses
  br i1 %i.g, label %read_timestamp.exit.us, label %read_timestamp.exit

read_timestamp.exit.us:                           ; preds = %bb.a, %read_timestamp.exit.us
  %.027.us = phi i64 [ %i.s, %read_timestamp.exit.us ], [ 1024, %bb.a ] ; 3 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !57   ; 3 uses
  %i.k = sub nsw i64 %i.j, %.027.us
  %i.l = call i64 @llvm.smax.i64(i64 %i.k, i64 0)
  store i64 %i.l, ptr %i.a, align 8, !tbaa !57
  %i.m = call i64 %4(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %i.a, i64 noundef %i.j) #17, !inline_history !94
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !35
  %i.q = call i64 @ff_wrap_timestamp(ptr noundef %i.p, i64 noundef %i.m) #17 ; 2 uses
  %i.r = icmp eq i64 %i.q, -9223372036854775808   ; 2 uses
  %i.s = shl nsw i64 %.027.us, 1
  %i.t = icmp sgt i64 %i.j, %.027.us
  %or.cond.us = select i1 %i.r, i1 %i.t, i1 false
  br i1 %or.cond.us, label %read_timestamp.exit.us, label %.critedge, !llvm.loop !96

read_timestamp.exit:                              ; preds = %bb.a, %read_timestamp.exit
  %.027 = phi i64 [ %i.z, %read_timestamp.exit ], [ 1024, %bb.a ] ; 3 uses
  %i.u = load i64, ptr %i.a, align 8, !tbaa !57   ; 3 uses
  %i.v = sub nsw i64 %i.u, %.027
  %i.w = call i64 @llvm.smax.i64(i64 %i.v, i64 0)
  store i64 %i.w, ptr %i.a, align 8, !tbaa !57
  %i.x = call i64 %4(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %i.a, i64 noundef %i.u) #17, !inline_history !94 ; 2 uses
  %i.y = icmp eq i64 %i.x, -9223372036854775808   ; 2 uses
  %i.z = shl nsw i64 %.027, 1
  %i.aa = icmp sgt i64 %i.u, %.027
  %or.cond = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %or.cond, label %read_timestamp.exit, label %.critedge.thread, !llvm.loop !96

.critedge:                                        ; preds = %read_timestamp.exit.us
  br i1 %i.r, label %bb.g, label %.preheader.split.us

.critedge.thread:                                 ; preds = %read_timestamp.exit
  br i1 %i.y, label %bb.g, label %.preheader.split

.preheader.split.us:                              ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !57
  %i.ac = add nsw i64 %i.ab, 1
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !57
  %i.ad = call i64 %4(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %i.b, i64 noundef 9223372036854775807) #17, !inline_history !94
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !35
  %i.ah = call i64 @ff_wrap_timestamp(ptr noundef %i.ag, i64 noundef %i.ad) #17 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, -9223372036854775808
  br i1 %i.ai, label %.split47.us, label %.lr.ph52

.lr.ph52:                                         ; preds = %.preheader.split.us, %read_timestamp.exit39.us
  %i.aj = phi i64 [ %i.as, %read_timestamp.exit39.us ], [ %i.ah, %.preheader.split.us ] ; 2 uses
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !57  ; 4 uses
  %i.al = load i64, ptr %i.a, align 8, !tbaa !57
  %i.am = icmp sgt i64 %i.ak, %i.al
  br i1 %i.am, label %bb.b, label %.split50.us

bb.b:                                             ; preds = %.lr.ph52
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !57
  %.not.us = icmp slt i64 %i.ak, %i.e
  br i1 %.not.us, label %read_timestamp.exit39.us, label %.split47.us

read_timestamp.exit39.us:                         ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.an = add nsw i64 %i.ak, 1
  store i64 %i.an, ptr %i.b, align 8, !tbaa !57
  %i.ao = call i64 %4(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %i.b, i64 noundef 9223372036854775807) #17, !inline_history !94
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !35
  %i.as = call i64 @ff_wrap_timestamp(ptr noundef %i.ar, i64 noundef %i.ao) #17 ; 2 uses
  %i.at = icmp eq i64 %i.as, -9223372036854775808
  br i1 %i.at, label %.split47.us, label %.lr.ph52

.preheader.split:                                 ; preds = %.critedge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
end_hunk_0
