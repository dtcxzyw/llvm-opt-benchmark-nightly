Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/asn1?download=true
inline.NumInlined: 60
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@asn1_expect_list_member:bb.a
bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @asn1_expect_hash_algo(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @asn1_expect_algo_multi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @asn1_expect_hash_algo.alts, i32 noundef 10) ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.288) #10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !19
  store i32 %i.d, ptr %3, align 4, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load i32, ptr %i.e, align 4, !tbaa !19
  store i32 %i.f, ptr %4, align 4, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @mpool_calloc(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @hm_addhash_bin(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @cli_warnmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 1, 0) i32 @asn1_check_mscat(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %7 = alloca %struct.cli_asn1, align 8           ; 8 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [64 x i8], align 16               ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %struct.crtmgr, align 8             ; 7 uses
  %i.f = alloca [129 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.23, i64 noundef %2) #10
  call void @crtmgr_init(ptr noundef nonnull %8) #10
  %i.g = call i32 @crtmgr_add_roots(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 1) #10
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @crtmgr_free(ptr noundef nonnull %8) #10
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.h = call fastcc i32 @asn1_parse_mscat(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef nonnull %8, i32 noundef 1, ptr noundef %i.e, ptr noundef %i.a, ptr noundef %6) ; 2 uses
  call void @crtmgr_free(ptr noundef nonnull %8) #10
  %.not42 = icmp eq i32 %i.h, 0
  br i1 %.not42, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.j = call fastcc i32 @asn1_get_obj(ptr noundef %1, ptr noundef %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %7)
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = load i8, ptr %7, align 8, !tbaa !17      ; 2 uses
  %.not13.i = icmp eq i8 %i.k, 48
  br i1 %.not13.i, label %asn1_expect_objtype.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = zext i8 %i.k to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.276, i32 noundef 48, i32 noundef %i.l) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.24) #10
  br label %.loopexit

asn1_expect_objtype.exit:                         ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 4 uses
  %i.o = call fastcc i32 @asn1_expect_obj(ptr noundef %1, ptr noundef %i.m, ptr noundef %i.n, i8 noundef zeroext 6, i32 noundef 10, ptr noundef nonnull @.str.9)
  %.not44 = icmp eq i32 %i.o, 0
  br i1 %.not44, label %bb.i, label %bb.h

bb.h:                                             ; preds = %asn1_expect_objtype.exit
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.25) #10
  br label %.loopexit

bb.i:                                             ; preds = %asn1_expect_objtype.exit
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.r = call fastcc i32 @asn1_expect_objtype(ptr noundef %1, ptr noundef %i.q, ptr noundef %i.a, ptr noundef %7, i8 noundef zeroext 48)
  %.not45 = icmp eq i32 %i.r, 0
  br i1 %.not45, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.26) #10
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.s = load i32, ptr %i.a, align 4, !tbaa !19
  %.not46 = icmp eq i32 %i.s, 0
  br i1 %.not46, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.27) #10
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.t = call fastcc i32 @asn1_expect_hash_algo(ptr noundef %1, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.b, ptr noundef %i.d)
  %.not47 = icmp eq i32 %i.t, 0
  br i1 %.not47, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.28) #10
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.u = load i32, ptr %i.b, align 4, !tbaa !19
  %i.v = call fastcc ptr @get_hash_ctx(i32 noundef %i.u) ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.o
  %.not60 = icmp eq i32 %5, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 104
  %wide.trip.count = zext i32 %5 to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !82  ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = load i32, ptr %i.y, align 4, !tbaa !84
  %i.ad = zext i32 %i.ac to i64
  %i.ae = zext i32 %i.aa to i64
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !21
  %i.ag = call ptr %i.af(ptr noundef %1, i64 noundef %i.ad, i64 noundef range(i64 1, 4294967296) %i.ae, i32 noundef 0) #10, !inline_history !66 ; 2 uses
  %.not51 = icmp eq ptr %i.ag, null
  br i1 %.not51, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ah = load i32, ptr %i.z, align 4, !tbaa !82
  %i.ai = zext i32 %i.ah to i64
  %i.aj = call i32 @cl_update_hash(ptr noundef nonnull %i.v, ptr noundef nonnull %i.ag, i64 noundef %i.ai) #10 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.p

._crit_edge:                                      ; preds = %bb.s, %.preheader
  %i.ak = call i32 @cl_finish_hash(ptr noundef nonnull %i.v, ptr noundef nonnull %i.c) #10 ; 0 uses
  %i.al = load i8, ptr @cli_debug_flag, align 1, !tbaa !25
  %.not48 = icmp eq i8 %i.al, 0
  %.pre = load i32, ptr %i.d, align 4, !tbaa !19  ; 3 uses
  br i1 %.not48, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  %.not61 = icmp eq i32 %.pre, 0
  br i1 %.not61, label %._crit_edge59, label %.lr.ph58.preheader

.lr.ph58.preheader:                               ; preds = %bb.t
  %wide.trip.count66 = zext i32 %.pre to i64
  br label %.lr.ph58

.lr.ph58:                                         ; preds = %.lr.ph58.preheader, %.lr.ph58
  %indvars.iv63 = phi i64 [ 0, %.lr.ph58.preheader ], [ %indvars.iv.next64, %.lr.ph58 ] ; 3 uses
  %i.am = shl nuw nsw i64 %indvars.iv63, 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv63
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !25
  %i.aq = zext i8 %i.ap to i32
  %i.ar = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.aq) #10 ; 0 uses
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count66
  br i1 %exitcond67.not, label %._crit_edge59, label %.lr.ph58

._crit_edge59:                                    ; preds = %.lr.ph58, %bb.t
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.29, ptr noundef nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge59, %._crit_edge
  %i.as = call fastcc i32 @asn1_expect_obj(ptr noundef %1, ptr noundef %i.m, ptr noundef %i.n, i8 noundef zeroext 4, i32 noundef %.pre, ptr noundef nonnull %i.c)
  %.not49 = icmp eq i32 %i.as, 0
  br i1 %.not49, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.30) #10
  br label %.loopexit

bb.w:                                             ; preds = %bb.u
  %i.at = load i32, ptr %i.n, align 4, !tbaa !18
  %.not50 = icmp eq i32 %i.at, 0
  br i1 %.not50, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.31) #10
  br label %.loopexit

bb.y:                                             ; preds = %bb.w
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.32) #10
  %i.au = call i32 @cli_trust_this_layer(ptr noundef %6, ptr noundef nonnull @.str.33) #10 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.q, %bb.o, %bb.c, %bb.y, %bb.x, %bb.v, %bb.n, %bb.l, %bb.j, %bb.h, %bb.g, %bb.b
  %.2 = phi i32 [ 6, %bb.b ], [ 33, %bb.y ], [ 27, %bb.g ], [ 27, %bb.h ], [ 27, %bb.j ], [ 27, %bb.l ], [ 27, %bb.n ], [ %i.h, %bb.c ], [ 27, %bb.o ], [ 6, %bb.v ], [ 27, %bb.x ], [ 6, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.2
}

declare void @crtmgr_init(ptr noundef) local_unnamed_addr #2

declare i32 @crtmgr_add_roots(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @crtmgr_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_hash_ctx(i32 noundef %0) unnamed_addr #0 {
bb.a:
  switch i32 %0, label %bb.g [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 5, label %bb.d
    i32 6, label %bb.e
    i32 7, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @cl_hash_init(ptr noundef nonnull @.str.289) #10
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @cl_hash_init(ptr noundef nonnull @.str.230) #10
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.c = tail call ptr @cl_hash_init(ptr noundef nonnull @.str.290) #10
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.d = tail call ptr @cl_hash_init(ptr noundef nonnull @.str.291) #10
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.e = tail call ptr @cl_hash_init(ptr noundef nonnull @.str.292) #10
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.293) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.e, %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ %i.c, %bb.d ], [ %i.d, %bb.e ], [ %i.e, %bb.f ], [ null, %bb.g ]
  ret ptr %.0
}

declare i32 @cl_update_hash(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @cl_finish_hash(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cli_trust_this_layer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 3) i32 @asn1_get_x509(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.cli_asn1, align 8           ; 7 uses
  %5 = alloca %struct.cli_asn1, align 8           ; 7 uses
  %6 = alloca %struct.cli_asn1, align 8           ; 17 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %7 = alloca %struct.cli_crt_t, align 8          ; 27 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %8 = alloca %struct.cli_asn1, align 8           ; 7 uses
  %9 = alloca %struct.cli_asn1, align 8           ; 11 uses
  %10 = alloca %struct.cli_asn1, align 8          ; 8 uses
  %11 = alloca %struct.cli_asn1, align 8          ; 11 uses
  %12 = alloca %struct.cli_asn1, align 8          ; 6 uses
  %13 = alloca %struct.cli_asn1, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.e = call i32 @cli_crt_init(ptr noundef nonnull %7) #10
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %.sink.split464, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !67
  %i.h = call fastcc i32 @asn1_get_obj(ptr noundef %0, ptr noundef %i.g, ptr noundef nonnull %2, ptr noundef nonnull %4)
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.c, label %.sink.split464

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %4, align 8, !tbaa !17      ; 2 uses
  %.not13.i = icmp eq i8 %i.i, 48
  br i1 %.not13.i, label %asn1_expect_objtype.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = zext i8 %i.i to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.276, i32 noundef 48, i32 noundef %i.j) #10
  br label %.sink.split464

asn1_expect_objtype.exit:                         ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  store ptr %i.l, ptr %1, align 8, !tbaa !67
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %i.p = call fastcc i32 @asn1_get_obj(ptr noundef %0, ptr noundef %i.n, ptr noundef nonnull %i.o, ptr noundef nonnull %5)
  %.not.i169 = icmp eq i32 %i.p, 0
  br i1 %.not.i169, label %bb.e, label %.sink.split464

bb.e:                                             ; preds = %asn1_expect_objtype.exit
  %i.q = load i8, ptr %5, align 8, !tbaa !17      ; 2 uses
  %.not13.i171 = icmp eq i8 %i.q, 48
  br i1 %.not13.i171, label %asn1_expect_objtype.exit172, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = zext i8 %i.q to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.276, i32 noundef 48, i32 noundef %i.r) #10
  br label %.sink.split464

asn1_expect_objtype.exit172:                      ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.n to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 11 uses
  %i.ab = call fastcc i32 @asn1_get_obj(ptr noundef %0, ptr noundef %i.z, ptr noundef %i.aa, ptr noundef %6)
  %.not100 = icmp eq i32 %i.ab, 0
  br i1 %.not100, label %bb.g, label %.sink.split464

bb.g:                                             ; preds = %asn1_expect_objtype.exit172
  %i.ac = load i8, ptr %6, align 8, !tbaa !17     ; 2 uses
  %i.ad = icmp ne i8 %i.ac, -96                   ; 2 uses
  br i1 %i.ad, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !18
  store i32 %i.af, ptr %i.a, align 4, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !15 ; 2 uses
  store ptr %i.ah, ptr %i.d, align 8, !tbaa !67
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aj = call fastcc i32 @asn1_expect_obj(ptr noundef %0, ptr noundef %i.ai, ptr noundef %i.a, i8 noundef zeroext 2, i32 noundef 1, ptr noundef nonnull @.str.146)
  %.not101 = icmp eq i32 %i.aj, 0
  br i1 %.not101, label %bb.i, label %.sink.split464

bb.i:                                             ; preds = %bb.h
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !19
  %.not102 = icmp eq i32 %i.ak, 0
end_hunk_0
