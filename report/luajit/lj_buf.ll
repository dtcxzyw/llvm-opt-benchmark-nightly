Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_buf?download=true
inline.NumInlined: 1
begin_hunk_0_@lj_buf_putchar:bb.a
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
  %.0.i1923 = ptrtoaddr ptr %.0.i19 to i64        ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 23 ; 6 uses
  %i.u = add nuw i64 %.0.i1923, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.r, i64 %i.u)
  %i.v = sub i64 %umax, %.0.i1923                 ; 7 uses
  %min.iters.check = icmp ult i64 %i.v, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.w = ptrtoaddr ptr %i.p to i64
  %i.x = ptrtoaddr ptr %.0.i19 to i64             ; 3 uses
  %i.y = add nuw i64 %i.x, 1
  %i.z = tail call i64 @llvm.umax.i64(i64 %i.w, i64 %i.y) ; 2 uses
  %i.aa = sub i64 %i.z, %i.x
  %i.ab = getelementptr i8, ptr %.0.i19, i64 %i.aa
  %i.ac = add i64 %i.q, %i.x
  %i.ad = add i64 %i.ac, 24
  %i.ae = sub i64 %i.ad, %i.z
  %i.af = getelementptr i8, ptr %1, i64 %i.ae
  %i.ag = getelementptr i8, ptr %1, i64 %i.q
  %i.ah = getelementptr i8, ptr %i.ag, i64 24
  %bound0 = icmp ult ptr %.0.i19, %i.ah
  %bound1 = icmp ult ptr %i.af, %i.ab
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check24 = icmp ult i64 %i.v, 32
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %i.v, 24
  %n.vec = and i64 %i.v, -32                      ; 5 uses
  %i.aj = sub i64 0, %n.vec
  %i.ak = getelementptr i8, ptr %i.t, i64 %i.aj
  %i.al = getelementptr i8, ptr %.0.i19, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = sub i64 0, %index
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.am ; 2 uses
  %next.gep25 = getelementptr i8, ptr %.0.i19, i64 %index ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep, i64 -15
  %i.ao = getelementptr i8, ptr %next.gep, i64 -31
  %wide.load = load <16 x i8>, ptr %i.an, align 1, !tbaa !20, !alias.scope !56
  %wide.load26 = load <16 x i8>, ptr %i.ao, align 1, !tbaa !20, !alias.scope !56
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse27 = shufflevector <16 x i8> %wide.load26, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ap = getelementptr i8, ptr %next.gep25, i64 16
  store <16 x i8> %reverse, ptr %next.gep25, align 1, !tbaa !20, !alias.scope !57, !noalias !56
  store <16 x i8> %reverse27, ptr %i.ap, align 1, !tbaa !20, !alias.scope !57, !noalias !56
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !35

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec29 = and i64 %i.v, -8                     ; 4 uses
  %i.ar = sub i64 0, %n.vec29
  %i.as = getelementptr i8, ptr %i.t, i64 %i.ar
  %i.at = getelementptr i8, ptr %.0.i19, i64 %n.vec29 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index30 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next35, %vec.epilog.vector.body ] ; 3 uses
  %i.au = sub i64 0, %index30
  %next.gep31 = getelementptr i8, ptr %i.t, i64 %i.au
  %next.gep32 = getelementptr i8, ptr %.0.i19, i64 %index30
  %i.av = getelementptr i8, ptr %next.gep31, i64 -7
  %wide.load33 = load <8 x i8>, ptr %i.av, align 1, !tbaa !20, !alias.scope !56
  %reverse34 = shufflevector <8 x i8> %wide.load33, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse34, ptr %next.gep32, align 1, !tbaa !20, !alias.scope !57, !noalias !56
  %index.next35 = add nuw i64 %index30, 8         ; 2 uses
  %i.aw = icmp eq i64 %index.next35, %n.vec29
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !54

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n36 = icmp eq i64 %i.v, %n.vec29
  br i1 %cmp.n36, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.ph = phi ptr [ %i.t, %iter.check ], [ %i.t, %vector.memcheck ], [ %i.ak, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ]
  %.01314.ph = phi ptr [ %.0.i19, %iter.check ], [ %.0.i19, %vector.memcheck ], [ %i.al, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.015 = phi ptr [ %i.ax, %.lr.ph ], [ %.015.ph, %.lr.ph.preheader ] ; 2 uses
  %.01314 = phi ptr [ %i.az, %.lr.ph ], [ %.01314.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %.015, i64 -1
  %i.ay = load i8, ptr %.015, align 1, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %.01314, i64 1 ; 3 uses
  store i8 %i.ay, ptr %.01314, align 1, !tbaa !20
  %i.ba = icmp ult ptr %i.az, %i.p
  br i1 %i.ba, label %.lr.ph, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %lj_buf_more.exit
  %.013.lcssa = phi ptr [ %i.e, %lj_buf_more.exit ], [ %i.at, %vec.epilog.middle.block ], [ %i.al, %middle.block ], [ %i.az, %.lr.ph ]
  store ptr %.013.lcssa, ptr %0, align 8, !tbaa !18
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @lj_buf_putstr_lower(ptr nofree noundef returned captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %2 = ptrtoaddr ptr %1 to i64
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
  %i.l = zext i32 %i.b to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  br label %iter.check

lj_buf_more.exit:                                 ; preds = %bb.a
  %i.n = zext i32 %i.b to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.n
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %lj_buf_more.exit.thread, %lj_buf_more.exit
  %i.p = phi ptr [ %i.m, %lj_buf_more.exit.thread ], [ %i.o, %lj_buf_more.exit ] ; 2 uses
  %.0.i27 = phi ptr [ %i.k, %lj_buf_more.exit.thread ], [ %i.e, %lj_buf_more.exit ] ; 7 uses
  %i.q = ptrtoaddr ptr %i.p to i64
  %.0.i2728 = ptrtoaddr ptr %.0.i27 to i64        ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.s = add nuw i64 %.0.i2728, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %i.s)
  %i.t = sub i64 %umax, %.0.i2728                 ; 7 uses
  %min.iters.check = icmp ult i64 %i.t, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.u = sub i64 %.0.i2728, %2
  %i.v = add i64 %i.u, -25
  %diff.check = icmp ult i64 %i.v, 31
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check29 = icmp ult i64 %i.t, 32
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.w = and i64 %i.t, 24
  %n.vec = and i64 %i.t, -32                      ; 5 uses
  %i.x = getelementptr i8, ptr %i.r, i64 %n.vec
  %i.y = getelementptr i8, ptr %.0.i27, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %index ; 2 uses
  %next.gep30 = getelementptr i8, ptr %.0.i27, i64 %index ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !20 ; 3 uses
  %wide.load31 = load <16 x i8>, ptr %i.z, align 1, !tbaa !20 ; 3 uses
  %i.aa = add <16 x i8> %wide.load, splat (i8 -65)
  %i.ab = add <16 x i8> %wide.load31, splat (i8 -65)
  %i.ac = icmp ult <16 x i8> %i.aa, splat (i8 26)
  %i.ad = icmp ult <16 x i8> %i.ab, splat (i8 26)
  %i.ae = or disjoint <16 x i8> %wide.load, splat (i8 32)
  %i.af = or disjoint <16 x i8> %wide.load31, splat (i8 32)
  %i.ag = select <16 x i1> %i.ac, <16 x i8> %i.ae, <16 x i8> %wide.load
  %i.ah = select <16 x i1> %i.ad, <16 x i8> %i.af, <16 x i8> %wide.load31
  %i.ai = getelementptr i8, ptr %next.gep30, i64 16
  store <16 x i8> %i.ag, ptr %next.gep30, align 1, !tbaa !20
  store <16 x i8> %i.ah, ptr %i.ai, align 1, !tbaa !20
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.w, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !35

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec33 = and i64 %i.t, -8                     ; 4 uses
  %i.ak = getelementptr i8, ptr %i.r, i64 %n.vec33
  %i.al = getelementptr i8, ptr %.0.i27, i64 %n.vec33 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next38, %vec.epilog.vector.body ] ; 3 uses
  %next.gep35 = getelementptr i8, ptr %i.r, i64 %index34
  %next.gep36 = getelementptr i8, ptr %.0.i27, i64 %index34
  %wide.load37 = load <8 x i8>, ptr %next.gep35, align 1, !tbaa !20 ; 3 uses
  %i.am = add <8 x i8> %wide.load37, splat (i8 -65)
  %i.an = icmp ult <8 x i8> %i.am, splat (i8 26)
  %i.ao = or disjoint <8 x i8> %wide.load37, splat (i8 32)
  %i.ap = select <8 x i1> %i.an, <8 x i8> %i.ao, <8 x i8> %wide.load37
  store <8 x i8> %i.ap, ptr %next.gep36, align 1, !tbaa !20
  %index.next38 = add nuw i64 %index34, 8         ; 2 uses
  %i.aq = icmp eq i64 %index.next38, %n.vec33
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !59

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n39 = icmp eq i64 %i.t, %n.vec33
  br i1 %cmp.n39, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01923.ph = phi ptr [ %i.r, %iter.check ], [ %i.r, %vector.memcheck ], [ %i.x, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ]
  %.02022.ph = phi ptr [ %.0.i27, %iter.check ], [ %.0.i27, %vector.memcheck ], [ %i.y, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01923 = phi ptr [ %i.av, %.lr.ph ], [ %.01923.ph, %.lr.ph.preheader ] ; 2 uses
  %.02022 = phi ptr [ %i.au, %.lr.ph ], [ %.02022.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ar = load i8, ptr %.01923, align 1, !tbaa !20 ; 3 uses
  %i.as = add i8 %i.ar, -65
  %or.cond = icmp ult i8 %i.as, 26
  %i.at = or disjoint i8 %i.ar, 32
  %spec.select = select i1 %or.cond, i8 %i.at, i8 %i.ar
  store i8 %spec.select, ptr %.02022, align 1, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %.02022, i64 1 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.01923, i64 1
  %i.aw = icmp ult ptr %i.au, %i.p
  br i1 %i.aw, label %.lr.ph, label %._crit_edge, !llvm.loop !60

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %lj_buf_more.exit
  %.020.lcssa = phi ptr [ %i.e, %lj_buf_more.exit ], [ %i.al, %vec.epilog.middle.block ], [ %i.y, %middle.block ], [ %i.au, %.lr.ph ]
  store ptr %.020.lcssa, ptr %0, align 8, !tbaa !18
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @lj_buf_putstr_upper(ptr nofree noundef returned captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %2 = ptrtoaddr ptr %1 to i64
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
  %i.l = zext i32 %i.b to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  br label %iter.check

lj_buf_more.exit:                                 ; preds = %bb.a
  %i.n = zext i32 %i.b to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.n
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %lj_buf_more.exit.thread, %lj_buf_more.exit
  %i.p = phi ptr [ %i.m, %lj_buf_more.exit.thread ], [ %i.o, %lj_buf_more.exit ] ; 2 uses
  %.0.i27 = phi ptr [ %i.k, %lj_buf_more.exit.thread ], [ %i.e, %lj_buf_more.exit ] ; 7 uses
  %i.q = ptrtoaddr ptr %i.p to i64
  %.0.i2728 = ptrtoaddr ptr %.0.i27 to i64        ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.s = add nuw i64 %.0.i2728, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %i.s)
  %i.t = sub i64 %umax, %.0.i2728                 ; 7 uses
  %min.iters.check = icmp ult i64 %i.t, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.u = sub i64 %.0.i2728, %2
  %i.v = add i64 %i.u, -25
  %diff.check = icmp ult i64 %i.v, 31
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check29 = icmp ult i64 %i.t, 32
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.w = and i64 %i.t, 24
  %n.vec = and i64 %i.t, -32                      ; 5 uses
  %i.x = getelementptr i8, ptr %i.r, i64 %n.vec
  %i.y = getelementptr i8, ptr %.0.i27, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %index ; 2 uses
  %next.gep30 = getelementptr i8, ptr %.0.i27, i64 %index ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !20 ; 3 uses
  %wide.load31 = load <16 x i8>, ptr %i.z, align 1, !tbaa !20 ; 3 uses
  %i.aa = add <16 x i8> %wide.load, splat (i8 -97)
  %i.ab = add <16 x i8> %wide.load31, splat (i8 -97)
  %i.ac = icmp ult <16 x i8> %i.aa, splat (i8 26)
  %i.ad = icmp ult <16 x i8> %i.ab, splat (i8 26)
  %i.ae = add nsw <16 x i8> %wide.load, splat (i8 -32)
  %i.af = add nsw <16 x i8> %wide.load31, splat (i8 -32)
  %i.ag = select <16 x i1> %i.ac, <16 x i8> %i.ae, <16 x i8> %wide.load
  %i.ah = select <16 x i1> %i.ad, <16 x i8> %i.af, <16 x i8> %wide.load31
  %i.ai = getelementptr i8, ptr %next.gep30, i64 16
  store <16 x i8> %i.ag, ptr %next.gep30, align 1, !tbaa !20
  store <16 x i8> %i.ah, ptr %i.ai, align 1, !tbaa !20
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.w, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !35

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec33 = and i64 %i.t, -8                     ; 4 uses
  %i.ak = getelementptr i8, ptr %i.r, i64 %n.vec33
  %i.al = getelementptr i8, ptr %.0.i27, i64 %n.vec33 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next38, %vec.epilog.vector.body ] ; 3 uses
  %next.gep35 = getelementptr i8, ptr %i.r, i64 %index34
  %next.gep36 = getelementptr i8, ptr %.0.i27, i64 %index34
  %wide.load37 = load <8 x i8>, ptr %next.gep35, align 1, !tbaa !20 ; 3 uses
  %i.am = add <8 x i8> %wide.load37, splat (i8 -97)
  %i.an = icmp ult <8 x i8> %i.am, splat (i8 26)
  %i.ao = add nsw <8 x i8> %wide.load37, splat (i8 -32)
  %i.ap = select <8 x i1> %i.an, <8 x i8> %i.ao, <8 x i8> %wide.load37
  store <8 x i8> %i.ap, ptr %next.gep36, align 1, !tbaa !20
  %index.next38 = add nuw i64 %index34, 8         ; 2 uses
  %i.aq = icmp eq i64 %index.next38, %n.vec33
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !62

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n39 = icmp eq i64 %i.t, %n.vec33
  br i1 %cmp.n39, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01923.ph = phi ptr [ %i.r, %iter.check ], [ %i.r, %vector.memcheck ], [ %i.x, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ]
  %.02022.ph = phi ptr [ %.0.i27, %iter.check ], [ %.0.i27, %vector.memcheck ], [ %i.y, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01923 = phi ptr [ %i.av, %.lr.ph ], [ %.01923.ph, %.lr.ph.preheader ] ; 2 uses
  %.02022 = phi ptr [ %i.au, %.lr.ph ], [ %.02022.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ar = load i8, ptr %.01923, align 1, !tbaa !20 ; 3 uses
  %i.as = add i8 %i.ar, -97
  %or.cond = icmp ult i8 %i.as, 26
  %i.at = add nsw i8 %i.ar, -32
  %spec.select = select i1 %or.cond, i8 %i.at, i8 %i.ar
  store i8 %spec.select, ptr %.02022, align 1, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %.02022, i64 1 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.01923, i64 1
  %i.aw = icmp ult ptr %i.au, %i.p
  br i1 %i.aw, label %.lr.ph, label %._crit_edge, !llvm.loop !63

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %lj_buf_more.exit
  %.020.lcssa = phi ptr [ %i.e, %lj_buf_more.exit ], [ %i.al, %vec.epilog.middle.block ], [ %i.y, %middle.block ], [ %i.au, %.lr.ph ]
  store ptr %.020.lcssa, ptr %0, align 8, !tbaa !18
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @lj_buf_putstr_rep(ptr nofree noundef returned captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !32   ; 3 uses
  %i.d = icmp sgt i32 %2, 0
  %i.e = icmp ne i32 %i.c, 0
  %or.cond = select i1 %i.d, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %2 to i64
  %i.g = zext i32 %i.c to i64                     ; 3 uses
  %i.h = mul nuw nsw i64 %i.g, %i.f               ; 2 uses
  %i.i = icmp samesign ugt i64 %i.h, 2147483392
  br i1 %i.i, label %bb.c, label %bb.d, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !15
  %i.l = and i64 %i.k, -8
  %i.m = inttoptr i64 %i.l to ptr
  tail call void @lj_err_mem(ptr noundef %i.m) #8
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.n = trunc nuw nsw i64 %i.h to i32            ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.q = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = trunc i64 %i.t to i32
  %i.v = icmp ugt i32 %i.n, %i.u
  br i1 %i.v, label %bb.e, label %lj_buf_more.exit, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.w = tail call ptr @lj_buf_more2(ptr noundef nonnull %0, i32 noundef %i.n)
  br label %lj_buf_more.exit

lj_buf_more.exit:                                 ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.w, %bb.e ], [ %i.q, %bb.d ] ; 3 uses
  %i.x = icmp eq i32 %i.c, 1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  br i1 %i.x, label %.loopexit.loopexit, label %bb.f

.loopexit.loopexit:                               ; preds = %lj_buf_more.exit
  %i.z = load i8, ptr %i.y, align 4, !tbaa !20
  %i.aa = zext nneg i32 %2 to i64                 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0.i, i8 %i.z, i64 %i.aa, i1 false), !tbaa !20
  %scevgep = getelementptr i8, ptr %.0.i, i64 %i.aa
  br label %.loopexit

bb.f:                                             ; preds = %lj_buf_more.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.g
  %i.ac = add i64 %i.a, %i.g
  %i.ad = add i64 %i.ac, 24
  %i.ae = add i64 %i.a, 25
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %i.ae)
  %i.af = add i64 %umax, -24
  %i.ag = sub i64 %i.af, %i.a                     ; 7 uses
  %min.iters.check = icmp ult i64 %i.ag, 8
  %invariant.op = sub i64 -25, %i.a
  %min.iters.check44 = icmp ult i64 %i.ag, 32
  %i.ah = and i64 %i.ag, 24
  %n.vec = and i64 %i.ag, -32                     ; 5 uses
  %i.ai = getelementptr i8, ptr %i.y, i64 %n.vec
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.ah, 0
  %n.vec48 = and i64 %i.ag, -8                    ; 4 uses
  %i.aj = getelementptr i8, ptr %i.y, i64 %n.vec48
  %cmp.n54 = icmp eq i64 %i.ag, %n.vec48
  br label %iter.check

iter.check:                                       ; preds = %.loopexit57, %bb.f
  %.127 = phi i32 [ %2, %bb.f ], [ %i.au, %.loopexit57 ] ; 2 uses
  %.1 = phi ptr [ %.0.i, %bb.f ], [ %.lcssa, %.loopexit57 ] ; 6 uses
  %.143 = ptrtoaddr ptr %.1 to i64
  %.reass = add i64 %.143, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  %or.cond61 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond61, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check44, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ak = getelementptr i8, ptr %.1, i64 %n.vec   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.1, i64 %index ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.y, i64 %index ; 2 uses
  %i.al = getelementptr i8, ptr %next.gep45, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep45, align 1, !tbaa !20
  %wide.load46 = load <16 x i8>, ptr %i.al, align 1, !tbaa !20
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !20
  store <16 x i8> %wide.load46, ptr %i.am, align 1, !tbaa !20
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !64
end_hunk_0
