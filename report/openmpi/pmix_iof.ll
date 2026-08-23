Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/pmix_iof?download=true
inline.NumInlined: 292
inline.NumDeleted: 18
loop-unroll.NumUnrolled: 6
begin_hunk_0_@write_output_line:bb.a
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_iof_write_output_t_class, i64 40), align 8, !tbaa !71 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !72 ; 2 uses
  %.not6.i.i79 = icmp eq ptr %i.cu, null
  br i1 %.not6.i.i79, label %pmix_obj_new_tma.exit83, label %.lr.ph.i.i80

.lr.ph.i.i80:                                     ; preds = %bb.x, %.lr.ph.i.i80
  %i.cv = phi ptr [ %i.cx, %.lr.ph.i.i80 ], [ %i.cu, %bb.x ]
  %.07.i.i81 = phi ptr [ %i.cw, %.lr.ph.i.i80 ], [ %i.ct, %bb.x ]
  tail call void %i.cv(ptr noundef nonnull %i.cl) #18, !inline_history !73
  %i.cw = getelementptr inbounds nuw i8, ptr %.07.i.i81, i64 8 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !72 ; 2 uses
  %.not.i.i82 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i82, label %pmix_obj_new_tma.exit83, label %.lr.ph.i.i80, !llvm.loop !74

pmix_obj_new_tma.exit83:                          ; preds = %.lr.ph.i.i80, %bb.w, %bb.x
  %i.cy = getelementptr inbounds nuw i8, ptr %.052, i64 152
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !267 ; 2 uses
  %i.da = sext i32 %i.cz to i64                   ; 2 uses
  %i.db = tail call noalias ptr @malloc(i64 noundef %i.da) #19 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cl, i64 144
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !265
  %i.dd = getelementptr inbounds nuw i8, ptr %.052, i64 144
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !265
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.db, ptr align 1 %i.de, i64 %i.da, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %i.cl, i64 152
  store i32 %i.cz, ptr %i.df, align 8, !tbaa !267
  %i.dg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_client_globals, i64 2496), align 8, !tbaa !220 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cl, i64 128
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !220
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 120
  store volatile ptr %i.cl, ptr %i.di, align 8, !tbaa !122
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cl, i64 120
  store ptr getelementptr inbounds nuw (i8, ptr @pmix_client_globals, i64 2368), ptr %i.dj, align 8, !tbaa !122
  store ptr %i.cl, ptr getelementptr inbounds nuw (i8, ptr @pmix_client_globals, i64 2496), align 8, !tbaa !220
  %i.dk = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_client_globals, i64 2512), align 8, !tbaa !218
  %i.dl = add i64 %i.dk, 1
  store volatile i64 %i.dl, ptr getelementptr inbounds nuw (i8, ptr @pmix_client_globals, i64 2512), align 8, !tbaa !218
  %i.dm = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_client_globals, i64 2208), align 8, !tbaa !271, !range !22, !noundef !23
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %pmix_obj_new_tma.exit83
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @pmix_client_globals, i64 2208), align 8, !tbaa !271
  fence release
  %i.do = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_client_globals, i64 2209), align 1, !tbaa !272, !range !22, !noundef !23
  %i.dp = trunc nuw i8 %i.do to i1
  %spec.select61 = select i1 %i.dp, ptr getelementptr inbounds nuw (i8, ptr @pmix_client_globals, i64 2224), ptr null
  %i.dq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_client_globals, i64 2216), align 8, !tbaa !273
  %i.dr = tail call i32 @event_add(ptr noundef %i.dq, ptr noundef %spec.select61) #18
  %.not59 = icmp eq i32 %i.dr, 0
  br i1 %.not59, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ds = tail call ptr @PMIx_Error_string(i32 noundef -27) #18
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef %i.ds, ptr noundef nonnull @.str.2, i32 noundef 1510) #18
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %pmix_obj_new_tma.exit83, %bb.t
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.du = load i8, ptr %i.dt, align 8, !tbaa !274, !range !22, !noundef !23
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dw = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_client_globals, i64 768), align 8, !tbaa !26 ; 3 uses
  %or.cond = icmp ult i32 %i.dw, 64
  br i1 %or.cond, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !39
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ec = tail call ptr @pmix_util_print_name_args(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 4)) #18
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.dw, ptr noundef nonnull @.str.81, ptr noundef %i.ec) #18
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.ac, %bb.ad
  store i8 1, ptr %i.dt, align 8, !tbaa !274
  fence release
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 145
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !275, !range !22, !noundef !23
  %i.ef = trunc nuw i8 %i.ee to i1
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 160
  %spec.select62 = select i1 %i.ef, ptr %i.eg, ptr null
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !276
  %i.ej = tail call i32 @event_add(ptr noundef %i.ei, ptr noundef %spec.select62) #18
  %.not60 = icmp eq i32 %i.ej, 0
  br i1 %.not60, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ek = tail call ptr @PMIx_Error_string(i32 noundef -27) #18
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef %i.ek, ptr noundef nonnull @.str.2, i32 noundef 1520) #18
  br label %bb.ag

bb.ag:                                            ; preds = %bb.aa, %bb.af, %bb.ae, %bb.h
  %.053 = phi i32 [ -47, %bb.h ], [ 0, %bb.ae ], [ 0, %bb.af ], [ 0, %bb.aa ]
  ret i32 %.053
}

declare void @PMIx_Xfer_procid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @pmix_iof_flush_residuals() local_unnamed_addr #0 {
bb.a:
  %.014 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_server_globals, i64 2320), align 8, !tbaa !122 ; 2 uses
  %.not15 = icmp eq ptr %.014, getelementptr inbounds nuw (i8, ptr @pmix_server_globals, i64 2200)
  br i1 %.not15, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.016 = phi ptr [ %.0, %bb.c ], [ %.014, %bb.a ] ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.016, i64 144
  %i.b = getelementptr inbounds nuw i8, ptr %.016, i64 408
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !254
  %i.d = getelementptr inbounds nuw i8, ptr %.016, i64 416
  %i.e = getelementptr inbounds nuw i8, ptr %.016, i64 448
  %i.f = load i16, ptr %i.e, align 8, !tbaa !248
  %i.g = getelementptr inbounds nuw i8, ptr %.016, i64 450
  %i.h = load i8, ptr %i.g, align 2, !tbaa !255, !range !22, !noundef !23
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %.016, i64 451
  %i.k = load i8, ptr %i.j, align 1, !tbaa !256, !range !22, !noundef !23
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %.016, i64 456
  %i.n = tail call fastcc i32 @write_output_line(ptr noundef nonnull %i.a, ptr noundef %i.c, ptr noundef nonnull %i.d, i16 noundef zeroext %i.f, i1 noundef zeroext %i.i, i1 noundef zeroext %i.l, ptr noundef nonnull %i.m) ; 2 uses
  switch i32 %i.n, label %bb.b [
    i32 0, label %bb.c
    i32 -2, label %.loopexit
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.o = tail call ptr @PMIx_Error_string(i32 noundef %i.n) #18
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef %i.o, ptr noundef nonnull @.str.2, i32 noundef 1739) #18
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.016, i64 120
  %.0 = load ptr, ptr %i.p, align 8, !tbaa !122   ; 2 uses
  %.not = icmp eq ptr %.0, getelementptr inbounds nuw (i8, ptr @pmix_server_globals, i64 2200)
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !277

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @pmix_iof_static_dump_output(ptr nofree noundef captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !219
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %pmix_list_remove_first.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 4 uses
  %i.f = load volatile i64, ptr %i.e, align 8, !tbaa !218
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %pmix_list_remove_first.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 584
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.022 = phi i1 [ false, %.lr.ph ], [ %.1, %bb.j ]
  %i.i = load volatile i64, ptr %i.e, align 8, !tbaa !218
  %i.j = add i64 %i.i, -1
  store volatile i64 %i.j, ptr %i.e, align 8, !tbaa !218
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !219  ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.m = load volatile ptr, ptr %i.l, align 8, !tbaa !220
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 120 ; 2 uses
  %i.o = load volatile ptr, ptr %i.n, align 8, !tbaa !122
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  store volatile ptr %i.m, ptr %i.p, align 8, !tbaa !220
  %i.q = load volatile ptr, ptr %i.n, align 8, !tbaa !122
  store ptr %i.q, ptr %i.b, align 8, !tbaa !219
  br i1 %.022, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 152 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !267  ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %i.h, align 8, !tbaa !247
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !265
  %i.x = zext nneg i32 %i.s to i64
  %i.y = tail call i64 @write(i32 noundef %i.u, ptr noundef %i.w, i64 noundef %i.x) #18
  %i.z = trunc i64 %i.y to i32
  %i.aa = load i32, ptr %i.r, align 8, !tbaa !267
  %i.ab = icmp sgt i32 %i.aa, %i.z
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c
  %.1 = phi i1 [ true, %bb.b ], [ false, %bb.c ], [ %i.ab, %bb.d ]
  %i.ac = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.k) #18
  %i.ad = icmp eq i32 %i.ac, 35
  br i1 %i.ad, label %bb.f, label %pmix_obj_update.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = tail call ptr @__errno_location() #20
  store i32 35, ptr %i.ae, align 4, !tbaa !67
  tail call void @perror(ptr noundef nonnull @.str.65) #21
  tail call void @abort() #22
  unreachable

pmix_obj_update.exit:                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !70
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !70
  %i.ai = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.k) #18 ; 0 uses
  %i.aj = icmp eq i32 %i.ah, 0
  br i1 %i.aj, label %bb.g, label %bb.j

bb.g:                                             ; preds = %pmix_obj_update.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !69
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !93 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !72 ; 2 uses
  %.not6.i = icmp eq ptr %i.ao, null
  br i1 %.not6.i, label %pmix_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %i.ap = phi ptr [ %i.ar, %.lr.ph.i ], [ %i.ao, %bb.g ]
  %.07.i = phi ptr [ %i.aq, %.lr.ph.i ], [ %i.an, %bb.g ]
  tail call void %i.ap(ptr noundef nonnull %i.k) #18, !inline_history !94
  %i.aq = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !72 ; 2 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %pmix_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !95

pmix_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !96 ; 2 uses
  %.not18 = icmp eq ptr %i.at, null
  br i1 %.not18, label %bb.i, label %bb.h

bb.h:                                             ; preds = %pmix_obj_run_destructors.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  tail call void %i.at(ptr noundef nonnull %i.au, ptr noundef nonnull %i.k) #18, !inline_history !97
  br label %bb.j

bb.i:                                             ; preds = %pmix_obj_run_destructors.exit
  tail call void @free(ptr noundef nonnull %i.k) #18
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %pmix_obj_update.exit
  %i.av = load volatile i64, ptr %i.e, align 8, !tbaa !218
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %pmix_list_remove_first.exit.thread, label %bb.b, !llvm.loop !278

pmix_list_remove_first.exit.thread:               ; preds = %bb.j, %.preheader, %bb.a
  ret void
}

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define void @pmix_iof_write_handler(i32 %0, i16 signext %1, ptr noundef %2) #0 {
bb.a:
  fence acquire
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_client_globals, i64 768), align 8, !tbaa !26 ; 3 uses
  %or.cond = icmp ult i32 %i.a, 64
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !39
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @pmix_util_print_name_args(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 4)) #18
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 584
  %i.i = load i32, ptr %i.h, align 8, !tbaa !247
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.a, ptr noundef nonnull @.str.56, ptr noundef %i.g, i32 noundef %i.i) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 856 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 832 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 584 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 556 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 553 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.ah, %bb.d
  %.065 = phi i32 [ 0, %bb.d ], [ %i.dz, %bb.ah ]
  %i.o = load volatile i64, ptr %i.j, align 8, !tbaa !218
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %pmix_list_remove_first.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load volatile i64, ptr %i.j, align 8, !tbaa !218
  %i.r = add i64 %i.q, -1
  store volatile i64 %i.r, ptr %i.j, align 8, !tbaa !218
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !219  ; 40 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %i.u = load volatile ptr, ptr %i.t, align 8, !tbaa !220
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 120 ; 2 uses
  %i.w = load volatile ptr, ptr %i.v, align 8, !tbaa !122
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  store volatile ptr %i.u, ptr %i.x, align 8, !tbaa !220
  %i.y = load volatile ptr, ptr %i.v, align 8, !tbaa !122
  store ptr %i.y, ptr %i.k, align 8, !tbaa !219
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 152 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !267 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.s) #18
  %i.ad = icmp eq i32 %i.ac, 35
  br i1 %i.ad, label %bb.h, label %pmix_obj_update.exit78

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call ptr @__errno_location() #20
  store i32 35, ptr %i.ae, align 4, !tbaa !67
  tail call void @perror(ptr noundef nonnull @.str.65) #21
  tail call void @abort() #22
  unreachable

pmix_obj_update.exit78:                           ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !70
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !70
  %i.ai = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.s) #18 ; 0 uses
  %i.aj = icmp eq i32 %i.ah, 0
  br i1 %i.aj, label %bb.i, label %bb.l

bb.i:                                             ; preds = %pmix_obj_update.exit78
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !69
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !93 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !72 ; 2 uses
  %.not6.i = icmp eq ptr %i.ao, null
  br i1 %.not6.i, label %pmix_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %i.ap = phi ptr [ %i.ar, %.lr.ph.i ], [ %i.ao, %bb.i ]
  %.07.i = phi ptr [ %i.aq, %.lr.ph.i ], [ %i.an, %bb.i ]
  tail call void %i.ap(ptr noundef nonnull %i.s) #18, !inline_history !94
  %i.aq = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !72 ; 2 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %pmix_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !95

pmix_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !96 ; 2 uses
  %.not76 = icmp eq ptr %i.at, null
  br i1 %.not76, label %bb.k, label %bb.j

bb.j:                                             ; preds = %pmix_obj_run_destructors.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  tail call void %i.at(ptr noundef nonnull %i.au, ptr noundef nonnull %i.s) #18, !inline_history !97
  br label %bb.l

bb.k:                                             ; preds = %pmix_obj_run_destructors.exit
  tail call void @free(ptr noundef nonnull %i.s) #18
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %pmix_obj_update.exit78
  %i.av = load i32, ptr %i.l, align 8, !tbaa !247 ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 2
  br i1 %i.aw, label %bb.m, label %bb.aj

bb.m:                                             ; preds = %bb.l
  %i.ax = tail call i32 @close(i32 noundef %i.av) #18 ; 0 uses
  store i32 -1, ptr %i.l, align 8, !tbaa !247
  br label %bb.aj

bb.n:                                             ; preds = %bb.f
  %i.ay = load i32, ptr %i.l, align 8, !tbaa !247
  %i.az = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !265
  %i.bb = sext i32 %i.aa to i64
  %i.bc = tail call i64 @write(i32 noundef %i.ay, ptr noundef %i.ba, i64 noundef %i.bb) #18 ; 2 uses
  %i.bd = trunc i64 %i.bc to i32                  ; 5 uses
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %bb.o, label %bb.y

bb.o:                                             ; preds = %bb.n
  %i.bf = tail call ptr @__errno_location() #20   ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !67
  switch i32 %i.bg, label %bb.t [
    i32 11, label %bb.p
    i32 4, label %bb.p
end_hunk_0
