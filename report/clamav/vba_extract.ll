Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/vba_extract?download=true
inline.NumInlined: 47
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@vba_read_project_strings:bb.a
  %i.ah = load i16, ptr %i.b, align 2, !tbaa !50
  %i.ai = zext i16 %i.ah to i64
  %i.aj = sub nuw nsw i64 -2, %i.ai
  %i.ak = call i64 @lseek(i32 noundef %0, i64 noundef %i.aj, i32 noundef 1) #15
  %i.al = icmp eq i64 %i.ak, -1
  br i1 %i.al, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.163) #15
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.5 = phi i32 [ 0, %bb.s ], [ %.038, %bb.r ]
  call void @free(ptr noundef %i.w) #15
  br label %read_uint16.exit.thread

bb.u:                                             ; preds = %bb.q
  call void @free(ptr noundef nonnull %i.w) #15
  %i.am = call i64 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.b, i64 noundef 2) #15
  %.not.i59 = icmp eq i64 %i.am, 2
  br i1 %.not.i59, label %bb.v, label %read_uint16.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.an = load i16, ptr %i.b, align 2, !tbaa !50  ; 2 uses
  %rev.i.i62 = call i16 @llvm.bswap.i16(i16 %i.an)
  %.0.i.i63 = select i1 %.not.i.i, i16 %i.an, i16 %rev.i.i62 ; 2 uses
  store i16 %.0.i.i63, ptr %i.b, align 2, !tbaa !50
  %i.ao = add nuw nsw i32 %.038, 1
  %i.ap = add i16 %.0.i.i63, -1
  %or.cond = icmp ult i16 %i.ap, -2               ; 2 uses
  br i1 %or.cond, label %.backedge, label %bb.w

.backedge:                                        ; preds = %bb.v, %vba56_test_middle.exit
  br label %bb.b

bb.w:                                             ; preds = %bb.v
  %i.aq = call i64 @lseek(i32 noundef %0, i64 noundef 10, i32 noundef 1) #15 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, -1
  br i1 %i.ar, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.164) #15
  br label %read_uint16.exit.thread

bb.y:                                             ; preds = %bb.w
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.165, i64 noundef %i.aq) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.as = call i64 @cli_readn(i32 noundef range(i32 0, -1) %0, ptr noundef nonnull %i.a, i64 noundef 20) #15
  %.not.i65 = icmp eq i64 %i.as, 20
  br i1 %.not.i65, label %bb.z, label %vba56_test_middle.exit

bb.z:                                             ; preds = %bb.y
  %i.at = load i128, ptr %i.a, align 16
  %i.au = xor i128 %i.at, 103079424519808894343311399813643043072
  %i.av = getelementptr i8, ptr %i.a, i64 16
  %i.aw = load i32, ptr %i.av, align 16
  %i.ax = zext i32 %i.aw to i128
  %i.ay = xor i128 %i.ax, 46091
  %i.az = or i128 %i.au, %i.ay
  %i.ba = icmp ne i128 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %.not2.i = icmp eq i32 %i.bb, 0
  br i1 %.not2.i, label %.sink.split.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bc = load i128, ptr %i.a, align 16
  %i.bd = xor i128 %i.bc, 103079424519808847309927644500192198656
  %i.be = getelementptr i8, ptr %i.a, i64 16
  %i.bf = load i32, ptr %i.be, align 16
  %i.bg = zext i32 %i.bf to i128
  %i.bh = xor i128 %i.bg, 46091
  %i.bi = or i128 %i.bd, %i.bh
  %i.bj = icmp ne i128 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %.not4.i = icmp eq i32 %i.bk, 0
  br i1 %.not4.i, label %.sink.split.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.166) #15
  %i.bl = call i64 @lseek(i32 noundef range(i32 0, -1) %0, i64 noundef -20, i32 noundef 1) #15
  %i.bm = icmp eq i64 %i.bl, -1
  br i1 %i.bm, label %.sink.split.i, label %vba56_test_middle.exit

.sink.split.i:                                    ; preds = %bb.ab, %bb.aa, %bb.z
  %.str.168.sink.i = phi ptr [ @.str.167, %bb.ab ], [ @.str.168, %bb.aa ], [ @.str.168, %bb.z ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.168.sink.i) #15
  br label %vba56_test_middle.exit

vba56_test_middle.exit:                           ; preds = %bb.y, %bb.ab, %.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %.backedge

read_uint16.exit.thread:                          ; preds = %bb.u, %bb.h, %bb.c, %bb.k, %bb.e, %bb.t, %bb.x, %bb.m, %bb.f, %bb.n
  %.347.ph = phi ptr [ %.246, %bb.n ], [ %.044, %bb.f ], [ %.044, %bb.e ], [ %.246, %bb.m ], [ %.246, %bb.x ], [ %.246, %bb.k ], [ %.246, %bb.t ], [ %.246, %bb.u ], [ %.044, %bb.h ], [ %.044, %bb.c ]
  %.6.ph = phi i32 [ 0, %bb.n ], [ 0, %bb.f ], [ %.038, %bb.e ], [ %.038, %bb.m ], [ 0, %bb.x ], [ 0, %bb.k ], [ %.5, %bb.t ], [ %.038, %bb.u ], [ 0, %bb.h ], [ 0, %bb.c ]
  call void @free(ptr noundef %.347.ph) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  ret i32 %.6.ph
}

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @seekandread(i32 noundef %0, i64 noundef %1, i32 noundef range(i32 0, 2) %2, ptr noundef nonnull %3, i64 noundef range(i64 1, 4294967296) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @lseek(i32 noundef %0, i64 noundef %1, i32 noundef %2) #15
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.204) #15
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i64 @cli_readn(i32 noundef %0, ptr noundef nonnull %3, i64 noundef %4) #15
  %i.d = icmp eq i64 %i.c, %4
  %i.e = zext i1 %i.d to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.e, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @create_vba_project(i32 noundef range(i32 1, 65536) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #18 ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.205) #15
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %0 to i64                  ; 2 uses
  %i.d = shl nuw nsw i64 %i.c, 3
  %i.e = tail call ptr @cli_max_malloc(i64 noundef %i.d) #15 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !59
  %i.f = shl nuw nsw i64 %i.c, 2                  ; 2 uses
  %i.g = tail call ptr @cli_max_malloc(i64 noundef %i.f) #15 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !58
  %i.i = tail call ptr @cli_safer_strdup(ptr noundef %1) #15 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.i, ptr %i.j, align 8, !tbaa !61
  %i.k = tail call ptr @cli_max_malloc(i64 noundef %i.f) #15 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !60
  %i.m = icmp eq ptr %i.g, null
  %i.n = icmp eq ptr %i.e, null
  %or.cond20 = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq ptr %i.i, null
  %i.p = icmp eq ptr %i.k, null
  %or.cond = select i1 %i.o, i1 true, i1 %i.p
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @cli_free_vba_project(ptr noundef nonnull %i.a)
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.206) #15
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 %0, ptr %i.q, align 8, !tbaa !70
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %2, ptr %i.r, align 8, !tbaa !71
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.e ], [ %i.a, %bb.f ]
  ret ptr %.0
}

declare ptr @cli_max_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_unicode_name(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef range(i32 0, 65536) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !13
  %i.c = icmp eq i8 %i.b, 0
  %i.d = icmp eq i32 %1, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = mul nuw nsw i32 %1, 7
  %i.f = add nuw nsw i32 %i.e, 1
  %i.g = zext nneg i32 %i.f to i64
  %i.h = tail call ptr @cli_max_malloc(i64 noundef %i.g) #15 ; 6 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %3

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.169) #15
  br label %bb.m

3:                                                ; preds = %bb.c
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.e, label %.lr.ph.preheader

bb.e:                                             ; preds = %3
  %i.j = and i32 %1, 1
  %.not69 = icmp eq i32 %i.j, 0
  br i1 %.not69, label %.lr.ph.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.170, i32 noundef %1) #15
  %i.k = add nsw i32 %1, -1                       ; 2 uses
  %.not92 = icmp eq i32 %i.k, 0
  br i1 %.not92, label %.thread._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e, %3, %bb.f
  %.05991 = phi i32 [ %i.k, %bb.f ], [ %1, %3 ], [ %1, %bb.e ]
  %4 = phi i64 [ 2, %bb.f ], [ 1, %3 ], [ 2, %bb.e ]
  %i.l = zext nneg i32 %.05991 to i64             ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %.06181 = phi ptr [ %i.h, %.lr.ph.preheader ], [ %.3, %bb.l ] ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13    ; 5 uses
  %.not70 = icmp sgt i8 %i.n, -1
  br i1 %.not70, label %bb.g, label %.thread

bb.g:                                             ; preds = %.lr.ph
  %i.o = tail call ptr @__ctype_b_loc() #17
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73
  %i.q = zext nneg i8 %i.n to i64                 ; 2 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2, !tbaa !50
  %i.t = and i16 %i.s, 16384
  %.not71 = icmp eq i16 %i.t, 0
  br i1 %.not71, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call ptr @__ctype_tolower_loc() #17
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !54
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.q
  %i.x = load i32, ptr %i.w, align 4, !tbaa !14
  %i.y = trunc i32 %i.x to i8
  store i8 %i.y, ptr %.06181, align 1, !tbaa !13
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.z = icmp samesign ult i8 %i.n, 10
  br i1 %i.z, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.06181, i64 1
  store i8 95, ptr %.06181, align 1, !tbaa !13
  %i.ab = load i8, ptr %i.m, align 1, !tbaa !13
  %i.ac = add i8 %i.ab, 48
  %i.ad = getelementptr inbounds nuw i8, ptr %.06181, i64 2
  store i8 %i.ac, ptr %i.aa, align 1, !tbaa !13
  br label %bb.k

.thread:                                          ; preds = %.lr.ph, %bb.i
  %i.ae = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %.not72 = icmp samesign ult i64 %i.ae, %i.l
  br i1 %.not72, label %.thread76, label %.thread._crit_edge

.thread76:                                        ; preds = %.thread
  %i.af = icmp slt i8 %i.n, 0
  %i.ag = zext nneg i8 %i.n to i16
  %i.ah = shl nuw nsw i16 %i.ag, 8
  %i.ai = select i1 %i.af, i16 0, i16 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !13  ; 3 uses
  %i.al = sext i8 %i.ak to i16
  %i.am = or i16 %i.ai, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.06181, i64 1
  store i8 95, ptr %.06181, align 1, !tbaa !13
  %i.ao = and i8 %i.ak, 15
  %i.ap = add nuw nsw i8 %i.ao, 97
  %i.aq = getelementptr inbounds nuw i8, ptr %.06181, i64 2
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !13
  %i.ar = lshr i8 %i.ak, 4
  %i.as = add nuw nsw i8 %i.ar, 97
  %i.at = getelementptr inbounds nuw i8, ptr %.06181, i64 3
  store i8 %i.as, ptr %i.aq, align 1, !tbaa !13
  %i.au = lshr i16 %i.am, 8
  %i.av = trunc nuw i16 %i.au to i8
  %i.aw = and i8 %i.av, 15
  %i.ax = add nuw nsw i8 %i.aw, 97
  %i.ay = getelementptr inbounds nuw i8, ptr %.06181, i64 4
  store i8 %i.ax, ptr %i.at, align 1, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %.06181, i64 5
  store i8 97, ptr %i.ay, align 1, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %.06181, i64 6
  store i8 97, ptr %i.az, align 1, !tbaa !13
  br label %bb.k

bb.k:                                             ; preds = %.thread76, %bb.j
  %.2 = phi ptr [ %i.ad, %bb.j ], [ %i.ba, %.thread76 ] ; 2 uses
  store i8 95, ptr %.2, align 1, !tbaa !13
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k
  %.2.pn = phi ptr [ %.2, %bb.k ], [ %.06181, %bb.h ]
  %.3 = getelementptr inbounds nuw i8, ptr %.2.pn, i64 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %4 ; 2 uses
  %5 = icmp samesign ult i64 %indvars.iv.next, %i.l
  br i1 %5, label %.lr.ph, label %.thread._crit_edge

.thread._crit_edge:                               ; preds = %bb.l, %.thread, %bb.f
  %.061.lcssa = phi ptr [ %i.h, %bb.f ], [ %.06181, %.thread ], [ %.3, %bb.l ] ; 2 uses
  store i8 0, ptr %.061.lcssa, align 1, !tbaa !13
  %i.bb = ptrtoint ptr %.061.lcssa to i64
  %i.bc = ptrtoint ptr %i.h to i64
  %reass.sub = sub i64 %i.bb, %i.bc
  %i.bd = add i64 %reass.sub, 1
  %i.be = tail call ptr @cli_max_realloc(ptr noundef nonnull %i.h, i64 noundef %i.bd) #15 ; 2 uses
  %.not73 = icmp eq ptr %i.be, null
  %i.bf = select i1 %.not73, ptr %i.h, ptr %i.be
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.b, %.thread._crit_edge, %bb.d
  %.0 = phi ptr [ %i.bf, %.thread._crit_edge ], [ null, %bb.d ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @blobCreate() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare void @blobDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @blobAddData(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @blobGetDataSize(ptr noundef) local_unnamed_addr #2

declare ptr @blobToMem(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @cli_scan_ole10(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 4 uses
  %i.b = alloca [128 x i8], align 16              ; 6 uses
  %i.c = alloca [128 x i8], align 16              ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %2 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.e = icmp slt i32 %0, 0
  br i1 %i.e, label %read_uint32.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 0) #15 ; 0 uses
  %i.g = call i64 @cli_readn(i32 noundef range(i32 0, -1) %0, ptr noundef nonnull %i.d, i64 noundef 4) #15
  %.not.i = icmp eq i64 %i.g, 4
  br i1 %.not.i, label %bb.c, label %read_uint32.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %2) #15
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %read_uint32.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !76
  %i.l = load i32, ptr %i.d, align 4, !tbaa !14
  %i.m = zext i32 %i.l to i64
  %i.n = sub nsw i64 %i.k, %i.m
  %i.o = icmp sgt i64 %i.n, 3
  br i1 %i.o, label %bb.e, label %read_uint32.exit51

bb.e:                                             ; preds = %bb.d
  %i.p = call i64 @lseek(i32 noundef %0, i64 noundef 2, i32 noundef 1) #15
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %read_uint32.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.r = call i64 @cli_readn(i32 noundef range(i32 0, -2147483648) %0, ptr noundef nonnull %i.c, i64 noundef 128) #15 ; 3 uses
  %i.s = add i64 %i.r, 1
  %or.cond.i = icmp ult i64 %i.s, 2
  br i1 %or.cond.i, label %skip_past_nul.exit.thread, label %bb.h

skip_past_nul.exit.thread:                        ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %read_uint32.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.t = call ptr @memchr(ptr noundef nonnull %i.c, i32 noundef 0, i64 noundef %i.r) #16 ; 2 uses
  %.not.i42 = icmp eq ptr %i.t, null
  br i1 %.not.i42, label %bb.g, label %skip_past_nul.exit

skip_past_nul.exit:                               ; preds = %bb.h
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.c to i64
  %i.w = add i64 %i.r, %i.v
  %reass.sub = sub i64 %i.u, %i.w
  %i.x = add i64 %reass.sub, 1
  %i.y = call i64 @lseek(i32 noundef range(i32 0, -2147483648) %0, i64 noundef %i.x, i32 noundef 1) #15
  %i.z = icmp slt i64 %i.y, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br i1 %i.z, label %read_uint32.exit.thread, label %bb.i

bb.i:                                             ; preds = %skip_past_nul.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.aa = call i64 @cli_readn(i32 noundef range(i32 0, -2147483648) %0, ptr noundef nonnull %i.b, i64 noundef 128) #15 ; 3 uses
  %i.ab = add i64 %i.aa, 1
  %or.cond.i43 = icmp ult i64 %i.ab, 2
  br i1 %or.cond.i43, label %skip_past_nul.exit48.thread, label %bb.k

skip_past_nul.exit48.thread:                      ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %read_uint32.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ac = call ptr @memchr(ptr noundef nonnull %i.b, i32 noundef 0, i64 noundef %i.aa) #16 ; 2 uses
  %.not.i44 = icmp eq ptr %i.ac, null
  br i1 %.not.i44, label %bb.j, label %skip_past_nul.exit48

skip_past_nul.exit48:                             ; preds = %bb.k
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.b to i64
  %i.af = add i64 %i.aa, %i.ae
  %reass.sub70 = sub i64 %i.ad, %i.af
  %i.ag = add i64 %reass.sub70, 1
  %i.ah = call i64 @lseek(i32 noundef range(i32 0, -2147483648) %0, i64 noundef %i.ag, i32 noundef 1) #15
  %i.ai = icmp slt i64 %i.ah, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br i1 %i.ai, label %read_uint32.exit.thread, label %bb.l

bb.l:                                             ; preds = %skip_past_nul.exit48
  %i.aj = call i64 @lseek(i32 noundef %0, i64 noundef 8, i32 noundef 1) #15
  %i.ak = icmp eq i64 %i.aj, -1
  br i1 %i.ak, label %read_uint32.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = call fastcc i32 @skip_past_nul(i32 noundef %0)
  %.not36 = icmp eq i32 %i.al, 0
  br i1 %.not36, label %read_uint32.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = call i64 @cli_readn(i32 noundef range(i32 0, -1) %0, ptr noundef nonnull %i.d, i64 noundef 4) #15
  %.not.i49 = icmp eq i64 %i.am, 4
  br i1 %.not.i49, label %read_uint32.exit51, label %read_uint32.exit.thread

read_uint32.exit51:                               ; preds = %bb.n, %bb.d
  %.not38 = icmp eq ptr %1, null                  ; 2 uses
  br i1 %.not38, label %bb.p, label %bb.o

bb.o:                                             ; preds = %read_uint32.exit51
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !28
  br label %bb.p

bb.p:                                             ; preds = %read_uint32.exit51, %bb.o
  %i.ap = phi ptr [ %i.ao, %bb.o ], [ null, %read_uint32.exit51 ]
  %i.aq = call ptr @cli_gentemp(ptr noundef %i.ap) #15 ; 9 uses
  %.not39 = icmp eq ptr %i.aq, null
  br i1 %.not39, label %read_uint32.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.aq, i32 noundef 706, i32 noundef 384) #15 ; 5 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.142, ptr noundef nonnull %i.aq) #15
  call void @free(ptr noundef nonnull %i.aq) #15
  br label %read_uint32.exit.thread

bb.s:                                             ; preds = %bb.q
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.143, ptr noundef nonnull %i.aq) #15
  %i.at = load i32, ptr %i.d, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %bb.s
  %.014.i = phi i32 [ %i.at, %bb.s ], [ %i.ay, %bb.v ] ; 3 uses
  %.not.i52 = icmp eq i32 %.014.i, 0
  br i1 %.not.i52, label %ole_copy_file_data.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.au = call i32 @llvm.umin.i32(i32 %.014.i, i32 8192) ; 2 uses
  %i.av = zext nneg i32 %i.au to i64              ; 4 uses
  %i.aw = call i64 @cli_readn(i32 noundef range(i32 0, -2147483648) %0, ptr noundef nonnull %i.a, i64 noundef %i.av) #15
  %.not17.i = icmp eq i64 %i.aw, %i.av
  br i1 %.not17.i, label %bb.v, label %ole_copy_file_data.exit

bb.v:                                             ; preds = %bb.u
  %i.ax = call i64 @cli_writen(i32 noundef range(i32 0, -2147483648) %i.ar, ptr noundef nonnull %i.a, i64 noundef %i.av) #15
  %.not18.i = icmp eq i64 %i.ax, %i.av
  %i.ay = sub nuw i32 %.014.i, %i.au
  br i1 %.not18.i, label %bb.t, label %ole_copy_file_data.exit

ole_copy_file_data.exit:                          ; preds = %bb.t, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.az = call i64 @lseek(i32 noundef %i.ar, i64 noundef 0, i32 noundef 0) #15 ; 0 uses
  %i.ba = call i32 @cli_magic_scan_desc(i32 noundef %i.ar, ptr noundef nonnull %i.aq, ptr noundef %1, ptr noundef null, i32 noundef 0) #15
  %i.bb = call i32 @close(i32 noundef %i.ar) #15  ; 0 uses
  br i1 %.not38, label %bb.z, label %bb.w
end_hunk_0
