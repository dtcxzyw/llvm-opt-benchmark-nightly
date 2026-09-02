Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/dtoa?download=true
inline.NumInlined: 95
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@u64toa:bb.a
  %i.h = or disjoint i8 %i.g, 48
  %i.i = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 4 uses
  store i8 %i.h, ptr %i.i, align 1, !tbaa !15
  %i.j = udiv i32 %.08.i, 10
  %.not.i = icmp ult i32 %.08.i, 10
  br i1 %.not.i, label %u32toa.exit, label %bb.c, !llvm.loop !0

u32toa.exit:                                      ; preds = %bb.c
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.i, i64 %i.m, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.n = udiv i64 %1, 1000000000                  ; 2 uses
  %i.o = urem i64 %1, 1000000000
  %i.p = icmp ugt i64 %1, 4294967295999999999
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = udiv i64 %1, 1000000000000000000
  %i.r = trunc nuw nsw i64 %i.q to i8             ; 2 uses
  %i.s = urem i64 %i.n, 1000000000
  %i.t = icmp ugt i64 %1, -8446744073709551617
  br i1 %i.t, label %bb.f, label %.lr.ph.i

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 49, ptr %0, align 1, !tbaa !15
  %.urem = add nsw i8 %i.r, -10
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.e
  %.026 = phi ptr [ %i.u, %bb.f ], [ %0, %bb.e ]  ; 8 uses
  %.0 = phi i8 [ %.urem, %bb.f ], [ %i.r, %bb.e ]
  %i.v = add nuw nsw i8 %.0, 48
  %i.w = getelementptr inbounds nuw i8, ptr %.026, i64 1
  store i8 %i.v, ptr %.026, align 1, !tbaa !15
  %i.x = trunc nuw nsw i64 %i.s to i32            ; 6 uses
  %i.y = urem i32 %i.x, 10
  %i.z = trunc nuw nsw i32 %i.y to i8
  %i.aa = or disjoint i8 %i.z, 48
  %i.ab = getelementptr inbounds nuw i8, ptr %.026, i64 9
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !15
  %i.ac = udiv i32 %i.x, 100000
  %i.ad = getelementptr inbounds nuw i8, ptr %.026, i64 5
  %i.ae = insertelement <4 x i32> poison, i32 %i.x, i64 0
  %i.af = shufflevector <4 x i32> %i.ae, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ag = udiv <4 x i32> %i.af, <i32 10000, i32 1000, i32 100, i32 10>
  %i.ah = urem <4 x i32> %i.ag, splat (i32 10)
  %i.ai = trunc nuw nsw <4 x i32> %i.ah to <4 x i8>
  %i.aj = or disjoint <4 x i8> %i.ai, splat (i8 48)
  store <4 x i8> %i.aj, ptr %i.ad, align 1, !tbaa !15
  %.lhs.trunc = trunc nuw nsw i32 %i.ac to i16
  %i.ak = urem i16 %.lhs.trunc, 10
  %i.al = udiv i32 %i.x, 1000000
  %i.am = trunc nuw nsw i16 %i.ak to i8
  %i.an = or disjoint i8 %i.am, 48
  %i.ao = getelementptr inbounds nuw i8, ptr %.026, i64 4
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !15
  %.lhs.trunc49 = trunc nuw nsw i32 %i.al to i16
  %i.ap = urem i16 %.lhs.trunc49, 10
  %i.aq = udiv i32 %i.x, 10000000
  %i.ar = trunc nuw nsw i16 %i.ap to i8
  %i.as = or disjoint i8 %i.ar, 48
  %i.at = getelementptr inbounds nuw i8, ptr %.026, i64 3
  store i8 %i.as, ptr %i.at, align 1, !tbaa !15
  %.lhs.trunc51 = trunc nuw nsw i32 %i.aq to i8
  %i.au = urem i8 %.lhs.trunc51, 10
  %i.av = udiv i32 %i.x, 100000000
  %i.aw = or disjoint i8 %i.au, 48
  %i.ax = getelementptr inbounds nuw i8, ptr %.026, i64 2
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !15
  %i.ay = trunc nuw nsw i32 %i.av to i8
  %i.az = or disjoint i8 %i.ay, 48
  store i8 %i.az, ptr %i.w, align 1, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %.026, i64 10
  br label %.lr.ph.i39

bb.g:                                             ; preds = %bb.d
  %i.bb = trunc nuw i64 %i.n to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 10 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.08.i35 = phi i32 [ %i.bb, %bb.g ], [ %i.bh, %bb.h ] ; 3 uses
  %.0.i36 = phi ptr [ %i.bc, %bb.g ], [ %i.bg, %bb.h ]
  %i.bd = urem i32 %.08.i35, 10
  %i.be = trunc nuw nsw i32 %i.bd to i8
  %i.bf = or disjoint i8 %i.be, 48
  %i.bg = getelementptr inbounds i8, ptr %.0.i36, i64 -1 ; 4 uses
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !15
  %i.bh = udiv i32 %.08.i35, 10
  %.not.i37 = icmp ult i32 %.08.i35, 10
  br i1 %.not.i37, label %u32toa.exit38, label %bb.h, !llvm.loop !0

u32toa.exit38:                                    ; preds = %bb.h
  %i.bi = ptrtoint ptr %i.bc to i64
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i64 %i.bk, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %i.bk
  br label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %u32toa.exit38, %.lr.ph.i
  %.1 = phi ptr [ %i.ba, %.lr.ph.i ], [ %i.bl, %u32toa.exit38 ] ; 7 uses
  %i.bm = trunc nuw nsw i64 %i.o to i32           ; 6 uses
  %i.bn = urem i32 %i.bm, 10
  %i.bo = trunc nuw nsw i32 %i.bn to i8
  %i.bp = or disjoint i8 %i.bo, 48
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 8
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !15
  %i.br = udiv i32 %i.bm, 100000
  %i.bs = getelementptr inbounds nuw i8, ptr %.1, i64 4
  %i.bt = insertelement <4 x i32> poison, i32 %i.bm, i64 0
  %i.bu = shufflevector <4 x i32> %i.bt, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bv = udiv <4 x i32> %i.bu, <i32 10000, i32 1000, i32 100, i32 10>
  %i.bw = urem <4 x i32> %i.bv, splat (i32 10)
  %i.bx = trunc nuw nsw <4 x i32> %i.bw to <4 x i8>
  %i.by = or disjoint <4 x i8> %i.bx, splat (i8 48)
  store <4 x i8> %i.by, ptr %i.bs, align 1, !tbaa !15
  %.lhs.trunc53 = trunc nuw nsw i32 %i.br to i16
  %i.bz = urem i16 %.lhs.trunc53, 10
  %i.ca = udiv i32 %i.bm, 1000000
  %i.cb = trunc nuw nsw i16 %i.bz to i8
  %i.cc = or disjoint i8 %i.cb, 48
  %i.cd = getelementptr inbounds nuw i8, ptr %.1, i64 3
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !15
  %.lhs.trunc55 = trunc nuw nsw i32 %i.ca to i16
  %i.ce = urem i16 %.lhs.trunc55, 10
  %i.cf = udiv i32 %i.bm, 10000000
  %i.cg = trunc nuw nsw i16 %i.ce to i8
  %i.ch = or disjoint i8 %i.cg, 48
  %i.ci = getelementptr inbounds nuw i8, ptr %.1, i64 2
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !15
  %.lhs.trunc57 = trunc nuw nsw i32 %i.cf to i8
  %i.cj = urem i8 %.lhs.trunc57, 10
  %i.ck = udiv i32 %i.bm, 100000000
  %i.cl = or disjoint i8 %i.cj, 48
  %i.cm = getelementptr inbounds nuw i8, ptr %.1, i64 1
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !15
  %i.cn = trunc nuw nsw i32 %i.ck to i8
  %i.co = or disjoint i8 %i.cn, 48
  store i8 %i.co, ptr %.1, align 1, !tbaa !15
  %i.cp = getelementptr inbounds nuw i8, ptr %.1, i64 9
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %0 to i64
  %i.cs = sub i64 %i.cq, %i.cr
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph.i39, %u32toa.exit
  %.027 = phi i64 [ %i.m, %u32toa.exit ], [ %i.cs, %.lr.ph.i39 ]
  ret i64 %.027
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden i64 @i64toa(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @u64toa(ptr noundef %0, i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i8 45, ptr %0, align 1, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = sub i64 0, %1
  %i.e = tail call i64 @u64toa(ptr noundef nonnull %i.c, i64 noundef %i.d)
  %i.f = add i64 %i.e, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ %i.f, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden i64 @u64toa_radix(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [41 x i8], align 16               ; 3 uses
  %i.b = icmp eq i32 %2, 10
  br i1 %i.b, label %bb.b, label %bb.c, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @u64toa(ptr noundef %0, i64 noundef %1)
  br label %u64toa_bin_len.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.e = icmp samesign ult i32 %i.d, 2
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %2, i1 true) ; 2 uses
  %i.g = xor i32 %i.f, 31                         ; 2 uses
  %i.h = icmp eq i64 %1, 0
  br i1 %i.h, label %.split, label %.split35

.split:                                           ; preds = %bb.d
  store i8 48, ptr %0, align 1, !tbaa !15
  br label %u64toa_bin_len.exit

.split35:                                         ; preds = %bb.d
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true)
  %3 = trunc nuw nsw i64 %i.i to i8
  %i.j = trunc nuw nsw i32 %i.g to i8             ; 3 uses
  %4 = sub nsw i8 %i.j, %3
  %.lhs.trunc = add nsw i8 %4, 63                 ; 2 uses
  %i.k = udiv i8 %.lhs.trunc, %i.j                ; 3 uses
  %i.l = lshr i32 2147483647, %i.f                ; 3 uses
  %.not46 = icmp samesign ult i8 %.lhs.trunc, %i.j
  br i1 %.not46, label %.split35.u64toa_bin_len.exit45_crit_edge, label %.lr.ph.i

.split35.u64toa_bin_len.exit45_crit_edge:         ; preds = %.split35
  %.pre = zext nneg i8 %i.k to i64
  br label %u64toa_bin_len.exit

.lr.ph.i:                                         ; preds = %.split35
  %i.m = zext nneg i32 %i.g to i64                ; 3 uses
  %i.n = zext i8 %i.k to i64                      ; 5 uses
  %xtraiter = and i64 %i.n, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  %indvars.iv.next.i43.prol = add nsw i64 %i.n, -1 ; 2 uses
  %i.o = trunc i64 %1 to i32
  %i.p = and i32 %i.l, %i.o                       ; 3 uses
  %i.q = lshr i64 %1, %i.m
  %i.r = icmp samesign ult i32 %i.p, 10
  %i.s = or disjoint i32 %i.p, 48
  %i.t = add nuw nsw i32 %i.p, 87
  %.013.i44.prol = select i1 %i.r, i32 %i.s, i32 %i.t
  %i.u = trunc i32 %.013.i44.prol to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.i43.prol
  store i8 %i.u, ptr %i.v, align 1, !tbaa !15
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i41.unr = phi i64 [ %i.n, %.lr.ph.i ], [ %indvars.iv.next.i43.prol, %.prol.loopexit.unr-lcssa ]
  %.01416.i42.unr = phi i64 [ %1, %.lr.ph.i ], [ %i.q, %.prol.loopexit.unr-lcssa ]
  %i.w = icmp eq i8 %i.k, 1
  br i1 %i.w, label %u64toa_bin_len.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i41 = phi i64 [ %indvars.iv.next.i43.1, %.lr.ph.i.new ], [ %indvars.iv.i41.unr, %.prol.loopexit ] ; 3 uses
  %.01416.i42 = phi i64 [ %i.ai, %.lr.ph.i.new ], [ %.01416.i42.unr, %.prol.loopexit ] ; 2 uses
  %i.x = trunc i64 %.01416.i42 to i32
  %i.y = and i32 %i.l, %i.x                       ; 3 uses
  %i.z = lshr i64 %.01416.i42, %i.m               ; 2 uses
  %i.aa = icmp samesign ult i32 %i.y, 10
  %i.ab = or disjoint i32 %i.y, 48
  %i.ac = add nuw nsw i32 %i.y, 87
  %.013.i44 = select i1 %i.aa, i32 %i.ab, i32 %i.ac
  %i.ad = trunc i32 %.013.i44 to i8
  %i.ae = getelementptr i8, ptr %0, i64 %indvars.iv.i41
  %i.af = getelementptr i8, ptr %i.ae, i64 -1
  store i8 %i.ad, ptr %i.af, align 1, !tbaa !15
  %indvars.iv.next.i43.1 = add nsw i64 %indvars.iv.i41, -2 ; 2 uses
  %i.ag = trunc i64 %i.z to i32
  %i.ah = and i32 %i.l, %i.ag                     ; 3 uses
  %i.ai = lshr i64 %i.z, %i.m
  %i.aj = icmp samesign ult i32 %i.ah, 10
  %i.ak = or disjoint i32 %i.ah, 48
  %i.al = add nuw nsw i32 %i.ah, 87
  %.013.i44.1 = select i1 %i.aj, i32 %i.ak, i32 %i.al
  %i.am = trunc i32 %.013.i44.1 to i8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.i43.1
  store i8 %i.am, ptr %i.an, align 1, !tbaa !15
  %i.ao = icmp sgt i64 %indvars.iv.i41, 2
  br i1 %i.ao, label %.lr.ph.i.new, label %u64toa_bin_len.exit, !llvm.loop !1

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 41 ; 2 uses
  %i.aq = zext i32 %2 to i64                      ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.033 = phi i64 [ %1, %bb.e ], [ %i.at, %bb.f ] ; 3 uses
  %.030 = phi ptr [ %i.ap, %bb.e ], [ %i.av, %bb.f ]
  %i.ar = urem i64 %.033, %i.aq                   ; 2 uses
  %i.as = trunc nuw i64 %i.ar to i32
  %i.at = udiv i64 %.033, %i.aq
  %i.au = icmp slt i32 %i.as, 10
  %.0.v = select i1 %i.au, i8 48, i8 87
  %5 = trunc i64 %i.ar to i8
  %6 = add i8 %.0.v, %5
  %i.av = getelementptr inbounds i8, ptr %.030, i64 -1 ; 4 uses
  store i8 %6, ptr %i.av, align 1, !tbaa !15
  %.not = icmp ult i64 %.033, %i.aq
  br i1 %.not, label %bb.g, label %bb.f, !llvm.loop !2

bb.g:                                             ; preds = %bb.f
  %i.aw = ptrtoint ptr %i.ap to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.av, i64 %i.ay, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %u64toa_bin_len.exit

u64toa_bin_len.exit:                              ; preds = %.prol.loopexit, %.lr.ph.i.new, %.split35.u64toa_bin_len.exit45_crit_edge, %.split, %bb.g, %bb.b
  %.032 = phi i64 [ %i.c, %bb.b ], [ %i.ay, %bb.g ], [ 1, %.split ], [ %.pre, %.split35.u64toa_bin_len.exit45_crit_edge ], [ %i.n, %.lr.ph.i.new ], [ %i.n, %.prol.loopexit ]
  ret i64 %.032
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden i64 @i64toa_radix(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [41 x i8], align 16               ; 3 uses
  %i.b = alloca [41 x i8], align 16               ; 3 uses
  %i.c = icmp sgt i64 %1, -1
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %2, 10
  br i1 %i.d, label %bb.c, label %bb.d, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @u64toa(ptr noundef %0, i64 noundef %1)
  br label %u64toa_radix.exit

bb.d:                                             ; preds = %bb.b
  %i.f = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.g = icmp samesign ult i32 %i.f, 2
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %2, i1 true) ; 2 uses
  %i.i = xor i32 %i.h, 31                         ; 2 uses
  %i.j = icmp eq i64 %1, 0
  br i1 %i.j, label %.split.i, label %.split35.i

.split.i:                                         ; preds = %bb.e
  store i8 48, ptr %0, align 1, !tbaa !15
  br label %u64toa_radix.exit

.split35.i:                                       ; preds = %bb.e
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true)
  %3 = trunc nuw nsw i64 %i.k to i8
  %i.l = trunc nuw nsw i32 %i.i to i8             ; 3 uses
  %4 = sub nsw i8 %i.l, %3
  %.lhs.trunc.i = add nsw i8 %4, 63               ; 2 uses
  %i.m = udiv i8 %.lhs.trunc.i, %i.l              ; 3 uses
  %i.n = lshr i32 2147483647, %i.h                ; 3 uses
  %.not46.i = icmp samesign ult i8 %.lhs.trunc.i, %i.l
  br i1 %.not46.i, label %.split35.u64toa_bin_len.exit45_crit_edge.i, label %.lr.ph.i.i

.split35.u64toa_bin_len.exit45_crit_edge.i:       ; preds = %.split35.i
  %.pre.i = zext nneg i8 %i.m to i64
  br label %u64toa_radix.exit

.lr.ph.i.i:                                       ; preds = %.split35.i
  %i.o = zext nneg i32 %i.i to i64                ; 3 uses
  %i.p = zext i8 %i.m to i64                      ; 5 uses
  %xtraiter38 = and i64 %i.p, 1
  %lcmp.mod39.not = icmp eq i64 %xtraiter38, 0
  br i1 %lcmp.mod39.not, label %.prol.loopexit37, label %.prol.loopexit37.unr-lcssa

.prol.loopexit37.unr-lcssa:                       ; preds = %.lr.ph.i.i
  %indvars.iv.next.i43.i.prol = add nsw i64 %i.p, -1 ; 2 uses
  %i.q = trunc i64 %1 to i32
  %i.r = and i32 %i.n, %i.q                       ; 3 uses
  %i.s = lshr i64 %1, %i.o
  %i.t = icmp samesign ult i32 %i.r, 10
  %i.u = or disjoint i32 %i.r, 48
  %i.v = add nuw nsw i32 %i.r, 87
  %.013.i44.i.prol = select i1 %i.t, i32 %i.u, i32 %i.v
  %i.w = trunc i32 %.013.i44.i.prol to i8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.i43.i.prol
  store i8 %i.w, ptr %i.x, align 1, !tbaa !15
  br label %.prol.loopexit37

.prol.loopexit37:                                 ; preds = %.prol.loopexit37.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i41.i.unr = phi i64 [ %i.p, %.lr.ph.i.i ], [ %indvars.iv.next.i43.i.prol, %.prol.loopexit37.unr-lcssa ]
  %.01416.i42.i.unr = phi i64 [ %1, %.lr.ph.i.i ], [ %i.s, %.prol.loopexit37.unr-lcssa ]
  %i.y = icmp eq i8 %i.m, 1
  br i1 %i.y, label %u64toa_radix.exit, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.prol.loopexit37, %.lr.ph.i.i.new
  %indvars.iv.i41.i = phi i64 [ %indvars.iv.next.i43.i.1, %.lr.ph.i.i.new ], [ %indvars.iv.i41.i.unr, %.prol.loopexit37 ] ; 3 uses
  %.01416.i42.i = phi i64 [ %i.ak, %.lr.ph.i.i.new ], [ %.01416.i42.i.unr, %.prol.loopexit37 ] ; 2 uses
  %i.z = trunc i64 %.01416.i42.i to i32
  %i.aa = and i32 %i.n, %i.z                      ; 3 uses
  %i.ab = lshr i64 %.01416.i42.i, %i.o            ; 2 uses
  %i.ac = icmp samesign ult i32 %i.aa, 10
  %i.ad = or disjoint i32 %i.aa, 48
  %i.ae = add nuw nsw i32 %i.aa, 87
  %.013.i44.i = select i1 %i.ac, i32 %i.ad, i32 %i.ae
  %i.af = trunc i32 %.013.i44.i to i8
  %i.ag = getelementptr i8, ptr %0, i64 %indvars.iv.i41.i
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !15
  %indvars.iv.next.i43.i.1 = add nsw i64 %indvars.iv.i41.i, -2 ; 2 uses
  %i.ai = trunc i64 %i.ab to i32
  %i.aj = and i32 %i.n, %i.ai                     ; 3 uses
  %i.ak = lshr i64 %i.ab, %i.o
  %i.al = icmp samesign ult i32 %i.aj, 10
  %i.am = or disjoint i32 %i.aj, 48
  %i.an = add nuw nsw i32 %i.aj, 87
  %.013.i44.i.1 = select i1 %i.al, i32 %i.am, i32 %i.an
  %i.ao = trunc i32 %.013.i44.i.1 to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.i43.i.1
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !15
  %i.aq = icmp sgt i64 %indvars.iv.i41.i, 2
  br i1 %i.aq, label %.lr.ph.i.i.new, label %u64toa_radix.exit, !llvm.loop !1

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 41 ; 2 uses
  %i.as = zext i32 %2 to i64                      ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.033.i = phi i64 [ %1, %bb.f ], [ %i.av, %bb.g ] ; 3 uses
  %.030.i = phi ptr [ %i.ar, %bb.f ], [ %i.ax, %bb.g ]
  %i.at = urem i64 %.033.i, %i.as                 ; 2 uses
  %i.au = trunc nuw i64 %i.at to i32
  %i.av = udiv i64 %.033.i, %i.as
  %i.aw = icmp slt i32 %i.au, 10
  %.0.v.i = select i1 %i.aw, i8 48, i8 87
  %5 = trunc i64 %i.at to i8
  %6 = add i8 %.0.v.i, %5
  %i.ax = getelementptr inbounds i8, ptr %.030.i, i64 -1 ; 4 uses
  store i8 %6, ptr %i.ax, align 1, !tbaa !15
  %.not.i = icmp ult i64 %.033.i, %i.as
  br i1 %.not.i, label %bb.h, label %bb.g, !llvm.loop !2

bb.h:                                             ; preds = %bb.g
  %i.ay = ptrtoint ptr %i.ar to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.ax, i64 %i.ba, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %u64toa_radix.exit

bb.i:                                             ; preds = %bb.a
  store i8 45, ptr %0, align 1, !tbaa !15
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.bc = sub i64 0, %1                           ; 6 uses
  %i.bd = icmp eq i32 %2, 10
  br i1 %i.bd, label %bb.j, label %bb.k, !prof !17

bb.j:                                             ; preds = %bb.i
  %i.be = tail call i64 @u64toa(ptr noundef nonnull %i.bb, i64 noundef %i.bc)
  br label %u64toa_radix.exit28

bb.k:                                             ; preds = %bb.i
  %i.bf = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.bg = icmp samesign ult i32 %i.bf, 2
  br i1 %i.bg, label %.split35.i15, label %bb.l

.split35.i15:                                     ; preds = %bb.k
  %i.bh = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %2, i1 true) ; 2 uses
  %i.bi = xor i32 %i.bh, 31                       ; 2 uses
  %i.bj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.bc, i1 true)
  %7 = trunc nuw nsw i64 %i.bj to i8
  %i.bk = trunc nuw nsw i32 %i.bi to i8           ; 3 uses
  %8 = sub nsw i8 %i.bk, %7
  %.lhs.trunc.i15 = add nsw i8 %8, 63             ; 2 uses
  %i.bl = udiv i8 %.lhs.trunc.i15, %i.bk          ; 3 uses
  %i.bm = lshr i32 2147483647, %i.bh              ; 3 uses
  %.not46.i19 = icmp samesign ult i8 %.lhs.trunc.i15, %i.bk
  br i1 %.not46.i19, label %.split35.u64toa_bin_len.exit45_crit_edge.i25, label %.lr.ph.i.i20

.split35.u64toa_bin_len.exit45_crit_edge.i25:     ; preds = %.split35.i15
  %.pre.i26 = zext nneg i8 %i.bl to i64
  br label %u64toa_radix.exit28

.lr.ph.i.i20:                                     ; preds = %.split35.i15
  %i.bn = zext nneg i32 %i.bi to i64              ; 3 uses
  %i.bo = zext i8 %i.bl to i64                    ; 6 uses
  %xtraiter = and i64 %i.bo, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i.i20
  %indvars.iv.next.i43.i23.prol = add nsw i64 %i.bo, -1
  %i.bp = trunc i64 %i.bc to i32
  %i.bq = and i32 %i.bm, %i.bp                    ; 3 uses
  %i.br = lshr i64 %i.bc, %i.bn
  %i.bs = icmp samesign ult i32 %i.bq, 10
  %i.bt = or disjoint i32 %i.bq, 48
  %i.bu = add nuw nsw i32 %i.bq, 87
  %.013.i44.i24.prol = select i1 %i.bs, i32 %i.bt, i32 %i.bu
  %i.bv = trunc i32 %.013.i44.i24.prol to i8
  %i.bw = getelementptr i8, ptr %0, i64 %i.bo
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !15
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i.i20
  %indvars.iv.i41.i21.unr = phi i64 [ %i.bo, %.lr.ph.i.i20 ], [ %indvars.iv.next.i43.i23.prol, %.prol.loopexit.unr-lcssa ]
  %.01416.i42.i22.unr = phi i64 [ %i.bc, %.lr.ph.i.i20 ], [ %i.br, %.prol.loopexit.unr-lcssa ]
  %i.bx = icmp eq i8 %i.bl, 1
  br i1 %i.bx, label %u64toa_radix.exit28, label %.lr.ph.i.i20.new

.lr.ph.i.i20.new:                                 ; preds = %.prol.loopexit, %.lr.ph.i.i20.new
  %indvars.iv.i41.i21 = phi i64 [ %indvars.iv.next.i43.i23.1, %.lr.ph.i.i20.new ], [ %indvars.iv.i41.i21.unr, %.prol.loopexit ] ; 4 uses
  %.01416.i42.i22 = phi i64 [ %i.ci, %.lr.ph.i.i20.new ], [ %.01416.i42.i22.unr, %.prol.loopexit ] ; 2 uses
  %i.by = trunc i64 %.01416.i42.i22 to i32
  %i.bz = and i32 %i.bm, %i.by                    ; 3 uses
  %i.ca = lshr i64 %.01416.i42.i22, %i.bn         ; 2 uses
  %i.cb = icmp samesign ult i32 %i.bz, 10
  %i.cc = or disjoint i32 %i.bz, 48
  %i.cd = add nuw nsw i32 %i.bz, 87
  %.013.i44.i24 = select i1 %i.cb, i32 %i.cc, i32 %i.cd
  %i.ce = trunc i32 %.013.i44.i24 to i8
  %i.cf = getelementptr i8, ptr %0, i64 %indvars.iv.i41.i21
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !15
  %indvars.iv.next.i43.i23.1 = add nsw i64 %indvars.iv.i41.i21, -2
  %i.cg = trunc i64 %i.ca to i32
  %i.ch = and i32 %i.bm, %i.cg                    ; 3 uses
  %i.ci = lshr i64 %i.ca, %i.bn
  %i.cj = icmp samesign ult i32 %i.ch, 10
  %i.ck = or disjoint i32 %i.ch, 48
  %i.cl = add nuw nsw i32 %i.ch, 87
  %.013.i44.i24.1 = select i1 %i.cj, i32 %i.ck, i32 %i.cl
  %i.cm = trunc i32 %.013.i44.i24.1 to i8
  %i.cn = getelementptr i8, ptr %0, i64 %indvars.iv.i41.i21
  %i.co = getelementptr i8, ptr %i.cn, i64 -1
  store i8 %i.cm, ptr %i.co, align 1, !tbaa !15
  %i.cp = icmp sgt i64 %indvars.iv.i41.i21, 2
  br i1 %i.cp, label %.lr.ph.i.i20.new, label %u64toa_radix.exit28, !llvm.loop !1

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 41 ; 2 uses
  %i.cr = zext i32 %2 to i64                      ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.033.i9 = phi i64 [ %i.bc, %bb.l ], [ %i.cu, %bb.m ] ; 3 uses
  %.030.i10 = phi ptr [ %i.cq, %bb.l ], [ %i.cw, %bb.m ]
  %i.cs = urem i64 %.033.i9, %i.cr                ; 2 uses
  %i.ct = trunc nuw i64 %i.cs to i32
  %i.cu = udiv i64 %.033.i9, %i.cr
  %i.cv = icmp slt i32 %i.ct, 10
  %.0.v.i11 = select i1 %i.cv, i8 48, i8 87
  %9 = trunc i64 %i.cs to i8
  %10 = add i8 %.0.v.i11, %9
  %i.cw = getelementptr inbounds i8, ptr %.030.i10, i64 -1 ; 4 uses
  store i8 %10, ptr %i.cw, align 1, !tbaa !15
  %.not.i13 = icmp ult i64 %.033.i9, %i.cr
  br i1 %.not.i13, label %bb.n, label %bb.m, !llvm.loop !2

bb.n:                                             ; preds = %bb.m
  %i.cx = ptrtoint ptr %i.cq to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %i.cw, i64 %i.cz, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %u64toa_radix.exit28

u64toa_radix.exit28:                              ; preds = %.prol.loopexit, %.lr.ph.i.i20.new, %bb.j, %.split35.u64toa_bin_len.exit45_crit_edge.i25, %bb.n
  %.032.i14 = phi i64 [ %i.be, %bb.j ], [ %i.cz, %bb.n ], [ %.pre.i26, %.split35.u64toa_bin_len.exit45_crit_edge.i25 ], [ %i.bo, %.lr.ph.i.i20.new ], [ %i.bo, %.prol.loopexit ]
  %i.da = add i64 %.032.i14, 1
  br label %u64toa_radix.exit

u64toa_radix.exit:                                ; preds = %.prol.loopexit37, %.lr.ph.i.i.new, %bb.h, %.split35.u64toa_bin_len.exit45_crit_edge.i, %.split.i, %bb.c, %u64toa_radix.exit28
  %.0 = phi i64 [ %i.da, %u64toa_radix.exit28 ], [ %i.e, %bb.c ], [ %i.ba, %bb.h ], [ 1, %.split.i ], [ %.pre.i, %.split35.u64toa_bin_len.exit45_crit_edge.i ], [ %i.p, %.lr.ph.i.i.new ], [ %i.p, %.prol.loopexit37 ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 9, -2147483648) i32 @js_dtoa_max_len(double noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = and i32 %3, 3
  switch i32 %i.a, label %bb.c [
    i32 2, label %bb.i
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr i8, ptr @dtoa_max_digits_table, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -2
  %i.e = load i8, ptr %i.d, align 1, !tbaa !15
  %i.f = zext i8 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %2, %bb.a ]    ; 2 uses
  %i.g = and i32 %3, 12
  %i.h = icmp eq i32 %i.g, 8
  br i1 %i.h, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.i = bitcast double %0 to i64
  %i.j = lshr i64 %i.i, 52
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = and i32 %i.k, 2047                       ; 3 uses
  %i.m = icmp eq i32 %i.l, 2047
  br i1 %i.m, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.l, -1024                  ; 2 uses
  %i.o = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %1)
  %i.p = icmp samesign ult i32 %i.o, 2
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1, i1 true) ; 2 uses
  %i.r = icmp samesign ult i32 %i.l, 1024
  %.neg.i = add nuw nsw i32 %i.q, 65506
  %i.s = select i1 %i.r, i32 %.neg.i, i32 0
  %.012.i = add nsw i32 %i.s, %i.n
  %.lhs.trunc = trunc i32 %.012.i to i16
  %i.t = trunc nuw nsw i32 %i.q to i16
  %.rhs.trunc = xor i16 %i.t, 31
  %i.u = sdiv i16 %.lhs.trunc, %.rhs.trunc
  %.sext = sext i16 %i.u to i32
  br label %mul_log2_radix.exit

bb.g:                                             ; preds = %bb.e
  %i.v = sext i32 %1 to i64
  %i.w = getelementptr [4 x i8], ptr @mul_log2_radix_table, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !18
  %i.z = sext i32 %i.n to i64
  %i.aa = sext i32 %i.y to i64
  %i.ab = mul nsw i64 %i.aa, %i.z
  %i.ac = lshr i64 %i.ab, 24
  %i.ad = trunc i64 %i.ac to i32
  br label %mul_log2_radix.exit

mul_log2_radix.exit:                              ; preds = %bb.f, %bb.g
  %.0.i = phi i32 [ %.sext, %bb.f ], [ %i.ad, %bb.g ]
  %i.ae = tail call i32 @llvm.abs.i32(i32 %.0.i, i1 true)
  %i.af = add i32 %.0, 10
  %i.ag = add i32 %i.af, %i.ae
  br label %bb.o

bb.h:                                             ; preds = %bb.c
  %i.ah = add nsw i32 %.0, 8
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.ai = bitcast double %0 to i64
  %i.aj = lshr i64 %i.ai, 52
  %i.ak = trunc nuw nsw i64 %i.aj to i32
  %i.al = and i32 %i.ak, 2047                     ; 4 uses
  %i.am = icmp eq i32 %i.al, 2047
  br i1 %i.am, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = icmp samesign ult i32 %i.al, 1023
  br i1 %i.an, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = add nsw i32 %i.al, -1024                ; 2 uses
  %i.ap = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %1)
  %i.aq = icmp samesign ult i32 %i.ap, 2
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1, i1 true) ; 2 uses
  %i.as = icmp eq i32 %i.al, 1023
  %.neg.i28 = add nuw nsw i32 %i.ar, 65506
  %i.at = select i1 %i.as, i32 %.neg.i28, i32 0
  %.012.i29 = add nsw i32 %i.at, %i.ao
  %.lhs.trunc31 = trunc i32 %.012.i29 to i16
  %i.au = trunc nuw nsw i32 %i.ar to i16
  %.rhs.trunc32 = xor i16 %i.au, 31
  %i.av = sdiv i16 %.lhs.trunc31, %.rhs.trunc32
  %.sext33 = sext i16 %i.av to i32
  br label %mul_log2_radix.exit30

bb.m:                                             ; preds = %bb.k
  %i.aw = sext i32 %1 to i64
  %i.ax = getelementptr [4 x i8], ptr @mul_log2_radix_table, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 -8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !18
  %i.ba = sext i32 %i.ao to i64
  %i.bb = sext i32 %i.az to i64
  %i.bc = mul nsw i64 %i.bb, %i.ba
  %i.bd = lshr i64 %i.bc, 24
  %i.be = trunc i64 %i.bd to i32
  br label %mul_log2_radix.exit30

mul_log2_radix.exit30:                            ; preds = %bb.l, %bb.m
  %.0.i27 = phi i32 [ %.sext33, %bb.l ], [ %i.be, %bb.m ]
  %i.bf = add nsw i32 %.0.i27, 2
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %mul_log2_radix.exit30
  %.1 = phi i32 [ %i.bf, %mul_log2_radix.exit30 ], [ 1, %bb.j ]
  %i.bg = add nsw i32 %2, 3
  %i.bh = add nsw i32 %i.bg, %.1
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.d, %bb.n, %bb.h, %mul_log2_radix.exit
  %.2 = phi i32 [ %i.bh, %bb.n ], [ %i.ag, %mul_log2_radix.exit ], [ %i.ah, %bb.h ], [ 0, %bb.d ], [ 0, %bb.i ]
  %..i = tail call range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %.2, i32 9)
  ret i32 %..i
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i32 @js_dtoa(ptr noundef %0, double noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 3 uses
  %i.b = alloca [41 x i8], align 16               ; 3 uses
  %i.c = and i32 %4, 3                            ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 216 ; 4 uses
  %i.e = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %2, i1 true) ; 8 uses
  %i.f = ashr exact i32 %2, %i.e                  ; 6 uses
  %i.g = bitcast double %1 to i64                 ; 5 uses
  %i.h = lshr i64 %i.g, 52
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = and i32 %i.i, 2047                       ; 2 uses
  %i.k = and i64 %i.g, 4503599627370495           ; 5 uses
  switch i32 %i.j, label %bb.n [
    i32 2047, label %bb.b
    i32 0, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not239 = icmp sgt i64 %i.g, -1
  br i1 %.not239, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 45, ptr %0, align 1, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0209 = phi ptr [ %i.m, %bb.d ], [ %0, %bb.c ] ; 2 uses
  store i64 8751735898823355977, ptr %.0209, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.0209, i64 8
  br label %.loopexit

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %0, ptr noundef nonnull align 1 dereferenceable(3) @.str.1, i64 3, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3
  br label %.loopexit

bb.g:                                             ; preds = %bb.a
  %i.p = icmp eq i64 %i.k, 0
  br i1 %i.p, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %5, align 4, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !18
  switch i32 %i.c, label %bb.j [
    i32 0, label %bb.k
    i32 2, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.r = add nsw i32 %3, 1
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.0214 = phi i32 [ %3, %bb.j ], [ %i.r, %bb.i ], [ 1, %bb.h ] ; 2 uses
  %.not237 = icmp sgt i64 %i.g, -1
  %i.s = and i32 %4, 16
  %.not238 = icmp eq i32 %i.s, 0
  %or.cond = or i1 %.not237, %.not238
  br i1 %or.cond, label %mpb_cmp.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 45, ptr %0, align 1, !tbaa !15
  br label %mpb_cmp.exit

bb.m:                                             ; preds = %bb.g
  %i.u = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.k, i1 true) ; 2 uses
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = add nuw nsw i64 %i.u, 4294967285
  %i.x = sub nsw i32 12, %i.v
  %i.y = and i64 %i.w, 4294967295
  %i.z = shl i64 %i.k, %i.y
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.aa = or disjoint i64 %i.k, 4503599627370496
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.0224 = phi i64 [ %i.z, %bb.m ], [ %i.aa, %bb.n ] ; 9 uses
  %.0223 = phi i32 [ %i.x, %bb.m ], [ %i.j, %bb.n ] ; 7 uses
  %.not = icmp sgt i64 %i.g, -1
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 45, ptr %0, align 1, !tbaa !15
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1210 = phi ptr [ %i.ab, %bb.p ], [ %0, %bb.o ] ; 15 uses
  %i.ac = add nsw i32 %.0223, -1022
  %i.ad = icmp eq i32 %i.c, 0                     ; 2 uses
  %i.ae = add nsw i32 %.0223, -1023               ; 3 uses
  %i.af = icmp ult i32 %i.ae, 53
  %or.cond3 = select i1 %i.ad, i1 %i.af, i1 false
  br i1 %or.cond3, label %bb.r, label %bb.z

bb.r:                                             ; preds = %bb.q
  %i.ag = sub nuw nsw i32 1075, %.0223
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %notmask = shl nsw i64 -1, %i.ah
  %i.ai = xor i64 %notmask, -1
  %i.aj = and i64 %.0224, %i.ai
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = and i32 %4, 12
  %.not235 = icmp eq i32 %i.al, 4
  %or.cond240 = or i1 %.not235, %i.ak
  br i1 %or.cond240, label %bb.z, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.am = lshr i64 %.0224, %i.ah                  ; 7 uses
  %i.an = icmp eq i32 %2, 10
  br i1 %i.an, label %bb.t, label %bb.u, !prof !17

bb.t:                                             ; preds = %bb.s
  %i.ao = tail call i64 @u64toa(ptr noundef %.1210, i64 noundef %i.am)
  br label %u64toa_radix.exit

bb.u:                                             ; preds = %bb.s
  %i.ap = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.aq = icmp samesign ult i32 %i.ap, 2
  br i1 %i.aq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ar = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %2, i1 true) ; 2 uses
  %i.as = xor i32 %i.ar, 31                       ; 2 uses
  %i.at = icmp eq i64 %i.am, 0
  br i1 %i.at, label %.split.i, label %.split35.i

.split.i:                                         ; preds = %bb.v
  store i8 48, ptr %.1210, align 1, !tbaa !15
  br label %u64toa_radix.exit

.split35.i:                                       ; preds = %bb.v
  %i.au = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.am, i1 true)
  %6 = trunc nuw nsw i64 %i.au to i8
  %i.av = trunc nuw nsw i32 %i.as to i8           ; 3 uses
  %7 = sub nsw i8 %i.av, %6
  %.lhs.trunc.i = add nsw i8 %7, 63               ; 2 uses
  %i.aw = udiv i8 %.lhs.trunc.i, %i.av            ; 3 uses
  %i.ax = lshr i32 2147483647, %i.ar              ; 3 uses
  %.not46.i = icmp samesign ult i8 %.lhs.trunc.i, %i.av
  br i1 %.not46.i, label %.split35.u64toa_bin_len.exit45_crit_edge.i, label %.lr.ph.i.i

.split35.u64toa_bin_len.exit45_crit_edge.i:       ; preds = %.split35.i
  %.pre.i = zext nneg i8 %i.aw to i64
  br label %u64toa_radix.exit

.lr.ph.i.i:                                       ; preds = %.split35.i
  %i.ay = zext nneg i32 %i.as to i64              ; 3 uses
  %i.az = zext i8 %i.aw to i64                    ; 5 uses
  %xtraiter = and i64 %i.az, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i.i
  %indvars.iv.next.i43.i.prol = add nsw i64 %i.az, -1 ; 2 uses
  %i.ba = trunc i64 %i.am to i32
  %i.bb = and i32 %i.ax, %i.ba                    ; 3 uses
  %i.bc = lshr i64 %i.am, %i.ay
  %i.bd = icmp samesign ult i32 %i.bb, 10
  %i.be = or disjoint i32 %i.bb, 48
  %i.bf = add nuw nsw i32 %i.bb, 87
  %.013.i44.i.prol = select i1 %i.bd, i32 %i.be, i32 %i.bf
  %i.bg = trunc i32 %.013.i44.i.prol to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %.1210, i64 %indvars.iv.next.i43.i.prol
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !15
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i41.i.unr = phi i64 [ %i.az, %.lr.ph.i.i ], [ %indvars.iv.next.i43.i.prol, %.prol.loopexit.unr-lcssa ]
  %.01416.i42.i.unr = phi i64 [ %i.am, %.lr.ph.i.i ], [ %i.bc, %.prol.loopexit.unr-lcssa ]
  %i.bi = icmp eq i8 %i.aw, 1
  br i1 %i.bi, label %u64toa_radix.exit, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i.i.new
  %indvars.iv.i41.i = phi i64 [ %indvars.iv.next.i43.i.1, %.lr.ph.i.i.new ], [ %indvars.iv.i41.i.unr, %.prol.loopexit ] ; 3 uses
  %.01416.i42.i = phi i64 [ %i.bu, %.lr.ph.i.i.new ], [ %.01416.i42.i.unr, %.prol.loopexit ] ; 2 uses
  %i.bj = trunc i64 %.01416.i42.i to i32
  %i.bk = and i32 %i.ax, %i.bj                    ; 3 uses
  %i.bl = lshr i64 %.01416.i42.i, %i.ay           ; 2 uses
  %i.bm = icmp samesign ult i32 %i.bk, 10
  %i.bn = or disjoint i32 %i.bk, 48
  %i.bo = add nuw nsw i32 %i.bk, 87
  %.013.i44.i = select i1 %i.bm, i32 %i.bn, i32 %i.bo
  %i.bp = trunc i32 %.013.i44.i to i8
  %i.bq = getelementptr i8, ptr %.1210, i64 %indvars.iv.i41.i
  %i.br = getelementptr i8, ptr %i.bq, i64 -1
  store i8 %i.bp, ptr %i.br, align 1, !tbaa !15
  %indvars.iv.next.i43.i.1 = add nsw i64 %indvars.iv.i41.i, -2 ; 2 uses
  %i.bs = trunc i64 %i.bl to i32
  %i.bt = and i32 %i.ax, %i.bs                    ; 3 uses
  %i.bu = lshr i64 %i.bl, %i.ay
  %i.bv = icmp samesign ult i32 %i.bt, 10
  %i.bw = or disjoint i32 %i.bt, 48
  %i.bx = add nuw nsw i32 %i.bt, 87
  %.013.i44.i.1 = select i1 %i.bv, i32 %i.bw, i32 %i.bx
  %i.by = trunc i32 %.013.i44.i.1 to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %.1210, i64 %indvars.iv.next.i43.i.1
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !15
  %i.ca = icmp sgt i64 %indvars.iv.i41.i, 2
  br i1 %i.ca, label %.lr.ph.i.i.new, label %u64toa_radix.exit, !llvm.loop !1

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 41 ; 2 uses
  %i.cc = zext i32 %2 to i64                      ; 3 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %.033.i = phi i64 [ %i.am, %bb.w ], [ %i.cf, %bb.x ] ; 3 uses
  %.030.i = phi ptr [ %i.cb, %bb.w ], [ %i.ch, %bb.x ]
  %i.cd = urem i64 %.033.i, %i.cc                 ; 2 uses
  %i.ce = trunc nuw i64 %i.cd to i32
  %i.cf = udiv i64 %.033.i, %i.cc
  %i.cg = icmp slt i32 %i.ce, 10
  %.0.v.i = select i1 %i.cg, i8 48, i8 87
  %8 = trunc i64 %i.cd to i8
  %9 = add i8 %.0.v.i, %8
  %i.ch = getelementptr inbounds i8, ptr %.030.i, i64 -1 ; 4 uses
  store i8 %9, ptr %i.ch, align 1, !tbaa !15
  %.not.i = icmp ult i64 %.033.i, %i.cc
  br i1 %.not.i, label %bb.y, label %bb.x, !llvm.loop !2

bb.y:                                             ; preds = %bb.x
  %i.ci = ptrtoint ptr %i.cb to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.1210, ptr noundef nonnull align 1 dereferenceable(1) %i.ch, i64 %i.ck, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %u64toa_radix.exit

u64toa_radix.exit:                                ; preds = %.prol.loopexit, %.lr.ph.i.i.new, %bb.t, %.split.i, %.split35.u64toa_bin_len.exit45_crit_edge.i, %bb.y
  %.032.i = phi i64 [ %i.ao, %bb.t ], [ %i.ck, %bb.y ], [ 1, %.split.i ], [ %.pre.i, %.split35.u64toa_bin_len.exit45_crit_edge.i ], [ %i.az, %.lr.ph.i.i.new ], [ %i.az, %.prol.loopexit ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.1210, i64 %.032.i
  br label %.loopexit

bb.z:                                             ; preds = %bb.r, %bb.q
  %i.cm = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.cn = icmp samesign ult i32 %i.cm, 2
  br i1 %i.cn, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.co = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %2, i1 true) ; 2 uses
  %i.cp = icmp slt i32 %.0223, 1023
  %.neg.i = add nuw nsw i32 %i.co, 65506
  %i.cq = select i1 %i.cp, i32 %.neg.i, i32 0
  %.012.i = add nsw i32 %i.cq, %i.ae
  %.lhs.trunc = trunc i32 %.012.i to i16
  %i.cr = trunc nuw nsw i32 %i.co to i16
  %.rhs.trunc = xor i16 %i.cr, 31
  %i.cs = sdiv i16 %.lhs.trunc, %.rhs.trunc
  %.sext = sext i16 %i.cs to i32
  br label %mul_log2_radix.exit

bb.ab:                                            ; preds = %bb.z
  %i.ct = sext i32 %2 to i64
  %i.cu = getelementptr [4 x i8], ptr @mul_log2_radix_table, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 -8
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !18
  %i.cx = sext i32 %i.ae to i64
  %i.cy = sext i32 %i.cw to i64
  %i.cz = mul nsw i64 %i.cy, %i.cx
  %i.da = lshr i64 %i.cz, 24
  %i.db = trunc i64 %i.da to i32
  br label %mul_log2_radix.exit

mul_log2_radix.exit:                              ; preds = %bb.aa, %bb.ab
  %.0.i244 = phi i32 [ %.sext, %bb.aa ], [ %i.db, %bb.ab ] ; 2 uses
  %i.dc = add nsw i32 %.0.i244, 1                 ; 2 uses
  br i1 %i.ad, label %bb.ac, label %bb.as

bb.ac:                                            ; preds = %mul_log2_radix.exit
  %i.dd = sext i32 %2 to i64                      ; 4 uses
  %i.de = getelementptr i8, ptr @dtoa_max_digits_table, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 -2
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !15
  %i.dh = zext i8 %i.dg to i32
  %i.di = add nsw i32 %.0223, -1075               ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 8 uses
  %i.dk = icmp ult i64 %.0224, 4294967296
  %..i.i = select i1 %i.dk, i32 1, i32 2
  %i.dl = zext i32 %2 to i64                      ; 7 uses
  %i.dm = icmp eq i32 %2, 5
  %i.dn = icmp eq i32 %2, 10                      ; 2 uses
  %or.cond.i = or i1 %i.dm, %i.dn
  %i.do = mul nuw i64 %i.dl, %i.dl
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aq, %bb.ac
  %.1215 = phi i32 [ %i.dh, %bb.ac ], [ %i.gq, %bb.aq ] ; 12 uses
  %.0207 = phi i32 [ 0, %bb.ac ], [ %.0218, %bb.aq ]
  %.0205 = phi i32 [ 0, %bb.ac ], [ %.2216.lcssa, %bb.aq ] ; 2 uses
  %.0204 = phi i64 [ 0, %bb.ac ], [ %.0203.lcssa, %bb.aq ]
  switch i32 %.1215, label %bb.af [
    i32 0, label %pow_ui.exit
    i32 1, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad
  br label %pow_ui.exit

bb.af:                                            ; preds = %bb.ad
  %i.dp = icmp ult i32 %.1215, 18
  %or.cond3.i = and i1 %or.cond.i, %i.dp
  br i1 %or.cond3.i, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.dq = zext nneg i32 %.1215 to i64             ; 2 uses
  %i.dr = getelementptr [4 x i8], ptr @pow5_table, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 -4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !18
  %i.du = zext i32 %i.dt to i64                   ; 2 uses
  %i.dv = icmp samesign ugt i32 %.1215, 13
  br i1 %i.dv, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dw = getelementptr i8, ptr @pow5h_table, i64 %i.dq
  %i.dx = getelementptr i8, ptr %i.dw, i64 -14
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !15
  %i.dz = zext i8 %i.dy to i64
  %i.ea = shl nuw nsw i64 %i.dz, 32
  %i.eb = or disjoint i64 %i.ea, %i.du
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0.i246.a = phi i64 [ %i.eb, %bb.ah ], [ %i.du, %bb.ag ]
  %narrow.i = select i1 %i.dn, i32 %.1215, i32 0
  %i.ec = zext nneg i32 %narrow.i to i64
  %.1.i = shl nuw nsw i64 %.0.i246.a, %i.ec
  br label %pow_ui.exit

bb.aj:                                            ; preds = %bb.af
  %i.ed = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %.1215, i1 true) ; 4 uses
  %i.ee = sub nsw i32 30, %i.ed                   ; 2 uses
  %i.ef = and i32 %i.ed, 1
  %lcmp.mod330.not.not = icmp eq i32 %i.ef, 0
  br i1 %lcmp.mod330.not.not, label %.prol.loopexit328.unr-lcssa, label %.prol.loopexit328

.prol.loopexit328.unr-lcssa:                      ; preds = %bb.aj
  %i.eg = shl nuw nsw i32 1, %i.ee
  %i.eh = and i32 %i.eg, %.1215
  %.not.i245.prol = icmp eq i32 %i.eh, 0
  %i.ei = select i1 %.not.i245.prol, i64 1, i64 %i.dl
  %spec.select.i.prol = mul i64 %i.do, %i.ei      ; 2 uses
  %i.ej = sub nsw i32 29, %i.ed
  br label %.prol.loopexit328

.prol.loopexit328:                                ; preds = %.prol.loopexit328.unr-lcssa, %bb.aj
  %spec.select.i.lcssa.unr = phi i64 [ poison, %bb.aj ], [ %spec.select.i.prol, %.prol.loopexit328.unr-lcssa ]
  %.234.i.unr = phi i64 [ %i.dl, %bb.aj ], [ %spec.select.i.prol, %.prol.loopexit328.unr-lcssa ]
  %.03033.i.unr = phi i32 [ %i.ee, %bb.aj ], [ %i.ej, %.prol.loopexit328.unr-lcssa ]
  %i.ek = icmp eq i32 %i.ed, 30
  br i1 %i.ek, label %pow_ui.exit, label %.new

.new:                                             ; preds = %.prol.loopexit328, %.new
  %.234.i = phi i64 [ %spec.select.i.1, %.new ], [ %.234.i.unr, %.prol.loopexit328 ] ; 2 uses
  %.03033.i = phi i32 [ %i.eu, %.new ], [ %.03033.i.unr, %.prol.loopexit328 ] ; 3 uses
  %i.el = mul i64 %.234.i, %.234.i
  %i.em = shl nuw i32 1, %.03033.i
  %i.en = and i32 %i.em, %.1215
  %.not.i245 = icmp eq i32 %i.en, 0
  %i.eo = select i1 %.not.i245, i64 1, i64 %i.dl
  %spec.select.i = mul i64 %i.el, %i.eo           ; 2 uses
  %i.ep = add nsw i32 %.03033.i, -1               ; 2 uses
  %i.eq = mul i64 %spec.select.i, %spec.select.i
  %i.er = shl nuw i32 1, %i.ep
  %i.es = and i32 %i.er, %.1215
  %.not.i245.1 = icmp eq i32 %i.es, 0
  %i.et = select i1 %.not.i245.1, i64 1, i64 %i.dl
  %spec.select.i.1 = mul i64 %i.eq, %i.et         ; 2 uses
  %i.eu = add nsw i32 %.03033.i, -2
  %.not36.i.1 = icmp eq i32 %i.ep, 0
  br i1 %.not36.i.1, label %pow_ui.exit, label %.new, !llvm.loop !3

pow_ui.exit:                                      ; preds = %.prol.loopexit328, %.new, %bb.ad, %bb.ae, %bb.ai
  %.031.i = phi i64 [ 1, %bb.ad ], [ %i.dl, %bb.ae ], [ %.1.i, %bb.ai ], [ %spec.select.i.lcssa.unr, %.prol.loopexit328 ], [ %spec.select.i.1, %.new ]
  br label %bb.ak

bb.ak:                                            ; preds = %mpb_get_u64.exit, %pow_ui.exit
  %.0218 = phi i32 [ %i.dc, %pow_ui.exit ], [ %i.fe, %mpb_get_u64.exit ] ; 5 uses
  %i.ev = sub nsw i32 %.1215, %.0218
  store i64 %.0224, ptr %i.dj, align 4
  store i32 %..i.i, ptr %5, align 4, !tbaa !18
  %i.ew = tail call fastcc i32 @mul_pow(ptr noundef nonnull %5, i32 noundef %i.f, i32 noundef range(i32 0, 32) %i.e, i32 noundef %i.ev, i1 noundef zeroext true, i32 noundef range(i32 -2147483648, 2147482573) %i.di)
  %i.ex = sub nsw i32 %i.ew, %i.di
  tail call fastcc void @mpb_shr_round(ptr noundef nonnull %5, i32 noundef %i.ex, i32 noundef 0)
  %i.ey = load i32, ptr %5, align 4, !tbaa !18
  %i.ez = icmp eq i32 %i.ey, 1
  br i1 %i.ez, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fa = load i32, ptr %i.dj, align 4, !tbaa !18
  %i.fb = zext i32 %i.fa to i64
  br label %mpb_get_u64.exit

bb.am:                                            ; preds = %bb.ak
  %i.fc = load i64, ptr %i.dj, align 4
  br label %mpb_get_u64.exit

mpb_get_u64.exit:                                 ; preds = %bb.al, %bb.am
  %.0.i247 = phi i64 [ %i.fb, %bb.al ], [ %i.fc, %bb.am ] ; 4 uses
  %i.fd = icmp ult i64 %.0.i247, %.031.i
  %i.fe = add nsw i32 %.0218, 1
  br i1 %i.fd, label %.preheader, label %bb.ak

.preheader:                                       ; preds = %mpb_get_u64.exit
  %i.ff = urem i64 %.0.i247, %i.dd
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.0203269 = phi i64 [ %i.fh, %.lr.ph ], [ %.0.i247, %.preheader ]
  %.2216268 = phi i32 [ %i.fi, %.lr.ph ], [ %.1215, %.preheader ]
  %i.fh = udiv i64 %.0203269, %i.dd               ; 3 uses
  %i.fi = add nsw i32 %.2216268, -1               ; 2 uses
  %i.fj = urem i64 %i.fh, %i.dd
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %.lr.ph, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
end_hunk_0
begin_hunk_1_@output_digits:bb.a
  %i.j = lshr i32 2147483647, %i.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = mul nuw nsw i32 %i.d, %i.i
  br label %bb.d

.preheader:                                       ; preds = %bb.a
  %.not5268 = icmp eq i32 %3, 0
  br i1 %.not5268, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr @radix_base_table, i64 %i.f ; 2 uses
  %i.o = icmp eq i32 %2, 10
  br i1 %i.o, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %limb_to_a.exit.us
  %.169.us = phi i32 [ %i.p, %limb_to_a.exit.us ], [ %3, %.lr.ph ] ; 2 uses
  %..i54.us = tail call noundef i32 @llvm.smin.i32(i32 %.169.us, i32 %i.i) ; 2 uses
  %i.p = sub nsw i32 %.169.us, %..i54.us          ; 3 uses
  %i.q = load i32, ptr %1, align 4, !tbaa !18     ; 3 uses
  %.013.i55.us = add i32 %i.q, -1                 ; 2 uses
  %i.r = icmp sgt i32 %.013.i55.us, -1
  br i1 %i.r, label %.lr.ph.i56.us, label %mpb_renorm.exit.us

.lr.ph.i56.us:                                    ; preds = %.lr.ph.split.us
  %i.s = load i32, ptr %i.n, align 4, !tbaa !18
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = zext nneg i32 %.013.i55.us to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i56.us
  %indvars.iv.i57.us = phi i64 [ %i.u, %.lr.ph.i56.us ], [ %indvars.iv.next.i58.us, %bb.b ] ; 3 uses
  %.01214.i.us = phi i64 [ 0, %.lr.ph.i56.us ], [ %i.ac, %bb.b ]
  %i.v = shl nuw i64 %.01214.i.us, 32
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i57.us ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !18
  %i.y = zext i32 %i.x to i64
  %i.z = or disjoint i64 %i.v, %i.y               ; 2 uses
  %i.aa = udiv i64 %i.z, %i.t
  %i.ab = trunc i64 %i.aa to i32
  store i32 %i.ab, ptr %i.w, align 4, !tbaa !18
  %i.ac = urem i64 %i.z, %i.t                     ; 2 uses
  %indvars.iv.next.i58.us = add nsw i64 %indvars.iv.i57.us, -1
  %.not.i.us = icmp eq i64 %indvars.iv.i57.us, 0
  br i1 %.not.i.us, label %mp_div1.exit.us, label %bb.b, !llvm.loop !21

mp_div1.exit.us:                                  ; preds = %bb.b
  %i.ad = trunc nuw i64 %i.ac to i32              ; 3 uses
  %i.ae = icmp sgt i32 %i.q, 1
  br i1 %i.ae, label %.lr.ph.i59.us, label %mpb_renorm.exit.us

.lr.ph.i59.us:                                    ; preds = %mp_div1.exit.us, %bb.c
  %i.af = phi i32 [ %i.ak, %bb.c ], [ %i.q, %mp_div1.exit.us ] ; 3 uses
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr [4 x i8], ptr %1, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !18
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.c, label %mpb_renorm.exit.us

bb.c:                                             ; preds = %.lr.ph.i59.us
  %i.ak = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ak, ptr %1, align 4, !tbaa !18
  %i.al = icmp sgt i32 %i.af, 2
  br i1 %i.al, label %.lr.ph.i59.us, label %mpb_renorm.exit.us, !llvm.loop !4

mpb_renorm.exit.us:                               ; preds = %.lr.ph.i59.us, %bb.c, %mp_div1.exit.us, %.lr.ph.split.us
  %.012.lcssa.i64.us = phi i32 [ 0, %.lr.ph.split.us ], [ %i.ad, %mp_div1.exit.us ], [ %i.ad, %bb.c ], [ %i.ad, %.lr.ph.i59.us ]
  %i.am = zext nneg i32 %i.p to i64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.am
  %.08.i.i.us = add i32 %..i54.us, -1             ; 2 uses
  %i.ao = icmp sgt i32 %.08.i.i.us, -1
  br i1 %i.ao, label %.lr.ph.preheader.i.i.us, label %limb_to_a.exit.us

.lr.ph.preheader.i.i.us:                          ; preds = %mpb_renorm.exit.us
  %i.ap = zext nneg i32 %.08.i.i.us to i64
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.us, %.lr.ph.preheader.i.i.us
  %indvars.iv.i.i.us = phi i64 [ %i.ap, %.lr.ph.preheader.i.i.us ], [ %indvars.iv.next.i.i.us, %.lr.ph.i.i.us ] ; 3 uses
  %.079.i.i.us = phi i32 [ %.012.lcssa.i64.us, %.lr.ph.preheader.i.i.us ], [ %i.ar, %.lr.ph.i.i.us ] ; 2 uses
  %i.aq = urem i32 %.079.i.i.us, 10
  %i.ar = udiv i32 %.079.i.i.us, 10
  %i.as = trunc nuw nsw i32 %i.aq to i8
  %i.at = or disjoint i8 %i.as, 48
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv.i.i.us
  store i8 %i.at, ptr %i.au, align 1, !tbaa !15
  %indvars.iv.next.i.i.us = add nsw i64 %indvars.iv.i.i.us, -1
  %.not.i.i.us = icmp eq i64 %indvars.iv.i.i.us, 0
  br i1 %.not.i.i.us, label %limb_to_a.exit.us, label %.lr.ph.i.i.us, !llvm.loop !22

limb_to_a.exit.us:                                ; preds = %.lr.ph.i.i.us, %mpb_renorm.exit.us
  %.not52.us = icmp eq i32 %i.p, 0
  br i1 %.not52.us, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !23

bb.d:                                             ; preds = %.preheader66, %bb.f
  %.047 = phi i32 [ %i.av, %bb.f ], [ %3, %.preheader66 ] ; 2 uses
  %..i = tail call noundef i32 @llvm.smin.i32(i32 %.047, i32 %i.i) ; 3 uses
  %i.av = sub nsw i32 %.047, %..i                 ; 3 uses
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.aw
  %i.ay = icmp sgt i32 %..i, 0
  br i1 %i.ay, label %.lr.ph.i, label %u64toa_bin_len.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.az = load i32, ptr %i.k, align 4, !tbaa !18
  %i.ba = zext nneg i32 %..i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ba, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %.01416.i = phi i32 [ %i.az, %.lr.ph.i ], [ %i.bc, %bb.e ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.bb = and i32 %.01416.i, %i.j                 ; 3 uses
  %i.bc = lshr i32 %.01416.i, %i.d
  %i.bd = icmp samesign ult i32 %i.bb, 10
  %i.be = or disjoint i32 %i.bb, 48
  %i.bf = add nuw nsw i32 %i.bb, 87
  %.013.i = select i1 %i.bd, i32 %i.be, i32 %i.bf
  %i.bg = trunc i32 %.013.i to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv.next.i
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !15
  %i.bi = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.bi, label %bb.e, label %u64toa_bin_len.exit, !llvm.loop !1

u64toa_bin_len.exit:                              ; preds = %bb.e, %bb.d
  %i.bj = icmp eq i32 %i.av, 0
  br i1 %i.bj, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %u64toa_bin_len.exit
  tail call fastcc void @mpb_shr_round(ptr noundef nonnull %1, i32 noundef %i.l, i32 noundef 2)
  br label %bb.d

.lr.ph.split:                                     ; preds = %.lr.ph, %limb_to_a.exit
  %.169 = phi i32 [ %i.bk, %limb_to_a.exit ], [ %3, %.lr.ph ] ; 2 uses
  %..i54 = tail call noundef i32 @llvm.smin.i32(i32 %.169, i32 %i.i) ; 3 uses
  %i.bk = sub nsw i32 %.169, %..i54               ; 3 uses
  %i.bl = load i32, ptr %1, align 4, !tbaa !18    ; 3 uses
  %.013.i55 = add i32 %i.bl, -1                   ; 2 uses
  %i.bm = icmp sgt i32 %.013.i55, -1
  br i1 %i.bm, label %.lr.ph.i56, label %mpb_renorm.exit

.lr.ph.i56:                                       ; preds = %.lr.ph.split
  %i.bn = load i32, ptr %i.n, align 4, !tbaa !18
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %i.bp = zext nneg i32 %.013.i55 to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i56
  %indvars.iv.i57 = phi i64 [ %i.bp, %.lr.ph.i56 ], [ %indvars.iv.next.i58, %bb.g ] ; 3 uses
  %.01214.i = phi i64 [ 0, %.lr.ph.i56 ], [ %i.bx, %bb.g ]
  %i.bq = shl nuw i64 %.01214.i, 32
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i57 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !18
  %i.bt = zext i32 %i.bs to i64
  %i.bu = or disjoint i64 %i.bq, %i.bt            ; 2 uses
  %i.bv = udiv i64 %i.bu, %i.bo
  %i.bw = trunc i64 %i.bv to i32
  store i32 %i.bw, ptr %i.br, align 4, !tbaa !18
  %i.bx = urem i64 %i.bu, %i.bo                   ; 2 uses
  %indvars.iv.next.i58 = add nsw i64 %indvars.iv.i57, -1
  %.not.i = icmp eq i64 %indvars.iv.i57, 0
  br i1 %.not.i, label %mp_div1.exit, label %bb.g, !llvm.loop !21

mp_div1.exit:                                     ; preds = %bb.g
  %i.by = trunc nuw i64 %i.bx to i32              ; 3 uses
  %i.bz = icmp sgt i32 %i.bl, 1
  br i1 %i.bz, label %.lr.ph.i59, label %mpb_renorm.exit

.lr.ph.i59:                                       ; preds = %mp_div1.exit, %bb.h
  %i.ca = phi i32 [ %i.cf, %bb.h ], [ %i.bl, %mp_div1.exit ] ; 3 uses
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr [4 x i8], ptr %1, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !18
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.h, label %mpb_renorm.exit

bb.h:                                             ; preds = %.lr.ph.i59
  %i.cf = add nsw i32 %i.ca, -1                   ; 2 uses
  store i32 %i.cf, ptr %1, align 4, !tbaa !18
  %i.cg = icmp sgt i32 %i.ca, 2
  br i1 %i.cg, label %.lr.ph.i59, label %mpb_renorm.exit, !llvm.loop !4

mpb_renorm.exit:                                  ; preds = %.lr.ph.i59, %bb.h, %.lr.ph.split, %mp_div1.exit
  %.012.lcssa.i64 = phi i32 [ 0, %.lr.ph.split ], [ %i.by, %mp_div1.exit ], [ %i.by, %bb.h ], [ %i.by, %.lr.ph.i59 ]
  %i.ch = zext nneg i32 %i.bk to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 %i.ch
  %i.cj = icmp sgt i32 %..i54, 0
  br i1 %i.cj, label %.lr.ph.preheader.i, label %limb_to_a.exit

.lr.ph.preheader.i:                               ; preds = %mpb_renorm.exit
  %i.ck = zext nneg i32 %..i54 to i64
  br label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %.lr.ph.i60, %.lr.ph.preheader.i
  %indvars.iv.i61 = phi i64 [ %i.ck, %.lr.ph.preheader.i ], [ %indvars.iv.next.i62, %.lr.ph.i60 ] ; 2 uses
  %.01721.i = phi i32 [ %.012.lcssa.i64, %.lr.ph.preheader.i ], [ %i.cm, %.lr.ph.i60 ] ; 2 uses
  %indvars.iv.next.i62 = add nsw i64 %indvars.iv.i61, -1 ; 2 uses
  %i.cl = urem i32 %.01721.i, %2                  ; 2 uses
  %i.cm = udiv i32 %.01721.i, %2
  %i.cn = icmp slt i32 %i.cl, 10
  %.016.v.i = select i1 %i.cn, i8 48, i8 87
  %5 = trunc i32 %i.cl to i8
  %6 = add i8 %.016.v.i, %5
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 %indvars.iv.next.i62
  store i8 %6, ptr %i.co, align 1, !tbaa !15
  %i.cp = icmp samesign ugt i64 %indvars.iv.i61, 1
  br i1 %i.cp, label %.lr.ph.i60, label %limb_to_a.exit, !llvm.loop !24

limb_to_a.exit:                                   ; preds = %.lr.ph.i60, %mpb_renorm.exit
  %.not52 = icmp eq i32 %i.bk, 0
  br i1 %.not52, label %.loopexit, label %.lr.ph.split, !llvm.loop !23

.loopexit:                                        ; preds = %u64toa_bin_len.exit, %limb_to_a.exit, %limb_to_a.exit.us, %.preheader
  %.not53 = icmp eq i32 %4, %3
  br i1 %.not53, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.cq = sext i32 %4 to i64
  %i.cr = getelementptr inbounds i8, ptr %0, i64 %i.cq ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.ct = sub nsw i32 %3, %4
  %i.cu = sext i32 %i.ct to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cs, ptr align 1 %i.cr, i64 %i.cu, i1 false)
  store i8 46, ptr %i.cr, align 1, !tbaa !15
  %i.cv = add nsw i32 %3, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit
  %.0 = phi i32 [ %i.cv, %bb.i ], [ %3, %.loopexit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @mul_pow(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef range(i32 0, 32) %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef range(i32 -2147483648, 2147482573) %5) unnamed_addr #0 {
bb.a:
  %i.a = sub nsw i32 0, %3                        ; 2 uses
  %i.b = mul nsw i32 %2, %i.a                     ; 3 uses
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr i8, ptr @digits_per_limb_table, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -2
  %i.f = load i8, ptr %i.e, align 1, !tbaa !15
  %i.g = zext i8 %i.f to i32                      ; 4 uses
  %i.h = icmp sgt i32 %3, -1
  br i1 %i.h, label %.preheader, label %bb.n

.preheader:                                       ; preds = %bb.b
  %.not7498 = icmp eq i32 %3, 0
  br i1 %.not7498, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = zext i32 %1 to i64                       ; 7 uses
  %i.j = icmp eq i32 %1, 5
  %i.k = icmp eq i32 %1, 10                       ; 2 uses
  %or.cond.i = or i1 %i.j, %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.m = mul nuw i64 %i.i, %i.i
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %mp_mul1.exit.thread
  %.060101 = phi i32 [ 0, %.lr.ph ], [ %.161, %mp_mul1.exit.thread ]
  %.062100 = phi i32 [ 0, %.lr.ph ], [ %.163, %mp_mul1.exit.thread ] ; 2 uses
  %.06599 = phi i32 [ %3, %.lr.ph ], [ %i.bx, %mp_mul1.exit.thread ] ; 2 uses
  %..i = tail call noundef i32 @llvm.smin.i32(i32 %.06599, i32 %i.g) ; 12 uses
  %.not75 = icmp eq i32 %..i, %.062100
  br i1 %.not75, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %trunc = trunc nuw i32 %..i to i8
  switch i8 %trunc, label %bb.f [
    i8 0, label %pow_ui.exit
    i8 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %pow_ui.exit

bb.f:                                             ; preds = %bb.d
  %i.n = icmp samesign ult i32 %..i, 18
  %or.cond3.i = and i1 %or.cond.i, %i.n
  br i1 %or.cond3.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.o = zext nneg i32 %..i to i64                ; 2 uses
  %i.p = getelementptr [4 x i8], ptr @pow5_table, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !18
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = icmp samesign ugt i32 %..i, 13
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr i8, ptr @pow5h_table, i64 %i.o
  %i.v = getelementptr i8, ptr %i.u, i64 -14
  %i.w = load i8, ptr %i.v, align 1, !tbaa !15
  %i.x = zext i8 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 32
  %i.z = or disjoint i64 %i.y, %i.s
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i = phi i64 [ %i.z, %bb.h ], [ %i.s, %bb.g ]
  %narrow.i = select i1 %i.k, i32 %..i, i32 0
  %i.aa = zext nneg i32 %narrow.i to i64
  %.1.i = shl nuw nsw i64 %.0.i, %i.aa
  br label %pow_ui.exit

bb.j:                                             ; preds = %bb.f
  %i.ab = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %..i, i1 true) ; 4 uses
  %i.ac = sub nsw i32 30, %i.ab                   ; 2 uses
  %i.ad = and i32 %i.ab, 1
  %lcmp.mod116.not.not = icmp eq i32 %i.ad, 0
  br i1 %lcmp.mod116.not.not, label %.prol.loopexit113.unr-lcssa, label %.prol.loopexit113

.prol.loopexit113.unr-lcssa:                      ; preds = %bb.j
  %i.ae = shl nuw nsw i32 1, %i.ac
  %i.af = and i32 %i.ae, %..i
  %.not.i.prol = icmp eq i32 %i.af, 0
  %i.ag = select i1 %.not.i.prol, i64 1, i64 %i.i
  %spec.select.i.prol = mul i64 %i.m, %i.ag       ; 2 uses
  %i.ah = sub nsw i32 29, %i.ab
  br label %.prol.loopexit113

.prol.loopexit113:                                ; preds = %.prol.loopexit113.unr-lcssa, %bb.j
  %spec.select.i.lcssa.unr = phi i64 [ poison, %bb.j ], [ %spec.select.i.prol, %.prol.loopexit113.unr-lcssa ]
  %.234.i.unr = phi i64 [ %i.i, %bb.j ], [ %spec.select.i.prol, %.prol.loopexit113.unr-lcssa ]
  %.03033.i.unr = phi i32 [ %i.ac, %bb.j ], [ %i.ah, %.prol.loopexit113.unr-lcssa ]
  %i.ai = icmp eq i32 %i.ab, 30
  br i1 %i.ai, label %pow_ui.exit, label %.new114

.new114:                                          ; preds = %.prol.loopexit113, %.new114
  %.234.i = phi i64 [ %spec.select.i.1, %.new114 ], [ %.234.i.unr, %.prol.loopexit113 ] ; 2 uses
  %.03033.i = phi i32 [ %i.as, %.new114 ], [ %.03033.i.unr, %.prol.loopexit113 ] ; 3 uses
  %i.aj = mul i64 %.234.i, %.234.i
  %i.ak = shl nuw i32 1, %.03033.i
  %i.al = and i32 %i.ak, %..i
  %.not.i = icmp eq i32 %i.al, 0
  %i.am = select i1 %.not.i, i64 1, i64 %i.i
  %spec.select.i = mul i64 %i.aj, %i.am           ; 2 uses
  %i.an = add nsw i32 %.03033.i, -1               ; 2 uses
  %i.ao = mul i64 %spec.select.i, %spec.select.i
  %i.ap = shl nuw i32 1, %i.an
  %i.aq = and i32 %i.ap, %..i
  %.not.i.1 = icmp eq i32 %i.aq, 0
  %i.ar = select i1 %.not.i.1, i64 1, i64 %i.i
  %spec.select.i.1 = mul i64 %i.ao, %i.ar         ; 2 uses
  %i.as = add nsw i32 %.03033.i, -2
  %.not36.i.1 = icmp eq i32 %i.an, 0
  br i1 %.not36.i.1, label %pow_ui.exit, label %.new114, !llvm.loop !3

pow_ui.exit:                                      ; preds = %.prol.loopexit113, %.new114, %bb.d, %bb.e, %bb.i
  %.031.i = phi i64 [ 1, %bb.d ], [ %i.i, %bb.e ], [ %.1.i, %bb.i ], [ %spec.select.i.lcssa.unr, %.prol.loopexit113 ], [ %spec.select.i.1, %.new114 ]
  %i.at = trunc i64 %.031.i to i32
  br label %bb.k

bb.k:                                             ; preds = %pow_ui.exit, %bb.c
  %.163 = phi i32 [ %..i, %pow_ui.exit ], [ %.062100, %bb.c ]
  %.161 = phi i32 [ %i.at, %pow_ui.exit ], [ %.060101, %bb.c ] ; 2 uses
  %i.au = load i32, ptr %0, align 4, !tbaa !18    ; 6 uses
  %.not.i77 = icmp eq i32 %i.au, 0
  br i1 %.not.i77, label %mp_mul1.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.av = zext i32 %.161 to i64                   ; 3 uses
  %wide.trip.count.i = zext i32 %i.au to i64      ; 2 uses
  %xtraiter117 = and i64 %wide.trip.count.i, 1
  %i.aw = icmp eq i32 %i.au, 1
  br i1 %i.aw, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.l ] ; 3 uses
  %.01112.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.bl, %bb.l ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.l ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !18
  %i.az = zext i32 %i.ay to i64
  %i.ba = mul nuw i64 %i.az, %i.av
  %i.bb = add nuw i64 %i.ba, %.01112.i            ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  store i32 %i.bc, ptr %i.ax, align 4, !tbaa !18
  %i.bd = lshr i64 %i.bb, 32
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !18
  %i.bh = zext i32 %i.bg to i64
  %i.bi = mul nuw i64 %i.bh, %i.av
  %i.bj = add nuw i64 %i.bi, %i.bd                ; 2 uses
  %i.bk = trunc i64 %i.bj to i32
  store i32 %i.bk, ptr %i.bf, align 4, !tbaa !18
  %i.bl = lshr i64 %i.bj, 32                      ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %mp_mul1.exit.unr-lcssa, label %bb.l, !llvm.loop !5

end_hunk_1
