Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/fraps?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@decode_frame:bb.a
  %i.pn = load ptr, ptr %1, align 8, !tbaa !44
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 2
  %i.pp = load i32, ptr %i.oh, align 8, !tbaa !39 ; 2 uses
  %i.pq = load i32, ptr %i.oi, align 4, !tbaa !38 ; 2 uses
  %i.pr = add nsw i32 %i.pq, -1
  %i.ps = mul nsw i32 %i.pr, %i.pp
  %i.pt = sext i32 %i.ps to i64
  %i.pu = getelementptr inbounds i8, ptr %i.po, i64 %i.pt
  %i.pv = sub nsw i32 0, %i.pp
  %i.pw = load i32, ptr %i.oj, align 8, !tbaa !37
  %i.px = zext i32 %.sroa.15.0 to i64
  %i.py = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.px
  %i.pz = sub i32 %.sroa.22.0, %.sroa.15.0
  %i.qa = tail call fastcc i32 @fraps2_decode_plane(ptr noundef %i.b, ptr noundef nonnull %i.pu, i32 noundef %i.pv, i32 noundef %i.pw, i32 noundef %i.pq, ptr noundef nonnull %i.py, i32 noundef %i.pz, i32 noundef 0, i32 noundef 3) ; 2 uses
  %i.qb = icmp slt i32 %i.qa, 0
  br i1 %i.qb, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %.lcssa289 = phi i32 [ %i.ow, %bb.ag ], [ %i.pl, %bb.ah ], [ %i.qa, %bb.ai ]
  %.3.lcssa288.wide = phi i32 [ 0, %bb.ag ], [ 1, %bb.ah ], [ 2, %bb.ai ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %.3.lcssa288.wide) #6
  br label %.thread

bb.ak:                                            ; preds = %bb.ai
  %i.qc = load i32, ptr %i.oi, align 4, !tbaa !38 ; 2 uses
  %i.qd = icmp sgt i32 %i.qc, 0
  br i1 %i.qd, label %.lr.ph269, label %.loopexit

.lr.ph269:                                        ; preds = %bb.ak
  %i.qe = load ptr, ptr %1, align 8, !tbaa !44
  %.pre = load i32, ptr %i.oj, align 8, !tbaa !37
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph269, %._crit_edge
  %i.qf = phi i32 [ %i.qc, %.lr.ph269 ], [ %i.qu, %._crit_edge ]
  %i.qg = phi i32 [ %.pre, %.lr.ph269 ], [ %i.qv, %._crit_edge ] ; 3 uses
  %.0209267 = phi ptr [ %i.qe, %.lr.ph269 ], [ %i.qz, %._crit_edge ] ; 3 uses
  %.0211266 = phi i32 [ 0, %.lr.ph269 ], [ %i.ra, %._crit_edge ]
  %i.qh = mul nsw i32 %i.qg, 3
  %i.qi = sext i32 %i.qh to i64
  %i.qj = getelementptr inbounds i8, ptr %.0209267, i64 %i.qi
  %i.qk = icmp sgt i32 %i.qg, 0
  br i1 %i.qk, label %.lr.ph265, label %._crit_edge

.lr.ph265:                                        ; preds = %bb.al, %.lr.ph265
  %.1210264 = phi ptr [ %i.qs, %.lr.ph265 ], [ %.0209267, %bb.al ] ; 5 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.1210264, i64 1
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !40  ; 2 uses
  %i.qn = load i8, ptr %.1210264, align 1, !tbaa !40
  %i.qo = add i8 %i.qn, %i.qm
  store i8 %i.qo, ptr %.1210264, align 1, !tbaa !40
  %i.qp = getelementptr inbounds nuw i8, ptr %.1210264, i64 2 ; 2 uses
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !40
  %i.qr = add i8 %i.qq, %i.qm
  store i8 %i.qr, ptr %i.qp, align 1, !tbaa !40
  %i.qs = getelementptr inbounds nuw i8, ptr %.1210264, i64 3 ; 3 uses
  %i.qt = icmp ult ptr %i.qs, %i.qj
  br i1 %i.qt, label %.lr.ph265, label %._crit_edge.loopexit, !llvm.loop !52

._crit_edge.loopexit:                             ; preds = %.lr.ph265
  %.pre325 = load i32, ptr %i.oj, align 8, !tbaa !37
  %.pre326 = load i32, ptr %i.oi, align 4, !tbaa !38
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.al
  %i.qu = phi i32 [ %i.qf, %bb.al ], [ %.pre326, %._crit_edge.loopexit ] ; 2 uses
  %i.qv = phi i32 [ %i.qg, %bb.al ], [ %.pre325, %._crit_edge.loopexit ] ; 2 uses
  %.1210.lcssa = phi ptr [ %.0209267, %bb.al ], [ %i.qs, %._crit_edge.loopexit ]
  %i.qw = load i32, ptr %i.oh, align 8, !tbaa !39
  %.neg = mul i32 %i.qv, -3
  %i.qx = add i32 %.neg, %i.qw
  %i.qy = sext i32 %i.qx to i64
  %i.qz = getelementptr inbounds i8, ptr %.1210.lcssa, i64 %i.qy
  %i.ra = add nuw nsw i32 %.0211266, 1            ; 2 uses
  %i.rb = icmp slt i32 %i.ra, %i.qu
  br i1 %i.rb, label %bb.al, label %.loopexit, !llvm.loop !53

.loopexit:                                        ; preds = %bb.ab, %bb.aa, %._crit_edge, %._crit_edge278, %bb.ae, %.preheader250, %.preheader248, %bb.ak, %.preheader
  store i32 1, ptr %2, align 4, !tbaa !39
  br label %.thread

.thread:                                          ; preds = %bb.t, %bb.u, %bb.v, %bb.l, %bb.j, %bb.g, %.critedge, %.loopexit, %bb.aj, %bb.af, %._crit_edge327, %bb.q, %bb.p, %bb.n, %bb.d, %bb.b
  %.2223 = phi i32 [ -1094995529, %bb.b ], [ -1163346256, %bb.d ], [ %i.g, %bb.j ], [ -1094995529, %._crit_edge327 ], [ %i.g, %.loopexit ], [ %.lcssa292, %bb.af ], [ %.lcssa289, %bb.aj ], [ -1094995529, %bb.g ], [ %i.bq, %.critedge ], [ 8, %bb.n ], [ -1094995529, %bb.p ], [ -1094995529, %bb.q ], [ -1094995529, %bb.l ], [ -12, %bb.v ], [ -12, %bb.u ], [ -12, %bb.t ]
  ret i32 %.2223
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @decode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @av_freep(ptr noundef nonnull %i.c) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @ff_bswapdsp_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @avpriv_report_missing_feature(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @av_fast_padded_malloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ff_thread_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @fraps2_decode_plane(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef range(i32 0, 2) %7, i32 noundef range(i32 1, 4) %8) unnamed_addr #1 {
bb.a:
  %9 = alloca %struct.VLC, align 8                ; 5 uses
  %10 = alloca [512 x %struct.Node], align 16     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.7, %bb.b ] ; 9 uses
  %.04246 = phi ptr [ %5, %bb.a ], [ %i.ac, %bb.b ] ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.04246, i64 4
  %i.b = load i32, ptr %.04246, align 1, !tbaa !40
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.b, ptr %i.d, align 4, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %.04246, i64 8
  %i.f = load i32, ptr %i.a, align 1, !tbaa !40
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 %i.f, ptr %i.h, align 4, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %.04246, i64 12
  %i.j = load i32, ptr %i.e, align 1, !tbaa !40
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  store i32 %i.j, ptr %i.l, align 4, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %.04246, i64 16
  %i.n = load i32, ptr %i.i, align 1, !tbaa !40
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  store i32 %i.n, ptr %i.p, align 4, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %.04246, i64 20
  %i.r = load i32, ptr %i.m, align 1, !tbaa !40
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 36
  store i32 %i.r, ptr %i.t, align 4, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %.04246, i64 24
  %i.v = load i32, ptr %i.q, align 1, !tbaa !40
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 44
  store i32 %i.v, ptr %i.x, align 4, !tbaa !54
  %i.y = getelementptr inbounds nuw i8, ptr %.04246, i64 28
  %i.z = load i32, ptr %i.u, align 1, !tbaa !40
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 52
  store i32 %i.z, ptr %i.ab, align 4, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %.04246, i64 32 ; 2 uses
  %i.ad = load i32, ptr %i.y, align 1, !tbaa !40
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 60
  store i32 %i.ad, ptr %i.af, align 4, !tbaa !54
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, 256
  br i1 %exitcond.not.7, label %bb.c, label %bb.b, !llvm.loop !57

bb.c:                                             ; preds = %bb.b
  %i.ag = load ptr, ptr %0, align 8, !tbaa !29
  %i.ah = call i32 @ff_huff_build_tree(ptr noundef %i.ag, ptr noundef nonnull %9, i32 noundef 256, i32 noundef 11, ptr noundef nonnull %10, ptr noundef nonnull @huff_cmp, i32 noundef 2) #6 ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = add nsw i32 %6, -1024                   ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !58
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !33
  %i.ao = ashr i32 %i.aj, 2
  call void %i.al(ptr noundef %i.an, ptr noundef nonnull %i.ac, i32 noundef %i.ao) #6
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !33 ; 7 uses
  %or.cond.i = icmp ugt i32 %i.aj, 268435455
  %i.aq = shl nuw nsw i32 %i.aj, 3
  %i.ar = select i1 %or.cond.i, i32 -8, i32 %i.aq ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.ar, 2147483135
  %i.as = icmp ne ptr %i.ap, null
  %or.cond3.i.i = and i1 %or.cond.i.i, %i.as      ; 2 uses
  %.013.i.i = select i1 %or.cond3.i.i, i32 %i.ar, i32 0 ; 2 uses
  br i1 %or.cond3.i.i, label %.preheader44, label %bb.k

.preheader44:                                     ; preds = %bb.d
  %i.at = icmp sgt i32 %4, 0
  br i1 %i.at, label %.preheader.lr.ph, label %.sink.split

.preheader.lr.ph:                                 ; preds = %.preheader44
  %i.au = mul nsw i32 %8, %3                      ; 2 uses
  %i.av = icmp sgt i32 %i.au, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8            ; 6 uses
  %.not38 = icmp eq i32 %7, 0
  %i.ay = sext i32 %2 to i64                      ; 2 uses
  br i1 %i.av, label %.preheader.preheader, label %.sink.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.az = zext nneg i32 %8 to i64                 ; 2 uses
  %i.ba = zext nneg i32 %i.au to i64              ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.053 = phi i32 [ %i.fq, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %.03551 = phi ptr [ %i.fp, %._crit_edge ], [ %1, %.preheader.preheader ] ; 4 uses
  %.sroa.4.050 = phi i32 [ %.us-phi, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %.not = icmp eq i32 %.053, 0
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.preheader, %bb.e
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %bb.e ], [ 0, %.preheader ] ; 2 uses
  %.sroa.4.148.us = phi i32 [ %i.db, %bb.e ], [ %.sroa.4.050, %.preheader ] ; 4 uses
  %i.bb = lshr i32 %.sroa.4.148.us, 3
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 1, !tbaa !40
  %i.bf = call i32 @llvm.bswap.i32(i32 %i.be)
  %i.bg = and i32 %.sroa.4.148.us, 7
  %i.bh = shl i32 %i.bf, %i.bg
  %i.bi = lshr i32 %i.bh, 21
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bj ; 2 uses
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !40 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !40 ; 2 uses
  %i.bo = sext i16 %i.bn to i32                   ; 3 uses
  %i.bp = icmp slt i16 %i.bn, 0
  br i1 %i.bp, label %bb.f, label %get_vlc2.exit.us

bb.e:                                             ; preds = %get_vlc2.exit.us
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, %i.az ; 2 uses
  %11 = icmp samesign ult i64 %indvars.iv.next64, %i.ba
  br i1 %11, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !59

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.bq = sext i16 %i.bl to i32
  %i.br = add i32 %.sroa.4.148.us, 11             ; 4 uses
  %i.bs = lshr i32 %i.br, 3
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 1, !tbaa !40
  %i.bw = call i32 @llvm.bswap.i32(i32 %i.bv)
  %i.bx = and i32 %i.br, 7
  %i.by = shl i32 %i.bw, %i.bx
  %i.bz = add nsw i32 %i.bo, 32
  %i.ca = lshr i32 %i.by, %i.bz
  %i.cb = add i32 %i.ca, %i.bq
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.cc ; 2 uses
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !40 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !40 ; 2 uses
  %i.ch = sext i16 %i.cg to i32                   ; 2 uses
  %i.ci = icmp slt i16 %i.cg, 0
  br i1 %i.ci, label %bb.g, label %get_vlc2.exit.us

bb.g:                                             ; preds = %bb.f
  %i.cj = sext i16 %i.ce to i32
  %i.ck = sub i32 %i.br, %i.bo                    ; 3 uses
  %i.cl = lshr i32 %i.ck, 3
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 1, !tbaa !40
  %i.cp = call i32 @llvm.bswap.i32(i32 %i.co)
  %i.cq = and i32 %i.ck, 7
  %i.cr = shl i32 %i.cp, %i.cq
  %i.cs = add nsw i32 %i.ch, 32
  %i.ct = lshr i32 %i.cr, %i.cs
  %i.cu = add i32 %i.ct, %i.cj
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.cv ; 2 uses
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !40
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !40
  %i.da = sext i16 %i.cz to i32
  br label %get_vlc2.exit.us

get_vlc2.exit.us:                                 ; preds = %bb.g, %bb.f, %.lr.ph.split.us
  %.154.i.us = phi i16 [ %i.bl, %.lr.ph.split.us ], [ %i.cx, %bb.g ], [ %i.ce, %bb.f ]
  %.152.i.us = phi i32 [ %.sroa.4.148.us, %.lr.ph.split.us ], [ %i.ck, %bb.g ], [ %i.br, %bb.f ]
  %.1.i.us = phi i32 [ %i.bo, %.lr.ph.split.us ], [ %i.da, %bb.g ], [ %i.ch, %bb.f ]
  %i.db = add i32 %.1.i.us, %.152.i.us            ; 3 uses
  %i.dc = trunc i16 %.154.i.us to i8              ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.03551, i64 %indvars.iv63
  %i.de = xor i8 %i.dc, -128
  %spec.select = select i1 %.not38, i8 %i.dc, i8 %i.de
  store i8 %spec.select, ptr %i.dd, align 1, !tbaa !40
  %i.df = icmp slt i32 %.013.i.i, %i.db
  br i1 %i.df, label %.sink.split, label %bb.e

bb.h:                                             ; preds = %get_vlc2.exit
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, %i.az ; 2 uses
  %i.dg = icmp samesign ult i64 %indvars.iv.next61, %i.ba
  br i1 %i.dg, label %.lr.ph.split, label %._crit_edge, !llvm.loop !59

.lr.ph.split:                                     ; preds = %.preheader, %bb.h
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %bb.h ], [ 0, %.preheader ] ; 3 uses
  %.sroa.4.148 = phi i32 [ %i.fh, %bb.h ], [ %.sroa.4.050, %.preheader ] ; 4 uses
  %i.dh = lshr i32 %.sroa.4.148, 3
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 1, !tbaa !40
  %i.dl = call i32 @llvm.bswap.i32(i32 %i.dk)
  %i.dm = and i32 %.sroa.4.148, 7
  %i.dn = shl i32 %i.dl, %i.dm
  %i.do = lshr i32 %i.dn, 21
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.dp ; 2 uses
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !40 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !40 ; 2 uses
  %i.du = sext i16 %i.dt to i32                   ; 3 uses
  %i.dv = icmp slt i16 %i.dt, 0
  br i1 %i.dv, label %bb.i, label %get_vlc2.exit

bb.i:                                             ; preds = %.lr.ph.split
  %i.dw = sext i16 %i.dr to i32
  %i.dx = add i32 %.sroa.4.148, 11                ; 4 uses
  %i.dy = lshr i32 %i.dx, 3
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 1, !tbaa !40
  %i.ec = call i32 @llvm.bswap.i32(i32 %i.eb)
  %i.ed = and i32 %i.dx, 7
  %i.ee = shl i32 %i.ec, %i.ed
  %i.ef = add nsw i32 %i.du, 32
  %i.eg = lshr i32 %i.ee, %i.ef
  %i.eh = add i32 %i.eg, %i.dw
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ei ; 2 uses
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !40 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  %i.em = load i16, ptr %i.el, align 2, !tbaa !40 ; 2 uses
  %i.en = sext i16 %i.em to i32                   ; 2 uses
  %i.eo = icmp slt i16 %i.em, 0
  br i1 %i.eo, label %bb.j, label %get_vlc2.exit

bb.j:                                             ; preds = %bb.i
  %i.ep = sext i16 %i.ek to i32
  %i.eq = sub i32 %i.dx, %i.du                    ; 3 uses
  %i.er = lshr i32 %i.eq, 3
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 1, !tbaa !40
  %i.ev = call i32 @llvm.bswap.i32(i32 %i.eu)
  %i.ew = and i32 %i.eq, 7
  %i.ex = shl i32 %i.ev, %i.ew
  %i.ey = add nsw i32 %i.en, 32
  %i.ez = lshr i32 %i.ex, %i.ey
  %i.fa = add i32 %i.ez, %i.ep
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.fb ; 2 uses
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !40
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 2
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !40
  %i.fg = sext i16 %i.ff to i32
  br label %get_vlc2.exit

get_vlc2.exit:                                    ; preds = %.lr.ph.split, %bb.i, %bb.j
  %.154.i = phi i16 [ %i.dr, %.lr.ph.split ], [ %i.fd, %bb.j ], [ %i.ek, %bb.i ]
  %.152.i = phi i32 [ %.sroa.4.148, %.lr.ph.split ], [ %i.eq, %bb.j ], [ %i.dx, %bb.i ]
  %.1.i = phi i32 [ %i.du, %.lr.ph.split ], [ %i.fg, %bb.j ], [ %i.en, %bb.i ]
  %i.fh = add i32 %.1.i, %.152.i                  ; 3 uses
  %i.fi = trunc i16 %.154.i to i8                 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.03551, i64 %indvars.iv60 ; 2 uses
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !40
  %i.fk = sub nsw i64 %indvars.iv60, %i.ay
  %i.fl = getelementptr inbounds i8, ptr %.03551, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !40
  %i.fn = add i8 %i.fm, %i.fi
  store i8 %i.fn, ptr %i.fj, align 1, !tbaa !40
  %i.fo = icmp slt i32 %.013.i.i, %i.fh
  br i1 %i.fo, label %.sink.split, label %bb.h

._crit_edge:                                      ; preds = %bb.h, %bb.e
  %.us-phi = phi i32 [ %i.db, %bb.e ], [ %i.fh, %bb.h ]
  %i.fp = getelementptr inbounds i8, ptr %.03551, i64 %i.ay
  %i.fq = add nuw nsw i32 %.053, 1                ; 2 uses
  %exitcond66.not = icmp eq i32 %i.fq, %4
  br i1 %exitcond66.not, label %.sink.split, label %.preheader, !llvm.loop !60

.sink.split:                                      ; preds = %._crit_edge, %get_vlc2.exit, %get_vlc2.exit.us, %.preheader44, %.preheader.lr.ph
  %.034.ph = phi i32 [ 0, %.preheader44 ], [ -1094995529, %get_vlc2.exit ], [ -1094995529, %get_vlc2.exit.us ], [ 0, %.preheader.lr.ph ], [ 0, %._crit_edge ]
  call void @ff_vlc_free(ptr noundef nonnull %9) #6
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.d, %bb.c
  %.034 = phi i32 [ -1094995529, %bb.d ], [ %i.ah, %bb.c ], [ %.034.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  ret i32 %.034
}

declare i32 @ff_huff_build_tree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @huff_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !54
  %i.e = sub i32 %i.b, %i.d
  %i.f = shl i32 %i.e, 8
  %i.g = load i16, ptr %0, align 4, !tbaa !61
  %i.h = sext i16 %i.g to i32
  %i.i = add i32 %i.f, %i.h
  %i.j = load i16, ptr %1, align 4, !tbaa !61
  %i.k = sext i16 %i.j to i32
  %i.l = sub i32 %i.i, %i.k
  ret i32 %i.l
}

declare void @ff_vlc_free(ptr noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
end_hunk_0
