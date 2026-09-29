Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_buf?download=true
inline.NumInlined: 1
begin_hunk_0_@lj_bufx_set:bb.a
  %i.o = sub i64 %i.m, %i.n
  %i.p = and i64 %i.o, 4294967295                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !46
  %i.s = sub i64 %i.r, %i.p
  store i64 %i.s, ptr %i.q, align 8, !tbaa !46
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !48
  %i.w = tail call ptr %i.t(ptr noundef %i.v, ptr noundef %i.j, i64 noundef range(i64 0, 4294967296) %i.p, i64 noundef 0) #9, !inline_history !37 ; 0 uses
  br label %lj_bufx_free.exit

lj_bufx_free.exit:                                ; preds = %bb.a, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = or disjoint i64 %i.c, 3
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !38
  store ptr %1, ptr %i.z, align 8, !tbaa !26
  store ptr %1, ptr %i.aa, align 8, !tbaa !23
  %i.ac = zext i32 %2 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac ; 2 uses
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !25
  store ptr %i.ad, ptr %0, align 8, !tbaa !27
  %i.ae = ptrtoint ptr %3 to i64
  store i64 %i.ae, ptr %i.x, align 8, !tbaa !20
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !20
  %i.ah = and i8 %i.ag, 3
  %.not = icmp eq i8 %i.ah, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %lj_bufx_free.exit
  %i.ai = getelementptr inbounds i8, ptr %0, i64 -40
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !20
  %i.ak = and i8 %i.aj, 4
  %.not13 = icmp eq i8 %i.ak, 0
  br i1 %.not13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds i8, ptr %0, i64 -48
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !30
  %i.ao = inttoptr i64 %i.an to ptr
  tail call void @lj_gc_barrierf(ptr noundef %i.ao, ptr noundef nonnull %i.al, ptr noundef nonnull %3) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %lj_bufx_free.exit
  ret void
}

declare hidden void @lj_gc_barrierf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden i32 @lj_bufx_more(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = load ptr, ptr %0, align 8, !tbaa !18
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = icmp ugt i32 %1, %i.g
  br i1 %i.h, label %bb.b, label %lj_buf_more.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @lj_buf_more2(ptr noundef nonnull %0, i32 noundef %1) ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !25
  %.pre3 = load ptr, ptr %0, align 8, !tbaa !27
  %.pre4 = ptrtoint ptr %.pre to i64
  %.pre5 = ptrtoint ptr %.pre3 to i64
  %.pre7 = sub i64 %.pre4, %.pre5
  %.pre9 = trunc i64 %.pre7 to i32
  br label %lj_buf_more.exit

lj_buf_more.exit:                                 ; preds = %bb.a, %bb.b
  %.pre-phi10 = phi i32 [ %i.g, %bb.a ], [ %.pre9, %bb.b ]
  ret i32 %.pre-phi10
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @lj_buf_putmem(ptr nofree noundef returned captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = trunc i64 %i.f to i32
  %i.h = icmp ugt i32 %2, %i.g
  br i1 %i.h, label %bb.b, label %lj_buf_more.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @lj_buf_more2(ptr noundef nonnull %0, i32 noundef %2)
  br label %lj_buf_more.exit

lj_buf_more.exit:                                 ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.i, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.j = zext i32 %2 to i64                       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i, ptr align 1 %1, i64 %i.j, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.j
  store ptr %i.k, ptr %0, align 8, !tbaa !18
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @lj_buf_putchar(ptr nofree noundef returned captures(ret: address, provenance) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.d = icmp ult ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i32 %1 to i8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.e, ptr %i.a, align 1, !tbaa !20
  store ptr %i.f, ptr %0, align 8, !tbaa !18
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call fastcc ptr @lj_buf_putchar2(ptr noundef nonnull %0, i32 noundef %1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret ptr %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc noundef ptr @lj_buf_putchar2(ptr nofree noundef returned captures(ret: address, provenance) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lj_buf_more2(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.b = trunc i32 %1 to i8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.b, ptr %i.a, align 1, !tbaa !20
  store ptr %i.c, ptr %0, align 8, !tbaa !18
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @lj_buf_putstr(ptr nofree noundef returned captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.e = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp ugt i32 %i.b, %i.i
  br i1 %i.j, label %bb.b, label %lj_buf_more.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @lj_buf_more2(ptr noundef nonnull %0, i32 noundef %i.b)
  br label %lj_buf_more.exit

lj_buf_more.exit:                                 ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.k, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = zext i32 %i.b to i64                     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i, ptr nonnull align 4 %i.l, i64 %i.m, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.m
  store ptr %i.n, ptr %0, align 8, !tbaa !18
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @lj_buf_putstr_reverse(ptr nofree noundef returned captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !32   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.e = load ptr, ptr %0, align 8, !tbaa !18     ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp ugt i32 %i.b, %i.i
  br i1 %i.j, label %lj_buf_more.exit.thread, label %lj_buf_more.exit, !prof !9

lj_buf_more.exit.thread:                          ; preds = %bb.a
  %i.k = tail call ptr @lj_buf_more2(ptr noundef nonnull %0, i32 noundef %i.b) ; 2 uses
  %i.l = zext i32 %i.b to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  br label %iter.check

lj_buf_more.exit:                                 ; preds = %bb.a
  %i.n = zext i32 %i.b to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.n
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %lj_buf_more.exit.thread, %lj_buf_more.exit
  %i.p = phi ptr [ %i.m, %lj_buf_more.exit.thread ], [ %i.o, %lj_buf_more.exit ] ; 3 uses
  %i.q = phi i64 [ %i.l, %lj_buf_more.exit.thread ], [ %i.n, %lj_buf_more.exit ] ; 3 uses
  %.0.i19 = phi ptr [ %i.k, %lj_buf_more.exit.thread ], [ %i.e, %lj_buf_more.exit ] ; 10 uses
  %i.r = ptrtoaddr ptr %i.p to i64
  %.0.i1920 = ptrtoaddr ptr %.0.i19 to i64        ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 23 ; 6 uses
  %i.u = add nuw i64 %.0.i1920, 1
  %umax23 = tail call i64 @llvm.umax.i64(i64 %i.r, i64 %i.u)
  %i.v = sub i64 %umax23, %.0.i1920               ; 7 uses
  %min.iters.check = icmp ult i64 %i.v, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %2 = ptrtoaddr ptr %i.p to i64
  %3 = ptrtoaddr ptr %.0.i19 to i64               ; 3 uses
  %i.w = add nuw i64 %3, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %2, i64 %i.w) ; 2 uses
  %i.x = sub i64 %umax, %3
  %scevgep = getelementptr i8, ptr %.0.i19, i64 %i.x
  %i.y = add i64 %i.q, %3
  %i.z = add i64 %i.y, 24
  %i.aa = sub i64 %i.z, %umax
  %scevgep21 = getelementptr i8, ptr %1, i64 %i.aa
  %i.ab = getelementptr i8, ptr %1, i64 %i.q
  %scevgep22 = getelementptr i8, ptr %i.ab, i64 24
  %bound0 = icmp ult ptr %.0.i19, %scevgep22
  %bound1 = icmp ult ptr %scevgep21, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check24 = icmp ult i64 %i.v, 32
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ac = and i64 %i.v, 24
  %n.vec = and i64 %i.v, -32                      ; 5 uses
  %i.ad = sub i64 0, %n.vec
  %i.ae = getelementptr i8, ptr %i.t, i64 %i.ad
  %i.af = getelementptr i8, ptr %.0.i19, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ag = sub i64 0, %index
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ag ; 2 uses
  %next.gep25 = getelementptr i8, ptr %.0.i19, i64 %index ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep, i64 -15
  %i.ai = getelementptr i8, ptr %next.gep, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ah, align 1, !tbaa !20, !alias.scope !56
  %wide.load26 = load <16 x i8>, ptr %i.ai, align 1, !tbaa !20, !alias.scope !56
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse27 = shufflevector <16 x i8> %wide.load26, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.aj = getelementptr i8, ptr %next.gep25, i64 16
  store <16 x i8> %reverse, ptr %next.gep25, align 1, !tbaa !20, !alias.scope !57, !noalias !56
  store <16 x i8> %reverse27, ptr %i.aj, align 1, !tbaa !20, !alias.scope !57, !noalias !56
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !35

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec29 = and i64 %i.v, -8                     ; 4 uses
  %i.al = sub i64 0, %n.vec29
  %i.am = getelementptr i8, ptr %i.t, i64 %i.al
  %i.an = getelementptr i8, ptr %.0.i19, i64 %n.vec29 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index30 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next35, %vec.epilog.vector.body ] ; 3 uses
  %i.ao = sub i64 0, %index30
  %next.gep31 = getelementptr i8, ptr %i.t, i64 %i.ao
  %next.gep32 = getelementptr i8, ptr %.0.i19, i64 %index30
  %i.ap = getelementptr i8, ptr %next.gep31, i64 -7
  %wide.load33 = load <8 x i8>, ptr %i.ap, align 1, !tbaa !20, !alias.scope !56
  %reverse34 = shufflevector <8 x i8> %wide.load33, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse34, ptr %next.gep32, align 1, !tbaa !20, !alias.scope !57, !noalias !56
  %index.next35 = add nuw i64 %index30, 8         ; 2 uses
  %i.aq = icmp eq i64 %index.next35, %n.vec29
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !54

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n36 = icmp eq i64 %i.v, %n.vec29
  br i1 %cmp.n36, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.ph = phi ptr [ %i.t, %iter.check ], [ %i.t, %vector.memcheck ], [ %i.ae, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ]
  %.01314.ph = phi ptr [ %.0.i19, %iter.check ], [ %.0.i19, %vector.memcheck ], [ %i.af, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.015 = phi ptr [ %i.ar, %.lr.ph ], [ %.015.ph, %.lr.ph.preheader ] ; 2 uses
  %.01314 = phi ptr [ %i.at, %.lr.ph ], [ %.01314.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.015, i64 -1
  %i.as = load i8, ptr %.015, align 1, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %.01314, i64 1 ; 3 uses
  store i8 %i.as, ptr %.01314, align 1, !tbaa !20
  %i.au = icmp ult ptr %i.at, %i.p
  br i1 %i.au, label %.lr.ph, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %lj_buf_more.exit
  %.013.lcssa = phi ptr [ %i.e, %lj_buf_more.exit ], [ %i.an, %vec.epilog.middle.block ], [ %i.af, %middle.block ], [ %i.at, %.lr.ph ]
  store ptr %.013.lcssa, ptr %0, align 8, !tbaa !18
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @lj_buf_putstr_lower(ptr nofree noundef returned captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !32   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.f = load ptr, ptr %0, align 8, !tbaa !18     ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = trunc i64 %i.i to i32
  %i.k = icmp ugt i32 %i.c, %i.j
  br i1 %i.k, label %lj_buf_more.exit.thread, label %lj_buf_more.exit, !prof !9

lj_buf_more.exit.thread:                          ; preds = %bb.a
  %i.l = tail call ptr @lj_buf_more2(ptr noundef nonnull %0, i32 noundef %i.c) ; 2 uses
  %i.m = zext i32 %i.c to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  br label %iter.check

lj_buf_more.exit:                                 ; preds = %bb.a
  %i.o = zext i32 %i.c to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.o
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %lj_buf_more.exit.thread, %lj_buf_more.exit
  %i.q = phi ptr [ %i.n, %lj_buf_more.exit.thread ], [ %i.p, %lj_buf_more.exit ] ; 2 uses
  %.0.i27 = phi ptr [ %i.l, %lj_buf_more.exit.thread ], [ %i.f, %lj_buf_more.exit ] ; 7 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %.0.i2728 = ptrtoaddr ptr %.0.i27 to i64        ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.t = add nuw i64 %.0.i2728, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.r, i64 %i.t)
  %i.u = sub i64 %umax, %.0.i2728                 ; 7 uses
  %min.iters.check = icmp ult i64 %i.u, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.v = sub i64 %.0.i2728, %i.a
  %i.w = add i64 %i.v, -25
  %diff.check = icmp ult i64 %i.w, 31
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check29 = icmp ult i64 %i.u, 32
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.x = and i64 %i.u, 24
  %n.vec = and i64 %i.u, -32                      ; 5 uses
  %i.y = getelementptr i8, ptr %i.s, i64 %n.vec
  %i.z = getelementptr i8, ptr %.0.i27, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %index ; 2 uses
  %next.gep30 = getelementptr i8, ptr %.0.i27, i64 %index ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !20 ; 3 uses
  %wide.load31 = load <16 x i8>, ptr %i.aa, align 1, !tbaa !20 ; 3 uses
  %i.ab = add <16 x i8> %wide.load, splat (i8 -65)
  %i.ac = add <16 x i8> %wide.load31, splat (i8 -65)
  %i.ad = icmp ult <16 x i8> %i.ab, splat (i8 26)
  %i.ae = icmp ult <16 x i8> %i.ac, splat (i8 26)
  %i.af = or disjoint <16 x i8> %wide.load, splat (i8 32)
  %i.ag = or disjoint <16 x i8> %wide.load31, splat (i8 32)
  %i.ah = select <16 x i1> %i.ad, <16 x i8> %i.af, <16 x i8> %wide.load
  %i.ai = select <16 x i1> %i.ae, <16 x i8> %i.ag, <16 x i8> %wide.load31
  %i.aj = getelementptr i8, ptr %next.gep30, i64 16
  store <16 x i8> %i.ah, ptr %next.gep30, align 1, !tbaa !20
  store <16 x i8> %i.ai, ptr %i.aj, align 1, !tbaa !20
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !35

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec33 = and i64 %i.u, -8                     ; 4 uses
  %i.al = getelementptr i8, ptr %i.s, i64 %n.vec33
  %i.am = getelementptr i8, ptr %.0.i27, i64 %n.vec33 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next38, %vec.epilog.vector.body ] ; 3 uses
  %next.gep35 = getelementptr i8, ptr %i.s, i64 %index34
  %next.gep36 = getelementptr i8, ptr %.0.i27, i64 %index34
  %wide.load37 = load <8 x i8>, ptr %next.gep35, align 1, !tbaa !20 ; 3 uses
  %i.an = add <8 x i8> %wide.load37, splat (i8 -65)
  %i.ao = icmp ult <8 x i8> %i.an, splat (i8 26)
  %i.ap = or disjoint <8 x i8> %wide.load37, splat (i8 32)
  %i.aq = select <8 x i1> %i.ao, <8 x i8> %i.ap, <8 x i8> %wide.load37
  store <8 x i8> %i.aq, ptr %next.gep36, align 1, !tbaa !20
  %index.next38 = add nuw i64 %index34, 8         ; 2 uses
  %i.ar = icmp eq i64 %index.next38, %n.vec33
end_hunk_0
