Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 85
loop-unroll.NumUnrolled: 175
begin_hunk_0_@js_array_includes:bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph68, %JS_FreeValue.exit39
  %.367 = phi i64 [ %.2, %.lr.ph68 ], [ %i.cb, %JS_FreeValue.exit39 ] ; 2 uses
  %i.bg = tail call { i64, i64 } @JS_GetPropertyInt64(ptr noundef %0, i64 %i.c, i64 %i.d, i64 noundef %.367) ; 2 uses
  %i.bh = extractvalue { i64, i64 } %i.bg, 0      ; 5 uses
  %i.bi = extractvalue { i64, i64 } %i.bg, 1      ; 5 uses
  %i.bj = and i64 %i.bi, 4294967295
  %i.bk = icmp eq i64 %i.bj, 6
  br i1 %i.bk, label %JS_ToInt64Clamp.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = load i64, ptr %4, align 8
  %i.bm = load i64, ptr %i.be, align 8
  %i.bn = tail call fastcc zeroext i1 @js_strict_eq2(i64 %i.bl, i64 %i.bm, i64 %i.bh, i64 %i.bi, i32 noundef 2)
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !232 ; 2 uses
  %i.bp = trunc i64 %i.bi to i32
  %i.bq = icmp ugt i32 %i.bp, -10                 ; 2 uses
  br i1 %i.bn, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  br i1 %i.bq, label %bb.s, label %JS_FreeValue.exit

bb.s:                                             ; preds = %bb.r
  %i.br = inttoptr i64 %i.bh to ptr
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -4 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !191 ; 2 uses
  %i.bu = add nsw i32 %i.bt, -1
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !191
  %i.bv = icmp slt i32 %i.bt, 2
  br i1 %i.bv, label %bb.t, label %JS_FreeValue.exit

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @js_free_value_rt(ptr noundef %i.bo, i64 %i.bh, i64 %i.bi), !inline_history !291
  br label %JS_FreeValue.exit

bb.u:                                             ; preds = %bb.q
  br i1 %i.bq, label %bb.v, label %JS_FreeValue.exit39

bb.v:                                             ; preds = %bb.u
  %i.bw = inttoptr i64 %i.bh to ptr
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -4 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !191 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !191
  %i.ca = icmp slt i32 %i.by, 2
  br i1 %i.ca, label %bb.w, label %JS_FreeValue.exit39

bb.w:                                             ; preds = %bb.v
  tail call fastcc void @js_free_value_rt(ptr noundef %i.bo, i64 %i.bh, i64 %i.bi), !inline_history !291
  br label %JS_FreeValue.exit39

JS_FreeValue.exit39:                              ; preds = %bb.u, %bb.v, %bb.w
  %i.cb = add i64 %.367, 1                        ; 2 uses
  %exitcond78.not = icmp eq i64 %i.cb, %i.f
  br i1 %exitcond78.not, label %JS_FreeValue.exit, label %bb.p, !llvm.loop !1484

JS_FreeValue.exit:                                ; preds = %bb.n, %JS_FreeValue.exit39, %js_get_fast_array.exit.thread, %bb.t, %bb.s, %bb.r, %bb.b
  %.sroa.0.0.insert.ext.i = phi i64 [ 0, %js_get_fast_array.exit.thread ], [ 0, %bb.b ], [ 1, %bb.t ], [ 1, %bb.r ], [ 1, %bb.s ], [ 0, %JS_FreeValue.exit39 ], [ 1, %bb.n ] ; 3 uses
  %i.cc = trunc i64 %i.d to i32
  %i.cd = icmp ugt i32 %i.cc, -10
  br i1 %i.cd, label %bb.x, label %JS_FreeValue.exit41

bb.x:                                             ; preds = %JS_FreeValue.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !232
  %i.cg = inttoptr i64 %i.c to ptr
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -4 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !191 ; 2 uses
  %i.cj = add nsw i32 %i.ci, -1
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !191
  %i.ck = icmp slt i32 %i.ci, 2
  br i1 %i.ck, label %JS_FreeValue.exit41.sink.split, label %JS_FreeValue.exit41

JS_ToInt64Clamp.exit:                             ; preds = %bb.j, %js_dup.exit.i, %bb.p, %bb.a
  %i.cl = trunc i64 %i.d to i32
  %i.cm = icmp ugt i32 %i.cl, -10
  br i1 %i.cm, label %bb.y, label %JS_FreeValue.exit41

bb.y:                                             ; preds = %JS_ToInt64Clamp.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !232
  %i.cp = inttoptr i64 %i.c to ptr
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -4 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !191 ; 2 uses
  %i.cs = add nsw i32 %i.cr, -1
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !191
  %i.ct = icmp slt i32 %i.cr, 2
  br i1 %i.ct, label %JS_FreeValue.exit41.sink.split, label %JS_FreeValue.exit41

JS_FreeValue.exit41.sink.split:                   ; preds = %bb.y, %bb.x
  %.sink = phi ptr [ %i.cf, %bb.x ], [ %i.co, %bb.y ]
  %.sroa.034.0.ph = phi i64 [ %.sroa.0.0.insert.ext.i, %bb.x ], [ 0, %bb.y ]
  %.sroa.435.0.ph = phi i64 [ 1, %bb.x ], [ 6, %bb.y ]
  tail call fastcc void @js_free_value_rt(ptr noundef %.sink, i64 %i.c, i64 %i.d)
  br label %JS_FreeValue.exit41

JS_FreeValue.exit41:                              ; preds = %JS_FreeValue.exit41.sink.split, %bb.x, %JS_FreeValue.exit, %bb.y, %JS_ToInt64Clamp.exit
  %.sroa.034.0 = phi i64 [ %.sroa.0.0.insert.ext.i, %bb.x ], [ 0, %JS_ToInt64Clamp.exit ], [ 0, %bb.y ], [ %.sroa.0.0.insert.ext.i, %JS_FreeValue.exit ], [ %.sroa.034.0.ph, %JS_FreeValue.exit41.sink.split ]
  %.sroa.435.0 = phi i64 [ 1, %bb.x ], [ 6, %JS_ToInt64Clamp.exit ], [ 6, %bb.y ], [ 1, %JS_FreeValue.exit ], [ %.sroa.435.0.ph, %JS_FreeValue.exit41.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.034.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.435.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @JS_ToInt32Clamp(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, i64 %2, i64 %3, i32 noundef %4, i32 noundef %5) unnamed_addr #2 {
bb.a:
  %i.a = trunc i64 %3 to i32
  %i.b = icmp ugt i32 %i.a, -10
  br i1 %i.b, label %bb.b, label %js_dup.exit.preheader

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %2 to ptr
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !191
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !191
  br label %js_dup.exit.preheader

js_dup.exit.preheader:                            ; preds = %bb.a, %bb.b
  br label %js_dup.exit

js_dup.exit:                                      ; preds = %js_dup.exit.preheader, %bb.g
  %.sroa.09.0.in.i = phi i64 [ %i.k, %bb.g ], [ %2, %js_dup.exit.preheader ] ; 3 uses
  %.sroa.6.0.i = phi i64 [ %i.l, %bb.g ], [ %3, %js_dup.exit.preheader ] ; 2 uses
  %i.g = trunc i64 %.sroa.6.0.i to i32
  switch i32 %i.g, label %bb.g [
    i32 0, label %bb.c
    i32 1, label %bb.c
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 6, label %.sink.split
    i32 8, label %bb.d
  ]

bb.c:                                             ; preds = %js_dup.exit, %js_dup.exit, %js_dup.exit, %js_dup.exit
  %.sroa.09.0.extract.trunc.i = trunc i64 %.sroa.09.0.in.i to i32
  br label %bb.h

bb.d:                                             ; preds = %js_dup.exit
  %.sroa.09.0.le.i = bitcast i64 %.sroa.09.0.in.i to double ; 4 uses
  %i.h = fcmp uno double %.sroa.09.0.le.i, 0.000000e+00
  br i1 %i.h, label %.thread26, label %bb.e

.thread26:                                        ; preds = %bb.d
  store i32 0, ptr %1, align 4, !tbaa !191
  br label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = fcmp olt double %.sroa.09.0.le.i, f0xC1E0000000000000
  br i1 %i.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.inv.i = fcmp oge double %.sroa.09.0.le.i, f0x41DFFFFFFFC00000
  %spec.select16.i = select i1 %.inv.i, double f0x41DFFFFFFFC00000, double %.sroa.09.0.le.i
  %spec.select.i = fptosi double %spec.select16.i to i32
  br label %bb.h

bb.g:                                             ; preds = %js_dup.exit
  %i.j = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.09.0.in.i, i64 %.sroa.6.0.i, i32 noundef 0), !inline_history !72 ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0
  %i.l = extractvalue { i64, i64 } %i.j, 1        ; 2 uses
  %i.m = and i64 %i.l, 4294967295
  %i.n = icmp eq i64 %i.m, 6
  br i1 %i.n, label %.sink.split, label %js_dup.exit

bb.h:                                             ; preds = %bb.c, %bb.f
  %.1.sink.i.ph = phi i32 [ %.sroa.09.0.extract.trunc.i, %bb.c ], [ %spec.select.i, %bb.f ] ; 4 uses
  store i32 %.1.sink.i.ph, ptr %1, align 4, !tbaa !191
  %i.o = icmp slt i32 %.1.sink.i.ph, 0
  br i1 %i.o, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.e, %bb.h
  %.1.sink.i.ph25 = phi i32 [ %.1.sink.i.ph, %bb.h ], [ -2147483648, %bb.e ]
  %i.p = add nsw i32 %.1.sink.i.ph25, %5
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.p, i32 0)
  br label %.sink.split

bb.i:                                             ; preds = %.thread26, %bb.h
  %.1.sink.i.ph28 = phi i32 [ 0, %.thread26 ], [ %.1.sink.i.ph, %bb.h ]
  %i.q = icmp sgt i32 %.1.sink.i.ph28, %4
  br i1 %i.q, label %.sink.split, label %bb.j

.sink.split:                                      ; preds = %bb.g, %js_dup.exit, %bb.i, %.thread
  %.sink = phi i32 [ %4, %bb.i ], [ %spec.store.select, %.thread ], [ 0, %js_dup.exit ], [ 0, %bb.g ]
  %.0.i22.ph = phi i32 [ 0, %bb.i ], [ 0, %.thread ], [ -1, %js_dup.exit ], [ -1, %bb.g ]
  store i32 %.sink, ptr %1, align 4
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.i
  %.0.i22 = phi i32 [ 0, %bb.i ], [ %.0.i22.ph, %.sink.split ]
  ret i32 %.0.i22
}

; Function Attrs: nounwind uwtable
define internal fastcc { i64, i64 } @js_sub_string(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = sub i32 %3, %2                           ; 8 uses
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 2147483647
  %i.f = icmp eq i32 %3, %i.e
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ptrtoint ptr %1 to i64
  %i.h = getelementptr inbounds i8, ptr %1, i64 -4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !191
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !191
  br label %js_alloc_string.exit.thread

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.k = icmp slt i32 %i.a, 1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !232
  %i.n = getelementptr i8, ptr %i.m, i64 1104
  %.val = load ptr, ptr %i.n, align 8, !tbaa !297
  %i.o = getelementptr i8, ptr %.val, i64 384
  %.val.val = load ptr, ptr %i.o, align 8, !tbaa !299 ; 2 uses
  %i.p = ptrtoint ptr %.val.val to i64
  %i.q = getelementptr inbounds i8, ptr %.val.val, i64 -4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !191
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !191
  br label %js_alloc_string.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.t = load i64, ptr %1, align 8                ; 5 uses
  %i.u = trunc i64 %i.t to i32                    ; 2 uses
  %i.v = lshr i32 %i.u, 31
  %i.w = lshr exact i32 1024, %i.v
  %i.x = icmp samesign ugt i32 %i.a, %i.w
  br i1 %i.x, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f
  %i.y = and i64 %i.t, 3458764513820540928
  %i.z = icmp eq i64 %i.y, 1152921504606846976
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !389 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !390
  %i.ae = load i64, ptr %i.ab, align 8
  %i.af = trunc i64 %i.ae to i32
  %i.ag = lshr i32 %i.af, 31
  %i.ah = lshr i32 %i.ad, %i.ag
  %i.ai = add i32 %i.ah, %2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.070 = phi i32 [ %i.ai, %bb.h ], [ %2, %bb.g ]
  %.069 = phi ptr [ %i.ab, %bb.h ], [ %1, %bb.g ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !232 ; 9 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 3 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !196
  %i.ao = add i64 %i.an, 40
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !197
  %i.ar = add i64 %i.aq, -1
  %i.as = icmp ugt i64 %i.ao, %i.ar
  br i1 %i.as, label %bb.r, label %bb.j, !prof !192

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 632
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 640
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !222 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.at
  br i1 %i.aw, label %bb.k, label %bb.l, !prof !192

bb.k:                                             ; preds = %bb.j
  %i.ax = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.ak, i32 noundef 4) ; 2 uses
  %.not.i101 = icmp eq ptr %i.ax, null
  br i1 %.not.i101, label %._crit_edge.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.i100 = phi ptr [ %i.ax, %bb.k ], [ %i.av, %bb.j ] ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i100, i64 38 ; 2 uses
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !221 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i100, i64 40
  %i.bb = zext i16 %i.az to i64
  %i.bc = mul nuw nsw i64 %i.bb, 48
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bc ; 11 uses
  %i.be = load i16, ptr %i.bd, align 8, !tbaa !218
  store i16 %i.be, ptr %i.ay, align 2, !tbaa !221
  store i16 %i.az, ptr %i.bd, align 8, !tbaa !218
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i100, i64 34 ; 2 uses
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !221
  %i.bh = add i16 %i.bg, 1                        ; 2 uses
  store i16 %i.bh, ptr %i.bf, align 2, !tbaa !221
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i100, i64 36
  %i.bj = load i16, ptr %i.bi, align 4, !tbaa !221
  %i.bk = icmp eq i16 %i.bh, %i.bj
  br i1 %i.bk, label %bb.m, label %bb.n, !prof !192

bb.m:                                             ; preds = %bb.l
  %i.bl = load ptr, ptr %.0.i100, align 8, !tbaa !223 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i100, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !222 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !222
  store ptr %i.bl, ptr %i.bn, align 8, !tbaa !223
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i100, i8 0, i64 16, i1 false)
  br label %bb.n

._crit_edge.i:                                    ; preds = %bb.k
  %.pre.i = load ptr, ptr %i.aj, align 8, !tbaa !232
  br label %bb.r

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 3 uses
  %i.bq = load i64, ptr %i.al, align 8, !tbaa !217
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.al, align 8, !tbaa !217
  %i.bs = load i16, ptr %i.bd, align 8, !tbaa !218
  %i.bt = icmp eq i16 %i.bs, -1
  br i1 %i.bt, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ak, i64 1064
  %i.bv = icmp eq ptr %i.bd, %i.bu
  br i1 %i.bv, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !219
  %i.by = tail call i64 %i.bx(ptr noundef nonnull %i.bd) #49, !inline_history !108 ; 2 uses
  %.not15.i.i.i.i = icmp eq i64 %i.by, 0
  %i.bz = select i1 %.not15.i.i.i.i, i64 8, i64 %i.by
  br label %bb.t

bb.q:                                             ; preds = %bb.n
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.cb = load i8, ptr %i.ca, align 2, !tbaa !218
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !221
  %i.cf = zext i16 %i.ce to i64
  br label %bb.t

bb.r:                                             ; preds = %._crit_edge.i, %bb.i
  %i.cg = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ak, %bb.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1256 ; 3 uses
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !233, !range !234, !noundef !235
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %js_alloc_string.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i8 1, ptr %i.ch, align 8, !tbaa !233
  %i.ck = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !667 ; 0 uses
  store i8 0, ptr %i.ch, align 8, !tbaa !233
  br label %js_alloc_string.exit.thread

bb.t:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.011.i.i.i.i = phi i64 [ 8, %bb.o ], [ %i.bz, %bb.p ], [ %i.cf, %bb.q ]
  %i.cl = load i64, ptr %i.am, align 8, !tbaa !196
  %i.cm = add i64 %i.cl, %.011.i.i.i.i
  store i64 %i.cm, ptr %i.am, align 8, !tbaa !196
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i32 1, ptr %i.cn, align 4, !tbaa !191
  store i64 2147483656, ptr %i.bp, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i32 0, ptr %i.co, align 8, !tbaa !249
  %i.cp = load i64, ptr %.069, align 8
  %i.cq = and i64 %i.cp, 2147483648
  %i.cr = zext nneg i32 %i.a to i64
  %i.cs = or disjoint i64 %i.cq, %i.cr
  %i.ct = or disjoint i64 %i.cs, 1152921504606846976
  store i64 %i.ct, ptr %i.bp, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store ptr %.069, ptr %i.cu, align 8, !tbaa !389
  %i.cv = load i64, ptr %.069, align 8
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = lshr i32 %i.cw, 31
  %i.cy = shl i32 %.070, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  store i32 %i.cy, ptr %i.cz, align 8, !tbaa !390
  %i.da = getelementptr inbounds i8, ptr %.069, i64 -4 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !191
  %i.dc = add nsw i32 %i.db, 1
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !191
  %i.dd = ptrtoint ptr %i.bp to i64
  br label %js_alloc_string.exit.thread

bb.u:                                             ; preds = %bb.f
  %.not = icmp sgt i32 %i.u, -1
  br i1 %.not, label %bb.ay, label %.preheader
end_hunk_0
begin_hunk_1_@js_sub_string:bb.a
  %i.ey = or <4 x i32> %vec.phi, %i.ew            ; 2 uses
  %i.ez = or <4 x i32> %vec.phi166, %i.ex         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !1489

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.ez, %i.ey
  %i.fb = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.et, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %str16.exit.us122.preheader

str16.exit.us122.preheader:                       ; preds = %.lr.ph.split.split.us119, %middle.block
  %indvars.iv.ph = phi i64 [ %i.es, %.lr.ph.split.split.us119 ], [ %i.eu, %middle.block ]
  %.0111.us120.ph = phi i32 [ 0, %.lr.ph.split.split.us119 ], [ %i.fb, %middle.block ]
  br label %str16.exit.us122

str16.exit.us122:                                 ; preds = %str16.exit.us122.preheader, %str16.exit.us122
  %indvars.iv = phi i64 [ %indvars.iv.next, %str16.exit.us122 ], [ %indvars.iv.ph, %str16.exit.us122.preheader ] ; 2 uses
  %.0111.us120 = phi i32 [ %i.ff, %str16.exit.us122 ], [ %.0111.us120.ph, %str16.exit.us122.preheader ]
  %i.fc = getelementptr inbounds [2 x i8], ptr %i.er, i64 %indvars.iv
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !221
  %i.fe = zext i16 %i.fd to i32
  %i.ff = or i32 %.0111.us120, %i.fe              ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %str16.exit.us122, !llvm.loop !1490

default.unreachable:                              ; preds = %str16.exit90, %bb.an, %bb.ay, %._crit_edge128, %bb.ab, %bb.w, %.lr.ph
  unreachable

bb.v:                                             ; preds = %.lr.ph
  tail call void @abort() #50
  unreachable

._crit_edge:                                      ; preds = %str16.exit.us122, %str16.exit.us115, %str16.exit.us, %middle.block, %middle.block179, %middle.block195
  %.0.lcssa = phi i32 [ %i.dw, %str16.exit.us ], [ %i.eq, %str16.exit.us115 ], [ %i.ds, %middle.block195 ], [ %i.em, %middle.block179 ], [ %i.fb, %middle.block ], [ %i.ff, %str16.exit.us122 ]
  %i.fg = icmp sgt i32 %.0.lcssa, 255
  br i1 %i.fg, label %bb.w, label %._crit_edge.thread

bb.w:                                             ; preds = %._crit_edge
  %i.fh = lshr i64 %i.t, 60
  %i.fi = trunc nuw nsw i64 %i.fh to i32
  %i.fj = and i32 %i.fi, 3
  switch i32 %i.fj, label %default.unreachable [
    i32 0, label %bb.x
    i32 1, label %bb.y
    i32 2, label %bb.z
    i32 3, label %bb.aa
  ]

bb.x:                                             ; preds = %bb.w
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %str16.exit78

bb.y:                                             ; preds = %bb.w
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !389
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !390
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fq
  br label %str16.exit78

bb.z:                                             ; preds = %bb.w
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !239
  br label %str16.exit78

bb.aa:                                            ; preds = %bb.w
  tail call void @abort() #50
  unreachable

str16.exit78:                                     ; preds = %bb.x, %bb.y, %bb.z
  %.0.i.i76 = phi ptr [ %i.fk, %bb.x ], [ %i.fr, %bb.y ], [ %i.ft, %bb.z ]
  %i.fu = sext i32 %2 to i64
  %i.fv = getelementptr inbounds [2 x i8], ptr %.0.i.i76, i64 %i.fu
  %i.fw = tail call fastcc ptr @js_alloc_string(ptr noundef %0, i32 noundef range(i32 0, -2147483648) %i.a, i32 noundef 1), !inline_history !109 ; 7 uses
  %.not.i = icmp eq ptr %i.fw, null
  br i1 %.not.i, label %js_alloc_string.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %str16.exit78
  %i.fx = load i64, ptr %i.fw, align 8
  %i.fy = lshr i64 %i.fx, 60
  %i.fz = trunc nuw nsw i64 %i.fy to i32
  %i.ga = and i32 %i.fz, 3
  switch i32 %i.ga, label %default.unreachable [
    i32 0, label %bb.ac
    i32 1, label %bb.ad
    i32 2, label %bb.ae
    i32 3, label %bb.af
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  br label %str16.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !389
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !390
  %i.gh = zext i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gh
  br label %str16.exit.i

bb.ae:                                            ; preds = %bb.ab
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !239
  br label %str16.exit.i

bb.af:                                            ; preds = %bb.ab
  tail call void @abort() #50, !inline_history !109
  unreachable

str16.exit.i:                                     ; preds = %bb.ae, %bb.ad, %bb.ac
  %.0.i.i.i = phi ptr [ %i.gb, %bb.ac ], [ %i.gi, %bb.ad ], [ %i.gk, %bb.ae ]
  %i.gl = shl nuw nsw i32 %i.a, 1
  %i.gm = zext nneg i32 %i.gl to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.0.i.i.i, ptr readonly align 2 %i.fv, i64 %i.gm, i1 false)
  %i.gn = ptrtoint ptr %i.fw to i64
  br label %js_alloc_string.exit.thread

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !232 ; 7 uses
  %narrow = add nuw nsw i32 %i.a, 25
  %i.gq = zext nneg i32 %narrow to i64            ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 40 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 48 ; 3 uses
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !196
  %i.gu = add i64 %i.gt, %i.gq
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gp, i64 56
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !197
  %i.gx = add i64 %i.gw, -1
  %i.gy = icmp ugt i64 %i.gu, %i.gx
  br i1 %i.gy, label %bb.al, label %bb.ag, !prof !192

bb.ag:                                            ; preds = %._crit_edge.thread
  %i.gz = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.gp, i64 noundef %i.gq), !inline_history !668 ; 15 uses
  %.not.i.i.i80 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i80, label %._crit_edge.i85, label %bb.ah

._crit_edge.i85:                                  ; preds = %bb.ag
  %.pre.i86 = load ptr, ptr %i.go, align 8, !tbaa !232
  br label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.ha = load i64, ptr %i.gr, align 8, !tbaa !217
  %i.hb = add i64 %i.ha, 1
  store i64 %i.hb, ptr %i.gr, align 8, !tbaa !217
  %i.hc = getelementptr inbounds i8, ptr %i.gz, i64 -8 ; 3 uses
  %i.hd = load i16, ptr %i.hc, align 8, !tbaa !218
  %i.he = icmp eq i16 %i.hd, -1
  br i1 %i.he, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gp, i64 1064
  %i.hg = icmp eq ptr %i.hc, %i.hf
  br i1 %i.hg, label %.lr.ph127, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !219
  %i.hj = tail call i64 %i.hi(ptr noundef nonnull %i.hc) #49, !inline_history !108 ; 2 uses
  %.not15.i.i.i.i84 = icmp eq i64 %i.hj, 0
  %i.hk = select i1 %.not15.i.i.i.i84, i64 8, i64 %i.hj
  br label %.lr.ph127

bb.ak:                                            ; preds = %bb.ah
  %i.hl = getelementptr inbounds i8, ptr %i.gz, i64 -6
  %i.hm = load i8, ptr %i.hl, align 2, !tbaa !218
  %i.hn = zext i8 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.hn
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !221
  %i.hq = zext i16 %i.hp to i64
  br label %.lr.ph127

bb.al:                                            ; preds = %._crit_edge.i85, %._crit_edge.thread
  %i.hr = phi ptr [ %.pre.i86, %._crit_edge.i85 ], [ %i.gp, %._crit_edge.thread ]
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 1256 ; 3 uses
  %i.ht = load i8, ptr %i.hs, align 8, !tbaa !233, !range !234, !noundef !235
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %js_alloc_string.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i8 1, ptr %i.hs, align 8, !tbaa !233
  %i.hv = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !667 ; 0 uses
  store i8 0, ptr %i.hs, align 8, !tbaa !233
  br label %js_alloc_string.exit.thread

.lr.ph127:                                        ; preds = %bb.ak, %bb.aj, %bb.ai
  %.011.i.i.i.i82 = phi i64 [ 8, %bb.ai ], [ %i.hk, %bb.aj ], [ %i.hq, %bb.ak ]
  %i.hw = load i64, ptr %i.gs, align 8, !tbaa !196
  %i.hx = add i64 %i.hw, %.011.i.i.i.i82
  store i64 %i.hx, ptr %i.gs, align 8, !tbaa !196
  %i.hy = getelementptr inbounds i8, ptr %i.gz, i64 -4
  store i32 1, ptr %i.hy, align 4, !tbaa !191
  %i.hz = zext nneg i32 %i.a to i64               ; 3 uses
  store i64 %i.hz, ptr %i.gz, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store i32 0, ptr %i.ia, align 8, !tbaa !249
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.id = getelementptr inbounds nuw i8, ptr %i.gz, i64 24 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  %i.if = sext i32 %2 to i64
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph127, %str8.exit
  %indvars.iv144 = phi i64 [ 0, %.lr.ph127 ], [ %indvars.iv.next145, %str8.exit ] ; 3 uses
  %i.ig = load i64, ptr %1, align 8
  %i.ih = lshr i64 %i.ig, 60
  %i.ii = trunc nuw nsw i64 %i.ih to i32
  %i.ij = and i32 %i.ii, 3
  switch i32 %i.ij, label %default.unreachable [
    i32 0, label %str16.exit90
    i32 1, label %bb.ao
    i32 2, label %bb.ap
    i32 3, label %bb.aq
  ]

bb.ao:                                            ; preds = %bb.an
  %i.ik = load ptr, ptr %i.ib, align 8, !tbaa !389
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %i.im = load i32, ptr %i.ic, align 8, !tbaa !390
  %i.in = zext i32 %i.im to i64
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.in
  br label %str16.exit90

bb.ap:                                            ; preds = %bb.an
  %i.ip = load ptr, ptr %i.ib, align 8, !tbaa !239
  br label %str16.exit90

bb.aq:                                            ; preds = %bb.an
  tail call void @abort() #50
  unreachable

str16.exit90:                                     ; preds = %bb.an, %bb.ao, %bb.ap
  %.0.i.i88 = phi ptr [ %i.ip, %bb.ap ], [ %i.io, %bb.ao ], [ %i.ib, %bb.an ]
  %i.iq = getelementptr [2 x i8], ptr %.0.i.i88, i64 %indvars.iv144
  %i.ir = getelementptr [2 x i8], ptr %i.iq, i64 %i.if
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !221
  %i.it = trunc i16 %i.is to i8
  %i.iu = load i64, ptr %i.gz, align 8
  %i.iv = lshr i64 %i.iu, 60
  %i.iw = trunc nuw nsw i64 %i.iv to i32
  %i.ix = and i32 %i.iw, 3
  switch i32 %i.ix, label %default.unreachable [
    i32 0, label %str8.exit
    i32 1, label %bb.ar
    i32 2, label %bb.as
    i32 3, label %bb.at
  ]

bb.ar:                                            ; preds = %str16.exit90
  %i.iy = load ptr, ptr %i.id, align 8, !tbaa !389
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  %i.ja = load i32, ptr %i.ie, align 8, !tbaa !390
  %i.jb = zext i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.jb
  br label %str8.exit

bb.as:                                            ; preds = %str16.exit90
  %i.jd = load ptr, ptr %i.id, align 8, !tbaa !239
  br label %str8.exit

bb.at:                                            ; preds = %str16.exit90
  tail call void @abort() #50
  unreachable

str8.exit:                                        ; preds = %str16.exit90, %bb.ar, %bb.as
  %.0.i.i91 = phi ptr [ %i.jd, %bb.as ], [ %i.jc, %bb.ar ], [ %i.id, %str16.exit90 ]
  %i.je = getelementptr inbounds nuw i8, ptr %.0.i.i91, i64 %indvars.iv144
  store i8 %i.it, ptr %i.je, align 1, !tbaa !218
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %exitcond148.not = icmp eq i64 %indvars.iv.next145, %i.hz
  br i1 %exitcond148.not, label %._crit_edge128, label %bb.an, !llvm.loop !1491

._crit_edge128:                                   ; preds = %str8.exit
  %.pre = load i64, ptr %i.gz, align 8
  %i.jf = lshr i64 %.pre, 60
  %i.jg = trunc nuw nsw i64 %i.jf to i32
  %i.jh = and i32 %i.jg, 3
  switch i32 %i.jh, label %default.unreachable [
    i32 0, label %bb.au
    i32 1, label %bb.av
    i32 2, label %bb.aw
    i32 3, label %bb.ax
  ]

bb.au:                                            ; preds = %._crit_edge128
  %i.ji = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  br label %str8.exit95

bb.av:                                            ; preds = %._crit_edge128
  %i.jj = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !389
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 24
  %i.jm = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !390
  %i.jo = zext i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jo
  br label %str8.exit95

bb.aw:                                            ; preds = %._crit_edge128
  %i.jq = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !239
  br label %str8.exit95

bb.ax:                                            ; preds = %._crit_edge128
  tail call void @abort() #50
  unreachable

str8.exit95:                                      ; preds = %bb.au, %bb.av, %bb.aw
  %.0.i.i93 = phi ptr [ %i.ji, %bb.au ], [ %i.jp, %bb.av ], [ %i.jr, %bb.aw ]
  %i.js = getelementptr inbounds nuw i8, ptr %.0.i.i93, i64 %i.hz
  store i8 0, ptr %i.js, align 1, !tbaa !218
  %i.jt = ptrtoint ptr %i.gz to i64
  br label %js_alloc_string.exit.thread

bb.ay:                                            ; preds = %bb.u
  %i.ju = lshr i64 %i.t, 60
  %i.jv = trunc nuw nsw i64 %i.ju to i32
  %i.jw = and i32 %i.jv, 3
  switch i32 %i.jw, label %default.unreachable [
    i32 0, label %bb.az
    i32 1, label %bb.ba
    i32 2, label %bb.bb
    i32 3, label %bb.bc
  ]

bb.az:                                            ; preds = %bb.ay
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %str8.exit98

bb.ba:                                            ; preds = %bb.ay
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !389
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !390
  %i.kd = zext i32 %i.kc to i64
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.kd
  br label %str8.exit98

bb.bb:                                            ; preds = %bb.ay
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !239
  br label %str8.exit98

bb.bc:                                            ; preds = %bb.ay
  tail call void @abort() #50
  unreachable

str8.exit98:                                      ; preds = %bb.az, %bb.ba, %bb.bb
  %.0.i.i96 = phi ptr [ %i.jx, %bb.az ], [ %i.ke, %bb.ba ], [ %i.kg, %bb.bb ]
  %i.kh = sext i32 %2 to i64
  %i.ki = getelementptr inbounds i8, ptr %.0.i.i96, i64 %i.kh
  %i.kj = tail call fastcc { i64, i64 } @js_new_string8_len(ptr noundef %0, ptr noundef %i.ki, i32 noundef %i.a) ; 2 uses
  %i.kk = extractvalue { i64, i64 } %i.kj, 0
  %i.kl = extractvalue { i64, i64 } %i.kj, 1
  br label %js_alloc_string.exit.thread

js_alloc_string.exit.thread:                      ; preds = %str16.exit.i, %str16.exit78, %bb.am, %bb.al, %bb.s, %bb.r, %str8.exit95, %str8.exit98, %bb.t, %bb.e, %bb.c
  %.sroa.061.1 = phi i64 [ %i.g, %bb.c ], [ %i.p, %bb.e ], [ %i.dd, %bb.t ], [ %i.kk, %str8.exit98 ], [ 0, %bb.s ], [ 0, %bb.am ], [ %i.jt, %str8.exit95 ], [ 0, %bb.r ], [ 0, %bb.al ], [ %i.gn, %str16.exit.i ], [ 0, %str16.exit78 ]
  %.sroa.11.1 = phi i64 [ -7, %bb.c ], [ -7, %bb.e ], [ -7, %bb.t ], [ %i.kl, %str8.exit98 ], [ 6, %bb.s ], [ 6, %bb.am ], [ -7, %str8.exit95 ], [ 6, %bb.r ], [ 6, %bb.al ], [ -7, %str16.exit.i ], [ 6, %str16.exit78 ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.061.1, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.11.1, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal fastcc { i64, i64 } @js_json_check(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef byval(%struct.JSValue) align 8 %6) unnamed_addr #2 {
bb.a:
  %7 = alloca [2 x %struct.JSValue], align 16     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  %i.a = and i64 %5, 4294967295
  %i.b = icmp eq i64 %i.a, 4294967295
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = trunc i64 %5 to i32
  switch i32 %i.c, label %JS_FreeValue.exit54.thread [
    i32 -9, label %bb.c
    i32 7, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.a
  %i.d = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %4, i64 %5, i32 noundef 154, i64 %4, i64 %5, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 5 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 4 uses
  %trunc = trunc i64 %i.f to i32                  ; 2 uses
  switch i32 %trunc, label %JS_IsFunction.exit.thread62 [
    i32 6, label %JS_FreeValue.exit54
    i32 -1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 18
  %i.i = load i16, ptr %i.h, align 2, !tbaa !276  ; 2 uses
  switch i16 %i.i, label %JS_IsFunction.exit [
    i16 13, label %bb.e
    i16 51, label %.split
  ]

.split:                                           ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !218
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i8, ptr %i.l, align 8, !tbaa !458
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %JS_IsFunction.exit.thread62.thread, label %bb.e

JS_IsFunction.exit:                               ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !232
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1128
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !251
  %i.r = zext i16 %i.i to i64
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !255
  %.not71 = icmp eq ptr %i.u, null
  br i1 %.not71, label %JS_IsFunction.exit.thread62.thread, label %bb.e

bb.e:                                             ; preds = %JS_IsFunction.exit, %.split, %bb.d
  %i.v = call fastcc { i64, i64 } @JS_CallInternal(ptr noundef %0, i64 %i.e, i64 %i.f, i64 %4, i64 %5, i64 0, i64 3, i32 noundef 1, ptr noundef nonnull %6, i32 noundef 2) #51, !inline_history !497 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !232  ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.g, i64 -4 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !191  ; 2 uses
  %i.aa = add nsw i32 %i.z, -1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !191
  %i.ab = icmp slt i32 %i.z, 2
  br i1 %i.ab, label %bb.f, label %JS_CallFree.exit

bb.f:                                             ; preds = %bb.e
  call fastcc void @js_free_value_rt(ptr noundef %i.x, i64 %i.e, i64 %i.f) #51, !inline_history !498
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !232
  br label %JS_CallFree.exit

JS_CallFree.exit:                                 ; preds = %bb.e, %bb.f
  %i.ac = phi ptr [ %.pre, %bb.f ], [ %i.x, %bb.e ]
  %i.ad = extractvalue { i64, i64 } %i.v, 0       ; 2 uses
  %i.ae = extractvalue { i64, i64 } %i.v, 1       ; 3 uses
  %i.af = trunc i64 %5 to i32
  %i.ag = icmp ugt i32 %i.af, -10
  br i1 %i.ag, label %bb.g, label %JS_FreeValue.exit

bb.g:                                             ; preds = %JS_CallFree.exit
  %i.ah = inttoptr i64 %4 to ptr
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !191 ; 2 uses
  %i.ak = add nsw i32 %i.aj, -1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !191
  %i.al = icmp slt i32 %i.aj, 2
  br i1 %i.al, label %bb.h, label %JS_FreeValue.exit

bb.h:                                             ; preds = %bb.g
  call fastcc void @js_free_value_rt(ptr noundef %i.ac, i64 %4, i64 %5), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %JS_CallFree.exit, %bb.g, %bb.h
  %i.am = and i64 %i.ae, 4294967295
  %i.an = icmp eq i64 %i.am, 6
  br i1 %i.an, label %JS_FreeValue.exit54, label %JS_FreeValue.exit54.thread

JS_IsFunction.exit.thread62:                      ; preds = %bb.c
  %i.ao = icmp ugt i32 %trunc, -10
  br i1 %i.ao, label %JS_IsFunction.exit.thread62.thread, label %JS_FreeValue.exit54.thread

JS_IsFunction.exit.thread62.thread:               ; preds = %JS_IsFunction.exit, %.split, %JS_IsFunction.exit.thread62
  %.in75 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %.in75, align 8, !tbaa !232
  %i.aq = inttoptr i64 %i.e to ptr
end_hunk_1
begin_hunk_2_@js_atof:bb.a
  %.not197 = icmp eq ptr %2, null
  br i1 %.not197, label %bb.dr, label %bb.do

bb.do:                                            ; preds = %.thread360
  store ptr %.10365, ptr %2, align 8, !tbaa !364
  br label %bb.dr

bb.dp:                                            ; preds = %bb.bo
  %i.ou = load ptr, ptr %i.ey, align 8, !tbaa !232
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 1256 ; 3 uses
  %i.ow = load i8, ptr %i.ov, align 8, !tbaa !233, !range !234, !noundef !235
  %i.ox = trunc nuw i8 %i.ow to i1
  br i1 %i.ox, label %.thread360, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  store i8 1, ptr %i.ov, align 8, !tbaa !233
  %i.oy = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !236 ; 0 uses
  store i8 0, ptr %i.ov, align 8, !tbaa !233
  br label %.thread360

bb.dr:                                            ; preds = %.thread360, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.ot, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.8.1366, 1
  ret { i64, i64 } %.fca.1.insert
}

declare i32 @lre_is_space_non_ascii(i32 noundef) local_unnamed_addr #14

declare double @js_atod(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define internal fastcc ptr @js_bigint_new(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %1, 32768
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.143) ; 0 uses
  br label %js_malloc.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = sext i32 %1 to i64
  %i.d = shl nsw i64 %i.c, 2
  %i.e = add nsw i64 %i.d, 4                      ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !232  ; 8 uses
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %bb.j, label %bb.d, !prof !192

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !196
  %i.l = add i64 %i.k, %i.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.n = load i64, ptr %i.m, align 8, !tbaa !197
  %i.o = add i64 %i.n, -1
  %i.p = icmp ugt i64 %i.l, %i.o
  br i1 %i.p, label %bb.j, label %bb.e, !prof !192

bb.e:                                             ; preds = %bb.d
  %i.q = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.g, i64 noundef %i.e) ; 6 uses
  %.not.i11 = icmp eq ptr %i.q, null
  br i1 %.not.i11, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !232
  br label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.r = load i64, ptr %i.i, align 8, !tbaa !217
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.i, align 8, !tbaa !217
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 -8 ; 3 uses
  %i.u = load i16, ptr %i.t, align 8, !tbaa !218
  %i.v = icmp eq i16 %i.u, -1
  br i1 %i.v, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 1064
  %i.x = icmp eq ptr %i.t, %i.w
  br i1 %i.x, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !219
  %i.aa = tail call i64 %i.z(ptr noundef nonnull %i.t) #49, !inline_history !12 ; 2 uses
  %.not15.i.i = icmp eq i64 %i.aa, 0
  %i.ab = select i1 %.not15.i.i, i64 8, i64 %i.aa
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds i8, ptr %i.q, i64 -6
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !218
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !221
  %i.ah = zext i16 %i.ag to i64
  br label %bb.l

bb.j:                                             ; preds = %._crit_edge, %bb.d, %bb.c
  %i.ai = phi ptr [ %.pre, %._crit_edge ], [ %i.g, %bb.d ], [ %i.g, %bb.c ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1256 ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !233, !range !234, !noundef !235
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %js_malloc.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.aj, align 8, !tbaa !233
  %i.am = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !309 ; 0 uses
  store i8 0, ptr %i.aj, align 8, !tbaa !233
  br label %js_malloc.exit.thread

bb.l:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.011.i.i = phi i64 [ 8, %bb.g ], [ %i.ab, %bb.h ], [ %i.ah, %bb.i ]
  %i.an = load i64, ptr %i.j, align 8, !tbaa !196
  %i.ao = add i64 %i.an, %.011.i.i
  store i64 %i.ao, ptr %i.j, align 8, !tbaa !196
  %i.ap = getelementptr inbounds i8, ptr %i.q, i64 -4
  store i32 1, ptr %i.ap, align 4, !tbaa !191
  store i32 %1, ptr %i.q, align 8, !tbaa !191
  br label %js_malloc.exit.thread

js_malloc.exit.thread:                            ; preds = %bb.k, %bb.j, %bb.l, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.q, %bb.l ], [ null, %bb.j ], [ null, %bb.k ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @js_bigint_normalize(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !191    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = icmp sgt i32 %i.a, 1
  br i1 %i.c, label %.lr.ph, label %js_bigint_normalize1.exit

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.0.i5 = phi i32 [ %i.m, %bb.c ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = zext nneg i32 %.0.i5 to i64
  %i.e = getelementptr [4 x i8], ptr %i.b, i64 %i.d ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !191  ; 2 uses
  %i.h = add i32 %i.g, -1
  %or.cond.i = icmp ult i32 %i.h, -2
  br i1 %or.cond.i, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = and i32 %i.g, 1
  %i.j = getelementptr i8, ptr %i.e, i64 -8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !191
  %i.l = lshr i32 %i.k, 31
  %.not.i = icmp eq i32 %i.i, %i.l
  br i1 %.not.i, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.m = add nsw i32 %.0.i5, -1
  %i.n = icmp sgt i32 %.0.i5, 2
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !llvm.loop !140

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.b
  %.0.i.lcssa = phi i32 [ %.0.i5, %bb.b ], [ 1, %bb.c ], [ %.0.i5, %.lr.ph ] ; 3 uses
  %.not21.i = icmp eq i32 %.0.i.lcssa, %i.a
  br i1 %.not21.i, label %js_bigint_normalize1.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  store i32 %.0.i.lcssa, ptr %1, align 4, !tbaa !191
  %i.o = zext nneg i32 %.0.i.lcssa to i64
  %i.p = shl nuw nsw i64 %i.o, 2
  %i.q = add nuw nsw i64 %i.p, 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !232
  %i.t = tail call ptr @js_realloc_rt(ptr noundef %i.s, ptr noundef nonnull %1, i64 noundef %i.q), !inline_history !141 ; 2 uses
  %.not.i3 = icmp eq ptr %i.t, null
  br i1 %.not.i3, label %bb.e, label %js_bigint_normalize1.exit, !prof !192

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !232
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1256 ; 3 uses
  %i.w = load i8, ptr %i.v, align 8, !tbaa !233, !range !234, !noundef !235
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %js_bigint_normalize1.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.v, align 8, !tbaa !233
  %i.y = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !142 ; 0 uses
  store i8 0, ptr %i.v, align 8, !tbaa !233
  br label %js_bigint_normalize1.exit

js_bigint_normalize1.exit:                        ; preds = %bb.d, %bb.f, %bb.e, %bb.a, %._crit_edge
  %.1.i = phi ptr [ %1, %bb.a ], [ %1, %._crit_edge ], [ %1, %bb.e ], [ %1, %bb.f ], [ %i.t, %bb.d ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @js_bigint_add(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !191    ; 6 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !191    ; 6 uses
  %..i = tail call noundef i32 @llvm.smax.i32(i32 %i.a, i32 %i.b) ; 9 uses
  %..i91 = tail call noundef i32 @llvm.smin.i32(i32 %i.a, i32 %i.b) ; 6 uses
  %i.c = icmp sgt i32 %..i, 32768
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.143), !inline_history !790 ; 0 uses
  br label %js_bigint_extend.exit

bb.c:                                             ; preds = %bb.a
  %i.e = sext i32 %..i to i64
  %i.f = shl nsw i64 %i.e, 2
  %i.g = add nsw i64 %i.f, 4                      ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !232  ; 8 uses
  %i.j = icmp eq i64 %i.g, 0
  br i1 %i.j, label %bb.j, label %bb.d, !prof !192

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !196
  %i.n = add i64 %i.m, %i.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.p = load i64, ptr %i.o, align 8, !tbaa !197
  %i.q = add i64 %i.p, -1
  %i.r = icmp ugt i64 %i.n, %i.q
  br i1 %i.r, label %bb.j, label %bb.e, !prof !192

bb.e:                                             ; preds = %bb.d
  %i.s = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.i, i64 noundef %i.g), !inline_history !791 ; 19 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %._crit_edge148, label %bb.f

._crit_edge148:                                   ; preds = %bb.e
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !232
  br label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.k, align 8, !tbaa !217
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.k, align 8, !tbaa !217
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 -8 ; 3 uses
  %i.w = load i16, ptr %i.v, align 8, !tbaa !218
  %i.x = icmp eq i16 %i.w, -1
  br i1 %i.x, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 1064
  %i.z = icmp eq ptr %i.v, %i.y
  br i1 %i.z, label %js_bigint_new.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !219
  %i.ac = tail call i64 %i.ab(ptr noundef nonnull %i.v) #49, !inline_history !143 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.ac, 0
  %i.ad = select i1 %.not15.i.i.i, i64 8, i64 %i.ac
  br label %js_bigint_new.exit

bb.i:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds i8, ptr %i.s, i64 -6
  %i.af = load i8, ptr %i.ae, align 2, !tbaa !218
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !221
  %i.aj = zext i16 %i.ai to i64
  br label %js_bigint_new.exit

bb.j:                                             ; preds = %._crit_edge148, %bb.d, %bb.c
  %i.ak = phi ptr [ %.pre, %._crit_edge148 ], [ %i.i, %bb.d ], [ %i.i, %bb.c ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1256 ; 3 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !233, !range !234, !noundef !235
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %js_bigint_extend.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.al, align 8, !tbaa !233
  %i.ao = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !792 ; 0 uses
  store i8 0, ptr %i.al, align 8, !tbaa !233
  br label %js_bigint_extend.exit

js_bigint_new.exit:                               ; preds = %bb.i, %bb.h, %bb.g
  %.011.i.i.i = phi i64 [ 8, %bb.g ], [ %i.ad, %bb.h ], [ %i.aj, %bb.i ]
  %i.ap = load i64, ptr %i.l, align 8, !tbaa !196
  %i.aq = add i64 %i.ap, %.011.i.i.i
  store i64 %i.aq, ptr %i.l, align 8, !tbaa !196
  %i.ar = getelementptr inbounds i8, ptr %i.s, i64 -4
  store i32 1, ptr %i.ar, align 4, !tbaa !191
  store i32 %..i, ptr %i.s, align 8, !tbaa !191
  %i.as = icmp sgt i32 %..i91, 0
  br i1 %i.as, label %.lr.ph, label %js_bigint_new.exit.._crit_edge_crit_edge

js_bigint_new.exit.._crit_edge_crit_edge:         ; preds = %js_bigint_new.exit
  %.pre149 = sub nsw i32 0, %3
  br label %._crit_edge

.lr.ph:                                           ; preds = %js_bigint_new.exit
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.av = sub nsw i32 0, %3                       ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 3 uses
  %wide.trip.count = zext nneg i32 %..i91 to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ax = icmp eq i32 %..i91, 1
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.l ] ; 5 uses
  %.084118 = phi i32 [ %3, %.lr.ph.new ], [ %i.bu, %bb.l ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.l ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !191 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !191
  %i.bc = xor i32 %i.bb, %i.av
  %i.bd = add i32 %i.bc, %i.az                    ; 2 uses
  %i.be = icmp ult i32 %i.bd, %i.az
  %i.bf = add i32 %i.bd, %.084118                 ; 2 uses
  %i.bg = icmp ult i32 %i.bf, %.084118
  %i.bh = or i1 %i.be, %i.bg
  %i.bi = zext i1 %i.bh to i32                    ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv
  store i32 %i.bf, ptr %i.bj, align 4, !tbaa !191
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.next
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !191 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.next
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !191
  %i.bo = xor i32 %i.bn, %i.av
  %i.bp = add i32 %i.bo, %i.bl                    ; 2 uses
  %i.bq = icmp ult i32 %i.bp, %i.bl
  %i.br = add i32 %i.bp, %i.bi                    ; 2 uses
  %i.bs = icmp ult i32 %i.br, %i.bi
  %i.bt = or i1 %i.bq, %i.bs
  %i.bu = zext i1 %i.bt to i32                    ; 3 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.next
  store i32 %i.br, ptr %i.bv, align 4, !tbaa !191
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.l, !llvm.loop !1676

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.084118.epil.init = phi i32 [ %3, %.lr.ph ], [ %i.bu, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod169 = trunc i32 %..i91 to i1
  tail call void @llvm.assume(i1 %lcmp.mod169)
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.epil.init
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !191 ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.epil.init
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !191
  %i.ca = xor i32 %i.bz, %i.av
  %i.cb = add i32 %i.ca, %i.bx                    ; 2 uses
  %i.cc = icmp ult i32 %i.cb, %i.bx
  %i.cd = add i32 %i.cb, %.084118.epil.init       ; 2 uses
  %i.ce = icmp ult i32 %i.cd, %.084118.epil.init
  %i.cf = or i1 %i.cc, %i.ce
  %i.cg = zext i1 %i.cf to i32
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.epil.init
  store i32 %i.cd, ptr %i.ch, align 4, !tbaa !191
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %js_bigint_new.exit.._crit_edge_crit_edge
  %.pre-phi = phi i32 [ %.pre149, %js_bigint_new.exit.._crit_edge_crit_edge ], [ %i.av, %._crit_edge.loopexit.unr-lcssa ], [ %i.av, %.epil.preheader ] ; 4 uses
  %.084.lcssa = phi i32 [ %3, %js_bigint_new.exit.._crit_edge_crit_edge ], [ %i.bu, %._crit_edge.loopexit.unr-lcssa ], [ %i.cg, %.epil.preheader ] ; 8 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.cj = load i32, ptr %1, align 4, !tbaa !191   ; 3 uses
  %i.ck = add i32 %i.cj, -1
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !191 ; 2 uses
  %.neg = ashr i32 %i.cn, 31                      ; 3 uses
  %i.co = lshr i32 %i.cn, 31                      ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.cq = load i32, ptr %2, align 4, !tbaa !191   ; 3 uses
  %i.cr = add i32 %i.cq, -1
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !191
  %.neg114 = ashr i32 %i.cu, 31
  %i.cv = xor i32 %.neg114, %.pre-phi             ; 4 uses
  %i.cw = icmp ugt i32 %i.cj, %i.cq
  br i1 %i.cw, label %.preheader115, label %bb.m

.preheader115:                                    ; preds = %._crit_edge
  %i.cx = icmp slt i32 %..i91, %..i
  br i1 %i.cx, label %.lr.ph126, label %.loopexit

.lr.ph126:                                        ; preds = %.preheader115
  %i.cy = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 3 uses
  %i.cz = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %i.a) ; 3 uses
  %smin143 = sext i32 %i.cz to i64                ; 4 uses
  %i.da = tail call i32 @llvm.smax.i32(i32 %i.a, i32 %i.b)
  %i.db = sub i32 %..i, %i.cz
  %.neg177 = add i32 %i.cz, 1
  %xtraiter174 = and i32 %i.db, 1
  %lcmp.mod175.not = icmp eq i32 %xtraiter174, 0
  br i1 %lcmp.mod175.not, label %.prol.loopexit173, label %.prol.loopexit173.unr-lcssa

.prol.loopexit173.unr-lcssa:                      ; preds = %.lr.ph126
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %smin143
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !191 ; 2 uses
  %i.de = add i32 %i.dd, %i.cv                    ; 2 uses
  %i.df = icmp ult i32 %i.de, %i.dd
  %i.dg = add i32 %i.de, %.084.lcssa              ; 2 uses
  %i.dh = icmp ult i32 %i.dg, %.084.lcssa
  %i.di = or i1 %i.df, %i.dh
  %i.dj = zext i1 %i.di to i32                    ; 2 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %smin143
  store i32 %i.dg, ptr %i.dk, align 4, !tbaa !191
  %indvars.iv.next145.prol = add nsw i64 %smin143, 1
  br label %.prol.loopexit173

.prol.loopexit173:                                ; preds = %.prol.loopexit173.unr-lcssa, %.lr.ph126
  %.lcssa.unr = phi i32 [ poison, %.lr.ph126 ], [ %i.dj, %.prol.loopexit173.unr-lcssa ]
  %indvars.iv144.unr = phi i64 [ %smin143, %.lr.ph126 ], [ %indvars.iv.next145.prol, %.prol.loopexit173.unr-lcssa ]
  %.185124.unr = phi i32 [ %.084.lcssa, %.lr.ph126 ], [ %i.dj, %.prol.loopexit173.unr-lcssa ]
  %i.dl = icmp eq i32 %..i, %.neg177
  br i1 %i.dl, label %.loopexit, label %.lr.ph126.new

.lr.ph126.new:                                    ; preds = %.prol.loopexit173, %.lr.ph126.new
  %indvars.iv144 = phi i64 [ %indvars.iv.next145.1, %.lr.ph126.new ], [ %indvars.iv144.unr, %.prol.loopexit173 ] ; 4 uses
  %.185124 = phi i32 [ %i.ec, %.lr.ph126.new ], [ %.185124.unr, %.prol.loopexit173 ] ; 2 uses
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %indvars.iv144
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !191 ; 2 uses
  %i.do = add i32 %i.dn, %i.cv                    ; 2 uses
  %i.dp = icmp ult i32 %i.do, %i.dn
  %i.dq = add i32 %i.do, %.185124                 ; 2 uses
  %i.dr = icmp ult i32 %i.dq, %.185124
  %i.ds = or i1 %i.dp, %i.dr
  %i.dt = zext i1 %i.ds to i32                    ; 2 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %indvars.iv144
  store i32 %i.dq, ptr %i.du, align 4, !tbaa !191
  %indvars.iv.next145 = add nsw i64 %indvars.iv144, 1 ; 2 uses
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %indvars.iv.next145
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !191 ; 2 uses
  %i.dx = add i32 %i.dw, %i.cv                    ; 2 uses
  %i.dy = icmp ult i32 %i.dx, %i.dw
  %i.dz = add i32 %i.dx, %i.dt                    ; 2 uses
  %i.ea = icmp ult i32 %i.dz, %i.dt
  %i.eb = or i1 %i.dy, %i.ea
  %i.ec = zext i1 %i.eb to i32                    ; 2 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %indvars.iv.next145
  store i32 %i.dz, ptr %i.ed, align 4, !tbaa !191
  %indvars.iv.next145.1 = add nsw i64 %indvars.iv144, 2 ; 2 uses
  %lftr.wideiv146.1 = trunc i64 %indvars.iv.next145.1 to i32
  %exitcond147.not.1 = icmp eq i32 %i.da, %lftr.wideiv146.1
  br i1 %exitcond147.not.1, label %.loopexit, label %.lr.ph126.new, !llvm.loop !1677

bb.m:                                             ; preds = %._crit_edge
  %i.ee = icmp ult i32 %i.cj, %i.cq
  %i.ef = icmp slt i32 %..i91, %..i
  %or.cond = and i1 %i.ee, %i.ef
  br i1 %or.cond, label %.lr.ph122, label %.loopexit

.lr.ph122:                                        ; preds = %bb.m
  %i.eg = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 3 uses
  %i.eh = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %i.a) ; 3 uses
  %smin = sext i32 %i.eh to i64                   ; 4 uses
  %i.ei = tail call i32 @llvm.smax.i32(i32 %i.a, i32 %i.b)
  %i.ej = sub i32 %..i, %i.eh
  %.neg176 = add i32 %i.eh, 1
  %xtraiter170 = and i32 %i.ej, 1
  %lcmp.mod171.not = icmp eq i32 %xtraiter170, 0
  br i1 %lcmp.mod171.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph122
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %smin
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !191
  %i.em = xor i32 %i.el, %.pre-phi
  %i.en = sub i32 %i.em, %i.co                    ; 2 uses
  %i.eo = icmp ult i32 %i.en, %.neg
  %i.ep = add i32 %i.en, %.084.lcssa              ; 2 uses
  %i.eq = icmp ult i32 %i.ep, %.084.lcssa
  %i.er = or i1 %i.eo, %i.eq
  %i.es = zext i1 %i.er to i32                    ; 2 uses
  %i.et = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %smin
  store i32 %i.ep, ptr %i.et, align 4, !tbaa !191
  %indvars.iv.next141.prol = add nsw i64 %smin, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph122
  %.lcssa166.unr = phi i32 [ poison, %.lr.ph122 ], [ %i.es, %.prol.loopexit.unr-lcssa ]
  %indvars.iv140.unr = phi i64 [ %smin, %.lr.ph122 ], [ %indvars.iv.next141.prol, %.prol.loopexit.unr-lcssa ]
  %.286120.unr = phi i32 [ %.084.lcssa, %.lr.ph122 ], [ %i.es, %.prol.loopexit.unr-lcssa ]
  %i.eu = icmp eq i32 %..i, %.neg176
  br i1 %i.eu, label %.loopexit, label %.lr.ph122.new

.lr.ph122.new:                                    ; preds = %.prol.loopexit, %.lr.ph122.new
  %indvars.iv140 = phi i64 [ %indvars.iv.next141.1, %.lr.ph122.new ], [ %indvars.iv140.unr, %.prol.loopexit ] ; 4 uses
  %.286120 = phi i32 [ %i.fn, %.lr.ph122.new ], [ %.286120.unr, %.prol.loopexit ] ; 2 uses
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %indvars.iv140
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !191
  %i.ex = xor i32 %i.ew, %.pre-phi
  %i.ey = sub i32 %i.ex, %i.co                    ; 2 uses
  %i.ez = icmp ult i32 %i.ey, %.neg
  %i.fa = add i32 %i.ey, %.286120                 ; 2 uses
  %i.fb = icmp ult i32 %i.fa, %.286120
  %i.fc = or i1 %i.ez, %i.fb
  %i.fd = zext i1 %i.fc to i32                    ; 2 uses
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %indvars.iv140
  store i32 %i.fa, ptr %i.fe, align 4, !tbaa !191
  %indvars.iv.next141 = add nsw i64 %indvars.iv140, 1 ; 2 uses
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %indvars.iv.next141
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !191
  %i.fh = xor i32 %i.fg, %.pre-phi
  %i.fi = sub i32 %i.fh, %i.co                    ; 2 uses
  %i.fj = icmp ult i32 %i.fi, %.neg
  %i.fk = add i32 %i.fi, %i.fd                    ; 2 uses
  %i.fl = icmp ult i32 %i.fk, %i.fd
  %i.fm = or i1 %i.fj, %i.fl
  %i.fn = zext i1 %i.fm to i32                    ; 2 uses
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %indvars.iv.next141
  store i32 %i.fk, ptr %i.fo, align 4, !tbaa !191
  %indvars.iv.next141.1 = add nsw i64 %indvars.iv140, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next141.1 to i32
  %exitcond142.not.1 = icmp eq i32 %i.ei, %lftr.wideiv.1
  br i1 %exitcond142.not.1, label %.loopexit, label %.lr.ph122.new, !llvm.loop !1678

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph122.new, %.prol.loopexit173, %.lr.ph126.new, %.preheader115, %bb.m
  %.3 = phi i32 [ %.084.lcssa, %bb.m ], [ %i.ec, %.lr.ph126.new ], [ %.084.lcssa, %.preheader115 ], [ %.lcssa.unr, %.prol.loopexit173 ], [ %.lcssa166.unr, %.prol.loopexit ], [ %i.fn, %.lr.ph122.new ]
  %i.fp = sub nsw i32 %i.cv, %i.co
  %i.fq = add nsw i32 %.3, %i.fp                  ; 3 uses
  %i.fr = load i32, ptr %i.s, align 8, !tbaa !191 ; 6 uses
  %i.fs = add nsw i32 %i.fq, -1
  %or.cond.i = icmp ult i32 %i.fs, -2
  br i1 %or.cond.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.loopexit
  %i.ft = and i32 %i.fq, 1
  %i.fu = sext i32 %i.fr to i64
  %i.fv = getelementptr [4 x i8], ptr %i.s, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !191
  %i.fx = lshr i32 %i.fw, 31
  %.not.i92 = icmp eq i32 %i.ft, %i.fx
  br i1 %.not.i92, label %.preheader, label %bb.o

.preheader:                                       ; preds = %bb.n
  %i.fy = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.fz = icmp sgt i32 %i.fr, 1
  br i1 %i.fz, label %.lr.ph129, label %js_bigint_extend.exit

bb.o:                                             ; preds = %bb.n, %.loopexit
  %i.ga = add nsw i32 %i.fr, 1                    ; 2 uses
  %i.gb = sext i32 %i.ga to i64
  %i.gc = shl nsw i64 %i.gb, 2
  %i.gd = add nsw i64 %i.gc, 4                    ; 2 uses
  %i.ge = load ptr, ptr %i.h, align 8, !tbaa !232
  %i.gf = tail call ptr @js_realloc_rt(ptr noundef %i.ge, ptr noundef nonnull %i.s, i64 noundef %i.gd), !inline_history !793 ; 4 uses
  %.not.i97 = icmp eq ptr %i.gf, null             ; 2 uses
  %i.gg = icmp ne i64 %i.gd, 0
  %i.gh = and i1 %i.gg, %.not.i97
  br i1 %i.gh, label %bb.p, label %js_realloc.exit, !prof !192

bb.p:                                             ; preds = %bb.o
  %i.gi = load ptr, ptr %i.h, align 8, !tbaa !232
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 1256 ; 3 uses
  %i.gk = load i8, ptr %i.gj, align 8, !tbaa !233, !range !234, !noundef !235
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %js_realloc.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %i.gj, align 8, !tbaa !233
  %i.gm = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !794 ; 0 uses
  store i8 0, ptr %i.gj, align 8, !tbaa !233
  br label %js_realloc.exit.thread

js_realloc.exit:                                  ; preds = %bb.o
  br i1 %.not.i97, label %js_realloc.exit.thread, label %bb.r

js_realloc.exit.thread:                           ; preds = %bb.p, %bb.q, %js_realloc.exit
  %i.gn = load ptr, ptr %i.h, align 8, !tbaa !232
  tail call void @js_free_rt(ptr noundef %i.gn, ptr noundef nonnull %i.s)
  br label %js_bigint_extend.exit

bb.r:                                             ; preds = %js_realloc.exit
  store i32 %i.ga, ptr %i.gf, align 4, !tbaa !191
  %i.go = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gp = sext i32 %i.fr to i64
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.go, i64 %i.gp
  store i32 %i.fq, ptr %i.gq, align 4, !tbaa !191
  br label %js_bigint_extend.exit

.lr.ph129:                                        ; preds = %.preheader, %bb.t
  %.0.i.i95128 = phi i32 [ %i.ha, %bb.t ], [ %i.fr, %.preheader ] ; 5 uses
  %i.gr = zext nneg i32 %.0.i.i95128 to i64
  %i.gs = getelementptr [4 x i8], ptr %i.fy, i64 %i.gr ; 2 uses
  %i.gt = getelementptr i8, ptr %i.gs, i64 -4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !191 ; 2 uses
  %i.gv = add i32 %i.gu, -1
  %or.cond.i.i = icmp ult i32 %i.gv, -2
  br i1 %or.cond.i.i, label %._crit_edge130, label %bb.s

bb.s:                                             ; preds = %.lr.ph129
  %i.gw = and i32 %i.gu, 1
  %i.gx = getelementptr i8, ptr %i.gs, i64 -8
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !191
  %i.gz = lshr i32 %i.gy, 31
  %.not.i.i96 = icmp eq i32 %i.gw, %i.gz
  br i1 %.not.i.i96, label %bb.t, label %._crit_edge130

bb.t:                                             ; preds = %bb.s
  %i.ha = add nsw i32 %.0.i.i95128, -1
  %i.hb = icmp sgt i32 %.0.i.i95128, 2
  br i1 %i.hb, label %.lr.ph129, label %._crit_edge130, !llvm.loop !140

._crit_edge130:                                   ; preds = %bb.t, %.lr.ph129, %bb.s
  %.0.i.i95.lcssa = phi i32 [ %.0.i.i95128, %bb.s ], [ 1, %bb.t ], [ %.0.i.i95128, %.lr.ph129 ] ; 3 uses
  %.not21.i.i = icmp eq i32 %.0.i.i95.lcssa, %i.fr
  br i1 %.not21.i.i, label %js_bigint_extend.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge130
  store i32 %.0.i.i95.lcssa, ptr %i.s, align 8, !tbaa !191
  %i.hc = zext nneg i32 %.0.i.i95.lcssa to i64
  %i.hd = shl nuw nsw i64 %i.hc, 2
  %i.he = add nuw nsw i64 %i.hd, 4
  %i.hf = load ptr, ptr %i.h, align 8, !tbaa !232
  %i.hg = tail call ptr @js_realloc_rt(ptr noundef %i.hf, ptr noundef nonnull %i.s, i64 noundef %i.he), !inline_history !144 ; 2 uses
  %.not.i100 = icmp eq ptr %i.hg, null
  br i1 %.not.i100, label %bb.v, label %js_bigint_extend.exit, !prof !192

bb.v:                                             ; preds = %bb.u
  %i.hh = load ptr, ptr %i.h, align 8, !tbaa !232
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 1256 ; 3 uses
  %i.hj = load i8, ptr %i.hi, align 8, !tbaa !233, !range !234, !noundef !235
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %js_bigint_extend.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 1, ptr %i.hi, align 8, !tbaa !233
  %i.hl = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !145 ; 0 uses
  store i8 0, ptr %i.hi, align 8, !tbaa !233
  br label %js_bigint_extend.exit

js_bigint_extend.exit:                            ; preds = %bb.u, %bb.w, %bb.v, %.preheader, %js_realloc.exit.thread, %bb.r, %bb.j, %bb.k, %bb.b, %._crit_edge130
  %.0 = phi ptr [ %i.s, %._crit_edge130 ], [ null, %bb.j ], [ %i.s, %.preheader ], [ null, %bb.b ], [ null, %bb.k ], [ %i.gf, %bb.r ], [ null, %js_realloc.exit.thread ], [ %i.s, %bb.v ], [ %i.s, %bb.w ], [ %i.hg, %bb.u ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @js_bigint_extend(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !191    ; 6 uses
  %i.b = add i32 %2, -1
  %or.cond = icmp ult i32 %i.b, -2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %2, 1
  %i.d = sext i32 %i.a to i64
  %i.e = getelementptr [4 x i8], ptr %1, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !191
  %i.g = lshr i32 %i.f, 31
  %.not = icmp eq i32 %i.c, %i.g
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = add nsw i32 %i.a, 1                      ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = add nsw i64 %i.j, 4                      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !232
  %i.n = tail call ptr @js_realloc_rt(ptr noundef %i.m, ptr noundef nonnull %1, i64 noundef %i.k), !inline_history !402 ; 4 uses
  %.not.i = icmp eq ptr %i.n, null                ; 3 uses
  %i.o = icmp ne i64 %i.k, 0
  %i.p = and i1 %i.o, %.not.i
  br i1 %i.p, label %bb.d, label %js_realloc.exit, !prof !192

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !232
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1256 ; 3 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !233, !range !234, !noundef !235
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %js_realloc.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.r, align 8, !tbaa !233
  %i.u = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !795 ; 0 uses
  store i8 0, ptr %i.r, align 8, !tbaa !233
  br label %js_realloc.exit.thread

js_realloc.exit:                                  ; preds = %bb.c
  br i1 %.not.i, label %js_realloc.exit.thread, label %bb.f

js_realloc.exit.thread:                           ; preds = %bb.e, %bb.d, %js_realloc.exit
end_hunk_2
begin_hunk_3_@js_array_at:bb.a
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %JS_ToInt64Sat.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %4, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp ugt i32 %i.i, -10
  br i1 %i.j, label %bb.c, label %js_dup.exit.i.preheader

bb.c:                                             ; preds = %bb.b
  %i.k = inttoptr i64 %i.f to ptr
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !191
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !191
  br label %js_dup.exit.i.preheader

js_dup.exit.i.preheader:                          ; preds = %bb.c, %bb.b
  br label %js_dup.exit.i

js_dup.exit.i:                                    ; preds = %js_dup.exit.i.preheader, %bb.h
  %.sroa.012.0.in.i.i = phi i64 [ %i.v, %bb.h ], [ %i.f, %js_dup.exit.i.preheader ] ; 3 uses
  %.sroa.6.0.i.i = phi i64 [ %i.w, %bb.h ], [ %i.h, %js_dup.exit.i.preheader ] ; 2 uses
  %i.o = trunc i64 %.sroa.6.0.i.i to i32
  switch i32 %i.o, label %bb.h [
    i32 0, label %bb.d
    i32 1, label %bb.d
    i32 2, label %bb.d
    i32 3, label %bb.d
    i32 6, label %JS_ToInt64Sat.exit
    i32 8, label %bb.e
  ]

bb.d:                                             ; preds = %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i
  %sext.i.i = shl i64 %.sroa.012.0.in.i.i, 32
  %i.p = ashr exact i64 %sext.i.i, 32
  br label %select.unfold

bb.e:                                             ; preds = %js_dup.exit.i
  %.sroa.012.0.le.i.i = bitcast i64 %.sroa.012.0.in.i.i to double ; 4 uses
  %i.q = fcmp uno double %.sroa.012.0.le.i.i, 0.000000e+00
  br i1 %i.q, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = fcmp olt double %.sroa.012.0.le.i.i, f0xC3E0000000000000
  br i1 %i.r, label %.thread31, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = fcmp ult double %.sroa.012.0.le.i.i, f0x43E0000000000000
  %i.t = fptosi double %.sroa.012.0.le.i.i to i64
  br i1 %i.s, label %select.unfold, label %JS_ToInt64Sat.exit

bb.h:                                             ; preds = %js_dup.exit.i
  %i.u = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.012.0.in.i.i, i64 %.sroa.6.0.i.i, i32 noundef 0), !inline_history !80 ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0
  %i.w = extractvalue { i64, i64 } %i.u, 1        ; 2 uses
  %i.x = and i64 %i.w, 4294967295
  %i.y = icmp eq i64 %i.x, 6
  br i1 %i.y, label %JS_ToInt64Sat.exit, label %js_dup.exit.i

select.unfold:                                    ; preds = %bb.g, %bb.d
  %.sink.i.i.ph = phi i64 [ %i.p, %bb.d ], [ %i.t, %bb.g ] ; 3 uses
  %i.z = icmp slt i64 %.sink.i.i.ph, 0
  br i1 %i.z, label %.thread31, label %.thread

.thread31:                                        ; preds = %bb.f, %select.unfold
  %.sink.i.i.ph33 = phi i64 [ %.sink.i.i.ph, %select.unfold ], [ -9223372036854775808, %bb.f ]
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !240
  %i.ab = add nsw i64 %i.aa, %.sink.i.i.ph33
  br label %.thread

.thread:                                          ; preds = %bb.e, %.thread31, %select.unfold
  %.0 = phi i64 [ %i.ab, %.thread31 ], [ %.sink.i.i.ph, %select.unfold ], [ 0, %bb.e ] ; 3 uses
  %i.ac = icmp sgt i64 %.0, -1
  %i.ad = load i64, ptr %i.a, align 8
  %.not24 = icmp slt i64 %.0, %i.ad
  %or.cond = select i1 %i.ac, i1 %.not24, i1 false
  br i1 %or.cond, label %bb.i, label %JS_ToInt64Sat.exit

bb.i:                                             ; preds = %.thread
  %i.ae = tail call { i64, i64 } @JS_GetPropertyInt64(ptr noundef %0, i64 %i.c, i64 %i.d, i64 noundef %.0) ; 2 uses
  %i.af = extractvalue { i64, i64 } %i.ae, 0
  %i.ag = extractvalue { i64, i64 } %i.ae, 1
  br label %JS_ToInt64Sat.exit

JS_ToInt64Sat.exit:                               ; preds = %bb.h, %js_dup.exit.i, %bb.g, %.thread, %bb.i, %bb.a
  %.sroa.420.0 = phi i64 [ 0, %bb.a ], [ 0, %.thread ], [ %i.af, %bb.i ], [ 0, %bb.g ], [ 0, %js_dup.exit.i ], [ 0, %bb.h ]
  %.sroa.621.0 = phi i64 [ 6, %bb.a ], [ 3, %.thread ], [ %i.ag, %bb.i ], [ 3, %bb.g ], [ 6, %js_dup.exit.i ], [ 6, %bb.h ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !232
  %i.aj = trunc i64 %i.d to i32
  %i.ak = icmp ugt i32 %i.aj, -10
  br i1 %i.ak, label %bb.j, label %JS_FreeValue.exit

bb.j:                                             ; preds = %JS_ToInt64Sat.exit
  %i.al = inttoptr i64 %i.c to ptr
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !191 ; 2 uses
  %i.ao = add nsw i32 %i.an, -1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !191
  %i.ap = icmp slt i32 %i.an, 2
  br i1 %i.ap, label %bb.k, label %JS_FreeValue.exit

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ai, i64 %i.c, i64 %i.d), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %JS_ToInt64Sat.exit, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.420.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.621.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_array_with(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.b = tail call { i64, i64 } @JS_ToObject(ptr noundef %0, i64 %1, i64 %2) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 6 uses
  %i.d = extractvalue { i64, i64 } %i.b, 1        ; 6 uses
  %i.e = call fastcc i32 @js_get_length64(ptr noundef %0, ptr noundef nonnull %i.a, i64 %i.c, i64 %i.d)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %JS_ToInt64Sat.exit.thread131

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %4, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp ugt i32 %i.i, -10
  br i1 %i.j, label %bb.c, label %js_dup.exit.i.preheader

bb.c:                                             ; preds = %bb.b
  %i.k = inttoptr i64 %i.f to ptr
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !191
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !191
  br label %js_dup.exit.i.preheader

js_dup.exit.i.preheader:                          ; preds = %bb.c, %bb.b
  br label %js_dup.exit.i

js_dup.exit.i:                                    ; preds = %js_dup.exit.i.preheader, %bb.h
  %.sroa.012.0.in.i.i = phi i64 [ %i.v, %bb.h ], [ %i.f, %js_dup.exit.i.preheader ] ; 3 uses
  %.sroa.6.0.i.i = phi i64 [ %i.w, %bb.h ], [ %i.h, %js_dup.exit.i.preheader ] ; 2 uses
  %i.o = trunc i64 %.sroa.6.0.i.i to i32
  switch i32 %i.o, label %bb.h [
    i32 0, label %bb.d
    i32 1, label %bb.d
    i32 2, label %bb.d
    i32 3, label %bb.d
    i32 6, label %JS_ToInt64Sat.exit.thread131
    i32 8, label %bb.e
  ]

bb.d:                                             ; preds = %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i
  %sext.i.i = shl i64 %.sroa.012.0.in.i.i, 32
  %i.p = ashr exact i64 %sext.i.i, 32
  br label %select.unfold

bb.e:                                             ; preds = %js_dup.exit.i
  %.sroa.012.0.le.i.i = bitcast i64 %.sroa.012.0.in.i.i to double ; 4 uses
  %i.q = fcmp uno double %.sroa.012.0.le.i.i, 0.000000e+00
  br i1 %i.q, label %.thread123, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = fcmp olt double %.sroa.012.0.le.i.i, f0xC3E0000000000000
  br i1 %i.r, label %.thread119, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = fcmp ult double %.sroa.012.0.le.i.i, f0x43E0000000000000
  %i.t = fptosi double %.sroa.012.0.le.i.i to i64
  br i1 %i.s, label %select.unfold, label %.thread123.thread

bb.h:                                             ; preds = %js_dup.exit.i
  %i.u = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.012.0.in.i.i, i64 %.sroa.6.0.i.i, i32 noundef 0), !inline_history !80 ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0
  %i.w = extractvalue { i64, i64 } %i.u, 1        ; 2 uses
  %i.x = and i64 %i.w, 4294967295
  %i.y = icmp eq i64 %i.x, 6
  br i1 %i.y, label %JS_ToInt64Sat.exit.thread131, label %js_dup.exit.i

select.unfold:                                    ; preds = %bb.g, %bb.d
  %.sink.i.i.ph = phi i64 [ %i.p, %bb.d ], [ %i.t, %bb.g ] ; 3 uses
  %i.z = icmp slt i64 %.sink.i.i.ph, 0
  br i1 %i.z, label %.thread119, label %.thread123

.thread119:                                       ; preds = %bb.f, %select.unfold
  %.sink.i.i.ph121 = phi i64 [ %.sink.i.i.ph, %select.unfold ], [ -9223372036854775808, %bb.f ]
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !240
  %i.ab = add nsw i64 %i.aa, %.sink.i.i.ph121     ; 3 uses
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %.thread123.thread, label %.thread123

.thread123:                                       ; preds = %bb.e, %select.unfold, %.thread119
  %.0112125 = phi i64 [ %i.ab, %.thread119 ], [ %.sink.i.i.ph, %select.unfold ], [ 0, %bb.e ] ; 14 uses
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !240 ; 8 uses
  %.not85 = icmp slt i64 %.0112125, %i.ad
  br i1 %.not85, label %bb.i, label %.thread123.thread

.thread123.thread:                                ; preds = %bb.g, %.thread123, %.thread119
  %.0112126 = phi i64 [ %.0112125, %.thread123 ], [ %i.ab, %.thread119 ], [ 9223372036854775807, %bb.g ]
  %i.ae = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.773, i64 noundef %.0112126) ; 0 uses
  br label %JS_ToInt64Sat.exit.thread131

bb.i:                                             ; preds = %.thread123
  %i.af = tail call fastcc { i64, i64 } @js_allocate_fast_array(ptr noundef %0, i64 noundef %i.ad) ; 2 uses
  %i.ag = extractvalue { i64, i64 } %i.af, 0      ; 8 uses
  %i.ah = extractvalue { i64, i64 } %i.af, 1      ; 8 uses
  %i.ai = and i64 %i.ah, 4294967295
  %i.aj = icmp eq i64 %i.ai, 6
  br i1 %i.aj, label %JS_ToInt64Sat.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = inttoptr i64 %i.ag to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !218 ; 5 uses
  %i.an = and i64 %i.d, 4294967295
  %i.ao = icmp eq i64 %i.an, 4294967295
  br i1 %i.ao, label %bb.k, label %js_get_fast_array.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ap = inttoptr i64 %i.c to ptr                ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 18
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !276
  %i.as = icmp eq i16 %i.ar, 2
  br i1 %i.as, label %bb.l, label %js_get_fast_array.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.au = load i16, ptr %i.at, align 8
  %i.av = and i16 %i.au, 16
  %.not.i = icmp eq i16 %i.av, 0
  br i1 %.not.i, label %js_get_fast_array.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !218
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !218 ; 6 uses
  %i.ba = zext i32 %i.ax to i64
  %i.bb = icmp eq i64 %i.ad, %i.ba
  br i1 %i.bb, label %.preheader, label %js_get_fast_array.exit.thread

.preheader:                                       ; preds = %bb.m
  %.not159 = icmp eq i64 %.0112125, 0
  br i1 %.not159, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %xtraiter = and i64 %.0112125, 1
  %i.bc = icmp eq i64 %.0112125, 1
  br i1 %i.bc, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.0112125, 9223372036854775806
  br label %.lr.ph

.lr.ph:                                           ; preds = %js_dup.exit.1, %.lr.ph.preheader.new
  %.0147 = phi ptr [ %i.am, %.lr.ph.preheader.new ], [ %i.ca, %js_dup.exit.1 ] ; 5 uses
  %.077146 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bz, %js_dup.exit.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %js_dup.exit.1 ]
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.077146 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = icmp ugt i32 %i.bh, -10
  br i1 %i.bi, label %bb.n, label %js_dup.exit

bb.n:                                             ; preds = %.lr.ph
  %i.bj = inttoptr i64 %i.be to ptr
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -4 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !191
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !191
  br label %js_dup.exit

js_dup.exit:                                      ; preds = %.lr.ph, %bb.n
  store i64 %i.be, ptr %.0147, align 8, !tbaa !218
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0147, i64 8
  store i64 %i.bg, ptr %.sroa.47.0..sroa_idx, align 8, !tbaa !240
  %i.bn = getelementptr inbounds nuw i8, ptr %.0147, i64 16
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.077146 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i64, ptr %i.bp, align 8            ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bs = load i64, ptr %i.br, align 8            ; 2 uses
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = icmp ugt i32 %i.bt, -10
  br i1 %i.bu, label %bb.o, label %js_dup.exit.1

bb.o:                                             ; preds = %js_dup.exit
  %i.bv = inttoptr i64 %i.bq to ptr
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !191
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !191
  br label %js_dup.exit.1

js_dup.exit.1:                                    ; preds = %bb.o, %js_dup.exit
  store i64 %i.bq, ptr %i.bn, align 8, !tbaa !218
  %.sroa.47.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.0147, i64 24
  store i64 %i.bs, ptr %.sroa.47.0..sroa_idx.1, align 8, !tbaa !240
  %i.bz = add nuw nsw i64 %.077146, 2             ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0147, i64 32 ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !2132

._crit_edge.loopexit.unr-lcssa:                   ; preds = %js_dup.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0147.epil.init = phi ptr [ %i.am, %.lr.ph.preheader ], [ %i.ca, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.077146.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bz, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod198 = trunc i64 %.0112125 to i1
  tail call void @llvm.assume(i1 %lcmp.mod198)
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.077146.epil.init ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8            ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load i64, ptr %i.cd, align 8            ; 2 uses
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = icmp ugt i32 %i.cf, -10
  br i1 %i.cg, label %bb.p, label %js_dup.exit.epil

bb.p:                                             ; preds = %.lr.ph.epil.preheader
  %i.ch = inttoptr i64 %i.cc to ptr
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !191
  %i.ck = add nsw i32 %i.cj, 1
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !191
  br label %js_dup.exit.epil

js_dup.exit.epil:                                 ; preds = %bb.p, %.lr.ph.epil.preheader
  store i64 %i.cc, ptr %.0147.epil.init, align 8, !tbaa !218
  %.sroa.47.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %.0147.epil.init, i64 8
  store i64 %i.ce, ptr %.sroa.47.0..sroa_idx.epil, align 8, !tbaa !240
  %i.cl = getelementptr inbounds nuw i8, ptr %.0147.epil.init, i64 16
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %js_dup.exit.epil
  %.lcssa193 = phi ptr [ %i.ca, %._crit_edge.loopexit.unr-lcssa ], [ %i.cl, %js_dup.exit.epil ]
  %i.cm = add nuw nsw i64 %.0112125, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.077.lcssa = phi i64 [ 1, %.preheader ], [ %i.cm, %._crit_edge.loopexit ] ; 4 uses
  %.0.lcssa = phi ptr [ %i.am, %.preheader ], [ %.lcssa193, %._crit_edge.loopexit ] ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.co = load i64, ptr %i.cn, align 8            ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cq = load i64, ptr %i.cp, align 8            ; 2 uses
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = icmp ugt i32 %i.cr, -10
  br i1 %i.cs, label %bb.q, label %js_dup.exit90

bb.q:                                             ; preds = %._crit_edge
  %i.ct = inttoptr i64 %i.co to ptr
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -4 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !191
  %i.cw = add nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !191
  br label %js_dup.exit90

js_dup.exit90:                                    ; preds = %._crit_edge, %bb.q
  store i64 %i.co, ptr %.0.lcssa, align 8, !tbaa !218
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8
  store i64 %i.cq, ptr %.sroa.45.0..sroa_idx, align 8, !tbaa !240
  %i.cx = icmp slt i64 %.077.lcssa, %i.ad
  br i1 %i.cx, label %.lr.ph152.preheader, label %JS_ToInt64Sat.exit.thread131

.lr.ph152.preheader:                              ; preds = %js_dup.exit90
  %i.cy = add i64 %i.ad, -2
  %i.cz = sub i64 %.0112125, %i.ad
  %i.da = and i64 %i.cz, 1
  %lcmp.mod200.not.not = icmp eq i64 %i.da, 0
  br i1 %lcmp.mod200.not.not, label %.lr.ph152.prol, label %.lr.ph152.prol.loopexit

.lr.ph152.prol:                                   ; preds = %.lr.ph152.preheader
  %.1.prol = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16 ; 2 uses
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.077.lcssa ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8            ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.de = load i64, ptr %i.dd, align 8            ; 2 uses
  %i.df = trunc i64 %i.de to i32
  %i.dg = icmp ugt i32 %i.df, -10
  br i1 %i.dg, label %bb.r, label %js_dup.exit93.prol

bb.r:                                             ; preds = %.lr.ph152.prol
  %i.dh = inttoptr i64 %i.dc to ptr
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 -4 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !191
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !191
  br label %js_dup.exit93.prol

js_dup.exit93.prol:                               ; preds = %bb.r, %.lr.ph152.prol
  store i64 %i.dc, ptr %.1.prol, align 8, !tbaa !218
  %.sroa.43.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 24
  store i64 %i.de, ptr %.sroa.43.0..sroa_idx.prol, align 8, !tbaa !240
  %.178.prol = add nuw nsw i64 %.077.lcssa, 1
  br label %.lr.ph152.prol.loopexit

.lr.ph152.prol.loopexit:                          ; preds = %js_dup.exit93.prol, %.lr.ph152.preheader
  %.178151.unr = phi i64 [ %.077.lcssa, %.lr.ph152.preheader ], [ %.178.prol, %js_dup.exit93.prol ]
  %.0.pn150.unr = phi ptr [ %.0.lcssa, %.lr.ph152.preheader ], [ %.1.prol, %js_dup.exit93.prol ]
  %i.dl = icmp eq i64 %i.cy, %.0112125
  br i1 %i.dl, label %JS_ToInt64Sat.exit.thread131, label %.lr.ph152

.lr.ph152:                                        ; preds = %.lr.ph152.prol.loopexit, %js_dup.exit93.1
  %.178151 = phi i64 [ %.178.1, %js_dup.exit93.1 ], [ %.178151.unr, %.lr.ph152.prol.loopexit ] ; 3 uses
  %.0.pn150 = phi ptr [ %.1.1, %js_dup.exit93.1 ], [ %.0.pn150.unr, %.lr.ph152.prol.loopexit ] ; 4 uses
  %.1 = getelementptr inbounds nuw i8, ptr %.0.pn150, i64 16
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.178151 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8            ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dp = load i64, ptr %i.do, align 8            ; 2 uses
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = icmp ugt i32 %i.dq, -10
  br i1 %i.dr, label %bb.s, label %js_dup.exit93

bb.s:                                             ; preds = %.lr.ph152
  %i.ds = inttoptr i64 %i.dn to ptr
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -4 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !191
  %i.dv = add nsw i32 %i.du, 1
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !191
  br label %js_dup.exit93

js_dup.exit93:                                    ; preds = %.lr.ph152, %bb.s
  store i64 %i.dn, ptr %.1, align 8, !tbaa !218
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.pn150, i64 24
  store i64 %i.dp, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !240
  %.1.1 = getelementptr inbounds nuw i8, ptr %.0.pn150, i64 32 ; 2 uses
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.178151 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load i64, ptr %i.dx, align 8            ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.ea = load i64, ptr %i.dz, align 8            ; 2 uses
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = icmp ugt i32 %i.eb, -10
  br i1 %i.ec, label %bb.t, label %js_dup.exit93.1

bb.t:                                             ; preds = %js_dup.exit93
  %i.ed = inttoptr i64 %i.dy to ptr
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -4 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !191
  %i.eg = add nsw i32 %i.ef, 1
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !191
  br label %js_dup.exit93.1

js_dup.exit93.1:                                  ; preds = %bb.t, %js_dup.exit93
  store i64 %i.dy, ptr %.1.1, align 8, !tbaa !218
  %.sroa.43.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.0.pn150, i64 40
  store i64 %i.ea, ptr %.sroa.43.0..sroa_idx.1, align 8, !tbaa !240
  %.178.1 = add nuw nsw i64 %.178151, 2           ; 2 uses
  %exitcond169.not.1 = icmp eq i64 %.178.1, %i.ad
  br i1 %exitcond169.not.1, label %JS_ToInt64Sat.exit.thread131, label %.lr.ph152, !llvm.loop !2133

js_get_fast_array.exit.thread:                    ; preds = %bb.k, %bb.l, %bb.j, %bb.m
  %.not160 = icmp eq i64 %.0112125, 0
  br i1 %.not160, label %._crit_edge156, label %.lr.ph155

.lr.ph155:                                        ; preds = %js_get_fast_array.exit.thread, %bb.u
  %.2154 = phi ptr [ %i.ek, %bb.u ], [ %i.am, %js_get_fast_array.exit.thread ] ; 2 uses
  %.279153 = phi i64 [ %i.ej, %bb.u ], [ 0, %js_get_fast_array.exit.thread ] ; 2 uses
  %i.eh = tail call fastcc i32 @JS_TryGetPropertyInt64(ptr noundef %0, i64 %i.c, i64 %i.d, i64 noundef %.279153, ptr noundef %.2154)
  %i.ei = icmp eq i32 %i.eh, -1
  br i1 %i.ei, label %JS_ToInt64Sat.exit, label %bb.u

bb.u:                                             ; preds = %.lr.ph155
  %i.ej = add nuw nsw i64 %.279153, 1             ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.2154, i64 16 ; 2 uses
  %exitcond170.not = icmp eq i64 %i.ej, %.0112125
  br i1 %exitcond170.not, label %._crit_edge156, label %.lr.ph155, !llvm.loop !2134

._crit_edge156:                                   ; preds = %bb.u, %js_get_fast_array.exit.thread
  %.2.lcssa = phi ptr [ %i.am, %js_get_fast_array.exit.thread ], [ %i.ek, %bb.u ] ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.em = load i64, ptr %i.el, align 8            ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.eo = load i64, ptr %i.en, align 8            ; 2 uses
  %i.ep = trunc i64 %i.eo to i32
  %i.eq = icmp ugt i32 %i.ep, -10
  br i1 %i.eq, label %bb.v, label %js_dup.exit96

bb.v:                                             ; preds = %._crit_edge156
  %i.er = inttoptr i64 %i.em to ptr
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -4 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !191
  %i.eu = add nsw i32 %i.et, 1
  store i32 %i.eu, ptr %i.es, align 4, !tbaa !191
  br label %js_dup.exit96

js_dup.exit96:                                    ; preds = %._crit_edge156, %bb.v
  store i64 %i.em, ptr %.2.lcssa, align 8, !tbaa !218
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 8
  store i64 %i.eo, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !240
  %.380187 = add nsw i64 %i.ad, -1                ; 2 uses
  %exitcond171.not188 = icmp eq i64 %.0112125, %.380187
  br i1 %exitcond171.not188, label %JS_ToInt64Sat.exit.thread131, label %.lr.ph190

bb.w:                                             ; preds = %.lr.ph190
  %exitcond171.not = icmp eq i64 %.380, %.380187
  br i1 %exitcond171.not, label %JS_ToInt64Sat.exit.thread131, label %.lr.ph190, !llvm.loop !2135

.lr.ph190:                                        ; preds = %js_dup.exit96, %bb.w
  %.2.pn190 = phi ptr [ %.3, %bb.w ], [ %.2.lcssa, %js_dup.exit96 ]
  %.380189 = phi i64 [ %.380, %bb.w ], [ %.0112125, %js_dup.exit96 ]
  %.380 = add nuw nsw i64 %.380189, 1             ; 3 uses
  %.3 = getelementptr inbounds nuw i8, ptr %.2.pn190, i64 16 ; 2 uses
  %i.ev = tail call fastcc i32 @JS_TryGetPropertyInt64(ptr noundef %0, i64 %i.c, i64 %i.d, i64 noundef %.380, ptr noundef nonnull %.3)
  %i.ew = icmp eq i32 %i.ev, -1
  br i1 %i.ew, label %JS_ToInt64Sat.exit, label %bb.w, !llvm.loop !2135

JS_ToInt64Sat.exit.thread131:                     ; preds = %js_dup.exit.i, %bb.h, %.lr.ph152.prol.loopexit, %js_dup.exit93.1, %bb.w, %js_dup.exit96, %js_dup.exit90, %bb.a, %.thread123.thread
  %.ph = phi i64 [ %i.ag, %js_dup.exit90 ], [ %i.ag, %js_dup.exit96 ], [ 0, %bb.a ], [ 0, %.thread123.thread ], [ %i.ag, %.lr.ph152.prol.loopexit ], [ %i.ag, %bb.w ], [ %i.ag, %js_dup.exit93.1 ], [ 0, %bb.h ], [ 0, %js_dup.exit.i ]
  %.sroa.476.0.ph = phi i64 [ %i.ah, %js_dup.exit90 ], [ %i.ah, %js_dup.exit96 ], [ 6, %bb.a ], [ 6, %.thread123.thread ], [ %i.ah, %.lr.ph152.prol.loopexit ], [ %i.ah, %bb.w ], [ %i.ah, %js_dup.exit93.1 ], [ 6, %bb.h ], [ 6, %js_dup.exit.i ]
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %JS_FreeValue.exit

JS_ToInt64Sat.exit:                               ; preds = %.lr.ph155, %.lr.ph190, %bb.i
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !232
  %i.fa = trunc i64 %i.ah to i32
  %i.fb = icmp ugt i32 %i.fa, -10
  br i1 %i.fb, label %bb.x, label %JS_FreeValue.exit

bb.x:                                             ; preds = %JS_ToInt64Sat.exit
  %i.fc = inttoptr i64 %i.ag to ptr
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 -4 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !191 ; 2 uses
  %i.ff = add nsw i32 %i.fe, -1
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !191
  %i.fg = icmp slt i32 %i.fe, 2
  br i1 %i.fg, label %bb.y, label %JS_FreeValue.exit

bb.y:                                             ; preds = %bb.x
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ez, i64 %i.ag, i64 %i.ah), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %JS_ToInt64Sat.exit.thread131, %JS_ToInt64Sat.exit, %bb.x, %bb.y
  %i.fh = phi ptr [ %i.ex, %JS_ToInt64Sat.exit.thread131 ], [ %i.ey, %JS_ToInt64Sat.exit ], [ %i.ey, %bb.x ], [ %i.ey, %bb.y ]
  %.sroa.476.0135 = phi i64 [ %.sroa.476.0.ph, %JS_ToInt64Sat.exit.thread131 ], [ 6, %JS_ToInt64Sat.exit ], [ 6, %bb.x ], [ 6, %bb.y ]
  %i.fi = phi i64 [ %.ph, %JS_ToInt64Sat.exit.thread131 ], [ 0, %JS_ToInt64Sat.exit ], [ 0, %bb.x ], [ 0, %bb.y ]
  %i.fj = load ptr, ptr %i.fh, align 8, !tbaa !232
  %i.fk = trunc i64 %i.d to i32
  %i.fl = icmp ugt i32 %i.fk, -10
  br i1 %i.fl, label %bb.z, label %JS_FreeValue.exit97

bb.z:                                             ; preds = %JS_FreeValue.exit
  %i.fm = inttoptr i64 %i.c to ptr
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 -4 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !191 ; 2 uses
  %i.fp = add nsw i32 %i.fo, -1
  store i32 %i.fp, ptr %i.fn, align 4, !tbaa !191
  %i.fq = icmp slt i32 %i.fo, 2
  br i1 %i.fq, label %bb.aa, label %JS_FreeValue.exit97

bb.aa:                                            ; preds = %bb.z
  tail call fastcc void @js_free_value_rt(ptr noundef %i.fj, i64 %i.c, i64 %i.d), !inline_history !291
  br label %JS_FreeValue.exit97

JS_FreeValue.exit97:                              ; preds = %JS_FreeValue.exit, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.fi, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.476.0135, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_array_concat(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %5 = alloca %struct.JSValue, align 8            ; 5 uses
  %6 = alloca %struct.JSValue, align 8            ; 6 uses
  %7 = alloca %struct.JSValue, align 8            ; 6 uses
  %8 = alloca %struct.JSValue, align 16           ; 4 uses
  %9 = alloca %struct.JSValue, align 16           ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.b = tail call { i64, i64 } @JS_ToObject(ptr noundef %0, i64 %1, i64 %2) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 5 uses
  %i.d = extractvalue { i64, i64 } %i.b, 1        ; 6 uses
  %i.e = and i64 %i.d, 4294967295
  %i.f = icmp eq i64 %i.e, 6
  br i1 %i.f, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %JS_FreeValue.exit122

bb.b:                                             ; preds = %bb.a
  %i.h = tail call fastcc { i64, i64 } @JS_ArraySpeciesCreate(ptr noundef %0, i64 %i.c, i64 %i.d, i64 0, i64 0) ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0        ; 9 uses
  %i.j = extractvalue { i64, i64 } %i.h, 1        ; 10 uses
  %i.k = and i64 %i.j, 4294967295
  %i.l = icmp eq i64 %i.k, 6
  br i1 %i.l, label %JS_isConcatSpreadable.exit.thread126, label %.preheader137

.preheader137:                                    ; preds = %bb.b
  %i.m = icmp sgt i32 %3, -1
  br i1 %i.m, label %.lr.ph148, label %._crit_edge

.lr.ph148:                                        ; preds = %.preheader137
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph148, %.loopexit
  %.0111147 = phi i64 [ 0, %.lr.ph148 ], [ %.2, %.loopexit ] ; 8 uses
  %.0112146 = phi i32 [ -1, %.lr.ph148 ], [ %i.bg, %.loopexit ] ; 3 uses
  %i.r = icmp slt i32 %.0112146, 0
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = zext nneg i32 %.0112146 to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.s ; 2 uses
  %.sroa.028.0.copyload32 = load i64, ptr %i.t, align 8, !tbaa !218
  %.sroa.8.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.8.0.copyload34 = load i64, ptr %.sroa.8.0..sroa_idx33, align 8, !tbaa !240
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.028.0 = phi i64 [ %.sroa.028.0.copyload32, %bb.d ], [ %i.c, %bb.c ] ; 7 uses
  %.sroa.8.0 = phi i64 [ %.sroa.8.0.copyload34, %bb.d ], [ %i.d, %bb.c ] ; 7 uses
  %i.u = and i64 %.sroa.8.0, 4294967295
  %i.v = icmp eq i64 %i.u, 4294967295
  br i1 %i.v, label %bb.f, label %JS_isConcatSpreadable.exit.thread.thread

bb.f:                                             ; preds = %bb.e
  %i.w = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %.sroa.028.0, i64 %.sroa.8.0, i32 noundef 235, i64 %.sroa.028.0, i64 %.sroa.8.0, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 1        ; 2 uses
  %trunc.i = trunc i64 %i.x to i32
  switch i32 %trunc.i, label %bb.g [
    i32 6, label %JS_isConcatSpreadable.exit.thread126
    i32 3, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.y = extractvalue { i64, i64 } %i.w, 0
  %i.z = tail call fastcc i32 @JS_ToBoolFree(ptr noundef %0, i64 %i.y, i64 %i.x)
  br label %JS_isConcatSpreadable.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = inttoptr i64 %.sroa.028.0 to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 18
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !276 ; 2 uses
  %i.ad = icmp eq i16 %i.ac, 51
  br i1 %i.ad, label %bb.i, label %bb.j, !prof !192

bb.i:                                             ; preds = %bb.h
  %i.ae = tail call fastcc i32 @js_proxy_isArray(ptr noundef %0, i64 %.sroa.028.0, i64 %.sroa.8.0), !inline_history !100
  br label %JS_isConcatSpreadable.exit

bb.j:                                             ; preds = %bb.h
  %i.af = icmp eq i16 %i.ac, 2
  %i.ag = zext i1 %i.af to i32
  br label %JS_isConcatSpreadable.exit.thread

JS_isConcatSpreadable.exit:                       ; preds = %bb.g, %bb.i
  %.0.i = phi i32 [ %i.ae, %bb.i ], [ %i.z, %bb.g ] ; 2 uses
  %i.ah = icmp slt i32 %.0.i, 0
  br i1 %i.ah, label %JS_isConcatSpreadable.exit.thread126, label %JS_isConcatSpreadable.exit.thread

JS_isConcatSpreadable.exit.thread:                ; preds = %bb.j, %JS_isConcatSpreadable.exit
  %.0.i125 = phi i32 [ %.0.i, %JS_isConcatSpreadable.exit ], [ %i.ag, %bb.j ]
  %.not = icmp eq i32 %.0.i125, 0
  br i1 %.not, label %JS_isConcatSpreadable.exit.thread.thread, label %bb.k

bb.k:                                             ; preds = %JS_isConcatSpreadable.exit.thread
  %i.ai = call fastcc i32 @js_get_length64(ptr noundef %0, ptr noundef nonnull %i.a, i64 %.sroa.028.0, i64 %.sroa.8.0)
  %.not115 = icmp eq i32 %i.ai, 0
  br i1 %.not115, label %bb.l, label %JS_isConcatSpreadable.exit.thread126

bb.l:                                             ; preds = %bb.k
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !240 ; 3 uses
  %i.ak = add nsw i64 %i.aj, %.0111147
  %i.al = icmp sgt i64 %i.ak, 9007199254740991
  br i1 %i.al, label %JS_isConcatSpreadable.exit.thread126.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.l
  %i.am = icmp sgt i64 %i.aj, 0
  br i1 %i.am, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.o
  %.0145 = phi i64 [ %i.av, %bb.o ], [ 0, %.preheader ] ; 2 uses
  %.1144 = phi i64 [ %i.aw, %bb.o ], [ %.0111147, %.preheader ] ; 4 uses
  %i.an = call fastcc i32 @JS_TryGetPropertyInt64(ptr noundef %0, i64 %.sroa.028.0, i64 %.sroa.8.0, i64 noundef %.0145, ptr noundef nonnull %9) ; 2 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %JS_isConcatSpreadable.exit.thread126, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %.not116 = icmp eq i32 %i.an, 0
  br i1 %.not116, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.ap = load <2 x i64>, ptr %9, align 16
  store <2 x i64> %i.ap, ptr %8, align 16
  %i.aq = add i64 %.1144, 2147483648
  %or.cond.i.i = icmp ult i64 %i.aq, 4294967296   ; 2 uses
  %.sroa.0.0.insert.ext.i.i.i = and i64 %.1144, 4294967295
  %i.ar = sitofp i64 %.1144 to double
  %i.as = bitcast double %i.ar to i64
  %.sroa.0.0.insert.ext.i.pn.i.i = select i1 %or.cond.i.i, i64 %.sroa.0.0.insert.ext.i.i.i, i64 %i.as
  %.sroa.3.0.i.i = select i1 %or.cond.i.i, i64 0, i64 8
  %i.at = tail call i32 @JS_DefinePropertyValueValue(ptr noundef %0, i64 %i.i, i64 %i.j, i64 %.sroa.0.0.insert.ext.i.pn.i.i, i64 %.sroa.3.0.i.i, ptr noundef nonnull byval(%struct.JSValue) align 8 %8, i32 noundef 16391), !inline_history !827
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.au = icmp slt i32 %i.at, 0
end_hunk_3
begin_hunk_4_@js_typed_array_join:bb.a
  br i1 %i.fd, label %bb.an, label %JS_ToLocaleStringFree.exit.peel

bb.an:                                            ; preds = %bb.am
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ex, i64 %i.es, i64 %i.et) #51, !inline_history !666
  br label %JS_ToLocaleStringFree.exit.peel

JS_ToLocaleStringFree.exit.peel:                  ; preds = %bb.an, %bb.am, %bb.al, %bb.ak
  %.pn.i.peel = phi { i64, i64 } [ %i.ev, %bb.ak ], [ %i.ew, %bb.al ], [ %i.ew, %bb.am ], [ %i.ew, %bb.an ] ; 2 uses
  %i.fe = extractvalue { i64, i64 } %.pn.i.peel, 0
  %i.ff = extractvalue { i64, i64 } %.pn.i.peel, 1
  %i.fg = call fastcc i32 @string_buffer_concat_value_free(ptr noundef nonnull %6, i64 %i.fe, i64 %i.ff)
  %.not87.peel = icmp eq i32 %i.fg, 0
  br i1 %.not87.peel, label %bb.ao, label %.loopexit

bb.ao:                                            ; preds = %JS_ToLocaleStringFree.exit.peel, %bb.ai, %bb.ai
  %exitcond.peel.not = icmp eq i32 %.074, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph.split.split.peel.next

bb.ap:                                            ; preds = %.lr.ph.split
  switch i32 %trunc.us110.peel, label %bb.aq [
    i32 2, label %bb.av
    i32 3, label %bb.av
    i32 6, label %.loopexit
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.fh = and i64 %i.et, 4294967294
  %switch.i.us.peel = icmp eq i64 %i.fh, 2
  br i1 %switch.i.us.peel, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fi = tail call fastcc { i64, i64 } @JS_InvokeFree(ptr noundef nonnull %0, i64 %i.es, i64 %i.et, i32 noundef 60, i32 noundef 0, ptr noundef null)
  br label %JS_ToLocaleStringFree.exit.us.peel

bb.as:                                            ; preds = %bb.aq
  %i.fj = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef nonnull %0, i64 %i.es, i64 %i.et, i32 noundef 0) #51, !inline_history !665 ; 3 uses
  %i.fk = load ptr, ptr %i.bp, align 8, !tbaa !232
  %i.fl = icmp ugt i32 %trunc.us110.peel, -10
  br i1 %i.fl, label %bb.at, label %JS_ToLocaleStringFree.exit.us.peel

bb.at:                                            ; preds = %bb.as
  %i.fm = inttoptr i64 %i.es to ptr
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 -4 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !191 ; 2 uses
  %i.fp = add nsw i32 %i.fo, -1
  store i32 %i.fp, ptr %i.fn, align 4, !tbaa !191
  %i.fq = icmp slt i32 %i.fo, 2
  br i1 %i.fq, label %bb.au, label %JS_ToLocaleStringFree.exit.us.peel

bb.au:                                            ; preds = %bb.at
  tail call fastcc void @js_free_value_rt(ptr noundef %i.fk, i64 %i.es, i64 %i.et) #51, !inline_history !666
  br label %JS_ToLocaleStringFree.exit.us.peel

JS_ToLocaleStringFree.exit.us.peel:               ; preds = %bb.au, %bb.at, %bb.as, %bb.ar
  %.pn.i.us.peel = phi { i64, i64 } [ %i.fi, %bb.ar ], [ %i.fj, %bb.as ], [ %i.fj, %bb.at ], [ %i.fj, %bb.au ] ; 2 uses
  %i.fr = extractvalue { i64, i64 } %.pn.i.us.peel, 0
  %i.fs = extractvalue { i64, i64 } %.pn.i.us.peel, 1
  %i.ft = call fastcc i32 @string_buffer_concat_value_free(ptr noundef nonnull %6, i64 %i.fr, i64 %i.fs)
  %.not87.us111.peel = icmp eq i32 %i.ft, 0
  br i1 %.not87.us111.peel, label %bb.av, label %.loopexit

bb.av:                                            ; preds = %JS_ToLocaleStringFree.exit.us.peel, %bb.ap, %bb.ap
  %exitcond132.peel.not = icmp eq i32 %.074, 1
  br i1 %exitcond132.peel.not, label %._crit_edge, label %.lr.ph.split.split.us.peel.next

.lr.ph.split.split.us.peel.next:                  ; preds = %bb.av, %bb.bc
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %bb.bc ], [ 1, %bb.av ] ; 2 uses
  %i.fu = call fastcc i32 @string_buffer_putc8(ptr noundef nonnull %6, i32 noundef %.1)
  %.not85.us109 = icmp eq i32 %i.fu, 0
  br i1 %.not85.us109, label %bb.aw, label %.loopexit

bb.aw:                                            ; preds = %.lr.ph.split.split.us.peel.next
  %i.fv = tail call { i64, i64 } @JS_GetPropertyInt64(ptr noundef nonnull %0, i64 %1, i64 %2, i64 noundef %indvars.iv128), !inline_history !481 ; 2 uses
  %i.fw = extractvalue { i64, i64 } %i.fv, 0      ; 4 uses
  %i.fx = extractvalue { i64, i64 } %i.fv, 1      ; 5 uses
  %trunc.us110 = trunc i64 %i.fx to i32           ; 2 uses
  switch i32 %trunc.us110, label %bb.ax [
    i32 2, label %bb.bc
    i32 3, label %bb.bc
    i32 6, label %.loopexit
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.fy = and i64 %i.fx, 4294967294
  %switch.i.us = icmp eq i64 %i.fy, 2
  br i1 %switch.i.us, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fz = tail call fastcc { i64, i64 } @JS_InvokeFree(ptr noundef nonnull %0, i64 %i.fw, i64 %i.fx, i32 noundef 60, i32 noundef 0, ptr noundef null)
  br label %JS_ToLocaleStringFree.exit.us

bb.az:                                            ; preds = %bb.ax
  %i.ga = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef nonnull %0, i64 %i.fw, i64 %i.fx, i32 noundef 0) #51, !inline_history !665 ; 3 uses
  %i.gb = load ptr, ptr %i.bp, align 8, !tbaa !232
  %i.gc = icmp ugt i32 %trunc.us110, -10
  br i1 %i.gc, label %bb.ba, label %JS_ToLocaleStringFree.exit.us

bb.ba:                                            ; preds = %bb.az
  %i.gd = inttoptr i64 %i.fw to ptr
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 -4 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !191 ; 2 uses
  %i.gg = add nsw i32 %i.gf, -1
  store i32 %i.gg, ptr %i.ge, align 4, !tbaa !191
  %i.gh = icmp slt i32 %i.gf, 2
  br i1 %i.gh, label %bb.bb, label %JS_ToLocaleStringFree.exit.us

bb.bb:                                            ; preds = %bb.ba
  tail call fastcc void @js_free_value_rt(ptr noundef %i.gb, i64 %i.fw, i64 %i.fx) #51, !inline_history !666
  br label %JS_ToLocaleStringFree.exit.us

JS_ToLocaleStringFree.exit.us:                    ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay
  %.pn.i.us = phi { i64, i64 } [ %i.fz, %bb.ay ], [ %i.ga, %bb.az ], [ %i.ga, %bb.ba ], [ %i.ga, %bb.bb ] ; 2 uses
  %i.gi = extractvalue { i64, i64 } %.pn.i.us, 0
  %i.gj = extractvalue { i64, i64 } %.pn.i.us, 1
  %i.gk = call fastcc i32 @string_buffer_concat_value_free(ptr noundef nonnull %6, i64 %i.gi, i64 %i.gj)
  %.not87.us111 = icmp eq i32 %i.gk, 0
  br i1 %.not87.us111, label %bb.bc, label %.loopexit

bb.bc:                                            ; preds = %JS_ToLocaleStringFree.exit.us, %bb.aw, %bb.aw
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count143
  br i1 %exitcond132.not, label %._crit_edge, label %.lr.ph.split.split.us.peel.next, !llvm.loop !2248

.lr.ph.split.split.peel.next:                     ; preds = %bb.ao, %bb.bj
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bj ], [ 1, %bb.ao ] ; 2 uses
  %i.gl = load i64, ptr %.077, align 8
  %i.gm = trunc i64 %i.gl to i32
  %i.gn = and i32 %i.gm, 2147483647
  %i.go = call fastcc i32 @string_buffer_concat(ptr noundef nonnull %6, ptr noundef nonnull %.077, i32 noundef 0, i32 noundef %i.gn)
  %.not84 = icmp eq i32 %i.go, 0
  br i1 %.not84, label %bb.bd, label %.loopexit

bb.bd:                                            ; preds = %.lr.ph.split.split.peel.next
  %i.gp = tail call { i64, i64 } @JS_GetPropertyInt64(ptr noundef nonnull %0, i64 %1, i64 %2, i64 noundef %indvars.iv), !inline_history !481 ; 2 uses
  %i.gq = extractvalue { i64, i64 } %i.gp, 0      ; 4 uses
  %i.gr = extractvalue { i64, i64 } %i.gp, 1      ; 5 uses
  %trunc = trunc i64 %i.gr to i32                 ; 2 uses
  switch i32 %trunc, label %bb.be [
    i32 2, label %bb.bj
    i32 3, label %bb.bj
    i32 6, label %.loopexit
  ]

bb.be:                                            ; preds = %bb.bd
  %i.gs = and i64 %i.gr, 4294967294
  %switch.i = icmp eq i64 %i.gs, 2
  br i1 %switch.i, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.gt = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef nonnull %0, i64 %i.gq, i64 %i.gr, i32 noundef 0) #51, !inline_history !665 ; 3 uses
  %i.gu = load ptr, ptr %i.bp, align 8, !tbaa !232
  %i.gv = icmp ugt i32 %trunc, -10
  br i1 %i.gv, label %bb.bg, label %JS_ToLocaleStringFree.exit

bb.bg:                                            ; preds = %bb.bf
  %i.gw = inttoptr i64 %i.gq to ptr
  %i.gx = getelementptr inbounds i8, ptr %i.gw, i64 -4 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !191 ; 2 uses
  %i.gz = add nsw i32 %i.gy, -1
  store i32 %i.gz, ptr %i.gx, align 4, !tbaa !191
  %i.ha = icmp slt i32 %i.gy, 2
  br i1 %i.ha, label %bb.bh, label %JS_ToLocaleStringFree.exit

bb.bh:                                            ; preds = %bb.bg
  tail call fastcc void @js_free_value_rt(ptr noundef %i.gu, i64 %i.gq, i64 %i.gr) #51, !inline_history !666
  br label %JS_ToLocaleStringFree.exit

bb.bi:                                            ; preds = %bb.be
  %i.hb = tail call fastcc { i64, i64 } @JS_InvokeFree(ptr noundef nonnull %0, i64 %i.gq, i64 %i.gr, i32 noundef 60, i32 noundef 0, ptr noundef null)
  br label %JS_ToLocaleStringFree.exit

JS_ToLocaleStringFree.exit:                       ; preds = %bb.bf, %bb.bg, %bb.bh, %bb.bi
  %.pn.i = phi { i64, i64 } [ %i.hb, %bb.bi ], [ %i.gt, %bb.bf ], [ %i.gt, %bb.bg ], [ %i.gt, %bb.bh ] ; 2 uses
  %i.hc = extractvalue { i64, i64 } %.pn.i, 0
  %i.hd = extractvalue { i64, i64 } %.pn.i, 1
  %i.he = call fastcc i32 @string_buffer_concat_value_free(ptr noundef nonnull %6, i64 %i.hc, i64 %i.hd)
  %.not87 = icmp eq i32 %i.he, 0
  br i1 %.not87, label %bb.bj, label %.loopexit

bb.bj:                                            ; preds = %bb.bd, %bb.bd, %JS_ToLocaleStringFree.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count143
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split.peel.next, !llvm.loop !2249

._crit_edge:                                      ; preds = %bb.bj, %bb.bc, %bb.ah, %bb.ae, %bb.ao, %bb.av, %bb.y, %bb.ab, %string_buffer_init.exit
  %..i92 = tail call noundef i32 @llvm.smax.i32(i32 %.073, i32 1) ; 3 uses
  %i.hf = icmp slt i32 %..i92, %i.ar
  br i1 %i.hf, label %.lr.ph115, label %._crit_edge116

.lr.ph115:                                        ; preds = %._crit_edge
  %i.hg = icmp sgt i32 %.1, -1
  br i1 %i.hg, label %.lr.ph115.split.us, label %.lr.ph115.split

.lr.ph115.split.us:                               ; preds = %.lr.ph115, %bb.bk
  %.176113.us = phi i32 [ %i.hi, %bb.bk ], [ %..i92, %.lr.ph115 ]
  %i.hh = call fastcc i32 @string_buffer_putc8(ptr noundef nonnull %6, i32 noundef %.1)
  %.not82.us = icmp eq i32 %i.hh, 0
  br i1 %.not82.us, label %bb.bk, label %.loopexit

bb.bk:                                            ; preds = %.lr.ph115.split.us
  %i.hi = add nuw nsw i32 %.176113.us, 1          ; 2 uses
  %exitcond147.not = icmp eq i32 %i.hi, %i.ar
  br i1 %exitcond147.not, label %._crit_edge116, label %.lr.ph115.split.us, !llvm.loop !2250

.lr.ph115.split:                                  ; preds = %.lr.ph115, %bb.bl
  %.176113 = phi i32 [ %i.hn, %bb.bl ], [ %..i92, %.lr.ph115 ]
  %i.hj = load i64, ptr %.077, align 8
  %i.hk = trunc i64 %i.hj to i32
  %i.hl = and i32 %i.hk, 2147483647
  %i.hm = call fastcc i32 @string_buffer_concat(ptr noundef nonnull %6, ptr noundef nonnull %.077, i32 noundef 0, i32 noundef %i.hl)
  %.not81 = icmp eq i32 %i.hm, 0
  br i1 %.not81, label %bb.bl, label %.loopexit

bb.bl:                                            ; preds = %.lr.ph115.split
  %i.hn = add nuw nsw i32 %.176113, 1             ; 2 uses
  %exitcond146.not = icmp eq i32 %i.hn, %i.ar
  br i1 %exitcond146.not, label %._crit_edge116, label %.lr.ph115.split, !llvm.loop !2250

._crit_edge116:                                   ; preds = %bb.bl, %bb.bk, %._crit_edge
  %i.ho = load ptr, ptr %i.bp, align 8, !tbaa !232
  %i.hp = trunc i64 %.sroa.8.0 to i32
  %i.hq = icmp ugt i32 %i.hp, -10
  br i1 %i.hq, label %bb.bm, label %JS_FreeValue.exit

bb.bm:                                            ; preds = %._crit_edge116
  %i.hr = inttoptr i64 %.sroa.047.sroa.0.0 to ptr
  %i.hs = getelementptr inbounds i8, ptr %i.hr, i64 -4 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !191 ; 2 uses
  %i.hu = add nsw i32 %i.ht, -1
  store i32 %i.hu, ptr %i.hs, align 4, !tbaa !191
  %i.hv = icmp slt i32 %i.ht, 2
  br i1 %i.hv, label %bb.bn, label %JS_FreeValue.exit

bb.bn:                                            ; preds = %bb.bm
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ho, i64 %.sroa.047.sroa.0.0, i64 %.sroa.8.0), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %._crit_edge116, %bb.bm, %bb.bn
  %i.hw = call fastcc { i64, i64 } @string_buffer_end(ptr noundef nonnull %6) ; 2 uses
  %i.hx = extractvalue { i64, i64 } %i.hw, 0
  %i.hy = extractvalue { i64, i64 } %i.hw, 1
  br label %JS_FreeValue.exit93

.loopexit:                                        ; preds = %bb.bd, %JS_ToLocaleStringFree.exit, %.lr.ph.split.split.peel.next, %.lr.ph.split.split.us.peel.next, %bb.aw, %JS_ToLocaleStringFree.exit.us, %.lr.ph.split.us.split.peel.next, %bb.af, %bb.ag, %.lr.ph.split.us.split.us.peel.next, %bb.ac, %bb.ad, %.lr.ph115.split, %.lr.ph115.split.us, %bb.ai, %JS_ToLocaleStringFree.exit.peel, %bb.ap, %JS_ToLocaleStringFree.exit.us.peel, %bb.w, %bb.x, %bb.z, %bb.aa
  %i.hz = load ptr, ptr %6, align 8, !tbaa !644
  %i.ia = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !649
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !232
  tail call void @js_free_rt(ptr noundef %i.id, ptr noundef %i.ib)
  %i.ie = load ptr, ptr %i.bp, align 8, !tbaa !232
  %i.if = trunc i64 %.sroa.8.0 to i32
  %i.ig = icmp ugt i32 %i.if, -10
  br i1 %i.ig, label %bb.bo, label %JS_FreeValue.exit93

bb.bo:                                            ; preds = %.loopexit
  %i.ih = inttoptr i64 %.sroa.047.sroa.0.0 to ptr
  %i.ii = getelementptr inbounds i8, ptr %i.ih, i64 -4 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !191 ; 2 uses
  %i.ik = add nsw i32 %i.ij, -1
  store i32 %i.ik, ptr %i.ii, align 4, !tbaa !191
  %i.il = icmp slt i32 %i.ij, 2
  br i1 %i.il, label %bb.bp, label %JS_FreeValue.exit93

bb.bp:                                            ; preds = %bb.bo
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ie, i64 %.sroa.047.sroa.0.0, i64 %.sroa.8.0), !inline_history !291
  br label %JS_FreeValue.exit93

JS_FreeValue.exit93:                              ; preds = %bb.bp, %bb.bo, %.loopexit, %get_typed_array.exit.thread, %bb.g, %JS_FreeValue.exit, %typed_array_is_oob.exit.thread
  %.sroa.5.0 = phi i64 [ 0, %typed_array_is_oob.exit.thread ], [ 0, %get_typed_array.exit.thread ], [ %i.hx, %JS_FreeValue.exit ], [ 0, %bb.g ], [ 0, %.loopexit ], [ 0, %bb.bo ], [ 0, %bb.bp ]
  %.sroa.7.0 = phi i64 [ 6, %typed_array_is_oob.exit.thread ], [ 6, %get_typed_array.exit.thread ], [ %i.hy, %JS_FreeValue.exit ], [ 6, %bb.g ], [ 6, %.loopexit ], [ 6, %bb.bo ], [ 6, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.5.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.7.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_typed_array_indexOf(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 13 uses
  %6 = alloca %struct.JSBigIntBuf, align 4        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.b = and i64 %2, 4294967295
  %.not.i = icmp eq i64 %i.b, 4294967295
  br i1 %.not.i, label %bb.b, label %get_typed_array.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %1 to ptr                   ; 15 uses
  %i.d = getelementptr i8, ptr %i.c, i64 18       ; 6 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !276  ; 2 uses
  %i.f = add i16 %i.e, -22
  %i.g = icmp ult i16 %i.f, 12
  br i1 %i.g, label %get_typed_array.exit, label %get_typed_array.exit.thread

get_typed_array.exit.thread:                      ; preds = %bb.a, %bb.b
  %i.h = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.966) ; 0 uses
  br label %JS_ToInt32Sat.exit

get_typed_array.exit:                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !218  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !508
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !218  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i8, ptr %i.o, align 8, !tbaa !511
  %.not.i249 = icmp eq i8 %i.p, 0
  br i1 %.not.i249, label %bb.c, label %typed_array_is_oob.exit.thread

bb.c:                                             ; preds = %get_typed_array.exit
  %i.q = load i32, ptr %i.n, align 8, !tbaa !448  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !512  ; 2 uses
  %i.t = icmp ugt i32 %i.s, %i.q
  br i1 %i.t, label %typed_array_is_oob.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.v = load i8, ptr %i.u, align 8, !tbaa !513, !range !234, !noundef !235
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %.typed_array_is_oob.exit.thread293_crit_edge, label %bb.e

.typed_array_is_oob.exit.thread293_crit_edge:     ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !218
  br label %typed_array_is_oob.exit.thread293

bb.e:                                             ; preds = %bb.d
  %i.x = sext i32 %i.q to i64                     ; 2 uses
  %i.y = zext i32 %i.s to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !514
  %i.ab = zext i32 %i.aa to i64
  %i.ac = add nuw nsw i64 %i.ab, %i.y
  %i.ad = icmp sgt i64 %i.ac, %i.x
  br i1 %i.ad, label %typed_array_is_oob.exit.thread, label %typed_array_is_oob.exit

typed_array_is_oob.exit:                          ; preds = %bb.e
  %i.ae = zext nneg i16 %i.e to i64
  %i.af = getelementptr i8, ptr @typed_array_size_log2, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -22
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !218
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = shl nuw i32 1, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !218 ; 2 uses
  %i.am = zext i32 %i.al to i64
  %i.an = sext i32 %i.aj to i64
  %i.ao = mul nsw i64 %i.an, %i.am
  %i.ap = add nsw i64 %i.ao, %i.y
  %i.aq = icmp sgt i64 %i.ap, %i.x
  br i1 %i.aq, label %typed_array_is_oob.exit.thread, label %typed_array_is_oob.exit.thread293

typed_array_is_oob.exit.thread:                   ; preds = %bb.e, %bb.c, %get_typed_array.exit, %typed_array_is_oob.exit
  %i.ar = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.967), !inline_history !129 ; 0 uses
  br label %JS_ToInt32Sat.exit

typed_array_is_oob.exit.thread293:                ; preds = %.typed_array_is_oob.exit.thread293_crit_edge, %typed_array_is_oob.exit
  %i.as = phi i32 [ %.pre, %.typed_array_is_oob.exit.thread293_crit_edge ], [ %i.al, %typed_array_is_oob.exit ] ; 10 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 4 uses
  %i.au = icmp eq i32 %i.as, 0
  br i1 %i.au, label %JS_ToInt64Clamp.exit, label %bb.f

bb.f:                                             ; preds = %typed_array_is_oob.exit.thread293
  %.not230 = icmp eq i32 %5, 1                    ; 3 uses
  br i1 %.not230, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.av = add nsw i32 %i.as, -1                   ; 2 uses
  %i.aw = icmp sgt i32 %3, 1
  br i1 %i.aw, label %bb.h, label %JS_ToInt64Clamp.exit.thread305

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ay = sext i32 %i.av to i64                   ; 2 uses
  %i.az = sext i32 %i.as to i64
  %i.ba = load i64, ptr %i.ax, align 8            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bc = load i64, ptr %i.bb, align 8            ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = icmp ugt i32 %i.bd, -10
  br i1 %i.be, label %bb.i, label %js_dup.exit.i.preheader

bb.i:                                             ; preds = %bb.h
  %i.bf = inttoptr i64 %i.ba to ptr
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -4 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !191
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !191
  br label %js_dup.exit.i.preheader

js_dup.exit.i.preheader:                          ; preds = %bb.i, %bb.h
  br label %js_dup.exit.i

js_dup.exit.i:                                    ; preds = %js_dup.exit.i.preheader, %bb.n
  %.sroa.012.0.in.i.i = phi i64 [ %i.bq, %bb.n ], [ %i.ba, %js_dup.exit.i.preheader ] ; 3 uses
  %.sroa.6.0.i.i = phi i64 [ %i.br, %bb.n ], [ %i.bc, %js_dup.exit.i.preheader ] ; 2 uses
  %i.bj = trunc i64 %.sroa.6.0.i.i to i32
  switch i32 %i.bj, label %bb.n [
    i32 0, label %bb.j
    i32 1, label %bb.j
    i32 2, label %bb.j
    i32 3, label %bb.j
    i32 6, label %JS_ToInt32Sat.exit
    i32 8, label %bb.k
  ]

bb.j:                                             ; preds = %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i
  %sext.i.i = shl i64 %.sroa.012.0.in.i.i, 32
  %i.bk = ashr exact i64 %sext.i.i, 32
  br label %select.unfold.i

bb.k:                                             ; preds = %js_dup.exit.i
end_hunk_4
