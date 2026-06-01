inline.NumInlined: 999
inline.NumDeleted: 129
begin_hunk_0_@bary_unpack_internal:bb.a
  br label %.lr.ph26.i247

.lr.ph26.i247:                                    ; preds = %.lr.ph26.i247.preheader522, %.lr.ph26.i247
  %.125.i248 = phi i64 [ %.1.i249, %.lr.ph26.i247 ], [ %.125.i248.ph, %.lr.ph26.i247.preheader522 ] ; 2 uses
  %i.ix = getelementptr [4 x i8], ptr %0, i64 %.125.i248 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !7
  %i.iz = xor i32 %i.iy, -1
  store i32 %i.iz, ptr %i.ix, align 4, !tbaa !7
  %.1.i249 = add nuw i64 %.125.i248, 1            ; 2 uses
  %exitcond31.not.i250 = icmp eq i64 %.1.i249, %1
  br i1 %exitcond31.not.i250, label %bary_2comp.exit, label %.lr.ph26.i247, !llvm.loop !205

bary_2comp.exit:                                  ; preds = %bb.ay, %bb.bb, %.lr.ph26.i247, %bb.ag, %.lr.ph26.i227, %bb.r, %.lr.ph26.i, %middle.block, %middle.block495, %middle.block508, %bb.ba, %bb.az, %bb.ax, %bb.av, %bb.bc, %bb.af, %bb.ah, %bb.q, %bb.s, %integer_unpack_single_bdigit.exit, %integer_unpack_single_bdigit.exit201, %integer_unpack_single_bdigit.exit207, %bb.as, %bary_zero_p.exit, %bb.ak, %bb.aj, %bb.ai, %bb.w, %bb.u, %bb.v
  %.1 = phi i32 [ 1, %bb.ai ], [ %i.ht, %bb.as ], [ %i.bq, %bb.w ], [ %.0.i205, %integer_unpack_single_bdigit.exit207 ], [ -1, %bb.u ], [ 1, %bb.v ], [ 1, %bb.az ], [ -1, %bb.aj ], [ %i.eo, %bb.ak ], [ -1, %middle.block495 ], [ -1, %bary_zero_p.exit ], [ %spec.select317, %integer_unpack_single_bdigit.exit ], [ %spec.select319, %integer_unpack_single_bdigit.exit201 ], [ -2, %bb.ag ], [ -2, %bb.q ], [ -1, %bb.s ], [ -1, %bb.bb ], [ -2, %bb.af ], [ -1, %bb.ah ], [ -1, %middle.block508 ], [ -2, %bb.r ], [ -1, %bb.bc ], [ -1, %middle.block ], [ 1, %bb.av ], [ -2, %bb.ax ], [ 1, %bb.ba ], [ -1, %.lr.ph26.i247 ], [ -1, %.lr.ph26.i ], [ -1, %.lr.ph26.i227 ], [ -2, %bb.ay ]
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_cstr_to_inum(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  %. = select i1 %.not, ptr %i.a, ptr null
  %i.b = call i64 @rb_int_parse_cstr(ptr noundef nonnull %0, i64 noundef -1, ptr noundef %., ptr noundef null, i32 noundef %1, i32 noundef 7) ; 2 uses
  %i.c = icmp ne i64 %i.b, 4                      ; 2 uses
  %brmerge = or i1 %.not, %i.c
  br i1 %brmerge, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @rb_invalid_str(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %.mux = select i1 %i.c, i64 %i.b, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i64 %.mux
}

; Function Attrs: noreturn
declare void @rb_invalid_str(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_int_parse_cstr(ptr noundef %0, i64 noundef %1, ptr noundef writeonly captures(address_is_null) %2, ptr noundef captures(address_is_null) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 0, ptr %i.b, align 8, !tbaa !11
  %i.c = icmp ne ptr %2, null                     ; 9 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %str2big_scan_digits.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not197 = icmp eq i64 %1, 0
  %i.d = and i32 %5, 1
  %.not198 = icmp eq i32 %i.d, 0
  %or.cond216 = or i1 %.not197, %.not198
  br i1 %or.cond216, label %bb.g, label %.preheader289

.preheader289:                                    ; preds = %bb.b
  %i.e = load i8, ptr %0, align 1, !tbaa !15      ; 3 uses
  %i.f = sext i8 %i.e to i32
  %i.g = icmp ne i8 %i.e, 32
  %i.h = add nsw i32 %i.f, -14
  %i.i = icmp ult i32 %i.h, -5
  %narrow.i.not311 = select i1 %i.g, i1 %i.i, i1 false
  br i1 %narrow.i.not311, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader289
  %i.j = getelementptr i8, ptr %0, i64 %1
  %scevgep = getelementptr i8, ptr %i.j, i64 -1   ; 2 uses
  %or.cond416 = icmp eq i64 %1, 1
  br i1 %or.cond416, label %str2big_scan_digits.exit.thread, label %.lr.ph419

.lr.ph:                                           ; preds = %.lr.ph419
  %or.cond = icmp eq i64 %i.l, 1
  br i1 %or.cond, label %str2big_scan_digits.exit.thread, label %.lr.ph419, !llvm.loop !206

.lr.ph419:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.0252312418 = phi i64 [ %i.l, %.lr.ph ], [ %1, %.lr.ph.preheader ]
  %.0157313417 = phi ptr [ %i.k, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %i.k = getelementptr i8, ptr %.0157313417, i64 1 ; 3 uses
  %i.l = add i64 %.0252312418, -1                 ; 3 uses
  %i.m = load i8, ptr %i.k, align 1, !tbaa !15    ; 3 uses
  %i.n = sext i8 %i.m to i32
  %i.o = icmp ne i8 %i.m, 32
  %i.p = add nsw i32 %i.n, -14
  %i.q = icmp ult i32 %i.p, -5
  %narrow.i.not = select i1 %i.o, i1 %i.q, i1 false
  br i1 %narrow.i.not, label %._crit_edge, label %.lr.ph, !llvm.loop !206

._crit_edge:                                      ; preds = %.lr.ph419, %.preheader289
  %.0252.lcssa = phi i64 [ %1, %.preheader289 ], [ %i.l, %.lr.ph419 ] ; 5 uses
  %.0157.lcssa = phi ptr [ %0, %.preheader289 ], [ %i.k, %.lr.ph419 ] ; 5 uses
  %.lcssa307 = phi i8 [ %i.e, %.preheader289 ], [ %i.m, %.lr.ph419 ]
  switch i8 %.lcssa307, label %bb.g [
    i8 43, label %bb.c
    i8 45, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge
  %or.cond3 = icmp eq i64 %.0252.lcssa, 1
  br i1 %or.cond3, label %str2big_scan_digits.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %.0157.lcssa, i64 1
  %i.s = add i64 %.0252.lcssa, -1
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %or.cond5 = icmp eq i64 %.0252.lcssa, 1
  br i1 %or.cond5, label %str2big_scan_digits.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %.0157.lcssa, i64 1
  %i.u = add i64 %.0252.lcssa, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %._crit_edge, %bb.b
  %.1253 = phi i64 [ %1, %bb.b ], [ %.0252.lcssa, %._crit_edge ], [ %i.s, %bb.d ], [ %i.u, %bb.f ] ; 28 uses
  %.not287 = phi i64 [ 8192, %bb.b ], [ 8192, %._crit_edge ], [ 8192, %bb.d ], [ 0, %bb.f ]
  %.not212 = phi i1 [ false, %bb.b ], [ false, %._crit_edge ], [ false, %bb.d ], [ true, %bb.f ]
  %.1165 = phi i32 [ 1, %bb.b ], [ 1, %._crit_edge ], [ 1, %bb.d ], [ 0, %bb.f ] ; 3 uses
  %.2 = phi ptr [ %0, %bb.b ], [ %.0157.lcssa, %._crit_edge ], [ %i.r, %bb.d ], [ %i.t, %bb.f ] ; 36 uses
  %i.v = icmp slt i32 %4, 1
  br i1 %i.v, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.w = load i8, ptr %.2, align 1, !tbaa !15
  %i.x = icmp eq i8 %i.w, 48
  %i.y = icmp sgt i64 %.1253, 1
  %or.cond7 = and i1 %i.x, %i.y
  br i1 %or.cond7, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr i8, ptr %.2, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !15
  switch i8 %i.aa, label %.thread [
    i8 120, label %bb.j
    i8 88, label %bb.j
    i8 98, label %bb.l
    i8 66, label %bb.l
    i8 111, label %bb.n
    i8 79, label %bb.n
    i8 100, label %bb.p
    i8 68, label %bb.p
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %or.cond9 = icmp samesign ult i64 %.1253, 3
  br i1 %or.cond9, label %str2big_scan_digits.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr i8, ptr %.2, i64 2
  %i.ac = add nsw i64 %.1253, -2
  br label %.thread

bb.l:                                             ; preds = %bb.i, %bb.i
  %or.cond11 = icmp samesign ult i64 %.1253, 3
  br i1 %or.cond11, label %str2big_scan_digits.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr i8, ptr %.2, i64 2
  %i.ae = add nsw i64 %.1253, -2
  br label %.thread

bb.n:                                             ; preds = %bb.i, %bb.i
  %or.cond13 = icmp samesign ult i64 %.1253, 3
  br i1 %or.cond13, label %str2big_scan_digits.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr i8, ptr %.2, i64 2
  %i.ag = add nsw i64 %.1253, -2
  br label %.thread

bb.p:                                             ; preds = %bb.i, %bb.i
  %or.cond15 = icmp samesign ult i64 %.1253, 3
  br i1 %or.cond15, label %str2big_scan_digits.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = getelementptr i8, ptr %.2, i64 2
  %i.ai = add nsw i64 %.1253, -2
  br label %.thread

bb.r:                                             ; preds = %bb.h
  %i.aj = icmp slt i32 %4, -1
  %i.ak = sub i32 0, %4
  %spec.select222 = select i1 %i.aj, i32 %i.ak, i32 10
  br label %bb.ak

bb.s:                                             ; preds = %bb.g
  %i.al = icmp eq i64 %.1253, 1
  %i.am = and i32 %5, 4
  %.not200 = icmp eq i32 %i.am, 0
  %or.cond217 = or i1 %.not200, %i.al
  br i1 %or.cond217, label %bb.ak, label %bb.t

bb.t:                                             ; preds = %bb.s
  %6 = add nsw i32 %4, -2                         ; 2 uses
  %7 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 31)
  switch i32 %7, label %bb.ak [
    i32 0, label %bb.u
    i32 3, label %bb.y
    i32 4, label %bb.ac
    i32 7, label %bb.ag
  ]

bb.u:                                             ; preds = %bb.t
  %i.an = load i8, ptr %.2, align 1, !tbaa !15
  %i.ao = icmp eq i8 %i.an, 48
  br i1 %i.ao, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.ap = getelementptr i8, ptr %.2, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !15
  switch i8 %i.aq, label %.thread [
    i8 98, label %bb.w
    i8 66, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %i.ar = icmp eq i64 %.1253, 2
  br i1 %i.ar, label %str2big_scan_digits.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.as = getelementptr i8, ptr %.2, i64 2
  %i.at = add i64 %.1253, -2
  br label %.thread

bb.y:                                             ; preds = %bb.t
  %i.au = load i8, ptr %.2, align 1, !tbaa !15
  %i.av = icmp eq i8 %i.au, 48
  br i1 %i.av, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.aw = getelementptr i8, ptr %.2, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !15
  switch i8 %i.ax, label %.thread [
    i8 111, label %bb.aa
    i8 79, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z
  %i.ay = icmp eq i64 %.1253, 2
  br i1 %i.ay, label %str2big_scan_digits.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.az = getelementptr i8, ptr %.2, i64 2
  %i.ba = add i64 %.1253, -2
  br label %.thread

bb.ac:                                            ; preds = %bb.t
  %i.bb = load i8, ptr %.2, align 1, !tbaa !15
  %i.bc = icmp eq i8 %i.bb, 48
  br i1 %i.bc, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.ac
  %i.bd = getelementptr i8, ptr %.2, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !15
  switch i8 %i.be, label %.thread [
    i8 100, label %bb.ae
    i8 68, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  %i.bf = icmp eq i64 %.1253, 2
  br i1 %i.bf, label %str2big_scan_digits.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bg = getelementptr i8, ptr %.2, i64 2
  %i.bh = add i64 %.1253, -2
  br label %.thread

bb.ag:                                            ; preds = %bb.t
  %i.bi = load i8, ptr %.2, align 1, !tbaa !15
  %i.bj = icmp eq i8 %i.bi, 48
  br i1 %i.bj, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  %i.bk = getelementptr i8, ptr %.2, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !15
  switch i8 %i.bl, label %.thread [
    i8 120, label %bb.ai
    i8 88, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah, %bb.ah
  %i.bm = icmp eq i64 %.1253, 2
  br i1 %i.bm, label %str2big_scan_digits.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bn = getelementptr i8, ptr %.2, i64 2
  %i.bo = add i64 %.1253, -2
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.m, %bb.o, %bb.q, %bb.i, %bb.x, %bb.v, %bb.u, %bb.ab, %bb.z, %bb.y, %bb.af, %bb.ad, %bb.ac, %bb.aj, %bb.ah, %bb.ag
  %.2254.ph = phi i64 [ %.1253, %bb.ag ], [ %i.bo, %bb.aj ], [ %.1253, %bb.ah ], [ %.1253, %bb.ac ], [ %i.bh, %bb.af ], [ %.1253, %bb.ad ], [ %.1253, %bb.y ], [ %i.ba, %bb.ab ], [ %.1253, %bb.z ], [ %.1253, %bb.u ], [ %i.at, %bb.x ], [ %.1253, %bb.v ], [ %i.ai, %bb.q ], [ %i.ag, %bb.o ], [ %i.ae, %bb.m ], [ %i.ac, %bb.k ], [ %.1253, %bb.i ]
  %.0161.ph = phi i32 [ 16, %bb.ag ], [ 16, %bb.aj ], [ 16, %bb.ah ], [ 10, %bb.ac ], [ 10, %bb.af ], [ 10, %bb.ad ], [ 8, %bb.y ], [ 8, %bb.ab ], [ 8, %bb.z ], [ 2, %bb.u ], [ 2, %bb.x ], [ 2, %bb.v ], [ 10, %bb.q ], [ 8, %bb.o ], [ 2, %bb.m ], [ 16, %bb.k ], [ 8, %bb.i ] ; 2 uses
  %.3.ph = phi ptr [ %.2, %bb.ag ], [ %i.bn, %bb.aj ], [ %.2, %bb.ah ], [ %.2, %bb.ac ], [ %i.bg, %bb.af ], [ %.2, %bb.ad ], [ %.2, %bb.y ], [ %i.az, %bb.ab ], [ %.2, %bb.z ], [ %.2, %bb.u ], [ %i.as, %bb.x ], [ %.2, %bb.v ], [ %i.ah, %bb.q ], [ %i.af, %bb.o ], [ %i.ad, %bb.m ], [ %i.ab, %bb.k ], [ %.2, %bb.i ]
  %i.bp = add nsw i32 %.0161.ph, -2
  br label %bb.am

bb.ak:                                            ; preds = %bb.r, %bb.t, %bb.s
  %.0161 = phi i32 [ %spec.select222, %bb.r ], [ %4, %bb.t ], [ %4, %bb.s ] ; 3 uses
  %i.bq = add i32 %.0161, -2                      ; 2 uses
  %i.br = icmp ugt i32 %i.bq, 34
  br i1 %i.br, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  tail call fastcc void @invalid_radix(i32 noundef %.0161) #28
  unreachable

bb.am:                                            ; preds = %.thread, %bb.ak
  %i.bs = phi i32 [ %i.bp, %.thread ], [ %i.bq, %bb.ak ]
  %.3263 = phi ptr [ %.3.ph, %.thread ], [ %.2, %bb.ak ] ; 7 uses
  %.0161262 = phi i32 [ %.0161.ph, %.thread ], [ %.0161, %bb.ak ] ; 7 uses
  %.2254261 = phi i64 [ %.2254.ph, %.thread ], [ %.1253, %bb.ak ] ; 6 uses
  %.3263340 = ptrtoint ptr %.3263 to i64          ; 2 uses
  %.not202 = icmp eq i64 %.2254261, 0
  br i1 %.not202, label %str2big_scan_digits.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bt = ptrtoint ptr %0 to i64
  %i.bu = sub i64 %.3263340, %i.bt                ; 3 uses
  store i64 %i.bu, ptr %i.b, align 8, !tbaa !11
  %i.bv = load i8, ptr %.3263, align 1, !tbaa !15
  %i.bw = icmp eq i8 %i.bv, 48
  %i.bx = icmp ne i64 %.2254261, 1
  %or.cond25 = and i1 %i.bx, %i.bw
  br i1 %or.cond25, label %bb.ao, label %bb.aw

bb.ao:                                            ; preds = %bb.an
  %i.by = icmp slt i64 %.2254261, 0
  %i.bz = getelementptr i8, ptr %.3263, i64 %.2254261
  %i.ca = select i1 %i.by, ptr null, ptr %i.bz    ; 3 uses
  %i.cb = ptrtoint ptr %i.ca to i64               ; 3 uses
  %i.cc = add i64 %i.bu, 1                        ; 2 uses
  store i64 %i.cc, ptr %i.b, align 8, !tbaa !11
  %i.cd = and i32 %5, 2
  %i.ce = icmp eq i32 %i.cd, 0
  %scevgep341 = getelementptr i8, ptr inttoptr (i64 -1 to ptr), i64 %i.cb
  %i.cf = sub i64 %i.cb, %.3263340
  %scevgep342 = getelementptr i8, ptr %.3263, i64 %i.cf
  br label %bb.ap

bb.ap:                                            ; preds = %bb.as, %bb.ao
  %i.cg = phi i64 [ %i.cc, %bb.ao ], [ %i.cm, %bb.as ] ; 4 uses
  %.0162 = phi i32 [ 0, %bb.ao ], [ %.1163, %bb.as ]
  %.4 = phi ptr [ %.3263, %bb.ao ], [ %i.ch, %bb.as ] ; 3 uses
  %i.ch = getelementptr i8, ptr %.4, i64 1        ; 4 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !15  ; 5 uses
  %cond223 = icmp eq i8 %i.ci, 48
  br i1 %cond223, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cj = icmp ne i8 %i.ci, 95
  %.not280 = or i1 %i.ce, %i.cj
  %i.ck = icmp ne i32 %.0162, 0
  %or.cond219 = or i1 %i.ck, %.not280
  br i1 %or.cond219, label %bb.at, label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.cl = add i64 %i.cg, 1                        ; 2 uses
  store i64 %i.cl, ptr %i.b, align 8, !tbaa !11
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.cm = phi i64 [ %i.cg, %bb.aq ], [ %i.cl, %bb.ar ] ; 2 uses
  %.1163 = phi i32 [ 1, %bb.aq ], [ 0, %bb.ar ]
  %i.cn = icmp eq ptr %i.ch, %i.ca
  br i1 %i.cn, label %.thread264, label %bb.ap, !llvm.loop !207

bb.at:                                            ; preds = %bb.aq
  %.not203 = icmp eq i8 %i.ci, 0
  br i1 %.not203, label %bb.au, label %.thread264

.thread264:                                       ; preds = %bb.as, %bb.at
  %i.co = phi i64 [ %i.cg, %bb.at ], [ %i.cm, %bb.as ]
  %.4335 = phi ptr [ %.4, %bb.at ], [ %scevgep341, %bb.as ]
  %i.cp = phi ptr [ %i.ch, %bb.at ], [ %scevgep342, %bb.as ]
  %i.cq = sext i8 %i.ci to i32
  %i.cr = icmp ne i8 %i.ci, 32
  %i.cs = add nsw i32 %i.cq, -14
  %i.ct = icmp ult i32 %i.cs, -5
  %narrow.i224.not = select i1 %i.cr, i1 %i.ct, i1 false
  %spec.select318 = select i1 %narrow.i224.not, ptr %i.cp, ptr %.4335
  br label %bb.au

bb.au:                                            ; preds = %.thread264, %bb.at
  %i.cu = phi i64 [ %i.co, %.thread264 ], [ %i.cg, %bb.at ] ; 2 uses
  %.5 = phi ptr [ %spec.select318, %.thread264 ], [ %.4, %bb.at ] ; 3 uses
  %.not205 = icmp eq ptr %i.ca, null
  br i1 %.not205, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cv = ptrtoint ptr %.5 to i64
  %i.cw = sub i64 %i.cb, %i.cv
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av, %bb.an
  %i.cx = phi i64 [ %i.cu, %bb.au ], [ %i.cu, %bb.av ], [ %i.bu, %bb.an ] ; 2 uses
  %.3255 = phi i64 [ %.2254261, %bb.au ], [ %i.cw, %bb.av ], [ %.2254261, %bb.an ] ; 5 uses
  %.6 = phi ptr [ %.5, %bb.au ], [ %.5, %bb.av ], [ %.3263, %bb.an ] ; 16 uses
  %i.cy = load i8, ptr %.6, align 1, !tbaa !15
  %i.cz = zext i8 %i.cy to i64
end_hunk_0
begin_hunk_1_@bigsub:bb.a

.lr.ph26.i:                                       ; preds = %.lr.ph26.i.preheader95, %.lr.ph26.i
  %.125.i = phi i64 [ %.1.i, %.lr.ph26.i ], [ %.125.i.ph, %.lr.ph26.i.preheader95 ] ; 2 uses
  %i.ga = getelementptr [4 x i8], ptr %.0.i28, i64 %.125.i ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !7
  %i.gc = xor i32 %i.gb, -1
  store i32 %i.gc, ptr %i.ga, align 4, !tbaa !7
  %.1.i = add nuw i64 %.125.i, 1                  ; 2 uses
  %exitcond31.not.i = icmp eq i64 %.1.i, %i.o
  br i1 %exitcond31.not.i, label %bary_2comp.exit, label %.lr.ph26.i, !llvm.loop !449

bary_2comp.exit:                                  ; preds = %bb.m, %.lr.ph26.i, %middle.block, %bary_sub.exit, %bb.n
  %i.gd = and i64 %i.ac, -8193
  store i64 %i.gd, ptr %i.ab, align 8, !tbaa !13
  br label %bary_sub.exit.thread

bary_sub.exit.thread:                             ; preds = %.lr.ph96.preheader.i.i, %.loopexit74.i.i, %.preheader.i.i, %bary_2comp.exit
  ret i64 %i.q
}

declare i64 @rb_float_new_in_heap(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #9

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc double @big_fdiv(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = inttoptr i64 %0 to ptr                   ; 9 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13   ; 5 uses
  %i.d = and i64 %i.c, 16384
  %.not.i.i = icmp eq i64 %i.d, 0                 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.c, 15
  %i.f = and i64 %i.e, 511
  %i.g = getelementptr i8, ptr %i.b, i64 16
  br label %BIGNUM_DIGITS.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.b, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15
  %i.j = getelementptr i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i

BIGNUM_DIGITS.exit.i:                             ; preds = %bb.c, %bb.b
  %.0.i21.i = phi i64 [ %i.f, %bb.b ], [ %i.i, %bb.c ] ; 4 uses
  %.0.i16.i = phi ptr [ %i.g, %bb.b ], [ %i.k, %bb.c ]
  %i.l = icmp eq i64 %.0.i21.i, 0
  br i1 %i.l, label %bigtrunc.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %BIGNUM_DIGITS.exit.i
  %i.m = add i64 %.0.i21.i, -1                    ; 2 uses
  %.not.i34 = icmp eq i64 %i.m, 0
  br i1 %.not.i34, label %.critedge.i, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  %i.n = add i64 %i.o, -1                         ; 2 uses
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %.critedge.i, label %.lr.ph, !llvm.loop !150

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %i.o = phi i64 [ %i.n, %.preheader.i ], [ %i.m, %.preheader.i.preheader ] ; 4 uses
  %.012.i35 = phi i64 [ %i.o, %.preheader.i ], [ %.0.i21.i, %.preheader.i.preheader ]
  %i.p = getelementptr [4 x i8], ptr %.0.i16.i, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !7
  %.not14.i = icmp eq i32 %i.q, 0
  br i1 %.not14.i, label %.preheader.i, label %..critedge.i_crit_edge, !llvm.loop !150

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !150

.critedge.i:                                      ; preds = %.preheader.i, %..critedge.i_crit_edge, %.preheader.i.preheader
  %.012.i.lcssa = phi i64 [ %.012.i35, %..critedge.i_crit_edge ], [ %.0.i21.i, %.preheader.i.preheader ], [ %i.o, %.preheader.i ] ; 2 uses
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge.i
  %i.r = getelementptr i8, ptr %i.b, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit19.i

bb.e:                                             ; preds = %.critedge.i
  %i.t = lshr i64 %i.c, 15
  %i.u = and i64 %i.t, 511
  br label %BIGNUM_LEN.exit19.i

BIGNUM_LEN.exit19.i:                              ; preds = %bb.e, %bb.d
  %.0.i18.i = phi i64 [ %i.u, %bb.e ], [ %i.s, %bb.d ]
  %i.v = icmp ugt i64 %.0.i18.i, %.012.i.lcssa
  br i1 %i.v, label %bb.f, label %bigtrunc.exit

bb.f:                                             ; preds = %BIGNUM_LEN.exit19.i
  tail call void @rb_big_resize(i64 noundef %0, i64 noundef %.012.i.lcssa)
  %.pre = load i64, ptr %i.b, align 8, !tbaa !13
  br label %bigtrunc.exit

bigtrunc.exit:                                    ; preds = %BIGNUM_DIGITS.exit.i, %BIGNUM_LEN.exit19.i, %bb.f
  %i.w = phi i64 [ %i.c, %BIGNUM_DIGITS.exit.i ], [ %i.c, %BIGNUM_LEN.exit19.i ], [ %.pre, %bb.f ] ; 2 uses
  %i.x = and i64 %i.w, 16384
  %.not.i23 = icmp eq i64 %i.x, 0
  br i1 %.not.i23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bigtrunc.exit
  %i.y = lshr i64 %i.w, 15
  %i.z = and i64 %i.y, 511
  %i.aa = getelementptr i8, ptr %i.b, i64 16
  br label %BIGNUM_DIGITS.exit

bb.h:                                             ; preds = %bigtrunc.exit
  %i.ab = getelementptr i8, ptr %i.b, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !15
  %i.ad = getelementptr i8, ptr %i.b, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.g, %bb.h
  %.0.i29 = phi i64 [ %i.z, %bb.g ], [ %i.ac, %bb.h ] ; 2 uses
  %.0.i25 = phi ptr [ %i.aa, %bb.g ], [ %i.ae, %bb.h ]
  %i.af = shl i64 %.0.i29, 5
  %i.ag = getelementptr [4 x i8], ptr %.0.i25, i64 %.0.i29
  %i.ah = getelementptr i8, ptr %i.ag, i64 -4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !7
  %i.aj = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ai, i1 false)
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = sub i64 %i.af, %i.ak                    ; 2 uses
  %i.am = add i64 %i.al, -128                     ; 2 uses
  %i.an = icmp sgt i64 %i.am, 32
  %i.ao = add i64 %i.al, -160
  %spec.store.select = tail call i64 @llvm.smin.i64(i64 %i.am, i64 0)
  %.0 = select i1 %i.an, i64 %i.ao, i64 %spec.store.select ; 4 uses
  %.not = icmp eq i64 %.0, 0
  br i1 %.not, label %bb.i, label %big_shift.exit

big_shift.exit:                                   ; preds = %BIGNUM_DIGITS.exit
  %spec.select = tail call i64 @llvm.abs.i64(i64 %.0, i1 false) ; 2 uses
  %.0.lobit = lshr i64 %.0, 63
  %spec.select31 = trunc nuw nsw i64 %.0.lobit to i32
  %i.ap = lshr i64 %spec.select, 5
  %i.aq = trunc i64 %spec.select to i32
  %i.ar = and i32 %i.aq, 31
  %i.as = tail call fastcc i64 @big_shift3(i64 noundef %0, i32 noundef %spec.select31, i64 noundef %i.ap, i32 noundef %i.ar)
  br label %bb.i

bb.i:                                             ; preds = %big_shift.exit, %BIGNUM_DIGITS.exit
  %.020 = phi i64 [ %i.as, %big_shift.exit ], [ %0, %BIGNUM_DIGITS.exit ]
  call fastcc void @bigdivrem(i64 noundef %.020, i64 noundef %1, ptr noundef nonnull %i.a, ptr noundef null)
  %i.at = sub i64 %.0, %2                         ; 3 uses
  %i.au = icmp sgt i64 %i.at, 2147483647
  br i1 %i.au, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = icmp slt i64 %i.at, -2147483648
  br i1 %i.av, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !11
  %i.ax = call fastcc double @big2dbl(i64 noundef %i.aw)
  %i.ay = trunc nsw i64 %i.at to i32
  %i.az = call double @ldexp(double noundef %i.ax, i32 noundef %i.ay) #23, !tbaa !7
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.k
  %.019 = phi double [ %i.az, %bb.k ], [ +inf, %bb.i ], [ 0.000000e+00, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret double %.019
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr noundef captures(none)) local_unnamed_addr #21

declare i64 @rb_num2long(i64 noundef) local_unnamed_addr #5

declare i64 @rb_num2ll(i64 noundef) local_unnamed_addr #5

declare void @rb_thread_check_ints() local_unnamed_addr #5

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @rb_int_odd_p(i64 noundef) local_unnamed_addr #5

declare i32 @rb_int_positive_p(i64 noundef) local_unnamed_addr #5

declare i64 @rb_Float(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #9

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { inlinehint noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind sspstrong memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nounwind }
attributes #24 = { nounwind allocsize(0,1) }
attributes #25 = { noreturn nounwind }
attributes #26 = { nounwind allocsize(1,2) }
attributes #27 = { cold noreturn nounwind }
attributes #28 = { noreturn }
attributes #29 = { memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!14, !12, i64 0}
!14 = !{!"RBasic", !12, i64 0, !12, i64 8}
!15 = !{!9, !9, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 long", !22, i64 0}
!22 = !{!"any pointer", !9, i64 0}
!23 = !{i64 2155877144}
!24 = !{i64 2155877306}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 _ZTS27rb_execution_context_struct", !22, i64 0}
!27 = !{i64 2155895221}
!28 = distinct !{!28, !17}
!29 = distinct !{!29, !17}
!30 = !{i64 2155897301}
!31 = !{i64 2155897463}
!32 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!33 = !{ptr @bary_mul_karatsuba_start, ptr @bary_mul_toom3_start}
!34 = distinct !{!34, !17}
!35 = distinct !{!35, !17}
!36 = distinct !{!36, !17}
!37 = distinct !{!37, !17, !38, !39}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = distinct !{!42, !17, !38}
!43 = !{!44, !44, i64 0}
!44 = !{!"p1 int", !22, i64 0}
!45 = distinct !{null}
!46 = !{i64 2155899077}
!47 = !{i64 2155899239}
!48 = distinct !{!48, !17}
!49 = distinct !{!49, !41}
!50 = distinct !{!50, !17}
!51 = distinct !{!51, !17}
!52 = distinct !{!52, !17, !38, !39}
!53 = distinct !{!53, !41}
!54 = distinct !{!54, !17, !38}
!55 = distinct !{!55, !17}
!56 = distinct !{!56, !17, !38, !39}
!57 = distinct !{!57, !17, !39, !38}
!58 = !{ptr @bary_mul_karatsuba_start}
!59 = distinct !{!59, !17, !38, !39}
!60 = distinct !{!60, !17, !39, !38}
!61 = distinct !{!61, !17, !38, !39}
!62 = distinct !{!62, !17, !39, !38}
!63 = distinct !{!63, !17, !38, !39}
!64 = distinct !{!64, !41}
!65 = distinct !{!65, !17, !38}
!66 = distinct !{!66, !17, !38, !39}
!67 = distinct !{!67, !41}
!68 = distinct !{!68, !17, !38}
!69 = distinct !{!69, !17}
!70 = distinct !{!70, !17, !38, !39}
!71 = distinct !{!71, !41}
!72 = distinct !{!72, !17, !38}
!73 = !{i64 2155902127}
!74 = !{i64 2155902289}
!75 = distinct !{!75, !17, !38, !39}
!76 = distinct !{!76, !41}
!77 = distinct !{!77, !17, !38}
!78 = distinct !{!78, !17, !38, !39}
!79 = distinct !{!79, !17, !39, !38}
!80 = distinct !{!80, !17, !38, !39}
!81 = distinct !{!81, !41}
!82 = distinct !{!82, !17, !38}
!83 = distinct !{!83, !41}
!84 = distinct !{!84, !17, !38, !39}
!85 = distinct !{!85, !17, !38}
!86 = distinct !{!86, !17, !38, !39}
!87 = distinct !{!87, !17, !39, !38}
!88 = distinct !{!88, !17}
!89 = distinct !{!89, !41}
!90 = distinct !{!90, !41}
!91 = distinct !{!91, !17, !38, !39}
!92 = distinct !{!92, !17, !39, !38}
!93 = distinct !{!93, !17, !38, !39}
!94 = distinct !{!94, !41}
!95 = distinct !{!95, !17, !38}
!96 = distinct !{!96, !17, !38, !39}
!97 = distinct !{!97, !17, !39, !38}
!98 = distinct !{!98, !17, !38, !39}
!99 = distinct !{!99, !41}
!100 = distinct !{!100, !17, !38}
!101 = distinct !{!101, !41}
!102 = distinct !{!102, !17, !38, !39}
!103 = distinct !{!103, !41}
!104 = distinct !{!104, !17, !38}
!105 = distinct !{!105, !17, !38, !39}
!106 = distinct !{!106, !17, !39, !38}
!107 = distinct !{!107, !41}
!108 = distinct !{!108, !41}
!109 = distinct !{!109, !17, !38, !39}
!110 = distinct !{!110, !17, !39, !38}
!111 = distinct !{!111, !17, !38, !39}
!112 = distinct !{!112, !17, !39, !38}
!113 = distinct !{!113, !17}
!114 = distinct !{!114, !17, !38, !39}
!115 = distinct !{!115, !17, !39, !38}
!116 = distinct !{!116, !17, !38, !39}
!117 = distinct !{!117, !17, !39, !38}
!118 = distinct !{!118, !17, !38, !39}
!119 = distinct !{!119, !41}
!120 = distinct !{!120, !17, !38}
!121 = distinct !{!121, !17, !38, !39}
!122 = distinct !{!122, !17, !39, !38}
!123 = distinct !{!123, !17, !38, !39}
!124 = distinct !{!124, !17, !39, !38}
!125 = distinct !{!125, !17, !38, !39}
!126 = distinct !{!126, !17, !39, !38}
!127 = distinct !{!127, !17}
!128 = distinct !{!128, !17, !38, !39}
!129 = distinct !{!129, !17, !39, !38}
!130 = distinct !{!130, !17, !38, !39}
!131 = distinct !{!131, !17, !39, !38}
!132 = distinct !{!132, !17, !38, !39}
!133 = distinct !{!133, !17, !39, !38}
!134 = distinct !{!134, !17, !38, !39}
!135 = distinct !{!135, !17, !39, !38}
!136 = distinct !{!136, !17, !38, !39}
!137 = distinct !{!137, !41}
!138 = distinct !{!138, !17, !38}
!139 = distinct !{!139, !17, !38, !39}
!140 = distinct !{!140, !41}
!141 = distinct !{!141, !17, !38}
!142 = distinct !{!142, !41}
!143 = distinct !{!143, !17, !38, !39}
!144 = distinct !{!144, !41}
!145 = distinct !{!145, !17, !38}
!146 = distinct !{!146, !17}
!147 = !{!"branch_weights", !"expected", i32 2112872, i32 2145370776}
!148 = distinct !{!148, !17}
!149 = distinct !{!149, !17}
!150 = distinct !{!150, !17}
!151 = !{i64 2155917336}
!152 = !{i64 2155917498}
!153 = distinct !{!153, !41}
!154 = !{!"branch_weights", !"expected", i32 1430761, i32 2146052887}
!155 = distinct !{!155, !41}
!156 = distinct !{!156, !17, !38, !39}
!157 = distinct !{!157, !17, !38}
!158 = distinct !{!158, !17}
end_hunk_1
