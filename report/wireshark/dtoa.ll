Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/dtoa?download=true
inline.NumInlined: 43
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@pow5mult:bb.a
  %.not29 = icmp eq i32 %i.g, 0
  br i1 %.not29, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @TI0, i64 64), align 8 ; 2 uses
  %.not30 = icmp eq ptr %i.h, null
  br i1 %.not30, label %bb.e, label %.preheader

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @TI0, i64 8), align 8 ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %i.i, align 8
  store ptr %i.j, ptr getelementptr inbounds nuw (i8, ptr @TI0, i64 8), align 8
  br label %i2b.exit

bb.g:                                             ; preds = %bb.e
  %i.k = load ptr, ptr @pmem_next, align 8        ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, ptrtoint (ptr @private_mem to i64)
  %i.n = icmp slt i64 %i.m, 2272
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr i8, ptr %i.k, i64 40
  store ptr %i.o, ptr @pmem_next, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.p = tail call noalias dereferenceable_or_null(40) ptr @g_malloc(i64 noundef 40) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %i.k, %bb.h ], [ %i.p, %bb.i ] ; 3 uses
  %i.q = getelementptr i8, ptr %.0.i.i, i64 8
  store i32 1, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %.0.i.i, i64 12
  store i32 2, ptr %i.r, align 4
  br label %i2b.exit

i2b.exit:                                         ; preds = %bb.f, %bb.j
  %.1.i.i = phi ptr [ %i.i, %bb.f ], [ %.0.i.i, %bb.j ] ; 5 uses
  %i.s = getelementptr i8, ptr %.1.i.i, i64 20
  %i.t = getelementptr i8, ptr %.1.i.i, i64 16
  store i32 0, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %.1.i.i, i64 24
  store i32 625, ptr %i.u, align 8
  store i32 1, ptr %i.s, align 4
  store ptr %.1.i.i, ptr getelementptr inbounds nuw (i8, ptr @TI0, i64 64), align 8
  br label %.sink.split

.sink.split:                                      ; preds = %i2b.exit, %bb.q
  %.sink = phi ptr [ %i.af, %bb.q ], [ %.1.i.i, %i2b.exit ] ; 2 uses
  %.122.ph = phi ptr [ %.2, %bb.q ], [ %.021, %i2b.exit ]
  %.020.ph = phi i32 [ %i.ad, %bb.q ], [ %i.g, %i2b.exit ]
  store ptr null, ptr %.sink, align 8
  br label %.preheader

.preheader:                                       ; preds = %bb.d, %.sink.split
  %.122.ph41 = phi ptr [ %.122.ph, %.sink.split ], [ %.021, %bb.d ]
  %.020.ph42 = phi i32 [ %.020.ph, %.sink.split ], [ %i.g, %bb.d ]
  %.1.ph = phi ptr [ %.sink, %.sink.split ], [ %i.h, %bb.d ]
  br label %bb.k

bb.k:                                             ; preds = %.preheader, %bb.p
  %.122 = phi ptr [ %.2, %bb.p ], [ %.122.ph41, %.preheader ] ; 7 uses
  %.020 = phi i32 [ %i.ad, %bb.p ], [ %.020.ph42, %.preheader ] ; 2 uses
  %.1 = phi ptr [ %i.ae, %bb.p ], [ %.1.ph, %.preheader ] ; 5 uses
  %i.v = and i32 %.020, 1
  %.not31 = icmp eq i32 %i.v, 0
  br i1 %.not31, label %Bfree.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = tail call fastcc ptr @mult(ptr noundef %.122, ptr noundef %.1) ; 3 uses
  %.not.i = icmp eq ptr %.122, null
  br i1 %.not.i, label %Bfree.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr i8, ptr %.122, i64 8
  %i.y = load i32, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp sgt i32 %i.y, 7
  br i1 %i.z, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @g_free(ptr noundef nonnull %.122)
  br label %Bfree.exit

bb.o:                                             ; preds = %bb.m
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr [8 x i8], ptr @TI0, i64 %i.aa ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  store ptr %i.ac, ptr %.122, align 8
  store ptr %.122, ptr %i.ab, align 8
  br label %Bfree.exit

Bfree.exit:                                       ; preds = %bb.o, %bb.n, %bb.l, %bb.k
  %.2 = phi ptr [ %.122, %bb.k ], [ %i.w, %bb.l ], [ %i.w, %bb.n ], [ %i.w, %bb.o ] ; 3 uses
  %i.ad = lshr i32 %.020, 1                       ; 3 uses
  %.not32 = icmp eq i32 %i.ad, 0
  br i1 %.not32, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %Bfree.exit
  %i.ae = load ptr, ptr %.1, align 8              ; 2 uses
  %.not33 = icmp eq ptr %i.ae, null
  br i1 %.not33, label %bb.q, label %bb.k

bb.q:                                             ; preds = %bb.p
  %i.af = tail call fastcc ptr @mult(ptr noundef %.1, ptr noundef %.1) ; 2 uses
  store ptr %i.af, ptr %.1, align 8
  br label %.sink.split

.loopexit:                                        ; preds = %Bfree.exit, %bb.c
  %.023 = phi ptr [ %.021, %bb.c ], [ %.2, %Bfree.exit ]
  ret ptr %.023
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc ptr @mult(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp slt i32 %i.b, %i.d                  ; 2 uses
  %spec.select = select i1 %i.e, ptr %1, ptr %0   ; 4 uses
  %spec.select65 = select i1 %i.e, ptr %0, ptr %1 ; 2 uses
  %i.f = getelementptr i8, ptr %spec.select, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %spec.select, i64 20
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = getelementptr i8, ptr %spec.select65, i64 20
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = add i32 %i.k, %i.i                       ; 5 uses
  %i.m = getelementptr i8, ptr %spec.select, i64 12
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp sgt i32 %i.l, %i.n
  %i.p = zext i1 %i.o to i32
  %.059 = add i32 %i.g, %i.p                      ; 5 uses
  %i.q = icmp slt i32 %.059, 8
  br i1 %i.q, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.r = sext i32 %.059 to i64
  %i.s = getelementptr [8 x i8], ptr @TI0, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.t, align 8
  store ptr %i.u, ptr %i.s, align 8
  br label %Balloc.exit

bb.d:                                             ; preds = %bb.a
  %i.v = shl nuw i32 1, %.059                     ; 2 uses
  %i.w = add i32 %i.v, -1
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 2
  %i.z = add nuw nsw i64 %i.y, 36
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.aa = shl nuw nsw i32 1, %.059                ; 3 uses
  %i.ab = add nsw i32 %i.aa, -1
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %i.ae = add nuw nsw i64 %i.ad, 36               ; 2 uses
  %i.af = lshr i64 %i.ae, 3                       ; 2 uses
  %i.ag = load ptr, ptr @pmem_next, align 8       ; 3 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, ptrtoint (ptr @private_mem to i64)
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = add nsw i64 %i.aj, %i.af
  %i.al = icmp slt i64 %i.ak, 289
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr [8 x i8], ptr %i.ag, i64 %i.af
  store ptr %i.am, ptr @pmem_next, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.an = phi i64 [ %i.ae, %bb.e ], [ %i.z, %bb.d ]
  %i.ao = phi i32 [ %i.aa, %bb.e ], [ %i.v, %bb.d ]
  %i.ap = and i64 %i.an, 34359738360
  %i.aq = tail call noalias ptr @g_malloc(i64 noundef %i.ap) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ar = phi i32 [ %i.aa, %bb.f ], [ %i.ao, %bb.g ]
  %.0.i = phi ptr [ %i.ag, %bb.f ], [ %i.aq, %bb.g ] ; 3 uses
  %i.as = getelementptr i8, ptr %.0.i, i64 8
  store i32 %.059, ptr %i.as, align 8
  %i.at = getelementptr i8, ptr %.0.i, i64 12
  store i32 %i.ar, ptr %i.at, align 4
  br label %Balloc.exit

Balloc.exit:                                      ; preds = %bb.c, %bb.h
  %.1.i = phi ptr [ %i.t, %bb.c ], [ %.0.i, %bb.h ] ; 5 uses
  %i.au = getelementptr i8, ptr %.1.i, i64 20     ; 2 uses
  store i32 0, ptr %i.au, align 4
  %i.av = getelementptr i8, ptr %.1.i, i64 16
  store i32 0, ptr %i.av, align 8
  %i.aw = getelementptr i8, ptr %.1.i, i64 24     ; 4 uses
  %i.ax = sext i32 %i.l to i64                    ; 2 uses
  %i.ay = getelementptr [4 x i8], ptr %i.aw, i64 %i.ax ; 2 uses
  %i.az = icmp ult ptr %i.aw, %i.ay
  br i1 %i.az, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %Balloc.exit
  %.1.i79 = ptrtoaddr ptr %.1.i to i64            ; 3 uses
  %i.ba = shl nsw i64 %i.ax, 2
  %2 = add i64 %i.ba, %.1.i79
  %3 = add i64 %2, 24
  %4 = add i64 %.1.i79, 28
  %umax = tail call i64 @llvm.umax.i64(i64 %3, i64 %4)
  %5 = add i64 %umax, -25
  %6 = sub i64 %5, %.1.i79
  %7 = and i64 %6, -4
  %8 = add i64 %7, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aw, i8 0, i64 %8, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %Balloc.exit
  %i.bb = getelementptr i8, ptr %spec.select, i64 24 ; 2 uses
  %i.bc = sext i32 %i.i to i64
  %i.bd = getelementptr [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = getelementptr i8, ptr %spec.select65, i64 24 ; 3 uses
  %i.bf = sext i32 %i.k to i64
  %i.bg = getelementptr [4 x i8], ptr %i.be, i64 %i.bf ; 2 uses
  %i.bh = icmp ult ptr %i.be, %i.bg
  br i1 %i.bh, label %.lr.ph72, label %.preheader

.preheader:                                       ; preds = %bb.k, %._crit_edge
  %i.bi = icmp sgt i32 %i.l, 0
  br i1 %i.bi, label %.lr.ph75, label %.critedge

.lr.ph72:                                         ; preds = %._crit_edge, %bb.k
  %.05370 = phi ptr [ %i.bz, %bb.k ], [ %i.aw, %._crit_edge ] ; 2 uses
  %.05569 = phi ptr [ %i.bj, %bb.k ], [ %i.be, %._crit_edge ] ; 2 uses
  %i.bj = getelementptr i8, ptr %.05569, i64 4    ; 2 uses
  %i.bk = load i32, ptr %.05569, align 4          ; 2 uses
  %.not64 = icmp eq i32 %i.bk, 0
  br i1 %.not64, label %bb.k, label %.preheader66

.preheader66:                                     ; preds = %.lr.ph72
  %i.bl = zext i32 %i.bk to i64
  br label %bb.i

bb.i:                                             ; preds = %.preheader66, %bb.i
  %.157 = phi ptr [ %i.bm, %bb.i ], [ %i.bb, %.preheader66 ] ; 2 uses
  %.054 = phi ptr [ %i.bw, %bb.i ], [ %.05370, %.preheader66 ] ; 3 uses
  %.0 = phi i64 [ %i.bu, %bb.i ], [ 0, %.preheader66 ]
  %i.bm = getelementptr i8, ptr %.157, i64 4      ; 2 uses
  %i.bn = load i32, ptr %.157, align 4
  %i.bo = zext i32 %i.bn to i64
  %i.bp = mul nuw i64 %i.bo, %i.bl
  %i.bq = load i32, ptr %.054, align 4
  %i.br = zext i32 %i.bq to i64
  %i.bs = add nuw nsw i64 %.0, %i.br
  %i.bt = add nuw i64 %i.bs, %i.bp                ; 2 uses
  %i.bu = lshr i64 %i.bt, 32                      ; 2 uses
  %i.bv = trunc i64 %i.bt to i32
  %i.bw = getelementptr i8, ptr %.054, i64 4      ; 2 uses
  store i32 %i.bv, ptr %.054, align 4
  %i.bx = icmp ult ptr %i.bm, %i.bd
  br i1 %i.bx, label %bb.i, label %bb.j, !llvm.loop !14

bb.j:                                             ; preds = %bb.i
  %i.by = trunc nuw i64 %i.bu to i32
  store i32 %i.by, ptr %i.bw, align 4
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph72, %bb.j
  %i.bz = getelementptr i8, ptr %.05370, i64 4
  %i.ca = icmp ult ptr %i.bj, %i.bg
  br i1 %i.ca, label %.lr.ph72, label %.preheader, !llvm.loop !15

.lr.ph75:                                         ; preds = %.preheader, %bb.l
  %.174 = phi ptr [ %i.cb, %bb.l ], [ %i.ay, %.preheader ]
  %.05873 = phi i32 [ %i.cd, %bb.l ], [ %i.l, %.preheader ] ; 3 uses
  %i.cb = getelementptr i8, ptr %.174, i64 -4     ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4
  %.not = icmp eq i32 %i.cc, 0
  br i1 %.not, label %bb.l, label %.critedge

bb.l:                                             ; preds = %.lr.ph75
  %i.cd = add nsw i32 %.05873, -1
  %i.ce = icmp sgt i32 %.05873, 1
  br i1 %i.ce, label %.lr.ph75, label %.critedge, !llvm.loop !16

.critedge:                                        ; preds = %.lr.ph75, %bb.l, %.preheader
  %.058.lcssa = phi i32 [ %i.l, %.preheader ], [ 0, %bb.l ], [ %.05873, %.lr.ph75 ]
  store i32 %.058.lcssa, ptr %i.au, align 4
  ret ptr %.1.i
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc ptr @lshift(ptr noundef %0, i32 noundef range(i32 1, -2147483648) %1) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 7 uses
  %i.b = lshr i32 %1, 5                           ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = add i32 %i.f, %i.b                       ; 4 uses
  %i.h = add i32 %i.g, 1                          ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = icmp sgt i32 %i.h, %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.04251 = phi i32 [ %i.l, %.lr.ph ], [ %i.d, %bb.a ]
  %.04350 = phi i32 [ %i.m, %.lr.ph ], [ %i.j, %bb.a ]
  %i.l = add i32 %.04251, 1                       ; 2 uses
  %i.m = shl i32 %.04350, 1                       ; 2 uses
  %i.n = icmp sgt i32 %i.h, %i.m
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.042.lcssa = phi i32 [ %i.d, %bb.a ], [ %i.l, %.lr.ph ] ; 5 uses
  %i.o = icmp slt i32 %.042.lcssa, 8
  br i1 %i.o, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.p = sext i32 %.042.lcssa to i64
  %i.q = getelementptr [8 x i8], ptr @TI0, i64 %i.p ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.r, align 8
  store ptr %i.s, ptr %i.q, align 8
  br label %Balloc.exit

bb.d:                                             ; preds = %._crit_edge
  %i.t = shl nuw i32 1, %.042.lcssa               ; 2 uses
  %i.u = add i32 %i.t, -1
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = add nuw nsw i64 %i.w, 36
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.y = shl nuw nsw i32 1, %.042.lcssa           ; 3 uses
  %i.z = add nsw i32 %i.y, -1
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 2
  %i.ac = add nuw nsw i64 %i.ab, 36               ; 2 uses
  %i.ad = lshr i64 %i.ac, 3                       ; 2 uses
  %i.ae = load ptr, ptr @pmem_next, align 8       ; 3 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, ptrtoint (ptr @private_mem to i64)
  %i.ah = ashr exact i64 %i.ag, 3
  %i.ai = add nsw i64 %i.ah, %i.ad
  %i.aj = icmp slt i64 %i.ai, 289
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr [8 x i8], ptr %i.ae, i64 %i.ad
  store ptr %i.ak, ptr @pmem_next, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.al = phi i64 [ %i.ac, %bb.e ], [ %i.x, %bb.d ]
  %i.am = phi i32 [ %i.y, %bb.e ], [ %i.t, %bb.d ]
  %i.an = and i64 %i.al, 34359738360
  %i.ao = tail call noalias ptr @g_malloc(i64 noundef %i.an) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ap = phi i32 [ %i.y, %bb.f ], [ %i.am, %bb.g ]
  %.0.i = phi ptr [ %i.ae, %bb.f ], [ %i.ao, %bb.g ] ; 3 uses
  %i.aq = getelementptr i8, ptr %.0.i, i64 8
  store i32 %.042.lcssa, ptr %i.aq, align 8
  %i.ar = getelementptr i8, ptr %.0.i, i64 12
  store i32 %i.ap, ptr %i.ar, align 4
  br label %Balloc.exit

Balloc.exit:                                      ; preds = %bb.c, %bb.h
  %.1.i = phi ptr [ %i.r, %bb.c ], [ %.0.i, %bb.h ] ; 5 uses
  %i.as = getelementptr i8, ptr %.1.i, i64 20     ; 2 uses
  store i32 0, ptr %i.as, align 4
  %i.at = getelementptr i8, ptr %.1.i, i64 16
  store i32 0, ptr %i.at, align 8
  %i.au = getelementptr i8, ptr %.1.i, i64 24     ; 2 uses
  %.not57 = icmp eq i32 %i.b, 0
  br i1 %.not57, label %._crit_edge55, label %.lr.ph54.preheader

.lr.ph54.preheader:                               ; preds = %Balloc.exit
  %i.av = add nsw i32 %i.b, -1
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 2                ; 2 uses
  %i.ay = add nuw nsw i64 %i.ax, 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 %i.au, i8 0, i64 %i.ay, i1 false)
  %i.az = getelementptr i8, ptr %.1.i, i64 %i.ax
  %scevgep = getelementptr i8, ptr %i.az, i64 28
  br label %._crit_edge55

._crit_edge55:                                    ; preds = %.lr.ph54.preheader, %Balloc.exit
  %.038.lcssa = phi ptr [ %i.au, %Balloc.exit ], [ %scevgep, %.lr.ph54.preheader ] ; 9 uses
  %.038.lcssa72 = ptrtoaddr ptr %.038.lcssa to i64
  %i.ba = getelementptr i8, ptr %0, i64 24        ; 9 uses
  %i.bb = load i32, ptr %i.e, align 4
  %i.bc = sext i32 %i.bb to i64                   ; 3 uses
  %i.bd = getelementptr [4 x i8], ptr %i.ba, i64 %i.bc ; 2 uses
  %i.be = and i32 %1, 31                          ; 3 uses
  %.not = icmp eq i32 %i.be, 0
  br i1 %.not, label %.preheader.preheader, label %bb.i

.preheader.preheader:                             ; preds = %._crit_edge55
  %i.bf = shl nsw i64 %i.bc, 2
  %i.bg = add i64 %i.bf, %i.a
  %i.bh = add i64 %i.bg, 24
  %i.bi = add i64 %i.a, 28
  %i.bj = tail call i64 @llvm.umax.i64(i64 %i.bh, i64 %i.bi)
  %i.bk = add i64 %i.bj, -25
  %i.bl = sub i64 %i.bk, %i.a                     ; 2 uses
end_hunk_0
begin_hunk_1_@dtoa_g_fmt:bb.a
  %xtraiter = and i32 %i.ax, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph79.prol.loopexit, label %.lr.ph79.prol

.lr.ph79.prol:                                    ; preds = %.lr.ph79.preheader
  %i.az = mul i32 %i.at, %.041                    ; 0 uses
  %i.ba = mul i32 %.recomposed, 10                ; 2 uses
  %i.bb = sdiv i32 %i.ba, %.041                   ; 2 uses
  %i.bc = trunc i32 %i.bb to i8
  %i.bd = add i8 %i.bc, 48
  %i.be = getelementptr i8, ptr %.345, i64 4      ; 2 uses
  store i8 %i.bd, ptr %i.aw, align 1
  %i.bf = add i32 %.0, -2
  br label %.lr.ph79.prol.loopexit

.lr.ph79.prol.loopexit:                           ; preds = %.lr.ph79.prol, %.lr.ph79.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph79.preheader ], [ %i.be, %.lr.ph79.prol ]
  %.unr = phi i32 [ %i.aq, %.lr.ph79.preheader ], [ %i.ba, %.lr.ph79.prol ]
  %.unr123 = phi i32 [ %i.ax, %.lr.ph79.preheader ], [ %i.bf, %.lr.ph79.prol ]
  %.unr124 = phi ptr [ %i.aw, %.lr.ph79.preheader ], [ %i.be, %.lr.ph79.prol ]
  %.unr125 = phi i32 [ %i.at, %.lr.ph79.preheader ], [ %i.bb, %.lr.ph79.prol ]
  %i.bg = icmp eq i32 %.0, 2
  br i1 %i.bg, label %.loopexit.sink.split, label %.lr.ph79

.lr.ph79:                                         ; preds = %.lr.ph79.prol.loopexit, %.lr.ph79
  %i.bh = phi i32 [ %i.bt, %.lr.ph79 ], [ %.unr, %.lr.ph79.prol.loopexit ]
  %i.bi = phi i32 [ %i.by, %.lr.ph79 ], [ %.unr123, %.lr.ph79.prol.loopexit ] ; 2 uses
  %i.bj = phi ptr [ %i.bx, %.lr.ph79 ], [ %.unr124, %.lr.ph79.prol.loopexit ] ; 3 uses
  %i.bk = phi i32 [ %i.bu, %.lr.ph79 ], [ %.unr125, %.lr.ph79.prol.loopexit ]
  %i.bl = mul i32 %i.bk, %.041
  %i.bm = sub i32 %i.bh, %i.bl
  %i.bn = mul i32 %i.bm, 10                       ; 2 uses
  %i.bo = sdiv i32 %i.bn, %.041                   ; 2 uses
  %i.bp = trunc i32 %i.bo to i8
  %i.bq = add i8 %i.bp, 48
  %i.br = getelementptr i8, ptr %i.bj, i64 1
  store i8 %i.bq, ptr %i.bj, align 1
  %i.bs = mul i32 %i.bo, %.041                    ; 0 uses
  %.recomposed131 = srem i32 %i.bn, %.041
  %i.bt = mul i32 %.recomposed131, 10             ; 2 uses
  %i.bu = sdiv i32 %i.bt, %.041                   ; 2 uses
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = add i8 %i.bv, 48
  %i.bx = getelementptr i8, ptr %i.bj, i64 2      ; 2 uses
  store i8 %i.bw, ptr %i.br, align 1
  %i.by = add nsw i32 %i.bi, -2
  %i.bz = icmp slt i32 %i.bi, 3
  br i1 %i.bz, label %.loopexit.sink.split, label %.lr.ph79

bb.o:                                             ; preds = %bb.h
  %i.ca = icmp slt i32 %i.r, 1
  br i1 %i.ca, label %bb.p, label %.preheader61

.preheader61:                                     ; preds = %bb.o
  %i.cb = load i8, ptr %i.o, align 1              ; 2 uses
  store i8 %i.cb, ptr %.042, align 1
  %.not4962 = icmp eq i8 %i.cb, 0
  br i1 %.not4962, label %.lr.ph65.preheader, label %.lr.ph

bb.p:                                             ; preds = %bb.o
  %i.cc = getelementptr i8, ptr %.042, i64 1
  store i8 48, ptr %.042, align 1
  %i.cd = getelementptr i8, ptr %.042, i64 2      ; 2 uses
  store i8 46, ptr %i.cc, align 1
  %i.ce = icmp slt i32 %i.r, 0
  br i1 %i.ce, label %.lr.ph70.preheader, label %.preheader59.preheader

.lr.ph70.preheader:                               ; preds = %bb.p
  %i.cf = xor i32 %i.r, -1
  %i.cg = zext nneg i32 %i.cf to i64              ; 2 uses
  %i.ch = add nuw nsw i64 %i.cg, 1
  call void @llvm.memset.p0.i64(ptr noundef align 1 %i.cd, i8 48, i64 %i.ch, i1 false)
  %i.ci = getelementptr i8, ptr %.042, i64 %i.cg
  %scevgep = getelementptr i8, ptr %i.ci, i64 3
  br label %.preheader59.preheader

.preheader59.preheader:                           ; preds = %.lr.ph70.preheader, %bb.p
  %.7.ph = phi ptr [ %scevgep, %.lr.ph70.preheader ], [ %i.cd, %bb.p ]
  br label %.preheader59

.preheader59:                                     ; preds = %.preheader59.preheader, %.preheader59
  %.7 = phi ptr [ %i.cl, %.preheader59 ], [ %.7.ph, %.preheader59.preheader ] ; 2 uses
  %.2 = phi ptr [ %i.cj, %.preheader59 ], [ %i.o, %.preheader59.preheader ] ; 2 uses
  %i.cj = getelementptr i8, ptr %.2, i64 1
  %i.ck = load i8, ptr %.2, align 1               ; 2 uses
  %i.cl = getelementptr i8, ptr %.7, i64 1
  store i8 %i.ck, ptr %.7, align 1
  %.not51 = icmp eq i8 %i.ck, 0
  br i1 %.not51, label %.loopexit, label %.preheader59, !llvm.loop !33

.lr.ph:                                           ; preds = %.preheader61, %bb.s
  %.pn = phi ptr [ %i.cm, %bb.s ], [ %i.o, %.preheader61 ]
  %.863 = phi ptr [ %.9, %bb.s ], [ %.042, %.preheader61 ] ; 2 uses
  %i.cm = getelementptr i8, ptr %.pn, i64 1       ; 3 uses
  %i.cn = getelementptr i8, ptr %.863, i64 1      ; 4 uses
  %i.co = load i32, ptr %i.a, align 4
  %i.cp = add i32 %i.co, -1                       ; 2 uses
  store i32 %i.cp, ptr %i.a, align 4
  %i.cq = icmp eq i32 %i.cp, 0
  %.pre88 = load i8, ptr %i.cm, align 1           ; 2 uses
  br i1 %i.cq, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.lr.ph
  %.not50 = icmp eq i8 %.pre88, 0
  br i1 %.not50, label %.thread, label %bb.r

.thread:                                          ; preds = %bb.q
  store i8 0, ptr %i.cn, align 1
  br label %thread-pre-split

bb.r:                                             ; preds = %bb.q
  %i.cr = getelementptr i8, ptr %.863, i64 2
  store i8 46, ptr %i.cn, align 1
  %.pre = load i8, ptr %i.cm, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph
  %i.cs = phi i8 [ %.pre, %bb.r ], [ %.pre88, %.lr.ph ] ; 2 uses
  %.9 = phi ptr [ %i.cr, %bb.r ], [ %i.cn, %.lr.ph ] ; 3 uses
  store i8 %i.cs, ptr %.9, align 1
  %.not49 = icmp eq i8 %i.cs, 0
  br i1 %.not49, label %thread-pre-split, label %.lr.ph, !llvm.loop !34

thread-pre-split:                                 ; preds = %bb.s, %.thread
  %.9101 = phi ptr [ %i.cn, %.thread ], [ %.9, %bb.s ] ; 2 uses
  %.pr56.pre = load i32, ptr %i.a, align 4
  %i.ct = icmp sgt i32 %.pr56.pre, 0
  br i1 %i.ct, label %.lr.ph65.preheader, label %.loopexit.sink.split

.lr.ph65.preheader:                               ; preds = %.preheader61, %thread-pre-split
  %.1064.ph = phi ptr [ %.042, %.preheader61 ], [ %.9101, %thread-pre-split ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader, %.lr.ph65
  %.1064 = phi ptr [ %i.cu, %.lr.ph65 ], [ %.1064.ph, %.lr.ph65.preheader ] ; 2 uses
  %i.cu = getelementptr i8, ptr %.1064, i64 1     ; 2 uses
  store i8 48, ptr %.1064, align 1
  %i.cv = load i32, ptr %i.a, align 4
  %i.cw = add i32 %i.cv, -1                       ; 2 uses
  store i32 %i.cw, ptr %i.a, align 4
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph65, label %.loopexit.sink.split, !llvm.loop !35

.loopexit.sink.split:                             ; preds = %.lr.ph65, %.lr.ph79.prol.loopexit, %.lr.ph79, %thread-pre-split, %.preheader57
  %.lcssa.sink = phi ptr [ %i.bx, %.lr.ph79 ], [ %i.aw, %.preheader57 ], [ %.9101, %thread-pre-split ], [ %.lcssa.unr, %.lr.ph79.prol.loopexit ], [ %i.cu, %.lr.ph65 ]
  store i8 0, ptr %.lcssa.sink, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader59, %.preheader, %.loopexit.sink.split
  %i.cy = getelementptr i8, ptr %i.o, i64 -4      ; 5 uses
  %i.cz = load i32, ptr %i.cy, align 4            ; 4 uses
  %i.da = getelementptr i8, ptr %i.o, i64 4
  store i32 %i.cz, ptr %i.da, align 8
  %i.db = shl nuw i32 1, %i.cz
  %i.dc = getelementptr i8, ptr %i.o, i64 8
  store i32 %i.db, ptr %i.dc, align 4
  %.not.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i, label %Bfree.exit.i, label %bb.t

bb.t:                                             ; preds = %.loopexit
  %i.dd = icmp sgt i32 %i.cz, 7
  br i1 %i.dd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @g_free(ptr noundef nonnull %i.cy)
  br label %Bfree.exit.i

bb.v:                                             ; preds = %bb.t
  %i.de = sext i32 %i.cz to i64
  %i.df = getelementptr [8 x i8], ptr @TI0, i64 %i.de ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8
  store ptr %i.dg, ptr %i.cy, align 8
  store ptr %i.cy, ptr %i.df, align 8
  br label %Bfree.exit.i

Bfree.exit.i:                                     ; preds = %bb.v, %bb.u, %.loopexit
  %i.dh = load ptr, ptr @dtoa_result, align 8
  %i.di = icmp eq ptr %i.o, %i.dh
  br i1 %i.di, label %bb.w, label %freedtoa.exit

bb.w:                                             ; preds = %Bfree.exit.i
  store ptr null, ptr @dtoa_result, align 8
  br label %freedtoa.exit

freedtoa.exit:                                    ; preds = %Bfree.exit.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid
declare void @g_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { allocsize(0) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7, !19, !20}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7, !19}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
end_hunk_1
