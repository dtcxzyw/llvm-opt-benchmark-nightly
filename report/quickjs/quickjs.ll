Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 180
begin_hunk_0_@js_binary_logic_slow:bb.a
  %.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %1, i64 -8 ; 2 uses
  %.sroa.13.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !240 ; 8 uses
  %i.c = and i64 %.sroa.12.0.copyload, 4294967295
  %i.d = icmp eq i64 %i.c, 7
  %i.e = and i64 %.sroa.13.0.copyload, 4294967295
  %i.f = icmp eq i64 %i.e, 7
  %or.cond = select i1 %i.d, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %.sroa.082.sroa.0.0.extract.trunc = trunc i64 %.sroa.082.0.copyload251 to i32 ; 4 uses
  %.sroa.064.sroa.0.0.extract.trunc = trunc i64 %.sroa.064.0.copyload252 to i32 ; 11 uses
  switch i32 %2, label %bb.s [
    i32 161, label %bb.c
    i32 163, label %bb.d
    i32 162, label %bb.e
    i32 159, label %bb.f
    i32 158, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %.sroa.064.sroa.0.0.extract.trunc, %.sroa.082.sroa.0.0.extract.trunc
  br label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.h = or i32 %.sroa.064.sroa.0.0.extract.trunc, %.sroa.082.sroa.0.0.extract.trunc
  br label %bb.t

bb.e:                                             ; preds = %bb.b
  %i.i = xor i32 %.sroa.064.sroa.0.0.extract.trunc, %.sroa.082.sroa.0.0.extract.trunc
  br label %bb.t

bb.f:                                             ; preds = %bb.b
  %i.j = icmp sgt i32 %.sroa.064.sroa.0.0.extract.trunc, 31
  br i1 %i.j, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = icmp slt i32 %.sroa.064.sroa.0.0.extract.trunc, 0
  br i1 %i.k, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.l = icmp samesign ult i32 %.sroa.064.sroa.0.0.extract.trunc, -31
  br i1 %i.l, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = sub nsw i64 0, %.sroa.064.0.copyload252
  br label %bb.o

bb.j:                                             ; preds = %bb.g, %bb.n
  %.0128 = phi i32 [ %.sroa.064.sroa.0.0.extract.trunc, %bb.g ], [ %i.r, %bb.n ]
  %i.n = ashr i32 %.sroa.082.sroa.0.0.extract.trunc, %.0128
  br label %bb.t

bb.k:                                             ; preds = %bb.b
  %i.o = icmp sgt i32 %.sroa.064.sroa.0.0.extract.trunc, 31
  br i1 %i.o, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = icmp slt i32 %.sroa.064.sroa.0.0.extract.trunc, 0
  br i1 %i.p, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.q = icmp samesign ult i32 %.sroa.064.sroa.0.0.extract.trunc, -31
  br i1 %i.q, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.r = sub nsw i32 0, %.sroa.064.sroa.0.0.extract.trunc
  br label %bb.j

bb.o:                                             ; preds = %bb.l, %bb.i
  %.1129 = phi i64 [ %i.m, %bb.i ], [ %.sroa.064.0.copyload252, %bb.l ]
  %sext = shl i64 %.sroa.082.0.copyload251, 32
  %i.s = ashr exact i64 %sext, 32
  %i.t = and i64 %.1129, 4294967295
  %i.u = shl nsw i64 %i.s, %i.t                   ; 3 uses
  %i.v = add nsw i64 %i.u, 2147483648
  %i.w = icmp ult i64 %i.v, 4294967296
  br i1 %i.w, label %bb.p, label %bb.q, !prof !325

bb.p:                                             ; preds = %bb.o
  %i.x = trunc nsw i64 %i.u to i32
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.y = tail call fastcc ptr @js_bigint_new_di(ptr noundef %0, i64 noundef %i.u) ; 2 uses
  %.not149 = icmp eq ptr %i.y, null
  br i1 %.not149, label %JS_FreeValueRT.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr %i.y, ptr %i.a, align 8, !tbaa !218
  store i64 -9, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !240
  br label %.thread235

bb.s:                                             ; preds = %bb.b
  tail call void @abort() #50
  unreachable

bb.t:                                             ; preds = %bb.p, %bb.j, %bb.e, %bb.d, %bb.c
  %.0130 = phi i32 [ %i.g, %bb.c ], [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.x, %bb.p ], [ %i.n, %bb.j ]
  %.sroa.0.0.insert.ext.i = zext i32 %.0130 to i64
  store i64 %.sroa.0.0.insert.ext.i, ptr %i.a, align 8, !tbaa !218
  store i64 7, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !240
  br label %.thread235

bb.u:                                             ; preds = %bb.a
  %i.z = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.082.0.copyload251, i64 %.sroa.12.0.copyload, i32 noundef 1), !inline_history !122 ; 2 uses
  %i.aa = extractvalue { i64, i64 } %i.z, 0       ; 5 uses
  %i.ab = extractvalue { i64, i64 } %i.z, 1       ; 7 uses
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = icmp eq i64 %i.ac, 6
  br i1 %i.ad, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !232
  %i.ag = trunc i64 %.sroa.13.0.copyload to i32
  %i.ah = icmp ugt i32 %i.ag, -10
  br i1 %i.ah, label %bb.w, label %JS_FreeValueRT.exit

bb.w:                                             ; preds = %bb.v
  %i.ai = inttoptr i64 %.sroa.064.0.copyload252 to ptr
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !191 ; 2 uses
  %i.al = add nsw i32 %i.ak, -1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !191
  %i.am = icmp slt i32 %i.ak, 2
  br i1 %i.am, label %bb.x, label %JS_FreeValueRT.exit

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @js_free_value_rt(ptr noundef %i.af, i64 %.sroa.064.0.copyload252, i64 %.sroa.13.0.copyload), !inline_history !370
  br label %JS_FreeValueRT.exit

bb.y:                                             ; preds = %bb.u
  %i.an = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.064.0.copyload252, i64 %.sroa.13.0.copyload, i32 noundef 1), !inline_history !122 ; 2 uses
  %i.ao = extractvalue { i64, i64 } %i.an, 0      ; 5 uses
  %i.ap = extractvalue { i64, i64 } %i.an, 1      ; 7 uses
  %i.aq = and i64 %i.ap, 4294967295
  %i.ar = icmp eq i64 %i.aq, 6
  br i1 %i.ar, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !232
  %i.au = trunc i64 %i.ab to i32
  %i.av = icmp ugt i32 %i.au, -10
  br i1 %i.av, label %bb.aa, label %JS_FreeValueRT.exit

bb.aa:                                            ; preds = %bb.z
  %i.aw = inttoptr i64 %i.aa to ptr
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !191 ; 2 uses
  %i.az = add nsw i32 %i.ay, -1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !191
  %i.ba = icmp slt i32 %i.ay, 2
  br i1 %i.ba, label %bb.ab, label %JS_FreeValueRT.exit

bb.ab:                                            ; preds = %bb.aa
  tail call fastcc void @js_free_value_rt(ptr noundef %i.at, i64 %i.aa, i64 %i.ab), !inline_history !370
  br label %JS_FreeValueRT.exit

bb.ac:                                            ; preds = %bb.y
  %i.bb = trunc i64 %i.ab to i32
  switch i32 %i.bb, label %.preheader475 [
    i32 -9, label %bb.ad
    i32 7, label %bb.ad
  ]

.preheader475:                                    ; preds = %bb.ad, %bb.ac
  br label %bb.bs

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  %i.bc = trunc i64 %i.ap to i32
  switch i32 %i.bc, label %.preheader475 [
    i32 -9, label %.thread
    i32 7, label %.thread
  ]

.thread:                                          ; preds = %bb.h, %bb.m, %bb.f, %bb.k, %bb.ad, %bb.ad
  %.sroa.082.sroa.0.0 = phi i64 [ %i.aa, %bb.ad ], [ %i.aa, %bb.ad ], [ %.sroa.082.0.copyload251, %bb.k ], [ %.sroa.082.0.copyload251, %bb.f ], [ %.sroa.082.0.copyload251, %bb.m ], [ %.sroa.082.0.copyload251, %bb.h ] ; 4 uses
  %.sroa.064.sroa.0.0 = phi i64 [ %i.ao, %bb.ad ], [ %i.ao, %bb.ad ], [ %.sroa.064.0.copyload252, %bb.k ], [ %.sroa.064.0.copyload252, %bb.f ], [ %.sroa.064.0.copyload252, %bb.m ], [ %.sroa.064.0.copyload252, %bb.h ] ; 4 uses
  %.sroa.13.0 = phi i64 [ %i.ap, %bb.ad ], [ %i.ap, %bb.ad ], [ %.sroa.13.0.copyload, %bb.k ], [ %.sroa.13.0.copyload, %bb.f ], [ %.sroa.13.0.copyload, %bb.m ], [ %.sroa.13.0.copyload, %bb.h ] ; 3 uses
  %.sroa.12.0 = phi i64 [ %i.ab, %bb.ad ], [ %i.ab, %bb.ad ], [ %.sroa.12.0.copyload, %bb.k ], [ %.sroa.12.0.copyload, %bb.f ], [ %.sroa.12.0.copyload, %bb.m ], [ %.sroa.12.0.copyload, %bb.h ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  %i.bd = and i64 %.sroa.12.0, 4294967287
  %i.be = icmp eq i64 %i.bd, 7
  br i1 %i.be, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.thread
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.082.sroa.0.0 to i32
  store i32 1, ptr %3, align 4, !tbaa !191
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.sroa.0.0.extract.trunc.i, ptr %i.bf, align 4, !tbaa !191
  br label %bb.ag

bb.af:                                            ; preds = %.thread
  %i.bg = inttoptr i64 %.sroa.082.sroa.0.0 to ptr
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0136 = phi ptr [ %3, %bb.ae ], [ %i.bg, %bb.af ] ; 6 uses
  %.0136363 = ptrtoaddr ptr %.0136 to i64
  %i.bh = and i64 %.sroa.13.0, 4294967295
  %i.bi = icmp eq i64 %i.bh, 7
  br i1 %i.bi, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %.sroa.0.0.extract.trunc.i155 = trunc i64 %.sroa.064.sroa.0.0 to i32
  store i32 1, ptr %4, align 4, !tbaa !191
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %.sroa.0.0.extract.trunc.i155, ptr %i.bj, align 4, !tbaa !191
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.bk = inttoptr i64 %.sroa.064.sroa.0.0 to ptr
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0135 = phi ptr [ %4, %bb.ah ], [ %i.bk, %bb.ai ] ; 4 uses
  switch i32 %2, label %bb.bk [
    i32 161, label %bb.ak
    i32 163, label %bb.ak
    i32 162, label %bb.ak
    i32 158, label %bb.bb
    i32 159, label %bb.bb
  ]

bb.ak:                                            ; preds = %bb.aj, %bb.aj, %bb.aj
  %i.bl = load i32, ptr %.0136, align 4, !tbaa !191 ; 3 uses
  %i.bm = load i32, ptr %.0135, align 4, !tbaa !191 ; 3 uses
  %i.bn = icmp ult i32 %i.bl, %i.bm               ; 7 uses
  %i.bo = tail call i32 @llvm.umax.i32(i32 %i.bl, i32 %i.bm) ; 6 uses
  %i.bp = tail call i32 @llvm.umin.i32(i32 %i.bl, i32 %i.bm) ; 14 uses
  %.0136.sroa.gep193 = getelementptr inbounds nuw i8, ptr %.0136, i64 4 ; 7 uses
  %.0135.sroa.gep194 = getelementptr inbounds nuw i8, ptr %.0135, i64 4 ; 7 uses
  %spec.select.i.sroa.sel195 = select i1 %i.bn, ptr %.0136.sroa.gep193, ptr %.0135.sroa.gep194 ; 20 uses
  %spec.select.i.sroa.sel195366 = ptrtoaddr ptr %spec.select.i.sroa.sel195 to i64 ; 3 uses
  %i.bq = add i32 %i.bp, -1
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %spec.select.i.sroa.sel195, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !191
  %.neg254 = ashr i32 %i.bt, 31                   ; 18 uses
  %i.bu = icmp sgt i32 %i.bo, 32768
  br i1 %i.bu, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.bv = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.143), !inline_history !1715 ; 0 uses
  br label %js_bigint_logic.exit

bb.am:                                            ; preds = %bb.ak
  %i.bw = sext i32 %i.bo to i64                   ; 13 uses
  %i.bx = shl nsw i64 %i.bw, 2
  %i.by = add nsw i64 %i.bx, 4                    ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !232 ; 8 uses
  %i.cb = icmp eq i64 %i.by, 0
  br i1 %i.cb, label %bb.at, label %bb.an, !prof !192

bb.an:                                            ; preds = %bb.am
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 40 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 48 ; 3 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !196
  %i.cf = add i64 %i.ce, %i.by
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !197
  %i.ci = add i64 %i.ch, -1
  %i.cj = icmp ugt i64 %i.cf, %i.ci
  br i1 %i.cj, label %bb.at, label %bb.ao, !prof !192

bb.ao:                                            ; preds = %bb.an
  %i.ck = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.ca, i64 noundef %i.by) ; 20 uses
  %5 = ptrtoaddr ptr %i.ck to i64                 ; 6 uses
  %.not.i185 = icmp eq ptr %i.ck, null
  br i1 %.not.i185, label %._crit_edge331, label %bb.ap

._crit_edge331:                                   ; preds = %bb.ao
  %.pre = load ptr, ptr %i.bz, align 8, !tbaa !232
  br label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.cl = load i64, ptr %i.cc, align 8, !tbaa !217
  %i.cm = add i64 %i.cl, 1
  store i64 %i.cm, ptr %i.cc, align 8, !tbaa !217
  %i.cn = getelementptr inbounds i8, ptr %i.ck, i64 -8 ; 3 uses
  %i.co = load i16, ptr %i.cn, align 8, !tbaa !218
  %i.cp = icmp eq i16 %i.co, -1
  br i1 %i.cp, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 1064
  %i.cr = icmp eq ptr %i.cn, %i.cq
  br i1 %i.cr, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !219
  %i.cu = tail call i64 %i.ct(ptr noundef nonnull %i.cn) #49, !inline_history !1716 ; 2 uses
  %.not15.i.i = icmp eq i64 %i.cu, 0
  %i.cv = select i1 %.not15.i.i, i64 8, i64 %i.cu
  br label %bb.av

bb.as:                                            ; preds = %bb.ap
  %i.cw = getelementptr inbounds i8, ptr %i.ck, i64 -6
  %i.cx = load i8, ptr %i.cw, align 2, !tbaa !218
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.cy
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !221
  %i.db = zext i16 %i.da to i64
  br label %bb.av

bb.at:                                            ; preds = %._crit_edge331, %bb.an, %bb.am
  %i.dc = phi ptr [ %.pre, %._crit_edge331 ], [ %i.ca, %bb.an ], [ %i.ca, %bb.am ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1256 ; 3 uses
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !233, !range !234, !noundef !235
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %js_bigint_logic.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i8 1, ptr %i.dd, align 8, !tbaa !233
  %i.dg = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !1717 ; 0 uses
  store i8 0, ptr %i.dd, align 8, !tbaa !233
  br label %js_bigint_logic.exit

bb.av:                                            ; preds = %bb.aq, %bb.ar, %bb.as
  %.011.i.i = phi i64 [ 8, %bb.aq ], [ %i.cv, %bb.ar ], [ %i.db, %bb.as ]
  %i.dh = load i64, ptr %i.cd, align 8, !tbaa !196
  %i.di = add i64 %i.dh, %.011.i.i
  store i64 %i.di, ptr %i.cd, align 8, !tbaa !196
  %i.dj = getelementptr inbounds i8, ptr %i.ck, i64 -4
  store i32 1, ptr %i.dj, align 4, !tbaa !191
  store i32 %i.bo, ptr %i.ck, align 8, !tbaa !191
  %i.dk = icmp sgt i32 %i.bp, 0                   ; 3 uses
  switch i32 %2, label %default.unreachable [
    i32 163, label %.preheader257
    i32 161, label %.preheader260
    i32 162, label %.preheader263
  ]

.preheader263:                                    ; preds = %bb.av
  br i1 %i.dk, label %.lr.ph277, label %.preheader261

.lr.ph277:                                        ; preds = %.preheader263
  %spec.select75.i.sroa.sel200 = select i1 %i.bn, ptr %.0135.sroa.gep194, ptr %.0136.sroa.gep193 ; 7 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 6 uses
  %wide.trip.count304 = zext nneg i32 %i.bp to i64 ; 5 uses
  %min.iters.check371 = icmp ult i32 %i.bp, 16
  br i1 %min.iters.check371, label %scalar.ph370.preheader, label %vector.memcheck365

vector.memcheck365:                               ; preds = %.lr.ph277
  %spec.select75.i.sroa.sel200368 = ptrtoaddr ptr %spec.select75.i.sroa.sel200 to i64
  %i.dm = add i64 %5, 4                           ; 2 uses
  %i.dn = sub i64 %spec.select.i.sroa.sel195366, %i.dm
  %diff.check367 = icmp ugt i64 %i.dn, -32
  %i.do = sub i64 %spec.select75.i.sroa.sel200368, %i.dm
  %diff.check369 = icmp ugt i64 %i.do, -32
  %conflict.rdx = or i1 %diff.check367, %diff.check369
  br i1 %conflict.rdx, label %scalar.ph370.preheader, label %vector.ph372

vector.ph372:                                     ; preds = %vector.memcheck365
  %n.vec373 = and i64 %wide.trip.count304, 2147483640 ; 3 uses
  br label %vector.body374

vector.body374:                                   ; preds = %vector.body374, %vector.ph372
  %index375 = phi i64 [ 0, %vector.ph372 ], [ %index.next380, %vector.body374 ] ; 4 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %spec.select75.i.sroa.sel200, i64 %index375 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load376 = load <4 x i32>, ptr %i.dp, align 4, !tbaa !191
  %wide.load377 = load <4 x i32>, ptr %i.dq, align 4, !tbaa !191
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %spec.select.i.sroa.sel195, i64 %index375 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %wide.load378 = load <4 x i32>, ptr %i.dr, align 4, !tbaa !191
  %wide.load379 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !191
  %i.dt = xor <4 x i32> %wide.load378, %wide.load376
  %i.du = xor <4 x i32> %wide.load379, %wide.load377
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %index375 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store <4 x i32> %i.dt, ptr %i.dv, align 4, !tbaa !191
  store <4 x i32> %i.du, ptr %i.dw, align 4, !tbaa !191
  %index.next380 = add nuw i64 %index375, 8       ; 2 uses
  %i.dx = icmp eq i64 %index.next380, %n.vec373
  br i1 %i.dx, label %middle.block381, label %vector.body374, !llvm.loop !1718

middle.block381:                                  ; preds = %vector.body374
  %cmp.n382 = icmp eq i64 %n.vec373, %wide.trip.count304
  br i1 %cmp.n382, label %.preheader261, label %scalar.ph370.preheader

scalar.ph370.preheader:                           ; preds = %vector.memcheck365, %.lr.ph277, %middle.block381
  %indvars.iv301.ph = phi i64 [ 0, %vector.memcheck365 ], [ 0, %.lr.ph277 ], [ %n.vec373, %middle.block381 ] ; 3 uses
  %xtraiter481 = and i64 %wide.trip.count304, 3   ; 2 uses
  %lcmp.mod482.not = icmp eq i64 %xtraiter481, 0
  br i1 %lcmp.mod482.not, label %scalar.ph370.prol.loopexit, label %scalar.ph370.prol

scalar.ph370.prol:                                ; preds = %scalar.ph370.preheader, %scalar.ph370.prol
  %indvars.iv301.prol = phi i64 [ %indvars.iv.next302.prol, %scalar.ph370.prol ], [ %indvars.iv301.ph, %scalar.ph370.preheader ] ; 4 uses
  %prol.iter483 = phi i64 [ %prol.iter483.next, %scalar.ph370.prol ], [ 0, %scalar.ph370.preheader ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %spec.select75.i.sroa.sel200, i64 %indvars.iv301.prol
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !191
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %spec.select.i.sroa.sel195, i64 %indvars.iv301.prol
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !191
  %i.ec = xor i32 %i.eb, %i.dz
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv301.prol
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !191
  %indvars.iv.next302.prol = add nuw nsw i64 %indvars.iv301.prol, 1 ; 2 uses
  %prol.iter483.next = add i64 %prol.iter483, 1   ; 2 uses
  %prol.iter483.cmp.not = icmp eq i64 %prol.iter483.next, %xtraiter481
  br i1 %prol.iter483.cmp.not, label %scalar.ph370.prol.loopexit, label %scalar.ph370.prol, !llvm.loop !1719

scalar.ph370.prol.loopexit:                       ; preds = %scalar.ph370.prol, %scalar.ph370.preheader
  %indvars.iv301.unr = phi i64 [ %indvars.iv301.ph, %scalar.ph370.preheader ], [ %indvars.iv.next302.prol, %scalar.ph370.prol ]
  %i.ee = sub nsw i64 %indvars.iv301.ph, %wide.trip.count304
  %i.ef = icmp ugt i64 %i.ee, -4
  br i1 %i.ef, label %.preheader261, label %scalar.ph370

.preheader260:                                    ; preds = %bb.av
  br i1 %i.dk, label %.lr.ph281, label %.preheader258

.lr.ph281:                                        ; preds = %.preheader260
  %spec.select75.i.sroa.sel206 = select i1 %i.bn, ptr %.0135.sroa.gep194, ptr %.0136.sroa.gep193 ; 7 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 6 uses
  %wide.trip.count314 = zext nneg i32 %i.bp to i64 ; 5 uses
  %min.iters.check405 = icmp ult i32 %i.bp, 16
  br i1 %min.iters.check405, label %scalar.ph404.preheader, label %vector.memcheck399

vector.memcheck399:                               ; preds = %.lr.ph281
  %spec.select75.i.sroa.sel206401 = ptrtoaddr ptr %spec.select75.i.sroa.sel206 to i64
  %i.eh = add i64 %5, 4                           ; 2 uses
  %i.ei = sub i64 %spec.select.i.sroa.sel195366, %i.eh
  %diff.check400 = icmp ugt i64 %i.ei, -32
  %i.ej = sub i64 %spec.select75.i.sroa.sel206401, %i.eh
  %diff.check402 = icmp ugt i64 %i.ej, -32
  %conflict.rdx403 = or i1 %diff.check400, %diff.check402
  br i1 %conflict.rdx403, label %scalar.ph404.preheader, label %vector.ph406

vector.ph406:                                     ; preds = %vector.memcheck399
  %n.vec407 = and i64 %wide.trip.count314, 2147483640 ; 3 uses
  br label %vector.body408

vector.body408:                                   ; preds = %vector.body408, %vector.ph406
  %index409 = phi i64 [ 0, %vector.ph406 ], [ %index.next414, %vector.body408 ] ; 4 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %spec.select75.i.sroa.sel206, i64 %index409 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %wide.load410 = load <4 x i32>, ptr %i.ek, align 4, !tbaa !191
  %wide.load411 = load <4 x i32>, ptr %i.el, align 4, !tbaa !191
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %spec.select.i.sroa.sel195, i64 %index409 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %wide.load412 = load <4 x i32>, ptr %i.em, align 4, !tbaa !191
  %wide.load413 = load <4 x i32>, ptr %i.en, align 4, !tbaa !191
  %i.eo = and <4 x i32> %wide.load412, %wide.load410
  %i.ep = and <4 x i32> %wide.load413, %wide.load411
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %index409 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store <4 x i32> %i.eo, ptr %i.eq, align 4, !tbaa !191
  store <4 x i32> %i.ep, ptr %i.er, align 4, !tbaa !191
  %index.next414 = add nuw i64 %index409, 8       ; 2 uses
  %i.es = icmp eq i64 %index.next414, %n.vec407
  br i1 %i.es, label %middle.block415, label %vector.body408, !llvm.loop !1720

middle.block415:                                  ; preds = %vector.body408
  %cmp.n416 = icmp eq i64 %n.vec407, %wide.trip.count314
  br i1 %cmp.n416, label %.preheader258, label %scalar.ph404.preheader

scalar.ph404.preheader:                           ; preds = %vector.memcheck399, %.lr.ph281, %middle.block415
  %indvars.iv311.ph = phi i64 [ 0, %vector.memcheck399 ], [ 0, %.lr.ph281 ], [ %n.vec407, %middle.block415 ] ; 3 uses
  %xtraiter487 = and i64 %wide.trip.count314, 3   ; 2 uses
  %lcmp.mod488.not = icmp eq i64 %xtraiter487, 0
  br i1 %lcmp.mod488.not, label %scalar.ph404.prol.loopexit, label %scalar.ph404.prol

scalar.ph404.prol:                                ; preds = %scalar.ph404.preheader, %scalar.ph404.prol
  %indvars.iv311.prol = phi i64 [ %indvars.iv.next312.prol, %scalar.ph404.prol ], [ %indvars.iv311.ph, %scalar.ph404.preheader ] ; 4 uses
  %prol.iter489 = phi i64 [ %prol.iter489.next, %scalar.ph404.prol ], [ 0, %scalar.ph404.preheader ]
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %spec.select75.i.sroa.sel206, i64 %indvars.iv311.prol
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !191
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %spec.select.i.sroa.sel195, i64 %indvars.iv311.prol
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !191
  %i.ex = and i32 %i.ew, %i.eu
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv311.prol
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !191
  %indvars.iv.next312.prol = add nuw nsw i64 %indvars.iv311.prol, 1 ; 2 uses
  %prol.iter489.next = add i64 %prol.iter489, 1   ; 2 uses
  %prol.iter489.cmp.not = icmp eq i64 %prol.iter489.next, %xtraiter487
  br i1 %prol.iter489.cmp.not, label %scalar.ph404.prol.loopexit, label %scalar.ph404.prol, !llvm.loop !1721

scalar.ph404.prol.loopexit:                       ; preds = %scalar.ph404.prol, %scalar.ph404.preheader
  %indvars.iv311.unr = phi i64 [ %indvars.iv311.ph, %scalar.ph404.preheader ], [ %indvars.iv.next312.prol, %scalar.ph404.prol ]
  %i.ez = sub nsw i64 %indvars.iv311.ph, %wide.trip.count314
  %i.fa = icmp ugt i64 %i.ez, -4
  br i1 %i.fa, label %.preheader258, label %scalar.ph404

.preheader257:                                    ; preds = %bb.av
  br i1 %i.dk, label %.lr.ph285, label %.preheader

.lr.ph285:                                        ; preds = %.preheader257
  %spec.select75.i.sroa.sel212 = select i1 %i.bn, ptr %.0135.sroa.gep194, ptr %.0136.sroa.gep193 ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 6 uses
  %wide.trip.count324 = zext nneg i32 %i.bp to i64 ; 5 uses
  %min.iters.check441 = icmp ult i32 %i.bp, 16
  br i1 %min.iters.check441, label %scalar.ph440.preheader, label %vector.memcheck435

vector.memcheck435:                               ; preds = %.lr.ph285
  %spec.select75.i.sroa.sel212437 = ptrtoaddr ptr %spec.select75.i.sroa.sel212 to i64
  %i.fc = add i64 %5, 4                           ; 2 uses
  %i.fd = sub i64 %spec.select.i.sroa.sel195366, %i.fc
  %diff.check436 = icmp ugt i64 %i.fd, -32
  %i.fe = sub i64 %spec.select75.i.sroa.sel212437, %i.fc
  %diff.check438 = icmp ugt i64 %i.fe, -32
  %conflict.rdx439 = or i1 %diff.check436, %diff.check438
  br i1 %conflict.rdx439, label %scalar.ph440.preheader, label %vector.ph442

vector.ph442:                                     ; preds = %vector.memcheck435
  %n.vec443 = and i64 %wide.trip.count324, 2147483640 ; 3 uses
  br label %vector.body444

vector.body444:                                   ; preds = %vector.body444, %vector.ph442
  %index445 = phi i64 [ 0, %vector.ph442 ], [ %index.next450, %vector.body444 ] ; 4 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %spec.select75.i.sroa.sel212, i64 %index445 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %wide.load446 = load <4 x i32>, ptr %i.ff, align 4, !tbaa !191
  %wide.load447 = load <4 x i32>, ptr %i.fg, align 4, !tbaa !191
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %spec.select.i.sroa.sel195, i64 %index445 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %wide.load448 = load <4 x i32>, ptr %i.fh, align 4, !tbaa !191
  %wide.load449 = load <4 x i32>, ptr %i.fi, align 4, !tbaa !191
  %i.fj = or <4 x i32> %wide.load448, %wide.load446
  %i.fk = or <4 x i32> %wide.load449, %wide.load447
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %index445 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store <4 x i32> %i.fj, ptr %i.fl, align 4, !tbaa !191
  store <4 x i32> %i.fk, ptr %i.fm, align 4, !tbaa !191
  %index.next450 = add nuw i64 %index445, 8       ; 2 uses
  %i.fn = icmp eq i64 %index.next450, %n.vec443
  br i1 %i.fn, label %middle.block451, label %vector.body444, !llvm.loop !1722

middle.block451:                                  ; preds = %vector.body444
  %cmp.n452 = icmp eq i64 %n.vec443, %wide.trip.count324
  br i1 %cmp.n452, label %.preheader, label %scalar.ph440.preheader

scalar.ph440.preheader:                           ; preds = %vector.memcheck435, %.lr.ph285, %middle.block451
  %indvars.iv321.ph = phi i64 [ 0, %vector.memcheck435 ], [ 0, %.lr.ph285 ], [ %n.vec443, %middle.block451 ] ; 3 uses
  %xtraiter493 = and i64 %wide.trip.count324, 3   ; 2 uses
  %lcmp.mod494.not = icmp eq i64 %xtraiter493, 0
  br i1 %lcmp.mod494.not, label %scalar.ph440.prol.loopexit, label %scalar.ph440.prol

scalar.ph440.prol:                                ; preds = %scalar.ph440.preheader, %scalar.ph440.prol
  %indvars.iv321.prol = phi i64 [ %indvars.iv.next322.prol, %scalar.ph440.prol ], [ %indvars.iv321.ph, %scalar.ph440.preheader ] ; 4 uses
  %prol.iter495 = phi i64 [ %prol.iter495.next, %scalar.ph440.prol ], [ 0, %scalar.ph440.preheader ]
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %spec.select75.i.sroa.sel212, i64 %indvars.iv321.prol
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !191
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %spec.select.i.sroa.sel195, i64 %indvars.iv321.prol
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !191
  %i.fs = or i32 %i.fr, %i.fp
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv321.prol
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !191
  %indvars.iv.next322.prol = add nuw nsw i64 %indvars.iv321.prol, 1 ; 2 uses
  %prol.iter495.next = add i64 %prol.iter495, 1   ; 2 uses
  %prol.iter495.cmp.not = icmp eq i64 %prol.iter495.next, %xtraiter493
  br i1 %prol.iter495.cmp.not, label %scalar.ph440.prol.loopexit, label %scalar.ph440.prol, !llvm.loop !1723

scalar.ph440.prol.loopexit:                       ; preds = %scalar.ph440.prol, %scalar.ph440.preheader
  %indvars.iv321.unr = phi i64 [ %indvars.iv321.ph, %scalar.ph440.preheader ], [ %indvars.iv.next322.prol, %scalar.ph440.prol ]
  %i.fu = sub nsw i64 %indvars.iv321.ph, %wide.trip.count324
  %i.fv = icmp ugt i64 %i.fu, -4
  br i1 %i.fv, label %.preheader, label %scalar.ph440

.preheader:                                       ; preds = %scalar.ph440.prol.loopexit, %scalar.ph440, %middle.block451, %.preheader257
  %i.fw = icmp slt i32 %i.bp, %i.bo
  br i1 %i.fw, label %.lr.ph287, label %.loopexit

.lr.ph287:                                        ; preds = %.preheader
  %spec.select75.i.sroa.sel209 = select i1 %i.bn, ptr %.0135.sroa.gep194, ptr %.0136.sroa.gep193 ; 7 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 6 uses
  %i.fy = sext i32 %i.bp to i64                   ; 5 uses
  %i.fz = sub nsw i64 %i.bw, %i.fy                ; 3 uses
  %min.iters.check458 = icmp ult i64 %i.fz, 8
  br i1 %min.iters.check458, label %scalar.ph457.preheader, label %vector.memcheck454

vector.memcheck454:                               ; preds = %.lr.ph287
  %spec.select75.i.sroa.sel209455 = ptrtoaddr ptr %spec.select75.i.sroa.sel209 to i64
  %i.ga = sub i64 %5, %spec.select75.i.sroa.sel209455
  %i.gb = add i64 %i.ga, 3
  %diff.check456 = icmp ult i64 %i.gb, 31
  br i1 %diff.check456, label %scalar.ph457.preheader, label %vector.ph459

vector.ph459:                                     ; preds = %vector.memcheck454
  %n.vec460 = and i64 %i.fz, -8                   ; 3 uses
  %i.gc = add nsw i64 %n.vec460, %i.fy
  %broadcast.splatinsert461 = insertelement <4 x i32> poison, i32 %.neg254, i64 0
  %broadcast.splat462 = shufflevector <4 x i32> %broadcast.splatinsert461, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body463

vector.body463:                                   ; preds = %vector.body463, %vector.ph459
  %index464 = phi i64 [ 0, %vector.ph459 ], [ %index.next467, %vector.body463 ] ; 2 uses
  %i.gd = add i64 %index464, %i.fy                ; 2 uses
  %i.ge = getelementptr inbounds [4 x i8], ptr %spec.select75.i.sroa.sel209, i64 %i.gd ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %wide.load465 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !191
  %wide.load466 = load <4 x i32>, ptr %i.gf, align 4, !tbaa !191
  %i.gg = or <4 x i32> %wide.load465, %broadcast.splat462
  %i.gh = or <4 x i32> %wide.load466, %broadcast.splat462
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.gd ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store <4 x i32> %i.gg, ptr %i.gi, align 4, !tbaa !191
  store <4 x i32> %i.gh, ptr %i.gj, align 4, !tbaa !191
  %index.next467 = add nuw i64 %index464, 8       ; 2 uses
  %i.gk = icmp eq i64 %index.next467, %n.vec460
  br i1 %i.gk, label %middle.block468, label %vector.body463, !llvm.loop !1724

middle.block468:                                  ; preds = %vector.body463
  %cmp.n469 = icmp eq i64 %i.fz, %n.vec460
  br i1 %cmp.n469, label %.loopexit, label %scalar.ph457.preheader

scalar.ph457.preheader:                           ; preds = %vector.memcheck454, %.lr.ph287, %middle.block468
  %indvars.iv326.ph = phi i64 [ %i.fy, %vector.memcheck454 ], [ %i.fy, %.lr.ph287 ], [ %i.gc, %middle.block468 ] ; 4 uses
  %i.gl = sub nsw i64 %i.bw, %indvars.iv326.ph
  %xtraiter496 = and i64 %i.gl, 3                 ; 2 uses
  %lcmp.mod497.not = icmp eq i64 %xtraiter496, 0
  br i1 %lcmp.mod497.not, label %scalar.ph457.prol.loopexit, label %scalar.ph457.prol

scalar.ph457.prol:                                ; preds = %scalar.ph457.preheader, %scalar.ph457.prol
  %indvars.iv326.prol = phi i64 [ %indvars.iv.next327.prol, %scalar.ph457.prol ], [ %indvars.iv326.ph, %scalar.ph457.preheader ] ; 3 uses
  %prol.iter498 = phi i64 [ %prol.iter498.next, %scalar.ph457.prol ], [ 0, %scalar.ph457.preheader ]
  %i.gm = getelementptr inbounds [4 x i8], ptr %spec.select75.i.sroa.sel209, i64 %indvars.iv326.prol
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !191
  %i.go = or i32 %i.gn, %.neg254
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %indvars.iv326.prol
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !191
  %indvars.iv.next327.prol = add nsw i64 %indvars.iv326.prol, 1 ; 2 uses
  %prol.iter498.next = add i64 %prol.iter498, 1   ; 2 uses
  %prol.iter498.cmp.not = icmp eq i64 %prol.iter498.next, %xtraiter496
  br i1 %prol.iter498.cmp.not, label %scalar.ph457.prol.loopexit, label %scalar.ph457.prol, !llvm.loop !1725

scalar.ph457.prol.loopexit:                       ; preds = %scalar.ph457.prol, %scalar.ph457.preheader
  %indvars.iv326.unr = phi i64 [ %indvars.iv326.ph, %scalar.ph457.preheader ], [ %indvars.iv.next327.prol, %scalar.ph457.prol ]
  %i.gq = sub nsw i64 %indvars.iv326.ph, %i.bw
  %i.gr = icmp ugt i64 %i.gq, -4
  br i1 %i.gr, label %.loopexit, label %scalar.ph457

scalar.ph440:                                     ; preds = %scalar.ph440.prol.loopexit, %scalar.ph440
  %indvars.iv321 = phi i64 [ %indvars.iv.next322.3, %scalar.ph440 ], [ %indvars.iv321.unr, %scalar.ph440.prol.loopexit ] ; 7 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %spec.select75.i.sroa.sel212, i64 %indvars.iv321
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !191
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %spec.select.i.sroa.sel195, i64 %indvars.iv321
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !191
  %i.gw = or i32 %i.gv, %i.gt
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv321
  store i32 %i.gw, ptr %i.gx, align 4, !tbaa !191
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1 ; 3 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %spec.select75.i.sroa.sel212, i64 %indvars.iv.next322
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !191
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %spec.select.i.sroa.sel195, i64 %indvars.iv.next322
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !191
  %i.hc = or i32 %i.hb, %i.gz
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv.next322
  store i32 %i.hc, ptr %i.hd, align 4, !tbaa !191
  %indvars.iv.next322.1 = add nuw nsw i64 %indvars.iv321, 2 ; 3 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %spec.select75.i.sroa.sel212, i64 %indvars.iv.next322.1
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !191
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %spec.select.i.sroa.sel195, i64 %indvars.iv.next322.1
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !191
  %i.hi = or i32 %i.hh, %i.hf
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv.next322.1
  store i32 %i.hi, ptr %i.hj, align 4, !tbaa !191
  %indvars.iv.next322.2 = add nuw nsw i64 %indvars.iv321, 3 ; 3 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %spec.select75.i.sroa.sel212, i64 %indvars.iv.next322.2
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !191
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %spec.select.i.sroa.sel195, i64 %indvars.iv.next322.2
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !191
  %i.ho = or i32 %i.hn, %i.hl
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv.next322.2
  store i32 %i.ho, ptr %i.hp, align 4, !tbaa !191
  %indvars.iv.next322.3 = add nuw nsw i64 %indvars.iv321, 4 ; 2 uses
  %exitcond325.not.3 = icmp eq i64 %indvars.iv.next322.3, %wide.trip.count324
  br i1 %exitcond325.not.3, label %.preheader, label %scalar.ph440, !llvm.loop !1726

scalar.ph457:                                     ; preds = %scalar.ph457.prol.loopexit, %scalar.ph457
  %indvars.iv326 = phi i64 [ %indvars.iv.next327.3, %scalar.ph457 ], [ %indvars.iv326.unr, %scalar.ph457.prol.loopexit ] ; 6 uses
  %i.hq = getelementptr inbounds [4 x i8], ptr %spec.select75.i.sroa.sel209, i64 %indvars.iv326
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !191
  %i.hs = or i32 %i.hr, %.neg254
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %indvars.iv326
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !191
  %indvars.iv.next327 = add nsw i64 %indvars.iv326, 1 ; 2 uses
  %i.hu = getelementptr inbounds [4 x i8], ptr %spec.select75.i.sroa.sel209, i64 %indvars.iv.next327
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !191
  %i.hw = or i32 %i.hv, %.neg254
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %indvars.iv.next327
  store i32 %i.hw, ptr %i.hx, align 4, !tbaa !191
  %indvars.iv.next327.1 = add nsw i64 %indvars.iv326, 2 ; 2 uses
  %i.hy = getelementptr inbounds [4 x i8], ptr %spec.select75.i.sroa.sel209, i64 %indvars.iv.next327.1
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !191
  %i.ia = or i32 %i.hz, %.neg254
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %indvars.iv.next327.1
  store i32 %i.ia, ptr %i.ib, align 4, !tbaa !191
  %indvars.iv.next327.2 = add nsw i64 %indvars.iv326, 3 ; 2 uses
  %i.ic = getelementptr inbounds [4 x i8], ptr %spec.select75.i.sroa.sel209, i64 %indvars.iv.next327.2
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !191
  %i.ie = or i32 %i.id, %.neg254
  %i.if = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %indvars.iv.next327.2
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !191
  %indvars.iv.next327.3 = add nsw i64 %indvars.iv326, 4 ; 2 uses
  %exitcond330.not.3 = icmp eq i64 %indvars.iv.next327.3, %i.bw
  br i1 %exitcond330.not.3, label %.loopexit, label %scalar.ph457, !llvm.loop !1727

.preheader258:                                    ; preds = %scalar.ph404.prol.loopexit, %scalar.ph404, %middle.block415, %.preheader260
  %i.ig = icmp slt i32 %i.bp, %i.bo
  br i1 %i.ig, label %.lr.ph283, label %.loopexit

.lr.ph283:                                        ; preds = %.preheader258
  %spec.select75.i.sroa.sel203 = select i1 %i.bn, ptr %.0135.sroa.gep194, ptr %.0136.sroa.gep193 ; 7 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 6 uses
  %i.ii = sext i32 %i.bp to i64                   ; 5 uses
  %i.ij = sub nsw i64 %i.bw, %i.ii                ; 3 uses
  %min.iters.check422 = icmp ult i64 %i.ij, 8
  br i1 %min.iters.check422, label %scalar.ph421.preheader, label %vector.memcheck418

vector.memcheck418:                               ; preds = %.lr.ph283
  %spec.select75.i.sroa.sel203419 = ptrtoaddr ptr %spec.select75.i.sroa.sel203 to i64
  %i.ik = sub i64 %5, %spec.select75.i.sroa.sel203419
  %i.il = add i64 %i.ik, 3
  %diff.check420 = icmp ult i64 %i.il, 31
  br i1 %diff.check420, label %scalar.ph421.preheader, label %vector.ph423

vector.ph423:                                     ; preds = %vector.memcheck418
  %n.vec424 = and i64 %i.ij, -8                   ; 3 uses
  %i.im = add nsw i64 %n.vec424, %i.ii
  %broadcast.splatinsert425 = insertelement <4 x i32> poison, i32 %.neg254, i64 0
  %broadcast.splat426 = shufflevector <4 x i32> %broadcast.splatinsert425, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body427

vector.body427:                                   ; preds = %vector.body427, %vector.ph423
  %index428 = phi i64 [ 0, %vector.ph423 ], [ %index.next431, %vector.body427 ] ; 2 uses
  %i.in = add i64 %index428, %i.ii                ; 2 uses
  %i.io = getelementptr inbounds [4 x i8], ptr %spec.select75.i.sroa.sel203, i64 %i.in ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %wide.load429 = load <4 x i32>, ptr %i.io, align 4, !tbaa !191
  %wide.load430 = load <4 x i32>, ptr %i.ip, align 4, !tbaa !191
  %i.iq = and <4 x i32> %wide.load429, %broadcast.splat426
  %i.ir = and <4 x i32> %wide.load430, %broadcast.splat426
  %i.is = getelementptr inbounds [4 x i8], ptr %i.ih, i64 %i.in ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  store <4 x i32> %i.iq, ptr %i.is, align 4, !tbaa !191
  store <4 x i32> %i.ir, ptr %i.it, align 4, !tbaa !191
  %index.next431 = add nuw i64 %index428, 8       ; 2 uses
  %i.iu = icmp eq i64 %index.next431, %n.vec424
  br i1 %i.iu, label %middle.block432, label %vector.body427, !llvm.loop !1728

middle.block432:                                  ; preds = %vector.body427
  %cmp.n433 = icmp eq i64 %i.ij, %n.vec424
  br i1 %cmp.n433, label %.loopexit, label %scalar.ph421.preheader

scalar.ph421.preheader:                           ; preds = %vector.memcheck418, %.lr.ph283, %middle.block432
  %indvars.iv316.ph = phi i64 [ %i.ii, %vector.memcheck418 ], [ %i.ii, %.lr.ph283 ], [ %i.im, %middle.block432 ] ; 4 uses
  %i.iv = sub nsw i64 %i.bw, %indvars.iv316.ph
  %xtraiter490 = and i64 %i.iv, 3                 ; 2 uses
  %lcmp.mod491.not = icmp eq i64 %xtraiter490, 0
  br i1 %lcmp.mod491.not, label %scalar.ph421.prol.loopexit, label %scalar.ph421.prol

scalar.ph421.prol:                                ; preds = %scalar.ph421.preheader, %scalar.ph421.prol
  %indvars.iv316.prol = phi i64 [ %indvars.iv.next317.prol, %scalar.ph421.prol ], [ %indvars.iv316.ph, %scalar.ph421.preheader ] ; 3 uses
  %prol.iter492 = phi i64 [ %prol.iter492.next, %scalar.ph421.prol ], [ 0, %scalar.ph421.preheader ]
  %i.iw = getelementptr inbounds [4 x i8], ptr %spec.select75.i.sroa.sel203, i64 %indvars.iv316.prol
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !191
  %i.iy = and i32 %i.ix, %.neg254
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.ih, i64 %indvars.iv316.prol
  store i32 %i.iy, ptr %i.iz, align 4, !tbaa !191
  %indvars.iv.next317.prol = add nsw i64 %indvars.iv316.prol, 1 ; 2 uses
  %prol.iter492.next = add i64 %prol.iter492, 1   ; 2 uses
  %prol.iter492.cmp.not = icmp eq i64 %prol.iter492.next, %xtraiter490
  br i1 %prol.iter492.cmp.not, label %scalar.ph421.prol.loopexit, label %scalar.ph421.prol, !llvm.loop !1729

scalar.ph421.prol.loopexit:                       ; preds = %scalar.ph421.prol, %scalar.ph421.preheader
  %indvars.iv316.unr = phi i64 [ %indvars.iv316.ph, %scalar.ph421.preheader ], [ %indvars.iv.next317.prol, %scalar.ph421.prol ]
  %i.ja = sub nsw i64 %indvars.iv316.ph, %i.bw
  %i.jb = icmp ugt i64 %i.ja, -4
  br i1 %i.jb, label %.loopexit, label %scalar.ph421

scalar.ph404:                                     ; preds = %scalar.ph404.prol.loopexit, %scalar.ph404
  %indvars.iv311 = phi i64 [ %indvars.iv.next312.3, %scalar.ph404 ], [ %indvars.iv311.unr, %scalar.ph404.prol.loopexit ] ; 7 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %spec.select75.i.sroa.sel206, i64 %indvars.iv311
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !191
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %spec.select.i.sroa.sel195, i64 %indvars.iv311
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !191
  %i.jg = and i32 %i.jf, %i.jd
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv311
  store i32 %i.jg, ptr %i.jh, align 4, !tbaa !191
  %indvars.iv.next312 = add nuw nsw i64 %indvars.iv311, 1 ; 3 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %spec.select75.i.sroa.sel206, i64 %indvars.iv.next312
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !191
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %spec.select.i.sroa.sel195, i64 %indvars.iv.next312
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !191
  %i.jm = and i32 %i.jl, %i.jj
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next312
  store i32 %i.jm, ptr %i.jn, align 4, !tbaa !191
  %indvars.iv.next312.1 = add nuw nsw i64 %indvars.iv311, 2 ; 3 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %spec.select75.i.sroa.sel206, i64 %indvars.iv.next312.1
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !191
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %spec.select.i.sroa.sel195, i64 %indvars.iv.next312.1
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !191
  %i.js = and i32 %i.jr, %i.jp
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next312.1
  store i32 %i.js, ptr %i.jt, align 4, !tbaa !191
  %indvars.iv.next312.2 = add nuw nsw i64 %indvars.iv311, 3 ; 3 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %spec.select75.i.sroa.sel206, i64 %indvars.iv.next312.2
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !191
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %spec.select.i.sroa.sel195, i64 %indvars.iv.next312.2
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !191
  %i.jy = and i32 %i.jx, %i.jv
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next312.2
  store i32 %i.jy, ptr %i.jz, align 4, !tbaa !191
  %indvars.iv.next312.3 = add nuw nsw i64 %indvars.iv311, 4 ; 2 uses
  %exitcond315.not.3 = icmp eq i64 %indvars.iv.next312.3, %wide.trip.count314
  br i1 %exitcond315.not.3, label %.preheader258, label %scalar.ph404, !llvm.loop !1730

scalar.ph421:                                     ; preds = %scalar.ph421.prol.loopexit, %scalar.ph421
  %indvars.iv316 = phi i64 [ %indvars.iv.next317.3, %scalar.ph421 ], [ %indvars.iv316.unr, %scalar.ph421.prol.loopexit ] ; 6 uses
  %i.ka = getelementptr inbounds [4 x i8], ptr %spec.select75.i.sroa.sel203, i64 %indvars.iv316
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !191
  %i.kc = and i32 %i.kb, %.neg254
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.ih, i64 %indvars.iv316
  store i32 %i.kc, ptr %i.kd, align 4, !tbaa !191
  %indvars.iv.next317 = add nsw i64 %indvars.iv316, 1 ; 2 uses
  %i.ke = getelementptr inbounds [4 x i8], ptr %spec.select75.i.sroa.sel203, i64 %indvars.iv.next317
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !191
  %i.kg = and i32 %i.kf, %.neg254
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.ih, i64 %indvars.iv.next317
  store i32 %i.kg, ptr %i.kh, align 4, !tbaa !191
  %indvars.iv.next317.1 = add nsw i64 %indvars.iv316, 2 ; 2 uses
  %i.ki = getelementptr inbounds [4 x i8], ptr %spec.select75.i.sroa.sel203, i64 %indvars.iv.next317.1
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !191
  %i.kk = and i32 %i.kj, %.neg254
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.ih, i64 %indvars.iv.next317.1
  store i32 %i.kk, ptr %i.kl, align 4, !tbaa !191
  %indvars.iv.next317.2 = add nsw i64 %indvars.iv316, 3 ; 2 uses
  %i.km = getelementptr inbounds [4 x i8], ptr %spec.select75.i.sroa.sel203, i64 %indvars.iv.next317.2
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !191
  %i.ko = and i32 %i.kn, %.neg254
  %i.kp = getelementptr inbounds [4 x i8], ptr %i.ih, i64 %indvars.iv.next317.2
  store i32 %i.ko, ptr %i.kp, align 4, !tbaa !191
  %indvars.iv.next317.3 = add nsw i64 %indvars.iv316, 4 ; 2 uses
  %exitcond320.not.3 = icmp eq i64 %indvars.iv.next317.3, %i.bw
  br i1 %exitcond320.not.3, label %.loopexit, label %scalar.ph421, !llvm.loop !1731

.preheader261:                                    ; preds = %scalar.ph370.prol.loopexit, %scalar.ph370, %middle.block381, %.preheader263
  %i.kq = icmp slt i32 %i.bp, %i.bo
  br i1 %i.kq, label %.lr.ph279, label %.loopexit

.lr.ph279:                                        ; preds = %.preheader261
  %spec.select75.i.sroa.sel = select i1 %i.bn, ptr %.0135.sroa.gep194, ptr %.0136.sroa.gep193 ; 7 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 6 uses
  %i.ks = sext i32 %i.bp to i64                   ; 5 uses
  %i.kt = sub nsw i64 %i.bw, %i.ks                ; 3 uses
  %min.iters.check388 = icmp ult i64 %i.kt, 8
  br i1 %min.iters.check388, label %scalar.ph387.preheader, label %vector.memcheck384

vector.memcheck384:                               ; preds = %.lr.ph279
  %spec.select75.i.sroa.sel385 = ptrtoaddr ptr %spec.select75.i.sroa.sel to i64
  %i.ku = sub i64 %5, %spec.select75.i.sroa.sel385
  %i.kv = add i64 %i.ku, 3
  %diff.check386 = icmp ult i64 %i.kv, 31
  br i1 %diff.check386, label %scalar.ph387.preheader, label %vector.ph389

vector.ph389:                                     ; preds = %vector.memcheck384
  %n.vec390 = and i64 %i.kt, -8                   ; 3 uses
  %i.kw = add nsw i64 %n.vec390, %i.ks
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.neg254, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body391

vector.body391:                                   ; preds = %vector.body391, %vector.ph389
  %index392 = phi i64 [ 0, %vector.ph389 ], [ %index.next395, %vector.body391 ] ; 2 uses
  %i.kx = add i64 %index392, %i.ks                ; 2 uses
  %i.ky = getelementptr inbounds [4 x i8], ptr %spec.select75.i.sroa.sel, i64 %i.kx ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %wide.load393 = load <4 x i32>, ptr %i.ky, align 4, !tbaa !191
  %wide.load394 = load <4 x i32>, ptr %i.kz, align 4, !tbaa !191
  %i.la = xor <4 x i32> %wide.load393, %broadcast.splat
  %i.lb = xor <4 x i32> %wide.load394, %broadcast.splat
  %i.lc = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.kx ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  store <4 x i32> %i.la, ptr %i.lc, align 4, !tbaa !191
  store <4 x i32> %i.lb, ptr %i.ld, align 4, !tbaa !191
  %index.next395 = add nuw i64 %index392, 8       ; 2 uses
  %i.le = icmp eq i64 %index.next395, %n.vec390
  br i1 %i.le, label %middle.block396, label %vector.body391, !llvm.loop !1732

middle.block396:                                  ; preds = %vector.body391
  %cmp.n397 = icmp eq i64 %i.kt, %n.vec390
  br i1 %cmp.n397, label %.loopexit, label %scalar.ph387.preheader

scalar.ph387.preheader:                           ; preds = %vector.memcheck384, %.lr.ph279, %middle.block396
  %indvars.iv306.ph = phi i64 [ %i.ks, %vector.memcheck384 ], [ %i.ks, %.lr.ph279 ], [ %i.kw, %middle.block396 ] ; 4 uses
  %i.lf = sub nsw i64 %i.bw, %indvars.iv306.ph
  %xtraiter484 = and i64 %i.lf, 3                 ; 2 uses
  %lcmp.mod485.not = icmp eq i64 %xtraiter484, 0
  br i1 %lcmp.mod485.not, label %scalar.ph387.prol.loopexit, label %scalar.ph387.prol

scalar.ph387.prol:                                ; preds = %scalar.ph387.preheader, %scalar.ph387.prol
  %indvars.iv306.prol = phi i64 [ %indvars.iv.next307.prol, %scalar.ph387.prol ], [ %indvars.iv306.ph, %scalar.ph387.preheader ] ; 3 uses
  %prol.iter486 = phi i64 [ %prol.iter486.next, %scalar.ph387.prol ], [ 0, %scalar.ph387.preheader ]
  %i.lg = getelementptr inbounds [4 x i8], ptr %spec.select75.i.sroa.sel, i64 %indvars.iv306.prol
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !191
  %i.li = xor i32 %i.lh, %.neg254
  %i.lj = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %indvars.iv306.prol
  store i32 %i.li, ptr %i.lj, align 4, !tbaa !191
  %indvars.iv.next307.prol = add nsw i64 %indvars.iv306.prol, 1 ; 2 uses
  %prol.iter486.next = add i64 %prol.iter486, 1   ; 2 uses
  %prol.iter486.cmp.not = icmp eq i64 %prol.iter486.next, %xtraiter484
  br i1 %prol.iter486.cmp.not, label %scalar.ph387.prol.loopexit, label %scalar.ph387.prol, !llvm.loop !1733

scalar.ph387.prol.loopexit:                       ; preds = %scalar.ph387.prol, %scalar.ph387.preheader
  %indvars.iv306.unr = phi i64 [ %indvars.iv306.ph, %scalar.ph387.preheader ], [ %indvars.iv.next307.prol, %scalar.ph387.prol ]
  %i.lk = sub nsw i64 %indvars.iv306.ph, %i.bw
  %i.ll = icmp ugt i64 %i.lk, -4
  br i1 %i.ll, label %.loopexit, label %scalar.ph387

scalar.ph370:                                     ; preds = %scalar.ph370.prol.loopexit, %scalar.ph370
  %indvars.iv301 = phi i64 [ %indvars.iv.next302.3, %scalar.ph370 ], [ %indvars.iv301.unr, %scalar.ph370.prol.loopexit ] ; 7 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %spec.select75.i.sroa.sel200, i64 %indvars.iv301
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !191
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %spec.select.i.sroa.sel195, i64 %indvars.iv301
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !191
  %i.lq = xor i32 %i.lp, %i.ln
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv301
  store i32 %i.lq, ptr %i.lr, align 4, !tbaa !191
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1 ; 3 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %spec.select75.i.sroa.sel200, i64 %indvars.iv.next302
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !191
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %spec.select.i.sroa.sel195, i64 %indvars.iv.next302
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !191
  %i.lw = xor i32 %i.lv, %i.lt
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv.next302
  store i32 %i.lw, ptr %i.lx, align 4, !tbaa !191
  %indvars.iv.next302.1 = add nuw nsw i64 %indvars.iv301, 2 ; 3 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %spec.select75.i.sroa.sel200, i64 %indvars.iv.next302.1
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !191
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %spec.select.i.sroa.sel195, i64 %indvars.iv.next302.1
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !191
  %i.mc = xor i32 %i.mb, %i.lz
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv.next302.1
  store i32 %i.mc, ptr %i.md, align 4, !tbaa !191
  %indvars.iv.next302.2 = add nuw nsw i64 %indvars.iv301, 3 ; 3 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %spec.select75.i.sroa.sel200, i64 %indvars.iv.next302.2
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !191
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %spec.select.i.sroa.sel195, i64 %indvars.iv.next302.2
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !191
  %i.mi = xor i32 %i.mh, %i.mf
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv.next302.2
  store i32 %i.mi, ptr %i.mj, align 4, !tbaa !191
  %indvars.iv.next302.3 = add nuw nsw i64 %indvars.iv301, 4 ; 2 uses
  %exitcond305.not.3 = icmp eq i64 %indvars.iv.next302.3, %wide.trip.count304
  br i1 %exitcond305.not.3, label %.preheader261, label %scalar.ph370, !llvm.loop !1734

scalar.ph387:                                     ; preds = %scalar.ph387.prol.loopexit, %scalar.ph387
  %indvars.iv306 = phi i64 [ %indvars.iv.next307.3, %scalar.ph387 ], [ %indvars.iv306.unr, %scalar.ph387.prol.loopexit ] ; 6 uses
  %i.mk = getelementptr inbounds [4 x i8], ptr %spec.select75.i.sroa.sel, i64 %indvars.iv306
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !191
  %i.mm = xor i32 %i.ml, %.neg254
  %i.mn = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %indvars.iv306
  store i32 %i.mm, ptr %i.mn, align 4, !tbaa !191
  %indvars.iv.next307 = add nsw i64 %indvars.iv306, 1 ; 2 uses
  %i.mo = getelementptr inbounds [4 x i8], ptr %spec.select75.i.sroa.sel, i64 %indvars.iv.next307
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !191
  %i.mq = xor i32 %i.mp, %.neg254
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %indvars.iv.next307
  store i32 %i.mq, ptr %i.mr, align 4, !tbaa !191
  %indvars.iv.next307.1 = add nsw i64 %indvars.iv306, 2 ; 2 uses
  %i.ms = getelementptr inbounds [4 x i8], ptr %spec.select75.i.sroa.sel, i64 %indvars.iv.next307.1
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !191
  %i.mu = xor i32 %i.mt, %.neg254
  %i.mv = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %indvars.iv.next307.1
  store i32 %i.mu, ptr %i.mv, align 4, !tbaa !191
  %indvars.iv.next307.2 = add nsw i64 %indvars.iv306, 3 ; 2 uses
  %i.mw = getelementptr inbounds [4 x i8], ptr %spec.select75.i.sroa.sel, i64 %indvars.iv.next307.2
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !191
  %i.my = xor i32 %i.mx, %.neg254
  %i.mz = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %indvars.iv.next307.2
  store i32 %i.my, ptr %i.mz, align 4, !tbaa !191
  %indvars.iv.next307.3 = add nsw i64 %indvars.iv306, 4 ; 2 uses
  %exitcond310.not.3 = icmp eq i64 %indvars.iv.next307.3, %i.bw
  br i1 %exitcond310.not.3, label %.loopexit, label %scalar.ph387, !llvm.loop !1735

default.unreachable:                              ; preds = %bb.av
  unreachable

.loopexit:                                        ; preds = %scalar.ph387.prol.loopexit, %scalar.ph387, %scalar.ph421.prol.loopexit, %scalar.ph421, %scalar.ph457.prol.loopexit, %scalar.ph457, %middle.block396, %middle.block432, %middle.block468, %.preheader261, %.preheader258, %.preheader
  %i.na = load i32, ptr %i.ck, align 8, !tbaa !191 ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.nc = icmp sgt i32 %i.na, 1
  br i1 %i.nc, label %.lr.ph289, label %js_bigint_logic.exit

.lr.ph289:                                        ; preds = %.loopexit, %bb.ax
  %.0.i.i288 = phi i32 [ %i.nm, %bb.ax ], [ %i.na, %.loopexit ] ; 5 uses
  %i.nd = zext nneg i32 %.0.i.i288 to i64
  %i.ne = getelementptr [4 x i8], ptr %i.nb, i64 %i.nd ; 2 uses
  %i.nf = getelementptr i8, ptr %i.ne, i64 -4
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !191 ; 2 uses
  %i.nh = add i32 %i.ng, -1
  %or.cond.i.i = icmp ult i32 %i.nh, -2
  br i1 %or.cond.i.i, label %._crit_edge, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph289
  %i.ni = and i32 %i.ng, 1
  %i.nj = getelementptr i8, ptr %i.ne, i64 -8
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !191
  %i.nl = lshr i32 %i.nk, 31
  %.not.i.i = icmp eq i32 %i.ni, %i.nl
  br i1 %.not.i.i, label %bb.ax, label %._crit_edge

bb.ax:                                            ; preds = %bb.aw
  %i.nm = add nsw i32 %.0.i.i288, -1
  %i.nn = icmp sgt i32 %.0.i.i288, 2
  br i1 %i.nn, label %.lr.ph289, label %._crit_edge, !llvm.loop !140

._crit_edge:                                      ; preds = %bb.ax, %.lr.ph289, %bb.aw
  %.0.i.i.lcssa = phi i32 [ %.0.i.i288, %bb.aw ], [ 1, %bb.ax ], [ %.0.i.i288, %.lr.ph289 ] ; 3 uses
  %.not21.i.i = icmp eq i32 %.0.i.i.lcssa, %i.na
  br i1 %.not21.i.i, label %js_bigint_logic.exit, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge
  store i32 %.0.i.i.lcssa, ptr %i.ck, align 8, !tbaa !191
  %i.no = zext nneg i32 %.0.i.i.lcssa to i64
  %i.np = shl nuw nsw i64 %i.no, 2
  %i.nq = add nuw nsw i64 %i.np, 4
  %i.nr = load ptr, ptr %i.bz, align 8, !tbaa !232
  %i.ns = tail call ptr @js_realloc_rt(ptr noundef %i.nr, ptr noundef nonnull %i.ck, i64 noundef %i.nq), !inline_history !1736 ; 2 uses
  %.not.i183 = icmp eq ptr %i.ns, null
  br i1 %.not.i183, label %bb.az, label %js_bigint_logic.exit, !prof !192

bb.az:                                            ; preds = %bb.ay
  %i.nt = load ptr, ptr %i.bz, align 8, !tbaa !232
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 1256 ; 3 uses
  %i.nv = load i8, ptr %i.nu, align 8, !tbaa !233, !range !234, !noundef !235
  %i.nw = trunc nuw i8 %i.nv to i1
  br i1 %i.nw, label %js_bigint_logic.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i8 1, ptr %i.nu, align 8, !tbaa !233
  %i.nx = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !1737 ; 0 uses
  store i8 0, ptr %i.nu, align 8, !tbaa !233
  br label %js_bigint_logic.exit

bb.bb:                                            ; preds = %bb.aj, %bb.aj
  %i.ny = load i32, ptr %.0135, align 4, !tbaa !191 ; 2 uses
  %i.nz = icmp eq i32 %i.ny, 1
  %i.oa = getelementptr inbounds nuw i8, ptr %.0135, i64 4 ; 2 uses
  br i1 %i.nz, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !191
  br label %js_bigint_get_si_sat.exit

bb.bd:                                            ; preds = %bb.bb
  %i.oc = add i32 %i.ny, -1
  %i.od = zext i32 %i.oc to i64
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %i.od
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !191
  %.not.i156 = icmp sgt i32 %i.of, -1
  %..i = select i1 %.not.i156, i32 2147483647, i32 -2147483648
  br label %js_bigint_get_si_sat.exit

js_bigint_get_si_sat.exit:                        ; preds = %bb.bc, %bb.bd
  %.0.i157 = phi i32 [ %i.ob, %bb.bc ], [ %..i, %bb.bd ]
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %.0.i157, i32 -2147483647) ; 2 uses
  %i.og = icmp eq i32 %2, 159
  %i.oh = sub nsw i32 0, %spec.store.select
  %.1132 = select i1 %i.og, i32 %i.oh, i32 %spec.store.select ; 3 uses
  %i.oi = icmp sgt i32 %.1132, -1
  br i1 %i.oi, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %js_bigint_get_si_sat.exit
  %i.oj = call fastcc ptr @js_bigint_shl(ptr noundef %0, ptr noundef %.0136, i32 noundef %.1132)
  br label %js_bigint_logic.exit

bb.bf:                                            ; preds = %js_bigint_get_si_sat.exit
  %i.ok = sub nsw i32 0, %.1132                   ; 7 uses
  %i.ol = lshr i32 %i.ok, 5                       ; 4 uses
  %i.om = and i32 %i.ok, 31
  %i.on = getelementptr inbounds nuw i8, ptr %.0136, i64 4 ; 3 uses
  %i.oo = load i32, ptr %.0136, align 4, !tbaa !191 ; 3 uses
  %i.op = add i32 %i.oo, -1
  %i.oq = zext i32 %i.op to i64
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.oq
  %i.os = load i32, ptr %i.or, align 4, !tbaa !191
  %.neg253 = ashr i32 %i.os, 31                   ; 3 uses
  %.not.i158 = icmp ult i32 %i.ol, %i.oo
  br i1 %.not.i158, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ot = tail call fastcc ptr @js_bigint_new_si(ptr noundef %0, i32 noundef %.neg253), !inline_history !1738
  br label %js_bigint_logic.exit

bb.bh:                                            ; preds = %bb.bf
  %i.ou = sub nuw i32 %i.oo, %i.ol                ; 7 uses
  %i.ov = tail call fastcc ptr @js_bigint_new(ptr noundef %0, i32 noundef %i.ou), !inline_history !1738 ; 13 uses
  %6 = ptrtoaddr ptr %i.ov to i64
  %.not36.i = icmp eq ptr %i.ov, null
  br i1 %.not36.i, label %js_bigint_logic.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ow = icmp eq i32 %i.om, 0
  br i1 %i.ow, label %.preheader264, label %bb.bj

.preheader264:                                    ; preds = %bb.bi
  %i.ox = icmp sgt i32 %i.ou, 0
  br i1 %i.ox, label %.lr.ph, label %js_bigint_logic.exit

.lr.ph:                                           ; preds = %.preheader264
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 4 ; 6 uses
  %i.oz = zext nneg i32 %i.ol to i64              ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ou to i64   ; 5 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.oz ; 6 uses
  %min.iters.check = icmp ult i32 %i.ou, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.pa = shl nuw nsw i64 %i.oz, 2
  %i.pb = add i64 %i.pa, %.0136363
  %i.pc = sub i64 %i.pb, %6
  %diff.check = icmp ugt i64 %i.pc, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  %wide.load = load <4 x i32>, ptr %i.pd, align 4, !tbaa !191
  %wide.load364 = load <4 x i32>, ptr %i.pe, align 4, !tbaa !191
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %index ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  store <4 x i32> %wide.load, ptr %i.pf, align 4, !tbaa !191
  store <4 x i32> %wide.load364, ptr %i.pg, align 4, !tbaa !191
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ph = icmp eq i64 %index.next, %n.vec
  br i1 %i.ph, label %middle.block, label %vector.body, !llvm.loop !1739

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %js_bigint_logic.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter478 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod479.not = icmp eq i64 %xtraiter478, 0
  br i1 %lcmp.mod479.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter480 = phi i64 [ %prol.iter480.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.pi = load i32, ptr %gep.prol, align 4, !tbaa !191
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv.prol
  store i32 %i.pi, ptr %i.pj, align 4, !tbaa !191
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter480.next = add i64 %prol.iter480, 1   ; 2 uses
  %prol.iter480.cmp.not = icmp eq i64 %prol.iter480.next, %xtraiter478
  br i1 %prol.iter480.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1740

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.pk = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.pl = icmp ugt i64 %i.pk, -4
  br i1 %i.pl, label %js_bigint_logic.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.pm = load i32, ptr %gep, align 4, !tbaa !191
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv
  store i32 %i.pm, ptr %i.pn, align 4, !tbaa !191
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.po = load i32, ptr %gep.1, align 4, !tbaa !191
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv.next
  store i32 %i.po, ptr %i.pp, align 4, !tbaa !191
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.pq = load i32, ptr %gep.2, align 4, !tbaa !191
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv.next.1
  store i32 %i.pq, ptr %i.pr, align 4, !tbaa !191
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.ps = load i32, ptr %gep.3, align 4, !tbaa !191
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv.next.2
  store i32 %i.ps, ptr %i.pt, align 4, !tbaa !191
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %js_bigint_logic.exit, label %scalar.ph, !llvm.loop !1741

bb.bj:                                            ; preds = %bb.bi
  %i.pu = zext nneg i32 %i.ol to i64
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.pu ; 5 uses
  %i.pw = icmp sgt i32 %i.ou, 0
  br i1 %i.pw, label %.lr.ph.i, label %js_mp_shr.exit

.lr.ph.i:                                         ; preds = %bb.bj
  %i.px = zext nneg i32 %i.ou to i64              ; 3 uses
  %xtraiter = and i64 %i.px, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.prol.preheader ], [ %i.px, %.lr.ph.i ] ; 2 uses
  %.016.i.prol = phi i32 [ %i.pz, %.prol.preheader ], [ %.neg253, %.lr.ph.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, -1 ; 3 uses
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %indvars.iv.next.i.prol
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !191 ; 3 uses
  %i.qa = tail call i32 @llvm.fshr.i32(i32 %.016.i.prol, i32 %i.pz, i32 %i.ok)
  %i.qb = getelementptr [4 x i8], ptr %i.ov, i64 %indvars.iv.i.prol
  store i32 %i.qa, ptr %i.qb, align 4, !tbaa !191
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1742

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ %i.px, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.preheader ]
  %.016.i.unr = phi i32 [ %.neg253, %.lr.ph.i ], [ %i.pz, %.prol.preheader ]
  %i.qc = icmp ult i32 %i.ou, 4
  br i1 %i.qc, label %js_mp_shr.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 6 uses
  %.016.i = phi i32 [ %i.qq, %.lr.ph.i.new ], [ %.016.i.unr, %.prol.loopexit ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %indvars.iv.next.i
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !191 ; 2 uses
  %i.qf = tail call i32 @llvm.fshr.i32(i32 %.016.i, i32 %i.qe, i32 %i.ok)
  %i.qg = getelementptr [4 x i8], ptr %i.ov, i64 %indvars.iv.i
  store i32 %i.qf, ptr %i.qg, align 4, !tbaa !191
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %indvars.iv.next.i.1
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !191 ; 2 uses
  %i.qj = tail call i32 @llvm.fshr.i32(i32 %i.qe, i32 %i.qi, i32 %i.ok)
  %i.qk = getelementptr [4 x i8], ptr %i.ov, i64 %indvars.iv.next.i
  store i32 %i.qj, ptr %i.qk, align 4, !tbaa !191
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, -3 ; 2 uses
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %indvars.iv.next.i.2
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !191 ; 2 uses
  %i.qn = tail call i32 @llvm.fshr.i32(i32 %i.qi, i32 %i.qm, i32 %i.ok)
  %i.qo = getelementptr [4 x i8], ptr %i.ov, i64 %indvars.iv.next.i.1
  store i32 %i.qn, ptr %i.qo, align 4, !tbaa !191
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4 ; 2 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %indvars.iv.next.i.3
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !191 ; 2 uses
  %i.qr = tail call i32 @llvm.fshr.i32(i32 %i.qm, i32 %i.qq, i32 %i.ok)
  %i.qs = getelementptr [4 x i8], ptr %i.ov, i64 %indvars.iv.next.i.2
  store i32 %i.qr, ptr %i.qs, align 4, !tbaa !191
  %i.qt = icmp sgt i64 %indvars.iv.i, 4
  br i1 %i.qt, label %.lr.ph.i.new, label %js_mp_shr.exit, !llvm.loop !1743

js_mp_shr.exit:                                   ; preds = %.prol.loopexit, %.lr.ph.i.new, %bb.bj
  %i.qu = tail call fastcc ptr @js_bigint_normalize(ptr noundef %0, ptr noundef %i.ov), !inline_history !1738
  br label %js_bigint_logic.exit

bb.bk:                                            ; preds = %bb.aj
  tail call void @abort() #50
  unreachable

js_bigint_logic.exit:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ay, %bb.ba, %bb.az, %.loopexit, %.preheader264, %bb.au, %bb.at, %bb.al, %js_mp_shr.exit, %bb.bh, %bb.bg, %._crit_edge, %bb.be
  %.1134 = phi ptr [ %i.ck, %._crit_edge ], [ %i.oj, %bb.be ], [ %i.qu, %js_mp_shr.exit ], [ %i.ns, %bb.ay ], [ %i.ot, %bb.bg ], [ null, %bb.bh ], [ null, %bb.au ], [ null, %bb.al ], [ null, %bb.at ], [ %i.ov, %.preheader264 ], [ %i.ck, %.loopexit ], [ %i.ck, %bb.az ], [ %i.ck, %bb.ba ], [ %i.ov, %middle.block ], [ %i.ov, %scalar.ph ], [ %i.ov, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !232 ; 3 uses
  %i.qx = trunc i64 %.sroa.12.0 to i32
  %i.qy = icmp ugt i32 %i.qx, -10
  br i1 %i.qy, label %bb.bl, label %JS_FreeValueRT.exit180

bb.bl:                                            ; preds = %js_bigint_logic.exit
  %i.qz = inttoptr i64 %.sroa.082.sroa.0.0 to ptr
  %i.ra = getelementptr inbounds i8, ptr %i.qz, i64 -4 ; 2 uses
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !191 ; 2 uses
  %i.rc = add nsw i32 %i.rb, -1
  store i32 %i.rc, ptr %i.ra, align 4, !tbaa !191
  %i.rd = icmp slt i32 %i.rb, 2
  br i1 %i.rd, label %bb.bm, label %JS_FreeValueRT.exit180

bb.bm:                                            ; preds = %bb.bl
  tail call fastcc void @js_free_value_rt(ptr noundef %i.qw, i64 %.sroa.082.sroa.0.0, i64 %.sroa.12.0), !inline_history !370
  %.pre332 = load ptr, ptr %i.qv, align 8, !tbaa !232
  br label %JS_FreeValueRT.exit180

JS_FreeValueRT.exit180:                           ; preds = %js_bigint_logic.exit, %bb.bl, %bb.bm
  %i.re = phi ptr [ %i.qw, %js_bigint_logic.exit ], [ %i.qw, %bb.bl ], [ %.pre332, %bb.bm ]
  %i.rf = trunc i64 %.sroa.13.0 to i32
  %i.rg = icmp ugt i32 %i.rf, -10
  br i1 %i.rg, label %bb.bn, label %JS_FreeValueRT.exit181

bb.bn:                                            ; preds = %JS_FreeValueRT.exit180
  %i.rh = inttoptr i64 %.sroa.064.sroa.0.0 to ptr
  %i.ri = getelementptr inbounds i8, ptr %i.rh, i64 -4 ; 2 uses
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !191 ; 2 uses
  %i.rk = add nsw i32 %i.rj, -1
  store i32 %i.rk, ptr %i.ri, align 4, !tbaa !191
  %i.rl = icmp slt i32 %i.rj, 2
  br i1 %i.rl, label %bb.bo, label %JS_FreeValueRT.exit181

bb.bo:                                            ; preds = %bb.bn
  tail call fastcc void @js_free_value_rt(ptr noundef %i.re, i64 %.sroa.064.sroa.0.0, i64 %.sroa.13.0), !inline_history !370
  br label %JS_FreeValueRT.exit181

JS_FreeValueRT.exit181:                           ; preds = %JS_FreeValueRT.exit180, %bb.bn, %bb.bo
  %.not154 = icmp eq ptr %.1134, null
  br i1 %.not154, label %JS_FreeValueRT.exit, label %bb.bp

bb.bp:                                            ; preds = %JS_FreeValueRT.exit181
  %i.rm = load i32, ptr %.1134, align 4, !tbaa !191
  %i.rn = icmp eq i32 %i.rm, 1
  br i1 %i.rn, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ro = getelementptr inbounds nuw i8, ptr %.1134, i64 4
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !191
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.rp to i64
  %i.rq = load ptr, ptr %i.qv, align 8, !tbaa !232
  tail call void @js_free_rt(ptr noundef %i.rq, ptr noundef nonnull %.1134)
end_hunk_0
begin_hunk_1_@js_typed_array_slice:bb.a
js_dup.exit.i149.preheader:                       ; preds = %bb.n, %bb.m
  br label %js_dup.exit.i149

js_dup.exit.i149:                                 ; preds = %js_dup.exit.i149.preheader, %bb.s
  %.sroa.09.0.in.i.i150 = phi i64 [ %i.cc, %bb.s ], [ %i.br, %js_dup.exit.i149.preheader ] ; 3 uses
  %.sroa.6.0.i.i151 = phi i64 [ %i.cd, %bb.s ], [ %i.bn, %js_dup.exit.i149.preheader ] ; 2 uses
  %i.by = trunc i64 %.sroa.6.0.i.i151 to i32
  switch i32 %i.by, label %bb.s [
    i32 0, label %bb.o
    i32 1, label %bb.o
    i32 2, label %bb.o
    i32 3, label %bb.o
    i32 6, label %JS_FreeValue.exit
    i32 8, label %bb.p
  ]

bb.o:                                             ; preds = %js_dup.exit.i149, %js_dup.exit.i149, %js_dup.exit.i149, %js_dup.exit.i149
  %.sroa.09.0.extract.trunc.i.i166 = trunc i64 %.sroa.09.0.in.i.i150 to i32
  br label %bb.t

bb.p:                                             ; preds = %js_dup.exit.i149
  %.sroa.09.0.le.i.i152 = bitcast i64 %.sroa.09.0.in.i.i150 to double ; 4 uses
  %i.bz = fcmp uno double %.sroa.09.0.le.i.i152, 0.000000e+00
  br i1 %i.bz, label %.thread26.i165, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = fcmp olt double %.sroa.09.0.le.i.i152, f0xC1E0000000000000
  br i1 %i.ca, label %.thread.i162, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.inv.i.i153 = fcmp oge double %.sroa.09.0.le.i.i152, f0x41DFFFFFFFC00000
  %spec.select16.i.i154 = select i1 %.inv.i.i153, double f0x41DFFFFFFFC00000, double %.sroa.09.0.le.i.i152
  %spec.select.i.i155 = fptosi double %spec.select16.i.i154 to i32
  br label %bb.t

bb.s:                                             ; preds = %js_dup.exit.i149
  %i.cb = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.09.0.in.i.i150, i64 %.sroa.6.0.i.i151, i32 noundef 0), !inline_history !72 ; 2 uses
  %i.cc = extractvalue { i64, i64 } %i.cb, 0
  %i.cd = extractvalue { i64, i64 } %i.cb, 1      ; 2 uses
  %i.ce = and i64 %i.cd, 4294967295
  %i.cf = icmp eq i64 %i.ce, 6
  br i1 %i.cf, label %JS_FreeValue.exit, label %js_dup.exit.i149

bb.t:                                             ; preds = %bb.r, %bb.o
  %.1.sink.i.ph.i156 = phi i32 [ %.sroa.09.0.extract.trunc.i.i166, %bb.o ], [ %spec.select.i.i155, %bb.r ] ; 3 uses
  %i.cg = icmp slt i32 %.1.sink.i.ph.i156, 0
  br i1 %i.cg, label %.thread.i162, label %.thread26.i165

.thread.i162:                                     ; preds = %bb.t, %bb.q
  %.1.sink.i.ph25.i163 = phi i32 [ %.1.sink.i.ph.i156, %bb.t ], [ -2147483648, %bb.q ]
  %i.ch = add nsw i32 %.1.sink.i.ph25.i163, %i.ar
  %spec.store.select.i164 = tail call i32 @llvm.smax.i32(i32 %i.ch, i32 0)
  br label %JS_ToInt32Clamp.exit167.thread

.thread26.i165:                                   ; preds = %bb.p, %bb.t
  %.1185 = phi i32 [ %.1.sink.i.ph.i156, %bb.t ], [ 0, %bb.p ]
  %spec.select212 = tail call i32 @llvm.smin.i32(i32 %.1185, i32 %i.ar)
  br label %JS_ToInt32Clamp.exit167.thread

JS_ToInt32Clamp.exit167.thread:                   ; preds = %.thread26.i165, %.thread.i162, %.sink.split.i
  %.0184 = phi i32 [ %i.ar, %.sink.split.i ], [ %spec.select212, %.thread26.i165 ], [ %spec.store.select.i164, %.thread.i162 ]
  %i.ci = sub nsw i32 %.0184, %.1187.ph           ; 2 uses
  %..i = tail call noundef i32 @llvm.smax.i32(i32 %i.ci, i32 0) ; 5 uses
  store i64 %1, ptr %5, align 16, !tbaa !218
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !240
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.0.0.insert.ext.i = zext nneg i32 %..i to i64
  store i64 %.sroa.0.0.insert.ext.i, ptr %i.cj, align 16, !tbaa !218
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %.sroa.418.0..sroa_idx, align 8, !tbaa !240
  %i.ck = call fastcc { i64, i64 } @js_typed_array___speciesCreate(ptr noundef %0, i32 noundef 2, ptr noundef %5, i1 noundef zeroext true) ; 2 uses
  %i.cl = extractvalue { i64, i64 } %i.ck, 0      ; 14 uses
  %i.cm = extractvalue { i64, i64 } %i.ck, 1      ; 14 uses
  %i.cn = and i64 %i.cm, 4294967295               ; 2 uses
  %i.co = icmp eq i64 %i.cn, 6
  br i1 %i.co, label %JS_ToInt32Clamp.exit, label %bb.u

bb.u:                                             ; preds = %JS_ToInt32Clamp.exit167.thread
  %.not = icmp slt i32 %i.ci, 1
  br i1 %.not, label %JS_FreeValue.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cp = load i16, ptr %i.c, align 2, !tbaa !276 ; 2 uses
  %i.cq = add i16 %i.cp, -22
  %i.cr = icmp ult i16 %i.cq, 12
  br i1 %i.cr, label %get_typed_array.exit.i, label %validate_typed_array.exit

get_typed_array.exit.i:                           ; preds = %bb.v
  %i.cs = load ptr, ptr %i.h, align 8, !tbaa !218 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !509
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !218 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !512
  %.not.i6.i = icmp eq i8 %i.cy, 0
  br i1 %.not.i6.i, label %bb.w, label %validate_typed_array.exit

bb.w:                                             ; preds = %get_typed_array.exit.i
  %i.cz = load i32, ptr %i.cw, align 8, !tbaa !448 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.db = load i32, ptr %i.da, align 8, !tbaa !513 ; 2 uses
  %i.dc = icmp ugt i32 %i.db, %i.cz
  br i1 %i.dc, label %validate_typed_array.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !514, !range !234, !noundef !235
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dg = sext i32 %i.cz to i64                   ; 2 uses
  %i.dh = zext i32 %i.db to i64                   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cs, i64 36
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !515
  %i.dk = zext i32 %i.dj to i64
  %i.dl = add nuw nsw i64 %i.dk, %i.dh
  %i.dm = icmp sgt i64 %i.dl, %i.dg
  br i1 %i.dm, label %validate_typed_array.exit, label %typed_array_is_oob.exit.i

typed_array_is_oob.exit.i:                        ; preds = %bb.y
  %i.dn = zext nneg i16 %i.cp to i64
  %i.do = getelementptr i8, ptr @typed_array_size_log2, i64 %i.dn
  %i.dp = getelementptr i8, ptr %i.do, i64 -22
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !218
  %i.dr = zext nneg i8 %i.dq to i32
  %i.ds = shl nuw i32 1, %i.dr
  %i.dt = load i32, ptr %i.as, align 8, !tbaa !218
  %i.du = zext i32 %i.dt to i64
  %i.dv = sext i32 %i.ds to i64
  %i.dw = mul nsw i64 %i.dv, %i.du
  %i.dx = add nsw i64 %i.dw, %i.dh
  %i.dy = icmp sgt i64 %i.dx, %i.dg
  br i1 %i.dy, label %validate_typed_array.exit, label %bb.z

validate_typed_array.exit:                        ; preds = %bb.v, %get_typed_array.exit.i, %bb.w, %bb.y, %typed_array_is_oob.exit.i
  %.str.966.sink.i = phi ptr [ @.str.966, %bb.v ], [ @.str.967, %typed_array_is_oob.exit.i ], [ @.str.967, %bb.y ], [ @.str.967, %bb.w ], [ @.str.967, %get_typed_array.exit.i ]
  %i.dz = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull %.str.966.sink.i) ; 0 uses
  br label %JS_ToInt32Clamp.exit

bb.z:                                             ; preds = %typed_array_is_oob.exit.i, %bb.x
  %i.ea = call fastcc i32 @validate_typed_array(ptr noundef %0, i64 %i.cl, i64 %i.cm)
  %.not135 = icmp eq i32 %i.ea, 0
  br i1 %.not135, label %bb.aa, label %JS_ToInt32Clamp.exit

bb.aa:                                            ; preds = %bb.z
  %i.eb = load i32, ptr %i.as, align 8, !tbaa !218 ; 2 uses
  %.not136 = icmp eq i32 %i.ar, %i.eb
  br i1 %.not136, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  %.not.i169 = icmp eq i64 %i.cn, 4294967295
  br i1 %.not.i169, label %bb.ac, label %get_typed_array.exit171.thread

bb.ac:                                            ; preds = %bb.ab
  %i.ec = inttoptr i64 %i.cl to ptr               ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 18
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !276 ; 3 uses
  %i.ef = add i16 %i.ee, -22
  %i.eg = icmp ult i16 %i.ef, 12
  br i1 %i.eg, label %get_typed_array.exit171, label %get_typed_array.exit171.thread

get_typed_array.exit171.thread:                   ; preds = %bb.ab, %bb.ac
  %i.eh = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.966) ; 0 uses
  %.pre237 = load i32, ptr %i.as, align 8, !tbaa !218
  br label %bb.ah

get_typed_array.exit171:                          ; preds = %bb.ac
  %i.ei = load i16, ptr %i.c, align 2, !tbaa !276
  %i.ej = icmp eq i16 %i.ei, %i.ee
  br i1 %i.ej, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %get_typed_array.exit171
  %i.ek = getelementptr i8, ptr %i.ec, i64 48
  %.val146 = load ptr, ptr %i.ek, align 8, !tbaa !218
  %i.el = getelementptr i8, ptr %.val146, i64 36
  %.val146.val = load i32, ptr %i.el, align 4, !tbaa !515
  %i.em = zext nneg i16 %i.ee to i64
  %i.en = getelementptr i8, ptr @typed_array_size_log2, i64 %i.em
  %i.eo = getelementptr i8, ptr %i.en, i64 -22
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !218
  %i.eq = zext nneg i8 %i.ep to i32               ; 4 uses
  %i.er = lshr i32 %.val146.val, %i.eq
  %.not138 = icmp ult i32 %i.er, %..i
  br i1 %.not138, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.val144 = load ptr, ptr %i.h, align 8, !tbaa !218
  %i.es = getelementptr i8, ptr %.val144, i64 36
  %.val144.val = load i32, ptr %i.es, align 4, !tbaa !515
  %i.et = lshr i32 %.val144.val, %i.eq
  %i.eu = add nsw i32 %..i, %.1187.ph
  %.not139 = icmp ult i32 %i.et, %i.eu
  br i1 %.not139, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !218 ; 2 uses
  %6 = ptrtoaddr ptr %i.ew to i64
  %i.ex = shl i32 %.1187.ph, %i.eq
  %i.ey = sext i32 %i.ex to i64                   ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %i.ew, i64 %i.ey ; 10 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ec, i64 56
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !218 ; 11 uses
  %7 = ptrtoaddr ptr %i.fb to i64
  %i.fc = shl i32 %..i, %i.eq                     ; 5 uses
  %i.fd = icmp ugt ptr %i.fb, %i.ez
  %i.fe = sext i32 %i.fc to i64                   ; 2 uses
  %i.ff = getelementptr inbounds i8, ptr %i.ez, i64 %i.fe
  %i.fg = icmp ult ptr %i.fb, %i.ff
  %or.cond = select i1 %i.fd, i1 %i.fg, i1 false
  br i1 %or.cond, label %.preheader, label %bb.ag

.preheader:                                       ; preds = %bb.af
  %i.fh = icmp sgt i32 %i.fc, 0
  br i1 %i.fh, label %iter.check, label %JS_FreeValue.exit

iter.check:                                       ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.fc to i64   ; 8 uses
  %min.iters.check = icmp ult i32 %i.fc, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.fi = add i64 %6, %i.ey
  %i.fj = sub i64 %i.fi, %7
  %diff.check = icmp ugt i64 %i.fj, -32
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check264 = icmp ult i32 %i.fc, 32
  br i1 %min.iters.check264, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fk = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ez, i64 %index ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %wide.load = load <16 x i8>, ptr %i.fl, align 1, !tbaa !218
  %wide.load265 = load <16 x i8>, ptr %i.fm, align 1, !tbaa !218
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fb, i64 %index ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store <16 x i8> %wide.load, ptr %i.fn, align 1, !tbaa !218
  store <16 x i8> %wide.load265, ptr %i.fo, align 1, !tbaa !218
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fp = icmp eq i64 %index.next, %n.vec
  br i1 %i.fp, label %middle.block, label %vector.body, !llvm.loop !2240

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %JS_FreeValue.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fk, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !785

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec266 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index267 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next269, %vec.epilog.vector.body ] ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ez, i64 %index267
  %wide.load268 = load <4 x i8>, ptr %i.fq, align 1, !tbaa !218
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fb, i64 %index267
  store <4 x i8> %wide.load268, ptr %i.fr, align 1, !tbaa !218
  %index.next269 = add nuw i64 %index267, 4       ; 2 uses
  %i.fs = icmp eq i64 %index.next269, %n.vec266
  br i1 %i.fs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2241

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n270 = icmp eq i64 %n.vec266, %wide.trip.count
  br i1 %cmp.n270, label %JS_FreeValue.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec266, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv.prol
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !218
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fb, i64 %indvars.iv.prol
  store i8 %i.fu, ptr %i.fv, align 1, !tbaa !218
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !2242

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.fw = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.fx = icmp ugt i64 %i.fw, -4
  br i1 %i.fx, label %JS_FreeValue.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !218
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fb, i64 %indvars.iv
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !218
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv.next
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !218
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fb, i64 %indvars.iv.next
  store i8 %i.gc, ptr %i.gd, align 1, !tbaa !218
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv.next.1
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !218
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fb, i64 %indvars.iv.next.1
  store i8 %i.gf, ptr %i.gg, align 1, !tbaa !218
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv.next.2
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !218
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fb, i64 %indvars.iv.next.2
  store i8 %i.gi, ptr %i.gj, align 1, !tbaa !218
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %JS_FreeValue.exit, label %.lr.ph, !llvm.loop !2243

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.fb, ptr align 1 %i.ez, i64 %i.fe, i1 false)
  br label %JS_FreeValue.exit

bb.ah:                                            ; preds = %get_typed_array.exit171.thread, %get_typed_array.exit171, %bb.ad, %bb.ae, %bb.aa
  %i.gk = phi i32 [ %.pre237, %get_typed_array.exit171.thread ], [ %i.ar, %get_typed_array.exit171 ], [ %i.ar, %bb.ad ], [ %i.ar, %bb.ae ], [ %i.eb, %bb.aa ]
  %i.gl = sub i32 %i.gk, %.1187.ph                ; 2 uses
  %.not223 = icmp slt i32 %i.gl, 1
  br i1 %.not223, label %JS_FreeValue.exit, label %.lr.ph222.preheader

.lr.ph222.preheader:                              ; preds = %bb.ah
  %i.gm = call i32 @llvm.umin.i32(i32 %..i, i32 %i.gl)
  %wide.trip.count235 = zext nneg i32 %i.gm to i64
  br label %.lr.ph222

bb.ai:                                            ; preds = %bb.aj
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 1 ; 2 uses
  %exitcond236.not = icmp eq i64 %indvars.iv.next233, %wide.trip.count235
  br i1 %exitcond236.not, label %JS_FreeValue.exit, label %.lr.ph222, !llvm.loop !2244

.lr.ph222:                                        ; preds = %.lr.ph222.preheader, %bb.ai
  %indvars.iv232 = phi i64 [ 0, %.lr.ph222.preheader ], [ %indvars.iv.next233, %bb.ai ] ; 3 uses
  %i.gn = trunc i64 %indvars.iv232 to i32
  %i.go = add i32 %.1187.ph, %i.gn
  %.sroa.0.0.insert.ext.i174 = zext i32 %i.go to i64
  %i.gp = call fastcc { i64, i64 } @JS_GetPropertyValue(ptr noundef %0, i64 %1, i64 %2, i64 %.sroa.0.0.insert.ext.i174, i64 0) ; 2 uses
  %i.gq = extractvalue { i64, i64 } %i.gp, 1      ; 2 uses
  %i.gr = and i64 %i.gq, 4294967295
  %i.gs = icmp eq i64 %i.gr, 6
  br i1 %i.gs, label %JS_ToInt32Clamp.exit, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph222
  %i.gt = extractvalue { i64, i64 } %i.gp, 0
  %i.gu = call fastcc i32 @JS_SetPropertyValue(ptr noundef %0, i64 %i.cl, i64 %i.cm, i64 %indvars.iv232, i64 0, i64 %i.gt, i64 %i.gq, i32 noundef 16384)
  %i.gv = icmp slt i32 %i.gu, 0
  br i1 %i.gv, label %JS_ToInt32Clamp.exit, label %bb.ai

JS_ToInt32Clamp.exit:                             ; preds = %bb.aj, %.lr.ph222, %validate_typed_array.exit, %bb.z, %JS_ToInt32Clamp.exit167.thread
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !232
  %i.gy = trunc i64 %i.cm to i32
  %i.gz = icmp ugt i32 %i.gy, -10
  br i1 %i.gz, label %bb.ak, label %JS_FreeValue.exit

bb.ak:                                            ; preds = %JS_ToInt32Clamp.exit
  %i.ha = inttoptr i64 %i.cl to ptr
  %i.hb = getelementptr inbounds i8, ptr %i.ha, i64 -4 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !191 ; 2 uses
  %i.hd = add nsw i32 %i.hc, -1
  store i32 %i.hd, ptr %i.hb, align 4, !tbaa !191
  %i.he = icmp slt i32 %i.hc, 2
  br i1 %i.he, label %bb.al, label %JS_FreeValue.exit

bb.al:                                            ; preds = %bb.ak
  call fastcc void @js_free_value_rt(ptr noundef %i.gx, i64 %i.cl, i64 %i.cm), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %js_dup.exit.i, %bb.k, %bb.s, %js_dup.exit.i149, %.lr.ph.prol.loopexit, %.lr.ph, %bb.ai, %middle.block, %vec.epilog.middle.block, %.preheader, %bb.ah, %bb.al, %bb.ak, %JS_ToInt32Clamp.exit, %get_typed_array.exit.thread, %bb.u, %bb.ag, %typed_array_is_oob.exit.thread
  %.sroa.5124.0 = phi i64 [ 0, %typed_array_is_oob.exit.thread ], [ %i.cl, %bb.u ], [ 0, %get_typed_array.exit.thread ], [ %i.cl, %bb.ag ], [ %i.cl, %bb.ai ], [ %i.cl, %bb.ah ], [ 0, %bb.al ], [ 0, %JS_ToInt32Clamp.exit ], [ 0, %bb.ak ], [ %i.cl, %.preheader ], [ %i.cl, %middle.block ], [ %i.cl, %.lr.ph.prol.loopexit ], [ 0, %bb.s ], [ %i.cl, %vec.epilog.middle.block ], [ %i.cl, %.lr.ph ], [ 0, %js_dup.exit.i149 ], [ 0, %bb.k ], [ 0, %js_dup.exit.i ]
  %.sroa.7.0 = phi i64 [ 6, %typed_array_is_oob.exit.thread ], [ %i.cm, %bb.u ], [ 6, %get_typed_array.exit.thread ], [ %i.cm, %bb.ag ], [ %i.cm, %bb.ai ], [ %i.cm, %bb.ah ], [ 6, %bb.al ], [ 6, %JS_ToInt32Clamp.exit ], [ 6, %bb.ak ], [ %i.cm, %.preheader ], [ %i.cm, %middle.block ], [ %i.cm, %.lr.ph.prol.loopexit ], [ 6, %bb.s ], [ %i.cm, %vec.epilog.middle.block ], [ %i.cm, %.lr.ph ], [ 6, %js_dup.exit.i149 ], [ 6, %bb.k ], [ 6, %js_dup.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.5124.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.7.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_typed_array_subarray(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %5 = alloca [4 x %struct.JSValue], align 16     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  %i.a = and i64 %2, 4294967295
  %.not.i = icmp eq i64 %i.a, 4294967295
  br i1 %.not.i, label %bb.b, label %get_typed_array.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 18 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !276
  %i.e = add i16 %i.d, -22
  %i.f = icmp ult i16 %i.e, 12
  br i1 %i.f, label %get_typed_array.exit, label %get_typed_array.exit.thread

get_typed_array.exit.thread:                      ; preds = %bb.a, %bb.b
  %i.g = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.966) ; 0 uses
  br label %JS_ToInt32Clamp.exit

get_typed_array.exit:                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !218  ; 5 uses
  %i.k = load i64, ptr %4, align 8                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = trunc i64 %i.m to i32
  %i.o = icmp ugt i32 %i.n, -10
  br i1 %i.o, label %bb.c, label %js_dup.exit.i.preheader

end_hunk_1
