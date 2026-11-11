Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cinepakenc?download=true
inline.NumInlined: 29
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 31
begin_hunk_0_@cinepak_encode_frame:bb.a
bb.co:                                            ; preds = %bb.cn, %bb.cm
  %storemerge.i = phi i32 [ %spec.store.select.i, %bb.cn ], [ %.3184619.i, %bb.cm ] ; 3 uses
  store i32 %storemerge.i, ptr %i.fv, align 4, !tbaa !103
  %i.avt = add nsw i32 %storemerge.i, -1
  %i.avu = getelementptr inbounds nuw i8, ptr %i.m, i64 424
  %i.avv = load i32, ptr %i.avu, align 8, !tbaa !35 ; 2 uses
  %.not218.i = icmp sgt i32 %storemerge.i, %i.avv
  %spec.store.select220.i = select i1 %.not218.i, i32 %i.avt, i32 %i.avv
  store i32 %spec.store.select220.i, ptr %i.ft, align 8, !tbaa !102
  br label %rd_frame.exit

bb.cp:                                            ; preds = %._crit_edge528.i
  %i.avw = add nsw i32 %i.avn, %.3184619.i
  %i.avx = getelementptr inbounds nuw i8, ptr %i.m, i64 428
  %i.avy = load i32, ptr %i.avx, align 4, !tbaa !36
  %spec.store.select221.i = call i32 @llvm.smin.i32(i32 %i.avw, i32 %i.avy)
  store i32 %spec.store.select221.i, ptr %i.fv, align 4, !tbaa !103
  %i.avz = sub nsw i32 %.3184619.i, %i.avn
  %i.awa = getelementptr inbounds nuw i8, ptr %i.m, i64 424
  %i.awb = load i32, ptr %i.awa, align 8, !tbaa !35
  %spec.store.select222.i = call i32 @llvm.smax.i32(i32 %i.avz, i32 %i.awb)
  store i32 %spec.store.select222.i, ptr %i.ft, align 8, !tbaa !102
  br label %rd_frame.exit

rd_frame.exit:                                    ; preds = %.thread291.i, %bb.co, %bb.cp
  %.4 = phi i32 [ %.3, %bb.co ], [ %.3, %bb.cp ], [ %.031, %.thread291.i ]
  %.4.i = phi i32 [ %.3193618.i, %bb.co ], [ %.3193618.i, %bb.cp ], [ %.2.ph.i, %.thread291.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  %i.awc = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %.4.i, ptr %i.awc, align 8, !tbaa !114
  %.not28 = icmp eq i32 %.4, 0
  br i1 %.not28, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %rd_frame.exit
  %i.awd = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.awe = load i32, ptr %i.awd, align 8, !tbaa !115
  %i.awf = or i32 %i.awe, 1
  store i32 %i.awf, ptr %i.awd, align 8, !tbaa !115
  store i32 0, ptr %i.x, align 8, !tbaa !51
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %rd_frame.exit
  store i32 1, ptr %3, align 4, !tbaa !49
  %i.awg = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  %i.awh = load <2 x ptr>, ptr %i.awg, align 8, !tbaa !112
  %i.awi = shufflevector <2 x ptr> %i.awh, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.awi, ptr %i.awg, align 8, !tbaa !112
  %i.awj = load i32, ptr %i.x, align 8, !tbaa !51
  %i.awk = add nsw i32 %i.awj, 1                  ; 2 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.awm = load i32, ptr %i.awl, align 4, !tbaa !116
  %.not29 = icmp slt i32 %i.awk, %i.awm
  %spec.store.select = select i1 %.not29, i32 %i.awk, i32 0
  store i32 %spec.store.select, ptr %i.x, align 8, !tbaa !51
  br label %bb.cs

bb.cs:                                            ; preds = %bb.a, %bb.cr
  %.0 = phi i32 [ 0, %bb.cr ], [ %i.v, %bb.a ]
  ret i32 %.0
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @cinepak_encode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  tail call void @avpriv_elbg_free(ptr noundef nonnull %i.c) #10
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @av_frame_free(ptr noundef nonnull %i.d) #10
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  tail call void @av_frame_free(ptr noundef nonnull %i.e) #10
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  tail call void @av_frame_free(ptr noundef nonnull %i.f) #10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !39
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  tail call void @av_frame_free(ptr noundef nonnull %i.j) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  tail call void @av_freep(ptr noundef nonnull %i.k) #10
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  tail call void @av_freep(ptr noundef nonnull %i.l) #10
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  tail call void @av_freep(ptr noundef nonnull %i.m) #10
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void @av_freep(ptr noundef nonnull %i.n) #10
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  tail call void @av_freep(ptr noundef nonnull %i.o) #10
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  tail call void @av_freep(ptr noundef nonnull %i.q) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = load i32, ptr %i.g, align 8, !tbaa !39
  %i.s = icmp eq i32 %i.r, 2
  %i.t = select i1 %i.s, i64 4, i64 3
  %i.u = icmp samesign ult i64 %indvars.iv.next, %i.t
  br i1 %i.u, label %bb.d, label %bb.e, !llvm.loop !117

bb.e:                                             ; preds = %bb.d
  ret i32 0
}

declare ptr @av_default_item_name(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @av_frame_alloc() local_unnamed_addr #2

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #2

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #2

declare void @av_lfg_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @ff_alloc_packet(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @quantize(ptr noundef %0, i32 noundef range(i32 1, -2147483648) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef range(i32 0, 2) %4, ptr noundef nonnull %5, i32 noundef range(i32 0, 4) %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 6 uses
  %i.b = alloca [4 x ptr], align 16               ; 8 uses
  %i.c = alloca [4 x ptr], align 16               ; 8 uses
  %i.d = alloca [4 x i32], align 16               ; 8 uses
  %i.e = alloca [4 x i32], align 16               ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !52
  %i.h = icmp eq i32 %i.g, 2                      ; 6 uses
  %i.i = select i1 %i.h, i32 6, i32 4             ; 4 uses
  %.not = icmp eq i32 %4, 0                       ; 4 uses
  %.idx = select i1 %.not, i64 6144, i64 0
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 %.idx
  %.in.v = select i1 %.not, i64 12292, i64 12288
  %.in = getelementptr inbounds nuw i8, ptr %5, i64 %.in.v
  %i.k = load i32, ptr %.in, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 5 uses
  %.not195 = icmp eq i32 %6, 3                    ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.o = load i32, ptr %i.l, align 4, !tbaa !53   ; 4 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.preheader204.preheader, label %.split228.us.thread

.preheader204.preheader:                          ; preds = %bb.a
  %i.q = zext nneg i32 %i.i to i64                ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader204

.preheader204:                                    ; preds = %.preheader204.preheader, %._crit_edge
  %i.v = phi i32 [ %i.ri, %._crit_edge ], [ %i.o, %.preheader204.preheader ] ; 3 uses
  %i.w = phi i32 [ %i.rj, %._crit_edge ], [ %i.o, %.preheader204.preheader ] ; 2 uses
  %i.x = phi i32 [ %i.rk, %._crit_edge ], [ %i.o, %.preheader204.preheader ] ; 2 uses
  %.0165225 = phi i32 [ %.1.lcssa, %._crit_edge ], [ 0, %.preheader204.preheader ] ; 2 uses
  %.0176224 = phi i32 [ %.1177.lcssa, %._crit_edge ], [ 0, %.preheader204.preheader ] ; 3 uses
  %.0182222 = phi i32 [ %i.rl, %._crit_edge ], [ 0, %.preheader204.preheader ] ; 17 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader204
  %i.z = sext i32 %.0165225 to i64                ; 2 uses
  br i1 %.not, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.aa = or disjoint i32 %.0182222, 1            ; 2 uses
  %i.ab = or disjoint i32 %.0182222, 3            ; 2 uses
  %i.ac = or disjoint i32 %.0182222, 2            ; 2 uses
  %i.ad = lshr exact i32 %.0182222, 1             ; 3 uses
  %i.ae = or disjoint i32 %i.ad, 1                ; 2 uses
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %invariant.op = or disjoint i32 %.0182222, 1    ; 2 uses
  %invariant.op337 = or disjoint i32 %.0182222, 1 ; 2 uses
  %7 = lshr exact i32 %.0182222, 1                ; 4 uses
  %i.af = or disjoint i32 %.0182222, 2            ; 5 uses
  %i.ag = lshr exact i32 %i.af, 1                 ; 4 uses
  %.reass.1 = or disjoint i32 %.0182222, 3        ; 2 uses
  %.reass338.1 = or disjoint i32 %.0182222, 3     ; 2 uses
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.c
  %i.ah = phi i32 [ %i.v, %.lr.ph.split.us.preheader ], [ %i.jy, %bb.c ]
  %indvars.iv294 = phi i64 [ %i.z, %.lr.ph.split.us.preheader ], [ %indvars.iv.next295, %bb.c ] ; 2 uses
  %.1177217.us = phi i32 [ %.0176224, %.lr.ph.split.us.preheader ], [ %.2178.us, %bb.c ] ; 3 uses
  %.0184215.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %i.jz, %bb.c ] ; 9 uses
  br i1 %.not195, label %.preheader201.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.aj = getelementptr inbounds [36 x i8], ptr %i.ai, i64 %indvars.iv294
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !59
  %.not196.us = icmp eq i32 %i.al, %6
  br i1 %.not196.us, label %.preheader201.us, label %bb.c

.preheader201.us:                                 ; preds = %bb.b, %.lr.ph.split.us
  %i.am = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.an = mul nsw i32 %.1177217.us, %i.i
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ao ; 24 uses
  %.pre315 = load ptr, ptr %2, align 8, !tbaa !44 ; 16 uses
  %i.aq = lshr exact i32 %.0184215.us, 1          ; 4 uses
  %i.ar = or disjoint i32 %.0184215.us, 1         ; 4 uses
  %i.as = or disjoint i32 %.0184215.us, 2         ; 5 uses
  %i.at = lshr exact i32 %i.as, 1                 ; 4 uses
  %i.au = or disjoint i32 %.0184215.us, 3         ; 4 uses
  %i.av = load i32, ptr %3, align 4, !tbaa !49
  %i.aw = mul nsw i32 %i.av, %.0182222
  %i.ax = add nsw i32 %i.aw, %.0184215.us
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %.pre315, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !55
  %i.bb = zext i8 %i.ba to i32
  store i32 %i.bb, ptr %i.ap, align 4, !tbaa !49
  %i.bc = load i32, ptr %3, align 4, !tbaa !49
  %i.bd = mul nsw i32 %i.bc, %.0182222
  %i.be = add nsw i32 %i.bd, %i.ar
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds i8, ptr %.pre315, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !55
  %i.bi = zext i8 %i.bh to i32
  %i.bj = getelementptr i8, ptr %i.ap, i64 4
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !49
  %i.bk = load i32, ptr %3, align 4, !tbaa !49
  %i.bl = mul nsw i32 %i.bk, %invariant.op
  %i.bm = add nsw i32 %i.bl, %.0184215.us
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %.pre315, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !55
  %i.bq = zext i8 %i.bp to i32
  %i.br = getelementptr i8, ptr %i.ap, i64 8
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !49
  %i.bs = load i32, ptr %3, align 4, !tbaa !49
  %i.bt = mul nsw i32 %i.bs, %invariant.op
  %i.bu = add nsw i32 %i.bt, %i.ar
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds i8, ptr %.pre315, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !55
  %i.by = zext i8 %i.bx to i32
  %i.bz = getelementptr i8, ptr %i.ap, i64 12
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !49
  br i1 %i.h, label %.peel.next282, label %.peel.next277.1

.peel.next282:                                    ; preds = %.preheader201.us, %.peel.next282
  %indvars.iv291 = phi i64 [ %indvars.iv.next292.1, %.peel.next282 ], [ 4, %.preheader201.us ] ; 3 uses
  %indvars.iv269 = phi i64 [ %indvars.iv.next270.1373, %.peel.next282 ], [ 4, %.preheader201.us ] ; 3 uses
  %i.ca = add nsw i64 %indvars.iv291, -3          ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !44
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ca
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !49
  %i.cf = mul nsw i32 %i.ce, %7
  %i.cg = add nsw i32 %i.cf, %i.aq
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds i8, ptr %i.cc, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !55
  %i.ck = zext i8 %i.cj to i32
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv269
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !49
  %i.cm = add nsw i64 %indvars.iv291, -2          ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !44
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cm
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !49
  %i.cr = mul nsw i32 %i.cq, %7
  %i.cs = add nsw i32 %i.cr, %i.aq
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds i8, ptr %i.co, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !55
  %i.cw = zext i8 %i.cv to i32
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv269
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store i32 %i.cw, ptr %i.cy, align 4, !tbaa !49
  %indvars.iv.next292.1 = add nuw nsw i64 %indvars.iv291, 2 ; 2 uses
  %indvars.iv.next270.1373 = add nuw nsw i64 %indvars.iv269, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next292.1, %i.q
  br i1 %exitcond.not.1, label %.peel.next277.1, label %.peel.next282, !llvm.loop !118

.peel.next277.1:                                  ; preds = %.peel.next282, %.preheader201.us
  %.lcssa258.wide = phi i64 [ 4, %.preheader201.us ], [ %indvars.iv.next270.1373, %.peel.next282 ] ; 5 uses
  %i.cz = load i32, ptr %3, align 4, !tbaa !49
  %i.da = mul nsw i32 %i.cz, %.0182222
  %i.db = add nsw i32 %i.da, %i.as
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds i8, ptr %.pre315, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !55
  %i.df = zext i8 %i.de to i32
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %.lcssa258.wide
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !49
  %i.dh = load i32, ptr %3, align 4, !tbaa !49
  %i.di = mul nsw i32 %i.dh, %.0182222
  %i.dj = add nsw i32 %i.di, %i.au
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds i8, ptr %.pre315, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !55
  %i.dn = zext i8 %i.dm to i32
  %i.do = getelementptr [4 x i8], ptr %i.ap, i64 %.lcssa258.wide
  %i.dp = getelementptr i8, ptr %i.do, i64 4
  store i32 %i.dn, ptr %i.dp, align 4, !tbaa !49
  %i.dq = load i32, ptr %3, align 4, !tbaa !49
  %i.dr = mul nsw i32 %i.dq, %invariant.op337
  %i.ds = add nsw i32 %i.dr, %i.as
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds i8, ptr %.pre315, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !55
  %i.dw = zext i8 %i.dv to i32
  %i.dx = getelementptr [4 x i8], ptr %i.ap, i64 %.lcssa258.wide
  %i.dy = getelementptr i8, ptr %i.dx, i64 8
  store i32 %i.dw, ptr %i.dy, align 4, !tbaa !49
  %i.dz = load i32, ptr %3, align 4, !tbaa !49
  %i.ea = mul nsw i32 %i.dz, %invariant.op337
  %i.eb = add nsw i32 %i.ea, %i.au
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds i8, ptr %.pre315, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !55
  %i.ef = zext i8 %i.ee to i32
  %i.eg = getelementptr [4 x i8], ptr %i.ap, i64 %.lcssa258.wide
  %i.eh = getelementptr i8, ptr %i.eg, i64 12
  store i32 %i.ef, ptr %i.eh, align 4, !tbaa !49
  %indvars.iv.next270.peel285.1 = add nsw i64 %.lcssa258.wide, 4 ; 2 uses
  br i1 %i.h, label %.peel.next282.1, label %.loopexit.1

.peel.next282.1:                                  ; preds = %.peel.next277.1, %.peel.next282.1
  %indvars.iv288 = phi i64 [ %indvars.iv.next289.1, %.peel.next282.1 ], [ 4, %.peel.next277.1 ] ; 3 uses
  %indvars.iv269.1 = phi i64 [ %indvars.iv.next270.1.1, %.peel.next282.1 ], [ %indvars.iv.next270.peel285.1, %.peel.next277.1 ] ; 3 uses
  %i.ei = add nsw i64 %indvars.iv288, -3          ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ei
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !44
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ei
  %i.em = load i32, ptr %i.el, align 4, !tbaa !49
  %i.en = mul nsw i32 %i.em, %7
  %i.eo = add nsw i32 %i.en, %i.at
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds i8, ptr %i.ek, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !55
  %i.es = zext i8 %i.er to i32
  %i.et = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %indvars.iv269.1
  store i32 %i.es, ptr %i.et, align 4, !tbaa !49
  %i.eu = add nsw i64 %indvars.iv288, -2          ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !44
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.eu
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !49
  %i.ez = mul nsw i32 %i.ey, %7
  %i.fa = add nsw i32 %i.ez, %i.at
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds i8, ptr %i.ew, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !55
  %i.fe = zext i8 %i.fd to i32
  %i.ff = getelementptr [4 x i8], ptr %i.ap, i64 %indvars.iv269.1
  %i.fg = getelementptr i8, ptr %i.ff, i64 4
  store i32 %i.fe, ptr %i.fg, align 4, !tbaa !49
  %indvars.iv.next289.1 = add nuw nsw i64 %indvars.iv288, 2 ; 2 uses
  %indvars.iv.next270.1.1 = add nsw i64 %indvars.iv269.1, 2 ; 2 uses
  %exitcond.1.not.1 = icmp eq i64 %indvars.iv.next289.1, %i.q
  br i1 %exitcond.1.not.1, label %.loopexit.1, label %.peel.next282.1, !llvm.loop !118

.loopexit.1:                                      ; preds = %.peel.next282.1, %.peel.next277.1
  %.lcssa258.wide.1 = phi i64 [ %indvars.iv.next270.peel285.1, %.peel.next277.1 ], [ %indvars.iv.next270.1.1, %.peel.next282.1 ] ; 5 uses
  %i.fh = load i32, ptr %3, align 4, !tbaa !49
  %i.fi = mul nsw i32 %i.fh, %i.af
  %i.fj = add nsw i32 %i.fi, %.0184215.us
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds i8, ptr %.pre315, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !55
  %i.fn = zext i8 %i.fm to i32
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %.lcssa258.wide.1
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !49
  %i.fp = load i32, ptr %3, align 4, !tbaa !49
  %i.fq = mul nsw i32 %i.fp, %i.af
  %i.fr = add nsw i32 %i.fq, %i.ar
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds i8, ptr %.pre315, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !55
  %i.fv = zext i8 %i.fu to i32
  %i.fw = getelementptr [4 x i8], ptr %i.ap, i64 %.lcssa258.wide.1
  %i.fx = getelementptr i8, ptr %i.fw, i64 4
  store i32 %i.fv, ptr %i.fx, align 4, !tbaa !49
  %i.fy = load i32, ptr %3, align 4, !tbaa !49
  %i.fz = mul nsw i32 %i.fy, %.reass.1
  %i.ga = add nsw i32 %i.fz, %.0184215.us
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds i8, ptr %.pre315, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !55
  %i.ge = zext i8 %i.gd to i32
  %i.gf = getelementptr [4 x i8], ptr %i.ap, i64 %.lcssa258.wide.1
  %i.gg = getelementptr i8, ptr %i.gf, i64 8
  store i32 %i.ge, ptr %i.gg, align 4, !tbaa !49
  %i.gh = load i32, ptr %3, align 4, !tbaa !49
  %i.gi = mul nsw i32 %i.gh, %.reass.1
  %i.gj = add nsw i32 %i.gi, %i.ar
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds i8, ptr %.pre315, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !55
  %i.gn = zext i8 %i.gm to i32
  %i.go = getelementptr [4 x i8], ptr %i.ap, i64 %.lcssa258.wide.1
  %i.gp = getelementptr i8, ptr %i.go, i64 12
  store i32 %i.gn, ptr %i.gp, align 4, !tbaa !49
  %indvars.iv.next270.peel285.1375 = add nsw i64 %.lcssa258.wide.1, 4 ; 2 uses
  br i1 %i.h, label %.peel.next282.1379, label %.peel.next277.1.1

.peel.next282.1379:                               ; preds = %.loopexit.1, %.peel.next282.1379
  %indvars.iv291.1 = phi i64 [ %indvars.iv.next292.1.1, %.peel.next282.1379 ], [ 4, %.loopexit.1 ] ; 3 uses
  %indvars.iv269.1377 = phi i64 [ %indvars.iv.next270.1373.1, %.peel.next282.1379 ], [ %indvars.iv.next270.peel285.1375, %.loopexit.1 ] ; 3 uses
  %i.gq = add nsw i64 %indvars.iv291.1, -3        ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.gq
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !44
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.gq
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !49
  %i.gv = mul nsw i32 %i.gu, %i.ag
  %i.gw = add nsw i32 %i.gv, %i.aq
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds i8, ptr %i.gs, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !55
  %i.ha = zext i8 %i.gz to i32
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %indvars.iv269.1377
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !49
  %i.hc = add nsw i64 %indvars.iv291.1, -2        ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.hc
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !44
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.hc
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !49
  %i.hh = mul nsw i32 %i.hg, %i.ag
  %i.hi = add nsw i32 %i.hh, %i.aq
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds i8, ptr %i.he, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !55
  %i.hm = zext i8 %i.hl to i32
  %i.hn = getelementptr [4 x i8], ptr %i.ap, i64 %indvars.iv269.1377
  %i.ho = getelementptr i8, ptr %i.hn, i64 4
  store i32 %i.hm, ptr %i.ho, align 4, !tbaa !49
  %indvars.iv.next292.1.1 = add nuw nsw i64 %indvars.iv291.1, 2 ; 2 uses
  %indvars.iv.next270.1373.1 = add nsw i64 %indvars.iv269.1377, 2 ; 2 uses
  %exitcond.not.1.1 = icmp eq i64 %indvars.iv.next292.1.1, %i.q
  br i1 %exitcond.not.1.1, label %.peel.next277.1.1, label %.peel.next282.1379, !llvm.loop !118

.peel.next277.1.1:                                ; preds = %.peel.next282.1379, %.loopexit.1
  %.lcssa258.wide.1380 = phi i64 [ %indvars.iv.next270.peel285.1375, %.loopexit.1 ], [ %indvars.iv.next270.1373.1, %.peel.next282.1379 ] ; 5 uses
  %i.hp = load i32, ptr %3, align 4, !tbaa !49
  %i.hq = mul nsw i32 %i.hp, %i.af
  %i.hr = add nsw i32 %i.hq, %i.as
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds i8, ptr %.pre315, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !55
  %i.hv = zext i8 %i.hu to i32
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %.lcssa258.wide.1380
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !49
  %i.hx = load i32, ptr %3, align 4, !tbaa !49
  %i.hy = mul nsw i32 %i.hx, %i.af
  %i.hz = add nsw i32 %i.hy, %i.au
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds i8, ptr %.pre315, i64 %i.ia
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !55
  %i.id = zext i8 %i.ic to i32
  %i.ie = getelementptr [4 x i8], ptr %i.ap, i64 %.lcssa258.wide.1380
  %i.if = getelementptr i8, ptr %i.ie, i64 4
  store i32 %i.id, ptr %i.if, align 4, !tbaa !49
  %i.ig = load i32, ptr %3, align 4, !tbaa !49
  %i.ih = mul nsw i32 %i.ig, %.reass338.1
  %i.ii = add nsw i32 %i.ih, %i.as
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds i8, ptr %.pre315, i64 %i.ij
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !55
  %i.im = zext i8 %i.il to i32
  %i.in = getelementptr [4 x i8], ptr %i.ap, i64 %.lcssa258.wide.1380
  %i.io = getelementptr i8, ptr %i.in, i64 8
  store i32 %i.im, ptr %i.io, align 4, !tbaa !49
  %i.ip = load i32, ptr %3, align 4, !tbaa !49
  %i.iq = mul nsw i32 %i.ip, %.reass338.1
  %i.ir = add nsw i32 %i.iq, %i.au
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds i8, ptr %.pre315, i64 %i.is
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !55
  %i.iv = zext i8 %i.iu to i32
  %i.iw = getelementptr [4 x i8], ptr %i.ap, i64 %.lcssa258.wide.1380
  %i.ix = getelementptr i8, ptr %i.iw, i64 12
  store i32 %i.iv, ptr %i.ix, align 4, !tbaa !49
  br i1 %i.h, label %.peel.next282.1.preheader.1, label %.loopexit.1.1

.peel.next282.1.preheader.1:                      ; preds = %.peel.next277.1.1
  %indvars.iv.next270.peel285.1.1 = add nsw i64 %.lcssa258.wide.1380, 4
  br label %.peel.next282.1.1

.peel.next282.1.1:                                ; preds = %.peel.next282.1.1, %.peel.next282.1.preheader.1
  %indvars.iv288.1 = phi i64 [ 4, %.peel.next282.1.preheader.1 ], [ %indvars.iv.next289.1.1, %.peel.next282.1.1 ] ; 3 uses
  %indvars.iv269.1.1 = phi i64 [ %indvars.iv.next270.peel285.1.1, %.peel.next282.1.preheader.1 ], [ %indvars.iv.next270.1.1.1, %.peel.next282.1.1 ] ; 3 uses
  %i.iy = add nsw i64 %indvars.iv288.1, -3        ; 2 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.iy
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !44
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.iy
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !49
  %i.jd = mul nsw i32 %i.jc, %i.ag
  %i.je = add nsw i32 %i.jd, %i.at
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds i8, ptr %i.ja, i64 %i.jf
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !55
  %i.ji = zext i8 %i.jh to i32
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %indvars.iv269.1.1
  store i32 %i.ji, ptr %i.jj, align 4, !tbaa !49
  %i.jk = add nsw i64 %indvars.iv288.1, -2        ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.jk
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !44
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.jk
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !49
  %i.jp = mul nsw i32 %i.jo, %i.ag
  %i.jq = add nsw i32 %i.jp, %i.at
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds i8, ptr %i.jm, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !55
  %i.ju = zext i8 %i.jt to i32
  %i.jv = getelementptr [4 x i8], ptr %i.ap, i64 %indvars.iv269.1.1
end_hunk_0
