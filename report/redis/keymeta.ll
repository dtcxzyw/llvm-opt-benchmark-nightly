Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/keymeta?download=true
inline.NumInlined: 16
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@keyMetaTransition:bb.a

bb.q:                                             ; preds = %bb.o
  %i.ak = getelementptr inbounds i8, ptr %.226.1, i64 -8
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.al = zext nneg i32 %i.af to i64
  %i.am = sub nsw i64 0, %i.al
  %i.an = getelementptr inbounds [8 x i8], ptr %.2.1, i64 %i.am
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.226.2 = phi ptr [ %i.aj, %bb.p ], [ %i.ak, %bb.q ], [ %.226.1, %bb.r ] ; 5 uses
  %.2.2 = phi ptr [ %i.ah, %bb.p ], [ %.2.1, %bb.q ], [ %i.an, %bb.r ] ; 4 uses
  %.mask37 = and i32 %i.b, 120
  %.not33.2 = icmp eq i32 %.mask37, 0
  br i1 %.not33.2, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ao = lshr i32 %i.h, 3
  %i.ap = and i32 %i.b, 8
  %.not31.3 = icmp eq i32 %i.ap, 0
  %i.aq = and i32 %i.ao, 1                        ; 2 uses
  br i1 %.not31.3, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not32.3 = icmp eq i32 %i.aq, 0
  br i1 %.not32.3, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ar = load i64, ptr %.226.2, align 8, !tbaa !42
  %i.as = getelementptr inbounds i8, ptr %.2.2, i64 -8
  store i64 %i.ar, ptr %.2.2, align 8, !tbaa !42
  %i.at = load i64, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 656), align 16, !tbaa !54
  %i.au = getelementptr inbounds i8, ptr %.226.2, i64 -8
  store i64 %i.at, ptr %.226.2, align 8, !tbaa !42
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.av = getelementptr inbounds i8, ptr %.226.2, i64 -8
  br label %bb.y

bb.x:                                             ; preds = %bb.t
  %i.aw = zext nneg i32 %i.aq to i64
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = getelementptr inbounds [8 x i8], ptr %.2.2, i64 %i.ax
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.226.3 = phi ptr [ %i.au, %bb.v ], [ %i.av, %bb.w ], [ %.226.2, %bb.x ] ; 5 uses
  %.2.3 = phi ptr [ %i.as, %bb.v ], [ %.2.2, %bb.w ], [ %i.ay, %bb.x ] ; 4 uses
  %.mask38 = and i32 %i.b, 112
  %.not33.3 = icmp eq i32 %.mask38, 0
  br i1 %.not33.3, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.az = lshr i32 %i.h, 4
  %i.ba = and i32 %i.b, 16
  %.not31.4 = icmp eq i32 %i.ba, 0
  %i.bb = and i32 %i.az, 1                        ; 2 uses
  br i1 %.not31.4, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not32.4 = icmp eq i32 %i.bb, 0
  br i1 %.not32.4, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bc = load i64, ptr %.226.3, align 8, !tbaa !42
  %i.bd = getelementptr inbounds i8, ptr %.2.3, i64 -8
  store i64 %i.bc, ptr %.2.3, align 8, !tbaa !42
  %i.be = load i64, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 808), align 8, !tbaa !54
  %i.bf = getelementptr inbounds i8, ptr %.226.3, i64 -8
  store i64 %i.be, ptr %.226.3, align 8, !tbaa !42
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.bg = getelementptr inbounds i8, ptr %.226.3, i64 -8
  br label %bb.ae

bb.ad:                                            ; preds = %bb.z
  %i.bh = zext nneg i32 %i.bb to i64
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = getelementptr inbounds [8 x i8], ptr %.2.3, i64 %i.bi
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.226.4 = phi ptr [ %i.bf, %bb.ab ], [ %i.bg, %bb.ac ], [ %.226.3, %bb.ad ] ; 5 uses
  %.2.4 = phi ptr [ %i.bd, %bb.ab ], [ %.2.3, %bb.ac ], [ %i.bj, %bb.ad ] ; 4 uses
  %.mask39 = and i32 %i.b, 96
  %.not33.4 = icmp eq i32 %.mask39, 0
  br i1 %.not33.4, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bk = lshr i32 %i.h, 5
  %i.bl = and i32 %i.b, 32
  %.not31.5 = icmp eq i32 %i.bl, 0
  %i.bm = and i32 %i.bk, 1                        ; 2 uses
  br i1 %.not31.5, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not32.5 = icmp eq i32 %i.bm, 0
  br i1 %.not32.5, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bn = load i64, ptr %.226.4, align 8, !tbaa !42
  %i.bo = getelementptr inbounds i8, ptr %.2.4, i64 -8
  store i64 %i.bn, ptr %.2.4, align 8, !tbaa !42
  %i.bp = load i64, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 960), align 16, !tbaa !54
  %i.bq = getelementptr inbounds i8, ptr %.226.4, i64 -8
  store i64 %i.bp, ptr %.226.4, align 8, !tbaa !42
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.br = getelementptr inbounds i8, ptr %.226.4, i64 -8
  br label %bb.ak

bb.aj:                                            ; preds = %bb.af
  %i.bs = zext nneg i32 %i.bm to i64
  %i.bt = sub nsw i64 0, %i.bs
  %i.bu = getelementptr inbounds [8 x i8], ptr %.2.4, i64 %i.bt
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %.226.5 = phi ptr [ %i.bq, %bb.ah ], [ %i.br, %bb.ai ], [ %.226.4, %bb.aj ] ; 2 uses
  %.2.5 = phi ptr [ %i.bo, %bb.ah ], [ %.2.4, %bb.ai ], [ %i.bu, %bb.aj ]
  %.mask40 = and i32 %i.b, 64
  %.not33.5 = icmp eq i32 %.mask40, 0
  %i.bv = and i32 %i.h, 64
  %.not32.6 = icmp eq i32 %i.bv, 0
  %or.cond = select i1 %.not33.5, i1 true, i1 %.not32.6
  br i1 %or.cond, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bw = load i64, ptr %.226.5, align 8, !tbaa !42
  store i64 %i.bw, ptr %.2.5, align 8, !tbaa !42
  %i.bx = load i64, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 1112), align 8, !tbaa !54
  store i64 %i.bx, ptr %.226.5, align 8, !tbaa !42
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.m, %bb.s, %bb.y, %bb.ae, %bb.ak, %bb.al, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 8) i32 @keyMetaClassCreate(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #4 !guid !147 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %keyMetaClassEncode.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %3, align 8, !tbaa !148
  %i.c = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #18
  %.not.i = icmp ne i64 %i.c, 4
  %or.cond.i = icmp ugt i32 %2, 31
  %or.cond42.i = or i1 %or.cond.i, %.not.i
  br i1 %or.cond42.i, label %keyMetaClassEncode.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %1, align 1                ; 6 uses
  %i.e = shl i32 %i.d, 24
  %i.f = ashr exact i32 %i.e, 24
  %memchr.5.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.15, i32 %i.f, i64 65) ; 2 uses
  %.not41.not.5.i = icmp eq ptr %memchr.5.i, null
  br i1 %.not41.not.5.i, label %keyMetaClassEncode.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = shl i32 %i.d, 16
  %i.h = ashr i32 %i.g, 24
  %memchr.6.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.15, i32 %i.h, i64 65) ; 2 uses
  %.not41.not.6.i = icmp eq ptr %memchr.6.i, null
  br i1 %.not41.not.6.i, label %keyMetaClassEncode.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = shl i32 %i.d, 8
  %i.j = ashr i32 %i.i, 24
  %memchr.7.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.15, i32 %i.j, i64 65) ; 2 uses
  %.not41.not.7.i = icmp eq ptr %memchr.7.i, null
  br i1 %.not41.not.7.i, label %keyMetaClassEncode.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = ashr i32 %i.d, 24
  %memchr.8.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.15, i32 %i.k, i64 65) ; 2 uses
  %.not41.not.8.i = icmp eq ptr %memchr.8.i, null
  br i1 %.not41.not.8.i, label %keyMetaClassEncode.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = ptrtoint ptr %memchr.5.i to i64
  %i.m = sub i64 %i.l, ptrtoint (ptr @.str.15 to i64) ; 2 uses
  %i.n = trunc i64 %i.m to i32
  %i.o = shl i32 %i.n, 12
  %i.p = ptrtoint ptr %memchr.6.i to i64
  %i.q = sub i64 %i.p, ptrtoint (ptr @.str.15 to i64) ; 2 uses
  %i.r = trunc i64 %i.q to i32
  %i.s = shl i32 %i.r, 6
  %i.t = or i32 %i.s, %i.o
  %i.u = ptrtoint ptr %memchr.7.i to i64
  %i.v = sub i64 %i.u, ptrtoint (ptr @.str.15 to i64) ; 2 uses
  %i.w = trunc i64 %i.v to i32
  %i.x = or i32 %i.t, %i.w
  %i.y = shl i64 %i.m, 12
  %i.z = shl i64 %i.q, 6
  %i.aa = or i64 %i.z, %i.y
  %i.ab = or i64 %i.aa, %i.v
  %4 = ptrtoint ptr %memchr.8.i to i64
  %5 = sub i64 %4, ptrtoint (ptr @.str.15 to i64) ; 2 uses
  %i.ac = trunc i64 %5 to i32
  %i.ad = shl i32 %i.x, 14
  %i.ae = shl i32 %i.ac, 8
  %i.af = or i32 %i.ad, %i.ae
  %i.ag = shl nuw nsw i32 %2, 3
  %i.ah = or disjoint i32 %i.af, %i.ag
  %i.ai = trunc i64 %i.b to i32
  %i.aj = and i32 %i.ai, 7
  %i.ak = or disjoint i32 %i.ah, %i.aj
  %6 = shl i64 %i.ab, 16
  %i.al = shl i64 %5, 10
  %i.am = zext nneg i32 %2 to i64
  %7 = or disjoint i64 %6, %i.am
  %8 = or i64 %7, %i.al
  %i.an = or i64 %8, 3478117000801157120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.ao = call fastcc i32 @keyMetaClassLookupByName(ptr noundef nonnull %1, ptr noundef %i.a) ; 2 uses
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !13
  %.not32 = icmp eq i32 %i.ap, 0
  br i1 %.not32, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.aq = icmp eq i32 %i.ao, -1
  br i1 %i.aq, label %.preheader.preheader, label %bb.i, !prof !47

.preheader.preheader:                             ; preds = %bb.h
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 296), align 8, !tbaa !41
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %.loopexit, label %.preheader.1

bb.i:                                             ; preds = %bb.h
  tail call void @_serverAssert(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 752) #16
  tail call void @abort() #17
  unreachable

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 448), align 16, !tbaa !41
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.loopexit, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 600), align 8, !tbaa !41
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.loopexit, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 752), align 16, !tbaa !41
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.loopexit, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.az = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 904), align 8, !tbaa !41
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.loopexit, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.bb = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 1056), align 16, !tbaa !41
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %.loopexit, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.bd = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 1208), align 8, !tbaa !41
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %.loopexit, label %.thread

.loopexit:                                        ; preds = %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %bb.g
  %.128 = phi i32 [ %i.ao, %bb.g ], [ 1, %.preheader.preheader ], [ 2, %.preheader.1 ], [ 3, %.preheader.2 ], [ 4, %.preheader.3 ], [ 5, %.preheader.4 ], [ 6, %.preheader.5 ], [ 7, %.preheader.6 ] ; 2 uses
  %i.bf = sext i32 %.128 to i64
  %i.bg = getelementptr inbounds [152 x i8], ptr @keyMetaClass, i64 %i.bf ; 10 uses
  store i32 %i.d, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i8 0, ptr %i.bh, align 4, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bj, ptr noundef nonnull align 1 dereferenceable(5) @.str.16, i64 5, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 21
  store i32 %i.d, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 25
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store i64 %i.an, ptr %i.bk, align 8, !tbaa !149
  store ptr %0, ptr %i.bi, align 8, !tbaa !150
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 144
  store i32 1, ptr %i.bl, align 8, !tbaa !41
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 148
  store i32 %i.ak, ptr %i.bm, align 4, !tbaa !104
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bn, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 104, i1 false), !tbaa.struct !152
  br label %.thread

.thread:                                          ; preds = %.preheader.6, %.loopexit
  %.0 = phi i32 [ %.128, %.loopexit ], [ 0, %.preheader.6 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %keyMetaClassEncode.exit.thread

keyMetaClassEncode.exit.thread:                   ; preds = %.thread, %bb.b, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ %.0, %.thread ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @keyMetaClassRelease(i32 noundef %0) local_unnamed_addr #12 !guid !153 {
bb.a:
  %i.a = add i32 %0, -1
  %or.cond = icmp ult i32 %i.a, 7
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !41
  %.not = icmp eq i32 %i.e, 1
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %i.d, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @keyMetaSetMetadata(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #4 !guid !154 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = add i32 %2, -1
  %i.d = icmp ult i32 %i.c, 7
  br i1 %i.d, label %bb.c, label %bb.b, !prof !47

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 795) #16
  tail call void @abort() #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %2 to i64
  %i.f = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.h = load i32, ptr %i.g, align 8, !tbaa !41
  %.not = icmp eq i32 %i.h, 1
  br i1 %.not, label %bb.d, label %bb.v

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr %1, align 8
  %i.j = lshr i64 %i.i, 32
  %i.k = trunc nuw i64 %i.j to i32
  %i.l = shl nuw nsw i32 1, %2                    ; 2 uses
  %i.m = and i32 %i.l, %i.k
  %.not53 = icmp eq i32 %i.m, 0
  br i1 %.not53, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @kvobjMetaRef(ptr noundef nonnull %1, i32 noundef %2) #16
  store i64 %3, ptr %i.n, align 8, !tbaa !42
  br label %bb.v

bb.f:                                             ; preds = %bb.d
  %i.o = tail call ptr @kvobjGetKey(ptr noundef nonnull %1) #16 ; 4 uses
  %i.p = tail call i32 @getKeySlot(ptr noundef %i.o) #16 ; 7 uses
  %i.q = load i64, ptr %1, align 8
  %i.r = and i64 %i.q, 15
  %i.s = icmp eq i64 %i.r, 4
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !155
  %i.v = tail call i64 @estoreRemove(ptr noundef %i.u, i32 noundef %i.p, ptr noundef nonnull %1) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.050 = phi i64 [ %i.v, %bb.g ], [ 281474976710656, %bb.f ] ; 2 uses
  %i.w = tail call i64 @kvobjGetExpire(ptr noundef nonnull %1) #16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.x = load ptr, ptr %0, align 8, !tbaa !156
  %i.y = tail call ptr @kvstoreDictFindLink(ptr noundef %i.x, i32 noundef %i.p, ptr noundef %i.o, ptr noundef null) #16 ; 2 uses
  store ptr %i.y, ptr %i.a, align 8, !tbaa !158
  %.not54 = icmp eq ptr %i.y, null
  br i1 %.not54, label %bb.i, label %bb.j, !prof !159

bb.i:                                             ; preds = %bb.h
  tail call void @_serverAssert(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 827) #16
  tail call void @abort() #17
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr null, ptr %i.b, align 8, !tbaa !158
  %.not55 = icmp eq i64 %i.w, -1                  ; 2 uses
  br i1 %.not55, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !160
  %i.ab = tail call ptr @kvstoreDictFindLink(ptr noundef %i.aa, i32 noundef %i.p, ptr noundef %i.o, ptr noundef null) #16 ; 2 uses
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !158
  %.not56 = icmp eq ptr %i.ab, null
  br i1 %.not56, label %bb.l, label %bb.m, !prof !159

bb.l:                                             ; preds = %bb.k
  tail call void @_serverAssert(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 833) #16
  tail call void @abort() #17
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !161
  %.not57 = icmp eq i32 %i.ac, 0
  br i1 %.not57, label %bb.o, label %bb.n
end_hunk_0
