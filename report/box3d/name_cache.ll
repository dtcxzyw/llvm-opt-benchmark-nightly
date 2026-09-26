Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/name_cache?download=true
inline.NumInlined: 44
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@b3FindName:bb.a
  br i1 %.not27.i, label %b3NameMap_get.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = zext nneg i16 %i.aa to i64              ; 2 uses
  %i.ac = add nuw nsw i64 %i.ab, 1
  %i.ad = mul nuw nsw i64 %i.ac, %i.ab
  %i.ae = lshr i64 %i.ad, 1
  %i.af = add i64 %i.ae, %i.k
  %i.ag = and i64 %i.af, %i.j                     ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.ag
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2, !tbaa !30, !noalias !54
  br label %bb.c

b3NameMap_get.exit:                               ; preds = %bb.d
  %i.ah = add nuw nsw i64 %i.j, 1
  %i.ai = icmp eq i64 %.0.i, %i.ah
  br i1 %i.ai, label %b3NameMap_get.exit.thread, label %bb.g

bb.g:                                             ; preds = %b3NameMap_get.exit
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.0.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !34
  %i.am = load ptr, ptr %0, align 8, !tbaa !22
  %i.an = sext i32 %i.al to i64
  %i.ao = getelementptr inbounds [16 x i8], ptr %i.am, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !28
  br label %b3NameMap_get.exit.thread

b3NameMap_get.exit.thread:                        ; preds = %bb.e, %bb.a, %b3NameMap_get.exit, %bb.g
  %.0 = phi ptr [ %i.aq, %bb.g ], [ null, %b3NameMap_get.exit ], [ null, %bb.a ], [ null, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden void @b3LoadName(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %4 = alloca %struct.b3NameMap_itr, align 8      ; 5 uses
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %2, align 1, !tbaa !9
  %i.d = icmp eq i8 %i.c, 0
  %i.e = icmp eq i32 %1, 0
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %3, 1
  %i.g = sext i32 %i.f to i64
  tail call void @b3Free(ptr noundef nonnull %2, i64 noundef %i.g) #12
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20   ; 5 uses
  %i.j = zext i32 %1 to i64                       ; 2 uses
  %i.k = lshr i64 %i.j, 23
  %i.l = xor i64 %i.k, %i.j
  %i.m = mul i64 %i.l, 2388976653695081527        ; 3 uses
  %i.n = lshr i64 %i.m, 47
  %i.o = xor i64 %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !24, !noalias !59 ; 3 uses
  %i.r = and i64 %i.q, %i.o                       ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16, !noalias !59 ; 2 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.r
  %i.v = load i16, ptr %i.u, align 2, !tbaa !30, !noalias !59 ; 2 uses
  %i.w = and i16 %i.v, 2048
  %.not.i = icmp eq i16 %i.w, 0
  br i1 %.not.i, label %b3NameMap_get.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = lshr i64 %i.m, 48
  %i.y = trunc nuw i64 %i.x to i16
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %i.aa = phi i16 [ %i.v, %bb.e ], [ %.pre.i, %bb.i ] ; 2 uses
  %.0.i = phi i64 [ %i.r, %bb.e ], [ %i.an, %bb.i ] ; 2 uses
  %i.ab = xor i16 %i.aa, %i.y
  %i.ac = icmp ult i16 %i.ab, 4096
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !25, !noalias !59
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.0.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !32, !noalias !59
  %i.ag = icmp eq i32 %i.af, %1
  br i1 %i.ag, label %b3NameMap_get.exit, label %bb.h, !prof !33

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ah = and i16 %i.aa, 2047                     ; 2 uses
  %.not27.i = icmp eq i16 %i.ah, 2047
  br i1 %.not27.i, label %b3NameMap_get.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = zext nneg i16 %i.ah to i64              ; 2 uses
  %i.aj = add nuw nsw i64 %i.ai, 1
  %i.ak = mul nuw nsw i64 %i.aj, %i.ai
  %i.al = lshr i64 %i.ak, 1
  %i.am = add i64 %i.al, %i.r
  %i.an = and i64 %i.am, %i.q                     ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.an
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2, !tbaa !30, !noalias !59
  br label %bb.f

b3NameMap_get.exit:                               ; preds = %bb.g
  %i.ao = add nuw nsw i64 %i.q, 1
  %i.ap = icmp eq i64 %.0.i, %i.ao
  br i1 %i.ap, label %b3NameMap_get.exit.thread, label %bb.j

bb.j:                                             ; preds = %b3NameMap_get.exit
  %i.aq = add nsw i32 %3, 1
  %i.ar = sext i32 %i.aq to i64
  tail call void @b3Free(ptr noundef nonnull %2, i64 noundef %i.ar) #12
  br label %bb.o

b3NameMap_get.exit.thread:                        ; preds = %bb.h, %bb.d, %b3NameMap_get.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !21 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !23 ; 4 uses
  %.not = icmp slt i32 %i.at, %i.av
  %.pre = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %b3NameMap_get.exit.thread
  %i.aw = shl i32 %i.av, 4
  %i.ax = icmp eq i32 %i.av, 0
  %i.ay = shl nsw i32 %i.av, 1
  %spec.select = select i1 %i.ax, i32 8, i32 %i.ay ; 2 uses
  %i.az = shl i32 %spec.select, 4
  %i.ba = tail call ptr @b3GrowAlloc(ptr noundef %.pre, i32 noundef %i.aw, i32 noundef %i.az) #12 ; 2 uses
  store ptr %i.ba, ptr %0, align 8, !tbaa !22
  store i32 %spec.select, ptr %i.au, align 4, !tbaa !23
  %.pre40 = load i32, ptr %i.as, align 8, !tbaa !21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %b3NameMap_get.exit.thread
  %i.bb = phi i32 [ %.pre40, %bb.k ], [ %i.at, %b3NameMap_get.exit.thread ] ; 2 uses
  %i.bc = phi ptr [ %i.ba, %bb.k ], [ %.pre, %b3NameMap_get.exit.thread ]
  %i.bd = add nsw i32 %i.bb, 1
  store i32 %i.bd, ptr %i.as, align 8, !tbaa !21
  %i.be = sext i32 %i.bb to i64
  %i.bf = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.be ; 3 uses
  store i32 %1, ptr %i.bf, align 8, !tbaa !35
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i32 %3, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !35
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.at, ptr %i.a, align 4, !tbaa !35, !noalias !60
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  call fastcc void @b3NameMap_insert_raw(ptr dead_on_unwind noalias nonnull writable align 8 %4, ptr noundef %i.i, i32 noundef %1, ptr noundef nonnull %i.a, i1 noundef zeroext false, i1 noundef zeroext true)
  %.val.i = load ptr, ptr %i.bg, align 8, !tbaa !38, !alias.scope !60
  %.val4.i = load ptr, ptr %i.bh, align 8, !tbaa !39, !alias.scope !60
  %i.bi = icmp eq ptr %.val.i, %.val4.i
  br i1 %i.bi, label %bb.n, label %b3NameMap_insert.exit, !prof !40

bb.n:                                             ; preds = %bb.m
  %i.bj = load i64, ptr %i.p, align 8, !tbaa !24, !noalias !60 ; 2 uses
  %.not.i34 = icmp eq i64 %i.bj, 0
  %i.bk = shl i64 %i.bj, 1
  %i.bl = add i64 %i.bk, 2
  %i.bm = select i1 %.not.i34, i64 8, i64 %i.bl
  %i.bn = tail call fastcc zeroext i1 @b3NameMap_rehash(ptr noundef nonnull %i.i, i64 noundef %i.bm), !noalias !60
  br i1 %i.bn, label %bb.m, label %b3NameMap_insert.exit, !prof !33

b3NameMap_insert.exit:                            ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %b3NameMap_insert.exit, %bb.a, %bb.c
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @b3NameMap_insert_raw(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #7 {
bb.a:
  %i.a = zext i32 %2 to i64                       ; 2 uses
  %i.b = lshr i64 %i.a, 23
  %i.c = xor i64 %i.b, %i.a
  %i.d = mul i64 %i.c, 2388976653695081527        ; 3 uses
  %i.e = lshr i64 %i.d, 47
  %i.f = xor i64 %i.e, %i.d
  %i.g = lshr i64 %i.d, 48
  %i.h = trunc nuw i64 %i.g to i16                ; 2 uses
  %i.i = and i16 %i.h, -4096                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !24   ; 19 uses
  %i.l = and i64 %i.k, %i.f                       ; 16 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16   ; 19 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.l
  %i.p = load i16, ptr %i.o, align 2, !tbaa !30   ; 5 uses
  %i.q = and i16 %i.p, 2048
  %.not = icmp eq i16 %i.q, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.r = load i64, ptr %1, align 8, !tbaa !41
  %i.s = add i64 %i.r, 1                          ; 2 uses
  %i.t = uitofp i64 %i.s to double
  %i.u = icmp ne i64 %i.k, 0
  %i.v = zext i1 %i.u to i64
  %i.w = add i64 %i.k, %i.v
  %i.x = uitofp i64 %i.w to double
  %i.y = fmul nnan double %i.x, 9.000000e-01
  %i.z = fcmp olt double %i.y, %i.t
  br i1 %i.z, label %b3NameMap_evict.exit, label %bb.c, !prof !40

bb.c:                                             ; preds = %bb.b
  %.not84 = icmp eq i16 %i.p, 0
  br i1 %.not84, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %7 = load ptr, ptr %6, align 8, !tbaa !25       ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.l ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !32
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 23
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = mul i64 %i.ae, 2388976653695081527      ; 2 uses
  %i.ag = lshr i64 %i.af, 47
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = and i64 %i.ah, %i.k                     ; 8 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.034.i = phi i64 [ %i.ai, %bb.d ], [ %i.ar, %bb.e ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %.034.i
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !30 ; 2 uses
  %i.al = and i16 %i.ak, 2047
  %i.am = zext nneg i16 %i.al to i64              ; 2 uses
  %i.an = add nuw nsw i64 %i.am, 1
  %i.ao = mul nuw nsw i64 %i.an, %i.am
  %i.ap = lshr i64 %i.ao, 1
  %i.aq = add i64 %i.ap, %i.ai
  %i.ar = and i64 %i.aq, %i.k                     ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.l
  br i1 %i.as, label %bb.f, label %bb.e

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %.034.i
  %i.au = and i16 %i.ak, -2048
  %i.av = and i16 %i.p, 2047
  %i.aw = or disjoint i16 %i.au, %i.av
  store i16 %i.aw, ptr %i.at, align 2, !tbaa !30
  %i.ax = add i64 %i.ai, 1
  %i.ay = and i64 %i.ax, %i.k                     ; 2 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !30
  %i.bb = icmp eq i16 %i.ba, 0
  br i1 %i.bb, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.f, %.lr.ph.i.i.1
  %indvars.iv.next.i164 = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i.i.1 ], [ 2, %bb.f ] ; 5 uses
  %.011.i.i163 = phi i64 [ %i.bi, %.lr.ph.i.i.1 ], [ 1, %bb.f ]
  %i.bc = add i64 %.011.i.i163, %indvars.iv.next.i164 ; 2 uses
  %i.bd = add i64 %i.bc, %i.ai
  %i.be = and i64 %i.bd, %i.k                     ; 2 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !30
  %i.bh = icmp eq i16 %i.bg, 0
  br i1 %i.bh, label %.loopexit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader
  %.not.i.i = icmp eq i64 %indvars.iv.next.i164, 2046
  br i1 %.not.i.i, label %b3NameMap_evict.exit, label %.lr.ph.i.i.preheader.1, !prof !65

.lr.ph.i.i.preheader.1:                           ; preds = %.lr.ph.i.i
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.next.i164, 1 ; 2 uses
  %i.bi = add i64 %i.bc, %indvars.iv.next.i       ; 2 uses
  %i.bj = add i64 %i.bi, %i.ai
  %i.bk = and i64 %i.bj, %i.k                     ; 2 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !30
  %i.bn = icmp eq i16 %i.bm, 0
  br i1 %i.bn, label %.loopexit.loopexit.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i.preheader.1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.next.i164, 2
  br label %.lr.ph.i.i.preheader

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i.i.preheader.1, %.lr.ph.i.i.preheader
  %indvars.iv.next.i164.lcssa = phi i64 [ %indvars.iv.next.i164, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i, %.lr.ph.i.i.preheader.1 ]
  %.lcssa165 = phi i64 [ %i.be, %.lr.ph.i.i.preheader ], [ %i.bk, %.lr.ph.i.i.preheader.1 ]
  %i.bo = trunc nuw nsw i64 %indvars.iv.next.i164.lcssa to i16
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.f
  %.1.ph.i = phi i64 [ %i.ay, %bb.f ], [ %.lcssa165, %.loopexit.loopexit.i ] ; 2 uses
  %.0.ph.i = phi i16 [ 1, %bb.f ], [ %i.bo, %.loopexit.loopexit.i ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.ai
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !30
  %i.br = and i16 %i.bq, 2047                     ; 2 uses
  %.not16.i.i = icmp ugt i16 %i.br, %.0.ph.i
  br i1 %.not16.i.i, label %b3NameMap_evict.exit.thread, label %.lr.ph.i37.i

.lr.ph.i37.i:                                     ; preds = %.loopexit.i, %.lr.ph.i37.i
  %i.bs = phi i16 [ %i.cb, %.lr.ph.i37.i ], [ %i.br, %.loopexit.i ]
  %i.bt = zext nneg i16 %i.bs to i64              ; 2 uses
  %i.bu = add nuw nsw i64 %i.bt, 1
  %i.bv = mul nuw nsw i64 %i.bu, %i.bt
  %i.bw = lshr i64 %i.bv, 1
  %i.bx = add i64 %i.bw, %i.ai
  %i.by = and i64 %i.bx, %i.k                     ; 2 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !30
  %i.cb = and i16 %i.ca, 2047                     ; 2 uses
  %.not.i38.i = icmp ugt i16 %i.cb, %.0.ph.i
  br i1 %.not.i38.i, label %b3NameMap_evict.exit.thread, label %.lr.ph.i37.i

b3NameMap_evict.exit.thread:                      ; preds = %.lr.ph.i37.i, %.loopexit.i
  %.010.lcssa.i.i = phi i64 [ %i.ai, %.loopexit.i ], [ %i.by, %.lr.ph.i37.i ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.1.ph.i
  %i.cd = load i64, ptr %i.aa, align 4
  store i64 %i.cd, ptr %i.cc, align 4
  %8 = load ptr, ptr %i.m, align 8, !tbaa !16     ; 4 uses
  %9 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.l
  %i.ce = load i16, ptr %9, align 2, !tbaa !30
  %i.cf = and i16 %i.ce, -4096
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %.010.lcssa.i.i ; 3 uses
  %10 = load i16, ptr %i.cg, align 2, !tbaa !30
  %11 = and i16 %10, 2047
  %i.ch = or disjoint i16 %11, %i.cf
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %.1.ph.i
  store i16 %i.ch, ptr %i.ci, align 2, !tbaa !30
  %i.cj = load i16, ptr %i.cg, align 2, !tbaa !30
  %i.ck = and i16 %i.cj, -2048
  %i.cl = or i16 %i.ck, %.0.ph.i
  store i16 %i.cl, ptr %i.cg, align 2, !tbaa !30
  %.pre128 = load i64, ptr %1, align 8, !tbaa !41
  %.pre129 = load i64, ptr %i.j, align 8, !tbaa !24
  %.pre130 = add i64 %.pre128, 1
  br label %bb.g

b3NameMap_evict.exit:                             ; preds = %.lr.ph.i.i, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !alias.scope !66
  br label %bb.p

bb.g:                                             ; preds = %b3NameMap_evict.exit.thread, %bb.c
  %.pre-phi = phi i64 [ %.pre130, %b3NameMap_evict.exit.thread ], [ %i.s, %bb.c ]
  %12 = phi i64 [ %.pre129, %b3NameMap_evict.exit.thread ], [ %i.k, %bb.c ]
  %13 = phi ptr [ %8, %b3NameMap_evict.exit.thread ], [ %i.n, %bb.c ] ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %15 = load ptr, ptr %14, align 8, !tbaa !25
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %i.l ; 3 uses
  store i32 %2, ptr %i.cm, align 4, !tbaa !32
  %i.cn = load i32, ptr %3, align 4, !tbaa !35
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !34
  %i.cp = or i16 %i.h, 4095
  %16 = getelementptr inbounds nuw [2 x i8], ptr %13, i64 %i.l ; 2 uses
  store i16 %i.cp, ptr %16, align 2, !tbaa !30
  store i64 %.pre-phi, ptr %1, align 8, !tbaa !41
  store ptr %i.cm, ptr %0, align 8, !tbaa !67
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %16, ptr %i.cq, align 8, !tbaa !38
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %13, i64 %12
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !39
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.l, ptr %i.cu, align 8, !tbaa !68
  br label %bb.p

bb.h:                                             ; preds = %bb.a
  br i1 %4, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %bb.n
  %i.cw = phi i16 [ %.pre, %bb.n ], [ %i.p, %.preheader ] ; 2 uses
  %.0 = phi i64 [ %i.dt, %bb.n ], [ %i.l, %.preheader ] ; 3 uses
  %i.cx = and i16 %i.cw, -4096
  %i.cy = icmp eq i16 %i.cx, %i.i
  br i1 %i.cy, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !25 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.0
  %i.db = load i32, ptr %i.da, align 4, !tbaa !32
  %i.dc = icmp eq i32 %i.db, %2
  br i1 %i.dc, label %bb.k, label %bb.m, !prof !33

bb.k:                                             ; preds = %bb.j
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %.0
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.0 ; 2 uses
  br i1 %5, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.df = load i32, ptr %3, align 4, !tbaa !35
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !34
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.k
  store ptr %i.de, ptr %0, align 8, !tbaa !67
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dd, ptr %i.dh, align 8, !tbaa !38
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.k
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 2
  store ptr %i.dk, ptr %i.di, align 8, !tbaa !39
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.l, ptr %i.dl, align 8, !tbaa !68
  br label %bb.p

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.dm = and i16 %i.cw, 2047                     ; 2 uses
  %i.dn = icmp eq i16 %i.dm, 2047
  br i1 %i.dn, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.do = zext nneg i16 %i.dm to i64              ; 2 uses
  %i.dp = add nuw nsw i64 %i.do, 1
  %i.dq = mul nuw nsw i64 %i.dp, %i.do
  %i.dr = lshr i64 %i.dq, 1
  %i.ds = add i64 %i.dr, %i.l
  %i.dt = and i64 %i.ds, %i.k                     ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.dt
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !30
  br label %bb.i

.thread:                                          ; preds = %bb.m, %bb.h
  %i.du = load i64, ptr %1, align 8, !tbaa !41
  %i.dv = add i64 %i.du, 1                        ; 2 uses
  %i.dw = uitofp i64 %i.dv to double
  %i.dx = icmp ne i64 %i.k, 0
  %i.dy = zext i1 %i.dx to i64
  %i.dz = add i64 %i.k, %i.dy
  %i.ea = uitofp i64 %i.dz to double
  %i.eb = fmul nnan double %i.ea, 9.000000e-01
  %i.ec = fcmp olt double %i.eb, %i.dw
  br i1 %i.ec, label %.critedge86, label %bb.o, !prof !40

bb.o:                                             ; preds = %.thread
  %i.ed = add i64 %i.l, 1
  %i.ee = and i64 %i.ed, %i.k                     ; 2 uses
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.ee
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !30
  %i.eh = icmp eq i16 %i.eg, 0
  br i1 %i.eh, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.o, %.lr.ph.i.1
  %indvars.iv.next162 = phi i64 [ %indvars.iv.next.1, %.lr.ph.i.1 ], [ 2, %bb.o ] ; 5 uses
  %.011.i161 = phi i64 [ %i.eo, %.lr.ph.i.1 ], [ 1, %bb.o ]
  %i.ei = add i64 %.011.i161, %indvars.iv.next162 ; 2 uses
  %i.ej = add i64 %i.ei, %i.l
  %i.ek = and i64 %i.ej, %i.k                     ; 2 uses
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.ek
  %i.em = load i16, ptr %i.el, align 2, !tbaa !30
  %i.en = icmp eq i16 %i.em, 0
  br i1 %i.en, label %.loopexit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader
  %.not.i = icmp eq i64 %indvars.iv.next162, 2046
  br i1 %.not.i, label %.critedge86, label %.lr.ph.i.preheader.1, !prof !65

.lr.ph.i.preheader.1:                             ; preds = %.lr.ph.i
  %indvars.iv.next = or disjoint i64 %indvars.iv.next162, 1 ; 2 uses
  %i.eo = add i64 %i.ei, %indvars.iv.next         ; 2 uses
  %i.ep = add i64 %i.eo, %i.l
  %i.eq = and i64 %i.ep, %i.k                     ; 2 uses
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.eq
  %i.es = load i16, ptr %i.er, align 2, !tbaa !30
  %i.et = icmp eq i16 %i.es, 0
  br i1 %i.et, label %.loopexit.loopexit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.preheader.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next162, 2
  br label %.lr.ph.i.preheader

.critedge86:                                      ; preds = %.lr.ph.i, %.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !alias.scope !69
  br label %bb.p

.loopexit.loopexit:                               ; preds = %.lr.ph.i.preheader.1, %.lr.ph.i.preheader
  %indvars.iv.next162.lcssa = phi i64 [ %indvars.iv.next162, %.lr.ph.i.preheader ], [ %indvars.iv.next, %.lr.ph.i.preheader.1 ]
  %.lcssa171 = phi i64 [ %i.ek, %.lr.ph.i.preheader ], [ %i.eq, %.lr.ph.i.preheader.1 ]
  %i.eu = trunc nuw nsw i64 %indvars.iv.next162.lcssa to i16
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.o
  %.196.ph = phi i64 [ %i.ee, %bb.o ], [ %.lcssa171, %.loopexit.loopexit ] ; 2 uses
  %.094.ph = phi i16 [ 1, %bb.o ], [ %i.eu, %.loopexit.loopexit ] ; 3 uses
  %i.ev = and i16 %i.p, 2047                      ; 3 uses
  %.not16.i = icmp ugt i16 %i.ev, %.094.ph
  br i1 %.not16.i, label %b3NameMap_find_insert_location_in_chain.exit, label %.lr.ph.i88

.lr.ph.i88:                                       ; preds = %.loopexit, %.lr.ph.i88
  %i.ew = phi i16 [ %i.ff, %.lr.ph.i88 ], [ %i.ev, %.loopexit ]
  %i.ex = zext nneg i16 %i.ew to i64              ; 2 uses
  %i.ey = add nuw nsw i64 %i.ex, 1
  %i.ez = mul nuw nsw i64 %i.ey, %i.ex
  %i.fa = lshr i64 %i.ez, 1
  %i.fb = add i64 %i.fa, %i.l
  %i.fc = and i64 %i.fb, %i.k                     ; 2 uses
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.fc
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !30
  %i.ff = and i16 %i.fe, 2047                     ; 3 uses
  %.not.i89 = icmp ugt i16 %i.ff, %.094.ph
  br i1 %.not.i89, label %b3NameMap_find_insert_location_in_chain.exit, label %.lr.ph.i88

b3NameMap_find_insert_location_in_chain.exit:     ; preds = %.lr.ph.i88, %.loopexit
  %.pre-phi131 = phi i16 [ %i.ev, %.loopexit ], [ %i.ff, %.lr.ph.i88 ]
  %.010.lcssa.i = phi i64 [ %i.l, %.loopexit ], [ %i.fc, %.lr.ph.i88 ]
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !25
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.196.ph ; 3 uses
  store i32 %2, ptr %i.fi, align 4, !tbaa !32
  %i.fj = load i32, ptr %3, align 4, !tbaa !35
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !34
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %.010.lcssa.i ; 2 uses
  %i.fm = or disjoint i16 %.pre-phi131, %i.i
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %.196.ph ; 2 uses
  store i16 %i.fm, ptr %i.fn, align 2, !tbaa !30
  %i.fo = load i16, ptr %i.fl, align 2, !tbaa !30
  %i.fp = and i16 %i.fo, -2048
  %i.fq = or i16 %i.fp, %.094.ph
  store i16 %i.fq, ptr %i.fl, align 2, !tbaa !30
  store i64 %i.dv, ptr %1, align 8, !tbaa !41
  store ptr %i.fi, ptr %0, align 8, !tbaa !67
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fn, ptr %i.fr, align 8, !tbaa !38
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.k
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 2
  store ptr %i.fu, ptr %i.fs, align 8, !tbaa !39
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.l, ptr %i.fv, align 8, !tbaa !68
  br label %bb.p

bb.p:                                             ; preds = %.critedge86, %b3NameMap_find_insert_location_in_chain.exit, %.critedge, %bb.g, %b3NameMap_evict.exit
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc noundef zeroext i1 @b3NameMap_rehash(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #8 {
bb.a:
  %2 = alloca %struct.b3NameMap, align 8          ; 12 uses
  %3 = alloca %struct.b3NameMap_itr, align 8      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store i64 0, ptr %2, align 8
  %i.b = add i64 %1, -1                           ; 3 uses
  store i64 %i.b, ptr %i.a, align 8, !tbaa !24
  %i.c = mul i64 %i.b, 10
  %i.d = add i64 %i.c, 18
  %i.e = tail call ptr @b3Alloc(i64 noundef %i.d) #12 ; 2 uses
  %.not45.not = icmp eq ptr %i.e, null
  br i1 %.not45.not, label %.loopexit, label %.lr.ph49, !prof !71

.lr.ph49:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = getelementptr i8, ptr %0, i64 8          ; 3 uses
end_hunk_0
