inline.NumInlined: 22
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@format_char:bb.a
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  br label %bb.l

bb.f:                                             ; preds = %bb.c
  br label %bb.l

bb.g:                                             ; preds = %bb.c
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  br label %bb.l

bb.j:                                             ; preds = %bb.c
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.k
  %.021.ph = phi i8 [ 97, %bb.k ], [ 48, %bb.j ], [ 102, %bb.d ], [ 110, %bb.e ], [ 114, %bb.f ], [ 116, %bb.g ], [ 118, %bb.h ], [ 92, %bb.i ], [ 98, %bb.c ]
  %i.h = tail call noalias dereferenceable_or_null(3) ptr @wmem_alloc(ptr noundef %0, i64 noundef 3) #26 ; 4 uses
  store i8 92, ptr %i.h, align 1
  %i.i = getelementptr i8, ptr %i.h, i64 1
  store i8 %.021.ph, ptr %i.i, align 1
  %i.j = getelementptr i8, ptr %i.h, i64 2
  store i8 0, ptr %i.j, align 1
  br label %bb.m

escape_char.exit:                                 ; preds = %bb.c
  %i.k = tail call noalias dereferenceable_or_null(5) ptr @wmem_alloc(ptr noundef %0, i64 noundef 5) #26 ; 6 uses
  store i8 92, ptr %i.k, align 1
  %i.l = getelementptr i8, ptr %i.k, i64 1
  store i8 120, ptr %i.l, align 1
  %i.m = zext i8 %1 to i32                        ; 2 uses
  %i.n = lshr i32 %i.m, 4
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr i8, ptr @hex, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1
  %i.r = getelementptr i8, ptr %i.k, i64 2
  store i8 %i.q, ptr %i.r, align 1
  %i.s = and i32 %i.m, 15
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr i8, ptr @hex, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1
  %i.w = getelementptr i8, ptr %i.k, i64 3
  store i8 %i.v, ptr %i.w, align 1
  %i.x = getelementptr i8, ptr %i.k, i64 4
  store i8 0, ptr %i.x, align 1
  br label %bb.m

bb.m:                                             ; preds = %escape_char.exit, %bb.l, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ %i.h, %bb.l ], [ %i.k, %escape_char.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable
define noundef ptr @ws_utf8_truncate(ptr nofree noundef returned %0, i64 noundef %1) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  store i8 0, ptr %i.a, align 1
  %i.b = tail call ptr @g_utf8_find_prev_char(ptr noundef %0, ptr noundef %i.a) #25 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @g_utf8_get_char_validated(ptr noundef nonnull %i.b, i64 noundef -1) #25
  %i.d = icmp eq i32 %i.c, -2
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid willreturn memory(read)
declare ptr @g_utf8_find_prev_char(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid willreturn memory(read)
declare i32 @g_utf8_get_char_validated(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite) uwtable
define void @EBCDIC_to_ASCII(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #19 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %1, 3                       ; 3 uses
  %i.a = icmp ult i32 %1, 4
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %1, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.08 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.u, %.lr.ph ] ; 6 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.b = load i8, ptr %.08, align 1
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr i8, ptr @EBCDIC_translate_ASCII, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1
  store i8 %i.e, ptr %.08, align 1
  %i.f = getelementptr i8, ptr %.08, i64 1        ; 2 uses
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr i8, ptr @EBCDIC_translate_ASCII, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  store i8 %i.j, ptr %i.f, align 1
  %i.k = getelementptr i8, ptr %.08, i64 2        ; 2 uses
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr i8, ptr @EBCDIC_translate_ASCII, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1
  store i8 %i.o, ptr %i.k, align 1
  %i.p = getelementptr i8, ptr %.08, i64 3        ; 2 uses
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr i8, ptr @EBCDIC_translate_ASCII, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1
  store i8 %i.t, ptr %i.p, align 1
  %i.u = getelementptr i8, ptr %.08, i64 4        ; 2 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !42

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.08.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.u, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod9 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod9)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.08.epil = phi ptr [ %i.z, %.lr.ph.epil ], [ %.08.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.v = load i8, ptr %.08.epil, align 1
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr i8, ptr @EBCDIC_translate_ASCII, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1
  store i8 %i.y, ptr %.08.epil, align 1
  %i.z = getelementptr i8, ptr %.08.epil, i64 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !43

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define zeroext i8 @EBCDIC_to_ASCII1(i8 noundef zeroext %0) local_unnamed_addr #7 {
bb.a:
  %i.a = zext i8 %0 to i64
  %i.b = getelementptr i8, ptr @EBCDIC_translate_ASCII, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  ret i8 %i.c
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @hex_dump_buffer(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [79 x i8], align 16               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = add i32 %3, -1                           ; 4 uses
  %.not = icmp ult i32 %i.b, 268435456
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not57 = icmp samesign ult i32 %i.b, 16777216
  br i1 %.not57, label %bb.c, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %.not58 = icmp samesign ult i32 %i.b, 1048576
  br i1 %.not58, label %bb.d, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %.not59 = icmp samesign ult i32 %i.b, 65536
  %. = select i1 %.not59, i32 4, i32 5
  br label %.lr.ph

bb.e:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %3, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.085 = phi i32 [ 8, %bb.e ], [ %., %bb.d ], [ 7, %bb.b ], [ 6, %bb.c ] ; 4 uses
  %i.d = icmp eq i32 %5, 1                        ; 2 uses
  %.not61 = icmp eq i32 %5, 2
  %i.e = icmp eq i32 %4, 1
  %xtraiter = and i32 %.085, 1
  %unroll_iter = and i32 %.085, 14
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod87 = trunc i32 %.085 to i1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.p
  %.04773 = phi i32 [ 0, %.lr.ph ], [ %.4, %bb.p ]
  %.04872 = phi i32 [ 0, %.lr.ph ], [ %i.bk, %bb.p ] ; 2 uses
  %.05171 = phi i32 [ 0, %.lr.ph ], [ %i.ci, %bb.p ] ; 3 uses
  %.05270 = phi i32 [ 0, %.lr.ph ], [ %.153, %bb.p ] ; 6 uses
  %.05569 = phi ptr [ %2, %.lr.ph ], [ %i.av, %bb.p ] ; 2 uses
  %i.f = and i32 %.05171, 15
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.preheader, label %._crit_edge77

._crit_edge77:                                    ; preds = %bb.f
  %.pre = zext i32 %.04872 to i64
  br label %bb.i

.preheader:                                       ; preds = %bb.f, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader ], [ 0, %bb.f ] ; 3 uses
  %.046 = phi i32 [ %i.p, %.preheader ], [ %.085, %bb.f ] ; 2 uses
  %niter = phi i32 [ %niter.next.1, %.preheader ], [ 0, %bb.f ]
  %i.h = shl i32 %.046, 2
  %i.i = add i32 %i.h, -4
  %i.j = lshr i32 %.05270, %i.i
  %i.k = and i32 %i.j, 15
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr i8, ptr @hex_dump_buffer.binhex, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.o = getelementptr i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.n, ptr %i.o, align 2
  %i.p = add i32 %.046, -2                        ; 3 uses
  %i.q = shl i32 %i.p, 2
  %i.r = lshr i32 %.05270, %i.q
  %i.s = and i32 %i.r, 15
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr i8, ptr @hex_dump_buffer.binhex, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 5 uses
  %i.w = getelementptr i8, ptr %i.a, i64 %indvars.iv.next
  store i8 %i.v, ptr %i.w, align 1
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader, !llvm.loop !45

.unr-lcssa:                                       ; preds = %.preheader
  br i1 %lcmp.mod.not, label %bb.g, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod87)
  %i.x = shl i32 %i.p, 2
  %i.y = add i32 %i.x, -4
  %i.z = lshr i32 %.05270, %i.y
  %i.aa = and i32 %i.z, 15
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr i8, ptr @hex_dump_buffer.binhex, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.next.1, 1
  %i.ae = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.1
  store i8 %i.ad, ptr %i.ae, align 1
  br label %bb.g

bb.g:                                             ; preds = %.unr-lcssa, %.preheader.epil.preheader
  %indvars.iv.lcssa = phi i64 [ %indvars.iv.next, %.unr-lcssa ], [ %indvars.iv.next.1, %.preheader.epil.preheader ] ; 2 uses
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next.1, %.unr-lcssa ], [ %indvars.iv.next.epil, %.preheader.epil.preheader ]
  %i.af = trunc nuw i64 %indvars.iv.lcssa to i32  ; 3 uses
  %i.ag = add nuw i64 %indvars.iv.lcssa, 2
  %6 = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.lcssa
  store i8 32, ptr %6, align 1
  %i.ah = add i32 %i.af, 3                        ; 4 uses
  %i.ai = and i64 %i.ag, 4294967295
  %i.aj = getelementptr i8, ptr %i.a, i64 %i.ai
  store i8 32, ptr %i.aj, align 1
  %i.ak = zext i32 %i.ah to i64                   ; 4 uses
  %i.al = getelementptr i8, ptr %i.a, i64 %i.ak
  %i.am = sub nsw i64 79, %i.ak
  %i.an = icmp ugt i32 %i.ah, 79
  %i.ao = select i1 %i.an, i64 0, i64 %i.am       ; 2 uses
  %i.ap = icmp ne i64 %i.ao, -1
  call void @llvm.assume(i1 %i.ap)
  %i.aq = call ptr @__memset_chk(ptr noundef %i.al, i32 noundef 32, i64 noundef 68, i64 noundef %i.ao) #24 ; 0 uses
  %i.ar = add i32 %i.af, 53                       ; 2 uses
  br i1 %i.d, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = add i32 %i.af, 54
  %i.at = zext i32 %i.ar to i64
  %i.au = getelementptr i8, ptr %i.a, i64 %i.at
  store i8 124, ptr %i.au, align 1
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge77, %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %._crit_edge77 ], [ %i.ak, %bb.g ], [ %i.ak, %bb.h ]
  %.250 = phi i32 [ %.04872, %._crit_edge77 ], [ %i.ah, %bb.g ], [ %i.ah, %bb.h ] ; 2 uses
  %.1 = phi i32 [ %.04773, %._crit_edge77 ], [ %i.ar, %bb.g ], [ %i.as, %bb.h ] ; 5 uses
  %i.av = getelementptr i8, ptr %.05569, i64 1
  %i.aw = load i8, ptr %.05569, align 1           ; 3 uses
  %i.ax = zext i8 %i.aw to i32                    ; 2 uses
  %i.ay = lshr i32 %i.ax, 4
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr i8, ptr @hex_dump_buffer.binhex, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = add i32 %.250, 1
  %i.bd = getelementptr i8, ptr %i.a, i64 %.pre-phi
  store i8 %i.bb, ptr %i.bd, align 1
  %i.be = and i32 %i.ax, 15
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr i8, ptr @hex_dump_buffer.binhex, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = zext i32 %i.bc to i64
  %i.bj = getelementptr i8, ptr %i.a, i64 %i.bi
  store i8 %i.bh, ptr %i.bj, align 1
  %i.bk = add i32 %.250, 3
  br i1 %.not61, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.e, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bl = zext i8 %i.aw to i64
  %i.bm = getelementptr i8, ptr @EBCDIC_translate_ASCII, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.045 = phi i8 [ %i.bn, %bb.k ], [ %i.aw, %bb.j ] ; 2 uses
  %i.bo = add i8 %.045, -32
  %or.cond = icmp ult i8 %i.bo, 95
  %narrow = select i1 %or.cond, i8 %.045, i8 46
  %i.bp = add i32 %.1, 1                          ; 3 uses
  %i.bq = zext i32 %.1 to i64
  %i.br = getelementptr i8, ptr %i.a, i64 %i.bq
  store i8 %narrow, ptr %i.br, align 1
  %i.bs = add nuw i32 %.05171, 1                  ; 5 uses
  %i.bt = and i32 %i.bs, 15
  %i.bu = icmp eq i32 %i.bt, 0
  %i.bv = icmp eq i32 %i.bs, %3
  %or.cond62 = or i1 %i.bv, %i.bu
  br i1 %or.cond62, label %bb.m, label %bb.p

.thread:                                          ; preds = %bb.i
  %i.bw = add nuw i32 %.05171, 1                  ; 4 uses
  %i.bx = and i32 %i.bw, 15
  %i.by = icmp eq i32 %i.bx, 0
  %i.bz = icmp eq i32 %i.bw, %3
  %or.cond6264 = or i1 %i.bz, %i.by
  br i1 %or.cond6264, label %.thread66, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %i.d, label %bb.n, label %.thread66

bb.n:                                             ; preds = %bb.m
  %i.ca = add i32 %.1, 2
  %i.cb = zext i32 %i.bp to i64
  %i.cc = getelementptr i8, ptr %i.a, i64 %i.cb
  store i8 124, ptr %i.cc, align 1
  br label %.thread66

.thread66:                                        ; preds = %.thread, %bb.n, %bb.m
  %i.cd = phi i32 [ %i.bs, %bb.n ], [ %i.bs, %bb.m ], [ %i.bw, %.thread ]
  %.3 = phi i32 [ %i.ca, %bb.n ], [ %i.bp, %bb.m ], [ %.1, %.thread ] ; 2 uses
  %i.ce = zext i32 %.3 to i64
  %i.cf = getelementptr i8, ptr %i.a, i64 %i.ce
  store i8 0, ptr %i.cf, align 1
  %i.cg = call zeroext i1 %0(ptr noundef %1, ptr noundef nonnull %i.a)
  br i1 %i.cg, label %bb.o, label %._crit_edge

bb.o:                                             ; preds = %.thread66
  %i.ch = add i32 %.05270, 16
  br label %bb.p

bb.p:                                             ; preds = %.thread, %bb.l, %bb.o
  %i.ci = phi i32 [ %i.cd, %bb.o ], [ %i.bs, %bb.l ], [ %i.bw, %.thread ] ; 2 uses
  %.153 = phi i32 [ %i.ch, %bb.o ], [ %.05270, %bb.l ], [ %.05270, %.thread ]
  %.4 = phi i32 [ %.3, %bb.o ], [ %i.bp, %bb.l ], [ %.1, %.thread ]
  %.not75 = icmp ult i32 %i.ci, %3
  br i1 %.not75, label %bb.f, label %._crit_edge, !llvm.loop !46

._crit_edge:                                      ; preds = %.thread66, %bb.p, %bb.e
  %.lcssa68 = phi i1 [ true, %bb.e ], [ true, %bb.p ], [ false, %.thread66 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i1 %.lcssa68
}

; Function Attrs: null_pointer_is_valid
declare i32 @g_strcmp0(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strbuf_get_str(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @wmem_strbuf_destroy(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid
declare ptr @localeconv() local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wmem_strbuf_truncate(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #13

; Function Attrs: null_pointer_is_valid allocsize(2)
declare ptr @wmem_realloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #13

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare i32 @g_unichar_validate(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare i32 @g_unichar_isspace(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite)
declare ptr @__memset_chk(ptr noundef writeonly, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #13

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nounwind }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { allocsize(1) }
attributes #27 = { nounwind willreturn memory(none) }
attributes #28 = { noreturn }
attributes #29 = { allocsize(2) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
end_hunk_0
