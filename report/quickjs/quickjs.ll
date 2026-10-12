Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 180
begin_hunk_0_@ss_check:bb.a
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !191
  %.not62 = icmp slt i32 %i.aa, %i.ab
  br i1 %.not62, label %js_resize_array.exit.thread, label %js_resize_array.exit, !prof !325

js_resize_array.exit:                             ; preds = %bb.k
  %i.ac = add nsw i32 %i.aa, 1
  %i.ad = tail call fastcc i32 @js_realloc_array(ptr noundef %0, ptr noundef nonnull %i.x, i32 noundef 4, ptr noundef nonnull %i.y, i32 noundef %i.ac), !inline_history !90
  %.not57 = icmp eq i32 %i.ad, 0
  br i1 %.not57, label %js_resize_array.exit.js_resize_array.exit.thread_crit_edge, label %bb.l

js_resize_array.exit.js_resize_array.exit.thread_crit_edge: ; preds = %js_resize_array.exit
  %.pre = load i32, ptr %i.z, align 8, !tbaa !901
  br label %js_resize_array.exit.thread

js_resize_array.exit.thread:                      ; preds = %js_resize_array.exit.js_resize_array.exit.thread_crit_edge, %bb.k
  %i.ae = phi i32 [ %.pre, %js_resize_array.exit.js_resize_array.exit.thread_crit_edge ], [ %i.aa, %bb.k ] ; 2 uses
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !898
  %i.ag = add nsw i32 %i.ae, 1
  store i32 %i.ag, ptr %i.z, align 8, !tbaa !901
  %i.ah = sext i32 %i.ae to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ah
  store i32 %2, ptr %i.ai, align 4, !tbaa !191
  br label %bb.l

bb.l:                                             ; preds = %js_resize_array.exit, %bb.i, %js_resize_array.exit.thread, %bb.j, %bb.h, %bb.e, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.e ], [ -1, %bb.h ], [ -1, %bb.j ], [ 0, %js_resize_array.exit.thread ], [ 0, %bb.i ], [ -1, %js_resize_array.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_bigint_asUintN(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #2 {
bb.a:
  %i.a = load i64, ptr %4, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = icmp ugt i32 %i.d, -10
  br i1 %i.e, label %bb.b, label %js_dup.exit.i.i.preheader

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %i.a to ptr
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !191
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 4, !tbaa !191
  br label %js_dup.exit.i.i.preheader

js_dup.exit.i.i.preheader:                        ; preds = %bb.b, %bb.a
  br label %js_dup.exit.i.i

js_dup.exit.i.i:                                  ; preds = %js_dup.exit.i.i.preheader, %bb.f
  %.sroa.012.0.in.i.i.i = phi i64 [ %i.r, %bb.f ], [ %i.a, %js_dup.exit.i.i.preheader ] ; 3 uses
  %.sroa.6.0.i.i.i = phi i64 [ %i.s, %bb.f ], [ %i.c, %js_dup.exit.i.i.preheader ] ; 2 uses
  %i.j = trunc i64 %.sroa.6.0.i.i.i to i32
  switch i32 %i.j, label %bb.f [
    i32 0, label %bb.c
    i32 1, label %bb.c
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 6, label %JS_FreeValue.exit
    i32 8, label %bb.d
  ]

bb.c:                                             ; preds = %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i
  %i.k = shl i64 %.sroa.012.0.in.i.i.i, 32
  %i.l = ashr exact i64 %i.k, 32
  br label %select.unfold.i

bb.d:                                             ; preds = %js_dup.exit.i.i
  %.sroa.012.0.le.i.i.i = bitcast i64 %.sroa.012.0.in.i.i.i to double ; 4 uses
  %i.m = fcmp uno double %.sroa.012.0.le.i.i.i, 0.000000e+00
  br i1 %i.m, label %JS_ToIndex.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = fcmp uge double %.sroa.012.0.le.i.i.i, f0xC3E0000000000000
  %i.o = fcmp ult double %.sroa.012.0.le.i.i.i, f0x43E0000000000000
  %i.p = fptosi double %.sroa.012.0.le.i.i.i to i64
  %or.cond18.i = and i1 %i.n, %i.o
  br i1 %or.cond18.i, label %select.unfold.i, label %.thread.i

bb.f:                                             ; preds = %js_dup.exit.i.i
  %i.q = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.012.0.in.i.i.i, i64 %.sroa.6.0.i.i.i, i32 noundef 0), !inline_history !127 ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = extractvalue { i64, i64 } %i.q, 1        ; 2 uses
  %i.t = and i64 %i.s, 4294967295
  %i.u = icmp eq i64 %i.t, 6
  br i1 %i.u, label %JS_FreeValue.exit, label %js_dup.exit.i.i

select.unfold.i:                                  ; preds = %bb.e, %bb.c
  %.sink.i.i.ph.i = phi i64 [ %i.l, %bb.c ], [ %i.p, %bb.e ] ; 2 uses
  %or.cond.i = icmp ugt i64 %.sink.i.i.ph.i, 9007199254740991
  br i1 %or.cond.i, label %.thread.i, label %JS_ToIndex.exit

.thread.i:                                        ; preds = %select.unfold.i, %bb.e
  %i.v = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.54), !inline_history !745 ; 0 uses
  br label %JS_FreeValue.exit

JS_ToIndex.exit:                                  ; preds = %select.unfold.i, %bb.d
  %.0232 = phi i64 [ 0, %bb.d ], [ %.sink.i.i.ph.i, %select.unfold.i ] ; 12 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = icmp ugt i32 %i.aa, -10
  br i1 %i.ab, label %bb.g, label %JS_ToBigInt.exit

bb.g:                                             ; preds = %JS_ToIndex.exit
  %i.ac = inttoptr i64 %i.x to ptr
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !191
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !191
  br label %JS_ToBigInt.exit

JS_ToBigInt.exit:                                 ; preds = %JS_ToIndex.exit, %bb.g
  %i.ag = tail call fastcc { i64, i64 } @JS_ToBigIntFree(ptr noundef %0, i64 %i.x, i64 %i.z) ; 2 uses
  %i.ah = extractvalue { i64, i64 } %i.ag, 0      ; 11 uses
  %i.ai = extractvalue { i64, i64 } %i.ag, 1      ; 13 uses
  %i.aj = and i64 %i.ai, 4294967295               ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 6
  br i1 %i.ak, label %JS_FreeValue.exit, label %bb.h

bb.h:                                             ; preds = %JS_ToBigInt.exit
  %i.al = icmp eq i64 %.0232, 0
  br i1 %i.al, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !232
  %i.ao = trunc i64 %i.ai to i32
  %i.ap = icmp ugt i32 %i.ao, -10
  br i1 %i.ap, label %bb.j, label %JS_FreeValue.exit

bb.j:                                             ; preds = %bb.i
  %i.aq = inttoptr i64 %i.ah to ptr
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -4 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !191 ; 2 uses
  %i.at = add nsw i32 %i.as, -1
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !191
  %i.au = icmp slt i32 %i.as, 2
  br i1 %i.au, label %bb.k, label %JS_FreeValue.exit

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @js_free_value_rt(ptr noundef %i.an, i64 %i.ah, i64 %i.ai), !inline_history !291
  br label %JS_FreeValue.exit

bb.l:                                             ; preds = %bb.h
  %i.av = icmp eq i64 %i.aj, 7
  br i1 %i.av, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  %.sroa.084.sroa.0.0.extract.trunc = trunc i64 %i.ah to i32 ; 2 uses
  %i.aw = icmp samesign ugt i64 %.0232, 31
  br i1 %i.aw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ax = icmp ne i32 %5, 0
  %i.ay = icmp sgt i32 %.sroa.084.sroa.0.0.extract.trunc, -1
  %or.cond = select i1 %i.ax, i1 true, i1 %i.ay
  br i1 %or.cond, label %JS_FreeValue.exit, label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.az = sub nuw nsw i64 64, %.0232              ; 3 uses
  %sext245 = shl i64 %i.ah, 32
  %i.ba = ashr exact i64 %sext245, 32
  %i.bb = shl i64 %i.ba, %i.az                    ; 2 uses
  %.not197 = icmp eq i32 %5, 0
  %i.bc = ashr exact i64 %i.bb, %i.az
  %i.bd = lshr exact i64 %i.bb, %i.az
  %.0173 = select i1 %.not197, i64 %i.bd, i64 %i.bc
  %.sroa.0.0.insert.ext.i = and i64 %.0173, 4294967295
  br label %JS_FreeValue.exit

bb.p:                                             ; preds = %bb.n
  %i.be = icmp samesign ugt i64 %.0232, 1048576
  br i1 %i.be, label %JS_FreeValue.exit202, label %bb.q

JS_FreeValue.exit202:                             ; preds = %bb.p
  %i.bf = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.143) ; 0 uses
  br label %JS_FreeValue.exit

bb.q:                                             ; preds = %bb.p
  %i.bg = add nuw nsw i64 %.0232, 31
  %i.bh = lshr i64 %i.bg, 5                       ; 2 uses
  %i.bi = trunc nuw nsw i64 %i.bh to i32          ; 3 uses
  %i.bj = tail call fastcc ptr @js_bigint_new(ptr noundef %0, i32 noundef %i.bi) ; 5 uses
  %.not192 = icmp eq ptr %i.bj, null
  br i1 %.not192, label %JS_FreeValue.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !191
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4 ; 2 uses
  store i32 %.sroa.084.sroa.0.0.extract.trunc, ptr %i.bk, align 4, !tbaa !191
  %.not = icmp eq i64 %.0232, 32
  br i1 %.not, label %JS_FreeValue.exit204, label %.lr.ph251.preheader

.lr.ph251.preheader:                              ; preds = %bb.r
  %scevgep = getelementptr i8, ptr %i.bj, i64 8
  %i.bl = tail call i32 @llvm.umax.i32(i32 %i.bi, i32 2)
  %6 = add nsw i32 %i.bl, -1
  %i.bm = zext nneg i32 %6 to i64
  %7 = shl nuw nsw i64 %i.bm, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 -1, i64 %7, i1 false), !tbaa !191
  br label %JS_FreeValue.exit204

JS_FreeValue.exit204:                             ; preds = %.lr.ph251.preheader, %bb.r
  %i.bn = trunc nuw nsw i64 %.0232 to i32
  %i.bo = sub nsw i32 0, %i.bn
  %i.bp = and i32 %i.bo, 31
  %i.bq = shl nuw nsw i64 %i.bh, 32
  %sext = add nsw i64 %i.bq, -4294967296
  %i.br = lshr exact i64 %sext, 30
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !191
  %i.bu = lshr i32 -1, %i.bp
  %i.bv = and i32 %i.bt, %i.bu
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !191
  %i.bw = tail call fastcc ptr @js_bigint_extend(ptr noundef %0, ptr noundef %i.bj, i32 noundef 0) ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not195 = icmp eq ptr %i.bw, null
  br i1 %.not195, label %JS_FreeValue.exit, label %bb.s

bb.s:                                             ; preds = %JS_FreeValue.exit204
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !191
  %i.bz = icmp eq i32 %i.by, 1
  br i1 %i.bz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !191
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.cb to i64
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !232
  tail call void @js_free_rt(ptr noundef %i.cc, ptr noundef nonnull %i.bw)
  br label %JS_FreeValue.exit

bb.u:                                             ; preds = %bb.s
  %i.cd = ptrtoint ptr %i.bw to i64
  br label %JS_FreeValue.exit

bb.v:                                             ; preds = %bb.l
  %i.ce = inttoptr i64 %i.ah to ptr               ; 10 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4 ; 5 uses
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !191 ; 2 uses
  %i.ch = add i32 %i.cg, -1
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !191 ; 2 uses
  %.neg = ashr i32 %i.ck, 31                      ; 4 uses
  %i.cl = zext i32 %i.cg to i64
  %i.cm = shl nuw nsw i64 %i.cl, 5
  %.not184 = icmp samesign ult i64 %.0232, %i.cm
  br i1 %.not184, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cn = icmp eq i32 %5, 0
  %i.co = icmp slt i32 %i.ck, 0
  %or.cond6 = select i1 %i.cn, i1 %i.co, i1 false
  br i1 %or.cond6, label %bb.x, label %JS_FreeValue.exit

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cp = icmp samesign ugt i64 %.0232, 1048576
  br i1 %i.cp, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !232
  %i.cs = trunc i64 %i.ai to i32
  %i.ct = icmp ugt i32 %i.cs, -10
  br i1 %i.ct, label %bb.z, label %JS_FreeValue.exit207

bb.z:                                             ; preds = %bb.y
  %i.cu = getelementptr inbounds i8, ptr %i.ce, i64 -4 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !191 ; 2 uses
  %i.cw = add nsw i32 %i.cv, -1
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !191
  %i.cx = icmp slt i32 %i.cv, 2
  br i1 %i.cx, label %bb.aa, label %JS_FreeValue.exit207

bb.aa:                                            ; preds = %bb.z
  tail call fastcc void @js_free_value_rt(ptr noundef %i.cr, i64 %i.ah, i64 %i.ai), !inline_history !291
  br label %JS_FreeValue.exit207

JS_FreeValue.exit207:                             ; preds = %bb.y, %bb.z, %bb.aa
  %i.cy = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.143) ; 0 uses
  br label %JS_FreeValue.exit

bb.ab:                                            ; preds = %bb.x
  %i.cz = add nuw nsw i64 %.0232, 31
  %i.da = lshr i64 %i.cz, 5
  %i.db = trunc nuw nsw i64 %i.da to i32          ; 3 uses
  %i.dc = tail call fastcc ptr @js_bigint_new(ptr noundef %0, i32 noundef %i.db) ; 6 uses
  %.not185 = icmp eq ptr %i.dc, null
  br i1 %.not185, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !232
  %i.df = trunc i64 %i.ai to i32
  %i.dg = icmp ugt i32 %i.df, -10
  br i1 %i.dg, label %bb.ad, label %JS_FreeValue.exit

bb.ad:                                            ; preds = %bb.ac
  %i.dh = getelementptr inbounds i8, ptr %i.ce, i64 -4 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !191 ; 2 uses
  %i.dj = add nsw i32 %i.di, -1
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !191
  %i.dk = icmp slt i32 %i.di, 2
  br i1 %i.dk, label %bb.ae, label %JS_FreeValue.exit

bb.ae:                                            ; preds = %bb.ad
  tail call fastcc void @js_free_value_rt(ptr noundef %i.de, i64 %i.ah, i64 %i.ai), !inline_history !291
  br label %JS_FreeValue.exit

bb.af:                                            ; preds = %bb.ab
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !191
  %i.dl = add nsw i32 %i.db, -1                   ; 5 uses
  %i.dm = icmp samesign ugt i64 %.0232, 32
  br i1 %i.dm, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.af
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 4 ; 3 uses
  %wide.trip.count = zext i32 %i.dl to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.do = icmp eq i32 %i.dl, 1
  br i1 %i.do, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ak, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.ak ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.ak ]
  %i.dp = load i32, ptr %i.ce, align 4, !tbaa !191
  %i.dq = zext i32 %i.dp to i64
  %i.dr = icmp samesign ult i64 %indvars.iv, %i.dq
  br i1 %i.dr, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !191
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.du = phi i32 [ %i.dt, %bb.ah ], [ %.neg, %bb.ag ]
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !191
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.dw = load i32, ptr %i.ce, align 4, !tbaa !191
  %i.dx = zext i32 %i.dw to i64
  %i.dy = icmp samesign ult i64 %indvars.iv.next, %i.dx
  br i1 %i.dy, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !191
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.eb = phi i32 [ %i.ea, %bb.aj ], [ %.neg, %bb.ai ]
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv.next
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !191
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.ag, !llvm.loop !2119

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ak
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod270 = trunc i32 %i.dl to i1
  tail call void @llvm.assume(i1 %lcmp.mod270)
  %i.ed = load i32, ptr %i.ce, align 4, !tbaa !191
  %i.ee = zext i32 %i.ed to i64
  %i.ef = icmp samesign ult i64 %indvars.iv.epil.init, %i.ee
  br i1 %i.ef, label %bb.al, label %._crit_edge.loopexit.epilog-lcssa

bb.al:                                            ; preds = %.epil.preheader
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.epil.init
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !191
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %bb.al, %.epil.preheader
  %i.ei = phi i32 [ %i.eh, %bb.al ], [ %.neg, %.epil.preheader ]
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv.epil.init
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !191
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.epilog-lcssa, %._crit_edge.loopexit.unr-lcssa, %bb.af
  %i.ek = trunc nuw nsw i64 %.0232 to i32
  %i.el = sub nsw i32 0, %i.ek
  %i.em = and i32 %i.el, 31                       ; 3 uses
  %i.en = load i32, ptr %i.ce, align 4, !tbaa !191
  %i.eo = icmp ult i32 %i.dl, %i.en
  %i.ep = zext nneg i32 %i.dl to i64              ; 2 uses
  br i1 %i.eo, label %bb.am, label %._crit_edge._crit_edge

bb.am:                                            ; preds = %._crit_edge
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ep
end_hunk_0
