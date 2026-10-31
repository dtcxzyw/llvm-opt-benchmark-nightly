Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/cups_print?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@__isoc99_sscanf
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @ppdClose(ptr noundef) local_unnamed_addr #4

declare i32 @g_unlink(ptr noundef) local_unnamed_addr #4

declare void @cupsFreeDests(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @dt_printers_abort_discovery() local_unnamed_addr #7 {
bb.a:
  store i32 1, ptr @_cancel, align 4, !tbaa !27
  ret void
}

; Function Attrs: nounwind uwtable
define void @dt_printers_discovery(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr (ptr, ptr, ...) @dt_control_job_create(ptr noundef nonnull @_detect_printers_callback, ptr noundef nonnull @.str.7) #16 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #18 ; 3 uses
  store ptr %0, ptr %i.b, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !30
  tail call void @dt_control_job_set_params(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @g_free) #16
  %i.d = tail call i32 @dt_control_add_job(i32 noundef 4, ptr noundef nonnull %i.a) #16 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare ptr @dt_control_job_create(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_detect_printers_callback(ptr noundef %0) #2 {
bb.a:
  %i.a = tail call ptr @dt_control_job_get_params(ptr noundef %0) #16
  %i.b = tail call i32 @cupsEnumDests(i32 noundef 0, i32 noundef 30000, ptr noundef nonnull @_cancel, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @_dest_cb, ptr noundef %i.a) #16
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !87
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 3484
  store i32 1, ptr %i.d, align 4, !tbaa !101
  %.not = icmp eq i32 %i.b, 0
  %i.e = zext i1 %.not to i32
  ret i32 %i.e
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #8

declare void @dt_control_job_set_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @g_free(ptr noundef) #4

declare i32 @dt_control_add_job(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @dt_get_paper(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %.not18 = icmp eq ptr %0, null
  br i1 %.not18, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.01120 = phi ptr [ %i.f, %bb.c ], [ %0, %bb.a ] ; 2 uses
  %i.a = load ptr, ptr %.01120, align 8, !tbaa !76 ; 4 uses
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %1) #17
  %.not13 = icmp eq i32 %i.b, 0
  br i1 %.not13, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %1) #17
  %.not14.not = icmp eq i32 %i.d, 0
  br i1 %.not14.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.01120, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !77   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.b, %bb.c, %.lr.ph, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.a, %.lr.ph ], [ %i.a, %bb.b ]
  ret ptr %.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define ptr @dt_get_papers(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [1024 x i8], align 16             ; 3 uses
  %1 = alloca %struct.cups_size_s, align 4        ; 12 uses
  %i.d = alloca [128 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.e = call i32 @cupsGetDests(ptr noundef nonnull %i.a) #16 ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.g = call ptr @cupsGetDest(ptr noundef %0, ptr noundef null, i32 noundef %i.e, ptr noundef %i.f) #16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i32 0, ptr %i.b, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call ptr @cupsConnectDest(ptr noundef nonnull %i.g, i32 noundef 0, i32 noundef 2000, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef 1024, ptr noundef null, ptr noundef null) #16 ; 5 uses
  %.not75 = icmp eq ptr %i.h, null
  br i1 %.not75, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.i = call ptr @cupsCopyDestInfo(ptr noundef nonnull %i.h, ptr noundef nonnull %i.g) #16 ; 3 uses
  %i.j = call i32 @cupsGetDestMediaCount(ptr noundef nonnull %i.h, ptr noundef nonnull %i.g, ptr noundef %i.i, i32 noundef 0) #16 ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 132
  br label %bb.d

._crit_edge:                                      ; preds = %paper_exists.exit.thread, %bb.c
  %.070.lcssa = phi ptr [ null, %bb.c ], [ %.1, %paper_exists.exit.thread ]
  call void @cupsFreeDestInfo(ptr noundef %i.i) #16
  call void @httpClose(ptr noundef nonnull %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %bb.l

bb.d:                                             ; preds = %.lr.ph, %paper_exists.exit.thread
  %.069101 = phi i32 [ 0, %.lr.ph ], [ %i.ay, %paper_exists.exit.thread ] ; 3 uses
  %.070100 = phi ptr [ null, %.lr.ph ], [ %.1, %paper_exists.exit.thread ] ; 8 uses
  %i.n = call i32 @cupsGetDestMediaByIndex(ptr noundef nonnull %i.h, ptr noundef nonnull %i.g, ptr noundef %i.i, i32 noundef %.069101, i32 noundef 0, ptr noundef nonnull %1) #16
  %.not80 = icmp eq i32 %i.n, 0
  br i1 %.not80, label %paper_exists.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr %i.l, align 4, !tbaa !103
  %i.p = icmp ne i32 %i.o, 0
  %i.q = load i32, ptr %i.m, align 4
  %i.r = icmp ne i32 %i.q, 0
  %or.cond = select i1 %i.p, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.f, label %paper_exists.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %1, align 4
  %i.t = xor i32 %i.s, 1953723747
  %i.u = getelementptr i8, ptr %1, i64 3
  %i.v = load i32, ptr %i.u, align 1
  %i.w = xor i32 %i.v, 1601007476
  %i.x = or i32 %i.t, %i.w
  %i.y = icmp ne i32 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %cmp.i = icmp eq i32 %i.z, 0
  br i1 %cmp.i, label %paper_exists.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %.not20.i = icmp eq ptr %.070100, null
  br i1 %.not20.i, label %paper_exists.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.critedge.i
  %.01321.i = phi ptr [ %i.af, %.critedge.i ], [ %.070100, %.preheader.i ] ; 2 uses
  %i.aa = load ptr, ptr %.01321.i, align 8, !tbaa !76 ; 2 uses
  %i.ab = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aa, ptr noundef nonnull readonly dereferenceable(1) %1) #17
  %.not17.i = icmp eq i32 %i.ab, 0
  br i1 %.not17.i, label %paper_exists.exit.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  %i.ad = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ac, ptr noundef nonnull readonly dereferenceable(1) %1) #17
  %.not18.i = icmp eq i32 %i.ad, 0
  br i1 %.not18.i, label %paper_exists.exit.thread, label %.critedge.i

.critedge.i:                                      ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %.01321.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !77 ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %paper_exists.exit, label %.lr.ph.i

paper_exists.exit:                                ; preds = %.critedge.i, %.preheader.i
  %i.ag = call ptr @pwgMediaForPWG(ptr noundef nonnull %1) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.d, i8 0, i64 128, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !105 ; 2 uses
  %.not82 = icmp eq ptr %i.ai, null
  %. = select i1 %.not82, ptr %1, ptr %i.ai
  %i.aj = call i64 @g_strlcpy(ptr noundef nonnull %i.d, ptr noundef nonnull %., i64 noundef 128) #16 ; 0 uses
  %i.ak = call noalias dereferenceable_or_null(272) ptr @malloc(i64 noundef 272) #18 ; 6 uses
  %i.al = call i64 @g_strlcpy(ptr noundef %i.ak, ptr noundef nonnull %1, i64 noundef 128) #16 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 128 ; 2 uses
  %i.an = call i64 @g_strlcpy(ptr noundef nonnull %i.am, ptr noundef nonnull %i.d, i64 noundef 128) #16 ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 256 ; 2 uses
  %i.ap = load <2 x i32>, ptr %i.l, align 4, !tbaa !27
  %i.aq = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ap to <2 x double>
  %i.ar = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.aq, splat (double 1.000000e-02)
  store <2 x double> %i.ar, ptr %i.ao, align 8, !tbaa !26
  %i.as = call ptr @g_list_append(ptr noundef %.070100, ptr noundef %i.ak) #16
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !78
  %i.au = and i32 %i.at, 32768
  %.not83 = icmp eq i32 %i.au, 0
  br i1 %.not83, label %bb.i, label %bb.h

bb.h:                                             ; preds = %paper_exists.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 264
  %i.aw = load double, ptr %i.ao, align 8, !tbaa !106
  %i.ax = load double, ptr %i.av, align 8, !tbaa !107
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.8, i32 noundef %.069101, double noundef %i.aw, double noundef %i.ax, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.am) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %paper_exists.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %paper_exists.exit.thread

paper_exists.exit.thread:                         ; preds = %bb.g, %.lr.ph.i, %bb.f, %bb.d, %bb.i, %bb.e
  %.1 = phi ptr [ %.070100, %bb.d ], [ %i.as, %bb.i ], [ %.070100, %bb.e ], [ %.070100, %bb.f ], [ %.070100, %.lr.ph.i ], [ %.070100, %bb.g ] ; 2 uses
  %i.ay = add nuw nsw i32 %.069101, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ay, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

bb.j:                                             ; preds = %bb.b
  %i.az = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !78
  %i.ba = and i32 %i.az, 32768
  %.not76 = icmp eq i32 %i.ba, 0
  br i1 %.not76, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = load i32, ptr %i.b, align 4, !tbaa !27
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.9, ptr noundef %0, i32 noundef %i.bb) #16
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k, %bb.j, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ %.070.lcssa, %._crit_edge ], [ null, %bb.j ], [ null, %bb.k ] ; 3 uses
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !19
  call void @cupsFreeDests(i32 noundef %i.e, ptr noundef %i.bc) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.bd = call ptr @cupsGetPPD(ptr noundef %0) #16 ; 2 uses
  %i.be = call ptr @ppdOpenFile(ptr noundef %i.bd) #16 ; 4 uses
  %.not77 = icmp eq ptr %i.be, null
  br i1 %.not77, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 168 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !118
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph108.preheader, label %._crit_edge109

.lr.ph108.preheader:                              ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 176
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !119
  br label %.lr.ph108

._crit_edge109:                                   ; preds = %paper_exists.exit95.thread, %bb.m
  %.4.lcssa = phi ptr [ %.3, %bb.m ], [ %.5, %paper_exists.exit95.thread ]
  call void @ppdClose(ptr noundef nonnull %i.be) #16
  %i.bk = call i32 @g_unlink(ptr noundef %i.bd) #16 ; 0 uses
  br label %bb.r

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %paper_exists.exit95.thread
  %.0105 = phi i32 [ %i.cn, %paper_exists.exit95.thread ], [ 0, %.lr.ph108.preheader ] ; 2 uses
  %.068104 = phi ptr [ %i.cm, %paper_exists.exit95.thread ], [ %i.bj, %.lr.ph108.preheader ] ; 4 uses
  %.4103 = phi ptr [ %.5, %paper_exists.exit95.thread ], [ %.3, %.lr.ph108.preheader ] ; 8 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.068104, i64 48 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !121
  %i.bn = fcmp reassoc nsz arcp contract afn une float %i.bm, 0.000000e+00
  br i1 %i.bn, label %bb.n, label %paper_exists.exit95.thread

bb.n:                                             ; preds = %.lr.ph108
  %i.bo = getelementptr inbounds nuw i8, ptr %.068104, i64 52
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !122
  %i.bq = fcmp reassoc nsz arcp contract afn une float %i.bp, 0.000000e+00
  br i1 %i.bq, label %bb.o, label %paper_exists.exit95.thread

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %.068104, i64 4 ; 5 uses
  %strncmp.i84 = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.br, ptr noundef nonnull dereferenceable(8) @.str.55, i64 7)
  %cmp.i85 = icmp eq i32 %strncmp.i84, 0
  br i1 %cmp.i85, label %paper_exists.exit95.thread, label %.preheader.i86

.preheader.i86:                                   ; preds = %bb.o
  %.not20.i87 = icmp eq ptr %.4103, null
  br i1 %.not20.i87, label %paper_exists.exit95, label %.lr.ph.i88

.lr.ph.i88:                                       ; preds = %.preheader.i86, %.critedge.i92
  %.01321.i89 = phi ptr [ %i.bx, %.critedge.i92 ], [ %.4103, %.preheader.i86 ] ; 2 uses
  %i.bs = load ptr, ptr %.01321.i89, align 8, !tbaa !76 ; 2 uses
  %i.bt = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bs, ptr noundef nonnull readonly dereferenceable(1) %i.br) #17
  %.not17.i90 = icmp eq i32 %i.bt, 0
  br i1 %.not17.i90, label %paper_exists.exit95.thread, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i88
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 128
  %i.bv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bu, ptr noundef nonnull readonly dereferenceable(1) %i.br) #17
  %.not18.i91 = icmp eq i32 %i.bv, 0
  br i1 %.not18.i91, label %paper_exists.exit95.thread, label %.critedge.i92

.critedge.i92:                                    ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %.01321.i89, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !77 ; 2 uses
  %.not.i93 = icmp eq ptr %i.bx, null
  br i1 %.not.i93, label %paper_exists.exit95, label %.lr.ph.i88

paper_exists.exit95:                              ; preds = %.critedge.i92, %.preheader.i86
  %i.by = call noalias dereferenceable_or_null(272) ptr @malloc(i64 noundef 272) #18 ; 6 uses
  %i.bz = call i64 @g_strlcpy(ptr noundef %i.by, ptr noundef nonnull %i.br, i64 noundef 128) #16 ; 0 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 128 ; 2 uses
  %i.cb = call i64 @g_strlcpy(ptr noundef nonnull %i.ca, ptr noundef nonnull %i.br, i64 noundef 128) #16 ; 0 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 256 ; 2 uses
  %i.cd = load <2 x float>, ptr %i.bl, align 4, !tbaa !80
  %i.ce = fpext reassoc nsz arcp contract afn <2 x float> %i.cd to <2 x double>
  %i.cf = fmul reassoc nsz arcp contract afn <2 x double> %i.ce, splat (double f0x3FD693E93E93E93E)
  store <2 x double> %i.cf, ptr %i.cc, align 8, !tbaa !26
  %i.cg = call ptr @g_list_append(ptr noundef %.4103, ptr noundef %i.by) #16 ; 2 uses
  %i.ch = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !78
  %i.ci = and i32 %i.ch, 32768
  %.not79 = icmp eq i32 %i.ci, 0
  br i1 %.not79, label %paper_exists.exit95.thread, label %bb.q

bb.q:                                             ; preds = %paper_exists.exit95
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 264
  %i.ck = load double, ptr %i.cc, align 8, !tbaa !106
  %i.cl = load double, ptr %i.cj, align 8, !tbaa !107
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.10, i32 noundef %.0105, double noundef %i.ck, double noundef %i.cl, ptr noundef nonnull %i.by, ptr noundef nonnull %i.ca) #16
  br label %paper_exists.exit95.thread

paper_exists.exit95.thread:                       ; preds = %bb.p, %.lr.ph.i88, %bb.o, %paper_exists.exit95, %bb.q, %bb.n, %.lr.ph108
  %.5 = phi ptr [ %i.cg, %paper_exists.exit95 ], [ %.4103, %.lr.ph108 ], [ %.4103, %bb.n ], [ %i.cg, %bb.q ], [ %.4103, %bb.o ], [ %.4103, %.lr.ph.i88 ], [ %.4103, %bb.p ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.068104, i64 72
  %i.cn = add nuw nsw i32 %.0105, 1               ; 2 uses
  %i.co = load i32, ptr %i.bf, align 8, !tbaa !118
  %i.cp = icmp slt i32 %i.cn, %i.co
  br i1 %i.cp, label %.lr.ph108, label %._crit_edge109

bb.r:                                             ; preds = %._crit_edge109, %bb.l
  %.6 = phi ptr [ %.4.lcssa, %._crit_edge109 ], [ %.3, %bb.l ]
  %i.cq = call ptr @g_list_sort_with_data(ptr noundef %.6, ptr noundef nonnull @sort_papers, ptr noundef null) #16
  ret ptr %i.cq
}

declare ptr @cupsConnectDest(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @cupsCopyDestInfo(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @cupsGetDestMediaCount(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @cupsGetDestMediaByIndex(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @pwgMediaForPWG(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

declare ptr @g_list_append(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #4

declare void @cupsFreeDestInfo(ptr noundef) local_unnamed_addr #4

declare void @httpClose(ptr noundef) local_unnamed_addr #4

declare ptr @g_list_sort_with_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @sort_papers(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #17
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #17
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %i.g = icmp eq i32 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.d) #17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = icmp slt i32 %i.c, %i.f
  %i.j = select i1 %i.i, i32 -1, i32 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi i32 [ %i.h, %bb.b ], [ %i.j, %bb.c ]
  ret i32 %i.k
}

; Function Attrs: nounwind uwtable
define ptr @dt_get_media_type(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @cupsGetPPD(ptr noundef %0) #16 ; 2 uses
  %i.b = tail call ptr @ppdOpenFile(ptr noundef %i.a) #16 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @ppdFindOption(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.11) #16 ; 3 uses
  %.not26 = icmp eq ptr %i.c, null
  br i1 %.not26, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 176 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !125
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !126
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.030 = phi i32 [ %i.s, %bb.e ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.02229 = phi ptr [ %i.r, %bb.e ], [ %i.h, %.lr.ph.preheader ] ; 3 uses
  %.02328 = phi ptr [ %i.o, %bb.e ], [ null, %.lr.ph.preheader ]
  %i.i = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #18 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02229, i64 1
  %i.k = tail call i64 @g_strlcpy(ptr noundef %i.i, ptr noundef nonnull %i.j, i64 noundef 128) #16 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 128 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02229, i64 42
  %i.n = tail call i64 @g_strlcpy(ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, i64 noundef 128) #16 ; 0 uses
  %i.o = tail call ptr @g_list_prepend(ptr noundef %.02328, ptr noundef %i.i) #16 ; 2 uses
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !78
  %i.q = and i32 %i.p, 32768
  %.not27 = icmp eq i32 %i.q, 0
  br i1 %.not27, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, i32 noundef %.030, ptr noundef nonnull %i.i, ptr noundef nonnull %i.l) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.02229, i64 144
  %i.s = add nuw nsw i32 %.030, 1                 ; 2 uses
  %i.t = load i32, ptr %i.d, align 8, !tbaa !125
  %i.u = icmp slt i32 %i.s, %i.t
  br i1 %i.u, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.c, %bb.b, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.c ], [ %i.o, %bb.e ]
  tail call void @ppdClose(ptr noundef %i.b) #16
  %i.v = tail call i32 @g_unlink(ptr noundef %i.a) #16 ; 0 uses
  %i.w = tail call ptr @g_list_reverse(ptr noundef %.2) #16
  ret ptr %i.w
}

declare ptr @ppdFindOption(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @g_list_prepend(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @g_list_reverse(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @dt_get_medium(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %.not18 = icmp eq ptr %0, null
  br i1 %.not18, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.01120 = phi ptr [ %i.f, %bb.c ], [ %0, %bb.a ] ; 2 uses
  %i.a = load ptr, ptr %.01120, align 8, !tbaa !76 ; 4 uses
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %1) #17
  %.not13 = icmp eq i32 %i.b, 0
  br i1 %.not13, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %1) #17
  %.not14.not = icmp eq i32 %i.d, 0
  br i1 %.not14.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.01120, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !77   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.b, %bb.c, %.lr.ph, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.a, %.lr.ph ], [ %i.a, %bb.b ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define void @dt_print_file(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 18 uses
  %i.b = alloca [4096 x i8], align 16             ; 11 uses
  %i.c = alloca [15 x ptr], align 16              ; 19 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca [100 x i8], align 16              ; 5 uses
  %i.f = alloca [100 x i8], align 16              ; 6 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = tail call i32 @g_file_test(ptr noundef %1, i32 noundef 1) #16
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #16
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.i, ptr noundef %1, i32 noundef %0, ptr noundef %3) #16
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8, !tbaa !127
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 428
  %i.k = load i32, ptr %i.j, align 4, !tbaa !128
  %.not84 = icmp eq i32 %i.k, 0
  br i1 %.not84, label %bb.o, label %bb.d

end_hunk_0
begin_hunk_1_@dt_print_file:bb.a

._crit_edge:                                      ; preds = %bb.r, %bb.o
  %.5.lcssa = phi i32 [ 0, %bb.o ], [ %.6, %bb.r ]
  %i.bv = load ptr, ptr %i.g, align 8, !tbaa !19
  call void @cupsFreeDests(i32 noundef %i.bo, ptr noundef %i.bv) #16
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 172
  %i.bx = load i8, ptr %i.bw, align 4, !tbaa !131
  %.not85 = icmp eq i8 %i.bx, 0
  %i.by = select i1 %.not85, ptr @.str.37, ptr @.str.36
  %i.bz = call i32 @cupsAddOption(ptr noundef nonnull @.str.35, ptr noundef nonnull %i.by, i32 noundef %.5.lcssa, ptr noundef nonnull %i.a) #16
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 472
  %i.cb = call i32 @cupsAddOption(ptr noundef nonnull @.str.38, ptr noundef nonnull %i.ca, i32 noundef %i.bz, ptr noundef nonnull %i.a) #16
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 744
  %i.cd = call i32 @cupsAddOption(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.cc, i32 noundef %i.cb, ptr noundef nonnull %i.a) #16
  %i.ce = call i32 @cupsAddOption(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef %i.cd, ptr noundef nonnull %i.a) #16
  %i.cf = call i32 @cupsAddOption(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef %i.ce, ptr noundef nonnull %i.a) #16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !132
  %i.ci = fcmp reassoc nsz arcp contract afn oeq double %i.ch, 0.000000e+00
  br i1 %i.ci, label %bb.v, label %bb.s

bb.p:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 3 uses
  %.597 = phi i32 [ 0, %.lr.ph ], [ %.6, %bb.r ]  ; 3 uses
  %i.cj = load ptr, ptr %i.bu, align 8, !tbaa !25
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %indvars.iv
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !134
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !127
  %i.cn = call ptr @cupsGetOption(ptr noundef %i.cl, i32 noundef %.597, ptr noundef %i.cm) #16
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cp = load ptr, ptr %i.bu, align 8, !tbaa !25
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %indvars.iv ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !134
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !135
  %i.cu = call i32 @cupsAddOption(ptr noundef %i.cr, ptr noundef %i.ct, i32 noundef %.597, ptr noundef nonnull %i.a) #16
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.6 = phi i32 [ %i.cu, %bb.q ], [ %.597, %bb.p ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cv = load i32, ptr %i.br, align 4, !tbaa !24
  %i.cw = sext i32 %i.cv to i64
  %i.cx = icmp slt i64 %indvars.iv.next, %i.cw
  br i1 %i.cx, label %bb.p, label %._crit_edge

bb.s:                                             ; preds = %._crit_edge
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !136
  %i.da = fcmp reassoc nsz arcp contract afn oeq double %i.cz, 0.000000e+00
  br i1 %i.da, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.dc = load double, ptr %i.db, align 8, !tbaa !137
  %i.dd = fcmp reassoc nsz arcp contract afn oeq double %i.dc, 0.000000e+00
  br i1 %i.dd, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.df = load double, ptr %i.de, align 8, !tbaa !138
  %i.dg = fcmp reassoc nsz arcp contract afn oeq double %i.df, 0.000000e+00
  br i1 %i.dg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %._crit_edge
  %i.dh = call i32 @cupsAddOption(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.36, i32 noundef %i.cf, ptr noundef nonnull %i.a) #16
  %i.di = call i32 @cupsAddOption(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.36, i32 noundef %i.dh, ptr noundef nonnull %i.a) #16
  %i.dj = call i32 @cupsAddOption(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.36, i32 noundef %i.di, ptr noundef nonnull %i.a) #16
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.7 = phi i32 [ %i.dj, %bb.v ], [ %i.cf, %bb.u ] ; 2 uses
  %i.dk = call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.46) #16
  %.not86 = icmp eq i32 %i.dk, 0
  br i1 %.not86, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 432
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !81
  %.not87 = icmp eq i32 %i.dm, 0
  %i.dn = select i1 %.not87, ptr @.str.37, ptr @.str.36
  %i.do = call i32 @cupsAddOption(ptr noundef nonnull @.str.47, ptr noundef nonnull %i.dn, i32 noundef %.7, ptr noundef nonnull %i.a) #16
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.8 = phi i32 [ %i.do, %bb.x ], [ %.7, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  br label %bb.z

bb.z:                                             ; preds = %bb.n, %bb.y
  %.9 = phi i32 [ %.078, %bb.n ], [ %.8, %bb.y ]  ; 5 uses
  %i.dp = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !78
  %i.dq = and i32 %i.dp, 32768
  %.not89 = icmp eq i32 %i.dq, 0
  br i1 %.not89, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.48, i32 noundef %.9) #16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dr = icmp sgt i32 %.9, 0
  br i1 %i.dr, label %.lr.ph101.preheader, label %._crit_edge102

.lr.ph101.preheader:                              ; preds = %bb.ab
  %wide.trip.count = zext nneg i32 %.9 to i64
  %.pre108 = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !78
  br label %.lr.ph101

._crit_edge102:                                   ; preds = %.lr.ph101._crit_edge, %bb.ab
  %i.ds = load ptr, ptr %i.a, align 8, !tbaa !127
  %i.dt = call i32 @cupsPrintFile(ptr noundef %3, ptr noundef %1, ptr noundef %2, i32 noundef %.9, ptr noundef %i.ds) #16
  %i.du = icmp eq i32 %i.dt, 0
  %.str.50..str.51 = select i1 %i.du, ptr @.str.50, ptr @.str.51
  %i.dv = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.50..str.51, i32 noundef 5) #16
  call void (ptr, ...) @dt_control_log(ptr noundef %i.dv, ptr noundef %2, ptr noundef %3) #16
  %i.dw = load ptr, ptr %i.a, align 8, !tbaa !127
  call void @cupsFreeOptions(i32 noundef %.9, ptr noundef %i.dw) #16
  br label %bb.ad

.lr.ph101:                                        ; preds = %.lr.ph101.preheader, %.lr.ph101._crit_edge
  %i.dx = phi i32 [ %.pre108, %.lr.ph101.preheader ], [ %i.ef, %.lr.ph101._crit_edge ] ; 2 uses
  %indvars.iv104 = phi i64 [ 0, %.lr.ph101.preheader ], [ %.pre109, %.lr.ph101._crit_edge ] ; 2 uses
  %i.dy = and i32 %i.dx, 32768
  %.not90 = icmp eq i32 %i.dy, 0
  %.pre109 = add nuw nsw i64 %indvars.iv104, 1    ; 3 uses
  br i1 %.not90, label %.lr.ph101._crit_edge, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph101
  %i.dz = load ptr, ptr %i.a, align 8, !tbaa !127
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.dz, i64 %indvars.iv104 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !134
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !135
  %i.ee = trunc nuw nsw i64 %.pre109 to i32
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.49, i32 noundef %i.ee, ptr noundef %i.eb, ptr noundef %i.ed) #16
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !78
  br label %.lr.ph101._crit_edge

.lr.ph101._crit_edge:                             ; preds = %.lr.ph101, %bb.ac
  %i.ef = phi i32 [ %.pre, %bb.ac ], [ %i.dx, %.lr.ph101 ]
  %exitcond.not = icmp eq i64 %.pre109, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge102, label %.lr.ph101

bb.ad:                                            ; preds = %.thread95, %.critedge, %._crit_edge102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.b
  ret void
}

declare i32 @g_file_test(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_control_log(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

declare void @dt_loc_get_tmp_dir(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @g_strlcat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @g_mkstemp(ptr noundef) local_unnamed_addr #4

declare i32 @close(i32 noundef) local_unnamed_addr #4

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #4

declare i32 @g_spawn_sync(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #6

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @cupsAddOption(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #6

declare ptr @cupsGetOption(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @dt_conf_get_bool(ptr noundef) local_unnamed_addr #4

declare i32 @cupsPrintFile(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @cupsFreeOptions(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @dt_get_print_layout(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) initializes((0, 4)) %3, ptr nofree noundef captures(none) initializes((0, 4)) %4, ptr nofree noundef captures(none) initializes((0, 4)) %5, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %6, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %7, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %8, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %9, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %10, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %11) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.b = load <2 x double>, ptr %i.a, align 8, !tbaa !26
  %i.c = fptrunc reassoc nsz arcp contract afn <2 x double> %i.b to <2 x float> ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load <4 x double>, ptr %i.d, align 8, !tbaa !26
  %i.f = fptrunc reassoc nsz arcp contract afn <4 x double> %i.e to <4 x float> ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.h = load i32, ptr %i.g, align 8, !tbaa !81
  %.not = icmp eq i32 %i.h, 0                     ; 2 uses
  %i.i = shufflevector <4 x float> %i.f, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 1, i32 0>
  %i.j = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %spec.select = select i1 %.not, <4 x float> %i.i, <4 x float> %i.f
  %spec.select96 = select i1 %.not, <2 x float> %i.j, <2 x float> %i.c ; 3 uses
  %i.k = sitofp reassoc nsz arcp contract afn i32 %1 to float ; 5 uses
  %i.l = sitofp reassoc nsz arcp contract afn i32 %2 to float ; 5 uses
  %i.m = fdiv reassoc nsz arcp contract afn float %i.k, %i.l
  %i.n = extractelement <2 x float> %spec.select96, i64 0 ; 2 uses
  %i.o = extractelement <2 x float> %spec.select96, i64 1 ; 2 uses
  %i.p = fdiv reassoc nsz arcp contract afn float %i.o, %i.n ; 3 uses
  %i.q = fcmp reassoc nsz arcp contract afn ogt float %i.m, %i.p
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = fmul reassoc nsz arcp contract afn float %i.p, %i.l
  %i.s = fsub reassoc nsz arcp contract afn float %i.k, %i.r
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, 5.000000e-01
  store float %i.t, ptr %3, align 4, !tbaa !80
  store float 0.000000e+00, ptr %4, align 4, !tbaa !80
  %i.u = load float, ptr %3, align 4, !tbaa !80   ; 2 uses
  %i.v = fsub reassoc nsz arcp contract afn float %i.k, %i.u
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store float 0.000000e+00, ptr %3, align 4, !tbaa !80
  %i.w = fdiv reassoc nsz arcp contract afn float %i.k, %i.p
  %i.x = fsub reassoc nsz arcp contract afn float %i.l, %i.w
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, 5.000000e-01 ; 2 uses
  store float %i.y, ptr %4, align 4, !tbaa !80
  %i.z = fsub reassoc nsz arcp contract afn float %i.l, %i.y
  %.pre = load float, ptr %3, align 4, !tbaa !80
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aa = phi float [ %i.u, %bb.b ], [ %.pre, %bb.c ]
  %.081 = phi nsz float [ %i.l, %bb.b ], [ %i.z, %bb.c ] ; 2 uses
  %.0 = phi nsz float [ %i.v, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.ab = fsub reassoc nsz arcp contract afn float %.0, %i.aa
  store float %i.ab, ptr %5, align 4, !tbaa !80
  %i.ac = load float, ptr %4, align 4, !tbaa !80
  %i.ad = fsub reassoc nsz arcp contract afn float %.081, %i.ac ; 3 uses
  store float %i.ad, ptr %6, align 4, !tbaa !80
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.af = load float, ptr %3, align 4, !tbaa !80
  %i.ag = load float, ptr %5, align 4, !tbaa !80  ; 2 uses
  %i.ah = load float, ptr %4, align 4, !tbaa !80
  %i.ai = load <4 x double>, ptr %i.ae, align 8, !tbaa !26
  %i.aj = fptrunc reassoc nsz arcp contract afn <4 x double> %i.ai to <4 x float> ; 4 uses
  %i.ak = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 1, i32 0>
  %i.al = fcmp reassoc nsz arcp contract afn ogt <4 x float> %spec.select, %i.ak
  %i.am = freeze <4 x i1> %i.al
  %i.an = bitcast <4 x i1> %i.am to i4
  %i.ao = icmp ne i4 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %i.aq = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ar = insertelement <2 x float> %i.aq, float %i.ag, i64 1
  %i.as = shufflevector <4 x float> %i.aj, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.at = fmul reassoc nsz arcp contract afn <2 x float> %i.ar, %i.as
  %i.au = fdiv reassoc nsz arcp contract afn <2 x float> %i.at, %spec.select96
  %i.av = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.aw = insertelement <2 x float> %i.av, float %i.af, i64 1
  %i.ax = fadd reassoc nsz arcp contract afn <2 x float> %i.aw, %i.au ; 2 uses
  store i32 %i.ap, ptr %11, align 4, !tbaa !27
  %i.ay = extractelement <2 x float> %i.ax, i64 1 ; 2 uses
  store float %i.ay, ptr %7, align 4, !tbaa !80
  %i.az = extractelement <2 x float> %i.ax, i64 0 ; 2 uses
  store float %i.az, ptr %8, align 4, !tbaa !80
  %i.ba = extractelement <4 x float> %i.aj, i64 3
  %i.bb = fneg reassoc nsz arcp contract afn float %i.ba
  %i.bc = fmul reassoc nsz arcp contract afn float %i.ag, %i.bb
  %.neg = fdiv reassoc nsz arcp contract afn float %i.bc, %i.o
  %.neg91 = fadd reassoc nsz arcp contract afn float %.neg, %.0
  %i.bd = fsub reassoc nsz arcp contract afn float %.neg91, %i.ay
  store float %i.bd, ptr %9, align 4, !tbaa !80
  %i.be = extractelement <4 x float> %i.aj, i64 1
  %i.bf = fneg reassoc nsz arcp contract afn float %i.be
  %i.bg = fmul reassoc nsz arcp contract afn float %i.ad, %i.bf
  %.neg92 = fdiv reassoc nsz arcp contract afn float %i.bg, %i.n
  %.neg94 = fadd reassoc nsz arcp contract afn float %.neg92, %.081
  %i.bh = fsub reassoc nsz arcp contract afn float %.neg94, %i.az
  store float %i.bh, ptr %10, align 4, !tbaa !80
  ret void
}

declare ptr @dt_control_job_get_params(ptr noundef) local_unnamed_addr #4

declare i32 @cupsEnumDests(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @_dest_cb(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %3 = alloca %struct.dt_printer_info_t, align 8  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.e = tail call ptr @cupsGetOption(ptr noundef nonnull @.str.52, i32 noundef %i.b, ptr noundef %i.d) #16 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.e, ptr noundef null, i32 noundef 10) #16
  %i.g = icmp slt i64 %i.f, 5
  br i1 %i.g, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %3, i8 0, i64 432, i1 false)
  %i.h = load ptr, ptr %2, align 8, !tbaa !23
  call void @dt_get_printer_info(ptr noundef %i.h, ptr noundef nonnull %3)
  %i.i = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %.not13 = icmp eq ptr %i.i, null
  br i1 %.not13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30
  call void %i.i(ptr noundef nonnull %3, ptr noundef %i.k) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !78
  %i.m = and i32 %i.l, 32768
  %.not14 = icmp eq i32 %i.m, 0
  br i1 %.not14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %2, align 8, !tbaa !23
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.53, ptr noundef %i.n) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.j

bb.h:                                             ; preds = %bb.a, %bb.b
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !78
  %i.p = and i32 %i.o, 32768
  %.not12 = icmp eq i32 %i.p, 0
  br i1 %.not12, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = load ptr, ptr %2, align 8, !tbaa !23
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.54, ptr noundef %i.q) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  ret i32 1
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr, i32) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"double", !7, i64 0}
!12 = !{!"dt_printer_info_t", !7, i64 0, !8, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !8, i64 168, !7, i64 172, !8, i64 428}
!13 = !{!"dt_page_setup_t", !8, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32}
!14 = !{!"dt_paper_info_t", !7, i64 0, !7, i64 128, !11, i64 256, !11, i64 264}
!15 = !{!"dt_medium_info_t", !7, i64 0, !7, i64 128}
!16 = !{!"dt_print_info_t", !12, i64 0, !13, i64 432, !14, i64 472, !15, i64 744, !8, i64 1000}
!17 = !{!"any pointer", !7, i64 0}
!18 = !{!"p1 _ZTS11cups_dest_s", !17, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"p1 omnipotent char", !17, i64 0}
!21 = !{!"p1 _ZTS13cups_option_s", !17, i64 0}
!22 = !{!"cups_dest_s", !20, i64 0, !20, i64 8, !8, i64 16, !8, i64 20, !21, i64 24}
!23 = !{!22, !20, i64 0}
!24 = !{!22, !8, i64 20}
!25 = !{!22, !21, i64 24}
!26 = !{!11, !11, i64 0}
!27 = !{!8, !8, i64 0}
!28 = !{!"dt_prtctl_t", !17, i64 0, !17, i64 8}
!29 = !{!28, !17, i64 0}
!30 = !{!28, !17, i64 8}
!31 = !{!"dt_codepath_t", !8, i64 0}
!32 = !{!"p1 _ZTS6_GList", !17, i64 0}
!33 = !{!"p1 _ZTS11_JsonParser", !17, i64 0}
!34 = !{!"p1 _ZTS9dt_conf_t", !17, i64 0}
!35 = !{!"p1 _ZTS12dt_develop_t", !17, i64 0}
!36 = !{!"p1 _ZTS8dt_lib_t", !17, i64 0}
!37 = !{!"p1 _ZTS17dt_view_manager_t", !17, i64 0}
!38 = !{!"p1 _ZTS12dt_control_t", !17, i64 0}
!39 = !{!"p1 _ZTS19dt_control_signal_t", !17, i64 0}
!40 = !{!"p1 _ZTS12dt_gui_gtk_t", !17, i64 0}
!41 = !{!"p1 _ZTS17dt_mipmap_cache_t", !17, i64 0}
!42 = !{!"p1 _ZTS16dt_image_cache_t", !17, i64 0}
!43 = !{!"p1 _ZTS12dt_bauhaus_t", !17, i64 0}
!44 = !{!"p1 _ZTS13dt_database_t", !17, i64 0}
!45 = !{!"p1 _ZTS14dt_pwstorage_t", !17, i64 0}
!46 = !{!"p1 _ZTS11dt_camctl_t", !17, i64 0}
!47 = !{!"p1 _ZTS15dt_collection_t", !17, i64 0}
!48 = !{!"p1 _ZTS14dt_selection_t", !17, i64 0}
!49 = !{!"p1 _ZTS11dt_points_t", !17, i64 0}
!50 = !{!"p1 _ZTS12dt_imageio_t", !17, i64 0}
!51 = !{!"p1 _ZTS11dt_opencl_t", !17, i64 0}
!52 = !{!"p1 _ZTS9dt_dbus_t", !17, i64 0}
!53 = !{!"p1 _ZTS9dt_undo_t", !17, i64 0}
!54 = !{!"p1 _ZTS16dt_colorspaces_t", !17, i64 0}
!55 = !{!"p1 _ZTS9dt_l10n_t", !17, i64 0}
!56 = !{!"dt_pthread_mutex_t", !7, i64 0}
!57 = !{!"p1 _ZTS9lua_State", !17, i64 0}
!58 = !{!"_Bool", !7, i64 0}
!59 = !{!"p1 _ZTS10_GMainLoop", !17, i64 0}
!60 = !{!"p1 _ZTS13_GMainContext", !17, i64 0}
!61 = !{!"p1 _ZTS12_GThreadPool", !17, i64 0}
!62 = !{!"p1 _ZTS12_GAsyncQueue", !17, i64 0}
!63 = !{!"", !57, i64 0, !56, i64 8, !7, i64 48, !58, i64 96, !58, i64 97, !59, i64 104, !60, i64 112, !61, i64 120, !62, i64 128, !62, i64 136, !62, i64 144}
!64 = !{!"p1 _ZTS10_GTimeZone", !17, i64 0}
end_hunk_1
