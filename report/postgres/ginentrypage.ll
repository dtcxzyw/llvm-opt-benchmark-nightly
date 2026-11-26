Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/ginentrypage?download=true
inline.NumInlined: 100
inline.NumDeleted: 26
begin_hunk_0_@GinFormTuple:bb.a
bb.k:                                             ; preds = %bb.j
  %i.au = call ptr @repalloc(ptr noundef nonnull %i.p, i64 noundef %i.al) #9 ; 3 uses
  %i.av = getelementptr i8, ptr %i.au, i64 6      ; 3 uses
  %.val58 = load i16, ptr %i.av, align 2
  %i.aw = and i16 %.val58, 8191
  %i.ax = zext nneg i16 %i.aw to i64              ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ax
  %i.az = sub nsw i64 %i.al, %i.ax
  call void @llvm.memset.p0.i64(ptr align 1 %i.ay, i8 0, i64 %i.az, i1 false)
  %i.ba = load i16, ptr %i.av, align 2
  %i.bb = and i16 %i.ba, -8192
  %i.bc = trunc nuw nsw i32 %i.ak to i16
  %i.bd = or disjoint i16 %i.bb, %i.bc
  store i16 %i.bd, ptr %i.av, align 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.052 = phi ptr [ %i.au, %bb.k ], [ %i.p, %bb.j ] ; 7 uses
  %.not56 = icmp eq ptr %4, null
  br i1 %.not56, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.052.val = load i16, ptr %.052, align 2
  %i.be = getelementptr i8, ptr %.052, i64 2
  %.052.val62 = load i16, ptr %i.be, align 2
  %i.bf = zext i16 %.052.val to i64
  %i.bg = shl nuw nsw i64 %i.bf, 16
  %i.bh = zext i16 %.052.val62 to i64
  %.masked = and i64 %i.bg, 2147418112
  %i.bi = getelementptr inbounds nuw i8, ptr %.052, i64 %.masked
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 1 %4, i64 %5, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.not57 = icmp eq i8 %3, 0
  br i1 %.not57, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %.052, i64 6
  %i.bl = load i16, ptr %i.bk, align 2
  %.not.i63 = icmp sgt i16 %i.bl, -1
  %..i64 = select i1 %.not.i63, i64 8, i64 16
  %i.bm = load i8, ptr %i.c, align 8, !range !4, !noundef !5
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = select i1 %i.bn, i64 0, i64 2
  %i.bp = getelementptr inbounds nuw i8, ptr %.052, i64 %..i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bo
  store i8 %3, ptr %i.bq, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.i
  %.0 = phi ptr [ null, %bb.i ], [ %.052, %bb.o ], [ %.052, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @index_form_tuple(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @errcode(i32 noundef) local_unnamed_addr #2

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @pfree(ptr noundef) local_unnamed_addr #2

declare ptr @repalloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @ginReadTuple(ptr nofree noundef readnone captures(none) %0, i16 noundef zeroext %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %.val18 = load i16, ptr %2, align 2
  %i.b = getelementptr i8, ptr %2, i64 2
  %.val19 = load i16, ptr %i.b, align 2
  %i.c = zext i16 %.val18 to i32
  %i.d = shl nuw i32 %i.c, 16                     ; 2 uses
  %i.e = zext i16 %.val19 to i32
  %.masked = and i32 %i.d, 2147418112
  %i.f = or disjoint i32 %.masked, %i.e
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 2 uses
  %i.i = getelementptr i8, ptr %2, i64 4
  %.val20 = load i16, ptr %i.i, align 2           ; 3 uses
  %i.j = zext i16 %.val20 to i32                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %.not = icmp sgt i32 %i.d, -1
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not15 = icmp eq i16 %.val20, 0
  br i1 %.not15, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = call ptr @ginPostingListDecode(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a) #9
  %i.l = load i32, ptr %i.a, align 4
  %.not16 = icmp eq i32 %i.l, %i.j
  br i1 %.not16, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.n = load i32, ptr %i.a, align 4
  %i.o = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.2, i32 noundef %i.j, i32 noundef %i.n) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 177, ptr noundef nonnull @__func__.ginReadTuple) #9
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.p = tail call ptr @palloc(i64 noundef 0) #9
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.q = zext i16 %.val20 to i64                  ; 2 uses
  %i.r = tail call ptr @palloc_mul(i64 noundef 6, i64 noundef %i.q) #9 ; 2 uses
  %i.s = mul nuw nsw i64 %i.q, 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.r, ptr nonnull align 1 %i.h, i64 %i.s, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.f
  %.0 = phi ptr [ %i.k, %bb.c ], [ %i.p, %bb.e ], [ %i.r, %bb.f ]
  store i32 %i.j, ptr %3, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.0
}

declare ptr @ginPostingListDecode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

declare ptr @palloc_mul(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ginEntryFillRoot(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 12
  %.val.i = load i16, ptr %i.a, align 4           ; 2 uses
  %i.b = icmp ult i16 %.val.i, 25
  %i.c = zext i16 %.val.i to i64
  %i.d = add nuw nsw i64 %i.c, 262120
  %i.e = lshr i64 %i.d, 2
  %i.f = and i64 %i.e, 65535
  %i.g = select i1 %i.b, i64 0, i64 %i.f
  %i.h = getelementptr i8, ptr %3, i64 20
  %i.i = getelementptr [4 x i8], ptr %i.h, i64 %i.g
  %.val3.i = load i32, ptr %i.i, align 4
  %i.j = and i32 %.val3.i, 32767
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 %i.k ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load i16, ptr %i.m, align 8
  %i.o = zext i16 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 6
  %i.r = load i16, ptr %i.q, align 2
  %i.s = and i16 %i.r, 2
  %.not.i = icmp eq i16 %i.s, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr i8, ptr %i.l, i64 4
  %.val22.i = load i16, ptr %i.t, align 2
  %i.u = icmp eq i16 %.val22.i, -1
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val20.i = load i16, ptr %i.l, align 2
  %i.v = getelementptr i8, ptr %i.l, i64 2
  %.val21.i = load i16, ptr %i.v, align 2
  %i.w = zext i16 %.val20.i to i32
  %i.x = shl nuw i32 %i.w, 16
  %i.y = zext i16 %.val21.i to i32
  %.masked.i = and i32 %i.x, 2147418112
  %i.z = add nuw nsw i32 %i.y, 7
  %narrow.i = add nuw i32 %i.z, %.masked.i
  %i.aa = and i32 %narrow.i, -8                   ; 2 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = tail call ptr @palloc(i64 noundef %i.ab) #9 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ac, ptr nonnull readonly align 2 %i.l, i64 %i.ab, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 6 ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = and i16 %i.ae, -8192
  %i.ag = trunc i32 %i.aa to i16
  %i.ah = or i16 %i.af, %i.ag
  store i16 %i.ah, ptr %i.ad, align 2
  br label %GinFormInteriorTuple.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.ai = getelementptr i8, ptr %i.l, i64 6       ; 2 uses
  %.val19.i = load i16, ptr %i.ai, align 2
  %i.aj = and i16 %.val19.i, 8191
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = tail call ptr @palloc(i64 noundef %i.ak) #9 ; 2 uses
  %.val.i14 = load i16, ptr %i.ai, align 2
  %i.am = and i16 %.val.i14, 8191
  %i.an = zext nneg i16 %i.am to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.al, ptr nonnull readonly align 2 %i.l, i64 %i.an, i1 false)
  br label %GinFormInteriorTuple.exit

GinFormInteriorTuple.exit:                        ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.al, %bb.d ], [ %i.ac, %bb.c ] ; 6 uses
  %i.ao = lshr i32 %2, 16
  %i.ap = trunc nuw i32 %i.ao to i16
  store i16 %i.ap, ptr %.0.i, align 2
  %i.aq = trunc i32 %2 to i16
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  store i16 %i.aq, ptr %i.ar, align 2
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  store i16 0, ptr %i.as, align 2
  %6 = getelementptr i8, ptr %.0.i, i64 6
  %.val13 = load i16, ptr %6, align 2
  %i.at = and i16 %.val13, 8191
  %i.au = zext nneg i16 %i.at to i64
  %i.av = tail call zeroext i16 @PageAddItemExtended(ptr noundef %1, ptr noundef nonnull %.0.i, i64 noundef %i.au, i16 noundef zeroext 0, i32 noundef 0) #9
  %i.aw = icmp eq i16 %i.av, 0
  br i1 %i.aw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %GinFormInteriorTuple.exit
  %i.ax = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.ay = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 731, ptr noundef nonnull @__func__.ginEntryFillRoot) #9
  unreachable

bb.f:                                             ; preds = %GinFormInteriorTuple.exit
  tail call void @pfree(ptr noundef nonnull %.0.i) #9
  %i.az = getelementptr i8, ptr %5, i64 12
  %.val.i15 = load i16, ptr %i.az, align 4        ; 2 uses
  %i.ba = icmp ult i16 %.val.i15, 25
  %i.bb = zext i16 %.val.i15 to i64
  %i.bc = add nuw nsw i64 %i.bb, 262120
  %i.bd = lshr i64 %i.bc, 2
  %i.be = and i64 %i.bd, 65535
  %i.bf = select i1 %i.ba, i64 0, i64 %i.be
  %i.bg = getelementptr i8, ptr %5, i64 20
  %i.bh = getelementptr [4 x i8], ptr %i.bg, i64 %i.bf
  %.val3.i16 = load i32, ptr %i.bh, align 4
  %i.bi = and i32 %.val3.i16, 32767
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 %i.bj ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bm = load i16, ptr %i.bl, align 8
  %i.bn = zext i16 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 6
  %i.bq = load i16, ptr %i.bp, align 2
  %i.br = and i16 %i.bq, 2
  %.not.i17 = icmp eq i16 %i.br, 0
  br i1 %.not.i17, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bs = getelementptr i8, ptr %i.bk, i64 4
  %.val22.i18 = load i16, ptr %i.bs, align 2
  %i.bt = icmp eq i16 %.val22.i18, -1
  br i1 %i.bt, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val20.i19 = load i16, ptr %i.bk, align 2
  %i.bu = getelementptr i8, ptr %i.bk, i64 2
  %.val21.i20 = load i16, ptr %i.bu, align 2
  %i.bv = zext i16 %.val20.i19 to i32
  %i.bw = shl nuw i32 %i.bv, 16
  %i.bx = zext i16 %.val21.i20 to i32
  %.masked.i21 = and i32 %i.bw, 2147418112
  %i.by = add nuw nsw i32 %i.bx, 7
  %narrow.i22 = add nuw i32 %i.by, %.masked.i21
  %i.bz = and i32 %narrow.i22, -8                 ; 2 uses
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = tail call ptr @palloc(i64 noundef %i.ca) #9 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.cb, ptr nonnull readonly align 2 %i.bk, i64 %i.ca, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 6 ; 2 uses
  %i.cd = load i16, ptr %i.cc, align 2
  %i.ce = and i16 %i.cd, -8192
  %i.cf = trunc i32 %i.bz to i16
  %i.cg = or i16 %i.ce, %i.cf
  store i16 %i.cg, ptr %i.cc, align 2
  br label %GinFormInteriorTuple.exit26

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.ch = getelementptr i8, ptr %i.bk, i64 6      ; 2 uses
  %.val19.i24 = load i16, ptr %i.ch, align 2
  %i.ci = and i16 %.val19.i24, 8191
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = tail call ptr @palloc(i64 noundef %i.cj) #9 ; 2 uses
  %.val.i25 = load i16, ptr %i.ch, align 2
  %i.cl = and i16 %.val.i25, 8191
  %i.cm = zext nneg i16 %i.cl to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ck, ptr nonnull readonly align 2 %i.bk, i64 %i.cm, i1 false)
  br label %GinFormInteriorTuple.exit26

GinFormInteriorTuple.exit26:                      ; preds = %bb.h, %bb.i
  %.0.i23 = phi ptr [ %i.ck, %bb.i ], [ %i.cb, %bb.h ] ; 6 uses
  %i.cn = lshr i32 %4, 16
  %i.co = trunc nuw i32 %i.cn to i16
  store i16 %i.co, ptr %.0.i23, align 2
  %i.cp = trunc i32 %4 to i16
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i23, i64 2
  store i16 %i.cp, ptr %i.cq, align 2
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i23, i64 4
  store i16 0, ptr %i.cr, align 2
  %7 = getelementptr i8, ptr %.0.i23, i64 6
  %.val = load i16, ptr %7, align 2
  %i.cs = and i16 %.val, 8191
  %i.ct = zext nneg i16 %i.cs to i64
  %i.cu = tail call zeroext i16 @PageAddItemExtended(ptr noundef %1, ptr noundef nonnull %.0.i23, i64 noundef %i.ct, i16 noundef zeroext 0, i32 noundef 0) #9
  %i.cv = icmp eq i16 %i.cu, 0
  br i1 %i.cv, label %bb.j, label %bb.k

bb.j:                                             ; preds = %GinFormInteriorTuple.exit26
  %i.cw = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.cx = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 736, ptr noundef nonnull @__func__.ginEntryFillRoot) #9
  unreachable

bb.k:                                             ; preds = %GinFormInteriorTuple.exit26
  tail call void @pfree(ptr noundef nonnull %.0.i23) #9
  ret void
}

declare zeroext i16 @PageAddItemExtended(ptr noundef, ptr noundef, i64 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ginPrepareEntryScan(ptr nofree noundef writeonly captures(none) initializes((0, 128)) %0, i16 noundef zeroext %1, i64 noundef %2, i8 noundef signext %3, ptr noundef %4) local_unnamed_addr #5 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 128, i1 false)
  %i.a = load ptr, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %4, ptr %i.d, align 8
  store ptr @entryLocateEntry, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @entryGetLeftMostPage, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @entryIsMoveRight, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @entryLocateLeafEntry, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @entryFindChildPtr, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @entryBeginPlaceToPage, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @entryExecPlaceToPage, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @ginEntryFillRoot, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @entryPrepareDownlink, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 0, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 106
  store i16 %1, ptr %i.p, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %2, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %3, ptr %i.r, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @entryLocateEntry(ptr noundef %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4              ; 3 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.f = xor i32 %i.c, -1
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8
  br label %BufferGetPage.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @BufferBlocks, align 8
  %i.k = add nsw i32 %i.c, -1
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 13
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.m
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.i, %bb.b ], [ %i.n, %bb.c ] ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load i8, ptr %i.o, align 8, !range !4, !noundef !5
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %BufferGetPage.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 1, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %.0.i.i, i64 12
  %.val62 = load i16, ptr %i.s, align 4           ; 2 uses
  %i.t = icmp ult i16 %.val62, 25
  %i.u = zext i16 %.val62 to i32
  %i.v = add nuw nsw i32 %i.u, 262120
  %i.w = lshr i32 %i.v, 2
  %i.x = and i32 %i.w, 65535
  %i.y = select i1 %i.t, i32 0, i32 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = mul i32 %i.y, %i.aa
  store i32 %i.ab, ptr %i.z, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call i32 %i.ad(ptr noundef nonnull %0, ptr noundef %.0.i.i) #9
  br label %bb.n

bb.e:                                             ; preds = %BufferGetPage.exit
  %i.af = getelementptr i8, ptr %.0.i.i, i64 12
  %.val61 = load i16, ptr %i.af, align 4          ; 2 uses
  %i.ag = icmp ult i16 %.val61, 25
  %i.ah = zext i16 %.val61 to i32
  %i.ai = add nuw nsw i32 %i.ah, 262120
  %i.aj = lshr i32 %i.ai, 2
  %i.ak = trunc i32 %i.aj to i16
  %.0.i65 = select i1 %i.ag, i16 0, i16 %i.ak     ; 2 uses
  %i.al = add nsw i16 %.0.i65, 1                  ; 3 uses
  %i.am = icmp ugt i16 %i.al, 1
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ao = getelementptr i8, ptr %.0.i.i, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 106
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.thread
  %.04794 = phi i16 [ 1, %.lr.ph ], [ %.148, %.thread ] ; 3 uses
  %.05493 = phi i16 [ %i.al, %.lr.ph ], [ %.155, %.thread ] ; 2 uses
  %narrow = sub nuw i16 %.05493, %.04794
  %i.at = lshr i16 %narrow, 1
  %i.au = add i16 %i.at, %.04794                  ; 5 uses
  %i.av = icmp eq i16 %i.au, %.0.i65
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aw = load i16, ptr %i.an, align 8
  %i.ax = zext i16 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = icmp eq i32 %i.az, -1
  br i1 %i.ba, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.bb = zext i16 %i.au to i64
  %i.bc = getelementptr [4 x i8], ptr %i.ao, i64 %i.bb
  %.val64 = load i32, ptr %i.bc, align 4
  %i.bd = and i32 %.val64, 32767
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.be ; 4 uses
  %i.bg = load ptr, ptr %i.ap, align 8
  %i.bh = call zeroext i16 @gintuple_get_attrnum(ptr noundef %i.bg, ptr noundef %i.bf) #9 ; 3 uses
  %i.bi = load ptr, ptr %i.ap, align 8
  %i.bj = call i64 @gintuple_get_key(ptr noundef %i.bi, ptr noundef %i.bf, ptr noundef nonnull %i.a) #9
  %i.bk = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.bl = load i16, ptr %i.aq, align 2            ; 2 uses
  %i.bm = load i64, ptr %i.ar, align 8
  %i.bn = load i8, ptr %i.as, align 8             ; 3 uses
  %i.bo = load i8, ptr %i.a, align 1              ; 2 uses
  %.not.i = icmp eq i16 %i.bl, %i.bh
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = icmp ult i16 %i.bl, %i.bh
  br label %.thread75

bb.j:                                             ; preds = %bb.h
  %.not.i.i = icmp eq i8 %i.bn, %i.bo
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = icmp slt i8 %i.bn, %i.bo
  br label %.thread75

bb.l:                                             ; preds = %bb.j
  %.not13.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not13.i.i, label %bb.m, label %.thread78

.thread78:                                        ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.thread82

.thread75:                                        ; preds = %bb.i, %bb.k
  %.sink = phi i1 [ %i.bp, %bb.i ], [ %i.bq, %bb.k ]
  %i.br = select i1 %.sink, i32 -1, i32 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.thread

bb.m:                                             ; preds = %bb.l
end_hunk_0
