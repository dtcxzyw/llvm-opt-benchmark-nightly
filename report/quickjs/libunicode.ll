Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/libunicode?download=true
inline.NumInlined: 121
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 12
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
  %i.a = alloca [16 x i32], align 16              ; 53 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  switch i32 %0, label %.loopexit [
    i32 0, label %bb.b
    i32 2, label %bb.e
    i32 3, label %bb.g
    i32 5, label %bb.i
    i32 4, label %.preheader200
    i32 1, label %bb.t
    i32 6, label %.preheader204.preheader
  ]

.preheader204.preheader:                          ; preds = %bb.a
  %i.b = tail call fastcc i32 @unicode_sequence_prop1(i32 noundef 0, ptr noundef %1, ptr noundef %2, ptr noundef %3) ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %.preheader204.1, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i32 @unicode_prop1(ptr noundef %3, i32 noundef 16)
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %.loopexit, label %.preheader192

.preheader192:                                    ; preds = %bb.b
  %i.f = load i32, ptr %3, align 8, !tbaa !26     ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph276, label %._crit_edge277.a

.lr.ph276:                                        ; preds = %.preheader192
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.pre344 = load ptr, ptr %i.h, align 8, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph276, %._crit_edge274
  %i.i = phi i32 [ %i.f, %.lr.ph276 ], [ %i.v, %._crit_edge274 ]
  %i.j = phi ptr [ %.pre344, %.lr.ph276 ], [ %i.w, %._crit_edge274 ] ; 2 uses
  %indvars.iv333 = phi i64 [ 0, %.lr.ph276 ], [ %indvars.iv.next334, %._crit_edge274 ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv333 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !14   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !14
  %i.o = icmp ult i32 %i.l, %i.n
  br i1 %i.o, label %.lr.ph273, label %._crit_edge274

.lr.ph273:                                        ; preds = %bb.c, %.lr.ph273
  %.0170271 = phi i32 [ %i.p, %.lr.ph273 ], [ %i.l, %bb.c ] ; 2 uses
  store i32 %.0170271, ptr %i.a, align 16, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 1) #21
  %i.p = add nuw nsw i32 %.0170271, 1             ; 2 uses
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv333
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !14
  %i.u = icmp ult i32 %i.p, %i.t
  br i1 %i.u, label %.lr.ph273, label %._crit_edge274.loopexit, !llvm.loop !93

._crit_edge274.loopexit:                          ; preds = %.lr.ph273
  %.pre345 = load i32, ptr %3, align 8, !tbaa !26
  br label %._crit_edge274

._crit_edge274:                                   ; preds = %._crit_edge274.loopexit, %bb.c
  %i.v = phi i32 [ %.pre345, %._crit_edge274.loopexit ], [ %i.i, %bb.c ] ; 2 uses
  %i.w = phi ptr [ %i.q, %._crit_edge274.loopexit ], [ %i.j, %bb.c ]
  %indvars.iv.next334 = add nuw nsw i64 %indvars.iv333, 2 ; 2 uses
  %i.x = trunc nuw i64 %indvars.iv.next334 to i32
  %i.y = icmp sgt i32 %i.v, %i.x
  br i1 %i.y, label %bb.c, label %._crit_edge277.a, !llvm.loop !94

._crit_edge277.a:                                 ; preds = %._crit_edge274, %.preheader192
  store i32 0, ptr %3, align 8, !tbaa !26
  %i.z = call fastcc i32 @unicode_prop1(ptr noundef nonnull %3, i32 noundef 17)
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge277.a
  %i.ab = load i32, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph283, label %.loopexit

.lr.ph283:                                        ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.pre346 = load ptr, ptr %i.ad, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph283, %._crit_edge281
  %i.af = phi i32 [ %i.ab, %.lr.ph283 ], [ %i.as, %._crit_edge281 ]
  %i.ag = phi ptr [ %.pre346, %.lr.ph283 ], [ %i.at, %._crit_edge281 ] ; 2 uses
  %indvars.iv336.a = phi i64 [ 0, %.lr.ph283 ], [ %indvars.iv.next337.a, %._crit_edge281 ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv336.a ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !14 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !14
  %i.al = icmp ult i32 %i.ai, %i.ak
  br i1 %i.al, label %.lr.ph280, label %._crit_edge281

.lr.ph280:                                        ; preds = %bb.d, %.lr.ph280
  %.1171278 = phi i32 [ %i.am, %.lr.ph280 ], [ %i.ai, %bb.d ] ; 2 uses
  store i32 %.1171278, ptr %i.a, align 16, !tbaa !14
  store i32 65039, ptr %i.ae, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 2) #21
  %i.am = add nuw nsw i32 %.1171278, 1            ; 2 uses
  %i.an = load ptr, ptr %i.ad, align 8, !tbaa !24 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv336.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !14
  %i.ar = icmp ult i32 %i.am, %i.aq
  br i1 %i.ar, label %.lr.ph280, label %._crit_edge281.loopexit, !llvm.loop !95

._crit_edge281.loopexit:                          ; preds = %.lr.ph280
  %.pre347 = load i32, ptr %3, align 8, !tbaa !26
  br label %._crit_edge281

._crit_edge281:                                   ; preds = %._crit_edge281.loopexit, %bb.d
  %i.as = phi i32 [ %.pre347, %._crit_edge281.loopexit ], [ %i.af, %bb.d ] ; 2 uses
  %i.at = phi ptr [ %i.an, %._crit_edge281.loopexit ], [ %i.ag, %bb.d ]
  %indvars.iv.next337.a = add nuw nsw i64 %indvars.iv336.a, 2 ; 2 uses
  %i.au = trunc nuw i64 %indvars.iv.next337.a to i32
  %i.av = icmp sgt i32 %i.as, %i.au
  br i1 %i.av, label %bb.d, label %.loopexit, !llvm.loop !96

bb.e:                                             ; preds = %bb.a
  %i.aw = tail call fastcc i32 @unicode_prop1(ptr noundef %3, i32 noundef 50)
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %.loopexit, label %.preheader194.a

.preheader194.a:                                  ; preds = %bb.e
  %i.ay = load i32, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph270, label %.loopexit

.lr.ph270:                                        ; preds = %.preheader194.a
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 5 uses
  %.pre342 = load ptr, ptr %i.ba, align 8, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph270, %._crit_edge268
  %i.bc = phi i32 [ %i.ay, %.lr.ph270 ], [ %i.bp, %._crit_edge268 ]
  %i.bd = phi ptr [ %.pre342, %.lr.ph270 ], [ %i.bq, %._crit_edge268 ] ; 2 uses
  %indvars.iv330 = phi i64 [ 0, %.lr.ph270 ], [ %indvars.iv.next331, %._crit_edge268 ] ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv330 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !14 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !14
  %i.bi = icmp ult i32 %i.bf, %i.bh
  br i1 %i.bi, label %.preheader193, label %._crit_edge268

.preheader193:                                    ; preds = %bb.f, %.preheader193
  %.2172267 = phi i32 [ %i.bj, %.preheader193 ], [ %i.bf, %bb.f ] ; 6 uses
  store i32 %.2172267, ptr %i.a, align 16, !tbaa !14
  store i32 127995, ptr %i.bb, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 2) #21
  store i32 %.2172267, ptr %i.a, align 16, !tbaa !14
  store i32 127996, ptr %i.bb, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 2) #21
  store i32 %.2172267, ptr %i.a, align 16, !tbaa !14
  store i32 127997, ptr %i.bb, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 2) #21
  store i32 %.2172267, ptr %i.a, align 16, !tbaa !14
  store i32 127998, ptr %i.bb, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 2) #21
  store i32 %.2172267, ptr %i.a, align 16, !tbaa !14
  store i32 127999, ptr %i.bb, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 2) #21
  %i.bj = add nuw nsw i32 %.2172267, 1            ; 2 uses
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !24 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv330
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !14
  %i.bo = icmp ult i32 %i.bj, %i.bn
  br i1 %i.bo, label %.preheader193, label %._crit_edge268.loopexit, !llvm.loop !97

._crit_edge268.loopexit:                          ; preds = %.preheader193
  %.pre343 = load i32, ptr %3, align 8, !tbaa !26
  br label %._crit_edge268

._crit_edge268:                                   ; preds = %._crit_edge268.loopexit, %bb.f
  %i.bp = phi i32 [ %.pre343, %._crit_edge268.loopexit ], [ %i.bc, %bb.f ] ; 2 uses
  %i.bq = phi ptr [ %i.bk, %._crit_edge268.loopexit ], [ %i.bd, %bb.f ]
  %indvars.iv.next331 = add nuw nsw i64 %indvars.iv330, 2 ; 2 uses
  %i.br = trunc nuw i64 %indvars.iv.next331 to i32
  %i.bs = icmp sgt i32 %i.bp, %i.br
  br i1 %i.bs, label %bb.f, label %.loopexit, !llvm.loop !98

bb.g:                                             ; preds = %bb.a
  %i.bt = tail call fastcc i32 @unicode_prop1(ptr noundef %3, i32 noundef 18)
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %.loopexit, label %.preheader196

.preheader196:                                    ; preds = %bb.g
  %i.bv = load i32, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph265, label %.loopexit

.lr.ph265:                                        ; preds = %.preheader196
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.pre340 = load ptr, ptr %i.bx, align 8, !tbaa !24
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph265, %._crit_edge263
  %i.bz = phi i32 [ %i.bv, %.lr.ph265 ], [ %i.cq, %._crit_edge263 ]
  %i.ca = phi ptr [ %.pre340, %.lr.ph265 ], [ %i.cr, %._crit_edge263 ] ; 2 uses
  %indvars.iv326 = phi i64 [ 0, %.lr.ph265 ], [ %indvars.iv.next327, %._crit_edge263 ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv326 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !14 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !14
  %i.cf = icmp ult i32 %i.cc, %i.ce
  br i1 %i.cf, label %.lr.ph262, label %._crit_edge263

.lr.ph262:                                        ; preds = %bb.h, %.lr.ph262
  %.3173260 = phi i32 [ %i.ck, %.lr.ph262 ], [ %i.cc, %bb.h ] ; 3 uses
  %i.cg = sdiv i32 %.3173260, 26
  %i.ch = srem i32 %.3173260, 26
  %i.ci = add nsw i32 %i.cg, 127462
  store i32 %i.ci, ptr %i.a, align 16, !tbaa !14
  %i.cj = add nsw i32 %i.ch, 127462
  store i32 %i.cj, ptr %i.by, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 2) #21
  %i.ck = add nuw nsw i32 %.3173260, 1            ; 2 uses
  %i.cl = load ptr, ptr %i.bx, align 8, !tbaa !24 ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv326
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !14
  %i.cp = icmp ult i32 %i.ck, %i.co
  br i1 %i.cp, label %.lr.ph262, label %._crit_edge263.loopexit, !llvm.loop !99

._crit_edge263.loopexit:                          ; preds = %.lr.ph262
  %.pre341 = load i32, ptr %3, align 8, !tbaa !26
  br label %._crit_edge263

._crit_edge263:                                   ; preds = %._crit_edge263.loopexit, %bb.h
  %i.cq = phi i32 [ %.pre341, %._crit_edge263.loopexit ], [ %i.bz, %bb.h ] ; 2 uses
  %i.cr = phi ptr [ %i.cl, %._crit_edge263.loopexit ], [ %i.ca, %bb.h ]
  %indvars.iv.next327 = add nuw nsw i64 %indvars.iv326, 2 ; 2 uses
  %i.cs = trunc nuw i64 %indvars.iv.next327 to i32
  %i.ct = icmp sgt i32 %i.cq, %i.cs
  br i1 %i.ct, label %bb.h, label %.loopexit, !llvm.loop !100

.loopexit199:                                     ; preds = %.preheader198.us251.us, %.split.split.us.us.split, %.split.split.us.us.split.us.us, %.preheader198.us, %.preheader198.us.us, %.preheader198.us251
  %.sroa.5.1.lcssa397416 = phi i32 [ %.sroa.5.2, %.split.split.us.us.split ], [ %.sroa.5.2, %.split.split.us.us.split.us.us ], [ %.sroa.5.2, %.preheader198.us ], [ %.sroa.5.1.lcssa397.ph445, %.preheader198.us251 ], [ %.sroa.5.2, %.preheader198.us.us ], [ %.sroa.5.2, %.preheader198.us251.us ]
  %.sroa.0.1.lcssa399414 = phi i32 [ %.sroa.0.2, %.split.split.us.us.split ], [ %.sroa.0.2, %.split.split.us.us.split.us.us ], [ %.sroa.0.2, %.preheader198.us ], [ %.sroa.0.1.lcssa399.ph444, %.preheader198.us251 ], [ %.sroa.0.2, %.preheader198.us.us ], [ %.sroa.0.2, %.preheader198.us251.us ]
  %.5.lcssa387394 = phi i32 [ %i.ee, %.split.split.us.us.split ], [ %i.ee, %.split.split.us.us.split.us.us ], [ %i.ee, %.preheader198.us ], [ %.5.lcssa387.ph415, %.preheader198.us251 ], [ %i.ee, %.preheader198.us.us ], [ %i.ee, %.preheader198.us251.us ] ; 2 uses
  %i.cu = icmp ult i32 %.5.lcssa387394, 2392
  br i1 %i.cu, label %bb.i, label %.loopexit, !llvm.loop !101

bb.i:                                             ; preds = %bb.a, %.loopexit199
  %.sroa.0.0268 = phi i32 [ %.sroa.0.1.lcssa399414, %.loopexit199 ], [ undef, %bb.a ] ; 2 uses
  %.sroa.5.0267 = phi i32 [ %.sroa.5.1.lcssa397416, %.loopexit199 ], [ undef, %bb.a ] ; 2 uses
  %.4259 = phi i32 [ %.5.lcssa387394, %.loopexit199 ], [ 0, %bb.a ] ; 3 uses
  %i.cv = zext nneg i32 %.4259 to i64             ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr @unicode_rgi_emoji_zwj_sequence, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !16  ; 2 uses
  %i.cy = zext i8 %i.cx to i32                    ; 2 uses
  %.5217 = add nuw nsw i32 %.4259, 1
  %.not284 = icmp eq i8 %i.cx, 0
  br i1 %.not284, label %.preheader198.us251, label %.lr.ph226

.lr.ph226:                                        ; preds = %bb.i
  %i.cz = add nsw i32 %i.cy, -1                   ; 2 uses
  %i.da = add nuw nsw i64 %i.cv, 1
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph226, %bb.p
  %indvars.iv308 = phi i64 [ %i.cv, %.lr.ph226 ], [ %indvars.iv.next309, %bb.p ]
  %indvars.iv306 = phi i64 [ %i.da, %.lr.ph226 ], [ %indvars.iv.next307, %bb.p ] ; 2 uses
  %.0153228 = phi i32 [ -1, %.lr.ph226 ], [ %.1, %bb.p ]
  %.sroa.0.1227 = phi i32 [ %.sroa.0.0268, %.lr.ph226 ], [ %.sroa.0.2, %bb.p ] ; 2 uses
  %.0152223 = phi i32 [ %.sroa.5.0267, %.lr.ph226 ], [ %.sroa.5.2, %bb.p ] ; 2 uses
  %.0153222 = phi i32 [ 0, %.lr.ph226 ], [ %.1154, %bb.p ] ; 3 uses
  %.0155221 = phi i32 [ 0, %.lr.ph226 ], [ %.1156, %bb.p ]
  %.0157220 = phi i32 [ 0, %.lr.ph226 ], [ %.3, %bb.p ] ; 4 uses
  %.1168218 = phi i32 [ 0, %.lr.ph226 ], [ %i.eb, %bb.p ] ; 2 uses
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 2 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr @unicode_rgi_emoji_zwj_sequence, i64 %indvars.iv306
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !16
  %i.dd = zext i8 %i.dc to i32
  %i.de = getelementptr inbounds nuw i8, ptr @unicode_rgi_emoji_zwj_sequence, i64 %indvars.iv.next309
  %i.df = load i8, ptr %i.de, align 1, !tbaa !16  ; 2 uses
  %i.dg = zext i8 %i.df to i32                    ; 2 uses
  %i.dh = shl nuw nsw i32 %i.dg, 8
  %i.di = lshr i32 %i.dg, 5
  %i.dj = and i32 %i.di, 3                        ; 2 uses
  %.masked = and i32 %i.dh, 7936                  ; 2 uses
  %i.dk = icmp samesign ult i32 %.masked, 4096
  %.4174.v = select i1 %i.dk, i32 8192, i32 122880
  %i.dl = or disjoint i32 %.4174.v, %i.dd
  %.4174 = or disjoint i32 %i.dl, %.masked        ; 2 uses
  %i.dm = icmp eq i32 %.4174, 129456
  %.1 = select i1 %i.dm, i32 %.0157220, i32 %.0153228 ; 7 uses
  %i.dn = add nsw i32 %.0157220, 1                ; 4 uses
  %i.do = sext i32 %.0157220 to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.do
  store i32 %.4174, ptr %i.dp, align 4, !tbaa !14
  %.not186 = icmp eq i32 %i.dj, 0
  br i1 %.not186, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dq = add nsw i32 %.0153222, 1
  %.sroa.idx = icmp eq i32 %.0153222, 1           ; 2 uses
  %..sroa.5.1 = select i1 %.sroa.idx, i32 %i.dn, i32 %.0152223
  %.sroa.0.1. = select i1 %.sroa.idx, i32 %.sroa.0.1227, i32 %i.dn
  %i.dr = add nsw i32 %.0157220, 2
  %i.ds = sext i32 %i.dn to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ds
  store i32 0, ptr %i.dt, align 4, !tbaa !14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1158 = phi i32 [ %i.dr, %bb.k ], [ %i.dn, %bb.j ] ; 3 uses
  %.1156 = phi i32 [ %i.dj, %bb.k ], [ %.0155221, %bb.j ] ; 3 uses
  %.1154 = phi i32 [ %i.dq, %bb.k ], [ %.0153222, %bb.j ]
  %.sroa.5.2 = phi i32 [ %..sroa.5.1, %bb.k ], [ %.0152223, %bb.j ] ; 8 uses
  %.sroa.0.2 = phi i32 [ %.sroa.0.1., %bb.k ], [ %.sroa.0.1227, %bb.j ] ; 9 uses
  %.not187 = icmp sgt i8 %i.df, -1
  br i1 %.not187, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.du = add nsw i32 %.1158, 1
  %i.dv = sext i32 %.1158 to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dv
  store i32 65039, ptr %i.dw, align 4, !tbaa !14
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.2 = phi i32 [ %i.du, %bb.m ], [ %.1158, %bb.l ] ; 3 uses
  %i.dx = icmp slt i32 %.1168218, %i.cz
  br i1 %i.dx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dy = add nsw i32 %.2, 1
  %i.dz = sext i32 %.2 to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dz
  store i32 8205, ptr %i.ea, align 4, !tbaa !14
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.3 = phi i32 [ %i.dy, %bb.o ], [ %.2, %bb.n ]  ; 15 uses
  %i.eb = add nuw nsw i32 %.1168218, 1            ; 2 uses
  %indvars.iv.next307 = add nuw nsw i64 %indvars.iv306, 2
  %exitcond.not = icmp eq i32 %i.eb, %i.cy
  br i1 %exitcond.not, label %._crit_edge227, label %bb.j, !llvm.loop !102

._crit_edge227:                                   ; preds = %bb.p
  %i.ec = shl nsw i32 %i.cz, 1
  %i.ed = add nsw i32 %i.ec, 3
  %i.ee = add i32 %i.ed, %.4259                   ; 6 uses
  switch i32 %.1156, label %default.unreachable [
    i32 1, label %.split241.us
    i32 2, label %.split241.us246
    i32 3, label %bb.q
    i32 0, label %.split241.us250
  ]

bb.q:                                             ; preds = %._crit_edge227
  br label %.split241.us246

default.unreachable:                              ; preds = %._crit_edge227
  unreachable

.split241.us:                                     ; preds = %._crit_edge227
  %i.ef = icmp sgt i32 %.1, -1                    ; 2 uses
  %. = select i1 %i.ef, i32 4, i32 1              ; 2 uses
  %i.eg = zext nneg i32 %.1 to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.eg ; 5 uses
  %i.ei = sext i32 %.sroa.0.2 to i64
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ei ; 10 uses
  br i1 %i.ef, label %.preheader198.us.us, label %.preheader198.us

.preheader198.us.us:                              ; preds = %.split241.us, %.preheader198.us.us
  %.0148240.us.us = phi i32 [ %i.el, %.preheader198.us.us ], [ 0, %.split241.us ] ; 2 uses
  %i.ek = add nuw nsw i32 %.0148240.us.us, 129456 ; 5 uses
  store i32 %i.ek, ptr %i.eh, align 4, !tbaa !14
  store i32 127995, ptr %i.ej, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  store i32 %i.ek, ptr %i.eh, align 4, !tbaa !14
  store i32 127996, ptr %i.ej, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  store i32 %i.ek, ptr %i.eh, align 4, !tbaa !14
  store i32 127997, ptr %i.ej, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  store i32 %i.ek, ptr %i.eh, align 4, !tbaa !14
  store i32 127998, ptr %i.ej, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  store i32 %i.ek, ptr %i.eh, align 4, !tbaa !14
  store i32 127999, ptr %i.ej, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  %i.el = add nuw nsw i32 %.0148240.us.us, 1      ; 2 uses
  %exitcond325.not = icmp eq i32 %i.el, %.
  br i1 %exitcond325.not, label %.loopexit199, label %.preheader198.us.us, !llvm.loop !103

.preheader198.us:                                 ; preds = %.split241.us, %.preheader198.us
  %.0148240.us = phi i32 [ %i.em, %.preheader198.us ], [ 0, %.split241.us ]
  store i32 127995, ptr %i.ej, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  store i32 127996, ptr %i.ej, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  store i32 127997, ptr %i.ej, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  store i32 127998, ptr %i.ej, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  store i32 127999, ptr %i.ej, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  %i.em = add nuw nsw i32 %.0148240.us, 1         ; 2 uses
  %exitcond323.not = icmp eq i32 %i.em, %.
  br i1 %exitcond323.not, label %.loopexit199, label %.preheader198.us, !llvm.loop !103

.split241.us246:                                  ; preds = %._crit_edge227, %bb.q
  %.0151.ph = phi i32 [ 20, %bb.q ], [ 25, %._crit_edge227 ] ; 2 uses
  %i.en = icmp sgt i32 %.1, -1                    ; 2 uses
  %.393 = select i1 %i.en, i32 4, i32 1           ; 2 uses
  %i.eo = zext nneg i32 %.1 to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.eo
  %i.eq = icmp eq i32 %.1156, 3                   ; 2 uses
  %i.er = sext i32 %.sroa.0.2 to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.er ; 2 uses
  %i.et = sext i32 %.sroa.5.2 to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.et ; 2 uses
  br i1 %i.en, label %.preheader198.us247.us, label %.preheader198.us247

.preheader198.us247.us:                           ; preds = %.split241.us246, %.split.split.us.us.split.us.us
  %.0148240.us248.us = phi i32 [ %i.fc, %.split.split.us.us.split.us.us ], [ 0, %.split241.us246 ] ; 2 uses
  %i.ev = add nuw nsw i32 %.0148240.us248.us, 129456
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.preheader198.us247.us
  %.0149232.us234.us.us.us = phi i32 [ 0, %.preheader198.us247.us ], [ %i.fb, %bb.r ] ; 3 uses
  store i32 %i.ev, ptr %i.ep, align 4, !tbaa !14
  %i.ew = udiv i32 %.0149232.us234.us.us.us, 5    ; 2 uses
  %i.ex = urem i32 %.0149232.us234.us.us.us, 5    ; 2 uses
  %.not185.us.us.us.us = icmp samesign uge i32 %i.ew, %i.ex
  %or.cond.not.us.us.us.us = select i1 %i.eq, i1 %.not185.us.us.us.us, i1 false
  %i.ey = zext i1 %or.cond.not.us.us.us.us to i32
  %.0.us.us.us.us = add nuw nsw i32 %i.ew, 127995
  %i.ez = add nuw nsw i32 %.0.us.us.us.us, %i.ey
  store i32 %i.ez, ptr %i.es, align 4, !tbaa !14
  %i.fa = add nuw nsw i32 %i.ex, 127995
  store i32 %i.fa, ptr %i.eu, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  %i.fb = add nuw nsw i32 %.0149232.us234.us.us.us, 1 ; 2 uses
  %exitcond320.not = icmp eq i32 %i.fb, %.0151.ph
  br i1 %exitcond320.not, label %.split.split.us.us.split.us.us, label %bb.r, !llvm.loop !104

.split.split.us.us.split.us.us:                   ; preds = %bb.r
  %i.fc = add nuw nsw i32 %.0148240.us248.us, 1   ; 2 uses
  %exitcond321.not = icmp eq i32 %i.fc, %.393
  br i1 %exitcond321.not, label %.loopexit199, label %.preheader198.us247.us, !llvm.loop !103

.preheader198.us247:                              ; preds = %.split241.us246, %.split.split.us.us.split
  %.0148240.us248 = phi i32 [ %i.fj, %.split.split.us.us.split ], [ 0, %.split241.us246 ]
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.preheader198.us247
  %.0149232.us234.us = phi i32 [ 0, %.preheader198.us247 ], [ %i.fi, %bb.s ] ; 3 uses
  %i.fd = udiv i32 %.0149232.us234.us, 5          ; 2 uses
  %i.fe = urem i32 %.0149232.us234.us, 5          ; 2 uses
  %.not185.us.us = icmp samesign uge i32 %i.fd, %i.fe
  %or.cond.not.us.us = select i1 %i.eq, i1 %.not185.us.us, i1 false
  %i.ff = zext i1 %or.cond.not.us.us to i32
  %.0.us.us = add nuw nsw i32 %i.fd, 127995
  %i.fg = add nuw nsw i32 %.0.us.us, %i.ff
  store i32 %i.fg, ptr %i.es, align 4, !tbaa !14
  %i.fh = add nuw nsw i32 %i.fe, 127995
  store i32 %i.fh, ptr %i.eu, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  %i.fi = add nuw nsw i32 %.0149232.us234.us, 1   ; 2 uses
  %exitcond318.not = icmp eq i32 %i.fi, %.0151.ph
  br i1 %exitcond318.not, label %.split.split.us.us.split, label %bb.s, !llvm.loop !104

.split.split.us.us.split:                         ; preds = %bb.s
  %i.fj = add nuw nsw i32 %.0148240.us248, 1      ; 2 uses
  %exitcond319.not = icmp eq i32 %i.fj, %.393
  br i1 %exitcond319.not, label %.loopexit199, label %.preheader198.us247, !llvm.loop !103

.split241.us250:                                  ; preds = %._crit_edge227
  %i.fk = icmp sgt i32 %.1, -1                    ; 2 uses
  %.406 = select i1 %i.fk, i32 4, i32 1
  %i.fl = zext nneg i32 %.1 to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fl
  br i1 %i.fk, label %.preheader198.us251.us, label %.preheader198.us251

.preheader198.us251.us:                           ; preds = %.split241.us250, %.preheader198.us251.us
  %.0148240.us252.us = phi i32 [ %i.fo, %.preheader198.us251.us ], [ 0, %.split241.us250 ] ; 2 uses
  %i.fn = add nuw nsw i32 %.0148240.us252.us, 129456
  store i32 %i.fn, ptr %i.fm, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  %i.fo = add nuw nsw i32 %.0148240.us252.us, 1   ; 2 uses
  %exitcond317.not = icmp eq i32 %i.fo, %.406
  br i1 %exitcond317.not, label %.loopexit199, label %.preheader198.us251.us, !llvm.loop !103

.preheader198.us251:                              ; preds = %bb.i, %.split241.us250
  %.0157.lcssa381.ph416 = phi i32 [ %.3, %.split241.us250 ], [ 0, %bb.i ]
  %.sroa.5.1.lcssa397.ph445 = phi i32 [ %.sroa.5.2, %.split241.us250 ], [ %.sroa.5.0267, %bb.i ]
  %.sroa.0.1.lcssa399.ph444 = phi i32 [ %.sroa.0.2, %.split241.us250 ], [ %.sroa.0.0268, %bb.i ]
  %.5.lcssa387.ph415 = phi i32 [ %i.ee, %.split241.us250 ], [ %.5217, %bb.i ]
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.0157.lcssa381.ph416) #21
  br label %.loopexit199

.preheader200:                                    ; preds = %bb.a, %._crit_edge214
  %.6216 = phi i32 [ %.lcssa, %._crit_edge214 ], [ 0, %bb.a ] ; 2 uses
  store i32 127988, ptr %i.a, align 16, !tbaa !14
  %i.fp = add nuw nsw i32 %.6216, 1
  %i.fq = zext nneg i32 %.6216 to i64             ; 3 uses
  %i.fr = shl nuw nsw i64 1, %i.fq
  %i.fs = and i64 %i.fr, 133152
  %.not210 = icmp eq i64 %i.fs, 0
  br i1 %.not210, label %.lr.ph213.preheader, label %._crit_edge214

.lr.ph213.preheader:                              ; preds = %.preheader200
  %i.ft = add nuw nsw i64 %i.fq, 1
  br label %.lr.ph213

.lr.ph213:                                        ; preds = %.lr.ph213.preheader, %.lr.ph213
  %indvars.iv301 = phi i64 [ 1, %.lr.ph213.preheader ], [ %indvars.iv.next302, %.lr.ph213 ] ; 2 uses
  %indvars.iv299 = phi i64 [ %i.ft, %.lr.ph213.preheader ], [ %indvars.iv.next300, %.lr.ph213 ] ; 3 uses
  %i.fu = phi i64 [ %i.fq, %.lr.ph213.preheader ], [ %indvars.iv299, %.lr.ph213 ]
  %i.fv = getelementptr inbounds nuw i8, ptr @unicode_rgi_emoji_tag_sequence, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !16
  %i.fx = zext i8 %i.fw to i32
  %i.fy = or disjoint i32 %i.fx, 917504
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1 ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv301
  store i32 %i.fy, ptr %i.fz, align 4, !tbaa !14
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %i.ga = shl nuw i64 1, %indvars.iv299
  %i.gb = and i64 %i.ga, 133152
  %.not = icmp eq i64 %i.gb, 0
  br i1 %.not, label %.lr.ph213, label %._crit_edge214.loopexit

._crit_edge214.loopexit:                          ; preds = %.lr.ph213
  %i.gc = trunc nuw i64 %indvars.iv.next302 to i32
  %i.gd = trunc nuw i64 %indvars.iv.next300 to i32
  br label %._crit_edge214

._crit_edge214:                                   ; preds = %._crit_edge214.loopexit, %.preheader200
  %.2169.lcssa = phi i32 [ 1, %.preheader200 ], [ %i.gc, %._crit_edge214.loopexit ] ; 2 uses
  %.lcssa = phi i32 [ %i.fp, %.preheader200 ], [ %i.gd, %._crit_edge214.loopexit ] ; 2 uses
  %i.ge = add nuw nsw i32 %.2169.lcssa, 1
  %i.gf = zext nneg i32 %.2169.lcssa to i64
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gf
  store i32 917631, ptr %i.gg, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %i.ge) #21
  %i.gh = icmp ult i32 %.lcssa, 18
  br i1 %i.gh, label %.preheader200, label %.loopexit, !llvm.loop !105

bb.t:                                             ; preds = %bb.a
  %i.gi = tail call fastcc i32 @unicode_prop1(ptr noundef %3, i32 noundef 19)
  %i.gj = icmp slt i32 %i.gi, 0
  br i1 %i.gj, label %.loopexit, label %.preheader202

.preheader202:                                    ; preds = %bb.t
  %i.gk = load i32, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.gl = icmp sgt i32 %i.gk, 0
  br i1 %i.gl, label %.lr.ph209, label %.loopexit

.lr.ph209:                                        ; preds = %.preheader202
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.go = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre = load ptr, ptr %i.gm, align 8, !tbaa !24
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph209, %._crit_edge
  %i.gp = phi i32 [ %i.gk, %.lr.ph209 ], [ %i.hc, %._crit_edge ]
  %i.gq = phi ptr [ %.pre, %.lr.ph209 ], [ %i.hd, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph209 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !14 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !14
  %i.gv = icmp ult i32 %i.gs, %i.gu
  br i1 %i.gv, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.u, %.lr.ph
  %.5175207 = phi i32 [ %i.gw, %.lr.ph ], [ %i.gs, %bb.u ] ; 2 uses
  store i32 %.5175207, ptr %i.a, align 16, !tbaa !14
  store i32 65039, ptr %i.gn, align 4, !tbaa !14
  store i32 8419, ptr %i.go, align 8, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 3) #21
  %i.gw = add nuw nsw i32 %.5175207, 1            ; 2 uses
  %i.gx = load ptr, ptr %i.gm, align 8, !tbaa !24 ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %indvars.iv
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !14
  %i.hb = icmp ult i32 %i.gw, %i.ha
  br i1 %i.hb, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !106

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre339 = load i32, ptr %3, align 8, !tbaa !26
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.u
  %i.hc = phi i32 [ %.pre339, %._crit_edge.loopexit ], [ %i.gp, %bb.u ] ; 2 uses
  %i.hd = phi ptr [ %i.gx, %._crit_edge.loopexit ], [ %i.gq, %bb.u ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.he = trunc nuw i64 %indvars.iv.next to i32
  %i.hf = icmp sgt i32 %i.hc, %i.he
  br i1 %i.hf, label %bb.u, label %.loopexit, !llvm.loop !107

.preheader204.1:                                  ; preds = %.preheader204.preheader
  store i32 0, ptr %3, align 8, !tbaa !26
  %i.hg = tail call fastcc i32 @unicode_sequence_prop1(i32 noundef 1, ptr noundef %1, ptr noundef %2, ptr noundef %3) ; 2 uses
  %i.hh = icmp sgt i32 %i.hg, -1
  br i1 %i.hh, label %.preheader204.2, label %.loopexit

.preheader204.2:                                  ; preds = %.preheader204.1
  store i32 0, ptr %3, align 8, !tbaa !26
  %i.hi = tail call fastcc i32 @unicode_sequence_prop1(i32 noundef 2, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) ; 2 uses
  %i.hj = icmp sgt i32 %i.hi, -1
  br i1 %i.hj, label %.preheader204.3, label %.loopexit

.preheader204.3:                                  ; preds = %.preheader204.2
  store i32 0, ptr %3, align 8, !tbaa !26
  %i.hk = tail call fastcc i32 @unicode_sequence_prop1(i32 noundef 3, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) ; 2 uses
  %i.hl = icmp sgt i32 %i.hk, -1
  br i1 %i.hl, label %.preheader204.4, label %.loopexit

.preheader204.4:                                  ; preds = %.preheader204.3
  store i32 0, ptr %3, align 8, !tbaa !26
  %i.hm = tail call fastcc i32 @unicode_sequence_prop1(i32 noundef 4, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) ; 2 uses
  %i.hn = icmp sgt i32 %i.hm, -1
  br i1 %i.hn, label %.preheader204.5, label %.loopexit

.preheader204.5:                                  ; preds = %.preheader204.4
  store i32 0, ptr %3, align 8, !tbaa !26
  %i.ho = tail call fastcc i32 @unicode_sequence_prop1(i32 noundef 5, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) ; 2 uses
  %i.hp = icmp sgt i32 %i.ho, -1
  br i1 %i.hp, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %.preheader204.5
  store i32 0, ptr %3, align 8, !tbaa !26
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge214, %.loopexit199, %._crit_edge263, %._crit_edge268, %._crit_edge281, %.preheader204.preheader, %.preheader204.1, %.preheader204.2, %.preheader204.3, %.preheader204.4, %.preheader204.5, %bb.v, %.preheader202, %.preheader196, %.preheader194.a, %.preheader, %bb.a, %bb.t, %bb.g, %bb.e, %._crit_edge277.a, %bb.b
  %.2161 = phi i32 [ -1, %bb.t ], [ 0, %.preheader202 ], [ -1, %bb.b ], [ -2, %bb.a ], [ -1, %._crit_edge277.a ], [ -1, %bb.e ], [ -1, %bb.g ], [ 0, %.preheader194.a ], [ 0, %._crit_edge268 ], [ 0, %._crit_edge281 ], [ 0, %.preheader196 ], [ 0, %.preheader ], [ 0, %.loopexit199 ], [ 0, %._crit_edge214 ], [ %i.hk, %.preheader204.3 ], [ 0, %._crit_edge263 ], [ 0, %bb.v ], [ %i.b, %.preheader204.preheader ], [ %i.hg, %.preheader204.1 ], [ %i.ho, %.preheader204.5 ], [ %i.hi, %.preheader204.2 ], [ %i.hm, %.preheader204.4 ], [ 0, %._crit_edge ]
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
