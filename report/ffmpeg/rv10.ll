Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/rv10?download=true
inline.NumInlined: 38
inline.NumDeleted: 13
begin_hunk_0_@rv10_decode_frame:bb.a
  br label %.thread

bb.cv:                                            ; preds = %bb.cu
  %i.sd = load i32, ptr %i.ba, align 16, !tbaa !82
  %.not154.i = icmp eq i32 %i.sd, 3
  br i1 %.not154.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  tail call void @ff_h263_update_motion_val(ptr noundef nonnull %i.an) #8
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  tail call void @ff_mpv_reconstruct_mb(ptr noundef nonnull %i.an, ptr noundef nonnull %i.qq) #8
  %i.se = load i32, ptr %i.qr, align 4, !tbaa !91
  %.not155.i = icmp eq i32 %i.se, 0
  br i1 %.not155.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  tail call void @ff_h263_loop_filter(ptr noundef nonnull %i.an) #8
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.sf = load i32, ptr %i.oi, align 4, !tbaa !84
  %i.sg = add nsw i32 %i.sf, 1                    ; 3 uses
  store i32 %i.sg, ptr %i.oi, align 4, !tbaa !84
  %i.sh = load i32, ptr %i.ok, align 4, !tbaa !86
  %i.si = icmp eq i32 %i.sg, %i.sh
  br i1 %i.si, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  store i32 0, ptr %i.oi, align 4, !tbaa !84
  %i.sj = load i32, ptr %i.ol, align 8, !tbaa !85
  %i.sk = add nsw i32 %i.sj, 1
  store i32 %i.sk, ptr %i.ol, align 8, !tbaa !85
  tail call void @ff_init_block_index(ptr noundef nonnull %i.an) #8
  %.pre212.i = load i32, ptr %i.oi, align 4, !tbaa !84
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.sl = phi i32 [ %.pre212.i, %bb.da ], [ %i.sg, %bb.cz ] ; 2 uses
  %i.sm = load i32, ptr %i.qs, align 16, !tbaa !107
  %i.sn = icmp eq i32 %i.sl, %i.sm
  br i1 %i.sn, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  store i32 0, ptr %i.qt, align 4, !tbaa !117
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.so = icmp eq i32 %.2.ph.i, -2
  br i1 %i.so, label %.loopexit.loopexit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.sp = load i32, ptr %i.qg, align 8, !tbaa !118 ; 2 uses
  %i.sq = add nsw i32 %i.sp, -1
  store i32 %i.sq, ptr %i.qg, align 8, !tbaa !118
  %i.sr = icmp sgt i32 %i.sp, 1
  br i1 %i.sr, label %bb.cp, label %.loopexit.loopexit, !llvm.loop !75

.loopexit.loopexit:                               ; preds = %bb.dd, %bb.de
  %i.ss = icmp samesign ugt i32 %.1129.ph.i, %i.aw
  %i.st = select i1 %i.ss, i32 %i.v, i32 %.093166
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.._crit_edge_crit_edge.i
  %i.su = phi i32 [ %.pre213.i, %.._crit_edge_crit_edge.i ], [ %i.sl, %.loopexit.loopexit ]
  %.2130.i = phi i32 [ %.093166, %.._crit_edge_crit_edge.i ], [ %i.st, %.loopexit.loopexit ] ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.an, i64 3912
  %i.sw = load i32, ptr %i.qa, align 4, !tbaa !106
  %i.sx = add nsw i32 %i.su, -1
  %i.sy = load i32, ptr %i.ol, align 8, !tbaa !85
  tail call void @ff_er_add_slice(ptr noundef nonnull %i.sv, i32 noundef %i.pz, i32 noundef %i.sw, i32 noundef %i.sx, i32 noundef %i.sy, i32 noundef 112) #8
  %i.sz = add nsw i32 %.2130.i, 1
  %.not110.not = icmp slt i32 %.2130.i, %i.i
  br i1 %.not110.not, label %bb.e, label %bb.df, !llvm.loop !76

bb.df:                                            ; preds = %.loopexit
  %i.ta = getelementptr inbounds nuw i8, ptr %i.d, i64 1008
  %i.tb = getelementptr inbounds nuw i8, ptr %i.d, i64 1056 ; 3 uses
  %i.tc = load ptr, ptr %i.tb, align 16, !tbaa !122
  %.not111 = icmp eq ptr %i.tc, null
  br i1 %.not111, label %bb.dq, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.td = getelementptr inbounds nuw i8, ptr %i.d, i64 3112
  %i.te = load i32, ptr %i.td, align 8, !tbaa !123
  %i.tf = getelementptr inbounds nuw i8, ptr %i.d, i64 392
  %i.tg = load i32, ptr %i.tf, align 8, !tbaa !124
  %.not112 = icmp slt i32 %i.te, %i.tg
  br i1 %.not112, label %bb.dq, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.th = getelementptr inbounds nuw i8, ptr %i.d, i64 3912
  tail call void @ff_er_frame_end(ptr noundef nonnull %i.th, ptr noundef null) #8
  tail call void @ff_mpv_frame_end(ptr noundef nonnull %i.d) #8
  %i.ti = getelementptr inbounds nuw i8, ptr %i.d, i64 1280
  %i.tj = load i32, ptr %i.ti, align 16, !tbaa !125
  %i.tk = icmp eq i32 %i.tj, 3
  br i1 %i.tk, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.tl = getelementptr inbounds nuw i8, ptr %i.d, i64 3776
  %i.tm = load i32, ptr %i.tl, align 16, !tbaa !126
  %.not113 = icmp eq i32 %i.tm, 0
  br i1 %.not113, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.tn = load ptr, ptr %i.tb, align 16, !tbaa !122
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !111
  %i.tp = tail call i32 @av_frame_ref(ptr noundef %1, ptr noundef %i.to) #8 ; 2 uses
  %i.tq = icmp slt i32 %i.tp, 0
  br i1 %i.tq, label %.thread, label %.sink.split

bb.dk:                                            ; preds = %bb.di
  %i.tr = getelementptr inbounds nuw i8, ptr %i.d, i64 816 ; 2 uses
  %i.ts = load ptr, ptr %i.tr, align 16, !tbaa !127 ; 2 uses
  %.not114 = icmp eq ptr %i.ts, null
  br i1 %.not114, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !111
  %i.tu = tail call i32 @av_frame_ref(ptr noundef %1, ptr noundef %i.tt) #8 ; 2 uses
  %i.tv = icmp slt i32 %i.tu, 0
  br i1 %i.tv, label %.thread, label %.sink.split

.sink.split:                                      ; preds = %bb.dl, %bb.dj
  %.sink326.in = phi ptr [ %i.tb, %bb.dj ], [ %i.tr, %bb.dl ] ; 2 uses
  %.sink326 = load ptr, ptr %.sink326.in, align 16, !tbaa !128
  tail call void @ff_print_debug_info(ptr noundef nonnull %i.d, ptr noundef %.sink326, ptr noundef %1) #8
  %.sink = load ptr, ptr %.sink326.in, align 16, !tbaa !128
  %i.tw = tail call i32 @ff_mpv_export_qp_table(ptr noundef nonnull %i.d, ptr noundef %1, ptr noundef %.sink, i32 noundef 0) #8 ; 0 uses
  br label %bb.dm

bb.dm:                                            ; preds = %.sink.split, %bb.dk
  %i.tx = getelementptr inbounds nuw i8, ptr %i.d, i64 816
  %i.ty = load ptr, ptr %i.tx, align 16, !tbaa !127
  %.not115 = icmp eq ptr %i.ty, null
  br i1 %.not115, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.tz = getelementptr inbounds nuw i8, ptr %i.d, i64 3776
  %i.ua = load i32, ptr %i.tz, align 16, !tbaa !126
  %.not116 = icmp eq i32 %i.ua, 0
  br i1 %.not116, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  store i32 1, ptr %2, align 4, !tbaa !58
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  tail call void @ff_mpv_unref_picture(ptr noundef nonnull %i.ta) #8
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.dg, %bb.df
  %i.ub = load i32, ptr %i.a, align 8, !tbaa !78
  br label %.thread

.thread:                                          ; preds = %.thread.i, %bb.cc, %bb.l, %bb.k, %bb.j, %bb.e, %rv10_decode_picture_header.exit.thread.thread190.i, %rv10_decode_picture_header.exit.thread.thread.i, %.thread181.i, %rv10_decode_picture_header.exit.thread.i, %bb.cb, %._crit_edge204.i, %bb.cj, %bb.dl, %bb.dj, %bb.a, %bb.dq, %bb.c
  %.296 = phi i32 [ %i.tp, %bb.dj ], [ -1094995529, %bb.c ], [ %i.tu, %bb.dl ], [ 0, %bb.a ], [ %i.ub, %bb.dq ], [ -1094995529, %bb.cj ], [ -1094995529, %rv10_decode_picture_header.exit.thread.i ], [ -1094995529, %bb.cb ], [ -1094995529, %rv10_decode_picture_header.exit.thread.thread190.i ], [ -1094995529, %._crit_edge204.i ], [ -1094995529, %rv10_decode_picture_header.exit.thread.thread.i ], [ -1094995529, %.thread181.i ], [ -1094995529, %bb.l ], [ -1094995529, %bb.cc ], [ %i.pf, %.thread.i ], [ -1094995529, %bb.j ], [ -1094995529, %bb.k ], [ -1094995529, %bb.e ]
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
  %indvars.iv.a = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.a, %._crit_edge ] ; 2 uses
  %.0284 = phi i32 [ 0, %bb.a ], [ %.129.lcssa, %._crit_edge ] ; 4 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr @rv_sym_run_len, i64 %indvars.iv.a ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !15
  %i.f = zext i8 %i.e to i32
  %4 = add i32 %.0284, %i.f                       ; 2 uses
  %.not1 = icmp ugt i32 %.0284, %4
  br i1 %.not1, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.g = load i8, ptr %i.c, align 2, !tbaa !15
  %i.h = zext i8 %i.g to i16
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.129.lcssa = phi i32 [ %.0284, %bb.b ], [ %7, %.lr.ph ]
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond.not.a = icmp eq i64 %indvars.iv.next.a, %wide.trip.count
  br i1 %exitcond.not.a, label %.preheader, label %bb.b, !llvm.loop !129

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0253 = phi i16 [ %i.i, %.lr.ph ], [ %i.h, %.lr.ph.preheader ] ; 2 uses
  %.1292 = phi i32 [ %7, %.lr.ph ], [ %.0284, %.lr.ph.preheader ] ; 2 uses
  %i.i = add i16 %.0253, -1
  %i.j = and i16 %.0253, 255
  %5 = zext i32 %.1292 to i64
  %6 = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %5
  store i16 %i.j, ptr %6, align 2, !tbaa !65
  %7 = add i32 %.1292, 1                          ; 3 uses
  %.not = icmp ugt i32 %7, %4
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !130

bb.c:                                             ; preds = %._crit_edge9
  call void @ff_vlc_init_table_from_lengths(ptr noundef %0, i32 noundef %1, i32 noundef 9, i32 noundef %.1.lcssa, ptr noundef nonnull %i.b, i32 noundef 1, ptr noundef nonnull %i.a, i32 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void

.preheader:                                       ; preds = %._crit_edge, %._crit_edge9
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %._crit_edge9 ], [ 0, %._crit_edge ] ; 3 uses
  %.02711 = phi i32 [ %.1.lcssa, %._crit_edge9 ], [ 0, %._crit_edge ] ; 5 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv20
  %i.l = load i16, ptr %i.k, align 2, !tbaa !65
  %i.m = zext i16 %i.l to i32                     ; 3 uses
  %i.n = add i32 %.02711, %i.m
  %i.o = icmp ult i32 %.02711, %i.n
  br i1 %i.o, label %.lr.ph8, label %._crit_edge9

.lr.ph8:                                          ; preds = %.preheader
  %i.p = trunc i64 %indvars.iv20 to i8
  %i.q = add nuw nsw i8 %i.p, 2
  %i.r = zext i32 %.02711 to i64
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.r
  %i.s = add nsw i32 %i.m, -1
  %i.t = zext i32 %i.s to i64
  %i.u = add nuw nsw i64 %i.t, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 %i.q, i64 %i.u, i1 false), !tbaa !15
  %i.v = add i32 %.02711, %i.m
  br label %._crit_edge9

._crit_edge9:                                     ; preds = %.lr.ph8, %.preheader
  %.1.lcssa = phi i32 [ %.02711, %.preheader ], [ %i.v, %.lr.ph8 ] ; 2 uses
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
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"GetBitContext", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!12 = !{!11, !6, i64 8}
!13 = !{!11, !6, i64 16}
!14 = !{!11, !10, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!17 = !{!"ScanTable", !10, i64 0, !5, i64 8, !5, i64 72}
!18 = !{!"p1 _ZTS14AVCodecContext", !9, i64 0}
!19 = !{!"long", !5, i64 0}
!20 = !{!"p1 _ZTS15AVRefStructPool", !9, i64 0}
!21 = !{!"BufferPoolContext", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !6, i64 40, !6, i64 44, !6, i64 48}
!22 = !{!"p1 _ZTS10MPVPicture", !9, i64 0}
!23 = !{!"p1 int", !9, i64 0}
!24 = !{!"MPVWorkPicture", !5, i64 0, !5, i64 24, !22, i64 48, !10, i64 56, !5, i64 64, !23, i64 80, !10, i64 88, !5, i64 96, !6, i64 112}
!25 = !{!"p1 short", !9, i64 0}
!26 = !{!"ScratchpadContext", !10, i64 0, !10, i64 8, !5, i64 16, !6, i64 24}
!27 = !{!"BlockDSPContext", !9, i64 0, !9, i64 8, !5, i64 16}
!28 = !{!"H264ChromaContext", !5, i64 0, !5, i64 32}
!29 = !{!"HpelDSPContext", !5, i64 0, !5, i64 128, !5, i64 256, !5, i64 352}
!30 = !{!"IDCTDSPContext", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !5, i64 48, !6, i64 112, !6, i64 116}
!31 = !{!"QpelDSPContext", !5, i64 0, !5, i64 256, !5, i64 512}
!32 = !{!"VideoDSPContext", !9, i64 0, !9, i64 8}
!33 = !{!"H263DSPContext", !9, i64 0, !9, i64 8}
!34 = !{!"short", !5, i64 0}
!35 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!36 = !{!"p1 _ZTS11ThreadFrame", !9, i64 0}
!37 = !{!"p1 _ZTS14ThreadProgress", !9, i64 0}
!38 = !{!"ERPicture", !35, i64 0, !36, i64 8, !37, i64 16, !5, i64 24, !5, i64 40, !23, i64 56, !6, i64 64}
!39 = !{!"ERContext", !18, i64 0, !9, i64 8, !23, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !19, i64 40, !19, i64 48, !5, i64 56, !6, i64 60, !10, i64 64, !10, i64 72, !5, i64 80, !10, i64 104, !10, i64 112, !5, i64 120, !38, i64 184, !38, i64 256, !38, i64 328, !5, i64 400, !5, i64 416, !34, i64 432, !34, i64 434, !6, i64 436, !6, i64 440, !9, i64 448, !9, i64 456}
!40 = !{!"MpegEncContext", !16, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !5, i64 20, !6, i64 68, !17, i64 72, !17, i64 208, !18, i64 344, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !6, i64 408, !6, i64 412, !19, i64 416, !19, i64 424, !20, i64 432, !21, i64 440, !6, i64 496, !6, i64 500, !5, i64 504, !6, i64 760, !24, i64 768, !24, i64 888, !24, i64 1008, !25, i64 1128, !10, i64 1136, !10, i64 1144, !10, i64 1152, !10, i64 1160, !10, i64 1168, !25, i64 1176, !25, i64 1184, !25, i64 1192, !6, i64 1200, !10, i64 1208, !10, i64 1216, !10, i64 1224, !10, i64 1232, !26, i64 1240, !6, i64 1272, !6, i64 1276, !6, i64 1280, !6, i64 1284, !27, i64 1288, !28, i64 1320, !29, i64 1384, !30, i64 1768, !31, i64 1888, !32, i64 2656, !33, i64 2672, !25, i64 2688, !5, i64 2696, !6, i64 2728, !6, i64 2732, !5, i64 2736, !5, i64 2800, !5, i64 2816, !5, i64 2848, !6, i64 3104, !6, i64 3108, !6, i64 3112, !6, i64 3116, !5, i64 3120, !5, i64 3144, !5, i64 3168, !23, i64 3192, !5, i64 3200, !5, i64 3328, !5, i64 3456, !5, i64 3584, !6, i64 3712, !6, i64 3716, !6, i64 3720, !6, i64 3724, !6, i64 3728, !6, i64 3732, !6, i64 3736, !6, i64 3740, !19, i64 3744, !19, i64 3752, !34, i64 3760, !34, i64 3762, !34, i64 3764, !34, i64 3766, !6, i64 3768, !6, i64 3772, !6, i64 3776, !6, i64 3780, !6, i64 3784, !6, i64 3788, !6, i64 3792, !6, i64 3796, !5, i64 3800, !6, i64 3816, !6, i64 3820, !6, i64 3824, !6, i64 3828, !6, i64 3832, !6, i64 3836, !6, i64 3840, !6, i64 3844, !6, i64 3848, !6, i64 3852, !6, i64 3856, !6, i64 3860, !6, i64 3864, !6, i64 3868, !5, i64 3872, !6, i64 3880, !6, i64 3884, !9, i64 3888, !9, i64 3896, !6, i64 3904, !6, i64 3908, !39, i64 3912}
!41 = !{!"H263DecContext", !40, i64 0, !11, i64 4384, !6, i64 4408, !6, i64 4412, !6, i64 4416, !6, i64 4420, !6, i64 4424, !6, i64 4428, !6, i64 4432, !6, i64 4436, !6, i64 4440, !6, i64 4444, !6, i64 4448, !6, i64 4452, !6, i64 4456, !6, i64 4460, !6, i64 4464, !6, i64 4468, !6, i64 4472, !6, i64 4476, !6, i64 4480, !5, i64 4484, !6, i64 4496, !5, i64 4500, !9, i64 4512, !9, i64 4520, !11, i64 4528, !5, i64 4552, !5, i64 4616, !5, i64 4688}
!42 = !{!41, !18, i64 344}
!43 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!44 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!45 = !{!"AVRational", !6, i64 0, !6, i64 4}
!46 = !{!"float", !5, i64 0}
!47 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!48 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!49 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!50 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!51 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!52 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!53 = !{!"any p2 pointer", !9, i64 0}
!54 = !{!"p2 _ZTS15AVFrameSideData", !53, i64 0}
!55 = !{!"AVCodecContext", !16, i64 0, !6, i64 8, !6, i64 12, !43, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !44, i64 40, !9, i64 48, !19, i64 56, !6, i64 64, !6, i64 68, !10, i64 72, !6, i64 80, !45, i64 84, !45, i64 92, !45, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !45, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !46, i64 204, !46, i64 208, !46, i64 212, !46, i64 216, !46, i64 220, !46, i64 224, !46, i64 228, !46, i64 232, !46, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !25, i64 288, !25, i64 296, !25, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !47, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !46, i64 428, !46, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !48, i64 456, !19, i64 464, !19, i64 472, !46, i64 480, !46, i64 484, !6, i64 488, !6, i64 492, !10, i64 496, !10, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !49, i64 536, !9, i64 544, !50, i64 552, !50, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !51, i64 728, !10, i64 736, !6, i64 744, !6, i64 748, !10, i64 752, !10, i64 760, !10, i64 768, !52, i64 776, !6, i64 784, !6, i64 788, !19, i64 792, !6, i64 800, !6, i64 804, !19, i64 808, !9, i64 816, !19, i64 824, !23, i64 832, !6, i64 840, !54, i64 848, !6, i64 856, !6, i64 860}
!56 = !{!55, !9, i64 32}
!57 = !{!55, !6, i64 80}
!58 = !{!6, !6, i64 0}
!59 = !{!55, !10, i64 72}
!60 = !{!"RVDecContext", !41, i64 0, !6, i64 5456, !6, i64 5460, !6, i64 5464}
!61 = !{!60, !6, i64 5456}
!62 = !{!41, !6, i64 4496}
!63 = !{!41, !6, i64 3776}
!64 = !{!55, !6, i64 524}
!65 = !{!34, !34, i64 0}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!55, !6, i64 120}
!68 = !{!55, !6, i64 124}
!69 = !{!41, !6, i64 4420}
!70 = !{!55, !6, i64 24}
!71 = !{!41, !6, i64 4456}
!72 = !{!41, !10, i64 1152}
!73 = !{!41, !6, i64 3724}
!74 = !{!55, !6, i64 172}
!75 = distinct !{!75, !66}
!76 = distinct !{!76, !66}
!77 = !{!"AVPacket", !50, i64 0, !19, i64 8, !19, i64 16, !10, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !52, i64 48, !6, i64 56, !19, i64 64, !19, i64 72, !9, i64 80, !50, i64 88, !45, i64 96}
!78 = !{!77, !6, i64 32}
!79 = !{!77, !10, i64 24}
!80 = !{!11, !6, i64 12}
!81 = !{!41, !6, i64 368}
!82 = !{!41, !6, i64 1280}
!83 = !{!41, !6, i64 1272}
!84 = !{!41, !6, i64 3108}
!85 = !{!41, !6, i64 3112}
!86 = !{!41, !6, i64 388}
end_hunk_0
