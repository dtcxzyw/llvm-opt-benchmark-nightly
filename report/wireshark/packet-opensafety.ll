Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-opensafety?download=true
inline.NumInlined: 44
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@findSafetyFrame:bb.a
  %i.av = zext i8 %i.au to i16
  br i1 %i.n, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.aw = tail call zeroext i16 @tvb_get_letohs(ptr noundef %1, i32 noundef %i.at)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0148 = phi i16 [ %i.aw, %bb.s ], [ %i.av, %bb.r ]
  %.not174 = icmp eq i16 %.0150205, %.0148
  br i1 %.not174, label %bb.aa, label %bb.ab

bb.u:                                             ; preds = %.thread
  %i.ax = add nuw nsw i32 %.0139206, %i.j
  %i.ay = shl nuw nsw i32 %i.ax, 1
  %i.az = add nuw nsw i32 %i.ay, 11
  store i32 %i.az, ptr %5, align 4
  store i32 %i.q, ptr %4, align 4
  %i.ba = icmp eq i16 %.0150205, 0
  br i1 %i.ba, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.bb = add i32 %.0152190, 9
  %i.bc = add i32 %i.bb, %i.k
  %i.bd = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.bc)
  %i.be = zext i8 %i.bd to i16
  br i1 %i.n, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bf = add i32 %.0152190, 10
  %i.bg = add i32 %i.bf, %i.k
  %i.bh = tail call zeroext i16 @tvb_get_letohs(ptr noundef %1, i32 noundef %i.bg)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1149 = phi i16 [ %i.bh, %bb.w ], [ %i.be, %bb.v ]
  %.not172 = icmp eq i16 %.1149, 0
  br i1 %.not172, label %bb.aa, label %bb.ab

bb.y:                                             ; preds = %bb.e
  %i.bi = icmp eq i32 %.0151192, 11
  br i1 %i.bi, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bj = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %.0152190)
  %i.bk = add i32 %.0152190, 2
  %i.bl = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.bk) ; 2 uses
  %i.bm = and i8 %i.bj, -8
  %i.bn = icmp ne i8 %i.bm, -24
  %i.bo = icmp ugt i8 %i.bl, 8
  %i.bp = select i1 %i.bo, i8 13, i8 11
  %i.bq = zext i1 %i.bn to i8
  %.sink = shl i8 %i.bl, %i.bq
  %i.br = add i8 %i.bp, %.sink
  %i.bs = icmp eq i8 %i.br, 11
  br i1 %i.bs, label %.backedge, label %bb.aa

bb.aa:                                            ; preds = %bb.j, %bb.j, %bb.d, %bb.y, %bb.z, %bb.f, %bb.i, %bb.k, %bb.t, %bb.q, %bb.x, %bb.p, %bb.h, %bb.c, %bb.b
  %i.bt = add i32 %.0152190, 1                    ; 2 uses
  %i.bu = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %i.bt)
  br label %.backedge

.backedge:                                        ; preds = %bb.aa, %bb.z
  %.0152.be = phi i32 [ %i.bt, %bb.aa ], [ %i.g, %bb.z ]
  %.0151.be = phi i32 [ %i.bu, %bb.aa ], [ 12, %bb.z ] ; 2 uses
  %i.bv = icmp ugt i32 %.0151.be, 9
  br i1 %i.bv, label %bb.b, label %.thread184, !llvm.loop !11

bb.ab:                                            ; preds = %bb.u, %bb.x, %bb.t
  %.1145.lcssa = phi i16 [ %.0150205, %bb.u ], [ 0, %bb.x ], [ %.0150205, %bb.t ]
  %.not186 = icmp eq ptr %6, null
  br i1 %.not186, label %bb.ac, label %.sink.split

.sink.split:                                      ; preds = %bb.ab
  %i.bw = getelementptr i8, ptr %6, i64 33
  store i8 %i.e, ptr %i.bw, align 1
  %i.bx = getelementptr i8, ptr %6, i64 35
  store i8 %i.h, ptr %i.bx, align 1
  %i.by = load i32, ptr %5, align 4
  %i.bz = getelementptr i8, ptr %6, i64 36
  store i32 %i.by, ptr %i.bz, align 4
  %i.ca = getelementptr i8, ptr %6, i64 48
  %i.cb = getelementptr i8, ptr %6, i64 50
  store i16 %.1145.lcssa, ptr %i.cb, align 2
  store i8 %.1137207, ptr %i.ca, align 8
  %.not175 = icmp ne i8 %.1137207, -1
  %i.cc = getelementptr i8, ptr %6, i64 54
  %.210 = zext i1 %.not175 to i8
  store i8 %.210, ptr %i.cc, align 2
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %bb.ab
  br i1 %3, label %bb.ad, label %.thread184

bb.ad:                                            ; preds = %bb.ac
  store i32 %2, ptr %4, align 4
  br label %.thread184

.thread184:                                       ; preds = %.backedge, %bb.a, %bb.ad, %bb.ac
  %i.cd = phi i1 [ true, %bb.ac ], [ true, %bb.ad ], [ false, %bb.a ], [ false, %.backedge ]
  ret i1 %i.cd
}

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @opensafety_package_dissector(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i8 noundef zeroext %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i8 noundef zeroext range(i8 0, 3) %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 17 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  tail call void @register_frame_end_routine(ptr noundef %6, ptr noundef nonnull @reset_dissector)
  %i.d = tail call i32 @tvb_reported_length(ptr noundef %5) ; 10 uses
  %i.e = icmp ult i32 %i.d, 11
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %char0 = load i8, ptr %1, align 1
  %.not259.not = icmp eq i8 %char0, 0             ; 2 uses
  br i1 %.not259.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @find_dissector(ptr noundef %1) ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  %i.h = load ptr, ptr @data_dissector, align 8
  %spec.select = select i1 %i.g, ptr %i.h, ptr %i.f
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0221 = phi ptr [ null, %bb.b ], [ %spec.select, %bb.c ]
  %i.i = load i8, ptr @global_mbtcp_big_endian, align 1, !range !6
  %i.j = trunc nuw i8 %i.i to i1
  %or.cond270 = select i1 %3, i1 %i.j, i1 false
  br i1 %or.cond270, label %bb.e, label %.lr.ph328

bb.e:                                             ; preds = %bb.d
  %i.k = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %5, i32 noundef 0, i32 noundef %i.d)
  br i1 %i.k, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.l = getelementptr i8, ptr %6, i64 416
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = zext i32 %i.d to i64
  %i.o = tail call ptr @tvb_memdup(ptr noundef %i.m, ptr noundef %5, i32 noundef 0, i64 noundef %i.n) ; 7 uses
  %i.p = lshr i32 %i.d, 1                         ; 3 uses
  %wide.trip.count = zext nneg i32 %i.p to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %lcmp.mod372 = trunc i32 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod372)
  %i.r = shl nuw nsw i64 %indvars.iv.epil.init, 1 ; 2 uses
  %i.s = getelementptr i8, ptr %i.o, i64 %i.r     ; 2 uses
  %i.t = load i8, ptr %i.s, align 1
  %i.u = getelementptr i8, ptr %i.o, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 1        ; 2 uses
  %i.w = load i8, ptr %i.v, align 1
  store i8 %i.w, ptr %i.s, align 1
  store i8 %i.t, ptr %i.v, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %i.x = tail call ptr @tvb_new_real_data(ptr noundef %i.o, i32 noundef %i.d, i32 noundef %i.d)
  br label %.lr.ph328

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.y = shl nuw nsw i64 %indvars.iv, 1           ; 2 uses
  %i.z = getelementptr i8, ptr %i.o, i64 %i.y     ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = getelementptr i8, ptr %i.o, i64 %i.y
  %i.ac = getelementptr i8, ptr %i.ab, i64 1      ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1
  store i8 %i.ad, ptr %i.z, align 1
  store i8 %i.aa, ptr %i.ac, align 1
  %indvars.iv.next = shl nuw i64 %indvars.iv, 1
  %i.ae = or disjoint i64 %indvars.iv.next, 2     ; 2 uses
  %i.af = getelementptr i8, ptr %i.o, i64 %i.ae   ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = getelementptr i8, ptr %i.o, i64 %i.ae
  %i.ai = getelementptr i8, ptr %i.ah, i64 1      ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1
  store i8 %i.aj, ptr %i.af, align 1
  store i8 %i.ag, ptr %i.ai, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !12

.lr.ph328:                                        ; preds = %._crit_edge, %bb.d
  %.0246 = phi ptr [ %i.x, %._crit_edge ], [ %5, %bb.d ] ; 30 uses
  store i32 0, ptr %i.a, align 4
  store i32 0, ptr %i.b, align 4
  %i.ak = getelementptr i8, ptr %6, i64 416       ; 2 uses
  %i.al = icmp ne i8 %8, 0
  %i.am = icmp eq i8 %8, 2
  %i.an = icmp eq i8 %8, 1                        ; 6 uses
  %.not265 = icmp eq i8 %4, 0
  %i.ao = getelementptr i8, ptr %6, i64 8         ; 3 uses
  %.not266 = icmp eq ptr %7, null
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph328, %.backedge
  %i.ap = phi i32 [ 0, %.lr.ph328 ], [ %i.ce, %.backedge ] ; 2 uses
  %.0226325 = phi i8 [ 0, %.lr.ph328 ], [ %.0226.be, %.backedge ] ; 8 uses
  %.0228323 = phi i8 [ 0, %.lr.ph328 ], [ %.0228.be, %.backedge ] ; 9 uses
  %.0232321 = phi i1 [ false, %.lr.ph328 ], [ %.0232.be, %.backedge ] ; 7 uses
  %.0238319 = phi i1 [ false, %.lr.ph328 ], [ %.0238.be, %.backedge ] ; 8 uses
  %.0242317 = phi i1 [ false, %.lr.ph328 ], [ %.0242.be, %.backedge ] ; 11 uses
  %.0244315 = phi i32 [ 0, %.lr.ph328 ], [ %.0244.be, %.backedge ] ; 14 uses
  %i.aq = call i32 @tvb_captured_length_remaining(ptr noundef %.0246, i32 noundef %i.ap)
  %i.ar = icmp ult i32 %i.aq, 10
  br i1 %i.ar, label %._crit_edge329, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = load ptr, ptr %i.ak, align 8
  %i.at = call noalias dereferenceable_or_null(64) ptr @wmem_alloc0(ptr noundef %i.as, i64 noundef 64) #12 ; 12 uses
  %i.au = call fastcc zeroext i1 @findSafetyFrame(ptr noundef %6, ptr noundef %.0246, i32 noundef %i.ap, i1 noundef zeroext %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.at)
  br i1 %i.au, label %bb.h, label %._crit_edge329

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr i8, ptr %i.at, i64 33     ; 6 uses
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %._crit_edge329, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = load i32, ptr %i.a, align 4             ; 16 uses
  %i.az = load i32, ptr %i.b, align 4             ; 15 uses
  %i.ba = add i32 %i.az, %i.ay                    ; 5 uses
  %i.bb = icmp ugt i32 %i.ba, %i.d
  br i1 %i.bb, label %._crit_edge329, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %2, label %bb.k, label %findFrame1Position.exit

bb.k:                                             ; preds = %bb.j
  %i.bc = trunc i32 %i.az to i16                  ; 2 uses
  %i.bd = lshr i16 %i.bc, 1
  %i.be = and i16 %i.bd, 127                      ; 2 uses
  %i.bf = add nuw nsw i16 %i.be, 1
  %narrow = add nuw nsw i16 %i.be, 3
  %i.bg = zext nneg i16 %narrow to i32
  %i.bh = call zeroext i8 @tvb_get_uint8(ptr noundef %.0246, i32 noundef %i.bg) ; 2 uses
  %i.bi = zext i8 %i.bh to i16
  %i.bj = shl nuw nsw i16 %i.bi, 1
  %i.bk = add nuw nsw i16 %i.bj, 11
  %i.bl = icmp ugt i8 %i.bh, 8
  %i.bm = select i1 %i.bl, i16 2, i16 0
  %i.bn = add nuw nsw i16 %i.bk, %i.bm
  %i.bo = and i16 %i.bc, 255
  %.not49.i = icmp eq i16 %i.bn, %i.bo
  br i1 %.not49.i, label %findFrame1Position.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = trunc i32 %i.az to i8
  %i.bq = icmp ugt i8 %i.bp, 19
  %i.br = select i1 %i.bq, i16 7, i16 6           ; 3 uses
  %narrow309 = add nuw nsw i16 %i.br, 1
  %i.bs = zext nneg i16 %narrow309 to i32
  %i.bt = call zeroext i8 @tvb_get_uint8(ptr noundef %.0246, i32 noundef %i.bs)
  %i.bu = and i8 %i.bt, -4
  switch i8 %i.bu, label %findFrame1Position.exit.thread284 [
    i8 -24, label %findFrame1Position.exit.thread
    i8 -20, label %findFrame1Position.exit.thread
  ]

findFrame1Position.exit:                          ; preds = %bb.j
  %i.bv = and i32 %i.ay, 65535
  %i.bw = add nuw nsw i32 %i.bv, 2                ; 2 uses
  %i.bx = call zeroext i8 @tvb_get_uint8(ptr noundef %.0246, i32 noundef %i.bw)
  %i.by = zext i8 %i.bx to i16
  %i.bz = add nsw i16 %i.by, -1
  %i.ca = call zeroext i8 @tvb_get_uint8(ptr noundef %.0246, i32 noundef %i.bw)
  %i.cb = icmp ugt i8 %i.ca, 8
  %i.cc = select i1 %i.cb, i16 7, i16 6
  %i.cd = add nsw i16 %i.bz, %i.cc
  br label %findFrame1Position.exit.thread

findFrame1Position.exit.thread284:                ; preds = %bb.l
  store i32 %i.ba, ptr %i.a, align 4
  br label %.backedge

.backedge:                                        ; preds = %bb.ba, %bb.bb, %findFrame1Position.exit.thread284, %bb.y, %bb.z, %bb.ab, %bb.aj, %bb.ag, %bb.az
  %i.ce = phi i32 [ %i.ba, %findFrame1Position.exit.thread284 ], [ %i.ev, %bb.ab ], [ %i.gg, %bb.aj ], [ %i.eq, %bb.z ], [ %i.if, %bb.az ], [ %storemerge, %bb.ag ], [ %i.ep, %bb.y ], [ %i.il, %bb.bb ], [ %i.ij, %bb.ba ] ; 2 uses
  %.0244.be = phi i32 [ %.0244315, %findFrame1Position.exit.thread284 ], [ %.0244315, %bb.ab ], [ %.0244315, %bb.aj ], [ %.0244315, %bb.z ], [ %.0244315, %bb.az ], [ %.0244315, %bb.ag ], [ %.0244315, %bb.y ], [ %i.ba, %bb.bb ], [ %i.ba, %bb.ba ] ; 2 uses
  %.0242.be = phi i1 [ %.0242317, %findFrame1Position.exit.thread284 ], [ %.0242317, %bb.ab ], [ %.0242317, %bb.aj ], [ %.0242317, %bb.z ], [ %.0242317, %bb.az ], [ %.0242317, %bb.ag ], [ %.0242317, %bb.y ], [ true, %bb.bb ], [ true, %bb.ba ] ; 2 uses
  %.0238.be = phi i1 [ %.0238319, %findFrame1Position.exit.thread284 ], [ %.0238319, %bb.ab ], [ %.0238319, %bb.aj ], [ %.0238319, %bb.z ], [ %.0238319, %bb.az ], [ %.0238319, %bb.ag ], [ %.0238319, %bb.y ], [ true, %bb.bb ], [ true, %bb.ba ]
  %.0232.be = phi i1 [ %.0232321, %findFrame1Position.exit.thread284 ], [ %.0232321, %bb.ab ], [ %spec.select272, %bb.aj ], [ %.0232321, %bb.z ], [ %.2234, %bb.az ], [ %.0232321, %bb.ag ], [ %.0232321, %bb.y ], [ %.2234, %bb.bb ], [ %.2234, %bb.ba ]
  %.0228.be = phi i8 [ %.0228323, %findFrame1Position.exit.thread284 ], [ %.0228323, %bb.ab ], [ %.0228323, %bb.aj ], [ %.0228323, %bb.z ], [ %.0228323, %bb.az ], [ %.0228323, %bb.ag ], [ %.0228323, %bb.y ], [ %.5296, %bb.bb ], [ %.5296, %bb.ba ]
  %.0226.be = phi i8 [ %.0226325, %findFrame1Position.exit.thread284 ], [ %.0226325, %bb.ab ], [ %.0226325, %bb.aj ], [ %.0226325, %bb.z ], [ %.0226325, %bb.az ], [ %.0226325, %bb.ag ], [ %.0226325, %bb.y ], [ %i.ia, %bb.bb ], [ %i.ia, %bb.ba ]
  %i.cf = icmp ult i32 %i.ce, %i.d
  br i1 %i.cf, label %bb.f, label %._crit_edge329, !llvm.loop !13

findFrame1Position.exit.thread:                   ; preds = %findFrame1Position.exit, %bb.l, %bb.l, %bb.k
  %.0222283 = phi i16 [ %i.cd, %findFrame1Position.exit ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.l ] ; 4 uses
  %.0224282 = phi i16 [ 0, %findFrame1Position.exit ], [ %i.bf, %bb.k ], [ %i.br, %bb.l ], [ %i.br, %bb.l ] ; 5 uses
  %i.cg = zext nneg i16 %.0224282 to i32
  %i.ch = and i32 %i.ay, 65535
  %i.ci = select i1 %2, i32 0, i32 %i.ch          ; 3 uses
  %i.cj = add nuw nsw i32 %i.ci, 1                ; 5 uses
  %i.ck = add nuw nsw i32 %i.cj, %i.cg
  %i.cl = call zeroext i8 @tvb_get_uint8(ptr noundef %.0246, i32 noundef %i.ck)
  %i.cm = and i8 %i.cl, -4                        ; 2 uses
  store i8 %i.cm, ptr %i.av, align 1
  %i.cn = zext i8 %i.cm to i32                    ; 4 uses
  %i.co = and i32 %i.cn, 232
  %i.cp = icmp eq i32 %i.co, 232
  br i1 %i.cp, label %bb.aa, label %bb.m

bb.m:                                             ; preds = %findFrame1Position.exit.thread
  %i.cq = and i32 %i.cn, 224
  %i.cr = icmp eq i32 %i.cq, 224
  br i1 %i.cr, label %bb.aa, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cs = and i32 %i.cn, 192
  %i.ct = icmp eq i32 %i.cs, 192
  br i1 %i.ct, label %bb.aa, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cu = and i32 %i.cn, 160
  %i.cv = icmp eq i32 %i.cu, 160
  br i1 %i.cv, label %bb.aa, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %2, label %bb.q, label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.cw = trunc i32 %i.az to i8                   ; 2 uses
  %i.cx = and i32 %i.az, 255                      ; 2 uses
  %i.cy = lshr i32 %i.cx, 1
  %i.cz = trunc nuw nsw i32 %i.cy to i16
  %i.da = add nuw nsw i16 %i.cz, 1                ; 2 uses
  %i.db = zext nneg i16 %i.da to i32              ; 3 uses
  %i.dc = add nuw nsw i32 %i.db, 2
  %i.dd = call zeroext i8 @tvb_get_uint8(ptr noundef %.0246, i32 noundef %i.dc) ; 2 uses
  %i.de = zext i8 %i.dd to i16
  %i.df = shl nuw nsw i16 %i.de, 1
  %i.dg = add nuw nsw i16 %i.df, 11
  %i.dh = icmp ugt i8 %i.dd, 8
  %i.di = select i1 %i.dh, i16 2, i16 0
  %i.dj = add nuw nsw i16 %i.dg, %i.di            ; 2 uses
  %i.dk = trunc i32 %i.az to i16
  %i.dl = and i16 %i.dk, 255
  %i.dm = icmp eq i16 %i.dj, %i.dl
  br i1 %i.dm, label %bb.r, label %._crit_edge.i

bb.r:                                             ; preds = %bb.q
  %i.dn = add nuw nsw i32 %i.cx, 4                ; 4 uses
  %i.do = add nuw nsw i32 %i.dn, %i.db
  %i.dp = call zeroext i16 @tvb_get_letohs(ptr noundef %.0246, i32 noundef %i.do) ; 2 uses
  %i.dq = load ptr, ptr %i.ak, align 8
  %i.dr = zext nneg i32 %i.dn to i64
  %i.ds = call ptr @tvb_memdup(ptr noundef %i.dq, ptr noundef %.0246, i32 noundef %i.db, i64 noundef %i.dr) ; 2 uses
  %i.dt = call zeroext i16 @crc16_0x755B(ptr noundef %i.ds, i32 noundef %i.dn, i16 noundef zeroext 0)
  %.not.i = icmp eq i16 %i.dp, %i.dt
  br i1 %.not.i, label %.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.du = call zeroext i16 @crc16_0x5935(ptr noundef %i.ds, i32 noundef %i.dn, i16 noundef zeroext 0)
  %i.dv = icmp eq i16 %i.dp, %i.du
  %cond.fr.i = freeze i1 %i.dv
  br i1 %cond.fr.i, label %.thread.i, label %._crit_edge.i

.thread.i:                                        ; preds = %bb.s, %bb.r
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.thread.i, %bb.s, %bb.q
  %.045.i = phi i8 [ %i.cw, %bb.q ], [ %i.cw, %.thread.i ], [ 0, %bb.s ] ; 2 uses
  %i.dw = zext i8 %.045.i to i16
  %.not49.i277 = icmp eq i16 %i.dj, %i.dw
  br i1 %.not49.i277, label %findFrame1Position.exit279, label %bb.t

bb.t:                                             ; preds = %._crit_edge.i
  %i.dx = icmp ugt i8 %.045.i, 19
  %i.dy = select i1 %i.dx, i16 7, i16 6           ; 2 uses
  %narrow310 = add nuw nsw i16 %i.dy, 1
  %i.dz = zext nneg i16 %narrow310 to i32
  %i.ea = call zeroext i8 @tvb_get_uint8(ptr noundef %.0246, i32 noundef %i.dz)
  %i.eb = and i8 %i.ea, -4
  switch i8 %i.eb, label %findFrame1Position.exit279 [
    i8 -24, label %bb.u
    i8 -20, label %bb.u
  ]

end_hunk_0
begin_hunk_1_@dissect_opensafety_message:bb.a
  %i.akd = load i32, ptr @hf_oss_ssdo_payload, align 4
  %i.ake = tail call ptr @proto_tree_add_item(ptr noundef %i.aaf, i32 noundef %i.akd, ptr noundef %1, i32 noundef %i.ajh, i32 noundef %i.ajk, i32 noundef 0) ; 0 uses
  br label %dissect_opensafety_ssdo_payload.exit.i

bb.dd:                                            ; preds = %bb.cv
  %i.akf = load i8, ptr @global_opensafety_debug_verbose, align 1, !range !6, !noundef !7
  %i.akg = trunc nuw i8 %i.akf to i1
  br i1 %i.akg, label %bb.de, label %dissect_opensafety_ssdo_payload.exit.i

bb.de:                                            ; preds = %bb.dd
  %i.akh = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.ajm, ptr noundef nonnull @ei_payload_length_not_positive, ptr noundef nonnull @.str.397, i32 noundef %i.ajk) ; 0 uses
  br label %dissect_opensafety_ssdo_payload.exit.i

bb.df:                                            ; preds = %bb.cu
  %i.aki = zext i8 %.0360.i to i32                ; 6 uses
  %i.akj = sub nsw i32 %i.aki, %i.vh              ; 2 uses
  %i.akk = sub nsw i32 %i.vd, %i.akj              ; 8 uses
  %i.akl = icmp sgt i32 %i.akj, %i.vd
  br i1 %i.akl, label %bb.dg, label %bb.di

bb.dg:                                            ; preds = %bb.df
  %i.akm = load i8, ptr @global_opensafety_debug_verbose, align 1, !range !6, !noundef !7
  %i.akn = trunc nuw i8 %i.akm to i1
  br i1 %i.akn, label %bb.dh, label %.critedge

bb.dh:                                            ; preds = %bb.dg
  %i.ako = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %3, ptr noundef nonnull @ei_payload_length_not_positive, ptr noundef nonnull @.str.397, i32 noundef %i.akk) ; 0 uses
  br label %.critedge

bb.di:                                            ; preds = %bb.df
  %.not383.i = icmp ne i32 %.0362.i, 0
  %brmerge404.not.i = and i1 %.not383.i, %i.aje
  br i1 %brmerge404.not.i, label %bb.dj, label %.thread.i

bb.dj:                                            ; preds = %bb.di
  store i8 1, ptr %i.aiu, align 8
  %i.akp = load ptr, ptr %i.aah, align 8
  %i.akq = getelementptr i8, ptr %i.akp, i64 1
  %i.akr = load i8, ptr %i.akq, align 1, !range !6, !noundef !7
  %i.aks = icmp eq i8 %i.akr, 0
  %i.akt = tail call ptr @fragment_add_seq_check(ptr noundef nonnull @os_reassembly_table, ptr noundef %1, i32 noundef %i.aki, ptr noundef %2, i32 noundef %.0362.i, ptr noundef null, i32 noundef %.0365.i, i32 noundef %i.akk, i1 noundef zeroext %i.aks) ; 3 uses
  %.not384.i = icmp eq ptr %i.akt, null
  br i1 %.not384.i, label %.thread.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.aku = load i32, ptr @hf_oss_ssdo_payload, align 4
  %i.akv = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format_value(ptr noundef %i.aaf, i32 noundef %i.aku, ptr noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.395) ; 3 uses
  %.not.i389.i = icmp eq ptr %i.akv, null
  br i1 %.not.i389.i, label %proto_item_set_generated.exit391.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.akw = getelementptr i8, ptr %i.akv, i64 40
  %i.akx = load ptr, ptr %i.akw, align 8          ; 2 uses
  %.not5.i390.i = icmp eq ptr %i.akx, null
  br i1 %.not5.i390.i, label %proto_item_set_generated.exit391.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.aky = getelementptr i8, ptr %i.akx, i64 28   ; 2 uses
  %i.akz = load i32, ptr %i.aky, align 4
  %i.ala = or i32 %i.akz, 2
  store i32 %i.ala, ptr %i.aky, align 4
  br label %proto_item_set_generated.exit391.i

proto_item_set_generated.exit391.i:               ; preds = %bb.dm, %bb.dl, %bb.dk
  %i.alb = load i32, ptr @ett_opensafety_ssdo_payload, align 4
  %i.alc = tail call ptr @proto_item_add_subtree(ptr noundef %i.akv, i32 noundef %i.alb) ; 5 uses
  %i.ald = tail call ptr @process_reassembled_data(ptr noundef %1, i32 noundef 0, ptr noundef %2, ptr noundef nonnull @.str.396, ptr noundef nonnull %i.akt, ptr noundef nonnull @oss_frag_items, ptr noundef null, ptr noundef %i.alc) ; 33 uses
  %i.ale = load ptr, ptr %i.aah, align 8
  %i.alf = getelementptr i8, ptr %i.ale, i64 1
  %i.alg = load i8, ptr %i.alf, align 1, !range !6, !noundef !7
  %i.alh = trunc nuw i8 %i.alg to i1
  %i.ali = icmp ne ptr %i.ald, null
  %or.cond6.i = select i1 %i.alh, i1 %i.ali, i1 false
  br i1 %or.cond6.i, label %bb.dn, label %dissect_opensafety_ssdo_payload.exit.i

bb.dn:                                            ; preds = %proto_item_set_generated.exit391.i
  %i.alj = load i32, ptr @hf_oss_ssdo_payload_size, align 4
  %i.alk = getelementptr i8, ptr %i.akt, i64 28
  %i.all = load i32, ptr %i.alk, align 4
  %i.alm = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.alc, i32 noundef %i.alj, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef %i.akk, ptr noundef nonnull @.str.398, i32 noundef %i.all) ; 2 uses
  %.not.i392.i = icmp eq ptr %i.alm, null
  br i1 %.not.i392.i, label %proto_item_set_generated.exit394.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.aln = getelementptr i8, ptr %i.alm, i64 40
  %i.alo = load ptr, ptr %i.aln, align 8          ; 2 uses
  %.not5.i393.i = icmp eq ptr %i.alo, null
  br i1 %.not5.i393.i, label %proto_item_set_generated.exit394.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.alp = getelementptr i8, ptr %i.alo, i64 28   ; 2 uses
  %i.alq = load i32, ptr %i.alp, align 4
  %i.alr = or i32 %i.alq, 2
  store i32 %i.alr, ptr %i.alp, align 4
  br label %proto_item_set_generated.exit394.i

proto_item_set_generated.exit394.i:               ; preds = %bb.dp, %bb.do, %bb.dn
  %i.als = load ptr, ptr %i.adz, align 8
  tail call void @col_append_str(ptr noundef %i.als, i32 noundef 25, ptr noundef nonnull @.str.399)
  %i.alt = tail call i32 @tvb_captured_length(ptr noundef nonnull %i.ald) ; 12 uses
  %i.alu = tail call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %i.ald, i32 noundef 0)
  %i.alv = tail call i32 @tvb_get_letohl(ptr noundef nonnull %i.ald, i32 noundef 4) ; 5 uses
  %i.alw = icmp eq i32 %i.alt, 16                 ; 2 uses
  br i1 %i.alw, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %proto_item_set_generated.exit394.i
  %i.alx = add i32 %i.alt, -16
  %i.aly = icmp eq i32 %i.alv, %i.alx
  %i.alz = icmp eq i16 %i.alu, 257
  %or.cond.i.i = select i1 %i.aly, i1 true, i1 %i.alz
  br i1 %or.cond.i.i, label %bb.dr, label %bb.du

bb.dr:                                            ; preds = %bb.dq, %proto_item_set_generated.exit394.i
  %i.ama = phi ptr [ @.str.315, %bb.dq ], [ @.str.314, %proto_item_set_generated.exit394.i ]
  %i.amb = load i32, ptr @hf_oss_ssdo_extpar, align 4
  %i.amc = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %i.alc, i32 noundef %i.amb, ptr noundef nonnull %i.ald, i32 noundef 0, i32 noundef %i.alt, ptr noundef nonnull @.str.347, ptr noundef nonnull @.str.506, ptr noundef nonnull %i.ama)
  %i.amd = load i32, ptr @ett_opensafety_ssdo_extpar, align 4
  %i.ame = tail call ptr @proto_item_add_subtree(ptr noundef %i.amc, i32 noundef %i.amd) ; 7 uses
  %i.amf = load i32, ptr @hf_oss_ssdo_extpar_parset, align 4
  %i.amg = tail call ptr @proto_tree_add_item(ptr noundef %i.ame, i32 noundef %i.amf, ptr noundef nonnull %i.ald, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.amh = load i32, ptr @hf_oss_ssdo_extpar_version, align 4
  %i.ami = tail call ptr @proto_tree_add_item(ptr noundef %i.ame, i32 noundef %i.amh, ptr noundef nonnull %i.ald, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.amj = load i32, ptr @hf_oss_ssdo_extpar_saddr, align 4
  %i.amk = tail call ptr @proto_tree_add_item(ptr noundef %i.ame, i32 noundef %i.amj, ptr noundef nonnull %i.ald, i32 noundef 2, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.aml = load i32, ptr @hf_oss_ssdo_extpar_length, align 4
  %i.amm = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.ame, i32 noundef %i.aml, ptr noundef nonnull %i.ald, i32 noundef 4, i32 noundef 4, i32 noundef %i.alv, ptr noundef nonnull @.str.507, i32 noundef %i.alv, i32 noundef %i.alv) ; 0 uses
  %i.amn = load i32, ptr @hf_oss_ssdo_extpar_crc, align 4
  %i.amo = tail call ptr @proto_tree_add_item(ptr noundef %i.ame, i32 noundef %i.amn, ptr noundef nonnull %i.ald, i32 noundef 8, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.amp = load i32, ptr @hf_oss_ssdo_extpar_tstamp, align 4
  %i.amq = tail call ptr @proto_tree_add_item(ptr noundef %i.ame, i32 noundef %i.amp, ptr noundef nonnull %i.ald, i32 noundef 12, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br i1 %i.alw, label %dissect_opensafety_ssdo_payload.exit.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.amr = load i32, ptr @hf_oss_ssdo_extpar_data, align 4
  %i.ams = add i32 %i.alt, -16
  %i.amt = tail call ptr @proto_tree_add_item(ptr noundef %i.ame, i32 noundef %i.amr, ptr noundef nonnull %i.ald, i32 noundef 16, i32 noundef %i.ams, i32 noundef 0)
  %i.amu = sub i32 %i.alt, %i.alv
  %.not193.i.i = icmp eq i32 %i.amu, 16
  br i1 %.not193.i.i, label %dissect_opensafety_ssdo_payload.exit.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.amv = tail call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.amt, ptr noundef nonnull @ei_message_reassembly_size_differs_from_header) ; 0 uses
  br label %dissect_opensafety_ssdo_payload.exit.i

bb.du:                                            ; preds = %bb.dq
  %i.amw = icmp eq i8 %spec.select.i, 72
  %i.amx = and i32 %i.alt, 3
  %i.amy = icmp eq i32 %i.amx, 0
  %or.cond195.i.i = select i1 %i.amw, i1 %i.amy, i1 false
  br i1 %or.cond195.i.i, label %bb.dv, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.du
  %.not211.i.i = icmp eq i32 %i.alt, 0
  br i1 %.not211.i.i, label %dissect_opensafety_ssdo_payload.exit.i, label %.lr.ph207.i.i

bb.dv:                                            ; preds = %bb.du
  %i.amz = load i32, ptr @hf_oss_ssdo_sod_index, align 4
  %i.ana = tail call ptr @val_to_str_ext_const(i32 noundef 270008320, ptr noundef nonnull @opensafety_sod_idx_names_ext, ptr noundef nonnull @.str.365)
  %i.anb = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.alc, i32 noundef %i.amz, ptr noundef nonnull %i.ald, i32 noundef 0, i32 noundef 0, i32 noundef 4120, ptr noundef nonnull @.str.388, i32 noundef 4120, ptr noundef %i.ana) ; 3 uses
  %i.anc = load i32, ptr @ett_opensafety_ssdo_sodentry, align 4
  %i.and = tail call ptr @proto_item_add_subtree(ptr noundef %i.anb, i32 noundef %i.anc) ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.anb, null
  br i1 %.not.i.i.i, label %proto_item_set_generated.exit.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.ane = getelementptr i8, ptr %i.anb, i64 40
  %i.anf = load ptr, ptr %i.ane, align 8          ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.anf, null
  br i1 %.not5.i.i.i, label %proto_item_set_generated.exit.i.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ang = getelementptr i8, ptr %i.anf, i64 28   ; 2 uses
  %i.anh = load i32, ptr %i.ang, align 4
  %i.ani = or i32 %i.anh, 2
  store i32 %i.ani, ptr %i.ang, align 4
  br label %proto_item_set_generated.exit.i.i

proto_item_set_generated.exit.i.i:                ; preds = %bb.dx, %bb.dw, %bb.dv
  %i.anj = load i32, ptr @hf_oss_ssdo_sod_subindex, align 4
  %i.ank = tail call ptr @val_to_str_ext_const(i32 noundef 270008326, ptr noundef nonnull @opensafety_sod_idx_names_ext, ptr noundef nonnull @.str.365)
  %i.anl = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.and, i32 noundef %i.anj, ptr noundef nonnull %i.ald, i32 noundef 0, i32 noundef 0, i32 noundef 6, ptr noundef nonnull @.str.390, i32 noundef 6, ptr noundef %i.ank) ; 2 uses
  %.not.i196.i.i = icmp eq ptr %i.anl, null
  br i1 %.not.i196.i.i, label %proto_item_set_generated.exit198.i.i, label %bb.dy

bb.dy:                                            ; preds = %proto_item_set_generated.exit.i.i
  %i.anm = getelementptr i8, ptr %i.anl, i64 40
  %i.ann = load ptr, ptr %i.anm, align 8          ; 2 uses
  %.not5.i197.i.i = icmp eq ptr %i.ann, null
  br i1 %.not5.i197.i.i, label %proto_item_set_generated.exit198.i.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.ano = getelementptr i8, ptr %i.ann, i64 28   ; 2 uses
  %i.anp = load i32, ptr %i.ano, align 4
  %i.anq = or i32 %i.anp, 2
  store i32 %i.anq, ptr %i.ano, align 4
  br label %proto_item_set_generated.exit198.i.i

proto_item_set_generated.exit198.i.i:             ; preds = %bb.dz, %bb.dy, %proto_item_set_generated.exit.i.i
  %i.anr = load i32, ptr @hf_oss_sod_par_timestamp, align 4
  %i.ans = tail call ptr @proto_tree_add_item(ptr noundef %i.and, i32 noundef %i.anr, ptr noundef nonnull %i.ald, i32 noundef 0, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %7 = lshr exact i32 %i.alt, 2
  %i.ant = icmp ugt i32 %i.alt, 4
  br i1 %i.ant, label %.lr.ph210.i.i, label %dissect_opensafety_ssdo_payload.exit.i

.lr.ph210.i.i:                                    ; preds = %proto_item_set_generated.exit198.i.i, %.lr.ph210.i.i
  %.0185209.i.i = phi i32 [ %i.any, %.lr.ph210.i.i ], [ 1, %proto_item_set_generated.exit198.i.i ] ; 3 uses
  %i.anu = shl nuw i32 %.0185209.i.i, 2           ; 2 uses
  %i.anv = tail call i32 @tvb_get_letohl(ptr noundef nonnull %i.ald, i32 noundef %i.anu) ; 2 uses
  %i.anw = load i32, ptr @hf_oss_sod_par_checksum, align 4
  %i.anx = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.and, i32 noundef %i.anw, ptr noundef nonnull %i.ald, i32 noundef %i.anu, i32 noundef 4, i32 noundef %i.anv, ptr noundef nonnull @.str.401, i32 noundef %.0185209.i.i, i32 noundef %i.anv) ; 0 uses
  %i.any = add nuw nsw i32 %.0185209.i.i, 1       ; 2 uses
  %exitcond213.not.i.i = icmp eq i32 %i.any, %7
  br i1 %exitcond213.not.i.i, label %dissect_opensafety_ssdo_payload.exit.i, label %.lr.ph210.i.i, !llvm.loop !14

.lr.ph207.i.i:                                    ; preds = %.preheader.i.i, %.loopexit203.i.i
  %.1206.i.i = phi i32 [ %i.aqu, %.loopexit203.i.i ], [ 0, %.preheader.i.i ] ; 11 uses
  %i.anz = tail call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %i.ald, i32 noundef %.1206.i.i) ; 7 uses
  %i.aoa = zext i16 %i.anz to i32                 ; 5 uses
  %i.aob = add i32 %.1206.i.i, 2                  ; 4 uses
  %i.aoc = tail call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %i.ald, i32 noundef %i.aob) ; 4 uses
  %i.aod = zext i8 %i.aoc to i32                  ; 3 uses
  %i.aoe = add i16 %i.anz, -5120
  %or.cond3.i.i = icmp ult i16 %i.aoe, 1023
  br i1 %or.cond3.i.i, label %bb.ed, label %bb.ea

bb.ea:                                            ; preds = %.lr.ph207.i.i
  %i.aof = add i16 %i.anz, -6144
  %or.cond5.i.i = icmp ult i16 %i.aof, 1023
  br i1 %or.cond5.i.i, label %bb.ed, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.aog = add i16 %i.anz, -7168
  %or.cond7.i.i = icmp ult i16 %i.aog, 1023
  br i1 %or.cond7.i.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.aoh = add i16 %i.anz, 16384
  %or.cond9.i.i = icmp ult i16 %i.aoh, 1023
  %spec.select.i.i = select i1 %or.cond9.i.i, i32 49152, i32 %i.aoa
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb, %bb.ea, %.lr.ph207.i.i
  %.0.i.i = phi i32 [ %spec.select.i.i, %bb.ec ], [ 5120, %.lr.ph207.i.i ], [ 6144, %bb.ea ], [ 7168, %bb.eb ] ; 4 uses
  %i.aoi = load i32, ptr @hf_oss_ssdo_sod_index, align 4
  %i.aoj = shl nuw i32 %.0.i.i, 16
  %i.aok = tail call ptr @val_to_str_ext_const(i32 noundef %i.aoj, ptr noundef nonnull @opensafety_sod_idx_names_ext, ptr noundef nonnull @.str.365)
  %i.aol = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.alc, i32 noundef %i.aoi, ptr noundef nonnull %i.ald, i32 noundef %.1206.i.i, i32 noundef 2, i32 noundef %i.aoa, ptr noundef nonnull @.str.388, i32 noundef %i.aoa, ptr noundef %i.aok) ; 4 uses
  %.not.i395.i = icmp eq i32 %.0.i.i, %i.aoa
  %.not.i199.i.i = icmp eq ptr %i.aol, null
  %or.cond202.i.i = select i1 %.not.i395.i, i1 true, i1 %.not.i199.i.i
  br i1 %or.cond202.i.i, label %proto_item_set_generated.exit201.i.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.aom = getelementptr i8, ptr %i.aol, i64 40
  %i.aon = load ptr, ptr %i.aom, align 8          ; 2 uses
  %.not5.i200.i.i = icmp eq ptr %i.aon, null
  br i1 %.not5.i200.i.i, label %proto_item_set_generated.exit201.i.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.aoo = getelementptr i8, ptr %i.aon, i64 28   ; 2 uses
  %i.aop = load i32, ptr %i.aoo, align 4
  %i.aoq = or i32 %i.aop, 2
  store i32 %i.aoq, ptr %i.aoo, align 4
  br label %proto_item_set_generated.exit201.i.i

proto_item_set_generated.exit201.i.i:             ; preds = %bb.ef, %bb.ee, %bb.ed
  %i.aor = add i16 %i.anz, 6144
  %or.cond11.i.i = icmp ult i16 %i.aor, 10240
  br i1 %or.cond11.i.i, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %proto_item_set_generated.exit201.i.i
  %i.aos = tail call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.aol, ptr noundef nonnull @ei_payload_unknown_format) ; 0 uses
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %proto_item_set_generated.exit201.i.i
  %i.aot = load i32, ptr @ett_opensafety_ssdo_sodentry, align 4
  %i.aou = tail call ptr @proto_item_add_subtree(ptr noundef %i.aol, i32 noundef %i.aot) ; 8 uses
  %i.aov = icmp ne i8 %i.aoc, 0                   ; 2 uses
  %i.aow = load i32, ptr @hf_oss_ssdo_sod_subindex, align 4 ; 2 uses
  br i1 %i.aov, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.aox = shl nuw i32 %i.aoa, 16
  %i.aoy = or disjoint i32 %i.aox, %i.aod
  %i.aoz = tail call ptr @val_to_str_ext_const(i32 noundef %i.aoy, ptr noundef nonnull @opensafety_sod_idx_names_ext, ptr noundef nonnull @.str.365)
  %i.apa = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.aou, i32 noundef %i.aow, ptr noundef nonnull %i.ald, i32 noundef %i.aob, i32 noundef 1, i32 noundef %i.aod, ptr noundef nonnull @.str.390, i32 noundef %i.aod, ptr noundef %i.aoz) ; 0 uses
  br label %bb.ek

bb.ej:                                            ; preds = %bb.eh
  %i.apb = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.aou, i32 noundef %i.aow, ptr noundef nonnull %i.ald, i32 noundef %i.aob, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.508, i32 noundef 0) ; 0 uses
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.apc = add i32 %.1206.i.i, 3                  ; 2 uses
  %i.apd = tail call i32 @tvb_get_letohl(ptr noundef nonnull %i.ald, i32 noundef %i.apc) ; 2 uses
  %i.ape = sub i32 %i.alt, %i.aob
  %i.apf = icmp ugt i32 %i.apd, %i.ape
  %spec.store.select.i.i = select i1 %i.apf, i32 0, i32 %i.apd ; 7 uses
  %i.apg = add i32 %.1206.i.i, 6
  %i.aph = add i32 %i.apg, %spec.store.select.i.i ; 2 uses
  %i.api = icmp ugt i32 %i.aph, %i.alt
  br i1 %i.api, label %dissect_opensafety_ssdo_payload.exit.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.apj = icmp eq i16 %i.anz, 4120               ; 2 uses
  %i.apk = icmp eq i8 %i.aoc, 6
  %or.cond13.i.i = select i1 %i.apj, i1 %i.apk, i1 false
  br i1 %or.cond13.i.i, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.apl = load i32, ptr @hf_oss_sod_par_timestamp, align 4
  %i.apm = add i32 %.1206.i.i, 7                  ; 2 uses
  %i.apn = tail call ptr @proto_tree_add_item(ptr noundef %i.aou, i32 noundef %i.apl, ptr noundef nonnull %i.ald, i32 noundef %i.apm, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.apo = lshr i32 %spec.store.select.i.i, 2
  %i.app = icmp ugt i32 %spec.store.select.i.i, 7
  br i1 %i.app, label %.lr.ph.i.i, label %.loopexit203.i.i

.lr.ph.i.i:                                       ; preds = %bb.em, %.lr.ph.i.i
  %.0184205.i.i = phi i32 [ %i.apv, %.lr.ph.i.i ], [ 1, %bb.em ] ; 3 uses
  %i.apq = shl nuw i32 %.0184205.i.i, 2
  %i.apr = add i32 %i.apq, %i.apm                 ; 2 uses
  %i.aps = tail call i32 @tvb_get_letohl(ptr noundef nonnull %i.ald, i32 noundef %i.apr) ; 2 uses
  %i.apt = load i32, ptr @hf_oss_sod_par_checksum, align 4
  %i.apu = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.aou, i32 noundef %i.apt, ptr noundef nonnull %i.ald, i32 noundef %i.apr, i32 noundef 4, i32 noundef %i.aps, ptr noundef nonnull @.str.401, i32 noundef %.0184205.i.i, i32 noundef %i.aps) ; 0 uses
  %i.apv = add nuw nsw i32 %.0184205.i.i, 1       ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.apv, %i.apo
  br i1 %exitcond.not.i.i, label %.loopexit203.i.i, label %.lr.ph.i.i, !llvm.loop !15

bb.en:                                            ; preds = %bb.el
  %i.apw = icmp eq i8 %i.aoc, 7
  %or.cond15.i.i = select i1 %i.apj, i1 %i.apw, i1 false
  br i1 %or.cond15.i.i, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.apx = load i32, ptr @hf_oss_sod_par_timestamp, align 4
  %i.apy = add i32 %.1206.i.i, 7
  %i.apz = tail call ptr @proto_tree_add_item(ptr noundef %i.aou, i32 noundef %i.apx, ptr noundef nonnull %i.ald, i32 noundef %i.apy, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %.loopexit203.i.i

bb.ep:                                            ; preds = %bb.en
  %i.aqa = icmp eq i32 %.0.i.i, 6144
  %i.aqb = icmp eq i32 %.0.i.i, 49152
  %or.cond17.i.i = or i1 %i.aqa, %i.aqb
  %or.cond19.i.i = and i1 %i.aov, %or.cond17.i.i
  %i.aqc = load i32, ptr @hf_oss_ssdo_sodentry_size, align 4
  %i.aqd = tail call ptr @proto_tree_add_uint(ptr noundef %i.aou, i32 noundef %i.aqc, ptr noundef nonnull %i.ald, i32 noundef %i.apc, i32 noundef 4, i32 noundef %spec.store.select.i.i) ; 0 uses
  br i1 %or.cond19.i.i, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.aqe = load i32, ptr @hf_oss_ssdo_sodmapping, align 4
  %i.aqf = add i32 %.1206.i.i, 7                  ; 2 uses
  %i.aqg = tail call ptr @proto_tree_add_item(ptr noundef %i.aou, i32 noundef %i.aqe, ptr noundef nonnull %i.ald, i32 noundef %i.aqf, i32 noundef %spec.store.select.i.i, i32 noundef 0)
  %i.aqh = load i32, ptr @ett_opensafety_sod_mapping, align 4
  %i.aqi = tail call ptr @proto_item_add_subtree(ptr noundef %i.aqg, i32 noundef %i.aqh) ; 3 uses
  %i.aqj = load i32, ptr @hf_oss_ssdo_sodmapping_bits, align 4
  %i.aqk = tail call ptr @proto_tree_add_item(ptr noundef %i.aqi, i32 noundef %i.aqj, ptr noundef nonnull %i.ald, i32 noundef %i.aqf, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aql = load i32, ptr @hf_oss_ssdo_sod_index, align 4
  %i.aqm = add i32 %.1206.i.i, 9
  %i.aqn = tail call ptr @proto_tree_add_item(ptr noundef %i.aqi, i32 noundef %i.aql, ptr noundef nonnull %i.ald, i32 noundef %i.aqm, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.aqo = load i32, ptr @hf_oss_ssdo_sod_subindex, align 4
  %i.aqp = add i32 %.1206.i.i, 8
  %i.aqq = tail call ptr @proto_tree_add_item(ptr noundef %i.aqi, i32 noundef %i.aqo, ptr noundef nonnull %i.ald, i32 noundef %i.aqp, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.loopexit203.i.i

bb.er:                                            ; preds = %bb.ep
  %.not191.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not191.i.i, label %.loopexit203.i.i, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.aqr = load i32, ptr @hf_oss_ssdo_sodentry_data, align 4
  %i.aqs = add i32 %.1206.i.i, 7
  %i.aqt = tail call ptr @proto_tree_add_item(ptr noundef %i.aou, i32 noundef %i.aqr, ptr noundef nonnull %i.ald, i32 noundef %i.aqs, i32 noundef %spec.store.select.i.i, i32 noundef 0) ; 0 uses
  br label %.loopexit203.i.i

.loopexit203.i.i:                                 ; preds = %.lr.ph.i.i, %bb.es, %bb.er, %bb.eq, %bb.eo, %bb.em
  %i.aqu = add i32 %i.aph, 1                      ; 2 uses
  %i.aqv = icmp ult i32 %i.aqu, %i.alt
  br i1 %i.aqv, label %.lr.ph207.i.i, label %dissect_opensafety_ssdo_payload.exit.i, !llvm.loop !16

.thread.i:                                        ; preds = %bb.dj, %bb.di
  %i.aqw = load i32, ptr @hf_oss_ssdo_payload_size, align 4
  %i.aqx = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.aaf, i32 noundef %i.aqw, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef %i.akk, ptr noundef nonnull @.str.400, i32 noundef %i.akk) ; 2 uses
  %.not.i396.i = icmp eq ptr %i.aqx, null
  br i1 %.not.i396.i, label %proto_item_set_generated.exit398.i, label %bb.et

bb.et:                                            ; preds = %.thread.i
  %i.aqy = getelementptr i8, ptr %i.aqx, i64 40
  %i.aqz = load ptr, ptr %i.aqy, align 8          ; 2 uses
  %.not5.i397.i = icmp eq ptr %i.aqz, null
  br i1 %.not5.i397.i, label %proto_item_set_generated.exit398.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ara = getelementptr i8, ptr %i.aqz, i64 28   ; 2 uses
  %i.arb = load i32, ptr %i.ara, align 4
  %i.arc = or i32 %i.arb, 2
  store i32 %i.arc, ptr %i.ara, align 4
  br label %proto_item_set_generated.exit398.i

proto_item_set_generated.exit398.i:               ; preds = %bb.eu, %bb.et, %.thread.i
  %i.ard = icmp eq i32 %.0363.i, 6
  %or.cond8.i = select i1 %.0364.i, i1 %i.ard, i1 false
  br i1 %or.cond8.i, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %proto_item_set_generated.exit398.i
  %i.are = load i32, ptr @hf_oss_sod_par_timestamp, align 4
  %i.arf = tail call ptr @proto_tree_add_item(ptr noundef %i.aaf, i32 noundef %i.are, ptr noundef %1, i32 noundef %i.aki, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.arg = icmp ugt i32 %i.akk, 4
  br i1 %i.arg, label %.lr.ph.i, label %dissect_opensafety_ssdo_payload.exit.i

.lr.ph.i:                                         ; preds = %bb.ev, %.lr.ph.i
  %.0407.i = phi i32 [ %i.arm, %.lr.ph.i ], [ 4, %bb.ev ] ; 3 uses
  %i.arh = add i32 %.0407.i, %i.aki               ; 2 uses
end_hunk_1
begin_hunk_2_@opensafety_packet_node:bb.a
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.i, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.i, i64 28       ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = or i32 %i.k, 2
  store i32 %i.l, ptr %i.j, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.a, %bb.b, %bb.c
  %.not = icmp eq i16 %7, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %proto_item_set_generated.exit
  %i.m = zext i16 %7 to i32
  %i.n = load i32, ptr @hf_oss_msg_network, align 4
  %i.o = zext i16 %6 to i32
  %i.p = tail call ptr @proto_tree_add_uint(ptr noundef %i.e, i32 noundef %i.n, ptr noundef %0, i32 noundef %i.o, i32 noundef 2, i32 noundef %i.m)
  br label %bb.f

bb.e:                                             ; preds = %proto_item_set_generated.exit
  %i.q = load i32, ptr @hf_oss_msg_network, align 4
  %i.r = zext i16 %6 to i32
  %i.s = tail call ptr @proto_tree_add_uint(ptr noundef %i.e, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.r, i32 noundef 2, i32 noundef 0) ; 2 uses
  %i.t = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.s, ptr noundef nonnull @ei_scmudid_unknown) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ %i.p, %bb.d ], [ %i.s, %bb.e ]  ; 2 uses
  %.not.i24 = icmp eq ptr %.0, null
  br i1 %.not.i24, label %proto_item_set_generated.exit26, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr i8, ptr %.0, i64 40
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not5.i25 = icmp eq ptr %i.v, null
  br i1 %.not5.i25, label %proto_item_set_generated.exit26, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr i8, ptr %i.v, i64 28       ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = or i32 %i.x, 2
  store i32 %i.y, ptr %i.w, align 4
  br label %proto_item_set_generated.exit26

proto_item_set_generated.exit26:                  ; preds = %bb.f, %bb.g, %bb.h
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @g_strcmp0(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @g_byte_array_new() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @hex_str_to_bytes(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @g_byte_array_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_ext_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_letohl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @fragment_add_seq_check(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @fragment_add_seq_offset(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bytes_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @process_reassembled_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @_try_val_to_str_ext_init(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint64(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @dissector_try_heuristic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @add_conversation_table_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare ptr @wmem_memdup(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal noundef nonnull ptr @opensafety_conv_get_filter_type(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #7 {
bb.a:
  switch i32 %1, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 12
  br i1 %i.c, label %bb.g, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, 12
  br i1 %i.f, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, 12
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %0, i64 32
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp eq i32 %i.k, 12
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d, %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.b, %bb.f
  %.0 = phi ptr [ @.str.519, %bb.f ], [ @.str.19, %bb.b ], [ @.str.21, %bb.c ], [ @.str.15, %bb.e ]
  ret ptr %.0
}

; Function Attrs: null_pointer_is_valid
declare void @add_endpoint_table_data(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal noundef nonnull ptr @opensafety_get_filter_type(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 12
  %i.d = icmp ult i32 %1, 3
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.e = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.opensafety_get_filter_type, i64 %i.e
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.519, %bb.a ]
  ret ptr %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_list_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strsplit(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i64 @g_ascii_strtoll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wmem_list_append(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @find_heur_dissector_by_unique_short_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wmem_destroy_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { allocsize(1) }
attributes #13 = { allocsize(2) }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{i8 0, i8 2}
!7 = !{}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
end_hunk_2
