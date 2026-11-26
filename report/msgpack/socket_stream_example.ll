Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msgpack/original/socket_stream_example?download=true
inline.NumInlined: 771
inline.NumDeleted: 324
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN7msgpack2v26parserI17json_like_printer10do_nothingE13expand_bufferEm:bb.a
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = load atomic i32, ptr %i.g seq_cst, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load i8, ptr %i.j, align 8, !tbaa !83, !range !117, !noundef !16
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %thread-pre-split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !30
  %i.n = add i64 %i.m, -4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !28
  %i.q = add i64 %i.n, %i.p                       ; 2 uses
  store i64 %i.q, ptr %i.o, align 8, !tbaa !28
  store i64 4, ptr %i.a, align 8, !tbaa !30
  store i64 4, ptr %i.c, align 8, !tbaa !31
  %.not = icmp ult i64 %i.q, %1
  br i1 %.not, label %.thread, label %bb.w

thread-pre-split:                                 ; preds = %bb.b, %bb.c
  %.pr = load i64, ptr %i.c, align 8, !tbaa !31
  %.pre.pre = load i64, ptr %i.a, align 8, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split, %bb.a
  %.pre = phi i64 [ %.pre.pre, %thread-pre-split ], [ %i.b, %bb.a ] ; 2 uses
  %i.r = phi i64 [ %.pr, %thread-pre-split ], [ %i.d, %bb.a ] ; 3 uses
  %i.s = icmp eq i64 %i.r, 4
  br i1 %i.s, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.d, %bb.e
  %i.t = phi i64 [ 4, %bb.d ], [ %.pre, %bb.e ]   ; 3 uses
  %i.u = xor i64 %i.t, -1
  %i.v = icmp ugt i64 %1, %i.u
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread
  %i.w = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.w, align 8, !tbaa !38
  tail call void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

bb.g:                                             ; preds = %.thread
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !28
  %i.z = add i64 %i.y, %i.t
  %i.aa = add i64 %i.t, %1                        ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.036.in = phi i64 [ %i.z, %bb.g ], [ %.036, %bb.i ]
  %.036 = shl i64 %.036.in, 1                     ; 4 uses
  %i.ab = icmp ult i64 %.036, %i.aa
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.not49 = icmp sgt i64 %.036, 0
  br i1 %.not49, label %bb.h, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.238 = phi i64 [ %i.aa, %bb.i ], [ %.036, %bb.h ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !29
  %i.ae = tail call ptr @realloc(ptr noundef %i.ad, i64 noundef %.238) #28 ; 2 uses
  %.not50 = icmp eq ptr %i.ae, null
  br i1 %.not50, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.af, align 8, !tbaa !38
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

bb.l:                                             ; preds = %bb.j
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !29
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !30
  %i.ah = sub i64 %.238, %i.ag
  store i64 %i.ah, ptr %i.x, align 8, !tbaa !28
  br label %bb.w

bb.m:                                             ; preds = %bb.e
  %i.ai = sub i64 %.pre, %i.r                     ; 4 uses
  %i.aj = sub i64 -5, %i.ai
  %i.ak = icmp ugt i64 %1, %i.aj
  br i1 %i.ak, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.am = load i64, ptr %i.al, align 8, !tbaa !78
  %i.an = add i64 %1, 4
  %i.ao = add i64 %i.an, %i.ai                    ; 2 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ap = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ap, align 8, !tbaa !38
  tail call void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

bb.o:                                             ; preds = %.preheader, %bb.p
  %.0 = phi i64 [ %i.ar, %bb.p ], [ %i.am, %.preheader ] ; 4 uses
  %i.aq = icmp ult i64 %.0, %i.ao
  br i1 %i.aq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.not47 = icmp sgt i64 %.0, 0
  %i.ar = shl nuw i64 %.0, 1
  br i1 %.not47, label %bb.o, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.2 = phi i64 [ %i.ao, %bb.p ], [ %.0, %bb.o ]  ; 2 uses
  %i.as = tail call noalias ptr @malloc(i64 noundef %.2) #26 ; 4 uses
  %.not48 = icmp eq ptr %i.as, null
  br i1 %.not48, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.at = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.at, align 8, !tbaa !38
  tail call void @__cxa_throw(ptr nonnull %i.at, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

bb.s:                                             ; preds = %bb.q
  store i32 1, ptr %i.as, align 4, !tbaa !80
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !29 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.au, ptr align 1 %i.ax, i64 %i.ai, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !83, !range !117, !noundef !16
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i8 0, ptr %i.ay, align 8, !tbaa !83
  br label %_ZN7msgpack2v16detail10decr_countEPv.exit

bb.u:                                             ; preds = %bb.s
  %i.bb = atomicrmw add ptr %i.aw, i32 -1 seq_cst, align 4
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %bb.v, label %_ZN7msgpack2v16detail10decr_countEPv.exit

bb.v:                                             ; preds = %bb.u
  tail call void @free(ptr noundef %i.aw) #23
  br label %_ZN7msgpack2v16detail10decr_countEPv.exit

_ZN7msgpack2v16detail10decr_countEPv.exit:        ; preds = %bb.v, %bb.u, %bb.t
  store ptr %i.as, ptr %i.av, align 8, !tbaa !29
  %i.bd = add i64 %i.ai, 4                        ; 2 uses
  store i64 %i.bd, ptr %i.a, align 8, !tbaa !30
  %i.be = sub i64 %.2, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !28
  store i64 4, ptr %i.c, align 8, !tbaa !31
  br label %bb.w

bb.w:                                             ; preds = %bb.d, %_ZN7msgpack2v16detail10decr_countEPv.exit, %bb.l
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE7executeEPKcmRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %4 = alloca %"struct.msgpack::v2::detail::context<json_like_printer>::array_sv", align 8 ; 4 uses
  %5 = alloca %"struct.msgpack::v2::detail::context<json_like_printer>::array_ev", align 8 ; 4 uses
  %6 = alloca %"struct.msgpack::v2::detail::context<json_like_printer>::map_sv", align 8 ; 4 uses
  %7 = alloca %"struct.msgpack::v2::detail::context<json_like_printer>::map_ev", align 8 ; 4 uses
  %8 = alloca %"struct.msgpack::v2::detail::context<json_like_printer>::array_sv", align 8 ; 4 uses
  %9 = alloca %"struct.msgpack::v2::detail::context<json_like_printer>::array_ev", align 8 ; 4 uses
  %10 = alloca %"struct.msgpack::v2::detail::context<json_like_printer>::array_sv", align 8 ; 4 uses
  %11 = alloca %"struct.msgpack::v2::detail::context<json_like_printer>::array_ev", align 8 ; 4 uses
  %12 = alloca %"struct.msgpack::v2::detail::context<json_like_printer>::map_sv", align 8 ; 4 uses
  %13 = alloca %"struct.msgpack::v2::detail::context<json_like_printer>::map_ev", align 8 ; 4 uses
  %14 = alloca %"struct.msgpack::v2::detail::context<json_like_printer>::map_sv", align 8 ; 4 uses
  %15 = alloca %"struct.msgpack::v2::detail::context<json_like_printer>::map_ev", align 8 ; 4 uses
  store ptr %1, ptr %0, align 8, !tbaa !90
  %i.a = load i64, ptr %3, align 8, !tbaa !13     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 74 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !91
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.e = icmp samesign eq i64 %i.a, %2
  br i1 %i.e, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 32 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 20 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 27 uses
  %i.j = ptrtoint ptr %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.cg
  %i.k = phi ptr [ %i.om, %bb.cg ], [ %i.b, %.preheader ] ; 6 uses
  %.0363 = phi ptr [ %.1364, %bb.cg ], [ null, %.preheader ] ; 2 uses
  %.0 = phi i1 [ %.23, %bb.cg ], [ false, %.preheader ]
  %i.l = load i32, ptr %i.f, align 8, !tbaa !74
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.x

bb.c:                                             ; preds = %bb.b
  %i.n = load i8, ptr %i.k, align 1, !tbaa !61    ; 10 uses
  %i.o = zext i8 %i.n to i64                      ; 2 uses
  %i.p = icmp sgt i8 %i.n, -1
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = call noundef zeroext i1 @_ZN17json_like_visitor22visit_positive_integerEm(ptr noundef nonnull align 8 dereferenceable(9) %i.g, i64 noundef %i.o)
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !91   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store ptr %i.s, ptr %i.c, align 8, !tbaa !91
  br i1 %i.q, label %bb.e, label %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit.thread

_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit.thread: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.u = load ptr, ptr %0, align 8, !tbaa !90
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  store i64 %i.x, ptr %3, align 8, !tbaa !13
  br label %.thread

bb.e:                                             ; preds = %bb.d
  %i.y = call noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack7consumeERS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(160) %0) ; 2 uses
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %.sink.split, label %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit

_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit: ; preds = %bb.e
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.aa = load ptr, ptr %0, align 8, !tbaa !90
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  store i64 %i.ad, ptr %3, align 8, !tbaa !13
  store i32 0, ptr %i.f, align 8, !tbaa !74
  br label %.thread

bb.f:                                             ; preds = %bb.c
  %i.ae = icmp samesign ugt i8 %i.n, -33
  br i1 %i.ae, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.af = sext i8 %i.n to i64
  %i.ag = call noundef zeroext i1 @_ZN17json_like_visitor22visit_negative_integerEl(ptr noundef nonnull align 8 dereferenceable(9) %i.g, i64 noundef %i.af)
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !91  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store ptr %i.ai, ptr %i.c, align 8, !tbaa !91
  br i1 %i.ag, label %bb.h, label %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit535.thread

_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit535.thread: ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.ak = load ptr, ptr %0, align 8, !tbaa !90
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  store i64 %i.an, ptr %3, align 8, !tbaa !13
  br label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ao = call noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack7consumeERS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(160) %0) ; 2 uses
  %.not.i534 = icmp eq i32 %i.ao, 0
  br i1 %.not.i534, label %.sink.split, label %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit535

_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit535: ; preds = %bb.h
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.aq = load ptr, ptr %0, align 8, !tbaa !90
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  store i64 %i.at, ptr %3, align 8, !tbaa !13
  store i32 0, ptr %i.f, align 8, !tbaa !74
  br label %.thread

bb.i:                                             ; preds = %bb.f
  %i.au = icmp samesign ugt i8 %i.n, -61
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr [4 x i8], ptr @__const._ZN7msgpack2v26detail7contextI17json_like_printerE7executeEPKcmRm.trail, i64 %i.o
  %i.aw = getelementptr i8, ptr %i.av, i64 -784
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !89
  %i.ay = zext i32 %i.ax to i64
  store i64 %i.ay, ptr %i.h, align 8, !tbaa !73
  %i.az = load i8, ptr %i.k, align 1, !tbaa !61
  %i.ba = and i8 %i.az, 31
  %i.bb = zext nneg i8 %i.ba to i32
  br label %.thread661

bb.k:                                             ; preds = %bb.i
  %i.bc = and i8 %i.n, -32
  %or.cond55 = icmp eq i8 %i.bc, -96
  br i1 %or.cond55, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bd = and i8 %i.n, 31                         ; 2 uses
  %i.be = zext nneg i8 %i.bd to i64
  store i64 %i.be, ptr %i.h, align 8, !tbaa !73
  %i.bf = icmp eq i8 %i.bd, 0
  br i1 %i.bf, label %bb.m, label %.thread661

bb.m:                                             ; preds = %bb.l
  %i.bg = call noundef zeroext i1 @_ZN17json_like_visitor9visit_strEPKcj(ptr noundef nonnull align 8 dereferenceable(9) %i.g, ptr noundef %.0363, i32 noundef 0)
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !91  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store ptr %i.bi, ptr %i.c, align 8, !tbaa !91
  br i1 %i.bg, label %bb.n, label %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit538.thread

_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit538.thread: ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bk = load ptr, ptr %0, align 8, !tbaa !90
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  store i64 %i.bn, ptr %3, align 8, !tbaa !13
  br label %.thread

bb.n:                                             ; preds = %bb.m
  %i.bo = call noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack7consumeERS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(160) %0) ; 2 uses
  %.not.i537 = icmp eq i32 %i.bo, 0
  br i1 %.not.i537, label %.sink.split, label %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit538

_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit538: ; preds = %bb.n
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.bq = load ptr, ptr %0, align 8, !tbaa !90
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  store i64 %i.bt, ptr %3, align 8, !tbaa !13
  store i32 0, ptr %i.f, align 8, !tbaa !74
  br label %.thread

bb.o:                                             ; preds = %bb.k
  %i.bu = and i8 %i.n, -16
  %or.cond57 = icmp eq i8 %i.bu, -112
  br i1 %or.cond57, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %0, ptr %4, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %0, ptr %5, align 8, !tbaa !85
  %i.bv = call noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE15start_aggregateINS_2v16detail7fix_tagENS4_8array_svENS4_8array_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.k, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %.not461 = icmp eq i32 %i.bv, 0
  br i1 %.not461, label %bb.x, label %.thread

bb.q:                                             ; preds = %bb.o
  %i.bw = icmp samesign ult i8 %i.n, -112
  br i1 %i.bw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %0, ptr %6, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %0, ptr %7, align 8, !tbaa !85
  %i.bx = call noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE15start_aggregateINS_2v16detail7fix_tagENS4_6map_svENS4_6map_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %i.k, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.not460 = icmp eq i32 %i.bx, 0
  br i1 %.not460, label %bb.x, label %.thread

bb.s:                                             ; preds = %bb.q
  switch i8 %i.n, label %bb.w [
    i8 -62, label %bb.t
    i8 -61, label %bb.u
    i8 -64, label %bb.v
  ]

bb.t:                                             ; preds = %bb.s
  %i.by = call noundef zeroext i1 @_ZN17json_like_visitor13visit_booleanEb(ptr noundef nonnull align 8 dereferenceable(9) %i.g, i1 noundef zeroext false)
  %i.bz = call noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext %i.by, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 2 uses
  %.not459 = icmp eq i32 %i.bz, 0
  br i1 %.not459, label %bb.x, label %.thread

bb.u:                                             ; preds = %bb.s
  %i.ca = call noundef zeroext i1 @_ZN17json_like_visitor13visit_booleanEb(ptr noundef nonnull align 8 dereferenceable(9) %i.g, i1 noundef zeroext true)
  %i.cb = call noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 2 uses
  %.not458 = icmp eq i32 %i.cb, 0
  br i1 %.not458, label %bb.x, label %.thread

bb.v:                                             ; preds = %bb.s
  %i.cc = call noundef zeroext i1 @_ZN17json_like_visitor9visit_nilEv(ptr noundef nonnull align 8 dereferenceable(9) %i.g)
  %i.cd = call noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext %i.cc, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 2 uses
  %.not = icmp eq i32 %i.cd, 0
  br i1 %.not, label %bb.x, label %.thread

bb.w:                                             ; preds = %bb.s
  %i.ce = load ptr, ptr %0, align 8, !tbaa !90
  %i.cf = ptrtoint ptr %i.k to i64
end_hunk_0
begin_hunk_1_@_ZN7msgpack2v26detail7contextI17json_like_printerE7executeEPKcmRm:bb.a
  store i64 %i.lw, ptr %i.h, align 8, !tbaa !73
  %i.lx = icmp eq i32 %i.lu, 0
  br i1 %i.lx, label %bb.bq, label %.sink.split1354

bb.bq:                                            ; preds = %bb.bp
  %i.ly = call noundef zeroext i1 @_ZN17json_like_visitor9visit_strEPKcj(ptr noundef nonnull align 8 dereferenceable(9) %i.g, ptr noundef nonnull %i.co, i32 noundef %i.lv)
  %i.lz = load ptr, ptr %i.c, align 8, !tbaa !91  ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 1
  store ptr %i.ma, ptr %i.c, align 8, !tbaa !91
  br i1 %i.ly, label %bb.br, label %.thread759

.thread759:                                       ; preds = %bb.bq
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 1
  %i.mc = load ptr, ptr %0, align 8, !tbaa !90
  %i.md = ptrtoint ptr %i.mb to i64
  %i.me = ptrtoint ptr %i.mc to i64
  %i.mf = sub i64 %i.md, %i.me
  store i64 %i.mf, ptr %3, align 8, !tbaa !13
  br label %.thread

bb.br:                                            ; preds = %bb.bq
  %i.mg = call noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack7consumeERS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(160) %0) ; 2 uses
  %.not.i601 = icmp eq i32 %i.mg, 0
  br i1 %.not.i601, label %.sink.split1354, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.mh = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.mi = load ptr, ptr %0, align 8, !tbaa !90
  %i.mj = ptrtoint ptr %i.mh to i64
  %i.mk = ptrtoint ptr %i.mi to i64
  %i.ml = sub i64 %i.mj, %i.mk
  store i64 %i.ml, ptr %3, align 8, !tbaa !13
  store i32 0, ptr %i.f, align 8, !tbaa !74
  br label %.thread

bb.bt:                                            ; preds = %bb.ab
  %i.mm = load i32, ptr %i.co, align 1            ; 2 uses
  %i.mn = call noundef i32 @llvm.bswap.i32(i32 %i.mm)
  %i.mo = zext i32 %i.mn to i64
  store i64 %i.mo, ptr %i.h, align 8, !tbaa !73
  %i.mp = icmp eq i32 %i.mm, 0
  br i1 %i.mp, label %bb.bu, label %.sink.split1354

bb.bu:                                            ; preds = %bb.bt
  store ptr %i.cx, ptr %i.c, align 8, !tbaa !91
  %i.mq = call noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack7consumeERS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(160) %0) ; 2 uses
  %.not.i603 = icmp eq i32 %i.mq, 0
  br i1 %.not.i603, label %.sink.split1354, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.mr = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.ms = load ptr, ptr %0, align 8, !tbaa !90
  %i.mt = ptrtoint ptr %i.mr to i64
  %i.mu = ptrtoint ptr %i.ms to i64
  %i.mv = sub i64 %i.mt, %i.mu
  store i64 %i.mv, ptr %3, align 8, !tbaa !13
  store i32 0, ptr %i.f, align 8, !tbaa !74
  br label %.thread

bb.bw:                                            ; preds = %bb.ab
  %i.mw = load i32, ptr %i.co, align 1
  %i.mx = call noundef i32 @llvm.bswap.i32(i32 %i.mw)
  %i.my = zext i32 %i.mx to i64
  br label %.sink.split1354.sink.split

bb.bx:                                            ; preds = %bb.ab
  %i.mz = trunc i64 %i.cs to i32
  %i.na = call noundef zeroext i1 @_ZN17json_like_visitor9visit_strEPKcj(ptr noundef nonnull align 8 dereferenceable(9) %i.g, ptr noundef %i.co, i32 noundef %i.mz)
  %i.nb = load ptr, ptr %i.c, align 8, !tbaa !91  ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 1
  store ptr %i.nc, ptr %i.c, align 8, !tbaa !91
  br i1 %i.na, label %bb.by, label %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit608.thread

_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit608.thread: ; preds = %bb.bx
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 1
  %i.ne = load ptr, ptr %0, align 8, !tbaa !90
  %i.nf = ptrtoint ptr %i.nd to i64
  %i.ng = ptrtoint ptr %i.ne to i64
  %i.nh = sub i64 %i.nf, %i.ng
  store i64 %i.nh, ptr %3, align 8, !tbaa !13
  br label %.thread

bb.by:                                            ; preds = %bb.bx
  %i.ni = call noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack7consumeERS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(160) %0) ; 2 uses
  %.not.i607 = icmp eq i32 %i.ni, 0
  br i1 %.not.i607, label %.sink.split1354, label %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit608

_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit608: ; preds = %bb.by
  %i.nj = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.nk = load ptr, ptr %0, align 8, !tbaa !90
  %i.nl = ptrtoint ptr %i.nj to i64
  %i.nm = ptrtoint ptr %i.nk to i64
  %i.nn = sub i64 %i.nl, %i.nm
  store i64 %i.nn, ptr %3, align 8, !tbaa !13
  store i32 0, ptr %i.f, align 8, !tbaa !74
  br label %.thread

bb.bz:                                            ; preds = %bb.ab
  store ptr %i.cx, ptr %i.c, align 8, !tbaa !91
  %i.no = call noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack7consumeERS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(160) %0) ; 2 uses
  %.not.i609 = icmp eq i32 %i.no, 0
  br i1 %.not.i609, label %.sink.split1354, label %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit611

_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit611: ; preds = %bb.bz
  %i.np = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.nq = load ptr, ptr %0, align 8, !tbaa !90
  %i.nr = ptrtoint ptr %i.np to i64
  %i.ns = ptrtoint ptr %i.nq to i64
  %i.nt = sub i64 %i.nr, %i.ns
  store i64 %i.nt, ptr %3, align 8, !tbaa !13
  store i32 0, ptr %i.f, align 8, !tbaa !74
  br label %.thread

bb.ca:                                            ; preds = %bb.ab
  store ptr %i.cx, ptr %i.c, align 8, !tbaa !91
  %i.nu = call noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack7consumeERS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(160) %0) ; 2 uses
  %.not.i612 = icmp eq i32 %i.nu, 0
  br i1 %.not.i612, label %.sink.split1354, label %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit614

_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit614: ; preds = %bb.ca
  %i.nv = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.nw = load ptr, ptr %0, align 8, !tbaa !90
  %i.nx = ptrtoint ptr %i.nv to i64
  %i.ny = ptrtoint ptr %i.nw to i64
  %i.nz = sub i64 %i.nx, %i.ny
  store i64 %i.nz, ptr %3, align 8, !tbaa !13
  store i32 0, ptr %i.f, align 8, !tbaa !74
  br label %.thread

bb.cb:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %0, ptr %8, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr %0, ptr %9, align 8, !tbaa !85
  %i.oa = call noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE15start_aggregateItNS4_8array_svENS4_8array_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %i.co, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %.not468 = icmp eq i32 %i.oa, 0
  br i1 %.not468, label %bb.cg, label %.thread

bb.cc:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store ptr %0, ptr %10, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store ptr %0, ptr %11, align 8, !tbaa !85
  %i.ob = call noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE15start_aggregateIjNS4_8array_svENS4_8array_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %i.co, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.not467 = icmp eq i32 %i.ob, 0
  br i1 %.not467, label %bb.cg, label %.thread

bb.cd:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store ptr %0, ptr %12, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  store ptr %0, ptr %13, align 8, !tbaa !85
  %i.oc = call noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE15start_aggregateItNS4_6map_svENS4_6map_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %i.co, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %.not466 = icmp eq i32 %i.oc, 0
  br i1 %.not466, label %bb.cg, label %.thread

bb.ce:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr %0, ptr %14, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store ptr %0, ptr %15, align 8, !tbaa !85
  %i.od = call noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE15start_aggregateIjNS4_6map_svENS4_6map_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %i.co, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %.not465 = icmp eq i32 %i.od, 0
  br i1 %.not465, label %bb.cg, label %.thread

bb.cf:                                            ; preds = %bb.ab
  %i.oe = getelementptr i8, ptr %i.cx, i64 -1
  %i.of = load ptr, ptr %0, align 8, !tbaa !90
  %i.og = ptrtoint ptr %i.oe to i64
  %i.oh = ptrtoint ptr %i.of to i64               ; 2 uses
  %i.oi = sub i64 %i.og, %i.oh
  store i64 %i.oi, ptr %3, align 8, !tbaa !13
  %i.oj = sub i64 %i.cq, %i.oh                    ; 2 uses
  %i.ok = add nsw i64 %i.oj, -1
  call void @_ZN17json_like_visitor11parse_errorEmm(ptr noundef nonnull align 8 dereferenceable(9) %i.g, i64 noundef %i.ok, i64 noundef %i.oj)
  br label %.thread

.sink.split1354.sink.split:                       ; preds = %bb.bw, %bb.bo, %bb.bg
  %.sink1356 = phi i64 [ %i.kq, %bb.bg ], [ %i.lt, %bb.bo ], [ %i.my, %bb.bw ]
  %i.ol = add nuw nsw i64 %.sink1356, 1
  store i64 %i.ol, ptr %i.h, align 8, !tbaa !73
  br label %.sink.split1354

.sink.split1354:                                  ; preds = %.sink.split1354.sink.split, %bb.ca, %bb.bz, %bb.by, %bb.bt, %bb.bu, %bb.bp, %bb.br, %bb.bl, %bb.bm, %bb.bh, %bb.bj, %bb.bd, %bb.be, %bb.az, %bb.bb, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.ar, %bb.ap, %bb.an, %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ac
  %.sink = phi i32 [ 0, %bb.bz ], [ 0, %bb.by ], [ 33, %bb.bt ], [ 32, %bb.bp ], [ 0, %bb.bu ], [ 33, %bb.bl ], [ 0, %bb.br ], [ 32, %bb.bh ], [ 0, %bb.bm ], [ 33, %bb.bd ], [ 0, %bb.bj ], [ 32, %bb.az ], [ 0, %bb.be ], [ 0, %bb.ay ], [ 0, %bb.bb ], [ 0, %bb.ax ], [ 0, %bb.aw ], [ 0, %bb.av ], [ 0, %bb.au ], [ 0, %bb.at ], [ 0, %bb.ar ], [ 0, %bb.ap ], [ 0, %bb.an ], [ 0, %bb.al ], [ 0, %bb.aj ], [ 0, %bb.ah ], [ 0, %bb.af ], [ 0, %bb.ad ], [ 0, %bb.ac ], [ 0, %bb.ca ], [ 34, %.sink.split1354.sink.split ]
  %.23.ph = phi i1 [ false, %bb.bz ], [ false, %bb.by ], [ true, %bb.bt ], [ true, %bb.bp ], [ false, %bb.bu ], [ true, %bb.bl ], [ false, %bb.br ], [ true, %bb.bh ], [ false, %bb.bm ], [ true, %bb.bd ], [ false, %bb.bj ], [ true, %bb.az ], [ false, %bb.be ], [ false, %bb.ay ], [ false, %bb.bb ], [ false, %bb.ax ], [ false, %bb.aw ], [ false, %bb.av ], [ false, %bb.au ], [ false, %bb.at ], [ false, %bb.ar ], [ false, %bb.ap ], [ false, %bb.an ], [ false, %bb.al ], [ false, %bb.aj ], [ false, %bb.ah ], [ false, %bb.af ], [ false, %bb.ad ], [ false, %bb.ac ], [ false, %bb.ca ], [ true, %.sink.split1354.sink.split ]
  store i32 %.sink, ptr %i.f, align 8, !tbaa !74
  br label %bb.cg

bb.cg:                                            ; preds = %.sink.split1354, %bb.x, %bb.ce, %bb.cd, %bb.cc, %bb.cb
  %.1364 = phi ptr [ %i.co, %bb.ce ], [ %.0363, %bb.x ], [ %i.co, %bb.cb ], [ %i.co, %bb.cc ], [ %i.co, %bb.cd ], [ %i.co, %.sink.split1354 ]
  %.23 = phi i1 [ false, %bb.ce ], [ false, %bb.x ], [ false, %bb.cb ], [ false, %bb.cc ], [ false, %bb.cd ], [ %.23.ph, %.sink.split1354 ]
  %i.om = load ptr, ptr %i.c, align 8, !tbaa !91  ; 3 uses
  %.not493 = icmp eq ptr %i.om, %i.d
  br i1 %.not493, label %bb.ch, label %bb.b, !llvm.loop !118

bb.ch:                                            ; preds = %bb.cg
  %i.on = load ptr, ptr %0, align 8, !tbaa !90
  %16 = ptrtoint ptr %i.om to i64
  %i.oo = ptrtoint ptr %i.on to i64
  %i.op = sub i64 %16, %i.oo
  store i64 %i.op, ptr %3, align 8, !tbaa !13
  br label %.thread

.thread:                                          ; preds = %bb.v, %bb.u, %bb.t, %bb.r, %bb.p, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.a, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit538.thread, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit535.thread, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit.thread, %bb.w, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit538, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit535, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit614, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit611, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit608, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit608.thread, %bb.bv, %bb.bs, %.thread759, %bb.bn, %bb.bk, %.thread742, %bb.bf, %bb.bc, %.thread725, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit584, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit581, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit578, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit575, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit572, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit569, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit569.thread, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit566, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit566.thread, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit563, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit563.thread, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit559, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit559.thread, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit556, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit556.thread, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit553, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit553.thread, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit550, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit550.thread, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit547, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit547.thread, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit544, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit541, %bb.aa, %bb.cf, %bb.ch
  %.63 = phi i32 [ 0, %bb.a ], [ 0, %bb.aa ], [ -1, %bb.cf ], [ 0, %bb.ch ], [ %i.cz, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit541 ], [ %i.df, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit544 ], [ %i.dv, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit547 ], [ %i.el, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit550 ], [ %i.fc, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit553 ], [ %i.fs, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit556 ], [ %i.gi, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit559 ], [ %i.gy, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit563 ], [ %i.hp, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit566 ], [ %i.if, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit569 ], [ %i.il, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit572 ], [ %i.ir, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit575 ], [ %i.ix, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit578 ], [ %i.jd, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit581 ], [ %i.jj, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit584 ], [ %i.ka, %bb.bc ], [ %i.kj, %bb.bf ], [ -2, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit608.thread ], [ %i.ld, %bb.bk ], [ %i.lm, %bb.bn ], [ -1, %bb.w ], [ %i.mg, %bb.bs ], [ %i.mq, %bb.bv ], [ %i.ao, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit535 ], [ %i.ni, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit608 ], [ %i.no, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit611 ], [ %i.nu, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit614 ], [ %i.y, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit ], [ %i.bo, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit538 ], [ -2, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit547.thread ], [ -2, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit550.thread ], [ -2, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit553.thread ], [ -2, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit556.thread ], [ -2, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit559.thread ], [ -2, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit563.thread ], [ -2, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit566.thread ], [ -2, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit569.thread ], [ -2, %.thread725 ], [ -2, %.thread742 ], [ -2, %.thread759 ], [ -2, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit538.thread ], [ -2, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit535.thread ], [ -2, %_ZN7msgpack2v26detail7contextI17json_like_printerE16after_visit_procEbRm.exit.thread ], [ %i.bv, %bb.p ], [ %i.bx, %bb.r ], [ %i.bz, %bb.t ], [ %i.cb, %bb.u ], [ %i.cd, %bb.v ], [ %i.ob, %bb.cc ], [ %i.oa, %bb.cb ], [ %i.oc, %bb.cd ], [ %i.od, %bb.ce ]
  ret i32 %.63
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN17json_like_visitor22visit_positive_integerEm(ptr noundef nonnull align 8 dereferenceable(9) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %1)
          to label %_ZNSolsEm.exit unwind label %bb.l ; 0 uses

_ZNSolsEm.exit:                                   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !84, !alias.scope !125
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !36, !alias.scope !125
  store i8 0, ptr %i.c, align 8, !tbaa !61, !alias.scope !125
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !93, !noalias !125 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !125 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEm.exit
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !94, !noalias !125 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !35, !alias.scope !125 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %_ZNSolsEm.exit
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.t = load ptr, ptr %0, align 8, !tbaa !95, !nonnull !16, !align !17 ; 5 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !35     ; 3 uses
  %i.v = load i64, ptr %i.d, align 8, !tbaa !36   ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !36   ; 5 uses
  %i.y = sub i64 9223372036854775807, %i.x
  %i.z = icmp ult i64 %i.y, %i.v
  br i1 %i.z, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.e:                                             ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.aa = add i64 %i.x, %i.v                      ; 3 uses
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !35  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ae = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.ae)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.af = load i64, ptr %i.ac, align 8, !tbaa !61
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.ag = phi i64 [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.aa, %i.ag
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not8.i.i.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.x ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.v, 1
  br i1 %cond.i.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = load i8, ptr %i.u, align 1, !tbaa !61
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !61
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %i.u, i64 %i.v, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 noundef %i.x, i64 noundef 0, ptr noundef %i.u, i64 noundef %i.v)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.j
  store i64 %i.aa, ptr %i.w, align 8, !tbaa !36
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !35
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.aa
  store i8 0, ptr %i.ak, align 1, !tbaa !61
  %i.al = load ptr, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.c
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.an = load i64, ptr %i.c, align 8, !tbaa !61
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ap = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ap, ptr %2, align 8, !tbaa !38
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ar = getelementptr i8, ptr %i.ap, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %2, i64 %i.as
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !38
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.au, ptr %i.a, align 8, !tbaa !38
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.av, align 8, !tbaa !38
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !35 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !61
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #25
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.av, align 8, !tbaa !38
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bc) #23
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bd, ptr %2, align 8, !tbaa !38
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bf = getelementptr i8, ptr %i.bd, i64 -24
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds i8, ptr %2, i64 %i.bg
  store ptr %i.be, ptr %i.bh, align 8, !tbaa !38
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bi, align 8, !tbaa !12
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bj) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i1 true

bb.l:                                             ; preds = %bb.a
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.e
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.c
  br i1 %i.bn, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.m, %bb.c
  %.sink = phi ptr [ %i.q, %bb.c ], [ %i.bm, %bb.m ]
  %.pn.ph = phi { ptr, i32 } [ %i.p, %bb.c ], [ %i.bl, %bb.m ]
  %i.bo = load i64, ptr %i.c, align 8, !tbaa !61
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bp) #25
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.m, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.c ], [ %i.bl, %bb.m ], [ %.pn.ph, %.body.sink.split ]
end_hunk_1
begin_hunk_2_@_ZN17json_like_visitor9visit_strEPKcj:bb.a
  %i.cj = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.b
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %i.cl = load i64, ptr %i.b, align 8, !tbaa !61
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE15start_aggregateINS_2v16detail7fix_tagENS4_8array_svENS4_8array_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !61
  %i.b = and i8 %i.a, 15                          ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.e, ptr %i.c, align 8, !tbaa !91
  %i.f = icmp eq i8 %i.b, 0
  %i.g = load ptr, ptr %1, align 8, !tbaa !97, !nonnull !16, !align !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !95, !nonnull !16, !align !17 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !36   ; 9 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775807    ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.b
  %i.m = add nsw i64 %i.k, 1                      ; 3 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !35   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.q = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.q)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.r = load i64, ptr %i.o, align 8, !tbaa !61
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.s = phi i64 [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i ]
  %.not.i.i.i.i.i = icmp ugt i64 %i.m, %i.s
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  store i8 91, ptr %i.t, align 1, !tbaa !61
  br label %bb.f

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.k, i64 noundef 0, ptr noundef nonnull @.str.19, i64 noundef 1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 %i.m, ptr %i.j, align 8, !tbaa !36
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store i8 0, ptr %i.v, align 1, !tbaa !61
  %i.w = load ptr, ptr %2, align 8, !tbaa !99, !nonnull !16, !align !17
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 112 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !95, !nonnull !16, !align !17 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !36  ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i64 noundef -1, i64 noundef 0) #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i: ; preds = %bb.f
  %i.ac = add i64 %i.aa, -1                       ; 2 uses
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !36
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !35
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  store i8 0, ptr %i.ae, align 1, !tbaa !61
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !95, !nonnull !16, !align !17 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !36 ; 5 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775807
  br i1 %i.ai, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i
  %i.aj = add nsw i64 %i.ah, 1                    ; 3 uses
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !35 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25
  %i.an = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.an)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25
  %i.ao = load i64, ptr %i.al, align 8, !tbaa !61
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29
  %i.ap = phi i64 [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29 ]
  %.not.i.i.i.i.i28 = icmp ugt i64 %i.aj, %i.ap
  br i1 %.not.i.i.i.i.i28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah
  store i8 93, ptr %i.aq, align 1, !tbaa !61
  br label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 noundef %i.ah, i64 noundef 0, ptr noundef nonnull @.str.12, i64 noundef 1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !36
  %i.ar = load ptr, ptr %i.af, align 8, !tbaa !35
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aj
  store i8 0, ptr %i.as, align 1, !tbaa !61
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = tail call noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack7consumeERS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(160) %0) ; 2 uses
  %.not22 = icmp eq i32 %i.au, 0
  br i1 %.not22, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.aw = load ptr, ptr %0, align 8, !tbaa !90
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  store i64 %i.az, ptr %4, align 8, !tbaa !13
  br label %bb.v

bb.m:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30: ; preds = %bb.m
  %i.ba = add nsw i64 %i.k, 1                     ; 3 uses
  %i.bb = load ptr, ptr %i.i, align 8, !tbaa !35  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30
  %i.be = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.be)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30
  %i.bf = load i64, ptr %i.bc, align 8, !tbaa !61
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34
  %i.bg = phi i64 [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34 ]
  %.not.i.i.i.i.i33 = icmp ugt i64 %i.ba, %i.bg
  br i1 %.not.i.i.i.i.i33, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.k
  store i8 91, ptr %i.bh, align 1, !tbaa !61
  br label %bb.q

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.k, i64 noundef 0, ptr noundef nonnull @.str.19, i64 noundef 1)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store i64 %i.ba, ptr %i.j, align 8, !tbaa !36
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ba
  store i8 0, ptr %i.bj, align 1, !tbaa !61
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !76 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !77 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bm, %i.bo
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.5.0.insert.ext.i = zext nneg i8 %i.b to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 32
  store i64 %.sroa.5.0.insert.shift.i, ptr %i.bm, align 4
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !76
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bq, ptr %i.bl, align 8, !tbaa !76
  br label %.critedge

bb.s:                                             ; preds = %bb.q
  %i.br = load ptr, ptr %i.bk, align 8, !tbaa !75 ; 7 uses
  %i.bs = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 3 uses
  %i.bu = sub i64 %i.bs, %i.bt                    ; 3 uses
  %i.bv = icmp eq i64 %i.bu, 9223372036854775800
  br i1 %i.bv, label %bb.t, label %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #22
  unreachable

_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.s
  %i.bw = ashr exact i64 %i.bu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 1)
  %i.bx = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bw ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.bw
  %i.bz = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 1152921504606846975)
  %i.ca = select i1 %i.by, i64 1152921504606846975, i64 %i.bz ; 3 uses
  %.not.i.i.i.i.i36 = icmp ne i64 %i.ca, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i36)
  %i.cb = shl nuw nsw i64 %i.ca, 3
  %i.cc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #24 ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bu
  %.sroa.5.0.insert.ext11.i = zext nneg i8 %i.b to i64
  %.sroa.5.0.insert.shift12.i = shl nuw nsw i64 %.sroa.5.0.insert.ext11.i, 32
  store i64 %.sroa.5.0.insert.shift12.i, ptr %i.cd, align 4
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.br, %i.bm
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ce = add i64 %i.bs, -8
  %i.cf = sub i64 %i.ce, %i.bt                    ; 2 uses
  %i.cg = lshr i64 %i.cf, 3
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cf, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader53, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ch, 4611686018427387900     ; 3 uses
  %i.ci = shl i64 %n.vec, 3                       ; 2 uses
  %i.cj = getelementptr i8, ptr %i.cc, i64 %i.ci  ; 2 uses
  %i.ck = getelementptr i8, ptr %i.br, i64 %i.ci
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cc, i64 %i.cl ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.br, i64 %i.cl ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.cm = getelementptr i8, ptr %next.gep50, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep50, align 4, !alias.scope !142
  %wide.load51 = load <2 x i64>, ptr %i.cm, align 4, !alias.scope !142
  %i.cn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !141
  store <2 x i64> %wide.load51, ptr %i.cn, align 4, !alias.scope !141
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader53

.lr.ph.i.i.i.i.i.i.i.preheader53:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cj, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ck, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader53, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader53 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader53 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.cp = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !142
  store i64 %i.cp, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !141
  %i.cq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cq, %i.bm
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !140

_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cc, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cj, %middle.block ], [ %i.cr, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  %5 = ptrtoint ptr %i.bo to i64
  %6 = sub i64 %5, %i.bt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %6) #25
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i: ; preds = %bb.u, %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  store ptr %i.cc, ptr %i.bk, align 8, !tbaa !75
  store ptr %i.cs, ptr %i.bl, align 8, !tbaa !76
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ca
  store ptr %i.ct, ptr %i.bn, align 8, !tbaa !77
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i, %bb.r, %bb.k
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.cu, align 8, !tbaa !74
  br label %bb.v

bb.v:                                             ; preds = %bb.l, %.critedge
  %.2 = phi i32 [ 0, %.critedge ], [ %i.au, %bb.l ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE15start_aggregateINS_2v16detail7fix_tagENS4_6map_svENS4_6map_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !61
  %i.b = and i8 %i.a, 15                          ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.e, ptr %i.c, align 8, !tbaa !91
  %i.f = icmp eq i8 %i.b, 0
  %i.g = load ptr, ptr %1, align 8, !tbaa !103, !nonnull !16, !align !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !95, !nonnull !16, !align !17 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !36   ; 9 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775807    ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.b
  %i.m = add nsw i64 %i.k, 1                      ; 3 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !35   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.q = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.q)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.r = load i64, ptr %i.o, align 8, !tbaa !61
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.s = phi i64 [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i ]
  %.not.i.i.i.i.i = icmp ugt i64 %i.m, %i.s
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  store i8 123, ptr %i.t, align 1, !tbaa !61
  br label %bb.f

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.k, i64 noundef 0, ptr noundef nonnull @.str.21, i64 noundef 1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 %i.m, ptr %i.j, align 8, !tbaa !36
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store i8 0, ptr %i.v, align 1, !tbaa !61
  %i.w = load ptr, ptr %2, align 8, !tbaa !105, !nonnull !16, !align !17
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 112 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !95, !nonnull !16, !align !17 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !36  ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i64 noundef -1, i64 noundef 0) #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i: ; preds = %bb.f
  %i.ac = add i64 %i.aa, -1                       ; 2 uses
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !36
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !35
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  store i8 0, ptr %i.ae, align 1, !tbaa !61
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !95, !nonnull !16, !align !17 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !36 ; 5 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775807
  br i1 %i.ai, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i
  %i.aj = add nsw i64 %i.ah, 1                    ; 3 uses
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !35 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25
  %i.an = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.an)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25
  %i.ao = load i64, ptr %i.al, align 8, !tbaa !61
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29
  %i.ap = phi i64 [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29 ]
  %.not.i.i.i.i.i28 = icmp ugt i64 %i.aj, %i.ap
  br i1 %.not.i.i.i.i.i28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah
  store i8 125, ptr %i.aq, align 1, !tbaa !61
  br label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 noundef %i.ah, i64 noundef 0, ptr noundef nonnull @.str.15, i64 noundef 1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !36
  %i.ar = load ptr, ptr %i.af, align 8, !tbaa !35
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aj
  store i8 0, ptr %i.as, align 1, !tbaa !61
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = tail call noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack7consumeERS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(160) %0) ; 2 uses
  %.not22 = icmp eq i32 %i.au, 0
  br i1 %.not22, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.aw = load ptr, ptr %0, align 8, !tbaa !90
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  store i64 %i.az, ptr %4, align 8, !tbaa !13
  br label %bb.v

bb.m:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30: ; preds = %bb.m
  %i.ba = add nsw i64 %i.k, 1                     ; 3 uses
  %i.bb = load ptr, ptr %i.i, align 8, !tbaa !35  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30
  %i.be = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.be)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30
  %i.bf = load i64, ptr %i.bc, align 8, !tbaa !61
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34
  %i.bg = phi i64 [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34 ]
  %.not.i.i.i.i.i33 = icmp ugt i64 %i.ba, %i.bg
  br i1 %.not.i.i.i.i.i33, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.k
  store i8 123, ptr %i.bh, align 1, !tbaa !61
  br label %bb.q

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.k, i64 noundef 0, ptr noundef nonnull @.str.21, i64 noundef 1)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store i64 %i.ba, ptr %i.j, align 8, !tbaa !36
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ba
  store i8 0, ptr %i.bj, align 1, !tbaa !61
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !76 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !77 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bm, %i.bo
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.5.0.insert.ext.i = zext nneg i8 %i.b to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, 1
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bm, align 4
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !76
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bq, ptr %i.bl, align 8, !tbaa !76
  br label %.critedge

bb.s:                                             ; preds = %bb.q
  %i.br = load ptr, ptr %i.bk, align 8, !tbaa !75 ; 7 uses
  %i.bs = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 3 uses
  %i.bu = sub i64 %i.bs, %i.bt                    ; 3 uses
  %i.bv = icmp eq i64 %i.bu, 9223372036854775800
  br i1 %i.bv, label %bb.t, label %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #22
  unreachable

_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.s
  %i.bw = ashr exact i64 %i.bu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 1)
  %i.bx = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bw ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.bw
  %i.bz = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 1152921504606846975)
  %i.ca = select i1 %i.by, i64 1152921504606846975, i64 %i.bz ; 3 uses
  %.not.i.i.i.i.i36 = icmp ne i64 %i.ca, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i36)
  %i.cb = shl nuw nsw i64 %i.ca, 3
  %i.cc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #24 ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bu
  %.sroa.5.0.insert.ext11.i = zext nneg i8 %i.b to i64
  %.sroa.5.0.insert.shift12.i = shl nuw nsw i64 %.sroa.5.0.insert.ext11.i, 32
  %.sroa.0.0.insert.insert9.i = or disjoint i64 %.sroa.5.0.insert.shift12.i, 1
  store i64 %.sroa.0.0.insert.insert9.i, ptr %i.cd, align 4
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.br, %i.bm
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ce = add i64 %i.bs, -8
  %i.cf = sub i64 %i.ce, %i.bt                    ; 2 uses
  %i.cg = lshr i64 %i.cf, 3
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cf, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader53, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ch, 4611686018427387900     ; 3 uses
  %i.ci = shl i64 %n.vec, 3                       ; 2 uses
  %i.cj = getelementptr i8, ptr %i.cc, i64 %i.ci  ; 2 uses
  %i.ck = getelementptr i8, ptr %i.br, i64 %i.ci
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cc, i64 %i.cl ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.br, i64 %i.cl ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.cm = getelementptr i8, ptr %next.gep50, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep50, align 4, !alias.scope !149
  %wide.load51 = load <2 x i64>, ptr %i.cm, align 4, !alias.scope !149
  %i.cn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !148
  store <2 x i64> %wide.load51, ptr %i.cn, align 4, !alias.scope !148
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !146

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader53

.lr.ph.i.i.i.i.i.i.i.preheader53:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cj, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ck, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader53, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader53 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader53 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.cp = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !149
  store i64 %i.cp, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !148
  %i.cq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cq, %i.bm
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !147

_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cc, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cj, %middle.block ], [ %i.cr, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  %5 = ptrtoint ptr %i.bo to i64
  %6 = sub i64 %5, %i.bt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %6) #25
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i: ; preds = %bb.u, %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  store ptr %i.cc, ptr %i.bk, align 8, !tbaa !75
  store ptr %i.cs, ptr %i.bl, align 8, !tbaa !76
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ca
  store ptr %i.ct, ptr %i.bn, align 8, !tbaa !77
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i, %bb.r, %bb.k
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.cu, align 8, !tbaa !74
  br label %bb.v

bb.v:                                             ; preds = %bb.l, %.critedge
  %.2 = phi i32 [ 0, %.critedge ], [ %i.au, %bb.l ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN17json_like_visitor13visit_booleanEb(ptr noundef nonnull align 8 dereferenceable(9) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !95, !nonnull !16, !align !17 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !36   ; 10 uses
  br i1 %1, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.c, -4
  %i.e = icmp eq i64 %i.d, 9223372036854775804
  br i1 %i.e, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.f = add nsw i64 %i.c, 4                      ; 3 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.j = icmp ult i64 %i.c, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.k = load i64, ptr %i.h, align 8, !tbaa !61
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.f, %i.l
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.c
  store i32 1702195828, ptr %i.m, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.c, i64 noundef 0, ptr noundef nonnull @.str.22, i64 noundef 4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.f:                                             ; preds = %bb.a
  %i.n = icmp sgt i64 %i.c, 9223372036854775802
  br i1 %i.n, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i1

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i1: ; preds = %bb.f
  %i.o = add nsw i64 %i.c, 5                      ; 3 uses
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i7: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i1
  %i.s = icmp ult i64 %i.c, 16
  tail call void @llvm.assume(i1 %i.s)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i2: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i1
  %i.t = load i64, ptr %i.q, align 8, !tbaa !61
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i3: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i7
  %i.u = phi i64 [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i2 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i7 ]
  %.not.i.i.i4 = icmp ugt i64 %i.o, %i.u
  br i1 %.not.i.i.i4, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i3
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.v, ptr noundef nonnull align 1 dereferenceable(5) @.str.23, i64 5, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.c, i64 noundef 0, ptr noundef nonnull @.str.23, i64 noundef 5)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.i, %bb.h, %bb.e, %bb.d
  %.sink = phi i64 [ %i.f, %bb.e ], [ %i.f, %bb.d ], [ %i.o, %bb.h ], [ %i.o, %bb.i ] ; 2 uses
  store i64 %.sink, ptr %i.b, align 8, !tbaa !36
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sink
  store i8 0, ptr %i.x, align 1, !tbaa !61
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN17json_like_visitor9visit_nilEv(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !95, !nonnull !16, !align !17 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !36   ; 5 uses
  %i.d = and i64 %i.c, -4
  %i.e = icmp eq i64 %i.d, 9223372036854775804
  br i1 %i.e, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.f = add nsw i64 %i.c, 4                      ; 3 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.j = icmp ult i64 %i.c, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.k = load i64, ptr %i.h, align 8, !tbaa !61
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.f, %i.l
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.c
  store i32 1819047278, ptr %i.m, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.c, i64 noundef 0, ptr noundef nonnull @.str.24, i64 noundef 4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.c, %bb.d
  store i64 %i.f, ptr %i.b, align 8, !tbaa !36
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.f
  store i8 0, ptr %i.o, align 1, !tbaa !61
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN17json_like_visitor11parse_errorEmm(ptr noundef nonnull align 8 dereferenceable(9) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.25, i64 noundef 11) ; 0 uses
  %i.b = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !38
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #22
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load i8, ptr %i.h, align 8, !tbaa !60
  %.not.i1.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 67
  %i.k = load i8, ptr %i.j, align 1, !tbaa !61
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.g)
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef signext i8 %i.n(ptr noundef nonnull align 8 dereferenceable(570) %i.g, i8 noundef signext 10), !inline_history !150
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.k, %bb.c ], [ %i.o, %bb.d ]
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE15start_aggregateItNS4_8array_svENS4_8array_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %3, align 1                ; 2 uses
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.a) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.d, ptr %i.b, align 8, !tbaa !91
  %i.e = icmp eq i16 %i.a, 0
  %i.f = load ptr, ptr %1, align 8, !tbaa !97, !nonnull !16, !align !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95, !nonnull !16, !align !17 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !36   ; 9 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775807    ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  br i1 %i.k, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.b
  %i.l = add nsw i64 %i.j, 1                      ; 3 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !35   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.p = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.q = load i64, ptr %i.n, align 8, !tbaa !61
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i ]
  %.not.i.i.i.i.i = icmp ugt i64 %i.l, %i.r
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  store i8 91, ptr %i.s, align 1, !tbaa !61
  br label %bb.f

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %i.j, i64 noundef 0, ptr noundef nonnull @.str.19, i64 noundef 1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 %i.l, ptr %i.i, align 8, !tbaa !36
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  store i8 0, ptr %i.u, align 1, !tbaa !61
  %i.v = load ptr, ptr %2, align 8, !tbaa !99, !nonnull !16, !align !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 112 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !95, !nonnull !16, !align !17 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !36   ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i64 noundef -1, i64 noundef 0) #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i: ; preds = %bb.f
  %i.ab = add i64 %i.z, -1                        ; 2 uses
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !36
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store i8 0, ptr %i.ad, align 1, !tbaa !61
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !95, !nonnull !16, !align !17 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !36 ; 5 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775807
  br i1 %i.ah, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i
  %i.ai = add nsw i64 %i.ag, 1                    ; 3 uses
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !35 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25
  %i.am = icmp ult i64 %i.ag, 16
  tail call void @llvm.assume(i1 %i.am)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25
  %i.an = load i64, ptr %i.ak, align 8, !tbaa !61
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29
  %i.ao = phi i64 [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29 ]
  %.not.i.i.i.i.i28 = icmp ugt i64 %i.ai, %i.ao
  br i1 %.not.i.i.i.i.i28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag
  store i8 93, ptr %i.ap, align 1, !tbaa !61
  br label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 noundef %i.ag, i64 noundef 0, ptr noundef nonnull @.str.12, i64 noundef 1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !36
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !35
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store i8 0, ptr %i.ar, align 1, !tbaa !61
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = tail call noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack7consumeERS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(160) %0) ; 2 uses
  %.not22 = icmp eq i32 %i.at, 0
  br i1 %.not22, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.av = load ptr, ptr %0, align 8, !tbaa !90
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  store i64 %i.ay, ptr %4, align 8, !tbaa !13
  br label %bb.v

bb.m:                                             ; preds = %bb.a
  br i1 %i.k, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30: ; preds = %bb.m
  %i.az = add nsw i64 %i.j, 1                     ; 3 uses
  %i.ba = load ptr, ptr %i.h, align 8, !tbaa !35  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30
  %i.bd = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.bd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30
  %i.be = load i64, ptr %i.bb, align 8, !tbaa !61
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34
  %i.bf = phi i64 [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34 ]
  %.not.i.i.i.i.i33 = icmp ugt i64 %i.az, %i.bf
  br i1 %.not.i.i.i.i.i33, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.j
  store i8 91, ptr %i.bg, align 1, !tbaa !61
  br label %bb.q

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %i.j, i64 noundef 0, ptr noundef nonnull @.str.19, i64 noundef 1)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store i64 %i.az, ptr %i.i, align 8, !tbaa !36
  %i.bh = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.az
  store i8 0, ptr %i.bi, align 1, !tbaa !61
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !76 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !77 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bl, %i.bn
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.5.0.insert.ext.i = zext i16 %rev.i.i to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 32
  store i64 %.sroa.5.0.insert.shift.i, ptr %i.bl, align 4
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !76
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !76
  br label %.critedge

bb.s:                                             ; preds = %bb.q
  %i.bq = load ptr, ptr %i.bj, align 8, !tbaa !75 ; 7 uses
  %i.br = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bt = sub i64 %i.br, %i.bs                    ; 3 uses
  %i.bu = icmp eq i64 %i.bt, 9223372036854775800
  br i1 %i.bu, label %bb.t, label %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #22
  unreachable

_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.s
  %i.bv = ashr exact i64 %i.bt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bw = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bv ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bv
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 1152921504606846975)
  %i.bz = select i1 %i.bx, i64 1152921504606846975, i64 %i.by ; 3 uses
  %.not.i.i.i.i.i36 = icmp ne i64 %i.bz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i36)
  %i.ca = shl nuw nsw i64 %i.bz, 3
  %i.cb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #24 ; 7 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bt
  %.sroa.5.0.insert.ext11.i = zext i16 %rev.i.i to i64
  %.sroa.5.0.insert.shift12.i = shl nuw nsw i64 %.sroa.5.0.insert.ext11.i, 32
  store i64 %.sroa.5.0.insert.shift12.i, ptr %i.cc, align 4
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bq, %i.bl
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.cd = add i64 %i.br, -8
  %i.ce = sub i64 %i.cd, %i.bs                    ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ce, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader52, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cg, 4611686018427387900     ; 3 uses
  %i.ch = shl i64 %n.vec, 3                       ; 2 uses
  %i.ci = getelementptr i8, ptr %i.cb, i64 %i.ch  ; 2 uses
  %i.cj = getelementptr i8, ptr %i.bq, i64 %i.ch
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ck = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cb, i64 %i.ck ; 2 uses
  %next.gep49 = getelementptr i8, ptr %i.bq, i64 %i.ck ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.cl = getelementptr i8, ptr %next.gep49, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep49, align 4, !alias.scope !157
  %wide.load50 = load <2 x i64>, ptr %i.cl, align 4, !alias.scope !157
  %i.cm = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !156
  store <2 x i64> %wide.load50, ptr %i.cm, align 4, !alias.scope !156
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !154

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cg, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader52

.lr.ph.i.i.i.i.i.i.i.preheader52:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ci, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader52, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader52 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader52 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.co = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !157
  store i64 %i.co, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !156
  %i.cp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cp, %i.bl
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !155

_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cb, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.ci, %middle.block ], [ %i.cq, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  %5 = ptrtoint ptr %i.bn to i64
  %6 = sub i64 %5, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %6) #25
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i: ; preds = %bb.u, %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  store ptr %i.cb, ptr %i.bj, align 8, !tbaa !75
  store ptr %i.cr, ptr %i.bk, align 8, !tbaa !76
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bz
  store ptr %i.cs, ptr %i.bm, align 8, !tbaa !77
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i, %bb.r, %bb.k
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.ct, align 8, !tbaa !74
  br label %bb.v

bb.v:                                             ; preds = %bb.l, %.critedge
  %.2 = phi i32 [ 0, %.critedge ], [ %i.at, %bb.l ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE15start_aggregateIjNS4_8array_svENS4_8array_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %3, align 1                ; 2 uses
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.e, ptr %i.c, align 8, !tbaa !91
  %i.f = icmp eq i32 %i.a, 0
  %i.g = load ptr, ptr %1, align 8, !tbaa !97, !nonnull !16, !align !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !95, !nonnull !16, !align !17 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !36   ; 9 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775807    ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.b
  %i.m = add nsw i64 %i.k, 1                      ; 3 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !35   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.q = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.q)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.r = load i64, ptr %i.o, align 8, !tbaa !61
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.s = phi i64 [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i ]
  %.not.i.i.i.i.i = icmp ugt i64 %i.m, %i.s
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  store i8 91, ptr %i.t, align 1, !tbaa !61
  br label %bb.f

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.k, i64 noundef 0, ptr noundef nonnull @.str.19, i64 noundef 1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 %i.m, ptr %i.j, align 8, !tbaa !36
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store i8 0, ptr %i.v, align 1, !tbaa !61
  %i.w = load ptr, ptr %2, align 8, !tbaa !99, !nonnull !16, !align !17
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 112 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !95, !nonnull !16, !align !17 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !36  ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i64 noundef -1, i64 noundef 0) #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i: ; preds = %bb.f
  %i.ac = add i64 %i.aa, -1                       ; 2 uses
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !36
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !35
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  store i8 0, ptr %i.ae, align 1, !tbaa !61
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !95, !nonnull !16, !align !17 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !36 ; 5 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775807
  br i1 %i.ai, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i
  %i.aj = add nsw i64 %i.ah, 1                    ; 3 uses
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !35 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25
  %i.an = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.an)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25
  %i.ao = load i64, ptr %i.al, align 8, !tbaa !61
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29
  %i.ap = phi i64 [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29 ]
  %.not.i.i.i.i.i28 = icmp ugt i64 %i.aj, %i.ap
  br i1 %.not.i.i.i.i.i28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah
  store i8 93, ptr %i.aq, align 1, !tbaa !61
  br label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 noundef %i.ah, i64 noundef 0, ptr noundef nonnull @.str.12, i64 noundef 1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !36
  %i.ar = load ptr, ptr %i.af, align 8, !tbaa !35
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aj
  store i8 0, ptr %i.as, align 1, !tbaa !61
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = tail call noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack7consumeERS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(160) %0) ; 2 uses
  %.not22 = icmp eq i32 %i.au, 0
  br i1 %.not22, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.aw = load ptr, ptr %0, align 8, !tbaa !90
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  store i64 %i.az, ptr %4, align 8, !tbaa !13
  br label %bb.v

bb.m:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30: ; preds = %bb.m
  %i.ba = add nsw i64 %i.k, 1                     ; 3 uses
  %i.bb = load ptr, ptr %i.i, align 8, !tbaa !35  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30
  %i.be = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.be)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30
  %i.bf = load i64, ptr %i.bc, align 8, !tbaa !61
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34
  %i.bg = phi i64 [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34 ]
  %.not.i.i.i.i.i33 = icmp ugt i64 %i.ba, %i.bg
  br i1 %.not.i.i.i.i.i33, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.k
  store i8 91, ptr %i.bh, align 1, !tbaa !61
  br label %bb.q

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.k, i64 noundef 0, ptr noundef nonnull @.str.19, i64 noundef 1)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store i64 %i.ba, ptr %i.j, align 8, !tbaa !36
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ba
  store i8 0, ptr %i.bj, align 1, !tbaa !61
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !76 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !77 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bm, %i.bo
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.5.0.insert.ext.i = zext i32 %i.b to i64
  %.sroa.5.0.insert.shift.i = shl nuw i64 %.sroa.5.0.insert.ext.i, 32
  store i64 %.sroa.5.0.insert.shift.i, ptr %i.bm, align 4
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !76
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bq, ptr %i.bl, align 8, !tbaa !76
  br label %.critedge

bb.s:                                             ; preds = %bb.q
  %i.br = load ptr, ptr %i.bk, align 8, !tbaa !75 ; 7 uses
  %i.bs = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 3 uses
  %i.bu = sub i64 %i.bs, %i.bt                    ; 3 uses
  %i.bv = icmp eq i64 %i.bu, 9223372036854775800
  br i1 %i.bv, label %bb.t, label %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #22
  unreachable

_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.s
  %i.bw = ashr exact i64 %i.bu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 1)
  %i.bx = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bw ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.bw
  %i.bz = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 1152921504606846975)
  %i.ca = select i1 %i.by, i64 1152921504606846975, i64 %i.bz ; 3 uses
  %.not.i.i.i.i.i36 = icmp ne i64 %i.ca, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i36)
  %i.cb = shl nuw nsw i64 %i.ca, 3
  %i.cc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #24 ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bu
  %.sroa.5.0.insert.ext11.i = zext i32 %i.b to i64
  %.sroa.5.0.insert.shift12.i = shl nuw i64 %.sroa.5.0.insert.ext11.i, 32
  store i64 %.sroa.5.0.insert.shift12.i, ptr %i.cd, align 4
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.br, %i.bm
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ce = add i64 %i.bs, -8
  %i.cf = sub i64 %i.ce, %i.bt                    ; 2 uses
  %i.cg = lshr i64 %i.cf, 3
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cf, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader52, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ch, 4611686018427387900     ; 3 uses
  %i.ci = shl i64 %n.vec, 3                       ; 2 uses
  %i.cj = getelementptr i8, ptr %i.cc, i64 %i.ci  ; 2 uses
  %i.ck = getelementptr i8, ptr %i.br, i64 %i.ci
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cc, i64 %i.cl ; 2 uses
  %next.gep49 = getelementptr i8, ptr %i.br, i64 %i.cl ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %i.cm = getelementptr i8, ptr %next.gep49, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep49, align 4, !alias.scope !164
  %wide.load50 = load <2 x i64>, ptr %i.cm, align 4, !alias.scope !164
  %i.cn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !163
  store <2 x i64> %wide.load50, ptr %i.cn, align 4, !alias.scope !163
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !161

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader52

.lr.ph.i.i.i.i.i.i.i.preheader52:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cj, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ck, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader52, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader52 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader52 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %i.cp = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !164
  store i64 %i.cp, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !163
  %i.cq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cq, %i.bm
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !162

_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cc, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cj, %middle.block ], [ %i.cr, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  %5 = ptrtoint ptr %i.bo to i64
  %6 = sub i64 %5, %i.bt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %6) #25
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i: ; preds = %bb.u, %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  store ptr %i.cc, ptr %i.bk, align 8, !tbaa !75
  store ptr %i.cs, ptr %i.bl, align 8, !tbaa !76
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ca
  store ptr %i.ct, ptr %i.bn, align 8, !tbaa !77
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i, %bb.r, %bb.k
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.cu, align 8, !tbaa !74
  br label %bb.v

bb.v:                                             ; preds = %bb.l, %.critedge
  %.2 = phi i32 [ 0, %.critedge ], [ %i.au, %bb.l ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE15start_aggregateItNS4_6map_svENS4_6map_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %3, align 1                ; 2 uses
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.a) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.d, ptr %i.b, align 8, !tbaa !91
  %i.e = icmp eq i16 %i.a, 0
  %i.f = load ptr, ptr %1, align 8, !tbaa !103, !nonnull !16, !align !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95, !nonnull !16, !align !17 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !36   ; 9 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775807    ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  br i1 %i.k, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.b
  %i.l = add nsw i64 %i.j, 1                      ; 3 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !35   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.p = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.q = load i64, ptr %i.n, align 8, !tbaa !61
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i ]
  %.not.i.i.i.i.i = icmp ugt i64 %i.l, %i.r
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  store i8 123, ptr %i.s, align 1, !tbaa !61
  br label %bb.f

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %i.j, i64 noundef 0, ptr noundef nonnull @.str.21, i64 noundef 1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 %i.l, ptr %i.i, align 8, !tbaa !36
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  store i8 0, ptr %i.u, align 1, !tbaa !61
  %i.v = load ptr, ptr %2, align 8, !tbaa !105, !nonnull !16, !align !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 112 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !95, !nonnull !16, !align !17 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !36   ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i64 noundef -1, i64 noundef 0) #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i: ; preds = %bb.f
  %i.ab = add i64 %i.z, -1                        ; 2 uses
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !36
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store i8 0, ptr %i.ad, align 1, !tbaa !61
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !95, !nonnull !16, !align !17 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !36 ; 5 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775807
  br i1 %i.ah, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i
  %i.ai = add nsw i64 %i.ag, 1                    ; 3 uses
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !35 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25
  %i.am = icmp ult i64 %i.ag, 16
  tail call void @llvm.assume(i1 %i.am)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25
  %i.an = load i64, ptr %i.ak, align 8, !tbaa !61
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29
  %i.ao = phi i64 [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29 ]
  %.not.i.i.i.i.i28 = icmp ugt i64 %i.ai, %i.ao
  br i1 %.not.i.i.i.i.i28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag
  store i8 125, ptr %i.ap, align 1, !tbaa !61
  br label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 noundef %i.ag, i64 noundef 0, ptr noundef nonnull @.str.15, i64 noundef 1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !36
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !35
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store i8 0, ptr %i.ar, align 1, !tbaa !61
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = tail call noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack7consumeERS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(160) %0) ; 2 uses
  %.not22 = icmp eq i32 %i.at, 0
  br i1 %.not22, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.av = load ptr, ptr %0, align 8, !tbaa !90
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  store i64 %i.ay, ptr %4, align 8, !tbaa !13
  br label %bb.v

bb.m:                                             ; preds = %bb.a
  br i1 %i.k, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30: ; preds = %bb.m
  %i.az = add nsw i64 %i.j, 1                     ; 3 uses
  %i.ba = load ptr, ptr %i.h, align 8, !tbaa !35  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30
  %i.bd = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.bd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30
  %i.be = load i64, ptr %i.bb, align 8, !tbaa !61
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34
  %i.bf = phi i64 [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34 ]
  %.not.i.i.i.i.i33 = icmp ugt i64 %i.az, %i.bf
  br i1 %.not.i.i.i.i.i33, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.j
  store i8 123, ptr %i.bg, align 1, !tbaa !61
  br label %bb.q

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %i.j, i64 noundef 0, ptr noundef nonnull @.str.21, i64 noundef 1)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store i64 %i.az, ptr %i.i, align 8, !tbaa !36
  %i.bh = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.az
  store i8 0, ptr %i.bi, align 1, !tbaa !61
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !76 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !77 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bl, %i.bn
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.5.0.insert.ext.i = zext i16 %rev.i.i to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, 1
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bl, align 4
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !76
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !76
  br label %.critedge

bb.s:                                             ; preds = %bb.q
  %i.bq = load ptr, ptr %i.bj, align 8, !tbaa !75 ; 7 uses
  %i.br = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bt = sub i64 %i.br, %i.bs                    ; 3 uses
  %i.bu = icmp eq i64 %i.bt, 9223372036854775800
  br i1 %i.bu, label %bb.t, label %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #22
  unreachable

_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.s
  %i.bv = ashr exact i64 %i.bt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bw = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bv ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bv
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 1152921504606846975)
  %i.bz = select i1 %i.bx, i64 1152921504606846975, i64 %i.by ; 3 uses
  %.not.i.i.i.i.i36 = icmp ne i64 %i.bz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i36)
  %i.ca = shl nuw nsw i64 %i.bz, 3
  %i.cb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #24 ; 7 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bt
  %.sroa.5.0.insert.ext11.i = zext i16 %rev.i.i to i64
  %.sroa.5.0.insert.shift12.i = shl nuw nsw i64 %.sroa.5.0.insert.ext11.i, 32
  %.sroa.0.0.insert.insert9.i = or disjoint i64 %.sroa.5.0.insert.shift12.i, 1
  store i64 %.sroa.0.0.insert.insert9.i, ptr %i.cc, align 4
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bq, %i.bl
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.cd = add i64 %i.br, -8
  %i.ce = sub i64 %i.cd, %i.bs                    ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ce, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader52, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cg, 4611686018427387900     ; 3 uses
  %i.ch = shl i64 %n.vec, 3                       ; 2 uses
  %i.ci = getelementptr i8, ptr %i.cb, i64 %i.ch  ; 2 uses
  %i.cj = getelementptr i8, ptr %i.bq, i64 %i.ch
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ck = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cb, i64 %i.ck ; 2 uses
  %next.gep49 = getelementptr i8, ptr %i.bq, i64 %i.ck ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.cl = getelementptr i8, ptr %next.gep49, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep49, align 4, !alias.scope !171
  %wide.load50 = load <2 x i64>, ptr %i.cl, align 4, !alias.scope !171
  %i.cm = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !170
  store <2 x i64> %wide.load50, ptr %i.cm, align 4, !alias.scope !170
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !168

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cg, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader52

.lr.ph.i.i.i.i.i.i.i.preheader52:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ci, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader52, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader52 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader52 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.co = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !171
  store i64 %i.co, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !170
  %i.cp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cp, %i.bl
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !169

_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cb, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.ci, %middle.block ], [ %i.cq, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  %5 = ptrtoint ptr %i.bn to i64
  %6 = sub i64 %5, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %6) #25
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i: ; preds = %bb.u, %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  store ptr %i.cb, ptr %i.bj, align 8, !tbaa !75
  store ptr %i.cr, ptr %i.bk, align 8, !tbaa !76
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bz
  store ptr %i.cs, ptr %i.bm, align 8, !tbaa !77
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i, %bb.r, %bb.k
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.ct, align 8, !tbaa !74
  br label %bb.v

bb.v:                                             ; preds = %bb.l, %.critedge
  %.2 = phi i32 [ 0, %.critedge ], [ %i.at, %bb.l ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE15start_aggregateIjNS4_6map_svENS4_6map_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %3, align 1                ; 2 uses
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.e, ptr %i.c, align 8, !tbaa !91
  %i.f = icmp eq i32 %i.a, 0
  %i.g = load ptr, ptr %1, align 8, !tbaa !103, !nonnull !16, !align !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !95, !nonnull !16, !align !17 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !36   ; 9 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775807    ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.b
  %i.m = add nsw i64 %i.k, 1                      ; 3 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !35   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.q = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.q)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.r = load i64, ptr %i.o, align 8, !tbaa !61
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.s = phi i64 [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i ]
  %.not.i.i.i.i.i = icmp ugt i64 %i.m, %i.s
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  store i8 123, ptr %i.t, align 1, !tbaa !61
  br label %bb.f

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.k, i64 noundef 0, ptr noundef nonnull @.str.21, i64 noundef 1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 %i.m, ptr %i.j, align 8, !tbaa !36
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store i8 0, ptr %i.v, align 1, !tbaa !61
  %i.w = load ptr, ptr %2, align 8, !tbaa !105, !nonnull !16, !align !17
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 112 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !95, !nonnull !16, !align !17 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !36  ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i64 noundef -1, i64 noundef 0) #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i: ; preds = %bb.f
  %i.ac = add i64 %i.aa, -1                       ; 2 uses
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !36
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !35
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  store i8 0, ptr %i.ae, align 1, !tbaa !61
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !95, !nonnull !16, !align !17 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !36 ; 5 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775807
  br i1 %i.ai, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i
  %i.aj = add nsw i64 %i.ah, 1                    ; 3 uses
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !35 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25
  %i.an = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.an)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25
  %i.ao = load i64, ptr %i.al, align 8, !tbaa !61
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29
  %i.ap = phi i64 [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29 ]
  %.not.i.i.i.i.i28 = icmp ugt i64 %i.aj, %i.ap
  br i1 %.not.i.i.i.i.i28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah
  store i8 125, ptr %i.aq, align 1, !tbaa !61
  br label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 noundef %i.ah, i64 noundef 0, ptr noundef nonnull @.str.15, i64 noundef 1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !36
  %i.ar = load ptr, ptr %i.af, align 8, !tbaa !35
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aj
  store i8 0, ptr %i.as, align 1, !tbaa !61
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = tail call noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack7consumeERS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(160) %0) ; 2 uses
  %.not22 = icmp eq i32 %i.au, 0
  br i1 %.not22, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.aw = load ptr, ptr %0, align 8, !tbaa !90
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  store i64 %i.az, ptr %4, align 8, !tbaa !13
  br label %bb.v

bb.m:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30: ; preds = %bb.m
  %i.ba = add nsw i64 %i.k, 1                     ; 3 uses
  %i.bb = load ptr, ptr %i.i, align 8, !tbaa !35  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30
  %i.be = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.be)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30
  %i.bf = load i64, ptr %i.bc, align 8, !tbaa !61
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34
  %i.bg = phi i64 [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34 ]
  %.not.i.i.i.i.i33 = icmp ugt i64 %i.ba, %i.bg
  br i1 %.not.i.i.i.i.i33, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.k
  store i8 123, ptr %i.bh, align 1, !tbaa !61
  br label %bb.q

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.k, i64 noundef 0, ptr noundef nonnull @.str.21, i64 noundef 1)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store i64 %i.ba, ptr %i.j, align 8, !tbaa !36
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ba
  store i8 0, ptr %i.bj, align 1, !tbaa !61
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !76 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !77 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bm, %i.bo
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.5.0.insert.ext.i = zext i32 %i.b to i64
  %.sroa.5.0.insert.shift.i = shl nuw i64 %.sroa.5.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, 1
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bm, align 4
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !76
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bq, ptr %i.bl, align 8, !tbaa !76
  br label %.critedge

bb.s:                                             ; preds = %bb.q
  %i.br = load ptr, ptr %i.bk, align 8, !tbaa !75 ; 7 uses
  %i.bs = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 3 uses
  %i.bu = sub i64 %i.bs, %i.bt                    ; 3 uses
  %i.bv = icmp eq i64 %i.bu, 9223372036854775800
  br i1 %i.bv, label %bb.t, label %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #22
  unreachable

_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.s
  %i.bw = ashr exact i64 %i.bu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 1)
  %i.bx = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bw ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.bw
  %i.bz = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 1152921504606846975)
  %i.ca = select i1 %i.by, i64 1152921504606846975, i64 %i.bz ; 3 uses
  %.not.i.i.i.i.i36 = icmp ne i64 %i.ca, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i36)
  %i.cb = shl nuw nsw i64 %i.ca, 3
  %i.cc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #24 ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bu
  %.sroa.5.0.insert.ext11.i = zext i32 %i.b to i64
  %.sroa.5.0.insert.shift12.i = shl nuw i64 %.sroa.5.0.insert.ext11.i, 32
  %.sroa.0.0.insert.insert9.i = or disjoint i64 %.sroa.5.0.insert.shift12.i, 1
  store i64 %.sroa.0.0.insert.insert9.i, ptr %i.cd, align 4
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.br, %i.bm
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ce = add i64 %i.bs, -8
  %i.cf = sub i64 %i.ce, %i.bt                    ; 2 uses
  %i.cg = lshr i64 %i.cf, 3
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cf, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader52, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ch, 4611686018427387900     ; 3 uses
  %i.ci = shl i64 %n.vec, 3                       ; 2 uses
  %i.cj = getelementptr i8, ptr %i.cc, i64 %i.ci  ; 2 uses
  %i.ck = getelementptr i8, ptr %i.br, i64 %i.ci
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cc, i64 %i.cl ; 2 uses
  %next.gep49 = getelementptr i8, ptr %i.br, i64 %i.cl ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.cm = getelementptr i8, ptr %next.gep49, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep49, align 4, !alias.scope !178
  %wide.load50 = load <2 x i64>, ptr %i.cm, align 4, !alias.scope !178
  %i.cn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !177
  store <2 x i64> %wide.load50, ptr %i.cn, align 4, !alias.scope !177
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !175

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader52

.lr.ph.i.i.i.i.i.i.i.preheader52:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cj, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ck, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader52, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader52 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader52 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.cp = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !178
  store i64 %i.cp, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !177
  %i.cq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cq, %i.bm
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !176

_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cc, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cj, %middle.block ], [ %i.cr, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  %5 = ptrtoint ptr %i.bo to i64
  %6 = sub i64 %5, %i.bt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %6) #25
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i: ; preds = %bb.u, %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  store ptr %i.cc, ptr %i.bk, align 8, !tbaa !75
  store ptr %i.cs, ptr %i.bl, align 8, !tbaa !76
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ca
  store ptr %i.ct, ptr %i.bn, align 8, !tbaa !77
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i, %bb.r, %bb.k
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.cu, align 8, !tbaa !74
  br label %bb.v

bb.v:                                             ; preds = %bb.l, %.critedge
  %.2 = phi i32 [ 0, %.critedge ], [ %i.au, %bb.l ]
  ret i32 %.2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !36   ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !35     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.k = load i64, ptr %i.h, align 8, !tbaa !61
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.d, label %bb.j, !prof !88

bb.d:                                             ; preds = %bb.c
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.u, align 1, !tbaa !61
  store i8 %i.v, ptr %i.t, align 1, !tbaa !61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.g, %bb.f, %bb.d
  switch i64 %4, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1, !tbaa !61
  store i8 %i.w, ptr %i.m, align 1, !tbaa !61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.c
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.i, %bb.h, %bb.j, %bb.k
  store i64 %i.f, ptr %i.a, align 8, !tbaa !36
  %i.x = load ptr, ptr %0, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !61
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !36   ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !35     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !61
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #22
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !86

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #24 ; 5 uses
  switch i64 %1, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !61
  store i8 %i.t, ptr %i.s, align 1, !tbaa !61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.i, %bb.h
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
end_hunk_2
