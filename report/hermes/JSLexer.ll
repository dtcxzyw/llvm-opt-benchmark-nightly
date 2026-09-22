Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/JSLexer?download=true
inline.NumInlined: 2539
inline.NumDeleted: 512
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6hermes6parser7JSLexer21scanPrivateIdentifierEv:bb.a
  br label %bb.e

bb.b:                                             ; preds = %_ZN6hermes22isASCIIIdentifierStartEj.exit
  %i.i = tail call noundef zeroext i1 @_ZN6hermes6parser7JSLexer22consumeIdentifierStartEv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6hermes6parser7JSLexer19scanIdentifierPartsILNS1_14IdentifierModeE0EEEvv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 1, ptr %i.k, align 1, !tbaa !76
  store ptr @.str.76, ptr %1, align 8, !tbaa !72
  store i8 3, ptr %i.j, align 8, !tbaa !77
  %i.l = call noundef zeroext i1 @_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(18) %1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %_ZN6hermes22isASCIIIdentifierStartEj.exit.thread
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 2, ptr %i.m, align 8, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ true, %bb.e ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvh::SmallString.64", align 8 ; 15 uses
  %8 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %9 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %10 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %11 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %12 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %13 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  %14 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %15 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 29 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 16 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !72
  %i.e = icmp ne i8 %i.d, 48                      ; 2 uses
  br i1 %i.e, label %.split.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !72    ; 2 uses
  %i.h = or i8 %i.g, 32                           ; 2 uses
  switch i8 %i.h, label %bb.e [
    i8 120, label %.split.us.preheader
    i8 111, label %bb.c
    i8 98, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  br label %.split.preheader.sink.split

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  br label %.split.preheader.sink.split

bb.e:                                             ; preds = %bb.b
  %i.k = icmp eq i8 %i.g, 46
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.m = icmp eq i8 %i.h, 101
  br i1 %i.m, label %bb.h, label %.split.preheader.sink.split

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  br label %bb.p

.split.preheader.sink.split:                      ; preds = %bb.g, %bb.d, %bb.c
  %.sink = phi ptr [ %i.j, %bb.d ], [ %i.i, %bb.c ], [ %i.f, %bb.g ] ; 2 uses
  %.0211.ph.ph = phi i32 [ 2, %bb.d ], [ 8, %bb.c ], [ 8, %bb.g ]
  %.0207.ph.ph = phi i8 [ 0, %bb.d ], [ 0, %bb.c ], [ 1, %bb.g ]
  %.087.ph.ph = phi ptr [ %i.j, %bb.d ], [ %i.i, %bb.c ], [ %i.c, %bb.g ]
  store ptr %.sink, ptr %i.b, align 8, !tbaa !55
  br label %.split.preheader

.split.preheader:                                 ; preds = %.split.preheader.sink.split, %bb.a
  %.promoted.ph = phi ptr [ %i.c, %bb.a ], [ %.sink, %.split.preheader.sink.split ] ; 3 uses
  %.0211.ph = phi i32 [ 10, %bb.a ], [ %.0211.ph.ph, %.split.preheader.sink.split ] ; 2 uses
  %.0207.ph = phi i8 [ 0, %bb.a ], [ %.0207.ph.ph, %.split.preheader.sink.split ] ; 2 uses
  %.087.ph = phi ptr [ %i.c, %bb.a ], [ %.087.ph.ph, %.split.preheader.sink.split ] ; 2 uses
  %i.o = load i8, ptr %.promoted.ph, align 1, !tbaa !72 ; 3 uses
  %i.p = sext i8 %i.o to i32
  %isdigittmp361 = add nsw i32 %i.p, -48
  %isdigit362 = icmp ult i32 %isdigittmp361, 10
  %.old363 = icmp eq i8 %i.o, 95                  ; 2 uses
  %or.cond265364 = or i1 %isdigit362, %.old363
  br i1 %or.cond265364, label %.critedge, label %.split244.us

.split.us.preheader:                              ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.critedge.us
  %.sink346 = phi ptr [ %i.q, %.split.us.preheader ], [ %i.z, %.critedge.us ] ; 4 uses
  %.090.us = phi i8 [ 0, %.split.us.preheader ], [ %i.y, %.critedge.us ] ; 2 uses
  store ptr %.sink346, ptr %i.b, align 8, !tbaa !55
  %i.r = load i8, ptr %.sink346, align 1, !tbaa !72 ; 4 uses
  %i.s = sext i8 %i.r to i32                      ; 2 uses
  %isdigittmp.us = add nsw i32 %i.s, -48
  %isdigit.us = icmp ult i32 %isdigittmp.us, 10
  br i1 %isdigit.us, label %.critedge.us, label %bb.i

bb.i:                                             ; preds = %.split.us
  %i.t = or i32 %i.s, 32
  %i.u = add nsw i32 %i.t, -97
  %or.cond128.us = icmp ult i32 %i.u, 6
  %i.v = icmp eq i8 %i.r, 95
  %or.cond238.us = or i1 %i.v, %or.cond128.us
  br i1 %or.cond238.us, label %.critedge.us, label %.split244.us

.critedge.us:                                     ; preds = %bb.i, %.split.us
  %i.w = icmp eq i8 %i.r, 95
  %i.x = zext i1 %i.w to i8
  %i.y = or i8 %.090.us, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %.sink346, i64 1
  br label %.split.us, !llvm.loop !264

.critedge:                                        ; preds = %.split.preheader, %.critedge
  %.old366 = phi i1 [ %.old, %.critedge ], [ %.old363, %.split.preheader ]
  %.090365 = phi i8 [ %i.ac, %.critedge ], [ 0, %.split.preheader ]
  %i.aa = phi ptr [ %i.ad, %.critedge ], [ %.promoted.ph, %.split.preheader ]
  %i.ab = zext i1 %.old366 to i8
  %i.ac = or i8 %.090365, %i.ab                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 4 uses
  store ptr %i.ad, ptr %i.b, align 8, !tbaa !55
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !72  ; 3 uses
  %i.af = sext i8 %i.ae to i32
  %isdigittmp = add nsw i32 %i.af, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  %.old = icmp eq i8 %i.ae, 95                    ; 2 uses
  %or.cond265 = or i1 %isdigit, %.old
  br i1 %or.cond265, label %.critedge, label %.split244.us, !llvm.loop !264

.split244.us:                                     ; preds = %bb.i, %.critedge, %.split.preheader
  %.087311 = phi ptr [ %.087.ph, %.split.preheader ], [ %.087.ph, %.critedge ], [ %i.q, %bb.i ] ; 4 uses
  %.0207309 = phi i8 [ %.0207.ph, %.split.preheader ], [ %.0207.ph, %.critedge ], [ 0, %bb.i ] ; 4 uses
  %.0211307 = phi i32 [ %.0211.ph, %.split.preheader ], [ %.0211.ph, %.critedge ], [ 16, %bb.i ] ; 4 uses
  %.us-phi = phi i8 [ 0, %.split.preheader ], [ %i.ac, %.critedge ], [ %.090.us, %bb.i ] ; 4 uses
  %.us-phi245 = phi ptr [ %.promoted.ph, %.split.preheader ], [ %i.ad, %.critedge ], [ %.sink346, %bb.i ] ; 2 uses
  %.us-phi246 = phi i8 [ %i.o, %.split.preheader ], [ %i.ae, %.critedge ], [ %i.r, %bb.i ] ; 2 uses
  %i.ag = trunc nuw i8 %.0207309 to i1
  %or.cond = or i1 %i.e, %i.ag
  br i1 %or.cond, label %bb.j, label %.loopexit239

bb.j:                                             ; preds = %.split244.us
  %i.ah = icmp eq i8 %.us-phi246, 46
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %.us-phi245, i64 1
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.aj = and i8 %.us-phi246, -33
  %i.ak = icmp eq i8 %i.aj, 69
  br i1 %i.ak, label %bb.m, label %.loopexit239

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %.us-phi245, i64 1
  br label %bb.p

bb.n:                                             ; preds = %bb.k, %bb.f
  %.1212 = phi i32 [ 10, %bb.f ], [ %.0211307, %bb.k ] ; 2 uses
  %.1208 = phi i8 [ 0, %bb.f ], [ %.0207309, %bb.k ] ; 2 uses
  %storemerge = phi ptr [ %i.l, %bb.f ], [ %i.ai, %bb.k ] ; 4 uses
  %.191 = phi i8 [ 0, %bb.f ], [ %.us-phi, %bb.k ] ; 2 uses
  %.188 = phi ptr [ %i.c, %bb.f ], [ %.087311, %bb.k ] ; 2 uses
  store ptr %storemerge, ptr %i.b, align 8, !tbaa !55
  %i.am = load i8, ptr %storemerge, align 1, !tbaa !72 ; 3 uses
  %i.an = sext i8 %i.am to i32
  %isdigittmp111249 = add nsw i32 %i.an, -48
  %isdigit112250 = icmp ult i32 %isdigittmp111249, 10
  %i.ao = icmp eq i8 %i.am, 95                    ; 2 uses
  %or.cond129251 = or i1 %i.ao, %isdigit112250
  br i1 %or.cond129251, label %.critedge4, label %._crit_edge

.critedge4:                                       ; preds = %bb.n, %.critedge4
  %i.ap = phi i1 [ %i.av, %.critedge4 ], [ %i.ao, %bb.n ]
  %.292253 = phi i8 [ %17, %.critedge4 ], [ %.191, %bb.n ]
  %storemerge110252 = phi ptr [ %i.as, %.critedge4 ], [ %storemerge, %bb.n ]
  %i.aq = zext i1 %i.ap to i8
  %i.ar = or i8 %.292253, %i.aq
  %16 = icmp ne i8 %i.ar, 0
  %17 = zext i1 %16 to i8                         ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %storemerge110252, i64 1 ; 4 uses
  store ptr %i.as, ptr %i.b, align 8, !tbaa !55
  %i.at = load i8, ptr %i.as, align 1, !tbaa !72  ; 3 uses
  %i.au = sext i8 %i.at to i32
  %isdigittmp111 = add nsw i32 %i.au, -48
  %isdigit112 = icmp ult i32 %isdigittmp111, 10
  %i.av = icmp eq i8 %i.at, 95                    ; 2 uses
  %or.cond129 = or i1 %i.av, %isdigit112
  br i1 %or.cond129, label %.critedge4, label %._crit_edge, !llvm.loop !265

._crit_edge:                                      ; preds = %.critedge4, %bb.n
  %storemerge110.lcssa = phi ptr [ %storemerge, %bb.n ], [ %i.as, %.critedge4 ]
  %.292.lcssa = phi i8 [ %.191, %bb.n ], [ %17, %.critedge4 ] ; 2 uses
  %.lcssa240 = phi i8 [ %i.am, %bb.n ], [ %i.at, %.critedge4 ]
  %i.aw = and i8 %.lcssa240, -33
  %i.ax = icmp eq i8 %i.aw, 69
  br i1 %i.ax, label %bb.o, label %.loopexit239

bb.o:                                             ; preds = %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge110.lcssa, i64 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.h
  %.sink347 = phi ptr [ %i.ay, %bb.o ], [ %i.al, %bb.m ], [ %i.n, %bb.h ] ; 4 uses
  %.2213 = phi i32 [ %.1212, %bb.o ], [ %.0211307, %bb.m ], [ 10, %bb.h ] ; 2 uses
  %.2209 = phi i8 [ %.1208, %bb.o ], [ %.0207309, %bb.m ], [ 0, %bb.h ] ; 2 uses
  %.393 = phi i8 [ %.292.lcssa, %bb.o ], [ %.us-phi, %bb.m ], [ 0, %bb.h ]
  %.289 = phi ptr [ %.188, %bb.o ], [ %.087311, %bb.m ], [ %i.c, %bb.h ] ; 2 uses
  store ptr %.sink347, ptr %i.b, align 8, !tbaa !55
  %i.az = load i8, ptr %.sink347, align 1, !tbaa !72 ; 2 uses
  switch i8 %i.az, label %bb.r [
    i8 43, label %bb.q
    i8 45, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %.sink347, i64 1 ; 3 uses
  store ptr %i.ba, ptr %i.b, align 8, !tbaa !55
  %.pre = load i8, ptr %i.ba, align 1, !tbaa !72
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.bb = phi i8 [ %i.az, %bb.p ], [ %.pre, %bb.q ] ; 2 uses
  %.promoted256 = phi ptr [ %.sink347, %bb.p ], [ %i.ba, %bb.q ]
  %i.bc = sext i8 %i.bb to i32
  %isdigittmp113 = add nsw i32 %i.bc, -48
  %isdigit114 = icmp ult i32 %isdigittmp113, 10
  br i1 %isdigit114, label %.critedge6, label %.loopexit239.thread

.critedge6:                                       ; preds = %bb.r, %.critedge6
  %i.bd = phi i8 [ %i.bj, %.critedge6 ], [ %i.bb, %bb.r ]
  %i.be = phi ptr [ %i.bi, %.critedge6 ], [ %.promoted256, %bb.r ]
  %.494 = phi i8 [ %19, %.critedge6 ], [ %.393, %bb.r ]
  %i.bf = icmp eq i8 %i.bd, 95
  %i.bg = zext i1 %i.bf to i8
  %i.bh = or i8 %.494, %i.bg
  %18 = icmp ne i8 %i.bh, 0
  %19 = zext i1 %18 to i8                         ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 3 uses
  store ptr %i.bi, ptr %i.b, align 8, !tbaa !55
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !72  ; 3 uses
  %i.bk = sext i8 %i.bj to i32
  %isdigittmp115 = add nsw i32 %i.bk, -48
  %isdigit116 = icmp ult i32 %isdigittmp115, 10
  %i.bl = icmp eq i8 %i.bj, 95
  %or.cond130 = or i1 %i.bl, %isdigit116
  br i1 %or.cond130, label %.critedge6, label %.loopexit239, !llvm.loop !266

.loopexit239:                                     ; preds = %.critedge6, %._crit_edge, %.split244.us, %bb.l
  %.3214 = phi i32 [ %.0211307, %.split244.us ], [ %.0211307, %bb.l ], [ %.1212, %._crit_edge ], [ %.2213, %.critedge6 ] ; 11 uses
  %.3210 = phi i8 [ 0, %.split244.us ], [ %.0207309, %bb.l ], [ %.1208, %._crit_edge ], [ %.2209, %.critedge6 ] ; 3 uses
  %.5 = phi i8 [ %.us-phi, %.split244.us ], [ %.us-phi, %bb.l ], [ %.292.lcssa, %._crit_edge ], [ %19, %.critedge6 ] ; 3 uses
  %.3 = phi ptr [ %.087311, %.split244.us ], [ %.087311, %bb.l ], [ %.188, %._crit_edge ], [ %.289, %.critedge6 ] ; 18 uses
  %.0 = phi i1 [ false, %.split244.us ], [ false, %bb.l ], [ true, %._crit_edge ], [ true, %.critedge6 ] ; 3 uses
  %i.bm = tail call noundef zeroext i1 @_ZN6hermes6parser7JSLexer22consumeIdentifierStartEv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  br i1 %i.bm, label %bb.s, label %bb.ag

.loopexit239.thread:                              ; preds = %bb.r
  %i.bn = tail call noundef zeroext i1 @_ZN6hermes6parser7JSLexer22consumeIdentifierStartEv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  br i1 %i.bn, label %bb.s, label %..thread224_crit_edge

bb.s:                                             ; preds = %.loopexit239.thread, %.loopexit239
  %.0328 = phi i1 [ true, %.loopexit239.thread ], [ %.0, %.loopexit239 ]
  %.3325 = phi ptr [ %.289, %.loopexit239.thread ], [ %.3, %.loopexit239 ] ; 5 uses
  %.3210322 = phi i8 [ %.2209, %.loopexit239.thread ], [ %.3210, %.loopexit239 ]
  %.3214320 = phi i32 [ %.2213, %.loopexit239.thread ], [ %.3214, %.loopexit239 ] ; 2 uses
  tail call void @_ZN6hermes6parser7JSLexer22consumeIdentifierPartsILNS1_14IdentifierModeE0EEEvv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !55  ; 12 uses
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.c to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 5 uses
  br i1 %.0328, label %.thread224, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = trunc nuw i8 %.3210322 to i1
  br i1 %i.bs, label %bb.u, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread217

bb.u:                                             ; preds = %bb.t
  %i.bt = icmp eq i64 %i.br, 2
  br i1 %i.bt, label %_ZNK4llvh9StringRef6equalsES0_.exit, label %.thread224

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.u
  %i.bu = load i16, ptr %i.c, align 1
  %i.bv = icmp ne i16 %i.bu, 28208
  %i.bw = zext i1 %i.bv to i32
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread217, label %.thread224

_ZNK4llvh9StringRef6equalsES0_.exit.thread217:    ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit, %bb.t
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !136
  %i.ca = icmp eq i32 %i.bz, 1
  br i1 %i.ca, label %_ZNK4llvh9StringRef6equalsES0_.exit136, label %.thread224

_ZNK4llvh9StringRef6equalsES0_.exit136:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread217
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !135
  %lhsc = load i8, ptr %i.cc, align 1
  %i.cd = icmp eq i8 %lhsc, 110
  br i1 %i.cd, label %_ZNK4llvh9StringRef6equalsES0_.exit136.thread219, label %.thread224

_ZNK4llvh9StringRef6equalsES0_.exit136.thread219: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit136
  %i.ce = getelementptr inbounds i8, ptr %i.bo, i64 -1 ; 3 uses
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %.3325 to i64
  %i.ch = sub i64 %i.cf, %i.cg                    ; 2 uses
  %.not117 = icmp eq ptr %i.ce, %.3325
  br i1 %.not117, label %.thread224, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit136.thread219
  %i.ci = getelementptr inbounds nuw i8, ptr %.3325, i64 %i.ch
  %i.cj = add nuw nsw i32 %.3214320, 48           ; 2 uses
  %i.ck = add nuw nsw i32 %.3214320, 87           ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ci, i64 -1
  %i.cm = load i8, ptr %.3325, align 1, !tbaa !72 ; 3 uses
  %i.cn = add i8 %i.cm, -48
  %or.cond.peel.i = icmp ult i8 %i.cn, 10
  %i.co = zext nneg i8 %i.cm to i32
  %i.cp = icmp sgt i32 %i.cj, %i.co
  %or.cond33.peel.i = select i1 %or.cond.peel.i, i1 %i.cp, i1 false
  br i1 %or.cond33.peel.i, label %.critedge.peel.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i
  %i.cq = or i8 %i.cm, 32                         ; 2 uses
  %i.cr = icmp sgt i8 %i.cq, 96
  %i.cs = zext nneg i8 %i.cq to i32
  %i.ct = icmp sgt i32 %i.ck, %i.cs
  %or.cond50.peel.i = select i1 %i.cr, i1 %i.ct, i1 false
  br i1 %or.cond50.peel.i, label %.critedge.peel.i, label %.thread224

.critedge.peel.i:                                 ; preds = %bb.v, %.lr.ph.i
  %.not.peel.i = icmp samesign eq i64 %i.ch, 1
  br i1 %.not.peel.i, label %.critedge132, label %.peel.next.i

.peel.next.i:                                     ; preds = %.critedge.peel.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.3325, i64 1
  br label %bb.w

bb.w:                                             ; preds = %.critedge.i, %.peel.next.i
  %.02441.i = phi ptr [ %i.cu, %.peel.next.i ], [ %i.dh, %.critedge.i ] ; 4 uses
  %i.cv = load i8, ptr %.02441.i, align 1, !tbaa !72 ; 4 uses
  %i.cw = add i8 %i.cv, -48
  %or.cond.i = icmp ult i8 %i.cw, 10
  %i.cx = zext nneg i8 %i.cv to i32
  %i.cy = icmp sgt i32 %i.cj, %i.cx
  %or.cond33.i = select i1 %or.cond.i, i1 %i.cy, i1 false
  br i1 %or.cond33.i, label %.critedge.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cz = or i8 %i.cv, 32                         ; 2 uses
  %i.da = icmp sgt i8 %i.cz, 96
  %i.db = zext nneg i8 %i.cz to i32
  %i.dc = icmp sgt i32 %i.ck, %i.db
  %or.cond50.i = select i1 %i.da, i1 %i.dc, i1 false
  br i1 %or.cond50.i, label %.critedge.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dd = icmp ne i8 %i.cv, 95
  %i.de = icmp eq ptr %.02441.i, %i.cl
  %or.cond54.i = select i1 %i.dd, i1 true, i1 %i.de, !prof !182
  br i1 %or.cond54.i, label %.thread224, label %bb.z, !prof !182

bb.z:                                             ; preds = %bb.y
  %i.df = getelementptr inbounds nuw i8, ptr %.02441.i, i64 1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !72
  %.not30.i = icmp eq i8 %i.dg, 95
  br i1 %.not30.i, label %.thread224, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z, %bb.x, %bb.w
  %i.dh = getelementptr inbounds nuw i8, ptr %.02441.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.dh, %i.ce
  br i1 %.not.i, label %.critedge132, label %bb.w, !llvm.loop !267

.critedge132:                                     ; preds = %.critedge.i, %.critedge.peel.i
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 4 uses
  store i32 0, ptr %i.dj, align 8, !tbaa !136
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !141
  %i.dm = zext i32 %i.dl to i64
  %i.dn = icmp ugt i64 %i.br, %i.dm
  br i1 %i.dn, label %.thread.i, label %bb.aa

.thread.i:                                        ; preds = %.critedge132
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 456
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %i.di, ptr noundef nonnull %i.do, i64 noundef %i.br, i64 noundef 1) #18
  %.pre7.pre.i.i = load i32, ptr %i.dj, align 8, !tbaa !136
  %i.dp = zext i32 %.pre7.pre.i.i to i64
  br label %bb.ab

bb.aa:                                            ; preds = %.critedge132
  %.not.i.i.i = icmp eq ptr %i.bo, %i.c
  br i1 %.not.i.i.i, label %_ZN4llvh11SmallStringILj256EE6appendENS_9StringRefE.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.thread.i
  %.pre7.i4.i = phi i64 [ %i.dp, %.thread.i ], [ 0, %bb.aa ]
  %i.dq = load ptr, ptr %i.di, align 8, !tbaa !135
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.pre7.i4.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dr, ptr nonnull align 1 %i.c, i64 %i.br, i1 false)
  %.pre.i.i = load i32, ptr %i.dj, align 8, !tbaa !136
  br label %_ZN4llvh11SmallStringILj256EE6appendENS_9StringRefE.exit

_ZN4llvh11SmallStringILj256EE6appendENS_9StringRefE.exit: ; preds = %bb.aa, %bb.ab
  %i.ds = phi i32 [ 0, %bb.aa ], [ %.pre.i.i, %bb.ab ]
  %i.dt = trunc i64 %i.br to i32
  %i.du = add i32 %i.ds, %i.dt                    ; 2 uses
  store i32 %i.du, ptr %i.dj, align 8, !tbaa !136
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dw = load ptr, ptr %i.di, align 8, !tbaa !135 ; 2 uses
  %i.dx = zext i32 %i.du to i64                   ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 51
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !150, !range !65, !noundef !57
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.ac, label %bb.ad, !prof !68

bb.ac:                                            ; preds = %_ZN4llvh11SmallStringILj256EE6appendENS_9StringRefE.exit
  %i.eb = tail call noundef ptr @_ZN6hermes6parser7JSLexer25convertSurrogatesInStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr %i.dw, i64 %i.dx)
  br label %bb.ae

bb.ad:                                            ; preds = %_ZN4llvh11SmallStringILj256EE6appendENS_9StringRefE.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !138, !nonnull !57, !align !58
  %i.ee = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.ed, ptr %i.dw, i64 %i.dx)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.0.i141 = phi ptr [ %i.eb, %bb.ac ], [ %i.ee, %bb.ad ]
  store i32 115, ptr %i.dv, align 8, !tbaa !23
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.0.i141, ptr %i.ef, align 8, !tbaa !184
  br label %bb.cb

..thread224_crit_edge:                            ; preds = %.loopexit239.thread
  %.pre280 = load ptr, ptr %i.b, align 8, !tbaa !55
  br label %.thread224

.thread224:                                       ; preds = %bb.z, %bb.y, %..thread224_crit_edge, %_ZNK4llvh9StringRef6equalsES0_.exit136, %_ZNK4llvh9StringRef6equalsES0_.exit, %bb.s, %_ZNK4llvh9StringRef6equalsES0_.exit136.thread219, %bb.u, %_ZNK4llvh9StringRef6equalsES0_.exit.thread217, %bb.v
  %i.eg = phi ptr [ %.pre280, %..thread224_crit_edge ], [ %i.bo, %bb.v ], [ %i.bo, %_ZNK4llvh9StringRef6equalsES0_.exit136 ], [ %i.bo, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ %i.bo, %bb.s ], [ %i.bo, %_ZNK4llvh9StringRef6equalsES0_.exit136.thread219 ], [ %i.bo, %bb.u ], [ %i.bo, %_ZNK4llvh9StringRef6equalsES0_.exit.thread217 ], [ %i.bo, %bb.y ], [ %i.bo, %bb.z ]
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i = load ptr, ptr %i.eh, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 1, ptr %i.ej, align 1, !tbaa !76
  store ptr @.str.67, ptr %4, align 8, !tbaa !72
  store i8 3, ptr %i.ei, align 8, !tbaa !77
  %i.ek = load ptr, ptr %0, align 8, !tbaa !56, !nonnull !57, !align !58
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ek, i32 noundef 0, ptr %.sroa.0.0.copyload.i, ptr %i.eg, ptr noundef nonnull align 8 dereferenceable(18) %4, i32 noundef 1) #18
  %i.el = load ptr, ptr %0, align 8, !tbaa !56, !nonnull !57, !align !58
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 316
  %i.en = load i8, ptr %i.em, align 4, !tbaa !131, !range !65, !noundef !57
  %i.eo = trunc nuw i8 %i.en to i1
end_hunk_0
