Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/gvplugin?download=true
inline.NumInlined: 109
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@gvplugin_list:bb.a

.critedge84:                                      ; preds = %strview.exit53
  %.not.i54.old = icmp eq i64 %.sroa.3.0.i.fr, %.sroa.3.0.i50
  br i1 %.not.i54.old, label %strview_case_eq.exit, label %strview_case_eq.exit.thread

strview_case_eq.exit:                             ; preds = %._crit_edge, %.critedge84
  %i.bp = tail call i32 @strncasecmp(ptr noundef nonnull readonly %2, ptr noundef nonnull readonly %i.ap, i64 noundef %.sroa.3.0.i.fr) #22
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.m, label %strview_case_eq.exit.thread

bb.m:                                             ; preds = %strview_case_eq.exit
  %i.br = getelementptr inbounds nuw i8, ptr %.04070, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !19
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !45
  tail call void (ptr, ptr, ...) @agxbprint(ptr noundef nonnull @gvplugin_list.xb, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.ap, ptr noundef %i.bu)
  br label %strview_case_eq.exit.thread

strview_case_eq.exit.thread:                      ; preds = %.critedge84, %strview_case_eq.exit, %bb.m, %._crit_edge
  %.2 = phi i1 [ %.03871, %._crit_edge ], [ false, %bb.m ], [ %.03871, %strview_case_eq.exit ], [ %.03871, %.critedge84 ] ; 2 uses
  %i.bv = load ptr, ptr %.04070, align 8, !tbaa !18 ; 2 uses
  %.not45 = icmp eq ptr %i.bv, null
  br i1 %.not45, label %._crit_edge73, label %.lr.ph72.split, !llvm.loop !62

._crit_edge73:                                    ; preds = %strview_case_eq.exit.thread, %strview_case_eq.exit.thread.us
  %.038.lcssa = phi i1 [ %.2.us, %strview_case_eq.exit.thread.us ], [ %.2, %strview_case_eq.exit.thread ]
  br i1 %.038.lcssa, label %.critedge.preheader, label %.thread

.critedge.preheader:                              ; preds = %._crit_edge73, %strview.exit
  %.not4675 = icmp eq ptr %i.i, null
  br i1 %.not4675, label %agxbuse.exit, label %.lr.ph80.outer

.lr.ph80.outer:                                   ; preds = %.critedge.preheader, %.critedge.thread
  %.sroa.65.079.ph = phi i64 [ %.sroa.3.0.i56, %.critedge.thread ], [ 0, %.critedge.preheader ]
  %.sroa.03.078.ph = phi ptr [ %i.bx, %.critedge.thread ], [ null, %.critedge.preheader ]
  %.477.ph = phi i1 [ false, %.critedge.thread ], [ true, %.critedge.preheader ]
  %.14176.ph = phi ptr [ %i.ch, %.critedge.thread ], [ %i.i, %.critedge.preheader ]
  br label %.lr.ph80

.lr.ph80:                                         ; preds = %.lr.ph80.outer, %.critedge
  %.sroa.65.079 = phi i64 [ %.sroa.3.0.i56, %.critedge ], [ %.sroa.65.079.ph, %.lr.ph80.outer ] ; 2 uses
  %.sroa.03.078 = phi ptr [ %i.bx, %.critedge ], [ %.sroa.03.078.ph, %.lr.ph80.outer ] ; 2 uses
  %.14176 = phi ptr [ %i.cf, %.critedge ], [ %.14176.ph, %.lr.ph80.outer ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.14176, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !15 ; 7 uses
  %i.by = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bx, i32 noundef 58) #22 ; 2 uses
  %.not.i55 = icmp eq ptr %i.by, null
  br i1 %.not.i55, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph80
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = sub i64 %i.bz, %i.ca
  br label %strview.exit59

bb.o:                                             ; preds = %.lr.ph80
  %i.cc = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bx) #22
  br label %strview.exit59

strview.exit59:                                   ; preds = %bb.n, %bb.o
  %.sroa.3.0.i56 = phi i64 [ %i.cb, %bb.n ], [ %i.cc, %bb.o ] ; 4 uses
  %.not47 = icmp ne ptr %.sroa.03.078, null
  %.not.i60 = icmp eq i64 %.sroa.65.079, %.sroa.3.0.i56
  %or.cond = select i1 %.not47, i1 %.not.i60, i1 false
  br i1 %or.cond, label %strview_case_eq.exit62, label %.critedge.thread

strview_case_eq.exit62:                           ; preds = %strview.exit59
  %i.cd = tail call i32 @strncasecmp(ptr noundef nonnull readonly %.sroa.03.078, ptr noundef nonnull readonly %i.bx, i64 noundef %.sroa.65.079) #22
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %.critedge, label %.critedge.thread

.critedge:                                        ; preds = %strview_case_eq.exit62
  %i.cf = load ptr, ptr %.14176, align 8, !tbaa !18 ; 2 uses
  %.not46 = icmp eq ptr %i.cf, null
  br i1 %.not46, label %.critedge._crit_edge, label %.lr.ph80, !llvm.loop !63

.critedge.thread:                                 ; preds = %strview.exit59, %strview_case_eq.exit62
  %i.cg = trunc i64 %.sroa.3.0.i56 to i32
  tail call void (ptr, ptr, ...) @agxbprint(ptr noundef nonnull @gvplugin_list.xb, ptr noundef nonnull @.str.16, i32 noundef %i.cg, ptr noundef nonnull %i.bx)
  %i.ch = load ptr, ptr %.14176, align 8, !tbaa !18 ; 2 uses
  %.not4699 = icmp eq ptr %i.ch, null
  br i1 %.not4699, label %.thread, label %.lr.ph80.outer, !llvm.loop !63

.critedge._crit_edge:                             ; preds = %.critedge
  br i1 %.477.ph, label %agxbuse.exit, label %.thread

.thread:                                          ; preds = %.critedge.thread, %._crit_edge73, %.critedge._crit_edge
  %.val.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @gvplugin_list.xb, i64 31), align 1, !tbaa !42 ; 3 uses
  switch i8 %.val.i, label %agxblen.exit.i.i [
    i8 -1, label %bb.p
    i8 31, label %agxbclear.exit.thread.i
  ]

agxblen.exit.i.i:                                 ; preds = %.thread
  %i.ci = zext i8 %.val.i to i64
  br label %agxbsizeof.exit.i.i

bb.p:                                             ; preds = %.thread
  %i.cj = load i64, ptr getelementptr inbounds nuw (i8, ptr @gvplugin_list.xb, i64 8), align 8, !tbaa !42
  %i.ck = load i64, ptr getelementptr inbounds nuw (i8, ptr @gvplugin_list.xb, i64 16), align 8, !tbaa !42
  br label %agxbsizeof.exit.i.i

agxbsizeof.exit.i.i:                              ; preds = %bb.p, %agxblen.exit.i.i
  %.0.i20.i.i = phi i64 [ %i.cj, %bb.p ], [ %i.ci, %agxblen.exit.i.i ]
  %.0.i14.i.i = phi i64 [ %i.ck, %bb.p ], [ 31, %agxblen.exit.i.i ]
  %.not.i5.i = icmp ult i64 %.0.i20.i.i, %.0.i14.i.i
  br i1 %.not.i5.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %agxbsizeof.exit.i.i
  tail call fastcc void @agxbmore(ptr noundef nonnull @gvplugin_list.xb, i64 noundef 1)
  %.val.i15.pre.i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @gvplugin_list.xb, i64 31), align 1, !tbaa !42
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %agxbsizeof.exit.i.i
  %.val.i15.i.i = phi i8 [ %.val.i15.pre.i.i, %bb.q ], [ %.val.i, %agxbsizeof.exit.i.i ] ; 2 uses
  %.not.i16.i.i = icmp eq i8 %.val.i15.i.i, -1
  br i1 %.not.i16.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cl = zext i8 %.val.i15.i.i to i64
  %i.cm = getelementptr inbounds nuw i8, ptr @gvplugin_list.xb, i64 %i.cl
  store i8 0, ptr %i.cm, align 1, !tbaa !42
  %i.cn = load i8, ptr getelementptr inbounds nuw (i8, ptr @gvplugin_list.xb, i64 31), align 1, !tbaa !42
  %i.co = add i8 %i.cn, 1                         ; 2 uses
  store i8 %i.co, ptr getelementptr inbounds nuw (i8, ptr @gvplugin_list.xb, i64 31), align 1, !tbaa !42
  br label %agxbputc.exit.i

bb.t:                                             ; preds = %bb.r
  %i.cp = load i64, ptr getelementptr inbounds nuw (i8, ptr @gvplugin_list.xb, i64 8), align 8, !tbaa !42
  %i.cq = load ptr, ptr @gvplugin_list.xb, align 8, !tbaa !42
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cp
  store i8 0, ptr %i.cr, align 1, !tbaa !42
  %i.cs = load i64, ptr getelementptr inbounds nuw (i8, ptr @gvplugin_list.xb, i64 8), align 8, !tbaa !42
  %i.ct = add i64 %i.cs, 1
  store i64 %i.ct, ptr getelementptr inbounds nuw (i8, ptr @gvplugin_list.xb, i64 8), align 8, !tbaa !42
  %.val.i6.pr.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @gvplugin_list.xb, i64 31), align 1, !tbaa !42
  br label %agxbputc.exit.i

agxbputc.exit.i:                                  ; preds = %bb.t, %bb.s
  %.val.i8.pr.i = phi i8 [ %.val.i6.pr.i, %bb.t ], [ %i.co, %bb.s ]
  %.not.i7.i = icmp eq i8 %.val.i8.pr.i, -1
  br i1 %.not.i7.i, label %bb.u, label %agxbclear.exit.thread.i

agxbclear.exit.thread.i:                          ; preds = %agxbputc.exit.i, %.thread
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @gvplugin_list.xb, i64 31), align 1, !tbaa !42
  br label %agxbuse.exit

bb.u:                                             ; preds = %agxbputc.exit.i
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @gvplugin_list.xb, i64 8), align 8, !tbaa !42
  %i.cu = load ptr, ptr @gvplugin_list.xb, align 8, !tbaa !42
  br label %agxbuse.exit

agxbuse.exit:                                     ; preds = %.preheader, %.critedge.preheader, %bb.u, %agxbclear.exit.thread.i, %.critedge._crit_edge, %bb.a
  %.042 = phi ptr [ null, %bb.a ], [ @.str.17, %.critedge._crit_edge ], [ %i.cu, %bb.u ], [ @gvplugin_list.xb, %agxbclear.exit.thread.i ], [ @.str.17, %.critedge.preheader ], [ @.str.17, %.preheader ]
  ret ptr %.042
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define ptr @gvPluginList(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %3 = alloca %struct.anon.1, align 8             ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.h, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.c = tail call i32 @strcasecmp(ptr noundef nonnull %1, ptr noundef nonnull @.str.68) #22
  %.not23 = icmp eq i32 %i.c, 0
  br i1 %.not23, label %.thread, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.d = tail call i32 @strcasecmp(ptr noundef nonnull %1, ptr noundef nonnull @.str.69) #22
  %.not23.1 = icmp eq i32 %i.d, 0
  br i1 %.not23.1, label %.thread, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.e = tail call i32 @strcasecmp(ptr noundef nonnull %1, ptr noundef nonnull @.str.70) #22
  %.not23.2 = icmp eq i32 %i.e, 0
  br i1 %.not23.2, label %.thread, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.f = tail call i32 @strcasecmp(ptr noundef nonnull %1, ptr noundef nonnull @.str.71) #22
  %.not23.3 = icmp eq i32 %i.f, 0
  br i1 %.not23.3, label %.thread, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.g = tail call i32 @strcasecmp(ptr noundef nonnull %1, ptr noundef nonnull @.str.72) #22
  %.not23.4 = icmp eq i32 %i.g, 0
  br i1 %.not23.4, label %.thread, label %bb.b

bb.b:                                             ; preds = %.preheader.4
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.18, ptr noundef nonnull %1) #23
  br label %bb.h

.thread:                                          ; preds = %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.02130.lcssa = phi i64 [ 0, %.preheader.preheader ], [ 1, %.preheader.1 ], [ 2, %.preheader.2 ], [ 3, %.preheader.3 ], [ 4, %.preheader.4 ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.02130.lcssa
  %.02031 = load ptr, ptr %i.i, align 8, !tbaa !12 ; 2 uses
  %.not2432 = icmp eq ptr %.02031, null
  br i1 %.not2432, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %.02035 = phi ptr [ %.02031, %.lr.ph ], [ %.020, %bb.g ] ; 2 uses
  %.sroa.65.034 = phi i64 [ 0, %.lr.ph ], [ %.sroa.3.0.i, %bb.g ] ; 2 uses
  %.sroa.03.033 = phi ptr [ null, %.lr.ph ], [ %i.l, %bb.g ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.02035, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15   ; 6 uses
  %i.m = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.l, i32 noundef 58) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = sub i64 %i.n, %i.o
  br label %strview.exit

bb.e:                                             ; preds = %bb.c
  %i.q = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #22
  br label %strview.exit

strview.exit:                                     ; preds = %bb.d, %bb.e
  %.sroa.3.0.i = phi i64 [ %i.p, %bb.d ], [ %i.q, %bb.e ] ; 4 uses
  %.not25 = icmp ne ptr %.sroa.03.033, null
  %.not.i26 = icmp eq i64 %.sroa.65.034, %.sroa.3.0.i
  %or.cond = select i1 %.not25, i1 %.not.i26, i1 false
  br i1 %or.cond, label %strview_case_eq.exit, label %strview_case_eq.exit.thread

strview_case_eq.exit:                             ; preds = %strview.exit
  %i.r = call i32 @strncasecmp(ptr noundef nonnull readonly %.sroa.03.033, ptr noundef nonnull readonly %i.l, i64 noundef %.sroa.65.034) #22
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %strview_case_eq.exit.thread

strview_case_eq.exit.thread:                      ; preds = %strview.exit, %strview_case_eq.exit
  %i.t = call noalias ptr @strndup(ptr noundef nonnull readonly %i.l, i64 noundef %.sroa.3.0.i) #23 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.f, label %strview_str.exit

bb.f:                                             ; preds = %strview_case_eq.exit.thread
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.w = add i64 %.sroa.3.0.i, 1
  %i.x = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.74, i64 noundef %i.w) #25 ; 0 uses
  call fastcc void @graphviz_exit() #26
  unreachable

strview_str.exit:                                 ; preds = %strview_case_eq.exit.thread
  store ptr %i.t, ptr %i.j, align 8, !tbaa !66
  %i.y = call i64 @gv_list_append_slot_(ptr noundef nonnull %3, i64 noundef 8) #23
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !66
  %i.aa = load ptr, ptr %3, align 8, !tbaa !42
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %strview_str.exit, %strview_case_eq.exit
  %.020 = load ptr, ptr %.02035, align 8, !tbaa !12 ; 2 uses
  %.not24 = icmp eq ptr %.020, null
  br i1 %.not24, label %._crit_edge, label %bb.c, !llvm.loop !64

._crit_edge:                                      ; preds = %bb.g, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @gv_list_detach_(ptr noundef nonnull %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef 8) #23
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !68
  %i.ad = trunc i64 %i.ac to i32
  store i32 %i.ad, ptr %2, align 4, !tbaa !69
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %._crit_edge, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.ae, %._crit_edge ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret ptr %.0
}

declare hidden i64 @gv_list_append_slot_(ptr noundef, i64 noundef) local_unnamed_addr #7

declare hidden void @gv_list_detach_(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define void @gvplugin_write_status(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !41
  %.not = icmp eq i32 %i.b, 0
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !17 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.19, ptr noundef %i.e) #25 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load i8, ptr %i.g, align 8, !tbaa !72, !range !73, !noundef !74
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !17 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %fwrite12 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 27, i64 1, ptr %i.j) #27 ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %fwrite11 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 53, i64 1, ptr %i.j) #27 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.22, i64 39, i64 1, ptr %i.c) #27 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !43
  %i.m = icmp sgt i32 %i.l, 1
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !17
  %.str.24..str.25 = select i1 %i.m, ptr @.str.24, ptr @.str.25
  %i.o = tail call ptr @gvplugin_list(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %.str.24..str.25)
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.68, ptr noundef %i.o) #25 ; 0 uses
  %i.q = load i32, ptr %i.k, align 8, !tbaa !43
  %i.r = icmp sgt i32 %i.q, 1
  %.str.24.sink16 = select i1 %i.r, ptr @.str.24, ptr @.str.25
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.t = tail call ptr @gvplugin_list(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %.str.24.sink16)
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.69, ptr noundef %i.t) #25 ; 0 uses
  %i.v = load i32, ptr %i.k, align 8, !tbaa !43
  %i.w = icmp sgt i32 %i.v, 1
  %.str.24.sink18 = select i1 %i.w, ptr @.str.24, ptr @.str.25
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.y = tail call ptr @gvplugin_list(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull %.str.24.sink18)
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.70, ptr noundef %i.y) #25 ; 0 uses
  %i.aa = load i32, ptr %i.k, align 8, !tbaa !43
  %i.ab = icmp sgt i32 %i.aa, 1
  %.str.24.sink20 = select i1 %i.ab, ptr @.str.24, ptr @.str.25
  %i.ac = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ad = tail call ptr @gvplugin_list(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull %.str.24.sink20)
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ac, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.71, ptr noundef %i.ad) #25 ; 0 uses
  %i.af = load i32, ptr %i.k, align 8, !tbaa !43
  %i.ag = icmp sgt i32 %i.af, 1
  %.str.24.sink22 = select i1 %i.ag, ptr @.str.24, ptr @.str.25
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ai = tail call ptr @gvplugin_list(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull %.str.24.sink22)
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ah, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.72, ptr noundef %i.ai) #25 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @gvplugin_graph(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %1 = alloca %struct.agxbuf, align 8             ; 137 uses
  %i.a = load i32, ptr @Agdirected, align 4
  %i.b = tail call ptr @agopen(ptr noundef nonnull @.str.26, i32 %i.a, ptr noundef null) #23 ; 63 uses
  %i.c = tail call ptr @agattr_text(ptr noundef %i.b, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.17) #23 ; 0 uses
  %i.d = tail call ptr @agattr_text(ptr noundef %i.b, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.17) #23 ; 0 uses
  %i.e = tail call ptr @agattr_text(ptr noundef %i.b, i32 noundef 0, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.17) #23 ; 0 uses
  %i.f = tail call ptr @agattr_text(ptr noundef %i.b, i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.17) #23 ; 0 uses
  %i.g = tail call ptr @agattr_text(ptr noundef %i.b, i32 noundef 1, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.31) #23 ; 0 uses
  %i.h = tail call ptr @agattr_text(ptr noundef %i.b, i32 noundef 1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.17) #23 ; 0 uses
  %i.i = tail call ptr @agattr_text(ptr noundef %i.b, i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.17) #23 ; 0 uses
  %i.j = tail call ptr @agattr_text(ptr noundef %i.b, i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.17) #23 ; 0 uses
  %i.k = tail call ptr @agattr_text(ptr noundef %i.b, i32 noundef 2, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.17) #23 ; 0 uses
  %i.l = tail call ptr @agattr_text(ptr noundef %i.b, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef null) #23
  %i.m = tail call i32 @agxset(ptr noundef %i.b, ptr noundef %i.l, ptr noundef nonnull @.str.35) #23 ; 0 uses
  %i.n = tail call ptr @agattr_text(ptr noundef %i.b, i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef null) #23
  %i.o = tail call i32 @agxset(ptr noundef %i.b, ptr noundef %i.n, ptr noundef nonnull @.str.36) #23 ; 0 uses
  %i.p = tail call ptr @agattr_text(ptr noundef %i.b, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef null) #23
  %i.q = tail call i32 @agxset(ptr noundef %i.b, ptr noundef %i.p, ptr noundef nonnull @.str.37) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.03161156 = load ptr, ptr %i.r, align 8, !tbaa !81 ; 2 uses
  %.not1157 = icmp eq ptr %.03161156, null
  br i1 %.not1157, label %._crit_edge1161, label %.lr.ph1160

.lr.ph1160:                                       ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 60 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 59 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 19 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.b

._crit_edge1161:                                  ; preds = %bb.dp, %bb.a
  %i.w = call ptr @agsubg(ptr noundef %i.b, ptr noundef nonnull @.str.63, i32 noundef 1) #23 ; 5 uses
  %i.x = call ptr @agattr_text(ptr noundef %i.w, i32 noundef 0, ptr noundef nonnull @.str.29, ptr noundef null) #23
  %i.y = call i32 @agxset(ptr noundef %i.w, ptr noundef %i.x, ptr noundef nonnull @.str.40) #23 ; 0 uses
  %.03131169 = load ptr, ptr %i.r, align 8, !tbaa !81 ; 2 uses
  %.not3581170 = icmp eq ptr %.03131169, null
  br i1 %.not3581170, label %._crit_edge1172, label %.preheader.lr.ph

end_hunk_0
