Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dvdsubdec?download=true
inline.NumInlined: 30
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@dvdsub_decode:bb.a
  %i.za = getelementptr inbounds nuw i8, ptr %i.yy, i64 56
  store i32 %i.xw, ptr %i.za, align 8, !tbaa !32
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yy, i64 8
  store i32 %i.xw, ptr %i.zb, align 8, !tbaa !71
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yy, i64 12
  store i32 %i.xy, ptr %i.zc, align 4, !tbaa !72
  %i.zd = load i32, ptr %i.yy, align 8, !tbaa !69
  %i.ze = add nsw i32 %i.zd, %.087142213.i
  store i32 %i.ze, ptr %i.yy, align 8, !tbaa !69
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yy, i64 4 ; 2 uses
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !70
  %i.zh = add nsw i32 %i.zg, %i.wm
  store i32 %i.zh, ptr %i.zf, align 4, !tbaa !70
  br label %find_smallest_bounding_rectangle.exit

find_smallest_bounding_rectangle.exit.thread:     ; preds = %._crit_edge.i67, %bb.ca, %.critedge.thread.i, %bb.cd, %bb.cc, %bb.cb, %.preheader138.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.bz

find_smallest_bounding_rectangle.exit:            ; preds = %.critedge6.i, %._crit_edge164.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.cy

bb.cy:                                            ; preds = %find_smallest_bounding_rectangle.exit, %decode_dvd_subtitles.exit.thread
  %i.zi = getelementptr inbounds nuw i8, ptr %i.d, i64 65892
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !75
  %.not46 = icmp eq i32 %i.zj, 0
  br i1 %.not46, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.zk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !62
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !65
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 72
  %i.zo = load i32, ptr %i.zn, align 8, !tbaa !74
  %i.zp = and i32 %i.zo, 1
  %.not47 = icmp eq i32 %i.zp, 0
  br i1 %.not47, label %bb.bz, label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  store i32 0, ptr %i.j, align 8, !tbaa !34
  store i32 1, ptr %2, align 4, !tbaa !32
  br label %bb.db

bb.db:                                            ; preds = %bb.f, %append_to_cached_buf.exit53, %decode_dvd_subtitles.exit.thread88, %bb.da, %reset_rects.exit
  %.143 = phi i32 [ -1094995529, %bb.f ], [ %.139, %reset_rects.exit ], [ %.139, %bb.da ], [ %.0.i52, %append_to_cached_buf.exit53 ], [ 0, %decode_dvd_subtitles.exit.thread88 ]
  ret i32 %.143
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @dvdsub_flush(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 65888
  store i32 0, ptr %i.c, align 8, !tbaa !34
  ret void
}

declare ptr @av_default_item_name(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare void @ff_dvdsub_parse_palette(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare void @av_free(ptr noundef) local_unnamed_addr #3

declare ptr @avpriv_fopen_utf8(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @av_strerror(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #9

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @decode_rle(ptr nofree noundef nonnull writeonly captures(none) %0, i32 noundef range(i32 2, 8193) %1, i32 noundef range(i32 1, 4097) %2, i32 noundef range(i32 1, 2049) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef readonly captures(address_is_null) %5, i32 noundef range(i32 0, 2147483647) %6, i32 noundef range(i32 10, -2147483648) %7, i32 noundef range(i32 0, 2) %8) unnamed_addr #10 {
bb.a:
  %.not = icmp samesign ult i32 %6, %7
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = sub nuw nsw i32 %7, %6                   ; 2 uses
  %i.b = shl nuw nsw i32 %i.a, 3                  ; 3 uses
  %i.c = zext nneg i32 %6 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 %i.c ; 9 uses
  %or.cond.i = icmp samesign ult i32 %i.a, 268435392
  %i.e = icmp ne ptr %5, null
  %or.cond3.i = and i1 %i.e, %or.cond.i
  %i.f = add nuw nsw i32 %i.b, 8
  %i.g = select i1 %or.cond3.i, i32 %i.f, i32 8   ; 12 uses
  %.not48 = icmp eq i32 %8, 0
  %i.h = zext nneg i32 %1 to i64                  ; 2 uses
  br i1 %.not48, label %.preheader.us, label %.split

.preheader.us:                                    ; preds = %bb.b, %bb.h
  %.071.us = phi ptr [ %.1.us, %bb.h ], [ %0, %bb.b ] ; 3 uses
  %.03770.us = phi i32 [ %.138.us, %bb.h ], [ 0, %bb.b ] ; 2 uses
  %.03969.us = phi i32 [ %.140.us, %bb.h ], [ 0, %bb.b ] ; 3 uses
  %.sroa.6.068.us = phi i32 [ %.sroa.6.2.us, %bb.h ], [ 0, %bb.b ] ; 3 uses
  %i.i = lshr i32 %.sroa.6.068.us, 3
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.j
  %i.l = load i32, ptr %i.k, align 1, !tbaa !29
  %i.m = tail call i32 @llvm.bswap.i32(i32 %i.l)
  %i.n = and i32 %.sroa.6.068.us, 7
  %i.o = shl i32 %i.m, %i.n                       ; 2 uses
  %i.p = add i32 %.sroa.6.068.us, 4               ; 2 uses
  %i.q = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %i.p) ; 4 uses
  %i.r = lshr i32 %i.o, 28                        ; 2 uses
  %i.s = icmp ult i32 %i.o, 1073741824
  br i1 %i.s, label %bb.c, label %decode_run_2bit.exit.us

bb.c:                                             ; preds = %.preheader.us
  %i.t = lshr i32 %i.q, 3
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.u
  %i.w = load i32, ptr %i.v, align 1, !tbaa !29
  %i.x = tail call i32 @llvm.bswap.i32(i32 %i.w)
  %i.y = and i32 %i.q, 7
  %i.z = shl i32 %i.x, %i.y
  %i.aa = add nuw i32 %i.q, 4                     ; 2 uses
  %i.ab = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %i.aa) ; 4 uses
  %i.ac = tail call i32 @llvm.fshl.i32(i32 %i.r, i32 %i.z, i32 4) ; 3 uses
  %i.ad = icmp samesign ult i32 %i.ac, 16
  br i1 %i.ad, label %bb.d, label %decode_run_2bit.exit.us

bb.d:                                             ; preds = %bb.c
  %i.ae = lshr i32 %i.ab, 3
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 1, !tbaa !29
  %i.ai = tail call i32 @llvm.bswap.i32(i32 %i.ah)
  %i.aj = and i32 %i.ab, 7
  %i.ak = shl i32 %i.ai, %i.aj
  %i.al = add nuw i32 %i.ab, 4                    ; 2 uses
  %i.am = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %i.al) ; 4 uses
  %i.an = tail call i32 @llvm.fshl.i32(i32 %i.ac, i32 %i.ak, i32 4) ; 3 uses
  %i.ao = icmp samesign ult i32 %i.an, 64
  br i1 %i.ao, label %bb.e, label %decode_run_2bit.exit.us

bb.e:                                             ; preds = %bb.d
  %i.ap = lshr i32 %i.am, 3
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 1, !tbaa !29
  %i.at = tail call i32 @llvm.bswap.i32(i32 %i.as)
  %i.au = and i32 %i.am, 7
  %i.av = shl i32 %i.at, %i.au
  %i.aw = add nuw i32 %i.am, 4                    ; 2 uses
  %i.ax = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %i.aw)
  %i.ay = tail call i32 @llvm.fshl.i32(i32 %i.an, i32 %i.av, i32 4)
  br label %decode_run_2bit.exit.us

decode_run_2bit.exit.us:                          ; preds = %bb.e, %bb.d, %bb.c, %.preheader.us
  %.lcssa90 = phi i32 [ %i.p, %.preheader.us ], [ %i.aa, %bb.c ], [ %i.al, %bb.d ], [ %i.aw, %bb.e ]
  %.lcssa89 = phi i32 [ %i.q, %.preheader.us ], [ %i.ab, %bb.c ], [ %i.am, %bb.d ], [ %i.ax, %bb.e ] ; 3 uses
  %.lcssa = phi i32 [ %i.r, %.preheader.us ], [ %i.ac, %bb.c ], [ %i.an, %bb.d ], [ %i.ay, %bb.e ] ; 3 uses
  %i.az = icmp ugt i32 %.lcssa, 3                 ; 2 uses
  %i.ba = lshr i32 %.lcssa, 2
  %.011.i.us = select i1 %i.az, i32 %i.ba, i32 2147483647 ; 2 uses
  %i.bb = sub nsw i32 %2, %.03969.us              ; 2 uses
  %i.bc = icmp sgt i32 %.011.i.us, %i.bb
  %or.cond.us = select i1 %i.az, i1 %i.bc, i1 false
  br i1 %or.cond.us, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %decode_run_2bit.exit.us
  %i.bd = and i32 %.lcssa, 3                      ; 2 uses
  %i.be = tail call i32 @llvm.smin.i32(i32 %.011.i.us, i32 %i.bb) ; 2 uses
  %i.bf = sext i32 %.03969.us to i64
  %i.bg = getelementptr inbounds i8, ptr %.071.us, i64 %i.bf
  %i.bh = trunc nuw nsw i32 %i.bd to i8
  %i.bi = sext i32 %i.be to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bg, i8 %i.bh, i64 %i.bi, i1 false)
  %i.bj = zext nneg i32 %i.bd to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 %i.bj
  store i8 1, ptr %i.bk, align 1, !tbaa !29
  %i.bl = add nsw i32 %i.be, %.03969.us           ; 2 uses
  %.not50.us = icmp slt i32 %i.bl, %2
  br i1 %.not50.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = add nsw i32 %.03770.us, 1               ; 2 uses
  %.not51.us = icmp slt i32 %i.bm, %3
  br i1 %.not51.us, label %align_get_bits.exit.us, label %.loopexit

align_get_bits.exit.us:                           ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %.071.us, i64 %i.h
  %i.bo = sub nsw i32 0, %.lcssa89
  %i.bp = and i32 %i.bo, 7                        ; 2 uses
  %.not.i55.us = icmp eq i32 %i.bp, 0
  %i.bq = add nuw i32 %i.bp, %.lcssa89
  %minmaxop = select i1 %.not.i55.us, i32 %.lcssa90, i32 %i.bq
  %.sroa.6.4.us = tail call i32 @llvm.umin.i32(i32 %minmaxop, i32 %i.g)
  br label %bb.h

bb.h:                                             ; preds = %align_get_bits.exit.us, %bb.f
  %.sroa.6.2.us = phi i32 [ %.lcssa89, %bb.f ], [ %.sroa.6.4.us, %align_get_bits.exit.us ] ; 2 uses
  %.140.us = phi i32 [ %i.bl, %bb.f ], [ 0, %align_get_bits.exit.us ]
  %.138.us = phi i32 [ %.03770.us, %bb.f ], [ %i.bm, %align_get_bits.exit.us ]
  %.1.us = phi ptr [ %.071.us, %bb.f ], [ %i.bn, %align_get_bits.exit.us ]
  %i.br = icmp sgt i32 %.sroa.6.2.us, %i.b
  br i1 %i.br, label %.loopexit, label %.preheader.us

.split:                                           ; preds = %bb.b, %bb.n
  %.071 = phi ptr [ %.1, %bb.n ], [ %0, %bb.b ]   ; 3 uses
  %.03770 = phi i32 [ %.138, %bb.n ], [ 0, %bb.b ] ; 2 uses
  %.03969 = phi i32 [ %.140, %bb.n ], [ 0, %bb.b ] ; 3 uses
  %.sroa.6.068 = phi i32 [ %.sroa.6.2, %bb.n ], [ 0, %bb.b ] ; 4 uses
  %i.bs = lshr i32 %.sroa.6.068, 3
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !29
  %i.bw = icmp slt i32 %.sroa.6.068, %i.g
  %i.bx = zext i1 %i.bw to i32
  %spec.select.i.i = add nsw i32 %.sroa.6.068, %i.bx ; 4 uses
  %i.by = zext i8 %i.bv to i32
  %i.bz = and i32 %.sroa.6.068, 7
  %i.ca = lshr i32 %spec.select.i.i, 3
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !29
  %i.ce = icmp slt i32 %spec.select.i.i, %i.g
  %i.cf = zext i1 %i.ce to i32
  %spec.select.i12.i = add nsw i32 %spec.select.i.i, %i.cf ; 3 uses
  %i.cg = zext i8 %i.cd to i32
  %i.ch = and i32 %spec.select.i.i, 7
  %i.ci = lshr exact i32 128, %i.ch
  %i.cj = and i32 %i.ci, %i.cg
  %.not14.i = icmp eq i32 %i.cj, 0
  %i.ck = select i1 %.not14.i, i32 2, i32 8       ; 2 uses
  %i.cl = lshr i32 %spec.select.i12.i, 3
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 1, !tbaa !29
  %i.cp = tail call i32 @llvm.bswap.i32(i32 %i.co)
  %i.cq = and i32 %spec.select.i12.i, 7
  %i.cr = shl i32 %i.cp, %i.cq
  %i.cs = sub nuw nsw i32 32, %i.ck
  %i.ct = lshr i32 %i.cr, %i.cs                   ; 2 uses
  %i.cu = add i32 %i.ck, %spec.select.i12.i       ; 2 uses
  %i.cv = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %i.cu) ; 4 uses
  %i.cw = lshr exact i32 128, %i.bz
  %i.cx = and i32 %i.cw, %i.by
  %.not.i = icmp eq i32 %i.cx, 0
  br i1 %.not.i, label %decode_run_8bit.exit, label %bb.i

bb.i:                                             ; preds = %.split
  %i.cy = lshr i32 %i.cv, 3
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !29
  %i.dc = icmp ult i32 %i.cu, %i.g
  %i.dd = zext i1 %i.dc to i32
  %spec.select.i13.i = add nuw i32 %i.cv, %i.dd   ; 4 uses
  %i.de = zext i8 %i.db to i32
  %i.df = and i32 %i.cv, 7
  %i.dg = lshr exact i32 128, %i.df
  %i.dh = and i32 %i.dg, %i.de
  %.not11.i = icmp eq i32 %i.dh, 0
  %i.di = lshr i32 %spec.select.i13.i, 3
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 1, !tbaa !29
  %i.dm = tail call i32 @llvm.bswap.i32(i32 %i.dl)
  %i.dn = and i32 %spec.select.i13.i, 7
  %i.do = shl i32 %i.dm, %i.dn                    ; 2 uses
  br i1 %.not11.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dp = lshr i32 %i.do, 25                      ; 2 uses
  %i.dq = add nuw i32 %spec.select.i13.i, 7
  %i.dr = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %i.dq)
  %i.ds = icmp eq i32 %i.dp, 0
  %i.dt = add nuw nsw i32 %i.dp, 9
  %spec.select.i = select i1 %i.ds, i32 2147483647, i32 %i.dt
  br label %decode_run_8bit.exit

bb.k:                                             ; preds = %bb.i
  %i.du = lshr i32 %i.do, 29
  %i.dv = add nuw i32 %spec.select.i13.i, 3
  %i.dw = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %i.dv)
  %i.dx = add nuw nsw i32 %i.du, 2
  br label %decode_run_8bit.exit

decode_run_8bit.exit:                             ; preds = %bb.k, %bb.j, %.split
  %.sroa.6.1 = phi i32 [ %i.dr, %bb.j ], [ %i.cv, %.split ], [ %i.dw, %bb.k ] ; 4 uses
  %.036 = phi i32 [ %spec.select.i, %bb.j ], [ 1, %.split ], [ %i.dx, %bb.k ] ; 3 uses
  %.not49 = icmp ne i32 %.036, 2147483647
  %i.dy = sub nsw i32 %2, %.03969                 ; 2 uses
  %i.dz = icmp sgt i32 %.036, %i.dy
  %or.cond = select i1 %.not49, i1 %i.dz, i1 false
  br i1 %or.cond, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %decode_run_8bit.exit
  %i.ea = tail call i32 @llvm.smin.i32(i32 %.036, i32 %i.dy) ; 2 uses
  %i.eb = sext i32 %.03969 to i64
  %i.ec = getelementptr inbounds i8, ptr %.071, i64 %i.eb
  %i.ed = trunc nuw i32 %i.ct to i8
  %i.ee = sext i32 %i.ea to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ec, i8 %i.ed, i64 %i.ee, i1 false)
  %i.ef = zext nneg i32 %i.ct to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 %i.ef
  store i8 1, ptr %i.eg, align 1, !tbaa !29
  %i.eh = add nsw i32 %i.ea, %.03969              ; 2 uses
  %.not50 = icmp slt i32 %i.eh, %2
  br i1 %.not50, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ei = add nsw i32 %.03770, 1                  ; 2 uses
  %.not51 = icmp slt i32 %i.ei, %3
  br i1 %.not51, label %align_get_bits.exit, label %.loopexit

align_get_bits.exit:                              ; preds = %bb.m
  %i.ej = getelementptr inbounds nuw i8, ptr %.071, i64 %i.h
  %i.ek = sub nsw i32 0, %.sroa.6.1
  %i.el = and i32 %i.ek, 7                        ; 2 uses
  %.not.i55 = icmp eq i32 %i.el, 0
  %i.em = add i32 %i.el, %.sroa.6.1
  %i.en = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %i.em)
  %.sroa.6.4 = select i1 %.not.i55, i32 %.sroa.6.1, i32 %i.en
  br label %bb.n

bb.n:                                             ; preds = %align_get_bits.exit, %bb.l
  %.sroa.6.2 = phi i32 [ %.sroa.6.1, %bb.l ], [ %.sroa.6.4, %align_get_bits.exit ] ; 2 uses
  %.140 = phi i32 [ %i.eh, %bb.l ], [ 0, %align_get_bits.exit ]
  %.138 = phi i32 [ %.03770, %bb.l ], [ %i.ei, %align_get_bits.exit ]
  %.1 = phi ptr [ %.071, %bb.l ], [ %i.ej, %align_get_bits.exit ]
  %i.eo = icmp sgt i32 %.sroa.6.2, %i.b
  br i1 %i.eo, label %.loopexit, label %.split

.loopexit:                                        ; preds = %bb.n, %decode_run_8bit.exit, %bb.m, %bb.h, %bb.g, %decode_run_2bit.exit.us, %bb.a
  %.041 = phi i32 [ -1, %bb.a ], [ -1, %bb.h ], [ 0, %bb.g ], [ -1094995529, %decode_run_2bit.exit.us ], [ 0, %bb.m ], [ -1094995529, %decode_run_8bit.exit ], [ -1, %bb.n ]
  ret i32 %.041
}

declare void @av_freep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind willreturn memory(none) }
end_hunk_0
