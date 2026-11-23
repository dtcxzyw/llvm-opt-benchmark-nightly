Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/RegularExpression?download=true
inline.NumInlined: 73
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5cmsys17RegularExpression7compileEPKc:bb.a
  %i.h = load i64, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.i = icmp sgt i64 %i.h, 65534
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %puts34 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN5cmsys13RegExpCompile4regcEc.exit37, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #15
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit37

_ZN5cmsys13RegExpCompile4regcEc.exit37:           ; preds = %bb.f, %bb.g
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #14 ; 3 uses
  store ptr %i.m, ptr %i.j, align 8, !tbaa !16
  %i.n = trunc i64 %i.h to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i32 %i.n, ptr %i.o, align 8, !tbaa !17
  %i.p = load i32, ptr %i.b, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 556
  store i32 %i.p, ptr %i.q, align 4, !tbaa !27
  store ptr %1, ptr %2, align 8, !tbaa !29
  store i32 1, ptr %i.b, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store ptr %i.r, ptr %i.d, align 8, !tbaa !31
  store i8 -100, ptr %i.m, align 1, !tbaa !18
  %i.s = call noundef ptr @_ZN5cmsys13RegExpCompile3regEiPi(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  store i8 0, ptr %i.t, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 521 ; 2 uses
  store i8 0, ptr %i.u, align 1, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !16   ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 3 uses
  %i.z = icmp ne ptr %i.y, @_ZN5cmsysL8regdummyE
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !18
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !18
  %i.ag = zext i8 %i.af to i32
  %i.ah = or disjoint i32 %i.ad, %i.ag            ; 2 uses
  %i.ai = icmp ne i32 %i.ah, 0
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load i8, ptr %i.y, align 1, !tbaa !18
  %i.ak = icmp eq i8 %i.aj, 7
  %i.al = zext nneg i32 %i.ah to i64              ; 2 uses
  %i.am = sub nsw i64 0, %i.al
  %.0.i.v = select i1 %i.ak, i64 %i.am, i64 %i.al
  %.0.i = getelementptr inbounds i8, ptr %i.y, i64 %.0.i.v
  %i.an = load i8, ptr %.0.i, align 1, !tbaa !18
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.h, label %bb.p

bb.h:                                             ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit37
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !18
  switch i8 %i.aq, label %bb.k [
    i8 8, label %bb.i
    i8 1, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 7
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !18
  store i8 %i.as, ptr %i.t, align 8, !tbaa !24
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i8 1, ptr %i.u, align 1, !tbaa !25
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.i
  %i.at = load i32, ptr %i.a, align 4, !tbaa !34
  %i.au = and i32 %i.at, 4
  %.not31 = icmp eq i32 %i.au, 0
  br i1 %.not31, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.k, %_ZN5cmsysL7regnextEPKc.exit39
  %.042 = phi i64 [ %.1, %_ZN5cmsysL7regnextEPKc.exit39 ], [ 0, %bb.k ] ; 3 uses
  %.01841 = phi ptr [ %.119, %_ZN5cmsysL7regnextEPKc.exit39 ], [ null, %bb.k ] ; 2 uses
  %.02040 = phi ptr [ %i.bm, %_ZN5cmsysL7regnextEPKc.exit39 ], [ %i.ap, %bb.k ] ; 6 uses
  %i.av = load i8, ptr %.02040, align 1, !tbaa !18 ; 2 uses
  %i.aw = icmp eq i8 %i.av, 8
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.preheader
  %i.ax = getelementptr inbounds nuw i8, ptr %.02040, i64 3 ; 2 uses
  %i.ay = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ax) #17 ; 2 uses
  %.not33 = icmp ult i64 %i.ay, %.042
  %spec.select = select i1 %.not33, ptr %.01841, ptr %i.ax
  %spec.select35 = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 %.042)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader
  %.119 = phi ptr [ %.01841, %.preheader ], [ %spec.select, %bb.l ] ; 2 uses
  %.1 = phi i64 [ %.042, %.preheader ], [ %spec.select35, %bb.l ] ; 2 uses
  %i.az = icmp eq ptr %.02040, @_ZN5cmsysL8regdummyE
  br i1 %i.az, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %.02040, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !18
  %i.bc = zext i8 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 8
  %i.be = getelementptr inbounds nuw i8, ptr %.02040, i64 2
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !18
  %i.bg = zext i8 %i.bf to i32
  %i.bh = or disjoint i32 %i.bd, %i.bg            ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.o, label %_ZN5cmsysL7regnextEPKc.exit39

_ZN5cmsysL7regnextEPKc.exit39:                    ; preds = %bb.n
  %i.bj = icmp eq i8 %i.av, 7
  %i.bk = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bl = sub nsw i64 0, %i.bk
  %.sink = select i1 %i.bj, i64 %i.bl, i64 %i.bk
  %i.bm = getelementptr inbounds i8, ptr %.02040, i64 %.sink
  br label %.preheader, !llvm.loop !48

bb.o:                                             ; preds = %bb.m, %bb.n
  store ptr %.119, ptr %i.v, align 8, !tbaa !23
  store i64 %.1, ptr %i.w, align 8, !tbaa !26
  br label %bb.p

bb.p:                                             ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit37, %bb.o, %bb.k, %bb.e, %bb.c
  %.021 = phi i1 [ false, %bb.e ], [ false, %bb.c ], [ true, %_ZN5cmsys13RegExpCompile4regcEc.exit37 ], [ true, %bb.k ], [ true, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.b
  %.122 = phi i1 [ %.021, %bb.p ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i1 %.122
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5cmsys13RegExpCompile4regcEc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i8 noundef signext %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %.not = icmp eq ptr %i.b, @_ZN5cmsysL8regdummyE
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.c, ptr %i.a, align 8, !tbaa !31
  store i8 %1, ptr %i.b, align 1, !tbaa !18
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !32
  %i.f = add nsw i64 %i.e, 1
  store i64 %i.f, ptr %i.d, align 8, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef ptr @_ZN5cmsys13RegExpCompile3regEiPi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, ptr nofree noundef captures(none) initializes((0, 4)) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  store i32 1, ptr %2, align 4, !tbaa !34
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %._crit_edge121, label %bb.b

._crit_edge121:                                   ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !31
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !30   ; 3 uses
  %i.e = icmp sgt i32 %i.d, 31
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %puts45 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, 1
  store i32 %i.f, ptr %i.c, align 8, !tbaa !30
  %i.g = trunc i32 %i.d to i8                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31   ; 6 uses
  %i.j = icmp eq ptr %i.i, @_ZN5cmsysL8regdummyE
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32
  %i.m = add nsw i64 %i.l, 3
  store i64 %i.m, ptr %i.k, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit

bb.f:                                             ; preds = %bb.d
  %i.n = add i8 %i.g, 20
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.n, ptr %i.i, align 1, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 0, ptr %i.o, align 1, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 3 ; 2 uses
  store i8 0, ptr %i.p, align 1, !tbaa !18
  store ptr %i.q, ptr %i.h, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit

_ZN5cmsys13RegExpCompile7regnodeEc.exit:          ; preds = %bb.e, %bb.f
  %i.r = phi ptr [ @_ZN5cmsysL8regdummyE, %bb.e ], [ %i.q, %bb.f ]
  %i.s = add i8 %i.g, 52
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge121, %_ZN5cmsys13RegExpCompile7regnodeEc.exit
  %i.t = phi ptr [ %i.r, %_ZN5cmsys13RegExpCompile7regnodeEc.exit ], [ %.pre, %._crit_edge121 ] ; 8 uses
  %i.u = phi i8 [ %i.s, %_ZN5cmsys13RegExpCompile7regnodeEc.exit ], [ 0, %._crit_edge121 ]
  %.029 = phi ptr [ %i.i, %_ZN5cmsys13RegExpCompile7regnodeEc.exit ], [ null, %._crit_edge121 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.w = icmp eq ptr %i.t, @_ZN5cmsysL8regdummyE
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !32
  %i.z = add nsw i64 %i.y, 3
  store i64 %i.z, ptr %i.x, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit88.preheader

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store i8 6, ptr %i.t, align 1, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  store i8 0, ptr %i.aa, align 1, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  store i8 0, ptr %i.ab, align 1, !tbaa !18
  store ptr %i.ac, ptr %i.v, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit88.preheader

_ZN5cmsys13RegExpCompile7regnodeEc.exit88.preheader: ; preds = %bb.h, %bb.i
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit88

_ZN5cmsys13RegExpCompile7regnodeEc.exit88:        ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit88.backedge, %_ZN5cmsys13RegExpCompile7regnodeEc.exit88.preheader
  %.0 = phi i32 [ 0, %_ZN5cmsys13RegExpCompile7regnodeEc.exit88.preheader ], [ %.0.be, %_ZN5cmsys13RegExpCompile7regnodeEc.exit88.backedge ] ; 3 uses
  %.0.i = phi ptr [ null, %_ZN5cmsys13RegExpCompile7regnodeEc.exit88.preheader ], [ %i.af, %_ZN5cmsys13RegExpCompile7regnodeEc.exit88.backedge ] ; 4 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !29
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !18
  switch i8 %i.ae, label %bb.j [
    i8 0, label %.critedge.i
    i8 124, label %.critedge.i
    i8 41, label %.critedge.i
  ]

bb.j:                                             ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit88
  %i.af = call noundef ptr @_ZN5cmsys13RegExpCompile8regpieceEPi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b), !inline_history !51 ; 3 uses
  %.not18.i = icmp eq ptr %i.af, null
  br i1 %.not18.i, label %_ZN5cmsys13RegExpCompile9regbranchEPi.exit.thread, label %bb.k

_ZN5cmsys13RegExpCompile9regbranchEPi.exit.thread: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ag = load i32, ptr %i.b, align 4, !tbaa !34  ; 2 uses
  %i.ah = and i32 %i.ag, 1
  %i.ai = or i32 %i.ah, %.0                       ; 3 uses
  %.not19.i = icmp eq ptr %.0.i, null
  br i1 %.not19.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = and i32 %i.ag, 4
  %i.ak = or i32 %i.ai, %i.aj
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit88.backedge

bb.m:                                             ; preds = %bb.k
  %i.al = icmp eq ptr %.0.i, @_ZN5cmsysL8regdummyE
  br i1 %i.al, label %_ZN5cmsys13RegExpCompile7regnodeEc.exit88.backedge, label %.preheader.i78

.preheader.i78:                                   ; preds = %bb.m, %_ZN5cmsysL7regnextEPc.exit.i80
  %.01318.i79 = phi ptr [ %.0.i.i82, %_ZN5cmsysL7regnextEPc.exit.i80 ], [ %.0.i, %bb.m ] ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01318.i79, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !18
  %i.ao = zext i8 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.ao, 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.01318.i79, i64 2
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !18
  %i.as = zext i8 %i.ar to i32
  %i.at = or disjoint i32 %i.ap, %i.as            ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZN5cmsysL7regnextEPc.exit.thread.i83, label %_ZN5cmsysL7regnextEPc.exit.i80

_ZN5cmsysL7regnextEPc.exit.i80:                   ; preds = %.preheader.i78
  %i.av = load i8, ptr %.01318.i79, align 1, !tbaa !18
  %i.aw = icmp eq i8 %i.av, 7
  %i.ax = zext nneg i32 %i.at to i64              ; 2 uses
  %i.ay = sub nsw i64 0, %i.ax
  %.0.i.v.i81 = select i1 %i.aw, i64 %i.ay, i64 %i.ax
  %.0.i.i82 = getelementptr inbounds i8, ptr %.01318.i79, i64 %.0.i.v.i81 ; 2 uses
  %i.az = icmp eq ptr %.0.i.i82, @_ZN5cmsysL8regdummyE
  br i1 %i.az, label %_ZN5cmsysL7regnextEPc.exit.thread.i83, label %.preheader.i78, !llvm.loop !0

_ZN5cmsysL7regnextEPc.exit.thread.i83:            ; preds = %_ZN5cmsysL7regnextEPc.exit.i80, %.preheader.i78
  %.013.lcssa.i84 = phi ptr [ %.01318.i79, %.preheader.i78 ], [ @_ZN5cmsysL8regdummyE, %_ZN5cmsysL7regnextEPc.exit.i80 ] ; 4 uses
  %i.ba = load i8, ptr %.013.lcssa.i84, align 1, !tbaa !18
  %i.bb = icmp eq i8 %i.ba, 7
  %i.bc = ptrtoint ptr %.013.lcssa.i84 to i64     ; 2 uses
  %i.bd = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = sub i64 %i.bd, %i.bc
  %.0.in.i85 = select i1 %i.bb, i64 %i.be, i64 %i.bf ; 2 uses
  %.0.i86 = trunc i64 %.0.in.i85 to i8
  %i.bg = lshr i64 %.0.in.i85, 8
  %i.bh = trunc i64 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.lcssa.i84, i64 1
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.lcssa.i84, i64 2
  store i8 %.0.i86, ptr %i.bj, align 1, !tbaa !18
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit88.backedge

_ZN5cmsys13RegExpCompile7regnodeEc.exit88.backedge: ; preds = %_ZN5cmsysL7regnextEPc.exit.thread.i83, %bb.m, %bb.l
  %.0.be = phi i32 [ %i.ai, %bb.m ], [ %i.ai, %_ZN5cmsysL7regnextEPc.exit.thread.i83 ], [ %i.ak, %bb.l ]
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit88, !llvm.loop !1

.critedge.i:                                      ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit88, %_ZN5cmsys13RegExpCompile7regnodeEc.exit88, %_ZN5cmsys13RegExpCompile7regnodeEc.exit88
  %.not17.i = icmp eq ptr %.0.i, null
  br i1 %.not17.i, label %bb.n, label %_ZN5cmsys13RegExpCompile9regbranchEPi.exit

bb.n:                                             ; preds = %.critedge.i
  %i.bk = load ptr, ptr %i.v, align 8, !tbaa !31  ; 5 uses
  %i.bl = icmp eq ptr %i.bk, @_ZN5cmsysL8regdummyE
  br i1 %i.bl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !32
  %i.bo = add nsw i64 %i.bn, 3
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile9regbranchEPi.exit

bb.p:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  store i8 9, ptr %i.bk, align 1, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  store i8 0, ptr %i.bp, align 1, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  store i8 0, ptr %i.bq, align 1, !tbaa !18
  store ptr %i.br, ptr %i.v, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile9regbranchEPi.exit

_ZN5cmsys13RegExpCompile9regbranchEPi.exit:       ; preds = %bb.p, %bb.o, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %.not35 = icmp eq ptr %i.t, null
  br i1 %.not35, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %_ZN5cmsys13RegExpCompile9regbranchEPi.exit
  %.not36 = icmp eq ptr %.029, null
  br i1 %.not36, label %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = icmp eq ptr %.029, @_ZN5cmsysL8regdummyE
  br i1 %i.bs, label %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.r, %_ZN5cmsysL7regnextEPc.exit.i
  %.01318.i = phi ptr [ %.0.i.i, %_ZN5cmsysL7regnextEPc.exit.i ], [ %.029, %bb.r ] ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.01318.i, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !18
  %i.bv = zext i8 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.01318.i, i64 2
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !18
  %i.bz = zext i8 %i.by to i32
  %i.ca = or disjoint i32 %i.bw, %i.bz            ; 2 uses
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %_ZN5cmsysL7regnextEPc.exit.thread.i, label %_ZN5cmsysL7regnextEPc.exit.i

_ZN5cmsysL7regnextEPc.exit.i:                     ; preds = %.preheader.i
  %i.cc = load i8, ptr %.01318.i, align 1, !tbaa !18
  %i.cd = icmp eq i8 %i.cc, 7
  %i.ce = zext nneg i32 %i.ca to i64              ; 2 uses
  %i.cf = sub nsw i64 0, %i.ce
  %.0.i.v.i = select i1 %i.cd, i64 %i.cf, i64 %i.ce
  %.0.i.i = getelementptr inbounds i8, ptr %.01318.i, i64 %.0.i.v.i ; 2 uses
  %i.cg = icmp eq ptr %.0.i.i, @_ZN5cmsysL8regdummyE
  br i1 %i.cg, label %_ZN5cmsysL7regnextEPc.exit.thread.i, label %.preheader.i, !llvm.loop !0

_ZN5cmsysL7regnextEPc.exit.thread.i:              ; preds = %_ZN5cmsysL7regnextEPc.exit.i, %.preheader.i
  %.013.lcssa.i = phi ptr [ %.01318.i, %.preheader.i ], [ @_ZN5cmsysL8regdummyE, %_ZN5cmsysL7regnextEPc.exit.i ] ; 4 uses
  %i.ch = load i8, ptr %.013.lcssa.i, align 1, !tbaa !18
  %i.ci = icmp eq i8 %i.ch, 7
  %i.cj = ptrtoint ptr %.013.lcssa.i to i64       ; 2 uses
  %i.ck = ptrtoint ptr %i.t to i64                ; 2 uses
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = sub i64 %i.ck, %i.cj
  %.0.in.i = select i1 %i.ci, i64 %i.cl, i64 %i.cm ; 2 uses
  %.0.i46 = trunc i64 %.0.in.i to i8
  %i.cn = lshr i64 %.0.in.i, 8
  %i.co = trunc i64 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %.013.lcssa.i, i64 1
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %.013.lcssa.i, i64 2
  store i8 %.0.i46, ptr %i.cq, align 1, !tbaa !18
  br label %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit

_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit:      ; preds = %_ZN5cmsysL7regnextEPc.exit.thread.i, %bb.r, %bb.q
  %.1 = phi ptr [ %i.t, %bb.q ], [ @_ZN5cmsysL8regdummyE, %bb.r ], [ %.029, %_ZN5cmsysL7regnextEPc.exit.thread.i ] ; 8 uses
  %i.cr = and i32 %.0, 1
  %.not37 = icmp eq i32 %i.cr, 0
  %.pre122 = load i32, ptr %2, align 4, !tbaa !34 ; 2 uses
  %i.cs = and i32 %.pre122, -2
  %spec.select = select i1 %.not37, i32 %i.cs, i32 %.pre122
  %i.ct = and i32 %.0, 4
  %i.cu = or i32 %spec.select, %i.ct
  store i32 %i.cu, ptr %2, align 4, !tbaa !34
  %i.cv = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !18
  %i.cx = icmp eq i8 %i.cw, 124
  br i1 %i.cx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.cz = icmp eq ptr %.1, @_ZN5cmsysL8regdummyE
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit63
  %i.da = phi ptr [ %i.cv, %.lr.ph ], [ %i.fz, %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit63 ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  store ptr %i.db, ptr %0, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.dc = load ptr, ptr %i.v, align 8, !tbaa !31  ; 7 uses
  %i.dd = icmp eq ptr %i.dc, @_ZN5cmsysL8regdummyE
  br i1 %i.dd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.de = load i64, ptr %i.cy, align 8, !tbaa !32
  %i.df = add nsw i64 %i.de, 3
  store i64 %i.df, ptr %i.cy, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit100.preheader

bb.u:                                             ; preds = %bb.s
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  store i8 6, ptr %i.dc, align 1, !tbaa !18
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  store i8 0, ptr %i.dg, align 1, !tbaa !18
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 3
  store i8 0, ptr %i.dh, align 1, !tbaa !18
  store ptr %i.di, ptr %i.v, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit100.preheader

_ZN5cmsys13RegExpCompile7regnodeEc.exit100.preheader: ; preds = %bb.t, %bb.u
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit100

_ZN5cmsys13RegExpCompile7regnodeEc.exit100:       ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit100.backedge, %_ZN5cmsys13RegExpCompile7regnodeEc.exit100.preheader
  %.2 = phi i32 [ 0, %_ZN5cmsys13RegExpCompile7regnodeEc.exit100.preheader ], [ %.2.be, %_ZN5cmsys13RegExpCompile7regnodeEc.exit100.backedge ] ; 3 uses
  %.0.i47 = phi ptr [ null, %_ZN5cmsys13RegExpCompile7regnodeEc.exit100.preheader ], [ %i.dl, %_ZN5cmsys13RegExpCompile7regnodeEc.exit100.backedge ] ; 4 uses
  %i.dj = load ptr, ptr %0, align 8, !tbaa !29
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !18
  switch i8 %i.dk, label %bb.v [
    i8 0, label %.critedge.i48
    i8 124, label %.critedge.i48
    i8 41, label %.critedge.i48
  ]

bb.v:                                             ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit100
  %i.dl = call noundef ptr @_ZN5cmsys13RegExpCompile8regpieceEPi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.a), !inline_history !51 ; 3 uses
  %.not18.i51 = icmp eq ptr %i.dl, null
  br i1 %.not18.i51, label %_ZN5cmsys13RegExpCompile9regbranchEPi.exit53.thread, label %bb.w

_ZN5cmsys13RegExpCompile9regbranchEPi.exit53.thread: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.loopexit

bb.w:                                             ; preds = %bb.v
  %i.dm = load i32, ptr %i.a, align 4, !tbaa !34  ; 2 uses
  %i.dn = and i32 %i.dm, 1
  %i.do = or i32 %i.dn, %.2                       ; 3 uses
  %.not19.i52 = icmp eq ptr %.0.i47, null
  br i1 %.not19.i52, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dp = and i32 %i.dm, 4
  %i.dq = or i32 %i.do, %i.dp
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit100.backedge

bb.y:                                             ; preds = %bb.w
  %i.dr = icmp eq ptr %.0.i47, @_ZN5cmsysL8regdummyE
  br i1 %i.dr, label %_ZN5cmsys13RegExpCompile7regnodeEc.exit100.backedge, label %.preheader.i90

.preheader.i90:                                   ; preds = %bb.y, %_ZN5cmsysL7regnextEPc.exit.i92
  %.01318.i91 = phi ptr [ %.0.i.i94, %_ZN5cmsysL7regnextEPc.exit.i92 ], [ %.0.i47, %bb.y ] ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.01318.i91, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !18
  %i.du = zext i8 %i.dt to i32
  %i.dv = shl nuw nsw i32 %i.du, 8
  %i.dw = getelementptr inbounds nuw i8, ptr %.01318.i91, i64 2
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !18
  %i.dy = zext i8 %i.dx to i32
  %i.dz = or disjoint i32 %i.dv, %i.dy            ; 2 uses
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %_ZN5cmsysL7regnextEPc.exit.thread.i95, label %_ZN5cmsysL7regnextEPc.exit.i92

_ZN5cmsysL7regnextEPc.exit.i92:                   ; preds = %.preheader.i90
  %i.eb = load i8, ptr %.01318.i91, align 1, !tbaa !18
  %i.ec = icmp eq i8 %i.eb, 7
  %i.ed = zext nneg i32 %i.dz to i64              ; 2 uses
  %i.ee = sub nsw i64 0, %i.ed
  %.0.i.v.i93 = select i1 %i.ec, i64 %i.ee, i64 %i.ed
  %.0.i.i94 = getelementptr inbounds i8, ptr %.01318.i91, i64 %.0.i.v.i93 ; 2 uses
  %i.ef = icmp eq ptr %.0.i.i94, @_ZN5cmsysL8regdummyE
  br i1 %i.ef, label %_ZN5cmsysL7regnextEPc.exit.thread.i95, label %.preheader.i90, !llvm.loop !0

_ZN5cmsysL7regnextEPc.exit.thread.i95:            ; preds = %_ZN5cmsysL7regnextEPc.exit.i92, %.preheader.i90
  %.013.lcssa.i96 = phi ptr [ %.01318.i91, %.preheader.i90 ], [ @_ZN5cmsysL8regdummyE, %_ZN5cmsysL7regnextEPc.exit.i92 ] ; 4 uses
  %i.eg = load i8, ptr %.013.lcssa.i96, align 1, !tbaa !18
  %i.eh = icmp eq i8 %i.eg, 7
  %i.ei = ptrtoint ptr %.013.lcssa.i96 to i64     ; 2 uses
  %i.ej = ptrtoint ptr %i.dl to i64               ; 2 uses
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = sub i64 %i.ej, %i.ei
  %.0.in.i97 = select i1 %i.eh, i64 %i.ek, i64 %i.el ; 2 uses
  %.0.i98 = trunc i64 %.0.in.i97 to i8
  %i.em = lshr i64 %.0.in.i97, 8
  %i.en = trunc i64 %i.em to i8
  %i.eo = getelementptr inbounds nuw i8, ptr %.013.lcssa.i96, i64 1
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !18
  %i.ep = getelementptr inbounds nuw i8, ptr %.013.lcssa.i96, i64 2
  store i8 %.0.i98, ptr %i.ep, align 1, !tbaa !18
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit100.backedge

_ZN5cmsys13RegExpCompile7regnodeEc.exit100.backedge: ; preds = %_ZN5cmsysL7regnextEPc.exit.thread.i95, %bb.y, %bb.x
  %.2.be = phi i32 [ %i.do, %bb.y ], [ %i.do, %_ZN5cmsysL7regnextEPc.exit.thread.i95 ], [ %i.dq, %bb.x ]
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit100, !llvm.loop !1

.critedge.i48:                                    ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit100, %_ZN5cmsys13RegExpCompile7regnodeEc.exit100, %_ZN5cmsys13RegExpCompile7regnodeEc.exit100
  %.not17.i49 = icmp eq ptr %.0.i47, null
  br i1 %.not17.i49, label %bb.z, label %_ZN5cmsys13RegExpCompile9regbranchEPi.exit53

bb.z:                                             ; preds = %.critedge.i48
  %i.eq = load ptr, ptr %i.v, align 8, !tbaa !31  ; 5 uses
  %i.er = icmp eq ptr %i.eq, @_ZN5cmsysL8regdummyE
  br i1 %i.er, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.es = load i64, ptr %i.cy, align 8, !tbaa !32
  %i.et = add nsw i64 %i.es, 3
  store i64 %i.et, ptr %i.cy, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile9regbranchEPi.exit53

bb.ab:                                            ; preds = %bb.z
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  store i8 9, ptr %i.eq, align 1, !tbaa !18
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 2
  store i8 0, ptr %i.eu, align 1, !tbaa !18
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 3
  store i8 0, ptr %i.ev, align 1, !tbaa !18
  store ptr %i.ew, ptr %i.v, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile9regbranchEPi.exit53

_ZN5cmsys13RegExpCompile9regbranchEPi.exit53:     ; preds = %bb.ab, %bb.aa, %.critedge.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %.not43 = icmp eq ptr %i.dc, null
  br i1 %.not43, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %_ZN5cmsys13RegExpCompile9regbranchEPi.exit53
  br i1 %i.cz, label %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit63, label %.preheader.i54

.preheader.i54:                                   ; preds = %bb.ac, %_ZN5cmsysL7regnextEPc.exit.i56
  %.01318.i55 = phi ptr [ %.0.i.i58, %_ZN5cmsysL7regnextEPc.exit.i56 ], [ %.1, %bb.ac ] ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.01318.i55, i64 1
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !18
  %i.ez = zext i8 %i.ey to i32
  %i.fa = shl nuw nsw i32 %i.ez, 8
  %i.fb = getelementptr inbounds nuw i8, ptr %.01318.i55, i64 2
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !18
  %i.fd = zext i8 %i.fc to i32
  %i.fe = or disjoint i32 %i.fa, %i.fd            ; 2 uses
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %_ZN5cmsysL7regnextEPc.exit.thread.i59, label %_ZN5cmsysL7regnextEPc.exit.i56

_ZN5cmsysL7regnextEPc.exit.i56:                   ; preds = %.preheader.i54
  %i.fg = load i8, ptr %.01318.i55, align 1, !tbaa !18
  %i.fh = icmp eq i8 %i.fg, 7
  %i.fi = zext nneg i32 %i.fe to i64              ; 2 uses
  %i.fj = sub nsw i64 0, %i.fi
  %.0.i.v.i57 = select i1 %i.fh, i64 %i.fj, i64 %i.fi
  %.0.i.i58 = getelementptr inbounds i8, ptr %.01318.i55, i64 %.0.i.v.i57 ; 2 uses
  %i.fk = icmp eq ptr %.0.i.i58, @_ZN5cmsysL8regdummyE
  br i1 %i.fk, label %_ZN5cmsysL7regnextEPc.exit.thread.i59, label %.preheader.i54, !llvm.loop !0

_ZN5cmsysL7regnextEPc.exit.thread.i59:            ; preds = %_ZN5cmsysL7regnextEPc.exit.i56, %.preheader.i54
  %.013.lcssa.i60 = phi ptr [ %.01318.i55, %.preheader.i54 ], [ @_ZN5cmsysL8regdummyE, %_ZN5cmsysL7regnextEPc.exit.i56 ] ; 4 uses
  %i.fl = load i8, ptr %.013.lcssa.i60, align 1, !tbaa !18
  %i.fm = icmp eq i8 %i.fl, 7
  %i.fn = ptrtoint ptr %.013.lcssa.i60 to i64     ; 2 uses
  %i.fo = ptrtoint ptr %i.dc to i64               ; 2 uses
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = sub i64 %i.fo, %i.fn
  %.0.in.i61 = select i1 %i.fm, i64 %i.fp, i64 %i.fq ; 2 uses
  %.0.i62 = trunc i64 %.0.in.i61 to i8
  %i.fr = lshr i64 %.0.in.i61, 8
  %i.fs = trunc i64 %i.fr to i8
  %i.ft = getelementptr inbounds nuw i8, ptr %.013.lcssa.i60, i64 1
  store i8 %i.fs, ptr %i.ft, align 1, !tbaa !18
  %i.fu = getelementptr inbounds nuw i8, ptr %.013.lcssa.i60, i64 2
  store i8 %.0.i62, ptr %i.fu, align 1, !tbaa !18
  br label %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit63

_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit63:    ; preds = %bb.ac, %_ZN5cmsysL7regnextEPc.exit.thread.i59
  %i.fv = and i32 %.2, 1
  %.not44 = icmp eq i32 %i.fv, 0
  %.pre123 = load i32, ptr %2, align 4, !tbaa !34 ; 2 uses
  %i.fw = and i32 %.pre123, -2
  %spec.select151 = select i1 %.not44, i32 %i.fw, i32 %.pre123
  %i.fx = and i32 %.2, 4
  %i.fy = or i32 %spec.select151, %i.fx
  store i32 %i.fy, ptr %2, align 4, !tbaa !34
  %i.fz = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !18
  %i.gb = icmp eq i8 %i.ga, 124
  br i1 %i.gb, label %bb.s, label %._crit_edge, !llvm.loop !49

._crit_edge:                                      ; preds = %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit63, %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit
  %i.gc = load ptr, ptr %i.v, align 8, !tbaa !31  ; 7 uses
  %i.gd = icmp eq ptr %i.gc, @_ZN5cmsysL8regdummyE
  br i1 %i.gd, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %._crit_edge
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !32
  %i.gg = add nsw i64 %i.gf, 3
  store i64 %i.gg, ptr %i.ge, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit64

bb.ae:                                            ; preds = %._crit_edge
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 1
  store i8 %i.u, ptr %i.gc, align 1, !tbaa !18
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  store i8 0, ptr %i.gh, align 1, !tbaa !18
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gc, i64 3
  store i8 0, ptr %i.gi, align 1, !tbaa !18
  store ptr %i.gj, ptr %i.v, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit64

_ZN5cmsys13RegExpCompile7regnodeEc.exit64:        ; preds = %bb.ad, %bb.ae
  %i.gk = icmp eq ptr %.1, @_ZN5cmsysL8regdummyE
  br i1 %i.gk, label %_ZN5cmsys13RegExpCompile7regnodeEc.exit64._ZN5cmsys13RegExpCompile7regtailEPcPKc.exit74_crit_edge, label %.preheader.i65

_ZN5cmsys13RegExpCompile7regnodeEc.exit64._ZN5cmsys13RegExpCompile7regtailEPcPKc.exit74_crit_edge: ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit64
  %.pre124 = ptrtoint ptr %i.gc to i64
  br label %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit74

.preheader.i65:                                   ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit64, %_ZN5cmsysL7regnextEPc.exit.i67
  %.01318.i66 = phi ptr [ %.0.i.i69, %_ZN5cmsysL7regnextEPc.exit.i67 ], [ %.1, %_ZN5cmsys13RegExpCompile7regnodeEc.exit64 ] ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.01318.i66, i64 1
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !18
  %i.gn = zext i8 %i.gm to i32
  %i.go = shl nuw nsw i32 %i.gn, 8
  %i.gp = getelementptr inbounds nuw i8, ptr %.01318.i66, i64 2
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !18
  %i.gr = zext i8 %i.gq to i32
  %i.gs = or disjoint i32 %i.go, %i.gr            ; 2 uses
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %_ZN5cmsysL7regnextEPc.exit.thread.i70, label %_ZN5cmsysL7regnextEPc.exit.i67

_ZN5cmsysL7regnextEPc.exit.i67:                   ; preds = %.preheader.i65
  %i.gu = load i8, ptr %.01318.i66, align 1, !tbaa !18
  %i.gv = icmp eq i8 %i.gu, 7
  %i.gw = zext nneg i32 %i.gs to i64              ; 2 uses
  %i.gx = sub nsw i64 0, %i.gw
  %.0.i.v.i68 = select i1 %i.gv, i64 %i.gx, i64 %i.gw
  %.0.i.i69 = getelementptr inbounds i8, ptr %.01318.i66, i64 %.0.i.v.i68 ; 2 uses
  %i.gy = icmp eq ptr %.0.i.i69, @_ZN5cmsysL8regdummyE
  br i1 %i.gy, label %_ZN5cmsysL7regnextEPc.exit.thread.i70, label %.preheader.i65, !llvm.loop !0

_ZN5cmsysL7regnextEPc.exit.thread.i70:            ; preds = %_ZN5cmsysL7regnextEPc.exit.i67, %.preheader.i65
  %.013.lcssa.i71 = phi ptr [ %.01318.i66, %.preheader.i65 ], [ @_ZN5cmsysL8regdummyE, %_ZN5cmsysL7regnextEPc.exit.i67 ] ; 4 uses
  %i.gz = load i8, ptr %.013.lcssa.i71, align 1, !tbaa !18
  %i.ha = icmp eq i8 %i.gz, 7
  %i.hb = ptrtoint ptr %.013.lcssa.i71 to i64     ; 2 uses
  %i.hc = ptrtoint ptr %i.gc to i64               ; 3 uses
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = sub i64 %i.hc, %i.hb
  %.0.in.i72 = select i1 %i.ha, i64 %i.hd, i64 %i.he ; 2 uses
  %.0.i73 = trunc i64 %.0.in.i72 to i8
  %i.hf = lshr i64 %.0.in.i72, 8
  %i.hg = trunc i64 %i.hf to i8
  %i.hh = getelementptr inbounds nuw i8, ptr %.013.lcssa.i71, i64 1
  store i8 %i.hg, ptr %i.hh, align 1, !tbaa !18
  %i.hi = getelementptr inbounds nuw i8, ptr %.013.lcssa.i71, i64 2
  store i8 %.0.i73, ptr %i.hi, align 1, !tbaa !18
  br label %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit74

_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit74:    ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit64._ZN5cmsys13RegExpCompile7regtailEPcPKc.exit74_crit_edge, %_ZN5cmsysL7regnextEPc.exit.thread.i70
  %.pre-phi = phi i64 [ %.pre124, %_ZN5cmsys13RegExpCompile7regnodeEc.exit64._ZN5cmsys13RegExpCompile7regtailEPcPKc.exit74_crit_edge ], [ %i.hc, %_ZN5cmsysL7regnextEPc.exit.thread.i70 ] ; 2 uses
  %i.hj = icmp eq ptr %.1, @_ZN5cmsysL8regdummyE
  br i1 %i.hj, label %_ZN5cmsysL7regnextEPc.exit.thread, label %.lr.ph157

.lr.ph157:                                        ; preds = %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit74, %_ZN5cmsysL7regnextEPc.exit
  %.028116156 = phi ptr [ %i.ix, %_ZN5cmsysL7regnextEPc.exit ], [ %.1, %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit74 ] ; 6 uses
  %i.hk = load i8, ptr %.028116156, align 1, !tbaa !18
  %.not.i = icmp ne i8 %i.hk, 6
  %i.hl = getelementptr inbounds nuw i8, ptr %.028116156, i64 3 ; 2 uses
  %i.hm = icmp eq ptr %i.hl, @_ZN5cmsysL8regdummyE
  %or.cond7.i = select i1 %.not.i, i1 true, i1 %i.hm
  br i1 %or.cond7.i, label %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit.thread111, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph157, %_ZN5cmsysL7regnextEPc.exit.i.i
  %.01318.i.i = phi ptr [ %.0.i.i.i, %_ZN5cmsysL7regnextEPc.exit.i.i ], [ %i.hl, %.lr.ph157 ] ; 5 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.01318.i.i, i64 1
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !18
  %i.hp = zext i8 %i.ho to i32
  %i.hq = shl nuw nsw i32 %i.hp, 8
  %i.hr = getelementptr inbounds nuw i8, ptr %.01318.i.i, i64 2
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !18
  %i.ht = zext i8 %i.hs to i32
  %i.hu = or disjoint i32 %i.hq, %i.ht            ; 2 uses
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit, label %_ZN5cmsysL7regnextEPc.exit.i.i

_ZN5cmsysL7regnextEPc.exit.i.i:                   ; preds = %.preheader.i.i
  %i.hw = load i8, ptr %.01318.i.i, align 1, !tbaa !18
  %i.hx = icmp eq i8 %i.hw, 7
  %i.hy = zext nneg i32 %i.hu to i64              ; 2 uses
  %i.hz = sub nsw i64 0, %i.hy
  %.0.i.v.i.i = select i1 %i.hx, i64 %i.hz, i64 %i.hy
  %.0.i.i.i = getelementptr inbounds i8, ptr %.01318.i.i, i64 %.0.i.v.i.i ; 2 uses
  %i.ia = icmp eq ptr %.0.i.i.i, @_ZN5cmsysL8regdummyE
  br i1 %i.ia, label %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit, label %.preheader.i.i, !llvm.loop !0

_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit:    ; preds = %.preheader.i.i, %_ZN5cmsysL7regnextEPc.exit.i.i
  %.013.lcssa.i.i = phi ptr [ %.01318.i.i, %.preheader.i.i ], [ @_ZN5cmsysL8regdummyE, %_ZN5cmsysL7regnextEPc.exit.i.i ] ; 4 uses
  %i.ib = load i8, ptr %.013.lcssa.i.i, align 1, !tbaa !18
  %i.ic = icmp eq i8 %i.ib, 7
  %i.id = ptrtoint ptr %.013.lcssa.i.i to i64     ; 2 uses
  %i.ie = sub i64 %i.id, %.pre-phi
  %i.if = sub i64 %.pre-phi, %i.id
  %.0.in.i.i = select i1 %i.ic, i64 %i.ie, i64 %i.if ; 2 uses
  %.0.i.i75 = trunc i64 %.0.in.i.i to i8
  %i.ig = lshr i64 %.0.in.i.i, 8
  %i.ih = trunc i64 %i.ig to i8
  %i.ii = getelementptr inbounds nuw i8, ptr %.013.lcssa.i.i, i64 1
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !18
  %i.ij = getelementptr inbounds nuw i8, ptr %.013.lcssa.i.i, i64 2
  store i8 %.0.i.i75, ptr %i.ij, align 1, !tbaa !18
  br label %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit.thread111

_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit.thread111: ; preds = %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit, %.lr.ph157
  %i.ik = getelementptr inbounds nuw i8, ptr %.028116156, i64 1
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !18
  %i.im = zext i8 %i.il to i32
  %i.in = shl nuw nsw i32 %i.im, 8
  %i.io = getelementptr inbounds nuw i8, ptr %.028116156, i64 2
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !18
  %i.iq = zext i8 %i.ip to i32
  %i.ir = or disjoint i32 %i.in, %i.iq            ; 2 uses
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %_ZN5cmsysL7regnextEPc.exit.thread, label %_ZN5cmsysL7regnextEPc.exit

_ZN5cmsysL7regnextEPc.exit:                       ; preds = %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit.thread111
  %i.it = load i8, ptr %.028116156, align 1, !tbaa !18
  %i.iu = icmp eq i8 %i.it, 7
  %i.iv = zext nneg i32 %i.ir to i64              ; 2 uses
  %i.iw = sub nsw i64 0, %i.iv
  %.sink = select i1 %i.iu, i64 %i.iw, i64 %i.iv
  %i.ix = getelementptr inbounds i8, ptr %.028116156, i64 %.sink ; 2 uses
  %i.iy = icmp eq ptr %i.ix, @_ZN5cmsysL8regdummyE
  br i1 %i.iy, label %_ZN5cmsysL7regnextEPc.exit.thread, label %.lr.ph157, !llvm.loop !50

_ZN5cmsysL7regnextEPc.exit.thread:                ; preds = %_ZN5cmsysL7regnextEPc.exit, %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit.thread111, %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit74
  %i.iz = load ptr, ptr %0, align 8, !tbaa !29    ; 3 uses
  br i1 %.not, label %.critedge, label %bb.af

bb.af:                                            ; preds = %_ZN5cmsysL7regnextEPc.exit.thread
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 1
  store ptr %i.ja, ptr %0, align 8, !tbaa !29
  %i.jb = load i8, ptr %i.iz, align 1, !tbaa !18
  %.not39 = icmp eq i8 %i.jb, 41
  br i1 %.not39, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %puts42 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  br label %.loopexit

.critedge:                                        ; preds = %_ZN5cmsysL7regnextEPc.exit.thread
  %i.jc = load i8, ptr %i.iz, align 1, !tbaa !18
  switch i8 %i.jc, label %bb.ai [
    i8 0, label %.loopexit
    i8 41, label %bb.ah
  ]

bb.ah:                                            ; preds = %.critedge
  %puts41 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  br label %.loopexit

bb.ai:                                            ; preds = %.critedge
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5cmsys13RegExpCompile9regbranchEPi.exit53, %bb.af, %_ZN5cmsys13RegExpCompile9regbranchEPi.exit53.thread, %_ZN5cmsys13RegExpCompile9regbranchEPi.exit.thread, %.critedge, %_ZN5cmsys13RegExpCompile9regbranchEPi.exit, %bb.ai, %bb.ah, %bb.ag, %bb.c
  %.030 = phi ptr [ null, %bb.c ], [ null, %_ZN5cmsys13RegExpCompile9regbranchEPi.exit ], [ null, %bb.ag ], [ %.1, %bb.af ], [ null, %bb.ah ], [ null, %bb.ai ], [ %.1, %.critedge ], [ null, %_ZN5cmsys13RegExpCompile9regbranchEPi.exit53.thread ], [ null, %_ZN5cmsys13RegExpCompile9regbranchEPi.exit.thread ], [ null, %_ZN5cmsys13RegExpCompile9regbranchEPi.exit53 ]
  ret ptr %.030
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN5cmsys13RegExpCompile7regnodeEc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i8 noundef signext %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 6 uses
  %i.c = icmp eq ptr %i.b, @_ZN5cmsysL8regdummyE
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !32
  %i.f = add nsw i64 %i.e, 3
  store i64 %i.f, ptr %i.d, align 8, !tbaa !32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %1, ptr %i.b, align 1, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 0, ptr %i.g, align 1, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 0, ptr %i.h, align 1, !tbaa !18
  store ptr %i.i, ptr %i.a, align 8, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef ptr @_ZN5cmsys13RegExpCompile9regbranchEPi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef captures(none) initializes((0, 4)) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %1, align 4, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 8 uses
  %i.d = icmp eq ptr %i.c, @_ZN5cmsysL8regdummyE
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !32
  %i.g = add nsw i64 %i.f, 3
  store i64 %i.g, ptr %i.e, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit.preheader

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 6, ptr %i.c, align 1, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 0, ptr %i.h, align 1, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 0, ptr %i.i, align 1, !tbaa !18
  store ptr %i.j, ptr %i.b, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit.preheader

_ZN5cmsys13RegExpCompile7regnodeEc.exit.preheader: ; preds = %bb.b, %bb.c
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit

_ZN5cmsys13RegExpCompile7regnodeEc.exit:          ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit.backedge, %_ZN5cmsys13RegExpCompile7regnodeEc.exit.preheader
  %.0 = phi ptr [ null, %_ZN5cmsys13RegExpCompile7regnodeEc.exit.preheader ], [ %i.m, %_ZN5cmsys13RegExpCompile7regnodeEc.exit.backedge ] ; 4 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !29
  %i.l = load i8, ptr %i.k, align 1, !tbaa !18
  switch i8 %i.l, label %bb.d [
    i8 0, label %.critedge
    i8 124, label %.critedge
    i8 41, label %.critedge
  ]

bb.d:                                             ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit
  %i.m = call noundef ptr @_ZN5cmsys13RegExpCompile8regpieceEPi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.a) ; 3 uses
  %.not18 = icmp eq ptr %i.m, null
  br i1 %.not18, label %_ZN5cmsys13RegExpCompile7regnodeEc.exit20, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %i.a, align 4, !tbaa !34   ; 2 uses
  %i.o = and i32 %i.n, 1
  %i.p = load i32, ptr %1, align 4, !tbaa !34
  %i.q = or i32 %i.p, %i.o                        ; 2 uses
  store i32 %i.q, ptr %1, align 4, !tbaa !34
  %.not19 = icmp eq ptr %.0, null
  br i1 %.not19, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = and i32 %i.n, 4
  %i.s = or i32 %i.q, %i.r
  store i32 %i.s, ptr %1, align 4, !tbaa !34
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit.backedge

bb.g:                                             ; preds = %bb.e
  %i.t = icmp eq ptr %.0, @_ZN5cmsysL8regdummyE
  br i1 %i.t, label %_ZN5cmsys13RegExpCompile7regnodeEc.exit.backedge, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g, %_ZN5cmsysL7regnextEPc.exit.i
  %.01318.i = phi ptr [ %.0.i.i, %_ZN5cmsysL7regnextEPc.exit.i ], [ %.0, %bb.g ] ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01318.i, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !18
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 8
  %i.y = getelementptr inbounds nuw i8, ptr %.01318.i, i64 2
  %i.z = load i8, ptr %i.y, align 1, !tbaa !18
  %i.aa = zext i8 %i.z to i32
  %i.ab = or disjoint i32 %i.x, %i.aa             ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZN5cmsysL7regnextEPc.exit.thread.i, label %_ZN5cmsysL7regnextEPc.exit.i

_ZN5cmsysL7regnextEPc.exit.i:                     ; preds = %.preheader.i
  %i.ad = load i8, ptr %.01318.i, align 1, !tbaa !18
  %i.ae = icmp eq i8 %i.ad, 7
  %i.af = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ag = sub nsw i64 0, %i.af
  %.0.i.v.i = select i1 %i.ae, i64 %i.ag, i64 %i.af
  %.0.i.i = getelementptr inbounds i8, ptr %.01318.i, i64 %.0.i.v.i ; 2 uses
  %i.ah = icmp eq ptr %.0.i.i, @_ZN5cmsysL8regdummyE
  br i1 %i.ah, label %_ZN5cmsysL7regnextEPc.exit.thread.i, label %.preheader.i, !llvm.loop !0

_ZN5cmsysL7regnextEPc.exit.thread.i:              ; preds = %_ZN5cmsysL7regnextEPc.exit.i, %.preheader.i
  %.013.lcssa.i = phi ptr [ %.01318.i, %.preheader.i ], [ @_ZN5cmsysL8regdummyE, %_ZN5cmsysL7regnextEPc.exit.i ] ; 4 uses
  %i.ai = load i8, ptr %.013.lcssa.i, align 1, !tbaa !18
  %i.aj = icmp eq i8 %i.ai, 7
  %i.ak = ptrtoint ptr %.013.lcssa.i to i64       ; 2 uses
  %i.al = ptrtoint ptr %i.m to i64                ; 2 uses
  %i.am = sub i64 %i.ak, %i.al
  %i.an = sub i64 %i.al, %i.ak
  %.0.in.i = select i1 %i.aj, i64 %i.am, i64 %i.an ; 2 uses
  %.0.i = trunc i64 %.0.in.i to i8
  %i.ao = lshr i64 %.0.in.i, 8
  %i.ap = trunc i64 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.lcssa.i, i64 1
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %.013.lcssa.i, i64 2
  store i8 %.0.i, ptr %i.ar, align 1, !tbaa !18
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit.backedge

_ZN5cmsys13RegExpCompile7regnodeEc.exit.backedge: ; preds = %_ZN5cmsysL7regnextEPc.exit.thread.i, %bb.g, %bb.f
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit, !llvm.loop !1

.critedge:                                        ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit, %_ZN5cmsys13RegExpCompile7regnodeEc.exit, %_ZN5cmsys13RegExpCompile7regnodeEc.exit
  %.not17 = icmp eq ptr %.0, null
  br i1 %.not17, label %bb.h, label %_ZN5cmsys13RegExpCompile7regnodeEc.exit20

bb.h:                                             ; preds = %.critedge
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !31  ; 5 uses
  %i.at = icmp eq ptr %i.as, @_ZN5cmsysL8regdummyE
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !32
  %i.aw = add nsw i64 %i.av, 3
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit20

bb.j:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store i8 9, ptr %i.as, align 1, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  store i8 0, ptr %i.ax, align 1, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 3
  store i8 0, ptr %i.ay, align 1, !tbaa !18
  store ptr %i.az, ptr %i.b, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit20

_ZN5cmsys13RegExpCompile7regnodeEc.exit20:        ; preds = %bb.d, %bb.j, %bb.i, %.critedge
  %.012 = phi ptr [ %i.c, %bb.j ], [ %i.c, %.critedge ], [ %i.c, %bb.i ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.012
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5cmsys13RegExpCompile7regtailEPcPKc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, @_ZN5cmsysL8regdummyE
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a, %_ZN5cmsysL7regnextEPc.exit
  %.01318 = phi ptr [ %.0.i, %_ZN5cmsysL7regnextEPc.exit ], [ %0, %bb.a ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.01318, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !18
  %i.d = zext i8 %i.c to i32
  %i.e = shl nuw nsw i32 %i.d, 8
  %i.f = getelementptr inbounds nuw i8, ptr %.01318, i64 2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !18
  %i.h = zext i8 %i.g to i32
  %i.i = or disjoint i32 %i.e, %i.h               ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN5cmsysL7regnextEPc.exit.thread, label %_ZN5cmsysL7regnextEPc.exit

_ZN5cmsysL7regnextEPc.exit:                       ; preds = %.preheader
  %i.k = load i8, ptr %.01318, align 1, !tbaa !18
  %i.l = icmp eq i8 %i.k, 7
  %i.m = zext nneg i32 %i.i to i64                ; 2 uses
  %i.n = sub nsw i64 0, %i.m
  %.0.i.v = select i1 %i.l, i64 %i.n, i64 %i.m
  %.0.i = getelementptr inbounds i8, ptr %.01318, i64 %.0.i.v ; 2 uses
  %i.o = icmp eq ptr %.0.i, @_ZN5cmsysL8regdummyE
  br i1 %i.o, label %_ZN5cmsysL7regnextEPc.exit.thread, label %.preheader, !llvm.loop !0

_ZN5cmsysL7regnextEPc.exit.thread:                ; preds = %.preheader, %_ZN5cmsysL7regnextEPc.exit
  %.013.lcssa = phi ptr [ %.01318, %.preheader ], [ @_ZN5cmsysL8regdummyE, %_ZN5cmsysL7regnextEPc.exit ] ; 4 uses
  %i.p = load i8, ptr %.013.lcssa, align 1, !tbaa !18
  %i.q = icmp eq i8 %i.p, 7
  %i.r = ptrtoint ptr %.013.lcssa to i64          ; 2 uses
  %i.s = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.t = sub i64 %i.r, %i.s
  %i.u = sub i64 %i.s, %i.r
  %.0.in = select i1 %i.q, i64 %i.t, i64 %i.u     ; 2 uses
  %.0 = trunc i64 %.0.in to i8
  %i.v = lshr i64 %.0.in, 8
  %i.w = trunc i64 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %.013.lcssa, i64 1
  store i8 %i.w, ptr %i.x, align 1, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.013.lcssa, i64 2
  store i8 %.0, ptr %i.y, align 1, !tbaa !18
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN5cmsysL7regnextEPc.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5cmsys13RegExpCompile9regoptailEPcPKc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %0, @_ZN5cmsysL8regdummyE
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !18
  %.not = icmp ne i8 %i.c, 6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.e = icmp eq ptr %i.d, @_ZN5cmsysL8regdummyE
  %or.cond7 = select i1 %.not, i1 true, i1 %i.e
  br i1 %or.cond7, label %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %_ZN5cmsysL7regnextEPc.exit.i
  %.01318.i = phi ptr [ %.0.i.i, %_ZN5cmsysL7regnextEPc.exit.i ], [ %i.d, %bb.b ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01318.i, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !18
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 8
  %i.j = getelementptr inbounds nuw i8, ptr %.01318.i, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !18
  %i.l = zext i8 %i.k to i32
  %i.m = or disjoint i32 %i.i, %i.l               ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZN5cmsysL7regnextEPc.exit.thread.i, label %_ZN5cmsysL7regnextEPc.exit.i

_ZN5cmsysL7regnextEPc.exit.i:                     ; preds = %.preheader.i
  %i.o = load i8, ptr %.01318.i, align 1, !tbaa !18
  %i.p = icmp eq i8 %i.o, 7
  %i.q = zext nneg i32 %i.m to i64                ; 2 uses
  %i.r = sub nsw i64 0, %i.q
  %.0.i.v.i = select i1 %i.p, i64 %i.r, i64 %i.q
  %.0.i.i = getelementptr inbounds i8, ptr %.01318.i, i64 %.0.i.v.i ; 2 uses
  %i.s = icmp eq ptr %.0.i.i, @_ZN5cmsysL8regdummyE
  br i1 %i.s, label %_ZN5cmsysL7regnextEPc.exit.thread.i, label %.preheader.i, !llvm.loop !0

_ZN5cmsysL7regnextEPc.exit.thread.i:              ; preds = %_ZN5cmsysL7regnextEPc.exit.i, %.preheader.i
  %.013.lcssa.i = phi ptr [ %.01318.i, %.preheader.i ], [ @_ZN5cmsysL8regdummyE, %_ZN5cmsysL7regnextEPc.exit.i ] ; 4 uses
  %i.t = load i8, ptr %.013.lcssa.i, align 1, !tbaa !18
  %i.u = icmp eq i8 %i.t, 7
  %i.v = ptrtoint ptr %.013.lcssa.i to i64        ; 2 uses
  %i.w = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.x = sub i64 %i.v, %i.w
  %i.y = sub i64 %i.w, %i.v
  %.0.in.i = select i1 %i.u, i64 %i.x, i64 %i.y   ; 2 uses
  %.0.i = trunc i64 %.0.in.i to i8
  %i.z = lshr i64 %.0.in.i, 8
  %i.aa = trunc i64 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.lcssa.i, i64 1
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.lcssa.i, i64 2
  store i8 %.0.i, ptr %i.ac, align 1, !tbaa !18
  br label %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit

_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit:      ; preds = %_ZN5cmsysL7regnextEPc.exit.thread.i, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef ptr @_ZN5cmsys13RegExpCompile8regpieceEPi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = call noundef ptr @_ZN5cmsys13RegExpCompile7regatomEPi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.a) ; 38 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !29
  %i.d = load i8, ptr %i.c, align 1, !tbaa !18    ; 4 uses
  %i.e = icmp eq i8 %i.d, 42
  %i.f = icmp eq i8 %i.d, 43                      ; 2 uses
  %i.g = icmp ne i8 %i.d, 63                      ; 2 uses
  %i.h = load i32, ptr %i.a, align 4, !tbaa !34   ; 4 uses
  switch i8 %i.d, label %bb.c [
    i8 63, label %bb.d
    i8 43, label %bb.d
    i8 42, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  store i32 %i.h, ptr %1, align 4, !tbaa !34
  br label %bb.al

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.i = and i32 %i.h, 1
  %i.j = icmp eq i32 %i.i, 0
  %or.cond8 = and i1 %i.g, %i.j
  br i1 %or.cond8, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %puts48 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  br label %bb.al

bb.f:                                             ; preds = %bb.d
  %i.k = select i1 %i.f, i32 1, i32 4
  store i32 %i.k, ptr %1, align 4, !tbaa !34
  br i1 %i.e, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.l = and i32 %i.h, 2
  %.not46 = icmp eq i32 %i.l, 0
  %i.m = ptrtoaddr ptr %i.b to i64                ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !31   ; 10 uses
  %i.p = ptrtoaddr ptr %i.o to i64                ; 6 uses
  %i.q = icmp eq ptr %i.o, @_ZN5cmsysL8regdummyE  ; 2 uses
  br i1 %.not46, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !32
  %i.t = add nsw i64 %i.s, 3
  store i64 %i.t, ptr %i.r, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit

bb.j:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  store ptr %i.u, ptr %i.n, align 8, !tbaa !31
  %i.v = icmp ugt ptr %i.o, %i.b
  br i1 %i.v, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.w = add i64 %i.m, 3
  %i.x = sub i64 %i.w, %i.p
  %scevgep.i = getelementptr i8, ptr %i.o, i64 %i.x
  %i.y = sub i64 %i.m, %i.p
  %scevgep14.i = getelementptr i8, ptr %i.o, i64 %i.y
  %i.z = sub i64 %i.p, %i.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %scevgep.i, ptr align 1 %scevgep14.i, i64 %i.z, i1 false), !tbaa !18
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 10, ptr %i.b, align 1, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 0, ptr %i.aa, align 1, !tbaa !18
  store i8 0, ptr %i.ab, align 1, !tbaa !18
  br label %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit

bb.k:                                             ; preds = %bb.g
  br i1 %i.q, label %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit55.thread, label %bb.l

_ZN5cmsys13RegExpCompile9reginsertEcPc.exit55.thread: ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !32
  %i.ae = add nsw i64 %i.ad, 3
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  store ptr %i.af, ptr %i.n, align 8, !tbaa !31
  %i.ag = icmp ugt ptr %i.o, %i.b
  br i1 %i.ag, label %.lr.ph.preheader.i52, label %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit55

.lr.ph.preheader.i52:                             ; preds = %bb.l
  %i.ah = add i64 %i.m, 3
  %i.ai = sub i64 %i.ah, %i.p
  %scevgep.i53 = getelementptr i8, ptr %i.o, i64 %i.ai
  %i.aj = sub i64 %i.m, %i.p
  %scevgep14.i54 = getelementptr i8, ptr %i.o, i64 %i.aj
  %i.ak = sub i64 %i.p, %i.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %scevgep.i53, ptr align 1 %scevgep14.i54, i64 %i.ak, i1 false), !tbaa !18
  br label %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit55

_ZN5cmsys13RegExpCompile9reginsertEcPc.exit55:    ; preds = %bb.l, %.lr.ph.preheader.i52
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 6, ptr %i.b, align 1, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 0, ptr %i.al, align 1, !tbaa !18
  store i8 0, ptr %i.am, align 1, !tbaa !18
  %.pre137 = load ptr, ptr %i.n, align 8, !tbaa !31 ; 6 uses
  %i.an = icmp eq ptr %.pre137, @_ZN5cmsysL8regdummyE
  br i1 %i.an, label %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit55._crit_edge, label %bb.n

_ZN5cmsys13RegExpCompile9reginsertEcPc.exit55._crit_edge: ; preds = %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit55
  %.phi.trans.insert213 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre214 = load i64, ptr %.phi.trans.insert213, align 8, !tbaa !32
  br label %bb.m

bb.m:                                             ; preds = %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit55._crit_edge, %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit55.thread
  %i.ao = phi i64 [ %.pre214, %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit55._crit_edge ], [ %i.ae, %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit55.thread ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = add nsw i64 %i.ao, 3
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit

bb.n:                                             ; preds = %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit55
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre137, i64 1
  store i8 7, ptr %.pre137, align 1, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %.pre137, i64 2
  store i8 0, ptr %i.ar, align 1, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %.pre137, i64 3
  store i8 0, ptr %i.as, align 1, !tbaa !18
  store ptr %i.at, ptr %i.n, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit

_ZN5cmsys13RegExpCompile7regnodeEc.exit:          ; preds = %bb.m, %bb.n
  %i.au = phi ptr [ @_ZN5cmsysL8regdummyE, %bb.m ], [ %.pre137, %bb.n ]
  %i.av = icmp eq ptr %i.b, @_ZN5cmsysL8regdummyE ; 3 uses
  br i1 %i.av, label %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit68, label %bb.o

bb.o:                                             ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit
  %i.aw = load i8, ptr %i.b, align 1, !tbaa !18   ; 2 uses
  %.not.i = icmp ne i8 %i.aw, 6
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, @_ZN5cmsysL8regdummyE ; 2 uses
  %or.cond7.i = select i1 %.not.i, i1 true, i1 %i.ay
  br i1 %or.cond7.i, label %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit.thread131, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.o, %_ZN5cmsysL7regnextEPc.exit.i.i
  %.01318.i.i = phi ptr [ %.0.i.i.i, %_ZN5cmsysL7regnextEPc.exit.i.i ], [ %i.ax, %bb.o ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.01318.i.i, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !18
  %i.bb = zext i8 %i.ba to i32
  %i.bc = shl nuw nsw i32 %i.bb, 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.01318.i.i, i64 2
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !18
  %i.bf = zext i8 %i.be to i32
  %i.bg = or disjoint i32 %i.bc, %i.bf            ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit, label %_ZN5cmsysL7regnextEPc.exit.i.i

_ZN5cmsysL7regnextEPc.exit.i.i:                   ; preds = %.preheader.i.i
  %i.bi = load i8, ptr %.01318.i.i, align 1, !tbaa !18
  %i.bj = icmp eq i8 %i.bi, 7
  %i.bk = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bl = sub nsw i64 0, %i.bk
  %.0.i.v.i.i = select i1 %i.bj, i64 %i.bl, i64 %i.bk
  %.0.i.i.i = getelementptr inbounds i8, ptr %.01318.i.i, i64 %.0.i.v.i.i ; 2 uses
  %i.bm = icmp eq ptr %.0.i.i.i, @_ZN5cmsysL8regdummyE
  br i1 %i.bm, label %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit, label %.preheader.i.i, !llvm.loop !0

_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit:    ; preds = %.preheader.i.i, %_ZN5cmsysL7regnextEPc.exit.i.i
  %.013.lcssa.i.i = phi ptr [ %.01318.i.i, %.preheader.i.i ], [ @_ZN5cmsysL8regdummyE, %_ZN5cmsysL7regnextEPc.exit.i.i ] ; 4 uses
  %i.bn = load i8, ptr %.013.lcssa.i.i, align 1, !tbaa !18
  %i.bo = icmp eq i8 %i.bn, 7
  %i.bp = ptrtoint ptr %.013.lcssa.i.i to i64     ; 2 uses
  %i.bq = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sub i64 %i.bq, %i.bp
  %.0.in.i.i = select i1 %i.bo, i64 %i.br, i64 %i.bs ; 2 uses
  %.0.i.i = trunc i64 %.0.in.i.i to i8
  %i.bt = lshr i64 %.0.in.i.i, 8
  %i.bu = trunc i64 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %.013.lcssa.i.i, i64 1
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %.013.lcssa.i.i, i64 2
  store i8 %.0.i.i, ptr %i.bw, align 1, !tbaa !18
  %.pre138 = load i8, ptr %i.b, align 1, !tbaa !18
  br label %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit.thread131

_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit.thread131: ; preds = %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit, %bb.o
  %i.bx = phi i8 [ %.pre138, %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit ], [ %i.aw, %bb.o ]
  %.not.i57 = icmp ne i8 %i.bx, 6
  %or.cond7.i58 = select i1 %.not.i57, i1 true, i1 %i.ay
  br i1 %or.cond7.i58, label %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit68, label %.preheader.i.i59

.preheader.i.i59:                                 ; preds = %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit.thread131, %_ZN5cmsysL7regnextEPc.exit.i.i61
  %.01318.i.i60 = phi ptr [ %.0.i.i.i63, %_ZN5cmsysL7regnextEPc.exit.i.i61 ], [ %i.ax, %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit.thread131 ] ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.01318.i.i60, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !18
  %i.ca = zext i8 %i.bz to i32
  %i.cb = shl nuw nsw i32 %i.ca, 8
  %i.cc = getelementptr inbounds nuw i8, ptr %.01318.i.i60, i64 2
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !18
  %i.ce = zext i8 %i.cd to i32
  %i.cf = or disjoint i32 %i.cb, %i.ce            ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %_ZN5cmsysL7regnextEPc.exit.thread.i.i64, label %_ZN5cmsysL7regnextEPc.exit.i.i61

_ZN5cmsysL7regnextEPc.exit.i.i61:                 ; preds = %.preheader.i.i59
  %i.ch = load i8, ptr %.01318.i.i60, align 1, !tbaa !18
  %i.ci = icmp eq i8 %i.ch, 7
  %i.cj = zext nneg i32 %i.cf to i64              ; 2 uses
  %i.ck = sub nsw i64 0, %i.cj
  %.0.i.v.i.i62 = select i1 %i.ci, i64 %i.ck, i64 %i.cj
  %.0.i.i.i63 = getelementptr inbounds i8, ptr %.01318.i.i60, i64 %.0.i.v.i.i62 ; 2 uses
  %i.cl = icmp eq ptr %.0.i.i.i63, @_ZN5cmsysL8regdummyE
  br i1 %i.cl, label %_ZN5cmsysL7regnextEPc.exit.thread.i.i64, label %.preheader.i.i59, !llvm.loop !0

_ZN5cmsysL7regnextEPc.exit.thread.i.i64:          ; preds = %_ZN5cmsysL7regnextEPc.exit.i.i61, %.preheader.i.i59
  %.013.lcssa.i.i65 = phi ptr [ %.01318.i.i60, %.preheader.i.i59 ], [ @_ZN5cmsysL8regdummyE, %_ZN5cmsysL7regnextEPc.exit.i.i61 ] ; 4 uses
  %i.cm = load i8, ptr %.013.lcssa.i.i65, align 1, !tbaa !18
  %i.cn = icmp eq i8 %i.cm, 7
  %i.co = ptrtoint ptr %.013.lcssa.i.i65 to i64   ; 2 uses
  %i.cp = ptrtoint ptr %i.b to i64                ; 2 uses
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = sub i64 %i.cp, %i.co
  %.0.in.i.i66 = select i1 %i.cn, i64 %i.cq, i64 %i.cr ; 2 uses
  %.0.i.i67 = trunc i64 %.0.in.i.i66 to i8
  %i.cs = lshr i64 %.0.in.i.i66, 8
  %i.ct = trunc i64 %i.cs to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %.013.lcssa.i.i65, i64 1
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %.013.lcssa.i.i65, i64 2
  store i8 %.0.i.i67, ptr %i.cv, align 1, !tbaa !18
  br label %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit68

_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit68:  ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit, %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit.thread131, %_ZN5cmsysL7regnextEPc.exit.thread.i.i64
  %i.cw = load ptr, ptr %i.n, align 8, !tbaa !31  ; 6 uses
  %i.cx = icmp eq ptr %i.cw, @_ZN5cmsysL8regdummyE
  br i1 %i.cx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit68
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !32
  %i.da = add nsw i64 %i.cz, 3
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit69

bb.q:                                             ; preds = %_ZN5cmsys13RegExpCompile9regoptailEPcPKc.exit68
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store i8 6, ptr %i.cw, align 1, !tbaa !18
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  store i8 0, ptr %i.db, align 1, !tbaa !18
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 3 ; 2 uses
  store i8 0, ptr %i.dc, align 1, !tbaa !18
  store ptr %i.dd, ptr %i.n, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit69

_ZN5cmsys13RegExpCompile7regnodeEc.exit69:        ; preds = %bb.p, %bb.q
  %i.de = phi ptr [ @_ZN5cmsysL8regdummyE, %bb.p ], [ %i.dd, %bb.q ]
  br i1 %i.av, label %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit69, %_ZN5cmsysL7regnextEPc.exit.i
  %.01318.i = phi ptr [ %.0.i.i70, %_ZN5cmsysL7regnextEPc.exit.i ], [ %i.b, %_ZN5cmsys13RegExpCompile7regnodeEc.exit69 ] ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.01318.i, i64 1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !18
  %i.dh = zext i8 %i.dg to i32
  %i.di = shl nuw nsw i32 %i.dh, 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.01318.i, i64 2
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !18
  %i.dl = zext i8 %i.dk to i32
  %i.dm = or disjoint i32 %i.di, %i.dl            ; 2 uses
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %_ZN5cmsysL7regnextEPc.exit.thread.i, label %_ZN5cmsysL7regnextEPc.exit.i

_ZN5cmsysL7regnextEPc.exit.i:                     ; preds = %.preheader.i
  %i.do = load i8, ptr %.01318.i, align 1, !tbaa !18
  %i.dp = icmp eq i8 %i.do, 7
  %i.dq = zext nneg i32 %i.dm to i64              ; 2 uses
  %i.dr = sub nsw i64 0, %i.dq
  %.0.i.v.i = select i1 %i.dp, i64 %i.dr, i64 %i.dq
  %.0.i.i70 = getelementptr inbounds i8, ptr %.01318.i, i64 %.0.i.v.i ; 2 uses
  %i.ds = icmp eq ptr %.0.i.i70, @_ZN5cmsysL8regdummyE
  br i1 %i.ds, label %_ZN5cmsysL7regnextEPc.exit.thread.i, label %.preheader.i, !llvm.loop !0

_ZN5cmsysL7regnextEPc.exit.thread.i:              ; preds = %_ZN5cmsysL7regnextEPc.exit.i, %.preheader.i
  %.013.lcssa.i = phi ptr [ %.01318.i, %.preheader.i ], [ @_ZN5cmsysL8regdummyE, %_ZN5cmsysL7regnextEPc.exit.i ] ; 4 uses
  %i.dt = load i8, ptr %.013.lcssa.i, align 1, !tbaa !18
  %i.du = icmp eq i8 %i.dt, 7
  %i.dv = ptrtoint ptr %.013.lcssa.i to i64       ; 2 uses
  %i.dw = ptrtoint ptr %i.cw to i64               ; 2 uses
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = sub i64 %i.dw, %i.dv
  %.0.in.i = select i1 %i.du, i64 %i.dx, i64 %i.dy ; 2 uses
  %.0.i = trunc i64 %.0.in.i to i8
  %i.dz = lshr i64 %.0.in.i, 8
  %i.ea = trunc i64 %i.dz to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %.013.lcssa.i, i64 1
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !18
  %i.ec = getelementptr inbounds nuw i8, ptr %.013.lcssa.i, i64 2
  store i8 %.0.i, ptr %i.ec, align 1, !tbaa !18
  %.pre139 = load ptr, ptr %i.n, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit

_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit:      ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit69, %_ZN5cmsysL7regnextEPc.exit.thread.i
  %i.ed = phi ptr [ %i.de, %_ZN5cmsys13RegExpCompile7regnodeEc.exit69 ], [ %.pre139, %_ZN5cmsysL7regnextEPc.exit.thread.i ] ; 6 uses
  %i.ee = icmp eq ptr %i.ed, @_ZN5cmsysL8regdummyE
  br i1 %i.ee, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !32
  %i.eh = add nsw i64 %i.eg, 3
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit71

bb.s:                                             ; preds = %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  store i8 9, ptr %i.ed, align 1, !tbaa !18
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  store i8 0, ptr %i.ei, align 1, !tbaa !18
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 3
  store i8 0, ptr %i.ej, align 1, !tbaa !18
  store ptr %i.ek, ptr %i.n, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit71

_ZN5cmsys13RegExpCompile7regnodeEc.exit71:        ; preds = %bb.r, %bb.s
  br i1 %i.av, label %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit, label %.preheader.i72

.preheader.i72:                                   ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit71, %_ZN5cmsysL7regnextEPc.exit.i74
  %.01318.i73 = phi ptr [ %.0.i.i76, %_ZN5cmsysL7regnextEPc.exit.i74 ], [ %i.b, %_ZN5cmsys13RegExpCompile7regnodeEc.exit71 ] ; 5 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.01318.i73, i64 1
  %i.em = load i8, ptr %i.el, align 1, !tbaa !18
  %i.en = zext i8 %i.em to i32
  %i.eo = shl nuw nsw i32 %i.en, 8
  %i.ep = getelementptr inbounds nuw i8, ptr %.01318.i73, i64 2
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !18
  %i.er = zext i8 %i.eq to i32
  %i.es = or disjoint i32 %i.eo, %i.er            ; 2 uses
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %_ZN5cmsysL7regnextEPc.exit.thread.i77, label %_ZN5cmsysL7regnextEPc.exit.i74

_ZN5cmsysL7regnextEPc.exit.i74:                   ; preds = %.preheader.i72
  %i.eu = load i8, ptr %.01318.i73, align 1, !tbaa !18
  %i.ev = icmp eq i8 %i.eu, 7
  %i.ew = zext nneg i32 %i.es to i64              ; 2 uses
  %i.ex = sub nsw i64 0, %i.ew
  %.0.i.v.i75 = select i1 %i.ev, i64 %i.ex, i64 %i.ew
  %.0.i.i76 = getelementptr inbounds i8, ptr %.01318.i73, i64 %.0.i.v.i75 ; 2 uses
  %i.ey = icmp eq ptr %.0.i.i76, @_ZN5cmsysL8regdummyE
  br i1 %i.ey, label %_ZN5cmsysL7regnextEPc.exit.thread.i77, label %.preheader.i72, !llvm.loop !0

_ZN5cmsysL7regnextEPc.exit.thread.i77:            ; preds = %_ZN5cmsysL7regnextEPc.exit.i74, %.preheader.i72
  %.013.lcssa.i78 = phi ptr [ %.01318.i73, %.preheader.i72 ], [ @_ZN5cmsysL8regdummyE, %_ZN5cmsysL7regnextEPc.exit.i74 ] ; 4 uses
  %i.ez = load i8, ptr %.013.lcssa.i78, align 1, !tbaa !18
  %i.fa = icmp eq i8 %i.ez, 7
  %i.fb = ptrtoint ptr %.013.lcssa.i78 to i64     ; 2 uses
  %i.fc = ptrtoint ptr %i.ed to i64               ; 2 uses
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = sub i64 %i.fc, %i.fb
  %.0.in.i79 = select i1 %i.fa, i64 %i.fd, i64 %i.fe ; 2 uses
  %.0.i80 = trunc i64 %.0.in.i79 to i8
  %i.ff = lshr i64 %.0.in.i79, 8
  %i.fg = trunc i64 %i.ff to i8
  %i.fh = getelementptr inbounds nuw i8, ptr %.013.lcssa.i78, i64 1
  store i8 %i.fg, ptr %i.fh, align 1, !tbaa !18
  %i.fi = getelementptr inbounds nuw i8, ptr %.013.lcssa.i78, i64 2
  store i8 %.0.i80, ptr %i.fi, align 1, !tbaa !18
  br label %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit

.critedge:                                        ; preds = %bb.f
  br i1 %i.f, label %bb.t, label %.critedge50

bb.t:                                             ; preds = %.critedge
  %i.fj = and i32 %i.h, 2
  %.not47 = icmp eq i32 %i.fj, 0
  br i1 %.not47, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fk = ptrtoaddr ptr %i.b to i64               ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !31 ; 6 uses
  %i.fn = ptrtoaddr ptr %i.fm to i64              ; 3 uses
  %i.fo = icmp eq ptr %i.fm, @_ZN5cmsysL8regdummyE
  br i1 %i.fo, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !32
  %i.fr = add nsw i64 %i.fq, 3
  store i64 %i.fr, ptr %i.fp, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit

bb.w:                                             ; preds = %bb.u
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 3
  store ptr %i.fs, ptr %i.fl, align 8, !tbaa !31
  %i.ft = icmp ugt ptr %i.fm, %i.b
  br i1 %i.ft, label %.lr.ph.preheader.i83, label %._crit_edge.i82

.lr.ph.preheader.i83:                             ; preds = %bb.w
  %i.fu = add i64 %i.fk, 3
  %i.fv = sub i64 %i.fu, %i.fn
  %scevgep.i84 = getelementptr i8, ptr %i.fm, i64 %i.fv
  %i.fw = sub i64 %i.fk, %i.fn
  %scevgep14.i85 = getelementptr i8, ptr %i.fm, i64 %i.fw
  %i.fx = sub i64 %i.fn, %i.fk
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %scevgep.i84, ptr align 1 %scevgep14.i85, i64 %i.fx, i1 false), !tbaa !18
  br label %._crit_edge.i82

._crit_edge.i82:                                  ; preds = %.lr.ph.preheader.i83, %bb.w
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 11, ptr %i.b, align 1, !tbaa !18
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 0, ptr %i.fy, align 1, !tbaa !18
  store i8 0, ptr %i.fz, align 1, !tbaa !18
  br label %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit

bb.x:                                             ; preds = %bb.t
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !31 ; 7 uses
  %i.gc = icmp eq ptr %i.gb, @_ZN5cmsysL8regdummyE ; 2 uses
  br i1 %i.gc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !32
  %i.gf = add nsw i64 %i.ge, 3
  store i64 %i.gf, ptr %i.gd, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit87

bb.z:                                             ; preds = %bb.x
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gb, i64 1
  store i8 6, ptr %i.gb, align 1, !tbaa !18
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gb, i64 2
  store i8 0, ptr %i.gg, align 1, !tbaa !18
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gb, i64 3 ; 2 uses
  store i8 0, ptr %i.gh, align 1, !tbaa !18
  store ptr %i.gi, ptr %i.ga, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit87

_ZN5cmsys13RegExpCompile7regnodeEc.exit87:        ; preds = %bb.y, %bb.z
  %i.gj = phi ptr [ @_ZN5cmsysL8regdummyE, %bb.y ], [ %i.gi, %bb.z ]
  %i.gk = icmp eq ptr %i.b, @_ZN5cmsysL8regdummyE ; 2 uses
  br i1 %i.gk, label %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit176, label %.preheader.i167

.preheader.i167:                                  ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit87, %_ZN5cmsysL7regnextEPc.exit.i169
  %.01318.i168 = phi ptr [ %.0.i.i171, %_ZN5cmsysL7regnextEPc.exit.i169 ], [ %i.b, %_ZN5cmsys13RegExpCompile7regnodeEc.exit87 ] ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.01318.i168, i64 1
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !18
  %i.gn = zext i8 %i.gm to i32
  %i.go = shl nuw nsw i32 %i.gn, 8
  %i.gp = getelementptr inbounds nuw i8, ptr %.01318.i168, i64 2
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !18
  %i.gr = zext i8 %i.gq to i32
  %i.gs = or disjoint i32 %i.go, %i.gr            ; 2 uses
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %_ZN5cmsysL7regnextEPc.exit.thread.i172, label %_ZN5cmsysL7regnextEPc.exit.i169

_ZN5cmsysL7regnextEPc.exit.i169:                  ; preds = %.preheader.i167
  %i.gu = load i8, ptr %.01318.i168, align 1, !tbaa !18
  %i.gv = icmp eq i8 %i.gu, 7
  %i.gw = zext nneg i32 %i.gs to i64              ; 2 uses
  %i.gx = sub nsw i64 0, %i.gw
  %.0.i.v.i170 = select i1 %i.gv, i64 %i.gx, i64 %i.gw
  %.0.i.i171 = getelementptr inbounds i8, ptr %.01318.i168, i64 %.0.i.v.i170 ; 2 uses
  %i.gy = icmp eq ptr %.0.i.i171, @_ZN5cmsysL8regdummyE
  br i1 %i.gy, label %_ZN5cmsysL7regnextEPc.exit.thread.i172, label %.preheader.i167, !llvm.loop !0

_ZN5cmsysL7regnextEPc.exit.thread.i172:           ; preds = %_ZN5cmsysL7regnextEPc.exit.i169, %.preheader.i167
  %.013.lcssa.i173 = phi ptr [ %.01318.i168, %.preheader.i167 ], [ @_ZN5cmsysL8regdummyE, %_ZN5cmsysL7regnextEPc.exit.i169 ] ; 4 uses
  %i.gz = load i8, ptr %.013.lcssa.i173, align 1, !tbaa !18
  %i.ha = icmp eq i8 %i.gz, 7
  %i.hb = ptrtoint ptr %.013.lcssa.i173 to i64    ; 2 uses
  %i.hc = ptrtoint ptr %i.gb to i64               ; 2 uses
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = sub i64 %i.hc, %i.hb
  %.0.in.i174 = select i1 %i.ha, i64 %i.hd, i64 %i.he ; 2 uses
  %.0.i175 = trunc i64 %.0.in.i174 to i8
  %i.hf = lshr i64 %.0.in.i174, 8
  %i.hg = trunc i64 %i.hf to i8
  %i.hh = getelementptr inbounds nuw i8, ptr %.013.lcssa.i173, i64 1
  store i8 %i.hg, ptr %i.hh, align 1, !tbaa !18
  %i.hi = getelementptr inbounds nuw i8, ptr %.013.lcssa.i173, i64 2
  store i8 %.0.i175, ptr %i.hi, align 1, !tbaa !18
  %.pre210 = load ptr, ptr %i.ga, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit176

_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit176:   ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit87, %_ZN5cmsysL7regnextEPc.exit.thread.i172
  %i.hj = phi ptr [ %i.gj, %_ZN5cmsys13RegExpCompile7regnodeEc.exit87 ], [ %.pre210, %_ZN5cmsysL7regnextEPc.exit.thread.i172 ] ; 6 uses
  %i.hk = icmp eq ptr %i.hj, @_ZN5cmsysL8regdummyE
  br i1 %i.hk, label %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit186.thread, label %_ZN5cmsys13RegExpCompile7regnodeEc.exit88

_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit186.thread: ; preds = %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit176
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !32
  %i.hn = add nsw i64 %i.hm, 3
  store i64 %i.hn, ptr %i.hl, align 8, !tbaa !32
  br label %bb.aa

_ZN5cmsys13RegExpCompile7regnodeEc.exit88:        ; preds = %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit176
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 1
  store i8 7, ptr %i.hj, align 1, !tbaa !18
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hj, i64 2
  store i8 0, ptr %i.ho, align 1, !tbaa !18
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hj, i64 3
  store i8 0, ptr %i.hp, align 1, !tbaa !18
  store ptr %i.hq, ptr %i.ga, align 8, !tbaa !31
  br label %.preheader.i177

.preheader.i177:                                  ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit88, %_ZN5cmsysL7regnextEPc.exit.i179
  %.01318.i178 = phi ptr [ %.0.i.i181, %_ZN5cmsysL7regnextEPc.exit.i179 ], [ %i.hj, %_ZN5cmsys13RegExpCompile7regnodeEc.exit88 ] ; 5 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.01318.i178, i64 1
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !18
  %i.ht = zext i8 %i.hs to i32
  %i.hu = shl nuw nsw i32 %i.ht, 8
  %i.hv = getelementptr inbounds nuw i8, ptr %.01318.i178, i64 2
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !18
  %i.hx = zext i8 %i.hw to i32
  %i.hy = or disjoint i32 %i.hu, %i.hx            ; 2 uses
  %i.hz = icmp eq i32 %i.hy, 0
  br i1 %i.hz, label %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit186, label %_ZN5cmsysL7regnextEPc.exit.i179

_ZN5cmsysL7regnextEPc.exit.i179:                  ; preds = %.preheader.i177
  %i.ia = load i8, ptr %.01318.i178, align 1, !tbaa !18
  %i.ib = icmp eq i8 %i.ia, 7
  %i.ic = zext nneg i32 %i.hy to i64              ; 2 uses
  %i.id = sub nsw i64 0, %i.ic
  %.0.i.v.i180 = select i1 %i.ib, i64 %i.id, i64 %i.ic
  %.0.i.i181 = getelementptr inbounds i8, ptr %.01318.i178, i64 %.0.i.v.i180 ; 2 uses
  %i.ie = icmp eq ptr %.0.i.i181, @_ZN5cmsysL8regdummyE
  br i1 %i.ie, label %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit186, label %.preheader.i177, !llvm.loop !0

_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit186:   ; preds = %.preheader.i177, %_ZN5cmsysL7regnextEPc.exit.i179
  %.013.lcssa.i183 = phi ptr [ %.01318.i178, %.preheader.i177 ], [ @_ZN5cmsysL8regdummyE, %_ZN5cmsysL7regnextEPc.exit.i179 ] ; 4 uses
  %i.if = load i8, ptr %.013.lcssa.i183, align 1, !tbaa !18
  %i.ig = icmp eq i8 %i.if, 7
  %i.ih = ptrtoint ptr %.013.lcssa.i183 to i64    ; 2 uses
  %i.ii = ptrtoint ptr %i.b to i64                ; 2 uses
  %i.ij = sub i64 %i.ih, %i.ii
  %i.ik = sub i64 %i.ii, %i.ih
  %.0.in.i184 = select i1 %i.ig, i64 %i.ij, i64 %i.ik ; 2 uses
  %.0.i185 = trunc i64 %.0.in.i184 to i8
  %i.il = lshr i64 %.0.in.i184, 8
  %i.im = trunc i64 %i.il to i8
  %i.in = getelementptr inbounds nuw i8, ptr %.013.lcssa.i183, i64 1
  store i8 %i.im, ptr %i.in, align 1, !tbaa !18
  %i.io = getelementptr inbounds nuw i8, ptr %.013.lcssa.i183, i64 2
  store i8 %.0.i185, ptr %i.io, align 1, !tbaa !18
  %.pre211 = load ptr, ptr %i.ga, align 8, !tbaa !31 ; 6 uses
  %i.ip = icmp eq ptr %.pre211, @_ZN5cmsysL8regdummyE
  br i1 %i.ip, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit186.thread, %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit186
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !32
  %i.is = add nsw i64 %i.ir, 3
  store i64 %i.is, ptr %i.iq, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit89

bb.ab:                                            ; preds = %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit186
  %i.it = getelementptr inbounds nuw i8, ptr %.pre211, i64 1
  store i8 6, ptr %.pre211, align 1, !tbaa !18
  %i.iu = getelementptr inbounds nuw i8, ptr %.pre211, i64 2
  store i8 0, ptr %i.it, align 1, !tbaa !18
  %i.iv = getelementptr inbounds nuw i8, ptr %.pre211, i64 3 ; 2 uses
  store i8 0, ptr %i.iu, align 1, !tbaa !18
  store ptr %i.iv, ptr %i.ga, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit89

_ZN5cmsys13RegExpCompile7regnodeEc.exit89:        ; preds = %bb.aa, %bb.ab
  %i.iw = phi ptr [ @_ZN5cmsysL8regdummyE, %bb.aa ], [ %.pre211, %bb.ab ]
  %i.ix = phi ptr [ @_ZN5cmsysL8regdummyE, %bb.aa ], [ %i.iv, %bb.ab ]
  br i1 %i.gc, label %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit196, label %.preheader.i187

.preheader.i187:                                  ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit89, %_ZN5cmsysL7regnextEPc.exit.i189
  %.01318.i188 = phi ptr [ %.0.i.i191, %_ZN5cmsysL7regnextEPc.exit.i189 ], [ %i.gb, %_ZN5cmsys13RegExpCompile7regnodeEc.exit89 ] ; 5 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.01318.i188, i64 1
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !18
  %i.ja = zext i8 %i.iz to i32
  %i.jb = shl nuw nsw i32 %i.ja, 8
  %i.jc = getelementptr inbounds nuw i8, ptr %.01318.i188, i64 2
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !18
  %i.je = zext i8 %i.jd to i32
  %i.jf = or disjoint i32 %i.jb, %i.je            ; 2 uses
  %i.jg = icmp eq i32 %i.jf, 0
  br i1 %i.jg, label %_ZN5cmsysL7regnextEPc.exit.thread.i192, label %_ZN5cmsysL7regnextEPc.exit.i189

_ZN5cmsysL7regnextEPc.exit.i189:                  ; preds = %.preheader.i187
  %i.jh = load i8, ptr %.01318.i188, align 1, !tbaa !18
  %i.ji = icmp eq i8 %i.jh, 7
  %i.jj = zext nneg i32 %i.jf to i64              ; 2 uses
  %i.jk = sub nsw i64 0, %i.jj
  %.0.i.v.i190 = select i1 %i.ji, i64 %i.jk, i64 %i.jj
  %.0.i.i191 = getelementptr inbounds i8, ptr %.01318.i188, i64 %.0.i.v.i190 ; 2 uses
  %i.jl = icmp eq ptr %.0.i.i191, @_ZN5cmsysL8regdummyE
  br i1 %i.jl, label %_ZN5cmsysL7regnextEPc.exit.thread.i192, label %.preheader.i187, !llvm.loop !0

_ZN5cmsysL7regnextEPc.exit.thread.i192:           ; preds = %_ZN5cmsysL7regnextEPc.exit.i189, %.preheader.i187
  %.013.lcssa.i193 = phi ptr [ %.01318.i188, %.preheader.i187 ], [ @_ZN5cmsysL8regdummyE, %_ZN5cmsysL7regnextEPc.exit.i189 ] ; 4 uses
  %i.jm = load i8, ptr %.013.lcssa.i193, align 1, !tbaa !18
  %i.jn = icmp eq i8 %i.jm, 7
  %i.jo = ptrtoint ptr %.013.lcssa.i193 to i64    ; 2 uses
  %i.jp = ptrtoint ptr %i.iw to i64               ; 2 uses
  %i.jq = sub i64 %i.jo, %i.jp
  %i.jr = sub i64 %i.jp, %i.jo
  %.0.in.i194 = select i1 %i.jn, i64 %i.jq, i64 %i.jr ; 2 uses
  %.0.i195 = trunc i64 %.0.in.i194 to i8
  %i.js = lshr i64 %.0.in.i194, 8
  %i.jt = trunc i64 %i.js to i8
  %i.ju = getelementptr inbounds nuw i8, ptr %.013.lcssa.i193, i64 1
  store i8 %i.jt, ptr %i.ju, align 1, !tbaa !18
  %i.jv = getelementptr inbounds nuw i8, ptr %.013.lcssa.i193, i64 2
  store i8 %.0.i195, ptr %i.jv, align 1, !tbaa !18
  %.pre212 = load ptr, ptr %i.ga, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit196

_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit196:   ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit89, %_ZN5cmsysL7regnextEPc.exit.thread.i192
  %i.jw = phi ptr [ %i.ix, %_ZN5cmsys13RegExpCompile7regnodeEc.exit89 ], [ %.pre212, %_ZN5cmsysL7regnextEPc.exit.thread.i192 ] ; 6 uses
  %i.jx = icmp eq ptr %i.jw, @_ZN5cmsysL8regdummyE
  br i1 %i.jx, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit196
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !32
  %i.ka = add nsw i64 %i.jz, 3
  store i64 %i.ka, ptr %i.jy, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit90

bb.ad:                                            ; preds = %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit196
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jw, i64 1
  store i8 9, ptr %i.jw, align 1, !tbaa !18
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jw, i64 2
  store i8 0, ptr %i.kb, align 1, !tbaa !18
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jw, i64 3
  store i8 0, ptr %i.kc, align 1, !tbaa !18
  store ptr %i.kd, ptr %i.ga, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit90

_ZN5cmsys13RegExpCompile7regnodeEc.exit90:        ; preds = %bb.ac, %bb.ad
  br i1 %i.gk, label %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit, label %.preheader.i197

.preheader.i197:                                  ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit90, %_ZN5cmsysL7regnextEPc.exit.i199
  %.01318.i198 = phi ptr [ %.0.i.i201, %_ZN5cmsysL7regnextEPc.exit.i199 ], [ %i.b, %_ZN5cmsys13RegExpCompile7regnodeEc.exit90 ] ; 5 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.01318.i198, i64 1
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !18
  %i.kg = zext i8 %i.kf to i32
  %i.kh = shl nuw nsw i32 %i.kg, 8
  %i.ki = getelementptr inbounds nuw i8, ptr %.01318.i198, i64 2
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !18
  %i.kk = zext i8 %i.kj to i32
  %i.kl = or disjoint i32 %i.kh, %i.kk            ; 2 uses
  %i.km = icmp eq i32 %i.kl, 0
  br i1 %i.km, label %_ZN5cmsysL7regnextEPc.exit.thread.i202, label %_ZN5cmsysL7regnextEPc.exit.i199

_ZN5cmsysL7regnextEPc.exit.i199:                  ; preds = %.preheader.i197
  %i.kn = load i8, ptr %.01318.i198, align 1, !tbaa !18
  %i.ko = icmp eq i8 %i.kn, 7
  %i.kp = zext nneg i32 %i.kl to i64              ; 2 uses
  %i.kq = sub nsw i64 0, %i.kp
  %.0.i.v.i200 = select i1 %i.ko, i64 %i.kq, i64 %i.kp
  %.0.i.i201 = getelementptr inbounds i8, ptr %.01318.i198, i64 %.0.i.v.i200 ; 2 uses
  %i.kr = icmp eq ptr %.0.i.i201, @_ZN5cmsysL8regdummyE
  br i1 %i.kr, label %_ZN5cmsysL7regnextEPc.exit.thread.i202, label %.preheader.i197, !llvm.loop !0

_ZN5cmsysL7regnextEPc.exit.thread.i202:           ; preds = %_ZN5cmsysL7regnextEPc.exit.i199, %.preheader.i197
  %.013.lcssa.i203 = phi ptr [ %.01318.i198, %.preheader.i197 ], [ @_ZN5cmsysL8regdummyE, %_ZN5cmsysL7regnextEPc.exit.i199 ] ; 4 uses
  %i.ks = load i8, ptr %.013.lcssa.i203, align 1, !tbaa !18
  %i.kt = icmp eq i8 %i.ks, 7
  %i.ku = ptrtoint ptr %.013.lcssa.i203 to i64    ; 2 uses
  %i.kv = ptrtoint ptr %i.jw to i64               ; 2 uses
  %i.kw = sub i64 %i.ku, %i.kv
  %i.kx = sub i64 %i.kv, %i.ku
  %.0.in.i204 = select i1 %i.kt, i64 %i.kw, i64 %i.kx ; 2 uses
  %.0.i205 = trunc i64 %.0.in.i204 to i8
  %i.ky = lshr i64 %.0.in.i204, 8
  %i.kz = trunc i64 %i.ky to i8
  %i.la = getelementptr inbounds nuw i8, ptr %.013.lcssa.i203, i64 1
  store i8 %i.kz, ptr %i.la, align 1, !tbaa !18
  %i.lb = getelementptr inbounds nuw i8, ptr %.013.lcssa.i203, i64 2
  store i8 %.0.i205, ptr %i.lb, align 1, !tbaa !18
  br label %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit

.critedge50:                                      ; preds = %.critedge
  br i1 %i.g, label %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit, label %bb.ae

bb.ae:                                            ; preds = %.critedge50
  %i.lc = ptrtoaddr ptr %i.b to i64               ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !31 ; 6 uses
  %i.lf = ptrtoaddr ptr %i.le to i64              ; 3 uses
  %i.lg = icmp eq ptr %i.le, @_ZN5cmsysL8regdummyE
  br i1 %i.lg, label %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit95.thread, label %bb.af

_ZN5cmsys13RegExpCompile9reginsertEcPc.exit95.thread: ; preds = %bb.ae
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !32
  %i.lj = add nsw i64 %i.li, 3
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.lk = getelementptr inbounds nuw i8, ptr %i.le, i64 3
  store ptr %i.lk, ptr %i.ld, align 8, !tbaa !31
  %i.ll = icmp ugt ptr %i.le, %i.b
  br i1 %i.ll, label %.lr.ph.preheader.i92, label %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit95

.lr.ph.preheader.i92:                             ; preds = %bb.af
  %i.lm = add i64 %i.lc, 3
  %i.ln = sub i64 %i.lm, %i.lf
  %scevgep.i93 = getelementptr i8, ptr %i.le, i64 %i.ln
  %i.lo = sub i64 %i.lc, %i.lf
  %scevgep14.i94 = getelementptr i8, ptr %i.le, i64 %i.lo
  %i.lp = sub i64 %i.lf, %i.lc
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %scevgep.i93, ptr align 1 %scevgep14.i94, i64 %i.lp, i1 false), !tbaa !18
  br label %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit95

_ZN5cmsys13RegExpCompile9reginsertEcPc.exit95:    ; preds = %bb.af, %.lr.ph.preheader.i92
  %i.lq = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 6, ptr %i.b, align 1, !tbaa !18
  %i.lr = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 0, ptr %i.lq, align 1, !tbaa !18
  store i8 0, ptr %i.lr, align 1, !tbaa !18
  %.pre = load ptr, ptr %i.ld, align 8, !tbaa !31 ; 6 uses
  %i.ls = icmp eq ptr %.pre, @_ZN5cmsysL8regdummyE
  br i1 %i.ls, label %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit95._crit_edge, label %bb.ah

_ZN5cmsys13RegExpCompile9reginsertEcPc.exit95._crit_edge: ; preds = %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit95
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre209 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit95._crit_edge, %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit95.thread
  %i.lt = phi i64 [ %.pre209, %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit95._crit_edge ], [ %i.lj, %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit95.thread ]
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.lv = add nsw i64 %i.lt, 3
  store i64 %i.lv, ptr %i.lu, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit96

bb.ah:                                            ; preds = %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit95
  %i.lw = getelementptr inbounds nuw i8, ptr %.pre, i64 1
  store i8 6, ptr %.pre, align 1, !tbaa !18
  %i.lx = getelementptr inbounds nuw i8, ptr %.pre, i64 2
  store i8 0, ptr %i.lw, align 1, !tbaa !18
  %i.ly = getelementptr inbounds nuw i8, ptr %.pre, i64 3 ; 2 uses
  store i8 0, ptr %i.lx, align 1, !tbaa !18
  store ptr %i.ly, ptr %i.ld, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit96

_ZN5cmsys13RegExpCompile7regnodeEc.exit96:        ; preds = %bb.ag, %bb.ah
  %i.lz = phi ptr [ @_ZN5cmsysL8regdummyE, %bb.ag ], [ %.pre, %bb.ah ]
  %i.ma = phi ptr [ @_ZN5cmsysL8regdummyE, %bb.ag ], [ %i.ly, %bb.ah ]
  %i.mb = icmp eq ptr %i.b, @_ZN5cmsysL8regdummyE ; 2 uses
  br i1 %i.mb, label %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit106, label %.preheader.i97

.preheader.i97:                                   ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit96, %_ZN5cmsysL7regnextEPc.exit.i99
  %.01318.i98 = phi ptr [ %.0.i.i101, %_ZN5cmsysL7regnextEPc.exit.i99 ], [ %i.b, %_ZN5cmsys13RegExpCompile7regnodeEc.exit96 ] ; 5 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.01318.i98, i64 1
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !18
  %i.me = zext i8 %i.md to i32
  %i.mf = shl nuw nsw i32 %i.me, 8
  %i.mg = getelementptr inbounds nuw i8, ptr %.01318.i98, i64 2
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !18
  %i.mi = zext i8 %i.mh to i32
  %i.mj = or disjoint i32 %i.mf, %i.mi            ; 2 uses
  %i.mk = icmp eq i32 %i.mj, 0
  br i1 %i.mk, label %_ZN5cmsysL7regnextEPc.exit.thread.i102, label %_ZN5cmsysL7regnextEPc.exit.i99

_ZN5cmsysL7regnextEPc.exit.i99:                   ; preds = %.preheader.i97
  %i.ml = load i8, ptr %.01318.i98, align 1, !tbaa !18
  %i.mm = icmp eq i8 %i.ml, 7
  %i.mn = zext nneg i32 %i.mj to i64              ; 2 uses
  %i.mo = sub nsw i64 0, %i.mn
  %.0.i.v.i100 = select i1 %i.mm, i64 %i.mo, i64 %i.mn
  %.0.i.i101 = getelementptr inbounds i8, ptr %.01318.i98, i64 %.0.i.v.i100 ; 2 uses
  %i.mp = icmp eq ptr %.0.i.i101, @_ZN5cmsysL8regdummyE
  br i1 %i.mp, label %_ZN5cmsysL7regnextEPc.exit.thread.i102, label %.preheader.i97, !llvm.loop !0

_ZN5cmsysL7regnextEPc.exit.thread.i102:           ; preds = %_ZN5cmsysL7regnextEPc.exit.i99, %.preheader.i97
  %.013.lcssa.i103 = phi ptr [ %.01318.i98, %.preheader.i97 ], [ @_ZN5cmsysL8regdummyE, %_ZN5cmsysL7regnextEPc.exit.i99 ] ; 4 uses
  %i.mq = load i8, ptr %.013.lcssa.i103, align 1, !tbaa !18
  %i.mr = icmp eq i8 %i.mq, 7
  %i.ms = ptrtoint ptr %.013.lcssa.i103 to i64    ; 2 uses
  %i.mt = ptrtoint ptr %i.lz to i64               ; 2 uses
  %i.mu = sub i64 %i.ms, %i.mt
  %i.mv = sub i64 %i.mt, %i.ms
  %.0.in.i104 = select i1 %i.mr, i64 %i.mu, i64 %i.mv ; 2 uses
  %.0.i105 = trunc i64 %.0.in.i104 to i8
  %i.mw = lshr i64 %.0.in.i104, 8
  %i.mx = trunc i64 %i.mw to i8
  %i.my = getelementptr inbounds nuw i8, ptr %.013.lcssa.i103, i64 1
  store i8 %i.mx, ptr %i.my, align 1, !tbaa !18
  %i.mz = getelementptr inbounds nuw i8, ptr %.013.lcssa.i103, i64 2
  store i8 %.0.i105, ptr %i.mz, align 1, !tbaa !18
  %.pre136 = load ptr, ptr %i.ld, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit106

_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit106:   ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit96, %_ZN5cmsysL7regnextEPc.exit.thread.i102
  %i.na = phi ptr [ %i.ma, %_ZN5cmsys13RegExpCompile7regnodeEc.exit96 ], [ %.pre136, %_ZN5cmsysL7regnextEPc.exit.thread.i102 ] ; 6 uses
  %i.nb = icmp eq ptr %i.na, @_ZN5cmsysL8regdummyE
  br i1 %i.nb, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit106
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.nd = load i64, ptr %i.nc, align 8, !tbaa !32
  %i.ne = add nsw i64 %i.nd, 3
  store i64 %i.ne, ptr %i.nc, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit107

bb.aj:                                            ; preds = %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit106
  %i.nf = getelementptr inbounds nuw i8, ptr %i.na, i64 1
  store i8 9, ptr %i.na, align 1, !tbaa !18
  %i.ng = getelementptr inbounds nuw i8, ptr %i.na, i64 2
  store i8 0, ptr %i.nf, align 1, !tbaa !18
  %i.nh = getelementptr inbounds nuw i8, ptr %i.na, i64 3
  store i8 0, ptr %i.ng, align 1, !tbaa !18
  store ptr %i.nh, ptr %i.ld, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit107

_ZN5cmsys13RegExpCompile7regnodeEc.exit107:       ; preds = %bb.ai, %bb.aj
  br i1 %i.mb, label %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit, label %.preheader.i108

.preheader.i108:                                  ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit107, %_ZN5cmsysL7regnextEPc.exit.i110
  %.01318.i109 = phi ptr [ %.0.i.i112, %_ZN5cmsysL7regnextEPc.exit.i110 ], [ %i.b, %_ZN5cmsys13RegExpCompile7regnodeEc.exit107 ] ; 5 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.01318.i109, i64 1
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !18
  %i.nk = zext i8 %i.nj to i32
  %i.nl = shl nuw nsw i32 %i.nk, 8
  %i.nm = getelementptr inbounds nuw i8, ptr %.01318.i109, i64 2
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !18
  %i.no = zext i8 %i.nn to i32
  %i.np = or disjoint i32 %i.nl, %i.no            ; 2 uses
  %i.nq = icmp eq i32 %i.np, 0
  br i1 %i.nq, label %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit117, label %_ZN5cmsysL7regnextEPc.exit.i110

_ZN5cmsysL7regnextEPc.exit.i110:                  ; preds = %.preheader.i108
  %i.nr = load i8, ptr %.01318.i109, align 1, !tbaa !18
  %i.ns = icmp eq i8 %i.nr, 7
  %i.nt = zext nneg i32 %i.np to i64              ; 2 uses
  %i.nu = sub nsw i64 0, %i.nt
  %.0.i.v.i111 = select i1 %i.ns, i64 %i.nu, i64 %i.nt
  %.0.i.i112 = getelementptr inbounds i8, ptr %.01318.i109, i64 %.0.i.v.i111 ; 2 uses
  %i.nv = icmp eq ptr %.0.i.i112, @_ZN5cmsysL8regdummyE
  br i1 %i.nv, label %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit117, label %.preheader.i108, !llvm.loop !0

_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit117:   ; preds = %.preheader.i108, %_ZN5cmsysL7regnextEPc.exit.i110
  %.013.lcssa.i114 = phi ptr [ %.01318.i109, %.preheader.i108 ], [ @_ZN5cmsysL8regdummyE, %_ZN5cmsysL7regnextEPc.exit.i110 ] ; 4 uses
  %i.nw = load i8, ptr %.013.lcssa.i114, align 1, !tbaa !18
  %i.nx = icmp eq i8 %i.nw, 7
  %i.ny = ptrtoint ptr %.013.lcssa.i114 to i64    ; 2 uses
  %i.nz = ptrtoint ptr %i.na to i64               ; 4 uses
  %i.oa = sub i64 %i.ny, %i.nz
  %i.ob = sub i64 %i.nz, %i.ny
  %.0.in.i115 = select i1 %i.nx, i64 %i.oa, i64 %i.ob ; 2 uses
  %.0.i116 = trunc i64 %.0.in.i115 to i8
  %i.oc = lshr i64 %.0.in.i115, 8
  %i.od = trunc i64 %i.oc to i8
  %i.oe = getelementptr inbounds nuw i8, ptr %.013.lcssa.i114, i64 1
  store i8 %i.od, ptr %i.oe, align 1, !tbaa !18
  %i.of = getelementptr inbounds nuw i8, ptr %.013.lcssa.i114, i64 2
  store i8 %.0.i116, ptr %i.of, align 1, !tbaa !18
  %i.og = load i8, ptr %i.b, align 1, !tbaa !18
  %.not.i119 = icmp ne i8 %i.og, 6
  %i.oh = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 2 uses
  %i.oi = icmp eq ptr %i.oh, @_ZN5cmsysL8regdummyE
  %or.cond7.i120 = select i1 %.not.i119, i1 true, i1 %i.oi
  br i1 %or.cond7.i120, label %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit, label %.preheader.i.i121

.preheader.i.i121:                                ; preds = %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit117, %_ZN5cmsysL7regnextEPc.exit.i.i123
  %.01318.i.i122 = phi ptr [ %.0.i.i.i125, %_ZN5cmsysL7regnextEPc.exit.i.i123 ], [ %i.oh, %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit117 ] ; 5 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.01318.i.i122, i64 1
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !18
  %i.ol = zext i8 %i.ok to i32
  %i.om = shl nuw nsw i32 %i.ol, 8
  %i.on = getelementptr inbounds nuw i8, ptr %.01318.i.i122, i64 2
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !18
  %i.op = zext i8 %i.oo to i32
  %i.oq = or disjoint i32 %i.om, %i.op            ; 2 uses
  %i.or = icmp eq i32 %i.oq, 0
  br i1 %i.or, label %_ZN5cmsysL7regnextEPc.exit.thread.i.i126, label %_ZN5cmsysL7regnextEPc.exit.i.i123

_ZN5cmsysL7regnextEPc.exit.i.i123:                ; preds = %.preheader.i.i121
  %i.os = load i8, ptr %.01318.i.i122, align 1, !tbaa !18
  %i.ot = icmp eq i8 %i.os, 7
  %i.ou = zext nneg i32 %i.oq to i64              ; 2 uses
  %i.ov = sub nsw i64 0, %i.ou
  %.0.i.v.i.i124 = select i1 %i.ot, i64 %i.ov, i64 %i.ou
  %.0.i.i.i125 = getelementptr inbounds i8, ptr %.01318.i.i122, i64 %.0.i.v.i.i124 ; 2 uses
  %i.ow = icmp eq ptr %.0.i.i.i125, @_ZN5cmsysL8regdummyE
  br i1 %i.ow, label %_ZN5cmsysL7regnextEPc.exit.thread.i.i126, label %.preheader.i.i121, !llvm.loop !0

_ZN5cmsysL7regnextEPc.exit.thread.i.i126:         ; preds = %_ZN5cmsysL7regnextEPc.exit.i.i123, %.preheader.i.i121
  %.013.lcssa.i.i127 = phi ptr [ %.01318.i.i122, %.preheader.i.i121 ], [ @_ZN5cmsysL8regdummyE, %_ZN5cmsysL7regnextEPc.exit.i.i123 ] ; 4 uses
  %i.ox = load i8, ptr %.013.lcssa.i.i127, align 1, !tbaa !18
  %i.oy = icmp eq i8 %i.ox, 7
  %i.oz = ptrtoint ptr %.013.lcssa.i.i127 to i64  ; 2 uses
  %i.pa = sub i64 %i.oz, %i.nz
  %i.pb = sub i64 %i.nz, %i.oz
  %.0.in.i.i128 = select i1 %i.oy, i64 %i.pa, i64 %i.pb ; 2 uses
  %.0.i.i129 = trunc i64 %.0.in.i.i128 to i8
  %i.pc = lshr i64 %.0.in.i.i128, 8
  %i.pd = trunc i64 %i.pc to i8
  %i.pe = getelementptr inbounds nuw i8, ptr %.013.lcssa.i.i127, i64 1
  store i8 %i.pd, ptr %i.pe, align 1, !tbaa !18
  %i.pf = getelementptr inbounds nuw i8, ptr %.013.lcssa.i.i127, i64 2
  store i8 %.0.i.i129, ptr %i.pf, align 1, !tbaa !18
  br label %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit

_ZN5cmsys13RegExpCompile9reginsertEcPc.exit:      ; preds = %_ZN5cmsysL7regnextEPc.exit.thread.i202, %_ZN5cmsys13RegExpCompile7regnodeEc.exit90, %_ZN5cmsys13RegExpCompile7regnodeEc.exit107, %_ZN5cmsysL7regnextEPc.exit.thread.i.i126, %_ZN5cmsys13RegExpCompile7regtailEPcPKc.exit117, %._crit_edge.i82, %bb.v, %_ZN5cmsysL7regnextEPc.exit.thread.i77, %_ZN5cmsys13RegExpCompile7regnodeEc.exit71, %._crit_edge.i, %bb.i, %.critedge50
  %i.pg = load ptr, ptr %0, align 8, !tbaa !29
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 1 ; 2 uses
  store ptr %i.ph, ptr %0, align 8, !tbaa !29
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !18
  switch i8 %i.pi, label %bb.al [
    i8 42, label %bb.ak
    i8 43, label %bb.ak
    i8 63, label %bb.ak
  ]

bb.ak:                                            ; preds = %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit, %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit, %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit, %bb.a, %bb.ak, %bb.e, %bb.c
  %.0 = phi ptr [ null, %bb.e ], [ null, %bb.ak ], [ null, %bb.a ], [ %i.b, %bb.c ], [ %i.b, %_ZN5cmsys13RegExpCompile9reginsertEcPc.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef ptr @_ZN5cmsys13RegExpCompile7regatomEPi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef captures(none) initializes((0, 4)) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %1, align 4, !tbaa !34
  %i.b = load ptr, ptr %0, align 8, !tbaa !29     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !29
  %i.d = load i8, ptr %i.b, align 1, !tbaa !18
  switch i8 %i.d, label %bb.au [
    i8 94, label %bb.b
    i8 36, label %bb.e
    i8 46, label %bb.h
    i8 91, label %bb.k
    i8 40, label %bb.al
    i8 0, label %bb.an
    i8 124, label %bb.an
    i8 41, label %bb.an
    i8 63, label %bb.ao
    i8 43, label %bb.ao
    i8 42, label %bb.ao
    i8 92, label %bb.ap
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31   ; 6 uses
  %i.g = icmp eq ptr %i.f, @_ZN5cmsysL8regdummyE
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !32
  %i.j = add nsw i64 %i.i, 3
  store i64 %i.j, ptr %i.h, align 8, !tbaa !32
  br label %.critedge59

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 1, ptr %i.f, align 1, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i8 0, ptr %i.k, align 1, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  store i8 0, ptr %i.l, align 1, !tbaa !18
  store ptr %i.m, ptr %i.e, align 8, !tbaa !31
  br label %.critedge59

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !31   ; 6 uses
  %i.p = icmp eq ptr %i.o, @_ZN5cmsysL8regdummyE
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !32
  %i.s = add nsw i64 %i.r, 3
  store i64 %i.s, ptr %i.q, align 8, !tbaa !32
  br label %.critedge59

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 2, ptr %i.o, align 1, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store i8 0, ptr %i.t, align 1, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  store i8 0, ptr %i.u, align 1, !tbaa !18
  store ptr %i.v, ptr %i.n, align 8, !tbaa !31
  br label %.critedge59

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31   ; 6 uses
  %i.y = icmp eq ptr %i.x, @_ZN5cmsysL8regdummyE
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !32
  %i.ab = add nsw i64 %i.aa, 3
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit62

bb.j:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store i8 3, ptr %i.x, align 1, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  store i8 0, ptr %i.ac, align 1, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  store i8 0, ptr %i.ad, align 1, !tbaa !18
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !31
  %.pre109 = load i32, ptr %1, align 4, !tbaa !34
  %i.af = or i32 %.pre109, 3
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit62

_ZN5cmsys13RegExpCompile7regnodeEc.exit62:        ; preds = %bb.i, %bb.j
  %i.ag = phi i32 [ 3, %bb.i ], [ %i.af, %bb.j ]
  store i32 %i.ag, ptr %1, align 4, !tbaa !34
  br label %.critedge59

bb.k:                                             ; preds = %bb.a
  %i.ah = load i8, ptr %i.c, align 1, !tbaa !18
  %i.ai = icmp eq i8 %i.ah, 94
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !31 ; 11 uses
  %i.al = icmp eq ptr %i.ak, @_ZN5cmsysL8regdummyE ; 2 uses
  br i1 %i.ai, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  br i1 %i.al, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !32
  %i.ao = add nsw i64 %i.an, 3
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit63

bb.n:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store i8 5, ptr %i.ak, align 1, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  store i8 0, ptr %i.ap, align 1, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 3 ; 2 uses
  store i8 0, ptr %i.aq, align 1, !tbaa !18
  store ptr %i.ar, ptr %i.aj, align 8, !tbaa !31
  %.pre103 = load ptr, ptr %0, align 8, !tbaa !29
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit63

_ZN5cmsys13RegExpCompile7regnodeEc.exit63:        ; preds = %bb.m, %bb.n
  %i.as = phi ptr [ @_ZN5cmsysL8regdummyE, %bb.m ], [ %i.ar, %bb.n ]
  %i.at = phi ptr [ %i.c, %bb.m ], [ %.pre103, %bb.n ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1 ; 2 uses
  store ptr %i.au, ptr %0, align 8, !tbaa !29
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit64

bb.o:                                             ; preds = %bb.k
  br i1 %i.al, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !32
  %i.ax = add nsw i64 %i.aw, 3
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit64

bb.q:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store i8 4, ptr %i.ak, align 1, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  store i8 0, ptr %i.ay, align 1, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 3 ; 2 uses
  store i8 0, ptr %i.az, align 1, !tbaa !18
  store ptr %i.ba, ptr %i.aj, align 8, !tbaa !31
  %.pre104 = load ptr, ptr %0, align 8, !tbaa !29
  br label %_ZN5cmsys13RegExpCompile7regnodeEc.exit64

_ZN5cmsys13RegExpCompile7regnodeEc.exit64:        ; preds = %bb.q, %bb.p, %_ZN5cmsys13RegExpCompile7regnodeEc.exit63
  %i.bb = phi ptr [ %i.as, %_ZN5cmsys13RegExpCompile7regnodeEc.exit63 ], [ @_ZN5cmsysL8regdummyE, %bb.p ], [ %i.ba, %bb.q ] ; 3 uses
  %i.bc = phi ptr [ %i.au, %_ZN5cmsys13RegExpCompile7regnodeEc.exit63 ], [ %i.c, %bb.p ], [ %.pre104, %bb.q ] ; 3 uses
  %.037 = phi ptr [ %i.ak, %_ZN5cmsys13RegExpCompile7regnodeEc.exit63 ], [ @_ZN5cmsysL8regdummyE, %bb.p ], [ %i.ak, %bb.q ]
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !18
  switch i8 %i.bd, label %_ZN5cmsys13RegExpCompile4regcEc.exit [
    i8 93, label %bb.r
    i8 45, label %bb.r
  ]

bb.r:                                             ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit64, %_ZN5cmsys13RegExpCompile7regnodeEc.exit64
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store ptr %i.be, ptr %0, align 8, !tbaa !29
  %.not.i = icmp eq ptr %i.bb, @_ZN5cmsysL8regdummyE
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load i8, ptr %i.bc, align 1, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !31
  store i8 %i.bg, ptr %i.bb, align 1, !tbaa !18
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit

bb.t:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !32
  %i.bk = add nsw i64 %i.bj, 1
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit

_ZN5cmsys13RegExpCompile4regcEc.exit:             ; preds = %bb.t, %bb.s, %_ZN5cmsys13RegExpCompile7regnodeEc.exit64
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 13 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 12 uses
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit66

_ZN5cmsys13RegExpCompile4regcEc.exit66:           ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit66.backedge, %_ZN5cmsys13RegExpCompile4regcEc.exit
  %i.bn = load ptr, ptr %0, align 8, !tbaa !29    ; 6 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !18
  switch i8 %i.bo, label %bb.ae [
    i8 0, label %.critedge
    i8 93, label %.critedge
    i8 45, label %bb.u
  ]

bb.u:                                             ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit66
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 4 uses
  store ptr %i.bp, ptr %0, align 8, !tbaa !29
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !18  ; 4 uses
  switch i8 %i.bq, label %bb.y [
    i8 93, label %bb.v
    i8 0, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !31 ; 3 uses
  %.not.i65 = icmp eq ptr %i.br, @_ZN5cmsysL8regdummyE
  br i1 %.not.i65, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store ptr %i.bs, ptr %i.bl, align 8, !tbaa !31
  store i8 45, ptr %i.br, align 1, !tbaa !18
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit66.backedge

bb.x:                                             ; preds = %bb.v
  %i.bt = load i64, ptr %i.bm, align 8, !tbaa !32
  %i.bu = add nsw i64 %i.bt, 1
  store i64 %i.bu, ptr %i.bm, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit66.backedge

bb.y:                                             ; preds = %bb.u
  %i.bv = getelementptr inbounds i8, ptr %i.bn, i64 -1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !18  ; 3 uses
  %i.bx = zext i8 %i.bw to i32                    ; 5 uses
  %i.by = zext i8 %i.bq to i32                    ; 4 uses
  %i.bz = icmp ugt i8 %i.bw, %i.bq
  br i1 %i.bz, label %bb.z, label %.preheader

.preheader:                                       ; preds = %bb.y
  %.not54.not91 = icmp ult i8 %i.bw, %i.bq
  br i1 %.not54.not91, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ca = load ptr, ptr %i.bl, align 8, !tbaa !31 ; 4 uses
  %i.cb = icmp eq ptr %i.ca, @_ZN5cmsysL8regdummyE
  br i1 %i.cb, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.cc = sub nsw i32 %i.by, %i.bx
  %xtraiter = and i32 %i.cc, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader
  %.036.prol = add nuw nsw i32 %i.bx, 1           ; 2 uses
  %i.cd = trunc nuw i32 %.036.prol to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  store ptr %i.ce, ptr %i.bl, align 8, !tbaa !31
  store i8 %i.cd, ptr %i.ca, align 1, !tbaa !18
  %.pre105.prol = load ptr, ptr %i.bl, align 8, !tbaa !31
  br label %.lr.ph.split.prol.loopexit

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader
  %.unr = phi ptr [ %i.ca, %.lr.ph.split.preheader ], [ %.pre105.prol, %.lr.ph.split.prol ]
  %.036.in92.unr = phi i32 [ %i.bx, %.lr.ph.split.preheader ], [ %.036.prol, %.lr.ph.split.prol ]
  %i.cf = add nsw i32 %i.by, -1
  %i.cg = icmp eq i32 %i.cf, %i.bx
  br i1 %i.cg, label %._crit_edge.loopexit, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.promoted = load i64, ptr %i.bm, align 8, !tbaa !32
  %i.ch = add i64 %.promoted, 1
  %i.ci = xor i32 %i.bx, -1
  %i.cj = add nsw i32 %i.ci, %i.by
  %i.ck = zext i32 %i.cj to i64
  %i.cl = add i64 %i.ch, %i.ck
  store i64 %i.cl, ptr %i.bm, align 8, !tbaa !32
  br label %._crit_edge

bb.z:                                             ; preds = %bb.y
  %puts55 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14) ; 0 uses
  br label %.critedge59

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %_ZN5cmsys13RegExpCompile4regcEc.exit68.1
  %i.cm = phi ptr [ %i.cx, %_ZN5cmsys13RegExpCompile4regcEc.exit68.1 ], [ %.unr, %.lr.ph.split.prol.loopexit ] ; 3 uses
  %.036.in92 = phi i32 [ %.036.1, %_ZN5cmsys13RegExpCompile4regcEc.exit68.1 ], [ %.036.in92.unr, %.lr.ph.split.prol.loopexit ] ; 2 uses
  %.not.i67 = icmp eq ptr %i.cm, @_ZN5cmsysL8regdummyE
  br i1 %.not.i67, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.split
  %i.cn = trunc i32 %.036.in92 to i8
  %i.co = add i8 %i.cn, 1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  store ptr %i.cp, ptr %i.bl, align 8, !tbaa !31
  store i8 %i.co, ptr %i.cm, align 1, !tbaa !18
  %.pre105 = load ptr, ptr %i.bl, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit68

bb.ab:                                            ; preds = %.lr.ph.split
  %i.cq = load i64, ptr %i.bm, align 8, !tbaa !32
  %i.cr = add nsw i64 %i.cq, 1
  store i64 %i.cr, ptr %i.bm, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit68

_ZN5cmsys13RegExpCompile4regcEc.exit68:           ; preds = %bb.aa, %bb.ab
  %i.cs = phi ptr [ %.pre105, %bb.aa ], [ @_ZN5cmsysL8regdummyE, %bb.ab ] ; 3 uses
  %.036.1 = add nuw nsw i32 %.036.in92, 2         ; 3 uses
  %.not.i67.1 = icmp eq ptr %i.cs, @_ZN5cmsysL8regdummyE
  br i1 %.not.i67.1, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit68
  %i.ct = trunc nuw i32 %.036.1 to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  store ptr %i.cu, ptr %i.bl, align 8, !tbaa !31
  store i8 %i.ct, ptr %i.cs, align 1, !tbaa !18
  %.pre105.1 = load ptr, ptr %i.bl, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit68.1

bb.ad:                                            ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit68
  %i.cv = load i64, ptr %i.bm, align 8, !tbaa !32
  %i.cw = add nsw i64 %i.cv, 1
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit68.1

_ZN5cmsys13RegExpCompile4regcEc.exit68.1:         ; preds = %bb.ad, %bb.ac
  %i.cx = phi ptr [ %.pre105.1, %bb.ac ], [ @_ZN5cmsysL8regdummyE, %bb.ad ]
  %exitcond.not.1 = icmp eq i32 %.036.1, %i.by
  br i1 %exitcond.not.1, label %._crit_edge.loopexit, label %.lr.ph.split, !llvm.loop !52

._crit_edge.loopexit:                             ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit68.1, %.lr.ph.split.prol.loopexit
  %.pre107 = load ptr, ptr %0, align 8, !tbaa !29
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph.split.us, %.preheader
  %i.cy = phi ptr [ %.pre107, %._crit_edge.loopexit ], [ %i.bp, %.lr.ph.split.us ], [ %i.bp, %.preheader ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  store ptr %i.cz, ptr %0, align 8, !tbaa !29
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit66.backedge

bb.ae:                                            ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit66
  %i.da = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  store ptr %i.da, ptr %0, align 8, !tbaa !29
  %i.db = load ptr, ptr %i.bl, align 8, !tbaa !31 ; 3 uses
  %.not.i69 = icmp eq ptr %i.db, @_ZN5cmsysL8regdummyE
  br i1 %.not.i69, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dc = load i8, ptr %i.bn, align 1, !tbaa !18
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  store ptr %i.dd, ptr %i.bl, align 8, !tbaa !31
  store i8 %i.dc, ptr %i.db, align 1, !tbaa !18
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit66.backedge

bb.ag:                                            ; preds = %bb.ae
  %i.de = load i64, ptr %i.bm, align 8, !tbaa !32
  %i.df = add nsw i64 %i.de, 1
  store i64 %i.df, ptr %i.bm, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit66.backedge

_ZN5cmsys13RegExpCompile4regcEc.exit66.backedge:  ; preds = %bb.ag, %bb.af, %bb.x, %bb.w, %._crit_edge
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit66, !llvm.loop !53

.critedge:                                        ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit66, %_ZN5cmsys13RegExpCompile4regcEc.exit66
  %i.dg = load ptr, ptr %i.bl, align 8, !tbaa !31 ; 3 uses
  %.not.i71 = icmp eq ptr %i.dg, @_ZN5cmsysL8regdummyE
  br i1 %.not.i71, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.critedge
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  store ptr %i.dh, ptr %i.bl, align 8, !tbaa !31
  store i8 0, ptr %i.dg, align 1, !tbaa !18
  %.pre108 = load ptr, ptr %0, align 8, !tbaa !29
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit72

bb.ai:                                            ; preds = %.critedge
  %i.di = load i64, ptr %i.bm, align 8, !tbaa !32
  %i.dj = add nsw i64 %i.di, 1
  store i64 %i.dj, ptr %i.bm, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit72

_ZN5cmsys13RegExpCompile4regcEc.exit72:           ; preds = %bb.ah, %bb.ai
  %i.dk = phi ptr [ %.pre108, %bb.ah ], [ %i.bn, %bb.ai ] ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !18
  %.not52 = icmp eq i8 %i.dl, 93
  br i1 %.not52, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit72
  %puts53 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  br label %.critedge59

bb.ak:                                            ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit72
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  store ptr %i.dm, ptr %0, align 8, !tbaa !29
  %i.dn = load i32, ptr %1, align 4, !tbaa !34
  %i.do = or i32 %i.dn, 3
  store i32 %i.do, ptr %1, align 4, !tbaa !34
  br label %.critedge59

bb.al:                                            ; preds = %bb.a
  %i.dp = call noundef ptr @_ZN5cmsys13RegExpCompile3regEiPi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1, ptr noundef nonnull %i.a) ; 2 uses
  %.not = icmp eq ptr %i.dp, null
  br i1 %.not, label %.critedge59, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dq = load i32, ptr %i.a, align 4, !tbaa !34
  %i.dr = and i32 %i.dq, 5
  %i.ds = load i32, ptr %1, align 4, !tbaa !34
  %i.dt = or i32 %i.ds, %i.dr
  store i32 %i.dt, ptr %1, align 4, !tbaa !34
  br label %.critedge59

bb.an:                                            ; preds = %bb.a, %bb.a, %bb.a
  %puts49 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  br label %.critedge59

bb.ao:                                            ; preds = %bb.a, %bb.a, %bb.a
  %puts48 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  br label %.critedge59

bb.ap:                                            ; preds = %bb.a
  %i.du = load i8, ptr %i.c, align 1, !tbaa !18
  %i.dv = icmp eq i8 %i.du, 0
  br i1 %i.dv, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  br label %.critedge59

bb.ar:                                            ; preds = %bb.ap
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !31 ; 7 uses
  %i.dy = icmp eq ptr %i.dx, @_ZN5cmsysL8regdummyE
  br i1 %i.dy, label %_ZN5cmsys13RegExpCompile7regnodeEc.exit73.thread, label %_ZN5cmsys13RegExpCompile7regnodeEc.exit73

_ZN5cmsys13RegExpCompile7regnodeEc.exit73.thread: ; preds = %bb.ar
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !32
  %i.eb = add nsw i64 %i.ea, 3
  store i64 %i.eb, ptr %i.dz, align 8, !tbaa !32
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.ec, ptr %0, align 8, !tbaa !29
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit75.thread

_ZN5cmsys13RegExpCompile7regnodeEc.exit73:        ; preds = %bb.ar
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  store i8 8, ptr %i.dx, align 1, !tbaa !18
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  store i8 0, ptr %i.ed, align 1, !tbaa !18
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dx, i64 3 ; 3 uses
  store i8 0, ptr %i.ee, align 1, !tbaa !18
  store ptr %i.ef, ptr %i.dw, align 8, !tbaa !31
  %.pre = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.pre, i64 1
  store ptr %i.eg, ptr %0, align 8, !tbaa !29
  %.not.i74 = icmp eq ptr %i.ef, @_ZN5cmsysL8regdummyE
  br i1 %.not.i74, label %_ZN5cmsys13RegExpCompile4regcEc.exit75.thread, label %_ZN5cmsys13RegExpCompile4regcEc.exit75

_ZN5cmsys13RegExpCompile4regcEc.exit75.thread:    ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit73, %_ZN5cmsys13RegExpCompile7regnodeEc.exit73.thread
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !32
  %i.ej = add nsw i64 %i.ei, 1
  store i64 %i.ej, ptr %i.eh, align 8, !tbaa !32
  br label %bb.at

_ZN5cmsys13RegExpCompile4regcEc.exit75:           ; preds = %_ZN5cmsys13RegExpCompile7regnodeEc.exit73
  %i.ek = load i8, ptr %.pre, align 1, !tbaa !18
  %i.el = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  store ptr %i.el, ptr %i.dw, align 8, !tbaa !31
  store i8 %i.ek, ptr %i.ef, align 1, !tbaa !18
  %.pre102 = load ptr, ptr %i.dw, align 8, !tbaa !31 ; 3 uses
  %.not.i76 = icmp eq ptr %.pre102, @_ZN5cmsysL8regdummyE
  br i1 %.not.i76, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit75
  %i.em = getelementptr inbounds nuw i8, ptr %.pre102, i64 1
  store ptr %i.em, ptr %i.dw, align 8, !tbaa !31
  store i8 0, ptr %.pre102, align 1, !tbaa !18
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit77

bb.at:                                            ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit75.thread, %_ZN5cmsys13RegExpCompile4regcEc.exit75
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !32
  %i.ep = add nsw i64 %i.eo, 1
  store i64 %i.ep, ptr %i.en, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit77

_ZN5cmsys13RegExpCompile4regcEc.exit77:           ; preds = %bb.as, %bb.at
  %i.eq = load i32, ptr %1, align 4, !tbaa !34
  %i.er = or i32 %i.eq, 3
  store i32 %i.er, ptr %1, align 4, !tbaa !34
  br label %.critedge59

bb.au:                                            ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !29
  %i.es = tail call i64 @strcspn(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.13) #17
  %.fr = freeze i64 %i.es                         ; 2 uses
  %i.et = trunc i64 %.fr to i32                   ; 4 uses
  %i.eu = icmp sgt i32 %i.et, 0
  br i1 %i.eu, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %puts57 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  br label %.critedge59

bb.aw:                                            ; preds = %bb.au
  %.not56 = icmp eq i32 %i.et, 1
  br i1 %.not56, label %.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ev = and i64 %.fr, 2147483647
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !18
  switch i8 %i.ex, label %.thread [
    i8 63, label %bb.ay
    i8 43, label %bb.ay
    i8 42, label %bb.ay
  ]

bb.ay:                                            ; preds = %bb.ax, %bb.ax, %bb.ax
  %i.ey = add nsw i32 %i.et, -1                   ; 2 uses
  %i.ez = icmp eq i32 %i.ey, 1
  %spec.select = select i1 %i.ez, i32 3, i32 1
  br label %.thread

.thread:                                          ; preds = %bb.ay, %bb.ax, %bb.aw
  %.085 = phi i32 [ 1, %bb.aw ], [ %i.ey, %bb.ay ], [ %i.et, %bb.ax ] ; 2 uses
  %i.fa = phi i32 [ 3, %bb.aw ], [ %spec.select, %bb.ay ], [ 1, %bb.ax ]
  store i32 %i.fa, ptr %1, align 4, !tbaa !34
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !31 ; 7 uses
  %i.fd = icmp eq ptr %i.fc, @_ZN5cmsysL8regdummyE
  br i1 %i.fd, label %.lr.ph94.thread, label %.lr.ph94

.lr.ph94.thread:                                  ; preds = %.thread
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !32
  %i.fg = add nsw i64 %i.ff, 3
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !32
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %._crit_edge95.thread

.lr.ph94:                                         ; preds = %.thread
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  store i8 8, ptr %i.fc, align 1, !tbaa !18
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 2
  store i8 0, ptr %i.fi, align 1, !tbaa !18
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 3 ; 3 uses
  store i8 0, ptr %i.fj, align 1, !tbaa !18
  store ptr %i.fk, ptr %i.fb, align 8, !tbaa !31
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.fm = icmp eq ptr %i.fk, @_ZN5cmsysL8regdummyE
  br i1 %i.fm, label %._crit_edge95.thread, label %.lr.ph94.split.preheader

.lr.ph94.split.preheader:                         ; preds = %.lr.ph94
  %.pre111 = load ptr, ptr %0, align 8, !tbaa !29
  br label %.lr.ph94.split

._crit_edge95.thread:                             ; preds = %.lr.ph94, %.lr.ph94.thread
  %i.fn = phi ptr [ %i.fh, %.lr.ph94.thread ], [ %i.fl, %.lr.ph94 ] ; 2 uses
  %.promoted96 = load ptr, ptr %0, align 8, !tbaa !29
  %.promoted98 = load i64, ptr %i.fn, align 8, !tbaa !32
  %i.fo = add nsw i32 %.085, -1
  %i.fp = zext nneg i32 %i.fo to i64              ; 2 uses
  %i.fq = getelementptr i8, ptr %.promoted96, i64 %i.fp
  %scevgep = getelementptr i8, ptr %i.fq, i64 1
  %i.fr = add i64 %.promoted98, %i.fp
  %i.fs = add i64 %i.fr, 1
  store ptr %scevgep, ptr %0, align 8, !tbaa !29
  store i64 %i.fs, ptr %i.fn, align 8, !tbaa !32
  br label %bb.bc

.lr.ph94.split:                                   ; preds = %.lr.ph94.split.preheader, %_ZN5cmsys13RegExpCompile4regcEc.exit80
  %i.ft = phi ptr [ %i.ga, %_ZN5cmsys13RegExpCompile4regcEc.exit80 ], [ %i.fk, %.lr.ph94.split.preheader ] ; 3 uses
  %i.fu = phi ptr [ %i.gb, %_ZN5cmsys13RegExpCompile4regcEc.exit80 ], [ %.pre111, %.lr.ph94.split.preheader ] ; 2 uses
  %.193 = phi i32 [ %i.gc, %_ZN5cmsys13RegExpCompile4regcEc.exit80 ], [ %.085, %.lr.ph94.split.preheader ] ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 1 ; 2 uses
  store ptr %i.fv, ptr %0, align 8, !tbaa !29
  %.not.i79 = icmp eq ptr %i.ft, @_ZN5cmsysL8regdummyE
  br i1 %.not.i79, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.lr.ph94.split
  %i.fw = load i8, ptr %i.fu, align 1, !tbaa !18
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 1
  store ptr %i.fx, ptr %i.fb, align 8, !tbaa !31
  store i8 %i.fw, ptr %i.ft, align 1, !tbaa !18
  %.pre110 = load ptr, ptr %0, align 8, !tbaa !29
  %.pre112 = load ptr, ptr %i.fb, align 8, !tbaa !31
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit80

bb.ba:                                            ; preds = %.lr.ph94.split
  %i.fy = load i64, ptr %i.fl, align 8, !tbaa !32
  %i.fz = add nsw i64 %i.fy, 1
  store i64 %i.fz, ptr %i.fl, align 8, !tbaa !32
  br label %_ZN5cmsys13RegExpCompile4regcEc.exit80

_ZN5cmsys13RegExpCompile4regcEc.exit80:           ; preds = %bb.az, %bb.ba
  %i.ga = phi ptr [ %.pre112, %bb.az ], [ @_ZN5cmsysL8regdummyE, %bb.ba ] ; 4 uses
  %i.gb = phi ptr [ %.pre110, %bb.az ], [ %i.fv, %bb.ba ]
  %i.gc = add nsw i32 %.193, -1
  %i.gd = icmp sgt i32 %.193, 1
  br i1 %i.gd, label %.lr.ph94.split, label %._crit_edge95, !llvm.loop !54

._crit_edge95:                                    ; preds = %_ZN5cmsys13RegExpCompile4regcEc.exit80
  %.not.i81 = icmp eq ptr %i.ga, @_ZN5cmsysL8regdummyE
  br i1 %.not.i81, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge95
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 1
  store ptr %i.ge, ptr %i.fb, align 8, !tbaa !31
  store i8 0, ptr %i.ga, align 1, !tbaa !18
  br label %.critedge59

bb.bc:                                            ; preds = %._crit_edge95.thread, %._crit_edge95
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !32
  %i.gh = add nsw i64 %i.gg, 1
  store i64 %i.gh, ptr %i.gf, align 8, !tbaa !32
  br label %.critedge59

.critedge59:                                      ; preds = %bb.av, %bb.bb, %bb.bc, %bb.g, %bb.f, %bb.d, %bb.c, %bb.z, %bb.aj, %_ZN5cmsys13RegExpCompile7regnodeEc.exit62, %bb.am, %_ZN5cmsys13RegExpCompile4regcEc.exit77, %bb.ak, %bb.al, %bb.aq, %bb.ao, %bb.an
  %.241 = phi ptr [ null, %bb.al ], [ %i.o, %bb.g ], [ null, %bb.z ], [ null, %bb.aq ], [ null, %bb.an ], [ null, %bb.ao ], [ null, %bb.aj ], [ %i.f, %bb.d ], [ %i.x, %_ZN5cmsys13RegExpCompile7regnodeEc.exit62 ], [ %.037, %bb.ak ], [ %i.dp, %bb.am ], [ %i.dx, %_ZN5cmsys13RegExpCompile4regcEc.exit77 ], [ @_ZN5cmsysL8regdummyE, %bb.c ], [ @_ZN5cmsysL8regdummyE, %bb.f ], [ null, %bb.av ], [ %i.fc, %bb.bb ], [ %i.fc, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.241
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5cmsys13RegExpCompile9reginsertEcPc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i8 noundef signext %1, ptr nofree noundef writeonly captures(address) %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 6 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 3 uses
  %i.e = icmp eq ptr %i.c, @_ZN5cmsysL8regdummyE
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !32
  %i.h = add nsw i64 %i.g, 3
  store i64 %i.h, ptr %i.f, align 8, !tbaa !32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store ptr %i.i, ptr %i.b, align 8, !tbaa !31
  %i.j = icmp ugt ptr %i.c, %2
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.k = add i64 %i.a, 3
  %i.l = sub i64 %i.k, %i.d
  %scevgep = getelementptr i8, ptr %i.c, i64 %i.l
  %i.m = sub i64 %i.a, %i.d
  %scevgep14 = getelementptr i8, ptr %i.c, i64 %i.m
  %i.n = sub i64 %i.d, %i.a
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %scevgep, ptr align 1 %scevgep14, i64 %i.n, i1 false), !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %1, ptr %2, align 1, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 0, ptr %i.o, align 1, !tbaa !18
  store i8 0, ptr %i.p, align 1, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK5cmsys17RegularExpression4findEPKcRNS_22RegularExpressionMatchEmj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(560) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(520) initializes((0, 8), (256, 264), (512, 520)) %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #6 align 2 {
bb.a:
  %5 = alloca %"class.cmsys::RegExpFind", align 8 ; 7 uses
  store ptr null, ptr %2, align 8, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 512
  store ptr %1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.d, align 1, !tbaa !18
  %.not34 = icmp eq i8 %i.e, -100
  br i1 %.not34, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16) ; 0 uses
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23   ; 3 uses
  %.not35 = icmp eq ptr %i.g, null
  br i1 %.not35, label %.loopexit48, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.i = load i8, ptr %i.g, align 1, !tbaa !18
  %i.j = sext i8 %i.i to i32                      ; 2 uses
  %i.k = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.h, i32 noundef %i.j) #17 ; 2 uses
  %.not3649 = icmp eq ptr %i.k, null
  br i1 %.not3649, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.m = load i64, ptr %i.l, align 8, !tbaa !26
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.o = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.n, i32 noundef %i.j) #17 ; 2 uses
  %.not36 = icmp eq ptr %i.o, null
  br i1 %.not36, label %.critedge, label %bb.g, !llvm.loop !56

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %i.p = phi ptr [ %i.k, %.lr.ph ], [ %i.o, %bb.f ] ; 2 uses
  %i.q = tail call i32 @strncmp(ptr noundef nonnull %i.p, ptr noundef nonnull %i.g, i64 noundef %i.m) #17
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.loopexit48, label %bb.f

.loopexit48:                                      ; preds = %bb.g, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %3 ; 5 uses
  %i.t = and i32 %4, 1
  %.not37 = icmp eq i32 %i.t, 0
  %i.u = select i1 %.not37, ptr %1, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !59
  %i.w = and i32 %4, 2
  %.not38 = icmp eq i32 %i.w, 0
  %i.x = select i1 %.not38, ptr null, ptr %i.s
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.x, ptr %i.y, align 8, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 521
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !25
  %.not39 = icmp eq i8 %i.aa, 0
  br i1 %.not39, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit48
  %i.ab = call noundef i32 @_ZN5cmsys10RegExpFind6regtryEPKcPS2_S3_S2_(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %i.s, ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d)
  %i.ac = icmp ne i32 %i.ab, 0
  br label %.loopexit

bb.i:                                             ; preds = %.loopexit48
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !24  ; 2 uses
  %.not40 = icmp eq i8 %i.ae, 0
  br i1 %.not40, label %.preheader, label %.preheader45

.preheader45:                                     ; preds = %bb.i
  %i.af = sext i8 %i.ae to i32
  %i.ag = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.s, i32 noundef %i.af) #17 ; 2 uses
  %.not4350 = icmp eq ptr %i.ag, null
  br i1 %.not4350, label %.loopexit, label %.lr.ph51

bb.j:                                             ; preds = %.lr.ph51
  %i.ah = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.ai = load i8, ptr %i.ad, align 8, !tbaa !24
  %i.aj = sext i8 %i.ai to i32
  %i.ak = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ah, i32 noundef %i.aj) #17 ; 2 uses
  %.not43 = icmp eq ptr %i.ak, null
  br i1 %.not43, label %.loopexit, label %.lr.ph51, !llvm.loop !57

.lr.ph51:                                         ; preds = %.preheader45, %bb.j
  %i.al = phi ptr [ %i.ak, %bb.j ], [ %i.ag, %.preheader45 ] ; 2 uses
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.an = call noundef i32 @_ZN5cmsys10RegExpFind6regtryEPKcPS2_S3_S2_(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull %i.al, ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef %i.am)
  %.not44.not.not = icmp ne i32 %i.an, 0          ; 3 uses
  br i1 %.not44.not.not, label %.loopexit, label %bb.j

.preheader:                                       ; preds = %bb.i, %bb.k
  %.2 = phi ptr [ %i.aq, %bb.k ], [ %i.s, %bb.i ] ; 3 uses
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.ap = call noundef i32 @_ZN5cmsys10RegExpFind6regtryEPKcPS2_S3_S2_(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %.2, ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef %i.ao)
  %.not41.not.not = icmp ne i32 %i.ap, 0          ; 3 uses
  br i1 %.not41.not.not, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %.preheader
  %i.aq = getelementptr inbounds nuw i8, ptr %.2, i64 1
  %i.ar = load i8, ptr %.2, align 1, !tbaa !18
  %.not42 = icmp eq i8 %i.ar, 0
  br i1 %.not42, label %.loopexit, label %.preheader, !llvm.loop !58

.loopexit:                                        ; preds = %.lr.ph51, %bb.j, %bb.k, %.preheader, %.preheader45, %bb.h
  %.029 = phi i1 [ %i.ac, %bb.h ], [ false, %.preheader45 ], [ %.not41.not.not, %bb.k ], [ %.not41.not.not, %.preheader ], [ %.not44.not.not, %bb.j ], [ %.not44.not.not, %.lr.ph51 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.e, %bb.a, %.loopexit, %bb.c
  %.130 = phi i1 [ false, %bb.c ], [ %.029, %.loopexit ], [ false, %bb.a ], [ false, %bb.e ], [ false, %bb.f ]
  ret i1 %.130
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN5cmsys10RegExpFind6regtryEPKcPS2_S3_S2_(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8), (16, 32)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #6 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !39
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.a, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.b, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %2, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %3, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.c, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
end_hunk_0
begin_hunk_1_@_ZN5cmsys10RegExpFind8regmatchEPKc:bb.a
bb.ae:                                            ; preds = %bb.ad
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i, i64 3
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !18
  %i.cd = sext i8 %i.cc to i32
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.047 = phi i32 [ %i.cd, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %i.ce = icmp ne i8 %i.t, 10                     ; 2 uses
  %i.cf = zext i1 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %.051107, i64 3
  %i.ch = tail call noundef i32 @_ZN5cmsys10RegExpFind9regrepeatEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.cg) ; 2 uses
  %.not60108 = icmp slt i32 %i.ch, %i.cf
  br i1 %.not60108, label %.thread, label %.lr.ph111

.lr.ph111:                                        ; preds = %bb.af
  %i.ci = icmp eq i32 %.047, 0
  %i.cj = zext nneg i32 %i.ch to i64              ; 2 uses
  %i.ck = zext i1 %i.ce to i64                    ; 2 uses
  br i1 %i.ci, label %.lr.ph111.split.us, label %.lr.ph111.split.preheader

.lr.ph111.split.preheader:                        ; preds = %.lr.ph111
  %.pre = load ptr, ptr %0, align 8, !tbaa !39
  br label %.lr.ph111.split

.lr.ph111.split.us:                               ; preds = %.lr.ph111, %bb.ag
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %bb.ag ], [ %i.cj, %.lr.ph111 ] ; 2 uses
  %i.cl = tail call noundef i32 @_ZN5cmsys10RegExpFind8regmatchEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %.0.i)
  %.not61.us = icmp eq i32 %i.cl, 0
  br i1 %.not61.us, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %.lr.ph111.split.us
  %indvars.iv.next143 = add nsw i64 %indvars.iv142, -1 ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv.next143
  store ptr %i.cm, ptr %0, align 8, !tbaa !39
  %.not60.us.not = icmp sgt i64 %indvars.iv142, %i.ck
  br i1 %.not60.us.not, label %.lr.ph111.split.us, label %.thread, !llvm.loop !61

.lr.ph111.split:                                  ; preds = %.lr.ph111.split.preheader, %bb.ai
  %i.cn = phi ptr [ %.pre, %.lr.ph111.split.preheader ], [ %i.cs, %bb.ai ]
  %indvars.iv = phi i64 [ %i.cj, %.lr.ph111.split.preheader ], [ %indvars.iv.next, %bb.ai ] ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !18
  %i.cp = sext i8 %i.co to i32
  %i.cq = icmp eq i32 %.047, %i.cp
  br i1 %i.cq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph111.split
  %i.cr = tail call noundef i32 @_ZN5cmsys10RegExpFind8regmatchEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %.0.i)
  %.not61 = icmp eq i32 %i.cr, 0
  br i1 %.not61, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah, %.lr.ph111.split
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv.next ; 2 uses
  store ptr %i.cs, ptr %0, align 8, !tbaa !39
  %.not60.not = icmp sgt i64 %indvars.iv, %i.ck
  br i1 %.not60.not, label %.lr.ph111.split, label %.thread, !llvm.loop !61

bb.aj:                                            ; preds = %_ZN5cmsysL7regnextEPKc.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !38
  %i.cv = icmp ne ptr %i.c, %i.cu
  %. = zext i1 %i.cv to i32
  br label %.thread

bb.ak:                                            ; preds = %_ZN5cmsysL7regnextEPKc.exit
  %puts75 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18) ; 0 uses
  br label %.thread

bb.al:                                            ; preds = %.critedge.thread, %bb.n, %bb.h, %bb.g, %bb.t, %bb.q, %bb.j, %_ZN5cmsysL7regnextEPKc.exit, %_ZN5cmsysL7regnextEPKc.exit
  %i.cw = phi ptr [ %i.c, %bb.g ], [ %i.c, %bb.h ], [ %i.x, %bb.j ], [ %i.ae, %bb.n ], [ %i.ak, %bb.q ], [ %i.aq, %bb.t ], [ %i.c, %_ZN5cmsysL7regnextEPKc.exit ], [ %i.c, %_ZN5cmsysL7regnextEPKc.exit ], [ %i.c, %.critedge.thread ]
  %.150 = phi ptr [ %.0.i, %bb.g ], [ %.0.i, %bb.h ], [ %.0.i, %bb.j ], [ %.0.i, %bb.n ], [ %.0.i, %bb.q ], [ %.0.i, %bb.t ], [ %.0.i, %_ZN5cmsysL7regnextEPKc.exit ], [ %.0.i, %_ZN5cmsysL7regnextEPKc.exit ], [ %i.bg, %.critedge.thread ] ; 2 uses
  %.not = icmp eq ptr %.150, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !62

._crit_edge:                                      ; preds = %bb.al, %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.k, %bb.r, %bb.s, %bb.o, %bb.p, %bb.i, %bb.h, %bb.g, %bb.ai, %bb.ah, %bb.ag, %.lr.ph111.split.us, %.preheader, %_ZN5cmsysL7regnextEPKc.exit77, %bb.ab, %bb.ac, %bb.af, %bb.aj, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %._crit_edge, %bb.ak
  %.7 = phi i32 [ 0, %bb.ak ], [ 0, %._crit_edge ], [ %., %bb.aj ], [ 1, %bb.ah ], [ 1, %bb.z ], [ 0, %bb.af ], [ 1, %bb.v ], [ 1, %bb.w ], [ 0, %bb.u ], [ 1, %bb.y ], [ 0, %bb.x ], [ 0, %_ZN5cmsysL7regnextEPKc.exit77 ], [ 0, %bb.ag ], [ 0, %bb.ab ], [ 0, %bb.ac ], [ 1, %.preheader ], [ 1, %.lr.ph111.split.us ], [ 0, %bb.ai ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.k ], [ 0, %bb.m ]
  ret i32 %.7
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef i32 @_ZN5cmsys10RegExpFind9regrepeatEPKc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef readonly %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39     ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 3 uses
  %i.c = load i8, ptr %1, align 1, !tbaa !18
  switch i8 %i.c, label %bb.e [
    i8 3, label %bb.b
    i8 8, label %.preheader
    i8 4, label %.preheader34
    i8 5, label %.preheader36
  ]

.preheader36:                                     ; preds = %bb.a
  %i.d = load i8, ptr %i.a, align 1, !tbaa !18    ; 2 uses
  %.not38 = icmp eq i8 %i.d, 0
  br i1 %.not38, label %.critedge, label %.lr.ph

.preheader34:                                     ; preds = %bb.a
  %i.e = load i8, ptr %i.a, align 1, !tbaa !18    ; 2 uses
  %.not3245 = icmp eq i8 %i.e, 0
  br i1 %.not3245, label %.critedge, label %.lr.ph48

.preheader:                                       ; preds = %bb.a
  %i.f = load i8, ptr %i.b, align 1, !tbaa !18    ; 2 uses
  %i.g = load i8, ptr %i.a, align 1, !tbaa !18
  %i.h = icmp eq i8 %i.f, %i.g
  br i1 %i.h, label %.lr.ph56, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #17 ; 2 uses
  %i.j = trunc i64 %i.i to i32
  %sext = shl i64 %i.i, 32
  %i.k = ashr exact i64 %sext, 32
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  br label %.critedge

.lr.ph56:                                         ; preds = %.preheader, %.lr.ph56
  %.055 = phi ptr [ %i.n, %.lr.ph56 ], [ %i.a, %.preheader ]
  %.02454 = phi i32 [ %i.m, %.lr.ph56 ], [ 0, %.preheader ]
  %i.m = add nuw nsw i32 %.02454, 1               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.055, i64 1 ; 3 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !18
  %i.p = icmp eq i8 %i.f, %i.o
  br i1 %i.p, label %.lr.ph56, label %.critedge, !llvm.loop !63

.lr.ph48:                                         ; preds = %.preheader34, %bb.c
  %i.q = phi i8 [ %i.v, %bb.c ], [ %i.e, %.preheader34 ]
  %.147 = phi ptr [ %i.u, %bb.c ], [ %i.a, %.preheader34 ] ; 2 uses
  %.12546 = phi i32 [ %i.t, %bb.c ], [ 0, %.preheader34 ] ; 2 uses
  %i.r = sext i8 %i.q to i32
  %i.s = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.b, i32 noundef %i.r) #17
  %.not33 = icmp eq ptr %i.s, null
  br i1 %.not33, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph48
  %i.t = add nuw nsw i32 %.12546, 1               ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.147, i64 1 ; 3 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !18    ; 2 uses
  %.not32 = icmp eq i8 %i.v, 0
  br i1 %.not32, label %.critedge, label %.lr.ph48, !llvm.loop !64

.lr.ph:                                           ; preds = %.preheader36, %bb.d
  %i.w = phi i8 [ %i.ab, %bb.d ], [ %i.d, %.preheader36 ]
  %.240 = phi ptr [ %i.aa, %bb.d ], [ %i.a, %.preheader36 ] ; 2 uses
  %.22639 = phi i32 [ %i.z, %bb.d ], [ 0, %.preheader36 ] ; 2 uses
  %i.x = sext i8 %i.w to i32
  %i.y = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.b, i32 noundef %i.x) #17
  %.not31 = icmp eq ptr %i.y, null
  br i1 %.not31, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.z = add nuw nsw i32 %.22639, 1               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.240, i64 1 ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !18  ; 2 uses
  %.not = icmp eq i8 %i.ab, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !65

bb.e:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19) ; 0 uses
  br label %bb.f

.critedge:                                        ; preds = %bb.d, %.lr.ph, %bb.c, %.lr.ph48, %.lr.ph56, %.preheader36, %.preheader34, %.preheader, %bb.b
  %.327 = phi i32 [ %i.j, %bb.b ], [ 0, %.preheader36 ], [ %.12546, %.lr.ph48 ], [ 0, %.preheader ], [ 0, %.preheader34 ], [ %i.m, %.lr.ph56 ], [ %i.t, %bb.c ], [ %.22639, %.lr.ph ], [ %i.z, %bb.d ]
  %.3 = phi ptr [ %i.l, %bb.b ], [ %i.a, %.preheader36 ], [ %.147, %.lr.ph48 ], [ %i.a, %.preheader ], [ %i.a, %.preheader34 ], [ %i.n, %.lr.ph56 ], [ %i.u, %bb.c ], [ %.240, %.lr.ph ], [ %i.aa, %bb.d ]
  store ptr %.3, ptr %0, align 8, !tbaa !39
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.e
  %.028 = phi i32 [ 0, %bb.e ], [ %.327, %.critedge ]
  ret i32 %.028
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { builtin nounwind }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !20}
!1 = distinct !{!1, !20}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"_ZTSN5cmsys22RegularExpressionMatchE", !7, i64 0, !7, i64 256, !12, i64 512}
!14 = !{!"long", !7, i64 0}
!15 = !{!"_ZTSN5cmsys17RegularExpressionE", !13, i64 0, !7, i64 520, !7, i64 521, !12, i64 528, !14, i64 536, !12, i64 544, !8, i64 552, !8, i64 556}
!16 = !{!15, !12, i64 544}
!17 = !{!15, !8, i64 552}
!18 = !{!7, !7, i64 0}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!12, !12, i64 0}
!22 = !{i64 0, i64 256, !18, i64 256, i64 256, !18, i64 512, i64 8, !21}
!23 = !{!15, !12, i64 528}
!24 = !{!15, !7, i64 520}
!25 = !{!15, !7, i64 521}
!26 = !{!15, !14, i64 536}
!27 = !{!15, !8, i64 556}
!28 = !{!"_ZTSN5cmsys13RegExpCompileE", !12, i64 0, !8, i64 8, !12, i64 16, !14, i64 24}
!29 = !{!28, !12, i64 0}
!30 = !{!28, !8, i64 8}
!31 = !{!28, !12, i64 16}
!32 = !{!28, !14, i64 24}
!33 = !{!13, !12, i64 512}
!34 = !{!8, !8, i64 0}
!35 = !{!"any p2 pointer", !11, i64 0}
!36 = !{!"p2 omnipotent char", !35, i64 0}
!37 = !{!"_ZTSN5cmsys10RegExpFindE", !12, i64 0, !12, i64 8, !36, i64 16, !36, i64 24, !12, i64 32}
!38 = !{!37, !12, i64 32}
!39 = !{!37, !12, i64 0}
!40 = !{!37, !36, i64 16}
!41 = !{!37, !36, i64 24}
!42 = distinct !{!42, !19}
!43 = distinct !{!43, !20}
!44 = distinct !{!44, !19}
!45 = distinct !{!45, !20}
!46 = distinct !{!46, !20}
!47 = distinct !{!47, !20}
!48 = distinct !{!48, !20}
!49 = distinct !{!49, !20}
!50 = distinct !{!50, !20}
!51 = !{ptr @_ZN5cmsys13RegExpCompile9regbranchEPi}
!52 = distinct !{!52, !20, !55}
!53 = distinct !{!53, !20}
!54 = distinct !{!54, !20, !55}
!55 = !{!"llvm.loop.unswitch.partial.disable"}
!56 = distinct !{!56, !20}
!57 = distinct !{!57, !20}
!58 = distinct !{!58, !20}
!59 = !{!37, !12, i64 8}
!60 = distinct !{!60, !20}
!61 = distinct !{!61, !20}
!62 = distinct !{!62, !20}
!63 = distinct !{!63, !20}
!64 = distinct !{!64, !20}
!65 = distinct !{!65, !20}
end_hunk_1
