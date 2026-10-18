Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/flashsv2enc?download=true
inline.NumInlined: 43
inline.NumDeleted: 35
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@flashsv2_encode_init:bb.a

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.5) #10
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 137
  store i8 0, ptr %i.ba, align 1, !tbaa !46
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 138
  store i8 -1, ptr %i.bb, align 2, !tbaa !47
  %i.bc = tail call fastcc i32 @update_block_dimensions(ptr noundef nonnull %i.b)
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.h, %bb.o, %bb.n, %bb.g, %bb.e, %bb.b
  %.0 = phi i32 [ -22, %bb.b ], [ -22, %bb.e ], [ -22, %bb.g ], [ -12, %bb.n ], [ %i.o, %bb.h ], [ %i.bc, %bb.o ], [ %i.s, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @flashsv2_encode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 51 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !40
  %i.e = add nsw i32 %i.d, 16384
  %i.f = sext i32 %i.e to i64
  %i.g = tail call i32 @ff_alloc_packet(ptr noundef %0, ptr noundef %1, i64 noundef %i.f) #10 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %reconfigure_at_keyframe.exit.thread69, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !88   ; 2 uses
  %i.k = icmp ne i64 %i.j, 0                      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.m = load i32, ptr %i.l, align 4, !tbaa !89   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.p = load i64, ptr %i.o, align 8, !tbaa !37
  %i.q = zext nneg i32 %i.m to i64
  %i.r = add nsw i64 %i.p, %i.q
  %.not = icmp slt i64 %i.j, %i.r
  %or.cond = and i1 %i.k, %.not
  br i1 %or.cond, label %.thread65, label %.thread

bb.d:                                             ; preds = %bb.b
  br i1 %i.k, label %.thread65, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.t = load i32, ptr %i.s, align 8, !tbaa !48
  %.not.i = icmp eq i32 %i.t, 64
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.v = load i32, ptr %i.u, align 4, !tbaa !49
  %.not39.i = icmp eq i32 %i.v, 64
  br i1 %.not39.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread
  %i.w = tail call fastcc i32 @update_block_dimensions(ptr noundef nonnull %i.b) ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %reconfigure_at_keyframe.exit.thread69, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !36 ; 2 uses
  %i.y = getelementptr i8, ptr %.val.i, i64 420
  %.val.val.i = load i32, ptr %i.y, align 4, !tbaa !90
  %i.z = icmp eq i32 %.val.val.i, 0               ; 2 uses
  %i.aa = zext i1 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !91
  br i1 %i.z, label %bb.h, label %.thread65

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 137
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !46
  %.not41.i = icmp eq i8 %i.ad, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 138 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 2, !tbaa !47  ; 2 uses
  br i1 %.not41.i, label %bb.i, label %reconfigure_at_keyframe.exit

bb.i:                                             ; preds = %bb.h
  %.not44.i = icmp eq i8 %i.af, 0
  br i1 %.not44.i, label %.thread65, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 140 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %i.ag, ptr noundef nonnull align 16 dereferenceable(512) @default_screen_video_v2_palette, i64 512, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 652
  br label %.preheader19.i.i.i

.preheader19.i.i.i:                               ; preds = %bb.n, %bb.j
  %indvars.iv27.i.i.i = phi i64 [ 4, %bb.j ], [ %indvars.iv.next28.i.i.i, %bb.n ] ; 5 uses
  %i.ai = shl nuw nsw i64 %indvars.iv27.i.i.i, 7
  %i.aj = and i64 %i.ai, 31744
  %i.ak = trunc nuw nsw i64 %indvars.iv27.i.i.i to i32
  %invariant.gep.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aj
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.m, %.preheader19.i.i.i
  %indvars.iv24.i.i.i = phi i64 [ 4, %.preheader19.i.i.i ], [ %indvars.iv.next25.i.i.i, %bb.m ] ; 5 uses
  %i.al = shl nuw nsw i64 %indvars.iv24.i.i.i, 2
  %i.am = and i64 %i.al, 992
  %i.an = add nuw nsw i64 %indvars.iv24.i.i.i, %indvars.iv27.i.i.i
  %i.ao = trunc nuw nsw i64 %indvars.iv24.i.i.i to i32
  %gep.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i, i64 %i.am
  br label %bb.k

bb.k:                                             ; preds = %pixel_color7_slow.exit.i.i.i, %.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 4, %.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %pixel_color7_slow.exit.i.i.i ] ; 5 uses
  %i.ap = add nuw nsw i64 %i.an, %indvars.iv.i.i.i
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  %i.ar = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.i.i.i.i = phi i64 [ 0, %bb.k ], [ %indvars.iv.next.i.i.i.i, %bb.l ] ; 3 uses
  %.021.i.i.i.i = phi i8 [ -1, %bb.k ], [ %spec.select14.i.i.i.i, %bb.l ]
  %.01020.i.i.i.i = phi i32 [ 2147483647, %bb.k ], [ %spec.select.i.i.i.i, %bb.l ] ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.i.i.i.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !50 ; 3 uses
  %i.au = and i32 %i.at, 255                      ; 2 uses
  %i.av = lshr i32 %i.at, 8
  %i.aw = and i32 %i.av, 255                      ; 2 uses
  %i.ax = lshr i32 %i.at, 16
  %i.ay = and i32 %i.ax, 255                      ; 2 uses
  %.neg16.i.i.i.i.i = sub i32 %i.au, %i.aq
  %.neg17.i.i.i.i.i = add nsw i32 %.neg16.i.i.i.i.i, %i.aw
  %i.az = add nsw i32 %.neg17.i.i.i.i.i, %i.ay
  %i.ba = tail call i32 @llvm.abs.i32(i32 %i.az, i1 true)
  %i.bb = sub nsw i32 %i.au, %i.ar
  %i.bc = tail call i32 @llvm.abs.i32(i32 %i.bb, i1 true)
  %i.bd = sub nsw i32 %i.aw, %i.ao
  %i.be = tail call i32 @llvm.abs.i32(i32 %i.bd, i1 true)
  %i.bf = sub nsw i32 %i.ay, %i.ak
  %i.bg = tail call i32 @llvm.abs.i32(i32 %i.bf, i1 true)
  %i.bh = add nuw nsw i32 %i.be, %i.bc
  %i.bi = add nuw nsw i32 %i.bh, %i.bg
  %i.bj = add nuw nsw i32 %i.bi, %i.ba            ; 2 uses
  %i.bk = icmp samesign ult i32 %i.bj, %.01020.i.i.i.i
  %spec.select.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.bj, i32 %.01020.i.i.i.i)
  %i.bl = trunc i64 %indvars.iv.i.i.i.i to i8
  %spec.select14.i.i.i.i = select i1 %i.bk, i8 %i.bl, i8 %.021.i.i.i.i ; 2 uses
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 128
  br i1 %exitcond.not.i.i.i.i, label %pixel_color7_slow.exit.i.i.i, label %bb.l, !llvm.loop !69

pixel_color7_slow.exit.i.i.i:                     ; preds = %bb.l
  %i.bm = lshr i64 %indvars.iv.i.i.i, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %gep.i.i.i, i64 %i.bm
  store i8 %spec.select14.i.i.i.i, ptr %i.bn, align 1, !tbaa !92
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 8
  %i.bo = icmp samesign ult i64 %indvars.iv.i.i.i, 248
  br i1 %i.bo, label %bb.k, label %bb.m, !llvm.loop !70

bb.m:                                             ; preds = %pixel_color7_slow.exit.i.i.i
  %indvars.iv.next25.i.i.i = add nuw nsw i64 %indvars.iv24.i.i.i, 8
  %i.bp = icmp samesign ult i64 %indvars.iv24.i.i.i, 248
  br i1 %i.bp, label %.preheader.i.i.i, label %bb.n, !llvm.loop !71

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next28.i.i.i = add nuw nsw i64 %indvars.iv27.i.i.i, 8
  %i.bq = icmp samesign ult i64 %indvars.iv27.i.i.i, 248
  br i1 %i.bq, label %.preheader19.i.i.i, label %generate_default_palette.exit.i, !llvm.loop !72

generate_default_palette.exit.i:                  ; preds = %bb.n
  store i8 0, ptr %i.ae, align 2, !tbaa !47
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %.val.i, i32 noundef 48, ptr noundef nonnull @.str.10) #10
  br label %.thread65

reconfigure_at_keyframe.exit:                     ; preds = %bb.h
  %.not42.i.not = icmp eq i8 %i.af, 1
  br i1 %.not42.i.not, label %.thread65, label %reconfigure_at_keyframe.exit.thread69

.thread65:                                        ; preds = %bb.d, %bb.c, %bb.i, %generate_default_palette.exit.i, %bb.g, %reconfigure_at_keyframe.exit
  %.not415863 = phi i1 [ false, %reconfigure_at_keyframe.exit ], [ false, %bb.i ], [ false, %generate_default_palette.exit.i ], [ false, %bb.g ], [ true, %bb.c ], [ true, %bb.d ] ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !91
  %.not45 = icmp eq i32 %i.bs, 0
  br i1 %.not45, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.thread65
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  store i32 15, ptr %i.bt, align 4, !tbaa !93
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread65
  %i.bu = load ptr, ptr %2, align 8, !tbaa !94
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !50
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !96 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !97 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 124 ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !39 ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %.preheader.lr.ph.i.i, label %mark_all_blocks.exit.i

.preheader.lr.ph.i.i:                             ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.cl = load i32, ptr %i.ce, align 8, !tbaa !52 ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.preheader.i.i, label %mark_all_blocks.exit.i

.loopexit.i.i:                                    ; preds = %compare_sl.exit.i.i, %.preheader.i.i
  %i.cn = phi i32 [ %i.cp, %.preheader.i.i ], [ %i.ek, %compare_sl.exit.i.i ]
  %i.co = icmp sgt i32 %.031.in35.i.i, 1
  br i1 %i.co, label %.preheader.i.i, label %mark_all_blocks.exit.i, !llvm.loop !73

.preheader.i.i:                                   ; preds = %.preheader.lr.ph.i.i, %.loopexit.i.i
  %i.cp = phi i32 [ %i.cn, %.loopexit.i.i ], [ %i.cl, %.preheader.lr.ph.i.i ] ; 3 uses
  %.031.in35.i.i = phi i32 [ %.03136.i.i, %.loopexit.i.i ], [ %i.cc, %.preheader.lr.ph.i.i ] ; 3 uses
  %.03136.i.i = add nsw i32 %.031.in35.i.i, -1    ; 2 uses
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.cr = mul nsw i32 %.03136.i.i, %i.bw
  %.pre39.i.i = load i32, ptr %i.ch, align 8, !tbaa !48
  %.pre41.i.i = load i32, ptr %i.ci, align 8, !tbaa !38
  %.pre43.i.i = load ptr, ptr %i.cj, align 8, !tbaa !44
  %.pre45.i.i = load ptr, ptr %i.ck, align 8, !tbaa !45
  br label %bb.q

bb.q:                                             ; preds = %compare_sl.exit.i.i, %.lr.ph.i.i
  %i.cs = phi ptr [ %.pre45.i.i, %.lr.ph.i.i ], [ %i.dy, %compare_sl.exit.i.i ] ; 2 uses
  %i.ct = phi ptr [ %.pre43.i.i, %.lr.ph.i.i ], [ %i.dz, %compare_sl.exit.i.i ] ; 2 uses
  %i.cu = phi i32 [ %.pre41.i.i, %.lr.ph.i.i ], [ %i.ea, %compare_sl.exit.i.i ] ; 2 uses
  %i.cv = phi i32 [ %.pre39.i.i, %.lr.ph.i.i ], [ %i.eb, %compare_sl.exit.i.i ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %compare_sl.exit.i.i ] ; 3 uses
  %i.cw = phi i32 [ %i.cp, %.lr.ph.i.i ], [ %i.ek, %compare_sl.exit.i.i ]
  %i.cx = load i32, ptr %i.cb, align 4, !tbaa !39
  %i.cy = sub i32 %i.cx, %.031.in35.i.i           ; 3 uses
  %i.cz = load ptr, ptr %i.cf, align 8, !tbaa !53
  %i.da = getelementptr inbounds nuw [56 x i8], ptr %i.cz, i64 %indvars.iv.i.i
  %i.db = load i32, ptr %i.cg, align 4, !tbaa !49 ; 2 uses
  %i.dc = sdiv i32 %i.cy, %i.db
  %i.dd = mul nsw i32 %i.dc, %i.cw
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [56 x i8], ptr %i.da, i64 %i.de ; 5 uses
  %i.dg = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.dh = mul nsw i32 %i.cv, %i.dg                ; 2 uses
  %i.di = mul nsw i32 %i.dh, 3
  %i.dj = add nsw i32 %i.di, %i.cr
  %i.dk = mul nsw i32 %i.cy, %i.cu
  %i.dl = add i32 %i.dk, %i.dh
  %i.dm = mul i32 %i.dl, 3
  %i.dn = sext i32 %i.dj to i64
  %i.do = getelementptr inbounds i8, ptr %i.bu, i64 %i.dn ; 3 uses
  %i.dp = sext i32 %i.dm to i64                   ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %i.ct, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %i.cs, i64 %i.dp
  %i.ds = srem i32 %i.cy, %i.db                   ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.df, i64 53 ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !55
  %i.dv = zext i8 %i.du to i64
  %i.dw = mul nuw nsw i64 %i.dv, 3                ; 3 uses
  %bcmp.i.i.i = tail call i32 @bcmp(ptr readonly %i.do, ptr %i.dq, i64 %i.dw)
  %.not.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dx = getelementptr inbounds nuw i8, ptr %i.df, i64 50
  store i8 1, ptr %i.dx, align 2, !tbaa !99
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dq, ptr readonly align 1 %i.do, i64 %i.dw, i1 false)
  %.pre.i.i.i = load i8, ptr %i.dt, align 1, !tbaa !55
  %.pre2.i.i.i = zext i8 %.pre.i.i.i to i64
  %.pre3.i.i.i = mul nuw nsw i64 %.pre2.i.i.i, 3
  %.pre.i.i = load i32, ptr %i.ch, align 8, !tbaa !48
  %.pre40.i.i = load i32, ptr %i.ci, align 8, !tbaa !38
  %.pre42.i.i = load ptr, ptr %i.cj, align 8, !tbaa !44
  %.pre44.i.i = load ptr, ptr %i.ck, align 8, !tbaa !45
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dy = phi ptr [ %.pre44.i.i, %bb.r ], [ %i.cs, %bb.q ]
  %i.dz = phi ptr [ %.pre42.i.i, %bb.r ], [ %i.ct, %bb.q ]
  %i.ea = phi i32 [ %.pre40.i.i, %bb.r ], [ %i.cu, %bb.q ]
  %i.eb = phi i32 [ %.pre.i.i, %bb.r ], [ %i.cv, %bb.q ]
  %.pre-phi4.i.i.i = phi i64 [ %.pre3.i.i.i, %bb.r ], [ %i.dw, %bb.q ]
  %bcmp15.i.i.i = tail call i32 @bcmp(ptr readonly %i.do, ptr readonly %i.dr, i64 %.pre-phi4.i.i.i)
  %.not16.i.i.i = icmp eq i32 %bcmp15.i.i.i, 0
  br i1 %.not16.i.i.i, label %compare_sl.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ec = getelementptr inbounds nuw i8, ptr %i.df, i64 49 ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !100
  %i.ee = icmp eq i8 %i.ed, 0
  br i1 %i.ee, label %bb.u, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.t
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %.pre1.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !101
  %.pre5.i.i.i = trunc i32 %i.ds to i8
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ef = trunc i32 %i.ds to i8                   ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  store i8 %i.ef, ptr %i.eg, align 8, !tbaa !101
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i.i.i
  %.pre-phi6.i.i.i = phi i8 [ %.pre5.i.i.i, %._crit_edge.i.i.i ], [ %i.ef, %bb.u ]
  %i.eh = phi i8 [ %.pre1.i.i.i, %._crit_edge.i.i.i ], [ %i.ef, %bb.u ]
  %i.ei = add i8 %.pre-phi6.i.i.i, 1
  %i.ej = sub i8 %i.ei, %i.eh
  store i8 %i.ej, ptr %i.ec, align 1, !tbaa !100
  br label %compare_sl.exit.i.i

compare_sl.exit.i.i:                              ; preds = %bb.v, %bb.s
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ek = load i32, ptr %i.ce, align 8, !tbaa !52 ; 3 uses
  %i.el = sext i32 %i.ek to i64
  %i.em = icmp slt i64 %indvars.iv.next.i.i, %i.el
  br i1 %i.em, label %bb.q, label %.loopexit.i.i, !llvm.loop !74

mark_all_blocks.exit.i:                           ; preds = %.loopexit.i.i, %.preheader.lr.ph.i.i, %bb.p
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 5 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !56 ; 2 uses
  %i.ep = icmp sgt i32 %i.eo, 0
  br i1 %i.ep, label %.preheader.lr.ph.i31.i, label %encode_all_blocks.exit.i

.preheader.lr.ph.i31.i:                           ; preds = %mark_all_blocks.exit.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 140 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 652 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 33424 ; 8 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 33448 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 33456 ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 33432 ; 4 uses
  %i.ff = load i32, ptr %i.eq, align 8, !tbaa !52 ; 2 uses
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %.preheader.i32.i, label %encode_all_blocks.exit.i

.preheader.i32.i:                                 ; preds = %.preheader.lr.ph.i31.i, %._crit_edge.i.i
  %i.fh = phi i32 [ %i.wa, %._crit_edge.i.i ], [ %i.eo, %.preheader.lr.ph.i31.i ]
  %i.fi = phi i32 [ %i.wb, %._crit_edge.i.i ], [ %i.ff, %.preheader.lr.ph.i31.i ] ; 3 uses
  %.04494.i.i = phi i32 [ %i.wc, %._crit_edge.i.i ], [ 0, %.preheader.lr.ph.i31.i ] ; 3 uses
  %i.fj = icmp sgt i32 %i.fi, 0
  br i1 %i.fj, label %.lr.ph.i33.i, label %._crit_edge.i.i

.lr.ph.i33.i:                                     ; preds = %.preheader.i32.i, %encode_block.exit.i.i
  %i.fk = phi i32 [ %i.vy, %encode_block.exit.i.i ], [ %i.fi, %.preheader.i32.i ]
  %.093.i.i = phi i32 [ %i.vx, %encode_block.exit.i.i ], [ 0, %.preheader.i32.i ] ; 3 uses
  %i.fl = load ptr, ptr %i.er, align 8, !tbaa !53
  %i.fm = mul nuw nsw i32 %i.fk, %.04494.i.i
  %i.fn = add nsw i32 %i.fm, %.093.i.i
  %i.fo = sext i32 %i.fn to i64                   ; 2 uses
  %i.fp = getelementptr inbounds [56 x i8], ptr %i.fl, i64 %i.fo ; 29 uses
  %i.fq = load ptr, ptr %i.es, align 8, !tbaa !57
  %i.fr = getelementptr inbounds [56 x i8], ptr %i.fq, i64 %i.fo ; 2 uses
  %i.fs = load i32, ptr %i.br, align 8, !tbaa !91
  %.not.i.i = icmp eq i32 %i.fs, 0                ; 2 uses
  %i.ft = select i1 %.not.i.i, i8 0, i8 16        ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 55 ; 4 uses
  store i8 %i.ft, ptr %i.fu, align 1, !tbaa !102
  br i1 %.not415863, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i33.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fp, i64 48
  store i8 0, ptr %i.fv, align 8, !tbaa !101
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fp, i64 54
  %i.fx = load i8, ptr %i.fw, align 2, !tbaa !58  ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fp, i64 49
  store i8 %i.fx, ptr %i.fy, align 1, !tbaa !100
  br label %bb.ac

bb.x:                                             ; preds = %.lr.ph.i33.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fp, i64 50
  %i.ga = load i8, ptr %i.fz, align 2, !tbaa !99
  %.not49.i.i = icmp eq i8 %i.ga, 0
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fp, i64 48 ; 2 uses
  br i1 %.not49.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i8 0, ptr %i.gb, align 8, !tbaa !101
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fp, i64 49
  store i8 0, ptr %i.gc, align 1, !tbaa !100
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
end_hunk_0
begin_hunk_1_@flashsv2_encode_frame:bb.a
  %i.sy = zext i8 %i.sx to i64
  %i.sz = load i8, ptr %i.sg, align 1, !tbaa !100
  %i.ta = zext i8 %i.sz to i64
  %i.tb = add nuw nsw i64 %i.ta, %i.sy
  %i.tc = icmp samesign ult i64 %indvars.iv.next60.i.i.i.i, %i.tb
  br i1 %i.tc, label %.lr.ph48.i.i.i.i, label %._crit_edge49.loopexit.i.i.i.i, !llvm.loop !80

._crit_edge49.loopexit.i.i.i.i:                   ; preds = %.lr.ph48.i.i.i.i
  %i.td = trunc nuw nsw i64 %indvars.iv.next60.i.i.i.i to i32
  %.pre.i47.i.i.i = load i8, ptr %i.ha, align 1, !tbaa !55
  %.pre66.i.i.i.i = zext i8 %.pre.i47.i.i.i to i64
  %.pre67.i.i.i.i = mul nuw nsw i64 %indvars.iv.next60.i.i.i.i, 3
  %.pre69.i.i.i.i = mul nuw nsw i64 %.pre67.i.i.i.i, %.pre66.i.i.i.i
  br label %._crit_edge49.i.i.i.i

._crit_edge49.i.i.i.i:                            ; preds = %._crit_edge49.loopexit.i.i.i.i, %._crit_edge.i44.i.i.i
  %.pre-phi72.i.i.i.i = phi i64 [ %.pre69.i.i.i.i, %._crit_edge49.loopexit.i.i.i.i ], [ %i.sd, %._crit_edge.i44.i.i.i ] ; 2 uses
  %.1.lcssa.i46.i.i.i = phi i32 [ %i.td, %._crit_edge49.loopexit.i.i.i.i ], [ %.0.lcssa.i45.i.i.i, %._crit_edge.i44.i.i.i ] ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.pre-phi72.i.i.i.i
  %i.tf = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store ptr %i.te, ptr %i.tf, align 8, !tbaa !105
  %i.tg = load i8, ptr %i.hd, align 2, !tbaa !58
  %i.th = zext i8 %i.tg to i32
  %i.ti = icmp samesign ult i32 %.1.lcssa.i46.i.i.i, %i.th
  br i1 %i.ti, label %.lr.ph53.preheader.i.i.i.i, label %encode_bgr.exit.i.i.i

.lr.ph53.preheader.i.i.i.i:                       ; preds = %._crit_edge49.i.i.i.i
  %i.tj = zext nneg i32 %.1.lcssa.i46.i.i.i to i64
  %i.tk = sext i32 %i.go to i64
  br label %.lr.ph53.i.i.i.i

.lr.ph53.i.i.i.i:                                 ; preds = %.lr.ph53.i.i.i.i, %.lr.ph53.preheader.i.i.i.i
  %indvars.iv62.i.i.i.i = phi i64 [ %i.tj, %.lr.ph53.preheader.i.i.i.i ], [ %indvars.iv.next63.i.i.i.i, %.lr.ph53.i.i.i.i ] ; 3 uses
  %i.tl = load i8, ptr %i.ha, align 1, !tbaa !55
  %i.tm = zext i8 %i.tl to i32
  %i.tn = trunc nuw nsw i64 %indvars.iv62.i.i.i.i to i32
  %i.to = mul nuw nsw i32 %i.tm, 3                ; 2 uses
  %i.tp = mul nuw nsw i32 %i.to, %i.tn
  %i.tq = zext nneg i32 %i.tp to i64
  %i.tr = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.tq
  %i.ts = mul nsw i64 %indvars.iv62.i.i.i.i, %i.tk
  %i.tt = getelementptr inbounds i8, ptr %i.gy, i64 %i.ts
  %i.tu = zext nneg i32 %i.to to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tr, ptr readonly align 1 %i.tt, i64 %i.tu, i1 false)
  %indvars.iv.next63.i.i.i.i = add nuw nsw i64 %indvars.iv62.i.i.i.i, 1 ; 3 uses
  %i.tv = load i8, ptr %i.hd, align 2, !tbaa !58
  %i.tw = zext i8 %i.tv to i64
  %i.tx = icmp samesign ult i64 %indvars.iv.next63.i.i.i.i, %i.tw
  br i1 %i.tx, label %.lr.ph53.i.i.i.i, label %._crit_edge54.loopexit.i.i.i.i, !llvm.loop !81

._crit_edge54.loopexit.i.i.i.i:                   ; preds = %.lr.ph53.i.i.i.i
  %.pre65.i.i.i.i = load i8, ptr %i.ha, align 1, !tbaa !55
  %.pre73.i.i.i.i = zext i8 %.pre65.i.i.i.i to i64
  %.pre75.i.i.i.i = mul nuw nsw i64 %indvars.iv.next63.i.i.i.i, 3
  %.pre77.i.i.i.i = mul nuw nsw i64 %.pre75.i.i.i.i, %.pre73.i.i.i.i
  br label %encode_bgr.exit.i.i.i

encode_bgr.exit.i.i.i:                            ; preds = %._crit_edge54.loopexit.i.i.i.i, %._crit_edge49.i.i.i.i
  %.pre-phi80.i.i.i.i = phi i64 [ %.pre77.i.i.i.i, %._crit_edge54.loopexit.i.i.i.i ], [ %.pre-phi72.i.i.i.i, %._crit_edge49.i.i.i.i ]
  %i.ty = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.pre-phi80.i.i.i.i
  br label %encode_15_7.exit.i.i.i

encode_15_7.exit.i.i.i:                           ; preds = %encode_15_7_sl.exit74.i.i.i.i, %encode_bgr.exit.i.i.i, %.lr.ph123.i.i.i.i, %._crit_edge115.i.i.i.i
  %.sink129.i.i.i = phi ptr [ %i.ty, %encode_bgr.exit.i.i.i ], [ %.1.lcssa.i.i.i.i, %._crit_edge115.i.i.i.i ], [ %.1.lcssa.i.i.i.i, %.lr.ph123.i.i.i.i ], [ %i.rh, %encode_15_7_sl.exit74.i.i.i.i ]
  %i.tz = load ptr, ptr %i.fp, align 8, !tbaa !60
  %i.ua = ptrtoint ptr %.sink129.i.i.i to i64
  %i.ub = ptrtoint ptr %i.tz to i64
  %i.uc = sub i64 %i.ua, %i.ub
  %i.ud = trunc i64 %i.uc to i32
  %i.ue = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  store i32 %i.ud, ptr %i.ue, align 8, !tbaa !106
  %i.uf = getelementptr inbounds nuw i8, ptr %i.fp, i64 49
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !100
  %.not36.i.i.i = icmp eq i8 %i.ug, 0
  br i1 %.not36.i.i.i, label %bb.at, label %bb.am

bb.am:                                            ; preds = %encode_15_7.exit.i.i.i
  %i.uh = zext nneg i32 %i.hg to i64
  %i.ui = getelementptr inbounds nuw i8, ptr %i.fp, i64 40 ; 6 uses
  store i64 %i.uh, ptr %i.ui, align 8, !tbaa !103
  %i.uj = getelementptr inbounds nuw i8, ptr %i.fp, i64 32 ; 2 uses
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !61
  %i.ul = tail call i32 @deflateReset(ptr noundef nonnull %i.fb) #10
  %.not.i48.i.i.i = icmp eq i32 %i.ul, 0
  br i1 %.not.i48.i.i.i, label %bb.an, label %write_bitstream.exit

bb.an:                                            ; preds = %bb.am
  store ptr %i.uk, ptr %i.fc, align 8, !tbaa !107
  %i.um = load i64, ptr %i.ui, align 8, !tbaa !108
  %i.un = trunc i64 %i.um to i32
  store i32 %i.un, ptr %i.fd, align 8, !tbaa !109
  %i.uo = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 2 uses
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !104 ; 2 uses
  store ptr %i.up, ptr %i.fb, align 8, !tbaa !110
  %i.uq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 2 uses
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !105
  %i.us = ptrtoint ptr %i.ur to i64
  %i.ut = ptrtoint ptr %i.up to i64
  %i.uu = sub i64 %i.us, %i.ut
  %i.uv = trunc i64 %i.uu to i32
  store i32 %i.uv, ptr %i.fe, align 8, !tbaa !111
  %i.uw = tail call i32 @deflate(ptr noundef nonnull %i.fb, i32 noundef 4) #10
  %.not14.i.i.i.i = icmp eq i32 %i.uw, 1
  br i1 %.not14.i.i.i.i, label %bb.ao, label %write_bitstream.exit

bb.ao:                                            ; preds = %bb.an
  %i.ux = load i32, ptr %i.fd, align 8, !tbaa !109
  %i.uy = zext i32 %i.ux to i64
  %i.uz = load i64, ptr %i.ui, align 8, !tbaa !108
  %i.va = sub i64 %i.uz, %i.uy
  store i64 %i.va, ptr %i.ui, align 8, !tbaa !108
  br i1 %.not415863, label %bb.ap, label %encode_block.exit.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.vb = tail call i32 @deflateReset(ptr noundef nonnull %i.fb) #10
  %.not.i49.i.i.i = icmp eq i32 %i.vb, 0
  br i1 %.not.i49.i.i.i, label %bb.aq, label %write_bitstream.exit.thread

bb.aq:                                            ; preds = %bb.ap
  %i.vc = load ptr, ptr %i.fr, align 8, !tbaa !60
  store ptr %i.vc, ptr %i.fb, align 8, !tbaa !110
  %i.vd = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.ve = load i32, ptr %i.vd, align 8, !tbaa !106 ; 2 uses
  store i32 %i.ve, ptr %i.fe, align 8, !tbaa !111
  %.not2527.i.i.i.i = icmp eq i32 %i.ve, 0
  br i1 %.not2527.i.i.i.i, label %encode_zlibprime.exit.i.i.i, label %.lr.ph.i51.i.i.i

thread-pre-split.i.i.i.i:                         ; preds = %.lr.ph.i51.i.i.i
  %.pr.i52.i.i.i = load i32, ptr %i.fe, align 8, !tbaa !111
  %.not25.i.i.i.i = icmp eq i32 %.pr.i52.i.i.i, 0
  br i1 %.not25.i.i.i.i, label %encode_zlibprime.exit.i.i.i, label %.lr.ph.i51.i.i.i

.lr.ph.i51.i.i.i:                                 ; preds = %bb.aq, %thread-pre-split.i.i.i.i
  store ptr %i.hh, ptr %i.fc, align 8, !tbaa !107
  store i32 %i.hg, ptr %i.fd, align 8, !tbaa !109
  %i.vf = tail call i32 @deflate(ptr noundef nonnull %i.fb, i32 noundef 2) #10
  %i.vg = icmp slt i32 %i.vf, 0
  br i1 %i.vg, label %write_bitstream.exit, label %thread-pre-split.i.i.i.i, !llvm.loop !82

encode_zlibprime.exit.i.i.i:                      ; preds = %thread-pre-split.i.i.i.i, %bb.aq
  %i.vh = load ptr, ptr %i.uo, align 8, !tbaa !104 ; 2 uses
  store ptr %i.vh, ptr %i.fb, align 8, !tbaa !110
  %i.vi = load ptr, ptr %i.uq, align 8, !tbaa !105
  %i.vj = ptrtoint ptr %i.vi to i64
  %i.vk = ptrtoint ptr %i.vh to i64
  %i.vl = sub i64 %i.vj, %i.vk
  %i.vm = trunc i64 %i.vl to i32
  store i32 %i.vm, ptr %i.fe, align 8, !tbaa !111
  store ptr %i.hh, ptr %i.fc, align 8, !tbaa !107
  store i32 %i.hg, ptr %i.fd, align 8, !tbaa !109
  %i.vn = tail call i32 @deflate(ptr noundef nonnull %i.fb, i32 noundef 4) #10
  %.not26.i.not.i.i.i = icmp eq i32 %i.vn, 1
  br i1 %.not26.i.not.i.i.i, label %bb.ar, label %write_bitstream.exit

bb.ar:                                            ; preds = %encode_zlibprime.exit.i.i.i
  %i.vo = load i32, ptr %i.fd, align 8, !tbaa !109
  %i.vp = sub i32 %i.hg, %i.vo
  %i.vq = zext i32 %i.vp to i64                   ; 3 uses
  %i.vr = load i64, ptr %i.ui, align 8, !tbaa !103
  %i.vs = icmp ugt i64 %i.vr, %i.vq
  br i1 %i.vs, label %bb.as, label %encode_block.exit.i.i

bb.as:                                            ; preds = %bb.ar
  store i64 %i.vq, ptr %i.ui, align 8, !tbaa !103
  %i.vt = load ptr, ptr %i.uj, align 8, !tbaa !61
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vt, ptr align 1 %i.hh, i64 %i.vq, i1 false)
  %i.vu = load i8, ptr %i.fu, align 1, !tbaa !102
  %i.vv = or i8 %i.vu, 1
  store i8 %i.vv, ptr %i.fu, align 1, !tbaa !102
  br label %encode_block.exit.i.i

bb.at:                                            ; preds = %encode_15_7.exit.i.i.i
  %i.vw = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  store i64 0, ptr %i.vw, align 8, !tbaa !103
  br label %encode_block.exit.i.i

encode_block.exit.i.i:                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.ao, %bb.y
  %i.vx = add nuw nsw i32 %.093.i.i, 1            ; 2 uses
  %i.vy = load i32, ptr %i.eq, align 8, !tbaa !52 ; 3 uses
  %i.vz = icmp slt i32 %i.vx, %i.vy
  br i1 %i.vz, label %.lr.ph.i33.i, label %._crit_edge.loopexit.i.i, !llvm.loop !83

._crit_edge.loopexit.i.i:                         ; preds = %encode_block.exit.i.i
  %.pre105.i.i = load i32, ptr %i.en, align 4, !tbaa !56
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %.preheader.i32.i
  %i.wa = phi i32 [ %.pre105.i.i, %._crit_edge.loopexit.i.i ], [ %i.fh, %.preheader.i32.i ] ; 2 uses
  %i.wb = phi i32 [ %i.vy, %._crit_edge.loopexit.i.i ], [ %i.fi, %.preheader.i32.i ]
  %i.wc = add nuw nsw i32 %.04494.i.i, 1          ; 2 uses
  %i.wd = icmp slt i32 %i.wc, %i.wa
  br i1 %i.wd, label %.preheader.i32.i, label %encode_all_blocks.exit.i, !llvm.loop !84

encode_all_blocks.exit.i:                         ; preds = %._crit_edge.i.i, %.preheader.lr.ph.i31.i, %mark_all_blocks.exit.i
  %i.we = icmp slt i32 %i.ca, 5
  br i1 %i.we, label %write_bitstream.exit, label %put_bits.exit26.i.i

put_bits.exit26.i.i:                              ; preds = %encode_all_blocks.exit.i
  %i.wf = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.wg = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %4 = load i32, ptr %i.wg, align 8, !tbaa !38
  %5 = load i32, ptr %i.cb, align 4, !tbaa !39
  %i.wh = load <2 x i32>, ptr %i.wf, align 8, !tbaa !50
  %i.wi = shl <2 x i32> %i.wh, splat (i32 8)
  %i.wj = and <2 x i32> %i.wi, <i32 61440, i32 -4096>
  %i.wk = add <2 x i32> %i.wj, <i32 61440, i32 -4096> ; 2 uses
  %6 = extractelement <2 x i32> %i.wk, i64 0
  %7 = or i32 %6, %4
  %i.wl = shl i32 %7, 16
  %i.wm = extractelement <2 x i32> %i.wk, i64 1
  %8 = or i32 %i.wm, %5
  %i.wn = or i32 %8, %i.wl
  %i.wo = tail call i32 @llvm.bswap.i32(i32 %i.wn)
  store i32 %i.wo, ptr %i.by, align 1, !tbaa !92
  %i.wp = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.wq = load i8, ptr %i.wp, align 8, !tbaa !112 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i8 %i.wq, ptr %i.wr, align 1, !tbaa !92
  %i.ws = and i8 %i.wq, 1
  %.not.i36.i = icmp eq i8 %i.ws, 0
  br i1 %.not.i36.i, label %write_header.exit.i, label %write_bitstream.exit

write_header.exit.i:                              ; preds = %put_bits.exit26.i.i
  %i.wt = getelementptr inbounds nuw i8, ptr %i.by, i64 5
  %i.wu = add nsw i32 %i.ca, -5
  %i.wv = load i32, ptr %i.en, align 4, !tbaa !56 ; 2 uses
  %i.ww = icmp sgt i32 %i.wv, 0
  br i1 %i.ww, label %.preheader.lr.ph.i38.i, label %write_bitstream.exit

.preheader.lr.ph.i38.i:                           ; preds = %write_header.exit.i
  %i.wx = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.wz = load i32, ptr %i.wx, align 8, !tbaa !52 ; 2 uses
  %i.xa = icmp sgt i32 %i.wz, 0
  br i1 %i.xa, label %.preheader.i39.i, label %write_bitstream.exit

.preheader.i39.i:                                 ; preds = %.preheader.lr.ph.i38.i, %._crit_edge.i40.i
  %i.xb = phi i32 [ %i.zv, %._crit_edge.i40.i ], [ %i.wv, %.preheader.lr.ph.i38.i ]
  %i.xc = phi i32 [ %i.zw, %._crit_edge.i40.i ], [ %i.wz, %.preheader.lr.ph.i38.i ] ; 3 uses
  %.043.i.i = phi i32 [ %.1.lcssa.i.i, %._crit_edge.i40.i ], [ 0, %.preheader.lr.ph.i38.i ] ; 2 uses
  %.02442.i.i = phi i32 [ %i.zx, %._crit_edge.i40.i ], [ 0, %.preheader.lr.ph.i38.i ] ; 2 uses
  %i.xd = icmp sgt i32 %i.xc, 0
  br i1 %i.xd, label %.lr.ph.i41.i, label %._crit_edge.i40.i

.lr.ph.i41.i:                                     ; preds = %.preheader.i39.i, %bb.az
  %indvars.iv.i42.i = phi i64 [ %indvars.iv.next.i44.i, %bb.az ], [ 0, %.preheader.i39.i ] ; 2 uses
  %i.xe = phi i32 [ %i.zs, %bb.az ], [ %i.xc, %.preheader.i39.i ]
  %.141.i.i = phi i32 [ %i.zr, %bb.az ], [ %.043.i.i, %.preheader.i39.i ] ; 3 uses
  %i.xf = load ptr, ptr %i.wy, align 8, !tbaa !53
  %i.xg = mul nuw nsw i32 %i.xe, %.02442.i.i
  %i.xh = sext i32 %i.xg to i64
  %i.xi = getelementptr inbounds [56 x i8], ptr %i.xf, i64 %i.xh
  %i.xj = getelementptr inbounds nuw [56 x i8], ptr %i.xi, i64 %indvars.iv.i42.i ; 16 uses
  %i.xk = zext nneg i32 %.141.i.i to i64
  %i.xl = getelementptr inbounds nuw i8, ptr %i.wt, i64 %i.xk ; 7 uses
  %i.xm = sub i32 %i.wu, %.141.i.i
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xj, i64 40 ; 3 uses
  %i.xo = load i64, ptr %i.xn, align 8, !tbaa !103
  %i.xp = trunc i64 %i.xo to i32
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xj, i64 55 ; 3 uses
  %i.xr = load i8, ptr %i.xq, align 1, !tbaa !102 ; 2 uses
  %i.xs = lshr i8 %i.xr, 1
  %i.xt = and i8 %i.xs, 2
  %i.xu = zext nneg i8 %i.xt to i32
  %i.xv = and i8 %i.xr, 2
  %i.xw = zext nneg i8 %i.xv to i32
  %spec.select.i.i.i = add i32 %i.xw, %i.xp
  %.1.i.i.i = add i32 %spec.select.i.i.i, %i.xu   ; 2 uses
  %.not45.i.i.i = icmp eq i32 %.1.i.i.i, 0
  %i.xx = add i32 %.1.i.i.i, 1
  %.2.i.i.i = select i1 %.not45.i.i.i, i32 0, i32 %i.xx ; 4 uses
  %i.xy = add i32 %.2.i.i.i, 2
  %i.xz = icmp ult i32 %i.xm, %i.xy
  br i1 %i.xz, label %write_block.exit.thread.i.i, label %bb.au

write_block.exit.thread.i.i:                      ; preds = %.lr.ph.i41.i
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xj, i64 50
  store i8 0, ptr %i.ya, align 2, !tbaa !99
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xj, i64 49
  store i8 0, ptr %i.yb, align 1, !tbaa !100
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xj, i64 48
  store i8 0, ptr %i.yc, align 8, !tbaa !101
  br i1 %.not415863, label %write_bitstream.exit.thread, label %bb.ba

bb.au:                                            ; preds = %.lr.ph.i41.i
  %i.yd = lshr i32 %.2.i.i.i, 8
  %i.ye = trunc i32 %i.yd to i8
  store i8 %i.ye, ptr %i.xl, align 1, !tbaa !92
  %i.yf = trunc i32 %.2.i.i.i to i8
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xl, i64 1
  store i8 %i.yf, ptr %i.yg, align 1, !tbaa !92
  %i.yh = icmp eq i32 %.2.i.i.i, 0
  br i1 %i.yh, label %write_block.exit.thread30.i.i, label %bb.av

write_block.exit.thread30.i.i:                    ; preds = %bb.au
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xj, i64 50
  store i8 0, ptr %i.yi, align 2, !tbaa !99
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xj, i64 49
  store i8 0, ptr %i.yj, align 1, !tbaa !100
  %i.yk = getelementptr inbounds nuw i8, ptr %i.xj, i64 48
  store i8 0, ptr %i.yk, align 8, !tbaa !101
  br label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.yl = load i8, ptr %i.xq, align 1, !tbaa !102 ; 3 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.xl, i64 2
  store i8 %i.yl, ptr %i.ym, align 1, !tbaa !92
  %i.yn = and i8 %i.yl, 4
  %.not46.i.i.i = icmp eq i8 %i.yn, 0
  br i1 %.not46.i.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.yo = getelementptr inbounds nuw i8, ptr %i.xj, i64 48
  %i.yp = load i8, ptr %i.yo, align 8, !tbaa !101
  %i.yq = getelementptr inbounds nuw i8, ptr %i.xl, i64 3
  store i8 %i.yp, ptr %i.yq, align 1, !tbaa !92
  %i.yr = getelementptr inbounds nuw i8, ptr %i.xj, i64 49
  %i.ys = load i8, ptr %i.yr, align 1, !tbaa !100
  %i.yt = getelementptr inbounds nuw i8, ptr %i.xl, i64 4
  store i8 %i.ys, ptr %i.yt, align 1, !tbaa !92
  %.pre.i.i43.i = load i8, ptr %i.xq, align 1, !tbaa !102
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.yu = phi i8 [ %.pre.i.i43.i, %bb.aw ], [ %i.yl, %bb.av ]
  %.041.i.i.i = phi i32 [ 5, %bb.aw ], [ 3, %bb.av ] ; 3 uses
  %i.yv = and i8 %i.yu, 2
  %.not47.i.i.i = icmp eq i8 %i.yv, 0
  br i1 %.not47.i.i.i, label %write_block.exit.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.yw = getelementptr inbounds nuw i8, ptr %i.xj, i64 51
  %i.yx = load i8, ptr %i.yw, align 1, !tbaa !62
  %i.yy = zext nneg i32 %.041.i.i.i to i64
  %i.yz = getelementptr inbounds nuw i8, ptr %i.xl, i64 %i.yy ; 2 uses
  store i8 %i.yx, ptr %i.yz, align 1, !tbaa !92
  %i.za = getelementptr inbounds nuw i8, ptr %i.xj, i64 52
  %i.zb = load i8, ptr %i.za, align 4, !tbaa !63
  %i.zc = add nuw nsw i32 %.041.i.i.i, 2
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yz, i64 1
  store i8 %i.zb, ptr %i.zd, align 1, !tbaa !92
  br label %write_block.exit.i.i

write_block.exit.i.i:                             ; preds = %bb.ay, %bb.ax
  %.142.i.i.i = phi i32 [ %i.zc, %bb.ay ], [ %.041.i.i.i, %bb.ax ] ; 2 uses
  %i.ze = zext nneg i32 %.142.i.i.i to i64
  %i.zf = getelementptr inbounds nuw i8, ptr %i.xl, i64 %i.ze
  %i.zg = getelementptr inbounds nuw i8, ptr %i.xj, i64 32
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !61
  %i.zi = load i64, ptr %i.xn, align 8, !tbaa !103
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.zf, ptr align 1 %i.zh, i64 %i.zi, i1 false)
  %i.zj = load i64, ptr %i.xn, align 8, !tbaa !103
  %i.zk = trunc i64 %i.zj to i32
  %i.zl = add i32 %.142.i.i.i, %i.zk              ; 3 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.xj, i64 50
  store i8 0, ptr %i.zm, align 2, !tbaa !99
  %i.zn = getelementptr inbounds nuw i8, ptr %i.xj, i64 49
  store i8 0, ptr %i.zn, align 1, !tbaa !100
  %i.zo = getelementptr inbounds nuw i8, ptr %i.xj, i64 48
  store i8 0, ptr %i.zo, align 8, !tbaa !101
  %i.zp = icmp slt i32 %i.zl, 0
  br i1 %i.zp, label %write_bitstream.exit, label %bb.az

bb.az:                                            ; preds = %write_block.exit.i.i, %write_block.exit.thread30.i.i
  %.043.i32.i.i = phi i32 [ 2, %write_block.exit.thread30.i.i ], [ %i.zl, %write_block.exit.i.i ]
  %i.zq = add nuw nsw i32 %.043.i32.i.i, %.141.i.i
  %i.zr = freeze i32 %i.zq                        ; 2 uses
  %indvars.iv.next.i44.i = add nuw nsw i64 %indvars.iv.i42.i, 1 ; 2 uses
  %i.zs = load i32, ptr %i.wx, align 8, !tbaa !52 ; 3 uses
  %i.zt = sext i32 %i.zs to i64
  %i.zu = icmp slt i64 %indvars.iv.next.i44.i, %i.zt
  br i1 %i.zu, label %.lr.ph.i41.i, label %._crit_edge.loopexit.i45.i, !llvm.loop !85

._crit_edge.loopexit.i45.i:                       ; preds = %bb.az
  %.pre.i46.i = load i32, ptr %i.en, align 4, !tbaa !56
  br label %._crit_edge.i40.i

._crit_edge.i40.i:                                ; preds = %._crit_edge.loopexit.i45.i, %.preheader.i39.i
  %i.zv = phi i32 [ %i.xb, %.preheader.i39.i ], [ %.pre.i46.i, %._crit_edge.loopexit.i45.i ] ; 2 uses
  %i.zw = phi i32 [ %i.xc, %.preheader.i39.i ], [ %i.zs, %._crit_edge.loopexit.i45.i ]
  %.1.lcssa.i.i = phi i32 [ %.043.i.i, %.preheader.i39.i ], [ %i.zr, %._crit_edge.loopexit.i45.i ] ; 4 uses
  %i.zx = add nuw nsw i32 %.02442.i.i, 1          ; 2 uses
  %i.zy = icmp slt i32 %i.zx, %i.zv
  br i1 %i.zy, label %.preheader.i39.i, label %write_all_blocks.exit.i, !llvm.loop !86

write_all_blocks.exit.i:                          ; preds = %._crit_edge.i40.i
  %i.zz = icmp slt i32 %.1.lcssa.i.i, 0
  %i.aaa = add nuw nsw i32 %.1.lcssa.i.i, 5
  %spec.select.i48 = select i1 %i.zz, i32 %.1.lcssa.i.i, i32 %i.aaa ; 2 uses
  br i1 %.not415863, label %write_bitstream.exit.thread, label %bb.ba

write_bitstream.exit:                             ; preds = %bb.am, %bb.an, %encode_zlibprime.exit.i.i.i, %.lr.ph.i51.i.i.i, %write_block.exit.i.i, %encode_all_blocks.exit.i, %put_bits.exit26.i.i, %write_header.exit.i, %.preheader.lr.ph.i38.i
  %.0.i47 = phi i32 [ 5, %write_header.exit.i ], [ -1, %.lr.ph.i51.i.i.i ], [ 5, %.preheader.lr.ph.i38.i ], [ %i.zl, %write_block.exit.i.i ], [ -1, %put_bits.exit26.i.i ], [ -1, %encode_all_blocks.exit.i ], [ -1, %encode_zlibprime.exit.i.i.i ], [ -542398533, %bb.am ], [ -542398533, %bb.an ] ; 2 uses
  br i1 %.not415863, label %write_bitstream.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %write_all_blocks.exit.i, %write_block.exit.thread.i.i, %write_bitstream.exit
  %.0.i4775 = phi i32 [ -1, %write_block.exit.thread.i.i ], [ %.0.i47, %write_bitstream.exit ], [ %spec.select.i48, %write_all_blocks.exit.i ]
  %i.aab = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !57
  %i.aad = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !53
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !64
  %i.aah = sext i32 %i.aag to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aac, ptr align 8 %i.aae, i64 %i.aah, i1 false)
  %i.aai = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !45
  %i.aak = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !44
  %i.aam = load i32, ptr %i.c, align 8, !tbaa !40
  %i.aan = sext i32 %i.aam to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aaj, ptr align 1 %i.aal, i64 %i.aan, i1 false)
end_hunk_1
