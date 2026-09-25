Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/file2alias?download=true
inline.NumInlined: 121
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@do_coreboot_entry:bb.a
; Function Attrs: nounwind uwtable
define internal void @do_of_entry(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca [500 x i8], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.d = load i8, ptr %1, align 1, !tbaa !24
  %.not = icmp eq i8 %i.d, 0
  %i.e = select i1 %.not, ptr @.str.62, ptr %1
  %i.f = load i8, ptr %i.b, align 1, !tbaa !24
  %.not18 = icmp eq i8 %i.f, 0
  %i.g = select i1 %.not18, ptr @.str.62, ptr %i.b
  %i.h = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.209, ptr noundef nonnull %i.e, ptr noundef nonnull %i.g) #17
  %i.i = load i8, ptr %i.c, align 1, !tbaa !24
  %.not19 = icmp eq i8 %i.i, 0
  br i1 %.not19, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = sext i32 %i.h to i64
  %i.k = getelementptr inbounds i8, ptr %i.a, i64 %i.j
  %i.l = load i8, ptr %i.b, align 1, !tbaa !24
  %.not20 = icmp eq i8 %i.l, 0
  %i.m = select i1 %.not20, ptr @.str.211, ptr @.str.62
  %i.n = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(1) @.str.210, ptr noundef nonnull %i.m, ptr noundef nonnull %i.c) #17 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = load i8, ptr %i.a, align 16, !tbaa !24   ; 2 uses
  %.not2123 = icmp eq i8 %i.o, 0
  br i1 %.not2123, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.p = tail call ptr @__ctype_b_loc() #19
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.q = phi i8 [ %i.o, %.lr.ph ], [ %i.w, %bb.f ]
  %.024 = phi ptr [ %i.a, %.lr.ph ], [ %i.v, %bb.f ] ; 2 uses
  %i.r = sext i8 %i.q to i64
  %i.s = getelementptr inbounds [2 x i8], ptr %.pre, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !33
  %i.u = and i16 %i.t, 8192
  %.not22 = icmp eq i16 %i.u, 0
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 95, ptr %.024, align 1, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.024, i64 1 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !24    ; 2 uses
  %.not21 = icmp eq i8 %i.w, 0
  br i1 %.not21, label %.critedge, label %bb.d, !llvm.loop !67

.critedge:                                        ; preds = %bb.f, %bb.c
  call void (ptr, i1, ptr, ...) @module_alias_printf(ptr noundef %0, i1 noundef zeroext false, ptr noundef nonnull @.str.85, ptr noundef nonnull %i.a)
  call void (ptr, i1, ptr, ...) @module_alias_printf(ptr noundef %0, i1 noundef zeroext false, ptr noundef nonnull @.str.212, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_usb_entry_multi(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load i16, ptr %1, align 1, !tbaa !26     ; 2 uses
  %i.b = load i8, ptr @target_is_big_endian, align 1, !tbaa !17, !range !18, !noundef !19
  %i.c = load i8, ptr @host_is_big_endian, align 1, !tbaa !17, !range !18, !noundef !19
  %i.d = icmp eq i8 %i.b, %i.c
  br i1 %i.d, label %.thread144, label %bb.b

.thread144:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.f = load <4 x i16>, ptr %i.e, align 1, !tbaa !26
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %rev.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.h = load <4 x i16>, ptr %i.g, align 1, !tbaa !26
  %i.i = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.h)
  br label %bb.c

bb.c:                                             ; preds = %.thread144, %bb.b
  %.in131135142150 = phi i16 [ %rev.i, %bb.b ], [ %i.a, %.thread144 ]
  %i.j = phi <4 x i16> [ %i.i, %bb.b ], [ %i.f, %.thread144 ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.l = load i8, ptr %i.k, align 1, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.n = load i8, ptr %i.m, align 1, !tbaa !30
  %i.o = zext i16 %.in131135142150 to i32         ; 2 uses
  %i.p = and i32 %i.o, 4
  %.not = icmp eq i32 %i.p, 0
  %i.q = extractelement <4 x i16> %i.j, i64 2
  %i.r = zext i16 %i.q to i32
  %i.s = select i1 %.not, i32 0, i32 %i.r         ; 6 uses
  %i.t = and i32 %i.o, 8
  %.not100 = icmp eq i32 %i.t, 0
  %i.u = extractelement <4 x i16> %i.j, i64 3
  %i.v = zext i16 %i.u to i32
  %i.w = select i1 %.not100, i32 -1, i32 %i.v     ; 3 uses
  %i.x = and i32 %i.s, 14
  %i.y = icmp samesign ugt i32 %i.x, 9
  br i1 %i.y, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = tail call i32 @llvm.umin.i32(i32 %i.w, i32 39321) ; 3 uses
  %i.aa = and i32 %i.z, 14
  %i.ab = icmp samesign ugt i32 %i.aa, 9
  %i.ac = and i32 %i.s, 224
  %i.ad = icmp samesign ugt i32 %i.ac, 144
  %or.cond186 = select i1 %i.ab, i1 true, i1 %i.ad
  %i.ae = and i32 %i.z, 224
  %i.af = icmp samesign ugt i32 %i.ae, 144
  %or.cond188 = select i1 %or.cond186, i1 true, i1 %i.af
  %i.ag = and i32 %i.s, 3584
  %i.ah = icmp samesign ugt i32 %i.ag, 2304
  %or.cond190 = select i1 %or.cond188, i1 true, i1 %i.ah
  %i.ai = and i32 %i.z, 3584
  %i.aj = icmp samesign ugt i32 %i.ai, 2304
  %or.cond192 = select i1 %or.cond190, i1 true, i1 %i.aj
  %i.ak = icmp samesign ugt i32 %i.s, 40959
  %or.cond193 = select i1 %or.cond192, i1 true, i1 %i.ak ; 2 uses
  %spec.select195 = select i1 %or.cond193, i8 15, i8 9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.lcssa165 = phi i1 [ true, %bb.c ], [ %or.cond193, %bb.d ] ; 2 uses
  %.092 = phi i8 [ 15, %bb.c ], [ %spec.select195, %bb.d ] ; 7 uses
  %shift = shufflevector <4 x i16> %i.j, <4 x i16> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = or <4 x i16> %shift, %i.j
  %i.al = extractelement <4 x i16> %foldExtExtBinop, i64 0
  %i.am = zext i8 %i.l to i16
  %i.an = or i16 %i.al, %i.am
  %i.ao = zext i8 %i.n to i16
  %i.ap = or i16 %i.an, %i.ao
  %.not101 = icmp eq i16 %i.ap, 0
  %.not102167 = icmp ugt i32 %i.s, %i.w
  %or.cond171 = select i1 %.not101, i1 true, i1 %.not102167
  br i1 %or.cond171, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.aq = zext nneg i8 %.092 to i32
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.n
  %.1170 = phi i32 [ 3, %.lr.ph ], [ %i.dg, %bb.n ] ; 5 uses
  %.0169 = phi i32 [ %i.w, %.lr.ph ], [ %.1127, %bb.n ] ; 6 uses
  %.0128168 = phi i32 [ %i.s, %.lr.ph ], [ %.1129, %bb.n ] ; 6 uses
  %i.ar = trunc i32 %.0128168 to i8
  %i.as = and i8 %i.ar, 15                        ; 2 uses
  %i.at = trunc i32 %.0169 to i8
  %i.au = and i8 %i.at, 15
  %i.av = and i32 %.0169, 15
  %i.aw = icmp samesign ugt i32 %i.av, %i.aq
  %spec.select = select i1 %i.aw, i8 %.092, i8 %i.au ; 3 uses
  %i.ax = lshr i32 %.0128168, 4                   ; 6 uses
  %i.ay = lshr i32 %.0169, 4                      ; 5 uses
  %i.az = icmp ne i32 %i.ax, %i.ay
  %i.ba = icmp ne i32 %.1170, 0
  %or.cond = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @do_usb_entry(ptr noundef nonnull %1, i32 noundef %i.ax, i32 noundef %.1170, i8 noundef zeroext %i.as, i8 noundef zeroext %spec.select, i8 noundef zeroext %.092, ptr noundef %0)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.bb = and i32 %.0128168, 15
  %.not103 = icmp eq i32 %i.bb, 0
  br i1 %.not103, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.lcssa165, label %bb.j, label %._crit_edge49.3.i

bb.j:                                             ; preds = %bb.i
  %i.bc = add nuw nsw i32 %i.ax, 1
  br label %incbcd.exit

._crit_edge49.3.i:                                ; preds = %bb.i
  %i.bd = and i32 %i.ax, 15
  %i.be = tail call i32 @llvm.umin.i32(i32 %i.bd, i32 9)
  %i.bf = lshr i32 %.0128168, 8
  %i.bg = and i32 %i.bf, 15
  %i.bh = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 9)
  %narrow.i = mul nuw nsw i32 %i.bh, 10
  %narrow62.i = add nuw nsw i32 %narrow.i, %i.be
  %i.bi = lshr i32 %.0128168, 12
  %i.bj = and i32 %i.bi, 15
  %i.bk = tail call i32 @llvm.umin.i32(i32 %i.bj, i32 9)
  %narrow64.i = mul nuw nsw i32 %i.bk, 100
  %narrow65.i = add nuw nsw i32 %narrow62.i, %narrow64.i
  %i.bl = lshr i32 %.0128168, 16
  %i.bm = and i32 %i.bl, 15
  %i.bn = tail call i32 @llvm.umin.i32(i32 %i.bm, i32 9)
  %narrow68.i = mul nuw nsw i32 %i.bn, 1000
  %narrow69.i = add nuw nsw i32 %narrow65.i, %narrow68.i
  %narrow69.i.fr = freeze i32 %narrow69.i
  %2 = trunc i32 %narrow69.i.fr to i16
  %.lhs.trunc = add i16 %2, 1                     ; 5 uses
  %i.bo = urem i16 %.lhs.trunc, 10
  %i.bp = udiv i16 %.lhs.trunc, 10
  %i.bq = urem i16 %i.bp, 10
  %i.br = shl nuw nsw i16 %i.bq, 4
  %i.bs = or disjoint i16 %i.br, %i.bo
  %i.bt = zext nneg i16 %i.bs to i32
  %i.bu = udiv i16 %.lhs.trunc, 100
  %.lhs.trunc159 = trunc i16 %i.bu to i8
  %i.bv = urem i8 %.lhs.trunc159, 10
  %.tr70.i = zext nneg i8 %i.bv to i32
  %i.bw = shl nuw nsw i32 %.tr70.i, 8
  %i.bx = or disjoint i32 %i.bw, %i.bt
  %i.by = udiv i16 %.lhs.trunc, 1000
  %.zext162 = zext nneg i16 %i.by to i32
  %.cmp = icmp ult i16 %.lhs.trunc, 10000
  %i.bz = shl nuw nsw i32 %.zext162, 12           ; 2 uses
  %i.ca = add nsw i32 %i.bz, -40960
  %i.cb = select i1 %.cmp, i32 %i.bz, i32 %i.ca
  %i.cc = or disjoint i32 %i.bx, %i.cb
  br label %incbcd.exit

incbcd.exit:                                      ; preds = %bb.j, %._crit_edge49.3.i
  %storemerge.i = phi i32 [ %i.cc, %._crit_edge49.3.i ], [ %i.bc, %bb.j ]
  tail call fastcc void @do_usb_entry(ptr noundef nonnull %1, i32 noundef %i.ax, i32 noundef %.1170, i8 noundef zeroext %i.as, i8 noundef zeroext %.092, i8 noundef zeroext %.092, ptr noundef %0)
  br label %bb.k

bb.k:                                             ; preds = %incbcd.exit, %bb.h
  %.1129 = phi i32 [ %i.ax, %bb.h ], [ %storemerge.i, %incbcd.exit ] ; 2 uses
  %i.cd = icmp samesign ult i8 %spec.select, %.092
  br i1 %i.cd, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  br i1 %.lcssa165, label %bb.m, label %._crit_edge49.3.i108

bb.m:                                             ; preds = %bb.l
  %i.ce = add nsw i32 %i.ay, -1
  br label %incbcd.exit119

._crit_edge49.3.i108:                             ; preds = %bb.l
  %i.cf = and i32 %i.ay, 15
  %i.cg = tail call i32 @llvm.umin.i32(i32 %i.cf, i32 9)
  %i.ch = lshr i32 %.0169, 8
  %i.ci = and i32 %i.ch, 15
  %i.cj = tail call i32 @llvm.umin.i32(i32 %i.ci, i32 9)
  %narrow.i109 = mul nuw nsw i32 %i.cj, 10
  %narrow62.i110 = add nuw nsw i32 %narrow.i109, %i.cg
  %i.ck = lshr i32 %.0169, 12
  %i.cl = and i32 %i.ck, 15
  %i.cm = tail call i32 @llvm.umin.i32(i32 %i.cl, i32 9)
  %narrow64.i111 = mul nuw nsw i32 %i.cm, 100
  %narrow65.i112 = add nuw nsw i32 %narrow62.i110, %narrow64.i111
  %i.cn = lshr i32 %.0169, 16
  %i.co = and i32 %i.cn, 15
  %i.cp = tail call i32 @llvm.umin.i32(i32 %i.co, i32 9)
  %narrow68.i113 = mul nuw nsw i32 %i.cp, 1000
  %narrow69.i114 = add nuw nsw i32 %narrow65.i112, %narrow68.i113
  %i.cq = zext nneg i32 %narrow69.i114 to i64
  %i.cr = add nsw i64 %i.cq, -1                   ; 4 uses
  %i.cs = urem i64 %i.cr, 10
  %i.ct = trunc nuw nsw i64 %i.cs to i32
  %i.cu = udiv i64 %i.cr, 10
  %i.cv = urem i64 %i.cu, 10
  %.tr.i115 = trunc nuw nsw i64 %i.cv to i32
  %i.cw = shl nuw nsw i32 %.tr.i115, 4
  %i.cx = or disjoint i32 %i.cw, %i.ct
  %i.cy = udiv i64 %i.cr, 100
  %i.cz = urem i64 %i.cy, 10
  %.tr70.i116 = trunc nuw nsw i64 %i.cz to i32
  %i.da = shl nuw nsw i32 %.tr70.i116, 8
  %i.db = or disjoint i32 %i.cx, %i.da
  %i.dc = udiv i64 %i.cr, 1000
  %i.dd = urem i64 %i.dc, 10
  %.tr71.i117 = trunc nuw nsw i64 %i.dd to i32
  %i.de = shl nuw nsw i32 %.tr71.i117, 12
  %i.df = or disjoint i32 %i.db, %i.de
  br label %incbcd.exit119

incbcd.exit119:                                   ; preds = %bb.m, %._crit_edge49.3.i108
  %storemerge.i118 = phi i32 [ %i.df, %._crit_edge49.3.i108 ], [ %i.ce, %bb.m ]
  tail call fastcc void @do_usb_entry(ptr noundef nonnull %1, i32 noundef %i.ay, i32 noundef %.1170, i8 noundef zeroext 0, i8 noundef zeroext %spec.select, i8 noundef zeroext %.092, ptr noundef %0)
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %incbcd.exit119
  %.1127 = phi i32 [ %storemerge.i118, %incbcd.exit119 ], [ %i.ay, %bb.k ] ; 2 uses
  %i.dg = add nsw i32 %.1170, -1
  %.not102 = icmp ugt i32 %.1129, %.1127
  br i1 %.not102, label %.loopexit, label %bb.f, !llvm.loop !68

.loopexit:                                        ; preds = %bb.n, %bb.g, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_pnp_device_entry(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = tail call ptr @__ctype_toupper_loc() #19
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 8 uses
  %i.d = load i8, ptr %1, align 1, !tbaa !24
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !14
  %i.h = trunc i32 %i.g to i8
  store i8 %i.h, ptr %i.a, align 1, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !24
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !14
  %i.n = trunc i32 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.o, align 1, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !24
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !14
  %i.u = trunc i32 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.u, ptr %i.v, align 1, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.x = load i8, ptr %i.w, align 1, !tbaa !24
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !14
  %i.ab = trunc i32 %i.aa to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !24
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !14
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !24
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !14
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !24
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !24
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !14
  %i.aw = trunc i32 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !24
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !24
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !14
  %i.bd = trunc i32 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !24
  tail call void (ptr, i1, ptr, ...) @module_alias_printf(ptr noundef %0, i1 noundef zeroext false, ptr noundef nonnull @.str.227, ptr noundef nonnull %1)
  call void (ptr, i1, ptr, ...) @module_alias_printf(ptr noundef %0, i1 noundef zeroext false, ptr noundef nonnull @.str.98, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_pnp_card_entry(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.preheader ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.k = load i8, ptr %i.j, align 1, !tbaa !24    ; 2 uses
  %.not.not = icmp eq i8 %i.k, 0
  br i1 %.not.not, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.l = tail call ptr @__ctype_toupper_loc() #19 ; 8 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.n = sext i8 %i.k to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !14
  %i.q = trunc i32 %i.p to i8
  store i8 %i.q, ptr %i.a, align 1, !tbaa !24
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !24
  %i.u = sext i8 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !14
  %i.x = trunc i32 %i.w to i8
  store i8 %i.x, ptr %i.c, align 1, !tbaa !24
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !24
  %i.ab = sext i8 %i.aa to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !14
  %i.ae = trunc i32 %i.ad to i8
  store i8 %i.ae, ptr %i.d, align 1, !tbaa !24
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 3
end_hunk_0
