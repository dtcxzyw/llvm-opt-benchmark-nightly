Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/jpegxs_parser?download=true
inline.NumInlined: 7
inline.NumDeleted: 5
begin_hunk_0_@jpegxsvideo_parse:bb.a
  store ptr %4, ptr %i.a, align 8, !tbaa !20
  store i32 %5, ptr %i.b, align 4, !tbaa !21
  %i.c = load ptr, ptr %0, align 8, !tbaa !13     ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !24   ; 3 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %.preheader64.i, label %.loopexit65.i

.preheader64.i:                                   ; preds = %bb.a
  %i.h = icmp sgt i32 %5, 0
  br i1 %i.h, label %.lr.ph.preheader.i, label %.loopexit65.i

.lr.ph.preheader.i:                               ; preds = %.preheader64.i
  %wide.trip.count.i = zext nneg i32 %5 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %.077.i = phi i32 [ %i.g, %.lr.ph.preheader.i ], [ %i.m, %bb.c ]
  %i.i = shl i32 %.077.i, 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !25
  %i.l = zext i8 %i.k to i32
  %i.m = or disjoint i32 %i.i, %i.l               ; 4 uses
  %i.n = and i32 %i.m, 65535
  %i.o = icmp eq i32 %i.n, 65296
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.p = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.q = add nuw nsw i32 %i.p, 1
  br label %.loopexit65.i

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit65.i, label %.lr.ph.i, !llvm.loop !14

.loopexit65.i:                                    ; preds = %bb.c, %bb.b, %.preheader64.i, %bb.a
  %.055.i = phi i32 [ %i.e, %bb.a ], [ 1, %bb.b ], [ 0, %.preheader64.i ], [ 0, %bb.c ]
  %.149.i = phi i32 [ 0, %bb.a ], [ %i.q, %bb.b ], [ 0, %.preheader64.i ], [ %5, %bb.c ] ; 2 uses
  %.1.i = phi i32 [ %i.g, %bb.a ], [ %i.m, %bb.b ], [ %i.g, %.preheader64.i ], [ %i.m, %bb.c ] ; 2 uses
  %.055.fr.i = freeze i32 %.055.i                 ; 2 uses
  %i.r = icmp eq i32 %5, 0
  br i1 %i.r, label %bb.d, label %.preheader63.i

.preheader63.i:                                   ; preds = %.loopexit65.i
  %i.s = icmp ne i32 %.055.fr.i, 0
  %i.t = icmp slt i32 %.149.i, %5
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %.lr.ph91.split.preheader.i, label %._crit_edge.i

.lr.ph91.split.preheader.i:                       ; preds = %.preheader63.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 4 uses
  %.promoted.i = load i32, ptr %i.v, align 8, !tbaa !28
  br label %.lr.ph91.split.i

bb.d:                                             ; preds = %.loopexit65.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !28
  %.not61.i = icmp eq i32 %i.x, 0
  br i1 %.not61.i, label %jpegxs_find_frame_end.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.w, align 8, !tbaa !28
  store i32 0, ptr %i.d, align 8, !tbaa !23
  store i32 -1, ptr %i.f, align 4, !tbaa !24
  br label %jpegxs_find_frame_end.exit

.lr.ph91.split.i:                                 ; preds = %.loopexit.i, %.lr.ph91.split.preheader.i
  %i.y = phi i32 [ %i.az, %.loopexit.i ], [ %.promoted.i, %.lr.ph91.split.preheader.i ] ; 2 uses
  %.290.i = phi i32 [ %.6.i, %.loopexit.i ], [ %.1.i, %.lr.ph91.split.preheader.i ] ; 2 uses
  %.25089.i = phi i32 [ %.654.i, %.loopexit.i ], [ %.149.i, %.lr.ph91.split.preheader.i ] ; 3 uses
  %.not60.i = icmp ne i32 %i.y, 0
  %i.z = icmp slt i32 %.25089.i, %5
  %or.cond95.i = select i1 %.not60.i, i1 %i.z, i1 false
  br i1 %or.cond95.i, label %.lr.ph81.preheader.i, label %.loopexit62.i

.lr.ph81.preheader.i:                             ; preds = %.lr.ph91.split.i
  %i.aa = sext i32 %.25089.i to i64
  br label %.lr.ph81.i

.lr.ph81.i:                                       ; preds = %bb.h, %.lr.ph81.preheader.i
  %indvars.iv124.i = phi i64 [ %i.aa, %.lr.ph81.preheader.i ], [ %indvars.iv.next125.i, %bb.h ] ; 3 uses
  %.380.i = phi i32 [ %.290.i, %.lr.ph81.preheader.i ], [ %i.af, %bb.h ] ; 2 uses
  %i.ab = shl i32 %.380.i, 8
  %i.ac = getelementptr inbounds i8, ptr %4, i64 %indvars.iv124.i
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !25
  %i.ae = zext i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ab, %i.ae            ; 4 uses
  %i.ag = and i32 %.380.i, 16776960
  %i.ah = icmp eq i32 %i.ag, 16716032
  br i1 %i.ah, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph81.i
  %i.ai = trunc nsw i64 %indvars.iv124.i to i32   ; 2 uses
  %i.aj = and i32 %i.af, 65535
  %i.ak = icmp eq i32 %i.aj, 65296
  br i1 %i.ak, label %.split.us.i, label %bb.g

.split.us.i:                                      ; preds = %bb.f
  store i32 0, ptr %i.v, align 8, !tbaa !28
  store i32 0, ptr %i.d, align 8, !tbaa !23
  store i32 -1, ptr %i.f, align 4, !tbaa !24
  %i.al = add nsw i32 %i.ai, -1
  br label %jpegxs_find_frame_end.exit

bb.g:                                             ; preds = %bb.f
  %i.am = add nsw i32 %i.ai, 1
  store i32 0, ptr %i.v, align 8, !tbaa !28
  br label %.loopexit62.i

bb.h:                                             ; preds = %.lr.ph81.i
  %indvars.iv.next125.i = add nsw i64 %indvars.iv124.i, 1 ; 2 uses
  %lftr.wideiv127.i = trunc i64 %indvars.iv.next125.i to i32
  %exitcond128.not.i = icmp eq i32 %5, %lftr.wideiv127.i
  br i1 %exitcond128.not.i, label %._crit_edge.i, label %.lr.ph81.i, !llvm.loop !15

.loopexit62.i:                                    ; preds = %bb.g, %.lr.ph91.split.i
  %i.an = phi i32 [ 0, %bb.g ], [ %i.y, %.lr.ph91.split.i ]
  %.452.i = phi i32 [ %i.am, %bb.g ], [ %.25089.i, %.lr.ph91.split.i ] ; 3 uses
  %.4.i = phi i32 [ %i.af, %bb.g ], [ %.290.i, %.lr.ph91.split.i ] ; 2 uses
  %i.ao = icmp slt i32 %.452.i, %5
  br i1 %i.ao, label %.lr.ph86.preheader.i, label %.loopexit.i

.lr.ph86.preheader.i:                             ; preds = %.loopexit62.i
  %i.ap = sext i32 %.452.i to i64
  br label %.lr.ph86.i

.lr.ph86.i:                                       ; preds = %bb.j, %.lr.ph86.preheader.i
  %indvars.iv129.i = phi i64 [ %i.ap, %.lr.ph86.preheader.i ], [ %indvars.iv.next130.i, %bb.j ] ; 3 uses
  %.585.i = phi i32 [ %.4.i, %.lr.ph86.preheader.i ], [ %i.au, %bb.j ]
  %i.aq = shl i32 %.585.i, 8
  %i.ar = getelementptr inbounds i8, ptr %4, i64 %indvars.iv129.i
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !25
  %i.at = zext i8 %i.as to i32
  %i.au = or disjoint i32 %i.aq, %i.at            ; 4 uses
  %i.av = and i32 %i.au, 65535
  %i.aw = icmp eq i32 %i.av, 65297
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph86.i
  %i.ax = trunc nsw i64 %indvars.iv129.i to i32
  %i.ay = add nsw i32 %i.ax, 1
  store i32 1, ptr %i.v, align 8, !tbaa !28
  br label %.loopexit.i

bb.j:                                             ; preds = %.lr.ph86.i
  %indvars.iv.next130.i = add nsw i64 %indvars.iv129.i, 1 ; 2 uses
  %lftr.wideiv132.i = trunc i64 %indvars.iv.next130.i to i32
  %exitcond133.not.i = icmp eq i32 %5, %lftr.wideiv132.i
  br i1 %exitcond133.not.i, label %._crit_edge.i, label %.lr.ph86.i, !llvm.loop !16

.loopexit.i:                                      ; preds = %bb.i, %.loopexit62.i
  %i.az = phi i32 [ 1, %bb.i ], [ %i.an, %.loopexit62.i ]
  %.654.i = phi i32 [ %i.ay, %bb.i ], [ %.452.i, %.loopexit62.i ] ; 2 uses
  %.6.i = phi i32 [ %i.au, %bb.i ], [ %.4.i, %.loopexit62.i ] ; 2 uses
  %i.ba = icmp slt i32 %.654.i, %5
  br i1 %i.ba, label %.lr.ph91.split.i, label %._crit_edge.i, !llvm.loop !17

._crit_edge.i:                                    ; preds = %.loopexit.i, %bb.h, %bb.j, %.preheader63.i
  %.2.lcssa.i = phi i32 [ %.1.i, %.preheader63.i ], [ %i.au, %bb.j ], [ %i.af, %bb.h ], [ %.6.i, %.loopexit.i ]
  store i32 %.055.fr.i, ptr %i.d, align 8, !tbaa !23
  store i32 %.2.lcssa.i, ptr %i.f, align 4, !tbaa !24
  br label %jpegxs_find_frame_end.exit

jpegxs_find_frame_end.exit:                       ; preds = %bb.d, %bb.e, %.split.us.i, %._crit_edge.i
  %.056.i = phi i32 [ -100, %._crit_edge.i ], [ %i.al, %.split.us.i ], [ 0, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.bb = call i32 @ff_combine_frame(ptr noundef nonnull %i.c, i32 noundef %.056.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %jpegxs_find_frame_end.exit
  store ptr null, ptr %2, align 8, !tbaa !20
  store i32 0, ptr %3, align 4, !tbaa !21
  %i.bd = load i32, ptr %i.b, align 4, !tbaa !21
  br label %bb.bf

bb.l:                                             ; preds = %jpegxs_find_frame_end.exit
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !20  ; 8 uses
  %i.bf = load i32, ptr %i.b, align 4, !tbaa !21  ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 1, ptr %i.bg, align 8, !tbaa !29
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.bh, align 8, !tbaa !30
  %i.bi = icmp slt i32 %i.bf, 4
  br i1 %i.bi, label %jpegxs_parse_frame.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i, label %bb.n, label %bytestream2_init.exit.i

bb.n:                                             ; preds = %bb.m
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 141) #5
  call void @abort() #6
  unreachable

bytestream2_init.exit.i:                          ; preds = %bb.m
  %i.bj = zext nneg i32 %i.bf to i64              ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bj ; 7 uses
  %i.bl = ptrtoint ptr %i.bk to i64               ; 23 uses
  %i.bm = load i16, ptr %i.be, align 1, !tbaa !25
  %.not.not.i = icmp eq i16 %i.bm, 4351
  br i1 %.not.not.i, label %bytestream2_get_be16.exit122.i, label %jpegxs_parse_frame.exit

bytestream2_get_be16.exit122.i:                   ; preds = %bytestream2_init.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bp = load i16, ptr %i.bn, align 1, !tbaa !25
  %.not99.i = icmp eq i16 %i.bp, 20735
  br i1 %.not99.i, label %bb.o, label %jpegxs_parse_frame.exit

bb.o:                                             ; preds = %bytestream2_get_be16.exit122.i
  %i.bq = icmp samesign ult i32 %i.bf, 6
  br i1 %i.bq, label %bytestream2_get_be16.exit120.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 6
  %i.bs = load i16, ptr %i.bo, align 1, !tbaa !25
  %i.bt = call i16 @llvm.bswap.i16(i16 %i.bs)
  %i.bu = call i16 @llvm.umax.i16(i16 %i.bt, i16 2)
  %i.bv = zext i16 %i.bu to i64
  %i.bw = add nsw i64 %i.bv, -2
  %.pre.i = ptrtoint ptr %i.br to i64
  br label %bytestream2_get_be16.exit120.i

bytestream2_get_be16.exit120.i:                   ; preds = %bb.p, %bb.o
  %.pre-phi.i = phi i64 [ %i.bl, %bb.o ], [ %.pre.i, %bb.p ]
  %i.bx = phi i64 [ %i.bj, %bb.o ], [ 6, %bb.p ]
  %.0.i119.i = phi i64 [ 0, %bb.o ], [ %i.bw, %bb.p ]
  %i.by = sub i64 %i.bl, %.pre-phi.i
  %..i131.i = call i64 @llvm.smin.i64(i64 %i.by, i64 %.0.i119.i)
  %i.bz = add nsw i64 %..i131.i, %i.bx            ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.be, i64 %i.bz ; 3 uses
  %gepdiff.i = sub nsw i64 %i.bj, %i.bz           ; 2 uses
  %i.cb = icmp slt i64 %gepdiff.i, 2
  br i1 %i.cb, label %jpegxs_parse_frame.exit, label %bytestream2_get_be16.exit118.i

bytestream2_get_be16.exit118.i:                   ; preds = %bytestream2_get_be16.exit120.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.cd = load i16, ptr %i.ca, align 1, !tbaa !25
  %.not100.i = icmp eq i16 %i.cd, 4863
  br i1 %.not100.i, label %bb.q, label %jpegxs_parse_frame.exit

bb.q:                                             ; preds = %bytestream2_get_be16.exit118.i
  %6 = icmp samesign ult i64 %gepdiff.i, 4
  br i1 %6, label %bytestream2_get_be16.exit116.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 4 ; 2 uses
  %i.cf = load i16, ptr %i.cc, align 1, !tbaa !25
  %i.cg = call i16 @llvm.bswap.i16(i16 %i.cf)
  %i.ch = call i16 @llvm.umax.i16(i16 %i.cg, i16 19)
  %i.ci = zext i16 %i.ch to i64
  %i.cj = add nsw i64 %i.ci, -19
  %.pre125.i = ptrtoint ptr %i.ce to i64
  br label %bytestream2_get_be16.exit116.i

bytestream2_get_be16.exit116.i:                   ; preds = %bb.r, %bb.q
  %.pre-phi126.i = phi i64 [ %i.bl, %bb.q ], [ %.pre125.i, %bb.r ]
  %.sroa.07.4.i = phi ptr [ %i.bk, %bb.q ], [ %i.ce, %bb.r ]
  %.0.i115.i = phi i64 [ 0, %bb.q ], [ %i.cj, %bb.r ]
  %i.ck = sub i64 %i.bl, %.pre-phi126.i
  %..i130.i = call i64 @llvm.smin.i64(i64 %i.ck, i64 4)
  %i.cl = getelementptr inbounds i8, ptr %.sroa.07.4.i, i64 %..i130.i ; 2 uses
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = sub i64 %i.bl, %i.cm
  %..i129.i = call i64 @llvm.smin.i64(i64 %i.cn, i64 2)
  %i.co = getelementptr inbounds i8, ptr %i.cl, i64 %..i129.i ; 2 uses
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = sub i64 %i.bl, %i.cp
  %..i128.i = call i64 @llvm.smin.i64(i64 %i.cq, i64 2)
  %i.cr = getelementptr inbounds i8, ptr %i.co, i64 %..i128.i ; 3 uses
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = sub i64 %i.bl, %i.cs
  %i.cu = icmp slt i64 %i.ct, 2
  br i1 %i.cu, label %bytestream2_get_be16.exit114.i, label %bb.s

bb.s:                                             ; preds = %bytestream2_get_be16.exit116.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 2 ; 2 uses
  %i.cw = load i16, ptr %i.cr, align 1, !tbaa !25
  %i.cx = call i16 @llvm.bswap.i16(i16 %i.cw)
  %i.cy = zext i16 %i.cx to i32
  %.pre127.i = ptrtoint ptr %i.cv to i64
  br label %bytestream2_get_be16.exit114.i

bytestream2_get_be16.exit114.i:                   ; preds = %bb.s, %bytestream2_get_be16.exit116.i
  %.pre-phi128.i = phi i64 [ %i.bl, %bytestream2_get_be16.exit116.i ], [ %.pre127.i, %bb.s ]
  %.sroa.07.5.i = phi ptr [ %i.bk, %bytestream2_get_be16.exit116.i ], [ %i.cv, %bb.s ] ; 2 uses
  %.0.i113.i = phi i32 [ 0, %bytestream2_get_be16.exit116.i ], [ %i.cy, %bb.s ]
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 %.0.i113.i, ptr %i.cz, align 8, !tbaa !31
  %i.da = sub i64 %i.bl, %.pre-phi128.i
  %i.db = icmp slt i64 %i.da, 2
  br i1 %i.db, label %bytestream2_get_be16.exit112.i, label %bb.t

bb.t:                                             ; preds = %bytestream2_get_be16.exit114.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.07.5.i, i64 2 ; 2 uses
  %i.dd = load i16, ptr %.sroa.07.5.i, align 1, !tbaa !25
  %i.de = call i16 @llvm.bswap.i16(i16 %i.dd)
  %i.df = zext i16 %i.de to i32
  %.pre129.i = ptrtoint ptr %i.dc to i64
  br label %bytestream2_get_be16.exit112.i

bytestream2_get_be16.exit112.i:                   ; preds = %bb.t, %bytestream2_get_be16.exit114.i
  %.pre-phi130.i = phi i64 [ %i.bl, %bytestream2_get_be16.exit114.i ], [ %.pre129.i, %bb.t ]
  %.sroa.07.6.i = phi ptr [ %i.bk, %bytestream2_get_be16.exit114.i ], [ %i.dc, %bb.t ]
  %.0.i111.i = phi i32 [ 0, %bytestream2_get_be16.exit114.i ], [ %i.df, %bb.t ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 316
  store i32 %.0.i111.i, ptr %i.dg, align 4, !tbaa !32
  %i.dh = sub i64 %i.bl, %.pre-phi130.i
  %..i127.i = call i64 @llvm.smin.i64(i64 %i.dh, i64 2)
  %i.di = getelementptr inbounds i8, ptr %.sroa.07.6.i, i64 %..i127.i ; 2 uses
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = sub i64 %i.bl, %i.dj
  %..i126.i = call i64 @llvm.smin.i64(i64 %i.dk, i64 2)
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 %..i126.i ; 3 uses
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = sub i64 %i.bl, %i.dm
  %i.do = icmp slt i64 %i.dn, 1
  br i1 %i.do, label %jpegxs_parse_frame.exit, label %bytestream2_get_byte.exit.i

bytestream2_get_byte.exit.i:                      ; preds = %bytestream2_get_be16.exit112.i
  %i.dp = load i8, ptr %i.dl, align 1, !tbaa !25  ; 4 uses
  %i.dq = and i8 %i.dp, -3
  %or.cond.not.i = icmp eq i8 %i.dq, 1
  br i1 %or.cond.not.i, label %bb.u, label %jpegxs_parse_frame.exit

bb.u:                                             ; preds = %bytestream2_get_byte.exit.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 1 ; 2 uses
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = sub i64 %i.bl, %i.ds
  %..i125.i = call i64 @llvm.smin.i64(i64 %i.dt, i64 %.0.i115.i)
  %i.du = getelementptr inbounds i8, ptr %i.dr, i64 %..i125.i ; 2 uses
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = sub i64 %i.bl, %i.dv                    ; 2 uses
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = icmp sgt i32 %i.dx, 0
  br i1 %i.dy, label %.lr.ph.i12, label %jpegxs_parse_frame.exit

.lr.ph.i12:                                       ; preds = %bb.u, %bytestream2_get_be16.exit.i
  %i.dz = phi i64 [ %i.kg, %bytestream2_get_be16.exit.i ], [ %i.dw, %bb.u ]
  %.sroa.07.890.i = phi ptr [ %i.ke, %bytestream2_get_be16.exit.i ], [ %i.du, %bb.u ] ; 3 uses
  %i.ea = icmp slt i64 %i.dz, 2
  br i1 %i.ea, label %bytestream2_get_be16.exit110.thread.i, label %bytestream2_get_be16.exit110.i

bytestream2_get_be16.exit110.i:                   ; preds = %.lr.ph.i12
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.07.890.i, i64 2 ; 3 uses
  %i.ec = load i16, ptr %.sroa.07.890.i, align 1, !tbaa !25
  %cond.i = icmp eq i16 %i.ec, 5119
  %i.ed = ptrtoint ptr %i.eb to i64               ; 2 uses
  br i1 %cond.i, label %bb.v, label %bytestream2_get_be16.exit110.thread.i

bb.v:                                             ; preds = %bytestream2_get_be16.exit110.i
  %i.ee = sub i64 %i.bl, %i.ed
  %i.ef = icmp slt i64 %i.ee, 2
  br i1 %i.ef, label %bytestream2_get_be16.exit108.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.07.890.i, i64 4 ; 2 uses
  %i.eh = load i16, ptr %i.eb, align 1, !tbaa !25
  %i.ei = call i16 @llvm.bswap.i16(i16 %i.eh)
  %i.ej = call i16 @llvm.umax.i16(i16 %i.ei, i16 2)
  %i.ek = zext i16 %i.ej to i32
  %i.el = add nsw i32 %i.ek, -2
  %.pre133.i = ptrtoint ptr %i.eg to i64
  br label %bytestream2_get_be16.exit108.i

bytestream2_get_be16.exit108.i:                   ; preds = %bb.w, %bb.v
  %.pre-phi134.i = phi i64 [ %i.bl, %bb.v ], [ %.pre133.i, %bb.w ]
  %.sroa.07.10.i = phi ptr [ %i.bk, %bb.v ], [ %i.eg, %bb.w ] ; 12 uses
  %.0.i107.i = phi i32 [ 0, %bb.v ], [ %i.el, %bb.w ]
  %i.em = sub i64 %i.bl, %.pre-phi134.i
  %i.en = trunc i64 %i.em to i32
  %spec.select.i = call i32 @llvm.smin.i32(i32 %.0.i107.i, i32 %i.en) ; 2 uses
  %or.cond.i.i = icmp ugt i32 %spec.select.i, 268435455
  %i.eo = shl nuw nsw i32 %spec.select.i, 3
  %i.ep = select i1 %or.cond.i.i, i32 -8, i32 %i.eo ; 2 uses
  %or.cond.i.i.i = icmp ult i32 %i.ep, 2147483135
  %i.eq = add nuw nsw i32 %i.ep, 8
  %i.er = select i1 %or.cond.i.i.i, i32 %i.eq, i32 8 ; 10 uses
  %.not10691.not.i = icmp eq i8 %i.dp, 0
  br i1 %.not10691.not.i, label %.critedge.thread.i, label %bb.x

bb.x:                                             ; preds = %bytestream2_get_be16.exit108.i
  %i.es = load i32, ptr %.sroa.07.10.i, align 1, !tbaa !25 ; 2 uses
  %i.et = trunc i32 %i.es to i8
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.07.10.i, i64 1
  %i.ev = load i32, ptr %i.eu, align 1, !tbaa !25
  %i.ew = lshr i32 %i.ev, 4
  %i.ex = and i32 %i.ew, 15
  %i.ey = call i32 @llvm.umin.i32(i32 %i.er, i32 12) ; 3 uses
  %i.ez = lshr i32 %i.ey, 3
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.07.10.i, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 1, !tbaa !25
  %i.fd = call i32 @llvm.bswap.i32(i32 %i.fc)
  %i.fe = and i32 %i.ey, 4
  %i.ff = shl i32 %i.fd, %i.fe
  %i.fg = lshr i32 %i.ff, 28
  %i.fh = add nuw nsw i32 %i.ey, 4
  %i.fi = call i32 @llvm.umin.i32(i32 %i.er, i32 %i.fh) ; 3 uses
  %i.fj = icmp samesign ugt i32 %i.fg, %i.ex
  br i1 %i.fj, label %jpegxs_parse_frame.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %exitcond.peel.not.i = icmp eq i8 %i.dp, 1      ; 5 uses
  br i1 %exitcond.peel.not.i, label %.critedge.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fk = lshr i32 %i.fi, 3
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.07.10.i, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 1, !tbaa !25
  %i.fo = call i32 @llvm.bswap.i32(i32 %i.fn)
  %i.fp = and i32 %i.fi, 7
  %i.fq = shl i32 %i.fo, %i.fp                    ; 2 uses
  %sext.i = shl i32 %i.es, 24
  %.not102.peel100.unshifted.i = xor i32 %i.fq, %sext.i
  %.not102.peel100.i = icmp ult i32 %.not102.peel100.unshifted.i, 16777216
  br i1 %.not102.peel100.i, label %._crit_edge116.i, label %jpegxs_parse_frame.exit

._crit_edge116.i:                                 ; preds = %bb.z
  %i.fr = add nuw nsw i32 %i.fi, 8
  %i.fs = call i32 @llvm.umin.i32(i32 %i.er, i32 %i.fr) ; 3 uses
  %i.ft = lshr i32 %i.fs, 3
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.07.10.i, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 1, !tbaa !25
  %i.fx = call i32 @llvm.bswap.i32(i32 %i.fw)
  %i.fy = and i32 %i.fs, 7
  %i.fz = shl i32 %i.fx, %i.fy
  %i.ga = lshr i32 %i.fz, 28                      ; 3 uses
  %i.gb = add nuw nsw i32 %i.fs, 4
  %i.gc = call i32 @llvm.umin.i32(i32 %i.er, i32 %i.gb) ; 3 uses
  %i.gd = trunc nuw nsw i32 %i.ga to i8           ; 2 uses
  %i.ge = lshr i32 %i.gc, 3
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.07.10.i, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 1, !tbaa !25
  %i.gi = call i32 @llvm.bswap.i32(i32 %i.gh)
  %i.gj = and i32 %i.gc, 7
  %i.gk = shl i32 %i.gi, %i.gj
  %i.gl = lshr i32 %i.gk, 28                      ; 3 uses
  %i.gm = trunc nuw nsw i32 %i.gl to i8           ; 2 uses
  %i.gn = icmp samesign ugt i32 %i.gl, %i.ga
end_hunk_0
