Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lua/original/lgc?download=true
inline.NumInlined: 113
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@luaC_barrier_:bb.a
  %i.q = and i8 %i.p, -57
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 106
  %i.s = load i8, ptr %i.r, align 2, !tbaa !34
  %i.t = and i8 %i.s, 24
  %i.u = or disjoint i8 %i.t, %i.q
  store i8 %i.u, ptr %i.o, align 1, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @reallymarkobject(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.d, %bb.a
  %.tr32 = phi ptr [ %1, %bb.a ], [ %i.u, %bb.d ] ; 12 uses
  %i.b = tail call fastcc i64 @objsize(ptr noundef %.tr32)
  %i.c = load i64, ptr %i.a, align 8, !tbaa !35
  %i.d = add nsw i64 %i.c, %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %.tr32, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !36
  switch i8 %i.f, label %.loopexit [
    i8 4, label %bb.b
    i8 20, label %bb.b
    i8 9, label %bb.c
    i8 7, label %bb.e
    i8 5, label %getgclist.exit.loopexit
    i8 6, label %getgclist.exit
    i8 38, label %getgclist.exit
    i8 8, label %bb.j
    i8 10, label %bb.k
  ]

bb.b:                                             ; preds = %tailrecurse, %tailrecurse
  %i.g = getelementptr inbounds nuw i8, ptr %.tr32, i64 9 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !32
  %i.i = and i8 %i.h, -57
  %i.j = or disjoint i8 %i.i, 32
  store i8 %i.j, ptr %i.g, align 1, !tbaa !32
  br label %.loopexit

bb.c:                                             ; preds = %tailrecurse
  %i.k = getelementptr inbounds nuw i8, ptr %.tr32, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.tr32, i64 24
  %.not28 = icmp eq ptr %i.l, %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %.tr32, i64 9 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !39
  %i.p = and i8 %i.o, -57                         ; 2 uses
  %i.q = or disjoint i8 %i.p, 32
  %.sink = select i1 %.not28, i8 %i.q, i8 %i.p
  store i8 %.sink, ptr %i.n, align 1, !tbaa !39
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.s = load i8, ptr %i.r, align 8, !tbaa !40
  %i.t = and i8 %i.s, 64
  %.not29 = icmp eq i8 %i.t, 0
  br i1 %.not29, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !37   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  %i.w = load i8, ptr %i.v, align 1, !tbaa !32
  %i.x = and i8 %i.w, 24
  %.not30 = icmp eq i8 %i.x, 0
  br i1 %.not30, label %.loopexit, label %tailrecurse

bb.e:                                             ; preds = %tailrecurse
  %i.y = getelementptr inbounds nuw i8, ptr %.tr32, i64 10
  %i.z = load i16, ptr %i.y, align 2, !tbaa !44
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %bb.f, label %getgclist.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr32, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !45 ; 3 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 9
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !49
  %i.af = and i8 %i.ae, 24
  %.not27 = icmp eq i8 %i.af, 0
  br i1 %.not27, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @reallymarkobject(ptr noundef nonnull %0, ptr noundef nonnull %i.ac)
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr32, i64 9 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !95
  %i.ai = and i8 %i.ah, -57
  %i.aj = or disjoint i8 %i.ai, 32
  store i8 %i.aj, ptr %i.ag, align 1, !tbaa !95
  br label %.loopexit

bb.j:                                             ; preds = %tailrecurse
  br label %getgclist.exit

bb.k:                                             ; preds = %tailrecurse
  br label %getgclist.exit

getgclist.exit.loopexit:                          ; preds = %tailrecurse
  br label %getgclist.exit

getgclist.exit:                                   ; preds = %tailrecurse, %tailrecurse, %getgclist.exit.loopexit, %bb.e, %bb.j, %bb.k
  %.sink68 = phi i64 [ 120, %bb.k ], [ 40, %getgclist.exit.loopexit ], [ 32, %bb.e ], [ 72, %bb.j ], [ 16, %tailrecurse ], [ 16, %tailrecurse ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr32, i64 %.sink68
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !50
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !50
  store ptr %.tr32, ptr %i.al, align 8, !tbaa !50
  %i.an = getelementptr inbounds nuw i8, ptr %.tr32, i64 9 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !32
  %i.ap = and i8 %i.ao, -57
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.d, %tailrecurse, %bb.i, %getgclist.exit, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @luaC_barrierback_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !32    ; 4 uses
  %i.c = and i8 %i.b, 7
  %i.d = icmp eq i8 %i.c, 6
  br i1 %i.d, label %bb.b, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i8, ptr %i.g, align 8, !tbaa !36
  %i.i = sext i8 %i.h to i64
  %i.j = getelementptr i8, ptr @switch.table.traverseephemeron, i64 %i.i
  %switch.gep = getelementptr i8, ptr %i.j, i64 -5
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %switch.ext
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 144 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50
  store ptr %i.m, ptr %i.k, align 8, !tbaa !50
  store ptr %1, ptr %i.l, align 8, !tbaa !50
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sink10 = phi i8 [ -57, %switch.lookup ], [ -58, %bb.a ]
  %i.n = and i8 %i.b, %.sink10
  %i.o = and i8 %i.b, 6
  %.not = icmp eq i8 %i.o, 0
  %i.p = and i8 %i.b, -64
  %i.q = or disjoint i8 %i.p, 5
  %storemerge9 = select i1 %.not, i8 %i.n, i8 %i.q
  store i8 %storemerge9, ptr %i.a, align 1, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @luaC_fix(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !32
  %i.e = and i8 %i.d, -64
  %i.f = or disjoint i8 %i.e, 4
  store i8 %i.f, ptr %i.c, align 1, !tbaa !32
  %i.g = load ptr, ptr %1, align 8, !tbaa !51
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.g, ptr %i.h, align 8, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53
  store ptr %i.j, ptr %1, align 8, !tbaa !51
  store ptr %1, ptr %i.i, align 8, !tbaa !53
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @luaC_newobjdt(ptr noundef %0, i8 noundef zeroext %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = and i8 %1, 15
  %i.d = zext nneg i8 %i.c to i32
  %i.e = tail call ptr @luaM_malloc_(ptr noundef %0, i64 noundef %2, i32 noundef %i.d) #8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %3 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 106
  %i.h = load i8, ptr %i.g, align 2, !tbaa !34
  %.fr = freeze i8 %i.h
  %i.i = and i8 %.fr, 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %4 = zext i8 %1 to i16
  %5 = zext nneg i8 %i.i to i16
  %6 = shl nuw nsw i16 %5, 8
  %7 = or disjoint i16 %6, %4
  store i16 %7, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52
  store ptr %i.l, ptr %i.f, align 8, !tbaa !51
  store ptr %i.f, ptr %i.k, align 8, !tbaa !52
  ret ptr %i.f
}

declare hidden ptr @luaM_malloc_(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden noundef ptr @luaC_newobj(ptr noundef %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = and i8 %1, 15
  %i.d = zext nneg i8 %i.c to i32
  %i.e = tail call ptr @luaM_malloc_(ptr noundef %0, i64 noundef %2, i32 noundef %i.d) #8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 106
  %i.g = load i8, ptr %i.f, align 2, !tbaa !34
  %.fr.i = freeze i8 %i.g
  %i.h = and i8 %.fr.i, 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %3 = zext i8 %1 to i16
  %4 = zext nneg i8 %i.h to i16
  %5 = shl nuw nsw i16 %4, 8
  %6 = or disjoint i16 %5, %3
  store i16 %6, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52
  store ptr %i.k, ptr %i.e, align 8, !tbaa !51
  store ptr %i.e, ptr %i.j, align 8, !tbaa !52
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define hidden void @luaC_checkfinalizer(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 5 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !32
  %i.e = and i8 %i.d, 64
  %.not = icmp ne i8 %i.e, 0
  %i.f = icmp eq ptr %2, null
  %or.cond38 = or i1 %i.f, %.not
  br i1 %or.cond38, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.h = load i8, ptr %i.g, align 2, !tbaa !54
  %i.i = and i8 %i.h, 4
  %.not35 = icmp eq i8 %i.i, 0
  br i1 %.not35, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !55
  %i.l = tail call ptr @luaT_gettm(ptr noundef nonnull %2, i32 noundef 2, ptr noundef %i.k) #8
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 110
  %i.o = load i8, ptr %i.n, align 2, !tbaa !56
  %i.p = and i8 %i.o, 4
  %.not36 = icmp eq i8 %i.p, 0
  br i1 %.not36, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 107
  %i.r = load i8, ptr %i.q, align 1, !tbaa !30
  %i.s = add i8 %i.r, -3
  %or.cond = icmp ult i8 %i.s, 4
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.c, align 1, !tbaa !32
  %i.u = and i8 %i.t, -57
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 106
  %i.w = load i8, ptr %i.v, align 2, !tbaa !34
  %i.x = and i8 %i.w, 24
  %i.y = or disjoint i8 %i.x, %i.u
  store i8 %i.y, ptr %i.c, align 1, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !57  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %1
  br i1 %i.ab, label %bb.g, label %correctpointers.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call fastcc ptr @sweeptolive(ptr noundef nonnull %0, ptr noundef %i.aa)
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !57
  br label %correctpointers.exit

bb.h:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !50
  %i.af = icmp eq ptr %1, %i.ae
  br i1 %i.af, label %bb.i, label %checkpointer.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %1, align 8, !tbaa !51
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !50
  br label %checkpointer.exit.i

checkpointer.exit.i:                              ; preds = %bb.i, %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 200 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !50
  %i.aj = icmp eq ptr %1, %i.ai
  br i1 %i.aj, label %bb.j, label %checkpointer.exit8.i

bb.j:                                             ; preds = %checkpointer.exit.i
  %i.ak = load ptr, ptr %1, align 8, !tbaa !51
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !50
  br label %checkpointer.exit8.i

checkpointer.exit8.i:                             ; preds = %bb.j, %checkpointer.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !50
  %i.an = icmp eq ptr %1, %i.am
  br i1 %i.an, label %bb.k, label %checkpointer.exit9.i

bb.k:                                             ; preds = %checkpointer.exit8.i
  %i.ao = load ptr, ptr %1, align 8, !tbaa !51
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !50
  br label %checkpointer.exit9.i

checkpointer.exit9.i:                             ; preds = %bb.k, %checkpointer.exit8.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 216 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !50
  %i.ar = icmp eq ptr %1, %i.aq
  br i1 %i.ar, label %bb.l, label %correctpointers.exit

bb.l:                                             ; preds = %checkpointer.exit9.i
  %i.as = load ptr, ptr %1, align 8, !tbaa !51
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !50
  br label %correctpointers.exit

correctpointers.exit:                             ; preds = %bb.l, %checkpointer.exit9.i, %bb.f, %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %correctpointers.exit
  %.0 = phi ptr [ %i.at, %correctpointers.exit ], [ %i.au, %bb.m ] ; 2 uses
  %i.au = load ptr, ptr %.0, align 8, !tbaa !50   ; 2 uses
  %.not37 = icmp eq ptr %i.au, %1
  br i1 %.not37, label %bb.n, label %bb.m

bb.n:                                             ; preds = %bb.m
  %i.av = load ptr, ptr %1, align 8, !tbaa !51
  store ptr %i.av, ptr %.0, align 8, !tbaa !50
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !58
  store ptr %i.ax, ptr %1, align 8, !tbaa !51
  store ptr %1, ptr %i.aw, align 8, !tbaa !58
  %i.ay = load i8, ptr %i.c, align 1, !tbaa !32
  %i.az = or i8 %i.ay, 64
  store i8 %i.az, ptr %i.c, align 1, !tbaa !32
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.c, %bb.d, %bb.b, %bb.n
  ret void
}

declare hidden ptr @luaT_gettm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sweeptolive(ptr noundef %0, ptr nofree noundef captures(address, ret: address, provenance) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %sweeplist.exit, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %i.o, %sweeplist.exit ] ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 106
  %i.d = load i8, ptr %i.c, align 2, !tbaa !34    ; 2 uses
  %i.e = and i8 %i.d, 24
  %i.f = load ptr, ptr %.0, align 8, !tbaa !50    ; 5 uses
  %.not21.i = icmp eq ptr %i.f, null
  br i1 %.not21.i, label %sweeplist.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.g = xor i8 %i.d, 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 9 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !32    ; 2 uses
  %i.j = and i8 %i.i, %i.g
  %.not20.i = icmp eq i8 %i.j, 0
  br i1 %.not20.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.preheader
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !51
  store ptr %i.k, ptr %.0, align 8, !tbaa !50
  tail call fastcc void @freeobj(ptr noundef nonnull %0, ptr noundef nonnull %i.f)
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.preheader
  %i.l = and i8 %i.i, -64
  %i.m = or disjoint i8 %i.l, %i.e
  store i8 %i.m, ptr %i.h, align 1, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.i = phi ptr [ %.0, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.n = load ptr, ptr %.1.i, align 8, !tbaa !50
  %.not.i = icmp eq ptr %i.n, null
  %spec.select = select i1 %.not.i, ptr null, ptr %.1.i
  br label %sweeplist.exit

sweeplist.exit:                                   ; preds = %bb.e, %bb.b
  %i.o = phi ptr [ null, %bb.b ], [ %spec.select, %bb.e ] ; 3 uses
  %i.p = icmp eq ptr %i.o, %1
  br i1 %i.p, label %bb.b, label %bb.f

bb.f:                                             ; preds = %sweeplist.exit
  ret ptr %i.o
}

; Function Attrs: nounwind uwtable
define hidden void @luaC_changemode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 108 ; 3 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !33    ; 2 uses
  %i.e = icmp eq i8 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.c

end_hunk_0
