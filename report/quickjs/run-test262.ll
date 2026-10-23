Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/run-test262?download=true
inline.NumInlined: 247
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@eval_buf:bb.a
  %.not40.i307 = icmp eq i64 %.lcssa.i306, 11
  br i1 %.not40.i307, label %longest_match.exit312.loopexit, label %._crit_edge.i308

._crit_edge.i308:                                 ; preds = %bb.be, %.lr.ph51.split.split.i290._crit_edge, %.critedge.i304
  %.03048.i293385 = phi i32 [ %.03048.i293, %bb.be ], [ %.03048.i293384, %.critedge.i304 ], [ %.03048.i293384, %.lr.ph51.split.split.i290._crit_edge ] ; 2 uses
  %i.jo = phi i32 [ %i.jn, %bb.be ], [ %i.is, %.critedge.i304 ], [ %i.is, %.lr.ph51.split.split.i290._crit_edge ] ; 2 uses
  %i.jp = phi i32 [ 0, %bb.be ], [ 0, %.critedge.i304 ], [ %i.ix, %.lr.ph51.split.split.i290._crit_edge ]
  %.1.i294 = phi i32 [ %.029.lcssa.i305, %bb.be ], [ %.02849.i292, %.critedge.i304 ], [ %.02849.i292, %.lr.ph51.split.split.i290._crit_edge ]
  %spec.select.i295 = add nsw i32 %.03048.i293, %i.jp
  %i.jq = getelementptr inbounds nuw i8, ptr %.050.i291, i64 1
  %.not36.i296 = icmp eq i8 %i.iv, 0
  br i1 %.not36.i296, label %longest_match.exit312.loopexit, label %.lr.ph51.split.split.i290, !llvm.loop !9

bb.bf:                                            ; preds = %skip_prefix.exit
  %i.jr = call i32 @longest_match(ptr noundef nonnull %1, ptr noundef nonnull %.09.i, i32 noundef %i.am, ptr noundef nonnull %i.b, i32 noundef %.023.ph.lcssa.i, ptr noundef nonnull %i.a) ; 0 uses
  %.pre415 = load i32, ptr %i.a, align 4, !tbaa !41
  br label %longest_match.exit312

longest_match.exit312.loopexit:                   ; preds = %bb.be, %._crit_edge.i308, %.thread, %.critedge.i304.thread
  %.03048.i293386 = phi i32 [ %.03048.i293, %.thread ], [ %.03048.i293384, %.critedge.i304.thread ], [ %.03048.i293385, %._crit_edge.i308 ], [ %.03048.i293, %bb.be ] ; 2 uses
  %i.js = phi i32 [ %i.jk, %.thread ], [ %i.is, %.critedge.i304.thread ], [ %i.jo, %._crit_edge.i308 ], [ %i.jn, %bb.be ]
  store i32 %i.js, ptr %i.b, align 4
  store i32 %.03048.i293386, ptr %i.a, align 4
  br label %longest_match.exit312

longest_match.exit312:                            ; preds = %longest_match.exit312.loopexit, %bb.bc, %bb.bf, %bb.bb
  %i.jt = phi i32 [ %.03048.i293386, %longest_match.exit312.loopexit ], [ %.promoted388, %bb.bc ], [ %.pre415, %bb.bf ], [ %.promoted388, %bb.bb ] ; 2 uses
  %i.ju = load ptr, ptr @error_out, align 8, !tbaa !26
  %i.jv = load ptr, ptr @error_file, align 8, !tbaa !29
  %.not258 = icmp eq ptr %i.jv, null
  %i.jw = select i1 %.not258, ptr @.str.71, ptr @.str.39
  %i.jx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ju, ptr noundef nonnull @.str.157, ptr noundef %3, i32 noundef %i.jt, ptr noundef nonnull %i.dw, ptr noundef nonnull %i.jw, ptr noundef nonnull %i.ed) #40 ; 0 uses
  br i1 %.not255, label %.sink.split, label %bb.bg

bb.bg:                                            ; preds = %longest_match.exit312
  %i.jy = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.dv, ptr noundef nonnull readonly dereferenceable(1) %i.ed) #45
  %.not.i313 = icmp eq i32 %i.jy, 0
  %i.jz = load i32, ptr %i.d, align 4             ; 2 uses
  %.not260 = icmp eq i32 %i.jt, %i.jz
  %or.cond358 = select i1 %.not.i313, i1 %.not260, i1 false
  br i1 %or.cond358, label %.sink.split, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ka = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.158, ptr noundef %3, i32 noundef %i.jz, ptr noundef nonnull %i.dw, ptr noundef nonnull %i.dv) ; 0 uses
  br label %.sink.split

.thread338:                                       ; preds = %.thread324, %bb.ay
  %.sroa.6.0331345 = phi i64 [ %i.ec, %bb.ay ], [ 3, %.thread324 ] ; 2 uses
  %.sroa.052.0334344 = phi i64 [ %i.eb, %bb.ay ], [ 0, %.thread324 ] ; 2 uses
  %.not254 = icmp eq ptr %i.dv, null
  br i1 %.not254, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.thread338
  %i.kb = load i32, ptr %i.d, align 4, !tbaa !41
  %i.kc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.159, ptr noundef %3, i32 noundef %i.kb, ptr noundef nonnull %i.dw, ptr noundef nonnull %i.dv) ; 0 uses
  %i.kd = atomicrmw volatile add ptr @fixed_errors, i32 1 seq_cst, align 4 ; 0 uses
  br label %.thread347

.sink.split:                                      ; preds = %longest_match.exit312, %bb.bg, %bb.aw, %bb.ax, %bb.bh
  %changed_errors.sink = phi ptr [ @changed_errors, %bb.bh ], [ @new_errors, %bb.aw ], [ @new_errors, %bb.ax ], [ @new_errors, %bb.bg ], [ @new_errors, %longest_match.exit312 ]
  %.0223336.ph = phi ptr [ %i.ed, %bb.bh ], [ %.0223335, %bb.aw ], [ %.0223335, %bb.ax ], [ %i.ed, %bb.bg ], [ %i.ed, %longest_match.exit312 ]
  %.sroa.052.0332.ph = phi i64 [ %i.eb, %bb.bh ], [ %.sroa.052.0333, %bb.aw ], [ %.sroa.052.0333, %bb.ax ], [ %i.eb, %bb.bg ], [ %i.eb, %longest_match.exit312 ]
  %.sroa.6.0329.ph = phi i64 [ %i.ec, %bb.bh ], [ %.sroa.6.0330, %bb.aw ], [ %.sroa.6.0330, %bb.ax ], [ %i.ec, %bb.bg ], [ %i.ec, %longest_match.exit312 ]
  %i.ke = atomicrmw volatile add ptr %changed_errors.sink, i32 1 seq_cst, align 4 ; 0 uses
  br label %bb.bj

bb.bj:                                            ; preds = %.sink.split, %bb.ba, %.thread338, %bb.ap, %bb.an, %bb.au
  %.0223336 = phi ptr [ null, %.thread338 ], [ %.0223335, %bb.ap ], [ %.0223335, %bb.an ], [ %.0223335, %bb.au ], [ %i.ed, %bb.ba ], [ %.0223336.ph, %.sink.split ] ; 5 uses
  %.sroa.052.0332 = phi i64 [ %.sroa.052.0334344, %.thread338 ], [ %.sroa.052.0333, %bb.ap ], [ %.sroa.052.0333, %bb.an ], [ %.sroa.052.0333, %bb.au ], [ %i.eb, %bb.ba ], [ %.sroa.052.0332.ph, %.sink.split ] ; 5 uses
  %.sroa.6.0329 = phi i64 [ %.sroa.6.0331345, %.thread338 ], [ %.sroa.6.0330, %bb.ap ], [ %.sroa.6.0330, %bb.an ], [ %.sroa.6.0330, %bb.au ], [ %i.ec, %bb.ba ], [ %.sroa.6.0329.ph, %.sink.split ] ; 5 uses
  %i.kf = load i32, ptr @verbose, align 4
  %i.kg = icmp sgt i32 %i.kf, 1
  %i.kh = icmp eq i64 %i.dx, 6
  %or.cond359 = and i1 %i.kh, %i.kg
  br i1 %or.cond359, label %bb.bk, label %.thread347

bb.bk:                                            ; preds = %bb.bj
  %i.ki = load i64, ptr %12, align 8
  %i.kj = call { i64, i64 } @JS_GetPropertyStr(ptr noundef %0, i64 %i.ki, i64 %i.dq, ptr noundef nonnull @.str.128) #40 ; 2 uses
  %i.kk = extractvalue { i64, i64 } %i.kj, 0      ; 2 uses
  %i.kl = extractvalue { i64, i64 } %i.kj, 1      ; 3 uses
  %trunc = trunc i64 %i.kl to i32
  switch i32 %trunc, label %bb.bl [
    i32 6, label %.thread347
    i32 3, label %.thread347
    i32 2, label %.thread347
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.km = call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef null, i64 %i.kk, i64 %i.kl, i1 noundef zeroext false) #40 ; 3 uses
  %.not266 = icmp eq ptr %i.km, null
  br i1 %.not266, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %i.km) ; 0 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  call void @JS_FreeCString(ptr noundef %0, ptr noundef %i.km) #40
  call void @JS_FreeValue(ptr noundef %0, i64 %i.kk, i64 %i.kl) #40
  br label %.thread347

.thread347:                                       ; preds = %bb.bk, %bb.bk, %bb.bk, %bb.bi, %longest_match.exit, %bb.bn, %bb.bj
  %.sroa.6.0329355 = phi i64 [ %.sroa.6.0329, %bb.bj ], [ %.sroa.6.0329, %bb.bk ], [ %.sroa.6.0329, %bb.bk ], [ %.sroa.6.0329, %bb.bk ], [ %.sroa.6.0329, %bb.bn ], [ %.sroa.6.0330, %longest_match.exit ], [ %.sroa.6.0331345, %bb.bi ]
  %.sroa.052.0332354 = phi i64 [ %.sroa.052.0332, %bb.bj ], [ %.sroa.052.0332, %bb.bk ], [ %.sroa.052.0332, %bb.bk ], [ %.sroa.052.0332, %bb.bk ], [ %.sroa.052.0332, %bb.bn ], [ %.sroa.052.0333, %longest_match.exit ], [ %.sroa.052.0334344, %bb.bi ]
  %.0223336353 = phi ptr [ %.0223336, %bb.bj ], [ %.0223336, %bb.bk ], [ %.0223336, %bb.bk ], [ %.0223336, %bb.bk ], [ %.0223336, %bb.bn ], [ %.0223335, %longest_match.exit ], [ null, %bb.bi ]
  call void @JS_FreeValue(ptr noundef %0, i64 %.sroa.052.0332354, i64 %.sroa.6.0329355) #40
  call void @JS_FreeCString(ptr noundef %0, ptr noundef %.0223336353) #40
  call void @free(ptr noundef %i.dv) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  br label %bb.bo

bb.bo:                                            ; preds = %.thread347, %bb.aj
  %i.kn = load i32, ptr @local, align 4, !tbaa !41
  %.not267 = icmp eq i32 %i.kn, 0
  br i1 %.not267, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ko = call i32 @js_std_loop(ptr noundef %0) #40 ; 2 uses
  %.not268 = icmp eq i32 %i.ko, 0
  br i1 %.not268, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @js_std_dump_error(ptr noundef %0) #40
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq, %bb.bo
  %.3 = phi i32 [ %i.ko, %bb.bq ], [ 0, %bb.bp ], [ %.2, %bb.bo ]
  call void @JS_FreeCString(ptr noundef %0, ptr noundef %.1230) #40
  %i.kp = load i64, ptr %12, align 8
  call void @JS_FreeValue(ptr noundef %0, i64 %i.kp, i64 %i.dq) #40
  call void @JS_FreeValue(ptr noundef %0, i64 %.sroa.0131.4, i64 %.sroa.17.4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  ret i32 %.3
}

declare void @JS_FreeContext(ptr noundef) local_unnamed_addr #31

declare void @js_std_free_handlers(ptr noundef) local_unnamed_addr #31

; Function Attrs: nounwind uwtable
define hidden range(i32 -2, 2) i32 @run_test(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #20 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [1024 x i8], align 16             ; 5 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %3 = alloca %struct.namelist_t, align 8         ; 17 uses
  %i.d = alloca i32, align 4                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.e = call ptr @js_load_file(ptr noundef null, ptr noundef nonnull %i.a, ptr noundef %1) #40 ; 6 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.b, label %load_file.exit

bb.b:                                             ; preds = %bb.a
  call void @perror_exit(i32 noundef 1, ptr noundef %1)
  unreachable

load_file.exit:                                   ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !43   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.g = load ptr, ptr @harness_dir, align 8, !tbaa !29 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %load_file.exit
  %i.h = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.49) #45 ; 2 uses
  %.not141 = icmp eq ptr %i.h, null
  br i1 %.not141, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %1 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = trunc i64 %i.k to i32
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 1024, ptr noundef nonnull @.str.50, i32 noundef %i.l, ptr noundef nonnull %1, ptr noundef nonnull @.str.51) #40 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %load_file.exit
  %.0132 = phi ptr [ %i.g, %load_file.exit ], [ %i.b, %bb.d ], [ %i.b, %bb.c ] ; 2 uses
  %i.n = load i32, ptr @local, align 4, !tbaa !41
  %.not142 = icmp eq i32 %i.n, 0
  br i1 %.not142, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.o = call noalias dereferenceable_or_null(7) ptr @strdup(ptr noundef nonnull readonly @.str.48) #40 ; 2 uses
  %.not.i178 = icmp eq ptr %i.o, null
  br i1 %.not.i178, label %compose_path.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %malloc = call dereferenceable_or_null(32) ptr @malloc(i64 32) ; 5 uses
  %.not21.i = icmp eq ptr %malloc, null
  br i1 %.not21.i, label %compose_path.exit.thread.i, label %.thread.i

compose_path.exit.thread.i:                       ; preds = %bb.g, %bb.f
  call void (i32, ptr, ...) @fatal(i32 noundef 1, ptr noundef nonnull @.str.2)
  unreachable

.thread.i:                                        ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 12
  store ptr %malloc, ptr %3, align 8, !tbaa !39
  store i32 4, ptr %i.q, align 4, !tbaa !40
  store ptr %i.o, ptr %malloc, align 8, !tbaa !29
  %i.r = call noalias dereferenceable_or_null(10) ptr @strdup(ptr noundef nonnull readonly @.str.52) #40 ; 2 uses
  %.not.i179 = icmp eq ptr %i.r, null
  br i1 %.not.i179, label %compose_path.exit.thread.i184, label %namelist_add.exit185

compose_path.exit.thread.i184:                    ; preds = %.thread.i
  call void (i32, ptr, ...) @fatal(i32 noundef 1, ptr noundef nonnull @.str.2)
  unreachable

namelist_add.exit185:                             ; preds = %.thread.i
  %i.s = getelementptr inbounds nuw i8, ptr %malloc, i64 8
  store ptr %i.r, ptr %i.s, align 8, !tbaa !29
  store i32 2, ptr %i.p, align 8, !tbaa !38
  br label %bb.h

bb.h:                                             ; preds = %namelist_add.exit185, %bb.e
  %i.t = phi i32 [ 4, %namelist_add.exit185 ], [ 0, %bb.e ] ; 3 uses
  %i.u = phi i32 [ 2, %namelist_add.exit185 ], [ 0, %bb.e ] ; 5 uses
  %.promoted = phi ptr [ %malloc, %namelist_add.exit185 ], [ null, %bb.e ] ; 5 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %bb.h
  %.0.i = phi ptr [ %i.e, %bb.h ], [ %i.aj, %bb.o ] ; 6 uses
  %i.v = load i8, ptr %.0.i, align 1, !tbaa !27   ; 2 uses
  switch i8 %i.v, label %bb.o [
    i8 0, label %.thread
    i8 47, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !27
  %i.y = icmp eq i8 %i.x, 42
  br i1 %i.y, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !27
  %i.ab = icmp eq i8 %i.aa, 45
  br i1 %i.ab, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !27  ; 2 uses
  %.not28.i = icmp eq i8 %i.ad, 47
  br i1 %.not28.i, label %bb.o, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 3 ; 3 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.critedge2.i
  %i.af = phi i8 [ %.pr.i, %.critedge2.i ], [ %i.ad, %.preheader.i.preheader ]
  %.1.i = phi ptr [ %i.ai, %.critedge2.i ], [ %i.ae, %.preheader.i.preheader ] ; 4 uses
  switch i8 %i.af, label %..critedge2_crit_edge.i [
    i8 0, label %bb.n
    i8 42, label %bb.m
  ]

..critedge2_crit_edge.i:                          ; preds = %.preheader.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  %.pr.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !27
  br label %.critedge2.i

bb.m:                                             ; preds = %.preheader.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !27  ; 2 uses
  %.not31.i = icmp eq i8 %i.ah, 47
  br i1 %.not31.i, label %bb.p, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.m, %..critedge2_crit_edge.i
  %.pr.i = phi i8 [ %.pr.pre.i, %..critedge2_crit_edge.i ], [ %i.ah, %bb.m ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  br label %.preheader.i, !llvm.loop !10

bb.n:                                             ; preds = %.preheader.i
  call void (ptr, ...) @warning(ptr noundef nonnull @.str.41)
  br label %.thread

bb.o:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br label %bb.i, !llvm.loop !11

bb.p:                                             ; preds = %bb.m
  %i.ak = ptrtoint ptr %.1.i to i64
  %i.al = ptrtoint ptr %i.ae to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = shl i64 %i.am, 32                       ; 2 uses
  %sext.i = add i64 %i.an, 4294967296
  %i.ao = ashr exact i64 %sext.i, 32
  %i.ap = call noalias ptr @malloc(i64 noundef %i.ao) #44 ; 7 uses
  %i.aq = ashr exact i64 %i.an, 32                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr nonnull align 1 %i.ae, i64 %i.aq, i1 false)
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 %i.aq
  store i8 0, ptr %i.ar, align 1, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  %i.as = call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.ap, ptr noundef nonnull dereferenceable(1) @.str.53) #45 ; 2 uses
  %.not.i186 = icmp eq ptr %i.as, null
  br i1 %.not.i186, label %find_tag.exit.thread, label %find_tag.exit

find_tag.exit:                                    ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 9
  store i32 0, ptr %i.d, align 4, !tbaa !41
  store ptr %i.at, ptr %i.c, align 8, !tbaa !29
  %i.au = call fastcc ptr @get_option(ptr noundef %i.c, ptr noundef %i.d) ; 2 uses
  %.not145273 = icmp eq ptr %i.au, null
  br i1 %.not145273, label %find_tag.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %find_tag.exit
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 12
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.u
  %4 = phi ptr [ %i.au, %.lr.ph ], [ %i.bq, %bb.u ] ; 3 uses
  %.0100286 = phi i8 [ 0, %.lr.ph ], [ %.1101, %bb.u ]
  %i.ax = phi ptr [ %.promoted, %.lr.ph ], [ %i.bp, %bb.u ] ; 3 uses
  %5 = phi i32 [ %i.u, %.lr.ph ], [ %i.bo, %bb.u ] ; 6 uses
  %6 = phi i32 [ %i.t, %.lr.ph ], [ %i.bn, %bb.u ] ; 3 uses
  %i.ay = load ptr, ptr @harness_exclude, align 8, !tbaa !29
  %i.az = call ptr @find_word(ptr noundef %i.ay, ptr noundef nonnull %4)
  %.not165 = icmp eq ptr %i.az, null
  br i1 %.not165, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ba = call noalias ptr @strdup(ptr noundef nonnull readonly %4) #40 ; 2 uses
  %.not.i188 = icmp eq ptr %i.ba, null
  br i1 %.not.i188, label %compose_path.exit.thread.i193, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = icmp eq i32 %5, %6
  br i1 %i.bb, label %bb.t, label %namelist_add.exit194

bb.t:                                             ; preds = %bb.s
  %i.bc = ashr i32 %5, 1
  %i.bd = add i32 %5, 4
  %i.be = add i32 %i.bd, %i.bc                    ; 3 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = shl nsw i64 %i.bf, 3
  %i.bh = call ptr @realloc(ptr noundef %i.ax, i64 noundef %i.bg) #47 ; 3 uses
  %.not21.i190 = icmp eq ptr %i.bh, null
  br i1 %.not21.i190, label %compose_path.exit.thread.i193, label %.thread.i191

.thread.i191:                                     ; preds = %bb.t
  store ptr %i.bh, ptr %3, align 8, !tbaa !39
  store i32 %i.be, ptr %i.aw, align 4, !tbaa !40
  br label %namelist_add.exit194

compose_path.exit.thread.i193:                    ; preds = %bb.t, %bb.r
  call void (i32, ptr, ...) @fatal(i32 noundef 1, ptr noundef nonnull @.str.2)
  unreachable

namelist_add.exit194:                             ; preds = %bb.s, %.thread.i191
  %i.bi = phi i32 [ %i.be, %.thread.i191 ], [ %6, %bb.s ]
  %i.bj = phi ptr [ %i.bh, %.thread.i191 ], [ %i.ax, %bb.s ] ; 2 uses
  %i.bk = sext i32 %5 to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.bk
  store ptr %i.ba, ptr %i.bl, align 8, !tbaa !29
  %i.bm = add nsw i32 %5, 1                       ; 2 uses
  store i32 %i.bm, ptr %i.av, align 8, !tbaa !38
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %namelist_add.exit194
  %i.bn = phi i32 [ %i.bi, %namelist_add.exit194 ], [ %6, %bb.q ] ; 2 uses
  %i.bo = phi i32 [ %i.bm, %namelist_add.exit194 ], [ %5, %bb.q ] ; 2 uses
  %i.bp = phi ptr [ %i.bj, %namelist_add.exit194 ], [ %i.ax, %bb.q ] ; 2 uses
  %.1101 = phi i8 [ %.0100286, %namelist_add.exit194 ], [ 1, %bb.q ] ; 2 uses
  call void @free(ptr noundef nonnull %4) #40
  %i.bq = call fastcc ptr @get_option(ptr noundef %i.c, ptr noundef %i.d) ; 2 uses
  %.not145 = icmp eq ptr %i.bq, null
  br i1 %.not145, label %find_tag.exit.thread, label %bb.q, !llvm.loop !108

find_tag.exit.thread:                             ; preds = %bb.u, %bb.p, %find_tag.exit
  %7 = phi i32 [ %i.t, %bb.p ], [ %i.t, %find_tag.exit ], [ %i.bn, %bb.u ] ; 3 uses
  %8 = phi i32 [ %i.u, %bb.p ], [ %i.u, %find_tag.exit ], [ %i.bo, %bb.u ] ; 4 uses
  %.pre.i227 = phi ptr [ %.promoted, %bb.p ], [ %.promoted, %find_tag.exit ], [ %i.bp, %bb.u ] ; 3 uses
  %.2102 = phi i8 [ 0, %bb.p ], [ 0, %find_tag.exit ], [ %.1101, %bb.u ] ; 3 uses
  %i.br = call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.ap, ptr noundef nonnull dereferenceable(1) @.str.54) #45 ; 2 uses
  %.not.i195 = icmp eq ptr %i.br, null
  br i1 %.not.i195, label %.loopexit266, label %find_tag.exit197

find_tag.exit197:                                 ; preds = %find_tag.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 6
  store i32 0, ptr %i.d, align 4, !tbaa !41
  store ptr %i.bs, ptr %i.c, align 8, !tbaa !29
  %i.bt = call fastcc ptr @get_option(ptr noundef %i.c, ptr noundef %i.d) ; 2 uses
  %.not147276 = icmp eq ptr %i.bt, null
  br i1 %.not147276, label %.loopexit266, label %.lr.ph285

.lr.ph285:                                        ; preds = %find_tag.exit197, %bb.ag
  %i.bu = phi ptr [ %i.cv, %bb.ag ], [ %i.bt, %find_tag.exit197 ] ; 9 uses
  %.091284 = phi i1 [ %.1, %bb.ag ], [ true, %find_tag.exit197 ] ; 7 uses
  %.092283 = phi i1 [ %.193, %bb.ag ], [ false, %find_tag.exit197 ] ; 6 uses
  %.096282 = phi i1 [ %.197, %bb.ag ], [ true, %find_tag.exit197 ] ; 6 uses
  %.3103281 = phi i8 [ %.4, %bb.ag ], [ %.2102, %find_tag.exit197 ] ; 7 uses
  %.0104280 = phi i8 [ %.1105, %bb.ag ], [ 0, %find_tag.exit197 ] ; 6 uses
  %.0109279 = phi i1 [ %.1110, %bb.ag ], [ false, %find_tag.exit197 ] ; 6 uses
  %.0113278 = phi i1 [ %.1114, %bb.ag ], [ false, %find_tag.exit197 ] ; 6 uses
  %.0117277 = phi i1 [ %.1118, %bb.ag ], [ false, %find_tag.exit197 ] ; 6 uses
  %i.bv = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bu, ptr noundef nonnull dereferenceable(9) @.str.55) #45
  %.not.i198.not = icmp eq i32 %i.bv, 0
  br i1 %.not.i198.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph285
  %i.bw = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bu, ptr noundef nonnull dereferenceable(4) @.str.56) #45
  %.not.i199.not = icmp eq i32 %i.bw, 0
  br i1 %.not.i199.not, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %.lr.ph285
  %i.bx = load i32, ptr @test_mode, align 4, !tbaa !41
  %i.by = icmp eq i32 %i.bx, 3
  %i.bz = zext i1 %i.by to i8
  %i.ca = or i8 %.3103281, %i.bz
  br label %bb.ag

bb.x:                                             ; preds = %bb.v
  %i.cb = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bu, ptr noundef nonnull dereferenceable(11) @.str.57) #45
  %.not.i200.not = icmp eq i32 %i.cb, 0
  br i1 %.not.i200.not, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cc = load i32, ptr @test_mode, align 4, !tbaa !41
  %i.cd = icmp eq i32 %i.cc, 2
  %i.ce = zext i1 %i.cd to i8
  %i.cf = or i8 %.3103281, %i.ce
  br label %bb.ag

bb.z:                                             ; preds = %bb.x
  %i.cg = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bu, ptr noundef nonnull dereferenceable(6) @.str.32) #45
  %.not.i201.not = icmp eq i32 %i.cg, 0
  br i1 %.not.i201.not, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ch = load i32, ptr @skip_async, align 4, !tbaa !41
  %i.ci = zext nneg i8 %.3103281 to i32
  %i.cj = or i32 %i.ch, %i.ci
  %i.ck = icmp ne i32 %i.cj, 0
  %i.cl = zext i1 %i.ck to i8
  br label %bb.ag

bb.ab:                                            ; preds = %bb.z
  %i.cm = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bu, ptr noundef nonnull dereferenceable(21) @.str.58) #45
  %.not.i202.not = icmp eq i32 %i.cm, 0
  br i1 %.not.i202.not, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cn = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bu, ptr noundef nonnull dereferenceable(29) @.str.59) #45
  %.not.i203.not = icmp eq i32 %i.cn, 0
  br i1 %.not.i203.not, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.co = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bu, ptr noundef nonnull dereferenceable(7) @.str.33) #45
  %.not.i204.not = icmp eq i32 %i.co, 0
  br i1 %.not.i204.not, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cp = load i32, ptr @skip_module, align 4, !tbaa !41
  %i.cq = zext nneg i8 %.3103281 to i32
  %i.cr = or i32 %i.cp, %i.cq
  %i.cs = icmp ne i32 %i.cr, 0
  %i.ct = zext i1 %i.cs to i8
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.cu = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bu, ptr noundef nonnull dereferenceable(16) @.str.60) #45
  %.not.i205.not = icmp ne i32 %i.cu, 0
  %spec.select = select i1 %.not.i205.not, i1 %.091284, i1 false
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ac, %bb.ab, %bb.y, %bb.ae, %bb.aa, %bb.w
  %.1118 = phi i1 [ true, %bb.w ], [ %.0117277, %bb.y ], [ %.0117277, %bb.aa ], [ %.0117277, %bb.af ], [ %.0117277, %bb.ab ], [ %.0117277, %bb.ae ], [ %.0117277, %bb.ac ] ; 2 uses
  %.1114 = phi i1 [ %.0113278, %bb.w ], [ true, %bb.y ], [ %.0113278, %bb.aa ], [ %.0113278, %bb.af ], [ %.0113278, %bb.ab ], [ %.0113278, %bb.ae ], [ %.0113278, %bb.ac ] ; 2 uses
  %.1110 = phi i1 [ %.0109279, %bb.w ], [ %.0109279, %bb.y ], [ true, %bb.aa ], [ %.0109279, %bb.af ], [ %.0109279, %bb.ab ], [ %.0109279, %bb.ae ], [ %.0109279, %bb.ac ] ; 2 uses
  %.1105 = phi i8 [ %.0104280, %bb.w ], [ %.0104280, %bb.y ], [ %.0104280, %bb.aa ], [ %.0104280, %bb.af ], [ %.0104280, %bb.ab ], [ 1, %bb.ae ], [ %.0104280, %bb.ac ] ; 2 uses
  %.4 = phi i8 [ %i.ca, %bb.w ], [ %i.cf, %bb.y ], [ %i.cl, %bb.aa ], [ %.3103281, %bb.af ], [ %.3103281, %bb.ab ], [ %i.ct, %bb.ae ], [ %.3103281, %bb.ac ] ; 2 uses
  %.197 = phi i1 [ %.096282, %bb.w ], [ %.096282, %bb.y ], [ %.096282, %bb.aa ], [ %.096282, %bb.af ], [ false, %bb.ab ], [ %.096282, %bb.ae ], [ %.096282, %bb.ac ] ; 2 uses
  %.193 = phi i1 [ %.092283, %bb.w ], [ %.092283, %bb.y ], [ %.092283, %bb.aa ], [ %.092283, %bb.af ], [ %.092283, %bb.ab ], [ %.092283, %bb.ae ], [ true, %bb.ac ] ; 2 uses
  %.1 = phi i1 [ %.091284, %bb.w ], [ %.091284, %bb.y ], [ %.091284, %bb.aa ], [ %spec.select, %bb.af ], [ %.091284, %bb.ab ], [ %.091284, %bb.ae ], [ %.091284, %bb.ac ] ; 2 uses
  call void @free(ptr noundef nonnull %i.bu) #40
  %i.cv = call fastcc ptr @get_option(ptr noundef %i.c, ptr noundef %i.d) ; 2 uses
  %.not147 = icmp eq ptr %i.cv, null
  br i1 %.not147, label %.loopexit266, label %.lr.ph285, !llvm.loop !109

.loopexit266:                                     ; preds = %bb.ag, %find_tag.exit.thread, %find_tag.exit197
  %.2119 = phi i1 [ false, %find_tag.exit.thread ], [ false, %find_tag.exit197 ], [ %.1118, %bb.ag ] ; 2 uses
  %.2115 = phi i1 [ false, %find_tag.exit.thread ], [ false, %find_tag.exit197 ], [ %.1114, %bb.ag ] ; 2 uses
  %.2111 = phi i1 [ false, %find_tag.exit.thread ], [ false, %find_tag.exit197 ], [ %.1110, %bb.ag ]
  %.2106 = phi i8 [ 0, %find_tag.exit.thread ], [ 0, %find_tag.exit197 ], [ %.1105, %bb.ag ] ; 2 uses
  %.5 = phi i8 [ %.2102, %find_tag.exit.thread ], [ %.2102, %find_tag.exit197 ], [ %.4, %bb.ag ] ; 3 uses
  %.298 = phi i1 [ true, %find_tag.exit.thread ], [ true, %find_tag.exit197 ], [ %.197, %bb.ag ] ; 2 uses
  %.294 = phi i1 [ false, %find_tag.exit.thread ], [ false, %find_tag.exit197 ], [ %.193, %bb.ag ] ; 2 uses
  %.2 = phi i1 [ true, %find_tag.exit.thread ], [ true, %find_tag.exit197 ], [ %.1, %bb.ag ] ; 2 uses
  %i.cw = call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.ap, ptr noundef nonnull dereferenceable(1) @.str.61) #45 ; 2 uses
  %.not.i206 = icmp ne ptr %i.cw, null            ; 3 uses
  br i1 %.not.i206, label %find_tag.exit208, label %find_tag.exit211.thread

find_tag.exit208:                                 ; preds = %.loopexit266
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 9
  %i.cy = call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.cx, ptr noundef nonnull dereferenceable(1) @.str.62) #45 ; 2 uses
  %.not.i209 = icmp eq ptr %i.cy, null
  br i1 %.not.i209, label %find_tag.exit211.thread, label %find_tag.exit211

find_tag.exit211:                                 ; preds = %find_tag.exit208
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 5
  %i.da = tail call ptr @__ctype_b_loc() #46
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !31
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %find_tag.exit211
  %.0 = phi ptr [ %i.cz, %find_tag.exit211 ], [ %i.dh, %bb.ah ] ; 4 uses
  %i.dc = load i8, ptr %.0, align 1, !tbaa !27
  %i.dd = zext i8 %i.dc to i64
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.dd
  %i.df = load i16, ptr %i.de, align 2, !tbaa !33
  %i.dg = and i16 %i.df, 8192
  %.not150 = icmp eq i16 %i.dg, 0
  %i.dh = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br i1 %.not150, label %bb.ai, label %bb.ah, !llvm.loop !110

bb.ai:                                            ; preds = %bb.ah
  %i.di = call i64 @strcspn(ptr noundef nonnull %.0, ptr noundef nonnull @.str.63) #45
  %i.dj = shl i64 %i.di, 32                       ; 2 uses
  %sext = add i64 %i.dj, 4294967296
  %i.dk = ashr exact i64 %sext, 32
  %i.dl = call noalias noundef ptr @malloc(i64 noundef %i.dk) #44 ; 3 uses
  %i.dm = ashr exact i64 %i.dj, 32                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dl, ptr nonnull readonly align 1 %.0, i64 %i.dm, i1 false)
  %i.dn = getelementptr inbounds i8, ptr %i.dl, i64 %i.dm
  store i8 0, ptr %i.dn, align 1, !tbaa !27
  br label %find_tag.exit211.thread

find_tag.exit211.thread:                          ; preds = %.loopexit266, %find_tag.exit208, %bb.ai
  %.1130 = phi ptr [ null, %find_tag.exit208 ], [ %i.dl, %bb.ai ], [ null, %.loopexit266 ] ; 2 uses
  %i.do = call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.ap, ptr noundef nonnull dereferenceable(1) @.str.64) #45 ; 2 uses
  %.not.i212 = icmp eq ptr %i.do, null
  br i1 %.not.i212, label %find_tag.exit214.thread, label %find_tag.exit214

find_tag.exit214.thread:                          ; preds = %find_tag.exit211.thread
  store ptr null, ptr %i.c, align 8, !tbaa !29
  br label %.loopexit

find_tag.exit214:                                 ; preds = %find_tag.exit211.thread
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 9
  store i32 0, ptr %i.d, align 4, !tbaa !41
  store ptr %i.dp, ptr %i.c, align 8, !tbaa !29
  %i.dq = call fastcc ptr @get_option(ptr noundef %i.c, ptr noundef %i.d) ; 2 uses
  %.not152294 = icmp eq ptr %i.dq, null
  br i1 %.not152294, label %.loopexit, label %.lr.ph296

.lr.ph296:                                        ; preds = %find_tag.exit214, %bb.al
  %i.dr = phi ptr [ %i.dx, %bb.al ], [ %i.dq, %find_tag.exit214 ] ; 4 uses
  %.6295 = phi i8 [ %.7, %bb.al ], [ %.5, %find_tag.exit214 ]
  %i.ds = load ptr, ptr @harness_features, align 8, !tbaa !29
  %i.dt = call ptr @find_word(ptr noundef %i.ds, ptr noundef nonnull %i.dr)
  %.not155 = icmp eq ptr %i.dt, null
  br i1 %.not155, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %.lr.ph296
  %i.du = load ptr, ptr @harness_skip_features, align 8, !tbaa !29
  %i.dv = call ptr @find_word(ptr noundef %i.du, ptr noundef nonnull %i.dr)
  %.not156 = icmp eq ptr %i.dv, null
  br i1 %.not156, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.65, ptr noundef %1, i32 noundef 1, ptr noundef nonnull %i.dr) ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %.lr.ph296
  %.7 = phi i8 [ %.6295, %.lr.ph296 ], [ 1, %bb.ak ], [ 1, %bb.aj ] ; 2 uses
  call void @free(ptr noundef nonnull %i.dr) #40
  %i.dx = call fastcc ptr @get_option(ptr noundef %i.c, ptr noundef %i.d) ; 2 uses
  %.not152 = icmp eq ptr %i.dx, null
  br i1 %.not152, label %.loopexit, label %.lr.ph296, !llvm.loop !111

.loopexit:                                        ; preds = %bb.al, %find_tag.exit214, %find_tag.exit214.thread
  %.8 = phi i8 [ %.5, %find_tag.exit214.thread ], [ %.5, %find_tag.exit214 ], [ %.7, %bb.al ]
  call void @free(ptr noundef %i.ap) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  %i.dy = trunc nuw i8 %.8 to i1                  ; 2 uses
  br i1 %.2111, label %bb.am, label %.thread

bb.am:                                            ; preds = %.loopexit
  %i.dz = call noalias dereferenceable_or_null(19) ptr @strdup(ptr noundef nonnull readonly @.str.66) #40 ; 2 uses
  %.not.i215 = icmp eq ptr %i.dz, null
  br i1 %.not.i215, label %compose_path.exit.thread.i220, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ec = icmp eq i32 %8, %7
  br i1 %i.ec, label %bb.ao, label %namelist_add.exit221

bb.ao:                                            ; preds = %bb.an
  %i.ed = ashr i32 %7, 1
  %i.ee = add i32 %7, 4
  %i.ef = add i32 %i.ee, %i.ed                    ; 2 uses
  %i.eg = sext i32 %i.ef to i64
  %i.eh = shl nsw i64 %i.eg, 3
  %i.ei = call ptr @realloc(ptr noundef %.pre.i227, i64 noundef %i.eh) #47 ; 3 uses
  %.not21.i217 = icmp eq ptr %i.ei, null
  br i1 %.not21.i217, label %compose_path.exit.thread.i220, label %.thread.i218

.thread.i218:                                     ; preds = %bb.ao
  store ptr %i.ei, ptr %3, align 8, !tbaa !39
  store i32 %i.ef, ptr %i.eb, align 4, !tbaa !40
  br label %namelist_add.exit221

compose_path.exit.thread.i220:                    ; preds = %bb.ao, %bb.am
  call void (i32, ptr, ...) @fatal(i32 noundef 1, ptr noundef nonnull @.str.2)
  unreachable

namelist_add.exit221:                             ; preds = %bb.an, %.thread.i218
  %i.ej = phi ptr [ %i.ei, %.thread.i218 ], [ %.pre.i227, %bb.an ] ; 2 uses
  %i.ek = sext i32 %8 to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.ek
  store ptr %i.dz, ptr %i.el, align 8, !tbaa !29
  %i.em = add nsw i32 %8, 1                       ; 2 uses
  store i32 %i.em, ptr %i.ea, align 8, !tbaa !38
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.n, %namelist_add.exit221, %.loopexit
  %.3256 = phi i1 [ %.2, %namelist_add.exit221 ], [ %.2, %.loopexit ], [ true, %bb.n ], [ true, %bb.i ] ; 2 uses
  %.395255 = phi i1 [ %.294, %namelist_add.exit221 ], [ %.294, %.loopexit ], [ false, %bb.n ], [ false, %bb.i ] ; 2 uses
  %.399254 = phi i1 [ %.298, %namelist_add.exit221 ], [ %.298, %.loopexit ], [ true, %bb.n ], [ true, %bb.i ]
  %.9253 = phi i1 [ %i.dy, %namelist_add.exit221 ], [ %i.dy, %.loopexit ], [ false, %bb.n ], [ false, %bb.i ]
  %.3107252 = phi i8 [ %.2106, %namelist_add.exit221 ], [ %.2106, %.loopexit ], [ 0, %bb.n ], [ %i.v, %bb.i ] ; 2 uses
  %.3112251 = phi i1 [ true, %namelist_add.exit221 ], [ false, %.loopexit ], [ false, %bb.n ], [ false, %bb.i ] ; 2 uses
  %.3116250 = phi i1 [ %.2115, %namelist_add.exit221 ], [ %.2115, %.loopexit ], [ false, %bb.n ], [ false, %bb.i ] ; 6 uses
  %.3120249 = phi i1 [ %.2119, %namelist_add.exit221 ], [ %.2119, %.loopexit ], [ false, %bb.n ], [ false, %bb.i ] ; 6 uses
  %.1122248 = phi i1 [ %.not.i206, %namelist_add.exit221 ], [ %.not.i206, %.loopexit ], [ false, %bb.n ], [ false, %bb.i ] ; 2 uses
  %.2131247 = phi ptr [ %.1130, %namelist_add.exit221 ], [ %.1130, %.loopexit ], [ null, %bb.n ], [ null, %bb.i ] ; 3 uses
  %9 = phi i32 [ %i.em, %namelist_add.exit221 ], [ %8, %.loopexit ], [ %i.u, %bb.n ], [ %i.u, %bb.i ] ; 2 uses
  %.pre.i228 = phi ptr [ %i.ej, %namelist_add.exit221 ], [ %.pre.i227, %.loopexit ], [ %.promoted, %bb.n ], [ %.promoted, %bb.i ] ; 2 uses
  %i.en = load i32, ptr @test_mode, align 4, !tbaa !41
  switch i32 %i.en, label %.thread257 [
    i32 0, label %bb.ap
    i32 1, label %bb.aq
    i32 2, label %bb.au
    i32 3, label %bb.ar
    i32 4, label %bb.as
  ]

bb.ap:                                            ; preds = %.thread
  %i.eo = xor i1 %.3116250, true
  br label %bb.au

bb.aq:                                            ; preds = %.thread
  %not..3120249264 = xor i1 %.3120249, true
  br label %bb.au

bb.ar:                                            ; preds = %.thread
  br label %bb.au

bb.as:                                            ; preds = %.thread
  %i.ep = trunc nuw i8 %.3107252 to i1
  br i1 %i.ep, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.eq = select i1 %.3116250, i1 %.3120249, i1 false
  br label %bb.au

bb.au:                                            ; preds = %.thread, %bb.at, %bb.ar, %bb.as, %bb.aq, %bb.ap
  %.1125.shrunk = phi i1 [ true, %bb.as ], [ %i.eo, %bb.ap ], [ %.3120249, %bb.ar ], [ %.3120249, %bb.aq ], [ %.3120249, %bb.at ], [ true, %.thread ]
  %.not153 = phi i1 [ false, %bb.as ], [ %.3116250, %bb.ap ], [ true, %bb.ar ], [ %not..3120249264, %bb.aq ], [ %.3116250, %bb.at ], [ %.3116250, %.thread ]
  %.0123 = phi i1 [ false, %bb.as ], [ false, %bb.ap ], [ %.3120249, %bb.ar ], [ false, %bb.aq ], [ %i.eq, %bb.at ], [ %.3116250, %.thread ]
  %or.cond174 = select i1 %.9253, i1 true, i1 %.0123
  br i1 %or.cond174, label %.thread257, label %bb.av

.thread257:                                       ; preds = %.thread, %bb.au
  %i.er = atomicrmw volatile add ptr @test_skipped, i32 1 seq_cst, align 4 ; 0 uses
  br label %bb.bb

bb.av:                                            ; preds = %bb.au
  %i.es = load i32, ptr @local, align 4, !tbaa !41
  %i.et = icmp ne i32 %i.es, 0
  %or.cond = select i1 %i.et, i1 %.399254, i1 false
  br i1 %or.cond, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.eu = call zeroext i1 @JS_DetectModule(ptr noundef nonnull %i.e, i64 noundef %i.f) #40
  %i.ev = zext i1 %i.eu to i8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.4108 = phi i8 [ %i.ev, %bb.aw ], [ %.3107252, %bb.av ]
  %.175 = zext nneg i8 %.4108 to i32              ; 2 uses
  br i1 %.not153, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ew = call i32 @run_test_buf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.0132, ptr noundef nonnull %3, ptr noundef nonnull %i.e, i64 noundef %i.f, ptr noundef %.2131247, i32 noundef %.175, i1 noundef zeroext %.1122248, i1 noundef zeroext %.3112251, i1 noundef zeroext %.3256, i1 noundef zeroext %.395255, ptr noundef %2)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.0127 = phi i32 [ %i.ew, %bb.ay ], [ 0, %bb.ax ] ; 2 uses
  br i1 %.1125.shrunk, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ex = or disjoint i32 %.175, 8
  %i.ey = call i32 @run_test_buf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.0132, ptr noundef nonnull %3, ptr noundef nonnull %i.e, i64 noundef %i.f, ptr noundef %.2131247, i32 noundef %i.ex, i1 noundef zeroext %.1122248, i1 noundef zeroext %.3112251, i1 noundef zeroext %.3256, i1 noundef zeroext %.395255, ptr noundef %2)
  %i.ez = or i32 %i.ey, %.0127
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba, %.thread257
  %.1128 = phi i32 [ -2, %.thread257 ], [ %i.ez, %bb.ba ], [ %.0127, %bb.az ]
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fb = icmp sgt i32 %9, 0
  br i1 %i.fb, label %.lr.ph.i.preheader, label %namelist_free.exit

.lr.ph.i.preheader:                               ; preds = %bb.bb
  %i.fc = zext nneg i32 %9 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv = phi i64 [ %i.fc, %.lr.ph.i.preheader ], [ %i.fd, %.lr.ph.i ]
  %i.fd = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.pre.i228, i64 %i.fd
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !29
  call void @free(ptr noundef %i.ff) #40
  %.not265.wide = icmp eq i64 %i.fd, 0
  br i1 %.not265.wide, label %namelist_free.exit.loopexit, label %.lr.ph.i, !llvm.loop !4

namelist_free.exit.loopexit:                      ; preds = %.lr.ph.i
  store i32 0, ptr %i.fa, align 8, !tbaa !38
  br label %namelist_free.exit

namelist_free.exit:                               ; preds = %namelist_free.exit.loopexit, %bb.bb
  call void @free(ptr noundef %.pre.i228) #40
  store ptr null, ptr %3, align 8, !tbaa !39
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.fg, align 4, !tbaa !40
  call void @free(ptr noundef %.2131247) #40
  call void @free(ptr noundef %i.e) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  ret i32 %.1128
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #32

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @get_option(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #33 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.g
  %.018 = phi ptr [ %i.t, %bb.g ], [ %i.a, %bb.a ] ; 6 uses
  %i.b = load i8, ptr %.018, align 1, !tbaa !27
  switch i8 %i.b, label %bb.f [
    i8 91, label %bb.b
    i8 93, label %bb.c
    i8 32, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 44, label %bb.g
    i8 45, label %bb.g
    i8 10, label %bb.d
    i8 0, label %.loopexit
  ]

bb.b:                                             ; preds = %.preheader
  %i.c = load i32, ptr %1, align 4, !tbaa !41
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr %1, align 4, !tbaa !41
  br label %bb.g

bb.c:                                             ; preds = %.preheader
  %i.e = load i32, ptr %1, align 4, !tbaa !41     ; 2 uses
  %i.f = add nsw i32 %i.e, -1
  store i32 %i.f, ptr %1, align 4, !tbaa !41
  %i.g = icmp sgt i32 %i.e, 1
  br i1 %i.g, label %bb.g, label %.loopexit

bb.d:                                             ; preds = %.preheader
  %i.h = load i32, ptr %1, align 4, !tbaa !41
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.018, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !27
  %i.l = icmp eq i8 %i.k, 32
  br i1 %i.l, label %bb.g, label %.loopexit

bb.f:                                             ; preds = %.preheader
  %i.m = tail call i64 @strcspn(ptr noundef nonnull %.018, ptr noundef nonnull @.str.161) #45 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.018, i64 %i.m
  %i.o = shl i64 %i.m, 32                         ; 2 uses
  %sext = add i64 %i.o, 4294967296
  %i.p = ashr exact i64 %sext, 32
  %i.q = tail call noalias noundef ptr @malloc(i64 noundef %i.p) #44 ; 3 uses
  %i.r = ashr exact i64 %i.o, 32                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr nonnull readonly align 1 %.018, i64 %i.r, i1 false)
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  store i8 0, ptr %i.s, align 1, !tbaa !27
  br label %.loopexit

bb.g:                                             ; preds = %bb.d, %bb.e, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.018, i64 1
  br label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.e, %bb.c, %bb.f
  %.119 = phi ptr [ %i.n, %bb.f ], [ null, %bb.c ], [ null, %bb.e ], [ null, %.preheader ]
  %.0 = phi ptr [ %i.q, %bb.f ], [ null, %bb.c ], [ null, %bb.e ], [ null, %.preheader ]
  store ptr %.119, ptr %0, align 8, !tbaa !29
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %bb.a
  %.1 = phi ptr [ %.0, %.loopexit ], [ null, %bb.a ]
  ret ptr %.1
}

declare zeroext i1 @JS_DetectModule(ptr noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @run_test262_harness_test(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #20 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = load ptr, ptr @stdout, align 8, !tbaa !26
  store ptr %i.c, ptr @outfile, align 8, !tbaa !26
  %i.d = tail call ptr @JS_NewRuntime() #40       ; 9 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @fatal(i32 noundef 1, ptr noundef nonnull @.str.45)
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @JS_SetDumpFlags(ptr noundef nonnull %i.d, i64 noundef 16384) #40
  tail call void @JS_SetRuntimeOpaque(ptr noundef nonnull %i.d, ptr noundef %0) #40
  %i.f = tail call ptr @JS_NewContext(ptr noundef nonnull %i.d) #40 ; 15 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @JS_FreeRuntime(ptr noundef nonnull %i.d) #40
  tail call void (i32, ptr, ...) @fatal(i32 noundef 1, ptr noundef nonnull @.str.46)
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @JS_SetRuntimeInfo(ptr noundef nonnull %i.d, ptr noundef %1) #40
  tail call void @JS_SetCanBlock(ptr noundef nonnull %i.d, i1 noundef zeroext %3) #40
  tail call void @JS_SetModuleLoaderFunc2(ptr noundef nonnull %i.d, ptr noundef null, ptr noundef nonnull @js_module_loader_test, ptr noundef null, ptr noundef %1) #40
  %i.h = tail call fastcc { i64, i64 } @add_helpers1(ptr noundef nonnull %i.f), !inline_history !12 ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = extractvalue { i64, i64 } %i.h, 1
  tail call void @JS_FreeValue(ptr noundef nonnull %i.f, i64 %i.i, i64 %i.j) #40, !inline_history !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.k = call ptr @js_load_file(ptr noundef null, ptr noundef nonnull %i.a, ptr noundef %1) #40 ; 3 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.f, label %load_file.exit

bb.f:                                             ; preds = %bb.e
  call void @perror_exit(i32 noundef 1, ptr noundef %1)
  unreachable

load_file.exit:                                   ; preds = %bb.e
  %i.l = load i64, ptr %i.a, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %. = zext i1 %2 to i32
  %i.m = call { i64, i64 } @JS_Eval(ptr noundef nonnull %i.f, ptr noundef nonnull %i.k, i64 noundef %i.l, ptr noundef %1, i32 noundef %.) #40 ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0        ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.m, 1        ; 3 uses
  %i.p = and i64 %i.o, 4294967295
  %i.q = icmp eq i64 %i.p, 6
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %load_file.exit
  call void @js_std_dump_error(ptr noundef nonnull %i.f) #40
  br label %bb.s

bb.h:                                             ; preds = %load_file.exit
  br i1 %2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @JS_FreeValue(ptr noundef nonnull %i.f, i64 %i.n, i64 %i.o) #40
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.7.0 = phi i64 [ 3, %bb.i ], [ %i.o, %bb.h ] ; 3 uses
  %.sroa.03.0 = phi i64 [ 0, %bb.i ], [ %i.n, %bb.h ] ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %bb.j
  %.053 = phi i32 [ 0, %bb.j ], [ %.2, %bb.n ]    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  %i.r = call ptr @JS_GetRuntime(ptr noundef nonnull %i.f) #40
  %i.s = call i32 @JS_ExecutePendingJob(ptr noundef %i.r, ptr noundef nonnull %i.b) #40 ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !113
  call void @js_std_dump_error(ptr noundef %i.u) #40
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.v = icmp eq i32 %i.s, 0
  br i1 %i.v, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.2 = phi i32 [ %.053, %bb.m ], [ 1, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  br label %bb.k

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  br i1 %2, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.w = call i32 @JS_PromiseState(ptr noundef nonnull %i.f, i64 %.sroa.03.0, i64 %.sroa.7.0) #40
  %i.x = icmp eq i32 %i.w, 2
  br i1 %i.x, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.y = call { i64, i64 } @JS_PromiseResult(ptr noundef nonnull %i.f, i64 %.sroa.03.0, i64 %.sroa.7.0) #40 ; 2 uses
  %i.z = extractvalue { i64, i64 } %i.y, 0
  %i.aa = extractvalue { i64, i64 } %i.y, 1
  %i.ab = call { i64, i64 } @JS_Throw(ptr noundef nonnull %i.f, i64 %i.z, i64 %i.aa) #40 ; 0 uses
end_hunk_0
