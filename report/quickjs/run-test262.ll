Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/run-test262?download=true
inline.NumInlined: 247
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@main:bb.a
  %i.bs = getelementptr inbounds [8 x i8], ptr %1, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !29 ; 2 uses
  %.not.i192 = icmp eq ptr %i.bt, null
  br i1 %.not.i192, label %bb.m, label %get_opt_arg.exit193

bb.m:                                             ; preds = %bb.l
  call void (i32, ptr, ...) @fatal(i32 noundef 2, ptr noundef nonnull @.str.70, ptr noundef nonnull %i.q)
  unreachable

get_opt_arg.exit193:                              ; preds = %bb.l
  %i.bu = add nsw i32 %.3131385, 2
  %i.bv = load i32, ptr getelementptr inbounds nuw (i8, ptr @test_list, i64 8), align 8, !tbaa !38 ; 2 uses
  call fastcc void @find_test_files(ptr noundef nonnull %i.bt)
  %i.bw = load ptr, ptr @test_list, align 8, !tbaa !39
  %i.bx = sext i32 %i.bv to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = load i32, ptr getelementptr inbounds nuw (i8, ptr @test_list, i64 8), align 8, !tbaa !38
  %i.ca = sub nsw i32 %i.bz, %i.bv
  %i.cb = sext i32 %i.ca to i64
  call void @qsort(ptr noundef %i.by, i64 noundef %i.cb, i64 noundef 8, ptr noundef nonnull @namelist_cmp_indirect) #40
  br label %bb.x

sub_1290:                                         ; preds = %sub_1285, %.tail283
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.cd = load i8, ptr %i.cc, align 1
  %.not430 = icmp eq i8 %i.cd, 101
  br i1 %.not430, label %.tail288, label %sub_1295

.tail288:                                         ; preds = %sub_1290
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %bb.n, label %sub_1295

bb.n:                                             ; preds = %.tail288
  %i.ch = sext i32 %i.s to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !29 ; 2 uses
  %.not.i195 = icmp eq ptr %i.cj, null
  br i1 %.not.i195, label %bb.o, label %get_opt_arg.exit196

bb.o:                                             ; preds = %bb.n
  call void (i32, ptr, ...) @fatal(i32 noundef 2, ptr noundef nonnull @.str.70, ptr noundef nonnull %i.q)
  unreachable

get_opt_arg.exit196:                              ; preds = %bb.n
  %i.ck = add nsw i32 %.3131385, 2
  store ptr %i.cj, ptr @error_filename, align 8, !tbaa !29
  br label %bb.x

sub_1295:                                         ; preds = %sub_1290, %.tail288
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.cm = load i8, ptr %i.cl, align 1
  %.not432 = icmp eq i8 %i.cm, 120
  br i1 %.not432, label %.tail293, label %sub_1300

.tail293:                                         ; preds = %sub_1295
  %i.cn = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %bb.p, label %sub_1300

bb.p:                                             ; preds = %.tail293
  %i.cq = sext i32 %i.s to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !29 ; 2 uses
  %.not.i198 = icmp eq ptr %i.cs, null
  br i1 %.not.i198, label %bb.q, label %get_opt_arg.exit199

bb.q:                                             ; preds = %bb.p
  call void (i32, ptr, ...) @fatal(i32 noundef 2, ptr noundef nonnull @.str.70, ptr noundef nonnull %i.q)
  unreachable

get_opt_arg.exit199:                              ; preds = %bb.p
  %i.ct = add nsw i32 %.3131385, 2
  call void @namelist_load(ptr noundef nonnull @exclude_list, ptr noundef nonnull %i.cs)
  br label %bb.x

sub_1300:                                         ; preds = %sub_1295, %.tail293
  %i.cu = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.cv = load i8, ptr %i.cu, align 1
  %.not434 = icmp eq i8 %i.cv, 102
  br i1 %.not434, label %.tail298, label %sub_1305

.tail298:                                         ; preds = %sub_1300
  %i.cw = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = icmp eq i8 %i.cx, 0
  br i1 %i.cy, label %bb.x, label %sub_1305

sub_1305:                                         ; preds = %sub_1300, %.tail298
  %i.cz = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.da = load i8, ptr %i.cz, align 1
  %.not436 = icmp eq i8 %i.da, 69
  br i1 %.not436, label %.tail303, label %sub_1310

.tail303:                                         ; preds = %sub_1305
  %i.db = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %bb.x, label %sub_1310

sub_1310:                                         ; preds = %sub_1305, %.tail303
  %i.de = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.df = load i8, ptr %i.de, align 1
  %.not438 = icmp eq i8 %i.df, 84
  br i1 %.not438, label %.tail308, label %sub_1315

.tail308:                                         ; preds = %sub_1310
  %i.dg = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = icmp eq i8 %i.dh, 0
  br i1 %i.di, label %bb.r, label %sub_1315

bb.r:                                             ; preds = %.tail308
  %i.dj = sext i32 %i.s to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !29 ; 2 uses
  %.not.i203 = icmp eq ptr %i.dl, null
  br i1 %.not.i203, label %bb.s, label %get_opt_arg.exit204

bb.s:                                             ; preds = %bb.r
  call void (i32, ptr, ...) @fatal(i32 noundef 2, ptr noundef nonnull @.str.70, ptr noundef nonnull %i.q)
  unreachable

get_opt_arg.exit204:                              ; preds = %bb.r
  %i.dm = add nsw i32 %.3131385, 2
  %i.dn = call i64 @__isoc23_strtol(ptr noundef nonnull %i.dl, ptr noundef null, i32 noundef 10) #40, !inline_history !14
  %i.do = trunc i64 %i.dn to i32
  store i32 %i.do, ptr @slow_test_threshold, align 4, !tbaa !41
  br label %bb.x

sub_1315:                                         ; preds = %sub_1310, %.tail308
  %i.dp = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.dq = load i8, ptr %i.dp, align 1
  %.not440 = icmp eq i8 %i.dq, 116
  br i1 %.not440, label %.tail313, label %sub_1320

.tail313:                                         ; preds = %sub_1315
  %i.dr = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = icmp eq i8 %i.ds, 0
  br i1 %i.dt, label %bb.t, label %sub_1320

bb.t:                                             ; preds = %.tail313
  %i.du = sext i32 %i.s to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %1, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !29 ; 2 uses
  %.not.i206 = icmp eq ptr %i.dw, null
  br i1 %.not.i206, label %bb.u, label %get_opt_arg.exit207

bb.u:                                             ; preds = %bb.t
  call void (i32, ptr, ...) @fatal(i32 noundef 2, ptr noundef nonnull @.str.70, ptr noundef nonnull %i.q)
  unreachable

get_opt_arg.exit207:                              ; preds = %bb.t
  %i.dx = add nsw i32 %.3131385, 2
  %i.dy = call i64 @__isoc23_strtol(ptr noundef nonnull %i.dw, ptr noundef null, i32 noundef 10) #40, !inline_history !14
  %sext = shl i64 %i.dy, 32
  %i.dz = ashr exact i64 %sext, 32
  store i64 %i.dz, ptr @nthreads, align 8, !tbaa !43
  br label %bb.x

sub_1320:                                         ; preds = %sub_1315, %.tail313
  %i.ea = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.eb = load i8, ptr %i.ea, align 1
  %.not442 = icmp eq i8 %i.eb, 78
  br i1 %.not442, label %.tail318, label %.tail318.thread

.tail318:                                         ; preds = %sub_1320
  %i.ec = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = icmp eq i8 %i.ed, 0
  br i1 %i.ee, label %bb.x, label %.tail318.thread

.tail318.thread:                                  ; preds = %sub_1320, %.tail318
  %i.ef = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(9) @.str.92) #45
  %.not.i209.not = icmp eq i32 %i.ef, 0
  br i1 %.not.i209.not, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.tail318.thread
  %i.eg = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(15) @.str.93) #45
  %.not.i210.not = icmp eq i32 %i.eg, 0
  br i1 %.not.i210.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void (i32, ptr, ...) @fatal(i32 noundef 1, ptr noundef nonnull @.str.94, ptr noundef nonnull %i.q)
  unreachable

bb.x:                                             ; preds = %bb.f, %bb.h, %get_opt_arg.exit, %get_opt_arg.exit196, %get_opt_arg.exit204, %get_opt_arg.exit207, %get_opt_arg.exit199, %get_opt_arg.exit193, %str_count.exit, %bb.g, %bb.e, %.tail298, %.tail303, %.tail318, %.tail318.thread, %bb.v
  %.5 = phi i32 [ %i.s, %.tail318 ], [ %i.s, %bb.v ], [ %i.s, %.tail303 ], [ %i.s, %bb.e ], [ %i.s, %bb.f ], [ %i.s, %bb.g ], [ %i.s, %bb.h ], [ %i.s, %str_count.exit ], [ %i.bl, %get_opt_arg.exit ], [ %i.bu, %get_opt_arg.exit193 ], [ %i.ck, %get_opt_arg.exit196 ], [ %i.ct, %get_opt_arg.exit199 ], [ %i.s, %.tail318.thread ], [ %i.s, %.tail298 ], [ %i.dm, %get_opt_arg.exit204 ], [ %i.dx, %get_opt_arg.exit207 ] ; 3 uses
  %.2126 = phi i1 [ %.0124386, %.tail318 ], [ %.0124386, %bb.v ], [ %.0124386, %.tail303 ], [ %.0124386, %bb.e ], [ %.0124386, %bb.f ], [ %.0124386, %bb.g ], [ %.0124386, %bb.h ], [ %.0124386, %str_count.exit ], [ %.0124386, %get_opt_arg.exit ], [ %.0124386, %get_opt_arg.exit193 ], [ %.0124386, %get_opt_arg.exit196 ], [ %.0124386, %get_opt_arg.exit199 ], [ %.0124386, %.tail318.thread ], [ false, %.tail298 ], [ %.0124386, %get_opt_arg.exit204 ], [ %.0124386, %get_opt_arg.exit207 ] ; 2 uses
  %.2122 = phi i1 [ %.0120387, %.tail318 ], [ %.0120387, %bb.v ], [ true, %.tail303 ], [ %.0120387, %bb.e ], [ %.0120387, %bb.f ], [ %.0120387, %bb.g ], [ %.0120387, %bb.h ], [ %.0120387, %str_count.exit ], [ %.0120387, %get_opt_arg.exit ], [ %.0120387, %get_opt_arg.exit193 ], [ %.0120387, %get_opt_arg.exit196 ], [ %.0120387, %get_opt_arg.exit199 ], [ %.0120387, %.tail318.thread ], [ %.0120387, %.tail298 ], [ %.0120387, %get_opt_arg.exit204 ], [ %.0120387, %get_opt_arg.exit207 ] ; 2 uses
  %.2114 = phi i1 [ true, %.tail318 ], [ %.0112388, %bb.v ], [ %.0112388, %.tail303 ], [ %.0112388, %bb.e ], [ %.0112388, %bb.f ], [ %.0112388, %bb.g ], [ %.0112388, %bb.h ], [ %.0112388, %str_count.exit ], [ %.0112388, %get_opt_arg.exit ], [ %.0112388, %get_opt_arg.exit193 ], [ %.0112388, %get_opt_arg.exit196 ], [ %.0112388, %get_opt_arg.exit199 ], [ %.0112388, %.tail318.thread ], [ %.0112388, %.tail298 ], [ %.0112388, %get_opt_arg.exit204 ], [ %.0112388, %get_opt_arg.exit207 ] ; 2 uses
  %.2110 = phi i1 [ %.0108389, %.tail318 ], [ %.0108389, %bb.v ], [ %.0108389, %.tail303 ], [ %.0108389, %bb.e ], [ %.0108389, %bb.f ], [ %.0108389, %bb.g ], [ %.0108389, %bb.h ], [ %.0108389, %str_count.exit ], [ %.0108389, %get_opt_arg.exit ], [ %.0108389, %get_opt_arg.exit193 ], [ %.0108389, %get_opt_arg.exit196 ], [ %.0108389, %get_opt_arg.exit199 ], [ true, %.tail318.thread ], [ %.0108389, %.tail298 ], [ %.0108389, %get_opt_arg.exit204 ], [ %.0108389, %get_opt_arg.exit207 ] ; 2 uses
  %.2 = phi i1 [ %.0106390, %.tail318 ], [ false, %bb.v ], [ %.0106390, %.tail303 ], [ %.0106390, %bb.e ], [ %.0106390, %bb.f ], [ %.0106390, %bb.g ], [ %.0106390, %bb.h ], [ %.0106390, %str_count.exit ], [ %.0106390, %get_opt_arg.exit ], [ %.0106390, %get_opt_arg.exit193 ], [ %.0106390, %get_opt_arg.exit196 ], [ %.0106390, %get_opt_arg.exit199 ], [ %.0106390, %.tail318.thread ], [ %.0106390, %.tail298 ], [ %.0106390, %get_opt_arg.exit204 ], [ %.0106390, %get_opt_arg.exit207 ] ; 2 uses
  %i.eh = icmp slt i32 %.5, %0
  br i1 %i.eh, label %.lr.ph391, label %.thread246

.thread246:                                       ; preds = %bb.x, %.lr.ph391, %js_mutex_init.exit
  %.3131.lcssa = phi i32 [ 1, %js_mutex_init.exit ], [ %.3131385, %.lr.ph391 ], [ %.5, %bb.x ] ; 6 uses
  %.0124.lcssa = phi i1 [ true, %js_mutex_init.exit ], [ %.0124386, %.lr.ph391 ], [ %.2126, %bb.x ] ; 2 uses
  %.0120.lcssa = phi i1 [ false, %js_mutex_init.exit ], [ %.0120387, %.lr.ph391 ], [ %.2122, %bb.x ]
  %.0112.lcssa = phi i1 [ false, %js_mutex_init.exit ], [ %.0112388, %.lr.ph391 ], [ %.2114, %bb.x ]
  %.0108.lcssa = phi i1 [ false, %js_mutex_init.exit ], [ %.0108389, %.lr.ph391 ], [ %.2110, %bb.x ]
  %.0106.lcssa = phi i1 [ true, %js_mutex_init.exit ], [ %.0106390, %.lr.ph391 ], [ %.2, %bb.x ]
  %i.ei = icmp slt i32 %.3131.lcssa, %0           ; 3 uses
  %i.ej = load i32, ptr getelementptr inbounds nuw (i8, ptr @test_list, i64 8), align 8
  %i.ek = icmp ne i32 %i.ej, 0
  %or.cond = select i1 %i.ei, i1 true, i1 %i.ek
  br i1 %or.cond, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.thread246
  call void @help()
  unreachable

bb.z:                                             ; preds = %.thread246
  br i1 %.0112.lcssa, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.el = sext i32 %.3131.lcssa to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %1, i64 %i.el
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !29
  %i.eo = call i32 @run_test262_harness_test(ptr noundef nonnull %5, ptr noundef %i.en, i1 noundef zeroext %.0108.lcssa, i1 noundef zeroext %.0106.lcssa)
  br label %bb.cj

bb.ab:                                            ; preds = %bb.z
  %i.ep = load i64, ptr @nthreads, align 8, !tbaa !43
  %i.eq = trunc i64 %i.ep to i32
  %..i = call noundef i32 @llvm.smax.i32(i32 %i.eq, i32 1)
  %i.er = call i32 @llvm.umin.i32(i32 %..i, i32 32)
  %i.es = zext nneg i32 %i.er to i64
  store i64 %i.es, ptr @nthreads, align 8, !tbaa !43
  %i.et = load ptr, ptr @stdout, align 8, !tbaa !26
  store ptr %i.et, ptr @error_out, align 8, !tbaa !26
  %i.eu = load ptr, ptr @error_filename, align 8, !tbaa !29 ; 3 uses
  %.not165 = icmp eq ptr %i.eu, null
  br i1 %.not165, label %bb.ai, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.ev = call ptr @js_load_file(ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.eu) #40 ; 2 uses
  %.not.i212 = icmp eq ptr %i.ev, null
  br i1 %.not.i212, label %bb.ad, label %load_file.exit

bb.ad:                                            ; preds = %bb.ac
  call void @perror_exit(i32 noundef 1, ptr noundef nonnull %i.eu)
  unreachable

load_file.exit:                                   ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  store ptr %i.ev, ptr @error_file, align 8, !tbaa !29
  br i1 %.0120.lcssa, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %load_file.exit
  %i.ew = load i32, ptr getelementptr inbounds nuw (i8, ptr @test_list, i64 8), align 8, !tbaa !38 ; 2 uses
  %i.ex = icmp sgt i32 %i.ew, 0
  br i1 %i.ex, label %.lr.ph.i213, label %namelist_free.exit

.lr.ph.i213:                                      ; preds = %bb.ae, %.lr.ph.i213
  %i.ey = phi i32 [ %i.fe, %.lr.ph.i213 ], [ %i.ew, %bb.ae ]
  %i.ez = load ptr, ptr @test_list, align 8, !tbaa !39
  %i.fa = add nsw i32 %i.ey, -1                   ; 2 uses
  store i32 %i.fa, ptr getelementptr inbounds nuw (i8, ptr @test_list, i64 8), align 8, !tbaa !38
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fb
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !29
  call void @free(ptr noundef %i.fd) #40
  %i.fe = load i32, ptr getelementptr inbounds nuw (i8, ptr @test_list, i64 8), align 8, !tbaa !38 ; 2 uses
  %i.ff = icmp sgt i32 %i.fe, 0
  br i1 %i.ff, label %.lr.ph.i213, label %namelist_free.exit, !llvm.loop !4

namelist_free.exit:                               ; preds = %.lr.ph.i213, %bb.ae
  %i.fg = load ptr, ptr @test_list, align 8, !tbaa !39
  call void @free(ptr noundef %i.fg) #40
  store ptr null, ptr @test_list, align 8, !tbaa !39
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @test_list, i64 12), align 4, !tbaa !40
  %i.fh = load ptr, ptr @error_file, align 8, !tbaa !29
  call void @namelist_add_from_error_file(ptr noundef nonnull @test_list, ptr noundef %i.fh)
  br label %bb.af

bb.af:                                            ; preds = %namelist_free.exit, %load_file.exit
  %i.fi = load i32, ptr @update_errors, align 4, !tbaa !41
  %.not166 = icmp eq i32 %i.fi, 0
  br i1 %.not166, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fj = load ptr, ptr @error_file, align 8, !tbaa !29
  call void @free(ptr noundef %i.fj) #40
  store ptr null, ptr @error_file, align 8, !tbaa !29
  %i.fk = load ptr, ptr @error_filename, align 8, !tbaa !29
  %i.fl = call noalias ptr @fopen(ptr noundef %i.fk, ptr noundef nonnull @.str.95) ; 2 uses
  store ptr %i.fl, ptr @error_out, align 8, !tbaa !26
  %.not167 = icmp eq ptr %i.fl, null
  br i1 %.not167, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fm = load ptr, ptr @error_filename, align 8, !tbaa !29
  call void @perror_exit(i32 noundef 1, ptr noundef %i.fm)
  unreachable

bb.ai:                                            ; preds = %bb.af, %bb.ag, %bb.ab
  call void @update_exclude_dirs()
  %i.fn = call i32 @isatty(i32 noundef 1) #40
  %.not168.not = icmp eq i32 %i.fn, 0             ; 2 uses
  br i1 %.0124.lcssa, label %bb.aj, label %.preheader324

.preheader324:                                    ; preds = %bb.ai
  br i1 %i.ei, label %.lr.ph406.preheader, label %js_cond_destroy.exit

.lr.ph406.preheader:                              ; preds = %.preheader324
  %i.fo = sext i32 %.3131.lcssa to i64
  br label %.lr.ph406

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.ei, label %bb.ak, label %.thread254

.thread254:                                       ; preds = %bb.aj
  store i32 0, ptr @start_index, align 4, !tbaa !41
  br label %.sink.split

bb.ak:                                            ; preds = %bb.aj
  %i.fp = tail call ptr @__ctype_b_loc() #46
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !31
  %i.fr = sext i32 %.3131.lcssa to i64
  %i.fs = getelementptr inbounds [8 x i8], ptr %1, i64 %i.fr
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !29 ; 2 uses
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !27
  %i.fv = zext i8 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %i.fv
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !33
  %i.fy = and i16 %i.fx, 2048
  %.not169 = icmp eq i16 %i.fy, 0
  br i1 %.not169, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fz = add nsw i32 %.3131.lcssa, 1
  call void @namelist_load(ptr noundef nonnull @test_list, ptr noundef nonnull %i.ft)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.7 = phi i32 [ %.3131.lcssa, %bb.ak ], [ %i.fz, %bb.al ] ; 3 uses
  store i32 0, ptr @start_index, align 4, !tbaa !41
  store i32 -1, ptr @stop_index, align 4, !tbaa !41
  %i.ga = icmp slt i32 %.7, %0
  br i1 %i.ga, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.gb = add nsw i32 %.7, 1                      ; 2 uses
  %i.gc = sext i32 %.7 to i64
  %i.gd = getelementptr inbounds [8 x i8], ptr %1, i64 %i.gc
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !29
  %i.gf = call i64 @__isoc23_strtol(ptr noundef nonnull %i.ge, ptr noundef null, i32 noundef 10) #40, !inline_history !14
  %i.gg = trunc i64 %i.gf to i32
  store i32 %i.gg, ptr @start_index, align 4, !tbaa !41
  %i.gh = icmp slt i32 %i.gb, %0
  br i1 %i.gh, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gi = sext i32 %i.gb to i64
  %i.gj = getelementptr inbounds [8 x i8], ptr %1, i64 %i.gi
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !29
  %i.gl = call i64 @__isoc23_strtol(ptr noundef nonnull %i.gk, ptr noundef null, i32 noundef 10) #40, !inline_history !14
  %i.gm = trunc i64 %i.gl to i32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ao, %.thread254
  %.sink = phi i32 [ -1, %.thread254 ], [ %i.gm, %bb.ao ]
  store i32 %.sink, ptr @stop_index, align 4, !tbaa !41
  br label %bb.ap

bb.ap:                                            ; preds = %.sink.split, %bb.an, %bb.am
  call void @namelist_sort(ptr noundef nonnull @test_list)
  call void @namelist_sort(ptr noundef nonnull @exclude_list)
  %i.gn = load i32, ptr getelementptr inbounds nuw (i8, ptr @test_list, i64 8), align 8, !tbaa !38 ; 2 uses
  %i.go = icmp sgt i32 %i.gn, 0
  br i1 %i.go, label %.lr.ph408.preheader, label %._crit_edge

.lr.ph408.preheader:                              ; preds = %bb.ap
  %.pre462 = load ptr, ptr @test_list, align 8, !tbaa !39
  br label %.lr.ph408.a

.lr.ph408.a:                                      ; preds = %.lr.ph408.preheader, %include_exclude_or_skip.exit.thread255
  %i.gp = phi i32 [ %i.gn, %.lr.ph408.preheader ], [ %i.hd, %include_exclude_or_skip.exit.thread255 ] ; 2 uses
  %i.gq = phi ptr [ %.pre462, %.lr.ph408.preheader ], [ %i.he, %include_exclude_or_skip.exit.thread255 ] ; 3 uses
  %indvars.iv453 = phi i64 [ 0, %.lr.ph408.preheader ], [ %indvars.iv.next454, %include_exclude_or_skip.exit.thread255 ] ; 4 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv453
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !29
  %i.gt = call i32 @namelist_find(ptr noundef nonnull @exclude_list, ptr noundef %i.gs)
  %i.gu = icmp sgt i32 %i.gt, -1
  br i1 %i.gu, label %include_exclude_or_skip.exit, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph408.a
  %i.gv = load i32, ptr @start_index, align 4, !tbaa !41
  %i.gw = sext i32 %i.gv to i64
  %i.gx = icmp slt i64 %indvars.iv453, %i.gw
  %i.gy = load i32, ptr @stop_index, align 4
  %i.gz = zext i32 %i.gy to i64
  %or.cond.i = icmp samesign ugt i64 %indvars.iv453, %i.gz
  %or.cond323 = select i1 %i.gx, i1 true, i1 %or.cond.i
  br i1 %or.cond323, label %select.unfold, label %include_exclude_or_skip.exit.thread255

include_exclude_or_skip.exit:                     ; preds = %.lr.ph408.a
  %i.ha = load i32, ptr @test_excluded, align 4, !tbaa !41
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr @test_excluded, align 4, !tbaa !41
  br label %include_exclude_or_skip.exit.thread255

select.unfold:                                    ; preds = %bb.aq
  %i.hc = atomicrmw add ptr @test_skipped, i32 1 seq_cst, align 4 ; 0 uses
  %.pre = load ptr, ptr @test_list, align 8, !tbaa !39
  %.pre463 = load i32, ptr getelementptr inbounds nuw (i8, ptr @test_list, i64 8), align 8, !tbaa !38
  br label %include_exclude_or_skip.exit.thread255

include_exclude_or_skip.exit.thread255:           ; preds = %bb.aq, %include_exclude_or_skip.exit, %select.unfold
  %i.hd = phi i32 [ %i.gp, %bb.aq ], [ %i.gp, %include_exclude_or_skip.exit ], [ %.pre463, %select.unfold ] ; 2 uses
  %i.he = phi ptr [ %i.gq, %bb.aq ], [ %i.gq, %include_exclude_or_skip.exit ], [ %.pre, %select.unfold ]
  %indvars.iv.next454 = add nuw nsw i64 %indvars.iv453, 1 ; 2 uses
  %i.hf = sext i32 %i.hd to i64
  %i.hg = icmp slt i64 %indvars.iv.next454, %i.hf
  br i1 %i.hg, label %.lr.ph408.a, label %._crit_edge, !llvm.loop !116

._crit_edge:                                      ; preds = %include_exclude_or_skip.exit.thread255, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.hh = call i32 @pthread_condattr_init(ptr noundef nonnull %4) #40
  %.not.i214 = icmp eq i32 %i.hh, 0
  br i1 %.not.i214, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge
  call void @abort() #42
  unreachable

bb.as:                                            ; preds = %._crit_edge
  %i.hi = call i32 @pthread_condattr_setclock(ptr noundef nonnull %4, i32 noundef 1) #40
  %.not1.i = icmp eq i32 %i.hi, 0
  br i1 %.not1.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @abort() #42
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.hj = call i32 @pthread_cond_init(ptr noundef nonnull @progress_cond, ptr noundef nonnull %4) #40
  %.not2.i = icmp eq i32 %i.hj, 0
  br i1 %.not2.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @abort() #42
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.hk = call i32 @pthread_condattr_destroy(ptr noundef nonnull %4) #40
  %.not3.i = icmp eq i32 %i.hk, 0
  br i1 %.not3.i, label %js_cond_init.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @abort() #42
  unreachable

js_cond_init.exit:                                ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  %i.hl = call i32 @pthread_mutex_init(ptr noundef nonnull @progress_mutex, ptr noundef null) #40
  %.not.i215 = icmp eq i32 %i.hl, 0
  br i1 %.not.i215, label %js_mutex_init.exit216, label %bb.ay

bb.ay:                                            ; preds = %js_cond_init.exit
  call void @abort() #42
  unreachable

js_mutex_init.exit216:                            ; preds = %js_cond_init.exit
  br i1 %.not168.not, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %js_mutex_init.exit216
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.hm = call i32 @pthread_attr_init(ptr noundef nonnull %3) #40
  %.not.i217 = icmp eq i32 %i.hm, 0
  br i1 %.not.i217, label %bb.ba, label %js_thread_create.exit

bb.ba:                                            ; preds = %bb.az
  %i.hn = call i32 @pthread_attr_setstacksize(ptr noundef nonnull %3, i64 noundef 2097152) #40
  %.not7.i218 = icmp eq i32 %i.hn, 0
  br i1 %.not7.i218, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ho = call i32 @pthread_create(ptr noundef nonnull @progress_thread, ptr noundef nonnull %3, ptr noundef nonnull @show_progress, ptr noundef null) #40 ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.hp = call i32 @pthread_attr_destroy(ptr noundef nonnull %3) #40 ; 0 uses
  br label %js_thread_create.exit

js_thread_create.exit:                            ; preds = %bb.az, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.bd

bb.bd:                                            ; preds = %js_thread_create.exit, %js_mutex_init.exit216
  %i.hq = load i64, ptr @nthreads, align 8, !tbaa !43
  %i.hr = icmp sgt i64 %i.hq, 0
  br i1 %i.hr, label %.lr.ph411, label %._crit_edge414

.preheader:                                       ; preds = %js_thread_create.exit227
  %i.hs = icmp sgt i64 %i.hz, 0
  br i1 %i.hs, label %.lr.ph413, label %._crit_edge414

.lr.ph411:                                        ; preds = %bb.bd, %js_thread_create.exit227
  %indvars.iv456 = phi i64 [ %indvars.iv.next457, %js_thread_create.exit227 ], [ 0, %bb.bd ] ; 3 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr @threads, i64 %indvars.iv456
  %i.hu = inttoptr i64 %indvars.iv456 to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.hv = call i32 @pthread_attr_init(ptr noundef nonnull %2) #40
  %.not.i221 = icmp eq i32 %i.hv, 0
  br i1 %.not.i221, label %bb.be, label %js_thread_create.exit227

bb.be:                                            ; preds = %.lr.ph411
  %i.hw = call i32 @pthread_attr_setstacksize(ptr noundef nonnull %2, i64 noundef 2097152) #40
  %.not7.i223 = icmp eq i32 %i.hw, 0
  br i1 %.not7.i223, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.hx = call i32 @pthread_create(ptr noundef nonnull %i.ht, ptr noundef nonnull %2, ptr noundef nonnull @run_test_dir_list, ptr noundef %i.hu) #40 ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.hy = call i32 @pthread_attr_destroy(ptr noundef nonnull %2) #40 ; 0 uses
  br label %js_thread_create.exit227

js_thread_create.exit227:                         ; preds = %.lr.ph411, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %indvars.iv.next457 = add nuw nsw i64 %indvars.iv456, 1 ; 2 uses
  %i.hz = load i64, ptr @nthreads, align 8, !tbaa !43 ; 2 uses
  %i.ia = icmp sgt i64 %i.hz, %indvars.iv.next457
  br i1 %i.ia, label %.lr.ph411, label %.preheader, !llvm.loop !117

.lr.ph413:                                        ; preds = %.preheader, %.lr.ph413
  %indvars.iv459 = phi i64 [ %indvars.iv.next460, %.lr.ph413 ], [ 0, %.preheader ] ; 2 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr @threads, i64 %indvars.iv459
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !43
  %i.id = call i32 @pthread_join(i64 noundef %i.ic, ptr noundef null) #40 ; 0 uses
  %indvars.iv.next460 = add nuw nsw i64 %indvars.iv459, 1 ; 2 uses
  %i.ie = load i64, ptr @nthreads, align 8, !tbaa !43
  %i.if = icmp sgt i64 %i.ie, %indvars.iv.next460
  br i1 %i.if, label %.lr.ph413, label %._crit_edge414, !llvm.loop !118

._crit_edge414:                                   ; preds = %.lr.ph413, %bb.bd, %.preheader
  %i.ig = call i32 @pthread_mutex_lock(ptr noundef nonnull @progress_mutex) #40
  %.not.i230 = icmp eq i32 %i.ig, 0
  br i1 %.not.i230, label %js_mutex_lock.exit, label %bb.bh

bb.bh:                                            ; preds = %._crit_edge414
  call void @abort() #42
  unreachable

js_mutex_lock.exit:                               ; preds = %._crit_edge414
  %i.ih = call i32 @pthread_cond_signal(ptr noundef nonnull @progress_cond) #40
  %.not.i231 = icmp eq i32 %i.ih, 0
  br i1 %.not.i231, label %js_cond_signal.exit, label %bb.bi

bb.bi:                                            ; preds = %js_mutex_lock.exit
  call void @abort() #42
  unreachable

js_cond_signal.exit:                              ; preds = %js_mutex_lock.exit
  %i.ii = call i32 @pthread_mutex_unlock(ptr noundef nonnull @progress_mutex) #40
  %.not.i232 = icmp eq i32 %i.ii, 0
  br i1 %.not.i232, label %js_mutex_unlock.exit, label %bb.bj

bb.bj:                                            ; preds = %js_cond_signal.exit
  call void @abort() #42
  unreachable

js_mutex_unlock.exit:                             ; preds = %js_cond_signal.exit
  br i1 %.not168.not, label %bb.bl, label %bb.bk
end_hunk_0
