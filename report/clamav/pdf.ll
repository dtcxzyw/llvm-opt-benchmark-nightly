Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pdf?download=true
inline.NumInlined: 40
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@decrypt_any:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !49   ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp eq i32 %4, 4                        ; 2 uses
  %spec.select.v = select i1 %i.k, i32 9, i32 5
  %spec.select = add i32 %i.i, %spec.select.v
  %i.l = zext i32 %spec.select to i64             ; 2 uses
  %i.m = tail call ptr @cli_max_malloc(i64 noundef %i.l) #19 ; 5 uses
  %.not63 = icmp eq ptr %i.m, null
  br i1 %.not63, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.o = load i32, ptr %i.h, align 8, !tbaa !49
  %i.p = zext i32 %i.o to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.n, i64 %i.p, i1 false)
  %i.q = load i32, ptr %i.h, align 8, !tbaa !49
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.r ; 6 uses
  %i.t = lshr i32 %1, 8
  %i.u = trunc i32 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 %i.u, ptr %i.s, align 1, !tbaa !33
  %i.w = lshr i32 %1, 16
  %i.x = trunc i32 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i8 %i.x, ptr %i.v, align 1, !tbaa !33
  %i.z = lshr i32 %1, 24
  %i.aa = trunc nuw i32 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !33
  %i.ac = trunc i32 %1 to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !33
  store i8 0, ptr %i.ad, align 1, !tbaa !33
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i32 1416380787, ptr %i.ae, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = call ptr @cl_hash_data(ptr noundef nonnull @.str.50, ptr noundef nonnull %i.m, i64 noundef %i.l, ptr noundef nonnull %i.a, ptr noundef null) #19 ; 0 uses
  call void @free(ptr noundef nonnull %i.m) #19
  %i.ag = load i32, ptr %i.h, align 8, !tbaa !49
  %i.ah = add i32 %i.ag, 5
  %spec.store.select = call i32 @llvm.umin.i32(i32 %i.ah, i32 16) ; 2 uses
  %i.ai = load i64, ptr %3, align 8, !tbaa !9
  %i.aj = call ptr @cli_max_calloc(i64 noundef %i.ai, i64 noundef 1) #19 ; 14 uses
  %.not64 = icmp eq ptr %i.aj, null
  br i1 %.not64, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  switch i32 %4, label %bb.r [
    i32 3, label %bb.j
    i32 4, label %bb.m
    i32 5, label %bb.n
    i32 2, label %bb.o
    i32 1, label %bb.p
    i32 0, label %bb.q
  ]

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.51) #19
  %i.ak = load i64, ptr %3, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull align 1 %2, i64 %i.ak, i1 false)
  %i.al = call zeroext i1 @arc4_init(ptr noundef nonnull %5, ptr noundef nonnull %i.a, i32 noundef %spec.store.select) #19
  br i1 %i.al, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef nonnull %i.aj) #19
  br label %bb.r

bb.l:                                             ; preds = %bb.j
  %i.am = load i64, ptr %3, align 8, !tbaa !9
  %i.an = trunc i64 %i.am to i32
  call void @arc4_apply(ptr noundef nonnull %5, ptr noundef nonnull %i.aj, i32 noundef %i.an) #19
  br label %bb.r

bb.m:                                             ; preds = %bb.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.52) #19
  call fastcc void @aes_256cbc_decrypt(ptr noundef nonnull %2, ptr noundef %3, ptr noundef %i.aj, ptr noundef nonnull %i.a, i32 noundef %spec.store.select, i32 noundef 1)
  br label %bb.r

bb.n:                                             ; preds = %bb.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.53) #19
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.ap = load i32, ptr %i.h, align 8, !tbaa !49
  call fastcc void @aes_256cbc_decrypt(ptr noundef nonnull %2, ptr noundef %3, ptr noundef %i.aj, ptr noundef %i.ao, i32 noundef %i.ap, i32 noundef 1)
  br label %bb.r

bb.o:                                             ; preds = %bb.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.54) #19
  %i.aq = load i64, ptr %3, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull align 1 %2, i64 %i.aq, i1 false)
  br label %bb.r

bb.p:                                             ; preds = %bb.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.55) #19
  call void @free(ptr noundef nonnull %i.aj) #19
  br label %bb.r

bb.q:                                             ; preds = %bb.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.56) #19
  call void @free(ptr noundef nonnull %i.aj) #19
  br label %bb.r

bb.r:                                             ; preds = %bb.i, %bb.l, %bb.m, %bb.n, %bb.o, %bb.h, %bb.e, %bb.c, %bb.d, %bb.a, %bb.b, %bb.q, %bb.p, %bb.k
  %.057 = phi ptr [ null, %bb.a ], [ null, %bb.h ], [ null, %bb.k ], [ null, %bb.p ], [ null, %bb.q ], [ null, %bb.e ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.d ], [ %i.aj, %bb.o ], [ %i.aj, %bb.n ], [ %i.aj, %bb.m ], [ %i.aj, %bb.l ], [ %i.aj, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.057
}

declare ptr @cli_max_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @cl_hash_data(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @cli_max_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @arc4_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @arc4_apply(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @aes_256cbc_decrypt(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [60 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.195) #19
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !9      ; 5 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.196, i32 noundef %4, i64 noundef %i.c) #19
  switch i32 %4, label %bb.d [
    i32 32, label %bb.e
    i32 24, label %bb.e
    i32 16, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = shl i32 %4, 3
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.197, i32 noundef %i.d) #19
  br label %bb.q

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.e = icmp ult i64 %i.c, 32
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.198, i64 noundef %i.c) #19
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %.not = icmp eq i32 %5, 0                       ; 2 uses
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.f = load <16 x i8>, ptr %0, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = add i64 %i.c, -16
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.063 = phi ptr [ %i.g, %bb.h ], [ %0, %bb.g ]
  %.062 = phi i64 [ %i.h, %bb.h ], [ %i.c, %bb.g ]
  %i.i = phi <16 x i8> [ %i.f, %bb.h ], [ zeroinitializer, %bb.g ]
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.199) #19
  %i.j = shl nuw nsw i32 %4, 3
  %i.k = call i32 @rijndaelSetupDecrypt(ptr noundef nonnull %i.a, ptr noundef %3, i32 noundef %i.j) #19 ; 2 uses
  %.not75 = icmp eq i32 %i.k, 0
  br i1 %.not75, label %bb.j, label %.lr.ph.preheader

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.200) #19
  br label %bb.q

.lr.ph.preheader:                                 ; preds = %bb.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.201) #19
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.180 = phi i64 [ %.062, %.lr.ph.preheader ], [ %i.r, %.lr.ph ]
  %.16479 = phi ptr [ %.063, %.lr.ph.preheader ], [ %i.q, %.lr.ph ] ; 3 uses
  %.06578 = phi ptr [ %2, %.lr.ph.preheader ], [ %i.p, %.lr.ph ] ; 5 uses
  %i.l = phi <16 x i8> [ %i.i, %.lr.ph.preheader ], [ %i.o, %.lr.ph ]
  call void @rijndaelDecrypt(ptr noundef nonnull %i.a, i32 noundef %i.k, ptr noundef nonnull %.16479, ptr noundef nonnull %.06578) #19
  %i.m = load <16 x i8>, ptr %.06578, align 1, !tbaa !33
  %i.n = xor <16 x i8> %i.m, %i.l
  store <16 x i8> %i.n, ptr %.06578, align 1, !tbaa !33
  %i.o = load <16 x i8>, ptr %.16479, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.06578, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.16479, i64 16
  %i.r = add i64 %.180, -16                       ; 5 uses
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph
  br i1 %.not, label %bb.p, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %6 = or disjoint i64 %i.r, 16                   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.06578, i64 15
  %i.u = load i8, ptr %i.t, align 1, !tbaa !33    ; 5 uses
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %i.w = icmp ugt i8 %i.u, 16
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.202, i32 noundef %i.v, i64 noundef %i.r) #19
  %i.x = load i64, ptr %1, align 8, !tbaa !9
  %i.y = sub i64 %i.x, %6
  store i64 %i.y, ptr %1, align 8, !tbaa !9
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.z = zext nneg i8 %i.u to i64                 ; 3 uses
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = getelementptr inbounds i8, ptr %i.p, i64 %i.aa
  %i.ac = icmp samesign ugt i8 %i.u, 1
  br i1 %i.ac, label %.lr.ph84, label %._crit_edge85

bb.n:                                             ; preds = %.lr.ph84
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.z
  br i1 %exitcond.not, label %._crit_edge85, label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.m, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 1, %bb.m ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !33  ; 2 uses
  %.not76 = icmp eq i8 %i.ae, %i.u
  br i1 %.not76, label %bb.n, label %bb.o

bb.o:                                             ; preds = %.lr.ph84
  %i.af = zext i8 %i.ae to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.203, i32 noundef %i.af, i32 noundef %i.v) #19
  %i.ag = load i64, ptr %1, align 8, !tbaa !9
  %i.ah = sub i64 %i.ag, %6
  store i64 %i.ah, ptr %1, align 8, !tbaa !9
  br label %bb.q

._crit_edge85:                                    ; preds = %bb.n, %bb.m
  %i.ai = add nuw nsw i64 %6, %i.z
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge85, %._crit_edge
  %.2 = phi i64 [ %i.ai, %._crit_edge85 ], [ %i.r, %._crit_edge ]
  %i.aj = load i64, ptr %1, align 8, !tbaa !9
  %i.ak = sub i64 %i.aj, %.2                      ; 2 uses
  store i64 %i.ak, ptr %1, align 8, !tbaa !9
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.204, i64 noundef %i.ak) #19
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.l, %bb.j, %bb.f, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @get_enc_method(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !40   ; 2 uses
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0
  %i.d = and i32 %i.b, 1
  %.not5 = icmp eq i32 %i.d, 0
  %. = select i1 %.not5, i64 20, i64 16
  %.sink = select i1 %.not, i64 %., i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %.0 = load i32, ptr %i.e, align 4, !tbaa !50
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @pdf_extract_obj(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 23 uses
  %i.b = alloca [4097 x i8], align 16             ; 10 uses
  %i.c = alloca i64, align 8                      ; 10 uses
  %i.d = alloca [128 x i8], align 16              ; 3 uses
  %i.e = alloca i32, align 4                      ; 12 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 0, ptr %i.c, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !38   ; 2 uses
  %i.j = lshr i32 %i.i, 8
  %i.k = and i32 %i.i, 255
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.57, i32 noundef %i.j, i32 noundef %i.k) #19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 5 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !51
  %i.n = icmp ugt i32 %i.m, 25
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.58) #19
  br label %.thread482.sink.split

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !139, !range !140, !noundef !141
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.thread482.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.o, align 8, !tbaa !139
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.59) #19
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.60) #19
  br label %.thread482.sink.split

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !40   ; 5 uses
  %i.z = and i32 %i.y, 33554432
  %.not363 = icmp eq i32 %i.z, 0
  br i1 %.not363, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @URI_cb(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr poison)
  br label %.thread482.sink.split

bb.i:                                             ; preds = %bb.g
  %i.aa = and i32 %i.y, 65537
  %or.cond412 = icmp eq i32 %i.aa, 1
  %i.ab = and i32 %i.y, 21021756
  %.not366 = icmp ne i32 %i.ab, 0
  %.0307 = or i1 %or.cond412, %.not366
  %i.ac = and i32 %i.y, 263168
  %or.cond413 = icmp ne i32 %i.ac, 262144
  %spec.select424 = and i1 %or.cond413, %.0307
  %i.ad = and i32 %i.y, 1048576
  %.not369 = icmp ne i32 %i.ad, 0
  %spec.select414 = or i1 %.not369, %spec.select424
  br i1 %spec.select414, label %bb.j, label %.thread482.sink.split

bb.j:                                             ; preds = %bb.i
  %i.ae = load i32, ptr %i.h, align 8, !tbaa !38  ; 2 uses
  %i.af = lshr i32 %i.ae, 8
  %i.ag = and i32 %i.ae, 255
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.61, i32 noundef %i.af, i32 noundef %i.ag) #19
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !52
  %i.aj = load i32, ptr %i.h, align 8, !tbaa !38  ; 2 uses
  %i.ak = lshr i32 %i.aj, 8
  %i.al = and i32 %i.aj, 255
  %i.am = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 4097, ptr noundef nonnull @.str.62, ptr noundef %i.ai, i32 noundef %i.ak, i32 noundef %i.al) #19 ; 0 uses
  %i.an = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.b, i32 noundef 706, i32 noundef 384) #19 ; 13 uses
  %i.ao = icmp slt i32 %i.an, 0                   ; 2 uses
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.ap = tail call ptr @__errno_location() #21
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !50
  %i.ar = call ptr @cli_strerror(i32 noundef %i.aq, ptr noundef nonnull %i.d, i64 noundef 128) #19
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.63, ptr noundef nonnull %i.b, ptr noundef %i.ar) #19
  store i32 17, ptr %i.a, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %.thread467

bb.l:                                             ; preds = %bb.j
  %i.as = trunc i32 %2 to i1                      ; 2 uses
  br i1 %i.as, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !53
  %.not370 = icmp eq ptr %i.au, null
  br i1 %.not370, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = call noalias ptr @strdup(ptr noundef nonnull %i.b) #19
  store ptr %i.av, ptr %i.at, align 8, !tbaa !53
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l
  %i.aw = load ptr, ptr %i.r, align 8, !tbaa !30  ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null
  %i.ay = load i32, ptr %i.x, align 4, !tbaa !40  ; 3 uses
  br i1 %i.ax, label %bb.p, label %.thread441

bb.p:                                             ; preds = %bb.o
  %i.az = and i32 %i.ay, 1
  %.not371 = icmp eq i32 %i.az, 0
  br i1 %.not371, label %bb.bo, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = load i32, ptr %i.h, align 8, !tbaa !38  ; 2 uses
  %i.bb = lshr i32 %i.ba, 8
  %i.bc = and i32 %i.ba, 255
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.64, i32 noundef %i.bb, i32 noundef %i.bc) #19
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !45
  %i.bf = load i32, ptr %1, align 8, !tbaa !39
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bg ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 4 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !54
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64               ; 3 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = trunc i64 %i.bm to i32
  store i32 %i.bn, ptr %i.e, align 4, !tbaa !50
  %sext = shl i64 %i.bm, 32
  %i.bo = ashr exact i64 %sext, 32                ; 2 uses
  %i.bp = tail call fastcc i64 @find_length(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.bh, i64 noundef %i.bo) ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 5 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !55 ; 4 uses
  %i.bs = icmp ugt i64 %i.bp, %i.br
  br i1 %i.bs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bt = sub nuw i64 %i.bp, %i.br
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.65, i64 noundef %i.bt, i64 noundef %i.br) #19
  %i.bu = load i64, ptr %i.bq, align 8, !tbaa !55 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bv = phi i64 [ %i.bu, %bb.r ], [ %i.br, %bb.q ] ; 8 uses
  %.0293 = phi i64 [ %i.bu, %bb.r ], [ %i.bp, %bb.q ] ; 4 uses
  %i.bw = load i32, ptr %i.x, align 4, !tbaa !40
  %i.bx = and i32 %i.bw, 32
  %i.by = icmp eq i32 %i.bx, 0
  %i.bz = icmp eq i64 %.0293, 0
end_hunk_0
