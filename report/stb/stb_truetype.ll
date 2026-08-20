inline.NumInlined: 388
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@stbtt__dict_get:bb.a
  br i1 %i.bh, label %.thread38, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = load ptr, ptr %0, align 8, !tbaa !13
  br label %.thread38

.thread38:                                        ; preds = %bb.s, %bb.r, %bb.p, %bb.q
  %.sroa.0.2 = phi ptr [ %i.be, %bb.q ], [ null, %bb.p ], [ null, %bb.r ], [ %i.bi, %bb.s ]
  %.sroa.3.2 = phi i64 [ %i.bg, %bb.q ], [ 0, %bb.p ], [ 0, %bb.r ], [ 0, %bb.s ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.2, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.3.2, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbtt__dict_get_ints(ptr nofree noundef captures(none) initializes((8, 12)) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %struct.stbtt__buf, align 8         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.a = tail call { ptr, i64 } @stbtt__dict_get(ptr noundef %0, i32 noundef %1) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  store ptr %i.b, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.a, 1        ; 3 uses
  store i64 %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.f = icmp sgt i32 %2, 0
  %i.g = trunc i64 %i.d to i32
  %i.h = lshr i64 %i.d, 32
  %i.i = trunc nuw i64 %i.h to i32
  %i.j = icmp slt i32 %i.g, %i.i
  %i.k = select i1 %i.f, i1 %i.j, i1 false
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.l = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.m = call i32 @stbtt__cff_int(ptr noundef nonnull %4)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store i32 %i.m, ptr %i.n, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.o = icmp samesign ult i64 %indvars.iv.next, %i.l
  %i.p = load i32, ptr %i.c, align 8
  %i.q = load i32, ptr %i.e, align 4
  %i.r = icmp slt i32 %i.p, %i.q
  %i.s = select i1 %i.o, i1 %i.r, i1 false
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 65536) i32 @stbtt__cff_index_count(ptr nofree noundef captures(none) initializes((8, 12)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12   ; 3 uses
  %i.c = tail call i32 @llvm.smin.i32(i32 %i.b, i32 0) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 %i.c, ptr %i.d, align 8, !tbaa !8
  %.not.i.i = icmp sgt i32 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %stbtt__buf_get8.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !13
  store i32 1, ptr %i.d, align 8, !tbaa !8
  %i.f = zext nneg i32 %i.c to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = zext i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 8
  br label %stbtt__buf_get8.exit.i

stbtt__buf_get8.exit.i:                           ; preds = %bb.b, %bb.a
  %i.k = phi i32 [ 1, %bb.b ], [ %i.c, %bb.a ]    ; 3 uses
  %.0.i.i = phi i32 [ %i.j, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.not.i.i.1 = icmp slt i32 %i.k, %i.b
  br i1 %.not.i.i.1, label %bb.c, label %stbtt__buf_get8.exit.i.1

bb.c:                                             ; preds = %stbtt__buf_get8.exit.i
  %i.l = load ptr, ptr %0, align 8, !tbaa !13
  %i.m = add nsw i32 %i.k, 1
  store i32 %i.m, ptr %i.d, align 8, !tbaa !8
  %i.n = sext i32 %i.k to i64
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !14
  %i.q = zext i8 %i.p to i32
  %i.r = or disjoint i32 %.0.i.i, %i.q
  br label %stbtt__buf_get8.exit.i.1

stbtt__buf_get8.exit.i.1:                         ; preds = %bb.c, %stbtt__buf_get8.exit.i
  %.0.i.i.1 = phi i32 [ %i.r, %bb.c ], [ %.0.i.i, %stbtt__buf_get8.exit.i ]
  ret i32 %.0.i.i.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define { ptr, i64 } @stbtt__cff_index_get(ptr %0, i64 %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %.sroa.18.8.extract.shift = lshr i64 %1, 32
  %.sroa.18.8.extract.trunc = trunc nuw i64 %.sroa.18.8.extract.shift to i32 ; 14 uses
  %i.a = tail call i32 @llvm.smin.i32(i32 %.sroa.18.8.extract.trunc, i32 0) ; 2 uses
  %.not.i.i = icmp sgt i32 %.sroa.18.8.extract.trunc, 0
  br i1 %.not.i.i, label %bb.b, label %stbtt__buf_get8.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !14
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 8
  br label %stbtt__buf_get8.exit.i

stbtt__buf_get8.exit.i:                           ; preds = %bb.b, %bb.a
  %.sroa.6.1 = phi i32 [ 1, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.not.i.i.1 = icmp slt i32 %.sroa.6.1, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i.1, label %bb.c, label %stbtt__buf_get8.exit.i.1

bb.c:                                             ; preds = %stbtt__buf_get8.exit.i
  %i.g = add nsw i32 %.sroa.6.1, 1
  %i.h = sext i32 %.sroa.6.1 to i64
  %i.i = getelementptr inbounds i8, ptr %0, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !14
  %i.k = zext i8 %i.j to i32
  %i.l = or disjoint i32 %.0.i.i, %i.k
  br label %stbtt__buf_get8.exit.i.1

stbtt__buf_get8.exit.i.1:                         ; preds = %bb.c, %stbtt__buf_get8.exit.i
  %.sroa.6.1.1 = phi i32 [ %i.g, %bb.c ], [ %.sroa.6.1, %stbtt__buf_get8.exit.i ] ; 3 uses
  %.0.i.i.1 = phi i32 [ %i.l, %bb.c ], [ %.0.i.i, %stbtt__buf_get8.exit.i ]
  %.not.i = icmp slt i32 %.sroa.6.1.1, %.sroa.18.8.extract.trunc
  br i1 %.not.i, label %stbtt__buf_get8.exit, label %stbtt__buf_get.exit26

stbtt__buf_get8.exit:                             ; preds = %stbtt__buf_get8.exit.i.1
  %i.m = sext i32 %.sroa.6.1.1 to i64
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !14    ; 4 uses
  %i.p = zext i8 %i.o to i32                      ; 9 uses
  %.not = icmp eq i8 %i.o, 0
  br i1 %.not, label %stbtt__buf_get.exit26, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %stbtt__buf_get8.exit
  %i.q = add nsw i32 %.sroa.6.1.1, 1
  %i.r = mul nsw i32 %2, %i.p
  %i.s = add nsw i32 %i.r, %i.q                   ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  %i.u = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %.sroa.18.8.extract.trunc)
  %..i.i = select i1 %i.t, i32 %.sroa.18.8.extract.trunc, i32 %i.u ; 4 uses
  %i.v = add nsw i32 %i.p, -1                     ; 2 uses
  %xtraiter = and i32 %i.p, 1
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.p, 254
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %stbtt__buf_get8.exit.i13.1, %.lr.ph.i.preheader.new
  %.sroa.6.3 = phi i32 [ %..i.i, %.lr.ph.i.preheader.new ], [ %.sroa.6.4.1, %stbtt__buf_get8.exit.i13.1 ]
  %i.x = phi i32 [ %..i.i, %.lr.ph.i.preheader.new ], [ %i.an, %stbtt__buf_get8.exit.i13.1 ] ; 4 uses
  %.056.i11 = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %.0.i.i14.1, %stbtt__buf_get8.exit.i13.1 ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %stbtt__buf_get8.exit.i13.1 ]
  %i.y = shl i32 %.056.i11, 8                     ; 2 uses
  %.not.i.i12 = icmp slt i32 %i.x, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i12, label %bb.d, label %stbtt__buf_get8.exit.i13

bb.d:                                             ; preds = %.lr.ph.i
  %i.z = add nsw i32 %i.x, 1                      ; 2 uses
  %i.aa = sext i32 %i.x to i64
  %i.ab = getelementptr inbounds i8, ptr %0, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !14
  %i.ad = zext i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.y, %i.ad
  br label %stbtt__buf_get8.exit.i13

stbtt__buf_get8.exit.i13:                         ; preds = %bb.d, %.lr.ph.i
  %.sroa.6.4 = phi i32 [ %i.z, %bb.d ], [ %.sroa.6.3, %.lr.ph.i ]
  %i.af = phi i32 [ %i.z, %bb.d ], [ %i.x, %.lr.ph.i ] ; 4 uses
  %.0.i.i14 = phi i32 [ %i.ae, %bb.d ], [ %i.y, %.lr.ph.i ]
  %i.ag = shl i32 %.0.i.i14, 8                    ; 2 uses
  %.not.i.i12.1 = icmp slt i32 %i.af, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i12.1, label %bb.e, label %stbtt__buf_get8.exit.i13.1

bb.e:                                             ; preds = %stbtt__buf_get8.exit.i13
  %i.ah = add nsw i32 %i.af, 1                    ; 2 uses
  %i.ai = sext i32 %i.af to i64
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !14
  %i.al = zext i8 %i.ak to i32
  %i.am = or disjoint i32 %i.ag, %i.al
  br label %stbtt__buf_get8.exit.i13.1

stbtt__buf_get8.exit.i13.1:                       ; preds = %bb.e, %stbtt__buf_get8.exit.i13
  %.sroa.6.4.1 = phi i32 [ %i.ah, %bb.e ], [ %.sroa.6.4, %stbtt__buf_get8.exit.i13 ] ; 3 uses
  %i.an = phi i32 [ %i.ah, %bb.e ], [ %i.af, %stbtt__buf_get8.exit.i13 ] ; 2 uses
  %.0.i.i14.1 = phi i32 [ %i.am, %bb.e ], [ %i.ag, %stbtt__buf_get8.exit.i13 ] ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i18.preheader.unr-lcssa, label %.lr.ph.i, !llvm.loop !15

.lr.ph.i18.preheader.unr-lcssa:                   ; preds = %stbtt__buf_get8.exit.i13.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i18.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.i18.preheader.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.6.3.epil.init = phi i32 [ %..i.i, %.lr.ph.i.preheader ], [ %.sroa.6.4.1, %.lr.ph.i18.preheader.unr-lcssa ]
  %.epil.init = phi i32 [ %..i.i, %.lr.ph.i.preheader ], [ %i.an, %.lr.ph.i18.preheader.unr-lcssa ] ; 3 uses
  %.056.i11.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %.0.i.i14.1, %.lr.ph.i18.preheader.unr-lcssa ]
  %lcmp.mod56 = trunc i8 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod56)
  %i.ao = shl i32 %.056.i11.epil.init, 8          ; 2 uses
  %.not.i.i12.epil = icmp slt i32 %.epil.init, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i12.epil, label %bb.f, label %.lr.ph.i18.preheader

bb.f:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.ap = add nsw i32 %.epil.init, 1
  %i.aq = sext i32 %.epil.init to i64
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !14
  %i.at = zext i8 %i.as to i32
  %i.au = or disjoint i32 %i.ao, %i.at
  br label %.lr.ph.i18.preheader

.lr.ph.i18.preheader:                             ; preds = %.lr.ph.i.epil.preheader, %bb.f, %.lr.ph.i18.preheader.unr-lcssa
  %.sroa.6.4.lcssa = phi i32 [ %.sroa.6.4.1, %.lr.ph.i18.preheader.unr-lcssa ], [ %i.ap, %bb.f ], [ %.sroa.6.3.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.0.i.i14.lcssa = phi i32 [ %.0.i.i14.1, %.lr.ph.i18.preheader.unr-lcssa ], [ %i.au, %bb.f ], [ %i.ao, %.lr.ph.i.epil.preheader ] ; 3 uses
  %xtraiter57 = and i32 %i.p, 1
  %i.av = icmp eq i32 %i.v, 0
  br i1 %i.av, label %.lr.ph.i18.epil.preheader, label %.lr.ph.i18.preheader.new

.lr.ph.i18.preheader.new:                         ; preds = %.lr.ph.i18.preheader
  %unroll_iter63 = and i32 %i.p, 254
  br label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %stbtt__buf_get8.exit.i23.1, %.lr.ph.i18.preheader.new
  %i.aw = phi i32 [ %.sroa.6.4.lcssa, %.lr.ph.i18.preheader.new ], [ %i.bm, %stbtt__buf_get8.exit.i23.1 ] ; 4 uses
  %.056.i21 = phi i32 [ 0, %.lr.ph.i18.preheader.new ], [ %.0.i.i24.1, %stbtt__buf_get8.exit.i23.1 ]
  %niter64 = phi i32 [ 0, %.lr.ph.i18.preheader.new ], [ %niter64.next.1, %stbtt__buf_get8.exit.i23.1 ]
  %i.ax = shl i32 %.056.i21, 8                    ; 2 uses
  %.not.i.i22 = icmp slt i32 %i.aw, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i22, label %bb.g, label %stbtt__buf_get8.exit.i23

bb.g:                                             ; preds = %.lr.ph.i18
  %i.ay = add nsw i32 %i.aw, 1
  %i.az = sext i32 %i.aw to i64
  %i.ba = getelementptr inbounds i8, ptr %0, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !14
  %i.bc = zext i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.ax, %i.bc
  br label %stbtt__buf_get8.exit.i23

stbtt__buf_get8.exit.i23:                         ; preds = %bb.g, %.lr.ph.i18
  %i.be = phi i32 [ %i.ay, %bb.g ], [ %i.aw, %.lr.ph.i18 ] ; 4 uses
  %.0.i.i24 = phi i32 [ %i.bd, %bb.g ], [ %i.ax, %.lr.ph.i18 ]
  %i.bf = shl i32 %.0.i.i24, 8                    ; 2 uses
  %.not.i.i22.1 = icmp slt i32 %i.be, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i22.1, label %bb.h, label %stbtt__buf_get8.exit.i23.1

bb.h:                                             ; preds = %stbtt__buf_get8.exit.i23
  %i.bg = add nsw i32 %i.be, 1
  %i.bh = sext i32 %i.be to i64
  %i.bi = getelementptr inbounds i8, ptr %0, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !14
  %i.bk = zext i8 %i.bj to i32
  %i.bl = or disjoint i32 %i.bf, %i.bk
  br label %stbtt__buf_get8.exit.i23.1

stbtt__buf_get8.exit.i23.1:                       ; preds = %bb.h, %stbtt__buf_get8.exit.i23
  %i.bm = phi i32 [ %i.bg, %bb.h ], [ %i.be, %stbtt__buf_get8.exit.i23 ] ; 2 uses
  %.0.i.i24.1 = phi i32 [ %i.bl, %bb.h ], [ %i.bf, %stbtt__buf_get8.exit.i23 ] ; 3 uses
  %niter64.next.1 = add i32 %niter64, 2           ; 2 uses
  %niter64.ncmp.1 = icmp eq i32 %niter64.next.1, %unroll_iter63
  br i1 %niter64.ncmp.1, label %stbtt__buf_get.exit26.loopexit.unr-lcssa, label %.lr.ph.i18, !llvm.loop !15

stbtt__buf_get.exit26.loopexit.unr-lcssa:         ; preds = %stbtt__buf_get8.exit.i23.1
  %lcmp.mod60.not = icmp eq i32 %xtraiter57, 0
  br i1 %lcmp.mod60.not, label %stbtt__buf_get.exit26, label %.lr.ph.i18.epil.preheader

.lr.ph.i18.epil.preheader:                        ; preds = %stbtt__buf_get.exit26.loopexit.unr-lcssa, %.lr.ph.i18.preheader
  %.epil.init59 = phi i32 [ %.sroa.6.4.lcssa, %.lr.ph.i18.preheader ], [ %i.bm, %stbtt__buf_get.exit26.loopexit.unr-lcssa ] ; 2 uses
  %.056.i21.epil.init = phi i32 [ 0, %.lr.ph.i18.preheader ], [ %.0.i.i24.1, %stbtt__buf_get.exit26.loopexit.unr-lcssa ]
  %lcmp.mod62 = trunc i8 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.bn = shl i32 %.056.i21.epil.init, 8          ; 2 uses
  %.not.i.i22.epil = icmp slt i32 %.epil.init59, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i22.epil, label %bb.i, label %stbtt__buf_get.exit26

bb.i:                                             ; preds = %.lr.ph.i18.epil.preheader
  %i.bo = sext i32 %.epil.init59 to i64
  %i.bp = getelementptr inbounds i8, ptr %0, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !14
  %i.br = zext i8 %i.bq to i32
  %i.bs = or disjoint i32 %i.bn, %i.br
  br label %stbtt__buf_get.exit26

stbtt__buf_get.exit26:                            ; preds = %stbtt__buf_get.exit26.loopexit.unr-lcssa, %bb.i, %.lr.ph.i18.epil.preheader, %stbtt__buf_get8.exit.i.1, %stbtt__buf_get8.exit
  %.0.i53 = phi i32 [ 0, %stbtt__buf_get8.exit ], [ 0, %stbtt__buf_get8.exit.i.1 ], [ %i.p, %.lr.ph.i18.epil.preheader ], [ %i.p, %bb.i ], [ %i.p, %stbtt__buf_get.exit26.loopexit.unr-lcssa ]
  %.05.lcssa.i40 = phi i32 [ 0, %stbtt__buf_get8.exit ], [ 0, %stbtt__buf_get8.exit.i.1 ], [ %.0.i.i14.lcssa, %.lr.ph.i18.epil.preheader ], [ %.0.i.i14.lcssa, %bb.i ], [ %.0.i.i14.lcssa, %stbtt__buf_get.exit26.loopexit.unr-lcssa ] ; 2 uses
  %.05.lcssa.i17 = phi i32 [ 0, %stbtt__buf_get8.exit ], [ 0, %stbtt__buf_get8.exit.i.1 ], [ %.0.i.i24.1, %stbtt__buf_get.exit26.loopexit.unr-lcssa ], [ %i.bs, %bb.i ], [ %i.bn, %.lr.ph.i18.epil.preheader ]
  %i.bt = add nuw nsw i32 %.0.i.i.1, 1
  %i.bu = mul nuw nsw i32 %.0.i53, %i.bt
  %i.bv = add nuw nsw i32 %i.bu, 2
  %i.bw = add nsw i32 %i.bv, %.05.lcssa.i40       ; 4 uses
  %i.bx = sub nsw i32 %.05.lcssa.i17, %.05.lcssa.i40 ; 3 uses
  %i.by = or i32 %i.bx, %i.bw
  %or.cond.not.i = icmp sgt i32 %i.by, -1
  br i1 %or.cond.not.i, label %bb.j, label %stbtt__buf_range.exit

bb.j:                                             ; preds = %stbtt__buf_get.exit26
  %i.bz = icmp sgt i32 %i.bw, %.sroa.18.8.extract.trunc
  %i.ca = sub nsw i32 %.sroa.18.8.extract.trunc, %i.bw
  %i.cb = icmp sgt i32 %i.bx, %i.ca
  %or.cond.i = select i1 %i.bz, i1 true, i1 %i.cb
  br i1 %or.cond.i, label %stbtt__buf_range.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = zext nneg i32 %i.bw to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %i.cc
  %i.ce = zext i32 %i.bx to i64
  %i.cf = shl nuw i64 %i.ce, 32
  br label %stbtt__buf_range.exit

stbtt__buf_range.exit:                            ; preds = %stbtt__buf_get.exit26, %bb.j, %bb.k
  %.sroa.0.0.i = phi ptr [ null, %stbtt__buf_get.exit26 ], [ null, %bb.j ], [ %i.cd, %bb.k ]
  %.sroa.5.0.i = phi i64 [ 0, %stbtt__buf_get.exit26 ], [ 0, %bb.j ], [ %i.cf, %bb.k ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.5.0.i, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i16 @ttUSHORT(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !14
  %i.b = zext i8 %i.a to i16
  %i.c = shl nuw i16 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14
  %i.f = zext i8 %i.e to i16
  %i.g = or disjoint i16 %i.c, %i.f
  ret i16 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define signext i16 @ttSHORT(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !14
  %i.b = zext i8 %i.a to i16
  %i.c = shl nuw i16 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14
  %i.f = zext i8 %i.e to i16
  %i.g = or disjoint i16 %i.c, %i.f
  ret i16 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @ttULONG(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 1
  %i.b = tail call i32 @llvm.bswap.i32(i32 %i.a)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @ttLONG(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 1
  %i.b = tail call i32 @llvm.bswap.i32(i32 %i.a)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @stbtt__isfont(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !14
  switch i8 %i.a, label %.thread26 [
    i8 49, label %bb.b
    i8 116, label %bb.e
    i8 79, label %bb.h
    i8 0, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !14
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %.thread26

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i8, ptr %i.e, align 1, !tbaa !14
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %.thread26

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.i = load i8, ptr %i.h, align 1, !tbaa !14
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.p, label %.thread26

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  switch i8 %i.l, label %.thread26 [
    i8 121, label %bb.f
    i8 114, label %bb.n
  ]

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !14
  %i.o = icmp eq i8 %i.n, 112
  br i1 %i.o, label %bb.g, label %.thread26

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  %i.r = icmp eq i8 %i.q, 49
  br i1 %i.r, label %bb.p, label %.thread26

bb.h:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !14
  %i.u = icmp eq i8 %i.t, 84
  br i1 %i.u, label %bb.i, label %.thread26

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !14
  %i.x = icmp eq i8 %i.w, 84
  br i1 %i.x, label %bb.j, label %.thread26

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !14
  %i.aa = icmp eq i8 %i.z, 79
  br i1 %i.aa, label %bb.p, label %.thread26

bb.k:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !14
  %i.ad = icmp eq i8 %i.ac, 1
  br i1 %i.ad, label %bb.l, label %.thread26

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !14
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.m, label %.thread26

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !14
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.p, label %.thread26

bb.n:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !14
  %i.am = icmp eq i8 %i.al, 117
  br i1 %i.am, label %bb.o, label %.thread26

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !14
  %i.ap = icmp eq i8 %i.ao, 101
  br i1 %i.ap, label %bb.p, label %.thread26

.thread26:                                        ; preds = %bb.e, %bb.g, %bb.f, %bb.a, %bb.j, %bb.i, %bb.h, %bb.k, %bb.l, %bb.m, %bb.b, %bb.c, %bb.d, %bb.o, %bb.n
  br label %bb.p
end_hunk_0
begin_hunk_1_@stbtt_InitFont_internal:bb.a
  %i.ln = icmp slt i32 %i.lm, 0
  %i.lo = tail call i32 @llvm.smin.i32(i32 %i.lm, i32 %i.ia)
  %..i.i.i206 = select i1 %i.ln, i32 %i.ia, i32 %i.lo ; 3 uses
  %.not22.i207 = icmp eq i32 %.0.i.i205, 0
  br i1 %.not22.i207, label %stbtt__buf_get.exit20.i216, label %.lr.ph.i.i208.preheader

.lr.ph.i.i208.preheader:                          ; preds = %stbtt__buf_get8.exit.i204
  %i.lp = load ptr, ptr %7, align 8               ; 3 uses
  %xtraiter588 = and i32 %.0.i.i205, 1
  %i.lq = icmp eq i32 %.0.i.i205, 1
  br i1 %i.lq, label %.lr.ph.i.i208.epil.preheader, label %.lr.ph.i.i208.preheader.new

.lr.ph.i.i208.preheader.new:                      ; preds = %.lr.ph.i.i208.preheader
  %unroll_iter595 = and i32 %.0.i.i205, 254
  br label %.lr.ph.i.i208

.lr.ph.i.i208:                                    ; preds = %stbtt__buf_get8.exit.i17.i212.1, %.lr.ph.i.i208.preheader.new
  %i.lr = phi i32 [ %..i.i.i206, %.lr.ph.i.i208.preheader.new ], [ %i.mh, %stbtt__buf_get8.exit.i17.i212.1 ] ; 4 uses
  %.056.i15.i210 = phi i32 [ 0, %.lr.ph.i.i208.preheader.new ], [ %.0.i.i18.i213.1, %stbtt__buf_get8.exit.i17.i212.1 ]
  %niter596 = phi i32 [ 0, %.lr.ph.i.i208.preheader.new ], [ %niter596.next.1, %stbtt__buf_get8.exit.i17.i212.1 ]
  %i.ls = shl i32 %.056.i15.i210, 8               ; 2 uses
  %.not.i.i16.i211 = icmp slt i32 %i.lr, %i.ia
  br i1 %.not.i.i16.i211, label %bb.bs, label %stbtt__buf_get8.exit.i17.i212

bb.bs:                                            ; preds = %.lr.ph.i.i208
  %i.lt = add nsw i32 %i.lr, 1
  %i.lu = sext i32 %i.lr to i64
  %i.lv = getelementptr inbounds i8, ptr %i.lp, i64 %i.lu
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !14
  %i.lx = zext i8 %i.lw to i32
  %i.ly = or disjoint i32 %i.ls, %i.lx
  br label %stbtt__buf_get8.exit.i17.i212

stbtt__buf_get8.exit.i17.i212:                    ; preds = %bb.bs, %.lr.ph.i.i208
  %i.lz = phi i32 [ %i.lt, %bb.bs ], [ %i.lr, %.lr.ph.i.i208 ] ; 4 uses
  %.0.i.i18.i213 = phi i32 [ %i.ly, %bb.bs ], [ %i.ls, %.lr.ph.i.i208 ]
  %i.ma = shl i32 %.0.i.i18.i213, 8               ; 2 uses
  %.not.i.i16.i211.1 = icmp slt i32 %i.lz, %i.ia
  br i1 %.not.i.i16.i211.1, label %bb.bt, label %stbtt__buf_get8.exit.i17.i212.1

bb.bt:                                            ; preds = %stbtt__buf_get8.exit.i17.i212
  %i.mb = add nsw i32 %i.lz, 1
  %i.mc = sext i32 %i.lz to i64
  %i.md = getelementptr inbounds i8, ptr %i.lp, i64 %i.mc
  %i.me = load i8, ptr %i.md, align 1, !tbaa !14
  %i.mf = zext i8 %i.me to i32
  %i.mg = or disjoint i32 %i.ma, %i.mf
  br label %stbtt__buf_get8.exit.i17.i212.1

stbtt__buf_get8.exit.i17.i212.1:                  ; preds = %bb.bt, %stbtt__buf_get8.exit.i17.i212
  %i.mh = phi i32 [ %i.mb, %bb.bt ], [ %i.lz, %stbtt__buf_get8.exit.i17.i212 ] ; 3 uses
  %.0.i.i18.i213.1 = phi i32 [ %i.mg, %bb.bt ], [ %i.ma, %stbtt__buf_get8.exit.i17.i212 ] ; 3 uses
  %niter596.next.1 = add nuw nsw i32 %niter596, 2 ; 2 uses
  %niter596.ncmp.1 = icmp eq i32 %niter596.next.1, %unroll_iter595
  br i1 %niter596.ncmp.1, label %stbtt__buf_get.exit20.loopexit.i215.unr-lcssa, label %.lr.ph.i.i208, !llvm.loop !15

stbtt__buf_get.exit20.loopexit.i215.unr-lcssa:    ; preds = %stbtt__buf_get8.exit.i17.i212.1
  %lcmp.mod591.not = icmp eq i32 %xtraiter588, 0
  br i1 %lcmp.mod591.not, label %stbtt__buf_get.exit20.loopexit.i215, label %.lr.ph.i.i208.epil.preheader

.lr.ph.i.i208.epil.preheader:                     ; preds = %stbtt__buf_get.exit20.loopexit.i215.unr-lcssa, %.lr.ph.i.i208.preheader
  %.epil.init590 = phi i32 [ %..i.i.i206, %.lr.ph.i.i208.preheader ], [ %i.mh, %stbtt__buf_get.exit20.loopexit.i215.unr-lcssa ] ; 4 uses
  %.056.i15.i210.epil.init = phi i32 [ 0, %.lr.ph.i.i208.preheader ], [ %.0.i.i18.i213.1, %stbtt__buf_get.exit20.loopexit.i215.unr-lcssa ]
  %lcmp.mod594 = trunc i32 %.0.i.i205 to i1
  tail call void @llvm.assume(i1 %lcmp.mod594)
  %i.mi = shl i32 %.056.i15.i210.epil.init, 8     ; 2 uses
  %.not.i.i16.i211.epil = icmp slt i32 %.epil.init590, %i.ia
  br i1 %.not.i.i16.i211.epil, label %bb.bu, label %stbtt__buf_get.exit20.loopexit.i215

bb.bu:                                            ; preds = %.lr.ph.i.i208.epil.preheader
  %i.mj = add nsw i32 %.epil.init590, 1
  %i.mk = sext i32 %.epil.init590 to i64
  %i.ml = getelementptr inbounds i8, ptr %i.lp, i64 %i.mk
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !14
  %i.mn = zext i8 %i.mm to i32
  %i.mo = or disjoint i32 %i.mi, %i.mn
  br label %stbtt__buf_get.exit20.loopexit.i215

stbtt__buf_get.exit20.loopexit.i215:              ; preds = %.lr.ph.i.i208.epil.preheader, %bb.bu, %stbtt__buf_get.exit20.loopexit.i215.unr-lcssa
  %.lcssa565 = phi i32 [ %i.mh, %stbtt__buf_get.exit20.loopexit.i215.unr-lcssa ], [ %i.mj, %bb.bu ], [ %.epil.init590, %.lr.ph.i.i208.epil.preheader ]
  %.0.i.i18.i213.lcssa = phi i32 [ %.0.i.i18.i213.1, %stbtt__buf_get.exit20.loopexit.i215.unr-lcssa ], [ %i.mo, %bb.bu ], [ %i.mi, %.lr.ph.i.i208.epil.preheader ]
  %i.mp = add i32 %.0.i.i18.i213.lcssa, -1
  br label %stbtt__buf_get.exit20.i216

stbtt__buf_get.exit20.i216:                       ; preds = %stbtt__buf_get.exit20.loopexit.i215, %stbtt__buf_get8.exit.i204
  %i.mq = phi i32 [ %..i.i.i206, %stbtt__buf_get8.exit.i204 ], [ %.lcssa565, %stbtt__buf_get.exit20.loopexit.i215 ]
  %.05.lcssa.i.i217 = phi i32 [ -1, %stbtt__buf_get8.exit.i204 ], [ %i.mp, %stbtt__buf_get.exit20.loopexit.i215 ]
  %i.mr = add nsw i32 %.05.lcssa.i.i217, %i.mq    ; 2 uses
  %i.ms = icmp slt i32 %i.mr, 0
  %i.mt = tail call i32 @llvm.smin.i32(i32 %i.mr, i32 %i.ia)
  %..i.i21.i218 = select i1 %i.ms, i32 %i.ia, i32 %i.mt ; 2 uses
  store i32 %..i.i21.i218, ptr %i.hw, align 8, !tbaa !8
  br label %bb.bv

bb.bv:                                            ; preds = %stbtt__buf_get.exit20.i216, %stbtt__buf_get8.exit.i.1.i200
  %i.mu = phi i32 [ %..i.i21.i218, %stbtt__buf_get.exit20.i216 ], [ %i.le, %stbtt__buf_get8.exit.i.1.i200 ] ; 6 uses
  %i.mv = sub nsw i32 %i.mu, %i.ko                ; 17 uses
  %i.mw = or i32 %i.mv, %i.ko
  %or.cond.not.i.i219 = icmp slt i32 %i.mw, 0
  %i.mx = icmp sgt i32 %i.mu, %i.ia
  %or.cond.i220 = or i1 %i.mx, %or.cond.not.i.i219
  br i1 %or.cond.i220, label %stbtt__buf_get.exit26.i, label %stbtt__cff_get_index.exit225

stbtt__cff_get_index.exit225:                     ; preds = %bb.bv
  %i.my = load ptr, ptr %7, align 8, !tbaa !13
  %i.mz = zext nneg i32 %i.ko to i64
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.mz ; 14 uses
  %i.nb = tail call i32 @llvm.smin.i32(i32 %i.mv, i32 0) ; 2 uses
  %.not.i.i.i226 = icmp sgt i32 %i.mv, 0
  br i1 %.not.i.i.i226, label %bb.bw, label %stbtt__buf_get8.exit.i.i227

bb.bw:                                            ; preds = %stbtt__cff_get_index.exit225
  %i.nc = zext nneg i32 %i.nb to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.nc
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !14
  %i.nf = zext i8 %i.ne to i32
  %i.ng = shl nuw nsw i32 %i.nf, 8
  br label %stbtt__buf_get8.exit.i.i227

stbtt__buf_get8.exit.i.i227:                      ; preds = %bb.bw, %stbtt__cff_get_index.exit225
  %.sroa.6.1.i = phi i32 [ 1, %bb.bw ], [ %i.nb, %stbtt__cff_get_index.exit225 ] ; 4 uses
  %.0.i.i.i228 = phi i32 [ %i.ng, %bb.bw ], [ 0, %stbtt__cff_get_index.exit225 ] ; 2 uses
  %.not.i.i.1.i229 = icmp slt i32 %.sroa.6.1.i, %i.mv
  br i1 %.not.i.i.1.i229, label %bb.bx, label %stbtt__buf_get8.exit.i.1.i230

bb.bx:                                            ; preds = %stbtt__buf_get8.exit.i.i227
  %i.nh = add nsw i32 %.sroa.6.1.i, 1
  %i.ni = sext i32 %.sroa.6.1.i to i64
  %i.nj = getelementptr inbounds i8, ptr %i.na, i64 %i.ni
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !14
  %i.nl = zext i8 %i.nk to i32
  %i.nm = or disjoint i32 %.0.i.i.i228, %i.nl
  br label %stbtt__buf_get8.exit.i.1.i230

stbtt__buf_get8.exit.i.1.i230:                    ; preds = %bb.bx, %stbtt__buf_get8.exit.i.i227
  %.sroa.6.1.1.i = phi i32 [ %i.nh, %bb.bx ], [ %.sroa.6.1.i, %stbtt__buf_get8.exit.i.i227 ] ; 4 uses
  %.0.i.i.1.i231 = phi i32 [ %i.nm, %bb.bx ], [ %.0.i.i.i228, %stbtt__buf_get8.exit.i.i227 ] ; 5 uses
  %.not.i.i232 = icmp slt i32 %.sroa.6.1.1.i, %i.mv
  br i1 %.not.i.i232, label %stbtt__buf_get8.exit.i238, label %stbtt__buf_get.exit26.i

stbtt__buf_get8.exit.i238:                        ; preds = %stbtt__buf_get8.exit.i.1.i230
  %i.nn = sext i32 %.sroa.6.1.1.i to i64
  %i.no = getelementptr inbounds i8, ptr %i.na, i64 %i.nn
  %i.np = load i8, ptr %i.no, align 1, !tbaa !14  ; 4 uses
  %i.nq = zext i8 %i.np to i32                    ; 8 uses
  %.not.i239 = icmp eq i8 %i.np, 0
  br i1 %.not.i239, label %stbtt__buf_get.exit26.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %stbtt__buf_get8.exit.i238
  %i.nr = add nsw i32 %.sroa.6.1.1.i, 1
  %i.ns = icmp slt i32 %.sroa.6.1.1.i, -1
  %..i.i.i240 = select i1 %i.ns, i32 %i.mv, i32 %i.nr ; 4 uses
  %i.nt = add nsw i32 %i.nq, -1                   ; 2 uses
  %xtraiter597 = and i32 %i.nq, 1
  %i.nu = icmp eq i32 %i.nt, 0
  br i1 %i.nu, label %.lr.ph.i.i241.epil.preheader, label %.lr.ph.i.preheader.i.new

.lr.ph.i.preheader.i.new:                         ; preds = %.lr.ph.i.preheader.i
  %unroll_iter604 = and i32 %i.nq, 254
  br label %.lr.ph.i.i241

.lr.ph.i.i241:                                    ; preds = %stbtt__buf_get8.exit.i13.i.1, %.lr.ph.i.preheader.i.new
  %.sroa.6.3.i = phi i32 [ %..i.i.i240, %.lr.ph.i.preheader.i.new ], [ %.sroa.6.4.i.1, %stbtt__buf_get8.exit.i13.i.1 ]
  %i.nv = phi i32 [ %..i.i.i240, %.lr.ph.i.preheader.i.new ], [ %i.ol, %stbtt__buf_get8.exit.i13.i.1 ] ; 4 uses
  %.056.i11.i = phi i32 [ 0, %.lr.ph.i.preheader.i.new ], [ %.0.i.i14.i.1, %stbtt__buf_get8.exit.i13.i.1 ]
  %niter605 = phi i32 [ 0, %.lr.ph.i.preheader.i.new ], [ %niter605.next.1, %stbtt__buf_get8.exit.i13.i.1 ]
  %i.nw = shl i32 %.056.i11.i, 8                  ; 2 uses
  %.not.i.i12.i = icmp slt i32 %i.nv, %i.mv
  br i1 %.not.i.i12.i, label %bb.by, label %stbtt__buf_get8.exit.i13.i

bb.by:                                            ; preds = %.lr.ph.i.i241
  %i.nx = add nsw i32 %i.nv, 1                    ; 2 uses
  %i.ny = sext i32 %i.nv to i64
  %i.nz = getelementptr inbounds i8, ptr %i.na, i64 %i.ny
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !14
  %i.ob = zext i8 %i.oa to i32
  %i.oc = or disjoint i32 %i.nw, %i.ob
  br label %stbtt__buf_get8.exit.i13.i

stbtt__buf_get8.exit.i13.i:                       ; preds = %bb.by, %.lr.ph.i.i241
  %.sroa.6.4.i = phi i32 [ %i.nx, %bb.by ], [ %.sroa.6.3.i, %.lr.ph.i.i241 ]
  %i.od = phi i32 [ %i.nx, %bb.by ], [ %i.nv, %.lr.ph.i.i241 ] ; 4 uses
  %.0.i.i14.i = phi i32 [ %i.oc, %bb.by ], [ %i.nw, %.lr.ph.i.i241 ]
  %i.oe = shl i32 %.0.i.i14.i, 8                  ; 2 uses
  %.not.i.i12.i.1 = icmp slt i32 %i.od, %i.mv
  br i1 %.not.i.i12.i.1, label %bb.bz, label %stbtt__buf_get8.exit.i13.i.1

bb.bz:                                            ; preds = %stbtt__buf_get8.exit.i13.i
  %i.of = add nsw i32 %i.od, 1                    ; 2 uses
  %i.og = sext i32 %i.od to i64
  %i.oh = getelementptr inbounds i8, ptr %i.na, i64 %i.og
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !14
  %i.oj = zext i8 %i.oi to i32
  %i.ok = or disjoint i32 %i.oe, %i.oj
  br label %stbtt__buf_get8.exit.i13.i.1

stbtt__buf_get8.exit.i13.i.1:                     ; preds = %bb.bz, %stbtt__buf_get8.exit.i13.i
  %.sroa.6.4.i.1 = phi i32 [ %i.of, %bb.bz ], [ %.sroa.6.4.i, %stbtt__buf_get8.exit.i13.i ] ; 3 uses
  %i.ol = phi i32 [ %i.of, %bb.bz ], [ %i.od, %stbtt__buf_get8.exit.i13.i ] ; 2 uses
  %.0.i.i14.i.1 = phi i32 [ %i.ok, %bb.bz ], [ %i.oe, %stbtt__buf_get8.exit.i13.i ] ; 3 uses
  %niter605.next.1 = add i32 %niter605, 2         ; 2 uses
  %niter605.ncmp.1 = icmp eq i32 %niter605.next.1, %unroll_iter604
  br i1 %niter605.ncmp.1, label %.lr.ph.i18.i.preheader.unr-lcssa, label %.lr.ph.i.i241, !llvm.loop !15

.lr.ph.i18.i.preheader.unr-lcssa:                 ; preds = %stbtt__buf_get8.exit.i13.i.1
  %lcmp.mod600.not = icmp eq i32 %xtraiter597, 0
  br i1 %lcmp.mod600.not, label %.lr.ph.i18.i.preheader, label %.lr.ph.i.i241.epil.preheader

.lr.ph.i.i241.epil.preheader:                     ; preds = %.lr.ph.i18.i.preheader.unr-lcssa, %.lr.ph.i.preheader.i
  %.sroa.6.3.i.epil.init = phi i32 [ %..i.i.i240, %.lr.ph.i.preheader.i ], [ %.sroa.6.4.i.1, %.lr.ph.i18.i.preheader.unr-lcssa ]
  %.epil.init599 = phi i32 [ %..i.i.i240, %.lr.ph.i.preheader.i ], [ %i.ol, %.lr.ph.i18.i.preheader.unr-lcssa ] ; 3 uses
  %.056.i11.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader.i ], [ %.0.i.i14.i.1, %.lr.ph.i18.i.preheader.unr-lcssa ]
  %lcmp.mod603 = trunc i8 %i.np to i1
  tail call void @llvm.assume(i1 %lcmp.mod603)
  %i.om = shl i32 %.056.i11.i.epil.init, 8        ; 2 uses
  %.not.i.i12.i.epil = icmp slt i32 %.epil.init599, %i.mv
  br i1 %.not.i.i12.i.epil, label %bb.ca, label %.lr.ph.i18.i.preheader

bb.ca:                                            ; preds = %.lr.ph.i.i241.epil.preheader
  %i.on = add nsw i32 %.epil.init599, 1
  %i.oo = sext i32 %.epil.init599 to i64
  %i.op = getelementptr inbounds i8, ptr %i.na, i64 %i.oo
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !14
  %i.or = zext i8 %i.oq to i32
  %i.os = or disjoint i32 %i.om, %i.or
  br label %.lr.ph.i18.i.preheader

.lr.ph.i18.i.preheader:                           ; preds = %.lr.ph.i.i241.epil.preheader, %bb.ca, %.lr.ph.i18.i.preheader.unr-lcssa
  %.sroa.6.4.i.lcssa = phi i32 [ %.sroa.6.4.i.1, %.lr.ph.i18.i.preheader.unr-lcssa ], [ %i.on, %bb.ca ], [ %.sroa.6.3.i.epil.init, %.lr.ph.i.i241.epil.preheader ] ; 2 uses
  %.0.i.i14.i.lcssa = phi i32 [ %.0.i.i14.i.1, %.lr.ph.i18.i.preheader.unr-lcssa ], [ %i.os, %bb.ca ], [ %i.om, %.lr.ph.i.i241.epil.preheader ] ; 3 uses
  %xtraiter606 = and i32 %i.nq, 1
  %i.ot = icmp eq i32 %i.nt, 0
  br i1 %i.ot, label %.lr.ph.i18.i.epil.preheader, label %.lr.ph.i18.i.preheader.new

.lr.ph.i18.i.preheader.new:                       ; preds = %.lr.ph.i18.i.preheader
  %unroll_iter612 = and i32 %i.nq, 254
  br label %.lr.ph.i18.i

.lr.ph.i18.i:                                     ; preds = %stbtt__buf_get8.exit.i23.i.1, %.lr.ph.i18.i.preheader.new
  %i.ou = phi i32 [ %.sroa.6.4.i.lcssa, %.lr.ph.i18.i.preheader.new ], [ %i.pk, %stbtt__buf_get8.exit.i23.i.1 ] ; 4 uses
  %.056.i21.i = phi i32 [ 0, %.lr.ph.i18.i.preheader.new ], [ %.0.i.i24.i.1, %stbtt__buf_get8.exit.i23.i.1 ]
  %niter613 = phi i32 [ 0, %.lr.ph.i18.i.preheader.new ], [ %niter613.next.1, %stbtt__buf_get8.exit.i23.i.1 ]
  %i.ov = shl i32 %.056.i21.i, 8                  ; 2 uses
  %.not.i.i22.i = icmp slt i32 %i.ou, %i.mv
  br i1 %.not.i.i22.i, label %bb.cb, label %stbtt__buf_get8.exit.i23.i

bb.cb:                                            ; preds = %.lr.ph.i18.i
  %i.ow = add nsw i32 %i.ou, 1
  %i.ox = sext i32 %i.ou to i64
  %i.oy = getelementptr inbounds i8, ptr %i.na, i64 %i.ox
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !14
  %i.pa = zext i8 %i.oz to i32
  %i.pb = or disjoint i32 %i.ov, %i.pa
  br label %stbtt__buf_get8.exit.i23.i

stbtt__buf_get8.exit.i23.i:                       ; preds = %bb.cb, %.lr.ph.i18.i
  %i.pc = phi i32 [ %i.ow, %bb.cb ], [ %i.ou, %.lr.ph.i18.i ] ; 4 uses
  %.0.i.i24.i = phi i32 [ %i.pb, %bb.cb ], [ %i.ov, %.lr.ph.i18.i ]
  %i.pd = shl i32 %.0.i.i24.i, 8                  ; 2 uses
  %.not.i.i22.i.1 = icmp slt i32 %i.pc, %i.mv
  br i1 %.not.i.i22.i.1, label %bb.cc, label %stbtt__buf_get8.exit.i23.i.1

bb.cc:                                            ; preds = %stbtt__buf_get8.exit.i23.i
  %i.pe = add nsw i32 %i.pc, 1
  %i.pf = sext i32 %i.pc to i64
  %i.pg = getelementptr inbounds i8, ptr %i.na, i64 %i.pf
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !14
  %i.pi = zext i8 %i.ph to i32
  %i.pj = or disjoint i32 %i.pd, %i.pi
  br label %stbtt__buf_get8.exit.i23.i.1

stbtt__buf_get8.exit.i23.i.1:                     ; preds = %bb.cc, %stbtt__buf_get8.exit.i23.i
  %i.pk = phi i32 [ %i.pe, %bb.cc ], [ %i.pc, %stbtt__buf_get8.exit.i23.i ] ; 2 uses
  %.0.i.i24.i.1 = phi i32 [ %i.pj, %bb.cc ], [ %i.pd, %stbtt__buf_get8.exit.i23.i ] ; 3 uses
  %niter613.next.1 = add i32 %niter613, 2         ; 2 uses
  %niter613.ncmp.1 = icmp eq i32 %niter613.next.1, %unroll_iter612
  br i1 %niter613.ncmp.1, label %stbtt__buf_get.exit26.i.loopexit.unr-lcssa, label %.lr.ph.i18.i, !llvm.loop !15

stbtt__buf_get.exit26.i.loopexit.unr-lcssa:       ; preds = %stbtt__buf_get8.exit.i23.i.1
  %lcmp.mod609.not = icmp eq i32 %xtraiter606, 0
  br i1 %lcmp.mod609.not, label %stbtt__buf_get.exit26.i, label %.lr.ph.i18.i.epil.preheader

.lr.ph.i18.i.epil.preheader:                      ; preds = %stbtt__buf_get.exit26.i.loopexit.unr-lcssa, %.lr.ph.i18.i.preheader
  %.epil.init608 = phi i32 [ %.sroa.6.4.i.lcssa, %.lr.ph.i18.i.preheader ], [ %i.pk, %stbtt__buf_get.exit26.i.loopexit.unr-lcssa ] ; 2 uses
  %.056.i21.i.epil.init = phi i32 [ 0, %.lr.ph.i18.i.preheader ], [ %.0.i.i24.i.1, %stbtt__buf_get.exit26.i.loopexit.unr-lcssa ]
  %lcmp.mod611 = trunc i8 %i.np to i1
  tail call void @llvm.assume(i1 %lcmp.mod611)
  %i.pl = shl i32 %.056.i21.i.epil.init, 8        ; 2 uses
  %.not.i.i22.i.epil = icmp slt i32 %.epil.init608, %i.mv
  br i1 %.not.i.i22.i.epil, label %bb.cd, label %stbtt__buf_get.exit26.i

bb.cd:                                            ; preds = %.lr.ph.i18.i.epil.preheader
  %i.pm = sext i32 %.epil.init608 to i64
  %i.pn = getelementptr inbounds i8, ptr %i.na, i64 %i.pm
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !14
  %i.pp = zext i8 %i.po to i32
  %i.pq = or disjoint i32 %i.pl, %i.pp
  br label %stbtt__buf_get.exit26.i

stbtt__buf_get.exit26.i:                          ; preds = %stbtt__buf_get.exit26.i.loopexit.unr-lcssa, %bb.cd, %.lr.ph.i18.i.epil.preheader, %bb.bv, %stbtt__buf_get8.exit.i238, %stbtt__buf_get8.exit.i.1.i230
  %.0.i.i.1.i231368 = phi i32 [ %.0.i.i.1.i231, %stbtt__buf_get8.exit.i238 ], [ %.0.i.i.1.i231, %stbtt__buf_get8.exit.i.1.i230 ], [ 0, %bb.bv ], [ %.0.i.i.1.i231, %.lr.ph.i18.i.epil.preheader ], [ %.0.i.i.1.i231, %bb.cd ], [ %.0.i.i.1.i231, %stbtt__buf_get.exit26.i.loopexit.unr-lcssa ]
  %.sroa.18.8.extract.trunc.i353359367 = phi i32 [ %i.mv, %stbtt__buf_get8.exit.i238 ], [ %i.mv, %stbtt__buf_get8.exit.i.1.i230 ], [ 0, %bb.bv ], [ %i.mv, %.lr.ph.i18.i.epil.preheader ], [ %i.mv, %bb.cd ], [ %i.mv, %stbtt__buf_get.exit26.i.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0.0.i.i221352360366 = phi ptr [ %i.na, %stbtt__buf_get8.exit.i238 ], [ %i.na, %stbtt__buf_get8.exit.i.1.i230 ], [ null, %bb.bv ], [ %i.na, %.lr.ph.i18.i.epil.preheader ], [ %i.na, %bb.cd ], [ %i.na, %stbtt__buf_get.exit26.i.loopexit.unr-lcssa ]
  %.0.i53.i = phi i32 [ 0, %stbtt__buf_get8.exit.i238 ], [ 0, %stbtt__buf_get8.exit.i.1.i230 ], [ 0, %bb.bv ], [ %i.nq, %.lr.ph.i18.i.epil.preheader ], [ %i.nq, %bb.cd ], [ %i.nq, %stbtt__buf_get.exit26.i.loopexit.unr-lcssa ]
  %.05.lcssa.i40.i = phi i32 [ 0, %stbtt__buf_get8.exit.i238 ], [ 0, %stbtt__buf_get8.exit.i.1.i230 ], [ 0, %bb.bv ], [ %.0.i.i14.i.lcssa, %.lr.ph.i18.i.epil.preheader ], [ %.0.i.i14.i.lcssa, %bb.cd ], [ %.0.i.i14.i.lcssa, %stbtt__buf_get.exit26.i.loopexit.unr-lcssa ] ; 2 uses
  %.05.lcssa.i17.i = phi i32 [ 0, %stbtt__buf_get8.exit.i238 ], [ 0, %stbtt__buf_get8.exit.i.1.i230 ], [ 0, %bb.bv ], [ %.0.i.i24.i.1, %stbtt__buf_get.exit26.i.loopexit.unr-lcssa ], [ %i.pq, %bb.cd ], [ %i.pl, %.lr.ph.i18.i.epil.preheader ]
  %i.pr = add nuw nsw i32 %.0.i.i.1.i231368, 1
  %i.ps = mul nuw nsw i32 %.0.i53.i, %i.pr
  %i.pt = add nuw nsw i32 %i.ps, 2
  %i.pu = add nsw i32 %i.pt, %.05.lcssa.i40.i     ; 4 uses
  %i.pv = sub nsw i32 %.05.lcssa.i17.i, %.05.lcssa.i40.i ; 3 uses
  %i.pw = or i32 %i.pv, %i.pu
  %or.cond.not.i.i233 = icmp sgt i32 %i.pw, -1
  br i1 %or.cond.not.i.i233, label %bb.ce, label %stbtt__cff_index_get.exit

bb.ce:                                            ; preds = %stbtt__buf_get.exit26.i
  %i.px = icmp sgt i32 %i.pu, %.sroa.18.8.extract.trunc.i353359367
  %i.py = sub nsw i32 %.sroa.18.8.extract.trunc.i353359367, %i.pu
  %i.pz = icmp sgt i32 %i.pv, %i.py
  %or.cond.i.i = select i1 %i.px, i1 true, i1 %i.pz
  br i1 %or.cond.i.i, label %stbtt__cff_index_get.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.qa = zext nneg i32 %i.pu to i64
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i221352360366, i64 %i.qa
  %i.qc = zext i32 %i.pv to i64
  %i.qd = shl nuw i64 %i.qc, 32
  br label %stbtt__cff_index_get.exit

stbtt__cff_index_get.exit:                        ; preds = %stbtt__buf_get.exit26.i, %bb.ce, %bb.cf
  %.sroa.0.0.i.i234 = phi ptr [ null, %stbtt__buf_get.exit26.i ], [ null, %bb.ce ], [ %i.qb, %bb.cf ]
  %.sroa.5.0.i.i235 = phi i64 [ 0, %stbtt__buf_get.exit26.i ], [ 0, %bb.ce ], [ %i.qd, %bb.cf ]
  store ptr %.sroa.0.0.i.i234, ptr %8, align 8, !tbaa !22
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %.sroa.5.0.i.i235, ptr %.sroa.414.0..sroa_idx, align 8
  %.not.i.i.i242 = icmp slt i32 %i.mu, %i.ia
  br i1 %.not.i.i.i242, label %bb.cg, label %stbtt__buf_get8.exit.i.i243

bb.cg:                                            ; preds = %stbtt__cff_index_get.exit
  %i.qe = load ptr, ptr %7, align 8, !tbaa !13
  %i.qf = add nsw i32 %i.mu, 1                    ; 2 uses
  store i32 %i.qf, ptr %i.hw, align 8, !tbaa !8
  %i.qg = sext i32 %i.mu to i64
  %i.qh = getelementptr inbounds i8, ptr %i.qe, i64 %i.qg
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !14
  %i.qj = zext i8 %i.qi to i32
  %i.qk = shl nuw nsw i32 %i.qj, 8
  br label %stbtt__buf_get8.exit.i.i243

stbtt__buf_get8.exit.i.i243:                      ; preds = %bb.cg, %stbtt__cff_index_get.exit
  %i.ql = phi i32 [ %i.qf, %bb.cg ], [ %i.mu, %stbtt__cff_index_get.exit ] ; 4 uses
  %.0.i.i.i244 = phi i32 [ %i.qk, %bb.cg ], [ 0, %stbtt__cff_index_get.exit ] ; 2 uses
  %.not.i.i.1.i245 = icmp slt i32 %i.ql, %i.ia
  br i1 %.not.i.i.1.i245, label %bb.ch, label %stbtt__buf_get8.exit.i.1.i246

bb.ch:                                            ; preds = %stbtt__buf_get8.exit.i.i243
  %i.qm = load ptr, ptr %7, align 8, !tbaa !13
  %i.qn = add nsw i32 %i.ql, 1                    ; 2 uses
  store i32 %i.qn, ptr %i.hw, align 8, !tbaa !8
  %i.qo = sext i32 %i.ql to i64
  %i.qp = getelementptr inbounds i8, ptr %i.qm, i64 %i.qo
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !14
  %i.qr = zext i8 %i.qq to i32
  %i.qs = or disjoint i32 %.0.i.i.i244, %i.qr
  br label %stbtt__buf_get8.exit.i.1.i246

stbtt__buf_get8.exit.i.1.i246:                    ; preds = %bb.ch, %stbtt__buf_get8.exit.i.i243
  %i.qt = phi i32 [ %i.qn, %bb.ch ], [ %i.ql, %stbtt__buf_get8.exit.i.i243 ] ; 5 uses
  %.0.i.i.1.i247 = phi i32 [ %i.qs, %bb.ch ], [ %.0.i.i.i244, %stbtt__buf_get8.exit.i.i243 ] ; 2 uses
  %.not.i248 = icmp eq i32 %.0.i.i.1.i247, 0
  br i1 %.not.i248, label %stbtt__cff_get_index.exit271, label %bb.ci

bb.ci:                                            ; preds = %stbtt__buf_get8.exit.i.1.i246
  %.not.i.i249 = icmp slt i32 %i.qt, %i.ia
  br i1 %.not.i.i249, label %bb.cj, label %stbtt__buf_get8.exit.i250

bb.cj:                                            ; preds = %bb.ci
  %i.qu = load ptr, ptr %7, align 8, !tbaa !13
  %i.qv = add nsw i32 %i.qt, 1
  %i.qw = sext i32 %i.qt to i64
  %i.qx = getelementptr inbounds i8, ptr %i.qu, i64 %i.qw
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !14
  %i.qz = zext i8 %i.qy to i32
  br label %stbtt__buf_get8.exit.i250

stbtt__buf_get8.exit.i250:                        ; preds = %bb.cj, %bb.ci
  %.promoted401 = phi i32 [ %i.qv, %bb.cj ], [ %i.qt, %bb.ci ]
  %.0.i.i251 = phi i32 [ %i.qz, %bb.cj ], [ 0, %bb.ci ] ; 6 uses
  %i.ra = mul nuw nsw i32 %.0.i.i251, %.0.i.i.1.i247
  %i.rb = add nsw i32 %i.ra, %.promoted401        ; 2 uses
  %i.rc = icmp slt i32 %i.rb, 0
  %i.rd = tail call i32 @llvm.smin.i32(i32 %i.rb, i32 %i.ia)
  %..i.i.i252 = select i1 %i.rc, i32 %i.ia, i32 %i.rd ; 3 uses
  %.not22.i253 = icmp eq i32 %.0.i.i251, 0
  br i1 %.not22.i253, label %stbtt__buf_get.exit20.i262, label %.lr.ph.i.i254.preheader

.lr.ph.i.i254.preheader:                          ; preds = %stbtt__buf_get8.exit.i250
  %i.re = load ptr, ptr %7, align 8               ; 3 uses
  %xtraiter614 = and i32 %.0.i.i251, 1
  %i.rf = icmp eq i32 %.0.i.i251, 1
  br i1 %i.rf, label %.lr.ph.i.i254.epil.preheader, label %.lr.ph.i.i254.preheader.new

.lr.ph.i.i254.preheader.new:                      ; preds = %.lr.ph.i.i254.preheader
  %unroll_iter621 = and i32 %.0.i.i251, 254
  br label %.lr.ph.i.i254

.lr.ph.i.i254:                                    ; preds = %stbtt__buf_get8.exit.i17.i258.1, %.lr.ph.i.i254.preheader.new
  %i.rg = phi i32 [ %..i.i.i252, %.lr.ph.i.i254.preheader.new ], [ %i.rw, %stbtt__buf_get8.exit.i17.i258.1 ] ; 4 uses
  %.056.i15.i256 = phi i32 [ 0, %.lr.ph.i.i254.preheader.new ], [ %.0.i.i18.i259.1, %stbtt__buf_get8.exit.i17.i258.1 ]
  %niter622 = phi i32 [ 0, %.lr.ph.i.i254.preheader.new ], [ %niter622.next.1, %stbtt__buf_get8.exit.i17.i258.1 ]
  %i.rh = shl i32 %.056.i15.i256, 8               ; 2 uses
  %.not.i.i16.i257 = icmp slt i32 %i.rg, %i.ia
  br i1 %.not.i.i16.i257, label %bb.ck, label %stbtt__buf_get8.exit.i17.i258

bb.ck:                                            ; preds = %.lr.ph.i.i254
  %i.ri = add nsw i32 %i.rg, 1
  %i.rj = sext i32 %i.rg to i64
  %i.rk = getelementptr inbounds i8, ptr %i.re, i64 %i.rj
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !14
  %i.rm = zext i8 %i.rl to i32
  %i.rn = or disjoint i32 %i.rh, %i.rm
  br label %stbtt__buf_get8.exit.i17.i258

stbtt__buf_get8.exit.i17.i258:                    ; preds = %bb.ck, %.lr.ph.i.i254
  %i.ro = phi i32 [ %i.ri, %bb.ck ], [ %i.rg, %.lr.ph.i.i254 ] ; 4 uses
  %.0.i.i18.i259 = phi i32 [ %i.rn, %bb.ck ], [ %i.rh, %.lr.ph.i.i254 ]
  %i.rp = shl i32 %.0.i.i18.i259, 8               ; 2 uses
  %.not.i.i16.i257.1 = icmp slt i32 %i.ro, %i.ia
  br i1 %.not.i.i16.i257.1, label %bb.cl, label %stbtt__buf_get8.exit.i17.i258.1

bb.cl:                                            ; preds = %stbtt__buf_get8.exit.i17.i258
  %i.rq = add nsw i32 %i.ro, 1
  %i.rr = sext i32 %i.ro to i64
  %i.rs = getelementptr inbounds i8, ptr %i.re, i64 %i.rr
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !14
  %i.ru = zext i8 %i.rt to i32
  %i.rv = or disjoint i32 %i.rp, %i.ru
  br label %stbtt__buf_get8.exit.i17.i258.1

stbtt__buf_get8.exit.i17.i258.1:                  ; preds = %bb.cl, %stbtt__buf_get8.exit.i17.i258
  %i.rw = phi i32 [ %i.rq, %bb.cl ], [ %i.ro, %stbtt__buf_get8.exit.i17.i258 ] ; 3 uses
  %.0.i.i18.i259.1 = phi i32 [ %i.rv, %bb.cl ], [ %i.rp, %stbtt__buf_get8.exit.i17.i258 ] ; 3 uses
  %niter622.next.1 = add nuw nsw i32 %niter622, 2 ; 2 uses
  %niter622.ncmp.1 = icmp eq i32 %niter622.next.1, %unroll_iter621
  br i1 %niter622.ncmp.1, label %stbtt__buf_get.exit20.loopexit.i261.unr-lcssa, label %.lr.ph.i.i254, !llvm.loop !15

stbtt__buf_get.exit20.loopexit.i261.unr-lcssa:    ; preds = %stbtt__buf_get8.exit.i17.i258.1
  %lcmp.mod617.not = icmp eq i32 %xtraiter614, 0
  br i1 %lcmp.mod617.not, label %stbtt__buf_get.exit20.loopexit.i261, label %.lr.ph.i.i254.epil.preheader

.lr.ph.i.i254.epil.preheader:                     ; preds = %stbtt__buf_get.exit20.loopexit.i261.unr-lcssa, %.lr.ph.i.i254.preheader
  %.epil.init616 = phi i32 [ %..i.i.i252, %.lr.ph.i.i254.preheader ], [ %i.rw, %stbtt__buf_get.exit20.loopexit.i261.unr-lcssa ] ; 4 uses
  %.056.i15.i256.epil.init = phi i32 [ 0, %.lr.ph.i.i254.preheader ], [ %.0.i.i18.i259.1, %stbtt__buf_get.exit20.loopexit.i261.unr-lcssa ]
  %lcmp.mod620 = trunc i32 %.0.i.i251 to i1
  tail call void @llvm.assume(i1 %lcmp.mod620)
  %i.rx = shl i32 %.056.i15.i256.epil.init, 8     ; 2 uses
  %.not.i.i16.i257.epil = icmp slt i32 %.epil.init616, %i.ia
  br i1 %.not.i.i16.i257.epil, label %bb.cm, label %stbtt__buf_get.exit20.loopexit.i261

bb.cm:                                            ; preds = %.lr.ph.i.i254.epil.preheader
  %i.ry = add nsw i32 %.epil.init616, 1
  %i.rz = sext i32 %.epil.init616 to i64
  %i.sa = getelementptr inbounds i8, ptr %i.re, i64 %i.rz
  %i.sb = load i8, ptr %i.sa, align 1, !tbaa !14
  %i.sc = zext i8 %i.sb to i32
  %i.sd = or disjoint i32 %i.rx, %i.sc
  br label %stbtt__buf_get.exit20.loopexit.i261

stbtt__buf_get.exit20.loopexit.i261:              ; preds = %.lr.ph.i.i254.epil.preheader, %bb.cm, %stbtt__buf_get.exit20.loopexit.i261.unr-lcssa
  %.lcssa564 = phi i32 [ %i.rw, %stbtt__buf_get.exit20.loopexit.i261.unr-lcssa ], [ %i.ry, %bb.cm ], [ %.epil.init616, %.lr.ph.i.i254.epil.preheader ]
  %.0.i.i18.i259.lcssa = phi i32 [ %.0.i.i18.i259.1, %stbtt__buf_get.exit20.loopexit.i261.unr-lcssa ], [ %i.sd, %bb.cm ], [ %i.rx, %.lr.ph.i.i254.epil.preheader ]
  %i.se = add i32 %.0.i.i18.i259.lcssa, -1
  br label %stbtt__buf_get.exit20.i262

stbtt__buf_get.exit20.i262:                       ; preds = %stbtt__buf_get.exit20.loopexit.i261, %stbtt__buf_get8.exit.i250
end_hunk_1
begin_hunk_2_@stbtt__close_shape:bb.a

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -2147483647, -2147483648) i32 @stbtt__GetGlyphShapeTT(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #10 {
bb.a:
  %3 = alloca %struct.stbtt__csctx, align 8       ; 6 uses
  %4 = alloca %struct.stbtt__csctx, align 8       ; 6 uses
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !35
  %.not.i = icmp slt i32 %1, %i.e
  br i1 %.not.i, label %bb.b, label %stbtt__GetGlyfOffset.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.g = load i32, ptr %i.f, align 4, !tbaa !38   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %stbtt__GetGlyfOffset.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %i.g, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !27
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %i.c, i64 %i.n ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = shl nsw i32 %1, 1
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 %i.q ; 4 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !14
  %i.t = zext i8 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !14
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.t, 9
  %i.y = shl nuw nsw i32 %i.w, 1
  %i.z = or disjoint i32 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !14
  %i.ac = zext i8 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !14
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.ac, 9
  %i.ah = shl nuw nsw i32 %i.af, 1
  %i.ai = or disjoint i32 %i.ah, %i.ag
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aj = shl nsw i32 %1, 2
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.o, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 1
  %i.an = tail call i32 @llvm.bswap.i32(i32 %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ap = load i32, ptr %i.ao, align 1
  %i.aq = tail call i32 @llvm.bswap.i32(i32 %i.ap)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink.i = phi i32 [ %i.aq, %bb.e ], [ %i.ai, %bb.d ]
  %.pn.i = phi i32 [ %i.an, %bb.e ], [ %i.z, %bb.d ] ; 2 uses
  %.023.i = add i32 %.pn.i, %i.k                  ; 2 uses
  %i.ar = icmp eq i32 %.pn.i, %.sink.i
  br i1 %i.ar, label %stbtt__GetGlyfOffset.exit.thread, label %stbtt__GetGlyfOffset.exit

stbtt__GetGlyfOffset.exit.thread:                 ; preds = %bb.a, %bb.b, %bb.f
  store ptr null, ptr %2, align 8, !tbaa !46
  br label %.thread

stbtt__GetGlyfOffset.exit:                        ; preds = %bb.f
  store ptr null, ptr %2, align 8, !tbaa !46
  %i.as = icmp slt i32 %.023.i, 0
  br i1 %i.as, label %.thread, label %bb.g

bb.g:                                             ; preds = %stbtt__GetGlyfOffset.exit
  %i.at = zext nneg i32 %.023.i to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.at ; 4 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !14
  %i.aw = zext i8 %i.av to i16
  %i.ax = shl nuw i16 %i.aw, 8                    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !14
  %i.ba = zext i8 %i.az to i16
  %i.bb = or disjoint i16 %i.ax, %i.ba            ; 2 uses
  %i.bc = icmp sgt i16 %i.bb, 0
  br i1 %i.bc, label %bb.h, label %bb.be

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 10 ; 2 uses
  %i.be = shl nuw i16 %i.bb, 1                    ; 3 uses
  %i.bf = zext i16 %i.be to i32                   ; 2 uses
  %i.bg = zext i16 %i.be to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bg ; 5 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !14
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !14
  %i.bl = getelementptr inbounds i8, ptr %i.bh, i64 -2
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !14
  %i.bn = zext i8 %i.bm to i32
  %i.bo = shl nuw nsw i32 %i.bn, 8                ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bh, i64 -1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !14
  %i.br = zext i8 %i.bq to i32                    ; 3 uses
  %i.bs = or disjoint i32 %i.bo, %i.br            ; 2 uses
  %i.bt = or disjoint i32 %i.bf, 1
  %i.bu = add nuw nsw i32 %i.bt, %i.bs
  %narrow = mul nuw nsw i32 %i.bu, 14
  %i.bv = zext nneg i32 %narrow to i64
  %i.bw = tail call noalias ptr @malloc(i64 noundef %i.bv) #30 ; 17 uses
  %.not368 = icmp eq ptr %i.bw, null
  br i1 %.not368, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bx = zext i8 %i.bi to i64
  %i.by = shl nuw nsw i64 %i.bx, 8
  %i.bz = zext i8 %i.bk to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.by
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bz ; 2 uses
  %i.cd = zext i16 %i.be to i64                   ; 3 uses
  %i.ce = or disjoint i32 %i.bo, %i.br
  %i.cf = add nuw nsw i32 %i.ce, 1
  %wide.trip.count431 = zext nneg i32 %i.cf to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [14 x i8], ptr %i.bw, i64 %i.cd ; 3 uses
  %i.cg = or disjoint i32 %i.bo, %i.br            ; 2 uses
  %i.ch = add nuw nsw i32 %i.cg, 1                ; 2 uses
  %i.ci = zext nneg i32 %i.ch to i64              ; 2 uses
  %xtraiter = and i64 %i.ci, 1
  %i.cj = icmp eq i32 %i.cg, 0
  br i1 %i.cj, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.i
  %unroll_iter = and i64 %i.ci, 131070
  br label %bb.j

bb.j:                                             ; preds = %bb.r, %.new
  %indvars.iv429 = phi i64 [ 0, %.new ], [ %indvars.iv.next430.1, %bb.r ] ; 3 uses
  %.0283402 = phi ptr [ %i.cc, %.new ], [ %.1284.1, %bb.r ] ; 4 uses
  %.0322400 = phi i8 [ 0, %.new ], [ %.1323.1, %bb.r ] ; 2 uses
  %.0324399 = phi i8 [ 0, %.new ], [ %.1325.1, %bb.r ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.r ]
  %i.ck = icmp eq i8 %.0322400, 0
  br i1 %i.ck, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cl = getelementptr inbounds nuw i8, ptr %.0283402, i64 1 ; 2 uses
  %i.cm = load i8, ptr %.0283402, align 1, !tbaa !14 ; 3 uses
  %i.cn = and i8 %i.cm, 8
  %.not367 = icmp eq i8 %i.cn, 0
  br i1 %.not367, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.co = getelementptr inbounds nuw i8, ptr %.0283402, i64 2
  %i.cp = load i8, ptr %i.cl, align 1, !tbaa !14
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.cq = add i8 %.0322400, -1
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m
  %.1325 = phi i8 [ %i.cm, %bb.l ], [ %i.cm, %bb.k ], [ %.0324399, %bb.m ] ; 2 uses
  %.1323 = phi i8 [ %i.cp, %bb.l ], [ 0, %bb.k ], [ %i.cq, %bb.m ] ; 2 uses
  %.1284 = phi ptr [ %i.co, %bb.l ], [ %i.cl, %bb.k ], [ %.0283402, %bb.m ] ; 4 uses
  %gep = getelementptr inbounds nuw [14 x i8], ptr %invariant.gep, i64 %indvars.iv429
  %i.cr = getelementptr inbounds nuw i8, ptr %gep, i64 12
  store i8 %.1325, ptr %i.cr, align 2, !tbaa !48
  %i.cs = icmp eq i8 %.1323, 0
  br i1 %i.cs, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ct = add i8 %.1323, -1
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.cu = getelementptr inbounds nuw i8, ptr %.1284, i64 1 ; 2 uses
  %i.cv = load i8, ptr %.1284, align 1, !tbaa !14 ; 3 uses
  %i.cw = and i8 %i.cv, 8
  %.not367.1 = icmp eq i8 %i.cw, 0
  br i1 %.not367.1, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cx = getelementptr inbounds nuw i8, ptr %.1284, i64 2
  %i.cy = load i8, ptr %i.cu, align 1, !tbaa !14
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.1325.1 = phi i8 [ %i.cv, %bb.q ], [ %i.cv, %bb.p ], [ %.1325, %bb.o ] ; 3 uses
  %.1323.1 = phi i8 [ %i.cy, %bb.q ], [ 0, %bb.p ], [ %i.ct, %bb.o ] ; 2 uses
  %.1284.1 = phi ptr [ %i.cx, %bb.q ], [ %i.cu, %bb.p ], [ %.1284, %bb.o ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [14 x i8], ptr %invariant.gep, i64 %indvars.iv429
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 26
  store i8 %.1325.1, ptr %i.da, align 2, !tbaa !48
  %indvars.iv.next430.1 = add nuw nsw i64 %indvars.iv429, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader391.preheader.unr-lcssa, label %bb.j, !llvm.loop !55

.preheader391.preheader.unr-lcssa:                ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader391.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader391.preheader.unr-lcssa, %bb.i
  %indvars.iv429.epil.init = phi i64 [ 0, %bb.i ], [ %indvars.iv.next430.1, %.preheader391.preheader.unr-lcssa ]
  %.0283402.epil.init = phi ptr [ %i.cc, %bb.i ], [ %.1284.1, %.preheader391.preheader.unr-lcssa ] ; 4 uses
  %.0322400.epil.init = phi i8 [ 0, %bb.i ], [ %.1323.1, %.preheader391.preheader.unr-lcssa ]
  %.0324399.epil.init = phi i8 [ 0, %bb.i ], [ %.1325.1, %.preheader391.preheader.unr-lcssa ]
  %lcmp.mod472 = trunc i32 %i.ch to i1
  tail call void @llvm.assume(i1 %lcmp.mod472)
  %i.db = icmp eq i8 %.0322400.epil.init, 0
  br i1 %i.db, label %bb.s, label %.preheader391.preheader.epilog-lcssa

bb.s:                                             ; preds = %.epil.preheader
  %i.dc = getelementptr inbounds nuw i8, ptr %.0283402.epil.init, i64 1
  %i.dd = load i8, ptr %.0283402.epil.init, align 1, !tbaa !14 ; 2 uses
  %i.de = and i8 %i.dd, 8
  %.not367.epil = icmp eq i8 %i.de, 0
  %i.df = getelementptr inbounds nuw i8, ptr %.0283402.epil.init, i64 2
  %spec.select = select i1 %.not367.epil, ptr %i.dc, ptr %i.df
  br label %.preheader391.preheader.epilog-lcssa

.preheader391.preheader.epilog-lcssa:             ; preds = %bb.s, %.epil.preheader
  %.1325.epil = phi i8 [ %.0324399.epil.init, %.epil.preheader ], [ %i.dd, %bb.s ]
  %.1284.epil = phi ptr [ %.0283402.epil.init, %.epil.preheader ], [ %spec.select, %bb.s ]
  %gep.epil = getelementptr inbounds nuw [14 x i8], ptr %invariant.gep, i64 %indvars.iv429.epil.init
  %i.dg = getelementptr inbounds nuw i8, ptr %gep.epil, i64 12
  store i8 %.1325.epil, ptr %i.dg, align 2, !tbaa !48
  br label %.preheader391.preheader

.preheader391.preheader:                          ; preds = %.preheader391.preheader.unr-lcssa, %.preheader391.preheader.epilog-lcssa
  %.1284.lcssa = phi ptr [ %.1284.1, %.preheader391.preheader.unr-lcssa ], [ %.1284.epil, %.preheader391.preheader.epilog-lcssa ]
  %invariant.gep450 = getelementptr inbounds nuw [14 x i8], ptr %i.bw, i64 %i.cd
  br label %.preheader391

.preheader391:                                    ; preds = %.preheader391.preheader, %bb.w
  %indvars.iv433 = phi i64 [ 0, %.preheader391.preheader ], [ %indvars.iv.next434, %bb.w ] ; 2 uses
  %.2285405 = phi ptr [ %.1284.lcssa, %.preheader391.preheader ], [ %.3286, %bb.w ] ; 6 uses
  %.0306404 = phi i16 [ 0, %.preheader391.preheader ], [ %.1307, %bb.w ] ; 3 uses
  %gep451 = getelementptr inbounds nuw [14 x i8], ptr %invariant.gep450, i64 %indvars.iv433 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %gep451, i64 12
  %i.di = load i8, ptr %i.dh, align 2, !tbaa !48
  %i.dj = zext i8 %i.di to i32                    ; 3 uses
  %i.dk = and i32 %i.dj, 2
  %.not364 = icmp eq i32 %i.dk, 0
  br i1 %.not364, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.preheader391
  %i.dl = getelementptr inbounds nuw i8, ptr %.2285405, i64 1
  %i.dm = load i8, ptr %.2285405, align 1, !tbaa !14
  %i.dn = and i32 %i.dj, 16
  %.not366 = icmp eq i32 %i.dn, 0
  %i.do = zext i8 %i.dm to i16                    ; 2 uses
  %i.dp = sub nsw i16 0, %i.do
  %i.dq = select i1 %.not366, i16 %i.dp, i16 %i.do
  %i.dr = add i16 %i.dq, %.0306404
  br label %bb.w

bb.u:                                             ; preds = %.preheader391
  %i.ds = and i32 %i.dj, 16
  %.not365 = icmp eq i32 %i.ds, 0
  br i1 %.not365, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dt = load i8, ptr %.2285405, align 1, !tbaa !14
  %i.du = zext i8 %i.dt to i16
  %i.dv = shl nuw i16 %i.du, 8
  %i.dw = getelementptr inbounds nuw i8, ptr %.2285405, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !14
  %i.dy = zext i8 %i.dx to i16
  %i.dz = or disjoint i16 %i.dv, %i.dy
  %i.ea = add i16 %i.dz, %.0306404
  %i.eb = getelementptr inbounds nuw i8, ptr %.2285405, i64 2
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %.1307 = phi i16 [ %i.dr, %bb.t ], [ %.0306404, %bb.u ], [ %i.ea, %bb.v ] ; 2 uses
  %.3286 = phi ptr [ %i.dl, %bb.t ], [ %.2285405, %bb.u ], [ %i.eb, %bb.v ] ; 2 uses
  store i16 %.1307, ptr %gep451, align 2, !tbaa !51
  %indvars.iv.next434 = add nuw nsw i64 %indvars.iv433, 1 ; 2 uses
  %exitcond436.not = icmp eq i64 %indvars.iv.next434, %wide.trip.count431
  br i1 %exitcond436.not, label %.preheader390.preheader, label %.preheader391, !llvm.loop !56

.preheader390.preheader:                          ; preds = %bb.w
  %invariant.gep452 = getelementptr inbounds nuw [14 x i8], ptr %i.bw, i64 %i.cd
  br label %.preheader390

.preheader390:                                    ; preds = %.preheader390.preheader, %bb.aa
  %indvars.iv437 = phi i64 [ 0, %.preheader390.preheader ], [ %indvars.iv.next438, %bb.aa ] ; 2 uses
  %.4287408 = phi ptr [ %.3286, %.preheader390.preheader ], [ %.5, %bb.aa ] ; 6 uses
  %.0304407 = phi i16 [ 0, %.preheader390.preheader ], [ %.1305, %bb.aa ] ; 3 uses
  %gep453 = getelementptr inbounds nuw [14 x i8], ptr %invariant.gep452, i64 %indvars.iv437 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %gep453, i64 12
  %i.ed = load i8, ptr %i.ec, align 2, !tbaa !48
  %i.ee = zext i8 %i.ed to i32                    ; 3 uses
  %i.ef = and i32 %i.ee, 4
  %.not361 = icmp eq i32 %i.ef, 0
  br i1 %.not361, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.preheader390
  %i.eg = getelementptr inbounds nuw i8, ptr %.4287408, i64 1
  %i.eh = load i8, ptr %.4287408, align 1, !tbaa !14
  %i.ei = and i32 %i.ee, 32
  %.not363 = icmp eq i32 %i.ei, 0
  %i.ej = zext i8 %i.eh to i16                    ; 2 uses
  %i.ek = sub nsw i16 0, %i.ej
  %i.el = select i1 %.not363, i16 %i.ek, i16 %i.ej
  %i.em = add i16 %i.el, %.0304407
  br label %bb.aa

bb.y:                                             ; preds = %.preheader390
  %i.en = and i32 %i.ee, 32
  %.not362 = icmp eq i32 %i.en, 0
  br i1 %.not362, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.eo = load i8, ptr %.4287408, align 1, !tbaa !14
  %i.ep = zext i8 %i.eo to i16
  %i.eq = shl nuw i16 %i.ep, 8
  %i.er = getelementptr inbounds nuw i8, ptr %.4287408, i64 1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !14
  %i.et = zext i8 %i.es to i16
  %i.eu = or disjoint i16 %i.eq, %i.et
  %i.ev = add i16 %i.eu, %.0304407
  %i.ew = getelementptr inbounds nuw i8, ptr %.4287408, i64 2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.x
  %.1305 = phi i16 [ %i.em, %bb.x ], [ %.0304407, %bb.y ], [ %i.ev, %bb.z ] ; 2 uses
  %.5 = phi ptr [ %i.eg, %bb.x ], [ %.4287408, %bb.y ], [ %i.ew, %bb.z ]
  %i.ex = getelementptr inbounds nuw i8, ptr %gep453, i64 2
  store i16 %.1305, ptr %i.ex, align 2, !tbaa !52
  %indvars.iv.next438 = add nuw nsw i64 %indvars.iv437, 1 ; 2 uses
  %exitcond440.not = icmp eq i64 %indvars.iv.next438, %wide.trip.count431
  br i1 %exitcond440.not, label %.preheader, label %.preheader390, !llvm.loop !57

.preheader:                                       ; preds = %bb.aa, %bb.av
  %.0288425 = phi i32 [ %.2290, %bb.av ], [ 0, %bb.aa ] ; 6 uses
  %.0291423 = phi i32 [ %.2293, %bb.av ], [ 0, %bb.aa ] ; 6 uses
  %.0294422 = phi i32 [ %.2296, %bb.av ], [ 0, %bb.aa ] ; 5 uses
  %.0297421 = phi i32 [ %.2299, %bb.av ], [ 0, %bb.aa ] ; 5 uses
  %.0300418 = phi i32 [ %.1301, %bb.av ], [ 0, %bb.aa ] ; 8 uses
  %.0302415 = phi i32 [ %.1303, %bb.av ], [ 0, %bb.aa ] ; 8 uses
  %.0308414 = phi i32 [ %.1309, %bb.av ], [ 0, %bb.aa ] ; 4 uses
  %.0310413 = phi i32 [ %.1311, %bb.av ], [ 0, %bb.aa ] ; 2 uses
  %.0312412 = phi i32 [ %.1313, %bb.av ], [ 0, %bb.aa ] ; 8 uses
  %.0314411 = phi i32 [ %.1315, %bb.av ], [ 0, %bb.aa ] ; 5 uses
  %.3319410 = phi i32 [ %i.jj, %bb.av ], [ 0, %bb.aa ] ; 5 uses
  %.0329409 = phi i32 [ %.4333, %bb.av ], [ 0, %bb.aa ] ; 12 uses
  %i.ey = add nsw i32 %.3319410, %i.bf
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [14 x i8], ptr %i.bw, i64 %i.ez ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  %i.fc = load i8, ptr %i.fb, align 2, !tbaa !48  ; 2 uses
  %i.fd = load i16, ptr %i.fa, align 2, !tbaa !51 ; 3 uses
  %i.fe = sext i16 %i.fd to i32                   ; 7 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 2
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !52 ; 3 uses
  %i.fh = sext i16 %i.fg to i32                   ; 7 uses
  %i.fi = icmp eq i32 %.0312412, %.3319410
  br i1 %i.fi, label %bb.ab, label %bb.ao

bb.ab:                                            ; preds = %.preheader
  %.not358 = icmp eq i32 %.0312412, 0
  br i1 %.not358, label %bb.aj, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not.i369 = icmp eq i32 %.0308414, 0
  %.not27.i = icmp eq i32 %.0310413, 0            ; 2 uses
  br i1 %.not.i369, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br i1 %.not27.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fj = add nsw i32 %.0329409, 1
  %i.fk = sext i32 %.0329409 to i64
  %i.fl = getelementptr inbounds [14 x i8], ptr %i.bw, i64 %i.fk ; 5 uses
  %i.fm = add nsw i32 %.0291423, %.0302415
  %i.fn = lshr i32 %i.fm, 1
  %i.fo = add nsw i32 %.0288425, %.0300418
  %i.fp = lshr i32 %i.fo, 1
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  store i8 3, ptr %i.fq, align 2, !tbaa !48
  %i.fr = trunc i32 %i.fn to i16
  store i16 %i.fr, ptr %i.fl, align 2, !tbaa !51
  %i.fs = trunc i32 %i.fp to i16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fl, i64 2
  store i16 %i.fs, ptr %i.ft, align 2, !tbaa !52
  %i.fu = trunc nsw i32 %.0302415 to i16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  store i16 %i.fu, ptr %i.fv, align 2, !tbaa !53
  %i.fw = trunc nsw i32 %.0300418 to i16
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fl, i64 6
  store i16 %i.fw, ptr %i.fx, align 2, !tbaa !54
  br label %bb.af
end_hunk_2
begin_hunk_3_@stbtt__get_subr:bb.a
  %.sroa.4.1 = phi i32 [ %i.g, %bb.c ], [ %.sroa.4.0, %stbtt__buf_get8.exit.i.i ]
  %.0.i.i.1.i = phi i32 [ %i.l, %bb.c ], [ %.0.i.i.i, %stbtt__buf_get8.exit.i.i ] ; 3 uses
  %i.m = icmp samesign ugt i32 %.0.i.i.1.i, 33899
  %i.n = icmp samesign ugt i32 %.0.i.i.1.i, 1239
  %spec.select = select i1 %i.n, i32 1131, i32 107
  %.0 = select i1 %i.m, i32 32768, i32 %spec.select
  %i.o = add nsw i32 %.0, %2                      ; 3 uses
  %i.p = icmp sgt i32 %i.o, -1
  %.not = icmp slt i32 %i.o, %.0.i.i.1.i
  %or.cond = and i1 %i.p, %.not
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %stbtt__cff_index_count.exit
  %.sroa.9.8.insert.shift = and i64 %1, -4294967296
  %.sroa.4.8.insert.ext = zext i32 %.sroa.4.1 to i64
  %.sroa.4.8.insert.insert = or disjoint i64 %.sroa.9.8.insert.shift, %.sroa.4.8.insert.ext
  %i.q = tail call { ptr, i64 } @stbtt__cff_index_get(ptr %0, i64 %.sroa.4.8.insert.insert, i32 noundef %i.o)
  br label %bb.e

bb.e:                                             ; preds = %stbtt__cff_index_count.exit, %bb.d
  %.pn = phi { ptr, i64 } [ %i.q, %bb.d ], [ zeroinitializer, %stbtt__cff_index_count.exit ]
  ret { ptr, i64 } %.pn
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i64 } @stbtt__cid_get_glyph_subrs(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !22 ; 9 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 156
  %.sroa.24.0.copyload = load i32, ptr %.sroa.24.0..sroa_idx, align 4, !tbaa !19 ; 12 uses
  %i.b = tail call i32 @llvm.smin.i32(i32 %.sroa.24.0.copyload, i32 0) ; 2 uses
  %.not.i = icmp sgt i32 %.sroa.24.0.copyload, 0
  br i1 %.not.i, label %stbtt__buf_get8.exit, label %stbtt__buf_get8.exit.thread

stbtt__buf_get8.exit:                             ; preds = %bb.a
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14
  switch i8 %i.e, label %.split [
    i8 0, label %stbtt__buf_get8.exit.thread
    i8 3, label %.preheader.preheader
  ]

.preheader.preheader:                             ; preds = %stbtt__buf_get8.exit
  %.not.i.i.not = icmp eq i32 %.sroa.24.0.copyload, 1
  br i1 %.not.i.i.not, label %stbtt__buf_get8.exit.i, label %bb.c

stbtt__buf_get8.exit.thread:                      ; preds = %bb.a, %stbtt__buf_get8.exit
  %.sroa.9.164 = phi i32 [ 1, %stbtt__buf_get8.exit ], [ %i.b, %bb.a ]
  %i.f = add nsw i32 %.sroa.9.164, %1             ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  %i.h = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %.sroa.24.0.copyload)
  %..i.i = select i1 %i.g, i32 %.sroa.24.0.copyload, i32 %i.h ; 2 uses
  %.not.i25 = icmp slt i32 %..i.i, %.sroa.24.0.copyload
  br i1 %.not.i25, label %bb.b, label %.split

bb.b:                                             ; preds = %stbtt__buf_get8.exit.thread
  %i.i = sext i32 %..i.i to i64
  %i.j = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !14
  %i.l = zext i8 %i.k to i32
  br label %.split

bb.c:                                             ; preds = %.preheader.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !14
  %i.o = zext i8 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 8
  br label %stbtt__buf_get8.exit.i

stbtt__buf_get8.exit.i:                           ; preds = %bb.c, %.preheader.preheader
  %.sroa.9.3 = phi i32 [ 2, %bb.c ], [ 1, %.preheader.preheader ] ; 4 uses
  %.0.i.i = phi i32 [ %i.p, %bb.c ], [ 0, %.preheader.preheader ] ; 2 uses
  %.not.i.i.1 = icmp samesign ult i32 %.sroa.9.3, %.sroa.24.0.copyload
  br i1 %.not.i.i.1, label %bb.d, label %stbtt__buf_get8.exit.i.1

bb.d:                                             ; preds = %stbtt__buf_get8.exit.i
  %i.q = add nuw nsw i32 %.sroa.9.3, 1
  %i.r = zext nneg i32 %.sroa.9.3 to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !14
  %i.u = zext i8 %i.t to i32
  %i.v = or disjoint i32 %.0.i.i, %i.u
  br label %stbtt__buf_get8.exit.i.1

stbtt__buf_get8.exit.i.1:                         ; preds = %bb.d, %stbtt__buf_get8.exit.i
  %.sroa.9.3.1 = phi i32 [ %i.q, %bb.d ], [ %.sroa.9.3, %stbtt__buf_get8.exit.i ] ; 4 uses
  %.0.i.i.1 = phi i32 [ %i.v, %bb.d ], [ %.0.i.i, %stbtt__buf_get8.exit.i ] ; 2 uses
  %.not.i.i31 = icmp samesign ult i32 %.sroa.9.3.1, %.sroa.24.0.copyload
  br i1 %.not.i.i31, label %bb.e, label %stbtt__buf_get8.exit.i32

bb.e:                                             ; preds = %stbtt__buf_get8.exit.i.1
  %i.w = add nuw nsw i32 %.sroa.9.3.1, 1
  %i.x = zext nneg i32 %.sroa.9.3.1 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !14
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 8
  br label %stbtt__buf_get8.exit.i32

stbtt__buf_get8.exit.i32:                         ; preds = %bb.e, %stbtt__buf_get8.exit.i.1
  %.sroa.9.5 = phi i32 [ %i.w, %bb.e ], [ %.sroa.9.3.1, %stbtt__buf_get8.exit.i.1 ] ; 4 uses
  %.0.i.i33 = phi i32 [ %i.ab, %bb.e ], [ 0, %stbtt__buf_get8.exit.i.1 ] ; 2 uses
  %.not.i.i31.1 = icmp samesign ult i32 %.sroa.9.5, %.sroa.24.0.copyload
  br i1 %.not.i.i31.1, label %bb.f, label %stbtt__buf_get8.exit.i32.1

bb.f:                                             ; preds = %stbtt__buf_get8.exit.i32
  %i.ac = add nuw nsw i32 %.sroa.9.5, 1
  %i.ad = zext nneg i32 %.sroa.9.5 to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !14
  %i.ag = zext i8 %i.af to i32
  %i.ah = or disjoint i32 %.0.i.i33, %i.ag
  br label %stbtt__buf_get8.exit.i32.1

stbtt__buf_get8.exit.i32.1:                       ; preds = %bb.f, %stbtt__buf_get8.exit.i32
  %.sroa.9.5.1 = phi i32 [ %i.ac, %bb.f ], [ %.sroa.9.5, %stbtt__buf_get8.exit.i32 ]
  %.0.i.i33.1 = phi i32 [ %i.ah, %bb.f ], [ %.0.i.i33, %stbtt__buf_get8.exit.i32 ]
  %.not77 = icmp eq i32 %.0.i.i.1, 0
  br i1 %.not77, label %.split, label %.lr.ph

stbtt__buf_get.exit35:                            ; preds = %stbtt__buf_get8.exit.i43.1
  %i.ai = add nuw nsw i32 %.01967, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ai, %.0.i.i.1
  br i1 %exitcond.not, label %.split, label %.lr.ph, !llvm.loop !78

.lr.ph:                                           ; preds = %stbtt__buf_get8.exit.i32.1, %stbtt__buf_get.exit35
  %.068 = phi i32 [ %.0.i.i44.1, %stbtt__buf_get.exit35 ], [ %.0.i.i33.1, %stbtt__buf_get8.exit.i32.1 ]
  %.01967 = phi i32 [ %i.ai, %stbtt__buf_get.exit35 ], [ 0, %stbtt__buf_get8.exit.i32.1 ]
  %.sroa.9.066 = phi i32 [ %.sroa.9.8.1, %stbtt__buf_get.exit35 ], [ %.sroa.9.5.1, %stbtt__buf_get8.exit.i32.1 ] ; 4 uses
  %.not.i36 = icmp slt i32 %.sroa.9.066, %.sroa.24.0.copyload
  br i1 %.not.i36, label %bb.g, label %stbtt__buf_get8.exit38

bb.g:                                             ; preds = %.lr.ph
  %i.aj = add nsw i32 %.sroa.9.066, 1
  %i.ak = sext i32 %.sroa.9.066 to i64
  %i.al = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !14
  %i.an = zext i8 %i.am to i32
  br label %stbtt__buf_get8.exit38

stbtt__buf_get8.exit38:                           ; preds = %.lr.ph, %bb.g
  %.sroa.9.6 = phi i32 [ %i.aj, %bb.g ], [ %.sroa.9.066, %.lr.ph ] ; 4 uses
  %.0.i37 = phi i32 [ %i.an, %bb.g ], [ 0, %.lr.ph ]
  %.not.i.i42 = icmp slt i32 %.sroa.9.6, %.sroa.24.0.copyload
  br i1 %.not.i.i42, label %bb.h, label %stbtt__buf_get8.exit.i43

bb.h:                                             ; preds = %stbtt__buf_get8.exit38
  %i.ao = add nsw i32 %.sroa.9.6, 1
  %i.ap = sext i32 %.sroa.9.6 to i64
  %i.aq = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !14
  %i.as = zext i8 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, 8
  br label %stbtt__buf_get8.exit.i43

stbtt__buf_get8.exit.i43:                         ; preds = %bb.h, %stbtt__buf_get8.exit38
  %.sroa.9.8 = phi i32 [ %i.ao, %bb.h ], [ %.sroa.9.6, %stbtt__buf_get8.exit38 ] ; 4 uses
  %.0.i.i44 = phi i32 [ %i.at, %bb.h ], [ 0, %stbtt__buf_get8.exit38 ] ; 2 uses
  %.not.i.i42.1 = icmp slt i32 %.sroa.9.8, %.sroa.24.0.copyload
  br i1 %.not.i.i42.1, label %bb.i, label %stbtt__buf_get8.exit.i43.1

bb.i:                                             ; preds = %stbtt__buf_get8.exit.i43
  %i.au = add nsw i32 %.sroa.9.8, 1
  %i.av = sext i32 %.sroa.9.8 to i64
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !14
  %i.ay = zext i8 %i.ax to i32
  %i.az = or disjoint i32 %.0.i.i44, %i.ay
  br label %stbtt__buf_get8.exit.i43.1

stbtt__buf_get8.exit.i43.1:                       ; preds = %bb.i, %stbtt__buf_get8.exit.i43
  %.sroa.9.8.1 = phi i32 [ %i.au, %bb.i ], [ %.sroa.9.8, %stbtt__buf_get8.exit.i43 ]
  %.0.i.i44.1 = phi i32 [ %i.az, %bb.i ], [ %.0.i.i44, %stbtt__buf_get8.exit.i43 ] ; 2 uses
  %.not = icmp sge i32 %1, %.068
  %i.ba = icmp slt i32 %1, %.0.i.i44.1
  %or.cond = select i1 %.not, i1 %i.ba, i1 false
  br i1 %or.cond, label %.split, label %stbtt__buf_get.exit35

.split:                                           ; preds = %stbtt__buf_get.exit35, %stbtt__buf_get8.exit.i43.1, %stbtt__buf_get8.exit, %stbtt__buf_get8.exit.i32.1, %stbtt__buf_get8.exit.thread, %bb.b
  %.020.sink = phi i32 [ -1, %stbtt__buf_get8.exit.i32.1 ], [ 0, %stbtt__buf_get8.exit.thread ], [ %i.l, %bb.b ], [ -1, %stbtt__buf_get8.exit ], [ %.0.i37, %stbtt__buf_get8.exit.i43.1 ], [ -1, %stbtt__buf_get.exit35 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = tail call { ptr, i64 } @stbtt__cff_index_get(ptr %i.bc, i64 %i.be, i32 noundef %.020.sink) ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bh = extractvalue { ptr, i64 } %i.bf, 0
  %i.bi = extractvalue { ptr, i64 } %i.bf, 1
  %i.bj = load ptr, ptr %i.bg, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = tail call { ptr, i64 } @stbtt__get_subrs(ptr %i.bj, i64 %i.bl, ptr %i.bh, i64 %i.bi)
  ret { ptr, i64 } %i.bm
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbtt__run_charstring(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca [48 x float], align 16            ; 46 uses
  %3 = alloca [10 x %struct.stbtt__buf], align 16 ; 4 uses
  %4 = alloca %struct.stbtt__buf, align 8         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.073.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !22
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i64, ptr %i.e, align 8
  %i.g = tail call { ptr, i64 } @stbtt__cff_index_get(ptr %i.d, i64 %i.f, i32 noundef %1) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1        ; 3 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !22
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store i64 %i.i, ptr %.sroa.469.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  %i.l = lshr i64 %i.i, 32
  %i.m = trunc nuw i64 %i.l to i32                ; 2 uses
  %i.n = icmp slt i32 %i.k, %i.m
  br i1 %i.n, label %stbtt__buf_get8.exit.lr.ph, label %.critedge

stbtt__buf_get8.exit.lr.ph:                       ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 44 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 16 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.3.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 12 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 30 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 12 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 12 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 12 uses
  %.phi.trans.insert.i309 = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 18 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %.sroa.gep.sroa.gep427 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.gep.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.gep430.sroa.gep433 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.gep430.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %stbtt__buf_get8.exit

stbtt__buf_get8.exit:                             ; preds = %stbtt__buf_get8.exit.lr.ph, %.thread
  %i.ah = phi i32 [ %i.m, %stbtt__buf_get8.exit.lr.ph ], [ %i.abt, %.thread ] ; 9 uses
  %i.ai = phi i32 [ %i.k, %stbtt__buf_get8.exit.lr.ph ], [ %i.abs, %.thread ] ; 6 uses
  %.0234368 = phi i32 [ 1, %stbtt__buf_get8.exit.lr.ph ], [ %.1235342, %.thread ] ; 22 uses
  %.0237367 = phi i32 [ 0, %stbtt__buf_get8.exit.lr.ph ], [ %.2239341, %.thread ] ; 26 uses
  %.0240366 = phi i32 [ 0, %stbtt__buf_get8.exit.lr.ph ], [ %.1241340, %.thread ] ; 28 uses
  %.sroa.073.0365 = phi ptr [ %.sroa.073.0.copyload, %stbtt__buf_get8.exit.lr.ph ], [ %.sroa.073.3339, %.thread ] ; 27 uses
  %.sroa.5.0364 = phi i64 [ %.sroa.5.0.copyload, %stbtt__buf_get8.exit.lr.ph ], [ %.sroa.5.3338, %.thread ] ; 27 uses
  %.0246363 = phi i32 [ 0, %stbtt__buf_get8.exit.lr.ph ], [ %.2248337, %.thread ] ; 26 uses
  %.0253360 = phi i32 [ 0, %stbtt__buf_get8.exit.lr.ph ], [ %i.abr, %.thread ] ; 45 uses
  %i.aj = load ptr, ptr %4, align 8, !tbaa !13    ; 6 uses
  %i.ak = add nsw i32 %i.ai, 1                    ; 7 uses
  store i32 %i.ak, ptr %.sroa.469.0..sroa_idx, align 8, !tbaa !8
  %i.al = sext i32 %i.ai to i64
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !14  ; 6 uses
  switch i8 %i.an, label %bb.ei [
    i8 19, label %bb.b
    i8 20, label %bb.b
    i8 1, label %bb.e
    i8 3, label %bb.e
    i8 18, label %bb.e
    i8 23, label %bb.e
    i8 21, label %bb.f
    i8 4, label %bb.h
    i8 22, label %bb.j
    i8 5, label %bb.l
    i8 7, label %bb.z
    i8 6, label %bb.aa
    i8 31, label %bb.bf
    i8 30, label %bb.bg
    i8 8, label %bb.bp
    i8 24, label %bb.bq
    i8 25, label %bb.cf
    i8 26, label %bb.cu
    i8 27, label %bb.cu
    i8 10, label %bb.cw
    i8 29, label %bb.cz
    i8 11, label %bb.di
    i8 14, label %bb.dk
    i8 12, label %bb.dz
  ]

bb.b:                                             ; preds = %stbtt__buf_get8.exit, %stbtt__buf_get8.exit
  %.not274 = icmp eq i32 %.0234368, 0
  br i1 %.not274, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = sdiv i32 %.0253360, 2
  %i.ap = add nsw i32 %.0237367, %i.ao
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1238 = phi i32 [ %i.ap, %bb.c ], [ %.0237367, %bb.b ] ; 2 uses
  %i.aq = add nsw i32 %.1238, 7
  %i.ar = sdiv i32 %i.aq, 8
  %i.as = add nsw i32 %i.ar, %i.ak                ; 2 uses
  %i.at = icmp slt i32 %i.as, 0
  %i.au = tail call i32 @llvm.smin.i32(i32 %i.as, i32 %i.ah)
  %..i.i = select i1 %i.at, i32 %i.ah, i32 %i.au
  store i32 %..i.i, ptr %.sroa.469.0..sroa_idx, align 8, !tbaa !8
  br label %.thread

bb.e:                                             ; preds = %stbtt__buf_get8.exit, %stbtt__buf_get8.exit, %stbtt__buf_get8.exit, %stbtt__buf_get8.exit
  %i.av = sdiv i32 %.0253360, 2
  %i.aw = add nsw i32 %.0237367, %i.av
  br label %.thread

bb.f:                                             ; preds = %stbtt__buf_get8.exit
  %i.ax = icmp slt i32 %.0253360, 2
  br i1 %i.ax, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = zext nneg i32 %.0253360 to i64
  %i.az = getelementptr [4 x i8], ptr %i.a, i64 %i.ay ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 -8
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !74
  %i.bc = getelementptr i8, ptr %i.az, i64 -4
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !74
  tail call void @stbtt__csctx_rmove_to(ptr noundef %2, float noundef %i.bb, float noundef %i.bd)
  br label %.thread

bb.h:                                             ; preds = %stbtt__buf_get8.exit
  %i.be = icmp slt i32 %.0253360, 1
  br i1 %i.be, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = zext nneg i32 %.0253360 to i64
  %i.bg = getelementptr [4 x i8], ptr %i.a, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 -4
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !74
  tail call void @stbtt__csctx_rmove_to(ptr noundef %2, float noundef 0.000000e+00, float noundef %i.bi)
  br label %.thread

bb.j:                                             ; preds = %stbtt__buf_get8.exit
  %i.bj = icmp slt i32 %.0253360, 1
  br i1 %i.bj, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = zext nneg i32 %.0253360 to i64
  %i.bl = getelementptr [4 x i8], ptr %i.a, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 -4
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !74
  tail call void @stbtt__csctx_rmove_to(ptr noundef %2, float noundef %i.bn, float noundef 0.000000e+00)
  br label %.thread

bb.l:                                             ; preds = %stbtt__buf_get8.exit
  %i.bo = icmp slt i32 %.0253360, 2
  br i1 %i.bo, label %.critedge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.l
  %i.bp = zext nneg i32 %.0253360 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %stbtt__csctx_rline_to.exit
  %indvars.iv423 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next424, %stbtt__csctx_rline_to.exit ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv423
  %i.br = load <2 x float>, ptr %i.bq, align 8, !tbaa !74
  %i.bs = load <2 x float>, ptr %i.x, align 8, !tbaa !74
  %i.bt = fadd <2 x float> %i.br, %i.bs           ; 2 uses
  store <2 x float> %i.bt, ptr %i.x, align 8, !tbaa !74
  %i.bu = fptosi <2 x float> %i.bt to <2 x i32>   ; 3 uses
  %i.bv = load i32, ptr %2, align 8, !tbaa !70
  %.not.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i, label %bb.y, label %bb.m

bb.m:                                             ; preds = %.preheader
  %i.bw = load i32, ptr %i.ab, align 4, !tbaa !65
  %i.bx = extractelement <2 x i32> %i.bu, i64 0   ; 4 uses
  %i.by = icmp slt i32 %i.bw, %i.bx
  br i1 %i.by, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = load i32, ptr %i.ac, align 4, !tbaa !66
  %.not.i.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  store i32 %i.bx, ptr %i.ab, align 4, !tbaa !65
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ca = load i32, ptr %i.ad, align 4, !tbaa !67
  %i.cb = extractelement <2 x i32> %i.bu, i64 1   ; 4 uses
  %i.cc = icmp slt i32 %i.ca, %i.cb
  br i1 %i.cc, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cd = load i32, ptr %i.ac, align 4, !tbaa !66
  %.not20.i.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not20.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  store i32 %i.cb, ptr %i.ad, align 4, !tbaa !67
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ce = load i32, ptr %i.ae, align 8, !tbaa !68
  %i.cf = icmp sgt i32 %i.ce, %i.bx
  br i1 %i.cf, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cg = load i32, ptr %i.ac, align 4, !tbaa !66
  %.not21.i.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not21.i.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  store i32 %i.bx, ptr %i.ae, align 8, !tbaa !68
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ch = load i32, ptr %i.af, align 8, !tbaa !69
  %i.ci = icmp sgt i32 %i.ch, %i.cb
  br i1 %i.ci, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = load i32, ptr %i.ac, align 4, !tbaa !66
  %.not22.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not22.i.i.i, label %bb.x, label %stbtt__track_vertex.exit.i.i

bb.x:                                             ; preds = %bb.w, %bb.v
  store i32 %i.cb, ptr %i.af, align 8, !tbaa !69
  br label %stbtt__track_vertex.exit.i.i

end_hunk_3
begin_hunk_4_@stbtt__run_charstring:bb.a
  %i.kj = load <2 x float>, ptr %i.x, align 8, !tbaa !74
  %i.kk = insertelement <2 x float> poison, float %i.kf, i64 0
  %i.kl = insertelement <2 x float> %i.kk, float %i.ki, i64 1
  %i.km = fadd <2 x float> %i.kl, %i.kj           ; 2 uses
  store <2 x float> %i.km, ptr %i.x, align 8, !tbaa !74
  %i.kn = fptosi <2 x float> %i.km to <2 x i32>   ; 3 uses
  %i.ko = load i32, ptr %2, align 8, !tbaa !70
  %.not.i.i294 = icmp eq i32 %i.ko, 0
  br i1 %.not.i.i294, label %bb.ce, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kp = load i32, ptr %i.ab, align 4, !tbaa !65
  %i.kq = extractelement <2 x i32> %i.kn, i64 0   ; 4 uses
  %i.kr = icmp slt i32 %i.kp, %i.kq
  br i1 %i.kr, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ks = load i32, ptr %i.ac, align 4, !tbaa !66
  %.not.i.i.i295 = icmp eq i32 %i.ks, 0
  br i1 %.not.i.i.i295, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  store i32 %i.kq, ptr %i.ab, align 4, !tbaa !65
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.kt = load i32, ptr %i.ad, align 4, !tbaa !67
  %i.ku = extractelement <2 x i32> %i.kn, i64 1   ; 4 uses
  %i.kv = icmp slt i32 %i.kt, %i.ku
  br i1 %i.kv, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.kw = load i32, ptr %i.ac, align 4, !tbaa !66
  %.not20.i.i.i296 = icmp eq i32 %i.kw, 0
  br i1 %.not20.i.i.i296, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  store i32 %i.ku, ptr %i.ad, align 4, !tbaa !67
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.kx = load i32, ptr %i.ae, align 8, !tbaa !68
  %i.ky = icmp sgt i32 %i.kx, %i.kq
  br i1 %i.ky, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.kz = load i32, ptr %i.ac, align 4, !tbaa !66
  %.not21.i.i.i297 = icmp eq i32 %i.kz, 0
  br i1 %.not21.i.i.i297, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz, %bb.by
  store i32 %i.kq, ptr %i.ae, align 8, !tbaa !68
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.la = load i32, ptr %i.af, align 8, !tbaa !69
  %i.lb = icmp sgt i32 %i.la, %i.ku
  br i1 %i.lb, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.lc = load i32, ptr %i.ac, align 4, !tbaa !66
  %.not22.i.i.i298 = icmp eq i32 %i.lc, 0
  br i1 %.not22.i.i.i298, label %bb.cd, label %stbtt__track_vertex.exit.i.i299

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  store i32 %i.ku, ptr %i.af, align 8, !tbaa !69
  br label %stbtt__track_vertex.exit.i.i299

stbtt__track_vertex.exit.i.i299:                  ; preds = %bb.cd, %bb.cc
  store i32 1, ptr %i.ac, align 4, !tbaa !66
  %.pre.i301 = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !43
  br label %stbtt__csctx_rline_to.exit302

bb.ce:                                            ; preds = %bb.br
  %i.ld = load ptr, ptr %i.ag, align 8, !tbaa !47
  %i.le = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !43 ; 2 uses
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds [14 x i8], ptr %i.ld, i64 %i.lf ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 12
  store i8 2, ptr %i.lh, align 2, !tbaa !48
  %i.li = trunc <2 x i32> %i.kn to <2 x i16>
  store <2 x i16> %i.li, ptr %i.lg, align 2, !tbaa !59
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  store i64 0, ptr %i.lj, align 2
  br label %stbtt__csctx_rline_to.exit302

stbtt__csctx_rline_to.exit302:                    ; preds = %stbtt__track_vertex.exit.i.i299, %bb.ce
  %i.lk = phi i32 [ %.pre.i301, %stbtt__track_vertex.exit.i.i299 ], [ %i.le, %bb.ce ]
  %i.ll = add nsw i32 %i.lk, 1
  store i32 %i.ll, ptr %.phi.trans.insert.i309, align 8, !tbaa !43
  br label %.thread

bb.cf:                                            ; preds = %stbtt__buf_get8.exit
  %i.lm = icmp slt i32 %.0253360, 8
  br i1 %i.lm, label %.critedge, label %.lr.ph351.preheader

.lr.ph351.preheader:                              ; preds = %bb.cf
  %i.ln = add nsw i32 %.0253360, -6
  %i.lo = zext nneg i32 %i.ln to i64
  br label %.lr.ph351

.lr.ph351:                                        ; preds = %.lr.ph351.preheader, %stbtt__csctx_rline_to.exit311
  %indvars.iv414 = phi i64 [ 0, %.lr.ph351.preheader ], [ %indvars.iv.next415, %stbtt__csctx_rline_to.exit311 ] ; 2 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv414
  %i.lq = load <2 x float>, ptr %i.lp, align 8, !tbaa !74
  %i.lr = load <2 x float>, ptr %i.x, align 8, !tbaa !74
  %i.ls = fadd <2 x float> %i.lq, %i.lr           ; 2 uses
  store <2 x float> %i.ls, ptr %i.x, align 8, !tbaa !74
  %i.lt = fptosi <2 x float> %i.ls to <2 x i32>   ; 3 uses
  %i.lu = load i32, ptr %2, align 8, !tbaa !70
  %.not.i.i303 = icmp eq i32 %i.lu, 0
  br i1 %.not.i.i303, label %bb.cs, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph351
  %i.lv = load i32, ptr %i.ab, align 4, !tbaa !65
  %i.lw = extractelement <2 x i32> %i.lt, i64 0   ; 4 uses
  %i.lx = icmp slt i32 %i.lv, %i.lw
  br i1 %i.lx, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ly = load i32, ptr %i.ac, align 4, !tbaa !66
  %.not.i.i.i304 = icmp eq i32 %i.ly, 0
  br i1 %.not.i.i.i304, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  store i32 %i.lw, ptr %i.ab, align 4, !tbaa !65
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.lz = load i32, ptr %i.ad, align 4, !tbaa !67
  %i.ma = extractelement <2 x i32> %i.lt, i64 1   ; 4 uses
  %i.mb = icmp slt i32 %i.lz, %i.ma
  br i1 %i.mb, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.mc = load i32, ptr %i.ac, align 4, !tbaa !66
  %.not20.i.i.i305 = icmp eq i32 %i.mc, 0
  br i1 %.not20.i.i.i305, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  store i32 %i.ma, ptr %i.ad, align 4, !tbaa !67
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.md = load i32, ptr %i.ae, align 8, !tbaa !68
  %i.me = icmp sgt i32 %i.md, %i.lw
  br i1 %i.me, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.mf = load i32, ptr %i.ac, align 4, !tbaa !66
  %.not21.i.i.i306 = icmp eq i32 %i.mf, 0
  br i1 %.not21.i.i.i306, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn, %bb.cm
  store i32 %i.lw, ptr %i.ae, align 8, !tbaa !68
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.mg = load i32, ptr %i.af, align 8, !tbaa !69
  %i.mh = icmp sgt i32 %i.mg, %i.ma
  br i1 %i.mh, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.mi = load i32, ptr %i.ac, align 4, !tbaa !66
  %.not22.i.i.i307 = icmp eq i32 %i.mi, 0
  br i1 %.not22.i.i.i307, label %bb.cr, label %stbtt__track_vertex.exit.i.i308

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  store i32 %i.ma, ptr %i.af, align 8, !tbaa !69
  br label %stbtt__track_vertex.exit.i.i308

stbtt__track_vertex.exit.i.i308:                  ; preds = %bb.cr, %bb.cq
  store i32 1, ptr %i.ac, align 4, !tbaa !66
  %.pre.i310 = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !43
  br label %stbtt__csctx_rline_to.exit311

bb.cs:                                            ; preds = %.lr.ph351
  %i.mj = load ptr, ptr %i.ag, align 8, !tbaa !47
  %i.mk = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !43 ; 2 uses
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr inbounds [14 x i8], ptr %i.mj, i64 %i.ml ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 12
  store i8 2, ptr %i.mn, align 2, !tbaa !48
  %i.mo = trunc <2 x i32> %i.lt to <2 x i16>
  store <2 x i16> %i.mo, ptr %i.mm, align 2, !tbaa !59
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 4
  store i64 0, ptr %i.mp, align 2
  br label %stbtt__csctx_rline_to.exit311

stbtt__csctx_rline_to.exit311:                    ; preds = %stbtt__track_vertex.exit.i.i308, %bb.cs
  %i.mq = phi i32 [ %.pre.i310, %stbtt__track_vertex.exit.i.i308 ], [ %i.mk, %bb.cs ]
  %i.mr = add nsw i32 %i.mq, 1
  store i32 %i.mr, ptr %.phi.trans.insert.i309, align 8, !tbaa !43
  %indvars.iv.next415 = add nuw nsw i64 %indvars.iv414, 2 ; 4 uses
  %i.ms = or disjoint i64 %indvars.iv.next415, 1
  %i.mt = icmp samesign ult i64 %i.ms, %i.lo
  br i1 %i.mt, label %.lr.ph351, label %._crit_edge, !llvm.loop !82

._crit_edge:                                      ; preds = %stbtt__csctx_rline_to.exit311
  %i.mu = trunc nuw nsw i64 %indvars.iv.next415 to i32
  %i.mv = add nuw nsw i32 %i.mu, 5                ; 2 uses
  %.not268 = icmp slt i32 %i.mv, %.0253360
  br i1 %.not268, label %bb.ct, label %.critedge

bb.ct:                                            ; preds = %._crit_edge
  %i.mw = add nuw i32 %.0253360, 2147483640
  %i.mx = and i32 %i.mw, 2147483646
  %narrow = add nuw i32 %i.mx, 3
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next415 ; 4 uses
  %i.mz = load float, ptr %i.my, align 4, !tbaa !74
  %i.na = zext nneg i32 %narrow to i64
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.na
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !74
  %i.nd = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %5 = load float, ptr %i.nd, align 4, !tbaa !74
  %i.ne = getelementptr inbounds nuw i8, ptr %i.my, i64 12
  %6 = load float, ptr %i.ne, align 4, !tbaa !74
  %7 = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  %8 = load float, ptr %7, align 4, !tbaa !74
  %9 = zext nneg i32 %i.mv to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !74
  %12 = load float, ptr %i.x, align 8, !tbaa !73
  %13 = fadd float %i.mz, %12                     ; 2 uses
  %14 = load float, ptr %i.y, align 4, !tbaa !75
  %15 = fadd float %i.nc, %14                     ; 2 uses
  %16 = fadd float %5, %13                        ; 2 uses
  %17 = fadd float %6, %15                        ; 2 uses
  %18 = fadd float %8, %16                        ; 2 uses
  store float %18, ptr %i.x, align 8, !tbaa !73
  %19 = fadd float %11, %17                       ; 2 uses
  store float %19, ptr %i.y, align 4, !tbaa !75
  %20 = fptosi float %18 to i32
  %i.nf = fptosi float %19 to i32
  %21 = fptosi float %13 to i32
  %i.ng = fptosi float %15 to i32
  %22 = fptosi float %16 to i32
  %i.nh = fptosi float %17 to i32
  tail call void @stbtt__csctx_v(ptr noundef nonnull %2, i8 noundef zeroext 4, i32 noundef %20, i32 noundef %i.nf, i32 noundef %21, i32 noundef %i.ng, i32 noundef %22, i32 noundef %i.nh)
  br label %.thread

bb.cu:                                            ; preds = %stbtt__buf_get8.exit, %stbtt__buf_get8.exit
  %i.ni = icmp slt i32 %.0253360, 4
  br i1 %i.ni, label %.critedge, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.8 = and i32 %.0253360, 1
  %i.nj = add nuw nsw i32 %.8, 3
  %i.nk = icmp samesign ult i32 %i.nj, %.0253360
  br i1 %i.nk, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.cv
  %.not267 = trunc i32 %.0253360 to i1            ; 6 uses
  %i.nl = load float, ptr %i.a, align 16
  %.0242 = select i1 %.not267, float %i.nl, float 0.000000e+00 ; 2 uses
  %i.nm = icmp eq i8 %i.an, 27
  %.not267.mask457 = and i32 %.0253360, 1
  %i.nn = zext nneg i32 %.not267.mask457 to i64   ; 6 uses
  %i.no = zext nneg i32 %.0253360 to i64          ; 3 uses
  %.val458 = load float, ptr %i.o, align 4        ; 3 uses
  %.val459 = load float, ptr %i.a, align 16
  %i.np = select i1 %.not267, float %.val458, float %.val459 ; 2 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.nn
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 12
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !74 ; 2 uses
  %i.nt = load float, ptr %i.x, align 8, !tbaa !73 ; 2 uses
  %i.nu = load float, ptr %i.y, align 4, !tbaa !75 ; 2 uses
  %i.nv = add nuw nsw i64 %i.nn, 7
  %i.nw = icmp samesign ult i64 %i.nv, %i.no      ; 2 uses
  br i1 %i.nm, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.sroa.gep.sroa.gep427.val = load float, ptr %.sroa.gep.sroa.gep427, align 8 ; 2 uses
  %i.nx = select i1 %.not267, float %.sroa.gep.sroa.gep427.val, float %.val458
  %.sroa.gep.sroa.gep.val = load float, ptr %.sroa.gep.sroa.gep, align 4
  %i.ny = select i1 %.not267, float %.sroa.gep.sroa.gep.val, float %.sroa.gep.sroa.gep427.val
  %i.nz = fadd float %.0242, %i.nt                ; 2 uses
  %i.oa = fadd float %i.np, %i.nu                 ; 2 uses
  %i.ob = fadd float %i.nx, %i.nz                 ; 2 uses
  %i.oc = fadd float %i.ny, %i.oa                 ; 2 uses
  %i.od = fadd float %i.ob, 0.000000e+00          ; 2 uses
  store float %i.od, ptr %i.x, align 8, !tbaa !73
  %i.oe = fadd float %i.ns, %i.oc                 ; 2 uses
  store float %i.oe, ptr %i.y, align 4, !tbaa !75
  %i.of = fptosi float %i.od to i32
  %i.og = fptosi float %i.oe to i32
  %i.oh = fptosi float %i.nz to i32
  %i.oi = fptosi float %i.oa to i32
  %i.oj = fptosi float %i.ob to i32
  %i.ok = fptosi float %i.oc to i32
  tail call void @stbtt__csctx_v(ptr noundef %2, i8 noundef zeroext 4, i32 noundef %i.of, i32 noundef %i.og, i32 noundef %i.oh, i32 noundef %i.oi, i32 noundef %i.oj, i32 noundef %i.ok)
  br i1 %i.nw, label %.lr.ph.split.peel.next, label %.thread

.lr.ph.split.peel.next:                           ; preds = %.lr.ph.split.preheader
  %indvars.iv.next.peel = add nuw nsw i64 %i.nn, 7
  %indvars.iv.next401.peel = or disjoint i64 %i.nn, 4
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %.sroa.gep430.sroa.gep433.val = load float, ptr %.sroa.gep430.sroa.gep433, align 8 ; 2 uses
  %i.ol = select i1 %.not267, float %.sroa.gep430.sroa.gep433.val, float %.val458
  %.sroa.gep430.sroa.gep.val = load float, ptr %.sroa.gep430.sroa.gep, align 4
  %i.om = select i1 %.not267, float %.sroa.gep430.sroa.gep.val, float %.sroa.gep430.sroa.gep433.val
  %i.on = fadd float %i.np, %i.nt                 ; 2 uses
  %i.oo = fadd float %.0242, %i.nu                ; 2 uses
  %i.op = fadd float %i.ol, %i.on                 ; 2 uses
  %i.oq = fadd float %i.om, %i.oo                 ; 2 uses
  %i.or = fadd float %i.ns, %i.op                 ; 2 uses
  store float %i.or, ptr %i.x, align 8, !tbaa !73
  %i.os = fadd float %i.oq, 0.000000e+00          ; 2 uses
  store float %i.os, ptr %i.y, align 4, !tbaa !75
  %i.ot = fptosi float %i.or to i32
  %i.ou = fptosi float %i.os to i32
  %i.ov = fptosi float %i.on to i32
  %i.ow = fptosi float %i.oo to i32
  %i.ox = fptosi float %i.op to i32
  %i.oy = fptosi float %i.oq to i32
  tail call void @stbtt__csctx_v(ptr noundef %2, i8 noundef zeroext 4, i32 noundef %i.ot, i32 noundef %i.ou, i32 noundef %i.ov, i32 noundef %i.ow, i32 noundef %i.ox, i32 noundef %i.oy)
  br i1 %i.nw, label %.lr.ph.split.us.peel.next, label %.thread

.lr.ph.split.us.peel.next:                        ; preds = %.lr.ph.split.us.preheader
  %indvars.iv.next407.peel = add nuw nsw i64 %i.nn, 7
  %indvars.iv.next409.peel = or disjoint i64 %i.nn, 4
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.peel.next, %.lr.ph.split.us
  %indvars.iv408 = phi i64 [ %indvars.iv.next409.peel, %.lr.ph.split.us.peel.next ], [ %indvars.iv.next409, %.lr.ph.split.us ] ; 3 uses
  %indvars.iv406 = phi i64 [ %indvars.iv.next407.peel, %.lr.ph.split.us.peel.next ], [ %indvars.iv.next407, %.lr.ph.split.us ] ; 2 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv408 ; 3 uses
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !74
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 4
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !74
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !74
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv406
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !74
  %i.ph = load float, ptr %i.x, align 8, !tbaa !73
  %i.pi = fadd float %i.pa, %i.ph                 ; 2 uses
  %i.pj = load float, ptr %i.y, align 4, !tbaa !75
  %i.pk = fadd float %i.pj, 0.000000e+00          ; 2 uses
  %i.pl = fadd float %i.pc, %i.pi                 ; 2 uses
  %i.pm = fadd float %i.pe, %i.pk                 ; 2 uses
  %i.pn = fadd float %i.pg, %i.pl                 ; 2 uses
  store float %i.pn, ptr %i.x, align 8, !tbaa !73
  store float %i.pm, ptr %i.y, align 4, !tbaa !75
  %i.po = fptosi float %i.pn to i32
  %i.pp = fptosi float %i.pm to i32               ; 2 uses
  %i.pq = fptosi float %i.pi to i32
  %i.pr = fptosi float %i.pk to i32
  %i.ps = fptosi float %i.pl to i32
  tail call void @stbtt__csctx_v(ptr noundef nonnull %2, i8 noundef zeroext 4, i32 noundef %i.po, i32 noundef %i.pp, i32 noundef %i.pq, i32 noundef %i.pr, i32 noundef %i.ps, i32 noundef %i.pp)
  %indvars.iv.next409 = add nuw nsw i64 %indvars.iv408, 4
  %i.pt = add nuw nsw i64 %indvars.iv408, 7
  %i.pu = icmp samesign ult i64 %i.pt, %i.no
  %indvars.iv.next407 = add nuw nsw i64 %indvars.iv406, 4
  br i1 %i.pu, label %.lr.ph.split.us, label %.thread, !llvm.loop !83

.lr.ph.split:                                     ; preds = %.lr.ph.split.peel.next, %.lr.ph.split
  %indvars.iv400 = phi i64 [ %indvars.iv.next401.peel, %.lr.ph.split.peel.next ], [ %indvars.iv.next401, %.lr.ph.split ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.peel, %.lr.ph.split.peel.next ], [ %indvars.iv.next, %.lr.ph.split ] ; 2 uses
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv400 ; 3 uses
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !74
  %i.px = getelementptr inbounds nuw i8, ptr %i.pv, i64 4
  %i.py = load float, ptr %i.px, align 4, !tbaa !74
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %i.qa = load float, ptr %i.pz, align 4, !tbaa !74
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !74
  %i.qd = load float, ptr %i.x, align 8, !tbaa !73
  %i.qe = fadd float %i.qd, 0.000000e+00          ; 2 uses
  %i.qf = load float, ptr %i.y, align 4, !tbaa !75
  %i.qg = fadd float %i.pw, %i.qf                 ; 2 uses
  %i.qh = fadd float %i.py, %i.qe                 ; 2 uses
  %i.qi = fadd float %i.qa, %i.qg                 ; 2 uses
  store float %i.qh, ptr %i.x, align 8, !tbaa !73
  %i.qj = fadd float %i.qc, %i.qi                 ; 2 uses
  store float %i.qj, ptr %i.y, align 4, !tbaa !75
  %i.qk = fptosi float %i.qh to i32               ; 2 uses
  %i.ql = fptosi float %i.qj to i32
  %i.qm = fptosi float %i.qe to i32
  %i.qn = fptosi float %i.qg to i32
  %i.qo = fptosi float %i.qi to i32
  tail call void @stbtt__csctx_v(ptr noundef nonnull %2, i8 noundef zeroext 4, i32 noundef %i.qk, i32 noundef %i.ql, i32 noundef %i.qm, i32 noundef %i.qn, i32 noundef %i.qk, i32 noundef %i.qo)
  %indvars.iv.next401 = add nuw nsw i64 %indvars.iv400, 4
  %i.qp = add nuw nsw i64 %indvars.iv400, 7
  %i.qq = icmp samesign ult i64 %i.qp, %i.no
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  br i1 %i.qq, label %.lr.ph.split, label %.thread, !llvm.loop !85

bb.cw:                                            ; preds = %stbtt__buf_get8.exit
  %.not = icmp eq i32 %.0246363, 0
  br i1 %.not, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %bb.cw
  %i.qr = load i32, ptr %i.z, align 4, !tbaa !86
  %.not266 = icmp eq i32 %i.qr, 0
  br i1 %.not266, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.qs = tail call { ptr, i64 } @stbtt__cid_get_glyph_subrs(ptr noundef nonnull %0, i32 noundef %1) ; 2 uses
  %i.qt = extractvalue { ptr, i64 } %i.qs, 0
  %i.qu = extractvalue { ptr, i64 } %i.qs, 1
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cx, %bb.cy, %bb.cw, %stbtt__buf_get8.exit
  %.1247 = phi i32 [ 1, %bb.cw ], [ %.0246363, %stbtt__buf_get8.exit ], [ 1, %bb.cy ], [ 1, %bb.cx ]
  %.sroa.5.2 = phi i64 [ %.sroa.5.0364, %bb.cw ], [ %.sroa.5.0364, %stbtt__buf_get8.exit ], [ %i.qu, %bb.cy ], [ %.sroa.5.0364, %bb.cx ] ; 2 uses
  %.sroa.073.2 = phi ptr [ %.sroa.073.0365, %bb.cw ], [ %.sroa.073.0365, %stbtt__buf_get8.exit ], [ %i.qt, %bb.cy ], [ %.sroa.073.0365, %bb.cx ] ; 2 uses
  %i.qv = icmp slt i32 %.0253360, 1
  br i1 %i.qv, label %.critedge, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.qw = add nsw i32 %.0253360, -1               ; 2 uses
  %i.qx = zext nneg i32 %i.qw to i64
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.qx
  %i.qz = load float, ptr %i.qy, align 4, !tbaa !74
  %i.ra = fptosi float %i.qz to i32
  %i.rb = icmp sgt i32 %.0240366, 9
  br i1 %i.rb, label %.critedge, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.rc = add nsw i32 %.0240366, 1
  %i.rd = sext i32 %.0240366 to i64
  %i.re = getelementptr inbounds [16 x i8], ptr %3, i64 %i.rd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.re, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !34
  %i.rf = icmp eq i8 %i.an, 10
  br i1 %i.rf, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %.sroa.0.0.copyload61 = load ptr, ptr %i.aa, align 8, !tbaa !22
  %.sroa.3.0.copyload63 = load i64, ptr %.sroa.3.0..sroa_idx62, align 8
  br label %bb.dd

bb.dd:                                            ; preds = %bb.db, %bb.dc
  %.sroa.3.0 = phi i64 [ %.sroa.3.0.copyload63, %bb.dc ], [ %.sroa.5.2, %bb.db ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload61, %bb.dc ], [ %.sroa.073.2, %bb.db ] ; 3 uses
  %.sroa.9.8.extract.shift.i = lshr i64 %.sroa.3.0, 32
  %.sroa.9.8.extract.trunc.i = trunc nuw i64 %.sroa.9.8.extract.shift.i to i32 ; 3 uses
  %i.rg = tail call i32 @llvm.smin.i32(i32 %.sroa.9.8.extract.trunc.i, i32 0) ; 2 uses
end_hunk_4
begin_hunk_5_@stbtt_PackEnd:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @stbtt_PackSetOversampling(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp ult i32 %1, 9
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %1, ptr %i.b, align 4, !tbaa !187
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = icmp ult i32 %2, 9
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %2, ptr %i.d, align 8, !tbaa !188
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @stbtt_PackSetSkipMissingCodepoints(ptr nofree noundef writeonly captures(none) initializes((32, 36)) %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %1, ptr %i.a, align 8, !tbaa !189
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbtt__h_prefilter(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #21 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 0, ptr %i.a, align 8
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph148, label %._crit_edge149

.lr.ph148:                                        ; preds = %bb.a
  %i.c = sub i32 %1, %4
  %i.d = zext i32 %4 to i64
  %.not113 = icmp slt i32 %i.c, 0                 ; 5 uses
  %i.e = sext i32 %3 to i64
  %i.f = add i32 %1, 1
  %i.g = sub i32 %i.f, %4                         ; 12 uses
  %wide.trip.count = zext i32 %i.g to i64
  %wide.trip.count172 = zext i32 %i.g to i64
  %wide.trip.count182 = zext i32 %i.g to i64      ; 6 uses
  %i.h = add nsw i64 %wide.trip.count182, -1      ; 2 uses
  %xtraiter = and i64 %wide.trip.count182, 1
  %i.i = icmp eq i64 %i.h, 0
  %unroll_iter = and i64 %wide.trip.count182, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod215 = trunc i32 %i.g to i1
  %xtraiter216 = and i64 %wide.trip.count182, 1
  %i.j = icmp eq i64 %i.h, 0
  %unroll_iter220 = and i64 %wide.trip.count182, 4294967294
  %lcmp.mod217.not = icmp eq i64 %xtraiter216, 0
  %lcmp.mod219 = trunc i32 %i.g to i1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph148, %._crit_edge
  %.095146 = phi i32 [ 0, %.lr.ph148 ], [ %i.fn, %._crit_edge ]
  %.096144 = phi ptr [ %0, %.lr.ph148 ], [ %i.fm, %._crit_edge ] ; 13 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.a, i8 0, i64 %i.d, i1 false)
  switch i32 %4, label %.preheader [
    i32 2, label %.preheader105
    i32 3, label %.preheader107
    i32 4, label %.preheader109
    i32 5, label %.preheader111
  ]

.preheader111:                                    ; preds = %bb.b
  br i1 %.not113, label %.loopexit, label %.lr.ph

.preheader109:                                    ; preds = %bb.b
  br i1 %.not113, label %.loopexit, label %.lr.ph120.preheader

.lr.ph120.preheader:                              ; preds = %.preheader109
  br i1 %i.i, label %.lr.ph120.epil.preheader, label %.lr.ph120

.preheader107:                                    ; preds = %bb.b
  br i1 %.not113, label %.loopexit, label %.lr.ph126

.preheader105:                                    ; preds = %bb.b
  br i1 %.not113, label %.loopexit, label %.lr.ph132.preheader

.lr.ph132.preheader:                              ; preds = %.preheader105
  br i1 %i.j, label %.lr.ph132.epil.preheader, label %.lr.ph132

.preheader:                                       ; preds = %bb.b
  br i1 %.not113, label %.loopexit, label %.lr.ph138

.lr.ph132:                                        ; preds = %.lr.ph132.preheader, %.lr.ph132
  %indvars.iv174 = phi i64 [ %indvars.iv.next175.1, %.lr.ph132 ], [ 0, %.lr.ph132.preheader ] ; 6 uses
  %.0131 = phi i32 [ %i.ag, %.lr.ph132 ], [ 0, %.lr.ph132.preheader ]
  %niter221 = phi i64 [ %niter221.next.1, %.lr.ph132 ], [ 0, %.lr.ph132.preheader ]
  %i.k = getelementptr inbounds nuw i8, ptr %.096144, i64 %indvars.iv174 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14    ; 2 uses
  %i.m = zext i8 %i.l to i32
  %i.n = and i64 %indvars.iv174, 6
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.n
  %i.p = load i8, ptr %i.o, align 2, !tbaa !14
  %i.q = zext i8 %i.p to i32
  %i.r = sub nsw i32 %i.m, %i.q
  %i.s = add i32 %i.r, %.0131                     ; 2 uses
  %i.t = add nuw i64 %indvars.iv174, 2
  %i.u = and i64 %i.t, 6
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.u
  store i8 %i.l, ptr %i.v, align 2, !tbaa !14
  %i.w = lshr i32 %i.s, 1
  %i.x = trunc i32 %i.w to i8
  store i8 %i.x, ptr %i.k, align 1, !tbaa !14
  %indvars.iv.next175 = or disjoint i64 %indvars.iv174, 1 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.096144, i64 %indvars.iv.next175 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !14    ; 2 uses
  %i.aa = zext i8 %i.z to i32
  %i.ab = and i64 %indvars.iv.next175, 7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !14
  %i.ae = zext i8 %i.ad to i32
  %i.af = sub nsw i32 %i.aa, %i.ae
  %i.ag = add i32 %i.af, %i.s                     ; 4 uses
  %i.ah = add nuw i64 %indvars.iv174, 3
  %i.ai = and i64 %i.ah, 7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ai
  store i8 %i.z, ptr %i.aj, align 1, !tbaa !14
  %i.ak = lshr i32 %i.ag, 1
  %i.al = trunc i32 %i.ak to i8
  store i8 %i.al, ptr %i.y, align 1, !tbaa !14
  %indvars.iv.next175.1 = add nuw nsw i64 %indvars.iv174, 2 ; 2 uses
  %niter221.next.1 = add nuw i64 %niter221, 2     ; 2 uses
  %niter221.ncmp.1 = icmp eq i64 %niter221.next.1, %unroll_iter220
  br i1 %niter221.ncmp.1, label %.loopexit.loopexit206.unr-lcssa, label %.lr.ph132, !llvm.loop !190

.lr.ph126:                                        ; preds = %.preheader107, %.lr.ph126
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %.lr.ph126 ], [ 0, %.preheader107 ] ; 4 uses
  %.1125 = phi i32 [ %i.au, %.lr.ph126 ], [ 0, %.preheader107 ]
  %i.am = getelementptr inbounds nuw i8, ptr %.096144, i64 %indvars.iv169 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !14  ; 2 uses
  %i.ao = zext i8 %i.an to i32
  %i.ap = and i64 %indvars.iv169, 7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !14
  %i.as = zext i8 %i.ar to i32
  %i.at = sub nsw i32 %i.ao, %i.as
  %i.au = add i32 %i.at, %.1125                   ; 3 uses
  %i.av = add nuw i64 %indvars.iv169, 3
  %i.aw = and i64 %i.av, 7
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aw
  store i8 %i.an, ptr %i.ax, align 1, !tbaa !14
  %i.ay = udiv i32 %i.au, 3
  %i.az = trunc i32 %i.ay to i8
  store i8 %i.az, ptr %i.am, align 1, !tbaa !14
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 2 uses
  %exitcond173.not = icmp eq i64 %indvars.iv.next170, %wide.trip.count172
  br i1 %exitcond173.not, label %.loopexit, label %.lr.ph126, !llvm.loop !191

.lr.ph120:                                        ; preds = %.lr.ph120.preheader, %.lr.ph120
  %indvars.iv164 = phi i64 [ %indvars.iv.next165.1, %.lr.ph120 ], [ 0, %.lr.ph120.preheader ] ; 5 uses
  %.2119 = phi i32 [ %i.bx, %.lr.ph120 ], [ 0, %.lr.ph120.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph120 ], [ 0, %.lr.ph120.preheader ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.096144, i64 %indvars.iv164 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !14  ; 2 uses
  %i.bc = zext i8 %i.bb to i32
  %i.bd = and i64 %indvars.iv164, 6
  %i.be = and i64 %indvars.iv164, 6
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !14
  %i.bh = zext i8 %i.bg to i32
  %i.bi = sub nsw i32 %i.bc, %i.bh
  %i.bj = add i32 %i.bi, %.2119                   ; 2 uses
  %i.bk = xor i64 %i.bd, 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bk
  store i8 %i.bb, ptr %i.bl, align 2, !tbaa !14
  %i.bm = lshr i32 %i.bj, 2
  %i.bn = trunc i32 %i.bm to i8
  store i8 %i.bn, ptr %i.ba, align 1, !tbaa !14
  %indvars.iv.next165 = or disjoint i64 %indvars.iv164, 1 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.096144, i64 %indvars.iv.next165 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !14  ; 2 uses
  %i.bq = zext i8 %i.bp to i32
  %i.br = and i64 %indvars.iv.next165, 7
  %i.bs = and i64 %indvars.iv.next165, 7
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !14
  %i.bv = zext i8 %i.bu to i32
  %i.bw = sub nsw i32 %i.bq, %i.bv
  %i.bx = add i32 %i.bw, %i.bj                    ; 4 uses
  %i.by = xor i64 %i.br, 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.by
  store i8 %i.bp, ptr %i.bz, align 1, !tbaa !14
  %i.ca = lshr i32 %i.bx, 2
  %i.cb = trunc i32 %i.ca to i8
  store i8 %i.cb, ptr %i.bo, align 1, !tbaa !14
  %indvars.iv.next165.1 = add nuw nsw i64 %indvars.iv164, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit208.unr-lcssa, label %.lr.ph120, !llvm.loop !192

.lr.ph:                                           ; preds = %.preheader111, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader111 ] ; 4 uses
  %.3115 = phi i32 [ %i.ck, %.lr.ph ], [ 0, %.preheader111 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.096144, i64 %indvars.iv ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !14  ; 2 uses
  %i.ce = zext i8 %i.cd to i32
  %i.cf = and i64 %indvars.iv, 7
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !14
  %i.ci = zext i8 %i.ch to i32
  %i.cj = sub nsw i32 %i.ce, %i.ci
  %i.ck = add i32 %i.cj, %.3115                   ; 3 uses
  %i.cl = add nuw i64 %indvars.iv, 5
  %i.cm = and i64 %i.cl, 7
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cm
  store i8 %i.cd, ptr %i.cn, align 1, !tbaa !14
  %i.co = udiv i32 %i.ck, 5
  %i.cp = trunc i32 %i.co to i8
  store i8 %i.cp, ptr %i.cc, align 1, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !193

.lr.ph138:                                        ; preds = %.preheader, %.lr.ph138
  %indvars.iv179 = phi i64 [ %indvars.iv.next180, %.lr.ph138 ], [ 0, %.preheader ] ; 4 uses
  %.4137 = phi i32 [ %i.cz, %.lr.ph138 ], [ 0, %.preheader ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.096144, i64 %indvars.iv179 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !14  ; 2 uses
  %i.cs = zext i8 %i.cr to i32
  %i.ct = trunc nuw nsw i64 %indvars.iv179 to i32
  %i.cu = and i64 %indvars.iv179, 7
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !14
  %i.cx = zext i8 %i.cw to i32
  %i.cy = sub nsw i32 %i.cs, %i.cx
  %i.cz = add i32 %i.cy, %.4137                   ; 3 uses
  %i.da = add i32 %4, %i.ct
  %i.db = and i32 %i.da, 7
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dc
  store i8 %i.cr, ptr %i.dd, align 1, !tbaa !14
  %i.de = udiv i32 %i.cz, %4
  %i.df = trunc i32 %i.de to i8
  store i8 %i.df, ptr %i.cq, align 1, !tbaa !14
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %exitcond183.not = icmp eq i64 %indvars.iv.next180, %wide.trip.count182
  br i1 %exitcond183.not, label %.loopexit, label %.lr.ph138, !llvm.loop !194

.loopexit.loopexit206.unr-lcssa:                  ; preds = %.lr.ph132
  br i1 %lcmp.mod217.not, label %.loopexit, label %.lr.ph132.epil.preheader

.lr.ph132.epil.preheader:                         ; preds = %.loopexit.loopexit206.unr-lcssa, %.lr.ph132.preheader
  %indvars.iv174.epil.init = phi i64 [ 0, %.lr.ph132.preheader ], [ %indvars.iv.next175.1, %.loopexit.loopexit206.unr-lcssa ] ; 3 uses
  %.0131.epil.init = phi i32 [ 0, %.lr.ph132.preheader ], [ %i.ag, %.loopexit.loopexit206.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod219)
  %i.dg = getelementptr inbounds nuw i8, ptr %.096144, i64 %indvars.iv174.epil.init ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !14  ; 2 uses
  %i.di = zext i8 %i.dh to i32
  %i.dj = and i64 %indvars.iv174.epil.init, 7
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !14
  %i.dm = zext i8 %i.dl to i32
  %i.dn = sub nsw i32 %i.di, %i.dm
  %i.do = add i32 %i.dn, %.0131.epil.init         ; 2 uses
  %i.dp = add nuw i64 %indvars.iv174.epil.init, 2
  %i.dq = and i64 %i.dp, 7
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dq
  store i8 %i.dh, ptr %i.dr, align 1, !tbaa !14
  %i.ds = lshr i32 %i.do, 1
  %i.dt = trunc i32 %i.ds to i8
  store i8 %i.dt, ptr %i.dg, align 1, !tbaa !14
  br label %.loopexit

.loopexit.loopexit208.unr-lcssa:                  ; preds = %.lr.ph120
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph120.epil.preheader

.lr.ph120.epil.preheader:                         ; preds = %.loopexit.loopexit208.unr-lcssa, %.lr.ph120.preheader
  %indvars.iv164.epil.init = phi i64 [ 0, %.lr.ph120.preheader ], [ %indvars.iv.next165.1, %.loopexit.loopexit208.unr-lcssa ] ; 3 uses
  %.2119.epil.init = phi i32 [ 0, %.lr.ph120.preheader ], [ %i.bx, %.loopexit.loopexit208.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod215)
  %i.du = getelementptr inbounds nuw i8, ptr %.096144, i64 %indvars.iv164.epil.init ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !14  ; 2 uses
  %i.dw = zext i8 %i.dv to i32
  %i.dx = and i64 %indvars.iv164.epil.init, 7
  %i.dy = and i64 %indvars.iv164.epil.init, 7
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !14
  %i.eb = zext i8 %i.ea to i32
  %i.ec = sub nsw i32 %i.dw, %i.eb
  %i.ed = add i32 %i.ec, %.2119.epil.init         ; 2 uses
  %i.ee = xor i64 %i.dx, 4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ee
  store i8 %i.dv, ptr %i.ef, align 1, !tbaa !14
  %i.eg = lshr i32 %i.ed, 2
  %i.eh = trunc i32 %i.eg to i8
  store i8 %i.eh, ptr %i.du, align 1, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph120.epil.preheader, %.loopexit.loopexit208.unr-lcssa, %.lr.ph126, %.lr.ph132.epil.preheader, %.loopexit.loopexit206.unr-lcssa, %.lr.ph138, %.preheader111, %.preheader109, %.preheader107, %.preheader105, %.preheader
  %.593 = phi i32 [ %i.g, %.lr.ph126 ], [ %i.g, %.lr.ph120.epil.preheader ], [ %i.g, %.lr.ph138 ], [ %i.g, %.lr.ph132.epil.preheader ], [ 0, %.preheader ], [ 0, %.preheader105 ], [ 0, %.preheader107 ], [ 0, %.preheader109 ], [ 0, %.preheader111 ], [ %i.g, %.loopexit.loopexit206.unr-lcssa ], [ %i.g, %.loopexit.loopexit208.unr-lcssa ], [ %i.g, %.lr.ph ] ; 4 uses
  %.5 = phi i32 [ %i.au, %.lr.ph126 ], [ %i.ed, %.lr.ph120.epil.preheader ], [ %i.cz, %.lr.ph138 ], [ %i.do, %.lr.ph132.epil.preheader ], [ 0, %.preheader ], [ 0, %.preheader105 ], [ 0, %.preheader107 ], [ 0, %.preheader109 ], [ 0, %.preheader111 ], [ %i.ag, %.loopexit.loopexit206.unr-lcssa ], [ %i.bx, %.loopexit.loopexit208.unr-lcssa ], [ %i.ck, %.lr.ph ] ; 2 uses
  %i.ei = icmp slt i32 %.593, %1
  br i1 %i.ei, label %.lr.ph143.preheader, label %._crit_edge

.lr.ph143.preheader:                              ; preds = %.loopexit
  %i.ej = zext i32 %.593 to i64                   ; 4 uses
  %i.ek = sub i32 %1, %.593
  %.neg = add i32 %.593, 1
  %xtraiter222 = and i32 %i.ek, 1
  %lcmp.mod223.not = icmp eq i32 %xtraiter222, 0
  br i1 %lcmp.mod223.not, label %.lr.ph143.prol.loopexit, label %.lr.ph143.prol

.lr.ph143.prol:                                   ; preds = %.lr.ph143.preheader
  %i.el = and i64 %i.ej, 7
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !14
  %i.eo = zext i8 %i.en to i32
  %i.ep = sub i32 %.5, %i.eo                      ; 2 uses
  %i.eq = udiv i32 %i.ep, %4
  %i.er = trunc i32 %i.eq to i8
  %i.es = getelementptr inbounds nuw i8, ptr %.096144, i64 %i.ej
  store i8 %i.er, ptr %i.es, align 1, !tbaa !14
  %indvars.iv.next185.prol = add nuw nsw i64 %i.ej, 1
  br label %.lr.ph143.prol.loopexit

.lr.ph143.prol.loopexit:                          ; preds = %.lr.ph143.prol, %.lr.ph143.preheader
  %indvars.iv184.unr = phi i64 [ %i.ej, %.lr.ph143.preheader ], [ %indvars.iv.next185.prol, %.lr.ph143.prol ]
  %.6142.unr = phi i32 [ %.5, %.lr.ph143.preheader ], [ %i.ep, %.lr.ph143.prol ]
  %i.et = icmp eq i32 %1, %.neg
  br i1 %i.et, label %._crit_edge, label %.lr.ph143

.lr.ph143:                                        ; preds = %.lr.ph143.prol.loopexit, %.lr.ph143
  %indvars.iv184 = phi i64 [ %indvars.iv.next185.1, %.lr.ph143 ], [ %indvars.iv184.unr, %.lr.ph143.prol.loopexit ] ; 4 uses
  %.6142 = phi i32 [ %i.fg, %.lr.ph143 ], [ %.6142.unr, %.lr.ph143.prol.loopexit ]
  %i.eu = and i64 %indvars.iv184, 7
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !14
  %i.ex = zext i8 %i.ew to i32
  %i.ey = sub i32 %.6142, %i.ex                   ; 2 uses
  %i.ez = udiv i32 %i.ey, %4
  %i.fa = trunc i32 %i.ez to i8
  %i.fb = getelementptr inbounds nuw i8, ptr %.096144, i64 %indvars.iv184
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !14
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %i.fc = and i64 %indvars.iv.next185, 7
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !14
  %i.ff = zext i8 %i.fe to i32
  %i.fg = sub i32 %i.ey, %i.ff                    ; 2 uses
  %i.fh = udiv i32 %i.fg, %4
  %i.fi = trunc i32 %i.fh to i8
  %i.fj = getelementptr inbounds nuw i8, ptr %.096144, i64 %indvars.iv.next185
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !14
  %indvars.iv.next185.1 = add nuw nsw i64 %indvars.iv184, 2 ; 2 uses
  %i.fk = trunc nuw i64 %indvars.iv.next185.1 to i32
  %i.fl = icmp sgt i32 %1, %i.fk
  br i1 %i.fl, label %.lr.ph143, label %._crit_edge, !llvm.loop !195

._crit_edge:                                      ; preds = %.lr.ph143.prol.loopexit, %.lr.ph143, %.loopexit
  %i.fm = getelementptr inbounds i8, ptr %.096144, i64 %i.e
  %i.fn = add nuw nsw i32 %.095146, 1             ; 2 uses
  %exitcond187.not = icmp eq i32 %i.fn, %2
  br i1 %exitcond187.not, label %._crit_edge149, label %bb.b, !llvm.loop !196

._crit_edge149:                                   ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbtt__v_prefilter(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #21 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 0, ptr %i.a, align 8
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph163, label %._crit_edge164

.lr.ph163:                                        ; preds = %bb.a
  %i.c = sub i32 %2, %4
  %i.d = zext i32 %4 to i64
  %.not128 = icmp slt i32 %i.c, 0                 ; 5 uses
  %i.e = sext i32 %3 to i64                       ; 8 uses
  %i.f = add i32 %2, 1
  %i.g = sub i32 %i.f, %4                         ; 10 uses
  %wide.trip.count = zext i32 %i.g to i64
  %wide.trip.count182 = zext i32 %i.g to i64
  %wide.trip.count187 = zext i32 %i.g to i64
  %wide.trip.count192 = zext i32 %i.g to i64
  %wide.trip.count197 = zext i32 %i.g to i64
  %wide.trip.count202 = sext i32 %2 to i64        ; 3 uses
  %i.h = add nsw i64 %wide.trip.count202, -1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph163, %._crit_edge
  %.0110161 = phi i32 [ 0, %.lr.ph163 ], [ %i.dn, %._crit_edge ]
  %.0111159 = phi ptr [ %0, %.lr.ph163 ], [ %i.dm, %._crit_edge ] ; 9 uses
end_hunk_5
begin_hunk_6_@stbtt_PackFontRangesRenderIntoRects:bb.a
  %i.hm = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.hl)
  %i.hn = fptosi <2 x float> %i.hm to <2 x i32>
  br label %stbtt_GetGlyphBitmapBox.exit

stbtt_GetGlyphBitmapBox.exit:                     ; preds = %bb.m, %bb.l, %bb.q, %stbtt_GetGlyphBox.exit
  %.pre-phi301 = phi float [ %i.fb, %bb.m ], [ %i.fb, %bb.l ], [ %i.fb, %bb.q ], [ %.pre300.pre-phi, %stbtt_GetGlyphBox.exit ]
  %.pre-phi297 = phi float [ %i.fa, %bb.m ], [ %i.fa, %bb.l ], [ %i.fa, %bb.q ], [ %.pre296.pre-phi, %stbtt_GetGlyphBox.exit ]
  %i.ho = phi i32 [ %i.eo, %bb.m ], [ %i.eo, %bb.l ], [ %i.eo, %bb.q ], [ %.pre264, %stbtt_GetGlyphBox.exit ]
  %i.hp = phi i32 [ %i.dm, %bb.m ], [ %i.dm, %bb.l ], [ %i.dm, %bb.q ], [ %.pre263, %stbtt_GetGlyphBox.exit ]
  %i.hq = phi i32 [ %i.eq, %bb.m ], [ %i.eq, %bb.l ], [ %i.eq, %bb.q ], [ %.pre262, %stbtt_GetGlyphBox.exit ]
  %i.hr = phi i32 [ %i.dl, %bb.m ], [ %i.dl, %bb.l ], [ %i.dl, %bb.q ], [ %.pre261, %stbtt_GetGlyphBox.exit ]
  %i.hs = phi i32 [ %i.dk, %bb.m ], [ %i.dk, %bb.l ], [ %i.dk, %bb.q ], [ %.pre260, %stbtt_GetGlyphBox.exit ]
  %i.ht = phi i32 [ %i.dh, %bb.m ], [ %i.dh, %bb.l ], [ %i.dh, %bb.q ], [ %.pre, %stbtt_GetGlyphBox.exit ]
  %i.hu = phi <2 x i32> [ zeroinitializer, %bb.m ], [ zeroinitializer, %bb.l ], [ zeroinitializer, %bb.q ], [ %i.hn, %stbtt_GetGlyphBox.exit ] ; 3 uses
  %i.hv = load ptr, ptr %i.s, align 8, !tbaa !182
  %i.hw = sext i32 %i.ht to i64
  %i.hx = getelementptr inbounds i8, ptr %i.hv, i64 %i.hw
  %i.hy = load i32, ptr %i.t, align 8, !tbaa !186 ; 2 uses
  %i.hz = mul nsw i32 %i.hy, %i.hs
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds i8, ptr %i.hx, i64 %i.ia
  %i.ic = add i32 %i.hr, 1
  %i.id = sub i32 %i.ic, %i.hq
  %i.ie = add i32 %i.hp, 1
  %i.if = sub i32 %i.ie, %i.ho
  call void @stbtt_MakeGlyphBitmapSubpixel(ptr noundef nonnull %1, ptr noundef %i.ib, i32 noundef %i.id, i32 noundef %i.if, i32 noundef %i.hy, float noundef %.pre-phi297, float noundef %.pre-phi301, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef %i.de)
  %i.ig = load i32, ptr %i.c, align 4, !tbaa !187 ; 9 uses
  %i.ih = icmp ugt i32 %i.ig, 1
  %.pre266.pre279 = load i32, ptr %i.cn, align 4, !tbaa !171 ; 3 uses
  %.pre268.pre281 = load i32, ptr %i.di, align 4, !tbaa !172 ; 3 uses
  %.pre270.pre283 = load i32, ptr %i.cq, align 4, !tbaa !168 ; 7 uses
  %.pre272.pre285 = load i32, ptr %i.cs, align 4, !tbaa !170 ; 4 uses
  br i1 %i.ih, label %bb.s, label %bb.u

bb.s:                                             ; preds = %stbtt_GetGlyphBitmapBox.exit
  %i.ii = load ptr, ptr %i.s, align 8, !tbaa !182
  %i.ij = load i32, ptr %i.t, align 8, !tbaa !186 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 0, ptr %i.b, align 8
  %i.ik = icmp sgt i32 %.pre272.pre285, 0
  br i1 %i.ik, label %.lr.ph148.i, label %stbtt__h_prefilter.exit

.lr.ph148.i:                                      ; preds = %bb.s
  %i.il = sext i32 %.pre266.pre279 to i64
  %i.im = getelementptr inbounds i8, ptr %i.ii, i64 %i.il
  %i.in = mul nsw i32 %i.ij, %.pre268.pre281
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds i8, ptr %i.im, i64 %i.io
  %i.iq = sub i32 %.pre270.pre283, %i.ig          ; 2 uses
  %i.ir = zext i32 %i.ig to i64
  %.not113.i = icmp slt i32 %i.iq, 0              ; 5 uses
  %i.is = sext i32 %i.ij to i64
  %i.it = add i32 %i.iq, 1                        ; 10 uses
  %wide.trip.count.i = zext i32 %i.it to i64      ; 8 uses
  %i.iu = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.iv = icmp eq i64 %i.iu, 0
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod374 = trunc i32 %i.it to i1
  %xtraiter375 = and i64 %wide.trip.count.i, 1
  %i.iw = icmp eq i64 %i.iu, 0
  %unroll_iter379 = and i64 %wide.trip.count.i, 4294967294
  %lcmp.mod376.not = icmp eq i64 %xtraiter375, 0
  %lcmp.mod378 = trunc i32 %i.it to i1
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.i, %.lr.ph148.i
  %.095146.i = phi i32 [ 0, %.lr.ph148.i ], [ %i.ox, %._crit_edge.i ]
  %.096144.i = phi ptr [ %i.ip, %.lr.ph148.i ], [ %i.ow, %._crit_edge.i ] ; 13 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.b, i8 0, i64 %i.ir, i1 false)
  switch i32 %i.ig, label %.preheader.i [
    i32 2, label %.preheader105.i
    i32 3, label %.preheader107.i
    i32 4, label %.preheader109.i
    i32 5, label %.preheader111.i
  ]

.preheader111.i:                                  ; preds = %bb.t
  br i1 %.not113.i, label %.loopexit.i, label %.lr.ph.i

.preheader109.i:                                  ; preds = %bb.t
  br i1 %.not113.i, label %.loopexit.i, label %.lr.ph120.i.preheader

.lr.ph120.i.preheader:                            ; preds = %.preheader109.i
  br i1 %i.iv, label %.lr.ph120.i.epil.preheader, label %.lr.ph120.i

.preheader107.i:                                  ; preds = %bb.t
  br i1 %.not113.i, label %.loopexit.i, label %.lr.ph126.i

.preheader105.i:                                  ; preds = %bb.t
  br i1 %.not113.i, label %.loopexit.i, label %.lr.ph132.i.preheader

.lr.ph132.i.preheader:                            ; preds = %.preheader105.i
  br i1 %i.iw, label %.lr.ph132.i.epil.preheader, label %.lr.ph132.i

.preheader.i:                                     ; preds = %bb.t
  br i1 %.not113.i, label %.loopexit.i, label %.lr.ph138.i

.lr.ph132.i:                                      ; preds = %.lr.ph132.i.preheader, %.lr.ph132.i
  %indvars.iv174.i = phi i64 [ %indvars.iv.next175.i.1, %.lr.ph132.i ], [ 0, %.lr.ph132.i.preheader ] ; 6 uses
  %.0131.i = phi i32 [ %i.jt, %.lr.ph132.i ], [ 0, %.lr.ph132.i.preheader ]
  %niter380 = phi i64 [ %niter380.next.1, %.lr.ph132.i ], [ 0, %.lr.ph132.i.preheader ]
  %i.ix = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %indvars.iv174.i ; 2 uses
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !14  ; 2 uses
  %i.iz = zext i8 %i.iy to i32
  %i.ja = and i64 %indvars.iv174.i, 6
  %i.jb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ja
  %i.jc = load i8, ptr %i.jb, align 2, !tbaa !14
  %i.jd = zext i8 %i.jc to i32
  %i.je = sub nsw i32 %i.iz, %i.jd
  %i.jf = add i32 %i.je, %.0131.i                 ; 2 uses
  %i.jg = add nuw nsw i64 %indvars.iv174.i, 2
  %i.jh = and i64 %i.jg, 6
  %i.ji = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jh
  store i8 %i.iy, ptr %i.ji, align 2, !tbaa !14
  %i.jj = lshr i32 %i.jf, 1
  %i.jk = trunc i32 %i.jj to i8
  store i8 %i.jk, ptr %i.ix, align 1, !tbaa !14
  %indvars.iv.next175.i = or disjoint i64 %indvars.iv174.i, 1 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %indvars.iv.next175.i ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !14  ; 2 uses
  %i.jn = zext i8 %i.jm to i32
  %i.jo = and i64 %indvars.iv.next175.i, 7
  %i.jp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !14
  %i.jr = zext i8 %i.jq to i32
  %i.js = sub nsw i32 %i.jn, %i.jr
  %i.jt = add i32 %i.js, %i.jf                    ; 4 uses
  %i.ju = add nuw nsw i64 %indvars.iv174.i, 3
  %i.jv = and i64 %i.ju, 7
  %i.jw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jv
  store i8 %i.jm, ptr %i.jw, align 1, !tbaa !14
  %i.jx = lshr i32 %i.jt, 1
  %i.jy = trunc i32 %i.jx to i8
  store i8 %i.jy, ptr %i.jl, align 1, !tbaa !14
  %indvars.iv.next175.i.1 = add nuw nsw i64 %indvars.iv174.i, 2 ; 2 uses
  %niter380.next.1 = add nuw i64 %niter380, 2     ; 2 uses
  %niter380.ncmp.1 = icmp eq i64 %niter380.next.1, %unroll_iter379
  br i1 %niter380.ncmp.1, label %.loopexit.i.loopexit360.unr-lcssa, label %.lr.ph132.i, !llvm.loop !190

.lr.ph126.i:                                      ; preds = %.preheader107.i, %.lr.ph126.i
  %indvars.iv169.i = phi i64 [ %indvars.iv.next170.i, %.lr.ph126.i ], [ 0, %.preheader107.i ] ; 4 uses
  %.1125.i = phi i32 [ %i.kh, %.lr.ph126.i ], [ 0, %.preheader107.i ]
  %i.jz = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %indvars.iv169.i ; 2 uses
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !14  ; 2 uses
  %i.kb = zext i8 %i.ka to i32
  %i.kc = and i64 %indvars.iv169.i, 7
  %i.kd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.kc
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !14
  %i.kf = zext i8 %i.ke to i32
  %i.kg = sub nsw i32 %i.kb, %i.kf
  %i.kh = add i32 %i.kg, %.1125.i                 ; 3 uses
  %i.ki = add nuw nsw i64 %indvars.iv169.i, 3
  %i.kj = and i64 %i.ki, 7
  %i.kk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.kj
  store i8 %i.ka, ptr %i.kk, align 1, !tbaa !14
  %i.kl = udiv i32 %i.kh, 3
  %i.km = trunc i32 %i.kl to i8
  store i8 %i.km, ptr %i.jz, align 1, !tbaa !14
  %indvars.iv.next170.i = add nuw nsw i64 %indvars.iv169.i, 1 ; 2 uses
  %exitcond173.not.i = icmp eq i64 %indvars.iv.next170.i, %wide.trip.count.i
  br i1 %exitcond173.not.i, label %.loopexit.i, label %.lr.ph126.i, !llvm.loop !191

.lr.ph120.i:                                      ; preds = %.lr.ph120.i.preheader, %.lr.ph120.i
  %indvars.iv164.i = phi i64 [ %indvars.iv.next165.i.1, %.lr.ph120.i ], [ 0, %.lr.ph120.i.preheader ] ; 4 uses
  %.2119.i = phi i32 [ %i.li, %.lr.ph120.i ], [ 0, %.lr.ph120.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph120.i ], [ 0, %.lr.ph120.i.preheader ]
  %i.kn = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %indvars.iv164.i ; 2 uses
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !14  ; 2 uses
  %i.kp = zext i8 %i.ko to i32
  %i.kq = and i64 %indvars.iv164.i, 6             ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.kq
  %i.ks = load i8, ptr %i.kr, align 2, !tbaa !14
  %i.kt = zext i8 %i.ks to i32
  %i.ku = sub nsw i32 %i.kp, %i.kt
  %i.kv = add i32 %i.ku, %.2119.i                 ; 2 uses
  %i.kw = xor i64 %i.kq, 4
  %i.kx = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.kw
  store i8 %i.ko, ptr %i.kx, align 2, !tbaa !14
  %i.ky = lshr i32 %i.kv, 2
  %i.kz = trunc i32 %i.ky to i8
  store i8 %i.kz, ptr %i.kn, align 1, !tbaa !14
  %indvars.iv.next165.i = or disjoint i64 %indvars.iv164.i, 1 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %indvars.iv.next165.i ; 2 uses
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !14  ; 2 uses
  %i.lc = zext i8 %i.lb to i32
  %i.ld = and i64 %indvars.iv.next165.i, 7        ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ld
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !14
  %i.lg = zext i8 %i.lf to i32
  %i.lh = sub nsw i32 %i.lc, %i.lg
  %i.li = add i32 %i.lh, %i.kv                    ; 4 uses
  %i.lj = xor i64 %i.ld, 4
  %i.lk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.lj
  store i8 %i.lb, ptr %i.lk, align 1, !tbaa !14
  %i.ll = lshr i32 %i.li, 2
  %i.lm = trunc i32 %i.ll to i8
  store i8 %i.lm, ptr %i.la, align 1, !tbaa !14
  %indvars.iv.next165.i.1 = add nuw nsw i64 %indvars.iv164.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit362.unr-lcssa, label %.lr.ph120.i, !llvm.loop !192

.lr.ph.i:                                         ; preds = %.preheader111.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader111.i ] ; 4 uses
  %.3115.i = phi i32 [ %i.lv, %.lr.ph.i ], [ 0, %.preheader111.i ]
  %i.ln = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %indvars.iv.i ; 2 uses
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !14  ; 2 uses
  %i.lp = zext i8 %i.lo to i32
  %i.lq = and i64 %indvars.iv.i, 7
  %i.lr = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.lq
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !14
  %i.lt = zext i8 %i.ls to i32
  %i.lu = sub nsw i32 %i.lp, %i.lt
  %i.lv = add i32 %i.lu, %.3115.i                 ; 3 uses
  %i.lw = add nuw nsw i64 %indvars.iv.i, 5
  %i.lx = and i64 %i.lw, 7
  %i.ly = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.lx
  store i8 %i.lo, ptr %i.ly, align 1, !tbaa !14
  %i.lz = udiv i32 %i.lv, 5
  %i.ma = trunc i32 %i.lz to i8
  store i8 %i.ma, ptr %i.ln, align 1, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !193

.lr.ph138.i:                                      ; preds = %.preheader.i, %.lr.ph138.i
  %indvars.iv179.i = phi i64 [ %indvars.iv.next180.i, %.lr.ph138.i ], [ 0, %.preheader.i ] ; 4 uses
  %.4137.i = phi i32 [ %i.mk, %.lr.ph138.i ], [ 0, %.preheader.i ]
  %i.mb = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %indvars.iv179.i ; 2 uses
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !14  ; 2 uses
  %i.md = zext i8 %i.mc to i32
  %i.me = trunc nuw nsw i64 %indvars.iv179.i to i32
  %i.mf = and i64 %indvars.iv179.i, 7
  %i.mg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.mf
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !14
  %i.mi = zext i8 %i.mh to i32
  %i.mj = sub nsw i32 %i.md, %i.mi
  %i.mk = add i32 %i.mj, %.4137.i                 ; 3 uses
  %i.ml = add i32 %i.ig, %i.me
  %i.mm = and i32 %i.ml, 7
  %i.mn = zext nneg i32 %i.mm to i64
  %i.mo = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.mn
  store i8 %i.mc, ptr %i.mo, align 1, !tbaa !14
  %i.mp = udiv i32 %i.mk, %i.ig
  %i.mq = trunc i32 %i.mp to i8
  store i8 %i.mq, ptr %i.mb, align 1, !tbaa !14
  %indvars.iv.next180.i = add nuw nsw i64 %indvars.iv179.i, 1 ; 2 uses
  %exitcond183.not.i = icmp eq i64 %indvars.iv.next180.i, %wide.trip.count.i
  br i1 %exitcond183.not.i, label %.loopexit.i, label %.lr.ph138.i, !llvm.loop !194

.loopexit.i.loopexit360.unr-lcssa:                ; preds = %.lr.ph132.i
  br i1 %lcmp.mod376.not, label %.loopexit.i, label %.lr.ph132.i.epil.preheader

.lr.ph132.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit360.unr-lcssa, %.lr.ph132.i.preheader
  %indvars.iv174.i.epil.init = phi i64 [ 0, %.lr.ph132.i.preheader ], [ %indvars.iv.next175.i.1, %.loopexit.i.loopexit360.unr-lcssa ] ; 3 uses
  %.0131.i.epil.init = phi i32 [ 0, %.lr.ph132.i.preheader ], [ %i.jt, %.loopexit.i.loopexit360.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod378)
  %i.mr = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %indvars.iv174.i.epil.init ; 2 uses
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !14  ; 2 uses
  %i.mt = zext i8 %i.ms to i32
  %i.mu = and i64 %indvars.iv174.i.epil.init, 7
  %i.mv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.mu
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !14
  %i.mx = zext i8 %i.mw to i32
  %i.my = sub nsw i32 %i.mt, %i.mx
  %i.mz = add i32 %i.my, %.0131.i.epil.init       ; 2 uses
  %i.na = add nuw nsw i64 %indvars.iv174.i.epil.init, 2
  %i.nb = and i64 %i.na, 7
  %i.nc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.nb
  store i8 %i.ms, ptr %i.nc, align 1, !tbaa !14
  %i.nd = lshr i32 %i.mz, 1
  %i.ne = trunc i32 %i.nd to i8
  store i8 %i.ne, ptr %i.mr, align 1, !tbaa !14
  br label %.loopexit.i

.loopexit.i.loopexit362.unr-lcssa:                ; preds = %.lr.ph120.i
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph120.i.epil.preheader

.lr.ph120.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit362.unr-lcssa, %.lr.ph120.i.preheader
  %indvars.iv164.i.epil.init = phi i64 [ 0, %.lr.ph120.i.preheader ], [ %indvars.iv.next165.i.1, %.loopexit.i.loopexit362.unr-lcssa ] ; 2 uses
  %.2119.i.epil.init = phi i32 [ 0, %.lr.ph120.i.preheader ], [ %i.li, %.loopexit.i.loopexit362.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod374)
  %i.nf = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %indvars.iv164.i.epil.init ; 2 uses
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !14  ; 2 uses
  %i.nh = zext i8 %i.ng to i32
  %i.ni = and i64 %indvars.iv164.i.epil.init, 7   ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ni
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !14
  %i.nl = zext i8 %i.nk to i32
  %i.nm = sub nsw i32 %i.nh, %i.nl
  %i.nn = add i32 %i.nm, %.2119.i.epil.init       ; 2 uses
  %i.no = xor i64 %i.ni, 4
  %i.np = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.no
  store i8 %i.ng, ptr %i.np, align 1, !tbaa !14
  %i.nq = lshr i32 %i.nn, 2
  %i.nr = trunc i32 %i.nq to i8
  store i8 %i.nr, ptr %i.nf, align 1, !tbaa !14
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %.lr.ph120.i.epil.preheader, %.loopexit.i.loopexit362.unr-lcssa, %.lr.ph126.i, %.lr.ph132.i.epil.preheader, %.loopexit.i.loopexit360.unr-lcssa, %.lr.ph138.i, %.preheader.i, %.preheader105.i, %.preheader107.i, %.preheader109.i, %.preheader111.i
  %.593.i = phi i32 [ %i.it, %.lr.ph138.i ], [ %i.it, %.lr.ph132.i.epil.preheader ], [ %i.it, %.lr.ph126.i ], [ %i.it, %.lr.ph120.i.epil.preheader ], [ 0, %.preheader.i ], [ 0, %.preheader105.i ], [ 0, %.preheader107.i ], [ 0, %.preheader109.i ], [ 0, %.preheader111.i ], [ %i.it, %.loopexit.i.loopexit360.unr-lcssa ], [ %i.it, %.loopexit.i.loopexit362.unr-lcssa ], [ %i.it, %.lr.ph.i ] ; 4 uses
  %.5.i = phi i32 [ %i.mk, %.lr.ph138.i ], [ %i.mz, %.lr.ph132.i.epil.preheader ], [ %i.kh, %.lr.ph126.i ], [ %i.nn, %.lr.ph120.i.epil.preheader ], [ 0, %.preheader.i ], [ 0, %.preheader105.i ], [ 0, %.preheader107.i ], [ 0, %.preheader109.i ], [ 0, %.preheader111.i ], [ %i.jt, %.loopexit.i.loopexit360.unr-lcssa ], [ %i.li, %.loopexit.i.loopexit362.unr-lcssa ], [ %i.lv, %.lr.ph.i ] ; 2 uses
  %i.ns = icmp slt i32 %.593.i, %.pre270.pre283
  br i1 %i.ns, label %.lr.ph143.preheader.i, label %._crit_edge.i

.lr.ph143.preheader.i:                            ; preds = %.loopexit.i
  %i.nt = zext i32 %.593.i to i64                 ; 4 uses
  %i.nu = sub i32 %.pre270.pre283, %.593.i
  %.neg = add i32 %.593.i, 1
  %xtraiter381 = and i32 %i.nu, 1
  %lcmp.mod382.not = icmp eq i32 %xtraiter381, 0
  br i1 %lcmp.mod382.not, label %.lr.ph143.i.prol.loopexit, label %.lr.ph143.i.prol

.lr.ph143.i.prol:                                 ; preds = %.lr.ph143.preheader.i
  %i.nv = and i64 %i.nt, 7
  %i.nw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.nv
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !14
  %i.ny = zext i8 %i.nx to i32
  %i.nz = sub i32 %.5.i, %i.ny                    ; 2 uses
  %i.oa = udiv i32 %i.nz, %i.ig
  %i.ob = trunc i32 %i.oa to i8
  %i.oc = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %i.nt
  store i8 %i.ob, ptr %i.oc, align 1, !tbaa !14
  %indvars.iv.next185.i.prol = add nuw nsw i64 %i.nt, 1
  br label %.lr.ph143.i.prol.loopexit

.lr.ph143.i.prol.loopexit:                        ; preds = %.lr.ph143.i.prol, %.lr.ph143.preheader.i
  %indvars.iv184.i.unr = phi i64 [ %i.nt, %.lr.ph143.preheader.i ], [ %indvars.iv.next185.i.prol, %.lr.ph143.i.prol ]
  %.6142.i.unr = phi i32 [ %.5.i, %.lr.ph143.preheader.i ], [ %i.nz, %.lr.ph143.i.prol ]
  %i.od = icmp eq i32 %.pre270.pre283, %.neg
  br i1 %i.od, label %._crit_edge.i, label %.lr.ph143.i

.lr.ph143.i:                                      ; preds = %.lr.ph143.i.prol.loopexit, %.lr.ph143.i
  %indvars.iv184.i = phi i64 [ %indvars.iv.next185.i.1, %.lr.ph143.i ], [ %indvars.iv184.i.unr, %.lr.ph143.i.prol.loopexit ] ; 4 uses
  %.6142.i = phi i32 [ %i.oq, %.lr.ph143.i ], [ %.6142.i.unr, %.lr.ph143.i.prol.loopexit ]
  %i.oe = and i64 %indvars.iv184.i, 7
  %i.of = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.oe
  %i.og = load i8, ptr %i.of, align 1, !tbaa !14
  %i.oh = zext i8 %i.og to i32
  %i.oi = sub i32 %.6142.i, %i.oh                 ; 2 uses
  %i.oj = udiv i32 %i.oi, %i.ig
  %i.ok = trunc i32 %i.oj to i8
  %i.ol = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %indvars.iv184.i
  store i8 %i.ok, ptr %i.ol, align 1, !tbaa !14
  %indvars.iv.next185.i = add nuw nsw i64 %indvars.iv184.i, 1 ; 2 uses
  %i.om = and i64 %indvars.iv.next185.i, 7
  %i.on = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.om
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !14
  %i.op = zext i8 %i.oo to i32
  %i.oq = sub i32 %i.oi, %i.op                    ; 2 uses
  %i.or = udiv i32 %i.oq, %i.ig
  %i.os = trunc i32 %i.or to i8
  %i.ot = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %indvars.iv.next185.i
  store i8 %i.os, ptr %i.ot, align 1, !tbaa !14
  %indvars.iv.next185.i.1 = add nuw nsw i64 %indvars.iv184.i, 2 ; 2 uses
  %i.ou = trunc nuw i64 %indvars.iv.next185.i.1 to i32
  %i.ov = icmp sgt i32 %.pre270.pre283, %i.ou
  br i1 %i.ov, label %.lr.ph143.i, label %._crit_edge.i, !llvm.loop !195

._crit_edge.i:                                    ; preds = %.lr.ph143.i.prol.loopexit, %.lr.ph143.i, %.loopexit.i
  %i.ow = getelementptr inbounds i8, ptr %.096144.i, i64 %i.is
  %i.ox = add nuw nsw i32 %.095146.i, 1           ; 2 uses
  %exitcond187.not.i = icmp eq i32 %i.ox, %.pre272.pre285
  br i1 %exitcond187.not.i, label %stbtt__h_prefilter.exit.loopexit, label %bb.t, !llvm.loop !196

stbtt__h_prefilter.exit.loopexit:                 ; preds = %._crit_edge.i
  %.pre266.pre.pre = load i32, ptr %i.cn, align 4, !tbaa !171
  %.pre268.pre.pre = load i32, ptr %i.di, align 4, !tbaa !172
  %.pre270.pre.pre = load i32, ptr %i.cq, align 4, !tbaa !168
  %.pre272.pre.pre = load i32, ptr %i.cs, align 4, !tbaa !170
  br label %stbtt__h_prefilter.exit

stbtt__h_prefilter.exit:                          ; preds = %stbtt__h_prefilter.exit.loopexit, %bb.s
  %.pre272.pre = phi i32 [ %.pre272.pre.pre, %stbtt__h_prefilter.exit.loopexit ], [ %.pre272.pre285, %bb.s ]
  %.pre270.pre = phi i32 [ %.pre270.pre.pre, %stbtt__h_prefilter.exit.loopexit ], [ %.pre270.pre283, %bb.s ]
  %.pre268.pre = phi i32 [ %.pre268.pre.pre, %stbtt__h_prefilter.exit.loopexit ], [ %.pre268.pre281, %bb.s ]
  %.pre266.pre = phi i32 [ %.pre266.pre.pre, %stbtt__h_prefilter.exit.loopexit ], [ %.pre266.pre279, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %bb.u

bb.u:                                             ; preds = %stbtt__h_prefilter.exit, %stbtt_GetGlyphBitmapBox.exit
  %.pre272 = phi i32 [ %.pre272.pre, %stbtt__h_prefilter.exit ], [ %.pre272.pre285, %stbtt_GetGlyphBitmapBox.exit ] ; 6 uses
  %.pre270 = phi i32 [ %.pre270.pre, %stbtt__h_prefilter.exit ], [ %.pre270.pre283, %stbtt_GetGlyphBitmapBox.exit ] ; 4 uses
  %.pre268 = phi i32 [ %.pre268.pre, %stbtt__h_prefilter.exit ], [ %.pre268.pre281, %stbtt_GetGlyphBitmapBox.exit ] ; 3 uses
  %.pre266 = phi i32 [ %.pre266.pre, %stbtt__h_prefilter.exit ], [ %.pre266.pre279, %stbtt_GetGlyphBitmapBox.exit ] ; 3 uses
  %i.oy = load i32, ptr %i.d, align 8, !tbaa !188 ; 10 uses
  %i.oz = icmp ugt i32 %i.oy, 1
  br i1 %i.oz, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.pa = load ptr, ptr %i.s, align 8, !tbaa !182
  %i.pb = load i32, ptr %i.t, align 8, !tbaa !186 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 0, ptr %i.a, align 8
  %i.pc = icmp sgt i32 %.pre270, 0
  br i1 %i.pc, label %.lr.ph163.i, label %stbtt__v_prefilter.exit

.lr.ph163.i:                                      ; preds = %bb.v
  %i.pd = sext i32 %.pre266 to i64
  %i.pe = getelementptr inbounds i8, ptr %i.pa, i64 %i.pd
  %i.pf = mul nsw i32 %i.pb, %.pre268
  %i.pg = sext i32 %i.pf to i64
  %i.ph = getelementptr inbounds i8, ptr %i.pe, i64 %i.pg
  %i.pi = sub i32 %.pre272, %i.oy                 ; 2 uses
  %i.pj = zext i32 %i.oy to i64
  %.not128.i = icmp slt i32 %i.pi, 0              ; 5 uses
  %i.pk = sext i32 %i.pb to i64                   ; 10 uses
  %i.pl = add i32 %i.pi, 1                        ; 8 uses
  %wide.trip.count.i158 = zext i32 %i.pl to i64   ; 6 uses
  %wide.trip.count202.i = sext i32 %.pre272 to i64 ; 3 uses
  %xtraiter383 = and i64 %wide.trip.count.i158, 1
  %i.pm = icmp eq i32 %.pre272, %i.oy
  %unroll_iter387 = and i64 %wide.trip.count.i158, 4294967294
  %lcmp.mod384.not = icmp eq i64 %xtraiter383, 0
  %lcmp.mod386 = trunc i32 %i.pl to i1
  %i.pn = add nsw i64 %wide.trip.count202.i, -1
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge.i166, %.lr.ph163.i
  %.0110161.i = phi i32 [ 0, %.lr.ph163.i ], [ %i.uu, %._crit_edge.i166 ]
  %.0111159.i = phi ptr [ %i.ph, %.lr.ph163.i ], [ %i.ut, %._crit_edge.i166 ] ; 11 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.a, i8 0, i64 %i.pj, i1 false)
  switch i32 %i.oy, label %.preheader.i172 [
    i32 2, label %.preheader120.i
    i32 3, label %.preheader122.i
    i32 4, label %.preheader124.i
    i32 5, label %.preheader126.i
  ]

.preheader126.i:                                  ; preds = %bb.w
  br i1 %.not128.i, label %.loopexit.i164, label %.lr.ph.i160

.preheader124.i:                                  ; preds = %bb.w
  br i1 %.not128.i, label %.loopexit.i164, label %.lr.ph135.i.preheader

.lr.ph135.i.preheader:                            ; preds = %.preheader124.i
  br i1 %i.pm, label %.lr.ph135.i.epil.preheader, label %.lr.ph135.i

.preheader122.i:                                  ; preds = %bb.w
  br i1 %.not128.i, label %.loopexit.i164, label %.lr.ph141.i

.preheader120.i:                                  ; preds = %bb.w
  br i1 %.not128.i, label %.loopexit.i164, label %.lr.ph147.i

.preheader.i172:                                  ; preds = %bb.w
  br i1 %.not128.i, label %.loopexit.i164, label %.lr.ph153.i

.lr.ph147.i:                                      ; preds = %.preheader120.i, %.lr.ph147.i
  %indvars.iv189.i = phi i64 [ %indvars.iv.next190.i, %.lr.ph147.i ], [ 0, %.preheader120.i ] ; 4 uses
  %.0146.i = phi i32 [ %i.px, %.lr.ph147.i ], [ 0, %.preheader120.i ]
  %i.po = mul nsw i64 %indvars.iv189.i, %i.pk
  %i.pp = getelementptr inbounds i8, ptr %.0111159.i, i64 %i.po ; 2 uses
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !14  ; 2 uses
  %i.pr = zext i8 %i.pq to i32
  %i.ps = and i64 %indvars.iv189.i, 7
  %i.pt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ps
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !14
  %i.pv = zext i8 %i.pu to i32
  %i.pw = sub nsw i32 %i.pr, %i.pv
  %i.px = add i32 %i.pw, %.0146.i                 ; 3 uses
  %i.py = add nuw nsw i64 %indvars.iv189.i, 2
  %i.pz = and i64 %i.py, 7
  %i.qa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.pz
  store i8 %i.pq, ptr %i.qa, align 1, !tbaa !14
  %i.qb = lshr i32 %i.px, 1
  %i.qc = trunc i32 %i.qb to i8
  store i8 %i.qc, ptr %i.pp, align 1, !tbaa !14
  %indvars.iv.next190.i = add nuw nsw i64 %indvars.iv189.i, 1 ; 2 uses
  %exitcond193.not.i = icmp eq i64 %indvars.iv.next190.i, %wide.trip.count.i158
  br i1 %exitcond193.not.i, label %.loopexit.i164, label %.lr.ph147.i, !llvm.loop !197

.lr.ph141.i:                                      ; preds = %.preheader122.i, %.lr.ph141.i
  %indvars.iv184.i170 = phi i64 [ %indvars.iv.next185.i171, %.lr.ph141.i ], [ 0, %.preheader122.i ] ; 4 uses
  %.1140.i = phi i32 [ %i.qm, %.lr.ph141.i ], [ 0, %.preheader122.i ]
  %i.qd = mul nsw i64 %indvars.iv184.i170, %i.pk
  %i.qe = getelementptr inbounds i8, ptr %.0111159.i, i64 %i.qd ; 2 uses
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !14  ; 2 uses
  %i.qg = zext i8 %i.qf to i32
  %i.qh = and i64 %indvars.iv184.i170, 7
  %i.qi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.qh
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !14
  %i.qk = zext i8 %i.qj to i32
  %i.ql = sub nsw i32 %i.qg, %i.qk
  %i.qm = add i32 %i.ql, %.1140.i                 ; 3 uses
  %i.qn = add nuw nsw i64 %indvars.iv184.i170, 3
  %i.qo = and i64 %i.qn, 7
  %i.qp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.qo
  store i8 %i.qf, ptr %i.qp, align 1, !tbaa !14
  %i.qq = udiv i32 %i.qm, 3
  %i.qr = trunc i32 %i.qq to i8
  store i8 %i.qr, ptr %i.qe, align 1, !tbaa !14
  %indvars.iv.next185.i171 = add nuw nsw i64 %indvars.iv184.i170, 1 ; 2 uses
  %exitcond188.not.i = icmp eq i64 %indvars.iv.next185.i171, %wide.trip.count.i158
  br i1 %exitcond188.not.i, label %.loopexit.i164, label %.lr.ph141.i, !llvm.loop !198

.lr.ph135.i:                                      ; preds = %.lr.ph135.i.preheader, %.lr.ph135.i
  %indvars.iv179.i167 = phi i64 [ %indvars.iv.next180.i168.1, %.lr.ph135.i ], [ 0, %.lr.ph135.i.preheader ] ; 4 uses
  %.2134.i = phi i32 [ %i.rp, %.lr.ph135.i ], [ 0, %.lr.ph135.i.preheader ]
  %niter388 = phi i64 [ %niter388.next.1, %.lr.ph135.i ], [ 0, %.lr.ph135.i.preheader ]
  %i.qs = mul nsw i64 %indvars.iv179.i167, %i.pk
  %i.qt = getelementptr inbounds i8, ptr %.0111159.i, i64 %i.qs ; 2 uses
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !14  ; 2 uses
  %i.qv = zext i8 %i.qu to i32
  %i.qw = and i64 %indvars.iv179.i167, 6          ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.qw
  %i.qy = load i8, ptr %i.qx, align 2, !tbaa !14
  %i.qz = zext i8 %i.qy to i32
  %i.ra = sub nsw i32 %i.qv, %i.qz
  %i.rb = add i32 %i.ra, %.2134.i                 ; 2 uses
  %i.rc = xor i64 %i.qw, 4
  %i.rd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rc
  store i8 %i.qu, ptr %i.rd, align 2, !tbaa !14
  %i.re = lshr i32 %i.rb, 2
  %i.rf = trunc i32 %i.re to i8
  store i8 %i.rf, ptr %i.qt, align 1, !tbaa !14
  %indvars.iv.next180.i168 = or disjoint i64 %indvars.iv179.i167, 1 ; 2 uses
  %i.rg = mul nsw i64 %indvars.iv.next180.i168, %i.pk
  %i.rh = getelementptr inbounds i8, ptr %.0111159.i, i64 %i.rg ; 2 uses
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !14  ; 2 uses
  %i.rj = zext i8 %i.ri to i32
  %i.rk = and i64 %indvars.iv.next180.i168, 7     ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rk
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !14
  %i.rn = zext i8 %i.rm to i32
  %i.ro = sub nsw i32 %i.rj, %i.rn
  %i.rp = add i32 %i.ro, %i.rb                    ; 4 uses
  %i.rq = xor i64 %i.rk, 4
  %i.rr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rq
  store i8 %i.ri, ptr %i.rr, align 1, !tbaa !14
  %i.rs = lshr i32 %i.rp, 2
  %i.rt = trunc i32 %i.rs to i8
  store i8 %i.rt, ptr %i.rh, align 1, !tbaa !14
  %indvars.iv.next180.i168.1 = add nuw nsw i64 %indvars.iv179.i167, 2 ; 2 uses
  %niter388.next.1 = add i64 %niter388, 2         ; 2 uses
  %niter388.ncmp.1 = icmp eq i64 %niter388.next.1, %unroll_iter387
  br i1 %niter388.ncmp.1, label %.loopexit.i164.loopexit358.unr-lcssa, label %.lr.ph135.i, !llvm.loop !199

.lr.ph.i160:                                      ; preds = %.preheader126.i, %.lr.ph.i160
  %indvars.iv.i161 = phi i64 [ %indvars.iv.next.i162, %.lr.ph.i160 ], [ 0, %.preheader126.i ] ; 4 uses
  %.3130.i = phi i32 [ %i.sd, %.lr.ph.i160 ], [ 0, %.preheader126.i ]
  %i.ru = mul nsw i64 %indvars.iv.i161, %i.pk
  %i.rv = getelementptr inbounds i8, ptr %.0111159.i, i64 %i.ru ; 2 uses
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !14  ; 2 uses
  %i.rx = zext i8 %i.rw to i32
  %i.ry = and i64 %indvars.iv.i161, 7
  %i.rz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ry
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !14
  %i.sb = zext i8 %i.sa to i32
  %i.sc = sub nsw i32 %i.rx, %i.sb
  %i.sd = add i32 %i.sc, %.3130.i                 ; 3 uses
  %i.se = add nuw nsw i64 %indvars.iv.i161, 5
  %i.sf = and i64 %i.se, 7
  %i.sg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.sf
  store i8 %i.rw, ptr %i.sg, align 1, !tbaa !14
  %i.sh = udiv i32 %i.sd, 5
  %i.si = trunc i32 %i.sh to i8
  store i8 %i.si, ptr %i.rv, align 1, !tbaa !14
  %indvars.iv.next.i162 = add nuw nsw i64 %indvars.iv.i161, 1 ; 2 uses
  %exitcond.not.i163 = icmp eq i64 %indvars.iv.next.i162, %wide.trip.count.i158
  br i1 %exitcond.not.i163, label %.loopexit.i164, label %.lr.ph.i160, !llvm.loop !200

.lr.ph153.i:                                      ; preds = %.preheader.i172, %.lr.ph153.i
  %indvars.iv194.i = phi i64 [ %indvars.iv.next195.i, %.lr.ph153.i ], [ 0, %.preheader.i172 ] ; 4 uses
  %.4152.i = phi i32 [ %i.st, %.lr.ph153.i ], [ 0, %.preheader.i172 ]
  %i.sj = mul nsw i64 %indvars.iv194.i, %i.pk
  %i.sk = getelementptr inbounds i8, ptr %.0111159.i, i64 %i.sj ; 2 uses
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !14  ; 2 uses
  %i.sm = zext i8 %i.sl to i32
  %i.sn = trunc nuw nsw i64 %indvars.iv194.i to i32
  %i.so = and i64 %indvars.iv194.i, 7
  %i.sp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.so
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !14
  %i.sr = zext i8 %i.sq to i32
  %i.ss = sub nsw i32 %i.sm, %i.sr
  %i.st = add i32 %i.ss, %.4152.i                 ; 3 uses
  %i.su = add i32 %i.oy, %i.sn
  %i.sv = and i32 %i.su, 7
  %i.sw = zext nneg i32 %i.sv to i64
  %i.sx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.sw
  store i8 %i.sl, ptr %i.sx, align 1, !tbaa !14
  %i.sy = udiv i32 %i.st, %i.oy
  %i.sz = trunc i32 %i.sy to i8
  store i8 %i.sz, ptr %i.sk, align 1, !tbaa !14
  %indvars.iv.next195.i = add nuw nsw i64 %indvars.iv194.i, 1 ; 2 uses
  %exitcond198.not.i = icmp eq i64 %indvars.iv.next195.i, %wide.trip.count.i158
  br i1 %exitcond198.not.i, label %.loopexit.i164, label %.lr.ph153.i, !llvm.loop !201

.loopexit.i164.loopexit358.unr-lcssa:             ; preds = %.lr.ph135.i
  br i1 %lcmp.mod384.not, label %.loopexit.i164, label %.lr.ph135.i.epil.preheader

.lr.ph135.i.epil.preheader:                       ; preds = %.loopexit.i164.loopexit358.unr-lcssa, %.lr.ph135.i.preheader
  %indvars.iv179.i167.epil.init = phi i64 [ 0, %.lr.ph135.i.preheader ], [ %indvars.iv.next180.i168.1, %.loopexit.i164.loopexit358.unr-lcssa ] ; 2 uses
  %.2134.i.epil.init = phi i32 [ 0, %.lr.ph135.i.preheader ], [ %i.rp, %.loopexit.i164.loopexit358.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod386)
  %i.ta = mul nsw i64 %indvars.iv179.i167.epil.init, %i.pk
  %i.tb = getelementptr inbounds i8, ptr %.0111159.i, i64 %i.ta ; 2 uses
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !14  ; 2 uses
  %i.td = zext i8 %i.tc to i32
  %i.te = and i64 %indvars.iv179.i167.epil.init, 7 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.te
  %i.tg = load i8, ptr %i.tf, align 1, !tbaa !14
  %i.th = zext i8 %i.tg to i32
  %i.ti = sub nsw i32 %i.td, %i.th
  %i.tj = add i32 %i.ti, %.2134.i.epil.init       ; 2 uses
  %i.tk = xor i64 %i.te, 4
  %i.tl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.tk
  store i8 %i.tc, ptr %i.tl, align 1, !tbaa !14
  %i.tm = lshr i32 %i.tj, 2
  %i.tn = trunc i32 %i.tm to i8
  store i8 %i.tn, ptr %i.tb, align 1, !tbaa !14
  br label %.loopexit.i164

.loopexit.i164:                                   ; preds = %.lr.ph.i160, %.lr.ph135.i.epil.preheader, %.loopexit.i164.loopexit358.unr-lcssa, %.lr.ph141.i, %.lr.ph147.i, %.lr.ph153.i, %.preheader.i172, %.preheader120.i, %.preheader122.i, %.preheader124.i, %.preheader126.i
  %.5108.i = phi i32 [ %i.pl, %.lr.ph153.i ], [ %i.pl, %.lr.ph147.i ], [ %i.pl, %.lr.ph141.i ], [ %i.pl, %.lr.ph135.i.epil.preheader ], [ 0, %.preheader.i172 ], [ 0, %.preheader120.i ], [ 0, %.preheader122.i ], [ 0, %.preheader124.i ], [ 0, %.preheader126.i ], [ %i.pl, %.loopexit.i164.loopexit358.unr-lcssa ], [ %i.pl, %.lr.ph.i160 ] ; 2 uses
  %.5.i165 = phi i32 [ %i.st, %.lr.ph153.i ], [ %i.px, %.lr.ph147.i ], [ %i.qm, %.lr.ph141.i ], [ %i.tj, %.lr.ph135.i.epil.preheader ], [ 0, %.preheader.i172 ], [ 0, %.preheader120.i ], [ 0, %.preheader122.i ], [ 0, %.preheader124.i ], [ 0, %.preheader126.i ], [ %i.rp, %.loopexit.i164.loopexit358.unr-lcssa ], [ %i.sd, %.lr.ph.i160 ] ; 2 uses
  %i.to = icmp slt i32 %.5108.i, %.pre272
  br i1 %i.to, label %.lr.ph158.preheader.i, label %._crit_edge.i166

.lr.ph158.preheader.i:                            ; preds = %.loopexit.i164
  %i.tp = sext i32 %.5108.i to i64                ; 6 uses
  %i.tq = sub nsw i64 %wide.trip.count202.i, %i.tp
  %xtraiter389 = and i64 %i.tq, 1
  %lcmp.mod390.not = icmp eq i64 %xtraiter389, 0
  br i1 %lcmp.mod390.not, label %.lr.ph158.i.prol.loopexit, label %.lr.ph158.i.prol

.lr.ph158.i.prol:                                 ; preds = %.lr.ph158.preheader.i
  %i.tr = and i64 %i.tp, 7
  %i.ts = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.tr
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !14
  %i.tu = zext i8 %i.tt to i32
  %i.tv = sub i32 %.5.i165, %i.tu                 ; 2 uses
  %i.tw = udiv i32 %i.tv, %i.oy
  %i.tx = trunc i32 %i.tw to i8
  %i.ty = mul nsw i64 %i.tp, %i.pk
  %i.tz = getelementptr inbounds i8, ptr %.0111159.i, i64 %i.ty
  store i8 %i.tx, ptr %i.tz, align 1, !tbaa !14
  %indvars.iv.next200.i.prol = add nsw i64 %i.tp, 1
  br label %.lr.ph158.i.prol.loopexit

.lr.ph158.i.prol.loopexit:                        ; preds = %.lr.ph158.i.prol, %.lr.ph158.preheader.i
  %indvars.iv199.i.unr = phi i64 [ %i.tp, %.lr.ph158.preheader.i ], [ %indvars.iv.next200.i.prol, %.lr.ph158.i.prol ]
  %.6157.i.unr = phi i32 [ %.5.i165, %.lr.ph158.preheader.i ], [ %i.tv, %.lr.ph158.i.prol ]
  %i.ua = icmp eq i64 %i.pn, %i.tp
  br i1 %i.ua, label %._crit_edge.i166, label %.lr.ph158.i

.lr.ph158.i:                                      ; preds = %.lr.ph158.i.prol.loopexit, %.lr.ph158.i
  %indvars.iv199.i = phi i64 [ %indvars.iv.next200.i.1, %.lr.ph158.i ], [ %indvars.iv199.i.unr, %.lr.ph158.i.prol.loopexit ] ; 4 uses
  %.6157.i = phi i32 [ %i.uo, %.lr.ph158.i ], [ %.6157.i.unr, %.lr.ph158.i.prol.loopexit ]
  %i.ub = and i64 %indvars.iv199.i, 7
  %i.uc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ub
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !14
  %i.ue = zext i8 %i.ud to i32
  %i.uf = sub i32 %.6157.i, %i.ue                 ; 2 uses
  %i.ug = udiv i32 %i.uf, %i.oy
  %i.uh = trunc i32 %i.ug to i8
  %i.ui = mul nsw i64 %indvars.iv199.i, %i.pk
  %i.uj = getelementptr inbounds i8, ptr %.0111159.i, i64 %i.ui
  store i8 %i.uh, ptr %i.uj, align 1, !tbaa !14
  %indvars.iv.next200.i = add nsw i64 %indvars.iv199.i, 1 ; 2 uses
  %i.uk = and i64 %indvars.iv.next200.i, 7
  %i.ul = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.uk
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !14
  %i.un = zext i8 %i.um to i32
  %i.uo = sub i32 %i.uf, %i.un                    ; 2 uses
  %i.up = udiv i32 %i.uo, %i.oy
  %i.uq = trunc i32 %i.up to i8
  %i.ur = mul nsw i64 %indvars.iv.next200.i, %i.pk
  %i.us = getelementptr inbounds i8, ptr %.0111159.i, i64 %i.ur
  store i8 %i.uq, ptr %i.us, align 1, !tbaa !14
  %indvars.iv.next200.i.1 = add nsw i64 %indvars.iv199.i, 2 ; 2 uses
  %exitcond203.not.i.1 = icmp eq i64 %indvars.iv.next200.i.1, %wide.trip.count202.i
  br i1 %exitcond203.not.i.1, label %._crit_edge.i166, label %.lr.ph158.i, !llvm.loop !202

._crit_edge.i166:                                 ; preds = %.lr.ph158.i.prol.loopexit, %.lr.ph158.i, %.loopexit.i164
  %i.ut = getelementptr inbounds nuw i8, ptr %.0111159.i, i64 1
  %i.uu = add nuw nsw i32 %.0110161.i, 1          ; 2 uses
  %exitcond204.not.i = icmp eq i32 %i.uu, %.pre270
  br i1 %exitcond204.not.i, label %stbtt__v_prefilter.exit.loopexit, label %bb.w, !llvm.loop !203

stbtt__v_prefilter.exit.loopexit:                 ; preds = %._crit_edge.i166
  %.pre265.pre = load i32, ptr %i.cn, align 4, !tbaa !171
  %.pre267.pre = load i32, ptr %i.di, align 4, !tbaa !172
  %.pre269.pre = load i32, ptr %i.cq, align 4, !tbaa !168
  %.pre271.pre = load i32, ptr %i.cs, align 4, !tbaa !170
  br label %stbtt__v_prefilter.exit

stbtt__v_prefilter.exit:                          ; preds = %stbtt__v_prefilter.exit.loopexit, %bb.v
  %.pre271 = phi i32 [ %.pre271.pre, %stbtt__v_prefilter.exit.loopexit ], [ %.pre272, %bb.v ]
  %.pre269 = phi i32 [ %.pre269.pre, %stbtt__v_prefilter.exit.loopexit ], [ %.pre270, %bb.v ]
  %.pre267 = phi i32 [ %.pre267.pre, %stbtt__v_prefilter.exit.loopexit ], [ %.pre268, %bb.v ]
  %.pre265 = phi i32 [ %.pre265.pre, %stbtt__v_prefilter.exit.loopexit ], [ %.pre266, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.x

bb.x:                                             ; preds = %stbtt__v_prefilter.exit, %bb.u
  %i.uv = phi i32 [ %.pre271, %stbtt__v_prefilter.exit ], [ %.pre272, %bb.u ] ; 2 uses
  %i.uw = phi i32 [ %.pre269, %stbtt__v_prefilter.exit ], [ %.pre270, %bb.u ] ; 2 uses
  %i.ux = phi i32 [ %.pre267, %stbtt__v_prefilter.exit ], [ %.pre268, %bb.u ] ; 2 uses
  %i.uy = phi i32 [ %.pre265, %stbtt__v_prefilter.exit ], [ %.pre266, %bb.u ] ; 2 uses
  %i.uz = trunc i32 %i.uy to i16
  store i16 %i.uz, ptr %i.cv, align 4, !tbaa !214
  %i.va = trunc i32 %i.ux to i16
  %i.vb = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  store i16 %i.va, ptr %i.vb, align 2, !tbaa !216
  %i.vc = add nsw i32 %i.uw, %i.uy
  %i.vd = trunc i32 %i.vc to i16
  %i.ve = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  store i16 %i.vd, ptr %i.ve, align 4, !tbaa !217
  %i.vf = add nsw i32 %i.uv, %i.ux
  %i.vg = trunc i32 %i.vf to i16
  %i.vh = getelementptr inbounds nuw i8, ptr %i.cv, i64 6
  store i16 %i.vg, ptr %i.vh, align 2, !tbaa !218
  %i.vi = sitofp i16 %i.en to float
  %i.vj = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.vk = extractelement <2 x i32> %i.hu, i64 0
  %i.vl = add nsw i32 %i.uw, %i.vk
  %i.vm = sitofp i32 %i.vl to float
  %i.vn = shufflevector <2 x i32> %i.hu, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.vo = sitofp <4 x i32> %i.vn to <4 x float>
  %i.vp = insertelement <4 x float> %i.vo, float %i.bm, i64 2
  %i.vq = insertelement <4 x float> %i.vp, float %i.vm, i64 3
  %i.vr = insertelement <4 x float> %i.ci, float %i.vi, i64 2
  %i.vs = shufflevector <4 x float> %i.vr, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.vt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vq, <4 x float> %i.vs, <4 x float> %i.cm)
  store <4 x float> %i.vt, ptr %i.vj, align 4, !tbaa !74
  %i.vu = extractelement <2 x i32> %i.hu, i64 1
  %i.vv = add nsw i32 %i.uv, %i.vu
  %i.vw = sitofp i32 %i.vv to float
  %i.vx = call float @llvm.fmuladd.f32(float %i.vw, float %i.cj, float %i.ch)
  %i.vy = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store float %i.vx, ptr %i.vy, align 4, !tbaa !219
  %i.vz = icmp eq i32 %i.de, 0
  %i.wa = trunc nuw nsw i64 %indvars.iv252 to i32
  %spec.select = select i1 %i.vz, i32 %i.wa, i32 %.1140221
end_hunk_6
begin_hunk_7_@stbtt_PackFontRangesPackRects:bb.a
  br i1 %i.w, label %._crit_edge.loopexit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.s, ptr %i.l, align 4, !tbaa !171
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %i.r, ptr %i.x, align 4, !tbaa !172
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  store i32 1, ptr %i.y, align 4, !tbaa !173
  %i.z = add nsw i32 %i.s, %i.n                   ; 2 uses
  store i32 %i.z, ptr %i.d, align 4, !tbaa !165
  %i.aa = load i32, ptr %i.f, align 4, !tbaa !167
  %i.ab = icmp sgt i32 %i.v, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.v, ptr %i.f, align 4, !tbaa !167
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stbrp_pack_rects.exit, label %bb.b, !llvm.loop !174

._crit_edge.loopexit.i:                           ; preds = %bb.d
  %i.ac = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.ac, %._crit_edge.loopexit.i ] ; 2 uses
  %i.ad = icmp slt i32 %.0.lcssa.i, %2
  br i1 %i.ad, label %.lr.ph44.preheader.i, label %stbrp_pack_rects.exit

.lr.ph44.preheader.i:                             ; preds = %._crit_edge.i
  %i.ae = zext i32 %.0.lcssa.i to i64             ; 4 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.af = sub nsw i64 %wide.trip.count, %i.ae
  %xtraiter = and i64 %i.af, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph44.i.prol.loopexit, label %.lr.ph44.i.prol

.lr.ph44.i.prol:                                  ; preds = %.lr.ph44.preheader.i, %.lr.ph44.i.prol
  %indvars.iv47.i.prol = phi i64 [ %indvars.iv.next48.i.prol, %.lr.ph44.i.prol ], [ %i.ae, %.lr.ph44.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph44.i.prol ], [ 0, %.lr.ph44.preheader.i ]
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv47.i.prol
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  store i32 0, ptr %i.ah, align 4, !tbaa !173
  %indvars.iv.next48.i.prol = add nuw nsw i64 %indvars.iv47.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph44.i.prol.loopexit, label %.lr.ph44.i.prol, !llvm.loop !223

.lr.ph44.i.prol.loopexit:                         ; preds = %.lr.ph44.i.prol, %.lr.ph44.preheader.i
  %indvars.iv47.i.unr = phi i64 [ %i.ae, %.lr.ph44.preheader.i ], [ %indvars.iv.next48.i.prol, %.lr.ph44.i.prol ]
  %i.ai = sub nsw i64 %i.ae, %wide.trip.count
  %i.aj = icmp ugt i64 %i.ai, -8
  br i1 %i.aj, label %stbrp_pack_rects.exit, label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.prol.loopexit, %.lr.ph44.i
  %indvars.iv47.i = phi i64 [ %indvars.iv.next48.i.7, %.lr.ph44.i ], [ %indvars.iv47.i.unr, %.lr.ph44.i.prol.loopexit ] ; 9 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv47.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  store i32 0, ptr %i.al, align 4, !tbaa !173
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv47.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  store i32 0, ptr %i.an, align 4, !tbaa !173
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv47.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 68
  store i32 0, ptr %i.ap, align 4, !tbaa !173
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv47.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 92
  store i32 0, ptr %i.ar, align 4, !tbaa !173
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv47.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 116
  store i32 0, ptr %i.at, align 4, !tbaa !173
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv47.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 140
  store i32 0, ptr %i.av, align 4, !tbaa !173
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv47.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 164
  store i32 0, ptr %i.ax, align 4, !tbaa !173
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv47.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 188
  store i32 0, ptr %i.az, align 4, !tbaa !173
  %indvars.iv.next48.i.7 = add nuw nsw i64 %indvars.iv47.i, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next48.i.7, %wide.trip.count
  br i1 %exitcond.not.7, label %stbrp_pack_rects.exit, label %.lr.ph44.i, !llvm.loop !177

stbrp_pack_rects.exit:                            ; preds = %bb.g, %.lr.ph44.i.prol.loopexit, %.lr.ph44.i, %._crit_edge.i
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbtt_PackFontRanges(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #10 {
bb.a:
  %5 = alloca %struct.stbtt_fontinfo, align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.preheader50.preheader, label %._crit_edge57

.preheader50.preheader:                           ; preds = %bb.a
  %wide.trip.count64 = zext nneg i32 %4 to i64    ; 3 uses
  br label %.preheader50

.preheader50:                                     ; preds = %.preheader50.preheader, %._crit_edge
  %indvars.iv61 = phi i64 [ 0, %.preheader50.preheader ], [ %indvars.iv.next62, %._crit_edge ] ; 2 uses
  %i.b = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %indvars.iv61 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !208  ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader50
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !213  ; 5 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.h = icmp ult i32 %i.d, 4
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

.lr.ph56.preheader:                               ; preds = %._crit_edge
  %wide.trip.count69 = zext nneg i32 %4 to i64
  %min.iters.check = icmp ult i32 %4, 8
  br i1 %min.iters.check, label %.lr.ph56.preheader83, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph56.preheader
  %n.vec = and i64 %wide.trip.count64, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi80 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %index
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %index
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %index
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %index
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %index
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %index
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %index
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %index
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 256
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 296
  %i.y = load i32, ptr %i.q, align 8, !tbaa !208
  %i.z = load i32, ptr %i.r, align 8, !tbaa !208
  %i.aa = load i32, ptr %i.s, align 8, !tbaa !208
  %i.ab = load i32, ptr %i.t, align 8, !tbaa !208
  %i.ac = insertelement <4 x i32> poison, i32 %i.y, i64 0
  %i.ad = insertelement <4 x i32> %i.ac, i32 %i.z, i64 1
  %i.ae = insertelement <4 x i32> %i.ad, i32 %i.aa, i64 2
  %i.af = insertelement <4 x i32> %i.ae, i32 %i.ab, i64 3
  %i.ag = load i32, ptr %i.u, align 8, !tbaa !208
  %i.ah = load i32, ptr %i.v, align 8, !tbaa !208
  %i.ai = load i32, ptr %i.w, align 8, !tbaa !208
  %i.aj = load i32, ptr %i.x, align 8, !tbaa !208
  %i.ak = insertelement <4 x i32> poison, i32 %i.ag, i64 0
  %i.al = insertelement <4 x i32> %i.ak, i32 %i.ah, i64 1
  %i.am = insertelement <4 x i32> %i.al, i32 %i.ai, i64 2
  %i.an = insertelement <4 x i32> %i.am, i32 %i.aj, i64 3
  %i.ao = add <4 x i32> %i.af, %vec.phi           ; 2 uses
  %i.ap = add <4 x i32> %i.an, %vec.phi80         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !224

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ap, %i.ao
  %i.ar = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count64
  br i1 %cmp.n, label %._crit_edge57.loopexit, label %.lr.ph56.preheader83

.lr.ph56.preheader83:                             ; preds = %.lr.ph56.preheader, %middle.block
  %indvars.iv66.ph = phi i64 [ 0, %.lr.ph56.preheader ], [ %n.vec, %middle.block ]
  %.055.ph = phi i32 [ 0, %.lr.ph56.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph56

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.as = getelementptr inbounds nuw [28 x i8], ptr %i.g, i64 %indvars.iv
  store i64 0, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw [28 x i8], ptr %i.g, i64 %indvars.iv
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 28
  store i64 0, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw [28 x i8], ptr %i.g, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  store i64 0, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw [28 x i8], ptr %i.g, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 84
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  store i64 0, ptr %i.ay, align 4
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !225

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod87 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod87)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.az = getelementptr inbounds nuw [28 x i8], ptr %i.g, i64 %indvars.iv.epil
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  store i64 0, ptr %i.az, align 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !226

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %.preheader50
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count64
  br i1 %exitcond65.not, label %.lr.ph56.preheader, label %.preheader50, !llvm.loop !227

.lr.ph56:                                         ; preds = %.lr.ph56.preheader83, %.lr.ph56
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %.lr.ph56 ], [ %indvars.iv66.ph, %.lr.ph56.preheader83 ] ; 2 uses
  %.055 = phi i32 [ %i.bd, %.lr.ph56 ], [ %.055.ph, %.lr.ph56.preheader83 ]
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %indvars.iv66
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !208
  %i.bd = add nsw i32 %i.bc, %.055                ; 2 uses
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next67, %wide.trip.count69
  br i1 %exitcond70.not, label %._crit_edge57.loopexit, label %.lr.ph56, !llvm.loop !228

._crit_edge57.loopexit:                           ; preds = %.lr.ph56, %middle.block
  %.lcssa = phi i32 [ %i.ar, %middle.block ], [ %i.bd, %.lr.ph56 ]
  %i.be = sext i32 %.lcssa to i64
  %i.bf = mul nsw i64 %i.be, 24
  br label %._crit_edge57

._crit_edge57:                                    ; preds = %bb.a, %._crit_edge57.loopexit
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.bf, %._crit_edge57.loopexit ]
  %i.bg = tail call noalias ptr @malloc(i64 noundef %.0.lcssa) #30 ; 14 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.k, label %bb.d

bb.d:                                             ; preds = %._crit_edge57
  %i.bi = load ptr, ptr %0, align 8, !tbaa !178
  store ptr %i.bi, ptr %5, align 8, !tbaa !154
  %i.bj = tail call i32 @stbtt_GetFontOffsetForIndex_internal(ptr noundef readonly %1, i32 noundef %2)
  %i.bk = call range(i32 0, 2) i32 @stbtt_InitFont_internal(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %i.bj) ; 0 uses
  %i.bl = call i32 @stbtt_PackFontRangesGatherRects(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %i.bg) ; 4 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !183 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 3 uses
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !162
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 12 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !164
  %.promoted.i.i = load i32, ptr %i.bp, align 4, !tbaa !165
  %.promoted41.i.i = load i32, ptr %i.bs, align 4, !tbaa !166
  %wide.trip.count.i.i = zext nneg i32 %i.bl to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.j ] ; 3 uses
  %i.bv = phi i32 [ %.promoted41.i.i, %.lr.ph.i.i ], [ %i.cd, %bb.j ]
  %i.bw = phi i32 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.cl, %bb.j ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %indvars.iv.i.i ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !168 ; 2 uses
  %i.ca = add nsw i32 %i.bz, %i.bw
  %i.cb = icmp sgt i32 %i.ca, %i.bq
  br i1 %i.cb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.bp, align 4, !tbaa !165
  %i.cc = load i32, ptr %i.br, align 4, !tbaa !167 ; 2 uses
  store i32 %i.cc, ptr %i.bs, align 4, !tbaa !166
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cd = phi i32 [ %i.cc, %bb.f ], [ %i.bv, %bb.e ] ; 3 uses
  %i.ce = phi i32 [ 0, %bb.f ], [ %i.bw, %bb.e ]  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !170
  %i.ch = add nsw i32 %i.cg, %i.cd                ; 3 uses
  %i.ci = icmp sgt i32 %i.ch, %i.bu
  br i1 %i.ci, label %._crit_edge.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.ce, ptr %i.bx, align 4, !tbaa !171
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i32 %i.cd, ptr %i.cj, align 4, !tbaa !172
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bx, i64 20
  store i32 1, ptr %i.ck, align 4, !tbaa !173
  %i.cl = add nsw i32 %i.ce, %i.bz                ; 2 uses
  store i32 %i.cl, ptr %i.bp, align 4, !tbaa !165
  %i.cm = load i32, ptr %i.br, align 4, !tbaa !167
  %i.cn = icmp sgt i32 %i.ch, %i.cm
  br i1 %i.cn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.ch, ptr %i.br, align 4, !tbaa !167
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %stbtt_PackFontRangesPackRects.exit, label %bb.e, !llvm.loop !174

._crit_edge.loopexit.i.i:                         ; preds = %bb.g
  %i.co = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.d
  %.0.lcssa.i.i = phi i32 [ 0, %bb.d ], [ %i.co, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.cp = icmp slt i32 %.0.lcssa.i.i, %i.bl
  br i1 %i.cp, label %.lr.ph44.preheader.i.i, label %stbtt_PackFontRangesPackRects.exit

.lr.ph44.preheader.i.i:                           ; preds = %._crit_edge.i.i
  %i.cq = zext i32 %.0.lcssa.i.i to i64           ; 4 uses
  %wide.trip.count.i = zext i32 %i.bl to i64      ; 3 uses
  %i.cr = sub nsw i64 %wide.trip.count.i, %i.cq
  %xtraiter88 = and i64 %i.cr, 7                  ; 2 uses
  %lcmp.mod89.not = icmp eq i64 %xtraiter88, 0
  br i1 %lcmp.mod89.not, label %.lr.ph44.i.i.prol.loopexit, label %.lr.ph44.i.i.prol

.lr.ph44.i.i.prol:                                ; preds = %.lr.ph44.preheader.i.i, %.lr.ph44.i.i.prol
  %indvars.iv47.i.i.prol = phi i64 [ %indvars.iv.next48.i.i.prol, %.lr.ph44.i.i.prol ], [ %i.cq, %.lr.ph44.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph44.i.i.prol ], [ 0, %.lr.ph44.preheader.i.i ]
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %indvars.iv47.i.i.prol
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 20
  store i32 0, ptr %i.ct, align 4, !tbaa !173
  %indvars.iv.next48.i.i.prol = add nuw nsw i64 %indvars.iv47.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter88
  br i1 %prol.iter.cmp.not, label %.lr.ph44.i.i.prol.loopexit, label %.lr.ph44.i.i.prol, !llvm.loop !229

.lr.ph44.i.i.prol.loopexit:                       ; preds = %.lr.ph44.i.i.prol, %.lr.ph44.preheader.i.i
  %indvars.iv47.i.i.unr = phi i64 [ %i.cq, %.lr.ph44.preheader.i.i ], [ %indvars.iv.next48.i.i.prol, %.lr.ph44.i.i.prol ]
  %i.cu = sub nsw i64 %i.cq, %wide.trip.count.i
  %i.cv = icmp ugt i64 %i.cu, -8
  br i1 %i.cv, label %stbtt_PackFontRangesPackRects.exit, label %.lr.ph44.i.i

.lr.ph44.i.i:                                     ; preds = %.lr.ph44.i.i.prol.loopexit, %.lr.ph44.i.i
  %indvars.iv47.i.i = phi i64 [ %indvars.iv.next48.i.i.7, %.lr.ph44.i.i ], [ %indvars.iv47.i.i.unr, %.lr.ph44.i.i.prol.loopexit ] ; 9 uses
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %indvars.iv47.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 20
  store i32 0, ptr %i.cx, align 4, !tbaa !173
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %indvars.iv47.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 44
  store i32 0, ptr %i.cz, align 4, !tbaa !173
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %indvars.iv47.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 68
  store i32 0, ptr %i.db, align 4, !tbaa !173
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %indvars.iv47.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 92
  store i32 0, ptr %i.dd, align 4, !tbaa !173
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %indvars.iv47.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 116
  store i32 0, ptr %i.df, align 4, !tbaa !173
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %indvars.iv47.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 140
  store i32 0, ptr %i.dh, align 4, !tbaa !173
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %indvars.iv47.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 164
  store i32 0, ptr %i.dj, align 4, !tbaa !173
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %indvars.iv47.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 188
  store i32 0, ptr %i.dl, align 4, !tbaa !173
  %indvars.iv.next48.i.i.7 = add nuw nsw i64 %indvars.iv47.i.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next48.i.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %stbtt_PackFontRangesPackRects.exit, label %.lr.ph44.i.i, !llvm.loop !177

stbtt_PackFontRangesPackRects.exit:               ; preds = %bb.j, %.lr.ph44.i.i.prol.loopexit, %.lr.ph44.i.i, %._crit_edge.i.i
  %i.dm = call i32 @stbtt_PackFontRangesRenderIntoRects(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %i.bg)
  tail call void @free(ptr noundef nonnull %i.bg) #29
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge57, %stbtt_PackFontRangesPackRects.exit
  %.046 = phi i32 [ %i.dm, %stbtt_PackFontRangesPackRects.exit ], [ 0, %._crit_edge57 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret i32 %.046
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @stbtt_GetFontOffsetForIndex(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @stbtt_GetFontOffsetForIndex_internal(ptr noundef %0, i32 noundef %1)
end_hunk_7
