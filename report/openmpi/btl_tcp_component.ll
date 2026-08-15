inline.NumInlined: 75
inline.NumDeleted: 24
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@split_and_resolve:bb.a
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.f, !llvm.loop !149

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.z = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.064.lcssa = phi i32 [ 0, %.preheader ], [ %i.z, %._crit_edge.loopexit ]
  %i.aa = icmp eq i32 %.064.lcssa, %i.s
  br i1 %i.aa, label %._crit_edge.thread, label %bb.x

._crit_edge.thread:                               ; preds = %bb.g, %._crit_edge
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_btl_base_framework, i64 76), align 4, !tbaa !108
  %i.ac = call zeroext i1 @opal_output_check_verbosity(i32 noundef 20, i32 noundef %i.ab) #15
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.thread
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_btl_base_framework, i64 76), align 4, !tbaa !108
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.ad, ptr noundef nonnull @.str.36, ptr noundef nonnull %i.l) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.thread
  %i.ae = call i32 @opal_argv_append(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.l) #15 ; 0 uses
  br label %bb.x

bb.j:                                             ; preds = %bb.e
  %i.af = call noalias ptr @strdup(ptr noundef nonnull %i.l) #15 ; 8 uses
  %i.ag = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.l, i32 noundef 47) #17 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr @opal_show_help, align 8, !tbaa !42
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_process_info, i64 272), align 8, !tbaa !43
  %i.ak = call i32 (ptr, ptr, i32, ...) %i.ai(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.33, i32 noundef 1, ptr noundef %1, ptr noundef %i.aj, ptr noundef %i.af, ptr noundef nonnull @.str.37) #15 ; 0 uses
  call void @free(ptr noundef nonnull %i.l) #15
  br label %bb.x

bb.l:                                             ; preds = %bb.j
  store i8 0, ptr %i.ag, align 1, !tbaa !136
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.am = call i64 @__isoc23_strtol(ptr noundef nonnull %i.al, ptr noundef null, i32 noundef 10) #15, !inline_history !150
  %i.an = trunc i64 %i.am to i32                  ; 2 uses
  store i16 2, ptr %3, align 8, !tbaa !122
  %i.ao = call i32 @inet_pton(i32 noundef 2, ptr noundef nonnull %i.l, ptr noundef nonnull %i.k) #15
  call void @free(ptr noundef nonnull %i.l) #15
  %.not76 = icmp eq i32 %i.ao, 1
  br i1 %.not76, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = load ptr, ptr @opal_show_help, align 8, !tbaa !42
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_process_info, i64 272), align 8, !tbaa !43
  %i.ar = call i32 (ptr, ptr, i32, ...) %i.ap(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.33, i32 noundef 1, ptr noundef %1, ptr noundef %i.aq, ptr noundef %i.af, ptr noundef nonnull @.str.38) #15 ; 0 uses
  br label %bb.x

bb.n:                                             ; preds = %bb.l
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_btl_base_framework, i64 76), align 4, !tbaa !108
  %i.at = call zeroext i1 @opal_output_check_verbosity(i32 noundef 20, i32 noundef %i.as) #15
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_btl_base_framework, i64 76), align 4, !tbaa !108
  %i.av = call ptr @opal_net_get_hostname(ptr noundef nonnull %3) #15
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.au, ptr noundef nonnull @.str.39, ptr noundef %1, ptr noundef %i.av, i32 noundef %i.an) #15
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.aw = call i32 @opal_ifbegin() #15            ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, -1
  br i1 %i.ax, label %.lr.ph95, label %._crit_edge96.thread

.lr.ph95:                                         ; preds = %bb.p, %bb.v
  %.06593 = phi i32 [ %.166, %bb.v ], [ 0, %bb.p ] ; 2 uses
  %.06792 = phi i32 [ %i.bq, %bb.v ], [ %i.aw, %bb.p ] ; 3 uses
  %i.ay = call i32 @opal_ifindextoaddr(i32 noundef %.06792, ptr noundef nonnull %4, i32 noundef 128) #15 ; 0 uses
  %i.az = call zeroext i1 @opal_net_samenetwork(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %i.an) #15
  br i1 %i.az, label %bb.q, label %bb.v

bb.q:                                             ; preds = %.lr.ph95
  %i.ba = add nsw i32 %.06593, 1                  ; 2 uses
  %i.bb = call i32 @opal_ifindextoname(i32 noundef %.06792, ptr noundef nonnull %i.c, i32 noundef 32) #15 ; 0 uses
  %i.bc = load i32, ptr %i.a, align 4, !tbaa !52  ; 3 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph85, label %._crit_edge86

.lr.ph85:                                         ; preds = %bb.q
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !144
  %wide.trip.count107 = zext nneg i32 %i.bc to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph85, %bb.s
  %indvars.iv104 = phi i64 [ 0, %.lr.ph85 ], [ %indvars.iv.next105, %bb.s ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv104
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !77
  %i.bh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %i.bg) #17
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %._crit_edge86.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %exitcond108.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count107
  br i1 %exitcond108.not, label %._crit_edge86.thread, label %bb.r, !llvm.loop !151

._crit_edge86.loopexit:                           ; preds = %bb.r
  %i.bj = trunc nuw nsw i64 %indvars.iv104 to i32
  br label %._crit_edge86

._crit_edge86:                                    ; preds = %._crit_edge86.loopexit, %bb.q
  %.1.lcssa = phi i32 [ 0, %bb.q ], [ %i.bj, %._crit_edge86.loopexit ]
  %i.bk = icmp eq i32 %.1.lcssa, %i.bc
  br i1 %i.bk, label %._crit_edge86.thread, label %bb.v

._crit_edge86.thread:                             ; preds = %bb.s, %._crit_edge86
  %i.bl = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_btl_base_framework, i64 76), align 4, !tbaa !108
  %i.bm = call zeroext i1 @opal_output_check_verbosity(i32 noundef 20, i32 noundef %i.bl) #15
  br i1 %i.bm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge86.thread
  %i.bn = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_btl_base_framework, i64 76), align 4, !tbaa !108
  %i.bo = call ptr @opal_net_get_hostname(ptr noundef nonnull %4) #15
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.bn, ptr noundef nonnull @.str.40, ptr noundef %i.bo, ptr noundef nonnull %i.c) #15
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge86.thread
  %i.bp = call i32 @opal_argv_append(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #15 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph95, %bb.u, %._crit_edge86
  %.166 = phi i32 [ %i.ba, %bb.u ], [ %i.ba, %._crit_edge86 ], [ %.06593, %.lr.ph95 ] ; 2 uses
  %i.bq = call i32 @opal_ifnext(i32 noundef %.06792) #15 ; 2 uses
  %i.br = icmp sgt i32 %i.bq, -1
  br i1 %i.br, label %.lr.ph95, label %._crit_edge96, !llvm.loop !152

._crit_edge96:                                    ; preds = %bb.v
  %i.bs = icmp eq i32 %.166, 0
  %i.bt = load i8, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_tcp_component, i64 2172), align 4, !range !68
  %i.bu = trunc nuw i8 %i.bt to i1
  %or.cond = select i1 %2, i1 true, i1 %i.bu
  %or.cond131 = select i1 %i.bs, i1 %or.cond, i1 false
  br i1 %or.cond131, label %bb.w, label %bb.x

._crit_edge96.thread:                             ; preds = %bb.p
  %.old = load i8, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_tcp_component, i64 2172), align 4, !range !68
  %.old130 = trunc nuw i8 %.old to i1
  %or.cond.old = select i1 %2, i1 true, i1 %.old130
  br i1 %or.cond.old, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge96, %._crit_edge96.thread
  %i.bv = load ptr, ptr @opal_show_help, align 8, !tbaa !42
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_process_info, i64 272), align 8, !tbaa !43
  %i.bx = call i32 (ptr, ptr, i32, ...) %i.bv(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.33, i32 noundef 1, ptr noundef %1, ptr noundef %i.bw, ptr noundef %i.af, ptr noundef nonnull @.str.41) #15 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge96, %bb.w, %._crit_edge96.thread, %._crit_edge, %bb.i, %bb.m, %bb.k
  %.sink = phi ptr [ %i.af, %bb.w ], [ %i.l, %._crit_edge ], [ %i.af, %bb.m ], [ %i.af, %bb.k ], [ %i.l, %bb.i ], [ %i.af, %._crit_edge96.thread ], [ %i.af, %._crit_edge96 ]
  call void @free(ptr noundef %.sink) #15
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next110
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !77 ; 2 uses
  %.not = icmp eq ptr %i.bz, null
  br i1 %.not, label %._crit_edge102, label %bb.e, !llvm.loop !153

._crit_edge102:                                   ; preds = %bb.x
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !144 ; 2 uses
  %.not74 = icmp eq ptr %.pre, null
  br i1 %.not74, label %._crit_edge102.thread, label %bb.y

bb.y:                                             ; preds = %._crit_edge102
  %i.ca = load i32, ptr %i.a, align 4, !tbaa !52
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.cb
  store ptr null, ptr %i.cc, align 8, !tbaa !77
  br label %._crit_edge102.thread

._crit_edge102.thread:                            ; preds = %bb.d, %bb.y, %._crit_edge102
  call void @free(ptr noundef nonnull %i.g) #15
  %i.cd = load ptr, ptr %0, align 8, !tbaa !77
  call void @free(ptr noundef %i.cd) #15
  %i.ce = load ptr, ptr %i.b, align 8, !tbaa !144
  %i.cf = call noalias ptr @opal_argv_join(ptr noundef %i.ce, i32 noundef 44) #15
  store ptr %i.cf, ptr %0, align 8, !tbaa !77
  %i.cg = load ptr, ptr %i.b, align 8, !tbaa !144
  br label %bb.z

bb.z:                                             ; preds = %bb.c, %bb.a, %bb.b, %._crit_edge102.thread
  %.0 = phi ptr [ %i.cg, %._crit_edge102.thread ], [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %.0
}

declare i32 @opal_ifnametokindex(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @mca_btl_tcp_create(i32 noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 32), align 8, !tbaa !73 ; 4 uses
  %.not.not109 = icmp eq ptr %i.b, getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 16)
  br i1 %.not.not109, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_tcp_component, i64 776), align 8
  %.fr131 = freeze i32 %i.c
  switch i32 %.fr131, label %.lr.ph.split.split [
    i32 4, label %.lr.ph.split.us.split
    i32 6, label %.lr.ph.split.split.us
  ]

.lr.ph.split.us.split:                            ; preds = %.lr.ph, %bb.c
  %.094110.us = phi ptr [ %i.j, %bb.c ], [ %i.b, %.lr.ph ] ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.094110.us, i64 76
  %i.e = load i16, ptr %i.d, align 4, !tbaa !154
  %i.f = zext i16 %i.e to i32
  %.not97.us = icmp eq i32 %0, %i.f
  br i1 %.not97.us, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.split
  %i.g = getelementptr inbounds nuw i8, ptr %.094110.us, i64 88
  %.sroa.0.0.copyload.us = load i16, ptr %i.g, align 8
  %i.h = icmp eq i16 %.sroa.0.0.copyload.us, 10
  br i1 %i.h, label %.split.us.loopexit15, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.split
  %i.i = getelementptr inbounds nuw i8, ptr %.094110.us, i64 16
  %i.j = load volatile ptr, ptr %i.i, align 8, !tbaa !66 ; 2 uses
  %.not.not.us = icmp eq ptr %i.j, getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 16)
  br i1 %.not.not.us, label %.critedge, label %.lr.ph.split.us.split, !llvm.loop !156

.lr.ph.split.split.us:                            ; preds = %.lr.ph, %bb.e
  %.094110.us113 = phi ptr [ %i.q, %bb.e ], [ %i.b, %.lr.ph ] ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.094110.us113, i64 76
  %i.l = load i16, ptr %i.k, align 4, !tbaa !154
  %i.m = zext i16 %i.l to i32
  %.not97.us114 = icmp eq i32 %0, %i.m
  br i1 %.not97.us114, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split.split.us
  %i.n = getelementptr inbounds nuw i8, ptr %.094110.us113, i64 88
  %.sroa.0.0.copyload.us115 = load i16, ptr %i.n, align 8
  %i.o = icmp eq i16 %.sroa.0.0.copyload.us115, 2
  br i1 %i.o, label %.split.us.loopexit19, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.split.us
  %i.p = getelementptr inbounds nuw i8, ptr %.094110.us113, i64 16
  %i.q = load volatile ptr, ptr %i.p, align 8, !tbaa !66 ; 2 uses
  %.not.not.us118 = icmp eq ptr %i.q, getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 16)
  br i1 %.not.not.us118, label %.critedge, label %.lr.ph.split.split.us, !llvm.loop !156

.lr.ph.split.split:                               ; preds = %.lr.ph, %bb.g
  %.094110 = phi ptr [ %i.w, %bb.g ], [ %i.b, %.lr.ph ] ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.094110, i64 76
  %i.s = load i16, ptr %i.r, align 4, !tbaa !154
  %i.t = zext i16 %i.s to i32
  %.not97 = icmp eq i32 %0, %i.t
  br i1 %.not97, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.split.split
  %i.u = getelementptr inbounds nuw i8, ptr %.094110, i64 88
  %.sroa.0.0.copyload = load i16, ptr %i.u, align 8 ; 2 uses
  switch i16 %.sroa.0.0.copyload, label %bb.g [
    i16 2, label %.split.us.loopexit
    i16 10, label %.split.us.loopexit
  ]

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.split
  %i.v = getelementptr inbounds nuw i8, ptr %.094110, i64 16
  %i.w = load volatile ptr, ptr %i.v, align 8, !tbaa !66 ; 2 uses
  %.not.not = icmp eq ptr %i.w, getelementptr inbounds nuw (i8, ptr @opal_if_list, i64 16)
  br i1 %.not.not, label %.critedge, label %.lr.ph.split.split, !llvm.loop !156

.split.us.loopexit:                               ; preds = %bb.f, %bb.f
  %2 = getelementptr inbounds nuw i8, ptr %.094110, i64 72
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.094110, i64 90
  br label %.split.us

.split.us.loopexit15:                             ; preds = %bb.b
  %3 = getelementptr inbounds nuw i8, ptr %.094110.us, i64 72
  %.sroa.6.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.094110.us, i64 90
  br label %.split.us

.split.us.loopexit19:                             ; preds = %bb.d
  %4 = getelementptr inbounds nuw i8, ptr %.094110.us113, i64 72
  %.sroa.6.0..sroa_idx.us116 = getelementptr inbounds nuw i8, ptr %.094110.us113, i64 90
  br label %.split.us

.split.us:                                        ; preds = %.split.us.loopexit19, %.split.us.loopexit15, %.split.us.loopexit
  %.sroa.6.sroa.0.0.in = phi ptr [ %.sroa.6.0..sroa_idx, %.split.us.loopexit ], [ %.sroa.6.0..sroa_idx.us, %.split.us.loopexit15 ], [ %.sroa.6.0..sroa_idx.us116, %.split.us.loopexit19 ]
  %.us-phi.in = phi ptr [ %2, %.split.us.loopexit ], [ %3, %.split.us.loopexit15 ], [ %4, %.split.us.loopexit19 ]
  %.us-phi111 = phi i16 [ %.sroa.0.0.copyload, %.split.us.loopexit ], [ 10, %.split.us.loopexit15 ], [ 2, %.split.us.loopexit19 ]
  %.us-phi112 = phi ptr [ %.094110, %.split.us.loopexit ], [ %.094110.us, %.split.us.loopexit15 ], [ %.094110.us113, %.split.us.loopexit19 ] ; 4 uses
  %.us-phi = load i32, ptr %.us-phi.in, align 8, !tbaa !157
  %.sroa.6.sroa.0.0 = load <126 x i8>, ptr %.sroa.6.sroa.0.0.in, align 2
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_tcp_component, i64 288), align 16, !tbaa !97
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph128, label %.critedge

.lr.ph128:                                        ; preds = %.split.us
  %i.z = trunc nuw i32 %0 to i16
  %i.aa = getelementptr inbounds nuw i8, ptr %.us-phi112, i64 216 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.us-phi112, i64 80
  %i.ac = getelementptr inbounds nuw i8, ptr %.us-phi112, i64 224
  %i.ad = getelementptr inbounds nuw i8, ptr %.us-phi112, i64 232
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph128, %bb.x
  %.093127 = phi i32 [ 0, %.lr.ph128 ], [ %i.dw, %bb.x ] ; 5 uses
  %i.ae = call noalias dereferenceable_or_null(840) ptr @malloc(i64 noundef 840) #16 ; 16 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @opal_if_t_class, i64 56), align 8, !tbaa !158
  %i.ah = call noalias ptr @malloc(i64 noundef %i.ag) #16 ; 18 uses
  %i.ai = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !52
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_if_t_class, i64 32), align 8, !tbaa !53
  %.not.i = icmp eq i32 %i.ai, %i.aj
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @opal_class_initialize(ptr noundef nonnull @opal_if_t_class) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not9.i = icmp eq ptr %i.ah, null
  br i1 %.not9.i, label %opal_obj_new.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr @opal_if_t_class, ptr %i.ah, align 8, !tbaa !55
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store volatile i32 1, ptr %i.ak, align 8, !tbaa !56
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_if_t_class, i64 40), align 8, !tbaa !57 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !42 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.am, null
  br i1 %.not6.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %i.an = phi ptr [ %i.ap, %.lr.ph.i.i ], [ %i.am, %bb.l ]
  %.07.i.i = phi ptr [ %i.ao, %.lr.ph.i.i ], [ %i.al, %bb.l ]
  call void %i.an(ptr noundef nonnull %i.ah) #15, !inline_history !159
  %i.ao = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !42 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !59

opal_obj_new.exit:                                ; preds = %bb.k
  call void @free(ptr noundef nonnull %i.ae) #15
  br label %.critedge

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(840) %i.ae, ptr noundef nonnull align 8 dereferenceable(840) @mca_btl_tcp_module, i64 840, i1 false)
  %i.aq = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !52
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_list_t_class, i64 32), align 8, !tbaa !53
  %.not = icmp eq i32 %i.aq, %i.ar
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.loopexit
  call void @opal_class_initialize(ptr noundef nonnull @opal_list_t_class) #15
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.loopexit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 768 ; 2 uses
  store ptr @opal_list_t_class, ptr %i.as, align 8, !tbaa !55
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 776
  store volatile i32 1, ptr %i.at, align 8, !tbaa !56
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_list_t_class, i64 40), align 8, !tbaa !57 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %.not6.i = icmp eq ptr %i.av, null
  br i1 %.not6.i, label %opal_obj_run_constructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %i.aw = phi ptr [ %i.ay, %.lr.ph.i ], [ %i.av, %bb.n ]
  %.07.i = phi ptr [ %i.ax, %.lr.ph.i ], [ %i.au, %bb.n ]
  call void %i.aw(ptr noundef nonnull %i.as) #15, !inline_history !58
  %i.ax = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !42 ; 2 uses
  %.not.i100 = icmp eq ptr %i.ay, null
  br i1 %.not.i100, label %opal_obj_run_constructors.exit, label %.lr.ph.i, !llvm.loop !59

opal_obj_run_constructors.exit:                   ; preds = %.lr.ph.i, %bb.n
  %i.az = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !52
  %i.ba = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_mutex_t_class, i64 32), align 8, !tbaa !53
  %.not98 = icmp eq i32 %i.az, %i.ba
  br i1 %.not98, label %bb.p, label %bb.o

bb.o:                                             ; preds = %opal_obj_run_constructors.exit
  call void @opal_class_initialize(ptr noundef nonnull @opal_mutex_t_class) #15
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %opal_obj_run_constructors.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 704 ; 2 uses
  store ptr @opal_mutex_t_class, ptr %i.bb, align 8, !tbaa !55
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ae, i64 712
  store volatile i32 1, ptr %i.bc, align 8, !tbaa !56
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_mutex_t_class, i64 40), align 8, !tbaa !57 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !42 ; 2 uses
  %.not6.i101 = icmp eq ptr %i.be, null
  br i1 %.not6.i101, label %opal_obj_run_constructors.exit105, label %.lr.ph.i102

.lr.ph.i102:                                      ; preds = %bb.p, %.lr.ph.i102
  %i.bf = phi ptr [ %i.bh, %.lr.ph.i102 ], [ %i.be, %bb.p ]
  %.07.i103 = phi ptr [ %i.bg, %.lr.ph.i102 ], [ %i.bd, %bb.p ]
  call void %i.bf(ptr noundef nonnull %i.bb) #15, !inline_history !58
  %i.bg = getelementptr inbounds nuw i8, ptr %.07.i103, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %.not.i104 = icmp eq ptr %i.bh, null
  br i1 %.not.i104, label %opal_obj_run_constructors.exit105, label %.lr.ph.i102, !llvm.loop !59

opal_obj_run_constructors.exit105:                ; preds = %.lr.ph.i102, %bb.p
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_tcp_component, i64 296), align 8, !tbaa !51
  %i.bj = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_tcp_component, i64 284), align 4, !tbaa !49 ; 3 uses
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_tcp_component, i64 284), align 4, !tbaa !49
  %i.bl = zext i32 %i.bj to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bl
  store ptr %i.ae, ptr %i.bm, align 8, !tbaa !120
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ae, i64 560
  store i32 %i.bj, ptr %i.bn, align 8, !tbaa !160
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ae, i64 564 ; 3 uses
  store i16 %i.z, ptr %i.bo, align 4, !tbaa !127
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ae, i64 568 ; 5 uses
  store i16 %.us-phi111, ptr %i.bp, align 8
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.ae, i64 570
  store <126 x i8> %.sroa.6.sroa.0.0, ptr %.sroa.6.0..sroa_idx8, align 2
  %i.bq = load i32, ptr %i.aa, align 8, !tbaa !161
  %i.br = getelementptr inbounds nuw i8, ptr %i.ae, i64 696
  store i32 %i.bq, ptr %i.br, align 8, !tbaa !129
  %i.bs = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.42, ptr noundef nonnull %1) #15 ; 0 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ae, i64 64 ; 8 uses
  %i.bu = call i32 @mca_base_component_var_register(ptr noundef nonnull @mca_btl_tcp_component, ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %i.bt) #15, !inline_history !76 ; 0 uses
  %i.bv = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.43, ptr noundef nonnull %1) #15 ; 0 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ae, i64 60 ; 7 uses
  %i.bx = call i32 @mca_base_component_var_register(ptr noundef nonnull @mca_btl_tcp_component, ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %i.bw) #15, !inline_history !76 ; 0 uses
  %.not99 = icmp ne i32 %.093127, 0               ; 3 uses
  br i1 %.not99, label %bb.q, label %bb.r

bb.q:                                             ; preds = %opal_obj_run_constructors.exit105
  %i.by = load i32, ptr %i.bt, align 8, !tbaa !131
  %i.bz = lshr i32 %i.by, 1
  store i32 %i.bz, ptr %i.bt, align 8, !tbaa !131
  %i.ca = load i32, ptr %i.bw, align 4, !tbaa !162
  %i.cb = shl i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bw, align 4, !tbaa !162
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %opal_obj_run_constructors.exit105
  %i.cc = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.44, ptr noundef nonnull %1, i32 noundef %.093127) #15 ; 0 uses
  %i.cd = call i32 @mca_base_component_var_register(ptr noundef nonnull @mca_btl_tcp_component, ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %i.bt) #15, !inline_history !76 ; 0 uses
  %i.ce = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.45, ptr noundef nonnull %1, i32 noundef %.093127) #15 ; 0 uses
  %i.cf = call i32 @mca_base_component_var_register(ptr noundef nonnull @mca_btl_tcp_component, ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %i.bw) #15, !inline_history !76 ; 0 uses
  %i.cg = load i32, ptr %i.bt, align 8, !tbaa !131
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ci = call i32 @opal_ethtool_get_speed(ptr noundef nonnull %1) #15 ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 0
  %i.ck = select i1 %i.cj, i32 100, i32 %i.ci
  %i.cl = zext i1 %.not99 to i32
  %spec.select = lshr i32 %i.ck, %i.cl
  store i32 %spec.select, ptr %i.bt, align 8, !tbaa !131
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cm = load i32, ptr %i.bw, align 4, !tbaa !162
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %spec.store.select = select i1 %.not99, i32 200, i32 100
  store i32 %spec.store.select, ptr %i.bw, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.co = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  call void @opal_string_copy(ptr noundef nonnull %i.co, ptr noundef nonnull %1, i64 noundef 32) #15
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  store i32 %.us-phi, ptr %i.cp, align 8, !tbaa !157
  %i.cq = load i16, ptr %i.bo, align 4, !tbaa !127
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ah, i64 76
  store i16 %i.cq, ptr %i.cr, align 4, !tbaa !154
  %i.cs = load i16, ptr %i.bp, align 8, !tbaa !163
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ah, i64 78
  store i16 %i.cs, ptr %i.ct, align 2, !tbaa !164
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.cv = load <2 x i32>, ptr %i.ab, align 8, !tbaa !52
  store <2 x i32> %i.cv, ptr %i.cu, align 8, !tbaa !52
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.cw, ptr noundef nonnull align 8 dereferenceable(128) %i.bp, i64 128, i1 false)
  %i.cx = load i32, ptr %i.aa, align 8, !tbaa !161
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ah, i64 216
  store i32 %i.cx, ptr %i.cy, align 8, !tbaa !161
  %i.cz = load i32, ptr %i.bt, align 8, !tbaa !131
  %i.da = getelementptr inbounds nuw i8, ptr %i.ah, i64 220
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !165
  %i.db = getelementptr inbounds nuw i8, ptr %i.ah, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.db, ptr noundef nonnull align 8 dereferenceable(6) %i.ac, i64 6, i1 false)
  %i.dc = load i32, ptr %i.ad, align 8, !tbaa !166
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ah, i64 232
  store i32 %i.dc, ptr %i.dd, align 8, !tbaa !166
  %i.de = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_tcp_component, i64 344), align 8, !tbaa !74
  %i.df = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store volatile ptr %i.de, ptr %i.df, align 8, !tbaa !74
  %i.dg = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_tcp_component, i64 344), align 8, !tbaa !74
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store volatile ptr %i.ah, ptr %i.dh, align 8, !tbaa !66
  %i.di = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store volatile ptr getelementptr inbounds nuw (i8, ptr @mca_btl_tcp_component, i64 320), ptr %i.di, align 8, !tbaa !66
  store volatile ptr %i.ah, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_tcp_component, i64 344), align 8, !tbaa !74
  %i.dj = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_tcp_component, i64 360), align 8, !tbaa !72
  %i.dk = add i64 %i.dj, 1
  store volatile i64 %i.dk, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_tcp_component, i64 360), align 8, !tbaa !72
  %i.dl = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_btl_base_framework, i64 76), align 4, !tbaa !108
  %i.dm = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.dl) #15
  br i1 %i.dm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dn = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_btl_base_framework, i64 76), align 4, !tbaa !108
  %i.do = load i16, ptr %i.bo, align 4, !tbaa !127
  %i.dp = zext i16 %i.do to i32
  %i.dq = call ptr @opal_net_get_hostname(ptr noundef nonnull %i.bp) #15
  %i.dr = load i16, ptr %i.bp, align 8, !tbaa !163
  %i.ds = icmp eq i16 %i.dr, 2
  %i.dt = select i1 %i.ds, ptr @.str.47, ptr @.str.48
  %i.du = load i32, ptr %i.bt, align 8, !tbaa !131
  %i.dv = load i32, ptr %i.bw, align 4, !tbaa !162
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.dn, ptr noundef nonnull @.str.46, ptr noundef nonnull %i.ae, ptr noundef nonnull %1, i32 noundef %i.dp, i32 noundef %.093127, ptr noundef %i.dq, ptr noundef nonnull %i.dt, i32 noundef %i.du, i32 noundef %i.dv) #15
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.dw = add nuw nsw i32 %.093127, 1             ; 2 uses
  %i.dx = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_tcp_component, i64 288), align 16, !tbaa !97
  %i.dy = icmp slt i32 %i.dw, %i.dx
  br i1 %i.dy, label %bb.h, label %.critedge, !llvm.loop !167

.critedge:                                        ; preds = %bb.e, %bb.c, %bb.g, %bb.h, %bb.x, %bb.a, %.split.us, %opal_obj_new.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

declare i32 @opal_ifkindextoname(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare void @opal_argv_free(ptr noundef) local_unnamed_addr #3

declare noalias ptr @opal_argv_split(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

declare zeroext i1 @opal_output_check_verbosity(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @opal_output(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @opal_argv_append(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @inet_pton(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @opal_net_get_hostname(ptr noundef) local_unnamed_addr #3

declare i32 @opal_ifindextoaddr(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i1 @opal_net_samenetwork(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @opal_ifindextoname(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noalias ptr @opal_argv_join(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

declare i32 @opal_ethtool_get_speed(ptr noundef) local_unnamed_addr #3

declare void @opal_string_copy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

declare i32 @mca_btl_base_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #6

declare void @mca_btl_tcp_set_socket_options(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @bind(i32 noundef, ptr, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @getsockname(i32 noundef, ptr, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare ptr @inet_ntop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @listen(i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #6

declare i32 @evthread_use_pthreads() local_unnamed_addr #3

declare ptr @opal_event_base_create() local_unnamed_addr #3

declare i32 @event_base_priority_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pipe(ptr noundef) local_unnamed_addr #6

declare i32 @event_assign(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @mca_btl_tcp_component_event_async_handler(i32 noundef %0, i16 signext %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = call i64 @read(i32 noundef %0, ptr noundef nonnull %i.a, i64 noundef 8) #15
  %i.c = and i64 %i.b, 4294967295
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !116
  store i32 0, ptr %i.f, align 4, !tbaa !52
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.h = tail call i32 @event_add(ptr noundef %i.g, ptr noundef null) #15 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

declare i32 @event_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @mca_btl_tcp_progress_thread_engine(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116  ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !52
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.e = load ptr, ptr @mca_btl_tcp_event_base, align 8, !tbaa !61
  %i.f = tail call i32 @event_base_loop(ptr noundef %i.e, i32 noundef 1) #15 ; 0 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !116  ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !52
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !llvm.loop !168

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.g, %.lr.ph ]
  store i32 -1, ptr %.lcssa, align 4, !tbaa !52
  ret ptr null
}

declare i32 @opal_thread_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @mca_btl_tcp_component_accept_handler(i32 noundef %0, i16 signext %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.sockaddr_in, align 4        ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 16, ptr %i.a, align 4, !tbaa !52
  %i.b = call i32 @accept(i32 noundef %0, ptr nonnull %3, ptr noundef nonnull %i.a) #15 ; 3 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @__errno_location() #18    ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !52
  switch i32 %i.e, label %bb.d [
    i32 4, label %bb.i
    i32 11, label %.loopexit
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @opal_show_help, align 8, !tbaa !42
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_process_info, i64 272), align 8, !tbaa !43
  %i.h = call i32 @getpid() #15
  %i.i = load i32, ptr %i.d, align 4, !tbaa !52   ; 2 uses
  %i.j = call ptr @strerror(i32 noundef %i.i) #15
  %i.k = call i32 (ptr, ptr, i32, ...) %i.f(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.70, i32 noundef 1, ptr noundef %i.g, i32 noundef %i.h, i32 noundef %i.i, ptr noundef %i.j) #15 ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  call void @mca_btl_tcp_set_socket_options(i32 noundef %i.b) #15
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_tcp_event_t_class, i64 56), align 8, !tbaa !158
  %i.m = call noalias ptr @malloc(i64 noundef %i.l) #16 ; 6 uses
  %i.n = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !52
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_tcp_event_t_class, i64 32), align 8, !tbaa !53
  %.not.i = icmp eq i32 %i.n, %i.o
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @opal_class_initialize(ptr noundef nonnull @mca_btl_tcp_event_t_class) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
end_hunk_0
begin_hunk_1_@mca_btl_tcp_proc_lookup
declare ptr @mca_btl_tcp_proc_lookup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getpeername(i32 noundef, ptr, ptr noundef) local_unnamed_addr #6

declare void @mca_btl_tcp_proc_accept(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @mca_base_component_to_string(ptr noundef) local_unnamed_addr #3

declare i32 @PMIx_Put(i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 744}
!9 = !{!"mca_btl_tcp_component_t", !10, i64 0, !5, i64 280, !5, i64 284, !5, i64 288, !14, i64 296, !16, i64 304, !5, i64 368, !5, i64 372, !5, i64 376, !5, i64 380, !22, i64 384, !26, i64 480, !16, i64 544, !27, i64 608, !5, i64 736, !32, i64 740, !5, i64 744, !5, i64 748, !35, i64 752, !35, i64 760, !5, i64 768, !5, i64 772, !5, i64 776, !36, i64 784, !36, i64 1136, !36, i64 1488, !5, i64 1840, !27, i64 1848, !26, i64 1976, !26, i64 2040, !26, i64 2104, !5, i64 2168, !41, i64 2172}
!10 = !{!"mca_btl_base_component_3_0_0_t", !11, i64 0, !13, i64 224, !12, i64 264, !12, i64 272}
!11 = !{!"mca_base_component_2_1_0_t", !5, i64 0, !5, i64 4, !5, i64 8, !6, i64 12, !5, i64 28, !5, i64 32, !5, i64 36, !6, i64 40, !5, i64 72, !5, i64 76, !5, i64 80, !6, i64 84, !5, i64 148, !5, i64 152, !5, i64 156, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !5, i64 192, !6, i64 196}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"mca_base_component_data_2_0_0_t", !5, i64 0, !6, i64 4}
!14 = !{!"p2 _ZTS20mca_btl_tcp_module_t", !15, i64 0}
!15 = !{!"any p2 pointer", !12, i64 0}
!16 = !{!"opal_list_t", !17, i64 0, !19, i64 16, !21, i64 56}
!17 = !{!"opal_object_t", !18, i64 0, !5, i64 8}
!18 = !{!"p1 _ZTS12opal_class_t", !12, i64 0}
!19 = !{!"opal_list_item_t", !17, i64 0, !20, i64 16, !20, i64 24, !5, i64 32}
!20 = !{!"p1 _ZTS16opal_list_item_t", !12, i64 0}
!21 = !{!"long", !6, i64 0}
!22 = !{!"opal_proc_table_t", !23, i64 0, !21, i64 72, !21, i64 80, !21, i64 88}
!23 = !{!"opal_hash_table_t", !17, i64 0, !24, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !25, i64 64}
!24 = !{!"p1 _ZTS19opal_hash_element_t", !12, i64 0}
!25 = !{!"p1 _ZTS24opal_hash_type_methods_t", !12, i64 0}
!26 = !{!"opal_mutex_t", !17, i64 0, !6, i64 16, !5, i64 56}
!27 = !{!"event", !28, i64 0, !6, i64 40, !5, i64 56, !33, i64 64, !6, i64 72, !32, i64 104, !32, i64 106, !34, i64 112}
!28 = !{!"event_callback", !29, i64 0, !32, i64 16, !6, i64 18, !6, i64 19, !6, i64 24, !12, i64 32}
!29 = !{!"", !30, i64 0, !31, i64 8}
!30 = !{!"p1 _ZTS14event_callback", !12, i64 0}
!31 = !{!"p2 _ZTS14event_callback", !15, i64 0}
!32 = !{!"short", !6, i64 0}
!33 = !{!"p1 _ZTS10event_base", !12, i64 0}
!34 = !{!"timeval", !21, i64 0, !21, i64 8}
!35 = !{!"p1 omnipotent char", !12, i64 0}
!36 = !{!"opal_free_list_t", !37, i64 0, !21, i64 80, !21, i64 88, !21, i64 96, !21, i64 104, !21, i64 112, !21, i64 120, !21, i64 128, !21, i64 136, !18, i64 144, !38, i64 152, !39, i64 160, !26, i64 168, !40, i64 232, !16, i64 256, !5, i64 320, !12, i64 328, !12, i64 336}
!37 = !{!"opal_lifo_t", !17, i64 0, !6, i64 16, !19, i64 32}
!38 = !{!"p1 _ZTS23mca_mpool_base_module_t", !12, i64 0}
!39 = !{!"p1 _ZTS24mca_rcache_base_module_t", !12, i64 0}
!40 = !{!"opal_condition_t", !17, i64 0, !5, i64 16, !5, i64 20}
!41 = !{!"_Bool", !6, i64 0}
!42 = !{!12, !12, i64 0}
!43 = !{!44, !35, i64 272}
!44 = !{!"opal_process_info_t", !45, i64 0, !46, i64 8, !41, i64 268, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !5, i64 304, !32, i64 308, !32, i64 310, !32, i64 312, !35, i64 320, !35, i64 328, !5, i64 336, !5, i64 340, !5, i64 344, !5, i64 348, !35, i64 352, !35, i64 360, !35, i64 368, !5, i64 376, !35, i64 384, !5, i64 392, !41, i64 396, !35, i64 400, !41, i64 408}
!45 = !{!"", !5, i64 0, !5, i64 4}
!46 = !{!"pmix_proc", !6, i64 0, !5, i64 256}
!47 = distinct !{null}
!48 = !{!9, !5, i64 736}
!49 = !{!9, !5, i64 284}
!50 = !{!9, !5, i64 280}
!51 = !{!9, !14, i64 296}
!52 = !{!5, !5, i64 0}
!53 = !{!54, !5, i64 32}
!54 = !{!"opal_class_t", !35, i64 0, !18, i64 8, !12, i64 16, !12, i64 24, !5, i64 32, !5, i64 36, !15, i64 40, !15, i64 48, !21, i64 56}
!55 = !{!17, !18, i64 0}
!56 = !{!17, !5, i64 8}
!57 = !{!54, !15, i64 40}
!58 = distinct !{null}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!33, !33, i64 0}
!62 = !{!54, !15, i64 48}
!63 = distinct !{null}
!64 = distinct !{!64, !60}
!65 = !{!9, !20, i64 576}
!66 = !{!19, !20, i64 16}
!67 = !{!41, !41, i64 0}
!68 = !{i8 0, i8 2}
!69 = !{}
!70 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!71 = distinct !{!71, !60}
!72 = !{!16, !21, i64 56}
!73 = !{!16, !20, i64 32}
!74 = !{!19, !20, i64 24}
!75 = distinct !{!75, !60}
!76 = distinct !{null}
!77 = !{!35, !35, i64 0}
!78 = distinct !{null}
!79 = distinct !{null}
!80 = !{!9, !41, i64 2172}
!81 = !{!82, !21, i64 8}
!82 = !{!"mca_btl_tcp_module_t", !83, i64 0, !5, i64 560, !32, i64 564, !85, i64 568, !5, i64 696, !26, i64 704, !16, i64 768, !12, i64 832}
!83 = !{!"mca_btl_base_module_t", !84, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !21, i64 80, !21, i64 88, !21, i64 96, !21, i64 104, !21, i64 112, !21, i64 120, !21, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !38, i64 272, !12, i64 280, !21, i64 288, !12, i64 296, !6, i64 304}
!84 = !{!"p1 _ZTS30mca_btl_base_component_3_0_0_t", !12, i64 0}
!85 = !{!"sockaddr_storage", !32, i64 0, !6, i64 2, !21, i64 120}
!86 = !{!82, !21, i64 16}
!87 = !{!82, !21, i64 24}
!88 = !{!82, !21, i64 32}
!89 = !{!82, !21, i64 40}
!90 = !{!82, !21, i64 48}
!91 = !{!9, !5, i64 368}
!92 = !{!9, !5, i64 372}
!93 = !{!9, !5, i64 376}
!94 = distinct !{null}
!95 = distinct !{!95, !60}
!96 = distinct !{!96, !60}
!97 = !{!9, !5, i64 288}
!98 = distinct !{!98, !60}
!99 = distinct !{!99, !60}
!100 = distinct !{null}
!101 = !{!102, !32, i64 0}
!102 = !{!"sockaddr_in", !32, i64 0, !32, i64 2, !103, i64 4, !6, i64 8}
!103 = !{!"in_addr", !5, i64 0}
!104 = !{!102, !5, i64 4}
!105 = !{!9, !5, i64 748}
!106 = distinct !{!106, !60}
!107 = !{!102, !32, i64 2}
!108 = !{!109, !5, i64 76}
!109 = !{!"mca_base_framework_t", !35, i64 0, !35, i64 8, !35, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !5, i64 48, !5, i64 52, !110, i64 56, !35, i64 64, !5, i64 72, !5, i64 76, !16, i64 80, !16, i64 144}
!110 = !{!"p2 _ZTS26mca_base_component_2_1_0_t", !15, i64 0}
!111 = !{!9, !32, i64 740}
!112 = !{!9, !5, i64 1840}
!113 = distinct !{null, null}
!114 = !{!115, !12, i64 16}
!115 = !{!"opal_thread_t", !17, i64 0, !12, i64 16, !12, i64 24, !21, i64 32}
!116 = !{!115, !12, i64 24}
!117 = !{!118, !118, i64 0}
!118 = !{!"p1 _ZTS5event", !12, i64 0}
!119 = distinct !{null}
!120 = !{!121, !121, i64 0}
!121 = !{!"p1 _ZTS20mca_btl_tcp_module_t", !12, i64 0}
!122 = !{!123, !32, i64 0}
!123 = !{!"sockaddr", !32, i64 0, !6, i64 2}
!124 = !{!125, !32, i64 28}
!125 = !{!"mca_btl_tcp_modex_addr_t", !6, i64 0, !5, i64 16, !5, i64 20, !5, i64 24, !32, i64 28, !6, i64 30, !6, i64 31}
!126 = !{!125, !6, i64 30}
!127 = !{!82, !32, i64 564}
!128 = !{!125, !5, i64 16}
!129 = !{!82, !5, i64 696}
!130 = !{!125, !5, i64 20}
!131 = !{!82, !5, i64 64}
!132 = !{!125, !5, i64 24}
!133 = distinct !{!133, !60}
!134 = !{!135, !32, i64 0}
!135 = !{!"pmix_value", !32, i64 0, !6, i64 8}
!136 = !{!6, !6, i64 0}
!137 = !{!82, !5, i64 68}
!138 = distinct !{!138, !60}
!139 = distinct !{!139, !140}
!140 = !{!"llvm.loop.unroll.disable"}
!141 = distinct !{!141, !60}
!142 = distinct !{!142, !140}
!143 = distinct !{!143, !60}
!144 = !{!145, !145, i64 0}
!145 = !{!"p2 omnipotent char", !15, i64 0}
!146 = !{!147, !147, i64 0}
!147 = !{!"p1 short", !12, i64 0}
!148 = !{!32, !32, i64 0}
!149 = distinct !{!149, !60}
!150 = distinct !{null}
!151 = distinct !{!151, !60}
!152 = distinct !{!152, !60}
!153 = distinct !{!153, !60}
!154 = !{!155, !32, i64 76}
!155 = !{!"opal_if_t", !19, i64 0, !6, i64 40, !5, i64 72, !32, i64 76, !32, i64 78, !5, i64 80, !5, i64 84, !85, i64 88, !5, i64 216, !5, i64 220, !6, i64 224, !5, i64 232}
!156 = distinct !{!156, !60}
!157 = !{!155, !5, i64 72}
!158 = !{!54, !21, i64 56}
!159 = distinct !{null, null}
!160 = !{!82, !5, i64 560}
!161 = !{!155, !5, i64 216}
!162 = !{!82, !5, i64 60}
!163 = !{!82, !32, i64 568}
!164 = !{!155, !32, i64 78}
!165 = !{!155, !5, i64 220}
!166 = !{!155, !5, i64 232}
!167 = distinct !{!167, !60}
!168 = distinct !{!168, !60}
!169 = !{!34, !21, i64 0}
!170 = !{!34, !21, i64 8}
!171 = !{!172, !173, i64 40}
!172 = !{!"mca_btl_tcp_proc_t", !19, i64 0, !173, i64 40, !174, i64 48, !21, i64 56, !175, i64 64, !21, i64 72, !23, i64 80, !26, i64 152}
!173 = !{!"p1 _ZTS11opal_proc_t", !12, i64 0}
!174 = !{!"p1 _ZTS18mca_btl_tcp_addr_t", !12, i64 0}
!175 = !{!"p2 _ZTS23mca_btl_base_endpoint_t", !15, i64 0}
end_hunk_1
