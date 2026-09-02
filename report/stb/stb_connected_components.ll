Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_connected_components?download=true
inline.NumInlined: 13
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@stbcc__build_connected_components_for_clumps:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 4100
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph89, %._crit_edge86
  %i.ag = phi i8 [ %i.ad, %.lr.ph89 ], [ %i.by, %._crit_edge86 ]
  %indvars.iv113 = phi i64 [ 0, %.lr.ph89 ], [ %indvars.iv.next114, %._crit_edge86 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv113 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 6
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !17
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  %i.an = load i8, ptr %i.am, align 4, !tbaa !18
  %.not100 = icmp eq i8 %i.an, 0
  br i1 %.not100, label %._crit_edge86, label %.lr.ph85

.lr.ph85:                                         ; preds = %bb.g, %stbcc__clump_union.exit
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %stbcc__clump_union.exit ], [ 0, %bb.g ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv110
  %i.ap = load i16, ptr %i.ao, align 2            ; 3 uses
  %i.aq = and i16 %i.ap, 4095
  %i.ar = shl i16 %i.ap, 2
  %i.as = ashr i16 %i.ar, 14
  %i.at = sext i16 %i.as to i64
  %i.au = add i64 %indvars.iv116, %i.at
  %i.av = ashr i16 %i.ap, 14
  %i.aw = sext i16 %i.av to i64
  %i.ax = add i64 %indvars.iv120, %i.aw
  %sext = shl i64 %i.ax, 32
  %i.ay = ashr exact i64 %sext, 32
  %i.az = getelementptr inbounds [139392 x i8], ptr %i.a, i64 %i.ay
  %sext135 = shl i64 %i.au, 32
  %i.ba = ashr exact i64 %sext135, 32
  %i.bb = getelementptr inbounds [4356 x i8], ptr %i.az, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = zext nneg i16 %i.aq to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i32, ptr %i.ah, align 4
  %i.bg = tail call i32 @stbcc__clump_find(ptr noundef nonnull %0, i32 %i.bf) ; 4 uses
  %i.bh = load i32, ptr %i.be, align 4
  %i.bi = tail call i32 @stbcc__clump_find(ptr noundef nonnull %0, i32 %i.bh) ; 2 uses
  %i.bj = icmp eq i32 %i.bg, %i.bi
  br i1 %i.bj, label %stbcc__clump_union.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph85
  %i.bk = lshr i32 %i.bg, 22
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [139392 x i8], ptr %i.a, i64 %i.bl
  %i.bn = lshr i32 %i.bg, 12
  %i.bo = and i32 %i.bn, 1023
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4356 x i8], ptr %i.bm, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = and i32 %i.bg, 4095
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt
  store i32 %i.bi, ptr %i.bu, align 4, !tbaa !11
  br label %stbcc__clump_union.exit

stbcc__clump_union.exit:                          ; preds = %.lr.ph85, %bb.h
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %i.bv = load i8, ptr %i.am, align 4, !tbaa !18
  %i.bw = zext i8 %i.bv to i64
  %i.bx = icmp samesign ult i64 %indvars.iv.next111, %i.bw
  br i1 %i.bx, label %.lr.ph85, label %._crit_edge86.loopexit, !llvm.loop !32

._crit_edge86.loopexit:                           ; preds = %stbcc__clump_union.exit
  %.pre = load i8, ptr %i.ac, align 2, !tbaa !13
  br label %._crit_edge86

._crit_edge86:                                    ; preds = %._crit_edge86.loopexit, %bb.g
  %i.by = phi i8 [ %.pre, %._crit_edge86.loopexit ], [ %i.ag, %bb.g ] ; 2 uses
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %i.bz = zext i8 %i.by to i64
  %i.ca = icmp samesign ult i64 %indvars.iv.next114, %i.bz
  br i1 %i.ca, label %bb.g, label %._crit_edge90, !llvm.loop !33

._crit_edge90:                                    ; preds = %._crit_edge86, %bb.f
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next117, 32
  br i1 %exitcond119.not, label %bb.i, label %bb.f, !llvm.loop !34

bb.i:                                             ; preds = %._crit_edge90
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next121, 32
  br i1 %exitcond123.not, label %.preheader, label %.preheader77, !llvm.loop !35

.preheader:                                       ; preds = %bb.i, %bb.l
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %bb.l ], [ 0, %bb.i ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [139392 x i8], ptr %0, i64 %indvars.iv128
  %i.cc = shl nuw nsw i64 %indvars.iv128, 22
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %._crit_edge96
  %indvars.iv124 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next125, %._crit_edge96 ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [4356 x i8], ptr %i.cb, i64 %indvars.iv124
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2228246 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 2, !tbaa !13
  %.not101 = icmp eq i8 %i.cf, 0
  br i1 %.not101, label %._crit_edge96, label %.lr.ph95

.lr.ph95:                                         ; preds = %bb.j
  %i.cg = shl nuw nsw i64 %indvars.iv124, 12
  %i.ch = add nuw nsw i64 %i.cg, %i.cc
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph95, %bb.k
  %.27493 = phi i32 [ 0, %.lr.ph95 ], [ %i.cl, %bb.k ] ; 2 uses
  %i.cj = or i32 %.27493, %i.ci
  %i.ck = tail call i32 @stbcc__clump_find(ptr noundef nonnull %0, i32 %i.cj) ; 0 uses
  %i.cl = add nuw nsw i32 %.27493, 1              ; 2 uses
  %i.cm = load i8, ptr %i.ce, align 2, !tbaa !13
  %i.cn = zext i8 %i.cm to i32
  %i.co = icmp samesign ult i32 %i.cl, %i.cn
  br i1 %i.co, label %bb.k, label %._crit_edge96, !llvm.loop !36

._crit_edge96:                                    ; preds = %bb.k, %bb.j
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next125, 32
  br i1 %exitcond127.not, label %bb.l, label %bb.j, !llvm.loop !37

bb.l:                                             ; preds = %._crit_edge96
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next129, 32
  br i1 %exitcond131.not, label %bb.m, label %.preheader, !llvm.loop !38

bb.m:                                             ; preds = %bb.l
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbcc__build_all_connections_for_cluster(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [64 x [8 x i8]], align 16         ; 10 uses
  %i.b = alloca [512 x i8], align 16              ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2228244
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds [139392 x i8], ptr %i.c, i64 %i.d
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds [4356 x i8], ptr %i.e, i64 %i.f ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.b, i8 0, i64 512, i1 false)
  %i.h = shl nsw i32 %1, 5                        ; 2 uses
  %i.i = shl nsw i32 %2, 5
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  store i8 0, ptr %i.j, align 1, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 131092 ; 8 uses
  %i.o = sext i32 %i.i to i64                     ; 7 uses
  %i.p = sext i32 %i.h to i64                     ; 6 uses
  %i.q = icmp slt i32 %1, -1
  br i1 %i.q, label %.loopexit.3, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = add nsw i32 %1, 1
  %i.s = load i32, ptr %i.k, align 4, !tbaa !21
  %.not = icmp sge i32 %i.r, %i.s
  %i.t = icmp slt i32 %2, 0
  %or.cond = or i1 %.not, %i.t
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load i32, ptr %i.l, align 4, !tbaa !22
  %.not122 = icmp slt i32 %2, %i.u
  br i1 %.not122, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  %i.v = or disjoint i64 %i.p, 31                 ; 2 uses
  %i.w = trunc nsw i64 %i.v to i32
  %i.x = ashr i32 %i.w, 3
  %i.y = sext i32 %i.x to i64
  %invariant.gep = getelementptr i8, ptr %i.m, i64 %i.y
  %i.z = add nsw i64 %i.p, 32                     ; 2 uses
  %i.aa = trunc nsw i64 %i.z to i32
  %i.ab = ashr exact i32 %i.aa, 3
  %i.ac = sext i32 %i.ab to i64
  %invariant.gep167 = getelementptr i8, ptr %i.m, i64 %i.ac
  %invariant.gep169 = getelementptr [2 x i8], ptr %i.n, i64 %i.v
  %invariant.gep171 = getelementptr [2 x i8], ptr %i.n, i64 %i.z
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.i
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %.1129 = phi i32 [ 0, %bb.d ], [ %.3, %bb.i ]   ; 4 uses
  %.0106128 = phi i32 [ 0, %bb.d ], [ %i.ba, %bb.i ]
  %i.ad = add nuw nsw i64 %indvars.iv, %i.o       ; 4 uses
  %gep = getelementptr [128 x i8], ptr %invariant.gep, i64 %i.ad
  %i.ae = load i8, ptr %gep, align 1, !tbaa !11
  %.not123 = icmp sgt i8 %i.ae, -1
  br i1 %.not123, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %gep168 = getelementptr [128 x i8], ptr %invariant.gep167, i64 %i.ad
  %i.af = load i8, ptr %gep168, align 1, !tbaa !11
  %3 = trunc i8 %i.af to i1
  br i1 %3, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %gep170 = getelementptr [2048 x i8], ptr %invariant.gep169, i64 %i.ad
  %i.ag = load i16, ptr %gep170, align 2, !tbaa !10
  %gep172 = getelementptr [2048 x i8], ptr %invariant.gep171, i64 %i.ad
  %i.ah = load i16, ptr %gep172, align 2, !tbaa !10
  %i.ai = zext i16 %i.ag to i64                   ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ai
  %i.ak = zext i16 %i.ah to i32                   ; 2 uses
  %i.al = lshr i32 %i.ak, 3
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.am ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !11  ; 2 uses
  %i.ap = zext i8 %i.ao to i32
  %i.aq = and i32 %i.ak, 7
  %i.ar = shl nuw nsw i32 1, %i.aq                ; 2 uses
  %i.as = and i32 %i.ar, %i.ap
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.au = trunc nuw i32 %i.ar to i8
  %i.av = or i8 %i.ao, %i.au
  store i8 %i.av, ptr %i.an, align 1, !tbaa !11
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ai ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !11
  %i.ay = add i8 %i.ax, 1
  store i8 %i.ay, ptr %i.aw, align 1, !tbaa !11
  %i.az = add nsw i32 %.1129, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f, %bb.e
  %.3 = phi i32 [ %.1129, %bb.e ], [ %.1129, %bb.f ], [ %i.az, %bb.h ], [ %.1129, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ba = add nuw nsw i32 %.0106128, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ba, 32
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !39

.loopexit:                                        ; preds = %bb.i, %bb.b, %bb.c
  %.4 = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ %.3, %bb.i ] ; 4 uses
  %i.bb = icmp slt i32 %1, 1
  br i1 %i.bb, label %.loopexit.1, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.bc = load i32, ptr %i.k, align 4, !tbaa !21
  %.not.1.not = icmp sgt i32 %1, %i.bc
  %i.bd = icmp slt i32 %2, 0
  %or.cond181 = or i1 %.not.1.not, %i.bd
  br i1 %or.cond181, label %.loopexit.1.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = load i32, ptr %i.l, align 4, !tbaa !22
  %.not122.1 = icmp slt i32 %2, %i.be
  br i1 %.not122.1, label %bb.l, label %.loopexit.1.thread

bb.l:                                             ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  %i.bf = lshr exact i32 %i.h, 3
  %i.bg = zext nneg i32 %i.bf to i64
  %invariant.gep173 = getelementptr i8, ptr %i.m, i64 %i.bg
  %i.bh = add nsw i64 %i.p, -1                    ; 2 uses
  %i.bi = trunc nsw i64 %i.bh to i32
  %i.bj = ashr i32 %i.bi, 3
  %i.bk = sext i32 %i.bj to i64
  %invariant.gep175 = getelementptr i8, ptr %i.m, i64 %i.bk
  %invariant.gep177 = getelementptr [2 x i8], ptr %i.n, i64 %i.p
  %invariant.gep179 = getelementptr [2 x i8], ptr %i.n, i64 %i.bh
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %bb.l
  %indvars.iv.1 = phi i64 [ 0, %bb.l ], [ %indvars.iv.next.1, %bb.q ] ; 2 uses
  %.1129.1 = phi i32 [ %.4, %bb.l ], [ %.3.1, %bb.q ] ; 4 uses
  %.0106128.1 = phi i32 [ 0, %bb.l ], [ %i.ci, %bb.q ]
  %i.bl = add nuw nsw i64 %indvars.iv.1, %i.o     ; 4 uses
  %gep174 = getelementptr [128 x i8], ptr %invariant.gep173, i64 %i.bl
  %i.bm = load i8, ptr %gep174, align 1, !tbaa !11
  %4 = trunc i8 %i.bm to i1
  br i1 %4, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %gep176 = getelementptr [128 x i8], ptr %invariant.gep175, i64 %i.bl
  %i.bn = load i8, ptr %gep176, align 1, !tbaa !11
  %.not124.1 = icmp sgt i8 %i.bn, -1
  br i1 %.not124.1, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %gep178 = getelementptr [2048 x i8], ptr %invariant.gep177, i64 %i.bl
  %i.bo = load i16, ptr %gep178, align 2, !tbaa !10
  %gep180 = getelementptr [2048 x i8], ptr %invariant.gep179, i64 %i.bl
  %i.bp = load i16, ptr %gep180, align 2, !tbaa !10
  %i.bq = zext i16 %i.bo to i64                   ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bq
  %i.bs = zext i16 %i.bp to i32                   ; 2 uses
  %i.bt = lshr i32 %i.bs, 3
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !11  ; 2 uses
  %i.bx = zext i8 %i.bw to i32
  %i.by = and i32 %i.bs, 7
  %i.bz = shl nuw nsw i32 1, %i.by                ; 2 uses
  %i.ca = and i32 %i.bz, %i.bx
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cc = trunc nuw i32 %i.bz to i8
  %i.cd = or i8 %i.bw, %i.cc
  store i8 %i.cd, ptr %i.bv, align 1, !tbaa !11
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bq ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !11
  %i.cg = add i8 %i.cf, 1
  store i8 %i.cg, ptr %i.ce, align 1, !tbaa !11
  %i.ch = add nsw i32 %.1129.1, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %.3.1 = phi i32 [ %.1129.1, %bb.m ], [ %.1129.1, %bb.n ], [ %i.ch, %bb.p ], [ %.1129.1, %bb.o ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %i.ci = add nuw nsw i32 %.0106128.1, 1          ; 2 uses
  %exitcond.1.not = icmp eq i32 %i.ci, 32
  br i1 %exitcond.1.not, label %.loopexit.1, label %bb.m, !llvm.loop !39

.loopexit.1:                                      ; preds = %bb.q, %.loopexit
  %.4.1 = phi i32 [ %.4, %.loopexit ], [ %.3.1, %bb.q ] ; 2 uses
  %i.cj = icmp slt i32 %1, 0
  br i1 %i.cj, label %.loopexit.3, label %.loopexit.1.thread

.loopexit.1.thread:                               ; preds = %bb.j, %bb.k, %.loopexit.1
  %.4.1159 = phi i32 [ %.4.1, %.loopexit.1 ], [ %.4, %bb.k ], [ %.4, %bb.j ] ; 3 uses
  %i.ck = load i32, ptr %i.k, align 4, !tbaa !21
  %.not.2 = icmp sge i32 %1, %i.ck
  %i.cl = icmp slt i32 %2, 1
  %or.cond182 = or i1 %.not.2, %i.cl
  br i1 %or.cond182, label %.loopexit.2.thread, label %bb.r

bb.r:                                             ; preds = %.loopexit.1.thread
  %i.cm = load i32, ptr %i.l, align 4, !tbaa !22
  %.not122.2.not = icmp sgt i32 %2, %i.cm
  br i1 %.not122.2.not, label %.loopexit.2.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  %i.cn = getelementptr inbounds nuw [128 x i8], ptr %i.m, i64 %i.o
  %i.co = add nsw i64 %i.o, -1                    ; 2 uses
  %i.cp = getelementptr inbounds [128 x i8], ptr %i.m, i64 %i.co
  %i.cq = getelementptr inbounds nuw [2048 x i8], ptr %i.n, i64 %i.o
  %i.cr = getelementptr inbounds [2048 x i8], ptr %i.n, i64 %i.co
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %bb.s
  %indvars.iv135.2 = phi i64 [ 0, %bb.s ], [ %indvars.iv.next136.2, %bb.x ] ; 3 uses
  %.1129.2 = phi i32 [ %.4.1159, %bb.s ], [ %.3.2, %bb.x ] ; 4 uses
  %.0106128.2 = phi i32 [ 0, %bb.s ], [ %i.ei, %bb.x ]
  %i.cs = add nuw nsw i64 %indvars.iv135.2, %i.p  ; 4 uses
  %i.ct = trunc nsw i64 %i.cs to i32
  %i.cu = ashr i32 %i.ct, 3
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds i8, ptr %i.cn, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !11
  %i.cy = zext i8 %i.cx to i32
  %i.cz = trunc nuw nsw i64 %indvars.iv135.2 to i32
  %i.da = and i32 %i.cz, 7
  %i.db = shl nuw nsw i32 1, %i.da
  %i.dc = and i32 %i.db, %i.cy
  %.not123.2 = icmp eq i32 %i.dc, 0
  br i1 %.not123.2, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dd = trunc nsw i64 %i.cs to i32              ; 2 uses
  %i.de = ashr i32 %i.dd, 3
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds i8, ptr %i.cp, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !11
  %i.di = zext i8 %i.dh to i32
  %i.dj = and i32 %i.dd, 7
  %i.dk = shl nuw nsw i32 1, %i.dj
  %i.dl = and i32 %i.dk, %i.di
  %.not124.2 = icmp eq i32 %i.dl, 0
  br i1 %.not124.2, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %i.cs
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !10
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %i.cs
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !10
  %i.dq = zext i16 %i.dn to i64                   ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dq
  %i.ds = zext i16 %i.dp to i32                   ; 2 uses
  %i.dt = lshr i32 %i.ds, 3
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.du ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !11  ; 2 uses
  %i.dx = zext i8 %i.dw to i32
  %i.dy = and i32 %i.ds, 7
  %i.dz = shl nuw nsw i32 1, %i.dy                ; 2 uses
  %i.ea = and i32 %i.dz, %i.dx
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ec = trunc nuw i32 %i.dz to i8
  %i.ed = or i8 %i.dw, %i.ec
  store i8 %i.ed, ptr %i.dv, align 1, !tbaa !11
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dq ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !11
  %i.eg = add i8 %i.ef, 1
  store i8 %i.eg, ptr %i.ee, align 1, !tbaa !11
  %i.eh = add nsw i32 %.1129.2, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %.3.2 = phi i32 [ %.1129.2, %bb.t ], [ %.1129.2, %bb.u ], [ %i.eh, %bb.w ], [ %.1129.2, %bb.v ] ; 3 uses
  %indvars.iv.next136.2 = add nuw nsw i64 %indvars.iv135.2, 1
  %i.ei = add nuw nsw i32 %.0106128.2, 1          ; 2 uses
  %exitcond.2.not = icmp eq i32 %i.ei, 32
  br i1 %exitcond.2.not, label %.loopexit.2, label %bb.t, !llvm.loop !39

.loopexit.2:                                      ; preds = %bb.x
  %i.ej = icmp slt i32 %1, 0
  br i1 %i.ej, label %.loopexit.3, label %.loopexit.2.thread

.loopexit.2.thread:                               ; preds = %.loopexit.1.thread, %bb.r, %.loopexit.2
  %.4.2163 = phi i32 [ %.3.2, %.loopexit.2 ], [ %.4.1159, %bb.r ], [ %.4.1159, %.loopexit.1.thread ] ; 3 uses
  %i.ek = load i32, ptr %i.k, align 4, !tbaa !21
  %.not.3 = icmp sge i32 %1, %i.ek
  %i.el = icmp slt i32 %2, -1
  %or.cond183 = or i1 %.not.3, %i.el
  br i1 %or.cond183, label %.loopexit.3, label %bb.y

bb.y:                                             ; preds = %.loopexit.2.thread
  %i.em = add nsw i32 %2, 1
  %i.en = load i32, ptr %i.l, align 4, !tbaa !22
  %.not122.3 = icmp slt i32 %i.em, %i.en
  br i1 %.not122.3, label %bb.z, label %.loopexit.3

bb.z:                                             ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  %i.eo = or disjoint i64 %i.o, 31                ; 2 uses
  %i.ep = getelementptr inbounds [128 x i8], ptr %i.m, i64 %i.eo
  %i.eq = add nsw i64 %i.o, 32                    ; 2 uses
  %i.er = getelementptr inbounds [128 x i8], ptr %i.m, i64 %i.eq
  %i.es = getelementptr inbounds [2048 x i8], ptr %i.n, i64 %i.eo
  %i.et = getelementptr inbounds [2048 x i8], ptr %i.n, i64 %i.eq
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ae, %bb.z
  %indvars.iv135.3 = phi i64 [ 0, %bb.z ], [ %indvars.iv.next136.3, %bb.ae ] ; 3 uses
  %.1129.3 = phi i32 [ %.4.2163, %bb.z ], [ %.3.3, %bb.ae ] ; 4 uses
  %.0106128.3 = phi i32 [ 0, %bb.z ], [ %i.gk, %bb.ae ]
  %i.eu = add nuw nsw i64 %indvars.iv135.3, %i.p  ; 4 uses
  %i.ev = trunc nsw i64 %i.eu to i32
  %i.ew = ashr i32 %i.ev, 3
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds i8, ptr %i.ep, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !11
  %i.fa = zext i8 %i.ez to i32
  %i.fb = trunc nuw nsw i64 %indvars.iv135.3 to i32
  %i.fc = and i32 %i.fb, 7
  %i.fd = shl nuw nsw i32 1, %i.fc
  %i.fe = and i32 %i.fd, %i.fa
  %.not123.3 = icmp eq i32 %i.fe, 0
  br i1 %.not123.3, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ff = trunc nsw i64 %i.eu to i32              ; 2 uses
  %i.fg = ashr i32 %i.ff, 3
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds i8, ptr %i.er, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !11
  %i.fk = zext i8 %i.fj to i32
  %i.fl = and i32 %i.ff, 7
  %i.fm = shl nuw nsw i32 1, %i.fl
  %i.fn = and i32 %i.fm, %i.fk
  %.not124.3 = icmp eq i32 %i.fn, 0
  br i1 %.not124.3, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.es, i64 %i.eu
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !10
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %i.et, i64 %i.eu
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !10
  %i.fs = zext i16 %i.fp to i64                   ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fs
  %i.fu = zext i16 %i.fr to i32                   ; 2 uses
  %i.fv = lshr i32 %i.fu, 3
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fw ; 2 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !11  ; 2 uses
  %i.fz = zext i8 %i.fy to i32
  %i.ga = and i32 %i.fu, 7
  %i.gb = shl nuw nsw i32 1, %i.ga                ; 2 uses
  %i.gc = and i32 %i.gb, %i.fz
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ge = trunc nuw i32 %i.gb to i8
  %i.gf = or i8 %i.fy, %i.ge
  store i8 %i.gf, ptr %i.fx, align 1, !tbaa !11
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fs ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !11
  %i.gi = add i8 %i.gh, 1
  store i8 %i.gi, ptr %i.gg, align 1, !tbaa !11
  %i.gj = add nsw i32 %.1129.3, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.3.3 = phi i32 [ %.1129.3, %bb.aa ], [ %.1129.3, %bb.ab ], [ %i.gj, %bb.ad ], [ %.1129.3, %bb.ac ] ; 2 uses
  %indvars.iv.next136.3 = add nuw nsw i64 %indvars.iv135.3, 1
  %i.gk = add nuw nsw i32 %.0106128.3, 1          ; 2 uses
  %exitcond.3.not = icmp eq i32 %i.gk, 32
  br i1 %exitcond.3.not, label %.loopexit.3, label %bb.aa, !llvm.loop !39

.loopexit.3:                                      ; preds = %bb.ae, %bb.a, %.loopexit.1, %bb.y, %.loopexit.2.thread, %.loopexit.2
  %.4.3 = phi i32 [ %.3.2, %.loopexit.2 ], [ %.4.2163, %.loopexit.2.thread ], [ %.4.1, %.loopexit.1 ], [ %.4.2163, %bb.y ], [ 0, %bb.a ], [ %.3.3, %bb.ae ] ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.gm = load i8, ptr %i.gl, align 2, !tbaa !13  ; 6 uses
  %i.gn = zext i8 %i.gm to i32                    ; 3 uses
  %i.go = shl nuw nsw i32 %i.gn, 2
  %i.gp = add nsw i32 %i.go, %.4.3
  %i.gq = icmp slt i32 %i.gp, 129
  br i1 %i.gq, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %.loopexit.3
  %i.gr = shl nuw nsw i32 %i.gn, 1
  %i.gs = add nsw i32 %i.gr, %.4.3
  %i.gt = icmp slt i32 %i.gs, 129
  br i1 %i.gt, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gu = add nsw i32 %.4.3, %i.gn
  %i.gv = icmp slt i32 %i.gu, 129
  %. = zext i1 %i.gv to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.loopexit.3
  %.0 = phi i32 [ 2, %bb.af ], [ 4, %.loopexit.3 ], [ %., %bb.ag ] ; 3 uses
  %.not134 = icmp eq i8 %i.gm, 0
  br i1 %.not134, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ah
  %i.gw = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 3 uses
  %i.gx = icmp eq i8 %i.gm, 1
  br i1 %i.gx, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %5 = and i8 %i.gm, -2
  %unroll_iter = zext i8 %5 to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph.new
  %indvars.iv141 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next142.1, %bb.ai ] ; 4 uses
  %.5133 = phi i32 [ 0, %.lr.ph.new ], [ %i.ht, %bb.ai ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.ai ]
  %i.gy = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv141
  %i.gz = load i8, ptr %i.gy, align 2, !tbaa !11
  %i.ha = zext i8 %i.gz to i32
  %i.hb = add nuw nsw i32 %.0, %i.ha
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.hb, i32 64) ; 2 uses
  %i.hc = trunc i32 %.5133 to i8
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv141 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 6
  store i8 %i.hc, ptr %i.he, align 2, !tbaa !17
  %i.hf = trunc nuw nsw i32 %spec.store.select to i8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 5
  store i8 %i.hf, ptr %i.hg, align 1, !tbaa !23
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  store i8 0, ptr %i.hh, align 4, !tbaa !18
  %i.hi = add nuw nsw i32 %spec.store.select, %.5133 ; 2 uses
  %indvars.iv.next142 = or disjoint i64 %indvars.iv141, 1 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next142
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !11
  %i.hl = zext i8 %i.hk to i32
  %i.hm = add nuw nsw i32 %.0, %i.hl
  %spec.store.select.1 = tail call i32 @llvm.umin.i32(i32 %i.hm, i32 64) ; 2 uses
  %i.hn = trunc i32 %i.hi to i8
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv.next142 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 6
  store i8 %i.hn, ptr %i.hp, align 2, !tbaa !17
  %i.hq = trunc nuw nsw i32 %spec.store.select.1 to i8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 5
  store i8 %i.hq, ptr %i.hr, align 1, !tbaa !23
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  store i8 0, ptr %i.hs, align 4, !tbaa !18
  %i.ht = add nuw nsw i32 %spec.store.select.1, %i.hi ; 2 uses
  %indvars.iv.next142.1 = add nuw nsw i64 %indvars.iv141, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.ai, !llvm.loop !40

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ai
  %6 = trunc i8 %i.gm to i1
  br i1 %6, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv141.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next142.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.5133.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.ht, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod184 = trunc i8 %i.gm to i1
  tail call void @llvm.assume(i1 %lcmp.mod184)
  %i.hu = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv141.epil.init
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !11
  %i.hw = zext i8 %i.hv to i32
  %i.hx = add nuw nsw i32 %.0, %i.hw
  %spec.store.select.epil = tail call i32 @llvm.umin.i32(i32 %i.hx, i32 64)
  %i.hy = trunc i32 %.5133.epil.init to i8
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv141.epil.init ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 6
  store i8 %i.hy, ptr %i.ia, align 2, !tbaa !17
  %i.ib = trunc nuw nsw i32 %spec.store.select.epil to i8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 5
  store i8 %i.ib, ptr %i.ic, align 1, !tbaa !23
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  store i8 0, ptr %i.id, align 4, !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.ah
  tail call void @stbcc__add_connections_to_adjacent_cluster(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef -1, i32 noundef 0)
  tail call void @stbcc__add_connections_to_adjacent_cluster(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0)
  tail call void @stbcc__add_connections_to_adjacent_cluster(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef -1)
  tail call void @stbcc__add_connections_to_adjacent_cluster(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbcc__add_connections_to_adjacent_cluster(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [64 x [8 x i8]], align 16         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  %i.b = shl nsw i32 %1, 5
  %i.c = shl nsw i32 %2, 5
  %i.d = icmp slt i32 %1, 0
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !21   ; 2 uses
  %i.g = icmp sge i32 %1, %i.f
  %i.h = icmp slt i32 %2, 0
  %or.cond = or i1 %i.h, %i.g
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !22   ; 2 uses
  %.not = icmp slt i32 %2, %i.j
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %3, %1                       ; 2 uses
  %i.l = icmp sgt i32 %i.k, -1
  %.not97 = icmp slt i32 %i.k, %i.f
  %or.cond103 = and i1 %i.l, %.not97
  br i1 %or.cond103, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %4, %2                       ; 2 uses
  %i.n = icmp sgt i32 %i.m, -1
  %.not98 = icmp slt i32 %i.m, %i.j
  %or.cond104 = and i1 %i.n, %.not98
  br i1 %or.cond104, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.o = zext nneg i32 %2 to i64
  %i.p = getelementptr inbounds nuw [139392 x i8], ptr %0, i64 %i.o
  %i.q = zext nneg i32 %1 to i64
  %i.r = getelementptr inbounds nuw [4356 x i8], ptr %i.p, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2228247 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !19
  %.not99 = icmp eq i8 %i.t, 0
  br i1 %.not99, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  switch i32 %3, label %bb.i [
    i32 1, label %bb.k
    i32 -1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  switch i32 %4, label %.loopexit [
    i32 -1, label %bb.k
    i32 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.g, %bb.h, %bb.j
  %.088 = phi i64 [ 1, %bb.j ], [ 0, %bb.h ], [ 0, %bb.g ], [ 1, %bb.i ]
  %.087 = phi i64 [ 0, %bb.j ], [ 1, %bb.h ], [ 1, %bb.g ], [ 0, %bb.i ]
  %.085 = phi i64 [ 0, %bb.j ], [ 0, %bb.h ], [ 31, %bb.g ], [ 0, %bb.i ]
  %.084 = phi i64 [ 31, %bb.j ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 131092 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2228244
  %i.x = trunc i32 %3 to i16
  %i.y = shl i16 %i.x, 12
  %i.z = and i16 %i.y, 12288
  %i.aa = trunc i32 %4 to i16
  %i.ab = shl i16 %i.aa, 14
  %i.ac = zext nneg i32 %i.c to i64
  %i.ad = sext i32 %4 to i64
  %i.ae = zext nneg i32 %i.b to i64
  %i.af = sext i32 %3 to i64
  %invariant.op = or disjoint i16 %i.z, %i.ab
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread
  %indvars.iv109 = phi i64 [ %.085, %bb.k ], [ %indvars.iv.next110, %.thread ] ; 3 uses
  %indvars.iv = phi i64 [ %.084, %bb.k ], [ %indvars.iv.next, %.thread ] ; 2 uses
  %.083108 = phi i32 [ 0, %bb.k ], [ %i.cw, %.thread ]
  %i.ag = add nuw nsw i64 %indvars.iv, %i.ac      ; 4 uses
  %i.ah = getelementptr inbounds nuw [128 x i8], ptr %i.u, i64 %i.ag
  %i.ai = add nuw nsw i64 %indvars.iv109, %i.ae   ; 4 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = and i64 %i.aj, 536870911
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !11
  %i.an = zext i8 %i.am to i32
  %i.ao = trunc nuw nsw i64 %indvars.iv109 to i32
  %i.ap = and i32 %i.ao, 7
  %i.aq = shl nuw nsw i32 1, %i.ap
  %i.ar = and i32 %i.aq, %i.an
  %.not100 = icmp eq i32 %i.ar, 0
  br i1 %.not100, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = add nsw i64 %i.ag, %i.ad                ; 2 uses
  %i.at = getelementptr inbounds [128 x i8], ptr %i.u, i64 %i.as
  %i.au = add nsw i64 %i.ai, %i.af                ; 2 uses
  %i.av = trunc nsw i64 %i.au to i32              ; 2 uses
  %i.aw = ashr i32 %i.av, 3
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %i.at, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !11
  %i.ba = zext i8 %i.az to i32
  %i.bb = and i32 %i.av, 7
  %i.bc = shl nuw nsw i32 1, %i.bb
  %i.bd = and i32 %i.bc, %i.ba
  %.not101 = icmp eq i32 %i.bd, 0
  br i1 %.not101, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw [2048 x i8], ptr %i.v, i64 %i.ag
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.ai
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !10
  %i.bh = getelementptr inbounds [2048 x i8], ptr %i.v, i64 %i.as
  %i.bi = getelementptr inbounds [2 x i8], ptr %i.bh, i64 %i.au
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !10 ; 2 uses
  %i.bk = zext i16 %i.bg to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bk
  %i.bm = zext i16 %i.bj to i32                   ; 2 uses
  %i.bn = lshr i32 %i.bm, 3
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bo ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !11  ; 2 uses
  %i.br = zext i8 %i.bq to i32
  %i.bs = and i32 %i.bm, 7
  %i.bt = shl nuw nsw i32 1, %i.bs                ; 2 uses
  %i.bu = and i32 %i.bt, %i.br
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.bw = trunc nuw i32 %i.bt to i8
  %i.bx = or i8 %i.bq, %i.bw
  store i8 %i.bx, ptr %i.bp, align 1, !tbaa !11
  %i.by = lshr i64 %i.ai, 5
  %i.bz = lshr i64 %i.ag, 5
  %i.ca = and i64 %i.bz, 134217727
  %i.cb = getelementptr inbounds nuw [139392 x i8], ptr %i.w, i64 %i.ca
  %i.cc = and i64 %i.by, 134217727
  %i.cd = getelementptr inbounds nuw [4356 x i8], ptr %i.cb, i64 %i.cc ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.bk ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 4, !tbaa !18  ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 5
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !23
  %i.ck = icmp eq i8 %i.ch, %i.cj
  br i1 %i.ck, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 3
  store i8 1, ptr %i.cl, align 1, !tbaa !19
end_hunk_0
begin_hunk_1_@stbcc__build_clumps_for_cluster:bb.a
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 3454
  store i16 512, ptr %i.di, align 2, !tbaa !10
  store i16 512, ptr %i.dh, align 2, !tbaa !10
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 3456 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 3518
  store i16 512, ptr %i.dk, align 2, !tbaa !10
  store i16 512, ptr %i.dj, align 2, !tbaa !10
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 3520 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 3582
  store i16 512, ptr %i.dm, align 2, !tbaa !10
  store i16 512, ptr %i.dl, align 2, !tbaa !10
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 3584 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 3646
  store i16 512, ptr %i.do, align 2, !tbaa !10
  store i16 512, ptr %i.dn, align 2, !tbaa !10
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 3648 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 3710
  store i16 512, ptr %i.dq, align 2, !tbaa !10
  store i16 512, ptr %i.dp, align 2, !tbaa !10
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 3712 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 3774
  store i16 512, ptr %i.ds, align 2, !tbaa !10
  store i16 512, ptr %i.dr, align 2, !tbaa !10
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 3776 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 3838
  store i16 512, ptr %i.du, align 2, !tbaa !10
  store i16 512, ptr %i.dt, align 2, !tbaa !10
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 3840 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 3902
  store i16 512, ptr %i.dw, align 2, !tbaa !10
  store i16 512, ptr %i.dv, align 2, !tbaa !10
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 3904 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 3966
  store i16 512, ptr %i.dy, align 2, !tbaa !10
  store i16 512, ptr %i.dx, align 2, !tbaa !10
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 3968 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 4030
  store i16 512, ptr %i.dz, align 2, !tbaa !10
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 4032
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 4032
  store <8 x i16> splat (i16 512), ptr %i.ea, align 2, !tbaa !10
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 4046
  store <8 x i16> splat (i16 512), ptr %i.br, align 2, !tbaa !10
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 2064
  store <8 x i16> splat (i16 512), ptr %i.ed, align 2, !tbaa !10
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 4062
  store <8 x i16> splat (i16 512), ptr %i.ee, align 2, !tbaa !10
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 2080
  store <8 x i16> splat (i16 512), ptr %i.ef, align 2, !tbaa !10
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 4078
  store <8 x i16> splat (i16 512), ptr %i.eg, align 2, !tbaa !10
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 2096
  store <8 x i16> splat (i16 512), ptr %i.eh, align 2, !tbaa !10
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 4094
  store i16 512, ptr %i.ej, align 2, !tbaa !10
  store <8 x i16> splat (i16 512), ptr %i.ei, align 2, !tbaa !10
  %i.ek = shl nsw i32 %1, 2
  %i.el = sext i32 %i.ek to i64
  %invariant.gep = getelementptr [128 x i8], ptr %i.bp, i64 %i.bq
  %invariant.gep436 = getelementptr i8, ptr %invariant.gep, i64 %i.el
  br label %bb.l

bb.b:                                             ; preds = %.preheader356, %bb.k
  %indvars.iv384 = phi i64 [ 0, %.preheader356 ], [ %indvars.iv.next385, %bb.k ] ; 6 uses
  %.not325 = icmp eq i64 %indvars.iv384, 31
  br i1 %.not325, label %.loopexit, label %.preheader355

.preheader355:                                    ; preds = %bb.b
  %i.em = or disjoint i64 %indvars.iv384, %i.bq   ; 2 uses
  %i.en = getelementptr inbounds [128 x i8], ptr %i.bp, i64 %i.em ; 2 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 128
  %i.ep = trunc nuw nsw i64 %indvars.iv384 to i32
  %i.eq = trunc i64 %indvars.iv384 to i32
  %i.er = add i32 %i.eq, 1
  br label %bb.c

bb.c:                                             ; preds = %.preheader355, %stbcc__incluster_union.exit
  %.1302360 = phi i32 [ 0, %.preheader355 ], [ %i.fp, %stbcc__incluster_union.exit ] ; 5 uses
  %i.es = or disjoint i32 %.1302360, %i.bn
  %i.et = ashr i32 %i.es, 3
  %i.eu = sext i32 %i.et to i64                   ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %i.en, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !11
  %i.ex = zext i8 %i.ew to i32
  %i.ey = and i32 %.1302360, 7
  %i.ez = shl nuw nsw i32 1, %i.ey                ; 2 uses
  %i.fa = and i32 %i.ez, %i.ex
  %.not328 = icmp eq i32 %i.fa, 0
  br i1 %.not328, label %stbcc__incluster_union.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.fb = getelementptr inbounds i8, ptr %i.eo, i64 %i.eu
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !11
  %i.fd = zext i8 %i.fc to i32
  %i.fe = and i32 %i.ez, %i.fd
  %.not329 = icmp eq i32 %i.fe, 0
  br i1 %.not329, label %stbcc__incluster_union.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ff = call i16 @stbcc__incluster_find(ptr noundef nonnull %3, i32 noundef %.1302360, i32 noundef %i.ep) ; 3 uses
  %.sroa.53.0.extract.shift.i = lshr i16 %i.ff, 8 ; 2 uses
  %i.fg = call i16 @stbcc__incluster_find(ptr noundef nonnull %3, i32 noundef %.1302360, i32 noundef %i.er) ; 3 uses
  %.sroa.5.0.extract.shift.i = lshr i16 %i.fg, 8
  %i.fh = xor i16 %i.fg, %i.ff
  %i.fi = and i16 %i.fh, 255
  %i.fj = icmp eq i16 %i.fi, 0
  %i.fk = icmp eq i16 %.sroa.53.0.extract.shift.i, %.sroa.5.0.extract.shift.i
  %or.cond.i = select i1 %i.fj, i1 %i.fk, i1 false
  br i1 %or.cond.i, label %stbcc__incluster_union.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.53.0.extract.trunc.i = zext nneg i16 %.sroa.53.0.extract.shift.i to i64
  %i.fl = getelementptr inbounds nuw [64 x i8], ptr %3, i64 %.sroa.53.0.extract.trunc.i
  %i.fm = and i16 %i.ff, 255
  %i.fn = zext nneg i16 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %i.fn
  store i16 %i.fg, ptr %i.fo, align 2
  br label %stbcc__incluster_union.exit

stbcc__incluster_union.exit:                      ; preds = %bb.f, %bb.e, %bb.c, %bb.d
  %i.fp = add nuw nsw i32 %.1302360, 1            ; 2 uses
  %exitcond382.not = icmp eq i32 %i.fp, 32
  br i1 %exitcond382.not, label %.loopexit, label %bb.c, !llvm.loop !44

.loopexit:                                        ; preds = %stbcc__incluster_union.exit, %bb.b
  %.pre-phi = phi i64 [ %.pre, %bb.b ], [ %i.em, %stbcc__incluster_union.exit ]
  %i.fq = getelementptr inbounds [128 x i8], ptr %i.bp, i64 %.pre-phi ; 2 uses
  %i.fr = trunc nuw nsw i64 %indvars.iv384 to i32 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %stbcc__incluster_union.exit340
  %.2303361 = phi i32 [ 0, %.loopexit ], [ %i.gv, %stbcc__incluster_union.exit340 ] ; 5 uses
  %i.fs = or disjoint i32 %.2303361, %i.bn        ; 2 uses
  %i.ft = ashr i32 %i.fs, 3
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds i8, ptr %i.fq, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !11
  %i.fx = zext i8 %i.fw to i32
  %i.fy = and i32 %.2303361, 7
  %i.fz = shl nuw nsw i32 1, %i.fy
  %i.ga = and i32 %i.fz, %i.fx
  %.not326 = icmp eq i32 %i.ga, 0
  br i1 %.not326, label %stbcc__incluster_union.exit340, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.gb = add nuw nsw i32 %i.fs, 1                ; 2 uses
  %i.gc = ashr i32 %i.gb, 3
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds i8, ptr %i.fq, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !11
  %i.gg = zext i8 %i.gf to i32
  %i.gh = and i32 %i.gb, 7
  %i.gi = shl nuw nsw i32 1, %i.gh
  %i.gj = and i32 %i.gi, %i.gg
  %.not327 = icmp eq i32 %i.gj, 0
  br i1 %.not327, label %stbcc__incluster_union.exit340, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gk = add nuw nsw i32 %.2303361, 1
  %i.gl = call i16 @stbcc__incluster_find(ptr noundef nonnull %3, i32 noundef %.2303361, i32 noundef %i.fr) ; 3 uses
  %.sroa.53.0.extract.shift.i336 = lshr i16 %i.gl, 8 ; 2 uses
  %i.gm = call i16 @stbcc__incluster_find(ptr noundef nonnull %3, i32 noundef %i.gk, i32 noundef %i.fr) ; 3 uses
  %.sroa.5.0.extract.shift.i337 = lshr i16 %i.gm, 8
  %i.gn = xor i16 %i.gm, %i.gl
  %i.go = and i16 %i.gn, 255
  %i.gp = icmp eq i16 %i.go, 0
  %i.gq = icmp eq i16 %.sroa.53.0.extract.shift.i336, %.sroa.5.0.extract.shift.i337
  %or.cond.i338 = select i1 %i.gp, i1 %i.gq, i1 false
  br i1 %or.cond.i338, label %stbcc__incluster_union.exit340, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.53.0.extract.trunc.i339 = zext nneg i16 %.sroa.53.0.extract.shift.i336 to i64
  %i.gr = getelementptr inbounds nuw [64 x i8], ptr %3, i64 %.sroa.53.0.extract.trunc.i339
  %i.gs = and i16 %i.gl, 255
  %i.gt = zext nneg i16 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %i.gr, i64 %i.gt
  store i16 %i.gm, ptr %i.gu, align 2
  br label %stbcc__incluster_union.exit340

stbcc__incluster_union.exit340:                   ; preds = %bb.j, %bb.i, %bb.g, %bb.h
  %i.gv = add nuw nsw i32 %.2303361, 1            ; 2 uses
  %exitcond383.not = icmp eq i32 %i.gv, 31
  br i1 %exitcond383.not, label %bb.k, label %bb.g, !llvm.loop !45

bb.k:                                             ; preds = %stbcc__incluster_union.exit340
  %indvars.iv.next385 = add nuw nsw i64 %indvars.iv384, 1 ; 2 uses
  %exitcond387.not = icmp eq i64 %indvars.iv.next385, 32
  br i1 %exitcond387.not, label %.preheader354, label %bb.b, !llvm.loop !46

.preheader351:                                    ; preds = %bb.t
  %i.gw = getelementptr inbounds [128 x i8], ptr %i.bp, i64 %i.bq ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 3968
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 1984
  br label %bb.u

bb.l:                                             ; preds = %.preheader354, %bb.t
  %indvars.iv396 = phi i64 [ 0, %.preheader354 ], [ %indvars.iv.next397, %bb.t ] ; 12 uses
  %.0308365 = phi i32 [ 0, %.preheader354 ], [ %.4312, %bb.t ] ; 4 uses
  %gep437 = getelementptr [128 x i8], ptr %invariant.gep436, i64 %indvars.iv396 ; 2 uses
  %i.gz = load i8, ptr %gep437, align 1, !tbaa !11
  %4 = trunc i8 %i.gz to i1
  br i1 %4, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ha = trunc nuw nsw i64 %indvars.iv396 to i32
  %i.hb = call i16 @stbcc__incluster_find(ptr noundef nonnull %3, i32 noundef 0, i32 noundef %i.ha) ; 2 uses
  %.sroa.778.0.extract.shift = lshr i16 %i.hb, 8  ; 4 uses
  %.sroa.074.0.extract.trunc.mask = and i16 %i.hb, 255 ; 3 uses
  %i.hc = icmp eq i16 %.sroa.074.0.extract.trunc.mask, 0 ; 2 uses
  %i.hd = zext nneg i16 %.sroa.778.0.extract.shift to i64
  %i.he = icmp eq i64 %indvars.iv396, %i.hd
  %or.cond = select i1 %i.hc, i1 %i.he, i1 false
  br i1 %or.cond, label %.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.hf = icmp eq i16 %.sroa.074.0.extract.trunc.mask, 31
  %i.hg = icmp eq i16 %.sroa.778.0.extract.shift, 0
  %i.hh = or i1 %i.hf, %i.hg
  %i.hi = icmp eq i16 %.sroa.778.0.extract.shift, 31
  %i.hj = or i1 %i.hi, %i.hh
  %or.cond11 = or i1 %i.hc, %i.hj
  br i1 %or.cond11, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.3.0.extract.trunc.i = zext nneg i16 %.sroa.778.0.extract.shift to i64
  %i.hk = getelementptr inbounds nuw [64 x i8], ptr %3, i64 %.sroa.3.0.extract.trunc.i
  %i.hl = zext nneg i16 %.sroa.074.0.extract.trunc.mask to i64
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %i.hk, i64 %i.hl ; 2 uses
  store i8 0, ptr %i.hm, align 2, !tbaa !26
  %i.hn = trunc i64 %indvars.iv396 to i8          ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 1
  store i8 %i.hn, ptr %i.ho, align 1, !tbaa !27
  %i.hp = getelementptr inbounds nuw [64 x i8], ptr %3, i64 %indvars.iv396 ; 2 uses
  store i8 0, ptr %i.hp, align 2, !tbaa !26
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 1
  store i8 %i.hn, ptr %i.hq, align 1, !tbaa !27
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.o
  %i.hr = add nsw i32 %.0308365, 1
  %i.hs = trunc i32 %.0308365 to i16
  %i.ht = getelementptr inbounds nuw [64 x i8], ptr %i.br, i64 %indvars.iv396
  store i16 %i.hs, ptr %i.ht, align 2, !tbaa !10
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.n, %bb.l
  %.2310 = phi i32 [ %.0308365, %bb.l ], [ %.0308365, %bb.n ], [ %i.hr, %.sink.split ] ; 4 uses
  %i.hu = getelementptr i8, ptr %gep437, i64 3
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !11
  %.not324 = icmp sgt i8 %i.hv, -1
  br i1 %.not324, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hw = trunc nuw nsw i64 %indvars.iv396 to i32
  %i.hx = call i16 @stbcc__incluster_find(ptr noundef nonnull %3, i32 noundef 31, i32 noundef %i.hw) ; 2 uses
  %.sroa.771.0.extract.shift = lshr i16 %i.hx, 8  ; 4 uses
  %.sroa.067.0.extract.trunc.mask = and i16 %i.hx, 255 ; 3 uses
  %i.hy = icmp eq i16 %.sroa.067.0.extract.trunc.mask, 31 ; 2 uses
  %i.hz = zext nneg i16 %.sroa.771.0.extract.shift to i64
  %i.ia = icmp eq i64 %indvars.iv396, %i.hz
  %or.cond332 = select i1 %i.hy, i1 %i.ia, i1 false
  br i1 %or.cond332, label %.sink.split442, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ib = icmp eq i16 %.sroa.067.0.extract.trunc.mask, 0
  %i.ic = icmp eq i16 %.sroa.771.0.extract.shift, 0
  %i.id = or i1 %i.ib, %i.ic
  %i.ie = icmp eq i16 %.sroa.771.0.extract.shift, 31
  %i.if = or i1 %i.ie, %i.id
  %or.cond23 = or i1 %i.hy, %i.if
  br i1 %or.cond23, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.3.0.extract.trunc.i342 = zext nneg i16 %.sroa.771.0.extract.shift to i64
  %i.ig = getelementptr inbounds nuw [64 x i8], ptr %3, i64 %.sroa.3.0.extract.trunc.i342
  %i.ih = zext nneg i16 %.sroa.067.0.extract.trunc.mask to i64
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.ig, i64 %i.ih ; 2 uses
  store i8 31, ptr %i.ii, align 2, !tbaa !26
  %i.ij = trunc i64 %indvars.iv396 to i8          ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 1
  store i8 %i.ij, ptr %i.ik, align 1, !tbaa !27
  %i.il = getelementptr inbounds nuw [64 x i8], ptr %3, i64 %indvars.iv396 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 62
  store i8 31, ptr %i.im, align 2, !tbaa !26
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 63
  store i8 %i.ij, ptr %i.in, align 1, !tbaa !27
  br label %.sink.split442

.sink.split442:                                   ; preds = %bb.q, %bb.s
  %i.io = getelementptr inbounds nuw [64 x i8], ptr %3, i64 %indvars.iv396
  %.4312.ph = add nsw i32 %.2310, 1
  %.sink = trunc i32 %.2310 to i16
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 2110
  store i16 %.sink, ptr %i.ip, align 2, !tbaa !10
  br label %bb.t

bb.t:                                             ; preds = %.sink.split442, %bb.r, %bb.p
  %.4312 = phi i32 [ %.2310, %bb.p ], [ %.2310, %bb.r ], [ %.4312.ph, %.sink.split442 ] ; 2 uses
  %indvars.iv.next397 = add nuw nsw i64 %indvars.iv396, 1 ; 2 uses
  %exitcond399.not = icmp eq i64 %indvars.iv.next397, 32
  br i1 %exitcond399.not, label %.preheader351, label %bb.l, !llvm.loop !47

bb.u:                                             ; preds = %.preheader351, %bb.ac
  %indvars.iv400 = phi i64 [ 1, %.preheader351 ], [ %indvars.iv.next401, %bb.ac ] ; 11 uses
  %.5313367 = phi i32 [ %.4312, %.preheader351 ], [ %.9317, %bb.ac ] ; 4 uses
  %i.iq = trunc i64 %indvars.iv400 to i32
  %i.ir = or i32 %i.bn, %i.iq
  %i.is = ashr i32 %i.ir, 3
  %i.it = sext i32 %i.is to i64                   ; 2 uses
  %i.iu = getelementptr inbounds i8, ptr %i.gw, i64 %i.it
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !11
  %i.iw = zext i8 %i.iv to i32
  %i.ix = trunc nuw nsw i64 %indvars.iv400 to i32 ; 3 uses
  %i.iy = and i32 %i.ix, 7
  %i.iz = shl nuw nsw i32 1, %i.iy                ; 2 uses
  %i.ja = and i32 %i.iz, %i.iw
  %.not321 = icmp eq i32 %i.ja, 0
  br i1 %.not321, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.jb = call i16 @stbcc__incluster_find(ptr noundef nonnull %3, i32 noundef %i.ix, i32 noundef 0) ; 2 uses
  %.sroa.764.0.extract.shift = lshr i16 %i.jb, 8  ; 3 uses
  %.sroa.060.0.extract.trunc.mask = and i16 %i.jb, 255 ; 4 uses
  %i.jc = zext nneg i16 %.sroa.060.0.extract.trunc.mask to i64
  %i.jd = icmp eq i64 %indvars.iv400, %i.jc
  %i.je = icmp eq i16 %.sroa.764.0.extract.shift, 0 ; 2 uses
  %or.cond333 = and i1 %i.je, %i.jd
  br i1 %or.cond333, label %.sink.split445, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.jf = icmp eq i16 %.sroa.060.0.extract.trunc.mask, 0
  %i.jg = icmp eq i16 %.sroa.060.0.extract.trunc.mask, 31
  %or.cond27 = or i1 %i.jf, %i.jg
  %i.jh = icmp eq i16 %.sroa.764.0.extract.shift, 31
  %i.ji = or i1 %i.jh, %or.cond27
  %or.cond35 = or i1 %i.je, %i.ji
  br i1 %or.cond35, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.3.0.extract.trunc.i344 = zext nneg i16 %.sroa.764.0.extract.shift to i64
  %i.jj = trunc i64 %indvars.iv400 to i8          ; 2 uses
  %i.jk = getelementptr inbounds nuw [64 x i8], ptr %3, i64 %.sroa.3.0.extract.trunc.i344
  %i.jl = zext nneg i16 %.sroa.060.0.extract.trunc.mask to i64
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %i.jk, i64 %i.jl ; 2 uses
  store i8 %i.jj, ptr %i.jm, align 2, !tbaa !26
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 1
  store i8 0, ptr %i.jn, align 1, !tbaa !27
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv400 ; 2 uses
  store i8 %i.jj, ptr %i.jo, align 2, !tbaa !26
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 1
  store i8 0, ptr %i.jp, align 1, !tbaa !27
  br label %.sink.split445

.sink.split445:                                   ; preds = %bb.v, %bb.x
  %i.jq = add nsw i32 %.5313367, 1
  %i.jr = trunc i32 %.5313367 to i16
  %i.js = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %indvars.iv400
  store i16 %i.jr, ptr %i.js, align 2, !tbaa !10
  br label %bb.y

bb.y:                                             ; preds = %.sink.split445, %bb.w, %bb.u
  %.7315 = phi i32 [ %.5313367, %bb.u ], [ %.5313367, %bb.w ], [ %i.jq, %.sink.split445 ] ; 4 uses
  %i.jt = getelementptr inbounds i8, ptr %i.gx, i64 %i.it
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !11
  %i.jv = zext i8 %i.ju to i32
  %i.jw = and i32 %i.iz, %i.jv
  %.not322 = icmp eq i32 %i.jw, 0
  br i1 %.not322, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.jx = call i16 @stbcc__incluster_find(ptr noundef nonnull %3, i32 noundef %i.ix, i32 noundef 31) ; 2 uses
  %.sroa.7.0.extract.shift = lshr i16 %i.jx, 8    ; 3 uses
  %.sroa.054.0.extract.trunc.mask = and i16 %i.jx, 255 ; 4 uses
  %i.jy = zext nneg i16 %.sroa.054.0.extract.trunc.mask to i64
  %i.jz = icmp eq i64 %indvars.iv400, %i.jy
  %i.ka = icmp eq i16 %.sroa.7.0.extract.shift, 31 ; 2 uses
  %or.cond334 = and i1 %i.ka, %i.jz
  br i1 %or.cond334, label %.sink.split448, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.kb = icmp eq i16 %.sroa.054.0.extract.trunc.mask, 0
  %i.kc = icmp eq i16 %.sroa.054.0.extract.trunc.mask, 31
  %or.cond39 = or i1 %i.kb, %i.kc
  %i.kd = icmp eq i16 %.sroa.7.0.extract.shift, 0
  %or.cond43 = or i1 %i.kd, %or.cond39
  %or.cond47 = or i1 %i.ka, %or.cond43
  br i1 %or.cond47, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.3.0.extract.trunc.i346 = zext nneg i16 %.sroa.7.0.extract.shift to i64
  %i.ke = trunc i64 %indvars.iv400 to i8          ; 2 uses
  %i.kf = getelementptr inbounds nuw [64 x i8], ptr %3, i64 %.sroa.3.0.extract.trunc.i346
  %i.kg = zext nneg i16 %.sroa.054.0.extract.trunc.mask to i64
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %i.kf, i64 %i.kg ; 2 uses
  store i8 %i.ke, ptr %i.kh, align 2, !tbaa !26
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 1
  store i8 31, ptr %i.ki, align 1, !tbaa !27
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %i.gy, i64 %indvars.iv400 ; 2 uses
  store i8 %i.ke, ptr %i.kj, align 2, !tbaa !26
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 1
  store i8 31, ptr %i.kk, align 1, !tbaa !27
  br label %.sink.split448
end_hunk_1
