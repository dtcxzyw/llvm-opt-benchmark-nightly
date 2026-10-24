Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tester_v3_json_c?download=true
inline.NumInlined: 131
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@tg3json_parse_n_opts:bb.a
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @tg3json_value_free(ptr noundef nonnull %3)
  br label %bb.q

bb.l:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %5, align 8, !tbaa !31     ; 5 uses
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !20   ; 4 uses
  %i.z = icmp ult ptr %i.x, %i.y
  br i1 %i.z, label %.lr.ph.preheader.i54, label %tg3json__skip_ws.exit59

.lr.ph.preheader.i54:                             ; preds = %bb.l
  %i.aa = ptrtoaddr ptr %i.y to i64
  %i.ab = ptrtoaddr ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %scevgep.i55 = getelementptr i8, ptr %i.x, i64 %i.ac
  br label %.lr.ph.i56

.lr.ph.i56:                                       ; preds = %bb.m, %.lr.ph.preheader.i54
  %.01720.i57 = phi ptr [ %i.ae, %bb.m ], [ %i.x, %.lr.ph.preheader.i54 ] ; 3 uses
  %i.ad = load i8, ptr %.01720.i57, align 1, !tbaa !30
  switch i8 %i.ad, label %tg3json__skip_ws.exit59 [
    i8 32, label %bb.m
    i8 13, label %bb.m
    i8 10, label %bb.m
    i8 9, label %bb.m
  ]

bb.m:                                             ; preds = %.lr.ph.i56, %.lr.ph.i56, %.lr.ph.i56, %.lr.ph.i56
  %i.ae = getelementptr inbounds nuw i8, ptr %.01720.i57, i64 1 ; 2 uses
  %exitcond.not.i58 = icmp eq ptr %i.ae, %i.y
  br i1 %exitcond.not.i58, label %tg3json__skip_ws.exit59, label %.lr.ph.i56

tg3json__skip_ws.exit59:                          ; preds = %.lr.ph.i56, %bb.m, %bb.l
  %.017.lcssa.i53 = phi ptr [ %i.x, %bb.l ], [ %scevgep.i55, %bb.m ], [ %.01720.i57, %.lr.ph.i56 ] ; 3 uses
  store ptr %.017.lcssa.i53, ptr %5, align 8, !tbaa !31
  %.not46 = icmp eq ptr %.017.lcssa.i53, %i.y
  br i1 %.not46, label %bb.q, label %bb.n

bb.n:                                             ; preds = %tg3json__skip_ws.exit59
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %.017.lcssa.i53, ptr %4, align 8, !tbaa !17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @tg3json_value_free(ptr noundef nonnull %3)
  br label %bb.q

bb.q:                                             ; preds = %tg3json__skip_ws.exit59, %tg3json__skip_ws.exit.thread, %bb.g, %tg3json__init_value.exit, %bb.c, %bb.p, %bb.k
  %.0 = phi i32 [ 0, %tg3json__init_value.exit ], [ 0, %bb.p ], [ 0, %tg3json__skip_ws.exit.thread ], [ 0, %bb.k ], [ 0, %bb.c ], [ 0, %bb.g ], [ 1, %tg3json__skip_ws.exit59 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @tg3json__parse_value(ptr noundef nonnull %0, i64 noundef %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %3 = alloca %struct.tg3json_value, align 8      ; 9 uses
  %4 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %.not = icmp ne i64 %i.f, 0
  %i.g = icmp ugt i64 %1, %i.f
  %or.cond = and i1 %.not, %i.g
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.c, label %tg3json__set_error.exit

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %0, align 8, !tbaa !31
  store ptr %i.j, ptr %i.h, align 8, !tbaa !21
  br label %tg3json__set_error.exit

bb.d:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !31     ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20   ; 28 uses
  %i.n = icmp ult ptr %i.k, %i.m
  br i1 %i.n, label %.lr.ph.preheader.i, label %tg3json__skip_ws.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.o = ptrtoaddr ptr %i.m to i64
  %i.p = ptrtoaddr ptr %i.k to i64
  %i.q = sub i64 %i.o, %i.p
  %scevgep.i = getelementptr i8, ptr %i.k, i64 %i.q
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %.01720.i = phi ptr [ %i.s, %bb.e ], [ %i.k, %.lr.ph.preheader.i ] ; 3 uses
  %i.r = load i8, ptr %.01720.i, align 1, !tbaa !30
  switch i8 %i.r, label %tg3json__skip_ws.exit [
    i8 32, label %bb.e
    i8 13, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
  ]

bb.e:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %.01720.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.s, %i.m
  br i1 %exitcond.not.i, label %tg3json__skip_ws.exit, label %.lr.ph.i

tg3json__skip_ws.exit:                            ; preds = %.lr.ph.i, %bb.e, %bb.d
  %.017.lcssa.i = phi ptr [ %i.k, %bb.d ], [ %.01720.i, %.lr.ph.i ], [ %scevgep.i, %bb.e ] ; 20 uses
  store ptr %.017.lcssa.i, ptr %0, align 8, !tbaa !31
  %.not48 = icmp ult ptr %.017.lcssa.i, %i.m
  br i1 %.not48, label %bb.h, label %bb.f

bb.f:                                             ; preds = %tg3json__skip_ws.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21
  %.not.i52 = icmp eq ptr %i.u, null
  br i1 %.not.i52, label %bb.g, label %tg3json__set_error.exit

bb.g:                                             ; preds = %bb.f
  store ptr %.017.lcssa.i, ptr %i.t, align 8, !tbaa !21
  br label %tg3json__set_error.exit

bb.h:                                             ; preds = %tg3json__skip_ws.exit
  %i.v = load i8, ptr %.017.lcssa.i, align 1, !tbaa !30 ; 2 uses
  switch i8 %i.v, label %bb.bw [
    i8 91, label %bb.i
    i8 123, label %bb.ab
    i8 34, label %bb.bk
    i8 110, label %bb.bn
    i8 116, label %bb.bq
    i8 102, label %bb.bt
  ]

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %.017.lcssa.i, i64 1 ; 6 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !31
  %i.x = icmp ult ptr %i.w, %i.m
  br i1 %i.x, label %.lr.ph.preheader.i94, label %tg3json__skip_ws.exit99

.lr.ph.preheader.i94:                             ; preds = %bb.i
  %i.y = ptrtoaddr ptr %i.m to i64
  %i.z = ptrtoaddr ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  %scevgep.i95 = getelementptr i8, ptr %i.w, i64 %i.aa
  br label %.lr.ph.i96

.lr.ph.i96:                                       ; preds = %bb.j, %.lr.ph.preheader.i94
  %.01720.i97 = phi ptr [ %i.ac, %bb.j ], [ %i.w, %.lr.ph.preheader.i94 ] ; 3 uses
  %i.ab = load i8, ptr %.01720.i97, align 1, !tbaa !30
  switch i8 %i.ab, label %tg3json__skip_ws.exit99 [
    i8 32, label %bb.j
    i8 13, label %bb.j
    i8 10, label %bb.j
    i8 9, label %bb.j
  ]

bb.j:                                             ; preds = %.lr.ph.i96, %.lr.ph.i96, %.lr.ph.i96, %.lr.ph.i96
  %i.ac = getelementptr inbounds nuw i8, ptr %.01720.i97, i64 1 ; 2 uses
  %exitcond.not.i98 = icmp eq ptr %i.ac, %i.m
  br i1 %exitcond.not.i98, label %tg3json__skip_ws.exit99, label %.lr.ph.i96

tg3json__skip_ws.exit99:                          ; preds = %.lr.ph.i96, %bb.j, %bb.i
  %i.ad = phi ptr [ %i.w, %bb.i ], [ %.01720.i97, %.lr.ph.i96 ], [ %scevgep.i95, %bb.j ] ; 4 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !31
  %i.ae = icmp ult ptr %i.ad, %i.m
  br i1 %i.ae, label %bb.k, label %._crit_edge204

bb.k:                                             ; preds = %tg3json__skip_ws.exit99
  %i.af = load i8, ptr %i.ad, align 1, !tbaa !30
  %i.ag = icmp eq i8 %i.af, 93
  br i1 %i.ag, label %bb.l, label %.lr.ph390.preheader

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store ptr %i.ah, ptr %0, align 8, !tbaa !31
  store i32 5, ptr %2, align 8, !tbaa !33
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  br label %tg3json__set_error.exit

.lr.ph390.preheader:                              ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.am = add i64 %1, 1
  br label %.lr.ph390

.lr.ph390:                                        ; preds = %.lr.ph390.preheader, %tg3json__reserve_bytes_parser.exit.thread
  %.045.i388 = phi i64 [ %i.an, %tg3json__reserve_bytes_parser.exit.thread ], [ 0, %.lr.ph390.preheader ] ; 5 uses
  %.0146387 = phi i64 [ %.1147, %tg3json__reserve_bytes_parser.exit.thread ], [ 0, %.lr.ph390.preheader ] ; 5 uses
  %.0148386 = phi ptr [ %.2, %tg3json__reserve_bytes_parser.exit.thread ], [ null, %.lr.ph390.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.an = add i64 %.045.i388, 1                   ; 9 uses
  %.not.i86 = icmp ugt i64 %i.an, %.0146387
  br i1 %.not.i86, label %bb.m, label %tg3json__reserve_bytes_parser.exit

bb.m:                                             ; preds = %.lr.ph390
  %.not60.i = icmp eq i64 %.0146387, 0
  %spec.select.i87 = select i1 %.not60.i, i64 8, i64 %.0146387 ; 3 uses
  %i.ao = icmp ult i64 %spec.select.i87, %i.an
  br i1 %i.ao, label %.lr.ph.i91, label %._crit_edge.i

.lr.ph.i91:                                       ; preds = %bb.m, %bb.n
  %.04666.i = phi i64 [ %i.aq, %bb.n ], [ %spec.select.i87, %bb.m ] ; 2 uses
  %i.ap = icmp slt i64 %.04666.i, 0
  br i1 %i.ap, label %._crit_edge.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i91
  %i.aq = shl nuw i64 %.04666.i, 1                ; 3 uses
  %i.ar = icmp ult i64 %i.aq, %i.an
  br i1 %i.ar, label %.lr.ph.i91, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.n, %.lr.ph.i91, %bb.m
  %.1.i88 = phi i64 [ %spec.select.i87, %bb.m ], [ %i.aq, %bb.n ], [ %i.an, %.lr.ph.i91 ] ; 4 uses
  %mul.ov.i = icmp ugt i64 %.1.i88, 768614336404564650
  br i1 %mul.ov.i, label %.preheader, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %i.as = mul i64 %.0146387, 24                   ; 3 uses
  %i.at = mul nuw i64 %.1.i88, 24                 ; 5 uses
  %i.au = tail call i64 @llvm.usub.sat.i64(i64 %i.at, i64 %i.as) ; 2 uses
  %i.av = load i64, ptr %i.aj, align 8, !tbaa !35 ; 2 uses
  %.not62.i = icmp ne i64 %i.av, 0
  %i.aw = icmp ugt i64 %i.at, %i.av
  %or.cond64.i = and i1 %.not62.i, %i.aw
  br i1 %or.cond64.i, label %.preheader, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = load i64, ptr %i.ak, align 8, !tbaa !36 ; 3 uses
  %i.ay = icmp ne i64 %i.ax, 0
  %i.az = icmp ugt i64 %i.at, %i.as               ; 2 uses
  %or.cond.i90 = and i1 %i.az, %i.ay
  br i1 %or.cond.i90, label %bb.q, label %.critedge.i89.a

bb.q:                                             ; preds = %bb.p
  %i.ba = icmp ugt i64 %i.au, %i.ax
  br i1 %i.ba, label %.preheader, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = load i64, ptr %i.al, align 8, !tbaa !28
  %i.bc = sub nuw i64 %i.ax, %i.au
  %i.bd = icmp ugt i64 %i.bb, %i.bc
  br i1 %i.bd, label %.preheader, label %.critedge.i89.a

.critedge.i89.a:                                  ; preds = %bb.r, %bb.p
  %i.be = tail call ptr @realloc(ptr noundef %.0148386, i64 noundef %i.at) #21 ; 3 uses
  %.not63.i.a = icmp eq ptr %i.be, null
  br i1 %.not63.i.a, label %.preheader, label %bb.s

bb.s:                                             ; preds = %.critedge.i89.a
  br i1 %i.az, label %bb.t, label %tg3json__reserve_bytes_parser.exit

bb.t:                                             ; preds = %bb.s
  %i.bf = sub nuw i64 %i.at, %i.as
  %i.bg = load i64, ptr %i.al, align 8, !tbaa !28
  %i.bh = add i64 %i.bf, %i.bg
  store i64 %i.bh, ptr %i.al, align 8, !tbaa !28
  br label %tg3json__reserve_bytes_parser.exit

tg3json__reserve_bytes_parser.exit:               ; preds = %.lr.ph390, %bb.t, %bb.s
  %.2 = phi ptr [ %i.be, %bb.t ], [ %i.be, %bb.s ], [ %.0148386, %.lr.ph390 ] ; 6 uses
  %.1147 = phi i64 [ %.1.i88, %bb.t ], [ %.1.i88, %bb.s ], [ %.0146387, %.lr.ph390 ]
  %i.bi = call fastcc i32 @tg3json__parse_value(ptr noundef nonnull %0, i64 noundef %i.am, ptr noundef %4), !inline_history !60
  %.not52.i = icmp eq i32 %i.bi, 0
  br i1 %.not52.i, label %.thread, label %bb.u

bb.u:                                             ; preds = %tg3json__reserve_bytes_parser.exit
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %.2, i64 %.045.i388
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !38
  %i.bk = load ptr, ptr %0, align 8, !tbaa !31    ; 5 uses
  %i.bl = load ptr, ptr %i.l, align 8, !tbaa !20  ; 8 uses
  %i.bm = icmp ult ptr %i.bk, %i.bl
  br i1 %i.bm, label %.lr.ph.preheader.i80, label %tg3json__skip_ws.exit85

.lr.ph.preheader.i80:                             ; preds = %bb.u
  %i.bn = ptrtoaddr ptr %i.bl to i64
  %i.bo = ptrtoaddr ptr %i.bk to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %scevgep.i81 = getelementptr i8, ptr %i.bk, i64 %i.bp
  br label %.lr.ph.i82

.lr.ph.i82:                                       ; preds = %bb.v, %.lr.ph.preheader.i80
  %.01720.i83 = phi ptr [ %i.br, %bb.v ], [ %i.bk, %.lr.ph.preheader.i80 ] ; 3 uses
  %i.bq = load i8, ptr %.01720.i83, align 1, !tbaa !30
  switch i8 %i.bq, label %tg3json__skip_ws.exit85 [
    i8 32, label %bb.v
    i8 13, label %bb.v
    i8 10, label %bb.v
    i8 9, label %bb.v
  ]

bb.v:                                             ; preds = %.lr.ph.i82, %.lr.ph.i82, %.lr.ph.i82, %.lr.ph.i82
  %i.br = getelementptr inbounds nuw i8, ptr %.01720.i83, i64 1 ; 2 uses
  %exitcond.not.i84 = icmp eq ptr %i.br, %i.bl
  br i1 %exitcond.not.i84, label %tg3json__skip_ws.exit85, label %.lr.ph.i82

tg3json__skip_ws.exit85:                          ; preds = %.lr.ph.i82, %bb.v, %bb.u
  %.017.lcssa.i79 = phi ptr [ %i.bk, %bb.u ], [ %.01720.i83, %.lr.ph.i82 ], [ %scevgep.i81, %bb.v ] ; 5 uses
  store ptr %.017.lcssa.i79, ptr %0, align 8, !tbaa !31
  %.not53.i = icmp ult ptr %.017.lcssa.i79, %i.bl
  br i1 %.not53.i, label %bb.w, label %.thread

bb.w:                                             ; preds = %tg3json__skip_ws.exit85
  %i.bs = load i8, ptr %.017.lcssa.i79, align 1, !tbaa !30
  switch i8 %i.bs, label %.thread [
    i8 44, label %bb.x
    i8 93, label %.thread160
  ]

bb.x:                                             ; preds = %bb.w
  %i.bt = getelementptr inbounds nuw i8, ptr %.017.lcssa.i79, i64 1 ; 6 uses
  store ptr %i.bt, ptr %0, align 8, !tbaa !31
  %i.bu = icmp ult ptr %i.bt, %i.bl
  br i1 %i.bu, label %.lr.ph.preheader.i73, label %tg3json__reserve_bytes_parser.exit.thread

.lr.ph.preheader.i73:                             ; preds = %bb.x
  %i.bv = ptrtoaddr ptr %i.bl to i64
  %i.bw = ptrtoaddr ptr %i.bt to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %scevgep.i74 = getelementptr i8, ptr %i.bt, i64 %i.bx
  br label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %bb.y, %.lr.ph.preheader.i73
  %.01720.i76 = phi ptr [ %i.bz, %bb.y ], [ %i.bt, %.lr.ph.preheader.i73 ] ; 3 uses
  %i.by = load i8, ptr %.01720.i76, align 1, !tbaa !30
  switch i8 %i.by, label %tg3json__reserve_bytes_parser.exit.thread [
    i8 32, label %bb.y
    i8 13, label %bb.y
    i8 10, label %bb.y
    i8 9, label %bb.y
  ]

bb.y:                                             ; preds = %.lr.ph.i75, %.lr.ph.i75, %.lr.ph.i75, %.lr.ph.i75
  %i.bz = getelementptr inbounds nuw i8, ptr %.01720.i76, i64 1 ; 2 uses
  %exitcond.not.i77 = icmp eq ptr %i.bz, %i.bl
  br i1 %exitcond.not.i77, label %tg3json__reserve_bytes_parser.exit.thread, label %.lr.ph.i75

.thread160:                                       ; preds = %bb.w
  %i.ca = getelementptr inbounds nuw i8, ptr %.017.lcssa.i79, i64 1
  store ptr %i.ca, ptr %0, align 8, !tbaa !31
  store i32 5, ptr %2, align 8, !tbaa !33
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.2, ptr %i.cb, align 8, !tbaa !30
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.an, ptr %i.cc, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %tg3json__set_error.exit

.thread:                                          ; preds = %tg3json__reserve_bytes_parser.exit, %tg3json__skip_ws.exit85, %bb.w
  %.1.i.ph = phi i64 [ %i.an, %bb.w ], [ %i.an, %tg3json__skip_ws.exit85 ], [ %.045.i388, %tg3json__reserve_bytes_parser.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.loopexit

tg3json__reserve_bytes_parser.exit.thread:        ; preds = %bb.y, %.lr.ph.i75, %bb.x
  %.017.lcssa.i72 = phi ptr [ %i.bt, %bb.x ], [ %.01720.i76, %.lr.ph.i75 ], [ %scevgep.i74, %bb.y ] ; 2 uses
  store ptr %.017.lcssa.i72, ptr %0, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.cd = icmp ult ptr %.017.lcssa.i72, %i.bl
  br i1 %i.cd, label %.lr.ph390, label %.loopexit

.preheader:                                       ; preds = %._crit_edge.i, %.critedge.i89.a, %bb.o, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %.not54.i205 = icmp eq i64 %.045.i388, 0
  br i1 %.not54.i205, label %._crit_edge208, label %.lr.ph207

.loopexit:                                        ; preds = %tg3json__reserve_bytes_parser.exit.thread, %.thread
  %.2.i = phi i64 [ %.1.i.ph, %.thread ], [ %i.an, %tg3json__reserve_bytes_parser.exit.thread ] ; 2 uses
  %.not55.i200 = icmp eq i64 %.2.i, 0
  br i1 %.not55.i200, label %._crit_edge204, label %.lr.ph203

.lr.ph203:                                        ; preds = %.loopexit, %.lr.ph203
  %.3.i201 = phi i64 [ %i.ce, %.lr.ph203 ], [ %.2.i, %.loopexit ]
  %i.ce = add i64 %.3.i201, -1                    ; 3 uses
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %.2, i64 %i.ce
  tail call void @tg3json_value_free(ptr noundef %i.cf), !inline_history !60
  %.not55.i = icmp eq i64 %i.ce, 0
  br i1 %.not55.i, label %._crit_edge204, label %.lr.ph203, !llvm.loop !61

._crit_edge204:                                   ; preds = %.lr.ph203, %tg3json__skip_ws.exit99, %.loopexit
  %.1149504 = phi ptr [ null, %tg3json__skip_ws.exit99 ], [ %.2, %.loopexit ], [ %.2, %.lr.ph203 ]
  tail call void @free(ptr noundef %.1149504) #20, !inline_history !60
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !21
  %.not.i70 = icmp eq ptr %i.ch, null
  br i1 %.not.i70, label %bb.z, label %tg3json__set_error.exit

bb.z:                                             ; preds = %._crit_edge204
  %i.ci = load ptr, ptr %0, align 8, !tbaa !31
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !21
  br label %tg3json__set_error.exit

.lr.ph207:                                        ; preds = %.preheader, %.lr.ph207
  %.4.i206 = phi i64 [ %i.cj, %.lr.ph207 ], [ %.045.i388, %.preheader ]
  %i.cj = add i64 %.4.i206, -1                    ; 3 uses
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %.0148386, i64 %i.cj
  tail call void @tg3json_value_free(ptr noundef %i.ck), !inline_history !60
  %.not54.i = icmp eq i64 %i.cj, 0
  br i1 %.not54.i, label %._crit_edge208, label %.lr.ph207, !llvm.loop !62

._crit_edge208:                                   ; preds = %.lr.ph207, %.preheader
  tail call void @free(ptr noundef %.0148386) #20, !inline_history !60
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !21
  %.not.i68 = icmp eq ptr %i.cm, null
  br i1 %.not.i68, label %bb.aa, label %tg3json__set_error.exit

bb.aa:                                            ; preds = %._crit_edge208
  %i.cn = load ptr, ptr %0, align 8, !tbaa !31
  store ptr %i.cn, ptr %i.cl, align 8, !tbaa !21
  br label %tg3json__set_error.exit

bb.ab:                                            ; preds = %bb.h
  %i.co = getelementptr inbounds nuw i8, ptr %.017.lcssa.i, i64 1 ; 6 uses
  store ptr %i.co, ptr %0, align 8, !tbaa !31
  %i.cp = icmp ult ptr %i.co, %i.m
  br i1 %i.cp, label %.lr.ph.preheader.i134, label %tg3json__skip_ws.exit139

.lr.ph.preheader.i134:                            ; preds = %bb.ab
  %i.cq = ptrtoaddr ptr %i.m to i64
  %i.cr = ptrtoaddr ptr %i.co to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %scevgep.i135 = getelementptr i8, ptr %i.co, i64 %i.cs
  br label %.lr.ph.i136

.lr.ph.i136:                                      ; preds = %bb.ac, %.lr.ph.preheader.i134
  %.01720.i137 = phi ptr [ %i.cu, %bb.ac ], [ %i.co, %.lr.ph.preheader.i134 ] ; 3 uses
  %i.ct = load i8, ptr %.01720.i137, align 1, !tbaa !30
  switch i8 %i.ct, label %tg3json__skip_ws.exit139 [
    i8 32, label %bb.ac
    i8 13, label %bb.ac
    i8 10, label %bb.ac
    i8 9, label %bb.ac
  ]

bb.ac:                                            ; preds = %.lr.ph.i136, %.lr.ph.i136, %.lr.ph.i136, %.lr.ph.i136
  %i.cu = getelementptr inbounds nuw i8, ptr %.01720.i137, i64 1 ; 2 uses
  %exitcond.not.i138 = icmp eq ptr %i.cu, %i.m
  br i1 %exitcond.not.i138, label %tg3json__skip_ws.exit139, label %.lr.ph.i136

tg3json__skip_ws.exit139:                         ; preds = %.lr.ph.i136, %bb.ac, %bb.ab
  %i.cv = phi ptr [ %i.co, %bb.ab ], [ %.01720.i137, %.lr.ph.i136 ], [ %scevgep.i135, %bb.ac ] ; 4 uses
  store ptr %i.cv, ptr %0, align 8, !tbaa !31
  %i.cw = icmp ult ptr %i.cv, %i.m
  br i1 %i.cw, label %bb.ad, label %._crit_edge199

bb.ad:                                            ; preds = %tg3json__skip_ws.exit139
  %i.cx = load i8, ptr %i.cv, align 1, !tbaa !30
  %i.cy = icmp eq i8 %i.cx, 125
  br i1 %i.cy, label %bb.ae, label %.lr.ph384

bb.ae:                                            ; preds = %bb.ad
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  store ptr %i.cz, ptr %0, align 8, !tbaa !31
  store i32 6, ptr %2, align 8, !tbaa !33
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, i8 0, i64 16, i1 false)
  br label %tg3json__set_error.exit

.lr.ph384:                                        ; preds = %bb.ad
  %i.db = add i64 %1, 1
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph384, %.loopexit295
  %.068.i382 = phi i64 [ 0, %.lr.ph384 ], [ %i.dx, %.loopexit295 ] ; 6 uses
  %.0335381 = phi i64 [ 0, %.lr.ph384 ], [ %.1336, %.loopexit295 ] ; 5 uses
  %.0337380 = phi ptr [ null, %.lr.ph384 ], [ %.3, %.loopexit295 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 0, ptr %i.b, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.df = call fastcc i32 @tg3json__parse_string_raw(ptr noundef nonnull %0, ptr noundef %i.a, ptr noundef %i.b), !inline_history !63
  %.not.i57 = icmp eq i32 %i.df, 0
  br i1 %.not.i57, label %.thread166, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dg = load ptr, ptr %0, align 8, !tbaa !31    ; 5 uses
  %i.dh = load ptr, ptr %i.l, align 8, !tbaa !20  ; 7 uses
  %i.di = icmp ult ptr %i.dg, %i.dh
  br i1 %i.di, label %.lr.ph.preheader.i126, label %tg3json__skip_ws.exit131

.lr.ph.preheader.i126:                            ; preds = %bb.ag
  %i.dj = ptrtoaddr ptr %i.dh to i64
  %i.dk = ptrtoaddr ptr %i.dg to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %scevgep.i127 = getelementptr i8, ptr %i.dg, i64 %i.dl
  br label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %bb.ah, %.lr.ph.preheader.i126
  %.01720.i129 = phi ptr [ %i.dn, %bb.ah ], [ %i.dg, %.lr.ph.preheader.i126 ] ; 3 uses
  %i.dm = load i8, ptr %.01720.i129, align 1, !tbaa !30
  switch i8 %i.dm, label %tg3json__skip_ws.exit131 [
    i8 32, label %bb.ah
    i8 13, label %bb.ah
    i8 10, label %bb.ah
    i8 9, label %bb.ah
  ]

bb.ah:                                            ; preds = %.lr.ph.i128, %.lr.ph.i128, %.lr.ph.i128, %.lr.ph.i128
  %i.dn = getelementptr inbounds nuw i8, ptr %.01720.i129, i64 1 ; 2 uses
  %exitcond.not.i130 = icmp eq ptr %i.dn, %i.dh
  br i1 %exitcond.not.i130, label %tg3json__skip_ws.exit131, label %.lr.ph.i128

tg3json__skip_ws.exit131:                         ; preds = %.lr.ph.i128, %bb.ah, %bb.ag
  %.017.lcssa.i125 = phi ptr [ %i.dg, %bb.ag ], [ %.01720.i129, %.lr.ph.i128 ], [ %scevgep.i127, %bb.ah ] ; 4 uses
  store ptr %.017.lcssa.i125, ptr %0, align 8, !tbaa !31
  %.not79.i = icmp ult ptr %.017.lcssa.i125, %i.dh
  br i1 %.not79.i, label %bb.ai, label %.thread166.sink.split

bb.ai:                                            ; preds = %tg3json__skip_ws.exit131
  %i.do = load i8, ptr %.017.lcssa.i125, align 1, !tbaa !30
  %.not80.i = icmp eq i8 %i.do, 58
  br i1 %.not80.i, label %bb.aj, label %.thread166.sink.split

bb.aj:                                            ; preds = %bb.ai
  %i.dp = getelementptr inbounds nuw i8, ptr %.017.lcssa.i125, i64 1 ; 6 uses
  store ptr %i.dp, ptr %0, align 8, !tbaa !31
  %i.dq = icmp ult ptr %i.dp, %i.dh
  br i1 %i.dq, label %.lr.ph.preheader.i119, label %tg3json__skip_ws.exit124

.lr.ph.preheader.i119:                            ; preds = %bb.aj
  %i.dr = ptrtoaddr ptr %i.dh to i64
  %i.ds = ptrtoaddr ptr %i.dp to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %scevgep.i120 = getelementptr i8, ptr %i.dp, i64 %i.dt
  br label %.lr.ph.i121

.lr.ph.i121:                                      ; preds = %bb.ak, %.lr.ph.preheader.i119
  %.01720.i122 = phi ptr [ %i.dv, %bb.ak ], [ %i.dp, %.lr.ph.preheader.i119 ] ; 3 uses
  %i.du = load i8, ptr %.01720.i122, align 1, !tbaa !30
  switch i8 %i.du, label %tg3json__skip_ws.exit124 [
    i8 32, label %bb.ak
    i8 13, label %bb.ak
    i8 10, label %bb.ak
    i8 9, label %bb.ak
  ]

bb.ak:                                            ; preds = %.lr.ph.i121, %.lr.ph.i121, %.lr.ph.i121, %.lr.ph.i121
  %i.dv = getelementptr inbounds nuw i8, ptr %.01720.i122, i64 1 ; 2 uses
  %exitcond.not.i123 = icmp eq ptr %i.dv, %i.dh
  br i1 %exitcond.not.i123, label %tg3json__skip_ws.exit124, label %.lr.ph.i121

tg3json__skip_ws.exit124:                         ; preds = %.lr.ph.i121, %bb.ak, %bb.aj
  %.017.lcssa.i118 = phi ptr [ %i.dp, %bb.aj ], [ %.01720.i122, %.lr.ph.i121 ], [ %scevgep.i120, %bb.ak ]
  store ptr %.017.lcssa.i118, ptr %0, align 8, !tbaa !31
  %i.dw = call fastcc i32 @tg3json__parse_value(ptr noundef nonnull %0, i64 noundef %i.db, ptr noundef %3), !inline_history !63
  %.not81.i = icmp eq i32 %i.dw, 0
  br i1 %.not81.i, label %.thread166.sink.split, label %bb.al

bb.al:                                            ; preds = %tg3json__skip_ws.exit124
  %i.dx = add i64 %.068.i382, 1                   ; 9 uses
  %.not.i320 = icmp ugt i64 %i.dx, %.0335381
  br i1 %.not.i320, label %bb.am, label %tg3json__reserve_bytes_parser.exit332

bb.am:                                            ; preds = %bb.al
  %.not60.i321 = icmp eq i64 %.0335381, 0
  %spec.select.i322 = select i1 %.not60.i321, i64 8, i64 %.0335381 ; 3 uses
  %i.dy = icmp ult i64 %spec.select.i322, %i.dx
  br i1 %i.dy, label %.lr.ph.i330, label %._crit_edge.i323

.lr.ph.i330:                                      ; preds = %bb.am, %bb.an
  %.04666.i331 = phi i64 [ %i.ea, %bb.an ], [ %spec.select.i322, %bb.am ] ; 2 uses
  %i.dz = icmp slt i64 %.04666.i331, 0
  br i1 %i.dz, label %._crit_edge.i323, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i330
  %i.ea = shl nuw i64 %.04666.i331, 1             ; 3 uses
  %i.eb = icmp ult i64 %i.ea, %i.dx
  br i1 %i.eb, label %.lr.ph.i330, label %._crit_edge.i323, !llvm.loop !0

._crit_edge.i323:                                 ; preds = %bb.an, %.lr.ph.i330, %bb.am
  %.1.i = phi i64 [ %spec.select.i322, %bb.am ], [ %i.dx, %.lr.ph.i330 ], [ %i.ea, %bb.an ] ; 4 uses
  %mul.ov.i324 = icmp ugt i64 %.1.i, 768614336404564650
  br i1 %mul.ov.i324, label %bb.au, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.i323
  %i.ec = mul i64 %.0335381, 24                   ; 3 uses
  %i.ed = mul nuw i64 %.1.i, 24                   ; 5 uses
  %i.ee = tail call i64 @llvm.usub.sat.i64(i64 %i.ed, i64 %i.ec) ; 2 uses
  %i.ef = load i64, ptr %i.dc, align 8, !tbaa !35 ; 2 uses
  %.not62.i327 = icmp ne i64 %i.ef, 0
  %i.eg = icmp ugt i64 %i.ed, %i.ef
  %or.cond64.i328 = and i1 %.not62.i327, %i.eg
  br i1 %or.cond64.i328, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eh = load i64, ptr %i.dd, align 8, !tbaa !36 ; 3 uses
  %i.ei = icmp ne i64 %i.eh, 0
  %i.ej = icmp ugt i64 %i.ed, %i.ec               ; 2 uses
  %or.cond.i329 = and i1 %i.ej, %i.ei
  br i1 %or.cond.i329, label %bb.aq, label %.critedge.i325

bb.aq:                                            ; preds = %bb.ap
  %i.ek = icmp ugt i64 %i.ee, %i.eh
  br i1 %i.ek, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.el = load i64, ptr %i.de, align 8, !tbaa !28
  %i.em = sub nuw i64 %i.eh, %i.ee
  %i.en = icmp ugt i64 %i.el, %i.em
  br i1 %i.en, label %bb.au, label %.critedge.i325

.critedge.i325:                                   ; preds = %bb.ar, %bb.ap
  %i.eo = tail call ptr @realloc(ptr noundef %.0337380, i64 noundef %i.ed) #21 ; 3 uses
  %.not63.i326 = icmp eq ptr %i.eo, null
  br i1 %.not63.i326, label %bb.au, label %bb.as

bb.as:                                            ; preds = %.critedge.i325
  br i1 %i.ej, label %bb.at, label %tg3json__reserve_bytes_parser.exit332

bb.at:                                            ; preds = %bb.as
  %i.ep = sub nuw i64 %i.ed, %i.ec
  %i.eq = load i64, ptr %i.de, align 8, !tbaa !28
  %i.er = add i64 %i.ep, %i.eq
  store i64 %i.er, ptr %i.de, align 8, !tbaa !28
  br label %tg3json__reserve_bytes_parser.exit332

bb.au:                                            ; preds = %._crit_edge.i323, %.critedge.i325, %bb.ao, %bb.aq, %bb.ar
  %i.es = load ptr, ptr %i.a, align 8, !tbaa !17
  br label %.preheader173

tg3json__reserve_bytes_parser.exit332:            ; preds = %bb.al, %bb.at, %bb.as
  %.3 = phi ptr [ %i.eo, %bb.at ], [ %i.eo, %bb.as ], [ %.0337380, %bb.al ] ; 7 uses
  %.1336 = phi i64 [ %.1.i, %bb.at ], [ %.1.i, %bb.as ], [ %.0335381, %bb.al ]
  %i.et = load ptr, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %.3, i64 %.068.i382 ; 4 uses
  store ptr %i.et, ptr %i.eu, align 8, !tbaa !41
  %i.ev = load i64, ptr %i.b, align 8, !tbaa !24
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store i64 %i.ev, ptr %i.ew, align 8, !tbaa !42
  %i.ex = load i64, ptr %i.dc, align 8, !tbaa !35
  %i.ey = add i64 %i.ex, -1
  %or.cond.i333 = icmp ult i64 %i.ey, 23
  br i1 %or.cond.i333, label %tg3json__parser_alloc.exit.thread, label %bb.av

bb.av:                                            ; preds = %tg3json__reserve_bytes_parser.exit332
  %i.ez = load i64, ptr %i.dd, align 8, !tbaa !36 ; 3 uses
  %.not21.i = icmp eq i64 %i.ez, 0
  br i1 %.not21.i, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fa = icmp ult i64 %i.ez, 24
  br i1 %i.fa, label %tg3json__parser_alloc.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fb = load i64, ptr %i.de, align 8, !tbaa !28
  %i.fc = add i64 %i.ez, -24
  %i.fd = icmp ugt i64 %i.fb, %i.fc
  br i1 %i.fd, label %tg3json__parser_alloc.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.av
  %i.fe = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #22 ; 3 uses
  %.not22.i = icmp eq ptr %i.fe, null
  br i1 %.not22.i, label %tg3json__parser_alloc.exit.thread, label %bb.az

tg3json__parser_alloc.exit.thread:                ; preds = %bb.aw, %tg3json__reserve_bytes_parser.exit332, %bb.ax, %bb.ay
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store ptr null, ptr %i.ff, align 8, !tbaa !43
  br label %.preheader173

bb.az:                                            ; preds = %bb.ay
  %i.fg = load i64, ptr %i.de, align 8, !tbaa !28
  %i.fh = add i64 %i.fg, 24
  store i64 %i.fh, ptr %i.de, align 8, !tbaa !28
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store ptr %i.fe, ptr %i.fi, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fe, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !38
  %i.fj = load ptr, ptr %0, align 8, !tbaa !31    ; 5 uses
  %i.fk = load ptr, ptr %i.l, align 8, !tbaa !20  ; 8 uses
  %i.fl = icmp ult ptr %i.fj, %i.fk
  br i1 %i.fl, label %.lr.ph.preheader.i112, label %tg3json__skip_ws.exit117

.lr.ph.preheader.i112:                            ; preds = %bb.az
  %i.fm = ptrtoaddr ptr %i.fk to i64
  %i.fn = ptrtoaddr ptr %i.fj to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %scevgep.i113 = getelementptr i8, ptr %i.fj, i64 %i.fo
  br label %.lr.ph.i114

.lr.ph.i114:                                      ; preds = %bb.ba, %.lr.ph.preheader.i112
  %.01720.i115 = phi ptr [ %i.fq, %bb.ba ], [ %i.fj, %.lr.ph.preheader.i112 ] ; 3 uses
  %i.fp = load i8, ptr %.01720.i115, align 1, !tbaa !30
  switch i8 %i.fp, label %tg3json__skip_ws.exit117 [
    i8 32, label %bb.ba
    i8 13, label %bb.ba
    i8 10, label %bb.ba
    i8 9, label %bb.ba
  ]

bb.ba:                                            ; preds = %.lr.ph.i114, %.lr.ph.i114, %.lr.ph.i114, %.lr.ph.i114
  %i.fq = getelementptr inbounds nuw i8, ptr %.01720.i115, i64 1 ; 2 uses
  %exitcond.not.i116 = icmp eq ptr %i.fq, %i.fk
  br i1 %exitcond.not.i116, label %tg3json__skip_ws.exit117, label %.lr.ph.i114

tg3json__skip_ws.exit117:                         ; preds = %.lr.ph.i114, %bb.ba, %bb.az
  %.017.lcssa.i111 = phi ptr [ %i.fj, %bb.az ], [ %.01720.i115, %.lr.ph.i114 ], [ %scevgep.i113, %bb.ba ] ; 5 uses
  store ptr %.017.lcssa.i111, ptr %0, align 8, !tbaa !31
  %.not84.i = icmp ult ptr %.017.lcssa.i111, %i.fk
  br i1 %.not84.i, label %bb.bb, label %.thread166

bb.bb:                                            ; preds = %tg3json__skip_ws.exit117
  %i.fr = load i8, ptr %.017.lcssa.i111, align 1, !tbaa !30
  switch i8 %i.fr, label %.thread166 [
    i8 44, label %bb.bc
    i8 125, label %.thread169
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.fs = getelementptr inbounds nuw i8, ptr %.017.lcssa.i111, i64 1 ; 6 uses
  store ptr %i.fs, ptr %0, align 8, !tbaa !31
  %i.ft = icmp ult ptr %i.fs, %i.fk
  br i1 %i.ft, label %.lr.ph.preheader.i105, label %.loopexit295

.lr.ph.preheader.i105:                            ; preds = %bb.bc
  %i.fu = ptrtoaddr ptr %i.fk to i64
  %i.fv = ptrtoaddr ptr %i.fs to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %scevgep.i106 = getelementptr i8, ptr %i.fs, i64 %i.fw
  br label %.lr.ph.i107

.lr.ph.i107:                                      ; preds = %bb.bd, %.lr.ph.preheader.i105
  %.01720.i108 = phi ptr [ %i.fy, %bb.bd ], [ %i.fs, %.lr.ph.preheader.i105 ] ; 3 uses
  %i.fx = load i8, ptr %.01720.i108, align 1, !tbaa !30
  switch i8 %i.fx, label %.loopexit295 [
    i8 32, label %bb.bd
    i8 13, label %bb.bd
    i8 10, label %bb.bd
    i8 9, label %bb.bd
  ]

bb.bd:                                            ; preds = %.lr.ph.i107, %.lr.ph.i107, %.lr.ph.i107, %.lr.ph.i107
  %i.fy = getelementptr inbounds nuw i8, ptr %.01720.i108, i64 1 ; 2 uses
  %exitcond.not.i109 = icmp eq ptr %i.fy, %i.fk
  br i1 %exitcond.not.i109, label %.loopexit295, label %.lr.ph.i107

.thread169:                                       ; preds = %bb.bb
  %i.fz = getelementptr inbounds nuw i8, ptr %.017.lcssa.i111, i64 1
  store ptr %i.fz, ptr %0, align 8, !tbaa !31
  store i32 6, ptr %2, align 8, !tbaa !33
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.3, ptr %i.ga, align 8, !tbaa !30
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.dx, ptr %i.gb, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %tg3json__set_error.exit

.thread166.sink.split:                            ; preds = %tg3json__skip_ws.exit124, %tg3json__skip_ws.exit131, %bb.ai
  %i.gc = load ptr, ptr %i.a, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.gc) #20
  br label %.thread166

.thread166:                                       ; preds = %bb.af, %tg3json__skip_ws.exit117, %bb.bb, %.thread166.sink.split
  %.1338 = phi ptr [ %.0337380, %.thread166.sink.split ], [ %.3, %tg3json__skip_ws.exit117 ], [ %.3, %bb.bb ], [ %.0337380, %bb.af ]
  %.1.i58.ph = phi i64 [ %.068.i382, %.thread166.sink.split ], [ %i.dx, %tg3json__skip_ws.exit117 ], [ %i.dx, %bb.bb ], [ %.068.i382, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.loopexit174

.loopexit295:                                     ; preds = %bb.bd, %.lr.ph.i107, %bb.bc
  %.017.lcssa.i104 = phi ptr [ %i.fs, %bb.bc ], [ %.01720.i108, %.lr.ph.i107 ], [ %scevgep.i106, %bb.bd ] ; 2 uses
  store ptr %.017.lcssa.i104, ptr %0, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.gd = icmp ult ptr %.017.lcssa.i104, %i.fk
  br i1 %i.gd, label %bb.af, label %.loopexit174

.preheader173:                                    ; preds = %tg3json__parser_alloc.exit.thread, %bb.au
  %.3344 = phi ptr [ %.0337380, %bb.au ], [ %.3, %tg3json__parser_alloc.exit.thread ] ; 2 uses
  %.sink = phi ptr [ %i.es, %bb.au ], [ %i.et, %tg3json__parser_alloc.exit.thread ]
  tail call void @free(ptr noundef %.sink) #20
  call void @tg3json_value_free(ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.not85.i193 = icmp eq i64 %.068.i382, 0
  br i1 %.not85.i193, label %._crit_edge, label %.lr.ph

.loopexit174:                                     ; preds = %.loopexit295, %.thread166
  %.2339 = phi ptr [ %.1338, %.thread166 ], [ %.3, %.loopexit295 ] ; 3 uses
  %.2.i55 = phi i64 [ %.1.i58.ph, %.thread166 ], [ %i.dx, %.loopexit295 ] ; 2 uses
  %.not87.i195 = icmp eq i64 %.2.i55, 0
  br i1 %.not87.i195, label %._crit_edge199, label %.lr.ph198

.lr.ph198:                                        ; preds = %.loopexit174, %bb.bf
  %.3.i56196 = phi i64 [ %i.ge, %bb.bf ], [ %.2.i55, %.loopexit174 ]
  %i.ge = add i64 %.3.i56196, -1                  ; 3 uses
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr %.2339, i64 %i.ge ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !41
  tail call void @free(ptr noundef %i.gg) #20, !inline_history !63
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 16 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !43 ; 2 uses
  %.not88.i = icmp eq ptr %i.gi, null
  br i1 %.not88.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.lr.ph198
  tail call void @tg3json_value_free(ptr noundef nonnull %i.gi), !inline_history !63
  %i.gj = load ptr, ptr %i.gh, align 8, !tbaa !43
  tail call void @free(ptr noundef %i.gj) #20, !inline_history !63
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.lr.ph198
  %.not87.i = icmp eq i64 %i.ge, 0
  br i1 %.not87.i, label %._crit_edge199, label %.lr.ph198, !llvm.loop !64

._crit_edge199:                                   ; preds = %bb.bf, %tg3json__skip_ws.exit139, %.loopexit174
  %.2339509 = phi ptr [ null, %tg3json__skip_ws.exit139 ], [ %.2339, %.loopexit174 ], [ %.2339, %bb.bf ]
  tail call void @free(ptr noundef %.2339509) #20, !inline_history !63
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !21
  %.not.i102 = icmp eq ptr %i.gl, null
  br i1 %.not.i102, label %bb.bg, label %tg3json__set_error.exit

bb.bg:                                            ; preds = %._crit_edge199
  %i.gm = load ptr, ptr %0, align 8, !tbaa !31
  store ptr %i.gm, ptr %i.gk, align 8, !tbaa !21
  br label %tg3json__set_error.exit

.lr.ph:                                           ; preds = %.preheader173, %bb.bi
  %.4.i60194 = phi i64 [ %i.gn, %bb.bi ], [ %.068.i382, %.preheader173 ]
  %i.gn = add i64 %.4.i60194, -1                  ; 3 uses
end_hunk_0
