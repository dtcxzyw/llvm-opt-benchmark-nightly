Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/dtoa?download=true
inline.NumInlined: 95
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@u64toa:bb.a
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
  store i8 49, ptr %0, align 1, !tbaa !8
  %.urem = add nsw i8 %i.r, -10
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.e
  %.026 = phi ptr [ %i.u, %bb.f ], [ %0, %bb.e ]  ; 8 uses
  %.0 = phi i8 [ %.urem, %bb.f ], [ %i.r, %bb.e ]
  %i.v = add nuw nsw i8 %.0, 48
  %i.w = getelementptr inbounds nuw i8, ptr %.026, i64 1
  store i8 %i.v, ptr %.026, align 1, !tbaa !8
  %i.x = trunc nuw nsw i64 %i.s to i32            ; 6 uses
  %i.y = urem i32 %i.x, 10
  %i.z = trunc nuw nsw i32 %i.y to i8
  %i.aa = or disjoint i8 %i.z, 48
  %i.ab = getelementptr inbounds nuw i8, ptr %.026, i64 9
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !8
  %i.ac = udiv i32 %i.x, 100000
  %i.ad = getelementptr inbounds nuw i8, ptr %.026, i64 5
  %i.ae = insertelement <4 x i32> poison, i32 %i.x, i64 0
  %i.af = shufflevector <4 x i32> %i.ae, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ag = udiv <4 x i32> %i.af, <i32 10000, i32 1000, i32 100, i32 10>
  %i.ah = urem <4 x i32> %i.ag, splat (i32 10)
  %i.ai = trunc nuw nsw <4 x i32> %i.ah to <4 x i8>
  %i.aj = or disjoint <4 x i8> %i.ai, splat (i8 48)
  store <4 x i8> %i.aj, ptr %i.ad, align 1, !tbaa !8
  %.lhs.trunc = trunc nuw nsw i32 %i.ac to i16
  %i.ak = urem i16 %.lhs.trunc, 10
  %i.al = udiv i32 %i.x, 1000000
  %i.am = trunc nuw nsw i16 %i.ak to i8
  %i.an = or disjoint i8 %i.am, 48
  %i.ao = getelementptr inbounds nuw i8, ptr %.026, i64 4
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !8
  %.lhs.trunc49 = trunc nuw nsw i32 %i.al to i16
  %i.ap = urem i16 %.lhs.trunc49, 10
  %i.aq = udiv i32 %i.x, 10000000
  %i.ar = trunc nuw nsw i16 %i.ap to i8
  %i.as = or disjoint i8 %i.ar, 48
  %i.at = getelementptr inbounds nuw i8, ptr %.026, i64 3
  store i8 %i.as, ptr %i.at, align 1, !tbaa !8
  %.lhs.trunc51 = trunc nuw nsw i32 %i.aq to i8
  %i.au = urem i8 %.lhs.trunc51, 10
  %i.av = udiv i32 %i.x, 100000000
  %i.aw = or disjoint i8 %i.au, 48
  %i.ax = getelementptr inbounds nuw i8, ptr %.026, i64 2
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !8
  %i.ay = trunc nuw nsw i32 %i.av to i8
  %i.az = or disjoint i8 %i.ay, 48
  store i8 %i.az, ptr %i.w, align 1, !tbaa !8
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
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !8
  %i.bh = udiv i32 %.08.i35, 10
  %.not.i37 = icmp ult i32 %.08.i35, 10
  br i1 %.not.i37, label %u32toa.exit38, label %bb.h, !llvm.loop !9

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
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !8
  %i.br = udiv i32 %i.bm, 100000
  %i.bs = getelementptr inbounds nuw i8, ptr %.1, i64 4
  %i.bt = insertelement <4 x i32> poison, i32 %i.bm, i64 0
  %i.bu = shufflevector <4 x i32> %i.bt, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bv = udiv <4 x i32> %i.bu, <i32 10000, i32 1000, i32 100, i32 10>
  %i.bw = urem <4 x i32> %i.bv, splat (i32 10)
  %i.bx = trunc nuw nsw <4 x i32> %i.bw to <4 x i8>
  %i.by = or disjoint <4 x i8> %i.bx, splat (i8 48)
  store <4 x i8> %i.by, ptr %i.bs, align 1, !tbaa !8
  %.lhs.trunc53 = trunc nuw nsw i32 %i.br to i16
  %i.bz = urem i16 %.lhs.trunc53, 10
  %i.ca = udiv i32 %i.bm, 1000000
  %i.cb = trunc nuw nsw i16 %i.bz to i8
  %i.cc = or disjoint i8 %i.cb, 48
  %i.cd = getelementptr inbounds nuw i8, ptr %.1, i64 3
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !8
  %.lhs.trunc55 = trunc nuw nsw i32 %i.ca to i16
  %i.ce = urem i16 %.lhs.trunc55, 10
  %i.cf = udiv i32 %i.bm, 10000000
  %i.cg = trunc nuw nsw i16 %i.ce to i8
  %i.ch = or disjoint i8 %i.cg, 48
  %i.ci = getelementptr inbounds nuw i8, ptr %.1, i64 2
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !8
  %.lhs.trunc57 = trunc nuw nsw i32 %i.cf to i8
  %i.cj = urem i8 %.lhs.trunc57, 10
  %i.ck = udiv i32 %i.bm, 100000000
  %i.cl = or disjoint i8 %i.cj, 48
  %i.cm = getelementptr inbounds nuw i8, ptr %.1, i64 1
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !8
  %i.cn = trunc nuw nsw i32 %i.ck to i8
  %i.co = or disjoint i8 %i.cn, 48
  store i8 %i.co, ptr %.1, align 1, !tbaa !8
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
  store i8 45, ptr %0, align 1, !tbaa !8
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
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @u64toa(ptr noundef %0, i64 noundef %1)
  br label %u64toa_bin_len.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.e = icmp samesign ult i32 %i.d, 2
  br i1 %i.e, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %2, i1 true) ; 2 uses
  %i.g = xor i32 %i.f, 31                         ; 3 uses
  %i.h = icmp eq i64 %1, 0
  br i1 %i.h, label %.split, label %.split35

.split:                                           ; preds = %bb.d
  store i8 48, ptr %0, align 1, !tbaa !8
  br label %u64toa_bin_len.exit

.split35:                                         ; preds = %bb.d
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true)
  %i.j = trunc nuw nsw i64 %i.i to i32
  %reass.sub = sub nsw i32 %i.g, %i.j
  %i.k = trunc nsw i32 %reass.sub to i8
  %.lhs.trunc = add nsw i8 %i.k, 63               ; 2 uses
  %.rhs.trunc = trunc nuw nsw i32 %i.g to i8      ; 2 uses
  %i.l = udiv i8 %.lhs.trunc, %.rhs.trunc         ; 2 uses
  %i.m = lshr i32 2147483647, %i.f
  %.not46 = icmp samesign ult i8 %.lhs.trunc, %.rhs.trunc
  br i1 %.not46, label %.split35.u64toa_bin_len.exit45_crit_edge, label %.lr.ph.i

.split35.u64toa_bin_len.exit45_crit_edge:         ; preds = %.split35
  %.pre = zext nneg i8 %i.l to i64
  br label %u64toa_bin_len.exit

.lr.ph.i:                                         ; preds = %.split35
  %i.n = zext nneg i32 %i.g to i64
  %i.o = zext nneg i8 %i.l to i64                 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i41 = phi i64 [ %i.o, %.lr.ph.i ], [ %indvars.iv.next.i43, %bb.e ] ; 2 uses
  %.01416.i42 = phi i64 [ %1, %.lr.ph.i ], [ %i.r, %bb.e ] ; 2 uses
  %indvars.iv.next.i43 = add nsw i64 %indvars.iv.i41, -1 ; 2 uses
  %i.p = trunc i64 %.01416.i42 to i32
  %i.q = and i32 %i.m, %i.p                       ; 3 uses
  %i.r = lshr i64 %.01416.i42, %i.n
  %i.s = icmp samesign ult i32 %i.q, 10
  %i.t = or disjoint i32 %i.q, 48
  %i.u = add nuw nsw i32 %i.q, 87
  %.013.i44.a = select i1 %i.s, i32 %i.t, i32 %i.u
  %i.v = trunc i32 %.013.i44.a to i8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.i43
  store i8 %i.v, ptr %i.w, align 1, !tbaa !8
  %3 = icmp samesign ugt i64 %indvars.iv.i41, 1
  br i1 %3, label %bb.e, label %u64toa_bin_len.exit, !llvm.loop !12

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 41 ; 2 uses
  %i.y = zext i32 %2 to i64                       ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.033 = phi i64 [ %1, %bb.f ], [ %i.ab, %bb.g ] ; 3 uses
  %.030 = phi ptr [ %i.x, %bb.f ], [ %i.ae, %bb.g ]
  %i.z = urem i64 %.033, %i.y
  %i.aa = trunc nuw i64 %i.z to i32               ; 2 uses
  %i.ab = udiv i64 %.033, %i.y
  %i.ac = icmp slt i32 %i.aa, 10
  %.0.v = select i1 %i.ac, i32 48, i32 87
  %.0 = add nsw i32 %.0.v, %i.aa
  %i.ad = trunc i32 %.0 to i8
  %i.ae = getelementptr inbounds i8, ptr %.030, i64 -1 ; 4 uses
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !8
  %.not = icmp ult i64 %.033, %i.y
  br i1 %.not, label %bb.h, label %bb.g, !llvm.loop !13

bb.h:                                             ; preds = %bb.g
  %i.af = ptrtoint ptr %i.x to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.ae, i64 %i.ah, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %u64toa_bin_len.exit

u64toa_bin_len.exit:                              ; preds = %bb.e, %.split35.u64toa_bin_len.exit45_crit_edge, %.split, %bb.h, %bb.b
  %.032 = phi i64 [ %i.c, %bb.b ], [ %i.ah, %bb.h ], [ 1, %.split ], [ %.pre, %.split35.u64toa_bin_len.exit45_crit_edge ], [ %i.o, %bb.e ]
  ret i64 %.032
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden i64 @i64toa_radix(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [41 x i8], align 16               ; 3 uses
  %i.b = alloca [41 x i8], align 16               ; 3 uses
  %i.c = icmp sgt i64 %1, -1
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %2, 10
  br i1 %i.d, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @u64toa(ptr noundef %0, i64 noundef %1)
  br label %u64toa_radix.exit

bb.d:                                             ; preds = %bb.b
  %i.f = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.g = icmp samesign ult i32 %i.f, 2
  br i1 %i.g, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %2, i1 true) ; 2 uses
  %i.i = xor i32 %i.h, 31                         ; 3 uses
  %i.j = icmp eq i64 %1, 0
  br i1 %i.j, label %.split.i, label %.split35.i

.split.i:                                         ; preds = %bb.e
  store i8 48, ptr %0, align 1, !tbaa !8
  br label %u64toa_radix.exit

.split35.i:                                       ; preds = %bb.e
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true)
  %i.l = trunc nuw nsw i64 %i.k to i32
  %reass.sub.i = sub nsw i32 %i.i, %i.l
  %i.m = trunc nsw i32 %reass.sub.i to i8
  %.lhs.trunc.i = add nsw i8 %i.m, 63             ; 2 uses
  %.rhs.trunc.i = trunc nuw nsw i32 %i.i to i8    ; 2 uses
  %i.n = udiv i8 %.lhs.trunc.i, %.rhs.trunc.i     ; 2 uses
  %i.o = lshr i32 2147483647, %i.h
  %.not46.i = icmp samesign ult i8 %.lhs.trunc.i, %.rhs.trunc.i
  br i1 %.not46.i, label %.split35.u64toa_bin_len.exit45_crit_edge.i, label %.lr.ph.i.i

.split35.u64toa_bin_len.exit45_crit_edge.i:       ; preds = %.split35.i
  %.pre.i = zext nneg i8 %i.n to i64
  br label %u64toa_radix.exit

.lr.ph.i.i:                                       ; preds = %.split35.i
  %i.p = zext nneg i32 %i.i to i64
  %i.q = zext nneg i8 %i.n to i64                 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i
  %indvars.iv.i41.i = phi i64 [ %i.q, %.lr.ph.i.i ], [ %indvars.iv.next.i43.i, %bb.f ] ; 2 uses
  %.01416.i42.i = phi i64 [ %1, %.lr.ph.i.i ], [ %i.t, %bb.f ] ; 2 uses
  %indvars.iv.next.i43.i = add nsw i64 %indvars.iv.i41.i, -1 ; 2 uses
  %i.r = trunc i64 %.01416.i42.i to i32
  %i.s = and i32 %i.o, %i.r                       ; 3 uses
  %i.t = lshr i64 %.01416.i42.i, %i.p
  %i.u = icmp samesign ult i32 %i.s, 10
  %i.v = or disjoint i32 %i.s, 48
  %i.w = add nuw nsw i32 %i.s, 87
  %.013.i44.i.a = select i1 %i.u, i32 %i.v, i32 %i.w
  %i.x = trunc i32 %.013.i44.i.a to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.i43.i
  store i8 %i.x, ptr %i.y, align 1, !tbaa !8
  %3 = icmp samesign ugt i64 %indvars.iv.i41.i, 1
  br i1 %3, label %bb.f, label %u64toa_radix.exit, !llvm.loop !12

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 41 ; 2 uses
  %i.aa = zext i32 %2 to i64                      ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.033.i = phi i64 [ %1, %bb.g ], [ %i.ad, %bb.h ] ; 3 uses
  %.030.i = phi ptr [ %i.z, %bb.g ], [ %i.ag, %bb.h ]
  %i.ab = urem i64 %.033.i, %i.aa
  %i.ac = trunc nuw i64 %i.ab to i32              ; 2 uses
  %i.ad = udiv i64 %.033.i, %i.aa
  %i.ae = icmp slt i32 %i.ac, 10
  %.0.v.i = select i1 %i.ae, i32 48, i32 87
  %.0.i = add nsw i32 %.0.v.i, %i.ac
  %i.af = trunc i32 %.0.i to i8
  %i.ag = getelementptr inbounds i8, ptr %.030.i, i64 -1 ; 4 uses
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !8
  %.not.i = icmp ult i64 %.033.i, %i.aa
  br i1 %.not.i, label %bb.i, label %bb.h, !llvm.loop !13

bb.i:                                             ; preds = %bb.h
  %i.ah = ptrtoint ptr %i.z to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.ag, i64 %i.aj, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %u64toa_radix.exit

bb.j:                                             ; preds = %bb.a
  store i8 45, ptr %0, align 1, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.al = sub i64 0, %1                           ; 4 uses
  %i.am = icmp eq i32 %2, 10
  br i1 %i.am, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.an = tail call i64 @u64toa(ptr noundef nonnull %i.ak, i64 noundef %i.al)
  br label %u64toa_radix.exit28

bb.l:                                             ; preds = %bb.j
  %i.ao = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.ap = icmp samesign ult i32 %i.ao, 2
  br i1 %i.ap, label %.split35.i15, label %bb.n

.split35.i15:                                     ; preds = %bb.l
  %i.aq = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %2, i1 true) ; 2 uses
  %i.ar = xor i32 %i.aq, 31                       ; 3 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.al, i1 true)
  %i.at = trunc nuw nsw i64 %i.as to i32
  %reass.sub.i16 = sub nsw i32 %i.ar, %i.at
  %i.au = trunc nsw i32 %reass.sub.i16 to i8
  %.lhs.trunc.i17 = add nsw i8 %i.au, 63          ; 2 uses
  %.rhs.trunc.i18 = trunc nuw nsw i32 %i.ar to i8 ; 2 uses
  %i.av = udiv i8 %.lhs.trunc.i17, %.rhs.trunc.i18 ; 2 uses
  %i.aw = lshr i32 2147483647, %i.aq
  %.not46.i19 = icmp samesign ult i8 %.lhs.trunc.i17, %.rhs.trunc.i18
  br i1 %.not46.i19, label %.split35.u64toa_bin_len.exit45_crit_edge.i25, label %.lr.ph.i.i20

.split35.u64toa_bin_len.exit45_crit_edge.i25:     ; preds = %.split35.i15
  %.pre.i26 = zext nneg i8 %i.av to i64
  br label %u64toa_radix.exit28

.lr.ph.i.i20:                                     ; preds = %.split35.i15
  %i.ax = zext nneg i32 %i.ar to i64
  %i.ay = zext nneg i8 %i.av to i64               ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.i20
  %indvars.iv.i41.i21 = phi i64 [ %i.ay, %.lr.ph.i.i20 ], [ %indvars.iv.next.i43.i23, %bb.m ] ; 3 uses
  %.01416.i42.i22 = phi i64 [ %i.al, %.lr.ph.i.i20 ], [ %i.bb, %bb.m ] ; 2 uses
  %indvars.iv.next.i43.i23 = add nsw i64 %indvars.iv.i41.i21, -1
  %i.az = trunc i64 %.01416.i42.i22 to i32
  %i.ba = and i32 %i.aw, %i.az                    ; 3 uses
  %i.bb = lshr i64 %.01416.i42.i22, %i.ax
  %i.bc = icmp samesign ult i32 %i.ba, 10
  %i.bd = or disjoint i32 %i.ba, 48
  %i.be = add nuw nsw i32 %i.ba, 87
  %.013.i44.i24.a = select i1 %i.bc, i32 %i.bd, i32 %i.be
  %i.bf = trunc i32 %.013.i44.i24.a to i8
  %i.bg = getelementptr i8, ptr %0, i64 %indvars.iv.i41.i21
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !8
  %4 = icmp samesign ugt i64 %indvars.iv.i41.i21, 1
  br i1 %4, label %bb.m, label %u64toa_radix.exit28, !llvm.loop !12

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 41 ; 2 uses
  %i.bi = zext i32 %2 to i64                      ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.033.i9 = phi i64 [ %i.al, %bb.n ], [ %i.bl, %bb.o ] ; 3 uses
  %.030.i10 = phi ptr [ %i.bh, %bb.n ], [ %i.bo, %bb.o ]
  %i.bj = urem i64 %.033.i9, %i.bi
  %i.bk = trunc nuw i64 %i.bj to i32              ; 2 uses
  %i.bl = udiv i64 %.033.i9, %i.bi
  %i.bm = icmp slt i32 %i.bk, 10
  %.0.v.i11 = select i1 %i.bm, i32 48, i32 87
  %.0.i12 = add nsw i32 %.0.v.i11, %i.bk
  %i.bn = trunc i32 %.0.i12 to i8
  %i.bo = getelementptr inbounds i8, ptr %.030.i10, i64 -1 ; 4 uses
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !8
  %.not.i13 = icmp ult i64 %.033.i9, %i.bi
  br i1 %.not.i13, label %bb.p, label %bb.o, !llvm.loop !13

bb.p:                                             ; preds = %bb.o
  %i.bp = ptrtoint ptr %i.bh to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %i.bo, i64 %i.br, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %u64toa_radix.exit28

u64toa_radix.exit28:                              ; preds = %bb.m, %bb.k, %.split35.u64toa_bin_len.exit45_crit_edge.i25, %bb.p
  %.032.i14 = phi i64 [ %i.an, %bb.k ], [ %i.br, %bb.p ], [ %.pre.i26, %.split35.u64toa_bin_len.exit45_crit_edge.i25 ], [ %i.ay, %bb.m ]
  %i.bs = add i64 %.032.i14, 1
  br label %u64toa_radix.exit

u64toa_radix.exit:                                ; preds = %bb.f, %bb.i, %.split35.u64toa_bin_len.exit45_crit_edge.i, %.split.i, %bb.c, %u64toa_radix.exit28
  %.0 = phi i64 [ %i.bs, %u64toa_radix.exit28 ], [ %i.e, %bb.c ], [ %i.aj, %bb.i ], [ 1, %.split.i ], [ %.pre.i, %.split35.u64toa_bin_len.exit45_crit_edge.i ], [ %i.q, %bb.f ]
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
  %i.e = load i8, ptr %i.d, align 1, !tbaa !8
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
  %i.y = load i32, ptr %i.x, align 4, !tbaa !14
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
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !14
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
  store i8 45, ptr %0, align 1, !tbaa !8
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
  store i32 1, ptr %5, align 4, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !14
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
  store i8 45, ptr %0, align 1, !tbaa !8
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
  store i8 45, ptr %0, align 1, !tbaa !8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1210 = phi ptr [ %i.ab, %bb.p ], [ %0, %bb.o ] ; 13 uses
  %i.ac = add nsw i32 %.0223, -1022
  %i.ad = icmp eq i32 %i.c, 0                     ; 2 uses
  %i.ae = add nsw i32 %.0223, -1023               ; 3 uses
  %i.af = icmp ult i32 %i.ae, 53
  %or.cond3 = select i1 %i.ad, i1 %i.af, i1 false
  br i1 %or.cond3, label %bb.r, label %bb.aa

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
  br i1 %or.cond240, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.am = lshr i64 %.0224, %i.ah                  ; 5 uses
  %i.an = icmp eq i32 %2, 10
  br i1 %i.an, label %bb.t, label %bb.u, !prof !11

bb.t:                                             ; preds = %bb.s
  %i.ao = tail call i64 @u64toa(ptr noundef %.1210, i64 noundef %i.am)
  br label %u64toa_radix.exit

bb.u:                                             ; preds = %bb.s
  %i.ap = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.aq = icmp samesign ult i32 %i.ap, 2
  br i1 %i.aq, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ar = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %2, i1 true) ; 2 uses
  %i.as = xor i32 %i.ar, 31                       ; 3 uses
  %i.at = icmp eq i64 %i.am, 0
  br i1 %i.at, label %.split.i, label %.split35.i

.split.i:                                         ; preds = %bb.v
  store i8 48, ptr %.1210, align 1, !tbaa !8
  br label %u64toa_radix.exit

.split35.i:                                       ; preds = %bb.v
  %i.au = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.am, i1 true)
  %i.av = trunc nuw nsw i64 %i.au to i32
  %reass.sub.i = sub nsw i32 %i.as, %i.av
  %i.aw = trunc nsw i32 %reass.sub.i to i8
  %.lhs.trunc.i = add nsw i8 %i.aw, 63            ; 2 uses
  %.rhs.trunc.i = trunc nuw nsw i32 %i.as to i8   ; 2 uses
  %i.ax = udiv i8 %.lhs.trunc.i, %.rhs.trunc.i    ; 2 uses
  %i.ay = lshr i32 2147483647, %i.ar
  %.not46.i = icmp samesign ult i8 %.lhs.trunc.i, %.rhs.trunc.i
  br i1 %.not46.i, label %.split35.u64toa_bin_len.exit45_crit_edge.i, label %.lr.ph.i.i

.split35.u64toa_bin_len.exit45_crit_edge.i:       ; preds = %.split35.i
  %.pre.i = zext nneg i8 %i.ax to i64
  br label %u64toa_radix.exit

.lr.ph.i.i:                                       ; preds = %.split35.i
  %i.az = zext nneg i32 %i.as to i64
  %i.ba = zext nneg i8 %i.ax to i64               ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i.i
  %indvars.iv.i41.i = phi i64 [ %i.ba, %.lr.ph.i.i ], [ %indvars.iv.next.i43.i, %bb.w ] ; 2 uses
  %.01416.i42.i = phi i64 [ %i.am, %.lr.ph.i.i ], [ %i.bd, %bb.w ] ; 2 uses
  %indvars.iv.next.i43.i = add nsw i64 %indvars.iv.i41.i, -1 ; 2 uses
  %i.bb = trunc i64 %.01416.i42.i to i32
  %i.bc = and i32 %i.ay, %i.bb                    ; 3 uses
  %i.bd = lshr i64 %.01416.i42.i, %i.az
  %i.be = icmp samesign ult i32 %i.bc, 10
  %i.bf = or disjoint i32 %i.bc, 48
  %i.bg = add nuw nsw i32 %i.bc, 87
  %.013.i44.i.a = select i1 %i.be, i32 %i.bf, i32 %i.bg
  %i.bh = trunc i32 %.013.i44.i.a to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %.1210, i64 %indvars.iv.next.i43.i
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !8
  %6 = icmp samesign ugt i64 %indvars.iv.i41.i, 1
  br i1 %6, label %bb.w, label %u64toa_radix.exit, !llvm.loop !12

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 41 ; 2 uses
  %i.bk = zext i32 %2 to i64                      ; 3 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %.033.i = phi i64 [ %i.am, %bb.x ], [ %i.bn, %bb.y ] ; 3 uses
  %.030.i = phi ptr [ %i.bj, %bb.x ], [ %i.bq, %bb.y ]
  %i.bl = urem i64 %.033.i, %i.bk
  %i.bm = trunc nuw i64 %i.bl to i32              ; 2 uses
  %i.bn = udiv i64 %.033.i, %i.bk
  %i.bo = icmp slt i32 %i.bm, 10
  %.0.v.i = select i1 %i.bo, i32 48, i32 87
  %.0.i = add nsw i32 %.0.v.i, %i.bm
  %i.bp = trunc i32 %.0.i to i8
  %i.bq = getelementptr inbounds i8, ptr %.030.i, i64 -1 ; 4 uses
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !8
  %.not.i = icmp ult i64 %.033.i, %i.bk
  br i1 %.not.i, label %bb.z, label %bb.y, !llvm.loop !13

bb.z:                                             ; preds = %bb.y
  %i.br = ptrtoint ptr %i.bj to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.1210, ptr noundef nonnull align 1 dereferenceable(1) %i.bq, i64 %i.bt, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %u64toa_radix.exit

u64toa_radix.exit:                                ; preds = %bb.w, %bb.t, %.split.i, %.split35.u64toa_bin_len.exit45_crit_edge.i, %bb.z
  %.032.i = phi i64 [ %i.ao, %bb.t ], [ %i.bt, %bb.z ], [ 1, %.split.i ], [ %.pre.i, %.split35.u64toa_bin_len.exit45_crit_edge.i ], [ %i.ba, %bb.w ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.1210, i64 %.032.i
  br label %.loopexit

bb.aa:                                            ; preds = %bb.r, %bb.q
  %i.bv = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.bw = icmp samesign ult i32 %i.bv, 2
  br i1 %i.bw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bx = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %2, i1 true) ; 2 uses
  %i.by = icmp slt i32 %.0223, 1023
  %.neg.i = add nuw nsw i32 %i.bx, 65506
  %i.bz = select i1 %i.by, i32 %.neg.i, i32 0
  %.012.i = add nsw i32 %i.bz, %i.ae
  %.lhs.trunc = trunc i32 %.012.i to i16
  %i.ca = trunc nuw nsw i32 %i.bx to i16
  %.rhs.trunc = xor i16 %i.ca, 31
  %i.cb = sdiv i16 %.lhs.trunc, %.rhs.trunc
  %.sext = sext i16 %i.cb to i32
  br label %mul_log2_radix.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cc = sext i32 %2 to i64
  %i.cd = getelementptr [4 x i8], ptr @mul_log2_radix_table, i64 %i.cc
  %i.ce = getelementptr i8, ptr %i.cd, i64 -8
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !14
  %i.cg = sext i32 %i.ae to i64
  %i.ch = sext i32 %i.cf to i64
  %i.ci = mul nsw i64 %i.ch, %i.cg
  %i.cj = lshr i64 %i.ci, 24
  %i.ck = trunc i64 %i.cj to i32
  br label %mul_log2_radix.exit

mul_log2_radix.exit:                              ; preds = %bb.ab, %bb.ac
  %.0.i244 = phi i32 [ %.sext, %bb.ab ], [ %i.ck, %bb.ac ] ; 2 uses
  %i.cl = add nsw i32 %.0.i244, 1                 ; 2 uses
  br i1 %i.ad, label %bb.ad, label %bb.at

bb.ad:                                            ; preds = %mul_log2_radix.exit
  %i.cm = sext i32 %2 to i64                      ; 4 uses
  %i.cn = getelementptr i8, ptr @dtoa_max_digits_table, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.cn, i64 -2
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !8
  %i.cq = zext i8 %i.cp to i32
  %i.cr = add nsw i32 %.0223, -1075               ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 8 uses
  %i.ct = icmp ult i64 %.0224, 4294967296
  %..i.i = select i1 %i.ct, i32 1, i32 2
  %i.cu = zext i32 %2 to i64                      ; 7 uses
  %i.cv = icmp eq i32 %2, 5
  %i.cw = icmp eq i32 %2, 10                      ; 2 uses
  %or.cond.i = or i1 %i.cv, %i.cw
  %i.cx = mul nuw i64 %i.cu, %i.cu
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ar, %bb.ad
  %.1215 = phi i32 [ %i.cq, %bb.ad ], [ %i.fz, %bb.ar ] ; 12 uses
  %.0207 = phi i32 [ 0, %bb.ad ], [ %.0218, %bb.ar ]
  %.0205 = phi i32 [ 0, %bb.ad ], [ %.2216.lcssa, %bb.ar ] ; 2 uses
  %.0204 = phi i64 [ 0, %bb.ad ], [ %.0203.lcssa, %bb.ar ]
  switch i32 %.1215, label %bb.ag [
    i32 0, label %pow_ui.exit
    i32 1, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae
  br label %pow_ui.exit

bb.ag:                                            ; preds = %bb.ae
  %i.cy = icmp ult i32 %.1215, 18
  %or.cond3.i = and i1 %or.cond.i, %i.cy
  br i1 %or.cond3.i, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.cz = zext nneg i32 %.1215 to i64             ; 2 uses
  %i.da = getelementptr [4 x i8], ptr @pow5_table, i64 %i.cz
  %i.db = getelementptr i8, ptr %i.da, i64 -4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !14
  %i.dd = zext i32 %i.dc to i64                   ; 2 uses
  %i.de = icmp samesign ugt i32 %.1215, 13
  br i1 %i.de, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.df = getelementptr i8, ptr @pow5h_table, i64 %i.cz
  %i.dg = getelementptr i8, ptr %i.df, i64 -14
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !8
  %i.di = zext i8 %i.dh to i64
  %i.dj = shl nuw nsw i64 %i.di, 32
  %i.dk = or disjoint i64 %i.dj, %i.dd
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0.i246 = phi i64 [ %i.dk, %bb.ai ], [ %i.dd, %bb.ah ]
  %narrow.i = select i1 %i.cw, i32 %.1215, i32 0
  %i.dl = zext nneg i32 %narrow.i to i64
  %.1.i = shl nuw nsw i64 %.0.i246, %i.dl
  br label %pow_ui.exit

bb.ak:                                            ; preds = %bb.ag
  %i.dm = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %.1215, i1 true) ; 4 uses
  %i.dn = sub nsw i32 30, %i.dm                   ; 2 uses
  %i.do = and i32 %i.dm, 1
  %lcmp.mod.not.not = icmp eq i32 %i.do, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa.a, label %.prol.loopexit.a

.prol.loopexit.unr-lcssa.a:                       ; preds = %bb.ak
  %i.dp = shl nuw nsw i32 1, %i.dn
  %i.dq = and i32 %i.dp, %.1215
  %.not.i245.prol = icmp eq i32 %i.dq, 0
  %i.dr = select i1 %.not.i245.prol, i64 1, i64 %i.cu
  %spec.select.i.prol = mul i64 %i.cx, %i.dr      ; 2 uses
  %i.ds = sub nsw i32 29, %i.dm
  br label %.prol.loopexit.a

.prol.loopexit.a:                                 ; preds = %.prol.loopexit.unr-lcssa.a, %bb.ak
  %spec.select.i.lcssa.unr = phi i64 [ poison, %bb.ak ], [ %spec.select.i.prol, %.prol.loopexit.unr-lcssa.a ]
  %.234.i.unr = phi i64 [ %i.cu, %bb.ak ], [ %spec.select.i.prol, %.prol.loopexit.unr-lcssa.a ]
  %.03033.i.unr = phi i32 [ %i.dn, %bb.ak ], [ %i.ds, %.prol.loopexit.unr-lcssa.a ]
  %i.dt = icmp eq i32 %i.dm, 30
  br i1 %i.dt, label %pow_ui.exit, label %.new

.new:                                             ; preds = %.prol.loopexit.a, %.new
  %.234.i = phi i64 [ %spec.select.i.1, %.new ], [ %.234.i.unr, %.prol.loopexit.a ] ; 2 uses
  %.03033.i = phi i32 [ %i.ed, %.new ], [ %.03033.i.unr, %.prol.loopexit.a ] ; 3 uses
  %i.du = mul i64 %.234.i, %.234.i
  %i.dv = shl nuw i32 1, %.03033.i
  %i.dw = and i32 %i.dv, %.1215
  %.not.i245 = icmp eq i32 %i.dw, 0
  %i.dx = select i1 %.not.i245, i64 1, i64 %i.cu
  %spec.select.i = mul i64 %i.du, %i.dx           ; 2 uses
  %i.dy = add nsw i32 %.03033.i, -1               ; 2 uses
  %i.dz = mul i64 %spec.select.i, %spec.select.i
  %i.ea = shl nuw i32 1, %i.dy
  %i.eb = and i32 %i.ea, %.1215
  %.not.i245.1 = icmp eq i32 %i.eb, 0
  %i.ec = select i1 %.not.i245.1, i64 1, i64 %i.cu
  %spec.select.i.1 = mul i64 %i.dz, %i.ec         ; 2 uses
  %i.ed = add nsw i32 %.03033.i, -2
  %.not36.i.1 = icmp eq i32 %i.dy, 0
  br i1 %.not36.i.1, label %pow_ui.exit, label %.new, !llvm.loop !15

pow_ui.exit:                                      ; preds = %.prol.loopexit.a, %.new, %bb.ae, %bb.af, %bb.aj
  %.031.i = phi i64 [ 1, %bb.ae ], [ %i.cu, %bb.af ], [ %.1.i, %bb.aj ], [ %spec.select.i.lcssa.unr, %.prol.loopexit.a ], [ %spec.select.i.1, %.new ]
  br label %bb.al

bb.al:                                            ; preds = %mpb_get_u64.exit, %pow_ui.exit
  %.0218 = phi i32 [ %i.cl, %pow_ui.exit ], [ %i.en, %mpb_get_u64.exit ] ; 5 uses
  %i.ee = sub nsw i32 %.1215, %.0218
  store i64 %.0224, ptr %i.cs, align 4
  store i32 %..i.i, ptr %5, align 4, !tbaa !14
  %i.ef = tail call fastcc i32 @mul_pow(ptr noundef nonnull %5, i32 noundef %i.f, i32 noundef range(i32 0, 32) %i.e, i32 noundef %i.ee, i1 noundef zeroext true, i32 noundef range(i32 -2147483648, 2147482573) %i.cr)
  %i.eg = sub nsw i32 %i.ef, %i.cr
  tail call fastcc void @mpb_shr_round(ptr noundef nonnull %5, i32 noundef %i.eg, i32 noundef 0)
  %i.eh = load i32, ptr %5, align 4, !tbaa !14
  %i.ei = icmp eq i32 %i.eh, 1
  br i1 %i.ei, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ej = load i32, ptr %i.cs, align 4, !tbaa !14
  %i.ek = zext i32 %i.ej to i64
  br label %mpb_get_u64.exit

bb.an:                                            ; preds = %bb.al
  %i.el = load i64, ptr %i.cs, align 4
  br label %mpb_get_u64.exit

mpb_get_u64.exit:                                 ; preds = %bb.am, %bb.an
  %.0.i247 = phi i64 [ %i.ek, %bb.am ], [ %i.el, %bb.an ] ; 4 uses
  %i.em = icmp ult i64 %.0.i247, %.031.i
  %i.en = add nsw i32 %.0218, 1
  br i1 %i.em, label %.preheader, label %bb.al

.preheader:                                       ; preds = %mpb_get_u64.exit
  %i.eo = urem i64 %.0.i247, %i.cm
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.0203269 = phi i64 [ %i.eq, %.lr.ph ], [ %.0.i247, %.preheader ]
  %.2216268 = phi i32 [ %i.er, %.lr.ph ], [ %.1215, %.preheader ]
  %i.eq = udiv i64 %.0203269, %i.cm               ; 3 uses
  %i.er = add nsw i32 %.2216268, -1               ; 2 uses
  %i.es = urem i64 %i.eq, %i.cm
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %.lr.ph, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.2216.lcssa = phi i32 [ %.1215, %.preheader ], [ %i.er, %.lr.ph ] ; 4 uses
  %.0203.lcssa = phi i64 [ %.0.i247, %.preheader ], [ %i.eq, %.lr.ph ] ; 4 uses
  %i.eu = icmp eq i32 %.0205, 0
  br i1 %i.eu, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge
  store i64 %.0203.lcssa, ptr %i.cs, align 4
  %i.ev = icmp ult i64 %.0203.lcssa, 4294967296
  %..i = select i1 %i.ev, i32 1, i32 2
  store i32 %..i, ptr %5, align 4, !tbaa !14
  %i.ew = sub nsw i32 %.0218, %.2216.lcssa
  %i.ex = tail call fastcc i32 @mul_pow(ptr noundef nonnull %5, i32 noundef %i.f, i32 noundef range(i32 0, 32) %i.e, i32 noundef %i.ew, i1 noundef zeroext false, i32 noundef 55)
  %i.ey = load i32, ptr %i.cs, align 4, !tbaa !14
end_hunk_0
