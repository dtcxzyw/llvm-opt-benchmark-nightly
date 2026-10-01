Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/pm_integer?download=true
inline.NumInlined: 29
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@pm_integer_parse:bb.a
  br label %bb.ag

bb.af:                                            ; preds = %pm_integer_parse_digit.exit59, %bb.q
  %.1 = phi i64 [ %.063, %bb.q ], [ %i.as, %pm_integer_parse_digit.exit59 ] ; 2 uses
  %.043 = getelementptr i8, ptr %.04364, i64 1    ; 2 uses
  %exitcond.not = icmp eq ptr %.043, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.q, !llvm.loop !35

._crit_edge:                                      ; preds = %bb.af, %pm_integer_parse_digit.exit
  %.0.lcssa = phi i64 [ %i.ai, %pm_integer_parse_digit.exit ], [ %.1, %bb.af ]
  %i.dp = trunc nuw i64 %.0.lcssa to i32
  %i.dq = getelementptr i8, ptr %0, i64 16
  store i32 %i.dp, ptr %i.dq, align 8, !tbaa !25
  br label %bb.ag

bb.ag:                                            ; preds = %pm_integer_parse_big.exit, %._crit_edge, %.loopexit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

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
  br i1 %min.iters.check, label %.lr.ph.preheader81, label %vector.scevcheck

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
  %scevgep70 = getelementptr i8, ptr %i.aj, i64 -8
  %i.al = insertelement <8 x ptr> poison, ptr %i.x, i64 0
  %i.am = insertelement <8 x ptr> %i.al, ptr %i.v, i64 1
  %i.an = insertelement <8 x ptr> %i.am, ptr %i.z, i64 2
  %i.ao = insertelement <8 x ptr> %i.an, ptr %i.ab, i64 3
  %i.ap = insertelement <8 x ptr> %i.ao, ptr %i.ad, i64 4
  %i.aq = insertelement <8 x ptr> %i.ap, ptr %i.af, i64 5
  %i.ar = insertelement <8 x ptr> %i.aq, ptr %i.ah, i64 6
  %i.as = insertelement <8 x ptr> %i.ar, ptr %i.aj, i64 7
  %i.at = getelementptr i8, <8 x ptr> %i.as, <8 x i64> <i64 -2, i64 -1, i64 -3, i64 -4, i64 -5, i64 -6, i64 -7, i64 -8>
  %scevgep69 = getelementptr i8, ptr %i.ah, i64 -7
  %scevgep68 = getelementptr i8, ptr %i.af, i64 -6
  %scevgep67 = getelementptr i8, ptr %i.ad, i64 -5
  %scevgep66 = getelementptr i8, ptr %i.ab, i64 -4
  %scevgep65 = getelementptr i8, ptr %i.z, i64 -3
  %scevgep = getelementptr i8, ptr %i.v, i64 -1
  %scevgep64 = getelementptr i8, ptr %i.x, i64 -2
  %i.au = getelementptr i8, ptr %scevgep, i64 %i.w
  %i.av = getelementptr i8, ptr %scevgep64, i64 %i.y
  %i.aw = getelementptr i8, ptr %scevgep65, i64 %i.aa
  %i.ax = getelementptr i8, ptr %scevgep66, i64 %i.ac
  %i.ay = getelementptr i8, ptr %scevgep67, i64 %i.ae
  %i.az = getelementptr i8, ptr %scevgep68, i64 %i.ag
  %i.ba = getelementptr i8, ptr %scevgep69, i64 %i.ai
  %i.bb = getelementptr i8, ptr %scevgep70, i64 %i.ak
  %i.bc = insertelement <8 x ptr> poison, ptr %i.av, i64 0
  %i.bd = insertelement <8 x ptr> %i.bc, ptr %i.au, i64 1
  %i.be = insertelement <8 x ptr> %i.bd, ptr %i.aw, i64 2
  %i.bf = insertelement <8 x ptr> %i.be, ptr %i.ax, i64 3
  %i.bg = insertelement <8 x ptr> %i.bf, ptr %i.ay, i64 4
  %i.bh = insertelement <8 x ptr> %i.bg, ptr %i.az, i64 5
  %i.bi = insertelement <8 x ptr> %i.bh, ptr %i.ba, i64 6
  %i.bj = insertelement <8 x ptr> %i.bi, ptr %i.bb, i64 7
  %i.bk = icmp ugt <8 x ptr> %i.bj, %i.at
  %i.bl = getelementptr i8, ptr %i.s, i64 %i.r
  %scevgep71 = getelementptr i8, ptr %i.bl, i64 -9 ; 2 uses
  %i.bm = sub i64 0, %mul.result
  %i.bn = getelementptr i8, ptr %scevgep71, i64 %i.bm
  %i.bo = icmp ugt ptr %i.bn, %scevgep71
  %i.bp = bitcast <8 x i1> %i.bk to i8
  %i.bq = icmp ne i8 %i.bp, 0
  %op.rdx = or i1 %mul.overflow, %i.bq
  %op.rdx73 = or i1 %op.rdx, %i.bo
  br i1 %op.rdx73, label %.lr.ph.preheader81, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.q, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.br = getelementptr [4 x i8], ptr %i.m, i64 %index
  %wide.load = load <4 x i32>, ptr %i.br, align 4, !tbaa !12 ; 8 uses
  %i.bs = mul i64 %index, -9
  %i.bt = mul i64 %index, -9
  %i.bu = mul i64 %index, -9
  %i.bv = mul i64 %index, -9
  %i.bw = getelementptr i8, ptr %invariant.gep, i64 %i.bs ; 9 uses
  %i.bx = getelementptr i8, ptr %invariant.gep, i64 %i.bt ; 9 uses
  %i.by = getelementptr i8, ptr %invariant.gep, i64 %i.bu ; 9 uses
  %i.bz = getelementptr i8, ptr %invariant.gep, i64 %i.bv ; 9 uses
  %wide.load.frozen = freeze <4 x i32> %wide.load ; 2 uses
  %i.ca = udiv <4 x i32> %wide.load.frozen, splat (i32 10) ; 2 uses
  %i.cb = mul <4 x i32> %i.ca, splat (i32 10)
  %.decomposed = sub <4 x i32> %wide.load.frozen, %i.cb
  %i.cc = trunc nuw nsw <4 x i32> %.decomposed to <4 x i8>
  %i.cd = or disjoint <4 x i8> %i.cc, splat (i8 48) ; 4 uses
  %i.ce = getelementptr i8, ptr %i.bw, i64 -1
  %i.cf = getelementptr i8, ptr %i.bx, i64 -10
  %i.cg = getelementptr i8, ptr %i.by, i64 -19
  %i.ch = getelementptr i8, ptr %i.bz, i64 -28
  %i.ci = extractelement <4 x i8> %i.cd, i64 0
  store i8 %i.ci, ptr %i.ce, align 1, !tbaa !13
  %i.cj = extractelement <4 x i8> %i.cd, i64 1
  store i8 %i.cj, ptr %i.cf, align 1, !tbaa !13
  %i.ck = extractelement <4 x i8> %i.cd, i64 2
  store i8 %i.ck, ptr %i.cg, align 1, !tbaa !13
  %i.cl = extractelement <4 x i8> %i.cd, i64 3
  store i8 %i.cl, ptr %i.ch, align 1, !tbaa !13
  %i.cm = urem <4 x i32> %i.ca, splat (i32 10)
  %i.cn = trunc nuw nsw <4 x i32> %i.cm to <4 x i8>
  %i.co = or disjoint <4 x i8> %i.cn, splat (i8 48) ; 4 uses
  %i.cp = getelementptr i8, ptr %i.bw, i64 -2
  %i.cq = getelementptr i8, ptr %i.bx, i64 -11
  %i.cr = getelementptr i8, ptr %i.by, i64 -20
  %i.cs = getelementptr i8, ptr %i.bz, i64 -29
  %i.ct = extractelement <4 x i8> %i.co, i64 0
  store i8 %i.ct, ptr %i.cp, align 1, !tbaa !13
  %i.cu = extractelement <4 x i8> %i.co, i64 1
  store i8 %i.cu, ptr %i.cq, align 1, !tbaa !13
  %i.cv = extractelement <4 x i8> %i.co, i64 2
  store i8 %i.cv, ptr %i.cr, align 1, !tbaa !13
  %i.cw = extractelement <4 x i8> %i.co, i64 3
  store i8 %i.cw, ptr %i.cs, align 1, !tbaa !13
  %i.cx = udiv <4 x i32> %wide.load, splat (i32 100)
  %i.cy = urem <4 x i32> %i.cx, splat (i32 10)
  %i.cz = trunc nuw nsw <4 x i32> %i.cy to <4 x i8>
  %i.da = or disjoint <4 x i8> %i.cz, splat (i8 48) ; 4 uses
  %i.db = getelementptr i8, ptr %i.bw, i64 -3
  %i.dc = getelementptr i8, ptr %i.bx, i64 -12
  %i.dd = getelementptr i8, ptr %i.by, i64 -21
  %i.de = getelementptr i8, ptr %i.bz, i64 -30
  %i.df = extractelement <4 x i8> %i.da, i64 0
  store i8 %i.df, ptr %i.db, align 1, !tbaa !13
  %i.dg = extractelement <4 x i8> %i.da, i64 1
  store i8 %i.dg, ptr %i.dc, align 1, !tbaa !13
  %i.dh = extractelement <4 x i8> %i.da, i64 2
  store i8 %i.dh, ptr %i.dd, align 1, !tbaa !13
  %i.di = extractelement <4 x i8> %i.da, i64 3
  store i8 %i.di, ptr %i.de, align 1, !tbaa !13
  %i.dj = udiv <4 x i32> %wide.load, splat (i32 1000)
  %i.dk = urem <4 x i32> %i.dj, splat (i32 10)
  %i.dl = trunc nuw nsw <4 x i32> %i.dk to <4 x i8>
  %i.dm = or disjoint <4 x i8> %i.dl, splat (i8 48) ; 4 uses
  %i.dn = getelementptr i8, ptr %i.bw, i64 -4
  %i.do = getelementptr i8, ptr %i.bx, i64 -13
  %i.dp = getelementptr i8, ptr %i.by, i64 -22
  %i.dq = getelementptr i8, ptr %i.bz, i64 -31
  %i.dr = extractelement <4 x i8> %i.dm, i64 0
  store i8 %i.dr, ptr %i.dn, align 1, !tbaa !13
  %i.ds = extractelement <4 x i8> %i.dm, i64 1
  store i8 %i.ds, ptr %i.do, align 1, !tbaa !13
  %i.dt = extractelement <4 x i8> %i.dm, i64 2
  store i8 %i.dt, ptr %i.dp, align 1, !tbaa !13
  %i.du = extractelement <4 x i8> %i.dm, i64 3
  store i8 %i.du, ptr %i.dq, align 1, !tbaa !13
  %i.dv = udiv <4 x i32> %wide.load, splat (i32 10000)
  %i.dw = urem <4 x i32> %i.dv, splat (i32 10)
  %i.dx = trunc nuw nsw <4 x i32> %i.dw to <4 x i8>
  %i.dy = or disjoint <4 x i8> %i.dx, splat (i8 48) ; 4 uses
  %i.dz = getelementptr i8, ptr %i.bw, i64 -5
  %i.ea = getelementptr i8, ptr %i.bx, i64 -14
  %i.eb = getelementptr i8, ptr %i.by, i64 -23
  %i.ec = getelementptr i8, ptr %i.bz, i64 -32
  %i.ed = extractelement <4 x i8> %i.dy, i64 0
  store i8 %i.ed, ptr %i.dz, align 1, !tbaa !13
  %i.ee = extractelement <4 x i8> %i.dy, i64 1
  store i8 %i.ee, ptr %i.ea, align 1, !tbaa !13
  %i.ef = extractelement <4 x i8> %i.dy, i64 2
  store i8 %i.ef, ptr %i.eb, align 1, !tbaa !13
  %i.eg = extractelement <4 x i8> %i.dy, i64 3
  store i8 %i.eg, ptr %i.ec, align 1, !tbaa !13
  %i.eh = udiv <4 x i32> %wide.load, splat (i32 100000)
  %i.ei = trunc nuw <4 x i32> %i.eh to <4 x i16>
  %i.ej = urem <4 x i16> %i.ei, splat (i16 10)
  %i.ek = trunc nuw nsw <4 x i16> %i.ej to <4 x i8>
  %i.el = or disjoint <4 x i8> %i.ek, splat (i8 48) ; 4 uses
  %i.em = getelementptr i8, ptr %i.bw, i64 -6
  %i.en = getelementptr i8, ptr %i.bx, i64 -15
  %i.eo = getelementptr i8, ptr %i.by, i64 -24
  %i.ep = getelementptr i8, ptr %i.bz, i64 -33
  %i.eq = extractelement <4 x i8> %i.el, i64 0
  store i8 %i.eq, ptr %i.em, align 1, !tbaa !13
  %i.er = extractelement <4 x i8> %i.el, i64 1
  store i8 %i.er, ptr %i.en, align 1, !tbaa !13
  %i.es = extractelement <4 x i8> %i.el, i64 2
  store i8 %i.es, ptr %i.eo, align 1, !tbaa !13
  %i.et = extractelement <4 x i8> %i.el, i64 3
  store i8 %i.et, ptr %i.ep, align 1, !tbaa !13
  %i.eu = udiv <4 x i32> %wide.load, splat (i32 1000000)
  %i.ev = trunc nuw nsw <4 x i32> %i.eu to <4 x i16>
  %i.ew = urem <4 x i16> %i.ev, splat (i16 10)
  %i.ex = trunc nuw nsw <4 x i16> %i.ew to <4 x i8>
  %i.ey = or disjoint <4 x i8> %i.ex, splat (i8 48) ; 4 uses
  %i.ez = getelementptr i8, ptr %i.bw, i64 -7
  %i.fa = getelementptr i8, ptr %i.bx, i64 -16
  %i.fb = getelementptr i8, ptr %i.by, i64 -25
  %i.fc = getelementptr i8, ptr %i.bz, i64 -34
  %i.fd = extractelement <4 x i8> %i.ey, i64 0
  store i8 %i.fd, ptr %i.ez, align 1, !tbaa !13
  %i.fe = extractelement <4 x i8> %i.ey, i64 1
  store i8 %i.fe, ptr %i.fa, align 1, !tbaa !13
  %i.ff = extractelement <4 x i8> %i.ey, i64 2
  store i8 %i.ff, ptr %i.fb, align 1, !tbaa !13
  %i.fg = extractelement <4 x i8> %i.ey, i64 3
  store i8 %i.fg, ptr %i.fc, align 1, !tbaa !13
  %i.fh = udiv <4 x i32> %wide.load, splat (i32 10000000)
  %i.fi = trunc nuw nsw <4 x i32> %i.fh to <4 x i16>
  %i.fj = urem <4 x i16> %i.fi, splat (i16 10)
  %i.fk = trunc nuw nsw <4 x i16> %i.fj to <4 x i8>
  %i.fl = or disjoint <4 x i8> %i.fk, splat (i8 48) ; 4 uses
  %i.fm = getelementptr i8, ptr %i.bw, i64 -8
  %i.fn = getelementptr i8, ptr %i.bx, i64 -17
  %i.fo = getelementptr i8, ptr %i.by, i64 -26
  %i.fp = getelementptr i8, ptr %i.bz, i64 -35
  %i.fq = extractelement <4 x i8> %i.fl, i64 0
  store i8 %i.fq, ptr %i.fm, align 1, !tbaa !13
  %i.fr = extractelement <4 x i8> %i.fl, i64 1
  store i8 %i.fr, ptr %i.fn, align 1, !tbaa !13
  %i.fs = extractelement <4 x i8> %i.fl, i64 2
  store i8 %i.fs, ptr %i.fo, align 1, !tbaa !13
  %i.ft = extractelement <4 x i8> %i.fl, i64 3
  store i8 %i.ft, ptr %i.fp, align 1, !tbaa !13
  %i.fu = udiv <4 x i32> %wide.load, splat (i32 100000000)
  %i.fv = trunc nuw nsw <4 x i32> %i.fu to <4 x i8>
  %i.fw = urem <4 x i8> %i.fv, splat (i8 10)
  %i.fx = or disjoint <4 x i8> %i.fw, splat (i8 48) ; 4 uses
  %i.fy = getelementptr i8, ptr %i.bw, i64 -9
  %i.fz = getelementptr i8, ptr %i.bx, i64 -18
  %i.ga = getelementptr i8, ptr %i.by, i64 -27
  %i.gb = getelementptr i8, ptr %i.bz, i64 -36
  %i.gc = extractelement <4 x i8> %i.fx, i64 0
  store i8 %i.gc, ptr %i.fy, align 1, !tbaa !13
  %i.gd = extractelement <4 x i8> %i.fx, i64 1
  store i8 %i.gd, ptr %i.fz, align 1, !tbaa !13
  %i.ge = extractelement <4 x i8> %i.fx, i64 2
  store i8 %i.ge, ptr %i.ga, align 1, !tbaa !13
  %i.gf = extractelement <4 x i8> %i.fx, i64 3
  store i8 %i.gf, ptr %i.gb, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gg = icmp eq i64 %index.next, %n.vec
  br i1 %i.gg, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader81

.lr.ph.preheader81:                               ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %.03745.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %middle.block
  %i.gh = add i64 %i.r, -1                        ; 2 uses
  %.not50 = icmp eq i64 %i.gh, 0
  br i1 %.not50, label %pm_integer_free.exit41, label %.lr.ph47.preheader

.lr.ph47.preheader:                               ; preds = %.preheader42, %.preheader
  %i.gi = phi i64 [ %i.gh, %.preheader ], [ -1, %.preheader42 ] ; 2 uses
  br label %.lr.ph47

.lr.ph:                                           ; preds = %.lr.ph.preheader81, %.lr.ph
  %.03745 = phi i64 [ %i.hn, %.lr.ph ], [ %.03745.ph, %.lr.ph.preheader81 ] ; 3 uses
  %i.gj = getelementptr [4 x i8], ptr %i.m, i64 %.03745
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !12 ; 6 uses
  %.neg = mul i64 %.03745, -9
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.neg ; 2 uses
  %i.gl = urem i32 %i.gk, 10
  %i.gm = trunc nuw nsw i32 %i.gl to i8
  %i.gn = or disjoint i8 %i.gm, 48
  %i.go = getelementptr i8, ptr %gep, i64 -1
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !13
  %i.gp = udiv i32 %i.gk, 10000000
  %.lhs.trunc60 = trunc nuw nsw i32 %i.gp to i16
  %i.gq = urem i16 %.lhs.trunc60, 10
  %i.gr = trunc nuw nsw i16 %i.gq to i8
  %i.gs = udiv i32 %i.gk, 100000000
  %.lhs.trunc62 = trunc nuw nsw i32 %i.gs to i8
  %i.gt = urem i8 %.lhs.trunc62, 10
  %i.gu = getelementptr i8, ptr %gep, i64 -9
  %i.gv = insertelement <4 x i32> poison, i32 %i.gk, i64 0
  %i.gw = shufflevector <4 x i32> %i.gv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gx = udiv <4 x i32> %i.gw, <i32 10000, i32 1000, i32 100, i32 10>
  %i.gy = urem <4 x i32> %i.gx, splat (i32 10)
  %i.gz = trunc nuw nsw <4 x i32> %i.gy to <4 x i8>
  %i.ha = udiv i32 %i.gk, 100000
  %.lhs.trunc = trunc nuw i32 %i.ha to i16
  %i.hb = udiv i32 %i.gk, 1000000
  %.lhs.trunc58 = trunc nuw nsw i32 %i.hb to i16
  %i.hc = insertelement <2 x i16> poison, i16 %.lhs.trunc58, i64 0
  %i.hd = insertelement <2 x i16> %i.hc, i16 %.lhs.trunc, i64 1
  %i.he = urem <2 x i16> %i.hd, splat (i16 10)
  %i.hf = insertelement <8 x i8> poison, i8 %i.gt, i64 0
  %i.hg = insertelement <8 x i8> %i.hf, i8 %i.gr, i64 1
  %i.hh = shufflevector <4 x i8> %i.gz, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hi = shufflevector <8 x i8> %i.hg, <8 x i8> %i.hh, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.hj = shufflevector <2 x i16> %i.he, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hk = trunc <8 x i16> %i.hj to <8 x i8>
  %i.hl = shufflevector <8 x i8> %i.hi, <8 x i8> %i.hk, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  %i.hm = or disjoint <8 x i8> %i.hl, splat (i8 48)
  store <8 x i8> %i.hm, ptr %i.gu, align 1, !tbaa !13
  %i.hn = add nuw i64 %.03745, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.hn, %i.q
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !39

.lr.ph47:                                         ; preds = %.lr.ph47.preheader, %bb.i
  %.046 = phi i64 [ %i.hr, %bb.i ], [ 0, %.lr.ph47.preheader ] ; 3 uses
  %i.ho = getelementptr i8, ptr %i.s, i64 %.046
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !13
  %i.hq = icmp eq i8 %i.hp, 48
  br i1 %i.hq, label %bb.i, label %pm_integer_free.exit41

bb.i:                                             ; preds = %.lr.ph47
  %i.hr = add nuw i64 %.046, 1                    ; 2 uses
  %exitcond51.not = icmp eq i64 %i.hr, %i.gi
  br i1 %exitcond51.not, label %pm_integer_free.exit41, label %.lr.ph47, !llvm.loop !40

pm_integer_free.exit41:                           ; preds = %.lr.ph47, %bb.i, %.preheader
  %.0.lcssa = phi i64 [ 0, %.preheader ], [ %i.gi, %bb.i ], [ %.046, %.lr.ph47 ] ; 2 uses
  %i.hs = getelementptr i8, ptr %i.s, i64 %.0.lcssa
  %i.ht = sub i64 %i.r, %.0.lcssa
  tail call void @pm_buffer_append_string(ptr noundef %0, ptr noundef %i.hs, i64 noundef %i.ht) #16
  tail call void @free(ptr noundef %i.s) #16
  tail call void @free(ptr noundef nonnull %i.m) #16
  br label %bb.j

bb.j:                                             ; preds = %pm_integer_free.exit41, %bb.h, %pm_integer_free.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f, %bb.d
  ret void
}

declare void @pm_buffer_append_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

declare void @pm_buffer_append_format(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_integer_convert_base(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef range(i64 1000000000, 4294967297) %2, i64 noundef range(i64 1000000000, 4294967297) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.pm_integer_t, align 8       ; 12 uses
  %5 = alloca %struct.pm_integer_t, align 8       ; 4 uses
  %6 = alloca %struct.pm_integer_t, align 8       ; 7 uses
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread141, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !20     ; 3 uses
  %i.e = add i64 %i.d, 1
  %i.f = lshr i64 %i.e, 1                         ; 4 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 340, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_integer_convert_base) #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 24) #15 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.ae, label %.preheader

.thread141:                                       ; preds = %bb.a
  %i.i = getelementptr i8, ptr %1, i64 16
  %i.j = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #15 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.ae, label %.lr.ph.preheader

.preheader:                                       ; preds = %bb.d
  %.not112 = icmp eq i64 %i.d, 0
  br i1 %.not112, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread141, %.preheader
  %i.l = phi i64 [ %i.f, %.preheader ], [ 1, %.thread141 ]
  %.060102144150 = phi ptr [ %i.b, %.preheader ], [ %i.i, %.thread141 ] ; 2 uses
  %.061101145149 = phi i64 [ %i.d, %.preheader ], [ 1, %.thread141 ] ; 2 uses
  %i.m = phi ptr [ %i.g, %.preheader ], [ %i.j, %.thread141 ] ; 2 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %pm_integer_from_uint64.exit80, %.preheader
  %i.n = phi i64 [ %i.f, %.preheader ], [ %i.l, %pm_integer_from_uint64.exit80 ] ; 2 uses
  %i.o = phi ptr [ %i.g, %.preheader ], [ %i.m, %pm_integer_from_uint64.exit80 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.p = icmp samesign ult i64 %2, %3
  br i1 %i.p, label %bb.e, label %.preheader29.i

bb.e:                                             ; preds = %._crit_edge
  %i.q = trunc nuw i64 %2 to i32
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.q, ptr %i.r, align 8, !tbaa !25
  br label %pm_integer_from_uint64.exit

.preheader29.i:                                   ; preds = %._crit_edge, %.preheader29.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader29.i ], [ 1, %._crit_edge ] ; 5 uses
  %.02331.i = phi i64 [ %i.t, %.preheader29.i ], [ %2, %._crit_edge ] ; 2 uses
  %.02430.i = phi i64 [ %i.s, %.preheader29.i ], [ 0, %._crit_edge ]
  %i.s = add i64 %.02430.i, 1                     ; 4 uses
  %i.t = udiv i64 %.02331.i, %3
  %.not.i = icmp samesign ugt i64 %3, %.02331.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  br i1 %.not.i, label %bb.f, label %.preheader29.i, !llvm.loop !43

bb.f:                                             ; preds = %.preheader29.i
  %i.u = shl i64 %i.s, 2
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #14 ; 5 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %pm_integer_from_uint64.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %.not34.i = icmp eq i64 %i.s, 0
  br i1 %.not34.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %xtraiter164 = and i64 %indvars.iv.i, 1
  %i.x = icmp eq i64 %indvars.iv.i, 1
  br i1 %i.x, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter167 = and i64 %indvars.iv.i, -2
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod165.not = icmp eq i64 %xtraiter164, 0
  br i1 %lcmp.mod165.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.033.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.al, %._crit_edge.i.loopexit.unr-lcssa ]
  %.02532.i.epil.init = phi i64 [ %2, %.lr.ph.i.preheader ], [ %i.ak, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod166 = trunc i64 %indvars.iv.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod166)
  %i.y = urem i64 %.02532.i.epil.init, %3
  %i.z = trunc nuw i64 %i.y to i32
  %i.aa = getelementptr [4 x i8], ptr %i.v, i64 %.033.i.epil.init
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !12
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %.preheader.i
  store i64 %i.s, ptr %4, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.v, ptr %i.ab, align 8, !tbaa !21
  br label %pm_integer_from_uint64.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.033.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.al, %.lr.ph.i ] ; 3 uses
  %.02532.i = phi i64 [ %2, %.lr.ph.i.preheader.new ], [ %i.ak, %.lr.ph.i ] ; 2 uses
  %niter168 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter168.next.1, %.lr.ph.i ]
  %i.ac = urem i64 %.02532.i, %3
  %i.ad = trunc nuw i64 %i.ac to i32
  %i.ae = getelementptr [4 x i8], ptr %i.v, i64 %.033.i
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !12
  %i.af = udiv i64 %.02532.i, %3                  ; 2 uses
  %i.ag = urem i64 %i.af, %3
  %i.ah = trunc nuw i64 %i.ag to i32
  %i.ai = getelementptr [4 x i8], ptr %i.v, i64 %.033.i
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !12
  %i.ak = udiv i64 %i.af, %3                      ; 2 uses
  %i.al = add nuw i64 %.033.i, 2                  ; 2 uses
  %niter168.next.1 = add i64 %niter168, 2         ; 2 uses
  %niter168.ncmp.1 = icmp eq i64 %niter168.next.1, %unroll_iter167
  br i1 %niter168.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !44

pm_integer_from_uint64.exit:                      ; preds = %bb.e, %bb.f, %._crit_edge.i
  %i.am = icmp samesign ugt i64 %i.n, 1
  br i1 %i.am, label %.lr.ph110, label %._crit_edge111

.lr.ph110:                                        ; preds = %pm_integer_from_uint64.exit
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.k

.lr.ph:                                           ; preds = %.lr.ph.preheader, %pm_integer_from_uint64.exit80
  %.057106 = phi i64 [ %i.ca, %pm_integer_from_uint64.exit80 ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.aq = getelementptr [4 x i8], ptr %.060102144150, i64 %.057106
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !12
  %i.as = zext i32 %i.ar to i64
  %i.at = or disjoint i64 %.057106, 1             ; 2 uses
  %i.au = icmp ult i64 %i.at, %.061101145149
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.av = getelementptr [4 x i8], ptr %.060102144150, i64 %i.at
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !12
  %i.ax = zext i32 %i.aw to i64
  %i.ay = mul nuw i64 %2, %i.ax
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %i.az = phi i64 [ %i.ay, %bb.g ], [ 0, %.lr.ph ]
  %i.ba = add nuw i64 %i.az, %i.as                ; 5 uses
  %i.bb = lshr exact i64 %.057106, 1
  %i.bc = getelementptr [24 x i8], ptr %i.m, i64 %i.bb ; 3 uses
  %i.bd = icmp ult i64 %i.ba, %3
  br i1 %i.bd, label %bb.i, label %.preheader29.i67

bb.i:                                             ; preds = %bb.h
  %i.be = trunc nuw i64 %i.ba to i32
  %i.bf = getelementptr i8, ptr %i.bc, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !25
  br label %pm_integer_from_uint64.exit80

.preheader29.i67:                                 ; preds = %bb.h, %.preheader29.i67
  %indvars.iv.i68 = phi i64 [ %indvars.iv.next.i72, %.preheader29.i67 ], [ 1, %bb.h ] ; 5 uses
  %.02331.i69 = phi i64 [ %i.bh, %.preheader29.i67 ], [ %i.ba, %bb.h ] ; 2 uses
  %.02430.i70 = phi i64 [ %i.bg, %.preheader29.i67 ], [ 0, %bb.h ]
  %i.bg = add i64 %.02430.i70, 1                  ; 4 uses
  %i.bh = udiv i64 %.02331.i69, %3
  %.not.i71 = icmp ugt i64 %3, %.02331.i69
  %indvars.iv.next.i72 = add i64 %indvars.iv.i68, 1
  br i1 %.not.i71, label %bb.j, label %.preheader29.i67, !llvm.loop !43

bb.j:                                             ; preds = %.preheader29.i67
  %i.bi = shl i64 %i.bg, 2
  %i.bj = tail call noalias ptr @malloc(i64 noundef %i.bi) #14 ; 5 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %pm_integer_from_uint64.exit80, label %.preheader.i73

.preheader.i73:                                   ; preds = %bb.j
  %.not34.i74 = icmp eq i64 %i.bg, 0
  br i1 %.not34.i74, label %._crit_edge.i79, label %.lr.ph.i75.preheader

.lr.ph.i75.preheader:                             ; preds = %.preheader.i73
  %xtraiter = and i64 %indvars.iv.i68, 1
  %i.bl = icmp eq i64 %indvars.iv.i68, 1
  br i1 %i.bl, label %.lr.ph.i75.epil.preheader, label %.lr.ph.i75.preheader.new

.lr.ph.i75.preheader.new:                         ; preds = %.lr.ph.i75.preheader
  %unroll_iter = and i64 %indvars.iv.i68, -2
  br label %.lr.ph.i75

._crit_edge.i79.loopexit.unr-lcssa:               ; preds = %.lr.ph.i75
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i79, label %.lr.ph.i75.epil.preheader

.lr.ph.i75.epil.preheader:                        ; preds = %._crit_edge.i79.loopexit.unr-lcssa, %.lr.ph.i75.preheader
  %.033.i76.epil.init = phi i64 [ 0, %.lr.ph.i75.preheader ], [ %i.bz, %._crit_edge.i79.loopexit.unr-lcssa ]
  %.02532.i77.epil.init = phi i64 [ %i.ba, %.lr.ph.i75.preheader ], [ %i.by, %._crit_edge.i79.loopexit.unr-lcssa ]
  %lcmp.mod163 = trunc i64 %indvars.iv.i68 to i1
  tail call void @llvm.assume(i1 %lcmp.mod163)
  %i.bm = urem i64 %.02532.i77.epil.init, %3
  %i.bn = trunc nuw i64 %i.bm to i32
  %i.bo = getelementptr [4 x i8], ptr %i.bj, i64 %.033.i76.epil.init
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !12
  br label %._crit_edge.i79

._crit_edge.i79:                                  ; preds = %.lr.ph.i75.epil.preheader, %._crit_edge.i79.loopexit.unr-lcssa, %.preheader.i73
  store i64 %i.bg, ptr %i.bc, align 8, !tbaa !20
  %i.bp = getelementptr i8, ptr %i.bc, i64 8
  store ptr %i.bj, ptr %i.bp, align 8, !tbaa !21
  br label %pm_integer_from_uint64.exit80

.lr.ph.i75:                                       ; preds = %.lr.ph.i75, %.lr.ph.i75.preheader.new
  %.033.i76 = phi i64 [ 0, %.lr.ph.i75.preheader.new ], [ %i.bz, %.lr.ph.i75 ] ; 3 uses
  %.02532.i77 = phi i64 [ %i.ba, %.lr.ph.i75.preheader.new ], [ %i.by, %.lr.ph.i75 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i75.preheader.new ], [ %niter.next.1, %.lr.ph.i75 ]
  %i.bq = urem i64 %.02532.i77, %3
  %i.br = trunc nuw i64 %i.bq to i32
  %i.bs = getelementptr [4 x i8], ptr %i.bj, i64 %.033.i76
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !12
  %i.bt = udiv i64 %.02532.i77, %3                ; 2 uses
  %i.bu = urem i64 %i.bt, %3
  %i.bv = trunc nuw i64 %i.bu to i32
  %i.bw = getelementptr [4 x i8], ptr %i.bj, i64 %.033.i76
  %i.bx = getelementptr i8, ptr %i.bw, i64 4
  store i32 %i.bv, ptr %i.bx, align 4, !tbaa !12
  %i.by = udiv i64 %i.bt, %3                      ; 2 uses
  %i.bz = add nuw i64 %.033.i76, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i79.loopexit.unr-lcssa, label %.lr.ph.i75, !llvm.loop !44

pm_integer_from_uint64.exit80:                    ; preds = %bb.i, %bb.j, %._crit_edge.i79
  %i.ca = add i64 %.057106, 2                     ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %.061101145149
  br i1 %i.cb, label %.lr.ph, label %._crit_edge, !llvm.loop !45

bb.k:                                             ; preds = %.lr.ph110, %bb.m
  %.058109 = phi ptr [ %i.o, %.lr.ph110 ], [ %i.cf, %bb.m ] ; 4 uses
  %.059108 = phi i64 [ %i.n, %.lr.ph110 ], [ %i.ce, %bb.m ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call fastcc void @karatsuba_multiply(ptr noundef %5, ptr noundef %4, ptr noundef nonnull %4, i64 noundef %3)
  %i.cc = load ptr, ptr %i.an, align 8, !tbaa !21 ; 2 uses
  %.not.i81 = icmp eq ptr %i.cc, null
  br i1 %.not.i81, label %pm_integer_free.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %i.cc) #16
  br label %pm_integer_free.exit

pm_integer_free.exit:                             ; preds = %bb.k, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !48
  %i.cd = add nuw i64 %.059108, 1
  %i.ce = lshr i64 %i.cd, 1                       ; 2 uses
  %i.cf = call noalias ptr @calloc(i64 noundef %i.ce, i64 noundef 24) #15 ; 4 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.ab
  call void @free(ptr noundef nonnull %.058109) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.cg = icmp ugt i64 %.059108, 2
  br i1 %i.cg, label %bb.k, label %._crit_edge111, !llvm.loop !46

bb.n:                                             ; preds = %pm_integer_free.exit, %bb.ab
  %.0107 = phi i64 [ 0, %pm_integer_free.exit ], [ %i.dz, %bb.ab ] ; 6 uses
  %i.ch = or disjoint i64 %.0107, 1               ; 2 uses
  %i.ci = icmp eq i64 %i.ch, %.059108
  br i1 %i.ci, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cj = lshr exact i64 %.0107, 1
  %i.ck = getelementptr [24 x i8], ptr %i.cf, i64 %i.cj
  %i.cl = getelementptr [24 x i8], ptr %.058109, i64 %.0107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false), !tbaa.struct !48
  br label %bb.ab

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.cm = getelementptr [24 x i8], ptr %.058109, i64 %i.ch ; 2 uses
  call fastcc void @karatsuba_multiply(ptr noundef %6, ptr noundef %4, ptr noundef %i.cm, i64 noundef %3)
  %i.cn = lshr exact i64 %.0107, 1
  %i.co = getelementptr [24 x i8], ptr %i.cf, i64 %i.cn ; 5 uses
  %i.cp = getelementptr [24 x i8], ptr %.058109, i64 %.0107 ; 3 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 8      ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !21 ; 3 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ct = getelementptr i8, ptr %i.cp, i64 16
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cu = load i64, ptr %i.cp, align 8, !tbaa !20
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.039.i = phi ptr [ %i.ct, %bb.q ], [ %i.cr, %bb.r ]
  %.0.i = phi i64 [ 1, %bb.q ], [ %i.cu, %bb.r ]  ; 2 uses
  %i.cv = load ptr, ptr %i.ao, align 8, !tbaa !21 ; 3 uses
  %i.cw = icmp eq ptr %i.cv, null                 ; 3 uses
  %i.cx = load i64, ptr %6, align 8
  %.041.i = select i1 %i.cw, ptr %i.ap, ptr %i.cv
  %.040.i = select i1 %i.cw, i64 1, i64 %i.cx     ; 2 uses
  %i.cy = call i64 @llvm.umax.i64(i64 %.0.i, i64 %.040.i) ; 5 uses
  %i.cz = add i64 %i.cy, 1                        ; 2 uses
  %i.da = shl i64 %i.cz, 2
  %i.db = call noalias ptr @malloc(i64 noundef %i.da) #14 ; 4 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %big_add.exit, label %.preheader.i82

.preheader.i82:                                   ; preds = %bb.s
  %.not51.i = icmp eq i64 %i.cy, 0
  br i1 %.not51.i, label %._crit_edge.thread.i, label %.lr.ph.i83

._crit_edge.i85:                                  ; preds = %bb.w
  %.not.i86 = icmp ugt i64 %3, %i.do
  br i1 %.not.i86, label %._crit_edge.thread.i, label %bb.x

.lr.ph.i83:                                       ; preds = %.preheader.i82, %bb.w
  %.04250.i = phi i64 [ %i.dt, %bb.w ], [ 0, %.preheader.i82 ] ; 6 uses
  %.04349.i = phi i64 [ %i.ds, %bb.w ], [ 0, %.preheader.i82 ]
  %i.dd = icmp ult i64 %.04250.i, %.0.i
  br i1 %i.dd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i83
  %i.de = getelementptr [4 x i8], ptr %.039.i, i64 %.04250.i
  %i.df = load i32, ptr %i.de, align 4, !tbaa !12
  %i.dg = zext i32 %i.df to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i83
  %i.dh = phi i64 [ %i.dg, %bb.t ], [ 0, %.lr.ph.i83 ]
  %i.di = add nuw nsw i64 %i.dh, %.04349.i
  %i.dj = icmp ult i64 %.04250.i, %.040.i
  br i1 %i.dj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dk = getelementptr [4 x i8], ptr %.041.i, i64 %.04250.i
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !12
  %i.dm = zext i32 %i.dl to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dn = phi i64 [ %i.dm, %bb.v ], [ 0, %bb.u ]
  %i.do = add nuw nsw i64 %i.di, %i.dn            ; 3 uses
  %i.dp = urem i64 %i.do, %3
  %i.dq = trunc nuw i64 %i.dp to i32
  %i.dr = getelementptr [4 x i8], ptr %i.db, i64 %.04250.i
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !12
  %i.ds = udiv i64 %i.do, %3                      ; 2 uses
  %i.dt = add nuw i64 %.04250.i, 1                ; 2 uses
  %exitcond.not.i84 = icmp eq i64 %i.dt, %i.cy
  br i1 %exitcond.not.i84, label %._crit_edge.i85, label %.lr.ph.i83, !llvm.loop !1

bb.x:                                             ; preds = %._crit_edge.i85
  %i.du = trunc nuw nsw i64 %i.ds to i32
  %i.dv = getelementptr [4 x i8], ptr %i.db, i64 %i.cy
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !12
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.x, %._crit_edge.i85, %.preheader.i82
  %.044.i = phi i64 [ %i.cz, %bb.x ], [ %i.cy, %._crit_edge.i85 ], [ 0, %.preheader.i82 ]
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.co, i64 21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx.i, i8 0, i64 3, i1 false)
  store i64 %.044.i, ptr %i.co, align 8, !tbaa !22
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.db, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !23
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i32 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !12
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.co, i64 20
  store i8 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !24
  %.pre = load ptr, ptr %i.cq, align 8, !tbaa !21
  br label %big_add.exit

big_add.exit:                                     ; preds = %bb.s, %._crit_edge.thread.i
  %i.dw = phi ptr [ %i.cr, %bb.s ], [ %.pre, %._crit_edge.thread.i ] ; 2 uses
  %.not.i87 = icmp eq ptr %i.dw, null
  br i1 %.not.i87, label %pm_integer_free.exit88, label %bb.y

bb.y:                                             ; preds = %big_add.exit
  call void @free(ptr noundef nonnull %i.dw) #16
  br label %pm_integer_free.exit88

pm_integer_free.exit88:                           ; preds = %big_add.exit, %bb.y
  %i.dx = getelementptr i8, ptr %i.cm, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !21 ; 2 uses
  %.not.i89 = icmp eq ptr %i.dy, null
  br i1 %.not.i89, label %pm_integer_free.exit90, label %bb.z

bb.z:                                             ; preds = %pm_integer_free.exit88
  call void @free(ptr noundef nonnull %i.dy) #16
  br label %pm_integer_free.exit90

pm_integer_free.exit90:                           ; preds = %pm_integer_free.exit88, %bb.z
  br i1 %i.cw, label %pm_integer_free.exit92, label %bb.aa

bb.aa:                                            ; preds = %pm_integer_free.exit90
  call void @free(ptr noundef nonnull %i.cv) #16
  br label %pm_integer_free.exit92

pm_integer_free.exit92:                           ; preds = %pm_integer_free.exit90, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.o, %pm_integer_free.exit92
  %i.dz = add nuw i64 %.0107, 2                   ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %.059108
  br i1 %i.ea, label %bb.n, label %bb.m, !llvm.loop !47

._crit_edge111:                                   ; preds = %bb.m, %pm_integer_from_uint64.exit
  %.058.lcssa = phi ptr [ %i.o, %pm_integer_from_uint64.exit ], [ %i.cf, %bb.m ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.058.lcssa, i64 24, i1 false), !tbaa.struct !48
  %i.eb = getelementptr i8, ptr %1, i64 20
  %i.ec = load i8, ptr %i.eb, align 4, !tbaa !26, !range !27, !noundef !28 ; 2 uses
  %i.ed = getelementptr i8, ptr %0, i64 20        ; 2 uses
  store i8 %i.ec, ptr %i.ed, align 4, !tbaa !26
  %i.ee = getelementptr i8, ptr %0, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !21 ; 4 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %pm_integer_normalize.exit, label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %._crit_edge111
  %.pr.i = load i64, ptr %0, align 8, !tbaa !20   ; 2 uses
  %i.eh = icmp ugt i64 %.pr.i, 1
  br i1 %i.eh, label %.lr.ph.i95, label %pm_integer_free.exit.i

.lr.ph.i95:                                       ; preds = %thread-pre-split.i, %bb.ac
  %i.ei = phi i64 [ %i.en, %bb.ac ], [ %.pr.i, %thread-pre-split.i ] ; 2 uses
  %i.ej = getelementptr [4 x i8], ptr %i.ef, i64 %i.ei
  %i.ek = getelementptr i8, ptr %i.ej, i64 -4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !12
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.ac, label %pm_integer_normalize.exit

bb.ac:                                            ; preds = %.lr.ph.i95
  %i.en = add i64 %i.ei, -1                       ; 3 uses
  store i64 %i.en, ptr %0, align 8, !tbaa !20
  %i.eo = icmp ugt i64 %i.en, 1
  br i1 %i.eo, label %.lr.ph.i95, label %pm_integer_free.exit.i, !llvm.loop !0

pm_integer_free.exit.i:                           ; preds = %bb.ac, %thread-pre-split.i
  %i.ep = load i32, ptr %i.ef, align 4, !tbaa !12 ; 2 uses
  %i.eq = trunc nuw i8 %i.ec to i1
  %i.er = icmp ne i32 %i.ep, 0
  %i.es = select i1 %i.eq, i1 %i.er, i1 false
  %i.et = zext i1 %i.es to i8
  call void @free(ptr noundef nonnull %i.ef) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i93 = getelementptr inbounds nuw i8, ptr %0, i64 21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4.0..sroa_idx.i93, i8 0, i64 3, i1 false)
  %.sroa.2.0..sroa_idx.i94 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ep, ptr %.sroa.2.0..sroa_idx.i94, align 8, !tbaa !12
  store i8 %i.et, ptr %i.ed, align 4, !tbaa !24
  br label %pm_integer_normalize.exit

pm_integer_normalize.exit:                        ; preds = %.lr.ph.i95, %._crit_edge111, %pm_integer_free.exit.i
  call void @free(ptr noundef %.058.lcssa) #16
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !21 ; 2 uses
  %.not.i96 = icmp eq ptr %i.ev, null
  br i1 %.not.i96, label %pm_integer_free.exit97, label %bb.ad

bb.ad:                                            ; preds = %pm_integer_normalize.exit
  call void @free(ptr noundef nonnull %i.ev) #16
  br label %pm_integer_free.exit97

pm_integer_free.exit97:                           ; preds = %pm_integer_normalize.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.ae

bb.ae:                                            ; preds = %.thread141, %bb.d, %pm_integer_free.exit97
  ret void
}

; Function Attrs: mustprogress nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @pm_integer_free(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

declare void @pm_buffer_append_string(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @karatsuba_multiply(ptr nofree noundef nonnull writeonly captures(none) %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef range(i64 1000000000, 4294967297) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.pm_integer_t, align 8       ; 6 uses
  %5 = alloca %struct.pm_integer_t, align 8       ; 6 uses
  %6 = alloca %struct.pm_integer_t, align 8       ; 5 uses
  %7 = alloca %struct.pm_integer_t, align 8       ; 7 uses
  %8 = alloca %struct.pm_integer_t, align 8       ; 7 uses
  %9 = alloca %struct.pm_integer_t, align 8       ; 7 uses
  %10 = alloca %struct.pm_integer_t, align 8      ; 7 uses
  %11 = alloca %struct.pm_integer_t, align 8      ; 7 uses
  %12 = alloca %struct.pm_integer_t, align 8      ; 7 uses
  %13 = alloca %struct.pm_integer_t, align 8      ; 10 uses
  %14 = alloca %struct.pm_integer_t, align 8      ; 10 uses
  %15 = alloca %struct.pm_integer_t, align 8      ; 7 uses
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0164 = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.c ] ; 2 uses
  %.0 = phi i64 [ 1, %bb.b ], [ %i.e, %bb.c ]     ; 6 uses
  %i.f = getelementptr i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %2, i64 16
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.j = load i64, ptr %2, align 8, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0168 = phi ptr [ %i.i, %bb.e ], [ %i.g, %bb.f ] ; 2 uses
  %.0166 = phi i64 [ 1, %bb.e ], [ %i.j, %bb.f ]  ; 6 uses
  %i.k = icmp ugt i64 %.0, %.0166
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1169 = phi ptr [ %.0164, %bb.h ], [ %.0168, %bb.g ] ; 4 uses
  %.1167 = phi i64 [ %.0, %bb.h ], [ %.0166, %bb.g ] ; 8 uses
  %.1165 = phi ptr [ %.0168, %bb.h ], [ %.0164, %bb.g ] ; 4 uses
  %.1 = phi i64 [ %.0166, %bb.h ], [ %.0, %bb.g ] ; 9 uses
  %i.l = icmp ult i64 %.1, 11
  br i1 %i.l, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.m = add i64 %.0166, %.0                      ; 4 uses
  %i.n = tail call noalias ptr @calloc(i64 noundef %i.m, i64 noundef 4) #15 ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.au, label %.preheader244

.preheader244:                                    ; preds = %bb.j
  %invariant.gep278 = getelementptr [4 x i8], ptr %i.n, i64 %.1167
  %.not289 = icmp eq i64 %.1, 0
  %.not290 = icmp eq i64 %.1167, 0
  %or.cond = select i1 %.not289, i1 true, i1 %.not290
  br i1 %or.cond, label %.preheader, label %.preheader243.us

.preheader243.us:                                 ; preds = %.preheader244, %._crit_edge276.us
  %.0176280.us = phi i64 [ %i.ai, %._crit_edge276.us ], [ 0, %.preheader244 ] ; 4 uses
  %i.p = getelementptr [4 x i8], ptr %.1165, i64 %.0176280.us
  %i.q = getelementptr [4 x i8], ptr %i.n, i64 %.0176280.us
  br label %bb.k

bb.k:                                             ; preds = %.preheader243.us, %bb.k
  %.0177274.us = phi i64 [ 0, %.preheader243.us ], [ %i.af, %bb.k ]
  %.0178273.us = phi i64 [ 0, %.preheader243.us ], [ %i.ag, %bb.k ] ; 3 uses
  %i.r = load i32, ptr %i.p, align 4, !tbaa !12
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr [4 x i8], ptr %.1169, i64 %.0178273.us
  %i.u = load i32, ptr %i.t, align 4, !tbaa !12
  %i.v = zext i32 %i.u to i64
  %i.w = mul nuw i64 %i.v, %i.s
  %i.x = getelementptr [4 x i8], ptr %i.q, i64 %.0178273.us ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !12
  %i.z = zext i32 %i.y to i64
  %i.aa = and i64 %.0177274.us, 4294967295
  %i.ab = add nuw nsw i64 %i.aa, %i.z
  %i.ac = add nuw i64 %i.ab, %i.w                 ; 2 uses
  %i.ad = urem i64 %i.ac, %3
  %i.ae = trunc nuw i64 %i.ad to i32
  store i32 %i.ae, ptr %i.x, align 4, !tbaa !12
  %i.af = udiv i64 %i.ac, %3                      ; 2 uses
  %i.ag = add nuw i64 %.0178273.us, 1             ; 2 uses
  %exitcond299.not = icmp eq i64 %i.ag, %.1167
  br i1 %exitcond299.not, label %._crit_edge276.us, label %bb.k, !llvm.loop !49

._crit_edge276.us:                                ; preds = %bb.k
  %i.ah = trunc i64 %i.af to i32
  %gep279.us = getelementptr [4 x i8], ptr %invariant.gep278, i64 %.0176280.us
  store i32 %i.ah, ptr %gep279.us, align 4, !tbaa !12
  %i.ai = add nuw nsw i64 %.0176280.us, 1         ; 2 uses
  %exitcond300.not = icmp eq i64 %i.ai, %.1
  br i1 %exitcond300.not, label %.preheader, label %.preheader243.us, !llvm.loop !50

.preheader:                                       ; preds = %._crit_edge276.us, %.preheader244
  %i.aj = icmp ugt i64 %i.m, 1
  br i1 %i.aj, label %.lr.ph282, label %.critedge

.lr.ph282:                                        ; preds = %.preheader, %bb.l
  %.0170281 = phi i64 [ %i.ao, %bb.l ], [ %i.m, %.preheader ] ; 3 uses
  %i.ak = getelementptr [4 x i8], ptr %i.n, i64 %.0170281
  %i.al = getelementptr i8, ptr %i.ak, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !12
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.l, label %.critedge

bb.l:                                             ; preds = %.lr.ph282
  %i.ao = add i64 %.0170281, -1                   ; 2 uses
  %i.ap = icmp ugt i64 %i.ao, 1
  br i1 %i.ap, label %.lr.ph282, label %.critedge, !llvm.loop !51

.critedge:                                        ; preds = %.lr.ph282, %bb.l, %.preheader
  %.0170.lcssa = phi i64 [ %i.m, %.preheader ], [ 1, %bb.l ], [ %.0170281, %.lr.ph282 ]
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.572.0..sroa_idx, i8 0, i64 3, i1 false)
  store i64 %.0170.lcssa, ptr %0, align 8, !tbaa !22
  %.sroa.269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %.sroa.269.0..sroa_idx, align 8, !tbaa !23
  %.sroa.370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.sroa.370.0..sroa_idx, align 8, !tbaa !12
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %.sroa.471.0..sroa_idx, align 4, !tbaa !24
  br label %bb.au

bb.m:                                             ; preds = %bb.i
  %i.aq = shl i64 %.1, 1
  %.not = icmp ugt i64 %i.aq, %.1167
  br i1 %.not, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = add i64 %.0166, %.0                     ; 2 uses
  %i.as = tail call noalias ptr @calloc(i64 noundef %i.ar, i64 noundef 4) #15 ; 3 uses
  %.not286 = icmp eq i64 %.1167, 0
  br i1 %.not286, label %._crit_edge256, label %.lr.ph255

.lr.ph255:                                        ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %bb.o

._crit_edge256:                                   ; preds = %pm_integer_free.exit, %bb.n
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.543.0..sroa_idx, i8 0, i64 3, i1 false)
  store i64 %i.ar, ptr %0, align 8, !tbaa !22
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %.sroa.240.0..sroa_idx, align 8, !tbaa !23
  %.sroa.341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.sroa.341.0..sroa_idx, align 8, !tbaa !12
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %.sroa.442.0..sroa_idx, align 4, !tbaa !24
  br label %bb.au

bb.o:                                             ; preds = %.lr.ph255, %pm_integer_free.exit
  %.0182253 = phi i64 [ 0, %.lr.ph255 ], [ %i.ay, %pm_integer_free.exit ] ; 5 uses
  %i.ay = add i64 %.0182253, %.1                  ; 3 uses
  %spec.select = call i64 @llvm.umin.i64(i64 %i.ay, i64 %.1167)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store i64 %.1, ptr %4, align 8, !tbaa !20
  store ptr %.1165, ptr %i.at, align 8, !tbaa !21
  store i64 0, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.az = sub i64 %spec.select, %.0182253
  store i64 %i.az, ptr %5, align 8, !tbaa !20
  %i.ba = getelementptr [4 x i8], ptr %.1169, i64 %.0182253
  store ptr %i.ba, ptr %i.av, align 8, !tbaa !21
  store i64 0, ptr %i.aw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call fastcc void @karatsuba_multiply(ptr noundef %6, ptr noundef %4, ptr noundef nonnull %5, i64 noundef %3)
  %i.bb = load i64, ptr %6, align 8, !tbaa !20    ; 6 uses
  %.not287 = icmp eq i64 %i.bb, 0
  br i1 %.not287, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.bc = getelementptr [4 x i8], ptr %i.as, i64 %.0182253 ; 3 uses
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !21 ; 3 uses
  %xtraiter = and i64 %i.bb, 1
  %i.be = icmp eq i64 %i.bb, 1
  br i1 %i.be, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.bb, -2
  br label %bb.p

._crit_edge.unr-lcssa:                            ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.0179251.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.cn, %._crit_edge.unr-lcssa ] ; 2 uses
  %.0180250.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.cm, %._crit_edge.unr-lcssa ]
  %lcmp.mod358 = trunc i64 %i.bb to i1
  call void @llvm.assume(i1 %lcmp.mod358)
  %i.bf = getelementptr [4 x i8], ptr %i.bc, i64 %.0179251.epil.init ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !12
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr [4 x i8], ptr %i.bd, i64 %.0179251.epil.init
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !12
  %i.bk = zext i32 %i.bj to i64
  %i.bl = add nuw nsw i64 %.0180250.epil.init, %i.bh
  %i.bm = add nuw nsw i64 %i.bl, %i.bk            ; 3 uses
  %i.bn = urem i64 %i.bm, %3
  %i.bo = trunc nuw i64 %i.bn to i32
  store i32 %i.bo, ptr %i.bf, align 4, !tbaa !12
  %i.bp = udiv i64 %i.bm, %3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.lcssa355 = phi i64 [ %i.cj, %._crit_edge.unr-lcssa ], [ %i.bm, %.epil.preheader ]
  %.lcssa354 = phi i64 [ %i.cm, %._crit_edge.unr-lcssa ], [ %i.bp, %.epil.preheader ]
  %.not194 = icmp ugt i64 %3, %.lcssa355
  br i1 %.not194, label %._crit_edge.thread, label %bb.q

bb.p:                                             ; preds = %bb.p, %.lr.ph.new
  %.0179251 = phi i64 [ 0, %.lr.ph.new ], [ %i.cn, %bb.p ] ; 4 uses
  %.0180250 = phi i64 [ 0, %.lr.ph.new ], [ %i.cm, %bb.p ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.p ]
  %i.bq = getelementptr [4 x i8], ptr %i.bc, i64 %.0179251 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !12
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr [4 x i8], ptr %i.bd, i64 %.0179251
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !12
  %i.bv = zext i32 %i.bu to i64
  %i.bw = add nuw nsw i64 %.0180250, %i.bs
  %i.bx = add nuw nsw i64 %i.bw, %i.bv            ; 2 uses
  %i.by = urem i64 %i.bx, %3
  %i.bz = trunc nuw i64 %i.by to i32
  store i32 %i.bz, ptr %i.bq, align 4, !tbaa !12
  %i.ca = udiv i64 %i.bx, %3
  %i.cb = or disjoint i64 %.0179251, 1            ; 2 uses
  %i.cc = getelementptr [4 x i8], ptr %i.bc, i64 %i.cb ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !12
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr [4 x i8], ptr %i.bd, i64 %i.cb
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !12
  %i.ch = zext i32 %i.cg to i64
  %i.ci = add nuw nsw i64 %i.ca, %i.ce
  %i.cj = add nuw nsw i64 %i.ci, %i.ch            ; 3 uses
  %i.ck = urem i64 %i.cj, %3
  %i.cl = trunc nuw i64 %i.ck to i32
  store i32 %i.cl, ptr %i.cc, align 4, !tbaa !12
  %i.cm = udiv i64 %i.cj, %3                      ; 3 uses
  %i.cn = add nuw i64 %.0179251, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.p, !llvm.loop !52

bb.q:                                             ; preds = %._crit_edge
  %i.co = trunc nuw nsw i64 %.lcssa354 to i32
  %i.cp = getelementptr [4 x i8], ptr %i.as, i64 %.0182253
  %i.cq = getelementptr [4 x i8], ptr %i.cp, i64 %i.bb ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !12
  %i.cs = add i32 %i.cr, %i.co
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !12
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.o, %bb.q, %._crit_edge
  %i.ct = load ptr, ptr %i.ax, align 8, !tbaa !21 ; 2 uses
  %.not.i = icmp eq ptr %i.ct, null
  br i1 %.not.i, label %pm_integer_free.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread
  call void @free(ptr noundef nonnull %i.ct) #16
  br label %pm_integer_free.exit

pm_integer_free.exit:                             ; preds = %._crit_edge.thread, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.cu = icmp ult i64 %i.ay, %.1167
  br i1 %i.cu, label %bb.o, label %._crit_edge256, !llvm.loop !53

bb.s:                                             ; preds = %bb.m
  %i.cv = lshr i64 %.1, 1                         ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store i64 %i.cv, ptr %7, align 8, !tbaa !20
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %.1165, ptr %i.cw, align 8, !tbaa !21
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store i64 0, ptr %i.cx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.cy = sub nuw i64 %.1, %i.cv
  store i64 %i.cy, ptr %8, align 8, !tbaa !20
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.da = getelementptr [4 x i8], ptr %.1165, i64 %i.cv
  store ptr %i.da, ptr %i.cz, align 8, !tbaa !21
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store i64 0, ptr %i.db, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store i64 %i.cv, ptr %9, align 8, !tbaa !20
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.1169, ptr %i.dc, align 8, !tbaa !21
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store i64 0, ptr %i.dd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.de = sub i64 %.1167, %i.cv
  store i64 %i.de, ptr %10, align 8, !tbaa !20
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.dg = getelementptr [4 x i8], ptr %.1169, i64 %i.cv
  store ptr %i.dg, ptr %i.df, align 8, !tbaa !21
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store i64 0, ptr %i.dh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call fastcc void @karatsuba_multiply(ptr noundef %11, ptr noundef %7, ptr noundef nonnull %9, i64 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call fastcc void @karatsuba_multiply(ptr noundef %12, ptr noundef %8, ptr noundef nonnull %10, i64 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.di = load ptr, ptr %i.cw, align 8, !tbaa !21 ; 2 uses
  %i.dj = icmp eq ptr %i.di, null                 ; 2 uses
  %i.dk = load i64, ptr %7, align 8
  %spec.select237 = select i1 %i.dj, ptr %i.cx, ptr %i.di
  %spec.select238 = select i1 %i.dj, i64 1, i64 %i.dk ; 2 uses
  %i.dl = load ptr, ptr %i.cz, align 8, !tbaa !21 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null                 ; 2 uses
  %i.dn = load i64, ptr %8, align 8
  %.041.i = select i1 %i.dm, ptr %i.db, ptr %i.dl
  %.040.i = select i1 %i.dm, i64 1, i64 %i.dn     ; 2 uses
  %i.do = call i64 @llvm.umax.i64(i64 %spec.select238, i64 %.040.i) ; 5 uses
  %i.dp = add i64 %i.do, 1                        ; 2 uses
  %i.dq = shl i64 %i.dp, 2
  %i.dr = call noalias ptr @malloc(i64 noundef %i.dq) #14 ; 4 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %big_add.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.s
  %.not51.i = icmp eq i64 %i.do, 0
  br i1 %.not51.i, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.w
  %.not.i195 = icmp ugt i64 %3, %i.ee
  br i1 %.not.i195, label %._crit_edge.thread.i, label %bb.x

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.w
  %.04250.i = phi i64 [ %i.ej, %bb.w ], [ 0, %.preheader.i ] ; 6 uses
  %.04349.i = phi i64 [ %i.ei, %bb.w ], [ 0, %.preheader.i ]
  %i.dt = icmp ult i64 %.04250.i, %spec.select238
  br i1 %i.dt, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i
  %i.du = getelementptr [4 x i8], ptr %spec.select237, i64 %.04250.i
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !12
  %i.dw = zext i32 %i.dv to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i
  %i.dx = phi i64 [ %i.dw, %bb.t ], [ 0, %.lr.ph.i ]
  %i.dy = add nuw nsw i64 %i.dx, %.04349.i
  %i.dz = icmp ult i64 %.04250.i, %.040.i
  br i1 %i.dz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ea = getelementptr [4 x i8], ptr %.041.i, i64 %.04250.i
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !12
  %i.ec = zext i32 %i.eb to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ed = phi i64 [ %i.ec, %bb.v ], [ 0, %bb.u ]
  %i.ee = add nuw nsw i64 %i.dy, %i.ed            ; 3 uses
  %i.ef = urem i64 %i.ee, %3
  %i.eg = trunc nuw i64 %i.ef to i32
  %i.eh = getelementptr [4 x i8], ptr %i.dr, i64 %.04250.i
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !12
  %i.ei = udiv i64 %i.ee, %3                      ; 2 uses
  %i.ej = add nuw i64 %.04250.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ej, %i.do
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1

bb.x:                                             ; preds = %._crit_edge.i
  %i.ek = trunc nuw nsw i64 %i.ei to i32
  %i.el = getelementptr [4 x i8], ptr %i.dr, i64 %i.do
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !12
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.x, %._crit_edge.i, %.preheader.i
  %.044.i = phi i64 [ %i.dp, %bb.x ], [ %i.do, %._crit_edge.i ], [ 0, %.preheader.i ]
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx.i, i8 0, i64 3, i1 false)
  store i64 %.044.i, ptr %13, align 8, !tbaa !22
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.dr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !23
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !12
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i8 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !24
  br label %big_add.exit

big_add.exit:                                     ; preds = %bb.s, %._crit_edge.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.em = load ptr, ptr %i.dc, align 8, !tbaa !21 ; 2 uses
  %i.en = icmp eq ptr %i.em, null                 ; 2 uses
  %i.eo = load i64, ptr %9, align 8
  %spec.select239 = select i1 %i.en, ptr %i.dd, ptr %i.em
  %spec.select240 = select i1 %i.en, i64 1, i64 %i.eo ; 2 uses
  %i.ep = load ptr, ptr %i.df, align 8, !tbaa !21 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, null                 ; 2 uses
  %i.er = load i64, ptr %10, align 8
  %.041.i198 = select i1 %i.eq, ptr %i.dh, ptr %i.ep
  %.040.i199 = select i1 %i.eq, i64 1, i64 %i.er  ; 2 uses
  %i.es = call i64 @llvm.umax.i64(i64 %spec.select240, i64 %.040.i199) ; 5 uses
  %i.et = add i64 %i.es, 1                        ; 2 uses
  %i.eu = shl i64 %i.et, 2
  %i.ev = call noalias ptr @malloc(i64 noundef %i.eu) #14 ; 4 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %big_add.exit214, label %.preheader.i200

.preheader.i200:                                  ; preds = %big_add.exit
  %.not51.i201 = icmp eq i64 %i.es, 0
  br i1 %.not51.i201, label %._crit_edge.thread.i208, label %.lr.ph.i202

._crit_edge.i206:                                 ; preds = %bb.ab
  %.not.i207 = icmp ugt i64 %3, %i.fi
  br i1 %.not.i207, label %._crit_edge.thread.i208, label %bb.ac

.lr.ph.i202:                                      ; preds = %.preheader.i200, %bb.ab
  %.04250.i203 = phi i64 [ %i.fn, %bb.ab ], [ 0, %.preheader.i200 ] ; 6 uses
  %.04349.i204 = phi i64 [ %i.fm, %bb.ab ], [ 0, %.preheader.i200 ]
  %i.ex = icmp ult i64 %.04250.i203, %spec.select240
  br i1 %i.ex, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.i202
  %i.ey = getelementptr [4 x i8], ptr %spec.select239, i64 %.04250.i203
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !12
  %i.fa = zext i32 %i.ez to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.i202
  %i.fb = phi i64 [ %i.fa, %bb.y ], [ 0, %.lr.ph.i202 ]
  %i.fc = add nuw nsw i64 %i.fb, %.04349.i204
  %i.fd = icmp ult i64 %.04250.i203, %.040.i199
  br i1 %i.fd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fe = getelementptr [4 x i8], ptr %.041.i198, i64 %.04250.i203
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !12
  %i.fg = zext i32 %i.ff to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.fh = phi i64 [ %i.fg, %bb.aa ], [ 0, %bb.z ]
  %i.fi = add nuw nsw i64 %i.fc, %i.fh            ; 3 uses
  %i.fj = urem i64 %i.fi, %3
  %i.fk = trunc nuw i64 %i.fj to i32
  %i.fl = getelementptr [4 x i8], ptr %i.ev, i64 %.04250.i203
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !12
  %i.fm = udiv i64 %i.fi, %3                      ; 2 uses
  %i.fn = add nuw i64 %.04250.i203, 1             ; 2 uses
  %exitcond.not.i205 = icmp eq i64 %i.fn, %i.es
  br i1 %exitcond.not.i205, label %._crit_edge.i206, label %.lr.ph.i202, !llvm.loop !1

bb.ac:                                            ; preds = %._crit_edge.i206
  %i.fo = trunc nuw nsw i64 %i.fm to i32
  %i.fp = getelementptr [4 x i8], ptr %i.ev, i64 %i.es
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !12
  br label %._crit_edge.thread.i208

._crit_edge.thread.i208:                          ; preds = %bb.ac, %._crit_edge.i206, %.preheader.i200
  %.044.i209 = phi i64 [ %i.et, %bb.ac ], [ %i.es, %._crit_edge.i206 ], [ 0, %.preheader.i200 ]
  %.sroa.5.0..sroa_idx.i210 = getelementptr inbounds nuw i8, ptr %14, i64 21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx.i210, i8 0, i64 3, i1 false)
  store i64 %.044.i209, ptr %14, align 8, !tbaa !22
  %.sroa.2.0..sroa_idx.i211 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.ev, ptr %.sroa.2.0..sroa_idx.i211, align 8, !tbaa !23
  %.sroa.3.0..sroa_idx.i212 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 0, ptr %.sroa.3.0..sroa_idx.i212, align 8, !tbaa !12
  %.sroa.4.0..sroa_idx.i213 = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i8 0, ptr %.sroa.4.0..sroa_idx.i213, align 4, !tbaa !24
  br label %big_add.exit214

big_add.exit214:                                  ; preds = %big_add.exit, %._crit_edge.thread.i208
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call fastcc void @karatsuba_multiply(ptr noundef %15, ptr noundef %13, ptr noundef nonnull %14, i64 noundef %3)
  %i.fq = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !21 ; 3 uses
  %i.fs = icmp eq ptr %i.fr, null                 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.fu = load i64, ptr %15, align 8              ; 2 uses
  %.045.i = select i1 %i.fs, ptr %i.ft, ptr %i.fr
  %.0.i215 = select i1 %i.fs, i64 1, i64 %i.fu    ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !21 ; 4 uses
  %i.fx = icmp eq ptr %i.fw, null                 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.fz = load i64, ptr %11, align 8              ; 2 uses
  %.047.i = select i1 %i.fx, ptr %i.fy, ptr %i.fw
  %.046.i = select i1 %i.fx, i64 1, i64 %i.fz
  %i.ga = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !21 ; 4 uses
  %i.gc = icmp eq ptr %i.gb, null                 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ge = load i64, ptr %12, align 8              ; 2 uses
  %.052.i = select i1 %i.gc, i64 1, i64 %i.ge
  %.051.i = select i1 %i.gc, ptr %i.gd, ptr %i.gb
  %i.gf = shl i64 %.0.i215, 2
  %i.gg = call noalias ptr @malloc(i64 noundef %i.gf) #14 ; 7 uses
  %.not.i216 = icmp eq i64 %.0.i215, 0
  br i1 %.not.i216, label %big_sub2.exit, label %.lr.ph.i217

.lr.ph.i217:                                      ; preds = %big_add.exit214
  %i.gh = shl nuw nsw i64 %3, 1
  br label %bb.ad

.preheader.i219:                                  ; preds = %bb.aj
  %.not72.i = icmp eq i64 %.0.i215, 1
  br i1 %.not72.i, label %big_sub2.exit, label %.lr.ph63.i

bb.ad:                                            ; preds = %bb.aj, %.lr.ph.i217
  %.04861.i = phi i64 [ 0, %.lr.ph.i217 ], [ %i.hd, %bb.aj ] ; 7 uses
  %.04960.i = phi i64 [ 0, %.lr.ph.i217 ], [ %.150.i, %bb.aj ]
  %i.gi = getelementptr [4 x i8], ptr %.045.i, i64 %.04861.i
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !12
  %i.gk = zext i32 %i.gj to i64
  %i.gl = icmp ult i64 %.04861.i, %.046.i
  br i1 %i.gl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gm = getelementptr [4 x i8], ptr %.047.i, i64 %.04861.i
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !12
  %i.go = zext i32 %i.gn to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.gp = phi i64 [ %i.go, %bb.ae ], [ 0, %bb.ad ]
  %i.gq = icmp ult i64 %.04861.i, %.052.i
  br i1 %i.gq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gr = getelementptr [4 x i8], ptr %.051.i, i64 %.04861.i
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !12
  %i.gt = zext i32 %i.gs to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.gu = phi i64 [ %i.gt, %bb.ag ], [ 0, %bb.af ]
  %.neg242 = add nsw i64 %.04960.i, %i.gk
  %i.gv = add nuw nsw i64 %i.gp, %i.gu
  %i.gw = sub nsw i64 %.neg242, %i.gv             ; 3 uses
  %i.gx = icmp sgt i64 %i.gw, -1
  br i1 %i.gx, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gy = add nsw i64 %i.gw, %i.gh                ; 2 uses
  %i.gz = urem i64 %i.gy, %3
  %i.ha = sdiv i64 %i.gy, %3
  %i.hb = add nsw i64 %i.ha, -2
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.sink.in.i = phi i64 [ %i.gz, %bb.ai ], [ %i.gw, %bb.ah ]
  %.150.i = phi i64 [ %i.hb, %bb.ai ], [ 0, %bb.ah ]
  %.sink.i = trunc i64 %.sink.in.i to i32
  %i.hc = getelementptr [4 x i8], ptr %i.gg, i64 %.04861.i
  store i32 %.sink.i, ptr %i.hc, align 4, !tbaa !12
  %i.hd = add nuw i64 %.04861.i, 1                ; 2 uses
  %exitcond.not.i218 = icmp eq i64 %i.hd, %.0.i215
  br i1 %exitcond.not.i218, label %.preheader.i219, label %bb.ad, !llvm.loop !54

.lr.ph63.i:                                       ; preds = %.preheader.i219, %bb.ak
  %.162.i = phi i64 [ %i.hi, %bb.ak ], [ %i.fu, %.preheader.i219 ] ; 3 uses
  %i.he = getelementptr [4 x i8], ptr %i.gg, i64 %.162.i
  %i.hf = getelementptr i8, ptr %i.he, i64 -4
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !12
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %bb.ak, label %big_sub2.exit

bb.ak:                                            ; preds = %.lr.ph63.i
  %i.hi = add i64 %.162.i, -1                     ; 2 uses
  %i.hj = icmp ugt i64 %i.hi, 1
  br i1 %i.hj, label %.lr.ph63.i, label %big_sub2.exit, !llvm.loop !55

big_sub2.exit:                                    ; preds = %.lr.ph63.i, %bb.ak, %big_add.exit214, %.preheader.i219
  %.1.lcssa.i = phi i64 [ 1, %.preheader.i219 ], [ 0, %big_add.exit214 ], [ 1, %bb.ak ], [ %.162.i, %.lr.ph63.i ] ; 6 uses
  %i.hk = add i64 %.0166, %.0                     ; 4 uses
  %i.hl = call noalias ptr @calloc(i64 noundef %i.hk, i64 noundef 4) #15 ; 6 uses
  br i1 %i.fx, label %bb.al, label %bb.am

bb.al:                                            ; preds = %big_sub2.exit
  call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 205, ptr noundef nonnull @__PRETTY_FUNCTION__.karatsuba_multiply) #13
  unreachable

bb.am:                                            ; preds = %big_sub2.exit
  %i.hm = shl i64 %i.fz, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.hl, ptr noundef nonnull align 1 %i.fw, i64 noundef %i.hm, i1 noundef false) #16
  br i1 %i.gc, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 208, ptr noundef nonnull @__PRETTY_FUNCTION__.karatsuba_multiply) #13
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.hn = and i64 %.1, -2
  %i.ho = getelementptr [4 x i8], ptr %i.hl, i64 %i.hn
  %i.hp = shl i64 %i.ge, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ho, ptr noundef nonnull align 1 %i.gb, i64 noundef %i.hp, i1 noundef false) #16
  %invariant.gep = getelementptr [4 x i8], ptr %i.hl, i64 %i.cv ; 3 uses
  %.not288 = icmp eq i64 %.1.lcssa.i, 0
  br i1 %.not288, label %.preheader245, label %.lr.ph260.preheader

.lr.ph260.preheader:                              ; preds = %bb.ao
  %xtraiter359 = and i64 %.1.lcssa.i, 1
  %i.hq = icmp eq i64 %.1.lcssa.i, 1
  br i1 %i.hq, label %.lr.ph260.epil.preheader, label %.lr.ph260.preheader.new

.lr.ph260.preheader.new:                          ; preds = %.lr.ph260.preheader
  %unroll_iter364 = and i64 %.1.lcssa.i, -2
  br label %.lr.ph260

._crit_edge261.unr-lcssa:                         ; preds = %.lr.ph260
  %lcmp.mod360.not = icmp eq i64 %xtraiter359, 0
  br i1 %lcmp.mod360.not, label %._crit_edge261, label %.lr.ph260.epil.preheader

.lr.ph260.epil.preheader:                         ; preds = %._crit_edge261.unr-lcssa, %.lr.ph260.preheader
  %.0172258.epil.init = phi i64 [ 0, %.lr.ph260.preheader ], [ %i.ix, %._crit_edge261.unr-lcssa ] ; 2 uses
  %.0173257.epil.init = phi i64 [ 0, %.lr.ph260.preheader ], [ %i.iw, %._crit_edge261.unr-lcssa ]
  %lcmp.mod363 = trunc i64 %.1.lcssa.i to i1
  call void @llvm.assume(i1 %lcmp.mod363)
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %.0172258.epil.init ; 2 uses
  %i.hr = load i32, ptr %gep.epil, align 4, !tbaa !12
  %i.hs = zext i32 %i.hr to i64
  %i.ht = add nuw nsw i64 %.0173257.epil.init, %i.hs
  %i.hu = getelementptr [4 x i8], ptr %i.gg, i64 %.0172258.epil.init
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !12
  %i.hw = zext i32 %i.hv to i64
  %i.hx = add nuw nsw i64 %i.ht, %i.hw            ; 3 uses
  %i.hy = urem i64 %i.hx, %3
  %i.hz = trunc nuw i64 %i.hy to i32
  store i32 %i.hz, ptr %gep.epil, align 4, !tbaa !12
  %i.ia = udiv i64 %i.hx, %3
  br label %._crit_edge261

._crit_edge261:                                   ; preds = %._crit_edge261.unr-lcssa, %.lr.ph260.epil.preheader
  %.lcssa349 = phi i64 [ %i.it, %._crit_edge261.unr-lcssa ], [ %i.hx, %.lr.ph260.epil.preheader ]
  %.lcssa348 = phi i64 [ %i.iw, %._crit_edge261.unr-lcssa ], [ %i.ia, %.lr.ph260.epil.preheader ]
  %.not193263 = icmp ugt i64 %3, %.lcssa349
  br i1 %.not193263, label %.preheader245, label %.lr.ph267.preheader

.lr.ph267.preheader:                              ; preds = %._crit_edge261
  %i.ib = add i64 %.1.lcssa.i, %i.cv
  br label %.lr.ph267

.lr.ph260:                                        ; preds = %.lr.ph260, %.lr.ph260.preheader.new
  %.0172258 = phi i64 [ 0, %.lr.ph260.preheader.new ], [ %i.ix, %.lr.ph260 ] ; 4 uses
  %.0173257 = phi i64 [ 0, %.lr.ph260.preheader.new ], [ %i.iw, %.lr.ph260 ]
  %niter365 = phi i64 [ 0, %.lr.ph260.preheader.new ], [ %niter365.next.1, %.lr.ph260 ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.0172258 ; 2 uses
  %i.ic = load i32, ptr %gep, align 4, !tbaa !12
  %i.id = zext i32 %i.ic to i64
  %i.ie = add nuw nsw i64 %.0173257, %i.id
  %i.if = getelementptr [4 x i8], ptr %i.gg, i64 %.0172258
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !12
  %i.ih = zext i32 %i.ig to i64
  %i.ii = add nuw nsw i64 %i.ie, %i.ih            ; 2 uses
  %i.ij = urem i64 %i.ii, %3
  %i.ik = trunc nuw i64 %i.ij to i32
  store i32 %i.ik, ptr %gep, align 4, !tbaa !12
  %i.il = udiv i64 %i.ii, %3
  %i.im = or disjoint i64 %.0172258, 1            ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.im ; 2 uses
  %i.in = load i32, ptr %gep.1, align 4, !tbaa !12
  %i.io = zext i32 %i.in to i64
  %i.ip = add nuw nsw i64 %i.il, %i.io
  %i.iq = getelementptr [4 x i8], ptr %i.gg, i64 %i.im
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !12
  %i.is = zext i32 %i.ir to i64
  %i.it = add nuw nsw i64 %i.ip, %i.is            ; 3 uses
  %i.iu = urem i64 %i.it, %3
  %i.iv = trunc nuw i64 %i.iu to i32
  store i32 %i.iv, ptr %gep.1, align 4, !tbaa !12
  %i.iw = udiv i64 %i.it, %3                      ; 3 uses
  %i.ix = add nuw i64 %.0172258, 2                ; 2 uses
  %niter365.next.1 = add nuw i64 %niter365, 2     ; 2 uses
  %niter365.ncmp.1 = icmp eq i64 %niter365.next.1, %unroll_iter364
  br i1 %niter365.ncmp.1, label %._crit_edge261.unr-lcssa, label %.lr.ph260, !llvm.loop !56

.preheader245:                                    ; preds = %.lr.ph267, %bb.ao, %._crit_edge261
  %i.iy = icmp ugt i64 %i.hk, 1
  br i1 %i.iy, label %.lr.ph269, label %pm_integer_free.exit225

.lr.ph267:                                        ; preds = %.lr.ph267.preheader, %.lr.ph267
  %.0171265 = phi i64 [ %i.jg, %.lr.ph267 ], [ %i.ib, %.lr.ph267.preheader ] ; 2 uses
  %.1174264 = phi i64 [ %i.jf, %.lr.ph267 ], [ %.lcssa348, %.lr.ph267.preheader ]
  %i.iz = getelementptr [4 x i8], ptr %i.hl, i64 %.0171265 ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !12
  %i.jb = zext i32 %i.ja to i64
  %i.jc = add nuw nsw i64 %.1174264, %i.jb        ; 3 uses
  %i.jd = urem i64 %i.jc, %3
  %i.je = trunc nuw i64 %i.jd to i32
  store i32 %i.je, ptr %i.iz, align 4, !tbaa !12
  %i.jf = udiv i64 %i.jc, %3
  %i.jg = add i64 %.0171265, 1
  %.not193 = icmp samesign ugt i64 %3, %i.jc
  br i1 %.not193, label %.preheader245, label %.lr.ph267, !llvm.loop !57

.lr.ph269:                                        ; preds = %.preheader245, %bb.ap
  %.0175268 = phi i64 [ %i.jl, %bb.ap ], [ %i.hk, %.preheader245 ] ; 3 uses
  %i.jh = getelementptr [4 x i8], ptr %i.hl, i64 %.0175268
  %i.ji = getelementptr i8, ptr %i.jh, i64 -4
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !12
  %i.jk = icmp eq i32 %i.jj, 0
  br i1 %i.jk, label %bb.ap, label %pm_integer_free.exit225

bb.ap:                                            ; preds = %.lr.ph269
  %i.jl = add i64 %.0175268, -1                   ; 2 uses
  %i.jm = icmp ugt i64 %i.jl, 1
  br i1 %i.jm, label %.lr.ph269, label %pm_integer_free.exit225, !llvm.loop !58

pm_integer_free.exit225:                          ; preds = %.lr.ph269, %bb.ap, %.preheader245
  %.0175.lcssa = phi i64 [ %i.hk, %.preheader245 ], [ 1, %bb.ap ], [ %.0175268, %.lr.ph269 ]
  call void @free(ptr noundef nonnull %i.fw) #16
  %.not.i226 = icmp eq ptr %i.gg, null
  br i1 %.not.i226, label %pm_integer_free.exit229, label %bb.aq

bb.aq:                                            ; preds = %pm_integer_free.exit225
  call void @free(ptr noundef nonnull %i.gg) #16
  br label %pm_integer_free.exit229

pm_integer_free.exit229:                          ; preds = %pm_integer_free.exit225, %bb.aq
  call void @free(ptr noundef nonnull %i.gb) #16
  %i.jn = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !21 ; 2 uses
  %.not.i230 = icmp eq ptr %i.jo, null
  br i1 %.not.i230, label %pm_integer_free.exit231, label %bb.ar

bb.ar:                                            ; preds = %pm_integer_free.exit229
  call void @free(ptr noundef nonnull %i.jo) #16
  br label %pm_integer_free.exit231

pm_integer_free.exit231:                          ; preds = %pm_integer_free.exit229, %bb.ar
  %i.jp = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !21 ; 2 uses
  %.not.i232 = icmp eq ptr %i.jq, null
  br i1 %.not.i232, label %pm_integer_free.exit233, label %bb.as

bb.as:                                            ; preds = %pm_integer_free.exit231
  call void @free(ptr noundef nonnull %i.jq) #16
  br label %pm_integer_free.exit233

pm_integer_free.exit233:                          ; preds = %pm_integer_free.exit231, %bb.as
  br i1 %i.fs, label %pm_integer_free.exit235, label %bb.at

bb.at:                                            ; preds = %pm_integer_free.exit233
  call void @free(ptr noundef nonnull %i.fr) #16
  br label %pm_integer_free.exit235

pm_integer_free.exit235:                          ; preds = %pm_integer_free.exit233, %bb.at
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx, i8 0, i64 3, i1 false)
  store i64 %.0175.lcssa, ptr %0, align 8, !tbaa !22
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hl, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !23
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !12
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.au

bb.au:                                            ; preds = %.critedge, %bb.j, %pm_integer_free.exit235, %._crit_edge256
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(0,1) }
attributes #16 = { nounwind }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !14}
!1 = distinct !{!1, !14}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!10, !10, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"long", !10, i64 0}
!16 = !{!"any pointer", !10, i64 0}
!17 = !{!"p1 int", !16, i64 0}
!18 = !{!"_Bool", !10, i64 0}
!19 = !{!"", !15, i64 0, !17, i64 8, !11, i64 16, !18, i64 20}
!20 = !{!19, !15, i64 0}
!21 = !{!19, !17, i64 8}
!22 = !{!15, !15, i64 0}
!23 = !{!17, !17, i64 0}
!24 = !{!18, !18, i64 0}
!25 = !{!19, !11, i64 16}
!26 = !{!19, !18, i64 20}
!27 = !{i8 0, i8 2}
!28 = !{}
!29 = distinct !{!29, !14}
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !14}
!38 = distinct !{!38, !14, !41, !42}
!39 = distinct !{!39, !14, !41}
!40 = distinct !{!40, !14}
!41 = !{!"llvm.loop.isvectorized", i32 1}
!42 = !{!"llvm.loop.unroll.runtime.disable"}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !14}
!45 = distinct !{!45, !14}
!46 = distinct !{!46, !14}
!47 = distinct !{!47, !14}
!48 = !{i64 0, i64 8, !22, i64 8, i64 8, !23, i64 16, i64 4, !12, i64 20, i64 1, !24}
!49 = distinct !{!49, !14}
!50 = distinct !{!50, !14}
!51 = distinct !{!51, !14}
!52 = distinct !{!52, !14}
!53 = distinct !{!53, !14}
!54 = distinct !{!54, !14}
!55 = distinct !{!55, !14}
!56 = distinct !{!56, !14}
!57 = distinct !{!57, !14}
!58 = distinct !{!58, !14}
end_hunk_0
