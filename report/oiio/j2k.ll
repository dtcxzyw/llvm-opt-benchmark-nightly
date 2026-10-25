Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/j2k?download=true
inline.NumInlined: 159
inline.NumDeleted: 67
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 34
begin_hunk_0_@opj_j2k_write_mct_data_group:bb.a
  %.17994.i = phi i32 [ 0, %.lr.ph97.i ], [ %i.dx, %bb.k ] ; 2 uses
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %.17795.i, i32 noundef %.17994.i, i32 noundef %..i38) #21
  %i.dw = getelementptr inbounds nuw i8, ptr %.17795.i, i64 %i.dv ; 2 uses
  %i.dx = add nuw i32 %.17994.i, 1                ; 2 uses
  %i.dy = load i32, ptr %i.cl, align 4, !tbaa !139
  %i.dz = icmp ult i32 %i.dx, %i.dy
  br i1 %i.dz, label %bb.k, label %._crit_edge98.i, !llvm.loop !521

._crit_edge98.i:                                  ; preds = %bb.k, %._crit_edge.i40
  %.177.lcssa.i = phi ptr [ %i.dt, %._crit_edge.i40 ], [ %i.dw, %bb.k ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.02673, i64 24
  %i.eb = load i8, ptr %i.ea, align 8
  %i.ec = and i8 %i.eb, 1
  %i.ed = xor i8 %i.ec, 1
  %i.ee = zext nneg i8 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, 16               ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.02673, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !138 ; 2 uses
  %.not.i41 = icmp eq ptr %i.eh, null
  br i1 %.not.i41, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge98.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !129
  %i.ek = or i32 %i.ej, %i.ef
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge98.i
  %.073.i = phi i32 [ %i.ek, %bb.l ], [ %i.ef, %._crit_edge98.i ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.02673, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !141 ; 2 uses
  %.not87.i = icmp eq ptr %i.em, null
  br i1 %.not87.i, label %opj_j2k_write_mcc_record.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !129
  %i.ep = shl i32 %i.eo, 8
  %i.eq = or i32 %i.ep, %.073.i
  br label %opj_j2k_write_mcc_record.exit

opj_j2k_write_mcc_record.exit:                    ; preds = %bb.m, %bb.n
  %.1.i42 = phi i32 [ %i.eq, %bb.n ], [ %.073.i, %bb.m ]
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %.177.lcssa.i, i32 noundef %.1.i42, i32 noundef 3) #21
  %i.er = load ptr, ptr %i.i, align 8, !tbaa !11
  %i.es = zext i32 %i.cr to i64                   ; 2 uses
  %i.et = tail call i64 @opj_stream_write_data(ptr noundef %1, ptr noundef %i.er, i64 noundef %i.es, ptr noundef %2) #21
  %.not88.i.not = icmp eq i64 %i.et, %i.es
  br i1 %.not88.i.not, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %opj_j2k_write_mcc_record.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %.02673, i64 32
  %i.ev = add nuw i32 %.172, 1                    ; 2 uses
  %i.ew = load i32, ptr %i.ch, align 8, !tbaa !134
  %i.ex = icmp ult i32 %i.ev, %i.ew
  br i1 %i.ex, label %.lr.ph75, label %._crit_edge76, !llvm.loop !522

._crit_edge76:                                    ; preds = %bb.o, %._crit_edge
  %i.ey = load ptr, ptr %i.am, align 8, !tbaa !179
  %i.ez = load i32, ptr %i.ao, align 8, !tbaa !168
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [5696 x i8], ptr %i.ey, i64 %i.fa ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 5680 ; 4 uses
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !134 ; 2 uses
  %i.fe = add i32 %i.fd, 5                        ; 4 uses
  %i.ff = load i32, ptr %i.f, align 8, !tbaa !11
  %i.fg = icmp ugt i32 %i.fe, %i.ff
  %i.fh = load ptr, ptr %i.i, align 8, !tbaa !11  ; 2 uses
  br i1 %i.fg, label %bb.p, label %._crit_edge49.i45

bb.p:                                             ; preds = %._crit_edge76
  %i.fi = zext i32 %i.fe to i64
  %i.fj = tail call ptr @opj_realloc(ptr noundef %i.fh, i64 noundef %i.fi) #21 ; 3 uses
  %.not.not.i56 = icmp eq ptr %i.fj, null
  br i1 %.not.not.i56, label %opj_j2k_write_mco.exit.thread, label %bb.q

opj_j2k_write_mco.exit.thread:                    ; preds = %bb.p
  %i.fk = load ptr, ptr %i.i, align 8, !tbaa !11
  tail call void @opj_free(ptr noundef %i.fk) #21
  store ptr null, ptr %i.i, align 8, !tbaa !11
  store i32 0, ptr %i.f, align 8, !tbaa !11
  %i.fl = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.324) #21 ; 0 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr %i.fj, ptr %i.i, align 8, !tbaa !11
  store i32 %i.fe, ptr %i.f, align 8, !tbaa !11
  br label %._crit_edge49.i45

._crit_edge49.i45:                                ; preds = %bb.q, %._crit_edge76
  %i.fm = phi ptr [ %i.fj, %bb.q ], [ %i.fh, %._crit_edge76 ] ; 4 uses
  tail call void @opj_write_bytes_LE(ptr noundef %i.fm, i32 noundef 65399, i32 noundef 2) #21
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 2
  %i.fo = add i32 %i.fd, 3
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.fn, i32 noundef %i.fo, i32 noundef 2) #21
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %i.fq = load i32, ptr %i.fc, align 8, !tbaa !134
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.fp, i32 noundef %i.fq, i32 noundef 1) #21
  %i.fr = load i32, ptr %i.fc, align 8, !tbaa !134
  %.not48.i46 = icmp eq i32 %i.fr, 0
  br i1 %.not48.i46, label %opj_j2k_write_mco.exit, label %.lr.ph.preheader.i47

.lr.ph.preheader.i47:                             ; preds = %._crit_edge49.i45
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fb, i64 5672
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !136
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fm, i64 5
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48, %.lr.ph.preheader.i47
  %.03947.i49 = phi i32 [ %i.fy, %.lr.ph.i48 ], [ 0, %.lr.ph.preheader.i47 ]
  %.04046.i50 = phi ptr [ %i.fx, %.lr.ph.i48 ], [ %i.ft, %.lr.ph.preheader.i47 ] ; 2 uses
  %.04145.i51 = phi ptr [ %i.fw, %.lr.ph.i48 ], [ %i.fu, %.lr.ph.preheader.i47 ] ; 2 uses
  %i.fv = load i32, ptr %.04046.i50, align 8, !tbaa !140
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %.04145.i51, i32 noundef %i.fv, i32 noundef 1) #21
  %i.fw = getelementptr inbounds nuw i8, ptr %.04145.i51, i64 1
  %i.fx = getelementptr inbounds nuw i8, ptr %.04046.i50, i64 32
  %i.fy = add nuw i32 %.03947.i49, 1              ; 2 uses
  %i.fz = load i32, ptr %i.fc, align 8, !tbaa !134
  %i.ga = icmp ult i32 %i.fy, %i.fz
  br i1 %i.ga, label %.lr.ph.i48, label %opj_j2k_write_mco.exit, !llvm.loop !523

opj_j2k_write_mco.exit:                           ; preds = %.lr.ph.i48, %._crit_edge49.i45
  %i.gb = load ptr, ptr %i.i, align 8, !tbaa !11
  %i.gc = zext i32 %i.fe to i64                   ; 2 uses
  %i.gd = tail call i64 @opj_stream_write_data(ptr noundef %1, ptr noundef %i.gb, i64 noundef %i.gc, ptr noundef %2) #21
  %.fr = freeze i64 %i.gd
  %.not.i53.not = icmp eq i64 %.fr, %i.gc
  br i1 %.not.i53.not, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %opj_j2k_write_mco.exit.thread, %opj_j2k_write_mco.exit
  br label %.loopexit

.loopexit:                                        ; preds = %opj_j2k_write_mct_record.exit, %opj_j2k_write_mcc_record.exit, %bb.r, %opj_j2k_write_mco.exit, %opj_j2k_write_mcc_record.exit.thread, %opj_j2k_write_mct_record.exit.thread, %opj_j2k_write_cbd.exit.thread, %opj_j2k_write_cbd.exit
  %.028 = phi i32 [ 0, %opj_j2k_write_cbd.exit ], [ 0, %opj_j2k_write_mcc_record.exit ], [ 1, %opj_j2k_write_mco.exit ], [ 0, %opj_j2k_write_mcc_record.exit.thread ], [ 0, %opj_j2k_write_cbd.exit.thread ], [ 0, %opj_j2k_write_mct_record.exit.thread ], [ 0, %bb.r ], [ 0, %opj_j2k_write_mct_record.exit ]
  ret i32 %.028
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @opj_j2k_get_end_header(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #3 {
bb.a:
  %i.a = tail call i64 @opj_stream_tell(ptr noundef %1) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.a, ptr %i.d, align 8, !tbaa !207
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opj_j2k_create_tcd(ptr noundef initializes((344, 352)) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #3 {
bb.a:
  %i.a = tail call ptr @opj_tcd_create(i32 noundef 0) #21 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !26
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.325) #21 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.i = tail call i32 @opj_tcd_init(ptr noundef nonnull %i.a, ptr noundef %i.e, ptr noundef nonnull %i.f, ptr noundef %i.h) #21
  %.not10 = icmp eq i32 %i.i, 0
  br i1 %.not10, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !26
  tail call void @opj_tcd_destroy(ptr noundef %i.j) #21
  store ptr null, ptr %i.b, align 8, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opj_j2k_update_rates(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60   ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !65
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !66
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !64
  %i.n = tail call i64 @opj_stream_tell(ptr noundef %1) #21
  %i.o = sitofp i64 %i.n to float
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !32   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !33   ; 5 uses
  %i.t = mul i32 %i.s, %i.q                       ; 9 uses
  %i.u = uitofp i32 %i.t to float
  %i.v = fdiv float %i.o, %i.u                    ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.x = load i8, ptr %i.w, align 8
  %i.y = and i8 %i.x, 1
  %.not.a = icmp eq i8 %i.y, 0
  %.not173.a = icmp eq i32 %i.q, 0
  br i1 %.not173.a, label %._crit_edge165.split.sink.split, label %.preheader136.lr.ph

.preheader136.lr.ph:                              ; preds = %bb.a
  %3 = mul i32 %i.m, %i.k
  %4 = shl i32 %i.g, 3
  %5 = mul i32 %4, %i.i
  %.not173 = icmp eq i32 %i.s, 0
  %6 = uitofp i32 %3 to double                    ; 2 uses
  %7 = uitofp i32 %5 to float                     ; 10 uses
  br i1 %.not173, label %._crit_edge165.split.sink.split, label %.preheader136.lr.ph.a

.preheader136.lr.ph.a:                            ; preds = %.preheader136.lr.ph
  %8 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %9 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 156
  %12 = load i32, ptr %i.ab, align 4, !tbaa !72   ; 4 uses
  %13 = load i32, ptr %i.aa, align 4, !tbaa !69   ; 4 uses
  %14 = load i32, ptr %i.b, align 8, !tbaa !121   ; 2 uses
  %15 = load i32, ptr %i.z, align 8, !tbaa !74    ; 2 uses
  %16 = load i32, ptr %11, align 8, !tbaa !70     ; 2 uses
  %17 = load i32, ptr %10, align 4, !tbaa !122
  %18 = load i32, ptr %9, align 8, !tbaa !71      ; 2 uses
  %19 = load i32, ptr %8, align 4, !tbaa !73
  br label %.preheader136

.preheader136:                                    ; preds = %.preheader136.lr.ph.a, %._crit_edge150
  %i.ac = phi i32 [ 0, %.preheader136.lr.ph.a ], [ %23, %._crit_edge150 ] ; 2 uses
  %.0124148 = phi ptr [ %i.d, %.preheader136.lr.ph.a ], [ %.us-phi, %._crit_edge150 ] ; 2 uses
  %20 = mul i32 %i.ac, %16
  %21 = add i32 %20, %15
  %22 = tail call noundef i32 @llvm.smax.i32(i32 %21, i32 %17)
  %23 = add nuw i32 %i.ac, 1                      ; 3 uses
  %24 = mul i32 %23, %16
  %.pre194 = add i32 %24, %15
  %25 = tail call noundef i32 @llvm.smin.i32(i32 %.pre194, i32 %19)
  %26 = sub nsw i32 %25, %22
  %27 = uitofp i32 %26 to double                  ; 2 uses
  br i1 %.not.a, label %.lr.ph146, label %scalar.ph.a

.lr.ph146:                                        ; preds = %.preheader136, %._crit_edge.us
  %.0119145.a = phi i32 [ %i.ah, %._crit_edge.us ], [ 0, %.preheader136 ] ; 2 uses
  %.1125144.a = phi ptr [ %39, %._crit_edge.us ], [ %.0124148, %.preheader136 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.1125144.a, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !83 ; 5 uses
  %i.af = uitofp i32 %i.ae to float
  %i.ag = fdiv float 0.000000e+00, %i.af          ; 5 uses
  %i.ah = add nuw i32 %.0119145.a, 1              ; 3 uses
  %.not176 = icmp eq i32 %i.ae, 0
  br i1 %.not176, label %._crit_edge.us, label %.lr.ph.a

scalar.ph:                                        ; preds = %scalar.ph.preheader, %36
  %.0116143.us = phi ptr [ %37, %36 ], [ %.0116143.ph.a, %scalar.ph.preheader ] ; 3 uses
  %.0117142.us = phi i32 [ %38, %36 ], [ %.0117142.ph.a, %scalar.ph.preheader ]
  %28 = load float, ptr %.0116143.us, align 4, !tbaa !59 ; 2 uses
  %29 = fcmp ogt float %28, 0.000000e+00
  br i1 %29, label %30, label %36

30:                                               ; preds = %scalar.ph
  %31 = fmul float %28, %7
  %32 = fpext float %31 to double
  %33 = fdiv double %i.as, %32
  %34 = fptrunc double %33 to float
  %35 = fsub float %34, %i.ag
  store float %35, ptr %.0116143.us, align 4, !tbaa !59
  br label %36

36:                                               ; preds = %30, %scalar.ph
  %37 = getelementptr inbounds nuw i8, ptr %.0116143.us, i64 4
  %38 = add nuw i32 %.0117142.us, 1               ; 2 uses
  %exitcond190.not = icmp eq i32 %38, %i.ae
  br i1 %exitcond190.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !524

._crit_edge.us:                                   ; preds = %36, %middle.block, %.lr.ph146
  %39 = getelementptr inbounds nuw i8, ptr %.1125144.a, i64 5696 ; 2 uses
  %exitcond191.not = icmp eq i32 %i.ah, %i.s
  br i1 %exitcond191.not, label %._crit_edge150, label %.lr.ph146, !llvm.loop !525

.lr.ph.a:                                         ; preds = %.lr.ph146
  %i.ai = getelementptr inbounds nuw i8, ptr %.1125144.a, i64 20 ; 6 uses
  %i.aj = mul i32 %i.ah, %13
  %i.ak = add i32 %i.aj, %12
  %i.al = tail call noundef i32 @llvm.smin.i32(i32 %i.ak, i32 %18)
  %i.am = mul i32 %.0119145.a, %13
  %i.an = add i32 %i.am, %12
  %i.ao = tail call noundef i32 @llvm.smax.i32(i32 %i.an, i32 %14)
  %i.ap = sub nsw i32 %i.al, %i.ao
  %i.aq = uitofp i32 %i.ap to double
  %i.ar = fmul nnan double %6, %i.aq
  %i.as = fmul double %i.ar, %27                  ; 5 uses
  %i.at = zext i32 %i.ae to i64                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.ae, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.a
  %n.vec = and i64 %i.at, 4294967292              ; 4 uses
  %i.au = shl nuw nsw i64 %n.vec, 2
  %i.av = getelementptr i8, ptr %i.ai, i64 %i.au
  %i.aw = trunc nuw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue254, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue254 ] ; 2 uses
  %i.ax = shl i64 %index, 2                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.ai, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ai, i64 %i.ax
  %next.gep246 = getelementptr i8, ptr %i.ay, i64 4
  %i.az = getelementptr i8, ptr %i.ai, i64 %i.ax
  %next.gep247 = getelementptr i8, ptr %i.az, i64 8
  %i.ba = getelementptr i8, ptr %i.ai, i64 %i.ax
  %next.gep248 = getelementptr i8, ptr %i.ba, i64 12
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !59 ; 5 uses
  %i.bb = fcmp ogt <4 x float> %wide.load, zeroinitializer ; 4 uses
  %i.bc = extractelement <4 x i1> %i.bb, i64 0
  br i1 %i.bc, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.bd = extractelement <4 x float> %wide.load, i64 0
  %i.be = fmul float %i.bd, %7
  %i.bf = fpext float %i.be to double
  %i.bg = fdiv double %i.as, %i.bf
  %i.bh = fptrunc double %i.bg to float
  %i.bi = fsub float %i.bh, %i.ag
  store float %i.bi, ptr %next.gep, align 4, !tbaa !59
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bj = extractelement <4 x i1> %i.bb, i64 1
  br i1 %i.bj, label %pred.store.if249, label %pred.store.continue250

pred.store.if249:                                 ; preds = %pred.store.continue
  %i.bk = extractelement <4 x float> %wide.load, i64 1
  %i.bl = fmul float %i.bk, %7
  %i.bm = fpext float %i.bl to double
  %i.bn = fdiv double %i.as, %i.bm
  %i.bo = fptrunc double %i.bn to float
  %i.bp = fsub float %i.bo, %i.ag
  store float %i.bp, ptr %next.gep246, align 4, !tbaa !59
  br label %pred.store.continue250

pred.store.continue250:                           ; preds = %pred.store.if249, %pred.store.continue
  %i.bq = extractelement <4 x i1> %i.bb, i64 2
  br i1 %i.bq, label %pred.store.if251, label %pred.store.continue252

pred.store.if251:                                 ; preds = %pred.store.continue250
  %i.br = extractelement <4 x float> %wide.load, i64 2
  %i.bs = fmul float %i.br, %7
  %i.bt = fpext float %i.bs to double
  %i.bu = fdiv double %i.as, %i.bt
  %i.bv = fptrunc double %i.bu to float
  %i.bw = fsub float %i.bv, %i.ag
  store float %i.bw, ptr %next.gep247, align 4, !tbaa !59
  br label %pred.store.continue252

pred.store.continue252:                           ; preds = %pred.store.if251, %pred.store.continue250
  %i.bx = extractelement <4 x i1> %i.bb, i64 3
  br i1 %i.bx, label %pred.store.if253, label %pred.store.continue254

pred.store.if253:                                 ; preds = %pred.store.continue252
  %i.by = extractelement <4 x float> %wide.load, i64 3
  %i.bz = fmul float %i.by, %7
  %i.ca = fpext float %i.bz to double
  %i.cb = fdiv double %i.as, %i.ca
  %i.cc = fptrunc double %i.cb to float
  %i.cd = fsub float %i.cc, %i.ag
  store float %i.cd, ptr %next.gep248, align 4, !tbaa !59
  br label %pred.store.continue254

pred.store.continue254:                           ; preds = %pred.store.if253, %pred.store.continue252
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !526

middle.block:                                     ; preds = %pred.store.continue254
  %cmp.n = icmp eq i64 %n.vec, %i.at
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.a, %middle.block
  %.0116143.ph.a = phi ptr [ %i.ai, %.lr.ph.a ], [ %i.av, %middle.block ]
  %.0117142.ph.a = phi i32 [ 0, %.lr.ph.a ], [ %i.aw, %middle.block ]
  br label %scalar.ph

scalar.ph.a:                                      ; preds = %.preheader136, %._crit_edge
  %.0119145 = phi i32 [ %49, %._crit_edge ], [ 0, %.preheader136 ] ; 2 uses
  %.0116143.a = phi ptr [ %104, %._crit_edge ], [ %.0124148, %.preheader136 ] ; 4 uses
  %40 = getelementptr inbounds nuw i8, ptr %.0116143.a, i64 5612
  %41 = load i32, ptr %40, align 4, !tbaa !183
  %42 = mul i32 %41, 14
  %43 = add i32 %42, -14
  %44 = uitofp i32 %43 to float
  %45 = getelementptr inbounds nuw i8, ptr %.0116143.a, i64 8
  %46 = load i32, ptr %45, align 8, !tbaa !83     ; 5 uses
  %47 = uitofp i32 %46 to float
  %48 = fdiv float %44, %47                       ; 5 uses
  %49 = add nuw i32 %.0119145, 1                  ; 3 uses
  %.not174 = icmp eq i32 %46, 0
  br i1 %.not174, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %scalar.ph.a
  %50 = getelementptr inbounds nuw i8, ptr %.0116143.a, i64 20 ; 6 uses
  %51 = mul i32 %49, %13
  %52 = add i32 %51, %12
  %53 = tail call noundef i32 @llvm.smin.i32(i32 %52, i32 %18)
  %54 = mul i32 %.0119145, %13
  %55 = add i32 %54, %12
  %56 = tail call noundef i32 @llvm.smax.i32(i32 %55, i32 %14)
  %57 = sub nsw i32 %53, %56
  %58 = uitofp i32 %57 to double
  %59 = fmul nnan double %6, %58
  %60 = fmul double %59, %27                      ; 5 uses
  %61 = zext i32 %46 to i64                       ; 2 uses
  %min.iters.check304 = icmp ult i32 %46, 4
  br i1 %min.iters.check304, label %._crit_edge147.loopexit, label %vector.ph305

vector.ph305:                                     ; preds = %.lr.ph
  %n.vec306 = and i64 %61, 4294967292             ; 4 uses
  %62 = shl nuw nsw i64 %n.vec306, 2
  %63 = getelementptr i8, ptr %50, i64 %62
  %64 = trunc nuw i64 %n.vec306 to i32
  br label %vector.body307

vector.body307:                                   ; preds = %pred.store.continue321, %vector.ph305
  %index308 = phi i64 [ 0, %vector.ph305 ], [ %index.next322, %pred.store.continue321 ] ; 2 uses
  %65 = shl i64 %index308, 2                      ; 4 uses
  %next.gep309 = getelementptr i8, ptr %50, i64 %65 ; 2 uses
  %66 = getelementptr i8, ptr %50, i64 %65
  %next.gep310 = getelementptr i8, ptr %66, i64 4
  %67 = getelementptr i8, ptr %50, i64 %65
  %next.gep311 = getelementptr i8, ptr %67, i64 8
  %68 = getelementptr i8, ptr %50, i64 %65
  %next.gep312 = getelementptr i8, ptr %68, i64 12
  %wide.load313 = load <4 x float>, ptr %next.gep309, align 4, !tbaa !59 ; 5 uses
  %69 = fcmp ogt <4 x float> %wide.load313, zeroinitializer ; 4 uses
  %70 = extractelement <4 x i1> %69, i64 0
  br i1 %70, label %pred.store.if314, label %pred.store.continue315

pred.store.if314:                                 ; preds = %vector.body307
  %71 = extractelement <4 x float> %wide.load313, i64 0
  %72 = fmul float %71, %7
  %73 = fpext float %72 to double
  %74 = fdiv double %60, %73
  %75 = fptrunc double %74 to float
  %76 = fsub float %75, %48
  store float %76, ptr %next.gep309, align 4, !tbaa !59
  br label %pred.store.continue315

pred.store.continue315:                           ; preds = %pred.store.if314, %vector.body307
  %77 = extractelement <4 x i1> %69, i64 1
  br i1 %77, label %bb.b, label %pred.store.continue317

bb.b:                                             ; preds = %pred.store.continue315
  %78 = extractelement <4 x float> %wide.load313, i64 1
  %i.cf = fmul float %78, %7
  %i.cg = fpext float %i.cf to double
  %i.ch = fdiv double %60, %i.cg
  %i.ci = fptrunc double %i.ch to float
  %i.cj = fsub float %i.ci, %48
  store float %i.cj, ptr %next.gep310, align 4, !tbaa !59
  br label %pred.store.continue317

pred.store.continue317:                           ; preds = %bb.b, %pred.store.continue315
  %79 = extractelement <4 x i1> %69, i64 2
  br i1 %79, label %bb.c, label %pred.store.continue319

bb.c:                                             ; preds = %pred.store.continue317
  %80 = extractelement <4 x float> %wide.load313, i64 2
  %81 = fmul float %80, %7
  %82 = fpext float %81 to double
  %83 = fdiv double %60, %82
  %84 = fptrunc double %83 to float
  %85 = fsub float %84, %48
  store float %85, ptr %next.gep311, align 4, !tbaa !59
  br label %pred.store.continue319

pred.store.continue319:                           ; preds = %bb.c, %pred.store.continue317
  %86 = extractelement <4 x i1> %69, i64 3
  br i1 %86, label %._crit_edge.a, label %pred.store.continue321

._crit_edge.a:                                    ; preds = %pred.store.continue319
  %87 = extractelement <4 x float> %wide.load313, i64 3
  %88 = fmul float %87, %7
  %89 = fpext float %88 to double
  %90 = fdiv double %60, %89
  %91 = fptrunc double %90 to float
  %92 = fsub float %91, %48
  store float %92, ptr %next.gep312, align 4, !tbaa !59
  br label %pred.store.continue321

pred.store.continue321:                           ; preds = %._crit_edge.a, %pred.store.continue319
  %index.next322 = add nuw i64 %index308, 4       ; 2 uses
  %93 = icmp eq i64 %index.next322, %n.vec306
  br i1 %93, label %middle.block323, label %vector.body307, !llvm.loop !527

middle.block323:                                  ; preds = %pred.store.continue321
  %cmp.n324 = icmp eq i64 %n.vec306, %61
  br i1 %cmp.n324, label %._crit_edge, label %._crit_edge147.loopexit

._crit_edge147.loopexit:                          ; preds = %.lr.ph, %middle.block323
  %.0116143.ph = phi ptr [ %50, %.lr.ph ], [ %63, %middle.block323 ]
  %.0117142.ph = phi i32 [ 0, %.lr.ph ], [ %64, %middle.block323 ]
  br label %scalar.ph303

scalar.ph303:                                     ; preds = %._crit_edge147.loopexit, %101
  %.0116143 = phi ptr [ %102, %101 ], [ %.0116143.ph, %._crit_edge147.loopexit ] ; 3 uses
  %.0117142 = phi i32 [ %103, %101 ], [ %.0117142.ph, %._crit_edge147.loopexit ]
  %94 = load float, ptr %.0116143, align 4, !tbaa !59 ; 2 uses
  %95 = fcmp ogt float %94, 0.000000e+00
  br i1 %95, label %._crit_edge147.a, label %101

._crit_edge147.a:                                 ; preds = %scalar.ph303
  %96 = fmul float %94, %7
  %97 = fpext float %96 to double
  %98 = fdiv double %60, %97
  %99 = fptrunc double %98 to float
  %100 = fsub float %99, %48
  store float %100, ptr %.0116143, align 4, !tbaa !59
  br label %101

101:                                              ; preds = %._crit_edge147.a, %scalar.ph303
  %102 = getelementptr inbounds nuw i8, ptr %.0116143, i64 4
  %103 = add nuw i32 %.0117142, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %103, %46
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph303, !llvm.loop !528

._crit_edge:                                      ; preds = %101, %middle.block323, %scalar.ph.a
  %104 = getelementptr inbounds nuw i8, ptr %.0116143.a, i64 5696 ; 2 uses
  %exitcond189.not = icmp eq i32 %49, %i.s
  br i1 %exitcond189.not, label %._crit_edge150, label %scalar.ph.a, !llvm.loop !525

._crit_edge150:                                   ; preds = %._crit_edge, %._crit_edge.us
  %.us-phi = phi ptr [ %39, %._crit_edge.us ], [ %104, %._crit_edge ]
  %.not177 = icmp eq i32 %23, %i.q
  br i1 %.not177, label %.preheader.lr.ph, label %.preheader136, !llvm.loop !529

.preheader.lr.ph:                                 ; preds = %._crit_edge150
  %105 = load ptr, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.ck = fadd float %i.v, 2.000000e+00
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge161
  %.1122164 = phi i32 [ %i.ei, %._crit_edge161 ], [ 0, %.preheader.lr.ph ]
  %.2126163 = phi ptr [ %i.eg, %._crit_edge161 ], [ %105, %.preheader.lr.ph ]
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.p
  %.1120159 = phi i32 [ 0, %.preheader ], [ %i.eh, %bb.p ]
  %.3158 = phi ptr [ %.2126163, %.preheader ], [ %i.eg, %bb.p ] ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.3158, i64 20 ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !59 ; 2 uses
  %i.cn = fcmp ogt float %i.cm, 0.000000e+00
  br i1 %i.cn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.co = fsub float %i.cm, %i.v                  ; 2 uses
  %i.cp = fcmp olt float %i.co, 3.000000e+01
  %spec.store.select135 = select i1 %i.cp, float 3.000000e+01, float %i.co
  store float %spec.store.select135, ptr %i.cl, align 4, !tbaa !59
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cq = getelementptr inbounds nuw i8, ptr %.3158, i64 24 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.3158, i64 8
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !83 ; 5 uses
  %i.ct = add i32 %i.cs, -3
  %i.cu = icmp ult i32 %i.ct, -2
  br i1 %i.cu, label %.lr.ph155.preheader, label %._crit_edge156

.lr.ph155.preheader:                              ; preds = %bb.f
  %xtraiter = and i32 %i.cs, 1
  %i.cv = icmp eq i32 %i.cs, 3
  br i1 %i.cv, label %.lr.ph155.epil.preheader, label %.lr.ph155.preheader.new

.lr.ph155.preheader.new:                          ; preds = %.lr.ph155.preheader
  %i.cw = and i32 %i.cs, -2
  %i.cx = add i32 %i.cw, -4
  br label %.lr.ph155

.lr.ph155:                                        ; preds = %bb.k, %.lr.ph155.preheader.new
  %.1153 = phi ptr [ %i.cq, %.lr.ph155.preheader.new ], [ %i.do, %bb.k ] ; 7 uses
  %niter = phi i32 [ 0, %.lr.ph155.preheader.new ], [ %niter.next.1, %bb.k ] ; 2 uses
  %i.cy = load float, ptr %.1153, align 4, !tbaa !59 ; 2 uses
  %i.cz = fcmp ogt float %i.cy, 0.000000e+00
  br i1 %i.cz, label %bb.g, label %.lr.ph155.1

bb.g:                                             ; preds = %.lr.ph155
  %i.da = fsub float %i.cy, %i.v                  ; 2 uses
  store float %i.da, ptr %.1153, align 4, !tbaa !59
  %i.db = getelementptr inbounds i8, ptr %.1153, i64 -4
  %i.dc = load float, ptr %i.db, align 4, !tbaa !59 ; 2 uses
  %i.dd = fadd float %i.dc, 1.000000e+01
  %i.de = fcmp olt float %i.da, %i.dd
  br i1 %i.de, label %bb.h, label %.lr.ph155.1

bb.h:                                             ; preds = %bb.g
  %i.df = fadd float %i.dc, 2.000000e+01
  store float %i.df, ptr %.1153, align 4, !tbaa !59
  br label %.lr.ph155.1

.lr.ph155.1:                                      ; preds = %bb.g, %bb.h, %.lr.ph155
  %i.dg = getelementptr inbounds nuw i8, ptr %.1153, i64 4 ; 3 uses
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !59 ; 2 uses
  %i.di = fcmp ogt float %i.dh, 0.000000e+00
  br i1 %i.di, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph155.1
  %i.dj = fsub float %i.dh, %i.v                  ; 2 uses
  store float %i.dj, ptr %i.dg, align 4, !tbaa !59
  %i.dk = load float, ptr %.1153, align 4, !tbaa !59 ; 2 uses
  %i.dl = fadd float %i.dk, 1.000000e+01
  %i.dm = fcmp olt float %i.dj, %i.dl
  br i1 %i.dm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dn = fadd float %i.dk, 2.000000e+01
  store float %i.dn, ptr %i.dg, align 4, !tbaa !59
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %.lr.ph155.1
  %i.do = getelementptr inbounds nuw i8, ptr %.1153, i64 8 ; 3 uses
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter, %i.cx
  br i1 %niter.ncmp.1, label %._crit_edge156.loopexit.unr-lcssa, label %.lr.ph155, !llvm.loop !530

._crit_edge156.loopexit.unr-lcssa:                ; preds = %bb.k
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge156, label %.lr.ph155.epil.preheader

.lr.ph155.epil.preheader:                         ; preds = %._crit_edge156.loopexit.unr-lcssa, %.lr.ph155.preheader
  %.1153.epil.init = phi ptr [ %i.cq, %.lr.ph155.preheader ], [ %i.do, %._crit_edge156.loopexit.unr-lcssa ] ; 5 uses
  %lcmp.mod268 = trunc i32 %i.cs to i1
  tail call void @llvm.assume(i1 %lcmp.mod268)
  %i.dp = load float, ptr %.1153.epil.init, align 4, !tbaa !59 ; 2 uses
  %i.dq = fcmp ogt float %i.dp, 0.000000e+00
  br i1 %i.dq, label %bb.l, label %._crit_edge156.loopexit.epilog-lcssa

bb.l:                                             ; preds = %.lr.ph155.epil.preheader
  %i.dr = fsub float %i.dp, %i.v                  ; 2 uses
  store float %i.dr, ptr %.1153.epil.init, align 4, !tbaa !59
  %i.ds = getelementptr inbounds i8, ptr %.1153.epil.init, i64 -4
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !59 ; 2 uses
  %i.du = fadd float %i.dt, 1.000000e+01
  %i.dv = fcmp olt float %i.dr, %i.du
  br i1 %i.dv, label %bb.m, label %._crit_edge156.loopexit.epilog-lcssa

bb.m:                                             ; preds = %bb.l
  %i.dw = fadd float %i.dt, 2.000000e+01
  store float %i.dw, ptr %.1153.epil.init, align 4, !tbaa !59
  br label %._crit_edge156.loopexit.epilog-lcssa

._crit_edge156.loopexit.epilog-lcssa:             ; preds = %bb.m, %bb.l, %.lr.ph155.epil.preheader
  %i.dx = getelementptr inbounds nuw i8, ptr %.1153.epil.init, i64 4
  br label %._crit_edge156

._crit_edge156:                                   ; preds = %._crit_edge156.loopexit.epilog-lcssa, %._crit_edge156.loopexit.unr-lcssa, %bb.f
  %.1.lcssa = phi ptr [ %i.cq, %bb.f ], [ %i.do, %._crit_edge156.loopexit.unr-lcssa ], [ %i.dx, %._crit_edge156.loopexit.epilog-lcssa ] ; 4 uses
  %i.dy = load float, ptr %.1.lcssa, align 4, !tbaa !59 ; 2 uses
  %i.dz = fcmp ogt float %i.dy, 0.000000e+00
  br i1 %i.dz, label %bb.n, label %bb.p

bb.n:                                             ; preds = %._crit_edge156
  %i.ea = fsub float %i.dy, %i.ck                 ; 2 uses
  store float %i.ea, ptr %.1.lcssa, align 4, !tbaa !59
  %i.eb = getelementptr inbounds i8, ptr %.1.lcssa, i64 -4
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !59 ; 2 uses
  %i.ed = fadd float %i.ec, 1.000000e+01
  %i.ee = fcmp olt float %i.ea, %i.ed
  br i1 %i.ee, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ef = fadd float %i.ec, 2.000000e+01
  store float %i.ef, ptr %.1.lcssa, align 4, !tbaa !59
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %._crit_edge156
  %i.eg = getelementptr inbounds nuw i8, ptr %.3158, i64 5696 ; 2 uses
  %i.eh = add nuw i32 %.1120159, 1                ; 2 uses
  %exitcond191.not.a = icmp eq i32 %i.eh, %i.s
  br i1 %exitcond191.not.a, label %._crit_edge161, label %bb.d, !llvm.loop !531

._crit_edge161:                                   ; preds = %bb.p
  %i.ei = add nuw i32 %.1122164, 1                ; 2 uses
  %exitcond192.not = icmp eq i32 %i.ei, %i.q
  br i1 %exitcond192.not, label %._crit_edge165.split, label %.preheader, !llvm.loop !532

._crit_edge165.split.sink.split:                  ; preds = %.preheader136.lr.ph, %bb.a
  %i.ej = load ptr, ptr %i.c, align 8, !tbaa !31
  br label %._crit_edge165.split

._crit_edge165.split:                             ; preds = %._crit_edge161, %._crit_edge165.split.sink.split
  %106 = phi ptr [ %i.ej, %._crit_edge165.split.sink.split ], [ %105, %._crit_edge161 ] ; 6 uses
  %i.ek = load i32, ptr %i.j, align 8, !tbaa !53  ; 2 uses
  %.not179 = icmp eq i32 %i.ek, 0
  br i1 %.not179, label %._crit_edge171, label %.lr.ph170

.lr.ph170:                                        ; preds = %._crit_edge165.split
  %i.el = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.en = load i32, ptr %i.em, align 4, !tbaa !69
  %i.eo = zext i32 %i.en to i64
  %i.ep = add nsw i64 %i.eo, -1
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !70
  %i.es = zext i32 %i.er to i64
  %i.et = add nsw i64 %i.es, -1
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph170, %bb.q
  %.0115168 = phi i64 [ 0, %.lr.ph170 ], [ %i.fk, %bb.q ]
  %.2167 = phi i32 [ 0, %.lr.ph170 ], [ %i.fm, %bb.q ]
  %.0123166 = phi ptr [ %i.el, %.lr.ph170 ], [ %i.fl, %bb.q ] ; 4 uses
  %i.eu = load i32, ptr %.0123166, align 8, !tbaa !65
  %i.ev = zext i32 %i.eu to i64                   ; 2 uses
  %i.ew = add nsw i64 %i.ep, %i.ev
  %i.ex = udiv i64 %i.ew, %i.ev
  %i.ey = and i64 %i.ex, 4294967295
  %i.ez = getelementptr inbounds nuw i8, ptr %.0123166, i64 4
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !66
  %i.fb = zext i32 %i.fa to i64                   ; 2 uses
  %i.fc = add nsw i64 %i.et, %i.fb
  %i.fd = udiv i64 %i.fc, %i.fb
  %i.fe = and i64 %i.fd, 4294967295
  %i.ff = mul nuw i64 %i.fe, %i.ey
  %i.fg = getelementptr inbounds nuw i8, ptr %.0123166, i64 24
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !64
  %i.fi = zext i32 %i.fh to i64
  %i.fj = mul i64 %i.ff, %i.fi
  %i.fk = add i64 %i.fj, %.0115168                ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.0123166, i64 64
  %i.fm = add nuw i32 %.2167, 1                   ; 2 uses
  %exitcond193.not = icmp eq i32 %i.fm, %i.ek
  br i1 %exitcond193.not, label %._crit_edge171.loopexit, label %bb.q, !llvm.loop !533

._crit_edge171.loopexit:                          ; preds = %bb.q
  %i.fn = uitofp i64 %i.fk to double
  %i.fo = fmul nnan double %i.fn, 1.400000e+00
  %i.fp = fmul nnan double %i.fo, 1.250000e-01
  %i.fq = fptoui double %i.fp to i64
  %i.fr = add i64 %i.fq, 500
  br label %._crit_edge171

._crit_edge171:                                   ; preds = %._crit_edge171.loopexit, %._crit_edge165.split
  %.0115.lcssa = phi i64 [ 500, %._crit_edge165.split ], [ %i.fr, %._crit_edge171.loopexit ]
  %i.fs = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !53 ; 5 uses
  %i.fv = add i32 %i.fu, -1                       ; 3 uses
  %.not.i.i = icmp eq i32 %i.t, 0                 ; 3 uses
  br i1 %.not.i.i, label %opj_j2k_get_max_toc_size.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge171
  %xtraiter269 = and i32 %i.t, 3                  ; 3 uses
  %i.fw = icmp ult i32 %i.t, 4
  br i1 %i.fw, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter273 = and i32 %i.t, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.013.i.i = phi ptr [ %106, %.lr.ph.i.i.preheader.new ], [ %i.gj, %.lr.ph.i.i ] ; 5 uses
  %.0912.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.gi, %.lr.ph.i.i ]
  %niter274 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter274.next.3, %.lr.ph.i.i ]
  %i.fx = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 5612
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !183
  %i.fz = tail call noundef i32 @llvm.umax.i32(i32 %.0912.i.i, i32 %i.fy)
  %i.ga = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 11308
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !183
  %i.gc = tail call noundef i32 @llvm.umax.i32(i32 %i.fz, i32 %i.gb)
  %i.gd = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 17004
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !183
  %i.gf = tail call noundef i32 @llvm.umax.i32(i32 %i.gc, i32 %i.ge)
  %i.gg = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 22700
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !183
  %i.gi = tail call noundef i32 @llvm.umax.i32(i32 %i.gf, i32 %i.gh) ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 22784 ; 2 uses
  %niter274.next.3 = add i32 %niter274, 4         ; 2 uses
  %niter274.ncmp.3 = icmp eq i32 %niter274.next.3, %unroll_iter273
  br i1 %niter274.ncmp.3, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !534

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod270.not = icmp eq i32 %xtraiter269, 0
  br i1 %lcmp.mod270.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.013.i.i.epil.init = phi ptr [ %106, %.lr.ph.i.i.preheader ], [ %i.gj, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.0912.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.gi, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %lcmp.mod272 = icmp ne i32 %xtraiter269, 0
  tail call void @llvm.assume(i1 %lcmp.mod272)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.013.i.i.epil = phi ptr [ %i.gn, %.lr.ph.i.i.epil ], [ %.013.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.0912.i.i.epil = phi i32 [ %i.gm, %.lr.ph.i.i.epil ], [ %.0912.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.gk = getelementptr inbounds nuw i8, ptr %.013.i.i.epil, i64 5612
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !183
  %i.gm = tail call noundef i32 @llvm.umax.i32(i32 %.0912.i.i.epil, i32 %i.gl) ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.013.i.i.epil, i64 5696
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter269
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil, !llvm.loop !535

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %.lcssa259 = phi i32 [ %i.gi, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.gm, %.lr.ph.i.i.epil ]
  %i.go = mul i32 %.lcssa259, 12
  br label %opj_j2k_get_max_toc_size.exit.i

opj_j2k_get_max_toc_size.exit.i:                  ; preds = %._crit_edge.loopexit.i.i, %._crit_edge171
  %.09.lcssa.i.i = phi i32 [ 0, %._crit_edge171 ], [ %i.go, %._crit_edge.loopexit.i.i ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.gq = load i16, ptr %i.gp, align 8, !tbaa !225
  %i.gr = add i16 %i.gq, -3
  %or.cond.i = icmp ult i16 %i.gr, 4
  br i1 %or.cond.i, label %bb.y, label %bb.r

bb.r:                                             ; preds = %opj_j2k_get_max_toc_size.exit.i
  %.not21.i.i = icmp eq i32 %i.fu, 0
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %.not21.i.i
  br i1 %or.cond.i.i, label %opj_j2k_get_max_coc_size.exit.thread.i, label %.preheader.lr.ph.split.us.i.i

opj_j2k_get_max_coc_size.exit.thread.i:           ; preds = %bb.r
  %i.gs = mul i32 %i.fv, 6                        ; 2 uses
  %i.gt = add i32 %.09.lcssa.i.i, %i.gs
  br label %opj_j2k_get_max_qcc_size.exit.i

.preheader.lr.ph.split.us.i.i:                    ; preds = %bb.r
  %wide.trip.count27.i.i = zext i32 %i.t to i64   ; 2 uses
  %wide.trip.count.i.i = zext i32 %i.fu to i64    ; 5 uses
  %i.gu = add nsw i64 %wide.trip.count.i.i, -1    ; 2 uses
  %xtraiter275 = and i64 %wide.trip.count.i.i, 1
  %i.gv = icmp eq i64 %i.gu, 0
  %unroll_iter280 = and i64 %wide.trip.count.i.i, 4294967294
  %lcmp.mod277.not = icmp eq i64 %xtraiter275, 0
  %lcmp.mod279 = trunc i32 %i.fu to i1
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.lr.ph.split.us.i.i
  %indvars.iv24.i.i = phi i64 [ %indvars.iv.next25.i.i, %._crit_edge.us.i.i ], [ 0, %.preheader.lr.ph.split.us.i.i ] ; 2 uses
  %.018.us.i.i = phi i32 [ %.lcssa258, %._crit_edge.us.i.i ], [ 0, %.preheader.lr.ph.split.us.i.i ] ; 2 uses
  %i.gw = getelementptr inbounds nuw [5696 x i8], ptr %106, i64 %indvars.iv24.i.i
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 5600
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !93 ; 3 uses
  br i1 %i.gv, label %.epil.preheader, label %.preheader.us.i.i.new

.preheader.us.i.i.new:                            ; preds = %.preheader.us.i.i, %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.1
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.1 ], [ 0, %.preheader.us.i.i ] ; 3 uses
  %.116.us.i.i = phi i32 [ %i.hn, %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.1 ], [ %.018.us.i.i, %.preheader.us.i.i ]
  %niter281 = phi i64 [ %niter281.next.1, %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.1 ], [ 0, %.preheader.us.i.i ]
  %i.gz = getelementptr inbounds nuw [1080 x i8], ptr %i.gy, i64 %indvars.iv.i.i ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !102
  %i.hb = and i32 %i.ha, 1
  %.not.i.us.i.i = icmp eq i32 %i.hb, 0
  br i1 %.not.i.us.i.i, label %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i, label %bb.s

bb.s:                                             ; preds = %.preheader.us.i.i.new
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !103
  %i.he = add i32 %i.hd, 5
  br label %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i

opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i:         ; preds = %bb.s, %.preheader.us.i.i.new
  %.0.i.us.i.i = phi i32 [ %i.he, %bb.s ], [ 5, %.preheader.us.i.i.new ]
  %i.hf = tail call noundef i32 @llvm.umax.i32(i32 %.116.us.i.i, i32 %.0.i.us.i.i)
  %i.hg = getelementptr inbounds nuw [1080 x i8], ptr %i.gy, i64 %indvars.iv.i.i ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 1080
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !102
  %i.hj = and i32 %i.hi, 1
  %.not.i.us.i.i.1 = icmp eq i32 %i.hj, 0
  br i1 %.not.i.us.i.i.1, label %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.1, label %bb.t

bb.t:                                             ; preds = %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 1084
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !103
  %i.hm = add i32 %i.hl, 5
  br label %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.1

opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.1:       ; preds = %bb.t, %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i
  %.0.i.us.i.i.1 = phi i32 [ %i.hm, %bb.t ], [ 5, %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i ]
  %i.hn = tail call noundef i32 @llvm.umax.i32(i32 %i.hf, i32 %.0.i.us.i.i.1) ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter281.next.1 = add i64 %niter281, 2         ; 2 uses
  %niter281.ncmp.1 = icmp eq i64 %niter281.next.1, %unroll_iter280
  br i1 %niter281.ncmp.1, label %._crit_edge.us.i.i.unr-lcssa, label %.preheader.us.i.i.new, !llvm.loop !536

._crit_edge.us.i.i.unr-lcssa:                     ; preds = %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.1
  br i1 %lcmp.mod277.not, label %._crit_edge.us.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.i.unr-lcssa, %.preheader.us.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next.i.i.1, %._crit_edge.us.i.i.unr-lcssa ]
  %.116.us.i.i.epil.init = phi i32 [ %.018.us.i.i, %.preheader.us.i.i ], [ %i.hn, %._crit_edge.us.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod279)
  %i.ho = getelementptr inbounds nuw [1080 x i8], ptr %i.gy, i64 %indvars.iv.i.i.epil.init ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !102
  %i.hq = and i32 %i.hp, 1
  %.not.i.us.i.i.epil = icmp eq i32 %i.hq, 0
  br i1 %.not.i.us.i.i.epil, label %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.epil, label %bb.u

bb.u:                                             ; preds = %.epil.preheader
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !103
  %i.ht = add i32 %i.hs, 5
  br label %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.epil

opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.epil:    ; preds = %bb.u, %.epil.preheader
  %.0.i.us.i.i.epil = phi i32 [ %i.ht, %bb.u ], [ 5, %.epil.preheader ]
  %i.hu = tail call noundef i32 @llvm.umax.i32(i32 %.116.us.i.i.epil.init, i32 %.0.i.us.i.i.epil)
  br label %._crit_edge.us.i.i

._crit_edge.us.i.i:                               ; preds = %._crit_edge.us.i.i.unr-lcssa, %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.epil
  %.lcssa258 = phi i32 [ %i.hn, %._crit_edge.us.i.i.unr-lcssa ], [ %i.hu, %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.epil ] ; 2 uses
  %indvars.iv.next25.i.i = add nuw nsw i64 %indvars.iv24.i.i, 1 ; 2 uses
  %exitcond28.not.i.i = icmp eq i64 %indvars.iv.next25.i.i, %wide.trip.count27.i.i
  br i1 %exitcond28.not.i.i, label %.preheader.us.i.i.i.preheader, label %.preheader.us.i.i, !llvm.loop !537

.preheader.us.i.i.i.preheader:                    ; preds = %._crit_edge.us.i.i
  %xtraiter283 = and i64 %wide.trip.count.i.i, 1
  %i.hv = icmp eq i64 %i.gu, 0
  %unroll_iter288 = and i64 %wide.trip.count.i.i, 4294967294
  %lcmp.mod285.not = icmp eq i64 %xtraiter283, 0
  %lcmp.mod287 = trunc i32 %i.fu to i1
  br label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %.preheader.us.i.i.i.preheader, %._crit_edge.us.i.i.i
  %indvars.iv24.i.i.i = phi i64 [ %indvars.iv.next25.i.i.i, %._crit_edge.us.i.i.i ], [ 0, %.preheader.us.i.i.i.preheader ] ; 2 uses
  %.018.us.i.i.i = phi i32 [ %.lcssa257, %._crit_edge.us.i.i.i ], [ 0, %.preheader.us.i.i.i.preheader ] ; 2 uses
  %i.hw = getelementptr inbounds nuw [5696 x i8], ptr %106, i64 %indvars.iv24.i.i.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 5600
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !93 ; 3 uses
  br i1 %i.hv, label %.epil.preheader282, label %.preheader.us.i.i.i.new

.preheader.us.i.i.i.new:                          ; preds = %.preheader.us.i.i.i, %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i.1
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i.1 ], [ 0, %.preheader.us.i.i.i ] ; 3 uses
  %.116.us.i.i.i = phi i32 [ %i.in, %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i.1 ], [ %.018.us.i.i.i, %.preheader.us.i.i.i ]
  %niter289 = phi i64 [ %niter289.next.1, %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i.1 ], [ 0, %.preheader.us.i.i.i ]
  %i.hz = getelementptr inbounds nuw [1080 x i8], ptr %i.hy, i64 %indvars.iv.i.i.i ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !102
  %i.ib = and i32 %i.ia, 1
  %.not.i.us.i.i.i = icmp eq i32 %i.ib, 0
  br i1 %.not.i.us.i.i.i, label %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i, label %bb.v

bb.v:                                             ; preds = %.preheader.us.i.i.i.new
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !103
  %i.ie = add i32 %i.id, 5
  br label %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i

opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i:       ; preds = %bb.v, %.preheader.us.i.i.i.new
  %.0.i.us.i.i.i = phi i32 [ %i.ie, %bb.v ], [ 5, %.preheader.us.i.i.i.new ]
  %i.if = tail call noundef i32 @llvm.umax.i32(i32 %.116.us.i.i.i, i32 %.0.i.us.i.i.i)
  %i.ig = getelementptr inbounds nuw [1080 x i8], ptr %i.hy, i64 %indvars.iv.i.i.i ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 1080
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !102
  %i.ij = and i32 %i.ii, 1
  %.not.i.us.i.i.i.1 = icmp eq i32 %i.ij, 0
  br i1 %.not.i.us.i.i.i.1, label %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i.1, label %bb.w

bb.w:                                             ; preds = %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 1084
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !103
  %i.im = add i32 %i.il, 5
  br label %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i.1

opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i.1:     ; preds = %bb.w, %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i
  %.0.i.us.i.i.i.1 = phi i32 [ %i.im, %bb.w ], [ 5, %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i ]
  %i.in = tail call noundef i32 @llvm.umax.i32(i32 %i.if, i32 %.0.i.us.i.i.i.1) ; 3 uses
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter289.next.1 = add i64 %niter289, 2         ; 2 uses
  %niter289.ncmp.1 = icmp eq i64 %niter289.next.1, %unroll_iter288
  br i1 %niter289.ncmp.1, label %._crit_edge.us.i.i.i.unr-lcssa, label %.preheader.us.i.i.i.new, !llvm.loop !536

._crit_edge.us.i.i.i.unr-lcssa:                   ; preds = %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i.1
  br i1 %lcmp.mod285.not, label %._crit_edge.us.i.i.i, label %.epil.preheader282

.epil.preheader282:                               ; preds = %._crit_edge.us.i.i.i.unr-lcssa, %.preheader.us.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.preheader.us.i.i.i ], [ %indvars.iv.next.i.i.i.1, %._crit_edge.us.i.i.i.unr-lcssa ]
  %.116.us.i.i.i.epil.init = phi i32 [ %.018.us.i.i.i, %.preheader.us.i.i.i ], [ %i.in, %._crit_edge.us.i.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod287)
  %i.io = getelementptr inbounds nuw [1080 x i8], ptr %i.hy, i64 %indvars.iv.i.i.i.epil.init ; 2 uses
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !102
  %i.iq = and i32 %i.ip, 1
  %.not.i.us.i.i.i.epil = icmp eq i32 %i.iq, 0
  br i1 %.not.i.us.i.i.i.epil, label %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i.epil, label %bb.x

bb.x:                                             ; preds = %.epil.preheader282
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !103
  %i.it = add i32 %i.is, 5
  br label %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i.epil

opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i.epil:  ; preds = %bb.x, %.epil.preheader282
  %.0.i.us.i.i.i.epil = phi i32 [ %i.it, %bb.x ], [ 5, %.epil.preheader282 ]
  %i.iu = tail call noundef i32 @llvm.umax.i32(i32 %.116.us.i.i.i.epil.init, i32 %.0.i.us.i.i.i.epil)
  br label %._crit_edge.us.i.i.i

._crit_edge.us.i.i.i:                             ; preds = %._crit_edge.us.i.i.i.unr-lcssa, %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i.epil
  %.lcssa257 = phi i32 [ %i.in, %._crit_edge.us.i.i.i.unr-lcssa ], [ %i.iu, %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i.epil ] ; 2 uses
  %indvars.iv.next25.i.i.i = add nuw nsw i64 %indvars.iv24.i.i.i, 1 ; 2 uses
  %exitcond28.not.i.i.i = icmp eq i64 %indvars.iv.next25.i.i.i, %wide.trip.count27.i.i
  br i1 %exitcond28.not.i.i.i, label %._crit_edge19.loopexit22.i.i.i, label %.preheader.us.i.i.i, !llvm.loop !537

._crit_edge19.loopexit22.i.i.i:                   ; preds = %._crit_edge.us.i.i.i
  %i.iv = add i32 %.lcssa258, 6
  %i.iw = mul i32 %i.iv, %i.fv
  %i.ix = add i32 %i.iw, %.09.lcssa.i.i
  %i.iy = add i32 %.lcssa257, 6
  %.pre.i = mul i32 %i.iy, %i.fv
  br label %opj_j2k_get_max_qcc_size.exit.i

opj_j2k_get_max_qcc_size.exit.i:                  ; preds = %._crit_edge19.loopexit22.i.i.i, %opj_j2k_get_max_coc_size.exit.thread.i
  %.pre-phi.i = phi i32 [ %i.gs, %opj_j2k_get_max_coc_size.exit.thread.i ], [ %.pre.i, %._crit_edge19.loopexit22.i.i.i ]
  %i.iz = phi i32 [ %i.gt, %opj_j2k_get_max_coc_size.exit.thread.i ], [ %i.ix, %._crit_edge19.loopexit22.i.i.i ]
  %i.ja = add i32 %i.iz, %.pre-phi.i
  br label %bb.y

bb.y:                                             ; preds = %opj_j2k_get_max_qcc_size.exit.i, %opj_j2k_get_max_toc_size.exit.i
  %.034.i = phi i32 [ %.09.lcssa.i.i, %opj_j2k_get_max_toc_size.exit.i ], [ %i.ja, %opj_j2k_get_max_qcc_size.exit.i ] ; 2 uses
  br i1 %.not.i.i, label %opj_j2k_get_max_poc_size.exit.i, label %.lr.ph.i40.i.preheader

.lr.ph.i40.i.preheader:                           ; preds = %bb.y
  %xtraiter290 = and i32 %i.t, 3                  ; 3 uses
  %i.jb = icmp ult i32 %i.t, 4
  br i1 %i.jb, label %.lr.ph.i40.i.epil.preheader, label %.lr.ph.i40.i.preheader.new

.lr.ph.i40.i.preheader.new:                       ; preds = %.lr.ph.i40.i.preheader
  %unroll_iter295 = and i32 %i.t, -4
  br label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %.lr.ph.i40.i, %.lr.ph.i40.i.preheader.new
  %.01013.i.i = phi i32 [ 0, %.lr.ph.i40.i.preheader.new ], [ %i.jn, %.lr.ph.i40.i ]
  %.01112.i.i = phi ptr [ %106, %.lr.ph.i40.i.preheader.new ], [ %i.jo, %.lr.ph.i40.i ] ; 5 uses
  %niter296 = phi i32 [ 0, %.lr.ph.i40.i.preheader.new ], [ %niter296.next.3, %.lr.ph.i40.i ]
  %i.jc = getelementptr inbounds nuw i8, ptr %.01112.i.i, i64 420
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !92
  %i.je = tail call noundef i32 @llvm.umax.i32(i32 %.01013.i.i, i32 %i.jd)
  %i.jf = getelementptr inbounds nuw i8, ptr %.01112.i.i, i64 6116
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !92
  %i.jh = tail call noundef i32 @llvm.umax.i32(i32 %i.je, i32 %i.jg)
  %i.ji = getelementptr inbounds nuw i8, ptr %.01112.i.i, i64 11812
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !92
  %i.jk = tail call noundef i32 @llvm.umax.i32(i32 %i.jh, i32 %i.jj)
  %i.jl = getelementptr inbounds nuw i8, ptr %.01112.i.i, i64 17508
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !92
  %i.jn = tail call noundef i32 @llvm.umax.i32(i32 %i.jk, i32 %i.jm) ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.01112.i.i, i64 22784 ; 2 uses
  %niter296.next.3 = add i32 %niter296, 4         ; 2 uses
  %niter296.ncmp.3 = icmp eq i32 %niter296.next.3, %unroll_iter295
  br i1 %niter296.ncmp.3, label %opj_j2k_get_max_poc_size.exit.thread.i.unr-lcssa, label %.lr.ph.i40.i, !llvm.loop !538

opj_j2k_get_max_poc_size.exit.i:                  ; preds = %bb.y
  %i.jp = add i32 %.034.i, 13                     ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !11
  %.not.i = icmp eq i32 %i.jr, 0
  br i1 %.not.i, label %opj_j2k_get_specific_header_sizes.exit, label %._crit_edge.i

opj_j2k_get_max_poc_size.exit.thread.i.unr-lcssa: ; preds = %.lr.ph.i40.i
  %lcmp.mod292.not = icmp eq i32 %xtraiter290, 0
  br i1 %lcmp.mod292.not, label %opj_j2k_get_max_poc_size.exit.thread.i, label %.lr.ph.i40.i.epil.preheader

.lr.ph.i40.i.epil.preheader:                      ; preds = %opj_j2k_get_max_poc_size.exit.thread.i.unr-lcssa, %.lr.ph.i40.i.preheader
  %.01013.i.i.epil.init = phi i32 [ 0, %.lr.ph.i40.i.preheader ], [ %i.jn, %opj_j2k_get_max_poc_size.exit.thread.i.unr-lcssa ]
  %.01112.i.i.epil.init = phi ptr [ %106, %.lr.ph.i40.i.preheader ], [ %i.jo, %opj_j2k_get_max_poc_size.exit.thread.i.unr-lcssa ]
  %lcmp.mod294 = icmp ne i32 %xtraiter290, 0
  tail call void @llvm.assume(i1 %lcmp.mod294)
  br label %.lr.ph.i40.i.epil

.lr.ph.i40.i.epil:                                ; preds = %.lr.ph.i40.i.epil, %.lr.ph.i40.i.epil.preheader
  %.01013.i.i.epil = phi i32 [ %i.ju, %.lr.ph.i40.i.epil ], [ %.01013.i.i.epil.init, %.lr.ph.i40.i.epil.preheader ]
  %.01112.i.i.epil = phi ptr [ %i.jv, %.lr.ph.i40.i.epil ], [ %.01112.i.i.epil.init, %.lr.ph.i40.i.epil.preheader ] ; 2 uses
  %epil.iter291 = phi i32 [ %epil.iter291.next, %.lr.ph.i40.i.epil ], [ 0, %.lr.ph.i40.i.epil.preheader ]
  %i.js = getelementptr inbounds nuw i8, ptr %.01112.i.i.epil, i64 420
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !92
  %i.ju = tail call noundef i32 @llvm.umax.i32(i32 %.01013.i.i.epil, i32 %i.jt) ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.01112.i.i.epil, i64 5696
  %epil.iter291.next = add i32 %epil.iter291, 1   ; 2 uses
  %epil.iter291.cmp.not = icmp eq i32 %epil.iter291.next, %xtraiter290
  br i1 %epil.iter291.cmp.not, label %opj_j2k_get_max_poc_size.exit.thread.i, label %.lr.ph.i40.i.epil, !llvm.loop !539

opj_j2k_get_max_poc_size.exit.thread.i:           ; preds = %.lr.ph.i40.i.epil, %opj_j2k_get_max_poc_size.exit.thread.i.unr-lcssa
  %.lcssa256 = phi i32 [ %i.jn, %opj_j2k_get_max_poc_size.exit.thread.i.unr-lcssa ], [ %i.ju, %.lr.ph.i40.i.epil ]
  %i.jw = mul i32 %.lcssa256, 9
  %i.jx = add i32 %.034.i, 13
  %i.jy = add i32 %i.jx, %i.jw                    ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !11
  %.not57.i = icmp eq i32 %i.ka, 0
  br i1 %.not57.i, label %opj_j2k_get_specific_header_sizes.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %opj_j2k_get_max_poc_size.exit.thread.i, %.lr.ph.i
  %.048.i = phi i32 [ %i.kd, %.lr.ph.i ], [ 0, %opj_j2k_get_max_poc_size.exit.thread.i ]
  %.03347.i = phi i32 [ %i.ke, %.lr.ph.i ], [ 0, %opj_j2k_get_max_poc_size.exit.thread.i ] ; 2 uses
  %i.kb = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.kc = tail call i32 @opj_get_encoding_packet_count(ptr noundef %i.kb, ptr noundef nonnull %i.gp, i32 noundef %.03347.i) #21
  %i.kd = tail call noundef i32 @llvm.umax.i32(i32 %.048.i, i32 %i.kc) ; 2 uses
  %i.ke = add nuw i32 %.03347.i, 1                ; 2 uses
  %i.kf = load i32, ptr %i.p, align 4, !tbaa !32
  %i.kg = load i32, ptr %i.r, align 8, !tbaa !33
  %i.kh = mul i32 %i.kg, %i.kf
  %i.ki = icmp ult i32 %i.ke, %i.kh
  br i1 %i.ki, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !540

._crit_edge.i:                                    ; preds = %.lr.ph.i, %opj_j2k_get_max_poc_size.exit.i
  %i.kj = phi i32 [ %i.jp, %opj_j2k_get_max_poc_size.exit.i ], [ %i.jy, %.lr.ph.i ]
  %.0.lcssa.i = phi i32 [ 0, %opj_j2k_get_max_poc_size.exit.i ], [ %i.kd, %.lr.ph.i ] ; 2 uses
  %i.kk = zext i32 %.0.lcssa.i to i64
  %i.kl = add nuw nsw i64 %i.kk, 16381
  %i.km = udiv i64 %i.kl, 16382
  %i.kn = trunc nuw nsw i64 %i.km to i32
  %i.ko = mul nuw nsw i32 %i.kn, 6
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.kq = mul i32 %.0.lcssa.i, 5
  %i.kr = add i32 %i.kq, %i.kj                    ; 2 uses
  %i.ks = add i32 %i.kr, 1
  %i.kt = add i32 %i.ks, %i.ko                    ; 2 uses
  store i32 %i.kt, ptr %i.kp, align 8, !tbaa !11
  %i.ku = add i32 %i.kt, %i.kr
  br label %opj_j2k_get_specific_header_sizes.exit

opj_j2k_get_specific_header_sizes.exit:           ; preds = %opj_j2k_get_max_poc_size.exit.i, %opj_j2k_get_max_poc_size.exit.thread.i, %._crit_edge.i
  %.1.i = phi i32 [ %i.ku, %._crit_edge.i ], [ %i.jp, %opj_j2k_get_max_poc_size.exit.i ], [ %i.jy, %opj_j2k_get_max_poc_size.exit.thread.i ]
  %i.kv = zext i32 %.1.i to i64
  %i.kw = add i64 %.0115.lcssa, %i.kv
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.kw, i64 4294967295) ; 3 uses
  %i.kx = trunc nuw i64 %spec.store.select to i32
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.kx, ptr %i.ky, align 8, !tbaa !11
  %i.kz = tail call ptr @opj_malloc(i64 noundef %spec.store.select) #21 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.kz, ptr %i.la, align 8, !tbaa !11
  %i.lb = icmp eq ptr %i.kz, null
  br i1 %i.lb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %opj_j2k_get_specific_header_sizes.exit
  %i.lc = lshr i64 %spec.store.select, 20
  %i.ld = trunc nuw nsw i64 %i.lc to i32
  %i.le = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.326, i32 noundef %i.ld) #21 ; 0 uses
  br label %bb.ad

bb.aa:                                            ; preds = %opj_j2k_get_specific_header_sizes.exit
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !11
  %.not133 = icmp eq i32 %i.lg, 0
  br i1 %.not133, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !11
  %i.lj = mul i32 %i.li, 6
  %i.lk = zext i32 %i.lj to i64
  %i.ll = tail call ptr @opj_malloc(i64 noundef %i.lk) #21 ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ll, ptr %i.lm, align 8, !tbaa !11
  %.not134 = icmp eq ptr %i.ll, null
  br i1 %.not134, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ll, ptr %i.ln, align 8, !tbaa !11
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ac, %bb.ab, %bb.z
  %.0127 = phi i32 [ 0, %bb.z ], [ 0, %bb.ab ], [ 1, %bb.ac ], [ 1, %bb.aa ]
  ret i32 %.0127
}

declare void @opj_pi_update_encoding_parameters(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @opj_j2k_write_SPCod_SPCoc(ptr nofree readonly captures(none) %.264.val, i32 noundef %0, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [5696 x i8], ptr %.264.val, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5600
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !93   ; 8 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !10
  %i.f = icmp ult i32 %i.e, 5
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.311) #21 ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !103
  %i.j = add i32 %i.i, -1
  tail call void @opj_write_bytes_LE(ptr noundef %1, i32 noundef %i.j, i32 noundef 1) #21
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !104
  %i.n = add i32 %i.m, -2
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.k, i32 noundef %i.n, i32 noundef 1) #21
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !105
  %i.r = add i32 %i.q, -2
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.o, i32 noundef %i.r, i32 noundef 1) #21
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.u = load i32, ptr %i.t, align 4, !tbaa !107
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.s, i32 noundef %i.u, i32 noundef 1) #21
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !109
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.v, i32 noundef %i.x, i32 noundef 1) #21
  %i.y = load i32, ptr %2, align 4, !tbaa !10
  %i.z = add i32 %i.y, -5                         ; 3 uses
  store i32 %i.z, ptr %2, align 4, !tbaa !10
  %i.aa = load i32, ptr %i.d, align 4, !tbaa !102
  %i.ab = and i32 %i.aa, 1
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ad = load i32, ptr %i.h, align 4, !tbaa !103 ; 2 uses
  %i.ae = icmp ult i32 %i.z, %i.ad
  br i1 %i.ae, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not3 = icmp eq i32 %i.ad, 0
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 812
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 944
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.311) #21 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %.0411 = phi ptr [ %i.ac, %.lr.ph ], [ %i.ao, %bb.f ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !10
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !10
  %i.am = shl i32 %i.al, 4
  %i.an = add i32 %i.am, %i.aj
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %.0411, i32 noundef %i.an, i32 noundef 1) #21
  %i.ao = getelementptr inbounds nuw i8, ptr %.0411, i64 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = load i32, ptr %i.h, align 4, !tbaa !103 ; 2 uses
  %i.aq = zext i32 %i.ap to i64
  %i.ar = icmp samesign ult i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %bb.f, label %._crit_edge.loopexit, !llvm.loop !541

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre = load i32, ptr %2, align 4, !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.as = phi i32 [ %i.z, %.preheader ], [ %.pre, %._crit_edge.loopexit ]
  %.lcssa = phi i32 [ 0, %.preheader ], [ %i.ap, %._crit_edge.loopexit ]
  %i.at = sub i32 %i.as, %.lcssa
  store i32 %i.at, ptr %2, align 4, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %._crit_edge, %bb.e, %bb.b
  %.040 = phi i32 [ 0, %bb.b ], [ 0, %bb.e ], [ 1, %._crit_edge ], [ 1, %bb.c ]
  ret i32 %.040
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @opj_j2k_write_SQcd_SQcc(ptr nofree readonly captures(none) %.264.val, i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef nonnull captures(none) %3, ptr noundef %4) unnamed_addr #3 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [5696 x i8], ptr %.264.val, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5600
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !93
  %i.e = zext i32 %1 to i64
  %i.f = getelementptr inbounds nuw [1080 x i8], ptr %i.d, i64 %i.e ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i32, ptr %i.g, align 4, !tbaa !110  ; 3 uses
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !103
  %i.l = mul i32 %i.k, 3                          ; 2 uses
  %i.m = add i32 %i.l, -2                         ; 3 uses
  %i.n = icmp eq i32 %i.h, 0
  br i1 %i.n, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.o = add i32 %i.l, -1                         ; 2 uses
  %i.p = load i32, ptr %3, align 4, !tbaa !10
  %i.q = icmp ult i32 %i.p, %i.o
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %4, i32 noundef 1, ptr noundef nonnull @.str.314) #21 ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 804
  %i.t = load i32, ptr %i.s, align 4, !tbaa !111
  %i.u = shl i32 %i.t, 5
  tail call void @opj_write_bytes_LE(ptr noundef %2, i32 noundef %i.u, i32 noundef 1) #21
  %.not7 = icmp eq i32 %i.m, 0
  br i1 %.not7, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %wide.trip.count = zext i32 %i.m to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.pn2 = phi ptr [ %2, %.lr.ph ], [ %.048, %bb.f ]
  %.048 = getelementptr inbounds nuw i8, ptr %.pn2, i64 1 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4, !tbaa !214
  %i.y = shl i32 %i.x, 3
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %.048, i32 noundef %i.y, i32 noundef 1) #21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !542

.thread:                                          ; preds = %bb.a, %bb.b
  %i.z = phi i32 [ %i.m, %bb.b ], [ 1, %bb.a ]    ; 3 uses
  %i.aa = shl i32 %i.z, 1                         ; 2 uses
  %i.ab = or disjoint i32 %i.aa, 1                ; 2 uses
  %i.ac = load i32, ptr %3, align 4, !tbaa !10
  %.not = icmp ugt i32 %i.ac, %i.aa
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread
  %i.ad = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %4, i32 noundef 1, ptr noundef nonnull @.str.314) #21 ; 0 uses
  br label %bb.j

bb.h:                                             ; preds = %.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 804
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !111
  %i.ag = shl i32 %i.af, 5
  %i.ah = add i32 %i.ag, %i.h
  tail call void @opj_write_bytes_LE(ptr noundef %2, i32 noundef %i.ah, i32 noundef 1) #21
  %.not8 = icmp eq i32 %i.z, 0
  br i1 %.not8, label %.loopexit, label %.lr.ph6

.lr.ph6:                                          ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %wide.trip.count14 = zext i32 %i.z to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph6, %bb.i
  %indvars.iv11 = phi i64 [ 0, %.lr.ph6 ], [ %indvars.iv.next12, %bb.i ] ; 2 uses
  %.1494 = phi ptr [ %i.ai, %.lr.ph6 ], [ %i.aq, %bb.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv11 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !214
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !213
  %i.ao = shl i32 %i.al, 11
  %i.ap = add i32 %i.ao, %i.an
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %.1494, i32 noundef %i.ap, i32 noundef 2) #21
  %i.aq = getelementptr inbounds nuw i8, ptr %.1494, i64 2
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1 ; 2 uses
  %exitcond15.not = icmp eq i64 %indvars.iv.next12, %wide.trip.count14
  br i1 %exitcond15.not, label %.loopexit, label %bb.i, !llvm.loop !543

.loopexit:                                        ; preds = %bb.f, %bb.i, %bb.e, %bb.h
  %.046 = phi i32 [ %i.ab, %bb.h ], [ 1, %bb.e ], [ %i.ab, %bb.i ], [ %i.o, %bb.f ]
  %i.ar = load i32, ptr %3, align 4, !tbaa !10
  %i.as = sub i32 %i.ar, %.046
  store i32 %i.as, ptr %3, align 4, !tbaa !10
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %bb.g, %bb.d
  %.047 = phi i32 [ 0, %bb.d ], [ 1, %.loopexit ], [ 0, %bb.g ]
  ret i32 %.047
}

declare i32 @opj_get_encoding_packet_count(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.uadd.sat.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.and.v4i32(<4 x i32>) #18

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nounwind }
attributes #22 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{!2, !34}
!3 = distinct !{!3, !34}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!8, !8, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTS9opj_image", !12, i64 0}
!14 = !{!"short", !8, i64 0}
!15 = !{!"p1 omnipotent char", !12, i64 0}
!16 = !{!"p1 _ZTS14opj_ppx_struct", !12, i64 0}
!17 = !{!"p1 _ZTS7opj_tcp", !12, i64 0}
!18 = !{!"opj_cp", !14, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !15, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !16, i64 48, !15, i64 56, !9, i64 64, !9, i64 68, !15, i64 72, !15, i64 80, !15, i64 88, !9, i64 96, !9, i64 100, !9, i64 104, !17, i64 112, !8, i64 120, !9, i64 152, !9, i64 156, !9, i64 156, !9, i64 156}
!19 = !{!"p1 _ZTS18opj_procedure_list", !12, i64 0}
!20 = !{!"p1 _ZTS20opj_codestream_index", !12, i64 0}
!21 = !{!"p1 _ZTS7opj_tcd", !12, i64 0}
!22 = !{!"p1 _ZTS17opj_thread_pool_t", !12, i64 0}
!23 = !{!"opj_j2k", !9, i64 0, !8, i64 8, !13, i64 136, !13, i64 144, !18, i64 152, !19, i64 312, !19, i64 320, !20, i64 328, !9, i64 336, !21, i64 344, !22, i64 352, !9, i64 360, !9, i64 364, !9, i64 368}
!24 = !{!23, !9, i64 368}
!25 = !{!23, !9, i64 304}
!26 = !{!23, !21, i64 344}
!27 = !{!23, !22, i64 352}
!28 = !{!23, !9, i64 0}
!29 = !{!23, !19, i64 320}
!30 = !{!23, !19, i64 312}
!31 = !{!18, !17, i64 112}
!32 = !{!18, !9, i64 36}
!33 = !{!18, !9, i64 32}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!18, !16, i64 48}
!36 = !{!18, !9, i64 40}
!37 = !{!"opj_ppx_struct", !15, i64 0, !9, i64 8}
!38 = !{!37, !15, i64 0}
!39 = !{!18, !15, i64 80}
!40 = !{!18, !15, i64 56}
!41 = !{!18, !15, i64 24}
!42 = !{!23, !20, i64 328}
!43 = !{!23, !13, i64 136}
!44 = !{!23, !13, i64 144}
!45 = !{!"p1 int", !12, i64 0}
!46 = !{!"opj_cparameters", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !45, i64 32, !15, i64 40, !9, i64 48, !9, i64 52, !8, i64 56, !9, i64 4792, !9, i64 4796, !8, i64 4800, !8, i64 5200, !9, i64 5600, !9, i64 5604, !9, i64 5608, !9, i64 5612, !9, i64 5616, !9, i64 5620, !9, i64 5624, !9, i64 5628, !8, i64 5632, !8, i64 5764, !8, i64 5896, !8, i64 9992, !9, i64 14088, !8, i64 14092, !9, i64 18188, !9, i64 18192, !9, i64 18196, !9, i64 18200, !9, i64 18204, !9, i64 18208, !9, i64 18212, !9, i64 18216, !8, i64 18220, !8, i64 18284, !8, i64 18348, !8, i64 18412, !8, i64 18476, !9, i64 18540, !9, i64 18544, !9, i64 18548, !9, i64 18552, !8, i64 18556, !8, i64 18620, !9, i64 18684, !9, i64 18688, !9, i64 18692, !8, i64 18696, !8, i64 18697, !8, i64 18698, !9, i64 18700, !12, i64 18704, !9, i64 18712, !14, i64 18716}
!47 = !{!46, !9, i64 5600}
!48 = !{!46, !9, i64 5604}
!49 = !{!46, !9, i64 5608}
!50 = !{!46, !9, i64 4796}
!51 = !{!"p1 _ZTS14opj_image_comp", !12, i64 0}
!52 = !{!"opj_image", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !51, i64 24, !15, i64 32, !9, i64 40}
!53 = !{!52, !9, i64 16}
!54 = !{!46, !14, i64 18716}
!55 = !{!46, !9, i64 18712}
!56 = !{!46, !9, i64 18688}
!57 = !{!46, !9, i64 20}
!58 = !{!"float", !8, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!52, !51, i64 24}
!61 = !{!"opj_image_comp", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !45, i64 48, !14, i64 56}
!62 = !{!61, !9, i64 8}
!63 = !{!61, !9, i64 12}
!64 = !{!61, !9, i64 24}
!65 = !{!61, !9, i64 0}
!66 = !{!61, !9, i64 4}
!67 = !{!18, !14, i64 0}
!68 = !{!46, !9, i64 0}
!69 = !{!18, !9, i64 12}
!70 = !{!18, !9, i64 16}
!71 = !{!52, !9, i64 8}
!72 = !{!18, !9, i64 4}
!73 = !{!52, !9, i64 12}
!74 = !{!18, !9, i64 8}
!75 = !{!46, !8, i64 18696}
!76 = !{!46, !8, i64 18697}
!77 = !{!"p1 _ZTS8opj_tccp", !12, i64 0}
!78 = !{!"p1 double", !12, i64 0}
!79 = !{!"p1 float", !12, i64 0}
!80 = !{!"p1 _ZTS12opj_mct_data", !12, i64 0}
!81 = !{!"p1 _ZTS33opj_simple_mcc_decorrelation_data", !12, i64 0}
!82 = !{!"opj_tcp", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !8, i64 20, !9, i64 420, !8, i64 424, !9, i64 5160, !16, i64 5168, !15, i64 5176, !15, i64 5184, !9, i64 5192, !9, i64 5196, !8, i64 5200, !77, i64 5600, !9, i64 5608, !9, i64 5612, !15, i64 5616, !9, i64 5624, !78, i64 5632, !79, i64 5640, !79, i64 5648, !80, i64 5656, !9, i64 5664, !9, i64 5668, !81, i64 5672, !9, i64 5680, !9, i64 5684, !9, i64 5688, !9, i64 5688, !9, i64 5688}
!83 = !{!82, !9, i64 8}
!84 = !{!82, !9, i64 16}
!85 = !{!46, !9, i64 4792}
!86 = !{!"opj_poc", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !8, i64 40, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140, !9, i64 144}
!87 = !{!86, !9, i64 48}
!88 = !{!86, !9, i64 4}
!89 = !{!86, !9, i64 0}
!90 = !{!86, !9, i64 16}
!91 = !{!86, !9, i64 32}
!92 = !{!82, !9, i64 420}
!93 = !{!82, !77, i64 5600}
!94 = !{!82, !79, i64 5648}
!95 = !{!82, !79, i64 5640}
!96 = !{!82, !78, i64 5632}
!97 = !{!"opj_tccp", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !8, i64 28, !9, i64 804, !9, i64 808, !8, i64 812, !8, i64 944, !9, i64 1076}
!98 = !{!97, !9, i64 1076}
!99 = !{!"llvm.loop.unroll.disable"}
!100 = !{!61, !9, i64 32}
!101 = !{!46, !9, i64 48}
!102 = !{!97, !9, i64 0}
!103 = !{!97, !9, i64 4}
!104 = !{!97, !9, i64 8}
!105 = !{!97, !9, i64 12}
!106 = !{!46, !9, i64 5612}
!107 = !{!97, !9, i64 16}
!108 = !{!46, !9, i64 5616}
!109 = !{!97, !9, i64 20}
!110 = !{!97, !9, i64 24}
!111 = !{!97, !9, i64 804}
!112 = !{!46, !9, i64 5620}
!113 = !{!97, !9, i64 808}
!114 = !{!"llvm.loop.isvectorized", i32 1}
!115 = !{!"llvm.loop.unroll.runtime.disable"}
!116 = !{!46, !9, i64 5628}
!117 = !{!46, !9, i64 16}
!118 = !{!46, !9, i64 52}
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.and.v4i32
!324 = distinct !{!324, !34}
!325 = distinct !{!325, !34}
!326 = distinct !{!326, !34}
!327 = distinct !{!327, !34}
!328 = distinct !{!328, i1 false, !"LVerDomain"}
!329 = distinct !{!329, !328}
!330 = distinct !{!330, !328}
!331 = distinct !{!331, !34, !114, !115}
!332 = distinct !{!332, !34, !114}
!333 = distinct !{!333, !34}
!334 = !{!"p1 _ZTS22opj_codestream_info_v2", !12, i64 0}
!335 = !{!334, !334, i64 0}
!336 = !{!"p1 _ZTS13opj_tccp_info", !12, i64 0}
!337 = !{!"opj_tile_v2_info", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !336, i64 24}
!338 = !{!"p1 _ZTS16opj_tile_v2_info", !12, i64 0}
!339 = !{!"opj_codestream_info_v2", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !337, i64 32, !338, i64 64}
!340 = !{!339, !9, i64 24}
!341 = !{!339, !338, i64 64}
!342 = !{!339, !9, i64 44}
!343 = !{!339, !9, i64 48}
!344 = !{!339, !336, i64 56}
!345 = !{!"opj_tccp_info", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !8, i64 32, !8, i64 420, !9, i64 808, !9, i64 812, !8, i64 816, !8, i64 948}
!346 = !{!345, !9, i64 28}
!347 = !{!345, !9, i64 808}
!348 = !{!329}
!349 = !{!330}
!350 = !{!345, !9, i64 812}
!351 = distinct !{!351, !34}
!352 = distinct !{!352, !34}
!353 = distinct !{!353, !34}
!354 = !{!157, !9, i64 44}
!355 = distinct !{!355, !34}
!356 = distinct !{!356, !99}
!357 = distinct !{!357, !34}
!358 = distinct !{!358, !34}
!359 = distinct !{!359, !34}
!360 = distinct !{!360, !34}
!361 = distinct !{!361, !34}
!362 = distinct !{!362, !34}
!363 = distinct !{!363, !34}
!364 = distinct !{!364, !34}
!365 = distinct !{!365, !34, !218}
!366 = distinct !{!366, !34}
!367 = distinct !{!367, !34}
!368 = distinct !{!368, !99}
!369 = distinct !{!369, !34}
!370 = distinct !{!370, !34}
!371 = distinct !{!371, !99}
!372 = distinct !{!372, !34, !114, !115}
!373 = distinct !{!373, !99}
!374 = distinct !{!374, !34, !114}
!375 = distinct !{!375, !34}
!376 = distinct !{!376, i1 false, !"LVerDomain"}
!377 = distinct !{!377, !376}
!378 = distinct !{!378, !376}
!379 = distinct !{!379, !34, !114, !115}
!380 = distinct !{!380, !99}
!381 = distinct !{!381, !34, !114}
!382 = distinct !{!382, !34}
!383 = distinct !{!383, i1 false, !"LVerDomain"}
!384 = distinct !{!384, !383}
!385 = distinct !{!385, !383}
!386 = distinct !{!386, !34, !114, !115}
!387 = distinct !{!387, !99}
!388 = distinct !{!388, !34, !114}
!389 = distinct !{!389, !34}
!390 = distinct !{!390, !34, !114, !115}
!391 = distinct !{!391, !34, !115, !114}
!392 = distinct !{!392, !34}
!393 = distinct !{!393, !34, !114, !115}
!394 = distinct !{!394, !34, !115, !114}
!395 = distinct !{!395, !34}
!396 = distinct !{!396, !34}
!397 = !{!223, !9, i64 56}
!398 = !{!223, !9, i64 8}
!399 = !{!223, !9, i64 0}
!400 = !{!223, !9, i64 12}
!401 = !{!223, !9, i64 4}
!402 = !{!377}
!403 = !{!378}
!404 = !{!384}
!405 = !{!385}
!406 = distinct !{!406, !34}
!407 = distinct !{!407, !34}
!408 = distinct !{!408, !34}
!409 = !{!189, !9, i64 16}
!410 = distinct !{!410, !34}
!411 = distinct !{!411, !34}
!412 = distinct !{!412, !34}
!413 = distinct !{!413, !34}
!414 = distinct !{!414, !34}
!415 = distinct !{!415, !34}
!416 = distinct !{!416, !34}
!417 = distinct !{!417, !34}
!418 = distinct !{!418, !34}
!419 = distinct !{!419, !34}
!420 = !{!18, !9, i64 64}
!421 = !{!18, !9, i64 96}
!422 = distinct !{!422, !34}
!423 = distinct !{!423, !34}
!424 = distinct !{!424, !34}
!425 = distinct !{!425, !34}
!426 = distinct !{!426, !34}
!427 = distinct !{!427, !99}
!428 = !{!82, !9, i64 12}
!429 = distinct !{!429, !34}
!430 = distinct !{!430, !34}
!431 = distinct !{!431, !34, !238}
!432 = distinct !{!432, !34}
!433 = distinct !{!433, !34}
!434 = !{!23, !9, i64 360}
!435 = !{!23, !9, i64 364}
!436 = distinct !{!436, !34}
!437 = distinct !{!437, !34}
!438 = distinct !{!438, !34}
!439 = distinct !{!439, !34}
!440 = distinct !{!440, !34}
!441 = distinct !{!441, !34}
!442 = distinct !{!442, !34}
!443 = distinct !{!443, !34}
!444 = distinct !{!444, !34}
!445 = distinct !{!445, !34}
!446 = distinct !{!446, !34}
!447 = distinct !{!447, !34}
!448 = distinct !{!448, !99}
!449 = distinct !{!449, !34}
!450 = distinct !{!450, !34}
!451 = distinct !{!451, !34}
!452 = distinct !{!452, !34}
!453 = distinct !{!453, !34}
!454 = distinct !{!454, !34}
!455 = distinct !{!455, !34}
!456 = distinct !{!456, !99}
!457 = distinct !{!457, !34}
!458 = !{!195, !195, i64 0}
!459 = distinct !{!459, !34, !114, !115}
!460 = distinct !{!460, !34, !238}
!461 = distinct !{!461, !34, !115, !114}
!462 = distinct !{!462, !34}
!463 = distinct !{!463, !34}
!464 = distinct !{!464, !34}
!465 = distinct !{!465, !34, !114, !115}
!466 = distinct !{!466, !34}
!467 = distinct !{!467, !34}
!468 = distinct !{!468, !34}
!469 = distinct !{!469, !34}
!470 = distinct !{!470, !34}
!471 = distinct !{!471, !99}
!472 = distinct !{!472, !34}
!473 = distinct !{!473, !34}
!474 = distinct !{!474, !34}
!475 = distinct !{!475, !34}
!476 = distinct !{!476, !34, !218}
!477 = distinct !{!477, !34}
!478 = distinct !{!478, !99}
!479 = distinct !{!479, !34}
!480 = !{!189, !9, i64 88}
!481 = !{!223, !222, i64 32}
!482 = !{!"opj_tcd_resolution", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !8, i64 32, !9, i64 176, !9, i64 180, !9, i64 184, !9, i64 188}
!483 = !{!482, !9, i64 0}
!484 = !{!482, !9, i64 8}
!485 = !{!223, !9, i64 24}
!486 = !{!482, !9, i64 176}
!487 = !{!482, !9, i64 184}
!488 = !{!45, !45, i64 0}
!489 = distinct !{!489, !34}
!490 = distinct !{!490, !34}
!491 = distinct !{!491, !99}
!492 = distinct !{!492, !34}
!493 = distinct !{!493, !34}
!494 = distinct !{!494, !34}
!495 = distinct !{!495, !34}
!496 = !{!189, !9, i64 4}
!497 = !{!189, !9, i64 8}
!498 = !{!196, !9, i64 848}
!499 = !{!"opj_tcd_marker_info", !9, i64 0, !9, i64 4, !45, i64 8}
!500 = !{!499, !9, i64 4}
!501 = !{!499, !45, i64 8}
!502 = !{!86, !9, i64 92}
!503 = !{!86, !9, i64 88}
!504 = !{!86, !9, i64 96}
!505 = !{!86, !9, i64 84}
!506 = distinct !{!506, !34, !114, !115}
!507 = distinct !{!507, !34, !115, !114}
!508 = distinct !{!508, !34}
!509 = distinct !{!509, !34}
!510 = distinct !{!510, !34}
!511 = distinct !{!511, !34}
!512 = distinct !{!512, !34}
!513 = distinct !{!513, !34}
!514 = distinct !{!514, !34}
!515 = distinct !{!515, !34}
!516 = distinct !{!516, !34}
!517 = distinct !{!517, !34}
!518 = distinct !{!518, !34}
!519 = distinct !{!519, !34}
!520 = distinct !{!520, !34}
!521 = distinct !{!521, !34}
!522 = distinct !{!522, !34}
!523 = distinct !{!523, !34}
!524 = distinct !{!524, !34, !115, !114}
!525 = distinct !{!525, !34}
!526 = distinct !{!526, !34, !114, !115}
!527 = distinct !{!527, !34, !114, !115}
!528 = distinct !{!528, !34, !115, !114}
!529 = distinct !{!529, !34}
!530 = distinct !{!530, !34}
!531 = distinct !{!531, !34}
!532 = distinct !{!532, !34}
!533 = distinct !{!533, !34}
!534 = distinct !{!534, !34}
!535 = distinct !{!535, !99}
!536 = distinct !{!536, !34}
!537 = distinct !{!537, !34}
!538 = distinct !{!538, !34}
!539 = distinct !{!539, !99}
!540 = distinct !{!540, !34}
!541 = distinct !{!541, !34}
!542 = distinct !{!542, !34}
!543 = distinct !{!543, !34}
end_hunk_1
