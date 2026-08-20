inline.NumInlined: 76
inline.NumDeleted: 16
begin_hunk_0_@PMIx_Query_info:bb.a
.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %i.ac = phi ptr [ %i.ae, %.lr.ph.i ], [ %i.ab, %bb.g ]
  %.07.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.aa, %bb.g ]
  tail call void %i.ac(ptr noundef nonnull %i.b) #13, !inline_history !113
  %i.ad = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !42 ; 2 uses
  %.not.i43 = icmp eq ptr %i.ae, null
  br i1 %.not.i43, label %pmix_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !114

pmix_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !122 ; 2 uses
  %.not41 = icmp eq ptr %i.ag, null
  br i1 %.not41, label %bb.i, label %bb.h

bb.h:                                             ; preds = %pmix_obj_run_destructors.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void %i.ag(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.b) #13, !inline_history !123
  br label %bb.u

bb.i:                                             ; preds = %pmix_obj_run_destructors.exit
  tail call void @free(ptr noundef nonnull %i.b) #13
  br label %bb.u

bb.j:                                             ; preds = %pmix_obj_new_tma.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 376 ; 3 uses
  %i.aj = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ai) #13 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 464 ; 2 uses
  %i.al = load volatile i8, ptr %i.ak, align 8, !tbaa !163, !range !99, !noundef !100
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %i.ao = tail call i32 @pthread_cond_wait(ptr noundef nonnull %i.an, ptr noundef nonnull %i.ai) #13 ; 0 uses
  %i.ap = load volatile i8, ptr %i.ak, align 8, !tbaa !163, !range !99, !noundef !100
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.k, label %._crit_edge, !llvm.loop !164

._crit_edge:                                      ; preds = %bb.k, %bb.j
  fence acquire
  %i.ar = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ai) #13 ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 476
  %i.at = load i32, ptr %i.as, align 4, !tbaa !116 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 512 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !118 ; 2 uses
  %.not39 = icmp eq ptr %i.av, null
  br i1 %.not39, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  store ptr %i.av, ptr %2, align 8, !tbaa !161
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 528 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !117
  store i64 %i.ax, ptr %3, align 8, !tbaa !162
  store ptr null, ptr %i.au, align 8, !tbaa !118
  store i64 0, ptr %i.aw, align 8, !tbaa !117
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %i.ay = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.b) #13
  %i.az = icmp eq i32 %i.ay, 35
  br i1 %i.az, label %bb.n, label %pmix_obj_update.exit

bb.n:                                             ; preds = %bb.m
  %i.ba = tail call ptr @__errno_location() #16
  store i32 35, ptr %i.ba, align 4, !tbaa !36
  tail call void @perror(ptr noundef nonnull @.str.12) #17
  tail call void @abort() #18
  unreachable

pmix_obj_update.exit:                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !40
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !40
  %i.be = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #13 ; 0 uses
  %i.bf = icmp eq i32 %i.bd, 0
  br i1 %i.bf, label %bb.o, label %bb.r

bb.o:                                             ; preds = %pmix_obj_update.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !39
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !112 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !42 ; 2 uses
  %.not6.i45 = icmp eq ptr %i.bk, null
  br i1 %.not6.i45, label %pmix_obj_run_destructors.exit49, label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %bb.o, %.lr.ph.i46
  %i.bl = phi ptr [ %i.bn, %.lr.ph.i46 ], [ %i.bk, %bb.o ]
  %.07.i47 = phi ptr [ %i.bm, %.lr.ph.i46 ], [ %i.bj, %bb.o ]
  tail call void %i.bl(ptr noundef nonnull %i.b) #13, !inline_history !113
  %i.bm = getelementptr inbounds nuw i8, ptr %.07.i47, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !42 ; 2 uses
  %.not.i48 = icmp eq ptr %i.bn, null
  br i1 %.not.i48, label %pmix_obj_run_destructors.exit49, label %.lr.ph.i46, !llvm.loop !114

pmix_obj_run_destructors.exit49:                  ; preds = %.lr.ph.i46, %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !122 ; 2 uses
  %.not40 = icmp eq ptr %i.bp, null
  br i1 %.not40, label %bb.q, label %bb.p

bb.p:                                             ; preds = %pmix_obj_run_destructors.exit49
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void %i.bp(ptr noundef nonnull %i.bq, ptr noundef nonnull %i.b) #13, !inline_history !123
  br label %bb.r

bb.q:                                             ; preds = %pmix_obj_run_destructors.exit49
  tail call void @free(ptr noundef nonnull %i.b) #13
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %pmix_obj_update.exit
  %i.br = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 408), align 8, !tbaa !133 ; 3 uses
  %or.cond = icmp ult i32 %i.br, 64
  br i1 %or.cond, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !93
  %i.bw = icmp sgt i32 %i.bv, 1
  br i1 %i.bw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.br, ptr noundef nonnull @.str.10) #13
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.s, %bb.t, %pmix_obj_update.exit42, %bb.i, %bb.h
  %.0 = phi i32 [ %i.o, %pmix_obj_update.exit42 ], [ %i.o, %bb.h ], [ %i.o, %bb.i ], [ %i.at, %bb.t ], [ %i.at, %bb.s ], [ %i.at, %bb.r ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -31, 1) i32 @PMIx_Query_info_nb(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_global_lock, i64 128)) #13 ; 0 uses
  %i.b = load volatile i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_global_lock, i64 216), align 8, !tbaa !130, !range !99, !noundef !100
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.d = tail call i32 @pthread_cond_wait(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_global_lock, i64 168), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_global_lock, i64 128)) #13 ; 0 uses
  %i.e = load volatile i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_global_lock, i64 216), align 8, !tbaa !130, !range !99, !noundef !100
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %.lr.ph, label %._crit_edge, !llvm.loop !165

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  fence acquire
  store volatile i8 1, ptr getelementptr inbounds nuw (i8, ptr @pmix_global_lock, i64 216), align 8, !tbaa !130
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 408), align 8, !tbaa !133 ; 3 uses
  %or.cond = icmp ult i32 %i.g, 64
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !93
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.g, ptr noundef nonnull @.str.11) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %i.m = load i32, ptr @pmix_globals, align 8, !tbaa !166
  %i.n = icmp slt i32 %i.m, 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @pmix_global_lock, i64 216), align 8, !tbaa !130
  fence release
  %i.o = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_global_lock, i64 168)) #13 ; 0 uses
  %i.p = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_global_lock, i64 128)) #13 ; 0 uses
  br i1 %i.n, label %.loopexit71, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp eq i64 %1, 0
  %i.r = icmp eq ptr %0, null
  %or.cond3 = or i1 %i.r, %i.q
  br i1 %or.cond3, label %.loopexit71, label %.preheader70

.preheader70:                                     ; preds = %bb.e, %bb.h
  %.06072 = phi i64 [ %i.ac, %bb.h ], [ 0, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.06072 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !49
  %.not67 = icmp eq ptr %i.u, null
  br i1 %.not67, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.preheader70
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !46
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.f, %.preheader
  %.0 = phi i64 [ %i.ab, %.preheader ], [ 0, %bb.f ] ; 3 uses
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !49
  %i.z = getelementptr inbounds nuw [552 x i8], ptr %i.y, i64 %.0
  %i.aa = tail call zeroext i1 @PMIx_Info_is_end(ptr noundef %i.z) #13
  %i.ab = add nuw i64 %.0, 1
  br i1 %i.aa, label %bb.g, label %.preheader, !llvm.loop !167

bb.g:                                             ; preds = %.preheader
  store i64 %.0, ptr %i.v, align 8, !tbaa !46
  br label %bb.h

bb.h:                                             ; preds = %.preheader70, %bb.f, %bb.g
  %i.ac = add nuw i64 %.06072, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %1
  br i1 %exitcond.not, label %bb.i, label %.preheader70, !llvm.loop !168

bb.i:                                             ; preds = %bb.h
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_query_caddy_t_class, i64 56), align 8, !tbaa !105
  %i.ae = tail call noalias noundef ptr @malloc(i64 noundef %i.ad) #15 ; 14 uses
  %i.af = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !36
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_query_caddy_t_class, i64 32), align 8, !tbaa !37
  %.not.i = icmp eq i32 %i.af, %i.ag
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @pmix_class_initialize(ptr noundef nonnull @pmix_query_caddy_t_class) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not22.i = icmp eq ptr %i.ae, null
  br i1 %.not22.i, label %.lr.ph78.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.ae, ptr noundef null) #13 ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store ptr @pmix_query_caddy_t_class, ptr %i.ai, align 8, !tbaa !39
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store i32 1, ptr %i.aj, align 8, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_query_caddy_t_class, i64 40), align 8, !tbaa !41 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !42 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.an, null
  br i1 %.not6.i.i, label %.lr.ph78.preheader, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %i.ao = phi ptr [ %i.aq, %.lr.ph.i.i ], [ %i.an, %bb.l ]
  %.07.i.i = phi ptr [ %i.ap, %.lr.ph.i.i ], [ %i.am, %bb.l ]
  tail call void %i.ao(ptr noundef nonnull %i.ae) #13, !inline_history !106
  %i.ap = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !42 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %.lr.ph78.preheader, label %.lr.ph.i.i, !llvm.loop !44

.lr.ph78.preheader:                               ; preds = %.lr.ph.i.i, %bb.l, %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 472
  store i8 0, ptr %i.ar, align 8, !tbaa !132
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 488
  store i64 %1, ptr %i.as, align 8, !tbaa !35
  %i.at = tail call ptr @PMIx_Query_create(i64 noundef %1) #13
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 480 ; 4 uses
  store ptr %i.at, ptr %i.au, align 8, !tbaa !8
  br label %.lr.ph78

.lr.ph78:                                         ; preds = %.lr.ph78.preheader, %.loopexit
  %.16176 = phi i64 [ %i.bu, %.loopexit ], [ 0, %.lr.ph78.preheader ] ; 5 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.16176 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !62
  %i.ax = tail call ptr @PMIx_Argv_copy(ptr noundef %i.aw) #13
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %.16176 ; 2 uses
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !62
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !46 ; 3 uses
  %.not = icmp eq i64 %i.bb, 0
  br i1 %.not, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %.lr.ph78
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !46
  %i.bd = tail call ptr @PMIx_Info_create(i64 noundef %i.bb) #13
  %i.be = load ptr, ptr %i.au, align 8, !tbaa !8
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %.16176
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bd, ptr %i.bg, align 8, !tbaa !49
  %i.bh = load i64, ptr %i.ba, align 8, !tbaa !46
  %.not81 = icmp eq i64 %i.bh, 0
  br i1 %.not81, label %.loopexit, label %.lr.ph75

.lr.ph75:                                         ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph75, %bb.n
  %.173 = phi i64 [ 0, %.lr.ph75 ], [ %i.br, %bb.n ] ; 3 uses
  %i.bj = load ptr, ptr %i.au, align 8, !tbaa !8
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.16176
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !49
  %i.bn = getelementptr inbounds nuw [552 x i8], ptr %i.bm, i64 %.173
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !49
  %i.bp = getelementptr inbounds nuw [552 x i8], ptr %i.bo, i64 %.173
  %i.bq = tail call i32 @PMIx_Info_xfer(ptr noundef %i.bn, ptr noundef %i.bp) #13 ; 0 uses
  %i.br = add nuw i64 %.173, 1                    ; 2 uses
  %i.bs = load i64, ptr %i.ba, align 8, !tbaa !46
  %i.bt = icmp ult i64 %i.br, %i.bs
  br i1 %i.bt, label %bb.n, label %.loopexit, !llvm.loop !169

.loopexit:                                        ; preds = %bb.n, %bb.m, %.lr.ph78
  %i.bu = add nuw i64 %.16176, 1                  ; 2 uses
  %exitcond82.not = icmp eq i64 %i.bu, %1
  br i1 %exitcond82.not, label %._crit_edge79, label %.lr.ph78, !llvm.loop !170

._crit_edge79:                                    ; preds = %.loopexit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ae, i64 848
  store ptr %2, ptr %i.bv, align 8, !tbaa !125
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ae, i64 888
  store ptr %3, ptr %i.bw, align 8, !tbaa !126
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ae, i64 120 ; 2 uses
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 392), align 8, !tbaa !70
  %i.bz = tail call i32 @pmix_event_assign(ptr noundef nonnull %i.bx, ptr noundef %i.by, i32 noundef -1, i16 noundef signext 4, ptr noundef nonnull @pmix_parse_localquery, ptr noundef nonnull %i.ae) #13 ; 0 uses
  fence release
  tail call void @event_active(ptr noundef nonnull %i.bx, i32 noundef 4, i16 noundef signext 1) #13
  br label %.loopexit71

.loopexit71:                                      ; preds = %bb.d, %bb.e, %._crit_edge79
  %.062 = phi i32 [ -27, %bb.e ], [ 0, %._crit_edge79 ], [ -31, %bb.d ]
  ret i32 %.062
}

; Function Attrs: nounwind uwtable
define internal void @qinfocb(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef initializes((476, 480)) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 476
  store i32 %0, ptr %i.a, align 4, !tbaa !116
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 528
  store i64 %2, ptr %i.b, align 8, !tbaa !117
  %i.c = tail call ptr @PMIx_Info_create(i64 noundef %2) #13
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 512 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !118
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %.024 = phi i64 [ 0, %bb.b ], [ %i.i, %bb.c ]   ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !118
  %i.f = getelementptr inbounds nuw [552 x i8], ptr %i.e, i64 %.024
  %i.g = getelementptr inbounds nuw [552 x i8], ptr %1, i64 %.024
  %i.h = tail call i32 @PMIx_Info_xfer(ptr noundef %i.f, ptr noundef %i.g) #13 ; 0 uses
  %i.i = add nuw i64 %.024, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %2
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !171

.loopexit:                                        ; preds = %bb.c, %bb.a
  %.not23 = icmp eq ptr %4, null
  br i1 %.not23, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit
  tail call void %4(ptr noundef %5) #13
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 376 ; 2 uses
  %i.k = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.j) #13 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 464
  store volatile i8 0, ptr %i.l, align 8, !tbaa !163
  fence release
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 416
  %i.n = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %i.m) #13 ; 0 uses
  %i.o = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.j) #13 ; 0 uses
  ret void
}

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_cond_broadcast(ptr noundef) local_unnamed_addr #6

declare zeroext i1 @PMIx_Info_is_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @finalstep(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5) #0 {
bb.a:
  %.not56 = icmp eq i64 %2, 0
  br i1 %.not56, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 664
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 792 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 808 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.03948 = phi i64 [ 0, %.lr.ph ], [ %i.w, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw [552 x i8], ptr %1, i64 %.03948 ; 2 uses
  %i.e = tail call fastcc ptr @pmix_bfrop_tma_kval_new(ptr noundef %i.d) ; 5 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 328), align 8, !tbaa !83
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !84
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 480
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !144
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !172
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !65
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 520
  %i.p = tail call i32 %i.l(ptr noundef %i.n, ptr noundef nonnull %i.o) #13 ; 0 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !67   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store ptr %i.q, ptr %i.r, align 8, !tbaa !67
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  store volatile ptr %i.e, ptr %i.s, align 8, !tbaa !68
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store ptr %i.a, ptr %i.t, align 8, !tbaa !68
  store ptr %i.e, ptr %i.b, align 8, !tbaa !67
  %i.u = load volatile i64, ptr %i.c, align 8, !tbaa !69
  %i.v = add i64 %i.u, 1
  store volatile i64 %i.v, ptr %i.c, align 8, !tbaa !69
  %i.w = add nuw i64 %.03948, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !173

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 848 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !125
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 808 ; 2 uses
  %i.aa = load volatile i64, ptr %i.z, align 8, !tbaa !69
  %.not44 = icmp eq i64 %i.aa, 0
  br i1 %.not44, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load volatile i64, ptr %i.z, align 8, !tbaa !69 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 528
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !117
  %i.ad = tail call ptr @PMIx_Info_create(i64 noundef %i.ab) #13
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 512 ; 3 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !118
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 664 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 784
  %.049 = load ptr, ptr %i.ag, align 8, !tbaa !68 ; 2 uses
  %.not4550 = icmp eq ptr %.049, %i.af
  br i1 %.not4550, label %.loopexit, label %.lr.ph55

.lr.ph55:                                         ; preds = %bb.d, %.lr.ph55
  %.053 = phi ptr [ %.0, %.lr.ph55 ], [ %.049, %bb.d ] ; 3 uses
  %.152 = phi i64 [ %i.ay, %.lr.ph55 ], [ 0, %bb.d ] ; 3 uses
  %.04051 = phi i32 [ %spec.select, %.lr.ph55 ], [ %0, %bb.d ]
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !118
  %i.ai = getelementptr inbounds nuw [552 x i8], ptr %i.ah, i64 %.152
  %i.aj = getelementptr inbounds nuw i8, ptr %.053, i64 144
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !119
  tail call void @PMIx_Load_key(ptr noundef %i.ai, ptr noundef %i.ak) #13
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 328), align 8, !tbaa !83
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !84
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 480
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !144
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !172
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !118
  %i.at = getelementptr inbounds nuw [552 x i8], ptr %i.as, i64 %.152
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 520
  %i.av = getelementptr inbounds nuw i8, ptr %.053, i64 152
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !65
  %i.ax = tail call i32 %i.ar(ptr noundef nonnull %i.au, ptr noundef %i.aw) #13 ; 2 uses
  %.not47 = icmp eq i32 %i.ax, 0
  %spec.select = select i1 %.not47, i32 %.04051, i32 %i.ax ; 2 uses
  %i.ay = add i64 %.152, 1
  %i.az = getelementptr inbounds nuw i8, ptr %.053, i64 120
  %.0 = load ptr, ptr %i.az, align 8, !tbaa !68   ; 2 uses
  %.not45 = icmp eq ptr %.0, %i.af
  br i1 %.not45, label %.loopexit, label %.lr.ph55, !llvm.loop !174

.loopexit:                                        ; preds = %.lr.ph55, %bb.d, %bb.c
  %.2 = phi i32 [ %0, %bb.c ], [ %0, %bb.d ], [ %spec.select, %.lr.ph55 ]
  %i.ba = load ptr, ptr %i.x, align 8, !tbaa !125
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 512
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !118
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 528
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !117
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 888
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !126
  tail call void %i.ba(i32 noundef %.2, ptr noundef %i.bc, i64 noundef %i.be, ptr noundef %i.bg, ptr noundef nonnull @relcbfunc, ptr noundef nonnull %3) #13
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %._crit_edge
  %.not46 = icmp eq ptr %4, null
  br i1 %.not46, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void %4(ptr noundef %5) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}
end_hunk_0
