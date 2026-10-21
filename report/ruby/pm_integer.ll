Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/pm_integer?download=true
inline.NumInlined: 29
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@llvm.lifetime.end.p0
; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @pm_integer_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i8, ptr %i.a, align 4, !tbaa !26, !range !27, !noundef !28 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1                  ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 20
  %i.e = load i8, ptr %i.d, align 4, !tbaa !26, !range !27, !noundef !28
  %.not = icmp eq i8 %i.b, %i.e
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = select i1 %i.c, i32 -1, i32 1
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %.neg = select i1 %i.c, i32 1, i32 -1           ; 4 uses
  %i.g = select i1 %i.c, i32 -1, i32 1            ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %0, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !25   ; 2 uses
  %i.p = getelementptr i8, ptr %1, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !25   ; 2 uses
  %i.r = icmp ult i32 %i.o, %i.q
  br i1 %i.r, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = icmp ugt i32 %i.o, %i.q
  %. = select i1 %i.s, i32 %i.g, i32 0
  br label %.thread

bb.g:                                             ; preds = %bb.c
  %i.t = load i64, ptr %0, align 8, !tbaa !20     ; 5 uses
  %i.u = load i64, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.v = icmp ult i64 %i.t, %i.u
  br i1 %i.v, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21   ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  %i.z = icmp ugt i64 %i.t, %i.u
  %or.cond = or i1 %i.z, %i.y
  br i1 %or.cond, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.h
  %.not4854.not = icmp eq i64 %i.t, 0
  br i1 %.not4854.not, label %.thread, label %.lr.ph

bb.i:                                             ; preds = %.lr.ph
  %i.aa = add nuw i64 %.056, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %i.t
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !36

.lr.ph:                                           ; preds = %.preheader, %bb.i
  %.056 = phi i64 [ %i.aa, %bb.i ], [ 0, %.preheader ] ; 2 uses
  %.03955 = phi i32 [ %.140, %bb.i ], [ undef, %.preheader ]
  %i.ab = xor i64 %.056, -1
  %i.ac = add i64 %i.t, %i.ab                     ; 2 uses
  %i.ad = getelementptr [4 x i8], ptr %i.i, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !12 ; 3 uses
  %i.af = getelementptr [4 x i8], ptr %i.x, i64 %i.ac
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !12 ; 3 uses
  %.not52 = icmp ult i32 %i.ae, %i.ag
  %.not53 = icmp ugt i32 %i.ae, %i.ag
  %..039 = select i1 %.not53, i32 %i.g, i32 %.03955
  %.140 = select i1 %.not52, i32 %.neg, i32 %..039 ; 2 uses
  %cond1 = icmp eq i32 %i.ae, %i.ag
  br i1 %cond1, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.i, %.lr.ph, %.preheader, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.b
  %.4 = phi i32 [ %i.f, %bb.b ], [ %.neg, %bb.d ], [ %., %bb.f ], [ %.neg, %bb.e ], [ %i.g, %bb.h ], [ %.neg, %bb.g ], [ 0, %.preheader ], [ 0, %bb.i ], [ %.140, %.lr.ph ]
  ret i32 %.4
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define hidden void @pm_integers_reduce(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !20
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !20
  %.not17 = icmp eq i64 %i.b, 0
  br i1 %.not17, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !25   ; 4 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %1, i64 16         ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  switch i32 %i.g, label %.lr.ph [
    i32 1, label %bb.e
    i32 0, label %._crit_edge
  ]

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.021 = phi i32 [ %.01420, %.lr.ph ], [ %i.d, %bb.d ]
  %.01420 = phi i32 [ %i.h, %.lr.ph ], [ %i.g, %bb.d ] ; 3 uses
  %i.h = urem i32 %.021, %.01420                  ; 2 uses
  %.not18 = icmp eq i32 %i.h, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph, !llvm.loop !37

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.0.lcssa = phi i32 [ %i.d, %bb.d ], [ %.01420, %.lr.ph ] ; 2 uses
  %i.i = udiv i32 %i.d, %.0.lcssa
  store i32 %i.i, ptr %i.c, align 8, !tbaa !25
  %i.j = load i32, ptr %i.f, align 8, !tbaa !25
  %i.k = udiv i32 %i.j, %.0.lcssa
  store i32 %i.k, ptr %i.f, align 8, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @pm_integer_string(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.pm_integer_t, align 8       ; 7 uses
  %i.a = getelementptr i8, ptr %1, i64 20
  %i.b = load i8, ptr %i.a, align 4, !tbaa !26, !range !27, !noundef !28
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @pm_buffer_append_byte(ptr noundef %0, i8 noundef zeroext 45) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !25
  tail call void (ptr, ptr, ...) @pm_buffer_append_format(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %i.h) #16
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.i = load i64, ptr %1, align 8, !tbaa !20
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = load i64, ptr %i.e, align 4
  tail call void (ptr, ptr, ...) @pm_buffer_append_format(ptr noundef %0, ptr noundef nonnull @.str.3, i64 noundef %i.k) #16
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call fastcc void @pm_integer_convert_base(ptr noundef nonnull %2, ptr noundef nonnull %1, i64 noundef 4294967296, i64 noundef 1000000000)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21   ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %pm_integer_free.exit, label %bb.h

pm_integer_free.exit:                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !25
  tail call void (ptr, ptr, ...) @pm_buffer_append_format(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %i.p) #16
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.q = load i64, ptr %2, align 8, !tbaa !20     ; 7 uses
  %i.r = mul i64 %i.q, 9                          ; 13 uses
  %i.s = tail call noalias ptr @calloc(i64 noundef %i.r, i64 noundef 1) #15 ; 14 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.j, label %.preheader42

.preheader42:                                     ; preds = %bb.h
  %invariant.gep = getelementptr i8, ptr %i.s, i64 %i.r ; 5 uses
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %.lr.ph47.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader42
  %min.iters.check = icmp ult i64 %i.q, 8
  br i1 %min.iters.check, label %.lr.ph.preheader80, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.u = add i64 %i.q, -1
  %i.v = getelementptr i8, ptr %i.s, i64 %i.r     ; 2 uses
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.u, i64 9) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 9 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.w = sub i64 0, %mul.result
  %i.x = getelementptr i8, ptr %i.s, i64 %i.r     ; 2 uses
  %i.y = sub i64 0, %mul.result
  %i.z = getelementptr i8, ptr %i.s, i64 %i.r     ; 2 uses
  %i.aa = sub i64 0, %mul.result
  %i.ab = getelementptr i8, ptr %i.s, i64 %i.r    ; 2 uses
  %i.ac = sub i64 0, %mul.result
  %i.ad = getelementptr i8, ptr %i.s, i64 %i.r    ; 2 uses
  %i.ae = sub i64 0, %mul.result
  %i.af = getelementptr i8, ptr %i.s, i64 %i.r    ; 2 uses
  %i.ag = sub i64 0, %mul.result
  %i.ah = getelementptr i8, ptr %i.s, i64 %i.r    ; 2 uses
  %i.ai = sub i64 0, %mul.result
  %i.aj = getelementptr i8, ptr %i.s, i64 %i.r    ; 2 uses
  %i.ak = sub i64 0, %mul.result
  %scevgep70.a = getelementptr i8, ptr %i.aj, i64 -8
  %3 = insertelement <8 x ptr> poison, ptr %i.x, i64 0
  %4 = insertelement <8 x ptr> %3, ptr %i.v, i64 1
  %5 = insertelement <8 x ptr> %4, ptr %i.z, i64 2
  %6 = insertelement <8 x ptr> %5, ptr %i.ab, i64 3
  %7 = insertelement <8 x ptr> %6, ptr %i.ad, i64 4
  %8 = insertelement <8 x ptr> %7, ptr %i.af, i64 5
  %9 = insertelement <8 x ptr> %8, ptr %i.ah, i64 6
  %10 = insertelement <8 x ptr> %9, ptr %i.aj, i64 7
  %11 = getelementptr i8, <8 x ptr> %10, <8 x i64> <i64 -2, i64 -1, i64 -3, i64 -4, i64 -5, i64 -6, i64 -7, i64 -8>
  %scevgep69.a = getelementptr i8, ptr %i.ah, i64 -7
  %scevgep68.a = getelementptr i8, ptr %i.af, i64 -6
  %scevgep67 = getelementptr i8, ptr %i.ad, i64 -5
  %scevgep66 = getelementptr i8, ptr %i.ab, i64 -4
  %scevgep65 = getelementptr i8, ptr %i.z, i64 -3
  %scevgep = getelementptr i8, ptr %i.v, i64 -1
  %scevgep64.a = getelementptr i8, ptr %i.x, i64 -2
  %i.al = getelementptr i8, ptr %scevgep, i64 %i.w
  %i.am = getelementptr i8, ptr %scevgep64.a, i64 %i.y
  %i.an = getelementptr i8, ptr %scevgep65, i64 %i.aa
  %i.ao = getelementptr i8, ptr %scevgep66, i64 %i.ac
  %12 = getelementptr i8, ptr %scevgep67, i64 %i.ae
  %13 = getelementptr i8, ptr %scevgep68.a, i64 %i.ag
  %14 = getelementptr i8, ptr %scevgep69.a, i64 %i.ai
  %15 = getelementptr i8, ptr %scevgep70.a, i64 %i.ak
  %i.ap = insertelement <8 x ptr> poison, ptr %i.am, i64 0
  %i.aq = insertelement <8 x ptr> %i.ap, ptr %i.al, i64 1
  %i.ar = insertelement <8 x ptr> %i.aq, ptr %i.an, i64 2
  %i.as = insertelement <8 x ptr> %i.ar, ptr %i.ao, i64 3
  %i.at = insertelement <8 x ptr> %i.as, ptr %12, i64 4
  %i.au = insertelement <8 x ptr> %i.at, ptr %13, i64 5
  %i.av = insertelement <8 x ptr> %i.au, ptr %14, i64 6
  %i.aw = insertelement <8 x ptr> %i.av, ptr %15, i64 7
  %i.ax = icmp ugt <8 x ptr> %i.aw, %11
  %i.ay = getelementptr i8, ptr %i.s, i64 %i.r
  %scevgep71 = getelementptr i8, ptr %i.ay, i64 -9 ; 2 uses
  %i.az = sub i64 0, %mul.result
  %i.ba = getelementptr i8, ptr %scevgep71, i64 %i.az
  %i.bb = icmp ugt ptr %i.ba, %scevgep71
  %i.bc = bitcast <8 x i1> %i.ax to i8
  %i.bd = icmp ne i8 %i.bc, 0
  %op.rdx = or i1 %mul.overflow, %i.bd
  %op.rdx72 = or i1 %op.rdx, %i.bb
  br i1 %op.rdx72, label %.lr.ph.preheader80, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.q, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.be = getelementptr [4 x i8], ptr %i.m, i64 %index
  %wide.load = load <4 x i32>, ptr %i.be, align 4, !tbaa !12 ; 8 uses
  %i.bf = mul i64 %index, -9
  %i.bg = mul i64 %index, -9
  %i.bh = mul i64 %index, -9
  %i.bi = mul i64 %index, -9
  %i.bj = getelementptr i8, ptr %invariant.gep, i64 %i.bf ; 9 uses
  %i.bk = getelementptr i8, ptr %invariant.gep, i64 %i.bg ; 9 uses
  %i.bl = getelementptr i8, ptr %invariant.gep, i64 %i.bh ; 9 uses
  %i.bm = getelementptr i8, ptr %invariant.gep, i64 %i.bi ; 9 uses
  %wide.load.frozen = freeze <4 x i32> %wide.load ; 2 uses
  %i.bn = udiv <4 x i32> %wide.load.frozen, splat (i32 10) ; 2 uses
  %i.bo = mul <4 x i32> %i.bn, splat (i32 10)
  %.decomposed = sub <4 x i32> %wide.load.frozen, %i.bo
  %i.bp = trunc nuw nsw <4 x i32> %.decomposed to <4 x i8>
  %i.bq = or disjoint <4 x i8> %i.bp, splat (i8 48) ; 4 uses
  %i.br = getelementptr i8, ptr %i.bj, i64 -1
  %i.bs = getelementptr i8, ptr %i.bk, i64 -10
  %i.bt = getelementptr i8, ptr %i.bl, i64 -19
  %i.bu = getelementptr i8, ptr %i.bm, i64 -28
  %i.bv = extractelement <4 x i8> %i.bq, i64 0
  store i8 %i.bv, ptr %i.br, align 1, !tbaa !13
  %i.bw = extractelement <4 x i8> %i.bq, i64 1
  store i8 %i.bw, ptr %i.bs, align 1, !tbaa !13
  %i.bx = extractelement <4 x i8> %i.bq, i64 2
  store i8 %i.bx, ptr %i.bt, align 1, !tbaa !13
  %i.by = extractelement <4 x i8> %i.bq, i64 3
  store i8 %i.by, ptr %i.bu, align 1, !tbaa !13
  %i.bz = urem <4 x i32> %i.bn, splat (i32 10)
  %i.ca = trunc nuw nsw <4 x i32> %i.bz to <4 x i8>
  %i.cb = or disjoint <4 x i8> %i.ca, splat (i8 48) ; 4 uses
  %i.cc = getelementptr i8, ptr %i.bj, i64 -2
  %i.cd = getelementptr i8, ptr %i.bk, i64 -11
  %i.ce = getelementptr i8, ptr %i.bl, i64 -20
  %i.cf = getelementptr i8, ptr %i.bm, i64 -29
  %i.cg = extractelement <4 x i8> %i.cb, i64 0
  store i8 %i.cg, ptr %i.cc, align 1, !tbaa !13
  %i.ch = extractelement <4 x i8> %i.cb, i64 1
  store i8 %i.ch, ptr %i.cd, align 1, !tbaa !13
  %i.ci = extractelement <4 x i8> %i.cb, i64 2
  store i8 %i.ci, ptr %i.ce, align 1, !tbaa !13
  %i.cj = extractelement <4 x i8> %i.cb, i64 3
  store i8 %i.cj, ptr %i.cf, align 1, !tbaa !13
  %i.ck = udiv <4 x i32> %wide.load, splat (i32 100)
  %i.cl = urem <4 x i32> %i.ck, splat (i32 10)
  %i.cm = trunc nuw nsw <4 x i32> %i.cl to <4 x i8>
  %i.cn = or disjoint <4 x i8> %i.cm, splat (i8 48) ; 4 uses
  %i.co = getelementptr i8, ptr %i.bj, i64 -3
  %i.cp = getelementptr i8, ptr %i.bk, i64 -12
  %i.cq = getelementptr i8, ptr %i.bl, i64 -21
  %i.cr = getelementptr i8, ptr %i.bm, i64 -30
  %i.cs = extractelement <4 x i8> %i.cn, i64 0
  store i8 %i.cs, ptr %i.co, align 1, !tbaa !13
  %i.ct = extractelement <4 x i8> %i.cn, i64 1
  store i8 %i.ct, ptr %i.cp, align 1, !tbaa !13
  %i.cu = extractelement <4 x i8> %i.cn, i64 2
  store i8 %i.cu, ptr %i.cq, align 1, !tbaa !13
  %i.cv = extractelement <4 x i8> %i.cn, i64 3
  store i8 %i.cv, ptr %i.cr, align 1, !tbaa !13
  %i.cw = udiv <4 x i32> %wide.load, splat (i32 1000)
  %i.cx = urem <4 x i32> %i.cw, splat (i32 10)
  %i.cy = trunc nuw nsw <4 x i32> %i.cx to <4 x i8>
  %i.cz = or disjoint <4 x i8> %i.cy, splat (i8 48) ; 4 uses
  %i.da = getelementptr i8, ptr %i.bj, i64 -4
  %i.db = getelementptr i8, ptr %i.bk, i64 -13
  %i.dc = getelementptr i8, ptr %i.bl, i64 -22
  %i.dd = getelementptr i8, ptr %i.bm, i64 -31
  %i.de = extractelement <4 x i8> %i.cz, i64 0
  store i8 %i.de, ptr %i.da, align 1, !tbaa !13
  %i.df = extractelement <4 x i8> %i.cz, i64 1
  store i8 %i.df, ptr %i.db, align 1, !tbaa !13
  %i.dg = extractelement <4 x i8> %i.cz, i64 2
  store i8 %i.dg, ptr %i.dc, align 1, !tbaa !13
  %i.dh = extractelement <4 x i8> %i.cz, i64 3
  store i8 %i.dh, ptr %i.dd, align 1, !tbaa !13
  %i.di = udiv <4 x i32> %wide.load, splat (i32 10000)
  %i.dj = urem <4 x i32> %i.di, splat (i32 10)
  %i.dk = trunc nuw nsw <4 x i32> %i.dj to <4 x i8>
  %i.dl = or disjoint <4 x i8> %i.dk, splat (i8 48) ; 4 uses
  %i.dm = getelementptr i8, ptr %i.bj, i64 -5
  %i.dn = getelementptr i8, ptr %i.bk, i64 -14
  %i.do = getelementptr i8, ptr %i.bl, i64 -23
  %i.dp = getelementptr i8, ptr %i.bm, i64 -32
  %i.dq = extractelement <4 x i8> %i.dl, i64 0
  store i8 %i.dq, ptr %i.dm, align 1, !tbaa !13
  %i.dr = extractelement <4 x i8> %i.dl, i64 1
  store i8 %i.dr, ptr %i.dn, align 1, !tbaa !13
  %i.ds = extractelement <4 x i8> %i.dl, i64 2
  store i8 %i.ds, ptr %i.do, align 1, !tbaa !13
  %i.dt = extractelement <4 x i8> %i.dl, i64 3
  store i8 %i.dt, ptr %i.dp, align 1, !tbaa !13
  %i.du = udiv <4 x i32> %wide.load, splat (i32 100000)
  %i.dv = trunc nuw <4 x i32> %i.du to <4 x i16>
  %i.dw = urem <4 x i16> %i.dv, splat (i16 10)
  %i.dx = trunc nuw nsw <4 x i16> %i.dw to <4 x i8>
  %i.dy = or disjoint <4 x i8> %i.dx, splat (i8 48) ; 4 uses
  %i.dz = getelementptr i8, ptr %i.bj, i64 -6
  %i.ea = getelementptr i8, ptr %i.bk, i64 -15
  %i.eb = getelementptr i8, ptr %i.bl, i64 -24
  %i.ec = getelementptr i8, ptr %i.bm, i64 -33
  %i.ed = extractelement <4 x i8> %i.dy, i64 0
  store i8 %i.ed, ptr %i.dz, align 1, !tbaa !13
  %i.ee = extractelement <4 x i8> %i.dy, i64 1
  store i8 %i.ee, ptr %i.ea, align 1, !tbaa !13
  %i.ef = extractelement <4 x i8> %i.dy, i64 2
  store i8 %i.ef, ptr %i.eb, align 1, !tbaa !13
  %i.eg = extractelement <4 x i8> %i.dy, i64 3
  store i8 %i.eg, ptr %i.ec, align 1, !tbaa !13
  %i.eh = udiv <4 x i32> %wide.load, splat (i32 1000000)
  %i.ei = trunc nuw nsw <4 x i32> %i.eh to <4 x i16>
  %i.ej = urem <4 x i16> %i.ei, splat (i16 10)
  %i.ek = trunc nuw nsw <4 x i16> %i.ej to <4 x i8>
  %i.el = or disjoint <4 x i8> %i.ek, splat (i8 48) ; 4 uses
  %i.em = getelementptr i8, ptr %i.bj, i64 -7
  %i.en = getelementptr i8, ptr %i.bk, i64 -16
  %i.eo = getelementptr i8, ptr %i.bl, i64 -25
  %i.ep = getelementptr i8, ptr %i.bm, i64 -34
  %i.eq = extractelement <4 x i8> %i.el, i64 0
  store i8 %i.eq, ptr %i.em, align 1, !tbaa !13
  %i.er = extractelement <4 x i8> %i.el, i64 1
  store i8 %i.er, ptr %i.en, align 1, !tbaa !13
  %i.es = extractelement <4 x i8> %i.el, i64 2
  store i8 %i.es, ptr %i.eo, align 1, !tbaa !13
  %i.et = extractelement <4 x i8> %i.el, i64 3
  store i8 %i.et, ptr %i.ep, align 1, !tbaa !13
  %i.eu = udiv <4 x i32> %wide.load, splat (i32 10000000)
  %i.ev = trunc nuw nsw <4 x i32> %i.eu to <4 x i16>
  %i.ew = urem <4 x i16> %i.ev, splat (i16 10)
  %i.ex = trunc nuw nsw <4 x i16> %i.ew to <4 x i8>
  %i.ey = or disjoint <4 x i8> %i.ex, splat (i8 48) ; 4 uses
  %i.ez = getelementptr i8, ptr %i.bj, i64 -8
  %i.fa = getelementptr i8, ptr %i.bk, i64 -17
  %i.fb = getelementptr i8, ptr %i.bl, i64 -26
  %i.fc = getelementptr i8, ptr %i.bm, i64 -35
  %i.fd = extractelement <4 x i8> %i.ey, i64 0
  store i8 %i.fd, ptr %i.ez, align 1, !tbaa !13
  %i.fe = extractelement <4 x i8> %i.ey, i64 1
  store i8 %i.fe, ptr %i.fa, align 1, !tbaa !13
  %i.ff = extractelement <4 x i8> %i.ey, i64 2
  store i8 %i.ff, ptr %i.fb, align 1, !tbaa !13
  %i.fg = extractelement <4 x i8> %i.ey, i64 3
  store i8 %i.fg, ptr %i.fc, align 1, !tbaa !13
  %i.fh = udiv <4 x i32> %wide.load, splat (i32 100000000)
  %i.fi = trunc nuw nsw <4 x i32> %i.fh to <4 x i8>
  %i.fj = urem <4 x i8> %i.fi, splat (i8 10)
  %i.fk = or disjoint <4 x i8> %i.fj, splat (i8 48) ; 4 uses
  %i.fl = getelementptr i8, ptr %i.bj, i64 -9
  %i.fm = getelementptr i8, ptr %i.bk, i64 -18
  %i.fn = getelementptr i8, ptr %i.bl, i64 -27
  %i.fo = getelementptr i8, ptr %i.bm, i64 -36
  %i.fp = extractelement <4 x i8> %i.fk, i64 0
  store i8 %i.fp, ptr %i.fl, align 1, !tbaa !13
  %i.fq = extractelement <4 x i8> %i.fk, i64 1
  store i8 %i.fq, ptr %i.fm, align 1, !tbaa !13
  %i.fr = extractelement <4 x i8> %i.fk, i64 2
  store i8 %i.fr, ptr %i.fn, align 1, !tbaa !13
  %i.fs = extractelement <4 x i8> %i.fk, i64 3
  store i8 %i.fs, ptr %i.fo, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ft = icmp eq i64 %index.next, %n.vec
  br i1 %i.ft, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader80

.lr.ph.preheader80:                               ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %.03745.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %middle.block
  %i.fu = add i64 %i.r, -1                        ; 2 uses
  %.not50 = icmp eq i64 %i.fu, 0
  br i1 %.not50, label %pm_integer_free.exit41, label %.lr.ph47.preheader

.lr.ph47.preheader:                               ; preds = %.preheader42, %.preheader
  %i.fv = phi i64 [ %i.fu, %.preheader ], [ -1, %.preheader42 ] ; 2 uses
  br label %.lr.ph47

.lr.ph:                                           ; preds = %.lr.ph.preheader80, %.lr.ph
  %.03745 = phi i64 [ %i.ha, %.lr.ph ], [ %.03745.ph, %.lr.ph.preheader80 ] ; 3 uses
  %i.fw = getelementptr [4 x i8], ptr %i.m, i64 %.03745
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !12 ; 6 uses
end_hunk_0
