Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/libunicode?download=true
inline.NumInlined: 121
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@unicode_general_category1:bb.a
  %i.v = shl nuw nsw i32 %i.q, 8
  %.add50 = add nuw nsw i64 %.042.idx74, 4
  %i.w = load i8, ptr %.ptr53, align 1, !tbaa !16
  %i.x = zext i8 %i.w to i32
  %i.y = add nsw i32 %i.u, -12566393
  %i.z = add nuw nsw i32 %i.y, %i.x
  %i.aa = add nuw nsw i32 %i.z, %i.v
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.b
  %.1.idx = phi i64 [ %.add, %bb.d ], [ %.add51, %bb.f ], [ %.add50, %bb.g ], [ %.042.add, %bb.b ] ; 2 uses
  %.0 = phi i32 [ %i.n, %bb.d ], [ %i.t, %bb.f ], [ %i.aa, %bb.g ], [ %i.h, %bb.b ]
  %i.ab = add i32 %.04175, 1
  %i.ac = add i32 %i.ab, %.0                      ; 4 uses
  %i.ad = icmp eq i32 %i.i, 31
  br i1 %i.ad, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  switch i32 %i.a, label %bb.j [
    i32 0, label %.loopexit
    i32 6, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i
  %i.ae = add i32 %.04175, %.lobit                ; 2 uses
  %i.af = icmp ult i32 %i.ae, %i.ac
  br i1 %i.af, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.j, %bb.l
  %.04073 = phi i32 [ %i.bc, %bb.l ], [ %i.ae, %bb.j ] ; 3 uses
  %i.ag = add nuw i32 %.04073, 1
  %i.ah = load i32, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.ai = add nsw i32 %i.ah, 2                    ; 2 uses
  %i.aj = load i32, ptr %i.b, align 4, !tbaa !25  ; 2 uses
  %i.ak = icmp sgt i32 %i.ai, %i.aj
  br i1 %i.ak, label %bb.k, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph
  %.pre.i = load ptr, ptr %.phi.trans.insert.i60, align 8, !tbaa !24
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph
  %i.al = mul nsw i32 %i.aj, 3
  %i.am = sdiv i32 %i.al, 2
  %..i.i.i = tail call range(i32 -1073741824, -2147483648) i32 @llvm.smax.i32(i32 %i.ai, i32 range(i32 -1073741824, 1073741824) %i.am) ; 2 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.ap = load ptr, ptr %.phi.trans.insert.i60, align 8, !tbaa !24
  %i.aq = sext i32 %..i.i.i to i64
  %i.ar = shl nsw i64 %i.aq, 2
  %i.as = tail call ptr %i.an(ptr noundef %i.ao, ptr noundef %i.ap, i64 noundef %i.ar) #21, !inline_history !44 ; 3 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %cr_add_interval.exit, label %cr_realloc.exit.thread.i

cr_realloc.exit.thread.i:                         ; preds = %bb.k
  store ptr %i.as, ptr %.phi.trans.insert.i60, align 8, !tbaa !24
  store i32 %..i.i.i, ptr %i.b, align 4, !tbaa !25
  %.pre13.i = load i32, ptr %0, align 8, !tbaa !26
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i, %cr_realloc.exit.thread.i
  %i.at = phi i32 [ %i.ah, %._crit_edge.i ], [ %.pre13.i, %cr_realloc.exit.thread.i ] ; 2 uses
  %i.au = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.as, %cr_realloc.exit.thread.i ] ; 2 uses
  %i.av = add nsw i32 %i.at, 1
  store i32 %i.av, ptr %0, align 8, !tbaa !26
  %i.aw = sext i32 %i.at to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aw
  store i32 %.04073, ptr %i.ax, align 4, !tbaa !14
  %i.ay = load i32, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %0, align 8, !tbaa !26
  %i.ba = sext i32 %i.ay to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ba
  store i32 %i.ag, ptr %i.bb, align 4, !tbaa !14
  %i.bc = add i32 %.04073, 2                      ; 2 uses
  %i.bd = icmp ult i32 %i.bc, %i.ac
  br i1 %i.bd, label %.lr.ph, label %.loopexit, !llvm.loop !91

bb.m:                                             ; preds = %bb.h
  %i.be = shl nuw nsw i32 1, %i.i
  %i.bf = and i32 %i.be, %1
  %.not = icmp eq i32 %i.bf, 0
  br i1 %.not, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.m
  %i.bg = load i32, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.bh = add nsw i32 %i.bg, 2                    ; 2 uses
  %i.bi = load i32, ptr %i.b, align 4, !tbaa !25  ; 2 uses
  %i.bj = icmp sgt i32 %i.bh, %i.bi
  br i1 %i.bj, label %bb.o, label %._crit_edge.i59

._crit_edge.i59:                                  ; preds = %bb.n
  %.pre.i61 = load ptr, ptr %.phi.trans.insert.i60, align 8, !tbaa !24
  br label %cr_add_interval.exit67.thread

bb.o:                                             ; preds = %bb.n
  %i.bk = mul nsw i32 %i.bi, 3
  %i.bl = sdiv i32 %i.bk, 2
  %..i.i.i63 = tail call range(i32 -1073741824, -2147483648) i32 @llvm.smax.i32(i32 %i.bh, i32 range(i32 -1073741824, 1073741824) %i.bl) ; 2 uses
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.bo = load ptr, ptr %.phi.trans.insert.i60, align 8, !tbaa !24
  %i.bp = sext i32 %..i.i.i63 to i64
  %i.bq = shl nsw i64 %i.bp, 2
  %i.br = tail call ptr %i.bm(ptr noundef %i.bn, ptr noundef %i.bo, i64 noundef %i.bq) #21, !inline_history !44 ; 3 uses
  %.not.i.i64 = icmp eq ptr %i.br, null
  br i1 %.not.i.i64, label %cr_add_interval.exit, label %cr_realloc.exit.thread.i65

cr_realloc.exit.thread.i65:                       ; preds = %bb.o
  store ptr %i.br, ptr %.phi.trans.insert.i60, align 8, !tbaa !24
  store i32 %..i.i.i63, ptr %i.b, align 4, !tbaa !25
  %.pre13.i66 = load i32, ptr %0, align 8, !tbaa !26
  br label %cr_add_interval.exit67.thread

cr_add_interval.exit67.thread:                    ; preds = %._crit_edge.i59, %cr_realloc.exit.thread.i65
  %i.bs = phi i32 [ %i.bg, %._crit_edge.i59 ], [ %.pre13.i66, %cr_realloc.exit.thread.i65 ] ; 2 uses
  %i.bt = phi ptr [ %.pre.i61, %._crit_edge.i59 ], [ %i.br, %cr_realloc.exit.thread.i65 ] ; 2 uses
  %i.bu = add nsw i32 %i.bs, 1
  store i32 %i.bu, ptr %0, align 8, !tbaa !26
  %i.bv = sext i32 %i.bs to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bv
  store i32 %.04175, ptr %i.bw, align 4, !tbaa !14
  %i.bx = load i32, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %0, align 8, !tbaa !26
  %i.bz = sext i32 %i.bx to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bz
  store i32 %i.ac, ptr %i.ca, align 4, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.j, %cr_add_interval.exit67.thread, %bb.i, %bb.m
  %i.cb = icmp slt i64 %.1.idx, 4122
  br i1 %i.cb, label %bb.b, label %cr_add_interval.exit, !llvm.loop !92

cr_add_interval.exit:                             ; preds = %bb.o, %.loopexit, %bb.k
  %.043 = phi i32 [ -1, %bb.k ], [ -1, %bb.o ], [ 0, %.loopexit ]
  ret i32 %.043
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2147483648, 1) i32 @unicode_sequence_prop(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #24 ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.h, %bb.a
  %.01829.i = phi i32 [ %i.j, %bb.h ], [ 0, %bb.a ] ; 2 uses
  %.01928.i = phi ptr [ %i.i, %bb.h ], [ @unicode_sequence_prop_name_table, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.preheader.i
  %.1.i = phi ptr [ %i.i, %bb.g ], [ %.01928.i, %.preheader.i ] ; 5 uses
  %i.b = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.1.i, i32 noundef 44) #24 ; 2 uses
  %.not23.i = icmp eq ptr %i.b, null              ; 2 uses
  br i1 %.not23.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1.i) #24
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %.1.i to i64
  %i.f = sub i64 %i.d, %i.e
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i64 [ %i.f, %bb.d ], [ %i.c, %bb.c ] ; 2 uses
  %i.g = icmp eq i64 %.0.i, %i.a
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %.1.i, ptr nonnull readonly %0, i64 %i.a)
  %.not24.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not24.i, label %unicode_find_name.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.h = getelementptr i8, ptr %.1.i, i64 %.0.i
  %i.i = getelementptr i8, ptr %i.h, i64 1        ; 3 uses
  br i1 %.not23.i, label %bb.h, label %bb.b

bb.h:                                             ; preds = %bb.g
  %i.j = add nuw nsw i32 %.01829.i, 1
  %i.k = load i8, ptr %i.i, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.k, 0
  br i1 %.not.i, label %unicode_find_name.exit.thread, label %.preheader.i, !llvm.loop !3

unicode_find_name.exit:                           ; preds = %bb.f
  %i.l = tail call fastcc i32 @unicode_sequence_prop1(i32 noundef %.01829.i, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %unicode_find_name.exit.thread

unicode_find_name.exit.thread:                    ; preds = %bb.h, %unicode_find_name.exit
  %.0 = phi i32 [ %i.l, %unicode_find_name.exit ], [ -2, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @unicode_sequence_prop1(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 48 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  switch i32 %0, label %.loopexit [
    i32 0, label %bb.b
    i32 2, label %bb.e
    i32 3, label %bb.g
    i32 5, label %.preheader201.preheader
    i32 4, label %.preheader200
    i32 1, label %bb.x
    i32 6, label %.preheader204.preheader
  ]

.preheader204.preheader:                          ; preds = %bb.a
  %i.b = tail call fastcc i32 @unicode_sequence_prop1(i32 noundef 0, ptr noundef %1, ptr noundef %2, ptr noundef %3) ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %.preheader204.1, label %.loopexit

.preheader201.preheader:                          ; preds = %bb.a
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i32 @unicode_prop1(ptr noundef %3, i32 noundef 16)
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %.loopexit, label %.preheader192

.preheader192:                                    ; preds = %bb.b
  %i.f = load i32, ptr %3, align 8, !tbaa !26     ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph274, label %._crit_edge275.a

.lr.ph274:                                        ; preds = %.preheader192
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.pre340 = load ptr, ptr %i.h, align 8, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph274, %._crit_edge272
  %i.i = phi i32 [ %i.f, %.lr.ph274 ], [ %i.v, %._crit_edge272 ]
  %i.j = phi ptr [ %.pre340, %.lr.ph274 ], [ %i.w, %._crit_edge272 ] ; 2 uses
  %indvars.iv329 = phi i64 [ 0, %.lr.ph274 ], [ %indvars.iv.next330, %._crit_edge272 ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv329 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !14   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !14
  %i.o = icmp ult i32 %i.l, %i.n
  br i1 %i.o, label %.lr.ph271, label %._crit_edge272

.lr.ph271:                                        ; preds = %bb.c, %.lr.ph271
  %.0170269 = phi i32 [ %i.p, %.lr.ph271 ], [ %i.l, %bb.c ] ; 2 uses
  store i32 %.0170269, ptr %i.a, align 16, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 1) #21
  %i.p = add nuw nsw i32 %.0170269, 1             ; 2 uses
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv329
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !14
  %i.u = icmp ult i32 %i.p, %i.t
  br i1 %i.u, label %.lr.ph271, label %._crit_edge272.loopexit, !llvm.loop !93

._crit_edge272.loopexit:                          ; preds = %.lr.ph271
  %.pre341 = load i32, ptr %3, align 8, !tbaa !26
  br label %._crit_edge272

._crit_edge272:                                   ; preds = %._crit_edge272.loopexit, %bb.c
  %i.v = phi i32 [ %.pre341, %._crit_edge272.loopexit ], [ %i.i, %bb.c ] ; 2 uses
  %i.w = phi ptr [ %i.q, %._crit_edge272.loopexit ], [ %i.j, %bb.c ]
  %indvars.iv.next330 = add nuw nsw i64 %indvars.iv329, 2 ; 2 uses
  %i.x = trunc nuw i64 %indvars.iv.next330 to i32
  %i.y = icmp sgt i32 %i.v, %i.x
  br i1 %i.y, label %bb.c, label %._crit_edge275.a, !llvm.loop !94

._crit_edge275.a:                                 ; preds = %._crit_edge272, %.preheader192
  store i32 0, ptr %3, align 8, !tbaa !26
  %i.z = call fastcc i32 @unicode_prop1(ptr noundef nonnull %3, i32 noundef 17)
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge275.a
  %i.ab = load i32, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph281, label %.loopexit

.lr.ph281:                                        ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.pre342 = load ptr, ptr %i.ad, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph281, %._crit_edge279
  %i.af = phi i32 [ %i.ab, %.lr.ph281 ], [ %i.as, %._crit_edge279 ]
  %i.ag = phi ptr [ %.pre342, %.lr.ph281 ], [ %i.at, %._crit_edge279 ] ; 2 uses
  %indvars.iv332.a = phi i64 [ 0, %.lr.ph281 ], [ %indvars.iv.next333.a, %._crit_edge279 ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv332.a ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !14 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !14
  %i.al = icmp ult i32 %i.ai, %i.ak
  br i1 %i.al, label %.lr.ph278, label %._crit_edge279

.lr.ph278:                                        ; preds = %bb.d, %.lr.ph278
  %.1171276 = phi i32 [ %i.am, %.lr.ph278 ], [ %i.ai, %bb.d ] ; 2 uses
  store i32 %.1171276, ptr %i.a, align 16, !tbaa !14
  store i32 65039, ptr %i.ae, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 2) #21
  %i.am = add nuw nsw i32 %.1171276, 1            ; 2 uses
  %i.an = load ptr, ptr %i.ad, align 8, !tbaa !24 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv332.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !14
  %i.ar = icmp ult i32 %i.am, %i.aq
  br i1 %i.ar, label %.lr.ph278, label %._crit_edge279.loopexit, !llvm.loop !95

._crit_edge279.loopexit:                          ; preds = %.lr.ph278
  %.pre343 = load i32, ptr %3, align 8, !tbaa !26
  br label %._crit_edge279

._crit_edge279:                                   ; preds = %._crit_edge279.loopexit, %bb.d
  %i.as = phi i32 [ %.pre343, %._crit_edge279.loopexit ], [ %i.af, %bb.d ] ; 2 uses
  %i.at = phi ptr [ %i.an, %._crit_edge279.loopexit ], [ %i.ag, %bb.d ]
  %indvars.iv.next333.a = add nuw nsw i64 %indvars.iv332.a, 2 ; 2 uses
  %i.au = trunc nuw i64 %indvars.iv.next333.a to i32
  %i.av = icmp sgt i32 %i.as, %i.au
  br i1 %i.av, label %bb.d, label %.loopexit, !llvm.loop !96

bb.e:                                             ; preds = %bb.a
  %i.aw = tail call fastcc i32 @unicode_prop1(ptr noundef %3, i32 noundef 50)
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %.loopexit, label %.preheader194.a

.preheader194.a:                                  ; preds = %bb.e
  %i.ay = load i32, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph268, label %.loopexit

.lr.ph268:                                        ; preds = %.preheader194.a
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 5 uses
  %.pre338 = load ptr, ptr %i.ba, align 8, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph268, %._crit_edge266
  %i.bc = phi i32 [ %i.ay, %.lr.ph268 ], [ %i.bp, %._crit_edge266 ]
  %i.bd = phi ptr [ %.pre338, %.lr.ph268 ], [ %i.bq, %._crit_edge266 ] ; 2 uses
  %indvars.iv326 = phi i64 [ 0, %.lr.ph268 ], [ %indvars.iv.next327, %._crit_edge266 ] ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv326 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !14 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !14
  %i.bi = icmp ult i32 %i.bf, %i.bh
  br i1 %i.bi, label %.preheader193, label %._crit_edge266

.preheader193:                                    ; preds = %bb.f, %.preheader193
  %.2172265 = phi i32 [ %i.bj, %.preheader193 ], [ %i.bf, %bb.f ] ; 6 uses
  store i32 %.2172265, ptr %i.a, align 16, !tbaa !14
  store i32 127995, ptr %i.bb, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 2) #21
  store i32 %.2172265, ptr %i.a, align 16, !tbaa !14
  store i32 127996, ptr %i.bb, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 2) #21
  store i32 %.2172265, ptr %i.a, align 16, !tbaa !14
  store i32 127997, ptr %i.bb, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 2) #21
  store i32 %.2172265, ptr %i.a, align 16, !tbaa !14
  store i32 127998, ptr %i.bb, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 2) #21
  store i32 %.2172265, ptr %i.a, align 16, !tbaa !14
  store i32 127999, ptr %i.bb, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 2) #21
  %i.bj = add nuw nsw i32 %.2172265, 1            ; 2 uses
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !24 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv326
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !14
  %i.bo = icmp ult i32 %i.bj, %i.bn
  br i1 %i.bo, label %.preheader193, label %._crit_edge266.loopexit, !llvm.loop !97

._crit_edge266.loopexit:                          ; preds = %.preheader193
  %.pre339 = load i32, ptr %3, align 8, !tbaa !26
  br label %._crit_edge266

._crit_edge266:                                   ; preds = %._crit_edge266.loopexit, %bb.f
  %i.bp = phi i32 [ %.pre339, %._crit_edge266.loopexit ], [ %i.bc, %bb.f ] ; 2 uses
  %i.bq = phi ptr [ %i.bk, %._crit_edge266.loopexit ], [ %i.bd, %bb.f ]
  %indvars.iv.next327 = add nuw nsw i64 %indvars.iv326, 2 ; 2 uses
  %i.br = trunc nuw i64 %indvars.iv.next327 to i32
  %i.bs = icmp sgt i32 %i.bp, %i.br
  br i1 %i.bs, label %bb.f, label %.loopexit, !llvm.loop !98

bb.g:                                             ; preds = %bb.a
  %i.bt = tail call fastcc i32 @unicode_prop1(ptr noundef %3, i32 noundef 18)
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %.loopexit, label %.preheader196

.preheader196:                                    ; preds = %bb.g
  %i.bv = load i32, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph263, label %.loopexit

.lr.ph263:                                        ; preds = %.preheader196
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.pre336 = load ptr, ptr %i.bx, align 8, !tbaa !24
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph263, %._crit_edge261
  %i.bz = phi i32 [ %i.bv, %.lr.ph263 ], [ %i.cq, %._crit_edge261 ]
  %i.ca = phi ptr [ %.pre336, %.lr.ph263 ], [ %i.cr, %._crit_edge261 ] ; 2 uses
  %indvars.iv322 = phi i64 [ 0, %.lr.ph263 ], [ %indvars.iv.next323, %._crit_edge261 ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv322 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !14 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !14
  %i.cf = icmp ult i32 %i.cc, %i.ce
  br i1 %i.cf, label %.lr.ph260, label %._crit_edge261

.lr.ph260:                                        ; preds = %bb.h, %.lr.ph260
  %.3173258 = phi i32 [ %i.ck, %.lr.ph260 ], [ %i.cc, %bb.h ] ; 3 uses
  %i.cg = sdiv i32 %.3173258, 26
  %i.ch = srem i32 %.3173258, 26
  %i.ci = add nsw i32 %i.cg, 127462
  store i32 %i.ci, ptr %i.a, align 16, !tbaa !14
  %i.cj = add nsw i32 %i.ch, 127462
  store i32 %i.cj, ptr %i.by, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 2) #21
  %i.ck = add nuw nsw i32 %.3173258, 1            ; 2 uses
  %i.cl = load ptr, ptr %i.bx, align 8, !tbaa !24 ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv322
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !14
  %i.cp = icmp ult i32 %i.ck, %i.co
  br i1 %i.cp, label %.lr.ph260, label %._crit_edge261.loopexit, !llvm.loop !99

._crit_edge261.loopexit:                          ; preds = %.lr.ph260
  %.pre337 = load i32, ptr %3, align 8, !tbaa !26
  br label %._crit_edge261

._crit_edge261:                                   ; preds = %._crit_edge261.loopexit, %bb.h
  %i.cq = phi i32 [ %.pre337, %._crit_edge261.loopexit ], [ %i.bz, %bb.h ] ; 2 uses
  %i.cr = phi ptr [ %i.cl, %._crit_edge261.loopexit ], [ %i.ca, %bb.h ]
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 2 ; 2 uses
  %i.cs = trunc nuw i64 %indvars.iv.next323 to i32
  %i.ct = icmp sgt i32 %i.cq, %i.cs
  br i1 %i.ct, label %bb.h, label %.loopexit, !llvm.loop !100

.loopexit199:                                     ; preds = %.preheader198.us245, %.preheader198.us241, %bb.w, %.split.us.us
  %.5.lcssa400 = phi i32 [ %.5.lcssa402, %.split.us.us ], [ %.5.lcssa378416, %bb.w ], [ %i.ex, %.preheader198.us241 ], [ %i.ex, %.preheader198.us245 ] ; 2 uses
  %.sroa.0.1.lcssa395 = phi i32 [ %.0151386, %.split.us.us ], [ %.sroa.0.1.lcssa393443, %bb.w ], [ %.sroa.0.2, %.preheader198.us241 ], [ %.sroa.0.2, %.preheader198.us245 ]
  %.5.lcssa380 = phi i32 [ %.5.lcssa382, %.split.us.us ], [ %.sroa.5.1.lcssa388444, %bb.w ], [ %.sroa.5.2, %.preheader198.us241 ], [ %.sroa.5.2, %.preheader198.us245 ]
  %i.cu = icmp ult i32 %.5.lcssa400, 2392
  br i1 %i.cu, label %bb.i, label %.loopexit, !llvm.loop !101

bb.i:                                             ; preds = %.preheader201.preheader, %.loopexit199
  %.sroa.0.0266 = phi i32 [ %.sroa.0.1.lcssa395, %.loopexit199 ], [ undef, %.preheader201.preheader ] ; 6 uses
  %.sroa.5.0265 = phi i32 [ %.5.lcssa380, %.loopexit199 ], [ undef, %.preheader201.preheader ] ; 6 uses
  %.4257 = phi i32 [ %.5.lcssa400, %.loopexit199 ], [ 0, %.preheader201.preheader ] ; 4 uses
  %i.cv = zext nneg i32 %.4257 to i64             ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr @unicode_rgi_emoji_zwj_sequence, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !16  ; 3 uses
  %i.cy = zext i8 %i.cx to i32                    ; 2 uses
  %.5217 = add nuw nsw i32 %.4257, 1
  %.not282 = icmp eq i8 %i.cx, 0
  br i1 %.not282, label %.preheader198, label %bb.k

bb.j:                                             ; preds = %bb.v, %bb.u
  %indvars.iv306 = phi i64 [ %indvars.iv.next307399, %bb.u ], [ %indvars.iv.next307.jt0, %bb.v ]
  %indvars.iv304 = phi i64 [ %indvars.iv.next305, %bb.u ], [ %indvars.iv.next305.jt0, %bb.v ] ; 3 uses
  %.0153228 = phi i32 [ %.1401, %bb.u ], [ %.1.jt0, %bb.v ]
  %.sroa.0.1227 = phi i32 [ %.sroa.0.2, %bb.u ], [ %.sroa.0.0266, %bb.v ] ; 2 uses
  %.0152223 = phi i32 [ %.sroa.5.2, %bb.u ], [ %.sroa.5.0265, %bb.v ] ; 2 uses
  %.0153222 = phi i32 [ %.1154, %bb.u ], [ 0, %bb.v ] ; 2 uses
  %.0155221 = phi i32 [ %.1156, %bb.u ], [ 0, %bb.v ]
  %.0157220 = phi i32 [ %.3, %bb.u ], [ %.3.jt0, %bb.v ] ; 4 uses
  %.1168218 = phi i32 [ %i.eu, %bb.u ], [ 1, %bb.v ] ; 2 uses
  %indvars.iv.next307 = add nuw nsw i64 %indvars.iv306, 2 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr @unicode_rgi_emoji_zwj_sequence, i64 %indvars.iv304
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !16
  %i.db = zext i8 %i.da to i32
  %i.dc = getelementptr inbounds nuw i8, ptr @unicode_rgi_emoji_zwj_sequence, i64 %indvars.iv.next307
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !16  ; 3 uses
  %i.de = zext i8 %i.dd to i32                    ; 2 uses
  %i.df = shl nuw nsw i32 %i.de, 8
  %i.dg = lshr i32 %i.de, 5
  %i.dh = and i32 %i.dg, 3                        ; 2 uses
  %.masked = and i32 %i.df, 7936                  ; 2 uses
  %i.di = icmp samesign ult i32 %.masked, 4096
  %.4174.v = select i1 %i.di, i32 8192, i32 122880
  %i.dj = or disjoint i32 %.4174.v, %i.db
  %.4174 = or disjoint i32 %i.dj, %.masked        ; 2 uses
  %i.dk = icmp eq i32 %.4174, 129456
  %.1 = select i1 %i.dk, i32 %.0157220, i32 %.0153228 ; 2 uses
  %i.dl = add nsw i32 %.0157220, 1                ; 2 uses
  %i.dm = sext i32 %.0157220 to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dm
  store i32 %.4174, ptr %i.dn, align 4, !tbaa !14
  %.not186 = icmp eq i32 %i.dh, 0
  br i1 %.not186, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.do = add nsw i32 %i.cy, -1                   ; 3 uses
  %i.dp = add nuw nsw i64 %i.cv, 1                ; 2 uses
  %indvars.iv.next307.jt0 = add nuw nsw i64 %i.cv, 2 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr @unicode_rgi_emoji_zwj_sequence, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !16
  %i.ds = zext i8 %i.dr to i32
  %i.dt = getelementptr inbounds nuw i8, ptr @unicode_rgi_emoji_zwj_sequence, i64 %indvars.iv.next307.jt0
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !16  ; 3 uses
  %i.dv = zext i8 %i.du to i32                    ; 2 uses
  %i.dw = shl nuw nsw i32 %i.dv, 8
  %i.dx = lshr i32 %i.dv, 5
  %i.dy = and i32 %i.dx, 3                        ; 2 uses
  %.masked.jt0 = and i32 %i.dw, 7936              ; 2 uses
  %i.dz = icmp samesign ult i32 %.masked.jt0, 4096
  %.4174.v.jt0 = select i1 %i.dz, i32 8192, i32 122880
  %i.ea = or disjoint i32 %.4174.v.jt0, %i.ds
  %.4174.jt0 = or disjoint i32 %i.ea, %.masked.jt0 ; 2 uses
  %i.eb = icmp ne i32 %.4174.jt0, 129456          ; 2 uses
  %.1.jt0 = sext i1 %i.eb to i32                  ; 3 uses
  store i32 %.4174.jt0, ptr %i.a, align 16, !tbaa !14
  %.not186.jt0 = icmp eq i32 %i.dy, 0
  br i1 %.not186.jt0, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ec = phi i32 [ 1, %bb.k ], [ %i.dl, %bb.j ]  ; 3 uses
  %.1402 = phi i32 [ %.1.jt0, %bb.k ], [ %.1, %bb.j ]
  %i.ed = phi i32 [ %i.dy, %bb.k ], [ %i.dh, %bb.j ]
  %i.ee = phi i8 [ %i.du, %bb.k ], [ %i.dd, %bb.j ]
  %indvars.iv.next307400 = phi i64 [ %indvars.iv.next307.jt0, %bb.k ], [ %indvars.iv.next307, %bb.j ]
  %.1168218398 = phi i32 [ 0, %bb.k ], [ %.1168218, %bb.j ]
  %.0157220396 = phi i32 [ 0, %bb.k ], [ %.0157220, %bb.j ]
  %.0153222395 = phi i32 [ 0, %bb.k ], [ %.0153222, %bb.j ] ; 2 uses
  %.sroa.5.1226416 = phi i32 [ %.sroa.5.0265, %bb.k ], [ %.0152223, %bb.j ]
  %.sroa.0.1227415 = phi i32 [ %.sroa.0.0266, %bb.k ], [ %.sroa.0.1227, %bb.j ]
  %indvars.iv304394 = phi i64 [ %i.dp, %bb.k ], [ %indvars.iv304, %bb.j ]
  %i.ef = add nsw i32 %.0153222395, 1
  %.sroa.idx = icmp eq i32 %.0153222395, 1        ; 2 uses
  %..sroa.5.1 = select i1 %.sroa.idx, i32 %i.ec, i32 %.sroa.5.1226416
  %.sroa.0.1. = select i1 %.sroa.idx, i32 %.sroa.0.1227415, i32 %i.ec
  %i.eg = add nsw i32 %.0157220396, 2
  %i.eh = sext i32 %i.ec to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.eh
  store i32 0, ptr %i.ei, align 4, !tbaa !14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.1401 = phi i32 [ %.1402, %bb.l ], [ %.1, %bb.j ] ; 3 uses
  %i.ej = phi i8 [ %i.ee, %bb.l ], [ %i.dd, %bb.j ]
  %indvars.iv.next307399 = phi i64 [ %indvars.iv.next307400, %bb.l ], [ %indvars.iv.next307, %bb.j ]
  %.1168218397 = phi i32 [ %.1168218398, %bb.l ], [ %.1168218, %bb.j ] ; 2 uses
  %indvars.iv304393 = phi i64 [ %indvars.iv304394, %bb.l ], [ %indvars.iv304, %bb.j ]
  %.1158 = phi i32 [ %i.eg, %bb.l ], [ %i.dl, %bb.j ] ; 3 uses
  %.1156 = phi i32 [ %i.ed, %bb.l ], [ %.0155221, %bb.j ] ; 5 uses
  %.1154 = phi i32 [ %i.ef, %bb.l ], [ %.0153222, %bb.j ]
  %.sroa.5.2 = phi i32 [ %..sroa.5.1, %bb.l ], [ %.0152223, %bb.j ] ; 6 uses
  %.sroa.0.2 = phi i32 [ %.sroa.0.1., %bb.l ], [ %.sroa.0.1227, %bb.j ] ; 6 uses
  %.not187 = icmp sgt i8 %i.ej, -1
  br i1 %.not187, label %bb.q, label %bb.o

bb.n:                                             ; preds = %bb.k
  %.not187.jt0 = icmp sgt i8 %i.du, -1
  br i1 %.not187.jt0, label %bb.r, label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ek = add nsw i32 %.1158, 1
  %i.el = sext i32 %.1158 to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.el
  store i32 65039, ptr %i.em, align 4, !tbaa !14
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  store i32 65039, ptr %4, align 4, !tbaa !14
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.m
  %.2 = phi i32 [ %i.ek, %bb.o ], [ %.1158, %bb.m ] ; 3 uses
  %i.en = icmp slt i32 %.1168218397, %i.do
  br i1 %i.en, label %bb.s, label %bb.u

bb.r:                                             ; preds = %bb.p, %bb.n
  %.2.jt0 = phi i32 [ 1, %bb.n ], [ 2, %bb.p ]    ; 3 uses
  %.not429 = icmp eq i32 %i.do, 0
  br i1 %.not429, label %bb.v, label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.eo = add nsw i32 %.2, 1
  %i.ep = sext i32 %.2 to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ep
  store i32 8205, ptr %i.eq, align 4, !tbaa !14
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.er = add nuw nsw i32 %.2.jt0, 1
  %i.es = zext nneg i32 %.2.jt0 to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.es
  store i32 8205, ptr %i.et, align 4, !tbaa !14
  br label %bb.v

bb.u:                                             ; preds = %bb.q, %bb.s
  %.3 = phi i32 [ %i.eo, %bb.s ], [ %.2, %bb.q ]  ; 5 uses
  %i.eu = add nuw nsw i32 %.1168218397, 1         ; 2 uses
  %indvars.iv.next305 = add nuw nsw i64 %indvars.iv304393, 2
  %exitcond.not = icmp eq i32 %i.eu, %i.cy
  br i1 %exitcond.not, label %._crit_edge227, label %bb.j, !llvm.loop !102

bb.v:                                             ; preds = %bb.r, %bb.t
  %.3.jt0 = phi i32 [ %.2.jt0, %bb.r ], [ %i.er, %bb.t ] ; 3 uses
  %indvars.iv.next305.jt0 = add nuw nsw i64 %i.cv, 3
  %exitcond.not.jt0 = icmp eq i8 %i.cx, 1
  br i1 %exitcond.not.jt0, label %._crit_edge227.jt0, label %bb.j, !llvm.loop !102

._crit_edge227:                                   ; preds = %bb.u
  %i.ev = shl nsw i32 %i.do, 1
  %i.ew = add nsw i32 %i.ev, 3
  %i.ex = add i32 %i.ew, %.4257                   ; 4 uses
  %i.ey = zext nneg i32 %.1156 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.unicode_sequence_prop1, i64 %i.ey
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32       ; 4 uses
  %i.ez = icmp sgt i32 %.1401, -1
  %i.fa = zext nneg i32 %.1401 to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fa
  %i.fc = icmp eq i32 %.1156, 3                   ; 2 uses
  %i.fd = sext i32 %.sroa.0.2 to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fd ; 3 uses
  %i.ff = sext i32 %.sroa.5.2 to i64
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ff ; 2 uses
  br i1 %i.ez, label %.preheader198.us, label %.split240

default.unreachable:                              ; preds = %.split240, %.preheader198.us
  unreachable

._crit_edge227.jt0:                               ; preds = %bb.v
  %i.fh = add nuw nsw i32 %.4257, 3               ; 2 uses
  %i.fi = zext nneg i32 %.1.jt0 to i64
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fi
  %i.fk = sext i32 %.sroa.0.0266 to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fk
  %i.fm = sext i32 %.sroa.5.0265 to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fm
  br i1 %i.eb, label %.preheader198, label %.preheader198.split.us.us.split.us251.preheader

.preheader198.us:                                 ; preds = %._crit_edge227, %.split.us.us
  %i.fo = phi ptr [ %i.gh, %.split.us.us ], [ %i.fg, %._crit_edge227 ] ; 4 uses
  %i.fp = phi ptr [ %i.gi, %.split.us.us ], [ %i.fe, %._crit_edge227 ] ; 5 uses
  %i.fq = phi i1 [ %i.gj, %.split.us.us ], [ %i.fc, %._crit_edge227 ] ; 4 uses
  %i.fr = phi ptr [ %i.gk, %.split.us.us ], [ %i.fb, %._crit_edge227 ] ; 5 uses
  %.0152404 = phi i32 [ %.0152406, %.split.us.us ], [ %switch.ext, %._crit_edge227 ] ; 5 uses
  %.5.lcssa399 = phi i32 [ %.5.lcssa402, %.split.us.us ], [ %i.ex, %._crit_edge227 ] ; 3 uses
  %.0151384 = phi i32 [ %.0151386, %.split.us.us ], [ %.sroa.0.2, %._crit_edge227 ] ; 3 uses
  %.5.lcssa379 = phi i32 [ %.5.lcssa382, %.split.us.us ], [ %.sroa.5.2, %._crit_edge227 ] ; 3 uses
  %.0155.lcssa375 = phi i32 [ %.0155.lcssa377, %.split.us.us ], [ %.1156, %._crit_edge227 ] ; 2 uses
  %.0157.lcssa371 = phi i32 [ %.0157.lcssa373, %.split.us.us ], [ %.3, %._crit_edge227 ] ; 5 uses
  %.0148239.us = phi i32 [ %i.gl, %.split.us.us ], [ 0, %._crit_edge227 ] ; 4 uses
  %i.fs = add nuw nsw i32 %.0148239.us, 129456    ; 3 uses
  switch i32 %.0155.lcssa375, label %default.unreachable [
    i32 1, label %.preheader198.split.us.us.split.us
    i32 2, label %.preheader198.split.us.us.split.us249.preheader
    i32 3, label %.preheader198.split.us.us.split.us249.preheader
    i32 0, label %.preheader198.split.us.us.split.us251.preheader
  ]

.preheader198.split.us.us.split.us249.preheader:  ; preds = %.preheader198.us, %.preheader198.us
  br label %.preheader198.split.us.us.split.us249

.preheader198.split.us.us.split.us251.preheader:  ; preds = %._crit_edge227.jt0, %.preheader198.us
  %i.ft = phi i32 [ %i.fs, %.preheader198.us ], [ 129456, %._crit_edge227.jt0 ]
  %.0148239.us391 = phi i32 [ %.0148239.us, %.preheader198.us ], [ 0, %._crit_edge227.jt0 ]
  %i.fu = phi ptr [ %i.fo, %.preheader198.us ], [ %i.fn, %._crit_edge227.jt0 ]
  %i.fv = phi ptr [ %i.fp, %.preheader198.us ], [ %i.fl, %._crit_edge227.jt0 ]
  %i.fw = phi i1 [ %i.fq, %.preheader198.us ], [ false, %._crit_edge227.jt0 ]
  %i.fx = phi ptr [ %i.fr, %.preheader198.us ], [ %i.fj, %._crit_edge227.jt0 ] ; 2 uses
  %.0152405 = phi i32 [ %.0152404, %.preheader198.us ], [ 1, %._crit_edge227.jt0 ] ; 2 uses
  %.5.lcssa401 = phi i32 [ %.5.lcssa399, %.preheader198.us ], [ %i.fh, %._crit_edge227.jt0 ]
  %.0151385 = phi i32 [ %.0151384, %.preheader198.us ], [ %.sroa.0.0266, %._crit_edge227.jt0 ]
  %.5.lcssa381 = phi i32 [ %.5.lcssa379, %.preheader198.us ], [ %.sroa.5.0265, %._crit_edge227.jt0 ]
  %.0157.lcssa372 = phi i32 [ %.0157.lcssa371, %.preheader198.us ], [ %.3.jt0, %._crit_edge227.jt0 ] ; 2 uses
  br label %.preheader198.split.us.us.split.us251

.preheader198.split.us.us.split.us:               ; preds = %.preheader198.us, %.preheader198.split.us.us.split.us
  %.0149232.us.us.us = phi i32 [ %i.fz, %.preheader198.split.us.us.split.us ], [ 0, %.preheader198.us ] ; 2 uses
  store i32 %i.fs, ptr %i.fr, align 4, !tbaa !14
  %i.fy = add nuw nsw i32 %.0149232.us.us.us, 127995
  store i32 %i.fy, ptr %i.fp, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.0157.lcssa371) #21
  %i.fz = add nuw nsw i32 %.0149232.us.us.us, 1   ; 2 uses
  %exitcond320.not = icmp eq i32 %i.fz, %.0152404
  br i1 %exitcond320.not, label %.split.us.us, label %.preheader198.split.us.us.split.us, !llvm.loop !103

.preheader198.split.us.us.split.us249:            ; preds = %.preheader198.split.us.us.split.us249.preheader, %.preheader198.split.us.us.split.us249
  %.0149232.us.us.us250 = phi i32 [ %i.gf, %.preheader198.split.us.us.split.us249 ], [ 0, %.preheader198.split.us.us.split.us249.preheader ] ; 3 uses
  store i32 %i.fs, ptr %i.fr, align 4, !tbaa !14
  %i.ga = udiv i32 %.0149232.us.us.us250, 5       ; 2 uses
  %i.gb = urem i32 %.0149232.us.us.us250, 5       ; 2 uses
  %.not185.us.us.us = icmp samesign uge i32 %i.ga, %i.gb
  %or.cond.not.us.us.us = select i1 %i.fq, i1 %.not185.us.us.us, i1 false
  %i.gc = zext i1 %or.cond.not.us.us.us to i32
  %.0.us.us.us = add nuw nsw i32 %i.ga, 127995
  %i.gd = add nuw nsw i32 %.0.us.us.us, %i.gc
  store i32 %i.gd, ptr %i.fp, align 4, !tbaa !14
  %i.ge = add nuw nsw i32 %i.gb, 127995
  store i32 %i.ge, ptr %i.fo, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.0157.lcssa371) #21
  %i.gf = add nuw nsw i32 %.0149232.us.us.us250, 1 ; 2 uses
  %exitcond319.not = icmp eq i32 %i.gf, %.0152404
  br i1 %exitcond319.not, label %.split.us.us, label %.preheader198.split.us.us.split.us249, !llvm.loop !103

.preheader198.split.us.us.split.us251:            ; preds = %.preheader198.split.us.us.split.us251.preheader, %.preheader198.split.us.us.split.us251
  %.0149232.us.us.us252 = phi i32 [ %i.gg, %.preheader198.split.us.us.split.us251 ], [ 0, %.preheader198.split.us.us.split.us251.preheader ]
  store i32 %i.ft, ptr %i.fx, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.0157.lcssa372) #21
  %i.gg = add nuw nsw i32 %.0149232.us.us.us252, 1 ; 2 uses
  %exitcond318.not = icmp eq i32 %i.gg, %.0152405
  br i1 %exitcond318.not, label %.split.us.us, label %.preheader198.split.us.us.split.us251, !llvm.loop !103

.split.us.us:                                     ; preds = %.preheader198.split.us.us.split.us251, %.preheader198.split.us.us.split.us249, %.preheader198.split.us.us.split.us
  %.0148239.us392 = phi i32 [ %.0148239.us, %.preheader198.split.us.us.split.us249 ], [ %.0148239.us, %.preheader198.split.us.us.split.us ], [ %.0148239.us391, %.preheader198.split.us.us.split.us251 ]
  %i.gh = phi ptr [ %i.fo, %.preheader198.split.us.us.split.us249 ], [ %i.fo, %.preheader198.split.us.us.split.us ], [ %i.fu, %.preheader198.split.us.us.split.us251 ]
  %i.gi = phi ptr [ %i.fp, %.preheader198.split.us.us.split.us249 ], [ %i.fp, %.preheader198.split.us.us.split.us ], [ %i.fv, %.preheader198.split.us.us.split.us251 ]
  %i.gj = phi i1 [ %i.fq, %.preheader198.split.us.us.split.us249 ], [ %i.fq, %.preheader198.split.us.us.split.us ], [ %i.fw, %.preheader198.split.us.us.split.us251 ]
  %i.gk = phi ptr [ %i.fr, %.preheader198.split.us.us.split.us249 ], [ %i.fr, %.preheader198.split.us.us.split.us ], [ %i.fx, %.preheader198.split.us.us.split.us251 ]
  %.0152406 = phi i32 [ %.0152404, %.preheader198.split.us.us.split.us249 ], [ %.0152404, %.preheader198.split.us.us.split.us ], [ %.0152405, %.preheader198.split.us.us.split.us251 ]
  %.5.lcssa402 = phi i32 [ %.5.lcssa399, %.preheader198.split.us.us.split.us249 ], [ %.5.lcssa399, %.preheader198.split.us.us.split.us ], [ %.5.lcssa401, %.preheader198.split.us.us.split.us251 ] ; 2 uses
  %.0151386 = phi i32 [ %.0151384, %.preheader198.split.us.us.split.us249 ], [ %.0151384, %.preheader198.split.us.us.split.us ], [ %.0151385, %.preheader198.split.us.us.split.us251 ] ; 2 uses
  %.5.lcssa382 = phi i32 [ %.5.lcssa379, %.preheader198.split.us.us.split.us249 ], [ %.5.lcssa379, %.preheader198.split.us.us.split.us ], [ %.5.lcssa381, %.preheader198.split.us.us.split.us251 ] ; 2 uses
  %.0155.lcssa377 = phi i32 [ %.0155.lcssa375, %.preheader198.split.us.us.split.us249 ], [ 1, %.preheader198.split.us.us.split.us ], [ 0, %.preheader198.split.us.us.split.us251 ]
  %.0157.lcssa373 = phi i32 [ %.0157.lcssa371, %.preheader198.split.us.us.split.us249 ], [ %.0157.lcssa371, %.preheader198.split.us.us.split.us ], [ %.0157.lcssa372, %.preheader198.split.us.us.split.us251 ]
  %i.gl = add nuw nsw i32 %.0148239.us392, 1      ; 2 uses
  %exitcond321.not = icmp eq i32 %i.gl, 4
  br i1 %exitcond321.not, label %.loopexit199, label %.preheader198.us, !llvm.loop !104

.split240:                                        ; preds = %._crit_edge227
  switch i32 %.1156, label %default.unreachable [
    i32 1, label %.preheader198.us241
    i32 2, label %.preheader198.us245.preheader
    i32 3, label %.preheader198.us245.preheader
    i32 0, label %.preheader198
  ]

.preheader198.us245.preheader:                    ; preds = %.split240, %.split240
  br label %.preheader198.us245

.preheader198.us241:                              ; preds = %.split240, %.preheader198.us241
  %.0149232.us233.us = phi i32 [ %i.gn, %.preheader198.us241 ], [ 0, %.split240 ] ; 2 uses
  %i.gm = add nuw nsw i32 %.0149232.us233.us, 127995
  store i32 %i.gm, ptr %i.fe, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  %i.gn = add nuw nsw i32 %.0149232.us233.us, 1   ; 2 uses
  %exitcond316.not = icmp eq i32 %i.gn, %switch.ext
  br i1 %exitcond316.not, label %.loopexit199, label %.preheader198.us241, !llvm.loop !103

.preheader198.us245:                              ; preds = %.preheader198.us245.preheader, %.preheader198.us245
  %.0149232.us235.us = phi i32 [ %i.gt, %.preheader198.us245 ], [ 0, %.preheader198.us245.preheader ] ; 3 uses
  %i.go = udiv i32 %.0149232.us235.us, 5          ; 2 uses
  %i.gp = urem i32 %.0149232.us235.us, 5          ; 2 uses
  %.not185.us236.us = icmp samesign uge i32 %i.go, %i.gp
  %or.cond.not.us237.us = select i1 %i.fc, i1 %.not185.us236.us, i1 false
  %i.gq = zext i1 %or.cond.not.us237.us to i32
  %.0.us238.us = add nuw nsw i32 %i.go, 127995
  %i.gr = add nuw nsw i32 %.0.us238.us, %i.gq
  store i32 %i.gr, ptr %i.fe, align 4, !tbaa !14
  %i.gs = add nuw nsw i32 %i.gp, 127995
  store i32 %i.gs, ptr %i.fg, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  %i.gt = add nuw nsw i32 %.0149232.us235.us, 1   ; 2 uses
  %exitcond314.not = icmp eq i32 %i.gt, %switch.ext
  br i1 %exitcond314.not, label %.loopexit199, label %.preheader198.us245, !llvm.loop !103

.preheader198:                                    ; preds = %.split240, %._crit_edge227.jt0, %bb.i
  %.0157.lcssa370417 = phi i32 [ %.3, %.split240 ], [ %.3.jt0, %._crit_edge227.jt0 ], [ 0, %bb.i ]
  %.sroa.5.1.lcssa388444 = phi i32 [ %.sroa.5.2, %.split240 ], [ %.sroa.5.0265, %._crit_edge227.jt0 ], [ %.sroa.5.0265, %bb.i ]
  %.sroa.0.1.lcssa393443 = phi i32 [ %.sroa.0.2, %.split240 ], [ %.sroa.0.0266, %._crit_edge227.jt0 ], [ %.sroa.0.0266, %bb.i ]
  %.5.lcssa378416 = phi i32 [ %i.ex, %.split240 ], [ %i.fh, %._crit_edge227.jt0 ], [ %.5217, %bb.i ]
  %.0151383415 = phi i32 [ %switch.ext, %.split240 ], [ 1, %._crit_edge227.jt0 ], [ 1, %bb.i ]
  br label %bb.w

bb.w:                                             ; preds = %.preheader198, %bb.w
  %.0149232 = phi i32 [ 0, %.preheader198 ], [ %i.gu, %bb.w ]
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.0157.lcssa370417) #21
  %i.gu = add nuw nsw i32 %.0149232, 1            ; 2 uses
  %exitcond312.not = icmp eq i32 %i.gu, %.0151383415
  br i1 %exitcond312.not, label %.loopexit199, label %bb.w, !llvm.loop !103

.preheader200:                                    ; preds = %bb.a, %._crit_edge214
  %.6216 = phi i32 [ %.lcssa, %._crit_edge214 ], [ 0, %bb.a ] ; 2 uses
  store i32 127988, ptr %i.a, align 16, !tbaa !14
  %i.gv = add nuw nsw i32 %.6216, 1
  %i.gw = zext nneg i32 %.6216 to i64             ; 3 uses
  %i.gx = shl nuw nsw i64 1, %i.gw
  %i.gy = and i64 %i.gx, 133152
  %.not210 = icmp eq i64 %i.gy, 0
  br i1 %.not210, label %.lr.ph213.preheader, label %._crit_edge214

.lr.ph213.preheader:                              ; preds = %.preheader200
  %i.gz = add nuw nsw i64 %i.gw, 1
  br label %.lr.ph213

.lr.ph213:                                        ; preds = %.lr.ph213.preheader, %.lr.ph213
  %indvars.iv299 = phi i64 [ 1, %.lr.ph213.preheader ], [ %indvars.iv.next300, %.lr.ph213 ] ; 2 uses
  %indvars.iv297 = phi i64 [ %i.gz, %.lr.ph213.preheader ], [ %indvars.iv.next298, %.lr.ph213 ] ; 3 uses
  %i.ha = phi i64 [ %i.gw, %.lr.ph213.preheader ], [ %indvars.iv297, %.lr.ph213 ]
  %i.hb = getelementptr inbounds nuw i8, ptr @unicode_rgi_emoji_tag_sequence, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !16
  %i.hd = zext i8 %i.hc to i32
  %i.he = or disjoint i32 %i.hd, 917504
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv299
  store i32 %i.he, ptr %i.hf, align 4, !tbaa !14
  %indvars.iv.next298 = add nuw nsw i64 %indvars.iv297, 1 ; 2 uses
  %i.hg = shl nuw i64 1, %indvars.iv297
  %i.hh = and i64 %i.hg, 133152
  %.not = icmp eq i64 %i.hh, 0
  br i1 %.not, label %.lr.ph213, label %._crit_edge214.loopexit

._crit_edge214.loopexit:                          ; preds = %.lr.ph213
  %i.hi = trunc nuw i64 %indvars.iv.next300 to i32
  %i.hj = trunc nuw i64 %indvars.iv.next298 to i32
  br label %._crit_edge214

._crit_edge214:                                   ; preds = %._crit_edge214.loopexit, %.preheader200
  %.2169.lcssa = phi i32 [ 1, %.preheader200 ], [ %i.hi, %._crit_edge214.loopexit ] ; 2 uses
  %.lcssa = phi i32 [ %i.gv, %.preheader200 ], [ %i.hj, %._crit_edge214.loopexit ] ; 2 uses
  %i.hk = add nuw nsw i32 %.2169.lcssa, 1
  %i.hl = zext nneg i32 %.2169.lcssa to i64
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hl
  store i32 917631, ptr %i.hm, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %i.hk) #21
  %i.hn = icmp ult i32 %.lcssa, 18
  br i1 %i.hn, label %.preheader200, label %.loopexit, !llvm.loop !105

bb.x:                                             ; preds = %bb.a
  %i.ho = tail call fastcc i32 @unicode_prop1(ptr noundef %3, i32 noundef 19)
  %i.hp = icmp slt i32 %i.ho, 0
  br i1 %i.hp, label %.loopexit, label %.preheader202

.preheader202:                                    ; preds = %bb.x
  %i.hq = load i32, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.hr = icmp sgt i32 %i.hq, 0
  br i1 %i.hr, label %.lr.ph209, label %.loopexit

.lr.ph209:                                        ; preds = %.preheader202
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.hu = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre = load ptr, ptr %i.hs, align 8, !tbaa !24
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph209, %._crit_edge
  %i.hv = phi i32 [ %i.hq, %.lr.ph209 ], [ %i.ii, %._crit_edge ]
  %i.hw = phi ptr [ %.pre, %.lr.ph209 ], [ %i.ij, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph209 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %indvars.iv ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !14 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !14
  %i.ib = icmp ult i32 %i.hy, %i.ia
  br i1 %i.ib, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.y, %.lr.ph
  %.5175207 = phi i32 [ %i.ic, %.lr.ph ], [ %i.hy, %bb.y ] ; 2 uses
  store i32 %.5175207, ptr %i.a, align 16, !tbaa !14
  store i32 65039, ptr %i.ht, align 4, !tbaa !14
  store i32 8419, ptr %i.hu, align 8, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 3) #21
  %i.ic = add nuw nsw i32 %.5175207, 1            ; 2 uses
  %i.id = load ptr, ptr %i.hs, align 8, !tbaa !24 ; 2 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !14
  %i.ih = icmp ult i32 %i.ic, %i.ig
  br i1 %i.ih, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !106

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre335 = load i32, ptr %3, align 8, !tbaa !26
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.y
  %i.ii = phi i32 [ %.pre335, %._crit_edge.loopexit ], [ %i.hv, %bb.y ] ; 2 uses
  %i.ij = phi ptr [ %i.id, %._crit_edge.loopexit ], [ %i.hw, %bb.y ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ik = trunc nuw i64 %indvars.iv.next to i32
  %i.il = icmp sgt i32 %i.ii, %i.ik
  br i1 %i.il, label %bb.y, label %.loopexit, !llvm.loop !107

.preheader204.1:                                  ; preds = %.preheader204.preheader
  store i32 0, ptr %3, align 8, !tbaa !26
  %i.im = tail call fastcc i32 @unicode_sequence_prop1(i32 noundef 1, ptr noundef %1, ptr noundef %2, ptr noundef %3) ; 2 uses
  %i.in = icmp sgt i32 %i.im, -1
  br i1 %i.in, label %.preheader204.2, label %.loopexit

.preheader204.2:                                  ; preds = %.preheader204.1
  store i32 0, ptr %3, align 8, !tbaa !26
  %i.io = tail call fastcc i32 @unicode_sequence_prop1(i32 noundef 2, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) ; 2 uses
  %i.ip = icmp sgt i32 %i.io, -1
  br i1 %i.ip, label %.preheader204.3, label %.loopexit

.preheader204.3:                                  ; preds = %.preheader204.2
  store i32 0, ptr %3, align 8, !tbaa !26
  %i.iq = tail call fastcc i32 @unicode_sequence_prop1(i32 noundef 3, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) ; 2 uses
  %i.ir = icmp sgt i32 %i.iq, -1
  br i1 %i.ir, label %.preheader204.4, label %.loopexit

.preheader204.4:                                  ; preds = %.preheader204.3
  store i32 0, ptr %3, align 8, !tbaa !26
  %i.is = tail call fastcc i32 @unicode_sequence_prop1(i32 noundef 4, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) ; 2 uses
  %i.it = icmp sgt i32 %i.is, -1
  br i1 %i.it, label %.preheader204.5, label %.loopexit

.preheader204.5:                                  ; preds = %.preheader204.4
  store i32 0, ptr %3, align 8, !tbaa !26
  %i.iu = tail call fastcc i32 @unicode_sequence_prop1(i32 noundef 5, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) ; 2 uses
  %i.iv = icmp sgt i32 %i.iu, -1
  br i1 %i.iv, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %.preheader204.5
  store i32 0, ptr %3, align 8, !tbaa !26
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge214, %.loopexit199, %._crit_edge261, %._crit_edge266, %._crit_edge279, %.preheader204.preheader, %.preheader204.1, %.preheader204.2, %.preheader204.3, %.preheader204.4, %.preheader204.5, %bb.z, %.preheader202, %.preheader196, %.preheader194.a, %.preheader, %bb.a, %bb.x, %bb.g, %bb.e, %._crit_edge275.a, %bb.b
  %.2161 = phi i32 [ -1, %bb.x ], [ 0, %.preheader202 ], [ -1, %bb.b ], [ -2, %bb.a ], [ -1, %._crit_edge275.a ], [ -1, %bb.e ], [ -1, %bb.g ], [ 0, %.preheader194.a ], [ 0, %._crit_edge266 ], [ 0, %._crit_edge279 ], [ 0, %.preheader196 ], [ 0, %.preheader ], [ 0, %.loopexit199 ], [ 0, %._crit_edge214 ], [ %i.iq, %.preheader204.3 ], [ 0, %._crit_edge261 ], [ 0, %bb.z ], [ %i.b, %.preheader204.preheader ], [ %i.im, %.preheader204.1 ], [ %i.iu, %.preheader204.5 ], [ %i.io, %.preheader204.2 ], [ %i.is, %.preheader204.4 ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.2161
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2, 1) i32 @unicode_prop(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #24 ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.h, %bb.a
  %.01829.i = phi i32 [ %i.j, %bb.h ], [ 0, %bb.a ] ; 3 uses
  %.01928.i = phi ptr [ %i.i, %bb.h ], [ @unicode_prop_name_table, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.preheader.i
  %.1.i = phi ptr [ %i.i, %bb.g ], [ %.01928.i, %.preheader.i ] ; 5 uses
  %i.b = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.1.i, i32 noundef 44) #24 ; 2 uses
  %.not23.i = icmp eq ptr %i.b, null              ; 2 uses
  br i1 %.not23.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1.i) #24
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %.1.i to i64
  %i.f = sub i64 %i.d, %i.e
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i64 [ %i.f, %bb.d ], [ %i.c, %bb.c ] ; 2 uses
  %i.g = icmp eq i64 %.0.i, %i.a
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %.1.i, ptr nonnull readonly %1, i64 %i.a)
  %.not24.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not24.i, label %unicode_find_name.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.h = getelementptr i8, ptr %.1.i, i64 %.0.i
  %i.i = getelementptr i8, ptr %i.h, i64 1        ; 3 uses
  br i1 %.not23.i, label %bb.h, label %bb.b

bb.h:                                             ; preds = %bb.g
  %i.j = add nuw nsw i32 %.01829.i, 1
  %i.k = load i8, ptr %i.i, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.k, 0
  br i1 %.not.i, label %cr_add_interval.exit, label %.preheader.i, !llvm.loop !3

unicode_find_name.exit:                           ; preds = %bb.f
  %i.l = add nuw nsw i32 %.01829.i, 20            ; 2 uses
  switch i32 %i.l, label %bb.af [
    i32 56, label %bb.i
    i32 58, label %bb.k
    i32 59, label %bb.m
    i32 73, label %bb.n
    i32 72, label %bb.o
    i32 74, label %bb.p
    i32 60, label %bb.q
    i32 57, label %bb.r
    i32 67, label %bb.s
    i32 68, label %bb.t
    i32 76, label %bb.u
    i32 75, label %bb.v
    i32 66, label %bb.w
    i32 63, label %bb.x
    i32 62, label %bb.y
    i32 65, label %bb.ab
    i32 61, label %bb.ac
    i32 64, label %bb.ad
    i32 69, label %bb.ae
  ]

bb.i:                                             ; preds = %unicode_find_name.exit
  %i.m = load i32, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.n = add nsw i32 %i.m, 2                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !25   ; 2 uses
  %i.q = icmp sgt i32 %i.n, %i.p
  br i1 %i.q, label %bb.j, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !24
  br label %cr_add_interval.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.r = mul nsw i32 %i.p, 3
  %i.s = sdiv i32 %i.r, 2
  %..i.i.i = tail call range(i32 -1073741824, -2147483648) i32 @llvm.smax.i32(i32 %i.n, i32 range(i32 -1073741824, 1073741824) %i.s) ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !24
  %i.z = sext i32 %..i.i.i to i64
  %i.aa = shl nsw i64 %i.z, 2
  %i.ab = tail call ptr %i.u(ptr noundef %i.w, ptr noundef %i.y, i64 noundef %i.aa) #21, !inline_history !44 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %cr_add_interval.exit, label %cr_realloc.exit.thread.i

cr_realloc.exit.thread.i:                         ; preds = %bb.j
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !24
  store i32 %..i.i.i, ptr %i.o, align 4, !tbaa !25
  %.pre13.i = load i32, ptr %0, align 8, !tbaa !26
  br label %cr_add_interval.exit.thread

cr_add_interval.exit.thread:                      ; preds = %._crit_edge.i, %cr_realloc.exit.thread.i
  %i.ac = phi i32 [ %i.m, %._crit_edge.i ], [ %.pre13.i, %cr_realloc.exit.thread.i ] ; 2 uses
  %i.ad = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ab, %cr_realloc.exit.thread.i ] ; 2 uses
  %i.ae = add nsw i32 %i.ac, 1
  store i32 %i.ae, ptr %0, align 8, !tbaa !26
  %i.af = sext i32 %i.ac to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.af
  store i32 0, ptr %i.ag, align 4, !tbaa !14
  %i.ah = load i32, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %0, align 8, !tbaa !26
  %i.aj = sext i32 %i.ah to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.aj
  store i32 128, ptr %i.ak, align 4, !tbaa !14
  br label %cr_add_interval.exit

bb.k:                                             ; preds = %unicode_find_name.exit
  %i.al = load i32, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.am = add nsw i32 %i.al, 2                    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !25 ; 2 uses
  %i.ap = icmp sgt i32 %i.am, %i.ao
  br i1 %i.ap, label %bb.l, label %._crit_edge.i31

._crit_edge.i31:                                  ; preds = %bb.k
  %.phi.trans.insert.i32 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i33 = load ptr, ptr %.phi.trans.insert.i32, align 8, !tbaa !24
  br label %cr_add_interval.exit39.thread

bb.l:                                             ; preds = %bb.k
  %i.aq = mul nsw i32 %i.ao, 3
  %i.ar = sdiv i32 %i.aq, 2
  %..i.i.i35 = tail call range(i32 -1073741824, -2147483648) i32 @llvm.smax.i32(i32 %i.am, i32 range(i32 -1073741824, 1073741824) %i.ar) ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !23
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !22
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !24
  %i.ay = sext i32 %..i.i.i35 to i64
  %i.az = shl nsw i64 %i.ay, 2
  %i.ba = tail call ptr %i.at(ptr noundef %i.av, ptr noundef %i.ax, i64 noundef %i.az) #21, !inline_history !44 ; 3 uses
  %.not.i.i36 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i36, label %cr_add_interval.exit, label %cr_realloc.exit.thread.i37

cr_realloc.exit.thread.i37:                       ; preds = %bb.l
  store ptr %i.ba, ptr %i.aw, align 8, !tbaa !24
  store i32 %..i.i.i35, ptr %i.an, align 4, !tbaa !25
  %.pre13.i38 = load i32, ptr %0, align 8, !tbaa !26
  br label %cr_add_interval.exit39.thread

cr_add_interval.exit39.thread:                    ; preds = %._crit_edge.i31, %cr_realloc.exit.thread.i37
  %i.bb = phi i32 [ %i.al, %._crit_edge.i31 ], [ %.pre13.i38, %cr_realloc.exit.thread.i37 ] ; 2 uses
  %i.bc = phi ptr [ %.pre.i33, %._crit_edge.i31 ], [ %i.ba, %cr_realloc.exit.thread.i37 ] ; 2 uses
  %i.bd = add nsw i32 %i.bb, 1
  store i32 %i.bd, ptr %0, align 8, !tbaa !26
  %i.be = sext i32 %i.bb to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.be
  store i32 0, ptr %i.bf, align 4, !tbaa !14
  %i.bg = load i32, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %0, align 8, !tbaa !26
  %i.bi = sext i32 %i.bg to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bi
  store i32 1114112, ptr %i.bj, align 4, !tbaa !14
  br label %cr_add_interval.exit

bb.m:                                             ; preds = %unicode_find_name.exit
  %i.bk = tail call i32 (ptr, ...) @unicode_prop_ops(ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 6, i32 noundef 7)
  br label %cr_add_interval.exit

bb.n:                                             ; preds = %unicode_find_name.exit
  %i.bl = tail call i32 (ptr, ...) @unicode_prop_ops(ptr noundef %0, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 1, i32 noundef 3, i32 noundef 7)
  br label %cr_add_interval.exit

bb.o:                                             ; preds = %unicode_find_name.exit
  %i.bm = tail call i32 (ptr, ...) @unicode_prop_ops(ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef 1, i32 noundef 3, i32 noundef 3, i32 noundef 7)
  br label %cr_add_interval.exit

bb.p:                                             ; preds = %unicode_find_name.exit
  %i.bn = tail call i32 (ptr, ...) @unicode_prop_ops(ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 1, i32 noundef 4, i32 noundef 3, i32 noundef 7)
  br label %cr_add_interval.exit

bb.q:                                             ; preds = %unicode_find_name.exit
  %i.bo = tail call i32 (ptr, ...) @unicode_prop_ops(ptr noundef %0, i32 noundef 0, i32 noundef 14, i32 noundef 1, i32 noundef 4, i32 noundef 3, i32 noundef 1, i32 noundef 3, i32 noundef 3, i32 noundef 7)
  br label %cr_add_interval.exit

bb.r:                                             ; preds = %unicode_find_name.exit
  %i.bp = tail call i32 (ptr, ...) @unicode_prop_ops(ptr noundef %0, i32 noundef 0, i32 noundef 1086, i32 noundef 1, i32 noundef 4, i32 noundef 3, i32 noundef 1, i32 noundef 3, i32 noundef 3, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 7)
end_hunk_0
