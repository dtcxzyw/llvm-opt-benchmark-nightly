Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/cmd_line?download=true
inline.NumInlined: 63
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@make_opt:bb.a
  br i1 %i.ba, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %.021.i57, i64 16
  %i.bc = load volatile ptr, ptr %i.bb, align 8, !tbaa !53 ; 2 uses
  %.not.i60 = icmp eq ptr %i.bc, %i.ak
  br i1 %.not.i60, label %find_option.exit62, label %.lr.ph.i56, !llvm.loop !4

bb.v:                                             ; preds = %bb.r, %bb.p, %bb.t
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.aj) #20
  br label %opal_obj_new.exit

find_option.exit62:                               ; preds = %bb.u, %bb.o, %find_option.exit
  %i.bd = load i64, ptr getelementptr inbounds nuw (i8, ptr @ompi_cmd_line_option_t_class, i64 56), align 8, !tbaa !65
  %i.be = tail call noalias ptr @malloc(i64 noundef %i.bd) #22 ; 17 uses
  %i.bf = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !34
  %i.bg = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_cmd_line_option_t_class, i64 32), align 8, !tbaa !37
  %.not.i63 = icmp eq i32 %i.bf, %i.bg
  br i1 %.not.i63, label %bb.x, label %bb.w

bb.w:                                             ; preds = %find_option.exit62
  tail call void @opal_class_initialize(ptr noundef nonnull @ompi_cmd_line_option_t_class) #20
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %find_option.exit62
  %.not9.i = icmp eq ptr %i.be, null
  br i1 %.not9.i, label %opal_obj_new.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr @ompi_cmd_line_option_t_class, ptr %i.be, align 8, !tbaa !38
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store volatile i32 1, ptr %i.bh, align 8, !tbaa !39
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_cmd_line_option_t_class, i64 40), align 8, !tbaa !40 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !41 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.bj, null
  br i1 %.not6.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.bk = phi ptr [ %i.bm, %.lr.ph.i.i ], [ %i.bj, %bb.y ]
  %.07.i.i = phi ptr [ %i.bl, %.lr.ph.i.i ], [ %i.bi, %bb.y ]
  tail call void %i.bk(ptr noundef nonnull %i.be) #20, !inline_history !5
  %i.bl = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !41 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !1

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.y
  %i.bn = load i8, ptr %i.b, align 8, !tbaa !59
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  store i8 %i.bn, ptr %i.bo, align 8, !tbaa !22
  %i.bp = load ptr, ptr %i.n, align 8, !tbaa !60  ; 2 uses
  %.not51 = icmp eq ptr %i.bp, null
  br i1 %.not51, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.loopexit
  %i.bq = tail call noalias ptr @strdup(ptr noundef nonnull %i.bp) #20
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !26
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.loopexit
  %i.bs = load ptr, ptr %i.ai, align 8, !tbaa !61 ; 2 uses
  %.not52 = icmp eq ptr %i.bs, null
  br i1 %.not52, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bt = tail call noalias ptr @strdup(ptr noundef nonnull %i.bs) #20
  %i.bu = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !27
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bv = load i32, ptr %i.k, align 8, !tbaa !62
  %i.bw = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  store i32 %i.bv, ptr %i.bw, align 8, !tbaa !66
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !67 ; 2 uses
  %.not53 = icmp eq ptr %i.by, null
  br i1 %.not53, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bz = tail call noalias ptr @strdup(ptr noundef nonnull %i.by) #20
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !23
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !68
  %i.cd = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  store i32 %i.cc, ptr %i.cd, align 8, !tbaa !24
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !69
  %i.cg = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !70
  %i.ch = load ptr, ptr %1, align 8, !tbaa !71    ; 2 uses
  %.not54 = icmp eq ptr %i.ch, null
  br i1 %.not54, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ci = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  %i.cj = tail call i32 @mca_base_var_env_name(ptr noundef nonnull %i.ch, ptr noundef nonnull %i.ci) #20 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !72
  %i.cm = getelementptr inbounds nuw i8, ptr %i.be, i64 108
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !25
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.co = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.cn) #20 ; 0 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.cr = load volatile ptr, ptr %i.cq, align 8, !tbaa !52
  %i.cs = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store volatile ptr %i.cr, ptr %i.cs, align 8, !tbaa !52
  %i.ct = load volatile ptr, ptr %i.cq, align 8, !tbaa !52
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store volatile ptr %i.be, ptr %i.cu, align 8, !tbaa !53
  %i.cv = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store volatile ptr %i.cp, ptr %i.cv, align 8, !tbaa !53
  store volatile ptr %i.be, ptr %i.cq, align 8, !tbaa !52
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.cx = load volatile i64, ptr %i.cw, align 8, !tbaa !50
  %i.cy = add i64 %i.cx, 1
  store volatile i64 %i.cy, ptr %i.cw, align 8, !tbaa !50
  %i.cz = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cn) #20 ; 0 uses
  br label %opal_obj_new.exit

opal_obj_new.exit:                                ; preds = %bb.x, %bb.e, %bb.d, %bb.a, %bb.ag, %bb.v, %bb.n
  %.0 = phi i32 [ 0, %bb.ag ], [ -5, %bb.a ], [ -5, %bb.d ], [ -5, %bb.n ], [ -5, %bb.v ], [ -5, %bb.e ], [ -2, %bb.x ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -5, 1) i32 @opal_cmd_line_make_opt_mca(ptr noundef %0, ptr nofree noundef readonly byval(%struct.opal_cmd_line_init_t) align 8 captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !59
  %i.c = icmp eq i8 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.h, null
  %or.cond5 = select i1 %or.cond, i1 %i.i, i1 false
  br i1 %or.cond5, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call fastcc i32 @make_opt(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -5, 1) i32 @opal_cmd_line_make_opt3(ptr noundef %0, i8 noundef signext %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.opal_cmd_line_init_t, align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr null, ptr %6, align 8, !tbaa !71
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %1, ptr %i.a, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %3, ptr %i.c, align 8, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %4, ptr %i.d, align 8, !tbaa !62
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr null, ptr %i.e, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 0, ptr %i.f, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %5, ptr %i.g, align 8, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 0, ptr %i.h, align 8, !tbaa !72
  %i.i = call fastcc i32 @make_opt(ptr noundef %0, ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  ret i32 %i.i
}

; Function Attrs: nounwind uwtable
define range(i32 -43, 1) i32 @opal_cmd_line_parse(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 8 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.d = icmp eq i32 %3, 0
  %i.e = icmp eq ptr %4, null
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.bv, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.f) #20 ; 0 uses
  tail call fastcc void @free_parse_results(ptr noundef %0)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 10 uses
  store i32 %3, ptr %i.h, align 8, !tbaa !46
  %i.i = tail call noalias ptr @opal_argv_copy(ptr noundef nonnull %4) #20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 15 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.m = load volatile ptr, ptr %i.l, align 8, !tbaa !63 ; 2 uses
  %.not20.i = icmp eq ptr %i.m, %i.k
  br i1 %.not20.i, label %find_option.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.f
  %.021.i = phi ptr [ %i.w, %bb.f ], [ %i.m, %bb.b ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.021.i, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27   ; 2 uses
  %.not18.i = icmp eq ptr %i.o, null
  br i1 %.not18.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.3, ptr noundef nonnull dereferenceable(1) %i.o) #21
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %find_option.exit.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %.021.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !26   ; 2 uses
  %.not19.i = icmp eq ptr %i.s, null
  br i1 %.not19.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.3, ptr noundef nonnull dereferenceable(1) %i.s) #21
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %find_option.exit.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.021.i, i64 16
  %i.w = load volatile ptr, ptr %i.v, align 8, !tbaa !53 ; 2 uses
  %.not.i = icmp eq ptr %i.w, %i.k
  br i1 %.not.i, label %find_option.exit.loopexit, label %.lr.ph.i, !llvm.loop !4

find_option.exit.loopexit:                        ; preds = %bb.f, %bb.e, %bb.c
  %.015.i.ph = phi ptr [ null, %bb.f ], [ %.021.i, %bb.e ], [ %.021.i, %bb.c ]
  %i.x = icmp eq ptr %.015.i.ph, null
  br label %find_option.exit

find_option.exit:                                 ; preds = %find_option.exit.loopexit, %bb.b
  %.015.i = phi i1 [ true, %bb.b ], [ %i.x, %find_option.exit.loopexit ] ; 3 uses
  %i.y = load i32, ptr %i.h, align 8, !tbaa !46   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 1
  br i1 %i.z, label %sub_0.lr.ph, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %find_option.exit
  %5 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #20 ; 0 uses
  br label %bb.bv

sub_0.lr.ph:                                      ; preds = %find_option.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  br label %sub_0

sub_0:                                            ; preds = %sub_0.lr.ph, %.loopexit285
  %i.ah = phi i32 [ %i.y, %sub_0.lr.ph ], [ %11, %.loopexit285 ]
  %.0329 = phi i1 [ false, %sub_0.lr.ph ], [ %.5, %.loopexit285 ] ; 9 uses
  %.0139327 = phi i1 [ false, %sub_0.lr.ph ], [ %.2141, %.loopexit285 ] ; 4 uses
  %.0153325 = phi i32 [ 1, %sub_0.lr.ph ], [ %.6, %.loopexit285 ] ; 9 uses
  %i.ai = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.aj = sext i32 %.0153325 to i64               ; 3 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.aj ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !73 ; 6 uses
  %i.am = load i8, ptr %i.al, align 1
  %.not334 = icmp eq i8 %i.am, 45
  br i1 %.not334, label %sub_1, label %.thread263

sub_1:                                            ; preds = %sub_0
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.ao = load i8, ptr %i.an, align 1
  %.not335 = icmp eq i8 %i.ao, 45
  br i1 %.not335, label %.tail, label %.tail277

.tail:                                            ; preds = %sub_1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %.preheader, label %.tail277

.preheader:                                       ; preds = %.tail
  %.1154331 = add nsw i32 %.0153325, 1            ; 2 uses
  %i.as = icmp slt i32 %.1154331, %i.ah
  br i1 %i.as, label %.lr.ph333, label %.loopexit

.lr.ph333:                                        ; preds = %.preheader
  %i.at = sext i32 %.1154331 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph333, %bb.g
  %indvars.iv378 = phi i64 [ %i.at, %.lr.ph333 ], [ %indvars.iv.next379, %bb.g ] ; 2 uses
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.av = getelementptr inbounds [8 x i8], ptr %i.au, i64 %indvars.iv378
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !73
  %i.ax = call i32 @opal_argv_append(ptr noundef nonnull %i.af, ptr noundef nonnull %i.ag, ptr noundef %i.aw) #20 ; 0 uses
  %indvars.iv.next379 = add nsw i64 %indvars.iv378, 1 ; 2 uses
  %i.ay = load i32, ptr %i.h, align 8, !tbaa !46
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp slt i64 %indvars.iv.next379, %i.az
  br i1 %i.ba, label %bb.g, label %.loopexit, !llvm.loop !85

.tail277:                                         ; preds = %.tail, %sub_1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = icmp eq i8 %i.bc, 45
  %i.be = load volatile ptr, ptr %i.l, align 8, !tbaa !63 ; 3 uses
  %.not20.i186 = icmp eq ptr %i.be, %i.k          ; 2 uses
  br i1 %i.bd, label %bb.h, label %bb.o

bb.h:                                             ; preds = %.tail277
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 2 ; 4 uses
  br i1 %.not20.i186, label %.thread263, label %.lr.ph.i187

.lr.ph.i187:                                      ; preds = %bb.h, %bb.n
  %.021.i188 = phi ptr [ %i.bv, %bb.n ], [ %i.be, %bb.h ] ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.021.i188, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !27 ; 2 uses
  %.not18.i189 = icmp eq ptr %i.bh, null
  br i1 %.not18.i189, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i187
  %i.bi = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bf, ptr noundef nonnull dereferenceable(1) %i.bh) #21
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i187
  %i.bk = getelementptr inbounds nuw i8, ptr %.021.i188, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !26 ; 2 uses
  %.not19.i190 = icmp eq ptr %i.bl, null
  br i1 %.not19.i190, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bf, ptr noundef nonnull dereferenceable(1) %i.bl) #21
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bo = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.bf) #21
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bq = load i8, ptr %i.bf, align 1, !tbaa !64
  %i.br = getelementptr inbounds nuw i8, ptr %.021.i188, i64 40
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !22
  %i.bt = icmp eq i8 %i.bq, %i.bs
  br i1 %i.bt, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %.021.i188, i64 16
  %i.bv = load volatile ptr, ptr %i.bu, align 8, !tbaa !53 ; 2 uses
  %.not.i191 = icmp eq ptr %i.bv, %i.k
  br i1 %.not.i191, label %.thread263, label %.lr.ph.i187, !llvm.loop !4

bb.o:                                             ; preds = %.tail277
  %i.bw = getelementptr inbounds nuw i8, ptr %i.al, i64 1 ; 6 uses
  br i1 %.not20.i186, label %find_option.exit201, label %.lr.ph.i195

.lr.ph.i195:                                      ; preds = %bb.o, %bb.u
  %.021.i196 = phi ptr [ %i.cm, %bb.u ], [ %i.be, %bb.o ] ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.021.i196, i64 56
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !27 ; 2 uses
  %.not18.i197 = icmp eq ptr %i.by, null
  br i1 %.not18.i197, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i195
  %i.bz = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bw, ptr noundef nonnull dereferenceable(1) %i.by) #21
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i195
  %i.cb = getelementptr inbounds nuw i8, ptr %.021.i196, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !26 ; 2 uses
  %.not19.i198 = icmp eq ptr %i.cc, null
  br i1 %.not19.i198, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bw, ptr noundef nonnull dereferenceable(1) %i.cc) #21
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cf = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.bw) #21
  %i.cg = icmp eq i64 %i.cf, 1
  br i1 %i.cg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ch = load i8, ptr %i.bw, align 1, !tbaa !64
  %i.ci = getelementptr inbounds nuw i8, ptr %.021.i196, i64 40
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !22
  %i.ck = icmp eq i8 %i.ch, %i.cj
  br i1 %i.ck, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %.021.i196, i64 16
  %i.cm = load volatile ptr, ptr %i.cl, align 8, !tbaa !53 ; 2 uses
  %.not.i199 = icmp eq ptr %i.cm, %i.k
  br i1 %.not.i199, label %find_option.exit201, label %.lr.ph.i195, !llvm.loop !4

find_option.exit201:                              ; preds = %bb.u, %bb.o
  store ptr null, ptr %i.b, align 8, !tbaa !74
  store i32 0, ptr %i.c, align 4, !tbaa !34
  %i.cn = getelementptr i8, ptr %i.ak, i64 8      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.co = call i32 @opal_argv_count(ptr noundef %i.cn) #20
  %i.cp = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.bw) #21 ; 2 uses
  %i.cq = trunc i64 %i.cp to i32                  ; 2 uses
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %find_option.exit193.thread256, label %bb.v

bb.v:                                             ; preds = %find_option.exit201
  store i8 45, ptr %i.a, align 1, !tbaa !64
  store i8 0, ptr %i.aa, align 1, !tbaa !64
  %i.cs = icmp sgt i32 %i.cq, 0
  br i1 %i.cs, label %.lr.ph39.i, label %.loopexit287

.lr.ph39.i:                                       ; preds = %bb.v
  %wide.trip.count.i = and i64 %i.cp, 2147483647
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.i, %.lr.ph39.i
  %.0225 = phi i32 [ 0, %.lr.ph39.i ], [ %.1226, %.loopexit.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph39.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bw, i64 %indvars.iv.i
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !64  ; 2 uses
  store i8 %i.cu, ptr %i.ab, align 1, !tbaa !64
  %i.cv = load volatile ptr, ptr %i.l, align 8, !tbaa !63 ; 2 uses
  %.not20.i.i = icmp eq ptr %i.cv, %i.k
  br i1 %.not20.i.i, label %find_option.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %bb.ac
  %.021.i.i = phi ptr [ %i.dk, %bb.ac ], [ %i.cv, %bb.w ] ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 56
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !27 ; 2 uses
  %.not18.i.i = icmp eq ptr %i.cx, null
  br i1 %.not18.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.cy = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(1) %i.cx) #21
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.ae, label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 48
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !26 ; 2 uses
  %.not19.i.i = icmp eq ptr %i.db, null
  br i1 %.not19.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dc = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(1) %i.db) #21
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.de = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ab) #21
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dg = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 40
  %i.dh = load i8, ptr %i.dg, align 8, !tbaa !22
  %i.di = icmp eq i8 %i.cu, %i.dh
  br i1 %i.di, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dj = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 16
  %i.dk = load volatile ptr, ptr %i.dj, align 8, !tbaa !53 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dk, %i.k
  br i1 %.not.i.i, label %find_option.exit.i, label %.lr.ph.i.i, !llvm.loop !4

find_option.exit.i:                               ; preds = %bb.ac, %bb.w
  br i1 %1, label %bb.ad, label %find_option.exit193.thread256

bb.ad:                                            ; preds = %find_option.exit.i
  %i.dl = call i32 @opal_argv_append(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #20 ; 0 uses
  br label %.loopexit.i

bb.ae:                                            ; preds = %bb.ab, %bb.z, %bb.x
  %i.dm = call i32 @opal_argv_append(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #20 ; 0 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 64 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !66
  %i.dp = icmp sgt i32 %i.do, 0
  br i1 %i.dp, label %.lr.ph.i202, label %.loopexit.i

.lr.ph.i202:                                      ; preds = %bb.ae, %bb.ah
  %.2227 = phi i32 [ %.3228, %bb.ah ], [ %.0225, %bb.ae ] ; 4 uses
  %.037.i = phi i32 [ %i.dx, %bb.ah ], [ 0, %bb.ae ]
  %i.dq = icmp slt i32 %.2227, %i.co
  br i1 %i.dq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i202
  %i.dr = sext i32 %.2227 to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !73
  %i.du = call i32 @opal_argv_append(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef %i.dt) #20 ; 0 uses
  %i.dv = add nsw i32 %.2227, 1
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i202
  %i.dw = call i32 @opal_argv_append(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull @special_empty_token) #20 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.3228 = phi i32 [ %i.dv, %bb.af ], [ %.2227, %bb.ag ] ; 2 uses
  %i.dx = add nuw nsw i32 %.037.i, 1              ; 2 uses
  %i.dy = load i32, ptr %i.dn, align 8, !tbaa !66
  %i.dz = icmp slt i32 %i.dx, %i.dy
  br i1 %i.dz, label %.lr.ph.i202, label %.loopexit.i, !llvm.loop !86

.loopexit.i:                                      ; preds = %bb.ah, %bb.ae, %bb.ad
  %.1226 = phi i32 [ %.0225, %bb.ad ], [ %.0225, %bb.ae ], [ %.3228, %bb.ah ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit287.loopexit, label %bb.w, !llvm.loop !87

find_option.exit193.thread256:                    ; preds = %find_option.exit.i, %find_option.exit201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.thread263

.loopexit287.loopexit:                            ; preds = %.loopexit.i
  %i.ea = add nsw i32 %.1226, 1
  br label %.loopexit287

.loopexit287:                                     ; preds = %.loopexit287.loopexit, %bb.v
  %.4229.ph = phi i32 [ 1, %bb.v ], [ %i.ea, %.loopexit287.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.eb = load ptr, ptr %i.b, align 8, !tbaa !74  ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !73
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1 ; 4 uses
  %i.ee = load volatile ptr, ptr %i.l, align 8, !tbaa !63 ; 2 uses
  %.not20.i203 = icmp eq ptr %i.ee, %i.k
  br i1 %.not20.i203, label %.thread440, label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %.loopexit287, %bb.an
  %.021.i205 = phi ptr [ %i.eu, %bb.an ], [ %i.ee, %.loopexit287 ] ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.021.i205, i64 56
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !27 ; 2 uses
  %.not18.i206 = icmp eq ptr %i.eg, null
  br i1 %.not18.i206, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i204
  %i.eh = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ed, ptr noundef nonnull dereferenceable(1) %i.eg) #21
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %find_option.exit193, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.i204
  %i.ej = getelementptr inbounds nuw i8, ptr %.021.i205, i64 48
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !26 ; 2 uses
  %.not19.i207 = icmp eq ptr %i.ek, null
  br i1 %.not19.i207, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.el = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ed, ptr noundef nonnull dereferenceable(1) %i.ek) #21
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %find_option.exit193, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.en = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ed) #21
  %i.eo = icmp eq i64 %i.en, 1
  br i1 %i.eo, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ep = load i8, ptr %i.ed, align 1, !tbaa !64
  %i.eq = getelementptr inbounds nuw i8, ptr %.021.i205, i64 40
  %i.er = load i8, ptr %i.eq, align 8, !tbaa !22
  %i.es = icmp eq i8 %i.ep, %i.er
  br i1 %i.es, label %find_option.exit193, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.et = getelementptr inbounds nuw i8, ptr %.021.i205, i64 16
  %i.eu = load volatile ptr, ptr %i.et, align 8, !tbaa !53 ; 2 uses
  %.not.i208 = icmp eq ptr %i.eu, %i.k
  br i1 %.not.i208, label %.thread440, label %.lr.ph.i204, !llvm.loop !4

.thread440:                                       ; preds = %bb.an, %.loopexit287
  call void @opal_argv_free(ptr noundef nonnull %i.eb) #20
  br label %.thread263

find_option.exit193:                              ; preds = %bb.am, %bb.ai, %bb.ak
  %i.ev = call i32 @opal_argv_delete(ptr noundef nonnull %i.h, ptr noundef nonnull %i.j, i32 noundef %.0153325, i32 noundef %.4229.ph) #20 ; 0 uses
  %i.ew = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.ex = call i32 @opal_argv_insert(ptr noundef nonnull %i.j, i32 noundef %.0153325, ptr noundef %i.ew) #20 ; 0 uses
  %i.ey = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.ez = call i32 @opal_argv_count(ptr noundef %i.ey) #20
  store i32 %i.ez, ptr %i.h, align 8, !tbaa !46
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !74
  call void @opal_argv_free(ptr noundef %.pre) #20
  br label %.thread

.thread:                                          ; preds = %bb.t, %bb.p, %bb.r, %bb.k, %bb.i, %bb.m, %find_option.exit193
  %.2151243262 = phi ptr [ %.021.i205, %find_option.exit193 ], [ %.021.i188, %bb.k ], [ %.021.i188, %bb.m ], [ %.021.i188, %bb.i ], [ %.021.i196, %bb.r ], [ %.021.i196, %bb.p ], [ %.021.i196, %bb.t ] ; 8 uses
  %i.fa = load i64, ptr getelementptr inbounds nuw (i8, ptr @ompi_cmd_line_param_t_class, i64 56), align 8, !tbaa !65
  %i.fb = call noalias ptr @malloc(i64 noundef %i.fa) #22 ; 18 uses
  %i.fc = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !34
  %i.fd = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_cmd_line_param_t_class, i64 32), align 8, !tbaa !37
  %.not.i211 = icmp eq i32 %i.fc, %i.fd
  br i1 %.not.i211, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.thread
  call void @opal_class_initialize(ptr noundef nonnull @ompi_cmd_line_param_t_class) #20
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.thread
  %.not9.i = icmp eq ptr %i.fb, null
  br i1 %.not9.i, label %opal_obj_new.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store ptr @ompi_cmd_line_param_t_class, ptr %i.fb, align 8, !tbaa !38
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 9 uses
  store volatile i32 1, ptr %i.fe, align 8, !tbaa !39
  %i.ff = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_cmd_line_param_t_class, i64 40), align 8, !tbaa !40 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !41 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.fg, null
  br i1 %.not6.i.i, label %.loopexit286, label %.lr.ph.i.i212

.lr.ph.i.i212:                                    ; preds = %bb.aq, %.lr.ph.i.i212
  %i.fh = phi ptr [ %i.fj, %.lr.ph.i.i212 ], [ %i.fg, %bb.aq ]
  %.07.i.i = phi ptr [ %i.fi, %.lr.ph.i.i212 ], [ %i.ff, %bb.aq ]
  call void %i.fh(ptr noundef nonnull %i.fb) #20, !inline_history !5
  %i.fi = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !41 ; 2 uses
  %.not.i.i213 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i213, label %.loopexit286, label %.lr.ph.i.i212, !llvm.loop !1

opal_obj_new.exit:                                ; preds = %bb.ap
  %6 = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #20 ; 0 uses
  br label %bb.bv

.loopexit286:                                     ; preds = %.lr.ph.i.i212, %bb.aq
  %i.fk = add nsw i32 %.0153325, 1                ; 6 uses
  %i.fl = load ptr, ptr %i.j, align 8, !tbaa !47  ; 4 uses
  %i.fm = sext i32 %i.fk to i64                   ; 3 uses
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.fm
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !73 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  store ptr %i.fo, ptr %i.fp, align 8, !tbaa !91
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fb, i64 48
  store ptr %.2151243262, ptr %i.fq, align 8, !tbaa !75
  %i.fr = getelementptr inbounds nuw i8, ptr %.2151243262, i64 64 ; 3 uses
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !66 ; 5 uses
  %i.ft = icmp sgt i32 %i.fs, 0
  br i1 %i.ft, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit286
  %i.fu = getelementptr inbounds nuw i8, ptr %.2151243262, i64 48 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.2151243262, i64 56 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fb, i64 56 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fb, i64 64 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.2151243262, i64 88
  %i.fz = getelementptr inbounds nuw i8, ptr %.2151243262, i64 96
  %i.ga = load i32, ptr %i.h, align 8, !tbaa !46
  %.not177.peel = icmp slt i32 %i.fk, %i.ga
  br i1 %.not177.peel, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph
  %i.gb = load ptr, ptr %i.fu, align 8, !tbaa !26 ; 3 uses
  %.not182.peel = icmp eq ptr %i.gb, null
  br i1 %.not182.peel, label %.tail281.peel.thread, label %sub_0282.peel

sub_0282.peel:                                    ; preds = %bb.ar
  %i.gc = load i8, ptr %i.gb, align 1
  %.not337.peel = icmp eq i8 %i.gc, 104
  br i1 %.not337.peel, label %.tail281.peel, label %.tail281.peel.thread

.tail281.peel:                                    ; preds = %sub_0282.peel
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 1
  %i.ge = load i8, ptr %i.gd, align 1
  %i.gf = icmp eq i8 %i.ge, 0
  br i1 %i.gf, label %bb.ax, label %.tail281.peel.thread

.tail281.peel.thread:                             ; preds = %sub_0282.peel, %.tail281.peel, %bb.ar
  %i.gg = load ptr, ptr %i.fv, align 8, !tbaa !27 ; 2 uses
  %.not183.peel = icmp eq ptr %i.gg, null
  br i1 %.not183.peel, label %bb.ba, label %bb.as

bb.as:                                            ; preds = %.tail281.peel.thread
  %i.gh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gg, ptr noundef nonnull dereferenceable(5) @.str.3) #21
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %bb.ax, label %bb.ba

bb.at:                                            ; preds = %.lr.ph
  %i.gj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fo, ptr noundef nonnull dereferenceable(1) @special_empty_token) #21
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %bb.bh, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gl = call i32 @opal_argv_append(ptr noundef nonnull %i.fw, ptr noundef nonnull %i.fx, ptr noundef nonnull %i.fo) #20 ; 0 uses
  %i.gm = load ptr, ptr %i.fy, align 8, !tbaa !28
  %.not178.peel = icmp eq ptr %i.gm, null
  br i1 %.not178.peel, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gn = load ptr, ptr %i.fz, align 8, !tbaa !70
  %.not179.peel = icmp eq ptr %i.gn, null
  br i1 %.not179.peel, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.go = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.go, i64 %i.fm
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !73
  %i.gr = call fastcc i32 @set_dest(ptr noundef %.2151243262, ptr noundef %i.gq) ; 2 uses
  %.not180.peel = icmp eq i32 %i.gr, 0
  br i1 %.not180.peel, label %bb.ax, label %.loopexit373

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.as, %.tail281.peel
  %.2.peel = phi i1 [ true, %.tail281.peel ], [ %.0329, %bb.aw ], [ %.0329, %bb.av ], [ true, %bb.as ] ; 2 uses
  %indvars.iv.next.peel = add nsw i64 %i.fm, 1    ; 2 uses
  %i.gs = load i32, ptr %i.fr, align 8, !tbaa !66 ; 3 uses
  %i.gt = icmp sgt i32 %i.gs, 1
  br i1 %i.gt, label %.peel.next, label %._crit_edge.loopexit

.peel.next:                                       ; preds = %bb.ax, %bb.bq
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bq ], [ %indvars.iv.next.peel, %bb.ax ] ; 5 uses
  %i.gu = phi i32 [ %i.jm, %bb.bq ], [ %i.gs, %bb.ax ] ; 2 uses
  %.1318 = phi i1 [ %.2, %bb.bq ], [ %.2.peel, %bb.ax ] ; 3 uses
  %.0152317 = phi i32 [ %i.jl, %bb.bq ], [ 1, %bb.ax ]
  %i.gv = load i32, ptr %i.h, align 8, !tbaa !46
  %i.gw = sext i32 %i.gv to i64
  %.not177 = icmp slt i64 %indvars.iv, %i.gw
  br i1 %.not177, label %bb.bg, label %bb.ay

bb.ay:                                            ; preds = %.peel.next
  %i.gx = load ptr, ptr %i.fu, align 8, !tbaa !26 ; 3 uses
  %.not182 = icmp eq ptr %i.gx, null
  br i1 %.not182, label %.tail281.thread, label %sub_0282

sub_0282:                                         ; preds = %bb.ay
  %i.gy = load i8, ptr %i.gx, align 1
  %.not337 = icmp eq i8 %i.gy, 104
  br i1 %.not337, label %.tail281, label %.tail281.thread

.tail281:                                         ; preds = %sub_0282
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 1
  %i.ha = load i8, ptr %i.gz, align 1
  %i.hb = icmp eq i8 %i.ha, 0
  br i1 %i.hb, label %bb.bq, label %.tail281.thread

.tail281.thread:                                  ; preds = %sub_0282, %.tail281, %bb.ay
  %i.hc = load ptr, ptr %i.fv, align 8, !tbaa !27 ; 2 uses
  %.not183 = icmp eq ptr %i.hc, null
  br i1 %.not183, label %.loopexit370, label %bb.az

bb.az:                                            ; preds = %.tail281.thread
  %i.hd = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hc, ptr noundef nonnull dereferenceable(5) @.str.3) #21
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %bb.bq, label %.loopexit370

.loopexit370:                                     ; preds = %.tail281.thread, %bb.az
  %i.hf = trunc nsw i64 %indvars.iv to i32
  %.pre382 = load ptr, ptr %i.j, align 8, !tbaa !47
  br label %bb.ba

bb.ba:                                            ; preds = %.loopexit370, %bb.as, %.tail281.peel.thread
  %i.hg = phi ptr [ %i.fl, %.tail281.peel.thread ], [ %i.fl, %bb.as ], [ %.pre382, %.loopexit370 ] ; 2 uses
  %.lcssa353 = phi i32 [ %i.fs, %.tail281.peel.thread ], [ %i.fs, %bb.as ], [ %i.gu, %.loopexit370 ]
  %.1318.lcssa = phi i1 [ %.0329, %.tail281.peel.thread ], [ %.0329, %bb.as ], [ %.1318, %.loopexit370 ] ; 2 uses
  %.2155316.lcssa = phi i32 [ %i.fk, %.tail281.peel.thread ], [ %i.fk, %bb.as ], [ %i.hf, %.loopexit370 ] ; 2 uses
  %i.hh = load ptr, ptr @stderr, align 8, !tbaa !77
  %i.hi = load ptr, ptr %i.hg, align 8, !tbaa !73
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.hg, i64 %i.aj
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !73
  %i.hl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hh, ptr noundef nonnull @.str.6, ptr noundef %i.hi, ptr noundef %i.hk, i32 noundef %.lcssa353) #23 ; 0 uses
  br i1 %.015.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hm = load ptr, ptr @stderr, align 8, !tbaa !77
  %i.hn = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !73
  %i.hp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hm, ptr noundef nonnull @.str.7, ptr noundef %i.ho) #23 ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %i.hq = load i8, ptr @opal_uses_threads, align 1, !tbaa !54, !range !55, !noundef !92
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %bb.bd, label %bb.be, !prof !56

bb.bd:                                            ; preds = %bb.bc
  %i.hs = atomicrmw volatile add ptr %i.fe, i32 -1 monotonic, align 4
  %i.ht = add i32 %i.hs, -1
  br label %opal_thread_add_fetch_32.exit

bb.be:                                            ; preds = %bb.bc
  %i.hu = load volatile i32, ptr %i.fe, align 8, !tbaa !34
  %i.hv = add nsw i32 %i.hu, -1
  store volatile i32 %i.hv, ptr %i.fe, align 8, !tbaa !34
  %i.hw = load volatile i32, ptr %i.fe, align 8, !tbaa !34
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.bd, %bb.be
  %.0.i = phi i32 [ %i.ht, %bb.bd ], [ %i.hw, %bb.be ]
  %i.hx = icmp eq i32 %.0.i, 0
  br i1 %i.hx, label %bb.bf, label %bb.bu

bb.bf:                                            ; preds = %opal_thread_add_fetch_32.exit
  %i.hy = load ptr, ptr %i.fb, align 8, !tbaa !38
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 48
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !57 ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !41 ; 2 uses
  %.not6.i = icmp eq ptr %i.ib, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i214

.lr.ph.i214:                                      ; preds = %bb.bf, %.lr.ph.i214
  %i.ic = phi ptr [ %i.ie, %.lr.ph.i214 ], [ %i.ib, %bb.bf ]
  %.07.i = phi ptr [ %i.id, %.lr.ph.i214 ], [ %i.ia, %bb.bf ]
  call void %i.ic(ptr noundef nonnull %i.fb) #20, !inline_history !2
  %i.id = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !41 ; 2 uses
  %.not.i215 = icmp eq ptr %i.ie, null
  br i1 %.not.i215, label %opal_obj_run_destructors.exit, label %.lr.ph.i214, !llvm.loop !3

opal_obj_run_destructors.exit:                    ; preds = %.lr.ph.i214, %bb.bf
  call void @free(ptr noundef nonnull %i.fb) #20
  br label %bb.bu

bb.bg:                                            ; preds = %.peel.next
  %i.if = load ptr, ptr %i.j, align 8, !tbaa !47  ; 2 uses
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.if, i64 %indvars.iv
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !73 ; 2 uses
  %i.ii = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ih, ptr noundef nonnull dereferenceable(1) @special_empty_token) #21
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %.loopexit371, label %bb.bp

.loopexit371:                                     ; preds = %bb.bg
  %i.ik = trunc nsw i64 %indvars.iv to i32
  br label %bb.bh

bb.bh:                                            ; preds = %.loopexit371, %bb.at
  %.lcssa354 = phi i32 [ %i.fs, %bb.at ], [ %i.gu, %.loopexit371 ]
  %.1318.lcssa350 = phi i1 [ %.0329, %bb.at ], [ %.1318, %.loopexit371 ] ; 2 uses
  %.2155316.lcssa347.wide = phi i32 [ %i.fk, %bb.at ], [ %i.ik, %.loopexit371 ] ; 2 uses
  %.lcssa344 = phi ptr [ %i.fl, %bb.at ], [ %i.if, %.loopexit371 ] ; 2 uses
  %i.il = load ptr, ptr @stderr, align 8, !tbaa !77
  %i.im = load ptr, ptr %.lcssa344, align 8, !tbaa !73
  %i.in = getelementptr inbounds [8 x i8], ptr %.lcssa344, i64 %i.aj
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !73
  %i.ip = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.il, ptr noundef nonnull @.str.6, ptr noundef %i.im, ptr noundef %i.io, i32 noundef %.lcssa354) #23 ; 0 uses
  br i1 %.015.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.iq = load ptr, ptr @stderr, align 8, !tbaa !77
  %i.ir = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !73
  %i.it = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iq, ptr noundef nonnull @.str.7, ptr noundef %i.is) #23 ; 0 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.iu = load ptr, ptr %i.fx, align 8, !tbaa !33 ; 2 uses
  %.not181 = icmp eq ptr %i.iu, null
  br i1 %.not181, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @opal_argv_free(ptr noundef nonnull %i.iu) #20
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bj, %bb.bk
  %i.iv = load i8, ptr @opal_uses_threads, align 1, !tbaa !54, !range !55, !noundef !92
  %i.iw = trunc nuw i8 %i.iv to i1
  br i1 %i.iw, label %bb.bm, label %bb.bn, !prof !56

bb.bm:                                            ; preds = %bb.bl
  %i.ix = atomicrmw volatile add ptr %i.fe, i32 -1 monotonic, align 4
  %i.iy = add i32 %i.ix, -1
  br label %opal_thread_add_fetch_32.exit217

bb.bn:                                            ; preds = %bb.bl
  %i.iz = load volatile i32, ptr %i.fe, align 8, !tbaa !34
  %i.ja = add nsw i32 %i.iz, -1
  store volatile i32 %i.ja, ptr %i.fe, align 8, !tbaa !34
  %i.jb = load volatile i32, ptr %i.fe, align 8, !tbaa !34
  br label %opal_thread_add_fetch_32.exit217

opal_thread_add_fetch_32.exit217:                 ; preds = %bb.bm, %bb.bn
  %.0.i216 = phi i32 [ %i.iy, %bb.bm ], [ %i.jb, %bb.bn ]
  %i.jc = icmp eq i32 %.0.i216, 0
  br i1 %i.jc, label %bb.bo, label %bb.bu

bb.bo:                                            ; preds = %opal_thread_add_fetch_32.exit217
  %i.jd = load ptr, ptr %i.fb, align 8, !tbaa !38
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 48
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !57 ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !41 ; 2 uses
  %.not6.i218 = icmp eq ptr %i.jg, null
  br i1 %.not6.i218, label %opal_obj_run_destructors.exit222, label %.lr.ph.i219

.lr.ph.i219:                                      ; preds = %bb.bo, %.lr.ph.i219
  %i.jh = phi ptr [ %i.jj, %.lr.ph.i219 ], [ %i.jg, %bb.bo ]
  %.07.i220 = phi ptr [ %i.ji, %.lr.ph.i219 ], [ %i.jf, %bb.bo ]
  call void %i.jh(ptr noundef nonnull %i.fb) #20, !inline_history !2
  %i.ji = getelementptr inbounds nuw i8, ptr %.07.i220, i64 8 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !41 ; 2 uses
  %.not.i221 = icmp eq ptr %i.jj, null
  br i1 %.not.i221, label %opal_obj_run_destructors.exit222, label %.lr.ph.i219, !llvm.loop !3

opal_obj_run_destructors.exit222:                 ; preds = %.lr.ph.i219, %bb.bo
  call void @free(ptr noundef nonnull %i.fb) #20
  br label %bb.bu

bb.bp:                                            ; preds = %bb.bg
  %i.jk = call i32 @opal_argv_append(ptr noundef nonnull %i.fw, ptr noundef nonnull %i.fx, ptr noundef nonnull %i.ih) #20 ; 0 uses
  br label %bb.bq

.loopexit373:                                     ; preds = %bb.aw
  %7 = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #20 ; 0 uses
  br label %bb.bv

bb.bq:                                            ; preds = %bb.bp, %.tail281, %bb.az
  %.2 = phi i1 [ %.1318, %bb.bp ], [ true, %bb.az ], [ true, %.tail281 ] ; 2 uses
  %i.jl = add nuw nsw i32 %.0152317, 1            ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.jm = load i32, ptr %i.fr, align 8, !tbaa !66 ; 3 uses
  %i.jn = icmp slt i32 %i.jl, %i.jm
  br i1 %i.jn, label %.peel.next, label %._crit_edge.loopexit, !llvm.loop !88

._crit_edge.loopexit:                             ; preds = %bb.bq, %bb.ax
  %.2.lcssa = phi i1 [ %.2.peel, %bb.ax ], [ %.2, %bb.bq ]
  %.lcssa358.wide = phi i64 [ %indvars.iv.next.peel, %bb.ax ], [ %indvars.iv.next, %bb.bq ]
  %.lcssa357 = phi i32 [ %i.gs, %bb.ax ], [ %i.jm, %bb.bq ]
  %i.jo = trunc nsw i64 %.lcssa358.wide to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit286
  %.2155.lcssa = phi i32 [ %i.fk, %.loopexit286 ], [ %i.jo, %._crit_edge.loopexit ]
  %.1.lcssa = phi i1 [ %.0329, %.loopexit286 ], [ %.2.lcssa, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa = phi i32 [ %i.fs, %.loopexit286 ], [ %.lcssa357, %._crit_edge.loopexit ]
  %i.jp = icmp eq i32 %.lcssa, 0
  %or.cond3 = select i1 %i.jp, i1 true, i1 %.1.lcssa
  br i1 %or.cond3, label %bb.br, label %..loopexit285_crit_edge

bb.br:                                            ; preds = %._crit_edge
  %i.jq = call fastcc i32 @set_dest(ptr noundef %.2151243262, ptr noundef nonnull @.str.8) ; 2 uses
  %.not176 = icmp eq i32 %i.jq, 0
  br i1 %.not176, label %..loopexit285_crit_edge, label %8

8:                                                ; preds = %bb.br
  %9 = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #20 ; 0 uses
  br label %bb.bv

..loopexit285_crit_edge:                          ; preds = %._crit_edge, %bb.br
  %i.jr = load volatile ptr, ptr %i.ad, align 8, !tbaa !52
  %i.js = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  store volatile ptr %i.jr, ptr %i.js, align 8, !tbaa !52
  %i.jt = load volatile ptr, ptr %i.ad, align 8, !tbaa !52
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  store volatile ptr %i.fb, ptr %i.ju, align 8, !tbaa !53
  %i.jv = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store volatile ptr %i.ac, ptr %i.jv, align 8, !tbaa !53
  store volatile ptr %i.fb, ptr %i.ad, align 8, !tbaa !52
  %i.jw = load volatile i64, ptr %i.ae, align 8, !tbaa !50
  %i.jx = add i64 %i.jw, 1
  store volatile i64 %i.jx, ptr %i.ae, align 8, !tbaa !50
  %.pre385 = load i32, ptr %i.h, align 8, !tbaa !46
  br label %.loopexit285

.thread263:                                       ; preds = %bb.n, %.thread440, %sub_0, %bb.h, %find_option.exit193.thread256
  %.not = phi i1 [ %2, %.thread440 ], [ %2, %bb.h ], [ %2, %find_option.exit193.thread256 ], [ true, %sub_0 ], [ %2, %bb.n ]
  %or.cond185 = and i1 %1, %.not
  br i1 %or.cond185, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %.thread263
  %i.jy = load ptr, ptr @stderr, align 8, !tbaa !77
  %i.jz = load ptr, ptr %i.j, align 8, !tbaa !47  ; 2 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !73
  %i.kb = sext i32 %.0153325 to i64
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.kb
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !73
  %i.ke = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jy, ptr noundef nonnull @.str.9, ptr noundef %i.ka, ptr noundef %i.kd) #23 ; 0 uses
  br i1 %.015.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.kf = load ptr, ptr @stderr, align 8, !tbaa !77
  %i.kg = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !73
  %i.ki = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kf, ptr noundef nonnull @.str.7, ptr noundef %i.kh) #23 ; 0 uses
  br label %bb.bu

bb.bu:                                            ; preds = %.thread263, %opal_thread_add_fetch_32.exit217, %opal_obj_run_destructors.exit222, %opal_thread_add_fetch_32.exit, %opal_obj_run_destructors.exit, %bb.bt, %bb.bs
  %.4157 = phi i32 [ %.0153325, %.thread263 ], [ %.0153325, %bb.bt ], [ %.0153325, %bb.bs ], [ %.2155316.lcssa, %opal_thread_add_fetch_32.exit ], [ %.2155316.lcssa, %opal_obj_run_destructors.exit ], [ %.2155316.lcssa347.wide, %opal_obj_run_destructors.exit222 ], [ %.2155316.lcssa347.wide, %opal_thread_add_fetch_32.exit217 ] ; 2 uses
  %.1140 = phi i1 [ %.0139327, %.thread263 ], [ true, %bb.bt ], [ true, %bb.bs ], [ true, %opal_thread_add_fetch_32.exit ], [ true, %opal_obj_run_destructors.exit ], [ true, %opal_obj_run_destructors.exit222 ], [ true, %opal_thread_add_fetch_32.exit217 ]
  %.4 = phi i1 [ %.0329, %.thread263 ], [ %.0329, %bb.bt ], [ %.0329, %bb.bs ], [ %.1318.lcssa, %opal_thread_add_fetch_32.exit ], [ %.1318.lcssa, %opal_obj_run_destructors.exit ], [ %.1318.lcssa350, %opal_obj_run_destructors.exit222 ], [ %.1318.lcssa350, %opal_thread_add_fetch_32.exit217 ]
  %cond.fr450 = freeze i1 %.1140                  ; 2 uses
  %i.kj = load i32, ptr %i.h, align 8, !tbaa !46
  %i.kk = icmp slt i32 %.4157, %i.kj
  br i1 %i.kk, label %.lr.ph323.preheader, label %.loopexit285.thread

.loopexit285.thread:                              ; preds = %bb.bu
  %10 = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #20 ; 0 uses
  br i1 %cond.fr450, label %.sink.split, label %bb.bv

.lr.ph323.preheader:                              ; preds = %bb.bu
  %i.kl = sext i32 %.4157 to i64
  br label %.lr.ph323

.lr.ph323:                                        ; preds = %.lr.ph323.preheader, %.lr.ph323
  %indvars.iv375 = phi i64 [ %i.kl, %.lr.ph323.preheader ], [ %indvars.iv.next376, %.lr.ph323 ] ; 2 uses
  %i.km = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.km, i64 %indvars.iv375
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !73
  %i.kp = call i32 @opal_argv_append(ptr noundef nonnull %i.af, ptr noundef nonnull %i.ag, ptr noundef %i.ko) #20 ; 0 uses
  %indvars.iv.next376 = add nsw i64 %indvars.iv375, 1 ; 3 uses
  %i.kq = load i32, ptr %i.h, align 8, !tbaa !46  ; 2 uses
  %i.kr = sext i32 %i.kq to i64
  %i.ks = icmp slt i64 %indvars.iv.next376, %i.kr
  br i1 %i.ks, label %.lr.ph323, label %.loopexit285.loopexit, !llvm.loop !89

.loopexit285.loopexit:                            ; preds = %.lr.ph323
  %i.kt = trunc nsw i64 %indvars.iv.next376 to i32
  br label %.loopexit285

.loopexit285:                                     ; preds = %..loopexit285_crit_edge, %.loopexit285.loopexit
  %11 = phi i32 [ %.pre385, %..loopexit285_crit_edge ], [ %i.kq, %.loopexit285.loopexit ] ; 2 uses
  %.6 = phi i32 [ %.2155.lcssa, %..loopexit285_crit_edge ], [ %i.kt, %.loopexit285.loopexit ] ; 2 uses
  %.2141 = phi i1 [ %.0139327, %..loopexit285_crit_edge ], [ %cond.fr450, %.loopexit285.loopexit ] ; 2 uses
  %.5 = phi i1 [ %.1.lcssa, %..loopexit285_crit_edge ], [ %.4, %.loopexit285.loopexit ]
  %i.ku = icmp slt i32 %.6, %11
  br i1 %i.ku, label %sub_0, label %.loopexit, !llvm.loop !90

.loopexit:                                        ; preds = %.loopexit285, %bb.g, %.preheader
  %.0139310 = phi i1 [ %.0139327, %.preheader ], [ %.0139327, %bb.g ], [ %.2141, %.loopexit285 ]
  %i.kv = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #20 ; 0 uses
  %cond.fr = freeze i1 %.0139310
  br i1 %cond.fr, label %.sink.split, label %bb.bv

.sink.split:                                      ; preds = %.loopexit285.thread, %.loopexit
  br label %bb.bv

bb.bv:                                            ; preds = %.sink.split, %.loopexit, %.loopexit.thread, %.loopexit285.thread, %bb.a, %8, %.loopexit373, %opal_obj_new.exit
  %.0159 = phi i32 [ %i.jq, %8 ], [ %i.gr, %.loopexit373 ], [ 0, %bb.a ], [ -2, %opal_obj_new.exit ], [ -43, %.sink.split ], [ 0, %.loopexit ], [ 0, %.loopexit.thread ], [ 0, %.loopexit285.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  ret i32 %.0159
}

; Function Attrs: nounwind uwtable
define internal fastcc void @free_parse_results(ptr nofree noundef captures(address) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 6 uses
  %i.b = load volatile i64, ptr %i.a, align 8, !tbaa !50
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = load volatile i64, ptr %i.a, align 8, !tbaa !50
  %i.e = add i64 %i.d, -1
  store volatile i64 %i.e, ptr %i.a, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.g = load volatile ptr, ptr %i.f, align 8, !tbaa !51 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load volatile ptr, ptr %i.h, align 8, !tbaa !52
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.k = load volatile ptr, ptr %i.j, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store volatile ptr %i.i, ptr %i.l, align 8, !tbaa !52
  %i.m = load volatile ptr, ptr %i.j, align 8, !tbaa !53
  store volatile ptr %i.m, ptr %i.f, align 8, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %.pre23 = load i8, ptr @opal_uses_threads, align 1, !tbaa !54, !range !55
  br label %bb.b

bb.b:                                             ; preds = %opal_list_remove_first.exit20, %.lr.ph
  %i.o = phi i8 [ %.pre23, %.lr.ph ], [ %i.ae, %opal_list_remove_first.exit20 ] ; 2 uses
  %.022 = phi ptr [ %i.g, %.lr.ph ], [ %i.aj, %opal_list_remove_first.exit20 ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.022, i64 8 ; 4 uses
  %i.q = trunc nuw i8 %i.o to i1
  br i1 %i.q, label %bb.c, label %bb.d, !prof !56

bb.c:                                             ; preds = %bb.b
  %i.r = atomicrmw volatile add ptr %i.p, i32 -1 monotonic, align 4
  %i.s = add i32 %i.r, -1
  br label %opal_thread_add_fetch_32.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load volatile i32, ptr %i.p, align 4, !tbaa !34
  %i.u = add nsw i32 %i.t, -1
  store volatile i32 %i.u, ptr %i.p, align 4, !tbaa !34
  %i.v = load volatile i32, ptr %i.p, align 4, !tbaa !34
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.c, %bb.d
  %.0.i18 = phi i32 [ %i.s, %bb.c ], [ %i.v, %bb.d ]
  %i.w = icmp eq i32 %.0.i18, 0
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.x = load ptr, ptr %.022, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !57   ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !41  ; 2 uses
  %.not6.i = icmp eq ptr %i.aa, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %i.ab = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.aa, %bb.e ]
  %.07.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %i.z, %bb.e ]
  tail call void %i.ab(ptr noundef nonnull %.022) #20, !inline_history !2
  %i.ac = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !41 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !3

opal_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.e
  tail call void @free(ptr noundef nonnull %.022) #20
  %.pre = load i8, ptr @opal_uses_threads, align 1, !tbaa !54, !range !55
  br label %bb.f

bb.f:                                             ; preds = %opal_thread_add_fetch_32.exit, %opal_obj_run_destructors.exit
  %i.ae = phi i8 [ %i.o, %opal_thread_add_fetch_32.exit ], [ %.pre, %opal_obj_run_destructors.exit ]
  %i.af = load volatile i64, ptr %i.a, align 8, !tbaa !50
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %._crit_edge, label %opal_list_remove_first.exit20

opal_list_remove_first.exit20:                    ; preds = %bb.f
  %i.ah = load volatile i64, ptr %i.a, align 8, !tbaa !50
  %i.ai = add i64 %i.ah, -1
  store volatile i64 %i.ai, ptr %i.a, align 8, !tbaa !50
  %i.aj = load volatile ptr, ptr %i.n, align 8, !tbaa !51 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load volatile ptr, ptr %i.ak, align 8, !tbaa !52
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.an = load volatile ptr, ptr %i.am, align 8, !tbaa !53
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store volatile ptr %i.al, ptr %i.ao, align 8, !tbaa !52
  %i.ap = load volatile ptr, ptr %i.am, align 8, !tbaa !53
  store volatile ptr %i.ap, ptr %i.n, align 8, !tbaa !51
  br label %bb.b, !llvm.loop !94

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !47 ; 2 uses
  %.not16 = icmp eq ptr %i.ar, null
  br i1 %.not16, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  tail call void @opal_argv_free(ptr noundef nonnull %i.ar) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  store ptr null, ptr %i.aq, align 8, !tbaa !47
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.as, align 8, !tbaa !46
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !49 ; 2 uses
  %.not17 = icmp eq ptr %i.au, null
  br i1 %.not17, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @opal_argv_free(ptr noundef nonnull %i.au) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr null, ptr %i.at, align 8, !tbaa !49
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 0, ptr %i.av, align 8, !tbaa !48
  ret void
}

declare noalias ptr @opal_argv_copy(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @opal_argv_append(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @opal_argv_delete(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @opal_argv_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @opal_argv_count(ptr noundef) local_unnamed_addr #4

declare void @opal_argv_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -43, 1) i32 @set_dest(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @__isoc23_strtol(ptr noundef nonnull %1, ptr noundef null, i32 noundef 10) #20, !inline_history !95
  %i.b = trunc i64 %i.a to i32
  %i.c = tail call i64 @__isoc23_strtoul(ptr noundef nonnull %1, ptr noundef null, i32 noundef 10) #20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load i32, ptr %i.f, align 8, !tbaa !24
  switch i32 %i.g, label %bb.d [
    i32 1, label %.sink.split
    i32 2, label %.sink.split
    i32 3, label %.sink.split
    i32 4, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.b, %bb.b, %bb.c
  %.sink = phi ptr [ @.str.8, %bb.c ], [ %1, %bb.b ], [ %1, %bb.b ], [ %1, %bb.b ]
  %i.h = tail call i32 @opal_setenv(ptr noundef nonnull %i.e, ptr noundef nonnull %.sink, i1 noundef zeroext true, ptr noundef nonnull @environ) #20 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !70   ; 5 uses
  %.not47 = icmp eq ptr %i.j, null
  br i1 %.not47, label %bb.x, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load i32, ptr %i.k, align 8, !tbaa !24
  switch i32 %i.l, label %bb.x [
    i32 1, label %bb.f
    i32 2, label %.preheader
    i32 3, label %.preheader70
    i32 4, label %bb.w
  ]

.preheader70:                                     ; preds = %bb.e
  %i.m = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21 ; 2 uses
  %.not75 = icmp eq i64 %i.m, 0
  br i1 %.not75, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader70
end_hunk_0
