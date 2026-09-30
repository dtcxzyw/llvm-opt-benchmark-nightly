Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib/original/inflate?download=true
inline.NumInlined: 24
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@inflate:bb.a

inflateStateCheck.exit.thread.loopexit:           ; preds = %bb.k
  br label %inflateStateCheck.exit.thread

inflateStateCheck.exit.thread:                    ; preds = %bb.k, %inflateStateCheck.exit.thread.loopexit, %bb.e, %bb.b, %bb.c, %bb.a, %bb.d, %inflateStateCheck.exit, %bb.f, %bb.h, %bb.ih, %updatewindow.exit, %bb.dn
  %.01121 = phi i32 [ -2, %inflateStateCheck.exit ], [ -4, %inflateStateCheck.exit.thread.loopexit ], [ -4, %updatewindow.exit ], [ %spec.store.select, %bb.ih ], [ 2, %bb.dn ], [ -2, %bb.h ], [ -2, %bb.f ], [ -2, %bb.e ], [ -2, %bb.d ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.01121
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare hidden void @inflate_fixed(ptr noundef) local_unnamed_addr #3

declare hidden i32 @inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @inflate_fast(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @inflateEnd(ptr nofree noundef captures(address) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %inflateStateCheck.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %inflateStateCheck.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %inflateStateCheck.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %inflateStateCheck.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.k, %0
  br i1 %.not.i, label %inflateStateCheck.exit, label %inflateStateCheck.exit.thread

inflateStateCheck.exit:                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21
  %i.n = add i32 %i.m, -16180
  %or.cond.i = icmp ult i32 %i.n, 32
  br i1 %or.cond.i, label %bb.f, label %inflateStateCheck.exit.thread

bb.f:                                             ; preds = %inflateStateCheck.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !42   ; 2 uses
  %.not11 = icmp eq ptr %i.p, null
  br i1 %.not11, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !44
  tail call void %i.f(ptr noundef %i.r, ptr noundef nonnull %i.p) #9
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !15
  %.pre14 = load ptr, ptr %i.h, align 8, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = phi ptr [ %.pre14, %bb.g ], [ %i.i, %bb.f ]
  %i.t = phi ptr [ %.pre, %bb.g ], [ %i.f, %bb.f ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !44
  tail call void %i.t(ptr noundef %i.v, ptr noundef %i.s) #9
  store ptr null, ptr %i.h, align 8, !tbaa !16
  br label %inflateStateCheck.exit.thread

inflateStateCheck.exit.thread:                    ; preds = %bb.e, %bb.b, %bb.c, %bb.a, %bb.d, %inflateStateCheck.exit, %bb.h
  %.0 = phi i32 [ 0, %bb.h ], [ -2, %inflateStateCheck.exit ], [ -2, %bb.d ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2, 1) i32 @inflateGetDictionary(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %inflateStateCheck.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %inflateStateCheck.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %inflateStateCheck.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %inflateStateCheck.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.k, %0
  br i1 %.not.i, label %inflateStateCheck.exit, label %inflateStateCheck.exit.thread

inflateStateCheck.exit:                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21
  %i.n = add i32 %i.m, -16180
  %or.cond.i = icmp ult i32 %i.n, 32
  br i1 %or.cond.i, label %bb.f, label %inflateStateCheck.exit.thread

bb.f:                                             ; preds = %inflateStateCheck.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !40   ; 2 uses
  %i.q = icmp ne i32 %i.p, 0
  %i.r = icmp ne ptr %1, null
  %or.cond = and i1 %i.r, %i.q
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 68 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !41   ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w
  %i.y = sub i32 %i.p, %i.v
  %i.z = zext i32 %i.y to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr align 1 %i.x, i64 %i.z, i1 false)
  %i.aa = load i32, ptr %i.o, align 8, !tbaa !40
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab
  %i.ad = load i32, ptr %i.u, align 4, !tbaa !41
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 %i.af
  %i.ah = load ptr, ptr %i.s, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr align 1 %i.ah, i64 %i.ae, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not21 = icmp eq ptr %2, null
  br i1 %.not21, label %inflateStateCheck.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load i32, ptr %i.o, align 8, !tbaa !40
  store i32 %i.ai, ptr %2, align 4, !tbaa !57
  br label %inflateStateCheck.exit.thread

inflateStateCheck.exit.thread:                    ; preds = %bb.e, %bb.b, %bb.c, %bb.a, %bb.d, %bb.h, %bb.i, %inflateStateCheck.exit
  %.0 = phi i32 [ -2, %inflateStateCheck.exit ], [ 0, %bb.i ], [ 0, %bb.h ], [ -2, %bb.d ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -4, 1) i32 @inflateSetDictionary(ptr nofree noundef readonly captures(address) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %inflateStateCheck.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %inflateStateCheck.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %inflateStateCheck.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 7 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %inflateStateCheck.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.k, %0
  br i1 %.not.i, label %inflateStateCheck.exit, label %inflateStateCheck.exit.thread

inflateStateCheck.exit:                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21   ; 2 uses
  %i.n = add i32 %i.m, -16180
  %or.cond.i = icmp ult i32 %i.n, 32
  br i1 %or.cond.i, label %bb.f, label %inflateStateCheck.exit.thread

bb.f:                                             ; preds = %inflateStateCheck.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !25
  %.not17 = icmp eq i32 %i.p, 0
  %i.q = icmp eq i32 %i.m, 16190                  ; 2 uses
  br i1 %.not17, label %4, label %3

3:                                                ; preds = %bb.f
  br i1 %i.q, label %.thread, label %inflateStateCheck.exit.thread

4:                                                ; preds = %bb.f
  br i1 %i.q, label %.thread, label %bb.g

.thread:                                          ; preds = %3, %4
  %i.r = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #9
  %i.s = tail call i64 @adler32(i64 noundef %i.r, ptr noundef %1, i32 noundef %2) #9
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.u = load i64, ptr %i.t, align 8, !tbaa !49
  %.not19 = icmp eq i64 %i.s, %i.u
  br i1 %.not19, label %._crit_edge, label %inflateStateCheck.exit.thread

._crit_edge:                                      ; preds = %.thread
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %4
  %i.v = phi ptr [ %.pre, %._crit_edge ], [ %i.i, %4 ] ; 11 uses
  %i.w = zext i32 %2 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 72 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !42   ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !44
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !43
  %i.ag = shl nuw i32 1, %i.af
  %i.ah = tail call ptr %i.ab(ptr noundef %i.ad, i32 noundef %i.ag, i32 noundef 1) #9, !inline_history !0 ; 3 uses
  store ptr %i.ah, ptr %i.y, align 8, !tbaa !42
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %updatewindow.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = phi ptr [ %i.ah, %bb.h ], [ %i.z, %bb.g ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 60 ; 5 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !39 ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !43
  %i.ap = shl nuw i32 1, %i.ao                    ; 2 uses
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !39
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 68
  store i32 0, ptr %i.aq, align 4, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  store i32 0, ptr %i.ar, align 8, !tbaa !40
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.as = phi i32 [ %i.ap, %bb.j ], [ %i.al, %bb.i ] ; 3 uses
  %.not.i21 = icmp ult i32 %2, %i.as
  br i1 %.not.i21, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = sub nsw i64 0, %i.at
  %i.av = getelementptr inbounds i8, ptr %i.x, i64 %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aj, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.av, i64 %i.at, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 68
  store i32 0, ptr %i.aw, align 4, !tbaa !41
  %i.ax = load i32, ptr %i.ak, align 4, !tbaa !39
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !40
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 68 ; 4 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !41 ; 2 uses
  %i.bb = sub i32 %i.as, %i.ba                    ; 2 uses
  %spec.select.i22 = tail call i32 @llvm.umin.i32(i32 %i.bb, i32 %2) ; 4 uses
  %i.bc = zext i32 %i.ba to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.bc
  %i.be = zext i32 %spec.select.i22 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr readonly align 1 %1, i64 %i.be, i1 false)
  %.not57.not.i = icmp ugt i32 %2, %i.bb
  br i1 %.not57.not.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bf = sub nuw i32 %2, %spec.select.i22        ; 2 uses
  %i.bg = load ptr, ptr %i.y, align 8, !tbaa !42
  %i.bh = zext i32 %i.bf to i64                   ; 2 uses
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.x, i64 %i.bi
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr nonnull readonly align 1 %i.bj, i64 %i.bh, i1 false)
  store i32 %i.bf, ptr %i.az, align 4, !tbaa !41
  %i.bk = load i32, ptr %i.ak, align 4, !tbaa !39
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !40
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.bm = load i32, ptr %i.az, align 4, !tbaa !41
  %i.bn = add i32 %i.bm, %spec.select.i22         ; 2 uses
  %i.bo = load i32, ptr %i.ak, align 4, !tbaa !39 ; 2 uses
  %i.bp = icmp eq i32 %i.bn, %i.bo
  %spec.store.select.i = select i1 %i.bp, i32 0, i32 %i.bn
  store i32 %spec.store.select.i, ptr %i.az, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.v, i64 64 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !40 ; 2 uses
  %i.bs = icmp ult i32 %i.br, %i.bo
  br i1 %i.bs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bt = add i32 %i.br, %spec.select.i22
  store i32 %i.bt, ptr %i.bq, align 8, !tbaa !40
  br label %bb.q

updatewindow.exit:                                ; preds = %bb.h
  store i32 16210, ptr %i.l, align 8, !tbaa !21
  br label %inflateStateCheck.exit.thread

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.o, %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store i32 1, ptr %i.bu, align 4, !tbaa !28
  br label %inflateStateCheck.exit.thread

inflateStateCheck.exit.thread:                    ; preds = %bb.e, %bb.b, %bb.c, %bb.a, %bb.d, %.thread, %3, %inflateStateCheck.exit, %bb.q, %updatewindow.exit
  %.0 = phi i32 [ 0, %bb.q ], [ -2, %inflateStateCheck.exit ], [ -2, %3 ], [ -4, %updatewindow.exit ], [ -3, %.thread ], [ -2, %bb.d ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2, 1) i32 @inflateGetHeader(ptr nofree noundef readonly captures(address) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %inflateStateCheck.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %inflateStateCheck.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %inflateStateCheck.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %inflateStateCheck.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.k, %0
  br i1 %.not.i, label %inflateStateCheck.exit, label %inflateStateCheck.exit.thread

inflateStateCheck.exit:                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21
  %i.n = add i32 %i.m, -16180
  %or.cond.i = icmp ult i32 %i.n, 32
  br i1 %or.cond.i, label %bb.f, label %inflateStateCheck.exit.thread

bb.f:                                             ; preds = %inflateStateCheck.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !25
  %i.q = and i32 %i.p, 2
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %inflateStateCheck.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %1, ptr %i.s, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 0, ptr %i.t, align 8, !tbaa !51
  br label %inflateStateCheck.exit.thread

inflateStateCheck.exit.thread:                    ; preds = %bb.e, %bb.b, %bb.c, %bb.a, %bb.d, %bb.f, %inflateStateCheck.exit, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ -2, %inflateStateCheck.exit ], [ -2, %bb.f ], [ -2, %bb.d ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -5, 1) i32 @inflateSync(ptr nofree noundef captures(address) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %inflateStateCheck.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %inflateStateCheck.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %inflateStateCheck.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16   ; 28 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %inflateStateCheck.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.l, %0
  br i1 %.not.i, label %inflateStateCheck.exit, label %inflateStateCheck.exit.thread

inflateStateCheck.exit:                           ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !21   ; 2 uses
  %i.o = add i32 %i.n, -16180
  %or.cond.i = icmp ult i32 %i.o, 32
  br i1 %or.cond.i, label %bb.f, label %inflateStateCheck.exit.thread

bb.f:                                             ; preds = %inflateStateCheck.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !48   ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.t = load i32, ptr %i.s, align 8, !tbaa !33
  %i.u = icmp ult i32 %i.t, 8
  br i1 %i.u, label %inflateStateCheck.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not43 = icmp eq i32 %i.n, 16211
  br i1 %.not43, label %._crit_edge70, label %bb.i

._crit_edge70:                                    ; preds = %bb.h
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.j, i64 140
  %.pre71 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !57
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 16211, ptr %i.m, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !33   ; 3 uses
  %i.x = and i32 %i.w, 7
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 80 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !32
  %i.aa = zext nneg i32 %i.x to i64
  %i.ab = lshr i64 %i.z, %i.aa                    ; 3 uses
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !32
  %.not63 = icmp ult i32 %i.w, 8
  br i1 %.not63, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.ac = add i32 %i.w, -8                        ; 2 uses
  %i.ad = lshr i32 %i.ac, 3
  %i.ae = add nuw nsw i32 %i.ad, 1                ; 2 uses
  %xtraiter = and i32 %i.ae, 3                    ; 3 uses
  %i.af = icmp ult i32 %i.ac, 24
  br i1 %i.af, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.ae, 1073741820
  br label %.lr.ph

.thread:                                          ; preds = %bb.i
  store i32 0, ptr %i.v, align 8, !tbaa !33
  br label %syncsearch.exit

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %i.ag = phi i64 [ %i.ab, %.lr.ph.preheader.new ], [ %i.au, %.lr.ph ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ah = trunc i64 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !45
  %i.aj = lshr i64 %i.ag, 8
  %i.ak = trunc i64 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !45
  %i.an = lshr i64 %i.ag, 16
  %i.ao = trunc i64 %i.an to i8
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !45
  %i.ar = lshr i64 %i.ag, 24
  %i.as = trunc i64 %i.ar to i8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.2
  store i8 %i.as, ptr %i.at, align 1, !tbaa !45
  %i.au = lshr i64 %i.ag, 32                      ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.preheader.i.unr-lcssa, label %.lr.ph, !llvm.loop !105

.lr.ph.preheader.i.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph.preheader.i.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.lr.ph.preheader.i.unr-lcssa ]
  %.epil.init = phi i64 [ %i.ab, %.lr.ph.preheader ], [ %i.au, %.lr.ph.preheader.i.unr-lcssa ]
  %lcmp.mod83 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod83)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %i.av = phi i64 [ %i.ay, %.lr.ph.epil ], [ %.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.aw = trunc i64 %i.av to i8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.epil
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !45
  %i.ay = lshr i64 %i.av, 8                       ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader.i, label %.lr.ph.epil, !llvm.loop !106

.lr.ph.preheader.i:                               ; preds = %.lr.ph.epil, %.lr.ph.preheader.i.unr-lcssa
  %indvars.iv.lcssa = phi i64 [ %indvars.iv.next.2, %.lr.ph.preheader.i.unr-lcssa ], [ %indvars.iv.epil, %.lr.ph.epil ]
end_hunk_0
