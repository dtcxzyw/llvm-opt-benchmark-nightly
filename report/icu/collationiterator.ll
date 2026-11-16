Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/collationiterator?download=true
inline.NumInlined: 227
inline.NumDeleted: 93
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6icu_787UMemorydlEPv
; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN6icu_7817CollationIteratorD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @llvm.trap() #18
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK6icu_7817CollationIteratoreqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(389) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(389) %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %1, align 8, !tbaa !21
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !100  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !100  ; 3 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i8, ptr %i.h, align 1, !tbaa !37
  %.not.i = icmp eq i8 %i.l, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread15, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.m = load i8, ptr %i.j, align 1, !tbaa !37
  %i.n = icmp eq i8 %i.m, 42
  %.idx.i.i = zext i1 %i.n to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i.i
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) %i.o) #20
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread15

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !31   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !31
  %i.v = icmp eq i32 %i.s, %i.u
  br i1 %i.v, label %bb.c, label %_ZNKSt9type_infoeqERKS_.exit.thread15

bb.c:                                             ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.x = load i32, ptr %i.w, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.z = load i32, ptr %i.y, align 8, !tbaa !27
  %i.aa = icmp eq i32 %i.x, %i.z
  br i1 %i.aa, label %bb.d, label %_ZNKSt9type_infoeqERKS_.exit.thread15

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !29
  %i.af = icmp eq i32 %i.ac, %i.ae
  br i1 %i.af, label %bb.e, label %_ZNKSt9type_infoeqERKS_.exit.thread15

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !30
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !30
  %i.ak = icmp eq i8 %i.ah, %i.aj
  br i1 %i.ak, label %.preheader, label %_ZNKSt9type_infoeqERKS_.exit.thread15

.preheader:                                       ; preds = %bb.e
  %i.al = icmp slt i32 %i.s, 1
  br i1 %i.al, label %_ZNKSt9type_infoeqERKS_.exit.thread15, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !13
  %wide.trip.count = zext nneg i32 %i.s to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !33
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv
  %i.at = load i64, ptr %i.as, align 8, !tbaa !33
  %.not = icmp eq i64 %i.ar, %i.at                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.f, label %_ZNKSt9type_infoeqERKS_.exit.thread15, !llvm.loop !98

_ZNKSt9type_infoeqERKS_.exit.thread15:            ; preds = %bb.f, %.preheader, %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread, %bb.c, %bb.d, %bb.e
  %.1 = phi i1 [ false, %_ZNKSt9type_infoeqERKS_.exit ], [ false, %bb.b ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ true, %.preheader ], [ %.not, %bb.f ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6icu_7817CollationIterator5resetEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(389) initializes((24, 28), (368, 372)) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.a, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i32 0, ptr %i.b, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !tbaa !37   ; 2 uses
  %i.g = and i16 %i.f, 1
  %.not.i.i = icmp eq i16 %i.g, 0
  %i.h = and i16 %i.f, 30
  %storemerge.i.i = select i1 %.not.i.i, i16 %i.h, i16 2
  store i16 %storemerge.i.i, ptr %i.e, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store i32 0, ptr %i.i, align 8, !tbaa !43
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_7817CollationIterator8fetchCEsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(389) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !18
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.e = tail call noundef i64 @_ZN6icu_7817CollationIterator6nextCEER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(389) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %.not3 = icmp eq i64 %i.e, 4311744768
  br i1 %.not3, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.c, align 8, !tbaa !31
  store i32 %i.f, ptr %i.d, align 8, !tbaa !27
  %i.g = load i32, ptr %1, align 4, !tbaa !18
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.critedge, label %bb.b, !llvm.loop !101

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !31
  ret i32 %i.j
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6icu_7817CollationIterator6nextCEER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(389) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 12 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !27   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !31   ; 7 uses
  %i.f = icmp slt i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.c, 1
  store i32 %i.g, ptr %i.b, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = sext i32 %i.c to i64
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.k = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !33
  br label %_ZN6icu_7817CollationIterator8CEBuffer9incLengthER10UErrorCode.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.m = icmp slt i32 %i.e, 40
  br i1 %i.m, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !14   ; 2 uses
  %.not.i.not.i = icmp slt i32 %i.e, %i.p
  br i1 %.not.i.not.i, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr %1, align 4, !tbaa !18
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %.preheader.i.i, label %_ZN6icu_7817CollationIterator8CEBuffer9incLengthER10UErrorCode.exit.thread

.preheader.i.i:                                   ; preds = %bb.e, %.preheader.i.i
  %.0.i.i = phi i32 [ %.1.i.i, %.preheader.i.i ], [ %i.p, %bb.e ] ; 3 uses
  %i.s = icmp slt i32 %.0.i.i, 1000
  %.1.v.i.i = select i1 %i.s, i32 2, i32 1
  %.1.i.i = shl nsw i32 %.0.i.i, %.1.v.i.i        ; 4 uses
  %.not.i = icmp sgt i32 %.1.i.i, %i.e
  br i1 %.not.i, label %bb.f, label %.preheader.i.i, !llvm.loop !0

bb.f:                                             ; preds = %.preheader.i.i
  %i.t = icmp sgt i32 %.0.i.i, 0
  br i1 %i.t, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.u = zext nneg i32 %.1.i.i to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.v) #19 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load i32, ptr %i.o, align 8, !tbaa !14
  %.1.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.x)
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !13   ; 2 uses
  %i.z = sext i32 %.1.i.i.i to i64
  %i.aa = shl nsw i64 %i.z, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %i.y, i64 %i.aa, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !12
  %.not.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i, label %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @uprv_free_78(ptr noundef %i.y)
  br label %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i

_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i: ; preds = %bb.i, %bb.h
  store ptr %i.w, ptr %i.n, align 8, !tbaa !13
  store i32 %.1.i.i, ptr %i.o, align 8, !tbaa !14
  store i8 1, ptr %i.ab, align 4, !tbaa !12
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !16
  br label %bb.k

bb.j:                                             ; preds = %bb.g, %bb.f
  store i32 7, ptr %1, align 4, !tbaa !18
  br label %_ZN6icu_7817CollationIterator8CEBuffer9incLengthER10UErrorCode.exit.thread

bb.k:                                             ; preds = %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i, %bb.d, %bb.c
  %i.ad = phi i32 [ %.pre.i, %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i ], [ %i.e, %bb.d ], [ %i.e, %bb.c ]
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.d, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.af = load ptr, ptr %0, align 8, !tbaa !21
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef i32 %i.ah(ptr noundef nonnull align 8 dereferenceable(389) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %1) ; 4 uses
  %i.aj = and i32 %i.ai, 255                      ; 4 uses
  %i.ak = icmp samesign ult i32 %i.aj, 192
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = load i32, ptr %i.b, align 8, !tbaa !27  ; 2 uses
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.b, align 8, !tbaa !27
  %i.an = and i32 %i.ai, -65536
  %i.ao = zext i32 %i.an to i64
  %i.ap = shl nuw i64 %i.ao, 32
  %i.aq = shl i32 %i.ai, 16
  %i.ar = and i32 %i.aq, -16777216
  %i.as = zext i32 %i.ar to i64
  %i.at = or disjoint i64 %i.ap, %i.as
  %i.au = shl nuw nsw i32 %i.aj, 8
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = or disjoint i64 %i.at, %i.av            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = sext i32 %i.al to i64
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !13
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ay
  store i64 %i.aw, ptr %i.ba, align 8, !tbaa !33
  br label %_ZN6icu_7817CollationIterator14nextCEFromCE32EPKNS_13CollationDataEijR10UErrorCode.exit

bb.m:                                             ; preds = %bb.k
  %i.bb = icmp eq i32 %i.aj, 192
  br i1 %i.bb, label %bb.n, label %bb.y

bb.n:                                             ; preds = %bb.m
  %i.bc = load i32, ptr %i.a, align 4, !tbaa !44  ; 13 uses
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.be = load i32, ptr %i.b, align 8, !tbaa !27  ; 2 uses
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.b, align 8, !tbaa !27
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bh = sext i32 %i.be to i64
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !13
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bh
  store i64 4311744768, ptr %i.bj, align 8, !tbaa !33
  br label %_ZN6icu_7817CollationIterator14nextCEFromCE32EPKNS_13CollationDataEijR10UErrorCode.exit

bb.p:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !45
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !51 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !52 ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !56
  %i.br = icmp samesign ult i32 %i.bc, 55296
  br i1 %i.br, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !57
  %i.bt = lshr i32 %i.bc, 5
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !58
  %i.bx = zext i16 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 2
  %i.bz = and i32 %i.bc, 31
  %i.ca = add nuw nsw i32 %i.by, %i.bz
  br label %_ZNK6icu_7813CollationData7getCE32Ei.exit

bb.r:                                             ; preds = %bb.p
  %i.cb = icmp samesign ult i32 %i.bc, 65536
  br i1 %i.cb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cc = load ptr, ptr %i.bo, align 8, !tbaa !57
  %i.cd = icmp samesign ult i32 %i.bc, 56320
  %i.ce = select i1 %i.cd, i32 320, i32 0
  %i.cf = lshr i32 %i.bc, 5
  %i.cg = add nuw nsw i32 %i.ce, %i.cf
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.ch
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !58
  %i.ck = zext i16 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 2
  %i.cm = and i32 %i.bc, 31
  %i.cn = add nuw nsw i32 %i.cl, %i.cm
  br label %_ZNK6icu_7813CollationData7getCE32Ei.exit

bb.t:                                             ; preds = %bb.r
  %i.co = icmp samesign ugt i32 %i.bc, 1114111
  br i1 %i.co, label %_ZNK6icu_7813CollationData7getCE32Ei.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bo, i64 44
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !59
  %.not.i30 = icmp slt i32 %i.bc, %i.cq
  br i1 %.not.i30, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !60
  br label %_ZNK6icu_7813CollationData7getCE32Ei.exit

bb.w:                                             ; preds = %bb.u
  %i.ct = load ptr, ptr %i.bo, align 8, !tbaa !57 ; 2 uses
  %i.cu = lshr i32 %i.bc, 11
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4160
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !58
  %i.cz = zext i16 %i.cy to i32
  %i.da = lshr i32 %i.bc, 5
  %i.db = and i32 %i.da, 63
  %i.dc = add nuw nsw i32 %i.db, %i.cz
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %i.dd
  %i.df = load i16, ptr %i.de, align 2, !tbaa !58
  %i.dg = zext i16 %i.df to i32
  %i.dh = shl nuw nsw i32 %i.dg, 2
  %i.di = and i32 %i.bc, 31
  %i.dj = add nuw nsw i32 %i.dh, %i.di
  br label %_ZNK6icu_7813CollationData7getCE32Ei.exit

_ZNK6icu_7813CollationData7getCE32Ei.exit:        ; preds = %bb.q, %bb.s, %bb.t, %bb.v, %bb.w
  %i.dk = phi i32 [ %i.ca, %bb.q ], [ %i.cn, %bb.s ], [ 128, %bb.t ], [ %i.cs, %bb.v ], [ %i.dj, %bb.w ]
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !44 ; 4 uses
  %i.do = and i32 %i.dn, 255                      ; 3 uses
  %i.dp = icmp samesign ult i32 %i.do, 192
  br i1 %i.dp, label %bb.x, label %bb.z

bb.x:                                             ; preds = %_ZNK6icu_7813CollationData7getCE32Ei.exit
  %i.dq = load i32, ptr %i.b, align 8, !tbaa !27  ; 2 uses
  %i.dr = add nsw i32 %i.dq, 1
  store i32 %i.dr, ptr %i.b, align 8, !tbaa !27
  %i.ds = and i32 %i.dn, -65536
  %i.dt = zext i32 %i.ds to i64
  %i.du = shl nuw i64 %i.dt, 32
  %i.dv = shl i32 %i.dn, 16
  %i.dw = and i32 %i.dv, -16777216
  %i.dx = zext i32 %i.dw to i64
  %i.dy = or disjoint i64 %i.du, %i.dx
  %i.dz = shl nuw nsw i32 %i.do, 8
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = or disjoint i64 %i.dy, %i.ea            ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ed = sext i32 %i.dq to i64
  %i.ee = load ptr, ptr %i.ec, align 8, !tbaa !13
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ed
  store i64 %i.eb, ptr %i.ef, align 8, !tbaa !33
  br label %_ZN6icu_7817CollationIterator14nextCEFromCE32EPKNS_13CollationDataEijR10UErrorCode.exit

bb.y:                                             ; preds = %bb.m
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !45
  br label %bb.z

bb.z:                                             ; preds = %_ZNK6icu_7813CollationData7getCE32Ei.exit, %bb.y
  %.022 = phi i32 [ %i.dn, %_ZNK6icu_7813CollationData7getCE32Ei.exit ], [ %i.ai, %bb.y ] ; 2 uses
  %.021 = phi i32 [ %i.do, %_ZNK6icu_7813CollationData7getCE32Ei.exit ], [ %i.aj, %bb.y ]
  %.0 = phi ptr [ %i.bn, %_ZNK6icu_7813CollationData7getCE32Ei.exit ], [ %i.eh, %bb.y ]
  %i.ei = icmp eq i32 %.021, 193
  br i1 %i.ei, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ej = load i32, ptr %i.b, align 8, !tbaa !27  ; 2 uses
  %i.ek = add nsw i32 %i.ej, 1
end_hunk_0
begin_hunk_1_@_ZNK6icu_7817CollationIterator11getDataCE32Ei:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.f = icmp ult i32 %1, 55296
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.h = lshr i32 %1, 5
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2, !tbaa !58
  %i.l = zext i16 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 2
  %i.n = and i32 %1, 31
  %i.o = add nuw nsw i32 %i.m, %i.n
  br label %_ZNK6icu_7813CollationData7getCE32Ei.exit

bb.c:                                             ; preds = %bb.a
  %i.p = icmp ult i32 %1, 65536
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.r = icmp samesign ult i32 %1, 56320
  %i.s = select i1 %i.r, i32 320, i32 0
  %i.t = lshr i32 %1, 5
  %i.u = add nuw nsw i32 %i.s, %i.t
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !58
  %i.y = zext i16 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 2
  %i.aa = and i32 %1, 31
  %i.ab = add nuw nsw i32 %i.z, %i.aa
  br label %_ZNK6icu_7813CollationData7getCE32Ei.exit

bb.e:                                             ; preds = %bb.c
  %i.ac = icmp ugt i32 %1, 1114111
  br i1 %i.ac, label %_ZNK6icu_7813CollationData7getCE32Ei.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !59
  %.not.i = icmp slt i32 %1, %i.ae
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !60
  br label %_ZNK6icu_7813CollationData7getCE32Ei.exit

bb.h:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !57  ; 2 uses
  %i.ai = lshr i32 %1, 11
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4160
  %i.am = load i16, ptr %i.al, align 2, !tbaa !58
  %i.an = zext i16 %i.am to i32
  %i.ao = lshr i32 %1, 5
  %i.ap = and i32 %i.ao, 63
  %i.aq = add nuw nsw i32 %i.ap, %i.an
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !58
  %i.au = zext i16 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 2
  %i.aw = and i32 %1, 31
  %i.ax = add nuw nsw i32 %i.av, %i.aw
  br label %_ZNK6icu_7813CollationData7getCE32Ei.exit

_ZNK6icu_7813CollationData7getCE32Ei.exit:        ; preds = %bb.b, %bb.d, %bb.e, %bb.g, %bb.h
  %i.ay = phi i32 [ %i.o, %bb.b ], [ %i.ab, %bb.d ], [ 128, %bb.e ], [ %i.ag, %bb.g ], [ %i.ax, %bb.h ]
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !44
  ret i32 %i.bb
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i32 @_ZN6icu_7817CollationIterator22getCE32FromBuilderDataEjR10UErrorCode(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) unnamed_addr #10 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !18
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 5, ptr %2, align 4, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6icu_7817CollationIterator14nextCEFromCE32EPKNS_13CollationDataEijR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(389) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31
  %i.c = add nsw i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !31
  tail call void @_ZN6icu_7817CollationIterator17appendCEsFromCE32EPKNS_13CollationDataEijaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(389) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef signext 1, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %i.d = load i32, ptr %4, align 4, !tbaa !18
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !27   ; 2 uses
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = sext i32 %i.g to i64
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !13
  %i.l = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load i64, ptr %i.l, align 8, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.m, %bb.b ], [ 1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7817CollationIterator17appendCEsFromCE32EPKNS_13CollationDataEijaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(389) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = and i32 %3, 192
  %.not364 = icmp eq i32 %i.a, 192
  br i1 %.not364, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not150 = icmp eq i8 %4, 0                     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit.thread
  %.0127368 = phi ptr [ %1, %.lr.ph ], [ %.2129, %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit.thread ] ; 31 uses
  %.0130366 = phi i32 [ %2, %.lr.ph ], [ %.3, %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit.thread ] ; 32 uses
  %.0133365 = phi i32 [ %3, %.lr.ph ], [ %.5, %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit.thread ] ; 22 uses
  %i.f = and i32 %.0133365, 15
  switch i32 %i.f, label %default.unreachable493 [
    i32 0, label %bb.c
    i32 3, label %bb.c
    i32 1, label %bb.e
    i32 2, label %bb.m
    i32 4, label %bb.u
    i32 5, label %bb.ad
    i32 6, label %bb.aq
    i32 7, label %bb.az
    i32 8, label %bb.bj
    i32 9, label %bb.bl
    i32 10, label %bb.ci
    i32 11, label %bb.cl
    i32 12, label %bb.cw
    i32 13, label %bb.ds
    i32 14, label %bb.ea
    i32 15, label %bb.ei
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.g = load i32, ptr %5, align 4, !tbaa !18
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 5, ptr %5, align 4, !tbaa !18
  br label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = and i32 %.0133365, -256
  %i.k = zext i32 %i.j to i64
  %i.l = shl nuw i64 %i.k, 32
  %i.m = or disjoint i64 %i.l, 83887360
  %i.n = load i32, ptr %i.i, align 8, !tbaa !16   ; 6 uses
  %i.o = icmp slt i32 %i.n, 40
  br i1 %i.o, label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !14   ; 2 uses
  %.not.i.not.i = icmp slt i32 %i.n, %i.r
  br i1 %.not.i.not.i, label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %5, align 4, !tbaa !18
  %i.t = icmp slt i32 %i.s, 1
  br i1 %i.t, label %.preheader.i.i, label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit

.preheader.i.i:                                   ; preds = %bb.g, %.preheader.i.i
  %.0.i.i = phi i32 [ %.1.i.i, %.preheader.i.i ], [ %i.r, %bb.g ] ; 3 uses
  %i.u = icmp slt i32 %.0.i.i, 1000
  %.1.v.i.i = select i1 %i.u, i32 2, i32 1
  %.1.i.i = shl nsw i32 %.0.i.i, %.1.v.i.i        ; 4 uses
  %.not.i = icmp sgt i32 %.1.i.i, %i.n
  br i1 %.not.i, label %bb.h, label %.preheader.i.i, !llvm.loop !0

bb.h:                                             ; preds = %.preheader.i.i
  %i.v = icmp sgt i32 %.0.i.i, 0
  br i1 %i.v, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.w = zext nneg i32 %.1.i.i to i64
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.x) #19 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = load i32, ptr %i.q, align 8, !tbaa !14
  %.1.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %i.z)
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !13  ; 2 uses
  %i.ab = sext i32 %.1.i.i.i to i64
  %i.ac = shl nsw i64 %i.ab, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.aa, i64 %i.ac, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !12
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @uprv_free_78(ptr noundef %i.aa)
  br label %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i

_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i: ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.p, align 8, !tbaa !13
  store i32 %.1.i.i, ptr %i.q, align 8, !tbaa !14
  store i8 1, ptr %i.ad, align 4, !tbaa !12
  %.pre.i = load i32, ptr %i.i, align 8, !tbaa !16
  br label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i

bb.l:                                             ; preds = %bb.i, %bb.h
  store i32 7, ptr %5, align 4, !tbaa !18
  br label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit

_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i: ; preds = %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i, %bb.f, %bb.e
  %i.af = phi i32 [ %.pre.i, %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i ], [ %i.n, %bb.f ], [ %i.n, %bb.e ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = add nsw i32 %i.af, 1
  store i32 %i.ah, ptr %i.i, align 8, !tbaa !16
  %i.ai = sext i32 %i.af to i64
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !13
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ai
  store i64 %i.m, ptr %i.ak, align 8, !tbaa !33
  br label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit

bb.m:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.am = and i32 %.0133365, -256
  %i.an = zext i32 %i.am to i64
  %i.ao = load i32, ptr %i.al, align 8, !tbaa !16 ; 6 uses
  %i.ap = icmp slt i32 %i.ao, 40
  br i1 %i.ap, label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i177, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !14 ; 2 uses
  %.not.i.not.i165 = icmp slt i32 %i.ao, %i.as
  br i1 %.not.i.not.i165, label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i177, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = load i32, ptr %5, align 4, !tbaa !18
  %i.au = icmp slt i32 %i.at, 1
  br i1 %i.au, label %.preheader.i.i166, label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit

.preheader.i.i166:                                ; preds = %bb.o, %.preheader.i.i166
  %.0.i.i167 = phi i32 [ %.1.i.i169, %.preheader.i.i166 ], [ %i.as, %bb.o ] ; 3 uses
  %i.av = icmp slt i32 %.0.i.i167, 1000
  %.1.v.i.i168 = select i1 %i.av, i32 2, i32 1
  %.1.i.i169 = shl nsw i32 %.0.i.i167, %.1.v.i.i168 ; 4 uses
  %.not.i170 = icmp sgt i32 %.1.i.i169, %i.ao
  br i1 %.not.i170, label %bb.p, label %.preheader.i.i166, !llvm.loop !0

bb.p:                                             ; preds = %.preheader.i.i166
  %i.aw = icmp sgt i32 %.0.i.i167, 0
  br i1 %i.aw, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ax = zext nneg i32 %.1.i.i169 to i64
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.ay) #19 ; 3 uses
  %.not.i.i.i171 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i171, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = load i32, ptr %i.ar, align 8, !tbaa !14
  %.1.i.i.i173 = tail call i32 @llvm.smin.i32(i32 %i.ao, i32 %i.ba)
  %i.bb = load ptr, ptr %i.aq, align 8, !tbaa !13 ; 2 uses
  %i.bc = sext i32 %.1.i.i.i173 to i64
  %i.bd = shl nsw i64 %i.bc, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.az, ptr align 8 %i.bb, i64 %i.bd, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !12
  %.not.i.i.i.i174 = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i.i174, label %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i175, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @uprv_free_78(ptr noundef %i.bb)
  br label %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i175

_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i175: ; preds = %bb.s, %bb.r
  store ptr %i.az, ptr %i.aq, align 8, !tbaa !13
  store i32 %.1.i.i169, ptr %i.ar, align 8, !tbaa !14
  store i8 1, ptr %i.be, align 4, !tbaa !12
  %.pre.i176 = load i32, ptr %i.al, align 8, !tbaa !16
  br label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i177

bb.t:                                             ; preds = %bb.q, %bb.p
  store i32 7, ptr %5, align 4, !tbaa !18
  br label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit

_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i177: ; preds = %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i175, %bb.n, %bb.m
  %i.bg = phi i32 [ %.pre.i176, %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i175 ], [ %i.ao, %bb.n ], [ %i.ao, %bb.m ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bi = add nsw i32 %i.bg, 1
  store i32 %i.bi, ptr %i.al, align 8, !tbaa !16
  %i.bj = sext i32 %i.bg to i64
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !13
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bj
  store i64 %i.an, ptr %i.bl, align 8, !tbaa !33
  br label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit

bb.u:                                             ; preds = %bb.b
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !14 ; 2 uses
  %i.bq = load i32, ptr %i.bm, align 8, !tbaa !16 ; 4 uses
  %i.br = add nsw i32 %i.bq, 2                    ; 3 uses
  %.not.i179 = icmp sgt i32 %i.br, %i.bp
  br i1 %.not.i179, label %bb.v, label %._ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit_crit_edge

._ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit_crit_edge: ; preds = %bb.u
  %.pre426 = load ptr, ptr %i.bn, align 8, !tbaa !13
  br label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit

bb.v:                                             ; preds = %bb.u
  %i.bs = load i32, ptr %5, align 4, !tbaa !18
  %i.bt = icmp slt i32 %i.bs, 1
  br i1 %i.bt, label %.preheader.i, label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit

.preheader.i:                                     ; preds = %bb.v, %.preheader.i
  %.0.i = phi i32 [ %.1.i, %.preheader.i ], [ %i.bp, %bb.v ] ; 3 uses
  %i.bu = icmp slt i32 %.0.i, 1000
  %.1.v.i = select i1 %i.bu, i32 2, i32 1
  %.1.i = shl nsw i32 %.0.i, %.1.v.i              ; 4 uses
  %i.bv = icmp slt i32 %.1.i, %i.br
  br i1 %i.bv, label %.preheader.i, label %bb.w, !llvm.loop !0

bb.w:                                             ; preds = %.preheader.i
  %i.bw = icmp sgt i32 %.0.i, 0
  br i1 %i.bw, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.bx = zext nneg i32 %.1.i to i64
  %i.by = shl nuw nsw i64 %i.bx, 3
  %i.bz = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.by) #19 ; 4 uses
  %.not.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ca = icmp sgt i32 %i.bq, 0
  br i1 %i.ca, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cb = load i32, ptr %i.bo, align 8, !tbaa !14
  %.1.i.i181 = tail call i32 @llvm.smin.i32(i32 %i.bq, i32 %i.cb)
  %i.cc = load ptr, ptr %i.bn, align 8, !tbaa !13
  %i.cd = sext i32 %.1.i.i181 to i64
  %i.ce = shl nsw i64 %i.cd, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bz, ptr align 8 %i.cc, i64 %i.ce, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 4, !tbaa !12
  %.not.i.i.i180 = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i180, label %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ch = load ptr, ptr %i.bn, align 8, !tbaa !13
  tail call void @uprv_free_78(ptr noundef %i.ch)
  br label %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i

_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i: ; preds = %bb.ab, %bb.aa
  store ptr %i.bz, ptr %i.bn, align 8, !tbaa !13
  store i32 %.1.i, ptr %i.bo, align 8, !tbaa !14
  store i8 1, ptr %i.cf, align 4, !tbaa !12
  %.pre425 = load i32, ptr %i.bm, align 8, !tbaa !31 ; 2 uses
  %.pre427 = add nsw i32 %.pre425, 2
  br label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit

bb.ac:                                            ; preds = %bb.x, %bb.w
  store i32 7, ptr %5, align 4, !tbaa !18
  br label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit

_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit: ; preds = %._ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit_crit_edge, %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i
  %.pre-phi = phi i32 [ %i.br, %._ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit_crit_edge ], [ %.pre427, %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i ]
  %i.ci = phi ptr [ %.pre426, %._ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit_crit_edge ], [ %i.bz, %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i ]
  %i.cj = phi i32 [ %i.bq, %._ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit_crit_edge ], [ %.pre425, %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i ]
  %i.ck = and i32 %.0133365, -16777216
  %i.cl = zext i32 %i.ck to i64
  %i.cm = shl nuw i64 %i.cl, 32
  %i.cn = lshr i32 %.0133365, 8
  %i.co = and i32 %i.cn, 65280
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = or disjoint i64 %i.cm, %i.cp
  %i.cr = or disjoint i64 %i.cq, 83886080
  %i.cs = sext i32 %i.cj to i64
  %i.ct = getelementptr [8 x i8], ptr %i.ci, i64 %i.cs ; 2 uses
  store i64 %i.cr, ptr %i.ct, align 8, !tbaa !33
  %i.cu = shl i32 %.0133365, 16
  %i.cv = and i32 %i.cu, -16777216
  %i.cw = or disjoint i32 %i.cv, 1280
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr i8, ptr %i.ct, i64 8
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !33
  store i32 %.pre-phi, ptr %i.bm, align 8, !tbaa !31
  br label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit

bb.ad:                                            ; preds = %bb.b
  %i.cz = getelementptr inbounds nuw i8, ptr %.0127368, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !106
  %i.db = lshr i32 %.0133365, 13
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.dc
  %i.de = lshr i32 %.0133365, 8
  %i.df = and i32 %i.de, 31                       ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !14 ; 2 uses
  %i.dk = load i32, ptr %i.dg, align 8, !tbaa !16 ; 4 uses
  %i.dl = add nsw i32 %i.dk, %i.df                ; 2 uses
  %.not.i182 = icmp sgt i32 %i.dl, %i.dj
  br i1 %.not.i182, label %bb.ae, label %._ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit193_crit_edge

._ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit193_crit_edge: ; preds = %bb.ad
  %.pre423 = load ptr, ptr %i.dh, align 8, !tbaa !13
  br label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit193

bb.ae:                                            ; preds = %bb.ad
  %i.dm = load i32, ptr %5, align 4, !tbaa !18
  %i.dn = icmp slt i32 %i.dm, 1
  br i1 %i.dn, label %.preheader.i184, label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit

.preheader.i184:                                  ; preds = %bb.ae, %.preheader.i184
  %.0.i185 = phi i32 [ %.1.i187, %.preheader.i184 ], [ %i.dj, %bb.ae ] ; 3 uses
  %i.do = icmp slt i32 %.0.i185, 1000
  %.1.v.i186 = select i1 %i.do, i32 2, i32 1
  %.1.i187 = shl nsw i32 %.0.i185, %.1.v.i186     ; 5 uses
  %i.dp = icmp slt i32 %.1.i187, %i.dl
  br i1 %i.dp, label %.preheader.i184, label %bb.af, !llvm.loop !0

bb.af:                                            ; preds = %.preheader.i184
  %i.dq = icmp sgt i32 %.0.i185, 0
  br i1 %i.dq, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.dr = zext nneg i32 %.1.i187 to i64
  %i.ds = shl nuw nsw i64 %i.dr, 3
  %i.dt = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.ds) #19 ; 4 uses
  %.not.i.i188 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i188, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.du = icmp sgt i32 %i.dk, 0
  br i1 %i.du, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dv = load i32, ptr %i.di, align 8, !tbaa !14
  %spec.select.i.i191 = tail call i32 @llvm.smin.i32(i32 %i.dk, i32 %i.dv)
  %.1.i.i192 = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i191, i32 %.1.i187)
  %i.dw = load ptr, ptr %i.dh, align 8, !tbaa !13
  %i.dx = sext i32 %.1.i.i192 to i64
  %i.dy = shl nsw i64 %i.dx, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dt, ptr align 8 %i.dw, i64 %i.dy, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 4, !tbaa !12
  %.not.i.i.i189 = icmp eq i8 %i.ea, 0
  br i1 %.not.i.i.i189, label %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i190, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eb = load ptr, ptr %i.dh, align 8, !tbaa !13
  tail call void @uprv_free_78(ptr noundef %i.eb)
  br label %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i190

_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i190: ; preds = %bb.ak, %bb.aj
  store ptr %i.dt, ptr %i.dh, align 8, !tbaa !13
  store i32 %.1.i187, ptr %i.di, align 8, !tbaa !14
  store i8 1, ptr %i.dz, align 4, !tbaa !12
  %.promoted371.pre = load i32, ptr %i.dg, align 8, !tbaa !16
  br label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit193

bb.al:                                            ; preds = %bb.ag, %bb.af
  store i32 7, ptr %5, align 4, !tbaa !18
  br label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit

_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit193: ; preds = %._ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit193_crit_edge, %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i190
  %.promoted371 = phi i32 [ %i.dk, %._ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit193_crit_edge ], [ %.promoted371.pre, %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i190 ]
  %i.ec = phi ptr [ %.pre423, %._ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit193_crit_edge ], [ %i.dt, %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i190 ]
  %i.ed = sext i32 %.promoted371 to i64
  br label %bb.am

bb.am:                                            ; preds = %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit193, %_ZN6icu_789Collation10ceFromCE32Ej.exit
  %indvars.iv417 = phi i64 [ %i.ed, %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit193 ], [ %indvars.iv.next418, %_ZN6icu_789Collation10ceFromCE32Ej.exit ] ; 2 uses
  %.0126 = phi ptr [ %i.dd, %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit193 ], [ %i.ee, %_ZN6icu_789Collation10ceFromCE32Ej.exit ] ; 2 uses
  %.0125 = phi i32 [ %i.df, %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit193 ], [ %i.fa, %_ZN6icu_789Collation10ceFromCE32Ej.exit ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.0126, i64 4
  %i.ef = load i32, ptr %.0126, align 4, !tbaa !44 ; 5 uses
  %i.eg = and i32 %i.ef, 255                      ; 2 uses
  %i.eh = icmp samesign ult i32 %i.eg, 192
  br i1 %i.eh, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ei = and i32 %i.ef, -65536
  %i.ej = zext i32 %i.ei to i64
  %i.ek = shl nuw i64 %i.ej, 32
  %i.el = shl i32 %i.ef, 16
  %i.em = and i32 %i.el, -16777216
  %i.en = zext i32 %i.em to i64
  %i.eo = or disjoint i64 %i.ek, %i.en
  %i.ep = shl nuw nsw i32 %i.eg, 8
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = or disjoint i64 %i.eo, %i.eq
  br label %_ZN6icu_789Collation10ceFromCE32Ej.exit

bb.ao:                                            ; preds = %bb.am
  %i.es = and i32 %i.ef, -256
  %i.et = and i32 %i.ef, 15
  %i.eu = icmp eq i32 %i.et, 1
  %i.ev = zext i32 %i.es to i64                   ; 2 uses
  br i1 %i.eu, label %bb.ap, label %_ZN6icu_789Collation10ceFromCE32Ej.exit

bb.ap:                                            ; preds = %bb.ao
  %i.ew = shl nuw i64 %i.ev, 32
  %i.ex = or disjoint i64 %i.ew, 83887360
  br label %_ZN6icu_789Collation10ceFromCE32Ej.exit

_ZN6icu_789Collation10ceFromCE32Ej.exit:          ; preds = %bb.an, %bb.ao, %bb.ap
  %.0.i194 = phi i64 [ %i.er, %bb.an ], [ %i.ex, %bb.ap ], [ %i.ev, %bb.ao ]
  %indvars.iv.next418 = add nsw i64 %indvars.iv417, 1 ; 2 uses
  %i.ey = trunc nsw i64 %indvars.iv.next418 to i32
  store i32 %i.ey, ptr %i.dg, align 8, !tbaa !16
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %indvars.iv417
  store i64 %.0.i194, ptr %i.ez, align 8, !tbaa !33
  %i.fa = add nsw i32 %.0125, -1
  %i.fb = icmp sgt i32 %.0125, 1
  br i1 %i.fb, label %bb.am, label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit, !llvm.loop !102

bb.aq:                                            ; preds = %bb.b
  %i.fc = getelementptr inbounds nuw i8, ptr %.0127368, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !107 ; 2 uses
  %i.fe = ptrtoaddr ptr %i.fd to i64
  %i.ff = lshr i32 %.0133365, 13
  %i.fg = zext nneg i32 %i.ff to i64              ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fg ; 4 uses
  %i.fi = lshr i32 %.0133365, 8
  %i.fj = and i32 %i.fi, 31                       ; 6 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !14 ; 2 uses
  %i.fo = load i32, ptr %i.fk, align 8, !tbaa !16 ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN6icu_7817CollationIterator17appendCEsFromCE32EPKNS_13CollationDataEijaR10UErrorCode:bb.a
bb.bt:                                            ; preds = %bb.bs
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.lx = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.lw, i32 noundef %i.ln) ; 2 uses
  %i.ly = icmp ult i32 %i.lx, 65536
  %i.lz = select i1 %i.ly, i32 1, i32 2
  %i.ma = load i32, ptr %i.lm, align 8, !tbaa !43
  %i.mb = add nsw i32 %i.lz, %i.ma
  store i32 %i.mb, ptr %i.lm, align 8, !tbaa !43
  br label %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit

.thread305:                                       ; preds = %..thread305_crit_edge, %bb.bn
  %i.mc = phi i32 [ %.pre420, %..thread305_crit_edge ], [ %i.km, %bb.bn ]
  %i.md = icmp eq i32 %i.mc, 0
  br i1 %i.md, label %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit.thread, label %bb.bu

bb.bu:                                            ; preds = %.thread305
  %i.me = load ptr, ptr %0, align 8, !tbaa !21
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 48
  %i.mg = load ptr, ptr %i.mf, align 8
  %i.mh = tail call noundef i32 %i.mg(ptr noundef nonnull align 8 dereferenceable(389) %0, ptr noundef nonnull align 4 dereferenceable(4) %5), !inline_history !64 ; 4 uses
  %i.mi = load ptr, ptr %i.c, align 8, !tbaa !28  ; 3 uses
  %.not12.i = icmp eq ptr %i.mi, null
  br i1 %.not12.i, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  %i.mk = load i16, ptr %i.mj, align 8, !tbaa !37
  %i.ml = icmp ugt i16 %i.mk, 31
  %i.mm = icmp sgt i32 %i.mh, -1
  %or.cond.i = and i1 %i.mm, %i.ml
  br i1 %or.cond.i, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mi, i64 136 ; 2 uses
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !43
  %i.mp = add nsw i32 %i.mo, 1
  store i32 %i.mp, ptr %i.mn, align 8, !tbaa !43
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.bu
  %i.mq = load i32, ptr %i.d, align 8, !tbaa !29  ; 2 uses
  %i.mr = icmp sgt i32 %i.mq, 0
  %i.ms = icmp sgt i32 %i.mh, -1
  %or.cond3.i = and i1 %i.ms, %i.mr
  br i1 %or.cond3.i, label %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit.thread307, label %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit

_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit.thread307: ; preds = %bb.bx
  %i.mt = add nsw i32 %i.mq, -1
  store i32 %i.mt, ptr %i.d, align 8, !tbaa !29
  br label %bb.by

_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit: ; preds = %bb.bt, %bb.bx
  %.0.i211.a = phi i32 [ %i.lx, %bb.bt ], [ %i.mh, %bb.bx ] ; 2 uses
  %i.mu = icmp slt i32 %.0.i211.a, 0
  br i1 %i.mu, label %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit.thread, label %bb.by

bb.by:                                            ; preds = %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit.thread307, %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit
  %.0.i211309 = phi i32 [ %i.mh, %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit.thread307 ], [ %.0.i211.a, %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit ] ; 6 uses
  %i.mv = and i32 %.0133365, 512
  %.not154 = icmp eq i32 %i.mv, 0
  br i1 %.not154, label %bb.ch, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.mw = icmp samesign ult i32 %.0.i211309, 768
  br i1 %i.mw, label %_ZN6icu_7812CollationFCD11mayHaveLcccEi.exit215.thread, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.mx = icmp samesign ugt i32 %.0.i211309, 65535
  %i.my = lshr i32 %.0.i211309, 10
  %i.mz = add nuw nsw i32 %i.my, 55232
  %i.na = and i32 %i.mz, 65535
  %.0.i212 = select i1 %i.mx, i32 %i.na, i32 %.0.i211309 ; 2 uses
  %i.nb = lshr i32 %.0.i212, 5
  %i.nc = zext nneg i32 %i.nb to i64
  %i.nd = getelementptr inbounds nuw i8, ptr @_ZN6icu_7812CollationFCD9lcccIndexE, i64 %i.nc
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !37  ; 2 uses
  %.not.i213 = icmp eq i8 %i.ne, 0
  br i1 %.not.i213, label %_ZN6icu_7812CollationFCD11mayHaveLcccEi.exit215.thread, label %_ZN6icu_7812CollationFCD11mayHaveLcccEi.exit215

_ZN6icu_7812CollationFCD11mayHaveLcccEi.exit215:  ; preds = %bb.ca
  %i.nf = zext i8 %i.ne to i64
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr @_ZN6icu_7812CollationFCD8lcccBitsE, i64 %i.nf
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !44
  %i.ni = and i32 %.0.i212, 31
  %i.nj = shl nuw i32 1, %i.ni
  %i.nk = and i32 %i.nh, %i.nj
  %.not155 = icmp eq i32 %i.nk, 0
  br i1 %.not155, label %_ZN6icu_7812CollationFCD11mayHaveLcccEi.exit215.thread, label %bb.ch

_ZN6icu_7812CollationFCD11mayHaveLcccEi.exit215.thread: ; preds = %bb.ca, %bb.bz, %_ZN6icu_7812CollationFCD11mayHaveLcccEi.exit215
  %i.nl = load ptr, ptr %i.c, align 8, !tbaa !28  ; 5 uses
  %.not.i216 = icmp eq ptr %i.nl, null
  br i1 %.not.i216, label %bb.cf, label %bb.cb

bb.cb:                                            ; preds = %_ZN6icu_7812CollationFCD11mayHaveLcccEi.exit215.thread
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  %i.nn = load i16, ptr %i.nm, align 8, !tbaa !37 ; 3 uses
  %i.no = icmp ugt i16 %i.nn, 31
  br i1 %i.no, label %bb.cc, label %bb.cf

bb.cc:                                            ; preds = %bb.cb
  %i.np = icmp slt i16 %i.nn, 0
  %i.nq = ashr i16 %i.nn, 5
  %i.nr = sext i16 %i.nq to i32
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nl, i64 20
  %i.nt = load i32, ptr %i.ns, align 4
  %i.nu = select i1 %i.np, i32 %i.nt, i32 %i.nr
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nl, i64 136 ; 2 uses
  %i.nw = load i32, ptr %i.nv, align 8, !tbaa !43 ; 3 uses
  %i.nx = icmp sgt i32 %i.nw, %i.nu
  br i1 %i.nx, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.ny = add nsw i32 %i.nw, -1
  br label %_ZN6icu_7812SkippedState21backwardNumCodePointsEi.exit.i

bb.ce:                                            ; preds = %bb.cc
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.oa = tail call noundef i32 @_ZNK6icu_7813UnicodeString11moveIndex32Eii(ptr noundef nonnull align 8 dereferenceable(64) %i.nz, i32 noundef %i.nw, i32 noundef -1)
  br label %_ZN6icu_7812SkippedState21backwardNumCodePointsEi.exit.i

_ZN6icu_7812SkippedState21backwardNumCodePointsEi.exit.i: ; preds = %bb.ce, %bb.cd
  %.sink.i.i = phi i32 [ %i.oa, %bb.ce ], [ %i.ny, %bb.cd ]
  %.0.i.i218 = phi i32 [ 0, %bb.ce ], [ 1, %bb.cd ]
  store i32 %.sink.i.i, ptr %i.nv, align 8, !tbaa !43
  br label %bb.cf

bb.cf:                                            ; preds = %_ZN6icu_7812SkippedState21backwardNumCodePointsEi.exit.i, %bb.cb, %_ZN6icu_7812CollationFCD11mayHaveLcccEi.exit215.thread
  %.0.i217 = phi i32 [ 1, %bb.cb ], [ %.0.i.i218, %_ZN6icu_7812SkippedState21backwardNumCodePointsEi.exit.i ], [ 1, %_ZN6icu_7812CollationFCD11mayHaveLcccEi.exit215.thread ] ; 2 uses
  %i.ob = load ptr, ptr %0, align 8, !tbaa !21
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 104
  %i.od = load ptr, ptr %i.oc, align 8
  tail call void %i.od(ptr noundef nonnull align 8 dereferenceable(389) %0, i32 noundef %.0.i217, ptr noundef nonnull align 4 dereferenceable(4) %5), !inline_history !65
  %i.oe = load i32, ptr %i.d, align 8, !tbaa !29  ; 2 uses
  %i.of = icmp sgt i32 %i.oe, -1
  br i1 %i.of, label %bb.cg, label %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit.thread

bb.cg:                                            ; preds = %bb.cf
  %i.og = add nuw nsw i32 %i.oe, %.0.i217
  store i32 %i.og, ptr %i.d, align 8, !tbaa !29
  br label %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit.thread

bb.ch:                                            ; preds = %_ZN6icu_7812CollationFCD11mayHaveLcccEi.exit215, %bb.by, %_ZN6icu_7812CollationFCD11mayHaveLcccEi.exit, %bb.bp
  %.0 = phi i32 [ %i.kr, %_ZN6icu_7812CollationFCD11mayHaveLcccEi.exit ], [ %i.kr, %bb.bp ], [ %.0.i211309, %_ZN6icu_7812CollationFCD11mayHaveLcccEi.exit215 ], [ %.0.i211309, %bb.by ]
  %i.oh = getelementptr inbounds nuw i8, ptr %i.kc, i64 4
  %i.oi = tail call noundef i32 @_ZN6icu_7817CollationIterator23nextCE32FromContractionEPKNS_13CollationDataEjPKDsjiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(389) %0, ptr noundef nonnull %.0127368, i32 noundef %.0133365, ptr noundef nonnull %i.oh, i32 noundef %i.kj, i32 noundef %.0, ptr noundef nonnull align 4 dereferenceable(4) %5) ; 2 uses
  %i.oj = icmp eq i32 %i.oi, 1
  br i1 %i.oj, label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit, label %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit.thread

bb.ci:                                            ; preds = %bb.b
  %i.ok = load i8, ptr %i.b, align 4, !tbaa !30
  %.not152 = icmp eq i8 %i.ok, 0
  br i1 %.not152, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  tail call void @_ZN6icu_7817CollationIterator16appendNumericCEsEjaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(389) %0, i32 noundef %.0133365, i8 noundef signext %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  br label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit

bb.ck:                                            ; preds = %bb.ci
  %i.ol = getelementptr inbounds nuw i8, ptr %.0127368, i64 8
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !106
  %i.on = lshr i32 %.0133365, 13
  %i.oo = zext nneg i32 %i.on to i64
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %i.oo
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !44
  br label %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit.thread

bb.cl:                                            ; preds = %bb.b
  br i1 %.not150, label %bb.cv, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.or = load ptr, ptr %0, align 8, !tbaa !21
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 80
  %i.ot = load ptr, ptr %i.os, align 8
  %i.ou = tail call noundef signext i8 %i.ot(ptr noundef nonnull align 8 dereferenceable(389) %0)
  %.not151 = icmp eq i8 %i.ou, 0
  br i1 %.not151, label %bb.cv, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ow = load i32, ptr %i.ov, align 8, !tbaa !16 ; 6 uses
  %i.ox = icmp slt i32 %i.ow, 40
  br i1 %i.ox, label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i232, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.pa = load i32, ptr %i.oz, align 8, !tbaa !14 ; 2 uses
  %.not.i.not.i220 = icmp slt i32 %i.ow, %i.pa
  br i1 %.not.i.not.i220, label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i232, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.pb = load i32, ptr %5, align 4, !tbaa !18
  %i.pc = icmp slt i32 %i.pb, 1
  br i1 %i.pc, label %.preheader.i.i221, label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit

.preheader.i.i221:                                ; preds = %bb.cp, %.preheader.i.i221
  %.0.i.i222 = phi i32 [ %.1.i.i224, %.preheader.i.i221 ], [ %i.pa, %bb.cp ] ; 3 uses
  %i.pd = icmp slt i32 %.0.i.i222, 1000
  %.1.v.i.i223 = select i1 %i.pd, i32 2, i32 1
  %.1.i.i224 = shl nsw i32 %.0.i.i222, %.1.v.i.i223 ; 4 uses
  %.not.i225 = icmp sgt i32 %.1.i.i224, %i.ow
  br i1 %.not.i225, label %bb.cq, label %.preheader.i.i221, !llvm.loop !0

bb.cq:                                            ; preds = %.preheader.i.i221
  %i.pe = icmp sgt i32 %.0.i.i222, 0
  br i1 %i.pe, label %bb.cr, label %bb.cu

bb.cr:                                            ; preds = %bb.cq
  %i.pf = zext nneg i32 %.1.i.i224 to i64
  %i.pg = shl nuw nsw i64 %i.pf, 3
  %i.ph = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.pg) #19 ; 3 uses
  %.not.i.i.i226 = icmp eq ptr %i.ph, null
  br i1 %.not.i.i.i226, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.pi = load i32, ptr %i.oz, align 8, !tbaa !14
  %.1.i.i.i228 = tail call i32 @llvm.smin.i32(i32 %i.ow, i32 %i.pi)
  %i.pj = load ptr, ptr %i.oy, align 8, !tbaa !13 ; 2 uses
  %i.pk = sext i32 %.1.i.i.i228 to i64
  %i.pl = shl nsw i64 %i.pk, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ph, ptr align 8 %i.pj, i64 %i.pl, i1 false)
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.pn = load i8, ptr %i.pm, align 4, !tbaa !12
  %.not.i.i.i.i229 = icmp eq i8 %i.pn, 0
  br i1 %.not.i.i.i.i229, label %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i230, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  tail call void @uprv_free_78(ptr noundef %i.pj)
  br label %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i230

_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i230: ; preds = %bb.ct, %bb.cs
  store ptr %i.ph, ptr %i.oy, align 8, !tbaa !13
  store i32 %.1.i.i224, ptr %i.oz, align 8, !tbaa !14
  store i8 1, ptr %i.pm, align 4, !tbaa !12
  %.pre.i231 = load i32, ptr %i.ov, align 8, !tbaa !16
  br label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i232

bb.cu:                                            ; preds = %bb.cr, %bb.cq
  store i32 7, ptr %5, align 4, !tbaa !18
  br label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit

_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i232: ; preds = %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i230, %bb.co, %bb.cn
  %i.po = phi i32 [ %.pre.i231, %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i230 ], [ %i.ow, %bb.co ], [ %i.ow, %bb.cn ] ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.pq = add nsw i32 %i.po, 1
  store i32 %i.pq, ptr %i.ov, align 8, !tbaa !16
  %i.pr = sext i32 %i.po to i64
  %i.ps = load ptr, ptr %i.pp, align 8, !tbaa !13
  %i.pt = getelementptr inbounds [8 x i8], ptr %i.ps, i64 %i.pr
  store i64 4311744768, ptr %i.pt, align 8, !tbaa !33
  br label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit

bb.cv:                                            ; preds = %bb.cm, %bb.cl
  %i.pu = getelementptr inbounds nuw i8, ptr %.0127368, i64 8
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !106
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !44
  br label %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit.thread

bb.cw:                                            ; preds = %bb.b
  %i.px = getelementptr inbounds nuw i8, ptr %.0127368, i64 40
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !108 ; 6 uses
  %i.pz = add nsw i32 %.0130366, -44032           ; 3 uses
  %i.qa = srem i32 %i.pz, 28                      ; 4 uses
  %i.qb = sdiv i32 %i.pz, 28
  %i.qc = srem i32 %i.qb, 21                      ; 2 uses
  %i.qd = sdiv i32 %i.pz, 588                     ; 2 uses
  %i.qe = and i32 %.0133365, 256
  %.not147 = icmp eq i32 %i.qe, 0
  br i1 %.not147, label %bb.dq, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.qg = icmp eq i32 %i.qa, 0                    ; 2 uses
  %i.qh = select i1 %i.qg, i32 2, i32 3
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !14 ; 2 uses
  %i.ql = load i32, ptr %i.qf, align 8, !tbaa !16 ; 4 uses
  %i.qm = add nsw i32 %i.ql, %i.qh                ; 2 uses
  %.not.i234 = icmp sgt i32 %i.qm, %i.qk
  br i1 %.not.i234, label %bb.cy, label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit245

bb.cy:                                            ; preds = %bb.cx
  %i.qn = load i32, ptr %5, align 4, !tbaa !18
  %i.qo = icmp slt i32 %i.qn, 1
  br i1 %i.qo, label %.preheader.i236, label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit

.preheader.i236:                                  ; preds = %bb.cy, %.preheader.i236
  %.0.i237 = phi i32 [ %.1.i239, %.preheader.i236 ], [ %i.qk, %bb.cy ] ; 3 uses
  %i.qp = icmp slt i32 %.0.i237, 1000
  %.1.v.i238 = select i1 %i.qp, i32 2, i32 1
  %.1.i239 = shl nsw i32 %.0.i237, %.1.v.i238     ; 5 uses
  %i.qq = icmp slt i32 %.1.i239, %i.qm
  br i1 %i.qq, label %.preheader.i236, label %bb.cz, !llvm.loop !0

bb.cz:                                            ; preds = %.preheader.i236
  %i.qr = icmp sgt i32 %.0.i237, 0
  br i1 %i.qr, label %bb.da, label %bb.df

bb.da:                                            ; preds = %bb.cz
  %i.qs = zext nneg i32 %.1.i239 to i64
  %i.qt = shl nuw nsw i64 %i.qs, 3
  %i.qu = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.qt) #19 ; 3 uses
  %.not.i.i240 = icmp eq ptr %i.qu, null
  br i1 %.not.i.i240, label %bb.df, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.qv = icmp sgt i32 %i.ql, 0
  br i1 %i.qv, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.qw = load i32, ptr %i.qj, align 8, !tbaa !14
  %spec.select.i.i243 = tail call i32 @llvm.smin.i32(i32 %i.ql, i32 %i.qw)
  %.1.i.i244 = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i243, i32 %.1.i239)
  %i.qx = load ptr, ptr %i.qi, align 8, !tbaa !13
  %i.qy = sext i32 %.1.i.i244 to i64
  %i.qz = shl nsw i64 %i.qy, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.qu, ptr align 8 %i.qx, i64 %i.qz, i1 false)
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.rb = load i8, ptr %i.ra, align 4, !tbaa !12
  %.not.i.i.i241 = icmp eq i8 %i.rb, 0
  br i1 %.not.i.i.i241, label %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i242, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.rc = load ptr, ptr %i.qi, align 8, !tbaa !13
  tail call void @uprv_free_78(ptr noundef %i.rc)
  br label %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i242

_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i242: ; preds = %bb.de, %bb.dd
  store ptr %i.qu, ptr %i.qi, align 8, !tbaa !13
  store i32 %.1.i239, ptr %i.qj, align 8, !tbaa !14
  store i8 1, ptr %i.ra, align 4, !tbaa !12
  %.pre = load i32, ptr %i.qf, align 8, !tbaa !31
  br label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit245

bb.df:                                            ; preds = %bb.da, %bb.cz
  store i32 7, ptr %5, align 4, !tbaa !18
  br label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit

_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit245: ; preds = %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i242, %bb.cx
  %i.rd = phi i32 [ %.pre, %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i242 ], [ %i.ql, %bb.cx ] ; 3 uses
  %i.re = sext i32 %i.qd to i64
  %i.rf = getelementptr inbounds [4 x i8], ptr %i.py, i64 %i.re
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !44 ; 5 uses
  %i.rh = and i32 %i.rg, 255                      ; 2 uses
  %i.ri = icmp samesign ult i32 %i.rh, 192
  br i1 %i.ri, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit245
  %i.rj = and i32 %i.rg, -65536
  %i.rk = zext i32 %i.rj to i64
  %i.rl = shl nuw i64 %i.rk, 32
  %i.rm = shl i32 %i.rg, 16
  %i.rn = and i32 %i.rm, -16777216
  %i.ro = zext i32 %i.rn to i64
  %i.rp = or disjoint i64 %i.rl, %i.ro
  %i.rq = shl nuw nsw i32 %i.rh, 8
  %i.rr = zext nneg i32 %i.rq to i64
  %i.rs = or disjoint i64 %i.rp, %i.rr
  br label %_ZN6icu_789Collation10ceFromCE32Ej.exit247.a

bb.dh:                                            ; preds = %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit245
  %i.rt = and i32 %i.rg, -256
  %i.ru = and i32 %i.rg, 15
  %i.rv = icmp eq i32 %i.ru, 1
  %i.rw = zext i32 %i.rt to i64                   ; 2 uses
  br i1 %i.rv, label %bb.di, label %_ZN6icu_789Collation10ceFromCE32Ej.exit247.a

bb.di:                                            ; preds = %bb.dh
  %i.rx = shl nuw i64 %i.rw, 32
  %i.ry = or disjoint i64 %i.rx, 83887360
  br label %_ZN6icu_789Collation10ceFromCE32Ej.exit247.a

_ZN6icu_789Collation10ceFromCE32Ej.exit247.a:     ; preds = %bb.dg, %bb.dh, %bb.di
  %.0.i246.a = phi i64 [ %i.rs, %bb.dg ], [ %i.ry, %bb.di ], [ %i.rw, %bb.dh ]
  %i.rz = sext i32 %i.rd to i64
  %i.sa = load ptr, ptr %i.qi, align 8, !tbaa !13 ; 2 uses
  %i.sb = getelementptr [8 x i8], ptr %i.sa, i64 %i.rz ; 2 uses
  store i64 %.0.i246.a, ptr %i.sb, align 8, !tbaa !33
  %i.sc = sext i32 %i.qc to i64
  %i.sd = getelementptr [4 x i8], ptr %i.py, i64 %i.sc
  %i.se = getelementptr i8, ptr %i.sd, i64 76
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !44 ; 5 uses
  %i.sg = and i32 %i.sf, 255                      ; 2 uses
  %i.sh = icmp samesign ult i32 %i.sg, 192
  br i1 %i.sh, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %_ZN6icu_789Collation10ceFromCE32Ej.exit247.a
  %i.si = and i32 %i.sf, -65536
  %i.sj = zext i32 %i.si to i64
  %i.sk = shl nuw i64 %i.sj, 32
  %i.sl = shl i32 %i.sf, 16
  %i.sm = and i32 %i.sl, -16777216
  %i.sn = zext i32 %i.sm to i64
  %i.so = or disjoint i64 %i.sk, %i.sn
  %i.sp = shl nuw nsw i32 %i.sg, 8
  %i.sq = zext nneg i32 %i.sp to i64
  %i.sr = or disjoint i64 %i.so, %i.sq
  br label %_ZN6icu_789Collation10ceFromCE32Ej.exit249.a

bb.dk:                                            ; preds = %_ZN6icu_789Collation10ceFromCE32Ej.exit247.a
  %i.ss = and i32 %i.sf, -256
  %i.st = and i32 %i.sf, 15
  %i.su = icmp eq i32 %i.st, 1
  %i.sv = zext i32 %i.ss to i64                   ; 2 uses
  br i1 %i.su, label %bb.dl, label %_ZN6icu_789Collation10ceFromCE32Ej.exit249.a

bb.dl:                                            ; preds = %bb.dk
  %i.sw = shl nuw i64 %i.sv, 32
  %i.sx = or disjoint i64 %i.sw, 83887360
  br label %_ZN6icu_789Collation10ceFromCE32Ej.exit249.a

_ZN6icu_789Collation10ceFromCE32Ej.exit249.a:     ; preds = %bb.dj, %bb.dk, %bb.dl
  %.0.i248.a = phi i64 [ %i.sr, %bb.dj ], [ %i.sx, %bb.dl ], [ %i.sv, %bb.dk ]
end_hunk_2
begin_hunk_3_@_ZN6icu_7817CollationIterator17appendCEsFromCE32EPKNS_13CollationDataEijaR10UErrorCode:bb.a
bb.dm:                                            ; preds = %_ZN6icu_789Collation10ceFromCE32Ej.exit249.a
  %i.ta = sext i32 %i.qa to i64
  %i.tb = getelementptr [4 x i8], ptr %i.py, i64 %i.ta
  %i.tc = getelementptr i8, ptr %i.tb, i64 156
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !44 ; 5 uses
  %i.te = and i32 %i.td, 255                      ; 2 uses
  %i.tf = icmp samesign ult i32 %i.te, 192
  br i1 %i.tf, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.tg = and i32 %i.td, -65536
  %i.th = zext i32 %i.tg to i64
  %i.ti = shl nuw i64 %i.th, 32
  %i.tj = shl i32 %i.td, 16
  %i.tk = and i32 %i.tj, -16777216
  %i.tl = zext i32 %i.tk to i64
  %i.tm = or disjoint i64 %i.ti, %i.tl
  %i.tn = shl nuw nsw i32 %i.te, 8
  %i.to = zext nneg i32 %i.tn to i64
  %i.tp = or disjoint i64 %i.tm, %i.to
  br label %_ZN6icu_789Collation10ceFromCE32Ej.exit251

bb.do:                                            ; preds = %bb.dm
  %i.tq = and i32 %i.td, -256
  %i.tr = and i32 %i.td, 15
  %i.ts = icmp eq i32 %i.tr, 1
  %i.tt = zext i32 %i.tq to i64                   ; 2 uses
  br i1 %i.ts, label %bb.dp, label %_ZN6icu_789Collation10ceFromCE32Ej.exit251

bb.dp:                                            ; preds = %bb.do
  %i.tu = shl nuw i64 %i.tt, 32
  %i.tv = or disjoint i64 %i.tu, 83887360
  br label %_ZN6icu_789Collation10ceFromCE32Ej.exit251

_ZN6icu_789Collation10ceFromCE32Ej.exit251:       ; preds = %bb.dn, %bb.do, %bb.dp
  %.0.i250 = phi i64 [ %i.tp, %bb.dn ], [ %i.tv, %bb.dp ], [ %i.tt, %bb.do ]
  %i.tw = add nsw i32 %i.rd, 3
  store i32 %i.tw, ptr %i.qf, align 8, !tbaa !16
  %i.tx = sext i32 %i.sz to i64
  %i.ty = getelementptr inbounds [8 x i8], ptr %i.sa, i64 %i.tx
  store i64 %.0.i250, ptr %i.ty, align 8, !tbaa !33
  br label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit

bb.dq:                                            ; preds = %bb.cw
  %i.tz = sext i32 %i.qd to i64
  %i.ua = getelementptr inbounds [4 x i8], ptr %i.py, i64 %i.tz
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !44
  tail call void @_ZN6icu_7817CollationIterator17appendCEsFromCE32EPKNS_13CollationDataEijaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(389) %0, ptr noundef nonnull %.0127368, i32 noundef -1, i32 noundef %i.ub, i8 noundef signext %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %i.uc = sext i32 %i.qc to i64
  %i.ud = getelementptr [4 x i8], ptr %i.py, i64 %i.uc
  %i.ue = getelementptr i8, ptr %i.ud, i64 76
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !44
  tail call void @_ZN6icu_7817CollationIterator17appendCEsFromCE32EPKNS_13CollationDataEijaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(389) %0, ptr noundef nonnull %.0127368, i32 noundef -1, i32 noundef %i.uf, i8 noundef signext %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %i.ug = icmp eq i32 %i.qa, 0
  br i1 %i.ug, label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.uh = sext i32 %i.qa to i64
  %i.ui = getelementptr [4 x i8], ptr %i.py, i64 %i.uh
  %i.uj = getelementptr i8, ptr %i.ui, i64 156
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !44
  br label %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit.thread

bb.ds:                                            ; preds = %bb.b
  %i.ul = load ptr, ptr %0, align 8, !tbaa !21
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 72
  %i.un = load ptr, ptr %i.um, align 8
  %i.uo = tail call noundef zeroext i16 %i.un(ptr noundef nonnull align 8 dereferenceable(389) %0)
  %i.up = zext i16 %i.uo to i32                   ; 4 uses
  %i.uq = and i32 %i.up, 64512
  %i.ur = icmp eq i32 %i.uq, 56320
  br i1 %i.ur, label %bb.dt, label %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit.thread

bb.dt:                                            ; preds = %bb.ds
  %i.us = shl i32 %.0130366, 10
  %i.ut = add i32 %i.us, -56613888
  %i.uu = add i32 %i.ut, %i.up                    ; 9 uses
  %i.uv = and i32 %.0133365, 768
  switch i32 %i.uv, label %bb.du [
    i32 0, label %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit.thread
    i32 256, label %bb.dx
  ]

bb.du:                                            ; preds = %bb.dt
  %i.uw = load ptr, ptr %.0127368, align 8, !tbaa !52 ; 4 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 16
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !56
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uw, i64 44
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !59
  %.not.i252 = icmp slt i32 %i.uu, %i.va
  br i1 %.not.i252, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uw, i64 48
  %i.vc = load i32, ptr %i.vb, align 8, !tbaa !60
  br label %_ZNK6icu_7813CollationData24getCE32FromSupplementaryEi.exit

bb.dw:                                            ; preds = %bb.du
  %i.vd = load ptr, ptr %i.uw, align 8, !tbaa !57 ; 2 uses
  %i.ve = ashr i32 %i.uu, 11
  %i.vf = sext i32 %i.ve to i64
  %i.vg = getelementptr [2 x i8], ptr %i.vd, i64 %i.vf
  %i.vh = getelementptr i8, ptr %i.vg, i64 4160
  %i.vi = load i16, ptr %i.vh, align 2, !tbaa !58
  %i.vj = zext i16 %i.vi to i32
  %i.vk = lshr i32 %i.uu, 5
  %i.vl = and i32 %i.vk, 63
  %i.vm = add nuw nsw i32 %i.vl, %i.vj
  %i.vn = zext nneg i32 %i.vm to i64
  %i.vo = getelementptr inbounds nuw [2 x i8], ptr %i.vd, i64 %i.vn
  %i.vp = load i16, ptr %i.vo, align 2, !tbaa !58
  %i.vq = zext i16 %i.vp to i32
  %i.vr = shl nuw nsw i32 %i.vq, 2
  %i.vs = and i32 %i.up, 31
  %i.vt = add nuw nsw i32 %i.vr, %i.vs
  br label %_ZNK6icu_7813CollationData24getCE32FromSupplementaryEi.exit

_ZNK6icu_7813CollationData24getCE32FromSupplementaryEi.exit: ; preds = %bb.dv, %bb.dw
  %i.vu = phi i32 [ %i.vc, %bb.dv ], [ %i.vt, %bb.dw ]
  %i.vv = sext i32 %i.vu to i64
  %i.vw = getelementptr inbounds [4 x i8], ptr %i.uy, i64 %i.vv
  %i.vx = load i32, ptr %i.vw, align 4, !tbaa !44 ; 2 uses
  %i.vy = icmp eq i32 %i.vx, 192
  br i1 %i.vy, label %bb.dx, label %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit.thread

bb.dx:                                            ; preds = %bb.dt, %_ZNK6icu_7813CollationData24getCE32FromSupplementaryEi.exit
  %i.vz = getelementptr inbounds nuw i8, ptr %.0127368, i64 32
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !51 ; 2 uses
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !52 ; 4 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 16
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !56
  %i.we = getelementptr inbounds nuw i8, ptr %i.wb, i64 44
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !59
  %.not.i253 = icmp slt i32 %i.uu, %i.wf
  br i1 %.not.i253, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wb, i64 48
  %i.wh = load i32, ptr %i.wg, align 8, !tbaa !60
  br label %_ZNK6icu_7813CollationData24getCE32FromSupplementaryEi.exit254

bb.dz:                                            ; preds = %bb.dx
  %i.wi = load ptr, ptr %i.wb, align 8, !tbaa !57 ; 2 uses
  %i.wj = ashr i32 %i.uu, 11
  %i.wk = sext i32 %i.wj to i64
  %i.wl = getelementptr [2 x i8], ptr %i.wi, i64 %i.wk
  %i.wm = getelementptr i8, ptr %i.wl, i64 4160
  %i.wn = load i16, ptr %i.wm, align 2, !tbaa !58
  %i.wo = zext i16 %i.wn to i32
  %i.wp = lshr i32 %i.uu, 5
  %i.wq = and i32 %i.wp, 63
  %i.wr = add nuw nsw i32 %i.wq, %i.wo
  %i.ws = zext nneg i32 %i.wr to i64
  %i.wt = getelementptr inbounds nuw [2 x i8], ptr %i.wi, i64 %i.ws
  %i.wu = load i16, ptr %i.wt, align 2, !tbaa !58
  %i.wv = zext i16 %i.wu to i32
  %i.ww = shl nuw nsw i32 %i.wv, 2
  %i.wx = and i32 %i.up, 31
  %i.wy = add nuw nsw i32 %i.ww, %i.wx
  br label %_ZNK6icu_7813CollationData24getCE32FromSupplementaryEi.exit254

_ZNK6icu_7813CollationData24getCE32FromSupplementaryEi.exit254: ; preds = %bb.dy, %bb.dz
  %i.wz = phi i32 [ %i.wh, %bb.dy ], [ %i.wy, %bb.dz ]
  %i.xa = sext i32 %i.wz to i64
  %i.xb = getelementptr inbounds [4 x i8], ptr %i.wd, i64 %i.xa
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !44
  br label %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit.thread

bb.ea:                                            ; preds = %bb.b
  %i.xd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %.0127368, i64 16
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !107
  %i.xg = lshr i32 %.0133365, 13
  %i.xh = zext nneg i32 %i.xg to i64
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %i.xh
  %i.xj = load i64, ptr %i.xi, align 8, !tbaa !33
  %i.xk = tail call noundef i32 @_ZN6icu_789Collation32getThreeBytePrimaryForOffsetDataEil(i32 noundef %.0130366, i64 noundef %i.xj)
  %i.xl = zext i32 %i.xk to i64
  %i.xm = shl nuw i64 %i.xl, 32
  %i.xn = or disjoint i64 %i.xm, 83887360
  %i.xo = load i32, ptr %i.xd, align 8, !tbaa !16 ; 6 uses
  %i.xp = icmp slt i32 %i.xo, 40
  br i1 %i.xp, label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i267, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.xs = load i32, ptr %i.xr, align 8, !tbaa !14 ; 2 uses
  %.not.i.not.i255 = icmp slt i32 %i.xo, %i.xs
  br i1 %.not.i.not.i255, label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i267, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.xt = load i32, ptr %5, align 4, !tbaa !18
  %i.xu = icmp slt i32 %i.xt, 1
  br i1 %i.xu, label %.preheader.i.i256, label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit

.preheader.i.i256:                                ; preds = %bb.ec, %.preheader.i.i256
  %.0.i.i257 = phi i32 [ %.1.i.i259, %.preheader.i.i256 ], [ %i.xs, %bb.ec ] ; 3 uses
  %i.xv = icmp slt i32 %.0.i.i257, 1000
  %.1.v.i.i258 = select i1 %i.xv, i32 2, i32 1
  %.1.i.i259 = shl nsw i32 %.0.i.i257, %.1.v.i.i258 ; 4 uses
  %.not.i260 = icmp sgt i32 %.1.i.i259, %i.xo
  br i1 %.not.i260, label %bb.ed, label %.preheader.i.i256, !llvm.loop !0

bb.ed:                                            ; preds = %.preheader.i.i256
  %i.xw = icmp sgt i32 %.0.i.i257, 0
  br i1 %i.xw, label %bb.ee, label %bb.eh

bb.ee:                                            ; preds = %bb.ed
  %i.xx = zext nneg i32 %.1.i.i259 to i64
  %i.xy = shl nuw nsw i64 %i.xx, 3
  %i.xz = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.xy) #19 ; 3 uses
  %.not.i.i.i261 = icmp eq ptr %i.xz, null
  br i1 %.not.i.i.i261, label %bb.eh, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ya = load i32, ptr %i.xr, align 8, !tbaa !14
  %.1.i.i.i263 = tail call i32 @llvm.smin.i32(i32 %i.xo, i32 %i.ya)
  %i.yb = load ptr, ptr %i.xq, align 8, !tbaa !13 ; 2 uses
  %i.yc = sext i32 %.1.i.i.i263 to i64
  %i.yd = shl nsw i64 %i.yc, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.xz, ptr align 8 %i.yb, i64 %i.yd, i1 false)
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.yf = load i8, ptr %i.ye, align 4, !tbaa !12
  %.not.i.i.i.i264 = icmp eq i8 %i.yf, 0
  br i1 %.not.i.i.i.i264, label %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i265, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  tail call void @uprv_free_78(ptr noundef %i.yb)
  br label %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i265

_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i265: ; preds = %bb.eg, %bb.ef
  store ptr %i.xz, ptr %i.xq, align 8, !tbaa !13
  store i32 %.1.i.i259, ptr %i.xr, align 8, !tbaa !14
  store i8 1, ptr %i.ye, align 4, !tbaa !12
  %.pre.i266 = load i32, ptr %i.xd, align 8, !tbaa !16
  br label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i267

bb.eh:                                            ; preds = %bb.ee, %bb.ed
  store i32 7, ptr %5, align 4, !tbaa !18
  br label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit

_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i267: ; preds = %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i265, %bb.eb, %bb.ea
  %i.yg = phi i32 [ %.pre.i266, %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i265 ], [ %i.xo, %bb.eb ], [ %i.xo, %bb.ea ] ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.yi = add nsw i32 %i.yg, 1
  store i32 %i.yi, ptr %i.xd, align 8, !tbaa !16
  %i.yj = sext i32 %i.yg to i64
  %i.yk = load ptr, ptr %i.yh, align 8, !tbaa !13
  %i.yl = getelementptr inbounds [8 x i8], ptr %i.yk, i64 %i.yj
  store i64 %i.xn, ptr %i.yl, align 8, !tbaa !33
  br label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit

bb.ei:                                            ; preds = %bb.b
  %i.ym = and i32 %.0130366, -2048
  %i.yn = icmp eq i32 %i.ym, 55296
  br i1 %i.yn, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.yo = load ptr, ptr %0, align 8, !tbaa !21
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 88
  %i.yq = load ptr, ptr %i.yp, align 8
  %i.yr = tail call noundef signext i8 %i.yq(ptr noundef nonnull align 8 dereferenceable(389) %0)
  %.not146 = icmp eq i8 %i.yr, 0
  br i1 %.not146, label %bb.ek, label %._crit_edge

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.ys = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.yt = tail call noundef i32 @_ZN6icu_789Collation30unassignedPrimaryFromCodePointEi(i32 noundef %.0130366)
  %i.yu = zext i32 %i.yt to i64
  %i.yv = shl nuw i64 %i.yu, 32
  %i.yw = or disjoint i64 %i.yv, 83887360
  %i.yx = load i32, ptr %i.ys, align 8, !tbaa !16 ; 6 uses
  %i.yy = icmp slt i32 %i.yx, 40
  br i1 %i.yy, label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i281, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.yz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.zb = load i32, ptr %i.za, align 8, !tbaa !14 ; 2 uses
  %.not.i.not.i269 = icmp slt i32 %i.yx, %i.zb
  br i1 %.not.i.not.i269, label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i281, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.zc = load i32, ptr %5, align 4, !tbaa !18
  %i.zd = icmp slt i32 %i.zc, 1
  br i1 %i.zd, label %.preheader.i.i270, label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit

.preheader.i.i270:                                ; preds = %bb.em, %.preheader.i.i270
  %.0.i.i271 = phi i32 [ %.1.i.i273, %.preheader.i.i270 ], [ %i.zb, %bb.em ] ; 3 uses
  %i.ze = icmp slt i32 %.0.i.i271, 1000
  %.1.v.i.i272 = select i1 %i.ze, i32 2, i32 1
  %.1.i.i273 = shl nsw i32 %.0.i.i271, %.1.v.i.i272 ; 4 uses
  %.not.i274 = icmp sgt i32 %.1.i.i273, %i.yx
  br i1 %.not.i274, label %bb.en, label %.preheader.i.i270, !llvm.loop !0

bb.en:                                            ; preds = %.preheader.i.i270
  %i.zf = icmp sgt i32 %.0.i.i271, 0
  br i1 %i.zf, label %bb.eo, label %bb.er

bb.eo:                                            ; preds = %bb.en
  %i.zg = zext nneg i32 %.1.i.i273 to i64
  %i.zh = shl nuw nsw i64 %i.zg, 3
  %i.zi = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.zh) #19 ; 3 uses
  %.not.i.i.i275 = icmp eq ptr %i.zi, null
  br i1 %.not.i.i.i275, label %bb.er, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.zj = load i32, ptr %i.za, align 8, !tbaa !14
  %.1.i.i.i277 = tail call i32 @llvm.smin.i32(i32 %i.yx, i32 %i.zj)
  %i.zk = load ptr, ptr %i.yz, align 8, !tbaa !13 ; 2 uses
  %i.zl = sext i32 %.1.i.i.i277 to i64
  %i.zm = shl nsw i64 %i.zl, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.zi, ptr align 8 %i.zk, i64 %i.zm, i1 false)
  %i.zn = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.zo = load i8, ptr %i.zn, align 4, !tbaa !12
  %.not.i.i.i.i278 = icmp eq i8 %i.zo, 0
  br i1 %.not.i.i.i.i278, label %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i279, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  tail call void @uprv_free_78(ptr noundef %i.zk)
  br label %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i279

_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i279: ; preds = %bb.eq, %bb.ep
  store ptr %i.zi, ptr %i.yz, align 8, !tbaa !13
  store i32 %.1.i.i273, ptr %i.za, align 8, !tbaa !14
  store i8 1, ptr %i.zn, align 4, !tbaa !12
  %.pre.i280 = load i32, ptr %i.ys, align 8, !tbaa !16
  br label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i281

bb.er:                                            ; preds = %bb.eo, %bb.en
  store i32 7, ptr %5, align 4, !tbaa !18
  br label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit

_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i281: ; preds = %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i279, %bb.el, %bb.ek
  %i.zp = phi i32 [ %.pre.i280, %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i279 ], [ %i.yx, %bb.el ], [ %i.yx, %bb.ek ] ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.zr = add nsw i32 %i.zp, 1
  store i32 %i.zr, ptr %i.ys, align 8, !tbaa !16
  %i.zs = sext i32 %i.zp to i64
  %i.zt = load ptr, ptr %i.zq, align 8, !tbaa !13
  %i.zu = getelementptr inbounds [8 x i8], ptr %i.zt, i64 %i.zs
  store i64 %i.yw, ptr %i.zu, align 8, !tbaa !33
  br label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit

default.unreachable493:                           ; preds = %bb.b
  unreachable

_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit.thread: ; preds = %.thread305, %bb.cg, %bb.cf, %bb.bo, %_ZN6icu_7812CollationFCD11mayHaveLcccEi.exit.thread, %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit, %bb.ch, %bb.bl, %bb.dr, %.thread, %_ZNK6icu_7813CollationData24getCE32FromSupplementaryEi.exit, %_ZNK6icu_7813CollationData24getCE32FromSupplementaryEi.exit254, %bb.dt, %bb.ds, %bb.bk, %bb.ba, %_ZNK6icu_7813CollationData7getCE32Ei.exit, %bb.cv, %bb.ck
  %.5 = phi i32 [ %i.kj, %.thread305 ], [ %i.jp, %_ZNK6icu_7813CollationData7getCE32Ei.exit ], [ %i.hj, %bb.ba ], [ %i.ju, %bb.bk ], [ %i.jq, %.thread ], [ %i.kj, %bb.bl ], [ %i.oq, %bb.ck ], [ %i.pw, %bb.cv ], [ %i.uk, %bb.dr ], [ -1, %bb.ds ], [ -1, %bb.dt ], [ %i.xc, %_ZNK6icu_7813CollationData24getCE32FromSupplementaryEi.exit254 ], [ %i.vx, %_ZNK6icu_7813CollationData24getCE32FromSupplementaryEi.exit ], [ %i.kj, %bb.cg ], [ %i.kj, %bb.cf ], [ %i.kj, %bb.bo ], [ %i.kj, %_ZN6icu_7812CollationFCD11mayHaveLcccEi.exit.thread ], [ %i.kj, %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit ], [ %i.oi, %bb.ch ] ; 3 uses
  %.3 = phi i32 [ %.0130366, %.thread305 ], [ %.0130366, %_ZNK6icu_7813CollationData7getCE32Ei.exit ], [ %.0130366, %bb.ba ], [ %.0130366, %bb.bk ], [ %.0130366, %.thread ], [ %.0130366, %bb.bl ], [ %.0130366, %bb.ck ], [ %.0130366, %bb.cv ], [ -1, %bb.dr ], [ %.0130366, %bb.ds ], [ %i.uu, %bb.dt ], [ %i.uu, %_ZNK6icu_7813CollationData24getCE32FromSupplementaryEi.exit254 ], [ %i.uu, %_ZNK6icu_7813CollationData24getCE32FromSupplementaryEi.exit ], [ %.0130366, %bb.cg ], [ %.0130366, %bb.cf ], [ %.0130366, %bb.bo ], [ %.0130366, %_ZN6icu_7812CollationFCD11mayHaveLcccEi.exit.thread ], [ %.0130366, %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit ], [ %.0130366, %bb.ch ]
  %.2129 = phi ptr [ %.0127368, %.thread305 ], [ %i.hp, %_ZNK6icu_7813CollationData7getCE32Ei.exit ], [ %.0127368, %bb.ba ], [ %.0127368, %bb.bk ], [ %.0127368, %.thread ], [ %.0127368, %bb.bl ], [ %.0127368, %bb.ck ], [ %.0127368, %bb.cv ], [ %.0127368, %bb.dr ], [ %.0127368, %bb.ds ], [ %.0127368, %bb.dt ], [ %i.wa, %_ZNK6icu_7813CollationData24getCE32FromSupplementaryEi.exit254 ], [ %.0127368, %_ZNK6icu_7813CollationData24getCE32FromSupplementaryEi.exit ], [ %.0127368, %bb.cg ], [ %.0127368, %bb.cf ], [ %.0127368, %bb.bo ], [ %.0127368, %_ZN6icu_7812CollationFCD11mayHaveLcccEi.exit.thread ], [ %.0127368, %_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode.exit ], [ %.0127368, %bb.ch ]
  %i.zv = and i32 %.5, 192
  %.not = icmp eq i32 %i.zv, 192
  br i1 %.not, label %bb.b, label %._crit_edge, !llvm.loop !105

._crit_edge:                                      ; preds = %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit.thread, %bb.ej, %bb.a
  %.0133.lcssa = phi i32 [ %3, %bb.a ], [ -195323, %bb.ej ], [ %.5, %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit.thread ] ; 3 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.zx = and i32 %.0133.lcssa, -65536
  %i.zy = zext i32 %i.zx to i64
  %i.zz = shl nuw i64 %i.zy, 32
  %i.aaa = shl i32 %.0133.lcssa, 16
  %i.aab = and i32 %i.aaa, -16777216
  %i.aac = zext i32 %i.aab to i64
  %i.aad = or disjoint i64 %i.zz, %i.aac
  %i.aae = shl i32 %.0133.lcssa, 8
  %i.aaf = and i32 %i.aae, 65280
  %i.aag = zext nneg i32 %i.aaf to i64
  %i.aah = or disjoint i64 %i.aad, %i.aag
  %i.aai = load i32, ptr %i.zw, align 8, !tbaa !16 ; 6 uses
  %i.aaj = icmp slt i32 %i.aai, 40
  br i1 %i.aaj, label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i295, label %bb.es

bb.es:                                            ; preds = %._crit_edge
  %i.aak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.aam = load i32, ptr %i.aal, align 8, !tbaa !14 ; 2 uses
  %.not.i.not.i283 = icmp slt i32 %i.aai, %i.aam
  br i1 %.not.i.not.i283, label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i295, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.aan = load i32, ptr %5, align 4, !tbaa !18
  %i.aao = icmp slt i32 %i.aan, 1
  br i1 %i.aao, label %.preheader.i.i284, label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit

.preheader.i.i284:                                ; preds = %bb.et, %.preheader.i.i284
  %.0.i.i285 = phi i32 [ %.1.i.i287, %.preheader.i.i284 ], [ %i.aam, %bb.et ] ; 3 uses
  %i.aap = icmp slt i32 %.0.i.i285, 1000
  %.1.v.i.i286 = select i1 %i.aap, i32 2, i32 1
  %.1.i.i287 = shl nsw i32 %.0.i.i285, %.1.v.i.i286 ; 4 uses
  %.not.i288 = icmp sgt i32 %.1.i.i287, %i.aai
  br i1 %.not.i288, label %bb.eu, label %.preheader.i.i284, !llvm.loop !0

bb.eu:                                            ; preds = %.preheader.i.i284
  %i.aaq = icmp sgt i32 %.0.i.i285, 0
  br i1 %i.aaq, label %bb.ev, label %bb.ey

bb.ev:                                            ; preds = %bb.eu
  %i.aar = zext nneg i32 %.1.i.i287 to i64
  %i.aas = shl nuw nsw i64 %i.aar, 3
  %i.aat = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.aas) #19 ; 3 uses
  %.not.i.i.i289 = icmp eq ptr %i.aat, null
  br i1 %.not.i.i.i289, label %bb.ey, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.aau = load i32, ptr %i.aal, align 8, !tbaa !14
  %.1.i.i.i291 = tail call i32 @llvm.smin.i32(i32 %i.aai, i32 %i.aau)
  %i.aav = load ptr, ptr %i.aak, align 8, !tbaa !13 ; 2 uses
  %i.aaw = sext i32 %.1.i.i.i291 to i64
  %i.aax = shl nsw i64 %i.aaw, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aat, ptr align 8 %i.aav, i64 %i.aax, i1 false)
  %i.aay = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.aaz = load i8, ptr %i.aay, align 4, !tbaa !12
  %.not.i.i.i.i292 = icmp eq i8 %i.aaz, 0
  br i1 %.not.i.i.i.i292, label %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i293, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  tail call void @uprv_free_78(ptr noundef %i.aav)
  br label %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i293

_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i293: ; preds = %bb.ex, %bb.ew
  store ptr %i.aat, ptr %i.aak, align 8, !tbaa !13
  store i32 %.1.i.i287, ptr %i.aal, align 8, !tbaa !14
  store i8 1, ptr %i.aay, align 4, !tbaa !12
  %.pre.i294 = load i32, ptr %i.zw, align 8, !tbaa !16
  br label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i295

bb.ey:                                            ; preds = %bb.ev, %bb.eu
  store i32 7, ptr %5, align 4, !tbaa !18
  br label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit

_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i295: ; preds = %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i293, %bb.es, %._crit_edge
  %i.aba = phi i32 [ %.pre.i294, %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i293 ], [ %i.aai, %bb.es ], [ %i.aai, %._crit_edge ] ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.abc = add nsw i32 %i.aba, 1
  store i32 %i.abc, ptr %i.zw, align 8, !tbaa !16
  %i.abd = sext i32 %i.aba to i64
  %i.abe = load ptr, ptr %i.abb, align 8, !tbaa !13
  %i.abf = getelementptr inbounds [8 x i8], ptr %i.abe, i64 %i.abd
  store i64 %i.aah, ptr %i.abf, align 8, !tbaa !33
  br label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit

_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit.loopexit320: ; preds = %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.gs, %middle.block ], [ %indvars.iv.next, %scalar.ph ]
  %i.abg = trunc nsw i64 %indvars.iv.next.lcssa to i32
  store i32 %i.abg, ptr %i.fk, align 8, !tbaa !16
  br label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit

_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit: ; preds = %bb.dq, %bb.ch, %bb.az, %_ZN6icu_789Collation10ceFromCE32Ej.exit, %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit.loopexit320, %bb.df, %bb.cy, %_ZN6icu_789Collation10ceFromCE32Ej.exit251, %_ZN6icu_789Collation10ceFromCE32Ej.exit249.a, %bb.ay, %bb.ar, %bb.al, %bb.ae, %bb.ac, %bb.v, %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i295, %bb.ey, %bb.et, %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i281, %bb.er, %bb.em, %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i267, %bb.eh, %bb.ec, %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i232, %bb.cu, %bb.cp, %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i177, %bb.t, %bb.o, %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i, %bb.l, %bb.g, %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit, %bb.c, %bb.d, %bb.cj
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_7817CollationIterator17getCE32FromPrefixEPKNS_13CollationDataEjR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(389) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::UCharsTrie", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.c = lshr i32 %2, 13
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.d ; 3 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !63
  %i.g = zext i16 %i.f to i32
  %i.h = shl nuw i32 %i.g, 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !63
  %i.k = zext i16 %i.j to i32
  %i.l = or disjoint i32 %i.h, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr null, ptr %4, align 8, !tbaa !67
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !68
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.o, align 8, !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 -1, ptr %i.p, align 8, !tbaa !70
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.m) #20, !srcloc !71
  br label %bb.b

bb.b:                                             ; preds = %_ZNK6icu_7810UCharsTrie8getValueEv.exit, %bb.a
  %.024 = phi i32 [ %i.l, %bb.a ], [ %.125, %_ZNK6icu_7810UCharsTrie8getValueEv.exit ] ; 2 uses
  %.022 = phi i32 [ 0, %bb.a ], [ %i.v, %_ZNK6icu_7810UCharsTrie8getValueEv.exit ] ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef i32 %i.s(ptr noundef nonnull align 8 dereferenceable(389) %0, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i32 %.022, 1                 ; 2 uses
  %i.w = invoke noundef i32 @_ZN6icu_7810UCharsTrie16nextForCodePointEi(ptr noundef nonnull align 8 dereferenceable(28) %4, i32 noundef %i.t)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.f, label %_ZNK6icu_7810UCharsTrie8getValueEv.exit

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !69   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2 ; 4 uses
  %i.aa = load i16, ptr %i.y, align 2, !tbaa !63  ; 4 uses
  %i.ab = zext i16 %i.aa to i32                   ; 3 uses
  %.not.i = icmp sgt i16 %i.aa, -1
  br i1 %.not.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = and i32 %i.ab, 32767                    ; 4 uses
  %i.ad = icmp samesign ult i32 %i.ac, 16384
  br i1 %i.ad, label %_ZNK6icu_7810UCharsTrie8getValueEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not7.i = icmp eq i32 %i.ac, 32767
  br i1 %.not7.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = shl nuw nsw i32 %i.ac, 16
  %i.af = add nsw i32 %i.ae, -1073741824
  %i.ag = load i16, ptr %i.z, align 2, !tbaa !63
  %i.ah = zext i16 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah
  br label %_ZNK6icu_7810UCharsTrie8getValueEv.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = load i16, ptr %i.z, align 2, !tbaa !63
  %i.ak = zext i16 %i.aj to i32
  %i.al = shl nuw i32 %i.ak, 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.an = load i16, ptr %i.am, align 2, !tbaa !63
  %i.ao = zext i16 %i.an to i32
  %i.ap = or disjoint i32 %i.al, %i.ao
  br label %_ZNK6icu_7810UCharsTrie8getValueEv.exit

bb.k:                                             ; preds = %bb.f
  %i.aq = icmp samesign ult i16 %i.aa, 16448
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = lshr i32 %i.ab, 6
  %i.as = add nsw i32 %i.ar, -1
  br label %_ZNK6icu_7810UCharsTrie8getValueEv.exit

bb.m:                                             ; preds = %bb.k
  %i.at = icmp samesign ult i16 %i.aa, 32704
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.au = shl nuw nsw i32 %i.ab, 10
  %i.av = and i32 %i.au, 33488896
  %i.aw = add nsw i32 %i.av, -16842752
  %i.ax = load i16, ptr %i.z, align 2, !tbaa !63
  %i.ay = zext i16 %i.ax to i32
  %i.az = or disjoint i32 %i.aw, %i.ay
  br label %_ZNK6icu_7810UCharsTrie8getValueEv.exit

bb.o:                                             ; preds = %bb.m
  %i.ba = load i16, ptr %i.z, align 2, !tbaa !63
  %i.bb = zext i16 %i.ba to i32
  %i.bc = shl nuw i32 %i.bb, 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !63
  %i.bf = zext i16 %i.be to i32
  %i.bg = or disjoint i32 %i.bc, %i.bf
  br label %_ZNK6icu_7810UCharsTrie8getValueEv.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.b, %bb.d, %select.unfold
  %lpad.loopexit.split-lp42 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7810UCharsTrieD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %lpad.loopexit.split-lp42

_ZNK6icu_7810UCharsTrie8getValueEv.exit:          ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g, %bb.e
  %.125 = phi i32 [ %.024, %bb.e ], [ %i.ac, %bb.g ], [ %i.ap, %bb.j ], [ %i.ai, %bb.i ], [ %i.as, %bb.l ], [ %i.az, %bb.n ], [ %i.bg, %bb.o ] ; 2 uses
  %i.bh = and i32 %i.w, 1
  %.not = icmp eq i32 %i.bh, 0
  br i1 %.not, label %select.unfold, label %bb.b

select.unfold:                                    ; preds = %_ZNK6icu_7810UCharsTrie8getValueEv.exit, %bb.c
  %.226.ph = phi i32 [ %.024, %bb.c ], [ %.125, %_ZNK6icu_7810UCharsTrie8getValueEv.exit ]
  %.123.ph = phi i32 [ %.022, %bb.c ], [ %i.v, %_ZNK6icu_7810UCharsTrie8getValueEv.exit ]
  %i.bi = load ptr, ptr %0, align 8, !tbaa !21
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 96
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void %i.bk(ptr noundef nonnull align 8 dereferenceable(389) %0, i32 noundef %.123.ph, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %select.unfold
  call void @_ZN6icu_7810UCharsTrieD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret i32 %.226.ph
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_7817CollationIterator20nextSkippedCodePointER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(389) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN6icu_7817CollationIterator36nextCE32FromDiscontiguousContractionEPKNS_13CollationDataERNS_10UCharsTrieEjiiR10UErrorCode:bb.a
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !52 ; 6 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !56
  %i.oh = icmp ult i32 %i.nr, 55296
  br i1 %i.oh, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.oi = load ptr, ptr %i.oe, align 8, !tbaa !57
  %i.oj = lshr i32 %i.nr, 5
  %i.ok = zext nneg i32 %i.oj to i64
  %i.ol = getelementptr inbounds nuw [2 x i8], ptr %i.oi, i64 %i.ok
  %i.om = load i16, ptr %i.ol, align 2, !tbaa !58
  %i.on = zext i16 %i.om to i32
  %i.oo = shl nuw nsw i32 %i.on, 2
  %i.op = and i32 %i.nr, 31
  %i.oq = add nuw nsw i32 %i.oo, %i.op
  br label %_ZNK6icu_7813CollationData7getCE32Ei.exit

bb.bz:                                            ; preds = %bb.bx
  br i1 %i.ns, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.or = load ptr, ptr %i.oe, align 8, !tbaa !57
  %i.os = icmp samesign ult i32 %i.nr, 56320
  %i.ot = select i1 %i.os, i32 320, i32 0
  %i.ou = lshr i32 %i.nr, 5
  %i.ov = add nuw nsw i32 %i.ot, %i.ou
  %i.ow = zext nneg i32 %i.ov to i64
  %i.ox = getelementptr inbounds nuw [2 x i8], ptr %i.or, i64 %i.ow
  %i.oy = load i16, ptr %i.ox, align 2, !tbaa !58
  %i.oz = zext i16 %i.oy to i32
  %i.pa = shl nuw nsw i32 %i.oz, 2
  %i.pb = and i32 %i.nr, 31
  %i.pc = add nuw nsw i32 %i.pa, %i.pb
  br label %_ZNK6icu_7813CollationData7getCE32Ei.exit

bb.cb:                                            ; preds = %bb.bz
  %i.pd = icmp ugt i32 %i.nr, 1114111
  br i1 %i.pd, label %_ZNK6icu_7813CollationData7getCE32Ei.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oe, i64 44
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !59
  %.not.i134 = icmp slt i32 %i.nr, %i.pf
  br i1 %.not.i134, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oe, i64 48
  %i.ph = load i32, ptr %i.pg, align 8, !tbaa !60
  br label %_ZNK6icu_7813CollationData7getCE32Ei.exit

bb.ce:                                            ; preds = %bb.cc
  %i.pi = load ptr, ptr %i.oe, align 8, !tbaa !57 ; 2 uses
  %i.pj = lshr i32 %i.nr, 11
  %i.pk = zext nneg i32 %i.pj to i64
  %i.pl = getelementptr inbounds nuw [2 x i8], ptr %i.pi, i64 %i.pk
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 4160
  %i.pn = load i16, ptr %i.pm, align 2, !tbaa !58
  %i.po = zext i16 %i.pn to i32
  %i.pp = lshr i32 %i.nr, 5
  %i.pq = and i32 %i.pp, 63
  %i.pr = add nuw nsw i32 %i.pq, %i.po
  %i.ps = zext nneg i32 %i.pr to i64
  %i.pt = getelementptr inbounds nuw [2 x i8], ptr %i.pi, i64 %i.ps
  %i.pu = load i16, ptr %i.pt, align 2, !tbaa !58
  %i.pv = zext i16 %i.pu to i32
  %i.pw = shl nuw nsw i32 %i.pv, 2
  %i.px = and i32 %i.nr, 31
  %i.py = add nuw nsw i32 %i.pw, %i.px
  br label %_ZNK6icu_7813CollationData7getCE32Ei.exit

_ZNK6icu_7813CollationData7getCE32Ei.exit:        ; preds = %bb.by, %bb.ca, %bb.cb, %bb.cd, %bb.ce
  %i.pz = phi i32 [ %i.oq, %bb.by ], [ %i.pc, %bb.ca ], [ 128, %bb.cb ], [ %i.ph, %bb.cd ], [ %i.py, %bb.ce ]
  %i.qa = sext i32 %i.pz to i64
  %i.qb = getelementptr inbounds [4 x i8], ptr %i.og, i64 %i.qa
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !44
  br label %.backedge

bb.cf:                                            ; preds = %bb.bv
  %i.qd = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %i.qe = and i16 %i.nj, 1
  %.not.i.i135 = icmp eq i16 %i.qe, 0
  %i.qf = and i16 %i.nj, 30
  %storemerge.i.i = select i1 %.not.i.i135, i16 %i.qf, i16 2
  store i16 %storemerge.i.i, ptr %i.qd, align 8, !tbaa !37
  store i32 0, ptr %i.ng, align 8, !tbaa !43
  br label %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit

_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit: ; preds = %bb.ac, %bb.ab, %bb.r, %bb.q, %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit133, %bb.bu, %bb.cf, %bb.ah, %bb.a
  %.267 = phi i32 [ 0, %bb.a ], [ %.272.ph, %_ZN6icu_7817CollationIterator18backwardNumSkippedEiR10UErrorCode.exit133 ], [ %3, %bb.r ], [ 0, %bb.ah ], [ %.272.ph, %bb.bu ], [ 1, %bb.cf ], [ %3, %bb.q ], [ %3, %bb.ab ], [ %3, %bb.ac ]
  ret i32 %.267
}

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), i8 noundef signext, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7817CollationIterator23appendNumericSegmentCEsEPKciR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(389) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !120  ; 7 uses
  %i.e = icmp slt i32 %2, 8
  br i1 %i.e, label %bb.b, label %bb.ac

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %1, align 1, !tbaa !37
  %i.g = sext i8 %i.f to i32                      ; 2 uses
  %i.h = icmp sgt i32 %2, 1
  br i1 %i.h, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %bb.b
  %.088.lcssa = phi i32 [ %i.g, %bb.b ], [ %i.n, %.lr.ph ], [ %i.s, %.lr.ph.1 ], [ %i.x, %.lr.ph.2 ], [ %i.ac, %.lr.ph.3 ], [ %i.ah, %.lr.ph.4 ], [ %i.am, %.lr.ph.5 ] ; 6 uses
  %i.i = icmp slt i32 %.088.lcssa, 74
  br i1 %i.i, label %bb.c, label %bb.k

.lr.ph:                                           ; preds = %bb.b
  %i.j = mul nsw i32 %i.g, 10
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !37
  %i.m = sext i8 %i.l to i32
  %i.n = add nsw i32 %i.j, %i.m                   ; 2 uses
  %exitcond.not = icmp eq i32 %2, 2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.o = mul nsw i32 %i.n, 10
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !37
  %i.r = sext i8 %i.q to i32
  %i.s = add nsw i32 %i.o, %i.r                   ; 2 uses
  %exitcond.not.1 = icmp eq i32 %2, 3
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.t = mul nsw i32 %i.s, 10
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !37
  %i.w = sext i8 %i.v to i32
  %i.x = add nsw i32 %i.t, %i.w                   ; 2 uses
  %exitcond.not.2 = icmp eq i32 %2, 4
  br i1 %exitcond.not.2, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.y = mul nsw i32 %i.x, 10
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !37
  %i.ab = sext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.y, %i.ab                 ; 2 uses
  %exitcond.not.3 = icmp eq i32 %2, 5
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.ad = mul nsw i32 %i.ac, 10
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !37
  %i.ag = sext i8 %i.af to i32
  %i.ah = add nsw i32 %i.ad, %i.ag                ; 2 uses
  %exitcond.not.4 = icmp eq i32 %2, 6
  br i1 %exitcond.not.4, label %._crit_edge, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.ai = mul nsw i32 %i.ah, 10
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !37
  %i.al = sext i8 %i.ak to i32
  %i.am = add nsw i32 %i.ai, %i.al
  br label %._crit_edge

bb.c:                                             ; preds = %._crit_edge
  %i.an = shl i32 %.088.lcssa, 16
  %i.ao = add i32 %i.an, 131072
  %i.ap = or i32 %i.ao, %i.d
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ar = zext i32 %i.ap to i64
  %i.as = shl nuw i64 %i.ar, 32
  %i.at = or disjoint i64 %i.as, 83887360
  %i.au = load i32, ptr %i.aq, align 8, !tbaa !16 ; 6 uses
  %i.av = icmp slt i32 %i.au, 40
  br i1 %i.av, label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !14 ; 2 uses
  %.not.i.not.i = icmp slt i32 %i.au, %i.ay
  br i1 %.not.i.not.i, label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = load i32, ptr %3, align 4, !tbaa !18
  %i.ba = icmp slt i32 %i.az, 1
  br i1 %i.ba, label %.preheader.i.i, label %.critedge95

.preheader.i.i:                                   ; preds = %bb.e, %.preheader.i.i
  %.0.i.i = phi i32 [ %.1.i.i, %.preheader.i.i ], [ %i.ay, %bb.e ] ; 3 uses
  %i.bb = icmp slt i32 %.0.i.i, 1000
  %.1.v.i.i = select i1 %i.bb, i32 2, i32 1
  %.1.i.i = shl nsw i32 %.0.i.i, %.1.v.i.i        ; 4 uses
  %.not.i = icmp sgt i32 %.1.i.i, %i.au
  br i1 %.not.i, label %bb.f, label %.preheader.i.i, !llvm.loop !0

bb.f:                                             ; preds = %.preheader.i.i
  %i.bc = icmp sgt i32 %.0.i.i, 0
  br i1 %i.bc, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.bd = zext nneg i32 %.1.i.i to i64
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.be) #19 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = load i32, ptr %i.ax, align 8, !tbaa !14
  %.1.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.au, i32 %i.bg)
  %i.bh = load ptr, ptr %i.aw, align 8, !tbaa !13 ; 2 uses
  %i.bi = sext i32 %.1.i.i.i to i64
  %i.bj = shl nsw i64 %i.bi, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bf, ptr align 8 %i.bh, i64 %i.bj, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 4, !tbaa !12
  %.not.i.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i.i, label %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @uprv_free_78(ptr noundef %i.bh)
  br label %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i

_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i: ; preds = %bb.i, %bb.h
  store ptr %i.bf, ptr %i.aw, align 8, !tbaa !13
  store i32 %.1.i.i, ptr %i.ax, align 8, !tbaa !14
  store i8 1, ptr %i.bk, align 4, !tbaa !12
  %.pre.i = load i32, ptr %i.aq, align 8, !tbaa !16
  br label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i

bb.j:                                             ; preds = %bb.g, %bb.f
  store i32 7, ptr %3, align 4, !tbaa !18
  br label %.critedge95

_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i: ; preds = %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i, %bb.d, %bb.c
  %i.bm = phi i32 [ %.pre.i, %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i ], [ %i.au, %bb.d ], [ %i.au, %bb.c ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bo = add nsw i32 %i.bm, 1
  store i32 %i.bo, ptr %i.aq, align 8, !tbaa !16
  %i.bp = sext i32 %i.bm to i64
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !13
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bp
  store i64 %i.at, ptr %i.br, align 8, !tbaa !33
  br label %.critedge95

bb.k:                                             ; preds = %._crit_edge
  %i.bs = icmp samesign ult i32 %.088.lcssa, 10234
  br i1 %i.bs, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.bt = trunc nuw nsw i32 %.088.lcssa to i16
  %.lhs.trunc = add nsw i16 %i.bt, -74            ; 2 uses
  %i.bu = udiv i16 %.lhs.trunc, 254
  %.zext = zext nneg i16 %i.bu to i32
  %i.bv = shl nuw nsw i32 %.zext, 16
  %i.bw = add nuw nsw i32 %i.bv, 4980736
  %i.bx = urem i16 %.lhs.trunc, 254
  %i.by = shl nuw i16 %i.bx, 8
  %i.bz = zext i16 %i.by to i32
  %i.ca = add nuw nsw i32 %i.bz, 512
  %i.cb = or i32 %i.ca, %i.bw
  %i.cc = or i32 %i.cb, %i.d
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ce = zext i32 %i.cc to i64
  %i.cf = shl nuw i64 %i.ce, 32
  %i.cg = or disjoint i64 %i.cf, 83887360
  %i.ch = load i32, ptr %i.cd, align 8, !tbaa !16 ; 6 uses
  %i.ci = icmp slt i32 %i.ch, 40
  br i1 %i.ci, label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i108, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !14 ; 2 uses
  %.not.i.not.i96 = icmp slt i32 %i.ch, %i.cl
  br i1 %.not.i.not.i96, label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i108, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cm = load i32, ptr %3, align 4, !tbaa !18
  %i.cn = icmp slt i32 %i.cm, 1
  br i1 %i.cn, label %.preheader.i.i97, label %.critedge95

.preheader.i.i97:                                 ; preds = %bb.n, %.preheader.i.i97
  %.0.i.i98 = phi i32 [ %.1.i.i100, %.preheader.i.i97 ], [ %i.cl, %bb.n ] ; 3 uses
  %i.co = icmp slt i32 %.0.i.i98, 1000
  %.1.v.i.i99 = select i1 %i.co, i32 2, i32 1
  %.1.i.i100 = shl nsw i32 %.0.i.i98, %.1.v.i.i99 ; 4 uses
  %.not.i101 = icmp sgt i32 %.1.i.i100, %i.ch
  br i1 %.not.i101, label %bb.o, label %.preheader.i.i97, !llvm.loop !0

bb.o:                                             ; preds = %.preheader.i.i97
  %i.cp = icmp sgt i32 %.0.i.i98, 0
  br i1 %i.cp, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.cq = zext nneg i32 %.1.i.i100 to i64
  %i.cr = shl nuw nsw i64 %i.cq, 3
  %i.cs = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.cr) #19 ; 3 uses
  %.not.i.i.i102 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i102, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ct = load i32, ptr %i.ck, align 8, !tbaa !14
  %.1.i.i.i104 = tail call i32 @llvm.smin.i32(i32 %i.ch, i32 %i.ct)
  %i.cu = load ptr, ptr %i.cj, align 8, !tbaa !13 ; 2 uses
  %i.cv = sext i32 %.1.i.i.i104 to i64
  %i.cw = shl nsw i64 %i.cv, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cs, ptr align 8 %i.cu, i64 %i.cw, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 4, !tbaa !12
  %.not.i.i.i.i105 = icmp eq i8 %i.cy, 0
  br i1 %.not.i.i.i.i105, label %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i106, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @uprv_free_78(ptr noundef %i.cu)
  br label %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i106

_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i106: ; preds = %bb.r, %bb.q
  store ptr %i.cs, ptr %i.cj, align 8, !tbaa !13
  store i32 %.1.i.i100, ptr %i.ck, align 8, !tbaa !14
  store i8 1, ptr %i.cx, align 4, !tbaa !12
  %.pre.i107 = load i32, ptr %i.cd, align 8, !tbaa !16
  br label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i108

bb.s:                                             ; preds = %bb.p, %bb.o
  store i32 7, ptr %3, align 4, !tbaa !18
  br label %.critedge95

_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i108: ; preds = %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i106, %bb.m, %bb.l
  %i.cz = phi i32 [ %.pre.i107, %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i106 ], [ %i.ch, %bb.m ], [ %i.ch, %bb.l ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.db = add nsw i32 %i.cz, 1
  store i32 %i.db, ptr %i.cd, align 8, !tbaa !16
  %i.dc = sext i32 %i.cz to i64
  %i.dd = load ptr, ptr %i.da, align 8, !tbaa !13
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.dc
  store i64 %i.cg, ptr %i.de, align 8, !tbaa !33
  br label %.critedge95

bb.t:                                             ; preds = %bb.k
  %i.df = icmp samesign ult i32 %.088.lcssa, 1042490
  br i1 %i.df, label %bb.u, label %bb.ac

bb.u:                                             ; preds = %bb.t
  %i.dg = add nsw i32 %.088.lcssa, -10234         ; 3 uses
  %i.dh = urem i32 %i.dg, 254
  %i.di = add nuw nsw i32 %i.dh, 2
  %i.dj = udiv i32 %i.dg, 254
  %.lhs.trunc154 = trunc nuw nsw i32 %i.dj to i16
  %i.dk = urem i16 %.lhs.trunc154, 254
  %i.dl = shl nuw i16 %i.dk, 8
  %i.dm = zext i16 %i.dl to i32
  %i.dn = add nuw nsw i32 %i.dm, 512
  %i.do = udiv i32 %i.dg, 64516
  %i.dp = shl nuw nsw i32 %i.do, 16
  %i.dq = add nuw nsw i32 %i.dp, 7602176
  %i.dr = or disjoint i32 %i.di, %i.dq
  %i.ds = or i32 %i.dr, %i.dn
  %i.dt = or i32 %i.ds, %i.d
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.dv = zext i32 %i.dt to i64
  %i.dw = shl nuw i64 %i.dv, 32
  %i.dx = or disjoint i64 %i.dw, 83887360
  %i.dy = load i32, ptr %i.du, align 8, !tbaa !16 ; 6 uses
  %i.dz = icmp slt i32 %i.dy, 40
  br i1 %i.dz, label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i122, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !14 ; 2 uses
  %.not.i.not.i110 = icmp slt i32 %i.dy, %i.ec
  br i1 %.not.i.not.i110, label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i122, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ed = load i32, ptr %3, align 4, !tbaa !18
  %i.ee = icmp slt i32 %i.ed, 1
  br i1 %i.ee, label %.preheader.i.i111, label %.critedge95

.preheader.i.i111:                                ; preds = %bb.w, %.preheader.i.i111
  %.0.i.i112 = phi i32 [ %.1.i.i114, %.preheader.i.i111 ], [ %i.ec, %bb.w ] ; 3 uses
  %i.ef = icmp slt i32 %.0.i.i112, 1000
  %.1.v.i.i113 = select i1 %i.ef, i32 2, i32 1
  %.1.i.i114 = shl nsw i32 %.0.i.i112, %.1.v.i.i113 ; 4 uses
  %.not.i115 = icmp sgt i32 %.1.i.i114, %i.dy
  br i1 %.not.i115, label %bb.x, label %.preheader.i.i111, !llvm.loop !0

bb.x:                                             ; preds = %.preheader.i.i111
  %i.eg = icmp sgt i32 %.0.i.i112, 0
  br i1 %i.eg, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.eh = zext nneg i32 %.1.i.i114 to i64
  %i.ei = shl nuw nsw i64 %i.eh, 3
  %i.ej = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.ei) #19 ; 3 uses
  %.not.i.i.i116 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i116, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ek = load i32, ptr %i.eb, align 8, !tbaa !14
  %.1.i.i.i118 = tail call i32 @llvm.smin.i32(i32 %i.dy, i32 %i.ek)
  %i.el = load ptr, ptr %i.ea, align 8, !tbaa !13 ; 2 uses
  %i.em = sext i32 %.1.i.i.i118 to i64
  %i.en = shl nsw i64 %i.em, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ej, ptr align 8 %i.el, i64 %i.en, i1 false)
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 4, !tbaa !12
  %.not.i.i.i.i119 = icmp eq i8 %i.ep, 0
  br i1 %.not.i.i.i.i119, label %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i120, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @uprv_free_78(ptr noundef %i.el)
  br label %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i120

_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i120: ; preds = %bb.aa, %bb.z
  store ptr %i.ej, ptr %i.ea, align 8, !tbaa !13
  store i32 %.1.i.i114, ptr %i.eb, align 8, !tbaa !14
  store i8 1, ptr %i.eo, align 4, !tbaa !12
  %.pre.i121 = load i32, ptr %i.du, align 8, !tbaa !16
  br label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i122

bb.ab:                                            ; preds = %bb.y, %bb.x
  store i32 7, ptr %3, align 4, !tbaa !18
  br label %.critedge95

_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i122: ; preds = %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i120, %bb.v, %bb.u
  %i.eq = phi i32 [ %.pre.i121, %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i120 ], [ %i.dy, %bb.v ], [ %i.dy, %bb.u ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.es = add nsw i32 %i.eq, 1
  store i32 %i.es, ptr %i.du, align 8, !tbaa !16
  %i.et = sext i32 %i.eq to i64
  %i.eu = load ptr, ptr %i.er, align 8, !tbaa !13
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.et
  store i64 %i.dx, ptr %i.ev, align 8, !tbaa !33
  br label %.critedge95

bb.ac:                                            ; preds = %bb.t, %bb.a
  %i.ew = add nsw i32 %2, 1
  %i.ex = sdiv i32 %i.ew, 2
  %i.ey = shl i32 %i.ex, 16
  %i.ez = add i32 %i.ey, 8388608
  %i.fa = or i32 %i.d, %i.ez                      ; 2 uses
  %i.fb = sext i32 %2 to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %bb.ac
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %bb.ae ], [ %i.fb, %bb.ac ] ; 3 uses
  %i.fc = getelementptr i8, ptr %1, i64 %indvars.iv172
  %i.fd = getelementptr i8, ptr %i.fc, i64 -1
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !37
  %i.ff = icmp eq i8 %i.fe, 0
  br i1 %i.ff, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  %indvars.iv.next173 = add nsw i64 %indvars.iv172, -2 ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next173
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !37
  %i.fi = icmp eq i8 %i.fh, 0
  br i1 %i.fi, label %bb.ad, label %.critedge, !llvm.loop !118

.critedge:                                        ; preds = %bb.ad, %bb.ae
  %i.fj = trunc nsw i64 %indvars.iv172 to i32     ; 3 uses
  %i.fk = and i32 %i.fj, 1
  %.not = icmp eq i32 %i.fk, 0
  %i.fl = load i8, ptr %1, align 1, !tbaa !37
  %i.fm = sext i8 %i.fl to i32                    ; 2 uses
  br i1 %.not, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.critedge
  %i.fn = mul nsw i32 %i.fm, 10
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !37
  %i.fq = sext i8 %i.fp to i32
  %i.fr = add nsw i32 %i.fn, %i.fq
  br label %bb.ag

bb.ag:                                            ; preds = %.critedge, %bb.af
  %.082 = phi i32 [ %i.fr, %bb.af ], [ %i.fm, %.critedge ]
  %.080 = phi i32 [ 2, %bb.af ], [ 1, %.critedge ] ; 2 uses
  %.183.in158 = shl nsw i32 %.082, 1              ; 2 uses
  %i.fs = icmp slt i32 %.080, %i.fj
  br i1 %i.fs, label %.lr.ph165, label %._crit_edge166

.lr.ph165:                                        ; preds = %bb.ag
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.fx = zext nneg i32 %.080 to i64
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph165, %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit137
  %indvars.iv175 = phi i64 [ %i.fx, %.lr.ph165 ], [ %indvars.iv.next176, %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit137 ] ; 2 uses
  %.183163.in = phi i32 [ %.183.in158, %.lr.ph165 ], [ %.183.in, %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit137 ]
  %.0162 = phi i32 [ 8, %.lr.ph165 ], [ %.1, %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit137 ] ; 3 uses
  %.084160 = phi i32 [ %i.fa, %.lr.ph165 ], [ %.185, %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit137 ] ; 2 uses
  %.183163 = add nsw i32 %.183163.in, 11          ; 2 uses
  %i.fy = icmp eq i32 %.0162, 0
  br i1 %i.fy, label %bb.ai, label %bb.aq

bb.ai:                                            ; preds = %bb.ah
  %i.fz = or i32 %.183163, %.084160
  %i.ga = zext i32 %i.fz to i64
  %i.gb = shl nuw i64 %i.ga, 32
  %i.gc = or disjoint i64 %i.gb, 83887360
  %i.gd = load i32, ptr %i.ft, align 8, !tbaa !16 ; 6 uses
  %i.ge = icmp slt i32 %i.gd, 40
  br i1 %i.ge, label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i136, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gf = load i32, ptr %i.fv, align 8, !tbaa !14 ; 2 uses
  %.not.i.not.i124 = icmp slt i32 %i.gd, %i.gf
  br i1 %.not.i.not.i124, label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i136, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gg = load i32, ptr %3, align 4, !tbaa !18
  %i.gh = icmp slt i32 %i.gg, 1
  br i1 %i.gh, label %.preheader.i.i125, label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit137

.preheader.i.i125:                                ; preds = %bb.ak, %.preheader.i.i125
  %.0.i.i126 = phi i32 [ %.1.i.i128, %.preheader.i.i125 ], [ %i.gf, %bb.ak ] ; 3 uses
  %i.gi = icmp slt i32 %.0.i.i126, 1000
  %.1.v.i.i127 = select i1 %i.gi, i32 2, i32 1
  %.1.i.i128 = shl nsw i32 %.0.i.i126, %.1.v.i.i127 ; 4 uses
  %.not.i129 = icmp sgt i32 %.1.i.i128, %i.gd
  br i1 %.not.i129, label %bb.al, label %.preheader.i.i125, !llvm.loop !0

bb.al:                                            ; preds = %.preheader.i.i125
  %i.gj = icmp sgt i32 %.0.i.i126, 0
  br i1 %i.gj, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.gk = zext nneg i32 %.1.i.i128 to i64
  %i.gl = shl nuw nsw i64 %i.gk, 3
  %i.gm = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.gl) #19 ; 3 uses
  %.not.i.i.i130 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.i130, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gn = load i32, ptr %i.fv, align 8, !tbaa !14
  %.1.i.i.i132 = tail call i32 @llvm.smin.i32(i32 %i.gd, i32 %i.gn)
  %i.go = load ptr, ptr %i.fu, align 8, !tbaa !13 ; 2 uses
  %i.gp = sext i32 %.1.i.i.i132 to i64
  %i.gq = shl nsw i64 %i.gp, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gm, ptr align 8 %i.go, i64 %i.gq, i1 false)
  %i.gr = load i8, ptr %i.fw, align 4, !tbaa !12
  %.not.i.i.i.i133 = icmp eq i8 %i.gr, 0
  br i1 %.not.i.i.i.i133, label %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i134, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @uprv_free_78(ptr noundef %i.go)
  br label %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i134

_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i134: ; preds = %bb.ao, %bb.an
  store ptr %i.gm, ptr %i.fu, align 8, !tbaa !13
  store i32 %.1.i.i128, ptr %i.fv, align 8, !tbaa !14
  store i8 1, ptr %i.fw, align 4, !tbaa !12
  %.pre.i135 = load i32, ptr %i.ft, align 8, !tbaa !16
  br label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i136

bb.ap:                                            ; preds = %bb.am, %bb.al
  store i32 7, ptr %3, align 4, !tbaa !18
  br label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit137

_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i136: ; preds = %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i134, %bb.aj, %bb.ai
  %i.gs = phi i32 [ %.pre.i135, %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i134 ], [ %i.gd, %bb.aj ], [ %i.gd, %bb.ai ] ; 2 uses
  %i.gt = add nsw i32 %i.gs, 1
  store i32 %i.gt, ptr %i.ft, align 8, !tbaa !16
  %i.gu = sext i32 %i.gs to i64
  %i.gv = load ptr, ptr %i.fu, align 8, !tbaa !13
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.gv, i64 %i.gu
  store i64 %i.gc, ptr %i.gw, align 8, !tbaa !33
  br label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit137

bb.aq:                                            ; preds = %bb.ah
  %i.gx = shl i32 %.183163, %.0162
  %i.gy = or i32 %i.gx, %.084160
  %i.gz = add nsw i32 %.0162, -8
  br label %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit137

_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit137: ; preds = %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i136, %bb.ap, %bb.ak, %bb.aq
  %.185 = phi i32 [ %i.gy, %bb.aq ], [ %i.d, %bb.ak ], [ %i.d, %bb.ap ], [ %i.d, %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i136 ] ; 2 uses
  %.1 = phi i32 [ %i.gz, %bb.aq ], [ 16, %bb.ak ], [ 16, %bb.ap ], [ 16, %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i136 ] ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv175 ; 2 uses
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !37
  %i.hc = sext i8 %i.hb to i32
  %i.hd = mul nsw i32 %i.hc, 10
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 1
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !37
  %i.hg = sext i8 %i.hf to i32
  %i.hh = add nsw i32 %i.hd, %i.hg
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 2 ; 2 uses
  %.183.in = shl nsw i32 %i.hh, 1                 ; 2 uses
  %i.hi = trunc nuw i64 %indvars.iv.next176 to i32
  %i.hj = icmp slt i32 %i.hi, %i.fj
  br i1 %i.hj, label %bb.ah, label %._crit_edge166, !llvm.loop !119

._crit_edge166:                                   ; preds = %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit137, %bb.ag
  %.084.lcssa = phi i32 [ %i.fa, %bb.ag ], [ %.185, %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit137 ]
  %.0.lcssa = phi i32 [ 8, %bb.ag ], [ %.1, %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit137 ]
  %.183.in.lcssa = phi i32 [ %.183.in158, %bb.ag ], [ %.183.in, %_ZN6icu_7817CollationIterator8CEBuffer6appendElR10UErrorCode.exit137 ]
  %i.hk = add nsw i32 %.183.in.lcssa, 10
  %i.hl = shl i32 %i.hk, %.0.lcssa
  %i.hm = or i32 %i.hl, %.084.lcssa
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ho = zext i32 %i.hm to i64
  %i.hp = shl nuw i64 %i.ho, 32
  %i.hq = or disjoint i64 %i.hp, 83887360
  %i.hr = load i32, ptr %i.hn, align 8, !tbaa !16 ; 6 uses
  %i.hs = icmp slt i32 %i.hr, 40
  br i1 %i.hs, label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i150, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge166
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !14 ; 2 uses
  %.not.i.not.i138 = icmp slt i32 %i.hr, %i.hv
  br i1 %.not.i.not.i138, label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i150, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hw = load i32, ptr %3, align 4, !tbaa !18
  %i.hx = icmp slt i32 %i.hw, 1
  br i1 %i.hx, label %.preheader.i.i139, label %.critedge95

.preheader.i.i139:                                ; preds = %bb.as, %.preheader.i.i139
  %.0.i.i140 = phi i32 [ %.1.i.i142, %.preheader.i.i139 ], [ %i.hv, %bb.as ] ; 3 uses
  %i.hy = icmp slt i32 %.0.i.i140, 1000
  %.1.v.i.i141 = select i1 %i.hy, i32 2, i32 1
  %.1.i.i142 = shl nsw i32 %.0.i.i140, %.1.v.i.i141 ; 4 uses
  %.not.i143 = icmp sgt i32 %.1.i.i142, %i.hr
  br i1 %.not.i143, label %bb.at, label %.preheader.i.i139, !llvm.loop !0

bb.at:                                            ; preds = %.preheader.i.i139
  %i.hz = icmp sgt i32 %.0.i.i140, 0
  br i1 %i.hz, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.ia = zext nneg i32 %.1.i.i142 to i64
  %i.ib = shl nuw nsw i64 %i.ia, 3
  %i.ic = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.ib) #19 ; 3 uses
  %.not.i.i.i144 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i.i144, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.id = load i32, ptr %i.hu, align 8, !tbaa !14
  %.1.i.i.i146 = tail call i32 @llvm.smin.i32(i32 %i.hr, i32 %i.id)
  %i.ie = load ptr, ptr %i.ht, align 8, !tbaa !13 ; 2 uses
  %i.if = sext i32 %.1.i.i.i146 to i64
  %i.ig = shl nsw i64 %i.if, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ic, ptr align 8 %i.ie, i64 %i.ig, i1 false)
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ii = load i8, ptr %i.ih, align 4, !tbaa !12
  %.not.i.i.i.i147 = icmp eq i8 %i.ii, 0
  br i1 %.not.i.i.i.i147, label %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i148, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @uprv_free_78(ptr noundef %i.ie)
  br label %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i148

_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i148: ; preds = %bb.aw, %bb.av
  store ptr %i.ic, ptr %i.ht, align 8, !tbaa !13
  store i32 %.1.i.i142, ptr %i.hu, align 8, !tbaa !14
  store i8 1, ptr %i.ih, align 4, !tbaa !12
  %.pre.i149 = load i32, ptr %i.hn, align 8, !tbaa !16
  br label %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i150

bb.ax:                                            ; preds = %bb.au, %bb.at
  store i32 7, ptr %3, align 4, !tbaa !18
  br label %.critedge95

_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i150: ; preds = %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i148, %bb.ar, %._crit_edge166
  %i.ij = phi i32 [ %.pre.i149, %_ZN6icu_7815MaybeStackArrayIlLi40EE6resizeEii.exit.i.i148 ], [ %i.hr, %bb.ar ], [ %i.hr, %._crit_edge166 ] ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.il = add nsw i32 %i.ij, 1
  store i32 %i.il, ptr %i.hn, align 8, !tbaa !16
  %i.im = sext i32 %i.ij to i64
  %i.in = load ptr, ptr %i.ik, align 8, !tbaa !13
  %i.io = getelementptr inbounds [8 x i8], ptr %i.in, i64 %i.im
  store i64 %i.hq, ptr %i.io, align 8, !tbaa !33
  br label %.critedge95

.critedge95:                                      ; preds = %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i150, %bb.ax, %bb.as, %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i122, %bb.ab, %bb.w, %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i108, %bb.s, %bb.n, %_ZN6icu_7817CollationIterator8CEBuffer20ensureAppendCapacityEiR10UErrorCode.exit.i, %bb.j, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !89
  %.not.i.i = icmp eq i8 %i.b, 0
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !88
  invoke void @uprv_free_78(ptr noundef %i.c)
          to label %_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #18
  unreachable

_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit:     ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6icu_7817CollationIterator10previousCEERNS_9UVector32ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(389) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1                     ; 2 uses
  store i32 %i.d, ptr %i.a, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = zext nneg i32 %i.d to i64
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load i64, ptr %i.h, align 8, !tbaa !33
  br label %_ZN6icu_789Collation10ceFromCE32Ej.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN6icu_789UVector3217removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.j = load ptr, ptr %0, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(389) %0)
  %i.n = load ptr, ptr %0, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i32 %i.p(ptr noundef nonnull align 8 dereferenceable(389) %0, ptr noundef nonnull align 4 dereferenceable(4) %2) ; 23 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %_ZN6icu_789Collation10ceFromCE32Ej.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.v = load i8, ptr %i.u, align 4, !tbaa !30
  %i.w = tail call noundef signext i8 @_ZNK6icu_7813CollationData16isUnsafeBackwardEia(ptr noundef nonnull align 8 dereferenceable(140) %i.t, i32 noundef %i.q, i8 noundef signext %i.v)
  %.not = icmp eq i8 %i.w, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = tail call noundef i64 @_ZN6icu_7817CollationIterator16previousCEUnsafeEiRNS_9UVector32ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(389) %0, i32 poison, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %_ZN6icu_789Collation10ceFromCE32Ej.exit

bb.f:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !45   ; 7 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !52   ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !56 ; 3 uses
  %i.ac = icmp samesign ult i32 %i.q, 55296
  br i1 %i.ac, label %_ZNK6icu_7813CollationData7getCE32Ei.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp samesign ult i32 %i.q, 65536
  br i1 %i.ad, label %_ZNK6icu_7813CollationData7getCE32Ei.exit.thread51, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp samesign ugt i32 %i.q, 1114111
  br i1 %i.ae, label %_ZNK6icu_7813CollationData7getCE32Ei.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 44
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !59
  %.not.i = icmp slt i32 %i.q, %i.ag
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !60
  br label %_ZNK6icu_7813CollationData7getCE32Ei.exit

bb.k:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !57  ; 2 uses
  %i.ak = lshr i32 %i.q, 11
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4160
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !58
  %i.ap = zext i16 %i.ao to i32
  %i.aq = lshr i32 %i.q, 5
  %i.ar = and i32 %i.aq, 63
  %i.as = add nuw nsw i32 %i.ar, %i.ap
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !58
  %i.aw = zext i16 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 2
  %i.ay = and i32 %i.q, 31
  %i.az = add nuw nsw i32 %i.ax, %i.ay
  br label %_ZNK6icu_7813CollationData7getCE32Ei.exit

_ZNK6icu_7813CollationData7getCE32Ei.exit:        ; preds = %bb.h, %bb.j, %bb.k
  %i.ba = phi i32 [ %i.az, %bb.k ], [ %i.ai, %bb.j ], [ 128, %bb.h ]
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !44 ; 2 uses
  %i.be = icmp eq i32 %i.bd, 192
  br i1 %i.be, label %bb.l, label %bb.p

_ZNK6icu_7813CollationData7getCE32Ei.exit.thread51: ; preds = %bb.g
  %i.bf = load ptr, ptr %i.z, align 8, !tbaa !57
  %i.bg = icmp samesign ult i32 %i.q, 56320
  %i.bh = select i1 %i.bg, i32 320, i32 0
  %i.bi = lshr i32 %i.q, 5
  %i.bj = add nuw nsw i32 %i.bh, %i.bi
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !58
  %i.bn = zext i16 %i.bm to i32
  %i.bo = shl nuw nsw i32 %i.bn, 2
  %i.bp = and i32 %i.q, 31
  %i.bq = add nuw nsw i32 %i.bo, %i.bp
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !44 ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 192
  br i1 %i.bu, label %.thread52, label %bb.p

_ZNK6icu_7813CollationData7getCE32Ei.exit.thread: ; preds = %bb.f
  %i.bv = load ptr, ptr %i.z, align 8, !tbaa !57
  %i.bw = lshr i32 %i.q, 5
  %i.bx = zext nneg i32 %i.bw to i64              ; 2 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !58
  %i.ca = zext i16 %i.bz to i32
  %i.cb = shl nuw nsw i32 %i.ca, 2
  %i.cc = and i32 %i.q, 31                        ; 2 uses
  %i.cd = add nuw nsw i32 %i.cb, %i.cc
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !44 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 192
  br i1 %i.ch, label %.thread, label %bb.p

.thread:                                          ; preds = %_ZNK6icu_7813CollationData7getCE32Ei.exit.thread
  %i.ci = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !51 ; 2 uses
end_hunk_4
