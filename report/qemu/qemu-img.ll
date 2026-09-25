Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/qemu-img?download=true
inline.NumInlined: 83
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@img_check:bb.a
  unreachable

bb.i:                                             ; preds = %bb.b
  %i.p = load ptr, ptr @optarg, align 8           ; 3 uses
  %i.q = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(5) @.str.149) #25
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %parse_output_format.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(6) @.str.150) #25
  %.not4.i = icmp eq i32 %i.r, 0
  br i1 %.not4.i, label %parse_output_format.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = load ptr, ptr %2, align 8
  call void (ptr, ptr, ...) @error_exit(ptr noundef %i.s, ptr noundef nonnull @.str.151, ptr noundef nonnull %i.p) #23
  unreachable

bb.l:                                             ; preds = %bb.b
  br label %parse_output_format.exit

bb.m:                                             ; preds = %bb.b
  %i.t = load ptr, ptr @optarg, align 8
  call void @user_creatable_process_cmdline(ptr noundef %i.t) #22
  br label %parse_output_format.exit

bb.n:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %2, align 8
  call fastcc void @tryhelp(ptr noundef %i.u) #23
  unreachable

bb.o:                                             ; preds = %bb.b
  br label %parse_output_format.exit

parse_output_format.exit:                         ; preds = %bb.b, %bb.j, %bb.i, %bb.d, %bb.e, %bb.l, %bb.m, %bb.f, %bb.g, %bb.o
  %.2113 = phi i32 [ 1, %bb.j ], [ %.0111, %bb.d ], [ %.0111, %bb.m ], [ %.0111, %bb.e ], [ %.0111, %bb.f ], [ 0, %bb.i ], [ %.0111, %bb.o ], [ %.0111, %bb.l ], [ %.0111, %bb.g ], [ %.0111, %bb.b ]
  %.2110 = phi ptr [ %.0108, %bb.j ], [ %i.h, %bb.d ], [ %.0108, %bb.m ], [ %.0108, %bb.e ], [ %.0108, %bb.f ], [ %.0108, %bb.i ], [ %.0108, %bb.o ], [ %.0108, %bb.l ], [ %.0108, %bb.g ], [ %.0108, %bb.b ]
  %.2107 = phi ptr [ %.0105, %bb.j ], [ %.0105, %bb.d ], [ %.0105, %bb.m ], [ %i.i, %bb.e ], [ %.0105, %bb.f ], [ %.0105, %bb.i ], [ %.0105, %bb.o ], [ %.0105, %bb.l ], [ %.0105, %bb.g ], [ %.0105, %bb.b ]
  %.2104 = phi i32 [ %.0102, %bb.j ], [ %.0102, %bb.d ], [ %.0102, %bb.m ], [ %.0102, %bb.e ], [ 1, %bb.f ], [ %.0102, %bb.i ], [ %.0102, %bb.o ], [ %.0102, %bb.l ], [ 3, %bb.g ], [ %.0102, %bb.b ]
  %.299 = phi i1 [ %.097, %bb.j ], [ %.097, %bb.d ], [ %.097, %bb.m ], [ %.097, %bb.e ], [ %.097, %bb.f ], [ %.097, %bb.i ], [ %.097, %bb.o ], [ true, %bb.l ], [ %.097, %bb.g ], [ %.097, %bb.b ]
  %.296 = phi i1 [ %.094, %bb.j ], [ %.094, %bb.d ], [ %.094, %bb.m ], [ %.094, %bb.e ], [ %.094, %bb.f ], [ %.094, %bb.i ], [ true, %bb.o ], [ %.094, %bb.l ], [ %.094, %bb.g ], [ %.094, %bb.b ]
  %.2 = phi i1 [ %.093, %bb.j ], [ %.093, %bb.d ], [ %.093, %bb.m ], [ %.093, %bb.e ], [ %.093, %bb.f ], [ %.093, %bb.i ], [ %.093, %bb.o ], [ %.093, %bb.l ], [ %.093, %bb.g ], [ true, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  br label %bb.b

bb.p:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  %i.v = load i32, ptr @optind, align 4           ; 3 uses
  %i.w = add i32 %1, -1
  %.not121 = icmp eq i32 %i.v, %i.w
  br i1 %.not121, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.x = load ptr, ptr %2, align 8
  call void (ptr, ptr, ...) @error_exit(ptr noundef %i.x, ptr noundef nonnull @.str.59) #23
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.y = add i32 %i.v, 1
  store i32 %i.y, ptr @optind, align 4
  %i.z = sext i32 %i.v to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %2, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.ac = call i32 @bdrv_parse_cache_mode(ptr noundef %.0105, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #22
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.144, ptr noundef %.0105) #22
  br label %bb.av

bb.t:                                             ; preds = %bb.r
  %i.ae = load i32, ptr %i.c, align 4
  %i.af = load i8, ptr %i.d, align 1, !range !12, !noundef !13
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = call fastcc ptr @img_open(i1 noundef zeroext %.094, ptr noundef %i.ab, ptr noundef %.0108, i32 noundef %i.ae, i1 noundef zeroext %i.ag, i1 noundef zeroext %.093) ; 3 uses
  %.not122 = icmp eq ptr %i.ah, null
  br i1 %.not122, label %bb.av, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ai = call ptr @blk_bs(ptr noundef nonnull %i.ah) #22 ; 2 uses
  %i.aj = call noalias dereferenceable_or_null(168) ptr @g_malloc0(i64 noundef 168) #28 ; 8 uses
  %i.ak = call fastcc i32 @collect_image_check(ptr noundef %i.ai, ptr noundef %i.aj, ptr noundef %i.ab, i32 noundef %.0102) ; 2 uses
  %i.al = icmp eq i32 %i.ak, -95
  br i1 %i.al, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.145) #22
  br label %bb.au

bb.w:                                             ; preds = %bb.u
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  %i.an = load i64, ptr %i.am, align 8            ; 3 uses
  %.not123 = icmp eq i64 %i.an, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  %i.ap = load i64, ptr %i.ao, align 8            ; 3 uses
  %.not124 = icmp eq i64 %i.ap, 0
  %or.cond = select i1 %.not123, i1 %.not124, i1 false
  br i1 %or.cond, label %bb.z, label %._crit_edge

._crit_edge:                                      ; preds = %bb.w
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.ar = load i8, ptr %i.aq, align 8, !range !12, !noundef !13
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.at = load i8, ptr %i.as, align 8, !range !12, !noundef !13
  %i.au = icmp eq i32 %.0111, 1
  br i1 %i.au, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge
  call void (i1, ptr, ...) @qprintf(i1 noundef zeroext %.097, ptr noundef nonnull @.str.146, i64 noundef %i.ap, i64 noundef %i.an)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge
  call void @qapi_free_ImageCheck(ptr noundef nonnull %i.aj) #22
  %i.av = call noalias dereferenceable_or_null(168) ptr @g_malloc0(i64 noundef 168) #28 ; 6 uses
  %i.aw = call fastcc i32 @collect_image_check(ptr noundef %i.ai, ptr noundef %i.av, ptr noundef %i.ab, i32 noundef 0)
  %sext = shl i64 %i.ap, 32
  %i.ax = ashr exact i64 %sext, 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  store i64 %i.ax, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 88
  store i8 %i.ar, ptr %i.az, align 8
  %sext125 = shl i64 %i.an, 32
  %i.ba = ashr exact i64 %sext125, 32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 80
  store i64 %i.ba, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  store i8 %i.at, ptr %i.bc, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.y
  %.0114 = phi i32 [ %i.aw, %bb.y ], [ %i.ak, %bb.w ] ; 2 uses
  %.0100 = phi ptr [ %i.av, %bb.y ], [ %i.aj, %bb.w ] ; 18 uses
  %.not126 = icmp eq i32 %.0114, 0
  br i1 %.not126, label %bb.aa, label %.critedge130

bb.aa:                                            ; preds = %bb.z
  %i.bd = icmp eq i32 %.0111, 1
  br i1 %i.bd, label %bb.ab, label %bb.al

bb.ab:                                            ; preds = %bb.aa
  %i.be = getelementptr inbounds nuw i8, ptr %.0100, i64 48
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %.not.i132 = icmp eq i64 %i.bf, 0
  br i1 %.not.i132, label %bb.ac, label %.thread.i

bb.ac:                                            ; preds = %bb.ab
  %i.bg = getelementptr inbounds nuw i8, ptr %.0100, i64 64
  %i.bh = load i64, ptr %i.bg, align 8            ; 2 uses
  %.not31.i = icmp eq i64 %i.bh, 0
  br i1 %.not31.i, label %bb.ad, label %.thread.thread46.i

bb.ad:                                            ; preds = %bb.ac
  %i.bi = getelementptr inbounds nuw i8, ptr %.0100, i64 16
  %i.bj = load i64, ptr %i.bi, align 8
  %.not32.i = icmp eq i64 %i.bj, 0
  br i1 %.not32.i, label %bb.ae, label %.thread.thread.i

bb.ae:                                            ; preds = %bb.ad
  call void (i1, ptr, ...) @qprintf(i1 noundef zeroext %.097, ptr noundef nonnull @.str.152)
  br label %bb.ag

.thread.i:                                        ; preds = %bb.ab
  call void (i1, ptr, ...) @qprintf(i1 noundef zeroext %.097, ptr noundef nonnull @.str.153, i64 noundef %i.bf)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0100, i64 64
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8 ; 2 uses
  %.not34.i = icmp eq i64 %.pre.i, 0
  br i1 %.not34.i, label %.thread.thread.i, label %.thread.thread46.i

.thread.thread46.i:                               ; preds = %.thread.i, %bb.ac
  %i.bk = phi i64 [ %.pre.i, %.thread.i ], [ %i.bh, %bb.ac ]
  call void (i1, ptr, ...) @qprintf(i1 noundef zeroext %.097, ptr noundef nonnull @.str.154, i64 noundef %i.bk)
  br label %.thread.thread.i

.thread.thread.i:                                 ; preds = %.thread.thread46.i, %.thread.i, %bb.ad
  %i.bl = getelementptr inbounds nuw i8, ptr %.0100, i64 16
  %i.bm = load i64, ptr %i.bl, align 8            ; 2 uses
  %.not35.i = icmp eq i64 %i.bm, 0
  br i1 %.not35.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.thread.thread.i
  call void (i1, ptr, ...) @qprintf(i1 noundef zeroext %.097, ptr noundef nonnull @.str.155, i64 noundef %i.bm)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.thread.thread.i, %bb.ae
  %i.bn = getelementptr inbounds nuw i8, ptr %.0100, i64 112
  %i.bo = load i64, ptr %i.bn, align 8            ; 3 uses
  %.not36.i = icmp eq i64 %i.bo, 0
  br i1 %.not36.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bp = getelementptr inbounds nuw i8, ptr %.0100, i64 128
  %i.bq = load i64, ptr %i.bp, align 8            ; 3 uses
  %.not37.i = icmp eq i64 %i.bq, 0
  br i1 %.not37.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.br = sitofp i64 %i.bo to double
  %i.bs = getelementptr inbounds nuw i8, ptr %.0100, i64 144
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = sitofp i64 %i.bt to double
  %i.bv = sitofp i64 %i.bq to double              ; 3 uses
  %i.bw = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %i.bu, i64 1
  %i.by = fmul nnan <2 x double> %i.bx, splat (double 1.000000e+02)
  %i.bz = insertelement <2 x double> poison, double %i.br, i64 0
  %i.ca = insertelement <2 x double> %i.bz, double %i.bv, i64 1
  %i.cb = fdiv <2 x double> %i.by, %i.ca          ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0100, i64 160
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = sitofp i64 %i.cd to double
  %i.cf = fmul nnan double %i.ce, 1.000000e+02
  %i.cg = fdiv double %i.cf, %i.bv
  %i.ch = extractelement <2 x double> %i.cb, i64 0
  %i.ci = extractelement <2 x double> %i.cb, i64 1
  call void (i1, ptr, ...) @qprintf(i1 noundef zeroext %.097, ptr noundef nonnull @.str.156, i64 noundef %i.bq, i64 noundef %i.bo, double noundef %i.ch, double noundef %i.ci, double noundef %i.cg)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.cj = getelementptr inbounds nuw i8, ptr %.0100, i64 32
  %i.ck = load i64, ptr %i.cj, align 8            ; 2 uses
  %.not38.i = icmp eq i64 %i.ck, 0
  br i1 %.not38.i, label %dump_human_image_check.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void (i1, ptr, ...) @qprintf(i1 noundef zeroext %.097, ptr noundef nonnull @.str.157, i64 noundef %i.ck)
  br label %dump_human_image_check.exit

bb.al:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.0100, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store ptr null, ptr %i.b, align 8, !annotation !11
  %i.cl = call ptr @qobject_output_visitor_new(ptr noundef nonnull %i.b) #22 ; 3 uses
  %i.cm = call zeroext i1 @visit_type_ImageCheck(ptr noundef %i.cl, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull @error_abort) #22 ; 0 uses
  call void @visit_complete(ptr noundef %i.cl, ptr noundef nonnull %i.b) #22
  %i.cn = load ptr, ptr %i.b, align 8
  %i.co = call ptr @qobject_to_json_pretty(ptr noundef %i.cn, i1 noundef zeroext true) #22 ; 3 uses
  %.not.i133 = icmp eq ptr %i.co, null
  br i1 %.not.i133, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @__assert_fail(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.63, i32 noundef 561, ptr noundef nonnull @__PRETTY_FUNCTION__.dump_json_image_check) #26
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.cp = load ptr, ptr %i.co, align 8
  call void (i1, ptr, ...) @qprintf(i1 noundef zeroext %.097, ptr noundef nonnull @.str.159, ptr noundef %i.cp)
  %i.cq = load ptr, ptr %i.b, align 8             ; 3 uses
  %.not12.i = icmp eq ptr %i.cq, null
  br i1 %.not12.i, label %dump_json_image_check.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8
  %.not6.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not6.i.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @__assert_fail(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__.qobject_unref_impl) #26
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.ct = atomicrmw sub ptr %i.cr, i64 1 seq_cst, align 8
  %i.cu = icmp eq i64 %i.ct, 1
  br i1 %i.cu, label %bb.ar, label %dump_json_image_check.exit

bb.ar:                                            ; preds = %bb.aq
  call void @qobject_destroy(ptr noundef nonnull %i.cq) #22
  br label %dump_json_image_check.exit

dump_json_image_check.exit:                       ; preds = %bb.an, %bb.aq, %bb.ar
  call void @visit_free(ptr noundef %i.cl) #22
  %i.cv = call ptr @g_string_free(ptr noundef nonnull %i.co, i32 noundef 1) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %dump_human_image_check.exit

dump_human_image_check.exit:                      ; preds = %dump_json_image_check.exit, %bb.aj, %bb.ak
  %i.cw = getelementptr inbounds nuw i8, ptr %.0100, i64 16
  %i.cx = load i64, ptr %i.cw, align 8
  %.not127 = icmp eq i64 %i.cx, 0
  br i1 %.not127, label %bb.as, label %.critedge

.critedge130:                                     ; preds = %bb.z
  %i.cy = sub i32 0, %.0114
  %i.cz = call ptr @strerror(i32 noundef %i.cy) #22
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.147, ptr noundef %i.cz) #22
  br label %bb.au

.critedge:                                        ; preds = %dump_human_image_check.exit
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.148) #22
  br label %bb.au

bb.as:                                            ; preds = %dump_human_image_check.exit
  %i.da = getelementptr inbounds nuw i8, ptr %.0100, i64 48
  %i.db = load i64, ptr %i.da, align 8
  %.not128 = icmp eq i64 %i.db, 0
  br i1 %.not128, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.dc = getelementptr inbounds nuw i8, ptr %.0100, i64 64
  %i.dd = load i64, ptr %i.dc, align 8
  %.not129 = icmp eq i64 %i.dd, 0
  %. = select i1 %.not129, i32 0, i32 3
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %.critedge130, %.critedge, %bb.v
  %.1115 = phi i32 [ 63, %bb.v ], [ 2, %bb.as ], [ 1, %.critedge130 ], [ %., %bb.at ], [ 1, %.critedge ]
  %.1101 = phi ptr [ %i.aj, %bb.v ], [ %.0100, %bb.as ], [ %.0100, %.critedge130 ], [ %.0100, %bb.at ], [ %.0100, %.critedge ]
  call void @qapi_free_ImageCheck(ptr noundef %.1101) #22
  call void @blk_unref(ptr noundef nonnull %i.ah) #22
  br label %bb.av

bb.av:                                            ; preds = %bb.t, %bb.au, %bb.s
  %.0 = phi i32 [ 1, %bb.s ], [ %.1115, %bb.au ], [ 1, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @img_commit(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %i.f = alloca ptr, align 8                      ; 17 uses
  %3 = alloca %struct.CommonBlockJobCBInfo, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 0, ptr %i.d, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i8 0, ptr %i.e, align 1, !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store ptr null, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !11
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.069 = phi ptr [ null, %bb.a ], [ %.069.be, %.backedge ] ; 9 uses
  %.067 = phi ptr [ @.str.46, %bb.a ], [ %.067.be, %.backedge ] ; 10 uses
  %.065 = phi ptr [ null, %bb.a ], [ %.065.be, %.backedge ] ; 11 uses
  %.062 = phi i8 [ 0, %bb.a ], [ %.062.be, %.backedge ] ; 9 uses
  %.060 = phi i1 [ false, %bb.a ], [ %.060.be, %.backedge ] ; 10 uses
  %.058 = phi i1 [ false, %bb.a ], [ %.058.be, %.backedge ] ; 10 uses
  %.056 = phi i1 [ false, %bb.a ], [ %.056.be, %.backedge ] ; 9 uses
  %.055 = phi i64 [ 0, %bb.a ], [ %.055.be, %.backedge ] ; 9 uses
  %i.g = call i32 @getopt_long(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.163, ptr noundef nonnull @img_commit.long_options, ptr noundef null) #22
  switch i32 %i.g, label %bb.o [
    i32 -1, label %bb.p
    i32 104, label %bb.c
    i32 102, label %bb.d
    i32 259, label %.backedge
    i32 116, label %bb.e
    i32 100, label %bb.f
    i32 98, label %bb.g
    i32 114, label %bb.h
    i32 112, label %bb.l
    i32 113, label %bb.m
    i32 258, label %bb.n
  ]

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %0, align 8
  %i.h = getelementptr i8, ptr %0, i64 16
  %.val90 = load ptr, ptr %i.h, align 8
  call fastcc void @cmd_help(ptr %.val, ptr %.val90, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.165) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @optarg, align 8
  br label %.backedge

bb.e:                                             ; preds = %bb.b
  %i.j = load ptr, ptr @optarg, align 8
  br label %.backedge

bb.f:                                             ; preds = %bb.b
  br label %.backedge

bb.g:                                             ; preds = %bb.b
  %i.k = load ptr, ptr @optarg, align 8
  br label %.backedge

bb.h:                                             ; preds = %bb.b
  %i.l = load ptr, ptr @optarg, align 8           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 0, ptr %i.c, align 8, !annotation !11
  %i.m = call i32 @qemu_strtosz(ptr noundef %i.l, ptr noundef null, ptr noundef nonnull %i.c) #22 ; 3 uses
  %i.n = icmp slt i32 %i.m, 0
  %i.o = icmp ne i32 %i.m, -34
  %or.cond.i.i = and i1 %i.n, %i.o
  br i1 %or.cond.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.166, ptr noundef %i.l) #22
  br label %cvtnum.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.p = icmp eq i32 %i.m, -34
  %i.q = load i64, ptr %i.c, align 8              ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  %or.cond.i = select i1 %i.p, i1 true, i1 %i.r
  br i1 %or.cond.i, label %bb.k, label %cvtnum.exit

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.166, i64 noundef 0, i64 noundef 9223372036854775807) #22
  br label %cvtnum.exit.thread

cvtnum.exit.thread:                               ; preds = %bb.i, %bb.k
end_hunk_0
