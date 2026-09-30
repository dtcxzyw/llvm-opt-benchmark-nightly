Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/n2builder?download=true
inline.NumInlined: 194
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6icu_7822Normalizer2DataBuilder11postProcessERNS_4NormE:bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 45
  store i8 0, ptr %i.cj, align 1, !tbaa !63
  br i1 %i.ci, label %.thread91, label %bb.ak

bb.ak:                                            ; preds = %.thread89, %bb.aj
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !60
  %.not79 = icmp eq ptr %i.cl, null
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  br i1 %.not79, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i32 12, ptr %i.cm, align 8, !tbaa !64
  br label %bb.aq

bb.am:                                            ; preds = %bb.ak
  store i32 13, ptr %i.cm, align 8, !tbaa !64
  br label %bb.aq

bb.an:                                            ; preds = %bb.ai
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !60 ; 2 uses
  %.not78 = icmp eq ptr %i.co, null
  %i.cp = zext i1 %.not78 to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 45
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !63
  %.not80 = icmp eq ptr %i.co, null
  br i1 %.not80, label %bb.ap, label %bb.ao

.thread91:                                        ; preds = %bb.aj
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !60
  %.not8092 = icmp eq ptr %i.cs, null
  br i1 %.not8092, label %.thread93, label %bb.ao

bb.ao:                                            ; preds = %.thread91, %bb.an
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 2, ptr %i.ct, align 8, !tbaa !64
  br label %bb.aq

.thread93:                                        ; preds = %.thread91
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 14, ptr %i.cu, align 8, !tbaa !64
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 1, ptr %i.cv, align 8, !tbaa !64
  br label %bb.aq

bb.aq:                                            ; preds = %bb.am, %bb.al, %.thread93, %bb.ap, %bb.ao, %bb.ag, %bb.c
  ret void
}

declare void @_ZNK6icu_785Norms7reorderERNS_13UnicodeStringERNS_23BuilderReorderingBufferE(ptr noundef nonnull align 8 dereferenceable(424), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(133)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6icu_7822Normalizer2DataBuilder11setSmallFCDEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(868) %0, i32 noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 65536
  %i.b = lshr i32 %1, 10
  %i.c = add nuw nsw i32 %i.b, 55232
  %i.d = and i32 %i.c, 65535
  %i.e = select i1 %i.a, i32 %1, i32 %i.d         ; 2 uses
  %i.f = lshr i32 %i.e, 5
  %i.g = and i32 %i.f, 7
  %i.h = shl nuw nsw i32 1, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.j = ashr i32 %i.e, 8
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 %i.k ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !37
  %i.n = trunc nuw i32 %i.h to i8
  %i.o = or i8 %i.m, %i.n
  store i8 %i.o, ptr %i.l, align 1, !tbaa !37
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6icu_7822Normalizer2DataBuilder11writeNorm16EP14UMutableCPTrieiiRNS_4NormE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(868) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.icu_78::IcuToolErrorCode", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 41 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 42 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2, !tbaa !62
  %i.e = or i8 %i.d, %i.b
  %.not = icmp eq i8 %i.e, 0
  %.not5357 = icmp sgt i32 %2, %3
  %or.cond59 = or i1 %.not, %.not5357
  br i1 %or.cond59, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 608
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.058 = phi i32 [ %2, %.lr.ph ], [ %i.u, %bb.b ] ; 5 uses
  %i.g = icmp slt i32 %.058, 65536
  %i.h = lshr i32 %.058, 10
  %i.i = add nuw nsw i32 %i.h, 55232
  %i.j = and i32 %i.i, 65535
  %i.k = select i1 %i.g, i32 %.058, i32 %i.j      ; 2 uses
  %i.l = lshr i32 %i.k, 5
  %i.m = and i32 %i.l, 7
  %i.n = shl nuw nsw i32 1, %i.m
  %i.o = ashr i32 %i.k, 8
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %i.f, i64 %i.p ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !37
  %i.s = trunc nuw i32 %i.n to i8
  %i.t = or i8 %i.r, %i.s
  store i8 %i.t, ptr %i.q, align 1, !tbaa !37
  %i.u = add i32 %.058, 1
  %exitcond.not = icmp eq i32 %.058, %3
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !90

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !64   ; 2 uses
  switch i32 %i.w, label %bb.s [
    i32 1, label %bb.t
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.i
    i32 9, label %bb.j
    i32 10, label %bb.n
    i32 11, label %bb.o
    i32 12, label %bb.p
    i32 13, label %bb.q
    i32 14, label %bb.r
  ]

bb.c:                                             ; preds = %.loopexit
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.y = load i32, ptr %i.x, align 4, !tbaa !91
  %i.z = shl nsw i32 %i.y, 1
  br label %bb.t

bb.d:                                             ; preds = %.loopexit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !57
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !91
  %i.ae = shl nsw i32 %i.ad, 1
  %i.af = add nsw i32 %i.ae, %i.ab
  br label %bb.t

bb.e:                                             ; preds = %.loopexit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !57
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !91
  %i.ak = shl nsw i32 %i.aj, 1
  %i.al = add nsw i32 %i.ak, %i.ah
  br label %bb.t

bb.f:                                             ; preds = %.loopexit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.an = load i32, ptr %i.am, align 8, !tbaa !57
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !91
  %i.aq = shl nsw i32 %i.ap, 1
  %i.ar = add nsw i32 %i.aq, %i.an
  br label %bb.t

bb.g:                                             ; preds = %.loopexit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.at = load i32, ptr %i.as, align 8, !tbaa !57
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.av = load i32, ptr %i.au, align 4, !tbaa !91
  %i.aw = shl nsw i32 %i.av, 1
  %i.ax = add nsw i32 %i.aw, %i.at
  br label %bb.t

bb.h:                                             ; preds = %.loopexit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 500
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !57
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !91
  %i.bc = shl nsw i32 %i.bb, 1
  %i.bd = add nsw i32 %i.bc, %i.az
  br label %bb.t

bb.i:                                             ; preds = %.loopexit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !57
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !91
  %i.bi = shl nsw i32 %i.bh, 1
  %i.bj = add nsw i32 %i.bi, %i.bf
  br label %bb.t

bb.j:                                             ; preds = %.loopexit
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !91
  %i.bm = shl i32 %i.bl, 3                        ; 3 uses
  %i.bn = add i32 %i.bm, 512
  %i.bo = load i8, ptr %i.c, align 2, !tbaa !62
  switch i8 %i.bo, label %bb.l [
    i8 0, label %bb.m
    i8 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %6 = add i32 %i.bm, 514
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %7 = add i32 %i.bm, 516
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.048 = phi i32 [ %i.bn, %bb.j ], [ %6, %bb.k ], [ %7, %bb.l ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !57
  %i.br = add i32 %.048, -1032
  %i.bs = add i32 %i.br, %i.bq
  br label %bb.t

bb.n:                                             ; preds = %.loopexit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !57
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !91
  %i.bx = shl nsw i32 %i.bw, 1
  %i.by = add nsw i32 %i.bx, %i.bu
  br label %bb.t

bb.o:                                             ; preds = %.loopexit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !57
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !91
  %i.cd = shl nsw i32 %i.cc, 1
  %i.ce = add nsw i32 %i.cd, %i.ca
  br label %bb.t

bb.p:                                             ; preds = %.loopexit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !57
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !91
  %i.cj = shl nsw i32 %i.ci, 1
  %i.ck = add nsw i32 %i.cj, %i.cg
  br label %bb.t

bb.q:                                             ; preds = %.loopexit
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !48
  %i.cn = zext i8 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = or disjoint i32 %i.co, 64512
  br label %bb.t

bb.r:                                             ; preds = %.loopexit
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !48
  %i.cs = zext i8 %i.cr to i32
  %i.ct = shl nuw nsw i32 %i.cs, 1
  %i.cu = or disjoint i32 %i.ct, 65024
  br label %bb.t

bb.s:                                             ; preds = %.loopexit
  tail call void @exit(i32 noundef 5) #20
  unreachable

bb.t:                                             ; preds = %.loopexit, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.047 = phi i32 [ %i.cu, %bb.r ], [ %i.z, %bb.c ], [ %i.af, %bb.d ], [ %i.al, %bb.e ], [ %i.ar, %bb.f ], [ %i.ax, %bb.g ], [ %i.bd, %bb.h ], [ %i.bj, %bb.i ], [ %i.bs, %bb.m ], [ %i.by, %bb.n ], [ %i.ce, %bb.o ], [ %i.ck, %bb.p ], [ %i.cp, %bb.q ], [ %i.w, %.loopexit ]
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 45
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !63
  %.not54 = icmp ne i8 %i.cw, 0
  %i.cx = zext i1 %.not54 to i32
  %spec.select = or i32 %.047, %i.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 0, ptr %i.cy, align 8, !tbaa !66
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7816IcuToolErrorCodeE, i64 16), ptr %5, align 8, !tbaa !36
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.10, ptr %i.cz, align 8, !tbaa !68
  invoke void @umutablecptrie_setRange_78(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %spec.select, ptr noundef nonnull %i.cy)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.da = load i32, ptr %i.v, align 8, !tbaa !64  ; 2 uses
  %i.db = add i32 %i.da, -3
  %or.cond = icmp ult i32 %i.db, 7
  br i1 %or.cond, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !48
  %.not56 = icmp eq i8 %i.dd, 0
  br i1 %.not56, label %bb.y, label %.critedge

.critedge:                                        ; preds = %bb.u, %bb.v
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 468 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !57
  %i.dg = icmp slt i32 %2, %i.df
  br i1 %i.dg, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.critedge
  store i32 %2, ptr %i.de, align 4, !tbaa !57
  br label %bb.y

bb.x:                                             ; preds = %bb.t
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7816IcuToolErrorCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  resume { ptr, i32 } %i.dh

bb.y:                                             ; preds = %bb.w, %.critedge, %bb.v
  %i.di = icmp sgt i32 %i.da, 4
  br i1 %i.di, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !57
  %i.dl = icmp slt i32 %2, %i.dk
  br i1 %i.dl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 %2, ptr %i.dj, align 8, !tbaa !57
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.dm = load i8, ptr %i.a, align 1, !tbaa !61
  %.not55 = icmp eq i8 %i.dm, 0
  br i1 %.not55, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 508 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !57
  %i.dp = icmp slt i32 %2, %i.do
  br i1 %i.dp, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 %2, ptr %i.dn, align 4, !tbaa !57
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  call void @_ZN6icu_7816IcuToolErrorCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void
}

declare void @umutablecptrie_setRange_78(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6icu_7816IcuToolErrorCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6icu_7822Normalizer2DataBuilder13setHangulDataEP14UMutableCPTrie(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(868) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.lr.ph.preheader:
  %2 = alloca %"class.icu_78::IcuToolErrorCode", align 8 ; 9 uses
  %i.a = tail call i32 @umutablecptrie_get_78(ptr noundef %1, i32 noundef 4352)
  %i.b = icmp ugt i32 %i.a, 1
  br i1 %i.b, label %.loopexit40, label %.lr.ph.147

.lr.ph.preheader.1:                               ; preds = %.lr.ph.18
  %i.c = tail call i32 @umutablecptrie_get_78(ptr noundef %1, i32 noundef 4449)
  %i.d = icmp ugt i32 %i.c, 1
  br i1 %i.d, label %.loopexit40, label %.lr.ph.1.1

.lr.ph.1.1:                                       ; preds = %.lr.ph.preheader.1
  %i.e = tail call i32 @umutablecptrie_get_78(ptr noundef %1, i32 noundef 4450)
  %i.f = icmp ugt i32 %i.e, 1
  br i1 %i.f, label %.loopexit40, label %.lr.ph.1.2

.lr.ph.1.2:                                       ; preds = %.lr.ph.1.1
  %i.g = tail call i32 @umutablecptrie_get_78(ptr noundef %1, i32 noundef 4451)
  %i.h = icmp ugt i32 %i.g, 1
  br i1 %i.h, label %.loopexit40, label %.lr.ph.1.3

.lr.ph.1.3:                                       ; preds = %.lr.ph.1.2
  %i.i = tail call i32 @umutablecptrie_get_78(ptr noundef %1, i32 noundef 4452)
  %i.j = icmp ugt i32 %i.i, 1
  br i1 %i.j, label %.loopexit40, label %.lr.ph.1.4

.lr.ph.1.4:                                       ; preds = %.lr.ph.1.3
  %i.k = tail call i32 @umutablecptrie_get_78(ptr noundef %1, i32 noundef 4453)
  %i.l = icmp ugt i32 %i.k, 1
  br i1 %i.l, label %.loopexit40, label %.lr.ph.1.5

.lr.ph.1.5:                                       ; preds = %.lr.ph.1.4
  %i.m = tail call i32 @umutablecptrie_get_78(ptr noundef %1, i32 noundef 4454)
  %i.n = icmp ugt i32 %i.m, 1
  br i1 %i.n, label %.loopexit40, label %.lr.ph.1.6

.lr.ph.1.6:                                       ; preds = %.lr.ph.1.5
  %i.o = tail call i32 @umutablecptrie_get_78(ptr noundef %1, i32 noundef 4455)
  %i.p = icmp ugt i32 %i.o, 1
  br i1 %i.p, label %.loopexit40, label %.lr.ph.1.7

.lr.ph.1.7:                                       ; preds = %.lr.ph.1.6
  %i.q = tail call i32 @umutablecptrie_get_78(ptr noundef %1, i32 noundef 4456)
  %i.r = icmp ugt i32 %i.q, 1
  br i1 %i.r, label %.loopexit40, label %.lr.ph.1.8

.lr.ph.1.8:                                       ; preds = %.lr.ph.1.7
  %i.s = tail call i32 @umutablecptrie_get_78(ptr noundef %1, i32 noundef 4457)
  %i.t = icmp ugt i32 %i.s, 1
  br i1 %i.t, label %.loopexit40, label %.lr.ph.1.9

.lr.ph.1.9:                                       ; preds = %.lr.ph.1.8
  %i.u = tail call i32 @umutablecptrie_get_78(ptr noundef %1, i32 noundef 4458)
  %i.v = icmp ugt i32 %i.u, 1
  br i1 %i.v, label %.loopexit40, label %.lr.ph.1.10

end_hunk_0
