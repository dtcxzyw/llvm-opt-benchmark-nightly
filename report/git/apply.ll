Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/apply?download=true
inline.NumInlined: 449
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 19
begin_hunk_0_@parse_range:bb.a
  %sext54 = shl i64 %i.q, 32
  %i.t = ashr exact i64 %sext54, 32
  %i.u = getelementptr inbounds i8, ptr %i.e, i64 %i.t ; 4 uses
  %i.v = sub i32 %1, %i.s                         ; 2 uses
  store i64 1, ptr %5, align 8, !tbaa !128
  %i.w = load i8, ptr %i.u, align 1, !tbaa !63
  %i.x = icmp eq i8 %i.w, 44
  br i1 %i.x, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.z = load i8, ptr %i.y, align 1, !tbaa !63
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !63
  %i.ad = and i8 %i.ac, 2
  %.not.i46 = icmp eq i8 %i.ad, 0
  br i1 %.not.i46, label %parse_num.exit49.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.y, ptr noundef nonnull %i.a, i32 noundef 10) #21
  store i64 %i.ae, ptr %5, align 8, !tbaa !128
  %i.af = load i32, ptr %i.k, align 4, !tbaa !48
  %.not4.i47 = icmp eq i32 %i.af, 0
  br i1 %.not4.i47, label %parse_num.exit49, label %parse_num.exit49.thread

parse_num.exit49.thread:                          ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.j

parse_num.exit49:                                 ; preds = %bb.f
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.y to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.not44 = icmp eq i32 %i.ak, 0
  br i1 %.not44, label %bb.j, label %bb.g

bb.g:                                             ; preds = %parse_num.exit49
  %i.al = add nsw i32 %i.ak, 1                    ; 3 uses
  %i.am = add nsw i32 %i.al, %i.s
  %i.an = sext i32 %i.al to i64
  %i.ao = getelementptr inbounds i8, ptr %i.u, i64 %i.an
  %i.ap = sub nsw i32 %i.v, %i.al
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.037 = phi i32 [ %i.am, %bb.g ], [ %i.s, %bb.d ]
  %.036 = phi i32 [ %i.ap, %bb.g ], [ %i.v, %bb.d ]
  %.035 = phi ptr [ %i.ao, %bb.g ], [ %i.u, %bb.d ]
  %i.aq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #22 ; 2 uses
  %i.ar = trunc i64 %i.aq to i32                  ; 2 uses
  %i.as = icmp slt i32 %.036, %i.ar
  br i1 %i.as, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %sext = shl i64 %i.aq, 32
  %i.at = ashr exact i64 %sext, 32
  %bcmp = call i32 @bcmp(ptr %.035, ptr nonnull %3, i64 %i.at)
  %.not45 = icmp eq i32 %bcmp, 0
  %i.au = add nsw i32 %.037, %i.ar
  %spec.select = select i1 %.not45, i32 %i.au, i32 -1
  br label %bb.j

bb.j:                                             ; preds = %parse_num.exit49.thread, %parse_num.exit.thread, %bb.i, %bb.h, %parse_num.exit49, %parse_num.exit, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %parse_num.exit49 ], [ -1, %bb.h ], [ %spec.select, %bb.i ], [ -1, %parse_num.exit ], [ -1, %parse_num.exit.thread ], [ -1, %parse_num.exit49.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @guess_p_value(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %scevgep.i = getelementptr i8, ptr %1, i64 9
  %i.a = load i8, ptr %1, align 1, !tbaa !63
  %i.b = icmp eq i8 %i.a, 47
  br i1 %i.b, label %bb.b, label %is_dev_null.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !63
  %i.e = icmp eq i8 %i.d, 100
  br i1 %i.e, label %bb.c, label %is_dev_null.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !63
  %i.h = icmp eq i8 %i.g, 101
  br i1 %i.h, label %bb.d, label %is_dev_null.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !63
  %i.k = icmp eq i8 %i.j, 118
  br i1 %i.k, label %bb.e, label %is_dev_null.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i8, ptr %i.l, align 1, !tbaa !63
  %i.n = icmp eq i8 %i.m, 47
  br i1 %i.n, label %bb.f, label %is_dev_null.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !63
  %i.q = icmp eq i8 %i.p, 110
  br i1 %i.q, label %bb.g, label %is_dev_null.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.s = load i8, ptr %i.r, align 1, !tbaa !63
  %i.t = icmp eq i8 %i.s, 117
  br i1 %i.t, label %bb.h, label %is_dev_null.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.v = load i8, ptr %i.u, align 1, !tbaa !63
  %i.w = icmp eq i8 %i.v, 108
  br i1 %i.w, label %bb.i, label %is_dev_null.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i8, ptr %i.x, align 1, !tbaa !63
  %i.z = icmp eq i8 %i.y, 108
  br i1 %i.z, label %is_dev_null.exit, label %is_dev_null.exit.thread

is_dev_null.exit:                                 ; preds = %bb.i
  %i.aa = load i8, ptr %scevgep.i, align 1, !tbaa !63
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !63
  %i.ae = and i8 %i.ad, 1
  %.not = icmp eq i8 %i.ae, 0
  br i1 %.not, label %is_dev_null.exit.thread, label %bb.q

is_dev_null.exit.thread:                          ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %is_dev_null.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ag = tail call fastcc ptr @find_name_traditional(ptr noundef nonnull %i.af, ptr noundef nonnull %1, ptr noundef null, i32 noundef 0) ; 4 uses
  %.not20 = icmp eq ptr %i.ag, null
  br i1 %.not20, label %bb.q, label %bb.j

bb.j:                                             ; preds = %is_dev_null.exit.thread
  %i.ah = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ag, i32 noundef 47) #22 ; 2 uses
  %.not21 = icmp eq ptr %i.ah, null
  br i1 %.not21, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %0, align 8, !tbaa !36    ; 2 uses
  %.not22 = icmp eq ptr %i.ai, null
  br i1 %.not22, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = tail call zeroext i1 @starts_with(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ai) #21
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ak = load ptr, ptr %0, align 8, !tbaa !36
  %i.al = tail call i32 @count_slashes(ptr noundef %i.ak) #21
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.an = load ptr, ptr %0, align 8, !tbaa !36
  %i.ao = tail call zeroext i1 @starts_with(ptr noundef nonnull %i.am, ptr noundef %i.an) #21
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = load ptr, ptr %0, align 8, !tbaa !36
  %i.aq = tail call i32 @count_slashes(ptr noundef %i.ap) #21
  %i.ar = add nsw i32 %i.aq, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.j, %bb.k, %bb.n, %bb.o, %bb.m
  %.0 = phi i32 [ %i.al, %bb.m ], [ %i.ar, %bb.o ], [ -1, %bb.n ], [ -1, %bb.k ], [ 0, %bb.j ]
  tail call void @free(ptr noundef nonnull %i.ag) #21
  br label %bb.q

bb.q:                                             ; preds = %is_dev_null.exit.thread, %is_dev_null.exit, %bb.p
  %.016 = phi i32 [ -1, %is_dev_null.exit ], [ %.0, %bb.p ], [ -1, %is_dev_null.exit.thread ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @find_name_traditional(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !63
  %i.b = icmp eq i8 %i.a, 34
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @find_name_gnu(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %3) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.ba

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call ptr @strchrnul(ptr noundef nonnull %1, i32 noundef 10) #22
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 12 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !63
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !63
  %i.n = and i8 %i.m, 2
  %.not.i = icmp eq i8 %i.n, 0
  br i1 %.not.i, label %diff_timestamp_len.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %i.g, 6
  br i1 %i.o, label %sane_tz_len.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.h, i64 -6
  %i.q = load i8, ptr %i.p, align 1, !tbaa !63    ; 2 uses
  %.not.i.i = icmp eq i8 %i.q, 32
  br i1 %.not.i.i, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds i8, ptr %i.h, i64 -5
  %i.s = load i8, ptr %i.r, align 1, !tbaa !63
  switch i8 %i.s, label %bb.j [
    i8 43, label %bb.g
    i8 45, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.t = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.u = load i8, ptr %i.t, align 1, !tbaa !63
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !63
  %i.y = and i8 %i.x, 2
  %.not23.i.i = icmp eq i8 %i.y, 0
  br i1 %.not23.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds i8, ptr %i.h, i64 -3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !63
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !63
  %i.ae = and i8 %i.ad, 2
  %.not23.1.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not23.1.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds i8, ptr %i.h, i64 -2
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !63
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !63
  %i.ak = and i8 %i.aj, 2
  %.not23.2.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not23.2.i.i, label %bb.j, label %sane_tz_len.exit.i

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.al = icmp eq i64 %i.g, 6
  br i1 %i.al, label %.thread82.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr i8, ptr %i.h, i64 -3
  %i.an = load i8, ptr %i.am, align 1, !tbaa !63
  %.not.i53.i = icmp eq i8 %i.an, 58
  br i1 %.not.i53.i, label %bb.l, label %sane_tz_len.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds i8, ptr %i.h, i64 -7
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !63
  %.not19.i.i = icmp eq i8 %i.ap, 32
  br i1 %.not19.i.i, label %bb.m, label %sane_tz_len.exit.i

bb.m:                                             ; preds = %bb.l
  switch i8 %i.q, label %sane_tz_len.exit.i [
    i8 43, label %bb.n
    i8 45, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.aq = getelementptr inbounds i8, ptr %i.h, i64 -5
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !63
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !63
  %i.av = and i8 %i.au, 2
  %.not22.i.i = icmp eq i8 %i.av, 0
  br i1 %.not22.i.i, label %sane_tz_len.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !63
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !63
  %i.bb = and i8 %i.ba, 2
  %.not23.i54.i = icmp eq i8 %i.bb, 0
  br i1 %.not23.i54.i, label %sane_tz_len.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds i8, ptr %i.h, i64 -2
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !63
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !63
  %i.bh = and i8 %i.bg, 2
  %.not25.i.i = icmp eq i8 %i.bh, 0
  %spec.select.i = select i1 %.not25.i.i, i64 0, i64 7
  br label %sane_tz_len.exit.i

sane_tz_len.exit.i:                               ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.i, %bb.d
  %.0.i = phi i64 [ 6, %bb.i ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.m ], [ 0, %bb.d ], [ %spec.select.i, %bb.p ] ; 13 uses
  %i.bi = sub nsw i64 %i.g, %.0.i                 ; 12 uses
  %i.bj = icmp ult i64 %i.bi, 9
  br i1 %i.bj, label %bb.z, label %bb.q

bb.q:                                             ; preds = %sane_tz_len.exit.i
  %i.bk = getelementptr i8, ptr %1, i64 %i.bi     ; 9 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 -3
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !63
  %.not.i56.i = icmp eq i8 %i.bm, 58
  br i1 %.not.i56.i, label %bb.r, label %.thread82.i

bb.r:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds i8, ptr %i.bk, i64 -9
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !63
  %.not18.i.i = icmp eq i8 %i.bo, 32
  br i1 %.not18.i.i, label %bb.s, label %.thread82.i

bb.s:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds i8, ptr %i.bk, i64 -8
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !63
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !63
  %i.bu = and i8 %i.bt, 2
  %.not19.i58.i = icmp eq i8 %i.bu, 0
  br i1 %.not19.i58.i, label %.thread82.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = getelementptr inbounds i8, ptr %i.bk, i64 -7
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !63
  %i.bx = zext i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !63
  %i.ca = and i8 %i.bz, 2
  %.not20.i.i = icmp eq i8 %i.ca, 0
  br i1 %.not20.i.i, label %.thread82.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = getelementptr inbounds i8, ptr %i.bk, i64 -6
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !63
  %.not21.i.i = icmp eq i8 %i.cc, 58
  br i1 %.not21.i.i, label %bb.v, label %.thread82.i

bb.v:                                             ; preds = %bb.u
  %i.cd = getelementptr inbounds i8, ptr %i.bk, i64 -5
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !63
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !63
  %i.ci = and i8 %i.ch, 2
  %.not22.i59.i = icmp eq i8 %i.ci, 0
  br i1 %.not22.i59.i, label %.thread82.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = getelementptr inbounds i8, ptr %i.bk, i64 -4
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !63
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !63
  %i.co = and i8 %i.cn, 2
  %.not23.i60.i = icmp eq i8 %i.co, 0
  br i1 %.not23.i60.i, label %.thread82.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = getelementptr inbounds i8, ptr %i.bk, i64 -2
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !63
  %i.cr = zext i8 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !63
  %i.cu = and i8 %i.ct, 2
  %.not25.i61.i = icmp eq i8 %i.cu, 0
  br i1 %.not25.i61.i, label %.thread82.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = getelementptr inbounds i8, ptr %i.bk, i64 -1
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !63
  %i.cx = zext i8 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !63
  %i.da = and i8 %i.cz, 2
  %.not26.i62.i = icmp eq i8 %i.da, 0
  br i1 %.not26.i62.i, label %.thread82.i, label %short_time_len.exit.i

bb.z:                                             ; preds = %sane_tz_len.exit.i
  %.not.i64.i = icmp eq i64 %i.g, %.0.i
  br i1 %.not.i64.i, label %short_time_len.exit.i, label %.thread82.i

.thread82.i:                                      ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.j
  %i.db = phi i64 [ %i.bi, %bb.y ], [ %i.bi, %bb.t ], [ %i.bi, %bb.u ], [ %i.bi, %bb.v ], [ %i.bi, %bb.w ], [ %i.bi, %bb.s ], [ %i.bi, %bb.x ], [ %i.bi, %bb.q ], [ %i.bi, %bb.r ], [ %i.bi, %bb.z ], [ 6, %bb.j ]
  %.097.i = phi i64 [ %.0.i, %bb.y ], [ %.0.i, %bb.t ], [ %.0.i, %bb.u ], [ %.0.i, %bb.v ], [ %.0.i, %bb.w ], [ %.0.i, %bb.s ], [ %.0.i, %bb.x ], [ %.0.i, %bb.q ], [ %.0.i, %bb.r ], [ %.0.i, %bb.z ], [ 0, %bb.j ] ; 13 uses
  %i.dc = getelementptr i8, ptr %1, i64 %i.db     ; 3 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 -1
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !63
  %i.df = zext i8 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !63
  %i.di = and i8 %i.dh, 2
  %.not21.i65.i = icmp eq i8 %i.di, 0
  br i1 %.not21.i65.i, label %short_time_len.exit.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.thread82.i
  %.0.i66.i40 = getelementptr inbounds i8, ptr %i.dc, i64 -1 ; 4 uses
  %i.dj = icmp ugt ptr %.0.i66.i40, %1
  %.pre.i.i41 = load i8, ptr %.0.i66.i40, align 1, !tbaa !63 ; 2 uses
  br i1 %i.dj, label %.lr.ph, label %.critedge.i.i

.preheader.i.i:                                   ; preds = %.lr.ph
  %.0.i66.i = getelementptr inbounds i8, ptr %.0.i66.i42, i64 -1 ; 4 uses
  %i.dk = icmp ugt ptr %.0.i66.i, %1
  %.pre.i.i = load i8, ptr %.0.i66.i, align 1, !tbaa !63 ; 2 uses
  br i1 %i.dk, label %.lr.ph, label %.critedge.i.i, !llvm.loop !225

.lr.ph:                                           ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.pre.i.i43 = phi i8 [ %.pre.i.i, %.preheader.i.i ], [ %.pre.i.i41, %.preheader.i.i.preheader ] ; 2 uses
  %.0.i66.i42 = phi ptr [ %.0.i66.i, %.preheader.i.i ], [ %.0.i66.i40, %.preheader.i.i.preheader ] ; 2 uses
  %i.dl = zext i8 %.pre.i.i43 to i64
  %i.dm = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !63
  %i.do = and i8 %i.dn, 2
  %.not22.i68.i = icmp eq i8 %i.do, 0
  br i1 %.not22.i68.i, label %..critedge.i.i_crit_edge, label %.preheader.i.i, !llvm.loop !225

..critedge.i.i_crit_edge:                         ; preds = %.lr.ph
  br label %.critedge.i.i, !llvm.loop !225

.critedge.i.i:                                    ; preds = %.preheader.i.i, %..critedge.i.i_crit_edge, %.preheader.i.i.preheader
  %.0.i66.i.lcssa = phi ptr [ %.0.i66.i42, %..critedge.i.i_crit_edge ], [ %.0.i66.i40, %.preheader.i.i.preheader ], [ %.0.i66.i, %.preheader.i.i ]
  %.pre.i.i.lcssa = phi i8 [ %.pre.i.i43, %..critedge.i.i_crit_edge ], [ %.pre.i.i41, %.preheader.i.i.preheader ], [ %.pre.i.i, %.preheader.i.i ]
  %.not23.i67.i = icmp eq i8 %.pre.i.i.lcssa, 46
  br i1 %.not23.i67.i, label %bb.aa, label %short_time_len.exit.i

bb.aa:                                            ; preds = %.critedge.i.i
  %i.dp = ptrtoint ptr %.0.i66.i.lcssa to i64     ; 2 uses
  %i.dq = sub i64 %i.dp, %i.f                     ; 2 uses
  %i.dr = icmp ult i64 %i.dq, 9
  br i1 %i.dr, label %short_time_len.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ds = getelementptr i8, ptr %1, i64 %i.dq     ; 9 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 -3
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !63
  %.not.i.i.i = icmp eq i8 %i.du, 58
  br i1 %.not.i.i.i, label %bb.ac, label %short_time_len.exit.i

bb.ac:                                            ; preds = %bb.ab
  %i.dv = getelementptr inbounds i8, ptr %i.ds, i64 -9
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !63
  %.not18.i.i.i = icmp eq i8 %i.dw, 32
  br i1 %.not18.i.i.i, label %bb.ad, label %short_time_len.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.dx = getelementptr inbounds i8, ptr %i.ds, i64 -8
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !63
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !63
  %i.ec = and i8 %i.eb, 2
  %.not19.i.i.i = icmp eq i8 %i.ec, 0
  br i1 %.not19.i.i.i, label %short_time_len.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ed = getelementptr inbounds i8, ptr %i.ds, i64 -7
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !63
  %i.ef = zext i8 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !63
  %i.ei = and i8 %i.eh, 2
  %.not20.i.i.i = icmp eq i8 %i.ei, 0
  br i1 %.not20.i.i.i, label %short_time_len.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ej = getelementptr inbounds i8, ptr %i.ds, i64 -6
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !63
  %.not21.i.i.i = icmp eq i8 %i.ek, 58
  br i1 %.not21.i.i.i, label %bb.ag, label %short_time_len.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.el = getelementptr inbounds i8, ptr %i.ds, i64 -5
  %i.em = load i8, ptr %i.el, align 1, !tbaa !63
  %i.en = zext i8 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !63
  %i.eq = and i8 %i.ep, 2
  %.not22.i.i.i = icmp eq i8 %i.eq, 0
  br i1 %.not22.i.i.i, label %short_time_len.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.er = getelementptr inbounds i8, ptr %i.ds, i64 -4
  %i.es = load i8, ptr %i.er, align 1, !tbaa !63
  %i.et = zext i8 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !63
  %i.ew = and i8 %i.ev, 2
  %.not23.i.i.i = icmp eq i8 %i.ew, 0
  br i1 %.not23.i.i.i, label %short_time_len.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ex = getelementptr inbounds i8, ptr %i.ds, i64 -2
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !63
  %i.ez = zext i8 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !63
  %i.fc = and i8 %i.fb, 2
  %.not25.i.i.i = icmp eq i8 %i.fc, 0
  br i1 %.not25.i.i.i, label %short_time_len.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fd = getelementptr inbounds i8, ptr %i.ds, i64 -1
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !63
  %i.ff = zext i8 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !63
  %i.fi = and i8 %i.fh, 2
  %.not26.i.i.i = icmp eq i8 %i.fi, 0
  br i1 %.not26.i.i.i, label %short_time_len.exit.i, label %short_time_len.exit.i.i

short_time_len.exit.i.i:                          ; preds = %bb.aj
  %i.fj = ptrtoint ptr %i.dc to i64
  %i.fk = add i64 %i.fj, 9
  %i.fl = sub i64 %i.fk, %i.dp
  br label %short_time_len.exit.i

short_time_len.exit.i:                            ; preds = %short_time_len.exit.i.i, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %.critedge.i.i, %.thread82.i, %bb.z, %bb.y
  %.096.i.a = phi i64 [ %.0.i, %bb.y ], [ %i.g, %bb.z ], [ %.097.i, %short_time_len.exit.i.i ], [ %.097.i, %.critedge.i.i ], [ %.097.i, %.thread82.i ], [ %.097.i, %bb.ac ], [ %.097.i, %bb.aa ], [ %.097.i, %bb.ab ], [ %.097.i, %bb.ai ], [ %.097.i, %bb.ad ], [ %.097.i, %bb.ah ], [ %.097.i, %bb.ag ], [ %.097.i, %bb.af ], [ %.097.i, %bb.ae ], [ %.097.i, %bb.aj ]
  %.1.i.a = phi i64 [ 9, %bb.y ], [ 0, %bb.z ], [ %i.fl, %short_time_len.exit.i.i ], [ 0, %.critedge.i.i ], [ 0, %.thread82.i ], [ 0, %bb.ac ], [ 0, %bb.aa ], [ 0, %bb.ab ], [ 0, %bb.ai ], [ 0, %bb.ad ], [ 0, %bb.ah ], [ 0, %bb.ag ], [ 0, %bb.af ], [ 0, %bb.ae ], [ 0, %bb.aj ]
  %4 = add i64 %.1.i.a, %.096.i.a                 ; 2 uses
  %i.fm = sub i64 %i.g, %4                        ; 3 uses
  %i.fn = icmp ult i64 %i.fm, 8
  br i1 %i.fn, label %diff_timestamp_len.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %short_time_len.exit.i
  %i.fo = getelementptr i8, ptr %1, i64 %i.fm     ; 11 uses
  %i.fp = getelementptr i8, ptr %i.fo, i64 -3
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !63
  %.not.i69.i = icmp eq i8 %i.fq, 45
  br i1 %.not.i69.i, label %bb.al, label %diff_timestamp_len.exit.thread

bb.al:                                            ; preds = %bb.ak
  %i.fr = getelementptr inbounds i8, ptr %i.fo, i64 -8 ; 4 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !63
  %i.ft = zext i8 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !63
  %i.fw = and i8 %i.fv, 2
  %.not23.i70.i = icmp eq i8 %i.fw, 0
  br i1 %.not23.i70.i, label %diff_timestamp_len.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fx = getelementptr inbounds i8, ptr %i.fo, i64 -7
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !63
  %i.fz = zext i8 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !63
  %i.gc = and i8 %i.gb, 2
  %.not24.i.i = icmp eq i8 %i.gc, 0
  br i1 %.not24.i.i, label %diff_timestamp_len.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gd = getelementptr inbounds i8, ptr %i.fo, i64 -6
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !63
  %.not25.i71.i = icmp eq i8 %i.ge, 45
  br i1 %.not25.i71.i, label %bb.ao, label %diff_timestamp_len.exit.thread

bb.ao:                                            ; preds = %bb.an
  %i.gf = getelementptr inbounds i8, ptr %i.fo, i64 -5
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !63
  %i.gh = zext i8 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !63
  %i.gk = and i8 %i.gj, 2
  %.not26.i72.i = icmp eq i8 %i.gk, 0
  br i1 %.not26.i72.i, label %diff_timestamp_len.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gl = getelementptr inbounds i8, ptr %i.fo, i64 -4
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !63
  %i.gn = zext i8 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !63
  %i.gq = and i8 %i.gp, 2
  %.not27.i.i = icmp eq i8 %i.gq, 0
  br i1 %.not27.i.i, label %diff_timestamp_len.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gr = getelementptr inbounds i8, ptr %i.fo, i64 -2
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !63
  %i.gt = zext i8 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !63
  %i.gw = and i8 %i.gv, 2
  %.not29.i.i = icmp eq i8 %i.gw, 0
  br i1 %.not29.i.i, label %diff_timestamp_len.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gx = getelementptr inbounds i8, ptr %i.fo, i64 -1
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !63
  %i.gz = zext i8 %i.gy to i64
  %i.ha = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !63
  %i.hc = and i8 %i.hb, 2
  %.not30.i.i = icmp eq i8 %i.hc, 0
  br i1 %.not30.i.i, label %diff_timestamp_len.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hd = icmp ult i64 %i.fm, 10
  br i1 %i.hd, label %date_len.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.he = getelementptr inbounds i8, ptr %i.fo, i64 -9
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !63
  %i.hg = zext i8 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.hg
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !63
  %i.hj = and i8 %i.hi, 2
  %.not32.i.i = icmp eq i8 %i.hj, 0
  br i1 %.not32.i.i, label %date_len.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hk = getelementptr inbounds i8, ptr %i.fo, i64 -10 ; 2 uses
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !63
  %i.hm = zext i8 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !63
  %i.hp = and i8 %i.ho, 2
  %.not33.i.i = icmp eq i8 %i.hp, 0
  %spec.select.i73.i = select i1 %.not33.i.i, ptr %i.fr, ptr %i.hk
  br label %date_len.exit.i

date_len.exit.i:                                  ; preds = %bb.au, %bb.at, %bb.as
  %.0.i74.i = phi ptr [ %i.fr, %bb.as ], [ %spec.select.i73.i, %bb.au ], [ %i.fr, %bb.at ]
  %i.hq = ptrtoint ptr %.0.i74.i to i64
  %i.hr = ptrtoint ptr %i.fo to i64
  %i.hs = sub i64 %i.hr, %i.hq
  %i.ht = add i64 %i.hs, %4                       ; 5 uses
  %i.hu = icmp eq i64 %i.g, %i.ht
  br i1 %i.hu, label %diff_timestamp_len.exit.thread, label %bb.av

bb.av:                                            ; preds = %date_len.exit.i
  %i.hv = sub i64 0, %i.ht
  %i.hw = getelementptr inbounds i8, ptr %i.h, i64 %i.hv
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 -1
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !63
  switch i8 %i.hy, label %diff_timestamp_len.exit.thread [
    i8 9, label %bb.aw
    i8 32, label %bb.ax
  ]

bb.aw:                                            ; preds = %bb.av
  %.neg.i = add i64 %i.ht, 1
  br label %diff_timestamp_len.exit

bb.ax:                                            ; preds = %bb.av
  %i.hz = sub i64 %i.g, %i.ht                     ; 2 uses
  %i.ia = getelementptr i8, ptr %1, i64 %i.hz     ; 3 uses
  %i.ib = getelementptr i8, ptr %i.ia, i64 -1
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !63
  %.not15.i.i = icmp eq i8 %i.ic, 32
  br i1 %.not15.i.i, label %.lr.ph49, label %trailing_spaces_len.exit.i

.preheader.i76.i:                                 ; preds = %.lr.ph49
  %.not16.i.i = icmp eq ptr %i.id, %1
  br i1 %.not16.i.i, label %trailing_spaces_len.exit.i, label %.lr.ph49, !llvm.loop !226

.lr.ph49:                                         ; preds = %bb.ax, %.preheader.i76.i
  %.0.i77.i48 = phi ptr [ %i.id, %.preheader.i76.i ], [ %i.ia, %bb.ax ] ; 2 uses
  %i.id = getelementptr inbounds i8, ptr %.0.i77.i48, i64 -1 ; 3 uses
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !63
  %.not17.i.i = icmp eq i8 %i.ie, 32
  br i1 %.not17.i.i, label %.preheader.i76.i, label %bb.ay, !llvm.loop !226

bb.ay:                                            ; preds = %.lr.ph49
  %i.if = ptrtoint ptr %i.ia to i64
  %i.ig = ptrtoint ptr %.0.i77.i48 to i64
  %i.ih = sub i64 %i.if, %i.ig
  br label %trailing_spaces_len.exit.i

trailing_spaces_len.exit.i:                       ; preds = %.preheader.i76.i, %bb.ay, %bb.ax
  %.013.i.i = phi i64 [ 0, %bb.ax ], [ %i.ih, %bb.ay ], [ %i.hz, %.preheader.i76.i ]
  %i.ii = add i64 %.013.i.i, %i.ht
  br label %diff_timestamp_len.exit

diff_timestamp_len.exit:                          ; preds = %bb.aw, %trailing_spaces_len.exit.i
  %.042.i = phi i64 [ %i.ii, %trailing_spaces_len.exit.i ], [ %.neg.i, %bb.aw ] ; 2 uses
  %.not26 = icmp eq i64 %.042.i, 0
  br i1 %.not26, label %diff_timestamp_len.exit.thread, label %bb.az

diff_timestamp_len.exit.thread:                   ; preds = %bb.an, %bb.ao, %bb.ap, %bb.al, %bb.aq, %bb.ar, %bb.ak, %short_time_len.exit.i, %bb.av, %bb.c, %date_len.exit.i, %bb.am, %diff_timestamp_len.exit
  %i.ij = tail call fastcc ptr @find_name_common(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3, ptr noundef null, i32 noundef 2)
  br label %bb.ba

bb.az:                                            ; preds = %diff_timestamp_len.exit
  %i.ik = sub i64 %i.g, %.042.i
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 %i.ik
  %i.im = tail call fastcc ptr @find_name_common(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %i.il, i32 noundef 0)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.b, %bb.az, %diff_timestamp_len.exit.thread
  %.1 = phi ptr [ %i.im, %bb.az ], [ %i.ij, %diff_timestamp_len.exit.thread ], [ %i.c, %bb.b ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @has_epoch_timestamp(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [65 x i8], align 16               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %1 = alloca [10 x %struct.regmatch_t], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(65) %i.a, ptr noundef nonnull align 16 dereferenceable(65) @__const.has_epoch_timestamp.stamp_regexp, i64 65, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.041 = phi ptr [ null, %bb.a ], [ %.1, %bb.d ] ; 23 uses
  %.017 = phi ptr [ %0, %bb.a ], [ %i.e, %bb.d ]  ; 3 uses
  %i.c = load i8, ptr %.017, align 1, !tbaa !63
  switch i8 %i.c, label %bb.d [
    i8 10, label %bb.e
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.017, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi ptr [ %.041, %bb.b ], [ %i.d, %bb.c ]
  %i.e = getelementptr inbounds nuw i8, ptr %.017, i64 1
  br label %bb.b, !llvm.loop !227

bb.e:                                             ; preds = %bb.b
  %.not22 = icmp eq ptr %.041, null
  br i1 %.not22, label %skip_prefix_impl.exit30, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.e
  %scevgep = getelementptr i8, ptr %.041, i64 11  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.041, i64 1 ; 2 uses
  %i.g = load i8, ptr %.041, align 1, !tbaa !63
  %i.h = icmp eq i8 %i.g, 49
  br i1 %i.h, label %.preheader.1, label %skip_prefix_impl.exit30

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.i = load i8, ptr %i.f, align 1, !tbaa !63
  %i.j = icmp eq i8 %i.i, 57
  br i1 %i.j, label %.preheader.2, label %skip_prefix_impl.exit30

.preheader.2:                                     ; preds = %.preheader.1
  %i.k = getelementptr inbounds nuw i8, ptr %.041, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !63
  %i.m = icmp eq i8 %i.l, 54
  br i1 %i.m, label %.preheader.3, label %skip_prefix_impl.exit.1

.preheader.3:                                     ; preds = %.preheader.2
  %i.n = getelementptr inbounds nuw i8, ptr %.041, i64 3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !63
  %i.p = icmp eq i8 %i.o, 57
  br i1 %i.p, label %.preheader.4, label %skip_prefix_impl.exit.1

.preheader.4:                                     ; preds = %.preheader.3
  %i.q = getelementptr inbounds nuw i8, ptr %.041, i64 4
  %i.r = load i8, ptr %i.q, align 1, !tbaa !63
  %i.s = icmp eq i8 %i.r, 45
  br i1 %i.s, label %.preheader.5, label %skip_prefix_impl.exit.1

.preheader.5:                                     ; preds = %.preheader.4
  %i.t = getelementptr inbounds nuw i8, ptr %.041, i64 5
  %i.u = load i8, ptr %i.t, align 1, !tbaa !63
  %i.v = icmp eq i8 %i.u, 49
  br i1 %i.v, label %.preheader.6, label %skip_prefix_impl.exit.1

.preheader.6:                                     ; preds = %.preheader.5
  %i.w = getelementptr inbounds nuw i8, ptr %.041, i64 6
  %i.x = load i8, ptr %i.w, align 1, !tbaa !63
  %i.y = icmp eq i8 %i.x, 50
  br i1 %i.y, label %.preheader.7, label %skip_prefix_impl.exit.1

.preheader.7:                                     ; preds = %.preheader.6
  %i.z = getelementptr inbounds nuw i8, ptr %.041, i64 7
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !63
  %i.ab = icmp eq i8 %i.aa, 45
  br i1 %i.ab, label %.preheader.8, label %skip_prefix_impl.exit.1

.preheader.8:                                     ; preds = %.preheader.7
  %i.ac = getelementptr inbounds nuw i8, ptr %.041, i64 8
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !63
  %i.ae = icmp eq i8 %i.ad, 51
  br i1 %i.ae, label %.preheader.9, label %skip_prefix_impl.exit.1

.preheader.9:                                     ; preds = %.preheader.8
  %i.af = getelementptr inbounds nuw i8, ptr %.041, i64 9
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !63
  %i.ah = icmp eq i8 %i.ag, 49
  br i1 %i.ah, label %.preheader.10, label %skip_prefix_impl.exit.1

.preheader.10:                                    ; preds = %.preheader.9
  %i.ai = getelementptr inbounds nuw i8, ptr %.041, i64 10
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !63
  %i.ak = icmp eq i8 %i.aj, 32
  br i1 %i.ak, label %skip_prefix_impl.exit.thread, label %skip_prefix_impl.exit.1

skip_prefix_impl.exit.1:                          ; preds = %.preheader.10, %.preheader.9, %.preheader.8, %.preheader.7, %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2
  %.pr = load i8, ptr %i.f, align 1, !tbaa !63
  %i.al = icmp eq i8 %.pr, 57
  br i1 %i.al, label %skip_prefix_impl.exit.2, label %skip_prefix_impl.exit30

skip_prefix_impl.exit.2:                          ; preds = %skip_prefix_impl.exit.1
  %i.am = getelementptr inbounds nuw i8, ptr %.041, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !63
  %i.ao = icmp eq i8 %i.an, 55
  br i1 %i.ao, label %skip_prefix_impl.exit.3, label %skip_prefix_impl.exit30

skip_prefix_impl.exit.3:                          ; preds = %skip_prefix_impl.exit.2
  %i.ap = getelementptr inbounds nuw i8, ptr %.041, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !63
  %i.ar = icmp eq i8 %i.aq, 48
  br i1 %i.ar, label %skip_prefix_impl.exit.4, label %skip_prefix_impl.exit30

skip_prefix_impl.exit.4:                          ; preds = %skip_prefix_impl.exit.3
  %i.as = getelementptr inbounds nuw i8, ptr %.041, i64 4
  %i.at = load i8, ptr %i.as, align 1, !tbaa !63
  %i.au = icmp eq i8 %i.at, 45
  br i1 %i.au, label %skip_prefix_impl.exit.5, label %skip_prefix_impl.exit30

skip_prefix_impl.exit.5:                          ; preds = %skip_prefix_impl.exit.4
  %i.av = getelementptr inbounds nuw i8, ptr %.041, i64 5
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !63
  %i.ax = icmp eq i8 %i.aw, 48
  br i1 %i.ax, label %skip_prefix_impl.exit.6, label %skip_prefix_impl.exit30

skip_prefix_impl.exit.6:                          ; preds = %skip_prefix_impl.exit.5
  %i.ay = getelementptr inbounds nuw i8, ptr %.041, i64 6
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !63
  %i.ba = icmp eq i8 %i.az, 49
end_hunk_0
