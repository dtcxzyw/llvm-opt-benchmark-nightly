Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/tokenizer?download=true
inline.NumInlined: 657
inline.NumDeleted: 223
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6google8protobuf2io9Tokenizer22TryConsumeCommentStartEv:bb.a
bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i8 %i.e, 47
  br i1 %i.f, label %bb.c, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.g = load i8, ptr %i.d, align 8, !tbaa !75
  switch i8 %i.g, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit2 [
    i8 47, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit1.thread
    i8 42, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit2.thread
  ]

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit1.thread: ; preds = %bb.c
  tail call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  br label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit2.thread: ; preds = %bb.c
  tail call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  br label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit2: ; preds = %bb.c
  store i32 6, ptr %0, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !49
  %i.k = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef 0, i64 noundef %i.j, ptr noundef nonnull @.str.15, i64 noundef 1) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.o = load i32, ptr %i.n, align 8, !tbaa !62
  %i.p = load <2 x i32>, ptr %i.l, align 4, !tbaa !11
  %i.q = add nsw <2 x i32> %i.p, <i32 0, i32 -1>
  store <2 x i32> %i.q, ptr %i.m, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.o, ptr %i.r, align 8, !tbaa !69
  br label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit: ; preds = %bb.a
  %i.s = icmp eq i32 %i.b, 1
  %i.t = icmp eq i8 %i.e, 35
  %or.cond = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3.thread, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3.thread: ; preds = %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit
  tail call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  br label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3: ; preds = %bb.b, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3.thread, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit2.thread, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit1.thread, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit2
  %.0 = phi i32 [ 0, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3.thread ], [ 0, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit1.thread ], [ 2, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit2 ], [ 1, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit2.thread ], [ 3, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit ], [ 3, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #3 align 2 !guid !134 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 191
  %i.b = load i8, ptr %i.a, align 1, !tbaa !86, !range !73, !noundef !74
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !75    ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  switch i8 %i.e, label %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEbv.exit [
    i8 32, label %.preheader
    i8 13, label %.preheader
    i8 11, label %.preheader
    i8 9, label %.preheader
    i8 12, label %.preheader
  ]

.preheader:                                       ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.preheader
  tail call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.f = load i8, ptr %i.d, align 8, !tbaa !75
  switch i8 %i.f, label %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEvv.exit [
    i8 32, label %.backedge
    i8 13, label %.backedge
    i8 11, label %.backedge
    i8 9, label %.backedge
    i8 12, label %.backedge
  ]

.backedge:                                        ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  br label %bb.c, !llvm.loop !3

_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEvv.exit: ; preds = %bb.c
  store i32 7, ptr %0, align 8, !tbaa !70
  br label %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEbv.exit

bb.d:                                             ; preds = %bb.a
  switch i8 %i.e, label %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEbv.exit [
    i8 32, label %.preheader2
    i8 13, label %.preheader2
    i8 11, label %.preheader2
    i8 10, label %.preheader2
    i8 9, label %.preheader2
    i8 12, label %.preheader2
  ]

.preheader2:                                      ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  br label %bb.e

bb.e:                                             ; preds = %.backedge3, %.preheader2
  tail call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.g = load i8, ptr %i.d, align 8, !tbaa !75
  switch i8 %i.g, label %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_110WhitespaceEEEvv.exit [
    i8 32, label %.backedge3
    i8 13, label %.backedge3
    i8 11, label %.backedge3
    i8 10, label %.backedge3
    i8 9, label %.backedge3
    i8 12, label %.backedge3
  ]

.backedge3:                                       ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  br label %bb.e, !llvm.loop !133

_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_110WhitespaceEEEvv.exit: ; preds = %bb.e
  store i32 7, ptr %0, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 190
  %i.i = load i8, ptr %i.h, align 2, !tbaa !85, !range !73, !noundef !74
  %i.j = trunc nuw i8 %i.i to i1
  br label %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEbv.exit

_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEbv.exit: ; preds = %bb.d, %bb.b, %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_110WhitespaceEEEvv.exit, %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEvv.exit
  %.0 = phi i1 [ true, %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEvv.exit ], [ false, %bb.b ], [ %i.j, %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_110WhitespaceEEEvv.exit ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io9Tokenizer17TryConsumeNewlineEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #3 align 2 !guid !135 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 190
  %i.b = load i8, ptr %i.a, align 2, !tbaa !85, !range !73, !noundef !74
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 191
  %i.e = load i8, ptr %i.d, align 1, !range !73
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load i8, ptr %i.g, align 8
  %i.i = icmp eq i8 %i.h, 10
  %or.cond6 = select i1 %or.cond, i1 %i.i, i1 false ; 2 uses
  br i1 %or.cond6, label %bb.b, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  store i32 8, ptr %0, align 8, !tbaa !70
  br label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit: ; preds = %bb.a, %bb.b
  ret i1 %or.cond6
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io9Tokenizer4NextEv(ptr noundef nonnull align 8 dereferenceable(192) initializes((56, 60)) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !141 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %1 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load i32, ptr %0, align 8, !tbaa !71
  store i32 %i.e, ptr %i.d, align 8, !tbaa !71
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %i.i, i64 12, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !72, !range !73, !noundef !74
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.critedge2.thread50, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 191
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 14 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 11 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 190 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.critedge227.backedge, %.lr.ph
  store i32 0, ptr %0, align 8, !tbaa !70
  store i64 0, ptr %i.m, align 8, !tbaa !49
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !84
  store i8 0, ptr %i.ad, align 1, !tbaa !50
  %i.ae = load <2 x i32>, ptr %i.n, align 4, !tbaa !11
  store <2 x i32> %i.ae, ptr %i.i, align 8, !tbaa !11
  store ptr %i.g, ptr %i.q, align 8, !tbaa !63
  %i.af = load i32, ptr %i.r, align 4, !tbaa !79
  store i32 %i.af, ptr %i.s, align 8, !tbaa !64
  %i.ag = load i8, ptr %i.t, align 1, !tbaa !86, !range !73, !noundef !74
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = load i8, ptr %i.u, align 8, !tbaa !75   ; 2 uses
  %switch.tableidx = add i8 %i.ai, -9             ; 5 uses
  %i.aj = icmp ult i8 %switch.tableidx, 24        ; 2 uses
  br i1 %i.ah, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  br i1 %i.aj, label %switch.hole_check, label %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread

switch.hole_check:                                ; preds = %bb.c
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 8388637, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread

switch.hole_check202:                             ; preds = %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit43
  %switch.maskindex204 = zext nneg i8 %switch.tableidx200 to i32
  %switch.shifted205 = lshr i32 8388637, %switch.maskindex204
  %switch.lobit206 = trunc i32 %switch.shifted205 to i1
  br i1 %switch.lobit206, label %switch.lookup, label %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread47

switch.lookup:                                    ; preds = %switch.hole_check, %switch.hole_check202
  %switch.tableidx200.sink = phi i8 [ %switch.tableidx200, %switch.hole_check202 ], [ %switch.tableidx, %switch.hole_check ]
  %switch.table._ZN6google8protobuf2io9Tokenizer4NextEv.7.sink = phi ptr [ @switch.table._ZN6google8protobuf2io9Tokenizer4NextEv.7, %switch.hole_check202 ], [ @switch.table._ZN6google8protobuf2io9Tokenizer4NextEv.7, %switch.hole_check ]
  %i.ak = zext nneg i8 %switch.tableidx200.sink to i64
  %switch.gep207 = getelementptr inbounds nuw i8, ptr %switch.table._ZN6google8protobuf2io9Tokenizer4NextEv.7.sink, i64 %i.ak
  %switch.load208 = load i8, ptr %switch.gep207, align 1
  switch i8 %switch.load208, label %bb.f [
    i8 10, label %bb.d
    i8 9, label %bb.e
  ]

bb.d:                                             ; preds = %switch.lookup
  %i.al = load i32, ptr %i.n, align 4, !tbaa !61
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.n, align 4, !tbaa !61
  br label %bb.g

bb.e:                                             ; preds = %switch.lookup
  %i.an = load i32, ptr %i.o, align 8, !tbaa !62  ; 2 uses
  %i.ao = srem i32 %i.an, 8
  %reass.sub.i39 = add i32 %i.an, 8
  %i.ap = sub i32 %reass.sub.i39, %i.ao
  br label %bb.g

bb.f:                                             ; preds = %switch.lookup
  %i.aq = load i32, ptr %i.o, align 8, !tbaa !62
  %i.ar = add nsw i32 %i.aq, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sink = phi i32 [ %i.ar, %bb.f ], [ %i.ap, %bb.e ], [ 0, %bb.d ]
  store i32 %.sink, ptr %i.o, align 8, !tbaa !62
  %i.as = load i32, ptr %i.r, align 4, !tbaa !79
  %i.at = add nsw i32 %i.as, 1                    ; 3 uses
  store i32 %i.at, ptr %i.r, align 4, !tbaa !79
  %i.au = load i32, ptr %i.v, align 8, !tbaa !76  ; 3 uses
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = load ptr, ptr %i.w, align 8, !tbaa !77
  %i.ax = sext i32 %i.at to i64
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !50  ; 2 uses
  store i8 %i.az, ptr %i.u, align 8, !tbaa !75
  br label %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit43

bb.i:                                             ; preds = %bb.g
  %i.ba = load i8, ptr %i.j, align 8, !tbaa !72, !range !73, !noundef !74
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit43.thread, label %bb.j

_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit43.thread: ; preds = %bb.i
  store i8 0, ptr %i.u, align 8, !tbaa !75
  br label %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread47

bb.j:                                             ; preds = %bb.i
  %i.bc = load ptr, ptr %i.q, align 8, !tbaa !63  ; 3 uses
  %.not.i.i40 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i40, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = load i32, ptr %i.s, align 8, !tbaa !64  ; 3 uses
  %i.be = icmp slt i32 %i.bd, %i.au
  br i1 %i.be, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bf = sub nsw i32 %i.au, %i.bd
  %i.bg = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !49
  %i.bj = sub i64 4611686018427387903, %i.bi
  %i.bk = icmp ult i64 %i.bj, %i.bg
  br i1 %i.bk, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i42

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i42: ; preds = %bb.l
  %i.bl = load ptr, ptr %i.w, align 8, !tbaa !77
  %i.bm = sext i32 %i.bd to i64
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 %i.bm
  %i.bo = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef %i.bn, i64 noundef %i.bg) ; 0 uses
  store i32 0, ptr %i.s, align 8, !tbaa !64
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i42, %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.a, align 8, !tbaa !78
  store ptr null, ptr %i.w, align 8, !tbaa !77
  store i32 0, ptr %i.r, align 4, !tbaa !79
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.n
  %i.bp = load ptr, ptr %i.x, align 8, !tbaa !59  ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !81
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call noundef zeroext i1 %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull %i.a, ptr noundef nonnull %i.v), !inline_history !88
  br i1 %i.bt, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.v, align 8, !tbaa !76
  store i8 1, ptr %i.j, align 8, !tbaa !72
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.bu = load i32, ptr %i.v, align 8, !tbaa !76
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.o, label %bb.r, !llvm.loop !0

bb.r:                                             ; preds = %bb.q
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !78  ; 2 uses
  store ptr %i.bw, ptr %i.w, align 8, !tbaa !77
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !50
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.sink.i.i41 = phi i8 [ %i.bx, %bb.r ], [ 0, %bb.p ] ; 2 uses
  store i8 %.sink.i.i41, ptr %i.u, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit43

_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit43: ; preds = %bb.h, %bb.s
  %i.by = phi i8 [ %i.az, %bb.h ], [ %.sink.i.i41, %bb.s ]
  %switch.tableidx200 = add i8 %i.by, -9          ; 3 uses
  %i.bz = icmp ult i8 %switch.tableidx200, 24
  br i1 %i.bz, label %switch.hole_check202, label %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread47

_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread47: ; preds = %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit43, %switch.hole_check202, %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit43.thread
  store i32 7, ptr %0, align 8, !tbaa !70
  br label %.critedge15

bb.t:                                             ; preds = %bb.b
  br i1 %i.aj, label %switch.hole_check211, label %_ZN6google8protobuf2io9Tokenizer17TryConsumeNewlineEv.exit

switch.hole_check211:                             ; preds = %bb.t
  %switch.maskindex213 = zext nneg i8 %switch.tableidx to i32
  %switch.shifted214 = lshr i32 8388639, %switch.maskindex213
  %switch.lobit215 = trunc i32 %switch.shifted214 to i1
  br i1 %switch.lobit215, label %switch.lookup212, label %_ZN6google8protobuf2io9Tokenizer17TryConsumeNewlineEv.exit

switch.hole_check220:                             ; preds = %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit
  %switch.maskindex222 = zext nneg i8 %switch.tableidx218 to i32
  %switch.shifted223 = lshr i32 8388639, %switch.maskindex222
  %switch.lobit224 = trunc i32 %switch.shifted223 to i1
  br i1 %switch.lobit224, label %switch.lookup212, label %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit

switch.lookup212:                                 ; preds = %switch.hole_check211, %switch.hole_check220
  %switch.tableidx218.sink = phi i8 [ %switch.tableidx218, %switch.hole_check220 ], [ %switch.tableidx, %switch.hole_check211 ]
  %switch.table._ZN6google8protobuf2io9Tokenizer4NextEv.9.sink = phi ptr [ @switch.table._ZN6google8protobuf2io9Tokenizer4NextEv.9, %switch.hole_check220 ], [ @switch.table._ZN6google8protobuf2io9Tokenizer4NextEv.9, %switch.hole_check211 ]
  %i.ca = zext nneg i8 %switch.tableidx218.sink to i64
  %switch.gep225 = getelementptr inbounds nuw i8, ptr %switch.table._ZN6google8protobuf2io9Tokenizer4NextEv.9.sink, i64 %i.ca
  %switch.load226 = load i8, ptr %switch.gep225, align 1
  switch i8 %switch.load226, label %bb.w [
    i8 10, label %bb.u
    i8 9, label %bb.v
  ]

bb.u:                                             ; preds = %switch.lookup212
  %i.cb = load i32, ptr %i.n, align 4, !tbaa !61
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.n, align 4, !tbaa !61
  br label %bb.x

bb.v:                                             ; preds = %switch.lookup212
  %i.cd = load i32, ptr %i.o, align 8, !tbaa !62  ; 2 uses
  %i.ce = srem i32 %i.cd, 8
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf2io9Tokenizer4NextEv:bb.a
  br i1 %i.dl, label %bb.af, label %bb.ai, !llvm.loop !0

bb.ai:                                            ; preds = %bb.ah
  %i.dm = load ptr, ptr %i.b, align 8, !tbaa !78  ; 2 uses
  store ptr %i.dm, ptr %i.w, align 8, !tbaa !77
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !50
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ag
  %.sink.i.i = phi i8 [ %i.dn, %bb.ai ], [ 0, %bb.ag ] ; 2 uses
  store i8 %.sink.i.i, ptr %i.u, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit

_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit: ; preds = %bb.y, %bb.aj
  %i.do = phi i8 [ %i.cp, %bb.y ], [ %.sink.i.i, %bb.aj ]
  %switch.tableidx218 = add i8 %i.do, -9          ; 3 uses
  %i.dp = icmp ult i8 %switch.tableidx218, 24
  br i1 %i.dp, label %switch.hole_check220, label %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit

_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit: ; preds = %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit, %switch.hole_check220, %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit.thread
  store i32 7, ptr %0, align 8, !tbaa !70
  %i.dq = load i8, ptr %i.y, align 2, !tbaa !85, !range !73, !noundef !74
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %.critedge15, label %_ZN6google8protobuf2io9Tokenizer17TryConsumeNewlineEv.exit

_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread: ; preds = %switch.hole_check, %bb.c
  %i.ds = load i8, ptr %i.y, align 2, !tbaa !85, !range !73, !noundef !74
  %i.dt = trunc nuw i8 %i.ds to i1
  %i.du = icmp eq i8 %i.ai, 10
  %or.cond6.i = select i1 %i.dt, i1 %i.du, i1 false
  br i1 %or.cond6.i, label %bb.ak, label %_ZN6google8protobuf2io9Tokenizer17TryConsumeNewlineEv.exit

bb.ak:                                            ; preds = %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread
  call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  store i32 8, ptr %0, align 8, !tbaa !70
  br label %_ZN6google8protobuf2io9Tokenizer17TryConsumeNewlineEv.exit

_ZN6google8protobuf2io9Tokenizer17TryConsumeNewlineEv.exit: ; preds = %bb.t, %switch.hole_check211, %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit, %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread, %bb.ak
  %or.cond6.i174 = phi i1 [ true, %bb.ak ], [ false, %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread ], [ false, %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit ], [ false, %switch.hole_check211 ], [ false, %bb.t ]
  %i.dv = load i32, ptr %i.r, align 4, !tbaa !79  ; 2 uses
  %i.dw = load i32, ptr %i.s, align 8, !tbaa !64  ; 3 uses
  %.not.i.i = icmp eq i32 %i.dv, %i.dw
  br i1 %.not.i.i, label %_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit, label %bb.al

bb.al:                                            ; preds = %_ZN6google8protobuf2io9Tokenizer17TryConsumeNewlineEv.exit
  %i.dx = load ptr, ptr %i.q, align 8, !tbaa !63  ; 2 uses
  %i.dy = sub nsw i32 %i.dv, %i.dw
  %i.dz = sext i32 %i.dy to i64                   ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !49
  %i.ec = sub i64 4611686018427387903, %i.eb
  %i.ed = icmp ult i64 %i.ec, %i.dz
  br i1 %i.ed, label %bb.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.am:                                            ; preds = %bb.al
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.al
  %i.ee = load ptr, ptr %i.w, align 8, !tbaa !77
  %i.ef = sext i32 %i.dw to i64
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 %i.ef
  %i.eh = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dx, ptr noundef %i.eg, i64 noundef %i.dz) ; 0 uses
  br label %_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit

_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit: ; preds = %_ZN6google8protobuf2io9Tokenizer17TryConsumeNewlineEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  store ptr null, ptr %i.q, align 8, !tbaa !63
  store i32 -1, ptr %i.s, align 8, !tbaa !64
  %i.ei = load i32, ptr %i.o, align 8, !tbaa !62
  store i32 %i.ei, ptr %i.z, align 8, !tbaa !69
  br i1 %or.cond6.i174, label %.critedge2.thread, label %bb.ap

.critedge15:                                      ; preds = %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit, %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread47
  %i.ej = load i32, ptr %i.r, align 4, !tbaa !79  ; 2 uses
  %i.ek = load i32, ptr %i.s, align 8, !tbaa !64  ; 3 uses
  %.not.i.i16 = icmp eq i32 %i.ej, %i.ek
  br i1 %.not.i.i16, label %_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit18, label %bb.an

bb.an:                                            ; preds = %.critedge15
  %i.el = load ptr, ptr %i.q, align 8, !tbaa !63  ; 2 uses
  %i.em = sub nsw i32 %i.ej, %i.ek
  %i.en = sext i32 %i.em to i64                   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !49
  %i.eq = sub i64 4611686018427387903, %i.ep
  %i.er = icmp ult i64 %i.eq, %i.en
  br i1 %i.er, label %bb.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i17

bb.ao:                                            ; preds = %bb.an
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i17: ; preds = %bb.an
  %i.es = load ptr, ptr %i.w, align 8, !tbaa !77
  %i.et = sext i32 %i.ek to i64
  %i.eu = getelementptr inbounds i8, ptr %i.es, i64 %i.et
  %i.ev = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.el, ptr noundef %i.eu, i64 noundef %i.en) ; 0 uses
  br label %_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit18

_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit18: ; preds = %.critedge15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i17
  store ptr null, ptr %i.q, align 8, !tbaa !63
  store i32 -1, ptr %i.s, align 8, !tbaa !64
  %i.ew = load i32, ptr %i.o, align 8, !tbaa !62
  store i32 %i.ew, ptr %i.z, align 8, !tbaa !69
  br label %.critedge2.thread

bb.ap:                                            ; preds = %_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit
  %i.ex = call noundef i32 @_ZN6google8protobuf2io9Tokenizer22TryConsumeCommentStartEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  switch i32 %i.ex, label %default.unreachable [
    i32 0, label %.preheader
    i32 1, label %bb.as
    i32 2, label %.critedge2.thread
    i32 3, label %bb.at
  ]

.preheader:                                       ; preds = %bb.ap, %bb.aq
  %i.ey = load i8, ptr %i.u, align 8, !tbaa !75
  switch i8 %i.ey, label %bb.aq [
    i8 10, label %bb.ar
    i8 0, label %.critedge2
  ], !llvm.loop !136

bb.aq:                                            ; preds = %.preheader
  call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  br label %.preheader, !llvm.loop !2

bb.ar:                                            ; preds = %.preheader
  call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  br label %.critedge2, !llvm.loop !136

bb.as:                                            ; preds = %bb.ap
  call void @_ZN6google8protobuf2io9Tokenizer19ConsumeBlockCommentEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef null)
  br label %.critedge2, !llvm.loop !136

default.unreachable:                              ; preds = %bb.ap
  unreachable

bb.at:                                            ; preds = %bb.ap
  %i.ez = load i8, ptr %i.j, align 8, !tbaa !72, !range !73, !noundef !74
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %.critedge2.thread50, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.val = load i8, ptr %i.u, align 8, !tbaa !75
  %or.cond = icmp ult i8 %.val, 32
  br i1 %or.cond, label %.noexc.i, label %bb.ax

.noexc.i:                                         ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %i.aa, ptr %2, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 47, ptr %i.c, align 8, !tbaa !87
  %i.fb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.av    ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.fb, ptr %2, align 8, !tbaa !84
  %i.fc = load i64, ptr %i.c, align 8, !tbaa !87  ; 3 uses
  store i64 %i.fc, ptr %i.aa, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.fb, ptr noundef nonnull align 1 dereferenceable(47) @.str.16, i64 47, i1 false)
  store i64 %i.fc, ptr %i.ab, align 8, !tbaa !49
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fc
  store i8 0, ptr %i.fd, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.fe = load ptr, ptr %i.ac, align 8, !tbaa !60 ; 2 uses
  %i.ff = load i32, ptr %i.n, align 4, !tbaa !61
  %i.fg = load i32, ptr %i.o, align 8, !tbaa !62
  %i.fh = load ptr, ptr %2, align 8, !tbaa !84
  %i.fi = load i64, ptr %i.ab, align 8, !tbaa !49
  %i.fj = load ptr, ptr %i.fe, align 8, !tbaa !81
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8
  invoke void %i.fl(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, i32 noundef %i.ff, i32 noundef %i.fg, i64 %i.fi, ptr %i.fh)
          to label %_ZN6google8protobuf2io9Tokenizer8AddErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.aw, !inline_history !1

_ZN6google8protobuf2io9Tokenizer8AddErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc
  %i.fm = load ptr, ptr %2, align 8, !tbaa !84    ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.aa
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6google8protobuf2io9Tokenizer8AddErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.fo = load i64, ptr %i.aa, align 8, !tbaa !50
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6google8protobuf2io9Tokenizer8AddErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.fq = load i8, ptr %i.u, align 8, !tbaa !75   ; 2 uses
  %i.fr = add i8 %i.fq, -1
  %i.fs = icmp ult i8 %i.fr, 31
  br i1 %i.fs, label %.critedge.backedge, label %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_111UnprintableEEEbv.exit

_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_111UnprintableEEEbv.exit: ; preds = %.critedge
  %i.ft = load i8, ptr %i.j, align 8, !tbaa !72, !range !73, !noundef !74
  %4 = trunc nuw i8 %i.ft to i1
  br i1 %4, label %.critedge2.thread50, label %5

5:                                                ; preds = %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_111UnprintableEEEbv.exit
  %6 = icmp eq i8 %i.fq, 0
  br i1 %6, label %.critedge.backedge, label %.critedge227.backedge

.critedge.backedge:                               ; preds = %5, %.critedge
  br label %.critedge, !llvm.loop !137

bb.av:                                            ; preds = %.noexc.i
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.aw:                                            ; preds = %.noexc
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fw = load ptr, ptr %2, align 8, !tbaa !84    ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.aa
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.aw
  %i.fy = load i64, ptr %i.aa, align 8, !tbaa !50
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.av
  %.pn = phi { ptr, i32 } [ %i.fu, %bb.av ], [ %i.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.fv, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.bp

bb.ax:                                            ; preds = %bb.au
  store i32 0, ptr %0, align 8, !tbaa !70
  store i64 0, ptr %i.m, align 8, !tbaa !49
  %i.ga = load ptr, ptr %i.g, align 8, !tbaa !84
  store i8 0, ptr %i.ga, align 1, !tbaa !50
  %i.gb = load i32, ptr %i.n, align 4, !tbaa !61  ; 2 uses
  store i32 %i.gb, ptr %i.i, align 8, !tbaa !67
  %i.gc = load i32, ptr %i.o, align 8, !tbaa !62  ; 2 uses
  store i32 %i.gc, ptr %i.p, align 4, !tbaa !68
  store ptr %i.g, ptr %i.q, align 8, !tbaa !63
  %i.gd = load i32, ptr %i.r, align 4, !tbaa !79
  store i32 %i.gd, ptr %i.s, align 8, !tbaa !64
  %i.ge = load i8, ptr %i.u, align 8, !tbaa !75   ; 7 uses
  %i.gf = and i8 %i.ge, -33
  %i.gg = add i8 %i.gf, -65
  %or.cond10.i.i = icmp ult i8 %i.gg, 26
  %i.gh = icmp eq i8 %i.ge, 95
  %i.gi = or i1 %i.gh, %or.cond10.i.i
  br i1 %i.gi, label %bb.ay, label %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_16LetterEEEbv.exit

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.gj = load i8, ptr %i.u, align 8, !tbaa !75   ; 3 uses
  %i.gk = and i8 %i.gj, -33
  %i.gl = add i8 %i.gk, -65
  %or.cond15.i1.i = icmp ult i8 %i.gl, 26
  %i.gm = add i8 %i.gj, -48
  %or.cond8.i2.i = icmp ult i8 %i.gm, 10
  %or.cond16.i3.i = or i1 %or.cond8.i2.i, %or.cond15.i1.i
  %i.gn = icmp eq i8 %i.gj, 95
  %i.go = or i1 %i.gn, %or.cond16.i3.i
  br i1 %i.go, label %.lr.ph.i, label %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_112AlphanumericEEEvv.exit

.lr.ph.i:                                         ; preds = %bb.ay, %.lr.ph.i
  call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.gp = load i8, ptr %i.u, align 8, !tbaa !75   ; 3 uses
  %i.gq = and i8 %i.gp, -33
  %i.gr = add i8 %i.gq, -65
  %or.cond15.i.i = icmp ult i8 %i.gr, 26
  %i.gs = add i8 %i.gp, -48
  %or.cond8.i.i = icmp ult i8 %i.gs, 10
  %or.cond16.i.i = or i1 %or.cond8.i.i, %or.cond15.i.i
  %i.gt = icmp eq i8 %i.gp, 95
  %i.gu = or i1 %i.gt, %or.cond16.i.i
  br i1 %i.gu, label %.lr.ph.i, label %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_112AlphanumericEEEvv.exit, !llvm.loop !138

_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_16LetterEEEbv.exit: ; preds = %bb.ax
  switch i8 %i.ge, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit24 [
    i8 48, label %bb.az
    i8 46, label %bb.ba
  ]

bb.az:                                            ; preds = %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_16LetterEEEbv.exit
  call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.gv = call noundef i32 @_ZN6google8protobuf2io9Tokenizer13ConsumeNumberEbb(ptr noundef nonnull align 8 dereferenceable(192) %0, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_112AlphanumericEEEvv.exit

bb.ba:                                            ; preds = %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_16LetterEEEbv.exit
  call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.gw = load i8, ptr %i.u, align 8, !tbaa !75
  %i.gx = add i8 %i.gw, -48
  %i.gy = icmp ult i8 %i.gx, 10
  br i1 %i.gy, label %bb.bb, label %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_112AlphanumericEEEvv.exit

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.gz = load i32, ptr %i.d, align 8, !tbaa !142
  %i.ha = icmp eq i32 %i.gz, 2
  br i1 %i.ha, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.hb = load i32, ptr %i.i, align 8, !tbaa !67
  %i.hc = load i32, ptr %i.h, align 8, !tbaa !143
  %i.hd = icmp eq i32 %i.hb, %i.hc
  br i1 %i.hd, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.he = load i32, ptr %i.p, align 4, !tbaa !68
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !144
  %i.hh = icmp eq i32 %i.he, %i.hg
  br i1 %i.hh, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.hi = load ptr, ptr %i.ac, align 8, !tbaa !60 ; 2 uses
  %i.hj = load i32, ptr %i.n, align 4, !tbaa !61
  %i.hk = load i32, ptr %i.o, align 8, !tbaa !62
  %i.hl = add nsw i32 %i.hk, -2
  %i.hm = load ptr, ptr %i.hi, align 8, !tbaa !81
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8
  call void %i.ho(ptr noundef nonnull align 8 dereferenceable(8) %i.hi, i32 noundef %i.hj, i32 noundef %i.hl, i64 48, ptr nonnull @.str.17)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb
  %i.hp = call noundef i32 @_ZN6google8protobuf2io9Tokenizer13ConsumeNumberEbb(ptr noundef nonnull align 8 dereferenceable(192) %0, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_112AlphanumericEEEvv.exit

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit24: ; preds = %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_16LetterEEEbv.exit
  %i.hq = add i8 %i.ge, -48
  %i.hr = icmp ult i8 %i.hq, 10
  br i1 %i.hr, label %bb.bg, label %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_15DigitEEEbv.exit25

bb.bg:                                            ; preds = %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit24
  call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.hs = call noundef i32 @_ZN6google8protobuf2io9Tokenizer13ConsumeNumberEbb(ptr noundef nonnull align 8 dereferenceable(192) %0, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_112AlphanumericEEEvv.exit

_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_15DigitEEEbv.exit25: ; preds = %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit24
  switch i8 %i.ge, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit27 [
    i8 34, label %bb.bh
    i8 39, label %bb.bi
  ]

bb.bh:                                            ; preds = %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_15DigitEEEbv.exit25
  call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  call void @_ZN6google8protobuf2io9Tokenizer13ConsumeStringEc(ptr noundef nonnull align 8 dereferenceable(192) %0, i8 noundef signext 34)
  br label %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_112AlphanumericEEEvv.exit

bb.bi:                                            ; preds = %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_15DigitEEEbv.exit25
  call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  call void @_ZN6google8protobuf2io9Tokenizer13ConsumeStringEc(ptr noundef nonnull align 8 dereferenceable(192) %0, i8 noundef signext 39)
  br label %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_112AlphanumericEEEvv.exit

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit27: ; preds = %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_15DigitEEEbv.exit25
  %.not = icmp sgt i8 %i.ge, -1
  br i1 %.not, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit27
  %i.ht = load ptr, ptr %i.ac, align 8, !tbaa !60 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24, !noalias !145
  %.sroa.0.0.insert.ext.i.i.i.i = zext i8 %i.ge to i64
  %i.hu = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i to ptr
  store ptr %i.hu, ptr %1, align 8, !tbaa !50, !noalias !145
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIhEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.hv, align 8, !tbaa !90, !noalias !145
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.18, i64 36, ptr nonnull %1, i64 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24, !noalias !145
  %i.hw = load ptr, ptr %3, align 8, !tbaa !84
  %i.hx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !49
  %i.hz = load ptr, ptr %i.ht, align 8, !tbaa !81
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8
  invoke void %i.ib(ptr noundef nonnull align 8 dereferenceable(8) %i.ht, i32 noundef %i.gb, i32 noundef %i.gc, i64 %i.hy, ptr %i.hw)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ic = load ptr, ptr %3, align 8, !tbaa !84    ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ie = icmp eq ptr %i.ic, %i.id
  br i1 %i.ie, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.bk
  %i.if = load i64, ptr %i.id, align 8, !tbaa !50
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.ig) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.ih = landingpad { ptr, i32 }
          cleanup
  %i.ii = load ptr, ptr %3, align 8, !tbaa !84    ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.bl
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !50
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.im) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.bp

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit27
  call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  br label %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_112AlphanumericEEEvv.exit

_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_112AlphanumericEEEvv.exit: ; preds = %.lr.ph.i, %bb.ba, %bb.ay, %bb.az, %bb.bg, %bb.bi, %bb.bm, %bb.bh, %bb.bf
  %.sink188 = phi i32 [ %i.gv, %bb.az ], [ %i.hs, %bb.bg ], [ 5, %bb.bi ], [ 6, %bb.bm ], [ 5, %bb.bh ], [ %i.hp, %bb.bf ], [ 2, %bb.ay ], [ 6, %bb.ba ], [ 2, %.lr.ph.i ]
  store i32 %.sink188, ptr %0, align 8, !tbaa !70
  %i.in = load i32, ptr %i.r, align 4, !tbaa !79  ; 2 uses
  %i.io = load i32, ptr %i.s, align 8, !tbaa !64  ; 3 uses
  %.not.i.i34 = icmp eq i32 %i.in, %i.io
  br i1 %.not.i.i34, label %_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit36, label %bb.bn

bb.bn:                                            ; preds = %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_112AlphanumericEEEvv.exit
  %i.ip = load ptr, ptr %i.q, align 8, !tbaa !63  ; 2 uses
  %i.iq = sub nsw i32 %i.in, %i.io
  %i.ir = sext i32 %i.iq to i64                   ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.it = load i64, ptr %i.is, align 8, !tbaa !49
  %i.iu = sub i64 4611686018427387903, %i.it
  %i.iv = icmp ult i64 %i.iu, %i.ir
  br i1 %i.iv, label %bb.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i35

bb.bo:                                            ; preds = %bb.bn
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i35: ; preds = %bb.bn
  %i.iw = load ptr, ptr %i.w, align 8, !tbaa !77
  %i.ix = sext i32 %i.io to i64
  %i.iy = getelementptr inbounds i8, ptr %i.iw, i64 %i.ix
  %i.iz = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ip, ptr noundef %i.iy, i64 noundef %i.ir) ; 0 uses
  br label %_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit36

_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit36: ; preds = %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_112AlphanumericEEEvv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i35
  store ptr null, ptr %i.q, align 8, !tbaa !63
  store i32 -1, ptr %i.s, align 8, !tbaa !64
  %i.ja = load i32, ptr %i.o, align 8, !tbaa !62
  store i32 %i.ja, ptr %i.z, align 8, !tbaa !69
  br label %.critedge2.thread

.critedge2:                                       ; preds = %.preheader, %bb.as, %bb.ar
  %i.jb = load i8, ptr %i.j, align 8, !tbaa !72
  %i.jc = trunc nuw i8 %i.jb to i1
  br i1 %i.jc, label %.critedge2.thread50, label %.critedge227.backedge

.critedge227.backedge:                            ; preds = %5, %.critedge2
  br label %bb.b

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ], [ %i.ih, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ]
  resume { ptr, i32 } %.pn.pn

.critedge2.thread50:                              ; preds = %.critedge2, %bb.at, %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_111UnprintableEEEbv.exit, %bb.a
  store i32 1, ptr %0, align 8, !tbaa !70
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.jd, align 8, !tbaa !49
  %i.je = load ptr, ptr %i.g, align 8, !tbaa !84
  store i8 0, ptr %i.je, align 1, !tbaa !50
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !62
  %i.ji = load <2 x i32>, ptr %i.jf, align 4, !tbaa !11
  store <2 x i32> %i.ji, ptr %i.i, align 8, !tbaa !11
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.jh, ptr %i.jj, align 8, !tbaa !69
  br label %.critedge2.thread

.critedge2.thread:                                ; preds = %bb.ap, %_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit, %_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit18, %_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit36, %.critedge2.thread50
  %.2 = phi i1 [ false, %.critedge2.thread50 ], [ true, %_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit36 ], [ true, %_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit18 ], [ true, %_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit ], [ true, %bb.ap ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io9Tokenizer16NextWithCommentsEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS8_SaIS8_EES9_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !147 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.google::protobuf::io::(anonymous namespace)::CommentCollector", align 8 ; 31 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %1, ptr %5, align 8, !tbaa !93
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %2, ptr %i.g, align 8, !tbaa !94
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %3, ptr %i.h, align 8, !tbaa !95
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 0, ptr %i.k, align 8, !tbaa !49
  store i8 0, ptr %i.j, align 8, !tbaa !50
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 63 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.l, i8 0, i64 7, i1 false)
  store i8 1, ptr %i.m, align 1, !tbaa !96
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !49
  %i.o = load ptr, ptr %1, align 8, !tbaa !84
  store i8 0, ptr %i.o, align 1, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not12.i = icmp eq ptr %2, null
  br i1 %.not12.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %2, align 8, !tbaa !98     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !99   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.p
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.p, %bb.d ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !84 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !50
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  store ptr %i.p, ptr %i.q, align 8, !tbaa !99
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.d, %bb.c
  %.not13.i = icmp eq ptr %3, null
  br i1 %.not13.i, label %_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollectorC2EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS9_SaIS9_EESA_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.y, align 8, !tbaa !49
  %i.z = load ptr, ptr %3, align 8, !tbaa !84
  store i8 0, ptr %i.z, align 1, !tbaa !50
  br label %_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollectorC2EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS9_SaIS9_EESA_.exit

_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollectorC2EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS9_SaIS9_EESA_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 5 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !61 ; 3 uses
  %i.ac = load i32, ptr %0, align 8, !tbaa !70
  %i.ad = icmp eq i32 %i.ac, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 10 uses
  br i1 %i.ad, label %bb.f, label %bb.n

bb.f:                                             ; preds = %_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollectorC2EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS9_SaIS9_EESA_.exit
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !75
  %i.ag = icmp eq i8 %i.af, -17
  br i1 %i.ag, label %bb.g, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.ah = load i8, ptr %i.ae, align 8, !tbaa !75
  %i.ai = icmp eq i8 %i.ah, -69
  br i1 %i.ai, label %bb.i, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit21

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.aj = load i8, ptr %i.ae, align 8, !tbaa !75
  %i.ak = icmp eq i8 %i.aj, -65
  br i1 %i.ak, label %bb.k, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit21

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit21: ; preds = %bb.j, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.al, ptr %6, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i64 85, ptr %i.f, align 8, !tbaa !87
  %i.am = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc24 unwind label %bb.l   ; 3 uses

.noexc24:                                         ; preds = %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit21
  store ptr %i.am, ptr %6, align 8, !tbaa !84
  %i.an = load i64, ptr %i.f, align 8, !tbaa !87  ; 3 uses
  store i64 %i.an, ptr %i.al, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(85) %i.am, ptr noundef nonnull align 1 dereferenceable(85) @.str.19, i64 85, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !49
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  store i8 0, ptr %i.ap, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !60 ; 2 uses
  %i.as = load i32, ptr %i.aa, align 4, !tbaa !61
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.au = load i32, ptr %i.at, align 8, !tbaa !62
  %i.av = load ptr, ptr %6, align 8, !tbaa !84
  %i.aw = load i64, ptr %i.ao, align 8, !tbaa !49
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !81
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  invoke void %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, i32 noundef %i.as, i32 noundef %i.au, i64 %i.aw, ptr %i.av)
          to label %_ZN6google8protobuf2io9Tokenizer8AddErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.m, !inline_history !1

_ZN6google8protobuf2io9Tokenizer8AddErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc24
  %i.ba = load ptr, ptr %6, align 8, !tbaa !84    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.al
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6google8protobuf2io9Tokenizer8AddErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bc = load i64, ptr %i.al, align 8, !tbaa !50
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6google8protobuf2io9Tokenizer8AddErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollector18MaybeDetachCommentEv.exit

bb.l:                                             ; preds = %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit21
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.m:                                             ; preds = %.noexc24
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %6, align 8, !tbaa !84    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.al
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.m
  %i.bi = load i64, ptr %i.al, align 8, !tbaa !50
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
end_hunk_1
