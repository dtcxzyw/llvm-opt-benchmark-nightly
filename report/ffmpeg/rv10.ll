Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/rv10?download=true
inline.NumInlined: 38
inline.NumDeleted: 13
begin_hunk_0_@rv10_decode_frame:bb.a
  %or.cond199.i = select i1 %i.ry, i1 true, i1 %.not153.i
  br i1 %or.cond199.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.14, i32 noundef %i.aw, i32 noundef %i.qp) #8
  %.val158.pre.i = load i32, ptr %i.av, align 8, !tbaa !9
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.val158.i = phi i32 [ %.val163.i, %bb.cs ], [ %.val158.pre.i, %bb.ct ]
  %.1129.ph.i = phi i32 [ %.0128196.i, %bb.cs ], [ %i.qp, %bb.ct ] ; 3 uses
  %.2.ph.i = phi i32 [ %.1.ph.i, %bb.cs ], [ 0, %bb.ct ]
  %i.rz = icmp slt i32 %.1129.ph.i, %.val158.i
  br i1 %i.rz, label %.thread181.i, label %bb.cv

.thread181.i:                                     ; preds = %bb.cu, %bb.cp
  %i.sa = load ptr, ptr %i.qh, align 8, !tbaa !16
  %i.sb = load i32, ptr %i.oi, align 4, !tbaa !80
  %i.sc = load i32, ptr %i.ol, align 8, !tbaa !81
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.sa, i32 noundef 16, ptr noundef nonnull @.str.15, i32 noundef %i.sb, i32 noundef %i.sc) #8
  br label %.thread

bb.cv:                                            ; preds = %bb.cu
  %i.sd = load i32, ptr %i.ba, align 16, !tbaa !78
  %.not154.i = icmp eq i32 %i.sd, 3
  br i1 %.not154.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  tail call void @ff_h263_update_motion_val(ptr noundef nonnull %i.an) #8
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  tail call void @ff_mpv_reconstruct_mb(ptr noundef nonnull %i.an, ptr noundef nonnull %i.qq) #8
  %i.se = load i32, ptr %i.qr, align 4, !tbaa !87
  %.not155.i = icmp eq i32 %i.se, 0
  br i1 %.not155.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  tail call void @ff_h263_loop_filter(ptr noundef nonnull %i.an) #8
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.sf = load i32, ptr %i.oi, align 4, !tbaa !80
  %i.sg = add nsw i32 %i.sf, 1                    ; 3 uses
  store i32 %i.sg, ptr %i.oi, align 4, !tbaa !80
  %i.sh = load i32, ptr %i.ok, align 4, !tbaa !82
  %i.si = icmp eq i32 %i.sg, %i.sh
  br i1 %i.si, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  store i32 0, ptr %i.oi, align 4, !tbaa !80
  %i.sj = load i32, ptr %i.ol, align 8, !tbaa !81
  %i.sk = add nsw i32 %i.sj, 1
  store i32 %i.sk, ptr %i.ol, align 8, !tbaa !81
  tail call void @ff_init_block_index(ptr noundef nonnull %i.an) #8
  %.pre212.i = load i32, ptr %i.oi, align 4, !tbaa !80
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.sl = phi i32 [ %.pre212.i, %bb.da ], [ %i.sg, %bb.cz ] ; 2 uses
  %i.sm = load i32, ptr %i.qs, align 16, !tbaa !103
  %i.sn = icmp eq i32 %i.sl, %i.sm
  br i1 %i.sn, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  store i32 0, ptr %i.qt, align 4, !tbaa !114
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.so = icmp eq i32 %.2.ph.i, -2
  br i1 %i.so, label %rv10_decode_packet.exit.loopexit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.sp = load i32, ptr %i.qg, align 8, !tbaa !115 ; 2 uses
  %i.sq = add nsw i32 %i.sp, -1
  store i32 %i.sq, ptr %i.qg, align 8, !tbaa !115
  %i.sr = icmp sgt i32 %i.sp, 1
  br i1 %i.sr, label %bb.cp, label %rv10_decode_packet.exit.loopexit, !llvm.loop !119

rv10_decode_packet.exit.loopexit:                 ; preds = %bb.de, %bb.dd
  %i.ss = icmp sgt i32 %.1129.ph.i, %i.aw
  %i.st = select i1 %i.ss, i32 %i.v, i32 %.093166
  br label %bb.df

bb.df:                                            ; preds = %.._crit_edge_crit_edge.i, %rv10_decode_packet.exit.loopexit
  %i.su = phi i32 [ %.pre213.i, %.._crit_edge_crit_edge.i ], [ %i.sl, %rv10_decode_packet.exit.loopexit ]
  %.2130.i = phi i32 [ %.093166, %.._crit_edge_crit_edge.i ], [ %i.st, %rv10_decode_packet.exit.loopexit ] ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.an, i64 3912
  %i.sw = load i32, ptr %i.qa, align 4, !tbaa !102
  %i.sx = add nsw i32 %i.su, -1
  %i.sy = load i32, ptr %i.ol, align 8, !tbaa !81
  tail call void @ff_er_add_slice(ptr noundef nonnull %i.sv, i32 noundef %i.pz, i32 noundef %i.sw, i32 noundef %i.sx, i32 noundef %i.sy, i32 noundef 112) #8
  %i.sz = add nsw i32 %.2130.i, 1
  %.not110.not = icmp slt i32 %.2130.i, %i.i
  br i1 %.not110.not, label %bb.e, label %bb.dg, !llvm.loop !121

bb.dg:                                            ; preds = %bb.df
  %i.ta = getelementptr inbounds nuw i8, ptr %i.d, i64 1008
  %i.tb = getelementptr inbounds nuw i8, ptr %i.d, i64 1056 ; 3 uses
  %i.tc = load ptr, ptr %i.tb, align 16, !tbaa !122
  %.not111 = icmp eq ptr %i.tc, null
  br i1 %.not111, label %bb.dr, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.td = getelementptr inbounds nuw i8, ptr %i.d, i64 3112
  %i.te = load i32, ptr %i.td, align 8, !tbaa !123
  %i.tf = getelementptr inbounds nuw i8, ptr %i.d, i64 392
  %i.tg = load i32, ptr %i.tf, align 8, !tbaa !124
  %.not112 = icmp slt i32 %i.te, %i.tg
  br i1 %.not112, label %bb.dr, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.th = getelementptr inbounds nuw i8, ptr %i.d, i64 3912
  tail call void @ff_er_frame_end(ptr noundef nonnull %i.th, ptr noundef null) #8
  tail call void @ff_mpv_frame_end(ptr noundef nonnull %i.d) #8
  %i.ti = getelementptr inbounds nuw i8, ptr %i.d, i64 1280
  %i.tj = load i32, ptr %i.ti, align 16, !tbaa !125
  %i.tk = icmp eq i32 %i.tj, 3
  br i1 %i.tk, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.tl = getelementptr inbounds nuw i8, ptr %i.d, i64 3776
  %i.tm = load i32, ptr %i.tl, align 16, !tbaa !126
  %.not113 = icmp eq i32 %i.tm, 0
  br i1 %.not113, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.tn = load ptr, ptr %i.tb, align 16, !tbaa !122
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !106
  %i.tp = tail call i32 @av_frame_ref(ptr noundef %1, ptr noundef %i.to) #8 ; 2 uses
  %i.tq = icmp slt i32 %i.tp, 0
  br i1 %i.tq, label %.thread, label %.sink.split

bb.dl:                                            ; preds = %bb.dj
  %i.tr = getelementptr inbounds nuw i8, ptr %i.d, i64 816 ; 2 uses
  %i.ts = load ptr, ptr %i.tr, align 16, !tbaa !127 ; 2 uses
  %.not114 = icmp eq ptr %i.ts, null
  br i1 %.not114, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !106
  %i.tu = tail call i32 @av_frame_ref(ptr noundef %1, ptr noundef %i.tt) #8 ; 2 uses
  %i.tv = icmp slt i32 %i.tu, 0
  br i1 %i.tv, label %.thread, label %.sink.split

.sink.split:                                      ; preds = %bb.dm, %bb.dk
  %.sink326.in = phi ptr [ %i.tb, %bb.dk ], [ %i.tr, %bb.dm ] ; 2 uses
  %.sink326 = load ptr, ptr %.sink326.in, align 16, !tbaa !128
  tail call void @ff_print_debug_info(ptr noundef nonnull %i.d, ptr noundef %.sink326, ptr noundef %1) #8
  %.sink = load ptr, ptr %.sink326.in, align 16, !tbaa !128
  %i.tw = tail call i32 @ff_mpv_export_qp_table(ptr noundef nonnull %i.d, ptr noundef %1, ptr noundef %.sink, i32 noundef 0) #8 ; 0 uses
  br label %bb.dn

bb.dn:                                            ; preds = %.sink.split, %bb.dl
  %i.tx = getelementptr inbounds nuw i8, ptr %i.d, i64 816
  %i.ty = load ptr, ptr %i.tx, align 16, !tbaa !127
  %.not115 = icmp eq ptr %i.ty, null
  br i1 %.not115, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.tz = getelementptr inbounds nuw i8, ptr %i.d, i64 3776
  %i.ua = load i32, ptr %i.tz, align 16, !tbaa !126
  %.not116 = icmp eq i32 %i.ua, 0
  br i1 %.not116, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  store i32 1, ptr %2, align 4, !tbaa !60
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  tail call void @ff_mpv_unref_picture(ptr noundef nonnull %i.ta) #8
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dh, %bb.dg
  %i.ub = load i32, ptr %i.a, align 8, !tbaa !73
  br label %.thread

.thread:                                          ; preds = %.thread.i, %bb.cc, %bb.l, %bb.k, %bb.j, %bb.e, %rv10_decode_picture_header.exit.thread.thread190.i, %rv10_decode_picture_header.exit.thread.thread.i, %.thread181.i, %rv10_decode_picture_header.exit.thread.i, %bb.cb, %._crit_edge204.i, %bb.cj, %bb.dm, %bb.dk, %bb.a, %bb.dr, %bb.c
  %.296 = phi i32 [ %i.tp, %bb.dk ], [ -1094995529, %bb.c ], [ %i.tu, %bb.dm ], [ 0, %bb.a ], [ %i.ub, %bb.dr ], [ -1094995529, %.thread181.i ], [ -1094995529, %bb.cj ], [ -1094995529, %rv10_decode_picture_header.exit.thread.i ], [ -1094995529, %bb.cb ], [ -1094995529, %rv10_decode_picture_header.exit.thread.thread190.i ], [ -1094995529, %._crit_edge204.i ], [ -1094995529, %rv10_decode_picture_header.exit.thread.thread.i ], [ -1094995529, %bb.cc ], [ %i.pf, %.thread.i ], [ -1094995529, %bb.j ], [ -1094995529, %bb.k ], [ -1094995529, %bb.l ], [ -1094995529, %bb.e ]
  ret i32 %.296
}

declare i32 @ff_mpv_decode_close(ptr noundef) #2

declare void @ff_mpeg_flush(ptr noundef) #2

declare i32 @av_image_check_size(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_h263_decode_init(ptr noundef) local_unnamed_addr #2

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind optsize uwtable
define internal void @rv10_init_static() #3 {
vector.ph:
  tail call fastcc void @rv10_build_vlc(ptr noundef nonnull @rv_dc_lum, i32 noundef 1472, ptr noundef nonnull @rv_lum_len_count, i32 noundef 19) #11
  store <8 x i16> <i16 255, i16 18, i16 255, i16 18, i16 255, i16 18, i16 255, i16 18>, ptr getelementptr inbounds nuw (i8, ptr @rv_dc_lum, i64 2032), align 16, !tbaa !15
  tail call fastcc void @rv10_build_vlc(ptr noundef nonnull @rv_dc_chrom, i32 noundef 992, ptr noundef nonnull @rv_chrom_len_count, i32 noundef 17) #11
  store <2 x i16> <i16 255, i16 18>, ptr getelementptr inbounds nuw (i8, ptr @rv_dc_chrom, i64 2040), align 8, !tbaa !15
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc void @rv10_build_vlc(ptr noundef %0, i32 noundef range(i32 992, 1473) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 17, 20) %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca [1023 x i16], align 16            ; 4 uses
  %i.b = alloca [1023 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0284 = phi i32 [ 0, %bb.a ], [ %.129.lcssa, %._crit_edge ] ; 4 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr @rv_sym_run_len, i64 %indvars.iv ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !15
  %i.f = zext i8 %i.e to i32
  %i.g = add i32 %.0284, %i.f                     ; 2 uses
  %.not1 = icmp ugt i32 %.0284, %i.g
  br i1 %.not1, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.h = load i8, ptr %i.c, align 2, !tbaa !15
  %i.i = zext i8 %i.h to i16
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.129.lcssa = phi i32 [ %.0284, %bb.b ], [ %i.n, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !129

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0253 = phi i16 [ %i.j, %.lr.ph ], [ %i.i, %.lr.ph.preheader ] ; 2 uses
  %.1292 = phi i32 [ %i.n, %.lr.ph ], [ %.0284, %.lr.ph.preheader ] ; 2 uses
  %i.j = add i16 %.0253, -1
  %i.k = and i16 %.0253, 255
  %i.l = zext i32 %.1292 to i64
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.l
  store i16 %i.k, ptr %i.m, align 2, !tbaa !105
  %i.n = add i32 %.1292, 1                        ; 3 uses
  %.not = icmp ugt i32 %i.n, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !130

bb.c:                                             ; preds = %._crit_edge9
  call void @ff_vlc_init_table_from_lengths(ptr noundef %0, i32 noundef %1, i32 noundef 9, i32 noundef %.1.lcssa, ptr noundef nonnull %i.b, i32 noundef 1, ptr noundef nonnull %i.a, i32 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void

.preheader:                                       ; preds = %._crit_edge, %._crit_edge9
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %._crit_edge9 ], [ 0, %._crit_edge ] ; 3 uses
  %.02711 = phi i32 [ %.1.lcssa, %._crit_edge9 ], [ 0, %._crit_edge ] ; 5 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv20
  %i.p = load i16, ptr %i.o, align 2, !tbaa !105
  %i.q = zext i16 %i.p to i32                     ; 3 uses
  %i.r = add i32 %.02711, %i.q
  %i.s = icmp ult i32 %.02711, %i.r
  br i1 %i.s, label %.lr.ph8, label %._crit_edge9

.lr.ph8:                                          ; preds = %.preheader
  %i.t = trunc i64 %indvars.iv20 to i8
  %i.u = add nuw nsw i8 %i.t, 2
  %i.v = zext i32 %.02711 to i64
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.v
  %i.w = add nsw i32 %i.q, -1
  %i.x = zext i32 %i.w to i64
  %i.y = add nuw nsw i64 %i.x, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 %i.u, i64 %i.y, i1 false), !tbaa !15
  %i.z = add i32 %.02711, %i.q
  br label %._crit_edge9

._crit_edge9:                                     ; preds = %.lr.ph8, %.preheader
  %.1.lcssa = phi i32 [ %.02711, %.preheader ], [ %i.z, %.lr.ph8 ] ; 2 uses
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1 ; 2 uses
  %exitcond23.not = icmp eq i64 %indvars.iv.next21, 15
  br i1 %exitcond23.not, label %bb.c, label %.preheader, !llvm.loop !131
}

declare void @ff_vlc_init_table_from_lengths(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_er_frame_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ff_mpv_frame_end(ptr noundef) local_unnamed_addr #2

declare i32 @av_frame_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ff_print_debug_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_mpv_export_qp_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_mpv_unref_picture(ptr noundef) local_unnamed_addr #2

declare i32 @ff_mpv_frame_start(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ff_set_qscale(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_init_block_index(ptr noundef) local_unnamed_addr #2

declare i32 @ff_h263_decode_mb(ptr noundef) local_unnamed_addr #2

declare void @ff_h263_update_motion_val(ptr noundef) local_unnamed_addr #2

declare void @ff_mpv_reconstruct_mb(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ff_h263_loop_filter(ptr noundef) local_unnamed_addr #2

declare void @ff_er_add_slice(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_mpv_common_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_mul_q(i64, i64) local_unnamed_addr #4

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_mpv_common_init(ptr noundef) local_unnamed_addr #2

declare i32 @ff_h263_decode_mba(ptr noundef) local_unnamed_addr #2

declare void @ff_mpeg4_init_direct_mv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

declare void @ff_mpeg_er_frame_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }
attributes #10 = { noreturn nounwind }
attributes #11 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 8}
!10 = !{!"GetBitContext", !11, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!10, !6, i64 16}
!14 = !{!10, !11, i64 0}
!15 = !{!7, !7, i64 0}
!16 = !{!17, !21, i64 344}
!17 = !{!"H263DecContext", !18, i64 0, !10, i64 4384, !6, i64 4408, !6, i64 4412, !6, i64 4416, !6, i64 4420, !6, i64 4424, !6, i64 4428, !6, i64 4432, !6, i64 4436, !6, i64 4440, !6, i64 4444, !6, i64 4448, !6, i64 4452, !6, i64 4456, !6, i64 4460, !6, i64 4464, !6, i64 4468, !6, i64 4472, !6, i64 4476, !6, i64 4480, !7, i64 4484, !6, i64 4496, !7, i64 4500, !12, i64 4512, !12, i64 4520, !10, i64 4528, !7, i64 4552, !7, i64 4616, !7, i64 4688}
!18 = !{!"MpegEncContext", !19, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !7, i64 20, !6, i64 68, !20, i64 72, !20, i64 208, !21, i64 344, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !6, i64 408, !6, i64 412, !22, i64 416, !22, i64 424, !23, i64 432, !24, i64 440, !6, i64 496, !6, i64 500, !7, i64 504, !6, i64 760, !25, i64 768, !25, i64 888, !25, i64 1008, !28, i64 1128, !11, i64 1136, !11, i64 1144, !11, i64 1152, !11, i64 1160, !11, i64 1168, !28, i64 1176, !28, i64 1184, !28, i64 1192, !6, i64 1200, !11, i64 1208, !11, i64 1216, !11, i64 1224, !11, i64 1232, !29, i64 1240, !6, i64 1272, !6, i64 1276, !6, i64 1280, !6, i64 1284, !30, i64 1288, !31, i64 1320, !32, i64 1384, !33, i64 1768, !34, i64 1888, !35, i64 2656, !36, i64 2672, !28, i64 2688, !7, i64 2696, !6, i64 2728, !6, i64 2732, !7, i64 2736, !7, i64 2800, !7, i64 2816, !7, i64 2848, !6, i64 3104, !6, i64 3108, !6, i64 3112, !6, i64 3116, !7, i64 3120, !7, i64 3144, !7, i64 3168, !27, i64 3192, !7, i64 3200, !7, i64 3328, !7, i64 3456, !7, i64 3584, !6, i64 3712, !6, i64 3716, !6, i64 3720, !6, i64 3724, !6, i64 3728, !6, i64 3732, !6, i64 3736, !6, i64 3740, !22, i64 3744, !22, i64 3752, !37, i64 3760, !37, i64 3762, !37, i64 3764, !37, i64 3766, !6, i64 3768, !6, i64 3772, !6, i64 3776, !6, i64 3780, !6, i64 3784, !6, i64 3788, !6, i64 3792, !6, i64 3796, !7, i64 3800, !6, i64 3816, !6, i64 3820, !6, i64 3824, !6, i64 3828, !6, i64 3832, !6, i64 3836, !6, i64 3840, !6, i64 3844, !6, i64 3848, !6, i64 3852, !6, i64 3856, !6, i64 3860, !6, i64 3864, !6, i64 3868, !7, i64 3872, !6, i64 3880, !6, i64 3884, !12, i64 3888, !12, i64 3896, !6, i64 3904, !6, i64 3908, !38, i64 3912}
!19 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!20 = !{!"ScanTable", !11, i64 0, !7, i64 8, !7, i64 72}
!21 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!22 = !{!"long", !7, i64 0}
!23 = !{!"p1 _ZTS15AVRefStructPool", !12, i64 0}
!24 = !{!"BufferPoolContext", !23, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !23, i64 32, !6, i64 40, !6, i64 44, !6, i64 48}
!25 = !{!"MPVWorkPicture", !7, i64 0, !7, i64 24, !26, i64 48, !11, i64 56, !7, i64 64, !27, i64 80, !11, i64 88, !7, i64 96, !6, i64 112}
!26 = !{!"p1 _ZTS10MPVPicture", !12, i64 0}
!27 = !{!"p1 int", !12, i64 0}
!28 = !{!"p1 short", !12, i64 0}
!29 = !{!"ScratchpadContext", !11, i64 0, !11, i64 8, !7, i64 16, !6, i64 24}
!30 = !{!"BlockDSPContext", !12, i64 0, !12, i64 8, !7, i64 16}
!31 = !{!"H264ChromaContext", !7, i64 0, !7, i64 32}
!32 = !{!"HpelDSPContext", !7, i64 0, !7, i64 128, !7, i64 256, !7, i64 352}
!33 = !{!"IDCTDSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !7, i64 48, !6, i64 112, !6, i64 116}
!34 = !{!"QpelDSPContext", !7, i64 0, !7, i64 256, !7, i64 512}
!35 = !{!"VideoDSPContext", !12, i64 0, !12, i64 8}
!36 = !{!"H263DSPContext", !12, i64 0, !12, i64 8}
!37 = !{!"short", !7, i64 0}
!38 = !{!"ERContext", !21, i64 0, !12, i64 8, !27, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !22, i64 40, !22, i64 48, !7, i64 56, !6, i64 60, !11, i64 64, !11, i64 72, !7, i64 80, !11, i64 104, !11, i64 112, !7, i64 120, !39, i64 184, !39, i64 256, !39, i64 328, !7, i64 400, !7, i64 416, !37, i64 432, !37, i64 434, !6, i64 436, !6, i64 440, !12, i64 448, !12, i64 456}
!39 = !{!"ERPicture", !40, i64 0, !41, i64 8, !42, i64 16, !7, i64 24, !7, i64 40, !27, i64 56, !6, i64 64}
!40 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
end_hunk_0
