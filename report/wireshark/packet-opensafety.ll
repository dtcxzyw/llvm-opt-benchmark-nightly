Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-opensafety?download=true
inline.NumInlined: 44
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@setup_dissector:bb.a
  %i.a = tail call ptr @wmem_file_scope()
  %i.b = tail call ptr @wmem_list_new(ptr noundef %i.a)
  store ptr %i.b, ptr @global_filter_list, align 8
  %i.c = tail call ptr @wmem_file_scope()
  %i.d = load ptr, ptr @global_filter_nodes, align 8
  %i.e = tail call ptr @wmem_strsplit(ptr noundef %i.c, ptr noundef %i.d, ptr noundef nonnull @.str.521, i32 noundef -1) ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.f, null
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.g = phi ptr [ %i.q, %bb.c ], [ %i.f, %bb.a ]
  %.011 = phi ptr [ %i.p, %bb.c ], [ %i.e, %bb.a ] ; 2 uses
  %i.h = tail call i64 @g_ascii_strtoll(ptr noundef nonnull %i.g, ptr noundef null, i32 noundef 10)
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.j = load ptr, ptr @global_filter_list, align 8
  %i.k = load ptr, ptr %.011, align 8
  %i.l = tail call i64 @g_ascii_strtoll(ptr noundef %i.k, ptr noundef null, i32 noundef 10)
  %i.m = shl i64 %i.l, 32
  %i.n = ashr exact i64 %i.m, 32
  %i.o = inttoptr i64 %i.n to ptr
  tail call void @wmem_list_append(ptr noundef %i.j, ptr noundef %i.o)
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.p = getelementptr i8, ptr %.011, i64 8       ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.r = tail call ptr @find_heur_dissector_by_unique_short_name(ptr noundef nonnull @.str.264) ; 2 uses
  %.not9 = icmp eq ptr %i.r, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.s = getelementptr i8, ptr %i.r, i64 40
  %i.t = load i8, ptr %i.s, align 8, !range !6, !noundef !7
  store i8 %i.t, ptr @heuristic_siii_dissection_enabled, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @register_cleanup_routine(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @cleanup_dissector() #0 {
bb.a:
  store ptr null, ptr @local_scm_udid, align 8
  %i.a = load ptr, ptr @global_filter_list, align 8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @wmem_destroy_list(ptr noundef nonnull %i.a)
  store ptr null, ptr @global_filter_list, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @reassembly_table_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @dissector_delete_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @findSafetyFrame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef writeonly captures(address_is_null) %6) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %2) ; 2 uses
  %i.b = icmp ugt i32 %i.a, 9
  br i1 %i.b, label %.lr.ph, label %.thread184

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 416
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %.0151192 = phi i32 [ %i.a, %.lr.ph ], [ %.0151.be, %.backedge ]
  %.0152190 = phi i32 [ %2, %.lr.ph ], [ %.0152.be, %.backedge ] ; 14 uses
  %.not = icmp eq i32 %.0152190, 0
  br i1 %.not, label %bb.aa, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %1, i32 noundef %.0152190, i32 noundef 2)
  br i1 %i.d, label %bb.d, label %bb.aa

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %5, align 4
  store i32 0, ptr %4, align 4
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %.0152190) ; 4 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %.not163 = icmp eq i8 %i.e, 0
  br i1 %.not163, label %bb.aa, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = add i32 %.0152190, 1                     ; 2 uses
  %i.h = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.g) ; 5 uses
  %or.cond176 = icmp sgt i8 %i.e, -2
  br i1 %or.cond176, label %bb.y, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %.0152190) ; 3 uses
  %i.j = zext i8 %i.h to i32                      ; 10 uses
  %i.k = shl nuw nsw i32 %i.j, 1                  ; 3 uses
  %i.l = add i32 %i.i, 11
  %i.m = icmp ult i32 %i.k, %i.l
  br i1 %i.m, label %bb.g, label %bb.aa

bb.g:                                             ; preds = %bb.f
  %i.n = icmp ugt i8 %i.h, 8                      ; 4 uses
  %.not166 = icmp ult i32 %i.i, %i.j
  %or.cond177 = or i1 %i.n, %.not166
  br i1 %or.cond177, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %.pre = add nuw nsw i32 %i.j, 5
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = icmp ult i8 %i.h, 9
  %i.p = add nuw nsw i32 %i.j, 5                  ; 2 uses
  %.not167 = icmp ugt i32 %i.p, %i.i
  %or.cond178 = select i1 %i.o, i1 true, i1 %.not167
  br i1 %or.cond178, label %bb.aa, label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.p, %bb.h ] ; 2 uses
  %i.q = add i32 %.0152190, -1                    ; 4 uses
  %i.r = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %1, i32 noundef %i.q, i32 noundef %.pre-phi)
  br i1 %i.r, label %bb.j, label %bb.aa

bb.j:                                             ; preds = %bb.i
  %i.s = lshr i32 %i.f, 4
  switch i32 %i.s, label %bb.k [
    i32 9, label %bb.aa
    i32 15, label %bb.aa
  ]

bb.k:                                             ; preds = %bb.j
  %i.t = add i32 %.0152190, 3
  %i.u = add i32 %i.t, %i.j                       ; 2 uses
  %i.v = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.u) ; 2 uses
  %i.w = zext i8 %i.v to i16
  %i.x = add i32 %.0152190, 2
  %i.y = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.x)
  %i.z = icmp ne i8 %i.h, 0                       ; 2 uses
  %i.aa = icmp ne i8 %i.v, 0
  %or.cond = select i1 %i.z, i1 true, i1 %i.aa
  %i.ab = icmp ne i8 %i.y, 0
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.ab
  br i1 %or.cond5, label %bb.l, label %bb.aa

bb.l:                                             ; preds = %bb.k
  %i.ac = load ptr, ptr %i.c, align 8
  %i.ad = zext nneg i32 %.pre-phi to i64
  %i.ae = tail call ptr @tvb_memdup(ptr noundef %i.ac, ptr noundef %1, i32 noundef %i.q, i64 noundef %i.ad) ; 3 uses
  br i1 %i.n, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.af = tail call zeroext i16 @tvb_get_letohs(ptr noundef %1, i32 noundef %i.u) ; 4 uses
  %i.ag = add nuw nsw i32 %i.j, 4                 ; 2 uses
  %i.ah = tail call zeroext i16 @crc16_0x755B(ptr noundef %i.ae, i32 noundef %i.ag, i16 noundef zeroext 0)
  %.not170 = icmp eq i16 %i.af, %i.ah
  br i1 %.not170, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = tail call zeroext i16 @crc16_0x5935(ptr noundef %i.ae, i32 noundef %i.ag, i16 noundef zeroext 0) ; 2 uses
  %i.aj = icmp eq i16 %i.af, %i.ai
  %. = select i1 %i.aj, i8 8, i8 -1
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.ak = add nuw nsw i32 %i.j, 4
  %i.al = tail call zeroext i8 @crc8_0x2F(ptr noundef %i.ae, i32 noundef %i.ak, i8 noundef zeroext 0)
  %i.am = zext i8 %i.al to i16
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.0150 = phi i16 [ %i.af, %bb.n ], [ %i.w, %bb.o ] ; 2 uses
  %.1145 = phi i16 [ %i.ai, %bb.n ], [ %i.am, %bb.o ]
  %.0139 = phi i32 [ 1, %bb.n ], [ 0, %bb.o ]
  %.1137 = phi i8 [ %., %bb.n ], [ 1, %bb.o ]
  %i.an = icmp eq i16 %.0150, %.1145
  br i1 %i.an, label %.thread, label %bb.aa

.thread:                                          ; preds = %bb.m, %bb.p
  %.1137207 = phi i8 [ %.1137, %bb.p ], [ 2, %bb.m ] ; 2 uses
  %.0139206 = phi i32 [ %.0139, %bb.p ], [ 1, %bb.m ] ; 2 uses
  %.0150205 = phi i16 [ %.0150, %bb.p ], [ %i.af, %bb.m ] ; 3 uses
  %.mask171 = and i32 %i.f, 248
  %i.ao = icmp eq i32 %.mask171, 232
  br i1 %i.ao, label %bb.q, label %bb.u

bb.q:                                             ; preds = %.thread
  br i1 %i.z, label %bb.r, label %bb.aa

bb.r:                                             ; preds = %bb.q
  store i32 %i.q, ptr %4, align 4
  %i.ap = shl nuw nsw i32 %.0139206, 1
  %i.aq = add nuw nsw i32 %i.j, 11
  %i.ar = add nuw nsw i32 %i.aq, %i.ap
  store i32 %i.ar, ptr %5, align 4
  %i.as = add i32 %.0152190, 8
  %i.at = add i32 %i.as, %i.j                     ; 2 uses
  %i.au = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.at)
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
  store i16 %.0150205, ptr %i.cb, align 2
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
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
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
end_hunk_0
