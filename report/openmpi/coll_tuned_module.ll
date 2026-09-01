Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/coll_tuned_module?download=true
inline.NumInlined: 7
inline.NumDeleted: 4
begin_hunk_0_@tuned_module_enable:bb.a

bb.b:                                             ; preds = %bb.a
  tail call void @opal_class_initialize(ptr noundef nonnull @mca_coll_base_comm_t_class) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not9.i = icmp eq ptr %i.f, null
  br i1 %.not9.i, label %opal_obj_new.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @mca_coll_base_comm_t_class, ptr %i.f, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store volatile i32 1, ptr %i.i, align 8, !tbaa !46
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_base_comm_t_class, i64 40), align 8, !tbaa !47 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.k, null
  br i1 %.not6.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i ], [ %i.k, %bb.d ]
  %.07.i.i = phi ptr [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.d ]
  tail call void %i.l(ptr noundef nonnull %i.f) #6, !inline_history !49
  %i.m = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48   ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !50

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.d
  %i.o = load i8, ptr @ompi_coll_tuned_use_dynamic_rules, align 1, !tbaa !74, !range !75, !noundef !76
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %bb.am

bb.e:                                             ; preds = %.loopexit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  tail call fastcc void @ompi_coll_tuned_forced_getvalues(i32 noundef 0, ptr noundef nonnull %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  store ptr null, ptr %i.r, align 8, !tbaa !77
  %i.s = load i32, ptr %i.q, align 8, !tbaa !79
  %.not203 = icmp ne i32 %i.s, 0                  ; 2 uses
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_tuned_component, i64 288), align 8, !tbaa !81 ; 2 uses
  %.not204 = icmp eq ptr %i.t, null
  br i1 %.not204, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call ptr @ompi_coll_tuned_get_com_rule_ptr(ptr noundef nonnull %i.t, i32 noundef 0, i32 noundef %.0183) #6 ; 2 uses
  store ptr %i.u, ptr %i.r, align 8, !tbaa !77
  %.not205 = icmp ne ptr %i.u, null
  %or.cond = select i1 %.not205, i1 true, i1 %.not203
  br i1 %or.cond, label %.thread, label %bb.g

select.unfold:                                    ; preds = %bb.e
  br i1 %.not203, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f, %select.unfold
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @ompi_coll_tuned_allgather_intra_dec_dynamic, ptr %i.v, align 8, !tbaa !56
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread, %select.unfold
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 620 ; 2 uses
  tail call fastcc void @ompi_coll_tuned_forced_getvalues(i32 noundef 1, ptr noundef nonnull %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  store ptr null, ptr %i.x, align 8, !tbaa !77
  %i.y = load i32, ptr %i.w, align 4, !tbaa !79
  %.not206 = icmp ne i32 %i.y, 0                  ; 2 uses
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_tuned_component, i64 288), align 8, !tbaa !81 ; 2 uses
  %.not207 = icmp eq ptr %i.z, null
  br i1 %.not207, label %select.unfold290, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = tail call ptr @ompi_coll_tuned_get_com_rule_ptr(ptr noundef nonnull %i.z, i32 noundef 1, i32 noundef %.0183) #6 ; 2 uses
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !77
  %.not208 = icmp ne ptr %i.aa, null
  %or.cond341 = select i1 %.not208, i1 true, i1 %.not206
  br i1 %or.cond341, label %.thread291, label %bb.i

select.unfold290:                                 ; preds = %bb.g
  br i1 %.not206, label %.thread291, label %bb.i

.thread291:                                       ; preds = %bb.h, %select.unfold290
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @ompi_coll_tuned_allgatherv_intra_dec_dynamic, ptr %i.ab, align 8, !tbaa !57
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread291, %select.unfold290
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  tail call fastcc void @ompi_coll_tuned_forced_getvalues(i32 noundef 2, ptr noundef nonnull %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  store ptr null, ptr %i.ad, align 8, !tbaa !77
  %i.ae = load i32, ptr %i.ac, align 8, !tbaa !79
  %.not209 = icmp ne i32 %i.ae, 0                 ; 2 uses
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_tuned_component, i64 288), align 8, !tbaa !81 ; 2 uses
  %.not210 = icmp eq ptr %i.af, null
  br i1 %.not210, label %select.unfold293, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = tail call ptr @ompi_coll_tuned_get_com_rule_ptr(ptr noundef nonnull %i.af, i32 noundef 2, i32 noundef %.0183) #6 ; 2 uses
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !77
  %.not211 = icmp ne ptr %i.ag, null
  %or.cond343 = select i1 %.not211, i1 true, i1 %.not209
  br i1 %or.cond343, label %.thread294, label %bb.k

select.unfold293:                                 ; preds = %bb.i
  br i1 %.not209, label %.thread294, label %bb.k

.thread294:                                       ; preds = %bb.j, %select.unfold293
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @ompi_coll_tuned_allreduce_intra_dec_dynamic, ptr %i.ah, align 8, !tbaa !58
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread294, %select.unfold293
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 660 ; 2 uses
  tail call fastcc void @ompi_coll_tuned_forced_getvalues(i32 noundef 3, ptr noundef nonnull %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  store ptr null, ptr %i.aj, align 8, !tbaa !77
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !79
  %.not212 = icmp ne i32 %i.ak, 0                 ; 2 uses
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_tuned_component, i64 288), align 8, !tbaa !81 ; 2 uses
  %.not213 = icmp eq ptr %i.al, null
  br i1 %.not213, label %select.unfold296, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = tail call ptr @ompi_coll_tuned_get_com_rule_ptr(ptr noundef nonnull %i.al, i32 noundef 3, i32 noundef %.0183) #6 ; 2 uses
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !77
  %.not214 = icmp ne ptr %i.am, null
  %or.cond345 = select i1 %.not214, i1 true, i1 %.not212
  br i1 %or.cond345, label %.thread297, label %bb.m

select.unfold296:                                 ; preds = %bb.k
  br i1 %.not212, label %.thread297, label %bb.m

.thread297:                                       ; preds = %bb.l, %select.unfold296
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @ompi_coll_tuned_alltoall_intra_dec_dynamic, ptr %i.an, align 8, !tbaa !59
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread297, %select.unfold296
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  tail call fastcc void @ompi_coll_tuned_forced_getvalues(i32 noundef 4, ptr noundef nonnull %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  store ptr null, ptr %i.ap, align 8, !tbaa !77
  %i.aq = load i32, ptr %i.ao, align 8, !tbaa !79
  %.not215 = icmp ne i32 %i.aq, 0                 ; 2 uses
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_tuned_component, i64 288), align 8, !tbaa !81 ; 2 uses
  %.not216 = icmp eq ptr %i.ar, null
  br i1 %.not216, label %select.unfold299, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = tail call ptr @ompi_coll_tuned_get_com_rule_ptr(ptr noundef nonnull %i.ar, i32 noundef 4, i32 noundef %.0183) #6 ; 2 uses
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !77
  %.not217 = icmp ne ptr %i.as, null
  %or.cond347 = select i1 %.not217, i1 true, i1 %.not215
  br i1 %or.cond347, label %.thread300, label %bb.o

select.unfold299:                                 ; preds = %bb.m
  br i1 %.not215, label %.thread300, label %bb.o

.thread300:                                       ; preds = %bb.n, %select.unfold299
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @ompi_coll_tuned_alltoallv_intra_dec_dynamic, ptr %i.at, align 8, !tbaa !60
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread300, %select.unfold299
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 700 ; 2 uses
  tail call fastcc void @ompi_coll_tuned_forced_getvalues(i32 noundef 5, ptr noundef nonnull %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 2 uses
  store ptr null, ptr %i.av, align 8, !tbaa !77
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !79
  %.not218 = icmp ne i32 %i.aw, 0                 ; 2 uses
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_tuned_component, i64 288), align 8, !tbaa !81 ; 2 uses
  %.not219 = icmp eq ptr %i.ax, null
  br i1 %.not219, label %select.unfold302, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = tail call ptr @ompi_coll_tuned_get_com_rule_ptr(ptr noundef nonnull %i.ax, i32 noundef 5, i32 noundef %.0183) #6 ; 2 uses
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !77
  %.not220 = icmp ne ptr %i.ay, null
  %or.cond349 = select i1 %.not220, i1 true, i1 %.not218
  br i1 %or.cond349, label %.thread303, label %bb.q

select.unfold302:                                 ; preds = %bb.o
  br i1 %.not218, label %.thread303, label %bb.q

.thread303:                                       ; preds = %bb.p, %select.unfold302
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.az, align 8, !tbaa !61
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread303, %select.unfold302
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr null, ptr %i.a, align 8, !tbaa !87
  %i.bb = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_tuned_forced_params, i64 120), align 8, !tbaa !88
  %i.bc = call i32 @mca_base_var_get_value(i32 noundef %i.bb, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null) #6 ; 0 uses
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !87  ; 2 uses
  %.not.i288 = icmp eq ptr %i.bd, null
  br i1 %.not.i288, label %.thread392, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !37
  %.fr = freeze i32 %i.be                         ; 2 uses
  store i32 %.fr, ptr %i.ba, align 8, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  store ptr null, ptr %i.bf, align 8, !tbaa !77
  %.not221 = icmp ne i32 %.fr, 0                  ; 2 uses
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_tuned_component, i64 288), align 8, !tbaa !81 ; 2 uses
  %.not222 = icmp eq ptr %i.bg, null
  br i1 %.not222, label %select.unfold307, label %bb.s

.thread392:                                       ; preds = %bb.q
  store i32 0, ptr %i.ba, align 8, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  store ptr null, ptr %i.bh, align 8, !tbaa !77
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_tuned_component, i64 288), align 8, !tbaa !81 ; 2 uses
  %.not222393 = icmp eq ptr %i.bi, null
  br i1 %.not222393, label %select.unfold307.thread, label %bb.s

bb.s:                                             ; preds = %.thread392, %bb.r
  %i.bj = phi ptr [ %i.bi, %.thread392 ], [ %i.bg, %bb.r ]
  %i.bk = phi i1 [ false, %.thread392 ], [ %.not221, %bb.r ]
  %i.bl = phi ptr [ %i.bh, %.thread392 ], [ %i.bf, %bb.r ]
  %i.bm = call ptr @ompi_coll_tuned_get_com_rule_ptr(ptr noundef nonnull %i.bj, i32 noundef 6, i32 noundef %.0183) #6 ; 2 uses
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !77
  %.not223 = icmp ne ptr %i.bm, null
  %or.cond352 = or i1 %i.bk, %.not223
  br i1 %or.cond352, label %.thread308, label %select.unfold307.thread

select.unfold307:                                 ; preds = %bb.r
  br i1 %.not221, label %.thread308, label %select.unfold307.thread

.thread308:                                       ; preds = %bb.s, %select.unfold307
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @ompi_coll_tuned_barrier_intra_dec_dynamic, ptr %i.bn, align 8, !tbaa !62
  br label %select.unfold307.thread

select.unfold307.thread:                          ; preds = %.thread392, %bb.s, %.thread308, %select.unfold307
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 740 ; 2 uses
  call fastcc void @ompi_coll_tuned_forced_getvalues(i32 noundef 7, ptr noundef nonnull %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 2 uses
  store ptr null, ptr %i.bp, align 8, !tbaa !77
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !79
  %.not224 = icmp ne i32 %i.bq, 0                 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_tuned_component, i64 288), align 8, !tbaa !81 ; 2 uses
  %.not225 = icmp eq ptr %i.br, null
  br i1 %.not225, label %select.unfold310, label %bb.t

bb.t:                                             ; preds = %select.unfold307.thread
  %i.bs = call ptr @ompi_coll_tuned_get_com_rule_ptr(ptr noundef nonnull %i.br, i32 noundef 7, i32 noundef %.0183) #6 ; 2 uses
  store ptr %i.bs, ptr %i.bp, align 8, !tbaa !77
  %.not226 = icmp ne ptr %i.bs, null
  %or.cond354 = select i1 %.not226, i1 true, i1 %.not224
  br i1 %or.cond354, label %.thread311, label %bb.u

select.unfold310:                                 ; preds = %select.unfold307.thread
  br i1 %.not224, label %.thread311, label %bb.u

.thread311:                                       ; preds = %bb.t, %select.unfold310
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr @ompi_coll_tuned_bcast_intra_dec_dynamic, ptr %i.bt, align 8, !tbaa !63
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread311, %select.unfold310
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  call fastcc void @ompi_coll_tuned_forced_getvalues(i32 noundef 8, ptr noundef nonnull %i.bu)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  store ptr null, ptr %i.bv, align 8, !tbaa !77
  %i.bw = load i32, ptr %i.bu, align 8, !tbaa !79
  %.not227 = icmp ne i32 %i.bw, 0                 ; 2 uses
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_tuned_component, i64 288), align 8, !tbaa !81 ; 2 uses
  %.not228 = icmp eq ptr %i.bx, null
  br i1 %.not228, label %select.unfold313, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.by = call ptr @ompi_coll_tuned_get_com_rule_ptr(ptr noundef nonnull %i.bx, i32 noundef 8, i32 noundef %.0183) #6 ; 2 uses
  store ptr %i.by, ptr %i.bv, align 8, !tbaa !77
  %.not229 = icmp ne ptr %i.by, null
  %or.cond356 = select i1 %.not229, i1 true, i1 %.not227
  br i1 %or.cond356, label %.thread314, label %bb.w

select.unfold313:                                 ; preds = %bb.u
  br i1 %.not227, label %.thread314, label %bb.w

.thread314:                                       ; preds = %bb.v, %select.unfold313
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr @ompi_coll_tuned_exscan_intra_dec_dynamic, ptr %i.bz, align 8, !tbaa !64
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread314, %select.unfold313
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 780 ; 2 uses
  call fastcc void @ompi_coll_tuned_forced_getvalues(i32 noundef 9, ptr noundef nonnull %i.ca)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  store ptr null, ptr %i.cb, align 8, !tbaa !77
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !79
  %.not230 = icmp ne i32 %i.cc, 0                 ; 2 uses
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_tuned_component, i64 288), align 8, !tbaa !81 ; 2 uses
  %.not231 = icmp eq ptr %i.cd, null
  br i1 %.not231, label %select.unfold316, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ce = call ptr @ompi_coll_tuned_get_com_rule_ptr(ptr noundef nonnull %i.cd, i32 noundef 9, i32 noundef %.0183) #6 ; 2 uses
  store ptr %i.ce, ptr %i.cb, align 8, !tbaa !77
  %.not232 = icmp ne ptr %i.ce, null
  %or.cond358 = select i1 %.not232, i1 true, i1 %.not230
  br i1 %or.cond358, label %.thread317, label %bb.y

select.unfold316:                                 ; preds = %bb.w
  br i1 %.not230, label %.thread317, label %bb.y

.thread317:                                       ; preds = %bb.x, %select.unfold316
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr @ompi_coll_tuned_gather_intra_dec_dynamic, ptr %i.cf, align 8, !tbaa !65
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread317, %select.unfold316
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  call fastcc void @ompi_coll_tuned_forced_getvalues(i32 noundef 10, ptr noundef nonnull %i.cg)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  store ptr null, ptr %i.ch, align 8, !tbaa !77
  %i.ci = load i32, ptr %i.cg, align 8, !tbaa !79
  %.not233 = icmp ne i32 %i.ci, 0                 ; 2 uses
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_tuned_component, i64 288), align 8, !tbaa !81 ; 2 uses
  %.not234 = icmp eq ptr %i.cj, null
  br i1 %.not234, label %select.unfold319, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ck = call ptr @ompi_coll_tuned_get_com_rule_ptr(ptr noundef nonnull %i.cj, i32 noundef 10, i32 noundef %.0183) #6 ; 2 uses
  store ptr %i.ck, ptr %i.ch, align 8, !tbaa !77
  %.not235 = icmp ne ptr %i.ck, null
  %or.cond360 = select i1 %.not235, i1 true, i1 %.not233
  br i1 %or.cond360, label %.thread320, label %bb.aa

select.unfold319:                                 ; preds = %bb.y
  br i1 %.not233, label %.thread320, label %bb.aa

.thread320:                                       ; preds = %bb.z, %select.unfold319
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr null, ptr %i.cl, align 8, !tbaa !66
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.thread320, %select.unfold319
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 820 ; 2 uses
  call fastcc void @ompi_coll_tuned_forced_getvalues(i32 noundef 11, ptr noundef nonnull %i.cm)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  store ptr null, ptr %i.cn, align 8, !tbaa !77
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !79
  %.not236 = icmp ne i32 %i.co, 0                 ; 2 uses
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_tuned_component, i64 288), align 8, !tbaa !81 ; 2 uses
  %.not237 = icmp eq ptr %i.cp, null
  br i1 %.not237, label %select.unfold322, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cq = call ptr @ompi_coll_tuned_get_com_rule_ptr(ptr noundef nonnull %i.cp, i32 noundef 11, i32 noundef %.0183) #6 ; 2 uses
  store ptr %i.cq, ptr %i.cn, align 8, !tbaa !77
  %.not238 = icmp ne ptr %i.cq, null
  %or.cond362 = select i1 %.not238, i1 true, i1 %.not236
  br i1 %or.cond362, label %.thread323, label %bb.ac

select.unfold322:                                 ; preds = %bb.aa
  br i1 %.not236, label %.thread323, label %bb.ac

.thread323:                                       ; preds = %bb.ab, %select.unfold322
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @ompi_coll_tuned_reduce_intra_dec_dynamic, ptr %i.cr, align 8, !tbaa !67
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.thread323, %select.unfold322
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  call fastcc void @ompi_coll_tuned_forced_getvalues(i32 noundef 12, ptr noundef nonnull %i.cs)
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  store ptr null, ptr %i.ct, align 8, !tbaa !77
  %i.cu = load i32, ptr %i.cs, align 8, !tbaa !79
  %.not239 = icmp ne i32 %i.cu, 0                 ; 2 uses
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_tuned_component, i64 288), align 8, !tbaa !81 ; 2 uses
  %.not240 = icmp eq ptr %i.cv, null
  br i1 %.not240, label %select.unfold325, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cw = call ptr @ompi_coll_tuned_get_com_rule_ptr(ptr noundef nonnull %i.cv, i32 noundef 12, i32 noundef %.0183) #6 ; 2 uses
  store ptr %i.cw, ptr %i.ct, align 8, !tbaa !77
  %.not241 = icmp ne ptr %i.cw, null
  %or.cond364 = select i1 %.not241, i1 true, i1 %.not239
  br i1 %or.cond364, label %.thread326, label %bb.ae

select.unfold325:                                 ; preds = %bb.ac
  br i1 %.not239, label %.thread326, label %bb.ae

.thread326:                                       ; preds = %bb.ad, %select.unfold325
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @ompi_coll_tuned_reduce_scatter_intra_dec_dynamic, ptr %i.cx, align 8, !tbaa !68
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.thread326, %select.unfold325
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 860 ; 2 uses
  call fastcc void @ompi_coll_tuned_forced_getvalues(i32 noundef 13, ptr noundef nonnull %i.cy)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 2 uses
  store ptr null, ptr %i.cz, align 8, !tbaa !77
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !79
  %.not242 = icmp ne i32 %i.da, 0                 ; 2 uses
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_tuned_component, i64 288), align 8, !tbaa !81 ; 2 uses
  %.not243 = icmp eq ptr %i.db, null
  br i1 %.not243, label %select.unfold328, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dc = call ptr @ompi_coll_tuned_get_com_rule_ptr(ptr noundef nonnull %i.db, i32 noundef 13, i32 noundef %.0183) #6 ; 2 uses
  store ptr %i.dc, ptr %i.cz, align 8, !tbaa !77
  %.not244 = icmp ne ptr %i.dc, null
  %or.cond366 = select i1 %.not244, i1 true, i1 %.not242
  br i1 %or.cond366, label %.thread329, label %bb.ag

select.unfold328:                                 ; preds = %bb.ae
  br i1 %.not242, label %.thread329, label %bb.ag

.thread329:                                       ; preds = %bb.af, %select.unfold328
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr @ompi_coll_tuned_reduce_scatter_block_intra_dec_dynamic, ptr %i.dd, align 8, !tbaa !69
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.thread329, %select.unfold328
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  call fastcc void @ompi_coll_tuned_forced_getvalues(i32 noundef 14, ptr noundef nonnull %i.de)
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 2 uses
  store ptr null, ptr %i.df, align 8, !tbaa !77
  %i.dg = load i32, ptr %i.de, align 8, !tbaa !79
  %.not245 = icmp ne i32 %i.dg, 0                 ; 2 uses
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_tuned_component, i64 288), align 8, !tbaa !81 ; 2 uses
  %.not246 = icmp eq ptr %i.dh, null
  br i1 %.not246, label %select.unfold331, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
end_hunk_0
