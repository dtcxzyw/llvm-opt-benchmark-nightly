Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/to_chars?download=true
inline.NumInlined: 709
inline.NumDeleted: 199
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 18
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN5boost8charconv6detail3ryuL20long_double_to_fd128Ee:bb.a
_ZN5boost8charconv6detail3ryuL25generic_binary_to_decimalEojjb.exit: ; preds = %bb.b, %bb.d, %.loopexit.i
  %.lobit = lshr i80 %i.i, 79
  %i.hv = trunc nuw nsw i80 %.lobit to i8
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.hv, ptr %i.hw, align 4, !tbaa !17, !alias.scope !31
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN5boost8charconv6detail3ryuL16generic_to_charsENS2_20floating_decimal_128EPclNS0_12chars_formatEi(ptr nofree noundef readonly byval(%"struct.boost::charconv::detail::ryu::floating_decimal_128") align 16 captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 16, !tbaa !13  ; 3 uses
  %i.c = icmp eq i32 %i.b, 2147483647
  %.sroa.0.0.copyload = load i128, ptr %0, align 16, !tbaa !18 ; 5 uses
  br i1 %i.c, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %.sroa.2144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.2144.0.copyload = load i8, ptr %.sroa.2144.0..sroa_idx, align 4, !tbaa !19 ; 2 uses
  %i.d = trunc nuw i8 %.sroa.2144.0.copyload to i1
  br i1 %i.d, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  store i8 45, ptr %1, align 1, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  switch i128 %.sroa.0.0.copyload, label %bb.f [
    i128 0, label %bb.l
    i128 1298074214633706907132624082305024, label %bb.d
    i128 6917529027641081856, label %bb.d
    i128 2305843009213693952, label %bb.d
  ]

.thread.i:                                        ; preds = %bb.b
  switch i128 %.sroa.0.0.copyload, label %bb.j [
    i128 0, label %bb.l
    i128 1298074214633706907132624082305024, label %bb.h
    i128 6917529027641081856, label %bb.h
    i128 2305843009213693952, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.f = icmp sgt i64 %2, 9
  br i1 %i.f, label %bb.e, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.e, ptr noundef nonnull align 1 dereferenceable(9) @.str.3, i64 9, i1 false)
  br label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.f:                                             ; preds = %bb.c
  %i.g = icmp sgt i64 %2, 8
  br i1 %i.g, label %bb.g, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.g:                                             ; preds = %bb.f
  store i64 2982630251155054958, ptr %i.e, align 1
  br label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.h:                                             ; preds = %.thread.i, %.thread.i, %.thread.i
  %i.h = icmp sgt i64 %2, 8
  br i1 %i.h, label %bb.i, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %1, ptr noundef nonnull align 1 dereferenceable(9) @.str.3, i64 9, i1 false)
  br label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.j:                                             ; preds = %.thread.i
  %i.i = icmp sgt i64 %2, 2
  br i1 %i.i, label %bb.k, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %1, ptr noundef nonnull align 1 dereferenceable(3) @.str.5, i64 3, i1 false)
  br label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.l:                                             ; preds = %.thread.i, %bb.c
  %.0234.i = phi ptr [ %1, %.thread.i ], [ %i.e, %bb.c ]
  %narrow.i = add nuw nsw i8 %.sroa.2144.0.copyload, 3 ; 2 uses
  %i.j = zext nneg i8 %narrow.i to i64
  %.not25.i = icmp slt i64 %2, %i.j
  br i1 %.not25.i, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.0234.i, ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 3, i1 false)
  %i.k = zext nneg i8 %narrow.i to i32
  br label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.n:                                             ; preds = %bb.a
  %i.l = tail call noundef i32 @_ZN5boost8charconv6detail10num_digitsEo(i128 noundef %.sroa.0.0.copyload) #14 ; 8 uses
  %i.m = icmp eq i32 %3, 3
  br i1 %i.m, label %bb.o, label %.critedge.thread146

bb.o:                                             ; preds = %bb.n
  %i.n = sext i32 %i.b to i64
  %i.o = zext i32 %i.l to i64                     ; 2 uses
  %i.p = add nsw i64 %i.o, %i.n
  %i.q = tail call noundef i64 @llvm.abs.i64(i64 %i.p, i1 true)
  %.not = icmp samesign ugt i64 %i.q, %i.o
  br i1 %.not, label %.critedge.thread146, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.r = tail call fastcc noundef i32 @_ZN5boost8charconv6detail3ryuL22generic_to_chars_fixedENS2_20floating_decimal_128EPcli(ptr noundef nonnull byval(%"struct.boost::charconv::detail::ryu::floating_decimal_128") align 16 %0, ptr noundef %1, i64 noundef %2, i32 noundef %4) #14 ; 5 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.q, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.q:                                             ; preds = %bb.p
  %i.t = zext nneg i32 %i.r to i64                ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !20
  %i.x = icmp eq i8 %i.w, 48
  br i1 %i.x, label %.preheader151.preheader, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

.preheader151.preheader:                          ; preds = %bb.q
  %.not215 = icmp eq i32 %i.r, 1
  br i1 %.not215, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit, label %.lr.ph214

.preheader151:                                    ; preds = %.lr.ph214
  %i.y = icmp sgt i64 %indvars.iv213, 2
  br i1 %i.y, label %.lr.ph214, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit, !llvm.loop !32

.lr.ph214:                                        ; preds = %.preheader151.preheader, %.preheader151
  %indvars.iv213 = phi i64 [ %indvars.iv.next, %.preheader151 ], [ %i.t, %.preheader151.preheader ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv213, -1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !20
  %i.ab = icmp eq i8 %i.aa, 48
  br i1 %i.ab, label %.preheader151, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit.loopexit.split.loop.exit207, !llvm.loop !32

.critedge.thread146:                              ; preds = %bb.o, %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !17, !range !21, !noundef !22 ; 2 uses
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.critedge.thread146
  store i8 45, ptr %1, align 1, !tbaa !20
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.critedge.thread146
  %.0119 = phi i64 [ 1, %bb.r ], [ 0, %.critedge.thread146 ] ; 4 uses
  %i.af = zext i32 %i.l to i64
  %i.ag = add nuw nsw i64 %.0119, %i.af           ; 2 uses
  %i.ah = icmp ugt i64 %i.ag, %2
  br i1 %i.ah, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ai = icmp eq i32 %i.l, 0
  br i1 %i.ai, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit, label %.preheader150

.preheader150:                                    ; preds = %bb.t
  %i.aj = add i32 %i.l, -1                        ; 2 uses
  %.not160 = icmp eq i32 %i.aj, 0
  br i1 %.not160, label %._crit_edge.thread, label %.lr.ph.preheader

._crit_edge.thread:                               ; preds = %.preheader150
  %i.ak = urem i128 %.sroa.0.0.copyload, 10
  %i.al = trunc nuw nsw i128 %i.ak to i8
  %i.am = or disjoint i8 %i.al, 48
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %.0119
  store i8 %i.am, ptr %i.an, align 1, !tbaa !20
  br label %bb.v

.lr.ph.preheader:                                 ; preds = %.preheader150
  %wide.trip.count = zext i32 %i.aj to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv166 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next167, %.lr.ph ] ; 2 uses
  %.0117153 = phi i128 [ %.sroa.0.0.copyload, %.lr.ph.preheader ], [ %i.ao, %.lr.ph ]
  %.0117153.frozen = freeze i128 %.0117153        ; 2 uses
  %i.ao = udiv i128 %.0117153.frozen, 10          ; 3 uses
  %i.ap = mul i128 %i.ao, 10
  %.decomposed = sub i128 %.0117153.frozen, %i.ap
  %i.aq = trunc nuw nsw i128 %.decomposed to i8
  %i.ar = or disjoint i8 %i.aq, 48
  %i.as = sub nuw nsw i64 %i.ag, %indvars.iv166
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.as
  store i8 %i.ar, ptr %i.at, align 1, !tbaa !20
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count
  br i1 %exitcond.not, label %bb.u, label %.lr.ph, !llvm.loop !33

bb.u:                                             ; preds = %.lr.ph
  %i.au = urem i128 %i.ao, 10
  %i.av = trunc nuw nsw i128 %i.au to i8
  %i.aw = or disjoint i8 %i.av, 48
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %.0119 ; 2 uses
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !20
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store i8 46, ptr %i.ay, align 1, !tbaa !20
  %i.az = add i32 %i.l, 1
  %i.ba = zext i32 %i.az to i64
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge.thread, %bb.u
  %.pn = phi i64 [ %i.ba, %bb.u ], [ 1, %._crit_edge.thread ]
  %.1120 = add nuw nsw i64 %.pn, %.0119           ; 4 uses
  %.not140 = icmp eq i32 %4, -1
  br i1 %.not140, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = sext i32 %4 to i64                      ; 3 uses
  %i.bc = icmp ugt i64 %.1120, %i.bb
  br i1 %i.bc, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %.not141 = icmp eq i32 %3, 1                    ; 2 uses
  %i.bd = zext nneg i8 %i.ad to i64
  %.2121.v.v = select i1 %.not141, i64 2, i64 1
  %.2121.v = add nuw nsw i64 %.2121.v.v, %i.bb    ; 2 uses
  %.2121.a = add nuw nsw i64 %.2121.v, %i.bd      ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %.2121.a ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !20
  %i.bg = icmp sgt i8 %i.bf, 52
  %5 = add i32 %i.l, 1
  %6 = zext i32 %5 to i64
  %7 = icmp samesign ult i64 %.2121.v, %6
  %or.cond = select i1 %i.bg, i1 %7, i1 false
  br i1 %or.cond, label %.preheader148, label %.loopexit149

.preheader148:                                    ; preds = %bb.x, %.preheader148
  %.0115 = phi i64 [ %i.bh, %.preheader148 ], [ %.2121.a, %bb.x ]
  %i.bh = add nsw i64 %.0115, -1                  ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %i.bh ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !20  ; 2 uses
  %i.bk = icmp eq i8 %i.bj, 57                    ; 2 uses
  %i.bl = add i8 %i.bj, 1
  %storemerge = select i1 %i.bk, i8 48, i8 %i.bl
  store i8 %storemerge, ptr %i.bi, align 1, !tbaa !20
  %i.bm = icmp ugt i64 %i.bh, 2
  %i.bn = and i1 %i.bk, %i.bm
  br i1 %i.bn, label %.preheader148, label %.loopexit149, !llvm.loop !34

.loopexit149:                                     ; preds = %.preheader148, %bb.x
  br i1 %.not141, label %bb.y, label %.preheader

.preheader:                                       ; preds = %.loopexit149, %.preheader
  %.3122 = phi i64 [ %i.bs, %.preheader ], [ %.2121.a, %.loopexit149 ] ; 3 uses
  %i.bo = getelementptr i8, ptr %1, i64 %.3122
  %i.bp = getelementptr i8, ptr %i.bo, i64 -1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !20
  %i.br = icmp eq i8 %i.bq, 48
  %i.bs = add i64 %.3122, -1
  br i1 %i.br, label %.preheader, label %.loopexit, !llvm.loop !35

bb.y:                                             ; preds = %.loopexit149
  %.not142 = icmp slt i32 %4, %i.l
  br i1 %.not142, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bt = getelementptr i8, ptr %i.be, i64 -1
  store i8 48, ptr %i.bt, align 1, !tbaa !20
  br label %.loopexit

bb.aa:                                            ; preds = %bb.w
  %i.bu = icmp ult i64 %.1120, %i.bb
  br i1 %i.bu, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit, label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.y, %bb.z, %bb.aa, %bb.v
  %.4 = phi i64 [ %.1120, %bb.v ], [ %.2121.a, %bb.z ], [ %.2121.a, %bb.y ], [ %.1120, %bb.aa ], [ %.3122, %.preheader ] ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %.4
  store i8 101, ptr %i.bv, align 1, !tbaa !20
  %i.bw = add nsw i32 %i.l, %i.b                  ; 3 uses
  %i.bx = icmp slt i32 %i.bw, 1
  %i.by = getelementptr i8, ptr %1, i64 %.4
  %i.bz = getelementptr i8, ptr %i.by, i64 1      ; 2 uses
  %.5190 = add i64 %.4, 2                         ; 5 uses
  br i1 %i.bx, label %.thread, label %bb.ab

.thread:                                          ; preds = %.loopexit
  %i.ca = sub nsw i32 1, %i.bw
  store i8 45, ptr %i.bz, align 1, !tbaa !20
  br label %.lr.ph.i.preheader

bb.ab:                                            ; preds = %.loopexit
  %i.cb = add nsw i32 %i.bw, -1                   ; 2 uses
  store i8 43, ptr %i.bz, align 1, !tbaa !20
  %.not5.i = icmp eq i32 %i.cb, 0
  br i1 %.not5.i, label %._crit_edge158, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.thread, %bb.ab
  %.0113192 = phi i32 [ %i.ca, %.thread ], [ %i.cb, %bb.ab ] ; 4 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvar = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvar.next, %.lr.ph.i ] ; 2 uses
  %.07.i = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.cd, %.lr.ph.i ] ; 2 uses
  %.046.i = phi i32 [ %.0113192, %.lr.ph.i.preheader ], [ %i.cc, %.lr.ph.i ] ; 2 uses
  %i.cc = udiv i32 %.046.i, 10
  %i.cd = add nuw i32 %.07.i, 1                   ; 5 uses
  %i.ce = icmp ult i32 %.046.i, 10
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ce, label %.lr.ph157, label %.lr.ph.i, !llvm.loop !0

.lr.ph157:                                        ; preds = %.lr.ph.i
  %i.cf = icmp eq i32 %.07.i, 0
  %i.cg = zext i32 %i.cd to i64                   ; 4 uses
  br i1 %i.cf, label %._crit_edge158.loopexit, label %.lr.ph157.split

.lr.ph157.split:                                  ; preds = %.lr.ph157
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.cg
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.5190 ; 3 uses
  %xtraiter = and i64 %i.cg, 1
  %i.ch = icmp eq i64 %indvar, 0
  br i1 %i.ch, label %.epil.preheader, label %.lr.ph157.split.new

.lr.ph157.split.new:                              ; preds = %.lr.ph157.split
  %unroll_iter = and i64 %i.cg, 4294967294
  br label %bb.ac

._crit_edge158.loopexit:                          ; preds = %.lr.ph157
  %i.ci = getelementptr i8, ptr %1, i64 %.4
  %i.cj = getelementptr i8, ptr %i.ci, i64 %i.cg
  %scevgep = getelementptr i8, ptr %i.cj, i64 2
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.5190
  store i8 48, ptr %i.ck, align 1, !tbaa !20
  %i.cl = urem i32 %.0113192, 10
  %i.cm = trunc nuw nsw i32 %i.cl to i8
  %i.cn = or disjoint i8 %i.cm, 48
  store i8 %i.cn, ptr %scevgep, align 1, !tbaa !20
  %i.co = add i64 %.4, 3
  br label %._crit_edge158.thread

bb.ac:                                            ; preds = %bb.ac, %.lr.ph157.split.new
  %indvars.iv169 = phi i64 [ 0, %.lr.ph157.split.new ], [ %indvars.iv.next170.1, %bb.ac ] ; 3 uses
  %.1114155 = phi i32 [ %.0113192, %.lr.ph157.split.new ], [ %i.cw, %bb.ac ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph157.split.new ], [ %niter.next.1, %bb.ac ]
  %i.cp = urem i32 %.1114155, 10
  %i.cq = udiv i32 %.1114155, 10
  %i.cr = trunc nuw nsw i32 %i.cp to i8
  %i.cs = or disjoint i8 %i.cr, 48
  %i.ct = xor i64 %indvars.iv169, -1
  %i.cu = getelementptr i8, ptr %gep, i64 %i.ct
  store i8 %i.cs, ptr %i.cu, align 1, !tbaa !20
  %i.cv = urem i32 %i.cq, 10
  %i.cw = udiv i32 %.1114155, 100                 ; 2 uses
  %i.cx = trunc nuw nsw i32 %i.cv to i8
  %i.cy = or disjoint i8 %i.cx, 48
  %i.cz = xor i64 %indvars.iv169, -2
  %i.da = getelementptr i8, ptr %gep, i64 %i.cz
  store i8 %i.cy, ptr %i.da, align 1, !tbaa !20
  %indvars.iv.next170.1 = add nuw nsw i64 %indvars.iv169, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge158.thread.loopexit.unr-lcssa, label %bb.ac, !llvm.loop !36

._crit_edge158:                                   ; preds = %bb.ab
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 %.5190 ; 2 uses
  store i8 48, ptr %i.db, align 1, !tbaa !20
  %i.dc = add i64 %.4, 4
  %i.dd = getelementptr i8, ptr %i.db, i64 1
  store i8 48, ptr %i.dd, align 1, !tbaa !20
  br label %._crit_edge158.thread

._crit_edge158.thread.loopexit.unr-lcssa:         ; preds = %bb.ac
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge158.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge158.thread.loopexit.unr-lcssa, %.lr.ph157.split
  %indvars.iv169.epil.init = phi i64 [ 0, %.lr.ph157.split ], [ %indvars.iv.next170.1, %._crit_edge158.thread.loopexit.unr-lcssa ]
  %.1114155.epil.init = phi i32 [ %.0113192, %.lr.ph157.split ], [ %i.cw, %._crit_edge158.thread.loopexit.unr-lcssa ]
  %lcmp.mod218 = trunc i32 %i.cd to i1
  tail call void @llvm.assume(i1 %lcmp.mod218)
  %i.de = urem i32 %.1114155.epil.init, 10
  %i.df = trunc nuw nsw i32 %i.de to i8
  %i.dg = or disjoint i8 %i.df, 48
  %i.dh = xor i64 %indvars.iv169.epil.init, -1
  %i.di = getelementptr i8, ptr %gep, i64 %i.dh
  store i8 %i.dg, ptr %i.di, align 1, !tbaa !20
  br label %._crit_edge158.thread

._crit_edge158.thread:                            ; preds = %.epil.preheader, %._crit_edge158.thread.loopexit.unr-lcssa, %._crit_edge158.loopexit, %._crit_edge158
  %.0.lcssa.i200205 = phi i32 [ 0, %._crit_edge158 ], [ 1, %._crit_edge158.loopexit ], [ %i.cd, %._crit_edge158.thread.loopexit.unr-lcssa ], [ %i.cd, %.epil.preheader ]
  %.8 = phi i64 [ %i.dc, %._crit_edge158 ], [ %i.co, %._crit_edge158.loopexit ], [ %.5190, %._crit_edge158.thread.loopexit.unr-lcssa ], [ %.5190, %.epil.preheader ]
  %i.dj = trunc i64 %.8 to i32
  %i.dk = add i32 %.0.lcssa.i200205, %i.dj
  br label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit.loopexit.split.loop.exit207: ; preds = %.lr.ph214
  %i.dl = trunc nuw nsw i64 %indvars.iv213 to i32
  br label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit: ; preds = %.preheader151, %.preheader151.preheader, %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit.loopexit.split.loop.exit207, %bb.q, %bb.p, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.aa, %bb.t, %bb.s, %._crit_edge158.thread
  %.3 = phi i32 [ -1, %bb.aa ], [ %i.r, %bb.q ], [ -2, %bb.t ], [ -75, %bb.s ], [ %i.dk, %._crit_edge158.thread ], [ 10, %bb.e ], [ -1, %bb.j ], [ 9, %bb.g ], [ -1, %bb.d ], [ 9, %bb.i ], [ -1, %bb.f ], [ 3, %bb.k ], [ -1, %bb.h ], [ %i.k, %bb.m ], [ -1, %bb.l ], [ %i.r, %bb.p ], [ %i.dl, %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit.loopexit.split.loop.exit207 ], [ 1, %.preheader151.preheader ], [ 1, %.preheader151 ]
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN5boost8charconv6detail12to_chars_hexIeEENS0_15to_chars_resultEPcS4_T_i(ptr noundef %0, ptr noundef %1, x86_fp80 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [10 x i8], align 2                ; 8 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %.not = icmp eq i32 %3, -1                      ; 3 uses
  %spec.select = select i1 %.not, i32 18, i32 %3  ; 20 uses
  %i.e = sext i32 %spec.select to i64
  %i.f = icmp slt i64 %i.d, %i.e
  %i.g = icmp ugt ptr %0, %1
  %or.cond = or i1 %i.g, %i.f
  br i1 %or.cond, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = bitcast x86_fp80 %2 to i80               ; 2 uses
  %.sroa.0.8.extract.shift.i = lshr i80 %i.h, 64
  %.sroa.0.8.extract.trunc.i = trunc nuw nsw i80 %.sroa.0.8.extract.shift.i to i64
  %.sroa.0.0.extract.trunc.i = trunc i80 %i.h to i64 ; 6 uses
  %i.i = and i64 %.sroa.0.8.extract.trunc.i, 32767 ; 2 uses
  %i.j = icmp ne i64 %i.i, 0
  %.not226 = icmp eq i64 %.sroa.0.0.extract.trunc.i, 0
  %or.cond227 = or i1 %.not226, %i.j
  %i.k = add nsw i64 %i.i, -16383
  %.0123 = select i1 %or.cond227, i64 %i.k, i64 -16382 ; 3 uses
  %i.l = add nsw i64 %.0123, 32767
  %smin = tail call i64 @llvm.smin.i64(i64 %.0123, i64 16383)
  %i.m = sub nsw i64 %i.l, %smin
  %i.n = and i64 %i.m, -32768
  %i.o = sub nsw i64 %.0123, %i.n                 ; 2 uses
  %i.p = icmp slt i64 %i.o, 3                     ; 2 uses
  %i.q = trunc nsw i64 %i.o to i32                ; 2 uses
  %i.r = sub nsw i32 3, %i.q
  %i.s = add nsw i32 %i.q, -3
  %i.t = select i1 %i.p, i32 %i.r, i32 %i.s       ; 10 uses
  %i.u = fcmp olt x86_fp80 %2, 0.000000e+00       ; 2 uses
  %i.v = icmp ugt i32 %i.t, 9999                  ; 2 uses
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = icmp ugt i32 %i.t, 9999999
  %spec.select225 = select i1 %i.w, i32 10, i32 5
  br label %_ZN5boost8charconv6detail19total_buffer_lengthIjEEiiT_b.exit

end_hunk_0
