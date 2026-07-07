inline.NumInlined: 125
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ebGetMaxExpireTime:bb.a
  %i.v = shl nuw nsw i64 %i.u, 32
  %i.w = zext i32 %.023.val to i64
  %i.x = or disjoint i64 %i.v, %i.w
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @raxStart(ptr noundef nonnull %3, ptr noundef nonnull %0) #8
  %i.y = call i32 @raxSeek(ptr noundef nonnull %3, ptr noundef nonnull @.str.5, ptr noundef null, i64 noundef 0) #8 ; 0 uses
  %i.z = call i32 @raxNext(ptr noundef nonnull %3) #8 ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !36 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !35
  %i.ae = icmp eq i32 %i.ad, 1
  %i.af = load ptr, ptr %1, align 8, !tbaa !16
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !13
  %i.ah = call ptr %i.af(ptr noundef %i.ag) #8    ; 4 uses
  br i1 %i.ae, label %bb.e, label %._crit_edge34

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 6
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = and i16 %i.aj, 1
  %i.al = icmp eq i16 %i.ak, 0
  br i1 %i.al, label %.lr.ph33, label %._crit_edge34

.lr.ph33:                                         ; preds = %bb.e, %.lr.ph33
  %.031 = phi ptr [ %i.ap, %.lr.ph33 ], [ %i.ah, %bb.e ]
  %i.am = load ptr, ptr %1, align 8, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !27
  %i.ap = call ptr %i.am(ptr noundef %i.ao) #8    ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 6
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = and i16 %i.ar, 1
  %i.at = icmp eq i16 %i.as, 0
  br i1 %i.at, label %.lr.ph33, label %._crit_edge34, !llvm.loop !98

._crit_edge34:                                    ; preds = %.lr.ph33, %bb.d, %bb.e
  %.sink = phi ptr [ %i.ah, %bb.d ], [ %i.ah, %bb.e ], [ %i.ap, %.lr.ph33 ] ; 2 uses
  %.val = load i32, ptr %.sink, align 8, !tbaa !22
  %i.au = getelementptr i8, ptr %.sink, i64 4
  %.val26 = load i16, ptr %i.au, align 4, !tbaa !25
  %i.av = zext i16 %.val26 to i64
  %i.aw = shl nuw nsw i64 %i.av, 32
  %i.ax = zext i32 %.val to i64
  %i.ay = or disjoint i64 %i.aw, %i.ax
  call void @raxStop(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %._crit_edge34, %._crit_edge
  %.022 = phi i64 [ %i.ay, %._crit_edge34 ], [ %i.x, %._crit_edge ], [ 281474976710656, %bb.a ]
  ret i64 %.022
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ebGetTotalItems(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not6 = icmp eq i64 %i.b, 0
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !16
  %i.d = getelementptr i8, ptr %1, i64 16
  %.val = load i32, ptr %i.d, align 8, !tbaa !72
  %.not.i = icmp eq i32 %.val, 0
  %i.e = and i64 %i.a, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.0.i = select i1 %.not.i, ptr %i.f, ptr %0
  %i.g = tail call ptr %i.c(ptr noundef %.0.i) #8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  %i.i = load i16, ptr %i.h, align 2
  %i.j = lshr i16 %i.i, 3
  %i.k = and i16 %i.j, 31
  %i.l = zext nneg i16 %i.k to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !34
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i64 [ %i.n, %bb.d ], [ %i.l, %bb.c ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @ebPrint(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.FirstSegHdr, align 8        ; 6 uses
  %3 = alloca %struct.raxIterator, align 8        ; 9 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %_ebPrint.exit

bb.c:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not37.i = icmp eq i64 %i.b, 0
  br i1 %.not37.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val.i = load i32, ptr %i.c, align 8, !tbaa !72
  %.not.i.i = icmp eq i32 %.val.i, 0
  %i.d = and i64 %i.a, -2
  %i.e = inttoptr i64 %i.d to ptr
  %.0.i.i = select i1 %.not.i.i, ptr %i.e, ptr %0 ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !16
  %i.g = tail call ptr %i.f(ptr noundef %.0.i.i) #8, !inline_history !99
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store ptr %.0.i.i, ptr %2, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  %i.j = load i16, ptr %i.i, align 2
  %i.k = lshr i16 %i.j, 3
  %i.l = and i16 %i.k, 31
  %i.m = zext nneg i16 %i.l to i32
  store i32 %i.m, ptr %i.h, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 1, ptr %i.n, align 4, !tbaa !35
  call fastcc void @ebBucketPrint(i64 noundef 0, ptr noundef nonnull readonly %1, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %_ebPrint.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @raxStart(ptr noundef nonnull %3, ptr noundef nonnull %0) #8
  %i.o = call i32 @raxSeek(ptr noundef nonnull %3, ptr noundef nonnull @.str.3, ptr noundef null, i64 noundef 0) #8 ; 0 uses
  %i.p = call i32 @raxNext(ptr noundef nonnull %3) #8
  %.not3839.i = icmp eq i32 %i.p, 0
  br i1 %.not3839.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %.03441.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ax, %bb.f ]
  %i.s = phi <2 x i64> [ zeroinitializer, %.lr.ph.i ], [ %i.ba, %bb.f ]
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !36   ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !62   ; 6 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !33
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !33
  %i.z = zext i8 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.w, 16
  %i.ab = shl nuw nsw i64 %i.z, 8
  %i.ac = or disjoint i64 %i.ab, %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !33
  %i.af = zext i8 %i.ae to i64
  %i.ag = or disjoint i64 %i.ac, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !33
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !33
  %i.am = zext i8 %i.al to i64
  %i.an = shl nuw nsw i64 %i.ag, 24
  %i.ao = shl nuw nsw i64 %i.aj, 16
  %i.ap = shl nuw nsw i64 %i.am, 8
  %i.aq = or disjoint i64 %i.ap, %i.ao
  %i.ar = or disjoint i64 %i.aq, %i.an
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 5
  %i.at = load i8, ptr %i.as, align 1, !tbaa !33
  %i.au = zext i8 %i.at to i64
  %i.av = or disjoint i64 %i.ar, %i.au
  call fastcc void @ebBucketPrint(i64 noundef %i.av, ptr noundef readonly %1, ptr noundef %i.t)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ax = add i64 %.03441.i, 1                    ; 2 uses
  %i.ay = load <2 x i32>, ptr %i.aw, align 8, !tbaa !9
  %i.az = zext <2 x i32> %i.ay to <2 x i64>
  %i.ba = add <2 x i64> %i.s, %i.az               ; 2 uses
  %i.bb = call i32 @raxNext(ptr noundef nonnull %3) #8
  %.not38.i = icmp eq i32 %i.bb, 0
  br i1 %.not38.i, label %._crit_edge.i, label %bb.f, !llvm.loop !100

._crit_edge.i:                                    ; preds = %bb.f, %bb.e
  %.034.lcssa.i = phi i64 [ 0, %bb.e ], [ %i.ax, %bb.f ] ; 2 uses
  %i.bc = phi <2 x i64> [ zeroinitializer, %bb.e ], [ %i.ba, %bb.f ] ; 3 uses
  %i.bd = extractelement <2 x i64> %i.bc, i64 0
  %i.be = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i64 noundef %i.bd) ; 0 uses
  %i.bf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i64 noundef %.034.lcssa.i) ; 0 uses
  %i.bg = extractelement <2 x i64> %i.bc, i64 1
  %i.bh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i64 noundef %i.bg) ; 0 uses
  %i.bi = uitofp <2 x i64> %i.bc to <2 x double>  ; 3 uses
  %i.bj = uitofp i64 %.034.lcssa.i to double      ; 2 uses
  %i.bk = extractelement <2 x double> %i.bi, i64 1
  %4 = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %5 = insertelement <2 x double> %i.bi, double %i.bj, i64 0
  %6 = fdiv <2 x double> %4, %5                   ; 2 uses
  %i.bl = extractelement <2 x double> %6, i64 0
  %7 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %i.bl) ; 0 uses
  %8 = extractelement <2 x double> %6, i64 1
  %i.bm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %8) ; 0 uses
  %i.bn = fdiv double %i.bk, %i.bj
  %i.bo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %i.bn) ; 0 uses
  call void @raxStop(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %_ebPrint.exit

_ebPrint.exit:                                    ; preds = %bb.b, %bb.d, %._crit_edge.i
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ebValidate(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.raxIterator, align 8        ; 8 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %ebValidateList.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not7 = icmp eq i64 %i.b, 0
  br i1 %.not7, label %bb.ab, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val = load i32, ptr %i.c, align 8, !tbaa !72
  %.not.i = icmp eq i32 %.val, 0
  %i.d = and i64 %i.a, -2
  %i.e = inttoptr i64 %i.d to ptr
  %.0.i = select i1 %.not.i, ptr %i.e, ptr %0     ; 4 uses
  %i.f = icmp eq ptr %.0.i, null
  br i1 %i.f, label %ebValidateList.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %1, align 8, !tbaa !16
  %i.h = tail call ptr %i.g(ptr noundef nonnull %.0.i) #8, !inline_history !101
  %i.i = load ptr, ptr %1, align 8, !tbaa !16
  %i.j = tail call ptr %i.i(ptr noundef nonnull %.0.i) #8, !inline_history !101 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 6 ; 3 uses
  %i.l = load i16, ptr %i.k, align 2
  %i.m = and i16 %i.l, 248
  %.not45.i = icmp eq i16 %i.m, 0
  br i1 %.not45.i, label %ebValidateList.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.n = load ptr, ptr %1, align 8, !tbaa !16
  %i.o = tail call ptr %i.n(ptr noundef nonnull %.0.i) #8, !inline_history !101 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 6
  %i.q = load i16, ptr %i.p, align 2              ; 6 uses
  %i.r = and i16 %i.q, 256
  %i.s = icmp eq i16 %i.r, 0
  br i1 %i.s, label %bb.e, label %.loopexit47.i, !prof !63

bb.e:                                             ; preds = %.lr.ph.preheader.i
  %i.t = lshr i16 %i.q, 3
  %i.u = and i16 %i.t, 31
  %i.v = add nsw i16 %i.u, -1
  %spec.select.peel.i = icmp ult i16 %i.v, 16
  br i1 %spec.select.peel.i, label %bb.f, label %bb.o, !prof !63

bb.f:                                             ; preds = %bb.e
  %i.w = and i16 %i.q, 2
  %.not36.peel.i = icmp eq i16 %i.w, 0
  br i1 %.not36.peel.i, label %bb.p, label %bb.g, !prof !76

bb.g:                                             ; preds = %bb.f
  %i.x = load i16, ptr %i.k, align 2
  %i.y = lshr i16 %i.x, 3
  %i.z = and i16 %i.y, 31                         ; 2 uses
  %i.aa = icmp eq i16 %i.z, 1
  %i.ab = and i16 %i.q, 1
  %.not38.peel.i = icmp eq i16 %i.ab, 0           ; 2 uses
  br i1 %i.aa, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not38.peel.i, label %bb.i, label %.loopexit53.i, !prof !63

bb.i:                                             ; preds = %bb.h
  %i.ac = and i16 %i.q, 4
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %.loopexit54.i, !prof !63

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !27 ; 2 uses
  %.not37.peel.i = icmp eq ptr %i.af, null
  br i1 %.not37.peel.i, label %.loopexit55.i, label %bb.n, !prof !76

bb.k:                                             ; preds = %bb.g
  br i1 %.not38.peel.i, label %.loopexit56.i, label %bb.l, !prof !76

bb.l:                                             ; preds = %bb.k
  %i.ag = and i16 %i.q, 4
  %.not39.peel.i = icmp eq i16 %i.ag, 0
  br i1 %.not39.peel.i, label %.loopexit57.i, label %bb.m, !prof !76

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !27
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %ebValidateList.exit, label %.loopexit58.i, !prof !63

bb.n:                                             ; preds = %bb.j
  %.not68.i = icmp eq i16 %i.z, 0
  br i1 %.not68.i, label %ebValidateList.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %bb.aa
  %.044.i = phi i32 [ %i.bt, %bb.aa ], [ 1, %bb.n ] ; 2 uses
  %.02943.i = phi ptr [ %.1.i, %bb.aa ], [ %i.o, %bb.n ] ; 3 uses
  %.03042.i = phi ptr [ %.131.i, %bb.aa ], [ %i.af, %bb.n ] ; 2 uses
  %i.ak = load ptr, ptr %1, align 8, !tbaa !16
  %i.al = tail call ptr %i.ak(ptr noundef %.03042.i) #8, !inline_history !101 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 6
  %i.an = load i16, ptr %i.am, align 2            ; 6 uses
  %i.ao = and i16 %i.an, 256
  %i.ap = icmp eq i16 %i.ao, 0
  br i1 %i.ap, label %bb.q, label %.loopexit47.i, !prof !63

.loopexit47.i:                                    ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  tail call void @_serverAssert(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.2, i32 noundef 739) #8
  tail call void @abort() #10
  unreachable

bb.o:                                             ; preds = %bb.e
  tail call void @_serverAssert(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2, i32 noundef 742) #8
  tail call void @abort() #10
  unreachable

bb.p:                                             ; preds = %bb.f
  tail call void @_serverAssert(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, i32 noundef 743) #8
  tail call void @abort() #10
  unreachable

bb.q:                                             ; preds = %.lr.ph.i
  %.029.val.i = load i32, ptr %.02943.i, align 8, !tbaa !22
  %i.aq = getelementptr i8, ptr %.02943.i, i64 4
  %.029.val41.i = load i16, ptr %i.aq, align 4, !tbaa !25
  %i.ar = zext i16 %.029.val41.i to i64
  %i.as = shl nuw nsw i64 %i.ar, 32
  %i.at = zext i32 %.029.val.i to i64
  %i.au = or disjoint i64 %i.as, %i.at
  %.val.i = load i32, ptr %i.al, align 8, !tbaa !22
  %i.av = getelementptr i8, ptr %i.al, i64 4
  %.val40.i = load i16, ptr %i.av, align 4, !tbaa !25
  %i.aw = zext i16 %.val40.i to i64
  %i.ax = shl nuw nsw i64 %i.aw, 32
  %i.ay = zext i32 %.val.i to i64
  %i.az = or disjoint i64 %i.ax, %i.ay
  %.not.i8 = icmp samesign ugt i64 %i.au, %i.az
  br i1 %.not.i8, label %.loopexit48.i, label %bb.r, !prof !76

.loopexit48.i:                                    ; preds = %bb.q
  tail call void @_serverAssert(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.2, i32 noundef 746) #8
  tail call void @abort() #10
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.ba = and i16 %i.an, 248
  %i.bb = icmp eq i16 %i.ba, 0
  br i1 %i.bb, label %bb.s, label %.loopexit49.i, !prof !63

.loopexit49.i:                                    ; preds = %bb.r
  tail call void @_serverAssert(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.2, i32 noundef 747) #8
  tail call void @abort() #10
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.bc = and i16 %i.an, 2
  %i.bd = icmp eq i16 %i.bc, 0
  br i1 %i.bd, label %bb.t, label %.loopexit50.i, !prof !63

.loopexit50.i:                                    ; preds = %bb.s
  tail call void @_serverAssert(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.2, i32 noundef 748) #8
  tail call void @abort() #10
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.be = load i16, ptr %i.k, align 2
  %i.bf = lshr i16 %i.be, 3
  %i.bg = and i16 %i.bf, 31
  %i.bh = zext nneg i16 %i.bg to i32              ; 2 uses
  %i.bi = add nsw i32 %i.bh, -1
  %i.bj = icmp eq i32 %.044.i, %i.bi
  %i.bk = and i16 %i.an, 1
  %.not38.i = icmp eq i16 %i.bk, 0                ; 2 uses
  br i1 %i.bj, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  br i1 %.not38.i, label %.loopexit56.i, label %bb.v, !prof !76

.loopexit56.i:                                    ; preds = %bb.u, %bb.k
  tail call void @_serverAssert(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.2, i32 noundef 753) #8
  tail call void @abort() #10
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.bl = and i16 %i.an, 4
  %.not39.i = icmp eq i16 %i.bl, 0
  br i1 %.not39.i, label %.loopexit57.i, label %bb.w, !prof !76

.loopexit57.i:                                    ; preds = %bb.v, %bb.l
end_hunk_0
