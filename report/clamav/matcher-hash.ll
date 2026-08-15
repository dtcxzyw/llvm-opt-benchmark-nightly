inline.NumInlined: 8
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@hm_addhash_bin:bb.a
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !63
  %i.ba = load i32, ptr %i.ak, align 8, !tbaa !59
  %i.bb = zext i32 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 3
  %i.bd = call ptr @mpool_realloc2(ptr noundef %i.ax, ptr noundef %i.az, i64 noundef %i.bc) #10 ; 2 uses
  store ptr %i.bd, ptr %i.ay, align 8, !tbaa !63
  %.not103 = icmp eq ptr %i.bd, null
  br i1 %.not103, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.be = load i32, ptr %i.ak, align 8, !tbaa !59
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.19, i32 noundef %i.be) #10
  store i32 0, ptr %i.ak, align 8, !tbaa !59
  %i.bf = load ptr, ptr %i.an, align 8, !tbaa !36
  %i.bg = load ptr, ptr %.088, align 8, !tbaa !62
  call void @mpool_free(ptr noundef %i.bf, ptr noundef %i.bg) #10
  store ptr null, ptr %.088, align 8, !tbaa !62
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.bh = load ptr, ptr %.088, align 8, !tbaa !62
  %i.bi = load i32, ptr %i.ak, align 8, !tbaa !59
  %i.bj = add i32 %i.bi, -1
  %i.bk = zext i32 %i.bj to i64
  %i.bl = mul nuw nsw i64 %.0.i, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bl
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr align 1 %2, i64 %.0.i, i1 false)
  %i.bn = load ptr, ptr %i.ay, align 8, !tbaa !63
  %i.bo = load i32, ptr %i.ak, align 8, !tbaa !59
  %i.bp = add i32 %i.bo, -1
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bq
  store ptr %5, ptr %i.br, align 8, !tbaa !64
  br label %bb.z

bb.z:                                             ; preds = %.thread105, %.thread, %bb.d, %bb.y, %bb.x, %bb.v, %bb.l
  %.187 = phi i32 [ 0, %bb.d ], [ 0, %bb.y ], [ 20, %bb.x ], [ 20, %bb.v ], [ %.086.ph, %.thread105 ], [ %i.x, %bb.l ], [ 20, %.thread ]
  ret i32 %.187
}

declare ptr @mpool_calloc(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @cli_htu32_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @cli_htu32_find(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @cli_htu32_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @mpool_free(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @mpool_realloc2(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define void @hm_flush(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %.preheader34

.preheader34:                                     ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i64, ptr %i.b, align 8, !tbaa !53
  %.not28 = icmp eq i64 %i.c, 0
  br i1 %.not28, label %.loopexit33, label %.preheader32

.preheader32:                                     ; preds = %.preheader34
  %i.d = tail call ptr @cli_htu32_next(ptr noundef nonnull %i.a, ptr noundef null) #10 ; 2 uses
  %.not2935 = icmp eq ptr %i.d, null
  br i1 %.not2935, label %.loopexit33, label %cli_hash_len.exit

cli_hash_len.exit:                                ; preds = %.preheader32, %bb.c
  %i.e = phi ptr [ %i.l, %bb.c ], [ %i.d, %.preheader32 ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !59   ; 2 uses
  %i.j = icmp ugt i32 %i.i, 1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %cli_hash_len.exit
  %i.k = zext i32 %i.i to i64
  tail call fastcc void @hm_sort(ptr noundef nonnull %i.g, i64 noundef 0, i64 noundef %i.k, i32 noundef 16)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %cli_hash_len.exit
  %i.l = tail call ptr @cli_htu32_next(ptr noundef nonnull %i.a, ptr noundef nonnull %i.e) #10 ; 2 uses
  %.not29 = icmp eq ptr %i.l, null
  br i1 %.not29, label %.loopexit33, label %cli_hash_len.exit

.loopexit33:                                      ; preds = %bb.c, %.preheader32, %.preheader34
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load i64, ptr %i.n, align 8, !tbaa !53
  %.not28.1 = icmp eq i64 %i.o, 0
  br i1 %.not28.1, label %.loopexit33.1, label %.preheader32.1

.preheader32.1:                                   ; preds = %.loopexit33
  %i.p = tail call ptr @cli_htu32_next(ptr noundef nonnull %i.m, ptr noundef null) #10 ; 2 uses
  %.not2935.1 = icmp eq ptr %i.p, null
  br i1 %.not2935.1, label %.loopexit33.1, label %cli_hash_len.exit.1

cli_hash_len.exit.1:                              ; preds = %.preheader32.1, %bb.e
  %i.q = phi ptr [ %i.x, %bb.e ], [ %i.p, %.preheader32.1 ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !58   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !59   ; 2 uses
  %i.v = icmp ugt i32 %i.u, 1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %cli_hash_len.exit.1
  %i.w = zext i32 %i.u to i64
  tail call fastcc void @hm_sort(ptr noundef nonnull %i.s, i64 noundef 0, i64 noundef %i.w, i32 noundef 20)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %cli_hash_len.exit.1
  %i.x = tail call ptr @cli_htu32_next(ptr noundef nonnull %i.m, ptr noundef nonnull %i.q) #10 ; 2 uses
  %.not29.1 = icmp eq ptr %i.x, null
  br i1 %.not29.1, label %.loopexit33.1, label %cli_hash_len.exit.1

.loopexit33.1:                                    ; preds = %bb.e, %.preheader32.1, %.loopexit33
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !53
  %.not28.2 = icmp eq i64 %i.aa, 0
  br i1 %.not28.2, label %cli_hash_len.exit31, label %.preheader32.2

.preheader32.2:                                   ; preds = %.loopexit33.1
  %i.ab = tail call ptr @cli_htu32_next(ptr noundef nonnull %i.y, ptr noundef null) #10 ; 2 uses
  %.not2935.2 = icmp eq ptr %i.ab, null
  br i1 %.not2935.2, label %cli_hash_len.exit31, label %cli_hash_len.exit.2

cli_hash_len.exit.2:                              ; preds = %.preheader32.2, %bb.g
  %i.ac = phi ptr [ %i.aj, %bb.g ], [ %i.ab, %.preheader32.2 ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !58 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !59 ; 2 uses
  %i.ah = icmp ugt i32 %i.ag, 1
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %cli_hash_len.exit.2
  %i.ai = zext i32 %i.ag to i64
  tail call fastcc void @hm_sort(ptr noundef nonnull %i.ae, i64 noundef 0, i64 noundef %i.ai, i32 noundef 32)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %cli_hash_len.exit.2
  %i.aj = tail call ptr @cli_htu32_next(ptr noundef nonnull %i.y, ptr noundef nonnull %i.ac) #10 ; 2 uses
  %.not29.2 = icmp eq ptr %i.aj, null
  br i1 %.not29.2, label %cli_hash_len.exit31, label %cli_hash_len.exit.2

cli_hash_len.exit31:                              ; preds = %bb.g, %.loopexit33.1, %.preheader32.2
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !59 ; 2 uses
  %i.am = icmp ugt i32 %i.al, 1
  br i1 %i.am, label %bb.h, label %cli_hash_len.exit31.1

bb.h:                                             ; preds = %cli_hash_len.exit31
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ao = zext i32 %i.al to i64
  tail call fastcc void @hm_sort(ptr noundef nonnull %i.an, i64 noundef 0, i64 noundef %i.ao, i32 noundef 16)
  br label %cli_hash_len.exit31.1

cli_hash_len.exit31.1:                            ; preds = %cli_hash_len.exit31, %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !59 ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, 1
  br i1 %i.ar, label %bb.i, label %cli_hash_len.exit31.2

bb.i:                                             ; preds = %cli_hash_len.exit31.1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.at = zext i32 %i.aq to i64
  tail call fastcc void @hm_sort(ptr noundef nonnull %i.as, i64 noundef 0, i64 noundef %i.at, i32 noundef 20)
  br label %cli_hash_len.exit31.2

cli_hash_len.exit31.2:                            ; preds = %bb.i, %cli_hash_len.exit31.1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.av = load i32, ptr %i.au, align 8, !tbaa !59 ; 2 uses
  %i.aw = icmp ugt i32 %i.av, 1
  br i1 %i.aw, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %cli_hash_len.exit31.2
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ay = zext i32 %i.av to i64
  tail call fastcc void @hm_sort(ptr noundef nonnull %i.ax, i64 noundef 0, i64 noundef %i.ay, i32 noundef 32)
  br label %.loopexit

.loopexit:                                        ; preds = %cli_hash_len.exit31.2, %bb.j, %bb.a
  ret void
}

declare ptr @cli_htu32_next(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @hm_sort(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef range(i32 0, 65) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %.sroa.0 = alloca <32 x i8>, align 32           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.b = add i64 %1, 1                            ; 2 uses
  %.not = icmp ult i64 %i.b, %2
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !62     ; 3 uses
  %i.d = zext nneg i32 %3 to i64                  ; 11 uses
  %i.e = mul i64 %1, %i.d                         ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.f, i64 %i.d, i1 false)
  %i.g = load i32, ptr %i.a, align 16, !tbaa !8   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.i = add nsw i32 %3, -4
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %i.l = phi ptr [ %i.c, %bb.b ], [ %i.ak, %bb.f ] ; 2 uses
  %i.m = phi ptr [ %i.c, %bb.b ], [ %i.al, %bb.f ] ; 3 uses
  %.089 = phi i64 [ %2, %bb.b ], [ %.1, %bb.f ]   ; 2 uses
  %.07688 = phi i64 [ %i.b, %bb.b ], [ %.177, %bb.f ] ; 8 uses
  %i.n = mul i64 %.07688, %i.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !8    ; 2 uses
  %.not.i = icmp eq i32 %i.p, %i.g
  br i1 %.not.i, label %hm_cmp.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = icmp ult i32 %i.p, %i.g
  br i1 %i.q, label %hm_cmp.exit.thread, label %hm_cmp.exit.thread86

hm_cmp.exit:                                      ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.s = call i32 @memcmp(ptr noundef nonnull readonly %i.r, ptr noundef nonnull readonly %i.h, i64 noundef %i.j) #11
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %hm_cmp.exit.thread, label %hm_cmp.exit.thread86

hm_cmp.exit.thread:                               ; preds = %bb.d, %hm_cmp.exit
  %i.u = add i64 %.089, -1                        ; 5 uses
  %i.v = icmp eq i64 %.07688, %i.u
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %hm_cmp.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 32 %.sroa.0, ptr nonnull align 1 %i.o, i64 %i.d, i1 false)
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !63
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.07688
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !64
  %i.z = mul i64 %i.u, %i.d                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.aa, i64 %i.d, i1 false)
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !63  ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.u
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.07688
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !64
  %i.af = load ptr, ptr %0, align 8, !tbaa !62
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr nonnull align 32 %.sroa.0, i64 %i.d, i1 false)
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !63
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.u
  store ptr %i.y, ptr %i.ai, align 8, !tbaa !64
  %.pre = load ptr, ptr %0, align 8, !tbaa !62    ; 2 uses
  br label %bb.f

hm_cmp.exit.thread86:                             ; preds = %bb.d, %hm_cmp.exit
  %i.aj = add nuw i64 %.07688, 1
  br label %bb.f

bb.f:                                             ; preds = %hm_cmp.exit.thread86, %bb.e
  %i.ak = phi ptr [ %.pre, %bb.e ], [ %i.l, %hm_cmp.exit.thread86 ] ; 2 uses
  %i.al = phi ptr [ %.pre, %bb.e ], [ %i.m, %hm_cmp.exit.thread86 ]
  %.177 = phi i64 [ %.07688, %bb.e ], [ %i.aj, %hm_cmp.exit.thread86 ] ; 3 uses
  %.1 = phi i64 [ %i.u, %bb.e ], [ %.089, %hm_cmp.exit.thread86 ] ; 3 uses
  %i.am = icmp ult i64 %.177, %.1
  br i1 %i.am, label %bb.c, label %bb.g

bb.g:                                             ; preds = %hm_cmp.exit.thread, %bb.f
  %i.an = phi ptr [ %i.l, %hm_cmp.exit.thread ], [ %i.ak, %bb.f ] ; 2 uses
  %.076.lcssa = phi i64 [ %.07688, %hm_cmp.exit.thread ], [ %.177, %bb.f ]
  %.2 = phi i64 [ %.07688, %hm_cmp.exit.thread ], [ %.1, %bb.f ]
  %i.ao = add i64 %.076.lcssa, -1                 ; 5 uses
  %.not84 = icmp eq i64 %i.ao, %1
  br i1 %.not84, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = mul i64 %i.ao, %i.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ap ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 32 %.sroa.0, ptr align 1 %i.aq, i64 %i.d, i1 false)
  %i.ar = load ptr, ptr %i.k, align 8, !tbaa !63
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ao
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !64
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr align 1 %i.au, i64 %i.d, i1 false)
  %i.av = load ptr, ptr %i.k, align 8, !tbaa !63  ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %1
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ao
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !64
  %i.az = load ptr, ptr %0, align 8, !tbaa !62
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr nonnull align 32 %.sroa.0, i64 %i.d, i1 false)
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !63
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %1
  store ptr %i.at, ptr %i.bc, align 8, !tbaa !64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call fastcc void @hm_sort(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %i.ao, i32 noundef %3)
  tail call fastcc void @hm_sort(ptr noundef nonnull %0, i64 noundef %.2, i64 noundef %2, i32 noundef %3)
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @cli_hm_have_size(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = add i32 %2, -1
  %or.cond = icmp ult i32 %i.a, -2
  %i.b = icmp ne ptr %0, null
  %or.cond3 = and i1 %i.b, %or.cond
  br i1 %or.cond3, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = zext i32 %1 to i64
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !53
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @cli_htu32_find(ptr noundef nonnull %i.e, i32 noundef %2) #10
  %i.i = icmp ne ptr %i.h, null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.i, %bb.c ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @cli_hm_have_wild(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.d = load i32, ptr %i.c, align 8, !tbaa !59
  %i.e = icmp ne i32 %i.d, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i1 [ false, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @cli_hm_have_any(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.d = load i32, ptr %i.c, align 8, !tbaa !59
  %.not4 = icmp eq i32 %i.d, 0
  br i1 %.not4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !53
  %i.h = icmp ne i64 %i.g, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.i = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %i.i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @cli_hm_scan(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = add i32 %1, -1
  %i.c = icmp ult i32 %i.b, -2
  %or.cond3.not25 = and i1 %i.a, %i.c
  %i.d = icmp ne ptr %3, null
  %or.cond5 = and i1 %or.cond3.not25, %i.d
  br i1 %or.cond5, label %bb.b, label %hm_scan.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.f = zext i32 %4 to i64
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !53
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %hm_scan.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @cli_htu32_find(ptr noundef nonnull %i.g, i32 noundef %1) #10 ; 2 uses
  %.not26 = icmp eq ptr %i.j, null
  br i1 %.not26, label %hm_scan.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58   ; 4 uses
  %.not27 = icmp eq ptr %i.l, null
  br i1 %.not27, label %hm_scan.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !59   ; 2 uses
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %hm_scan.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = icmp ult i32 %4, 5
  br i1 %i.o, label %switch.lookup, label %cli_hash_len.exit.i

switch.lookup:                                    ; preds = %bb.f
  %i.p = zext nneg i32 %4 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.cli_hm_scan_wild, i64 %i.p
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %cli_hash_len.exit.i

cli_hash_len.exit.i:                              ; preds = %bb.f, %switch.lookup
  %.0.i.i = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.f ] ; 2 uses
  %i.q = add i32 %i.n, -1
  %i.r = zext i32 %i.q to i64
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !62
  %i.t = load i32, ptr %0, align 4, !tbaa !8      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = add nuw nsw i64 %.0.i.i, 4294967292
  %i.w = and i64 %i.v, 4294967292
  br label %bb.g

bb.g:                                             ; preds = %bb.l, %cli_hash_len.exit.i
  %.02559.i = phi i64 [ 0, %cli_hash_len.exit.i ], [ %.227.i, %bb.l ] ; 2 uses
  %.02958.i = phi i64 [ %i.r, %cli_hash_len.exit.i ], [ %.231.i, %bb.l ] ; 2 uses
  %i.x = add nuw nsw i64 %.02958.i, %.02559.i
  %i.y = lshr i64 %i.x, 1                         ; 5 uses
  %i.z = mul nuw nsw i64 %i.y, %.0.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !8  ; 2 uses
  %.not.i.i = icmp eq i32 %i.t, %i.ab
  br i1 %.not.i.i, label %hm_cmp.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = icmp ult i32 %i.t, %i.ab
  br i1 %i.ac, label %.thread.i, label %hm_cmp.exit.thread.i

hm_cmp.exit.i:                                    ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ae = tail call i32 @memcmp(ptr noundef nonnull readonly %i.u, ptr noundef nonnull readonly %i.ad, i64 noundef %i.w) #11 ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %hm_cmp.exit.thread.i, label %bb.i

hm_cmp.exit.thread.i:                             ; preds = %hm_cmp.exit.i, %bb.h
  %.not40.i = icmp eq i64 %i.y, 0
  %i.ag = add nsw i64 %i.y, -1
  br i1 %.not40.i, label %hm_scan.exit, label %bb.l

bb.i:                                             ; preds = %hm_cmp.exit.i
  %.not38.i = icmp eq i32 %i.ae, 0
  br i1 %.not38.i, label %bb.j, label %.thread.i

.thread.i:                                        ; preds = %bb.i, %bb.h
  %i.ah = add nuw nsw i64 %i.y, 1
  br label %bb.l

bb.j:                                             ; preds = %bb.i
  %.not39.i = icmp eq ptr %2, null
  br i1 %.not39.i, label %hm_scan.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !63
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.y
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !64
  store ptr %i.al, ptr %2, align 8, !tbaa !64
  br label %hm_scan.exit

bb.l:                                             ; preds = %.thread.i, %hm_cmp.exit.thread.i
  %.231.i = phi i64 [ %.02958.i, %.thread.i ], [ %i.ag, %hm_cmp.exit.thread.i ] ; 2 uses
  %.227.i = phi i64 [ %i.ah, %.thread.i ], [ %.02559.i, %hm_cmp.exit.thread.i ] ; 2 uses
  %.not37.i = icmp ugt i64 %.227.i, %.231.i
  br i1 %.not37.i, label %hm_scan.exit, label %bb.g

hm_scan.exit:                                     ; preds = %bb.l, %hm_cmp.exit.thread.i, %bb.k, %bb.j, %bb.e, %bb.d, %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.j ], [ 0, %bb.d ], [ 0, %bb.e ], [ 1, %bb.k ], [ 0, %hm_cmp.exit.thread.i ], [ 0, %bb.l ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @cli_hm_scan_wild(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %hm_scan.exit
end_hunk_0
