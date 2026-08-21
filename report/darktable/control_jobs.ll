inline.NumInlined: 84
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_control_write_sidecar_files_job_run:bb.a
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.an = call i32 @sqlite3_step(ptr noundef %i.am) #17 ; 0 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.ap = call i32 @sqlite3_reset(ptr noundef %i.ao) #17 ; 0 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.ar = call i32 @sqlite3_clear_bindings(ptr noundef %i.aq) #17 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  call void @dt_image_cache_read_release(ptr noundef nonnull %i.z) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %i.as = add i64 %.02336, 1                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.at = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #17 ; 0 uses
  %i.au = load <2 x i64>, ptr %1, align 16, !tbaa !228
  %i.av = add nsw <2 x i64> %i.au, <i64 -1290608000, i64 0>
  %i.aw = sitofp <2 x i64> %i.av to <2 x double>  ; 2 uses
  %i.ax = extractelement <2 x double> %i.aw, i64 1
  %i.ay = fmul reassoc nnan nsz arcp contract afn double %i.ax, f0x3EB0C6F7A0B5ED8D
  %i.az = extractelement <2 x double> %i.aw, i64 0
  %i.ba = fadd reassoc nsz arcp contract afn double %i.ay, %i.az ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.bb = fadd reassoc nsz arcp contract afn double %.03135, 5.000000e-01
  %i.bc = fcmp reassoc nsz arcp contract afn ogt double %i.ba, %i.bb
  br i1 %i.bc, label %bb.n, label %_update_progress.exit

bb.n:                                             ; preds = %bb.m
  %i.bd = uitofp reassoc nsz arcp contract afn i64 %i.as to double
  %i.be = fmul reassoc nsz arcp contract afn double %i.bd, %i.s ; 2 uses
  %i.bf = fcmp reassoc nsz arcp contract afn ogt double %i.be, 1.000000e+00
  %i.bg = select reassoc nsz arcp contract afn i1 %i.bf, double 1.000000e+00, double %i.be
  call void @dt_control_job_set_progress(ptr noundef %0, double noundef %i.bg) #17
  br label %_update_progress.exit

_update_progress.exit:                            ; preds = %bb.m, %bb.n
  %.1 = phi nsz double [ %i.ba, %bb.n ], [ %.03135, %bb.m ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.037, i64 8
  %.0 = load ptr, ptr %i.bh, align 8, !tbaa !227  ; 2 uses
  %.not26 = icmp eq ptr %.0, null
  br i1 %.not26, label %.critedge, label %bb.f
}

; Function Attrs: nounwind uwtable
define void @dt_control_import(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %.not = icmp eq ptr %i.c, null
  %i.d = icmp ne i32 %2, 0
  %i.e = and i1 %i.d, %.not                       ; 2 uses
  %i.f = zext i1 %i.e to i32
  store i32 %i.f, ptr %i.a, align 4, !tbaa !47
  %i.g = select i1 %i.e, ptr %i.a, ptr null
  %i.h = tail call ptr (ptr, ptr, ...) @dt_control_job_create(ptr noundef nonnull @_control_import_job_run, ptr noundef nonnull @.str.178) #17 ; 6 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_control_import_job_create.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noalias noundef dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #18 ; 5 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #21 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !17
  %.not7.i.i = icmp eq ptr %i.j, null
  br i1 %.not7.i.i, label %bb.d, label %_control_import_alloc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_control_import_job_cleanup(ptr noundef nonnull %i.i)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  tail call void @dt_control_job_dispose(ptr noundef nonnull %i.h) #17
  br label %_control_import_job_create.exit

_control_import_alloc.exit.i:                     ; preds = %bb.c
  %i.l = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.178, i32 noundef 5) #17
  tail call void @dt_control_job_add_progress(ptr noundef nonnull %i.h, ptr noundef %i.l, i32 noundef 1) #17
  tail call void @dt_control_job_set_params(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull @_control_import_job_cleanup) #17
  %i.m = tail call ptr @g_list_sort(ptr noundef nonnull %0, ptr noundef nonnull @_sort_filename) #17
  store ptr %i.m, ptr %i.i, align 8, !tbaa !15
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !17   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.g, ptr %i.o, align 8, !tbaa !229
  %.not26.i = icmp eq i32 %2, 0
  br i1 %.not26.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_control_import_alloc.exit.i
  store ptr null, ptr %i.n, align 8, !tbaa !232
  br label %_control_import_job_create.exit

bb.g:                                             ; preds = %_control_import_alloc.exit.i
  %i.p = call ptr (...) @dt_import_session_new() #17
  store ptr %i.p, ptr %i.n, align 8, !tbaa !232
  %i.q = call ptr @dt_conf_get_string(ptr noundef nonnull @.str.179) #17 ; 2 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !232
  call void @dt_import_session_set_name(ptr noundef %i.r, ptr noundef %i.q) #17
  %.not27.i = icmp eq ptr %1, null
  br i1 %.not27.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load i8, ptr %1, align 1, !tbaa !50
  %.not28.i = icmp eq i8 %i.s, 0
  br i1 %.not28.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !232
  call void @dt_import_session_set_time(ptr noundef %i.t, ptr noundef nonnull %1) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  call void @g_free(ptr noundef %i.q) #17
  br label %_control_import_job_create.exit

_control_import_job_create.exit:                  ; preds = %bb.a, %bb.e, %bb.f, %bb.j
  %.1.i = phi ptr [ null, %bb.a ], [ null, %bb.e ], [ %i.h, %bb.j ], [ %i.h, %bb.f ]
  %i.u = call i32 @dt_control_add_job(i32 noundef 0, ptr noundef %.1.i) #17 ; 0 uses
  %i.v = load i32, ptr %i.a, align 4, !tbaa !47
  %.not45 = icmp eq i32 %i.v, 0
  br i1 %.not45, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_control_import_job_create.exit, %.lr.ph
  call void @g_usleep(i64 noundef 100) #17
  %i.w = load i32, ptr %i.a, align 4, !tbaa !47
  %.not4 = icmp eq i32 %i.w, 0
  br i1 %.not4, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_control_import_job_create.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

declare void @g_usleep(i64 noundef) local_unnamed_addr #1

declare void @dt_gui_cursor_set_busy(...) local_unnamed_addr #1

declare ptr @dt_act_on_get_images(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @_control_image_enumerator_cleanup(ptr noundef captures(none) initializes((16, 24)) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  tail call void @g_list_free(ptr noundef %i.a) #17
  store ptr null, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !11
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_main_context_invoke(ptr noundef null, ptr noundef nonnull @_cursor_clear_busy, ptr noundef null) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @free(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @g_main_context_invoke(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare void @dt_control_job_set_progress_message(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_control_merge_hdr_mime(ptr nofree readnone captures(none) %0) #9 {
bb.a:
  ret ptr @.str.67
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_control_merge_hdr_bpp(ptr nofree readnone captures(none) %0) #9 {
bb.a:
  ret i32 32
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_control_merge_hdr_process(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 %3, ptr nofree readnone captures(none) %4, ptr nofree readnone captures(none) %5, i32 %6, i32 noundef %7, i32 %8, i32 %9, ptr nofree readnone captures(none) %10, i32 %11) #0 {
bb.a:
  %12 = alloca %struct.dt_image_t, align 16       ; 19 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 54 uses
  %i.c = tail call ptr @dt_image_cache_get(i32 noundef %7, i8 noundef signext 114) #17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1888) %12, ptr noundef nonnull align 16 dereferenceable(1888) %i.c, i64 1888, i1 false), !tbaa.struct !233
  tail call void @dt_image_cache_read_release(ptr noundef nonnull %i.c) #17
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !51  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.preheader246, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !31
  br label %.thread

.preheader246:                                    ; preds = %bb.a
  store i32 %7, ptr %i.b, align 16, !tbaa !48
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 1496
  %i.g = load i32, ptr %i.f, align 8, !tbaa !237
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 1404
  %i.i = load i32, ptr %i.h, align 4, !tbaa !238  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 1408
  %i.k = load i32, ptr %i.j, align 16, !tbaa !239 ; 7 uses
  %i.l = tail call i32 @dt_rawspeed_crop_dcraw_filters(i32 noundef %i.g, i32 noundef %i.i, i32 noundef %i.k) #17
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.l, ptr %i.m, align 4, !tbaa !52
  %i.n = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %i.o = shufflevector <4 x i32> %i.n, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.p = add <4 x i32> %i.o, <i32 600, i32 601, i32 602, i32 603>
  %i.q = srem <4 x i32> %i.p, splat (i32 6)
  %i.r = trunc nsw <4 x i32> %i.q to <4 x i8>     ; 4 uses
  %i.s = extractelement <4 x i8> %i.r, i64 3      ; 6 uses
  %i.t = extractelement <4 x i8> %i.r, i64 2      ; 6 uses
  %i.u = extractelement <4 x i8> %i.r, i64 1      ; 6 uses
  %i.v = extractelement <4 x i8> %i.r, i64 0      ; 6 uses
  %i.w = add i32 %i.i, 605
  %i.x = srem i32 %i.w, 6
  %i.y = sext i32 %i.x to i64                     ; 6 uses
  %i.z = add i32 %i.i, 604
  %i.aa = srem i32 %i.z, 6
  %i.ab = sext i32 %i.aa to i64                   ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = add i32 %i.k, 600
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 1500 ; 6 uses
  %i.af = srem i32 %i.ad, 6
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [6 x i8], ptr %i.ae, i64 %i.ag ; 6 uses
  %i.ai = sext i8 %i.v to i64
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !50
  store i8 %i.ak, ptr %i.ac, align 8, !tbaa !50
  %i.al = sext i8 %i.u to i64
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !50
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !50
  %i.ap = sext i8 %i.t to i64
  %i.aq = getelementptr inbounds i8, ptr %i.ah, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !50
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 %i.ar, ptr %i.as, align 2, !tbaa !50
  %i.at = sext i8 %i.s to i64
  %i.au = getelementptr inbounds i8, ptr %i.ah, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !50
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !50
  %i.ax = getelementptr inbounds i8, ptr %i.ah, i64 %i.ab
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !50
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i8 %i.ay, ptr %i.az, align 4, !tbaa !50
  %i.ba = getelementptr inbounds i8, ptr %i.ah, i64 %i.y
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !50
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !50
  %i.bd = add i32 %i.k, 601
  %i.be = srem i32 %i.bd, 6
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [6 x i8], ptr %i.ae, i64 %i.bf ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.bi = sext i8 %i.v to i64
  %i.bj = getelementptr inbounds i8, ptr %i.bg, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !50
  store i8 %i.bk, ptr %i.bh, align 2, !tbaa !50
  %i.bl = sext i8 %i.u to i64
  %i.bm = getelementptr inbounds i8, ptr %i.bg, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !50
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !50
  %i.bp = sext i8 %i.t to i64
  %i.bq = getelementptr inbounds i8, ptr %i.bg, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !50
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 %i.br, ptr %i.bs, align 16, !tbaa !50
  %i.bt = sext i8 %i.s to i64
  %i.bu = getelementptr inbounds i8, ptr %i.bg, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !50
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !50
  %i.bx = getelementptr inbounds i8, ptr %i.bg, i64 %i.ab
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !50
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  store i8 %i.by, ptr %i.bz, align 2, !tbaa !50
  %i.ca = getelementptr inbounds i8, ptr %i.bg, i64 %i.y
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !50
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 19
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !50
  %i.cd = add i32 %i.k, 602
  %i.ce = srem i32 %i.cd, 6
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [6 x i8], ptr %i.ae, i64 %i.cf ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ci = sext i8 %i.v to i64
  %i.cj = getelementptr inbounds i8, ptr %i.cg, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !50
  store i8 %i.ck, ptr %i.ch, align 4, !tbaa !50
  %i.cl = sext i8 %i.u to i64
  %i.cm = getelementptr inbounds i8, ptr %i.cg, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !50
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 21
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !50
  %i.cp = sext i8 %i.t to i64
  %i.cq = getelementptr inbounds i8, ptr %i.cg, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !50
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i8 %i.cr, ptr %i.cs, align 2, !tbaa !50
  %i.ct = sext i8 %i.s to i64
  %i.cu = getelementptr inbounds i8, ptr %i.cg, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !50
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !50
  %i.cx = getelementptr inbounds i8, ptr %i.cg, i64 %i.ab
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !50
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 %i.cy, ptr %i.cz, align 8, !tbaa !50
  %i.da = getelementptr inbounds i8, ptr %i.cg, i64 %i.y
  %i.db = load i8, ptr %i.da, align 1, !tbaa !50
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !50
  %i.dd = add i32 %i.k, 603
  %i.de = srem i32 %i.dd, 6
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [6 x i8], ptr %i.ae, i64 %i.df ; 6 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.di = sext i8 %i.v to i64
  %i.dj = getelementptr inbounds i8, ptr %i.dg, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !50
  store i8 %i.dk, ptr %i.dh, align 2, !tbaa !50
  %i.dl = sext i8 %i.u to i64
  %i.dm = getelementptr inbounds i8, ptr %i.dg, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !50
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 27
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !50
  %i.dp = sext i8 %i.t to i64
  %i.dq = getelementptr inbounds i8, ptr %i.dg, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !50
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i8 %i.dr, ptr %i.ds, align 4, !tbaa !50
  %i.dt = sext i8 %i.s to i64
  %i.du = getelementptr inbounds i8, ptr %i.dg, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !50
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 29
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !50
  %i.dx = getelementptr inbounds i8, ptr %i.dg, i64 %i.ab
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !50
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  store i8 %i.dy, ptr %i.dz, align 2, !tbaa !50
  %i.ea = getelementptr inbounds i8, ptr %i.dg, i64 %i.y
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !50
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 31
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !50
  %i.ed = add i32 %i.k, 604
  %i.ee = srem i32 %i.ed, 6
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [6 x i8], ptr %i.ae, i64 %i.ef ; 6 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ei = sext i8 %i.v to i64
  %i.ej = getelementptr inbounds i8, ptr %i.eg, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !50
  store i8 %i.ek, ptr %i.eh, align 16, !tbaa !50
  %i.el = sext i8 %i.u to i64
  %i.em = getelementptr inbounds i8, ptr %i.eg, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !50
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !50
  %i.ep = sext i8 %i.t to i64
  %i.eq = getelementptr inbounds i8, ptr %i.eg, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !50
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 34
  store i8 %i.er, ptr %i.es, align 2, !tbaa !50
  %i.et = sext i8 %i.s to i64
  %i.eu = getelementptr inbounds i8, ptr %i.eg, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !50
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 35
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !50
  %i.ex = getelementptr inbounds i8, ptr %i.eg, i64 %i.ab
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !50
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i8 %i.ey, ptr %i.ez, align 4, !tbaa !50
  %i.fa = getelementptr inbounds i8, ptr %i.eg, i64 %i.y
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !50
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 37
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !50
  %i.fd = add i32 %i.k, 605
  %i.fe = srem i32 %i.fd, 6
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [6 x i8], ptr %i.ae, i64 %i.ff ; 6 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 38
  %i.fi = sext i8 %i.v to i64
  %i.fj = getelementptr inbounds i8, ptr %i.fg, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !50
  store i8 %i.fk, ptr %i.fh, align 2, !tbaa !50
  %i.fl = sext i8 %i.u to i64
  %i.fm = getelementptr inbounds i8, ptr %i.fg, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !50
  %i.fo = getelementptr inbounds nuw i8, ptr %i.b, i64 39
  store i8 %i.fn, ptr %i.fo, align 1, !tbaa !50
  %i.fp = sext i8 %i.t to i64
  %i.fq = getelementptr inbounds i8, ptr %i.fg, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !50
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i8 %i.fr, ptr %i.fs, align 8, !tbaa !50
  %i.ft = sext i8 %i.s to i64
  %i.fu = getelementptr inbounds i8, ptr %i.fg, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !50
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 41
  store i8 %i.fv, ptr %i.fw, align 1, !tbaa !50
  %i.fx = getelementptr inbounds i8, ptr %i.fg, i64 %i.ab
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !50
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 42
  store i8 %i.fy, ptr %i.fz, align 2, !tbaa !50
  %i.ga = getelementptr inbounds i8, ptr %i.fg, i64 %i.y
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !50
  %i.gc = getelementptr inbounds nuw i8, ptr %i.b, i64 43
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !50
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !240 ; 2 uses
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !241 ; 2 uses
  %i.gi = sext i32 %i.gh to i64
  %i.gj = mul nsw i64 %i.gi, %i.gf                ; 2 uses
  %i.gk = tail call noalias ptr @calloc(i64 noundef %i.gj, i64 noundef 4) #18 ; 3 uses
  store ptr %i.gk, ptr %i.d, align 16, !tbaa !51
  %i.gl = tail call noalias ptr @calloc(i64 noundef %i.gj, i64 noundef 4) #18 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.gl, ptr %i.gm, align 8, !tbaa !31
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i32 %i.ge, ptr %i.gn, align 16, !tbaa !29
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  store i32 %i.gh, ptr %i.go, align 4, !tbaa !30
  %i.gp = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !242
  %i.gr = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 %i.gq, ptr %i.gr, align 8, !tbaa !243
  %i.gs = getelementptr inbounds nuw i8, ptr %12, i64 1776
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.gt, ptr noundef nonnull align 16 dereferenceable(12) %i.gs, i64 12, i1 false), !tbaa !32
  %i.gu = getelementptr inbounds nuw i8, ptr %12, i64 1616 ; 2 uses
  %i.gv = load float, ptr %i.gu, align 16, !tbaa !32
  %i.gw = tail call float @llvm.fabs.f32(float %i.gv)
  %i.gx = fcmp ueq float %i.gw, +inf
  br i1 %i.gx, label %.preheader241, label %.preheader245

.preheader245:                                    ; preds = %.preheader246
  %13 = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %13, ptr noundef nonnull align 16 dereferenceable(36) %i.gu, i64 36, i1 false), !tbaa !32
  %i.gy = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.gy, i8 0, i64 12, i1 false), !tbaa !32
  br label %.loopexit242

.preheader241:                                    ; preds = %.preheader246
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 1792
  %scevgep280 = getelementptr i8, ptr %i.b, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %scevgep280, ptr noundef nonnull align 16 dereferenceable(48) %14, i64 48, i1 false), !tbaa !32
  br label %.loopexit242

.loopexit242:                                     ; preds = %.preheader245, %.preheader241
  %.not220 = icmp eq ptr %i.gk, null
  br i1 %.not220, label %.loopexit.sink.split, label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %.loopexit242
  %i.gz = phi ptr [ %i.gl, %.loopexit242 ], [ %.pre, %..thread_crit_edge ] ; 10 uses
  %i.ha = phi ptr [ %i.gk, %.loopexit242 ], [ %i.e, %..thread_crit_edge ] ; 13 uses
  %.not221 = icmp eq ptr %i.gz, null
  br i1 %.not221, label %.loopexit.sink.split, label %bb.b

bb.b:                                             ; preds = %.thread
  %i.hb = getelementptr inbounds nuw i8, ptr %12, i64 1488
  %i.hc = getelementptr inbounds nuw i8, ptr %12, i64 1496
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !237
  %i.he = icmp eq i32 %i.hd, 0
  %i.hf = load i32, ptr %i.hb, align 16
  %i.hg = icmp ne i32 %i.hf, 1
  %or.cond = select i1 %i.he, i1 true, i1 %i.hg
  %i.hh = getelementptr inbounds nuw i8, ptr %12, i64 1492
  %i.hi = load i32, ptr %i.hh, align 4
  %i.hj = icmp ne i32 %i.hi, 2
  %or.cond7 = select i1 %or.cond, i1 true, i1 %i.hj
  br i1 %or.cond7, label %.loopexit.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !240 ; 5 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.hn = load i32, ptr %i.hm, align 16, !tbaa !29
  %.not222 = icmp eq i32 %i.hl, %i.hn
  br i1 %.not222, label %bb.d, label %.loopexit.sink.split

bb.d:                                             ; preds = %bb.c
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !241 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !30
  %.not223 = icmp eq i32 %i.hp, %i.hr
  br i1 %.not223, label %bb.e, label %.loopexit.sink.split

bb.e:                                             ; preds = %bb.d
  %i.hs = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !243
  %i.hu = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !242
  %.not224 = icmp eq i32 %i.ht, %i.hv
  br i1 %.not224, label %bb.f, label %.loopexit.sink.split

bb.f:                                             ; preds = %bb.e
  %i.hw = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.hx = load float, ptr %i.hw, align 16, !tbaa !244 ; 2 uses
  %i.hy = fcmp reassoc nsz arcp contract afn ogt float %i.hx, 0.000000e+00
  %i.hz = select reassoc nsz arcp contract afn i1 %i.hy, float %i.hx, float 2.200000e+01
  %i.ia = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ib = load float, ptr %i.ia, align 8, !tbaa !245 ; 2 uses
  %i.ic = fcmp reassoc nsz arcp contract afn ogt float %i.ib, 0.000000e+00
  %i.id = fmul reassoc nsz arcp contract afn float %i.ib, 5.000000e-01
  %i.ie = select i1 %i.ic, float %i.id, float 4.000000e+00
  %i.if = fdiv reassoc nsz arcp contract afn float %i.ie, %i.hz ; 2 uses
  %i.ig = fmul reassoc nsz arcp contract afn float %i.if, %i.if
  %i.ih = getelementptr inbounds nuw i8, ptr %12, i64 20
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !246 ; 2 uses
  %i.ij = fcmp reassoc nsz arcp contract afn ogt float %i.ii, 0.000000e+00
  %i.ik = select reassoc nsz arcp contract afn i1 %i.ij, float %i.ii, float 1.000000e+02 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.im = load float, ptr %i.il, align 8, !tbaa !247 ; 2 uses
  %i.in = fcmp reassoc nsz arcp contract afn ogt float %i.im, 0.000000e+00
  %i.io = select reassoc nsz arcp contract afn i1 %i.in, float %i.im, float 1.000000e+00
  %i.ip = fmul reassoc nsz arcp contract afn float %i.io, %i.ig ; 2 uses
  %i.iq = fmul reassoc nsz arcp contract afn float %i.ip, f0x40490FDB
  %i.ir = fmul reassoc nsz arcp contract afn float %i.iq, %i.ik
  %i.is = fdiv reassoc nsz arcp contract afn float 1.000000e+02, %i.ir ; 4 uses
  %i.it = fmul reassoc nsz arcp contract afn float %i.ip, f0x439D1463
  %i.iu = fdiv reassoc nsz arcp contract afn float %i.it, %i.ik ; 7 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 3 uses
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !40
  %i.ix = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.iw, float %i.is)
  store float %i.ix, ptr %i.iv, align 4, !tbaa !40
  %i.iy = icmp sgt i32 %i.hp, 0
  br i1 %i.iy, label %.preheader239.lr.ph, label %.loopexit

.preheader239.lr.ph:                              ; preds = %bb.f
  %i.iz = icmp sgt i32 %i.hl, 0
  %i.ja = add nsw i32 %i.hl, -2
  %i.jb = add nsw i32 %i.hp, -2
  %i.jc = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %factor.op.fmul = fmul reassoc nsz arcp contract afn float %i.is, %i.iu ; 4 uses
  br i1 %i.iz, label %.preheader239.preheader, label %.loopexit

.preheader239.preheader:                          ; preds = %.preheader239.lr.ph
  %i.jd = zext nneg i32 %i.hl to i64              ; 11 uses
  %wide.trip.count304 = zext nneg i32 %i.hp to i64 ; 2 uses
  %i.je = mul nuw nsw i64 %wide.trip.count304, %i.jd
  %i.jf = shl nuw i64 %i.je, 2                    ; 3 uses
  %scevgep = getelementptr i8, ptr %i.ha, i64 %i.jf ; 2 uses
  %scevgep332.a = getelementptr i8, ptr %i.gz, i64 %i.jf ; 2 uses
  %scevgep333 = getelementptr i8, ptr %2, i64 %i.jf ; 2 uses
  %min.iters.check = icmp ult i32 %i.hl, 8
  %bound0 = icmp ult ptr %i.ha, %scevgep332.a
  %bound1 = icmp ult ptr %i.gz, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0334 = icmp ult ptr %i.ha, %scevgep333
  %bound1335 = icmp ult ptr %2, %scevgep
  %found.conflict336 = and i1 %bound0334, %bound1335
  %conflict.rdx = or i1 %found.conflict, %found.conflict336
  %bound0337 = icmp ult ptr %i.gz, %scevgep333
  %bound1338 = icmp ult ptr %2, %scevgep332.a
  %found.conflict339 = and i1 %bound0337, %bound1338
  %conflict.rdx340 = or i1 %conflict.rdx, %found.conflict339
  %n.vec = and i64 %i.jd, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %factor.op.fmul, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert341 = insertelement <8 x float> poison, float %i.iu, i64 0
  %broadcast.splat342 = shufflevector <8 x float> %broadcast.splatinsert341, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.jd
  %xtraiter = and i64 %i.jd, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.jg = add nsw i64 %i.jd, -1
  br label %.preheader239

.preheader239:                                    ; preds = %.preheader239.preheader, %._crit_edge
  %indvars.iv301 = phi i64 [ 0, %.preheader239.preheader ], [ %indvars.iv.next302, %._crit_edge ] ; 4 uses
  %i.jh = mul nuw nsw i64 %indvars.iv301, %i.jd   ; 5 uses
  %i.ji = trunc nuw nsw i64 %indvars.iv301 to i32
  %i.jj = and i32 %i.ji, 2147483646
  %i.jk = icmp slt i32 %i.jj, %i.jb
  %.fr = freeze i1 %i.jk
  br i1 %.fr, label %.lr.ph.split.preheader, label %.thread229.us.preheader

.thread229.us.preheader:                          ; preds = %.preheader239
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx340
  br i1 %brmerge, label %.thread229.us.preheader346, label %vector.body

vector.body:                                      ; preds = %.thread229.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.thread229.us.preheader ] ; 2 uses
  %i.jl = add i64 %index, %i.jh                   ; 3 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.jl
  %wide.load = load <8 x float>, ptr %i.jm, align 4, !tbaa !32, !alias.scope !248
  %i.jn = getelementptr [4 x i8], ptr %i.gz, i64 %i.jl ; 4 uses
  %wide.load343.a = load <8 x float>, ptr %i.jn, align 4, !tbaa !32, !alias.scope !251, !noalias !248
  %i.jo = fcmp reassoc nsz arcp contract afn ole <8 x float> %wide.load343.a, zeroinitializer ; 2 uses
  %i.jp = getelementptr [4 x i8], ptr %i.ha, i64 %i.jl ; 3 uses
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr align 4 %i.jp, <8 x i1> %i.jo), !tbaa !32, !alias.scope !253, !noalias !255
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr align 4 %i.jn, <8 x i1> %i.jo), !tbaa !32, !alias.scope !251, !noalias !248
  %i.jq = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %broadcast.splat
  %wide.load344.a = load <8 x float>, ptr %i.jp, align 4, !tbaa !32, !alias.scope !253, !noalias !255
  %i.jr = fadd reassoc nsz arcp contract afn <8 x float> %wide.load344.a, %i.jq
  store <8 x float> %i.jr, ptr %i.jp, align 4, !tbaa !32, !alias.scope !253, !noalias !255
  %wide.load345 = load <8 x float>, ptr %i.jn, align 4, !tbaa !32, !alias.scope !251, !noalias !248
  %i.js = fadd reassoc nsz arcp contract afn <8 x float> %wide.load345, %broadcast.splat342
  store <8 x float> %i.js, ptr %i.jn, align 4, !tbaa !32, !alias.scope !251, !noalias !248
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jt = icmp eq i64 %index.next, %n.vec
  br i1 %i.jt, label %middle.block, label %vector.body, !llvm.loop !256

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.thread229.us.preheader346

.thread229.us.preheader346:                       ; preds = %.thread229.us.preheader, %middle.block
  %indvars.iv282.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.thread229.us.preheader ] ; 4 uses
  br i1 %lcmp.mod.not, label %.thread229.us.prol.loopexit, label %.thread229.us.prol

.thread229.us.prol:                               ; preds = %.thread229.us.preheader346
  %i.ju = add nuw nsw i64 %indvars.iv282.ph, %i.jh ; 4 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ju
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !32
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.ju ; 4 uses
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !32
  %i.jz = fcmp reassoc nsz arcp contract afn ugt float %i.jy, 0.000000e+00
  br i1 %i.jz, label %.thread229.us.prol.loopexit.unr-lcssa, label %bb.g

bb.g:                                             ; preds = %.thread229.us.prol
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.ju
  store float 0.000000e+00, ptr %i.ka, align 4, !tbaa !32
  store float 0.000000e+00, ptr %i.jx, align 4, !tbaa !32
  br label %.thread229.us.prol.loopexit.unr-lcssa

.thread229.us.prol.loopexit.unr-lcssa:            ; preds = %bb.g, %.thread229.us.prol
  %.reass.prol = fmul reassoc nsz arcp contract afn float %i.jw, %factor.op.fmul
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.ju ; 2 uses
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !32
  %i.kd = fadd reassoc nsz arcp contract afn float %i.kc, %.reass.prol
  store float %i.kd, ptr %i.kb, align 4, !tbaa !32
  %i.ke = load float, ptr %i.jx, align 4, !tbaa !32
  %i.kf = fadd reassoc nsz arcp contract afn float %i.ke, %i.iu
  store float %i.kf, ptr %i.jx, align 4, !tbaa !32
  %indvars.iv.next283.prol = or disjoint i64 %indvars.iv282.ph, 1
  br label %.thread229.us.prol.loopexit

.thread229.us.prol.loopexit:                      ; preds = %.thread229.us.prol.loopexit.unr-lcssa, %.thread229.us.preheader346
  %indvars.iv282.unr = phi i64 [ %indvars.iv282.ph, %.thread229.us.preheader346 ], [ %indvars.iv.next283.prol, %.thread229.us.prol.loopexit.unr-lcssa ]
  %i.kg = icmp eq i64 %indvars.iv282.ph, %i.jg
  br i1 %i.kg, label %._crit_edge, label %.thread229.us.preheader346.new

.thread229.us.preheader346.new:                   ; preds = %.thread229.us.prol.loopexit
  %invariant.op = add nuw nsw i64 1, %i.jh
  br label %.thread229.us

end_hunk_0
