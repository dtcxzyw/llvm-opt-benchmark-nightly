inline.NumInlined: 1359
inline.NumDeleted: 295
begin_hunk_0_@mi_stats_reset:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !140
  %i.aa = sdiv i64 %i.z, 1000000
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #56
  %reass.add.i = sub i64 %i.x, %i.t
  %reass.mul.i = mul i64 %reass.add.i, 1000
  %.neg2.i = add nsw i64 %i.aa, %.neg.i
  %i.ab = add i64 %.neg2.i, %reass.mul.i
  store i64 %i.ab, ptr @mi_clock_diff, align 8, !tbaa !105
  br label %_mi_clock_start.exit

_mi_clock_start.exit:                             ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #56
  %i.ac = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %0) #56 ; 0 uses
  %i.ad = load i64, ptr %0, align 8, !tbaa !138
  %i.ae = mul i64 %i.ad, 1000
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !140
  %i.ah = sdiv i64 %i.ag, 1000000
  %i.ai = add i64 %i.ah, %i.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #56
  store i64 %i.ai, ptr @mi_process_start, align 8, !tbaa !105
  br label %bb.i

bb.i:                                             ; preds = %_mi_clock_start.exit, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i64 @mi_option_get_clamp(i32 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ugt i32 %0, 25
  br i1 %i.a, label %mi_option_get.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr [32 x i8], ptr @options, i64 %i.b ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !111
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d, !prof !17

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @mi_option_init(ptr noundef %i.c), !inline_history !113
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load i64, ptr %i.c, align 16, !tbaa !114
  br label %mi_option_get.exit

mi_option_get.exit:                               ; preds = %bb.a, %bb.d
  %.0.i = phi i64 [ %i.g, %bb.d ], [ 0, %bb.a ]   ; 2 uses
  %i.h = icmp slt i64 %.0.i, %1
  %i.i = tail call i64 @llvm.smin.i64(i64 %.0.i, i64 %2)
  %i.j = select i1 %i.h, i64 %1, i64 %i.i
  ret i64 %i.j
}

; Function Attrs: nounwind uwtable
define hidden i64 @mi_option_get(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ugt i32 %0, 25
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr [32 x i8], ptr @options, i64 %i.b ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !111
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d, !prof !17

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @mi_option_init(ptr noundef %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load i64, ptr %i.c, align 16, !tbaa !114
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i64 [ %i.g, %bb.d ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal void @_mi_process_init() #2 {
bb.a:
  tail call fastcc void @mi_heap_main_init()
  store i1 true, ptr @os_preloading, align 1
  %i.a = tail call i32 @atexit(ptr noundef nonnull @mi_process_done) #56 ; 0 uses
  tail call void @_mi_options_init()
  %.b.i.i = load i1, ptr @mi_process_setup_auto_thread_done.tls_initialized, align 1
  br i1 %.b.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i1 true, ptr @mi_process_setup_auto_thread_done.tls_initialized, align 1
  %i.b = tail call i32 @pthread_key_create(ptr noundef nonnull @_mi_heap_default_key, ptr noundef nonnull @mi_pthread_done) #56 ; 0 uses
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  store ptr @_mi_heap_main, ptr %i.c, align 8, !tbaa !54
  %i.d = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !7 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.d, -1
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @pthread_setspecific(i32 noundef %i.d, ptr noundef nonnull @_mi_heap_main) #56 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  tail call void @mi_process_init()
  %i.f = load i8, ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_main, i64 3020), align 4, !tbaa !237, !range !42, !noundef !43
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.e, label %mi_process_load.exit

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @mi_random_init_ex(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_mi_heap_main, i64 2888), i1 noundef zeroext false)
  br label %mi_process_load.exit

mi_process_load.exit:                             ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @mi_version() local_unnamed_addr #3 {
bb.a:
  ret i32 212
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_options_init() local_unnamed_addr #2 {
bb.a:
  %i.a = atomicrmw add ptr @out_len, i64 1 acq_rel, align 8
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.a, i64 32768)
  %i.b = getelementptr i8, ptr @out_buf, i64 %spec.store.select.i.i ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !60
  %i.c = load i8, ptr @out_buf, align 16, !tbaa !60
  %.not3.i.i = icmp eq i8 %i.c, 0
  br i1 %.not3.i.i, label %mi_add_stderr_output.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.e = tail call i32 @fputs(ptr noundef nonnull readonly @out_buf, ptr noundef %i.d) #65 ; 0 uses
  br label %mi_add_stderr_output.exit

mi_add_stderr_output.exit:                        ; preds = %bb.a, %bb.b
  store i8 10, ptr %i.b, align 1, !tbaa !60
  store volatile ptr @mi_out_buf_stderr, ptr @mi_out_default, align 8, !tbaa !40
  br label %bb.f

bb.c:                                             ; preds = %mi_option_get.exit7
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 616), align 8, !tbaa !111
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %mi_option_get.exit, !prof !17

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 608)), !inline_history !113
  br label %mi_option_get.exit

mi_option_get.exit:                               ; preds = %bb.c, %bb.d
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 608), align 16, !tbaa !114
  store i64 %i.h, ptr @mi_max_error_count, align 8, !tbaa !105
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 648), align 8, !tbaa !111
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %mi_option_get.exit6, !prof !17

bb.e:                                             ; preds = %mi_option_get.exit
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 640)), !inline_history !113
  br label %mi_option_get.exit6

mi_option_get.exit6:                              ; preds = %mi_option_get.exit, %bb.e
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 640), align 16, !tbaa !114
  store i64 %i.k, ptr @mi_max_warning_count, align 8, !tbaa !105
  ret void

bb.f:                                             ; preds = %mi_add_stderr_output.exit, %mi_option_get.exit7
  %indvars.iv = phi i64 [ 0, %mi_add_stderr_output.exit ], [ %indvars.iv.next, %mi_option_get.exit7 ] ; 2 uses
  %i.l = getelementptr [32 x i8], ptr @options, i64 %indvars.iv ; 4 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !111
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %mi_option_get.exit7, !prof !17

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @mi_option_init(ptr noundef %i.l), !inline_history !113
  br label %mi_option_get.exit7

mi_option_get.exit7:                              ; preds = %bb.f, %bb.g
  %i.p = getelementptr i8, ptr %i.l, i64 16
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !240
  %i.r = load i64, ptr %i.l, align 16, !tbaa !114
  tail call void (ptr, ...) @_mi_verbose_message(ptr noundef nonnull @.str.22, ptr noundef %i.q, i64 noundef %i.r)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 26
  br i1 %exitcond.not, label %bb.c, label %bb.f, !llvm.loop !241
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mi_option_init(ptr noundef captures(none) %0) unnamed_addr #2 {
.lr.ph.i:
  %i.a = alloca [65 x i8], align 16               ; 8 uses
  %i.b = alloca [65 x i8], align 16               ; 19 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #56
  %1 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store <8 x i8> <i8 109, i8 105, i8 109, i8 97, i8 108, i8 108, i8 111, i8 99>, ptr %i.b, align 16, !tbaa !60
  %2 = getelementptr inbounds nuw i8, ptr %i.b, i64 9 ; 2 uses
  store i8 95, ptr %1, align 8, !tbaa !60
  store i8 0, ptr %2, align 1, !tbaa !60
  %i.d = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !240  ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_mi_strlcat.exit, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %.lr.ph.i, %.lr.ph.i40
  %.017.i = phi i64 [ %i.h, %.lr.ph.i40 ], [ 65, %.lr.ph.i ] ; 2 uses
  %.01216.i41 = phi ptr [ %i.g, %.lr.ph.i40 ], [ %i.b, %.lr.ph.i ]
  %i.g = getelementptr i8, ptr %.01216.i41, i64 1 ; 4 uses
  %i.h = add nsw i64 %.017.i, -1                  ; 2 uses
  %i.i = load i8, ptr %i.g, align 1, !tbaa !60
  %i.j = icmp ne i8 %i.i, 0
  %i.k = icmp samesign ugt i64 %.017.i, 2         ; 2 uses
  %i.l = select i1 %i.j, i1 %i.k, i1 false
  br i1 %i.l, label %.lr.ph.i40, label %.preheader.i.i, !llvm.loop !242

.preheader.i.i:                                   ; preds = %.lr.ph.i40
  %i.m = load i8, ptr %i.e, align 1, !tbaa !60    ; 2 uses
  %i.n = icmp ne i8 %i.m, 0
  %i.o = and i1 %i.k, %i.n
  br i1 %i.o, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.p = phi i8 [ %i.t, %.lr.ph.i.i ], [ %i.m, %.preheader.i.i ]
  %.018.i.i = phi i64 [ %i.s, %.lr.ph.i.i ], [ %i.h, %.preheader.i.i ]
  %.01117.i.i = phi ptr [ %i.q, %.lr.ph.i.i ], [ %i.e, %.preheader.i.i ]
  %.01216.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.g, %.preheader.i.i ] ; 2 uses
  %i.q = getelementptr i8, ptr %.01117.i.i, i64 1 ; 2 uses
  %i.r = getelementptr i8, ptr %.01216.i.i, i64 1 ; 2 uses
  store i8 %i.p, ptr %.01216.i.i, align 1, !tbaa !60
  %i.s = add nsw i64 %.018.i.i, -1                ; 2 uses
  %i.t = load i8, ptr %i.q, align 1, !tbaa !60    ; 2 uses
  %i.u = icmp ne i8 %i.t, 0
  %i.v = icmp ugt i64 %i.s, 1
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !243

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.012.lcssa.i.i = phi ptr [ %i.g, %.preheader.i.i ], [ %i.r, %.lr.ph.i.i ]
  store i8 0, ptr %.012.lcssa.i.i, align 1, !tbaa !60
  br label %_mi_strlcat.exit

_mi_strlcat.exit:                                 ; preds = %.lr.ph.i, %._crit_edge.i.i
  %i.x = call noundef zeroext i1 @_mi_prim_getenv(ptr noundef nonnull readonly %i.b, ptr noundef nonnull %i.a, i64 noundef 65)
  br i1 %i.x, label %.preheader.i64.preheader, label %bb.a

bb.a:                                             ; preds = %_mi_strlcat.exit
  %i.y = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !244  ; 3 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.t, label %.lr.ph.i60.preheader

.lr.ph.i60.preheader:                             ; preds = %bb.a
  store <8 x i8> <i8 109, i8 105, i8 109, i8 97, i8 108, i8 108, i8 111, i8 99>, ptr %i.b, align 16, !tbaa !60
  store i8 95, ptr %1, align 8, !tbaa !60
  store i8 0, ptr %2, align 1, !tbaa !60
  br label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %.lr.ph.i60.preheader, %.lr.ph.i60
  %.017.i61 = phi i64 [ %i.ab, %.lr.ph.i60 ], [ 65, %.lr.ph.i60.preheader ] ; 2 uses
  %.01216.i62 = phi ptr [ %i.aa, %.lr.ph.i60 ], [ %i.b, %.lr.ph.i60.preheader ]
  %i.aa = getelementptr i8, ptr %.01216.i62, i64 1 ; 4 uses
  %i.ab = add nsw i64 %.017.i61, -1               ; 2 uses
  %i.ac = load i8, ptr %i.aa, align 1, !tbaa !60
  %i.ad = icmp ne i8 %i.ac, 0
  %i.ae = icmp samesign ugt i64 %.017.i61, 2      ; 2 uses
  %i.af = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %i.af, label %.lr.ph.i60, label %.preheader.i.i50, !llvm.loop !242

.preheader.i.i50:                                 ; preds = %.lr.ph.i60
  %i.ag = load i8, ptr %i.z, align 1, !tbaa !60   ; 2 uses
  %i.ah = icmp ne i8 %i.ag, 0
  %i.ai = and i1 %i.ae, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i56, label %_mi_strlcat.exit63

.lr.ph.i.i56:                                     ; preds = %.preheader.i.i50, %.lr.ph.i.i56
  %i.aj = phi i8 [ %i.an, %.lr.ph.i.i56 ], [ %i.ag, %.preheader.i.i50 ]
  %.018.i.i57 = phi i64 [ %i.am, %.lr.ph.i.i56 ], [ %i.ab, %.preheader.i.i50 ]
  %.01117.i.i58 = phi ptr [ %i.ak, %.lr.ph.i.i56 ], [ %i.z, %.preheader.i.i50 ]
  %.01216.i.i59 = phi ptr [ %i.al, %.lr.ph.i.i56 ], [ %i.aa, %.preheader.i.i50 ] ; 2 uses
  %i.ak = getelementptr i8, ptr %.01117.i.i58, i64 1 ; 2 uses
  %i.al = getelementptr i8, ptr %.01216.i.i59, i64 1 ; 2 uses
  store i8 %i.aj, ptr %.01216.i.i59, align 1, !tbaa !60
  %i.am = add nsw i64 %.018.i.i57, -1             ; 2 uses
  %i.an = load i8, ptr %i.ak, align 1, !tbaa !60  ; 2 uses
  %i.ao = icmp ne i8 %i.an, 0
  %i.ap = icmp ugt i64 %i.am, 1
  %i.aq = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %i.aq, label %.lr.ph.i.i56, label %_mi_strlcat.exit63, !llvm.loop !243

_mi_strlcat.exit63:                               ; preds = %.lr.ph.i.i56, %.preheader.i.i50
  %.012.lcssa.i.i55 = phi ptr [ %i.aa, %.preheader.i.i50 ], [ %i.al, %.lr.ph.i.i56 ]
  store i8 0, ptr %.012.lcssa.i.i55, align 1, !tbaa !60
  %i.ar = call noundef zeroext i1 @_mi_prim_getenv(ptr noundef nonnull readonly %i.b, ptr noundef nonnull %i.a, i64 noundef 65)
  br i1 %i.ar, label %bb.b, label %bb.t

bb.b:                                             ; preds = %_mi_strlcat.exit63
  %i.as = load ptr, ptr %i.y, align 8, !tbaa !244
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !240
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.89, ptr noundef %i.as, ptr noundef %i.at)
  br label %.preheader.i64.preheader

.preheader.i64.preheader:                         ; preds = %_mi_strlcat.exit, %bb.b
  br label %.preheader.i64

.preheader.i64:                                   ; preds = %.preheader.i64.preheader, %.preheader.i64
  %.0.i = phi i64 [ %i.az, %.preheader.i64 ], [ 0, %.preheader.i64.preheader ] ; 13 uses
  %i.au = getelementptr i8, ptr %i.a, i64 %.0.i
  %i.av = load i8, ptr %i.au, align 1, !tbaa !60
  %i.aw = icmp ne i8 %i.av, 0
  %i.ax = icmp samesign ult i64 %.0.i, 64
  %i.ay = and i1 %i.ax, %i.aw
  %i.az = add nuw nsw i64 %.0.i, 1
  br i1 %i.ay, label %.preheader.i64, label %_mi_strnlen.exit.preheader, !llvm.loop !245

_mi_strnlen.exit.preheader:                       ; preds = %.preheader.i64
  %.not80 = icmp eq i64 %.0.i, 0
  br i1 %.not80, label %_mi_strnlen.exit._crit_edge, label %iter.check

iter.check:                                       ; preds = %_mi_strnlen.exit.preheader
  %min.iters.check = icmp samesign ult i64 %.0.i, 8
  br i1 %min.iters.check, label %_mi_strnlen.exit.preheader120, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check112 = icmp samesign ult i64 %.0.i, 32
  br i1 %min.iters.check112, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.0.i, 24
  %n.vec = and i64 %.0.i, 9223372036854775776     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ba = getelementptr i8, ptr %i.a, i64 %index  ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 16
  %wide.load = load <16 x i8>, ptr %i.ba, align 16, !tbaa !60 ; 3 uses
  %wide.load113 = load <16 x i8>, ptr %i.bb, align 16, !tbaa !60 ; 3 uses
  %i.bc = add <16 x i8> %wide.load, splat (i8 -97)
  %i.bd = add <16 x i8> %wide.load113, splat (i8 -97)
  %i.be = icmp ult <16 x i8> %i.bc, splat (i8 26)
  %i.bf = icmp ult <16 x i8> %i.bd, splat (i8 26)
  %i.bg = add nsw <16 x i8> %wide.load, splat (i8 -32)
  %i.bh = add nsw <16 x i8> %wide.load113, splat (i8 -32)
  %i.bi = select <16 x i1> %i.be, <16 x i8> %i.bg, <16 x i8> %wide.load
  %i.bj = select <16 x i1> %i.bf, <16 x i8> %i.bh, <16 x i8> %wide.load113
  %i.bk = getelementptr i8, ptr %i.b, i64 %index  ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 16
  store <16 x i8> %i.bi, ptr %i.bk, align 16, !tbaa !60
  store <16 x i8> %i.bj, ptr %i.bl, align 16, !tbaa !60
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !246

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i, %n.vec
  br i1 %cmp.n, label %_mi_strnlen.exit._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %_mi_strnlen.exit.preheader120, label %vec.epilog.ph, !prof !247

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec115 = and i64 %.0.i, 9223372036854775800  ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index116 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next118, %vec.epilog.vector.body ] ; 3 uses
  %i.bn = getelementptr i8, ptr %i.a, i64 %index116
  %wide.load117 = load <8 x i8>, ptr %i.bn, align 8, !tbaa !60 ; 3 uses
  %i.bo = add <8 x i8> %wide.load117, splat (i8 -97)
  %i.bp = icmp ult <8 x i8> %i.bo, splat (i8 26)
  %i.bq = add nsw <8 x i8> %wide.load117, splat (i8 -32)
  %i.br = select <8 x i1> %i.bp, <8 x i8> %i.bq, <8 x i8> %wide.load117
  %i.bs = getelementptr i8, ptr %i.b, i64 %index116
  store <8 x i8> %i.br, ptr %i.bs, align 8, !tbaa !60
  %index.next118 = add nuw i64 %index116, 8       ; 2 uses
  %i.bt = icmp eq i64 %index.next118, %n.vec115
  br i1 %i.bt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !248

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n119 = icmp eq i64 %.0.i, %n.vec115
  br i1 %cmp.n119, label %_mi_strnlen.exit._crit_edge, label %_mi_strnlen.exit.preheader120

_mi_strnlen.exit.preheader120:                    ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03379.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec115, %vec.epilog.middle.block ]
  br label %_mi_strnlen.exit

_mi_strnlen.exit._crit_edge:                      ; preds = %_mi_strnlen.exit, %middle.block, %vec.epilog.middle.block, %_mi_strnlen.exit.preheader
  %i.bu = getelementptr i8, ptr %i.b, i64 %.0.i
  store i8 0, ptr %i.bu, align 1, !tbaa !60
  %i.bv = load i8, ptr %i.b, align 16, !tbaa !60
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %bb.d, label %bb.c

_mi_strnlen.exit:                                 ; preds = %_mi_strnlen.exit.preheader120, %_mi_strnlen.exit
  %.03379 = phi i64 [ %i.cc, %_mi_strnlen.exit ], [ %.03379.ph, %_mi_strnlen.exit.preheader120 ] ; 3 uses
  %i.bx = getelementptr i8, ptr %i.a, i64 %.03379
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !60  ; 3 uses
  %i.bz = add i8 %i.by, -97
  %or.cond.i = icmp ult i8 %i.bz, 26
  %i.ca = add nsw i8 %i.by, -32
  %.0.i65 = select i1 %or.cond.i, i8 %i.ca, i8 %i.by
  %i.cb = getelementptr i8, ptr %i.b, i64 %.03379
  store i8 %.0.i65, ptr %i.cb, align 1, !tbaa !60
  %i.cc = add nuw nsw i64 %.03379, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cc, %.0.i
  br i1 %exitcond.not, label %_mi_strnlen.exit._crit_edge, label %_mi_strnlen.exit, !llvm.loop !249

bb.c:                                             ; preds = %_mi_strnlen.exit._crit_edge
  %i.cd = call ptr @strstr(ptr noundef nonnull dereferenceable(1) @.str.90, ptr noundef nonnull dereferenceable(1) %i.b) #62
  %.not38 = icmp eq ptr %i.cd, null
  br i1 %.not38, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %_mi_strnlen.exit._crit_edge
  store i64 1, ptr %0, align 8, !tbaa !114
  %i.ce = getelementptr i8, ptr %0, i64 8
  store i32 2, ptr %i.ce, align 8, !tbaa !111
  br label %bb.v

bb.e:                                             ; preds = %bb.c
  %i.cf = call ptr @strstr(ptr noundef nonnull dereferenceable(1) @.str.91, ptr noundef nonnull dereferenceable(1) %i.b) #62
  %.not39 = icmp eq ptr %i.cf, null
  br i1 %.not39, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %0, align 8, !tbaa !114
  %i.cg = getelementptr i8, ptr %0, i64 8
  store i32 2, ptr %i.cg, align 8, !tbaa !111
  br label %bb.v

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #56
  store ptr %i.b, ptr %i.c, align 8, !tbaa !106
  %i.ch = call i64 @__isoc23_strtol(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 10) #56 ; 5 uses
  %i.ci = getelementptr i8, ptr %0, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !250 ; 2 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !106 ; 4 uses
  switch i32 %i.cj, label %.thread67 [
    i32 9, label %bb.h
    i32 23, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.ck = load i8, ptr %.pre, align 1, !tbaa !60  ; 2 uses
  switch i8 %i.ck, label %bb.k [
    i8 75, label %thread-pre-split
    i8 77, label %bb.i
    i8 71, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.cl = shl i64 %i.ch, 10
  br label %thread-pre-split

end_hunk_0
