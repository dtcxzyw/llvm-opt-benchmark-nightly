Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/UriNormalize?download=true
inline.NumInlined: 64
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@uriNormalizeSyntaxExMmA:bb.a
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @uriMemoryManagerIsComplete(ptr noundef nonnull %2) #6
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %2, %bb.b ], [ @defaultMemoryManager, %bb.a ]
  %i.c = tail call fastcc i32 @uriNormalizeSyntaxEngineA(ptr noundef %0, i32 noundef %1, ptr noundef null, ptr noundef nonnull %.0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.05 = phi i32 [ %i.c, %bb.c ], [ 10, %bb.b ]
  ret i32 %.05
}

declare i32 @uriMemoryManagerIsComplete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 4) i32 @uriNormalizeSyntaxA(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc range(i32 0, 4) i32 @uriNormalizeSyntaxEngineA(ptr noundef %0, i32 noundef -1, ptr noundef null, ptr noundef nonnull @defaultMemoryManager)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 11) i32 @uriMakeOwnerMmA(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !40
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @uriMemoryManagerIsComplete(ptr noundef nonnull %1) #6
  %.not = icmp eq i32 %i.c, 1
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %1, %bb.b ], [ @defaultMemoryManager, %bb.a ] ; 2 uses
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !42
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = call fastcc i32 @uriMakeOwnerEngineA(ptr noundef %0, ptr noundef %i.a, ptr noundef nonnull %.0)
  %.not12 = icmp eq i32 %i.h, 0
  br i1 %.not12, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = load i32, ptr %i.a, align 4, !tbaa !40
  tail call void @uriPreventLeakageA(ptr noundef nonnull %0, i32 noundef %i.i, ptr noundef nonnull %.0)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 1, ptr %i.e, align 4, !tbaa !42
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.g, %bb.f
  %.09 = phi i32 [ 10, %bb.b ], [ 2, %bb.c ], [ 0, %bb.g ], [ 3, %bb.f ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.09
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @uriMakeOwnerEngineA(ptr noundef nonnull %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !40     ; 4 uses
  %i.d = and i32 %i.c, 1
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.i = icmp ugt ptr %i.h, %i.f
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @uriCopyRangeA(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %2) #6
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %uriMakeRangeOwnerA.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %1, align 4, !tbaa !40
  %i.m = or i32 %i.l, 1                           ; 2 uses
  store i32 %i.m, ptr %1, align 4, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.b, %bb.a
  %i.n = phi i32 [ %i.m, %bb.e ], [ %i.c, %bb.c ], [ %i.c, %bb.b ], [ %i.c, %bb.a ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = and i32 %i.n, 2
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !48   ; 2 uses
  %.not.i78 = icmp eq ptr %i.r, null
  br i1 %.not.i78, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !49
  %i.u = icmp ugt ptr %i.t, %i.r
  br i1 %i.u, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.v = tail call i32 @uriCopyRangeA(ptr noundef nonnull %i.o, ptr noundef nonnull %i.o, ptr noundef %2) #6
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %uriMakeRangeOwnerA.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load i32, ptr %1, align 4, !tbaa !40
  %i.y = or i32 %i.x, 2                           ; 2 uses
  store i32 %i.y, ptr %1, align 4, !tbaa !40
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.g, %bb.f
  %i.z = phi i32 [ %i.y, %bb.j ], [ %i.n, %bb.h ], [ %i.n, %bb.g ], [ %i.n, %bb.f ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.ab = and i32 %i.z, 16
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !48 ; 2 uses
  %.not.i81 = icmp eq ptr %i.ad, null
  br i1 %.not.i81, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !49
  %i.ag = icmp ugt ptr %i.af, %i.ad
  br i1 %i.ag, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ah = tail call i32 @uriCopyRangeA(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.aa, ptr noundef %2) #6
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %uriMakeRangeOwnerA.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = load i32, ptr %1, align 4, !tbaa !40
  %i.ak = or i32 %i.aj, 16                        ; 2 uses
  store i32 %i.ak, ptr %1, align 4, !tbaa !40
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.l, %bb.k
  %i.al = phi i32 [ %i.ak, %bb.o ], [ %i.z, %bb.m ], [ %i.z, %bb.l ], [ %i.z, %bb.k ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.an = and i32 %i.al, 32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !48 ; 2 uses
  %.not.i84 = icmp eq ptr %i.ap, null
  br i1 %.not.i84, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !49
  %i.as = icmp ugt ptr %i.ar, %i.ap
  br i1 %i.as, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.at = tail call i32 @uriCopyRangeA(ptr noundef nonnull %i.am, ptr noundef nonnull %i.am, ptr noundef %2) #6
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %uriMakeRangeOwnerA.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = load i32, ptr %1, align 4, !tbaa !40
  %i.aw = or i32 %i.av, 32                        ; 2 uses
  store i32 %i.aw, ptr %1, align 4, !tbaa !40
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r, %bb.q, %bb.p
  %i.ax = phi i32 [ %i.aw, %bb.t ], [ %i.al, %bb.r ], [ %i.al, %bb.q ], [ %i.al, %bb.p ] ; 4 uses
  %i.ay = and i32 %i.ax, 4
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !27 ; 3 uses
  %.not66 = icmp eq ptr %i.bb, null
  br i1 %.not66, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !49 ; 2 uses
  %i.be = icmp ugt ptr %i.bd, %i.bb
  %3 = insertelement <2 x ptr> poison, ptr %i.bb, i64 0
  %4 = insertelement <2 x ptr> %3, ptr %i.bd, i64 1
  br i1 %i.be, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.bf = tail call i32 @uriCopyRangeA(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.ba, ptr noundef %2) #6
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %uriMakeRangeOwnerA.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bh = load i32, ptr %1, align 4, !tbaa !40
  %i.bi = or i32 %i.bh, 4                         ; 2 uses
  store i32 %i.bi, ptr %1, align 4, !tbaa !40
  %5 = load <2 x ptr>, ptr %i.ba, align 8, !tbaa !43
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %i.bj = phi i32 [ %i.bi, %bb.y ], [ %i.ax, %bb.w ]
  %6 = phi <2 x ptr> [ %5, %bb.y ], [ %4, %bb.w ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x ptr> %6, ptr %i.bk, align 8, !tbaa !43
  br label %bb.ac

bb.aa:                                            ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !28
  %.not67 = icmp eq ptr %i.bm, null
  br i1 %.not67, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bn = tail call fastcc i32 @uriMakeRangeOwnerA(ptr noundef %1, i32 noundef 4, ptr noundef %i.bl, ptr noundef %2)
  %.not68 = icmp eq i32 %i.bn, 0
  br i1 %.not68, label %uriMakeRangeOwnerA.exit, label %._crit_edge119

._crit_edge119:                                   ; preds = %bb.ab
  %.pre120 = load i32, ptr %1, align 4, !tbaa !40
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge119, %bb.z, %bb.aa, %bb.u
  %i.bo = phi i32 [ %.pre120, %._crit_edge119 ], [ %i.bj, %bb.z ], [ %i.ax, %bb.aa ], [ %i.ax, %bb.u ] ; 2 uses
  %i.bp = and i32 %i.bo, 8
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %.preheader109, label %bb.am

.preheader109:                                    ; preds = %bb.ac
  %.not70111 = icmp eq ptr %i.b, null
  br i1 %.not70111, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader109, %bb.al
  %.060112 = phi ptr [ %i.cm, %bb.al ], [ %i.b, %.preheader109 ] ; 8 uses
  %i.br = load ptr, ptr %.060112, align 8, !tbaa !48 ; 2 uses
  %.not.i90 = icmp eq ptr %i.br, null
  br i1 %.not.i90, label %bb.al, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw i8, ptr %.060112, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !49
  %i.bu = icmp ugt ptr %i.bt, %i.br
  br i1 %i.bu, label %bb.ae, label %bb.al

bb.ae:                                            ; preds = %bb.ad
  %i.bv = tail call i32 @uriCopyRangeA(ptr noundef nonnull %.060112, ptr noundef nonnull %.060112, ptr noundef %2) #6
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %uriMakeRangeOwnerA.exit91, label %bb.al

uriMakeRangeOwnerA.exit91:                        ; preds = %bb.ae
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %.not73113 = icmp eq ptr %i.bx, %.060112
  br i1 %.not73113, label %.preheader, label %.lr.ph115

.lr.ph115:                                        ; preds = %uriMakeRangeOwnerA.exit91
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  br label %bb.af

.preheader:                                       ; preds = %bb.ai, %uriMakeRangeOwnerA.exit91
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.aj

bb.af:                                            ; preds = %.lr.ph115, %bb.ai
  %.059114 = phi ptr [ %i.bx, %.lr.ph115 ], [ %i.cb, %bb.ai ] ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.059114, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !32 ; 2 uses
  %i.cc = load ptr, ptr %.059114, align 8, !tbaa !34 ; 3 uses
  %.not75 = icmp eq ptr %i.cc, null
  br i1 %.not75, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cd = getelementptr inbounds nuw i8, ptr %.059114, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !33
  %i.cf = icmp ugt ptr %i.ce, %i.cc
  br i1 %i.cf, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cg = load ptr, ptr %i.by, align 8, !tbaa !16
  tail call void %i.cg(ptr noundef %2, ptr noundef nonnull %i.cc) #6
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !16
  tail call void %i.ch(ptr noundef %2, ptr noundef nonnull %.059114) #6
  %.not73 = icmp eq ptr %i.cb, %.060112
  br i1 %.not73, label %.preheader, label %bb.af, !llvm.loop !107

bb.aj:                                            ; preds = %.preheader, %bb.aj
  %.1116 = phi ptr [ %.060112, %.preheader ], [ %i.cj, %bb.aj ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.1116, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !32 ; 2 uses
  %i.ck = load ptr, ptr %i.bz, align 8, !tbaa !16
  tail call void %i.ck(ptr noundef %2, ptr noundef nonnull %.1116) #6
  %.not74 = icmp eq ptr %i.cj, null
  br i1 %.not74, label %bb.ak, label %bb.aj, !llvm.loop !108

bb.ak:                                            ; preds = %bb.aj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %uriMakeRangeOwnerA.exit

bb.al:                                            ; preds = %bb.ae, %bb.ad, %.lr.ph
  %i.cl = getelementptr inbounds nuw i8, ptr %.060112, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !32 ; 2 uses
  %.not70 = icmp eq ptr %i.cm, null
  br i1 %.not70, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !109

._crit_edge.loopexit:                             ; preds = %bb.al
  %.pre121 = load i32, ptr %1, align 4, !tbaa !40
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader109
  %i.cn = phi i32 [ %.pre121, %._crit_edge.loopexit ], [ %i.bo, %.preheader109 ]
  %i.co = or i32 %i.cn, 8
  store i32 %i.co, ptr %1, align 4, !tbaa !40
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge, %bb.ac
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !48 ; 2 uses
  %.not.i93 = icmp eq ptr %i.cq, null
  br i1 %.not.i93, label %uriMakeRangeOwnerA.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !49
  %i.ct = icmp ugt ptr %i.cs, %i.cq
  br i1 %i.ct, label %bb.ao, label %uriMakeRangeOwnerA.exit

bb.ao:                                            ; preds = %bb.an
  %i.cu = tail call i32 @uriCopyRangeA(ptr noundef nonnull %i.cp, ptr noundef nonnull %i.cp, ptr noundef %2) #6
  %i.cv = icmp ne i32 %i.cu, 0
  %spec.select = zext i1 %i.cv to i32
  br label %uriMakeRangeOwnerA.exit

uriMakeRangeOwnerA.exit:                          ; preds = %bb.ao, %bb.am, %bb.an, %bb.x, %bb.s, %bb.n, %bb.i, %bb.d, %bb.ab, %bb.ak
  %.0 = phi i32 [ 0, %bb.ak ], [ 0, %bb.ab ], [ 0, %bb.x ], [ 0, %bb.d ], [ 0, %bb.s ], [ 0, %bb.n ], [ 0, %bb.i ], [ %spec.select, %bb.ao ], [ 1, %bb.am ], [ 1, %bb.an ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 4) i32 @uriMakeOwnerA(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !40
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %uriMakeOwnerMmA.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !42
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %uriMakeOwnerMmA.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call fastcc i32 @uriMakeOwnerEngineA(ptr noundef %0, ptr noundef %i.a, ptr noundef nonnull @defaultMemoryManager)
  %.not12.i = icmp eq i32 %i.f, 0
  br i1 %.not12.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.a, align 4, !tbaa !40
  tail call void @uriPreventLeakageA(ptr noundef nonnull %0, i32 noundef %i.g, ptr noundef nonnull @defaultMemoryManager)
  br label %uriMakeOwnerMmA.exit

bb.e:                                             ; preds = %bb.c
  store i32 1, ptr %i.c, align 4, !tbaa !42
  br label %uriMakeOwnerMmA.exit

uriMakeOwnerMmA.exit:                             ; preds = %bb.a, %bb.b, %bb.d, %bb.e
  %.09.i = phi i32 [ 0, %bb.b ], [ 2, %bb.a ], [ 0, %bb.e ], [ 3, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.09.i
}

; Function Attrs: nounwind uwtable
define hidden void @uriPreventLeakageW(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = load ptr, ptr %0, align 8, !tbaa !55
  tail call void %i.c(ptr noundef %2, ptr noundef %i.d) #6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = and i32 %1, 2
  %.not67 = icmp eq i32 %i.e, 0
  br i1 %.not67, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57
  %.not68 = icmp eq ptr %i.g, %i.i
  br i1 %.not68, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16
end_hunk_0
begin_hunk_1_@uriNormalizeSyntaxExW:bb.a
; Function Attrs: nounwind uwtable
define hidden range(i32 0, 11) i32 @uriNormalizeSyntaxExMmW(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @uriMemoryManagerIsComplete(ptr noundef nonnull %2) #6
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %2, %bb.b ], [ @defaultMemoryManager, %bb.a ]
  %i.c = tail call fastcc i32 @uriNormalizeSyntaxEngineW(ptr noundef %0, i32 noundef %1, ptr noundef null, ptr noundef nonnull %.0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.05 = phi i32 [ %i.c, %bb.c ], [ 10, %bb.b ]
  ret i32 %.05
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 4) i32 @uriNormalizeSyntaxW(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc range(i32 0, 4) i32 @uriNormalizeSyntaxEngineW(ptr noundef %0, i32 noundef -1, ptr noundef null, ptr noundef nonnull @defaultMemoryManager)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 11) i32 @uriMakeOwnerMmW(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !40
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @uriMemoryManagerIsComplete(ptr noundef nonnull %1) #6
  %.not = icmp eq i32 %i.c, 1
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %1, %bb.b ], [ @defaultMemoryManager, %bb.a ] ; 2 uses
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !70
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = call fastcc i32 @uriMakeOwnerEngineW(ptr noundef %0, ptr noundef %i.a, ptr noundef nonnull %.0)
  %.not12 = icmp eq i32 %i.h, 0
  br i1 %.not12, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = load i32, ptr %i.a, align 4, !tbaa !40
  tail call void @uriPreventLeakageW(ptr noundef nonnull %0, i32 noundef %i.i, ptr noundef nonnull %.0)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 1, ptr %i.e, align 4, !tbaa !70
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.g, %bb.f
  %.09 = phi i32 [ 10, %bb.b ], [ 2, %bb.c ], [ 0, %bb.g ], [ 3, %bb.f ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.09
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @uriMakeOwnerEngineW(ptr noundef nonnull %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !40     ; 4 uses
  %i.d = and i32 %i.c, 1
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !73     ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !74
  %i.i = icmp ugt ptr %i.h, %i.f
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @uriCopyRangeW(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %2) #6
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %uriMakeRangeOwnerW.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %1, align 4, !tbaa !40
  %i.m = or i32 %i.l, 1                           ; 2 uses
  store i32 %i.m, ptr %1, align 4, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.b, %bb.a
  %i.n = phi i32 [ %i.m, %bb.e ], [ %i.c, %bb.c ], [ %i.c, %bb.b ], [ %i.c, %bb.a ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = and i32 %i.n, 2
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !73   ; 2 uses
  %.not.i78 = icmp eq ptr %i.r, null
  br i1 %.not.i78, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !74
  %i.u = icmp ugt ptr %i.t, %i.r
  br i1 %i.u, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.v = tail call i32 @uriCopyRangeW(ptr noundef nonnull %i.o, ptr noundef nonnull %i.o, ptr noundef %2) #6
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %uriMakeRangeOwnerW.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load i32, ptr %1, align 4, !tbaa !40
  %i.y = or i32 %i.x, 2                           ; 2 uses
  store i32 %i.y, ptr %1, align 4, !tbaa !40
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.g, %bb.f
  %i.z = phi i32 [ %i.y, %bb.j ], [ %i.n, %bb.h ], [ %i.n, %bb.g ], [ %i.n, %bb.f ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.ab = and i32 %i.z, 16
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !73 ; 2 uses
  %.not.i81 = icmp eq ptr %i.ad, null
  br i1 %.not.i81, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !74
  %i.ag = icmp ugt ptr %i.af, %i.ad
  br i1 %i.ag, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ah = tail call i32 @uriCopyRangeW(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.aa, ptr noundef %2) #6
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %uriMakeRangeOwnerW.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = load i32, ptr %1, align 4, !tbaa !40
  %i.ak = or i32 %i.aj, 16                        ; 2 uses
  store i32 %i.ak, ptr %1, align 4, !tbaa !40
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.l, %bb.k
  %i.al = phi i32 [ %i.ak, %bb.o ], [ %i.z, %bb.m ], [ %i.z, %bb.l ], [ %i.z, %bb.k ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.an = and i32 %i.al, 32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !73 ; 2 uses
  %.not.i84 = icmp eq ptr %i.ap, null
  br i1 %.not.i84, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !74
  %i.as = icmp ugt ptr %i.ar, %i.ap
  br i1 %i.as, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.at = tail call i32 @uriCopyRangeW(ptr noundef nonnull %i.am, ptr noundef nonnull %i.am, ptr noundef %2) #6
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %uriMakeRangeOwnerW.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = load i32, ptr %1, align 4, !tbaa !40
  %i.aw = or i32 %i.av, 32                        ; 2 uses
  store i32 %i.aw, ptr %1, align 4, !tbaa !40
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r, %bb.q, %bb.p
  %i.ax = phi i32 [ %i.aw, %bb.t ], [ %i.al, %bb.r ], [ %i.al, %bb.q ], [ %i.al, %bb.p ] ; 4 uses
  %i.ay = and i32 %i.ax, 4
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !58 ; 3 uses
  %.not66 = icmp eq ptr %i.bb, null
  br i1 %.not66, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !74 ; 2 uses
  %i.be = icmp ugt ptr %i.bd, %i.bb
  %3 = insertelement <2 x ptr> poison, ptr %i.bb, i64 0
  %4 = insertelement <2 x ptr> %3, ptr %i.bd, i64 1
  br i1 %i.be, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.bf = tail call i32 @uriCopyRangeW(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.ba, ptr noundef %2) #6
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %uriMakeRangeOwnerW.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bh = load i32, ptr %1, align 4, !tbaa !40
  %i.bi = or i32 %i.bh, 4                         ; 2 uses
  store i32 %i.bi, ptr %1, align 4, !tbaa !40
  %5 = load <2 x ptr>, ptr %i.ba, align 8, !tbaa !71
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %i.bj = phi i32 [ %i.bi, %bb.y ], [ %i.ax, %bb.w ]
  %6 = phi <2 x ptr> [ %5, %bb.y ], [ %4, %bb.w ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x ptr> %6, ptr %i.bk, align 8, !tbaa !71
  br label %bb.ac

bb.aa:                                            ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !59
  %.not67 = icmp eq ptr %i.bm, null
  br i1 %.not67, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bn = tail call fastcc i32 @uriMakeRangeOwnerW(ptr noundef %1, i32 noundef 4, ptr noundef %i.bl, ptr noundef %2)
  %.not68 = icmp eq i32 %i.bn, 0
  br i1 %.not68, label %uriMakeRangeOwnerW.exit, label %._crit_edge119

._crit_edge119:                                   ; preds = %bb.ab
  %.pre120 = load i32, ptr %1, align 4, !tbaa !40
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge119, %bb.z, %bb.aa, %bb.u
  %i.bo = phi i32 [ %.pre120, %._crit_edge119 ], [ %i.bj, %bb.z ], [ %i.ax, %bb.aa ], [ %i.ax, %bb.u ] ; 2 uses
  %i.bp = and i32 %i.bo, 8
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %.preheader109, label %bb.am

.preheader109:                                    ; preds = %bb.ac
  %.not70111 = icmp eq ptr %i.b, null
  br i1 %.not70111, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader109, %bb.al
  %.060112 = phi ptr [ %i.cm, %bb.al ], [ %i.b, %.preheader109 ] ; 8 uses
  %i.br = load ptr, ptr %.060112, align 8, !tbaa !73 ; 2 uses
  %.not.i90 = icmp eq ptr %i.br, null
  br i1 %.not.i90, label %bb.al, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw i8, ptr %.060112, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !74
  %i.bu = icmp ugt ptr %i.bt, %i.br
  br i1 %i.bu, label %bb.ae, label %bb.al

bb.ae:                                            ; preds = %bb.ad
  %i.bv = tail call i32 @uriCopyRangeW(ptr noundef nonnull %.060112, ptr noundef nonnull %.060112, ptr noundef %2) #6
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %uriMakeRangeOwnerW.exit91, label %bb.al

uriMakeRangeOwnerW.exit91:                        ; preds = %bb.ae
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !61  ; 2 uses
  %.not73113 = icmp eq ptr %i.bx, %.060112
  br i1 %.not73113, label %.preheader, label %.lr.ph115

.lr.ph115:                                        ; preds = %uriMakeRangeOwnerW.exit91
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  br label %bb.af

.preheader:                                       ; preds = %bb.ai, %uriMakeRangeOwnerW.exit91
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.aj

bb.af:                                            ; preds = %.lr.ph115, %bb.ai
  %.059114 = phi ptr [ %i.bx, %.lr.ph115 ], [ %i.cb, %bb.ai ] ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.059114, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !63 ; 2 uses
  %i.cc = load ptr, ptr %.059114, align 8, !tbaa !65 ; 3 uses
  %.not75 = icmp eq ptr %i.cc, null
  br i1 %.not75, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cd = getelementptr inbounds nuw i8, ptr %.059114, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !64
  %i.cf = icmp ugt ptr %i.ce, %i.cc
  br i1 %i.cf, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cg = load ptr, ptr %i.by, align 8, !tbaa !16
  tail call void %i.cg(ptr noundef %2, ptr noundef nonnull %i.cc) #6
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !16
  tail call void %i.ch(ptr noundef %2, ptr noundef nonnull %.059114) #6
  %.not73 = icmp eq ptr %i.cb, %.060112
  br i1 %.not73, label %.preheader, label %bb.af, !llvm.loop !141

bb.aj:                                            ; preds = %.preheader, %bb.aj
  %.1116 = phi ptr [ %.060112, %.preheader ], [ %i.cj, %bb.aj ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.1116, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !63 ; 2 uses
  %i.ck = load ptr, ptr %i.bz, align 8, !tbaa !16
  tail call void %i.ck(ptr noundef %2, ptr noundef nonnull %.1116) #6
  %.not74 = icmp eq ptr %i.cj, null
  br i1 %.not74, label %bb.ak, label %bb.aj, !llvm.loop !142

bb.ak:                                            ; preds = %bb.aj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %uriMakeRangeOwnerW.exit

bb.al:                                            ; preds = %bb.ae, %bb.ad, %.lr.ph
  %i.cl = getelementptr inbounds nuw i8, ptr %.060112, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !63 ; 2 uses
  %.not70 = icmp eq ptr %i.cm, null
  br i1 %.not70, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !143

._crit_edge.loopexit:                             ; preds = %bb.al
  %.pre121 = load i32, ptr %1, align 4, !tbaa !40
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader109
  %i.cn = phi i32 [ %.pre121, %._crit_edge.loopexit ], [ %i.bo, %.preheader109 ]
  %i.co = or i32 %i.cn, 8
  store i32 %i.co, ptr %1, align 4, !tbaa !40
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge, %bb.ac
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !73 ; 2 uses
  %.not.i93 = icmp eq ptr %i.cq, null
  br i1 %.not.i93, label %uriMakeRangeOwnerW.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !74
  %i.ct = icmp ugt ptr %i.cs, %i.cq
  br i1 %i.ct, label %bb.ao, label %uriMakeRangeOwnerW.exit

bb.ao:                                            ; preds = %bb.an
  %i.cu = tail call i32 @uriCopyRangeW(ptr noundef nonnull %i.cp, ptr noundef nonnull %i.cp, ptr noundef %2) #6
  %i.cv = icmp ne i32 %i.cu, 0
  %spec.select = zext i1 %i.cv to i32
  br label %uriMakeRangeOwnerW.exit

uriMakeRangeOwnerW.exit:                          ; preds = %bb.ao, %bb.am, %bb.an, %bb.x, %bb.s, %bb.n, %bb.i, %bb.d, %bb.ab, %bb.ak
  %.0 = phi i32 [ 0, %bb.ak ], [ 0, %bb.ab ], [ 0, %bb.x ], [ 0, %bb.d ], [ 0, %bb.s ], [ 0, %bb.n ], [ 0, %bb.i ], [ %spec.select, %bb.ao ], [ 1, %bb.am ], [ 1, %bb.an ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 4) i32 @uriMakeOwnerW(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !40
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %uriMakeOwnerMmW.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !70
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %uriMakeOwnerMmW.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call fastcc i32 @uriMakeOwnerEngineW(ptr noundef %0, ptr noundef %i.a, ptr noundef nonnull @defaultMemoryManager)
  %.not12.i = icmp eq i32 %i.f, 0
  br i1 %.not12.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.a, align 4, !tbaa !40
  tail call void @uriPreventLeakageW(ptr noundef nonnull %0, i32 noundef %i.g, ptr noundef nonnull @defaultMemoryManager)
  br label %uriMakeOwnerMmW.exit

bb.e:                                             ; preds = %bb.c
  store i32 1, ptr %i.c, align 4, !tbaa !70
  br label %uriMakeOwnerMmW.exit

uriMakeOwnerMmW.exit:                             ; preds = %bb.a, %bb.b, %bb.d, %bb.e
  %.09.i = phi i32 [ 0, %bb.b ], [ 2, %bb.a ], [ 0, %bb.e ], [ 3, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.09.i
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @uriFixPercentEncodingInplaceA(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !43     ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = icmp ugt i64 %i.f, 2
  br i1 %i.g, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h, %bb.c
  %.039.lcssa.i = phi ptr [ %0, %bb.c ], [ %.241.i, %bb.h ] ; 8 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.c ], [ %i.au, %bb.h ] ; 9 uses
  %.039.lcssa.i19 = ptrtoaddr ptr %.039.lcssa.i to i64
  %i.h = icmp ult i64 %.0.lcssa.i, %i.f
  br i1 %i.h, label %iter.check, label %uriFixPercentEncodingEngineA.exit

iter.check:                                       ; preds = %.preheader.i
  %i.i = add i64 %.0.lcssa.i, %i.e
  %i.j = sub i64 %i.d, %i.i                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.j, 8
  br i1 %min.iters.check, label %.lr.ph49.i.preheader, label %vector.memcheck

end_hunk_1
