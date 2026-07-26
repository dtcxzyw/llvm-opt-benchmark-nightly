inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 207
begin_hunk_0_@ogg_stream_reset_serialno:bb.a
  store i64 -1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 392
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = sext i32 %1 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i64 %i.h, ptr %i.i, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, 1) i32 @vorbis_synthesis_restart(ptr nofree noundef captures(none) %0) local_unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  %.not19 = icmp eq ptr %i.b, null
  %or.cond = select i1 %.not, i1 true, i1 %.not19
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %.not20 = icmp eq ptr %i.f, null
  br i1 %.not20, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 5808
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add nsw i32 %i.h, 1
  %i.l = zext nneg i32 %i.k to i64
  %i.m = ashr i64 %i.j, %i.l                      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.m, ptr %i.n, align 8
  %i.o = zext nneg i32 %i.h to i64
  %i.p = ashr i64 %i.m, %i.o
  %i.q = trunc i64 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.q, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 -1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 -1, i64 16, i1 false)
  store i32 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  store i64 -1, ptr %i.v, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @ogg_stream_reset(ptr nofree noundef writeonly captures(none) initializes((16, 32), (56, 80), (364, 376), (384, 408)) %0) local_unnamed_addr #38 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 364
  store i32 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i32 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 372
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store i64 -1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 392
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, 2) i32 @ogg_stream_packetout(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #32 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i64, ptr %i.c, align 8
  %sext.i = shl i64 %i.b, 32
  %i.e = ashr exact i64 %sext.i, 32               ; 3 uses
  %.not.i = icmp sgt i64 %i.d, %i.e
  br i1 %.not.i, label %bb.b, label %_packetout.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.e
  %i.i = load i32, ptr %i.h, align 4              ; 4 uses
  %i.j = and i32 %i.i, 1024
  %.not51.i = icmp eq i32 %i.j, 0
  br i1 %.not51.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i64 %i.b, 1
  br label %.sink.split.i

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq ptr %1, null
  %i.l = and i32 %i.i, 255                        ; 2 uses
  %i.m = and i32 %i.i, 512                        ; 2 uses
  %i.n = and i32 %i.i, 256
  %i.o = icmp eq i32 %i.l, 255
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %i.e, %bb.d ]
  %.04654.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %i.m, %bb.d ]
  %.04753.i = phi i32 [ %i.t, %.lr.ph.i ], [ 255, %bb.d ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %i.g, i64 %indvars.iv.next.i
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %i.r = and i32 %i.q, 255                        ; 2 uses
  %i.s = and i32 %i.q, 512
  %.not52.i = icmp eq i32 %i.s, 0
  %spec.select.i = select i1 %.not52.i, i32 %.04654.i, i32 512 ; 2 uses
  %i.t = add nuw nsw i32 %i.r, %.04753.i          ; 2 uses
  %i.u = icmp eq i32 %i.r, 255
  br i1 %i.u, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !192

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.d
  %.047.lcssa.i = phi i32 [ %i.l, %bb.d ], [ %i.t, %.lr.ph.i ] ; 2 uses
  %.046.lcssa.i = phi i32 [ %i.m, %bb.d ], [ %spec.select.i, %.lr.ph.i ]
  %.045.lcssa.in.i = phi i64 [ %i.b, %bb.d ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  br i1 %.not, label %._crit_edge.i._crit_edge, label %bb.e

._crit_edge.i._crit_edge:                         ; preds = %._crit_edge.i
  %.pre = zext nneg i32 %.047.lcssa.i to i64
  %.pre2 = shl i64 %.045.lcssa.in.i, 32
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.v = zext nneg i32 %.046.lcssa.i to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.v, ptr %i.w, align 8
  %i.x = zext nneg i32 %i.n to i64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.x, ptr %i.y, align 8
  %i.z = load ptr, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 %i.ab
  store ptr %i.ac, ptr %1, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.ae, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8
  %sext63.i = shl i64 %.045.lcssa.in.i, 32        ; 2 uses
  %i.ai = ashr exact i64 %sext63.i, 29
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = zext nneg i32 %.047.lcssa.i to i64      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.am, ptr %i.an, align 8
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i._crit_edge, %bb.e
  %.pre-phi3 = phi i64 [ %.pre2, %._crit_edge.i._crit_edge ], [ %sext63.i, %bb.e ]
  %.pre-phi = phi i64 [ %.pre, %._crit_edge.i._crit_edge ], [ %i.am, %bb.e ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = add nsw i64 %i.ap, %.pre-phi
  store i64 %i.aq, ptr %i.ao, align 8
  %sext64.i = add i64 %.pre-phi3, 4294967296
  %i.ar = ashr exact i64 %sext64.i, 32
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %bb.c
  %.sink.i = phi i64 [ %i.ar, %bb.f ], [ %i.k, %bb.c ]
  %.0.ph.i = phi i32 [ 1, %bb.f ], [ -1, %bb.c ]
  store i64 %.sink.i, ptr %i.a, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8
  %i.au = add nsw i64 %i.at, 1
  store i64 %i.au, ptr %i.as, align 8
  br label %_packetout.exit

_packetout.exit:                                  ; preds = %bb.a, %.sink.split.i
  %.0.i = phi i32 [ 0, %bb.a ], [ %.0.ph.i, %.sink.split.i ]
  ret i32 %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @vorbis_packet_blocksize(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #37 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %1, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %sext34 = shl i64 %i.e, 32                      ; 3 uses
  %.not.i = icmp samesign ult i64 %sext34, 17179869185
  %i.f = icmp slt i64 %sext34, 536870912
  br i1 %i.f, label %oggpack_read.exit.thread, label %oggpack_read.exit

oggpack_read.exit:                                ; preds = %bb.a
  %i.g = load i8, ptr %i.c, align 1               ; 2 uses
  %i.h = and i8 %i.g, 1
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.b, label %oggpack_read.exit.thread

bb.b:                                             ; preds = %oggpack_read.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.036 = phi i32 [ %i.m, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %.01235 = phi i32 [ %i.l, %.lr.ph ], [ 0, %bb.b ]
  %i.l = add nuw nsw i32 %.01235, 1               ; 2 uses
  %i.m = lshr i32 %.036, 1
  %i.n = icmp samesign ugt i32 %.036, 3
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !llvm.loop !193

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.012.lcssa = phi i32 [ 0, %bb.b ], [ %i.l, %.lr.ph ] ; 6 uses
  %i.o = zext nneg i32 %.012.lcssa to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @mask, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.r = add nuw nsw i32 %.012.lcssa, 1
  %i.s = zext nneg i32 %i.r to i64
  %i.t = lshr exact i64 %sext34, 29
  %i.u = icmp samesign ult i64 %i.t, %i.s
  br i1 %i.u, label %oggpack_read.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.v = lshr exact i8 %i.g, 1
  %i.w = zext nneg i8 %i.v to i64                 ; 2 uses
  %i.x = icmp samesign ugt i32 %.012.lcssa, 7
  br i1 %i.x, label %bb.e, label %oggpack_read.exit22

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 7
  %i.ac = or disjoint i64 %i.ab, %i.w             ; 2 uses
  %i.ad = icmp samesign ugt i32 %.012.lcssa, 15
  br i1 %i.ad, label %bb.f, label %oggpack_read.exit22

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 15
  %i.ai = or disjoint i64 %i.ah, %i.ac            ; 2 uses
  %i.aj = icmp samesign ugt i32 %.012.lcssa, 23
  br i1 %i.aj, label %bb.g, label %oggpack_read.exit22

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 23
  %i.ao = or disjoint i64 %i.an, %i.ai            ; 2 uses
  %i.ap = icmp samesign ult i32 %.012.lcssa, 32
  br i1 %i.ap, label %oggpack_read.exit22, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 31
  %i.au = and i64 %i.at, 2147483648
  %i.av = or disjoint i64 %i.ao, %i.au
  br label %oggpack_read.exit22

oggpack_read.exit22:                              ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i16 = phi i64 [ %i.av, %bb.h ], [ %i.w, %bb.d ], [ %i.ao, %bb.g ], [ %i.ai, %bb.f ], [ %i.ac, %bb.e ]
  %i.aw = and i64 %.0.i16, %i.q                   ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967295
  br i1 %i.ax, label %oggpack_read.exit.thread, label %bb.i

bb.i:                                             ; preds = %oggpack_read.exit22
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %sext = shl nuw i64 %i.aw, 32
  %i.az = ashr exact i64 %sext, 29
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8
  br label %oggpack_read.exit.thread

oggpack_read.exit.thread:                         ; preds = %bb.a, %bb.c, %oggpack_read.exit22, %oggpack_read.exit, %bb.i
  %.013 = phi i64 [ %i.bf, %bb.i ], [ -135, %oggpack_read.exit ], [ -136, %oggpack_read.exit22 ], [ -135, %bb.a ], [ -136, %bb.c ]
  ret i64 %.013
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @_get_next_page(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8
  %.fr = freeze i64 %i.c
  %i.d = add i64 %.fr, %2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.022 = phi i64 [ %i.d, %bb.b ], [ %2, %bb.a ]  ; 3 uses
  %i.e = icmp sgt i64 %.022, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.not30 = icmp eq i64 %.022, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 912
  br i1 %.not30, label %.split.us.split, label %.split

.split.us.split:                                  ; preds = %bb.c
  %i.l = tail call i64 @ogg_sync_pageseek(ptr noundef nonnull %i.g, ptr noundef %1) ; 3 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %select.unfold.us, label %.split46.us

.split46.us:                                      ; preds = %select.unfold.us, %.split.us.split
  %.us-phi47 = phi i64 [ %i.l, %.split.us.split ], [ %i.r, %select.unfold.us ] ; 2 uses
  %i.n = icmp eq i64 %.us-phi47, 0
  br i1 %i.n, label %_get_data.exit.thread, label %.split41.us

select.unfold.us:                                 ; preds = %.split.us.split, %select.unfold.us
  %i.o = phi i64 [ %i.r, %select.unfold.us ], [ %i.l, %.split.us.split ]
  %i.p = load i64, ptr %i.f, align 8
  %i.q = sub nsw i64 %i.p, %i.o
  store i64 %i.q, ptr %i.f, align 8
  %i.r = tail call i64 @ogg_sync_pageseek(ptr noundef nonnull %i.g, ptr noundef %1) ; 3 uses
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %select.unfold.us, label %.split46.us

.split:                                           ; preds = %bb.c, %.split.backedge
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.split
  %i.t = load i64, ptr %i.f, align 8
  %.not = icmp slt i64 %i.t, %.022
  br i1 %.not, label %bb.e, label %_get_data.exit.thread

bb.e:                                             ; preds = %bb.d, %.split
  %i.u = tail call i64 @ogg_sync_pageseek(ptr noundef nonnull %i.g, ptr noundef %1) ; 4 uses
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.f, align 8
  %i.x = sub nsw i64 %i.w, %i.u
  store i64 %i.x, ptr %i.f, align 8
  br label %.split.backedge

bb.g:                                             ; preds = %bb.e
  %i.y = icmp eq i64 %i.u, 0
  br i1 %i.y, label %bb.h, label %.split41.us

bb.h:                                             ; preds = %bb.g
  %i.z = tail call ptr @__errno_location() #70    ; 2 uses
  store i32 0, ptr %i.z, align 4
  %i.aa = load ptr, ptr %0, align 8
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_get_data.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load i32, ptr %i.h, align 8             ; 3 uses
  %.not.i.i = icmp eq i32 %i.ab, 0
  %.pre55 = load i32, ptr %i.i, align 4           ; 2 uses
  br i1 %.not.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = sub nsw i32 %.pre55, %i.ab              ; 4 uses
  store i32 %i.ac, ptr %i.i, align 4
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.af = sext i32 %i.ab to i64
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 %i.af
  %i.ah = zext nneg i32 %i.ac to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ae, ptr nonnull align 1 %i.ag, i64 %i.ah, i1 false)
  %.pre.pre = load i32, ptr %i.i, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pre = phi i32 [ %.pre.pre, %bb.k ], [ %i.ac, %bb.j ]
  store i32 0, ptr %i.h, align 8
end_hunk_0
begin_hunk_1_@drft_init:bb.a
  %i.bp = tail call double @cos(double noundef %i.bo) #62
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.i, i64 %indvars.iv146.i.i
  %i.br = tail call double @sin(double noundef %i.bo) #62
  %i.bs = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.bt = insertelement <2 x double> %i.bs, double %i.br, i64 1
  %i.bu = fptrunc <2 x double> %i.bt to <2 x float>
  store <2 x float> %i.bu, ptr %i.bq, align 4
  %i.bv = fadd float %i.bm, 1.000000e+00          ; 3 uses
  %i.bw = fmul float %i.bl, %i.bv
  %i.bx = fpext float %i.bw to double             ; 2 uses
  %i.by = tail call double @cos(double noundef %i.bx) #62
  %i.bz = getelementptr [4 x i8], ptr %i.i, i64 %indvars.iv146.i.i
  %i.ca = getelementptr i8, ptr %i.bz, i64 8
  %i.cb = tail call double @sin(double noundef %i.bx) #62
  %indvars.iv.next147.i.i.1 = add nsw i64 %indvars.iv146.i.i, 4 ; 2 uses
  %i.cc = insertelement <2 x double> poison, double %i.by, i64 0
  %i.cd = insertelement <2 x double> %i.cc, double %i.cb, i64 1
  %i.ce = fptrunc <2 x double> %i.cd to <2 x float>
  store <2 x float> %i.ce, ptr %i.ca, align 4
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge108.us.i.i.unr-lcssa, label %.lr.ph107.us.i.i.new, !llvm.loop !626

._crit_edge108.us.i.i.unr-lcssa:                  ; preds = %.lr.ph107.us.i.i.new
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge108.us.i.i

.epil.preheader:                                  ; preds = %._crit_edge108.us.i.i.unr-lcssa, %.lr.ph107.us.i.i
  %indvars.iv146.i.i.epil.init = phi i64 [ %indvars.iv144.i.i, %.lr.ph107.us.i.i ], [ %indvars.iv.next147.i.i.1, %._crit_edge108.us.i.i.unr-lcssa ]
  %.071105.us.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph107.us.i.i ], [ %i.bv, %._crit_edge108.us.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod45)
  %i.cf = fadd float %.071105.us.i.i.epil.init, 1.000000e+00
  %i.cg = fmul float %i.bl, %i.cf
  %i.ch = fpext float %i.cg to double             ; 2 uses
  %i.ci = tail call double @cos(double noundef %i.ch) #62
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.i, i64 %indvars.iv146.i.i.epil.init
  %i.ck = tail call double @sin(double noundef %i.ch) #62
  %i.cl = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.cm = insertelement <2 x double> %i.cl, double %i.ck, i64 1
  %i.cn = fptrunc <2 x double> %i.cm to <2 x float>
  store <2 x float> %i.cn, ptr %i.cj, align 4
  br label %._crit_edge108.us.i.i

._crit_edge108.us.i.i:                            ; preds = %._crit_edge108.us.i.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next145.i.i = add i64 %indvars.iv144.i.i, %i.bd
  %i.co = add nuw nsw i32 %.177111.us.i.i, 1      ; 2 uses
  %exitcond150.not.i.i = icmp eq i32 %i.co, %i.ax
  br i1 %exitcond150.not.i.i, label %._crit_edge114.loopexit.i.i, label %.lr.ph107.us.i.i, !llvm.loop !627

._crit_edge114.loopexit.i.i:                      ; preds = %._crit_edge108.us.i.i
  %i.cp = mul i32 %i.aw, %i.ax
  %i.cq = add i32 %i.cp, %.079117.i.i
  br label %._crit_edge114.i.i

._crit_edge114.i.i:                               ; preds = %._crit_edge114.loopexit.i.i, %.lr.ph113.split.preheader.i.i, %.lr.ph119.i.i
  %.180.lcssa.i.i = phi i32 [ %.079117.i.i, %.lr.ph119.i.i ], [ %i.cq, %._crit_edge114.loopexit.i.i ], [ %i.bb, %.lr.ph113.split.preheader.i.i ]
  %indvars.iv.next152.i.i = add nuw nsw i64 %indvars.iv151.i.i, 1 ; 2 uses
  %exitcond155.not.i.i = icmp eq i64 %indvars.iv.next152.i.i, %wide.trip.count154.i.i
  br i1 %exitcond155.not.i.i, label %fdrffti.exit, label %.lr.ph119.i.i, !llvm.loop !628

fdrffti.exit:                                     ; preds = %._crit_edge114.i.i, %bb.a, %.split99.i.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 8) i32 @_ve_amp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 5 uses
  %i.c = sext i32 %i.b to i64                     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load float, ptr %i.d, align 4            ; 2 uses
  %i.f = shl nsw i64 %i.c, 2
  %i.g = alloca i8, i64 %i.f, align 16            ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = tail call i32 @llvm.smax.i32(i32 %i.i, i32 5)
  %narrow = lshr i32 %i.j, 1
  %i.k = zext nneg i32 %narrow to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.m = load float, ptr %i.l, align 4            ; 3 uses
  %i.n = sdiv i32 %i.i, 2
  %i.o = add nsw i32 %i.n, -2
  %i.p = sitofp i32 %i.o to float
  %i.q = fsub float %i.m, %i.p                    ; 2 uses
  %i.r = fcmp olt float %i.q, 0.000000e+00
  %.0159 = select i1 %i.r, float 0.000000e+00, float %i.q ; 2 uses
  %i.s = fcmp ogt float %.0159, %i.m
  %.1160 = select i1 %i.s, float %i.m, float %.0159 ; 2 uses
  %i.t = icmp sgt i32 %i.b, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %min.iters.check = icmp ult i32 %i.b, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.c, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <4 x float>, ptr %i.w, align 4
  %wide.load3 = load <4 x float>, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load4 = load <4 x float>, ptr %i.y, align 4
  %wide.load5 = load <4 x float>, ptr %i.z, align 4
  %i.aa = fmul <4 x float> %wide.load, %wide.load4
  %i.ab = fmul <4 x float> %wide.load3, %wide.load5
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <4 x float> %i.aa, ptr %i.ac, align 16
  store <4 x float> %i.ab, ptr %i.ad, align 16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !629

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.c
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.0152193.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0152193 = phi i64 [ %i.al, %scalar.ph ], [ %.0152193.ph, %scalar.ph.preheader ] ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0152193
  %i.ag = load float, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.0152193
  %i.ai = load float, ptr %i.ah, align 4
  %i.aj = fmul float %i.ag, %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.0152193
  store float %i.aj, ptr %i.ak, align 4
  %i.al = add nuw nsw i64 %.0152193, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.al, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !630

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @mdct_forward(ptr noundef nonnull %i.am, ptr noundef nonnull %i.g, ptr noundef nonnull %i.g)
  %i.an = load float, ptr %i.g, align 16          ; 2 uses
  %i.ao = fmul float %i.an, %i.an
  %i.ap = fpext float %i.ao to double
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ar = load float, ptr %i.aq, align 4
  %i.as = fpext float %i.ar to double             ; 2 uses
  %i.at = fmul double %i.as, f0x3FE6666666666666
  %i.au = fmul double %i.at, %i.as
  %i.av = fadd double %i.au, %i.ap
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ax = load float, ptr %i.aw, align 8
  %i.ay = fpext float %i.ax to double             ; 2 uses
  %i.az = fmul double %i.ay, 2.000000e-01
  %i.ba = fmul double %i.az, %i.ay
  %i.bb = fadd double %i.av, %i.ba
  %i.bc = fptrunc double %i.bb to float           ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 140 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4
  %i.bi = fadd float %i.bh, %i.bc                 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 132
  store float %i.bi, ptr %i.bj, align 4
  store float %i.bc, ptr %i.bg, align 4
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 132 ; 2 uses
  %i.bl = load <2 x float>, ptr %i.bk, align 4
  %i.bm = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fadd <2 x float> %i.bl, %i.bn           ; 2 uses
  store <2 x float> %i.bo, ptr %i.bk, align 4
  %i.bp = extractelement <2 x float> %i.bo, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bq = phi float [ %i.bi, %bb.b ], [ %i.bp, %bb.c ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.bs = sext i32 %i.be to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bs ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 132
  %i.bw = fsub float %i.bq, %i.bu
  store float %i.bw, ptr %i.bv, align 4
  store float %i.bc, ptr %i.bt, align 4
  %i.bx = load i32, ptr %i.bd, align 4            ; 2 uses
  %i.by = add nsw i32 %i.bx, 1
  %i.bz = icmp sgt i32 %i.bx, 13
  %spec.select = select i1 %i.bz, i32 0, i32 %i.by
  store i32 %spec.select, ptr %i.bd, align 4
  %5 = lshr i32 %i.b, 1
  %.zext = zext nneg i32 %5 to i64
  %i.ca = icmp sgt i32 %i.b, 1
  br i1 %i.ca, label %.lr.ph197.preheader, label %.preheader192

.lr.ph197.preheader:                              ; preds = %bb.d
  %i.cb = fmul float %i.bq, 6.250000e-02
  %i.cc = tail call float @llvm.fabs.f32(float %i.cb)
  %i.cd = bitcast float %i.cc to i32
  %i.ce = uitofp nneg i32 %i.cd to float
  %i.cf = fmul nnan float %i.ce, f0x3540A8C1
  %i.cg = fadd nnan float %i.cf, f0xC43F115B
  %i.ch = fpext nnan float %i.cg to double
  %i.ci = fmul nnan double %i.ch, 5.000000e-01
  %i.cj = fadd double %i.ci, -1.500000e+01
  %i.ck = fptrunc double %i.cj to float
  br label %.lr.ph197

.preheader192:                                    ; preds = %.lr.ph197, %bb.d
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %.preheader

.lr.ph197:                                        ; preds = %.lr.ph197.preheader, %.lr.ph197
  %.1153195 = phi i64 [ %i.dc, %.lr.ph197 ], [ 0, %.lr.ph197.preheader ] ; 3 uses
  %.1191194 = phi float [ %i.db, %.lr.ph197 ], [ %i.ck, %.lr.ph197.preheader ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.1153195
  %i.co = load <2 x float>, ptr %i.cn, align 8    ; 2 uses
  %i.cp = fmul <2 x float> %i.co, %i.co           ; 2 uses
  %shift = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.cp, %shift
  %i.cq = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cr = tail call float @llvm.fabs.f32(float %i.cq)
  %i.cs = bitcast float %i.cr to i32
  %i.ct = uitofp nneg i32 %i.cs to float
  %i.cu = fmul nnan float %i.ct, f0x3540A8C1
  %i.cv = fadd nnan float %i.cu, f0xC43F115B
  %i.cw = fmul nnan float %i.cv, 5.000000e-01     ; 2 uses
  %i.cx = fcmp olt float %i.cw, %.1191194
  %.0188 = select i1 %i.cx, float %.1191194, float %i.cw ; 2 uses
  %i.cy = fcmp olt float %.0188, %i.e
  %.1189 = select i1 %i.cy, float %i.e, float %.0188
  %i.cz = lshr exact i64 %.1153195, 1
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.cz
  store float %.1189, ptr %i.da, align 4
  %i.db = fadd float %.1191194, -8.000000e+00
  %i.dc = add nuw nsw i64 %.1153195, 2            ; 2 uses
  %6 = icmp samesign ult i64 %i.dc, %.zext
  br i1 %6, label %.lr.ph197, label %.preheader192, !llvm.loop !631

.preheader:                                       ; preds = %.preheader192, %._crit_edge209
  %.0151213 = phi i32 [ 0, %.preheader192 ], [ %.2, %._crit_edge209 ] ; 2 uses
  %.0155212 = phi i64 [ 0, %.preheader192 ], [ %i.ge, %._crit_edge209 ] ; 5 uses
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %.0155212 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = load i32, ptr %i.de, align 4            ; 3 uses
  %7 = zext i32 %i.df to i64                      ; 2 uses
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %.lr.ph200, label %.lr.ph208.preheader

.lr.ph200:                                        ; preds = %.preheader
  %i.dh = load i32, ptr %i.dd, align 8
  %i.di = sext i32 %i.dh to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.g, i64 %i.di ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8            ; 5 uses
  %xtraiter = and i64 %7, 3                       ; 3 uses
  %i.dl = icmp ult i32 %i.df, 4
  br i1 %i.dl, label %.epil.preheader, label %.lr.ph200.new

.lr.ph200.new:                                    ; preds = %.lr.ph200
  %unroll_iter = and i64 %7, 2147483644
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph200.new
  %.2154199 = phi i64 [ 0, %.lr.ph200.new ], [ %i.ej, %bb.e ] ; 6 uses
  %.0161198 = phi float [ 0.000000e+00, %.lr.ph200.new ], [ %i.ei, %bb.e ]
  %niter = phi i64 [ 0, %.lr.ph200.new ], [ %niter.next.3, %bb.e ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.2154199
  %i.dm = load float, ptr %gep, align 4
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %.2154199
  %i.do = load float, ptr %i.dn, align 4
  %i.dp = fmul float %i.dm, %i.do
  %i.dq = fadd float %.0161198, %i.dp
  %i.dr = or disjoint i64 %.2154199, 1            ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dr
  %i.ds = load float, ptr %gep.1, align 4
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dr
  %i.du = load float, ptr %i.dt, align 4
  %i.dv = fmul float %i.ds, %i.du
  %i.dw = fadd float %i.dq, %i.dv
  %i.dx = or disjoint i64 %.2154199, 2            ; 2 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dx
  %i.dy = load float, ptr %gep.2, align 4
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dx
  %i.ea = load float, ptr %i.dz, align 4
  %i.eb = fmul float %i.dy, %i.ea
  %i.ec = fadd float %i.dw, %i.eb
  %i.ed = or disjoint i64 %.2154199, 3            ; 2 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ed
  %i.ee = load float, ptr %gep.3, align 4
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.ed
  %i.eg = load float, ptr %i.ef, align 4
  %i.eh = fmul float %i.ee, %i.eg
  %i.ei = fadd float %i.ec, %i.eh                 ; 3 uses
  %i.ej = add nuw nsw i64 %.2154199, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph208.preheader.loopexit.unr-lcssa, label %bb.e, !llvm.loop !632

.lr.ph208.preheader.loopexit.unr-lcssa:           ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph208.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph208.preheader.loopexit.unr-lcssa, %.lr.ph200
  %.2154199.epil.init = phi i64 [ 0, %.lr.ph200 ], [ %i.ej, %.lr.ph208.preheader.loopexit.unr-lcssa ]
  %.0161198.epil.init = phi float [ 0.000000e+00, %.lr.ph200 ], [ %i.ei, %.lr.ph208.preheader.loopexit.unr-lcssa ]
  %lcmp.mod10 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod10)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.2154199.epil = phi i64 [ %.2154199.epil.init, %.epil.preheader ], [ %i.ep, %bb.f ] ; 3 uses
  %.0161198.epil = phi float [ %.0161198.epil.init, %.epil.preheader ], [ %i.eo, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %.2154199.epil
  %i.ek = load float, ptr %gep.epil, align 4
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %.2154199.epil
  %i.em = load float, ptr %i.el, align 4
  %i.en = fmul float %i.ek, %i.em
  %i.eo = fadd float %.0161198.epil, %i.en        ; 2 uses
  %i.ep = add nuw nsw i64 %.2154199.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph208.preheader, label %bb.f, !llvm.loop !633

.lr.ph208.preheader:                              ; preds = %.lr.ph208.preheader.loopexit.unr-lcssa, %bb.f, %.preheader
  %.0161.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.ei, %.lr.ph208.preheader.loopexit.unr-lcssa ], [ %i.eo, %bb.f ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.er = load float, ptr %i.eq, align 8
  %i.es = fmul float %.0161.lcssa, %i.er          ; 5 uses
  %i.et = getelementptr inbounds nuw [144 x i8], ptr %4, i64 %.0155212 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 68 ; 3 uses
  %i.ev = load i32, ptr %i.eu, align 4            ; 3 uses
  %i.ew = icmp slt i32 %i.ev, 1
  %spec.select179.v = select i1 %i.ew, i32 16, i32 -1
  %spec.select179 = add nsw i32 %spec.select179.v, %i.ev ; 2 uses
  %i.ex = sext i32 %spec.select179 to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.ex
  %i.ez = load float, ptr %i.ey, align 4          ; 4 uses
  %i.fa = fcmp olt float %i.es, %i.ez
  %i.fb = select i1 %i.fa, float %i.ez, float %i.es
  %i.fc = fcmp ogt float %i.es, %i.ez
  %i.fd = select i1 %i.fc, float %i.ez, float %i.es
  br label %.lr.ph208

.lr.ph208:                                        ; preds = %.lr.ph208.preheader, %.lr.ph208
  %.0206 = phi float [ %i.fl, %.lr.ph208 ], [ 9.999900e+04, %.lr.ph208.preheader ] ; 2 uses
  %.0150205 = phi float [ %i.fj, %.lr.ph208 ], [ -9.999900e+04, %.lr.ph208.preheader ] ; 2 uses
  %.3204 = phi i64 [ %i.fm, %.lr.ph208 ], [ 0, %.lr.ph208.preheader ]
  %.1157203 = phi i32 [ %spec.select180, %.lr.ph208 ], [ %spec.select179, %.lr.ph208.preheader ] ; 2 uses
  %i.fe = icmp slt i32 %.1157203, 1
  %spec.select180.v = select i1 %i.fe, i32 16, i32 -1
  %spec.select180 = add nsw i32 %spec.select180.v, %.1157203 ; 2 uses
  %i.ff = sext i32 %spec.select180 to i64
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.ff
  %i.fh = load float, ptr %i.fg, align 4          ; 4 uses
  %i.fi = fcmp olt float %.0150205, %i.fh
  %i.fj = select i1 %i.fi, float %i.fh, float %.0150205 ; 2 uses
  %i.fk = fcmp ogt float %.0206, %i.fh
  %i.fl = select i1 %i.fk, float %i.fh, float %.0206 ; 2 uses
  %i.fm = add nuw nsw i64 %.3204, 1               ; 2 uses
  %exitcond217.not = icmp eq i64 %i.fm, %i.k
  br i1 %exitcond217.not, label %._crit_edge209, label %.lr.ph208, !llvm.loop !634

._crit_edge209:                                   ; preds = %.lr.ph208
  %i.fn = fsub float %i.fd, %i.fl
  %i.fo = fsub float %i.fb, %i.fj
  %i.fp = sext i32 %i.ev to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.fp
  store float %i.es, ptr %i.fq, align 4
  %i.fr = load i32, ptr %i.eu, align 4            ; 2 uses
  %i.fs = add nsw i32 %i.fr, 1
  %i.ft = icmp sgt i32 %i.fr, 15
  %spec.select181 = select i1 %i.ft, i32 0, i32 %i.fs
  store i32 %spec.select181, ptr %i.eu, align 4
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %.0155212
  %i.fv = load float, ptr %i.fu, align 4
  %i.fw = fadd float %.1160, %i.fv
  %i.fx = fcmp ogt float %i.fo, %i.fw
  %i.fy = or i32 %.0151213, 5
  %.1 = select i1 %i.fx, i32 %i.fy, i32 %.0151213 ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.0155212
  %i.ga = load float, ptr %i.fz, align 4
  %i.gb = fsub float %i.ga, %.1160
  %i.gc = fcmp olt float %i.fn, %i.gb
  %i.gd = or i32 %.1, 2
  %.2 = select i1 %i.gc, i32 %i.gd, i32 %.1       ; 2 uses
  %i.ge = add nuw nsw i64 %.0155212, 1            ; 2 uses
  %exitcond218.not = icmp eq i64 %i.ge, 7
  br i1 %exitcond218.not, label %bb.g, label %.preheader, !llvm.loop !635

bb.g:                                             ; preds = %._crit_edge209
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_vorbis_apply_window(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #32 {
bb.a:
  %.not = icmp eq i32 %4, 0                       ; 2 uses
  %i.a = select i1 %.not, i32 0, i32 %3
  %i.b = select i1 %.not, i32 0, i32 %5
  %i.c = sext i32 %i.a to i64                     ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %1, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr @vwin, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.i = sext i32 %i.b to i64                     ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %1, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr @vwin, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8              ; 4 uses
  %i.o = sext i32 %4 to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %2, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8              ; 5 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %2, i64 %i.c
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %2, i64 %i.i
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = sdiv i64 %i.q, 4                         ; 5 uses
  %.neg = sdiv i64 %i.s, -4                       ; 2 uses
  %i.w = add nsw i64 %.neg, %i.v                  ; 4 uses
  %i.x = sdiv i64 %i.s, 2                         ; 2 uses
  %i.y = add i64 %i.w, %i.x                       ; 3 uses
  %i.z = sdiv i64 %i.q, 2                         ; 3 uses
  %i.aa = add nsw i64 %i.z, %i.v
  %.neg56 = sdiv i64 %i.u, -4                     ; 3 uses
  %i.ab = add i64 %i.aa, %.neg56                  ; 3 uses
  %i.ac = sdiv i64 %i.u, 2                        ; 6 uses
  %i.ad = add i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = icmp sgt i64 %i.w, 0
  br i1 %i.ae, label %.lr.ph.preheader, label %.preheader57

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.af = shl nuw i64 %i.w, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.af, i1 false)
  br label %.preheader57

.preheader57:                                     ; preds = %.lr.ph.preheader, %bb.a
  %.050.lcssa = phi i64 [ 0, %bb.a ], [ %i.w, %.lr.ph.preheader ] ; 7 uses
  %i.ag = icmp sgt i64 %i.y, %.050.lcssa
  br i1 %i.ag, label %.lr.ph61.preheader, label %._crit_edge

.lr.ph61.preheader:                               ; preds = %.preheader57
  %i.ah = add nsw i64 %i.v, %.neg
  %i.ai = add i64 %i.ah, %i.x
  %i.aj = sub i64 %i.ai, %.050.lcssa              ; 3 uses
  %min.iters.check = icmp ult i64 %i.aj, 8
  br i1 %min.iters.check, label %.lr.ph61.preheader136, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph61.preheader
  %i.ak = shl i64 %.050.lcssa, 2                  ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.ak
  %i.al = shl i64 %i.y, 2                         ; 2 uses
  %scevgep90 = getelementptr i8, ptr %0, i64 %i.al
  %i.am = sub i64 %i.al, %i.ak
  %scevgep91 = getelementptr i8, ptr %i.h, i64 %i.am
  %bound0 = icmp ult ptr %scevgep, %scevgep91
  %bound1 = icmp ult ptr %i.h, %scevgep90
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph61.preheader136, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, -8                      ; 4 uses
  %i.an = add i64 %.050.lcssa, %n.vec
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.050.lcssa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load = load <4 x float>, ptr %i.ap, align 4, !alias.scope !636
  %wide.load92 = load <4 x float>, ptr %i.aq, align 4, !alias.scope !636
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %wide.load93 = load <4 x float>, ptr %i.ar, align 4, !alias.scope !639, !noalias !636
  %wide.load94 = load <4 x float>, ptr %i.as, align 4, !alias.scope !639, !noalias !636
  %i.at = fmul <4 x float> %wide.load, %wide.load93
  %i.au = fmul <4 x float> %wide.load92, %wide.load94
  store <4 x float> %i.at, ptr %i.ar, align 4, !alias.scope !639, !noalias !636
  store <4 x float> %i.au, ptr %i.as, align 4, !alias.scope !639, !noalias !636
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !641

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph61.preheader136

.lr.ph61.preheader136:                            ; preds = %vector.memcheck, %.lr.ph61.preheader, %middle.block
  %indvars.iv72.ph = phi i64 [ %.050.lcssa, %vector.memcheck ], [ %.050.lcssa, %.lr.ph61.preheader ], [ %i.an, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph61.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph61

.lr.ph61:                                         ; preds = %.lr.ph61.preheader136, %.lr.ph61
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %.lr.ph61 ], [ %indvars.iv72.ph, %.lr.ph61.preheader136 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph61 ], [ %indvars.iv.ph, %.lr.ph61.preheader136 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.ax = load float, ptr %i.aw, align 4
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv72 ; 2 uses
  %i.az = load float, ptr %i.ay, align 4
  %i.ba = fmul float %i.ax, %i.az
  store float %i.ba, ptr %i.ay, align 4
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
end_hunk_1
begin_hunk_2_@mapping0_free_info:bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @mapping0_forward(ptr noundef initializes((76, 80)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8              ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.h = load ptr, ptr %i.g, align 8              ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load i32, ptr %i.k, align 8              ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 14 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %i.p = shl nsw i64 %i.o, 2
  %i.q = alloca i8, i64 %i.p, align 16            ; 3 uses
  %i.r = shl nsw i64 %i.o, 3                      ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 16 uses
  %i.t = load i64, ptr %i.s, align 8              ; 3 uses
  %i.u = add nsw i64 %i.t, %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 17 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp sgt i64 %i.u, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 17 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  br i1 %i.x, label %bb.b, label %_vorbis_block_alloc.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #69 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add nsw i64 %i.ac, %i.t
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  store ptr %i.z, ptr %i.aa, align 8
  store ptr %i.aa, ptr %i.ae, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 %i.r, ptr %i.v, align 8
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.r) #69 ; 2 uses
  store ptr %i.ah, ptr %i.y, align 8
  br label %_vorbis_block_alloc.exit

_vorbis_block_alloc.exit:                         ; preds = %bb.a, %bb.d
  %i.ai = phi i64 [ %i.r, %bb.d ], [ %i.w, %bb.a ] ; 2 uses
  %i.aj = phi i64 [ 0, %bb.d ], [ %i.t, %bb.a ]   ; 2 uses
  %i.ak = phi ptr [ %i.ah, %bb.d ], [ %i.z, %bb.a ] ; 4 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.aj ; 5 uses
  %i.am = add nsw i64 %i.aj, %i.r                 ; 4 uses
  store i64 %i.am, ptr %i.s, align 8
  %i.an = load i32, ptr %i.m, align 4
  %i.ao = sext i32 %i.an to i64
  %i.ap = shl nsw i64 %i.ao, 3                    ; 5 uses
  %i.aq = add nsw i64 %i.ap, %i.am
  %i.ar = icmp sgt i64 %i.aq, %i.ai
  br i1 %i.ar, label %bb.e, label %_vorbis_block_alloc.exit371

bb.e:                                             ; preds = %_vorbis_block_alloc.exit
  %.not.i370 = icmp eq ptr %i.ak, null
  br i1 %.not.i370, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #69 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8
  %i.av = add nsw i64 %i.au, %i.am
  store i64 %i.av, ptr %i.at, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.ax, ptr %i.ay, align 8
  store ptr %i.ak, ptr %i.as, align 8
  store ptr %i.as, ptr %i.aw, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i64 %i.ap, ptr %i.v, align 8
  %i.az = tail call noalias ptr @malloc(i64 noundef %i.ap) #69 ; 2 uses
  store ptr %i.az, ptr %i.y, align 8
  br label %_vorbis_block_alloc.exit371

_vorbis_block_alloc.exit371:                      ; preds = %_vorbis_block_alloc.exit, %bb.g
  %i.ba = phi i64 [ %i.ap, %bb.g ], [ %i.ai, %_vorbis_block_alloc.exit ] ; 2 uses
  %i.bb = phi i64 [ 0, %bb.g ], [ %i.am, %_vorbis_block_alloc.exit ] ; 2 uses
  %i.bc = phi ptr [ %i.az, %bb.g ], [ %i.ak, %_vorbis_block_alloc.exit ] ; 4 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 %i.bb ; 2 uses
  %i.be = add nsw i64 %i.bb, %i.ap                ; 4 uses
  store i64 %i.be, ptr %i.s, align 8
  %i.bf = load i32, ptr %i.m, align 4
  %i.bg = sext i32 %i.bf to i64
  %i.bh = shl nsw i64 %i.bg, 3                    ; 5 uses
  %i.bi = add nsw i64 %i.bh, %i.be
  %i.bj = icmp sgt i64 %i.bi, %i.ba
  br i1 %i.bj, label %bb.h, label %_vorbis_block_alloc.exit373

bb.h:                                             ; preds = %_vorbis_block_alloc.exit371
  %.not.i372 = icmp eq ptr %i.bc, null
  br i1 %.not.i372, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #69 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = add nsw i64 %i.bm, %i.be
  store i64 %i.bn, ptr %i.bl, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bp, ptr %i.bq, align 8
  store ptr %i.bc, ptr %i.bk, align 8
  store ptr %i.bk, ptr %i.bo, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i64 %i.bh, ptr %i.v, align 8
  %i.br = tail call noalias ptr @malloc(i64 noundef %i.bh) #69 ; 2 uses
  store ptr %i.br, ptr %i.y, align 8
  br label %_vorbis_block_alloc.exit373

_vorbis_block_alloc.exit373:                      ; preds = %_vorbis_block_alloc.exit371, %bb.j
  %i.bs = phi i64 [ %i.bh, %bb.j ], [ %i.ba, %_vorbis_block_alloc.exit371 ]
  %i.bt = phi i64 [ 0, %bb.j ], [ %i.be, %_vorbis_block_alloc.exit371 ] ; 2 uses
  %i.bu = phi ptr [ %i.br, %bb.j ], [ %i.bc, %_vorbis_block_alloc.exit371 ] ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %i.bt ; 2 uses
  %i.bw = add nsw i64 %i.bt, %i.bh                ; 2 uses
  store i64 %i.bw, ptr %i.s, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.by = load float, ptr %i.bx, align 8          ; 2 uses
  %i.bz = load i32, ptr %i.m, align 4
  %i.ca = sext i32 %i.bz to i64
  %i.cb = shl nsw i64 %i.ca, 2
  %i.cc = alloca i8, i64 %i.cb, align 16          ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %i.cg = load i64, ptr %i.cf, align 8            ; 3 uses
  %i.ch = trunc i64 %i.cg to i32                  ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 808
  %sext = shl i64 %i.cg, 32
  %i.cj = ashr exact i64 %sext, 32                ; 2 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = load ptr, ptr %i.ck, align 8            ; 11 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = sext i32 %i.ce to i64
  %i.cp = getelementptr inbounds [88 x i8], ptr %i.cn, i64 %i.co
  %.not = icmp eq i64 %i.cg, 0
  %i.cq = select i1 %.not, i64 0, i64 2
  %i.cr = getelementptr inbounds nuw [88 x i8], ptr %i.cp, i64 %i.cq ; 14 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  store i32 %i.ch, ptr %i.cs, align 4
  %i.ct = load i32, ptr %i.m, align 4
  %i.cu = icmp sgt i32 %i.ct, 0
  br i1 %i.cu, label %.lr.ph460, label %_vorbis_block_alloc.exit373.._crit_edge461_crit_edge

_vorbis_block_alloc.exit373.._crit_edge461_crit_edge: ; preds = %_vorbis_block_alloc.exit373
  %.pre539 = sdiv i32 %i.l, 2                     ; 2 uses
  %.pre541 = sext i32 %.pre539 to i64             ; 2 uses
  %.pre543 = shl nsw i64 %.pre541, 2
  %.pre545 = add nsw i64 %.pre543, 4
  %.pre547 = and i64 %.pre545, -8
  br label %._crit_edge461

.lr.ph460:                                        ; preds = %_vorbis_block_alloc.exit373
  %i.cv = sitofp i32 %i.l to float
  %i.cw = fdiv float 4.000000e+00, %i.cv
  %i.cx = sdiv i32 %i.l, 2                        ; 2 uses
  %i.cy = sext i32 %i.cx to i64                   ; 2 uses
  %i.cz = shl nsw i64 %i.cy, 2
  %i.da = add nsw i64 %i.cz, 4
  %i.db = and i64 %i.da, -8                       ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.de = tail call float @llvm.fabs.f32(float %i.cw)
  %i.df = bitcast float %i.de to i32
  %i.dg = uitofp nneg i32 %i.df to float
  %i.dh = fmul nnan float %i.dg, f0x3540A8C1
  %i.di = fadd float %i.dh, f0xC43F115B           ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.do = add nsw i32 %i.l, -1
  %i.dp = icmp sgt i32 %i.l, 2
  %1 = zext nneg i32 %i.do to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph460, %bb.q
  %indvars.iv496 = phi i64 [ 0, %.lr.ph460 ], [ %indvars.iv.next497, %bb.q ] ; 4 uses
  %.0346458 = phi float [ %i.by, %.lr.ph460 ], [ %.1347, %bb.q ] ; 2 uses
  %i.dq = load ptr, ptr %0, align 8
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv496
  %i.ds = load ptr, ptr %i.dr, align 8            ; 16 uses
  %i.dt = load i64, ptr %i.s, align 8             ; 3 uses
  %i.du = add nsw i64 %i.dt, %i.db
  %i.dv = load i64, ptr %i.v, align 8
  %i.dw = icmp sgt i64 %i.du, %i.dv
  %i.dx = load ptr, ptr %i.y, align 8             ; 3 uses
  br i1 %i.dw, label %bb.l, label %_vorbis_block_alloc.exit375

bb.l:                                             ; preds = %bb.k
  %.not.i374 = icmp eq ptr %i.dx, null
  br i1 %.not.i374, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dy = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #69 ; 3 uses
  %i.dz = load i64, ptr %i.dc, align 8
  %i.ea = add nsw i64 %i.dz, %i.dt
  store i64 %i.ea, ptr %i.dc, align 8
  %i.eb = load ptr, ptr %i.dd, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %i.eb, ptr %i.ec, align 8
  store ptr %i.dx, ptr %i.dy, align 8
  store ptr %i.dy, ptr %i.dd, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i64 %i.db, ptr %i.v, align 8
  %i.ed = tail call noalias ptr @malloc(i64 noundef %i.db) #69 ; 2 uses
  store ptr %i.ed, ptr %i.y, align 8
  br label %_vorbis_block_alloc.exit375

_vorbis_block_alloc.exit375:                      ; preds = %bb.k, %bb.n
  %i.ee = phi i64 [ 0, %bb.n ], [ %i.dt, %bb.k ]  ; 2 uses
  %i.ef = phi ptr [ %i.ed, %bb.n ], [ %i.dx, %bb.k ]
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 %i.ee
  %i.eh = add nsw i64 %i.ee, %i.db
  store i64 %i.eh, ptr %i.s, align 8
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv496 ; 2 uses
  store ptr %i.eg, ptr %i.ei, align 8
  %i.ej = load i64, ptr %i.dk, align 8
  %i.ek = load i64, ptr %i.cf, align 8            ; 2 uses
  %i.el = load i64, ptr %i.dl, align 8
  %i.em = and i64 %i.ek, 4294967295
  %.not.i376 = icmp eq i64 %i.em, 0               ; 2 uses
  %i.en = shl i64 %i.ej, 32
  %i.eo = ashr exact i64 %i.en, 32
  %i.ep = select i1 %.not.i376, i64 0, i64 %i.eo  ; 2 uses
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [8 x i8], ptr @vwin, i64 %i.es
  %i.eu = load ptr, ptr %i.et, align 8            ; 4 uses
  %i.ev = shl i64 %i.el, 32
  %i.ew = ashr exact i64 %i.ev, 32
  %i.ex = select i1 %.not.i376, i64 0, i64 %i.ew  ; 2 uses
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [8 x i8], ptr @vwin, i64 %i.fa
  %i.fc = load ptr, ptr %i.fb, align 8            ; 4 uses
  %sext447 = shl i64 %i.ek, 32
  %i.fd = ashr exact i64 %sext447, 29
  %i.fe = getelementptr inbounds i8, ptr %i.f, i64 %i.fd
  %i.ff = load i64, ptr %i.fe, align 8            ; 4 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ep
  %i.fh = load i64, ptr %i.fg, align 8            ; 2 uses
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ex
  %i.fj = load i64, ptr %i.fi, align 8            ; 2 uses
  %i.fk = sdiv i64 %i.ff, 4                       ; 5 uses
  %.neg.i = sdiv i64 %i.fh, -4                    ; 2 uses
  %i.fl = add nsw i64 %.neg.i, %i.fk              ; 4 uses
  %i.fm = sdiv i64 %i.fh, 2                       ; 2 uses
  %i.fn = add i64 %i.fl, %i.fm                    ; 3 uses
  %i.fo = sdiv i64 %i.ff, 2                       ; 3 uses
  %i.fp = add nsw i64 %i.fo, %i.fk
  %.neg56.i = sdiv i64 %i.fj, -4                  ; 3 uses
  %i.fq = add i64 %i.fp, %.neg56.i                ; 2 uses
  %i.fr = sdiv i64 %i.fj, 2                       ; 6 uses
  %i.fs = add i64 %i.fq, %i.fr                    ; 4 uses
  %i.ft = icmp sgt i64 %i.fl, 0
  br i1 %i.ft, label %.lr.ph.preheader.i, label %.preheader57.i

.lr.ph.preheader.i:                               ; preds = %_vorbis_block_alloc.exit375
  %i.fu = shl nuw i64 %i.fl, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ds, i8 0, i64 %i.fu, i1 false)
  br label %.preheader57.i

.preheader57.i:                                   ; preds = %.lr.ph.preheader.i, %_vorbis_block_alloc.exit375
  %.050.lcssa.i = phi i64 [ 0, %_vorbis_block_alloc.exit375 ], [ %i.fl, %.lr.ph.preheader.i ] ; 7 uses
  %i.fv = icmp sgt i64 %i.fn, %.050.lcssa.i
  br i1 %i.fv, label %.lr.ph61.i.preheader, label %._crit_edge.i

.lr.ph61.i.preheader:                             ; preds = %.preheader57.i
  %i.fw = add nsw i64 %i.fk, %.neg.i
  %i.fx = add i64 %i.fw, %i.fm
  %i.fy = sub i64 %i.fx, %.050.lcssa.i            ; 3 uses
  %min.iters.check620 = icmp ult i64 %i.fy, 8
  br i1 %min.iters.check620, label %.lr.ph61.i.preheader760, label %vector.memcheck612

vector.memcheck612:                               ; preds = %.lr.ph61.i.preheader
  %i.fz = shl i64 %.050.lcssa.i, 2                ; 2 uses
  %scevgep613 = getelementptr i8, ptr %i.ds, i64 %i.fz
  %i.ga = shl i64 %i.fn, 2                        ; 2 uses
  %scevgep614 = getelementptr i8, ptr %i.ds, i64 %i.ga
  %i.gb = sub i64 %i.ga, %i.fz
  %scevgep615 = getelementptr i8, ptr %i.eu, i64 %i.gb
  %bound0616 = icmp ult ptr %scevgep613, %scevgep615
  %bound1617 = icmp ult ptr %i.eu, %scevgep614
  %found.conflict618 = and i1 %bound0616, %bound1617
  br i1 %found.conflict618, label %.lr.ph61.i.preheader760, label %vector.ph621

vector.ph621:                                     ; preds = %vector.memcheck612
  %n.vec623 = and i64 %i.fy, -8                   ; 4 uses
  %i.gc = add i64 %.050.lcssa.i, %n.vec623
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %.050.lcssa.i
  br label %vector.body624

vector.body624:                                   ; preds = %vector.body624, %vector.ph621
  %index625 = phi i64 [ 0, %vector.ph621 ], [ %index.next630, %vector.body624 ] ; 3 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %index625 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %wide.load626 = load <4 x float>, ptr %i.ge, align 4, !alias.scope !852
  %wide.load627 = load <4 x float>, ptr %i.gf, align 4, !alias.scope !852
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %index625 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16 ; 2 uses
  %wide.load628 = load <4 x float>, ptr %i.gg, align 4, !alias.scope !855, !noalias !852
  %wide.load629 = load <4 x float>, ptr %i.gh, align 4, !alias.scope !855, !noalias !852
  %i.gi = fmul <4 x float> %wide.load626, %wide.load628
  %i.gj = fmul <4 x float> %wide.load627, %wide.load629
  store <4 x float> %i.gi, ptr %i.gg, align 4, !alias.scope !855, !noalias !852
  store <4 x float> %i.gj, ptr %i.gh, align 4, !alias.scope !855, !noalias !852
  %index.next630 = add nuw i64 %index625, 8       ; 2 uses
  %i.gk = icmp eq i64 %index.next630, %n.vec623
  br i1 %i.gk, label %middle.block631, label %vector.body624, !llvm.loop !857

middle.block631:                                  ; preds = %vector.body624
  %cmp.n632 = icmp eq i64 %i.fy, %n.vec623
  br i1 %cmp.n632, label %._crit_edge.i, label %.lr.ph61.i.preheader760

.lr.ph61.i.preheader760:                          ; preds = %vector.memcheck612, %.lr.ph61.i.preheader, %middle.block631
  %indvars.iv72.i.ph = phi i64 [ %.050.lcssa.i, %vector.memcheck612 ], [ %.050.lcssa.i, %.lr.ph61.i.preheader ], [ %i.gc, %middle.block631 ]
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck612 ], [ 0, %.lr.ph61.i.preheader ], [ %n.vec623, %middle.block631 ]
  br label %.lr.ph61.i

.lr.ph61.i:                                       ; preds = %.lr.ph61.i.preheader760, %.lr.ph61.i
  %indvars.iv72.i = phi i64 [ %indvars.iv.next73.i, %.lr.ph61.i ], [ %indvars.iv72.i.ph, %.lr.ph61.i.preheader760 ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph61.i ], [ %indvars.iv.i.ph, %.lr.ph61.i.preheader760 ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv.i
  %i.gm = load float, ptr %i.gl, align 4
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv72.i ; 2 uses
  %i.go = load float, ptr %i.gn, align 4
  %i.gp = fmul float %i.gm, %i.go
  store float %i.gp, ptr %i.gn, align 4
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.gq = icmp sgt i64 %i.fn, %indvars.iv.next73.i
  br i1 %i.gq, label %.lr.ph61.i, label %._crit_edge.i, !llvm.loop !858

._crit_edge.i:                                    ; preds = %.lr.ph61.i, %middle.block631, %.preheader57.i
  %sext.i = shl i64 %i.fq, 32                     ; 2 uses
  %i.gr = ashr exact i64 %sext.i, 32              ; 10 uses
  %i.gs = icmp sgt i64 %i.fs, %i.gr
  br i1 %i.gs, label %.lr.ph65.preheader.i, label %.preheader.i

.lr.ph65.preheader.i:                             ; preds = %._crit_edge.i
  %i.gt = trunc i64 %i.fr to i32                  ; 5 uses
  %i.gu = add nsw i64 %i.fo, %i.fk
  %i.gv = add i64 %i.gu, %.neg56.i
  %i.gw = add i64 %i.gv, %i.fr
  %i.gx = sub i64 %i.gw, %i.gr                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.gx, 20
  br i1 %min.iters.check, label %.lr.ph65.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph65.preheader.i
  %i.gy = add nsw i64 %i.fo, -1
  %i.gz = add i64 %i.gy, %i.fk
  %i.ha = add i64 %i.gz, %.neg56.i
  %i.hb = add i64 %i.ha, %i.fr
  %i.hc = sub i64 %i.hb, %i.gr                    ; 2 uses
  %i.hd = add i32 %i.gt, -1                       ; 2 uses
  %i.he = trunc i64 %i.hc to i32
  %i.hf = sub i32 %i.hd, %i.he
  %i.hg = icmp sgt i32 %i.hf, %i.hd
  %i.hh = icmp ugt i64 %i.hc, 4294967295
  %i.hi = or i1 %i.hg, %i.hh
  br i1 %i.hi, label %.lr.ph65.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.hj = ashr exact i64 %sext.i, 30
  %scevgep601 = getelementptr i8, ptr %i.ds, i64 %i.hj
  %i.hk = shl i64 %i.fs, 2
  %scevgep602 = getelementptr i8, ptr %i.ds, i64 %i.hk
  %scevgep603 = getelementptr i8, ptr %i.fc, i64 4
  %i.hl = shl i64 %i.fr, 32
  %sext748 = add i64 %i.hl, -4294967296           ; 2 uses
  %i.hm = ashr exact i64 %sext748, 32
  %i.hn = add nsw i64 %i.hm, %i.gr
  %i.ho = sub i64 %i.hn, %i.fs
  %i.hp = shl i64 %i.ho, 2
  %scevgep604 = getelementptr i8, ptr %scevgep603, i64 %i.hp
  %scevgep605 = getelementptr i8, ptr %i.fc, i64 4
  %i.hq = ashr exact i64 %sext748, 30
  %scevgep606 = getelementptr i8, ptr %scevgep605, i64 %i.hq
  %bound0 = icmp ult ptr %scevgep601, %scevgep606
  %bound1 = icmp ult ptr %scevgep604, %scevgep602
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph65.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gx, -8                      ; 4 uses
  %i.hr = add i64 %i.gr, %n.vec                   ; 2 uses
  %i.hs = trunc i64 %n.vec to i32
  %i.ht = sub i32 %i.gt, %i.hs
  %i.hu = getelementptr [4 x i8], ptr %i.ds, i64 %i.gr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hv = xor i64 %index, -1
  %i.hw = add i64 %i.fr, %i.hv
  %sext749 = shl i64 %i.hw, 32
  %i.hx = ashr exact i64 %sext749, 30
  %i.hy = getelementptr inbounds i8, ptr %i.fc, i64 %i.hx ; 2 uses
  %i.hz = getelementptr inbounds i8, ptr %i.hy, i64 -12
  %i.ia = getelementptr inbounds i8, ptr %i.hy, i64 -28
  %wide.load = load <4 x float>, ptr %i.hz, align 4, !alias.scope !859
  %wide.load607 = load <4 x float>, ptr %i.ia, align 4, !alias.scope !859
  %reverse = shufflevector <4 x float> %wide.load, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse608 = shufflevector <4 x float> %wide.load607, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ib = getelementptr [4 x i8], ptr %i.hu, i64 %index ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16 ; 2 uses
  %wide.load609 = load <4 x float>, ptr %i.ib, align 4, !alias.scope !862, !noalias !859
  %wide.load610 = load <4 x float>, ptr %i.ic, align 4, !alias.scope !862, !noalias !859
  %i.id = fmul <4 x float> %reverse, %wide.load609
  %i.ie = fmul <4 x float> %reverse608, %wide.load610
  store <4 x float> %i.id, ptr %i.ib, align 4, !alias.scope !862, !noalias !859
  store <4 x float> %i.ie, ptr %i.ic, align 4, !alias.scope !862, !noalias !859
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.if = icmp eq i64 %index.next, %n.vec
  br i1 %i.if, label %middle.block, label %vector.body, !llvm.loop !864

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gx, %n.vec
  br i1 %cmp.n, label %.preheader.i.loopexit, label %.lr.ph65.i.preheader

.lr.ph65.i.preheader:                             ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph65.preheader.i, %middle.block
  %indvars.iv77.i.ph = phi i64 [ %i.gr, %vector.memcheck ], [ %i.gr, %vector.scevcheck ], [ %i.gr, %.lr.ph65.preheader.i ], [ %i.hr, %middle.block ]
  %.1.in63.i.ph = phi i32 [ %i.gt, %vector.memcheck ], [ %i.gt, %vector.scevcheck ], [ %i.gt, %.lr.ph65.preheader.i ], [ %i.ht, %middle.block ]
  br label %.lr.ph65.i

.preheader.i.loopexit:                            ; preds = %.lr.ph65.i, %middle.block
  %indvars.iv.next78.i.lcssa = phi i64 [ %i.hr, %middle.block ], [ %indvars.iv.next78.i, %.lr.ph65.i ]
  %.pre533 = shl i64 %indvars.iv.next78.i.lcssa, 32
  %.pre534 = ashr exact i64 %.pre533, 32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.loopexit, %._crit_edge.i
  %.pre-phi = phi i64 [ %.pre534, %.preheader.i.loopexit ], [ %i.gr, %._crit_edge.i ] ; 3 uses
  %i.ig = icmp sgt i64 %i.ff, %.pre-phi
  br i1 %i.ig, label %.lr.ph68.i.preheader, label %_vorbis_apply_window.exit

.lr.ph68.i.preheader:                             ; preds = %.preheader.i
  %i.ih = shl nsw i64 %.pre-phi, 2
  %scevgep = getelementptr i8, ptr %i.ds, i64 %i.ih
  %i.ii = sub i64 %i.ff, %.pre-phi
  %i.ij = shl i64 %i.ii, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.ij, i1 false)
  br label %_vorbis_apply_window.exit

.lr.ph65.i:                                       ; preds = %.lr.ph65.i.preheader, %.lr.ph65.i
  %indvars.iv77.i = phi i64 [ %indvars.iv.next78.i, %.lr.ph65.i ], [ %indvars.iv77.i.ph, %.lr.ph65.i.preheader ] ; 2 uses
  %.1.in63.i = phi i32 [ %.1.i, %.lr.ph65.i ], [ %.1.in63.i.ph, %.lr.ph65.i.preheader ]
  %.1.i = add i32 %.1.in63.i, -1                  ; 2 uses
  %i.ik = sext i32 %.1.i to i64
  %i.il = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.ik
  %i.im = load float, ptr %i.il, align 4
  %i.in = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %indvars.iv77.i ; 2 uses
  %i.io = load float, ptr %i.in, align 4
  %i.ip = fmul float %i.im, %i.io
  store float %i.ip, ptr %i.in, align 4
  %indvars.iv.next78.i = add nsw i64 %indvars.iv77.i, 1 ; 3 uses
  %i.iq = icmp sgt i64 %i.fs, %indvars.iv.next78.i
  br i1 %i.iq, label %.lr.ph65.i, label %.preheader.i.loopexit, !llvm.loop !865

_vorbis_apply_window.exit:                        ; preds = %.lr.ph68.i.preheader, %.preheader.i
  %i.ir = load i64, ptr %i.cf, align 8
  %i.is = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.ir
  %i.it = load ptr, ptr %i.is, align 8
  %i.iu = load ptr, ptr %i.it, align 8
  %i.iv = load ptr, ptr %i.ei, align 8
  tail call void @mdct_forward(ptr noundef %i.iu, ptr noundef %i.ds, ptr noundef %i.iv)
  %i.iw = load i64, ptr %i.cf, align 8
  %i.ix = getelementptr inbounds [24 x i8], ptr %i.dn, i64 %i.iw
  tail call void @drft_forward(ptr noundef nonnull %i.ix, ptr noundef %i.ds)
  %.val368 = load i32, ptr %i.ds, align 4
  %i.iy = and i32 %.val368, 2147483647
  %i.iz = uitofp nneg i32 %i.iy to float
  %i.ja = fmul nnan float %i.iz, f0x3540A8C1
  %i.jb = fadd float %i.ja, f0xC43F115B
  %i.jc = fadd float %i.di, %i.jb                 ; 4 uses
  store float %i.jc, ptr %i.ds, align 4
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv496 ; 3 uses
  store float %i.jc, ptr %i.jd, align 4
  br i1 %i.dp, label %.lr.ph, label %bb.o

.lr.ph:                                           ; preds = %_vorbis_apply_window.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %_vorbis_apply_window.exit ] ; 3 uses
  %i.je = phi float [ %i.ju, %.lr.ph ], [ %i.jc, %_vorbis_apply_window.exit ] ; 2 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv
  %i.jg = add nuw nsw i64 %indvars.iv, 1
  %i.jh = load <2 x float>, ptr %i.jf, align 4    ; 2 uses
  %i.ji = fmul <2 x float> %i.jh, %i.jh           ; 2 uses
  %shift = shufflevector <2 x float> %i.ji, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ji, %shift
  %i.jj = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.jk = tail call float @llvm.fabs.f32(float %i.jj)
  %i.jl = bitcast float %i.jk to i32
  %i.jm = uitofp nneg i32 %i.jl to float
  %i.jn = fmul nnan float %i.jm, f0x3540A8C1
  %i.jo = fadd nnan float %i.jn, f0xC43F115B
  %i.jp = fmul nnan float %i.jo, 5.000000e-01
  %i.jq = fadd float %i.di, %i.jp                 ; 3 uses
  %i.jr = lshr i64 %i.jg, 1
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.jr
  store float %i.jq, ptr %i.js, align 4
  %i.jt = fcmp ogt float %i.jq, %i.je
  %i.ju = select i1 %i.jt, float %i.jq, float %i.je ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %2 = icmp samesign ult i64 %indvars.iv.next, %1
  br i1 %2, label %.lr.ph, label %._crit_edge, !llvm.loop !866

._crit_edge:                                      ; preds = %.lr.ph
  store float %i.ju, ptr %i.jd, align 4
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %_vorbis_apply_window.exit
  %i.jv = phi float [ %i.ju, %._crit_edge ], [ %i.jc, %_vorbis_apply_window.exit ] ; 2 uses
  %i.jw = fcmp ogt float %i.jv, 0.000000e+00
  br i1 %i.jw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store float 0.000000e+00, ptr %i.jd, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.jx = phi float [ 0.000000e+00, %bb.p ], [ %i.jv, %bb.o ] ; 2 uses
  %i.jy = fcmp ogt float %i.jx, %.0346458
  %.1347 = select i1 %i.jy, float %i.jx, float %.0346458 ; 2 uses
  %indvars.iv.next497 = add nuw nsw i64 %indvars.iv496, 1 ; 2 uses
  %i.jz = load i32, ptr %i.m, align 4
  %i.ka = sext i32 %i.jz to i64
  %i.kb = icmp slt i64 %indvars.iv.next497, %i.ka
  br i1 %i.kb, label %bb.k, label %._crit_edge461.loopexit, !llvm.loop !867

._crit_edge461.loopexit:                          ; preds = %bb.q
  %.pre = load i64, ptr %i.s, align 8
  %.pre529 = load i64, ptr %i.v, align 8
  %.pre530 = load ptr, ptr %i.y, align 8
  br label %._crit_edge461

._crit_edge461:                                   ; preds = %_vorbis_block_alloc.exit373.._crit_edge461_crit_edge, %._crit_edge461.loopexit
  %.pre-phi548 = phi i64 [ %.pre547, %_vorbis_block_alloc.exit373.._crit_edge461_crit_edge ], [ %i.db, %._crit_edge461.loopexit ] ; 13 uses
  %.pre-phi542 = phi i64 [ %.pre541, %_vorbis_block_alloc.exit373.._crit_edge461_crit_edge ], [ %i.cy, %._crit_edge461.loopexit ] ; 5 uses
  %.pre-phi540 = phi i32 [ %.pre539, %_vorbis_block_alloc.exit373.._crit_edge461_crit_edge ], [ %i.cx, %._crit_edge461.loopexit ] ; 2 uses
  %i.kc = phi ptr [ %i.bu, %_vorbis_block_alloc.exit373.._crit_edge461_crit_edge ], [ %.pre530, %._crit_edge461.loopexit ] ; 3 uses
  %i.kd = phi i64 [ %i.bs, %_vorbis_block_alloc.exit373.._crit_edge461_crit_edge ], [ %.pre529, %._crit_edge461.loopexit ] ; 2 uses
  %i.ke = phi i64 [ %i.bw, %_vorbis_block_alloc.exit373.._crit_edge461_crit_edge ], [ %.pre, %._crit_edge461.loopexit ] ; 3 uses
  %.0346.lcssa = phi float [ %i.by, %_vorbis_block_alloc.exit373.._crit_edge461_crit_edge ], [ %.1347, %._crit_edge461.loopexit ] ; 2 uses
  %i.kf = add nsw i64 %i.ke, %.pre-phi548
  %i.kg = icmp sgt i64 %i.kf, %i.kd
  br i1 %i.kg, label %bb.r, label %_vorbis_block_alloc.exit379

bb.r:                                             ; preds = %._crit_edge461
  %.not.i378 = icmp eq ptr %i.kc, null
  br i1 %.not.i378, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.kh = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #69 ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.kj = load i64, ptr %i.ki, align 8
  %i.kk = add nsw i64 %i.kj, %i.ke
  store i64 %i.kk, ptr %i.ki, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.km = load ptr, ptr %i.kl, align 8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  store ptr %i.km, ptr %i.kn, align 8
  store ptr %i.kc, ptr %i.kh, align 8
  store ptr %i.kh, ptr %i.kl, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store i64 %.pre-phi548, ptr %i.v, align 8
  %i.ko = tail call noalias ptr @malloc(i64 noundef %.pre-phi548) #69 ; 2 uses
  store ptr %i.ko, ptr %i.y, align 8
  br label %_vorbis_block_alloc.exit379

_vorbis_block_alloc.exit379:                      ; preds = %._crit_edge461, %bb.t
  %i.kp = phi i64 [ %.pre-phi548, %bb.t ], [ %i.kd, %._crit_edge461 ]
  %i.kq = phi i64 [ 0, %bb.t ], [ %i.ke, %._crit_edge461 ] ; 2 uses
  %i.kr = phi ptr [ %i.ko, %bb.t ], [ %i.kc, %._crit_edge461 ] ; 4 uses
  %i.ks = getelementptr inbounds i8, ptr %i.kr, i64 %i.kq ; 4 uses
  %i.kt = add nsw i64 %i.kq, %.pre-phi548         ; 3 uses
  %i.ku = add nsw i64 %i.kt, %.pre-phi548
  %i.kv = icmp sgt i64 %i.ku, %i.kp
  br i1 %i.kv, label %bb.u, label %_vorbis_block_alloc.exit382

bb.u:                                             ; preds = %_vorbis_block_alloc.exit379
  %.not.i381 = icmp eq ptr %i.kr, null
  br i1 %.not.i381, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.kw = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #69 ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ky = load i64, ptr %i.kx, align 8
  %i.kz = add nsw i64 %i.ky, %i.kt
  store i64 %i.kz, ptr %i.kx, align 8
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.lb = load ptr, ptr %i.la, align 8
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  store ptr %i.lb, ptr %i.lc, align 8
  store ptr %i.kr, ptr %i.kw, align 8
  store ptr %i.kw, ptr %i.la, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  store i64 %.pre-phi548, ptr %i.v, align 8
  %i.ld = tail call noalias ptr @malloc(i64 noundef %.pre-phi548) #69 ; 2 uses
  store ptr %i.ld, ptr %i.y, align 8
  br label %_vorbis_block_alloc.exit382

_vorbis_block_alloc.exit382:                      ; preds = %_vorbis_block_alloc.exit379, %bb.w
  %i.le = phi i64 [ 0, %bb.w ], [ %i.kt, %_vorbis_block_alloc.exit379 ] ; 2 uses
  %i.lf = phi ptr [ %i.ld, %bb.w ], [ %i.kr, %_vorbis_block_alloc.exit379 ]
  %i.lg = getelementptr inbounds i8, ptr %i.lf, i64 %i.le ; 4 uses
  %i.lh = add nsw i64 %i.le, %.pre-phi548
  store i64 %i.lh, ptr %i.s, align 8
  %i.li = load i32, ptr %i.m, align 4
  %.not357467 = icmp sgt i32 %i.li, 0
  br i1 %.not357467, label %.lr.ph469, label %.critedge366

.lr.ph469:                                        ; preds = %_vorbis_block_alloc.exit382
  %i.lj = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.lm = icmp sgt i32 %i.l, 1
  %i.ln = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 6 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.cr, i64 24 ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.f, i64 1320
  %i.lq = getelementptr inbounds nuw i8, ptr %i.cl, i64 1028
  %i.lr = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 5 uses
  %wide.trip.count = zext i32 %.pre-phi540 to i64 ; 5 uses
  %i.ls = shl nsw i64 %.pre-phi542, 2
  %min.iters.check708 = icmp ult i32 %.pre-phi540, 8
  %n.vec711 = and i64 %wide.trip.count, 4294967288 ; 3 uses
  %cmp.n718 = icmp eq i64 %n.vec711, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.lt = add nsw i64 %wide.trip.count, -1
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph469, %.loopexit451
  %indvars.iv510 = phi i64 [ 0, %.lr.ph469 ], [ %indvars.iv.next511, %.loopexit451 ] ; 6 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %indvars.iv510
  %i.lv = load i32, ptr %i.lu, align 4
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv510
  %i.lx = load ptr, ptr %i.lw, align 8            ; 5 uses
  %i.ly = ptrtoaddr ptr %i.lx to i64
  %i.lz = load ptr, ptr %0, align 8
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %indvars.iv510
  %i.mb = load ptr, ptr %i.ma, align 8            ; 9 uses
  %i.mc = ptrtoaddr ptr %i.mb to i64
  %i.md = getelementptr inbounds [4 x i8], ptr %i.mb, i64 %.pre-phi542 ; 8 uses
  store i32 %i.ch, ptr %i.cs, align 4
  %i.me = load i64, ptr %i.s, align 8             ; 3 uses
  %i.mf = add nsw i64 %i.me, 120
  %i.mg = load i64, ptr %i.v, align 8
  %i.mh = icmp sgt i64 %i.mf, %i.mg
  %i.mi = load ptr, ptr %i.y, align 8             ; 3 uses
  br i1 %i.mh, label %bb.y, label %_vorbis_block_alloc.exit385

bb.y:                                             ; preds = %bb.x
  %.not.i384 = icmp eq ptr %i.mi, null
  br i1 %.not.i384, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.mj = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #69 ; 3 uses
  %i.mk = load i64, ptr %i.lk, align 8
  %i.ml = add nsw i64 %i.mk, %i.me
  store i64 %i.ml, ptr %i.lk, align 8
  %i.mm = load ptr, ptr %i.ll, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  store ptr %i.mm, ptr %i.mn, align 8
  store ptr %i.mi, ptr %i.mj, align 8
  store ptr %i.mj, ptr %i.ll, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  store i64 120, ptr %i.v, align 8
  %i.mo = tail call noalias dereferenceable_or_null(120) ptr @malloc(i64 noundef 120) #69 ; 2 uses
  store ptr %i.mo, ptr %i.y, align 8
  br label %_vorbis_block_alloc.exit385

_vorbis_block_alloc.exit385:                      ; preds = %bb.x, %bb.aa
  %i.mp = phi i64 [ 0, %bb.aa ], [ %i.me, %bb.x ] ; 2 uses
  %i.mq = phi ptr [ %i.mo, %bb.aa ], [ %i.mi, %bb.x ]
  %i.mr = getelementptr inbounds i8, ptr %i.mq, i64 %i.mp ; 2 uses
  %i.ms = add nsw i64 %i.mp, 120
  store i64 %i.ms, ptr %i.s, align 8
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv510 ; 9 uses
  store ptr %i.mr, ptr %i.mt, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.mr, i8 0, i64 120, i1 false)
  br i1 %i.lm, label %.lr.ph463.preheader, label %._crit_edge464

.lr.ph463.preheader:                              ; preds = %_vorbis_block_alloc.exit385
  br i1 %min.iters.check708, label %.lr.ph463.preheader758, label %vector.memcheck706

vector.memcheck706:                               ; preds = %.lr.ph463.preheader
  %i.mu = add i64 %i.ls, %i.mc
  %i.mv = sub i64 %i.ly, %i.mu
  %diff.check = icmp ugt i64 %i.mv, -32
  br i1 %diff.check, label %.lr.ph463.preheader758, label %vector.body712

vector.body712:                                   ; preds = %vector.memcheck706, %vector.body712
  %index713 = phi i64 [ %index.next716, %vector.body712 ], [ 0, %vector.memcheck706 ] ; 3 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %index713 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %wide.load714 = load <4 x i32>, ptr %i.mw, align 4
  %wide.load715 = load <4 x i32>, ptr %i.mx, align 4
  %i.my = and <4 x i32> %wide.load714, splat (i32 2147483647)
end_hunk_2
begin_hunk_3_@ogg_sync_init:bb.a
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local noundef i32 @ogg_sync_destroy(ptr noundef captures(address_is_null) %0) local_unnamed_addr #16 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not5.i = icmp eq ptr %i.a, null
  br i1 %.not5.i, label %ogg_sync_clear.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #62
  br label %ogg_sync_clear.exit

ogg_sync_clear.exit:                              ; preds = %bb.b, %bb.c
  tail call void @free(ptr noundef nonnull %0) #62
  br label %bb.d

bb.d:                                             ; preds = %ogg_sync_clear.exit, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local ptr @ogg_sync_buffer(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sub nsw i32 %i.d, %i.b                   ; 3 uses
  store i32 %i.e, ptr %i.c, align 4
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = sext i32 %i.b to i64
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %i.j = zext nneg i32 %i.e to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.i, i64 %i.j, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 0, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4              ; 3 uses
  %i.o = sub nsw i32 %i.l, %i.n
  %i.p = sext i32 %i.o to i64
  %i.q = icmp sgt i64 %1, %i.p
  %.pre = load ptr, ptr %0, align 8               ; 3 uses
  br i1 %i.q, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.r = sext i32 %i.n to i64
  %i.s = add i64 %1, 4096
  %i.t = add i64 %i.s, %i.r                       ; 3 uses
  %.not26 = icmp eq ptr %.pre, null
  br i1 %.not26, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = tail call ptr @realloc(ptr noundef nonnull %.pre, i64 noundef %i.t) #66
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.t) #69
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %storemerge = phi ptr [ %i.v, %bb.h ], [ %i.u, %bb.g ] ; 2 uses
  store ptr %storemerge, ptr %0, align 8
  %i.w = trunc i64 %i.t to i32
  store i32 %i.w, ptr %i.k, align 8
  %.pre27 = load i32, ptr %i.m, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  %i.x = phi i32 [ %.pre27, %bb.i ], [ %i.n, %bb.e ]
  %i.y = phi ptr [ %storemerge, %bb.i ], [ %.pre, %bb.e ]
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 %i.z
  ret ptr %i.aa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -1, 1) i32 @ogg_sync_wrote(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #39 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = sext i32 %i.b to i64
  %i.d = add nsw i64 %1, %i.c                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = sext i32 %i.f to i64
  %i.h = icmp sgt i64 %i.d, %i.g
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.d to i32
  store i32 %i.i, ptr %i.a, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 -9223372036854775807, -9223372036854775808) i64 @ogg_sync_pageseek(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #25 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = sub nsw i32 %i.h, %i.d                   ; 4 uses
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.l = load i32, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.n = icmp slt i32 %i.i, 27
  br i1 %i.n, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.f, align 1
  %i.p = icmp ne i32 %i.o, 1399285583
  %i.q = zext i1 %i.p to i32
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 26 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1               ; 2 uses
  %i.t = zext i8 %i.s to i32
  %i.u = add nuw nsw i32 %i.t, 27                 ; 3 uses
  %i.v = icmp samesign ult i32 %i.i, %i.u
  br i1 %i.v, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not89 = icmp eq i8 %i.s, 0
  br i1 %.not89, label %.thread83, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.pre = load i32, ptr %i.w, align 4
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %i.x = phi i32 [ %.pre, %.lr.ph ], [ %i.ac, %bb.e ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 27
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.x, %i.ab                 ; 2 uses
  store i32 %i.ac, ptr %i.w, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = load i8, ptr %i.r, align 1
  %i.ae = zext i8 %i.ad to i64
  %i.af = icmp samesign ult i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %bb.e, label %.thread83, !llvm.loop !919

.thread83:                                        ; preds = %bb.e, %.preheader
  store i32 %i.u, ptr %i.k, align 8
  br label %bb.f

bb.f:                                             ; preds = %.thread83, %bb.a
  %i.ag = phi i32 [ %i.u, %.thread83 ], [ %i.l, %bb.a ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = add nsw i32 %i.ag, %i.ai
  %i.ak = icmp sgt i32 %i.aj, %i.i
  br i1 %i.ak, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #62
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 22 ; 6 uses
  %i.am = load i32, ptr %i.al, align 1            ; 2 uses
  store i32 %i.am, ptr %i.a, align 4
  store i32 0, ptr %i.al, align 1
  %i.an = load i32, ptr %i.k, align 8             ; 5 uses
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.f, i64 %i.ao ; 3 uses
  %i.aq = load i32, ptr %i.ah, align 4            ; 4 uses
  %2 = zext i32 %i.aq to i64                      ; 2 uses
  %i.ar = icmp sgt i32 %i.an, 0
  store i32 0, ptr %i.al, align 1
  br i1 %i.ar, label %.lr.ph.i.preheader, label %.preheader.i

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.as = icmp eq i32 %i.an, 1
  br i1 %i.as, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.ao, 2147483646
  br label %.lr.ph.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i
  %i.at = and i32 %i.an, 1
  %lcmp.mod.not = icmp eq i32 %i.at, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.1, %.preheader.i.loopexit.unr-lcssa ]
  %.02631.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.ca, %.preheader.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod102 = trunc i32 %i.an to i1
  tail call void @llvm.assume(i1 %lcmp.mod102)
  %i.au = shl i32 %.02631.i.epil.init, 8
  %i.av = lshr i32 %.02631.i.epil.init, 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.i.epil.init
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = zext i8 %i.ax to i32
  %i.az = xor i32 %i.av, %i.ay
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr @crc_lookup, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = xor i32 %i.bc, %i.au
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i.epil.preheader, %.preheader.i.loopexit.unr-lcssa, %bb.g
  %.026.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.ca, %.preheader.i.loopexit.unr-lcssa ], [ %i.bd, %.lr.ph.i.epil.preheader ] ; 3 uses
  %i.be = icmp sgt i32 %i.aq, 0
  br i1 %i.be, label %.lr.ph35.i.preheader, label %ogg_page_checksum_set.exit

.lr.ph35.i.preheader:                             ; preds = %.preheader.i
  %xtraiter103 = and i64 %2, 1
  %i.bf = icmp eq i32 %i.aq, 1
  br i1 %i.bf, label %.lr.ph35.i.epil.preheader, label %.lr.ph35.i.preheader.new

.lr.ph35.i.preheader.new:                         ; preds = %.lr.ph35.i.preheader
  %unroll_iter107 = and i64 %2, 2147483646
  br label %.lr.ph35.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %.02631.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.ca, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.bg = shl i32 %.02631.i, 8
  %i.bh = lshr i32 %.02631.i, 24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.i
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = zext i8 %i.bj to i32
  %i.bl = xor i32 %i.bh, %i.bk
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr @crc_lookup, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = xor i32 %i.bo, %i.bg                    ; 2 uses
  %i.bq = shl i32 %i.bp, 8
  %i.br = lshr i32 %i.bp, 24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = zext i8 %i.bu to i32
  %i.bw = xor i32 %i.br, %i.bv
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr @crc_lookup, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = xor i32 %i.bz, %i.bq                    ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !106

.lr.ph35.i:                                       ; preds = %.lr.ph35.i, %.lr.ph35.i.preheader.new
  %indvars.iv39.i = phi i64 [ 0, %.lr.ph35.i.preheader.new ], [ %indvars.iv.next40.i.1, %.lr.ph35.i ] ; 3 uses
  %.12733.i = phi i32 [ %.026.lcssa.i, %.lr.ph35.i.preheader.new ], [ %i.cv, %.lr.ph35.i ] ; 2 uses
  %niter108 = phi i64 [ 0, %.lr.ph35.i.preheader.new ], [ %niter108.next.1, %.lr.ph35.i ]
  %i.cb = shl i32 %.12733.i, 8
  %i.cc = lshr i32 %.12733.i, 24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv39.i
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = zext i8 %i.ce to i32
  %i.cg = xor i32 %i.cc, %i.cf
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr @crc_lookup, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = xor i32 %i.cj, %i.cb                    ; 2 uses
  %i.cl = shl i32 %i.ck, 8
  %i.cm = lshr i32 %i.ck, 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv39.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = zext i8 %i.cp to i32
  %i.cr = xor i32 %i.cm, %i.cq
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr @crc_lookup, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = xor i32 %i.cu, %i.cl                    ; 3 uses
  %indvars.iv.next40.i.1 = add nuw nsw i64 %indvars.iv39.i, 2 ; 2 uses
  %niter108.next.1 = add i64 %niter108, 2         ; 2 uses
  %niter108.ncmp.1 = icmp eq i64 %niter108.next.1, %unroll_iter107
  br i1 %niter108.ncmp.1, label %ogg_page_checksum_set.exit.loopexit.unr-lcssa, label %.lr.ph35.i, !llvm.loop !107

ogg_page_checksum_set.exit.loopexit.unr-lcssa:    ; preds = %.lr.ph35.i
  %lcmp.mod104.not = icmp eq i64 %xtraiter103, 0
  br i1 %lcmp.mod104.not, label %ogg_page_checksum_set.exit, label %.lr.ph35.i.epil.preheader

.lr.ph35.i.epil.preheader:                        ; preds = %ogg_page_checksum_set.exit.loopexit.unr-lcssa, %.lr.ph35.i.preheader
  %indvars.iv39.i.epil.init = phi i64 [ 0, %.lr.ph35.i.preheader ], [ %indvars.iv.next40.i.1, %ogg_page_checksum_set.exit.loopexit.unr-lcssa ]
  %.12733.i.epil.init = phi i32 [ %.026.lcssa.i, %.lr.ph35.i.preheader ], [ %i.cv, %ogg_page_checksum_set.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod106 = trunc i32 %i.aq to i1
  tail call void @llvm.assume(i1 %lcmp.mod106)
  %i.cw = shl i32 %.12733.i.epil.init, 8
  %i.cx = lshr i32 %.12733.i.epil.init, 24
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv39.i.epil.init
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = zext i8 %i.cz to i32
  %i.db = xor i32 %i.cx, %i.da
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr @crc_lookup, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = xor i32 %i.de, %i.cw
  br label %ogg_page_checksum_set.exit

ogg_page_checksum_set.exit:                       ; preds = %.lr.ph35.i.epil.preheader, %ogg_page_checksum_set.exit.loopexit.unr-lcssa, %.preheader.i
  %.127.lcssa.i = phi i32 [ %.026.lcssa.i, %.preheader.i ], [ %i.cv, %ogg_page_checksum_set.exit.loopexit.unr-lcssa ], [ %i.df, %.lr.ph35.i.epil.preheader ]
  store i32 %.127.lcssa.i, ptr %i.al, align 1
  %i.dg = load i32, ptr %i.a, align 4
  %i.dh = load i32, ptr %i.al, align 1
  %i.di = icmp ne i32 %i.dg, %i.dh
  %i.dj = zext i1 %i.di to i32
  %.not70 = icmp eq i32 %i.dj, 0
  br i1 %.not70, label %bb.i, label %bb.h

bb.h:                                             ; preds = %ogg_page_checksum_set.exit
  store i32 %i.am, ptr %i.al, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #62
  %.pre92.pre = load ptr, ptr %0, align 8
  br label %bb.l

bb.i:                                             ; preds = %ogg_page_checksum_set.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #62
  %.not72 = icmp eq ptr %1, null
  br i1 %.not72, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dk = load ptr, ptr %0, align 8
  %i.dl = load i32, ptr %i.c, align 8
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds i8, ptr %i.dk, i64 %i.dm ; 2 uses
  store ptr %i.dn, ptr %1, align 8
  %i.do = load i32, ptr %i.k, align 8
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.dp, ptr %i.dq, align 8
  %i.dr = load i32, ptr %i.k, align 8
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds i8, ptr %i.dn, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.dt, ptr %i.du, align 8
  %i.dv = load i32, ptr %i.ah, align 4
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.dw, ptr %i.dx, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.dy, align 4
  %i.dz = load i32, ptr %i.k, align 8
  %i.ea = load i32, ptr %i.ah, align 4
  %i.eb = add nsw i32 %i.ea, %i.dz                ; 2 uses
  %i.ec = sext i32 %i.eb to i64
  %i.ed = load i32, ptr %i.c, align 8
  %i.ee = add i32 %i.ed, %i.eb
  store i32 %i.ee, ptr %i.c, align 8
  store i32 0, ptr %i.k, align 8
  store i32 0, ptr %i.ah, align 4
  br label %.thread

bb.l:                                             ; preds = %bb.h, %bb.c
  %.pre92 = phi ptr [ %.pre92.pre, %bb.h ], [ %i.b, %bb.c ] ; 2 uses
  store i32 0, ptr %i.k, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.ef, align 4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.eh = add nsw i64 %i.j, -1
  %i.ei = tail call ptr @memchr(ptr noundef nonnull %i.eg, i32 noundef 79, i64 noundef %i.eh) #63 ; 2 uses
  %.not71 = icmp eq ptr %i.ei, null
  br i1 %.not71, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ej = load i32, ptr %i.g, align 4
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds i8, ptr %.pre92, i64 %i.ek
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.063 = phi ptr [ %i.ei, %bb.l ], [ %i.el, %bb.m ]
  %i.em = ptrtoint ptr %.063 to i64               ; 2 uses
  %i.en = ptrtoint ptr %.pre92 to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = trunc i64 %i.eo to i32
  store i32 %i.ep, ptr %i.c, align 8
  %i.eq = ptrtoint ptr %i.f to i64
  %.neg = sub i64 %i.eq, %i.em
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.b, %bb.f, %bb.n, %bb.k
  %.2 = phi i64 [ %i.ec, %bb.k ], [ %.neg, %bb.n ], [ 0, %bb.f ], [ 0, %bb.b ], [ 0, %bb.d ]
  ret i64 %.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, 2) i32 @ogg_sync_pageout(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.b = tail call i64 @ogg_sync_pageseek(ptr noundef %0, ptr noundef %1) ; 2 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.a, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %bb.e
  %.1.ph = phi i32 [ -1, %bb.e ], [ 1, %bb.b ], [ 0, %bb.c ]
  ret i32 %.1.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @ogg_sync_reset(ptr nofree noundef writeonly captures(none) initializes((12, 32)) %0) local_unnamed_addr #38 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @ogg_packet_clear(ptr nofree noundef captures(none) initializes((8, 48)) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @free(ptr noundef %i.a) #62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @strncpy_filtered(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 1, -2147483648) %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) unnamed_addr #43 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %3, align 1
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = add nsw i32 %2, -1
  %i.e = zext nneg i32 %i.d to i64                ; 2 uses
  %i.f = tail call ptr @strncpy(ptr noundef %0, ptr noundef %1, i64 noundef %i.e) #62 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  store i8 0, ptr %i.g, align 1
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #63
  %i.i = trunc i64 %i.h to i32
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.j = icmp eq ptr %4, null
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #63
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.l = phi i64 [ %i.k, %bb.e ], [ 0, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 %i.l
  %i.n = add nsw i32 %2, -1
  %i.o = load i8, ptr %1, align 1                 ; 2 uses
  %i.p = icmp ne i8 %i.o, 0
  %i.q = icmp samesign ugt i32 %2, 1
  %i.r = select i1 %i.p, i1 %i.q, i1 false
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.s = ptrtoint ptr %3 to i64
  br label %bb.g

end_hunk_3
begin_hunk_4_@dradfg:bb.a
  %exitcond976.not.3 = icmp eq i64 %indvars.iv.next973.3, %wide.trip.count975
  br i1 %exitcond976.not.3, label %._crit_edge754, label %.lr.ph753, !llvm.loop !1006

._crit_edge754:                                   ; preds = %.lr.ph753.prol.loopexit, %.lr.ph753, %middle.block1377, %.loopexit670
  %i.lm = icmp sgt i32 %i.k, 1                    ; 4 uses
  %i.ln = icmp sgt i32 %2, 0                      ; 2 uses
  %or.cond880 = and i1 %i.lm, %i.ln               ; 2 uses
  br i1 %or.cond880, label %.lr.ph759.preheader, label %._crit_edge766.split

.lr.ph759.preheader:                              ; preds = %._crit_edge754
  %i.lo = mul i32 %3, %1                          ; 2 uses
  %i.lp = add nsw i32 %2, -1                      ; 3 uses
  %i.lq = mul i32 %0, %i.lp
  %i.lr = sext i32 %0 to i64                      ; 6 uses
  %i.ls = xor i32 %2, -1
  %i.lt = mul i32 %0, %i.ls
  %i.lu = add i32 %i.lo, %i.lt
  %scevgep1383 = getelementptr i8, ptr %5, i64 4
  %i.lv = zext i32 %i.lp to i64
  %i.lw = shl nuw nsw i64 %i.lv, 2
  %i.lx = add nuw nsw i64 %i.lw, 8                ; 4 uses
  %scevgep1385 = getelementptr i8, ptr %5, i64 %i.lx
  %scevgep1387 = getelementptr i8, ptr %5, i64 4
  %i.ly = xor i32 %2, -1
  %i.lz = add i32 %i.lo, %i.ly
  %scevgep1389 = getelementptr i8, ptr %5, i64 %i.lx
  %scevgep1391 = getelementptr i8, ptr %7, i64 4
  %scevgep1393 = getelementptr i8, ptr %7, i64 %i.lx
  %scevgep1395 = getelementptr i8, ptr %7, i64 4
  %scevgep1397 = getelementptr i8, ptr %7, i64 %i.lx
  %i.ma = zext nneg i32 %2 to i64                 ; 2 uses
  %min.iters.check1419 = icmp ugt i32 %2, 7
  %ident.check1381.not = icmp eq i32 %0, 1
  %or.cond1572 = and i1 %min.iters.check1419, %ident.check1381.not
  %n.vec1422 = and i64 %i.ma, 2147483644          ; 5 uses
  %i.mb = trunc nuw nsw i64 %n.vec1422 to i32
  %cmp.n1431 = icmp eq i64 %n.vec1422, %i.ma
  br label %.lr.ph759

.lr.ph759:                                        ; preds = %.lr.ph759.preheader, %._crit_edge760
  %indvar = phi i32 [ 0, %.lr.ph759.preheader ], [ %indvar.next, %._crit_edge760 ] ; 3 uses
  %indvars.iv981 = phi i32 [ %i.lu, %.lr.ph759.preheader ], [ %indvars.iv.next982, %._crit_edge760 ] ; 2 uses
  %indvars.iv977 = phi i32 [ %i.lq, %.lr.ph759.preheader ], [ %indvars.iv.next978, %._crit_edge760 ] ; 2 uses
  %.5555763 = phi i32 [ 1, %.lr.ph759.preheader ], [ %i.od, %._crit_edge760 ]
  %i.mc = sext i32 %indvars.iv977 to i64          ; 4 uses
  %i.md = sext i32 %indvars.iv981 to i64          ; 4 uses
  br i1 %or.cond1572, label %vector.memcheck1382, label %scalar.ph1418.preheader

vector.memcheck1382:                              ; preds = %.lr.ph759
  %i.me = mul i32 %2, %indvar
  %i.mf = add i32 %i.lp, %i.me
  %i.mg = sext i32 %i.mf to i64
  %i.mh = shl nsw i64 %i.mg, 2                    ; 4 uses
  %scevgep1398 = getelementptr i8, ptr %scevgep1397, i64 %i.mh ; 2 uses
  %scevgep1396 = getelementptr i8, ptr %scevgep1395, i64 %i.mh ; 2 uses
  %i.mi = mul i32 %2, %indvar
  %i.mj = sub i32 %i.lz, %i.mi
  %i.mk = sext i32 %i.mj to i64
  %i.ml = shl nsw i64 %i.mk, 2                    ; 4 uses
  %scevgep1394 = getelementptr i8, ptr %scevgep1393, i64 %i.ml ; 2 uses
  %scevgep1392 = getelementptr i8, ptr %scevgep1391, i64 %i.ml ; 2 uses
  %scevgep1390 = getelementptr i8, ptr %scevgep1389, i64 %i.ml ; 3 uses
  %scevgep1388 = getelementptr i8, ptr %scevgep1387, i64 %i.ml ; 3 uses
  %scevgep1386 = getelementptr i8, ptr %scevgep1385, i64 %i.mh ; 3 uses
  %scevgep1384 = getelementptr i8, ptr %scevgep1383, i64 %i.mh ; 3 uses
  %bound01399 = icmp ult ptr %scevgep1384, %scevgep1390
  %bound11400 = icmp ult ptr %scevgep1388, %scevgep1386
  %found.conflict1401 = and i1 %bound01399, %bound11400
  %bound01402 = icmp ult ptr %scevgep1384, %scevgep1394
  %bound11403 = icmp ult ptr %scevgep1392, %scevgep1386
  %found.conflict1404 = and i1 %bound01402, %bound11403
  %conflict.rdx1405 = or i1 %found.conflict1401, %found.conflict1404
  %bound01406 = icmp ult ptr %scevgep1384, %scevgep1398
  %bound11407 = icmp ult ptr %scevgep1396, %scevgep1386
  %found.conflict1408 = and i1 %bound01406, %bound11407
  %conflict.rdx1409 = or i1 %conflict.rdx1405, %found.conflict1408
  %bound01410 = icmp ult ptr %scevgep1388, %scevgep1394
  %bound11411 = icmp ult ptr %scevgep1392, %scevgep1390
  %found.conflict1412 = and i1 %bound01410, %bound11411
  %conflict.rdx1413 = or i1 %conflict.rdx1409, %found.conflict1412
  %bound01414 = icmp ult ptr %scevgep1388, %scevgep1398
  %bound11415 = icmp ult ptr %scevgep1396, %scevgep1390
  %found.conflict1416 = and i1 %bound01414, %bound11415
  %conflict.rdx1417 = or i1 %conflict.rdx1413, %found.conflict1416
  br i1 %conflict.rdx1417, label %scalar.ph1418.preheader, label %vector.ph1420

vector.ph1420:                                    ; preds = %vector.memcheck1382
  %i.mm = add nsw i64 %n.vec1422, %i.md
  %i.mn = add nsw i64 %n.vec1422, %i.mc
  %invariant.op1620 = add i64 %i.mc, 1
  %invariant.op1622 = add i64 %i.md, 1
  br label %vector.body1423

vector.body1423:                                  ; preds = %vector.body1423, %vector.ph1420
  %index1424 = phi i64 [ 0, %vector.ph1420 ], [ %index.next1429, %vector.body1423 ] ; 3 uses
  %.reass1621 = add i64 %index1424, %invariant.op1620 ; 2 uses
  %.reass1623 = add i64 %index1424, %invariant.op1622 ; 2 uses
  %i.mo = getelementptr inbounds [4 x i8], ptr %7, i64 %.reass1621
  %wide.load1425 = load <4 x float>, ptr %i.mo, align 4, !alias.scope !1007 ; 2 uses
  %i.mp = getelementptr inbounds [4 x i8], ptr %7, i64 %.reass1623
  %wide.load1426 = load <4 x float>, ptr %i.mp, align 4, !alias.scope !1010 ; 2 uses
  %i.mq = fadd <4 x float> %wide.load1425, %wide.load1426
  %i.mr = getelementptr inbounds [4 x i8], ptr %5, i64 %.reass1621
  store <4 x float> %i.mq, ptr %i.mr, align 4, !alias.scope !1012, !noalias !1014
  %i.ms = fsub <4 x float> %wide.load1426, %wide.load1425
  %i.mt = getelementptr inbounds [4 x i8], ptr %5, i64 %.reass1623
  store <4 x float> %i.ms, ptr %i.mt, align 4, !alias.scope !1016, !noalias !1017
  %index.next1429 = add nuw i64 %index1424, 4     ; 2 uses
  %i.mu = icmp eq i64 %index.next1429, %n.vec1422
  br i1 %i.mu, label %middle.block1430, label %vector.body1423, !llvm.loop !1018

middle.block1430:                                 ; preds = %vector.body1423
  br i1 %cmp.n1431, label %._crit_edge760, label %scalar.ph1418.preheader

scalar.ph1418.preheader:                          ; preds = %vector.memcheck1382, %.lr.ph759, %middle.block1430
  %indvars.iv983.ph = phi i64 [ %i.md, %vector.memcheck1382 ], [ %i.md, %.lr.ph759 ], [ %i.mm, %middle.block1430 ] ; 2 uses
  %indvars.iv979.ph = phi i64 [ %i.mc, %vector.memcheck1382 ], [ %i.mc, %.lr.ph759 ], [ %i.mn, %middle.block1430 ] ; 2 uses
  %.5563757.ph = phi i32 [ 0, %vector.memcheck1382 ], [ 0, %.lr.ph759 ], [ %i.mb, %middle.block1430 ] ; 4 uses
  %i.mv = sub i32 %2, %.5563757.ph
  %.neg = add i32 %.5563757.ph, 1
  %xtraiter1591 = and i32 %i.mv, 1
  %lcmp.mod1592.not = icmp eq i32 %xtraiter1591, 0
  br i1 %lcmp.mod1592.not, label %scalar.ph1418.prol.loopexit, label %scalar.ph1418.prol

scalar.ph1418.prol:                               ; preds = %scalar.ph1418.preheader
  %indvars.iv.next980.prol = add nsw i64 %indvars.iv979.ph, %i.lr ; 3 uses
  %indvars.iv.next984.prol = add nsw i64 %indvars.iv983.ph, %i.lr ; 3 uses
  %i.mw = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next980.prol ; 2 uses
  %i.mx = load float, ptr %i.mw, align 4
  %i.my = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next984.prol ; 2 uses
  %i.mz = load float, ptr %i.my, align 4
  %i.na = fadd float %i.mx, %i.mz
  %i.nb = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next980.prol
  store float %i.na, ptr %i.nb, align 4
  %i.nc = load float, ptr %i.my, align 4
  %i.nd = load float, ptr %i.mw, align 4
  %i.ne = fsub float %i.nc, %i.nd
  %i.nf = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next984.prol
  store float %i.ne, ptr %i.nf, align 4
  %i.ng = add nuw nsw i32 %.5563757.ph, 1
  br label %scalar.ph1418.prol.loopexit

scalar.ph1418.prol.loopexit:                      ; preds = %scalar.ph1418.prol, %scalar.ph1418.preheader
  %indvars.iv983.unr = phi i64 [ %indvars.iv983.ph, %scalar.ph1418.preheader ], [ %indvars.iv.next984.prol, %scalar.ph1418.prol ]
  %indvars.iv979.unr = phi i64 [ %indvars.iv979.ph, %scalar.ph1418.preheader ], [ %indvars.iv.next980.prol, %scalar.ph1418.prol ]
  %.5563757.unr = phi i32 [ %.5563757.ph, %scalar.ph1418.preheader ], [ %i.ng, %scalar.ph1418.prol ]
  %i.nh = icmp eq i32 %2, %.neg
  br i1 %i.nh, label %._crit_edge760, label %scalar.ph1418

scalar.ph1418:                                    ; preds = %scalar.ph1418.prol.loopexit, %scalar.ph1418
  %indvars.iv983 = phi i64 [ %indvars.iv.next984.1, %scalar.ph1418 ], [ %indvars.iv983.unr, %scalar.ph1418.prol.loopexit ]
  %indvars.iv979 = phi i64 [ %indvars.iv.next980.1, %scalar.ph1418 ], [ %indvars.iv979.unr, %scalar.ph1418.prol.loopexit ]
  %.5563757 = phi i32 [ %i.oc, %scalar.ph1418 ], [ %.5563757.unr, %scalar.ph1418.prol.loopexit ]
  %indvars.iv.next980 = add nsw i64 %indvars.iv979, %i.lr ; 3 uses
  %indvars.iv.next984 = add nsw i64 %indvars.iv983, %i.lr ; 3 uses
  %i.ni = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next980 ; 2 uses
  %i.nj = load float, ptr %i.ni, align 4
  %i.nk = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next984 ; 2 uses
  %i.nl = load float, ptr %i.nk, align 4
  %i.nm = fadd float %i.nj, %i.nl
  %i.nn = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next980
  store float %i.nm, ptr %i.nn, align 4
  %i.no = load float, ptr %i.nk, align 4
  %i.np = load float, ptr %i.ni, align 4
  %i.nq = fsub float %i.no, %i.np
  %i.nr = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next984
  store float %i.nq, ptr %i.nr, align 4
  %indvars.iv.next980.1 = add nsw i64 %indvars.iv.next980, %i.lr ; 3 uses
  %indvars.iv.next984.1 = add nsw i64 %indvars.iv.next984, %i.lr ; 3 uses
  %i.ns = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next980.1 ; 2 uses
  %i.nt = load float, ptr %i.ns, align 4
  %i.nu = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next984.1 ; 2 uses
  %i.nv = load float, ptr %i.nu, align 4
  %i.nw = fadd float %i.nt, %i.nv
  %i.nx = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next980.1
  store float %i.nw, ptr %i.nx, align 4
  %i.ny = load float, ptr %i.nu, align 4
  %i.nz = load float, ptr %i.ns, align 4
  %i.oa = fsub float %i.ny, %i.nz
  %i.ob = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next984.1
  store float %i.oa, ptr %i.ob, align 4
  %i.oc = add nuw nsw i32 %.5563757, 2            ; 2 uses
  %exitcond988.not.1 = icmp eq i32 %i.oc, %2
  br i1 %exitcond988.not.1, label %._crit_edge760, label %scalar.ph1418, !llvm.loop !1019

._crit_edge760:                                   ; preds = %scalar.ph1418.prol.loopexit, %scalar.ph1418, %middle.block1430
  %i.od = add nuw nsw i32 %.5555763, 1            ; 2 uses
  %indvars.iv.next978 = add i32 %indvars.iv977, %i.n
  %indvars.iv.next982 = sub i32 %indvars.iv981, %i.n
  %exitcond989.not = icmp eq i32 %i.od, %i.k
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond989.not, label %._crit_edge766.split, label %.lr.ph759, !llvm.loop !1020

._crit_edge766.split:                             ; preds = %._crit_edge760, %._crit_edge754
  %i.oe = add i32 %1, -1                          ; 4 uses
  br i1 %i.lm, label %.lr.ph795, label %._crit_edge804.split

.lr.ph795:                                        ; preds = %._crit_edge766.split
  %i.of = mul i32 %3, %i.oe                       ; 2 uses
  %.not = icmp eq i32 %i.k, 2
  %10 = icmp eq i32 %3, 0
  %i.og = sext i32 %3 to i64                      ; 5 uses
  %i.oh = sext i32 %i.of to i64                   ; 5 uses
  %i.oi = add i32 %1, -2
  %i.oj = mul i32 %3, %i.oi
  %i.ok = shl i32 %3, 1
  %wide.trip.count1013 = zext i32 %3 to i64       ; 10 uses
  %brmerge884 = or i1 %.not, %10
  %i.ol = add i32 %3, -1
  %i.om = zext i32 %i.ol to i64
  %i.on = shl nuw nsw i64 %i.om, 2
  %i.oo = add nuw nsw i64 %i.on, 4                ; 4 uses
  %scevgep1437 = getelementptr i8, ptr %8, i64 %i.oo
  %scevgep1440 = getelementptr i8, ptr %8, i64 %i.oo
  %scevgep1443 = getelementptr i8, ptr %6, i64 %i.oo
  %scevgep1446 = getelementptr i8, ptr %6, i64 %i.oo
  %i.op = shl nsw i64 %i.oh, 2                    ; 2 uses
  %i.oq = add i64 %i.op, %i.a
  %i.or = shl nsw i64 %i.og, 2                    ; 2 uses
  %i.os = add i64 %i.or, %i.a
  %i.ot = sub i64 %i.b, %i.os
  %i.ou = sub i64 %i.b, %i.a
  %i.ov = add i64 %i.op, %i.a
  %i.ow = sub i64 %i.b, %i.ov
  %i.ox = add i64 %i.or, %i.a
  %i.oy = sub i64 %i.b, %i.ox
  %i.oz = sub i64 %i.b, %i.a
  %i.pa = insertelement <2 x float> poison, float %i.g, i64 0
  %i.pb = shufflevector <2 x float> %i.pa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pc = insertelement <2 x float> poison, float %i.i, i64 0
  %i.pd = shufflevector <2 x float> %i.pc, <2 x float> poison, <2 x i32> zeroinitializer
  %min.iters.check1503 = icmp ult i32 %3, 8
  %invariant.op1640 = sub i64 %i.b, %i.oq
  %invariant.op1642 = add i64 %i.ot, -1
  %invariant.op1644 = add i64 %i.ou, -1
  %invariant.op1646 = add i64 %i.ow, -1
  %invariant.op1648 = add i64 %i.oy, -1
  %invariant.op1650 = add i64 %i.oz, -1
  %n.vec1506 = and i64 %wide.trip.count1013, 2147483644 ; 7 uses
  %i.pe = add nsw i64 %n.vec1506, %i.oh
  %i.pf = add nuw nsw i64 %n.vec1506, %i.og
  %invariant.gep1624 = getelementptr [4 x i8], ptr %6, i64 %i.og
  %invariant.gep1628 = getelementptr [4 x i8], ptr %6, i64 %i.oh
  %cmp.n1518 = icmp eq i64 %n.vec1506, %wide.trip.count1013
  %min.iters.check1468 = icmp ult i32 %3, 8
  %n.vec1471 = and i64 %wide.trip.count1013, 2147483644 ; 7 uses
  %i.pg = trunc nuw nsw i64 %n.vec1471 to i32
  %cmp.n1482 = icmp eq i64 %n.vec1471, %wide.trip.count1013
  br label %bb.e

.preheader667:                                    ; preds = %._crit_edge788.split
  br i1 %i.ko, label %.lr.ph799.preheader, label %._crit_edge804.split

.lr.ph799.preheader:                              ; preds = %.preheader667
  %wide.trip.count1046 = zext nneg i32 %3 to i64
  %i.ph = shl nuw nsw i64 %wide.trip.count1013, 2 ; 2 uses
  %scevgep1525 = getelementptr i8, ptr %8, i64 %i.ph
  %scevgep1527 = getelementptr i8, ptr %6, i64 %i.ph
  %min.iters.check1533 = icmp ult i32 %3, 8
  %n.vec1536 = and i64 %wide.trip.count1013, 2147483640 ; 4 uses
  %cmp.n1545 = icmp eq i64 %n.vec1536, %wide.trip.count1013
  %xtraiter1594 = and i64 %wide.trip.count1013, 1
  %lcmp.mod1595.not = icmp eq i64 %xtraiter1594, 0
  %i.pi = add nsw i64 %wide.trip.count1013, -1
  br label %.lr.ph799

bb.e:                                             ; preds = %.lr.ph795, %._crit_edge788.split
  %indvars.iv1000 = phi i32 [ %i.of, %.lr.ph795 ], [ %indvars.iv.next1001, %._crit_edge788.split ] ; 4 uses
  %indvars.iv992 = phi i32 [ %3, %.lr.ph795 ], [ %indvars.iv.next993, %._crit_edge788.split ] ; 4 uses
  %.0569793 = phi i32 [ 1, %.lr.ph795 ], [ %i.sg, %._crit_edge788.split ]
  %i.pj = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.lr.ph795 ], [ %i.pz, %._crit_edge788.split ] ; 2 uses
  %i.pk = sext i32 %indvars.iv1000 to i64
  %i.pl = shl nsw i64 %i.pk, 2                    ; 4 uses
  %i.pm = sext i32 %indvars.iv992 to i64
  %i.pn = shl nsw i64 %i.pm, 2                    ; 4 uses
  %i.po = sext i32 %indvars.iv992 to i64
  %i.pp = shl nsw i64 %i.po, 2                    ; 2 uses
  %scevgep1436 = getelementptr i8, ptr %8, i64 %i.pp ; 3 uses
  %scevgep1438 = getelementptr i8, ptr %scevgep1437, i64 %i.pp ; 3 uses
  %i.pq = sext i32 %indvars.iv1000 to i64
  %i.pr = shl nsw i64 %i.pq, 2                    ; 2 uses
  %scevgep1439 = getelementptr i8, ptr %8, i64 %i.pr ; 3 uses
  %scevgep1441 = getelementptr i8, ptr %scevgep1440, i64 %i.pr ; 3 uses
  %i.ps = sext i32 %indvars.iv1000 to i64         ; 8 uses
  %i.pt = sext i32 %indvars.iv992 to i64          ; 8 uses
  %i.pu = fmul <2 x float> %i.pj, %i.pb           ; 2 uses
  %i.pv = shufflevector <2 x float> %i.pj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pw = fmul <2 x float> %i.pv, %i.pd           ; 2 uses
  %i.px = fadd <2 x float> %i.pu, %i.pw           ; 4 uses
  %i.py = fsub <2 x float> %i.pu, %i.pw           ; 4 uses
  %i.pz = shufflevector <2 x float> %i.px, <2 x float> %i.py, <2 x i32> <i32 0, i32 3>
  br i1 %i.ko, label %.lr.ph773.preheader, label %._crit_edge788.split

.lr.ph773.preheader:                              ; preds = %bb.e
  br i1 %min.iters.check1503, label %.lr.ph773.preheader1580, label %vector.memcheck1488

vector.memcheck1488:                              ; preds = %.lr.ph773.preheader
  %i.qa = sub nsw i64 %i.pn, %i.pl
  %diff.check1489 = icmp ugt i64 %i.qa, -16
  %.reass1641 = add i64 %i.pn, %invariant.op1640
  %diff.check1490 = icmp ugt i64 %.reass1641, -16
  %conflict.rdx1491 = or i1 %diff.check1489, %diff.check1490
  %.reass1643 = add i64 %i.pn, %invariant.op1642
  %diff.check1492 = icmp ult i64 %.reass1643, 15
  %conflict.rdx1493 = or i1 %conflict.rdx1491, %diff.check1492
  %.reass1645 = add i64 %i.pn, %invariant.op1644
  %diff.check1494 = icmp ult i64 %.reass1645, 15
  %conflict.rdx1495 = or i1 %conflict.rdx1493, %diff.check1494
  %.reass1647 = add i64 %i.pl, %invariant.op1646
  %diff.check1496 = icmp ult i64 %.reass1647, 15
  %conflict.rdx1497 = or i1 %conflict.rdx1495, %diff.check1496
  %.reass1649 = add i64 %i.pl, %invariant.op1648
  %diff.check1498 = icmp ult i64 %.reass1649, 15
  %conflict.rdx1499 = or i1 %conflict.rdx1497, %diff.check1498
  %.reass1651 = add i64 %i.pl, %invariant.op1650
  %diff.check1500 = icmp ult i64 %.reass1651, 15
  %conflict.rdx1501 = or i1 %conflict.rdx1499, %diff.check1500
  br i1 %conflict.rdx1501, label %.lr.ph773.preheader1580, label %vector.ph1504

vector.ph1504:                                    ; preds = %vector.memcheck1488
  %i.qb = add nsw i64 %n.vec1506, %i.ps
  %i.qc = add nsw i64 %n.vec1506, %i.pt
  %broadcast.splat1508 = shufflevector <2 x float> %i.py, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat1510 = shufflevector <2 x float> %i.px, <2 x float> poison, <4 x i32> zeroinitializer
  %invariant.gep1626 = getelementptr [4 x i8], ptr %8, i64 %i.pt
  %invariant.gep1630 = getelementptr [4 x i8], ptr %8, i64 %i.ps
  br label %vector.body1511

vector.body1511:                                  ; preds = %vector.body1511, %vector.ph1504
  %index1512 = phi i64 [ 0, %vector.ph1504 ], [ %index.next1516, %vector.body1511 ] ; 6 uses
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index1512
  %wide.load1513 = load <4 x float>, ptr %i.qd, align 4
  %gep1625 = getelementptr [4 x i8], ptr %invariant.gep1624, i64 %index1512
  %wide.load1514 = load <4 x float>, ptr %gep1625, align 4
  %i.qe = fmul <4 x float> %broadcast.splat1508, %wide.load1514
  %i.qf = fadd <4 x float> %wide.load1513, %i.qe
  %gep1627 = getelementptr [4 x i8], ptr %invariant.gep1626, i64 %index1512
  store <4 x float> %i.qf, ptr %gep1627, align 4
  %gep1629 = getelementptr [4 x i8], ptr %invariant.gep1628, i64 %index1512
  %wide.load1515 = load <4 x float>, ptr %gep1629, align 4
  %i.qg = fmul <4 x float> %broadcast.splat1510, %wide.load1515
  %gep1631 = getelementptr [4 x i8], ptr %invariant.gep1630, i64 %index1512
  store <4 x float> %i.qg, ptr %gep1631, align 4
  %index.next1516 = add nuw i64 %index1512, 4     ; 2 uses
  %i.qh = icmp eq i64 %index.next1516, %n.vec1506
  br i1 %i.qh, label %middle.block1517, label %vector.body1511, !llvm.loop !1021

middle.block1517:                                 ; preds = %vector.body1511
  br i1 %cmp.n1518, label %.preheader668, label %.lr.ph773.preheader1580

.lr.ph773.preheader1580:                          ; preds = %vector.memcheck1488, %.lr.ph773.preheader, %middle.block1517
  %indvars.iv1002.ph = phi i64 [ %i.ps, %vector.memcheck1488 ], [ %i.ps, %.lr.ph773.preheader ], [ %i.qb, %middle.block1517 ]
  %indvars.iv998.ph = phi i64 [ %i.oh, %vector.memcheck1488 ], [ %i.oh, %.lr.ph773.preheader ], [ %i.pe, %middle.block1517 ]
  %indvars.iv996.ph = phi i64 [ %i.og, %vector.memcheck1488 ], [ %i.og, %.lr.ph773.preheader ], [ %i.pf, %middle.block1517 ]
  %indvars.iv994.ph = phi i64 [ %i.pt, %vector.memcheck1488 ], [ %i.pt, %.lr.ph773.preheader ], [ %i.qc, %middle.block1517 ]
  %indvars.iv990.ph = phi i64 [ 0, %vector.memcheck1488 ], [ 0, %.lr.ph773.preheader ], [ %n.vec1506, %middle.block1517 ]
  %i.qi = extractelement <2 x float> %i.py, i64 1
  %i.qj = extractelement <2 x float> %i.px, i64 0
  br label %.lr.ph773

.preheader668:                                    ; preds = %.lr.ph773, %middle.block1517
  %i.qk = extractelement <2 x float> %i.px, i64 0 ; 3 uses
  %i.ql = extractelement <2 x float> %i.py, i64 1 ; 3 uses
  br i1 %brmerge884, label %._crit_edge788.split, label %.lr.ph780.preheader

.lr.ph780.preheader:                              ; preds = %.preheader668
  %bound01448 = icmp ult ptr %scevgep1436, %scevgep1441
  %bound11449 = icmp ult ptr %scevgep1439, %scevgep1438
  %found.conflict1450 = and i1 %bound01448, %bound11449
  %i.qm = add nsw i64 %n.vec1471, %i.pt
  %i.qn = add nsw i64 %n.vec1471, %i.ps
  %invariant.gep1634 = getelementptr [4 x i8], ptr %8, i64 %i.pt
  %invariant.gep1638 = getelementptr [4 x i8], ptr %8, i64 %i.ps
  br label %.lr.ph780

.lr.ph773:                                        ; preds = %.lr.ph773.preheader1580, %.lr.ph773
  %indvars.iv1002 = phi i64 [ %indvars.iv.next1003, %.lr.ph773 ], [ %indvars.iv1002.ph, %.lr.ph773.preheader1580 ] ; 2 uses
  %indvars.iv998 = phi i64 [ %indvars.iv.next999, %.lr.ph773 ], [ %indvars.iv998.ph, %.lr.ph773.preheader1580 ] ; 2 uses
  %indvars.iv996 = phi i64 [ %indvars.iv.next997, %.lr.ph773 ], [ %indvars.iv996.ph, %.lr.ph773.preheader1580 ] ; 2 uses
  %indvars.iv994 = phi i64 [ %indvars.iv.next995, %.lr.ph773 ], [ %indvars.iv994.ph, %.lr.ph773.preheader1580 ] ; 2 uses
  %indvars.iv990 = phi i64 [ %indvars.iv.next991, %.lr.ph773 ], [ %indvars.iv990.ph, %.lr.ph773.preheader1580 ] ; 2 uses
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv990
  %i.qp = load float, ptr %i.qo, align 4
  %indvars.iv.next997 = add nuw nsw i64 %indvars.iv996, 1
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv996
  %i.qr = load float, ptr %i.qq, align 4
  %i.qs = fmul float %i.qi, %i.qr
  %i.qt = fadd float %i.qp, %i.qs
  %indvars.iv.next995 = add nsw i64 %indvars.iv994, 1
  %i.qu = getelementptr inbounds [4 x i8], ptr %8, i64 %indvars.iv994
  store float %i.qt, ptr %i.qu, align 4
  %indvars.iv.next999 = add nsw i64 %indvars.iv998, 1
  %i.qv = getelementptr inbounds [4 x i8], ptr %6, i64 %indvars.iv998
  %i.qw = load float, ptr %i.qv, align 4
  %i.qx = fmul float %i.qj, %i.qw
  %indvars.iv.next1003 = add nsw i64 %indvars.iv1002, 1
  %i.qy = getelementptr inbounds [4 x i8], ptr %8, i64 %indvars.iv1002
  store float %i.qx, ptr %i.qy, align 4
  %indvars.iv.next991 = add nuw nsw i64 %indvars.iv990, 1 ; 2 uses
  %exitcond1014.not = icmp eq i64 %indvars.iv.next991, %wide.trip.count1013
  br i1 %exitcond1014.not, label %.preheader668, label %.lr.ph773, !llvm.loop !1022
end_hunk_4
begin_hunk_5_@dradbg:bb.a
vector.body1396:                                  ; preds = %vector.body1396, %vector.ph1393
  %index1397 = phi i64 [ 0, %vector.ph1393 ], [ %index.next1412, %vector.body1396 ] ; 3 uses
  %i.nv = shl i64 %index1397, 1                   ; 3 uses
  %i.nw = shl i64 %index1397, 1
  %i.nx = sub i64 %indvars.iv939, %i.nw
  %i.ny = getelementptr [4 x i8], ptr %i.ns, i64 %i.nv
  %i.nz = getelementptr i8, ptr %i.ny, i64 4      ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.nz, align 4, !alias.scope !1189, !noalias !1192 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1398 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.oa = getelementptr [4 x i8], ptr %4, i64 %i.nx
  %i.ob = getelementptr i8, ptr %i.oa, i64 -36    ; 2 uses
  %wide.vec1399 = load <8 x float>, ptr %i.ob, align 4, !alias.scope !1195, !noalias !1192 ; 2 uses
  %reverse = shufflevector <8 x float> %wide.vec1399, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0>
  %reverse1402 = shufflevector <8 x float> %wide.vec1399, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1>
  %i.oc = fadd <4 x float> %strided.vec, %reverse
  %i.od = getelementptr [4 x i8], ptr %i.nt, i64 %i.nv
  %i.oe = getelementptr i8, ptr %i.od, i64 4
  %wide.vec1403 = load <8 x float>, ptr %i.nz, align 4, !alias.scope !1189, !noalias !1192 ; 2 uses
  %strided.vec1404 = shufflevector <8 x float> %wide.vec1403, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1405 = shufflevector <8 x float> %wide.vec1403, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec1406 = load <8 x float>, ptr %i.ob, align 4, !alias.scope !1195, !noalias !1192 ; 2 uses
  %reverse1408 = shufflevector <8 x float> %wide.vec1406, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0>
  %reverse1410 = shufflevector <8 x float> %wide.vec1406, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1>
  %i.of = fsub <4 x float> %strided.vec1404, %reverse1408
  %i.og = getelementptr [4 x i8], ptr %i.nu, i64 %i.nv
  %i.oh = getelementptr i8, ptr %i.og, i64 4
  %i.oi = fsub <4 x float> %strided.vec1398, %reverse1402
  %interleaved.vec = shufflevector <4 x float> %i.oc, <4 x float> %i.oi, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.oe, align 4
  %i.oj = fadd <4 x float> %strided.vec1405, %reverse1410
  %interleaved.vec1411 = shufflevector <4 x float> %i.of, <4 x float> %i.oj, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec1411, ptr %i.oh, align 4
  %index.next1412 = add nuw i64 %index1397, 4     ; 2 uses
  %i.ok = icmp eq i64 %index.next1412, %n.vec1395
  br i1 %i.ok, label %middle.block1413, label %vector.body1396, !llvm.loop !1197

middle.block1413:                                 ; preds = %vector.body1396
  br i1 %cmp.n1414, label %._crit_edge702, label %scalar.ph1391.preheader

scalar.ph1391.preheader:                          ; preds = %vector.memcheck1303, %vector.scevcheck1284, %.preheader662, %middle.block1413
  %indvars.iv955.ph = phi i64 [ %indvars.iv953, %vector.memcheck1303 ], [ %indvars.iv953, %vector.scevcheck1284 ], [ %indvars.iv953, %.preheader662 ], [ %i.no, %middle.block1413 ]
  %indvars.iv949.ph = phi i64 [ %indvars.iv947, %vector.memcheck1303 ], [ %indvars.iv947, %vector.scevcheck1284 ], [ %indvars.iv947, %.preheader662 ], [ %i.np, %middle.block1413 ]
  %indvars.iv943.ph = phi i64 [ %indvars.iv939, %vector.memcheck1303 ], [ %indvars.iv939, %vector.scevcheck1284 ], [ %indvars.iv939, %.preheader662 ], [ %i.nq, %middle.block1413 ]
  %indvars.iv941.ph = phi i64 [ %indvars.iv939, %vector.memcheck1303 ], [ %indvars.iv939, %vector.scevcheck1284 ], [ %indvars.iv939, %.preheader662 ], [ %i.nr, %middle.block1413 ]
  %.2700.ph = phi i32 [ 2, %vector.memcheck1303 ], [ 2, %vector.scevcheck1284 ], [ 2, %.preheader662 ], [ %i.kf, %middle.block1413 ]
  br label %scalar.ph1391

scalar.ph1391:                                    ; preds = %scalar.ph1391.preheader, %scalar.ph1391
  %indvars.iv955 = phi i64 [ %indvars.iv.next956, %scalar.ph1391 ], [ %indvars.iv955.ph, %scalar.ph1391.preheader ] ; 2 uses
  %indvars.iv949 = phi i64 [ %indvars.iv.next950, %scalar.ph1391 ], [ %indvars.iv949.ph, %scalar.ph1391.preheader ] ; 2 uses
  %indvars.iv943 = phi i64 [ %indvars.iv.next944, %scalar.ph1391 ], [ %indvars.iv943.ph, %scalar.ph1391.preheader ] ; 2 uses
  %indvars.iv941 = phi i64 [ %indvars.iv.next942, %scalar.ph1391 ], [ %indvars.iv941.ph, %scalar.ph1391.preheader ] ; 2 uses
  %.2700 = phi i32 [ %i.pj, %scalar.ph1391 ], [ %.2700.ph, %scalar.ph1391.preheader ]
  %indvars.iv.next956 = add nuw nsw i64 %indvars.iv955, 2 ; 2 uses
  %indvars.iv.next950 = add nsw i64 %indvars.iv949, 2 ; 2 uses
  %indvars.iv.next944 = add nsw i64 %indvars.iv943, 2 ; 2 uses
  %indvars.iv.next942 = add nsw i64 %indvars.iv941, -2 ; 2 uses
  %i.ol = getelementptr [4 x i8], ptr %4, i64 %indvars.iv943
  %i.om = getelementptr i8, ptr %i.ol, i64 4      ; 2 uses
  %i.on = load float, ptr %i.om, align 4
  %i.oo = getelementptr [4 x i8], ptr %4, i64 %indvars.iv941
  %i.op = getelementptr i8, ptr %i.oo, i64 -12    ; 2 uses
  %i.oq = load float, ptr %i.op, align 4
  %i.or = fadd float %i.on, %i.oq
  %i.os = getelementptr [4 x i8], ptr %7, i64 %indvars.iv955
  %i.ot = getelementptr i8, ptr %i.os, i64 4
  store float %i.or, ptr %i.ot, align 4
  %i.ou = load float, ptr %i.om, align 4
  %i.ov = load float, ptr %i.op, align 4
  %i.ow = fsub float %i.ou, %i.ov
  %i.ox = getelementptr [4 x i8], ptr %7, i64 %indvars.iv949
  %i.oy = getelementptr i8, ptr %i.ox, i64 4
  store float %i.ow, ptr %i.oy, align 4
  %i.oz = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next944 ; 2 uses
  %i.pa = load float, ptr %i.oz, align 4
  %i.pb = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next942 ; 2 uses
  %i.pc = load float, ptr %i.pb, align 4
  %i.pd = fsub float %i.pa, %i.pc
  %i.pe = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next956
  store float %i.pd, ptr %i.pe, align 4
  %i.pf = load float, ptr %i.oz, align 4
  %i.pg = load float, ptr %i.pb, align 4
  %i.ph = fadd float %i.pf, %i.pg
  %i.pi = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next950
  store float %i.ph, ptr %i.pi, align 4
  %i.pj = add nuw nsw i32 %.2700, 2               ; 2 uses
  %i.pk = icmp slt i32 %i.pj, %0
  br i1 %i.pk, label %scalar.ph1391, label %._crit_edge702, !llvm.loop !1198

._crit_edge702:                                   ; preds = %scalar.ph1391, %middle.block1413
  %indvars.iv.next954 = add i64 %indvars.iv953, %i.ix
  %indvars.iv.next948 = add i64 %indvars.iv947, %i.ix
  %indvars.iv.next940 = add i64 %indvars.iv939, %i.iu
  %i.pl = add nuw nsw i32 %.3546706, 1            ; 2 uses
  %exitcond969.not = icmp eq i32 %i.pl, %2
  %indvar.next1286 = add i64 %indvar1285, 1
  br i1 %exitcond969.not, label %._crit_edge707, label %.preheader662, !llvm.loop !1199

._crit_edge707:                                   ; preds = %._crit_edge702
  %i.pm = add nuw nsw i32 %.1536711, 1            ; 2 uses
  %indvars.iv.next938 = add i32 %indvars.iv937, %i.du
  %indvars.iv.next946 = sub i32 %indvars.iv945, %i.d
  %indvars.iv.next952 = add i32 %indvars.iv951, %i.d
  %exitcond970.not = icmp eq i32 %i.pm, %i.o
  br i1 %exitcond970.not, label %.loopexit661, label %.preheader662.lr.ph, !llvm.loop !1200

.lr.ph728:                                        ; preds = %.lr.ph728.preheader, %._crit_edge729
  %indvars.iv989 = phi i32 [ %i.kp, %.lr.ph728.preheader ], [ %indvars.iv.next990, %._crit_edge729 ] ; 2 uses
  %indvars.iv983 = phi i32 [ %i.kn, %.lr.ph728.preheader ], [ %indvars.iv.next984, %._crit_edge729 ] ; 2 uses
  %indvars.iv977 = phi i32 [ %i.kk, %.lr.ph728.preheader ], [ %indvars.iv.next978, %._crit_edge729 ] ; 2 uses
  %indvars.iv971 = phi i32 [ %i.ki, %.lr.ph728.preheader ], [ %indvars.iv.next972, %._crit_edge729 ] ; 2 uses
  %.2537733 = phi i32 [ 1, %.lr.ph728.preheader ], [ %i.qo, %._crit_edge729 ]
  br label %.lr.ph720

.lr.ph720:                                        ; preds = %.lr.ph728, %._crit_edge721
  %indvars.iv991 = phi i32 [ %indvars.iv989, %.lr.ph728 ], [ %indvars.iv.next992, %._crit_edge721 ] ; 2 uses
  %indvars.iv985 = phi i32 [ %indvars.iv983, %.lr.ph728 ], [ %indvars.iv.next986, %._crit_edge721 ] ; 2 uses
  %indvars.iv979 = phi i32 [ %indvars.iv977, %.lr.ph728 ], [ %indvars.iv.next980, %._crit_edge721 ] ; 2 uses
  %indvars.iv973 = phi i32 [ %indvars.iv971, %.lr.ph728 ], [ %indvars.iv.next974, %._crit_edge721 ] ; 2 uses
  %.3726 = phi i32 [ 2, %.lr.ph728 ], [ %i.qm, %._crit_edge721 ]
  %i.pn = sext i32 %indvars.iv973 to i64
  %i.po = sext i32 %indvars.iv979 to i64
  %i.pp = sext i32 %indvars.iv985 to i64
  %i.pq = sext i32 %indvars.iv991 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph720, %bb.c
  %indvars.iv993 = phi i64 [ %i.pq, %.lr.ph720 ], [ %indvars.iv.next994, %bb.c ] ; 2 uses
  %indvars.iv987 = phi i64 [ %i.pp, %.lr.ph720 ], [ %indvars.iv.next988, %bb.c ] ; 2 uses
  %indvars.iv981 = phi i64 [ %i.po, %.lr.ph720 ], [ %indvars.iv.next982, %bb.c ] ; 2 uses
  %indvars.iv975 = phi i64 [ %i.pn, %.lr.ph720 ], [ %indvars.iv.next976, %bb.c ] ; 2 uses
  %.4547718 = phi i32 [ 0, %.lr.ph720 ], [ %i.ql, %bb.c ]
  %i.pr = getelementptr [4 x i8], ptr %4, i64 %indvars.iv981 ; 3 uses
  %i.ps = getelementptr i8, ptr %i.pr, i64 -4     ; 2 uses
  %i.pt = load float, ptr %i.ps, align 4
  %i.pu = getelementptr [4 x i8], ptr %4, i64 %indvars.iv975 ; 3 uses
  %i.pv = getelementptr i8, ptr %i.pu, i64 -4     ; 2 uses
  %i.pw = load float, ptr %i.pv, align 4
  %i.px = fadd float %i.pt, %i.pw
  %i.py = getelementptr [4 x i8], ptr %7, i64 %indvars.iv993 ; 2 uses
  %i.pz = getelementptr i8, ptr %i.py, i64 -4
  store float %i.px, ptr %i.pz, align 4
  %i.qa = load float, ptr %i.ps, align 4
  %i.qb = load float, ptr %i.pv, align 4
  %i.qc = fsub float %i.qa, %i.qb
  %i.qd = getelementptr [4 x i8], ptr %7, i64 %indvars.iv987 ; 2 uses
  %i.qe = getelementptr i8, ptr %i.qd, i64 -4
  store float %i.qc, ptr %i.qe, align 4
  %i.qf = load float, ptr %i.pr, align 4
  %i.qg = load float, ptr %i.pu, align 4
  %i.qh = fsub float %i.qf, %i.qg
  store float %i.qh, ptr %i.py, align 4
  %i.qi = load float, ptr %i.pr, align 4
  %i.qj = load float, ptr %i.pu, align 4
  %i.qk = fadd float %i.qi, %i.qj
  store float %i.qk, ptr %i.qd, align 4
  %indvars.iv.next994 = add nsw i64 %indvars.iv993, %i.ko
  %indvars.iv.next988 = add nsw i64 %indvars.iv987, %i.ko
  %indvars.iv.next982 = add nsw i64 %indvars.iv981, %i.kj
  %indvars.iv.next976 = add nsw i64 %indvars.iv975, %i.kj
  %i.ql = add nuw nsw i32 %.4547718, 1            ; 2 uses
  %exitcond1002.not = icmp eq i32 %i.ql, %2
  br i1 %exitcond1002.not, label %._crit_edge721, label %bb.c, !llvm.loop !1201

._crit_edge721:                                   ; preds = %bb.c
  %i.qm = add nuw nsw i32 %.3726, 2               ; 2 uses
  %i.qn = icmp slt i32 %i.qm, %0
  %indvars.iv.next974 = add i32 %indvars.iv973, -2
  %indvars.iv.next980 = add i32 %indvars.iv979, 2
  %indvars.iv.next986 = add i32 %indvars.iv985, 2
  %indvars.iv.next992 = add i32 %indvars.iv991, 2
  br i1 %i.qn, label %.lr.ph720, label %._crit_edge729, !llvm.loop !1202

._crit_edge729:                                   ; preds = %._crit_edge721
  %i.qo = add nuw nsw i32 %.2537733, 1            ; 2 uses
  %indvars.iv.next972 = add i32 %indvars.iv971, %i.du
  %indvars.iv.next978 = add i32 %indvars.iv977, %i.du
  %indvars.iv.next984 = sub i32 %indvars.iv983, %i.d
  %indvars.iv.next990 = add i32 %indvars.iv989, %i.d
  %exitcond1003.not = icmp eq i32 %i.qo, %i.o
  br i1 %exitcond1003.not, label %.loopexit661, label %.lr.ph728, !llvm.loop !1203

.loopexit661.thread:                              ; preds = %.lr.ph734, %.lr.ph712
  %i.qp = add i32 %1, -1
  br label %.lr.ph767

.loopexit661.thread1192:                          ; preds = %.preheader663, %.preheader660
  %i.qq = add i32 %1, -1
  br label %.preheader658.thread

.loopexit661:                                     ; preds = %._crit_edge707, %._crit_edge729, %._crit_edge695.split
  %i.qr = add i32 %1, -1                          ; 2 uses
  br i1 %i.dv, label %.lr.ph767, label %.preheader658.thread

.lr.ph767:                                        ; preds = %.loopexit661.thread, %.loopexit661
  %i.qs = phi i32 [ %i.qp, %.loopexit661.thread ], [ %i.qr, %.loopexit661 ] ; 5 uses
  %i.qt = mul i32 %3, %i.qs                       ; 2 uses
  %i.qu = icmp sgt i32 %3, 0
  %.not = icmp eq i32 %i.o, 2
  %10 = icmp eq i32 %3, 0
  %i.qv = sext i32 %i.qt to i64                   ; 5 uses
  %i.qw = sext i32 %3 to i64                      ; 5 uses
  %i.qx = add i32 %1, -2
  %i.qy = mul i32 %3, %i.qx
  %i.qz = shl i32 %3, 1
  %wide.trip.count1029 = zext i32 %3 to i64       ; 7 uses
  %brmerge870 = or i1 %.not, %10
  %i.ra = add i32 %3, -1
  %i.rb = zext i32 %i.ra to i64
  %i.rc = shl nuw nsw i64 %i.rb, 2
  %i.rd = add nuw nsw i64 %i.rc, 4                ; 4 uses
  %scevgep1422 = getelementptr i8, ptr %6, i64 %i.rd
  %scevgep1425 = getelementptr i8, ptr %6, i64 %i.rd
  %scevgep1428 = getelementptr i8, ptr %8, i64 %i.rd
  %scevgep1431 = getelementptr i8, ptr %8, i64 %i.rd
  %i.re = shl nsw i64 %i.qv, 2                    ; 2 uses
  %i.rf = add i64 %i.re, %i.b
  %i.rg = shl nsw i64 %i.qw, 2                    ; 2 uses
  %i.rh = add i64 %i.rg, %i.b
  %i.ri = sub i64 %i.a, %i.rh
  %i.rj = sub i64 %i.a, %i.b
  %i.rk = add i64 %i.re, %i.b
  %i.rl = sub i64 %i.a, %i.rk
  %i.rm = add i64 %i.rg, %i.b
  %i.rn = sub i64 %i.a, %i.rm
  %i.ro = sub i64 %i.a, %i.b
  %i.rp = insertelement <2 x float> poison, float %i.i, i64 0
  %i.rq = shufflevector <2 x float> %i.rp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rr = insertelement <2 x float> poison, float %i.k, i64 0
  %i.rs = shufflevector <2 x float> %i.rr, <2 x float> poison, <2 x i32> zeroinitializer
  %min.iters.check1487 = icmp ult i32 %3, 8
  %invariant.op1850 = sub i64 %i.a, %i.rf
  %invariant.op1852 = add i64 %i.ri, -1
  %invariant.op1854 = add i64 %i.rj, -1
  %invariant.op1856 = add i64 %i.rl, -1
  %invariant.op1858 = add i64 %i.rn, -1
  %invariant.op1860 = add i64 %i.ro, -1
  %n.vec1490 = and i64 %wide.trip.count1029, 2147483644 ; 7 uses
  %i.rt = add nuw nsw i64 %n.vec1490, %i.qw
  %i.ru = add nsw i64 %n.vec1490, %i.qv
  %invariant.gep1834 = getelementptr [4 x i8], ptr %8, i64 %i.qw
  %invariant.gep1838 = getelementptr [4 x i8], ptr %8, i64 %i.qv
  %cmp.n1502 = icmp eq i64 %n.vec1490, %wide.trip.count1029
  %min.iters.check1453 = icmp ult i32 %3, 8
  %n.vec1456 = and i64 %wide.trip.count1029, 2147483644 ; 7 uses
  %i.rv = trunc nuw nsw i64 %n.vec1456 to i32
  %cmp.n1467 = icmp eq i64 %n.vec1456, %wide.trip.count1029
  br label %bb.d

.preheader658.thread:                             ; preds = %.loopexit661, %.loopexit661.thread1192
  %.ph = phi i32 [ %i.qr, %.loopexit661 ], [ %i.qq, %.loopexit661.thread1192 ]
  %i.rw = icmp sgt i32 %3, 0
  br label %._crit_edge786.split

.preheader659:                                    ; preds = %._crit_edge760.split
  %i.rx = icmp sgt i32 %3, 0                      ; 3 uses
  %or.cond867 = and i1 %i.dv, %i.rx
  br i1 %or.cond867, label %.lr.ph771.preheader, label %.preheader658

.lr.ph771.preheader:                              ; preds = %.preheader659
  %wide.trip.count1062 = zext nneg i32 %3 to i64
  %min.iters.check1509 = icmp ult i32 %3, 8
  %n.vec1512 = and i64 %wide.trip.count1029, 2147483640 ; 4 uses
  %cmp.n1521 = icmp eq i64 %n.vec1512, %wide.trip.count1029
  br label %.lr.ph771

bb.d:                                             ; preds = %.lr.ph767, %._crit_edge760.split
  %indvars.iv1014 = phi i32 [ %3, %.lr.ph767 ], [ %indvars.iv.next1015, %._crit_edge760.split ] ; 4 uses
  %indvars.iv1010 = phi i32 [ %i.qt, %.lr.ph767 ], [ %indvars.iv.next1011, %._crit_edge760.split ] ; 4 uses
  %.0554765 = phi i32 [ 1, %.lr.ph767 ], [ %i.uv, %._crit_edge760.split ]
  %i.ry = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.lr.ph767 ], [ %i.so, %._crit_edge760.split ] ; 2 uses
  %i.rz = sext i32 %indvars.iv1010 to i64
  %i.sa = shl nsw i64 %i.rz, 2                    ; 4 uses
  %i.sb = sext i32 %indvars.iv1014 to i64
  %i.sc = shl nsw i64 %i.sb, 2                    ; 4 uses
  %i.sd = sext i32 %indvars.iv1014 to i64
  %i.se = shl nsw i64 %i.sd, 2                    ; 2 uses
  %scevgep1421 = getelementptr i8, ptr %6, i64 %i.se ; 3 uses
  %scevgep1423 = getelementptr i8, ptr %scevgep1422, i64 %i.se ; 3 uses
  %i.sf = sext i32 %indvars.iv1010 to i64
  %i.sg = shl nsw i64 %i.sf, 2                    ; 2 uses
  %scevgep1424 = getelementptr i8, ptr %6, i64 %i.sg ; 3 uses
  %scevgep1426 = getelementptr i8, ptr %scevgep1425, i64 %i.sg ; 3 uses
  %i.sh = sext i32 %indvars.iv1010 to i64         ; 8 uses
  %i.si = sext i32 %indvars.iv1014 to i64         ; 8 uses
  %i.sj = fmul <2 x float> %i.ry, %i.rq           ; 2 uses
  %i.sk = shufflevector <2 x float> %i.ry, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.sl = fmul <2 x float> %i.sk, %i.rs           ; 2 uses
  %i.sm = fadd <2 x float> %i.sj, %i.sl           ; 4 uses
  %i.sn = fsub <2 x float> %i.sj, %i.sl           ; 4 uses
  %i.so = shufflevector <2 x float> %i.sm, <2 x float> %i.sn, <2 x i32> <i32 0, i32 3>
  br i1 %i.qu, label %.lr.ph743.preheader, label %._crit_edge760.split

.lr.ph743.preheader:                              ; preds = %bb.d
  br i1 %min.iters.check1487, label %.lr.ph743.preheader1800, label %vector.memcheck1473

vector.memcheck1473:                              ; preds = %.lr.ph743.preheader
  %i.sp = sub nsw i64 %i.sc, %i.sa
  %diff.check = icmp ugt i64 %i.sp, -16
  %.reass1851 = add i64 %i.sc, %invariant.op1850
  %diff.check1474 = icmp ugt i64 %.reass1851, -16
  %conflict.rdx1475 = or i1 %diff.check, %diff.check1474
  %.reass1853 = add i64 %i.sc, %invariant.op1852
  %diff.check1476 = icmp ult i64 %.reass1853, 15
  %conflict.rdx1477 = or i1 %conflict.rdx1475, %diff.check1476
  %.reass1855 = add i64 %i.sc, %invariant.op1854
  %diff.check1478 = icmp ult i64 %.reass1855, 15
  %conflict.rdx1479 = or i1 %conflict.rdx1477, %diff.check1478
  %.reass1857 = add i64 %i.sa, %invariant.op1856
  %diff.check1480 = icmp ult i64 %.reass1857, 15
  %conflict.rdx1481 = or i1 %conflict.rdx1479, %diff.check1480
  %.reass1859 = add i64 %i.sa, %invariant.op1858
  %diff.check1482 = icmp ult i64 %.reass1859, 15
  %conflict.rdx1483 = or i1 %conflict.rdx1481, %diff.check1482
  %.reass1861 = add i64 %i.sa, %invariant.op1860
  %diff.check1484 = icmp ult i64 %.reass1861, 15
  %conflict.rdx1485 = or i1 %conflict.rdx1483, %diff.check1484
  br i1 %conflict.rdx1485, label %.lr.ph743.preheader1800, label %vector.ph1488

vector.ph1488:                                    ; preds = %vector.memcheck1473
  %i.sq = add nsw i64 %n.vec1490, %i.si
  %i.sr = add nsw i64 %n.vec1490, %i.sh
  %broadcast.splat1492 = shufflevector <2 x float> %i.sn, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat1494 = shufflevector <2 x float> %i.sm, <2 x float> poison, <4 x i32> zeroinitializer
  %invariant.gep1836 = getelementptr [4 x i8], ptr %6, i64 %i.si
  %invariant.gep1840 = getelementptr [4 x i8], ptr %6, i64 %i.sh
  br label %vector.body1495

vector.body1495:                                  ; preds = %vector.body1495, %vector.ph1488
  %index1496 = phi i64 [ 0, %vector.ph1488 ], [ %index.next1500, %vector.body1495 ] ; 6 uses
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %index1496
  %wide.load1497 = load <4 x float>, ptr %i.ss, align 4
  %gep1835 = getelementptr [4 x i8], ptr %invariant.gep1834, i64 %index1496
  %wide.load1498 = load <4 x float>, ptr %gep1835, align 4
  %i.st = fmul <4 x float> %broadcast.splat1492, %wide.load1498
  %i.su = fadd <4 x float> %wide.load1497, %i.st
  %gep1837 = getelementptr [4 x i8], ptr %invariant.gep1836, i64 %index1496
  store <4 x float> %i.su, ptr %gep1837, align 4
  %gep1839 = getelementptr [4 x i8], ptr %invariant.gep1838, i64 %index1496
  %wide.load1499 = load <4 x float>, ptr %gep1839, align 4
  %i.sv = fmul <4 x float> %broadcast.splat1494, %wide.load1499
  %gep1841 = getelementptr [4 x i8], ptr %invariant.gep1840, i64 %index1496
  store <4 x float> %i.sv, ptr %gep1841, align 4
  %index.next1500 = add nuw i64 %index1496, 4     ; 2 uses
  %i.sw = icmp eq i64 %index.next1500, %n.vec1490
  br i1 %i.sw, label %middle.block1501, label %vector.body1495, !llvm.loop !1204

middle.block1501:                                 ; preds = %vector.body1495
  br i1 %cmp.n1502, label %._crit_edge744, label %.lr.ph743.preheader1800

.lr.ph743.preheader1800:                          ; preds = %vector.memcheck1473, %.lr.ph743.preheader, %middle.block1501
  %indvars.iv1016.ph = phi i64 [ %i.si, %vector.memcheck1473 ], [ %i.si, %.lr.ph743.preheader ], [ %i.sq, %middle.block1501 ]
  %indvars.iv1012.ph = phi i64 [ %i.sh, %vector.memcheck1473 ], [ %i.sh, %.lr.ph743.preheader ], [ %i.sr, %middle.block1501 ]
  %indvars.iv1008.ph = phi i64 [ 0, %vector.memcheck1473 ], [ 0, %.lr.ph743.preheader ], [ %n.vec1490, %middle.block1501 ]
  %indvars.iv1006.ph = phi i64 [ %i.qw, %vector.memcheck1473 ], [ %i.qw, %.lr.ph743.preheader ], [ %i.rt, %middle.block1501 ]
  %indvars.iv1004.ph = phi i64 [ %i.qv, %vector.memcheck1473 ], [ %i.qv, %.lr.ph743.preheader ], [ %i.ru, %middle.block1501 ]
  %i.sx = extractelement <2 x float> %i.sn, i64 1
  %i.sy = extractelement <2 x float> %i.sm, i64 0
  br label %.lr.ph743

.lr.ph743:                                        ; preds = %.lr.ph743.preheader1800, %.lr.ph743
  %indvars.iv1016 = phi i64 [ %indvars.iv.next1017, %.lr.ph743 ], [ %indvars.iv1016.ph, %.lr.ph743.preheader1800 ] ; 2 uses
  %indvars.iv1012 = phi i64 [ %indvars.iv.next1013, %.lr.ph743 ], [ %indvars.iv1012.ph, %.lr.ph743.preheader1800 ] ; 2 uses
  %indvars.iv1008 = phi i64 [ %indvars.iv.next1009, %.lr.ph743 ], [ %indvars.iv1008.ph, %.lr.ph743.preheader1800 ] ; 2 uses
  %indvars.iv1006 = phi i64 [ %indvars.iv.next1007, %.lr.ph743 ], [ %indvars.iv1006.ph, %.lr.ph743.preheader1800 ] ; 2 uses
  %indvars.iv1004 = phi i64 [ %indvars.iv.next1005, %.lr.ph743 ], [ %indvars.iv1004.ph, %.lr.ph743.preheader1800 ] ; 2 uses
  %indvars.iv.next1009 = add nuw nsw i64 %indvars.iv1008, 1 ; 2 uses
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv1008
  %i.ta = load float, ptr %i.sz, align 4
  %indvars.iv.next1007 = add nuw nsw i64 %indvars.iv1006, 1
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv1006
  %i.tc = load float, ptr %i.tb, align 4
  %i.td = fmul float %i.sx, %i.tc
  %i.te = fadd float %i.ta, %i.td
  %indvars.iv.next1017 = add nsw i64 %indvars.iv1016, 1
  %i.tf = getelementptr inbounds [4 x i8], ptr %6, i64 %indvars.iv1016
  store float %i.te, ptr %i.tf, align 4
  %indvars.iv.next1005 = add nsw i64 %indvars.iv1004, 1
  %i.tg = getelementptr inbounds [4 x i8], ptr %8, i64 %indvars.iv1004
  %i.th = load float, ptr %i.tg, align 4
  %i.ti = fmul float %i.sy, %i.th
  %indvars.iv.next1013 = add nsw i64 %indvars.iv1012, 1
  %i.tj = getelementptr inbounds [4 x i8], ptr %6, i64 %indvars.iv1012
  store float %i.ti, ptr %i.tj, align 4
  %exitcond1030.not = icmp eq i64 %indvars.iv.next1009, %wide.trip.count1029
  br i1 %exitcond1030.not, label %._crit_edge744, label %.lr.ph743, !llvm.loop !1205

._crit_edge744:                                   ; preds = %.lr.ph743, %middle.block1501
  %i.tk = extractelement <2 x float> %i.sm, i64 0 ; 3 uses
  %i.tl = extractelement <2 x float> %i.sn, i64 1 ; 3 uses
  br i1 %brmerge870, label %._crit_edge760.split, label %.lr.ph751.preheader

.lr.ph751.preheader:                              ; preds = %._crit_edge744
  %bound01433 = icmp ult ptr %scevgep1421, %scevgep1426
  %bound11434 = icmp ult ptr %scevgep1424, %scevgep1423
  %found.conflict1435 = and i1 %bound01433, %bound11434
  %i.tm = add nsw i64 %n.vec1456, %i.si
  %i.tn = add nsw i64 %n.vec1456, %i.sh
  %invariant.gep1844 = getelementptr [4 x i8], ptr %6, i64 %i.si
  %invariant.gep1848 = getelementptr [4 x i8], ptr %6, i64 %i.sh
end_hunk_5
