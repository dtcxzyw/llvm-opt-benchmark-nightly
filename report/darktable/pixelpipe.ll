Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/pixelpipe?download=true
inline.NumInlined: 235
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 34
begin_hunk_0_@dt_dev_distort_detail_mask:bb.a
  %.not208 = icmp eq ptr %i.ij, null
  br i1 %.not208, label %.thread230, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ik = mul nsw i64 %i.ig, %i.id
  tail call void @dt_iop_image_copy(ptr noundef nonnull %i.ij, ptr noundef %.5138.ph, i64 noundef %i.ik) #23
  br label %.thread230

.thread230:                                       ; preds = %bb.h, %_ensure_distort_buf.exit, %bb.d, %bb.aj, %bb.ak, %bb.al, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.aj ], [ null, %bb.ak ], [ %i.ij, %bb.al ], [ null, %_ensure_distort_buf.exit ], [ null, %bb.h ]
  ret ptr %.2
}

declare i32 @dt_image_is_raw(ptr noundef) local_unnamed_addr #3

declare i32 @dt_image_is_mono_sraw(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i64 @dt_dev_pixelpipe_piece_hash(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !243
  %i.c = load ptr, ptr %0, align 16, !tbaa !108
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 484
  %i.e = load i32, ptr %i.d, align 4, !tbaa !288
  %.not = icmp eq i32 %2, 0
  %.neg = sext i1 %.not to i32
  %i.f = add i32 %i.e, %.neg
  %i.g = tail call i64 @dt_dev_pixelpipe_cache_hash(ptr noundef %1, ptr noundef %i.b, i32 noundef %i.f)
  ret i64 %i.g
}

declare i32 @dt_iop_module_is_skipped(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #14

declare i32 @dt_image_is_rawprepare_supported(ptr noundef) local_unnamed_addr #3

declare void @dt_iop_set_module_trouble_message(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #17

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

declare i32 @g_strcmp0(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_dev_pixelpipe_process_rec(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef nonnull captures(none) %4, ptr noundef nonnull %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8) unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.dt_iop_roi_t, align 8       ; 36 uses
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %10 = alloca %struct.dt_times_t, align 8        ; 4 uses
  %11 = alloca %struct.dt_iop_roi_t, align 4      ; 6 uses
  %12 = alloca %struct.dt_iop_buffer_dsc_t, align 16 ; 4 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %13 = alloca %struct.dt_times_t, align 8        ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %14 = alloca %struct.dt_develop_tiling_t, align 16 ; 12 uses
  %15 = alloca %struct.dt_develop_tiling_t, align 16 ; 6 uses
  %i.f = alloca [32 x i8], align 16               ; 5 uses
  %i.g = alloca [4 x float], align 16             ; 7 uses
  %i.h = alloca [4 x float], align 16             ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 612 ; 7 uses
  %i.j = load atomic i32, ptr %i.i seq_cst, align 4
  %.not508 = icmp eq i32 %i.j, 0
  br i1 %.not508, label %bb.b, label %bb.ei

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %9, ptr noundef nonnull align 4 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr null, ptr %i.b, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr null, ptr %i.c, align 8, !tbaa !36
  store ptr null, ptr %3, align 8, !tbaa !36
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !159 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %dt_dev_gui_module.exit.thread, label %dt_dev_gui_module.exit

dt_dev_gui_module.exit:                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !304  ; 2 uses
  %.not378 = icmp eq ptr %i.m, null
  br i1 %.not378, label %dt_dev_gui_module.exit.thread, label %bb.c

bb.c:                                             ; preds = %dt_dev_gui_module.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !261
  %i.p = tail call i32 %i.o() #23
  %i.q = and i32 %i.p, 4096
  %.not379 = icmp eq i32 %i.q, 0
  br i1 %.not379, label %dt_dev_gui_module.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %0, i64 644        ; 3 uses
  %.val454 = load i32, ptr %i.r, align 4, !tbaa !37
  %i.s = and i32 %.val454, 6
  %.not380 = icmp eq i32 %i.s, 0
  br i1 %.not380, label %dt_dev_gui_module.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !159
  %i.u = tail call i32 @dt_dev_modulegroups_test_activated(ptr noundef %i.t) #23
  %.not381 = icmp eq i32 %i.u, 0
  br i1 %.not381, label %dt_dev_gui_module.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.r, align 4, !tbaa !37
  %i.w = or i32 %i.v, 256
  store i32 %i.w, ptr %i.r, align 4, !tbaa !37
  br label %bb.g

dt_dev_gui_module.exit.thread:                    ; preds = %bb.b, %bb.e, %bb.d, %bb.c, %dt_dev_gui_module.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 644 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !37
  %i.z = and i32 %i.y, -257
  store i32 %i.z, ptr %i.x, align 4, !tbaa !37
  br label %bb.g

bb.g:                                             ; preds = %dt_dev_gui_module.exit.thread, %bb.f
  %.not382 = icmp eq ptr %6, null                 ; 2 uses
  br i1 %.not382, label %.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %6, align 8, !tbaa !106   ; 5 uses
  %i.ab = load ptr, ptr %7, align 8, !tbaa !106   ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %i.ac, align 16, !tbaa !126
  %.not.i466 = icmp eq i32 %i.ad, 0
  br i1 %.not.i466, label %_skip_piece_on_tags.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.ab, align 16, !tbaa !108 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 480
  %i.ag = load i32, ptr %i.af, align 16, !tbaa !152
  %i.ah = icmp eq i32 %i.ag, 2147483647
  br i1 %i.ah, label %_skip_piece_on_tags.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 664
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !127
  %i.ak = tail call i32 @dt_iop_module_is_skipped(ptr noundef %i.aj, ptr noundef nonnull %i.ae) #23
  %.not5.i = icmp eq i32 %i.ak, 0
  br i1 %.not5.i, label %_skip_piece_on_tags.exit.thread492, label %_skip_piece_on_tags.exit

_skip_piece_on_tags.exit:                         ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !243
  %i.an = getelementptr i8, ptr %i.am, i64 644
  %.val.i = load i32, ptr %i.an, align 4, !tbaa !37
  %i.ao = and i32 %.val.i, 6
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %_skip_piece_on_tags.exit.thread492, label %_skip_piece_on_tags.exit.thread

_skip_piece_on_tags.exit.thread:                  ; preds = %bb.i, %bb.h, %_skip_piece_on_tags.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !276
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !276
  %i.at = add nsw i32 %8, -1
  %i.au = call fastcc i32 @_dev_pixelpipe_process_rec(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %9, ptr noundef %i.aq, ptr noundef %i.as, i32 noundef %i.at)
  br label %_dev_pixelpipe_early_exit.exit.thread

_skip_piece_on_tags.exit.thread492:               ; preds = %bb.j, %_skip_piece_on_tags.exit
  %.not509 = icmp eq ptr %i.aa, null
  br i1 %.not509, label %.split, label %get_output_format.exit470

.split:                                           ; preds = %bb.g, %_skip_piece_on_tags.exit.thread492
  %.0363500 = phi ptr [ %i.ab, %_skip_piece_on_tags.exit.thread492 ], [ null, %bb.g ] ; 2 uses
  %i.av = load ptr, ptr %4, align 8, !tbaa !145   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.av, ptr noundef nonnull align 16 dereferenceable(128) %i.ax, i64 128, i1 false), !tbaa.struct !150
  %i.ay = tail call i32 @dt_image_is_raw(ptr noundef nonnull %i.aw) #23
  %.not13.i = icmp eq i32 %i.ay, 0
  br i1 %.not13.i, label %.preheader.i, label %get_output_format.exit

.preheader.i:                                     ; preds = %.split
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  store <4 x float> splat (float 1.000000e+00), ptr %i.az, align 4, !tbaa !147
  br label %get_output_format.exit

get_output_format.exit470:                        ; preds = %_skip_piece_on_tags.exit.thread492
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aa, i64 456
  %i.bb = call i64 @g_strlcpy(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ba, i64 noundef 20) #23 ; 0 uses
  %i.bc = load ptr, ptr %4, align 8, !tbaa !145
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  %i.be = load ptr, ptr %i.bd, align 16, !tbaa !305
  call void %i.be(ptr noundef nonnull %i.aa, ptr noundef nonnull %0, ptr noundef nonnull %i.ab, ptr noundef %i.bc) #23, !inline_history !306
  br label %get_output_format.exit

get_output_format.exit:                           ; preds = %.preheader.i, %.split, %get_output_format.exit470
  %i.bf = phi i1 [ true, %get_output_format.exit470 ], [ false, %.split ], [ false, %.preheader.i ] ; 3 uses
  %.0363499 = phi ptr [ %i.ab, %get_output_format.exit470 ], [ %.0363500, %.split ], [ %.0363500, %.preheader.i ]
  %.0364497 = phi ptr [ %i.aa, %get_output_format.exit470 ], [ null, %.split ], [ null, %.preheader.i ] ; 34 uses
  %i.bg = load ptr, ptr %4, align 8, !tbaa !145
  %i.bh = call i64 @dt_iop_buffer_dsc_to_bpp(ptr noundef %i.bg) #23 ; 10 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !155
  %i.bk = sext i32 %i.bj to i64
  %i.bl = mul i64 %i.bh, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 8 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !156
  %i.bo = sext i32 %i.bn to i64
  %i.bp = mul i64 %i.bl, %i.bo                    ; 4 uses
  %i.bq = call i64 @dt_dev_pixelpipe_cache_hash(ptr noundef nonnull %5, ptr noundef nonnull %0, i32 noundef %8) ; 5 uses
  %i.br = getelementptr i8, ptr %0, i64 644       ; 12 uses
  %.val460 = load i32, ptr %i.br, align 4, !tbaa !37
  %i.bs = and i32 %.val460, 4
  %i.bt = icmp ne i32 %i.bs, 0
  %or.cond = and i1 %i.bf, %i.bt
  br i1 %or.cond, label %bb.k, label %.critedge

bb.k:                                             ; preds = %get_output_format.exit
  %i.bu = getelementptr i8, ptr %.0364497, i64 952
  %.0364.val459 = load ptr, ptr %i.bu, align 8, !tbaa !262
  %i.bv = getelementptr inbounds nuw i8, ptr %.0364.val459, i64 496
  %i.bw = call i32 @g_strcmp0(ptr noundef nonnull %i.bv, ptr noundef nonnull @.str.149) #23
  %.not.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i, label %.critedge450, label %.critedge

.critedge:                                        ; preds = %get_output_format.exit, %bb.k
  %i.bx = getelementptr i8, ptr %0, i64 628
  %.val463 = load i32, ptr %i.bx, align 4, !tbaa !143
  %.not510 = icmp eq i32 %.val463, 0
  br i1 %.not510, label %bb.l, label %.critedge450

bb.l:                                             ; preds = %.critedge
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !144
  %.not385 = icmp ne i32 %i.bz, 0
  %i.ca = icmp eq i64 %i.bq, 0
  %or.cond506 = select i1 %.not385, i1 true, i1 %i.ca
  br i1 %or.cond506, label %.critedge450, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !99
  %i.cd = add i64 %i.cc, 1
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !99
  %i.ce = load i32, ptr %0, align 8, !tbaa !11    ; 2 uses
  %.not2023.i = icmp sgt i32 %i.ce, 2
  br i1 %.not2023.i, label %.lr.ph.i, label %.critedge450

.lr.ph.i:                                         ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !23
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.trip.count.i = zext nneg i32 %i.ce to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 2, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.p ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.i
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !28
  %i.ck = icmp eq i64 %i.cj, %i.bp
  br i1 %i.ck, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cl = load ptr, ptr %i.ch, align 8, !tbaa !25
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.i
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !28
  %i.co = icmp eq i64 %i.cn, %i.bq
  br i1 %i.co, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge450, label %bb.n

bb.q:                                             ; preds = %bb.o
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !97
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.cp, align 8, !tbaa !97
  %i.cs = call i32 @dt_dev_pixelpipe_cache_get(ptr noundef nonnull %0, i64 noundef %i.bq, i64 noundef %i.bp, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef %.0364497, i32 noundef 1) ; 0 uses
  %i.ct = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !57
  %i.cu = and i32 %i.ct, 33554432
  %.not448 = icmp eq i32 %i.cu, 0
  br i1 %.not448, label %_dev_pixelpipe_early_exit.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.150, ptr noundef nonnull %0, ptr noundef %.0364497, i32 noundef -2, ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull @.str.74)
  br label %_dev_pixelpipe_early_exit.exit.thread

.critedge450:                                     ; preds = %bb.p, %bb.l, %bb.m, %.critedge, %bb.k
  %.not.i472 = icmp eq ptr %1, null
  br i1 %.not.i472, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge450
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !307
  %.not15.i = icmp eq i32 %i.cw, 0
  br i1 %.not15.i, label %bb.t, label %_dev_pixelpipe_early_exit.exit.thread

bb.t:                                             ; preds = %bb.s, %.critedge450
  %.val25.i = load i32, ptr %i.br, align 4, !tbaa !37 ; 3 uses
  %i.cx = and i32 %.val25.i, 2
  %.not16.i = icmp eq i32 %i.cx, 0                ; 2 uses
  br i1 %.not16.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !229
  %i.da = icmp eq i32 %i.cz, 8
  br i1 %i.da, label %_dev_pixelpipe_early_exit.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.db = and i32 %.val25.i, 16
  %.not17.i = icmp eq i32 %i.db, 0                ; 2 uses
  br i1 %.not17.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !229
  %i.de = icmp eq i32 %i.dd, 8
  br i1 %i.de, label %_dev_pixelpipe_early_exit.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %.not16.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dg = load i32, ptr %i.df, align 16, !tbaa !308
  %.not19.i = icmp eq i32 %i.dg, 0
  br i1 %.not19.i, label %bb.z, label %_dev_pixelpipe_early_exit.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dh = and i32 %.val25.i, 4
  %.not20.i = icmp eq i32 %i.dh, 0
  br i1 %.not20.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.dj = load i32, ptr %i.di, align 16, !tbaa !309
  %.not21.i = icmp eq i32 %i.dj, 0
  br i1 %.not21.i, label %bb.ab, label %_dev_pixelpipe_early_exit.exit.thread

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %.not17.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.dl = load i32, ptr %i.dk, align 16, !tbaa !309
  %.not23.i = icmp eq i32 %i.dl, 0
  br i1 %.not23.i, label %bb.ad, label %_dev_pixelpipe_early_exit.exit.thread

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !229
  switch i32 %i.dn, label %_dev_pixelpipe_early_exit.exit.thread [
    i32 0, label %_dev_pixelpipe_early_exit.exit.thread503
    i32 8, label %_dev_pixelpipe_early_exit.exit.thread503
  ]

_dev_pixelpipe_early_exit.exit.thread503:         ; preds = %bb.ad, %bb.ad
  %i.do = load atomic i32, ptr %i.i seq_cst, align 4
  %.not521 = icmp eq i32 %i.do, 0                 ; 2 uses
  br i1 %.not382, label %bb.ae, label %bb.bf

bb.ae:                                            ; preds = %_dev_pixelpipe_early_exit.exit.thread503
  br i1 %.not521, label %bb.af, label %_dev_pixelpipe_early_exit.exit.thread

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call fastcc void @dt_get_perf_times(ptr noundef %10)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !211 ; 2 uses
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = and i64 %i.dr, 63
  %i.dt = icmp eq i64 %i.ds, 0                    ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dv = load float, ptr %i.du, align 4, !tbaa !157
  %i.dw = fcmp reassoc nsz arcp contract afn oeq float %i.dv, 1.000000e+00
  br i1 %i.dw, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.dx = load i32, ptr %5, align 4, !tbaa !153
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.ah, label %bb.am
end_hunk_0
begin_hunk_1_@_dev_pixelpipe_process_rec:bb.a
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iq, i64 352 ; 6 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iq, i64 224 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.jc, ptr noundef nonnull align 16 dereferenceable(128) %i.iz, i64 128, i1 false), !tbaa.struct !150
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.jb, ptr noundef nonnull align 16 dereferenceable(128) %i.iz, i64 128, i1 false)
  %i.jd = getelementptr inbounds nuw i8, ptr %.0364497, i64 112
  %i.je = load ptr, ptr %i.jd, align 16, !tbaa !305
  call void %i.je(ptr noundef nonnull %.0364497, ptr noundef nonnull %0, ptr noundef nonnull %i.iq, ptr noundef nonnull %i.jb) #23
  %i.jf = load ptr, ptr %4, align 8, !tbaa !145
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.jg, ptr noundef nonnull align 16 dereferenceable(128) %i.jb, i64 128, i1 false), !tbaa.struct !150
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.jf, ptr noundef nonnull align 16 dereferenceable(128) %i.jb, i64 128, i1 false)
  %i.jh = load ptr, ptr %4, align 8, !tbaa !145
  %i.ji = call i64 @dt_iop_buffer_dsc_to_bpp(ptr noundef %i.jh) #23
  %i.jj = load atomic i32, ptr %i.i seq_cst, align 4
  %.not513 = icmp eq i32 %i.jj, 0
  br i1 %.not513, label %bb.bl, label %bb.eh

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.bf, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  %i.jk = getelementptr i8, ptr %0, i64 628
  %.val462 = load i32, ptr %i.jk, align 4, !tbaa !143
  %.not514 = icmp eq i32 %.val462, 0
  br i1 %.not514, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %.val456 = load i32, ptr %i.br, align 4, !tbaa !37
  %i.jl = and i32 %.val456, 22
  %.not402 = icmp eq i32 %i.jl, 0
  br i1 %.not402, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jm = getelementptr inbounds nuw i8, ptr %.0364497, i64 64
  %i.jn = load ptr, ptr %i.jm, align 16, !tbaa !261
  %i.jo = call i32 %i.jn() #23
  %i.jp = lshr i32 %i.jo, 20
  %.lobit = and i32 %i.jp, 1
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl
  %i.jq = phi i32 [ 0, %bb.bn ], [ 0, %bb.bm ], [ 0, %bb.bl ], [ %.lobit, %bb.bo ]
  %i.jr = call i32 @dt_dev_pixelpipe_cache_get(ptr noundef nonnull %0, i64 noundef %i.bq, i64 noundef %i.bp, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %.0364497, i32 noundef %i.jq) ; 0 uses
  %i.js = load atomic i32, ptr %i.i seq_cst, align 4
  %.not515 = icmp eq i32 %i.js, 0
  br i1 %.not515, label %bb.bq, label %bb.eh

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call fastcc void @dt_get_perf_times(ptr noundef %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i32 1, ptr %i.e, align 4, !tbaa !29
  %i.jt = getelementptr i8, ptr %.0364497, i64 952 ; 3 uses
  %.0364.val458 = load ptr, ptr %i.jt, align 8, !tbaa !262
  %i.ju = getelementptr inbounds nuw i8, ptr %.0364.val458, i64 496
  %i.jv = call i32 @g_strcmp0(ptr noundef nonnull %i.ju, ptr noundef nonnull @.str.149) #23
  %.not.i.i473.not = icmp eq i32 %i.jv, 0
  br i1 %.not.i.i473.not, label %bb.bx, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jw = getelementptr i8, ptr %0, i64 628
  %.val465 = load i32, ptr %i.jw, align 4, !tbaa !143
  %.not516 = icmp eq i32 %.val465, 0
  br i1 %.not516, label %bb.bx, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jx = getelementptr inbounds nuw i8, ptr %.0364497, i64 88
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !312
  %i.jz = call i32 %i.jy() #23
  %i.ka = and i32 %i.jz, 1
  %.not406 = icmp eq i32 %i.ka, 0
  %i.kb = icmp eq i64 %i.ja, %i.ji
  %or.cond452 = select i1 %.not406, i1 %i.kb, i1 false
  br i1 %or.cond452, label %bb.bt, label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  %i.kc = load i128, ptr %9, align 8
  %i.kd = load i128, ptr %5, align 1
  %i.ke = xor i128 %i.kc, %i.kd
  %i.kf = getelementptr i8, ptr %9, i64 16
  %i.kg = getelementptr i8, ptr %5, i64 16
  %i.kh = load i32, ptr %i.kf, align 8
  %i.ki = load i32, ptr %i.kg, align 1
  %i.kj = zext i32 %i.kh to i128
  %i.kk = zext i32 %i.ki to i128
  %i.kl = xor i128 %i.kj, %i.kk
  %i.km = or i128 %i.ke, %i.kl
  %i.kn = icmp ne i128 %i.km, 0
  %i.ko = zext i1 %i.kn to i32
  %.not408 = icmp eq i32 %i.ko, 0
  br i1 %.not408, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.kp = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !57
  %i.kq = and i32 %i.kp, 33554432
  %.not409 = icmp eq i32 %i.kq, 0
  br i1 %.not409, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.170, ptr noundef nonnull %0, ptr noundef nonnull %.0364497, i32 noundef -2, ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull @.str.74)
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.kr = load ptr, ptr %4, align 8, !tbaa !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.jb, ptr noundef nonnull align 16 dereferenceable(128) %i.jc, i64 128, i1 false), !tbaa.struct !150
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.jg, ptr noundef nonnull align 16 dereferenceable(128) %i.jc, i64 128, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.kr, ptr noundef nonnull align 16 dereferenceable(128) %i.jg, i64 128, i1 false), !tbaa.struct !150
  %i.ks = load ptr, ptr %2, align 8, !tbaa !36
  %i.kt = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.ku = load i32, ptr %i.bi, align 4, !tbaa !155
  %i.kv = sext i32 %i.ku to i64
  %i.kw = load i32, ptr %i.bm, align 4, !tbaa !156
  %i.kx = sext i32 %i.kw to i64
  %i.ky = lshr i64 %i.bh, 2
  %i.kz = mul i64 %i.ky, %i.kv
  %i.la = mul i64 %i.kz, %i.kx
  call void @dt_iop_image_copy(ptr noundef %i.ks, ptr noundef %i.kt, i64 noundef %i.la) #23
  br label %bb.eg

bb.bx:                                            ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %14, i8 0, i64 28, i1 false)
  %i.lb = getelementptr inbounds nuw i8, ptr %14, i64 12 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 3 uses
  call void @llvm.masked.store.v3f32.p0(<3 x float> <float -1.000000e+00, float poison, float -1.000000e+00>, ptr align 4 %i.lc, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !147
  %i.ld = getelementptr inbounds nuw i8, ptr %.0364497, i64 152
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !313
  call void %i.le(ptr noundef nonnull %.0364497, ptr noundef nonnull %i.iq, ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %14) #23
  %i.lf = load float, ptr %i.lc, align 4, !tbaa !314
  %i.lg = fcmp reassoc nsz arcp contract afn olt float %i.lf, 0.000000e+00
  br i1 %i.lg, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.lh = load float, ptr %14, align 16, !tbaa !316
  store float %i.lh, ptr %i.lc, align 4, !tbaa !314
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.li = load float, ptr %i.lb, align 4, !tbaa !317
  %i.lj = fcmp reassoc nsz arcp contract afn olt float %i.li, 0.000000e+00
  br i1 %i.lj, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.lk = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ll = load float, ptr %i.lk, align 8, !tbaa !318
  store float %i.ll, ptr %i.lb, align 4, !tbaa !317
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.lm = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !224 ; 2 uses
  %.not410 = icmp eq ptr %i.ln, null
  br i1 %.not410, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !267
  %.not411 = icmp eq i32 %i.lo, 0
  br i1 %.not411, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %15, i8 0, i64 28, i1 false)
  call void @tiling_callback_blendop(ptr noundef nonnull %.0364497, ptr noundef nonnull %i.iq, ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %15) #23
  %i.lp = load <4 x float>, ptr %14, align 16, !tbaa !147 ; 2 uses
  %i.lq = load <4 x float>, ptr %15, align 16, !tbaa !147 ; 2 uses
  %i.lr = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.lp, %i.lq
  %i.ls = select <4 x i1> %i.lr, <4 x float> %i.lp, <4 x float> %i.lq
  store <4 x float> %i.ls, ptr %14, align 16, !tbaa !147
  %i.lt = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.lv = load <2 x i32>, ptr %i.lt, align 16, !tbaa !29
  %i.lw = load <2 x i32>, ptr %i.lu, align 16, !tbaa !29
  %i.lx = call <2 x i32> @llvm.umax.v2i32(<2 x i32> %i.lv, <2 x i32> %i.lw)
  store <2 x i32> %i.lx, ptr %i.lt, align 16, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc, %bb.cb
  %i.ly = load atomic i32, ptr %i.i seq_cst, align 4
  %.not517 = icmp eq i32 %i.ly, 0
  br i1 %.not517, label %bb.cf, label %bb.ef

bb.cf:                                            ; preds = %bb.ce
  %i.lz = load ptr, ptr %i.iq, align 16, !tbaa !108
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 484
  store i32 %8, ptr %i.ma, align 4, !tbaa !288
  %i.mb = load ptr, ptr %i.b, align 8, !tbaa !36  ; 2 uses
  %i.mc = load ptr, ptr %i.d, align 8, !tbaa !145
  %i.md = call fastcc i32 @_pixelpipe_process_on_CPU(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.mb, ptr noundef %i.mc, ptr noundef %9, ptr noundef %2, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %.0364497, ptr noundef nonnull %i.iq, ptr noundef %14, ptr noundef %i.e, i32 noundef %8)
  %.not413 = icmp eq i32 %i.md, 0
  br i1 %.not413, label %bb.cg, label %bb.ef

bb.cg:                                            ; preds = %bb.cf
  %i.me = getelementptr i8, ptr %0, i64 628       ; 2 uses
  %.val464 = load i32, ptr %i.me, align 4, !tbaa !143
  %.not518 = icmp eq i32 %.val464, 0
  br i1 %.not518, label %dt_dev_pixelpipe_invalidate_cacheline.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.mf = load ptr, ptr %2, align 8, !tbaa !36
  %i.mg = load i32, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.mh = icmp sgt i32 %i.mg, 2
  br i1 %i.mh, label %.lr.ph.i474, label %dt_dev_pixelpipe_invalidate_cacheline.exit

.lr.ph.i474:                                      ; preds = %bb.ch
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !22
  %i.mk = getelementptr i8, ptr %0, i64 48
  %i.ml = getelementptr i8, ptr %0, i64 64
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ck, %.lr.ph.i474
  %i.mm = phi i32 [ %i.mg, %.lr.ph.i474 ], [ %i.ms, %bb.ck ]
  %indvars.iv.i475 = phi i64 [ 2, %.lr.ph.i474 ], [ %indvars.iv.next.i476, %bb.ck ] ; 4 uses
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %indvars.iv.i475
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !36
  %i.mp = icmp eq ptr %i.mo, %i.mf
  br i1 %i.mp, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %.val.i477 = load ptr, ptr %i.mk, align 8, !tbaa !25
  %.val8.i = load ptr, ptr %i.ml, align 8, !tbaa !27
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %.val.i477, i64 %indvars.iv.i475
  store i64 0, ptr %i.mq, align 8, !tbaa !28
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.val8.i, i64 %indvars.iv.i475
  store i32 0, ptr %i.mr, align 4, !tbaa !29
  %.pre.i = load i32, ptr %0, align 8, !tbaa !11
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.ms = phi i32 [ %i.mm, %bb.ci ], [ %.pre.i, %bb.cj ] ; 2 uses
  %indvars.iv.next.i476 = add nuw nsw i64 %indvars.iv.i475, 1 ; 2 uses
  %i.mt = sext i32 %i.ms to i64
  %i.mu = icmp slt i64 %indvars.iv.next.i476, %i.mt
  br i1 %i.mu, label %bb.ci, label %dt_dev_pixelpipe_invalidate_cacheline.exit

dt_dev_pixelpipe_invalidate_cacheline.exit:       ; preds = %bb.ck, %bb.ch, %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  %i.mv = load i32, ptr %i.e, align 4, !tbaa !29  ; 8 uses
  %i.mw = and i32 %i.mv, 1
  %.not415 = icmp eq i32 %i.mw, 0                 ; 2 uses
  br i1 %.not415, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %dt_dev_pixelpipe_invalidate_cacheline.exit
  %i.mx = and i32 %i.mv, 4
  %.not416 = icmp eq i32 %i.mx, 0
  %i.my = and i32 %i.mv, 2
  %.not417 = icmp eq i32 %i.my, 0
  %i.mz = select i1 %.not417, ptr @.str.6, ptr @.str.51
  %i.na = select i1 %.not416, ptr %i.mz, ptr @.str.172
  %i.nb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 32, ptr noundef nonnull @.str.171, ptr noundef nonnull %i.na) #23 ; 0 uses
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %dt_dev_pixelpipe_invalidate_cacheline.exit
  %i.nc = load i32, ptr %i.br, align 4, !tbaa !37
  %i.nd = call ptr @dt_dev_pixelpipe_type_to_str(i32 noundef %i.nc)
  %i.ne = getelementptr inbounds nuw i8, ptr %.0364497, i64 456 ; 5 uses
  %i.nf = call ptr @dt_iop_get_instance_id(ptr noundef %.0364497) #23
  %i.ng = and i32 %i.mv, 16
  %.not418 = icmp eq i32 %i.ng, 0
  %i.nh = and i32 %i.mv, 8
  %.not419 = icmp eq i32 %i.nh, 0
  %i.ni = select i1 %.not419, ptr @.str.6, ptr @.str.51
  %i.nj = select i1 %.not418, ptr %i.ni, ptr @.str.172
  %i.nk = and i32 %i.mv, 32
  %.not420 = icmp eq i32 %i.nk, 0
  %i.nl = select i1 %.not420, ptr @.str.6, ptr @.str.174
  br i1 %.not415, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.nm = getelementptr inbounds nuw i8, ptr %i.iq, i64 36
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !235
  %i.no = and i32 %i.nn, 1
  %.not422 = icmp eq i32 %i.no, 0
  %spec.select = select i1 %.not422, ptr @.str.6, ptr %i.f
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.np = phi ptr [ @.str.6, %bb.cm ], [ %spec.select, %bb.cn ]
  %i.nq = call fastcc i32 @_piece_wants_blending(ptr noundef nonnull %i.iq)
  %.not423 = icmp eq i32 %i.nq, 0
  %i.nr = select i1 %.not423, ptr @.str.6, ptr @.str.175
  %i.ns = and i32 %i.mv, 128
  %.not424 = icmp eq i32 %i.ns, 0
  %i.nt = and i32 %i.mv, 64
  %.not425 = icmp eq i32 %i.nt, 0
  %i.nu = select i1 %.not425, ptr @.str.6, ptr @.str.51
  %i.nv = select i1 %.not424, ptr %i.nu, ptr @.str.172
  call void (ptr, ptr, ptr, ...) @dt_show_times_f(ptr noundef nonnull %13, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.173, ptr noundef nonnull %i.nd, ptr noundef nonnull %i.ne, ptr noundef %i.nf, ptr noundef nonnull %i.nj, ptr noundef nonnull %i.nl, ptr noundef %i.np, ptr noundef nonnull %i.nr, ptr noundef nonnull %i.nv) #23
  %i.nw = load ptr, ptr %4, align 8, !tbaa !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.jb, ptr noundef nonnull align 16 dereferenceable(128) %i.jg, i64 128, i1 false), !tbaa.struct !150
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.nw, ptr noundef nonnull align 16 dereferenceable(128) %i.jg, i64 128, i1 false)
  br i1 %i.bf, label %bb.cp, label %dt_dev_pixelpipe_invalidate_cacheline.exit486

bb.cp:                                            ; preds = %bb.co
  %i.nx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !159 ; 3 uses
  %i.ny = load i32, ptr %i.nx, align 16, !tbaa !319
  %.not426 = icmp eq i32 %i.ny, 0
  br i1 %.not426, label %dt_dev_pixelpipe_invalidate_cacheline.exit486, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.nz = getelementptr inbounds nuw i8, ptr %.0364497, i64 672
  %i.oa = load i32, ptr %i.nz, align 16, !tbaa !117
  %.not427 = icmp eq i32 %i.oa, 0
  br i1 %.not427, label %dt_dev_pixelpipe_invalidate_cacheline.exit486, label %dt_dev_gui_module.exit479

dt_dev_gui_module.exit479:                        ; preds = %bb.cq
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nx, i64 88
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !304
  %i.od = icmp eq ptr %.0364497, %i.oc            ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nx, i64 2072
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !320
  %i.og = icmp eq ptr %i.of, %.0364497            ; 3 uses
  %.val455 = load i32, ptr %i.br, align 4, !tbaa !37
  %i.oh = and i32 %.val455, 22
  %.not428 = icmp eq i32 %i.oh, 0
  br i1 %.not428, label %bb.cy, label %bb.cr

bb.cr:                                            ; preds = %dt_dev_gui_module.exit479
  %.val461 = load i32, ptr %i.me, align 4, !tbaa !143
  %.not519 = icmp eq i32 %.val461, 0
  br i1 %.not519, label %bb.cs, label %bb.cy

bb.cs:                                            ; preds = %bb.cr
  %or.cond7 = select i1 %i.od, i1 true, i1 %i.og
  br i1 %or.cond7, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.oi = getelementptr inbounds nuw i8, ptr %.0364497, i64 64
  %i.oj = load ptr, ptr %i.oi, align 16, !tbaa !261
  %i.ok = call i32 %i.oj() #23
  %i.ol = and i32 %i.ok, 2097152
  %.not430 = icmp eq i32 %i.ol, 0
  br i1 %.not430, label %bb.cy, label %bb.cu

bb.cu:                                            ; preds = %bb.cs, %bb.ct
  %i.om = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !57
  %i.on = and i32 %i.om, 33554432
  %.not431 = icmp eq i32 %i.on, 0
  br i1 %.not431, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !182
  %i.oq = select i1 %i.og, ptr @.str.178, ptr @.str.6
  %i.or = select i1 %i.od, ptr @.str.179, ptr @.str.6
  call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.176, ptr noundef nonnull %0, ptr noundef nonnull %.0364497, i32 noundef %i.op, ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull @.str.177, ptr noundef nonnull %i.oq, ptr noundef nonnull %i.or, ptr noundef nonnull @.str.6)
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.os = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ot = load i32, ptr %i.os, align 8, !tbaa !155
  %i.ou = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !156
  %i.ow = mul nsw i32 %i.ov, %i.ot
  %i.ox = sext i32 %i.ow to i64
  %i.oy = mul i64 %i.ja, %i.ox
  call void @dt_dev_pixelpipe_important_cacheline(ptr noundef nonnull %0, ptr noundef %i.mb, i64 noundef %i.oy)
  %.val = load i32, ptr %i.br, align 4, !tbaa !37
  %i.oz = and i32 %.val, 2
  %i.pa = icmp ne i32 %i.oz, 0
  %or.cond11 = select i1 %i.pa, i1 %i.og, i1 false
  br i1 %or.cond11, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.pb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !159
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 2072
  store ptr null, ptr %i.pc, align 8, !tbaa !320
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cw, %bb.cx, %bb.ct, %bb.cr, %dt_dev_gui_module.exit479
  %i.pd = getelementptr inbounds nuw i8, ptr %.0364497, i64 880
  %i.pe = load i32, ptr %i.pd, align 16, !tbaa !321
  %.not432 = icmp eq i32 %i.pe, 0
  br i1 %.not432, label %dt_dev_pixelpipe_invalidate_cacheline.exit486, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %.val453 = load i32, ptr %i.br, align 4, !tbaa !37
  %i.pf = and i32 %.val453, 6
  %.not433 = icmp eq i32 %i.pf, 0
  br i1 %.not433, label %dt_dev_pixelpipe_invalidate_cacheline.exit486, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.pg = getelementptr inbounds nuw i8, ptr %.0364497, i64 496
  %i.ph = load i32, ptr %i.pg, align 16, !tbaa !322
  %i.pi = and i32 %i.ph, 4
  %.not434 = icmp eq i32 %i.pi, 0
  br i1 %.not434, label %dt_dev_pixelpipe_invalidate_cacheline.exit486, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.pj = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !57
  %i.pk = and i32 %i.pj, 33554432
  %.not435 = icmp eq i32 %i.pk, 0
  br i1 %.not435, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.181, ptr noundef nonnull %0, ptr noundef nonnull %.0364497, i32 noundef -2, ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull @.str.74)
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 600
  store i32 1, ptr %i.pl, align 8, !tbaa !144
  %i.pm = load ptr, ptr %2, align 8, !tbaa !36
  %i.pn = load i32, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.po = icmp sgt i32 %i.pn, 2
  br i1 %i.po, label %.lr.ph.i480, label %dt_dev_pixelpipe_invalidate_cacheline.exit486

.lr.ph.i480:                                      ; preds = %bb.dd
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !22
  %i.pr = getelementptr i8, ptr %0, i64 48
  %i.ps = getelementptr i8, ptr %0, i64 64
  br label %bb.de

bb.de:                                            ; preds = %bb.dg, %.lr.ph.i480
  %i.pt = phi i32 [ %i.pn, %.lr.ph.i480 ], [ %i.pz, %bb.dg ]
  %indvars.iv.i481 = phi i64 [ 2, %.lr.ph.i480 ], [ %indvars.iv.next.i482, %bb.dg ] ; 4 uses
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %indvars.iv.i481
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !36
  %i.pw = icmp eq ptr %i.pv, %i.pm
  br i1 %i.pw, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %.val.i483 = load ptr, ptr %i.pr, align 8, !tbaa !25
  %.val8.i484 = load ptr, ptr %i.ps, align 8, !tbaa !27
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %.val.i483, i64 %indvars.iv.i481
  store i64 0, ptr %i.px, align 8, !tbaa !28
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %.val8.i484, i64 %indvars.iv.i481
  store i32 0, ptr %i.py, align 4, !tbaa !29
  %.pre.i485 = load i32, ptr %0, align 8, !tbaa !11
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.pz = phi i32 [ %i.pt, %bb.de ], [ %.pre.i485, %bb.df ] ; 2 uses
  %indvars.iv.next.i482 = add nuw nsw i64 %indvars.iv.i481, 1 ; 2 uses
  %i.qa = sext i32 %i.pz to i64
  %i.qb = icmp slt i64 %indvars.iv.next.i482, %i.qa
  br i1 %i.qb, label %bb.de, label %dt_dev_pixelpipe_invalidate_cacheline.exit486

dt_dev_pixelpipe_invalidate_cacheline.exit486:    ; preds = %bb.dg, %bb.dd, %bb.cy, %bb.cz, %bb.da, %bb.cq, %bb.cp, %bb.co
  %i.qc = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !57
  %i.qd = and i32 %i.qc, 2048
  %.not436 = icmp eq i32 %i.qd, 0
  br i1 %.not436, label %bb.du, label %bb.dh

bb.dh:                                            ; preds = %dt_dev_pixelpipe_invalidate_cacheline.exit486
  %.0364.val457 = load ptr, ptr %i.jt, align 8, !tbaa !262
  %i.qe = getelementptr inbounds nuw i8, ptr %.0364.val457, i64 496
  %i.qf = call i32 @g_strcmp0(ptr noundef nonnull %i.qe, ptr noundef nonnull @.str.149) #23
  %.not.i.i487.not = icmp eq i32 %i.qf, 0
  br i1 %.not.i.i487.not, label %bb.du, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.qg = load ptr, ptr %4, align 8, !tbaa !145   ; 2 uses
  %i.qh = load i32, ptr %i.qg, align 16, !tbaa !323 ; 4 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qg, i64 4
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !324
  %i.qk = icmp eq i32 %i.qj, 1
  br i1 %i.qk, label %bb.dj, label %bb.du

bb.dj:                                            ; preds = %bb.di
  %i.ql = icmp eq i32 %i.qh, 4
  switch i32 %i.qh, label %bb.du [
    i32 4, label %bb.dk
    i32 1, label %bb.dk
  ]

bb.dk:                                            ; preds = %bb.dj, %bb.dj
  %i.qm = add nsw i32 %i.qh, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, ptr noundef nonnull align 16 dereferenceable(16) @__const._dev_pixelpipe_process_rec.min, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, ptr noundef nonnull align 16 dereferenceable(16) @__const._dev_pixelpipe_process_rec.max, i64 16, i1 false)
  %i.qn = load i32, ptr %i.bi, align 4, !tbaa !155
  %i.qo = mul nsw i32 %i.qn, %i.qh
  %i.qp = load i32, ptr %i.bm, align 4, !tbaa !156
  %i.qq = mul nsw i32 %i.qo, %i.qp                ; 2 uses
  %i.qr = icmp sgt i32 %i.qq, 0
  br i1 %i.qr, label %.lr.ph.preheader, label %.thread565

.lr.ph.preheader:                                 ; preds = %bb.dk
  %wide.trip.count = zext nneg i32 %i.qq to i64   ; 2 uses
  br label %.lr.ph.outer

.lr.ph.outer:                                     ; preds = %.thread, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ %indvars.iv.next558, %.thread ], [ 0, %.lr.ph.preheader ]
  %i.qs = phi i1 [ false, %.thread ], [ true, %.lr.ph.preheader ]
  %.0359522.ph = phi i32 [ %.0359522, %.thread ], [ 0, %.lr.ph.preheader ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.do
  %i.qt = icmp eq i32 %.2361, 0                   ; 2 uses
  br i1 %i.qs, label %bb.dp, label %.split567

.lr.ph:                                           ; preds = %.lr.ph.outer, %bb.do
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.do ], [ %indvars.iv.ph, %.lr.ph.outer ] ; 4 uses
  %.0359522 = phi i32 [ %.2361, %bb.do ], [ %.0359522.ph, %.lr.ph.outer ] ; 4 uses
  %i.qu = trunc nuw nsw i64 %indvars.iv to i32
  %i.qv = and i32 %i.qm, %i.qu                    ; 2 uses
  %i.qw = icmp samesign ult i32 %i.qv, 3
  br i1 %i.qw, label %bb.dl, label %bb.do

bb.dl:                                            ; preds = %.lr.ph
  %i.qx = load ptr, ptr %2, align 8, !tbaa !36
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv
  %i.qz = load float, ptr %i.qy, align 4, !tbaa !147 ; 4 uses
  %i.ra = fcmp ord float %i.qz, 0.000000e+00
  br i1 %i.ra, label %bb.dm, label %.thread

bb.dm:                                            ; preds = %bb.dl
  %i.rb = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.qz) #26
  %i.rc = fcmp reassoc nsz arcp contract afn une float %i.rb, +inf
  br i1 %i.rc, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.rd = zext nneg i32 %i.qv to i64              ; 2 uses
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.rd ; 2 uses
  %i.rf = load float, ptr %i.re, align 4, !tbaa !147
  %i.rg = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.qz, float %i.rf)
  store float %i.rg, ptr %i.re, align 4, !tbaa !147
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.rd ; 2 uses
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !147
  %i.rj = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.qz, float %i.ri)
  store float %i.rj, ptr %i.rh, align 4, !tbaa !147
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm, %.lr.ph
  %.2361 = phi i32 [ %.0359522, %.lr.ph ], [ %.0359522, %bb.dn ], [ 1, %bb.dm ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

.thread:                                          ; preds = %bb.dl
  %indvars.iv.next558 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not559 = icmp eq i64 %indvars.iv.next558, %wide.trip.count
  br i1 %exitcond.not559, label %._crit_edge.thread562, label %.lr.ph.outer

._crit_edge.thread562:                            ; preds = %.thread
  %i.rk = icmp eq i32 %.0359522, 0
  br label %.split567

.split567:                                        ; preds = %._crit_edge.thread562, %._crit_edge
  %i.rl = phi i1 [ %i.rk, %._crit_edge.thread562 ], [ %i.qt, %._crit_edge ]
  %i.rm = call ptr @dt_iop_get_instance_id(ptr noundef %.0364497) #23
  %i.rn = load i32, ptr %i.br, align 4, !tbaa !37
  %i.ro = call ptr @dt_dev_pixelpipe_type_to_str(i32 noundef %i.rn)
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.182, ptr noundef nonnull %i.ne, ptr noundef %i.rm, ptr noundef nonnull %i.ro) #23
  br i1 %i.rl, label %.thread565, label %bb.dq

bb.dp:                                            ; preds = %._crit_edge
  br i1 %i.qt, label %.thread565, label %bb.dq

bb.dq:                                            ; preds = %.split567, %bb.dp
  %i.rp = call ptr @dt_iop_get_instance_id(ptr noundef %.0364497) #23
  %i.rq = load i32, ptr %i.br, align 4, !tbaa !37
  %i.rr = call ptr @dt_dev_pixelpipe_type_to_str(i32 noundef %i.rq)
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.183, ptr noundef nonnull %i.ne, ptr noundef %i.rp, ptr noundef nonnull %i.rr) #23
  br label %.thread565

.thread565:                                       ; preds = %bb.dk, %.split567, %bb.dq, %bb.dp
  %i.rs = call ptr @dt_iop_get_instance_id(ptr noundef %.0364497) #23 ; 2 uses
  %i.rt = load float, ptr %i.g, align 16, !tbaa !147
  %i.ru = fpext reassoc nsz arcp contract afn float %i.rt to double ; 2 uses
  br i1 %i.ql, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %.thread565
  %i.rv = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !147
  %i.rx = fpext reassoc nsz arcp contract afn float %i.rw to double
  %i.ry = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.rz = load float, ptr %i.ry, align 8, !tbaa !147
  %i.sa = fpext reassoc nsz arcp contract afn float %i.rz to double
  %i.sb = load float, ptr %i.h, align 16, !tbaa !147
  %i.sc = fpext reassoc nsz arcp contract afn float %i.sb to double
  %i.sd = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.se = load float, ptr %i.sd, align 4, !tbaa !147
  %i.sf = fpext reassoc nsz arcp contract afn float %i.se to double
  %i.sg = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.sh = load float, ptr %i.sg, align 8, !tbaa !147
  %i.si = fpext reassoc nsz arcp contract afn float %i.sh to double
  %i.sj = load i32, ptr %i.br, align 4, !tbaa !37
  %i.sk = call ptr @dt_dev_pixelpipe_type_to_str(i32 noundef %i.sj)
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.184, ptr noundef nonnull %i.ne, ptr noundef %i.rs, double noundef %i.ru, double noundef %i.rx, double noundef %i.sa, double noundef %i.sc, double noundef %i.sf, double noundef %i.si, ptr noundef nonnull %i.sk) #23
  br label %bb.dt

bb.ds:                                            ; preds = %.thread565
  %i.sl = load float, ptr %i.h, align 16, !tbaa !147
  %i.sm = fpext reassoc nsz arcp contract afn float %i.sl to double
  %i.sn = load i32, ptr %i.br, align 4, !tbaa !37
  %i.so = call ptr @dt_dev_pixelpipe_type_to_str(i32 noundef %i.sn)
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.185, ptr noundef nonnull %i.ne, ptr noundef %i.rs, double noundef %i.ru, double noundef %i.sm, ptr noundef nonnull %i.so) #23
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  br label %bb.du

bb.du:                                            ; preds = %bb.di, %bb.dt, %bb.dj, %bb.dh, %dt_dev_pixelpipe_invalidate_cacheline.exit486
  %i.sp = load atomic i32, ptr %i.i seq_cst, align 4
  %.not520 = icmp eq i32 %i.sp, 0
  br i1 %.not520, label %bb.dv, label %bb.ee

bb.dv:                                            ; preds = %bb.du
  %i.sq = load i32, ptr %1, align 16, !tbaa !319
  %.not443 = icmp eq i32 %i.sq, 0
  br i1 %.not443, label %bb.ed, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.sr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !307
  %.not444 = icmp eq i32 %i.ss, 0
  br i1 %.not444, label %bb.dx, label %bb.ed

bb.dx:                                            ; preds = %bb.dw
  %i.st = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.su = load ptr, ptr %i.st, align 16, !tbaa !230
  %i.sv = icmp eq ptr %0, %i.su
  br i1 %i.sv, label %bb.dy, label %bb.ed

bb.dy:                                            ; preds = %bb.dx
  %.0364.val = load ptr, ptr %i.jt, align 8, !tbaa !262
  %i.sw = getelementptr inbounds nuw i8, ptr %.0364.val, i64 496
  %i.sx = call i32 @g_strcmp0(ptr noundef nonnull %i.sw, ptr noundef nonnull @.str.149) #23
  %.not.i.i488.not = icmp eq i32 %i.sx, 0
  br i1 %.not.i.i488.not, label %bb.dz, label %bb.ed

bb.dz:                                            ; preds = %bb.dy
  %i.sy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !129 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 32
end_hunk_1
