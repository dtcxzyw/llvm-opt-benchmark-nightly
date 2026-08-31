Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ffmpeg?download=true
inline.NumInlined: 28
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@check_avoptions_used:bb.a
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %2, i32 noundef 24, ptr noundef nonnull @.str.5, ptr noundef %i.w, ptr noundef nonnull %spec.select) #17
  br label %bb.i

.thread:                                          ; preds = %bb.b, %bb.g
  %.1.ph = phi i32 [ -22, %bb.g ], [ -12, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %.loopexit

bb.i:                                             ; preds = %bb.e, %.lr.ph, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.aa = call ptr @av_dict_iterate(ptr noundef %0, ptr noundef nonnull %i.h) #17 ; 2 uses
  %.not31 = icmp eq ptr %i.aa, null
  br i1 %.not31, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.i, %bb.a, %.thread
  %.2 = phi i32 [ %.1.ph, %.thread ], [ 0, %bb.a ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.2
}

declare ptr @avcodec_get_class() local_unnamed_addr #1

declare ptr @avformat_get_class() local_unnamed_addr #1

declare ptr @av_dict_iterate(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @av_dict_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noalias ptr @av_strdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

declare ptr @av_opt_find(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @av_freep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @update_benchmark(ptr nofree noundef readonly captures(address_is_null) %0, ...) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.rusage, align 8             ; 7 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %i.b = load i32, ptr @do_benchmark_all, align 4, !tbaa !14
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @av_gettime_relative() #17, !noalias !107 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17, !noalias !107
  %i.d = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %1) #17, !noalias !107 ; 0 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !110, !noalias !107
  %i.f = mul nsw i64 %i.e, 1000000
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !113, !noalias !107
  %i.i = add nsw i64 %i.f, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !114, !noalias !107
  %i.l = mul nsw i64 %i.k, 1000000
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !115, !noalias !107
  %i.o = add nsw i64 %i.l, %i.n                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17, !noalias !107
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %.not2 = icmp eq ptr %0, null
  br i1 %.not2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.p = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef nonnull %0, ptr noundef nonnull %2) #17 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.q = load i64, ptr @current_time.1, align 8, !tbaa !116
  %i.r = sub nsw i64 %i.i, %i.q
  %i.s = load i64, ptr @current_time.2, align 8, !tbaa !118
  %i.t = sub nsw i64 %i.o, %i.s
  %i.u = load i64, ptr @current_time.0, align 8, !tbaa !119
  %i.v = sub nsw i64 %i.c, %i.u
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 32, ptr noundef nonnull @.str.6, i64 noundef %i.r, i64 noundef %i.t, i64 noundef %i.v, ptr noundef nonnull %i.a) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 %i.c, ptr @current_time.0, align 8, !tbaa !94
  store i64 %i.i, ptr @current_time.1, align 8, !tbaa !94
  store i64 %i.o, ptr @current_time.2, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #8

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #8

; Function Attrs: nounwind uwtable
define range(i32 -1414092868, -1414092869) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 {
bb.a:
  %2 = alloca %struct.rusage, align 8             ; 4 uses
  %i.a = alloca [64 x i8], align 1                ; 5 uses
  %3 = alloca %struct.rusage, align 8             ; 7 uses
  %4 = alloca %struct.termios, align 4            ; 5 uses
  %5 = alloca %struct.timeval, align 8            ; 4 uses
  %6 = alloca %struct.fd_set, align 8             ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %struct.termios, align 4            ; 5 uses
  %8 = alloca %struct.timeval, align 8            ; 5 uses
  %9 = alloca %struct.fd_set, align 8             ; 6 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca [4096 x i8], align 16             ; 6 uses
  %i.e = alloca [64 x i8], align 16               ; 6 uses
  %i.f = alloca [256 x i8], align 16              ; 6 uses
  %i.g = alloca [256 x i8], align 16              ; 7 uses
  %i.h = alloca double, align 8                   ; 6 uses
  %i.i = alloca i64, align 8                      ; 9 uses
  %10 = alloca %struct.rusage, align 8            ; 7 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #17
  tail call void @init_dynload() #17
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !120
  %i.l = tail call i32 @setvbuf(ptr noundef %i.k, ptr noundef null, i32 noundef 2, i64 noundef 0) #17 ; 0 uses
  tail call void @av_log_set_flags(i32 noundef 1) #17
  tail call void @parse_loglevel(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @options) #17
  tail call void @avdevice_register_all() #17
  %i.m = tail call i32 @avformat_network_init() #17 ; 0 uses
  tail call void @show_banner(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @options) #17
  %i.n = tail call ptr @sch_alloc() #17           ; 7 uses
  store ptr %i.n, ptr %i.j, align 8, !tbaa !121
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = tail call i32 @ffmpeg_parse_options(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %i.n) #17 ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr @nb_output_files, align 4, !tbaa !14
  %i.r = icmp slt i32 %i.q, 1                     ; 2 uses
  %i.s = load i32, ptr @nb_input_files, align 4
  %i.t = icmp eq i32 %i.s, 0
  %or.cond = select i1 %i.r, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @show_usage() #17
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 24, ptr noundef nonnull @.str.7, ptr noundef nonnull @program_name) #17
  br label %.thread

bb.e:                                             ; preds = %bb.c
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 8, ptr noundef nonnull @.str.8) #17
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.u = tail call i64 @av_gettime_relative() #17, !noalias !123 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17, !noalias !123
  %i.v = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %10) #17, !noalias !123 ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !115, !noalias !123
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !114, !noalias !123
  %i.ab = load i64, ptr %i.w, align 8, !tbaa !113, !noalias !123
  %i.ac = load i64, ptr %10, align 8, !tbaa !110, !noalias !123
  %i.ad = mul nsw i64 %i.aa, 1000000
  %i.ae = mul nsw i64 %i.ac, 1000000
  %i.af = add nsw i64 %i.ad, %i.z                 ; 2 uses
  %i.ag = add nsw i64 %i.ae, %i.ab                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17, !noalias !123
  store i64 %i.u, ptr @current_time.0, align 8, !tbaa !94
  store i64 %i.ag, ptr @current_time.1, align 8, !tbaa !94
  store i64 %i.af, ptr @current_time.2, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #17
  store i64 0, ptr %i.i, align 8, !tbaa !94
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 32, ptr noundef nonnull @.str.14) #17
  %i.ah = load i32, ptr @nb_input_files, align 4, !tbaa !14 ; 4 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i.i.i, label %._crit_edge.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g
  %i.aj = load ptr, ptr @input_files, align 8, !tbaa !63 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !65 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  %i.am = load i32, ptr %i.al, align 8, !tbaa !66
  %.not18.peel.i.i.i = icmp sgt i32 %i.am, 0
  br i1 %.not18.peel.i.i.i, label %ist_iter.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %exitcond.peel.not.i.i.i = icmp eq i32 %i.ah, 1
  br i1 %exitcond.peel.not.i.i.i, label %._crit_edge.i.i, label %.peel.next.i.preheader.i.i

.peel.next.i.preheader.i.i:                       ; preds = %bb.h
  %zext.i.i = zext nneg i32 %i.ah to i64
  br label %.peel.next.i.i.i

bb.i:                                             ; preds = %.peel.next.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next.i.i.i, %zext.i.i
  br i1 %exitcond, label %._crit_edge.i.i, label %.peel.next.i.i.i, !llvm.loop !67

.peel.next.i.i.i:                                 ; preds = %bb.i, %.peel.next.i.preheader.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.i ], [ 1, %.peel.next.i.preheader.i.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i.i.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !65 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !66
  %.not18.i.i.i = icmp sgt i32 %i.aq, 0
  br i1 %.not18.i.i.i, label %ist_iter.exit.i.i, label %bb.i

ist_iter.exit.i.i:                                ; preds = %.peel.next.i.i.i, %.lr.ph.i.i.i
  %.lcssa.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %i.ao, %.peel.next.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa.i.i.i, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !68
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !69 ; 2 uses
  %.not132.i.i = icmp eq ptr %i.at, null
  br i1 %.not132.i.i, label %._crit_edge.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %ist_iter.exit.i.i, %ist_iter.exit105.i.i
  %i.au = phi i32 [ %i.bp, %ist_iter.exit105.i.i ], [ %i.ah, %ist_iter.exit.i.i ]
  %.059133.i.i = phi ptr [ %i.cm, %ist_iter.exit105.i.i ], [ %i.at, %ist_iter.exit.i.i ] ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.059133.i.i, i64 88 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !126
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i.i, label %.thread.i.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.059133.i.i, i64 80 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.059133.i.i, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.059133.i.i, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %.059133.i.i, i64 56
  br label %bb.n

._crit_edge.i.i:                                  ; preds = %bb.i, %ist_iter.exit105.i.i, %bb.l, %.thread.i.i.i, %bb.m, %ist_iter.exit.i.i, %bb.h, %bb.g
  %i.bc = load i32, ptr @nb_output_files, align 4, !tbaa !14 ; 3 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.i82.i.i, label %print_stream_maps.exit.i

.lr.ph.i82.i.i:                                   ; preds = %._crit_edge.i.i
  %i.be = load ptr, ptr @output_files, align 8, !tbaa !40 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !42 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !43
  %.not18.peel.i83.i.i = icmp sgt i32 %i.bh, 0
  br i1 %.not18.peel.i83.i.i, label %ost_iter.exit.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i82.i.i
  %exitcond.peel.not.i84.i.i = icmp eq i32 %i.bc, 1
  br i1 %exitcond.peel.not.i84.i.i, label %print_stream_maps.exit.i, label %.peel.next.i85.preheader.i.i

.peel.next.i85.preheader.i.i:                     ; preds = %bb.j
  %zext146.i.i = zext nneg i32 %i.bc to i64
  br label %.peel.next.i85.i.i

bb.k:                                             ; preds = %.peel.next.i85.i.i
  %indvars.iv.next.i88.i.i = add nuw nsw i64 %indvars.iv.i86.i.i, 1 ; 2 uses
  %exitcond79 = icmp eq i64 %indvars.iv.next.i88.i.i, %zext146.i.i
  br i1 %exitcond79, label %print_stream_maps.exit.i, label %.peel.next.i85.i.i, !llvm.loop !44

.peel.next.i85.i.i:                               ; preds = %bb.k, %.peel.next.i85.preheader.i.i
  %indvars.iv.i86.i.i = phi i64 [ %indvars.iv.next.i88.i.i, %bb.k ], [ 1, %.peel.next.i85.preheader.i.i ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i86.i.i
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !42 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !43
  %.not18.i87.i.i = icmp sgt i32 %i.bl, 0
  br i1 %.not18.i87.i.i, label %ost_iter.exit.i.i, label %bb.k

ost_iter.exit.i.i:                                ; preds = %.peel.next.i85.i.i, %.lr.ph.i82.i.i
  %.lcssa.i92.i.i = phi ptr [ %i.bf, %.lr.ph.i82.i.i ], [ %i.bj, %.peel.next.i85.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.lcssa.i92.i.i, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !47
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !48 ; 2 uses
  %.not68134.i.i = icmp eq ptr %i.bo, null
  br i1 %.not68134.i.i, label %print_stream_maps.exit.i, label %.lr.ph136.i.i

.thread.i.loopexit.i.i:                           ; preds = %bb.t
  %.pre.i.i = load i32, ptr @nb_input_files, align 4, !tbaa !14
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.thread.i.loopexit.i.i, %.preheader.i.i
  %i.bp = phi i32 [ %.pre.i.i, %.thread.i.loopexit.i.i ], [ %i.au, %.preheader.i.i ] ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.059133.i.i, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !50
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !57 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.bp
  br i1 %i.bu, label %.lr.ph.i94.i.i, label %._crit_edge.i.i

.lr.ph.i94.i.i:                                   ; preds = %.thread.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.059133.i.i, i64 16
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !62
  %i.bx = add nsw i32 %i.bw, 1                    ; 2 uses
  %i.by = load ptr, ptr @input_files, align 8, !tbaa !63 ; 2 uses
  %i.bz = sext i32 %i.bt to i64                   ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !65 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 72
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !66
  %.not18.peel.i95.i.i = icmp slt i32 %i.bx, %i.cd
  br i1 %.not18.peel.i95.i.i, label %ist_iter.exit105.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i94.i.i
  %indvars.iv.next.peel.i.i.i = add nsw i64 %i.bz, 1 ; 2 uses
  %lftr.wideiv.peel.i.i.i = trunc nsw i64 %indvars.iv.next.peel.i.i.i to i32
  %exitcond.peel.not.i96.i.i = icmp eq i32 %i.bp, %lftr.wideiv.peel.i.i.i
  br i1 %exitcond.peel.not.i96.i.i, label %._crit_edge.i.i, label %.peel.next.i97.i.i

bb.m:                                             ; preds = %.peel.next.i97.i.i
  %indvars.iv.next.i100.i.i = add nsw i64 %indvars.iv.i98.i.i, 1 ; 2 uses
  %lftr.wideiv.i101.i.i = trunc i64 %indvars.iv.next.i100.i.i to i32
  %exitcond.not.i102.i.i = icmp eq i32 %i.bp, %lftr.wideiv.i101.i.i
  br i1 %exitcond.not.i102.i.i, label %._crit_edge.i.i, label %.peel.next.i97.i.i, !llvm.loop !67

.peel.next.i97.i.i:                               ; preds = %bb.l, %bb.m
  %indvars.iv.i98.i.i = phi i64 [ %indvars.iv.next.i100.i.i, %bb.m ], [ %indvars.iv.next.peel.i.i.i, %bb.l ] ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.by, i64 %indvars.iv.i98.i.i
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !65 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 72
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !66
  %.not18.i99.i.i = icmp sgt i32 %i.ch, 0
  br i1 %.not18.i99.i.i, label %ist_iter.exit105.i.i, label %bb.m

ist_iter.exit105.i.i:                             ; preds = %.peel.next.i97.i.i, %.lr.ph.i94.i.i
  %.01224.lcssa.i.i.i = phi i32 [ %i.bx, %.lr.ph.i94.i.i ], [ 0, %.peel.next.i97.i.i ]
  %.lcssa.i104.i.i = phi ptr [ %i.cb, %.lr.ph.i94.i.i ], [ %i.cf, %.peel.next.i97.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.lcssa.i104.i.i, i64 64
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !68
  %i.ck = sext i32 %.01224.lcssa.i.i.i to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !69 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.preheader.i.i, !llvm.loop !127

bb.n:                                             ; preds = %bb.t, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.t ] ; 4 uses
  %i.cn = load ptr, ptr %i.ay, align 8, !tbaa !128
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv.i.i
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !129
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !131
  %i.cr = call i32 @filtergraph_is_simple(ptr noundef %i.cq) #17
  %.not79.i.i = icmp eq i32 %i.cr, 0
  br i1 %.not79.i.i, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.cs = load ptr, ptr %i.az, align 8, !tbaa !50
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !57
  %i.cv = load i32, ptr %i.ba, align 8, !tbaa !62
  %i.cw = load ptr, ptr %i.bb, align 8, !tbaa !134 ; 2 uses
  %.not80.i.i = icmp eq ptr %i.cw, null
  br i1 %.not80.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !135
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cy = phi ptr [ %i.cx, %bb.p ], [ @.str.16, %bb.o ]
  %i.cz = load ptr, ptr %i.ay, align 8, !tbaa !128
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.i.i
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !129
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !138
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 32, ptr noundef nonnull @.str.15, i32 noundef %i.cu, i32 noundef %i.cv, ptr noundef %i.cy, ptr noundef %i.dd) #17
  %i.de = load i32, ptr @nb_filtergraphs, align 4, !tbaa !14
  %i.df = icmp sgt i32 %i.de, 1
  br i1 %i.df, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dg = load ptr, ptr %i.ay, align 8, !tbaa !128
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv.i.i
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !129
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !131
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !139
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 32, ptr noundef nonnull @.str.17, i32 noundef %i.dl) #17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 32, ptr noundef nonnull @.str.10) #17
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.dm = load i32, ptr %i.av, align 8, !tbaa !126
  %i.dn = sext i32 %i.dm to i64
  %i.do = icmp slt i64 %indvars.iv.next.i.i, %i.dn
  br i1 %i.do, label %bb.n, label %.thread.i.loopexit.i.i, !llvm.loop !143

.lr.ph136.i.i:                                    ; preds = %ost_iter.exit.i.i, %ost_iter.exit123.i.i
  %.057135.i.i = phi ptr [ %i.hh, %ost_iter.exit123.i.i ], [ %i.bo, %ost_iter.exit.i.i ] ; 13 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.057135.i.i, i64 192
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !144 ; 2 uses
  %.not69.i.i = icmp eq ptr %i.dq, null
  br i1 %.not69.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph136.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.057135.i.i, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !35
  %i.dv = getelementptr inbounds nuw i8, ptr %.057135.i.i, i64 24
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !39
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 32, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.dq, i32 noundef %i.du, i32 noundef %i.dw) #17
  br label %.thread.i107.i.i

bb.v:                                             ; preds = %.lr.ph136.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.057135.i.i, i64 184 ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !145 ; 2 uses
  %.not70.i.i = icmp eq ptr %i.dy, null
  br i1 %.not70.i.i, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !146
  %i.eb = call i32 @filtergraph_is_simple(ptr noundef %i.ea) #17
  %.not71.i.i = icmp eq i32 %i.eb, 0
  br i1 %.not71.i.i, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.ec = load ptr, ptr %i.dx, align 8, !tbaa !145
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !148
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 32, ptr noundef nonnull @.str.19, ptr noundef %i.ee) #17
  %i.ef = load i32, ptr @nb_filtergraphs, align 4, !tbaa !14
  %i.eg = icmp sgt i32 %i.ef, 1
  br i1 %i.eg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.eh = load ptr, ptr %i.dx, align 8, !tbaa !145
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !146
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !139
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 32, ptr noundef nonnull @.str.17, i32 noundef %i.el) #17
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.em = getelementptr inbounds nuw i8, ptr %.057135.i.i, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !16
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !35
  %i.eq = getelementptr inbounds nuw i8, ptr %.057135.i.i, i64 24
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !39
  %i.es = getelementptr inbounds nuw i8, ptr %.057135.i.i, i64 48
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !149
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !150
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !153
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !135
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 32, ptr noundef nonnull @.str.20, i32 noundef %i.ep, i32 noundef %i.er, ptr noundef %i.ey) #17
  br label %.thread.i107.i.i

bb.aa:                                            ; preds = %bb.w, %bb.v
  %i.ez = getelementptr inbounds nuw i8, ptr %.057135.i.i, i64 32 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !162 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !50
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
end_hunk_0
begin_hunk_1_@main:bb.a
  br i1 %.not2168.i, label %.lr.ph.i, label %.thread.i

.lr.ph.i:                                         ; preds = %bb.aq
  %i.ho = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hr = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %check_keyboard_interaction.exit.thread.i, %.lr.ph.i
  %i.hs = call i64 @av_gettime_relative() #17     ; 4 uses
  %i.ht = load volatile i32, ptr @received_nb_signals, align 4, !tbaa !14
  %.not22.i = icmp eq i32 %i.ht, 0
  br i1 %.not22.i, label %bb.as, label %.thread.i

bb.as:                                            ; preds = %bb.ar
  %i.hu = load i32, ptr @stdin_interaction, align 4, !tbaa !14
  %.not23.i = icmp eq i32 %i.hu, 0
  br i1 %.not23.i, label %check_keyboard_interaction.exit.thread.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hv = load i64, ptr @check_keyboard_interaction.last_time, align 8, !tbaa !94
  %i.hw = sub nsw i64 %i.hs, %i.hv
  %i.hx = icmp sgt i64 %i.hw, 99999
  br i1 %i.hx, label %bb.au, label %check_keyboard_interaction.exit.thread.i

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ho, i8 0, i64 120, i1 false), !tbaa !94
  store i64 1, ptr %9, align 8, !tbaa !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.hy = call i32 @select(i32 noundef 1, ptr noundef nonnull %9, ptr noundef null, ptr noundef null, ptr noundef nonnull %8) #17
  %i.hz = icmp sgt i32 %i.hy, 0
  br i1 %i.hz, label %select.unfold.i.i, label %.thread60.i.i

.thread60.i.i:                                    ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  store i64 %i.hs, ptr @check_keyboard_interaction.last_time, align 8, !tbaa !94
  br label %check_keyboard_interaction.exit.thread.i

select.unfold.i.i:                                ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.ia = call i64 @read(i32 noundef 0, ptr noundef nonnull %i.c, i64 noundef 1) #17
  %i.ib = trunc i64 %i.ia to i32                  ; 2 uses
  %i.ic = icmp eq i32 %i.ib, 1
  %i.id = load i8, ptr %i.c, align 1
  %i.ie = zext i8 %i.id to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %spec.select.i.i = select i1 %i.ic, i32 %i.ie, i32 %i.ib ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  store i64 %i.hs, ptr @check_keyboard_interaction.last_time, align 8, !tbaa !94
  switch i32 %spec.select.i.i, label %bb.ax [
    i32 113, label %check_keyboard_interaction.exit.i
    i32 43, label %bb.av
    i32 45, label %bb.aw
  ]

bb.av:                                            ; preds = %select.unfold.i.i
  %i.if = call i32 @av_log_get_level() #17
  %i.ig = add nsw i32 %i.if, 10
  call void @av_log_set_level(i32 noundef %i.ig) #17
  br label %check_keyboard_interaction.exit.thread.i

bb.aw:                                            ; preds = %select.unfold.i.i
  %i.ih = call i32 @av_log_get_level() #17
  %i.ii = add nsw i32 %i.ih, -10
  call void @av_log_set_level(i32 noundef %i.ii) #17
  br label %check_keyboard_interaction.exit.thread.i

bb.ax:                                            ; preds = %select.unfold.i.i
  %i.ij = icmp eq i32 %spec.select.i.i, 67        ; 2 uses
  switch i32 %spec.select.i.i, label %check_keyboard_interaction.exit.thread.i [
    i32 99, label %bb.ay
    i32 67, label %bb.ay
    i32 63, label %bb.bp
  ]

bb.ay:                                            ; preds = %bb.ax, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.g, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  %i.ik = load ptr, ptr @stderr, align 8, !tbaa !120
  %i.il = call i64 @fwrite(ptr nonnull @.str.26, i64 62, i64 1, ptr %i.ik) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.im = call i32 @tcgetattr(i32 noundef 0, ptr noundef nonnull %7) #17
  %i.in = icmp eq i32 %i.im, 0
  br i1 %i.in, label %bb.az, label %set_tty_echo.exit.i.i

bb.az:                                            ; preds = %bb.ay
  %i.io = load i32, ptr %i.hp, align 4, !tbaa !167
  %.sink.i.i.i = or i32 %i.io, 8
  store i32 %.sink.i.i.i, ptr %i.hp, align 4, !tbaa !167
  %i.ip = call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, ptr noundef nonnull %7) #17 ; 0 uses
  br label %set_tty_echo.exit.i.i

set_tty_echo.exit.i.i:                            ; preds = %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.outer

.outer:                                           ; preds = %bb.bd, %set_tty_echo.exit.i.i
  %.033.i.i.ph = phi i32 [ %i.jb, %bb.bd ], [ 0, %set_tty_echo.exit.i.i ] ; 4 uses
  %i.iq = icmp samesign ult i32 %.033.i.i.ph, 4095
  br label %bb.ba

bb.ba:                                            ; preds = %.outer, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.hq, i8 0, i64 120, i1 false), !tbaa !94
  store i64 1, ptr %6, align 8, !tbaa !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.ir = call i32 @select(i32 noundef 1, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef nonnull %5) #17
  %i.is = icmp sgt i32 %i.ir, 0
  br i1 %i.is, label %bb.bb, label %read_key.exit42.i.i

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.it = call i64 @read(i32 noundef 0, ptr noundef nonnull %i.b, i64 noundef 1) #17
  %i.iu = trunc i64 %i.it to i32                  ; 2 uses
  %i.iv = icmp eq i32 %i.iu, 1
  %i.iw = load i8, ptr %i.b, align 1
  %i.ix = zext i8 %i.iw to i32
  %.07.i41.i.i = select i1 %i.iv, i32 %i.ix, i32 %i.iu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %read_key.exit42.i.i

read_key.exit42.i.i:                              ; preds = %bb.bb, %bb.ba
  %.1.i40.i.i = phi i32 [ %.07.i41.i.i, %bb.bb ], [ -1, %bb.ba ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br i1 %i.iq, label %switch.early.test.i.i, label %.critedge.i.i

switch.early.test.i.i:                            ; preds = %read_key.exit42.i.i
  switch i32 %.1.i40.i.i, label %bb.bc [
    i32 13, label %.critedge.i.i
    i32 10, label %.critedge.i.i
  ]

bb.bc:                                            ; preds = %switch.early.test.i.i
  %i.iy = icmp sgt i32 %.1.i40.i.i, 0
  br i1 %i.iy, label %bb.bd, label %bb.ba, !llvm.loop !169

bb.bd:                                            ; preds = %bb.bc
  %i.iz = zext nneg i32 %.033.i.i.ph to i64
  %i.ja = trunc i32 %.1.i40.i.i to i8
  %i.jb = add nuw nsw i32 %.033.i.i.ph, 1
  %i.jc = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.iz
  store i8 %i.ja, ptr %i.jc, align 1, !tbaa !9
  br label %.outer, !llvm.loop !169

.critedge.i.i:                                    ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %read_key.exit42.i.i
  %i.jd = zext nneg i32 %.033.i.i.ph to i64
  %i.je = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.jd
  store i8 0, ptr %i.je, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.jf = call i32 @tcgetattr(i32 noundef 0, ptr noundef nonnull %4) #17
  %i.jg = icmp eq i32 %i.jf, 0
  br i1 %i.jg, label %bb.be, label %set_tty_echo.exit44.i.i

bb.be:                                            ; preds = %.critedge.i.i
  %i.jh = load i32, ptr %i.hr, align 4, !tbaa !167
  %i.ji = and i32 %i.jh, -9
  store i32 %i.ji, ptr %i.hr, align 4, !tbaa !167
  %i.jj = call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) #17 ; 0 uses
  br label %set_tty_echo.exit44.i.i

set_tty_echo.exit44.i.i:                          ; preds = %bb.be, %.critedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.jk = load ptr, ptr @stderr, align 8, !tbaa !120
  %fputc.i.i = call i32 @fputc(i32 10, ptr %i.jk) ; 0 uses
  %i.jl = icmp sgt i32 %.1.i40.i.i, 0
  br i1 %i.jl, label %bb.bf, label %bb.bo

bb.bf:                                            ; preds = %set_tty_echo.exit44.i.i
  %i.jm = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.e, ptr noundef nonnull %i.h, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #17 ; 2 uses
  %i.jn = icmp sgt i32 %i.jm, 2
  br i1 %i.jn, label %bb.bg, label %bb.bo

bb.bg:                                            ; preds = %bb.bf
  %i.jo = load double, ptr %i.h, align 8, !tbaa !170
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 48, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.e, double noundef %i.jo, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #17
  %i.jp = load i32, ptr @nb_output_files, align 4, !tbaa !14 ; 4 uses
  %i.jq = icmp sgt i32 %i.jp, 0
  br i1 %i.jq, label %.lr.ph.i.i27.i, label %.preheader.i24.i

.lr.ph.i.i27.i:                                   ; preds = %bb.bg
  %i.jr = load ptr, ptr @output_files, align 8, !tbaa !40 ; 2 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !42 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 32
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !43
  %.not18.peel.i.i28.i = icmp sgt i32 %i.ju, 0
  br i1 %.not18.peel.i.i28.i, label %ost_iter.exit.i36.i, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i.i27.i
  %exitcond.peel.not.i.i29.i = icmp eq i32 %i.jp, 1
  br i1 %exitcond.peel.not.i.i29.i, label %.preheader.i24.i, label %.peel.next.i.preheader.i30.i

.peel.next.i.preheader.i30.i:                     ; preds = %bb.bh
  %zext.i31.i = zext nneg i32 %i.jp to i64
  br label %.peel.next.i.i30.i

bb.bi:                                            ; preds = %.peel.next.i.i30.i
  %indvars.iv.next.i.i33.i = add nuw nsw i64 %indvars.iv.i.i31.i, 1 ; 2 uses
  %exitcond81 = icmp eq i64 %indvars.iv.next.i.i33.i, %zext.i31.i
  br i1 %exitcond81, label %.preheader.i24.i, label %.peel.next.i.i30.i, !llvm.loop !44

.peel.next.i.i30.i:                               ; preds = %bb.bi, %.peel.next.i.preheader.i30.i
  %indvars.iv.i.i31.i = phi i64 [ %indvars.iv.next.i.i33.i, %bb.bi ], [ 1, %.peel.next.i.preheader.i30.i ] ; 2 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %indvars.iv.i.i31.i
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !42 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 32
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !43
  %.not18.i.i32.i = icmp sgt i32 %i.jy, 0
  br i1 %.not18.i.i32.i, label %ost_iter.exit.i36.i, label %bb.bi

ost_iter.exit.i36.i:                              ; preds = %.peel.next.i.i30.i, %.lr.ph.i.i27.i
  %.lcssa.i.i37.i = phi ptr [ %i.js, %.lr.ph.i.i27.i ], [ %i.jw, %.peel.next.i.i30.i ]
  %i.jz = getelementptr inbounds nuw i8, ptr %.lcssa.i.i37.i, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !47
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !48 ; 2 uses
  %.not68.i38.i = icmp eq ptr %i.kb, null
  br i1 %.not68.i38.i, label %.preheader.i24.i, label %.lr.ph.i39.i

.lr.ph.i39.i:                                     ; preds = %ost_iter.exit.i36.i
  %i.kc = zext i1 %i.ij to i32
  br label %bb.bj

.preheader.i24.i:                                 ; preds = %bb.bi, %ost_iter.exit57.i.i, %bb.bl, %.thread.i.i41.i, %bb.bm, %ost_iter.exit.i36.i, %bb.bh, %bb.bg
  %i.kd = load i32, ptr @nb_filtergraphs, align 4, !tbaa !14
  %i.ke = icmp sgt i32 %i.kd, 0
  br i1 %i.ke, label %.lr.ph71.i.i, label %.loopexit.i.i

.lr.ph71.i.i:                                     ; preds = %.preheader.i24.i
  %i.kf = zext i1 %i.ij to i32
  br label %bb.bn

bb.bj:                                            ; preds = %ost_iter.exit57.i.i, %.lr.ph.i39.i
  %i.kg = phi i32 [ %i.jp, %.lr.ph.i39.i ], [ %i.kk, %ost_iter.exit57.i.i ]
  %.069.i.i = phi ptr [ %i.kb, %.lr.ph.i39.i ], [ %i.lh, %ost_iter.exit57.i.i ] ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.069.i.i, i64 176
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !171 ; 2 uses
  %.not39.i.i = icmp eq ptr %i.ki, null
  br i1 %.not39.i.i, label %.thread.i.i41.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kj = load double, ptr %i.h, align 8, !tbaa !170
  call void @fg_send_command(ptr noundef nonnull %i.ki, double noundef %i.kj, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, i32 noundef %i.kc) #17
  %.pre.i40.i = load i32, ptr @nb_output_files, align 4, !tbaa !14
  br label %.thread.i.i41.i

.thread.i.i41.i:                                  ; preds = %bb.bk, %bb.bj
  %i.kk = phi i32 [ %i.kg, %bb.bj ], [ %.pre.i40.i, %bb.bk ] ; 4 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.069.i.i, i64 16
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !16
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ko = load i32, ptr %i.kn, align 8, !tbaa !35 ; 2 uses
  %i.kp = icmp slt i32 %i.ko, %i.kk
  br i1 %i.kp, label %.lr.ph.i46.i.i, label %.preheader.i24.i

.lr.ph.i46.i.i:                                   ; preds = %.thread.i.i41.i
  %i.kq = getelementptr inbounds nuw i8, ptr %.069.i.i, i64 24
  %i.kr = load i32, ptr %i.kq, align 8, !tbaa !39
  %i.ks = add nsw i32 %i.kr, 1                    ; 2 uses
  %i.kt = load ptr, ptr @output_files, align 8, !tbaa !40 ; 2 uses
  %i.ku = sext i32 %i.ko to i64                   ; 2 uses
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.kt, i64 %i.ku
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !42 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 32
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !43
  %.not18.peel.i47.i.i = icmp slt i32 %i.ks, %i.ky
  br i1 %.not18.peel.i47.i.i, label %ost_iter.exit57.i.i, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph.i46.i.i
  %indvars.iv.next.peel.i.i42.i = add nsw i64 %i.ku, 1 ; 2 uses
  %lftr.wideiv.peel.i.i43.i = trunc nsw i64 %indvars.iv.next.peel.i.i42.i to i32
  %exitcond.peel.not.i48.i.i = icmp eq i32 %i.kk, %lftr.wideiv.peel.i.i43.i
  br i1 %exitcond.peel.not.i48.i.i, label %.preheader.i24.i, label %.peel.next.i49.i.i

bb.bm:                                            ; preds = %.peel.next.i49.i.i
  %indvars.iv.next.i52.i.i = add nsw i64 %indvars.iv.i50.i.i, 1 ; 2 uses
  %lftr.wideiv.i53.i.i = trunc i64 %indvars.iv.next.i52.i.i to i32
  %exitcond.not.i54.i.i = icmp eq i32 %i.kk, %lftr.wideiv.i53.i.i
  br i1 %exitcond.not.i54.i.i, label %.preheader.i24.i, label %.peel.next.i49.i.i, !llvm.loop !44

.peel.next.i49.i.i:                               ; preds = %bb.bl, %bb.bm
  %indvars.iv.i50.i.i = phi i64 [ %indvars.iv.next.i52.i.i, %bb.bm ], [ %indvars.iv.next.peel.i.i42.i, %bb.bl ] ; 2 uses
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.kt, i64 %indvars.iv.i50.i.i
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !42 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 32
  %i.lc = load i32, ptr %i.lb, align 8, !tbaa !43
  %.not18.i51.i.i = icmp sgt i32 %i.lc, 0
  br i1 %.not18.i51.i.i, label %ost_iter.exit57.i.i, label %bb.bm

ost_iter.exit57.i.i:                              ; preds = %.peel.next.i49.i.i, %.lr.ph.i46.i.i
  %.01224.lcssa.i.i44.i = phi i32 [ %i.ks, %.lr.ph.i46.i.i ], [ 0, %.peel.next.i49.i.i ]
  %.lcssa.i56.i.i = phi ptr [ %i.kw, %.lr.ph.i46.i.i ], [ %i.la, %.peel.next.i49.i.i ]
  %i.ld = getelementptr inbounds nuw i8, ptr %.lcssa.i56.i.i, i64 24
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !47
  %i.lf = sext i32 %.01224.lcssa.i.i44.i to i64
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.le, i64 %i.lf
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !48 ; 2 uses
  %.not.i45.i = icmp eq ptr %i.lh, null
  br i1 %.not.i45.i, label %.preheader.i24.i, label %bb.bj, !llvm.loop !172

bb.bn:                                            ; preds = %bb.bn, %.lr.ph71.i.i
  %indvars.iv.i25.i = phi i64 [ 0, %.lr.ph71.i.i ], [ %indvars.iv.next.i26.i, %bb.bn ] ; 2 uses
  %i.li = load ptr, ptr @filtergraphs, align 8, !tbaa !173
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %indvars.iv.i25.i
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !175
  %i.ll = load double, ptr %i.h, align 8, !tbaa !170
  call void @fg_send_command(ptr noundef %i.lk, double noundef %i.ll, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, i32 noundef %i.kf) #17
  %indvars.iv.next.i26.i = add nuw nsw i64 %indvars.iv.i25.i, 1 ; 2 uses
  %i.lm = load i32, ptr @nb_filtergraphs, align 4, !tbaa !14
  %i.ln = sext i32 %i.lm to i64
  %i.lo = icmp slt i64 %indvars.iv.next.i26.i, %i.ln
  br i1 %i.lo, label %bb.bn, label %.loopexit.i.i, !llvm.loop !176

bb.bo:                                            ; preds = %bb.bf, %set_tty_echo.exit44.i.i
  %.031.i.i = phi i32 [ %i.jm, %bb.bf ], [ 0, %set_tty_echo.exit44.i.i ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.29, i32 noundef %.031.i.i, ptr noundef nonnull %i.d) #17
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.bn, %bb.bo, %.preheader.i24.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  %i.lp = icmp eq i32 %spec.select.i.i, 63
  br i1 %i.lp, label %bb.bp, label %check_keyboard_interaction.exit.thread.i

bb.bp:                                            ; preds = %.loopexit.i.i, %bb.ax
  %i.lq = load ptr, ptr @stderr, align 8, !tbaa !120
  %i.lr = call i64 @fwrite(ptr nonnull @.str.30, i64 296, i64 1, ptr %i.lq) #20 ; 0 uses
  br label %check_keyboard_interaction.exit.thread.i

check_keyboard_interaction.exit.i:                ; preds = %select.unfold.i.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 32, ptr noundef nonnull @.str.25) #17
  br label %.thread.i

check_keyboard_interaction.exit.thread.i:         ; preds = %bb.bp, %.loopexit.i.i, %bb.ax, %bb.aw, %bb.av, %.thread60.i.i, %bb.at, %bb.as
  %i.ls = load i64, ptr %i.i, align 8, !tbaa !94
  call fastcc void @print_report(i32 noundef 0, i64 noundef %i.hl, i64 noundef %i.hs, i64 noundef %i.ls)
  %i.lt = load i64, ptr @stats_period, align 8, !tbaa !94
  %i.lu = call i32 @sch_wait(ptr noundef nonnull %i.n, i64 noundef %i.lt, ptr noundef nonnull %i.i) #17
  %.not21.i = icmp eq i32 %i.lu, 0
  br i1 %.not21.i, label %bb.ar, label %.thread.i

.thread.i:                                        ; preds = %check_keyboard_interaction.exit.thread.i, %bb.ar, %check_keyboard_interaction.exit.i, %bb.aq
  %i.lv = call i32 @sch_stop(ptr noundef nonnull %i.n, ptr noundef nonnull %i.i) #17 ; 2 uses
  %i.lw = load i32, ptr @nb_output_files, align 4, !tbaa !14
  %i.lx = icmp sgt i32 %i.lw, 0
  br i1 %i.lx, label %.lr.ph72.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %err_merge.exit.i, %.thread.i
  %.019.lcssa.i = phi i32 [ %i.lv, %.thread.i ], [ %.0.i47.i, %err_merge.exit.i ] ; 3 uses
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef -8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #17
  %.b.i.i.i = load i1, ptr @restore_tty, align 4
  br i1 %.b.i.i.i, label %bb.bq, label %transcode.exit

bb.bq:                                            ; preds = %._crit_edge.i
  %i.ly = call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @oldtty) #17 ; 0 uses
  br label %transcode.exit

.lr.ph72.i:                                       ; preds = %.thread.i, %err_merge.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %err_merge.exit.i ], [ 0, %.thread.i ] ; 2 uses
  %.01970.i = phi i32 [ %.0.i47.i, %err_merge.exit.i ], [ %i.lv, %.thread.i ] ; 4 uses
  %i.lz = load ptr, ptr @output_files, align 8, !tbaa !40
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %indvars.iv.i
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !42
  %i.mc = call i32 @of_write_trailer(ptr noundef %i.mb) #17 ; 3 uses
  %i.md = icmp sgt i32 %.01970.i, -1
  %i.me = icmp eq i32 %.01970.i, -541478725
  %or.cond.i.i = or i1 %i.md, %i.me
  %i.mf = icmp slt i32 %i.mc, 0
  %or.cond3.i.i = and i1 %or.cond.i.i, %i.mf
  br i1 %or.cond3.i.i, label %err_merge.exit.i, label %bb.br

bb.br:                                            ; preds = %.lr.ph72.i
  %i.mg = icmp slt i32 %.01970.i, 0
  %i.mh = call i32 @llvm.smin.i32(i32 %i.mc, i32 0)
  %i.mi = select i1 %i.mg, i32 %.01970.i, i32 %i.mh
  br label %err_merge.exit.i

err_merge.exit.i:                                 ; preds = %bb.br, %.lr.ph72.i
  %.0.i47.i = phi i32 [ %i.mi, %bb.br ], [ %i.mc, %.lr.ph72.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.mj = load i32, ptr @nb_output_files, align 4, !tbaa !14
  %i.mk = sext i32 %i.mj to i64
  %i.ml = icmp slt i64 %indvars.iv.next.i, %i.mk
  br i1 %i.ml, label %.lr.ph72.i, label %._crit_edge.i, !llvm.loop !177

transcode.exit:                                   ; preds = %._crit_edge.i, %bb.bq
  %i.mm = call i64 @av_gettime_relative() #17
  %i.mn = load i64, ptr %i.i, align 8, !tbaa !94
  call fastcc void @print_report(i32 noundef 1, i64 noundef %i.hl, i64 noundef %i.mm, i64 noundef %i.mn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #17
  %i.mo = icmp sgt i32 %.019.lcssa.i, -1
  %i.mp = load i32, ptr @do_benchmark, align 4
  %i.mq = icmp ne i32 %i.mp, 0
  %or.cond3 = select i1 %i.mo, i1 %i.mq, i1 false
  br i1 %or.cond3, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %transcode.exit
  %i.mr = call i64 @av_gettime_relative() #17, !noalias !178 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !178
  %i.ms = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %3) #17, !noalias !178 ; 0 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %3, i64 8
end_hunk_1
begin_hunk_2_@main:bb.a
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %._crit_edge37.i
  call void @av_freep(ptr noundef nonnull @vstats_filename) #17
  call void @of_enc_stats_close() #17
  call void @hw_device_free_all() #17
  call void @av_freep(ptr noundef nonnull @filter_nbthreads) #17
  call void @av_freep(ptr noundef nonnull @print_graphs_file) #17
  call void @av_freep(ptr noundef nonnull @print_graphs_format) #17
  call void @av_freep(ptr noundef nonnull @input_files) #17
  call void @av_freep(ptr noundef nonnull @output_files) #17
  call void @uninit_opts() #17
  %i.pt = call i32 @avformat_network_deinit() #17 ; 0 uses
  %i.pu = load volatile i32, ptr @received_sigterm, align 4, !tbaa !14
  %.not25.i = icmp eq i32 %i.pu, 0
  br i1 %.not25.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.pv = load volatile i32, ptr @received_sigterm, align 4, !tbaa !14
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 32, ptr noundef nonnull @.str.69, i32 noundef %i.pv) #17
  br label %bb.cf

bb.cc:                                            ; preds = %bb.ca
  %.not26.i = icmp eq i32 %i.nu, 0
  br i1 %.not26.i, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.pw = load atomic i32, ptr @transcode_init_done seq_cst, align 4
  %.not27.i = icmp eq i32 %i.pw, 0
  br i1 %.not27.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 32, ptr noundef nonnull @.str.70) #17
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %bb.cc, %bb.cb
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef -8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #17
  %.b.i.i.i28 = load i1, ptr @restore_tty, align 4
  br i1 %.b.i.i.i28, label %bb.cg, label %ffmpeg_cleanup.exit

bb.cg:                                            ; preds = %bb.cf
  %i.px = call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @oldtty) #17 ; 0 uses
  br label %ffmpeg_cleanup.exit

ffmpeg_cleanup.exit:                              ; preds = %bb.cf, %bb.cg
  store volatile i32 1, ptr @ffmpeg_exited, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @sch_free(ptr noundef nonnull %i.j) #17
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 40, ptr noundef nonnull @.str.10) #17
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 40, ptr noundef nonnull @.str.11, i32 noundef %i.nu) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #17
  ret i32 %i.nu
}

declare void @init_dynload() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @setvbuf(ptr noundef captures(none), ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #9

declare void @av_log_set_flags(i32 noundef) local_unnamed_addr #1

declare void @parse_loglevel(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @avdevice_register_all() local_unnamed_addr #1

declare i32 @avformat_network_init() local_unnamed_addr #1

declare void @show_banner(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @sch_alloc() local_unnamed_addr #1

declare i32 @ffmpeg_parse_options(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @show_usage() local_unnamed_addr #1

declare void @sch_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #12

declare i32 @av_buffer_is_writable(ptr noundef) local_unnamed_addr #1

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #1

declare ptr @av_buffer_create(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @frame_data_free(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @av_frame_side_data_free(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @avcodec_parameters_free(ptr noundef nonnull %i.c) #17
  tail call void @av_free(ptr noundef %1) #17
  ret void
}

declare void @av_buffer_unref(ptr noundef) local_unnamed_addr #1

declare ptr @avcodec_parameters_alloc() local_unnamed_addr #1

declare i32 @avcodec_parameters_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @av_frame_side_data_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @avcodec_parameters_free(ptr noundef) local_unnamed_addr #1

declare void @av_free(ptr noundef) local_unnamed_addr #1

declare i32 @av_frame_side_data_clone(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @av_gettime_relative() local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @getrusage(i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @sch_start(ptr noundef) local_unnamed_addr #1

declare i32 @sch_wait(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @print_report(i32 noundef range(i32 0, 2) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.AVBPrint, align 8           ; 19 uses
  %5 = alloca %struct.AVBPrint, align 8           ; 26 uses
  %i.a = alloca [64 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.b = load ptr, ptr @output_files, align 8, !tbaa !40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.d = tail call i64 @of_filesize(ptr noundef %i.c) #17
  %.fr = freeze i64 %i.d                          ; 5 uses
  %i.e = load i32, ptr @print_stats, align 4, !tbaa !14
  %.not147 = icmp eq i32 %0, 0                    ; 5 uses
  %i.f = or i32 %i.e, %0
  %or.cond = icmp ne i32 %i.f, 0
  %i.g = load ptr, ptr @progress_avio, align 8
  %i.h = icmp ne ptr %i.g, null
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.h
  br i1 %or.cond3, label %bb.b, label %bb.bg

bb.b:                                             ; preds = %bb.a
  br i1 %.not147, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @print_report.last_time, align 8, !tbaa !94 ; 2 uses
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 %2, ptr @print_report.last_time, align 8, !tbaa !94
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi i64 [ %2, %bb.d ], [ %i.i, %bb.c ]
  %i.l = sub nsw i64 %2, %i.k
  %i.m = load i64, ptr @stats_period, align 8, !tbaa !94
  %i.n = icmp slt i64 %i.l, %i.m
  %.b = load i1, ptr @print_report.first_report, align 4 ; 2 uses
  %or.cond5.not = select i1 %i.n, i1 %.b, i1 false
  br i1 %or.cond5.not, label %bb.bg, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.b, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load atomic i32, ptr @nb_output_dumped seq_cst, align 4
  %i.p = load i32, ptr @nb_output_files, align 4, !tbaa !14
  %i.q = icmp ult i32 %i.o, %i.p
  br i1 %i.q, label %bb.bg, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i64 %2, ptr @print_report.last_time, align 8, !tbaa !94
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %i.r = sub nsw i64 %2, %1
  %i.s = sitofp nsz i64 %i.r to double
  %i.t = fdiv nsz double %i.s, 1.000000e+06       ; 2 uses
  %i.u = fptrunc nsz double %i.t to float         ; 5 uses
  call void @av_bprint_init(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 1) #17
  call void @av_bprint_init(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 1) #17
  %i.v = load i32, ptr @nb_output_files, align 4, !tbaa !14 ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.i
  %i.x = load ptr, ptr @output_files, align 8, !tbaa !40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !42   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !43
  %.not18.peel.i = icmp sgt i32 %i.aa, 0
  br i1 %.not18.peel.i, label %ost_iter.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %exitcond.peel.not.i = icmp eq i32 %i.v, 1
  br i1 %exitcond.peel.not.i, label %._crit_edge, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.j
  %zext = zext nneg i32 %i.v to i64
  br label %.peel.next.i

bb.k:                                             ; preds = %.peel.next.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next.i, %zext
  br i1 %exitcond, label %._crit_edge, label %.peel.next.i, !llvm.loop !44

.peel.next.i:                                     ; preds = %.peel.next.i.preheader, %bb.k
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ 1, %.peel.next.i.preheader ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !42 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !43
  %.not18.i = icmp sgt i32 %i.ae, 0
  br i1 %.not18.i, label %ost_iter.exit, label %bb.k

ost_iter.exit:                                    ; preds = %.peel.next.i, %.lr.ph.i
  %.lcssa.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.ac, %.peel.next.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !47
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !48 ; 2 uses
  %.not169 = icmp eq ptr %i.ah, null
  br i1 %.not169, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %ost_iter.exit
  %i.ai = fcmp nsz ogt double %i.t, f0x3FF0000010000000
  br label %bb.l

._crit_edge:                                      ; preds = %bb.k, %bb.u, %.thread.i, %ost_iter.exit165, %bb.v, %bb.j, %bb.i, %ost_iter.exit
  %.0132.lcssa = phi i64 [ 0, %ost_iter.exit ], [ %.2134, %bb.v ], [ %.2134, %bb.u ], [ 0, %bb.i ], [ 0, %bb.j ], [ %.2134, %ost_iter.exit165 ], [ %.2134, %.thread.i ], [ 0, %bb.k ] ; 3 uses
  %.0130.lcssa = phi i64 [ 0, %ost_iter.exit ], [ %.2, %bb.v ], [ %.2, %bb.u ], [ 0, %bb.i ], [ 0, %bb.j ], [ %.2, %ost_iter.exit165 ], [ %.2, %.thread.i ], [ 0, %bb.k ] ; 3 uses
  %i.aj = load i32, ptr @copy_ts, align 4, !tbaa !14
  %.not145 = icmp eq i32 %i.aj, 0
  br i1 %.not145, label %bb.z, label %bb.w

bb.l:                                             ; preds = %.lr.ph, %ost_iter.exit165
  %.0128173 = phi i32 [ 0, %.lr.ph ], [ %.1, %ost_iter.exit165 ]
  %.0129172 = phi ptr [ %i.ah, %.lr.ph ], [ %i.ct, %ost_iter.exit165 ] ; 11 uses
  %.0130171 = phi i64 [ 0, %.lr.ph ], [ %.2, %ost_iter.exit165 ] ; 4 uses
  %.0132170 = phi i64 [ 0, %.lr.ph ], [ %.2134, %ost_iter.exit165 ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0129172, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !149
  %.not149 = icmp eq ptr %i.al, null
  br i1 %.not149, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %.0129172, i64 208
  %i.an = load atomic i32, ptr %i.am seq_cst, align 8
  %i.ao = sitofp nsz i32 %i.an to float
  %i.ap = fdiv nsz float %i.ao, 1.180000e+02
  %i.aq = fpext nsz float %i.ap to double
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ar = phi double [ %i.aq, %bb.m ], [ -1.000000e+00, %bb.l ] ; 4 uses
  %.not150 = icmp eq i32 %.0128173, 0
  %i.as = getelementptr inbounds nuw i8, ptr %.0129172, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !187
  %i.au = icmp eq i32 %i.at, 0                    ; 2 uses
  br i1 %.not150, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.au, label %bb.p, label %.thread.i

bb.p:                                             ; preds = %bb.o
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.31, double noundef %i.ar) #17
  %i.av = getelementptr inbounds nuw i8, ptr %.0129172, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !35
  %i.az = getelementptr inbounds nuw i8, ptr %.0129172, i64 24
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !39
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.32, i32 noundef %i.ay, i32 noundef %i.ba, double noundef %i.ar) #17
  br label %.thread.i

.critedge:                                        ; preds = %bb.n
  br i1 %i.au, label %bb.q, label %.thread.i

bb.q:                                             ; preds = %.critedge
  %i.bb = getelementptr inbounds nuw i8, ptr %.0129172, i64 200
  %i.bc = load atomic i64, ptr %i.bb seq_cst, align 8 ; 3 uses
  %i.bd = uitofp nsz i64 %i.bc to float
  %i.be = fdiv nsz float %i.bd, %i.u
  %i.bf = fpext nsz float %i.be to double
  %i.bg = select i1 %i.ai, double %i.bf, double 0.000000e+00 ; 3 uses
  %i.bh = fcmp nsz olt double %i.bg, f0x4023E66666666666
  %i.bi = zext i1 %i.bh to i32
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.33, i64 noundef %i.bc, i32 noundef %i.bi, double noundef %i.bg, double noundef %i.ar) #17
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.34, i64 noundef %i.bc) #17
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.35, double noundef %i.bg) #17
  %i.bj = getelementptr inbounds nuw i8, ptr %.0129172, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !35
  %i.bn = getelementptr inbounds nuw i8, ptr %.0129172, i64 24
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !39
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.32, i32 noundef %i.bm, i32 noundef %i.bo, double noundef %i.ar) #17
  br i1 %.not147, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.36) #17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %.0129172, i64 184 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !145 ; 2 uses
  %.not151 = icmp eq ptr %i.bq, null
  br i1 %.not151, label %.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  %i.bs = load atomic i64, ptr %i.br seq_cst, align 8
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !145
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 88
  %i.bv = load atomic i64, ptr %i.bu seq_cst, align 8
  br label %.thread.i

.thread.i:                                        ; preds = %bb.o, %bb.p, %bb.s, %bb.t, %.critedge
  %.2134 = phi i64 [ %.0132170, %bb.s ], [ %.0132170, %.critedge ], [ %i.bs, %bb.t ], [ %.0132170, %bb.p ], [ %.0132170, %bb.o ] ; 5 uses
  %.2 = phi i64 [ %.0130171, %bb.s ], [ %.0130171, %.critedge ], [ %i.bv, %bb.t ], [ %.0130171, %bb.p ], [ %.0130171, %bb.o ] ; 5 uses
  %.1 = phi i32 [ 1, %bb.s ], [ 0, %.critedge ], [ 1, %bb.t ], [ 1, %bb.p ], [ 1, %bb.o ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.0129172, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !35 ; 2 uses
  %i.ca = load i32, ptr @nb_output_files, align 4, !tbaa !14 ; 3 uses
  %i.cb = icmp slt i32 %i.bz, %i.ca
  br i1 %i.cb, label %.lr.ph.i154, label %._crit_edge

.lr.ph.i154:                                      ; preds = %.thread.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.0129172, i64 24
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !39
  %i.ce = add nsw i32 %i.cd, 1                    ; 2 uses
  %i.cf = load ptr, ptr @output_files, align 8, !tbaa !40 ; 2 uses
  %i.cg = sext i32 %i.bz to i64                   ; 2 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !42 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !43
  %.not18.peel.i155 = icmp slt i32 %i.ce, %i.ck
  br i1 %.not18.peel.i155, label %ost_iter.exit165, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i154
  %indvars.iv.next.peel.i = add nsw i64 %i.cg, 1  ; 2 uses
  %lftr.wideiv.peel.i = trunc nsw i64 %indvars.iv.next.peel.i to i32
  %exitcond.peel.not.i156 = icmp eq i32 %i.ca, %lftr.wideiv.peel.i
  br i1 %exitcond.peel.not.i156, label %._crit_edge, label %.peel.next.i157

bb.v:                                             ; preds = %.peel.next.i157
  %indvars.iv.next.i160 = add nsw i64 %indvars.iv.i158, 1 ; 2 uses
  %lftr.wideiv.i161 = trunc i64 %indvars.iv.next.i160 to i32
  %exitcond.not.i162 = icmp eq i32 %i.ca, %lftr.wideiv.i161
  br i1 %exitcond.not.i162, label %._crit_edge, label %.peel.next.i157, !llvm.loop !44

.peel.next.i157:                                  ; preds = %bb.u, %bb.v
  %indvars.iv.i158 = phi i64 [ %indvars.iv.next.i160, %bb.v ], [ %indvars.iv.next.peel.i, %bb.u ] ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %indvars.iv.i158
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !42 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !43
  %.not18.i159 = icmp sgt i32 %i.co, 0
  br i1 %.not18.i159, label %ost_iter.exit165, label %bb.v

ost_iter.exit165:                                 ; preds = %.peel.next.i157, %.lr.ph.i154
  %.01224.lcssa.i = phi i32 [ %i.ce, %.lr.ph.i154 ], [ 0, %.peel.next.i157 ]
  %.lcssa.i164 = phi ptr [ %i.ci, %.lr.ph.i154 ], [ %i.cm, %.peel.next.i157 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.lcssa.i164, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !47
  %i.cr = sext i32 %.01224.lcssa.i to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !48 ; 2 uses
  %.not = icmp eq ptr %i.ct, null
  br i1 %.not, label %._crit_edge, label %bb.l, !llvm.loop !188

bb.w:                                             ; preds = %._crit_edge
  %i.cu = load i64, ptr @copy_ts_first_pts, align 8, !tbaa !94 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, -9223372036854775808
  %i.cw = icmp sgt i64 %3, 1
  %or.cond7 = and i1 %i.cw, %i.cv
  br i1 %or.cond7, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i64 %3, ptr @copy_ts_first_pts, align 8, !tbaa !94
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cx = phi i64 [ %3, %bb.x ], [ %i.cu, %bb.w ] ; 2 uses
  %.not146 = icmp eq i64 %i.cx, -9223372036854775808
  %i.cy = select i1 %.not146, i64 0, i64 %i.cx
  %spec.select = sub nsw i64 %3, %i.cy
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge
  %.0 = phi i64 [ %3, %._crit_edge ], [ %spec.select, %bb.y ] ; 9 uses
  %i.cz = call i64 @llvm.abs.i64(i64 %.0, i1 false) ; 4 uses
  %i.da = urem i64 %i.cz, 1000000
  %i.db = trunc nuw nsw i64 %i.da to i32          ; 2 uses
  %i.dc = udiv i64 %i.cz, 1000000
  %i.dd = urem i64 %i.dc, 60
  %i.de = trunc nuw nsw i64 %i.dd to i32          ; 2 uses
  %i.df = udiv i64 %i.cz, 60000000
  %i.dg = urem i64 %i.df, 60
  %i.dh = trunc nuw nsw i64 %i.dg to i32          ; 2 uses
  %i.di = udiv i64 %i.cz, 3600000000              ; 2 uses
  %i.dj = icmp slt i64 %.0, 0
  %i.dk = select i1 %i.dj, ptr @.str.37, ptr @.str.1 ; 2 uses
  %i.dl = icmp ne i64 %.0, -9223372036854775808
  %i.dm = icmp sgt i64 %.fr, -1
  br i1 %i.dm, label %switch.early.test, label %bb.ab
end_hunk_2
