Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/btor2parser?download=true
inline.NumInlined: 115
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@parse_unary_op_bfr:bb.a
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %parse_sort_id_bfr.exit.thread.sink.split, label %id2line_bfr.exit15.i

id2line_bfr.exit15.i:                             ; preds = %id2line_bfr.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !45
  %.not11.i = icmp eq i32 %i.n, 45
  br i1 %.not11.i, label %bb.d, label %parse_sort_id_bfr.exit.thread.sink.split

parse_sort_id_bfr.exit.thread.sink.split:         ; preds = %id2line_bfr.exit15.i, %bb.b, %bb.c, %id2line_bfr.exit.i
  %.str.94.sink = phi ptr [ @.str.94, %bb.b ], [ @.str.94, %id2line_bfr.exit.i ], [ @.str.94, %bb.c ], [ @.str.95, %id2line_bfr.exit15.i ]
  tail call void (ptr, ptr, ...) @perr_bfr(ptr noundef nonnull %0, ptr noundef nonnull %.str.94.sink)
  br label %parse_sort_id_bfr.exit.thread

parse_sort_id_bfr.exit.thread:                    ; preds = %parse_sort_id_bfr.exit.thread.sink.split, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.e

bb.d:                                             ; preds = %id2line_bfr.exit15.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false), !tbaa.struct !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.p = tail call fastcc i32 @parse_args(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1)
  br label %bb.e

bb.e:                                             ; preds = %parse_sort_id_bfr.exit.thread, %bb.d
  %.0 = phi i32 [ 0, %parse_sort_id_bfr.exit.thread ], [ %i.p, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @parse_init_bfr(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.c = call fastcc i32 @parse_id_bfr(ptr noundef %0, ptr noundef %i.a)
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %parse_sort_id_bfr.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !tbaa !37   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !22   ; 2 uses
  %.not10.i = icmp slt i64 %i.d, %i.f
  br i1 %.not10.i, label %bb.c, label %parse_sort_id_bfr.exit.thread.sink.split

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i64 @llvm.abs.i64(i64 %i.d, i1 true) ; 2 uses
  %.not.i.i = icmp ne i64 %i.d, 0
  %.not7.i.i = icmp slt i64 %i.g, %i.f
  %or.cond.i = select i1 %.not.i.i, i1 %.not7.i.i, i1 false
  br i1 %or.cond.i, label %id2line_bfr.exit.i, label %parse_sort_id_bfr.exit.thread.sink.split

id2line_bfr.exit.i:                               ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.g
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23   ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %parse_sort_id_bfr.exit.thread.sink.split, label %id2line_bfr.exit15.i

id2line_bfr.exit15.i:                             ; preds = %id2line_bfr.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !45
  %.not11.i = icmp eq i32 %i.n, 45
  br i1 %.not11.i, label %bb.d, label %parse_sort_id_bfr.exit.thread.sink.split

parse_sort_id_bfr.exit.thread.sink.split:         ; preds = %id2line_bfr.exit15.i, %bb.b, %bb.c, %id2line_bfr.exit.i
  %.str.94.sink = phi ptr [ @.str.94, %bb.b ], [ @.str.94, %id2line_bfr.exit.i ], [ @.str.94, %bb.c ], [ @.str.95, %id2line_bfr.exit15.i ]
  tail call void (ptr, ptr, ...) @perr_bfr(ptr noundef nonnull %0, ptr noundef nonnull %.str.94.sink)
  br label %parse_sort_id_bfr.exit.thread

parse_sort_id_bfr.exit.thread:                    ; preds = %parse_sort_id_bfr.exit.thread.sink.split, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.t

bb.d:                                             ; preds = %id2line_bfr.exit15.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false), !tbaa.struct !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.p = tail call fastcc i32 @parse_args(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 2)
  %.not23 = icmp eq i32 %i.p, 0
  br i1 %.not23, label %bb.t, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !29   ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !37   ; 5 uses
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.f, label %id2line_bfr.exit

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ...) @perr_bfr(ptr noundef nonnull %0, ptr noundef nonnull @.str.143)
  br label %bb.t

id2line_bfr.exit:                                 ; preds = %bb.e
  %.not.i27 = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i27)
  %i.u = load i64, ptr %i.e, align 8, !tbaa !22
  %.not7.i = icmp slt i64 %i.s, %i.u
  tail call void @llvm.assume(i1 %.not7.i)
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.s
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !23   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !45
  %.not24 = icmp eq i32 %i.z, 52
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %id2line_bfr.exit
  tail call void (ptr, ptr, ...) @perr_bfr(ptr noundef nonnull %0, ptr noundef nonnull @.str.144)
  br label %bb.t

bb.h:                                             ; preds = %id2line_bfr.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !37 ; 2 uses
  %i.ac = tail call i64 @llvm.abs.i64(i64 %i.ab, i1 true) ; 2 uses
  %i.ad = icmp samesign ult i64 %i.s, %i.ac
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ptr, ...) @perr_bfr(ptr noundef nonnull %0, ptr noundef nonnull @.str.145)
  br label %bb.t

bb.j:                                             ; preds = %bb.h
  %i.ae = add nuw nsw i64 %i.ac, 1
  %calloc.i = tail call ptr @calloc(i64 1, i64 %i.ae) ; 4 uses
  %.not.i62.i = icmp eq ptr %calloc.i, null
  br i1 %.not.i62.i, label %bb.k, label %btor2parser_malloc.exit.i

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite.i.i = tail call i64 @fwrite(ptr nonnull @.str, i64 39, i64 1, ptr %i.af) #24 ; 0 uses
  tail call void @abort() #25
  unreachable

btor2parser_malloc.exit.i:                        ; preds = %bb.j
  %malloc.i = tail call dereferenceable_or_null(8) ptr @malloc(i64 8) ; 4 uses
  %.not.i63.i = icmp eq ptr %malloc.i, null
  br i1 %.not.i63.i, label %bb.l, label %btorsim_realloc.exit.i

bb.l:                                             ; preds = %btor2parser_malloc.exit.i
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite.i64.i = tail call i64 @fwrite(ptr nonnull @.str.148, i64 35, i64 1, ptr %i.ag) #24 ; 0 uses
  tail call void @abort() #25
  unreachable

btorsim_realloc.exit.i:                           ; preds = %btor2parser_malloc.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %malloc.i, i64 8 ; 2 uses
  store i64 %i.ab, ptr %malloc.i, align 8, !tbaa !37
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.i, %btorsim_realloc.exit.i
  %.sroa.0.1.i = phi ptr [ %malloc.i, %btorsim_realloc.exit.i ], [ %.sroa.0.4.i, %.loopexit.i ] ; 4 uses
  %.sroa.18.1.i = phi ptr [ %i.ah, %btorsim_realloc.exit.i ], [ %.sroa.18.4.i, %.loopexit.i ]
  %.sroa.33.1.i = phi ptr [ %i.ah, %btorsim_realloc.exit.i ], [ %.sroa.33.4.i, %.loopexit.i ] ; 3 uses
  %i.ai = getelementptr inbounds i8, ptr %.sroa.18.1.i, i64 -8 ; 4 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !37 ; 2 uses
  %spec.select.i = tail call i64 @llvm.abs.i64(i64 %i.aj, i1 true) ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %spec.select.i ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !32
  %.not.i30 = icmp eq i8 %i.al, 0
  br i1 %.not.i30, label %id2line_bfr.exit68.i, label %.loopexit.i

id2line_bfr.exit68.i:                             ; preds = %bb.m
  store i8 1, ptr %i.ak, align 1, !tbaa !32
  %.not.i65.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i65.i)
  %i.am = load i64, ptr %i.e, align 8, !tbaa !22
  %.not7.i66.i = icmp slt i64 %spec.select.i, %i.am
  tail call void @llvm.assume(i1 %.not7.i66.i)
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !21
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %spec.select.i
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !23 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !45
  %i.as = icmp eq i32 %i.ar, 15
  br i1 %i.as, label %.critedge, label %.preheader.i

.preheader.i:                                     ; preds = %id2line_bfr.exit68.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 104 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !50 ; 2 uses
  %.not86.i = icmp eq i32 %i.au, 0
  br i1 %.not86.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 112
  br label %bb.n

.critedge:                                        ; preds = %id2line_bfr.exit68.i
  tail call void (ptr, ptr, ...) @perr_bfr(ptr noundef nonnull %0, ptr noundef nonnull @.str.147, i64 noundef %spec.select.i)
  tail call void @free(ptr noundef nonnull %calloc.i) #26
  tail call void @free(ptr noundef %.sroa.0.1.i) #26
  br label %bb.t

bb.n:                                             ; preds = %bb.q, %.lr.ph.i
  %i.aw = phi i32 [ %i.au, %.lr.ph.i ], [ %i.bi, %bb.q ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.q ] ; 2 uses
  %.sroa.33.282.i = phi ptr [ %.sroa.33.1.i, %.lr.ph.i ], [ %.sroa.33.3.i, %bb.q ] ; 4 uses
  %.sroa.18.281.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %i.bm, %bb.q ] ; 3 uses
  %.sroa.0.280.i = phi ptr [ %.sroa.0.1.i, %.lr.ph.i ], [ %.sroa.0.3.i, %bb.q ] ; 4 uses
  %i.ax = icmp eq ptr %.sroa.18.281.i, %.sroa.33.282.i
  br i1 %i.ax, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ay = ptrtoint ptr %.sroa.33.282.i to i64
  %i.az = ptrtoint ptr %.sroa.0.280.i to i64      ; 2 uses
  %i.ba = sub i64 %i.ay, %i.az
  %.not60.i = icmp eq ptr %.sroa.33.282.i, %.sroa.0.280.i
  %i.bb = ashr exact i64 %i.ba, 2
  %i.bc = select i1 %.not60.i, i64 1, i64 %i.bb   ; 2 uses
  %i.bd = shl i64 %i.bc, 3
  %i.be = tail call ptr @realloc(ptr noundef %.sroa.0.280.i, i64 noundef %i.bd) #30 ; 4 uses
  %.not.i69.i = icmp eq ptr %i.be, null
  br i1 %.not.i69.i, label %bb.p, label %btorsim_realloc.exit71.i

bb.p:                                             ; preds = %bb.o
  %i.bf = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite.i70.i = tail call i64 @fwrite(ptr nonnull @.str.148, i64 35, i64 1, ptr %i.bf) #24 ; 0 uses
  tail call void @abort() #25
  unreachable

btorsim_realloc.exit71.i:                         ; preds = %bb.o
  %2 = ptrtoint ptr %.sroa.18.281.i to i64
  %3 = sub i64 %2, %i.az
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %3
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  %.pre.i = load i32, ptr %i.at, align 8, !tbaa !50
  br label %bb.q

bb.q:                                             ; preds = %btorsim_realloc.exit71.i, %bb.n
  %i.bi = phi i32 [ %.pre.i, %btorsim_realloc.exit71.i ], [ %i.aw, %bb.n ] ; 2 uses
  %.sroa.0.3.i = phi ptr [ %i.be, %btorsim_realloc.exit71.i ], [ %.sroa.0.280.i, %bb.n ] ; 2 uses
  %.sroa.18.3.i = phi ptr [ %i.bg, %btorsim_realloc.exit71.i ], [ %.sroa.18.281.i, %bb.n ] ; 2 uses
  %.sroa.33.3.i = phi ptr [ %i.bh, %btorsim_realloc.exit71.i ], [ %.sroa.33.282.i, %bb.n ] ; 2 uses
  %i.bj = load ptr, ptr %i.av, align 8, !tbaa !29
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.i
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !37
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.18.3.i, i64 8 ; 2 uses
  store i64 %i.bl, ptr %.sroa.18.3.i, align 8, !tbaa !37
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bn = zext i32 %i.bi to i64
  %i.bo = icmp samesign ult i64 %indvars.iv.next.i, %i.bn
  br i1 %i.bo, label %bb.n, label %.loopexit.i, !llvm.loop !80

.loopexit.i:                                      ; preds = %bb.q, %.preheader.i, %bb.m
  %.sroa.0.4.i = phi ptr [ %.sroa.0.1.i, %bb.m ], [ %.sroa.0.1.i, %.preheader.i ], [ %.sroa.0.3.i, %bb.q ] ; 3 uses
  %.sroa.18.4.i = phi ptr [ %i.ai, %bb.m ], [ %i.ai, %.preheader.i ], [ %i.bm, %bb.q ] ; 2 uses
  %.sroa.33.4.i = phi ptr [ %.sroa.33.1.i, %bb.m ], [ %.sroa.33.1.i, %.preheader.i ], [ %.sroa.33.3.i, %bb.q ]
  %.not61.i = icmp eq ptr %.sroa.18.4.i, %.sroa.0.4.i
  br i1 %.not61.i, label %check_state_init.exit, label %bb.m, !llvm.loop !81

check_state_init.exit:                            ; preds = %.loopexit.i
  tail call void @free(ptr noundef %calloc.i) #26
  tail call void @free(ptr noundef %.sroa.0.4.i) #26
  %i.bp = getelementptr inbounds nuw i8, ptr %i.x, i64 72 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !82
  %.not26 = icmp eq i64 %i.bq, 0
  br i1 %.not26, label %bb.s, label %bb.r

bb.r:                                             ; preds = %check_state_init.exit
  %i.br = load i64, ptr %i.x, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @perr_bfr(ptr noundef nonnull %0, ptr noundef nonnull @.str.146, i64 noundef %i.br)
  br label %bb.t

bb.s:                                             ; preds = %check_state_init.exit
  %i.bs = load ptr, ptr %i.q, align 8, !tbaa !29
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !37
  store i64 %i.bu, ptr %i.bp, align 8, !tbaa !82
  br label %bb.t

bb.t:                                             ; preds = %.critedge, %parse_sort_id_bfr.exit.thread, %bb.d, %bb.s, %bb.r, %bb.i, %bb.g, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.r ], [ 1, %bb.s ], [ 0, %bb.d ], [ 0, %parse_sort_id_bfr.exit.thread ], [ 0, %.critedge ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @parse_input_bfr(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.c = call fastcc i32 @parse_id_bfr(ptr noundef %0, ptr noundef %i.a)
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %parse_sort_id_bfr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !tbaa !37   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !22   ; 2 uses
  %.not10.i = icmp slt i64 %i.d, %i.f
  br i1 %.not10.i, label %bb.c, label %id2line_bfr.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i64 @llvm.abs.i64(i64 %i.d, i1 true) ; 2 uses
  %.not.i.i = icmp ne i64 %i.d, 0
  %.not7.i.i = icmp slt i64 %i.g, %i.f
  %or.cond.i = select i1 %.not.i.i, i1 %.not7.i.i, i1 false
  br i1 %or.cond.i, label %id2line_bfr.exit.i, label %id2line_bfr.exit.thread.i

id2line_bfr.exit.i:                               ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.g
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23   ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %id2line_bfr.exit.thread.i, label %id2line_bfr.exit15.i

id2line_bfr.exit.thread.i:                        ; preds = %id2line_bfr.exit.i, %bb.c, %bb.b
  tail call void (ptr, ptr, ...) @perr_bfr(ptr noundef nonnull %0, ptr noundef nonnull @.str.94)
  br label %parse_sort_id_bfr.exit

id2line_bfr.exit15.i:                             ; preds = %id2line_bfr.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !45
  %.not11.i = icmp eq i32 %i.n, 45
  br i1 %.not11.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %id2line_bfr.exit15.i
  tail call void (ptr, ptr, ...) @perr_bfr(ptr noundef nonnull %0, ptr noundef nonnull @.str.95)
  br label %parse_sort_id_bfr.exit

bb.e:                                             ; preds = %id2line_bfr.exit15.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false), !tbaa.struct !49
  br label %parse_sort_id_bfr.exit

parse_sort_id_bfr.exit:                           ; preds = %bb.a, %id2line_bfr.exit.thread.i, %bb.d, %bb.e
  %.0.i = phi i32 [ 0, %id2line_bfr.exit.thread.i ], [ 0, %bb.d ], [ 1, %bb.e ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %.0.i
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @parse_ternary_op_bfr(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.c = call fastcc i32 @parse_id_bfr(ptr noundef %0, ptr noundef %i.a)
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %parse_sort_id_bfr.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !tbaa !37   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !22   ; 2 uses
  %.not10.i = icmp slt i64 %i.d, %i.f
  br i1 %.not10.i, label %bb.c, label %parse_sort_id_bfr.exit.thread.sink.split

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i64 @llvm.abs.i64(i64 %i.d, i1 true) ; 2 uses
  %.not.i.i = icmp ne i64 %i.d, 0
  %.not7.i.i = icmp slt i64 %i.g, %i.f
  %or.cond.i = select i1 %.not.i.i, i1 %.not7.i.i, i1 false
  br i1 %or.cond.i, label %id2line_bfr.exit.i, label %parse_sort_id_bfr.exit.thread.sink.split

id2line_bfr.exit.i:                               ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.g
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23   ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %parse_sort_id_bfr.exit.thread.sink.split, label %id2line_bfr.exit15.i

id2line_bfr.exit15.i:                             ; preds = %id2line_bfr.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !45
  %.not11.i = icmp eq i32 %i.n, 45
  br i1 %.not11.i, label %bb.d, label %parse_sort_id_bfr.exit.thread.sink.split

parse_sort_id_bfr.exit.thread.sink.split:         ; preds = %id2line_bfr.exit15.i, %bb.b, %bb.c, %id2line_bfr.exit.i
  %.str.94.sink = phi ptr [ @.str.94, %bb.b ], [ @.str.94, %id2line_bfr.exit.i ], [ @.str.94, %bb.c ], [ @.str.95, %id2line_bfr.exit15.i ]
  tail call void (ptr, ptr, ...) @perr_bfr(ptr noundef nonnull %0, ptr noundef nonnull %.str.94.sink)
  br label %parse_sort_id_bfr.exit.thread

parse_sort_id_bfr.exit.thread:                    ; preds = %parse_sort_id_bfr.exit.thread.sink.split, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.e

bb.d:                                             ; preds = %id2line_bfr.exit15.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false), !tbaa.struct !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.p = tail call fastcc i32 @parse_args(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 3)
  br label %bb.e

bb.e:                                             ; preds = %parse_sort_id_bfr.exit.thread, %bb.d
  %.0 = phi i32 [ 0, %parse_sort_id_bfr.exit.thread ], [ %i.p, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @parse_justice_bfr(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = call fastcc i32 @parse_pos_number_bfr(ptr noundef %0, ptr noundef %i.a)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.e = load i32, ptr %i.a, align 4, !tbaa !48   ; 3 uses
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 3
  %i.h = tail call ptr @realloc(ptr noundef %i.d, i64 noundef %i.g) #30 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.c, label %btor2parser_realloc.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.93, i64 41, i64 1, ptr %i.i) #24 ; 0 uses
  tail call void @abort() #25
  unreachable

btor2parser_realloc.exit:                         ; preds = %bb.b
  store ptr %i.h, ptr %i.c, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i32 %i.e, ptr %i.j, align 8, !tbaa !50
  %i.k = tail call fastcc i32 @parse_args(ptr noundef %0, ptr noundef %1, i32 noundef %i.e)
  br label %bb.d

bb.d:                                             ; preds = %btor2parser_realloc.exit, %bb.a
end_hunk_0
