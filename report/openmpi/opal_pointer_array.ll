Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/opal_pointer_array?download=true
inline.NumInlined: 17
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@opal_pointer_array_destruct:bb.a

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #9
  store ptr null, ptr %i.a, align 8, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %.not9 = icmp eq ptr %i.d, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #9
  store ptr null, ptr %i.c, align 8, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.e, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16   ; 2 uses
  %.not6.i = icmp eq ptr %i.j, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %i.k = phi ptr [ %i.m, %.lr.ph.i ], [ %i.j, %bb.e ]
  %.07.i = phi ptr [ %i.l, %.lr.ph.i ], [ %i.i, %bb.e ]
  tail call void %i.k(ptr noundef nonnull %i.f) #9, !inline_history !40
  %i.l = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16   ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !41

opal_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: write, target_mem: none) uwtable
define range(i32 -5, 1) i32 @opal_pointer_array_init(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i32 %2, %3
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %2, ptr %i.c, align 4, !tbaa !25
  %i.d = icmp eq i32 %3, 0
  %i.e = select i1 %i.d, i32 8, i32 %3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.e, ptr %i.f, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.g, align 8, !tbaa !26
  %i.h = icmp sgt i32 %1, 0
  %i.i = select i1 %i.h, i32 %1, i32 %3           ; 3 uses
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = tail call noalias ptr @calloc(i64 noundef %i.j, i64 noundef 8) #10 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !23
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = add nsw i64 %i.j, 63
  %i.o = lshr i64 %i.n, 6
  %i.p = tail call noalias ptr @calloc(i64 noundef %i.o, i64 noundef 8) #10 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.p, ptr %i.q, align 8, !tbaa !22
  %i.r = icmp eq ptr %i.p, null
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.k) #9
  store ptr null, ptr %i.l, align 8, !tbaa !23
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.i, ptr %i.s, align 4, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.i, ptr %i.t, align 8, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e, %bb.d
  %.0 = phi i32 [ 0, %bb.e ], [ -5, %bb.a ], [ -2, %bb.d ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @opal_pointer_array_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24
  %i.c = add nsw i32 %i.b, 1
  %i.d = load i8, ptr @opal_uses_threads, align 1, !tbaa !29, !range !30, !noundef !31
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.f) #9 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !27   ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = tail call fastcc zeroext i1 @grow_table(ptr noundef nonnull %0, i32 noundef %i.c)
  br i1 %i.k, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.d
  %.pre = load i32, ptr %i.h, align 4, !tbaa !27
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = load i8, ptr @opal_uses_threads, align 1, !tbaa !29, !range !30, !noundef !31
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.sink.split, label %bb.j, !prof !32

bb.f:                                             ; preds = %._crit_edge, %bb.c
  %i.n = phi i32 [ %.pre, %._crit_edge ], [ %i.i, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !26   ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.s
  store ptr %1, ptr %i.t, align 8, !tbaa !16
  %i.u = add nsw i32 %i.n, -1
  store i32 %i.u, ptr %i.h, align 4, !tbaa !27
  %i.v = lshr i32 %i.p, 6                         ; 2 uses
  %i.w = and i32 %i.p, 63
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl nuw i64 1, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !22  ; 2 uses
  %i.ab = zext nneg i32 %i.v to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !33
  %i.ae = or i64 %i.ad, %i.y
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !33
  %i.af = icmp sgt i32 %i.n, 1
  br i1 %i.af, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.f, %.preheader
  %.059 = phi i32 [ %i.ak, %.preheader ], [ %i.v, %bb.f ] ; 3 uses
  %i.ag = zext i32 %.059 to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !33 ; 4 uses
  %i.aj = icmp eq i64 %i.ai, -1
  %i.ak = add i32 %.059, 1
  br i1 %i.aj, label %.preheader, label %bb.g, !llvm.loop !43

bb.g:                                             ; preds = %.preheader
  %i.al = and i64 %i.ai, 4294967295
  %i.am = icmp eq i64 %i.al, 4294967295           ; 2 uses
  %i.an = lshr i64 %i.ai, 32
  %spec.select = select i1 %i.am, i32 32, i32 0   ; 2 uses
  %spec.select61 = select i1 %i.am, i64 %i.an, i64 %i.ai ; 3 uses
  %i.ao = and i64 %spec.select61, 65535
  %i.ap = icmp eq i64 %i.ao, 65535                ; 2 uses
  %i.aq = lshr i64 %spec.select61, 16
  %i.ar = or disjoint i32 %spec.select, 16
  %.155 = select i1 %i.ap, i32 %i.ar, i32 %spec.select ; 2 uses
  %.1 = select i1 %i.ap, i64 %i.aq, i64 %spec.select61 ; 3 uses
  %i.as = and i64 %.1, 255
  %i.at = icmp eq i64 %i.as, 255                  ; 2 uses
  %i.au = lshr i64 %.1, 8
  %i.av = or disjoint i32 %.155, 8
  %.256 = select i1 %i.at, i32 %i.av, i32 %.155   ; 2 uses
  %.2 = select i1 %i.at, i64 %i.au, i64 %.1       ; 3 uses
  %i.aw = and i64 %.2, 15
  %i.ax = icmp eq i64 %i.aw, 15                   ; 2 uses
  %i.ay = lshr i64 %.2, 4
  %i.az = or disjoint i32 %.256, 4
  %.357 = select i1 %i.ax, i32 %i.az, i32 %.256   ; 2 uses
  %.3 = select i1 %i.ax, i64 %i.ay, i64 %.2       ; 3 uses
  %i.ba = and i64 %.3, 3
  %i.bb = icmp eq i64 %i.ba, 3                    ; 2 uses
  %i.bc = lshr i64 %.3, 2
  %i.bd = add nuw nsw i32 %.357, 2
  %.458 = select i1 %i.bb, i32 %i.bd, i32 %.357
  %.4 = select i1 %i.bb, i64 %i.bc, i64 %.3
  %i.be = trunc i64 %.4 to i32
  %i.bf = and i32 %i.be, 1
  %i.bg = shl i32 %.059, 6
  %.5 = add nuw i32 %.458, %i.bg
  %i.bh = add nuw i32 %.5, %i.bf
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bi = load i32, ptr %i.a, align 8, !tbaa !24
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %storemerge = phi i32 [ %i.bi, %bb.h ], [ %i.bh, %bb.g ]
  store i32 %storemerge, ptr %i.o, align 8, !tbaa !26
  %i.bj = load i8, ptr @opal_uses_threads, align 1, !tbaa !29, !range !30, !noundef !31
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %.sink.split, label %bb.j, !prof !32

.sink.split:                                      ; preds = %bb.i, %bb.e
  %.053.ph = phi i32 [ -2, %bb.e ], [ %i.p, %bb.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bm = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bl) #9 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.i, %bb.e
  %.053 = phi i32 [ -2, %bb.e ], [ %i.p, %bb.i ], [ %.053.ph, %.sink.split ]
  ret i32 %.053
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @grow_table(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21
  %.fr46 = freeze i32 %i.b                        ; 2 uses
  %i.c = add i32 %.fr46, %1                       ; 2 uses
  %i.d = srem i32 %i.c, %.fr46
  %i.e = sub nsw i32 %i.c, %i.d                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.g = load i32, ptr %i.f, align 4, !tbaa !25   ; 3 uses
  %.not = icmp slt i32 %i.e, %i.g
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not47 = icmp slt i32 %1, %i.g
  br i1 %.not47, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.g, %bb.b ], [ %i.e, %bb.a ]  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 7 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.j = sext i32 %.0 to i64                      ; 5 uses
  %i.k = shl nsw i64 %i.j, 3
  %i.l = tail call ptr @realloc(ptr noundef %i.i, i64 noundef %i.k) #11 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !24   ; 3 uses
  %i.p = sub i32 %.0, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !27
  %i.s = add nsw i32 %i.p, %i.r
  store i32 %i.s, ptr %i.q, align 4, !tbaa !27
  store ptr %i.l, ptr %i.h, align 8, !tbaa !23
  %i.t = icmp slt i32 %i.o, %.0
  %i.u = sext i32 %i.o to i64                     ; 5 uses
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.v = sub nsw i64 %i.j, %i.u
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %i.u, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv.prol
  store ptr null, ptr %i.x, align 8, !tbaa !16
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !44

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.u, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.y = sub nsw i64 %i.u, %i.j
  %i.z = icmp ugt i64 %i.y, -4
  br i1 %i.z, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %indvars.iv
  store ptr null, ptr %i.ab, align 8, !tbaa !16
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.ad = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  store ptr null, ptr %i.ae, align 8, !tbaa !16
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.ag = getelementptr [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.ah = getelementptr i8, ptr %i.ag, i64 16
  store ptr null, ptr %i.ah, align 8, !tbaa !16
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.aj = getelementptr [8 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ak = getelementptr i8, ptr %i.aj, i64 24
  store ptr null, ptr %i.ak, align 8, !tbaa !16
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.j
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !45

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %i.al = add nsw i64 %i.j, 63
  %i.am = lshr i64 %i.al, 6                       ; 3 uses
  %i.an = trunc i64 %i.am to i32                  ; 2 uses
  %i.ao = add nsw i64 %i.u, 63
  %i.ap = lshr i64 %i.ao, 6
  %i.aq = trunc i64 %i.ap to i32
  %.not48 = icmp eq i32 %i.aq, %i.an
  br i1 %.not48, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !22
  %sext = shl i64 %i.am, 32
  %i.at = ashr exact i64 %sext, 29
  %i.au = tail call ptr @realloc(ptr noundef %i.as, i64 noundef %i.at) #11 ; 3 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !22
  %i.aw = load i32, ptr %i.n, align 8, !tbaa !24
  %i.ax = sext i32 %i.aw to i64
  %i.ay = add nsw i64 %i.ax, 63
  %i.az = lshr i64 %i.ay, 6                       ; 3 uses
  %i.ba = trunc i64 %i.az to i32
  %i.bb = icmp slt i32 %i.ba, %i.an
  br i1 %i.bb, label %.lr.ph52.preheader, label %.loopexit

.lr.ph52.preheader:                               ; preds = %bb.f
  %sext64 = shl i64 %i.az, 32
  %i.bc = ashr exact i64 %sext64, 29
  %scevgep = getelementptr i8, ptr %i.au, i64 %i.bc
  %i.bd = xor i64 %i.az, -1
  %i.be = add nsw i64 %i.am, %i.bd
  %i.bf = shl nsw i64 %i.be, 3
  %i.bg = and i64 %i.bf, 34359738360
  %i.bh = add nuw nsw i64 %i.bg, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.bh, i1 false), !tbaa !33
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph52.preheader, %bb.f, %._crit_edge
  store i32 %.0, ptr %i.n, align 8, !tbaa !24
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.b, %.loopexit
  %.040 = phi i1 [ true, %.loopexit ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.e ]
  ret i1 %.040
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @opal_pointer_array_set_item(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.s, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr @opal_uses_threads, align 1, !tbaa !29, !range !30, !noundef !31
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.d, !prof !32

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.d) #9 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !24
  %.not = icmp sgt i32 %i.g, %1
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call fastcc zeroext i1 @grow_table(ptr noundef nonnull %0, i32 noundef %1)
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !29, !range !30, !noundef !31
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.sink.split, label %bb.s, !prof !32

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.k = icmp eq ptr %2, null
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23   ; 2 uses
  %i.n = zext nneg i32 %1 to i64                  ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16
  %.not77 = icmp eq ptr %i.p, null                ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  br i1 %.not77, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !26
  %i.s = icmp slt i32 %1, %i.r
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %1, ptr %i.q, align 8, !tbaa !26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !27
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !27
  %i.w = lshr i32 %1, 6
  %i.x = and i32 %1, 63
  %i.y = zext nneg i32 %i.x to i64
  %i.z = shl nuw i64 1, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !22
  %i.ac = zext nneg i32 %i.w to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ac ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !33
  %i.af = xor i64 %i.ae, %i.z
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !33
  br label %bb.r

bb.l:                                             ; preds = %bb.g
  br i1 %.not77, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !27
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !27
  %i.aj = lshr i32 %1, 6                          ; 2 uses
  %i.ak = and i32 %1, 63
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl nuw i64 1, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !22 ; 2 uses
  %i.ap = zext nneg i32 %i.aj to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !33
  %i.as = or i64 %i.ar, %i.am
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !33
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !26
  %i.av = icmp eq i32 %1, %i.au
  br i1 %i.av, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.aw = icmp eq i32 %i.ai, 0
  br i1 %i.aw, label %bb.o, label %.preheader

bb.o:                                             ; preds = %bb.n
  %i.ax = load i32, ptr %i.f, align 8, !tbaa !24
  br label %bb.q

.preheader:                                       ; preds = %bb.n, %.preheader
  %.073 = phi i32 [ %i.bc, %.preheader ], [ %i.aj, %bb.n ] ; 3 uses
  %i.ay = zext i32 %.073 to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !33 ; 4 uses
  %i.bb = icmp eq i64 %i.ba, -1
  %i.bc = add i32 %.073, 1
  br i1 %i.bb, label %.preheader, label %bb.p, !llvm.loop !47

bb.p:                                             ; preds = %.preheader
  %i.bd = and i64 %i.ba, 4294967295
  %i.be = icmp eq i64 %i.bd, 4294967295           ; 2 uses
  %i.bf = lshr i64 %i.ba, 32
  %spec.select = select i1 %i.be, i32 32, i32 0   ; 2 uses
  %spec.select78 = select i1 %i.be, i64 %i.bf, i64 %i.ba ; 3 uses
  %i.bg = and i64 %spec.select78, 65535
  %i.bh = icmp eq i64 %i.bg, 65535                ; 2 uses
  %i.bi = lshr i64 %spec.select78, 16
  %i.bj = or disjoint i32 %spec.select, 16
  %.169 = select i1 %i.bh, i32 %i.bj, i32 %spec.select ; 2 uses
  %.1 = select i1 %i.bh, i64 %i.bi, i64 %spec.select78 ; 3 uses
  %i.bk = and i64 %.1, 255
  %i.bl = icmp eq i64 %i.bk, 255                  ; 2 uses
  %i.bm = lshr i64 %.1, 8
  %i.bn = or disjoint i32 %.169, 8
  %.270 = select i1 %i.bl, i32 %i.bn, i32 %.169   ; 2 uses
  %.2 = select i1 %i.bl, i64 %i.bm, i64 %.1       ; 3 uses
  %i.bo = and i64 %.2, 15
  %i.bp = icmp eq i64 %i.bo, 15                   ; 2 uses
  %i.bq = lshr i64 %.2, 4
  %i.br = or disjoint i32 %.270, 4
  %.371 = select i1 %i.bp, i32 %i.br, i32 %.270   ; 2 uses
  %.3 = select i1 %i.bp, i64 %i.bq, i64 %.2       ; 3 uses
  %i.bs = and i64 %.3, 3
  %i.bt = icmp eq i64 %i.bs, 3                    ; 2 uses
  %i.bu = lshr i64 %.3, 2
  %i.bv = add nuw nsw i32 %.371, 2
  %.472 = select i1 %i.bt, i32 %i.bv, i32 %.371
  %.4 = select i1 %i.bt, i64 %i.bu, i64 %.3
  %i.bw = trunc i64 %.4 to i32
  %i.bx = and i32 %i.bw, 1
  %i.by = shl i32 %.073, 6
  %.5 = add nuw i32 %.472, %i.by
  %i.bz = add nuw i32 %.5, %i.bx
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %storemerge = phi i32 [ %i.bz, %bb.p ], [ %i.ax, %bb.o ]
  store i32 %storemerge, ptr %i.at, align 8, !tbaa !26
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.m, %bb.l, %bb.h, %bb.k
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  store ptr %2, ptr %i.ca, align 8, !tbaa !16
  %i.cb = load i8, ptr @opal_uses_threads, align 1, !tbaa !29, !range !30, !noundef !31
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %.sink.split, label %bb.s, !prof !32

.sink.split:                                      ; preds = %bb.r, %bb.f
  %.067.ph = phi i32 [ -1, %bb.f ], [ 0, %bb.r ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ce = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cd) #9 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.r, %bb.f, %bb.a
  %.067 = phi i32 [ -1, %bb.a ], [ 0, %bb.r ], [ -1, %bb.f ], [ %.067.ph, %.sink.split ]
  ret i32 %.067
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @opal_pointer_array_test_and_set_item(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @opal_uses_threads, align 1, !tbaa !29, !range !30, !noundef !31
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.c) #9 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24
  %i.g = icmp slt i32 %1, %i.f
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 2 uses
  %i.j = sext i32 %1 to i64                       ; 2 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr @opal_uses_threads, align 1, !tbaa !29, !range !30, !noundef !31
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.sink.split, label %bb.l, !prof !32

bb.f:                                             ; preds = %bb.c
  %i.o = tail call fastcc zeroext i1 @grow_table(ptr noundef nonnull %0, i32 noundef %1)
  br i1 %i.o, label %..thread_crit_edge, label %bb.g

..thread_crit_edge:                               ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !23
  %.pre71 = sext i32 %1 to i64
  br label %.thread

bb.g:                                             ; preds = %bb.f
  %i.p = load i8, ptr @opal_uses_threads, align 1, !tbaa !29, !range !30, !noundef !31
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.sink.split, label %bb.l, !prof !32

.thread:                                          ; preds = %..thread_crit_edge, %bb.d
  %.pre-phi = phi i64 [ %.pre71, %..thread_crit_edge ], [ %i.j, %bb.d ]
  %i.r = phi ptr [ %.pre, %..thread_crit_edge ], [ %i.i, %bb.d ]
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.pre-phi
  store ptr %2, ptr %i.s, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !27   ; 2 uses
  %i.v = add nsw i32 %i.u, -1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !27
  %i.w = lshr i32 %1, 6                           ; 2 uses
  %i.x = and i32 %1, 63
  %i.y = zext nneg i32 %i.x to i64
  %i.z = shl nuw i64 1, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !22 ; 2 uses
  %i.ac = zext nneg i32 %i.w to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ac ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !33
  %i.af = or i64 %i.ae, %i.z
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !33
  %i.ag = icmp sgt i32 %i.u, 1
  br i1 %i.ag, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !26
  %i.aj = icmp eq i32 %1, %i.ai
  br i1 %i.aj, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.h, %.preheader
  %.064 = phi i32 [ %i.ao, %.preheader ], [ %i.w, %bb.h ] ; 3 uses
  %i.ak = zext i32 %.064 to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !33 ; 4 uses
  %i.an = icmp eq i64 %i.am, -1
  %i.ao = add i32 %.064, 1
  br i1 %i.an, label %.preheader, label %bb.i, !llvm.loop !48

bb.i:                                             ; preds = %.preheader
  %i.ap = and i64 %i.am, 4294967295
  %i.aq = icmp eq i64 %i.ap, 4294967295           ; 2 uses
  %i.ar = lshr i64 %i.am, 32
  %spec.select = select i1 %i.aq, i32 32, i32 0   ; 2 uses
  %spec.select70 = select i1 %i.aq, i64 %i.ar, i64 %i.am ; 3 uses
  %i.as = and i64 %spec.select70, 65535
  %i.at = icmp eq i64 %i.as, 65535                ; 2 uses
  %i.au = lshr i64 %spec.select70, 16
  %i.av = or disjoint i32 %spec.select, 16
  %.160 = select i1 %i.at, i32 %i.av, i32 %spec.select ; 2 uses
  %.1 = select i1 %i.at, i64 %i.au, i64 %spec.select70 ; 3 uses
  %i.aw = and i64 %.1, 255
  %i.ax = icmp eq i64 %i.aw, 255                  ; 2 uses
  %i.ay = lshr i64 %.1, 8
  %i.az = or disjoint i32 %.160, 8
  %.261 = select i1 %i.ax, i32 %i.az, i32 %.160   ; 2 uses
  %.2 = select i1 %i.ax, i64 %i.ay, i64 %.1       ; 3 uses
  %i.ba = and i64 %.2, 15
  %i.bb = icmp eq i64 %i.ba, 15                   ; 2 uses
  %i.bc = lshr i64 %.2, 4
  %i.bd = or disjoint i32 %.261, 4
  %.362 = select i1 %i.bb, i32 %i.bd, i32 %.261   ; 2 uses
  %.3 = select i1 %i.bb, i64 %i.bc, i64 %.2       ; 3 uses
  %i.be = and i64 %.3, 3
  %i.bf = icmp eq i64 %i.be, 3                    ; 2 uses
  %i.bg = lshr i64 %.3, 2
  %i.bh = add nuw nsw i32 %.362, 2
  %.463 = select i1 %i.bf, i32 %i.bh, i32 %.362
  %.4 = select i1 %i.bf, i64 %i.bg, i64 %.3
  %i.bi = trunc i64 %.4 to i32
  %i.bj = and i32 %i.bi, 1
  %i.bk = shl i32 %.064, 6
  %.5 = add nuw i32 %.463, %i.bk
  %i.bl = add nuw i32 %.5, %i.bj
  store i32 %i.bl, ptr %i.ah, align 8, !tbaa !26
  br label %bb.k

bb.j:                                             ; preds = %.thread
  %i.bm = load i32, ptr %i.e, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !26
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %i.bo = load i8, ptr @opal_uses_threads, align 1, !tbaa !29, !range !30, !noundef !31
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %.sink.split, label %bb.l, !prof !32

.sink.split:                                      ; preds = %bb.k, %bb.g, %bb.e
  %.058.ph = phi i1 [ false, %bb.g ], [ false, %bb.e ], [ true, %bb.k ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.br = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bq) #9 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.k, %bb.g, %bb.e
  %.058 = phi i1 [ false, %bb.g ], [ true, %bb.k ], [ false, %bb.e ], [ %.058.ph, %.sink.split ]
  ret i1 %.058
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @opal_pointer_array_set_size(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @opal_uses_threads, align 1, !tbaa !29, !range !30, !noundef !31
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.c) #9 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24
  %i.g = icmp sgt i32 %1, %i.f
  br i1 %i.g, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i8, ptr @opal_uses_threads, align 1, !tbaa !29, !range !30
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = tail call fastcc zeroext i1 @grow_table(ptr noundef nonnull %0, i32 noundef %1)
  %.pre8 = load i8, ptr @opal_uses_threads, align 1, !tbaa !29, !range !30 ; 2 uses
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = trunc nuw i8 %.pre8 to i1
  br i1 %i.i, label %.sink.split, label %bb.g, !prof !32

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.j = phi i8 [ %.pre, %._crit_edge ], [ %.pre8, %bb.d ]
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.sink.split, label %bb.g, !prof !32

.sink.split:                                      ; preds = %bb.f, %bb.e
  %.0.ph = phi i32 [ -1, %bb.e ], [ 0, %bb.f ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.l) #9 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f, %bb.e
  %.0 = phi i32 [ 0, %bb.f ], [ -1, %bb.e ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

declare void @opal_class_initialize(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn memory(readwrite, argmem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0,1) }
attributes #11 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"p1 _ZTS12opal_class_t", !8, i64 0}
!11 = !{!"any p2 pointer", !8, i64 0}
!12 = !{!"long", !4, i64 0}
!13 = !{!"opal_class_t", !9, i64 0, !10, i64 8, !8, i64 16, !8, i64 24, !5, i64 32, !5, i64 36, !11, i64 40, !11, i64 48, !12, i64 56}
!14 = !{!"opal_object_t", !10, i64 0, !5, i64 8}
!15 = !{!14, !10, i64 0}
!16 = !{!8, !8, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"opal_mutex_t", !14, i64 0, !4, i64 16, !5, i64 56}
!19 = !{!"p1 long", !8, i64 0}
!20 = !{!"opal_pointer_array_t", !14, i64 0, !18, i64 16, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !19, i64 104, !11, i64 112}
!21 = !{!20, !5, i64 96}
!22 = !{!20, !19, i64 104}
!23 = !{!20, !11, i64 112}
!24 = !{!20, !5, i64 88}
!25 = !{!20, !5, i64 92}
!26 = !{!20, !5, i64 80}
!27 = !{!20, !5, i64 84}
!28 = !{!"_Bool", !4, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{i8 0, i8 2}
!31 = !{}
!32 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!33 = !{!12, !12, i64 0}
!34 = distinct !{null}
!35 = distinct !{!35, !17}
!36 = !{!5, !5, i64 0}
!37 = !{!13, !5, i64 32}
!38 = !{!14, !5, i64 8}
!39 = !{!13, !11, i64 40}
!40 = distinct !{null}
!41 = distinct !{!41, !17}
!42 = !{!13, !11, i64 48}
!43 = distinct !{!43, !17}
!44 = distinct !{!44, !46}
!45 = distinct !{!45, !17}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = distinct !{!47, !17}
!48 = distinct !{!48, !17}
end_hunk_0
