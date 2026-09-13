Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/qcow2?download=true
inline.NumInlined: 276
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@qcow2_amend_options:bb.a
bb.k:                                             ; preds = %bb.i
  %i.au = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(12) @.str.48) #22
  %.not247 = icmp eq i32 %i.au, 0
  br i1 %.not247, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.av = tail call ptr @qemu_opt_get(ptr noundef %1, ptr noundef nonnull @.str.48) #20
  br label %.outer

bb.m:                                             ; preds = %bb.k
  %i.aw = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #22
  %i.ax = icmp ugt i64 %i.aw, 7
  br i1 %i.ax, label %bb.n, label %.critedge257

bb.n:                                             ; preds = %bb.m
  %i.ay = load i64, ptr %i.y, align 1
  %i.az = icmp ne i64 %i.ay, 3347424089955593829
  %i.ba = zext i1 %i.az to i32
  %.not290 = icmp eq i32 %i.ba, 0
  br i1 %.not290, label %bb.o, label %.critedge257

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.r, align 8
  %.not254 = icmp eq ptr %i.bb, null
  br i1 %.not254, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef 5887, ptr noundef nonnull @__func__.qcow2_amend_options, ptr noundef nonnull @.str.254) #20
  br label %qcow2_downgrade.exit

bb.q:                                             ; preds = %bb.o
  %i.bc = load i32, ptr %i.s, align 4
  %.not255 = icmp eq i32 %i.bc, 2
  br i1 %.not255, label %.outer, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef 5892, ptr noundef nonnull @__func__.qcow2_amend_options, ptr noundef nonnull @.str.255) #20
  br label %qcow2_downgrade.exit

.critedge257:                                     ; preds = %bb.m, %bb.n
  %i.bd = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(15) @.str.54) #22
  %.not249 = icmp eq i32 %i.bd, 0
  br i1 %.not249, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.critedge257
  %i.be = trunc nuw i8 %.0195.ph387 to i1
  %i.bf = tail call zeroext i1 @qemu_opt_get_bool(ptr noundef %1, ptr noundef nonnull @.str.54, i1 noundef zeroext %i.be) #20
  %i.bg = zext i1 %i.bf to i8
  br label %.outer

bb.t:                                             ; preds = %.critedge257
  %i.bh = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(14) @.str.56) #22
  %.not250 = icmp eq i32 %i.bh, 0
  br i1 %.not250, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bi = sext i32 %.0199.ph385 to i64
  %i.bj = tail call i64 @qemu_opt_get_number(ptr noundef %1, ptr noundef nonnull @.str.56, i64 noundef %i.bi) #20 ; 2 uses
  %i.bk = trunc i64 %i.bj to i32                  ; 2 uses
  %i.bl = add i32 %i.bk, -65
  %or.cond = icmp ult i32 %i.bl, -64
  br i1 %or.cond, label %is_power_of_2.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = and i64 %i.bj, 4294967295
  %i.bn = tail call range(i64 0, 33) i64 @llvm.ctpop.i64(i64 %i.bm)
  %or.cond289 = icmp eq i64 %i.bn, 1
  br i1 %or.cond289, label %.outer, label %is_power_of_2.exit.thread

is_power_of_2.exit.thread:                        ; preds = %bb.v, %bb.u
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef 5907, ptr noundef nonnull @__func__.qcow2_amend_options, ptr noundef nonnull @.str.214) #20
  br label %qcow2_downgrade.exit

bb.w:                                             ; preds = %bb.t
  %i.bo = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(10) @.str.50) #22
  %.not251 = icmp eq i32 %i.bo, 0
  br i1 %.not251, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.bp = tail call ptr @qemu_opt_get(ptr noundef %1, ptr noundef nonnull @.str.50) #20 ; 2 uses
  %.not252 = icmp eq ptr %i.bp, null
  br i1 %.not252, label %.outer, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.val = load ptr, ptr %i.b, align 8
  %.val261 = load ptr, ptr %i.q, align 8
  %i.bq = getelementptr i8, ptr %.val, i64 504
  %.val.val = load ptr, ptr %i.bq, align 8
  %.not292 = icmp eq ptr %.val.val, %.val261
  br i1 %.not292, label %bb.z, label %.outer

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef 5914, ptr noundef nonnull @__func__.qcow2_amend_options, ptr noundef nonnull @.str.256) #20
  br label %qcow2_downgrade.exit

bb.aa:                                            ; preds = %bb.w
  %i.br = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(14) @.str.52) #22
  %.not253 = icmp eq i32 %i.br, 0
  br i1 %.not253, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.bs = trunc i8 %.0197.ph386 to i1
  %i.bt = tail call zeroext i1 @qemu_opt_get_bool(ptr noundef %1, ptr noundef nonnull @.str.52, i1 noundef zeroext %i.bs) #20
  br i1 %i.bt, label %bb.ac, label %.outer

bb.ac:                                            ; preds = %bb.ab
  %.val262 = load ptr, ptr %i.b, align 8
  %i.bu = getelementptr i8, ptr %.val262, i64 400
  %.val262.val = load i64, ptr %i.bu, align 8
  %i.bv = and i64 %.val262.val, 2
  %.not291 = icmp eq i64 %i.bv, 0
  br i1 %.not291, label %bb.ad, label %.outer

bb.ad:                                            ; preds = %bb.ac
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef 5922, ptr noundef nonnull @__func__.qcow2_amend_options, ptr noundef nonnull @.str.257) #20
  br label %qcow2_downgrade.exit

bb.ae:                                            ; preds = %bb.aa
  tail call void @abort() #21
  unreachable

.outer:                                           ; preds = %.tail.thread.thread, %.thread, %bb.v, %bb.q, %.tail.thread, %.tail294, %bb.f, %.tail, %bb.h, %bb.l, %bb.s, %bb.y, %bb.x, %bb.ab, %bb.ac, %bb.j, %bb.e
  %.1203 = phi i8 [ %.0202.ph383, %.tail.thread ], [ %.0202.ph383, %bb.ac ], [ %.0202.ph383, %bb.ab ], [ %.0202.ph383, %bb.y ], [ %.0202.ph383, %bb.x ], [ %.0202.ph383, %bb.v ], [ %.0202.ph383, %bb.s ], [ %.0202.ph383, %bb.l ], [ %.0202.ph383, %bb.j ], [ %.0202.ph383, %bb.h ], [ %.0202.ph383, %bb.f ], [ %.0202.ph383, %bb.e ], [ %.0202.ph383, %.tail ], [ %.0202.ph383, %.tail294 ], [ 1, %bb.q ], [ %.0202.ph383, %.thread ], [ %.0202.ph383, %.tail.thread.thread ] ; 2 uses
  %.1200 = phi i32 [ %.0199.ph385, %.tail.thread ], [ %.0199.ph385, %bb.ac ], [ %.0199.ph385, %bb.ab ], [ %.0199.ph385, %bb.y ], [ %.0199.ph385, %bb.x ], [ %i.bk, %bb.v ], [ %.0199.ph385, %bb.s ], [ %.0199.ph385, %bb.l ], [ %.0199.ph385, %bb.j ], [ %.0199.ph385, %bb.h ], [ %.0199.ph385, %bb.f ], [ %.0199.ph385, %bb.e ], [ %.0199.ph385, %.tail ], [ %.0199.ph385, %.tail294 ], [ %.0199.ph385, %bb.q ], [ %.0199.ph385, %.thread ], [ %.0199.ph385, %.tail.thread.thread ] ; 2 uses
  %.1198 = phi i8 [ %.0197.ph386, %.tail.thread ], [ 1, %bb.ac ], [ 0, %bb.ab ], [ %.0197.ph386, %bb.y ], [ %.0197.ph386, %bb.x ], [ %.0197.ph386, %bb.v ], [ %.0197.ph386, %bb.s ], [ %.0197.ph386, %bb.l ], [ %.0197.ph386, %bb.j ], [ %.0197.ph386, %bb.h ], [ %.0197.ph386, %bb.f ], [ %.0197.ph386, %bb.e ], [ %.0197.ph386, %.tail ], [ %.0197.ph386, %.tail294 ], [ %.0197.ph386, %bb.q ], [ %.0197.ph386, %.thread ], [ %.0197.ph386, %.tail.thread.thread ] ; 2 uses
  %.1196 = phi i8 [ %.0195.ph387, %.tail.thread ], [ %.0195.ph387, %bb.ac ], [ %.0195.ph387, %bb.ab ], [ %.0195.ph387, %bb.y ], [ %.0195.ph387, %bb.x ], [ %.0195.ph387, %bb.v ], [ %i.bg, %bb.s ], [ %.0195.ph387, %bb.l ], [ %.0195.ph387, %bb.j ], [ %.0195.ph387, %bb.h ], [ %.0195.ph387, %bb.f ], [ %.0195.ph387, %bb.e ], [ %.0195.ph387, %.tail ], [ %.0195.ph387, %.tail294 ], [ %.0195.ph387, %bb.q ], [ %.0195.ph387, %.thread ], [ %.0195.ph387, %.tail.thread.thread ] ; 2 uses
  %.1194 = phi ptr [ %.0193.ph388, %.tail.thread ], [ %.0193.ph388, %bb.ac ], [ %.0193.ph388, %bb.ab ], [ %i.bp, %bb.y ], [ null, %bb.x ], [ %.0193.ph388, %bb.v ], [ %.0193.ph388, %bb.s ], [ %.0193.ph388, %bb.l ], [ %.0193.ph388, %bb.j ], [ %.0193.ph388, %bb.h ], [ %.0193.ph388, %bb.f ], [ %.0193.ph388, %bb.e ], [ %.0193.ph388, %.tail ], [ %.0193.ph388, %.tail294 ], [ %.0193.ph388, %bb.q ], [ %.0193.ph388, %.thread ], [ %.0193.ph388, %.tail.thread.thread ] ; 2 uses
  %.1192 = phi ptr [ %.0191.ph389, %.tail.thread ], [ %.0191.ph389, %bb.ac ], [ %.0191.ph389, %bb.ab ], [ %.0191.ph389, %bb.y ], [ %.0191.ph389, %bb.x ], [ %.0191.ph389, %bb.v ], [ %.0191.ph389, %bb.s ], [ %i.av, %bb.l ], [ %.0191.ph389, %bb.j ], [ %.0191.ph389, %bb.h ], [ %.0191.ph389, %bb.f ], [ %.0191.ph389, %bb.e ], [ %.0191.ph389, %.tail ], [ %.0191.ph389, %.tail294 ], [ %.0191.ph389, %bb.q ], [ %.0191.ph389, %.thread ], [ %.0191.ph389, %.tail.thread.thread ] ; 2 uses
  %.1190 = phi ptr [ %.0189.ph390, %.tail.thread ], [ %.0189.ph390, %bb.ac ], [ %.0189.ph390, %bb.ab ], [ %.0189.ph390, %bb.y ], [ %.0189.ph390, %bb.x ], [ %.0189.ph390, %bb.v ], [ %.0189.ph390, %bb.s ], [ %.0189.ph390, %bb.l ], [ %i.at, %bb.j ], [ %.0189.ph390, %bb.h ], [ %.0189.ph390, %bb.f ], [ %.0189.ph390, %bb.e ], [ %.0189.ph390, %.tail ], [ %.0189.ph390, %.tail294 ], [ %.0189.ph390, %bb.q ], [ %.0189.ph390, %.thread ], [ %.0189.ph390, %.tail.thread.thread ] ; 2 uses
  %.1188 = phi i64 [ %.0187.ph391, %.tail.thread ], [ %.0187.ph391, %bb.ac ], [ %.0187.ph391, %bb.ab ], [ %.0187.ph391, %bb.y ], [ %.0187.ph391, %bb.x ], [ %.0187.ph391, %bb.v ], [ %.0187.ph391, %bb.s ], [ %.0187.ph391, %bb.l ], [ %.0187.ph391, %bb.j ], [ %i.ar, %bb.h ], [ %.0187.ph391, %bb.f ], [ %.0187.ph391, %bb.e ], [ %.0187.ph391, %.tail ], [ %.0187.ph391, %.tail294 ], [ %.0187.ph391, %bb.q ], [ %.0187.ph391, %.thread ], [ %.0187.ph391, %.tail.thread.thread ] ; 2 uses
  %.1186 = phi i32 [ 3, %.tail.thread ], [ %.0185.ph392, %bb.ac ], [ %.0185.ph392, %bb.ab ], [ %.0185.ph392, %bb.y ], [ %.0185.ph392, %bb.x ], [ %.0185.ph392, %bb.v ], [ %.0185.ph392, %bb.s ], [ %.0185.ph392, %bb.l ], [ %.0185.ph392, %bb.j ], [ %.0185.ph392, %bb.h ], [ 2, %bb.f ], [ %.0185.ph392, %bb.e ], [ 2, %.tail ], [ 3, %.tail294 ], [ %.0185.ph392, %bb.q ], [ 3, %.thread ], [ 3, %.tail.thread.thread ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0201364, i64 32 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %.not363 = icmp eq ptr %i.bx, null
  br i1 %.not363, label %.critedge, label %.lr.ph, !llvm.loop !17

.critedge:                                        ; preds = %.outer, %bb.c, %bb.a
  %.0202.ph.lcssa362 = phi i8 [ %.0202.ph383, %bb.c ], [ 0, %bb.a ], [ %.1203, %.outer ] ; 2 uses
  %.0199.ph.lcssa355 = phi i32 [ %.0199.ph385, %bb.c ], [ %i.l, %bb.a ], [ %.1200, %.outer ] ; 4 uses
  %.0197.ph.lcssa348 = phi i8 [ %.0197.ph386, %bb.c ], [ %i.j, %bb.a ], [ %.1198, %.outer ]
  %.0195.ph.lcssa341 = phi i8 [ %.0195.ph387, %bb.c ], [ %i.g, %bb.a ], [ %.1196, %.outer ] ; 2 uses
  %.0193.ph.lcssa334 = phi ptr [ %.0193.ph388, %bb.c ], [ null, %bb.a ], [ %.1194, %.outer ] ; 3 uses
  %.0191.ph.lcssa327 = phi ptr [ %.0191.ph389, %bb.c ], [ null, %bb.a ], [ %.1192, %.outer ] ; 2 uses
  %.0189.ph.lcssa320 = phi ptr [ %.0189.ph390, %bb.c ], [ null, %bb.a ], [ %.1190, %.outer ] ; 2 uses
  %.0187.ph.lcssa313 = phi i64 [ %.0187.ph391, %bb.c ], [ 0, %bb.a ], [ %.1188, %.outer ] ; 2 uses
  %.0185.ph.lcssa306 = phi i32 [ %.0185.ph392, %bb.c ], [ %i.e, %bb.a ], [ %.1186, %.outer ] ; 9 uses
  %i.by = icmp ne i32 %.0185.ph.lcssa306, %i.e
  %i.bz = zext i1 %i.by to i32
  %i.ca = load i32, ptr %i.k, align 8
  %i.cb = icmp ne i32 %i.ca, %.0199.ph.lcssa355
  %i.cc = zext i1 %i.cb to i32
  %i.cd = trunc nuw i8 %.0202.ph.lcssa362 to i1
  %i.ce = zext nneg i8 %.0202.ph.lcssa362 to i32
  %i.cf = add nuw nsw i32 %i.bz, %i.ce
  %i.cg = add nuw nsw i32 %i.cf, %i.cc            ; 3 uses
  store ptr %2, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store i32 0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 %i.cg, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.ch = icmp sgt i32 %.0185.ph.lcssa306, %i.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, i8 0, i64 32, i1 false)
  br i1 %i.ch, label %bb.af, label %bb.aq

bb.af:                                            ; preds = %.critedge
  store i32 1, ptr %.sroa.3.0..sroa_idx, align 8
  %i.ci = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 324 ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 4            ; 2 uses
  %i.cl = icmp sgt i32 %.0185.ph.lcssa306, %i.ck
  br i1 %i.cl, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @__assert_fail(ptr noundef nonnull @.str.264, ptr noundef nonnull @.str.1, i32 noundef 5724, ptr noundef nonnull @__PRETTY_FUNCTION__.qcow2_upgrade) #21
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.cm = icmp eq i32 %.0185.ph.lcssa306, 3
  br i1 %i.cm, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @__assert_fail(ptr noundef nonnull @.str.265, ptr noundef nonnull @.str.1, i32 noundef 5727, ptr noundef nonnull @__PRETTY_FUNCTION__.qcow2_upgrade) #21
  unreachable

bb.aj:                                            ; preds = %bb.ah
  store i32 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.not293 = icmp eq i32 %i.cg, 0
  br i1 %.not293, label %bb.ak, label %qcow2_amend_helper_cb.exit.i

bb.ak:                                            ; preds = %bb.aj
  tail call void @__assert_fail(ptr noundef nonnull @.str.267, ptr noundef nonnull @.str.1, i32 noundef 5821, ptr noundef nonnull @__PRETTY_FUNCTION__.qcow2_amend_helper_cb) #21
  unreachable

qcow2_amend_helper_cb.exit.i:                     ; preds = %bb.aj
  store i64 2, ptr %.sroa.10.0..sroa_idx, align 8
  %7 = add nsw i32 %i.cg, -1
  %i.cn = zext nneg i32 %7 to i64
  %8 = shl nuw nsw i64 %i.cn, 1
  %9 = add nuw nsw i64 %8, 2                      ; 3 uses
  tail call void %2(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %9, ptr noundef %3) #20, !inline_history !18
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 284
  %i.cp = load i32, ptr %i.co, align 4            ; 2 uses
  %.not.i266 = icmp eq i32 %i.cp, 0
  br i1 %.not.i266, label %qcow2_amend_helper_cb.exit42.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %qcow2_amend_helper_cb.exit.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 288
  %i.cr = load ptr, ptr %i.cq, align 8
  br label %bb.am

bb.al:                                            ; preds = %bb.am
  %i.cs = add nuw i32 %.01.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cs, %i.cp
  br i1 %exitcond.not.i, label %qcow2_amend_helper_cb.exit42.i, label %bb.am, !llvm.loop !19

bb.am:                                            ; preds = %bb.al, %.lr.ph.i
  %.01.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cs, %bb.al ] ; 2 uses
  %i.ct = sext i32 %.01.i to i64
  %i.cu = getelementptr inbounds [88 x i8], ptr %i.cr, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 72
  %i.cw = load i32, ptr %i.cv, align 8
  %i.cx = icmp ult i32 %i.cw, 16
  br i1 %i.cx, label %bb.an, label %bb.al

bb.an:                                            ; preds = %bb.am
  %i.cy = tail call i32 @qcow2_write_snapshots(ptr noundef nonnull %0) #20 ; 3 uses
  %i.cz = icmp slt i32 %i.cy, 0
  br i1 %i.cz, label %bb.ao, label %qcow2_amend_helper_cb.exit42.i

bb.ao:                                            ; preds = %bb.an
  %i.da = sub i32 0, %i.cy
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef 5751, ptr noundef nonnull @__func__.qcow2_upgrade, i32 noundef %i.da, ptr noundef nonnull @.str.266) #20
  br label %qcow2_downgrade.exit

qcow2_amend_helper_cb.exit42.i:                   ; preds = %bb.al, %qcow2_amend_helper_cb.exit.i, %bb.an
  tail call void %2(ptr noundef nonnull %0, i64 noundef 1, i64 noundef %9, ptr noundef %3) #20, !inline_history !18
  store i32 3, ptr %i.cj, align 4
  %i.db = tail call i32 @qcow2_update_header(ptr noundef nonnull %0) ; 3 uses
  %i.dc = icmp slt i32 %i.db, 0
  br i1 %i.dc, label %bb.ap, label %qcow2_upgrade.exit

bb.ap:                                            ; preds = %qcow2_amend_helper_cb.exit42.i
  store i32 %i.ck, ptr %i.cj, align 4
  %i.dd = sub i32 0, %i.db
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef 5761, ptr noundef nonnull @__func__.qcow2_upgrade, i32 noundef %i.dd, ptr noundef nonnull @.str.259) #20
  br label %qcow2_downgrade.exit

qcow2_upgrade.exit:                               ; preds = %qcow2_amend_helper_cb.exit42.i
  store i64 2, ptr %.sroa.10.0..sroa_idx, align 8
  tail call void %2(ptr noundef nonnull %0, i64 noundef 2, i64 noundef %9, ptr noundef %3) #20, !inline_history !18
  br label %bb.aq

bb.aq:                                            ; preds = %qcow2_upgrade.exit, %.critedge
  br i1 %i.cd, label %bb.ar, label %bb.bb

bb.ar:                                            ; preds = %bb.aq
  store i32 2, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8, !annotation !13
  %i.de = tail call ptr @qemu_opts_to_qdict(ptr noundef %1, ptr noundef null) #20 ; 4 uses
  call void @qdict_extract_subqdict(ptr noundef %i.de, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.93) #20
  %.not.i267 = icmp eq ptr %i.de, null
  br i1 %.not.i267, label %qcow2_extract_crypto_opts.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8
  %.not6.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not6.i.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @__assert_fail(ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.143, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__.qobject_unref_impl) #21
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.dh = atomicrmw sub ptr %i.df, i64 1 seq_cst, align 8
  %i.di = icmp eq i64 %i.dh, 1
  br i1 %i.di, label %bb.av, label %qcow2_extract_crypto_opts.exit

bb.av:                                            ; preds = %bb.au
  call void @qobject_destroy(ptr noundef nonnull %i.de) #20
  br label %qcow2_extract_crypto_opts.exit

qcow2_extract_crypto_opts.exit:                   ; preds = %bb.ar, %bb.au, %bb.av
  %i.dj = load ptr, ptr %i.a, align 8
  call void @qdict_put_str(ptr noundef %i.dj, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.114) #20
  %i.dk = load ptr, ptr %i.a, align 8             ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.not227 = icmp eq ptr %i.dk, null
  br i1 %.not227, label %qcow2_downgrade.exit, label %bb.aw

bb.aw:                                            ; preds = %qcow2_extract_crypto_opts.exit
  %i.dl = call ptr @block_crypto_amend_opts_init(ptr noundef nonnull %i.dk, ptr noundef %5) #20 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8
  %.not6.i = icmp eq i64 %i.dn, 0
  br i1 %.not6.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @__assert_fail(ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.143, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__.qobject_unref_impl) #21
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.do = atomicrmw sub ptr %i.dm, i64 1 seq_cst, align 8
  %i.dp = icmp eq i64 %i.do, 1
  br i1 %i.dp, label %bb.az, label %qobject_unref_impl.exit

bb.az:                                            ; preds = %bb.ay
  call void @qobject_destroy(ptr noundef nonnull %i.dk) #20
  br label %qobject_unref_impl.exit

qobject_unref_impl.exit:                          ; preds = %bb.ay, %bb.az
  %.not228 = icmp eq ptr %i.dl, null
  br i1 %.not228, label %qcow2_downgrade.exit, label %bb.ba

bb.ba:                                            ; preds = %qobject_unref_impl.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = call i32 @qcrypto_block_amend_options(ptr noundef %i.dr, ptr noundef nonnull @qcow2_crypto_hdr_read_func, ptr noundef nonnull @qcow2_crypto_hdr_write_func, ptr noundef %0, ptr noundef nonnull %i.dl, i1 noundef zeroext %4, ptr noundef %5) #20 ; 2 uses
  call void @qapi_free_QCryptoBlockAmendOptions(ptr noundef nonnull %i.dl) #20
  %i.dt = icmp sgt i32 %i.ds, -1
  br i1 %i.dt, label %bb.bb, label %qcow2_downgrade.exit

bb.bb:                                            ; preds = %bb.ba, %bb.aq
  %i.du = load i32, ptr %i.k, align 8
  %.not229 = icmp eq i32 %i.du, %.0199.ph.lcssa355
  br i1 %.not229, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dv = icmp slt i32 %.0185.ph.lcssa306, 3
  %i.dw = icmp ne i32 %.0199.ph.lcssa355, 16
  %or.cond5 = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %or.cond5, label %.thread278, label %bb.bd

.thread278:                                       ; preds = %bb.bc
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef 5985, ptr noundef nonnull @__func__.qcow2_amend_options, ptr noundef nonnull @.str.258) #20
  br label %qcow2_downgrade.exit

bb.bd:                                            ; preds = %bb.bc
  %i.dx = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0199.ph.lcssa355, i1 false)
  store i32 3, ptr %.sroa.3.0..sroa_idx, align 8
  %i.dy = call i32 @qcow2_change_refcount_order(ptr noundef %0, i32 noundef %i.dx, ptr noundef nonnull @qcow2_amend_helper_cb, ptr noundef nonnull %6, ptr noundef %5) #20 ; 2 uses
  %i.dz = icmp sgt i32 %i.dy, -1
  br i1 %i.dz, label %bb.be, label %qcow2_downgrade.exit

bb.be:                                            ; preds = %bb.bd, %bb.bb
  %i.ea = trunc i8 %.0197.ph.lcssa348 to i1
  %i.eb = load i64, ptr %i.h, align 8
  %i.ec = and i64 %i.eb, -3
  %masksel = select i1 %i.ea, i64 2, i64 0
  %storemerge = or disjoint i64 %i.ec, %masksel
  store i64 %storemerge, ptr %i.h, align 8
  %.not230 = icmp eq ptr %.0193.ph.lcssa334, null
  br i1 %.not230, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ed = getelementptr inbounds nuw i8, ptr %i.c, i64 472 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8
  call void @g_free(ptr noundef %i.ee) #20
  %i.ef = load i8, ptr %.0193.ph.lcssa334, align 1
  %.not231 = icmp eq i8 %i.ef, 0
  br i1 %.not231, label %g_strdup_inline.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.eg = call noalias ptr @g_strdup(ptr noundef nonnull %.0193.ph.lcssa334) #20
  br label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %bb.bg, %bb.bf
  %i.eh = phi ptr [ null, %bb.bf ], [ %i.eg, %bb.bg ]
  store ptr %i.eh, ptr %i.ed, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %g_strdup_inline.exit, %bb.be
  %i.ei = call i32 @qcow2_update_header(ptr noundef %0) ; 3 uses
  %i.ej = icmp slt i32 %i.ei, 0
  br i1 %i.ej, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ek = sub i32 0, %i.ei
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef 6012, ptr noundef nonnull @__func__.qcow2_amend_options, i32 noundef %i.ek, ptr noundef nonnull @.str.259) #20
  br label %qcow2_downgrade.exit

bb.bj:                                            ; preds = %bb.bh
  %i.el = icmp ne ptr %.0189.ph.lcssa320, null
  %i.em = icmp ne ptr %.0191.ph.lcssa327, null
  %or.cond7 = select i1 %i.el, i1 true, i1 %i.em
  br i1 %or.cond7, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = call i32 @g_strcmp0(ptr noundef %.0189.ph.lcssa320, ptr noundef %i.eo) #20
  %.not232 = icmp eq i32 %i.ep, 0
  br i1 %.not232, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = call i32 @g_strcmp0(ptr noundef %.0191.ph.lcssa327, ptr noundef %i.er) #20
  %.not233 = icmp eq i32 %i.es, 0
  br i1 %.not233, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef 6019, ptr noundef nonnull @__func__.qcow2_amend_options, ptr noundef nonnull @.str.260) #20
  call void (ptr, ptr, ...) @error_append_hint(ptr noundef %5, ptr noundef nonnull @.str.261) #20
  br label %qcow2_downgrade.exit

bb.bn:                                            ; preds = %bb.bl, %bb.bj
  %i.et = load i8, ptr %i.f, align 8, !range !11, !noundef !12
  %.not235 = icmp eq i8 %i.et, %.0195.ph.lcssa341
  br i1 %.not235, label %bb.bw, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.eu = trunc nuw i8 %.0195.ph.lcssa341 to i1
  br i1 %i.eu, label %bb.bp, label %bb.bt

bb.bp:                                            ; preds = %bb.bo
  %i.ev = icmp slt i32 %.0185.ph.lcssa306, 3
  br i1 %i.ev, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef 6031, ptr noundef nonnull @__func__.qcow2_amend_options, ptr noundef nonnull @.str.262) #20
  br label %qcow2_downgrade.exit

bb.br:                                            ; preds = %bb.bp
  %i.ew = getelementptr inbounds nuw i8, ptr %i.c, i64 392 ; 4 uses
  %i.ex = load i64, ptr %i.ew, align 8
  %i.ey = or i64 %i.ex, 1
  store i64 %i.ey, ptr %i.ew, align 8
  %i.ez = call i32 @qcow2_update_header(ptr noundef %0) ; 3 uses
  %i.fa = icmp slt i32 %i.ez, 0
  br i1 %i.fa, label %bb.bs, label %.sink.split

bb.bs:                                            ; preds = %bb.br
  %i.fb = load i64, ptr %i.ew, align 8
  %i.fc = and i64 %i.fb, -2
  store i64 %i.fc, ptr %i.ew, align 8
  %i.fd = sub i32 0, %i.ez
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef 6038, ptr noundef nonnull @__func__.qcow2_amend_options, i32 noundef %i.fd, ptr noundef nonnull @.str.259) #20
  br label %qcow2_downgrade.exit

bb.bt:                                            ; preds = %bb.bo
  %i.fe = load ptr, ptr %i.b, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 384 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8            ; 2 uses
  %i.fh = and i64 %i.fg, 1
  %.not.i270 = icmp eq i64 %i.fh, 0
  br i1 %.not.i270, label %qcow2_mark_clean.exit.thread283, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
end_hunk_0
