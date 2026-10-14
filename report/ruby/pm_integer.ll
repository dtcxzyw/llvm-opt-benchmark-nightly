Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/pm_integer?download=true
inline.NumInlined: 29
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@pm_integer_string:bb.a
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
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader80

.lr.ph.preheader80:                               ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %.03745.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %middle.block
  %i.gh = add i64 %i.r, -1                        ; 2 uses
  %.not50 = icmp eq i64 %i.gh, 0
  br i1 %.not50, label %pm_integer_free.exit41, label %.lr.ph47.preheader

.lr.ph47.preheader:                               ; preds = %.preheader42, %.preheader
  %i.gi = phi i64 [ %i.gh, %.preheader ], [ -1, %.preheader42 ] ; 2 uses
  br label %.lr.ph47

.lr.ph:                                           ; preds = %.lr.ph.preheader80, %.lr.ph
  %.03745 = phi i64 [ %i.hn, %.lr.ph ], [ %.03745.ph, %.lr.ph.preheader80 ] ; 3 uses
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
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader29.i ], [ 1, %._crit_edge ] ; 4 uses
  %.02331.i = phi i64 [ %i.t, %.preheader29.i ], [ %2, %._crit_edge ] ; 2 uses
  %.02430.i = phi i64 [ %i.s, %.preheader29.i ], [ 0, %._crit_edge ]
  %i.s = add i64 %.02430.i, 1                     ; 4 uses
  %i.t = udiv i64 %.02331.i, %3
  %.not.i = icmp samesign ugt i64 %3, %.02331.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  br i1 %.not.i, label %bb.f, label %.preheader29.i, !llvm.loop !43

bb.f:                                             ; preds = %.preheader29.i
  %i.u = shl i64 %i.s, 2
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #14 ; 7 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %pm_integer_from_uint64.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %.not34.i = icmp eq i64 %i.s, 0
  br i1 %.not34.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %7 = add i64 %indvars.iv.i, -1
  %xtraiter164 = and i64 %indvars.iv.i, 3         ; 3 uses
  %8 = icmp ult i64 %7, 3
  br i1 %8, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter167 = and i64 %indvars.iv.i, -4
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod165.not = icmp eq i64 %xtraiter164, 0
  br i1 %lcmp.mod165.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.033.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ak, %._crit_edge.i.loopexit.unr-lcssa ]
  %.02532.i.epil.init = phi i64 [ %2, %.lr.ph.i.preheader ], [ %i.aj, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod167 = icmp ne i64 %xtraiter164, 0
  tail call void @llvm.assume(i1 %lcmp.mod167)
  br label %.lr.ph.i.epil.preheader.a

.lr.ph.i.epil.preheader.a:                        ; preds = %.lr.ph.i.epil.preheader.a, %.lr.ph.i.epil.preheader
  %.033.i.epil.init.a = phi i64 [ %10, %.lr.ph.i.epil.preheader.a ], [ %.033.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.02532.i.epil.init.a = phi i64 [ %9, %.lr.ph.i.epil.preheader.a ], [ %.02532.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter165 = phi i64 [ %epil.iter165.next, %.lr.ph.i.epil.preheader.a ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.x = urem i64 %.02532.i.epil.init.a, %3
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = getelementptr [4 x i8], ptr %i.v, i64 %.033.i.epil.init.a
  store i32 %i.y, ptr %i.z, align 4, !tbaa !12
  %9 = udiv i64 %.02532.i.epil.init.a, %3
  %10 = add nuw i64 %.033.i.epil.init.a, 1
  %epil.iter165.next = add i64 %epil.iter165, 1   ; 2 uses
  %epil.iter165.cmp.not = icmp eq i64 %epil.iter165.next, %xtraiter164
  br i1 %epil.iter165.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader.a, !llvm.loop !44

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader.a, %.preheader.i
  store i64 %i.s, ptr %4, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.v, ptr %i.aa, align 8, !tbaa !21
  br label %pm_integer_from_uint64.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.033.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ak, %.lr.ph.i ] ; 5 uses
  %.02532.i = phi i64 [ %2, %.lr.ph.i.preheader.new ], [ %i.aj, %.lr.ph.i ] ; 2 uses
  %niter168 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter168.next.1, %.lr.ph.i ]
  %11 = urem i64 %.02532.i, %3
  %12 = trunc nuw i64 %11 to i32
  %13 = getelementptr [4 x i8], ptr %i.v, i64 %.033.i
  store i32 %12, ptr %13, align 4, !tbaa !12
  %14 = udiv i64 %.02532.i, %3                    ; 2 uses
  %15 = urem i64 %14, %3
  %16 = trunc nuw i64 %15 to i32
  %17 = getelementptr [4 x i8], ptr %i.v, i64 %.033.i
  %18 = getelementptr i8, ptr %17, i64 4
  store i32 %16, ptr %18, align 4, !tbaa !12
  %19 = udiv i64 %14, %3                          ; 2 uses
  %i.ab = urem i64 %19, %3
  %i.ac = trunc nuw i64 %i.ab to i32
  %i.ad = getelementptr [4 x i8], ptr %i.v, i64 %.033.i
  %20 = getelementptr i8, ptr %i.ad, i64 8
  store i32 %i.ac, ptr %20, align 4, !tbaa !12
  %i.ae = udiv i64 %19, %3                        ; 2 uses
  %i.af = urem i64 %i.ae, %3
  %i.ag = trunc nuw i64 %i.af to i32
  %i.ah = getelementptr [4 x i8], ptr %i.v, i64 %.033.i
  %i.ai = getelementptr i8, ptr %i.ah, i64 12
  store i32 %i.ag, ptr %i.ai, align 4, !tbaa !12
  %i.aj = udiv i64 %i.ae, %3                      ; 2 uses
  %i.ak = add nuw i64 %.033.i, 4                  ; 2 uses
  %niter168.next.1 = add i64 %niter168, 4         ; 2 uses
  %niter168.ncmp.1 = icmp eq i64 %niter168.next.1, %unroll_iter167
  br i1 %niter168.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !45

pm_integer_from_uint64.exit:                      ; preds = %bb.e, %bb.f, %._crit_edge.i
  %i.al = icmp samesign ugt i64 %i.n, 1
  br i1 %i.al, label %.lr.ph110, label %._crit_edge111

.lr.ph110:                                        ; preds = %pm_integer_from_uint64.exit
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.k

.lr.ph:                                           ; preds = %.lr.ph.preheader, %pm_integer_from_uint64.exit80
  %.057106 = phi i64 [ %i.by, %pm_integer_from_uint64.exit80 ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.ap = getelementptr [4 x i8], ptr %.060102144150, i64 %.057106
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !12
  %i.ar = zext i32 %i.aq to i64
  %i.as = or disjoint i64 %.057106, 1             ; 2 uses
  %i.at = icmp ult i64 %i.as, %.061101145149
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.au = getelementptr [4 x i8], ptr %.060102144150, i64 %i.as
  %i.av = load i32, ptr %i.au, align 4, !tbaa !12
  %i.aw = zext i32 %i.av to i64
  %i.ax = mul nuw i64 %2, %i.aw
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %i.ay = phi i64 [ %i.ax, %bb.g ], [ 0, %.lr.ph ]
  %i.az = add nuw i64 %i.ay, %i.ar                ; 5 uses
  %i.ba = lshr exact i64 %.057106, 1
  %i.bb = getelementptr [24 x i8], ptr %i.m, i64 %i.ba ; 3 uses
  %i.bc = icmp ult i64 %i.az, %3
  br i1 %i.bc, label %bb.i, label %.preheader29.i67

bb.i:                                             ; preds = %bb.h
  %i.bd = trunc nuw i64 %i.az to i32
  %i.be = getelementptr i8, ptr %i.bb, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !25
  br label %pm_integer_from_uint64.exit80

.preheader29.i67:                                 ; preds = %bb.h, %.preheader29.i67
  %indvars.iv.i68 = phi i64 [ %indvars.iv.next.i72, %.preheader29.i67 ], [ 1, %bb.h ] ; 4 uses
  %.02331.i69 = phi i64 [ %i.bg, %.preheader29.i67 ], [ %i.az, %bb.h ] ; 2 uses
  %.02430.i70 = phi i64 [ %i.bf, %.preheader29.i67 ], [ 0, %bb.h ]
  %i.bf = add i64 %.02430.i70, 1                  ; 4 uses
  %i.bg = udiv i64 %.02331.i69, %3
  %.not.i71 = icmp ugt i64 %3, %.02331.i69
  %indvars.iv.next.i72 = add i64 %indvars.iv.i68, 1
  br i1 %.not.i71, label %bb.j, label %.preheader29.i67, !llvm.loop !43

bb.j:                                             ; preds = %.preheader29.i67
  %i.bh = shl i64 %i.bf, 2
  %i.bi = tail call noalias ptr @malloc(i64 noundef %i.bh) #14 ; 7 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %pm_integer_from_uint64.exit80, label %.preheader.i73

.preheader.i73:                                   ; preds = %bb.j
  %.not34.i74 = icmp eq i64 %i.bf, 0
  br i1 %.not34.i74, label %._crit_edge.i79, label %.lr.ph.i75.preheader

.lr.ph.i75.preheader:                             ; preds = %.preheader.i73
  %21 = add i64 %indvars.iv.i68, -1
  %xtraiter = and i64 %indvars.iv.i68, 3          ; 3 uses
  %22 = icmp ult i64 %21, 3
  br i1 %22, label %.lr.ph.i75.epil.preheader, label %.lr.ph.i75.preheader.new

.lr.ph.i75.preheader.new:                         ; preds = %.lr.ph.i75.preheader
  %unroll_iter = and i64 %indvars.iv.i68, -4
  br label %.lr.ph.i75

._crit_edge.i79.loopexit.unr-lcssa:               ; preds = %.lr.ph.i75
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i79, label %.lr.ph.i75.epil.preheader

.lr.ph.i75.epil.preheader:                        ; preds = %._crit_edge.i79.loopexit.unr-lcssa, %.lr.ph.i75.preheader
  %.033.i76.epil.init = phi i64 [ 0, %.lr.ph.i75.preheader ], [ %i.bx, %._crit_edge.i79.loopexit.unr-lcssa ]
  %.02532.i77.epil.init = phi i64 [ %i.az, %.lr.ph.i75.preheader ], [ %i.bw, %._crit_edge.i79.loopexit.unr-lcssa ]
  %lcmp.mod163 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod163)
  br label %.lr.ph.i75.epil.preheader.a

.lr.ph.i75.epil.preheader.a:                      ; preds = %.lr.ph.i75.epil.preheader.a, %.lr.ph.i75.epil.preheader
  %.033.i76.epil.init.a = phi i64 [ %24, %.lr.ph.i75.epil.preheader.a ], [ %.033.i76.epil.init, %.lr.ph.i75.epil.preheader ] ; 2 uses
  %.02532.i77.epil.init.a = phi i64 [ %23, %.lr.ph.i75.epil.preheader.a ], [ %.02532.i77.epil.init, %.lr.ph.i75.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i75.epil.preheader.a ], [ 0, %.lr.ph.i75.epil.preheader ]
  %i.bk = urem i64 %.02532.i77.epil.init.a, %3
  %i.bl = trunc nuw i64 %i.bk to i32
  %i.bm = getelementptr [4 x i8], ptr %i.bi, i64 %.033.i76.epil.init.a
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !12
  %23 = udiv i64 %.02532.i77.epil.init.a, %3
  %24 = add nuw i64 %.033.i76.epil.init.a, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i79, label %.lr.ph.i75.epil.preheader.a, !llvm.loop !46

._crit_edge.i79:                                  ; preds = %._crit_edge.i79.loopexit.unr-lcssa, %.lr.ph.i75.epil.preheader.a, %.preheader.i73
  store i64 %i.bf, ptr %i.bb, align 8, !tbaa !20
  %i.bn = getelementptr i8, ptr %i.bb, i64 8
  store ptr %i.bi, ptr %i.bn, align 8, !tbaa !21
  br label %pm_integer_from_uint64.exit80

.lr.ph.i75:                                       ; preds = %.lr.ph.i75, %.lr.ph.i75.preheader.new
  %.033.i76 = phi i64 [ 0, %.lr.ph.i75.preheader.new ], [ %i.bx, %.lr.ph.i75 ] ; 5 uses
  %.02532.i77 = phi i64 [ %i.az, %.lr.ph.i75.preheader.new ], [ %i.bw, %.lr.ph.i75 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i75.preheader.new ], [ %niter.next.1, %.lr.ph.i75 ]
  %25 = urem i64 %.02532.i77, %3
  %26 = trunc nuw i64 %25 to i32
  %27 = getelementptr [4 x i8], ptr %i.bi, i64 %.033.i76
  store i32 %26, ptr %27, align 4, !tbaa !12
  %28 = udiv i64 %.02532.i77, %3                  ; 2 uses
  %29 = urem i64 %28, %3
  %30 = trunc nuw i64 %29 to i32
  %31 = getelementptr [4 x i8], ptr %i.bi, i64 %.033.i76
  %32 = getelementptr i8, ptr %31, i64 4
  store i32 %30, ptr %32, align 4, !tbaa !12
  %33 = udiv i64 %28, %3                          ; 2 uses
  %i.bo = urem i64 %33, %3
  %i.bp = trunc nuw i64 %i.bo to i32
  %i.bq = getelementptr [4 x i8], ptr %i.bi, i64 %.033.i76
  %34 = getelementptr i8, ptr %i.bq, i64 8
  store i32 %i.bp, ptr %34, align 4, !tbaa !12
  %i.br = udiv i64 %33, %3                        ; 2 uses
  %i.bs = urem i64 %i.br, %3
  %i.bt = trunc nuw i64 %i.bs to i32
  %i.bu = getelementptr [4 x i8], ptr %i.bi, i64 %.033.i76
  %i.bv = getelementptr i8, ptr %i.bu, i64 12
  store i32 %i.bt, ptr %i.bv, align 4, !tbaa !12
  %i.bw = udiv i64 %i.br, %3                      ; 2 uses
  %i.bx = add nuw i64 %.033.i76, 4                ; 2 uses
  %niter.next.1 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i79.loopexit.unr-lcssa, label %.lr.ph.i75, !llvm.loop !45

pm_integer_from_uint64.exit80:                    ; preds = %bb.i, %bb.j, %._crit_edge.i79
  %i.by = add i64 %.057106, 2                     ; 2 uses
  %i.bz = icmp ult i64 %i.by, %.061101145149
  br i1 %i.bz, label %.lr.ph, label %._crit_edge, !llvm.loop !47

bb.k:                                             ; preds = %.lr.ph110, %bb.m
  %.058109 = phi ptr [ %i.o, %.lr.ph110 ], [ %i.cd, %bb.m ] ; 4 uses
  %.059108 = phi i64 [ %i.n, %.lr.ph110 ], [ %i.cc, %bb.m ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call fastcc void @karatsuba_multiply(ptr noundef %5, ptr noundef %4, ptr noundef nonnull %4, i64 noundef %3)
  %i.ca = load ptr, ptr %i.am, align 8, !tbaa !21 ; 2 uses
  %.not.i81 = icmp eq ptr %i.ca, null
  br i1 %.not.i81, label %pm_integer_free.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %i.ca) #16
  br label %pm_integer_free.exit

pm_integer_free.exit:                             ; preds = %bb.k, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !51
  %i.cb = add nuw i64 %.059108, 1
  %i.cc = lshr i64 %i.cb, 1                       ; 2 uses
  %i.cd = call noalias ptr @calloc(i64 noundef %i.cc, i64 noundef 24) #15 ; 4 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.ab
  call void @free(ptr noundef nonnull %.058109) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.ce = icmp ugt i64 %.059108, 2
  br i1 %i.ce, label %bb.k, label %._crit_edge111, !llvm.loop !48

bb.n:                                             ; preds = %pm_integer_free.exit, %bb.ab
  %.0107 = phi i64 [ 0, %pm_integer_free.exit ], [ %i.dx, %bb.ab ] ; 6 uses
  %i.cf = or disjoint i64 %.0107, 1               ; 2 uses
  %i.cg = icmp eq i64 %i.cf, %.059108
  br i1 %i.cg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ch = lshr exact i64 %.0107, 1
  %i.ci = getelementptr [24 x i8], ptr %i.cd, i64 %i.ch
  %i.cj = getelementptr [24 x i8], ptr %.058109, i64 %.0107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i64 24, i1 false), !tbaa.struct !51
  br label %bb.ab

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.ck = getelementptr [24 x i8], ptr %.058109, i64 %i.cf ; 2 uses
  call fastcc void @karatsuba_multiply(ptr noundef %6, ptr noundef %4, ptr noundef %i.ck, i64 noundef %3)
  %i.cl = lshr exact i64 %.0107, 1
  %i.cm = getelementptr [24 x i8], ptr %i.cd, i64 %i.cl ; 5 uses
  %i.cn = getelementptr [24 x i8], ptr %.058109, i64 %.0107 ; 3 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 8      ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !21 ; 3 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cr = getelementptr i8, ptr %i.cn, i64 16
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cs = load i64, ptr %i.cn, align 8, !tbaa !20
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.039.i = phi ptr [ %i.cr, %bb.q ], [ %i.cp, %bb.r ]
  %.0.i = phi i64 [ 1, %bb.q ], [ %i.cs, %bb.r ]  ; 2 uses
  %i.ct = load ptr, ptr %i.an, align 8, !tbaa !21 ; 3 uses
  %i.cu = icmp eq ptr %i.ct, null                 ; 3 uses
  %i.cv = load i64, ptr %6, align 8
  %.041.i = select i1 %i.cu, ptr %i.ao, ptr %i.ct
  %.040.i = select i1 %i.cu, i64 1, i64 %i.cv     ; 2 uses
  %i.cw = call i64 @llvm.umax.i64(i64 %.0.i, i64 %.040.i) ; 5 uses
  %i.cx = add i64 %i.cw, 1                        ; 2 uses
  %i.cy = shl i64 %i.cx, 2
  %i.cz = call noalias ptr @malloc(i64 noundef %i.cy) #14 ; 4 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %big_add.exit, label %.preheader.i82

.preheader.i82:                                   ; preds = %bb.s
  %.not51.i = icmp eq i64 %i.cw, 0
  br i1 %.not51.i, label %._crit_edge.thread.i, label %.lr.ph.i83

._crit_edge.i85:                                  ; preds = %bb.w
  %.not.i86 = icmp ugt i64 %3, %i.dm
  br i1 %.not.i86, label %._crit_edge.thread.i, label %bb.x

.lr.ph.i83:                                       ; preds = %.preheader.i82, %bb.w
  %.04250.i = phi i64 [ %i.dr, %bb.w ], [ 0, %.preheader.i82 ] ; 6 uses
  %.04349.i = phi i64 [ %i.dq, %bb.w ], [ 0, %.preheader.i82 ]
  %i.db = icmp ult i64 %.04250.i, %.0.i
  br i1 %i.db, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i83
  %i.dc = getelementptr [4 x i8], ptr %.039.i, i64 %.04250.i
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !12
  %i.de = zext i32 %i.dd to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i83
  %i.df = phi i64 [ %i.de, %bb.t ], [ 0, %.lr.ph.i83 ]
  %i.dg = add nuw nsw i64 %i.df, %.04349.i
  %i.dh = icmp ult i64 %.04250.i, %.040.i
  br i1 %i.dh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.di = getelementptr [4 x i8], ptr %.041.i, i64 %.04250.i
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !12
  %i.dk = zext i32 %i.dj to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dl = phi i64 [ %i.dk, %bb.v ], [ 0, %bb.u ]
  %i.dm = add nuw nsw i64 %i.dg, %i.dl            ; 3 uses
  %i.dn = urem i64 %i.dm, %3
  %i.do = trunc nuw i64 %i.dn to i32
  %i.dp = getelementptr [4 x i8], ptr %i.cz, i64 %.04250.i
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !12
  %i.dq = udiv i64 %i.dm, %3                      ; 2 uses
  %i.dr = add nuw i64 %.04250.i, 1                ; 2 uses
  %exitcond.not.i84 = icmp eq i64 %i.dr, %i.cw
  br i1 %exitcond.not.i84, label %._crit_edge.i85, label %.lr.ph.i83, !llvm.loop !1

bb.x:                                             ; preds = %._crit_edge.i85
  %i.ds = trunc nuw nsw i64 %i.dq to i32
  %i.dt = getelementptr [4 x i8], ptr %i.cz, i64 %i.cw
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !12
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.x, %._crit_edge.i85, %.preheader.i82
  %.044.i = phi i64 [ %i.cx, %bb.x ], [ %i.cw, %._crit_edge.i85 ], [ 0, %.preheader.i82 ]
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx.i, i8 0, i64 3, i1 false)
  store i64 %.044.i, ptr %i.cm, align 8, !tbaa !22
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.cz, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !23
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store i32 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !12
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 20
  store i8 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !24
  %.pre = load ptr, ptr %i.co, align 8, !tbaa !21
  br label %big_add.exit

big_add.exit:                                     ; preds = %bb.s, %._crit_edge.thread.i
  %i.du = phi ptr [ %i.cp, %bb.s ], [ %.pre, %._crit_edge.thread.i ] ; 2 uses
  %.not.i87 = icmp eq ptr %i.du, null
  br i1 %.not.i87, label %pm_integer_free.exit88, label %bb.y

bb.y:                                             ; preds = %big_add.exit
  call void @free(ptr noundef nonnull %i.du) #16
  br label %pm_integer_free.exit88

pm_integer_free.exit88:                           ; preds = %big_add.exit, %bb.y
  %i.dv = getelementptr i8, ptr %i.ck, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !21 ; 2 uses
  %.not.i89 = icmp eq ptr %i.dw, null
  br i1 %.not.i89, label %pm_integer_free.exit90, label %bb.z

bb.z:                                             ; preds = %pm_integer_free.exit88
  call void @free(ptr noundef nonnull %i.dw) #16
  br label %pm_integer_free.exit90

pm_integer_free.exit90:                           ; preds = %pm_integer_free.exit88, %bb.z
  br i1 %i.cu, label %pm_integer_free.exit92, label %bb.aa

bb.aa:                                            ; preds = %pm_integer_free.exit90
  call void @free(ptr noundef nonnull %i.ct) #16
  br label %pm_integer_free.exit92

pm_integer_free.exit92:                           ; preds = %pm_integer_free.exit90, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.o, %pm_integer_free.exit92
  %i.dx = add nuw i64 %.0107, 2                   ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %.059108
  br i1 %i.dy, label %bb.n, label %bb.m, !llvm.loop !49

._crit_edge111:                                   ; preds = %bb.m, %pm_integer_from_uint64.exit
  %.058.lcssa = phi ptr [ %i.o, %pm_integer_from_uint64.exit ], [ %i.cd, %bb.m ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.058.lcssa, i64 24, i1 false), !tbaa.struct !51
  %i.dz = getelementptr i8, ptr %1, i64 20
  %i.ea = load i8, ptr %i.dz, align 4, !tbaa !26, !range !27, !noundef !28 ; 2 uses
  %i.eb = getelementptr i8, ptr %0, i64 20        ; 2 uses
  store i8 %i.ea, ptr %i.eb, align 4, !tbaa !26
  %i.ec = getelementptr i8, ptr %0, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !21 ; 4 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %pm_integer_normalize.exit, label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %._crit_edge111
  %.pr.i = load i64, ptr %0, align 8, !tbaa !20   ; 2 uses
  %i.ef = icmp ugt i64 %.pr.i, 1
  br i1 %i.ef, label %.lr.ph.i95, label %pm_integer_free.exit.i

.lr.ph.i95:                                       ; preds = %thread-pre-split.i, %bb.ac
  %i.eg = phi i64 [ %i.el, %bb.ac ], [ %.pr.i, %thread-pre-split.i ] ; 2 uses
  %i.eh = getelementptr [4 x i8], ptr %i.ed, i64 %i.eg
  %i.ei = getelementptr i8, ptr %i.eh, i64 -4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !12
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.ac, label %pm_integer_normalize.exit

bb.ac:                                            ; preds = %.lr.ph.i95
  %i.el = add i64 %i.eg, -1                       ; 3 uses
  store i64 %i.el, ptr %0, align 8, !tbaa !20
  %i.em = icmp ugt i64 %i.el, 1
  br i1 %i.em, label %.lr.ph.i95, label %pm_integer_free.exit.i, !llvm.loop !0

pm_integer_free.exit.i:                           ; preds = %bb.ac, %thread-pre-split.i
  %i.en = load i32, ptr %i.ed, align 4, !tbaa !12 ; 2 uses
  %i.eo = trunc nuw i8 %i.ea to i1
  %i.ep = icmp ne i32 %i.en, 0
  %i.eq = select i1 %i.eo, i1 %i.ep, i1 false
  %i.er = zext i1 %i.eq to i8
  call void @free(ptr noundef nonnull %i.ed) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i93 = getelementptr inbounds nuw i8, ptr %0, i64 21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4.0..sroa_idx.i93, i8 0, i64 3, i1 false)
  %.sroa.2.0..sroa_idx.i94 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.en, ptr %.sroa.2.0..sroa_idx.i94, align 8, !tbaa !12
  store i8 %i.er, ptr %i.eb, align 4, !tbaa !24
  br label %pm_integer_normalize.exit

pm_integer_normalize.exit:                        ; preds = %.lr.ph.i95, %._crit_edge111, %pm_integer_free.exit.i
  call void @free(ptr noundef %.058.lcssa) #16
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !21 ; 2 uses
  %.not.i96 = icmp eq ptr %i.et, null
  br i1 %.not.i96, label %pm_integer_free.exit97, label %bb.ad

bb.ad:                                            ; preds = %pm_integer_normalize.exit
  call void @free(ptr noundef nonnull %i.et) #16
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
  %.1169 = phi ptr [ %.0164, %bb.h ], [ %.0168, %bb.g ] ; 6 uses
  %.1167 = phi i64 [ %.0, %bb.h ], [ %.0166, %bb.g ] ; 11 uses
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
  br i1 %or.cond, label %.preheader, label %.preheader243.us.preheader

.preheader243.us.preheader:                       ; preds = %.preheader244
  %xtraiter367 = and i64 %.1167, 1
  %16 = icmp eq i64 %.1167, 1
  %unroll_iter371 = and i64 %.1167, -2
  %lcmp.mod368.not = icmp eq i64 %xtraiter367, 0
  %lcmp.mod370 = trunc i64 %.1167 to i1
  br label %.preheader243.us

.preheader243.us:                                 ; preds = %.preheader243.us.preheader, %._crit_edge276.us
  %.0176280.us = phi i64 [ %i.ai, %._crit_edge276.us ], [ 0, %.preheader243.us.preheader ] ; 4 uses
  %i.p = getelementptr [4 x i8], ptr %.1165, i64 %.0176280.us ; 3 uses
  %i.q = getelementptr [4 x i8], ptr %i.n, i64 %.0176280.us ; 3 uses
  br i1 %16, label %.epil.preheader366, label %bb.k

bb.k:                                             ; preds = %.preheader243.us, %bb.k
  %.0177274.us = phi i64 [ %i.af, %bb.k ], [ 0, %.preheader243.us ]
  %.0177274.us.a = phi i64 [ %33, %bb.k ], [ 0, %.preheader243.us ] ; 4 uses
  %.0178273.us = phi i64 [ %i.ag, %bb.k ], [ 0, %.preheader243.us ]
  %17 = load i32, ptr %i.p, align 4, !tbaa !12
  %18 = zext i32 %17 to i64
  %19 = getelementptr [4 x i8], ptr %.1169, i64 %.0177274.us.a
  %20 = load i32, ptr %19, align 4, !tbaa !12
  %21 = zext i32 %20 to i64
  %22 = mul nuw i64 %21, %18
  %23 = getelementptr [4 x i8], ptr %i.q, i64 %.0177274.us.a ; 2 uses
  %24 = load i32, ptr %23, align 4, !tbaa !12
  %25 = zext i32 %24 to i64
  %26 = and i64 %.0177274.us, 4294967295
  %27 = add nuw nsw i64 %26, %25
  %28 = add nuw i64 %27, %22                      ; 2 uses
  %29 = urem i64 %28, %3
  %30 = trunc nuw i64 %29 to i32
  store i32 %30, ptr %23, align 4, !tbaa !12
  %31 = udiv i64 %28, %3
  %32 = or disjoint i64 %.0177274.us.a, 1         ; 2 uses
  %i.r = load i32, ptr %i.p, align 4, !tbaa !12
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr [4 x i8], ptr %.1169, i64 %32
  %i.u = load i32, ptr %i.t, align 4, !tbaa !12
  %i.v = zext i32 %i.u to i64
  %i.w = mul nuw i64 %i.v, %i.s
  %i.x = getelementptr [4 x i8], ptr %i.q, i64 %32 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !12
  %i.z = zext i32 %i.y to i64
  %i.aa = and i64 %31, 4294967295
  %i.ab = add nuw nsw i64 %i.aa, %i.z
  %i.ac = add nuw i64 %i.ab, %i.w                 ; 2 uses
  %i.ad = urem i64 %i.ac, %3
  %i.ae = trunc nuw i64 %i.ad to i32
  store i32 %i.ae, ptr %i.x, align 4, !tbaa !12
  %i.af = udiv i64 %i.ac, %3                      ; 3 uses
  %33 = add nuw i64 %.0177274.us.a, 2             ; 2 uses
  %i.ag = add i64 %.0178273.us, 2                 ; 2 uses
  %exitcond299.not = icmp eq i64 %i.ag, %unroll_iter371
  br i1 %exitcond299.not, label %._crit_edge276.us.unr-lcssa, label %bb.k, !llvm.loop !52

._crit_edge276.us.unr-lcssa:                      ; preds = %bb.k
  br i1 %lcmp.mod368.not, label %._crit_edge276.us, label %.epil.preheader366

.epil.preheader366:                               ; preds = %._crit_edge276.us.unr-lcssa, %.preheader243.us
  %.0177274.us.epil.init = phi i64 [ 0, %.preheader243.us ], [ %i.af, %._crit_edge276.us.unr-lcssa ]
  %.0178273.us.epil.init = phi i64 [ 0, %.preheader243.us ], [ %33, %._crit_edge276.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod370)
  %34 = load i32, ptr %i.p, align 4, !tbaa !12
  %35 = zext i32 %34 to i64
  %36 = getelementptr [4 x i8], ptr %.1169, i64 %.0178273.us.epil.init
  %37 = load i32, ptr %36, align 4, !tbaa !12
  %38 = zext i32 %37 to i64
  %39 = mul nuw i64 %38, %35
  %40 = getelementptr [4 x i8], ptr %i.q, i64 %.0178273.us.epil.init ; 2 uses
  %41 = load i32, ptr %40, align 4, !tbaa !12
  %42 = zext i32 %41 to i64
  %43 = and i64 %.0177274.us.epil.init, 4294967295
  %44 = add nuw nsw i64 %43, %42
  %45 = add nuw i64 %44, %39                      ; 2 uses
  %46 = urem i64 %45, %3
  %47 = trunc nuw i64 %46 to i32
  store i32 %47, ptr %40, align 4, !tbaa !12
  %48 = udiv i64 %45, %3
  br label %._crit_edge276.us

._crit_edge276.us:                                ; preds = %._crit_edge276.us.unr-lcssa, %.epil.preheader366
  %.lcssa = phi i64 [ %i.af, %._crit_edge276.us.unr-lcssa ], [ %48, %.epil.preheader366 ]
  %i.ah = trunc i64 %.lcssa to i32
  %gep279.us = getelementptr [4 x i8], ptr %invariant.gep278, i64 %.0176280.us
  store i32 %i.ah, ptr %gep279.us, align 4, !tbaa !12
  %i.ai = add nuw nsw i64 %.0176280.us, 1         ; 2 uses
  %exitcond300.not = icmp eq i64 %i.ai, %.1
  br i1 %exitcond300.not, label %.preheader, label %.preheader243.us, !llvm.loop !53

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
  br i1 %i.ap, label %.lr.ph282, label %.critedge, !llvm.loop !54

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
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.p, !llvm.loop !55

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
  br i1 %i.cu, label %bb.o, label %._crit_edge256, !llvm.loop !56

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
  br i1 %exitcond.not.i218, label %.preheader.i219, label %bb.ad, !llvm.loop !57

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
  br i1 %i.hj, label %.lr.ph63.i, label %big_sub2.exit, !llvm.loop !58

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
  br i1 %niter365.ncmp.1, label %._crit_edge261.unr-lcssa, label %.lr.ph260, !llvm.loop !59

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
  br i1 %.not193, label %.preheader245, label %.lr.ph267, !llvm.loop !60

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
  br i1 %i.jm, label %.lr.ph269, label %pm_integer_free.exit225, !llvm.loop !61

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
!44 = distinct !{!44, !50}
!45 = distinct !{!45, !14}
!46 = distinct !{!46, !50}
!47 = distinct !{!47, !14}
!48 = distinct !{!48, !14}
!49 = distinct !{!49, !14}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{i64 0, i64 8, !22, i64 8, i64 8, !23, i64 16, i64 4, !12, i64 20, i64 1, !24}
!52 = distinct !{!52, !14}
!53 = distinct !{!53, !14}
!54 = distinct !{!54, !14}
!55 = distinct !{!55, !14}
!56 = distinct !{!56, !14}
!57 = distinct !{!57, !14}
!58 = distinct !{!58, !14}
!59 = distinct !{!59, !14}
!60 = distinct !{!60, !14}
!61 = distinct !{!61, !14}
end_hunk_0
