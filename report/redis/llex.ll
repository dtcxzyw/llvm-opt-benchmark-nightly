Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/llex?download=true
inline.NumInlined: 23
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@save:bb.a

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = phi i64 [ %.pre, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  %i.u = shl i64 %i.t, 1                          ; 3 uses
  %.not = icmp eq i64 %i.u, -2
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22   ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.y = call ptr @luaM_realloc_(ptr noundef %i.w, ptr noundef %i.x, i64 noundef %i.t, i64 noundef %i.u) #5
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.z = call ptr @luaM_toobig(ptr noundef %i.w) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aa = phi ptr [ %i.y, %bb.e ], [ %i.z, %bb.f ] ; 2 uses
  store ptr %i.aa, ptr %i.c, align 8, !tbaa !30
  store i64 %i.u, ptr %i.g, align 8, !tbaa !60
  %.pre18 = load i64, ptr %i.d, align 8, !tbaa !65 ; 2 uses
  %.pre19 = add i64 %.pre18, 1
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %.pre-phi = phi i64 [ %i.f, %._crit_edge ], [ %.pre19, %bb.g ]
  %i.ab = phi i64 [ %i.e, %._crit_edge ], [ %.pre18, %bb.g ]
  %i.ac = phi ptr [ %.pre17, %._crit_edge ], [ %i.aa, %bb.g ]
  %i.ad = trunc i32 %1 to i8
  store i64 %.pre-phi, ptr %i.d, align 8, !tbaa !65
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !9
  ret void
}

declare hidden ptr @luaM_toobig(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @inclinenumber(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58   ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !62   ; 2 uses
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !62
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.h, ptr %i.f, align 8, !tbaa !63
  %i.i = load i8, ptr %i.g, align 1, !tbaa !9
  %i.j = zext i8 %i.i to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = tail call i32 @luaZ_fill(ptr noundef nonnull %i.c) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi i32 [ %i.j, %bb.b ], [ %i.k, %bb.c ] ; 3 uses
  store i32 %i.l, ptr %0, align 8, !tbaa !64
  switch i32 %i.l, label %bb.j [
    i32 10, label %bb.e
    i32 13, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %.not14 = icmp eq i32 %i.l, %i.a
  br i1 %.not14, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !58   ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !62   ; 2 uses
  %i.o = add i64 %i.n, -1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !62
  %.not15 = icmp eq i64 %i.n, 0
  br i1 %.not15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !63   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store ptr %i.r, ptr %i.p, align 8, !tbaa !63
  %i.s = load i8, ptr %i.q, align 1, !tbaa !9
  %i.t = zext i8 %i.s to i32
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.u = tail call i32 @luaZ_fill(ptr noundef nonnull %i.m) #5
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = phi i32 [ %i.t, %bb.g ], [ %i.u, %bb.h ]
  store i32 %i.v, ptr %0, align 8, !tbaa !64
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.i, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !26   ; 2 uses
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4, !tbaa !26
  %i.z = icmp sgt i32 %i.x, 2147483643
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !31
  tail call void @luaX_lexerror(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.38, i32 noundef %i.ab)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @skip_sep(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !64     ; 2 uses
  tail call fastcc void @save(ptr noundef nonnull %0, i32 noundef %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58   ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !62   ; 2 uses
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !62
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.h, ptr %i.f, align 8, !tbaa !63
  %i.i = load i8, ptr %i.g, align 1, !tbaa !9
  %i.j = zext i8 %i.i to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = tail call i32 @luaZ_fill(ptr noundef nonnull %i.c) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi i32 [ %i.j, %bb.b ], [ %i.k, %bb.c ] ; 3 uses
  store i32 %i.l, ptr %0, align 8, !tbaa !64
  %i.m = icmp eq i32 %i.l, 61
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %.020 = phi i64 [ %i.x, %bb.g ], [ 0, %bb.d ]
  tail call fastcc void @save(ptr noundef nonnull %0, i32 noundef 61)
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !58   ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !62   ; 2 uses
  %i.p = add i64 %i.o, -1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !62
  %.not19 = icmp eq i64 %i.o, 0
  br i1 %.not19, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !63   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store ptr %i.s, ptr %i.q, align 8, !tbaa !63
  %i.t = load i8, ptr %i.r, align 1, !tbaa !9
  %i.u = zext i8 %i.t to i32
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.v = tail call i32 @luaZ_fill(ptr noundef nonnull %i.n) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = phi i32 [ %i.u, %bb.e ], [ %i.v, %bb.f ] ; 3 uses
  store i32 %i.w, ptr %0, align 8, !tbaa !64
  %i.x = add i64 %.020, 1                         ; 2 uses
  %i.y = icmp eq i32 %i.w, 61
  br i1 %i.y, label %.lr.ph, label %._crit_edge, !llvm.loop !73

._crit_edge:                                      ; preds = %bb.g, %bb.d
  %.lcssa = phi i32 [ %i.l, %bb.d ], [ %i.w, %bb.g ]
  %.0.lcssa = phi i64 [ 0, %bb.d ], [ %i.x, %bb.g ] ; 2 uses
  %i.z = icmp eq i32 %.lcssa, %i.a
  %i.aa = add i64 %.0.lcssa, 2
  %i.ab = icmp eq i64 %.0.lcssa, 0
  %i.ac = zext i1 %i.ab to i64
  %i.ad = select i1 %i.z, i64 %i.aa, i64 %i.ac
  ret i64 %i.ad
}

; Function Attrs: nounwind uwtable
define internal fastcc void @read_long_string(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i64 noundef range(i64 2, 0) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 4 uses
  %i.b = alloca [80 x i8], align 16               ; 4 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !64
  tail call fastcc void @save(ptr noundef nonnull %0, i32 noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58   ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !62   ; 2 uses
  %i.g = add i64 %i.f, -1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !62
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !63   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store ptr %i.j, ptr %i.h, align 8, !tbaa !63
  %i.k = load i8, ptr %i.i, align 1, !tbaa !9
  %i.l = zext i8 %i.k to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = tail call i32 @luaZ_fill(ptr noundef nonnull %i.e) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi i32 [ %i.l, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  store i32 %i.n, ptr %0, align 8, !tbaa !64
  switch i32 %i.n, label %bb.f [
    i32 10, label %bb.e
    i32 13, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  tail call fastcc void @inclinenumber(ptr noundef nonnull %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not56 = icmp eq ptr %1, null                  ; 4 uses
  %i.t = select i1 %.not56, ptr @.str.40, ptr @.str.39
  br label %bb.g

bb.g:                                             ; preds = %.backedge, %bb.f
  %i.u = load i32, ptr %0, align 8, !tbaa !64     ; 2 uses
  switch i32 %i.u, label %bb.ak [
    i32 -1, label %bb.h
    i32 91, label %bb.i
    i32 93, label %bb.n
    i32 10, label %bb.s
    i32 13, label %bb.s
  ]

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  call void @luaO_chunkid(ptr noundef nonnull %i.b, ptr noundef nonnull %i.w, i64 noundef 80) #5, !inline_history !67
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !22
  %i.y = load i32, ptr %i.r, align 4, !tbaa !26
  %i.z = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.x, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.b, i32 noundef %i.y, ptr noundef nonnull %i.t) #5, !inline_history !67
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !22
  %i.ab = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.aa, ptr noundef nonnull @.str.34, ptr noundef %i.z, ptr noundef nonnull @.str.30) #5, !inline_history !67 ; 0 uses
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !22
  call void @luaD_throw(ptr noundef %i.ac, i32 noundef 3) #5, !inline_history !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  br label %.backedge

bb.i:                                             ; preds = %bb.g
  %i.ad = call fastcc i64 @skip_sep(ptr noundef nonnull %0)
  %i.ae = icmp eq i64 %i.ad, %2
  br i1 %i.ae, label %bb.j, label %.backedge

bb.j:                                             ; preds = %bb.i
  %i.af = load i32, ptr %0, align 8, !tbaa !64
  call fastcc void @save(ptr noundef nonnull %0, i32 noundef %i.af)
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !58  ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !62 ; 2 uses
  %i.ai = add i64 %i.ah, -1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !62
  %.not59 = icmp eq i64 %i.ah, 0
  br i1 %.not59, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !63 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !63
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !9
  %i.an = zext i8 %i.am to i32
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ao = call i32 @luaZ_fill(ptr noundef nonnull %i.ag) #5
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ap = phi i32 [ %i.an, %bb.k ], [ %i.ao, %bb.l ]
  store i32 %i.ap, ptr %0, align 8, !tbaa !64
  br label %.backedge

.backedge:                                        ; preds = %bb.m, %bb.ao, %bb.as, %inclinenumber.exit, %bb.aj, %bb.n, %bb.i, %bb.h
  br label %bb.g

bb.n:                                             ; preds = %bb.g
  %i.aq = call fastcc i64 @skip_sep(ptr noundef nonnull %0)
  %i.ar = icmp eq i64 %i.aq, %2
  br i1 %i.ar, label %bb.o, label %.backedge

bb.o:                                             ; preds = %bb.n
  %i.as = load i32, ptr %0, align 8, !tbaa !64
  call fastcc void @save(ptr noundef nonnull %0, i32 noundef %i.as)
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !58  ; 4 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !62 ; 2 uses
  %i.av = add i64 %i.au, -1
  store i64 %i.av, ptr %i.at, align 8, !tbaa !62
  %.not57 = icmp eq i64 %i.au, 0
  br i1 %.not57, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !63 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !63
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !9
  %i.ba = zext i8 %i.az to i32
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bb = call i32 @luaZ_fill(ptr noundef nonnull %i.at) #5
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bc = phi i32 [ %i.ba, %bb.p ], [ %i.bb, %bb.q ]
  store i32 %i.bc, ptr %0, align 8, !tbaa !64
  br i1 %.not56, label %bb.aw, label %bb.at

bb.s:                                             ; preds = %bb.g, %bb.g
  %i.bd = load ptr, ptr %i.o, align 8, !tbaa !27  ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 3 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !65 ; 2 uses
  %i.bg = add i64 %i.bf, 1                        ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 3 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !60 ; 3 uses
  %i.bj = icmp ugt i64 %i.bg, %i.bi
  br i1 %i.bj, label %bb.t, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.s
  %.pre17.i = load ptr, ptr %i.bd, align 8, !tbaa !30
  br label %save.exit

bb.t:                                             ; preds = %bb.s
  %i.bk = icmp ugt i64 %i.bi, 9223372036854775805
  br i1 %i.bk, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.bl = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  call void @luaO_chunkid(ptr noundef nonnull %i.a, ptr noundef nonnull %i.bm, i64 noundef 80) #5, !inline_history !74
  %i.bn = load ptr, ptr %i.q, align 8, !tbaa !22
  %i.bo = load i32, ptr %i.r, align 4, !tbaa !26
  %i.bp = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.bn, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.a, i32 noundef %i.bo, ptr noundef nonnull @.str.35) #5, !inline_history !74 ; 0 uses
  %i.bq = load ptr, ptr %i.q, align 8, !tbaa !22
  call void @luaD_throw(ptr noundef %i.bq, i32 noundef 3) #5, !inline_history !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %.pre.i = load i64, ptr %i.bh, align 8, !tbaa !60
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.br = phi i64 [ %.pre.i, %bb.u ], [ %i.bi, %bb.t ] ; 2 uses
  %i.bs = shl i64 %i.br, 1                        ; 3 uses
  %.not.i.a = icmp eq i64 %i.bs, -2
  %i.bt = load ptr, ptr %i.q, align 8, !tbaa !22  ; 2 uses
  br i1 %.not.i.a, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bu = load ptr, ptr %i.bd, align 8, !tbaa !30
  %i.bv = call ptr @luaM_realloc_(ptr noundef %i.bt, ptr noundef %i.bu, i64 noundef %i.br, i64 noundef %i.bs) #5, !inline_history !75
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.bw = call ptr @luaM_toobig(ptr noundef %i.bt) #5, !inline_history !75
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bx = phi ptr [ %i.bv, %bb.w ], [ %i.bw, %bb.x ] ; 2 uses
  store ptr %i.bx, ptr %i.bd, align 8, !tbaa !30
  store i64 %i.bs, ptr %i.bh, align 8, !tbaa !60
  %.pre18.i = load i64, ptr %i.be, align 8, !tbaa !65 ; 2 uses
  %.pre19.i = add i64 %.pre18.i, 1
  br label %save.exit

save.exit:                                        ; preds = %._crit_edge.i, %bb.y
  %.pre-phi.i = phi i64 [ %i.bg, %._crit_edge.i ], [ %.pre19.i, %bb.y ]
  %i.by = phi i64 [ %i.bf, %._crit_edge.i ], [ %.pre18.i, %bb.y ]
  %i.bz = phi ptr [ %.pre17.i, %._crit_edge.i ], [ %i.bx, %bb.y ]
  store i64 %.pre-phi.i, ptr %i.be, align 8, !tbaa !65
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.by
  store i8 10, ptr %i.ca, align 1, !tbaa !9
  %i.cb = load i32, ptr %0, align 8, !tbaa !64
  %i.cc = load ptr, ptr %i.d, align 8, !tbaa !58  ; 4 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !62 ; 2 uses
  %i.ce = add i64 %i.cd, -1
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !62
  %.not.i64 = icmp eq i64 %i.cd, 0
  br i1 %.not.i64, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %save.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !63 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !63
  %i.ci = load i8, ptr %i.cg, align 1, !tbaa !9
  %i.cj = zext i8 %i.ci to i32
  br label %bb.ab

bb.aa:                                            ; preds = %save.exit
  %i.ck = call i32 @luaZ_fill(ptr noundef nonnull %i.cc) #5
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cl = phi i32 [ %i.cj, %bb.z ], [ %i.ck, %bb.aa ] ; 3 uses
  store i32 %i.cl, ptr %0, align 8, !tbaa !64
  switch i32 %i.cl, label %bb.ah [
    i32 10, label %bb.ac
    i32 13, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab
  %.not14.i.a = icmp eq i32 %i.cl, %i.cb
  br i1 %.not14.i.a, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
end_hunk_0
