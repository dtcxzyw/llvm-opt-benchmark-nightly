Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_str?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@lj_str_new:bb.a
._crit_edge:                                      ; preds = %bb.l
  %i.ch = icmp ugt i32 %i.cf, 32
  br i1 %i.ch, label %bb.m, label %.split, !prof !54

.split:                                           ; preds = %bb.f, %._crit_edge
  %i.ci = tail call fastcc ptr @lj_str_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %i.f, i32 noundef %.053, i32 noundef %.049)
  br label %.thread

bb.m:                                             ; preds = %._crit_edge
  br i1 %.not59, label %bb.n, label %.split57

.split57:                                         ; preds = %bb.m
  %i.cj = tail call fastcc ptr @lj_str_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %i.f, i32 noundef %.053, i32 noundef 1)
  br label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ck = tail call fastcc ptr @lj_str_rehash_chain(ptr noundef %0, i32 noundef %.053, ptr noundef %1, i32 noundef %i.f)
  br label %.thread

bb.o:                                             ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @lj_err_msg(ptr noundef nonnull %0, i32 noundef 56) #15
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.j, %bb.n, %.split57, %.split, %bb.q
  %.3 = phi ptr [ %i.cl, %bb.q ], [ %i.cj, %.split57 ], [ %i.ck, %bb.n ], [ %i.ci, %.split ], [ %.172, %bb.j ], [ %.172, %bb.i ]
  ret ptr %.3
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc ptr @lj_str_rehash_chain(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address) %2, i32 noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21
  %i.c = inttoptr i64 %i.b to ptr                 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 33
  %i.e = load i8, ptr %i.d, align 1, !tbaa !32
  %i.f = icmp eq i8 %i.e, 3
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load i8, ptr %i.g, align 8, !tbaa !43
  %i.i = xor i8 %i.h, 3
  %i.j = zext i8 %i.i to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi i32 [ %i.j, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.o = load i32, ptr %i.n, align 8, !tbaa !34   ; 3 uses
  %i.p = and i32 %i.o, %1
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.q ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !35   ; 4 uses
  store i64 1, ptr %i.r, align 8, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 173
  store i8 1, ptr %i.t, align 1, !tbaa !33
  %.not52 = icmp eq i64 %i.s, 0
  br i1 %.not52, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %.04651 = inttoptr i64 %i.s to ptr              ; 2 uses
  %.not48 = icmp eq i32 %i.k, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 164 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 176 ; 2 uses
  br i1 %.not48, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.e
  %.04654.us = phi ptr [ %.046.us, %bb.e ], [ %.04651, %.lr.ph ] ; 6 uses
  %.046.in53.us = phi i64 [ %i.z, %bb.e ], [ %i.s, %.lr.ph ]
  %i.z = load i64, ptr %.04654.us, align 8, !tbaa !16 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.04654.us, i64 16 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !38 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.04654.us, i64 11 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !36
  %.not50.us = icmp eq i8 %i.ad, 0
  br i1 %.not50.us, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !37
  %i.af = getelementptr inbounds nuw i8, ptr %.04654.us, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %.04654.us, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !13
  %i.ai = tail call fastcc i32 @hash_dense(i64 noundef %i.ae, i32 noundef %i.ab, ptr noundef nonnull %i.af, i32 noundef %i.ah) ; 2 uses
  store i32 %i.ai, ptr %i.aa, align 8, !tbaa !38
  store i8 1, ptr %i.ac, align 1, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.us
  %.0.us = phi i32 [ %i.ab, %.lr.ph.split.us ], [ %i.ai, %bb.d ]
  %i.aj = and i32 %.0.us, %i.o
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !35 ; 2 uses
  %i.an = and i64 %i.am, -2
  store i64 %i.an, ptr %.04654.us, align 8, !tbaa !16
  %i.ao = and i64 %i.am, 1
  %i.ap = or i64 %i.ao, %.046.in53.us
  store i64 %i.ap, ptr %i.al, align 8, !tbaa !35
  %.046.us = inttoptr i64 %i.z to ptr
  %.not.us = icmp eq i64 %i.z, 0
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.j
  %.04654 = phi ptr [ %.046, %bb.j ], [ %.04651, %.lr.ph ] ; 9 uses
  %.046.in53 = phi i64 [ %i.aq, %bb.j ], [ %i.s, %.lr.ph ]
  %i.aq = load i64, ptr %.04654, align 8, !tbaa !16 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.04654, i64 8 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !16  ; 2 uses
  %i.at = xor i8 %i.as, 3
  %i.au = zext i8 %i.at to i32
  %i.av = and i32 %i.k, %i.au
  %.not49 = icmp eq i32 %i.av, 0
  br i1 %.not49, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split
  %i.aw = and i8 %i.as, -8
  %i.ax = load i8, ptr %i.u, align 8, !tbaa !43
  %i.ay = and i8 %i.ax, 3
  %i.az = or disjoint i8 %i.ay, %i.aw
  store i8 %i.az, ptr %i.ar, align 8, !tbaa !16
  %i.ba = getelementptr inbounds nuw i8, ptr %.04654, i64 16 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !38 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.04654, i64 11 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !36
  %.not50 = icmp eq i8 %i.bd, 0
  br i1 %.not50, label %bb.h, label %bb.i

bb.g:                                             ; preds = %.lr.ph.split
  %i.be = load i32, ptr %i.v, align 4, !tbaa !44
  %i.bf = add i32 %i.be, -1
  store i32 %i.bf, ptr %i.v, align 4, !tbaa !44
  %i.bg = getelementptr inbounds nuw i8, ptr %.04654, i64 20
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !13
  %i.bi = and i32 %i.bh, -4
  %i.bj = add i32 %i.bi, 4
  %i.bk = zext i32 %i.bj to i64
  %i.bl = add nuw nsw i64 %i.bk, 24               ; 2 uses
  %i.bm = load i64, ptr %i.w, align 8, !tbaa !40
  %i.bn = sub i64 %i.bm, %i.bl
  store i64 %i.bn, ptr %i.w, align 8, !tbaa !40
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.bp = load ptr, ptr %i.x, align 8, !tbaa !42
  %i.bq = tail call ptr %i.bo(ptr noundef %i.bp, ptr noundef nonnull %.04654, i64 noundef range(i64 0, 34359738361) %i.bl, i64 noundef 0) #14, !inline_history !56 ; 0 uses
  br label %bb.j, !llvm.loop !55

bb.h:                                             ; preds = %bb.f
  %i.br = load i64, ptr %i.y, align 8, !tbaa !37
  %i.bs = getelementptr inbounds nuw i8, ptr %.04654, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %.04654, i64 20
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !13
  %i.bv = tail call fastcc i32 @hash_dense(i64 noundef %i.br, i32 noundef %i.bb, ptr noundef nonnull %i.bs, i32 noundef %i.bu) ; 2 uses
  store i32 %i.bv, ptr %i.ba, align 8, !tbaa !38
  store i8 1, ptr %i.bc, align 1, !tbaa !36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.0 = phi i32 [ %i.bb, %bb.f ], [ %i.bv, %bb.h ]
  %i.bw = and i32 %.0, %i.o
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bx ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !35 ; 2 uses
  %i.ca = and i64 %i.bz, -2
  store i64 %i.ca, ptr %.04654, align 8, !tbaa !16
  %i.cb = and i64 %i.bz, 1
  %i.cc = or i64 %i.cb, %.046.in53
  store i64 %i.cc, ptr %i.by, align 8, !tbaa !35
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.046 = inttoptr i64 %i.aq to ptr
  %.not = icmp eq i64 %i.aq, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.j, %bb.e, %bb.c
  %i.cd = zext i32 %3 to i64
  %i.ce = tail call ptr @lj_str_new(ptr noundef %0, ptr noundef %2, i64 noundef %i.cd)
  ret ptr %i.ce
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @lj_str_alloc(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #3 {
bb.a:
  %i.a = and i32 %2, -4                           ; 2 uses
  %i.b = add i32 %i.a, 4
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 24
  %i.e = tail call ptr @lj_mem_realloc(ptr noundef %0, ptr noundef null, i64 noundef 0, i64 noundef %i.d) #14 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !21
  %i.h = inttoptr i64 %i.g to ptr                 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i8, ptr %i.i, align 8, !tbaa !43
  %i.k = and i8 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i8 %i.k, ptr %i.l, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  store i8 4, ptr %i.m, align 1, !tbaa !57
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 %2, ptr %i.n, align 4, !tbaa !13
  %5 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 %3, ptr %5, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 172 ; 3 uses
  %i.q = load i8, ptr %i.p, align 4, !tbaa !58    ; 2 uses
  %i.r = add i8 %i.q, -1
  store i8 %i.r, ptr %i.p, align 4, !tbaa !58
  %.not = icmp eq i8 %i.q, 0
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !59
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 400
  %i.t = tail call i64 @lj_prng_u64(ptr noundef nonnull %i.s) #14 ; 2 uses
  %i.u = trunc i64 %i.t to i32
  %i.v = lshr i64 %i.t, 56
  %i.w = trunc nuw i64 %i.v to i8
  store i8 %i.w, ptr %i.p, align 4, !tbaa !58
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.x = phi i32 [ %.pre, %._crit_edge ], [ %i.u, %bb.b ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.z = add i32 %i.x, 1
  store i32 %i.z, ptr %i.y, align 8, !tbaa !59
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %i.x, ptr %i.aa, align 4, !tbaa !60
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i8 0, ptr %i.ab, align 2, !tbaa !61
  %i.ac = trunc nuw nsw i32 %4 to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 11
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !36
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.af = zext i32 %i.a to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  store i32 0, ptr %i.ag, align 4, !tbaa !14
  %6 = zext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr align 1 %1, i64 %6, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !34 ; 3 uses
  %i.aj = and i32 %i.ai, %3
  %i.ak = load ptr, ptr %i.o, align 8, !tbaa !31
  %i.al = zext i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.al ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !35 ; 2 uses
  %i.ao = and i64 %i.an, -2
  store i64 %i.ao, ptr %i.e, align 8, !tbaa !62
  %i.ap = ptrtoint ptr %i.e to i64
  %i.aq = and i64 %i.an, 1
  %i.ar = or i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %i.am, align 8, !tbaa !35
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 164 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !44 ; 2 uses
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !44
  %i.av = icmp ugt i32 %i.at, %i.ai
  br i1 %i.av, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aw = shl i32 %i.ai, 1
  %i.ax = or disjoint i32 %i.aw, 1
  tail call void @lj_str_resize(ptr noundef nonnull %0, i32 noundef %i.ax)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret ptr %i.e
}

; Function Attrs: noreturn
declare hidden void @lj_err_msg(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define hidden void @lj_str_free(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !44
  %i.c = add i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13
  %i.f = and i32 %i.e, -4
  %i.g = add i32 %i.f, 4
  %i.h = zext i32 %i.g to i64
  %i.i = add nuw nsw i64 %i.h, 24                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !40
  %i.l = sub i64 %i.k, %i.i
  store i64 %i.l, ptr %i.j, align 8, !tbaa !40
  %i.m = load ptr, ptr %0, align 8, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !42
  %i.p = tail call ptr %i.m(ptr noundef %i.o, ptr noundef %1, i64 noundef range(i64 0, 34359738361) %i.i, i64 noundef 0) #14, !inline_history !0 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @lj_str_init(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  %i.e = tail call i64 @lj_prng_u64(ptr noundef nonnull %i.d) #14
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store i64 %i.e, ptr %i.f, align 8, !tbaa !37
  tail call void @lj_str_resize(ptr noundef %0, i32 noundef 255)
  ret void
}

declare hidden i64 @lj_prng_u64(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = !{!"GCRef", !10, i64 0}
!12 = !{!"GCstr", !11, i64 0, !6, i64 8, !6, i64 9, !6, i64 10, !6, i64 11, !7, i64 12, !7, i64 16, !7, i64 20}
!13 = !{!12, !7, i64 20}
!14 = !{!7, !7, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!6, !6, i64 0}
!17 = !{!"MRef", !10, i64 0}
!18 = !{!"any pointer", !6, i64 0}
!19 = !{!"p1 _ZTS6TValue", !18, i64 0}
!20 = !{!"lua_State", !11, i64 0, !6, i64 8, !6, i64 9, !6, i64 10, !6, i64 11, !17, i64 16, !11, i64 24, !19, i64 32, !19, i64 40, !17, i64 48, !17, i64 56, !11, i64 64, !11, i64 72, !18, i64 80, !7, i64 88}
!21 = !{!20, !10, i64 16}
!22 = !{!"GCState", !10, i64 0, !10, i64 8, !6, i64 16, !6, i64 17, !6, i64 18, !6, i64 19, !7, i64 20, !11, i64 24, !17, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !10, i64 72, !10, i64 80, !7, i64 88, !7, i64 92, !17, i64 96}
!23 = !{!"p1 _ZTS5GCRef", !18, i64 0}
!24 = !{!"StrInternState", !23, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !6, i64 20, !6, i64 21, !6, i64 22, !6, i64 23, !10, i64 24}
!25 = !{!"p1 omnipotent char", !18, i64 0}
!26 = !{!"SBuf", !25, i64 0, !25, i64 8, !25, i64 16, !17, i64 24}
!27 = !{!"Node", !6, i64 0, !6, i64 8, !17, i64 16}
!28 = !{!"GCupval", !11, i64 0, !6, i64 8, !6, i64 9, !6, i64 10, !6, i64 11, !6, i64 16, !17, i64 32, !7, i64 40}
!29 = !{!"PRNGState", !6, i64 0}
!30 = !{!"global_State", !18, i64 0, !18, i64 8, !22, i64 16, !12, i64 120, !6, i64 144, !6, i64 145, !6, i64 146, !6, i64 147, !24, i64 152, !7, i64 184, !11, i64 192, !26, i64 200, !6, i64 232, !6, i64 240, !27, i64 248, !6, i64 272, !11, i64 280, !28, i64 288, !7, i64 336, !7, i64 340, !18, i64 344, !18, i64 352, !18, i64 360, !7, i64 368, !7, i64 372, !11, i64 376, !17, i64 384, !17, i64 392, !29, i64 400, !6, i64 432}
!31 = !{!30, !23, i64 152}
!32 = !{!30, !6, i64 33}
!33 = !{!30, !6, i64 173}
!34 = !{!30, !7, i64 160}
!35 = !{!11, !10, i64 0}
!36 = !{!12, !6, i64 11}
!37 = !{!30, !10, i64 176}
!38 = !{!12, !7, i64 16}
!39 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!40 = !{!30, !10, i64 16}
!41 = !{!30, !18, i64 0}
!42 = !{!30, !18, i64 8}
!43 = !{!30, !6, i64 32}
!44 = !{!30, !7, i64 164}
!45 = distinct !{!45, !15}
!46 = distinct !{!46, !15}
!47 = distinct !{!47, !15}
!48 = distinct !{!48, !15}
!49 = distinct !{!49, !15}
!50 = distinct !{!50, !15}
!51 = distinct !{!51, !15}
!52 = distinct !{!52, !15}
!53 = distinct !{!53, !15}
!54 = !{!"branch_weights", !"expected", i32 1879376, i32 2145604272}
!55 = distinct !{!55, !15}
!56 = !{ptr @lj_str_free}
!57 = !{!12, !6, i64 9}
!58 = !{!30, !6, i64 172}
!59 = !{!30, !7, i64 168}
!60 = !{!12, !7, i64 12}
!61 = !{!12, !6, i64 10}
!62 = !{!12, !10, i64 0}
end_hunk_0
