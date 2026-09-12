Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ipmi?download=true
inline.NumInlined: 38
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@ipmi_get_completion_code:bb.a
bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.f = tail call ptr @val_to_str_const(i32 noundef %i.a, ptr noundef nonnull @ipmi_get_completion_code.std_completion_codes, ptr noundef nonnull @.str.49)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.a, %bb.g, %bb.f
  %.0 = phi ptr [ %i.f, %bb.g ], [ @.str.47, %bb.a ], [ @.str.48, %bb.f ], [ %i.e, %bb.e ]
  ret ptr %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @try_val_to_str(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden i32 @do_dissect_ipmb(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.ipmi_context_t, align 4     ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.a = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.b, i32 noundef 35, ptr noundef nonnull @.str.50)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 noundef 0, i64 noundef 24, i1 noundef false) #14
  %.not = icmp eq ptr %5, null                    ; 2 uses
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %5, align 1
  %i.d = getelementptr i8, ptr %5, i64 1
  %i.e = load i8, ptr %i.d, align 1
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.f = phi i8 [ %i.c, %bb.b ], [ 0, %bb.a ]     ; 6 uses
  %i.g = phi i8 [ %i.e, %bb.b ], [ 0, %bb.a ]     ; 3 uses
  store i8 %i.f, ptr %6, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %i.g, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 21
  %i.l = load i32, ptr @message_format, align 4   ; 2 uses
  switch i32 %i.l, label %bb.d [
    i32 0, label %guess_imb_format.exit.thread
    i32 1, label %.thread137.i
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %.critedge
  br label %.thread137.i

bb.d:                                             ; preds = %.critedge
  switch i8 %i.g, label %bb.h [
    i8 0, label %bb.e
    i8 15, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  switch i8 %i.f, label %.thread137.i [
    i8 0, label %bb.j
    i8 3, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br label %.thread137.i

bb.g:                                             ; preds = %bb.d
  %i.m = icmp eq i8 %i.f, 3
  %spec.store.select.i = select i1 %i.m, i32 10, i32 8
  br label %.thread137.i

bb.h:                                             ; preds = %bb.d
  switch i8 %i.f, label %bb.i [
    i8 0, label %bb.j
    i8 1, label %bb.n
    i8 2, label %.thread137.i
  ]

bb.i:                                             ; preds = %bb.h
  br label %bb.n

bb.j:                                             ; preds = %bb.h, %bb.e
  store i32 8, ptr %i.i, align 4
  %i.n = tail call i32 @tvb_captured_length(ptr noundef %0) ; 6 uses
  %i.o = icmp ugt i32 %i.n, 7
  br i1 %i.o, label %bb.k, label %.thread142.i

bb.k:                                             ; preds = %bb.j
  %i.p = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %.not79.i = icmp eq i8 %i.p, 0
  br i1 %.not79.i, label %.preheader147.preheader.i, label %.thread142.i

.preheader147.preheader.i:                        ; preds = %bb.k
  %i.q = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.r = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 2)
  %i.s = add i8 %i.q, %i.r
  %i.t = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3)
  %i.u = sub i8 0, %i.s
  %.not80.i = icmp eq i8 %i.t, %i.u
  br i1 %.not80.i, label %bb.l, label %.thread142.i

bb.l:                                             ; preds = %.preheader147.preheader.i
  %i.v = add i32 %i.n, -4
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.08.i89.i = phi i32 [ %i.v, %bb.l ], [ %i.w, %bb.m ]
  %.047.i90.i = phi i32 [ 4, %bb.l ], [ %i.x, %bb.m ] ; 2 uses
  %.056.i91.i = phi i8 [ 0, %bb.l ], [ %i.z, %bb.m ]
  %i.w = add i32 %.08.i89.i, -1                   ; 2 uses
  %i.x = add nuw i32 %.047.i90.i, 1
  %i.y = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.047.i90.i)
  %i.z = add i8 %i.y, %.056.i91.i                 ; 2 uses
  %.not.i92.i = icmp eq i32 %i.w, 0
  br i1 %.not.i92.i, label %calc_cks.exit93.i, label %bb.m, !llvm.loop !10

calc_cks.exit93.i:                                ; preds = %bb.m
  %.not81.i = icmp eq i8 %i.z, 0
  br i1 %.not81.i, label %.sink.split.sink.split.i, label %.thread142.i

.thread137.i:                                     ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %.critedge
  %.sink.i = phi i32 [ 8, %.critedge ], [ 8, %bb.e ], [ %spec.store.select.i, %bb.g ], [ 0, %bb.f ], [ 10, %bb.c ], [ 8, %bb.h ] ; 2 uses
  store i32 %.sink.i, ptr %i.i, align 4
  %i.aa = tail call i32 @tvb_captured_length(ptr noundef %0)
  br label %.thread142.i

bb.n:                                             ; preds = %bb.i, %bb.h
  %storemerge.i = phi i32 [ 0, %bb.i ], [ 8, %bb.h ] ; 4 uses
  %.069.ph.i = phi i1 [ true, %bb.i ], [ false, %bb.h ]
  store i32 %storemerge.i, ptr %i.i, align 4
  %i.ab = tail call i32 @tvb_captured_length(ptr noundef %0) ; 7 uses
  %i.ac = icmp ugt i32 %i.ab, 7
  br i1 %i.ac, label %.preheader146.preheader.i, label %bb.q

.preheader146.preheader.i:                        ; preds = %bb.n
  %i.ad = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.ae = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 2)
  %i.af = add i8 %i.ad, %i.ae
  %i.ag = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3)
  %i.ah = sub i8 0, %i.af
  %.not82.i = icmp eq i8 %i.ag, %i.ah
  br i1 %.not82.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.preheader146.preheader.i
  %i.ai = add i32 %i.ab, -4
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.08.i99.i = phi i32 [ %i.ai, %bb.o ], [ %i.aj, %bb.p ]
  %.047.i100.i = phi i32 [ 4, %bb.o ], [ %i.ak, %bb.p ] ; 2 uses
  %.056.i101.i = phi i8 [ 0, %bb.o ], [ %i.am, %bb.p ]
  %i.aj = add i32 %.08.i99.i, -1                  ; 2 uses
  %i.ak = add nuw i32 %.047.i100.i, 1
  %i.al = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.047.i100.i)
  %i.am = add i8 %i.al, %.056.i101.i              ; 2 uses
  %.not.i102.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i102.i, label %calc_cks.exit103.i, label %bb.p, !llvm.loop !10

calc_cks.exit103.i:                               ; preds = %bb.p
  %.not83.i = icmp eq i8 %i.am, 0
  br i1 %.not83.i, label %.sink.split.sink.split.i, label %bb.q

bb.q:                                             ; preds = %calc_cks.exit103.i, %.preheader146.preheader.i, %bb.n
  %i.an = icmp ugt i32 %i.ab, 6
  %or.cond5.i = and i1 %.069.ph.i, %i.an
  br i1 %or.cond5.i, label %.preheader.preheader.i, label %.thread142.i

.preheader.preheader.i:                           ; preds = %bb.q
  %i.ao = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.ap = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.aq = add i8 %i.ao, %i.ap
  %i.ar = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 2)
  %i.as = sub i8 0, %i.aq
  %.not84.i = icmp eq i8 %i.ar, %i.as
  br i1 %.not84.i, label %bb.r, label %.thread142.i

bb.r:                                             ; preds = %.preheader.preheader.i
  %i.at = add i32 %i.ab, -3
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.08.i109.i = phi i32 [ %i.at, %bb.r ], [ %i.au, %bb.s ]
  %.047.i110.i = phi i32 [ 3, %bb.r ], [ %i.av, %bb.s ] ; 2 uses
  %.056.i111.i = phi i8 [ 0, %bb.r ], [ %i.ax, %bb.s ]
  %i.au = add i32 %.08.i109.i, -1                 ; 2 uses
  %i.av = add nuw i32 %.047.i110.i, 1
  %i.aw = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.047.i110.i)
  %i.ax = add i8 %i.aw, %.056.i111.i              ; 2 uses
  %.not.i112.i = icmp eq i32 %i.au, 0
  br i1 %.not.i112.i, label %calc_cks.exit113.i, label %bb.s, !llvm.loop !10

calc_cks.exit113.i:                               ; preds = %bb.s
  %.not85.i = icmp eq i8 %i.ax, 0
  br i1 %.not85.i, label %.sink.split.sink.split.i, label %.thread142.i

.thread142.i:                                     ; preds = %calc_cks.exit113.i, %.preheader.preheader.i, %bb.q, %.thread137.i, %calc_cks.exit93.i, %.preheader147.preheader.i, %bb.k, %bb.j
  %i.ay = phi i32 [ %storemerge.i, %bb.q ], [ %storemerge.i, %calc_cks.exit113.i ], [ %storemerge.i, %.preheader.preheader.i ], [ %.sink.i, %.thread137.i ], [ 8, %calc_cks.exit93.i ], [ 8, %.preheader147.preheader.i ], [ 8, %bb.k ], [ 8, %bb.j ] ; 4 uses
  %i.az = phi i32 [ %i.ab, %bb.q ], [ %i.ab, %calc_cks.exit113.i ], [ %i.ab, %.preheader.preheader.i ], [ %i.aa, %.thread137.i ], [ %i.n, %calc_cks.exit93.i ], [ %i.n, %.preheader147.preheader.i ], [ %i.n, %bb.k ], [ %i.n, %bb.j ] ; 2 uses
  %7 = and i32 %i.ay, 2                           ; 3 uses
  %.not86.not.i = icmp eq i32 %7, 0
  %8 = lshr i32 %i.ay, 3
  %.lobit145.i = lshr exact i32 %7, 1             ; 3 uses
  %.067.i = select i1 %.not86.not.i, i32 %8, i32 1 ; 3 uses
  %i.ba = or disjoint i32 %.lobit145.i, 6
  %i.bb = add nuw nsw i32 %i.ba, %.067.i
  %i.bc = icmp ult i32 %i.az, %i.bb
  br i1 %i.bc, label %guess_imb_format.exit.thread, label %bb.t

bb.t:                                             ; preds = %.thread142.i
  %9 = and i32 %i.ay, 10
  %i.bd = icmp eq i32 %9, 0
  %.0.i = select i1 %i.bd, i8 32, i8 0
  %i.be = or disjoint i32 %.067.i, 2
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.08.i114.i = phi i32 [ %i.be, %bb.t ], [ %i.bf, %bb.u ]
  %.047.i115.i = phi i32 [ %.lobit145.i, %bb.t ], [ %i.bg, %bb.u ] ; 2 uses
  %.056.i116.i = phi i8 [ %.0.i, %bb.t ], [ %i.bi, %bb.u ]
  %i.bf = add nsw i32 %.08.i114.i, -1             ; 2 uses
  %i.bg = add nuw nsw i32 %.047.i115.i, 1
  %i.bh = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.047.i115.i)
  %i.bi = add i8 %i.bh, %.056.i116.i              ; 2 uses
  %.not.i117.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i117.i, label %calc_cks.exit118.i, label %bb.u, !llvm.loop !10

calc_cks.exit118.i:                               ; preds = %bb.u
  store i8 %i.bi, ptr %i.j, align 4
  %i.bj = add nuw nsw i32 %.067.i, %.lobit145.i   ; 2 uses
  %i.bk = add nuw nsw i32 %i.bj, 2
  %i.bl = add i32 %i.az, -2
  %i.bm = sub nuw i32 %i.bl, %i.bj
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %calc_cks.exit118.i
  %.08.i119.i = phi i32 [ %i.bm, %calc_cks.exit118.i ], [ %i.bn, %bb.v ]
  %.047.i120.i = phi i32 [ %i.bk, %calc_cks.exit118.i ], [ %i.bo, %bb.v ] ; 2 uses
  %.056.i121.i = phi i8 [ 0, %calc_cks.exit118.i ], [ %i.bq, %bb.v ]
  %i.bn = add i32 %.08.i119.i, -1                 ; 2 uses
  %i.bo = add i32 %.047.i120.i, 1
  %i.bp = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.047.i120.i)
  %i.bq = add i8 %i.bp, %.056.i121.i              ; 2 uses
  %.not.i122.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i122.i, label %.loopexit, label %bb.v, !llvm.loop !10

.sink.split.sink.split.i:                         ; preds = %calc_cks.exit113.i, %calc_cks.exit103.i, %calc_cks.exit93.i
  %.sink170.i = phi i32 [ 10, %calc_cks.exit103.i ], [ 12, %calc_cks.exit93.i ], [ 8, %calc_cks.exit113.i ] ; 3 uses
  store i32 %.sink170.i, ptr %i.i, align 4
  store i8 0, ptr %i.j, align 4
  %.pre = and i32 %.sink170.i, 2
  br label %.loopexit

.loopexit:                                        ; preds = %bb.v, %.sink.split.sink.split.i
  %.pre-phi = phi i32 [ %.pre, %.sink.split.sink.split.i ], [ %7, %bb.v ]
  %i.br = phi i32 [ %.sink170.i, %.sink.split.sink.split.i ], [ %i.ay, %bb.v ] ; 2 uses
  %.lcssa.sink.i = phi i8 [ 0, %.sink.split.sink.split.i ], [ %i.bq, %bb.v ]
  store i8 %.lcssa.sink.i, ptr %i.k, align 1
  %i.bs = lshr i32 %i.br, 2
  %.lobit.a = and i32 %i.bs, 1                    ; 3 uses
  %.not43 = icmp eq i32 %.pre-phi, 0
  br i1 %.not43, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.loopexit
  %i.bt = add nuw nsw i32 %.lobit.a, 1
  %i.bu = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.lobit.a)
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 3
  store i8 %i.bu, ptr %i.bv, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.loopexit
  %.1 = phi i32 [ %i.bt, %bb.w ], [ %.lobit.a, %.loopexit ] ; 3 uses
  %i.bw = and i32 %i.br, 8
  %.not44 = icmp eq i32 %i.bw, 0
  br i1 %.not44, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bx = add nuw nsw i32 %.1, 1
  %i.by = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1)
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.bz = phi i8 [ %i.by, %bb.y ], [ 32, %bb.x ]  ; 2 uses
  %.2 = phi i32 [ %i.bx, %bb.y ], [ %.1, %bb.x ]  ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i8 %i.bz, ptr %i.ca, align 4
  %i.cb = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.2) ; 2 uses
  %i.cc = lshr i8 %i.cb, 2                        ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 6
  store i8 %i.cc, ptr %i.cd, align 2
  %i.ce = and i8 %i.cb, 3
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 5
  store i8 %i.ce, ptr %i.cf, align 1
  %i.cg = add nuw nsw i32 %.2, 2
  %i.ch = add nuw nsw i32 %.2, 3
  %i.ci = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.cg) ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 7
  store i8 %i.ci, ptr %i.cj, align 1
  %i.ck = add nuw nsw i32 %.2, 4
  %i.cl = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ch) ; 2 uses
  %i.cm = lshr i8 %i.cl, 2
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 9
  store i8 %i.cm, ptr %i.cn, align 1
  %i.co = and i8 %i.cl, 3
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %i.co, ptr %i.cp, align 4
  %i.cq = add nuw nsw i32 %.2, 5
  %i.cr = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ck)
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 10
  store i8 %i.cr, ptr %i.cs, align 2
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.cq, ptr %i.ct, align 4
  br i1 %.not, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.cu = and i8 %i.cc, 1
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 %i.cu, ptr %i.cv, align 2
  %i.cw = icmp eq i8 %i.f, 0
  br i1 %i.cw, label %bb.ab, label %bb.af

.thread:                                          ; preds = %bb.z
  %i.cx = getelementptr i8, ptr %5, i64 2
  %i.cy = load i8, ptr %i.cx, align 1             ; 2 uses
  %i.cz = lshr i8 %i.cy, 7
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 %i.cz, ptr %i.da, align 2
  %i.db = icmp eq i8 %i.f, 0
  br i1 %i.db, label %.thread49, label %bb.af

.thread49:                                        ; preds = %.thread
  %i.dc = and i8 %i.cy, 64
  %i.dd = icmp eq i8 %i.dc, 0
  %i.de = select i1 %i.dd, ptr @.str.53, ptr @.str.52
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.thread49
  %.not46 = phi ptr [ %i.de, %.thread49 ], [ @.str.53, %bb.aa ]
  %.not45 = icmp eq i8 %i.g, 0
  %i.df = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.dg = zext i8 %i.ci to i32                    ; 2 uses
  br i1 %.not45, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.df, i32 noundef 38, ptr noundef nonnull @.str.51, i32 noundef %i.dg, ptr noundef nonnull %.not46)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.df, i32 noundef 38, ptr noundef nonnull @.str.54, i32 noundef %i.dg)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dh = load ptr, ptr %i.a, align 8
  %i.di = zext i8 %i.bz to i32
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.dh, i32 noundef 11, ptr noundef nonnull @.str.54, i32 noundef %i.di)
  br label %bb.af

bb.af:                                            ; preds = %.thread, %bb.ae, %bb.aa
  %i.dj = call fastcc i32 @dissect_ipmi_cmd(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %6)
  br label %guess_imb_format.exit.thread

guess_imb_format.exit.thread:                     ; preds = %.critedge, %.thread142.i, %bb.af
  %.038 = phi i32 [ %i.dj, %bb.af ], [ 0, %.thread142.i ], [ %i.l, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret i32 %.038
}

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_add_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_ipmi_cmd(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.ipmi_header_t, align 1      ; 15 uses
  %7 = alloca %struct.nstime_t, align 8           ; 6 uses
  %i.a = alloca [240 x i8], align 16              ; 6 uses
  %8 = alloca %struct.nstime_t, align 8           ; 4 uses
  %i.b = load i8, ptr @dissect_bus_commands, align 1, !range !8, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.d, i32 noundef %4)
  %i.f = load i32, ptr @hf_ipmi_command_data, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.f, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.cg

bb.c:                                             ; preds = %bb.a
  %i.h = tail call fastcc ptr @get_packet_data(ptr noundef %1) ; 27 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.cg, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %5, i64 6          ; 8 uses
  %i.j = load i8, ptr %i.i, align 2               ; 3 uses
  %i.k = lshr i8 %i.j, 1
  %i.l = zext nneg i8 %i.k to i64
  %i.m = getelementptr [24 x i8], ptr @ipmi_cmd_tab, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %i.o = load i32, ptr %i.n, align 8              ; 4 uses
  %i.p = and i8 %i.j, 1
  %i.q = zext nneg i8 %i.p to i32                 ; 2 uses
  %i.r = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.s = getelementptr i8, ptr %5, i64 12         ; 4 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = getelementptr i8, ptr %5, i64 16         ; 11 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = lshr i32 %i.v, 5
  %.lobit = and i32 %i.w, 1
  %i.x = xor i32 %.lobit, 1
  %i.y = add i32 %i.o, %i.q                       ; 2 uses
  %i.z = add i32 %i.y, %i.t
  %i.aa = add i32 %i.z, %i.x
  %i.ab = icmp ult i32 %i.r, %i.aa
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call i32 @call_data_dissector(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %bb.cg

bb.f:                                             ; preds = %bb.d
  %i.ad = getelementptr i8, ptr %i.h, i64 32      ; 12 uses
  %i.ae = load i8, ptr %i.ad, align 8
  %i.af = getelementptr i8, ptr %i.h, i64 33      ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1             ; 4 uses
  store i8 %i.ag, ptr %i.ad, align 8
  %i.ah = add i8 %i.ag, 1
  store i8 %i.ah, ptr %i.af, align 1
  %.not258 = icmp eq i8 %i.ag, 0
  br i1 %.not258, label %bb.g, label %remove_old_requests.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr i8, ptr %1, i64 20        ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = load ptr, ptr %i.h, align 8
  %i.al = tail call ptr @wmem_tree_lookup32(ptr noundef %i.ak, i32 noundef %i.aj) ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.h, label %get_frame_data.exit

bb.h:                                             ; preds = %bb.g
  %i.an = tail call ptr @wmem_file_scope()
  %i.ao = tail call noalias dereferenceable_or_null(40) ptr @wmem_alloc0(ptr noundef %i.an, i64 noundef 40) #13 ; 2 uses
  %i.ap = load ptr, ptr %i.h, align 8
  tail call void @wmem_tree_insert32(ptr noundef %i.ap, i32 noundef %i.aj, ptr noundef %i.ao)
  br label %get_frame_data.exit

get_frame_data.exit:                              ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %i.ao, %bb.h ], [ %i.al, %bb.g ] ; 2 uses
  %i.aq = getelementptr i8, ptr %i.h, i64 24
  store ptr %.0.i, ptr %i.aq, align 8
  %i.ar = load i32, ptr %i.ai, align 4
  %i.as = getelementptr i8, ptr %i.h, i64 16
  store i32 %i.ar, ptr %i.as, align 8
  %i.at = getelementptr i8, ptr %.0.i, i64 24
  %i.au = getelementptr i8, ptr %1, i64 24        ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(16) %i.at, ptr noundef align 4 dereferenceable(16) %i.au, i64 noundef 16, i1 noundef false) #14
  %i.av = getelementptr i8, ptr %5, i64 1
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = getelementptr i8, ptr %i.h, i64 34
  store i8 %i.aw, ptr %i.ax, align 2
  %i.ay = getelementptr i8, ptr %5, i64 2
  %i.az = load i8, ptr %i.ay, align 2
  %i.ba = getelementptr i8, ptr %i.h, i64 35
  store i8 %i.az, ptr %i.ba, align 1
  %i.bb = getelementptr i8, ptr %i.h, i64 8       ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call ptr @wmem_list_head(ptr noundef %i.bc) ; 2 uses
  %.not16.i = icmp eq ptr %i.bd, null
end_hunk_0
