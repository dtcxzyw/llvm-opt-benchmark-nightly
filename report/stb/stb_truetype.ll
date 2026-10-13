Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_truetype?download=true
inline.NumInlined: 388
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@stbtt__get_subr:bb.a
  %.sroa.4.1 = phi i32 [ %i.g, %bb.c ], [ %.sroa.4.0, %stbtt__buf_get8.exit.i.i ]
  %.0.i.i.1.i = phi i32 [ %i.l, %bb.c ], [ %.0.i.i.i, %stbtt__buf_get8.exit.i.i ] ; 3 uses
  %i.m = icmp samesign ugt i32 %.0.i.i.1.i, 33899
  %i.n = icmp samesign ugt i32 %.0.i.i.1.i, 1239
  %spec.select = select i1 %i.n, i32 1131, i32 107
  %.0 = select i1 %i.m, i32 32768, i32 %spec.select
  %i.o = add nsw i32 %.0, %2                      ; 3 uses
  %i.p = icmp sgt i32 %i.o, -1
  %.not = icmp slt i32 %i.o, %.0.i.i.1.i
  %or.cond = and i1 %i.p, %.not
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %stbtt__cff_index_count.exit
  %.sroa.9.8.insert.shift = and i64 %1, -4294967296
  %.sroa.4.8.insert.ext = zext i32 %.sroa.4.1 to i64
  %.sroa.4.8.insert.insert = or disjoint i64 %.sroa.9.8.insert.shift, %.sroa.4.8.insert.ext
  %i.q = tail call { ptr, i64 } @stbtt__cff_index_get(ptr %0, i64 %.sroa.4.8.insert.insert, i32 noundef %i.o)
  br label %bb.e

bb.e:                                             ; preds = %stbtt__cff_index_count.exit, %bb.d
  %.pn = phi { ptr, i64 } [ %i.q, %bb.d ], [ zeroinitializer, %stbtt__cff_index_count.exit ]
  ret { ptr, i64 } %.pn
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i64 } @stbtt__cid_get_glyph_subrs(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !40 ; 9 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 156
  %.sroa.24.0.copyload = load i32, ptr %.sroa.24.0..sroa_idx, align 4, !tbaa !39 ; 12 uses
  %i.b = tail call i32 @llvm.smin.i32(i32 %.sroa.24.0.copyload, i32 0) ; 2 uses
  %.not.i = icmp sgt i32 %.sroa.24.0.copyload, 0
  br i1 %.not.i, label %stbtt__buf_get8.exit, label %stbtt__buf_get8.exit.thread

stbtt__buf_get8.exit:                             ; preds = %bb.a
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !37
  switch i8 %i.e, label %.split [
    i8 0, label %stbtt__buf_get8.exit.thread
    i8 3, label %.preheader.preheader
  ]

.preheader.preheader:                             ; preds = %stbtt__buf_get8.exit
  %.not.i.i.not = icmp eq i32 %.sroa.24.0.copyload, 1
  br i1 %.not.i.i.not, label %stbtt__buf_get8.exit.i, label %bb.c

stbtt__buf_get8.exit.thread:                      ; preds = %bb.a, %stbtt__buf_get8.exit
  %.sroa.9.164 = phi i32 [ 1, %stbtt__buf_get8.exit ], [ %i.b, %bb.a ]
  %i.f = add nsw i32 %.sroa.9.164, %1             ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  %i.h = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %.sroa.24.0.copyload)
  %..i.i = select i1 %i.g, i32 %.sroa.24.0.copyload, i32 %i.h ; 2 uses
  %.not.i25 = icmp slt i32 %..i.i, %.sroa.24.0.copyload
  br i1 %.not.i25, label %bb.b, label %.split

bb.b:                                             ; preds = %stbtt__buf_get8.exit.thread
  %i.i = sext i32 %..i.i to i64
  %i.j = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !37
  %i.l = zext i8 %i.k to i32
  br label %.split

bb.c:                                             ; preds = %.preheader.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !37
  %i.o = zext i8 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 8
  br label %stbtt__buf_get8.exit.i

stbtt__buf_get8.exit.i:                           ; preds = %bb.c, %.preheader.preheader
  %.sroa.9.3 = phi i32 [ 2, %bb.c ], [ 1, %.preheader.preheader ] ; 4 uses
  %.0.i.i = phi i32 [ %i.p, %bb.c ], [ 0, %.preheader.preheader ] ; 2 uses
  %.not.i.i.1 = icmp samesign ult i32 %.sroa.9.3, %.sroa.24.0.copyload
  br i1 %.not.i.i.1, label %bb.d, label %stbtt__buf_get8.exit.i.1

bb.d:                                             ; preds = %stbtt__buf_get8.exit.i
  %i.q = add nuw nsw i32 %.sroa.9.3, 1
  %i.r = zext nneg i32 %.sroa.9.3 to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !37
  %i.u = zext i8 %i.t to i32
  %i.v = or disjoint i32 %.0.i.i, %i.u
  br label %stbtt__buf_get8.exit.i.1

stbtt__buf_get8.exit.i.1:                         ; preds = %bb.d, %stbtt__buf_get8.exit.i
  %.sroa.9.3.1 = phi i32 [ %i.q, %bb.d ], [ %.sroa.9.3, %stbtt__buf_get8.exit.i ] ; 4 uses
  %.0.i.i.1 = phi i32 [ %i.v, %bb.d ], [ %.0.i.i, %stbtt__buf_get8.exit.i ] ; 2 uses
  %.not.i.i31 = icmp samesign ult i32 %.sroa.9.3.1, %.sroa.24.0.copyload
  br i1 %.not.i.i31, label %bb.e, label %stbtt__buf_get8.exit.i32

bb.e:                                             ; preds = %stbtt__buf_get8.exit.i.1
  %i.w = add nuw nsw i32 %.sroa.9.3.1, 1
  %i.x = zext nneg i32 %.sroa.9.3.1 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !37
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 8
  br label %stbtt__buf_get8.exit.i32

stbtt__buf_get8.exit.i32:                         ; preds = %bb.e, %stbtt__buf_get8.exit.i.1
  %.sroa.9.5 = phi i32 [ %i.w, %bb.e ], [ %.sroa.9.3.1, %stbtt__buf_get8.exit.i.1 ] ; 4 uses
  %.0.i.i33 = phi i32 [ %i.ab, %bb.e ], [ 0, %stbtt__buf_get8.exit.i.1 ] ; 2 uses
  %.not.i.i31.1 = icmp samesign ult i32 %.sroa.9.5, %.sroa.24.0.copyload
  br i1 %.not.i.i31.1, label %bb.f, label %stbtt__buf_get8.exit.i32.1

bb.f:                                             ; preds = %stbtt__buf_get8.exit.i32
  %i.ac = add nuw nsw i32 %.sroa.9.5, 1
  %i.ad = zext nneg i32 %.sroa.9.5 to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !37
  %i.ag = zext i8 %i.af to i32
  %i.ah = or disjoint i32 %.0.i.i33, %i.ag
  br label %stbtt__buf_get8.exit.i32.1

stbtt__buf_get8.exit.i32.1:                       ; preds = %bb.f, %stbtt__buf_get8.exit.i32
  %.sroa.9.5.1 = phi i32 [ %i.ac, %bb.f ], [ %.sroa.9.5, %stbtt__buf_get8.exit.i32 ]
  %.0.i.i33.1 = phi i32 [ %i.ah, %bb.f ], [ %.0.i.i33, %stbtt__buf_get8.exit.i32 ]
  %.not77 = icmp eq i32 %.0.i.i.1, 0
  br i1 %.not77, label %.split, label %.lr.ph

stbtt__buf_get.exit35:                            ; preds = %stbtt__buf_get8.exit.i43.1
  %i.ai = add nuw nsw i32 %.01967, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ai, %.0.i.i.1
  br i1 %exitcond.not, label %.split, label %.lr.ph, !llvm.loop !165

.lr.ph:                                           ; preds = %stbtt__buf_get8.exit.i32.1, %stbtt__buf_get.exit35
  %.068 = phi i32 [ %.0.i.i44.1, %stbtt__buf_get.exit35 ], [ %.0.i.i33.1, %stbtt__buf_get8.exit.i32.1 ]
  %.01967 = phi i32 [ %i.ai, %stbtt__buf_get.exit35 ], [ 0, %stbtt__buf_get8.exit.i32.1 ]
  %.sroa.9.066 = phi i32 [ %.sroa.9.8.1, %stbtt__buf_get.exit35 ], [ %.sroa.9.5.1, %stbtt__buf_get8.exit.i32.1 ] ; 4 uses
  %.not.i36 = icmp slt i32 %.sroa.9.066, %.sroa.24.0.copyload
  br i1 %.not.i36, label %bb.g, label %stbtt__buf_get8.exit38

bb.g:                                             ; preds = %.lr.ph
  %i.aj = add nsw i32 %.sroa.9.066, 1
  %i.ak = sext i32 %.sroa.9.066 to i64
  %i.al = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !37
  %i.an = zext i8 %i.am to i32
  br label %stbtt__buf_get8.exit38

stbtt__buf_get8.exit38:                           ; preds = %.lr.ph, %bb.g
  %.sroa.9.6 = phi i32 [ %i.aj, %bb.g ], [ %.sroa.9.066, %.lr.ph ] ; 4 uses
  %.0.i37 = phi i32 [ %i.an, %bb.g ], [ 0, %.lr.ph ]
  %.not.i.i42 = icmp slt i32 %.sroa.9.6, %.sroa.24.0.copyload
  br i1 %.not.i.i42, label %bb.h, label %stbtt__buf_get8.exit.i43

bb.h:                                             ; preds = %stbtt__buf_get8.exit38
  %i.ao = add nsw i32 %.sroa.9.6, 1
  %i.ap = sext i32 %.sroa.9.6 to i64
  %i.aq = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !37
  %i.as = zext i8 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, 8
  br label %stbtt__buf_get8.exit.i43

stbtt__buf_get8.exit.i43:                         ; preds = %bb.h, %stbtt__buf_get8.exit38
  %.sroa.9.8 = phi i32 [ %i.ao, %bb.h ], [ %.sroa.9.6, %stbtt__buf_get8.exit38 ] ; 4 uses
  %.0.i.i44 = phi i32 [ %i.at, %bb.h ], [ 0, %stbtt__buf_get8.exit38 ] ; 2 uses
  %.not.i.i42.1 = icmp slt i32 %.sroa.9.8, %.sroa.24.0.copyload
  br i1 %.not.i.i42.1, label %bb.i, label %stbtt__buf_get8.exit.i43.1

bb.i:                                             ; preds = %stbtt__buf_get8.exit.i43
  %i.au = add nsw i32 %.sroa.9.8, 1
  %i.av = sext i32 %.sroa.9.8 to i64
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !37
  %i.ay = zext i8 %i.ax to i32
  %i.az = or disjoint i32 %.0.i.i44, %i.ay
  br label %stbtt__buf_get8.exit.i43.1

stbtt__buf_get8.exit.i43.1:                       ; preds = %bb.i, %stbtt__buf_get8.exit.i43
  %.sroa.9.8.1 = phi i32 [ %i.au, %bb.i ], [ %.sroa.9.8, %stbtt__buf_get8.exit.i43 ]
  %.0.i.i44.1 = phi i32 [ %i.az, %bb.i ], [ %.0.i.i44, %stbtt__buf_get8.exit.i43 ] ; 2 uses
  %.not = icmp sge i32 %1, %.068
  %i.ba = icmp slt i32 %1, %.0.i.i44.1
  %or.cond = select i1 %.not, i1 %i.ba, i1 false
  br i1 %or.cond, label %.split, label %stbtt__buf_get.exit35

.split:                                           ; preds = %stbtt__buf_get.exit35, %stbtt__buf_get8.exit.i43.1, %stbtt__buf_get8.exit, %stbtt__buf_get8.exit.i32.1, %stbtt__buf_get8.exit.thread, %bb.b
  %.020.sink = phi i32 [ -1, %stbtt__buf_get8.exit.i32.1 ], [ 0, %stbtt__buf_get8.exit.thread ], [ %i.l, %bb.b ], [ -1, %stbtt__buf_get8.exit ], [ %.0.i37, %stbtt__buf_get8.exit.i43.1 ], [ -1, %stbtt__buf_get.exit35 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = tail call { ptr, i64 } @stbtt__cff_index_get(ptr %i.bc, i64 %i.be, i32 noundef %.020.sink) ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bh = extractvalue { ptr, i64 } %i.bf, 0
  %i.bi = extractvalue { ptr, i64 } %i.bf, 1
  %i.bj = load ptr, ptr %i.bg, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = tail call { ptr, i64 } @stbtt__get_subrs(ptr %i.bj, i64 %i.bl, ptr %i.bh, i64 %i.bi)
  ret { ptr, i64 } %i.bm
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbtt__run_charstring(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca [48 x float], align 16            ; 46 uses
  %3 = alloca [10 x %struct.stbtt__buf], align 16 ; 4 uses
  %4 = alloca %struct.stbtt__buf, align 8         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.073.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !40
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i64, ptr %i.e, align 8
  %i.g = tail call { ptr, i64 } @stbtt__cff_index_get(ptr %i.d, i64 %i.f, i32 noundef %1) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1        ; 3 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !40
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store i64 %i.i, ptr %.sroa.469.0..sroa_idx, align 8, !tbaa !39
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  %i.l = lshr i64 %i.i, 32
  %i.m = trunc nuw i64 %i.l to i32                ; 2 uses
  %i.n = icmp slt i32 %i.k, %i.m
  br i1 %i.n, label %stbtt__buf_get8.exit.lr.ph, label %.critedge

stbtt__buf_get8.exit.lr.ph:                       ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 46 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 16 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.3.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 12 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 30 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 12 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 12 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 12 uses
  %.phi.trans.insert.i309 = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 18 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %.sroa.gep.sroa.gep427 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.gep.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.gep430.sroa.gep433 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.gep430.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %stbtt__buf_get8.exit

stbtt__buf_get8.exit:                             ; preds = %stbtt__buf_get8.exit.lr.ph, %.thread
  %i.ah = phi i32 [ %i.m, %stbtt__buf_get8.exit.lr.ph ], [ %i.acb, %.thread ] ; 9 uses
  %i.ai = phi i32 [ %i.k, %stbtt__buf_get8.exit.lr.ph ], [ %i.aca, %.thread ] ; 6 uses
  %.0234368 = phi i32 [ 1, %stbtt__buf_get8.exit.lr.ph ], [ %.1235342, %.thread ] ; 22 uses
  %.0237367 = phi i32 [ 0, %stbtt__buf_get8.exit.lr.ph ], [ %.2239341, %.thread ] ; 26 uses
  %.0240366 = phi i32 [ 0, %stbtt__buf_get8.exit.lr.ph ], [ %.1241340, %.thread ] ; 28 uses
  %.sroa.073.0365 = phi ptr [ %.sroa.073.0.copyload, %stbtt__buf_get8.exit.lr.ph ], [ %.sroa.073.3339, %.thread ] ; 27 uses
  %.sroa.5.0364 = phi i64 [ %.sroa.5.0.copyload, %stbtt__buf_get8.exit.lr.ph ], [ %.sroa.5.3338, %.thread ] ; 27 uses
  %.0246363 = phi i32 [ 0, %stbtt__buf_get8.exit.lr.ph ], [ %.2248337, %.thread ] ; 26 uses
  %.0253360 = phi i32 [ 0, %stbtt__buf_get8.exit.lr.ph ], [ %i.abz, %.thread ] ; 45 uses
  %i.aj = load ptr, ptr %4, align 8, !tbaa !36    ; 6 uses
  %i.ak = add nsw i32 %i.ai, 1                    ; 7 uses
  store i32 %i.ak, ptr %.sroa.469.0..sroa_idx, align 8, !tbaa !34
  %i.al = sext i32 %i.ai to i64
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !37  ; 6 uses
  switch i8 %i.an, label %bb.ei [
    i8 19, label %bb.b
    i8 20, label %bb.b
    i8 1, label %bb.e
    i8 3, label %bb.e
    i8 18, label %bb.e
    i8 23, label %bb.e
    i8 21, label %bb.f
    i8 4, label %bb.h
    i8 22, label %bb.j
    i8 5, label %bb.l
    i8 7, label %bb.z
    i8 6, label %bb.aa
    i8 31, label %bb.bf
    i8 30, label %bb.bg
    i8 8, label %bb.bp
    i8 24, label %bb.bq
    i8 25, label %bb.cf
    i8 26, label %bb.cu
    i8 27, label %bb.cu
    i8 10, label %bb.cw
    i8 29, label %bb.cz
    i8 11, label %bb.di
    i8 14, label %bb.dk
    i8 12, label %bb.dz
  ]

bb.b:                                             ; preds = %stbtt__buf_get8.exit, %stbtt__buf_get8.exit
  %.not274 = icmp eq i32 %.0234368, 0
  br i1 %.not274, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = sdiv i32 %.0253360, 2
  %i.ap = add nsw i32 %.0237367, %i.ao
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1238 = phi i32 [ %i.ap, %bb.c ], [ %.0237367, %bb.b ] ; 2 uses
  %i.aq = add nsw i32 %.1238, 7
  %i.ar = sdiv i32 %i.aq, 8
  %i.as = add nsw i32 %i.ar, %i.ak                ; 2 uses
  %i.at = icmp slt i32 %i.as, 0
  %i.au = tail call i32 @llvm.smin.i32(i32 %i.as, i32 %i.ah)
  %..i.i = select i1 %i.at, i32 %i.ah, i32 %i.au
  store i32 %..i.i, ptr %.sroa.469.0..sroa_idx, align 8, !tbaa !34
  br label %.thread

bb.e:                                             ; preds = %stbtt__buf_get8.exit, %stbtt__buf_get8.exit, %stbtt__buf_get8.exit, %stbtt__buf_get8.exit
  %i.av = sdiv i32 %.0253360, 2
  %i.aw = add nsw i32 %.0237367, %i.av
  br label %.thread

bb.f:                                             ; preds = %stbtt__buf_get8.exit
  %i.ax = icmp slt i32 %.0253360, 2
  br i1 %i.ax, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = zext nneg i32 %.0253360 to i64
  %i.az = getelementptr [4 x i8], ptr %i.a, i64 %i.ay ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 -8
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !80
  %i.bc = getelementptr i8, ptr %i.az, i64 -4
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !80
  tail call void @stbtt__csctx_rmove_to(ptr noundef %2, float noundef %i.bb, float noundef %i.bd)
  br label %.thread

bb.h:                                             ; preds = %stbtt__buf_get8.exit
  %i.be = icmp slt i32 %.0253360, 1
  br i1 %i.be, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = zext nneg i32 %.0253360 to i64
  %i.bg = getelementptr [4 x i8], ptr %i.a, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 -4
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !80
  tail call void @stbtt__csctx_rmove_to(ptr noundef %2, float noundef 0.000000e+00, float noundef %i.bi)
  br label %.thread

bb.j:                                             ; preds = %stbtt__buf_get8.exit
  %i.bj = icmp slt i32 %.0253360, 1
  br i1 %i.bj, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = zext nneg i32 %.0253360 to i64
  %i.bl = getelementptr [4 x i8], ptr %i.a, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 -4
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !80
  tail call void @stbtt__csctx_rmove_to(ptr noundef %2, float noundef %i.bn, float noundef 0.000000e+00)
  br label %.thread

bb.l:                                             ; preds = %stbtt__buf_get8.exit
  %i.bo = icmp slt i32 %.0253360, 2
  br i1 %i.bo, label %.critedge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.l
  %i.bp = zext nneg i32 %.0253360 to i64
  %i.bq = load <2 x float>, ptr %i.x, align 8, !tbaa !80
  %.pre446 = load i32, ptr %2, align 8, !tbaa !78
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %stbtt__csctx_rline_to.exit
  %i.br = phi i32 [ %.pre446, %.preheader.preheader ], [ %i.ct, %stbtt__csctx_rline_to.exit ] ; 2 uses
  %indvars.iv423 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next424, %stbtt__csctx_rline_to.exit ] ; 2 uses
  %i.bs = phi <2 x float> [ %i.bq, %.preheader.preheader ], [ %i.cv, %stbtt__csctx_rline_to.exit ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv423
  %i.bu = load <2 x float>, ptr %i.bt, align 8, !tbaa !80
  %i.bv = fadd <2 x float> %i.bu, %i.bs           ; 3 uses
  store <2 x float> %i.bv, ptr %i.x, align 8, !tbaa !80
  %i.bw = fptosi <2 x float> %i.bv to <2 x i32>   ; 3 uses
  %.not.i.i = icmp eq i32 %i.br, 0
  br i1 %.not.i.i, label %bb.y, label %bb.m

bb.m:                                             ; preds = %.preheader
  %i.bx = load i32, ptr %i.ab, align 4, !tbaa !73
  %i.by = extractelement <2 x i32> %i.bw, i64 0   ; 4 uses
  %i.bz = icmp slt i32 %i.bx, %i.by
  br i1 %i.bz, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = load i32, ptr %i.ac, align 4, !tbaa !74
  %.not.i.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  store i32 %i.by, ptr %i.ab, align 4, !tbaa !73
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cb = load i32, ptr %i.ad, align 4, !tbaa !75
  %i.cc = extractelement <2 x i32> %i.bw, i64 1   ; 4 uses
  %i.cd = icmp slt i32 %i.cb, %i.cc
  br i1 %i.cd, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = load i32, ptr %i.ac, align 4, !tbaa !74
  %.not20.i.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not20.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  store i32 %i.cc, ptr %i.ad, align 4, !tbaa !75
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cf = load i32, ptr %i.ae, align 8, !tbaa !76
  %i.cg = icmp sgt i32 %i.cf, %i.by
  br i1 %i.cg, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = load i32, ptr %i.ac, align 4, !tbaa !74
  %.not21.i.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not21.i.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  store i32 %i.by, ptr %i.ae, align 8, !tbaa !76
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ci = load i32, ptr %i.af, align 8, !tbaa !77
  %i.cj = icmp sgt i32 %i.ci, %i.cc
  br i1 %i.cj, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = load i32, ptr %i.ac, align 4, !tbaa !74
  %.not22.i.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not22.i.i.i, label %bb.x, label %stbtt__track_vertex.exit.i.i

bb.x:                                             ; preds = %bb.w, %bb.v
  store i32 %i.cc, ptr %i.af, align 8, !tbaa !77
end_hunk_0
begin_hunk_1_@stbtt__run_charstring:bb.a
  %i.ks = load i32, ptr %2, align 8, !tbaa !78
  %.not.i.i294 = icmp eq i32 %i.ks, 0
  br i1 %.not.i.i294, label %bb.ce, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kt = load i32, ptr %i.ab, align 4, !tbaa !73
  %i.ku = extractelement <2 x i32> %i.kr, i64 0   ; 4 uses
  %i.kv = icmp slt i32 %i.kt, %i.ku
  br i1 %i.kv, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.kw = load i32, ptr %i.ac, align 4, !tbaa !74
  %.not.i.i.i295 = icmp eq i32 %i.kw, 0
  br i1 %.not.i.i.i295, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  store i32 %i.ku, ptr %i.ab, align 4, !tbaa !73
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.kx = load i32, ptr %i.ad, align 4, !tbaa !75
  %i.ky = extractelement <2 x i32> %i.kr, i64 1   ; 4 uses
  %i.kz = icmp slt i32 %i.kx, %i.ky
  br i1 %i.kz, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.la = load i32, ptr %i.ac, align 4, !tbaa !74
  %.not20.i.i.i296 = icmp eq i32 %i.la, 0
  br i1 %.not20.i.i.i296, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  store i32 %i.ky, ptr %i.ad, align 4, !tbaa !75
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.lb = load i32, ptr %i.ae, align 8, !tbaa !76
  %i.lc = icmp sgt i32 %i.lb, %i.ku
  br i1 %i.lc, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ld = load i32, ptr %i.ac, align 4, !tbaa !74
  %.not21.i.i.i297 = icmp eq i32 %i.ld, 0
  br i1 %.not21.i.i.i297, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz, %bb.by
  store i32 %i.ku, ptr %i.ae, align 8, !tbaa !76
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.le = load i32, ptr %i.af, align 8, !tbaa !77
  %i.lf = icmp sgt i32 %i.le, %i.ky
  br i1 %i.lf, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.lg = load i32, ptr %i.ac, align 4, !tbaa !74
  %.not22.i.i.i298 = icmp eq i32 %i.lg, 0
  br i1 %.not22.i.i.i298, label %bb.cd, label %stbtt__track_vertex.exit.i.i299

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  store i32 %i.ky, ptr %i.af, align 8, !tbaa !77
  br label %stbtt__track_vertex.exit.i.i299

stbtt__track_vertex.exit.i.i299:                  ; preds = %bb.cd, %bb.cc
  store i32 1, ptr %i.ac, align 4, !tbaa !74
  %.pre.i301 = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !60
  br label %stbtt__csctx_rline_to.exit302

bb.ce:                                            ; preds = %bb.br
  %i.lh = load ptr, ptr %i.ag, align 8, !tbaa !62
  %i.li = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !60 ; 2 uses
  %i.lj = sext i32 %i.li to i64
  %i.lk = getelementptr inbounds [14 x i8], ptr %i.lh, i64 %i.lj ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 12
  store i8 2, ptr %i.ll, align 2, !tbaa !65
  %i.lm = trunc <2 x i32> %i.kr to <2 x i16>
  store <2 x i16> %i.lm, ptr %i.lk, align 2, !tbaa !70
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  store i64 0, ptr %i.ln, align 2
  br label %stbtt__csctx_rline_to.exit302

stbtt__csctx_rline_to.exit302:                    ; preds = %stbtt__track_vertex.exit.i.i299, %bb.ce
  %i.lo = phi i32 [ %.pre.i301, %stbtt__track_vertex.exit.i.i299 ], [ %i.li, %bb.ce ]
  %i.lp = add nsw i32 %i.lo, 1
  store i32 %i.lp, ptr %.phi.trans.insert.i309, align 8, !tbaa !60
  br label %.thread

bb.cf:                                            ; preds = %stbtt__buf_get8.exit
  %i.lq = icmp slt i32 %.0253360, 8
  br i1 %i.lq, label %.critedge, label %.lr.ph351.preheader

.lr.ph351.preheader:                              ; preds = %bb.cf
  %i.lr = add nsw i32 %.0253360, -6
  %i.ls = zext nneg i32 %i.lr to i64
  %i.lt = load <2 x float>, ptr %i.x, align 8, !tbaa !80
  %.pre440 = load i32, ptr %2, align 8, !tbaa !78
  br label %.lr.ph351

.lr.ph351:                                        ; preds = %.lr.ph351.preheader, %stbtt__csctx_rline_to.exit311
  %i.lu = phi i32 [ %.pre440, %.lr.ph351.preheader ], [ %i.mw, %stbtt__csctx_rline_to.exit311 ] ; 2 uses
  %indvars.iv414 = phi i64 [ 0, %.lr.ph351.preheader ], [ %indvars.iv.next415, %stbtt__csctx_rline_to.exit311 ] ; 2 uses
  %i.lv = phi <2 x float> [ %i.lt, %.lr.ph351.preheader ], [ %i.my, %stbtt__csctx_rline_to.exit311 ]
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv414
  %i.lx = load <2 x float>, ptr %i.lw, align 8, !tbaa !80
  %i.ly = fadd <2 x float> %i.lx, %i.lv           ; 3 uses
  store <2 x float> %i.ly, ptr %i.x, align 8, !tbaa !80
  %i.lz = fptosi <2 x float> %i.ly to <2 x i32>   ; 3 uses
  %.not.i.i303 = icmp eq i32 %i.lu, 0
  br i1 %.not.i.i303, label %bb.cs, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph351
  %i.ma = load i32, ptr %i.ab, align 4, !tbaa !73
  %i.mb = extractelement <2 x i32> %i.lz, i64 0   ; 4 uses
  %i.mc = icmp slt i32 %i.ma, %i.mb
  br i1 %i.mc, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.md = load i32, ptr %i.ac, align 4, !tbaa !74
  %.not.i.i.i304 = icmp eq i32 %i.md, 0
  br i1 %.not.i.i.i304, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  store i32 %i.mb, ptr %i.ab, align 4, !tbaa !73
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.me = load i32, ptr %i.ad, align 4, !tbaa !75
  %i.mf = extractelement <2 x i32> %i.lz, i64 1   ; 4 uses
  %i.mg = icmp slt i32 %i.me, %i.mf
  br i1 %i.mg, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.mh = load i32, ptr %i.ac, align 4, !tbaa !74
  %.not20.i.i.i305 = icmp eq i32 %i.mh, 0
  br i1 %.not20.i.i.i305, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  store i32 %i.mf, ptr %i.ad, align 4, !tbaa !75
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.mi = load i32, ptr %i.ae, align 8, !tbaa !76
  %i.mj = icmp sgt i32 %i.mi, %i.mb
  br i1 %i.mj, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.mk = load i32, ptr %i.ac, align 4, !tbaa !74
  %.not21.i.i.i306 = icmp eq i32 %i.mk, 0
  br i1 %.not21.i.i.i306, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn, %bb.cm
  store i32 %i.mb, ptr %i.ae, align 8, !tbaa !76
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.ml = load i32, ptr %i.af, align 8, !tbaa !77
  %i.mm = icmp sgt i32 %i.ml, %i.mf
  br i1 %i.mm, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.mn = load i32, ptr %i.ac, align 4, !tbaa !74
  %.not22.i.i.i307 = icmp eq i32 %i.mn, 0
  br i1 %.not22.i.i.i307, label %bb.cr, label %stbtt__track_vertex.exit.i.i308

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  store i32 %i.mf, ptr %i.af, align 8, !tbaa !77
  br label %stbtt__track_vertex.exit.i.i308

stbtt__track_vertex.exit.i.i308:                  ; preds = %bb.cr, %bb.cq
  store i32 1, ptr %i.ac, align 4, !tbaa !74
  %.pre.i310 = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !60
  br label %stbtt__csctx_rline_to.exit311

bb.cs:                                            ; preds = %.lr.ph351
  %i.mo = load ptr, ptr %i.ag, align 8, !tbaa !62
  %i.mp = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !60 ; 2 uses
  %i.mq = sext i32 %i.mp to i64
  %i.mr = getelementptr inbounds [14 x i8], ptr %i.mo, i64 %i.mq ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 12
  store i8 2, ptr %i.ms, align 2, !tbaa !65
  %i.mt = trunc <2 x i32> %i.lz to <2 x i16>
  store <2 x i16> %i.mt, ptr %i.mr, align 2, !tbaa !70
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  store i64 0, ptr %i.mu, align 2
  %i.mv = load <2 x float>, ptr %i.x, align 8, !tbaa !80
  %.pre439 = load i32, ptr %2, align 8, !tbaa !78
  br label %stbtt__csctx_rline_to.exit311

stbtt__csctx_rline_to.exit311:                    ; preds = %stbtt__track_vertex.exit.i.i308, %bb.cs
  %i.mw = phi i32 [ %i.lu, %stbtt__track_vertex.exit.i.i308 ], [ %.pre439, %bb.cs ]
  %i.mx = phi i32 [ %.pre.i310, %stbtt__track_vertex.exit.i.i308 ], [ %i.mp, %bb.cs ]
  %i.my = phi <2 x float> [ %i.ly, %stbtt__track_vertex.exit.i.i308 ], [ %i.mv, %bb.cs ]
  %i.mz = add nsw i32 %i.mx, 1
  store i32 %i.mz, ptr %.phi.trans.insert.i309, align 8, !tbaa !60
  %indvars.iv.next415 = add nuw nsw i64 %indvars.iv414, 2 ; 4 uses
  %i.na = or disjoint i64 %indvars.iv.next415, 1
  %i.nb = icmp samesign ult i64 %i.na, %i.ls
  br i1 %i.nb, label %.lr.ph351, label %._crit_edge, !llvm.loop !169

._crit_edge:                                      ; preds = %stbtt__csctx_rline_to.exit311
  %i.nc = trunc nuw nsw i64 %indvars.iv.next415 to i32
  %i.nd = add nuw nsw i32 %i.nc, 5                ; 2 uses
  %.not268 = icmp slt i32 %i.nd, %.0253360
  br i1 %.not268, label %bb.ct, label %.critedge

bb.ct:                                            ; preds = %._crit_edge
  %i.ne = add nuw i32 %.0253360, 2147483640
  %i.nf = and i32 %i.ne, 2147483646
  %narrow = add nuw i32 %i.nf, 3
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next415 ; 4 uses
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !80
  %i.ni = zext nneg i32 %narrow to i64
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ni
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !80
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %5 = load float, ptr %i.nl, align 4, !tbaa !80
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ng, i64 12
  %6 = load float, ptr %i.nm, align 4, !tbaa !80
  %7 = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %8 = load float, ptr %7, align 4, !tbaa !80
  %9 = zext nneg i32 %i.nd to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !80
  %12 = load float, ptr %i.x, align 8, !tbaa !79
  %13 = fadd float %i.nh, %12                     ; 2 uses
  %14 = load float, ptr %i.y, align 4, !tbaa !81
  %15 = fadd float %i.nk, %14                     ; 2 uses
  %16 = fadd float %5, %13                        ; 2 uses
  %17 = fadd float %6, %15                        ; 2 uses
  %18 = fadd float %8, %16                        ; 2 uses
  store float %18, ptr %i.x, align 8, !tbaa !79
  %19 = fadd float %11, %17                       ; 2 uses
  store float %19, ptr %i.y, align 4, !tbaa !81
  %20 = fptosi float %18 to i32
  %i.nn = fptosi float %19 to i32
  %21 = fptosi float %13 to i32
  %i.no = fptosi float %15 to i32
  %22 = fptosi float %16 to i32
  %i.np = fptosi float %17 to i32
  tail call void @stbtt__csctx_v(ptr noundef nonnull %2, i8 noundef zeroext 4, i32 noundef %20, i32 noundef %i.nn, i32 noundef %21, i32 noundef %i.no, i32 noundef %22, i32 noundef %i.np)
  br label %.thread

bb.cu:                                            ; preds = %stbtt__buf_get8.exit, %stbtt__buf_get8.exit
  %i.nq = icmp slt i32 %.0253360, 4
  br i1 %i.nq, label %.critedge, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.8 = and i32 %.0253360, 1
  %i.nr = add nuw nsw i32 %.8, 3
  %i.ns = icmp samesign ult i32 %i.nr, %.0253360
  br i1 %i.ns, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.cv
  %.not267 = trunc i32 %.0253360 to i1            ; 6 uses
  %i.nt = load float, ptr %i.a, align 16
  %.0242 = select i1 %.not267, float %i.nt, float 0.000000e+00 ; 2 uses
  %i.nu = icmp eq i8 %i.an, 27
  %.not267.mask470 = and i32 %.0253360, 1
  %i.nv = zext nneg i32 %.not267.mask470 to i64   ; 6 uses
  %i.nw = zext nneg i32 %.0253360 to i64          ; 3 uses
  %.val471 = load float, ptr %i.o, align 4        ; 3 uses
  %.val472 = load float, ptr %i.a, align 16
  %i.nx = select i1 %.not267, float %.val471, float %.val472 ; 2 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.nv
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 12
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !80 ; 2 uses
  %i.ob = load float, ptr %i.x, align 8, !tbaa !79 ; 2 uses
  %i.oc = load float, ptr %i.y, align 4, !tbaa !81 ; 2 uses
  %i.od = add nuw nsw i64 %i.nv, 7
  %i.oe = icmp samesign ult i64 %i.od, %i.nw      ; 2 uses
  br i1 %i.nu, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.sroa.gep.sroa.gep427.val = load float, ptr %.sroa.gep.sroa.gep427, align 8 ; 2 uses
  %i.of = select i1 %.not267, float %.sroa.gep.sroa.gep427.val, float %.val471
  %.sroa.gep.sroa.gep.val = load float, ptr %.sroa.gep.sroa.gep, align 4
  %i.og = select i1 %.not267, float %.sroa.gep.sroa.gep.val, float %.sroa.gep.sroa.gep427.val
  %i.oh = fadd float %.0242, %i.ob                ; 2 uses
  %i.oi = fadd float %i.nx, %i.oc                 ; 2 uses
  %i.oj = fadd float %i.of, %i.oh                 ; 2 uses
  %i.ok = fadd float %i.og, %i.oi                 ; 2 uses
  %i.ol = fadd float %i.oj, 0.000000e+00          ; 2 uses
  store float %i.ol, ptr %i.x, align 8, !tbaa !79
  %i.om = fadd float %i.oa, %i.ok                 ; 2 uses
  store float %i.om, ptr %i.y, align 4, !tbaa !81
  %i.on = fptosi float %i.ol to i32
  %i.oo = fptosi float %i.om to i32
  %i.op = fptosi float %i.oh to i32
  %i.oq = fptosi float %i.oi to i32
  %i.or = fptosi float %i.oj to i32
  %i.os = fptosi float %i.ok to i32
  tail call void @stbtt__csctx_v(ptr noundef %2, i8 noundef zeroext 4, i32 noundef %i.on, i32 noundef %i.oo, i32 noundef %i.op, i32 noundef %i.oq, i32 noundef %i.or, i32 noundef %i.os)
  br i1 %i.oe, label %.lr.ph.split.peel.next, label %.thread

.lr.ph.split.peel.next:                           ; preds = %.lr.ph.split.preheader
  %indvars.iv.next.peel = add nuw nsw i64 %i.nv, 7
  %indvars.iv.next401.peel = or disjoint i64 %i.nv, 4
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %.sroa.gep430.sroa.gep433.val = load float, ptr %.sroa.gep430.sroa.gep433, align 8 ; 2 uses
  %i.ot = select i1 %.not267, float %.sroa.gep430.sroa.gep433.val, float %.val471
  %.sroa.gep430.sroa.gep.val = load float, ptr %.sroa.gep430.sroa.gep, align 4
  %i.ou = select i1 %.not267, float %.sroa.gep430.sroa.gep.val, float %.sroa.gep430.sroa.gep433.val
  %i.ov = fadd float %i.nx, %i.ob                 ; 2 uses
  %i.ow = fadd float %.0242, %i.oc                ; 2 uses
  %i.ox = fadd float %i.ot, %i.ov                 ; 2 uses
  %i.oy = fadd float %i.ou, %i.ow                 ; 2 uses
  %i.oz = fadd float %i.oa, %i.ox                 ; 2 uses
  store float %i.oz, ptr %i.x, align 8, !tbaa !79
  %i.pa = fadd float %i.oy, 0.000000e+00          ; 2 uses
  store float %i.pa, ptr %i.y, align 4, !tbaa !81
  %i.pb = fptosi float %i.oz to i32
  %i.pc = fptosi float %i.pa to i32
  %i.pd = fptosi float %i.ov to i32
  %i.pe = fptosi float %i.ow to i32
  %i.pf = fptosi float %i.ox to i32
  %i.pg = fptosi float %i.oy to i32
  tail call void @stbtt__csctx_v(ptr noundef %2, i8 noundef zeroext 4, i32 noundef %i.pb, i32 noundef %i.pc, i32 noundef %i.pd, i32 noundef %i.pe, i32 noundef %i.pf, i32 noundef %i.pg)
  br i1 %i.oe, label %.lr.ph.split.us.peel.next, label %.thread

.lr.ph.split.us.peel.next:                        ; preds = %.lr.ph.split.us.preheader
  %indvars.iv.next407.peel = add nuw nsw i64 %i.nv, 7
  %indvars.iv.next409.peel = or disjoint i64 %i.nv, 4
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.peel.next, %.lr.ph.split.us
  %indvars.iv408 = phi i64 [ %indvars.iv.next409.peel, %.lr.ph.split.us.peel.next ], [ %indvars.iv.next409, %.lr.ph.split.us ] ; 3 uses
  %indvars.iv406 = phi i64 [ %indvars.iv.next407.peel, %.lr.ph.split.us.peel.next ], [ %indvars.iv.next407, %.lr.ph.split.us ] ; 2 uses
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv408 ; 3 uses
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !80
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ph, i64 4
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !80
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !80
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv406
  %i.po = load float, ptr %i.pn, align 4, !tbaa !80
  %i.pp = load float, ptr %i.x, align 8, !tbaa !79
  %i.pq = fadd float %i.pi, %i.pp                 ; 2 uses
  %i.pr = load float, ptr %i.y, align 4, !tbaa !81
  %i.ps = fadd float %i.pr, 0.000000e+00          ; 2 uses
  %i.pt = fadd float %i.pk, %i.pq                 ; 2 uses
  %i.pu = fadd float %i.pm, %i.ps                 ; 2 uses
  %i.pv = fadd float %i.po, %i.pt                 ; 2 uses
  store float %i.pv, ptr %i.x, align 8, !tbaa !79
  store float %i.pu, ptr %i.y, align 4, !tbaa !81
  %i.pw = fptosi float %i.pv to i32
  %i.px = fptosi float %i.pu to i32               ; 2 uses
  %i.py = fptosi float %i.pq to i32
  %i.pz = fptosi float %i.ps to i32
  %i.qa = fptosi float %i.pt to i32
  tail call void @stbtt__csctx_v(ptr noundef nonnull %2, i8 noundef zeroext 4, i32 noundef %i.pw, i32 noundef %i.px, i32 noundef %i.py, i32 noundef %i.pz, i32 noundef %i.qa, i32 noundef %i.px)
  %indvars.iv.next409 = add nuw nsw i64 %indvars.iv408, 4
  %i.qb = add nuw nsw i64 %indvars.iv408, 7
  %i.qc = icmp samesign ult i64 %i.qb, %i.nw
  %indvars.iv.next407 = add nuw nsw i64 %indvars.iv406, 4
  br i1 %i.qc, label %.lr.ph.split.us, label %.thread, !llvm.loop !170

.lr.ph.split:                                     ; preds = %.lr.ph.split.peel.next, %.lr.ph.split
  %indvars.iv400 = phi i64 [ %indvars.iv.next401.peel, %.lr.ph.split.peel.next ], [ %indvars.iv.next401, %.lr.ph.split ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.peel, %.lr.ph.split.peel.next ], [ %indvars.iv.next, %.lr.ph.split ] ; 2 uses
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv400 ; 3 uses
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !80
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 4
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !80
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !80
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !80
  %i.ql = load float, ptr %i.x, align 8, !tbaa !79
  %i.qm = fadd float %i.ql, 0.000000e+00          ; 2 uses
  %i.qn = load float, ptr %i.y, align 4, !tbaa !81
  %i.qo = fadd float %i.qe, %i.qn                 ; 2 uses
  %i.qp = fadd float %i.qg, %i.qm                 ; 2 uses
  %i.qq = fadd float %i.qi, %i.qo                 ; 2 uses
  store float %i.qp, ptr %i.x, align 8, !tbaa !79
  %i.qr = fadd float %i.qk, %i.qq                 ; 2 uses
  store float %i.qr, ptr %i.y, align 4, !tbaa !81
  %i.qs = fptosi float %i.qp to i32               ; 2 uses
  %i.qt = fptosi float %i.qr to i32
  %i.qu = fptosi float %i.qm to i32
  %i.qv = fptosi float %i.qo to i32
  %i.qw = fptosi float %i.qq to i32
  tail call void @stbtt__csctx_v(ptr noundef nonnull %2, i8 noundef zeroext 4, i32 noundef %i.qs, i32 noundef %i.qt, i32 noundef %i.qu, i32 noundef %i.qv, i32 noundef %i.qs, i32 noundef %i.qw)
  %indvars.iv.next401 = add nuw nsw i64 %indvars.iv400, 4
  %i.qx = add nuw nsw i64 %indvars.iv400, 7
  %i.qy = icmp samesign ult i64 %i.qx, %i.nw
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  br i1 %i.qy, label %.lr.ph.split, label %.thread, !llvm.loop !171

bb.cw:                                            ; preds = %stbtt__buf_get8.exit
  %.not = icmp eq i32 %.0246363, 0
  br i1 %.not, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %bb.cw
  %i.qz = load i32, ptr %i.z, align 4, !tbaa !174
  %.not266 = icmp eq i32 %i.qz, 0
  br i1 %.not266, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ra = tail call { ptr, i64 } @stbtt__cid_get_glyph_subrs(ptr noundef nonnull %0, i32 noundef %1) ; 2 uses
  %i.rb = extractvalue { ptr, i64 } %i.ra, 0
  %i.rc = extractvalue { ptr, i64 } %i.ra, 1
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cx, %bb.cy, %bb.cw, %stbtt__buf_get8.exit
  %.1247 = phi i32 [ 1, %bb.cw ], [ %.0246363, %stbtt__buf_get8.exit ], [ 1, %bb.cy ], [ 1, %bb.cx ]
  %.sroa.5.2 = phi i64 [ %.sroa.5.0364, %bb.cw ], [ %.sroa.5.0364, %stbtt__buf_get8.exit ], [ %i.rc, %bb.cy ], [ %.sroa.5.0364, %bb.cx ] ; 2 uses
  %.sroa.073.2 = phi ptr [ %.sroa.073.0365, %bb.cw ], [ %.sroa.073.0365, %stbtt__buf_get8.exit ], [ %i.rb, %bb.cy ], [ %.sroa.073.0365, %bb.cx ] ; 2 uses
  %i.rd = icmp slt i32 %.0253360, 1
  br i1 %i.rd, label %.critedge, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.re = add nsw i32 %.0253360, -1               ; 2 uses
  %i.rf = zext nneg i32 %i.re to i64
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.rf
  %i.rh = load float, ptr %i.rg, align 4, !tbaa !80
  %i.ri = fptosi float %i.rh to i32
  %i.rj = icmp sgt i32 %.0240366, 9
  br i1 %i.rj, label %.critedge, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.rk = add nsw i32 %.0240366, 1
  %i.rl = sext i32 %.0240366 to i64
  %i.rm = getelementptr inbounds [16 x i8], ptr %3, i64 %i.rl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.rm, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !52
  %i.rn = icmp eq i8 %i.an, 10
  br i1 %i.rn, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %.sroa.0.0.copyload61 = load ptr, ptr %i.aa, align 8, !tbaa !40
  %.sroa.3.0.copyload63 = load i64, ptr %.sroa.3.0..sroa_idx62, align 8, !tbaa !39
  br label %bb.dd

bb.dd:                                            ; preds = %bb.db, %bb.dc
  %.sroa.3.0 = phi i64 [ %.sroa.3.0.copyload63, %bb.dc ], [ %.sroa.5.2, %bb.db ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload61, %bb.dc ], [ %.sroa.073.2, %bb.db ] ; 3 uses
  %.sroa.9.8.extract.shift.i = lshr i64 %.sroa.3.0, 32
  %.sroa.9.8.extract.trunc.i = trunc nuw i64 %.sroa.9.8.extract.shift.i to i32 ; 3 uses
  %i.ro = tail call i32 @llvm.smin.i32(i32 %.sroa.9.8.extract.trunc.i, i32 0) ; 2 uses
end_hunk_1
