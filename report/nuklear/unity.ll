Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_str_append_text_runes:bb.a
  store i32 %i.bi, ptr %i.f, align 8, !tbaa !91
  br label %nk_str_append_text_char.exit

nk_str_append_text_char.exit:                     ; preds = %nk_utf_encode.exit, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %nk_utf_encode.exit.thread, label %bb.b, !llvm.loop !707

nk_utf_encode.exit.thread:                        ; preds = %nk_str_append_text_char.exit, %nk_utf_validate.exit.i, %.preheader, %bb.a
  %.015 = phi i32 [ 0, %bb.a ], [ %2, %.preheader ], [ %2, %nk_utf_validate.exit.i ], [ %2, %nk_str_append_text_char.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  ret i32 %.015
}

; Function Attrs: nounwind uwtable
define i32 @nk_str_append_str_runes(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.b = icmp ne ptr %0, null
  %i.c = icmp ne ptr %1, null
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %.preheader, label %.loopexit17

.preheader:                                       ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !55     ; 2 uses
  %.not18 = icmp eq i32 %i.d, 0
  br i1 %.not18, label %.loopexit17, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %nk_str_append_text_char.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %nk_str_append_text_char.exit ]
  %i.f = phi i32 [ %i.d, %.lr.ph ], [ %i.bi, %nk_str_append_text_char.exit ] ; 3 uses
  %i.g = icmp ugt i32 %i.f, 1114110
  %i.h = add i32 %i.f, -55296
  %or.cond.i.i = icmp ult i32 %i.h, 2047
  %or.cond15.i.i = or i1 %i.g, %or.cond.i.i
  %spec.select23.i = select i1 %or.cond15.i.i, i32 65533, i32 %i.f ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.c ], [ 1, %bb.b ] ; 9 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @nk_utfmax, i64 %indvars.iv.i.i
  %i.j = load i32, ptr %i.i, align 4, !tbaa !55
  %i.k = icmp ugt i32 %spec.select23.i, %i.j
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %indvars.iv.next.i = add i32 %indvars.iv.i, 1
  br i1 %i.k, label %bb.c, label %nk_utf_validate.exit.i, !llvm.loop !8

nk_utf_validate.exit.i:                           ; preds = %bb.c
  %i.l = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.m = icmp samesign ugt i64 %indvars.iv.i.i, 4
  br i1 %i.m, label %nk_str_append_text_char.exit, label %.preheader.i

.preheader.i:                                     ; preds = %nk_utf_validate.exit.i
  %.not25.i = icmp eq i64 %indvars.iv.i.i, 1
  br i1 %.not25.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.n = sext i32 %indvars.iv.i to i64            ; 4 uses
  %i.o = add nsw i64 %i.n, -1
  %xtraiter = and i64 %i.n, 3
  %i.p = and i32 %indvars.iv.i, 3
  %lcmp.mod.not = icmp eq i32 %i.p, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %indvars.iv28.i.prol = phi i64 [ %indvars.iv.next29.i.prol, %.lr.ph.i.prol ], [ %i.n, %.lr.ph.preheader.i ] ; 2 uses
  %.02226.i.prol = phi i32 [ %i.u, %.lr.ph.i.prol ], [ %spec.select23.i, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.q = trunc i32 %.02226.i.prol to i8
  %i.r = and i8 %i.q, 63
  %i.s = or disjoint i8 %i.r, -128
  %i.t = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv28.i.prol
  store i8 %i.s, ptr %i.t, align 1, !tbaa !56
  %i.u = lshr i32 %.02226.i.prol, 6               ; 3 uses
  %indvars.iv.next29.i.prol = add nsw i64 %indvars.iv28.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !708

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i ], [ %i.u, %.lr.ph.i.prol ]
  %indvars.iv28.i.unr = phi i64 [ %i.n, %.lr.ph.preheader.i ], [ %indvars.iv.next29.i.prol, %.lr.ph.i.prol ]
  %.02226.i.unr = phi i32 [ %spec.select23.i, %.lr.ph.preheader.i ], [ %i.u, %.lr.ph.i.prol ]
  %i.v = icmp ult i64 %i.o, 3
  br i1 %i.v, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv28.i = phi i64 [ %indvars.iv.next29.i.3, %.lr.ph.i ], [ %indvars.iv28.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.02226.i = phi i32 [ %i.as, %.lr.ph.i ], [ %.02226.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.w = trunc i32 %.02226.i to i8
  %i.x = and i8 %i.w, 63
  %i.y = or disjoint i8 %i.x, -128
  %i.z = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv28.i
  store i8 %i.y, ptr %i.z, align 1, !tbaa !56
  %i.aa = lshr i32 %.02226.i, 6
  %i.ab = trunc i32 %i.aa to i8
  %i.ac = and i8 %i.ab, 63
  %i.ad = or disjoint i8 %i.ac, -128
  %i.ae = getelementptr i8, ptr %i.a, i64 %indvars.iv28.i
  %i.af = getelementptr i8, ptr %i.ae, i64 -1
  store i8 %i.ad, ptr %i.af, align 1, !tbaa !56
  %i.ag = lshr i32 %.02226.i, 12
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = and i8 %i.ah, 63
  %i.aj = or disjoint i8 %i.ai, -128
  %i.ak = getelementptr i8, ptr %i.a, i64 %indvars.iv28.i
  %i.al = getelementptr i8, ptr %i.ak, i64 -2
  store i8 %i.aj, ptr %i.al, align 1, !tbaa !56
  %i.am = lshr i32 %.02226.i, 18
  %i.an = trunc i32 %i.am to i8
  %i.ao = and i8 %i.an, 63
  %i.ap = or disjoint i8 %i.ao, -128
  %i.aq = getelementptr i8, ptr %i.a, i64 %indvars.iv28.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 -3
  store i8 %i.ap, ptr %i.ar, align 1, !tbaa !56
  %i.as = lshr i32 %.02226.i, 24                  ; 2 uses
  %indvars.iv.next29.i.3 = add nsw i64 %indvars.iv28.i, -4 ; 2 uses
  %.not.i.3 = icmp eq i64 %indvars.iv.next29.i.3, 0
  br i1 %.not.i.3, label %.loopexit, label %.lr.ph.i, !llvm.loop !9

.loopexit:                                        ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.preheader.i
  %.022.lcssa.i = phi i32 [ %spec.select23.i, %.preheader.i ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.as, %.lr.ph.i ]
  %i.at = getelementptr inbounds nuw i8, ptr @nk_utfbyte, i64 %indvars.iv.i.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !56
  %i.av = getelementptr inbounds nuw i8, ptr @nk_utfmask, i64 %indvars.iv.i.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !56
  %i.ax = zext i8 %i.aw to i32
  %i.ay = xor i32 %i.ax, -1
  %i.az = and i32 %.022.lcssa.i, %i.ay
  %i.ba = trunc i32 %i.az to i8
  %i.bb = or i8 %i.au, %i.ba
  store i8 %i.bb, ptr %i.a, align 1, !tbaa !56
  %i.bc = call fastcc ptr @nk_buffer_alloc(ptr noundef nonnull %0, i32 noundef 0, i64 noundef %indvars.iv.i.i, i64 noundef 0) ; 2 uses
  %.not.i14 = icmp eq ptr %i.bc, null
  br i1 %.not.i14, label %nk_str_append_text_char.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.bd = call fastcc ptr @nk_memcopy(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.a, i64 noundef %indvars.iv.i.i) ; 0 uses
  %i.be = call i32 @nk_utf_len(ptr noundef nonnull %i.a, i32 noundef %i.l)
  %i.bf = load i32, ptr %i.e, align 8, !tbaa !91
  %i.bg = add nsw i32 %i.bf, %i.be
  store i32 %i.bg, ptr %i.e, align 8, !tbaa !91
  br label %nk_str_append_text_char.exit

nk_str_append_text_char.exit:                     ; preds = %nk_utf_validate.exit.i, %.loopexit, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !55 ; 2 uses
  %.not = icmp eq i32 %i.bi, 0
  br i1 %.not, label %.loopexit17.loopexit, label %bb.b, !llvm.loop !709

.loopexit17.loopexit:                             ; preds = %nk_str_append_text_char.exit
  %i.bj = trunc nuw i64 %indvars.iv.next to i32
  br label %.loopexit17

.loopexit17:                                      ; preds = %.loopexit17.loopexit, %.preheader, %bb.a
  %.011 = phi i32 [ 0, %bb.a ], [ 0, %.preheader ], [ %i.bj, %.loopexit17.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  ret i32 %.011
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @nk_str_insert_at_char(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne i32 %3, 0
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %nk_str_append_text_char.exit

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !93   ; 4 uses
  %i.g = icmp ult i64 %i.f, %i.d
  br i1 %i.g, label %nk_str_append_text_char.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = sext i32 %3 to i64                       ; 4 uses
  %i.i = add i64 %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load i64, ptr %i.k, align 8, !tbaa !714
  %.not = icmp ult i64 %i.i, %i.l
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i32, ptr %i.m, align 8, !tbaa !715
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %nk_str_append_text_char.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = trunc i64 %i.f to i32                    ; 4 uses
  %i.q = sub i32 %i.p, %1                         ; 6 uses
  %.not50 = icmp eq i32 %1, %i.p
  %i.r = tail call fastcc ptr @nk_buffer_alloc(ptr noundef nonnull %0, i32 noundef 0, i64 noundef %i.h, i64 noundef 0) ; 2 uses
  %.not.i = icmp eq ptr %i.r, null                ; 2 uses
  br i1 %.not50, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not.i, label %nk_str_append_text_char.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = tail call fastcc ptr @nk_memcopy(ptr noundef nonnull %i.r, ptr noundef nonnull %2, i64 noundef %i.h) ; 0 uses
  %i.t = tail call i32 @nk_utf_len(ptr noundef nonnull %2, i32 noundef %3)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !91
  %i.w = add nsw i32 %i.v, %i.t
  store i32 %i.w, ptr %i.u, align 8, !tbaa !91
  br label %nk_str_append_text_char.exit

bb.h:                                             ; preds = %bb.e
  br i1 %.not.i, label %nk_str_append_text_char.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !94   ; 3 uses
  %i.y = icmp sgt i32 %i.q, 0
  br i1 %i.y, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.i
  %i.z = shl i64 %i.f, 32
  %sext = add i64 %i.z, -4294967296
  %i.aa = ashr exact i64 %sext, 32                ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.x, i64 %i.aa ; 5 uses
  %i.ac = add i32 %1, -1
  %i.ad = add i32 %i.ac, %3
  %i.ae = add i32 %i.ad, %i.q
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.x, i64 %i.af ; 5 uses
  %i.ah = zext nneg i32 %i.q to i64               ; 5 uses
  %min.iters.check = icmp ult i32 %i.q, 8
  %i.ai = sub nsw i64 %i.af, %i.aa
  %diff.check = icmp ugt i64 %i.ai, -32
  %or.cond78 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond78, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check63 = icmp ult i32 %i.q, 32
  br i1 %min.iters.check63, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aj = and i64 %i.ah, 24
  %n.vec = and i64 %i.ah, 2147483616              ; 5 uses
  %i.ak = sub nsw i64 0, %n.vec                   ; 2 uses
  %i.al = getelementptr i8, ptr %i.ag, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.ab, i64 %i.ak
  %i.an = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = sub i64 0, %index                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.ao ; 2 uses
  %next.gep64 = getelementptr i8, ptr %i.ab, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep64, i64 -15
  %i.aq = getelementptr i8, ptr %next.gep64, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ap, align 1, !tbaa !56
  %wide.load65 = load <16 x i8>, ptr %i.aq, align 1, !tbaa !56
  %i.ar = getelementptr i8, ptr %next.gep, i64 -15
  %i.as = getelementptr i8, ptr %next.gep, i64 -31
  store <16 x i8> %wide.load, ptr %i.ar, align 1, !tbaa !56
  store <16 x i8> %wide.load65, ptr %i.as, align 1, !tbaa !56
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !710

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ah
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !83

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec68 = and i64 %i.ah, 2147483640            ; 4 uses
  %i.au = sub nsw i64 0, %n.vec68                 ; 2 uses
  %i.av = getelementptr i8, ptr %i.ag, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.ab, i64 %i.au
  %i.ax = trunc nuw nsw i64 %n.vec68 to i32
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index69 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next73, %vec.epilog.vector.body ] ; 2 uses
  %i.ay = sub i64 0, %index69                     ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.ag, i64 %i.ay
  %next.gep71 = getelementptr i8, ptr %i.ab, i64 %i.ay
  %i.az = getelementptr i8, ptr %next.gep71, i64 -7
  %wide.load72 = load <8 x i8>, ptr %i.az, align 1, !tbaa !56
  %i.ba = getelementptr i8, ptr %next.gep70, i64 -7
  store <8 x i8> %wide.load72, ptr %i.ba, align 1, !tbaa !56
  %index.next73 = add nuw i64 %index69, 8         ; 2 uses
  %i.bb = icmp eq i64 %index.next73, %n.vec68
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !711

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n74 = icmp eq i64 %n.vec68, %i.ah
  br i1 %cmp.n74, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.054.ph = phi ptr [ %i.ag, %iter.check ], [ %i.al, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ] ; 2 uses
  %.04153.ph = phi ptr [ %i.ab, %iter.check ], [ %i.am, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ] ; 2 uses
  %.04252.ph = phi i32 [ 0, %iter.check ], [ %i.an, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ] ; 4 uses
  %4 = add i32 %.04252.ph, %1
  %i.bc = sub i32 %i.p, %4
  %xtraiter = and i32 %i.bc, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.054.prol = phi ptr [ %i.bf, %.lr.ph.prol ], [ %.054.ph, %.lr.ph.preheader ] ; 2 uses
  %.04153.prol = phi ptr [ %i.bd, %.lr.ph.prol ], [ %.04153.ph, %.lr.ph.preheader ] ; 2 uses
  %.04252.prol = phi i32 [ %i.bg, %.lr.ph.prol ], [ %.04252.ph, %.lr.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bd = getelementptr inbounds i8, ptr %.04153.prol, i64 -1 ; 2 uses
  %i.be = load i8, ptr %.04153.prol, align 1, !tbaa !56
  %i.bf = getelementptr inbounds i8, ptr %.054.prol, i64 -1 ; 2 uses
  store i8 %i.be, ptr %.054.prol, align 1, !tbaa !56
  %i.bg = add nuw nsw i32 %.04252.prol, 1         ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !712

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.054.unr = phi ptr [ %.054.ph, %.lr.ph.preheader ], [ %i.bf, %.lr.ph.prol ]
  %.04153.unr = phi ptr [ %.04153.ph, %.lr.ph.preheader ], [ %i.bd, %.lr.ph.prol ]
  %.04252.unr = phi i32 [ %.04252.ph, %.lr.ph.preheader ], [ %i.bg, %.lr.ph.prol ]
  %i.bh = sub i32 %.04252.ph, %i.p
  %i.bi = add i32 %i.bh, %1
  %i.bj = icmp ugt i32 %i.bi, -8
  br i1 %i.bj, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.054 = phi ptr [ %i.ch, %.lr.ph ], [ %.054.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.04153 = phi ptr [ %i.cf, %.lr.ph ], [ %.04153.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.04252 = phi i32 [ %i.ci, %.lr.ph ], [ %.04252.unr, %.lr.ph.prol.loopexit ]
  %i.bk = getelementptr inbounds i8, ptr %.04153, i64 -1
  %i.bl = load i8, ptr %.04153, align 1, !tbaa !56
  %i.bm = getelementptr inbounds i8, ptr %.054, i64 -1
  store i8 %i.bl, ptr %.054, align 1, !tbaa !56
  %i.bn = getelementptr inbounds i8, ptr %.04153, i64 -2
  %i.bo = load i8, ptr %i.bk, align 1, !tbaa !56
  %i.bp = getelementptr inbounds i8, ptr %.054, i64 -2
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !56
  %i.bq = getelementptr inbounds i8, ptr %.04153, i64 -3
  %i.br = load i8, ptr %i.bn, align 1, !tbaa !56
  %i.bs = getelementptr inbounds i8, ptr %.054, i64 -3
  store i8 %i.br, ptr %i.bp, align 1, !tbaa !56
  %i.bt = getelementptr inbounds i8, ptr %.04153, i64 -4
  %i.bu = load i8, ptr %i.bq, align 1, !tbaa !56
  %i.bv = getelementptr inbounds i8, ptr %.054, i64 -4
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !56
  %i.bw = getelementptr inbounds i8, ptr %.04153, i64 -5
  %i.bx = load i8, ptr %i.bt, align 1, !tbaa !56
  %i.by = getelementptr inbounds i8, ptr %.054, i64 -5
  store i8 %i.bx, ptr %i.bv, align 1, !tbaa !56
  %i.bz = getelementptr inbounds i8, ptr %.04153, i64 -6
  %i.ca = load i8, ptr %i.bw, align 1, !tbaa !56
  %i.cb = getelementptr inbounds i8, ptr %.054, i64 -6
  store i8 %i.ca, ptr %i.by, align 1, !tbaa !56
  %i.cc = getelementptr inbounds i8, ptr %.04153, i64 -7
  %i.cd = load i8, ptr %i.bz, align 1, !tbaa !56
  %i.ce = getelementptr inbounds i8, ptr %.054, i64 -7
  store i8 %i.cd, ptr %i.cb, align 1, !tbaa !56
  %i.cf = getelementptr inbounds i8, ptr %.04153, i64 -8
  %i.cg = load i8, ptr %i.cc, align 1, !tbaa !56
  %i.ch = getelementptr inbounds i8, ptr %.054, i64 -8
  store i8 %i.cg, ptr %i.ce, align 1, !tbaa !56
  %i.ci = add nuw nsw i32 %.04252, 8              ; 2 uses
  %exitcond.not.7 = icmp eq i32 %i.ci, %i.q
  br i1 %exitcond.not.7, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !713

._crit_edge.loopexit:                             ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !94
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.i
  %i.cj = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.x, %bb.i ]
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 %i.d
  %i.cl = tail call fastcc ptr @nk_memcopy(ptr noundef %i.ck, ptr noundef nonnull %2, i64 noundef %i.h) ; 0 uses
  %i.cm = load ptr, ptr %i.j, align 8, !tbaa !94
  %i.cn = load i64, ptr %i.e, align 8, !tbaa !93
  %i.co = trunc i64 %i.cn to i32
  %i.cp = tail call i32 @nk_utf_len(ptr noundef %i.cm, i32 noundef %i.co)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.cp, ptr %i.cq, align 8, !tbaa !91
  br label %nk_str_append_text_char.exit

nk_str_append_text_char.exit:                     ; preds = %bb.g, %bb.f, %bb.h, %bb.d, %bb.a, %bb.b, %._crit_edge
  %.043 = phi i32 [ 0, %bb.h ], [ 0, %bb.a ], [ 1, %._crit_edge ], [ 0, %bb.d ], [ 0, %bb.b ], [ 1, %bb.f ], [ 1, %bb.g ]
  ret i32 %.043
}

; Function Attrs: nounwind uwtable
define i32 @nk_str_insert_at_rune(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #17 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  %i.c = icmp ne ptr %0, null
  %i.d = icmp ne ptr %2, null
  %or.cond = and i1 %i.c, %i.d
  %i.e = icmp ne i32 %3, 0
  %or.cond3 = and i1 %or.cond, %i.e
  br i1 %or.cond3, label %bb.b, label %nk_str_append_text_char.exit

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @nk_str_at_rune(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !91
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = sext i32 %3 to i64                       ; 2 uses
  %i.j = call fastcc ptr @nk_buffer_alloc(ptr noundef nonnull %0, i32 noundef 0, i64 noundef %i.i, i64 noundef 0) ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %nk_str_append_text_char.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call fastcc ptr @nk_memcopy(ptr noundef nonnull %i.j, ptr noundef nonnull %2, i64 noundef %i.i) ; 0 uses
  %i.l = call i32 @nk_utf_len(ptr noundef nonnull %2, i32 noundef %3)
  %i.m = load i32, ptr %i.g, align 8, !tbaa !91
  %i.n = add nsw i32 %i.m, %i.l
  store i32 %i.n, ptr %i.g, align 8, !tbaa !91
  br label %nk_str_append_text_char.exit

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = load i64, ptr %i.o, align 8, !tbaa !93
  %.not7.i = icmp eq i64 %i.p, 0
  br i1 %.not7.i, label %nk_str_get_const.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !94
  %i.s = ptrtoint ptr %i.r to i64
  br label %nk_str_get_const.exit

nk_str_get_const.exit:                            ; preds = %bb.e, %bb.f
  %.0.i25 = phi i64 [ %i.s, %bb.f ], [ 0, %bb.e ]
  %.not23 = icmp eq ptr %i.f, null
  br i1 %.not23, label %nk_str_append_text_char.exit, label %bb.g

bb.g:                                             ; preds = %nk_str_get_const.exit
  %i.t = ptrtoint ptr %i.f to i64
  %i.u = sub i64 %i.t, %.0.i25
  %i.v = trunc i64 %i.u to i32
  %i.w = call i32 @nk_str_insert_at_char(ptr noundef nonnull %0, i32 noundef %i.v, ptr noundef nonnull %2, i32 noundef %3)
  br label %nk_str_append_text_char.exit

nk_str_append_text_char.exit:                     ; preds = %bb.d, %bb.c, %nk_str_get_const.exit, %bb.a, %bb.g
  %.0 = phi i32 [ %i.w, %bb.g ], [ 0, %bb.a ], [ 0, %nk_str_get_const.exit ], [ %3, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @nk_str_at_rune(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %3, null
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %1, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %2, align 4, !tbaa !55
  store i32 0, ptr %3, align 4, !tbaa !55
  br label %bb.ab

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !94
  %.fr80 = freeze ptr %i.f                        ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load i64, ptr %i.g, align 8, !tbaa !93   ; 2 uses
  %i.i = trunc i64 %i.h to i32                    ; 4 uses
  %i.j = icmp eq ptr %.fr80, null
  %.not.i = icmp eq i32 %i.i, 0
  %or.cond28.i = or i1 %i.j, %.not.i
  br i1 %or.cond28.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 65533, ptr %2, align 4, !tbaa !55
  %i.k = load i8, ptr %.fr80, align 1, !tbaa !56  ; 7 uses
  %i.l = icmp slt i8 %i.k, -64
  br i1 %i.l, label %.lr.ph.split.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = icmp slt i8 %i.k, 0
  br i1 %i.m, label %bb.g, label %._crit_edge.thread82.i

._crit_edge.thread82.i:                           ; preds = %bb.f
  %i.n = zext nneg i8 %i.k to i32
  br label %bb.m

bb.g:                                             ; preds = %bb.f
end_hunk_0
