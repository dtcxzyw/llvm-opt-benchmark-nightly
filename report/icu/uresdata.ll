Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/uresdata?download=true
inline.NumInlined: 120
inline.NumDeleted: 26
begin_hunk_0_@_ZL12isAcceptablePvPKcS1_PK9UDataInfo:bb.a

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.l = load i8, ptr %i.k, align 2, !tbaa !17
  %i.m = icmp eq i8 %i.l, 2
  br i1 %i.m, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load i8, ptr %i.n, align 2, !tbaa !18
  %i.p = icmp eq i8 %i.o, 82
  br i1 %i.p, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.r = load i8, ptr %i.q, align 1, !tbaa !18
  %i.s = icmp eq i8 %i.r, 101
  br i1 %i.s, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.u = load i8, ptr %i.t, align 2, !tbaa !18
  %i.v = icmp eq i8 %i.u, 115
  br i1 %i.v, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.x = load i8, ptr %i.w, align 1, !tbaa !18
  %i.y = icmp eq i8 %i.x, 66
  br i1 %i.y, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.z = load i8, ptr %i.a, align 2, !tbaa !18    ; 2 uses
  %.not = icmp eq i8 %i.z, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = icmp ult i8 %i.z, 4
  %i.ab = zext i1 %i.aa to i8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.ac = phi i8 [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.i ], [ %i.ab, %bb.j ]
  ret i8 %i.ac
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL8res_initP12ResourceDataPhPKviP10UErrorCode(ptr nofree noundef captures(none) initializes((8, 24), (32, 36)) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !25
  %i.b = load i32, ptr %2, align 4, !tbaa !26     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.b, ptr %i.c, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr @_ZL8gEmpty16, ptr %i.d, align 8, !tbaa !28
  %i.e = icmp sgt i32 %3, -1                      ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i32 %3, 2
  %i.g = load i8, ptr %1, align 1, !tbaa !18
  %i.h = icmp eq i8 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !18
  %i.k = icmp eq i8 %i.j, 0
  %i.l = select i1 %i.k, i32 1, i32 6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = phi i32 [ 6, %bb.b ], [ %i.l, %bb.c ]
  %i.n = icmp samesign ult i32 %i.f, %i.m
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  store i32 3, ptr %4, align 4, !tbaa !11
  %i.o = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @udata_close_78(ptr noundef nonnull %i.o)
  store ptr null, ptr %0, align 8, !tbaa !29
  br label %.critedge

bb.g:                                             ; preds = %bb.d, %bb.a
  %.mask = and i32 %i.b, -268435456
  %i.p = icmp eq i32 %.mask, 536870912
  %i.q = and i32 %i.b, -536870912
  %i.r = icmp eq i32 %i.q, 1073741824
  %or.cond3 = or i1 %i.p, %i.r
  br i1 %or.cond3, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 3, ptr %4, align 4, !tbaa !11
  %i.s = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %.not.i75 = icmp eq ptr %i.s, null
  br i1 %.not.i75, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @udata_close_78(ptr noundef nonnull %i.s)
  store ptr null, ptr %0, align 8, !tbaa !29
  br label %.critedge

bb.j:                                             ; preds = %bb.g
  %i.t = load i8, ptr %1, align 1, !tbaa !18      ; 2 uses
  %i.u = icmp eq i8 %i.t, 1
  br i1 %i.u, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !18
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 65536, ptr %i.y, align 4, !tbaa !30
  br label %.thread89

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !26
  %i.ab = and i32 %i.aa, 255                      ; 7 uses
  %i.ac = icmp samesign ult i32 %i.ab, 5
  br i1 %i.ac, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  store i32 3, ptr %4, align 4, !tbaa !11
  %i.ad = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %.not.i77 = icmp eq ptr %i.ad, null
  br i1 %.not.i77, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @udata_close_78(ptr noundef nonnull %i.ad)
  store ptr null, ptr %0, align 8, !tbaa !29
  br label %.critedge

bb.p:                                             ; preds = %bb.m
  br i1 %i.e, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.ae = shl nuw nsw i32 %i.ab, 2
  %i.af = add nuw nsw i32 %i.ae, 4
  %i.ag = icmp samesign ult i32 %3, %i.af
  br i1 %i.ag, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !26
  %i.aj = shl i32 %i.ai, 2
  %i.ak = icmp slt i32 %3, %i.aj
  br i1 %i.ak, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r, %bb.q
  store i32 3, ptr %4, align 4, !tbaa !11
  %i.al = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %.not.i79 = icmp eq ptr %i.al, null
  br i1 %.not.i79, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @udata_close_78(ptr noundef nonnull %i.al)
  store ptr null, ptr %0, align 8, !tbaa !29
  br label %.critedge

bb.u:                                             ; preds = %bb.r, %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !26 ; 2 uses
  %i.ao = add nuw nsw i32 %i.ab, 1
  %i.ap = icmp sgt i32 %i.an, %i.ao
  br i1 %i.ap, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.aq = shl i32 %i.an, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !30
  %.pre = load i8, ptr %1, align 1, !tbaa !18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.as = phi i8 [ %.pre, %bb.v ], [ %i.t, %bb.u ]
  %i.at = icmp ugt i8 %i.as, 2
  br i1 %i.at, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.au = load i32, ptr %i.z, align 4, !tbaa !26
  %i.av = lshr i32 %i.au, 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !31
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.not = icmp eq i32 %i.ab, 5
  br i1 %.not, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !26 ; 5 uses
  %i.az = trunc i32 %i.ay to i8
  %i.ba = and i8 %i.az, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %i.ba, ptr %i.bb, align 8, !tbaa !79
  %5 = lshr i32 %i.ay, 1
  %6 = trunc i32 %5 to i8
  %i.bc = and i8 %6, 1                            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !80
  %7 = lshr i32 %i.ay, 2                          ; 2 uses
  %8 = trunc i32 %7 to i8
  %i.be = and i8 %8, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i8 %i.be, ptr %i.bf, align 2, !tbaa !81
  %i.bg = shl i32 %i.ay, 12
  %i.bh = and i32 %i.bg, 251658240
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !31
  %i.bk = or i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !31
  %i.bl = lshr i32 %i.ay, 16
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !32
  %.not74 = icmp eq i8 %i.bc, 0
  br i1 %.not74, label %bb.aa, label %bb.ab

.thread:                                          ; preds = %bb.y
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !80
  %.not7483 = icmp eq i8 %i.bo, 0
  br i1 %.not7483, label %.thread87, label %.thread84

bb.aa:                                            ; preds = %bb.z
  %i.bp = trunc i32 %7 to i1
  %i.bq = icmp samesign ult i32 %i.ab, 8
  %or.cond5 = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %or.cond5, label %.thread84, label %bb.ad

.thread87:                                        ; preds = %.thread
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.bs = load i8, ptr %i.br, align 2, !tbaa !81
  %.not90 = icmp eq i8 %i.bs, 0
  br i1 %.not90, label %.thread89, label %.thread84

bb.ab:                                            ; preds = %bb.z
  %.old4 = icmp samesign ult i32 %i.ab, 8
  br i1 %.old4, label %.thread84, label %.thread86

.thread84:                                        ; preds = %.thread, %.thread87, %bb.aa, %bb.ab
  store i32 3, ptr %4, align 4, !tbaa !11
  %i.bt = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %.not.i81 = icmp eq ptr %i.bt, null
  br i1 %.not.i81, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %.thread84
  tail call void @udata_close_78(ptr noundef nonnull %i.bt)
  store ptr null, ptr %0, align 8, !tbaa !29
  br label %.critedge

bb.ad:                                            ; preds = %bb.aa
  %i.bu = icmp samesign ugt i32 %i.ab, 6
  br i1 %i.bu, label %.thread86, label %.thread89

.thread86:                                        ; preds = %bb.ab, %bb.ad
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !26
  %i.bx = load i32, ptr %i.am, align 4, !tbaa !26 ; 2 uses
  %i.by = icmp sgt i32 %i.bw, %i.bx
  br i1 %i.by, label %bb.ae, label %.thread89

bb.ae:                                            ; preds = %.thread86
  %i.bz = sext i32 %i.bx to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bz
  store ptr %i.ca, ptr %i.d, align 8, !tbaa !28
  br label %.thread89

.thread89:                                        ; preds = %.thread87, %bb.ae, %.thread86, %bb.ad, %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 59
  store i8 1, ptr %i.cb, align 1, !tbaa !82
  br label %.critedge

.critedge:                                        ; preds = %bb.ac, %.thread84, %bb.t, %bb.s, %bb.o, %bb.n, %bb.i, %bb.h, %bb.f, %bb.e, %.thread89
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @res_load_78(ptr nofree noundef captures(none) initializes((0, 64)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  %i.b = call ptr @udata_openChoice_78(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef %2, ptr noundef nonnull @_ZL12isAcceptablePvPKcS1_PK9UDataInfo, ptr noundef nonnull %i.a, ptr noundef %3) ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !29
  %i.c = load i32, ptr %3, align 4, !tbaa !11
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @udata_getMemory_78(ptr noundef %i.b)
  call fastcc void @_ZL8res_initP12ResourceDataPhPKviP10UErrorCode(ptr noundef nonnull %0, ptr noundef %i.a, ptr noundef %i.e, i32 noundef -1, ptr noundef nonnull %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

declare ptr @udata_openChoice_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @udata_getMemory_78(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @res_unload_78(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @udata_close_78(ptr noundef nonnull %i.a)
  store ptr null, ptr %0, align 8, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @udata_close_78(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -128, 128) i32 @res_getPublicType_78(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i32 %0, 28
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr @_ZL12gPublicTypes, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !18
  %i.e = sext i8 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress uwtable
define ptr @res_getStringNoTrace_78(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %.mask = and i32 %1, -268435456
  %i.a = icmp eq i32 %.mask, 1610612736
  br i1 %i.a, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %1, 268435455                    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = icmp slt i32 %i.b, %i.d                  ; 2 uses
  %i.f = select i1 %i.e, i32 0, i32 %i.d
  %.sink47 = sub i32 %i.b, %i.f
  %.sink.in.v = select i1 %i.e, i64 40, i64 16
  %.sink.in = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.in.v
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !33
  %i.g = zext i32 %.sink47 to i64
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %.sink, i64 %i.g ; 9 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !35   ; 3 uses
  %i.j = zext i16 %i.i to i32                     ; 3 uses
  %i.k = and i32 %i.j, 64512
  %i.l = icmp eq i32 %i.k, 56320
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i32 @u_strlen_78(ptr noundef nonnull %i.h)
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.n = icmp ult i16 %i.i, -8209
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = and i32 %i.j, 1023
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.q = icmp samesign ult i16 %i.i, -8193
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = shl nuw i32 %i.j, 16
  %i.s = add nsw i32 %i.r, 537985024
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !35
  %i.v = zext i16 %i.u to i32
  %i.w = or disjoint i32 %i.s, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.z = load i16, ptr %i.y, align 2, !tbaa !35
  %i.aa = zext i16 %i.z to i32
  %i.ab = shl nuw i32 %i.aa, 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !35
  %i.ae = zext i16 %i.ad to i32
  %i.af = or disjoint i32 %i.ab, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 6
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  %i.ah = icmp ult i32 %1, 268435456
  br i1 %i.ah, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp eq i32 %1, 0
  br i1 %i.ai, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !25
  %i.al = zext nneg i32 %1 to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.al
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.an = phi ptr [ %i.am, %bb.k ], [ @_ZL12gEmptyString, %bb.j ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !26
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.c, %bb.g, %bb.h, %bb.e, %bb.l
  %.2 = phi ptr [ %i.h, %bb.c ], [ %i.ao, %bb.l ], [ %i.p, %bb.e ], [ %i.x, %bb.g ], [ %i.ag, %bb.h ], [ null, %bb.i ]
  %.1 = phi i32 [ %i.m, %bb.c ], [ %i.ap, %bb.l ], [ %i.o, %bb.e ], [ %i.w, %bb.g ], [ %i.af, %bb.h ], [ 0, %bb.i ]
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.o, label %bb.n

end_hunk_0
