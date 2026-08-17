inline.NumInlined: 59
inline.NumDeleted: 10
begin_hunk_0_@tryfile:bb.a
  %i.i = phi ptr [ %i.k, %.lr.ph.i ], [ %i.h, %bb.c ]
  %.07.i = phi ptr [ %i.j, %.lr.ph.i ], [ %i.g, %bb.c ]
  call void %i.i(ptr noundef nonnull %6) #14, !inline_history !41
  %i.j = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40   ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %pmix_obj_run_constructors.exit, label %.lr.ph.i, !llvm.loop !42

pmix_obj_run_constructors.exit:                   ; preds = %.lr.ph.i, %bb.c
  %i.l = call i32 @pmix_ptl_base_parse_uri_file(ptr noundef %5, i1 noundef zeroext %4, ptr noundef nonnull %6) #14 ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.s

bb.d:                                             ; preds = %pmix_obj_run_constructors.exit
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 264 ; 5 uses
  %i.o = load volatile i64, ptr %i.n, align 8, !tbaa !80
  switch i64 %i.o, label %bb.e [
    i64 0, label %check_connections.exit
    i64 1, label %..loopexit_crit_edge
  ]

..loopexit_crit_edge:                             ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 240
  %.val.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !84
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 240
  %.val.i = load ptr, ptr %i.p, align 8, !tbaa !84 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 2 uses
  %.not17.i = icmp eq ptr %.val.i, %i.q
  br i1 %.not17.i, label %.loopexit, label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i, i64 168
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i55
  %.01218.i = phi ptr [ %.val.i, %.lr.ph.i55 ], [ %.012.i, %bb.i ] ; 3 uses
  %i.s = icmp eq ptr %.01218.i, %.val.i
  br i1 %i.s, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.01218.i, i64 168
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !97
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !97
  %i.w = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(1) %i.v) #16
  %.not15.i = icmp eq i32 %i.w, 0
  br i1 %.not15.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 1) #14 ; 0 uses
  br label %check_connections.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.01218.i, i64 120
  %.012.i = load ptr, ptr %i.y, align 8, !tbaa !79 ; 2 uses
  %.not.i56 = icmp eq ptr %.012.i, %i.q
  br i1 %.not.i56, label %.loopexit, label %bb.f, !llvm.loop !99

check_connections.exit:                           ; preds = %bb.d, %bb.h
  %.0.i = phi i32 [ -46, %bb.d ], [ -25, %bb.h ]  ; 2 uses
  %i.z = load volatile i64, ptr %i.n, align 8, !tbaa !80
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %check_connections.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 240 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.o
  %i.ac = load volatile i64, ptr %i.n, align 8, !tbaa !80
  %i.ad = add i64 %i.ac, -1
  store volatile i64 %i.ad, ptr %i.n, align 8, !tbaa !80
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !84 ; 11 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %i.ag = load volatile ptr, ptr %i.af, align 8, !tbaa !78
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 120 ; 2 uses
  %i.ai = load volatile ptr, ptr %i.ah, align 8, !tbaa !79
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  store volatile ptr %i.ag, ptr %i.aj, align 8, !tbaa !78
  %i.ak = load volatile ptr, ptr %i.ah, align 8, !tbaa !79
  store ptr %i.ak, ptr %i.ab, align 8, !tbaa !84
  %i.al = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ae) #14
  %i.am = icmp eq i32 %i.al, 35
  br i1 %i.am, label %bb.k, label %pmix_obj_update.exit54

bb.k:                                             ; preds = %bb.j
  %i.an = tail call ptr @__errno_location() #15
  store i32 35, ptr %i.an, align 4, !tbaa !8
  call void @perror(ptr noundef nonnull @.str.52) #18
  call void @abort() #19
  unreachable

pmix_obj_update.exit54:                           ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 48 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !38
  %i.aq = add nsw i32 %i.ap, -1                   ; 2 uses
  store i32 %i.aq, ptr %i.ao, align 8, !tbaa !38
  %i.ar = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ae) #14 ; 0 uses
  %i.as = icmp eq i32 %i.aq, 0
  br i1 %i.as, label %bb.l, label %bb.o

bb.l:                                             ; preds = %pmix_obj_update.exit54
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !37
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !85 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !40 ; 2 uses
  %.not6.i58 = icmp eq ptr %i.ax, null
  br i1 %.not6.i58, label %pmix_obj_run_destructors.exit, label %.lr.ph.i59

.lr.ph.i59:                                       ; preds = %bb.l, %.lr.ph.i59
  %i.ay = phi ptr [ %i.ba, %.lr.ph.i59 ], [ %i.ax, %bb.l ]
  %.07.i60 = phi ptr [ %i.az, %.lr.ph.i59 ], [ %i.aw, %bb.l ]
  call void %i.ay(ptr noundef nonnull %i.ae) #14, !inline_history !86
  %i.az = getelementptr inbounds nuw i8, ptr %.07.i60, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !40 ; 2 uses
  %.not.i61 = icmp eq ptr %i.ba, null
  br i1 %.not.i61, label %pmix_obj_run_destructors.exit, label %.lr.ph.i59, !llvm.loop !87

pmix_obj_run_destructors.exit:                    ; preds = %.lr.ph.i59, %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !88 ; 2 uses
  %.not53 = icmp eq ptr %i.bc, null
  br i1 %.not53, label %bb.n, label %bb.m

bb.m:                                             ; preds = %pmix_obj_run_destructors.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  call void %i.bc(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.ae) #14, !inline_history !89
  br label %bb.o

bb.n:                                             ; preds = %pmix_obj_run_destructors.exit
  call void @free(ptr noundef nonnull %i.ae) #14
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %pmix_obj_update.exit54
  %i.be = load volatile i64, ptr %i.n, align 8, !tbaa !80
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %._crit_edge, label %bb.j, !llvm.loop !100

._crit_edge:                                      ; preds = %bb.o, %check_connections.exit
  %i.bg = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !85 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !40 ; 2 uses
  %.not6.i62 = icmp eq ptr %i.bj, null
  br i1 %.not6.i62, label %pmix_obj_run_destructors.exit66, label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %._crit_edge, %.lr.ph.i63
  %i.bk = phi ptr [ %i.bm, %.lr.ph.i63 ], [ %i.bj, %._crit_edge ]
  %.07.i64 = phi ptr [ %i.bl, %.lr.ph.i63 ], [ %i.bi, %._crit_edge ]
  call void %i.bk(ptr noundef nonnull %6) #14, !inline_history !86
  %i.bl = getelementptr inbounds nuw i8, ptr %.07.i64, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !40 ; 2 uses
  %.not.i65 = icmp eq ptr %i.bm, null
  br i1 %.not.i65, label %pmix_obj_run_destructors.exit66, label %.lr.ph.i63, !llvm.loop !87

.loopexit:                                        ; preds = %bb.i, %..loopexit_crit_edge, %bb.e
  %.val = phi ptr [ %.val.pre, %..loopexit_crit_edge ], [ %.val.i, %bb.e ], [ %.val.i, %bb.i ] ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.val, i64 152 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !101
  store ptr %i.bo, ptr %1, align 8, !tbaa !32
  store ptr null, ptr %i.bn, align 8, !tbaa !101
  %i.bp = getelementptr inbounds nuw i8, ptr %.val, i64 160
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !102
  store i32 %i.bq, ptr %2, align 4, !tbaa !8
  %i.br = getelementptr inbounds nuw i8, ptr %.val, i64 168 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !97
  store ptr %i.bs, ptr %3, align 8, !tbaa !32
  store ptr null, ptr %i.br, align 8, !tbaa !97
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i16 2, ptr %i.bt, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.bu = getelementptr inbounds nuw i8, ptr %.val, i64 176
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !103 ; 3 uses
  %.not49 = icmp eq ptr %i.bv, null
  br i1 %.not49, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !43
  %i.bx = icmp eq i8 %i.bw, 118
  %.sink.idx = zext i1 %i.bx to i64
  %.sink = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sink.idx
  %i.by = call i64 @__isoc23_strtoul(ptr noundef nonnull %.sink, ptr noundef nonnull %i.a, i32 noundef 10) #14
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1 ; 2 uses
  store ptr %i.ca, ptr %i.a, align 8, !tbaa !32
  %i.cb = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.ca, ptr noundef nonnull %i.a, i32 noundef 10) #14
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 1 ; 2 uses
  store ptr %i.cd, ptr %i.a, align 8, !tbaa !32
  %i.ce = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.cd, ptr noundef null, i32 noundef 10) #14
  %i.cf = trunc i64 %i.by to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i8 %i.cf, ptr %i.cg, align 4, !tbaa !104
  %i.ch = trunc i64 %i.cb to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 141
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !105
  %i.cj = trunc i64 %i.ce to i8
  br label %bb.r

bb.q:                                             ; preds = %.loopexit
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i8 2, ptr %i.ck, align 4, !tbaa !104
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sink104 = phi i64 [ 141, %bb.q ], [ 142, %bb.p ]
  %.sink102 = phi i8 [ 0, %bb.q ], [ %i.cj, %bb.p ]
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink104
  store i8 %.sink102, ptr %7, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.s

bb.s:                                             ; preds = %pmix_obj_run_constructors.exit, %bb.r
  %.041 = phi i32 [ 0, %bb.r ], [ %i.l, %pmix_obj_run_constructors.exit ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 264 ; 4 uses
  %i.cm = load volatile i64, ptr %i.cl, align 8, !tbaa !80
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %._crit_edge88, label %.lr.ph87

.lr.ph87:                                         ; preds = %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 240 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph87, %bb.y
  %i.cp = load volatile i64, ptr %i.cl, align 8, !tbaa !80
  %i.cq = add i64 %i.cp, -1
  store volatile i64 %i.cq, ptr %i.cl, align 8, !tbaa !80
  %i.cr = load ptr, ptr %i.co, align 8, !tbaa !84 ; 11 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 128
  %i.ct = load volatile ptr, ptr %i.cs, align 8, !tbaa !78
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 120 ; 2 uses
  %i.cv = load volatile ptr, ptr %i.cu, align 8, !tbaa !79
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 128
  store volatile ptr %i.ct, ptr %i.cw, align 8, !tbaa !78
  %i.cx = load volatile ptr, ptr %i.cu, align 8, !tbaa !79
  store ptr %i.cx, ptr %i.co, align 8, !tbaa !84
  %i.cy = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.cr) #14
  %i.cz = icmp eq i32 %i.cy, 35
  br i1 %i.cz, label %bb.u, label %pmix_obj_update.exit

bb.u:                                             ; preds = %bb.t
  %i.da = tail call ptr @__errno_location() #15
  store i32 35, ptr %i.da, align 4, !tbaa !8
  call void @perror(ptr noundef nonnull @.str.52) #18
  call void @abort() #19
  unreachable

pmix_obj_update.exit:                             ; preds = %bb.t
  %i.db = getelementptr inbounds nuw i8, ptr %i.cr, i64 48 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !38
  %i.dd = add nsw i32 %i.dc, -1                   ; 2 uses
  store i32 %i.dd, ptr %i.db, align 8, !tbaa !38
  %i.de = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cr) #14 ; 0 uses
  %i.df = icmp eq i32 %i.dd, 0
  br i1 %i.df, label %bb.v, label %bb.y

bb.v:                                             ; preds = %pmix_obj_update.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !37
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !85 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !40 ; 2 uses
  %.not6.i69 = icmp eq ptr %i.dk, null
  br i1 %.not6.i69, label %pmix_obj_run_destructors.exit73, label %.lr.ph.i70

.lr.ph.i70:                                       ; preds = %bb.v, %.lr.ph.i70
  %i.dl = phi ptr [ %i.dn, %.lr.ph.i70 ], [ %i.dk, %bb.v ]
  %.07.i71 = phi ptr [ %i.dm, %.lr.ph.i70 ], [ %i.dj, %bb.v ]
  call void %i.dl(ptr noundef nonnull %i.cr) #14, !inline_history !86
  %i.dm = getelementptr inbounds nuw i8, ptr %.07.i71, i64 8 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !40 ; 2 uses
  %.not.i72 = icmp eq ptr %i.dn, null
  br i1 %.not.i72, label %pmix_obj_run_destructors.exit73, label %.lr.ph.i70, !llvm.loop !87

pmix_obj_run_destructors.exit73:                  ; preds = %.lr.ph.i70, %bb.v
  %i.do = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !88 ; 2 uses
  %.not51 = icmp eq ptr %i.dp, null
  br i1 %.not51, label %bb.x, label %bb.w

bb.w:                                             ; preds = %pmix_obj_run_destructors.exit73
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  call void %i.dp(ptr noundef nonnull %i.dq, ptr noundef nonnull %i.cr) #14, !inline_history !89
  br label %bb.y

bb.x:                                             ; preds = %pmix_obj_run_destructors.exit73
  call void @free(ptr noundef nonnull %i.cr) #14
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %pmix_obj_update.exit
  %i.dr = load volatile i64, ptr %i.cl, align 8, !tbaa !80
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %._crit_edge88, label %bb.t, !llvm.loop !106

._crit_edge88:                                    ; preds = %bb.y, %bb.s
  %i.dt = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 48
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !85 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !40 ; 2 uses
  %.not6.i74 = icmp eq ptr %i.dw, null
  br i1 %.not6.i74, label %pmix_obj_run_destructors.exit66, label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %._crit_edge88, %.lr.ph.i75
  %i.dx = phi ptr [ %i.dz, %.lr.ph.i75 ], [ %i.dw, %._crit_edge88 ]
  %.07.i76 = phi ptr [ %i.dy, %.lr.ph.i75 ], [ %i.dv, %._crit_edge88 ]
  call void %i.dx(ptr noundef nonnull %6) #14, !inline_history !86
  %i.dy = getelementptr inbounds nuw i8, ptr %.07.i76, i64 8 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !40 ; 2 uses
  %.not.i77 = icmp eq ptr %i.dz, null
  br i1 %.not.i77, label %pmix_obj_run_destructors.exit66, label %.lr.ph.i75, !llvm.loop !87

pmix_obj_run_destructors.exit66:                  ; preds = %.lr.ph.i63, %.lr.ph.i75, %._crit_edge88, %._crit_edge
  %.0 = phi i32 [ %.041, %.lr.ph.i75 ], [ %.0.i, %._crit_edge ], [ %.041, %._crit_edge88 ], [ %.0.i, %.lr.ph.i63 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @__isoc23_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @asprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @trysearch(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i1 noundef zeroext %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.pmix_list_t, align 8        ; 17 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.b = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !8
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 32), align 8, !tbaa !35
  %.not = icmp eq i32 %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @pmix_class_initialize(ptr noundef nonnull @pmix_list_t_class) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 4 uses
  store ptr @pmix_list_t_class, ptr %i.d, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i32 1, ptr %i.e, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, i8 0, i64 64, i1 false)
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 40), align 8, !tbaa !39 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40   ; 2 uses
  %.not6.i = icmp eq ptr %i.h, null
  br i1 %.not6.i, label %pmix_obj_run_constructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.i = phi ptr [ %i.k, %.lr.ph.i ], [ %i.h, %bb.c ]
  %.07.i = phi ptr [ %i.j, %.lr.ph.i ], [ %i.g, %bb.c ]
  call void %i.i(ptr noundef nonnull %8) #14, !inline_history !41
  %i.j = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40   ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %pmix_obj_run_constructors.exit, label %.lr.ph.i, !llvm.loop !42

pmix_obj_run_constructors.exit:                   ; preds = %.lr.ph.i, %bb.c
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_ptl_base, i64 912), align 8, !tbaa !94
  %i.m = call i32 @pmix_ptl_base_df_search(ptr noundef %i.l, ptr noundef %4, ptr noundef %5, i64 noundef %6, i1 noundef zeroext %7, ptr noundef nonnull %8) #14 ; 3 uses
  %i.n = icmp eq i32 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 264 ; 13 uses
  %i.p = load volatile i64, ptr %i.o, align 8, !tbaa !80 ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.x

bb.d:                                             ; preds = %pmix_obj_run_constructors.exit
  switch i64 %i.p, label %bb.e [
    i64 0, label %check_connections.exit
    i64 1, label %..loopexit_crit_edge
  ]

..loopexit_crit_edge:                             ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 240
  %.val.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !84
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 240
  %.val.i = load ptr, ptr %i.q, align 8, !tbaa !84 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 120 ; 2 uses
  %.not17.i = icmp eq ptr %.val.i, %i.r
  br i1 %.not17.i, label %.loopexit, label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i, i64 168
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i68
  %.01218.i = phi ptr [ %.val.i, %.lr.ph.i68 ], [ %.012.i, %bb.i ] ; 3 uses
  %i.t = icmp eq ptr %.01218.i, %.val.i
  br i1 %i.t, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.01218.i, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !97
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !97
  %i.x = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull dereferenceable(1) %i.w) #16
  %.not15.i = icmp eq i32 %i.x, 0
  br i1 %.not15.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 1) #14 ; 0 uses
  br label %check_connections.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.01218.i, i64 120
  %.012.i = load ptr, ptr %i.z, align 8, !tbaa !79 ; 2 uses
  %.not.i69 = icmp eq ptr %.012.i, %i.r
  br i1 %.not.i69, label %.loopexit, label %bb.f, !llvm.loop !99

check_connections.exit:                           ; preds = %bb.d, %bb.h
  %.0.i = phi i32 [ -46, %bb.d ], [ -25, %bb.h ]  ; 2 uses
  %i.aa = load volatile i64, ptr %i.o, align 8, !tbaa !80
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %._crit_edge115, label %.lr.ph114

.lr.ph114:                                        ; preds = %check_connections.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 240 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph114, %bb.o
  %i.ad = load volatile i64, ptr %i.o, align 8, !tbaa !80
  %i.ae = add i64 %i.ad, -1
  store volatile i64 %i.ae, ptr %i.o, align 8, !tbaa !80
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !84 ; 11 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  %i.ah = load volatile ptr, ptr %i.ag, align 8, !tbaa !78
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 120 ; 2 uses
  %i.aj = load volatile ptr, ptr %i.ai, align 8, !tbaa !79
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 128
  store volatile ptr %i.ah, ptr %i.ak, align 8, !tbaa !78
  %i.al = load volatile ptr, ptr %i.ai, align 8, !tbaa !79
  store ptr %i.al, ptr %i.ac, align 8, !tbaa !84
  %i.am = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.af) #14
  %i.an = icmp eq i32 %i.am, 35
  br i1 %i.an, label %bb.k, label %pmix_obj_update.exit67

bb.k:                                             ; preds = %bb.j
  %i.ao = tail call ptr @__errno_location() #15
  store i32 35, ptr %i.ao, align 4, !tbaa !8
  call void @perror(ptr noundef nonnull @.str.52) #18
  call void @abort() #19
  unreachable

pmix_obj_update.exit67:                           ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 48 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !38
  %i.ar = add nsw i32 %i.aq, -1                   ; 2 uses
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !38
  %i.as = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.af) #14 ; 0 uses
  %i.at = icmp eq i32 %i.ar, 0
  br i1 %i.at, label %bb.l, label %bb.o

bb.l:                                             ; preds = %pmix_obj_update.exit67
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !37
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !85 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !40 ; 2 uses
  %.not6.i71 = icmp eq ptr %i.ay, null
  br i1 %.not6.i71, label %pmix_obj_run_destructors.exit, label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %bb.l, %.lr.ph.i72
  %i.az = phi ptr [ %i.bb, %.lr.ph.i72 ], [ %i.ay, %bb.l ]
  %.07.i73 = phi ptr [ %i.ba, %.lr.ph.i72 ], [ %i.ax, %bb.l ]
  call void %i.az(ptr noundef nonnull %i.af) #14, !inline_history !86
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i73, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !40 ; 2 uses
  %.not.i74 = icmp eq ptr %i.bb, null
  br i1 %.not.i74, label %pmix_obj_run_destructors.exit, label %.lr.ph.i72, !llvm.loop !87

pmix_obj_run_destructors.exit:                    ; preds = %.lr.ph.i72, %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !88 ; 2 uses
  %.not65 = icmp eq ptr %i.bd, null
  br i1 %.not65, label %bb.n, label %bb.m

bb.m:                                             ; preds = %pmix_obj_run_destructors.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  call void %i.bd(ptr noundef nonnull %i.be, ptr noundef nonnull %i.af) #14, !inline_history !89
  br label %bb.o

bb.n:                                             ; preds = %pmix_obj_run_destructors.exit
  call void @free(ptr noundef nonnull %i.af) #14
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %pmix_obj_update.exit67
  %i.bf = load volatile i64, ptr %i.o, align 8, !tbaa !80
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %._crit_edge115, label %bb.j, !llvm.loop !107

._crit_edge115:                                   ; preds = %bb.o, %check_connections.exit
  %i.bh = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !85 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !40 ; 2 uses
  %.not6.i75 = icmp eq ptr %i.bk, null
  br i1 %.not6.i75, label %pmix_obj_run_destructors.exit79, label %.lr.ph.i76

.lr.ph.i76:                                       ; preds = %._crit_edge115, %.lr.ph.i76
  %i.bl = phi ptr [ %i.bn, %.lr.ph.i76 ], [ %i.bk, %._crit_edge115 ]
  %.07.i77 = phi ptr [ %i.bm, %.lr.ph.i76 ], [ %i.bj, %._crit_edge115 ]
  call void %i.bl(ptr noundef nonnull %8) #14, !inline_history !86
  %i.bm = getelementptr inbounds nuw i8, ptr %.07.i77, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !40 ; 2 uses
  %.not.i78 = icmp eq ptr %i.bn, null
  br i1 %.not.i78, label %pmix_obj_run_destructors.exit79, label %.lr.ph.i76, !llvm.loop !87

.loopexit:                                        ; preds = %bb.i, %..loopexit_crit_edge, %bb.e
  %.val = phi ptr [ %.val.pre, %..loopexit_crit_edge ], [ %.val.i, %bb.e ], [ %.val.i, %bb.i ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 240 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i16 2, ptr %i.bp, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.bq = getelementptr inbounds nuw i8, ptr %.val, i64 176
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !103 ; 3 uses
  %.not61 = icmp eq ptr %i.br, null
  br i1 %.not61, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !43
  %i.bt = icmp eq i8 %i.bs, 118
  %.sink.idx = zext i1 %i.bt to i64
  %.sink = getelementptr inbounds nuw i8, ptr %i.br, i64 %.sink.idx
  %i.bu = call i64 @__isoc23_strtoul(ptr noundef nonnull %.sink, ptr noundef nonnull %i.a, i32 noundef 10) #14
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1 ; 2 uses
  store ptr %i.bw, ptr %i.a, align 8, !tbaa !32
  %i.bx = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.bw, ptr noundef nonnull %i.a, i32 noundef 10) #14
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1 ; 2 uses
  store ptr %i.bz, ptr %i.a, align 8, !tbaa !32
  %i.ca = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.bz, ptr noundef null, i32 noundef 10) #14
  %i.cb = trunc i64 %i.bu to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i8 %i.cb, ptr %i.cc, align 4, !tbaa !104
  %i.cd = trunc i64 %i.bx to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 141
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !105
  %i.cf = trunc i64 %i.ca to i8
  br label %bb.r

bb.q:                                             ; preds = %.loopexit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i8 2, ptr %i.cg, align 4, !tbaa !104
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sink139 = phi i64 [ 141, %bb.q ], [ 142, %bb.p ]
  %.sink137 = phi i8 [ 0, %bb.q ], [ %i.cf, %bb.p ]
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink139
  store i8 %.sink137, ptr %9, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.ch = getelementptr inbounds nuw i8, ptr %.val, i64 152 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !101
  store ptr %i.ci, ptr %1, align 8, !tbaa !32
  store ptr null, ptr %i.ch, align 8, !tbaa !101
  %i.cj = getelementptr inbounds nuw i8, ptr %.val, i64 160
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !102
  store i32 %i.ck, ptr %2, align 4, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %.val, i64 168 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !97
  store ptr %i.cm, ptr %3, align 8, !tbaa !32
  store ptr null, ptr %i.cl, align 8, !tbaa !97
  %i.cn = load volatile i64, ptr %i.o, align 8, !tbaa !80
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %._crit_edge118, label %.lr.ph117

.lr.ph117:                                        ; preds = %bb.r, %bb.w
  %i.cp = load volatile i64, ptr %i.o, align 8, !tbaa !80
  %i.cq = add i64 %i.cp, -1
  store volatile i64 %i.cq, ptr %i.o, align 8, !tbaa !80
  %i.cr = load ptr, ptr %i.bo, align 8, !tbaa !84 ; 11 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 128
  %i.ct = load volatile ptr, ptr %i.cs, align 8, !tbaa !78
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 120 ; 2 uses
  %i.cv = load volatile ptr, ptr %i.cu, align 8, !tbaa !79
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 128
  store volatile ptr %i.ct, ptr %i.cw, align 8, !tbaa !78
  %i.cx = load volatile ptr, ptr %i.cu, align 8, !tbaa !79
  store ptr %i.cx, ptr %i.bo, align 8, !tbaa !84
  %i.cy = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.cr) #14
  %i.cz = icmp eq i32 %i.cy, 35
  br i1 %i.cz, label %bb.s, label %pmix_obj_update.exit66

bb.s:                                             ; preds = %.lr.ph117
  %i.da = tail call ptr @__errno_location() #15
  store i32 35, ptr %i.da, align 4, !tbaa !8
  call void @perror(ptr noundef nonnull @.str.52) #18
  call void @abort() #19
  unreachable

pmix_obj_update.exit66:                           ; preds = %.lr.ph117
  %i.db = getelementptr inbounds nuw i8, ptr %i.cr, i64 48 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !38
  %i.dd = add nsw i32 %i.dc, -1                   ; 2 uses
  store i32 %i.dd, ptr %i.db, align 8, !tbaa !38
  %i.de = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cr) #14 ; 0 uses
  %i.df = icmp eq i32 %i.dd, 0
  br i1 %i.df, label %bb.t, label %bb.w

bb.t:                                             ; preds = %pmix_obj_update.exit66
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !37
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !85 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !40 ; 2 uses
  %.not6.i82 = icmp eq ptr %i.dk, null
  br i1 %.not6.i82, label %pmix_obj_run_destructors.exit86, label %.lr.ph.i83

.lr.ph.i83:                                       ; preds = %bb.t, %.lr.ph.i83
  %i.dl = phi ptr [ %i.dn, %.lr.ph.i83 ], [ %i.dk, %bb.t ]
  %.07.i84 = phi ptr [ %i.dm, %.lr.ph.i83 ], [ %i.dj, %bb.t ]
  call void %i.dl(ptr noundef nonnull %i.cr) #14, !inline_history !86
  %i.dm = getelementptr inbounds nuw i8, ptr %.07.i84, i64 8 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !40 ; 2 uses
  %.not.i85 = icmp eq ptr %i.dn, null
  br i1 %.not.i85, label %pmix_obj_run_destructors.exit86, label %.lr.ph.i83, !llvm.loop !87

pmix_obj_run_destructors.exit86:                  ; preds = %.lr.ph.i83, %bb.t
  %i.do = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !88 ; 2 uses
  %.not63 = icmp eq ptr %i.dp, null
  br i1 %.not63, label %bb.v, label %bb.u

bb.u:                                             ; preds = %pmix_obj_run_destructors.exit86
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  call void %i.dp(ptr noundef nonnull %i.dq, ptr noundef nonnull %i.cr) #14, !inline_history !89
  br label %bb.w

bb.v:                                             ; preds = %pmix_obj_run_destructors.exit86
  call void @free(ptr noundef nonnull %i.cr) #14
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %pmix_obj_update.exit66
  %i.dr = load volatile i64, ptr %i.o, align 8, !tbaa !80
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %._crit_edge118, label %.lr.ph117, !llvm.loop !108

._crit_edge118:                                   ; preds = %bb.w, %bb.r
  %i.dt = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 48
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !85 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !40 ; 2 uses
  %.not6.i87 = icmp eq ptr %i.dw, null
  br i1 %.not6.i87, label %pmix_obj_run_destructors.exit79, label %.lr.ph.i88

.lr.ph.i88:                                       ; preds = %._crit_edge118, %.lr.ph.i88
  %i.dx = phi ptr [ %i.dz, %.lr.ph.i88 ], [ %i.dw, %._crit_edge118 ]
  %.07.i89 = phi ptr [ %i.dy, %.lr.ph.i88 ], [ %i.dv, %._crit_edge118 ]
  call void %i.dx(ptr noundef nonnull %8) #14, !inline_history !86
  %i.dy = getelementptr inbounds nuw i8, ptr %.07.i89, i64 8 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !40 ; 2 uses
  %.not.i90 = icmp eq ptr %i.dz, null
  br i1 %.not.i90, label %pmix_obj_run_destructors.exit79, label %.lr.ph.i88, !llvm.loop !87

bb.x:                                             ; preds = %pmix_obj_run_constructors.exit
  %i.ea = icmp ugt i64 %i.p, 1
  br i1 %i.ea, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.eb = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 1) #14 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ec = load volatile i64, ptr %i.o, align 8, !tbaa !80
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z
  %i.ee = getelementptr inbounds nuw i8, ptr %8, i64 240 ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %bb.af
  %i.ef = load volatile i64, ptr %i.o, align 8, !tbaa !80
  %i.eg = add i64 %i.ef, -1
  store volatile i64 %i.eg, ptr %i.o, align 8, !tbaa !80
  %i.eh = load ptr, ptr %i.ee, align 8, !tbaa !84 ; 11 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 128
  %i.ej = load volatile ptr, ptr %i.ei, align 8, !tbaa !78
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 120 ; 2 uses
  %i.el = load volatile ptr, ptr %i.ek, align 8, !tbaa !79
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 128
  store volatile ptr %i.ej, ptr %i.em, align 8, !tbaa !78
  %i.en = load volatile ptr, ptr %i.ek, align 8, !tbaa !79
  store ptr %i.en, ptr %i.ee, align 8, !tbaa !84
  %i.eo = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.eh) #14
  %i.ep = icmp eq i32 %i.eo, 35
  br i1 %i.ep, label %bb.ab, label %pmix_obj_update.exit

bb.ab:                                            ; preds = %bb.aa
  %i.eq = tail call ptr @__errno_location() #15
  store i32 35, ptr %i.eq, align 4, !tbaa !8
  call void @perror(ptr noundef nonnull @.str.52) #18
  call void @abort() #19
  unreachable

pmix_obj_update.exit:                             ; preds = %bb.aa
  %i.er = getelementptr inbounds nuw i8, ptr %i.eh, i64 48 ; 2 uses
  %i.es = load i32, ptr %i.er, align 8, !tbaa !38
  %i.et = add nsw i32 %i.es, -1                   ; 2 uses
  store i32 %i.et, ptr %i.er, align 8, !tbaa !38
  %i.eu = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.eh) #14 ; 0 uses
  %i.ev = icmp eq i32 %i.et, 0
  br i1 %i.ev, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %pmix_obj_update.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !37
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !85 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !40 ; 2 uses
  %.not6.i94 = icmp eq ptr %i.fa, null
  br i1 %.not6.i94, label %pmix_obj_run_destructors.exit98, label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %bb.ac, %.lr.ph.i95
  %i.fb = phi ptr [ %i.fd, %.lr.ph.i95 ], [ %i.fa, %bb.ac ]
  %.07.i96 = phi ptr [ %i.fc, %.lr.ph.i95 ], [ %i.ez, %bb.ac ]
  call void %i.fb(ptr noundef nonnull %i.eh) #14, !inline_history !86
  %i.fc = getelementptr inbounds nuw i8, ptr %.07.i96, i64 8 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !40 ; 2 uses
  %.not.i97 = icmp eq ptr %i.fd, null
  br i1 %.not.i97, label %pmix_obj_run_destructors.exit98, label %.lr.ph.i95, !llvm.loop !87

pmix_obj_run_destructors.exit98:                  ; preds = %.lr.ph.i95, %bb.ac
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eh, i64 96
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !88 ; 2 uses
  %.not59 = icmp eq ptr %i.ff, null
  br i1 %.not59, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %pmix_obj_run_destructors.exit98
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eh, i64 56
  call void %i.ff(ptr noundef nonnull %i.fg, ptr noundef nonnull %i.eh) #14, !inline_history !89
  br label %bb.af

bb.ae:                                            ; preds = %pmix_obj_run_destructors.exit98
  call void @free(ptr noundef nonnull %i.eh) #14
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %pmix_obj_update.exit
  %i.fh = load volatile i64, ptr %i.o, align 8, !tbaa !80
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %._crit_edge, label %bb.aa, !llvm.loop !109

._crit_edge:                                      ; preds = %bb.af, %bb.z
  %i.fj = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 48
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !85 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !40 ; 2 uses
  %.not6.i99 = icmp eq ptr %i.fm, null
  br i1 %.not6.i99, label %pmix_obj_run_destructors.exit79, label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %._crit_edge, %.lr.ph.i100
  %i.fn = phi ptr [ %i.fp, %.lr.ph.i100 ], [ %i.fm, %._crit_edge ]
  %.07.i101 = phi ptr [ %i.fo, %.lr.ph.i100 ], [ %i.fl, %._crit_edge ]
  call void %i.fn(ptr noundef nonnull %8) #14, !inline_history !86
  %i.fo = getelementptr inbounds nuw i8, ptr %.07.i101, i64 8 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !40 ; 2 uses
  %.not.i102 = icmp eq ptr %i.fp, null
  br i1 %.not.i102, label %pmix_obj_run_destructors.exit79, label %.lr.ph.i100, !llvm.loop !87

pmix_obj_run_destructors.exit79:                  ; preds = %.lr.ph.i100, %.lr.ph.i76, %.lr.ph.i88, %._crit_edge, %._crit_edge118, %._crit_edge115
  %.0 = phi i32 [ 0, %.lr.ph.i88 ], [ %.0.i, %.lr.ph.i76 ], [ %.0.i, %._crit_edge115 ], [ 0, %._crit_edge118 ], [ %i.m, %._crit_edge ], [ %i.m, %.lr.ph.i100 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  ret i32 %.0
}

declare i32 @pmix_ptl_base_check_server_uris(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @pmix_ptl_base_parse_uri(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @pmix_ptl_base_make_connection(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @pmix_ptl_base_complete_connection(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @PMIx_Info_free(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #3

declare i32 @pmix_ptl_base_parse_uri_file(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @pmix_show_help(ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #2

declare i32 @pmix_ptl_base_df_search(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold }
attributes #19 = { noreturn nounwind }

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
!8 = !{!5, !5, i64 0}
!9 = !{!10, !5, i64 76}
!10 = !{!"pmix_mca_base_framework_t", !11, i64 0, !11, i64 8, !11, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !5, i64 48, !5, i64 52, !13, i64 56, !11, i64 64, !5, i64 72, !5, i64 76, !15, i64 80, !15, i64 352}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p2 _ZTS31pmix_mca_base_component_2_1_0_t", !14, i64 0}
!14 = !{!"any p2 pointer", !12, i64 0}
!15 = !{!"pmix_list_t", !16, i64 0, !19, i64 120, !21, i64 264}
!16 = !{!"pmix_object_t", !6, i64 0, !17, i64 40, !5, i64 48, !18, i64 56}
!17 = !{!"p1 _ZTS12pmix_class_t", !12, i64 0}
!18 = !{!"pmix_tma", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !14, i64 56}
!19 = !{!"pmix_list_item_t", !16, i64 0, !20, i64 120, !20, i64 128, !5, i64 136}
!20 = !{!"p1 _ZTS16pmix_list_item_t", !12, i64 0}
!21 = !{!"long", !6, i64 0}
!22 = !{!23, !5, i64 4}
!23 = !{!"", !24, i64 0, !24, i64 1, !5, i64 4, !24, i64 8, !5, i64 12, !11, i64 16, !11, i64 24, !5, i64 32, !11, i64 40, !5, i64 48, !24, i64 52, !24, i64 53, !24, i64 54, !24, i64 55, !11, i64 56, !5, i64 64, !5, i64 68}
!24 = !{!"_Bool", !6, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = distinct !{!27, !26}
!28 = !{!29, !30, i64 0}
!29 = !{!"sockaddr_storage", !30, i64 0, !6, i64 2, !21, i64 120}
!30 = !{!"short", !6, i64 0}
!31 = distinct !{!31, !26}
!32 = !{!11, !11, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"p2 omnipotent char", !14, i64 0}
!35 = !{!36, !5, i64 32}
!36 = !{!"pmix_class_t", !11, i64 0, !17, i64 8, !12, i64 16, !12, i64 24, !5, i64 32, !5, i64 36, !14, i64 40, !14, i64 48, !21, i64 56}
!37 = !{!16, !17, i64 40}
!38 = !{!16, !5, i64 48}
!39 = !{!36, !14, i64 40}
!40 = !{!12, !12, i64 0}
!41 = distinct !{null}
!42 = distinct !{!42, !26}
!43 = !{!6, !6, i64 0}
!44 = distinct !{!44, !26}
!45 = !{!46, !49, i64 328}
!46 = !{!"", !5, i64 0, !47, i64 4, !48, i64 264, !48, i64 296, !49, i64 328, !5, i64 336, !5, i64 340, !5, i64 344, !5, i64 348, !11, i64 352, !34, i64 360, !5, i64 368, !5, i64 372, !5, i64 376, !5, i64 380, !5, i64 384, !50, i64 392, !50, i64 400, !5, i64 408, !51, i64 416, !24, i64 1648, !24, i64 1649, !52, i64 1656, !15, i64 1672, !53, i64 1944, !5, i64 2104, !5, i64 2108, !55, i64 2112, !24, i64 2304, !15, i64 2312, !24, i64 2584, !24, i64 2585, !24, i64 2586, !21, i64 2592, !15, i64 2600, !57, i64 2872, !57, i64 2888, !24, i64 2904, !24, i64 2905, !58, i64 2912, !59, i64 2944}
!47 = !{!"pmix_proc", !6, i64 0, !5, i64 256}
!48 = !{!"pmix_value", !30, i64 0, !6, i64 8}
!49 = !{!"p1 _ZTS11pmix_peer_t", !12, i64 0}
!50 = !{!"p1 _ZTS10event_base", !12, i64 0}
!51 = !{!"", !16, i64 0, !21, i64 120, !12, i64 128, !12, i64 136, !15, i64 144, !15, i64 416, !15, i64 688, !15, i64 960}
!52 = !{!"timeval", !21, i64 0, !21, i64 8}
!53 = !{!"pmix_pointer_array_t", !16, i64 0, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !54, i64 144, !14, i64 152}
!54 = !{!"p1 long", !12, i64 0}
!55 = !{!"pmix_hotel_t", !16, i64 0, !5, i64 120, !50, i64 128, !52, i64 136, !12, i64 152, !12, i64 160, !12, i64 168, !56, i64 176, !5, i64 184}
!56 = !{!"p1 int", !12, i64 0}
!57 = !{!"", !11, i64 0, !12, i64 8}
!58 = !{!"", !24, i64 0, !24, i64 1, !24, i64 2, !24, i64 3, !24, i64 4, !24, i64 5, !24, i64 6, !11, i64 8, !11, i64 16, !24, i64 24, !24, i64 25, !24, i64 26, !24, i64 27, !24, i64 28, !24, i64 29}
!59 = !{!"", !16, i64 0, !60, i64 120, !5, i64 128}
!60 = !{!"p1 _ZTS20pmix_pointer_array_t", !12, i64 0}
!61 = !{!62, !5, i64 136}
!62 = !{!"pmix_peer_t", !16, i64 0, !12, i64 120, !63, i64 128, !64, i64 136, !30, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !24, i64 160, !65, i64 168, !24, i64 296, !65, i64 304, !24, i64 432, !15, i64 440, !12, i64 712, !12, i64 720, !5, i64 728, !70, i64 736}
!63 = !{!"p1 _ZTS16pmix_rank_info_t", !12, i64 0}
!64 = !{!"", !5, i64 0, !6, i64 4, !6, i64 5, !6, i64 6, !6, i64 7}
!65 = !{!"event", !66, i64 0, !6, i64 40, !5, i64 56, !50, i64 64, !6, i64 72, !30, i64 104, !30, i64 106, !52, i64 112}
!66 = !{!"event_callback", !67, i64 0, !30, i64 16, !6, i64 18, !6, i64 19, !6, i64 24, !12, i64 32}
!67 = !{!"", !68, i64 0, !69, i64 8}
!68 = !{!"p1 _ZTS14event_callback", !12, i64 0}
!69 = !{!"p2 _ZTS14event_callback", !14, i64 0}
!70 = !{!"pmix_epilog_t", !5, i64 0, !5, i64 4, !15, i64 8, !15, i64 280, !15, i64 552}
!71 = !{!72, !11, i64 992}
!72 = !{!"pmix_ptl_base_t", !24, i64 0, !24, i64 1, !15, i64 8, !15, i64 280, !73, i64 552, !74, i64 880, !5, i64 888, !21, i64 896, !11, i64 904, !11, i64 912, !11, i64 920, !11, i64 928, !11, i64 936, !11, i64 944, !11, i64 952, !11, i64 960, !11, i64 968, !11, i64 976, !11, i64 984, !11, i64 992, !24, i64 1000, !24, i64 1001, !24, i64 1002, !24, i64 1003, !24, i64 1004, !24, i64 1005, !24, i64 1006, !24, i64 1007, !24, i64 1008, !24, i64 1009, !24, i64 1010, !24, i64 1011, !24, i64 1012, !24, i64 1013, !24, i64 1014, !24, i64 1015, !24, i64 1016, !11, i64 1024, !11, i64 1032, !5, i64 1040, !24, i64 1044, !5, i64 1048, !24, i64 1052, !5, i64 1056, !5, i64 1060, !5, i64 1064, !5, i64 1068}
!73 = !{!"pmix_listener_t", !19, i64 0, !65, i64 144, !24, i64 272, !30, i64 274, !5, i64 276, !11, i64 280, !11, i64 288, !5, i64 296, !24, i64 300, !5, i64 304, !24, i64 308, !5, i64 312, !12, i64 320}
!74 = !{!"p1 _ZTS16sockaddr_storage", !12, i64 0}
!75 = !{!76, !77, i64 144}
!76 = !{!"", !19, i64 0, !77, i64 144, !21, i64 152}
!77 = !{!"p1 _ZTS9pmix_info", !12, i64 0}
!78 = !{!19, !20, i64 128}
!79 = !{!19, !20, i64 120}
!80 = !{!15, !21, i64 264}
!81 = distinct !{!81, !26}
!82 = !{!36, !21, i64 56}
!83 = distinct !{ptr @pmix_obj_new_tma, null}
!84 = !{!15, !20, i64 240}
!85 = !{!36, !14, i64 48}
!86 = distinct !{null}
!87 = distinct !{!87, !26}
!88 = !{!16, !12, i64 96}
!89 = distinct !{null}
!90 = distinct !{!90, !26}
!91 = distinct !{!91, !26}
!92 = !{!62, !30, i64 144}
!93 = !{!72, !11, i64 928}
!94 = !{!72, !11, i64 912}
!95 = !{!46, !11, i64 352}
!96 = distinct !{!96, !26}
!97 = !{!98, !11, i64 168}
!98 = !{!"", !19, i64 0, !5, i64 144, !11, i64 152, !5, i64 160, !11, i64 168, !11, i64 176}
!99 = distinct !{!99, !26}
!100 = distinct !{!100, !26}
!101 = !{!98, !11, i64 152}
!102 = !{!98, !5, i64 160}
!103 = !{!98, !11, i64 176}
!104 = !{!62, !6, i64 140}
!105 = !{!62, !6, i64 141}
!106 = distinct !{!106, !26}
!107 = distinct !{!107, !26}
!108 = distinct !{!108, !26}
!109 = distinct !{!109, !26}
end_hunk_0
