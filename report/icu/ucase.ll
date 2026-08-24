Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucase?download=true
inline.NumInlined: 27
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@ucase_addStringCaseClosure_78:bb.a
bb.e:                                             ; preds = %bb.d
  %i.v = load i16, ptr %i.r, align 2, !tbaa !20   ; 3 uses
  %i.w = icmp eq i16 %i.v, 0
  br i1 %i.w, label %.split.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i16, ptr %i.h, align 2, !tbaa !20   ; 2 uses
  %.not.i.us.2 = icmp eq i16 %i.x, %i.v
  br i1 %.not.i.us.2, label %.preheader, label %_ZL9strcmpMaxPKDsiS0_i.exit.us

_ZL9strcmpMaxPKDsiS0_i.exit.us:                   ; preds = %bb.f, %bb.d, %bb.b
  %.lcssa111 = phi i16 [ %i.q, %bb.b ], [ %i.u, %bb.d ], [ %i.x, %bb.f ]
  %.lcssa109 = phi i16 [ %i.o, %bb.b ], [ %i.s, %bb.d ], [ %i.v, %bb.f ]
  %i.y = icmp ult i16 %.lcssa111, %.lcssa109
  br label %.split.us

.split.us:                                        ; preds = %.preheader63.split.us, %bb.c, %bb.e, %_ZL9strcmpMaxPKDsiS0_i.exit.us
  %.015.i60.us = phi i1 [ %i.y, %_ZL9strcmpMaxPKDsiS0_i.exit.us ], [ false, %bb.e ], [ false, %bb.c ], [ false, %.preheader63.split.us ] ; 2 uses
  %i.z = add nsw i32 %i.j, 1
  %.145.us = select i1 %.015.i60.us, i32 %.04467.us, i32 %i.z ; 2 uses
  %.1.us = select i1 %.015.i60.us, i32 %i.j, i32 %.04368.us ; 2 uses
  %i.aa = icmp slt i32 %.145.us, %.1.us
  br i1 %i.aa, label %.preheader63.split.us, label %.critedge

.preheader63.split:                               ; preds = %.preheader63, %.split
  %.04368 = phi i32 [ %.1, %.split ], [ 73, %.preheader63 ] ; 2 uses
  %.04467 = phi i32 [ %.145, %.split ], [ 0, %.preheader63 ] ; 2 uses
  %i.ab = add nsw i32 %.04368, %.04467
  %i.ac = sdiv i32 %i.ab, 2                       ; 3 uses
  %i.ad = mul nsw i32 %i.ac, 5
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL18ucase_props_unfold, i64 10), i64 %i.ae ; 3 uses
  %scevgep.i = getelementptr i8, ptr %i.af, i64 %i.e
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.preheader63.split
  %.014.i = phi ptr [ %0, %.preheader63.split ], [ %i.ag, %bb.i ] ; 2 uses
  %.013.i = phi i32 [ %1, %.preheader63.split ], [ %i.ao, %bb.i ] ; 2 uses
  %.0.i = phi ptr [ %i.af, %.preheader63.split ], [ %i.ah, %bb.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.014.i, i64 2
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  %i.ai = load i16, ptr %.0.i, align 2, !tbaa !20 ; 2 uses
  %i.aj = icmp eq i16 %i.ai, 0
  br i1 %i.aj, label %.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = zext i16 %i.ai to i32
  %i.al = load i16, ptr %.014.i, align 2, !tbaa !20
  %i.am = zext i16 %i.al to i32
  %i.an = sub nsw i32 %i.am, %i.ak                ; 2 uses
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %bb.i, label %_ZL9strcmpMaxPKDsiS0_i.exit

bb.i:                                             ; preds = %bb.h
  %i.ao = add nsw i32 %.013.i, -1
  %i.ap = icmp samesign ugt i32 %.013.i, 1
  br i1 %i.ap, label %bb.g, label %bb.j, !llvm.loop !25

bb.j:                                             ; preds = %bb.i
  %i.aq = load i16, ptr %scevgep.i, align 2, !tbaa !20
  %i.ar = icmp ne i16 %i.aq, 0
  %spec.select.i = sext i1 %i.ar to i32
  br label %_ZL9strcmpMaxPKDsiS0_i.exit

_ZL9strcmpMaxPKDsiS0_i.exit:                      ; preds = %bb.h, %bb.j
  %.015.i = phi i32 [ %spec.select.i, %bb.j ], [ %i.an, %bb.h ] ; 2 uses
  %.not56 = icmp eq i32 %.015.i, 0
  br i1 %.not56, label %.preheader, label %.split

.preheader:                                       ; preds = %_ZL9strcmpMaxPKDsiS0_i.exit, %bb.f
  %.us-phi = phi ptr [ %i.m, %bb.f ], [ %i.af, %_ZL9strcmpMaxPKDsiS0_i.exit ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.us-phi, i64 6
  %i.au = load i16, ptr %i.at, align 2, !tbaa !20 ; 2 uses
  %i.av = zext i16 %i.au to i32                   ; 4 uses
  %.not.peel = icmp eq i16 %i.au, 0
  br i1 %.not.peel, label %.critedge, label %bb.k, !llvm.loop !26

bb.k:                                             ; preds = %.preheader
  %i.aw = and i32 %i.av, 64512
  %.not122 = icmp eq i32 %i.aw, 55296
  br i1 %.not122, label %bb.l, label %.peel.next.critedge

bb.l:                                             ; preds = %bb.k
  %i.ax = shl nuw nsw i32 %i.av, 10
  %i.ay = getelementptr inbounds nuw i8, ptr %.us-phi, i64 8
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !20
  %i.ba = zext i16 %i.az to i32
  %i.bb = add nsw i32 %i.ax, -56613888
  %i.bc = add nuw nsw i32 %i.bb, %i.ba            ; 2 uses
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !10
  %i.be = load ptr, ptr %2, align 8, !tbaa !14
  tail call void %i.bd(ptr noundef %i.be, i32 noundef %i.bc)
  tail call void @ucase_addCaseClosure_78(i32 noundef %i.bc, ptr noundef nonnull %2)
  br label %.critedge

.peel.next.critedge:                              ; preds = %bb.k
  %i.bf = load ptr, ptr %i.as, align 8, !tbaa !10
  %i.bg = load ptr, ptr %2, align 8, !tbaa !14
  tail call void %i.bf(ptr noundef %i.bg, i32 noundef %i.av)
  tail call void @ucase_addCaseClosure_78(i32 noundef %i.av, ptr noundef nonnull %2)
  %i.bh = getelementptr inbounds nuw i8, ptr %.us-phi, i64 8
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !20 ; 2 uses
  %i.bj = zext i16 %i.bi to i32                   ; 3 uses
  %.not = icmp eq i16 %i.bi, 0
  %i.bk = and i32 %i.bj, 64512
  %i.bl = icmp eq i32 %i.bk, 55296
  %i.bm = shl nuw nsw i32 %i.bj, 10
  %i.bn = getelementptr inbounds nuw i8, ptr %.us-phi, i64 10
  %i.bo = add nsw i32 %i.bm, -56613888
  br i1 %.not, label %.critedge, label %bb.m, !llvm.loop !26

bb.m:                                             ; preds = %.peel.next.critedge
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = load i16, ptr %i.bn, align 2, !tbaa !20
  %i.bq = zext i16 %i.bp to i32
  %i.br = add nuw nsw i32 %i.bo, %i.bq
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0 = phi i32 [ %i.br, %bb.n ], [ %i.bj, %bb.m ] ; 2 uses
  %i.bs = load ptr, ptr %i.as, align 8, !tbaa !10
  %i.bt = load ptr, ptr %2, align 8, !tbaa !14
  tail call void %i.bs(ptr noundef %i.bt, i32 noundef %.0)
  tail call void @ucase_addCaseClosure_78(i32 noundef %.0, ptr noundef nonnull %2)
  br label %.critedge, !llvm.loop !27

.split:                                           ; preds = %bb.g, %_ZL9strcmpMaxPKDsiS0_i.exit
  %.015.i60 = phi i32 [ %.015.i, %_ZL9strcmpMaxPKDsiS0_i.exit ], [ 1, %bb.g ]
  %i.bu = icmp slt i32 %.015.i60, 0               ; 2 uses
  %i.bv = add nsw i32 %i.ac, 1
  %.145 = select i1 %i.bu, i32 %.04467, i32 %i.bv ; 2 uses
  %.1 = select i1 %i.bu, i32 %i.ac, i32 %.04368   ; 2 uses
  %i.bw = icmp slt i32 %.145, %.1
  br i1 %i.bw, label %.preheader63.split, label %.critedge

.critedge:                                        ; preds = %bb.l, %.split, %.split.us, %.preheader, %bb.o, %.peel.next.critedge, %bb.a
  %.3 = phi i8 [ 1, %.preheader ], [ 0, %bb.a ], [ 0, %.split.us ], [ 1, %.peel.next.critedge ], [ 1, %bb.o ], [ 1, %bb.l ], [ 0, %.split ]
  ret i8 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6icu_7823FullCaseFoldingIteratorC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(28) initializes((0, 28)) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x i32> <i32 73, i32 5, i32 3, i32 0>, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 3, ptr %i.b, align 8, !tbaa !29
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL18ucase_props_unfold, i64 10), ptr %0, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 10559488) i32 @_ZN6icu_7823FullCaseFoldingIterator4nextERNS_13UnicodeStringE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !33   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !34   ; 3 uses
  %i.f = mul nsw i32 %i.e, %i.c
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !29   ; 2 uses
  %.not = icmp slt i32 %i.j, %i.e
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !20
  %i.n = icmp eq i16 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = add nsw i32 %i.c, 1                      ; 2 uses
  store i32 %i.o, ptr %i.b, align 4, !tbaa !33
  %i.p = sext i32 %i.e to i64
  %i.q = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !35
  store i32 %i.s, ptr %i.i, align 8, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = phi i32 [ %i.o, %bb.c ], [ %i.c, %bb.b ]
  %.018 = phi ptr [ %i.q, %bb.c ], [ %i.h, %bb.b ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !36
  %.not21 = icmp slt i32 %i.t, %i.v
  br i1 %.not21, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !35   ; 3 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.01922 = phi i32 [ %4, %bb.f ], [ %i.x, %bb.e ] ; 4 uses
  %3 = zext nneg i32 %.01922 to i64
  %i.z = getelementptr [2 x i8], ptr %.018, i64 %3
  %i.aa = getelementptr i8, ptr %i.z, i64 -2
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !20
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.lr.ph
  %4 = add nsw i32 %.01922, -1
  %i.ad = icmp sgt i32 %.01922, 1
  br i1 %i.ad, label %.lr.ph, label %.critedge, !llvm.loop !37

.critedge:                                        ; preds = %.lr.ph, %bb.f, %bb.e
  %.019.lcssa = phi i32 [ %i.x, %bb.e ], [ 0, %bb.f ], [ %.01922, %.lr.ph ]
  store ptr %.018, ptr %2, align 8, !tbaa !38
  %i.ae = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext 0, ptr noundef nonnull align 8 %2, i32 noundef %.019.lcssa)
          to label %bb.g unwind label %bb.i       ; 0 uses

bb.g:                                             ; preds = %.critedge
  %i.af = load ptr, ptr %2, align 8, !tbaa !38
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.af) #6, !srcloc !40
  %i.ag = load i32, ptr %i.i, align 8, !tbaa !29  ; 3 uses
  %i.ah = add nsw i32 %i.ag, 1                    ; 2 uses
  store i32 %i.ah, ptr %i.i, align 8, !tbaa !29
  %i.ai = sext i32 %i.ag to i64
  %i.aj = getelementptr inbounds [2 x i8], ptr %.018, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !20
  %i.al = zext i16 %i.ak to i32                   ; 3 uses
  %i.am = and i32 %i.al, 64512
  %i.an = icmp eq i32 %i.am, 55296
  br i1 %i.an, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ao = shl nuw nsw i32 %i.al, 10
  %i.ap = add nsw i32 %i.ag, 2
  store i32 %i.ap, ptr %i.i, align 8, !tbaa !29
  %i.aq = sext i32 %i.ah to i64
  %i.ar = getelementptr inbounds [2 x i8], ptr %.018, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !20
  %i.at = zext i16 %i.as to i32
  %i.au = add nsw i32 %i.ao, -56613888
  %i.av = add nuw nsw i32 %i.au, %i.at
  br label %bb.j

bb.i:                                             ; preds = %.critedge
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %2, align 8, !tbaa !38
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ax) #6, !srcloc !40
  resume { ptr, i32 } %i.aw

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.d
  %.017 = phi i32 [ -1, %bb.d ], [ %i.av, %bb.h ], [ %i.al, %bb.g ]
  ret i32 %.017
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64), i8 noundef signext, ptr noundef align 8, i32 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 4) i32 @ucase_getType_78(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i32 %0, 55296
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %0, 5
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %0, 65536
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 56320
  %i.e = select i1 %i.d, i32 320, i32 0
  %i.f = lshr i32 %0, 5
  %i.g = add nuw nsw i32 %i.e, %i.f
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ugt i32 %0, 1114111
  br i1 %i.h, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp samesign ugt i32 %0, 919551
  br i1 %i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = lshr i32 %0, 11
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4160
  %i.n = load i16, ptr %i.m, align 2, !tbaa !16
  %i.o = zext i16 %i.n to i32
  %i.p = lshr i32 %0, 5
  %i.q = and i32 %i.p, 63
  %i.r = add nuw nsw i32 %i.q, %i.o
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.g, %bb.d
  %.sink16 = phi i32 [ %i.g, %bb.d ], [ %i.r, %bb.g ], [ %i.b, %bb.b ]
  %i.s = zext nneg i32 %.sink16 to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !16
  %i.v = zext i16 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 2
  %i.x = and i32 %0, 31
  %i.y = add nuw nsw i32 %i.w, %i.x
  %i.z = zext nneg i32 %i.y to i64
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f, %bb.e
  %i.aa = phi i64 [ 3596, %bb.e ], [ 13540, %bb.f ], [ %i.z, %.sink.split ]
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !16
  %i.ad = and i16 %i.ac, 3
  %i.ae = zext nneg i16 %i.ad to i32
  ret i32 %i.ae
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 8) i32 @ucase_getTypeOrIgnorable_78(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i32 %0, 55296
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %0, 5
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %0, 65536
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 56320
  %i.e = select i1 %i.d, i32 320, i32 0
  %i.f = lshr i32 %0, 5
  %i.g = add nuw nsw i32 %i.e, %i.f
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ugt i32 %0, 1114111
  br i1 %i.h, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp samesign ugt i32 %0, 919551
  br i1 %i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = lshr i32 %0, 11
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4160
  %i.n = load i16, ptr %i.m, align 2, !tbaa !16
  %i.o = zext i16 %i.n to i32
  %i.p = lshr i32 %0, 5
  %i.q = and i32 %i.p, 63
  %i.r = add nuw nsw i32 %i.q, %i.o
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.g, %bb.d
  %.sink16 = phi i32 [ %i.g, %bb.d ], [ %i.r, %bb.g ], [ %i.b, %bb.b ]
  %i.s = zext nneg i32 %.sink16 to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !16
  %i.v = zext i16 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 2
  %i.x = and i32 %0, 31
  %i.y = add nuw nsw i32 %i.w, %i.x
  %i.z = zext nneg i32 %i.y to i64
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f, %bb.e
  %i.aa = phi i64 [ 3596, %bb.e ], [ 13540, %bb.f ], [ %i.z, %.sink.split ]
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr @_ZL21ucase_props_trieIndex, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !16
  %i.ad = and i16 %i.ac, 7
  %i.ae = zext nneg i16 %i.ad to i32
  ret i32 %i.ae
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define signext range(i8 0, 2) i8 @ucase_isSoftDotted_78(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i32 %0, 55296
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %0, 5
  br label %.sink.split.i

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %0, 65536
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 56320
  %i.e = select i1 %i.d, i32 320, i32 0
  %i.f = lshr i32 %0, 5
  %i.g = add nuw nsw i32 %i.e, %i.f
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ugt i32 %0, 1114111
  br i1 %i.h, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp samesign ugt i32 %0, 919551
  br i1 %i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
end_hunk_0
