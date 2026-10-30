Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/stuff?download=true
inline.NumInlined: 37
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@scan_graph_mode:bb.a
  %i.du = fadd double %.2161, %i.dt               ; 2 uses
  %i.dv = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.397160) #22 ; 2 uses
  %.not106 = icmp eq ptr %i.dv, null
  br i1 %.not106, label %.loopexit, label %.lr.ph162, !llvm.loop !89

.loopexit:                                        ; preds = %.lr.ph151, %.lr.ph156, %.lr.ph162, %gv_calloc.exit118, %gv_calloc.exit, %bb.ad
  %.3 = phi double [ %i.cn, %.lr.ph156 ], [ %i.du, %.lr.ph162 ], [ 0.000000e+00, %bb.ad ], [ 0.000000e+00, %gv_calloc.exit ], [ 0.000000e+00, %gv_calloc.exit118 ], [ %i.dm, %.lr.ph151 ]
  %i.dw = tail call ptr @agget(ptr noundef %0, ptr noundef nonnull @.str.4) #22 ; 3 uses
  %.not110 = icmp eq ptr %i.dw, null
  br i1 %.not110, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %.loopexit
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !23
  %.not111 = icmp eq i8 %i.dx, 0
  br i1 %.not111, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dy = load double, ptr @Epsilon, align 8, !tbaa !18
  %i.dz = tail call double @strtod(ptr noundef nonnull captures(none) %i.dw, ptr noundef null) #22, !inline_history !86
  %i.ea = tail call nsz double @llvm.maxnum.f64(double %i.dy, double %i.dz)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae, %.loopexit
  %i.eb = tail call i32 @llvm.smax.i32(i32 %i.bh, i32 1)
  %i.ec = uitofp nneg i32 %i.eb to double
  %i.ed = fdiv double %.3, %i.ec
  %i.ee = sitofp i32 %i.bg to double
  %i.ef = tail call double @sqrt(double noundef %i.ee) #22
  %i.eg = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.ef, double 1.000000e+00)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %storemerge112 = phi double [ %i.eg, %bb.ag ], [ %i.ea, %bb.af ] ; 2 uses
  store double %storemerge112, ptr @Initial_dist, align 8, !tbaa !18
  %i.eh = load i32, ptr @Nop, align 4, !tbaa !62
  %i.ei = or i32 %i.eh, %1
  %or.cond = icmp eq i32 %i.ei, 0
  br i1 %or.cond, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %bb.ah
  %i.ej = tail call ptr @new_array(i32 noundef %i.bg, i32 noundef %i.bg, double noundef %storemerge112)
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !35
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 200
  store ptr %i.ej, ptr %i.em, align 8, !tbaa !63
  %i.en = tail call ptr @new_array(i32 noundef %i.bg, i32 noundef %i.bg, double noundef 1.000000e+00)
  %i.eo = load ptr, ptr %i.ek, align 8, !tbaa !35
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 208
  store ptr %i.en, ptr %i.ep, align 8, !tbaa !64
  %i.eq = load i16, ptr @Ndim, align 2, !tbaa !65
  %i.er = zext i16 %i.eq to i32
  %i.es = tail call ptr @new_array(i32 noundef %i.bg, i32 noundef %i.er, double noundef 1.000000e+00)
  %i.et = load ptr, ptr %i.ek, align 8, !tbaa !35 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 216
  store ptr %i.es, ptr %i.eu, align 8, !tbaa !66
  %i.ev = load i16, ptr @Ndim, align 2, !tbaa !65 ; 2 uses
  %i.ew = add i32 %i.bg, 1                        ; 2 uses
  %i.ex = sext i32 %i.ew to i64                   ; 6 uses
  %mul.ov.i.i = icmp slt i32 %i.bg, -1
  br i1 %mul.ov.i.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ey = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ez = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ey, ptr noundef nonnull @.str.15, i64 noundef range(i64 -2147483648, 4294836226) %i.ex, i64 noundef 8) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.fa = icmp ne i32 %i.ew, 0
  %i.fb = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 4294836226) %i.ex, i64 noundef 8) #21 ; 5 uses
  %i.fc = icmp eq ptr %i.fb, null
  %or.cond3.i.i = and i1 %i.fa, %i.fc
  br i1 %or.cond3.i.i, label %bb.am, label %gv_calloc.exit.preheader.i

gv_calloc.exit.preheader.i:                       ; preds = %bb.ak
  %i.fd = icmp sgt i32 %i.bg, 0
  br i1 %i.fd, label %.lr.ph.split.split.us.i, label %new_3array.exit

.lr.ph.split.split.us.i:                          ; preds = %gv_calloc.exit.preheader.i
  %i.fe = zext i16 %i.ev to i64                   ; 3 uses
  %.not.i120 = icmp eq i16 %i.ev, 0
  %wide.trip.count235.i = zext nneg i32 %i.bg to i64 ; 6 uses
  br i1 %.not.i120, label %.lr.ph.split.split.us.split.split.split.i, label %.lr.ph.split.split.us.split.us.split.us.split.i

.lr.ph.split.split.us.split.us.split.us.split.i:  ; preds = %.lr.ph.split.split.us.i, %._crit_edge45.split.us.split.us67.us.us.i
  %indvars.iv163.i = phi i64 [ %indvars.iv.next164.i, %._crit_edge45.split.us.split.us67.us.us.i ], [ 0, %.lr.ph.split.split.us.i ] ; 2 uses
  %i.ff = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 4294836226) %i.ex, i64 noundef 8) #21 ; 4 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %.split70.us.i, label %gv_calloc.exit31.us.us.us.i

gv_calloc.exit31.us.us.us.i:                      ; preds = %.lr.ph.split.split.us.split.us.split.us.split.i
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv163.i
  store ptr %i.ff, ptr %i.fh, align 8, !tbaa !67
  br label %bb.al

bb.al:                                            ; preds = %gv_calloc.exit34.us.us64.us.us.i, %gv_calloc.exit31.us.us.us.i
  %indvars.iv158.i = phi i64 [ %indvars.iv.next159.i, %gv_calloc.exit34.us.us64.us.us.i ], [ 0, %gv_calloc.exit31.us.us.us.i ] ; 2 uses
  %i.fi = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 4294836226) %i.fe, i64 noundef 8) #21 ; 2 uses
  %i.fj = icmp eq ptr %i.fi, null
  br i1 %i.fj, label %.split.us.i, label %gv_calloc.exit34.us.us64.us.us.i

gv_calloc.exit34.us.us64.us.us.i:                 ; preds = %bb.al
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %indvars.iv158.i
  store ptr %i.fi, ptr %i.fk, align 8, !tbaa !16
  %indvars.iv.next159.i = add nuw nsw i64 %indvars.iv158.i, 1 ; 2 uses
  %exitcond162.not.i = icmp eq i64 %indvars.iv.next159.i, %wide.trip.count235.i
  br i1 %exitcond162.not.i, label %._crit_edge45.split.us.split.us67.us.us.i, label %bb.al, !llvm.loop !90

._crit_edge45.split.us.split.us67.us.us.i:        ; preds = %gv_calloc.exit34.us.us64.us.us.i
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %wide.trip.count235.i
  store ptr null, ptr %i.fl, align 8, !tbaa !16
  %indvars.iv.next164.i = add nuw nsw i64 %indvars.iv163.i, 1 ; 2 uses
  %exitcond167.not.i = icmp eq i64 %indvars.iv.next164.i, %wide.trip.count235.i
  br i1 %exitcond167.not.i, label %new_3array.exit, label %.lr.ph.split.split.us.split.us.split.us.split.i, !llvm.loop !91

.lr.ph.split.split.us.split.split.split.i:        ; preds = %.lr.ph.split.split.us.i, %._crit_edge45.split.split.us.us.i
  %indvars.iv232.i = phi i64 [ %indvars.iv.next233.i, %._crit_edge45.split.split.us.us.i ], [ 0, %.lr.ph.split.split.us.i ] ; 2 uses
  %i.fm = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 4294836226) %i.ex, i64 noundef 8) #21 ; 4 uses
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %.split70.us.i, label %gv_calloc.exit31.us.i

gv_calloc.exit31.us.i:                            ; preds = %.lr.ph.split.split.us.split.split.split.i
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv232.i
  store ptr %i.fm, ptr %i.fo, align 8, !tbaa !67
  br label %gv_calloc.exit34.us49.us.i

gv_calloc.exit34.us49.us.i:                       ; preds = %gv_calloc.exit34.us49.us.i, %gv_calloc.exit31.us.i
  %indvars.iv227.i = phi i64 [ %indvars.iv.next228.i, %gv_calloc.exit34.us49.us.i ], [ 0, %gv_calloc.exit31.us.i ] ; 2 uses
  %i.fp = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 4294836226) %i.fe, i64 noundef 8) #21
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv227.i
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !16
  %indvars.iv.next228.i = add nuw nsw i64 %indvars.iv227.i, 1 ; 2 uses
  %exitcond231.not.i = icmp eq i64 %indvars.iv.next228.i, %wide.trip.count235.i
  br i1 %exitcond231.not.i, label %._crit_edge45.split.split.us.us.i, label %gv_calloc.exit34.us49.us.i, !llvm.loop !90

._crit_edge45.split.split.us.us.i:                ; preds = %gv_calloc.exit34.us49.us.i
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %wide.trip.count235.i
  store ptr null, ptr %i.fr, align 8, !tbaa !16
  %indvars.iv.next233.i = add nuw nsw i64 %indvars.iv232.i, 1 ; 2 uses
  %exitcond236.not.i = icmp eq i64 %indvars.iv.next233.i, %wide.trip.count235.i
  br i1 %exitcond236.not.i, label %new_3array.exit, label %.lr.ph.split.split.us.split.split.split.i, !llvm.loop !91

bb.am:                                            ; preds = %bb.ak
  %i.fs = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ft = shl nuw nsw i64 %i.ex, 3
  %i.fu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fs, ptr noundef nonnull @.str.16, i64 noundef %i.ft) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

.split70.us.i:                                    ; preds = %.lr.ph.split.split.us.split.us.split.us.split.i, %.lr.ph.split.split.us.split.split.split.i
  %i.fv = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.fw = shl nuw nsw i64 %i.ex, 3
  %i.fx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fv, ptr noundef nonnull @.str.16, i64 noundef %i.fw) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

.split.us.i:                                      ; preds = %bb.al
  %i.fy = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.fz = shl nuw nsw i64 %i.fe, 3
  %i.ga = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fy, ptr noundef nonnull @.str.16, i64 noundef %i.fz) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

new_3array.exit:                                  ; preds = %._crit_edge45.split.us.split.us67.us.us.i, %._crit_edge45.split.split.us.us.i, %gv_calloc.exit.preheader.i
  %.028.lcssa.i = phi i32 [ %i.bg, %._crit_edge45.split.split.us.us.i ], [ 0, %gv_calloc.exit.preheader.i ], [ %i.bg, %._crit_edge45.split.us.split.us67.us.us.i ]
  %i.gb = zext nneg i32 %.028.lcssa.i to i64
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.gb
  store ptr null, ptr %i.gc, align 8, !tbaa !67
  %i.gd = getelementptr inbounds nuw i8, ptr %i.et, i64 224
  store ptr %i.fb, ptr %i.gd, align 8, !tbaa !68
  br label %bb.an

bb.an:                                            ; preds = %new_3array.exit, %bb.ah
  ret i32 %i.bg
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare ptr @agnameof(ptr noundef) local_unnamed_addr #6

declare i32 @agnnodes(ptr noundef) local_unnamed_addr #6

declare ptr @agfstnode(ptr noundef) local_unnamed_addr #6

declare ptr @agnxtnode(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @agdelete(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @agnedges(ptr noundef) local_unnamed_addr #6

declare ptr @agattr_text(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @getdouble(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @agget(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc double @setEdgeLen(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = tail call ptr @agfstout(ptr noundef %0, ptr noundef nonnull %1) #22 ; 3 uses
  %.not19 = icmp eq ptr %i.b, null
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %lenattr.exit.thread.us, label %.lr.ph.split

lenattr.exit.thread.us:                           ; preds = %.lr.ph, %lenattr.exit.thread.us
  %.022.us = phi double [ %i.g, %lenattr.exit.thread.us ], [ 0.000000e+00, %.lr.ph ]
  %.01320.us = phi ptr [ %i.h, %lenattr.exit.thread.us ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01320.us, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  store double 1.000000e+00, ptr %i.f, align 8, !tbaa !74
  %i.g = fadd double %.022.us, 1.000000e+00       ; 2 uses
  %i.h = tail call ptr @agnxtout(ptr noundef %0, ptr noundef nonnull %.01320.us) #22 ; 2 uses
  %.not.us = icmp eq ptr %i.h, null
  br i1 %.not.us, label %._crit_edge, label %lenattr.exit.thread.us, !llvm.loop !101

.lr.ph.split:                                     ; preds = %.lr.ph, %lenattr.exit.thread17
  %.022 = phi double [ %i.y, %lenattr.exit.thread17 ], [ 0.000000e+00, %.lr.ph ]
  %.01320 = phi ptr [ %i.z, %lenattr.exit.thread17 ], [ %i.b, %.lr.ph ] ; 3 uses
  %i.i = call ptr @agxget(ptr noundef nonnull %.01320, ptr noundef nonnull %2) #22 ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !23
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %lenattr.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %i.l = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.a) #22
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load double, ptr %i.a, align 8, !tbaa !18 ; 3 uses
  %i.o = fcmp olt double %i.n, 0.000000e+00
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = fcmp une double %i.n, 0.000000e+00
  %i.q = load i32, ptr @Nop, align 4
  %i.r = icmp ne i32 %i.q, 0
  %or.cond.i = select i1 %i.p, i1 true, i1 %i.r
  br i1 %or.cond.i, label %lenattr.exit.thread17, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.19, ptr noundef nonnull %i.i) #22
  %i.s = call ptr @agnameof(ptr noundef %0) #22
  %i.t = call i32 (i32, ptr, ...) @agerr(i32 noundef 3, ptr noundef nonnull @.str.17, ptr noundef %i.s, double noundef 1.000000e+00) #22 ; 0 uses
  br label %lenattr.exit.thread

lenattr.exit.thread:                              ; preds = %.lr.ph.split, %bb.e
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !18
  br label %lenattr.exit.thread17

lenattr.exit.thread17:                            ; preds = %bb.d, %lenattr.exit.thread
  %i.u = phi double [ %i.n, %bb.d ], [ 1.000000e+00, %lenattr.exit.thread ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01320, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 184
  store double %i.u, ptr %i.x, align 8, !tbaa !74
  %i.y = fadd double %.022, %i.u                  ; 2 uses
  %i.z = call ptr @agnxtout(ptr noundef %0, ptr noundef nonnull %.01320) #22 ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !101

._crit_edge:                                      ; preds = %lenattr.exit.thread17, %lenattr.exit.thread.us, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.g, %lenattr.exit.thread.us ], [ %i.y, %lenattr.exit.thread17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret double %.0.lcssa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: nounwind uwtable
define i32 @scan_graph(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @scan_graph_mode(ptr noundef %0, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @free_scan_graph(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  tail call void @free(ptr noundef %i.d) #22
  %i.e = load i32, ptr @Nop, align 4, !tbaa !62
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63   ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %free_array.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.i) #22
  tail call void @free(ptr noundef nonnull %i.h) #22
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !35
  br label %free_array.exit

free_array.exit:                                  ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.f, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 208
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !64   ; 3 uses
  %.not.i6 = icmp eq ptr %i.l, null
  br i1 %.not.i6, label %free_array.exit7, label %bb.d

bb.d:                                             ; preds = %free_array.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.m) #22
  tail call void @free(ptr noundef nonnull %i.l) #22
  %.pre11 = load ptr, ptr %i.a, align 8, !tbaa !35
  br label %free_array.exit7

free_array.exit7:                                 ; preds = %free_array.exit, %bb.d
  %i.n = phi ptr [ %i.j, %free_array.exit ], [ %.pre11, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !66   ; 3 uses
  %.not.i8 = icmp eq ptr %i.p, null
  br i1 %.not.i8, label %free_array.exit9, label %bb.e

bb.e:                                             ; preds = %free_array.exit7
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.q) #22
  tail call void @free(ptr noundef nonnull %i.p) #22
  %.pre12 = load ptr, ptr %i.a, align 8, !tbaa !35
  br label %free_array.exit9

free_array.exit9:                                 ; preds = %free_array.exit7, %bb.e
  %i.r = phi ptr [ %i.n, %free_array.exit7 ], [ %.pre12, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 224
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !68   ; 5 uses
  %.not.i10 = icmp eq ptr %i.t, null
  br i1 %.not.i10, label %free_3array.exit, label %.preheader18.i

.preheader18.i:                                   ; preds = %free_array.exit9
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !67   ; 2 uses
  %.not1621.i = icmp eq ptr %i.u, null
  br i1 %.not1621.i, label %._crit_edge23.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader18.i, %._crit_edge.i
  %i.v = phi ptr [ %i.ad, %._crit_edge.i ], [ %i.u, %.preheader18.i ] ; 2 uses
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i, %._crit_edge.i ], [ 0, %.preheader18.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv26.i
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !16   ; 2 uses
  %.not1719.i = icmp eq ptr %i.x, null
  br i1 %.not1719.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader.i ]
  %i.y = phi ptr [ %i.ab, %.lr.ph.i ], [ %i.x, %.preheader.i ]
  tail call void @free(ptr noundef nonnull %i.y) #22
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !67   ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !16 ; 2 uses
  %.not17.i = icmp eq ptr %i.ab, null
  br i1 %.not17.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !102

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.lcssa.i = phi ptr [ %i.v, %.preheader.i ], [ %i.z, %.lr.ph.i ]
  tail call void @free(ptr noundef nonnull %.lcssa.i) #22
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next27.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !67 ; 2 uses
  %.not16.i = icmp eq ptr %i.ad, null
  br i1 %.not16.i, label %._crit_edge23.i, label %.preheader.i, !llvm.loop !103

._crit_edge23.i:                                  ; preds = %._crit_edge.i, %.preheader18.i
  tail call void @free(ptr noundef nonnull %i.t) #22
  %.pre13 = load ptr, ptr %i.a, align 8, !tbaa !35
  br label %free_3array.exit

free_3array.exit:                                 ; preds = %free_array.exit9, %._crit_edge23.i
  %i.ae = phi ptr [ %i.r, %free_array.exit9 ], [ %.pre13, %._crit_edge23.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 224
  store ptr null, ptr %i.af, align 8, !tbaa !68
  br label %bb.f

bb.f:                                             ; preds = %free_3array.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @jitter_d(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load i16, ptr @Ndim, align 2, !tbaa !65
  %i.b = zext i16 %i.a to i32
  %i.c = icmp slt i32 %2, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = sitofp i32 %1 to double
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = sext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.f, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.g = tail call double @drand48() #22
  %i.h = fmul double %i.g, %i.d
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !75
  %i.l = getelementptr inbounds [8 x i8], ptr %i.k, i64 %indvars.iv
  store double %i.h, ptr %i.l, align 8, !tbaa !18
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.m = load i16, ptr @Ndim, align 2, !tbaa !65
  %i.n = zext i16 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %bb.b, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare double @drand48() local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define void @jitter3d(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i16, ptr @Ndim, align 2, !tbaa !65
  %i.b = icmp ugt i16 %i.a, 2
  br i1 %i.b, label %.lr.ph.i, label %jitter_d.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = sitofp i32 %1 to double
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 2, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.e = tail call double @drand48() #22
  %i.f = fmul double %i.e, %i.c
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  store double %i.f, ptr %i.j, align 8, !tbaa !18
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = load i16, ptr @Ndim, align 2, !tbaa !65
  %i.l = zext i16 %i.k to i64
end_hunk_0
