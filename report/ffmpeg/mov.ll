Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mov?download=true
inline.NumInlined: 191
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@mov_read_default:bb.a
  %.not184 = icmp eq i32 %i.ck, 0
  br i1 %.not184, label %bb.af, label %split.thread

bb.af:                                            ; preds = %bb.ae
  %i.cl = add nsw i64 %i.bw, %i.ba
  %i.cm = call i64 @avio_size(ptr noundef nonnull %1) #16
  %i.cn = icmp eq i64 %i.cl, %i.cm
  br i1 %i.cn, label %split, label %bb.ai

split:                                            ; preds = %bb.af
  %.pre = load i32, ptr %i.s, align 8, !tbaa !138
  %.pre237 = and i32 %.pre, 1
  %.not185 = icmp eq i32 %.pre237, 0
  br i1 %.not185, label %split.thread248, label %split.thread

split.thread:                                     ; preds = %bb.ae, %bb.ad, %split
  %i.co = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 128
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !467
  %i.cr = and i32 %i.cq, 2
  %.not186 = icmp eq i32 %i.cr, 0
  br i1 %.not186, label %bb.ag, label %split.thread248

bb.ag:                                            ; preds = %split.thread
  %i.cs = load i32, ptr %i.t, align 4, !tbaa !139
  %.not187 = icmp eq i32 %i.cs, 0
  br i1 %.not187, label %bb.ah, label %split.thread248

split.thread248:                                  ; preds = %bb.ac, %bb.ag, %split.thread, %split
  %i.ct = add nsw i64 %i.bw, %i.ba
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !140
  br label %bb.ah

bb.ah:                                            ; preds = %split.thread248, %bb.ag
  %i.cv = load i32, ptr %i.d, align 8, !tbaa !463
  %i.cw = add nsw i32 %i.cv, -1
  store i32 %i.cw, ptr %i.d, align 8, !tbaa !463
  br label %.thread201

bb.ai:                                            ; preds = %bb.af, %bb.ab, %bb.aa
  %i.cx = call i64 @avio_seek(ptr noundef %1, i64 noundef 0, i32 noundef 1) #16
  %i.cy = sub nsw i64 %i.ba, %i.cx
  %i.cz = add nsw i64 %i.cy, %i.bw                ; 5 uses
  %i.da = icmp sgt i64 %i.cz, 0
  br i1 %i.da, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.db = call i64 @avio_skip(ptr noundef %1, i64 noundef %i.cz) #16 ; 0 uses
  br label %.thread197

bb.ak:                                            ; preds = %bb.ai
  %i.dc = icmp slt i64 %i.cz, 0
  br i1 %i.dc, label %bb.al, label %.thread197

bb.al:                                            ; preds = %bb.ak
  %i.dd = load ptr, ptr %i.l, align 8, !tbaa !36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.de = call ptr @av_fourcc_make_string(ptr noundef nonnull %i.c, i32 noundef %.sroa.0.2) #16
  %i.df = sub nsw i64 0, %i.cz
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.dd, i32 noundef 24, ptr noundef nonnull @.str.35, ptr noundef %i.de, i64 noundef %i.df) #16
  %i.dg = call i64 @avio_seek(ptr noundef %1, i64 noundef %i.cz, i32 noundef 1) #16 ; 0 uses
  br label %.thread197

.thread197:                                       ; preds = %bb.aj, %bb.al, %bb.ak, %bb.y
  %i.dh = add nsw i64 %i.ba, %.1155               ; 3 uses
  %.not = icmp sgt i64 %i.dh, %i.j
  br i1 %.not, label %.thread206, label %bb.d

.thread206:                                       ; preds = %.thread197, %bb.i, %bb.d, %bb.q, %bb.c
  %.3157 = phi i64 [ 0, %bb.c ], [ %.0154222, %bb.i ], [ %.1155, %bb.q ], [ %.0154222, %bb.d ], [ %i.dh, %.thread197 ] ; 2 uses
  %i.di = icmp slt i64 %.3157, %spec.select
  %i.dj = icmp ult i64 %3, 524287
  %or.cond30 = and i1 %i.dj, %i.di
  br i1 %or.cond30, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.thread206
  %i.dk = sub nsw i64 %spec.select, %.3157
  %i.dl = call i64 @avio_skip(ptr noundef %1, i64 noundef %i.dk) #16 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.thread206
  %i.dm = load i32, ptr %i.d, align 8, !tbaa !463
  %i.dn = add nsw i32 %i.dm, -1
  store i32 %i.dn, ptr %i.d, align 8, !tbaa !463
  br label %.thread201

.thread201:                                       ; preds = %bb.z, %bb.ah, %bb.m, %bb.an, %bb.b
  %.4 = phi i32 [ -1094995529, %bb.b ], [ 0, %bb.an ], [ 0, %bb.ah ], [ %i.bx, %bb.z ], [ 0, %bb.m ]
  ret i32 %.4
}

declare i64 @avio_skip(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 101) i32 @mov_probe(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !469  ; 4 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = icmp ult i32 %i.b, 8
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !470
  %i.g = sext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %.05578 = phi i32 [ -1, %.lr.ph ], [ %.3, %bb.m ] ; 8 uses
  %.05677 = phi i32 [ 0, %.lr.ph ], [ %.258, %bb.m ] ; 6 uses
  %.05976 = phi i64 [ 0, %.lr.ph ], [ %.160, %bb.m ] ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %.05976 ; 4 uses
  %i.i = load i32, ptr %i.h, align 1, !tbaa !94   ; 3 uses
  %i.j = icmp ne i32 %i.i, 16777216
  %i.k = add nuw nsw i64 %.05976, 16
  %.not = icmp samesign ugt i64 %i.k, %i.c
  %or.cond66 = select i1 %i.j, i1 true, i1 %.not
  br i1 %or.cond66, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load i64, ptr %i.l, align 1, !tbaa !94
  %i.n = tail call noundef i64 @llvm.bswap.i64(i64 %i.m)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.i)
  %i.p = zext i32 %i.o to i64
  %i.q = icmp eq i32 %i.i, 0
  %i.r = sub nsw i64 %i.g, %.05976
  %spec.select = select i1 %i.q, i64 %i.r, i64 %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.054 = phi i64 [ %i.n, %bb.c ], [ %spec.select, %bb.d ] ; 3 uses
  %.053 = phi i64 [ 16, %bb.c ], [ 8, %bb.d ]
  %i.s = icmp slt i64 %.054, %.053
  br i1 %i.s, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.u = load i32, ptr %i.t, align 1, !tbaa !94
  switch i32 %i.u, label %bb.l [
    i32 1987014509, label %.thread
    i32 1818653296, label %bb.k
    i32 1684632949, label %bb.k
    i32 1885956979, label %bb.k
    i32 2105508482, label %bb.j
    i32 2003395685, label %bb.i
    i32 1701079415, label %bb.i
    i32 1701147238, label %bb.i
    i32 1802401130, label %bb.i
    i32 1952672112, label %bb.i
    i32 1887007846, label %bb.g
    i32 1635017845, label %.fold.split
    i32 1952539757, label %.fold.split
    i32 1953459824, label %.fold.split
  ]

.thread:                                          ; preds = %bb.f
  %i.v = trunc i64 %.05976 to i32
  %i.w = add i32 %i.v, 4
  br label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.y = load i32, ptr %i.x, align 1, !tbaa !94
  switch i32 %i.y, label %bb.l [
    i32 540176490, label %bb.h
    i32 544764010, label %bb.h
    i32 543979626, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g
  %i.z = tail call i32 @llvm.smax.i32(i32 %.05677, i32 5)
  br label %bb.l

bb.i:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.aa = tail call i32 @llvm.smax.i32(i32 %.05677, i32 95)
  br label %bb.l

bb.j:                                             ; preds = %bb.f
  %i.ab = tail call i32 @llvm.smax.i32(i32 %.05677, i32 45)
  br label %bb.l

bb.k:                                             ; preds = %bb.f, %bb.f, %bb.f
  %i.ac = tail call i32 @llvm.smax.i32(i32 %.05677, i32 50)
  br label %bb.l

.fold.split:                                      ; preds = %bb.f, %bb.f, %bb.f
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %.fold.split, %.thread, %bb.g, %bb.h, %bb.k, %bb.j, %bb.i
  %.157 = phi i32 [ %.05677, %bb.f ], [ %i.z, %bb.h ], [ %i.ac, %bb.k ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ], [ 100, %bb.g ], [ 100, %.thread ], [ 100, %.fold.split ] ; 2 uses
  %.2 = phi i32 [ %.05578, %bb.f ], [ %.05578, %bb.h ], [ %.05578, %bb.k ], [ %.05578, %bb.i ], [ %.05578, %bb.j ], [ %.05578, %bb.g ], [ %i.w, %.thread ], [ %.05578, %.fold.split ] ; 2 uses
  %1 = xor i64 %.05976, 9223372036854775807
  %i.ad = icmp samesign ugt i64 %.054, %1
  br i1 %i.ad, label %select.unfold, label %bb.m

bb.m:                                             ; preds = %bb.e, %bb.l
  %.054.pn = phi i64 [ %.054, %bb.l ], [ 4, %bb.e ]
  %.258 = phi i32 [ %.157, %bb.l ], [ %.05677, %bb.e ] ; 2 uses
  %.3 = phi i32 [ %.2, %bb.l ], [ %.05578, %bb.e ] ; 2 uses
  %.160 = add nuw nsw i64 %.054.pn, %.05976       ; 2 uses
  %i.ae = add nuw i64 %.160, 8
  %i.af = icmp ugt i64 %i.ae, %i.c
  br i1 %i.af, label %select.unfold, label %bb.b

select.unfold:                                    ; preds = %bb.m, %bb.l
  %.258.ph = phi i32 [ %.157, %bb.l ], [ %.258, %bb.m ] ; 4 uses
  %.3.ph = phi i32 [ %.2, %bb.l ], [ %.3, %bb.m ] ; 3 uses
  %i.ag = icmp sgt i32 %.258.ph, 50
  %i.ah = icmp ne i32 %.3.ph, -1
  %or.cond = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %or.cond, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %select.unfold
  %i.ai = add nsw i32 %i.b, -16                   ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i32 %.3.ph, %i.ai
  br i1 %i.ak, label %.lr.ph86, label %.loopexit

.lr.ph86:                                         ; preds = %bb.n
  %i.al = sext i32 %.3.ph to i64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !470
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph86, %bb.s
  %.26185 = phi i64 [ %i.al, %.lr.ph86 ], [ %i.ax, %bb.s ] ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %.26185 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 1, !tbaa !94
  %i.aq = icmp eq i32 %i.ap, 1919706216
  br i1 %i.aq, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.as = load i32, ptr %i.ar, align 1, !tbaa !94
  %i.at = icmp eq i32 %i.as, 1919707245
  br i1 %i.at, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.av = load i32, ptr %i.au, align 1, !tbaa !94
  %i.aw = icmp eq i32 %i.av, 1195724877
  br i1 %i.aw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 24, ptr noundef nonnull @.str.519) #16
  br label %.loopexit

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.ax = add nsw i64 %.26185, 2                  ; 2 uses
  %i.ay = icmp slt i64 %i.ax, %i.aj
  br i1 %i.ay, label %bb.o, label %.loopexit, !llvm.loop !468

.loopexit:                                        ; preds = %bb.s, %bb.a, %bb.n, %select.unfold, %bb.r
  %.062 = phi i32 [ 5, %bb.r ], [ %.258.ph, %select.unfold ], [ %.258.ph, %bb.n ], [ 0, %bb.a ], [ %.258.ph, %bb.s ]
  ret i32 %.062
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @mov_read_header(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [23 x i8], align 16               ; 4 uses
  %1 = alloca %struct.AVTimecode, align 4         ; 4 uses
  %i.b = alloca [23 x i8], align 16               ; 3 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  %i.d = alloca [16 x i32], align 16              ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !141  ; 20 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 35 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %0, ptr %i.i, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  store i32 -1, ptr %i.j, align 4, !tbaa !143
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 464
  store i32 -1, ptr %i.k, align 8, !tbaa !144
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 468
  store i32 -1, ptr %i.l, align 4, !tbaa !145
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 144 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !138
  %i.o = and i32 %i.n, 1
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = tail call i64 @avio_size(ptr noundef nonnull %i.h) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.5.0 = phi i64 [ %i.p, %bb.b ], [ 9223372036854775807, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 236 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 36 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 4 uses
  %.pre = load i32, ptr %i.q, align 4, !tbaa !132
  %i.u = icmp eq i32 %.pre, 0
  br i1 %i.u, label %bb.d, label %.critedge1043

.critedge1043:                                    ; preds = %bb.j, %bb.c
  %i.v = tail call i64 @avio_seek(ptr noundef nonnull %i.h, i64 noundef 0, i32 noundef 0) #16 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.critedge1043, %bb.c
  %i.w = tail call i32 @mov_read_default(ptr noundef nonnull %i.f, ptr noundef nonnull %i.h, i32 1953460082, i64 %.sroa.5.0) ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.521) #16
  br label %mov_parse_heif_items.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.y = load i32, ptr %i.m, align 8, !tbaa !138
  %i.z = and i32 %i.y, 1
  %.not257 = icmp eq i32 %i.z, 0
  %.pre676 = load i32, ptr %i.r, align 8, !tbaa !136
  %.not262 = icmp eq i32 %.pre676, 0              ; 2 uses
  br i1 %.not257, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not262, label %bb.h, label %.critedge.thread782

bb.h:                                             ; preds = %bb.g
  %i.aa = load i32, ptr %i.s, align 4, !tbaa !146
  %.not259 = icmp eq i32 %i.aa, 0
  br i1 %.not259, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load i32, ptr %i.t, align 8, !tbaa !147
  %.not260 = icmp eq i32 %i.ab, 0
  br i1 %.not260, label %bb.j, label %.critedge.thread782

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ac = load i32, ptr %i.q, align 4, !tbaa !132 ; 2 uses
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.q, align 4, !tbaa !132
  %.not261 = icmp eq i32 %i.ac, 0
  br i1 %.not261, label %.critedge1043, label %.critedge.thread, !llvm.loop !471

.critedge:                                        ; preds = %bb.f
  br i1 %.not262, label %.critedge.thread, label %.critedge.thread782

.critedge.thread:                                 ; preds = %bb.j, %.critedge
  %.pr789 = load i32, ptr %i.s, align 4, !tbaa !146
  %.not263 = icmp eq i32 %.pr789, 0
  br i1 %.not263, label %bb.k, label %.critedge.thread782

bb.k:                                             ; preds = %.critedge.thread
  %i.ae = load i32, ptr %i.t, align 8, !tbaa !147
  %.not264 = icmp eq i32 %i.ae, 0
  br i1 %.not264, label %bb.l, label %.critedge.thread782

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.522) #16
  br label %mov_parse_heif_items.exit.thread

.critedge.thread782:                              ; preds = %bb.i, %bb.g, %bb.k, %.critedge.thread, %.critedge
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.ag = tail call i64 @avio_seek(ptr noundef nonnull %i.h, i64 noundef 0, i32 noundef 1) #16
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.af, i32 noundef 56, ptr noundef nonnull @.str.523, i64 noundef %i.ag) #16
  %i.ah = load i32, ptr %i.s, align 4, !tbaa !146
  %.not265 = icmp eq i32 %i.ah, 0
  br i1 %.not265, label %mov_parse_heif_items.exit, label %bb.m

bb.m:                                             ; preds = %.critedge.thread782
  %i.ai = load i32, ptr %i.t, align 8, !tbaa !147
  %.not266 = icmp eq i32 %i.ai, 0
  br i1 %.not266, label %mov_parse_heif_items.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !141 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 480 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !148 ; 2 uses
  %.not94196.i = icmp sgt i32 %i.al, 0
  br i1 %.not94196.i, label %.lr.ph198.i, label %.thread120.i

.lr.ph198.i:                                      ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 472 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 504
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 464
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 212
  br label %bb.o

bb.o:                                             ; preds = %bb.an, %.lr.ph198.i
  %i.aq = phi i32 [ %i.al, %.lr.ph198.i ], [ %i.ej, %bb.an ] ; 2 uses
  %indvars.iv267.i = phi i64 [ 0, %.lr.ph198.i ], [ %indvars.iv.next268.i, %bb.an ] ; 2 uses
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !149
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv267.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !151 ; 15 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %bb.an, label %bb.p

bb.p:                                             ; preds = %bb.o
end_hunk_0
