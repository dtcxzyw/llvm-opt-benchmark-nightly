Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/prism?download=true
inline.NumInlined: 2622
inline.NumDeleted: 264
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@parse_pattern_hash_implicit_value:bb.a
  br i1 %i.l, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %0, i64 496
  %.0816.i = load ptr, ptr %i.m, align 8, !tbaa !82 ; 2 uses
  %.not17.i = icmp eq ptr %.0816.i, null
  br i1 %.not17.i, label %pm_parser_local_depth_constant_id.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.n = lshr i32 %i.i, 16
  %i.o = xor i32 %i.n, %i.i
  %i.p = mul i32 %i.o, 73244475                   ; 2 uses
  %i.q = lshr i32 %i.p, 16
  %i.r = xor i32 %i.q, %i.p
  %i.s = mul i32 %i.r, 73244475                   ; 2 uses
  %i.t = lshr i32 %i.s, 16
  %i.u = xor i32 %i.t, %i.s                       ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.j, %.lr.ph.i
  %.0820.i = phi ptr [ %.0816.i, %.lr.ph.i ], [ %.08.i, %bb.j ] ; 6 uses
  %.018.i = phi i32 [ 0, %.lr.ph.i ], [ %i.au, %bb.j ] ; 3 uses
  %i.v = getelementptr i8, ptr %.0820.i, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !95   ; 2 uses
  %i.x = icmp ult i32 %i.w, 9
  br i1 %i.x, label %.preheader.i.i, label %bb.f

.preheader.i.i:                                   ; preds = %bb.c
  %i.y = getelementptr i8, ptr %.0820.i, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !146  ; 2 uses
  %.not57.i.i = icmp eq i32 %i.z, 0
  br i1 %.not57.i.i, label %pm_locals_find.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.aa = getelementptr i8, ptr %.0820.i, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !96
  %wide.trip.count.i.i = zext i32 %i.z to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 3 uses
  %i.ac = getelementptr [40 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !148
  %.not39.i.i = icmp eq i32 %i.ad, %i.i
  br i1 %.not39.i.i, label %.thread.loopexit.split.loop.exit66.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %pm_locals_find.exit.thread.i, label %bb.d, !llvm.loop !4

bb.f:                                             ; preds = %bb.c
  %i.ae = add i32 %i.w, -1                        ; 2 uses
  %i.af = getelementptr i8, ptr %.0820.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !96
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.0.i.i = phi i32 [ %i.u, %bb.f ], [ %i.an, %bb.i ] ; 2 uses
  %i.ah = and i32 %.0.i.i, %i.ae                  ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr [40 x i8], ptr %i.ag, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !148 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %pm_locals_find.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = icmp eq i32 %i.ak, %i.i
  br i1 %i.am, label %pm_locals_find.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = add i32 %.0.i.i, 1                      ; 2 uses
  %i.ao = xor i32 %i.an, %i.u
  %i.ap = and i32 %i.ao, %i.ae
  %.not.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i, label %pm_locals_find.exit.thread.i, label %bb.g, !llvm.loop !5

.thread.loopexit.split.loop.exit66.i.i:           ; preds = %bb.d
  %i.aq = trunc nuw i64 %indvars.iv.i.i to i32
  br label %pm_locals_find.exit.i

pm_locals_find.exit.i:                            ; preds = %bb.h, %.thread.loopexit.split.loop.exit66.i.i
  %.5.i.i = phi i32 [ %i.aq, %.thread.loopexit.split.loop.exit66.i.i ], [ %i.ah, %bb.h ]
  %.not10.i = icmp eq i32 %.5.i.i, -1
  br i1 %.not10.i, label %pm_locals_find.exit.thread.i, label %pm_parser_local_depth_constant_id.exit

pm_locals_find.exit.thread.i:                     ; preds = %bb.i, %bb.g, %bb.e, %pm_locals_find.exit.i, %.preheader.i.i
  %i.ar = getelementptr i8, ptr %.0820.i, i64 50
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !159, !range !64, !noundef !65
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %pm_parser_local_depth_constant_id.exit.thread, label %bb.j

bb.j:                                             ; preds = %pm_locals_find.exit.thread.i
  %i.au = add i32 %.018.i, 1
  %.08.i = load ptr, ptr %.0820.i, align 8, !tbaa !82 ; 2 uses
  %.not.i = icmp eq ptr %.08.i, null
  br i1 %.not.i, label %pm_parser_local_depth_constant_id.exit.thread, label %bb.c, !llvm.loop !6

bb.k:                                             ; preds = %bb.a
  %i.av = getelementptr i8, ptr %2, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !669
  %i.ax = getelementptr i8, ptr %2, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !670
  %i.az = getelementptr i8, ptr %0, i64 472       ; 2 uses
  %i.ba = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.az, ptr noundef %i.aw, ptr noundef %i.ay, i32 noundef 239) #27 ; 0 uses
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !194 ; 4 uses
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !193 ; 4 uses
  %i.bd = icmp ugt ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.l, label %pm_parser_local_depth_constant_id.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr i8, ptr %i.bb, i64 -1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !83
  switch i8 %i.bf, label %pm_parser_local_depth_constant_id.exit.thread [
    i8 33, label %bb.m
    i8 63, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.bg = ptrtoint ptr %i.bb to i64
  %i.bh = ptrtoint ptr %i.bc to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.az, ptr noundef %i.bc, ptr noundef nonnull %i.bb, i32 noundef 152, i32 noundef %i.bj, ptr noundef %i.bc) #27 ; 0 uses
  br label %pm_parser_local_depth_constant_id.exit.thread

pm_parser_local_depth_constant_id.exit:           ; preds = %pm_locals_find.exit.i
  %i.bl = icmp eq i32 %.018.i, -1
  br i1 %i.bl, label %pm_parser_local_depth_constant_id.exit.thread, label %bb.n

pm_parser_local_depth_constant_id.exit.thread:    ; preds = %bb.j, %pm_locals_find.exit.thread.i, %bb.b, %bb.l, %bb.m, %bb.k, %pm_parser_local_depth_constant_id.exit
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !193
  %i.bn = load ptr, ptr %i.c, align 8, !tbaa !194
  %i.bo = getelementptr i8, ptr %0, i64 496
  %.val = load ptr, ptr %i.bo, align 8, !tbaa !75
  tail call fastcc void @pm_parser_local_add(ptr %.val, i32 noundef %i.i, ptr noundef %i.bm, ptr noundef %i.bn, i32 noundef 0)
  br label %bb.n

bb.n:                                             ; preds = %pm_parser_local_depth_constant_id.exit.thread, %pm_parser_local_depth_constant_id.exit
  %i.bp = phi i32 [ 0, %pm_parser_local_depth_constant_id.exit.thread ], [ %.018.i, %pm_parser_local_depth_constant_id.exit ]
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !193 ; 2 uses
  %i.br = getelementptr i8, ptr %0, i64 312
  %.val.i = load ptr, ptr %i.br, align 8, !tbaa !89
  %i.bs = icmp ult ptr %i.bq, %.val.i
  br i1 %i.bs, label %peek_at.exit.i, label %peek_at.exit.thread.i

peek_at.exit.i:                                   ; preds = %bb.n
  %i.bt = load i8, ptr %i.bq, align 1, !tbaa !83
  %i.bu = icmp eq i8 %i.bt, 95
  br i1 %i.bu, label %parse_pattern_capture.exit, label %peek_at.exit.thread.i

peek_at.exit.thread.i:                            ; preds = %peek_at.exit.i, %bb.n
  %i.bv = tail call zeroext i1 @pm_constant_id_list_includes(ptr noundef nonnull %1, i32 noundef %i.i) #27
  br i1 %i.bv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %peek_at.exit.thread.i
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !193
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !194
  %i.by = getelementptr i8, ptr %0, i64 472
  %i.bz = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.by, ptr noundef %i.bw, ptr noundef %i.bx, i32 noundef 221) #27 ; 0 uses
  br label %parse_pattern_capture.exit

bb.p:                                             ; preds = %peek_at.exit.thread.i
  %i.ca = tail call zeroext i1 @pm_constant_id_list_append(ptr noundef nonnull %1, i32 noundef %i.i) #27 ; 0 uses
  br label %parse_pattern_capture.exit

parse_pattern_capture.exit:                       ; preds = %peek_at.exit.i, %bb.o, %bb.p
  %i.cb = tail call fastcc ptr @pm_local_variable_target_node_create(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef %i.i, i32 noundef %i.bp) ; 2 uses
  %i.cc = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #30 ; 6 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.q, label %pm_implicit_node_create.exit

bb.q:                                             ; preds = %parse_pattern_capture.exit
  %i.ce = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.cf = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ce, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 32) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_implicit_node_create.exit:                     ; preds = %parse_pattern_capture.exit
  %i.cg = load i32, ptr %0, align 8, !tbaa !109
  %i.ch = add i32 %i.cg, 1                        ; 2 uses
  store i32 %i.ch, ptr %0, align 8, !tbaa !109
  %i.ci = getelementptr i8, ptr %i.cb, i64 8
  store i16 69, ptr %i.cc, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i32 %i.ch, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cj = load <2 x ptr>, ptr %i.ci, align 8, !tbaa !36
  store <2 x ptr> %i.cj, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !36
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store ptr %i.cb, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !106
  ret ptr %i.cc
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @pm_slice_is_valid_local(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 6 uses
  %i.d = icmp slt i64 %i.c, 1
  br i1 %i.d, label %char_is_identifier_start.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 699        ; 3 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !63, !range !64, !noundef !65
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 520        ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !142
  %i.l = tail call i64 %i.k(ptr noundef %1, i64 noundef %i.c) #27, !inline_history !173 ; 2 uses
  %.not20.i = icmp eq i64 %i.l, 0
  br i1 %.not20.i, label %bb.d, label %char_is_identifier_start.exit.thread32

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %1, align 1, !tbaa !83      ; 2 uses
  %i.n = icmp eq i8 %i.m, 95
  br i1 %i.n, label %char_is_identifier_start.exit.thread32, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp slt i8 %i.m, 0
  br i1 %i.o, label %bb.f, label %char_is_identifier_start.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !143
  %i.r = tail call i64 %i.q(ptr noundef nonnull %1, i64 noundef %i.c) #27, !inline_history !173
  br label %char_is_identifier_start.exit

bb.g:                                             ; preds = %bb.b
  %i.s = load i8, ptr %1, align 1, !tbaa !83      ; 3 uses
  %i.t = icmp sgt i8 %i.s, -1
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = zext nneg i8 %i.s to i64
  %i.v = getelementptr i8, ptr @pm_encoding_unicode_table, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !83
  %.not.i = trunc i8 %i.w to i1
  %i.x = icmp eq i8 %i.s, 95
  %narrow.i = or i1 %i.x, %.not.i
  %i.y = zext i1 %narrow.i to i64
  br label %char_is_identifier_start.exit

bb.i:                                             ; preds = %bb.g
  %i.z = tail call i64 @pm_encoding_utf_8_char_width(ptr noundef nonnull %1, i64 noundef %i.c) #27
  br label %char_is_identifier_start.exit

char_is_identifier_start.exit:                    ; preds = %bb.f, %bb.h, %bb.i
  %.1.i = phi i64 [ %i.z, %bb.i ], [ %i.r, %bb.f ], [ %i.y, %bb.h ] ; 2 uses
  %i.aa = icmp eq i64 %.1.i, 0
  br i1 %i.aa, label %char_is_identifier_start.exit.thread, label %char_is_identifier_start.exit.thread32

char_is_identifier_start.exit.thread32:           ; preds = %bb.c, %bb.d, %char_is_identifier_start.exit
  %.1.i34 = phi i64 [ %.1.i, %char_is_identifier_start.exit ], [ %i.l, %bb.c ], [ 1, %bb.d ]
  %i.ab = load i8, ptr %i.e, align 1, !tbaa !63, !range !64, !noundef !65
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %char_is_identifier_start.exit.thread32
  %i.ad = getelementptr i8, ptr %0, i64 520
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !60
  %i.af = getelementptr i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !144
  %i.ah = tail call zeroext i1 %i.ag(ptr noundef %1, i64 noundef %i.c) #27
  br i1 %i.ah, label %char_is_identifier_start.exit.thread, label %bb.l

bb.k:                                             ; preds = %char_is_identifier_start.exit.thread32
  %i.ai = tail call zeroext i1 @pm_encoding_utf_8_isupper_char(ptr noundef %1, i64 noundef %i.c) #27
  br i1 %i.ai, label %char_is_identifier_start.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aj = getelementptr i8, ptr %1, i64 %.1.i34   ; 3 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.a, %i.ak                     ; 2 uses
  %i.am = icmp slt i64 %i.al, 1
  br i1 %i.am, label %char_is_identifier.exit.thread39, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.an = getelementptr i8, ptr %0, i64 520       ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %char_is_identifier.exit.thread
  %i.ao = phi i64 [ %i.al, %.lr.ph ], [ %i.bm, %char_is_identifier.exit.thread ] ; 3 uses
  %.042 = phi ptr [ %i.aj, %.lr.ph ], [ %i.bk, %char_is_identifier.exit.thread ] ; 8 uses
  %i.ap = load i8, ptr %i.e, align 1, !tbaa !63, !range !64, !noundef !65
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !60
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !145
  %i.au = tail call i64 %i.at(ptr noundef %.042, i64 noundef %i.ao) #27, !inline_history !167 ; 2 uses
  %.not.i29 = icmp eq i64 %i.au, 0
  br i1 %.not.i29, label %bb.o, label %char_is_identifier.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.av = load i8, ptr %.042, align 1, !tbaa !83  ; 2 uses
  %i.aw = icmp eq i8 %i.av, 95
  br i1 %i.aw, label %char_is_identifier.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = icmp slt i8 %i.av, 0
  br i1 %i.ax, label %bb.q, label %char_is_identifier.exit.thread39

bb.q:                                             ; preds = %bb.p
  %i.ay = load ptr, ptr %i.an, align 8, !tbaa !60
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !143
  %i.ba = tail call i64 %i.az(ptr noundef nonnull %.042, i64 noundef %i.ao) #27, !inline_history !167
  br label %char_is_identifier.exit

bb.r:                                             ; preds = %bb.m
  %i.bb = load i8, ptr %.042, align 1, !tbaa !83  ; 3 uses
  %i.bc = icmp sgt i8 %i.bb, -1
  br i1 %i.bc, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bd = icmp eq i8 %i.bb, 95
  br i1 %i.bd, label %char_is_identifier.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = zext nneg i8 %i.bb to i64
  %i.bf = getelementptr i8, ptr @pm_encoding_unicode_table, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !83
  %i.bh = lshr i8 %i.bg, 1
  %.lobit.i.i = and i8 %i.bh, 1
  %i.bi = zext nneg i8 %.lobit.i.i to i64
  br label %char_is_identifier.exit

bb.u:                                             ; preds = %bb.r
  %i.bj = tail call i64 @pm_encoding_utf_8_char_width(ptr noundef nonnull %.042, i64 noundef %i.ao) #27
  br label %char_is_identifier.exit

char_is_identifier.exit:                          ; preds = %bb.q, %bb.t, %bb.u
  %.1.i28 = phi i64 [ %i.bi, %bb.t ], [ %i.ba, %bb.q ], [ %i.bj, %bb.u ] ; 2 uses
  %.not = icmp eq i64 %.1.i28, 0
  br i1 %.not, label %char_is_identifier.exit.thread39, label %char_is_identifier.exit.thread

char_is_identifier.exit.thread:                   ; preds = %bb.s, %bb.n, %bb.o, %char_is_identifier.exit
  %.1.i2837 = phi i64 [ %.1.i28, %char_is_identifier.exit ], [ 1, %bb.s ], [ %i.au, %bb.n ], [ 1, %bb.o ]
  %i.bk = getelementptr i8, ptr %.042, i64 %.1.i2837 ; 3 uses
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.a, %i.bl                     ; 2 uses
  %i.bn = icmp slt i64 %i.bm, 1
  br i1 %i.bn, label %char_is_identifier.exit.thread39, label %bb.m, !llvm.loop !671

char_is_identifier.exit.thread39:                 ; preds = %char_is_identifier.exit, %bb.p, %char_is_identifier.exit.thread, %bb.l
  %.0.lcssa = phi ptr [ %i.aj, %bb.l ], [ %i.bk, %char_is_identifier.exit.thread ], [ %.042, %bb.p ], [ %.042, %char_is_identifier.exit ]
  %i.bo = icmp eq ptr %.0.lcssa, %2
  br label %char_is_identifier_start.exit.thread

char_is_identifier_start.exit.thread:             ; preds = %bb.e, %char_is_identifier.exit.thread39, %char_is_identifier_start.exit, %bb.j, %bb.k, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.j ], [ false, %char_is_identifier_start.exit ], [ %i.bo, %char_is_identifier.exit.thread39 ], [ false, %bb.k ], [ false, %bb.e ]
  ret i1 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_local_variable_target_node_create(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !193    ; 5 uses
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !194  ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.b, label %pm_refute_numbered_parameter.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load i8, ptr %i.a, align 1, !tbaa !83
  %i.i = icmp eq i8 %i.h, 95
  br i1 %i.i, label %bb.c, label %pm_refute_numbered_parameter.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.a, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !83    ; 2 uses
  %.not.i.i = icmp eq i8 %i.k, 48
  br i1 %.not.i.i, label %pm_refute_numbered_parameter.exit, label %pm_token_is_numbered_parameter.exit.i

pm_token_is_numbered_parameter.exit.i:            ; preds = %bb.c
  %i.l = tail call zeroext i1 @pm_char_is_decimal_digit(i8 noundef zeroext %i.k) #27
  br i1 %i.l, label %bb.d, label %pm_refute_numbered_parameter.exit

bb.d:                                             ; preds = %pm_token_is_numbered_parameter.exit.i
  %i.m = getelementptr i8, ptr %0, i64 472
  %i.n = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.m, ptr noundef nonnull %i.a, ptr noundef %i.c, i32 noundef 213, ptr noundef nonnull %i.a) #27 ; 0 uses
  br label %pm_refute_numbered_parameter.exit

pm_refute_numbered_parameter.exit:                ; preds = %bb.a, %bb.b, %bb.c, %pm_token_is_numbered_parameter.exit.i, %bb.d
  %i.o = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #30 ; 7 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %pm_node_alloc.exit

bb.e:                                             ; preds = %pm_refute_numbered_parameter.exit
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.r = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.q, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 32) #27 ; 0 uses
  tail call void @abort() #26
end_hunk_0
