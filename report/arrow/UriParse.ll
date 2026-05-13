inline.NumInlined: 232
inline.NumDeleted: 40
begin_hunk_0_@uriFreeUriMembersMmA:bb.a

bb.p:                                             ; preds = %bb.m
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !40 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not115 = icmp eq ptr %.pre, null
  br i1 %.not115, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !43
  %.not116 = icmp eq ptr %.pre, %i.af
  br i1 %.not116, label %.sink.split, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ag = getelementptr inbounds nuw i8, ptr %.094, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !35
  tail call void %i.ah(ptr noundef nonnull %.094, ptr noundef nonnull %.pre) #6
  br label %.sink.split

.sink.split:                                      ; preds = %bb.s, %bb.t, %.thread
  %.sink = phi ptr [ %i.r, %.thread ], [ %i.y, %bb.t ], [ %i.y, %bb.s ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink, i8 0, i64 16, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.p, %bb.q, %bb.r, %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !41 ; 2 uses
  %.not117 = icmp eq ptr %i.aj, null
  br i1 %.not117, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ak = getelementptr inbounds nuw i8, ptr %.094, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !35
  tail call void %i.al(ptr noundef nonnull %.094, ptr noundef nonnull %i.aj) #6
  store ptr null, ptr %i.ai, align 8, !tbaa !41
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !42 ; 2 uses
  %.not118 = icmp eq ptr %i.an, null
  br i1 %.not118, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ao = getelementptr inbounds nuw i8, ptr %.094, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !35
  tail call void %i.ap(ptr noundef nonnull %.094, ptr noundef nonnull %i.an) #6
  store ptr null, ptr %i.am, align 8, !tbaa !42
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.aq = load i32, ptr %i.d, align 4, !tbaa !34
  %.not119 = icmp eq i32 %i.aq, 0
  br i1 %.not119, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !44 ; 3 uses
  %.not120 = icmp eq ptr %i.as, null
  br i1 %.not120, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !45
  %.not121 = icmp eq ptr %i.as, %i.au
  br i1 %.not121, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.av = getelementptr inbounds nuw i8, ptr %.094, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !35
  tail call void %i.aw(ptr noundef nonnull %.094, ptr noundef nonnull %i.as) #6
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z, %bb.y
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !26 ; 2 uses
  %.not122 = icmp eq ptr %i.ay, null
  br i1 %.not122, label %bb.ak, label %.preheader

.preheader:                                       ; preds = %bb.ad
  %i.az = getelementptr inbounds nuw i8, ptr %.094, i64 32 ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %.preheader, %bb.ai
  %.093131 = phi ptr [ %i.ay, %.preheader ], [ %i.bb, %bb.ai ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.093131, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !28 ; 2 uses
  %i.bc = load i32, ptr %i.d, align 4, !tbaa !34
  %.not129 = icmp eq i32 %i.bc, 0
  br i1 %.not129, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bd = load ptr, ptr %.093131, align 8, !tbaa !23 ; 3 uses
  %.not130 = icmp eq ptr %i.bd, null
  br i1 %.not130, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.be = getelementptr inbounds nuw i8, ptr %.093131, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !25
  %i.bg = icmp ult ptr %i.bd, %i.bf
  br i1 %i.bg, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.bh = load ptr, ptr %i.az, align 8, !tbaa !35
  tail call void %i.bh(ptr noundef nonnull %.094, ptr noundef nonnull %i.bd) #6
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !35
  tail call void %i.bi(ptr noundef nonnull %.094, ptr noundef nonnull %.093131) #6
  %.not123 = icmp eq ptr %i.bb, null
  br i1 %.not123, label %bb.aj, label %bb.ae, !llvm.loop !46

bb.aj:                                            ; preds = %bb.ai
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ad
  %i.bj = load i32, ptr %i.d, align 4, !tbaa !34
  %.not124 = icmp eq i32 %i.bj, 0
  br i1 %.not124, label %bb.at, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !48 ; 3 uses
  %.not125 = icmp eq ptr %i.bl, null
  br i1 %.not125, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !49
  %.not126 = icmp eq ptr %i.bl, %i.bn
  br i1 %.not126, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bo = getelementptr inbounds nuw i8, ptr %.094, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !35
  tail call void %i.bp(ptr noundef nonnull %.094, ptr noundef nonnull %i.bl) #6
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.al
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !50 ; 3 uses
  %.not127 = icmp eq ptr %i.br, null
  br i1 %.not127, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !51
  %.not128 = icmp eq ptr %i.br, %i.bt
  br i1 %.not128, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bu = getelementptr inbounds nuw i8, ptr %.094, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !35
  tail call void %i.bv(ptr noundef nonnull %.094, ptr noundef nonnull %i.br) #6
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false)
  br label %bb.at

bb.at:                                            ; preds = %bb.ak, %bb.as, %bb.ap, %bb.c, %bb.a
  %.0 = phi i32 [ 2, %bb.a ], [ 10, %bb.c ], [ 0, %bb.ap ], [ 0, %bb.as ], [ 0, %bb.ak ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define void @uriFreeUriMembersA(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @uriFreeUriMembersMmA(ptr noundef %0, ptr noundef null) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @uri_TESTING_ONLY_ParseIpSixA(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.UriUriStructA, align 8      ; 6 uses
  %2 = alloca %struct.UriParserStateStructA, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a ; 2 uses
  call void @uriResetUriA(ptr noundef nonnull %1) #6
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr %1, ptr %2, align 8, !tbaa !7
  %i.d = load ptr, ptr @defaultMemoryManager, align 8, !tbaa !52
  %i.e = call ptr %i.d(ptr noundef nonnull @defaultMemoryManager, i64 noundef 16) #6
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.e, ptr %i.f, align 8, !tbaa !42
  %i.g = call fastcc ptr @uriParseIPv6address2A(ptr noundef %2, ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull @defaultMemoryManager)
  %i.h = call i32 @uriFreeUriMembersMmA(ptr noundef nonnull %1, ptr noundef nonnull @defaultMemoryManager) ; 0 uses
  %i.i = icmp eq ptr %i.g, %i.b
  %i.j = zext i1 %i.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  ret i32 %i.j
}

declare void @uriResetUriA(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @uriParseIPv6address2A(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = alloca [4 x i8], align 1                 ; 16 uses
  %i.c = alloca [14 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 3 uses
  %.not = icmp ult ptr %1, %2
  br i1 %.not, label %.preheader381, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !7
  %i.g = tail call i32 @uriFreeUriMembersMmA(ptr noundef %i.f, ptr noundef %3) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.h, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.i, align 8, !tbaa !32
  br label %.thread372

.preheader:                                       ; preds = %.thread339
  %scevgep = getelementptr i8, ptr %.2297, i64 %i.a
  %i.j = sub i64 0, %.2297.lcssa706717
  %scevgep718 = getelementptr i8, ptr %scevgep, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.aj
  %.1296 = phi ptr [ %i.en, %bb.aj ], [ %i.kn, %.preheader ] ; 18 uses
  %.1278 = phi i32 [ %.2279, %bb.aj ], [ 0, %.preheader ] ; 17 uses
  %.1272 = phi i32 [ %.2273, %bb.aj ], [ 1, %.preheader ] ; 5 uses
  %i.k = load i8, ptr %.1296, align 1, !tbaa !12  ; 2 uses
  switch i8 %i.k, label %bb.ai [
    i8 48, label %bb.d
    i8 49, label %bb.d
    i8 50, label %bb.d
    i8 51, label %bb.d
    i8 52, label %bb.d
    i8 53, label %bb.d
    i8 54, label %bb.d
    i8 55, label %bb.d
    i8 56, label %bb.d
    i8 57, label %bb.d
    i8 46, label %bb.g
    i8 93, label %bb.u
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.l = icmp eq i32 %.1278, 4
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %0, align 8, !tbaa !7
  %i.n = call i32 @uriFreeUriMembersMmA(ptr noundef %i.m, ptr noundef %3) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.1296, ptr %i.o, align 8, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.p, align 8, !tbaa !32
  br label %.thread372

bb.f:                                             ; preds = %bb.d
  %i.q = add nsw i8 %i.k, -48
  %i.r = add nsw i32 %.1278, 1
  %i.s = sext i32 %.1278 to i64
  %i.t = getelementptr inbounds i8, ptr %i.b, i64 %i.s
  store i8 %i.q, ptr %i.t, align 1, !tbaa !12
  br label %bb.aj

bb.g:                                             ; preds = %bb.c
  %i.u = icmp eq i32 %.1272, 4
  %i.v = and i32 %.1278, -5
  %i.w = icmp eq i32 %i.v, 0
  %or.cond5 = select i1 %i.u, i1 true, i1 %i.w
  br i1 %or.cond5, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %0, align 8, !tbaa !7
  %i.y = call i32 @uriFreeUriMembersMmA(ptr noundef %i.x, ptr noundef %3) ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.1296, ptr %i.z, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.aa, align 8, !tbaa !32
  br label %.thread372

bb.i:                                             ; preds = %bb.g
  %i.ab = icmp sgt i32 %.1278, 1
  %i.ac = load i8, ptr %i.b, align 1              ; 3 uses
  %i.ad = zext i8 %i.ac to i32
  %i.ae = icmp eq i8 %i.ac, 0
  %or.cond9 = select i1 %i.ab, i1 %i.ae, i1 false
  br i1 %or.cond9, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = zext nneg i32 %.1278 to i64
  %i.ag = sub nsw i64 0, %i.af
  %i.ah = getelementptr inbounds i8, ptr %.1296, i64 %i.ag
  %i.ai = load ptr, ptr %0, align 8, !tbaa !7
  %i.aj = call i32 @uriFreeUriMembersMmA(ptr noundef %i.ai, ptr noundef %3) ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !31
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.al, align 8, !tbaa !32
  br label %.thread372

bb.k:                                             ; preds = %bb.i
  %i.am = icmp sgt i32 %.1278, 2
  %i.an = load i8, ptr %i.d, align 1              ; 3 uses
  %i.ao = zext i8 %i.an to i32
  %i.ap = icmp eq i8 %i.an, 0
  %or.cond13 = select i1 %i.am, i1 %i.ap, i1 false
  br i1 %or.cond13, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = zext nneg i32 %.1278 to i64
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = getelementptr inbounds i8, ptr %.1296, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.au = load ptr, ptr %0, align 8, !tbaa !7
  %i.av = call i32 @uriFreeUriMembersMmA(ptr noundef %i.au, ptr noundef %3) ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.aw, align 8, !tbaa !31
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.ax, align 8, !tbaa !32
  br label %.thread372

bb.m:                                             ; preds = %bb.k
  %i.ay = icmp eq i32 %.1278, 3
  br i1 %i.ay, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.az = mul nuw nsw i32 %i.ad, 100
  %i.ba = mul nuw nsw i32 %i.ao, 10
  %i.bb = add nuw nsw i32 %i.ba, %i.az
  %i.bc = load i8, ptr %i.e, align 1, !tbaa !12
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nuw nsw i32 %i.bb, %i.bd
  %i.bf = icmp samesign ugt i32 %i.be, 255
  br i1 %i.bf, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.bg = icmp ugt i8 %i.ac, 2
  %i.bh = load ptr, ptr %0, align 8, !tbaa !7
  %i.bi = call i32 @uriFreeUriMembersMmA(ptr noundef %i.bh, ptr noundef %3) ; 0 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %i.bg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds i8, ptr %.1296, i64 -3
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !31
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.bl, align 8, !tbaa !32
  br label %.thread372

bb.q:                                             ; preds = %bb.o
  %i.bm = icmp ugt i8 %i.an, 5
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.bm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds i8, ptr %.1296, i64 -2
  store ptr %i.bo, ptr %i.bj, align 8, !tbaa !31
  store i32 1, ptr %i.bn, align 8, !tbaa !32
  br label %.thread372

bb.s:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds i8, ptr %.1296, i64 -1
  store ptr %i.bp, ptr %i.bj, align 8, !tbaa !31
  store i32 1, ptr %i.bn, align 8, !tbaa !32
  br label %.thread372

bb.t:                                             ; preds = %bb.m, %bb.n
  %i.bq = call zeroext i8 @uriGetOctetValue(ptr noundef nonnull %i.b, i32 noundef %.1278) #6
  %i.br = load ptr, ptr %0, align 8, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !42
  %i.bu = sext i32 %.1272 to i64
  %i.bv = getelementptr i8, ptr %i.bt, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 12
  store i8 %i.bq, ptr %i.bw, align 1, !tbaa !12
  %i.bx = add nsw i32 %.1272, 1
  br label %bb.aj

bb.u:                                             ; preds = %bb.c
  %i.by = icmp ne i32 %.1272, 3
  %i.bz = and i32 %.1278, -5
  %i.ca = icmp eq i32 %i.bz, 0
  %or.cond17 = select i1 %i.by, i1 true, i1 %i.ca
end_hunk_0
begin_hunk_1_@uriFreeUriMembersMmW:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  br label %.sink.split

bb.p:                                             ; preds = %bb.m
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !80 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not115 = icmp eq ptr %.pre, null
  br i1 %.not115, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !81
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !82
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !83
  %.not116 = icmp eq ptr %.pre, %i.af
  br i1 %.not116, label %.sink.split, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ag = getelementptr inbounds nuw i8, ptr %.094, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !35
  tail call void %i.ah(ptr noundef nonnull %.094, ptr noundef nonnull %.pre) #6
  br label %.sink.split

.sink.split:                                      ; preds = %bb.s, %bb.t, %.thread
  %.sink = phi ptr [ %i.r, %.thread ], [ %i.y, %bb.t ], [ %i.y, %bb.s ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink, i8 0, i64 16, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.p, %bb.q, %bb.r, %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !81 ; 2 uses
  %.not117 = icmp eq ptr %i.aj, null
  br i1 %.not117, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ak = getelementptr inbounds nuw i8, ptr %.094, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !35
  tail call void %i.al(ptr noundef nonnull %.094, ptr noundef nonnull %i.aj) #6
  store ptr null, ptr %i.ai, align 8, !tbaa !81
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !82 ; 2 uses
  %.not118 = icmp eq ptr %i.an, null
  br i1 %.not118, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ao = getelementptr inbounds nuw i8, ptr %.094, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !35
  tail call void %i.ap(ptr noundef nonnull %.094, ptr noundef nonnull %i.an) #6
  store ptr null, ptr %i.am, align 8, !tbaa !82
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.aq = load i32, ptr %i.d, align 4, !tbaa !75
  %.not119 = icmp eq i32 %i.aq, 0
  br i1 %.not119, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !84 ; 3 uses
  %.not120 = icmp eq ptr %i.as, null
  br i1 %.not120, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !85
  %.not121 = icmp eq ptr %i.as, %i.au
  br i1 %.not121, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.av = getelementptr inbounds nuw i8, ptr %.094, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !35
  tail call void %i.aw(ptr noundef nonnull %.094, ptr noundef nonnull %i.as) #6
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z, %bb.y
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !67 ; 2 uses
  %.not122 = icmp eq ptr %i.ay, null
  br i1 %.not122, label %bb.ak, label %.preheader

.preheader:                                       ; preds = %bb.ad
  %i.az = getelementptr inbounds nuw i8, ptr %.094, i64 32 ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %.preheader, %bb.ai
  %.093131 = phi ptr [ %i.ay, %.preheader ], [ %i.bb, %bb.ai ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.093131, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !69 ; 2 uses
  %i.bc = load i32, ptr %i.d, align 4, !tbaa !75
  %.not129 = icmp eq i32 %i.bc, 0
  br i1 %.not129, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bd = load ptr, ptr %.093131, align 8, !tbaa !64 ; 3 uses
  %.not130 = icmp eq ptr %i.bd, null
  br i1 %.not130, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.be = getelementptr inbounds nuw i8, ptr %.093131, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !66
  %i.bg = icmp ult ptr %i.bd, %i.bf
  br i1 %i.bg, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.bh = load ptr, ptr %i.az, align 8, !tbaa !35
  tail call void %i.bh(ptr noundef nonnull %.094, ptr noundef nonnull %i.bd) #6
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !35
  tail call void %i.bi(ptr noundef nonnull %.094, ptr noundef nonnull %.093131) #6
  %.not123 = icmp eq ptr %i.bb, null
  br i1 %.not123, label %bb.aj, label %bb.ae, !llvm.loop !86

bb.aj:                                            ; preds = %bb.ai
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ad
  %i.bj = load i32, ptr %i.d, align 4, !tbaa !75
  %.not124 = icmp eq i32 %i.bj, 0
  br i1 %.not124, label %bb.at, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !87 ; 3 uses
  %.not125 = icmp eq ptr %i.bl, null
  br i1 %.not125, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !88
  %.not126 = icmp eq ptr %i.bl, %i.bn
  br i1 %.not126, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bo = getelementptr inbounds nuw i8, ptr %.094, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !35
  tail call void %i.bp(ptr noundef nonnull %.094, ptr noundef nonnull %i.bl) #6
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.al
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !89 ; 3 uses
  %.not127 = icmp eq ptr %i.br, null
  br i1 %.not127, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !90
  %.not128 = icmp eq ptr %i.br, %i.bt
  br i1 %.not128, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bu = getelementptr inbounds nuw i8, ptr %.094, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !35
  tail call void %i.bv(ptr noundef nonnull %.094, ptr noundef nonnull %i.br) #6
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false)
  br label %bb.at

bb.at:                                            ; preds = %bb.ak, %bb.as, %bb.ap, %bb.c, %bb.a
  %.0 = phi i32 [ 2, %bb.a ], [ 10, %bb.c ], [ 0, %bb.ap ], [ 0, %bb.as ], [ 0, %bb.ak ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @uriFreeUriMembersW(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @uriFreeUriMembersMmW(ptr noundef %0, ptr noundef null) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @uri_TESTING_ONLY_ParseIpSixW(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.UriUriStructW, align 8      ; 6 uses
  %2 = alloca %struct.UriParserStateStructW, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.a = tail call i64 @wcslen(ptr noundef %0) #7
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a ; 2 uses
  call void @uriResetUriW(ptr noundef nonnull %1) #6
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr %1, ptr %2, align 8, !tbaa !54
  %i.d = load ptr, ptr @defaultMemoryManager, align 8, !tbaa !52
  %i.e = call ptr %i.d(ptr noundef nonnull @defaultMemoryManager, i64 noundef 16) #6
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.e, ptr %i.f, align 8, !tbaa !82
  %i.g = call fastcc ptr @uriParseIPv6address2W(ptr noundef %2, ptr noundef %0, ptr noundef %i.b, ptr noundef nonnull @defaultMemoryManager)
  %i.h = call i32 @uriFreeUriMembersMmW(ptr noundef nonnull %1, ptr noundef nonnull @defaultMemoryManager) ; 0 uses
  %i.i = icmp eq ptr %i.g, %i.b
  %i.j = zext i1 %i.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  ret i32 %i.j
}

declare void @uriResetUriW(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @uriParseIPv6address2W(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 16 uses
  %i.b = alloca [14 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 3 uses
  %.not = icmp ult ptr %1, %2
  br i1 %.not, label %.preheader381, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !54
  %i.f = tail call i32 @uriFreeUriMembersMmW(ptr noundef %i.e, ptr noundef %3) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.g, align 8, !tbaa !72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.h, align 8, !tbaa !73
  br label %.thread372

.preheader:                                       ; preds = %.thread339, %bb.ai
  %.1296 = phi ptr [ %i.em, %bb.ai ], [ %i.kn, %.thread339 ] ; 18 uses
  %.1278 = phi i32 [ %.2279, %bb.ai ], [ 0, %.thread339 ] ; 17 uses
  %.1272 = phi i32 [ %.2273, %bb.ai ], [ 1, %.thread339 ] ; 5 uses
  %i.i = load i32, ptr %.1296, align 4, !tbaa !3  ; 2 uses
  switch i32 %i.i, label %bb.ah [
    i32 48, label %bb.c
    i32 49, label %bb.c
    i32 50, label %bb.c
    i32 51, label %bb.c
    i32 52, label %bb.c
    i32 53, label %bb.c
    i32 54, label %bb.c
    i32 55, label %bb.c
    i32 56, label %bb.c
    i32 57, label %bb.c
    i32 46, label %bb.f
    i32 93, label %bb.t
  ]

bb.c:                                             ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader
  %i.j = icmp eq i32 %.1278, 4
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !54
  %i.l = call i32 @uriFreeUriMembersMmW(ptr noundef %i.k, ptr noundef %3) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.1296, ptr %i.m, align 8, !tbaa !72
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.n, align 8, !tbaa !73
  br label %.thread372

bb.e:                                             ; preds = %bb.c
  %i.o = trunc nuw nsw i32 %i.i to i8
  %i.p = add nsw i8 %i.o, -48
  %i.q = add nsw i32 %.1278, 1
  %i.r = sext i32 %.1278 to i64
  %i.s = getelementptr inbounds i8, ptr %i.a, i64 %i.r
  store i8 %i.p, ptr %i.s, align 1, !tbaa !12
  br label %bb.ai

bb.f:                                             ; preds = %.preheader
  %i.t = icmp eq i32 %.1272, 4
  %i.u = and i32 %.1278, -5
  %i.v = icmp eq i32 %i.u, 0
  %or.cond5 = select i1 %i.t, i1 true, i1 %i.v
  br i1 %or.cond5, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %0, align 8, !tbaa !54
  %i.x = call i32 @uriFreeUriMembersMmW(ptr noundef %i.w, ptr noundef %3) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.1296, ptr %i.y, align 8, !tbaa !72
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.z, align 8, !tbaa !73
  br label %.thread372

bb.h:                                             ; preds = %bb.f
  %i.aa = icmp sgt i32 %.1278, 1
  %i.ab = load i8, ptr %i.a, align 1              ; 3 uses
  %i.ac = zext i8 %i.ab to i32
  %i.ad = icmp eq i8 %i.ab, 0
  %or.cond9 = select i1 %i.aa, i1 %i.ad, i1 false
  br i1 %or.cond9, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = zext nneg i32 %.1278 to i64
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds [4 x i8], ptr %.1296, i64 %i.af
  %i.ah = load ptr, ptr %0, align 8, !tbaa !54
  %i.ai = call i32 @uriFreeUriMembersMmW(ptr noundef %i.ah, ptr noundef %3) ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !72
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.ak, align 8, !tbaa !73
  br label %.thread372

bb.j:                                             ; preds = %bb.h
  %i.al = icmp sgt i32 %.1278, 2
  %i.am = load i8, ptr %i.c, align 1              ; 3 uses
  %i.an = zext i8 %i.am to i32
  %i.ao = icmp eq i8 %i.am, 0
  %or.cond13 = select i1 %i.al, i1 %i.ao, i1 false
  br i1 %or.cond13, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = zext nneg i32 %.1278 to i64
  %i.aq = sub nsw i64 0, %i.ap
  %i.ar = getelementptr inbounds [4 x i8], ptr %.1296, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load ptr, ptr %0, align 8, !tbaa !54
  %i.au = call i32 @uriFreeUriMembersMmW(ptr noundef %i.at, ptr noundef %3) ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.as, ptr %i.av, align 8, !tbaa !72
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.aw, align 8, !tbaa !73
  br label %.thread372

bb.l:                                             ; preds = %bb.j
  %i.ax = icmp eq i32 %.1278, 3
  br i1 %i.ax, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.ay = mul nuw nsw i32 %i.ac, 100
  %i.az = mul nuw nsw i32 %i.an, 10
  %i.ba = add nuw nsw i32 %i.az, %i.ay
  %i.bb = load i8, ptr %i.d, align 1, !tbaa !12
  %i.bc = zext i8 %i.bb to i32
  %i.bd = add nuw nsw i32 %i.ba, %i.bc
  %i.be = icmp samesign ugt i32 %i.bd, 255
  br i1 %i.be, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.bf = icmp ugt i8 %i.ab, 2
  %i.bg = load ptr, ptr %0, align 8, !tbaa !54
  %i.bh = call i32 @uriFreeUriMembersMmW(ptr noundef %i.bg, ptr noundef %3) ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %i.bf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds i8, ptr %.1296, i64 -12
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !72
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.bk, align 8, !tbaa !73
  br label %.thread372

bb.p:                                             ; preds = %bb.n
  %i.bl = icmp ugt i8 %i.am, 5
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.bl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds i8, ptr %.1296, i64 -8
  store ptr %i.bn, ptr %i.bi, align 8, !tbaa !72
  store i32 1, ptr %i.bm, align 8, !tbaa !73
  br label %.thread372

bb.r:                                             ; preds = %bb.p
  %i.bo = getelementptr inbounds i8, ptr %.1296, i64 -4
  store ptr %i.bo, ptr %i.bi, align 8, !tbaa !72
  store i32 1, ptr %i.bm, align 8, !tbaa !73
  br label %.thread372

bb.s:                                             ; preds = %bb.l, %bb.m
  %i.bp = call zeroext i8 @uriGetOctetValue(ptr noundef nonnull %i.a, i32 noundef %.1278) #6
  %i.bq = load ptr, ptr %0, align 8, !tbaa !54
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !82
  %i.bt = sext i32 %.1272 to i64
  %i.bu = getelementptr i8, ptr %i.bs, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 12
  store i8 %i.bp, ptr %i.bv, align 1, !tbaa !12
  %i.bw = add nsw i32 %.1272, 1
  br label %bb.ai

bb.t:                                             ; preds = %.preheader
  %i.bx = icmp ne i32 %.1272, 3
  %i.by = and i32 %.1278, -5
  %i.bz = icmp eq i32 %i.by, 0
  %or.cond17 = select i1 %i.bx, i1 true, i1 %i.bz
  br i1 %or.cond17, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ca = load ptr, ptr %0, align 8, !tbaa !54
  %i.cb = call i32 @uriFreeUriMembersMmW(ptr noundef %i.ca, ptr noundef %3) ; 0 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_1
