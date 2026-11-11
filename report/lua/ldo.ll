Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lua/original/ldo?download=true
inline.NumInlined: 34
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@luaD_reallocstack:bb.a
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.bq = load i64, ptr %.0236.i, align 8, !tbaa !30
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 %i.bq
  store ptr %i.br, ptr %.0236.i, align 8, !tbaa !30
  %i.bs = getelementptr inbounds nuw i8, ptr %.0236.i, i64 60
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !45
  %i.bu = and i32 %i.bt, 32768
  %.not25.i = icmp eq i32 %i.bu, 0
  br i1 %.not25.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph8.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.0236.i, i64 40
  store volatile i32 1, ptr %i.bv, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph8.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.0236.i, i64 16
  %.023.i36 = load ptr, ptr %i.bw, align 8, !tbaa !44 ; 2 uses
  %.not24.i37 = icmp eq ptr %.023.i36, null
  br i1 %.not24.i37, label %correctstack.exit, label %.lr.ph8.i

correctstack.exit:                                ; preds = %bb.f, %._crit_edge.i35
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.by = sext i32 %1 to i64
  %i.bz = getelementptr inbounds [16 x i8], ptr %i.bx, i64 %i.by
  store ptr %i.bz, ptr %i.a, align 8, !tbaa !30
  %i.ca = icmp sgt i32 %1, %i.i
  br i1 %i.ca, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %correctstack.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.at, %correctstack.exit ] ; 2 uses
  %i.cb = getelementptr inbounds [16 x i8], ptr %i.ay, i64 %indvars.iv
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i8 0, ptr %i.cc, align 8, !tbaa !30
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cd = icmp slt i64 %indvars.iv.next, %i.aw
  br i1 %i.cd, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %correctstack.exit, %bb.b
  %.030 = phi i32 [ 0, %bb.b ], [ 1, %correctstack.exit ], [ 1, %.lr.ph ]
  ret i32 %.030
}

declare hidden ptr @luaM_realloc_(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @correctstack(ptr nofree noundef captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !30
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 %i.d
  store ptr %i.e, ptr %i.c, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !30
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 %i.g
  store ptr %i.h, ptr %i.f, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.01 = load ptr, ptr %i.i, align 8, !tbaa !30   ; 2 uses
  %.not2 = icmp eq ptr %.01, null
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.03 = phi ptr [ %.0, %.lr.ph ], [ %.01, %bb.a ] ; 2 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %.03, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !30
  %i.m = getelementptr inbounds i8, ptr %i.j, i64 %i.l
  store ptr %i.m, ptr %i.k, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %.03, i64 24
  %.0 = load ptr, ptr %i.n, align 8, !tbaa !30    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.0234 = load ptr, ptr %i.o, align 8, !tbaa !44 ; 2 uses
  %.not245 = icmp eq ptr %.0234, null
  br i1 %.not245, label %._crit_edge9, label %.lr.ph8

.lr.ph8:                                          ; preds = %._crit_edge, %bb.c
  %.0236 = phi ptr [ %.023, %bb.c ], [ %.0234, %._crit_edge ] ; 6 uses
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %.0236, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !30
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 %i.r
  store ptr %i.s, ptr %i.q, align 8, !tbaa !30
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.u = load i64, ptr %.0236, align 8, !tbaa !30
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 %i.u
  store ptr %i.v, ptr %.0236, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %.0236, i64 60
  %i.x = load i32, ptr %i.w, align 4, !tbaa !45
  %i.y = and i32 %i.x, 32768
  %.not25 = icmp eq i32 %i.y, 0
  br i1 %.not25, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph8
  %i.z = getelementptr inbounds nuw i8, ptr %.0236, i64 40
  store volatile i32 1, ptr %i.z, align 8, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph8, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %.0236, i64 16
  %.023 = load ptr, ptr %i.aa, align 8, !tbaa !44 ; 2 uses
  %.not24 = icmp eq ptr %.023, null
  br i1 %.not24, label %._crit_edge9, label %.lr.ph8

._crit_edge9:                                     ; preds = %bb.c, %._crit_edge
  ret void
}

; Function Attrs: noreturn
declare hidden void @luaG_runerror(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define hidden void @luaD_shrinkstack(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.01012.i = load ptr, ptr %i.c, align 8, !tbaa !44 ; 2 uses
  %.not13.i = icmp eq ptr %.01012.i, null
  br i1 %.not13.i, label %stackinuse.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.01015.i = phi ptr [ %.010.i, %.lr.ph.i ], [ %.01012.i, %bb.a ] ; 2 uses
  %.014.i = phi ptr [ %spec.select.i, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01015.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30   ; 2 uses
  %i.f = icmp ult ptr %.014.i, %i.e
  %spec.select.i = select i1 %i.f, ptr %i.e, ptr %.014.i ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.01015.i, i64 16
  %.010.i = load ptr, ptr %i.g, align 8, !tbaa !44 ; 2 uses
  %.not.i = icmp eq ptr %.010.i, null
  br i1 %.not.i, label %stackinuse.exit, label %.lr.ph.i

stackinuse.exit:                                  ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi ptr [ %i.b, %bb.a ], [ %spec.select.i, %.lr.ph.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.j = ptrtoint ptr %.0.lcssa.i to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 4
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = tail call i32 @llvm.smax.i32(i32 %i.n, i32 19)
  %spec.store.select.i = add nuw nsw i32 %i.o, 1  ; 2 uses
  %i.p = icmp slt i32 %i.n, 1000000
  br i1 %i.p, label %bb.b, label %bb.d

bb.b:                                             ; preds = %stackinuse.exit
  %i.q = icmp sgt i32 %i.n, 333332
  %i.r = mul nuw nsw i32 %spec.store.select.i, 3
  %i.s = select i1 %i.q, i32 1000000, i32 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !30
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k
  %i.x = lshr exact i64 %i.w, 4
  %i.y = trunc i64 %i.x to i32
  %i.z = icmp slt i32 %i.s, %i.y
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = tail call i32 @llvm.umin.i32(i32 %spec.store.select.i, i32 500000)
  %i.ab = shl nuw nsw i32 %i.aa, 1
  %i.ac = tail call i32 @luaD_reallocstack(ptr noundef nonnull %0, i32 noundef %i.ab, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %stackinuse.exit, %bb.b, %bb.c
  tail call void @luaE_shrinkCI(ptr noundef nonnull %0) #16
  ret void
}

declare hidden void @luaE_shrinkCI(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @luaD_hook(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %5 = alloca %struct.lua_Debug, align 8          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load volatile ptr, ptr %i.a, align 8, !tbaa !46 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.d = load i8, ptr %i.c, align 2, !tbaa !47
  %.not40 = icmp eq i8 %i.d, 0
  br i1 %.not40, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.k = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.p, %i.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store i32 %1, ptr %5, align 8, !tbaa !49
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i32 %2, ptr %i.r, align 8, !tbaa !50
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 136
  store ptr %i.f, ptr %i.s, align 8, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %3, ptr %i.t, align 8, !tbaa !52
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i32 %4, ptr %i.u, align 4, !tbaa !53
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 60 ; 5 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !45
  %i.x = and i32 %i.w, 32768
  %.not41 = icmp eq i32 %i.x, 0
  br i1 %.not41, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !30   ; 4 uses
  %i.z = icmp ult ptr %i.h, %i.y
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.y, ptr %i.g, align 8, !tbaa !30
  %.pre42 = ptrtoint ptr %i.y to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.pre-phi = phi i64 [ %.pre42, %bb.e ], [ %i.k, %bb.d ], [ %i.k, %bb.c ]
  %6 = phi ptr [ %i.y, %bb.e ], [ %i.h, %bb.d ], [ %i.h, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !30
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %.pre-phi
  %i.ae = icmp slt i64 %i.ad, 336
  br i1 %i.ae, label %bb.g, label %bb.h, !prof !43

bb.g:                                             ; preds = %bb.f
  %i.af = tail call i32 @luaD_growstack(ptr noundef nonnull %0, i32 noundef 20, i32 noundef 1) ; 0 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !30
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ag = phi ptr [ %6, %bb.f ], [ %.pre, %bb.g ]
  %i.ah = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 320 ; 2 uses
  %i.aj = icmp ult ptr %i.ah, %i.ai
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.ai, ptr %i.n, align 8, !tbaa !30
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 0, ptr %i.c, align 2, !tbaa !47
  %i.ak = load i32, ptr %i.v, align 4, !tbaa !45
  %i.al = or i32 %i.ak, 1048576
  store i32 %i.al, ptr %i.v, align 4, !tbaa !45
  call void %i.b(ptr noundef nonnull %0, ptr noundef nonnull %5) #16
  store i8 1, ptr %i.c, align 2, !tbaa !47
  %i.am = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.q
  store ptr %i.an, ptr %i.n, align 8, !tbaa !30
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.m
  store ptr %i.ap, ptr %i.g, align 8, !tbaa !30
  %i.aq = load i32, ptr %i.v, align 4, !tbaa !45
  %i.ar = and i32 %i.aq, -1048577
  store i32 %i.ar, ptr %i.v, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaD_hookcall(ptr noundef initializes((180, 184)) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %2 = alloca %struct.lua_Debug, align 8          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 0, ptr %i.a, align 4, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.c = load volatile i32, ptr %i.b, align 4, !tbaa !55
  %i.d = and i32 %i.c, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.f = load i32, ptr %i.e, align 4, !tbaa !45
  %i.g = lshr i32 %i.f, 20
  %i.h = and i32 %i.g, 4
  %i.i = load ptr, ptr %1, align 8, !tbaa !30
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 3 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  %i.q = load i8, ptr %i.p, align 2, !tbaa !66
  %i.r = zext i8 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.t = load volatile ptr, ptr %i.s, align 8, !tbaa !46 ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %luaD_hook.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.v = load i8, ptr %i.u, align 2, !tbaa !47
  %.not40.i = icmp eq i8 %i.v, 0
  br i1 %.not40.i, label %luaD_hook.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !41   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !30   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !30
  %i.ac = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 5 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !30
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store i32 %i.h, ptr %2, align 8, !tbaa !49
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 -1, ptr %i.aj, align 8, !tbaa !50
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 136
  store ptr %i.x, ptr %i.ak, align 8, !tbaa !51
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 1, ptr %i.al, align 8, !tbaa !52
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i32 %i.r, ptr %i.am, align 4, !tbaa !53
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 60 ; 5 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !45
  %i.ap = and i32 %i.ao, 32768
  %.not41.i = icmp eq i32 %i.ap, 0
  br i1 %.not41.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aq = load ptr, ptr %i.af, align 8, !tbaa !30 ; 4 uses
  %i.ar = icmp ult ptr %i.z, %i.aq
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.aq, ptr %i.y, align 8, !tbaa !30
  %.pre42.i = ptrtoint ptr %i.aq to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.pre-phi.i = phi i64 [ %.pre42.i, %bb.f ], [ %i.ac, %bb.e ], [ %i.ac, %bb.d ]
  %3 = phi ptr [ %i.aq, %bb.f ], [ %i.z, %bb.e ], [ %i.z, %bb.d ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !30
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %.pre-phi.i
  %i.aw = icmp slt i64 %i.av, 336
  br i1 %i.aw, label %bb.h, label %bb.i, !prof !43

bb.h:                                             ; preds = %bb.g
  %i.ax = tail call i32 @luaD_growstack(ptr noundef nonnull %0, i32 noundef 20, i32 noundef 1) ; 0 uses
  %.pre.i = load ptr, ptr %i.y, align 8, !tbaa !30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ay = phi ptr [ %3, %bb.g ], [ %.pre.i, %bb.h ]
  %i.az = load ptr, ptr %i.af, align 8, !tbaa !30
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 320 ; 2 uses
  %i.bb = icmp ult ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %i.ba, ptr %i.af, align 8, !tbaa !30
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i8 0, ptr %i.u, align 2, !tbaa !47
  %i.bc = load i32, ptr %i.an, align 4, !tbaa !45
  %i.bd = or i32 %i.bc, 1048576
  store i32 %i.bd, ptr %i.an, align 4, !tbaa !45
  call void %i.t(ptr noundef nonnull %0, ptr noundef nonnull %2) #16, !inline_history !67
  store i8 1, ptr %i.u, align 2, !tbaa !47
  %i.be = load ptr, ptr %i.aa, align 8, !tbaa !30
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.ai
  store ptr %i.bf, ptr %i.af, align 8, !tbaa !30
  %i.bg = load ptr, ptr %i.aa, align 8, !tbaa !30
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.ae
  store ptr %i.bh, ptr %i.y, align 8, !tbaa !30
  %i.bi = load i32, ptr %i.an, align 4, !tbaa !45
  %i.bj = and i32 %i.bi, -1048577
  store i32 %i.bj, ptr %i.an, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !30
  br label %luaD_hook.exit

luaD_hook.exit:                                   ; preds = %bb.b, %bb.c, %bb.k
  %i.bk = phi ptr [ %i.o, %bb.b ], [ %i.o, %bb.c ], [ %.pre, %bb.k ]
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -4
  store ptr %i.bl, ptr %i.m, align 8, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %luaD_hook.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaD_poscall(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.b = load i32, ptr %i.a, align 4, !tbaa !45   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.d = load volatile i32, ptr %i.c, align 4, !tbaa !55
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.b, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 262144
  %.not11 = icmp eq i32 %i.e, 0
  br i1 %.not11, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @rethook(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = and i32 %i.b, 262399                     ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !30     ; 10 uses
  switch i32 %i.f, label %bb.j [
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 0, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !30
  br label %moveresults.exit

bb.f:                                             ; preds = %bb.d
  %i.i = icmp eq i32 %2, 0
  br i1 %i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30
  %i.l = sext i32 %2 to i64
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr inbounds [16 x i8], ptr %i.k, i64 %i.m ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !30
  store i64 %i.o, ptr %i.g, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load i8, ptr %i.p, align 8, !tbaa !34
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi i8 [ %i.q, %bb.g ], [ 0, %bb.f ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %.sink.i, ptr %i.r, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.s, ptr %i.t, align 8, !tbaa !30
  br label %moveresults.exit

bb.i:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30
  %i.w = sext i32 %2 to i64                       ; 2 uses
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.x ; 3 uses
  %i.z = icmp sgt i32 %2, 0
  br i1 %i.z, label %.lr.ph.preheader.i.i, label %genmoveresults.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.i
  %wide.trip.count.i.i = zext nneg i32 %2 to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.aa = icmp eq i32 %2, 1
  br i1 %i.aa, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv.i.i ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %indvars.iv.i.i ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !30
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i8 %i.af, ptr %i.ag, align 8, !tbaa !34
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %indvars.iv.next.i.i ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !30
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !30
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !34
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i8 %i.al, ptr %i.am, align 8, !tbaa !34
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %genmoveresults.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

genmoveresults.exit.i.loopexit.unr-lcssa:         ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %genmoveresults.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %genmoveresults.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.1, %genmoveresults.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod12 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv.i.i.epil.init ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %indvars.iv.i.i.epil.init ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !30
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !30
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !34
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 %i.ar, ptr %i.as, align 8, !tbaa !34
  br label %genmoveresults.exit.i

genmoveresults.exit.i:                            ; preds = %.lr.ph.i.i.epil.preheader, %genmoveresults.exit.i.loopexit.unr-lcssa, %bb.i
  %i.at = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.w
  store ptr %i.at, ptr %i.u, align 8, !tbaa !30
  br label %moveresults.exit

bb.j:                                             ; preds = %bb.d
  %i.au = and i32 %i.b, 255                       ; 2 uses
  %i.av = add nsw i32 %i.au, -1                   ; 2 uses
  %.not.i = icmp samesign ult i32 %i.f, 262144
  br i1 %.not.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !41
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  store i32 %2, ptr %i.ay, align 8, !tbaa !30
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !41
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 60 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !45
  %i.bc = or i32 %i.bb, 131072
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !45
  %i.bd = tail call ptr @luaF_close(ptr noundef nonnull %0, ptr noundef %i.g, i8 noundef zeroext 6, i32 noundef 1) #16 ; 2 uses
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !41 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 60 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !45
  %i.bh = and i32 %i.bg, -131073
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !45
  %i.bi = load volatile i32, ptr %i.c, align 4, !tbaa !55
  %.not42.i = icmp eq i32 %i.bi, 0
  br i1 %.not42.i, label %bb.m, label %bb.l

end_hunk_0
begin_hunk_1_@luaD_poscall:bb.a
  %i.bw = icmp sgt i32 %spec.select.i.i, 0
  br i1 %i.bw, label %.lr.ph.preheader.i51.i, label %.preheader.i43.i

.lr.ph.preheader.i51.i:                           ; preds = %bb.n
  %wide.trip.count.i52.i = zext nneg i32 %spec.select.i.i to i64 ; 2 uses
  %xtraiter13 = and i64 %wide.trip.count.i52.i, 1
  %i.bx = icmp eq i32 %spec.select.i.i, 1
  br i1 %i.bx, label %.lr.ph.i53.i.epil.preheader, label %.lr.ph.preheader.i51.i.new

.lr.ph.preheader.i51.i.new:                       ; preds = %.lr.ph.preheader.i51.i
  %unroll_iter16 = and i64 %wide.trip.count.i52.i, 2147483646
  br label %.lr.ph.i53.i

.preheader.i43.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i53.i
  %lcmp.mod14.not = icmp eq i64 %xtraiter13, 0
  br i1 %lcmp.mod14.not, label %.preheader.i43.i, label %.lr.ph.i53.i.epil.preheader

.lr.ph.i53.i.epil.preheader:                      ; preds = %.preheader.i43.i.loopexit.unr-lcssa, %.lr.ph.preheader.i51.i
  %indvars.iv.i54.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i51.i ], [ %indvars.iv.next.i55.i.1, %.preheader.i43.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod15 = trunc i32 %spec.select.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod15)
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %.1.i, i64 %indvars.iv.i54.i.epil.init ; 2 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %indvars.iv.i54.i.epil.init ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !30
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !30
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !34
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i8 %i.cc, ptr %i.cd, align 8, !tbaa !34
  br label %.preheader.i43.i

.preheader.i43.i:                                 ; preds = %.lr.ph.i53.i.epil.preheader, %.preheader.i43.i.loopexit.unr-lcssa, %bb.n
  %.023.lcssa.i44.i = phi i32 [ 0, %bb.n ], [ %spec.select.i.i, %.preheader.i43.i.loopexit.unr-lcssa ], [ %spec.select.i.i, %.lr.ph.i53.i.epil.preheader ] ; 2 uses
  %i.ce = icmp slt i32 %.023.lcssa.i44.i, %.039.i
  br i1 %i.ce, label %.lr.ph29.preheader.i45.i, label %genmoveresults.exit57.i

.lr.ph29.preheader.i45.i:                         ; preds = %.preheader.i43.i
  %i.cf = zext nneg i32 %.023.lcssa.i44.i to i64  ; 4 uses
  %wide.trip.count34.i46.i = zext nneg i32 %.039.i to i64 ; 3 uses
  %i.cg = sub nsw i64 %wide.trip.count34.i46.i, %i.cf
  %xtraiter18 = and i64 %i.cg, 7                  ; 2 uses
  %lcmp.mod19.not = icmp eq i64 %xtraiter18, 0
  br i1 %lcmp.mod19.not, label %.lr.ph29.i47.i.prol.loopexit, label %.lr.ph29.i47.i.prol

.lr.ph29.i47.i.prol:                              ; preds = %.lr.ph29.preheader.i45.i, %.lr.ph29.i47.i.prol
  %indvars.iv31.i48.i.prol = phi i64 [ %indvars.iv.next32.i49.i.prol, %.lr.ph29.i47.i.prol ], [ %i.cf, %.lr.ph29.preheader.i45.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph29.i47.i.prol ], [ 0, %.lr.ph29.preheader.i45.i ]
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %.1.i, i64 %indvars.iv31.i48.i.prol
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i8 0, ptr %i.ci, align 8, !tbaa !30
  %indvars.iv.next32.i49.i.prol = add nuw nsw i64 %indvars.iv31.i48.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter18
  br i1 %prol.iter.cmp.not, label %.lr.ph29.i47.i.prol.loopexit, label %.lr.ph29.i47.i.prol, !llvm.loop !94

.lr.ph29.i47.i.prol.loopexit:                     ; preds = %.lr.ph29.i47.i.prol, %.lr.ph29.preheader.i45.i
  %indvars.iv31.i48.i.unr = phi i64 [ %i.cf, %.lr.ph29.preheader.i45.i ], [ %indvars.iv.next32.i49.i.prol, %.lr.ph29.i47.i.prol ]
  %i.cj = sub nsw i64 %i.cf, %wide.trip.count34.i46.i
  %i.ck = icmp ugt i64 %i.cj, -8
  br i1 %i.ck, label %genmoveresults.exit57.i, label %.lr.ph29.i47.i

.lr.ph.i53.i:                                     ; preds = %.lr.ph.i53.i, %.lr.ph.preheader.i51.i.new
  %indvars.iv.i54.i = phi i64 [ 0, %.lr.ph.preheader.i51.i.new ], [ %indvars.iv.next.i55.i.1, %.lr.ph.i53.i ] ; 4 uses
  %niter17 = phi i64 [ 0, %.lr.ph.preheader.i51.i.new ], [ %niter17.next.1, %.lr.ph.i53.i ]
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %.1.i, i64 %indvars.iv.i54.i ; 2 uses
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %indvars.iv.i54.i ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !30
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !30
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !34
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i8 %i.cp, ptr %i.cq, align 8, !tbaa !34
  %indvars.iv.next.i55.i = or disjoint i64 %indvars.iv.i54.i, 1 ; 2 uses
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %.1.i, i64 %indvars.iv.next.i55.i ; 2 uses
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %indvars.iv.next.i55.i ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !30
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !30
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !34
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i8 %i.cv, ptr %i.cw, align 8, !tbaa !34
  %indvars.iv.next.i55.i.1 = add nuw nsw i64 %indvars.iv.i54.i, 2 ; 2 uses
  %niter17.next.1 = add i64 %niter17, 2           ; 2 uses
  %niter17.ncmp.1 = icmp eq i64 %niter17.next.1, %unroll_iter16
  br i1 %niter17.ncmp.1, label %.preheader.i43.i.loopexit.unr-lcssa, label %.lr.ph.i53.i

.lr.ph29.i47.i:                                   ; preds = %.lr.ph29.i47.i.prol.loopexit, %.lr.ph29.i47.i
  %indvars.iv31.i48.i = phi i64 [ %indvars.iv.next32.i49.i.7, %.lr.ph29.i47.i ], [ %indvars.iv31.i48.i.unr, %.lr.ph29.i47.i.prol.loopexit ] ; 9 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %.1.i, i64 %indvars.iv31.i48.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i8 0, ptr %i.cy, align 8, !tbaa !30
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %.1.i, i64 %indvars.iv31.i48.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  store i8 0, ptr %i.da, align 8, !tbaa !30
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %.1.i, i64 %indvars.iv31.i48.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  store i8 0, ptr %i.dc, align 8, !tbaa !30
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %.1.i, i64 %indvars.iv31.i48.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  store i8 0, ptr %i.de, align 8, !tbaa !30
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %.1.i, i64 %indvars.iv31.i48.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 72
  store i8 0, ptr %i.dg, align 8, !tbaa !30
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %.1.i, i64 %indvars.iv31.i48.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 88
  store i8 0, ptr %i.di, align 8, !tbaa !30
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %.1.i, i64 %indvars.iv31.i48.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 104
  store i8 0, ptr %i.dk, align 8, !tbaa !30
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %.1.i, i64 %indvars.iv31.i48.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 120
  store i8 0, ptr %i.dm, align 8, !tbaa !30
  %indvars.iv.next32.i49.i.7 = add nuw nsw i64 %indvars.iv31.i48.i, 8 ; 2 uses
  %exitcond35.not.i50.i.7 = icmp eq i64 %indvars.iv.next32.i49.i.7, %wide.trip.count34.i46.i
  br i1 %exitcond35.not.i50.i.7, label %genmoveresults.exit57.i, label %.lr.ph29.i47.i

genmoveresults.exit57.i:                          ; preds = %.lr.ph29.i47.i.prol.loopexit, %.lr.ph29.i47.i, %.preheader.i43.i
  %i.dn = sext i32 %.039.i to i64
  %i.do = getelementptr inbounds [16 x i8], ptr %.1.i, i64 %i.dn
  store ptr %i.do, ptr %i.br, align 8, !tbaa !30
  br label %moveresults.exit

moveresults.exit:                                 ; preds = %bb.e, %bb.h, %genmoveresults.exit.i, %genmoveresults.exit57.i
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !70
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !41
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rethook(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) unnamed_addr #6 {
bb.a:
  %3 = alloca %struct.lua_Debug, align 8          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.b = load volatile i32, ptr %i.a, align 4, !tbaa !55
  %i.c = and i32 %i.b, 2
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.f = sext i32 %2 to i64
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.j = load i32, ptr %i.i, align 4, !tbaa !45
  %i.k = and i32 %i.j, 32768
  %.not20 = icmp eq i32 %i.k, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  br i1 %.not20, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %.pre, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !95
  %i.q = and i8 %i.p, 1
  %.not21 = icmp eq i8 %i.q, 0
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 10
  %i.u = load i8, ptr %i.t, align 2, !tbaa !66
  %i.v = zext i8 %i.u to i32
  %i.w = add i32 %i.s, 1
  %i.x = add i32 %i.w, %i.v
  %i.y = sext i32 %i.x to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.1 = phi i64 [ 0, %bb.b ], [ %i.y, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %.pre, i64 %.1 ; 4 uses
  store ptr %i.z, ptr %1, align 8, !tbaa !30
  %i.aa = ptrtoint ptr %i.h to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = lshr exact i64 %i.ac, 4
  %i.ae = trunc i64 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ag = load volatile ptr, ptr %i.af, align 8, !tbaa !46 ; 2 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %luaD_hook.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 2, !tbaa !47
  %.not40.i = icmp eq i8 %i.ai, 0
  br i1 %.not40.i, label %luaD_hook.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !41 ; 3 uses
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !30  ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !30
  %i.ao = ptrtoint ptr %i.al to i64               ; 3 uses
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 5 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !30
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store i32 1, ptr %3, align 8, !tbaa !49
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 -1, ptr %i.av, align 8, !tbaa !50
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 136
  store ptr %i.ak, ptr %i.aw, align 8, !tbaa !51
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %i.ae, ptr %i.ax, align 8, !tbaa !52
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i32 %2, ptr %i.ay, align 4, !tbaa !53
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 60 ; 5 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !45
  %i.bb = and i32 %i.ba, 32768
  %.not41.i = icmp eq i32 %i.bb, 0
  br i1 %.not41.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bc = load ptr, ptr %i.ar, align 8, !tbaa !30 ; 4 uses
  %i.bd = icmp ult ptr %i.al, %i.bc
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.bc, ptr %i.d, align 8, !tbaa !30
  %.pre42.i = ptrtoint ptr %i.bc to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre42.i, %bb.i ], [ %i.ao, %bb.h ], [ %i.ao, %bb.g ]
  %4 = phi ptr [ %i.bc, %bb.i ], [ %i.al, %bb.h ], [ %i.al, %bb.g ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !30
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %.pre-phi.i
  %i.bi = icmp slt i64 %i.bh, 336
  br i1 %i.bi, label %bb.k, label %bb.l, !prof !43

bb.k:                                             ; preds = %bb.j
  %i.bj = tail call i32 @luaD_growstack(ptr noundef nonnull %0, i32 noundef 20, i32 noundef 1) ; 0 uses
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bk = phi ptr [ %4, %bb.j ], [ %.pre.i, %bb.k ]
  %i.bl = load ptr, ptr %i.ar, align 8, !tbaa !30
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 320 ; 2 uses
  %i.bn = icmp ult ptr %i.bl, %i.bm
  br i1 %i.bn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.bm, ptr %i.ar, align 8, !tbaa !30
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i8 0, ptr %i.ah, align 2, !tbaa !47
  %i.bo = load i32, ptr %i.az, align 4, !tbaa !45
  %i.bp = or i32 %i.bo, 1048576
  store i32 %i.bp, ptr %i.az, align 4, !tbaa !45
  call void %i.ag(ptr noundef nonnull %0, ptr noundef nonnull %3) #16, !inline_history !67
  store i8 1, ptr %i.ah, align 2, !tbaa !47
  %i.bq = load ptr, ptr %i.am, align 8, !tbaa !30
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 %i.au
  store ptr %i.br, ptr %i.ar, align 8, !tbaa !30
  %i.bs = load ptr, ptr %i.am, align 8, !tbaa !30
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %i.aq
  store ptr %i.bt, ptr %i.d, align 8, !tbaa !30
  %i.bu = load i32, ptr %i.az, align 4, !tbaa !45
  %i.bv = and i32 %i.bu, -1048577
  store i32 %i.bv, ptr %i.az, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %.pre23 = load ptr, ptr %1, align 8, !tbaa !30
  br label %luaD_hook.exit

luaD_hook.exit:                                   ; preds = %bb.e, %bb.f, %bb.n
  %i.bw = phi ptr [ %i.z, %bb.e ], [ %i.z, %bb.f ], [ %.pre23, %bb.n ]
  %i.bx = sub nsw i64 0, %.1
  %i.by = getelementptr inbounds [16 x i8], ptr %i.bw, i64 %i.bx
  store ptr %i.by, ptr %1, align 8, !tbaa !30
  br label %bb.o

bb.o:                                             ; preds = %luaD_hook.exit, %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !70 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 60
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !45
  %i.cd = and i32 %i.cc, 32768
  %.not22 = icmp eq i32 %i.cd, 0
  br i1 %.not22, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !30
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !30
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !30
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !58
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !71
  %i.cm = ptrtoint ptr %i.cf to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = lshr exact i64 %i.co, 2
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = add nsw i32 %i.cq, -1
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !54
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @luaD_pretailcall(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.d = sext i32 %3 to i64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !30
  br label %bb.b

bb.b:                                             ; preds = %tryfuncTM.exit, %bb.a
  %indvar = phi i32 [ %indvar.next, %tryfuncTM.exit ], [ 0, %bb.a ] ; 3 uses
  %i.e = phi i8 [ %i.gp, %tryfuncTM.exit ], [ %.pre, %bb.a ]
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %tryfuncTM.exit ], [ %i.d, %bb.a ] ; 3 uses
  %.065 = phi i32 [ %i.gt, %tryfuncTM.exit ], [ 0, %bb.a ] ; 4 uses
  %.063 = phi i32 [ %i.gu, %tryfuncTM.exit ], [ %3, %bb.a ] ; 7 uses
  %.062 = phi ptr [ %.2, %tryfuncTM.exit ], [ %2, %bb.a ] ; 11 uses
  %i.f = and i8 %i.e, 63
  switch i8 %i.f, label %bb.p [
    i8 38, label %bb.c
    i8 22, label %bb.h
    i8 6, label %bb.m
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %.062, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !73
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp slt i64 %i.n, 336
  br i1 %i.o, label %bb.d, label %bb.e, !prof !43

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.q = ptrtoint ptr %.062 to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = tail call i32 @luaD_growstack(ptr noundef nonnull %0, i32 noundef 20, i32 noundef 1) ; 0 uses
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.s
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = phi ptr [ %.pre.i, %bb.d ], [ %i.k, %bb.c ]
  %.0.i = phi ptr [ %i.v, %bb.d ], [ %.062, %bb.c ] ; 2 uses
  %i.x = or i32 %.065, 32768
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 320
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !41
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !42 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %bb.f, label %prepCallInfo.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call ptr @luaE_extendCI(ptr noundef nonnull %0, i32 noundef 1) #16
  br label %prepCallInfo.exit.i

prepCallInfo.exit.i:                              ; preds = %bb.f, %bb.e
  %i.ae = phi ptr [ %i.ad, %bb.f ], [ %i.ac, %bb.e ] ; 5 uses
  store ptr %.0.i, ptr %i.ae, align 8, !tbaa !30
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 60
  store i32 %i.x, ptr %i.af, align 4, !tbaa !45
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.y, ptr %i.ag, align 8, !tbaa !30
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !41
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.ai = load volatile i32, ptr %i.ah, align 4, !tbaa !55
  %i.aj = and i32 %i.ai, 1
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %precallC.exit, label %bb.g, !prof !68

bb.g:                                             ; preds = %prepCallInfo.exit.i
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %.0.i to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = lshr exact i64 %i.an, 4
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = add nsw i32 %i.ap, -1
  tail call void @luaD_hook(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, i32 noundef 1, i32 noundef %i.aq)
  br label %precallC.exit

precallC.exit:                                    ; preds = %prepCallInfo.exit.i, %bb.g
  %i.ar = tail call i32 %i.i(ptr noundef nonnull %0) #16, !inline_history !96 ; 2 uses
  tail call void @luaD_poscall(ptr noundef nonnull %0, ptr noundef nonnull %i.ae, i32 noundef %i.ar)
  br label %bb.v

bb.h:                                             ; preds = %bb.b
  %i.as = load ptr, ptr %.062, align 8, !tbaa !30
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !30  ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = icmp slt i64 %i.ax, 336
  br i1 %i.ay, label %bb.i, label %bb.j, !prof !43

bb.i:                                             ; preds = %bb.h
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.ba = ptrtoint ptr %.062 to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = tail call i32 @luaD_growstack(ptr noundef nonnull %0, i32 noundef 20, i32 noundef 1) ; 0 uses
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.bc
  %.pre.i72 = load ptr, ptr %i.b, align 8, !tbaa !30
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bg = phi ptr [ %.pre.i72, %bb.i ], [ %i.au, %bb.h ]
  %.0.i68 = phi ptr [ %i.bf, %bb.i ], [ %.062, %bb.h ] ; 2 uses
  %i.bh = or i32 %.065, 32768
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 320
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !41
end_hunk_1
