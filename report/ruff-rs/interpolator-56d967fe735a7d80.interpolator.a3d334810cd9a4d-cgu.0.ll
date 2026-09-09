Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/interpolator-56d967fe735a7d80.interpolator.a3d334810cd9a4d-cgu.0?download=true
inline.NumInlined: 302
inline.NumDeleted: 49
begin_hunk_0_@_RINvNtCsSv8PdaUzvZ_12interpolator6parser12parse_numberiNtNtB4_5error10ParseErrorEB4_:bb.a
  %i.ao = ptrtoint ptr %.sroa.23.1.i to i64
  %i.ap = sub i64 %.sroa.14.0.i, %i.e
  %i.aq = add i64 %i.ap, %i.ao
  %.not.i.i.i.i.i.i = icmp ne i32 %.sroa.4.0.i.ph.i.i, 45
  %i.ar = add nsw i32 %.sroa.4.0.i.ph.i.i, -58
  %.sroa.0.0.i.i.i.i.i.i.i = icmp ult i32 %i.ar, -10
  %.sroa.0.0.i.i.not.i.not.i.i.i = and i1 %.not.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i.i
  br i1 %.sroa.0.0.i.i.not.i.not.i.i.i, label %bb.l, label %bb.b

bb.k:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit.i.i.i, %bb.b
  store i8 2, ptr %0, align 8
  %.sroa.2.i.sroa.3.0..sroa.2.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %.sroa.2.i.sroa.3.0..sroa.2.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.2.i.sroa.5.0..sroa.2.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.2.i.sroa.5.0..sroa.2.0..sroa_idx.i.sroa_idx, align 8
  br label %bb.ab

bb.l:                                             ; preds = %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNCINvNtCsSv8PdaUzvZ_12interpolator6parser12parse_numberiNtNtB1c_5error10ParseErrorE0ENtB5_8Searcher4nextB1c_.exit.i.i.i
  %i.as = icmp eq i64 %.sroa.14.0.i, 0
  br i1 %i.as, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i2 = icmp ult i64 %.sroa.14.0.i, %i.c ; 2 uses
  br i1 %.not.i.i.i2, label %bb.n, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.m
  %i.at = icmp ne i64 %.sroa.14.0.i, %i.c
  %.not.i.i = icmp eq ptr %i.a, null
  %or.cond.i.i = or i1 %.not.i.i, %i.at
  br i1 %or.cond.i.i, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.14.0.i
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = icmp sgt i8 %i.av, -65
  br i1 %i.aw, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i

_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.i.i: ; preds = %bb.l
  %.not.old.i.i = icmp eq ptr %i.a, null
  br i1 %.not.old.i.i, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit.thread

_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i: ; preds = %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.i.i, %bb.n, %.split.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr %i.a, i64 %i.c, i64 0, i64 %.sroa.14.0.i, ptr nonnull align 8 @1) #22
  unreachable

_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit: ; preds = %.split.i.i.i, %bb.n
  %cond = icmp eq i64 %.sroa.14.0.i, 1
  %i.ax = load i8, ptr %i.a, align 1, !noalias !32 ; 2 uses
  br i1 %cond, label %bb.o, label %thread-pre-split.i.i.i

bb.o:                                             ; preds = %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit
  switch i8 %i.ax, label %.lr.ph151.i.i.i.preheader [
    i8 43, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit.thread
    i8 45, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit.thread
  ]

thread-pre-split.i.i.i:                           ; preds = %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit
  switch i8 %i.ax, label %bb.v [
    i8 43, label %bb.p
    i8 45, label %bb.q
  ]

bb.p:                                             ; preds = %thread-pre-split.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.az = add i64 %.sroa.14.0.i, -1
  br label %bb.v

bb.q:                                             ; preds = %thread-pre-split.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.bb = add i64 %.sroa.14.0.i, -1               ; 2 uses
  %i.bc = icmp ult i64 %.sroa.14.0.i, 17
  br i1 %i.bc, label %.lr.ph142.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.q, %bb.t
  %.sroa.0.1137.i.i.i = phi ptr [ %i.bd, %bb.t ], [ %i.ba, %bb.q ] ; 3 uses
  %.sroa.26.1136.i.i.i = phi i64 [ %i.be, %bb.t ], [ %i.bb, %bb.q ]
  %.sroa.085.0135.i.i.i = phi i64 [ %i.bp, %bb.t ], [ 0, %bb.q ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.1137.i.i.i, i64 1
  %i.be = add i64 %.sroa.26.1136.i.i.i, -1        ; 2 uses
  %i.bf = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.085.0135.i.i.i, i64 10) ; 2 uses
  %i.bg = extractvalue { i64, i1 } %i.bf, 0
  %i.bh = extractvalue { i64, i1 } %i.bf, 1
  br i1 %i.bh, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit.thread.sink.split, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i
  %i.bi = load i8, ptr %.sroa.0.1137.i.i.i, align 1, !noalias !32
  %i.bj = zext i8 %i.bi to i32
  %i.bk = add nsw i32 %i.bj, -48                  ; 2 uses
  %i.bl = icmp ult i32 %i.bk, 10
  br i1 %i.bl, label %bb.s, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.bm = zext nneg i32 %i.bk to i64
  %i.bn = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.bg, i64 %i.bm) ; 2 uses
  %i.bo = extractvalue { i64, i1 } %i.bn, 1
  br i1 %i.bo, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bp = extractvalue { i64, i1 } %i.bn, 0       ; 2 uses
  %.not103.i.i.i = icmp eq i64 %i.be, 0
  br i1 %.not103.i.i.i, label %.thread, label %.lr.ph.i.i.i

.lr.ph142.i.i.i:                                  ; preds = %bb.q, %bb.u
  %.sroa.0.2141.i.i.i = phi ptr [ %i.bw, %bb.u ], [ %i.ba, %bb.q ] ; 2 uses
  %.sroa.26.2140.i.i.i = phi i64 [ %i.bv, %bb.u ], [ %i.bb, %bb.q ]
  %.sroa.085.2139.i.i.i = phi i64 [ %i.by, %bb.u ], [ 0, %bb.q ]
  %i.bq = load i8, ptr %.sroa.0.2141.i.i.i, align 1, !noalias !32
  %i.br = zext i8 %i.bq to i32
  %i.bs = add nsw i32 %i.br, -48                  ; 2 uses
  %i.bt = icmp ult i32 %i.bs, 10
  br i1 %i.bt, label %bb.u, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit.thread

bb.u:                                             ; preds = %.lr.ph142.i.i.i
  %i.bu = mul i64 %.sroa.085.2139.i.i.i, 10
  %i.bv = add nsw i64 %.sroa.26.2140.i.i.i, -1    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.2141.i.i.i, i64 1
  %i.bx = zext nneg i32 %i.bs to i64
  %i.by = sub i64 %i.bu, %i.bx                    ; 2 uses
  %.not104.i.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not104.i.i.i, label %.thread, label %.lr.ph142.i.i.i

bb.v:                                             ; preds = %bb.p, %thread-pre-split.i.i.i
  %.sroa.26.0.i.i.i = phi i64 [ %i.az, %bb.p ], [ %.sroa.14.0.i, %thread-pre-split.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.ay, %bb.p ], [ %i.a, %thread-pre-split.i.i.i ] ; 2 uses
  %i.bz = icmp ult i64 %.sroa.26.0.i.i.i, 16
  br i1 %i.bz, label %.lr.ph151.i.i.i.preheader, label %.preheader112.i.i.i

.lr.ph151.i.i.i.preheader:                        ; preds = %bb.o, %bb.v
  %.sroa.0.4150.i.i.i.ph = phi ptr [ %i.a, %bb.o ], [ %.sroa.0.0.i.i.i, %bb.v ]
  %.sroa.26.4149.i.i.i.ph = phi i64 [ 1, %bb.o ], [ %.sroa.26.0.i.i.i, %bb.v ]
  br label %.lr.ph151.i.i.i

.preheader112.i.i.i:                              ; preds = %bb.v, %bb.y
  %.sroa.0.3146.i.i.i = phi ptr [ %i.ca, %bb.y ], [ %.sroa.0.0.i.i.i, %bb.v ] ; 3 uses
  %.sroa.26.3145.i.i.i = phi i64 [ %i.cb, %bb.y ], [ %.sroa.26.0.i.i.i, %bb.v ]
  %.sroa.085.3144.i.i.i = phi i64 [ %i.cm, %bb.y ], [ 0, %bb.v ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.3146.i.i.i, i64 1
  %i.cb = add i64 %.sroa.26.3145.i.i.i, -1        ; 2 uses
  %i.cc = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.085.3144.i.i.i, i64 10) ; 2 uses
  %i.cd = extractvalue { i64, i1 } %i.cc, 0
  %i.ce = extractvalue { i64, i1 } %i.cc, 1
  br i1 %i.ce, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit.thread.sink.split, label %bb.w

bb.w:                                             ; preds = %.preheader112.i.i.i
  %i.cf = load i8, ptr %.sroa.0.3146.i.i.i, align 1, !noalias !32
  %i.cg = zext i8 %i.cf to i32
  %i.ch = add nsw i32 %i.cg, -48                  ; 2 uses
  %i.ci = icmp ult i32 %i.ch, 10
  br i1 %i.ci, label %bb.x, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.cj = zext nneg i32 %i.ch to i64
  %i.ck = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.cd, i64 %i.cj) ; 2 uses
  %i.cl = extractvalue { i64, i1 } %i.ck, 1
  br i1 %i.cl, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = extractvalue { i64, i1 } %i.ck, 0       ; 2 uses
  %.not105.i.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not105.i.i.i, label %.thread, label %.preheader112.i.i.i

.lr.ph151.i.i.i:                                  ; preds = %.lr.ph151.i.i.i.preheader, %bb.z
  %.sroa.0.4150.i.i.i = phi ptr [ %i.ct, %bb.z ], [ %.sroa.0.4150.i.i.i.ph, %.lr.ph151.i.i.i.preheader ] ; 2 uses
  %.sroa.26.4149.i.i.i = phi i64 [ %i.cs, %bb.z ], [ %.sroa.26.4149.i.i.i.ph, %.lr.ph151.i.i.i.preheader ]
  %.sroa.085.4148.i.i.i = phi i64 [ %i.cv, %bb.z ], [ 0, %.lr.ph151.i.i.i.preheader ]
  %i.cn = load i8, ptr %.sroa.0.4150.i.i.i, align 1, !noalias !32
  %i.co = zext i8 %i.cn to i32
  %i.cp = add nsw i32 %i.co, -48                  ; 2 uses
  %i.cq = icmp ult i32 %i.cp, 10
  br i1 %i.cq, label %bb.z, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit.thread

bb.z:                                             ; preds = %.lr.ph151.i.i.i
  %i.cr = mul i64 %.sroa.085.4148.i.i.i, 10
  %i.cs = add nsw i64 %.sroa.26.4149.i.i.i, -1    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.4150.i.i.i, i64 1
  %i.cu = zext nneg i32 %i.cp to i64
  %i.cv = add i64 %i.cr, %i.cu                    ; 2 uses
  %.not106.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not106.i.i.i, label %.thread, label %.lr.ph151.i.i.i

_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit.thread.sink.split: ; preds = %.lr.ph.i.i.i, %.preheader112.i.i.i
  %.sroa.0.3146.i.i.i.lcssa.sink = phi ptr [ %.sroa.0.3146.i.i.i, %.preheader112.i.i.i ], [ %.sroa.0.1137.i.i.i, %.lr.ph.i.i.i ]
  %.sink144 = phi i64 [ 518, %.preheader112.i.i.i ], [ 774, %.lr.ph.i.i.i ]
  %i.cw = load i8, ptr %.sroa.0.3146.i.i.i.lcssa.sink, align 1, !noalias !32
  %i.cx = add i8 %i.cw, -48
  %i.cy = icmp ult i8 %i.cx, 10
  %i.cz = select i1 %i.cy, i64 %.sink144, i64 262
  br label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit.thread

_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit.thread: ; preds = %bb.s, %bb.r, %.lr.ph142.i.i.i, %bb.w, %bb.x, %.lr.ph151.i.i.i, %bb.o, %bb.o, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit.thread.sink.split, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.i.i
  %.sroa.231.0.ph = phi i64 [ 6, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.i.i ], [ 262, %.lr.ph142.i.i.i ], [ 262, %.lr.ph151.i.i.i ], [ 262, %bb.o ], [ %i.cz, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit.thread.sink.split ], [ 262, %bb.o ], [ 518, %bb.x ], [ 262, %bb.w ], [ 262, %bb.r ], [ 774, %bb.s ]
  %.val1.i = load i64, ptr %2, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val1.i, ptr %.sroa.439.0..sroa_idx, align 8
  store i8 2, ptr %0, align 8
  %.sroa.338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.231.0.ph, ptr %.sroa.338.0..sroa_idx, align 8
  br label %bb.ab

.thread:                                          ; preds = %bb.t, %bb.u, %bb.y, %bb.z
  %.sroa.13.072 = phi i64 [ %i.by, %bb.u ], [ %i.cv, %bb.z ], [ %i.cm, %bb.y ], [ %i.bp, %bb.t ]
  br i1 %.not.i.i.i2, label %bb.aa, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %.thread
  %.not = icmp eq i64 %.sroa.14.0.i, %i.c
  br i1 %.not, label %_RNvNtCsSv8PdaUzvZ_12interpolator6parser4step.exit, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i.i

bb.aa:                                            ; preds = %.thread
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.14.0.i
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = icmp slt i8 %i.db, -64
  br i1 %i.dc, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i.i, label %_RNvNtCsSv8PdaUzvZ_12interpolator6parser4step.exit

_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i.i: ; preds = %bb.aa, %.split.i.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr nonnull %i.a, i64 %i.c, i64 %.sroa.14.0.i, i64 %i.c, ptr nonnull align 8 @31) #22
  unreachable

_RNvNtCsSv8PdaUzvZ_12interpolator6parser4step.exit: ; preds = %.split.i.i.i.i, %bb.aa
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.14.0.i
  %i.de = sub nuw i64 %i.c, %.sroa.14.0.i
  store ptr %i.dd, ptr %1, align 8
  store i64 %i.de, ptr %i.b, align 8
  %i.df = load i64, ptr %2, align 8
  %i.dg = add i64 %i.df, %.sroa.14.0.i
  store i64 %i.dg, ptr %2, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.13.072, ptr %i.dh, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %_RNvNtCsSv8PdaUzvZ_12interpolator6parser4step.exit, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit.thread, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsSv8PdaUzvZ_12interpolator6parser12parse_numberjNtNtB4_5error10ParseErrorEB4_(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, ptr nofree align 8 captures(none) %1, ptr nofree align 8 captures(none) %2, i64 %3, ptr nofree readonly captures(none) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %1, align 8                ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNCINvNtCsSv8PdaUzvZ_12interpolator6parser12parse_numberjNtNtB1c_5error10ParseErrorE0ENtB5_8Searcher4nextB1c_.exit.i.i.i, %bb.a
  %.sroa.23.0.i = phi ptr [ %i.b, %bb.a ], [ %.sroa.23.1.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNCINvNtCsSv8PdaUzvZ_12interpolator6parser12parse_numberjNtNtB1c_5error10ParseErrorE0ENtB5_8Searcher4nextB1c_.exit.i.i.i ] ; 8 uses
  %.sroa.14.0.i = phi i64 [ 0, %bb.a ], [ %i.ar, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNCINvNtCsSv8PdaUzvZ_12interpolator6parser12parse_numberjNtNtB1c_5error10ParseErrorE0ENtB5_8Searcher4nextB1c_.exit.i.i.i ] ; 14 uses
  %i.f = ptrtoint ptr %.sroa.23.0.i to i64
  %i.g = icmp eq ptr %.sroa.23.0.i, %i.e
  br i1 %i.g, label %bb.k, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit.i.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.23.0.i, i64 1 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.23.0.i, null
  br i1 %.not.i.i.i, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit.i.i.i
  %i.i = load i8, ptr %.sroa.23.0.i, align 1      ; 5 uses
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i8 %i.i, 31
  %i.l = zext nneg i8 %i.k to i32                 ; 3 uses
  %i.m = icmp eq ptr %i.h, %i.e
  br i1 %i.m, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit15.thread.i.i.i, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = zext nneg i8 %i.i to i32
  br label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNCINvNtCsSv8PdaUzvZ_12interpolator6parser12parse_numberjNtNtB1c_5error10ParseErrorE0ENtB5_8Searcher4nextB1c_.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.23.0.i, i64 2 ; 3 uses
  %i.p = load i8, ptr %i.h, align 1
  %i.q = shl nuw nsw i32 %i.l, 6
  %i.r = and i8 %i.p, 63
  %i.s = zext nneg i8 %i.r to i32                 ; 2 uses
  %i.t = or disjoint i32 %i.q, %i.s
  %i.u = icmp samesign ugt i8 %i.i, -33
  br i1 %i.u, label %bb.g, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNCINvNtCsSv8PdaUzvZ_12interpolator6parser12parse_numberjNtNtB1c_5error10ParseErrorE0ENtB5_8Searcher4nextB1c_.exit.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit15.thread.i.i.i: ; preds = %bb.d
  tail call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsSv8PdaUzvZ_12interpolator(ptr nonnull align 8 @3) #21
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.v = icmp eq ptr %i.o, %i.e
  br i1 %i.v, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit17.thread.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.23.0.i, i64 3 ; 3 uses
  %i.x = load i8, ptr %i.o, align 1
  %i.y = shl nuw nsw i32 %i.s, 6
  %i.z = and i8 %i.x, 63
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = or disjoint i32 %i.y, %i.aa             ; 2 uses
  %i.ac = shl nuw nsw i32 %i.l, 12
  %i.ad = or disjoint i32 %i.ab, %i.ac
  %i.ae = icmp samesign ugt i8 %i.i, -17
  br i1 %i.ae, label %bb.i, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNCINvNtCsSv8PdaUzvZ_12interpolator6parser12parse_numberjNtNtB1c_5error10ParseErrorE0ENtB5_8Searcher4nextB1c_.exit.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit17.thread.i.i.i: ; preds = %bb.g
  tail call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsSv8PdaUzvZ_12interpolator(ptr nonnull align 8 @4) #21
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.af = icmp eq ptr %i.w, %i.e
  br i1 %i.af, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit19.thread.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.23.0.i, i64 4
  %i.ah = load i8, ptr %i.w, align 1
  %i.ai = shl nuw nsw i32 %i.l, 18
  %i.aj = and i32 %i.ai, 1835008
  %i.ak = shl nuw nsw i32 %i.ab, 6
  %i.al = and i8 %i.ah, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am
  %i.ao = or disjoint i32 %i.an, %i.aj
  br label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNCINvNtCsSv8PdaUzvZ_12interpolator6parser12parse_numberjNtNtB1c_5error10ParseErrorE0ENtB5_8Searcher4nextB1c_.exit.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit19.thread.i.i.i: ; preds = %bb.i
  tail call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsSv8PdaUzvZ_12interpolator(ptr nonnull align 8 @5) #21
  unreachable

_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNCINvNtCsSv8PdaUzvZ_12interpolator6parser12parse_numberjNtNtB1c_5error10ParseErrorE0ENtB5_8Searcher4nextB1c_.exit.i.i.i: ; preds = %bb.j, %bb.h, %bb.f, %bb.e
  %.sroa.23.1.i = phi ptr [ %i.h, %bb.e ], [ %i.ag, %bb.j ], [ %i.w, %bb.h ], [ %i.o, %bb.f ] ; 2 uses
  %.sroa.4.0.i.ph.i.i = phi i32 [ %i.n, %bb.e ], [ %i.ao, %bb.j ], [ %i.ad, %bb.h ], [ %i.t, %bb.f ] ; 2 uses
  %i.ap = ptrtoint ptr %.sroa.23.1.i to i64
  %i.aq = sub i64 %.sroa.14.0.i, %i.f
  %i.ar = add i64 %i.aq, %i.ap
  %.not.i.i.i.i.i.i = icmp ne i32 %.sroa.4.0.i.ph.i.i, 45
  %i.as = add nsw i32 %.sroa.4.0.i.ph.i.i, -58
  %.sroa.0.0.i.i.i.i.i.i.i = icmp ult i32 %i.as, -10
  %.sroa.0.0.i.i.not.i.not.i.i.i = and i1 %.not.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i.i
  br i1 %.sroa.0.0.i.i.not.i.not.i.i.i, label %bb.l, label %bb.b

bb.k:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsSv8PdaUzvZ_12interpolator.exit.i.i.i, %bb.b
  store i8 2, ptr %0, align 8
  %.sroa.2.i.sroa.3.0..sroa.2.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %.sroa.2.i.sroa.3.0..sroa.2.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.2.i.sroa.5.0..sroa.2.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.2.i.sroa.5.0..sroa.2.0..sroa_idx.i.sroa_idx, align 8
  br label %bb.u

bb.l:                                             ; preds = %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNCINvNtCsSv8PdaUzvZ_12interpolator6parser12parse_numberjNtNtB1c_5error10ParseErrorE0ENtB5_8Searcher4nextB1c_.exit.i.i.i
  %i.at = icmp eq i64 %.sroa.14.0.i, 0
  br i1 %i.at, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i2 = icmp ult i64 %.sroa.14.0.i, %i.d ; 2 uses
  br i1 %.not.i.i.i2, label %bb.n, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.m
  %i.au = icmp ne i64 %.sroa.14.0.i, %i.d
  %.not.i.i = icmp eq ptr %i.b, null
  %or.cond.i.i = or i1 %.not.i.i, %i.au
  br i1 %or.cond.i.i, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.14.0.i
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = icmp sgt i8 %i.aw, -65
  br i1 %i.ax, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i

_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.i.i: ; preds = %bb.l
  %.not.old.i.i = icmp eq ptr %i.b, null
  br i1 %.not.old.i.i, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit.thread

_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.thread.i.i: ; preds = %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3getCsSv8PdaUzvZ_12interpolator.exit.i.i, %bb.n, %.split.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr %i.b, i64 %i.d, i64 0, i64 %.sroa.14.0.i, ptr nonnull align 8 @1) #22
  unreachable

_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit: ; preds = %.split.i.i.i, %bb.n
  %cond = icmp eq i64 %.sroa.14.0.i, 1
  %i.ay = load i8, ptr %i.b, align 1, !noalias !40 ; 2 uses
  br i1 %cond, label %bb.o, label %thread-pre-split.i.i.i

bb.o:                                             ; preds = %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit
  switch i8 %i.ay, label %thread-pre-split.i.i.i [
    i8 43, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit.thread
    i8 45, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit.thread
  ]

thread-pre-split.i.i.i:                           ; preds = %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsSv8PdaUzvZ_12interpolator.exit, %bb.o
  %cond.i.i.i = icmp eq i8 %i.ay, 43              ; 2 uses
  %i.az = sext i1 %cond.i.i.i to i64
  %.sroa.15.0.i.i.i = add i64 %.sroa.14.0.i, %i.az ; 4 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.0.idx.i.i.i ; 2 uses
  %i.ba = icmp ult i64 %.sroa.15.0.i.i.i, 17
  br i1 %i.ba, label %.preheader.i.i.i, label %.preheader56.i.i.i.preheader

.preheader.i.i.i:                                 ; preds = %thread-pre-split.i.i.i
  %.not5366.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 0
  br i1 %.not5366.i.i.i, label %.thread, label %.lr.ph.i.i.i

.preheader56.i.i.i:                               ; preds = %bb.r
  %.not52.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not52.i.i.i, label %.thread, label %.preheader56.i.i.i.preheader

end_hunk_0
