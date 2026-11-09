Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/hopObj?download=true
inline.NumInlined: 45
inline.NumDeleted: 21
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Hop_ManFetchMemory
define internal fastcc noundef ptr @Hop_ManFetchMemory(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @Hop_ManAddMemory(ptr noundef nonnull %0) #11
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %i.a, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i8 0, i64 40, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28   ; 7 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !18   ; 7 uses
  %i.j = load i32, ptr %i.g, align 8, !tbaa !20
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %bb.e, label %Vec_PtrPush.exit

bb.e:                                             ; preds = %bb.d
  %i.l = icmp slt i32 %i.i, 16
  br i1 %i.l, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.n, null
  br i1 %.not9.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.n, i64 noundef 128) #9
  br label %Vec_PtrGrow.exit.i

bb.h:                                             ; preds = %bb.f
  %i.p = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #10
  br label %Vec_PtrGrow.exit.i

Vec_PtrGrow.exit.i:                               ; preds = %bb.h, %bb.g
  %i.q = phi ptr [ %i.o, %bb.g ], [ %i.p, %bb.h ]
  store ptr %i.q, ptr %i.m, align 8, !tbaa !21
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.i:                                             ; preds = %bb.e
  %i.r = icmp samesign ult i32 %i.i, 1073741823
  %i.s = shl nuw nsw i32 %i.i, 1
  %spec.select.i = select i1 %i.r, i32 %i.s, i32 2147483647 ; 3 uses
  %.not.i10.i = icmp samesign ult i32 %i.i, %spec.select.i
  br i1 %.not.i10.i, label %bb.j, label %Vec_PtrPush.exit

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21   ; 2 uses
  %.not9.i11.i = icmp eq ptr %i.u, null
  %i.v = zext nneg i32 %spec.select.i to i64
  %i.w = shl nuw nsw i64 %i.v, 3                  ; 2 uses
  br i1 %.not9.i11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = tail call ptr @realloc(ptr noundef nonnull %i.u, i64 noundef %i.w) #9
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.w) #10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.z = phi ptr [ %i.x, %bb.k ], [ %i.y, %bb.l ]
  store ptr %i.z, ptr %i.t, align 8, !tbaa !21
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.m, %Vec_PtrGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.m ], [ 16, %Vec_PtrGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.g, align 8, !tbaa !20
  %.pre12 = load i32, ptr %i.h, align 4, !tbaa !18
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.d, %bb.i, %Vec_PtrGrow.exit12.sink.split.i
  %i.aa = phi i32 [ %i.i, %bb.d ], [ %i.i, %bb.i ], [ %.pre12, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !21
  %i.ad = add nsw i32 %i.aa, 1
  store i32 %i.ad, ptr %i.h, align 4, !tbaa !18
  %i.ae = sext i32 %i.aa to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ae
  store ptr %i.d, ptr %i.af, align 8, !tbaa !22
  br label %bb.n

bb.n:                                             ; preds = %Vec_PtrPush.exit, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !29 ; 2 uses
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !30
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define noundef ptr @Hop_ObjCreatePo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @Hop_ManFetchMemory(ptr noundef %0) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 6 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, -8
  %i.e = or disjoint i32 %i.d, 3
  store i32 %i.e, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !18   ; 7 uses
  %i.j = load i32, ptr %i.g, align 8, !tbaa !20
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %bb.b, label %Vec_PtrPush.exit

bb.b:                                             ; preds = %bb.a
  %i.l = icmp slt i32 %i.i, 16
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.n, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.n, i64 noundef 128) #9
  br label %Vec_PtrGrow.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #10
  br label %Vec_PtrGrow.exit.i

Vec_PtrGrow.exit.i:                               ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %i.o, %bb.d ], [ %i.p, %bb.e ]
  store ptr %i.q, ptr %i.m, align 8, !tbaa !21
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.r = icmp samesign ult i32 %i.i, 1073741823
  %i.s = shl nuw nsw i32 %i.i, 1
  %spec.select.i = select i1 %i.r, i32 %i.s, i32 2147483647 ; 3 uses
  %.not.i10.i = icmp samesign ult i32 %i.i, %spec.select.i
  br i1 %.not.i10.i, label %bb.g, label %Vec_PtrPush.exit

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21   ; 2 uses
  %.not9.i11.i = icmp eq ptr %i.u, null
  %i.v = zext nneg i32 %spec.select.i to i64
  %i.w = shl nuw nsw i64 %i.v, 3                  ; 2 uses
  br i1 %.not9.i11.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = tail call ptr @realloc(ptr noundef nonnull %i.u, i64 noundef %i.w) #9
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.w) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.z = phi ptr [ %i.x, %bb.h ], [ %i.y, %bb.i ]
  store ptr %i.z, ptr %i.t, align 8, !tbaa !21
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.j, %Vec_PtrGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.j ], [ 16, %Vec_PtrGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.g, align 8, !tbaa !20
  %.pre = load i32, ptr %i.h, align 4, !tbaa !18
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.a, %bb.f, %Vec_PtrGrow.exit12.sink.split.i
  %i.aa = phi i32 [ %i.i, %bb.a ], [ %i.i, %bb.f ], [ %.pre, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !21
  %i.ad = add nsw i32 %i.aa, 1
  store i32 %i.ad, ptr %i.h, align 4, !tbaa !18
  %i.ae = sext i32 %i.aa to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ae
  store ptr %i.a, ptr %i.af, align 8, !tbaa !22
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.ag, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !26
  %.not = icmp eq i32 %i.ai, 0
  %i.aj = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.ak = and i64 %i.aj, -2
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr i8, ptr %i.al, i64 32     ; 2 uses
  %.val = load i32, ptr %i.am, align 8            ; 2 uses
  %2 = and i32 %.val, -64                         ; 2 uses
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %Vec_PtrPush.exit
  %i.an = add i32 %2, 64
  %3 = and i32 %.val, 63
  %4 = or disjoint i32 %i.an, %3
  store i32 %4, ptr %i.am, align 8
  br label %bb.m

bb.l:                                             ; preds = %Vec_PtrPush.exit
  %i.ao = load i32, ptr %i.b, align 8
  %i.ap = and i32 %i.ao, 63
  %i.aq = or disjoint i32 %i.ap, %2
  store i32 %i.aq, ptr %i.b, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ar = and i64 %i.aj, 1
  %.not.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = and i64 %i.aj, -2
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load i32, ptr %i.au, align 8
  %.lobit.i = and i32 %i.av, 8
  %i.aw = xor i32 %.lobit.i, 8
  br label %Hop_ObjPhaseCompl.exit

bb.o:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = and i32 %i.ay, 8
  br label %Hop_ObjPhaseCompl.exit

Hop_ObjPhaseCompl.exit:                           ; preds = %bb.n, %bb.o
  %i.ba = phi i32 [ %i.aw, %bb.n ], [ %i.az, %bb.o ]
  %i.bb = load i32, ptr %i.b, align 8
  %i.bc = and i32 %i.bb, -9
  %i.bd = or disjoint i32 %i.bc, %i.ba
  store i32 %i.bd, ptr %i.b, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !23
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !23
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noundef ptr @Hop_ObjCreate(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @Hop_ManFetchMemory(ptr noundef %0) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, 7
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, -8
  %i.h = or disjoint i32 %i.g, %i.d
  store i32 %i.h, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27
  tail call void @Hop_ObjConnect(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.j, ptr noundef %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val = load i32, ptr %i.e, align 8
  %i.n = and i32 %.val, 7
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !23
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !23
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @Hop_ObjConnect(ptr noundef %0, ptr noundef initializes((16, 32)) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %2, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %3, ptr %i.b, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.d = load i32, ptr %i.c, align 4, !tbaa !26
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not16 = icmp eq ptr %2, null
  br i1 %.not16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %2 to i64
  %i.f = and i64 %i.e, -2
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %4 = and i32 %i.i, -64
  %i.j = add i32 %4, 64
  %5 = and i32 %i.i, 63
  %6 = or disjoint i32 %i.j, %5
  store i32 %6, ptr %i.h, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not17 = icmp eq ptr %3, null
  br i1 %.not17, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val18 = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.k = ptrtoint ptr %.val18 to i64
  %i.l = and i64 %i.k, -2
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %7 = and i32 %i.o, -64
  %i.p = add i32 %7, 64
  %8 = and i32 %i.o, 63
  %9 = or disjoint i32 %i.p, %8
  store i32 %9, ptr %i.n, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %.val4.i = load i32, ptr %i.q, align 8          ; 2 uses
  %i.r = and i32 %.val4.i, 7
  %i.s = icmp eq i32 %i.r, 5
  %i.t = select i1 %i.s, i32 2, i32 1
  %i.u = ptrtoint ptr %2 to i64
  %i.v = and i64 %i.u, -2
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load i32, ptr %i.x, align 8
  %i.z = lshr i32 %i.y, 6
  %i.aa = ptrtoint ptr %3 to i64
  %i.ab = and i64 %i.aa, -2
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = lshr i32 %i.ae, 6
  %i.ag = tail call range(i32 0, 67108864) i32 @llvm.umax.i32(i32 range(i32 0, 67108864) %i.z, i32 range(i32 0, 67108864) %i.af)
  %i.ah = add nuw nsw i32 %i.ag, %i.t
  %i.ai = shl i32 %i.ah, 6
  %i.aj = and i32 %.val4.i, 63
  %i.ak = or disjoint i32 %i.ai, %i.aj
  store i32 %i.ak, ptr %i.q, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %i.al = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.am = and i64 %i.al, 1
  %.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = and i64 %i.al, -2
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i32, ptr %i.ap, align 8
  %.lobit.i = and i32 %i.aq, 8
  %i.ar = xor i32 %.lobit.i, 8
  br label %Hop_ObjPhaseCompl.exit

bb.i:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.at = load i32, ptr %i.as, align 8
  %i.au = and i32 %i.at, 8
  br label %Hop_ObjPhaseCompl.exit

Hop_ObjPhaseCompl.exit:                           ; preds = %bb.h, %bb.i
  %i.av = phi i32 [ %i.ar, %bb.h ], [ %i.au, %bb.i ]
  %i.aw = ptrtoint ptr %3 to i64                  ; 2 uses
  %i.ax = and i64 %i.aw, 1
  %.not.i19 = icmp eq i64 %i.ax, 0
  br i1 %.not.i19, label %bb.k, label %bb.j

bb.j:                                             ; preds = %Hop_ObjPhaseCompl.exit
  %i.ay = and i64 %i.aw, -2
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load i32, ptr %i.ba, align 8
  %.lobit.i20 = and i32 %i.bb, 8
  %i.bc = xor i32 %.lobit.i20, 8
  br label %Hop_ObjPhaseCompl.exit21

bb.k:                                             ; preds = %Hop_ObjPhaseCompl.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = and i32 %i.be, 8
  br label %Hop_ObjPhaseCompl.exit21

Hop_ObjPhaseCompl.exit21:                         ; preds = %bb.j, %bb.k
  %i.bg = phi i32 [ %i.bc, %bb.j ], [ %i.bf, %bb.k ]
  %i.bh = and i32 %i.bg, %i.av
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = and i32 %i.bj, -9
  %i.bl = or disjoint i32 %i.bk, %i.bh
  store i32 %i.bl, ptr %i.bi, align 8
  tail call void @Hop_TableInsert(ptr noundef nonnull %0, ptr noundef nonnull %1) #11
  ret void
}

declare void @Hop_TableInsert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @Hop_ObjDisconnect(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = and i64 %i.c, -2
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = add i32 %i.g, -64
  store i32 %i.h, ptr %i.f, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %.not8 = icmp eq ptr %i.j, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = and i64 %i.k, -2
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = add i32 %i.o, -64
  store i32 %i.p, ptr %i.n, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @Hop_TableDelete(ptr noundef %0, ptr noundef nonnull %1) #11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

declare void @Hop_TableDelete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @Hop_ObjDelete(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, 7
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.e ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !23
  %i.h = add nsw i32 %i.g, -1
  store i32 %i.h, ptr %i.f, align 4, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !35
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = and i64 %i.n, -2
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = add i32 %i.r, -64
  store i32 %i.s, ptr %i.q, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27   ; 2 uses
  %.not8.i = icmp eq ptr %i.u, null
  br i1 %.not8.i, label %Hop_ObjDisconnect.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = and i64 %i.v, -2
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = add i32 %i.z, -64
  store i32 %i.aa, ptr %i.y, align 8
  br label %Hop_ObjDisconnect.exit

Hop_ObjDisconnect.exit:                           ; preds = %bb.c, %bb.d
  tail call void @Hop_TableDelete(ptr noundef nonnull %0, ptr noundef nonnull %1) #11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %.val = load i32, ptr %i.b, align 8             ; 2 uses
  %i.ab = and i32 %.val, 7
  %.not = icmp eq i32 %i.ab, 2
  br i1 %.not, label %bb.e, label %bb.h

bb.e:                                             ; preds = %Hop_ObjDisconnect.exit
  %i.ac = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !18 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 6 uses
  %smin.i = tail call i32 @llvm.smin.i32(i32 %i.ae, i32 0) ; 2 uses
  %i.ag = icmp sgt i32 %i.ae, 0
  br i1 %i.ag, label %.lr.ph, label %._crit_edge14

.lr.ph:                                           ; preds = %bb.e
  %i.ah = zext nneg i32 %i.ae to i64
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !21
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.aj = trunc nuw i64 %i.am to i32              ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %bb.g, label %._crit_edge14, !llvm.loop !32
end_hunk_0
