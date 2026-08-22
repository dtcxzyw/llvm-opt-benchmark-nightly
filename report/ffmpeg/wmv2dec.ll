Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/wmv2dec?download=true
inline.NumInlined: 63
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ff_wmv2_decode_secondary_picture_header:bb.a
  %i.rx = zext i1 %i.rw to i32
  %spec.select.i.i131 = add i32 %i.rr, %i.rx      ; 6 uses
  %i.ry = zext i8 %i.rv to i32
  %i.rz = and i32 %i.rr, 7
  store i32 %spec.select.i.i131, ptr %i.ff, align 8, !tbaa !81
  %i.sa = lshr exact i32 128, %i.rz
  %i.sb = and i32 %i.sa, %i.ry
  %i.sc = icmp eq i32 %i.sb, 0
  br i1 %i.sc, label %decode012.exit134, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.sd = lshr i32 %spec.select.i.i131, 3
  %i.se = zext nneg i32 %i.sd to i64
  %i.sf = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.se
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !83
  %i.sh = icmp slt i32 %spec.select.i.i131, %i.np
  %i.si = zext i1 %i.sh to i32
  %spec.select.i3.i132 = add i32 %spec.select.i.i131, %i.si ; 2 uses
  %i.sj = zext i8 %i.sg to i32
  %i.sk = and i32 %spec.select.i.i131, 7
  %i.sl = shl nuw nsw i32 %i.sj, %i.sk
  %i.sm = lshr i32 %i.sl, 7
  store i32 %spec.select.i3.i132, ptr %i.ff, align 8, !tbaa !81
  %i.sn = and i32 %i.sm, 1
  %i.so = add nuw nsw i32 %i.sn, 1
  br label %decode012.exit134

decode012.exit134:                                ; preds = %bb.ab, %bb.ac
  %.val172 = phi i32 [ %spec.select.i3.i132, %bb.ac ], [ %spec.select.i.i131, %bb.ab ]
  %.0.i133 = phi i32 [ %i.so, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 5468
  store i32 %.0.i133, ptr %i.sp, align 4, !tbaa !88
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 5472
  store i32 %.0.i133, ptr %i.sq, align 16, !tbaa !87
  br label %bb.ad

bb.ad:                                            ; preds = %decode012.exit134, %bb.aa
  %.sink170219 = phi i32 [ 0, %decode012.exit134 ], [ 1, %bb.aa ]
  %.val = phi i32 [ %.val172, %decode012.exit134 ], [ %spec.select.i130, %bb.aa ] ; 5 uses
  %i.sr = sub nsw i32 %.val113.i, %.val
  %i.ss = icmp slt i32 %i.sr, 2
  br i1 %i.ss, label %parse_mb_skip.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.st = lshr i32 %.val, 3
  %i.su = zext nneg i32 %i.st to i64
  %i.sv = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.su
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !83
  %i.sx = icmp slt i32 %.val, %i.np
  %i.sy = zext i1 %i.sx to i32
  %spec.select.i135 = add i32 %.val, %i.sy        ; 5 uses
  %i.sz = zext i8 %i.sw to i32
  %i.ta = and i32 %.val, 7
  %i.tb = shl nuw nsw i32 %i.sz, %i.ta
  %i.tc = lshr i32 %i.tb, 7
  store i32 %spec.select.i135, ptr %i.ff, align 8, !tbaa !81
  %i.td = and i32 %i.tc, 1                        ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 5476
  store i32 %i.td, ptr %i.te, align 4, !tbaa !89
  %i.tf = lshr i32 %spec.select.i135, 3
  %i.tg = zext nneg i32 %i.tf to i64
  %i.th = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.tg
  %i.ti = load i8, ptr %i.th, align 1, !tbaa !83
  %i.tj = icmp slt i32 %spec.select.i135, %i.np
  %i.tk = zext i1 %i.tj to i32
  %spec.select.i136 = add i32 %spec.select.i135, %i.tk
  %i.tl = zext i8 %i.ti to i32
  %i.tm = and i32 %spec.select.i135, 7
  %i.tn = shl nuw nsw i32 %i.tl, %i.tm
  %i.to = lshr i32 %i.tn, 7
  store i32 %spec.select.i136, ptr %i.ff, align 8, !tbaa !81
  %i.tp = and i32 %i.to, 1                        ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 5464
  store i32 %i.tp, ptr %i.tq, align 8, !tbaa !120
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 3788
  store i32 0, ptr %i.tr, align 4, !tbaa !91
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 3104 ; 2 uses
  %i.tt = load i32, ptr %i.ts, align 16, !tbaa !92
  %i.tu = xor i32 %i.tt, 1
  store i32 %i.tu, ptr %i.ts, align 16, !tbaa !92
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !93 ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 524
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !94
  %i.tz = and i32 %i.ty, 1
  %.not103 = icmp eq i32 %i.tz, 0
  br i1 %.not103, label %.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 5468
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !88
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 5472
  %i.ud = load i32, ptr %i.uc, align 16, !tbaa !87
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 6328
  %i.uf = load i32, ptr %i.ue, align 8, !tbaa !118
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 6300
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !119
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.tw, i32 noundef 48, ptr noundef nonnull @.str.1, i32 noundef %i.ub, i32 noundef %i.ud, i32 noundef %i.td, i32 noundef %i.tp, i32 noundef %.sink170219, i32 noundef %i.om, i32 noundef %i.pl, i32 noundef %i.uf, i32 noundef %i.uh, i32 noundef %i.ov, i32 noundef 0) #9
  br label %.thread

.thread:                                          ; preds = %bb.ae, %bb.af, %bb.j, %bb.k
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 5488
  store i32 0, ptr %i.ui, align 16, !tbaa !121
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 5492
  store i32 0, ptr %i.uj, align 4, !tbaa !122
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 6292
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !80
  %.not109 = icmp eq i32 %i.ul, 0
  br i1 %.not109, label %parse_mb_skip.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %.thread
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 5504
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.uo = load ptr, ptr %i.un, align 16, !tbaa !123
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 4384
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 3108 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 3112 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.ut = load i32, ptr %i.us, align 8, !tbaa !95 ; 2 uses
  %i.uu = shl nsw i32 %i.ut, 1
  %i.uv = add nsw i32 %i.ut, -1
  %i.uw = or i32 %i.uv, 1
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 4452
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !124
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 3776
  %i.va = load i32, ptr %i.uz, align 16, !tbaa !125
  %i.vb = tail call i32 @ff_intrax8_decode_picture(ptr noundef nonnull %i.um, ptr noundef %i.uo, ptr noundef nonnull %i.up, ptr noundef nonnull %i.uq, ptr noundef nonnull %i.ur, i32 noundef %i.uu, i32 noundef %i.uw, i32 noundef %i.uy, i32 noundef %i.va) #9 ; 0 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 3912
  %i.vd = load i32, ptr %i.uq, align 4, !tbaa !126
  %i.ve = ashr i32 %i.vd, 1
  %i.vf = add nsw i32 %i.ve, -1
  %i.vg = load i32, ptr %i.ur, align 8, !tbaa !127
  %i.vh = ashr i32 %i.vg, 1
  %i.vi = add nsw i32 %i.vh, -1
  tail call void @ff_er_add_slice(ptr noundef nonnull %i.vc, i32 noundef 0, i32 noundef 0, i32 noundef %i.vf, i32 noundef %i.vi, i32 noundef 112) #9
  br label %parse_mb_skip.exit.thread

parse_mb_skip.exit.thread:                        ; preds = %bb.q, %bb.s, %bb.p, %bb.n, %._crit_edge176.i, %bb.m, %bb.ad, %.thread, %bb.i, %bb.ag
  %.1 = phi i32 [ 1, %bb.ag ], [ -1094995529, %bb.i ], [ 0, %.thread ], [ -1094995529, %bb.ad ], [ -1094995529, %bb.m ], [ -1094995529, %bb.p ], [ -1094995529, %._crit_edge176.i ], [ -1094995529, %bb.n ], [ -1094995529, %bb.s ], [ -1094995529, %bb.q ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 3) i32 @decode012(ptr nofree noundef captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !81   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !82     ; 2 uses
  %i.d = lshr i32 %i.b, 3
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !83
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !84   ; 2 uses
  %i.j = icmp slt i32 %i.b, %i.i
  %i.k = zext i1 %i.j to i32
  %spec.select.i = add i32 %i.b, %i.k             ; 5 uses
  %i.l = zext i8 %i.g to i32
  %i.m = and i32 %i.b, 7
  store i32 %spec.select.i, ptr %i.a, align 8, !tbaa !81
  %i.n = lshr exact i32 128, %i.m
  %i.o = and i32 %i.n, %i.l
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = lshr i32 %spec.select.i, 3
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !83
  %i.u = icmp slt i32 %spec.select.i, %i.i
  %i.v = zext i1 %i.u to i32
  %spec.select.i3 = add i32 %spec.select.i, %i.v
  %i.w = zext i8 %i.t to i32
  %i.x = and i32 %spec.select.i, 7
  %i.y = shl nuw nsw i32 %i.w, %i.x
  %i.z = lshr i32 %i.y, 7
  store i32 %spec.select.i3, ptr %i.a, align 8, !tbaa !81
  %i.aa = and i32 %i.z, 1
  %i.ab = add nuw nsw i32 %i.aa, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.ab, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare i32 @ff_intrax8_decode_picture(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @ff_er_add_slice(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @wmv2_decode_init(ptr noundef %0) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128  ; 15 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.b, i64 6224
  store ptr @ff_put_pixels8x8_c, ptr %1, align 16, !tbaa !56
  %2 = getelementptr inbounds nuw i8, ptr %i.b, i64 6232
  store ptr @put_mspel8_mc10_c, ptr %2, align 8, !tbaa !56
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 6240
  store ptr @put_mspel8_mc20_c, ptr %3, align 16, !tbaa !56
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 6248
  store ptr @put_mspel8_mc30_c, ptr %4, align 8, !tbaa !56
  %5 = getelementptr inbounds nuw i8, ptr %i.b, i64 6256
  store ptr @put_mspel8_mc02_c, ptr %5, align 16, !tbaa !56
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 6264
  store ptr @put_mspel8_mc12_c, ptr %6, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 6272
  store ptr @put_mspel8_mc22_c, ptr %i.c, align 16, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 6280
  store ptr @put_mspel8_mc32_c, ptr %i.d, align 8, !tbaa !56
  %i.e = tail call i32 @ff_msmpeg4_decode_init(ptr noundef %0) #9 ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4512
  store ptr @wmv2_decode_picture_header, ptr %i.g, align 16, !tbaa !129
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4520
  store ptr @wmv2_decode_mb, ptr %i.h, align 8, !tbaa !130
  tail call fastcc void @decode_ext_header(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #10
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 5504
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 4688
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 388
  %i.l = load i32, ptr %i.k, align 4, !tbaa !131
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.n = load i32, ptr %i.m, align 8, !tbaa !132
  %i.o = tail call i32 @ff_intrax8_common_init(ptr noundef nonnull %0, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, i32 noundef %i.l, i32 noundef %i.n) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.o, %bb.b ], [ %i.e, %bb.a ]
  ret i32 %.0
}

declare i32 @ff_h263_decode_frame(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @wmv2_decode_end(ptr noundef %0) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5504
  tail call void @ff_intrax8_common_end(ptr noundef nonnull %i.c) #9
  %i.d = tail call i32 @ff_mpv_decode_close(ptr noundef %0) #9
  ret i32 %i.d
}

declare void @ff_simple_idct84_add(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @ff_simple_idct48_add(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ff_msmpeg4_decode_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 101) i32 @wmv2_decode_picture_header(ptr nofree noundef captures(none) initializes((1272, 1284)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4392 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !81   ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !82   ; 3 uses
  %i.e = lshr i32 %i.c, 3
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !84   ; 3 uses
  %i.k = icmp slt i32 %i.c, %i.j
  %i.l = zext i1 %i.k to i32
  %spec.select.i = add i32 %i.c, %i.l             ; 5 uses
  %i.m = zext i8 %i.h to i32
  %i.n = and i32 %i.c, 7
  %i.o = shl nuw nsw i32 %i.m, %i.n
  %i.p = lshr i32 %i.o, 7
  store i32 %spec.select.i, ptr %i.b, align 8, !tbaa !81
  %i.q = and i32 %i.p, 1                          ; 2 uses
  %i.r = add nuw nsw i32 %i.q, 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 2 uses
  store i32 %i.r, ptr %i.s, align 16, !tbaa !75
  %i.t = icmp eq i32 %i.q, 0
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = lshr i32 %spec.select.i, 3
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.v
  %i.x = load i32, ptr %i.w, align 1, !tbaa !83
  %i.y = tail call i32 @llvm.bswap.i32(i32 %i.x)
  %i.z = and i32 %spec.select.i, 7
  %i.aa = shl i32 %i.y, %i.z
  %i.ab = lshr i32 %i.aa, 25
  %i.ac = add i32 %spec.select.i, 7
  %i.ad = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.ac)
  store i32 %i.ad, ptr %i.b, align 8, !tbaa !81
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !93
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.af, i32 noundef 48, ptr noundef nonnull @.str.4, i32 noundef %i.ab) #9
  %.pre = load i32, ptr %i.b, align 8, !tbaa !81
  %.pre38 = load i32, ptr %i.i, align 16, !tbaa !84
  %.pre39 = load ptr, ptr %i.a, align 16, !tbaa !82
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ag = phi ptr [ %.pre39, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.ah = phi i32 [ %.pre38, %bb.b ], [ %i.j, %bb.a ] ; 3 uses
  %i.ai = phi i32 [ %.pre, %bb.b ], [ %spec.select.i, %bb.a ] ; 3 uses
  %i.aj = lshr i32 %i.ai, 3
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 1, !tbaa !83
  %i.an = tail call i32 @llvm.bswap.i32(i32 %i.am)
  %i.ao = and i32 %i.ai, 7
  %i.ap = shl i32 %i.an, %i.ao
  %i.aq = lshr i32 %i.ap, 27                      ; 3 uses
  %i.ar = add i32 %i.ai, 5
  %i.as = tail call i32 @llvm.umin.i32(i32 %i.ah, i32 %i.ar) ; 4 uses
  store i32 %i.as, ptr %i.b, align 8, !tbaa !81
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1272
  store i32 %i.aq, ptr %i.at, align 8, !tbaa !95
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1276
  store i32 %i.aq, ptr %i.au, align 4, !tbaa !133
  %i.av = icmp eq i32 %i.aq, 0
  br i1 %i.av, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = load i32, ptr %i.s, align 16, !tbaa !75
  %.not = icmp eq i32 %i.aw, 1
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = lshr i32 %i.as, 3
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 1, !tbaa !83
  %i.bb = tail call i32 @llvm.bswap.i32(i32 %i.ba)
  %i.bc = and i32 %i.as, 7
  %i.bd = shl i32 %i.bb, %i.bc                    ; 2 uses
  %.not30 = icmp sgt i32 %i.bd, -1
  br i1 %.not30, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = add i32 %i.as, 2
  %i.bf = tail call i32 @llvm.umin.i32(i32 %i.ah, i32 %i.be)
  %i.bg = icmp samesign ugt i32 %i.bd, -1073741825
  %.in.v = select i1 %i.bg, i64 388, i64 392
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.bh = load i32, ptr %.in, align 4, !tbaa !72
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.sroa.5.0 = phi i32 [ %i.bf, %bb.f ], [ %i.bu, %bb.h ] ; 3 uses
  %.0 = phi i32 [ %i.bh, %bb.f ], [ %i.bx, %bb.h ] ; 4 uses
  %i.bi = icmp sgt i32 %.0, 0
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bj = tail call i32 @llvm.umin.i32(i32 %.0, i32 25) ; 4 uses
  %i.bk = lshr i32 %.sroa.5.0, 3
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 1, !tbaa !83
  %i.bo = tail call i32 @llvm.bswap.i32(i32 %i.bn)
  %i.bp = and i32 %.sroa.5.0, 7
  %i.bq = shl i32 %i.bo, %i.bp
  %i.br = sub nuw nsw i32 32, %i.bj
  %i.bs = lshr i32 %i.bq, %i.br
  %i.bt = add i32 %i.bj, %.sroa.5.0
  %i.bu = tail call i32 @llvm.umin.i32(i32 %i.ah, i32 %i.bt)
  %i.bv = add nuw nsw i32 %i.bs, 1
  %i.bw = shl nuw nsw i32 1, %i.bj
  %.not31 = icmp eq i32 %i.bv, %i.bw
  %i.bx = sub nsw i32 %.0, %i.bj
  br i1 %.not31, label %bb.g, label %.thread

bb.i:                                             ; preds = %bb.g
  %.not32.not = icmp eq i32 %.0, 0
  br i1 %.not32.not, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.h, %bb.i, %bb.e, %bb.d
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i, %.thread
  %.129 = phi i32 [ 100, %bb.i ], [ 0, %.thread ], [ -1094995529, %bb.c ]
  ret i32 %.129
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @wmv2_decode_mb(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 6292
  %i.e = load i32, ptr %i.d, align 4, !tbaa !80
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.g = load i32, ptr %i.f, align 16, !tbaa !75
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3112
  %i.l = load i32, ptr %i.k, align 8, !tbaa !127
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.n = load i32, ptr %i.m, align 4, !tbaa !78
end_hunk_0
