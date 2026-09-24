Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tester_v3_json_c?download=true
inline.NumInlined: 131
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@check_roundtrip:tg3json_parse.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.l, label %bb.a

bb.a:                                             ; preds = %tg3json_parse.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.e = call fastcc i32 @tg3json__stringify_value_ex(ptr noundef %2, ptr noundef nonnull readonly %4, i32 noundef -1, i32 noundef 0)
  %.not12.i = icmp eq i32 %i.e, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !48 ; 3 uses
  br i1 %.not12.i, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  call void @free(ptr noundef %.pre.i) #20
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  %.not14.i = icmp eq ptr %.pre.i, null
  br i1 %.not14.i, label %bb.c, label %tg3json_parse.exit20

bb.c:                                             ; preds = %bb.b
  %i.f = call noalias dereferenceable_or_null(1) ptr @malloc(i64 noundef 1) #22 ; 3 uses
  %.not15.i = icmp eq ptr %i.f, null
  br i1 %.not15.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.f, align 1, !tbaa !30
  br label %tg3json_parse.exit20

tg3json_parse.exit20:                             ; preds = %bb.d, %bb.b
  %i.g = phi ptr [ %i.f, %bb.d ], [ %.pre.i, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  store i64 128, ptr %1, align 8, !tbaa !23
  %i.k = call range(i32 0, 2) i32 @tg3json_parse_n_opts(ptr noundef nonnull %i.g, i64 noundef %i.i, ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %.not14 = icmp eq i32 %i.k, 0
  br i1 %.not14, label %bb.j, label %bb.e

bb.e:                                             ; preds = %tg3json_parse.exit20
  %i.l = load i32, ptr %4, align 8, !tbaa !33
  %.not15 = icmp eq i32 %i.l, 3
  br i1 %.not15, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr %5, align 8, !tbaa !33
  switch i32 %i.m, label %.thread [
    i32 3, label %bb.g
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !30
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %bb.j, label %.thread

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !30
  %i.w = sitofp i64 %i.v to double
  %i.x = bitcast double %i.w to i64
  %i.y = icmp eq i64 %i.t, %i.x
  br i1 %i.y, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h, %bb.e
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !56
  %i.aa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.z, ptr noundef nonnull @.str.46, ptr noundef nonnull %0, ptr noundef nonnull %i.g) #25 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.k

bb.j:                                             ; preds = %.thread, %bb.g, %bb.h, %tg3json_parse.exit20
  %.0.ph = phi i32 [ 0, %.thread ], [ 0, %tg3json_parse.exit20 ], [ 1, %bb.h ], [ 1, %bb.g ]
  call void @free(ptr noundef nonnull %i.g) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.036 = phi i32 [ %.0.ph, %bb.j ], [ 0, %bb.i ]
  call void @tg3json_value_free(ptr noundef nonnull %4)
  call void @tg3json_value_free(ptr noundef nonnull %5)
  br label %bb.l

bb.l:                                             ; preds = %tg3json_parse.exit, %bb.k
  %.011 = phi i32 [ %.036, %bb.k ], [ 0, %tg3json_parse.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret i32 %.011
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @check_parse_bits(ptr noundef %0, i64 noundef range(i64 3112348188051293650, 9218868437227405312) %1) unnamed_addr #10 {
tg3json_parse.exit:
  %2 = alloca %struct.tg3json_parse_options, align 8 ; 5 uses
  %3 = alloca %struct.tg3json_value, align 8      ; 7 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8, !tbaa !17
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  store i64 128, ptr %2, align 8, !tbaa !23
  %i.d = call range(i32 0, 2) i32 @tg3json_parse_n_opts(ptr noundef nonnull %0, i64 noundef %i.b, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %tg3json_parse.exit
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !56
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not8 = icmp eq ptr %i.f, null
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = select i1 %.not8, i64 -1, i64 %i.i
  %i.k = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.43, ptr noundef nonnull %0, i64 noundef %i.j) #25 ; 0 uses
  br label %bb.f

bb.b:                                             ; preds = %tg3json_parse.exit
  %i.l = load i32, ptr %3, align 8, !tbaa !33
  %.not9 = icmp eq i32 %i.l, 3
  br i1 %.not9, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !30   ; 2 uses
  %.not10 = icmp eq i64 %i.n, %1
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = phi i64 [ 0, %bb.b ], [ %i.n, %bb.c ]
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !56
  %i.q = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.47, ptr noundef nonnull %0, i64 noundef %i.o, i64 noundef %1) #25 ; 0 uses
  call void @tg3json_value_free(ptr noundef nonnull %3)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @tg3json_value_free(ptr noundef nonnull %3)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %.0 = phi i32 [ 0, %bb.d ], [ 1, %bb.e ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @tg3json__parse_string_raw(ptr noundef nonnull %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.tg3json__buffer, align 8    ; 19 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr %0, ptr %3, align 8, !tbaa !57
  %i.d = load ptr, ptr %0, align 8, !tbaa !31     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 3 uses
  %.not = icmp ult ptr %i.d, %i.f
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr %i.d, align 1, !tbaa !30
  %.not78 = icmp eq i8 %i.g, 34
  br i1 %.not78, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.d, label %tg3json__set_error.exit

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr %i.h, align 8, !tbaa !21
  br label %tg3json__set_error.exit

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 4 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !31
  %i.k = icmp ult ptr %i.j, %i.f
  br i1 %i.k, label %.lr.ph, label %.thread311

.lr.ph:                                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 20 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 41 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 19 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.backedge
  %i.q = phi ptr [ %i.f, %.lr.ph ], [ %i.ok, %.backedge ]
  %i.r = phi ptr [ %i.j, %.lr.ph ], [ %i.oj, %.backedge ] ; 8 uses
  %.063335 = phi ptr [ %i.j, %.lr.ph ], [ %.265.jt0, %.backedge ] ; 7 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !30    ; 2 uses
  switch i8 %i.s, label %bb.ds [
    i8 34, label %bb.g
    i8 92, label %bb.r
  ]

bb.g:                                             ; preds = %bb.f
  %i.t = ptrtoint ptr %.063335 to i64
  %i.u = load i64, ptr %i.l, align 8, !tbaa !27   ; 2 uses
  %.not95 = icmp ne i64 %i.u, 0
  %.pre348.pre = load i64, ptr %i.m, align 8, !tbaa !49 ; 5 uses
  %.pre350 = ptrtoint ptr %i.r to i64
  %.pre351 = sub i64 %.pre350, %i.t               ; 4 uses
  %i.v = add i64 %.pre351, %.pre348.pre
  %i.w = icmp ugt i64 %i.v, %i.u
  %or.cond = select i1 %.not95, i1 %i.w, i1 false
  br i1 %or.cond, label %.thread303, label %._crit_edge349

._crit_edge349:                                   ; preds = %bb.g
  %i.x = icmp eq ptr %i.r, %.063335
  br i1 %i.x, label %.thread307, label %bb.h

bb.h:                                             ; preds = %._crit_edge349
  %i.y = load ptr, ptr %3, align 8, !tbaa !57     ; 5 uses
  %i.z = add i64 %.pre351, 1
  %i.aa = add i64 %i.z, %.pre348.pre              ; 4 uses
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !24  ; 7 uses
  %.not.i.i = icmp ugt i64 %i.aa, %i.ab
  br i1 %.not.i.i, label %bb.i, label %.tg3json__reserve_bytes_parser.exit_crit_edge.i

.tg3json__reserve_bytes_parser.exit_crit_edge.i:  ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !48
  br label %tg3json__reserve_bytes_parser.exit.i

bb.i:                                             ; preds = %bb.h
  %.not60.i.i = icmp eq i64 %i.ab, 0
  %spec.select.i.i = select i1 %.not60.i.i, i64 8, i64 %i.ab ; 3 uses
  %i.ac = icmp ult i64 %spec.select.i.i, %i.aa
  br i1 %i.ac, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.j
  %.04666.i.i = phi i64 [ %i.ae, %bb.j ], [ %spec.select.i.i, %bb.i ] ; 2 uses
  %i.ad = icmp slt i64 %.04666.i.i, 0
  br i1 %i.ad, label %._crit_edge.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.ae = shl nuw i64 %.04666.i.i, 1              ; 3 uses
  %i.af = icmp ult i64 %i.ae, %i.aa
  br i1 %i.af, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %bb.j, %.lr.ph.i.i, %bb.i
  %.1.i.i = phi i64 [ %spec.select.i.i, %bb.i ], [ %i.ae, %bb.j ], [ %i.aa, %.lr.ph.i.i ] ; 6 uses
  %.not61.i.i = icmp ne ptr %i.y, null            ; 2 uses
  br i1 %.not61.i.i, label %bb.k, label %.critedge.i.i

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.ag = tail call i64 @llvm.usub.sat.i64(i64 %.1.i.i, i64 %i.ab) ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !35 ; 2 uses
  %.not62.i.i = icmp ne i64 %i.ai, 0
  %i.aj = icmp ugt i64 %.1.i.i, %i.ai
  %or.cond64.i.i = and i1 %.not62.i.i, %i.aj
  br i1 %or.cond64.i.i, label %.thread303, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !36 ; 3 uses
  %i.am = icmp ne i64 %i.al, 0
  %i.an = icmp ugt i64 %.1.i.i, %i.ab
  %or.cond.i.i = and i1 %i.an, %i.am
  br i1 %or.cond.i.i, label %bb.m, label %.critedge.i.i

bb.m:                                             ; preds = %bb.l
  %i.ao = icmp ugt i64 %i.ag, %i.al
  br i1 %i.ao, label %.thread303, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !28
  %i.ar = sub nuw i64 %i.al, %i.ag
  %i.as = icmp ugt i64 %i.aq, %i.ar
  br i1 %i.as, label %.thread303, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.n, %bb.l, %._crit_edge.i.i
  %i.at = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.au = tail call ptr @realloc(ptr noundef %i.at, i64 noundef %.1.i.i) #21 ; 3 uses
  %.not63.i.i = icmp eq ptr %i.au, null
  br i1 %.not63.i.i, label %.thread303, label %bb.o

bb.o:                                             ; preds = %.critedge.i.i
  %i.av = icmp ugt i64 %.1.i.i, %i.ab
  %or.cond65.i.i = and i1 %.not61.i.i, %i.av
  br i1 %or.cond65.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aw = sub nuw i64 %.1.i.i, %i.ab
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 56 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !28
  %i.az = add i64 %i.aw, %i.ay
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !28
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store ptr %i.au, ptr %i.n, align 8, !tbaa !44
  br label %tg3json__reserve_bytes_parser.exit.i

tg3json__reserve_bytes_parser.exit.i:             ; preds = %bb.q, %.tg3json__reserve_bytes_parser.exit_crit_edge.i
  %i.ba = phi ptr [ %.pre.i, %.tg3json__reserve_bytes_parser.exit_crit_edge.i ], [ %i.au, %bb.q ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.pre348.pre
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr readonly align 1 %.063335, i64 %.pre351, i1 false)
  %i.bc = add i64 %.pre348.pre, %.pre351          ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bc
  store i8 0, ptr %i.bd, align 1, !tbaa !30
  %.pre346 = load ptr, ptr %0, align 8, !tbaa !31
  br label %.thread307

.thread307:                                       ; preds = %._crit_edge349, %tg3json__reserve_bytes_parser.exit.i
  %i.be = phi i64 [ %.pre348.pre, %._crit_edge349 ], [ %i.bc, %tg3json__reserve_bytes_parser.exit.i ]
  %i.bf = phi ptr [ %i.r, %._crit_edge349 ], [ %.pre346, %tg3json__reserve_bytes_parser.exit.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store ptr %i.bg, ptr %0, align 8, !tbaa !31
  %i.bh = load ptr, ptr %i.n, align 8, !tbaa !48
  store ptr %i.bh, ptr %1, align 8, !tbaa !17
  store i64 %i.be, ptr %2, align 8, !tbaa !24
  br label %tg3json__set_error.exit

bb.r:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.bi = ptrtoint ptr %.063335 to i64
  %i.bj = load i64, ptr %i.l, align 8, !tbaa !27  ; 2 uses
  %.not79 = icmp eq i64 %i.bj, 0
  %.pre353 = ptrtoint ptr %i.r to i64
  %.pre355 = sub i64 %.pre353, %i.bi              ; 4 uses
  br i1 %.not79, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = load i64, ptr %i.m, align 8, !tbaa !49
  %i.bl = add i64 %.pre355, %i.bk
  %i.bm = icmp ugt i64 %i.bl, %i.bj
  br i1 %i.bm, label %bb.dw, label %._crit_edge

._crit_edge:                                      ; preds = %bb.r, %bb.s
  %i.bn = icmp eq ptr %i.r, %.063335
  br i1 %i.bn, label %tg3json__buf_append.exit116, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.bo = load ptr, ptr %3, align 8, !tbaa !57    ; 5 uses
  %i.bp = load i64, ptr %i.m, align 8, !tbaa !49  ; 3 uses
  %i.bq = add i64 %.pre355, 1
  %i.br = add i64 %i.bq, %i.bp                    ; 4 uses
  %i.bs = load i64, ptr %i.o, align 8, !tbaa !24  ; 7 uses
  %.not.i.i97 = icmp ugt i64 %i.br, %i.bs
  br i1 %.not.i.i97, label %bb.u, label %.tg3json__reserve_bytes_parser.exit_crit_edge.i98

.tg3json__reserve_bytes_parser.exit_crit_edge.i98: ; preds = %bb.t
  %.pre.i99 = load ptr, ptr %i.n, align 8, !tbaa !48
  br label %tg3json__reserve_bytes_parser.exit.i100

bb.u:                                             ; preds = %bb.t
  %.not60.i.i102 = icmp eq i64 %i.bs, 0
  %spec.select.i.i103 = select i1 %.not60.i.i102, i64 8, i64 %i.bs ; 3 uses
  %i.bt = icmp ult i64 %spec.select.i.i103, %i.br
  br i1 %i.bt, label %.lr.ph.i.i114, label %._crit_edge.i.i104

.lr.ph.i.i114:                                    ; preds = %bb.u, %bb.v
  %.04666.i.i115 = phi i64 [ %i.bv, %bb.v ], [ %spec.select.i.i103, %bb.u ] ; 2 uses
  %i.bu = icmp slt i64 %.04666.i.i115, 0
  br i1 %i.bu, label %._crit_edge.i.i104, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i114
  %i.bv = shl nuw i64 %.04666.i.i115, 1           ; 3 uses
  %i.bw = icmp ult i64 %i.bv, %i.br
  br i1 %i.bw, label %.lr.ph.i.i114, label %._crit_edge.i.i104, !llvm.loop !0

._crit_edge.i.i104:                               ; preds = %bb.v, %.lr.ph.i.i114, %bb.u
  %.1.i.i105 = phi i64 [ %spec.select.i.i103, %bb.u ], [ %i.bv, %bb.v ], [ %i.br, %.lr.ph.i.i114 ] ; 7 uses
  %.not61.i.i106 = icmp ne ptr %i.bo, null        ; 2 uses
  br i1 %.not61.i.i106, label %bb.w, label %.critedge.i.i107

bb.w:                                             ; preds = %._crit_edge.i.i104
  %i.bx = tail call i64 @llvm.usub.sat.i64(i64 %.1.i.i105, i64 %i.bs) ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !35 ; 2 uses
  %.not62.i.i111 = icmp ne i64 %i.bz, 0
  %i.ca = icmp ugt i64 %.1.i.i105, %i.bz
  %or.cond64.i.i112 = and i1 %.not62.i.i111, %i.ca
  br i1 %or.cond64.i.i112, label %bb.dw, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !36 ; 3 uses
  %i.cd = icmp ne i64 %i.cc, 0
  %i.ce = icmp ugt i64 %.1.i.i105, %i.bs
  %or.cond.i.i113 = and i1 %i.ce, %i.cd
  br i1 %or.cond.i.i113, label %bb.y, label %.critedge.i.i107

bb.y:                                             ; preds = %bb.x
  %i.cf = icmp ugt i64 %i.bx, %i.cc
  br i1 %i.cf, label %bb.dw, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !28
  %i.ci = sub nuw i64 %i.cc, %i.bx
  %i.cj = icmp ugt i64 %i.ch, %i.ci
  br i1 %i.cj, label %bb.dw, label %.critedge.i.i107

.critedge.i.i107:                                 ; preds = %bb.z, %bb.x, %._crit_edge.i.i104
  %i.ck = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.cl = tail call ptr @realloc(ptr noundef %i.ck, i64 noundef %.1.i.i105) #21 ; 3 uses
  %.not63.i.i108 = icmp eq ptr %i.cl, null
  br i1 %.not63.i.i108, label %bb.dw, label %bb.aa

bb.aa:                                            ; preds = %.critedge.i.i107
  %i.cm = icmp ugt i64 %.1.i.i105, %i.bs
  %or.cond65.i.i109 = and i1 %.not61.i.i106, %i.cm
  br i1 %or.cond65.i.i109, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cn = sub nuw i64 %.1.i.i105, %i.bs
  %i.co = getelementptr inbounds nuw i8, ptr %i.bo, i64 56 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !28
  %i.cq = add i64 %i.cn, %i.cp
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !28
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  store ptr %i.cl, ptr %i.n, align 8, !tbaa !44
  store i64 %.1.i.i105, ptr %i.o, align 8, !tbaa !24
  br label %tg3json__reserve_bytes_parser.exit.i100

tg3json__reserve_bytes_parser.exit.i100:          ; preds = %bb.ac, %.tg3json__reserve_bytes_parser.exit_crit_edge.i98
  %i.cr = phi ptr [ %.pre.i99, %.tg3json__reserve_bytes_parser.exit_crit_edge.i98 ], [ %i.cl, %bb.ac ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.bp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cs, ptr readonly align 1 %.063335, i64 %.pre355, i1 false)
  %i.ct = add i64 %i.bp, %.pre355                 ; 2 uses
  store i64 %i.ct, ptr %i.m, align 8, !tbaa !49
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.ct
  store i8 0, ptr %i.cu, align 1, !tbaa !30
  %.pre = load ptr, ptr %0, align 8, !tbaa !31
  %.pre345 = load ptr, ptr %i.e, align 8, !tbaa !20
  br label %tg3json__buf_append.exit116

tg3json__buf_append.exit116:                      ; preds = %tg3json__reserve_bytes_parser.exit.i100, %._crit_edge
  %i.cv = phi ptr [ %.pre345, %tg3json__reserve_bytes_parser.exit.i100 ], [ %i.q, %._crit_edge ] ; 2 uses
  %i.cw = phi ptr [ %.pre, %tg3json__reserve_bytes_parser.exit.i100 ], [ %i.r, %._crit_edge ] ; 7 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1 ; 5 uses
  store ptr %i.cx, ptr %0, align 8, !tbaa !31
  %.not81 = icmp ult ptr %i.cx, %i.cv
  br i1 %.not81, label %bb.ad, label %bb.du

bb.ad:                                            ; preds = %tg3json__buf_append.exit116
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !30
  switch i8 %i.cy, label %bb.dq [
    i8 34, label %bb.ae
    i8 92, label %bb.ao
    i8 47, label %bb.ay
    i8 98, label %bb.bi
    i8 102, label %bb.bs
    i8 110, label %bb.cc
    i8 114, label %bb.cm
    i8 116, label %bb.cw
    i8 117, label %bb.dg
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.cz = load ptr, ptr %3, align 8, !tbaa !57    ; 5 uses
  %i.da = load i64, ptr %i.m, align 8, !tbaa !49  ; 3 uses
  %i.db = add i64 %i.da, 2                        ; 4 uses
  %i.dc = load i64, ptr %i.o, align 8, !tbaa !24  ; 7 uses
  %.not.i.i117 = icmp ugt i64 %i.db, %i.dc
  br i1 %.not.i.i117, label %bb.af, label %.tg3json__reserve_bytes_parser.exit_crit_edge.i118

.tg3json__reserve_bytes_parser.exit_crit_edge.i118: ; preds = %bb.ae
  %.pre.i119 = load ptr, ptr %i.n, align 8, !tbaa !48
  br label %tg3json__buf_putc.exit

bb.af:                                            ; preds = %bb.ae
  %.not60.i.i122 = icmp eq i64 %i.dc, 0
  %spec.select.i.i123 = select i1 %.not60.i.i122, i64 8, i64 %i.dc ; 3 uses
  %i.dd = icmp ult i64 %spec.select.i.i123, %i.db
  br i1 %i.dd, label %.lr.ph.i.i133, label %._crit_edge.i.i124

.lr.ph.i.i133:                                    ; preds = %bb.af, %bb.ag
  %.04666.i.i134 = phi i64 [ %i.df, %bb.ag ], [ %spec.select.i.i123, %bb.af ] ; 2 uses
  %i.de = icmp slt i64 %.04666.i.i134, 0
  br i1 %i.de, label %._crit_edge.i.i124, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i133
  %i.df = shl nuw i64 %.04666.i.i134, 1           ; 3 uses
  %i.dg = icmp ult i64 %i.df, %i.db
  br i1 %i.dg, label %.lr.ph.i.i133, label %._crit_edge.i.i124, !llvm.loop !0

._crit_edge.i.i124:                               ; preds = %bb.ag, %.lr.ph.i.i133, %bb.af
  %.1.i.i125 = phi i64 [ %spec.select.i.i123, %bb.af ], [ %i.df, %bb.ag ], [ %i.db, %.lr.ph.i.i133 ] ; 7 uses
  %.not61.i.i126 = icmp ne ptr %i.cz, null        ; 2 uses
  br i1 %.not61.i.i126, label %bb.ah, label %.critedge.i.i127

bb.ah:                                            ; preds = %._crit_edge.i.i124
  %i.dh = tail call i64 @llvm.usub.sat.i64(i64 %.1.i.i125, i64 %i.dc) ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !35 ; 2 uses
  %.not62.i.i130 = icmp ne i64 %i.dj, 0
  %i.dk = icmp ugt i64 %.1.i.i125, %i.dj
  %or.cond64.i.i131 = and i1 %.not62.i.i130, %i.dk
  br i1 %or.cond64.i.i131, label %bb.dw, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !36 ; 3 uses
  %i.dn = icmp ne i64 %i.dm, 0
  %i.do = icmp ugt i64 %.1.i.i125, %i.dc
  %or.cond.i.i132 = and i1 %i.do, %i.dn
  br i1 %or.cond.i.i132, label %bb.aj, label %.critedge.i.i127

bb.aj:                                            ; preds = %bb.ai
  %i.dp = icmp ugt i64 %i.dh, %i.dm
  br i1 %i.dp, label %bb.dw, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cz, i64 56
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !28
  %i.ds = sub nuw i64 %i.dm, %i.dh
  %i.dt = icmp ugt i64 %i.dr, %i.ds
  br i1 %i.dt, label %bb.dw, label %.critedge.i.i127

.critedge.i.i127:                                 ; preds = %bb.ak, %bb.ai, %._crit_edge.i.i124
  %i.du = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.dv = tail call ptr @realloc(ptr noundef %i.du, i64 noundef %.1.i.i125) #21 ; 3 uses
  %.not63.i.i128 = icmp eq ptr %i.dv, null
  br i1 %.not63.i.i128, label %bb.dw, label %bb.al

bb.al:                                            ; preds = %.critedge.i.i127
  %i.dw = icmp ugt i64 %.1.i.i125, %i.dc
  %or.cond65.i.i129 = and i1 %.not61.i.i126, %i.dw
  br i1 %or.cond65.i.i129, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dx = sub nuw i64 %.1.i.i125, %i.dc
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cz, i64 56 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !28
  %i.ea = add i64 %i.dx, %i.dz
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !28
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  store ptr %i.dv, ptr %i.n, align 8, !tbaa !44
  store i64 %.1.i.i125, ptr %i.o, align 8, !tbaa !24
  br label %tg3json__buf_putc.exit

tg3json__buf_putc.exit:                           ; preds = %.tg3json__reserve_bytes_parser.exit_crit_edge.i118, %bb.an
  %i.eb = phi ptr [ %.pre.i119, %.tg3json__reserve_bytes_parser.exit_crit_edge.i118 ], [ %i.dv, %bb.an ]
  %i.ec = add i64 %i.da, 1                        ; 2 uses
  store i64 %i.ec, ptr %i.m, align 8, !tbaa !49
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.da
  store i8 34, ptr %i.ed, align 1, !tbaa !30
  %i.ee = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ec
  store i8 0, ptr %i.ef, align 1, !tbaa !30
  br label %tg3json__buf_append.exit116.thread.jt0

bb.ao:                                            ; preds = %bb.ad
  %i.eg = load ptr, ptr %3, align 8, !tbaa !57    ; 5 uses
  %i.eh = load i64, ptr %i.m, align 8, !tbaa !49  ; 3 uses
  %i.ei = add i64 %i.eh, 2                        ; 4 uses
  %i.ej = load i64, ptr %i.o, align 8, !tbaa !24  ; 7 uses
  %.not.i.i135 = icmp ugt i64 %i.ei, %i.ej
  br i1 %.not.i.i135, label %bb.ap, label %.tg3json__reserve_bytes_parser.exit_crit_edge.i136

.tg3json__reserve_bytes_parser.exit_crit_edge.i136: ; preds = %bb.ao
  %.pre.i137 = load ptr, ptr %i.n, align 8, !tbaa !48
  br label %tg3json__buf_putc.exit154

bb.ap:                                            ; preds = %bb.ao
  %.not60.i.i140 = icmp eq i64 %i.ej, 0
  %spec.select.i.i141 = select i1 %.not60.i.i140, i64 8, i64 %i.ej ; 3 uses
  %i.ek = icmp ult i64 %spec.select.i.i141, %i.ei
  br i1 %i.ek, label %.lr.ph.i.i152, label %._crit_edge.i.i142

.lr.ph.i.i152:                                    ; preds = %bb.ap, %bb.aq
  %.04666.i.i153 = phi i64 [ %i.em, %bb.aq ], [ %spec.select.i.i141, %bb.ap ] ; 2 uses
  %i.el = icmp slt i64 %.04666.i.i153, 0
  br i1 %i.el, label %._crit_edge.i.i142, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i152
  %i.em = shl nuw i64 %.04666.i.i153, 1           ; 3 uses
  %i.en = icmp ult i64 %i.em, %i.ei
  br i1 %i.en, label %.lr.ph.i.i152, label %._crit_edge.i.i142, !llvm.loop !0

._crit_edge.i.i142:                               ; preds = %bb.aq, %.lr.ph.i.i152, %bb.ap
  %.1.i.i143 = phi i64 [ %spec.select.i.i141, %bb.ap ], [ %i.em, %bb.aq ], [ %i.ei, %.lr.ph.i.i152 ] ; 7 uses
  %.not61.i.i144 = icmp ne ptr %i.eg, null        ; 2 uses
  br i1 %.not61.i.i144, label %bb.ar, label %.critedge.i.i145

bb.ar:                                            ; preds = %._crit_edge.i.i142
  %i.eo = tail call i64 @llvm.usub.sat.i64(i64 %.1.i.i143, i64 %i.ej) ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !35 ; 2 uses
  %.not62.i.i149 = icmp ne i64 %i.eq, 0
  %i.er = icmp ugt i64 %.1.i.i143, %i.eq
  %or.cond64.i.i150 = and i1 %.not62.i.i149, %i.er
  br i1 %or.cond64.i.i150, label %bb.dw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.es = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.et = load i64, ptr %i.es, align 8, !tbaa !36 ; 3 uses
  %i.eu = icmp ne i64 %i.et, 0
  %i.ev = icmp ugt i64 %.1.i.i143, %i.ej
  %or.cond.i.i151 = and i1 %i.ev, %i.eu
  br i1 %or.cond.i.i151, label %bb.at, label %.critedge.i.i145

bb.at:                                            ; preds = %bb.as
  %i.ew = icmp ugt i64 %i.eo, %i.et
  br i1 %i.ew, label %bb.dw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eg, i64 56
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !28
  %i.ez = sub nuw i64 %i.et, %i.eo
  %i.fa = icmp ugt i64 %i.ey, %i.ez
  br i1 %i.fa, label %bb.dw, label %.critedge.i.i145

.critedge.i.i145:                                 ; preds = %bb.au, %bb.as, %._crit_edge.i.i142
  %i.fb = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.fc = tail call ptr @realloc(ptr noundef %i.fb, i64 noundef %.1.i.i143) #21 ; 3 uses
  %.not63.i.i146 = icmp eq ptr %i.fc, null
  br i1 %.not63.i.i146, label %bb.dw, label %bb.av

bb.av:                                            ; preds = %.critedge.i.i145
  %i.fd = icmp ugt i64 %.1.i.i143, %i.ej
  %or.cond65.i.i147 = and i1 %.not61.i.i144, %i.fd
  br i1 %or.cond65.i.i147, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fe = sub nuw i64 %.1.i.i143, %i.ej
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eg, i64 56 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !28
  %i.fh = add i64 %i.fe, %i.fg
  store i64 %i.fh, ptr %i.ff, align 8, !tbaa !28
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  store ptr %i.fc, ptr %i.n, align 8, !tbaa !44
  store i64 %.1.i.i143, ptr %i.o, align 8, !tbaa !24
  br label %tg3json__buf_putc.exit154

tg3json__buf_putc.exit154:                        ; preds = %.tg3json__reserve_bytes_parser.exit_crit_edge.i136, %bb.ax
  %i.fi = phi ptr [ %.pre.i137, %.tg3json__reserve_bytes_parser.exit_crit_edge.i136 ], [ %i.fc, %bb.ax ]
  %i.fj = add i64 %i.eh, 1                        ; 2 uses
  store i64 %i.fj, ptr %i.m, align 8, !tbaa !49
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.eh
  store i8 92, ptr %i.fk, align 1, !tbaa !30
  %i.fl = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fj
  store i8 0, ptr %i.fm, align 1, !tbaa !30
  br label %tg3json__buf_append.exit116.thread.jt0

bb.ay:                                            ; preds = %bb.ad
  %i.fn = load ptr, ptr %3, align 8, !tbaa !57    ; 5 uses
  %i.fo = load i64, ptr %i.m, align 8, !tbaa !49  ; 3 uses
  %i.fp = add i64 %i.fo, 2                        ; 4 uses
  %i.fq = load i64, ptr %i.o, align 8, !tbaa !24  ; 7 uses
  %.not.i.i155 = icmp ugt i64 %i.fp, %i.fq
  br i1 %.not.i.i155, label %bb.az, label %.tg3json__reserve_bytes_parser.exit_crit_edge.i156

.tg3json__reserve_bytes_parser.exit_crit_edge.i156: ; preds = %bb.ay
  %.pre.i157 = load ptr, ptr %i.n, align 8, !tbaa !48
  br label %tg3json__buf_putc.exit174

bb.az:                                            ; preds = %bb.ay
  %.not60.i.i160 = icmp eq i64 %i.fq, 0
  %spec.select.i.i161 = select i1 %.not60.i.i160, i64 8, i64 %i.fq ; 3 uses
  %i.fr = icmp ult i64 %spec.select.i.i161, %i.fp
  br i1 %i.fr, label %.lr.ph.i.i172, label %._crit_edge.i.i162

.lr.ph.i.i172:                                    ; preds = %bb.az, %bb.ba
  %.04666.i.i173 = phi i64 [ %i.ft, %bb.ba ], [ %spec.select.i.i161, %bb.az ] ; 2 uses
  %i.fs = icmp slt i64 %.04666.i.i173, 0
  br i1 %i.fs, label %._crit_edge.i.i162, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i.i172
  %i.ft = shl nuw i64 %.04666.i.i173, 1           ; 3 uses
  %i.fu = icmp ult i64 %i.ft, %i.fp
  br i1 %i.fu, label %.lr.ph.i.i172, label %._crit_edge.i.i162, !llvm.loop !0

._crit_edge.i.i162:                               ; preds = %bb.ba, %.lr.ph.i.i172, %bb.az
  %.1.i.i163 = phi i64 [ %spec.select.i.i161, %bb.az ], [ %i.ft, %bb.ba ], [ %i.fp, %.lr.ph.i.i172 ] ; 7 uses
  %.not61.i.i164 = icmp ne ptr %i.fn, null        ; 2 uses
  br i1 %.not61.i.i164, label %bb.bb, label %.critedge.i.i165

bb.bb:                                            ; preds = %._crit_edge.i.i162
  %i.fv = tail call i64 @llvm.usub.sat.i64(i64 %.1.i.i163, i64 %i.fq) ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !35 ; 2 uses
  %.not62.i.i169 = icmp ne i64 %i.fx, 0
  %i.fy = icmp ugt i64 %.1.i.i163, %i.fx
  %or.cond64.i.i170 = and i1 %.not62.i.i169, %i.fy
  br i1 %or.cond64.i.i170, label %bb.dw, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !36 ; 3 uses
  %i.gb = icmp ne i64 %i.ga, 0
  %i.gc = icmp ugt i64 %.1.i.i163, %i.fq
  %or.cond.i.i171 = and i1 %i.gc, %i.gb
  br i1 %or.cond.i.i171, label %bb.bd, label %.critedge.i.i165

bb.bd:                                            ; preds = %bb.bc
  %i.gd = icmp ugt i64 %i.fv, %i.ga
  br i1 %i.gd, label %bb.dw, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fn, i64 56
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !28
  %i.gg = sub nuw i64 %i.ga, %i.fv
  %i.gh = icmp ugt i64 %i.gf, %i.gg
  br i1 %i.gh, label %bb.dw, label %.critedge.i.i165

.critedge.i.i165:                                 ; preds = %bb.be, %bb.bc, %._crit_edge.i.i162
  %i.gi = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.gj = tail call ptr @realloc(ptr noundef %i.gi, i64 noundef %.1.i.i163) #21 ; 3 uses
  %.not63.i.i166 = icmp eq ptr %i.gj, null
  br i1 %.not63.i.i166, label %bb.dw, label %bb.bf

bb.bf:                                            ; preds = %.critedge.i.i165
  %i.gk = icmp ugt i64 %.1.i.i163, %i.fq
  %or.cond65.i.i167 = and i1 %.not61.i.i164, %i.gk
  br i1 %or.cond65.i.i167, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.gl = sub nuw i64 %.1.i.i163, %i.fq
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fn, i64 56 ; 2 uses
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !28
  %i.go = add i64 %i.gl, %i.gn
  store i64 %i.go, ptr %i.gm, align 8, !tbaa !28
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  store ptr %i.gj, ptr %i.n, align 8, !tbaa !44
  store i64 %.1.i.i163, ptr %i.o, align 8, !tbaa !24
  br label %tg3json__buf_putc.exit174

tg3json__buf_putc.exit174:                        ; preds = %.tg3json__reserve_bytes_parser.exit_crit_edge.i156, %bb.bh
  %i.gp = phi ptr [ %.pre.i157, %.tg3json__reserve_bytes_parser.exit_crit_edge.i156 ], [ %i.gj, %bb.bh ]
  %i.gq = add i64 %i.fo, 1                        ; 2 uses
  store i64 %i.gq, ptr %i.m, align 8, !tbaa !49
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.fo
  store i8 47, ptr %i.gr, align 1, !tbaa !30
  %i.gs = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gq
  store i8 0, ptr %i.gt, align 1, !tbaa !30
  br label %tg3json__buf_append.exit116.thread.jt0

bb.bi:                                            ; preds = %bb.ad
  %i.gu = load ptr, ptr %3, align 8, !tbaa !57    ; 5 uses
  %i.gv = load i64, ptr %i.m, align 8, !tbaa !49  ; 3 uses
  %i.gw = add i64 %i.gv, 2                        ; 4 uses
  %i.gx = load i64, ptr %i.o, align 8, !tbaa !24  ; 7 uses
  %.not.i.i175 = icmp ugt i64 %i.gw, %i.gx
  br i1 %.not.i.i175, label %bb.bj, label %.tg3json__reserve_bytes_parser.exit_crit_edge.i176

.tg3json__reserve_bytes_parser.exit_crit_edge.i176: ; preds = %bb.bi
  %.pre.i177 = load ptr, ptr %i.n, align 8, !tbaa !48
  br label %tg3json__buf_putc.exit194

bb.bj:                                            ; preds = %bb.bi
  %.not60.i.i180 = icmp eq i64 %i.gx, 0
  %spec.select.i.i181 = select i1 %.not60.i.i180, i64 8, i64 %i.gx ; 3 uses
  %i.gy = icmp ult i64 %spec.select.i.i181, %i.gw
  br i1 %i.gy, label %.lr.ph.i.i192, label %._crit_edge.i.i182

.lr.ph.i.i192:                                    ; preds = %bb.bj, %bb.bk
  %.04666.i.i193 = phi i64 [ %i.ha, %bb.bk ], [ %spec.select.i.i181, %bb.bj ] ; 2 uses
  %i.gz = icmp slt i64 %.04666.i.i193, 0
  br i1 %i.gz, label %._crit_edge.i.i182, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i.i192
  %i.ha = shl nuw i64 %.04666.i.i193, 1           ; 3 uses
  %i.hb = icmp ult i64 %i.ha, %i.gw
  br i1 %i.hb, label %.lr.ph.i.i192, label %._crit_edge.i.i182, !llvm.loop !0

._crit_edge.i.i182:                               ; preds = %bb.bk, %.lr.ph.i.i192, %bb.bj
  %.1.i.i183 = phi i64 [ %spec.select.i.i181, %bb.bj ], [ %i.ha, %bb.bk ], [ %i.gw, %.lr.ph.i.i192 ] ; 7 uses
  %.not61.i.i184 = icmp ne ptr %i.gu, null        ; 2 uses
  br i1 %.not61.i.i184, label %bb.bl, label %.critedge.i.i185

bb.bl:                                            ; preds = %._crit_edge.i.i182
  %i.hc = tail call i64 @llvm.usub.sat.i64(i64 %.1.i.i183, i64 %i.gx) ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gu, i64 40
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !35 ; 2 uses
  %.not62.i.i189 = icmp ne i64 %i.he, 0
  %i.hf = icmp ugt i64 %.1.i.i183, %i.he
  %or.cond64.i.i190 = and i1 %.not62.i.i189, %i.hf
  br i1 %or.cond64.i.i190, label %bb.dw, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !36 ; 3 uses
  %i.hi = icmp ne i64 %i.hh, 0
  %i.hj = icmp ugt i64 %.1.i.i183, %i.gx
  %or.cond.i.i191 = and i1 %i.hj, %i.hi
  br i1 %or.cond.i.i191, label %bb.bn, label %.critedge.i.i185

bb.bn:                                            ; preds = %bb.bm
  %i.hk = icmp ugt i64 %i.hc, %i.hh
  br i1 %i.hk, label %bb.dw, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gu, i64 56
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !28
  %i.hn = sub nuw i64 %i.hh, %i.hc
  %i.ho = icmp ugt i64 %i.hm, %i.hn
  br i1 %i.ho, label %bb.dw, label %.critedge.i.i185

.critedge.i.i185:                                 ; preds = %bb.bo, %bb.bm, %._crit_edge.i.i182
  %i.hp = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.hq = tail call ptr @realloc(ptr noundef %i.hp, i64 noundef %.1.i.i183) #21 ; 3 uses
  %.not63.i.i186 = icmp eq ptr %i.hq, null
  br i1 %.not63.i.i186, label %bb.dw, label %bb.bp

bb.bp:                                            ; preds = %.critedge.i.i185
  %i.hr = icmp ugt i64 %.1.i.i183, %i.gx
  %or.cond65.i.i187 = and i1 %.not61.i.i184, %i.hr
  br i1 %or.cond65.i.i187, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.hs = sub nuw i64 %.1.i.i183, %i.gx
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gu, i64 56 ; 2 uses
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !28
  %i.hv = add i64 %i.hs, %i.hu
  store i64 %i.hv, ptr %i.ht, align 8, !tbaa !28
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  store ptr %i.hq, ptr %i.n, align 8, !tbaa !44
  store i64 %.1.i.i183, ptr %i.o, align 8, !tbaa !24
  br label %tg3json__buf_putc.exit194

tg3json__buf_putc.exit194:                        ; preds = %.tg3json__reserve_bytes_parser.exit_crit_edge.i176, %bb.br
  %i.hw = phi ptr [ %.pre.i177, %.tg3json__reserve_bytes_parser.exit_crit_edge.i176 ], [ %i.hq, %bb.br ]
  %i.hx = add i64 %i.gv, 1                        ; 2 uses
  store i64 %i.hx, ptr %i.m, align 8, !tbaa !49
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.gv
  store i8 8, ptr %i.hy, align 1, !tbaa !30
  %i.hz = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.hx
  store i8 0, ptr %i.ia, align 1, !tbaa !30
  br label %tg3json__buf_append.exit116.thread.jt0

bb.bs:                                            ; preds = %bb.ad
  %i.ib = load ptr, ptr %3, align 8, !tbaa !57    ; 5 uses
  %i.ic = load i64, ptr %i.m, align 8, !tbaa !49  ; 3 uses
  %i.id = add i64 %i.ic, 2                        ; 4 uses
  %i.ie = load i64, ptr %i.o, align 8, !tbaa !24  ; 7 uses
  %.not.i.i195 = icmp ugt i64 %i.id, %i.ie
  br i1 %.not.i.i195, label %bb.bt, label %.tg3json__reserve_bytes_parser.exit_crit_edge.i196

.tg3json__reserve_bytes_parser.exit_crit_edge.i196: ; preds = %bb.bs
  %.pre.i197 = load ptr, ptr %i.n, align 8, !tbaa !48
  br label %tg3json__buf_putc.exit214

bb.bt:                                            ; preds = %bb.bs
  %.not60.i.i200 = icmp eq i64 %i.ie, 0
  %spec.select.i.i201 = select i1 %.not60.i.i200, i64 8, i64 %i.ie ; 3 uses
  %i.if = icmp ult i64 %spec.select.i.i201, %i.id
  br i1 %i.if, label %.lr.ph.i.i212, label %._crit_edge.i.i202

.lr.ph.i.i212:                                    ; preds = %bb.bt, %bb.bu
  %.04666.i.i213 = phi i64 [ %i.ih, %bb.bu ], [ %spec.select.i.i201, %bb.bt ] ; 2 uses
  %i.ig = icmp slt i64 %.04666.i.i213, 0
  br i1 %i.ig, label %._crit_edge.i.i202, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph.i.i212
  %i.ih = shl nuw i64 %.04666.i.i213, 1           ; 3 uses
  %i.ii = icmp ult i64 %i.ih, %i.id
  br i1 %i.ii, label %.lr.ph.i.i212, label %._crit_edge.i.i202, !llvm.loop !0

._crit_edge.i.i202:                               ; preds = %bb.bu, %.lr.ph.i.i212, %bb.bt
  %.1.i.i203 = phi i64 [ %spec.select.i.i201, %bb.bt ], [ %i.ih, %bb.bu ], [ %i.id, %.lr.ph.i.i212 ] ; 7 uses
  %.not61.i.i204 = icmp ne ptr %i.ib, null        ; 2 uses
  br i1 %.not61.i.i204, label %bb.bv, label %.critedge.i.i205

bb.bv:                                            ; preds = %._crit_edge.i.i202
  %i.ij = tail call i64 @llvm.usub.sat.i64(i64 %.1.i.i203, i64 %i.ie) ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ib, i64 40
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !35 ; 2 uses
  %.not62.i.i209 = icmp ne i64 %i.il, 0
  %i.im = icmp ugt i64 %.1.i.i203, %i.il
  %or.cond64.i.i210 = and i1 %.not62.i.i209, %i.im
  br i1 %or.cond64.i.i210, label %bb.dw, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.in = getelementptr inbounds nuw i8, ptr %i.ib, i64 32
  %i.io = load i64, ptr %i.in, align 8, !tbaa !36 ; 3 uses
  %i.ip = icmp ne i64 %i.io, 0
  %i.iq = icmp ugt i64 %.1.i.i203, %i.ie
  %or.cond.i.i211 = and i1 %i.iq, %i.ip
  br i1 %or.cond.i.i211, label %bb.bx, label %.critedge.i.i205

bb.bx:                                            ; preds = %bb.bw
  %i.ir = icmp ugt i64 %i.ij, %i.io
  br i1 %i.ir, label %bb.dw, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.is = getelementptr inbounds nuw i8, ptr %i.ib, i64 56
  %i.it = load i64, ptr %i.is, align 8, !tbaa !28
  %i.iu = sub nuw i64 %i.io, %i.ij
  %i.iv = icmp ugt i64 %i.it, %i.iu
  br i1 %i.iv, label %bb.dw, label %.critedge.i.i205

.critedge.i.i205:                                 ; preds = %bb.by, %bb.bw, %._crit_edge.i.i202
  %i.iw = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.ix = tail call ptr @realloc(ptr noundef %i.iw, i64 noundef %.1.i.i203) #21 ; 3 uses
  %.not63.i.i206 = icmp eq ptr %i.ix, null
  br i1 %.not63.i.i206, label %bb.dw, label %bb.bz

bb.bz:                                            ; preds = %.critedge.i.i205
  %i.iy = icmp ugt i64 %.1.i.i203, %i.ie
  %or.cond65.i.i207 = and i1 %.not61.i.i204, %i.iy
  br i1 %or.cond65.i.i207, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.iz = sub nuw i64 %.1.i.i203, %i.ie
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ib, i64 56 ; 2 uses
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !28
  %i.jc = add i64 %i.iz, %i.jb
  store i64 %i.jc, ptr %i.ja, align 8, !tbaa !28
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  store ptr %i.ix, ptr %i.n, align 8, !tbaa !44
  store i64 %.1.i.i203, ptr %i.o, align 8, !tbaa !24
  br label %tg3json__buf_putc.exit214

tg3json__buf_putc.exit214:                        ; preds = %.tg3json__reserve_bytes_parser.exit_crit_edge.i196, %bb.cb
  %i.jd = phi ptr [ %.pre.i197, %.tg3json__reserve_bytes_parser.exit_crit_edge.i196 ], [ %i.ix, %bb.cb ]
  %i.je = add i64 %i.ic, 1                        ; 2 uses
  store i64 %i.je, ptr %i.m, align 8, !tbaa !49
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.ic
  store i8 12, ptr %i.jf, align 1, !tbaa !30
  %i.jg = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.je
  store i8 0, ptr %i.jh, align 1, !tbaa !30
  br label %tg3json__buf_append.exit116.thread.jt0

bb.cc:                                            ; preds = %bb.ad
  %i.ji = load ptr, ptr %3, align 8, !tbaa !57    ; 5 uses
  %i.jj = load i64, ptr %i.m, align 8, !tbaa !49  ; 3 uses
  %i.jk = add i64 %i.jj, 2                        ; 4 uses
  %i.jl = load i64, ptr %i.o, align 8, !tbaa !24  ; 7 uses
  %.not.i.i215 = icmp ugt i64 %i.jk, %i.jl
  br i1 %.not.i.i215, label %bb.cd, label %.tg3json__reserve_bytes_parser.exit_crit_edge.i216

.tg3json__reserve_bytes_parser.exit_crit_edge.i216: ; preds = %bb.cc
  %.pre.i217 = load ptr, ptr %i.n, align 8, !tbaa !48
  br label %tg3json__buf_putc.exit234

bb.cd:                                            ; preds = %bb.cc
  %.not60.i.i220 = icmp eq i64 %i.jl, 0
  %spec.select.i.i221 = select i1 %.not60.i.i220, i64 8, i64 %i.jl ; 3 uses
  %i.jm = icmp ult i64 %spec.select.i.i221, %i.jk
  br i1 %i.jm, label %.lr.ph.i.i232, label %._crit_edge.i.i222

.lr.ph.i.i232:                                    ; preds = %bb.cd, %bb.ce
  %.04666.i.i233 = phi i64 [ %i.jo, %bb.ce ], [ %spec.select.i.i221, %bb.cd ] ; 2 uses
  %i.jn = icmp slt i64 %.04666.i.i233, 0
  br i1 %i.jn, label %._crit_edge.i.i222, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph.i.i232
  %i.jo = shl nuw i64 %.04666.i.i233, 1           ; 3 uses
  %i.jp = icmp ult i64 %i.jo, %i.jk
  br i1 %i.jp, label %.lr.ph.i.i232, label %._crit_edge.i.i222, !llvm.loop !0

._crit_edge.i.i222:                               ; preds = %bb.ce, %.lr.ph.i.i232, %bb.cd
  %.1.i.i223 = phi i64 [ %spec.select.i.i221, %bb.cd ], [ %i.jo, %bb.ce ], [ %i.jk, %.lr.ph.i.i232 ] ; 7 uses
  %.not61.i.i224 = icmp ne ptr %i.ji, null        ; 2 uses
  br i1 %.not61.i.i224, label %bb.cf, label %.critedge.i.i225

bb.cf:                                            ; preds = %._crit_edge.i.i222
  %i.jq = tail call i64 @llvm.usub.sat.i64(i64 %.1.i.i223, i64 %i.jl) ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ji, i64 40
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !35 ; 2 uses
  %.not62.i.i229 = icmp ne i64 %i.js, 0
  %i.jt = icmp ugt i64 %.1.i.i223, %i.js
  %or.cond64.i.i230 = and i1 %.not62.i.i229, %i.jt
  br i1 %or.cond64.i.i230, label %bb.dw, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ji, i64 32
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !36 ; 3 uses
  %i.jw = icmp ne i64 %i.jv, 0
  %i.jx = icmp ugt i64 %.1.i.i223, %i.jl
  %or.cond.i.i231 = and i1 %i.jx, %i.jw
  br i1 %or.cond.i.i231, label %bb.ch, label %.critedge.i.i225

bb.ch:                                            ; preds = %bb.cg
  %i.jy = icmp ugt i64 %i.jq, %i.jv
  br i1 %i.jy, label %bb.dw, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ji, i64 56
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !28
  %i.kb = sub nuw i64 %i.jv, %i.jq
  %i.kc = icmp ugt i64 %i.ka, %i.kb
  br i1 %i.kc, label %bb.dw, label %.critedge.i.i225

.critedge.i.i225:                                 ; preds = %bb.ci, %bb.cg, %._crit_edge.i.i222
  %i.kd = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.ke = tail call ptr @realloc(ptr noundef %i.kd, i64 noundef %.1.i.i223) #21 ; 3 uses
  %.not63.i.i226 = icmp eq ptr %i.ke, null
  br i1 %.not63.i.i226, label %bb.dw, label %bb.cj

bb.cj:                                            ; preds = %.critedge.i.i225
  %i.kf = icmp ugt i64 %.1.i.i223, %i.jl
  %or.cond65.i.i227 = and i1 %.not61.i.i224, %i.kf
  br i1 %or.cond65.i.i227, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.kg = sub nuw i64 %.1.i.i223, %i.jl
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ji, i64 56 ; 2 uses
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !28
  %i.kj = add i64 %i.kg, %i.ki
  store i64 %i.kj, ptr %i.kh, align 8, !tbaa !28
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  store ptr %i.ke, ptr %i.n, align 8, !tbaa !44
  store i64 %.1.i.i223, ptr %i.o, align 8, !tbaa !24
  br label %tg3json__buf_putc.exit234

tg3json__buf_putc.exit234:                        ; preds = %.tg3json__reserve_bytes_parser.exit_crit_edge.i216, %bb.cl
  %i.kk = phi ptr [ %.pre.i217, %.tg3json__reserve_bytes_parser.exit_crit_edge.i216 ], [ %i.ke, %bb.cl ]
  %i.kl = add i64 %i.jj, 1                        ; 2 uses
  store i64 %i.kl, ptr %i.m, align 8, !tbaa !49
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.jj
  store i8 10, ptr %i.km, align 1, !tbaa !30
  %i.kn = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.kl
  store i8 0, ptr %i.ko, align 1, !tbaa !30
  br label %tg3json__buf_append.exit116.thread.jt0

bb.cm:                                            ; preds = %bb.ad
  %i.kp = load ptr, ptr %3, align 8, !tbaa !57    ; 5 uses
  %i.kq = load i64, ptr %i.m, align 8, !tbaa !49  ; 3 uses
  %i.kr = add i64 %i.kq, 2                        ; 4 uses
  %i.ks = load i64, ptr %i.o, align 8, !tbaa !24  ; 7 uses
  %.not.i.i235 = icmp ugt i64 %i.kr, %i.ks
  br i1 %.not.i.i235, label %bb.cn, label %.tg3json__reserve_bytes_parser.exit_crit_edge.i236

.tg3json__reserve_bytes_parser.exit_crit_edge.i236: ; preds = %bb.cm
  %.pre.i237 = load ptr, ptr %i.n, align 8, !tbaa !48
  br label %tg3json__buf_putc.exit254

bb.cn:                                            ; preds = %bb.cm
  %.not60.i.i240 = icmp eq i64 %i.ks, 0
  %spec.select.i.i241 = select i1 %.not60.i.i240, i64 8, i64 %i.ks ; 3 uses
  %i.kt = icmp ult i64 %spec.select.i.i241, %i.kr
  br i1 %i.kt, label %.lr.ph.i.i252, label %._crit_edge.i.i242

.lr.ph.i.i252:                                    ; preds = %bb.cn, %bb.co
  %.04666.i.i253 = phi i64 [ %i.kv, %bb.co ], [ %spec.select.i.i241, %bb.cn ] ; 2 uses
  %i.ku = icmp slt i64 %.04666.i.i253, 0
  br i1 %i.ku, label %._crit_edge.i.i242, label %bb.co

bb.co:                                            ; preds = %.lr.ph.i.i252
  %i.kv = shl nuw i64 %.04666.i.i253, 1           ; 3 uses
  %i.kw = icmp ult i64 %i.kv, %i.kr
  br i1 %i.kw, label %.lr.ph.i.i252, label %._crit_edge.i.i242, !llvm.loop !0

._crit_edge.i.i242:                               ; preds = %bb.co, %.lr.ph.i.i252, %bb.cn
  %.1.i.i243 = phi i64 [ %spec.select.i.i241, %bb.cn ], [ %i.kv, %bb.co ], [ %i.kr, %.lr.ph.i.i252 ] ; 7 uses
  %.not61.i.i244 = icmp ne ptr %i.kp, null        ; 2 uses
  br i1 %.not61.i.i244, label %bb.cp, label %.critedge.i.i245

bb.cp:                                            ; preds = %._crit_edge.i.i242
  %i.kx = tail call i64 @llvm.usub.sat.i64(i64 %.1.i.i243, i64 %i.ks) ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kp, i64 40
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !35 ; 2 uses
  %.not62.i.i249 = icmp ne i64 %i.kz, 0
  %i.la = icmp ugt i64 %.1.i.i243, %i.kz
  %or.cond64.i.i250 = and i1 %.not62.i.i249, %i.la
  br i1 %or.cond64.i.i250, label %bb.dw, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kp, i64 32
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !36 ; 3 uses
  %i.ld = icmp ne i64 %i.lc, 0
  %i.le = icmp ugt i64 %.1.i.i243, %i.ks
  %or.cond.i.i251 = and i1 %i.le, %i.ld
  br i1 %or.cond.i.i251, label %bb.cr, label %.critedge.i.i245

bb.cr:                                            ; preds = %bb.cq
  %i.lf = icmp ugt i64 %i.kx, %i.lc
  br i1 %i.lf, label %bb.dw, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kp, i64 56
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !28
  %i.li = sub nuw i64 %i.lc, %i.kx
  %i.lj = icmp ugt i64 %i.lh, %i.li
  br i1 %i.lj, label %bb.dw, label %.critedge.i.i245

.critedge.i.i245:                                 ; preds = %bb.cs, %bb.cq, %._crit_edge.i.i242
  %i.lk = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.ll = tail call ptr @realloc(ptr noundef %i.lk, i64 noundef %.1.i.i243) #21 ; 3 uses
  %.not63.i.i246 = icmp eq ptr %i.ll, null
  br i1 %.not63.i.i246, label %bb.dw, label %bb.ct

bb.ct:                                            ; preds = %.critedge.i.i245
  %i.lm = icmp ugt i64 %.1.i.i243, %i.ks
  %or.cond65.i.i247 = and i1 %.not61.i.i244, %i.lm
  br i1 %or.cond65.i.i247, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.ln = sub nuw i64 %.1.i.i243, %i.ks
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kp, i64 56 ; 2 uses
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !28
  %i.lq = add i64 %i.ln, %i.lp
  store i64 %i.lq, ptr %i.lo, align 8, !tbaa !28
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  store ptr %i.ll, ptr %i.n, align 8, !tbaa !44
  store i64 %.1.i.i243, ptr %i.o, align 8, !tbaa !24
  br label %tg3json__buf_putc.exit254

tg3json__buf_putc.exit254:                        ; preds = %.tg3json__reserve_bytes_parser.exit_crit_edge.i236, %bb.cv
  %i.lr = phi ptr [ %.pre.i237, %.tg3json__reserve_bytes_parser.exit_crit_edge.i236 ], [ %i.ll, %bb.cv ]
  %i.ls = add i64 %i.kq, 1                        ; 2 uses
  store i64 %i.ls, ptr %i.m, align 8, !tbaa !49
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.kq
  store i8 13, ptr %i.lt, align 1, !tbaa !30
  %i.lu = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.ls
  store i8 0, ptr %i.lv, align 1, !tbaa !30
  br label %tg3json__buf_append.exit116.thread.jt0

bb.cw:                                            ; preds = %bb.ad
  %i.lw = load ptr, ptr %3, align 8, !tbaa !57    ; 5 uses
  %i.lx = load i64, ptr %i.m, align 8, !tbaa !49  ; 3 uses
  %i.ly = add i64 %i.lx, 2                        ; 4 uses
  %i.lz = load i64, ptr %i.o, align 8, !tbaa !24  ; 7 uses
  %.not.i.i255 = icmp ugt i64 %i.ly, %i.lz
  br i1 %.not.i.i255, label %bb.cx, label %.tg3json__reserve_bytes_parser.exit_crit_edge.i256

.tg3json__reserve_bytes_parser.exit_crit_edge.i256: ; preds = %bb.cw
  %.pre.i257 = load ptr, ptr %i.n, align 8, !tbaa !48
  br label %tg3json__buf_putc.exit274

bb.cx:                                            ; preds = %bb.cw
  %.not60.i.i260 = icmp eq i64 %i.lz, 0
  %spec.select.i.i261 = select i1 %.not60.i.i260, i64 8, i64 %i.lz ; 3 uses
  %i.ma = icmp ult i64 %spec.select.i.i261, %i.ly
  br i1 %i.ma, label %.lr.ph.i.i272, label %._crit_edge.i.i262

.lr.ph.i.i272:                                    ; preds = %bb.cx, %bb.cy
  %.04666.i.i273 = phi i64 [ %i.mc, %bb.cy ], [ %spec.select.i.i261, %bb.cx ] ; 2 uses
  %i.mb = icmp slt i64 %.04666.i.i273, 0
  br i1 %i.mb, label %._crit_edge.i.i262, label %bb.cy

bb.cy:                                            ; preds = %.lr.ph.i.i272
  %i.mc = shl nuw i64 %.04666.i.i273, 1           ; 3 uses
  %i.md = icmp ult i64 %i.mc, %i.ly
  br i1 %i.md, label %.lr.ph.i.i272, label %._crit_edge.i.i262, !llvm.loop !0

._crit_edge.i.i262:                               ; preds = %bb.cy, %.lr.ph.i.i272, %bb.cx
  %.1.i.i263 = phi i64 [ %spec.select.i.i261, %bb.cx ], [ %i.mc, %bb.cy ], [ %i.ly, %.lr.ph.i.i272 ] ; 7 uses
  %.not61.i.i264 = icmp ne ptr %i.lw, null        ; 2 uses
  br i1 %.not61.i.i264, label %bb.cz, label %.critedge.i.i265

bb.cz:                                            ; preds = %._crit_edge.i.i262
  %i.me = tail call i64 @llvm.usub.sat.i64(i64 %.1.i.i263, i64 %i.lz) ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lw, i64 40
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !35 ; 2 uses
  %.not62.i.i269 = icmp ne i64 %i.mg, 0
  %i.mh = icmp ugt i64 %.1.i.i263, %i.mg
  %or.cond64.i.i270 = and i1 %.not62.i.i269, %i.mh
  br i1 %or.cond64.i.i270, label %bb.dw, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lw, i64 32
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !36 ; 3 uses
  %i.mk = icmp ne i64 %i.mj, 0
  %i.ml = icmp ugt i64 %.1.i.i263, %i.lz
  %or.cond.i.i271 = and i1 %i.ml, %i.mk
  br i1 %or.cond.i.i271, label %bb.db, label %.critedge.i.i265

bb.db:                                            ; preds = %bb.da
  %i.mm = icmp ugt i64 %i.me, %i.mj
  br i1 %i.mm, label %bb.dw, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lw, i64 56
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !28
  %i.mp = sub nuw i64 %i.mj, %i.me
  %i.mq = icmp ugt i64 %i.mo, %i.mp
  br i1 %i.mq, label %bb.dw, label %.critedge.i.i265

.critedge.i.i265:                                 ; preds = %bb.dc, %bb.da, %._crit_edge.i.i262
  %i.mr = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.ms = tail call ptr @realloc(ptr noundef %i.mr, i64 noundef %.1.i.i263) #21 ; 3 uses
  %.not63.i.i266 = icmp eq ptr %i.ms, null
  br i1 %.not63.i.i266, label %bb.dw, label %bb.dd

bb.dd:                                            ; preds = %.critedge.i.i265
  %i.mt = icmp ugt i64 %.1.i.i263, %i.lz
  %or.cond65.i.i267 = and i1 %.not61.i.i264, %i.mt
  br i1 %or.cond65.i.i267, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.mu = sub nuw i64 %.1.i.i263, %i.lz
  %i.mv = getelementptr inbounds nuw i8, ptr %i.lw, i64 56 ; 2 uses
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !28
  %i.mx = add i64 %i.mu, %i.mw
  store i64 %i.mx, ptr %i.mv, align 8, !tbaa !28
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  store ptr %i.ms, ptr %i.n, align 8, !tbaa !44
  store i64 %.1.i.i263, ptr %i.o, align 8, !tbaa !24
  br label %tg3json__buf_putc.exit274

tg3json__buf_putc.exit274:                        ; preds = %.tg3json__reserve_bytes_parser.exit_crit_edge.i256, %bb.df
  %i.my = phi ptr [ %.pre.i257, %.tg3json__reserve_bytes_parser.exit_crit_edge.i256 ], [ %i.ms, %bb.df ]
  %i.mz = add i64 %i.lx, 1                        ; 2 uses
  store i64 %i.mz, ptr %i.m, align 8, !tbaa !49
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.lx
  store i8 9, ptr %i.na, align 1, !tbaa !30
  %i.nb = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.mz
  store i8 0, ptr %i.nc, align 1, !tbaa !30
  br label %tg3json__buf_append.exit116.thread.jt0

bb.dg:                                            ; preds = %bb.ad
  %i.nd = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.ne = ptrtoint ptr %i.cx to i64
  %i.nf = sub i64 %i.nd, %i.ne
  %i.ng = icmp ult i64 %i.nf, 5
  br i1 %i.ng, label %tg3json__buf_append.exit116.thread.jt0, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.nh = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  %i.ni = call fastcc i32 @tg3json__hex4(ptr noundef nonnull %i.nh, ptr noundef %i.a)
  %.not82 = icmp eq i32 %i.ni, 0
  br i1 %.not82, label %tg3json__buf_append.exit116.thread.jt0, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.nj = getelementptr inbounds nuw i8, ptr %i.cw, i64 5 ; 2 uses
  store ptr %i.nj, ptr %0, align 8, !tbaa !31
  %i.nk = load i32, ptr %i.a, align 4, !tbaa !37  ; 3 uses
  %i.nl = and i32 %i.nk, -1024
  switch i32 %i.nl, label %bb.dp [
    i32 55296, label %bb.dj
    i32 56320, label %tg3json__buf_append.exit116.thread.jt0
  ]

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.nm = ptrtoint ptr %i.nj to i64
  %i.nn = sub i64 %i.nd, %i.nm
  %i.no = icmp ult i64 %i.nn, 7
  br i1 %i.no, label %.thread, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.np = getelementptr inbounds nuw i8, ptr %i.cw, i64 6
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !30
  %.not83 = icmp eq i8 %i.nq, 92
  br i1 %.not83, label %bb.dl, label %.thread

bb.dl:                                            ; preds = %bb.dk
  %i.nr = getelementptr inbounds nuw i8, ptr %i.cw, i64 7
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !30
  %.not84 = icmp eq i8 %i.ns, 117
  br i1 %.not84, label %bb.dm, label %.thread

bb.dm:                                            ; preds = %bb.dl
  %i.nt = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.nu = call fastcc i32 @tg3json__hex4(ptr noundef nonnull %i.nt, ptr noundef %i.b)
  %.not85 = icmp eq i32 %i.nu, 0
  br i1 %.not85, label %.thread, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.nv = load i32, ptr %i.b, align 4, !tbaa !37  ; 2 uses
  %i.nw = add i32 %i.nv, -57344
  %or.cond3 = icmp ult i32 %i.nw, -1024
  br i1 %or.cond3, label %.thread, label %bb.do

.thread:                                          ; preds = %bb.dj, %bb.dm, %bb.dl, %bb.dk, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %tg3json__buf_append.exit116.thread.jt0

bb.do:                                            ; preds = %bb.dn
  %i.nx = shl nuw nsw i32 %i.nk, 10
  %i.ny = add nsw i32 %i.nx, -56613888
  %i.nz = add nsw i32 %i.ny, %i.nv                ; 2 uses
  store i32 %i.nz, ptr %i.a, align 4, !tbaa !37
  %i.oa = getelementptr inbounds nuw i8, ptr %i.cw, i64 11
  store ptr %i.oa, ptr %0, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.dp

bb.dp:                                            ; preds = %bb.di, %bb.do
  %i.ob = phi i32 [ %i.nk, %bb.di ], [ %i.nz, %bb.do ]
  %i.oc = call fastcc i32 @tg3json__append_utf8(ptr noundef %3, i32 noundef %i.ob)
  %.not86 = icmp eq i32 %i.oc, 0
  br i1 %.not86, label %bb.dw, label %tg3json__buf_append.exit116.thread.jt0

bb.dq:                                            ; preds = %bb.ad
  %i.od = load ptr, ptr %i.p, align 8, !tbaa !21
  %.not.i275 = icmp eq ptr %i.od, null
  br i1 %.not.i275, label %bb.dr, label %bb.dv

bb.dr:                                            ; preds = %bb.dq
  store ptr %i.cx, ptr %i.p, align 8, !tbaa !21
  br label %bb.dv

tg3json__buf_append.exit116.thread.jt0:           ; preds = %bb.dg, %bb.dh, %bb.dp, %tg3json__buf_putc.exit, %tg3json__buf_putc.exit154, %tg3json__buf_putc.exit174, %tg3json__buf_putc.exit194, %tg3json__buf_putc.exit214, %tg3json__buf_putc.exit234, %tg3json__buf_putc.exit254, %tg3json__buf_putc.exit274, %.thread, %bb.di
  %i.oe = load ptr, ptr %0, align 8, !tbaa !31
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 1 ; 2 uses
  store ptr %i.of, ptr %0, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.backedge

bb.ds:                                            ; preds = %bb.f
  %i.og = icmp ult i8 %i.s, 32
  br i1 %i.og, label %.thread311, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.oh = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store ptr %i.oh, ptr %0, align 8, !tbaa !31
  br label %.backedge

bb.du:                                            ; preds = %tg3json__buf_append.exit116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.thread311

bb.dv:                                            ; preds = %bb.dq, %bb.dr
  %i.oi = load ptr, ptr %i.n, align 8, !tbaa !48
  tail call void @free(ptr noundef %i.oi) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %tg3json__set_error.exit

bb.dw:                                            ; preds = %bb.s, %bb.dp, %bb.z, %bb.ak, %bb.au, %bb.be, %bb.bo, %bb.by, %bb.ci, %bb.cs, %.critedge.i.i107, %bb.w, %bb.y, %.critedge.i.i127, %bb.ah, %bb.aj, %.critedge.i.i145, %bb.ar, %bb.at, %.critedge.i.i165, %bb.bb, %bb.bd, %.critedge.i.i185, %bb.bl, %bb.bn, %.critedge.i.i205, %bb.bv, %bb.bx, %.critedge.i.i225, %bb.cf, %bb.ch, %.critedge.i.i245, %bb.cp, %bb.cr, %.critedge.i.i265, %bb.cz, %bb.db, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.thread303

.backedge:                                        ; preds = %bb.dt, %tg3json__buf_append.exit116.thread.jt0
  %.265.jt0 = phi ptr [ %.063335, %bb.dt ], [ %i.of, %tg3json__buf_append.exit116.thread.jt0 ]
  %i.oj = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.ok = load ptr, ptr %i.e, align 8, !tbaa !20  ; 2 uses
  %i.ol = icmp ult ptr %i.oj, %i.ok
  br i1 %i.ol, label %bb.f, label %.thread311, !llvm.loop !87

.thread311:                                       ; preds = %.backedge, %bb.ds, %bb.du, %bb.e
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !21
  %.not.i277 = icmp eq ptr %i.on, null
  br i1 %.not.i277, label %bb.dx, label %tg3json__set_error.exit278

bb.dx:                                            ; preds = %.thread311
  %i.oo = load ptr, ptr %0, align 8, !tbaa !31
  store ptr %i.oo, ptr %i.om, align 8, !tbaa !21
  br label %tg3json__set_error.exit278

tg3json__set_error.exit278:                       ; preds = %.thread311, %bb.dx
  %i.op = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !48
  tail call void @free(ptr noundef %i.oq) #20
  br label %tg3json__set_error.exit

.thread303:                                       ; preds = %bb.g, %bb.dw, %bb.n, %bb.m, %bb.k, %.critedge.i.i
  %i.or = load ptr, ptr %i.p, align 8, !tbaa !21
  %.not.i279 = icmp eq ptr %i.or, null
  br i1 %.not.i279, label %bb.dy, label %tg3json__set_error.exit280

bb.dy:                                            ; preds = %.thread303
  %i.os = load ptr, ptr %0, align 8, !tbaa !31
  store ptr %i.os, ptr %i.p, align 8, !tbaa !21
  br label %tg3json__set_error.exit280

tg3json__set_error.exit280:                       ; preds = %.thread303, %bb.dy
  %i.ot = load ptr, ptr %i.n, align 8, !tbaa !48
  tail call void @free(ptr noundef %i.ot) #20
  br label %tg3json__set_error.exit

tg3json__set_error.exit:                          ; preds = %bb.dv, %.thread307, %bb.d, %bb.c, %tg3json__set_error.exit280, %tg3json__set_error.exit278
  %.4 = phi i32 [ 0, %tg3json__set_error.exit280 ], [ 1, %.thread307 ], [ 0, %tg3json__set_error.exit278 ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.dv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @tg3json__buf_append(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %tg3json__reserve_bytes_parser.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !57     ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !49   ; 2 uses
  %i.f = add i64 %2, 1
  %i.g = add i64 %i.f, %i.e                       ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !24   ; 7 uses
  %.not.i = icmp ugt i64 %i.g, %i.i
  br i1 %.not.i, label %bb.c, label %.tg3json__reserve_bytes_parser.exit_crit_edge

.tg3json__reserve_bytes_parser.exit_crit_edge:    ; preds = %bb.b
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !48
  br label %tg3json__reserve_bytes_parser.exit

bb.c:                                             ; preds = %bb.b
  %.not60.i = icmp eq i64 %i.i, 0
  %spec.select.i = select i1 %.not60.i, i64 8, i64 %i.i ; 3 uses
  %i.j = icmp ult i64 %spec.select.i, %i.g
  br i1 %i.j, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.04666.i = phi i64 [ %i.l, %bb.d ], [ %spec.select.i, %bb.c ] ; 2 uses
  %i.k = icmp slt i64 %.04666.i, 0
  br i1 %i.k, label %._crit_edge.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.l = shl nuw i64 %.04666.i, 1                 ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.g
end_hunk_0
