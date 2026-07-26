inline.NumInlined: 3254
inline.NumDeleted: 427
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 107
begin_hunk_0_@sqlite3VdbeMemGrow:bb.a
  br i1 %i.v, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.w = tail call ptr @sqlite3_realloc(ptr noundef %i.s, i32 noundef %1) ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %bb.j, label %sqlite3DbReallocOrFree.exit

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.t, align 2, !tbaa !129
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.x = icmp eq ptr %i.s, null
  br i1 %i.x, label %sqlite3DbReallocOrFree.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds i8, ptr %i.s, i64 -8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !28
  %sext.i.i = shl i64 %i.z, 32
  %i.aa = ashr exact i64 %sext.i.i, 32
  %i.ab = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.ac = sub nsw i64 %i.ab, %i.aa
  store i64 %i.ac, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.y) #43
  br label %sqlite3DbReallocOrFree.exit

sqlite3DbReallocOrFree.exit:                      ; preds = %bb.i, %bb.k, %bb.l
  %.0.i7.i = phi ptr [ %i.w, %bb.i ], [ null, %bb.k ], [ null, %bb.l ]
  store ptr null, ptr %i.r, align 8, !tbaa !119
  br label %sqlite3DbMallocRaw.exit

bb.m:                                             ; preds = %bb.g, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !130 ; 2 uses
  %i.af = tail call i32 @llvm.umax.i32(i32 %1, i32 32) ; 2 uses
  %.not.i46 = icmp eq ptr %i.ae, null
  br i1 %.not.i46, label %.thread.i, label %bb.n

.thread.i:                                        ; preds = %bb.m
  %i.ag = tail call ptr @sqlite3_malloc(i32 noundef %i.af)
  br label %sqlite3DbMallocRaw.exit

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 42 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 2, !tbaa !129
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %sqlite3DbMallocRaw.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ak = tail call ptr @sqlite3_malloc(i32 noundef %i.af) ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.p, label %sqlite3DbMallocRaw.exit.thread51

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.ah, align 2, !tbaa !129
  br label %sqlite3DbMallocRaw.exit.thread

sqlite3DbMallocRaw.exit:                          ; preds = %.thread.i, %sqlite3DbReallocOrFree.exit
  %.037 = phi i32 [ 0, %sqlite3DbReallocOrFree.exit ], [ %2, %.thread.i ]
  %.035 = phi ptr [ %.0.i7.i, %sqlite3DbReallocOrFree.exit ], [ %i.ag, %.thread.i ] ; 2 uses
  %.not44 = icmp eq ptr %.035, null
  br i1 %.not44, label %sqlite3DbMallocRaw.exit.thread, label %sqlite3DbMallocRaw.exit.thread51

sqlite3DbMallocRaw.exit.thread51:                 ; preds = %bb.o, %sqlite3DbMallocRaw.exit, %bb.e
  %.138 = phi i32 [ %.037, %sqlite3DbMallocRaw.exit ], [ %2, %bb.e ], [ %2, %bb.o ]
  %.136 = phi ptr [ %.035, %sqlite3DbMallocRaw.exit ], [ null, %bb.e ], [ %i.ak, %bb.o ] ; 2 uses
  %i.am = load i16, ptr %i.a, align 4, !tbaa !124
  %i.an = and i16 %i.am, 18
  %i.ao = icmp ne i16 %i.an, 0
  %i.ap = icmp ne i32 %.138, 0
  %or.cond = and i1 %i.ap, %i.ao
  br i1 %or.cond, label %bb.q, label %.critedge

bb.q:                                             ; preds = %sqlite3DbMallocRaw.exit.thread51
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !123
  %. = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 %1)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !119
  %i.au = sext i32 %. to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.136, ptr align 1 %i.at, i64 %i.au, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %bb.q, %sqlite3DbMallocRaw.exit.thread51
  tail call fastcc void @sqlite3VdbeMemRelease(ptr noundef nonnull %0)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.136, ptr %i.av, align 8, !tbaa !119
  %i.aw = load i16, ptr %i.a, align 4, !tbaa !124
  %i.ax = and i16 %i.aw, -449
  %i.ay = or disjoint i16 %i.ax, 64
  store i16 %i.ay, ptr %i.a, align 4, !tbaa !124
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.az, align 8, !tbaa !122
  br label %sqlite3DbMallocRaw.exit.thread

sqlite3DbMallocRaw.exit.thread:                   ; preds = %bb.n, %bb.p, %sqlite3MallocSize.exit, %.critedge, %sqlite3DbMallocRaw.exit
  %.1 = phi i32 [ 7, %sqlite3DbMallocRaw.exit ], [ 0, %.critedge ], [ 0, %sqlite3MallocSize.exit ], [ 7, %bb.p ], [ 7, %bb.n ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3DbReallocOrFree(ptr nofree noundef captures(none) %0, ptr noundef captures(address_is_null) %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2, !tbaa !129
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @sqlite3_realloc(ptr noundef %1, i32 noundef %2) ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.c, label %sqlite3DbRealloc.exit

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 2, !tbaa !129
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %sqlite3DbRealloc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds i8, ptr %1, i64 -8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !28
  %sext.i = shl i64 %i.g, 32
  %i.h = ashr exact i64 %sext.i, 32
  %i.i = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.j = sub nsw i64 %i.i, %i.h
  store i64 %i.j, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.f) #43
  br label %sqlite3DbRealloc.exit

sqlite3DbRealloc.exit:                            ; preds = %bb.e, %bb.d, %bb.b
  %.0.i7 = phi ptr [ %i.d, %bb.b ], [ null, %bb.d ], [ null, %bb.e ]
  ret ptr %.0.i7
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3DbMallocRaw(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.a = tail call ptr @sqlite3_malloc(i32 noundef %1)
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %i.c = load i8, ptr %i.b, align 2, !tbaa !129
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @sqlite3_malloc(i32 noundef %1) ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.b, align 2, !tbaa !129
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.d ], [ %i.e, %bb.c ], [ null, %bb.b ], [ %i.a, %.thread ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 8) i32 @sqlite3VdbeChangeEncoding(ptr noundef %0, i32 noundef range(i32 0, 256) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.b = load i16, ptr %i.a, align 4, !tbaa !124
  %i.c = and i16 %i.b, 2
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %sqlite3VdbeMemTranslate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 39 ; 4 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !125   ; 2 uses
  %i.f = zext i8 %i.e to i32
  %i.g = icmp eq i32 %1, %i.f
  br i1 %i.g, label %sqlite3VdbeMemTranslate.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = trunc nuw i32 %1 to i8                   ; 2 uses
  %i.i = icmp ne i8 %i.e, 1
  %i.j = icmp ne i32 %1, 1
  %or.cond.i = and i1 %i.j, %i.i
  br i1 %or.cond.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = tail call fastcc range(i32 0, 8) i32 @sqlite3VdbeMemDynamicify(ptr noundef nonnull %0)
  %.not162.i = icmp eq i32 %i.k, 0
  br i1 %.not162.i, label %bb.e, label %sqlite3VdbeMemTranslate.exit

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !119  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !123  ; 2 uses
  %2 = zext nneg i32 %i.o to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %2
  %i.q = icmp sgt i32 %i.o, 0
  br i1 %i.q, label %.lr.ph260.i, label %._crit_edge.i

.lr.ph260.i:                                      ; preds = %bb.e, %.lr.ph260.i
  %.0259.i = phi ptr [ %i.u, %.lr.ph260.i ], [ %i.m, %bb.e ] ; 4 uses
  %i.r = load i8, ptr %.0259.i, align 1, !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %.0259.i, i64 1 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !37
  store i8 %i.t, ptr %.0259.i, align 1, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %.0259.i, i64 2 ; 2 uses
  store i8 %i.r, ptr %i.s, align 1, !tbaa !37
  %i.v = icmp ult ptr %i.u, %i.p
  br i1 %i.v, label %.lr.ph260.i, label %._crit_edge.i, !llvm.loop !928

._crit_edge.i:                                    ; preds = %.lr.ph260.i, %bb.e
  store i8 %i.h, ptr %i.d, align 1, !tbaa !125
  br label %sqlite3VdbeMemTranslate.exit

bb.f:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %1, 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !123  ; 5 uses
  %i.z = shl nsw i32 %i.y, 1                      ; 2 uses
  %i.aa = or disjoint i32 %i.z, 1
  %i.ab = add nsw i32 %i.z, 2
  %.0141.i = select i1 %i.w, i32 %i.aa, i32 %i.ab ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !119 ; 5 uses
  %i.ae = sext i32 %i.y to i64
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 %i.ae ; 12 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !130 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %sqlite3DbMallocRaw.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 42 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !129
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.h, label %sqlite3VdbeMemTranslate.exit

bb.h:                                             ; preds = %bb.g
  %i.al = tail call ptr @sqlite3_malloc(i32 noundef %.0141.i) ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.i, label %sqlite3DbMallocRaw.exit.thread193.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.ai, align 2, !tbaa !129
  br label %sqlite3VdbeMemTranslate.exit

sqlite3DbMallocRaw.exit.i:                        ; preds = %bb.f
  %i.an = tail call ptr @sqlite3_malloc(i32 noundef %.0141.i) ; 2 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %sqlite3VdbeMemTranslate.exit, label %sqlite3DbMallocRaw.exit.thread193.i

sqlite3DbMallocRaw.exit.thread193.i:              ; preds = %sqlite3DbMallocRaw.exit.i, %bb.h
  %.0.i196.i = phi ptr [ %i.an, %sqlite3DbMallocRaw.exit.i ], [ %i.al, %bb.h ] ; 11 uses
  %i.ao = load i8, ptr %i.d, align 1, !tbaa !125
  switch i8 %i.ao, label %.preheader.i [
    i8 1, label %bb.j
    i8 2, label %.preheader243.i
  ]

.preheader243.i:                                  ; preds = %sqlite3DbMallocRaw.exit.thread193.i
  %i.ap = icmp sgt i32 %i.y, 0
  br i1 %i.ap, label %.lr.ph.i, label %.loopexit.i

.preheader.i:                                     ; preds = %sqlite3DbMallocRaw.exit.thread193.i
  %i.aq = icmp sgt i32 %i.y, 0
  br i1 %i.aq, label %.lr.ph257.i, label %.loopexit.i

bb.j:                                             ; preds = %sqlite3DbMallocRaw.exit.thread193.i
  %i.ar = icmp eq i32 %1, 2
  %i.as = icmp sgt i32 %i.y, 0                    ; 2 uses
  br i1 %i.ar, label %.preheader239.i, label %.preheader241.i

.preheader241.i:                                  ; preds = %bb.j
  br i1 %i.as, label %.lr.ph249.i, label %.loopexit240.i

.lr.ph249.i:                                      ; preds = %.preheader241.i
  %i.at = ptrtoaddr ptr %i.af to i64
  br label %bb.p

.preheader239.i:                                  ; preds = %bb.j
  br i1 %i.as, label %.lr.ph253.i, label %.loopexit240.i

.lr.ph253.i:                                      ; preds = %.preheader239.i
  %i.au = ptrtoaddr ptr %i.af to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.lr.ph253.i
  %.0143252.i = phi ptr [ %.0.i196.i, %.lr.ph253.i ], [ %.1144.i, %bb.o ] ; 7 uses
  %.1185251.i = phi ptr [ %i.ad, %.lr.ph253.i ], [ %.114.i199.i, %bb.o ] ; 4 uses
  %i.av = ptrtoaddr ptr %.1185251.i to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %.1185251.i, i64 1 ; 3 uses
  %i.ax = load i8, ptr %.1185251.i, align 1, !tbaa !37 ; 3 uses
  %i.ay = zext i8 %i.ax to i32
  %i.az = icmp ugt i8 %i.ax, -65
  br i1 %i.az, label %bb.l, label %sqlite3Utf8Read.exit.thread.i

bb.l:                                             ; preds = %bb.k
  %i.ba = zext i8 %i.ax to i64
  %i.bb = getelementptr i8, ptr @sqlite3UtfTrans1, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 -192
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !37
  %i.be = zext i8 %i.bd to i32                    ; 2 uses
  %.not20.i.i = icmp eq ptr %i.aw, %i.af
  br i1 %.not20.i.i, label %.critedge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.l
  %i.bf = sub i64 %i.au, %i.av
  %scevgep.i.i = getelementptr i8, ptr %.1185251.i, i64 %i.bf
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m, %.lr.ph.preheader.i.i
  %.022.i.i = phi i32 [ %i.bn, %bb.m ], [ %i.be, %.lr.ph.preheader.i.i ] ; 2 uses
  %.01321.i.i = phi ptr [ %i.bl, %bb.m ], [ %i.aw, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bg = load i8, ptr %.01321.i.i, align 1, !tbaa !37
  %i.bh = zext i8 %i.bg to i32                    ; 2 uses
  %i.bi = and i32 %i.bh, 192
  %i.bj = icmp eq i32 %i.bi, 128
  br i1 %i.bj, label %bb.m, label %.critedge.i.i

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.bk = shl i32 %.022.i.i, 6
  %i.bl = getelementptr inbounds nuw i8, ptr %.01321.i.i, i64 1 ; 2 uses
  %i.bm = and i32 %i.bh, 63
  %i.bn = or disjoint i32 %i.bm, %i.bk            ; 2 uses
  %.not.i163.i = icmp eq ptr %i.bl, %i.af
  br i1 %.not.i163.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !929

.critedge.i.i:                                    ; preds = %bb.m, %.lr.ph.i.i, %bb.l
  %.013.lcssa.i.i = phi ptr [ %i.af, %bb.l ], [ %scevgep.i.i, %bb.m ], [ %.01321.i.i, %.lr.ph.i.i ] ; 3 uses
  %.0.lcssa.i.i = phi i32 [ %i.be, %bb.l ], [ %i.bn, %bb.m ], [ %.022.i.i, %.lr.ph.i.i ] ; 9 uses
  %i.bo = icmp slt i32 %.0.lcssa.i.i, 128
  %i.bp = and i32 %.0.lcssa.i.i, 2147481600
  %i.bq = icmp eq i32 %i.bp, 55296
  %or.cond.i.i = or i1 %i.bo, %i.bq
  %i.br = and i32 %.0.lcssa.i.i, 2147483646
  %i.bs = icmp eq i32 %i.br, 65534
  %or.cond19.i.i = or i1 %i.bs, %or.cond.i.i
  br i1 %or.cond19.i.i, label %sqlite3Utf8Read.exit.thread.i, label %sqlite3Utf8Read.exit.i

sqlite3Utf8Read.exit.i:                           ; preds = %.critedge.i.i
  %i.bt = icmp samesign ult i32 %.0.lcssa.i.i, 65536
  br i1 %i.bt, label %sqlite3Utf8Read.exit.thread.i, label %bb.n

sqlite3Utf8Read.exit.thread.i:                    ; preds = %sqlite3Utf8Read.exit.i, %.critedge.i.i, %bb.k
  %.1.i201.i = phi i32 [ %.0.lcssa.i.i, %sqlite3Utf8Read.exit.i ], [ %i.ay, %bb.k ], [ 65533, %.critedge.i.i ]
  %.114.i200.i = phi ptr [ %.013.lcssa.i.i, %sqlite3Utf8Read.exit.i ], [ %i.aw, %bb.k ], [ %.013.lcssa.i.i, %.critedge.i.i ]
  %i.bu = trunc nuw i32 %.1.i201.i to i16
  store i16 %i.bu, ptr %.0143252.i, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %.0143252.i, i64 2
  br label %bb.o

bb.n:                                             ; preds = %sqlite3Utf8Read.exit.i
  %i.bw = lshr i32 %.0.lcssa.i.i, 10
  %i.bx = and i32 %i.bw, 63
  %i.by = add nsw i32 %.0.lcssa.i.i, -65536       ; 2 uses
  %i.bz = lshr i32 %i.by, 10
  %i.ca = and i32 %i.bz, 192
  %i.cb = or disjoint i32 %i.ca, %i.bx
  %i.cc = trunc nuw i32 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %.0143252.i, i64 1
  store i8 %i.cc, ptr %.0143252.i, align 1, !tbaa !37
  %i.ce = lshr i32 %i.by, 18
  %i.cf = trunc i32 %i.ce to i8
  %i.cg = and i8 %i.cf, 3
  %i.ch = or disjoint i8 %i.cg, -40
  %i.ci = getelementptr inbounds nuw i8, ptr %.0143252.i, i64 2
  store i8 %i.ch, ptr %i.cd, align 1, !tbaa !37
  %i.cj = trunc i32 %.0.lcssa.i.i to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %.0143252.i, i64 3
  store i8 %i.cj, ptr %i.ci, align 1, !tbaa !37
  %i.cl = lshr i32 %.0.lcssa.i.i, 8
  %i.cm = trunc i32 %i.cl to i8
  %i.cn = and i8 %i.cm, 3
  %i.co = or disjoint i8 %i.cn, -36
  %i.cp = getelementptr inbounds nuw i8, ptr %.0143252.i, i64 4
  store i8 %i.co, ptr %i.ck, align 1, !tbaa !37
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %sqlite3Utf8Read.exit.thread.i
  %.114.i199.i = phi ptr [ %.114.i200.i, %sqlite3Utf8Read.exit.thread.i ], [ %.013.lcssa.i.i, %bb.n ] ; 2 uses
  %.1144.i = phi ptr [ %i.bv, %sqlite3Utf8Read.exit.thread.i ], [ %i.cp, %bb.n ] ; 2 uses
  %i.cq = icmp ult ptr %.114.i199.i, %i.af
  br i1 %i.cq, label %bb.k, label %.loopexit240.i, !llvm.loop !930

bb.p:                                             ; preds = %bb.t, %.lr.ph249.i
  %.2248.i = phi ptr [ %.0.i196.i, %.lr.ph249.i ], [ %.3.i, %bb.t ] ; 8 uses
  %.2186247.i = phi ptr [ %i.ad, %.lr.ph249.i ], [ %.114.i164205.i, %bb.t ] ; 4 uses
  %i.cr = ptrtoaddr ptr %.2186247.i to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %.2186247.i, i64 1 ; 3 uses
  %i.ct = load i8, ptr %.2186247.i, align 1, !tbaa !37 ; 3 uses
  %i.cu = zext i8 %i.ct to i32
  %i.cv = icmp ugt i8 %i.ct, -65
  br i1 %i.cv, label %bb.q, label %sqlite3Utf8Read.exit179.thread.i

bb.q:                                             ; preds = %bb.p
  %i.cw = zext i8 %i.ct to i64
end_hunk_0
begin_hunk_1_@getToken:bb.a
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !37
  %.not241 = icmp eq i8 %i.ap, 61
  br i1 %.not241, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i32 144, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.ad:                                            ; preds = %bb.ab
  store i32 67, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.ae:                                            ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !37
  %.not240 = icmp eq i8 %i.ar, 124
  br i1 %.not240, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 75, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.ag:                                            ; preds = %bb.ae
  store i32 83, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.ah:                                            ; preds = %bb.a
  store i32 22, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.ai:                                            ; preds = %bb.a
  store i32 74, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.aj:                                            ; preds = %bb.a
  store i32 87, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.ak:                                            ; preds = %bb.a, %bb.a, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !37  ; 2 uses
  %.not239307 = icmp eq i8 %i.at, 0
  br i1 %.not239307, label %.critedge253, label %.lr.ph309

.lr.ph309:                                        ; preds = %bb.ak, %bb.am
  %i.au = phi i8 [ %i.be, %bb.am ], [ %i.at, %bb.ak ]
  %.4308 = phi i32 [ %i.bb, %bb.am ], [ 1, %bb.ak ] ; 2 uses
  %i.av = icmp eq i8 %i.au, %i.a
  br i1 %i.av, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph309
  %i.aw = add nsw i32 %.4308, 1                   ; 3 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %0, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !37
  %i.ba = icmp eq i8 %i.az, %i.a
  br i1 %i.ba, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al, %.lr.ph309
  %.5 = phi i32 [ %.4308, %.lr.ph309 ], [ %i.aw, %bb.al ]
  %i.bb = add nsw i32 %.5, 1                      ; 3 uses
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %0, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !37  ; 2 uses
  %.not239 = icmp eq i8 %i.be, 0
  br i1 %.not239, label %.critedge253, label %.lr.ph309, !llvm.loop !1266

bb.an:                                            ; preds = %bb.al
  store i32 88, ptr %1, align 4, !tbaa !4
  br label %.critedge4

.critedge253:                                     ; preds = %bb.am, %bb.ak
  %.4.lcssa = phi i32 [ 1, %bb.ak ], [ %i.bb, %bb.am ]
  store i32 144, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.ao:                                            ; preds = %bb.a
  %i.bf = tail call ptr @__ctype_b_loc() #46
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !168
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !37
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !170
  %i.bm = and i16 %i.bl, 2048
  %.not231 = icmp eq i16 %i.bm, 0
  br i1 %.not231, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 112, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.aq:                                            ; preds = %bb.ao, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  store i32 124, ptr %1, align 4, !tbaa !4
  %i.bn = tail call ptr @__ctype_b_loc() #46
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !168 ; 5 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %bb.aq
  %indvars.iv348 = phi i64 [ %indvars.iv.next349, %bb.ar ], [ 0, %bb.aq ] ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv348
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !37  ; 3 uses
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !170
  %i.bu = and i16 %i.bt, 2048
  %.not232 = icmp eq i16 %i.bu, 0
  %indvars.iv.next349 = add nuw nsw i64 %indvars.iv348, 1
  br i1 %.not232, label %bb.as, label %bb.ar, !llvm.loop !1267

bb.as:                                            ; preds = %bb.ar
  %i.bv = icmp eq i8 %i.bq, 46
  br i1 %i.bv, label %.preheader263, label %._crit_edge

.preheader263:                                    ; preds = %bb.as, %.preheader263
  %indvars.iv352 = phi i64 [ %indvars.iv.next353, %.preheader263 ], [ %indvars.iv348, %bb.as ]
  %indvars.iv.next353 = add nuw nsw i64 %indvars.iv352, 1 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next353
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !37
  %i.by = zext i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !170
  %i.cb = and i16 %i.ca, 2048
  %.not233 = icmp eq i16 %i.cb, 0
  br i1 %.not233, label %bb.at, label %.preheader263, !llvm.loop !1268

bb.at:                                            ; preds = %.preheader263
  store i32 125, ptr %1, align 4, !tbaa !4
  %sext = shl i64 %indvars.iv.next353, 32
  %.phi.trans.insert = ashr exact i64 %sext, 32   ; 2 uses
  %.phi.trans.insert378 = getelementptr inbounds i8, ptr %0, i64 %.phi.trans.insert
  %.pre = load i8, ptr %.phi.trans.insert378, align 1, !tbaa !37
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.as, %bb.at
  %.pre-phi383 = phi i64 [ %.phi.trans.insert, %bb.at ], [ %indvars.iv348, %bb.as ] ; 4 uses
  %i.cc = phi i8 [ %.pre, %bb.at ], [ %i.bq, %bb.as ]
  %.8.in = phi i64 [ %indvars.iv.next353, %bb.at ], [ %indvars.iv348, %bb.as ]
  %i.cd = getelementptr inbounds i8, ptr %0, i64 %.pre-phi383 ; 2 uses
  switch i8 %i.cc, label %.preheader474 [
    i8 101, label %bb.au
    i8 69, label %bb.au
  ]

bb.au:                                            ; preds = %._crit_edge, %._crit_edge
  %i.ce = getelementptr i8, ptr %i.cd, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !37  ; 2 uses
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !170
  %i.cj = and i16 %i.ci, 2048
  %.not234 = icmp eq i16 %i.cj, 0
  br i1 %.not234, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  switch i8 %i.cf, label %.preheader474 [
    i8 43, label %bb.aw
    i8 45, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.av, %bb.av
  %i.ck = getelementptr i8, ptr %i.cd, i64 2
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !37
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !170
  %i.cp = and i16 %i.co, 2048
  %.not235 = icmp eq i16 %i.cp, 0
  br i1 %.not235, label %.preheader474, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.au
  %i.cq = shl i64 %.8.in, 32
  %sext403 = add i64 %i.cq, 8589934592
  %i.cr = ashr exact i64 %sext403, 32
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %bb.ax
  %indvars.iv356 = phi i64 [ %indvars.iv.next357, %bb.ay ], [ %i.cr, %bb.ax ] ; 3 uses
  %i.cs = getelementptr inbounds i8, ptr %0, i64 %indvars.iv356
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !37
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !170
  %i.cx = and i16 %i.cw, 2048
  %.not236 = icmp eq i16 %i.cx, 0
  %indvars.iv.next357 = add nsw i64 %indvars.iv356, 1
  br i1 %.not236, label %bb.az, label %bb.ay, !llvm.loop !1269

bb.az:                                            ; preds = %bb.ay
  store i32 125, ptr %1, align 4, !tbaa !4
  br label %.preheader474

.preheader474:                                    ; preds = %bb.av, %._crit_edge, %bb.az, %bb.aw
  %indvars.iv360.ph = phi i64 [ %.pre-phi383, %bb.aw ], [ %indvars.iv356, %bb.az ], [ %.pre-phi383, %._crit_edge ], [ %.pre-phi383, %bb.av ]
  br label %bb.ba

bb.ba:                                            ; preds = %.preheader474, %.critedge2
  %indvars.iv360 = phi i64 [ %indvars.iv.next361, %.critedge2 ], [ %indvars.iv360.ph, %.preheader474 ] ; 3 uses
  %i.cy = getelementptr inbounds i8, ptr %0, i64 %indvars.iv360
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !37  ; 3 uses
  %i.da = zext nneg i8 %i.cz to i64
  %.not237 = icmp sgt i8 %i.cz, -1
  br i1 %.not237, label %bb.bb, label %.critedge2

bb.bb:                                            ; preds = %bb.ba
  %i.db = icmp samesign ugt i8 %i.cz, 31
  br i1 %i.db, label %bb.bc, label %.critedge4.loopexit

bb.bc:                                            ; preds = %bb.bb
  %i.dc = add nuw nsw i64 %i.da, 4294967264
  %i.dd = and i64 %i.dc, 4294967295
  %i.de = getelementptr inbounds nuw i8, ptr @sqlite3IsAsciiIdChar, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !37
  %.not238 = icmp eq i8 %i.df, 0
  br i1 %.not238, label %.critedge4.loopexit, label %.critedge2

.critedge2:                                       ; preds = %bb.ba, %bb.bc
  store i32 144, ptr %1, align 4, !tbaa !4
  %indvars.iv.next361 = add nsw i64 %indvars.iv360, 1
  br label %bb.ba, !llvm.loop !1270

.preheader264:                                    ; preds = %bb.a, %bb.bd
  %indvars.iv345 = phi i64 [ %indvars.iv.next346, %bb.bd ], [ 1, %bb.a ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv345
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !37  ; 2 uses
  %.not230 = icmp eq i8 %i.dh, 0
  br i1 %.not230, label %.critedge6, label %bb.bd

bb.bd:                                            ; preds = %.preheader264
  %indvars.iv.next346 = add nuw nsw i64 %indvars.iv345, 1 ; 2 uses
  %.not229 = icmp eq i8 %i.dh, 93
  br i1 %.not229, label %.critedge6, label %.preheader264, !llvm.loop !1271

.critedge6:                                       ; preds = %bb.bd, %.preheader264
  %.12.lcssa.in = phi i64 [ %indvars.iv.next346, %bb.bd ], [ %indvars.iv345, %.preheader264 ]
  %i.di = phi i32 [ 23, %bb.bd ], [ 144, %.preheader264 ]
  %.12.lcssa = trunc i64 %.12.lcssa.in to i32
  store i32 %i.di, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.be:                                            ; preds = %bb.a
  store i32 128, ptr %1, align 4, !tbaa !4
  %i.dj = tail call ptr @__ctype_b_loc() #46
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !168
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %bb.be
  %indvars.iv342 = phi i64 [ %indvars.iv.next343, %bb.bf ], [ 1, %bb.be ] ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv342
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !37
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %i.dn
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !170
  %i.dq = and i16 %i.dp, 2048
  %.not228 = icmp eq i16 %i.dq, 0
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1
  br i1 %.not228, label %.critedge4.loopexit313, label %bb.bf, !llvm.loop !1272

bb.bg:                                            ; preds = %bb.bg, %.preheader268
  %indvars.iv335 = phi i64 [ %indvars.iv.next336, %bb.bg ], [ 1, %.preheader268 ] ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv335
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !37
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.dt
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !170
  %i.dw = and i16 %i.dv, 2048
  %.not223 = icmp eq i16 %i.dw, 0
  %indvars.iv.next336 = add nuw nsw i64 %indvars.iv335, 1
  br i1 %.not223, label %bb.bh, label %bb.bg, !llvm.loop !1273

bb.bh:                                            ; preds = %bb.bg
  %i.dx = icmp samesign ugt i64 %indvars.iv335, 1
  br i1 %i.dx, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.dy = trunc nuw nsw i64 %indvars.iv335 to i32
  store i32 127, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.bj:                                            ; preds = %bb.bh, %bb.a, %bb.a, %bb.a
  store i32 128, ptr %1, align 4, !tbaa !4
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !37  ; 2 uses
  %.not224293 = icmp eq i8 %i.ea, 0
  br i1 %.not224293, label %.thread257.thread407, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bj, %bb.bt
  %i.eb = phi i8 [ %i.fi, %bb.bt ], [ %i.ea, %bb.bj ] ; 5 uses
  %.0295 = phi i32 [ %.1, %bb.bt ], [ 0, %bb.bj ] ; 6 uses
  %.15294 = phi i32 [ %i.ff, %bb.bt ], [ 1, %bb.bj ] ; 6 uses
  %.not225 = icmp sgt i8 %i.eb, -1
  br i1 %.not225, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %.lr.ph
  %i.ec = icmp samesign ugt i8 %i.eb, 31
  br i1 %i.ec, label %bb.bl, label %.thread257

bb.bl:                                            ; preds = %bb.bk
  %i.ed = zext nneg i8 %i.eb to i64
  %i.ee = getelementptr i8, ptr @sqlite3IsAsciiIdChar, i64 %i.ed
  %i.ef = getelementptr i8, ptr %i.ee, i64 -32
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !37
  %.not226 = icmp eq i8 %i.eg, 0
  br i1 %.not226, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.lr.ph
  %i.eh = add nsw i32 %.0295, 1
  br label %bb.bt

bb.bn:                                            ; preds = %bb.bl
  %i.ei = icmp eq i8 %i.eb, 40
  %i.ej = icmp sgt i32 %.0295, 0
  %or.cond = select i1 %i.ei, i1 %i.ej, i1 false
  br i1 %or.cond, label %.preheader266, label %bb.br

.preheader266:                                    ; preds = %bb.bn
  %i.ek = sext i32 %.15294 to i64
  br label %bb.bo

bb.bo:                                            ; preds = %.preheader266, %bb.bp
  %indvars.iv339 = phi i64 [ %i.ek, %.preheader266 ], [ %indvars.iv.next340, %bb.bp ] ; 2 uses
  %indvars.iv.next340 = add nsw i64 %indvars.iv339, 1 ; 3 uses
  %i.el = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next340
  %i.em = load i8, ptr %i.el, align 1, !tbaa !37  ; 4 uses
  %cond = icmp eq i8 %i.em, 0
  br i1 %cond, label %.loopexit267, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.en = tail call ptr @__ctype_b_loc() #46
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !168
  %i.ep = zext i8 %i.em to i64
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %i.ep
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !170
  %i.es = and i16 %i.er, 8192
  %i.et = icmp eq i16 %i.es, 0
  %i.eu = icmp ne i8 %i.em, 41
  %or.cond17 = and i1 %i.eu, %i.et
  br i1 %or.cond17, label %bb.bo, label %.critedge9, !llvm.loop !1274

.critedge9:                                       ; preds = %bb.bp
  %i.ev = icmp eq i8 %i.em, 41
  br i1 %i.ev, label %bb.bq, label %.loopexit267

bb.bq:                                            ; preds = %.critedge9
  %i.ew = trunc nsw i64 %indvars.iv339 to i32
  %i.ex = add nsw i32 %i.ew, 2
  br label %.critedge4

.loopexit267:                                     ; preds = %bb.bo, %.critedge9
  %i.ey = trunc i64 %indvars.iv.next340 to i32
  store i32 144, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.br:                                            ; preds = %bb.bn
  %i.ez = icmp eq i8 %i.eb, 58
  br i1 %i.ez, label %bb.bs, label %.thread257

bb.bs:                                            ; preds = %bb.br
  %i.fa = add nsw i32 %.15294, 1                  ; 2 uses
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds i8, ptr %0, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !37
  %i.fe = icmp eq i8 %i.fd, 58
  br i1 %i.fe, label %bb.bt, label %.thread257

bb.bt:                                            ; preds = %bb.bs, %bb.bm
  %.17 = phi i32 [ %.15294, %bb.bm ], [ %i.fa, %bb.bs ]
  %.1 = phi i32 [ %i.eh, %bb.bm ], [ %.0295, %bb.bs ] ; 2 uses
  %i.ff = add nsw i32 %.17, 1                     ; 3 uses
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds i8, ptr %0, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !37  ; 2 uses
  %.not224 = icmp eq i8 %i.fi, 0
  br i1 %.not224, label %.thread257, label %.lr.ph, !llvm.loop !1275

.thread257:                                       ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bk
  %.0289.ph = phi i32 [ %.0295, %bb.bk ], [ %.0295, %bb.br ], [ %.0295, %bb.bs ], [ %.1, %bb.bt ]
  %.18.ph = phi i32 [ %.15294, %bb.bk ], [ %.15294, %bb.br ], [ %.15294, %bb.bs ], [ %i.ff, %bb.bt ] ; 2 uses
  %i.fj = icmp eq i32 %.0289.ph, 0
  br i1 %i.fj, label %.thread257.thread407, label %.critedge4

.thread257.thread407:                             ; preds = %bb.bj, %.thread257
  %.18410 = phi i32 [ %.18.ph, %.thread257 ], [ 1, %bb.bj ]
  store i32 144, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.bu:                                            ; preds = %bb.a, %bb.a
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !37
  %i.fm = icmp eq i8 %i.fl, 39
  br i1 %i.fm, label %bb.bv, label %.thread260

.thread260:                                       ; preds = %bb.bu
  %i.fn = zext nneg i8 %i.a to i64
  br label %bb.cf

bb.bv:                                            ; preds = %bb.bu
  store i32 126, ptr %1, align 4, !tbaa !4
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bz, %bb.bv
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bz ], [ 2, %bb.bv ] ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !37  ; 3 uses
  switch i8 %i.fp, label %bb.bx [
    i8 39, label %bb.ca
    i8 0, label %bb.ca
  ]

bb.bx:                                            ; preds = %bb.bw
  %i.fq = tail call ptr @__ctype_b_loc() #46
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !168
  %i.fs = zext i8 %i.fp to i64
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !170
  %i.fv = and i16 %i.fu, 4096
  %.not = icmp eq i16 %i.fv, 0
  br i1 %.not, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store i32 144, ptr %1, align 4, !tbaa !4
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bx, %bb.by
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.bw, !llvm.loop !1276

bb.ca:                                            ; preds = %bb.bw, %bb.bw
  %i.fw = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.fx = icmp ne i8 %i.fp, 0                     ; 2 uses
  %i.fy = and i32 %i.fw, 1
  %i.fz = icmp eq i32 %i.fy, 0
  %or.cond11 = and i1 %i.fz, %i.fx
  br i1 %or.cond11, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  store i32 144, ptr %1, align 4, !tbaa !4
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ca, %bb.cb
  %i.ga = zext i1 %i.fx to i32
  %spec.select254 = add nuw nsw i32 %i.fw, %i.ga
  br label %.critedge4

bb.cd:                                            ; preds = %bb.a
  %i.gb = zext i8 %i.a to i64                     ; 2 uses
  %.not248 = icmp sgt i8 %i.a, -1
  br i1 %.not248, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.gc = icmp samesign ugt i8 %i.a, 31
  br i1 %i.gc, label %bb.cf, label %bb.cp

bb.cf:                                            ; preds = %.thread260, %bb.ce
  %i.gd = phi i64 [ %i.fn, %.thread260 ], [ %i.gb, %bb.ce ] ; 2 uses
  %i.ge = add nuw nsw i64 %i.gd, 4294967264
  %i.gf = and i64 %i.ge, 4294967295
  %i.gg = getelementptr inbounds nuw i8, ptr @sqlite3IsAsciiIdChar, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !37
  %.not249 = icmp eq i8 %i.gh, 0
  br i1 %.not249, label %bb.cp, label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.cd
  %i.gi = phi i64 [ %i.gd, %bb.cf ], [ %i.gb, %bb.cd ]
  br label %bb.ch

bb.ch:                                            ; preds = %.critedge13, %bb.cg
  %indvars.iv374 = phi i64 [ %indvars.iv.next375, %.critedge13 ], [ 1, %bb.cg ] ; 6 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv374
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !37  ; 3 uses
  %i.gl = zext nneg i8 %i.gk to i64
  %.not250 = icmp sgt i8 %i.gk, -1
  br i1 %.not250, label %bb.ci, label %.critedge13

bb.ci:                                            ; preds = %bb.ch
  %i.gm = icmp samesign ugt i8 %i.gk, 31
  br i1 %i.gm, label %bb.cj, label %.critedge15

bb.cj:                                            ; preds = %bb.ci
  %i.gn = add nuw nsw i64 %i.gl, 4294967264
  %i.go = and i64 %i.gn, 4294967295
  %i.gp = getelementptr inbounds nuw i8, ptr @sqlite3IsAsciiIdChar, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !37
  %.not251 = icmp eq i8 %i.gq, 0
  br i1 %.not251, label %.critedge15, label %.critedge13

.critedge13:                                      ; preds = %bb.ch, %bb.cj
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1
  br label %bb.ch, !llvm.loop !1277

.critedge15:                                      ; preds = %bb.ci, %bb.cj
  %i.gr = trunc nuw nsw i64 %indvars.iv374 to i32 ; 3 uses
  %i.gs = icmp samesign ult i64 %indvars.iv374, 2
  br i1 %i.gs, label %keywordCode.exit, label %bb.ck

bb.ck:                                            ; preds = %.critedge15
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv374
  %i.gu = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.gi
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !37
  %i.gw = zext i8 %i.gv to i32
  %i.gx = shl nuw nsw i32 %i.gw, 2
  %i.gy = getelementptr i8, ptr %i.gt, i64 -1
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !37
  %i.ha = zext i8 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !37
  %i.hd = zext i8 %i.hc to i32
  %i.he = mul nuw nsw i32 %i.hd, 3
  %i.hf = xor i32 %i.gx, %i.he
  %i.hg = xor i32 %i.hf, %i.gr
  %i.hh = urem i32 %i.hg, 127
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr @keywordCode.aHash, i64 %i.hi
  %.0.in.in23.i = load i8, ptr %i.hj, align 1, !tbaa !37 ; 2 uses
  %.not24.i = icmp eq i8 %.0.in.in23.i, 0
  br i1 %.not24.i, label %keywordCode.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ck, %bb.co
  %.0.in.in25.i = phi i8 [ %.0.in.in.i, %bb.co ], [ %.0.in.in23.i, %bb.ck ]
  %.0.in.i = zext i8 %.0.in.in25.i to i64
  %.0.i = add nuw nsw i64 %.0.in.i, 4294967295
  %i.hk = and i64 %.0.i, 4294967295               ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr @keywordCode.aLen, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !37
  %i.hn = zext i8 %i.hm to i64
  %i.ho = icmp eq i64 %indvars.iv374, %i.hn
  br i1 %i.ho, label %bb.cl, label %bb.co

bb.cl:                                            ; preds = %.lr.ph.i
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr @keywordCode.aOffset, i64 %i.hk
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !170
  %i.hr = zext i16 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr @keywordCode.zText, i64 %i.hr
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cn, %bb.cl
  %.in.i.i = phi i32 [ %i.ht, %bb.cn ], [ %i.gr, %bb.cl ] ; 2 uses
  %.015.i.i = phi ptr [ %i.ie, %bb.cn ], [ %0, %bb.cl ] ; 3 uses
  %.01014.i.i = phi ptr [ %i.id, %bb.cn ], [ %i.hs, %bb.cl ] ; 2 uses
  %i.ht = add nsw i32 %.in.i.i, -1
  %i.hu = load i8, ptr %.01014.i.i, align 1, !tbaa !37 ; 2 uses
  %.not.i.i = icmp eq i8 %i.hu, 0
  br i1 %.not.i.i, label %sqlite3StrNICmp.exit.loopexit.i, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph.i.i
  %i.hv = zext i8 %i.hu to i64
  %i.hw = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !37  ; 2 uses
  %i.hy = load i8, ptr %.015.i.i, align 1, !tbaa !37
  %i.hz = zext i8 %i.hy to i64
  %i.ia = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.hz
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !37  ; 2 uses
  %i.ic = icmp eq i8 %i.hx, %i.ib
  br i1 %i.ic, label %bb.cn, label %split.i.i

bb.cn:                                            ; preds = %bb.cm
  %i.id = getelementptr inbounds nuw i8, ptr %.01014.i.i, i64 1
  %i.ie = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 1
  %i.if = icmp samesign ugt i32 %.in.i.i, 1
  br i1 %i.if, label %.lr.ph.i.i, label %sqlite3StrNICmp.exit.thread.i, !llvm.loop !585

split.i.i:                                        ; preds = %bb.cm
  %i.ig = zext i8 %i.hx to i32
  br label %sqlite3StrNICmp.exit.i

sqlite3StrNICmp.exit.loopexit.i:                  ; preds = %.lr.ph.i.i
  %.pre.i = load i8, ptr %.015.i.i, align 1, !tbaa !37
  %.phi.trans.insert.i = zext i8 %.pre.i to i64
  %.phi.trans.insert34.i = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert.i
  %.pre35.i = load i8, ptr %.phi.trans.insert34.i, align 1, !tbaa !37
  br label %sqlite3StrNICmp.exit.i

sqlite3StrNICmp.exit.i:                           ; preds = %sqlite3StrNICmp.exit.loopexit.i, %split.i.i
  %i.ih = phi i8 [ %i.ib, %split.i.i ], [ %.pre35.i, %sqlite3StrNICmp.exit.loopexit.i ]
  %i.ii = phi i32 [ %i.ig, %split.i.i ], [ 0, %sqlite3StrNICmp.exit.loopexit.i ]
  %i.ij = zext i8 %i.ih to i32
  %i.ik = icmp eq i32 %i.ii, %i.ij
  br i1 %i.ik, label %sqlite3StrNICmp.exit.thread.i, label %bb.co

sqlite3StrNICmp.exit.thread.i:                    ; preds = %sqlite3StrNICmp.exit.i, %bb.cn
  %i.il = getelementptr inbounds nuw i8, ptr @keywordCode.aCode, i64 %i.hk
  %i.im = load i8, ptr %i.il, align 1, !tbaa !37
  %i.in = zext i8 %i.im to i32
  br label %keywordCode.exit

bb.co:                                            ; preds = %sqlite3StrNICmp.exit.i, %.lr.ph.i
  %i.io = getelementptr inbounds nuw i8, ptr @keywordCode.aNext, i64 %i.hk
  %.0.in.in.i = load i8, ptr %i.io, align 1, !tbaa !37 ; 2 uses
  %.not.i = icmp eq i8 %.0.in.in.i, 0
  br i1 %.not.i, label %keywordCode.exit, label %.lr.ph.i, !llvm.loop !1278

keywordCode.exit:                                 ; preds = %bb.co, %.critedge15, %bb.ck, %sqlite3StrNICmp.exit.thread.i
  %.014.i = phi i32 [ 23, %.critedge15 ], [ %i.in, %sqlite3StrNICmp.exit.thread.i ], [ 23, %bb.ck ], [ 23, %bb.co ]
  store i32 %.014.i, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.cp:                                            ; preds = %bb.ce, %bb.cf
  store i32 144, ptr %1, align 4, !tbaa !4
  br label %.critedge4

.critedge4.loopexit313:                           ; preds = %bb.bf
  %i.ip = trunc nuw nsw i64 %indvars.iv342 to i32
  br label %.critedge4

.critedge4.loopexit:                              ; preds = %bb.bb, %bb.bc
  %i.iq = trunc nsw i64 %indvars.iv360 to i32
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %.loopexit267, %bb.bq, %.critedge4.loopexit313, %.thread257, %.thread257.thread407, %bb.an, %.critedge253, %bb.cp, %keywordCode.exit, %bb.cc, %bb.bi, %.critedge6, %bb.ap, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y, %bb.w, %bb.v, %bb.u, %bb.t, %bb.r, %bb.q, %.loopexit, %bb.p, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.d
  %.1198 = phi i32 [ %i.gr, %keywordCode.exit ], [ 1, %bb.cp ], [ %i.l, %bb.d ], [ %i.r, %bb.g ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.p ], [ %i.af, %.loopexit ], [ 1, %bb.q ], [ %i.aj, %bb.r ], [ 2, %bb.t ], [ 2, %bb.u ], [ 2, %bb.v ], [ 1, %bb.w ], [ 2, %bb.y ], [ 2, %bb.z ], [ 1, %bb.aa ], [ 2, %bb.ac ], [ 2, %bb.ad ], [ 1, %bb.af ], [ 2, %bb.ag ], [ 1, %bb.ah ], [ 1, %bb.ai ], [ 1, %bb.aj ], [ %spec.select254, %bb.cc ], [ %.4.lcssa, %.critedge253 ], [ 1, %bb.ap ], [ %.12.lcssa, %.critedge6 ], [ %.18410, %.thread257.thread407 ], [ %i.dy, %bb.bi ], [ %i.ey, %.loopexit267 ], [ %i.aw, %bb.an ], [ %.18.ph, %.thread257 ], [ %i.ip, %.critedge4.loopexit313 ], [ %i.ex, %bb.bq ], [ %i.iq, %.critedge4.loopexit ]
  ret i32 %.1198
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3Parser(ptr noundef nonnull initializes((8, 16)) %0, i32 noundef %1, ptr %2, i64 %3, ptr noundef %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %struct.DbFixer, align 8            ; 7 uses
  %6 = alloca %struct.DbFixer, align 8            ; 9 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  %7 = alloca %struct.Token, align 8              ; 7 uses
  %8 = alloca %struct.DbFixer, align 8            ; 7 uses
  %9 = alloca %union.YYMINORTYPE, align 8         ; 4 uses
  %10 = alloca %struct.SelectDest, align 4        ; 4 uses
  %11 = alloca %union.YYMINORTYPE, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #43
  %i.h = load i32, ptr %0, align 8, !tbaa !370    ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 8, !tbaa !370
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %i.j, align 4, !tbaa !1279
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.k, align 8, !tbaa !1280
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.l, align 4, !tbaa !377
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pr = phi i32 [ 0, %bb.b ], [ %i.h, %bb.a ]
  store ptr %2, ptr %11, align 8, !tbaa !72
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %3, ptr %.sroa.2.0..sroa_idx, align 8
  %i.m = icmp eq i32 %1, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  store ptr %4, ptr %i.n, align 8, !tbaa !1281
  %i.o = trunc i32 %1 to i8                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %.not = icmp eq i32 %1, 248
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.ajk, %bb.c
  %i.aa = phi i32 [ %i.exk, %bb.ajk ], [ %.pr, %bb.c ] ; 5 uses
  %i.ab = zext nneg i32 %i.aa to i64
end_hunk_1
begin_hunk_2_@sqlite3CodeSubselect:bb.a
  br i1 %.not.i.i172, label %sqlite3VdbeAddOp2.exit171.sink.split, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.not23.i.i173 = icmp eq i32 %i.my, 0
  %i.mz = shl nsw i32 %i.my, 1
  %spec.select.i.i174 = select i1 %.not23.i.i173, i32 42, i32 %i.mz ; 4 uses
  %i.na = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.nb = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.na, i64 42 ; 2 uses
  %i.nd = load i8, ptr %i.nc, align 2, !tbaa !129
  %i.ne = icmp eq i8 %i.nd, 0
  br i1 %i.ne, label %bb.bu, label %resizeOpArray.exit.i.i175

bb.bu:                                            ; preds = %bb.bt
  %i.nf = mul i32 %spec.select.i.i174, 24
  %i.ng = load ptr, ptr %i.nb, align 8, !tbaa !136
  %i.nh = tail call ptr @sqlite3_realloc(ptr noundef %i.ng, i32 noundef %i.nf) ; 3 uses
  %.not.i.i.i.i180 = icmp eq ptr %i.nh, null
  br i1 %.not.i.i.i.i180, label %bb.bv, label %sqlite3DbRealloc.exit.i.i.i181

bb.bv:                                            ; preds = %bb.bu
  store i8 1, ptr %i.nc, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i175

sqlite3DbRealloc.exit.i.i.i181:                   ; preds = %bb.bu
  store i32 %spec.select.i.i174, ptr %i.mc, align 4, !tbaa !147
  store ptr %i.nh, ptr %i.nb, align 8, !tbaa !136
  %i.ni = icmp sgt i32 %spec.select.i.i174, %i.my
  br i1 %i.ni, label %bb.bw, label %resizeOpArray.exit.i.i175

bb.bw:                                            ; preds = %sqlite3DbRealloc.exit.i.i.i181
  %i.nj = sext i32 %i.my to i64
  %i.nk = getelementptr inbounds [24 x i8], ptr %i.nh, i64 %i.nj
  %i.nl = sub nsw i32 %spec.select.i.i174, %i.my
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = mul nuw nsw i64 %i.nm, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.nk, i8 0, i64 %i.nn, i1 false)
  br label %resizeOpArray.exit.i.i175

resizeOpArray.exit.i.i175:                        ; preds = %bb.bw, %sqlite3DbRealloc.exit.i.i.i181, %bb.bv, %bb.bt
  %i.no = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 42
  %i.nq = load i8, ptr %i.np, align 2, !tbaa !129
  %.not24.i.i176 = icmp eq i8 %i.nq, 0
  br i1 %.not24.i.i176, label %sqlite3VdbeAddOp2.exit171.sink.split.sink.split, label %sqlite3VdbeAddOp2.exit171

sqlite3VdbeAddOp2.exit171.sink.split.sink.split:  ; preds = %resizeOpArray.exit.i.i175, %resizeOpArray.exit.i.i164
  %.sink260.ph = phi i32 [ %i.md, %resizeOpArray.exit.i.i164 ], [ %i.mx, %resizeOpArray.exit.i.i175 ]
  %.sink.ph = phi i8 [ 112, %resizeOpArray.exit.i.i164 ], [ 46, %resizeOpArray.exit.i.i175 ]
  %.pre.i.i179 = load i32, ptr %i.mb, align 8, !tbaa !135
  br label %sqlite3VdbeAddOp2.exit171.sink.split

sqlite3VdbeAddOp2.exit171.sink.split:             ; preds = %sqlite3VdbeAddOp2.exit171.sink.split.sink.split, %bb.bs, %bb.bn
  %.sink263 = phi i32 [ %i.md, %bb.bn ], [ %i.mx, %bb.bs ], [ %.pre.i.i179, %sqlite3VdbeAddOp2.exit171.sink.split.sink.split ]
  %.sink260 = phi i32 [ %i.md, %bb.bn ], [ %i.mx, %bb.bs ], [ %.sink260.ph, %sqlite3VdbeAddOp2.exit171.sink.split.sink.split ]
  %.sink = phi i8 [ 112, %bb.bn ], [ 46, %bb.bs ], [ %.sink.ph, %sqlite3VdbeAddOp2.exit171.sink.split.sink.split ]
  %i.nr = add nsw i32 %.sink263, 1
  store i32 %i.nr, ptr %i.mb, align 8, !tbaa !135
  %i.ns = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !136
  %i.nu = sext i32 %.sink260 to i64
  %i.nv = getelementptr inbounds [24 x i8], ptr %i.nt, i64 %i.nu ; 6 uses
  store i8 %.sink, ptr %i.nv, align 8, !tbaa !137
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 4
  store i32 0, ptr %i.nw, align 4, !tbaa !141
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  store i32 %i.lw, ptr %i.nx, align 8, !tbaa !140
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 12
  store i32 0, ptr %i.ny, align 4, !tbaa !190
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  store ptr null, ptr %i.nz, align 8, !tbaa !37
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nv, i64 1
  store i8 0, ptr %i.oa, align 1, !tbaa !191
  %i.ob = getelementptr inbounds nuw i8, ptr %i.b, i64 339
  store i8 0, ptr %i.ob, align 1, !tbaa !104
  br label %sqlite3VdbeAddOp2.exit171

sqlite3VdbeAddOp2.exit171:                        ; preds = %sqlite3VdbeAddOp2.exit171.sink.split, %resizeOpArray.exit.i.i175, %resizeOpArray.exit.i.i164
  %i.oc = getelementptr inbounds nuw i8, ptr %i.lt, i64 80 ; 2 uses
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !1221
  tail call fastcc void @sqlite3ExprDelete(ptr noundef %i.od)
  %.val = load ptr, ptr %0, align 8, !tbaa !244   ; 2 uses
  %.not.i.i.i187 = icmp eq ptr %.val, null
  br i1 %.not.i.i.i187, label %sqlite3DbMallocRaw.exit.i.i, label %bb.bx

bb.bx:                                            ; preds = %sqlite3VdbeAddOp2.exit171
  %i.oe = getelementptr inbounds nuw i8, ptr %.val, i64 42 ; 2 uses
  %i.of = load i8, ptr %i.oe, align 2, !tbaa !129
  %i.og = icmp eq i8 %i.of, 0
  br i1 %i.og, label %bb.by, label %sqlite3Expr.exit

bb.by:                                            ; preds = %bb.bx
  %i.oh = tail call ptr @sqlite3_malloc(i32 noundef 120) ; 2 uses
  %i.oi = icmp eq ptr %i.oh, null
  br i1 %i.oi, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i8 1, ptr %i.oe, align 2, !tbaa !129
  br label %sqlite3Expr.exit

sqlite3DbMallocRaw.exit.i.i:                      ; preds = %sqlite3VdbeAddOp2.exit171
  %i.oj = tail call ptr @sqlite3_malloc(i32 noundef 120) ; 2 uses
  %.not.i.i189 = icmp eq ptr %i.oj, null
  br i1 %.not.i.i189, label %sqlite3Expr.exit, label %bb.ca

bb.ca:                                            ; preds = %sqlite3DbMallocRaw.exit.i.i, %bb.by
  %.0.i11.i.i = phi ptr [ %i.oj, %sqlite3DbMallocRaw.exit.i.i ], [ %i.oh, %bb.by ] ; 8 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(119) %i.ok, i8 0, i64 119, i1 false)
  store i8 124, ptr %.0.i11.i.i, align 8, !tbaa !1311
  %i.ol = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 16
  %i.om = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ol, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.om, align 8, !tbaa !1312
  %i.on = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 56
  %i.oo = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oo, ptr noundef nonnull align 8 dereferenceable(16) @sqlite3CodeSubselect.one, i64 16, i1 false), !tbaa.struct !1313
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.on, ptr noundef nonnull align 8 dereferenceable(16) @sqlite3CodeSubselect.one, i64 16, i1 false)
  %i.op = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 112
  store i32 1, ptr %i.op, align 8, !tbaa !1314
  br label %sqlite3Expr.exit

sqlite3Expr.exit:                                 ; preds = %bb.bx, %bb.bz, %sqlite3DbMallocRaw.exit.i.i, %bb.ca
  %.0.i188 = phi ptr [ %.0.i11.i.i, %bb.ca ], [ null, %sqlite3DbMallocRaw.exit.i.i ], [ null, %bb.bz ], [ null, %bb.bx ]
  store ptr %.0.i188, ptr %i.oc, align 8, !tbaa !1221
  %i.oq = call fastcc i32 @sqlite3Select(ptr noundef nonnull %0, ptr noundef nonnull %i.lt, ptr noundef %3, ptr noundef null, i32 noundef 0, ptr noundef null)
  %.not84 = icmp eq i32 %i.oq, 0
  br i1 %.not84, label %bb.cb, label %.critedge96

bb.cb:                                            ; preds = %sqlite3Expr.exit
  %i.or = load i32, ptr %i.lx, align 4, !tbaa !1410
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i32 %i.or, ptr %i.os, align 4, !tbaa !1360
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %sqlite3VdbeChangeP4.exit, %sqlite3VdbeAddOp2.exit
  %.5 = phi i32 [ %.0, %sqlite3VdbeAddOp2.exit ], [ %.3, %sqlite3VdbeChangeP4.exit ], [ %.0, %bb.cb ] ; 4 uses
  %.not92 = icmp eq i32 %.5, 0
  br i1 %.not92, label %sqlite3VdbeJumpHere.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ot = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ou = load i32, ptr %i.ot, align 8, !tbaa !135 ; 2 uses
  %i.ov = icmp sgt i32 %.5, 0
  %i.ow = icmp sge i32 %i.ou, %.5
  %or.cond.i = select i1 %i.ov, i1 %i.ow, i1 false
  br i1 %or.cond.i, label %bb.ce, label %sqlite3VdbeJumpHere.exit

bb.ce:                                            ; preds = %bb.cd
  %i.ox = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !136 ; 2 uses
  %.not.i.i183 = icmp eq ptr %i.oy, null
  br i1 %.not.i.i183, label %sqlite3VdbeJumpHere.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.oz = zext nneg i32 %.5 to i64
  %i.pa = getelementptr [24 x i8], ptr %i.oy, i64 %i.oz
  %i.pb = getelementptr i8, ptr %i.pa, i64 -16
  store i32 %i.ou, ptr %i.pb, align 8, !tbaa !140
  br label %sqlite3VdbeJumpHere.exit

.critedge94:                                      ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %sqlite3VdbeJumpHere.exit

.critedge96:                                      ; preds = %sqlite3Expr.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %sqlite3VdbeJumpHere.exit

sqlite3VdbeJumpHere.exit:                         ; preds = %bb.cf, %bb.ce, %bb.cd, %bb.cc, %.critedge96, %.critedge94, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3ExprCodeTarget(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 12 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %3 = alloca %struct.Expr, align 8               ; 6 uses
  %4 = alloca %struct.Expr, align 8               ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !367  ; 98 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  store i32 0, ptr %i.b, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #43
  store i32 0, ptr %i.c, align 4, !tbaa !4
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %sqlite3ReleaseTempReg.exit468, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %1, align 8, !tbaa !1311    ; 5 uses
  %i.j = zext nneg i8 %i.i to i32
  switch i8 %i.i, label %sqlite3VdbeAddOp3.exitthread-pre-split [
    i8 -105, label %bb.d
    i8 -107, label %bb.h
    i8 124, label %bb.k
    i8 125, label %bb.l
    i8 88, label %bb.m
    i8 92, label %.thread
    i8 126, label %bb.s
    i8 -128, label %bb.t
    i8 127, label %bb.v
    i8 31, label %bb.w
    i8 71, label %bb.x
    i8 70, label %bb.x
    i8 69, label %bb.x
    i8 72, label %bb.x
    i8 67, label %bb.x
    i8 68, label %bb.x
    i8 61, label %bb.ah
    i8 60, label %bb.ah
    i8 78, label %bb.ah
    i8 80, label %bb.ah
    i8 79, label %bb.ah
    i8 82, label %bb.ah
    i8 74, label %bb.ah
    i8 75, label %bb.ah
    i8 81, label %bb.ah
    i8 76, label %bb.ah
    i8 77, label %bb.ah
    i8 83, label %bb.ah
    i8 85, label %bb.aw
    i8 87, label %bb.bd
    i8 16, label %bb.bd
    i8 65, label %bb.bj
    i8 66, label %bb.bj
    i8 -106, label %bb.ce
    i8 -104, label %bb.ch
    i8 -108, label %bb.ch
    i8 17, label %bb.dm
    i8 110, label %bb.dm
    i8 64, label %bb.do
    i8 63, label %bb.ed
    i8 86, label %bb.ek
    i8 -127, label %bb.el
    i8 48, label %bb.fi
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1836 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1473
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = load i32, ptr %i.o, align 8, !tbaa !1312
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.q ; 2 uses
  %i.s = load i8, ptr %i.l, align 8, !tbaa !1485
  %.not355 = icmp eq i8 %i.s, 0
  br i1 %.not355, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !1799
  br label %sqlite3VdbeAddOp3.exitthread-pre-split

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !1484
  %.not356 = icmp eq i8 %i.w, 0
  br i1 %.not356, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !1472
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !1474
  %i.ab = tail call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %i.f, i32 noundef 2, i32 noundef %i.y, i32 noundef %i.aa, i32 noundef %2) ; 0 uses
  br label %sqlite3VdbeAddOp3.exitthread-pre-split

bb.h:                                             ; preds = %bb.f, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !1330 ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1360
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !1837
  %i.aj = add nsw i32 %i.ai, %i.ag
  br label %sqlite3VdbeAddOp3.exitthread-pre-split

bb.j:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1581
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.an = load i32, ptr %i.am, align 4, !tbaa !1360
  tail call fastcc void @sqlite3ExprCodeGetColumn(ptr noundef %i.f, ptr noundef %i.al, i32 noundef %i.an, i32 noundef %i.ad, i32 noundef %2)
  br label %sqlite3VdbeAddOp3.exitthread-pre-split

bb.k:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1197
  tail call fastcc void @codeInteger(ptr noundef %i.f, ptr noundef %i.ap, i32 noundef 0, i32 noundef %2)
  br label %sqlite3VdbeAddOp3.exitthread-pre-split

bb.l:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1197
  tail call fastcc void @codeReal(ptr noundef %i.f, ptr noundef %i.ar, i32 noundef 0, i32 noundef %2)
  br label %sqlite3VdbeAddOp3.exitthread-pre-split

bb.m:                                             ; preds = %bb.c
  %i.as = load ptr, ptr %0, align 8, !tbaa !244
  tail call fastcc void @sqlite3DequoteExpr(ptr noundef %i.as, ptr noundef nonnull %1)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1197
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = lshr i32 %i.aw, 1
  %i.ay = tail call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef nonnull %i.f, i32 noundef 88, i32 noundef 0, i32 noundef %2, i32 noundef 0, ptr noundef %i.au, i32 noundef %i.ax) ; 0 uses
  br label %sqlite3VdbeAddOp3.exitthread-pre-split

.thread:                                          ; preds = %bb.b, %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !135 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 28 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !147 ; 6 uses
  %.not.i.i643 = icmp sgt i32 %i.bc, %i.ba
  br i1 %.not.i.i643, label %bb.r, label %bb.n

bb.n:                                             ; preds = %.thread
  %.not23.i.i644 = icmp eq i32 %i.bc, 0
  %i.bd = shl nsw i32 %i.bc, 1
  %spec.select.i.i645 = select i1 %.not23.i.i644, i32 42, i32 %i.bd ; 4 uses
  %i.be = load ptr, ptr %i.f, align 8, !tbaa !106
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 42 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 2, !tbaa !129
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %bb.o, label %resizeOpArray.exit.i.i646

bb.o:                                             ; preds = %bb.n
  %i.bj = mul i32 %spec.select.i.i645, 24
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !136
  %i.bl = tail call ptr @sqlite3_realloc(ptr noundef %i.bk, i32 noundef %i.bj) ; 3 uses
  %.not.i.i.i.i650 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i650, label %bb.p, label %sqlite3DbRealloc.exit.i.i.i651

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.bg, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i646

sqlite3DbRealloc.exit.i.i.i651:                   ; preds = %bb.o
  store i32 %spec.select.i.i645, ptr %i.bb, align 4, !tbaa !147
  store ptr %i.bl, ptr %i.bf, align 8, !tbaa !136
  %i.bm = icmp sgt i32 %spec.select.i.i645, %i.bc
  br i1 %i.bm, label %bb.q, label %resizeOpArray.exit.i.i646

bb.q:                                             ; preds = %sqlite3DbRealloc.exit.i.i.i651
  %i.bn = sext i32 %i.bc to i64
  %i.bo = getelementptr inbounds [24 x i8], ptr %i.bl, i64 %i.bn
  %i.bp = sub nsw i32 %spec.select.i.i645, %i.bc
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = mul nuw nsw i64 %i.bq, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bo, i8 0, i64 %i.br, i1 false)
  br label %resizeOpArray.exit.i.i646

resizeOpArray.exit.i.i646:                        ; preds = %bb.q, %sqlite3DbRealloc.exit.i.i.i651, %bb.p, %bb.n
  %i.bs = load ptr, ptr %i.f, align 8, !tbaa !106
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 42
  %i.bu = load i8, ptr %i.bt, align 2, !tbaa !129
  %.not24.i.i647 = icmp eq i8 %i.bu, 0
  br i1 %.not24.i.i647, label %resizeOpArray.exit._crit_edge.i.i648, label %sqlite3VdbeAddOp3.exitthread-pre-split

resizeOpArray.exit._crit_edge.i.i648:             ; preds = %resizeOpArray.exit.i.i646
  %.pre.i.i649 = load i32, ptr %i.az, align 8, !tbaa !135
  br label %bb.r

bb.r:                                             ; preds = %resizeOpArray.exit._crit_edge.i.i648, %.thread
  %i.bv = phi i32 [ %.pre.i.i649, %resizeOpArray.exit._crit_edge.i.i648 ], [ %i.ba, %.thread ]
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.az, align 8, !tbaa !135
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !136
  %i.bz = sext i32 %i.ba to i64
  %i.ca = getelementptr inbounds [24 x i8], ptr %i.by, i64 %i.bz ; 6 uses
  store i8 112, ptr %i.ca, align 8, !tbaa !137
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store i32 0, ptr %i.cb, align 4, !tbaa !141
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i32 %2, ptr %i.cc, align 8, !tbaa !140
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 0, ptr %i.cd, align 4, !tbaa !190
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store ptr null, ptr %i.ce, align 8, !tbaa !37
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  store i8 0, ptr %i.cf, align 1, !tbaa !191
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 339
  store i8 0, ptr %i.cg, align 1, !tbaa !104
end_hunk_2
