inline.NumInlined: 54
inline.NumDeleted: 17
begin_hunk_0_@make_simple_label:bb.a
  %i.br = call noalias ptr @strndup(ptr noundef nonnull readonly %2, i64 noundef %i.bq) #15 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.w, label %agxbdisown.exit77

bb.w:                                             ; preds = %agxblen.exit.i67
  %i.bt = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.bu = add nuw nsw i64 %i.bq, 1
  %i.bv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bt, ptr noundef nonnull @.str.7, i64 noundef %i.bu) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

agxbsizeof.exit.i.i69:                            ; preds = %bb.v
  %i.bw = load i64, ptr %i.h, align 8, !tbaa !15  ; 2 uses
  %i.bx = load i64, ptr %i.i, align 8, !tbaa !15
  %.not.i7.i70 = icmp ult i64 %i.bw, %i.bx
  br i1 %.not.i7.i70, label %.thread.i76, label %bb.x

bb.x:                                             ; preds = %agxbsizeof.exit.i.i69
  call fastcc void @agxbmore(ptr noundef nonnull %2, i64 noundef 1)
  %.val.i15.pre.i.i71 = load i8, ptr %i.g, align 1, !tbaa !15 ; 2 uses
  %.not.i16.i.i72 = icmp eq i8 %.val.i15.pre.i.i71, -1
  br i1 %.not.i16.i.i72, label %..thread_crit_edge.i74, label %bb.y

..thread_crit_edge.i74:                           ; preds = %bb.x
  %.pre.i75 = load i64, ptr %i.h, align 8, !tbaa !15
  br label %.thread.i76

bb.y:                                             ; preds = %bb.x
  %i.by = zext i8 %.val.i15.pre.i.i71 to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 %i.by
  store i8 0, ptr %i.bz, align 1, !tbaa !15
  br label %agxbputc.exit.i73

.thread.i76:                                      ; preds = %..thread_crit_edge.i74, %agxbsizeof.exit.i.i69
  %i.ca = phi i64 [ %.pre.i75, %..thread_crit_edge.i74 ], [ %i.bw, %agxbsizeof.exit.i.i69 ]
  %i.cb = load ptr, ptr %2, align 8, !tbaa !15
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ca
  store i8 0, ptr %i.cc, align 1, !tbaa !15
  br label %agxbputc.exit.i73

agxbputc.exit.i73:                                ; preds = %.thread.i76, %bb.y
  %i.cd = load ptr, ptr %2, align 8, !tbaa !15
  br label %agxbdisown.exit77

agxbdisown.exit77:                                ; preds = %agxblen.exit.i67, %agxbputc.exit.i73
  %.0.i68 = phi ptr [ %i.cd, %agxbputc.exit.i73 ], [ %i.br, %agxblen.exit.i67 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  tail call fastcc void @storeline(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %.0.i68, i8 noundef signext 110)
  br label %agxbputc.exit88

agxbsizeof.exit.i81:                              ; preds = %bb.l
  %.val.i.i78 = load i8, ptr %i.g, align 1, !tbaa !15 ; 3 uses
  %.not.i.i79 = icmp eq i8 %.val.i.i78, -1        ; 2 uses
  %i.ce = load i64, ptr %i.h, align 8
  %i.cf = load i64, ptr %i.i, align 8
  %i.cg = zext i8 %.val.i.i78 to i64
  %.0.i20.i82 = select i1 %.not.i.i79, i64 %i.ce, i64 %i.cg
  %.0.i14.i83 = select i1 %.not.i.i79, i64 %i.cf, i64 31
  %.not.i84 = icmp ult i64 %.0.i20.i82, %.0.i14.i83
  br i1 %.not.i84, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %agxbsizeof.exit.i81
  call fastcc void @agxbmore(ptr noundef nonnull %2, i64 noundef 1)
  %.val.i15.pre.i85 = load i8, ptr %i.g, align 1, !tbaa !15
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %agxbsizeof.exit.i81
  %.val.i15.i86 = phi i8 [ %.val.i15.pre.i85, %bb.z ], [ %.val.i.i78, %agxbsizeof.exit.i81 ] ; 2 uses
  %.not.i16.i87 = icmp eq i8 %.val.i15.i86, -1
  br i1 %.not.i16.i87, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ch = zext i8 %.val.i15.i86 to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 %i.ch
  store i8 %i.j, ptr %i.ci, align 1, !tbaa !15
  %i.cj = load i8, ptr %i.g, align 1, !tbaa !15
  %i.ck = add i8 %i.cj, 1
  store i8 %i.ck, ptr %i.g, align 1, !tbaa !15
  br label %agxbputc.exit88

bb.ac:                                            ; preds = %bb.aa
  %i.cl = load i64, ptr %i.h, align 8, !tbaa !15  ; 2 uses
  %i.cm = load ptr, ptr %2, align 8, !tbaa !15
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cl
  store i8 %i.j, ptr %i.cn, align 1, !tbaa !15
  %i.co = add i64 %i.cl, 1
  store i64 %i.co, ptr %i.h, align 8, !tbaa !15
  br label %agxbputc.exit88

agxbputc.exit88:                                  ; preds = %bb.ac, %bb.ab, %agxbputc.exit51, %agxbputc.exit64, %agxbdisown.exit77
  %.2 = phi ptr [ %i.k, %agxbdisown.exit77 ], [ %i.ab, %agxbputc.exit51 ], [ %spec.select, %agxbputc.exit64 ], [ %i.k, %bb.ab ], [ %i.k, %bb.ac ] ; 2 uses
  %i.cp = load i8, ptr %.2, align 1, !tbaa !15    ; 2 uses
  %.not = icmp eq i8 %i.cp, 0
  br i1 %.not, label %.critedge, label %bb.c, !llvm.loop !19

.critedge:                                        ; preds = %agxbputc.exit88, %agxbputc.exit51
  %.val.i89.pre = load i8, ptr %i.g, align 1, !tbaa !15 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 31
  switch i8 %.val.i89.pre, label %agxblen.exit.i94 [
    i8 -1, label %agxblen.exit
    i8 0, label %agxbfree.exit
  ]

agxblen.exit:                                     ; preds = %.critedge
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !15 ; 3 uses
  %.not39 = icmp eq i64 %i.cs, 0
  br i1 %.not39, label %bb.ag, label %agxbsizeof.exit.i.i96

agxblen.exit.i94:                                 ; preds = %.critedge
  %i.ct = zext i8 %.val.i89.pre to i64            ; 2 uses
  %i.cu = call noalias ptr @strndup(ptr noundef nonnull readonly %2, i64 noundef %i.ct) #15 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.ad, label %agxblen.exit._crit_edge

bb.ad:                                            ; preds = %agxblen.exit.i94
  %i.cw = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.cx = add nuw nsw i64 %i.ct, 1
  %i.cy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cw, ptr noundef nonnull @.str.7, i64 noundef %i.cx) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

agxbsizeof.exit.i.i96:                            ; preds = %agxblen.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !15
  %.not.i7.i97 = icmp ult i64 %i.cs, %i.da
  br i1 %.not.i7.i97, label %.thread.i103, label %bb.ae

bb.ae:                                            ; preds = %agxbsizeof.exit.i.i96
  call fastcc void @agxbmore(ptr noundef nonnull %2, i64 noundef 1)
  %.val.i15.pre.i.i98 = load i8, ptr %i.cq, align 1, !tbaa !15 ; 2 uses
  %.not.i16.i.i99 = icmp eq i8 %.val.i15.pre.i.i98, -1
  br i1 %.not.i16.i.i99, label %..thread_crit_edge.i101, label %bb.af

..thread_crit_edge.i101:                          ; preds = %bb.ae
  %.pre.i102 = load i64, ptr %i.cr, align 8, !tbaa !15
  br label %.thread.i103

bb.af:                                            ; preds = %bb.ae
  %i.db = zext i8 %.val.i15.pre.i.i98 to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 %i.db
  store i8 0, ptr %i.dc, align 1, !tbaa !15
  br label %agxbputc.exit.i100

.thread.i103:                                     ; preds = %..thread_crit_edge.i101, %agxbsizeof.exit.i.i96
  %i.dd = phi i64 [ %.pre.i102, %..thread_crit_edge.i101 ], [ %i.cs, %agxbsizeof.exit.i.i96 ]
  %i.de = load ptr, ptr %2, align 8, !tbaa !15
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dd
  store i8 0, ptr %i.df, align 1, !tbaa !15
  br label %agxbputc.exit.i100

agxbputc.exit.i100:                               ; preds = %.thread.i103, %bb.af
  %i.dg = load ptr, ptr %2, align 8, !tbaa !15
  br label %agxblen.exit._crit_edge

agxblen.exit._crit_edge:                          ; preds = %agxbputc.exit.i100, %agxblen.exit.i94
  %.0.i95 = phi ptr [ %i.dg, %agxbputc.exit.i100 ], [ %i.cu, %agxblen.exit.i94 ]
  tail call fastcc void @storeline(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %.0.i95, i8 noundef signext 110)
  br label %agxbfree.exit

bb.ag:                                            ; preds = %agxblen.exit
  %.val = load ptr, ptr %2, align 8
  tail call void @free(ptr noundef %.val) #15
  br label %agxbfree.exit

agxbfree.exit:                                    ; preds = %bb.b, %agxblen.exit._crit_edge, %.critedge, %bb.ag
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !21
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
  %i.c = load i64, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.e = add i64 %i.c, 2                          ; 4 uses
  %mul.ov.i = icmp ugt i64 %i.e, 256204778801521550
  br i1 %mul.ov.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.6, i64 noundef %i.e, i64 noundef 72) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = mul i64 %i.c, 72                         ; 2 uses
  %i.i = add i64 %i.h, 72                         ; 2 uses
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
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.7, i64 noundef %i.j) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = icmp ugt i64 %i.j, %i.i
  br i1 %i.p, label %bb.h, label %gv_recalloc.exit

bb.h:                                             ; preds = %bb.g
  %5 = getelementptr i8, ptr %i.l, i64 %i.h
  %i.q = getelementptr i8, ptr %5, i64 72
  %i.r = sub nuw i64 %i.j, %i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 0, i64 %i.r, i1 false)
  br label %gv_recalloc.exit

gv_recalloc.exit:                                 ; preds = %bb.d, %bb.g, %bb.h
  %.0.i.i = phi ptr [ null, %bb.d ], [ %i.l, %bb.h ], [ %i.l, %bb.g ] ; 2 uses
  store ptr %.0.i.i, ptr %i.a, align 8, !tbaa !15
  %i.s = load i64, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.t = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i, i64 %i.s ; 5 uses
  store ptr %2, ptr %i.t, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store i8 %3, ptr %i.u, align 8, !tbaa !25
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %gv_recalloc.exit
  %i.v = load i8, ptr %2, align 1, !tbaa !15
  %.not29 = icmp eq i8 %i.v, 0
  br i1 %.not29, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i8 0, i64 32, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26
  store ptr %i.y, ptr %4, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load double, ptr %i.z, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24
  store double %i.aa, ptr %i.ab, align 8, !tbaa !31
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !32 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !51
  %i.af = call ptr %i.ae(ptr noundef nonnull %i.ad, ptr noundef nonnull %4, i32 noundef 1) #15
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !56
  %i.ah = call { double, double } @textspan_size(ptr noundef %0, ptr noundef nonnull %i.t) #15 ; 2 uses
  %i.ai = extractvalue { double, double } %i.ah, 0
  %i.aj = extractvalue { double, double } %i.ah, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %.pre = load i64, ptr %i.b, align 8, !tbaa !15
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %gv_recalloc.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load double, ptr %i.ak, align 8, !tbaa !30
  %i.am = fmul double %i.al, 1.200000e+00
  %i.an = fptosi double %i.am to i32
  %i.ao = sitofp i32 %i.an to double              ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store double %i.ao, ptr %i.ap, align 8, !tbaa !57
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aq = phi i64 [ %.pre, %bb.j ], [ %i.s, %bb.k ]
  %.sroa.06.0 = phi double [ %i.ai, %bb.j ], [ 0.000000e+00, %bb.k ] ; 2 uses
  %.sroa.6.0 = phi double [ %i.aj, %bb.j ], [ %i.ao, %bb.k ]
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !15
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %i.au = fcmp ogt double %i.at, %.sroa.06.0
  %..sroa.06.0 = select i1 %i.au, double %i.at, double %.sroa.06.0
  store double %..sroa.06.0, ptr %i.as, align 8, !tbaa !58
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !59
  %i.ax = fadd double %.sroa.6.0, %i.aw
  store double %i.ax, ptr %i.av, align 8, !tbaa !59
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
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !17
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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60
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
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !70
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
  store ptr %5, ptr %i.t, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %6, ptr %i.u, align 8, !tbaa !73
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store double %4, ptr %i.v, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %.055, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !74
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 131
  %i.z = load i8, ptr %i.y, align 1, !tbaa !75    ; 2 uses
  %i.aa = zext i8 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !16
  br i1 %3, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call noalias ptr @strdup(ptr noundef nonnull readonly %1) #15 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.h, label %gv_strdup.exit

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.af = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #20
  %i.ag = add i64 %i.af, 1
  %i.ah = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.7, i64 noundef %i.ag) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

gv_strdup.exit:                                   ; preds = %bb.g
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !8
  br i1 %i.f, label %bb.i, label %bb.u

bb.i:                                             ; preds = %gv_strdup.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 106
  store i8 1, ptr %i.ai, align 2, !tbaa !89
  br label %bb.u

bb.j:                                             ; preds = %bb.f
  br i1 %i.f, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call noalias ptr @strdup(ptr noundef nonnull readonly %1) #15 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.l, label %gv_strdup.exit57

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.am = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #20
  %i.an = add i64 %i.am, 1
  %i.ao = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.al, ptr noundef nonnull @.str.7, i64 noundef %i.an) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

gv_strdup.exit57:                                 ; preds = %bb.k
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 106
  store i8 1, ptr %i.ap, align 2, !tbaa !89
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
