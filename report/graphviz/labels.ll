Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/labels?download=true
inline.NumInlined: 54
inline.NumDeleted: 17
begin_hunk_0_@make_simple_label:bb.a
agxblen.exit.i67:                                 ; preds = %bb.v
  %i.bo = zext i8 %.val.i.i54 to i64              ; 2 uses
  %i.bp = call noalias ptr @strndup(ptr noundef nonnull readonly %2, i64 noundef %i.bo) #15 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.w, label %agxbdisown.exit77

bb.w:                                             ; preds = %agxblen.exit.i67
  %i.br = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.bs = add nuw nsw i64 %i.bo, 1
  %i.bt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.br, ptr noundef nonnull @.str.7, i64 noundef %i.bs) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

agxbsizeof.exit.i.i69:                            ; preds = %bb.v
  %i.bu = load i64, ptr %i.g, align 8, !tbaa !16  ; 2 uses
  %i.bv = load i64, ptr %i.h, align 8, !tbaa !16
  %.not.i7.i70 = icmp ult i64 %i.bu, %i.bv
  br i1 %.not.i7.i70, label %.thread.i76, label %bb.x

bb.x:                                             ; preds = %agxbsizeof.exit.i.i69
  call fastcc void @agxbmore(ptr noundef nonnull %2, i64 noundef 1)
  %.val.i15.pre.i.i71 = load i8, ptr %i.f, align 1, !tbaa !16 ; 2 uses
  %.not.i16.i.i72 = icmp eq i8 %.val.i15.pre.i.i71, -1
  br i1 %.not.i16.i.i72, label %..thread_crit_edge.i74, label %bb.y

..thread_crit_edge.i74:                           ; preds = %bb.x
  %.pre.i75 = load i64, ptr %i.g, align 8, !tbaa !16
  br label %.thread.i76

bb.y:                                             ; preds = %bb.x
  %i.bw = zext i8 %.val.i15.pre.i.i71 to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 %i.bw
  store i8 0, ptr %i.bx, align 1, !tbaa !16
  %.pre = load ptr, ptr %2, align 8, !tbaa !16
  br label %agxbdisown.exit77

.thread.i76:                                      ; preds = %..thread_crit_edge.i74, %agxbsizeof.exit.i.i69
  %i.by = phi i64 [ %.pre.i75, %..thread_crit_edge.i74 ], [ %i.bu, %agxbsizeof.exit.i.i69 ]
  %i.bz = load ptr, ptr %2, align 8, !tbaa !16    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.by
  store i8 0, ptr %i.ca, align 1, !tbaa !16
  br label %agxbdisown.exit77

agxbdisown.exit77:                                ; preds = %bb.y, %.thread.i76, %agxblen.exit.i67
  %.0.i68 = phi ptr [ %i.bp, %agxblen.exit.i67 ], [ %i.bz, %.thread.i76 ], [ %.pre, %bb.y ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  tail call fastcc void @storeline(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %.0.i68, i8 noundef signext 110)
  br label %agxbputc.exit88

agxbsizeof.exit.i81:                              ; preds = %bb.l
  %.not.i.i79 = icmp eq i8 %.val.i.i78, -1        ; 2 uses
  %i.cb = load i64, ptr %i.g, align 8
  %i.cc = load i64, ptr %i.h, align 8
  %i.cd = zext i8 %.val.i.i78 to i64
  %.0.i20.i82 = select i1 %.not.i.i79, i64 %i.cb, i64 %i.cd
  %.0.i14.i83 = select i1 %.not.i.i79, i64 %i.cc, i64 31
  %.not.i84 = icmp ult i64 %.0.i20.i82, %.0.i14.i83
  br i1 %.not.i84, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %agxbsizeof.exit.i81
  call fastcc void @agxbmore(ptr noundef nonnull %2, i64 noundef 1)
  %.val.i15.pre.i85 = load i8, ptr %i.f, align 1, !tbaa !16 ; 4 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %agxbsizeof.exit.i81
  %.val.i89148 = phi i8 [ %.val.i15.pre.i85, %bb.z ], [ %.val.i89153, %agxbsizeof.exit.i81 ]
  %.val.i.i41.pr138 = phi i8 [ %.val.i15.pre.i85, %bb.z ], [ %.val.i.i41.pr139, %agxbsizeof.exit.i81 ]
  %.val.i.i134 = phi i8 [ %.val.i15.pre.i85, %bb.z ], [ %.val.i.i, %agxbsizeof.exit.i81 ]
  %.val.i.i78129 = phi i8 [ %.val.i15.pre.i85, %bb.z ], [ %.val.i.i78, %agxbsizeof.exit.i81 ] ; 2 uses
  %.not.i16.i87 = icmp eq i8 %.val.i.i78129, -1
  br i1 %.not.i16.i87, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ce = zext i8 %.val.i.i78129 to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %i.ce
  store i8 %i.i, ptr %i.cf, align 1, !tbaa !16
  %i.cg = load i8, ptr %i.f, align 1, !tbaa !16
  %i.ch = add i8 %i.cg, 1                         ; 6 uses
  store i8 %i.ch, ptr %i.f, align 1, !tbaa !16
  br label %agxbputc.exit88

bb.ac:                                            ; preds = %bb.aa
  %i.ci = load i64, ptr %i.g, align 8, !tbaa !16  ; 2 uses
  %i.cj = load ptr, ptr %2, align 8, !tbaa !16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ci
  store i8 %i.i, ptr %i.ck, align 1, !tbaa !16
  %i.cl = add i64 %i.ci, 1
  store i64 %i.cl, ptr %i.g, align 8, !tbaa !16
  br label %agxbputc.exit88

agxbputc.exit88:                                  ; preds = %bb.ac, %bb.ab, %agxbputc.exit51, %agxbputc.exit64, %agxbdisown.exit77
  %.val.i89155 = phi i8 [ 0, %agxbdisown.exit77 ], [ %.val.i89149, %agxbputc.exit51 ], [ %.val.i89146, %agxbputc.exit64 ], [ %i.ch, %bb.ab ], [ %.val.i89148, %bb.ac ] ; 2 uses
  %.val.i.i41.pr140 = phi i8 [ 0, %agxbdisown.exit77 ], [ %.val.i.i41.pr141, %agxbputc.exit51 ], [ %.val.i.i41.pr136, %agxbputc.exit64 ], [ %i.ch, %bb.ab ], [ %.val.i.i41.pr138, %bb.ac ]
  %.val.i.i131 = phi i8 [ 0, %agxbdisown.exit77 ], [ %.val.i.i41.pr141, %agxbputc.exit51 ], [ %.val.i.i132, %agxbputc.exit64 ], [ %i.ch, %bb.ab ], [ %.val.i.i134, %bb.ac ]
  %.val.i.i78126 = phi i8 [ 0, %agxbdisown.exit77 ], [ %.val.i.i41.pr141, %agxbputc.exit51 ], [ %.val.i.i78127, %agxbputc.exit64 ], [ %i.ch, %bb.ab ], [ -1, %bb.ac ]
  %.val.i.i54122 = phi i8 [ 0, %agxbdisown.exit77 ], [ %.val.i.i41.pr141, %agxbputc.exit51 ], [ %.val.i.i54123, %agxbputc.exit64 ], [ %i.ch, %bb.ab ], [ -1, %bb.ac ]
  %.2 = phi ptr [ %i.j, %agxbdisown.exit77 ], [ %i.aa, %agxbputc.exit51 ], [ %spec.select, %agxbputc.exit64 ], [ %i.j, %bb.ab ], [ %i.j, %bb.ac ] ; 2 uses
  %.pr = load i8, ptr %.2, align 1, !tbaa !16     ; 2 uses
  %.not = icmp eq i8 %.pr, 0
  br i1 %.not, label %.critedge, label %bb.c, !llvm.loop !66

.critedge:                                        ; preds = %agxbputc.exit51, %agxbputc.exit88
  %.val40.pr.pr = phi i8 [ %.val.i89149, %agxbputc.exit51 ], [ %.val.i89155, %agxbputc.exit88 ] ; 2 uses
  switch i8 %.val40.pr.pr, label %agxblen.exit.i94 [
    i8 -1, label %agxblen.exit
    i8 0, label %agxbfree.exit
  ]

agxblen.exit:                                     ; preds = %.critedge
  %i.cm = load i64, ptr %i.g, align 8, !tbaa !16  ; 3 uses
  %.not39 = icmp eq i64 %i.cm, 0
  br i1 %.not39, label %bb.ag, label %agxbsizeof.exit.i.i96

agxblen.exit.i94:                                 ; preds = %.critedge
  %i.cn = zext i8 %.val40.pr.pr to i64            ; 2 uses
  %i.co = call noalias ptr @strndup(ptr noundef nonnull readonly %2, i64 noundef %i.cn) #15 ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.ad, label %.thread107

bb.ad:                                            ; preds = %agxblen.exit.i94
  %i.cq = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.cr = add nuw nsw i64 %i.cn, 1
  %i.cs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cq, ptr noundef nonnull @.str.7, i64 noundef %i.cr) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

agxbsizeof.exit.i.i96:                            ; preds = %agxblen.exit
  %i.ct = load i64, ptr %i.h, align 8, !tbaa !16
  %.not.i7.i97 = icmp ult i64 %i.cm, %i.ct
  br i1 %.not.i7.i97, label %.thread.i103, label %bb.ae

bb.ae:                                            ; preds = %agxbsizeof.exit.i.i96
  call fastcc void @agxbmore(ptr noundef nonnull %2, i64 noundef 1)
  %.val.i15.pre.i.i98 = load i8, ptr %i.f, align 1, !tbaa !16 ; 2 uses
  %.not.i16.i.i99 = icmp eq i8 %.val.i15.pre.i.i98, -1
  br i1 %.not.i16.i.i99, label %..thread_crit_edge.i101, label %bb.af

..thread_crit_edge.i101:                          ; preds = %bb.ae
  %.pre.i102 = load i64, ptr %i.g, align 8, !tbaa !16
  br label %.thread.i103

bb.af:                                            ; preds = %bb.ae
  %i.cu = zext i8 %.val.i15.pre.i.i98 to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 %i.cu
  store i8 0, ptr %i.cv, align 1, !tbaa !16
  %.pre156 = load ptr, ptr %2, align 8, !tbaa !16
  br label %.thread107

.thread.i103:                                     ; preds = %..thread_crit_edge.i101, %agxbsizeof.exit.i.i96
  %i.cw = phi i64 [ %.pre.i102, %..thread_crit_edge.i101 ], [ %i.cm, %agxbsizeof.exit.i.i96 ]
  %i.cx = load ptr, ptr %2, align 8, !tbaa !16    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cw
  store i8 0, ptr %i.cy, align 1, !tbaa !16
  br label %.thread107

.thread107:                                       ; preds = %bb.af, %.thread.i103, %agxblen.exit.i94
  %.0.i95 = phi ptr [ %i.co, %agxblen.exit.i94 ], [ %i.cx, %.thread.i103 ], [ %.pre156, %bb.af ]
  tail call fastcc void @storeline(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %.0.i95, i8 noundef signext 110)
  br label %agxbfree.exit

bb.ag:                                            ; preds = %agxblen.exit
  %.val = load ptr, ptr %2, align 8
  tail call void @free(ptr noundef %.val) #15
  br label %agxbfree.exit

agxbfree.exit:                                    ; preds = %.critedge, %.thread107, %bb.ag
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !68
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %agxbfree.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @storeline(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i8 noundef signext %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.textfont_t, align 8         ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.e = add i64 %i.c, 2                          ; 4 uses
  %mul.ov.i = icmp ugt i64 %i.e, 256204778801521550
  br i1 %mul.ov.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.6, i64 noundef %i.e, i64 noundef 72) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = mul i64 %i.c, 72
  %i.i = add i64 %i.h, 72                         ; 3 uses
  %i.j = mul nuw i64 %i.e, 72                     ; 4 uses
  %i.k = icmp eq i64 %i.e, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.d) #15
  br label %gv_recalloc.exit

bb.e:                                             ; preds = %bb.c
  %i.l = tail call ptr @realloc(ptr noundef %i.d, i64 noundef %i.j) #18 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.7, i64 noundef %i.j) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = icmp ugt i64 %i.j, %i.i
  br i1 %i.p, label %bb.h, label %gv_recalloc.exit

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  %i.r = sub nuw i64 %i.j, %i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 0, i64 %i.r, i1 false)
  br label %gv_recalloc.exit

gv_recalloc.exit:                                 ; preds = %bb.d, %bb.g, %bb.h
  %.0.i.i = phi ptr [ null, %bb.d ], [ %i.l, %bb.h ], [ %i.l, %bb.g ] ; 2 uses
  store ptr %.0.i.i, ptr %i.a, align 8, !tbaa !16
  %i.s = load i64, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.t = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i, i64 %i.s ; 5 uses
  store ptr %2, ptr %i.t, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store i8 %3, ptr %i.u, align 8, !tbaa !23
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %gv_recalloc.exit
  %i.v = load i8, ptr %2, align 1, !tbaa !16
  %.not29 = icmp eq i8 %i.v, 0
  br i1 %.not29, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i8 0, i64 32, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !24
  store ptr %i.y, ptr %4, align 8, !tbaa !71
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load double, ptr %i.z, align 8, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24
  store double %i.aa, ptr %i.ab, align 8, !tbaa !72
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !83 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !87
  %i.af = call ptr %i.ae(ptr noundef nonnull %i.ad, ptr noundef nonnull %4, i32 noundef 1) #15
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !88
  %i.ah = call { double, double } @textspan_size(ptr noundef %0, ptr noundef nonnull %i.t) #15 ; 2 uses
  %i.ai = extractvalue { double, double } %i.ah, 0
  %i.aj = extractvalue { double, double } %i.ah, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %.pre = load i64, ptr %i.b, align 8, !tbaa !16
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %gv_recalloc.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load double, ptr %i.ak, align 8, !tbaa !25
  %i.am = fmul double %i.al, 1.200000e+00
  %i.an = fptosi double %i.am to i32
  %i.ao = sitofp i32 %i.an to double              ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store double %i.ao, ptr %i.ap, align 8, !tbaa !35
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aq = phi i64 [ %.pre, %bb.j ], [ %i.s, %bb.k ]
  %.sroa.06.0 = phi double [ %i.ai, %bb.j ], [ 0.000000e+00, %bb.k ] ; 2 uses
  %.sroa.6.0 = phi double [ %i.aj, %bb.j ], [ %i.ao, %bb.k ]
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !16
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !89 ; 2 uses
  %i.au = fcmp ogt double %i.at, %.sroa.06.0
  %..sroa.06.0 = select i1 %i.au, double %i.at, double %.sroa.06.0
  store double %..sroa.06.0, ptr %i.as, align 8, !tbaa !89
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !36
  %i.ax = fadd double %.sroa.6.0, %i.aw
  store double %i.ax, ptr %i.av, align 8, !tbaa !36
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define nonnull ptr @make_label(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, double noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(112) ptr @calloc(i64 noundef 1, i64 noundef 112) #19 ; 13 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %gv_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.7, i64 noundef 112) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

gv_alloc.exit:                                    ; preds = %bb.a
  %.val = load i8, ptr %1, align 1
  %i.e = icmp ne i8 %.val, 0
  %i.f = and i1 %2, %i.e                          ; 2 uses
  %i.g = tail call i32 @agobjkind(ptr noundef %0) #15
  switch i32 %i.g, label %unreachable [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.c:                                             ; preds = %gv_alloc.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !94
  br label %bb.f

bb.d:                                             ; preds = %gv_alloc.exit
  %i.j = tail call ptr @agraphof(ptr noundef %0) #15
  %i.k = tail call ptr @agroot(ptr noundef %i.j) #15
  br label %bb.f

bb.e:                                             ; preds = %gv_alloc.exit
  %i.l = load i32, ptr %0, align 8
  %i.m = and i32 %i.l, 3
  %i.n = icmp eq i32 %i.m, 2
  %i.o = select i1 %i.n, i64 56, i64 -8
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !44
  %i.r = tail call ptr @agraphof(ptr noundef %i.q) #15
  %i.s = tail call ptr @agroot(ptr noundef %i.r) #15
  br label %bb.f

unreachable:                                      ; preds = %gv_alloc.exit
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.055 = phi ptr [ %i.s, %bb.e ], [ %i.i, %bb.c ], [ %i.k, %bb.d ] ; 3 uses
  %.054 = phi ptr [ null, %bb.e ], [ %0, %bb.c ], [ null, %bb.d ]
  %.053 = phi ptr [ null, %bb.e ], [ null, %bb.c ], [ %0, %bb.d ]
  %.052 = phi ptr [ %0, %bb.e ], [ null, %bb.c ], [ null, %bb.d ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %5, ptr %i.t, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %6, ptr %i.u, align 8, !tbaa !45
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store double %4, ptr %i.v, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %.055, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !46
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 131
  %i.z = load i8, ptr %i.y, align 1, !tbaa !95    ; 2 uses
  %i.aa = zext i8 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !17
  br i1 %3, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call noalias ptr @strdup(ptr noundef nonnull readonly %1) #15 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.h, label %gv_strdup.exit

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.af = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #20
  %i.ag = add i64 %i.af, 1
  %i.ah = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.7, i64 noundef %i.ag) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

gv_strdup.exit:                                   ; preds = %bb.g
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !15
  br i1 %i.f, label %bb.i, label %bb.u

bb.i:                                             ; preds = %gv_strdup.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 106
  store i8 1, ptr %i.ai, align 2, !tbaa !60
  br label %bb.u

bb.j:                                             ; preds = %bb.f
  br i1 %i.f, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call noalias ptr @strdup(ptr noundef nonnull readonly %1) #15 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.l, label %gv_strdup.exit57

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.am = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #20
  %i.an = add i64 %i.am, 1
  %i.ao = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.al, ptr noundef nonnull @.str.7, i64 noundef %i.an) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

gv_strdup.exit57:                                 ; preds = %bb.k
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 106
  store i8 1, ptr %i.ap, align 2, !tbaa !60
  %i.aq = tail call i32 @make_html_label(ptr noundef %0, ptr noundef nonnull %i.a) #15
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.u, label %bb.m

bb.m:                                             ; preds = %gv_strdup.exit57
  %i.ar = tail call i32 @agobjkind(ptr noundef %0) #15
  switch i32 %i.ar, label %bb.u [
    i32 0, label %bb.n
    i32 1, label %bb.o
    i32 2, label %bb.p
  ]

end_hunk_0
