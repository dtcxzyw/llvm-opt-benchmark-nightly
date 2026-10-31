Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/print_settings?download=true
inline.NumInlined: 118
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0
@.str.125 = private unnamed_addr constant [15 x i8] c"/pf.XXXXXX.pdf\00", align 1
@.str.126 = private unnamed_addr constant [44 x i8] c"failed to create temporary PDF for printing\00", align 1
@.str.127 = private unnamed_addr constant [21 x i8] c"darktable|printed|%s\00", align 1
@.str.128 = private unnamed_addr constant [40 x i8] c"[signal] raise %s; %s:%d, function %s()\00", align 1
@.str.129 = private unnamed_addr constant [22 x i8] c"DT_SIGNAL_TAG_CHANGED\00", align 1
@__FUNCTION__._print_job_run = private unnamed_addr constant [15 x i8] c"_print_job_run\00", align 1
@.str.130 = private unnamed_addr constant [50 x i8] c"[print] max image size %d x %d (at resolution %d)\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c"unused\00", align 1
@.str.132 = private unnamed_addr constant [33 x i8] c"cannot open printer profile `%s'\00", align 1
@.str.133 = private unnamed_addr constant [42 x i8] c"error getting output profile for image %d\00", align 1
@.str.134 = private unnamed_addr constant [34 x i8] c"cannot apply printer profile `%s'\00", align 1
@.str.135 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.136 = private unnamed_addr constant [47 x i8] c"[print] unable to allocate memory for image %s\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_dt_version() local_unnamed_addr #0 {
bb.a:
  ret i32 25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_mod_version() local_unnamed_addr #0 {
bb.a:
  ret i32 4
}

; Function Attrs: nounwind uwtable
define ptr @name(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #19
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @views(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  ret i32 32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @container(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @position(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  ret i32 990
}

; Function Attrs: nounwind uwtable
define hidden void @_fill_box_values(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3424
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.d = sext i32 %i.b to i64
  %i.e = getelementptr inbounds [96 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.h = load i32, ptr %i.g, align 8, !tbaa !30
  %.not.i = icmp eq i32 %i.h, 0                   ; 2 uses
  %..i = select i1 %.not.i, i64 728, i64 736
  %.11.i = select i1 %.not.i, i64 736, i64 728
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %..i
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %.11.i
  %.sink.in.i = load double, ptr %i.i, align 8, !tbaa !31
  %storemerge.in.i = load double, ptr %i.j, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.l = getelementptr i8, ptr %0, i64 3336
  %.val32 = load i32, ptr %i.l, align 8, !tbaa !32
  %i.m = zext i32 %.val32 to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @units, i64 %i.m
  %i.o = load float, ptr %i.n, align 4, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 36 ; 9 uses
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ab = load <4 x float>, ptr %i.k, align 8, !tbaa !33
  %i.ac = atomicrmw add ptr %i.s, i32 1 seq_cst, align 4 ; 0 uses
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !76
  %i.ae = load i32, ptr %i.q, align 4, !tbaa !79
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.ad, i32 noundef %i.ag) #19
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 104
  %i.aj = atomicrmw add ptr %i.ai, i32 -1 seq_cst, align 4 ; 0 uses
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 104
  %i.am = atomicrmw add ptr %i.al, i32 1 seq_cst, align 4 ; 0 uses
  %i.an = load ptr, ptr %i.t, align 8, !tbaa !76
  %i.ao = load i32, ptr %i.q, align 4, !tbaa !79
  %i.ap = icmp eq i32 %i.ao, 1
  %i.aq = zext i1 %i.ap to i32
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.an, i32 noundef %i.aq) #19
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 104
  %i.at = atomicrmw add ptr %i.as, i32 -1 seq_cst, align 4 ; 0 uses
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 104
  %i.aw = atomicrmw add ptr %i.av, i32 1 seq_cst, align 4 ; 0 uses
  %i.ax = load ptr, ptr %i.u, align 8, !tbaa !76
  %i.ay = load i32, ptr %i.q, align 4, !tbaa !79
  %i.az = icmp eq i32 %i.ay, 2
  %i.ba = zext i1 %i.az to i32
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.ax, i32 noundef %i.ba) #19
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 104
  %i.bd = atomicrmw add ptr %i.bc, i32 -1 seq_cst, align 4 ; 0 uses
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 104
  %i.bg = atomicrmw add ptr %i.bf, i32 1 seq_cst, align 4 ; 0 uses
  %i.bh = load ptr, ptr %i.v, align 8, !tbaa !76
  %i.bi = load i32, ptr %i.q, align 4, !tbaa !79
  %i.bj = icmp eq i32 %i.bi, 3
  %i.bk = zext i1 %i.bj to i32
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.bh, i32 noundef %i.bk) #19
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 104
  %i.bn = atomicrmw add ptr %i.bm, i32 -1 seq_cst, align 4 ; 0 uses
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 104
  %i.bq = atomicrmw add ptr %i.bp, i32 1 seq_cst, align 4 ; 0 uses
  %i.br = load ptr, ptr %i.w, align 8, !tbaa !76
  %i.bs = load i32, ptr %i.q, align 4, !tbaa !79
  %i.bt = icmp eq i32 %i.bs, 4
  %i.bu = zext i1 %i.bt to i32
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.br, i32 noundef %i.bu) #19
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 104
  %i.bx = atomicrmw add ptr %i.bw, i32 -1 seq_cst, align 4 ; 0 uses
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 104
  %i.ca = atomicrmw add ptr %i.bz, i32 1 seq_cst, align 4 ; 0 uses
  %i.cb = load ptr, ptr %i.x, align 8, !tbaa !76
  %i.cc = load i32, ptr %i.q, align 4, !tbaa !79
  %i.cd = icmp eq i32 %i.cc, 5
  %i.ce = zext i1 %i.cd to i32
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.cb, i32 noundef %i.ce) #19
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 104
  %i.ch = atomicrmw add ptr %i.cg, i32 -1 seq_cst, align 4 ; 0 uses
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 104
  %i.ck = atomicrmw add ptr %i.cj, i32 1 seq_cst, align 4 ; 0 uses
  %i.cl = load ptr, ptr %i.y, align 8, !tbaa !76
  %i.cm = load i32, ptr %i.q, align 4, !tbaa !79
  %i.cn = icmp eq i32 %i.cm, 6
  %i.co = zext i1 %i.cn to i32
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.cl, i32 noundef %i.co) #19
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 104
  %i.cr = atomicrmw add ptr %i.cq, i32 -1 seq_cst, align 4 ; 0 uses
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 104
  %i.cu = atomicrmw add ptr %i.ct, i32 1 seq_cst, align 4 ; 0 uses
  %i.cv = load ptr, ptr %i.z, align 8, !tbaa !76
  %i.cw = load i32, ptr %i.q, align 4, !tbaa !79
  %i.cx = icmp eq i32 %i.cw, 7
  %i.cy = zext i1 %i.cx to i32
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.cv, i32 noundef %i.cy) #19
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 104
  %i.db = atomicrmw add ptr %i.da, i32 -1 seq_cst, align 4 ; 0 uses
  %i.dc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 104
  %i.de = atomicrmw add ptr %i.dd, i32 1 seq_cst, align 4 ; 0 uses
  %i.df = load ptr, ptr %i.aa, align 8, !tbaa !76
  %i.dg = load i32, ptr %i.q, align 4, !tbaa !79
  %i.dh = icmp eq i32 %i.dg, 8
  %i.di = zext i1 %i.dh to i32
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.df, i32 noundef %i.di) #19
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 104
  %i.dl = atomicrmw add ptr %i.dk, i32 -1 seq_cst, align 4 ; 0 uses
  %i.dm = insertelement <2 x double> poison, double %.sink.in.i, i64 0
  %i.dn = insertelement <2 x double> %i.dm, double %storemerge.in.i, i64 1
  %i.do = fptrunc <2 x double> %i.dn to <2 x float>
  %i.dp = insertelement <2 x float> poison, float %i.o, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <4 x i32> zeroinitializer
  %i.dr = shufflevector <2 x float> %i.do, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ds = fmul reassoc nsz arcp contract afn <4 x float> %i.dq, %i.dr
  %i.dt = fmul reassoc nsz arcp contract afn <4 x float> %i.ds, %i.ab
  %i.du = fpext <4 x float> %i.dt to <4 x double>
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.dv = phi <4 x double> [ %i.du, %bb.b ], [ zeroinitializer, %bb.a ] ; 4 uses
  %i.dw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 104
  %i.dy = atomicrmw add ptr %i.dx, i32 1 seq_cst, align 4 ; 0 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !80
  %i.eb = extractelement <4 x double> %i.dv, i64 0
  tail call void @gtk_spin_button_set_value(ptr noundef %i.ea, double noundef %i.eb) #19
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !81
  %i.ee = extractelement <4 x double> %i.dv, i64 1
  tail call void @gtk_spin_button_set_value(ptr noundef %i.ed, double noundef %i.ee) #19
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !82
  %i.eh = extractelement <4 x double> %i.dv, i64 2
  tail call void @gtk_spin_button_set_value(ptr noundef %i.eg, double noundef %i.eh) #19
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !83
  %i.ek = extractelement <4 x double> %i.dv, i64 3
  tail call void @gtk_spin_button_set_value(ptr noundef %i.ej, double noundef %i.ek) #19
  %i.el = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 104
  %i.en = atomicrmw add ptr %i.em, i32 -1 seq_cst, align 4 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @gtk_toggle_button_set_active(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @gtk_spin_button_set_value(ptr noundef, double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @view_enter(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 3456 ; 2 uses
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.c) #19 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 3448 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !89
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @dt_conf_get_string(ptr noundef nonnull @.str.1) #19 ; 3 uses
  %.027 = load ptr, ptr %i.e, align 8, !tbaa !90  ; 2 uses
  %.not2328 = icmp eq ptr %.027, null
  br i1 %.not2328, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.i = load i8, ptr %i.g, align 1, !tbaa !91
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.029 = phi ptr [ %.027, %.lr.ph ], [ %.0, %bb.c ] ; 2 uses
  %i.k = load ptr, ptr %.029, align 8, !tbaa !93
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !94
  tail call void @dt_bauhaus_combobox_add(ptr noundef %i.l, ptr noundef %i.k) #19
  %i.m = getelementptr inbounds nuw i8, ptr %.029, i64 8
  %.0 = load ptr, ptr %i.m, align 8, !tbaa !90    ; 2 uses
  %.not23 = icmp eq ptr %.0, null
  br i1 %.not23, label %._crit_edge, label %bb.c

bb.d:                                             ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !94
  %i.p = tail call i32 @dt_bauhaus_combobox_set_from_text(ptr noundef %i.o, ptr noundef nonnull %i.g) #19
  %.not24 = icmp eq i32 %i.p, 0
  br i1 %.not24, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !94
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.r, i32 noundef 0) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @g_free(ptr noundef nonnull %i.g) #19
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !89
  tail call void @g_list_free_full(ptr noundef %i.s, ptr noundef nonnull @g_free) #19
  store ptr null, ptr %i.e, align 8, !tbaa !89
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %i.t = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.c) #19 ; 0 uses
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !95
  %i.v = and i32 %i.u, 2
  %i.w = icmp ne i32 %i.v, 0
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3340), align 4
  %i.y = icmp ne i32 %i.x, 0
  %or.cond = select i1 %i.w, i1 %i.y, i1 false
  br i1 %or.cond, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !96
  %i.aa = and i32 %i.z, 1048576
  %.not25 = icmp eq i32 %i.aa, 0
  br i1 %.not25, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 1511, ptr noundef nonnull @__FUNCTION__.view_enter) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !97
  tail call void @dt_control_signal_connect(ptr noundef %i.ab, i32 noundef 6, ptr noundef nonnull @_print_settings_activate_callback, ptr noundef nonnull %0) #19
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !95
  %i.ad = and i32 %i.ac, 2
  %i.ae = icmp ne i32 %i.ad, 0
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3396), align 4
  %i.ag = icmp ne i32 %i.af, 0
  %or.cond3 = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %or.cond3, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !96
  %i.ai = and i32 %i.ah, 1048576
  %.not26 = icmp eq i32 %i.ai, 0
  br i1 %.not26, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 1515, ptr noundef nonnull @__FUNCTION__.view_enter) #19
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !97
  tail call void @dt_control_signal_connect(ptr noundef %i.aj, i32 noundef 20, ptr noundef nonnull @_print_settings_update_callback, ptr noundef nonnull %0) #19
  ret void
}

declare ptr @dt_conf_get_string(ptr noundef) local_unnamed_addr #4

declare void @dt_bauhaus_combobox_add(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @dt_bauhaus_combobox_set_from_text(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @dt_bauhaus_combobox_set(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @g_free(ptr noundef) #4

declare void @g_list_free_full(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #4

declare void @dt_control_signal_connect(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @_print_settings_activate_callback(ptr nofree readnone captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1344 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1352
  %i.e = load i32, ptr %i.d, align 8, !tbaa !98
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 3440
  %i.h = load i32, ptr %i.g, align 8, !tbaa !99
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1396
  %i.j = load i32, ptr %i.i, align 4, !tbaa !79
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1360
  tail call void @dt_printing_clear_box(ptr noundef nonnull %i.k) #19
  tail call fastcc void @_set_orientation(ptr noundef nonnull %i.b, i32 noundef %1)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 3296
  %i.m = load float, ptr %i.l, align 8, !tbaa !100
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 3300
  %i.o = load float, ptr %i.n, align 4, !tbaa !101
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 3304
  %i.q = load float, ptr %i.p, align 8, !tbaa !102
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 3308
  %i.s = load float, ptr %i.r, align 4, !tbaa !103
  tail call void @dt_printing_setup_box(ptr noundef nonnull %i.c, i32 noundef 0, float noundef %i.m, float noundef %i.o, float noundef %i.q, float noundef %i.s) #19
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 336 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  %i.v = load i32, ptr %i.u, align 8, !tbaa !30
  %.not.i.i = icmp eq i32 %i.v, 0                 ; 2 uses
  %..i.i = select i1 %.not.i.i, i64 728, i64 736
  %.11.i.i = select i1 %.not.i.i, i64 736, i64 728
end_hunk_0
begin_hunk_1_@_print_settings_update_callback:bb.a

bb.d:                                             ; preds = %bb.c
  tail call void @dt_printing_clear_box(ptr noundef nonnull %i.f) #19
  tail call fastcc void @_set_orientation(ptr noundef nonnull %i.b, i32 noundef %1)
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1344 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 3296
  %i.m = load float, ptr %i.l, align 8, !tbaa !100
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 3300
  %i.o = load float, ptr %i.n, align 4, !tbaa !101
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 3304
  %i.q = load float, ptr %i.p, align 8, !tbaa !102
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 3308
  %i.s = load float, ptr %i.r, align 4, !tbaa !103
  tail call void @dt_printing_setup_box(ptr noundef nonnull %i.k, i32 noundef 0, float noundef %i.m, float noundef %i.o, float noundef %i.q, float noundef %i.s) #19
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 336 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  %i.v = load i32, ptr %i.u, align 8, !tbaa !30
  %.not.i.i = icmp eq i32 %i.v, 0                 ; 2 uses
  %..i.i = select i1 %.not.i.i, i64 728, i64 736
  %.11.i.i = select i1 %.not.i.i, i64 736, i64 728
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %..i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %.11.i.i
  %.sink.in.i.i = load double, ptr %i.w, align 8, !tbaa !31
  %.sink.i.i = fptrunc double %.sink.in.i.i to float
  %storemerge.in.i.i = load double, ptr %i.x, align 8, !tbaa !31
  %storemerge.i.i = fptrunc double %storemerge.in.i.i to float
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.z = load i32, ptr %i.y, align 8, !tbaa !104
  tail call void @dt_printing_setup_page(ptr noundef nonnull %i.k, float noundef %.sink.i.i, float noundef %storemerge.i.i, i32 noundef %i.z) #19
  tail call void @dt_printing_setup_image(ptr noundef nonnull %i.k, i32 noundef 0, i32 noundef %1, i32 noundef 100, i32 noundef 100, i32 noundef 4) #19
  tail call void @dt_control_queue_redraw_center() #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @view_leave(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !95
  %i.b = and i32 %i.a, 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !96
  %i.d = and i32 %i.c, 1048576
  %.not2 = icmp eq i32 %i.d, 0
  br i1 %.not2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5, i32 noundef 1525, ptr noundef nonnull @__FUNCTION__.view_leave) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !97
  tail call void @dt_control_signal_disconnect(ptr noundef %i.e, ptr noundef nonnull @_print_settings_activate_callback, ptr noundef %0) #19
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !95
  %i.g = and i32 %i.f, 4
  %.not3 = icmp eq i32 %i.g, 0
  br i1 %.not3, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !96
  %i.i = and i32 %i.h, 1048576
  %.not4 = icmp eq i32 %i.i, 0
  br i1 %.not4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 1526, ptr noundef nonnull @__FUNCTION__.view_leave) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !97
  tail call void @dt_control_signal_disconnect(ptr noundef %i.j, ptr noundef nonnull @_print_settings_update_callback, ptr noundef %0) #19
  ret void
}

declare void @dt_control_signal_disconnect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_get_control(ptr nofree noundef captures(none) %0, float noundef %1, float noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3420
  %i.b = load i32, ptr %i.a, align 4, !tbaa !106
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr [96 x i8], ptr %0, i64 %i.c ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3428 ; 4 uses
  %i.f = getelementptr i8, ptr %i.d, i64 1416
  %i.g = load float, ptr %i.f, align 8, !tbaa !107
  %i.h = fsub reassoc nsz arcp contract afn float %i.g, %1 ; 2 uses
  %i.i = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.h)
  %i.j = fcmp reassoc nsz arcp contract afn olt float %i.i, 2.000000e+01
  %spec.store.select = zext i1 %i.j to i32        ; 3 uses
  store i32 %spec.store.select, ptr %i.e, align 4, !tbaa !108
  %i.k = getelementptr i8, ptr %i.d, i64 1420
  %i.l = load float, ptr %i.k, align 4, !tbaa !109
  %i.m = fsub reassoc nsz arcp contract afn float %i.l, %2 ; 2 uses
  %i.n = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.m)
  %i.o = fcmp reassoc nsz arcp contract afn olt float %i.n, 2.000000e+01
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = or disjoint i32 %spec.store.select, 4    ; 2 uses
  store i32 %i.p, ptr %i.e, align 4, !tbaa !108
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = phi i32 [ %i.p, %bb.b ], [ %spec.store.select, %bb.a ] ; 2 uses
  %i.r = getelementptr i8, ptr %i.d, i64 1424
  %i.s = load float, ptr %i.r, align 8, !tbaa !110
  %i.t = fadd reassoc nsz arcp contract afn float %i.h, %i.s
  %i.u = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.t)
  %i.v = fcmp reassoc nsz arcp contract afn olt float %i.u, 2.000000e+01
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = or i32 %i.q, 2                           ; 2 uses
  store i32 %i.w, ptr %i.e, align 4, !tbaa !108
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = phi i32 [ %i.w, %bb.d ], [ %i.q, %bb.c ] ; 2 uses
  %i.y = getelementptr i8, ptr %i.d, i64 1428
  %i.z = load float, ptr %i.y, align 4, !tbaa !111
  %i.aa = fadd reassoc nsz arcp contract afn float %i.m, %i.z
  %i.ab = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.aa)
  %i.ac = fcmp reassoc nsz arcp contract afn olt float %i.ab, 2.000000e+01
  br i1 %i.ac, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.ad = or i32 %i.x, 8
  br label %.sink.split

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp eq i32 %i.x, 0
  br i1 %i.ae, label %.sink.split, label %bb.g

.sink.split:                                      ; preds = %bb.f, %.thread
  %.sink = phi i32 [ %i.ad, %.thread ], [ 15, %bb.f ]
  store i32 %.sink, ptr %i.e, align 4, !tbaa !108
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nounwind uwtable
define noundef i32 @mouse_leave(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 3424
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %.not = icmp eq i32 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1360
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr inbounds [96 x i8], ptr %i.e, i64 %i.f
  %i.h = load i32, ptr %i.g, align 8, !tbaa !105
  tail call void @dt_control_set_mouse_over_id(i32 noundef %i.h) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

declare void @dt_control_set_mouse_over_id(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noundef i32 @mouse_moved(ptr nofree noundef readonly captures(none) %0, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 34 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 3396 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !112
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.thread112, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @dt_control_change_cursor(ptr noundef nonnull @.str.9) #19
  %.pr = load i32, ptr %i.c, align 4, !tbaa !112
  %.not102 = icmp eq i32 %.pr, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 3400
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !113
  %i.e = icmp eq i32 %.pre, 0                     ; 2 uses
  br i1 %.not102, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.e, label %.critedge109, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = insertelement <2 x double> poison, double %1, i64 0
  %i.g = insertelement <2 x double> %i.f, double %2, i64 1
  %i.h = fptrunc <2 x double> %i.g to <2 x float>
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 3412 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 3416
  store <2 x float> %i.h, ptr %i.i, align 4, !tbaa !33
  tail call fastcc void @_snap_to_grid(ptr noundef nonnull %i.b, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j)
  br label %.critedge

bb.e:                                             ; preds = %bb.b
  br i1 %i.e, label %.thread116, label %bb.f

.thread112:                                       ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 3400
  %i.l = load i32, ptr %i.k, align 8, !tbaa !113
  %.not104114 = icmp eq i32 %i.l, 0
  br i1 %.not104114, label %.thread116, label %bb.f

bb.f:                                             ; preds = %.thread112, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 3420
  %i.n = load i32, ptr %i.m, align 4, !tbaa !106
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr [96 x i8], ptr %i.b, i64 %i.o ; 12 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 3432
  %i.r = load <2 x float>, ptr %i.q, align 8, !tbaa !33
  %i.s = fpext <2 x float> %i.r to <2 x double>
  %i.t = insertelement <2 x double> poison, double %1, i64 0
  %i.u = insertelement <2 x double> %i.t, double %2, i64 1
  %i.v = fsub reassoc nsz arcp contract afn <2 x double> %i.u, %i.s
  %i.w = fptrunc <2 x double> %i.v to <2 x float> ; 6 uses
  %i.x = getelementptr i8, ptr %i.p, i64 1416     ; 7 uses
  %i.y = getelementptr i8, ptr %i.p, i64 1424
  %i.z = load float, ptr %i.y, align 8, !tbaa !110 ; 5 uses
  %i.aa = extractelement <2 x float> %i.w, i64 0  ; 6 uses
  %i.ab = fdiv reassoc nsz arcp contract afn float %i.aa, %i.z ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 3428
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !108
  switch i32 %i.ad, label %bb.p [
    i32 15, label %bb.g
    i32 1, label %bb.h
    i32 4, label %bb.i
    i32 2, label %bb.j
    i32 8, label %bb.k
    i32 5, label %bb.l
    i32 6, label %bb.m
    i32 9, label %bb.n
    i32 10, label %bb.o
  ]

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 3404
  %i.af = load <2 x float>, ptr %i.x, align 8, !tbaa !33 ; 2 uses
  %i.ag = fadd reassoc nsz arcp contract afn <2 x float> %i.af, %i.w ; 2 uses
  store <2 x float> %i.ag, ptr %i.ae, align 4, !tbaa !33
  %i.ah = fadd reassoc nsz arcp contract afn float %i.z, %i.aa
  %i.ai = extractelement <2 x float> %i.af, i64 0
  %i.aj = fadd reassoc nsz arcp contract afn float %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 3412
  store float %i.aj, ptr %i.ak, align 4, !tbaa !114
  %i.al = getelementptr i8, ptr %i.p, i64 1428
  %i.am = load float, ptr %i.al, align 4, !tbaa !111
  %i.an = extractelement <2 x float> %i.ag, i64 1
  %i.ao = fadd reassoc nsz arcp contract afn float %i.an, %i.am
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 3416
  store float %i.ao, ptr %i.ap, align 8, !tbaa !115
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.aq = load float, ptr %i.x, align 8, !tbaa !107
  %i.ar = fadd reassoc nsz arcp contract afn float %i.aq, %i.aa
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 3404
  store float %i.ar, ptr %i.as, align 4, !tbaa !116
  br label %bb.p

bb.i:                                             ; preds = %bb.f
  %i.at = getelementptr i8, ptr %i.p, i64 1420
  %i.au = load float, ptr %i.at, align 4, !tbaa !109
  %i.av = extractelement <2 x float> %i.w, i64 1
  %i.aw = fadd reassoc nsz arcp contract afn float %i.au, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 3408
  store float %i.aw, ptr %i.ax, align 8, !tbaa !117
  br label %bb.p

bb.j:                                             ; preds = %bb.f
  %i.ay = load float, ptr %i.x, align 8, !tbaa !107
  %i.az = fadd reassoc nsz arcp contract afn float %i.z, %i.aa
  %i.ba = fadd reassoc nsz arcp contract afn float %i.az, %i.ay
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 3412
  store float %i.ba, ptr %i.bb, align 4, !tbaa !114
  br label %bb.p

bb.k:                                             ; preds = %bb.f
  %i.bc = getelementptr i8, ptr %i.p, i64 1420
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !109
  %i.be = getelementptr i8, ptr %i.p, i64 1428
  %i.bf = load float, ptr %i.be, align 4, !tbaa !111
  %i.bg = extractelement <2 x float> %i.w, i64 1
  %i.bh = fadd reassoc nsz arcp contract afn float %i.bd, %i.bg
  %i.bi = fadd reassoc nsz arcp contract afn float %i.bh, %i.bf
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 3416
  store float %i.bi, ptr %i.bj, align 8, !tbaa !115
  br label %bb.p

bb.l:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 3404
  %i.bl = getelementptr i8, ptr %i.p, i64 1428
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !111
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, %i.ab
  %i.bo = load <2 x float>, ptr %i.x, align 8, !tbaa !33
  %i.bp = insertelement <2 x float> %i.w, float %i.bn, i64 1
  %i.bq = fadd reassoc nsz arcp contract afn <2 x float> %i.bo, %i.bp
  store <2 x float> %i.bq, ptr %i.bk, align 4, !tbaa !33
  br label %bb.p

bb.m:                                             ; preds = %bb.f
  %i.br = load float, ptr %i.x, align 8, !tbaa !107
  %i.bs = fadd reassoc nsz arcp contract afn float %i.z, %i.aa
  %i.bt = fadd reassoc nsz arcp contract afn float %i.bs, %i.br
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 3412
  store float %i.bt, ptr %i.bu, align 4, !tbaa !114
  %i.bv = getelementptr i8, ptr %i.p, i64 1420
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !109
  %i.bx = getelementptr i8, ptr %i.p, i64 1428
  %i.by = load float, ptr %i.bx, align 4, !tbaa !111
  %i.bz = fmul reassoc nsz arcp contract afn float %i.by, %i.ab
  %i.ca = fsub reassoc nsz arcp contract afn float %i.bw, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 3408
  store float %i.ca, ptr %i.cb, align 8, !tbaa !117
  br label %bb.p

bb.n:                                             ; preds = %bb.f
  %i.cc = load float, ptr %i.x, align 8, !tbaa !107
  %i.cd = fadd reassoc nsz arcp contract afn float %i.cc, %i.aa
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 3404
  store float %i.cd, ptr %i.ce, align 4, !tbaa !116
  %i.cf = getelementptr i8, ptr %i.p, i64 1420
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !109
  %i.ch = getelementptr i8, ptr %i.p, i64 1428
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !111 ; 2 uses
  %i.cj = fadd reassoc nsz arcp contract afn float %i.ci, %i.cg
  %i.ck = fmul reassoc nsz arcp contract afn float %i.ab, %i.ci
  %i.cl = fsub reassoc nsz arcp contract afn float %i.cj, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 3416
  store float %i.cl, ptr %i.cm, align 8, !tbaa !115
  br label %bb.p

bb.o:                                             ; preds = %bb.f
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 3412
  %i.co = getelementptr i8, ptr %i.p, i64 1428
  %i.cp = load float, ptr %i.co, align 4, !tbaa !111 ; 2 uses
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cp, %i.ab
  %i.cr = load <2 x float>, ptr %i.x, align 8, !tbaa !33
  %i.cs = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ct = insertelement <2 x float> %i.cs, float %i.cp, i64 1
  %i.cu = insertelement <2 x float> %i.w, float %i.cq, i64 1
  %i.cv = fadd reassoc nsz arcp contract afn <2 x float> %i.ct, %i.cu
  %i.cw = fadd reassoc nsz arcp contract afn <2 x float> %i.cv, %i.cr
  store <2 x float> %i.cw, ptr %i.cn, align 4, !tbaa !33
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 3404
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 3408
  tail call fastcc void @_snap_to_grid(ptr noundef nonnull %i.b, ptr noundef nonnull %i.cx, ptr noundef nonnull %i.cy)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 3412
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 3416
  tail call fastcc void @_snap_to_grid(ptr noundef nonnull %i.b, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.da)
  br label %.critedge

.thread116:                                       ; preds = %bb.e, %.thread112
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 1344
  %i.dc = fptosi double %1 to i32
  %i.dd = fptosi double %2 to i32
  %i.de = tail call i32 @dt_printing_get_image_box(ptr noundef nonnull %i.db, i32 noundef %i.dc, i32 noundef %i.dd) #19 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 3428 ; 5 uses
  store i32 0, ptr %i.df, align 4, !tbaa !108
  %i.dg = icmp eq i32 %i.de, -1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 3420 ; 4 uses
  br i1 %i.dg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.thread116
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !106
  %.not106 = icmp eq i32 %i.di, -1
  store i32 -1, ptr %i.dh, align 4, !tbaa !106
  br i1 %.not106, label %.critedge109, label %.critedge

bb.r:                                             ; preds = %.thread116
  store i32 %i.de, ptr %i.dh, align 4, !tbaa !106
  tail call void @_fill_box_values(ptr noundef nonnull %i.b)
  %i.dj = fptrunc reassoc nsz arcp contract afn double %1 to float
  %i.dk = fptrunc reassoc nsz arcp contract afn double %2 to float
  %i.dl = load i32, ptr %i.dh, align 4, !tbaa !106
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr [96 x i8], ptr %i.b, i64 %i.dm ; 4 uses
  %i.do = getelementptr i8, ptr %i.dn, i64 1416
  %i.dp = load float, ptr %i.do, align 8, !tbaa !107
  %i.dq = fsub reassoc nsz arcp contract afn float %i.dp, %i.dj ; 2 uses
  %i.dr = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dq)
  %i.ds = fcmp reassoc nsz arcp contract afn olt float %i.dr, 2.000000e+01
  %spec.store.select.i = zext i1 %i.ds to i32     ; 3 uses
  store i32 %spec.store.select.i, ptr %i.df, align 4, !tbaa !108
  %i.dt = getelementptr i8, ptr %i.dn, i64 1420
  %i.du = load float, ptr %i.dt, align 4, !tbaa !109
  %i.dv = fsub reassoc nsz arcp contract afn float %i.du, %i.dk ; 2 uses
  %i.dw = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dv)
  %i.dx = fcmp reassoc nsz arcp contract afn olt float %i.dw, 2.000000e+01
  br i1 %i.dx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dy = or disjoint i32 %spec.store.select.i, 4 ; 2 uses
  store i32 %i.dy, ptr %i.df, align 4, !tbaa !108
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dz = phi i32 [ %i.dy, %bb.s ], [ %spec.store.select.i, %bb.r ] ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dn, i64 1424
  %i.eb = load float, ptr %i.ea, align 8, !tbaa !110
  %i.ec = fadd reassoc nsz arcp contract afn float %i.eb, %i.dq
  %i.ed = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ec)
  %i.ee = fcmp reassoc nsz arcp contract afn olt float %i.ed, 2.000000e+01
  br i1 %i.ee, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ef = or i32 %i.dz, 2                         ; 2 uses
  store i32 %i.ef, ptr %i.df, align 4, !tbaa !108
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.eg = phi i32 [ %i.ef, %bb.u ], [ %i.dz, %bb.t ] ; 2 uses
  %i.eh = getelementptr i8, ptr %i.dn, i64 1428
end_hunk_1
begin_hunk_2_@button_released:bb.a
  tail call void @gtk_widget_set_sensitive(ptr noundef %i.f, i32 noundef 1) #19
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 3396
  %i.h = load i32, ptr %i.g, align 4, !tbaa !112
  %.not32 = icmp eq i32 %i.h, 0
  br i1 %.not32, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1352 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !98   ; 2 uses
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8, !tbaa !98
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 3420
  %i.m = load i32, ptr %i.l, align 4, !tbaa !106
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.j, %bb.c ], [ %i.m, %bb.d ]  ; 3 uses
  %.not34 = icmp eq i32 %.0, -1
  br i1 %.not34, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 3412 ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !114 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 3404 ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !116 ; 4 uses
  %i.r = fcmp reassoc nsz arcp contract afn olt float %i.o, %i.q
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store float %i.o, ptr %i.p, align 4, !tbaa !33
  store float %i.q, ptr %i.n, align 4, !tbaa !33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = phi float [ %i.o, %bb.g ], [ %i.q, %bb.f ] ; 2 uses
  %i.t = phi float [ %i.q, %bb.g ], [ %i.o, %bb.f ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 3416 ; 2 uses
  %i.v = load float, ptr %i.u, align 8, !tbaa !115 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 3408 ; 2 uses
  %i.x = load float, ptr %i.w, align 8, !tbaa !117 ; 4 uses
  %i.y = fcmp reassoc nsz arcp contract afn olt float %i.v, %i.x
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store float %i.v, ptr %i.w, align 8, !tbaa !33
  store float %i.x, ptr %i.u, align 8, !tbaa !33
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.z = phi float [ %i.v, %bb.i ], [ %i.x, %bb.h ] ; 2 uses
  %i.aa = phi float [ %i.x, %bb.i ], [ %i.v, %bb.h ]
  %i.ab = fsub reassoc nsz arcp contract afn float %i.t, %i.s
  %i.ac = fsub reassoc nsz arcp contract afn float %i.aa, %i.z
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 1344
  tail call void @dt_printing_setup_box(ptr noundef nonnull %i.ad, i32 noundef %.0, float noundef %i.s, float noundef %i.z, float noundef %i.ab, float noundef %i.ac) #19
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 3424
  store i32 %.0, ptr %i.ae, align 8, !tbaa !29
  tail call void @_fill_box_values(ptr noundef nonnull %i.b)
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.a
  tail call fastcc void @_update_slider(ptr noundef nonnull %i.b)
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 3396
  store i32 0, ptr %i.af, align 4, !tbaa !112
  store i32 0, ptr %i.c, align 8, !tbaa !113
  tail call void @dt_control_change_cursor(ptr noundef nonnull @.str.10) #19
  ret i32 0
}

declare void @gtk_widget_set_sensitive(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_printing_setup_box(ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @_update_slider(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %1 = alloca %struct._image_pos, align 4         ; 5 uses
  %2 = alloca %struct._image_pos, align 4         ; 5 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !127
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1344 ; 3 uses
  tail call void @dt_view_print_settings(ptr noundef %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3420
  %i.e = load i32, ptr %i.d, align 4, !tbaa !106  ; 2 uses
  %.not = icmp eq i32 %i.e, -1
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.g = sext i32 %i.e to i64
  %i.h = getelementptr inbounds [96 x i8], ptr %i.f, i64 %i.g ; 5 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !105
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128
  %.not44 = icmp eq ptr %i.l, null
  br i1 %.not44, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !129
  %.not45 = icmp eq ptr %i.n, null
  br i1 %.not45, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !130
  %.not46 = icmp eq ptr %i.p, null
  br i1 %.not46, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @dt_printing_get_image_pos_mm(ptr noundef nonnull %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %1) #19
  call void @dt_printing_get_image_pos(ptr noundef nonnull %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %2) #19
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !131
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3336
  %i.t = load i32, ptr %i.s, align 8, !tbaa !32
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr @units, i64 %i.u
  %i.w = load float, ptr %i.v, align 4, !tbaa !33 ; 3 uses
  %i.x = fmul reassoc nsz arcp contract afn float %i.w, %i.r
  %i.y = fpext reassoc nsz arcp contract afn float %i.x to double
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aa = load float, ptr %i.z, align 4, !tbaa !132
  %i.ab = fmul reassoc nsz arcp contract afn float %i.aa, %i.w
  %i.ac = fpext reassoc nsz arcp contract afn float %i.ab to double
  %i.ad = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.w
  %i.ae = call reassoc nsz arcp contract afn float @llvm.log10.f32(float %i.ad)
  %i.af = call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.ae)
  %i.ag = fptosi float %i.af to i32
  %i.ah = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.107, i32 noundef %i.ag) #19 ; 3 uses
  %i.ai = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.ah, double noundef %i.y) #19 ; 2 uses
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !128
  call void @gtk_label_set_text(ptr noundef %i.aj, ptr noundef %i.ai) #19
  call void @g_free(ptr noundef %i.ai) #19
  %i.ak = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.ah, double noundef %i.ac) #19 ; 2 uses
  %i.al = load ptr, ptr %i.m, align 8, !tbaa !129
  call void @gtk_label_set_text(ptr noundef %i.al, ptr noundef %i.ak) #19
  call void @g_free(ptr noundef %i.ak) #19
  call void @g_free(ptr noundef %i.ah) #19
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.an = load i32, ptr %i.am, align 4, !tbaa !200
  %i.ao = sitofp reassoc nsz arcp contract afn i32 %i.an to float ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !131 ; 2 uses
  %i.ar = fcmp reassoc nsz arcp contract afn ult float %i.aq, %i.ao
  br i1 %i.ar, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = fdiv reassoc nsz arcp contract afn float %i.aq, %i.ao
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.au = load float, ptr %i.at, align 4, !tbaa !132
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !201
  %i.ax = sitofp reassoc nsz arcp contract afn i32 %i.aw to float
  %i.ay = fdiv reassoc nsz arcp contract afn float %i.au, %i.ax
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.az = phi reassoc nsz arcp contract afn float [ %i.as, %bb.g ], [ %i.ay, %bb.h ] ; 2 uses
  %i.ba = fpext reassoc nsz arcp contract afn float %i.az to double ; 2 uses
  %i.bb = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.106, i32 noundef 5) #19
  %i.bc = fcmp reassoc nsz arcp contract afn ugt float %i.az, 1.000000e+00
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !104 ; 2 uses
  %i.bf = sitofp reassoc nsz arcp contract afn i32 %i.be to double
  %i.bg = fdiv reassoc nsz arcp contract afn double %i.bf, %i.ba
  %i.bh = fptosi double %i.bg to i32
  %i.bi = select i1 %i.bc, i32 %i.bh, i32 %i.be
  %i.bj = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.bb, double noundef %i.ba, i32 noundef %i.bi) #19 ; 2 uses
  %i.bk = load ptr, ptr %i.o, align 8, !tbaa !130
  call void @gtk_label_set_text(ptr noundef %i.bk, ptr noundef %i.bj) #19
  call void @g_free(ptr noundef %i.bj) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @button_pressed(ptr nofree noundef readonly captures(none) %0, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #1 {
bb.a:
  %7 = alloca %struct._image_box, align 8         ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 18 uses
  %i.c = insertelement <2 x double> poison, double %1, i64 0
  %i.d = insertelement <2 x double> %i.c, double %2, i64 1
  %i.e = fptrunc <2 x double> %i.d to <2 x float> ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 3432
  store <2 x float> %i.e, ptr %i.f, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 3424 ; 3 uses
  store i32 -1, ptr %i.g, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 3396
  %i.i = load i32, ptr %i.h, align 4, !tbaa !112
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 3400
  store i32 1, ptr %i.j, align 8, !tbaa !113
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 3420
  store i32 -1, ptr %i.k, align 4, !tbaa !106
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 3404 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 3408
  %i.n = shufflevector <2 x float> %i.e, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x float> %i.n, ptr %i.l, align 4, !tbaa !33
  tail call fastcc void @_snap_to_grid(ptr noundef nonnull %i.b, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m)
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 3420 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !106  ; 4 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  switch i32 %4, label %.thread [
    i32 2, label %bb.f
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.r = tail call i32 @gtk_accelerator_get_default_mod_mask() #19
  %i.s = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !133
  %i.t = or i32 %i.s, %6
  %i.u = and i32 %i.t, %i.r
  %.not67 = icmp eq i32 %i.u, 4
  %.pre68 = load i32, ptr %i.o, align 4, !tbaa !106 ; 2 uses
  br i1 %.not67, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.v = phi i32 [ %i.p, %bb.d ], [ %.pre68, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 1360 ; 2 uses
  %i.x = sext i32 %i.v to i64
  %i.y = getelementptr inbounds [96 x i8], ptr %i.w, i64 %i.x ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull align 8 dereferenceable(96) %i.y, i64 96, i1 false)
  %i.z = getelementptr i8, ptr %i.y, i64 -96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.y, ptr noundef nonnull align 8 dereferenceable(96) %i.z, i64 96, i1 false)
  %i.aa = load i32, ptr %i.o, align 4, !tbaa !106
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr [96 x i8], ptr %i.w, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 -96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ad, ptr noundef nonnull align 8 dereferenceable(96) %7, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.o

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %i.ae = phi i32 [ %i.p, %bb.c ], [ %.pre68, %bb.e ] ; 4 uses
  %i.af = icmp ne i32 %i.ae, -1                   ; 2 uses
  %i.ag = icmp eq i32 %4, 1
  %or.cond = and i1 %i.ag, %i.af
  br i1 %or.cond, label %bb.g, label %.thread

bb.g:                                             ; preds = %._crit_edge
  %i.ah = sext i32 %i.ae to i64
  %i.ai = getelementptr [96 x i8], ptr %i.b, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 3400
  store i32 1, ptr %i.aj, align 8, !tbaa !113
  %i.ak = getelementptr i8, ptr %i.ai, i64 1416
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 3404
  %i.am = getelementptr i8, ptr %i.ai, i64 1424
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 3412
  %i.ao = load <2 x float>, ptr %i.ak, align 8, !tbaa !33 ; 3 uses
  store <2 x float> %i.ao, ptr %i.al, align 4, !tbaa !33
  %i.ap = load <2 x float>, ptr %i.am, align 8, !tbaa !33 ; 2 uses
  %i.aq = fadd reassoc nsz arcp contract afn <2 x float> %i.ap, %i.ao
  store <2 x float> %i.aq, ptr %i.an, align 4, !tbaa !33
  store i32 %i.ae, ptr %i.g, align 8, !tbaa !29
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 3440
  store i32 1, ptr %i.ar, align 8, !tbaa !99
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 3428 ; 2 uses
  %i.at = fsub reassoc nsz arcp contract afn <2 x float> %i.ao, %i.e ; 2 uses
  %i.au = fadd reassoc nsz arcp contract afn <2 x float> %i.ap, %i.at
  %i.av = shufflevector <2 x float> %i.au, <2 x float> %i.at, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.aw = tail call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.av)
  %i.ax = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.aw, splat (float 2.000000e+01) ; 4 uses
  %i.ay = extractelement <4 x i1> %i.ax, i64 3
  %spec.store.select.i = zext i1 %i.ay to i32     ; 2 uses
  %i.az = or disjoint i32 %spec.store.select.i, 4
  %i.ba = extractelement <4 x i1> %i.ax, i64 2
  %i.bb = select i1 %i.ba, i32 %i.az, i32 %spec.store.select.i ; 2 uses
  %i.bc = or disjoint i32 %i.bb, 2
  %i.bd = extractelement <4 x i1> %i.ax, i64 1
  %i.be = select i1 %i.bd, i32 %i.bc, i32 %i.bb   ; 3 uses
  store i32 %i.be, ptr %i.as, align 4, !tbaa !108
  %i.bf = extractelement <4 x i1> %i.ax, i64 0
  br i1 %i.bf, label %.thread.i, label %bb.h

.thread.i:                                        ; preds = %bb.g
  %i.bg = or disjoint i32 %i.be, 8
  br label %.sink.split.i

bb.h:                                             ; preds = %bb.g
  %i.bh = icmp eq i32 %i.be, 0
  br i1 %i.bh, label %.sink.split.i, label %_get_control.exit

.sink.split.i:                                    ; preds = %bb.h, %.thread.i
  %.sink.i = phi i32 [ %i.bg, %.thread.i ], [ 15, %bb.h ]
  store i32 %.sink.i, ptr %i.as, align 4, !tbaa !108
  br label %_get_control.exit

_get_control.exit:                                ; preds = %bb.h, %.sink.split.i
  tail call void @dt_control_change_cursor(ptr noundef nonnull @.str.11) #19
  br label %bb.o

.thread:                                          ; preds = %bb.d, %._crit_edge
  %i.bi = phi i1 [ %i.af, %._crit_edge ], [ true, %bb.d ]
  %i.bj = phi i32 [ %i.ae, %._crit_edge ], [ %i.p, %bb.d ] ; 5 uses
  %i.bk = icmp eq i32 %4, 3
  %or.cond3 = and i1 %i.bk, %i.bi
  br i1 %or.cond3, label %bb.i, label %bb.o

bb.i:                                             ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 1360
  %i.bm = sext i32 %i.bj to i64                   ; 2 uses
  %i.bn = getelementptr inbounds [96 x i8], ptr %i.bl, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !105
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.bn, align 8, !tbaa !105
  br label %_page_delete_area.exit

bb.k:                                             ; preds = %bb.i
  %.val = load ptr, ptr %i.a, align 8, !tbaa !88  ; 8 uses
  %i.bq = icmp eq i32 %i.bj, -1
  br i1 %i.bq, label %_page_delete_area.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.k
  %i.br = icmp slt i32 %i.bj, 19
  br i1 %i.br, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.bs = mul nsw i64 %i.bm, 96
  %i.bt = getelementptr i8, ptr %.val, i64 %i.bs  ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.bt, i64 1360
  %scevgep2.i = getelementptr i8, ptr %i.bt, i64 1456
  %i.bu = sub i32 18, %i.bj
  %i.bv = zext i32 %i.bu to i64
  %i.bw = mul nuw nsw i64 %i.bv, 96
  %i.bx = add nuw nsw i64 %i.bw, 96
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %scevgep2.i, i64 %i.bx, i1 false)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 3424
  store i32 -1, ptr %i.by, align 8, !tbaa !29
  %i.bz = getelementptr inbounds nuw i8, ptr %.val, i64 3420 ; 2 uses
  store i32 -1, ptr %i.bz, align 4, !tbaa !106
  %i.ca = getelementptr inbounds nuw i8, ptr %.val, i64 3184
  tail call void @dt_printing_clear_box(ptr noundef nonnull %i.ca) #19
  %i.cb = getelementptr inbounds nuw i8, ptr %.val, i64 1352 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !98 ; 2 uses
  %i.cd = add nsw i32 %i.cc, -1
  store i32 %i.cd, ptr %i.cb, align 8, !tbaa !98
  %i.ce = icmp sgt i32 %i.cc, 1
  br i1 %i.ce, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i
  store i32 0, ptr %i.bz, align 4, !tbaa !106
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !126
  tail call void @gtk_widget_set_sensitive(ptr noundef %i.cg, i32 noundef 0) #19
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @_fill_box_values(ptr noundef nonnull %.val)
  %i.ch = getelementptr inbounds nuw i8, ptr %.val, i64 3440
  store i32 1, ptr %i.ch, align 8, !tbaa !99
  tail call void @dt_control_queue_redraw_center() #19
  %.pre = load i32, ptr %i.o, align 4, !tbaa !106
  br label %_page_delete_area.exit

_page_delete_area.exit:                           ; preds = %bb.n, %bb.k, %bb.j
  %i.ci = phi i32 [ %.pre, %bb.n ], [ -1, %bb.k ], [ %i.bj, %bb.j ]
  store i32 %i.ci, ptr %i.g, align 8, !tbaa !29
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 3440
  store i32 1, ptr %i.cj, align 8, !tbaa !99
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %.thread, %_page_delete_area.exit, %_get_control.exit, %bb.b
  ret i32 0
}
end_hunk_2
begin_hunk_3_@gui_post_expose:bb.a
  %i.ai = sitofp reassoc nsz arcp contract afn i32 %i.ah to double
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1432
  %i.al = load double, ptr %i.ak, align 8, !tbaa !125
  %i.am = fmul reassoc nsz arcp contract afn double %i.al, 5.000000e+00 ; 3 uses
  %i.an = fcmp reassoc nsz arcp contract afn olt double %i.am, %i.ai
  br i1 %i.an, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store double %i.am, ptr %i.a, align 16, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %i.am, ptr %i.ao, align 8, !tbaa !31
  tail call void @cairo_set_source_rgba(ptr noundef %1, double noundef 1.000000e+00, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 6.000000e-01) #19
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 3296 ; 4 uses
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !100 ; 3 uses
  %i.ar = load i32, ptr %i.z, align 8, !tbaa !30  ; 2 uses
  %.not.i.i527 = icmp eq i32 %i.ar, 0
  %i.as = select i1 %.not.i.i527, i64 1064, i64 1072
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.as
  %.sink.in.i.i528 = load double, ptr %i.at, align 8, !tbaa !31
  %.sink.i.i529 = fptrunc double %.sink.in.i.i528 to float
  %i.au = load float, ptr %i.ad, align 8, !tbaa !102 ; 2 uses
  %i.av = fmul reassoc nsz arcp contract afn float %i.au, %i.v
  %i.aw = fdiv reassoc nsz arcp contract afn float %i.av, %.sink.i.i529
  %i.ax = fadd reassoc nsz arcp contract afn float %i.au, %i.aq
  %i.ay = fcmp reassoc nsz arcp contract afn olt float %i.aq, %i.ax
  br i1 %i.ay, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 3300 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 3308
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.0493570 = phi i32 [ 0, %.lr.ph ], [ %i.bv, %bb.f ] ; 2 uses
  %.0495569 = phi float [ %i.aq, %.lr.ph ], [ %i.bu, %bb.f ] ; 2 uses
  %i.bb = urem i32 %.0493570, 5
  %i.bc = icmp eq i32 %i.bb, 0                    ; 2 uses
  %i.bd = select i1 %i.bc, i32 0, i32 2
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1432
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !125
  %i.bh = fmul reassoc nsz arcp contract afn double %i.bg, 5.000000e+00
  call void @cairo_set_dash(ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef %i.bd, double noundef %i.bh) #19
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1432
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !125 ; 2 uses
  %i.bl = fmul reassoc nsz arcp contract afn double %i.bk, 5.000000e-01
  %i.bm = select reassoc nsz arcp contract afn i1 %i.bc, double %i.bk, double %i.bl
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.bm) #19
  %i.bn = fpext reassoc nsz arcp contract afn float %.0495569 to double ; 2 uses
  %i.bo = load float, ptr %i.az, align 4, !tbaa !101
  %i.bp = fpext reassoc nsz arcp contract afn float %i.bo to double
  call void @cairo_move_to(ptr noundef %1, double noundef %i.bn, double noundef %i.bp) #19
  %i.bq = load float, ptr %i.az, align 4, !tbaa !101
  %i.br = load float, ptr %i.ba, align 4, !tbaa !103
  %i.bs = fadd reassoc nsz arcp contract afn float %i.br, %i.bq
  %i.bt = fpext reassoc nsz arcp contract afn float %i.bs to double
  call void @cairo_line_to(ptr noundef %1, double noundef %i.bn, double noundef %i.bt) #19
  call void @cairo_stroke(ptr noundef %1) #19
  %i.bu = fadd reassoc nsz arcp contract afn float %.0495569, %i.aw ; 2 uses
  %i.bv = add nuw nsw i32 %.0493570, 1
  %i.bw = load float, ptr %i.ap, align 8, !tbaa !100
  %i.bx = load float, ptr %i.ad, align 8, !tbaa !102
  %i.by = fadd reassoc nsz arcp contract afn float %i.bx, %i.bw
  %i.bz = fcmp reassoc nsz arcp contract afn olt float %i.bu, %i.by
  br i1 %i.bz, label %bb.f, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre = load i32, ptr %i.z, align 8, !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.ca = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.ar, %bb.e ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 3300 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !101 ; 3 uses
  %.not.i.i530 = icmp eq i32 %i.ca, 0
  %i.cd = select i1 %.not.i.i530, i64 1072, i64 1064
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cd
  %storemerge.in.i.i = load double, ptr %i.ce, align 8, !tbaa !31
  %storemerge.i.i = fptrunc double %storemerge.in.i.i to float
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 3308 ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !103 ; 2 uses
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cg, %i.v
  %i.ci = fdiv reassoc nsz arcp contract afn float %i.ch, %storemerge.i.i
  %i.cj = fadd reassoc nsz arcp contract afn float %i.cg, %i.cc
  %i.ck = fcmp reassoc nsz arcp contract afn olt float %i.cc, %i.cj
  br i1 %i.ck, label %.lr.ph574, label %._crit_edge575

.lr.ph574:                                        ; preds = %._crit_edge, %.lr.ph574
  %.1494572 = phi i32 [ %i.df, %.lr.ph574 ], [ 0, %._crit_edge ] ; 2 uses
  %.1496571 = phi float [ %i.de, %.lr.ph574 ], [ %i.cc, %._crit_edge ] ; 2 uses
  %i.cl = urem i32 %.1494572, 5
  %i.cm = icmp eq i32 %i.cl, 0                    ; 2 uses
  %i.cn = select i1 %i.cm, i32 0, i32 2
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1432
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !125
  %i.cr = fmul reassoc nsz arcp contract afn double %i.cq, 5.000000e+00
  call void @cairo_set_dash(ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef %i.cn, double noundef %i.cr) #19
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1432
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !125 ; 2 uses
  %i.cv = fmul reassoc nsz arcp contract afn double %i.cu, 5.000000e-01
  %i.cw = select reassoc nsz arcp contract afn i1 %i.cm, double %i.cu, double %i.cv
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.cw) #19
  %i.cx = load float, ptr %i.ap, align 8, !tbaa !100
  %i.cy = fpext reassoc nsz arcp contract afn float %i.cx to double
  %i.cz = fpext reassoc nsz arcp contract afn float %.1496571 to double ; 2 uses
  call void @cairo_move_to(ptr noundef %1, double noundef %i.cy, double noundef %i.cz) #19
  %i.da = load float, ptr %i.ap, align 8, !tbaa !100
  %i.db = load float, ptr %i.ad, align 8, !tbaa !102
  %i.dc = fadd reassoc nsz arcp contract afn float %i.db, %i.da
  %i.dd = fpext reassoc nsz arcp contract afn float %i.dc to double
  call void @cairo_line_to(ptr noundef %1, double noundef %i.dd, double noundef %i.cz) #19
  call void @cairo_stroke(ptr noundef %1) #19
  %i.de = fadd reassoc nsz arcp contract afn float %.1496571, %i.ci ; 2 uses
  %i.df = add nuw nsw i32 %.1494572, 1
  %i.dg = load float, ptr %i.cb, align 4, !tbaa !101
  %i.dh = load float, ptr %i.cf, align 4, !tbaa !103
  %i.di = fadd reassoc nsz arcp contract afn float %i.dh, %i.dg
  %i.dj = fcmp reassoc nsz arcp contract afn olt float %i.de, %i.di
  br i1 %i.dj, label %.lr.ph574, label %._crit_edge575

._crit_edge575:                                   ; preds = %.lr.ph574, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge575, %bb.d, %bb.c
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 1.000000e+00, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 6.000000e-01) #19
  call void @cairo_set_dash(ptr noundef %1, ptr noundef null, i32 noundef 0, double noundef 0.000000e+00) #19
  %i.dk = getelementptr inbounds nuw i8, ptr %i.g, i64 1352 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !98
  %i.dm = icmp sgt i32 %i.dl, 0
  br i1 %i.dm, label %.lr.ph578, label %._crit_edge579

.lr.ph578:                                        ; preds = %bb.g
  %i.dn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1448
  %i.dp = load double, ptr %i.do, align 8, !tbaa !202
  %i.dq = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.dp
  %i.dr = fptrunc reassoc nsz arcp contract afn double %i.dq to float
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 1360
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 3392 ; 3 uses
  %i.dw = fpext reassoc nsz arcp contract afn float %i.dr to double ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.g, i64 3400
  %i.dy = getelementptr inbounds nuw i8, ptr %i.g, i64 3420 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.g, i64 3424
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 3428
  %i.ec = getelementptr inbounds nuw i8, ptr %i.g, i64 1348
  br label %bb.h

._crit_edge579:                                   ; preds = %bb.aa, %bb.g
  %i.ed = getelementptr inbounds nuw i8, ptr %i.g, i64 3400
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !113
  %.not513 = icmp eq i32 %i.ee, 0                 ; 2 uses
  br i1 %.not513, label %bb.ab, label %bb.ac

bb.h:                                             ; preds = %.lr.ph578, %bb.aa
  %indvars.iv = phi i64 [ 0, %.lr.ph578 ], [ %indvars.iv.next, %bb.aa ] ; 8 uses
  %i.ef = getelementptr inbounds nuw [96 x i8], ptr %i.ds, i64 %indvars.iv ; 9 uses
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !105 ; 2 uses
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr null, ptr %i.b, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 36
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !79
  %i.ek = trunc nuw nsw i64 %indvars.iv to i32
  call void @dt_printing_setup_image(ptr noundef nonnull %i.h, i32 noundef %i.ek, i32 noundef %i.eg, i32 noundef 100, i32 noundef 100, i32 noundef %i.ej) #19
  call void @dt_printing_get_screen_pos(ptr noundef nonnull %i.h, ptr noundef nonnull %i.ef, ptr noundef nonnull %6) #19
  %i.el = load i32, ptr %i.ef, align 8, !tbaa !105
  %i.em = load float, ptr %i.dt, align 8, !tbaa !131
  %i.en = fptosi float %i.em to i32
  %i.eo = load float, ptr %i.du, align 4, !tbaa !132
  %i.ep = fptosi float %i.eo to i32
  %i.eq = call i32 @dt_view_image_get_surface(i32 noundef %i.el, i32 noundef %i.en, i32 noundef %i.ep, ptr noundef nonnull %i.b, i32 noundef 1) #19
  %.not517 = icmp eq i32 %i.eq, 0
  br i1 %.not517, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.er = call i32 @g_timeout_add(i32 noundef 250, ptr noundef nonnull @_expose_again, ptr noundef nonnull %i.g) #19 ; 0 uses
  %i.es = load i32, ptr %i.dv, align 8, !tbaa !204
  %.not522 = icmp eq i32 %i.es, 0
  br i1 %.not522, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  call void (...) @dt_control_busy_enter() #19
  br label %bb.q

bb.l:                                             ; preds = %bb.i
  call void @cairo_save(ptr noundef %1) #19
  %i.et = load <2 x float>, ptr %6, align 8, !tbaa !33
  %i.eu = fpext <2 x float> %i.et to <2 x double> ; 2 uses
  %i.ev = extractelement <2 x double> %i.eu, i64 0
  %i.ew = extractelement <2 x double> %i.eu, i64 1
  call void @cairo_translate(ptr noundef %1, double noundef %i.ev, double noundef %i.ew) #19
  call void @cairo_scale(ptr noundef %1, double noundef %i.dw, double noundef %i.dw) #19
  %i.ex = load ptr, ptr %i.b, align 8, !tbaa !203
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.ex, double noundef 0.000000e+00, double noundef 0.000000e+00) #19
  %i.ey = load i32, ptr %i.dx, align 8, !tbaa !113
  %.not518 = icmp eq i32 %i.ey, 0
  br i1 %.not518, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ez = load i32, ptr %i.dy, align 4, !tbaa !106 ; 2 uses
  %.not519 = icmp eq i32 %i.ez, -1
  br i1 %.not519, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fa = zext i32 %i.ez to i64
  %.not520 = icmp eq i64 %indvars.iv, %i.fa
  %i.fb = select reassoc nsz arcp contract afn i1 %.not520, double 1.000000e+00, double 2.500000e-01
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l
  %i.fc = phi double [ 2.500000e-01, %bb.l ], [ 1.000000e+00, %bb.m ], [ %i.fb, %bb.n ]
  call void @cairo_paint_with_alpha(ptr noundef %1, double noundef %i.fc) #19
  %i.fd = load ptr, ptr %i.b, align 8, !tbaa !203
  call void @cairo_surface_destroy(ptr noundef %i.fd) #19
  call void @cairo_restore(ptr noundef %1) #19
  %i.fe = load i32, ptr %i.dv, align 8, !tbaa !204
  %.not521 = icmp eq i32 %i.fe, 0
  br i1 %.not521, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void (...) @dt_control_busy_leave() #19
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.j, %bb.k
  %storemerge = phi i32 [ 1, %bb.j ], [ 1, %bb.k ], [ 0, %bb.p ], [ 0, %bb.o ]
  store i32 %storemerge, ptr %i.dv, align 8, !tbaa !204
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.h
  %i.ff = load i32, ptr %i.dy, align 4, !tbaa !106
  %i.fg = zext i32 %i.ff to i64
  %i.fh = icmp eq i64 %indvars.iv, %i.fg
  br i1 %i.fh, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fi = load i32, ptr %i.ef, align 8, !tbaa !105
  %i.fj = icmp sgt i32 %i.fi, 0
  br i1 %i.fj, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 4.000000e-01, double noundef 4.000000e-01, double noundef 4.000000e-01, double noundef 1.000000e+00) #19
  %i.fk = load i32, ptr %i.dy, align 4, !tbaa !106
  %i.fl = zext i32 %i.fk to i64
  %i.fm = icmp eq i64 %indvars.iv, %i.fl
  br i1 %i.fm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fn = load i32, ptr %i.eb, align 4, !tbaa !108
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.fo = phi i32 [ %i.fn, %bb.u ], [ 0, %bb.t ]
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ef, i64 64
  %i.fr = load <2 x float>, ptr %i.fp, align 8, !tbaa !33 ; 3 uses
  %i.fs = extractelement <2 x float> %i.fr, i64 0
  %i.ft = fptosi float %i.fs to i32
  %i.fu = extractelement <2 x float> %i.fr, i64 1
  %i.fv = fptosi float %i.fu to i32
  %i.fw = load <2 x float>, ptr %i.fq, align 8, !tbaa !33
  %i.fx = fadd reassoc nsz arcp contract afn <2 x float> %i.fw, %i.fr ; 2 uses
  %i.fy = extractelement <2 x float> %i.fx, i64 0
  %i.fz = fptosi float %i.fy to i32
  %i.ga = extractelement <2 x float> %i.fx, i64 1
  %i.gb = fptosi float %i.ga to i32
  call void @_cairo_rectangle(ptr noundef %1, i32 noundef %i.fo, i32 noundef %i.ft, i32 noundef %i.fv, i32 noundef %i.fz, i32 noundef %i.gb)
  call void @cairo_stroke(ptr noundef %1) #19
  br label %bb.y

bb.w:                                             ; preds = %bb.s
  %i.gc = load i32, ptr %i.dz, align 8, !tbaa !29
  %i.gd = zext i32 %i.gc to i64
  %i.ge = icmp eq i64 %indvars.iv, %i.gd
  br i1 %i.ge, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.gf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 1432
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !125
  %i.gi = fmul reassoc nsz arcp contract afn double %i.gh, 5.000000e+00 ; 2 uses
  store double %i.gi, ptr %i.c, align 16, !tbaa !31
  store double %i.gi, ptr %i.ea, align 8, !tbaa !31
  call void @cairo_set_line_width(ptr noundef %1, double noundef 1.000000e+00) #19
  %i.gj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 1432
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !125
  %i.gm = fmul reassoc nsz arcp contract afn double %i.gl, 5.000000e+00
  call void @cairo_set_dash(ptr noundef %1, ptr noundef nonnull %i.c, i32 noundef 1, double noundef %i.gm) #19
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 6.000000e-01, double noundef 6.000000e-01, double noundef 6.000000e-01, double noundef 1.000000e+00) #19
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  %i.go = load <4 x float>, ptr %i.gn, align 8, !tbaa !33
  %i.gp = fpext <4 x float> %i.go to <4 x double> ; 4 uses
  %i.gq = extractelement <4 x double> %i.gp, i64 0
  %i.gr = extractelement <4 x double> %i.gp, i64 1
  %i.gs = extractelement <4 x double> %i.gp, i64 2
  %i.gt = extractelement <4 x double> %i.gp, i64 3
  call void @cairo_rectangle(ptr noundef %1, double noundef %i.gq, double noundef %i.gr, double noundef %i.gs, double noundef %i.gt) #19
  call void @cairo_stroke(ptr noundef %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.v
  %i.gu = load i32, ptr %i.ec, align 4, !tbaa !136
  %i.gv = zext i32 %i.gu to i64
  %i.gw = icmp eq i64 %indvars.iv, %i.gv
  br i1 %i.gw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 1.000000e+00) #19
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  %i.gy = load <4 x float>, ptr %i.gx, align 8, !tbaa !33
  %i.gz = fpext <4 x float> %i.gy to <4 x double> ; 4 uses
  %i.ha = extractelement <4 x double> %i.gz, i64 0
  %i.hb = extractelement <4 x double> %i.gz, i64 1
  %i.hc = extractelement <4 x double> %i.gz, i64 2
  %i.hd = extractelement <4 x double> %i.gz, i64 3
  call void @cairo_rectangle(ptr noundef %1, double noundef %i.ha, double noundef %i.hb, double noundef %i.hc, double noundef %i.hd) #19
  call void @cairo_fill(ptr noundef %1) #19
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.he = load i32, ptr %i.dk, align 8, !tbaa !98
  %i.hf = sext i32 %i.he to i64
  %i.hg = icmp slt i64 %indvars.iv.next, %i.hf
  br i1 %i.hg, label %bb.h, label %._crit_edge579

bb.ab:                                            ; preds = %._crit_edge579
  %i.hh = getelementptr inbounds nuw i8, ptr %i.g, i64 3420
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !106
  %.not514 = icmp eq i32 %i.hi, -1
  br i1 %.not514, label %bb.av, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge579
  %i.hj = getelementptr inbounds nuw i8, ptr %i.g, i64 336 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.g, i64 768
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !30
  %.not.i = icmp eq i32 %i.hl, 0                  ; 4 uses
  %..i = select i1 %.not.i, i64 728, i64 736
  %.11.i = select i1 %.not.i, i64 736, i64 728
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 %..i
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 %.11.i
  %.sink.in.i = load double, ptr %i.hm, align 8, !tbaa !31
  %storemerge.in.i = load double, ptr %i.hn, align 8, !tbaa !31
  %i.ho = insertelement <2 x double> poison, double %.sink.in.i, i64 0
  %i.hp = insertelement <2 x double> %i.ho, double %storemerge.in.i, i64 1
  %i.hq = fptrunc <2 x double> %i.hp to <2 x float> ; 3 uses
  br i1 %.not513, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hr = getelementptr inbounds nuw i8, ptr %i.g, i64 3404
  %i.hs = select i1 %.not.i, i64 1064, i64 1072
  %i.ht = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.hs
  %.sink.in.i.i532 = load double, ptr %i.ht, align 8, !tbaa !31
  %i.hu = getelementptr inbounds nuw i8, ptr %i.g, i64 3296
  %i.hv = getelementptr inbounds nuw i8, ptr %i.g, i64 3304
  %i.hw = load i32, ptr %i.o, align 8, !tbaa !32
  %i.hx = zext i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr @units, i64 %i.hx
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !33
  %i.ia = select i1 %.not.i, i64 1072, i64 1064
  %i.ib = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ia
  %storemerge.in.i.i535 = load double, ptr %i.ib, align 8, !tbaa !31
  %i.ic = load <4 x float>, ptr %i.hr, align 4, !tbaa !33 ; 2 uses
  %i.id = insertelement <2 x double> poison, double %.sink.in.i.i532, i64 0
  %i.ie = insertelement <2 x double> %i.id, double %storemerge.in.i.i535, i64 1
  %i.if = fptrunc <2 x double> %i.ie to <2 x float>
  %i.ig = load <2 x float>, ptr %i.hu, align 8, !tbaa !33
  %i.ih = shufflevector <2 x float> %i.ig, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ii = load <2 x float>, ptr %i.hv, align 8, !tbaa !33
  %i.ij = shufflevector <2 x float> %i.ii, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ik = insertelement <2 x float> poison, float %i.hz, i64 0
  %i.il = shufflevector <2 x float> %i.ik, <2 x float> poison, <4 x i32> zeroinitializer
  %i.im = shufflevector <2 x float> %i.if, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.in = fmul reassoc nsz arcp contract afn <4 x float> %i.il, %i.im
  %i.io = fsub reassoc nsz arcp contract afn <4 x float> %i.ic, %i.ih
  %i.ip = fmul reassoc nsz arcp contract afn <4 x float> %i.in, %i.io
  %i.iq = fdiv reassoc nsz arcp contract afn <4 x float> %i.ip, %i.ij ; 3 uses
  %i.ir = shufflevector <4 x float> %i.iq, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.is = shufflevector <4 x float> %i.iq, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.it = fsub reassoc nsz arcp contract afn <2 x float> %i.ir, %i.is
  %i.iu = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.it)
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.iv = getelementptr inbounds nuw i8, ptr %i.g, i64 1360
  %i.iw = getelementptr inbounds nuw i8, ptr %i.g, i64 3420
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !106
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds [96 x i8], ptr %i.iv, i64 %i.iy ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 40
  %.val526 = load i32, ptr %i.o, align 8, !tbaa !32
  %i.jb = zext i32 %.val526 to i64
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr @units, i64 %i.jb
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !33
  %i.je = getelementptr inbounds nuw i8, ptr %i.iz, i64 48
  %i.jf = load <2 x float>, ptr %i.ja, align 8, !tbaa !33
  %i.jg = insertelement <2 x float> poison, float %i.jd, i64 0
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ji = fmul reassoc nsz arcp contract afn <2 x float> %i.jh, %i.hq ; 2 uses
  %i.jj = fmul reassoc nsz arcp contract afn <2 x float> %i.ji, %i.jf ; 2 uses
  %i.jk = load <2 x float>, ptr %i.je, align 8, !tbaa !33
  %i.jl = fmul reassoc nsz arcp contract afn <2 x float> %i.ji, %i.jk ; 2 uses
  %i.jm = fadd reassoc nsz arcp contract afn <2 x float> %i.jl, %i.jj
  %i.jn = getelementptr inbounds nuw i8, ptr %i.iz, i64 56
  %i.jo = getelementptr inbounds nuw i8, ptr %i.iz, i64 64
  %i.jp = load <2 x float>, ptr %i.jn, align 8, !tbaa !33 ; 2 uses
  %i.jq = load <2 x float>, ptr %i.jo, align 8, !tbaa !33
  %i.jr = fadd reassoc nsz arcp contract afn <2 x float> %i.jq, %i.jp
  %i.js = shufflevector <2 x float> %i.jj, <2 x float> %i.jm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jt = shufflevector <2 x float> %i.jp, <2 x float> %i.jr, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ju = phi <4 x float> [ %i.iq, %bb.ad ], [ %i.js, %bb.ae ] ; 4 uses
  %i.jv = phi <4 x float> [ %i.ic, %bb.ad ], [ %i.jt, %bb.ae ] ; 6 uses
  %i.jw = phi <2 x float> [ %i.iu, %bb.ad ], [ %i.jl, %bb.ae ]
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 4.000000e-01, double noundef 4.000000e-01, double noundef 4.000000e-01, double noundef 1.000000e+00) #19
  %i.jx = getelementptr inbounds nuw i8, ptr %i.g, i64 3428
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !108
  %i.jz = extractelement <4 x float> %i.jv, i64 0 ; 6 uses
  %i.ka = fptosi float %i.jz to i32
  %i.kb = extractelement <4 x float> %i.jv, i64 1 ; 5 uses
  %i.kc = fptosi float %i.kb to i32
  %i.kd = extractelement <4 x float> %i.jv, i64 2 ; 8 uses
  %i.ke = fptosi float %i.kd to i32
  %i.kf = extractelement <4 x float> %i.jv, i64 3 ; 8 uses
  %i.kg = fptosi float %i.kf to i32
  call void @_cairo_rectangle(ptr noundef %1, i32 noundef %i.jy, i32 noundef %i.ka, i32 noundef %i.kc, i32 noundef %i.ke, i32 noundef %i.kg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.kh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !205
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 336
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !215
  %i.kk = call ptr @pango_font_description_copy_static(ptr noundef %i.kj) #19 ; 4 uses
  call void @pango_font_description_set_weight(ptr noundef %i.kk, i32 noundef 700) #19
  %i.kl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 1432
  %i.kn = load double, ptr %i.km, align 8, !tbaa !125
  %i.ko = fmul reassoc nsz arcp contract afn double %i.kn, 1.638400e+04
  call void @pango_font_description_set_absolute_size(ptr noundef %i.kk, double noundef %i.ko) #19
  %i.kp = call ptr @pango_cairo_create_layout(ptr noundef %1) #19 ; 23 uses
  call void @pango_layout_set_font_description(ptr noundef %i.kp, ptr noundef %i.kk) #19
  %i.kq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 1432
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !125 ; 25 uses
  %i.kt = fmul reassoc nsz arcp contract afn double %i.ks, 1.800000e+01 ; 8 uses
  %i.ku = fmul reassoc nsz arcp contract afn double %i.ks, 6.000000e+00 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.kv = fmul reassoc nsz arcp contract afn double %i.ks, 4.000000e+00
  store double %i.kv, ptr %i.e, align 8, !tbaa !31
  %i.kw = load i32, ptr %i.o, align 8, !tbaa !32
  %i.kx = zext i32 %i.kw to i64
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr @units, i64 %i.kx
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !33
  %i.la = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.kz
  %i.lb = call reassoc nsz arcp contract afn float @llvm.log10.f32(float %i.la)
  %i.lc = call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.lb)
  %i.ld = fptosi float %i.lc to i32
  %i.le = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.107, i32 noundef %i.ld) #19 ; 7 uses
  %i.lf = fpext reassoc nsz arcp contract afn float %i.kb to double ; 7 uses
  %i.lg = fsub reassoc nsz arcp contract afn float %i.kf, %i.kb
  %i.lh = fpext reassoc nsz arcp contract afn float %i.lg to double
  %i.li = fsub reassoc nsz arcp contract afn double %i.lh, %i.kt
  %i.lj = fmul reassoc nsz arcp contract afn double %i.li, 5.000000e-01
  %i.lk = fadd reassoc nsz arcp contract afn double %i.lj, %i.lf ; 4 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.g, i64 3296 ; 6 uses
  %i.lm = load float, ptr %i.ll, align 8, !tbaa !100 ; 4 uses
  %i.ln = fcmp reassoc nsz arcp contract afn ult float %i.jz, %i.lm
  br i1 %i.ln, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.lo = getelementptr inbounds nuw i8, ptr %i.g, i64 3304
  %i.lp = load float, ptr %i.lo, align 8, !tbaa !102
  %i.lq = fadd reassoc nsz arcp contract afn float %i.lp, %i.lm
  %i.lr = fcmp reassoc nsz arcp contract afn ugt float %i.jz, %i.lq
  br i1 %i.lr, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ls = extractelement <4 x float> %i.ju, i64 0
  %i.lt = fpext reassoc nsz arcp contract afn float %i.ls to double
  %i.lu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 16, ptr noundef %i.le, double noundef %i.lt) #19 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.kp, ptr noundef nonnull %i.d, i32 noundef -1) #19
  call void @pango_layout_get_pixel_extents(ptr noundef %i.kp, ptr noundef null, ptr noundef nonnull %7) #19
  %i.lv = load float, ptr %i.ll, align 8, !tbaa !100
  %i.lw = fpext reassoc nsz arcp contract afn float %i.lv to double ; 2 uses
  %i.lx = fpext reassoc nsz arcp contract afn float %i.jz to double ; 3 uses
  %i.ly = fadd reassoc nsz arcp contract afn double %i.kt, %i.lw ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !217
  %i.mb = sitofp reassoc nsz arcp contract afn i32 %i.ma to double ; 2 uses
  %i.mc = fadd reassoc nsz arcp contract afn double %i.ly, %i.mb
  %i.md = fsub reassoc nsz arcp contract afn double %i.lx, %i.mc
  %i.me = fmul reassoc nsz arcp contract afn double %i.md, 5.000000e-01
  %i.mf = fadd reassoc nsz arcp contract afn double %i.me, %i.lw ; 2 uses
  %i.mg = fcmp reassoc nsz arcp contract afn olt double %i.mf, %i.ly
  %i.mh = fmul reassoc nsz arcp contract afn double %i.ks, 1.200000e+01 ; 2 uses
  br i1 %i.mg, label %bb.ai, label %._crit_edge583

bb.ai:                                            ; preds = %bb.ah
  %i.mi = fadd reassoc nsz arcp contract afn double %i.mh, %i.lx
  %i.mj = fpext reassoc nsz arcp contract afn float %i.kf to double
  %i.mk = fsub reassoc nsz arcp contract afn double %i.mj, %i.kt ; 2 uses
  %i.ml = fmul reassoc nsz arcp contract afn double %i.ks, 2.700000e+01
  %i.mm = fadd reassoc nsz arcp contract afn double %i.ml, %i.lk
  %i.mn = fadd reassoc nsz arcp contract afn double %i.mm, %i.mb ; 2 uses
  %i.mo = fcmp reassoc nsz arcp contract afn olt double %i.mk, %i.mn
  %. = select reassoc nsz arcp contract afn i1 %i.mo, double %i.mk, double %i.mn
  br label %._crit_edge583

._crit_edge583:                                   ; preds = %bb.ah, %bb.ai
  %.0477 = phi nsz double [ %i.mi, %bb.ai ], [ %i.mf, %bb.ah ] ; 2 uses
end_hunk_3
begin_hunk_4_@gui_post_expose:bb.a
  %i.pm = getelementptr inbounds nuw i8, ptr %i.g, i64 3300 ; 6 uses
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !101 ; 4 uses
  %i.po = fcmp reassoc nsz arcp contract afn ult float %i.kb, %i.pn
  br i1 %i.po, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.pp = getelementptr inbounds nuw i8, ptr %i.g, i64 3308
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !103
  %i.pr = fadd reassoc nsz arcp contract afn float %i.pq, %i.pn
  %i.ps = fcmp reassoc nsz arcp contract afn ugt float %i.kb, %i.pr
  br i1 %i.ps, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.pt = extractelement <4 x float> %i.ju, i64 1
  %i.pu = fpext reassoc nsz arcp contract afn float %i.pt to double
  %i.pv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 16, ptr noundef %i.le, double noundef %i.pu) #19 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.kp, ptr noundef nonnull %i.d, i32 noundef -1) #19
  call void @pango_layout_get_pixel_extents(ptr noundef %i.kp, ptr noundef null, ptr noundef nonnull %7) #19
  %i.pw = load float, ptr %i.pm, align 4, !tbaa !101
  %i.px = fpext reassoc nsz arcp contract afn float %i.pw to double ; 2 uses
  %i.py = fadd reassoc nsz arcp contract afn double %i.kt, %i.px ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !217
  %i.qb = sitofp reassoc nsz arcp contract afn i32 %i.qa to double ; 2 uses
  %i.qc = fadd reassoc nsz arcp contract afn double %i.py, %i.qb
  %i.qd = fsub reassoc nsz arcp contract afn double %i.lf, %i.qc
  %i.qe = fmul reassoc nsz arcp contract afn double %i.qd, 5.000000e-01
  %i.qf = fadd reassoc nsz arcp contract afn double %i.qe, %i.px ; 2 uses
  %i.qg = fcmp reassoc nsz arcp contract afn olt double %i.qf, %i.py
  br i1 %i.qg, label %bb.ap, label %._crit_edge584

._crit_edge584:                                   ; preds = %bb.ao
  %.pre585 = fmul reassoc nsz arcp contract afn double %i.ks, 1.200000e+01
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.qh = fpext reassoc nsz arcp contract afn float %i.kd to double
  %i.qi = fsub reassoc nsz arcp contract afn double %i.qh, %i.kt ; 2 uses
  %i.qj = fmul reassoc nsz arcp contract afn double %i.ks, 2.700000e+01
  %i.qk = fadd reassoc nsz arcp contract afn double %i.qj, %i.pl
  %i.ql = fadd reassoc nsz arcp contract afn double %i.qk, %i.qb ; 2 uses
  %i.qm = fcmp reassoc nsz arcp contract afn olt double %i.qi, %i.ql
  %.523 = select reassoc nsz arcp contract afn i1 %i.qm, double %i.qi, double %i.ql
  %i.qn = fmul reassoc nsz arcp contract afn double %i.ks, 1.200000e+01 ; 2 uses
  %i.qo = fadd reassoc nsz arcp contract afn double %i.qn, %i.lf
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge584, %bb.ap
  %.pre-phi = phi double [ %.pre585, %._crit_edge584 ], [ %i.qn, %bb.ap ]
  %.2479 = phi nsz double [ %i.pl, %._crit_edge584 ], [ %.523, %bb.ap ] ; 3 uses
  %.2 = phi nsz double [ %i.qf, %._crit_edge584 ], [ %i.qo, %bb.ap ] ; 2 uses
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666, double noundef 9.000000e-01) #19
  %i.qp = fmul reassoc nsz arcp contract afn double %i.ks, 9.000000e+00
  %i.qq = fadd reassoc nsz arcp contract afn double %.2479, %i.qp ; 3 uses
  %i.qr = load float, ptr %i.pm, align 4, !tbaa !101
  %i.qs = fpext reassoc nsz arcp contract afn float %i.qr to double
  call void @cairo_move_to(ptr noundef %1, double noundef %i.qq, double noundef %i.qs) #19
  call void @cairo_line_to(ptr noundef %1, double noundef %i.qq, double noundef %i.lf) #19
  call void @cairo_stroke_preserve(ptr noundef %1) #19
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 9.000000e-01) #19
  %i.qt = load double, ptr %i.e, align 8, !tbaa !31
  call void @cairo_set_dash(ptr noundef %1, ptr noundef nonnull %i.e, i32 noundef 1, double noundef %i.qt) #19
  call void @cairo_stroke(ptr noundef %1) #19
  call void @cairo_set_dash(ptr noundef %1, ptr noundef null, i32 noundef 0, double noundef 0.000000e+00) #19
  %i.qu = fmul reassoc nsz arcp contract afn double %i.ks, 3.000000e+01
  %i.qv = fptrunc reassoc nsz arcp contract afn double %i.qu to float
  %i.qw = load i32, ptr %i.pz, align 4, !tbaa !217
  %i.qx = sitofp reassoc nsz arcp contract afn i32 %i.qw to double
  %i.qy = fadd reassoc nsz arcp contract afn double %.pre-phi, %i.qx
  %i.qz = fptrunc reassoc nsz arcp contract afn double %i.qy to float
  %i.ra = fsub reassoc nsz arcp contract afn double %.2479, %i.ku
  %i.rb = fptrunc reassoc nsz arcp contract afn double %i.ra to float
  %i.rc = fsub reassoc nsz arcp contract afn double %.2, %i.ku
  %i.rd = fptrunc reassoc nsz arcp contract afn double %i.rc to float
  call void @dt_gui_draw_rounded_rectangle(ptr noundef %1, float noundef %i.qv, float noundef %i.qz, float noundef %i.rb, float noundef %i.rd) #19
  call void @cairo_set_source_rgb(ptr noundef %1, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #19
  %i.re = load i32, ptr %i.pz, align 4, !tbaa !217
  %i.rf = sitofp reassoc nsz arcp contract afn i32 %i.re to double
  %i.rg = fmul reassoc nnan nsz arcp contract afn double %i.rf, 5.000000e-01
  %i.rh = fadd reassoc nsz arcp contract afn double %i.rg, %.2
  call void @cairo_move_to(ptr noundef %1, double noundef %i.qq, double noundef %i.rh) #19
  call void @cairo_save(ptr noundef %1) #19
  call void @cairo_rotate(ptr noundef %1, double noundef f0xBFF921FB54442D18) #19
  %i.ri = load i32, ptr %i.pz, align 4, !tbaa !217
  %i.rj = sitofp reassoc nsz arcp contract afn i32 %i.ri to double
  %i.rk = fmul reassoc nnan nsz arcp contract afn double %i.rj, -5.000000e-01
  %i.rl = fmul reassoc nsz arcp contract afn double %i.ks, -9.000000e+00
  call void @cairo_rel_move_to(ptr noundef %1, double noundef %i.rk, double noundef %i.rl) #19
  call void @pango_cairo_update_layout(ptr noundef %1, ptr noundef %i.kp) #19
  call void @pango_cairo_show_layout(ptr noundef %1, ptr noundef %i.kp) #19
  call void @cairo_restore(ptr noundef %1) #19
  %.pre582 = load float, ptr %i.pm, align 4, !tbaa !101
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an, %bb.am
  %i.rm = phi float [ %.pre582, %bb.aq ], [ %i.pn, %bb.an ], [ %i.pn, %bb.am ] ; 2 uses
  %.3480 = phi nsz double [ %.2479, %bb.aq ], [ %i.pl, %bb.an ], [ %i.pl, %bb.am ] ; 2 uses
  %i.rn = fcmp reassoc nsz arcp contract afn ult float %i.kf, %i.rm
  br i1 %i.rn, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ro = getelementptr inbounds nuw i8, ptr %i.g, i64 3308 ; 3 uses
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !103
  %i.rq = fadd reassoc nsz arcp contract afn float %i.rp, %i.rm
  %i.rr = fcmp reassoc nsz arcp contract afn ugt float %i.kf, %i.rq
  br i1 %i.rr, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.rs = load i32, ptr %i.o, align 8, !tbaa !32
  %i.rt = zext i32 %i.rs to i64
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr @units, i64 %i.rt
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !33
  %i.rw = extractelement <2 x float> %i.hq, i64 1
  %i.rx = fmul reassoc nsz arcp contract afn float %i.rv, %i.rw
  %i.ry = extractelement <4 x float> %i.ju, i64 3
  %i.rz = fsub reassoc nsz arcp contract afn float %i.rx, %i.ry
  %i.sa = fpext reassoc nsz arcp contract afn float %i.rz to double
  %i.sb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 16, ptr noundef %i.le, double noundef %i.sa) #19 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.kp, ptr noundef nonnull %i.d, i32 noundef -1) #19
  call void @pango_layout_get_pixel_extents(ptr noundef %i.kp, ptr noundef null, ptr noundef nonnull %7) #19
  %i.sc = fpext reassoc nsz arcp contract afn float %i.kf to double ; 2 uses
  %i.sd = load float, ptr %i.pm, align 4, !tbaa !101
  %i.se = load float, ptr %i.ro, align 4, !tbaa !103
  %i.sf = fadd reassoc nsz arcp contract afn float %i.se, %i.sd ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !217 ; 2 uses
  %i.si = sitofp reassoc nsz arcp contract afn i32 %i.sh to float ; 2 uses
  %i.sj = fadd reassoc nsz arcp contract afn float %i.kf, %i.si
  %i.sk = fsub reassoc nsz arcp contract afn float %i.sf, %i.sj
  %i.sl = fpext reassoc nsz arcp contract afn float %i.sk to double
  %i.sm = fmul reassoc nsz arcp contract afn double %i.sl, 5.000000e-01
  %i.sn = fadd reassoc nsz arcp contract afn double %i.sm, %i.sc ; 2 uses
  %i.so = sitofp reassoc nsz arcp contract afn i32 %i.sh to double
  %i.sp = fadd reassoc nsz arcp contract afn double %i.ku, %i.so
  %i.sq = fadd reassoc nsz arcp contract afn double %i.sp, %i.sn
  %i.sr = fpext reassoc nsz arcp contract afn float %i.sf to double
  %i.ss = fcmp reassoc nsz arcp contract afn ogt double %i.sq, %i.sr
  %i.st = fsub reassoc nsz arcp contract afn float %i.kf, %i.si
  %i.su = fpext reassoc nsz arcp contract afn float %i.st to double
  %i.sv = fmul reassoc nsz arcp contract afn double %i.ks, 1.200000e+01 ; 2 uses
  %i.sw = fsub reassoc nsz arcp contract afn double %i.su, %i.sv
  %.3 = select nsz i1 %i.ss, double %i.sw, double %i.sn ; 2 uses
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666, double noundef 9.000000e-01) #19
  %i.sx = fmul reassoc nsz arcp contract afn double %i.ks, 9.000000e+00
  %i.sy = fadd reassoc nsz arcp contract afn double %.3480, %i.sx ; 3 uses
  call void @cairo_move_to(ptr noundef %1, double noundef %i.sy, double noundef %i.sc) #19
  %i.sz = load float, ptr %i.pm, align 4, !tbaa !101
  %i.ta = load float, ptr %i.ro, align 4, !tbaa !103
  %i.tb = fadd reassoc nsz arcp contract afn float %i.ta, %i.sz
  %i.tc = fpext reassoc nsz arcp contract afn float %i.tb to double
  call void @cairo_line_to(ptr noundef %1, double noundef %i.sy, double noundef %i.tc) #19
  call void @cairo_stroke_preserve(ptr noundef %1) #19
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 9.000000e-01) #19
  %i.td = load double, ptr %i.e, align 8, !tbaa !31
  call void @cairo_set_dash(ptr noundef %1, ptr noundef nonnull %i.e, i32 noundef 1, double noundef %i.td) #19
  call void @cairo_stroke(ptr noundef %1) #19
  call void @cairo_set_dash(ptr noundef %1, ptr noundef null, i32 noundef 0, double noundef 0.000000e+00) #19
  %i.te = fmul reassoc nsz arcp contract afn double %i.ks, 3.000000e+01
  %i.tf = fptrunc reassoc nsz arcp contract afn double %i.te to float
  %i.tg = load i32, ptr %i.sg, align 4, !tbaa !217
  %i.th = sitofp reassoc nsz arcp contract afn i32 %i.tg to double
  %i.ti = fadd reassoc nsz arcp contract afn double %i.sv, %i.th
  %i.tj = fptrunc reassoc nsz arcp contract afn double %i.ti to float
  %i.tk = fsub reassoc nsz arcp contract afn double %.3480, %i.ku
  %i.tl = fptrunc reassoc nsz arcp contract afn double %i.tk to float
  %i.tm = fsub reassoc nsz arcp contract afn double %.3, %i.ku
  %i.tn = fptrunc reassoc nsz arcp contract afn double %i.tm to float
  call void @dt_gui_draw_rounded_rectangle(ptr noundef %1, float noundef %i.tf, float noundef %i.tj, float noundef %i.tl, float noundef %i.tn) #19
  call void @cairo_set_source_rgb(ptr noundef %1, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #19
  %i.to = load i32, ptr %i.sg, align 4, !tbaa !217
  %i.tp = sitofp reassoc nsz arcp contract afn i32 %i.to to double
  %i.tq = fmul reassoc nnan nsz arcp contract afn double %i.tp, 5.000000e-01
  %i.tr = fadd reassoc nsz arcp contract afn double %i.tq, %.3
  call void @cairo_move_to(ptr noundef %1, double noundef %i.sy, double noundef %i.tr) #19
  call void @cairo_save(ptr noundef %1) #19
  call void @cairo_rotate(ptr noundef %1, double noundef f0xBFF921FB54442D18) #19
  %i.ts = load i32, ptr %i.sg, align 4, !tbaa !217
  %i.tt = sitofp reassoc nsz arcp contract afn i32 %i.ts to double
  %i.tu = fmul reassoc nnan nsz arcp contract afn double %i.tt, -5.000000e-01
  %i.tv = fmul reassoc nsz arcp contract afn double %i.ks, -9.000000e+00
  call void @cairo_rel_move_to(ptr noundef %1, double noundef %i.tu, double noundef %i.tv) #19
  call void @pango_cairo_update_layout(ptr noundef %1, ptr noundef %i.kp) #19
  call void @pango_cairo_show_layout(ptr noundef %1, ptr noundef %i.kp) #19
  call void @cairo_restore(ptr noundef %1) #19
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %i.tw = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.tx = fmul reassoc nsz arcp contract afn double %i.ks, 9.000000e+00 ; 3 uses
  %i.ty = fmul reassoc nsz arcp contract afn double %i.ks, 1.500000e+01 ; 2 uses
  %i.tz = fcmp reassoc nsz arcp contract afn olt double %i.ty, %i.lf
  %i.ua = fsub reassoc nsz arcp contract afn double %i.lf, %i.tx
  %i.ub = fadd reassoc nsz arcp contract afn double %i.kt, %i.lf
  %i.uc = fmul reassoc nsz arcp contract afn double %i.ks, 1.200000e+01 ; 4 uses
  %i.ud = fsub reassoc nsz arcp contract afn double %i.ub, %i.uc
  %.4 = select nsz i1 %i.tz, double %i.ua, double %i.ud ; 2 uses
  %i.ue = fmul reassoc nsz arcp contract afn double %i.ks, 3.000000e+01
  %i.uf = fptrunc reassoc nsz arcp contract afn double %i.ue to float ; 2 uses
  %i.ug = fsub reassoc nsz arcp contract afn double %.4, %i.ku
  %i.uh = fptrunc reassoc nsz arcp contract afn double %i.ug to float
  %i.ui = fpext <2 x float> %i.jw to <2 x double> ; 2 uses
  %i.uj = extractelement <2 x double> %i.ui, i64 0
  %i.uk = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 16, ptr noundef %i.le, double noundef %i.uj) #19 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.kp, ptr noundef nonnull %i.d, i32 noundef -1) #19
  call void @pango_layout_get_pixel_extents(ptr noundef %i.kp, ptr noundef null, ptr noundef nonnull %7) #19
  %i.ul = load i32, ptr %i.tw, align 4, !tbaa !217
  %i.um = sitofp reassoc nsz arcp contract afn i32 %i.ul to float
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 9.000000e-01) #19
  %i.un = load i32, ptr %i.tw, align 4, !tbaa !217
  %i.uo = sitofp reassoc nsz arcp contract afn i32 %i.un to double
  %i.up = fadd reassoc nsz arcp contract afn double %i.uc, %i.uo
  %i.uq = fptrunc reassoc nsz arcp contract afn double %i.up to float
  %i.ur = fcmp reassoc nsz arcp contract afn olt double %i.ty, %i.pg
  %i.us = fsub reassoc nsz arcp contract afn double %i.pg, %i.tx
  %i.ut = fadd reassoc nsz arcp contract afn double %i.kt, %i.pg
  %i.uu = fsub reassoc nsz arcp contract afn double %i.ut, %i.uc
  %.4481 = select nsz i1 %i.ur, double %i.us, double %i.uu ; 2 uses
  %i.uv = shufflevector <4 x float> %i.jv, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.uw = shufflevector <4 x float> %i.jv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ux = fadd reassoc nsz arcp contract afn <2 x float> %i.uv, %i.uw ; 2 uses
  %i.uy = extractelement <2 x float> %i.ux, i64 0
  %i.uz = fsub reassoc nsz arcp contract afn float %i.uy, %i.um
  %i.va = fpext reassoc nsz arcp contract afn float %i.uz to double
  %i.vb = fmul reassoc nsz arcp contract afn double %i.va, 5.000000e-01 ; 2 uses
  %i.vc = fsub reassoc nsz arcp contract afn double %i.vb, %i.ku
  %i.vd = fptrunc reassoc nsz arcp contract afn double %i.vc to float
  call void @dt_gui_draw_rounded_rectangle(ptr noundef %1, float noundef %i.uq, float noundef %i.uf, float noundef %i.vd, float noundef %i.uh) #19
  call void @cairo_set_source_rgb(ptr noundef %1, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #19
  call void @cairo_move_to(ptr noundef %1, double noundef %i.vb, double noundef %.4) #19
  call void @pango_cairo_show_layout(ptr noundef %1, ptr noundef %i.kp) #19
  %i.ve = extractelement <2 x double> %i.ui, i64 1
  %i.vf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 16, ptr noundef %i.le, double noundef %i.ve) #19 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.kp, ptr noundef nonnull %i.d, i32 noundef -1) #19
  call void @pango_layout_get_pixel_extents(ptr noundef %i.kp, ptr noundef null, ptr noundef nonnull %7) #19
  %i.vg = extractelement <2 x float> %i.ux, i64 1
  %i.vh = fpext reassoc nsz arcp contract afn float %i.vg to double
  %i.vi = fmul reassoc nsz arcp contract afn double %i.vh, 5.000000e-01 ; 2 uses
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 9.000000e-01) #19
  %i.vj = load i32, ptr %i.tw, align 4, !tbaa !217
  %i.vk = sitofp reassoc nsz arcp contract afn i32 %i.vj to double ; 2 uses
  %i.vl = fadd reassoc nsz arcp contract afn double %i.uc, %i.vk
  %i.vm = fptrunc reassoc nsz arcp contract afn double %i.vl to float
  %i.vn = fsub reassoc nsz arcp contract afn double %.4481, %i.ku
  %i.vo = fptrunc reassoc nsz arcp contract afn double %i.vn to float
  %.neg567 = fmul reassoc nnan nsz arcp contract afn double %i.vk, -5.000000e-01
  %.neg568 = fsub reassoc nsz arcp contract afn double %i.vi, %i.ku
  %i.vp = fadd reassoc nsz arcp contract afn double %.neg568, %.neg567
  %i.vq = fptrunc reassoc nsz arcp contract afn double %i.vp to float
  call void @dt_gui_draw_rounded_rectangle(ptr noundef %1, float noundef %i.uf, float noundef %i.vm, float noundef %i.vo, float noundef %i.vq) #19
  call void @cairo_set_source_rgb(ptr noundef %1, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #19
  %i.vr = fadd reassoc nsz arcp contract afn double %.4481, %i.tx
  call void @cairo_move_to(ptr noundef %1, double noundef %i.vr, double noundef %i.vi) #19
  call void @cairo_save(ptr noundef %1) #19
  call void @cairo_rotate(ptr noundef %1, double noundef f0xBFF921FB54442D18) #19
  %i.vs = load i32, ptr %i.tw, align 4, !tbaa !217
  %i.vt = sitofp reassoc nsz arcp contract afn i32 %i.vs to double
  %i.vu = fmul reassoc nnan nsz arcp contract afn double %i.vt, -5.000000e-01
  %i.vv = fmul reassoc nsz arcp contract afn double %i.ks, -9.000000e+00
  call void @cairo_rel_move_to(ptr noundef %1, double noundef %i.vu, double noundef %i.vv) #19
  call void @pango_cairo_update_layout(ptr noundef %1, ptr noundef %i.kp) #19
  call void @pango_cairo_show_layout(ptr noundef %1, ptr noundef %i.kp) #19
  call void @cairo_restore(ptr noundef %1) #19
  call void @pango_font_description_free(ptr noundef %i.kk) #19
  call void @g_object_unref(ptr noundef %i.kp) #19
  call void @g_free(ptr noundef %i.le) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ab
  %i.vw = getelementptr inbounds nuw i8, ptr %i.g, i64 3328
  %i.vx = load i32, ptr %i.vw, align 8, !tbaa !218
  %.not516 = icmp ne i32 %i.vx, 0
  %i.vy = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !137
  %.604 = zext i1 %.not516 to i32
  call void @gtk_toggle_button_set_active(ptr noundef %i.vz, i32 noundef %.604) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_set_orientation(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.dt_mipmap_buffer_t, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @dt_mipmap_cache_get_with_caller(ptr noundef nonnull %2, i32 noundef %1, i32 noundef 0, i32 noundef 0, i8 noundef signext 114, ptr noundef nonnull @.str.5, i32 noundef 1351) #19
  %i.a = load i32, ptr %2, align 8, !tbaa !221
  %.not = icmp eq i32 %i.a, 13
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !222
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !223
  %i.f = icmp sgt i32 %i.c, %i.e
  %i.g = zext i1 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 2 uses
  store i32 %i.g, ptr %i.i, align 8, !tbaa !138
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !127
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1344
  call void @dt_view_print_settings(ptr noundef %i.j, ptr noundef nonnull %i.h, ptr noundef nonnull %i.k) #19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !139
  %i.n = load i32, ptr %i.i, align 8, !tbaa !138
  %i.o = icmp eq i32 %i.n, 1
  %i.p = zext i1 %i.o to i32
  call void @dt_bauhaus_combobox_set(ptr noundef %i.m, i32 noundef %i.p) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @dt_mipmap_cache_release_with_caller(ptr noundef nonnull %2, ptr noundef nonnull @.str.5, i32 noundef 1363) #19
  call void @dt_control_queue_redraw_center() #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

declare i32 @g_timeout_add(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @_expose_again(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1344 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !134  ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_set_orientation(ptr noundef nonnull %0, i32 noundef %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3296
  %i.e = load float, ptr %i.d, align 8, !tbaa !100
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3300
  %i.g = load float, ptr %i.f, align 4, !tbaa !101
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3304
  %i.i = load float, ptr %i.h, align 8, !tbaa !102
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3308
  %i.k = load float, ptr %i.j, align 4, !tbaa !103
  tail call void @dt_printing_setup_box(ptr noundef nonnull %i.a, i32 noundef 0, float noundef %i.e, float noundef %i.g, float noundef %i.i, float noundef %i.k) #19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.n = load i32, ptr %i.m, align 8, !tbaa !30
  %.not.i.i = icmp eq i32 %i.n, 0                 ; 2 uses
  %..i.i = select i1 %.not.i.i, i64 728, i64 736
  %.11.i.i = select i1 %.not.i.i, i64 736, i64 728
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %..i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %.11.i.i
  %.sink.in.i.i = load double, ptr %i.o, align 8, !tbaa !31
  %.sink.i.i = fptrunc double %.sink.in.i.i to float
  %storemerge.in.i.i = load double, ptr %i.p, align 8, !tbaa !31
  %storemerge.i.i = fptrunc double %storemerge.in.i.i to float
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.r = load i32, ptr %i.q, align 8, !tbaa !104
  tail call void @dt_printing_setup_page(ptr noundef nonnull %i.a, float noundef %.sink.i.i, float noundef %storemerge.i.i, i32 noundef %i.r) #19
  tail call void @dt_printing_setup_image(ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef %i.b, i32 noundef 100, i32 noundef 100, i32 noundef 4) #19
  tail call void @dt_control_queue_redraw_center() #19
  store i32 0, ptr %i.a, align 8, !tbaa !134
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @dt_control_queue_redraw_center() #19
  ret i32 0
}

declare double @gtk_spin_button_get_value(ptr noundef) local_unnamed_addr #4

declare i32 @gtk_toggle_button_get_active(ptr noundef) local_unnamed_addr #4

declare void @cairo_set_source_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @dt_printing_setup_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_printing_get_screen_pos(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @dt_view_image_get_surface(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_control_busy_enter(...) local_unnamed_addr #4

declare void @cairo_save(ptr noundef) local_unnamed_addr #4

declare void @cairo_translate(ptr noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @cairo_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @cairo_set_source_surface(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @cairo_paint_with_alpha(ptr noundef, double noundef) local_unnamed_addr #4

declare void @cairo_surface_destroy(ptr noundef) local_unnamed_addr #4

declare void @cairo_restore(ptr noundef) local_unnamed_addr #4

declare void @dt_control_busy_leave(...) local_unnamed_addr #4

declare void @cairo_fill(ptr noundef) local_unnamed_addr #4

declare ptr @pango_font_description_copy_static(ptr noundef) local_unnamed_addr #4

declare void @pango_font_description_set_weight(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @pango_font_description_set_absolute_size(ptr noundef, double noundef) local_unnamed_addr #4

declare ptr @pango_cairo_create_layout(ptr noundef) local_unnamed_addr #4

declare void @pango_layout_set_font_description(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #7

declare void @pango_layout_set_text(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @pango_layout_get_pixel_extents(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @cairo_stroke_preserve(ptr noundef) local_unnamed_addr #4

declare void @dt_gui_draw_rounded_rectangle(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #4

declare void @cairo_set_source_rgb(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @pango_cairo_show_layout(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @cairo_rotate(ptr noundef, double noundef) local_unnamed_addr #4

declare void @cairo_rel_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @pango_cairo_update_layout(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @pango_font_description_free(ptr noundef) local_unnamed_addr #4

declare void @g_object_unref(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((288, 296), (424, 432)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(3496) ptr @malloc(i64 noundef 3496) #20 ; 77 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.a, ptr %i.b, align 8, !tbaa !88
  %i.c = tail call ptr @gtk_box_new(i32 noundef 1, i32 noundef 5) #19 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 29 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !224
  tail call void @dt_gui_add_help_link(ptr noundef %i.c, ptr noundef nonnull @.str.12) #19
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 3336 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 3368 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 3360 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 3400
  store i32 0, ptr %i.k, align 8, !tbaa !113
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 3396
  store i32 0, ptr %i.l, align 4, !tbaa !112
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 3420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.m, align 4, !tbaa !106
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 3424
  store i32 -1, ptr %i.n, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 3440
  store i32 0, ptr %i.o, align 8, !tbaa !99
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 3448
  store ptr null, ptr %i.p, align 8, !tbaa !89
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 3456
  %i.r = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.q, ptr noundef null) #19 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 336 ; 2 uses
  tail call void @dt_init_print_info(ptr noundef nonnull %i.s) #19
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !127
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 1344 ; 2 uses
  tail call void @dt_view_print_settings(ptr noundef %i.t, ptr noundef nonnull %i.s, ptr noundef nonnull %i.u) #19
  %i.v = tail call noalias dereferenceable_or_null(1036) ptr @g_malloc0(i64 noundef 1036) #20 ; 5 uses
  store i32 1, ptr %i.v, align 4, !tbaa !141
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 516
  %i.x = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.103, i32 noundef 5) #19
  %i.y = tail call i64 @dt_utf8_strlcpy(ptr noundef nonnull %i.w, ptr noundef %i.x, i64 noundef 512) #19 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 1028
  store i32 -2, ptr %i.z, align 4, !tbaa !142
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 1032
  store i32 -2, ptr %i.aa, align 4, !tbaa !143
  %i.ab = tail call ptr @g_list_prepend(ptr noundef null, ptr noundef nonnull %i.v) #19
  %i.ac = tail call noalias dereferenceable_or_null(1036) ptr @g_malloc0(i64 noundef 1036) #20 ; 5 uses
  store i32 2, ptr %i.ac, align 4, !tbaa !141
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 516
  %i.ae = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.108, i32 noundef 5) #19
  %i.af = tail call i64 @dt_utf8_strlcpy(ptr noundef nonnull %i.ad, ptr noundef %i.ae, i64 noundef 512) #19 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 1028
  store i32 -2, ptr %i.ag, align 4, !tbaa !142
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 1032
  store i32 -2, ptr %i.ah, align 4, !tbaa !143
  %i.ai = tail call ptr @g_list_prepend(ptr noundef %i.ab, ptr noundef nonnull %i.ac) #19 ; 2 uses
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 216), align 8, !tbaa !225
  %.028.i = load ptr, ptr %i.aj, align 8, !tbaa !90 ; 2 uses
  %.not29.i = icmp eq ptr %.028.i, null
  br i1 %.not29.i, label %_get_profiles.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.031.i = phi ptr [ %.0.i464, %bb.c ], [ %.028.i, %bb.a ] ; 2 uses
  %.02730.i = phi ptr [ %.1.i, %bb.c ], [ %i.ai, %bb.a ] ; 2 uses
  %i.ak = load ptr, ptr %.031.i, align 8, !tbaa !93 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !226
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.an = tail call noalias dereferenceable_or_null(1036) ptr @g_malloc0(i64 noundef 1036) #20 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 516
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 516
  %i.aq = tail call i64 @g_strlcpy(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ap, i64 noundef 512) #19 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.at = tail call i64 @g_strlcpy(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as, i64 noundef 512) #19 ; 0 uses
  store i32 0, ptr %i.an, align 4, !tbaa !141
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 1028
  store i32 -2, ptr %i.au, align 4, !tbaa !142
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 1032
  store i32 -2, ptr %i.av, align 4, !tbaa !143
  %i.aw = tail call ptr @g_list_prepend(ptr noundef %.02730.i, ptr noundef nonnull %i.an) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.1.i = phi ptr [ %i.aw, %bb.b ], [ %.02730.i, %.lr.ph.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.031.i, i64 8
  %.0.i464 = load ptr, ptr %i.ax, align 8, !tbaa !90 ; 2 uses
  %.not.i465 = icmp eq ptr %.0.i464, null
  br i1 %.not.i465, label %_get_profiles.exit, label %.lr.ph.i

_get_profiles.exit:                               ; preds = %bb.c, %bb.a
  %.027.lcssa.i = phi ptr [ %i.ai, %bb.a ], [ %.1.i, %bb.c ]
  %i.ay = tail call ptr @g_list_reverse(ptr noundef %.027.lcssa.i) #19
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 3 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !145
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 1348
  store i32 -1, ptr %i.ba, align 4, !tbaa !136
  %i.bb = tail call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.13) #19
  %i.bc = load ptr, ptr @_unit_names, align 16, !tbaa !146 ; 2 uses
  %.not486 = icmp eq ptr %i.bc, null
  br i1 %.not486, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %_get_profiles.exit
  tail call void @dt_printing_clear_boxes(ptr noundef nonnull %i.u) #19
  %i.bd = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.14) #19 ; 2 uses
  %i.be = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.15) #19 ; 2 uses
  %i.bf = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.16) #19 ; 2 uses
  %i.bg = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.17) #19 ; 2 uses
  %i.bh = fpext reassoc nsz arcp contract afn float %i.bd to double
  %.val463 = load i32, ptr %i.f, align 8, !tbaa !32
  %i.bi = zext i32 %.val463 to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr @units, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !33 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 776
  %i.bn = fpext reassoc nsz arcp contract afn float %i.be to double
  %i.bo = fpext reassoc nsz arcp contract afn float %i.bf to double
  %i.bp = fpext reassoc nsz arcp contract afn float %i.bg to double
  %i.bq = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.br = insertelement <4 x float> %i.bq, float %i.be, i64 1
  %i.bs = insertelement <4 x float> %i.br, float %i.bf, i64 2
  %i.bt = insertelement <4 x float> %i.bs, float %i.bg, i64 3
  %i.bu = insertelement <4 x float> poison, float %i.bk, i64 0
  %i.bv = shufflevector <4 x float> %i.bu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bw = fdiv reassoc nsz arcp contract afn <4 x float> %i.bt, %i.bv
  %i.bx = fpext <4 x float> %i.bw to <4 x double>
  store <4 x double> %i.bx, ptr %i.bm, align 8, !tbaa !31
  %i.by = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bk
  %i.bz = tail call reassoc nsz arcp contract afn float @llvm.log10.f32(float %i.by)
  %i.ca = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.bz)
  %i.cb = fptosi float %i.ca to i32               ; 9 uses
  %i.cc = fmul reassoc nsz arcp contract afn float %i.bk, 2.000000e+01
  %i.cd = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.cc)
  %i.ce = fmul reassoc nsz arcp contract afn float %i.cd, 5.000000e-02
  %i.cf = fpext reassoc nsz arcp contract afn float %i.ce to double ; 9 uses
  %i.cg = tail call ptr @gtk_spin_button_new_with_range(double noundef 0.000000e+00, double noundef 1.000000e+03, double noundef %i.cf) #19
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 208 ; 7 uses
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !147
  %i.ci = tail call ptr @gtk_spin_button_new_with_range(double noundef 0.000000e+00, double noundef 1.000000e+03, double noundef %i.cf) #19
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 7 uses
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !148
  %i.ck = tail call ptr @gtk_spin_button_new_with_range(double noundef 0.000000e+00, double noundef 1.000000e+03, double noundef %i.cf) #19
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 232 ; 7 uses
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !149
  %i.cm = tail call ptr @gtk_spin_button_new_with_range(double noundef 0.000000e+00, double noundef 1.000000e+03, double noundef %i.cf) #19
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 216 ; 7 uses
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !150
  %i.co = load ptr, ptr %i.ch, align 8, !tbaa !147
  tail call void @gtk_spin_button_set_digits(ptr noundef %i.co, i32 noundef %i.cb) #19
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !150
  tail call void @gtk_spin_button_set_digits(ptr noundef %i.cp, i32 noundef %i.cb) #19
  %i.cq = load ptr, ptr %i.cj, align 8, !tbaa !148
  tail call void @gtk_spin_button_set_digits(ptr noundef %i.cq, i32 noundef %i.cb) #19
  %i.cr = load ptr, ptr %i.cl, align 8, !tbaa !149
  tail call void @gtk_spin_button_set_digits(ptr noundef %i.cr, i32 noundef %i.cb) #19
  %i.cs = tail call ptr @gtk_spin_button_new_with_range(double noundef 0.000000e+00, double noundef 1.000000e+03, double noundef %i.cf) #19
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 8 uses
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !80
  %i.cu = tail call ptr @gtk_spin_button_new_with_range(double noundef 0.000000e+00, double noundef 1.000000e+03, double noundef %i.cf) #19
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 8 uses
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !81
  %i.cw = tail call ptr @gtk_spin_button_new_with_range(double noundef 0.000000e+00, double noundef 1.000000e+03, double noundef %i.cf) #19
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 8 uses
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !82
  %i.cy = tail call ptr @gtk_spin_button_new_with_range(double noundef 0.000000e+00, double noundef 1.000000e+03, double noundef %i.cf) #19
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 8 uses
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !83
  %i.da = load ptr, ptr %i.ct, align 8, !tbaa !80
  tail call void @gtk_spin_button_set_digits(ptr noundef %i.da, i32 noundef %i.cb) #19
  %i.db = load ptr, ptr %i.cv, align 8, !tbaa !81
  tail call void @gtk_spin_button_set_digits(ptr noundef %i.db, i32 noundef %i.cb) #19
  %i.dc = load ptr, ptr %i.cx, align 8, !tbaa !82
  tail call void @gtk_spin_button_set_digits(ptr noundef %i.dc, i32 noundef %i.cb) #19
  %i.dd = load ptr, ptr %i.cz, align 8, !tbaa !83
  tail call void @gtk_spin_button_set_digits(ptr noundef %i.dd, i32 noundef %i.cb) #19
  %i.de = tail call ptr @gtk_spin_button_new_with_range(double noundef 0.000000e+00, double noundef 1.000000e+02, double noundef %i.cf) #19 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 5 uses
  store ptr %i.de, ptr %i.df, align 8, !tbaa !119
  tail call void @gtk_spin_button_set_digits(ptr noundef %i.de, i32 noundef %i.cb) #19
  %i.dg = load ptr, ptr %i.ch, align 8, !tbaa !147
  tail call void @gtk_entry_set_alignment(ptr noundef %i.dg, float noundef 1.000000e+00) #19
  %i.dh = load ptr, ptr %i.cj, align 8, !tbaa !148
  tail call void @gtk_entry_set_alignment(ptr noundef %i.dh, float noundef 1.000000e+00) #19
  %i.di = load ptr, ptr %i.cl, align 8, !tbaa !149
  tail call void @gtk_entry_set_alignment(ptr noundef %i.di, float noundef 1.000000e+00) #19
  %i.dj = load ptr, ptr %i.cn, align 8, !tbaa !150
  tail call void @gtk_entry_set_alignment(ptr noundef %i.dj, float noundef 1.000000e+00) #19
  %i.dk = load ptr, ptr %i.ct, align 8, !tbaa !80
  tail call void @gtk_entry_set_alignment(ptr noundef %i.dk, float noundef 1.000000e+00) #19
  %i.dl = load ptr, ptr %i.cv, align 8, !tbaa !81
  tail call void @gtk_entry_set_alignment(ptr noundef %i.dl, float noundef 1.000000e+00) #19
  %i.dm = load ptr, ptr %i.cx, align 8, !tbaa !82
  tail call void @gtk_entry_set_alignment(ptr noundef %i.dm, float noundef 1.000000e+00) #19
  %i.dn = load ptr, ptr %i.cz, align 8, !tbaa !83
  tail call void @gtk_entry_set_alignment(ptr noundef %i.dn, float noundef 1.000000e+00) #19
  %i.do = load ptr, ptr %i.df, align 8, !tbaa !119
  tail call void @gtk_entry_set_alignment(ptr noundef %i.do, float noundef 1.000000e+00) #19
  %i.dp = tail call ptr @dt_bauhaus_combobox_new_action(ptr noundef %0) #19
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !151
  %i.dr = tail call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str.18, i64 noundef 8) #19
  %i.ds = tail call ptr @gtk_label_new(ptr noundef %i.dr) #19 ; 5 uses
  tail call void @gtk_widget_set_halign(ptr noundef %i.ds, i32 noundef 0) #19
  tail call void @gtk_label_set_xalign(ptr noundef %i.ds, float noundef 5.000000e-01) #19
  tail call void @gtk_label_set_ellipsize(ptr noundef %i.ds, i32 noundef 3) #19
  tail call void @dt_gui_add_class(ptr noundef %i.ds, ptr noundef nonnull @.str.112) #19
  %i.dt = load ptr, ptr %i.d, align 8, !tbaa !224
  tail call void @gtk_box_pack_start(ptr noundef %i.dt, ptr noundef %i.ds, i32 noundef 1, i32 noundef 1, i32 noundef 0) #19
  %i.du = load ptr, ptr %i.d, align 8, !tbaa !224
  tail call void @dt_gui_add_help_link(ptr noundef %i.du, ptr noundef nonnull @.str.19) #19
  %i.dv = tail call ptr @dt_bauhaus_combobox_new_action(ptr noundef %0) #19 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !94
  %i.dx = load ptr, ptr %i.d, align 8, !tbaa !224
  tail call void @gtk_box_pack_start(ptr noundef %i.dx, ptr noundef %i.dv, i32 noundef 1, i32 noundef 1, i32 noundef 0) #19
  %i.dy = load ptr, ptr %i.dw, align 8, !tbaa !94
  %i.dz = tail call i64 @g_signal_connect_data(ptr noundef %i.dy, ptr noundef nonnull @.str.20, ptr noundef nonnull @_printer_changed, ptr noundef %0, ptr noundef null, i32 noundef 0) #19 ; 0 uses
  %i.ea = tail call ptr @dt_bauhaus_combobox_new_action(ptr noundef %0) #19 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !152
  %i.ec = tail call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.ea, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #19 ; 0 uses
  %i.ed = load ptr, ptr %i.eb, align 8, !tbaa !152
  %i.ee = tail call i64 @g_signal_connect_data(ptr noundef %i.ed, ptr noundef nonnull @.str.20, ptr noundef nonnull @_media_changed, ptr noundef %0, ptr noundef null, i32 noundef 0) #19 ; 0 uses
  %i.ef = load ptr, ptr %i.d, align 8, !tbaa !224
  %i.eg = load ptr, ptr %i.eb, align 8, !tbaa !152
  tail call void @gtk_box_pack_start(ptr noundef %i.ef, ptr noundef %i.eg, i32 noundef 1, i32 noundef 1, i32 noundef 0) #19
  %i.eh = tail call ptr @dt_bauhaus_combobox_new_action(ptr noundef %0) #19 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 7 uses
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !153
  %i.ej = tail call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.eh, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.23) #19 ; 0 uses
  %i.ek = load ptr, ptr %i.d, align 8, !tbaa !224
  %i.el = load ptr, ptr %i.ei, align 8, !tbaa !153
  tail call void @gtk_box_pack_start(ptr noundef %i.ek, ptr noundef %i.el, i32 noundef 1, i32 noundef 1, i32 noundef 0) #19
  %i.em = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.24) #19 ; 3 uses
  %i.en = tail call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.25) #19 ; 2 uses
  %i.eo = load ptr, ptr %i.ei, align 8, !tbaa !153
  %i.ep = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #19
  tail call void @dt_bauhaus_combobox_add(ptr noundef %i.eo, ptr noundef %i.ep) #19
  %.0433489 = load ptr, ptr %i.az, align 8, !tbaa !90 ; 2 uses
  %.not443490 = icmp eq ptr %.0433489, null
  br i1 %.not443490, label %g_strdup_inline.exit455, label %.lr.ph495

.lr.ph495:                                        ; preds = %._crit_edge
  %i.eq = getelementptr inbounds nuw i8, ptr %i.a, i64 3352
  %.not450 = icmp eq i32 %i.em, 0
  br label %bb.f

.lr.ph:                                           ; preds = %_get_profiles.exit, %bb.e
  %i.er = phi ptr [ %i.ew, %bb.e ], [ %i.bc, %_get_profiles.exit ]
  %.0488 = phi ptr [ %i.eu, %bb.e ], [ @_unit_names, %_get_profiles.exit ]
  %.0430487 = phi i32 [ %i.ev, %bb.e ], [ 0, %_get_profiles.exit ] ; 2 uses
  %i.es = tail call i32 @g_strcmp0(ptr noundef %i.bb, ptr noundef nonnull %i.er) #19
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  store i32 %.0430487, ptr %i.f, align 8, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.eu = getelementptr inbounds nuw i8, ptr %.0488, i64 8 ; 2 uses
  %i.ev = add i32 %.0430487, 1
  %i.ew = load ptr, ptr %i.eu, align 8, !tbaa !146 ; 2 uses
  %.not = icmp eq ptr %i.ew, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge496:                                   ; preds = %bb.j
  %i.ex = icmp eq i32 %.1436, -1
  br i1 %i.ex, label %g_strdup_inline.exit455, label %bb.k

bb.f:                                             ; preds = %.lr.ph495, %bb.j
  %.0433493 = phi ptr [ %.0433489, %.lr.ph495 ], [ %.0433, %bb.j ] ; 2 uses
  %.0434492 = phi i32 [ 0, %.lr.ph495 ], [ %.1, %bb.j ] ; 2 uses
  %.0435491 = phi i32 [ -1, %.lr.ph495 ], [ %.1436, %bb.j ] ; 3 uses
  %i.ey = load ptr, ptr %.0433493, align 8, !tbaa !93 ; 5 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !141
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.fb = load ptr, ptr %i.ei, align 8, !tbaa !153
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 516
  tail call void @dt_bauhaus_combobox_add(ptr noundef %i.fb, ptr noundef nonnull %i.fc) #19
  %i.fd = add nsw i32 %.0434492, 1                ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 1032
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !143
  %i.ff = load i32, ptr %i.ey, align 4, !tbaa !141
  %i.fg = icmp eq i32 %i.ff, %i.em
  br i1 %i.fg, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  br i1 %.not450, label %bb.i, label %g_strdup_inline.exit460

bb.i:                                             ; preds = %bb.h
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fi = tail call i32 @g_strcmp0(ptr noundef nonnull %i.fh, ptr noundef %i.en) #19
  %.not451 = icmp eq i32 %i.fi, 0
  br i1 %.not451, label %g_strdup_inline.exit460, label %bb.j

g_strdup_inline.exit460:                          ; preds = %bb.i, %bb.h
  %i.fj = load ptr, ptr %i.i, align 8, !tbaa !154
  tail call void @g_free(ptr noundef %i.fj) #19
  store i32 %i.em, ptr %i.eq, align 8, !tbaa !155
  %i.fk = tail call noalias ptr @g_strdup(ptr noundef %i.en) #19
  store ptr %i.fk, ptr %i.i, align 8, !tbaa !154
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %g_strdup_inline.exit460, %bb.f
  %.1436 = phi i32 [ %i.fd, %g_strdup_inline.exit460 ], [ %.0435491, %bb.i ], [ %.0435491, %bb.g ], [ %.0435491, %bb.f ] ; 3 uses
  %.1 = phi i32 [ %i.fd, %g_strdup_inline.exit460 ], [ %i.fd, %bb.i ], [ %i.fd, %bb.g ], [ %.0434492, %bb.f ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.0433493, i64 8
  %.0433 = load ptr, ptr %i.fl, align 8, !tbaa !90 ; 2 uses
  %.not443 = icmp eq ptr %.0433, null
  br i1 %.not443, label %._crit_edge496, label %bb.f

g_strdup_inline.exit455:                          ; preds = %._crit_edge, %._crit_edge496
  tail call void @dt_conf_set_int(ptr noundef nonnull @.str.24, i32 noundef -1) #19
  tail call void @dt_conf_set_string(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.27) #19
  %i.fm = load ptr, ptr %i.i, align 8, !tbaa !154
  tail call void @g_free(ptr noundef %i.fm) #19
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 3352
  store i32 -1, ptr %i.fn, align 8, !tbaa !155
  %i.fo = tail call noalias dereferenceable_or_null(1) ptr @g_malloc(i64 noundef 1) #20 ; 2 uses
  store i8 0, ptr %i.fo, align 1
  store ptr %i.fo, ptr %i.i, align 8, !tbaa !154
  br label %bb.k
end_hunk_4
begin_hunk_5_@_print_job_run:bb.a
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !96
  %i.ag = and i32 %i.af, 32768
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !265
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !266
  %i.al = load i32, ptr %i.ad, align 8, !tbaa !264
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.130, i32 noundef %i.ai, i32 noundef %i.ak, i32 noundef %i.al) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.am = call ptr @dt_control_job_get_params(ptr noundef %0) #19 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store ptr @mime, ptr %i.h, align 8, !tbaa !269
  store ptr @levels, ptr %i.i, align 8, !tbaa !270
  store ptr @bpp, ptr %i.j, align 8, !tbaa !271
  store ptr @write_image, ptr %i.k, align 8, !tbaa !272
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.ao = load <2 x i32>, ptr %i.an, align 4, !tbaa !133
  store <2 x i32> %i.ao, ptr %3, align 8, !tbaa !133
  store i8 0, ptr %i.l, align 8, !tbaa !91
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 1024
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !180
  store i32 %i.aq, ptr %i.m, align 8, !tbaa !273
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 1048 ; 6 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !185
  %i.at = load i8, ptr %i.as, align 1, !tbaa !91
  %.not.i16.i = icmp eq i8 %i.at, 0
  %i.au = select i1 %.not.i16.i, i32 8, i32 16
  store i32 %i.au, ptr %i.n, align 4, !tbaa !194
  store ptr %i.am, ptr %i.o, align 8, !tbaa !195
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 1016
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !179 ; 2 uses
  %.not46.i.i = icmp eq ptr %i.aw, null
  br i1 %.not46.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = call i64 @g_strlcpy(ptr noundef nonnull %i.l, ptr noundef nonnull %i.aw, i64 noundef 128) #19 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @dt_control_job_set_progress(ptr noundef %0, double noundef 5.000000e-02) #19
  %i.ay = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.124, i32 noundef 5) #19
  %i.az = load ptr, ptr %i.am, align 8, !tbaa !178
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void (ptr, ...) @dt_control_log(ptr noundef %i.ay, ptr noundef %i.az, ptr noundef nonnull %i.ba) #19
  %i.bb = load i32, ptr %i.s, align 8, !tbaa !105
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 1032 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !181
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 1040 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !182
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 1056
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !183
  %i.bi = call i32 @dt_imageio_export_with_flags(i32 noundef %i.bb, ptr noundef nonnull @.str.131, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 0, double noundef 1.000000e+00, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef %i.bd, ptr noundef %i.bf, i32 noundef %i.bh, ptr noundef null, ptr noundef null, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef -1) #19 ; 0 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bl = load <2 x i32>, ptr %i.p, align 8, !tbaa !133
  store <2 x i32> %i.bl, ptr %i.bj, align 4, !tbaa !133
  %i.bm = load i32, ptr %i.s, align 8, !tbaa !105
  %i.bn = load i32, ptr %i.bc, align 8, !tbaa !181
  %i.bo = load ptr, ptr %i.be, align 8, !tbaa !182
  %i.bp = call ptr @dt_colorspaces_get_output_profile(i32 noundef %i.bm, i32 noundef %i.bn, ptr noundef %i.bo) #19 ; 2 uses
  %i.bq = load ptr, ptr %i.ar, align 8, !tbaa !185 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !91
  %.not47.i.i = icmp eq i8 %i.br, 0
  br i1 %.not47.i.i, label %_export_and_setup_pos.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %i.am, i64 1036
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !184
  %i.bu = call ptr @dt_colorspaces_get_profile(i32 noundef %i.bt, ptr noundef nonnull %i.bq, i32 noundef 2) #19 ; 2 uses
  %.not48.i.i = icmp eq ptr %i.bu, null
  br i1 %.not48.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bv = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.132, i32 noundef 5) #19
  %i.bw = load ptr, ptr %i.ar, align 8, !tbaa !185
  call void (ptr, ...) @dt_control_log(ptr noundef %i.bv, ptr noundef %i.bw) #19
  %i.bx = load ptr, ptr %i.ar, align 8, !tbaa !185
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.132, ptr noundef %i.bx) #19
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %.not49.i.i = icmp eq ptr %i.bp, null
  br i1 %.not49.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 1032
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !274 ; 2 uses
  %.not50.i.i = icmp eq ptr %i.bz, null
  br i1 %.not50.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ca = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.133, i32 noundef 5) #19
  %i.cb = load i32, ptr %i.s, align 8, !tbaa !105
  call void (ptr, ...) @dt_control_log(ptr noundef %i.ca, i32 noundef %i.cb) #19
  %i.cc = load i32, ptr %i.s, align 8, !tbaa !105
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.133, i32 noundef %i.cc) #19
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %i.am, i64 3056
  %i.ce = load i32, ptr %i.p, align 8, !tbaa !196
  %i.cf = load i32, ptr %i.q, align 4, !tbaa !197
  %i.cg = load i32, ptr %i.n, align 4, !tbaa !194
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bu, i64 1032
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !274
  %i.cj = getelementptr inbounds nuw i8, ptr %i.am, i64 1060
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !186
  %i.cl = getelementptr inbounds nuw i8, ptr %i.am, i64 1028
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !187
  %i.cn = call i32 @dt_apply_printer_profile(ptr noundef nonnull %i.cd, i32 noundef %i.ce, i32 noundef %i.cf, i32 noundef %i.cg, ptr noundef nonnull %i.bz, ptr noundef %i.ci, i32 noundef %i.ck, i32 noundef %i.cm) #19
  %.not51.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not51.i.i, label %_export_and_setup_pos.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.co = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.134, i32 noundef 5) #19
  %i.cp = load ptr, ptr %i.ar, align 8, !tbaa !185
  call void (ptr, ...) @dt_control_log(ptr noundef %i.co, ptr noundef %i.cp) #19
  %i.cq = load ptr, ptr %i.ar, align 8, !tbaa !185
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.134, ptr noundef %i.cq) #19
  br label %.thread

_export_and_setup_pos.exit.thread:                ; preds = %bb.g, %bb.m
  %i.cr = getelementptr inbounds nuw i8, ptr %i.am, i64 3056 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !198
  %i.ct = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !275
  store ptr null, ptr %i.cr, align 8, !tbaa !198
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.cu = load i32, ptr %i.s, align 8, !tbaa !105
  %i.cv = load i32, ptr %i.bj, align 4, !tbaa !276
  %i.cw = load i32, ptr %i.bk, align 8, !tbaa !277
  %i.cx = getelementptr inbounds nuw i8, ptr %i.s, i64 36
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !79
  %i.cz = trunc nuw nsw i64 %indvars.iv to i32
  call void @dt_printing_setup_image(ptr noundef nonnull %i.ac, i32 noundef %i.cz, i32 noundef %i.cu, i32 noundef %i.cv, i32 noundef %i.cw, i32 noundef %i.cy) #19
  %.pre = load i32, ptr %i.e, align 8, !tbaa !263
  br label %bb.o

.thread:                                          ; preds = %bb.n, %bb.l, %bb.i
  call void @dt_control_queue_redraw() #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.ae

bb.o:                                             ; preds = %_export_and_setup_pos.exit.thread, %bb.b
  %i.da = phi i32 [ %.pre, %_export_and_setup_pos.exit.thread ], [ %i.r, %bb.b ] ; 2 uses
  %.2 = phi i32 [ %spec.select, %_export_and_setup_pos.exit.thread ], [ %.04477, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.db = sext i32 %i.da to i64
  %.not52 = icmp slt i64 %indvars.iv.next, %i.db
  br i1 %.not52, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.o, %bb.a
  %.044.lcssa = phi i32 [ 0, %bb.a ], [ %.2, %bb.o ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 1064
  %i.dd = call i32 @dt_control_job_get_state(ptr noundef %0) #19
  %i.de = icmp eq i32 %i.dd, 4
  br i1 %i.de, label %bb.ae, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  call void @dt_control_job_set_progress(ptr noundef %0, double noundef 9.000000e-01) #19
  %i.df = getelementptr inbounds nuw i8, ptr %i.d, i64 3072 ; 4 uses
  call void @dt_loc_get_tmp_dir(ptr noundef nonnull %i.df, i64 noundef 4096) #19
  %i.dg = call i64 @g_strlcat(ptr noundef nonnull %i.df, ptr noundef nonnull @.str.125, i64 noundef 4096) #19 ; 0 uses
  %i.dh = call i32 @g_mkstemp(ptr noundef nonnull %i.df) #19 ; 2 uses
  %i.di = icmp eq i32 %i.dh, -1
  br i1 %i.di, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dj = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.126, i32 noundef 5) #19
  call void (ptr, ...) @dt_control_log(ptr noundef %i.dj) #19
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.126) #19
  br label %bb.ae

bb.r:                                             ; preds = %bb.p
  %i.dk = call i32 @close(i32 noundef %i.dh) #19  ; 0 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 440
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !30
  %.not.i55 = icmp eq i32 %i.dn, 0                ; 2 uses
  %..i = select i1 %.not.i55, i64 728, i64 736
  %.11.i = select i1 %.not.i55, i64 736, i64 728
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 %..i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.11.i
  %.sink.in.i = load double, ptr %i.do, align 8, !tbaa !31
  %storemerge.in.i = load double, ptr %i.dp, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1992) %1, ptr noundef nonnull align 8 dereferenceable(1992) %i.dc, i64 1992, i1 false)
  %i.dq = call ptr @dt_control_job_get_params(ptr noundef %0) #19 ; 4 uses
  %i.dr = insertelement <2 x double> poison, double %.sink.in.i, i64 0
  %i.ds = insertelement <2 x double> %i.dr, double %storemerge.in.i, i64 1
  %i.dt = fptrunc <2 x double> %i.ds to <2 x float>
  %i.du = fpext <2 x float> %i.dt to <2 x double>
  %i.dv = fmul reassoc nsz arcp contract afn <2 x double> %i.du, splat (double f0x4006AD5AB56AD5AB)
  %i.dw = fptrunc <2 x double> %i.dv to <2 x float> ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 3072
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dq, i64 136 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !264
  %i.ea = sitofp reassoc nsz arcp contract afn i32 %i.dz to float
  %i.eb = extractelement <2 x float> %i.dw, i64 0
  %i.ec = extractelement <2 x float> %i.dw, i64 1
  %i.ed = call ptr @dt_pdf_start(ptr noundef nonnull %i.dx, float noundef %i.eb, float noundef %i.ec, float noundef %i.ea, i32 noundef 1) #19 ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !278 ; 2 uses
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %.lr.ph.i, label %._crit_edge48.critedge.i

.lr.ph.i:                                         ; preds = %bb.r
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.trip.count.i = zext nneg i32 %i.ef to i64 ; 2 uses
  br label %bb.s

._crit_edge.i:                                    ; preds = %bb.u
  %i.ei = call ptr @dt_pdf_add_page(ptr noundef %i.ed, ptr noundef nonnull %i.a, i32 noundef %.1.i) #19
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dq, i64 3064 ; 2 uses
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !199
  call void @dt_pdf_finish(ptr noundef %i.ed, ptr noundef nonnull %i.ej, i32 noundef 1) #19
  br label %.lr.ph47.i

bb.s:                                             ; preds = %bb.u, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.u ] ; 2 uses
  %.04142.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.u ] ; 3 uses
  %i.ek = getelementptr inbounds nuw [96 x i8], ptr %i.eh, i64 %indvars.iv.i ; 5 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !105
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.en = load i32, ptr %i.dy, align 8, !tbaa !264
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 88
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !275
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !276
  %i.es = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.et = load i32, ptr %i.es, align 8, !tbaa !277
  %i.eu = call ptr @dt_pdf_add_image(ptr noundef %i.ed, ptr noundef %i.ep, i32 noundef %i.er, i32 noundef %i.et, i32 noundef 8, i32 noundef 0, float noundef 0.000000e+00) #19 ; 2 uses
  %i.ev = sext i32 %.04142.i to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ev
  store ptr %i.eu, ptr %i.ew, align 8, !tbaa !280
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ek, i64 72
  %i.ey = sitofp reassoc nsz arcp contract afn i32 %i.en to float
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %i.fa = load <4 x float>, ptr %i.ex, align 8, !tbaa !33
  %i.fb = fmul reassoc nsz arcp contract afn <4 x float> %i.fa, splat (float 7.200000e+01)
  %i.fc = insertelement <4 x float> poison, float %i.ey, i64 0
  %i.fd = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fe = fdiv reassoc nsz arcp contract afn <4 x float> %i.fb, %i.fd
  store <4 x float> %i.fe, ptr %i.ez, align 8, !tbaa !33
  %i.ff = add nsw i32 %.04142.i, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1.i = phi i32 [ %i.ff, %bb.t ], [ %.04142.i, %bb.s ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.s

._crit_edge48.critedge.i:                         ; preds = %bb.r
  %i.fg = call ptr @dt_pdf_add_page(ptr noundef %i.ed, ptr noundef nonnull %i.a, i32 noundef 0) #19
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dq, i64 3064 ; 2 uses
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !199
  call void @dt_pdf_finish(ptr noundef %i.ed, ptr noundef nonnull %i.fh, i32 noundef 1) #19
  br label %_create_pdf.exit

.lr.ph47.i:                                       ; preds = %.lr.ph47.i, %._crit_edge.i
  %indvars.iv50.i = phi i64 [ 0, %._crit_edge.i ], [ %indvars.iv.next51.i, %.lr.ph47.i ] ; 2 uses
  %i.fi = getelementptr inbounds nuw [96 x i8], ptr %1, i64 %indvars.iv50.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 104 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !275
  call void @g_free(ptr noundef %i.fk) #19
  store ptr null, ptr %i.fj, align 8, !tbaa !275
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1 ; 2 uses
  %exitcond54.not.i = icmp eq i64 %indvars.iv.next51.i, %wide.trip.count.i
  br i1 %exitcond54.not.i, label %_create_pdf.exit, label %.lr.ph47.i

_create_pdf.exit:                                 ; preds = %.lr.ph47.i, %._crit_edge48.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.fl = call i32 @dt_control_job_get_state(ptr noundef %0) #19
  %i.fm = icmp eq i32 %i.fl, 4
  br i1 %i.fm, label %bb.ae, label %bb.v

bb.v:                                             ; preds = %_create_pdf.exit
  call void @dt_control_job_set_progress(ptr noundef %0, double noundef f0x3FEE666666666666) #19
  %i.fn = load ptr, ptr %i.d, align 8, !tbaa !178
  call void @dt_print_file(i32 noundef %.044.lcssa, ptr noundef nonnull %i.df, ptr noundef %i.fn, ptr noundef nonnull %i.dl) #19
  call void @dt_control_job_set_progress(ptr noundef %0, double noundef 1.000000e+00) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 0, ptr %i.c, align 4, !tbaa !133
  %i.fo = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 256, ptr noundef nonnull @.str.127, ptr noundef nonnull %i.dl) #19 ; 0 uses
  %i.fp = call i32 @dt_tag_new(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #19 ; 0 uses
  %i.fq = load i32, ptr %i.e, align 8, !tbaa !263 ; 2 uses
  %i.fr = icmp sgt i32 %i.fq, 0
  br i1 %i.fr, label %.lr.ph81, label %._crit_edge82

.lr.ph81:                                         ; preds = %bb.v
  %i.fs = getelementptr inbounds nuw i8, ptr %i.d, i64 1080
  br label %bb.w

._crit_edge82:                                    ; preds = %bb.ad, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.ae

bb.w:                                             ; preds = %.lr.ph81, %bb.ad
  %i.ft = phi i32 [ %i.fq, %.lr.ph81 ], [ %i.gh, %bb.ad ]
  %indvars.iv90 = phi i64 [ 0, %.lr.ph81 ], [ %indvars.iv.next91, %bb.ad ] ; 2 uses
  %i.fu = getelementptr inbounds nuw [96 x i8], ptr %i.fs, i64 %indvars.iv90 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !105 ; 2 uses
  %i.fw = icmp sgt i32 %i.fv, 0
  br i1 %i.fw, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.fx = load i32, ptr %i.c, align 4, !tbaa !133
  %i.fy = call i32 @dt_tag_attach(i32 noundef %i.fx, i32 noundef %i.fv, i32 noundef 0, i32 noundef 0) #19
  %.not53 = icmp eq i32 %i.fy, 0
  br i1 %.not53, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fz = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !95
  %i.ga = trunc i32 %i.fz to i1
  %i.gb = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3352), align 8
  %i.gc = icmp ne i32 %i.gb, 0
  %or.cond = select i1 %i.ga, i1 %i.gc, i1 false
  br i1 %or.cond, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.gd = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !96
  %i.ge = and i32 %i.gd, 1048576
  %.not54 = icmp eq i32 %i.ge, 0
  br i1 %.not54, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.5, i32 noundef 625, ptr noundef nonnull @__FUNCTION__._print_job_run) #19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.y
  %i.gf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !97
  call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.gf, i32 noundef 9) #19
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.x
  %i.gg = load i32, ptr %i.fu, align 8, !tbaa !105
  call void @dt_image_cache_set_print_timestamp(i32 noundef %i.gg) #19
  %.pre93 = load i32, ptr %i.e, align 8, !tbaa !263
  br label %bb.ad

bb.ad:                                            ; preds = %bb.w, %bb.ac
  %i.gh = phi i32 [ %i.ft, %bb.w ], [ %.pre93, %bb.ac ] ; 2 uses
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %i.gi = sext i32 %i.gh to i64
  %i.gj = icmp slt i64 %indvars.iv.next91, %i.gi
  br i1 %i.gj, label %bb.w, label %._crit_edge82

bb.ae:                                            ; preds = %._crit_edge82, %_create_pdf.exit, %.thread, %bb.q, %._crit_edge
  %.348 = phi i32 [ 1, %.thread ], [ 0, %._crit_edge ], [ 1, %bb.q ], [ 0, %_create_pdf.exit ], [ 0, %._crit_edge82 ]
  ret i32 %.348
}

declare void @dt_control_job_set_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @_print_job_cleanup(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3072 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !91
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @g_unlink(ptr noundef nonnull %i.a) #19 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3064
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !199
  tail call void @free(ptr noundef %i.e) #19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3056
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !198
  tail call void @free(ptr noundef %i.g) #19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !179
  tail call void @g_free(ptr noundef %i.i) #19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !182
  tail call void @g_free(ptr noundef %i.k) #19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !185
  tail call void @g_free(ptr noundef %i.m) #19
  %i.n = load ptr, ptr %0, align 8, !tbaa !178
  tail call void @g_free(ptr noundef %i.n) #19
  tail call void @free(ptr noundef nonnull %0) #19
end_hunk_5
