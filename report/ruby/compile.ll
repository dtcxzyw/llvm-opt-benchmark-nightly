Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/compile?download=true
inline.NumInlined: 6690
inline.NumDeleted: 334
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 108
loop-unroll.NumUnrolled: 112
begin_hunk_0_@pm_compile_and_node:bb.a
  %i.e = load i32, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = add nuw nsw i64 %i.f, 48
  %i.h = getelementptr i8, ptr %i.c, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !37   ; 4 uses
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = icmp samesign ugt i64 %i.g, %i.j
  br i1 %i.k, label %.preheader.i.i.i.i, label %new_label_body.exit

.preheader.i.i.i.i:                               ; preds = %bb.a
  %i.l = icmp ult i32 %i.i, 48
  br i1 %i.l, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.c
  %.027.i.i.i.i = phi i32 [ %i.n, %bb.c ], [ %i.i, %.preheader.i.i.i.i ] ; 3 uses
  %i.m = icmp samesign ugt i32 %.027.i.i.i.i, 1073741822
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @rb_memerror() #38
  unreachable

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.n = shl nuw nsw i32 %.027.i.i.i.i, 1         ; 3 uses
  %i.o = icmp samesign ult i32 %.027.i.i.i.i, 24
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.loopexit.i.i, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i:                     ; preds = %bb.c
  %i.p = zext nneg i32 %i.n to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.loopexit.i.i, %.preheader.i.i.i.i
  %.0.lcssa.i.i.i.i = phi i32 [ %i.i, %.preheader.i.i.i.i ], [ %i.n, %._crit_edge.i.i.loopexit.i.i ]
  %.lcssa.i.i.i.i = phi i64 [ %i.j, %.preheader.i.i.i.i ], [ %i.p, %._crit_edge.i.i.loopexit.i.i ]
  %i.q = add nuw nsw i64 %.lcssa.i.i.i.i, 16
  %i.r = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.q, i64 noundef 1) #39 ; 6 uses
  store ptr %i.r, ptr %i.c, align 8, !tbaa !64
  store ptr %i.r, ptr %i.b, align 8, !tbaa !64
  store ptr null, ptr %i.r, align 8, !tbaa !64
  %i.s = getelementptr i8, ptr %i.r, i64 8
  store i32 0, ptr %i.s, align 8, !tbaa !37
  %i.t = getelementptr i8, ptr %i.r, i64 12
  store i32 %.0.lcssa.i.i.i.i, ptr %i.t, align 4, !tbaa !37
  br label %new_label_body.exit

new_label_body.exit:                              ; preds = %bb.a, %._crit_edge.i.i.i.i
  %i.u = phi i32 [ %i.e, %bb.a ], [ 0, %._crit_edge.i.i.i.i ] ; 2 uses
  %.022.i.i.i.i = phi ptr [ %i.c, %bb.a ], [ %i.r, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.v = getelementptr i8, ptr %.022.i.i.i.i, i64 16
  %i.w = getelementptr i8, ptr %.022.i.i.i.i, i64 8
  %i.x = zext i32 %i.u to i64
  %i.y = getelementptr i8, ptr %i.v, i64 %i.x     ; 11 uses
  %i.z = add i32 %i.u, 48
  store i32 %i.z, ptr %i.w, align 8, !tbaa !37
  store i32 1, ptr %i.y, align 8, !tbaa !182
  %i.aa = getelementptr i8, ptr %i.y, i64 8
  store ptr null, ptr %i.aa, align 8, !tbaa !183
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.ac = getelementptr i8, ptr %i.ab, i64 132    ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !184 ; 2 uses
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !184
  %i.af = getelementptr i8, ptr %i.y, i64 24
  store i32 %i.ad, ptr %i.af, align 8, !tbaa !111
  %i.ag = getelementptr i8, ptr %i.y, i64 40      ; 4 uses
  %i.ah = getelementptr i8, ptr %i.y, i64 44      ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 4
  %i.aj = and i8 %i.ai, -16
  store i8 %i.aj, ptr %i.ah, align 4
  %i.ak = getelementptr i8, ptr %i.y, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.ak, align 4, !tbaa !37
  %i.al = getelementptr i8, ptr %1, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !604
  tail call fastcc void @pm_compile_node(ptr noundef nonnull %0, ptr noundef %i.am, ptr noundef %3, i1 noundef zeroext false, ptr noundef %5)
  %i.an = load i32, ptr %2, align 4, !tbaa !370   ; 2 uses
  %i.ao = getelementptr i8, ptr %2, i64 4         ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !372 ; 2 uses
  br i1 %4, label %.critedge, label %bb.d

bb.d:                                             ; preds = %new_label_body.exit
  %i.aq = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.an, i32 noundef %i.ap, i32 noundef 40, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.ar = getelementptr i8, ptr %3, i64 24        ; 6 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !42 ; 2 uses
  %i.at = getelementptr i8, ptr %i.aq, i64 16
  store ptr %i.as, ptr %i.at, align 8, !tbaa !61
  %i.au = getelementptr i8, ptr %i.as, i64 8
  store ptr %i.aq, ptr %i.au, align 8, !tbaa !62
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !42
  %i.av = load i32, ptr %2, align 4, !tbaa !370
  %i.aw = load i32, ptr %i.ao, align 4, !tbaa !372
  %i.ax = ptrtoint ptr %i.y to i64
  %i.ay = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.av, i32 noundef %i.aw, i32 noundef 74, i32 noundef 1, i64 noundef %i.ax) ; 3 uses
  %i.az = load ptr, ptr %i.ar, align 8, !tbaa !42 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ay, i64 16
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !61
  %i.bb = getelementptr i8, ptr %i.az, i64 8
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !62
  store ptr %i.ay, ptr %i.ar, align 8, !tbaa !42
  %i.bc = load i32, ptr %i.ag, align 8, !tbaa !240
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.ag, align 8, !tbaa !240
  %i.be = load i32, ptr %2, align 4, !tbaa !370
  %i.bf = load i32, ptr %i.ao, align 4, !tbaa !372
  %i.bg = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.be, i32 noundef %i.bf, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.bh = load ptr, ptr %i.ar, align 8, !tbaa !42 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bg, i64 16
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !61
  %i.bj = getelementptr i8, ptr %i.bh, i64 8
  store ptr %i.bg, ptr %i.bj, align 8, !tbaa !62
  store ptr %i.bg, ptr %i.ar, align 8, !tbaa !42
  br label %bb.e

.critedge:                                        ; preds = %new_label_body.exit
  %i.bk = ptrtoint ptr %i.y to i64
  %i.bl = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.an, i32 noundef %i.ap, i32 noundef 74, i32 noundef 1, i64 noundef %i.bk) ; 3 uses
  %i.bm = getelementptr i8, ptr %3, i64 24        ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !42 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bl, i64 16
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !61
  %i.bp = getelementptr i8, ptr %i.bn, i64 8
  store ptr %i.bl, ptr %i.bp, align 8, !tbaa !62
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !42
  %i.bq = load i32, ptr %i.ag, align 8, !tbaa !240
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr %i.ag, align 8, !tbaa !240
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.d
  %i.bs = getelementptr i8, ptr %1, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1303
  tail call fastcc void @pm_compile_node(ptr noundef nonnull %0, ptr noundef %i.bt, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5)
  %i.bu = getelementptr i8, ptr %3, i64 24        ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !42 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.y, i64 16
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !61
  %i.bx = getelementptr i8, ptr %i.bv, i64 8
  store ptr %i.y, ptr %i.bx, align 8, !tbaa !62
  store ptr %i.y, ptr %i.bu, align 8, !tbaa !42
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @pm_compile_array_node(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr noundef nonnull %4, i1 noundef zeroext %5, ptr noundef %6) unnamed_addr #17 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr i8, ptr %1, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !378
  %i.d = and i16 %i.c, 2
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %.preheader258, label %bb.b

.preheader258:                                    ; preds = %bb.a
  %i.e = load i64, ptr %2, align 8, !tbaa !379    ; 2 uses
  %.not278 = icmp eq i64 %i.e, 0
  br i1 %.not278, label %._crit_edge.thread, label %.lr.ph275

.lr.ph275:                                        ; preds = %.preheader258
  %i.f = getelementptr i8, ptr %2, i64 16         ; 2 uses
  %i.g = getelementptr i8, ptr %3, i64 4          ; 12 uses
  %i.h = getelementptr i8, ptr %4, i64 24         ; 10 uses
  %i.i = getelementptr i8, ptr %6, i64 128
  br label %.outer

bb.b:                                             ; preds = %bb.a
  br i1 %5, label %bb.ar, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %2, align 8, !tbaa !379
  %.not244 = icmp eq i64 %i.j, 0
  br i1 %.not244, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call fastcc i64 @pm_static_literal_value(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %6) ; 3 uses
  tail call void @rb_obj_freeze_inline(i64 noundef %i.k) #37
  %i.l = tail call i64 @rb_obj_set_shareable(i64 noundef %i.k) #37 ; 0 uses
  %i.m = load i32, ptr %3, align 4, !tbaa !370
  %i.n = getelementptr i8, ptr %3, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !372
  %i.p = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.m, i32 noundef %i.o, i32 noundef 29, i32 noundef 1, i64 noundef %i.k)
  br label %.sink.split399

bb.e:                                             ; preds = %bb.c
  %i.q = load i32, ptr %3, align 4, !tbaa !370
  %i.r = getelementptr i8, ptr %3, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !372
  %i.t = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.q, i32 noundef %i.s, i32 noundef 27, i32 noundef 1, i64 noundef 1)
  br label %.sink.split399

._crit_edge:                                      ; preds = %bb.an
  %.not236 = icmp eq i32 %.8228, 0
  br i1 %.not236, label %._crit_edge.thread, label %bb.ao

bb.f:                                             ; preds = %.outer, %.thread296
  %i.u = phi i64 [ %i.ff, %.thread296 ], [ %.ph, %.outer ] ; 4 uses
  %.0212274 = phi i64 [ %i.fe, %.thread296 ], [ %.0212274.ph, %.outer ] ; 16 uses
  %.0216272 = phi i8 [ %.3219, %.thread296 ], [ %.0216272.ph, %.outer ] ; 9 uses
  %.0220271 = phi i32 [ 1, %.thread296 ], [ %.0220271.ph, %.outer ] ; 8 uses
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !380  ; 2 uses
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %.0212274
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !335  ; 8 uses
  %i.y = load i16, ptr %i.x, align 8, !tbaa !331
  switch i16 %i.y, label %bb.y [
    i16 139, label %bb.g
    i16 90, label %bb.p
  ]

bb.g:                                             ; preds = %bb.f
  %.not242 = icmp eq i32 %.0220271, 0
  br i1 %.not242, label %bb.h, label %.sink.split

.sink.split:                                      ; preds = %bb.g
  %i.z = trunc nuw i8 %.0216272 to i1
  %i.aa = load i32, ptr %3, align 4, !tbaa !370
  %i.ab = load i32, ptr %i.g, align 4, !tbaa !372
  %i.ac = sext i32 %.0220271 to i64
  %i.ad = shl nsw i64 %i.ac, 1
  %i.ae = or disjoint i64 %i.ad, 1
  %. = select i1 %i.z, i32 27, i32 34
  %i.af = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.aa, i32 noundef %i.ab, i32 noundef %., i32 noundef 1, i64 noundef %i.ae) ; 3 uses
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !42  ; 2 uses
  %i.ah = getelementptr i8, ptr %i.af, i64 16
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !61
  %i.ai = getelementptr i8, ptr %i.ag, i64 8
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !62
  store ptr %i.af, ptr %i.h, align 8, !tbaa !42
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.g
  %.1217 = phi i8 [ %.0216272, %bb.g ], [ 0, %.sink.split ]
  %i.aj = getelementptr i8, ptr %i.x, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !443 ; 2 uses
  %.not243 = icmp eq ptr %i.ak, null
  br i1 %.not243, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call fastcc void @pm_compile_node(ptr noundef %0, ptr noundef nonnull %i.ak, ptr noundef %4, i1 noundef zeroext false, ptr noundef %6)
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.al = load ptr, ptr %i.i, align 8, !tbaa !352
  %i.am = call i32 @rb_st_lookup(ptr noundef %i.al, i64 noundef 2147483690, ptr noundef nonnull %i.a) #37
  %.not6.i = icmp eq i32 %i.am, 0
  br i1 %.not6.i, label %.lr.ph9.i, label %pm_lookup_local_index.exit

.lr.ph9.i:                                        ; preds = %bb.j, %bb.k
  %.18.i = phi i32 [ %i.ap, %bb.k ], [ 0, %bb.j ]
  %.1127.i = phi ptr [ %i.ao, %bb.k ], [ %6, %bb.j ]
  %i.an = getelementptr i8, ptr %.1127.i, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !327 ; 4 uses
  %.not14.i = icmp eq ptr %i.ao, null
  br i1 %.not14.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph9.i
  %i.ap = add i32 %.18.i, 1                       ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ao, i64 128
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !352
  %i.as = call i32 @rb_st_lookup(ptr noundef %i.ar, i64 noundef 2147483690, ptr noundef nonnull %i.a) #37
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %.lr.ph9.i, label %pm_lookup_local_index.exit, !llvm.loop !22

bb.l:                                             ; preds = %.lr.ph9.i
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.262, i32 noundef -2147483606) #38
  unreachable

pm_lookup_local_index.exit:                       ; preds = %bb.k, %bb.j
  %.112.lcssa.i = phi ptr [ %6, %bb.j ], [ %i.ao, %bb.k ]
  %.1.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.ap, %bb.k ]
  %i.at = getelementptr i8, ptr %.112.lcssa.i, i64 112
  %i.au = load i32, ptr %i.at, align 8, !tbaa !424
  %i.av = load i64, ptr %i.a, align 8, !tbaa !63
  %i.aw = trunc i64 %i.av to i32
  %i.ax = sub i32 %i.au, %i.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.ay = load i32, ptr %3, align 4, !tbaa !370
  %i.az = load i32, ptr %i.g, align 4, !tbaa !372
  call fastcc void @pm_iseq_add_getlocal(ptr noundef %0, ptr noundef %4, i32 noundef %i.ay, i32 noundef %i.az, i32 noundef %i.ax, i32 noundef %.1.lcssa.i)
  br label %bb.m

bb.m:                                             ; preds = %pm_lookup_local_index.exit, %bb.i
  %i.ba = trunc nuw i8 %.1217 to i1
  %i.bb = load i32, ptr %3, align 4, !tbaa !370   ; 2 uses
  %i.bc = load i32, ptr %i.g, align 4, !tbaa !372 ; 2 uses
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bd = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.bb, i32 noundef %i.bc, i32 noundef 35, i32 noundef 1, i64 noundef 20)
  br label %.sink.split375

bb.o:                                             ; preds = %bb.m
  %i.be = call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.bb, i32 noundef %i.bc, i32 noundef 33, i32 noundef 0, ptr noundef null)
  br label %.sink.split375

bb.p:                                             ; preds = %bb.f
  %i.bf = icmp eq i32 %.0220271, 0                ; 2 uses
  %i.bg = trunc nuw i8 %.0216272 to i1            ; 2 uses
  %or.cond = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bh = load i32, ptr %3, align 4, !tbaa !370
  %i.bi = load i32, ptr %i.g, align 4, !tbaa !372
  %i.bj = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.bh, i32 noundef %i.bi, i32 noundef 27, i32 noundef 1, i64 noundef 1)
  br label %.sink.split360

bb.r:                                             ; preds = %bb.p
  br i1 %i.bf, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = load i32, ptr %3, align 4, !tbaa !370   ; 2 uses
  %i.bl = load i32, ptr %i.g, align 4, !tbaa !372 ; 2 uses
  %i.bm = sext i32 %.0220271 to i64
  %i.bn = shl nsw i64 %i.bm, 1
  %i.bo = or disjoint i64 %i.bn, 1                ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bp = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.bk, i32 noundef %i.bl, i32 noundef 27, i32 noundef 1, i64 noundef %i.bo)
  br label %.sink.split360

bb.u:                                             ; preds = %bb.s
  %i.bq = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.bk, i32 noundef %i.bl, i32 noundef 34, i32 noundef 1, i64 noundef %i.bo)
  br label %.sink.split360

.sink.split360:                                   ; preds = %bb.q, %bb.u, %bb.t
  %.sink366 = phi ptr [ %i.bp, %bb.t ], [ %i.bq, %bb.u ], [ %i.bj, %bb.q ] ; 3 uses
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !42  ; 2 uses
  %i.bs = getelementptr i8, ptr %.sink366, i64 16
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !61
  %i.bt = getelementptr i8, ptr %i.br, i64 8
  store ptr %.sink366, ptr %i.bt, align 8, !tbaa !62
  store ptr %.sink366, ptr %i.h, align 8, !tbaa !42
  br label %bb.v

bb.v:                                             ; preds = %.sink.split360, %bb.r
  %.3219 = phi i8 [ %.0216272, %bb.r ], [ 0, %.sink.split360 ] ; 3 uses
  %i.bu = getelementptr i8, ptr %i.x, i64 24      ; 2 uses
  call fastcc void @pm_compile_hash_elements(ptr noundef %0, ptr noundef nonnull %i.x, ptr noundef %i.bu, i16 noundef zeroext 0, i64 noundef 36, i1 noundef zeroext false, ptr noundef %4, ptr noundef %6)
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !1309 ; 3 uses
  %.not279 = icmp eq i64 %i.bv, 0
  br i1 %.not279, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v
  %i.bw = getelementptr i8, ptr %i.x, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1310
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %bb.x
  %.0211264 = phi i64 [ 0, %.lr.ph ], [ %i.cc, %bb.x ] ; 3 uses
  %i.by = getelementptr [8 x i8], ptr %i.bx, i64 %.0211264
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !335
  %i.ca = load i16, ptr %i.bz, align 8, !tbaa !331
  %i.cb = icmp eq i16 %i.ca, 9
  br i1 %i.cb, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.cc = add nuw i64 %.0211264, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cc, %i.bv
  br i1 %exitcond.not, label %.critedge.thread, label %bb.w, !llvm.loop !1304

.critedge:                                        ; preds = %bb.w
  %i.cd = icmp eq i64 %i.bv, %.0211264
  br i1 %i.cd, label %.critedge.thread, label %.thread296

.critedge.thread:                                 ; preds = %bb.v, %.critedge, %bb.x
  %i.ce = load i32, ptr %3, align 4, !tbaa !370
  %i.cf = load i32, ptr %i.g, align 4, !tbaa !372
  %i.cg = call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.ce, i32 noundef %i.cf, i32 noundef 28, i32 noundef 0, ptr noundef null)
  br label %.sink.split375

bb.y:                                             ; preds = %bb.f
  %7 = load <2 x i16>, ptr %i.x, align 8, !tbaa !105
  %i.ch = and <2 x i16> %7, <i16 -1, i16 2>
  %i.ci = shufflevector <2 x i16> %i.ch, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %.fr = freeze <4 x i16> %i.ci
  %i.cj = icmp eq <4 x i16> %.fr, <i16 6, i16 0, i16 65, i16 122>
  %i.ck = add i64 %.0212274, 64
  %i.cl = icmp uge i64 %i.ck, %i.u
  %i.cm = bitcast <4 x i1> %i.cj to i4
  %i.cn = icmp ne i4 %i.cm, 0
  %op.rdx = or i1 %i.cn, %i.cl
  %op.rdx460 = select i1 %op.rdx, i1 true, i1 %.0213273.ph
  br i1 %op.rdx460, label %bb.aj, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.y
  %i.co = add nuw i64 %.0212274, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.u, i64 %i.co) ; 2 uses
  %.0210450 = add nuw i64 %.0212274, 1            ; 2 uses
  %i.cp = icmp ult i64 %.0210450, %i.u
  br i1 %i.cp, label %.lr.ph452, label %.critedge5

.preheader:                                       ; preds = %bb.z
  %.0210 = add nuw i64 %.0210451, 1               ; 2 uses
  %i.cq = icmp ult i64 %.0210, %i.u
  br i1 %i.cq, label %.lr.ph452, label %.critedge5, !llvm.loop !1305

.lr.ph452:                                        ; preds = %.preheader.preheader, %.preheader
  %.0210451 = phi i64 [ %.0210, %.preheader ], [ %.0210450, %.preheader.preheader ] ; 4 uses
  %i.cr = getelementptr [8 x i8], ptr %i.v, i64 %.0210451
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !335 ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 2
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !378
  %i.cv = and i16 %i.cu, 2
  %.not238 = icmp eq i16 %i.cv, 0
  br i1 %.not238, label %.critedge5, label %bb.z

bb.z:                                             ; preds = %.lr.ph452
  %i.cw = load i16, ptr %i.cs, align 8, !tbaa !331
  switch i16 %i.cw, label %.preheader [
    i16 6, label %..critedge5_crit_edge
    i16 65, label %..critedge5_crit_edge
    i16 122, label %..critedge5_crit_edge
  ], !llvm.loop !1305

..critedge5_crit_edge:                            ; preds = %bb.z, %bb.z, %bb.z
  br label %.critedge5, !llvm.loop !1305

.critedge5:                                       ; preds = %.preheader, %.lr.ph452, %..critedge5_crit_edge, %.preheader.preheader
  %.0210.lcssa = phi i64 [ %.0210451, %..critedge5_crit_edge ], [ %umax, %.preheader.preheader ], [ %umax, %.preheader ], [ %.0210451, %.lr.ph452 ]
  %i.cx = sub i64 %.0210.lcssa, %.0212274         ; 3 uses
  %i.cy = icmp ugt i64 %i.cx, 63
  br i1 %i.cy, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %.critedge5
  %i.cz = call i64 @rb_ary_hidden_new(i64 noundef %i.cx) #37 ; 5 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.ab
  %.0270 = phi i64 [ %i.cx, %bb.aa ], [ %i.dg, %bb.ab ]
  %.1269 = phi i64 [ %.0212274, %bb.aa ], [ %i.db, %bb.ab ] ; 4 uses
  %i.da = load ptr, ptr %i.f, align 8, !tbaa !380
  %i.db = add i64 %.1269, 1
  %i.dc = getelementptr [8 x i8], ptr %i.da, i64 %.1269
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !335
  %i.de = call fastcc i64 @pm_static_literal_value(ptr noundef %0, ptr noundef %i.dd, ptr noundef %6)
  %i.df = call i64 @rb_ary_push(i64 noundef %i.cz, i64 noundef %i.de) #37 ; 0 uses
  %i.dg = add i64 %.0270, -1                      ; 2 uses
  %.not239 = icmp eq i64 %i.dg, 0
  br i1 %.not239, label %bb.ac, label %bb.ab, !llvm.loop !1306

bb.ac:                                            ; preds = %bb.ab
  call void @rb_obj_freeze_inline(i64 noundef %i.cz) #37
  %i.dh = call i64 @rb_obj_set_shareable(i64 noundef %i.cz) #37 ; 0 uses
  %.not240 = icmp eq i32 %.0220271, 0
  %i.di = trunc nuw i8 %.0216272 to i1            ; 2 uses
  br i1 %.not240, label %bb.ad, label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.ac
  %i.dj = load i32, ptr %3, align 4, !tbaa !370
  %i.dk = load i32, ptr %i.g, align 4, !tbaa !372
  %i.dl = sext i32 %.0220271 to i64
  %i.dm = shl nsw i64 %i.dl, 1
  %i.dn = or disjoint i64 %i.dm, 1
  %.409 = select i1 %i.di, i32 27, i32 34
  %i.do = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.dj, i32 noundef %i.dk, i32 noundef %.409, i32 noundef 1, i64 noundef %i.dn) ; 3 uses
  %i.dp = load ptr, ptr %i.h, align 8, !tbaa !42  ; 2 uses
  %i.dq = getelementptr i8, ptr %i.do, i64 16
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !61
  %i.dr = getelementptr i8, ptr %i.dp, i64 8
  store ptr %i.do, ptr %i.dr, align 8, !tbaa !62
  store ptr %i.do, ptr %i.h, align 8, !tbaa !42
  br label %.thread

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.di, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad
  %i.ds = load i32, ptr %3, align 4, !tbaa !370
  %i.dt = load i32, ptr %i.g, align 4, !tbaa !372
  %i.du = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.ds, i32 noundef %i.dt, i32 noundef 29, i32 noundef 1, i64 noundef %i.cz)
  br label %.sink.split375

.thread:                                          ; preds = %.thread.sink.split, %bb.ad
  %i.dv = load i32, ptr %3, align 4, !tbaa !370
  %i.dw = load i32, ptr %i.g, align 4, !tbaa !372
  %i.dx = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.dv, i32 noundef %i.dw, i32 noundef 19, i32 noundef 1, i64 noundef %i.cz) ; 3 uses
  %i.dy = load ptr, ptr %i.h, align 8, !tbaa !42  ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dx, i64 16
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !61
  %i.ea = getelementptr i8, ptr %i.dy, i64 8
  store ptr %i.dx, ptr %i.ea, align 8, !tbaa !62
  store ptr %i.dx, ptr %i.h, align 8, !tbaa !42
  %i.eb = load i32, ptr %3, align 4, !tbaa !370
  %i.ec = load i32, ptr %i.g, align 4, !tbaa !372
  %i.ed = call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.eb, i32 noundef %i.ec, i32 noundef 33, i32 noundef 0, ptr noundef null)
  br label %.sink.split375

bb.af:                                            ; preds = %.critedge5
  call fastcc void @pm_compile_node(ptr noundef %0, ptr noundef nonnull %i.x, ptr noundef %4, i1 noundef zeroext false, ptr noundef %6)
  %i.ee = add i32 %.0220271, 1                    ; 3 uses
  %i.ef = icmp sgt i32 %i.ee, 255
  br i1 %i.ef, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %bb.af
  %i.eg = trunc nuw i8 %.0216272 to i1
  %i.eh = load i32, ptr %3, align 4, !tbaa !370   ; 2 uses
  %i.ei = load i32, ptr %i.g, align 4, !tbaa !372 ; 2 uses
  %i.ej = shl nuw i32 %i.ee, 1
  %i.ek = or disjoint i32 %i.ej, 1
  %i.el = zext i32 %i.ek to i64                   ; 2 uses
  br i1 %i.eg, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.em = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.eh, i32 noundef %i.ei, i32 noundef 27, i32 noundef 1, i64 noundef %i.el)
  br label %.sink.split375

bb.ai:                                            ; preds = %bb.ag
  %i.en = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.eh, i32 noundef %i.ei, i32 noundef 34, i32 noundef 1, i64 noundef %i.el)
  br label %.sink.split375

bb.aj:                                            ; preds = %bb.y
  call fastcc void @pm_compile_node(ptr noundef %0, ptr noundef nonnull %i.x, ptr noundef %4, i1 noundef zeroext false, ptr noundef %6)
  %i.eo = add i32 %.0220271, 1                    ; 3 uses
  %i.ep = icmp sgt i32 %i.eo, 255
  br i1 %i.ep, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.eq = trunc nuw i8 %.0216272 to i1
  %i.er = load i32, ptr %3, align 4, !tbaa !370   ; 2 uses
  %i.es = load i32, ptr %i.g, align 4, !tbaa !372 ; 2 uses
  %i.et = shl nuw i32 %i.eo, 1
  %i.eu = or disjoint i32 %i.et, 1
  %i.ev = zext i32 %i.eu to i64                   ; 2 uses
  br i1 %i.eq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ew = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.er, i32 noundef %i.es, i32 noundef 27, i32 noundef 1, i64 noundef %i.ev)
  br label %.sink.split375

bb.am:                                            ; preds = %bb.ak
  %i.ex = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.er, i32 noundef %i.es, i32 noundef 34, i32 noundef 1, i64 noundef %i.ev)
  br label %.sink.split375

.sink.split375:                                   ; preds = %bb.o, %bb.n, %.critedge.thread, %bb.ai, %bb.ah, %bb.ae, %.thread, %bb.al, %bb.am
  %.sink382 = phi ptr [ %i.ex, %bb.am ], [ %i.ew, %bb.al ], [ %i.ed, %.thread ], [ %i.du, %bb.ae ], [ %i.em, %bb.ah ], [ %i.en, %bb.ai ], [ %i.cg, %.critedge.thread ], [ %i.bd, %bb.n ], [ %i.be, %bb.o ] ; 3 uses
  %.9.ph = phi i8 [ 0, %bb.am ], [ 0, %bb.al ], [ 0, %.thread ], [ 0, %bb.ae ], [ 0, %bb.ah ], [ 0, %bb.ai ], [ %.3219, %.critedge.thread ], [ 0, %bb.n ], [ 0, %bb.o ]
  %.2215.ph = phi i1 [ false, %bb.am ], [ false, %bb.al ], [ false, %.thread ], [ false, %bb.ae ], [ true, %bb.ah ], [ true, %bb.ai ], [ %.0213273.ph, %.critedge.thread ], [ false, %bb.n ], [ false, %bb.o ]
  %.3.ph = phi i64 [ %.0212274, %bb.am ], [ %.0212274, %bb.al ], [ %.1269, %.thread ], [ %.1269, %bb.ae ], [ %.0212274, %bb.ah ], [ %.0212274, %bb.ai ], [ %.0212274, %.critedge.thread ], [ %.0212274, %bb.n ], [ %.0212274, %bb.o ]
  %i.ey = load ptr, ptr %i.h, align 8, !tbaa !42  ; 2 uses
  %i.ez = getelementptr i8, ptr %.sink382, i64 16
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !61
  %i.fa = getelementptr i8, ptr %i.ey, i64 8
  store ptr %.sink382, ptr %i.fa, align 8, !tbaa !62
  store ptr %.sink382, ptr %i.h, align 8, !tbaa !42
  br label %bb.an

bb.an:                                            ; preds = %.sink.split375, %bb.aj, %bb.af
  %.8228 = phi i32 [ %i.eo, %bb.aj ], [ %i.ee, %bb.af ], [ 0, %.sink.split375 ] ; 4 uses
  %.9 = phi i8 [ %.0216272, %bb.aj ], [ %.0216272, %bb.af ], [ %.9.ph, %.sink.split375 ] ; 2 uses
  %.2215 = phi i1 [ false, %bb.aj ], [ true, %bb.af ], [ %.2215.ph, %.sink.split375 ]
  %.3 = phi i64 [ %.0212274, %bb.aj ], [ %.0212274, %bb.af ], [ %.3.ph, %.sink.split375 ]
  %i.fb = add i64 %.3, 1                          ; 2 uses
  %i.fc = load i64, ptr %2, align 8, !tbaa !379   ; 2 uses
  %i.fd = icmp ult i64 %i.fb, %i.fc
  br i1 %i.fd, label %.outer, label %._crit_edge, !llvm.loop !1307

.outer:                                           ; preds = %bb.an, %.lr.ph275
  %.ph = phi i64 [ %i.fc, %bb.an ], [ %i.e, %.lr.ph275 ]
  %.0212274.ph = phi i64 [ %i.fb, %bb.an ], [ 0, %.lr.ph275 ]
  %.0213273.ph = phi i1 [ %.2215, %bb.an ], [ false, %.lr.ph275 ] ; 2 uses
  %.0216272.ph = phi i8 [ %.9, %bb.an ], [ 1, %.lr.ph275 ]
  %.0220271.ph = phi i32 [ %.8228, %bb.an ], [ 0, %.lr.ph275 ]
  br label %bb.f

.thread296:                                       ; preds = %.critedge
  %i.fe = add i64 %.0212274, 1                    ; 2 uses
  %i.ff = load i64, ptr %2, align 8, !tbaa !379   ; 2 uses
  %i.fg = icmp ult i64 %i.fe, %i.ff
  br i1 %i.fg, label %bb.f, label %._crit_edge.thread303, !llvm.loop !1307

._crit_edge.thread303:                            ; preds = %.thread296
  %i.fh = trunc nuw i8 %.3219 to i1
  br i1 %i.fh, label %._crit_edge.thread.sink.split, label %bb.ap
end_hunk_0
