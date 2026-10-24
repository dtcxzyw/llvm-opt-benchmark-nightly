Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/hbitmap?download=true
inline.NumInlined: 39
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@hbitmap_truncate:bb.a
  %i.p = shl i64 %i.k, %i.d                       ; 2 uses
  %.not = icmp eq i64 %i.p, %i.o
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 853, ptr noundef nonnull @__PRETTY_FUNCTION__.hbitmap_truncate) #11
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = sub i64 %i.p, %i.o
  tail call void @hbitmap_reset(ptr noundef nonnull %.tr82, i64 noundef %i.o, i64 noundef %i.q)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  store i64 %i.h, ptr %i.j, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.tr82, i64 96 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.tr82, i64 40 ; 2 uses
  %i.t = add nuw nsw i64 %i.h, 63
  %i.u = lshr i64 %i.t, 6
  %i.v = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1) ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.tr82, i64 144 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = icmp eq i64 %i.x, %i.v
  br i1 %i.y, label %bb.ac, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %i.v, ptr %i.w, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.tr82, i64 88 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call ptr @g_realloc_n(ptr noundef %i.aa, i64 noundef %i.v, i64 noundef 8) #12 ; 2 uses
  store ptr %i.ab, ptr %i.z, align 8
  br i1 %i.l, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.x
  %i.ad = sub i64 %i.v, %i.x
  %i.ae = shl i64 %i.ad, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ac, i8 noundef 0, i64 noundef %i.ae, i1 noundef false) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.af = add nuw nsw i64 %i.v, 63
  %i.ag = lshr i64 %i.af, 6                       ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr82, i64 136 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8            ; 3 uses
  %i.aj = icmp eq i64 %i.ai, %i.ag
  br i1 %i.aj, label %bb.ac, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 %i.ag, ptr %i.ah, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr82, i64 80 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call ptr @g_realloc_n(ptr noundef %i.al, i64 noundef %i.ag, i64 noundef 8) #12 ; 2 uses
  store ptr %i.am, ptr %i.ak, align 8
  br i1 %i.l, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ai
  %i.ao = sub i64 %i.ag, %i.ai
  %i.ap = shl i64 %i.ao, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.an, i8 noundef 0, i64 noundef %i.ap, i1 noundef false) #12
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aq = add nuw nsw i64 %i.ag, 63
  %i.ar = lshr i64 %i.aq, 6                       ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.tr82, i64 128 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8            ; 3 uses
  %i.au = icmp eq i64 %i.at, %i.ar
  br i1 %i.au, label %bb.ac, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i64 %i.ar, ptr %i.as, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.tr82, i64 72 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call ptr @g_realloc_n(ptr noundef %i.aw, i64 noundef %i.ar, i64 noundef 8) #12 ; 2 uses
  store ptr %i.ax, ptr %i.av, align 8
  br i1 %i.l, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.at
  %i.az = sub i64 %i.ar, %i.at
  %i.ba = shl i64 %i.az, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ay, i8 noundef 0, i64 noundef %i.ba, i1 noundef false) #12
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bb = add nuw nsw i64 %i.ar, 63
  %i.bc = lshr i64 %i.bb, 6                       ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.tr82, i64 120 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8            ; 3 uses
  %i.bf = icmp eq i64 %i.be, %i.bc
  br i1 %i.bf, label %bb.ac, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i64 %i.bc, ptr %i.bd, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.tr82, i64 64 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call ptr @g_realloc_n(ptr noundef %i.bh, i64 noundef %i.bc, i64 noundef 8) #12 ; 2 uses
  store ptr %i.bi, ptr %i.bg, align 8
  br i1 %i.l, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.be
  %i.bk = sub i64 %i.bc, %i.be
  %i.bl = shl i64 %i.bk, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.bj, i8 noundef 0, i64 noundef %i.bl, i1 noundef false) #12
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bm = add nuw nsw i64 %i.bc, 63
  %i.bn = lshr i64 %i.bm, 6                       ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.tr82, i64 112 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8            ; 3 uses
  %i.bq = icmp eq i64 %i.bp, %i.bn
  br i1 %i.bq, label %bb.ac, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i64 %i.bn, ptr %i.bo, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %.tr82, i64 56 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = tail call ptr @g_realloc_n(ptr noundef %i.bs, i64 noundef %i.bn, i64 noundef 8) #12 ; 2 uses
  store ptr %i.bt, ptr %i.br, align 8
  br i1 %i.l, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bp
  %i.bv = sub i64 %i.bn, %i.bp
  %i.bw = shl i64 %i.bv, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.bu, i8 noundef 0, i64 noundef %i.bw, i1 noundef false) #12
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bx = add nuw nsw i64 %i.bn, 63
  %i.by = lshr i64 %i.bx, 6                       ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr82, i64 104 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8            ; 3 uses
  %i.cb = icmp eq i64 %i.ca, %i.by
  br i1 %i.cb, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i64 %i.by, ptr %i.bz, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %.tr82, i64 48 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = tail call ptr @g_realloc_n(ptr noundef %i.cd, i64 noundef %i.by, i64 noundef 8) #12 ; 2 uses
  store ptr %i.ce, ptr %i.cc, align 8
  br i1 %i.l, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ca
  %i.cg = sub i64 %i.by, %i.ca
  %i.ch = shl i64 %i.cg, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.cf, i8 noundef 0, i64 noundef %i.ch, i1 noundef false) #12
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ci = load i64, ptr %i.r, align 8             ; 3 uses
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i64 1, ptr %i.r, align 8
  %i.ck = load ptr, ptr %i.s, align 8
  %i.cl = tail call ptr @g_realloc(ptr noundef %i.ck, i64 noundef 8) #12 ; 2 uses
  store ptr %i.cl, ptr %i.s, align 8
  br i1 %i.l, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.ci
  %i.cn = shl i64 %i.ci, 3
  %i.co = sub i64 8, %i.cn
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.cm, i8 noundef 0, i64 noundef %i.co, i1 noundef false) #12
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.z, %bb.w, %bb.t, %bb.q, %bb.n, %bb.k, %bb.h
  %i.cp = getelementptr inbounds nuw i8, ptr %.tr82, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8            ; 2 uses
  %.not79 = icmp eq ptr %i.cq, null
  br i1 %.not79, label %bb.ad, label %tailrecurse

tailrecurse:                                      ; preds = %bb.ac
  %i.cr = load i64, ptr %i.j, align 8
  %i.cs = load i32, ptr %i.b, align 8
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = shl i64 %i.cr, %i.ct                    ; 2 uses
  %i.cv = icmp sgt i64 %i.cu, -1
  br i1 %i.cv, label %.lr.ph, label %tailrecurse._crit_edge

bb.ad:                                            ; preds = %bb.ac, %bb.c
  ret void
}

declare ptr @g_realloc(ptr noundef, i64 noundef) local_unnamed_addr #6

declare ptr @g_realloc_n(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @hbitmap_merge(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.HBitmapIter, align 8        ; 15 uses
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = load i64, ptr %2, align 8
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 906, ptr noundef nonnull @__PRETTY_FUNCTION__.hbitmap_merge) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8
  %i.e = icmp eq i64 %i.d, %i.a
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 907, ptr noundef nonnull @__PRETTY_FUNCTION__.hbitmap_merge) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl i64 %i.g, %i.j                       ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  %i.l = icmp eq ptr %2, %1                       ; 3 uses
  %or.cond = and i1 %i.l, %.not
  br i1 %or.cond, label %hbitmap_sparse_merge.exit68, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl i64 %i.n, %i.q                       ; 2 uses
  %.not52 = icmp eq i64 %i.r, 0
  %i.s = icmp eq ptr %2, %0                       ; 3 uses
  %or.cond59 = and i1 %i.s, %.not52
  br i1 %or.cond59, label %hbitmap_sparse_merge.exit68, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = or i64 %i.r, %i.k
  %brmerge.demorgan.not = icmp eq i64 %i.t, 0
  br i1 %brmerge.demorgan.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.y = load i64, ptr %i.x, align 8
  %i.z = shl i64 %i.y, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.w, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #12
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = shl i64 %i.ad, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ab, i8 noundef 0, i64 noundef %i.ae, i1 noundef false) #12
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = shl i64 %i.ai, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ag, i8 noundef 0, i64 noundef %i.aj, i1 noundef false) #12
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = shl i64 %i.an, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.al, i8 noundef 0, i64 noundef %i.ao, i1 noundef false) #12
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = shl i64 %i.as, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.aq, i8 noundef 0, i64 noundef %i.at, i1 noundef false) #12
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = shl i64 %i.ax, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.av, i8 noundef 0, i64 noundef %i.ay, i1 noundef false) #12
  %i.az = load ptr, ptr %i.u, align 8
  store i64 -9223372036854775808, ptr %i.az, align 8
  br label %hbitmap_sparse_merge.exit68.sink.split

bb.i:                                             ; preds = %bb.g
  %.not55 = icmp eq i32 %i.i, %i.p
  br i1 %.not55, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %or.cond60 = or i1 %i.s, %i.l
  br i1 %or.cond60, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = shl i64 %i.be, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.bc, i8 noundef 0, i64 noundef %i.bf, i1 noundef false) #12
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = shl i64 %i.bj, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.bh, i8 noundef 0, i64 noundef %i.bk, i1 noundef false) #12
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = shl i64 %i.bo, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.bm, i8 noundef 0, i64 noundef %i.bp, i1 noundef false) #12
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = shl i64 %i.bt, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.br, i8 noundef 0, i64 noundef %i.bu, i1 noundef false) #12
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = shl i64 %i.by, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.bw, i8 noundef 0, i64 noundef %i.bz, i1 noundef false) #12
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = shl i64 %i.cd, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.cb, i8 noundef 0, i64 noundef %i.ce, i1 noundef false) #12
  %i.cf = load ptr, ptr %i.ba, align 8
  store i64 -9223372036854775808, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.cg, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %i.s, label %hbitmap_sparse_merge.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %4 = load i64, ptr %0, align 8                  ; 2 uses
  %or.cond.i10.i = icmp sgt i64 %4, -1
  br i1 %or.cond.i10.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.o, %bb.m
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 279, ptr noundef nonnull @__PRETTY_FUNCTION__.hbitmap_next_dirty_area) #11
  unreachable

.lr.ph.i:                                         ; preds = %bb.m, %bb.o
  %i.ch = phi i64 [ %i.cp, %bb.o ], [ %4, %bb.m ] ; 4 uses
  %storemerge11.i = phi i64 [ %spec.select.i.i, %bb.o ], [ 0, %bb.m ] ; 3 uses
  %.not.i.i = icmp slt i64 %storemerge11.i, %i.ch
  br i1 %.not.i.i, label %bb.n, label %hbitmap_sparse_merge.exit

bb.n:                                             ; preds = %.lr.ph.i
  %i.ci = sub nuw nsw i64 %i.ch, %storemerge11.i
  %i.cj = tail call i64 @hbitmap_next_dirty(ptr noundef nonnull %0, i64 noundef %storemerge11.i, i64 noundef %i.ci) ; 5 uses
  %i.ck = icmp slt i64 %i.cj, 0
  br i1 %i.ck, label %hbitmap_sparse_merge.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cl = sub nsw i64 %i.ch, %i.cj
  %i.cm = tail call i64 @hbitmap_next_zero(ptr noundef nonnull %0, i64 noundef %i.cj, i64 noundef %i.cl) ; 2 uses
  %i.cn = icmp slt i64 %i.cm, 0
  %spec.select.i.i = select i1 %i.cn, i64 %i.ch, i64 %i.cm ; 3 uses
  %i.co = sub nsw i64 %spec.select.i.i, %i.cj
  tail call void @hbitmap_set(ptr noundef nonnull %2, i64 noundef %i.cj, i64 noundef %i.co)
  %i.cp = load i64, ptr %0, align 8               ; 2 uses
  %i.cq = or i64 %i.cp, %spec.select.i.i
  %or.cond.i.i = icmp sgt i64 %i.cq, -1
  br i1 %or.cond.i.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !25

hbitmap_sparse_merge.exit:                        ; preds = %bb.n, %.lr.ph.i, %bb.l
  br i1 %i.l, label %hbitmap_sparse_merge.exit68, label %bb.p

bb.p:                                             ; preds = %hbitmap_sparse_merge.exit
  %i.cr = load i64, ptr %1, align 8               ; 2 uses
  %or.cond.i10.i61 = icmp sgt i64 %i.cr, -1
  br i1 %or.cond.i10.i61, label %.lr.ph.i63, label %._crit_edge.i62

._crit_edge.i62:                                  ; preds = %bb.r, %bb.p
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 279, ptr noundef nonnull @__PRETTY_FUNCTION__.hbitmap_next_dirty_area) #11
  unreachable

.lr.ph.i63:                                       ; preds = %bb.p, %bb.r
  %i.cs = phi i64 [ %i.da, %bb.r ], [ %i.cr, %bb.p ] ; 4 uses
  %storemerge11.i64 = phi i64 [ %spec.select.i.i66, %bb.r ], [ 0, %bb.p ] ; 3 uses
  %.not.i.i65 = icmp slt i64 %storemerge11.i64, %i.cs
  br i1 %.not.i.i65, label %bb.q, label %hbitmap_sparse_merge.exit68

bb.q:                                             ; preds = %.lr.ph.i63
  %i.ct = sub nuw nsw i64 %i.cs, %storemerge11.i64
  %i.cu = tail call i64 @hbitmap_next_dirty(ptr noundef nonnull %1, i64 noundef %storemerge11.i64, i64 noundef %i.ct) ; 5 uses
  %i.cv = icmp slt i64 %i.cu, 0
  br i1 %i.cv, label %hbitmap_sparse_merge.exit68, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cw = sub nsw i64 %i.cs, %i.cu
  %i.cx = tail call i64 @hbitmap_next_zero(ptr noundef nonnull %1, i64 noundef %i.cu, i64 noundef %i.cw) ; 2 uses
  %i.cy = icmp slt i64 %i.cx, 0
  %spec.select.i.i66 = select i1 %i.cy, i64 %i.cs, i64 %i.cx ; 3 uses
  %i.cz = sub nsw i64 %spec.select.i.i66, %i.cu
  tail call void @hbitmap_set(ptr noundef nonnull %2, i64 noundef %i.cu, i64 noundef %i.cz)
  %i.da = load i64, ptr %1, align 8               ; 2 uses
  %i.db = or i64 %i.da, %spec.select.i.i66
  %or.cond.i.i67 = icmp sgt i64 %i.db, -1
  br i1 %or.cond.i.i67, label %.lr.ph.i63, label %._crit_edge.i62, !llvm.loop !25

bb.s:                                             ; preds = %bb.i
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dd = load i64, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = icmp eq i64 %i.dd, %i.df
  br i1 %i.dg, label %.preheader70, label %bb.t

.preheader70:                                     ; preds = %bb.s
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8
  %.not74 = icmp eq i64 %i.dm, 0
  br i1 %.not74, label %._crit_edge, label %.lr.ph

bb.t:                                             ; preds = %bb.s
  tail call void @__assert_fail(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 936, ptr noundef nonnull @__PRETTY_FUNCTION__.hbitmap_merge) #11
  unreachable

.lr.ph:                                           ; preds = %.preheader70
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 88
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %bb.u
  %.072 = phi i64 [ 0, %.lr.ph ], [ %i.dz, %bb.u ] ; 4 uses
  %i.dq = load ptr, ptr %i.dn, align 8
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.072
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = load ptr, ptr %i.do, align 8
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %.072
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = or i64 %i.dv, %i.ds
  %i.dx = load ptr, ptr %i.dp, align 8
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %.072
  store i64 %i.dw, ptr %i.dy, align 8
  %i.dz = add nuw i64 %.072, 1                    ; 2 uses
  %i.ea = load i64, ptr %i.dl, align 8
  %i.eb = icmp ult i64 %i.dz, %i.ea
  br i1 %i.eb, label %bb.u, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.u, %.preheader70
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8
  %.not74.1 = icmp eq i64 %i.ed, 0
  br i1 %.not74.1, label %._crit_edge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %._crit_edge
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 80
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph.1
  %.072.1 = phi i64 [ 0, %.lr.ph.1 ], [ %i.eq, %bb.v ] ; 4 uses
  %i.eh = load ptr, ptr %i.ee, align 8
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.072.1
  %i.ej = load i64, ptr %i.ei, align 8
  %i.ek = load ptr, ptr %i.ef, align 8
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %.072.1
  %i.em = load i64, ptr %i.el, align 8
  %i.en = or i64 %i.em, %i.ej
  %i.eo = load ptr, ptr %i.eg, align 8
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.072.1
  store i64 %i.en, ptr %i.ep, align 8
  %i.eq = add nuw i64 %.072.1, 1                  ; 2 uses
  %i.er = load i64, ptr %i.ec, align 8
  %i.es = icmp ult i64 %i.eq, %i.er
  br i1 %i.es, label %bb.v, label %._crit_edge.1, !llvm.loop !26

._crit_edge.1:                                    ; preds = %bb.v, %._crit_edge
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8
  %.not74.2 = icmp eq i64 %i.eu, 0
  br i1 %.not74.2, label %._crit_edge.2, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %._crit_edge.1
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 72
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.2
  %.072.2 = phi i64 [ 0, %.lr.ph.2 ], [ %i.fh, %bb.w ] ; 4 uses
  %i.ey = load ptr, ptr %i.ev, align 8
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %.072.2
  %i.fa = load i64, ptr %i.ez, align 8
  %i.fb = load ptr, ptr %i.ew, align 8
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %.072.2
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = or i64 %i.fd, %i.fa
  %i.ff = load ptr, ptr %i.ex, align 8
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %.072.2
  store i64 %i.fe, ptr %i.fg, align 8
  %i.fh = add nuw i64 %.072.2, 1                  ; 2 uses
  %i.fi = load i64, ptr %i.et, align 8
  %i.fj = icmp ult i64 %i.fh, %i.fi
  br i1 %i.fj, label %bb.w, label %._crit_edge.2, !llvm.loop !26

._crit_edge.2:                                    ; preds = %bb.w, %._crit_edge.1
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8
  %.not74.3 = icmp eq i64 %i.fl, 0
  br i1 %.not74.3, label %._crit_edge.3, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %._crit_edge.2
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.3
  %.072.3 = phi i64 [ 0, %.lr.ph.3 ], [ %i.fy, %bb.x ] ; 4 uses
  %i.fp = load ptr, ptr %i.fm, align 8
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %.072.3
  %i.fr = load i64, ptr %i.fq, align 8
  %i.fs = load ptr, ptr %i.fn, align 8
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %.072.3
  %i.fu = load i64, ptr %i.ft, align 8
  %i.fv = or i64 %i.fu, %i.fr
  %i.fw = load ptr, ptr %i.fo, align 8
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %.072.3
  store i64 %i.fv, ptr %i.fx, align 8
  %i.fy = add nuw i64 %.072.3, 1                  ; 2 uses
  %i.fz = load i64, ptr %i.fk, align 8
  %i.ga = icmp ult i64 %i.fy, %i.fz
  br i1 %i.ga, label %bb.x, label %._crit_edge.3, !llvm.loop !26

._crit_edge.3:                                    ; preds = %bb.x, %._crit_edge.2
end_hunk_0
