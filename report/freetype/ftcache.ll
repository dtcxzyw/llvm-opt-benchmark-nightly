Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/ftcache?download=true
inline.NumInlined: 85
inline.NumDeleted: 30
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ftc_snode_load:bb.a
; Function Attrs: nounwind uwtable
define internal fastcc i32 @ftc_sbit_copy_bitmap(ptr nofree noundef writeonly captures(none) initializes((16, 24)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !245
  %spec.select = tail call i32 @llvm.abs.i32(i32 %i.c, i1 true)
  %i.d = zext nneg i32 %spec.select to i64
  %i.e = load i32, ptr %1, align 8, !tbaa !243
  %i.f = zext i32 %i.e to i64
  %i.g = mul nuw nsw i64 %i.d, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !261
  %i.j = call ptr @ft_mem_dup(ptr noundef %2, ptr noundef %i.i, i64 noundef %i.g, ptr noundef nonnull %i.a) #13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !121
  %i.l = load i32, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %i.l
}

declare hidden ptr @ft_mem_dup(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i32 @ftc_basic_family_get_count(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address_is_null) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %.not29.i = icmp eq ptr %1, null
  br i1 %.not29.i, label %FTC_Manager_LookupFace.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63   ; 6 uses
  %.not30.i = icmp eq ptr %i.f, null
  br i1 %.not30.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %bb.d
  %.0.i = phi ptr [ %i.o, %bb.d ], [ %i.f, %bb.b ] ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !140
  %.not38.i = icmp eq ptr %i.h, %i.c
  br i1 %.not38.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.i
  %.not33.i = icmp eq ptr %.0.i, %i.f
  br i1 %.not33.i, label %FTC_Manager_LookupFace.exit, label %FTC_MruNode_Up.exit.i

FTC_MruNode_Up.exit.i:                            ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !72   ; 2 uses
  %i.k = load ptr, ptr %.0.i, align 8, !tbaa !73  ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !73
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.j, ptr %i.l, align 8, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72   ; 2 uses
  store ptr %.0.i, ptr %i.n, align 8, !tbaa !73
  store ptr %.0.i, ptr %i.m, align 8, !tbaa !72
  store ptr %i.f, ptr %.0.i, align 8, !tbaa !73
  store ptr %i.n, ptr %i.i, align 8, !tbaa !72
  store ptr %.0.i, ptr %i.e, align 8, !tbaa !63
  br label %FTC_Manager_LookupFace.exit

bb.d:                                             ; preds = %.preheader.i
  %i.o = load ptr, ptr %.0.i, align 8, !tbaa !73  ; 2 uses
  %.not32.i = icmp eq ptr %i.o, %i.f
  br i1 %.not32.i, label %.loopexit.i, label %.preheader.i, !llvm.loop !143

.loopexit.i:                                      ; preds = %bb.d, %bb.b
  %i.p = call fastcc i32 @FTC_MruList_New(ptr noundef nonnull %i.d, ptr noundef %i.c, ptr noundef %i.a)
  %.not34.i = icmp eq i32 %i.p, 0
  br i1 %.not34.i, label %.loopexit._crit_edge.i, label %FTC_Manager_LookupFace.exit.thread

.loopexit._crit_edge.i:                           ; preds = %.loopexit.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !63
  br label %FTC_Manager_LookupFace.exit

FTC_Manager_LookupFace.exit.thread:               ; preds = %bb.a, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.f

FTC_Manager_LookupFace.exit:                      ; preds = %bb.c, %FTC_MruNode_Up.exit.i, %.loopexit._crit_edge.i
  %i.q = phi ptr [ %.pre.i, %.loopexit._crit_edge.i ], [ %.0.i, %bb.c ], [ %.0.i, %FTC_MruNode_Up.exit.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !144  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %FTC_Manager_LookupFace.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load i64, ptr %i.t, align 8, !tbaa !262
  %i.v = trunc i64 %i.u to i32
  br label %bb.f

bb.f:                                             ; preds = %FTC_Manager_LookupFace.exit.thread, %FTC_Manager_LookupFace.exit, %bb.e
  %.0 = phi i32 [ %i.v, %bb.e ], [ 0, %FTC_Manager_LookupFace.exit ], [ 0, %FTC_Manager_LookupFace.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @ftc_basic_family_load_bitmap(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = call i32 @FTC_Manager_LookupSize(ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !163
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !218  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i32, ptr %i.f, align 8, !tbaa !71
  %i.h = or i32 %i.g, 4
  %i.i = call i32 @FT_Load_Glyph(ptr noundef %i.e, i32 noundef %1, i32 noundef %i.h) #13 ; 2 uses
  %.not11 = icmp eq i32 %i.i, 0
  br i1 %.not11, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.e, ptr %3, align 8, !tbaa !162
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ %i.c, %bb.a ], [ 0, %bb.c ], [ %i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ftc_cache_resize(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.pre = load i32, ptr %0, align 8, !tbaa !33
  %.pre99 = load i32, ptr %i.c, align 4, !tbaa !34
  %.pre100.a = load i64, ptr %i.d, align 8, !tbaa !35
  br label %bb.b

bb.b:                                             ; preds = %bb.q, %bb.a
  %i.g = phi i64 [ %i.bi, %bb.q ], [ %.pre100.a, %bb.a ] ; 2 uses
  %i.h = phi i32 [ %i.bj, %bb.q ], [ %.pre99, %bb.a ] ; 3 uses
  %i.i = phi i32 [ %storemerge, %bb.q ], [ %.pre, %bb.a ] ; 7 uses
  %i.j = add i32 %i.h, 1                          ; 3 uses
  %i.k = lshr i32 %i.j, 1                         ; 5 uses
  %i.l = icmp slt i64 %i.g, 0
  br i1 %i.l, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i32 %i.i, %i.j
  %.pre101.a = load ptr, ptr %i.e, align 8, !tbaa !36 ; 2 uses
  br i1 %i.m, label %bb.d, label %._crit_edge102

._crit_edge102:                                   ; preds = %bb.c
  %.pre103.a = zext i32 %i.i to i64
  %.pre104 = zext nneg i32 %i.k to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.o = zext i32 %i.i to i64                     ; 3 uses
  %i.p = shl i32 %i.i, 1                          ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = call ptr @ft_mem_qrealloc(ptr noundef %i.n, i64 noundef 8, i64 noundef %i.o, i64 noundef %i.q, ptr noundef %.pre101.a, ptr noundef nonnull %i.a) #13 ; 2 uses
  store ptr %i.r, ptr %i.e, align 8, !tbaa !36
  %i.s = load i32, ptr %i.a, align 4, !tbaa !8
  %.not80 = icmp eq i32 %i.s, 0
  br i1 %.not80, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.d
  %i.t = add i32 %i.p, -1                         ; 2 uses
  store i32 %i.t, ptr %i.c, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge102, %.thread
  %.pre-phi105 = phi i64 [ %.pre104, %._crit_edge102 ], [ %i.o, %.thread ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre103.a, %._crit_edge102 ], [ %i.o, %.thread ]
  %i.u = phi ptr [ %.pre101.a, %._crit_edge102 ], [ %i.r, %.thread ]
  %i.v = phi i32 [ %i.h, %._crit_edge102 ], [ %i.t, %.thread ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.pre-phi ; 2 uses
  %i.x = sub nsw i64 0, %.pre-phi105
  %i.y = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !48   ; 2 uses
  %.not8196 = icmp eq ptr %i.z, null
  br i1 %.not8196, label %.thread85.a, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.g
  %i.aa = phi ptr [ %i.ag, %bb.g ], [ %i.z, %bb.e ] ; 3 uses
  %.06698 = phi ptr [ %.167, %bb.g ], [ null, %bb.e ] ; 2 uses
  %.07097 = phi ptr [ %.171, %bb.g ], [ %i.y, %bb.e ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !78
  %i.ad = and i64 %i.ac, %.pre-phi105
  %.not82 = icmp eq i64 %i.ad, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  br i1 %.not82, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !84
  store ptr %i.af, ptr %.07097, align 8, !tbaa !48
  store ptr %.06698, ptr %i.ae, align 8, !tbaa !84
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %.171 = phi ptr [ %.07097, %bb.f ], [ %i.ae, %.lr.ph ] ; 2 uses
  %.167 = phi ptr [ %i.aa, %bb.f ], [ %.06698, %.lr.ph ] ; 2 uses
  %i.ag = load ptr, ptr %.171, align 8, !tbaa !48 ; 2 uses
  %.not81 = icmp eq ptr %i.ag, null
  br i1 %.not81, label %.thread85.a, label %.lr.ph

.thread85.a:                                      ; preds = %bb.g, %bb.e
  %.066.lcssa = phi ptr [ null, %bb.e ], [ %.167, %bb.g ]
  store ptr %.066.lcssa, ptr %i.w, align 8, !tbaa !48
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !35
  %i.ai = add nsw i64 %i.ah, 2                    ; 2 uses
  store i64 %i.ai, ptr %i.d, align 8, !tbaa !35
  %i.aj = add i32 %i.i, 1
  br label %bb.q

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.thread90

bb.i:                                             ; preds = %bb.b
  %i.ak = zext i32 %i.i to i64
  %i.al = icmp samesign ugt i64 %i.g, %i.ak
  br i1 %i.al, label %bb.j, label %.thread90

bb.j:                                             ; preds = %bb.i
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !36  ; 3 uses
  %i.an = add i32 %i.i, -1                        ; 4 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !48
  %i.ar = icmp ult i32 %i.an, 8
  br i1 %i.ar, label %.thread90, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = icmp eq i32 %i.an, %i.k
  br i1 %i.as, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k
  %.pre106 = zext nneg i32 %i.k to i64
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %i.f, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.au = zext i32 %i.j to i64
  %i.av = zext nneg i32 %i.k to i64               ; 2 uses
  %i.aw = call ptr @ft_mem_qrealloc(ptr noundef %i.at, i64 noundef 8, i64 noundef %i.au, i64 noundef %i.av, ptr noundef nonnull %i.am, ptr noundef nonnull %i.b) #13 ; 2 uses
  store ptr %i.aw, ptr %i.e, align 8, !tbaa !36
  %i.ax = load i32, ptr %i.b, align 4, !tbaa !8
  %.not = icmp eq i32 %i.ax, 0
  br i1 %.not, label %.thread88, label %bb.m

.thread88:                                        ; preds = %bb.l
  %i.ay = add nsw i32 %i.k, -1                    ; 2 uses
  store i32 %i.ay, ptr %i.c, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %.thread90

bb.n:                                             ; preds = %._crit_edge, %.thread88
  %.pre-phi107 = phi i64 [ %.pre106, %._crit_edge ], [ %i.av, %.thread88 ]
  %i.az = phi ptr [ %i.am, %._crit_edge ], [ %i.aw, %.thread88 ]
  %i.ba = phi i32 [ %i.h, %._crit_edge ], [ %i.ay, %.thread88 ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ao
  %i.bc = sub nsw i64 0, %.pre-phi107
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bc
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.272 = phi ptr [ %i.bd, %bb.n ], [ %i.bf, %bb.o ] ; 2 uses
  %i.be = load ptr, ptr %.272, align 8, !tbaa !48 ; 2 uses
  %.not79 = icmp eq ptr %i.be, null
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  br i1 %.not79, label %bb.p, label %bb.o, !llvm.loop !263

bb.p:                                             ; preds = %bb.o
  store ptr %i.aq, ptr %.272, align 8, !tbaa !48
  %i.bg = load i64, ptr %i.d, align 8, !tbaa !35
  %i.bh = add nsw i64 %i.bg, -2                   ; 2 uses
  store i64 %i.bh, ptr %i.d, align 8, !tbaa !35
  br label %bb.q

bb.q:                                             ; preds = %.thread85.a, %bb.p
  %i.bi = phi i64 [ %i.bh, %bb.p ], [ %i.ai, %.thread85.a ]
  %i.bj = phi i32 [ %i.ba, %bb.p ], [ %i.v, %.thread85.a ]
  %storemerge = phi i32 [ %i.an, %bb.p ], [ %i.aj, %.thread85.a ] ; 2 uses
  store i32 %storemerge, ptr %0, align 8, !tbaa !33
  br label %bb.b

.thread90:                                        ; preds = %bb.j, %bb.i, %bb.m, %bb.h
  ret void
}

declare hidden ptr @ft_mem_qrealloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @ftc_node_destroy(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i16, ptr %i.b, align 8, !tbaa !107
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44   ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !108
  %i.i = tail call i64 %i.h(ptr noundef %0, ptr noundef %i.f) #13
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !110
  %i.l = sub i64 %i.k, %i.i
  store i64 %i.l, ptr %i.j, align 8, !tbaa !110
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72   ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !73     ; 4 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !73
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.p, ptr %i.r, align 8, !tbaa !72
  %i.s = icmp eq ptr %0, %i.q
  br i1 %i.s, label %.sink.split.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = icmp eq ptr %0, %i.n
  br i1 %i.t, label %.sink.split.i.i, label %ftc_node_mru_unlink.exit

.sink.split.i.i:                                  ; preds = %bb.b, %bb.a
  %.sink.i.i = phi ptr [ null, %bb.a ], [ %i.q, %bb.b ]
  store ptr %.sink.i.i, ptr %i.m, align 8, !tbaa !63
  br label %ftc_node_mru_unlink.exit

ftc_node_mru_unlink.exit:                         ; preds = %bb.b, %.sink.split.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !106
  %i.w = add i32 %i.v, -1
  store i32 %i.w, ptr %i.u, align 8, !tbaa !106
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !36
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !78  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !34 ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = and i64 %i.aa, %i.ad                    ; 2 uses
  %i.af = load i32, ptr %i.f, align 8, !tbaa !33
  %i.ag = zext i32 %i.af to i64
  %.not.i = icmp samesign ult i64 %i.ae, %i.ag
  %i.ah = lshr i32 %i.ac, 1
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = and i64 %i.aa, %i.ai
  %i.ak = select i1 %.not.i, i64 %i.ae, i64 %i.aj
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ak
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %ftc_node_mru_unlink.exit
  %.018.i = phi ptr [ %i.al, %ftc_node_mru_unlink.exit ], [ %.1.i, %bb.c ] ; 2 uses
  %i.am = load ptr, ptr %.018.i, align 8, !tbaa !48 ; 3 uses
  %.not21.i = icmp eq ptr %i.am, null             ; 2 uses
  %i.an = icmp eq ptr %i.am, %0                   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %spec.select22.i = select i1 %i.an, i32 2, i32 0
  %i.ap = or i1 %.not21.i, %i.an
  %.1.i = select i1 %i.ap, ptr %.018.i, ptr %i.ao ; 2 uses
  %.0.i = select i1 %.not21.i, i32 1, i32 %spec.select22.i
  switch i32 %.0.i, label %ftc_node_hash_unlink.exit [
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !84
  store ptr %i.ar, ptr %.1.i, align 8, !tbaa !48
  store ptr null, ptr %i.aq, align 8, !tbaa !84
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !35
  %i.au = add nsw i64 %i.at, 1
  store i64 %i.au, ptr %i.as, align 8, !tbaa !35
  tail call fastcc void @ftc_cache_resize(ptr noundef nonnull %i.f)
  br label %ftc_node_hash_unlink.exit

ftc_node_hash_unlink.exit:                        ; preds = %bb.c, %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !128
  tail call void %i.aw(ptr noundef nonnull %0, ptr noundef nonnull %i.f) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ftc_cmap_node_new(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = call ptr @ft_mem_qalloc(ptr noundef %i.c, i64 noundef 312, ptr noundef nonnull %i.a) #13 ; 4 uses
  %i.e = load i32, ptr %i.a, align 4, !tbaa !8    ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !131
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.f, ptr %i.g, align 8, !tbaa !135
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_0
