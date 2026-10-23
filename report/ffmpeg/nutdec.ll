Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/nutdec?download=true
inline.NumInlined: 36
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@read_seek:bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !32
  %i.cd = call fastcc i64 @find_startcode(ptr noundef %i.cc, i64 noundef 5641854393898386793, i64 noundef %.1) ; 5 uses
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !32
  %i.cf = call i64 @avio_seek(ptr noundef %i.ce, i64 noundef %i.cd, i32 noundef 0) #12 ; 0 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 4272
  store i64 %i.cd, ptr %i.cg, align 8, !tbaa !76
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.97, i64 noundef %i.cd) #12
  %i.ch = icmp sgt i64 %.1, %i.cd
  %i.ci = add nsw i64 %.1, 15
  %i.cj = icmp slt i64 %i.ci, %i.cd
  %or.cond = select i1 %i.ch, i1 true, i1 %i.cj
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.98) #12
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !59 ; 3 uses
  %.not77 = icmp eq i32 %i.cl, 0
  br i1 %.not77, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 4248
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !58 ; 9 uses
  %wide.trip.count = zext i32 %i.cl to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.co = icmp ult i32 %i.cl, 8
  br i1 %i.co, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967288
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.o ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.o ]
  %i.cp = getelementptr inbounds nuw [56 x i8], ptr %i.cn, i64 %indvars.iv
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store i32 1, ptr %i.cq, align 4, !tbaa !77
  %i.cr = getelementptr inbounds nuw [56 x i8], ptr %i.cn, i64 %indvars.iv
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 60
  store i32 1, ptr %i.cs, align 4, !tbaa !77
  %i.ct = getelementptr inbounds nuw [56 x i8], ptr %i.cn, i64 %indvars.iv
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 116
  store i32 1, ptr %i.cu, align 4, !tbaa !77
  %i.cv = getelementptr inbounds nuw [56 x i8], ptr %i.cn, i64 %indvars.iv
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 172
  store i32 1, ptr %i.cw, align 4, !tbaa !77
  %i.cx = getelementptr inbounds nuw [56 x i8], ptr %i.cn, i64 %indvars.iv
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 228
  store i32 1, ptr %i.cy, align 4, !tbaa !77
  %i.cz = getelementptr inbounds nuw [56 x i8], ptr %i.cn, i64 %indvars.iv
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 284
  store i32 1, ptr %i.da, align 4, !tbaa !77
  %i.db = getelementptr inbounds nuw [56 x i8], ptr %i.cn, i64 %indvars.iv
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 340
  store i32 1, ptr %i.dc, align 4, !tbaa !77
  %i.dd = getelementptr inbounds nuw [56 x i8], ptr %i.cn, i64 %indvars.iv
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 396
  store i32 1, ptr %i.de, align 4, !tbaa !77
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.o, !llvm.loop !145

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod84 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod84)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.p ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.p ]
  %i.df = getelementptr inbounds nuw [56 x i8], ptr %i.cn, i64 %indvars.iv.epil
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store i32 1, ptr %i.dg, align 4, !tbaa !77
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.p, !llvm.loop !146

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.p, %bb.n
  %i.dh = getelementptr inbounds nuw i8, ptr %i.d, i64 4280
  store i64 0, ptr %i.dh, align 8, !tbaa !87
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.a, %._crit_edge, %bb.f
  %.163 = phi i32 [ %i.bg, %bb.f ], [ 0, %._crit_edge ], [ -1, %bb.d ], [ -38, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret i32 %.163
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -9223372036854775808, 9223372036854775800) i64 @find_startcode(ptr noundef %0, i64 noundef range(i64 5641854393898386793, 5643873726143592924) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %find_any_startcode.exit, %bb.a
  %.07 = phi i64 [ %2, %bb.a ], [ -1, %find_any_startcode.exit ] ; 2 uses
  %i.a = icmp sgt i64 %.07, -1
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i64 @avio_seek(ptr noundef %0, i64 noundef %.07, i32 noundef 0) #12 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = tail call i32 @avio_feof(ptr noundef %0) #12
  %.not12.i = icmp eq i32 %i.c, 0
  br i1 %.not12.i, label %.lr.ph.i, label %.thread17

.lr.ph.i:                                         ; preds = %bb.d, %.backedge.i
  %.013.i = phi i64 [ %i.g, %.backedge.i ], [ 0, %bb.d ]
  %i.d = shl i64 %.013.i, 8
  %i.e = tail call i32 @avio_r8(ptr noundef %0) #12
  %i.f = sext i32 %i.e to i64
  %i.g = or i64 %i.d, %i.f                        ; 4 uses
  %.mask.i = and i64 %i.g, -72057594037927936
  %.not11.i = icmp eq i64 %.mask.i, 5620492334958379008
  br i1 %.not11.i, label %bb.e, label %.backedge.i

.backedge.i:                                      ; preds = %bb.e, %.lr.ph.i
  %i.h = tail call i32 @avio_feof(ptr noundef %0) #12
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %.lr.ph.i, label %.thread17, !llvm.loop !1

bb.e:                                             ; preds = %.lr.ph.i
  switch i64 %i.g, label %.backedge.i [
    i64 5642300418477196461, label %find_any_startcode.exit
    i64 5643873726143592923, label %find_any_startcode.exit
    i64 5641854393898386793, label %find_any_startcode.exit
    i64 5641228474469759608, label %find_any_startcode.exit
    i64 5645505568151168590, label %find_any_startcode.exit
  ]

find_any_startcode.exit:                          ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.i = icmp eq i64 %i.g, %1
  br i1 %i.i, label %.thread, label %bb.b

.thread:                                          ; preds = %find_any_startcode.exit
  %i.j = tail call i64 @avio_seek(ptr noundef %0, i64 noundef 0, i32 noundef 1) #12
  %i.k = add nsw i64 %i.j, -8
  br label %.thread17

.thread17:                                        ; preds = %bb.d, %.backedge.i, %.thread
  %.1916 = phi i64 [ %i.k, %.thread ], [ -1, %.backedge.i ], [ -1, %bb.d ]
  ret i64 %.1916
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @decode_info_header(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 13 uses
  %i.b = alloca [1024 x i8], align 16             ; 11 uses
  %i.c = alloca [256 x i8], align 16              ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39   ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.h = tail call fastcc i32 @get_packetheader(ptr noundef %i.g, i32 noundef 1, i64 noundef 5641228474469759608)
  %i.i = sext i32 %i.h to i64
  %i.j = tail call i64 @avio_seek(ptr noundef %i.g, i64 noundef 0, i32 noundef 1) #12
  %i.k = add nsw i64 %i.j, %i.i                   ; 2 uses
  %i.l = tail call i64 @ffio_read_varlen(ptr noundef %i.g) #12 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 44 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !59
  %i.o = zext i32 %i.n to i64
  %.not = icmp ugt i64 %i.l, %i.o
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.e, i32 noundef 16, ptr noundef nonnull @.str.41, i64 noundef %i.l) #12
  br label %bb.as

bb.c:                                             ; preds = %bb.a
  %i.p = trunc nuw i64 %i.l to i32                ; 2 uses
  %i.q = tail call i64 @ffio_read_varlen(ptr noundef %i.g) #12 ; 2 uses
  %i.r = add i64 %i.q, 1
  %i.s = ashr i64 %i.r, 1                         ; 3 uses
  %i.t = tail call i64 @ffio_read_varlen(ptr noundef %i.g) #12 ; 2 uses
  %i.u = tail call i64 @ffio_read_varlen(ptr noundef %i.g) #12
  %i.v = tail call i64 @ffio_read_varlen(ptr noundef %i.g) #12
  %i.w = trunc i64 %i.v to i32                    ; 2 uses
  %i.x = icmp eq i64 %i.s, 0                      ; 2 uses
  %i.y = icmp ne i64 %i.l, 0                      ; 4 uses
  %or.cond = or i1 %i.y, %i.x
  br i1 %or.cond, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %1 = and i64 %i.q, 1
  %.not.not.i = icmp eq i64 %1, 0
  %2 = sub nsw i64 0, %i.s
  %.0.i = select i1 %.not.not.i, i64 %2, i64 %i.s
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4268
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !41
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = udiv i64 %i.t, %i.ab                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4296
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !42
  %i.af = urem i64 %i.t, %i.ab
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.af
  %i.ah = add i64 %i.ac, %i.u
  %i.ai = load i64, ptr %i.ag, align 4
  %i.aj = tail call ptr @avpriv_new_chapter(ptr noundef nonnull %i.e, i64 noundef %.0.i, i64 %i.ai, i64 noundef %i.ac, i64 noundef %i.ah, ptr noundef null) #12 ; 2 uses
  %.not114.not = icmp eq ptr %i.aj, null
  br i1 %.not114.not, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.e, i32 noundef 16, ptr noundef nonnull @.str.42) #12
  br label %bb.as

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !62
  %i.an = add nuw nsw i64 %i.l, 4294967295
  %i.ao = and i64 %i.an, 4294967295
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !64 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 200
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 276
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.h
  %.096 = phi ptr [ %i.as, %bb.g ], [ %i.au, %bb.h ], [ null, %bb.e ] ; 3 uses
  %.095 = phi ptr [ %i.aq, %bb.g ], [ null, %bb.h ], [ null, %bb.e ] ; 2 uses
  %.1 = phi ptr [ %i.ar, %bb.g ], [ %i.at, %bb.h ], [ %i.ak, %bb.e ]
  %.093 = phi i32 [ 1, %bb.g ], [ 1, %bb.h ], [ 0, %bb.e ]
  %.not192 = icmp eq i32 %i.w, 0
  br i1 %.not192, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 8 uses
  %.not126 = icmp eq ptr %.096, null
  %i.aw = getelementptr inbounds nuw i8, ptr %.095, i64 204 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.095, i64 208 ; 3 uses
  %i.ay = add nuw nsw i64 %i.l, 4294967295
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 4 uses
  %i.ba = and i64 %i.ay, 4294967295               ; 6 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %set_disposition_bits.exit
  %.0100191 = phi i32 [ 0, %.lr.ph ], [ %i.hi, %set_disposition_bits.exit ]
  %i.bb = call i64 @ffio_read_varlen(ptr noundef %i.g) #12
  %i.bc = trunc i64 %i.bb to i32                  ; 6 uses
  %.not.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i, label %get_str.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = call i32 @llvm.umin.i32(i32 %i.bc, i32 256)
  %i.be = call i32 @avio_read(ptr noundef %i.g, ptr noundef nonnull %i.a, i32 noundef %i.bd) #12 ; 0 uses
  %i.bf = icmp ugt i32 %i.bc, 256
  br i1 %i.bf, label %.lr.ph.i, label %get_str.exit

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %.031.i = phi i32 [ %i.bh, %.lr.ph.i ], [ %i.bc, %bb.k ]
  %i.bg = call i32 @avio_r8(ptr noundef %i.g) #12 ; 0 uses
  %i.bh = add i32 %.031.i, -1                     ; 2 uses
  %i.bi = load i32, ptr %i.av, align 8, !tbaa !45 ; 2 uses
  %.not30.i = icmp eq i32 %i.bi, 0
  %i.bj = icmp ugt i32 %i.bh, 256
  %i.bk = select i1 %.not30.i, i1 %i.bj, i1 false
  br i1 %i.bk, label %.lr.ph.i, label %get_str.exit.thread, !llvm.loop !2

get_str.exit.thread:                              ; preds = %.lr.ph.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 255
  store i8 0, ptr %i.bl, align 1, !tbaa !15
  %.not29.i231 = icmp ne i32 %i.bi, 0
  br label %.loopexit240

get_str.exit:                                     ; preds = %bb.j, %bb.k
  %.pre = load i32, ptr %i.av, align 8, !tbaa !45
  %i.bm = call i32 @llvm.umin.i32(i32 %i.bc, i32 255)
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  store i8 0, ptr %i.bo, align 1, !tbaa !15
  %.not29.i = icmp ne i32 %.pre, 0                ; 2 uses
  %i.bp = icmp eq i32 %i.bc, 256                  ; 2 uses
  %i.bq = or i1 %i.bp, %.not29.i
  br i1 %i.bq, label %.loopexit240.loopexit, label %bb.l

.loopexit240.loopexit:                            ; preds = %get_str.exit
  %i.br = sext i1 %i.bp to i32
  br label %.loopexit240

.loopexit240:                                     ; preds = %.loopexit240.loopexit, %get_str.exit.thread
  %..i = phi i32 [ -1, %get_str.exit.thread ], [ %i.br, %.loopexit240.loopexit ]
  %.not29.i232 = phi i1 [ %.not29.i231, %get_str.exit.thread ], [ %.not29.i, %.loopexit240.loopexit ]
  %.025.i = select i1 %.not29.i232, i32 -541478725, i32 %..i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.e, i32 noundef 16, ptr noundef nonnull @.str.43) #12
  br label %bb.as

bb.l:                                             ; preds = %get_str.exit
  %i.bs = call i64 @ffio_read_varlen(ptr noundef nonnull %i.g) #12 ; 2 uses
  %i.bt = add i64 %i.bs, 1
  %i.bu = and i64 %i.bs, 1
  %.not.not.i129 = icmp eq i64 %i.bu, 0
  %i.bv = ashr i64 %i.bt, 1                       ; 2 uses
  %i.bw = sub nsw i64 0, %i.bv
  %.0.i130 = select i1 %.not.not.i129, i64 %i.bw, i64 %i.bv ; 2 uses
  store i8 0, ptr %i.b, align 16, !tbaa !15
  switch i64 %.0.i130, label %bb.t [
    i64 -1, label %bb.m
    i64 -2, label %bb.o
    i64 -3, label %.thread173.sink.split
    i64 -4, label %bb.s
  ]

bb.m:                                             ; preds = %bb.l
  %i.bx = call i64 @ffio_read_varlen(ptr noundef nonnull %i.g) #12
  %i.by = trunc i64 %i.bx to i32                  ; 5 uses
  %.not.i131 = icmp eq i32 %i.by, 0
  br i1 %.not.i131, label %.get_str.exit140_crit_edge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = call i32 @llvm.umin.i32(i32 %i.by, i32 1024)
  %i.ca = call i32 @avio_read(ptr noundef nonnull %i.g, ptr noundef nonnull %i.b, i32 noundef %i.bz) #12 ; 0 uses
  %i.cb = icmp ugt i32 %i.by, 1024
  br i1 %i.cb, label %.lr.ph.i136, label %.get_str.exit140_crit_edge

.get_str.exit140_crit_edge:                       ; preds = %bb.m, %bb.n
  %.pre204 = load i32, ptr %i.av, align 8, !tbaa !45
  br label %get_str.exit140

.lr.ph.i136:                                      ; preds = %bb.n, %.lr.ph.i136
  %.031.i137 = phi i32 [ %i.cd, %.lr.ph.i136 ], [ %i.by, %bb.n ]
  %i.cc = call i32 @avio_r8(ptr noundef nonnull %i.g) #12 ; 0 uses
  %i.cd = add i32 %.031.i137, -1                  ; 2 uses
  %i.ce = load i32, ptr %i.av, align 8, !tbaa !45 ; 2 uses
  %.not30.i138 = icmp eq i32 %i.ce, 0
  %i.cf = icmp ugt i32 %i.cd, 1024
  %i.cg = select i1 %.not30.i138, i1 %i.cf, i1 false
  br i1 %i.cg, label %.lr.ph.i136, label %get_str.exit140, !llvm.loop !2

get_str.exit140:                                  ; preds = %.lr.ph.i136, %.get_str.exit140_crit_edge
  %i.ch = phi i32 [ %.pre204, %.get_str.exit140_crit_edge ], [ %i.ce, %.lr.ph.i136 ]
  %.0.lcssa.i132 = phi i32 [ %i.by, %.get_str.exit140_crit_edge ], [ 1024, %.lr.ph.i136 ] ; 2 uses
  %i.ci = call i32 @llvm.umin.i32(i32 %.0.lcssa.i132, i32 1023)
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cj
  store i8 0, ptr %i.ck, align 1, !tbaa !15
  %.not29.i133 = icmp eq i32 %i.ch, 0
  br i1 %.not29.i133, label %select.unfold, label %.thread179

bb.o:                                             ; preds = %bb.l
  %i.cl = call i64 @ffio_read_varlen(ptr noundef nonnull %i.g) #12
  %i.cm = trunc i64 %i.cl to i32                  ; 6 uses
  %.not.i141 = icmp eq i32 %i.cm, 0
  br i1 %.not.i141, label %get_str.exit150, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = call i32 @llvm.umin.i32(i32 %i.cm, i32 256)
  %i.co = call i32 @avio_read(ptr noundef nonnull %i.g, ptr noundef nonnull %i.c, i32 noundef %i.cn) #12 ; 0 uses
  %i.cp = icmp ugt i32 %i.cm, 256
  br i1 %i.cp, label %.lr.ph.i146, label %get_str.exit150

.lr.ph.i146:                                      ; preds = %bb.p, %.lr.ph.i146
  %.031.i147 = phi i32 [ %i.cr, %.lr.ph.i146 ], [ %i.cm, %bb.p ]
  %i.cq = call i32 @avio_r8(ptr noundef nonnull %i.g) #12 ; 0 uses
  %i.cr = add i32 %.031.i147, -1                  ; 2 uses
  %i.cs = load i32, ptr %i.av, align 8, !tbaa !45 ; 2 uses
  %.not30.i148 = icmp eq i32 %i.cs, 0
  %i.ct = icmp ugt i32 %i.cr, 256
  %i.cu = select i1 %.not30.i148, i1 %i.ct, i1 false
  br i1 %i.cu, label %.lr.ph.i146, label %get_str.exit150.thread, !llvm.loop !2

get_str.exit150.thread:                           ; preds = %.lr.ph.i146
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 255
  store i8 0, ptr %i.cv, align 1, !tbaa !15
  %.not29.i143236 = icmp ne i32 %i.cs, 0
  br label %.loopexit241

get_str.exit150:                                  ; preds = %bb.o, %bb.p
  %.pre202 = load i32, ptr %i.av, align 8, !tbaa !45
  %i.cw = call i32 @llvm.umin.i32(i32 %i.cm, i32 255)
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cx
  store i8 0, ptr %i.cy, align 1, !tbaa !15
  %.not29.i143 = icmp ne i32 %.pre202, 0          ; 2 uses
  %i.cz = icmp eq i32 %i.cm, 256                  ; 2 uses
  %i.da = or i1 %i.cz, %.not29.i143
  br i1 %i.da, label %.loopexit241.loopexit, label %bb.q
end_hunk_0
