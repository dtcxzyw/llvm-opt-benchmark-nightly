Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/bml_r2?download=true
inline.NumInlined: 58
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@mca_bml_r2_allocate_endpoint:bb.a

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not9.i = icmp eq ptr %i.b, null
  br i1 %.not9.i, label %opal_obj_new.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @mca_bml_base_endpoint_t_class, ptr %i.b, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store volatile i32 1, ptr %i.e, align 8, !tbaa !131
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_bml_base_endpoint_t_class, i64 40), align 8, !tbaa !132 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.g, null
  br i1 %.not6.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %i.h = phi ptr [ %i.j, %.lr.ph.i.i ], [ %i.g, %bb.d ]
  %.07.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.f, %bb.d ]
  tail call void %i.h(ptr noundef nonnull %i.b) #15, !inline_history !127
  %i.i = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !47   ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !128

opal_obj_new.exit:                                ; preds = %bb.c
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mca_bml_r2_allocate_endpoint) #15
  br label %bb.e

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @mca_bml_r2, i64 80), align 8, !tbaa !56
  %i.m = tail call i32 @mca_bml_base_btl_array_reserve(ptr noundef nonnull %i.k, i64 noundef %i.l) #15 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @mca_bml_r2, i64 80), align 8, !tbaa !56
  %i.p = tail call i32 @mca_bml_base_btl_array_reserve(ptr noundef nonnull %i.n, i64 noundef %i.o) #15 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @mca_bml_r2, i64 80), align 8, !tbaa !56
  %i.s = tail call i32 @mca_bml_base_btl_array_reserve(ptr noundef nonnull %i.q, i64 noundef %i.r) #15 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 -1, ptr %i.t, align 8, !tbaa !71
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %0, ptr %i.u, align 8, !tbaa !133
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  store i32 0, ptr %i.v, align 8, !tbaa !85
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %opal_obj_new.exit
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -16, 1) i32 @mca_bml_r2_endpoint_add_btl(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !134  ; 4 uses
  %i.c = and i32 %i.b, 2
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !135
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %2, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 84
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.mca_bml_r2_endpoint_add_btl, ptr noundef nonnull %i.h) #15
  %i.i = and i32 %i.b, -3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.i, %bb.c ], [ %i.b, %bb.b ], [ %i.b, %bb.a ] ; 4 uses
  %i.j = and i32 %.0, 4
  %.not71 = icmp eq i32 %i.j, 0
  br i1 %.not71, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !136
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %2, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 84
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.mca_bml_r2_endpoint_add_btl, ptr noundef nonnull %i.o) #15
  %i.p = and i32 %.0, -5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.1 = phi i32 [ %i.p, %bb.f ], [ %.0, %bb.e ], [ %.0, %bb.d ] ; 4 uses
  %i.q = and i32 %.1, 7
  %i.r = icmp eq i32 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %spec.select = or disjoint i32 %.1, %i.s        ; 4 uses
  %i.t = and i32 %spec.select, 1
  %.not72 = icmp eq i32 %i.t, 0
  br i1 %.not72, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr i8, ptr %1, i64 136        ; 3 uses
  %.val = load i64, ptr %i.u, align 8, !tbaa !60  ; 2 uses
  %.not85 = icmp eq i64 %.val, 0
  br i1 %.not85, label %mca_bml_base_btl_array_get_index.exit.thread, label %mca_bml_base_btl_array_get_index.exit

mca_bml_base_btl_array_get_index.exit:            ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !61
  %i.x = getelementptr [24 x i8], ptr %i.w, i64 %.val ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 -24      ; 2 uses
  %.not73 = icmp eq ptr %i.y, null
  br i1 %.not73, label %mca_bml_base_btl_array_get_index.exit.thread, label %bb.i

bb.i:                                             ; preds = %mca_bml_base_btl_array_get_index.exit
  %i.z = getelementptr i8, ptr %i.x, i64 -16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !65
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !86
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !86
  %.not74 = icmp ugt i32 %i.ac, %i.ae
  br i1 %.not74, label %bb.p, label %mca_bml_base_btl_array_get_index.exit.thread

mca_bml_base_btl_array_get_index.exit.thread:     ; preds = %bb.h, %bb.i, %mca_bml_base_btl_array_get_index.exit
  %.not7384 = phi i1 [ true, %mca_bml_base_btl_array_get_index.exit ], [ false, %bb.i ], [ true, %bb.h ]
  %.0.i83 = phi ptr [ null, %mca_bml_base_btl_array_get_index.exit ], [ %i.y, %bb.i ], [ null, %bb.h ]
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_btl_base_framework, i64 76), align 4, !tbaa !139
  %i.ag = tail call i32 @opal_output_get_verbosity(i32 noundef %i.af) #15
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %mca_bml_base_btl_array_get_index.exit.thread
  %i.ai = load ptr, ptr @opal_get_proc_hostname, align 8, !tbaa !47
  %i.aj = tail call ptr %i.ai(ptr noundef %0) #15 ; 2 uses
  %i.ak = load ptr, ptr %2, align 8, !tbaa !34
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 84
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = tail call ptr @ompi_pmix_print_name(ptr noundef nonnull %i.am) #15
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.al, ptr noundef %i.an, ptr noundef %i.aj) #15
  tail call void @free(ptr noundef %i.aj) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %mca_bml_base_btl_array_get_index.exit.thread
  br i1 %.not7384, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i83, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !65
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !86
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !86
  %.not75 = icmp ugt i32 %i.ar, %i.at
  br i1 %.not75, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !61
  %i.aw = load i64, ptr %i.u, align 8, !tbaa !60  ; 2 uses
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.u, align 8, !tbaa !60
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.aw ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %2, ptr %i.az, align 8, !tbaa !65
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store ptr %3, ptr %i.ba, align 8, !tbaa !83
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store float 0.000000e+00, ptr %i.bb, align 4, !tbaa !74
  store i32 %spec.select, ptr %i.ay, align 8, !tbaa !140
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !85
  %i.be = or i32 %i.bd, %spec.select
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !85
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.bf = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_btl_base_framework, i64 76), align 4, !tbaa !139
  %i.bg = tail call i32 @opal_output_get_verbosity(i32 noundef %i.bf) #15
  %i.bh = icmp sgt i32 %i.bg, 19
  br i1 %i.bh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bi = load ptr, ptr @opal_get_proc_hostname, align 8, !tbaa !47
  %i.bj = tail call ptr %i.bi(ptr noundef %0) #15 ; 2 uses
  %i.bk = load ptr, ptr %2, align 8, !tbaa !34
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 84
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bn = tail call ptr @ompi_pmix_print_name(ptr noundef nonnull %i.bm) #15
  %i.bo = load ptr, ptr %i.ao, align 8, !tbaa !65 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !34
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 84
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !86
  %i.bt = load i32, ptr %i.as, align 8, !tbaa !86
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.bl, ptr noundef %i.bn, ptr noundef %i.bj, ptr noundef nonnull %i.bq, i32 noundef %i.bs, i32 noundef %i.bt) #15
  tail call void @free(ptr noundef %i.bj) #15
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o, %bb.n, %bb.i, %bb.g
  %.not78.not = phi i1 [ false, %bb.g ], [ false, %bb.i ], [ true, %bb.n ], [ true, %bb.o ], [ true, %bb.m ] ; 2 uses
  %i.bu = and i32 %.1, 6
  %.not76 = icmp ne i32 %i.bu, 0
  %or.cond.not86 = and i1 %.not76, %.not78.not
  %i.bv = and i32 %.1, 65542
  %i.bw = icmp eq i32 %i.bv, 65542
  %or.cond80 = or i1 %i.bw, %or.cond.not86
  br i1 %or.cond80, label %bb.q, label %4

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !146
  %i.bz = load ptr, ptr @ompi_proc_local_proc, align 8, !tbaa !49
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !146
  %.not77 = icmp eq i32 %i.by, %i.cb
  br i1 %.not77, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = load i32, ptr %i.a, align 4, !tbaa !134
  %i.cd = and i32 %i.cc, 256
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %4, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !61
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !60 ; 2 uses
  %i.cj = add i64 %i.ci, 1
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !60
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.cg, i64 %i.ci ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %2, ptr %i.cl, align 8, !tbaa !65
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store ptr %3, ptr %i.cm, align 8, !tbaa !83
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store float 0.000000e+00, ptr %i.cn, align 4, !tbaa !74
  store i32 %spec.select, ptr %i.ck, align 8, !tbaa !140
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !76
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !75 ; 2 uses
  %i.cs = icmp ult i64 %i.cp, %i.cr
  br i1 %i.cs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i64 %i.cr, ptr %i.co, align 8, !tbaa !76
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !78
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !77 ; 2 uses
  %i.cx = icmp ult i64 %i.cu, %i.cw
  br i1 %i.cx, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  store i64 %i.cw, ptr %i.ct, align 8, !tbaa !78
  br label %.thread

4:                                                ; preds = %bb.p, %bb.r
  br i1 %.not78.not, label %.thread, label %bb.w

.thread:                                          ; preds = %bb.u, %bb.v, %4
  br label %bb.w

bb.w:                                             ; preds = %4, %.thread
  %5 = phi i32 [ 0, %.thread ], [ -16, %4 ]
  ret i32 %5
}

declare ptr @ompi_pmix_print_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @mca_bml_r2_compute_endpoint_metrics(ptr nofree noundef nonnull captures(none) initializes((216, 224)) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 136        ; 3 uses
  %.val44 = load i64, ptr %i.a, align 8, !tbaa !60 ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 184        ; 2 uses
  %.val = load i64, ptr %i.b, align 8, !tbaa !60  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !151
  tail call void @qsort(ptr noundef %i.d, i64 noundef %.val44, i64 noundef 24, ptr noundef nonnull @btl_bandwidth_compare) #15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 0, ptr %i.e, align 8, !tbaa !152
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !60 ; 6 uses
  %.not.i = icmp eq i64 %.val.i, 0
  br i1 %.not.i, label %mca_bml_r2_calculate_bandwidth_latency.exit, label %mca_bml_base_btl_array_get_index.exit.lr.ph.i

mca_bml_base_btl_array_get_index.exit.lr.ph.i:    ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !61   ; 3 uses
  %xtraiter = and i64 %.val.i, 1
  %i.g = icmp eq i64 %.val.i, 1
  br i1 %i.g, label %mca_bml_base_btl_array_get_index.exit.i.epil.preheader, label %mca_bml_base_btl_array_get_index.exit.lr.ph.i.new

mca_bml_base_btl_array_get_index.exit.lr.ph.i.new: ; preds = %mca_bml_base_btl_array_get_index.exit.lr.ph.i
  %unroll_iter = and i64 %.val.i, -2
  br label %mca_bml_base_btl_array_get_index.exit.i

mca_bml_base_btl_array_get_index.exit.i:          ; preds = %mca_bml_base_btl_array_get_index.exit.i, %mca_bml_base_btl_array_get_index.exit.lr.ph.i.new
  %.055 = phi i32 [ -1, %mca_bml_base_btl_array_get_index.exit.lr.ph.i.new ], [ %spec.select.1, %mca_bml_base_btl_array_get_index.exit.i ]
  %i.h = phi i32 [ -1, %mca_bml_base_btl_array_get_index.exit.lr.ph.i.new ], [ %spec.select58.1, %mca_bml_base_btl_array_get_index.exit.i ] ; 2 uses
  %i.i = phi double [ 0.000000e+00, %mca_bml_base_btl_array_get_index.exit.lr.ph.i.new ], [ %i.z, %mca_bml_base_btl_array_get_index.exit.i ]
  %.015.i = phi i64 [ 0, %mca_bml_base_btl_array_get_index.exit.lr.ph.i.new ], [ %i.ad, %mca_bml_base_btl_array_get_index.exit.i ] ; 3 uses
  %niter = phi i64 [ 0, %mca_bml_base_btl_array_get_index.exit.lr.ph.i.new ], [ %niter.next.1, %mca_bml_base_btl_array_get_index.exit.i ]
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.015.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !65   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.n = load i32, ptr %i.m, align 8, !tbaa !72
  %i.o = uitofp i32 %i.n to double
  %i.p = fadd double %i.i, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %i.r = load i32, ptr %i.q, align 4, !tbaa !153  ; 3 uses
  %i.s = icmp ult i32 %i.r, %i.h
  %spec.select = select i1 %i.s, i32 %i.r, i32 %.055
  %spec.select58 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.h) ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.015.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !65   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !72
  %i.y = uitofp i32 %i.x to double
  %i.z = fadd double %i.p, %i.y                   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 60
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !153 ; 3 uses
  %i.ac = icmp ult i32 %i.ab, %spec.select58
  %spec.select.1 = select i1 %i.ac, i32 %i.ab, i32 %spec.select ; 3 uses
  %spec.select58.1 = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 %spec.select58) ; 2 uses
  %i.ad = add nuw i64 %.015.i, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %mca_bml_r2_calculate_bandwidth_latency.exit.loopexit.unr-lcssa, label %mca_bml_base_btl_array_get_index.exit.i, !llvm.loop !147

mca_bml_r2_calculate_bandwidth_latency.exit.loopexit.unr-lcssa: ; preds = %mca_bml_base_btl_array_get_index.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %mca_bml_r2_calculate_bandwidth_latency.exit, label %mca_bml_base_btl_array_get_index.exit.i.epil.preheader

mca_bml_base_btl_array_get_index.exit.i.epil.preheader: ; preds = %mca_bml_r2_calculate_bandwidth_latency.exit.loopexit.unr-lcssa, %mca_bml_base_btl_array_get_index.exit.lr.ph.i
  %.055.epil.init = phi i32 [ -1, %mca_bml_base_btl_array_get_index.exit.lr.ph.i ], [ %spec.select.1, %mca_bml_r2_calculate_bandwidth_latency.exit.loopexit.unr-lcssa ]
  %.epil.init = phi i32 [ -1, %mca_bml_base_btl_array_get_index.exit.lr.ph.i ], [ %spec.select58.1, %mca_bml_r2_calculate_bandwidth_latency.exit.loopexit.unr-lcssa ]
  %.epil.init80 = phi double [ 0.000000e+00, %mca_bml_base_btl_array_get_index.exit.lr.ph.i ], [ %i.z, %mca_bml_r2_calculate_bandwidth_latency.exit.loopexit.unr-lcssa ]
  %.015.i.epil.init = phi i64 [ 0, %mca_bml_base_btl_array_get_index.exit.lr.ph.i ], [ %i.ad, %mca_bml_r2_calculate_bandwidth_latency.exit.loopexit.unr-lcssa ]
  %lcmp.mod83 = trunc i64 %.val.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod83)
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.015.i.epil.init
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !65 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !72
  %i.aj = uitofp i32 %i.ai to double
  %i.ak = fadd double %.epil.init80, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 60
  %i.am = load i32, ptr %i.al, align 4, !tbaa !153 ; 2 uses
  %i.an = icmp ult i32 %i.am, %.epil.init
  %spec.select.epil = select i1 %i.an, i32 %i.am, i32 %.055.epil.init
  br label %mca_bml_r2_calculate_bandwidth_latency.exit

mca_bml_r2_calculate_bandwidth_latency.exit:      ; preds = %mca_bml_base_btl_array_get_index.exit.i.epil.preheader, %mca_bml_r2_calculate_bandwidth_latency.exit.loopexit.unr-lcssa, %bb.a
  %.056 = phi double [ 0.000000e+00, %bb.a ], [ %i.z, %mca_bml_r2_calculate_bandwidth_latency.exit.loopexit.unr-lcssa ], [ %i.ak, %mca_bml_base_btl_array_get_index.exit.i.epil.preheader ]
  %.2 = phi i32 [ -1, %bb.a ], [ %spec.select.1, %mca_bml_r2_calculate_bandwidth_latency.exit.loopexit.unr-lcssa ], [ %spec.select.epil, %mca_bml_base_btl_array_get_index.exit.i.epil.preheader ]
  %.not64 = icmp eq i64 %.val44, 0
  br i1 %.not64, label %._crit_edge, label %mca_bml_base_btl_array_get_index.exit.lr.ph

mca_bml_base_btl_array_get_index.exit.lr.ph:      ; preds = %mca_bml_r2_calculate_bandwidth_latency.exit
  %i.ao = uitofp i64 %.val44 to double
  %i.ap = fdiv double 1.000000e+00, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.pre71 = load ptr, ptr %i.c, align 8, !tbaa !61
  br label %mca_bml_base_btl_array_get_index.exit

._crit_edge:                                      ; preds = %bb.e, %mca_bml_r2_calculate_bandwidth_latency.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !154
  tail call void @qsort(ptr noundef %i.au, i64 noundef %.val, i64 noundef 24, ptr noundef nonnull @btl_bandwidth_compare) #15
  %.val.i45 = load i64, ptr %i.b, align 8, !tbaa !60 ; 7 uses
  %.not.i46 = icmp eq i64 %.val.i45, 0
  br i1 %.not.i46, label %mca_bml_r2_calculate_bandwidth_latency.exit51, label %mca_bml_base_btl_array_get_index.exit.lr.ph.i47

mca_bml_base_btl_array_get_index.exit.lr.ph.i47:  ; preds = %._crit_edge
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !61 ; 5 uses
  %xtraiter84 = and i64 %.val.i45, 3              ; 3 uses
  %i.aw = icmp ult i64 %.val.i45, 4
  br i1 %i.aw, label %mca_bml_base_btl_array_get_index.exit.i48.epil.preheader, label %mca_bml_base_btl_array_get_index.exit.lr.ph.i47.new

mca_bml_base_btl_array_get_index.exit.lr.ph.i47.new: ; preds = %mca_bml_base_btl_array_get_index.exit.lr.ph.i47
  %unroll_iter90 = and i64 %.val.i45, -4
  br label %mca_bml_base_btl_array_get_index.exit.i48

mca_bml_base_btl_array_get_index.exit.i48:        ; preds = %mca_bml_base_btl_array_get_index.exit.i48, %mca_bml_base_btl_array_get_index.exit.lr.ph.i47.new
  %i.ax = phi double [ 0.000000e+00, %mca_bml_base_btl_array_get_index.exit.lr.ph.i47.new ], [ %i.bz, %mca_bml_base_btl_array_get_index.exit.i48 ]
  %.015.i49 = phi i64 [ 0, %mca_bml_base_btl_array_get_index.exit.lr.ph.i47.new ], [ %i.ca, %mca_bml_base_btl_array_get_index.exit.i48 ] ; 5 uses
  %niter91 = phi i64 [ 0, %mca_bml_base_btl_array_get_index.exit.lr.ph.i47.new ], [ %niter91.next.3, %mca_bml_base_btl_array_get_index.exit.i48 ]
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %.015.i49
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !65
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !72
  %i.bd = uitofp i32 %i.bc to double
  %i.be = fadd double %i.ax, %i.bd
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %.015.i49
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !65
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !72
  %i.bk = uitofp i32 %i.bj to double
  %i.bl = fadd double %i.be, %i.bk
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %.015.i49
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !65
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !72
  %i.br = uitofp i32 %i.bq to double
  %i.bs = fadd double %i.bl, %i.br
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %.015.i49
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 80
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !65
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !72
  %i.by = uitofp i32 %i.bx to double
  %i.bz = fadd double %i.bs, %i.by                ; 3 uses
  %i.ca = add nuw i64 %.015.i49, 4                ; 2 uses
  %niter91.next.3 = add nuw i64 %niter91, 4       ; 2 uses
  %niter91.ncmp.3 = icmp eq i64 %niter91.next.3, %unroll_iter90
  br i1 %niter91.ncmp.3, label %mca_bml_r2_calculate_bandwidth_latency.exit51.loopexit.unr-lcssa, label %mca_bml_base_btl_array_get_index.exit.i48, !llvm.loop !147

mca_bml_r2_calculate_bandwidth_latency.exit51.loopexit.unr-lcssa: ; preds = %mca_bml_base_btl_array_get_index.exit.i48
  %lcmp.mod87.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod87.not, label %mca_bml_r2_calculate_bandwidth_latency.exit51, label %mca_bml_base_btl_array_get_index.exit.i48.epil.preheader

mca_bml_base_btl_array_get_index.exit.i48.epil.preheader: ; preds = %mca_bml_r2_calculate_bandwidth_latency.exit51.loopexit.unr-lcssa, %mca_bml_base_btl_array_get_index.exit.lr.ph.i47
  %.epil.init86 = phi double [ 0.000000e+00, %mca_bml_base_btl_array_get_index.exit.lr.ph.i47 ], [ %i.bz, %mca_bml_r2_calculate_bandwidth_latency.exit51.loopexit.unr-lcssa ]
  %.015.i49.epil.init = phi i64 [ 0, %mca_bml_base_btl_array_get_index.exit.lr.ph.i47 ], [ %i.ca, %mca_bml_r2_calculate_bandwidth_latency.exit51.loopexit.unr-lcssa ]
  %lcmp.mod89 = icmp ne i64 %xtraiter84, 0
  tail call void @llvm.assume(i1 %lcmp.mod89)
  br label %mca_bml_base_btl_array_get_index.exit.i48.epil

mca_bml_base_btl_array_get_index.exit.i48.epil:   ; preds = %mca_bml_base_btl_array_get_index.exit.i48.epil, %mca_bml_base_btl_array_get_index.exit.i48.epil.preheader
  %i.cb = phi double [ %.epil.init86, %mca_bml_base_btl_array_get_index.exit.i48.epil.preheader ], [ %i.ci, %mca_bml_base_btl_array_get_index.exit.i48.epil ]
  %.015.i49.epil = phi i64 [ %.015.i49.epil.init, %mca_bml_base_btl_array_get_index.exit.i48.epil.preheader ], [ %i.cj, %mca_bml_base_btl_array_get_index.exit.i48.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %mca_bml_base_btl_array_get_index.exit.i48.epil.preheader ], [ %epil.iter.next, %mca_bml_base_btl_array_get_index.exit.i48.epil ]
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %.015.i49.epil
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !65
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !72
  %i.ch = uitofp i32 %i.cg to double
  %i.ci = fadd double %i.cb, %i.ch                ; 2 uses
  %i.cj = add nuw i64 %.015.i49.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter84
  br i1 %epil.iter.cmp.not, label %mca_bml_r2_calculate_bandwidth_latency.exit51, label %mca_bml_base_btl_array_get_index.exit.i48.epil, !llvm.loop !148

mca_bml_r2_calculate_bandwidth_latency.exit51:    ; preds = %mca_bml_r2_calculate_bandwidth_latency.exit51.loopexit.unr-lcssa, %mca_bml_base_btl_array_get_index.exit.i48.epil, %._crit_edge
  %.157 = phi double [ 0.000000e+00, %._crit_edge ], [ %i.bz, %mca_bml_r2_calculate_bandwidth_latency.exit51.loopexit.unr-lcssa ], [ %i.ci, %mca_bml_base_btl_array_get_index.exit.i48.epil ] ; 3 uses
  %.not65 = icmp eq i64 %.val, 0
  br i1 %.not65, label %._crit_edge63, label %mca_bml_base_btl_array_get_index.exit53.lr.ph

mca_bml_base_btl_array_get_index.exit53.lr.ph:    ; preds = %mca_bml_r2_calculate_bandwidth_latency.exit51
  %i.ck = load ptr, ptr %i.at, align 8, !tbaa !61 ; 3 uses
  %i.cl = uitofp i64 %.val to double
  %i.cm = fdiv double 1.000000e+00, %i.cl         ; 3 uses
  %xtraiter92 = and i64 %.val, 1
  %i.cn = icmp eq i64 %.val, 1
  br i1 %i.cn, label %mca_bml_base_btl_array_get_index.exit53.epil.preheader, label %mca_bml_base_btl_array_get_index.exit53.lr.ph.new

mca_bml_base_btl_array_get_index.exit53.lr.ph.new: ; preds = %mca_bml_base_btl_array_get_index.exit53.lr.ph
end_hunk_0
