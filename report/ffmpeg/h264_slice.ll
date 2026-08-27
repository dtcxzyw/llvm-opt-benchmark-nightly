Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/h264_slice?download=true
inline.NumInlined: 69
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 24
begin_hunk_0_@h264_slice_header_init:bb.a
  store <16 x i8> <i8 0, i8 9, i8 10, i8 18, i8 33, i8 5, i8 27, i8 56, i8 28, i8 15, i8 43, i8 51, i8 23, i8 52, i8 46, i8 61>, ptr %i.ao, align 8, !tbaa !116, !alias.scope !120, !noalias !122
  store <16 x i8> <i8 0, i8 1, i8 2, i8 8, i8 9, i8 3, i8 4, i8 10, i8 16, i8 11, i8 5, i8 6, i8 7, i8 12, i8 17, i8 24>, ptr %i.ap, align 8, !tbaa !116, !alias.scope !120, !noalias !122
  store <16 x i8> <i8 0, i8 9, i8 16, i8 7, i8 18, i8 19, i8 20, i8 27, i8 28, i8 35, i8 36, i8 43, i8 45, i8 56, i8 54, i8 60>, ptr %i.aq, align 8, !tbaa !116, !alias.scope !120, !noalias !122
  %wide.load.1 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @ff_zigzag_direct, i64 16), align 16, !tbaa !116, !alias.scope !117 ; 2 uses
  %i.av = lshr <16 x i8> %wide.load.1, splat (i8 3)
  %i.aw = shl <16 x i8> %wide.load.1, splat (i8 3)
  %i.ax = and <16 x i8> %i.aw, splat (i8 56)
  %i.ay = or <16 x i8> %i.ax, %i.av
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 31176
  store <16 x i8> %i.ay, ptr %i.az, align 8, !tbaa !116, !alias.scope !120, !noalias !122
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 31240
  store <16 x i8> <i8 8, i8 16, i8 3, i8 25, i8 26, i8 6, i8 34, i8 49, i8 21, i8 22, i8 50, i8 44, i8 31, i8 59, i8 39, i8 62>, ptr %i.ba, align 8, !tbaa !116, !alias.scope !120, !noalias !122
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 31320
  store <16 x i8> <i8 18, i8 13, i8 14, i8 15, i8 19, i8 25, i8 32, i8 26, i8 20, i8 21, i8 22, i8 23, i8 27, i8 33, i8 40, i8 34>, ptr %i.bb, align 8, !tbaa !116, !alias.scope !120, !noalias !122
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 31384
  store <16 x i8> <i8 1, i8 3, i8 11, i8 12, i8 13, i8 25, i8 21, i8 33, i8 29, i8 41, i8 37, i8 49, i8 46, i8 57, i8 55, i8 61>, ptr %i.bc, align 8, !tbaa !116, !alias.scope !120, !noalias !122
  %wide.load.2 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @ff_zigzag_direct, i64 32), align 16, !tbaa !116, !alias.scope !117 ; 2 uses
  %i.bd = lshr <16 x i8> %wide.load.2, splat (i8 3)
  %i.be = shl <16 x i8> %wide.load.2, splat (i8 3)
  %i.bf = and <16 x i8> %i.be, splat (i8 56)
  %i.bg = or <16 x i8> %i.bf, %i.bd
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 31192
  store <16 x i8> %i.bg, ptr %i.bh, align 8, !tbaa !116, !alias.scope !120, !noalias !122
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 31256
  store <16 x i8> <i8 1, i8 24, i8 4, i8 32, i8 19, i8 13, i8 41, i8 42, i8 14, i8 29, i8 57, i8 37, i8 38, i8 60, i8 47, i8 55>, ptr %i.bi, align 8, !tbaa !116, !alias.scope !120, !noalias !122
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 31336
  store <16 x i8> <i8 28, i8 29, i8 30, i8 31, i8 35, i8 41, i8 48, i8 42, i8 36, i8 37, i8 38, i8 39, i8 43, i8 49, i8 50, i8 44>, ptr %i.bj, align 8, !tbaa !116, !alias.scope !120, !noalias !122
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 31400
  store <16 x i8> <i8 2, i8 4, i8 5, i8 17, i8 14, i8 32, i8 22, i8 40, i8 30, i8 48, i8 38, i8 50, i8 47, i8 52, i8 58, i8 62>, ptr %i.bk, align 8, !tbaa !116, !alias.scope !120, !noalias !122
  %wide.load.3 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @ff_zigzag_direct, i64 48), align 16, !tbaa !116, !alias.scope !117 ; 2 uses
  %i.bl = lshr <16 x i8> %wide.load.3, splat (i8 3)
  %i.bm = shl <16 x i8> %wide.load.3, splat (i8 3)
  %i.bn = and <16 x i8> %i.bm, splat (i8 56)
  %i.bo = or <16 x i8> %i.bn, %i.bl
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 31208
  store <16 x i8> %i.bo, ptr %i.bp, align 8, !tbaa !116, !alias.scope !120, !noalias !122
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 31272
  store <16 x i8> <i8 2, i8 17, i8 11, i8 40, i8 12, i8 20, i8 48, i8 35, i8 7, i8 36, i8 58, i8 30, i8 45, i8 53, i8 54, i8 63>, ptr %i.bq, align 8, !tbaa !116, !alias.scope !120, !noalias !122
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 31352
  store <16 x i8> <i8 45, i8 46, i8 47, i8 51, i8 56, i8 57, i8 52, i8 53, i8 54, i8 55, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.br, align 8, !tbaa !116, !alias.scope !120, !noalias !122
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 31416
  store <16 x i8> <i8 8, i8 10, i8 6, i8 24, i8 15, i8 26, i8 23, i8 34, i8 31, i8 42, i8 39, i8 44, i8 51, i8 53, i8 59, i8 63>, ptr %i.bs, align 8, !tbaa !116, !alias.scope !120, !noalias !122
  br label %init_scan_tables.exit

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ 0, %vector.memcheck ] ; 9 uses
  %i.bt = getelementptr inbounds nuw i8, ptr @ff_zigzag_direct, i64 %indvars.iv.i
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !116 ; 2 uses
  %i.bv = lshr i8 %i.bu, 3
  %i.bw = shl i8 %i.bu, 3
  %i.bx = and i8 %i.bw, 56
  %i.by = or i8 %i.bx, %i.bv
  %i.bz = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv.i
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !116
  %i.ca = getelementptr inbounds nuw i8, ptr @zigzag_scan8x8_cavlc, i64 %indvars.iv.i
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !116 ; 2 uses
  %i.cc = lshr i8 %i.cb, 3
  %i.cd = shl i8 %i.cb, 3
  %i.ce = and i8 %i.cd, 56
  %i.cf = or i8 %i.ce, %i.cc
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv.i
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !116
  %i.ch = getelementptr inbounds nuw i8, ptr @field_scan8x8, i64 %indvars.iv.i
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !116 ; 2 uses
  %i.cj = lshr i8 %i.ci, 3
  %i.ck = shl i8 %i.ci, 3
  %i.cl = and i8 %i.ck, 56
  %i.cm = or i8 %i.cl, %i.cj
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv.i
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !116
  %i.co = getelementptr inbounds nuw i8, ptr @field_scan8x8_cavlc, i64 %indvars.iv.i
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !116 ; 2 uses
  %i.cq = lshr i8 %i.cp, 3
  %i.cr = shl i8 %i.cp, 3
  %i.cs = and i8 %i.cr, 56
  %i.ct = or i8 %i.cs, %i.cq
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv.i
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !116
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 64
  br i1 %exitcond.not.i, label %init_scan_tables.exit, label %scalar.ph, !llvm.loop !126

init_scan_tables.exit:                            ; preds = %scalar.ph, %vector.body
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !127
  %.not.i = icmp eq i32 %i.cx, 0                  ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 31432
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 31448
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 31512
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 31576
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 31592
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 31656
  %.ff_zigzag_scan.i = select i1 %.not.i, ptr %i.ag, ptr @ff_zigzag_scan
  %.ff_zigzag_direct.i = select i1 %.not.i, ptr %i.an, ptr @ff_zigzag_direct
  %.zigzag_scan8x8_cavlc.i = select i1 %.not.i, ptr %i.ao, ptr @zigzag_scan8x8_cavlc
  %.field_scan.i = select i1 %.not.i, ptr %i.ah, ptr @field_scan
  %.field_scan8x8.i = select i1 %.not.i, ptr %i.ap, ptr @field_scan8x8
  %.field_scan8x8_cavlc.i = select i1 %.not.i, ptr %i.aq, ptr @field_scan8x8_cavlc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %.ff_zigzag_scan.i, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cz, ptr noundef nonnull align 8 dereferenceable(64) %.ff_zigzag_direct.i, i64 64, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.da, ptr noundef nonnull align 8 dereferenceable(64) %.zigzag_scan8x8_cavlc.i, i64 64, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, ptr noundef nonnull align 8 dereferenceable(16) %.field_scan.i, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dc, ptr noundef nonnull align 8 dereferenceable(64) %.field_scan8x8.i, i64 64, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dd, ptr noundef nonnull align 8 dereferenceable(64) %.field_scan8x8_cavlc.i, i64 64, i1 false)
  %i.de = tail call i32 @ff_h264_alloc_tables(ptr noundef nonnull %0) #12 ; 2 uses
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %bb.d, label %bb.e

bb.d:                                             ; preds = %init_scan_tables.exit
  %i.dg = load ptr, ptr %i.c, align 8, !tbaa !91
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.dg, i32 noundef 16, ptr noundef nonnull @.str.12) #12
  br label %bb.j

bb.e:                                             ; preds = %init_scan_tables.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 2004 ; 4 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !78
  %.fr90 = freeze i32 %i.di                       ; 8 uses
  %i.dj = add i32 %.fr90, -15
  %or.cond = icmp ult i32 %i.dj, -7
  br i1 %or.cond, label %bb.f, label %switch.early.test

switch.early.test:                                ; preds = %bb.e
  switch i32 %.fr90, label %bb.g [
    i32 13, label %bb.f
    i32 11, label %bb.f
  ]

bb.f:                                             ; preds = %switch.early.test, %switch.early.test, %bb.e
  %i.dk = load ptr, ptr %i.c, align 8, !tbaa !91
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.dk, i32 noundef 16, ptr noundef nonnull @.str.13, i32 noundef %.fr90) #12
  br label %bb.j

bb.g:                                             ; preds = %switch.early.test
  %i.dl = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 652
  store i32 %.fr90, ptr %i.dm, align 4, !tbaa !128
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 35860
  store i32 %.fr90, ptr %i.dn, align 4, !tbaa !129
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !81 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 35856
  store i32 %i.dp, ptr %i.dq, align 8, !tbaa !130
  %i.dr = icmp samesign ugt i32 %.fr90, 8
  %i.ds = zext i1 %i.dr to i32
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 30088
  store i32 %i.ds, ptr %i.dt, align 8, !tbaa !131
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 31764
  store i32 %i.dp, ptr %i.du, align 4, !tbaa !132
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 31760
  store i32 %.fr90, ptr %i.dv, align 8, !tbaa !133
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @ff_h264dsp_init(ptr noundef nonnull %i.dw, i32 noundef %.fr90, i32 noundef %i.dp) #12
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 2008
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !134
  tail call void @ff_h264chroma_init(ptr noundef nonnull %i.dx, i32 noundef %i.dz) #12
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.eb = load i32, ptr %i.dh, align 4, !tbaa !78
  tail call void @ff_h264qpel_init(ptr noundef nonnull %i.ea, i32 noundef %i.eb) #12
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 30168
  %i.ed = load i32, ptr %i.dh, align 4, !tbaa !78
  %i.ee = load i32, ptr %i.do, align 4, !tbaa !81
  tail call void @ff_h264_pred_init(ptr noundef nonnull %i.ec, i32 noundef 27, i32 noundef %i.ed, i32 noundef %i.ee) #12
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eg = load i32, ptr %i.dh, align 4, !tbaa !78
  tail call void @ff_videodsp_init(ptr noundef nonnull %i.ef, i32 noundef %i.eg) #12
  %i.eh = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 664
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !135
  %i.ek = and i32 %i.ej, 2
  %.not86 = icmp eq i32 %i.ek, 0
  br i1 %.not86, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 30032 ; 2 uses
  %i.em = load i32, ptr %i.el, align 8, !tbaa !136
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 30024
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 30160
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 31732
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 31104
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 31112
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 30024
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !137
  tail call void @ff_h264_slice_context_init(ptr noundef nonnull %0, ptr noundef %i.eu) #12
  br label %.loopexit

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.ev = load ptr, ptr %i.eo, align 8, !tbaa !137
  %i.ew = getelementptr inbounds nuw [35552 x i8], ptr %i.ev, i64 %indvars.iv ; 5 uses
  store ptr %0, ptr %i.ew, align 16, !tbaa !138
  %i.ex = load ptr, ptr %i.ep, align 8, !tbaa !145
  %1 = load i32, ptr %i.eq, align 4, !tbaa !146
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %2 = shl i32 %indvars.iv.tr, 4
  %3 = mul nsw i32 %2, %1
  %4 = sext i32 %3 to i64                         ; 3 uses
  %i.ey = getelementptr inbounds i8, ptr %i.ex, i64 %4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 20912
  store ptr %i.ey, ptr %i.ez, align 16, !tbaa !147
  %i.fa = load ptr, ptr %i.er, align 8, !tbaa !148
  %i.fb = getelementptr inbounds [2 x i8], ptr %i.fa, i64 %4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 33632
  store ptr %i.fb, ptr %i.fc, align 16, !tbaa !148
  %i.fd = load ptr, ptr %i.es, align 8, !tbaa !148
  %i.fe = getelementptr inbounds [2 x i8], ptr %i.fd, i64 %4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ew, i64 33640
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !148
  tail call void @ff_h264_slice_context_init(ptr noundef nonnull %0, ptr noundef nonnull %i.ew) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fg = load i32, ptr %i.el, align 8, !tbaa !136
  %i.fh = sext i32 %i.fg to i64
  %i.fi = icmp slt i64 %indvars.iv.next, %i.fh
  br i1 %i.fi, label %bb.i, label %.loopexit, !llvm.loop !149

bb.j:                                             ; preds = %bb.a, %bb.f, %bb.d
  %.080 = phi i32 [ %i.de, %bb.d ], [ -1094995529, %bb.f ], [ -1094995529, %bb.a ]
  tail call void @ff_h264_free_tables(ptr noundef nonnull %0) #12
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.h, %.preheader, %bb.j
  %.sink = phi i32 [ 0, %bb.j ], [ 1, %bb.h ], [ 1, %.preheader ], [ 1, %bb.i ]
  %.0 = phi i32 [ %.080, %bb.j ], [ 0, %bb.h ], [ 0, %.preheader ], [ 0, %bb.i ]
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 30112
  store i32 %.sink, ptr %i.fj, align 8, !tbaa !29
  ret i32 %.0
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @ff_h264_replace_picture(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_h2645_sei_ctx_replace(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_h264_execute_ref_pic_marking(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @ff_h264_update_thread_context_for_user(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 31752
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 31752
  %i.g = load <2 x i32>, ptr %i.e, align 8, !tbaa !88
  store <2 x i32> %i.g, ptr %i.f, align 8, !tbaa !88
  ret i32 0
}

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @ff_h264_queue_decode_slice(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 22 uses
  %i.b = alloca [23 x i8], align 16               ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca [4 x i32], align 16               ; 9 uses
  %2 = alloca %struct.H264SliceContext, align 16  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 30024 ; 8 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !137
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 30036 ; 4 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !150  ; 2 uses
  %i.i = sext i32 %i.h to i64
  %.idx = mul nsw i64 %i.i, 35552
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %.idx ; 50 uses
  %i.k = icmp eq i32 %i.h, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 35824
  %i.m = load i32, ptr %i.l, align 8, !tbaa !151
  %.not = icmp eq i32 %i.m, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = phi i1 [ false, %bb.a ], [ %.not, %bb.b ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 17 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !tbaa.struct !152
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !137
  %i.r = icmp eq ptr %i.j, %i.q
  br i1 %i.r, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 35824
  %i.t = load i32, ptr %i.s, align 8, !tbaa !151
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 35852
  %i.v = load i32, ptr %i.u, align 4, !tbaa !153
  %.not234.i = icmp eq i32 %i.v, 0
  br i1 %.not234.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, i32 noundef 1708) #12
  tail call void @abort() #13
  unreachable

.thread.i:                                        ; preds = %bb.e, %bb.d, %bb.c
  %i.w = phi i1 [ false, %bb.d ], [ true, %bb.e ], [ false, %bb.c ]
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !148 ; 13 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 23 uses
  %.sroa.4.0.copyload.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !88 ; 6 uses
  %.sroa.76.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 5 uses
  %.sroa.76.0.copyload.i.i.i = load i32, ptr %.sroa.76.0..sroa_idx.i.i.i, align 8, !tbaa !88 ; 16 uses
  %i.x = lshr i32 %.sroa.4.0.copyload.i.i.i, 3
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 1, !tbaa !116
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = and i32 %.sroa.4.0.copyload.i.i.i, 7
  %i.ad = shl i32 %i.ab, %i.ac                    ; 3 uses
  %i.ae = and i32 %i.ad, -65536
  %i.af = add i32 %.sroa.4.0.copyload.i.i.i, 16
  %i.ag = tail call i32 @llvm.umin.i32(i32 %.sroa.76.0.copyload.i.i.i, i32 %i.af) ; 2 uses
  %i.ah = lshr i32 %i.ag, 3
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 1, !tbaa !116
  %i.al = tail call i32 @llvm.bswap.i32(i32 %i.ak)
  %i.am = and i32 %i.ag, 7
  %i.an = shl i32 %i.al, %i.am
  %i.ao = lshr i32 %i.an, 16
  %i.ap = or disjoint i32 %i.ao, %i.ae
  %.not.i.i.i = icmp ult i32 %i.ad, 65536         ; 2 uses
  %i.aq = lshr i32 %i.ad, 16
  %spec.select.i.i.i = select i1 %.not.i.i.i, i32 %i.ap, i32 %i.aq ; 3 uses
  %spec.select12.i.i.i = select i1 %.not.i.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i.i = icmp samesign ult i32 %spec.select.i.i.i, 256 ; 2 uses
  %i.ar = lshr i32 %spec.select.i.i.i, 8
  %i.as = or disjoint i32 %spec.select12.i.i.i, 8
  %.110.i.i.i = select i1 %.not11.i.i.i, i32 %spec.select.i.i.i, i32 %i.ar
  %.1.i.i.i = select i1 %.not11.i.i.i, i32 %spec.select12.i.i.i, i32 %i.as
  %i.at = zext nneg i32 %.110.i.i.i to i64
  %i.au = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !116
  %i.aw = zext i8 %i.av to i32                    ; 2 uses
  %i.ax = add nuw nsw i32 %.1.i.i.i, %i.aw        ; 6 uses
  %i.ay = sub nsw i32 31, %i.ax                   ; 2 uses
  %i.az = sub nsw i32 0, %.sroa.4.0.copyload.i.i.i ; 2 uses
  %i.ba = sub nsw i32 %.sroa.76.0.copyload.i.i.i, %.sroa.4.0.copyload.i.i.i
  %i.bb = icmp slt i32 %i.ay, %i.az
  %..i.i.i.i = tail call i32 @llvm.smin.i32(i32 range(i32 -248, 32) %i.ay, i32 %i.ba)
  %.0.i.i.i.i = select i1 %i.bb, i32 %i.az, i32 %..i.i.i.i
  %i.bc = add nsw i32 %.0.i.i.i.i, %.sroa.4.0.copyload.i.i.i ; 6 uses
  store i32 %i.bc, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !154
  %.not.i5.i.i = icmp eq i32 %i.ax, 32
  br i1 %.not.i5.i.i, label %get_ue_golomb_long.exit.i, label %bb.g

bb.g:                                             ; preds = %.thread.i
  %i.bd = icmp samesign ugt i32 %i.ax, 6
  %i.be = lshr i32 %i.bc, 3
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 1, !tbaa !116
  %i.bi = tail call i32 @llvm.bswap.i32(i32 %i.bh)
  %i.bj = and i32 %i.bc, 7
  %i.bk = shl i32 %i.bi, %i.bj                    ; 2 uses
  br i1 %i.bd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bl = lshr i32 %i.bk, %i.ax
  %reass.sub = sub i32 %i.bc, %i.ax
  %i.bm = add i32 %reass.sub, 32
  %i.bn = tail call i32 @llvm.umin.i32(i32 %.sroa.76.0.copyload.i.i.i, i32 %i.bm) ; 2 uses
  store i32 %i.bn, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !154
  br label %get_ue_golomb_long.exit.i

bb.i:                                             ; preds = %bb.g
  %i.bo = lshr i32 %i.bk, 16
  %i.bp = add i32 %i.bc, 16
  %i.bq = tail call i32 @llvm.umin.i32(i32 %.sroa.76.0.copyload.i.i.i, i32 %i.bp) ; 4 uses
  store i32 %i.bq, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !154
  %i.br = sub nuw nsw i32 16, %i.ax               ; 2 uses
  %i.bs = shl nuw i32 %i.bo, %i.br
  %i.bt = lshr i32 %i.bq, 3
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 1, !tbaa !116
  %i.bx = tail call i32 @llvm.bswap.i32(i32 %i.bw)
  %i.by = and i32 %i.bq, 7
  %i.bz = shl i32 %i.bx, %i.by
  %i.ca = or disjoint i32 %i.aw, 16
  %i.cb = lshr i32 %i.bz, %i.ca
  %i.cc = add i32 %i.bq, %i.br
  %i.cd = tail call i32 @llvm.umin.i32(i32 %.sroa.76.0.copyload.i.i.i, i32 %i.cc) ; 2 uses
  store i32 %i.cd, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !154
  %i.ce = or i32 %i.cb, %i.bs
  br label %get_ue_golomb_long.exit.i

get_ue_golomb_long.exit.i:                        ; preds = %bb.i, %bb.h, %.thread.i
  %i.cf = phi i32 [ %i.bn, %bb.h ], [ %i.cd, %bb.i ], [ %i.bc, %.thread.i ] ; 3 uses
  %.0.i.i.i = phi i32 [ %i.bl, %bb.h ], [ %i.ce, %bb.i ], [ 0, %.thread.i ]
  %i.cg = add i32 %.0.i.i.i, -1                   ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.j, i64 21044 ; 2 uses
end_hunk_0
