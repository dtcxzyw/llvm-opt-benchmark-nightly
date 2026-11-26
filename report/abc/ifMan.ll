Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifMan?download=true
inline.NumInlined: 290
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 17
begin_hunk_0_@If_ManCreateCi:bb.a
bb.f:                                             ; preds = %bb.b
  %i.q = icmp samesign ult i32 %.val, 1073741823
  %i.r = shl nuw nsw i32 %.val, 1
  %spec.select.i = select i1 %i.q, i32 %i.r, i32 2147483647 ; 3 uses
  %.not.i10.i = icmp samesign ult i32 %.val, %spec.select.i
  br i1 %.not.i10.i, label %bb.g, label %Vec_PtrPush.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40   ; 2 uses
  %.not9.i11.i = icmp eq ptr %i.t, null
  %i.u = zext nneg i32 %spec.select.i to i64
  %i.v = shl nuw nsw i64 %i.u, 3                  ; 2 uses
  br i1 %.not9.i11.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = tail call ptr @realloc(ptr noundef nonnull %i.t, i64 noundef %i.v) #25
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.v) #22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = phi ptr [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  store ptr %i.y, ptr %i.s, align 8, !tbaa !40
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.j, %Vec_PtrGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.j ], [ 16, %Vec_PtrGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.f, align 8, !tbaa !39
  %.pre = load i32, ptr %i.g, align 4, !tbaa !38
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.a, %bb.f, %Vec_PtrGrow.exit12.sink.split.i
  %i.z = phi i32 [ %.val, %bb.a ], [ %.val, %bb.f ], [ %.pre, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !40
  %i.ac = add nsw i32 %i.z, 1
  store i32 %i.ac, ptr %i.g, align 4, !tbaa !38
  %i.ad = sext i32 %i.z to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ad
  store ptr %i.a, ptr %i.ae, align 8, !tbaa !94
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !47
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !47
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noundef ptr @If_ManCreateCo(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @If_ManSetupObj(ptr noundef %0) ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 6 uses
  %i.d = getelementptr i8, ptr %i.c, i64 4        ; 3 uses
  %.val = load i32, ptr %i.d, align 4, !tbaa !38  ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val, ptr %i.e, align 8, !tbaa !111
  %i.f = load i32, ptr %i.c, align 8, !tbaa !39
  %i.g = icmp eq i32 %.val, %i.f
  br i1 %i.g, label %bb.b, label %Vec_PtrPush.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp slt i32 %.val, 16
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !40   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.j, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.j, i64 noundef 128) #25
  br label %Vec_PtrGrow.exit.i

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #22
  br label %Vec_PtrGrow.exit.i

Vec_PtrGrow.exit.i:                               ; preds = %bb.e, %bb.d
  %i.m = phi ptr [ %i.k, %bb.d ], [ %i.l, %bb.e ]
  store ptr %i.m, ptr %i.i, align 8, !tbaa !40
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.n = icmp samesign ult i32 %.val, 1073741823
  %i.o = shl nuw nsw i32 %.val, 1
  %spec.select.i = select i1 %i.n, i32 %i.o, i32 2147483647 ; 3 uses
  %.not.i10.i = icmp samesign ult i32 %.val, %spec.select.i
  br i1 %.not.i10.i, label %bb.g, label %Vec_PtrPush.exit

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40   ; 2 uses
  %.not9.i11.i = icmp eq ptr %i.q, null
  %i.r = zext nneg i32 %spec.select.i to i64
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  br i1 %.not9.i11.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = tail call ptr @realloc(ptr noundef nonnull %i.q, i64 noundef %i.s) #25
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.s) #22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.v = phi ptr [ %i.t, %bb.h ], [ %i.u, %bb.i ]
  store ptr %i.v, ptr %i.p, align 8, !tbaa !40
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.j, %Vec_PtrGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.j ], [ 16, %Vec_PtrGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.c, align 8, !tbaa !39
  %.pre = load i32, ptr %i.d, align 4, !tbaa !38
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.a, %bb.f, %Vec_PtrGrow.exit12.sink.split.i
  %i.w = phi i32 [ %.val, %bb.a ], [ %.val, %bb.f ], [ %.pre, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.z = add nsw i32 %i.w, 1
  store i32 %i.z, ptr %i.d, align 4, !tbaa !38
  %i.aa = sext i32 %i.w to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.aa
  store ptr %i.a, ptr %i.ab, align 8, !tbaa !94
  %i.ac = load i32, ptr %i.a, align 8
  %i.ad = and i32 %i.ac, -32
  %i.ae = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.af = trunc i64 %i.ae to i32
  %i.ag = shl i32 %i.af, 4
  %i.ah = and i32 %i.ag, 16
  %i.ai = or disjoint i32 %i.ah, %i.ad
  %i.aj = or disjoint i32 %i.ai, 3
  store i32 %i.aj, ptr %i.a, align 8
  %i.ak = and i64 %i.ae, -2
  %i.al = inttoptr i64 %i.ak to ptr               ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.al, ptr %i.am, align 8, !tbaa !105
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 12 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !222
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !222
  %i.aq = load i32, ptr %i.a, align 8             ; 2 uses
  %i.ar = load i32, ptr %i.al, align 8
  %i.as = shl i32 %i.aq, 2
  %i.at = xor i32 %i.ar, %i.as
  %i.au = and i32 %i.at, 64
  %i.av = and i32 %i.aq, -65
  %i.aw = or disjoint i32 %i.au, %i.av            ; 2 uses
  store i32 %i.aw, ptr %i.a, align 8
  %i.ax = load i32, ptr %i.al, align 8            ; 2 uses
  %i.ay = and i32 %i.ax, -8192
  %i.az = and i32 %i.aw, 8191
  %i.ba = or disjoint i32 %i.az, %i.ay
  store i32 %i.ba, ptr %i.a, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !103
  %i.bd = lshr i32 %i.ax, 13                      ; 2 uses
  %i.be = icmp slt i32 %i.bc, %i.bd
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %Vec_PtrPush.exit
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !103
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %Vec_PtrPush.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !47
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !47
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @If_ManCreateAnd(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.c = xor i64 %i.b, 1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = icmp eq ptr %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !89
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = xor i64 %i.h, 1
  %i.j = inttoptr i64 %i.i to ptr
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.l = and i64 %i.k, -2
  %i.m = inttoptr i64 %i.l to ptr                 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !89   ; 4 uses
  %i.p = icmp eq ptr %i.o, %i.m
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = icmp eq ptr %1, %i.m
  br i1 %i.q, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %3 = or i64 %i.k, 1
  %i.r = inttoptr i64 %3 to ptr
  br label %bb.m

bb.g:                                             ; preds = %bb.d
  %i.s = and i64 %i.b, -2
  %i.t = inttoptr i64 %i.s to ptr                 ; 6 uses
  %i.u = icmp eq ptr %i.o, %i.t
  br i1 %i.u, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = icmp eq ptr %2, %i.o
  br i1 %i.v, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = ptrtoint ptr %i.o to i64
  %i.x = xor i64 %i.w, 1
  %i.y = inttoptr i64 %i.x to ptr
  br label %bb.m

bb.j:                                             ; preds = %bb.g
  %i.z = tail call fastcc ptr @If_ManSetupObj(ptr noundef nonnull %0) ; 8 uses
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = and i32 %i.aa, -64
  %i.ac = trunc i64 %i.k to i32
  %i.ad = shl i32 %i.ac, 4
  %i.ae = and i32 %i.ad, 16
  %i.af = trunc i64 %i.b to i32
  %i.ag = shl i32 %i.af, 5
  %i.ah = and i32 %i.ag, 32
  %i.ai = or disjoint i32 %i.ae, %i.ah
  %i.aj = or disjoint i32 %i.ai, %i.ab
  %i.ak = or disjoint i32 %i.aj, 4
  store i32 %i.ak, ptr %i.z, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr %i.m, ptr %i.al, align 8, !tbaa !105
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 2 uses
  %i.an = load <2 x i32>, ptr %i.am, align 4, !tbaa !47
  %i.ao = add nsw <2 x i32> %i.an, splat (i32 1)
  store <2 x i32> %i.ao, ptr %i.am, align 4, !tbaa !47
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 20 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !223
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !223
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr %i.t, ptr %i.as, align 8, !tbaa !112
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 12 ; 2 uses
  %i.au = load <2 x i32>, ptr %i.at, align 4, !tbaa !47
  %i.av = add nsw <2 x i32> %i.au, splat (i32 1)
  store <2 x i32> %i.av, ptr %i.at, align 4, !tbaa !47
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !223
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !223
  %i.az = load i32, ptr %i.z, align 8             ; 3 uses
  %i.ba = lshr i32 %i.az, 4
  %i.bb = load i32, ptr %i.m, align 8
  %i.bc = lshr i32 %i.bb, 6
  %i.bd = xor i32 %i.bc, %i.ba
  %i.be = lshr i32 %i.az, 5
  %i.bf = load i32, ptr %i.t, align 8
  %i.bg = lshr i32 %i.bf, 6
  %i.bh = xor i32 %i.bg, %i.be
  %i.bi = and i32 %i.bd, 1
  %i.bj = and i32 %i.bi, %i.bh
  %i.bk = shl nuw nsw i32 %i.bj, 6
  %i.bl = and i32 %i.az, -65
  %i.bm = or disjoint i32 %i.bk, %i.bl            ; 2 uses
  store i32 %i.bm, ptr %i.z, align 8
  %i.bn = load i32, ptr %i.m, align 8
  %i.bo = lshr i32 %i.bn, 13
  %i.bp = load i32, ptr %i.t, align 8
  %i.bq = lshr i32 %i.bp, 13
  %. = tail call i32 @llvm.umax.i32(i32 %i.bo, i32 %i.bq)
  %i.br = shl nuw i32 %., 13
  %i.bs = add i32 %i.br, 8192                     ; 2 uses
  %i.bt = and i32 %i.bm, 8191
  %i.bu = or disjoint i32 %i.bt, %i.bs
  store i32 %i.bu, ptr %i.z, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !103
  %i.bx = lshr exact i32 %i.bs, 13                ; 2 uses
  %i.by = icmp slt i32 %i.bw, %i.bx
  br i1 %i.by, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !103
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !47
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bz, align 8, !tbaa !47
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.e, %bb.a, %bb.l, %bb.c
  %.0 = phi ptr [ %i.z, %bb.l ], [ %i.j, %bb.c ], [ %1, %bb.a ], [ %2, %bb.e ], [ %i.r, %bb.f ], [ %i.y, %bb.i ], [ %1, %bb.h ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @If_ManCreateXor(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = xor i64 %i.a, 1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @If_ManCreateAnd(ptr noundef %0, ptr noundef %i.c, ptr noundef %2)
  %i.e = ptrtoint ptr %2 to i64
  %i.f = xor i64 %i.e, 1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @If_ManCreateAnd(ptr noundef %0, ptr noundef %1, ptr noundef %i.g)
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = xor i64 %i.i, 1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = xor i64 %i.l, 1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = tail call ptr @If_ManCreateAnd(ptr noundef %0, ptr noundef %i.k, ptr noundef %i.n)
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = xor i64 %i.p, 1
  %i.r = inttoptr i64 %i.q to ptr
  ret ptr %i.r
}

; Function Attrs: nounwind uwtable
define ptr @If_ManCreateMux(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = xor i64 %i.a, 1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @If_ManCreateAnd(ptr noundef %0, ptr noundef %1, ptr noundef %i.c)
  %i.e = tail call ptr @If_ManCreateAnd(ptr noundef %0, ptr noundef %2, ptr noundef %3)
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = xor i64 %i.f, 1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = xor i64 %i.i, 1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = tail call ptr @If_ManCreateAnd(ptr noundef %0, ptr noundef %i.h, ptr noundef %i.k)
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = xor i64 %i.m, 1
  %i.o = inttoptr i64 %i.n to ptr
  ret ptr %i.o
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @If_ManCreateChoice(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #12 {
bb.a:
  %i.a = load i32, ptr %1, align 8
  %i.b = or i32 %i.a, 128
  store i32 %i.b, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.019 = phi ptr [ %1, %bb.a ], [ %i.n, %bb.b ]  ; 3 uses
  %i.c = load i32, ptr %1, align 8                ; 2 uses
  %i.d = lshr i32 %i.c, 13
  %i.e = load i32, ptr %.019, align 8
  %i.f = lshr i32 %i.e, 13
  %. = tail call i32 @llvm.umax.i32(i32 %i.d, i32 %i.f)
  %i.g = shl nuw i32 %., 13
  %i.h = and i32 %i.c, 8191
  %i.i = or disjoint i32 %i.g, %i.h
  store i32 %i.i, ptr %1, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.019, i64 16 ; 2 uses
  %i.k = load <2 x i32>, ptr %i.j, align 8, !tbaa !47
  %i.l = add nsw <2 x i32> %i.k, splat (i32 1)
  store <2 x i32> %i.l, ptr %i.j, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %.019, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !113  ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !224

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !103
  %i.q = load i32, ptr %1, align 8
  %i.r = lshr i32 %i.q, 13                        ; 2 uses
  %i.s = icmp slt i32 %i.p, %i.r
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.r, ptr %i.o, align 4, !tbaa !103
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !114
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 8, !tbaa !114
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @If_ManSetupSet(ptr nofree noundef readonly captures(none) %0, ptr noundef initializes((0, 4)) %1) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 0, ptr %i.a, align 2, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
end_hunk_0
