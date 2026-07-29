inline.NumInlined: 74
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@binascii_a2b_uu:bb.a
  %.067.i = phi i32 [ %i.r, %bb.f ], [ 0, %switch.early.test.i ], [ 0, %switch.early.test.i ], [ 0, %.lr.ph.i ]
  %i.s = shl i32 %.0656.i, 6
  %i.t = or i32 %.067.i, %i.s                     ; 3 uses
  %i.u = add nuw nsw i32 %.0685.i, 6
  %i.v = icmp sgt i32 %.0685.i, 1
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread.i
  %i.w = add nsw i32 %.0685.i, -2                 ; 3 uses
  %i.x = lshr i32 %i.t, %i.w
  %i.y = trunc i32 %i.x to i8
  %i.z = getelementptr i8, ptr %.08.i, i64 1
  store i8 %i.y, ptr %.08.i, align 1, !tbaa !16
  %notmask.i = shl nsw i32 -1, %i.w
  %i.aa = xor i32 %notmask.i, -1
  %i.ab = and i32 %i.t, %i.aa
  %i.ac = add nsw i64 %.0617.i, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread.i
  %.169.i = phi i32 [ %i.w, %bb.g ], [ %i.u, %.thread.i ]
  %.166.i = phi i32 [ %i.ab, %bb.g ], [ %i.t, %.thread.i ]
  %.162.i = phi i64 [ %i.ac, %bb.g ], [ %.0617.i, %.thread.i ] ; 2 uses
  %.1.i = phi ptr [ %i.z, %bb.g ], [ %.08.i, %.thread.i ]
  %.070.i = getelementptr i8, ptr %.0709.i, i64 1 ; 2 uses
  %.063.i = add i64 %.06310.i, -1                 ; 2 uses
  %i.ad = icmp sgt i64 %.162.i, 0
  br i1 %i.ad, label %.lr.ph.i, label %.preheader.i, !llvm.loop !23

.lr.ph14.i:                                       ; preds = %.preheader.i, %.backedge.i
  %.16413.i = phi i64 [ %i.ag, %.backedge.i ], [ %.063.lcssa.i, %.preheader.i ] ; 2 uses
  %.17112.i = phi ptr [ %i.af, %.backedge.i ], [ %.070.lcssa.i, %.preheader.i ] ; 2 uses
  %i.ae = load i8, ptr %.17112.i, align 1, !tbaa !16
  switch i8 %i.ae, label %bb.i [
    i8 96, label %.backedge.i
    i8 32, label %.backedge.i
    i8 13, label %.backedge.i
    i8 10, label %.backedge.i
  ]

.backedge.i:                                      ; preds = %.lr.ph14.i, %.lr.ph14.i, %.lr.ph14.i, %.lr.ph14.i
  %i.af = getelementptr i8, ptr %.17112.i, i64 1
  %i.ag = add nsw i64 %.16413.i, -1
  %i.ah = icmp sgt i64 %.16413.i, 1
  br i1 %i.ah, label %.lr.ph14.i, label %._crit_edge.i

bb.i:                                             ; preds = %.lr.ph14.i
  %i.ai = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.j, label %.sink.split.i

._crit_edge.i:                                    ; preds = %.backedge.i, %.preheader.i
  %i.ak = call ptr @PyBytesWriter_Finish(ptr noundef nonnull %i.g) #6
  br label %binascii_a2b_uu_impl.exit

.sink.split.i:                                    ; preds = %bb.i, %bb.e
  %.sink21.i = phi ptr [ %i.n, %bb.e ], [ %i.ai, %bb.i ]
  %.str.23.sink.i = phi ptr [ @.str.22, %bb.e ], [ @.str.23, %bb.i ]
  %i.al = load ptr, ptr %.sink21.i, align 8, !tbaa !10
  call void @PyErr_SetString(ptr noundef %i.al, ptr noundef nonnull %.str.23.sink.i) #6
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.i, %bb.e
  call void @PyBytesWriter_Discard(ptr noundef nonnull %i.g) #6
  br label %binascii_a2b_uu_impl.exit

binascii_a2b_uu_impl.exit:                        ; preds = %bb.j, %._crit_edge.i, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.j ], [ %i.ak, %._crit_edge.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !25
  %.not3 = icmp eq ptr %i.an, null
  br i1 %.not3, label %bb.l, label %bb.k

bb.k:                                             ; preds = %binascii_a2b_uu_impl.exit
  call void @PyBuffer_Release(ptr noundef nonnull %2) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %binascii_a2b_uu_impl.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_b2a_uu(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  %4 = alloca %struct.Py_buffer, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.d = add i64 %i.c, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  %i.e = icmp eq i64 %2, 1
  %i.f = icmp ne ptr %1, null
  %i.g = and i1 %i.f, %i.e
  %or.cond5 = and i1 %i.g, %.not
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @binascii_b2a_uu._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #6 ; 2 uses
  %.not28 = icmp eq ptr %i.h, null
  br i1 %.not28, label %binascii_b2a_uu_impl.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.i = phi ptr [ %i.h, %bb.d ], [ %1, %bb.c ]   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.k = call i32 @PyObject_GetBuffer(ptr noundef %i.j, ptr noundef nonnull %4, i32 noundef 0) #6
  %.not29 = icmp eq i32 %i.k, 0
  br i1 %.not29, label %bb.e, label %binascii_b2a_uu_impl.exit

bb.e:                                             ; preds = %.thread
  %.not30 = icmp eq i64 %i.d, 1
  br i1 %.not30, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.n = call i32 @PyObject_IsTrue(ptr noundef %i.m) #6 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %binascii_b2a_uu_impl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ %i.n, %bb.f ], [ 0, %bb.e ]
  %.val32 = load ptr, ptr %4, align 8, !tbaa !17  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val33 = load i64, ptr %i.p, align 8, !tbaa !22 ; 7 uses
  %i.q = icmp sgt i64 %.val33, 45
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.r = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %binascii_b2a_uu_impl.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !10
  call void @PyErr_SetString(ptr noundef %i.t, ptr noundef nonnull @.str.26) #6
  br label %binascii_b2a_uu_impl.exit

bb.j:                                             ; preds = %bb.g
  %i.u = add nsw i64 %.val33, 2
  %i.v = sdiv i64 %i.u, 3
  %i.w = shl i64 %i.v, 2
  %i.x = or disjoint i64 %i.w, 2
  %i.y = call ptr @PyBytesWriter_Create(i64 noundef %i.x) #6 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %binascii_b2a_uu_impl.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.y) #6 ; 2 uses
  %i.ab = icmp eq i32 %.0, 0                      ; 2 uses
  %i.ac = icmp ne i64 %.val33, 0
  %or.cond.i = or i1 %i.ab, %i.ac
  %i.ad = trunc i64 %.val33 to i8
  %i.ae = add i8 %i.ad, 32
  %storemerge.i = select i1 %or.cond.i, i8 %i.ae, i8 96
  %.0.i = getelementptr i8, ptr %i.aa, i64 1      ; 3 uses
  store i8 %storemerge.i, ptr %i.aa, align 1, !tbaa !16
  %i.af = icmp sgt i64 %.val33, 0
  br i1 %i.af, label %.lr.ph11.i, label %._crit_edge12.i

.lr.ph11.i:                                       ; preds = %bb.k
  br i1 %i.ab, label %.lr.ph11.split.us.i, label %.lr.ph11.split.i

.lr.ph11.split.us.i:                              ; preds = %.lr.ph11.i, %._crit_edge.split.us.us.i
  %i.ag = phi i1 [ %i.bh, %._crit_edge.split.us.us.i ], [ true, %.lr.ph11.i ]
  %.19.us.i = phi ptr [ %.2.lcssa.us.i, %._crit_edge.split.us.us.i ], [ %.0.i, %.lr.ph11.i ] ; 6 uses
  %.0418.us.i = phi ptr [ %i.bg, %._crit_edge.split.us.us.i ], [ %.val32, %.lr.ph11.i ] ; 2 uses
  %.0427.us.i = phi i64 [ %i.bf, %._crit_edge.split.us.us.i ], [ %.val33, %.lr.ph11.i ]
  %.0436.us.i = phi i32 [ %.144.lcssa.us.i, %._crit_edge.split.us.us.i ], [ 0, %.lr.ph11.i ] ; 3 uses
  %.0455.us.i = phi i32 [ %.146.us.i, %._crit_edge.split.us.us.i ], [ 0, %.lr.ph11.i ]
  %i.ah = shl i32 %.0455.us.i, 8                  ; 2 uses
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph11.split.us.i
  %i.ai = load i8, ptr %.0418.us.i, align 1, !tbaa !16
  %i.aj = zext i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.ah, %i.aj
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph11.split.us.i
  %.146.us.i = phi i32 [ %i.ak, %bb.l ], [ %i.ah, %.lr.ph11.split.us.i ] ; 4 uses
  %i.al = add nsw i32 %.0436.us.i, 8              ; 6 uses
  %i.am = icmp sgt i32 %.0436.us.i, -3
  br i1 %i.am, label %iter.check89, label %._crit_edge.split.us.us.i

iter.check89:                                     ; preds = %bb.m
  %i.an = add i32 %.0436.us.i, 2                  ; 3 uses
  %i.ao = udiv i32 %i.an, 6
  %narrow111 = add nuw nsw i32 %i.ao, 1
  %i.ap = zext nneg i32 %narrow111 to i64         ; 5 uses
  %min.iters.check68 = icmp ult i32 %i.an, 18
  br i1 %min.iters.check68, label %.lr.ph.us.i.preheader, label %vector.main.loop.iter.check69

vector.main.loop.iter.check69:                    ; preds = %iter.check89
  %min.iters.check70 = icmp ult i32 %i.an, 90
  br i1 %min.iters.check70, label %vec.epilog.ph93, label %vector.ph71

vector.ph71:                                      ; preds = %vector.main.loop.iter.check69
  %n.mod.vf72 = and i64 %i.ap, 12
  %n.vec73 = and i64 %i.ap, 2147483632            ; 5 uses
  %i.aq = getelementptr i8, ptr %.19.us.i, i64 %n.vec73 ; 2 uses
  %i.ar = trunc nuw nsw i64 %n.vec73 to i32
  %i.as = mul i32 %i.ar, -6
  %i.at = add i32 %i.al, %i.as                    ; 3 uses
  %broadcast.splatinsert74 = insertelement <16 x i32> poison, i32 %.146.us.i, i64 0
  %broadcast.splat75 = shufflevector <16 x i32> %broadcast.splatinsert74, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert76 = insertelement <16 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat77 = shufflevector <16 x i32> %broadcast.splatinsert76, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction78 = add nsw <16 x i32> %broadcast.splat77, <i32 0, i32 -6, i32 -12, i32 -18, i32 -24, i32 -30, i32 -36, i32 -42, i32 -48, i32 -54, i32 -60, i32 -66, i32 -72, i32 -78, i32 -84, i32 -90>
  br label %vector.body79

vector.body79:                                    ; preds = %vector.body79, %vector.ph71
  %index80 = phi i64 [ 0, %vector.ph71 ], [ %index.next83, %vector.body79 ] ; 2 uses
  %vec.ind81 = phi <16 x i32> [ %induction78, %vector.ph71 ], [ %vec.ind.next84, %vector.body79 ] ; 2 uses
  %next.gep82 = getelementptr i8, ptr %.19.us.i, i64 %index80
  %i.au = add nsw <16 x i32> %vec.ind81, splat (i32 -6)
  %i.av = lshr <16 x i32> %broadcast.splat75, %i.au
  %i.aw = trunc <16 x i32> %i.av to <16 x i8>
  %i.ax = and <16 x i8> %i.aw, splat (i8 63)
  %i.ay = add nuw nsw <16 x i8> %i.ax, splat (i8 32)
  store <16 x i8> %i.ay, ptr %next.gep82, align 1, !tbaa !16
  %index.next83 = add nuw i64 %index80, 16        ; 2 uses
  %vec.ind.next84 = add nsw <16 x i32> %vec.ind81, splat (i32 -96)
  %i.az = icmp eq i64 %index.next83, %n.vec73
  br i1 %i.az, label %middle.block85, label %vector.body79, !llvm.loop !30

middle.block85:                                   ; preds = %vector.body79
  %cmp.n86 = icmp eq i64 %n.vec73, %i.ap
  br i1 %cmp.n86, label %._crit_edge.split.us.us.i, label %vec.epilog.iter.check91

vec.epilog.iter.check91:                          ; preds = %middle.block85
  %min.epilog.iters.check92 = icmp eq i64 %n.mod.vf72, 0
  br i1 %min.epilog.iters.check92, label %.lr.ph.us.i.preheader, label %vec.epilog.ph93, !prof !33

vec.epilog.ph93:                                  ; preds = %vector.main.loop.iter.check69, %vec.epilog.iter.check91
  %vec.epilog.resume.val87 = phi i64 [ %n.vec73, %vec.epilog.iter.check91 ], [ 0, %vector.main.loop.iter.check69 ]
  %bc.resume.val88 = phi i32 [ %i.at, %vec.epilog.iter.check91 ], [ %i.al, %vector.main.loop.iter.check69 ]
  %n.vec95 = and i64 %i.ap, 2147483644            ; 4 uses
  %i.ba = getelementptr i8, ptr %.19.us.i, i64 %n.vec95 ; 2 uses
  %i.bb = trunc nuw nsw i64 %n.vec95 to i32
  %i.bc = mul i32 %i.bb, -6
  %i.bd = add i32 %i.al, %i.bc                    ; 2 uses
  %broadcast.splatinsert96 = insertelement <4 x i32> poison, i32 %.146.us.i, i64 0
  %broadcast.splat97 = shufflevector <4 x i32> %broadcast.splatinsert96, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert98 = insertelement <4 x i32> poison, i32 %bc.resume.val88, i64 0
  %broadcast.splat99 = shufflevector <4 x i32> %broadcast.splatinsert98, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction100 = add nsw <4 x i32> %broadcast.splat99, <i32 0, i32 -6, i32 -12, i32 -18>
  br label %vec.epilog.vector.body101

vec.epilog.vector.body101:                        ; preds = %vec.epilog.vector.body101, %vec.epilog.ph93
  %index102 = phi i64 [ %vec.epilog.resume.val87, %vec.epilog.ph93 ], [ %index.next105, %vec.epilog.vector.body101 ] ; 2 uses
  %vec.ind103 = phi <4 x i32> [ %induction100, %vec.epilog.ph93 ], [ %vec.ind.next106, %vec.epilog.vector.body101 ] ; 2 uses
  %next.gep104 = getelementptr i8, ptr %.19.us.i, i64 %index102
  %5 = add nsw <4 x i32> %vec.ind103, splat (i32 -6)
  %6 = lshr <4 x i32> %broadcast.splat97, %5
  %7 = trunc <4 x i32> %6 to <4 x i8>
  %8 = and <4 x i8> %7, splat (i8 63)
  %9 = add nuw nsw <4 x i8> %8, splat (i8 32)
  store <4 x i8> %9, ptr %next.gep104, align 1, !tbaa !16
  %index.next105 = add nuw i64 %index102, 4       ; 2 uses
  %vec.ind.next106 = add nsw <4 x i32> %vec.ind103, splat (i32 -24)
  %i.be = icmp eq i64 %index.next105, %n.vec95
  br i1 %i.be, label %vec.epilog.middle.block107, label %vec.epilog.vector.body101, !llvm.loop !34

vec.epilog.middle.block107:                       ; preds = %vec.epilog.vector.body101
  %cmp.n108 = icmp eq i64 %n.vec95, %i.ap
  br i1 %cmp.n108, label %._crit_edge.split.us.us.i, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %iter.check89, %vec.epilog.iter.check91, %vec.epilog.middle.block107
  %.22.us.us.i.ph = phi ptr [ %.19.us.i, %iter.check89 ], [ %i.aq, %vec.epilog.iter.check91 ], [ %i.ba, %vec.epilog.middle.block107 ]
  %.1441.us.us.i.ph = phi i32 [ %i.al, %iter.check89 ], [ %i.at, %vec.epilog.iter.check91 ], [ %i.bd, %vec.epilog.middle.block107 ]
  br label %.lr.ph.us.i

._crit_edge.split.us.us.i:                        ; preds = %.lr.ph.us.i, %middle.block85, %vec.epilog.middle.block107, %bb.m
  %.144.lcssa.us.i = phi i32 [ %i.al, %bb.m ], [ %i.bd, %vec.epilog.middle.block107 ], [ %i.at, %middle.block85 ], [ %i.bk, %.lr.ph.us.i ] ; 2 uses
  %.2.lcssa.us.i = phi ptr [ %.19.us.i, %bb.m ], [ %i.ba, %vec.epilog.middle.block107 ], [ %i.aq, %middle.block85 ], [ %.3.us.us.i, %.lr.ph.us.i ] ; 2 uses
  %i.bf = add i64 %.0427.us.i, -1                 ; 2 uses
  %i.bg = getelementptr i8, ptr %.0418.us.i, i64 1
  %i.bh = icmp sgt i64 %i.bf, 0                   ; 2 uses
  %i.bi = icmp ne i32 %.144.lcssa.us.i, 0
  %i.bj = or i1 %i.bh, %i.bi
  br i1 %i.bj, label %.lr.ph11.split.us.i, label %._crit_edge12.i, !llvm.loop !35

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %.lr.ph.us.i
  %.22.us.us.i = phi ptr [ %.3.us.us.i, %.lr.ph.us.i ], [ %.22.us.us.i.ph, %.lr.ph.us.i.preheader ] ; 2 uses
  %.1441.us.us.i = phi i32 [ %i.bk, %.lr.ph.us.i ], [ %.1441.us.us.i.ph, %.lr.ph.us.i.preheader ] ; 2 uses
  %i.bk = add nsw i32 %.1441.us.us.i, -6          ; 3 uses
  %i.bl = lshr i32 %.146.us.i, %i.bk
  %i.bm = trunc i32 %i.bl to i8
  %i.bn = and i8 %i.bm, 63
  %i.bo = add nuw nsw i8 %i.bn, 32
  %.3.us.us.i = getelementptr i8, ptr %.22.us.us.i, i64 1 ; 2 uses
  store i8 %i.bo, ptr %.22.us.us.i, align 1, !tbaa !16
  %i.bp = icmp samesign ugt i32 %.1441.us.us.i, 11
  br i1 %i.bp, label %.lr.ph.us.i, label %._crit_edge.split.us.us.i, !llvm.loop !36

.lr.ph11.split.i:                                 ; preds = %.lr.ph11.i, %._crit_edge.split.i
  %i.bq = phi i1 [ %i.dj, %._crit_edge.split.i ], [ true, %.lr.ph11.i ]
  %.19.i = phi ptr [ %.2.lcssa.i, %._crit_edge.split.i ], [ %.0.i, %.lr.ph11.i ] ; 6 uses
  %.0418.i = phi ptr [ %i.di, %._crit_edge.split.i ], [ %.val32, %.lr.ph11.i ] ; 2 uses
  %.0427.i = phi i64 [ %i.dh, %._crit_edge.split.i ], [ %.val33, %.lr.ph11.i ]
  %.0436.i = phi i32 [ %.144.lcssa.i, %._crit_edge.split.i ], [ 0, %.lr.ph11.i ] ; 3 uses
  %.0455.i = phi i32 [ %.146.i, %._crit_edge.split.i ], [ 0, %.lr.ph11.i ]
  %i.br = shl i32 %.0455.i, 8                     ; 2 uses
  br i1 %i.bq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph11.split.i
  %i.bs = load i8, ptr %.0418.i, align 1, !tbaa !16
  %i.bt = zext i8 %i.bs to i32
  %i.bu = or disjoint i32 %i.br, %i.bt
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph11.split.i
  %.146.i = phi i32 [ %i.bu, %bb.n ], [ %i.br, %.lr.ph11.split.i ] ; 4 uses
  %i.bv = add nsw i32 %.0436.i, 8                 ; 6 uses
  %i.bw = icmp sgt i32 %.0436.i, -3
  br i1 %i.bw, label %iter.check, label %._crit_edge.split.i

iter.check:                                       ; preds = %bb.o
  %i.bx = add i32 %.0436.i, 2                     ; 3 uses
  %i.by = udiv i32 %i.bx, 6
  %narrow = add nuw nsw i32 %i.by, 1
  %i.bz = zext nneg i32 %narrow to i64            ; 5 uses
  %min.iters.check = icmp ult i32 %i.bx, 18
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check49 = icmp ult i32 %i.bx, 90
  br i1 %min.iters.check49, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bz, 12
  %n.vec = and i64 %i.bz, 2147483632              ; 5 uses
  %i.ca = getelementptr i8, ptr %.19.i, i64 %n.vec ; 2 uses
  %i.cb = trunc nuw nsw i64 %n.vec to i32
  %i.cc = mul i32 %i.cb, -6
  %i.cd = add i32 %i.bv, %i.cc                    ; 3 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %.146.i, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert50 = insertelement <16 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat51 = shufflevector <16 x i32> %broadcast.splatinsert50, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add nsw <16 x i32> %broadcast.splat51, <i32 0, i32 -6, i32 -12, i32 -18, i32 -24, i32 -30, i32 -36, i32 -42, i32 -48, i32 -54, i32 -60, i32 -66, i32 -72, i32 -78, i32 -84, i32 -90>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.19.i, i64 %index
  %i.ce = add nsw <16 x i32> %vec.ind, splat (i32 -6)
  %i.cf = lshr <16 x i32> %broadcast.splat, %i.ce ; 2 uses
  %i.cg = and <16 x i32> %i.cf, splat (i32 63)
  %i.ch = icmp eq <16 x i32> %i.cg, zeroinitializer
  %i.ci = trunc <16 x i32> %i.cf to <16 x i8>
  %i.cj = and <16 x i8> %i.ci, splat (i8 63)
  %i.ck = add nuw nsw <16 x i8> %i.cj, splat (i8 32)
  %i.cl = select <16 x i1> %i.ch, <16 x i8> splat (i8 96), <16 x i8> %i.ck
  store <16 x i8> %i.cl, ptr %next.gep, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nsw <16 x i32> %vec.ind, splat (i32 -96)
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bz
  br i1 %cmp.n, label %._crit_edge.split.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val52 = phi i32 [ %i.cd, %vec.epilog.iter.check ], [ %i.bv, %vector.main.loop.iter.check ]
  %n.vec54 = and i64 %i.bz, 2147483644            ; 4 uses
  %i.cn = getelementptr i8, ptr %.19.i, i64 %n.vec54 ; 2 uses
  %i.co = trunc nuw nsw i64 %n.vec54 to i32
  %i.cp = mul i32 %i.co, -6
  %i.cq = add i32 %i.bv, %i.cp                    ; 2 uses
  %broadcast.splatinsert55 = insertelement <4 x i32> poison, i32 %.146.i, i64 0
  %broadcast.splat56 = shufflevector <4 x i32> %broadcast.splatinsert55, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert57 = insertelement <4 x i32> poison, i32 %bc.resume.val52, i64 0
  %broadcast.splat58 = shufflevector <4 x i32> %broadcast.splatinsert57, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction59 = add nsw <4 x i32> %broadcast.splat58, <i32 0, i32 -6, i32 -12, i32 -18>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index60 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next63, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind61 = phi <4 x i32> [ %induction59, %vec.epilog.ph ], [ %vec.ind.next64, %vec.epilog.vector.body ] ; 2 uses
  %next.gep62 = getelementptr i8, ptr %.19.i, i64 %index60
  %i.cr = add nsw <4 x i32> %vec.ind61, splat (i32 -6)
  %i.cs = lshr <4 x i32> %broadcast.splat56, %i.cr ; 2 uses
  %i.ct = and <4 x i32> %i.cs, splat (i32 63)
  %i.cu = icmp eq <4 x i32> %i.ct, zeroinitializer
  %i.cv = trunc <4 x i32> %i.cs to <4 x i8>
  %i.cw = and <4 x i8> %i.cv, splat (i8 63)
  %i.cx = add nuw nsw <4 x i8> %i.cw, splat (i8 32)
  %i.cy = select <4 x i1> %i.cu, <4 x i8> splat (i8 96), <4 x i8> %i.cx
  store <4 x i8> %i.cy, ptr %next.gep62, align 1, !tbaa !16
  %index.next63 = add nuw i64 %index60, 4         ; 2 uses
  %vec.ind.next64 = add nsw <4 x i32> %vec.ind61, splat (i32 -24)
  %i.cz = icmp eq i64 %index.next63, %n.vec54
  br i1 %i.cz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !38

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n65 = icmp eq i64 %n.vec54, %i.bz
  br i1 %cmp.n65, label %._crit_edge.split.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.22.i.ph = phi ptr [ %.19.i, %iter.check ], [ %i.ca, %vec.epilog.iter.check ], [ %i.cn, %vec.epilog.middle.block ]
  %.1441.i.ph = phi i32 [ %i.bv, %iter.check ], [ %i.cd, %vec.epilog.iter.check ], [ %i.cq, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.22.i = phi ptr [ %.3.i, %.lr.ph.i ], [ %.22.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.1441.i = phi i32 [ %i.da, %.lr.ph.i ], [ %.1441.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.da = add nsw i32 %.1441.i, -6                ; 3 uses
  %i.db = lshr i32 %.146.i, %i.da                 ; 2 uses
  %i.dc = and i32 %i.db, 63
  %.not.i = icmp eq i32 %i.dc, 0
  %i.dd = trunc i32 %i.db to i8
  %i.de = and i8 %i.dd, 63
  %i.df = add nuw nsw i8 %i.de, 32
  %spec.select.i = select i1 %.not.i, i8 96, i8 %i.df
  %.3.i = getelementptr i8, ptr %.22.i, i64 1     ; 2 uses
  store i8 %spec.select.i, ptr %.22.i, align 1, !tbaa !16
  %i.dg = icmp samesign ugt i32 %.1441.i, 11
  br i1 %i.dg, label %.lr.ph.i, label %._crit_edge.split.i, !llvm.loop !39

._crit_edge.split.i:                              ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.o
  %.144.lcssa.i = phi i32 [ %i.bv, %bb.o ], [ %i.cq, %vec.epilog.middle.block ], [ %i.cd, %middle.block ], [ %i.da, %.lr.ph.i ] ; 2 uses
  %.2.lcssa.i = phi ptr [ %.19.i, %bb.o ], [ %i.cn, %vec.epilog.middle.block ], [ %i.ca, %middle.block ], [ %.3.i, %.lr.ph.i ] ; 2 uses
  %i.dh = add i64 %.0427.i, -1                    ; 2 uses
  %i.di = getelementptr i8, ptr %.0418.i, i64 1
  %i.dj = icmp sgt i64 %i.dh, 0                   ; 2 uses
  %i.dk = icmp ne i32 %.144.lcssa.i, 0
  %i.dl = or i1 %i.dj, %i.dk
  br i1 %i.dl, label %.lr.ph11.split.i, label %._crit_edge12.i, !llvm.loop !35

._crit_edge12.i:                                  ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i, %bb.k
  %.1.lcssa.i = phi ptr [ %.0.i, %bb.k ], [ %.2.lcssa.us.i, %._crit_edge.split.us.us.i ], [ %.2.lcssa.i, %._crit_edge.split.i ] ; 2 uses
  %i.dm = getelementptr i8, ptr %.1.lcssa.i, i64 1
  store i8 10, ptr %.1.lcssa.i, align 1, !tbaa !16
  %i.dn = call ptr @PyBytesWriter_FinishWithPointer(ptr noundef nonnull %i.y, ptr noundef %i.dm) #6
  br label %binascii_b2a_uu_impl.exit

binascii_b2a_uu_impl.exit:                        ; preds = %._crit_edge12.i, %bb.j, %bb.i, %bb.h, %bb.f, %.thread, %bb.d
  %.023 = phi ptr [ null, %.thread ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.h ], [ null, %bb.i ], [ %i.dn, %._crit_edge12.i ], [ null, %bb.j ]
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !25
  %.not31 = icmp eq ptr %i.dp, null
  br i1 %.not31, label %bb.q, label %bb.p

bb.p:                                             ; preds = %binascii_b2a_uu_impl.exit
  call void @PyBuffer_Release(ptr noundef nonnull %4) #6
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %binascii_b2a_uu_impl.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.023
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_a2b_base64(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = alloca [3 x ptr], align 16               ; 3 uses
  %4 = alloca %struct.Py_buffer, align 8          ; 13 uses
  %5 = alloca %struct.Py_buffer, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %.not = icmp eq ptr %3, null                    ; 2 uses
  %.094157.i.sroa.gep = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.e = add i64 %2, -1
  %i.f = add i64 %i.e, %i.d                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  %i.g = icmp eq i64 %2, 1
  %i.h = icmp ne ptr %1, null
  %i.i = and i1 %i.h, %i.g
  %or.cond5 = and i1 %i.i, %.not
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @binascii_a2b_base64._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.b) #6 ; 2 uses
  %.not33 = icmp eq ptr %i.j, null
  br i1 %.not33, label %bb.az, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %i.j, %bb.d ], [ %1, %bb.c ]   ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = call fastcc i32 @ascii_buffer_converter(ptr noundef %i.l, ptr noundef %4)
  %.not34 = icmp eq i32 %i.m, 0
  br i1 %.not34, label %bb.az, label %bb.e

bb.e:                                             ; preds = %.thread
  %.not35 = icmp eq i64 %i.f, 0
  br i1 %.not35, label %.thread42, label %bb.f

.thread42:                                        ; preds = %bb.e
  %i.n = load ptr, ptr %4, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !22
  br label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.k, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15   ; 2 uses
  %.not36 = icmp eq ptr %i.r, null
  br i1 %.not36, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.r) #6 ; 3 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.az, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not37 = icmp eq i64 %i.f, 1
  br i1 %.not37, label %.thread44, label %bb.i

.thread44:                                        ; preds = %bb.h
  %i.u = load ptr, ptr %4, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !22
  br label %bb.l

bb.i:                                             ; preds = %bb.h, %bb.f
  %.0 = phi i32 [ %i.s, %bb.h ], [ -1, %bb.f ]    ; 2 uses
  %i.x = getelementptr i8, ptr %i.k, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15
  %i.z = call i32 @PyObject_GetBuffer(ptr noundef %i.y, ptr noundef nonnull %5, i32 noundef 0) #6
  %.not38 = icmp eq i32 %i.z, 0
  br i1 %.not38, label %bb.j, label %bb.az

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !22 ; 2 uses
  %i.ad = icmp eq i32 %.0, -1
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread42, %bb.j
  %i.ae = phi i64 [ %i.p, %.thread42 ], [ %i.ac, %bb.j ]
  %i.af = phi ptr [ %i.n, %.thread42 ], [ %i.aa, %bb.j ]
  %i.ag = load ptr, ptr %5, align 8, !tbaa !17
  %i.ah = icmp ne ptr %i.ag, null
  %i.ai = zext i1 %i.ah to i32
  br label %bb.l

bb.l:                                             ; preds = %.thread44, %bb.k, %bb.j
  %i.aj = phi i64 [ %i.ae, %bb.k ], [ %i.ac, %bb.j ], [ %i.w, %.thread44 ] ; 2 uses
  %i.ak = phi ptr [ %i.af, %bb.k ], [ %i.aa, %bb.j ], [ %i.u, %.thread44 ]
  %.093.i = phi i32 [ %i.ai, %bb.k ], [ %.0, %bb.j ], [ %i.s, %.thread44 ]
  %i.al = icmp ne i32 %.093.i, 0                  ; 4 uses
  %.not46 = xor i1 %i.al, true
  %i.am = load ptr, ptr %5, align 8
  %i.an = icmp eq ptr %i.am, null
  %or.cond = select i1 %.not46, i1 true, i1 %i.an
  %i.ao = load i64, ptr %.094157.i.sroa.gep, align 8
  %i.ap = icmp eq i64 %i.ao, 0
  %or.cond49 = select i1 %or.cond, i1 true, i1 %i.ap ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  br i1 %or.cond49, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  br label %.thread.i

.thread.i:                                        ; preds = %bb.l, %bb.m
  %.094157.i.sroa.phi = phi ptr [ %.094157.i.sroa.gep, %bb.m ], [ inttoptr (i64 16 to ptr), %bb.l ] ; 3 uses
  %.094157.i = phi ptr [ %5, %bb.m ], [ null, %bb.l ] ; 3 uses
  %i.aq = add i64 %i.aj, 3
  %i.ar = lshr i64 %i.aq, 2
  %i.as = mul nuw i64 %i.ar, 3
  %i.at = call ptr @PyBytesWriter_Create(i64 noundef %i.as) #6 ; 5 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %binascii_a2b_base64_impl.exit, label %bb.n

bb.n:                                             ; preds = %.thread.i
  %i.av = call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.at) #6
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 7 ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %ignorechar.exit.i, %bb.n
  %.0118.i = phi i64 [ %i.aj, %bb.n ], [ %i.fx, %ignorechar.exit.i ] ; 6 uses
  %.0110.i = phi ptr [ %i.av, %bb.n ], [ %i.fv, %ignorechar.exit.i ] ; 3 uses
  %.0105.i = phi ptr [ %i.ak, %bb.n ], [ %i.fw, %ignorechar.exit.i ] ; 3 uses
  %i.ax = icmp ugt i64 %.0118.i, 3
  br i1 %i.ax, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ay = sdiv i64 %.0118.i, 4                    ; 2 uses
  %i.az = icmp sgt i64 %.0118.i, 3
  br i1 %i.az, label %.lr.ph.i.i, label %base64_decode_fast.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.p, %bb.q
  %.03.i.i = phi i64 [ %i.ck, %bb.q ], [ 0, %bb.p ] ; 3 uses
  %i.ba = shl i64 %.03.i.i, 2                     ; 2 uses
  %i.bb = getelementptr i8, ptr %.0105.i, i64 %i.ba ; 4 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !16
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr i8, ptr @table_a2b_base64, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !16  ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bb, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !16
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr i8, ptr @table_a2b_base64, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !16  ; 3 uses
  %i.bl = getelementptr i8, ptr %i.bb, i64 2
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !16
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr i8, ptr @table_a2b_base64, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !16  ; 3 uses
  %i.bq = getelementptr i8, ptr %i.bb, i64 3
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !16
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr i8, ptr @table_a2b_base64, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !16  ; 2 uses
  %i.bv = or i8 %i.bk, %i.bf
  %i.bw = or i8 %i.bv, %i.bp
  %i.bx = or i8 %i.bw, %i.bu
  %.not.i.i.i = icmp ult i8 %i.bx, 64
  br i1 %.not.i.i.i, label %bb.q, label %base64_decode_fast.exit.i

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.by = mul nuw nsw i64 %.03.i.i, 3
  %i.bz = getelementptr i8, ptr %.0110.i, i64 %i.by ; 3 uses
  %i.ca = shl i8 %i.bf, 2
  %i.cb = lshr i8 %i.bk, 4
  %i.cc = or i8 %i.cb, %i.ca
  store i8 %i.cc, ptr %i.bz, align 1, !tbaa !16
  %i.cd = shl i8 %i.bk, 4
  %i.ce = lshr i8 %i.bp, 2
  %i.cf = or i8 %i.ce, %i.cd
  %i.cg = getelementptr i8, ptr %i.bz, i64 1
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !16
  %i.ch = shl i8 %i.bp, 6
  %i.ci = or disjoint i8 %i.bu, %i.ch
  %i.cj = getelementptr i8, ptr %i.bz, i64 2
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !16
  %i.ck = add nuw nsw i64 %.03.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ck, %i.ay
  br i1 %exitcond.not.i.i, label %.base64_decode_quad.exit.thread.loopexit.i_crit_edge.i, label %.lr.ph.i.i, !llvm.loop !40

.base64_decode_quad.exit.thread.loopexit.i_crit_edge.i: ; preds = %bb.q
  %.pre.i = shl nuw nsw i64 %i.ay, 2
  br label %base64_decode_fast.exit.i, !llvm.loop !40

base64_decode_fast.exit.i:                        ; preds = %.lr.ph.i.i, %.base64_decode_quad.exit.thread.loopexit.i_crit_edge.i
  %.0.lcssa.i.i = phi i64 [ %.pre.i, %.base64_decode_quad.exit.thread.loopexit.i_crit_edge.i ], [ %i.ba, %.lr.ph.i.i ]
  %.0.lcssa.i.fr.i = freeze i64 %.0.lcssa.i.i     ; 3 uses
  %i.cl = icmp sgt i64 %.0.lcssa.i.fr.i, 0
  %i.cm = lshr exact i64 %.0.lcssa.i.fr.i, 2
  %i.cn = mul nuw nsw i64 %i.cm, 3
  %i.co = call i64 @llvm.smax.i64(i64 %.0.lcssa.i.fr.i, i64 0) ; 2 uses
  %.1119.i = sub nsw i64 %.0118.i, %i.co
  %spec.select.i = select i1 %i.cl, i64 %i.cn, i64 0
  br label %base64_decode_fast.exit.thread.i

base64_decode_fast.exit.thread.i:                 ; preds = %base64_decode_fast.exit.i, %bb.p
  %.1119356.i = phi i64 [ %.0118.i, %bb.p ], [ %.1119.i, %base64_decode_fast.exit.i ]
  %i.cp = phi i64 [ 0, %bb.p ], [ %i.co, %base64_decode_fast.exit.i ]
  %i.cq = phi i64 [ 0, %bb.p ], [ %spec.select.i, %base64_decode_fast.exit.i ]
  %.1111.i = getelementptr i8, ptr %.0110.i, i64 %i.cq
  %.1106.i = getelementptr i8, ptr %.0105.i, i64 %i.cp
  br label %bb.r

bb.r:                                             ; preds = %base64_decode_fast.exit.thread.i, %bb.o
  %.2120.i = phi i64 [ %.1119356.i, %base64_decode_fast.exit.thread.i ], [ %.0118.i, %bb.o ] ; 4 uses
  %.2112.i = phi ptr [ %.1111.i, %base64_decode_fast.exit.thread.i ], [ %.0110.i, %bb.o ] ; 4 uses
  %.2107.i = phi ptr [ %.1106.i, %base64_decode_fast.exit.thread.i ], [ %.0105.i, %bb.o ] ; 4 uses
  %.not133250.i = icmp eq i64 %.2120.i, 0
  br i1 %.not133250.i, label %ignorechar.exit.thread198.i, label %.lr.ph.jt0.i

.lr.ph.i:                                         ; preds = %bb.av
  %i.cr = load i8, ptr %i.fy, align 1, !tbaa !16  ; 3 uses
  %i.cs = icmp eq i8 %i.cr, 61
  br i1 %i.cs, label %bb.s, label %bb.ac

.lr.ph.jt0.i:                                     ; preds = %bb.r
  %i.ct = load i8, ptr %.2107.i, align 1, !tbaa !16 ; 3 uses
  %i.cu = icmp eq i8 %i.ct, 61
  br i1 %i.cu, label %bb.s, label %bb.ad

.lr.ph.jt2.i:                                     ; preds = %ignorechar.exit154.jt1.i
  %i.cv = load i8, ptr %i.gh, align 1, !tbaa !16  ; 3 uses
  %i.cw = icmp eq i8 %i.cv, 61
  br i1 %i.cw, label %bb.s, label %bb.ae

.lr.ph.jt1.i:                                     ; preds = %ignorechar.exit154.jt0.i
  %i.cx = load i8, ptr %i.gj, align 1, !tbaa !16  ; 3 uses
  %i.cy = icmp eq i8 %i.cx, 61
  br i1 %i.cy, label %bb.s, label %bb.af

.lr.ph.jt3.i:                                     ; preds = %ignorechar.exit154.jt2.i
  %i.cz = load i8, ptr %i.gr, align 1, !tbaa !16  ; 3 uses
  %i.da = icmp eq i8 %i.cz, 61
  br i1 %i.da, label %bb.s, label %bb.ag

bb.s:                                             ; preds = %.lr.ph.jt3.i, %.lr.ph.jt1.i, %.lr.ph.jt2.i, %.lr.ph.jt0.i, %.lr.ph.i
  %.3121251346.i = phi i64 [ %.2120.i, %.lr.ph.jt0.i ], [ %i.gi, %.lr.ph.jt2.i ], [ %i.gk, %.lr.ph.jt1.i ], [ %i.gs, %.lr.ph.jt3.i ], [ %i.fz, %.lr.ph.i ] ; 4 uses
  %.3113252341.i = phi ptr [ %.2112.i, %.lr.ph.jt0.i ], [ %i.gf, %.lr.ph.jt2.i ], [ %.6.ph.jt1.i, %.lr.ph.jt1.i ], [ %i.gp, %.lr.ph.jt3.i ], [ %.6.ph.i, %.lr.ph.i ] ; 6 uses
  %.3108253334.i = phi ptr [ %.2107.i, %.lr.ph.jt0.i ], [ %i.gh, %.lr.ph.jt2.i ], [ %i.gj, %.lr.ph.jt1.i ], [ %i.gr, %.lr.ph.jt3.i ], [ %i.fy, %.lr.ph.i ] ; 5 uses
  %.0101254331.i = phi i32 [ 0, %.lr.ph.jt0.i ], [ 2, %.lr.ph.jt2.i ], [ 1, %.lr.ph.jt1.i ], [ 3, %.lr.ph.jt3.i ], [ %.3104.ph.i, %.lr.ph.i ] ; 8 uses
  %.097255326.i = phi i8 [ 0, %.lr.ph.jt0.i ], [ %i.gg, %.lr.ph.jt2.i ], [ %.3100.ph.jt1.i, %.lr.ph.jt1.i ], [ %i.gq, %.lr.ph.jt3.i ], [ %.3100.ph.i, %.lr.ph.i ] ; 4 uses
  %.095256323.i = phi i32 [ 0, %.lr.ph.jt0.i ], [ 0, %.lr.ph.jt2.i ], [ 0, %.lr.ph.jt1.i ], [ 0, %.lr.ph.jt3.i ], [ %.2.ph.i, %.lr.ph.i ]
  %i.db = add i32 %.095256323.i, 1                ; 5 uses
  %i.dc = icmp sgt i32 %.0101254331.i, 1          ; 2 uses
  %i.dd = add i32 %i.db, %.0101254331.i           ; 2 uses
  br i1 %i.al, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  %i.de = icmp slt i32 %i.dd, 5
  %or.cond144.i = select i1 %i.dc, i1 %i.de, i1 false
  br i1 %or.cond144.i, label %bb.av, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %or.cond49, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.df = load i8, ptr %i.aw, align 1, !tbaa !16  ; 2 uses
  %i.dg = and i8 %i.df, 32
  %.not.i.i = icmp eq i8 %i.dg, 0
  br i1 %.not.i.i, label %bb.w, label %bb.av

bb.w:                                             ; preds = %bb.v
  %i.dh = load ptr, ptr %.094157.i, align 8, !tbaa !17
  %i.di = load i64, ptr %.094157.i.sroa.phi, align 8, !tbaa !22
  %i.dj = call ptr @memchr(ptr noundef %i.dh, i32 noundef 61, i64 noundef %i.di) #7
  %.not11.i.i = icmp eq ptr %i.dj, null
  br i1 %.not11.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dk = or disjoint i8 %i.df, 32
  store i8 %i.dk, ptr %i.aw, align 1, !tbaa !16
  br label %bb.av

bb.y:                                             ; preds = %bb.w, %bb.u
  %i.dl = icmp eq i32 %.0101254331.i, 1
  br i1 %i.dl, label %.thread206.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not139.i = icmp eq ptr %i.dm, null
  br i1 %.not139.i, label %ignorechar.exit.thread182.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !10
  %i.do = icmp eq i32 %.0101254331.i, 0
  %i.dp = load ptr, ptr %4, align 8
  %i.dq = icmp eq ptr %.3108253334.i, %i.dp
  %i.dr = select i1 %i.do, i1 %i.dq, i1 false
  %i.ds = select i1 %i.dr, ptr @.str.29, ptr @.str.30
  call void @PyErr_SetString(ptr noundef %i.dn, ptr noundef nonnull %i.ds) #6
  br label %ignorechar.exit.thread182.i

bb.ab:                                            ; preds = %bb.s
  %i.dt = icmp sgt i32 %i.dd, 3
  %or.cond146.i = select i1 %i.dc, i1 %i.dt, i1 false
  br i1 %or.cond146.i, label %ignorechar.exit.thread198.i, label %bb.av

bb.ac:                                            ; preds = %.lr.ph.i
  %i.du = zext i8 %i.cr to i64
  %i.dv = getelementptr i8, ptr @table_a2b_base64, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !16  ; 5 uses
  %i.dx = icmp ugt i8 %i.dw, 63
  br i1 %i.dx, label %bb.ah, label %bb.ao

bb.ad:                                            ; preds = %.lr.ph.jt0.i
  %i.dy = zext i8 %i.ct to i64
  %i.dz = getelementptr i8, ptr @table_a2b_base64, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !16  ; 2 uses
  %i.eb = icmp ugt i8 %i.ea, 63
  br i1 %i.eb, label %bb.ah, label %ignorechar.exit154.jt0.i

bb.ae:                                            ; preds = %.lr.ph.jt2.i
  %i.ec = zext i8 %i.cv to i64
  %i.ed = getelementptr i8, ptr @table_a2b_base64, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !16  ; 2 uses
  %i.ef = icmp ugt i8 %i.ee, 63
  br i1 %i.ef, label %bb.ah, label %ignorechar.exit154.jt2.i

bb.af:                                            ; preds = %.lr.ph.jt1.i
  %i.eg = zext i8 %i.cx to i64
  %i.eh = getelementptr i8, ptr @table_a2b_base64, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !16  ; 2 uses
  %i.ej = icmp ugt i8 %i.ei, 63
  br i1 %i.ej, label %bb.ah, label %ignorechar.exit154.jt1.i

bb.ag:                                            ; preds = %.lr.ph.jt3.i
  %i.ek = zext i8 %i.cz to i64
  %i.el = getelementptr i8, ptr @table_a2b_base64, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !16  ; 2 uses
  %i.en = icmp ugt i8 %i.em, 63
  br i1 %i.en, label %bb.ah, label %ignorechar.exit.i

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac
  %i.eo = phi i8 [ %i.ct, %bb.ad ], [ %i.cv, %bb.ae ], [ %i.cx, %bb.af ], [ %i.cz, %bb.ag ], [ %i.cr, %bb.ac ]
  %.3121251347.i = phi i64 [ %.2120.i, %bb.ad ], [ %i.gi, %bb.ae ], [ %i.gk, %bb.af ], [ %i.gs, %bb.ag ], [ %i.fz, %bb.ac ] ; 3 uses
  %.3113252342.i = phi ptr [ %.2112.i, %bb.ad ], [ %i.gf, %bb.ae ], [ %.6.ph.jt1.i, %bb.af ], [ %i.gp, %bb.ag ], [ %.6.ph.i, %bb.ac ] ; 3 uses
  %.3108253335.i = phi ptr [ %.2107.i, %bb.ad ], [ %i.gh, %bb.ae ], [ %i.gj, %bb.af ], [ %i.gr, %bb.ag ], [ %i.fy, %bb.ac ] ; 3 uses
  %.0101254332.i = phi i32 [ 0, %bb.ad ], [ 2, %bb.ae ], [ 1, %bb.af ], [ 3, %bb.ag ], [ %.3104.ph.i, %bb.ac ] ; 3 uses
  %.097255327.i = phi i8 [ 0, %bb.ad ], [ %i.gg, %bb.ae ], [ %.3100.ph.jt1.i, %bb.af ], [ %i.gq, %bb.ag ], [ %.3100.ph.i, %bb.ac ] ; 3 uses
  %.095256324.i = phi i32 [ 0, %bb.ad ], [ 0, %bb.ae ], [ 0, %bb.af ], [ 0, %bb.ag ], [ %.2.ph.i, %bb.ac ] ; 3 uses
  br i1 %i.al, label %bb.ai, label %bb.av

bb.ai:                                            ; preds = %bb.ah
  br i1 %or.cond49, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ep = zext i8 %i.eo to i32                    ; 3 uses
  %i.eq = lshr i32 %i.ep, 3
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr i8, ptr %i.a, i64 %i.er   ; 2 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !16  ; 2 uses
  %i.eu = zext i8 %i.et to i32
  %i.ev = and i32 %i.ep, 7
  %i.ew = shl nuw nsw i32 1, %i.ev                ; 2 uses
  %i.ex = and i32 %i.ew, %i.eu
  %.not.i147.i = icmp eq i32 %i.ex, 0
  br i1 %.not.i147.i, label %bb.ak, label %bb.av

bb.ak:                                            ; preds = %bb.aj
  %i.ey = load ptr, ptr %.094157.i, align 8, !tbaa !17
  %i.ez = load i64, ptr %.094157.i.sroa.phi, align 8, !tbaa !22
  %i.fa = call ptr @memchr(ptr noundef %i.ey, i32 noundef %i.ep, i64 noundef %i.ez) #7
  %.not11.i149.i = icmp eq ptr %i.fa, null
  br i1 %.not11.i149.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fb = trunc nuw i32 %i.ew to i8
  %i.fc = or i8 %i.et, %i.fb
  store i8 %i.fc, ptr %i.es, align 1, !tbaa !16
  br label %bb.av

bb.am:                                            ; preds = %bb.ak, %bb.ai
  %i.fd = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not137.i = icmp eq ptr %i.fd, null
  br i1 %.not137.i, label %ignorechar.exit.thread182.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !10
  call void @PyErr_SetString(ptr noundef %i.fe, ptr noundef nonnull @.str.31) #6
  br label %ignorechar.exit.thread182.i

bb.ao:                                            ; preds = %bb.ac
  %i.ff = icmp ne i32 %.2.ph.i, 0
  %or.cond.i = and i1 %i.al, %i.ff
  br i1 %or.cond.i, label %bb.ap, label %ignorechar.exit154.i

bb.ap:                                            ; preds = %bb.ao
  br i1 %or.cond49, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fg = load i8, ptr %i.aw, align 1, !tbaa !16  ; 2 uses
  %i.fh = and i8 %i.fg, 32
  %.not.i151.i = icmp eq i8 %i.fh, 0
  br i1 %.not.i151.i, label %bb.ar, label %ignorechar.exit154.i

bb.ar:                                            ; preds = %bb.aq
  %i.fi = load ptr, ptr %.094157.i, align 8, !tbaa !17
  %i.fj = load i64, ptr %.094157.i.sroa.phi, align 8, !tbaa !22
  %i.fk = call ptr @memchr(ptr noundef %i.fi, i32 noundef 61, i64 noundef %i.fj) #7
  %.not11.i153.i = icmp eq ptr %i.fk, null
  br i1 %.not11.i153.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fl = or disjoint i8 %i.fg, 32
  store i8 %i.fl, ptr %i.aw, align 1, !tbaa !16
  br label %ignorechar.exit154.i

bb.at:                                            ; preds = %bb.ar, %bb.ap
  %i.fm = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not135.i = icmp eq ptr %i.fm, null
  br i1 %.not135.i, label %ignorechar.exit.thread182.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !10
  %i.fo = add i32 %.2.ph.i, %.3104.ph.i
  %i.fp = icmp eq i32 %i.fo, 4
  %i.fq = select i1 %i.fp, ptr @.str.32, ptr @.str.33
  call void @PyErr_SetString(ptr noundef %i.fn, ptr noundef nonnull %i.fq) #6
  br label %ignorechar.exit.thread182.i

ignorechar.exit154.i:                             ; preds = %bb.as, %bb.aq, %bb.ao
  switch i32 %.3104.ph.i, label %default.unreachable [
    i32 0, label %ignorechar.exit154.jt0.i
    i32 1, label %ignorechar.exit154.jt1.i
    i32 2, label %ignorechar.exit154.jt2.i
    i32 3, label %ignorechar.exit.i
  ]

default.unreachable:                              ; preds = %ignorechar.exit154.i
  unreachable

ignorechar.exit.i:                                ; preds = %ignorechar.exit154.i, %bb.ag
  %i.fr = phi i8 [ %i.dw, %ignorechar.exit154.i ], [ %i.em, %bb.ag ]
  %.3121251348.i = phi i64 [ %i.fz, %ignorechar.exit154.i ], [ %i.gs, %bb.ag ]
  %.3113252343.i = phi ptr [ %.6.ph.i, %ignorechar.exit154.i ], [ %i.gp, %bb.ag ] ; 2 uses
  %i.fs = phi ptr [ %.3108253340.i, %ignorechar.exit154.i ], [ %.3108253337.i, %bb.ag ]
  %.097255328.i = phi i8 [ %.3100.ph.i, %ignorechar.exit154.i ], [ %i.gq, %bb.ag ]
  %i.ft = shl i8 %.097255328.i, 6
  %i.fu = or disjoint i8 %i.ft, %i.fr
  %i.fv = getelementptr i8, ptr %.3113252343.i, i64 1
  store i8 %i.fu, ptr %.3113252343.i, align 1, !tbaa !16
  %i.fw = getelementptr i8, ptr %i.fs, i64 2
  %i.fx = add i64 %.3121251348.i, -1
  br label %bb.o

bb.av:                                            ; preds = %bb.al, %bb.aj, %bb.ah, %bb.ab, %bb.x, %bb.v, %bb.t
  %.3121251352.i = phi i64 [ %.3121251346.i, %bb.ab ], [ %.3121251346.i, %bb.t ], [ %.3121251347.i, %bb.ah ], [ %.3121251346.i, %bb.x ], [ %.3121251346.i, %bb.v ], [ %.3121251347.i, %bb.aj ], [ %.3121251347.i, %bb.al ]
  %.3108253340.i = phi ptr [ %.3108253334.i, %bb.ab ], [ %.3108253334.i, %bb.t ], [ %.3108253335.i, %bb.ah ], [ %.3108253334.i, %bb.x ], [ %.3108253334.i, %bb.v ], [ %.3108253335.i, %bb.aj ], [ %.3108253335.i, %bb.al ] ; 3 uses
  %.6.ph.i = phi ptr [ %.3113252341.i, %bb.ab ], [ %.3113252341.i, %bb.t ], [ %.3113252342.i, %bb.ah ], [ %.3113252341.i, %bb.x ], [ %.3113252341.i, %bb.v ], [ %.3113252342.i, %bb.aj ], [ %.3113252342.i, %bb.al ] ; 9 uses
  %.3104.ph.i = phi i32 [ %.0101254331.i, %bb.ab ], [ %.0101254331.i, %bb.t ], [ %.0101254332.i, %bb.ah ], [ %.0101254331.i, %bb.x ], [ %.0101254331.i, %bb.v ], [ %.0101254332.i, %bb.aj ], [ %.0101254332.i, %bb.al ] ; 6 uses
  %.3100.ph.i = phi i8 [ %.097255326.i, %bb.ab ], [ %.097255326.i, %bb.t ], [ %.097255327.i, %bb.ah ], [ %.097255326.i, %bb.x ], [ %.097255326.i, %bb.v ], [ %.097255327.i, %bb.aj ], [ %.097255327.i, %bb.al ] ; 5 uses
  %.2.ph.i = phi i32 [ %i.db, %bb.ab ], [ %i.db, %bb.t ], [ %.095256324.i, %bb.ah ], [ %i.db, %bb.x ], [ %i.db, %bb.v ], [ %.095256324.i, %bb.aj ], [ %.095256324.i, %bb.al ] ; 5 uses
  %i.fy = getelementptr i8, ptr %.3108253340.i, i64 1 ; 5 uses
  %i.fz = add i64 %.3121251352.i, -1              ; 7 uses
  %.not133.i = icmp eq i64 %i.fz, 0
  br i1 %.not133.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !41

ignorechar.exit154.jt1.i:                         ; preds = %ignorechar.exit154.i, %bb.af
  %i.ga = phi i8 [ %i.dw, %ignorechar.exit154.i ], [ %i.ei, %bb.af ] ; 2 uses
  %.3121251350.i = phi i64 [ %i.fz, %ignorechar.exit154.i ], [ %i.gk, %bb.af ]
  %.3113252345.i = phi ptr [ %.6.ph.i, %ignorechar.exit154.i ], [ %.6.ph.jt1.i, %bb.af ] ; 2 uses
  %i.gb = phi ptr [ %.3108253340.i, %ignorechar.exit154.i ], [ %.3108253339.i, %bb.af ]
  %.097255330.i = phi i8 [ %.3100.ph.i, %ignorechar.exit154.i ], [ %.3100.ph.jt1.i, %bb.af ]
  %i.gc = shl nuw i8 %.097255330.i, 2
  %i.gd = lshr i8 %i.ga, 4
  %i.ge = or disjoint i8 %i.gc, %i.gd
  %i.gf = getelementptr i8, ptr %.3113252345.i, i64 1 ; 4 uses
  store i8 %i.ge, ptr %.3113252345.i, align 1, !tbaa !16
  %i.gg = and i8 %i.ga, 15                        ; 3 uses
  %i.gh = getelementptr i8, ptr %i.gb, i64 2      ; 4 uses
  %i.gi = add i64 %.3121251350.i, -1              ; 4 uses
  %.not133.jt2.i = icmp eq i64 %i.gi, 0
  br i1 %.not133.jt2.i, label %._crit_edge.thread.i, label %.lr.ph.jt2.i, !llvm.loop !41

ignorechar.exit154.jt0.i:                         ; preds = %ignorechar.exit154.i, %bb.ad
  %.3121251351.i = phi i64 [ %i.fz, %ignorechar.exit154.i ], [ %.2120.i, %bb.ad ]
  %.3108253339.i = phi ptr [ %i.fy, %ignorechar.exit154.i ], [ %.2107.i, %bb.ad ] ; 2 uses
  %.6.ph.jt1.i = phi ptr [ %.6.ph.i, %ignorechar.exit154.i ], [ %.2112.i, %bb.ad ] ; 4 uses
  %.3100.ph.jt1.i = phi i8 [ %i.dw, %ignorechar.exit154.i ], [ %i.ea, %bb.ad ] ; 3 uses
  %i.gj = getelementptr i8, ptr %.3108253339.i, i64 1 ; 3 uses
  %i.gk = add i64 %.3121251351.i, -1              ; 4 uses
  %.not133.jt1.i = icmp eq i64 %i.gk, 0
  br i1 %.not133.jt1.i, label %.thread206.i, label %.lr.ph.jt1.i, !llvm.loop !41

ignorechar.exit154.jt2.i:                         ; preds = %ignorechar.exit154.i, %bb.ae
  %i.gl = phi i8 [ %i.dw, %ignorechar.exit154.i ], [ %i.ee, %bb.ae ] ; 2 uses
  %.3121251349.i = phi i64 [ %i.fz, %ignorechar.exit154.i ], [ %i.gi, %bb.ae ]
  %.3113252344.i = phi ptr [ %.6.ph.i, %ignorechar.exit154.i ], [ %i.gf, %bb.ae ] ; 2 uses
  %.3108253337.i = phi ptr [ %i.fy, %ignorechar.exit154.i ], [ %i.gh, %bb.ae ] ; 2 uses
  %.097255329.i = phi i8 [ %.3100.ph.i, %ignorechar.exit154.i ], [ %i.gg, %bb.ae ]
  %i.gm = shl i8 %.097255329.i, 4
  %i.gn = lshr i8 %i.gl, 2
  %i.go = or disjoint i8 %i.gm, %i.gn
  %i.gp = getelementptr i8, ptr %.3113252344.i, i64 1 ; 4 uses
  store i8 %i.go, ptr %.3113252344.i, align 1, !tbaa !16
  %i.gq = and i8 %i.gl, 3                         ; 3 uses
  %i.gr = getelementptr i8, ptr %.3108253337.i, i64 1 ; 3 uses
  %i.gs = add i64 %.3121251349.i, -1              ; 4 uses
  %.not133.jt3.i = icmp eq i64 %i.gs, 0
  br i1 %.not133.jt3.i, label %._crit_edge.thread.i, label %.lr.ph.jt3.i, !llvm.loop !41

._crit_edge.i:                                    ; preds = %bb.av
  switch i32 %.3104.ph.i, label %._crit_edge.thread.i [
    i32 1, label %.thread206.i
    i32 0, label %ignorechar.exit.thread198.i
  ]

.thread206.i:                                     ; preds = %ignorechar.exit154.jt0.i, %._crit_edge.i, %bb.y
  %.3113243.i = phi ptr [ %.3113252341.i, %bb.y ], [ %.6.ph.i, %._crit_edge.i ], [ %.6.ph.jt1.i, %ignorechar.exit154.jt0.i ]
  %i.gt = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not142.i = icmp eq ptr %i.gt, null
  br i1 %.not142.i, label %ignorechar.exit.thread182.i, label %bb.aw

bb.aw:                                            ; preds = %.thread206.i
  %i.gu = call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.at) #6
  %i.gv = load ptr, ptr %i.gt, align 8, !tbaa !10
  %i.gw = ptrtoint ptr %.3113243.i to i64
  %i.gx = ptrtoint ptr %i.gu to i64
  %i.gy = sub i64 %i.gw, %i.gx
  %i.gz = sdiv i64 %i.gy, 3
  %i.ha = shl i64 %i.gz, 2
  %i.hb = or disjoint i64 %i.ha, 1
  %i.hc = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.gv, ptr noundef nonnull @.str.34, i64 noundef %i.hb) #6 ; 0 uses
  br label %ignorechar.exit.thread182.i

._crit_edge.thread.i:                             ; preds = %ignorechar.exit154.jt2.i, %ignorechar.exit154.jt1.i, %._crit_edge.i
  %.095.lcssa362.i = phi i32 [ %.2.ph.i, %._crit_edge.i ], [ 0, %ignorechar.exit154.jt1.i ], [ 0, %ignorechar.exit154.jt2.i ]
  %.0101.lcssa361.i = phi i32 [ %.3104.ph.i, %._crit_edge.i ], [ 3, %ignorechar.exit154.jt2.i ], [ 2, %ignorechar.exit154.jt1.i ]
  %.3113.lcssa360.i = phi ptr [ %.6.ph.i, %._crit_edge.i ], [ %i.gp, %ignorechar.exit154.jt2.i ], [ %i.gf, %ignorechar.exit154.jt1.i ]
  %i.hd = add i32 %.0101.lcssa361.i, %.095.lcssa362.i
  %i.he = icmp slt i32 %i.hd, 4
  br i1 %i.he, label %bb.ax, label %ignorechar.exit.thread198.i

bb.ax:                                            ; preds = %._crit_edge.thread.i
  %i.hf = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not141.i = icmp eq ptr %i.hf, null
  br i1 %.not141.i, label %ignorechar.exit.thread182.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !10
  call void @PyErr_SetString(ptr noundef %i.hg, ptr noundef nonnull @.str.35) #6
  br label %ignorechar.exit.thread182.i

ignorechar.exit.thread198.i:                      ; preds = %bb.ab, %bb.r, %._crit_edge.thread.i, %._crit_edge.i
  %.3113242.i = phi ptr [ %.3113.lcssa360.i, %._crit_edge.thread.i ], [ %.6.ph.i, %._crit_edge.i ], [ %.3113252341.i, %bb.ab ], [ %.2112.i, %bb.r ]
  %i.hh = call ptr @PyBytesWriter_FinishWithPointer(ptr noundef nonnull %i.at, ptr noundef %.3113242.i) #6
  br label %binascii_a2b_base64_impl.exit

ignorechar.exit.thread182.i:                      ; preds = %bb.ay, %bb.ax, %bb.aw, %.thread206.i, %bb.au, %bb.at, %bb.an, %bb.am, %bb.aa, %bb.z
  call void @PyBytesWriter_Discard(ptr noundef nonnull %i.at) #6
  br label %binascii_a2b_base64_impl.exit

binascii_a2b_base64_impl.exit:                    ; preds = %.thread.i, %ignorechar.exit.thread198.i, %ignorechar.exit.thread182.i
  %.1.i = phi ptr [ null, %.thread.i ], [ %i.hh, %ignorechar.exit.thread198.i ], [ null, %ignorechar.exit.thread182.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.az

bb.az:                                            ; preds = %bb.i, %bb.g, %.thread, %bb.d, %binascii_a2b_base64_impl.exit
  %.026 = phi ptr [ null, %bb.g ], [ null, %bb.i ], [ %.1.i, %binascii_a2b_base64_impl.exit ], [ null, %.thread ], [ null, %bb.d ]
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !25
  %.not39 = icmp eq ptr %i.hj, null
  br i1 %.not39, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @PyBuffer_Release(ptr noundef nonnull %4) #6
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.hk = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !25
  %.not40 = icmp eq ptr %i.hl, null
  br i1 %.not40, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @PyBuffer_Release(ptr noundef nonnull %5) #6
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  ret ptr %.026
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_b2a_base64(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 3 uses
  %4 = alloca %struct.Py_buffer, align 8          ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.e = add i64 %2, -1
  %i.f = add i64 %i.e, %i.d                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i64 0, ptr %i.b, align 8, !tbaa !42
  %i.g = icmp eq i64 %2, 1
  %i.h = icmp ne ptr %1, null
  %i.i = and i1 %i.h, %i.g
  %or.cond5 = and i1 %i.i, %.not
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @binascii_b2a_base64._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #6 ; 2 uses
  %.not33 = icmp eq ptr %i.j, null
  br i1 %.not33, label %binascii_b2a_base64_impl.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %i.j, %bb.d ], [ %1, %bb.c ]   ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = call i32 @PyObject_GetBuffer(ptr noundef %i.l, ptr noundef nonnull %4, i32 noundef 0) #6
  %.not34 = icmp eq i32 %i.m, 0
  br i1 %.not34, label %bb.e, label %binascii_b2a_base64_impl.exit

bb.e:                                             ; preds = %.thread
  %.not35 = icmp eq i64 %i.f, 0
  br i1 %.not35, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15   ; 2 uses
  %.not36 = icmp eq ptr %i.o, null
  br i1 %.not36, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = call i32 @_PyLong_Size_t_Converter(ptr noundef nonnull %i.o, ptr noundef nonnull %i.b) #6
  %.not37 = icmp eq i32 %i.p, 0
  br i1 %.not37, label %binascii_b2a_base64_impl.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not38 = icmp eq i64 %i.f, 1
  br i1 %.not38, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.q = getelementptr i8, ptr %i.k, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15
  %i.s = call i32 @PyObject_IsTrue(ptr noundef %i.r) #6 ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %binascii_b2a_base64_impl.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.e
  %.0 = phi i32 [ %i.s, %bb.i ], [ 1, %bb.h ], [ 1, %bb.e ]
  %i.u = load i64, ptr %i.b, align 8, !tbaa !42   ; 3 uses
  %.val40 = load ptr, ptr %4, align 8, !tbaa !17  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val41 = load i64, ptr %i.v, align 8, !tbaa !22 ; 4 uses
  %i.w = add i64 %.val41, 2
  %i.x = udiv i64 %i.w, 3
  %i.y = shl i64 %i.x, 2                          ; 4 uses
  %i.z = icmp ne i64 %i.u, 0
  %i.aa = icmp ne i64 %i.y, 0
  %or.cond.i = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = call i64 @llvm.umax.i64(i64 %i.u, i64 4)
  %i.ac = and i64 %i.ab, -4                       ; 2 uses
  %i.ad = add i64 %i.y, -1
  %i.ae = udiv i64 %i.ad, %i.ac
  %i.af = add i64 %i.ae, %i.y
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.062.i = phi i64 [ %i.af, %bb.k ], [ %i.y, %bb.j ]
  %.058.i = phi i64 [ %i.ac, %bb.k ], [ %i.u, %bb.j ] ; 7 uses
  %.not.i = icmp ne i32 %.0, 0                    ; 2 uses
  %i.ag = zext i1 %.not.i to i64
  %spec.select.i = add i64 %.062.i, %i.ag         ; 2 uses
  %i.ah = icmp slt i64 %spec.select.i, 0
  br i1 %i.ah, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ai = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %binascii_b2a_base64_impl.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !10
  call void @PyErr_SetString(ptr noundef %i.ak, ptr noundef nonnull @.str.38) #6
  br label %binascii_b2a_base64_impl.exit

bb.o:                                             ; preds = %bb.l
  %i.al = call ptr @PyBytesWriter_Create(i64 noundef %spec.select.i) #6 ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %binascii_b2a_base64_impl.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.al) #6 ; 2 uses
  %i.ao = srem i64 %.val41, 3                     ; 2 uses
  %i.ap = sdiv i64 %.val41, 3
  %i.aq = sub nsw i64 %.val41, %i.ao
  %i.ar = getelementptr i8, ptr %.val40, i64 %i.aq ; 5 uses
  %i.as = icmp ult ptr %.val40, %i.ar
  br i1 %i.as, label %.lr.ph.i.i, label %base64_encode_fast.exit.i

.lr.ph.i.i:                                       ; preds = %bb.p, %.lr.ph.i.i
  %.02.i.i = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %.val40, %bb.p ] ; 4 uses
  %.0101.i.i = phi ptr [ %i.cb, %.lr.ph.i.i ], [ %i.an, %bb.p ] ; 5 uses
  %i.at = load i8, ptr %.02.i.i, align 1, !tbaa !16
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %i.av = shl nuw nsw i32 %i.au, 16
  %i.aw = getelementptr i8, ptr %.02.i.i, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !16
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, 8                ; 2 uses
  %i.ba = getelementptr i8, ptr %.02.i.i, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !16
  %i.bc = zext i8 %i.bb to i32                    ; 2 uses
  %i.bd = or disjoint i32 %i.az, %i.bc
  %i.be = or disjoint i32 %i.az, %i.av
  %i.bf = lshr i32 %i.au, 2
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr i8, ptr @table_b2a_base64, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !16
  store i8 %i.bi, ptr %.0101.i.i, align 1, !tbaa !16
  %i.bj = lshr i32 %i.be, 12
  %i.bk = and i32 %i.bj, 63
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr i8, ptr @table_b2a_base64, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !16
  %i.bo = getelementptr i8, ptr %.0101.i.i, i64 1
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !16
  %i.bp = lshr i32 %i.bd, 6
  %i.bq = and i32 %i.bp, 63
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr i8, ptr @table_b2a_base64, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !16
  %i.bu = getelementptr i8, ptr %.0101.i.i, i64 2
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !16
  %i.bv = and i32 %i.bc, 63
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr i8, ptr @table_b2a_base64, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !16
  %i.bz = getelementptr i8, ptr %.0101.i.i, i64 3
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !16
  %i.ca = getelementptr i8, ptr %.02.i.i, i64 3   ; 2 uses
  %i.cb = getelementptr i8, ptr %.0101.i.i, i64 4
  %i.cc = icmp ult ptr %i.ca, %i.ar
  br i1 %i.cc, label %.lr.ph.i.i, label %base64_encode_fast.exit.i, !llvm.loop !43

base64_encode_fast.exit.i:                        ; preds = %.lr.ph.i.i, %bb.p
  %i.cd = shl i64 %i.ap, 2
  %i.ce = getelementptr i8, ptr %i.an, i64 %i.cd  ; 11 uses
  switch i64 %i.ao, label %bb.s [
    i64 1, label %bb.q
    i64 2, label %bb.r
  ]

bb.q:                                             ; preds = %base64_encode_fast.exit.i
  %i.cf = load i8, ptr %i.ar, align 1, !tbaa !16
  %i.cg = zext i8 %i.cf to i32                    ; 2 uses
  %i.ch = lshr i32 %i.cg, 2
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr i8, ptr @table_b2a_base64, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !16
  %i.cl = getelementptr i8, ptr %i.ce, i64 1
  store i8 %i.ck, ptr %i.ce, align 1, !tbaa !16
  %i.cm = shl nuw nsw i32 %i.cg, 4
  %i.cn = and i32 %i.cm, 48
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr i8, ptr @table_b2a_base64, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 16, !tbaa !16
  %i.cr = getelementptr i8, ptr %i.ce, i64 2
  store i8 %i.cq, ptr %i.cl, align 1, !tbaa !16
  %i.cs = getelementptr i8, ptr %i.ce, i64 3
  store i8 61, ptr %i.cr, align 1, !tbaa !16
  %i.ct = getelementptr i8, ptr %i.ce, i64 4
  store i8 61, ptr %i.cs, align 1, !tbaa !16
  br label %bb.s

bb.r:                                             ; preds = %base64_encode_fast.exit.i
  %i.cu = load i8, ptr %i.ar, align 1, !tbaa !16
  %i.cv = zext i8 %i.cu to i32                    ; 2 uses
  %i.cw = shl nuw nsw i32 %i.cv, 8
  %i.cx = getelementptr i8, ptr %i.ar, i64 1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !16
  %i.cz = zext i8 %i.cy to i32                    ; 2 uses
  %i.da = or disjoint i32 %i.cw, %i.cz
  %i.db = lshr i32 %i.cv, 2
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr i8, ptr @table_b2a_base64, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !16
  %i.df = getelementptr i8, ptr %i.ce, i64 1
  store i8 %i.de, ptr %i.ce, align 1, !tbaa !16
  %i.dg = lshr i32 %i.da, 4
  %i.dh = and i32 %i.dg, 63
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr i8, ptr @table_b2a_base64, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !16
  %i.dl = getelementptr i8, ptr %i.ce, i64 2
  store i8 %i.dk, ptr %i.df, align 1, !tbaa !16
  %i.dm = shl nuw nsw i32 %i.cz, 2
  %i.dn = and i32 %i.dm, 60
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr i8, ptr @table_b2a_base64, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 4, !tbaa !16
  %i.dr = getelementptr i8, ptr %i.ce, i64 3
  store i8 %i.dq, ptr %i.dl, align 1, !tbaa !16
  %i.ds = getelementptr i8, ptr %i.ce, i64 4
  store i8 61, ptr %i.dr, align 1, !tbaa !16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %base64_encode_fast.exit.i
  %.059.i = phi ptr [ %i.ct, %bb.q ], [ %i.ds, %bb.r ], [ %i.ce, %base64_encode_fast.exit.i ] ; 2 uses
  %.not68.i = icmp eq i64 %.058.i, 0
  br i1 %.not68.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dt = call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.al) #6 ; 5 uses
  %i.du = ptrtoint ptr %.059.i to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv                    ; 5 uses
  %.not.i.i = icmp ugt i64 %i.dw, %.058.i
  br i1 %.not.i.i, label %bb.u, label %wraplines.exit.i

bb.u:                                             ; preds = %bb.t
  %i.dx = add i64 %i.dw, -1
  %i.dy = udiv i64 %i.dx, %.058.i                 ; 2 uses
  %i.dz = mul i64 %i.dy, %.058.i                  ; 4 uses
  %i.ea = add i64 %i.dy, %i.dw                    ; 4 uses
  %.not3132.i.i = icmp eq i64 %i.dz, 0
  br i1 %.not3132.i.i, label %wraplines.exit.i, label %.lr.ph.i69.i

.lr.ph.i69.i:                                     ; preds = %bb.u
  %i.eb = sub i64 %i.dw, %i.dz                    ; 2 uses
  %i.ec = sub i64 0, %i.eb
  %i.ed = getelementptr i8, ptr %i.dt, i64 %i.dz  ; 2 uses
  %i.ee = getelementptr i8, ptr %i.dt, i64 %i.ea
  %i.ef = sub i64 0, %.058.i                      ; 3 uses
  %i.eg = getelementptr i8, ptr %i.ee, i64 %i.ec  ; 3 uses
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.eg, ptr align 1 %i.ed, i64 %i.eb, i1 false)
  %i.eh = getelementptr i8, ptr %i.eg, i64 -1
  store i8 10, ptr %i.eh, align 1, !tbaa !16
  %.not31.peel.i.i = icmp eq i64 %i.dz, %.058.i
  br i1 %.not31.peel.i.i, label %wraplines.exit.i, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %.lr.ph.i69.i
  %i.ei = getelementptr i8, ptr %i.ed, i64 %i.ef
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.peel.next.i.i
  %i.ej = phi ptr [ %i.ei, %.peel.next.i.i ], [ %i.eo, %bb.v ] ; 2 uses
  %i.ek = phi ptr [ %i.eg, %.peel.next.i.i ], [ %i.em, %bb.v ]
  %i.el = getelementptr i8, ptr %i.ek, i64 -1
  %i.em = getelementptr i8, ptr %i.el, i64 %i.ef  ; 3 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.em, ptr noundef nonnull align 1 dereferenceable(1) %i.ej, i64 range(i64 1, 0) %.058.i, i1 false)
  %i.en = getelementptr i8, ptr %i.em, i64 -1
  store i8 10, ptr %i.en, align 1, !tbaa !16
  %i.eo = getelementptr i8, ptr %i.ej, i64 %i.ef  ; 2 uses
  %.not31.i.i = icmp eq ptr %i.eo, %i.dt
  br i1 %.not31.i.i, label %wraplines.exit.i, label %bb.v, !llvm.loop !44

wraplines.exit.i:                                 ; preds = %bb.v, %.lr.ph.i69.i, %bb.u, %bb.t
  %.026.i.i = phi i64 [ %i.dw, %bb.t ], [ %i.ea, %bb.u ], [ %i.ea, %.lr.ph.i69.i ], [ %i.ea, %bb.v ]
  %i.ep = getelementptr i8, ptr %i.dt, i64 %.026.i.i
  br label %bb.w

bb.w:                                             ; preds = %wraplines.exit.i, %bb.s
  %.160.i = phi ptr [ %i.ep, %wraplines.exit.i ], [ %.059.i, %bb.s ] ; 3 uses
  br i1 %.not.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eq = getelementptr i8, ptr %.160.i, i64 1
  store i8 10, ptr %.160.i, align 1, !tbaa !16
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.261.i = phi ptr [ %i.eq, %bb.x ], [ %.160.i, %bb.w ]
  %i.er = call ptr @PyBytesWriter_FinishWithPointer(ptr noundef nonnull %i.al, ptr noundef %.261.i) #6
  br label %binascii_b2a_base64_impl.exit

binascii_b2a_base64_impl.exit:                    ; preds = %bb.y, %bb.o, %bb.n, %bb.m, %bb.i, %bb.g, %.thread, %bb.d
  %.026 = phi ptr [ null, %.thread ], [ null, %bb.i ], [ null, %bb.d ], [ null, %bb.g ], [ null, %bb.n ], [ null, %bb.m ], [ %i.er, %bb.y ], [ null, %bb.o ]
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !25
  %.not39 = icmp eq ptr %i.et, null
  br i1 %.not39, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %binascii_b2a_base64_impl.exit
  call void @PyBuffer_Release(ptr noundef nonnull %4) #6
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %binascii_b2a_base64_impl.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.026
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_b2a_ascii85(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [5 x ptr], align 16               ; 3 uses
  %4 = alloca %struct.Py_buffer, align 8          ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.e = add i64 %i.d, %2                         ; 2 uses
  %i.f = add i64 %i.e, -1                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i64 0, ptr %i.b, align 8, !tbaa !42
  %i.g = icmp eq i64 %2, 1
  %i.h = icmp ne ptr %1, null
  %i.i = and i1 %i.h, %i.g
  %or.cond5 = and i1 %i.i, %.not
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @binascii_b2a_ascii85._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #6 ; 2 uses
  %.not54 = icmp eq ptr %i.j, null
  br i1 %.not54, label %binascii_b2a_ascii85_impl.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %i.j, %bb.d ], [ %1, %bb.c ]   ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = call i32 @PyObject_GetBuffer(ptr noundef %i.l, ptr noundef nonnull %4, i32 noundef 0) #6
  %.not55 = icmp eq i32 %i.m, 0
  br i1 %.not55, label %bb.e, label %binascii_b2a_ascii85_impl.exit

bb.e:                                             ; preds = %.thread
  %.not56 = icmp eq i64 %i.f, 0
  br i1 %.not56, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15   ; 2 uses
  %.not57 = icmp eq ptr %i.o, null
  br i1 %.not57, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.o) #6 ; 3 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %binascii_b2a_ascii85_impl.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = add i64 %i.e, -2                         ; 2 uses
  %.not58 = icmp eq i64 %i.r, 0
  br i1 %.not58, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.039 = phi i64 [ %i.r, %bb.h ], [ %i.f, %bb.f ] ; 2 uses
  %.037 = phi i32 [ %i.p, %bb.h ], [ 0, %bb.f ]   ; 3 uses
  %i.s = getelementptr i8, ptr %i.k, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15   ; 2 uses
  %.not59 = icmp eq ptr %i.t, null
  br i1 %.not59, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = call i32 @_PyLong_Size_t_Converter(ptr noundef nonnull %i.t, ptr noundef nonnull %i.b) #6
  %.not60 = icmp eq i32 %i.u, 0
  br i1 %.not60, label %binascii_b2a_ascii85_impl.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = add i64 %.039, -1                        ; 2 uses
  %.not61 = icmp eq i64 %i.v, 0
  br i1 %.not61, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.140 = phi i64 [ %i.v, %bb.k ], [ %.039, %bb.i ]
  %i.w = getelementptr i8, ptr %i.k, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !15   ; 2 uses
  %.not62 = icmp eq ptr %i.x, null
  br i1 %.not62, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.x) #6 ; 3 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %binascii_b2a_ascii85_impl.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = icmp ugt i64 %.140, 1
  br i1 %i.aa, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.l
  %.036 = phi i32 [ %i.y, %bb.n ], [ 0, %bb.l ]
  %i.ab = getelementptr i8, ptr %i.k, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !15
  %i.ad = call i32 @PyObject_IsTrue(ptr noundef %i.ac) #6 ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %binascii_b2a_ascii85_impl.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.k, %bb.h, %bb.e
  %.138 = phi i32 [ %.037, %bb.o ], [ %.037, %bb.n ], [ %.037, %bb.k ], [ %i.p, %bb.h ], [ 0, %bb.e ]
  %.1 = phi i32 [ %.036, %bb.o ], [ %i.y, %bb.n ], [ 0, %bb.k ], [ 0, %bb.h ], [ 0, %bb.e ]
  %.0 = phi i32 [ %i.ad, %bb.o ], [ 0, %bb.n ], [ 0, %bb.k ], [ 0, %bb.h ], [ 0, %bb.e ]
  %i.af = load i64, ptr %i.b, align 8, !tbaa !42  ; 2 uses
  %.val64 = load ptr, ptr %4, align 8, !tbaa !17  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val65 = load i64, ptr %i.ag, align 8, !tbaa !22 ; 5 uses
  %i.ah = icmp ne i32 %.0, 0                      ; 5 uses
  %i.ai = icmp eq i64 %i.af, 1
  %or.cond.i = and i1 %i.ah, %i.ai
  %spec.store.select.i = select i1 %or.cond.i, i64 2, i64 %i.af ; 8 uses
  %i.aj = add i64 %.val65, 3
  %i.ak = lshr i64 %i.aj, 2
  %i.al = mul i64 %i.ak, 5                        ; 2 uses
  %i.am = add i64 %i.al, 4
  %spec.select.i = select i1 %i.ah, i64 %i.am, i64 %i.al ; 3 uses
  %i.an = icmp ne i32 %.1, 0                      ; 3 uses
  br i1 %i.an, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = srem i64 %.val65, 4                     ; 2 uses
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.neg.i = add nsw i64 %i.ao, -4
  %i.ap = add i64 %.neg.i, %spec.select.i
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.1118.i = phi i64 [ %spec.select.i, %bb.p ], [ %i.ap, %bb.r ], [ %spec.select.i, %bb.q ] ; 4 uses
  %i.aq = icmp ne i64 %spec.store.select.i, 0     ; 2 uses
  %i.ar = icmp sgt i64 %.1118.i, 0
  %or.cond5.i = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond5.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.as = add nsw i64 %.1118.i, -1
  %i.at = udiv i64 %i.as, %spec.store.select.i
  %i.au = add nuw i64 %i.at, %.1118.i
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.2119.i = phi i64 [ %i.au, %bb.t ], [ %.1118.i, %bb.s ] ; 3 uses
  %i.av = icmp slt i64 %.2119.i, 0
  br i1 %i.av, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.aw = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %binascii_b2a_ascii85_impl.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !10
  call void @PyErr_SetString(ptr noundef %i.ay, ptr noundef nonnull @.str.42) #6
  br label %binascii_b2a_ascii85_impl.exit

bb.x:                                             ; preds = %bb.u
  %i.az = call ptr @PyBytesWriter_Create(i64 noundef %.2119.i) #6 ; 4 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %binascii_b2a_ascii85_impl.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bb = call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.az) #6 ; 4 uses
  br i1 %i.ah, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bc = getelementptr i8, ptr %i.bb, i64 1
  store i8 60, ptr %i.bb, align 1, !tbaa !16
  %i.bd = getelementptr i8, ptr %i.bb, i64 2
  store i8 126, ptr %i.bc, align 1, !tbaa !16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0110.i = phi ptr [ %i.bd, %bb.z ], [ %i.bb, %bb.y ] ; 2 uses
  %i.be = icmp sgt i64 %.val65, 3
  br i1 %i.be, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.aa
  %i.bf = icmp ne i32 %.138, 0
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ag, %.lr.ph.i
  %.11113.i = phi ptr [ %.0110.i, %.lr.ph.i ], [ %.2112.i, %bb.ag ] ; 10 uses
  %.01132.i = phi ptr [ %.val64, %.lr.ph.i ], [ %i.cp, %bb.ag ] ; 2 uses
  %.01161.i = phi i64 [ %.val65, %.lr.ph.i ], [ %i.co, %bb.ag ] ; 2 uses
  %i.bg = load i32, ptr %.01132.i, align 1        ; 3 uses
  %i.bh = call i32 @llvm.bswap.i32(i32 %i.bg)     ; 5 uses
  %i.bi = icmp eq i32 %i.bg, 0
  br i1 %i.bi, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bj = getelementptr i8, ptr %.11113.i, i64 1
  store i8 122, ptr %.11113.i, align 1, !tbaa !16
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.bk = icmp eq i32 %i.bg, 538976288
  %or.cond7.i = and i1 %i.bf, %i.bk
  br i1 %or.cond7.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bl = getelementptr i8, ptr %.11113.i, i64 1
  store i8 121, ptr %.11113.i, align 1, !tbaa !16
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.bm = urem i32 %i.bh, 85
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr i8, ptr @table_b2a_base85_a85, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !16
  %i.bq = getelementptr i8, ptr %.11113.i, i64 4
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !16
  %i.br = udiv i32 %i.bh, 85
  %i.bs = urem i32 %i.br, 85
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr i8, ptr @table_b2a_base85_a85, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !16
  %i.bw = getelementptr i8, ptr %.11113.i, i64 3
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !16
  %i.bx = udiv i32 %i.bh, 7225
  %i.by = urem i32 %i.bx, 85
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr i8, ptr @table_b2a_base85_a85, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !16
  %i.cc = getelementptr i8, ptr %.11113.i, i64 2
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !16
  %i.cd = udiv i32 %i.bh, 614125
  %.lhs.trunc.i = trunc nuw nsw i32 %i.cd to i16
  %i.ce = urem i16 %.lhs.trunc.i, 85
  %i.cf = zext nneg i16 %i.ce to i64
  %i.cg = getelementptr i8, ptr @table_b2a_base85_a85, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !16
  %i.ci = getelementptr i8, ptr %.11113.i, i64 1
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !16
  %i.cj = udiv i32 %i.bh, 52200625
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr i8, ptr @table_b2a_base85_a85, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !16
  store i8 %i.cm, ptr %.11113.i, align 1, !tbaa !16
  %i.cn = getelementptr i8, ptr %.11113.i, i64 5
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ac
  %.2112.i = phi ptr [ %i.bj, %bb.ac ], [ %i.bl, %bb.ae ], [ %i.cn, %bb.af ] ; 2 uses
  %i.co = add nsw i64 %.01161.i, -4               ; 2 uses
  %i.cp = getelementptr i8, ptr %.01132.i, i64 4  ; 2 uses
  %i.cq = icmp sgt i64 %.01161.i, 7
  br i1 %i.cq, label %bb.ab, label %._crit_edge.i, !llvm.loop !46

._crit_edge.i:                                    ; preds = %bb.ag, %bb.aa
  %.0116.lcssa.i = phi i64 [ %.val65, %bb.aa ], [ %i.co, %bb.ag ] ; 4 uses
  %.0113.lcssa.i = phi ptr [ %.val64, %bb.aa ], [ %i.cp, %bb.ag ] ; 3 uses
  %.1111.lcssa.i = phi ptr [ %.0110.i, %bb.aa ], [ %.2112.i, %bb.ag ] ; 9 uses
  %i.cr = icmp sgt i64 %.0116.lcssa.i, 0
  br i1 %i.cr, label %.preheader.1.i, label %bb.ap

.preheader.1.i:                                   ; preds = %._crit_edge.i
  %i.cs = load i8, ptr %.0113.lcssa.i, align 1, !tbaa !16
  %i.ct = zext i8 %i.cs to i32                    ; 2 uses
  %.not17.i = icmp eq i64 %.0116.lcssa.i, 1
  br i1 %.not17.i, label %.preheader.2.thread.i, label %.preheader.2.i

.preheader.2.thread.i:                            ; preds = %.preheader.1.i
  %i.cu = shl nuw nsw i32 %i.ct, 16
  br label %bb.ai

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.cv = getelementptr i8, ptr %.0113.lcssa.i, i64 1
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !16
  %i.cx = zext i8 %i.cw to i32
  %i.cy = shl nuw nsw i32 %i.ct, 16
  %i.cz = shl nuw nsw i32 %i.cx, 8
  %i.da = or disjoint i32 %i.cz, %i.cy            ; 2 uses
  %i.db = icmp samesign ugt i64 %.0116.lcssa.i, 2
  br i1 %i.db, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.2.i
  %i.dc = getelementptr i8, ptr %.0113.lcssa.i, i64 2
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !16
  %i.de = zext i8 %i.dd to i32
  %i.df = or disjoint i32 %i.da, %i.de
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.preheader.2.i, %.preheader.2.thread.i
  %.1108.2.i = phi i32 [ %i.df, %bb.ah ], [ %i.da, %.preheader.2.i ], [ %i.cu, %.preheader.2.thread.i ] ; 2 uses
  %i.dg = shl nuw i32 %.1108.2.i, 8               ; 5 uses
  %i.dh = icmp eq i32 %.1108.2.i, 0
  %or.cond9.i = select i1 %i.an, i1 %i.dh, i1 false
  br i1 %or.cond9.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.di = getelementptr i8, ptr %.1111.lcssa.i, i64 1
  store i8 122, ptr %.1111.lcssa.i, align 1, !tbaa !16
  br label %bb.ap

bb.ak:                                            ; preds = %bb.ai
  %i.dj = add nuw nsw i64 %.0116.lcssa.i, 1
  %i.dk = select i1 %i.an, i64 5, i64 %i.dj       ; 4 uses
  %i.dl = icmp samesign ugt i64 %i.dk, 4
  br i1 %i.dl, label %.thread.i, label %bb.al

.thread.i:                                        ; preds = %bb.ak
  %i.dm = urem i32 %i.dg, 85
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr i8, ptr @table_b2a_base85_a85, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !16
  %i.dq = getelementptr i8, ptr %.1111.lcssa.i, i64 4
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !16
  br label %.thread20.i

bb.al:                                            ; preds = %bb.ak
  %i.dr = icmp eq i64 %i.dk, 4
  br i1 %i.dr, label %.thread20.i, label %bb.am

.thread20.i:                                      ; preds = %bb.al, %.thread.i
  %i.ds = udiv i32 %i.dg, 85
  %i.dt = urem i32 %i.ds, 85
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr i8, ptr @table_b2a_base85_a85, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !16
  %i.dx = getelementptr i8, ptr %.1111.lcssa.i, i64 3
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !16
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dy = icmp samesign ugt i64 %i.dk, 2
  br i1 %i.dy, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am, %.thread20.i
  %i.dz = udiv i32 %i.dg, 7225
  %i.ea = urem i32 %i.dz, 85
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr i8, ptr @table_b2a_base85_a85, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !16
  %i.ee = getelementptr i8, ptr %.1111.lcssa.i, i64 2
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !16
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ef = udiv i32 %i.dg, 614125
  %.lhs.trunc21.i = trunc nuw nsw i32 %i.ef to i16
  %i.eg = urem i16 %.lhs.trunc21.i, 85
  %i.eh = zext nneg i16 %i.eg to i64
  %i.ei = getelementptr i8, ptr @table_b2a_base85_a85, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !16
  %i.ek = getelementptr i8, ptr %.1111.lcssa.i, i64 1
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !16
  %i.el = udiv i32 %i.dg, 52200625
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr i8, ptr @table_b2a_base85_a85, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !16
  store i8 %i.eo, ptr %.1111.lcssa.i, align 1, !tbaa !16
  %i.ep = getelementptr i8, ptr %.1111.lcssa.i, i64 %i.dk
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.aj, %._crit_edge.i
  %.4.i = phi ptr [ %.1111.lcssa.i, %._crit_edge.i ], [ %i.di, %bb.aj ], [ %i.ep, %bb.ao ] ; 4 uses
  br i1 %i.ah, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.eq = getelementptr i8, ptr %.4.i, i64 1
  store i8 126, ptr %.4.i, align 1, !tbaa !16
  %i.er = getelementptr i8, ptr %.4.i, i64 2
  store i8 62, ptr %i.eq, align 1, !tbaa !16
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.5.i = phi ptr [ %i.er, %bb.aq ], [ %.4.i, %bb.ap ] ; 2 uses
  %i.es = icmp ne i64 %.2119.i, 0
  %or.cond11.i = and i1 %i.aq, %i.es
  br i1 %or.cond11.i, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %bb.ar
  %i.et = call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.az) #6 ; 5 uses
  %i.eu = ptrtoint ptr %.5.i to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev                    ; 5 uses
  %.not.i.i = icmp ugt i64 %i.ew, %spec.store.select.i
  br i1 %.not.i.i, label %bb.at, label %wraplines.exit.i

bb.at:                                            ; preds = %bb.as
  %i.ex = add i64 %i.ew, -1
  %i.ey = udiv i64 %i.ex, %spec.store.select.i    ; 2 uses
  %i.ez = mul i64 %i.ey, %spec.store.select.i     ; 4 uses
  %i.fa = add i64 %i.ey, %i.ew                    ; 4 uses
  %.not3132.i.i = icmp eq i64 %i.ez, 0
  br i1 %.not3132.i.i, label %wraplines.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.at
  %i.fb = sub i64 %i.ew, %i.ez                    ; 2 uses
  %i.fc = sub i64 0, %i.fb
  %i.fd = getelementptr i8, ptr %i.et, i64 %i.ez  ; 2 uses
  %i.fe = getelementptr i8, ptr %i.et, i64 %i.fa
  %i.ff = sub i64 0, %spec.store.select.i         ; 3 uses
  %i.fg = getelementptr i8, ptr %i.fe, i64 %i.fc  ; 3 uses
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.fg, ptr align 1 %i.fd, i64 %i.fb, i1 false)
  %i.fh = getelementptr i8, ptr %i.fg, i64 -1
  store i8 10, ptr %i.fh, align 1, !tbaa !16
  %.not31.peel.i.i = icmp eq i64 %i.ez, %spec.store.select.i
  br i1 %.not31.peel.i.i, label %wraplines.exit.i, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %.lr.ph.i.i
  %i.fi = getelementptr i8, ptr %i.fd, i64 %i.ff
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.peel.next.i.i
  %i.fj = phi ptr [ %i.fi, %.peel.next.i.i ], [ %i.fo, %bb.au ] ; 2 uses
  %i.fk = phi ptr [ %i.fg, %.peel.next.i.i ], [ %i.fm, %bb.au ]
  %i.fl = getelementptr i8, ptr %i.fk, i64 -1
  %i.fm = getelementptr i8, ptr %i.fl, i64 %i.ff  ; 3 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fm, ptr noundef nonnull align 1 dereferenceable(1) %i.fj, i64 range(i64 1, 0) %spec.store.select.i, i1 false)
  %i.fn = getelementptr i8, ptr %i.fm, i64 -1
  store i8 10, ptr %i.fn, align 1, !tbaa !16
  %i.fo = getelementptr i8, ptr %i.fj, i64 %i.ff  ; 2 uses
  %.not31.i.i = icmp eq ptr %i.fo, %i.et
  br i1 %.not31.i.i, label %wraplines.exit.i, label %bb.au, !llvm.loop !44

wraplines.exit.i:                                 ; preds = %bb.au, %.lr.ph.i.i, %bb.at, %bb.as
  %.026.i.i = phi i64 [ %i.ew, %bb.as ], [ %i.fa, %bb.at ], [ %i.fa, %.lr.ph.i.i ], [ %i.fa, %bb.au ]
  %i.fp = getelementptr i8, ptr %i.et, i64 %.026.i.i ; 5 uses
  br i1 %i.ah, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %wraplines.exit.i
  %i.fq = getelementptr i8, ptr %i.fp, i64 -2     ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !16
  %i.fs = icmp eq i8 %i.fr, 10
  br i1 %i.fs, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ft = getelementptr i8, ptr %i.fp, i64 -3
  store i8 10, ptr %i.ft, align 1, !tbaa !16
  store i8 126, ptr %i.fq, align 1, !tbaa !16
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %wraplines.exit.i, %bb.ar
  %.6.i = phi ptr [ %.5.i, %bb.ar ], [ %i.fp, %bb.aw ], [ %i.fp, %bb.av ], [ %i.fp, %wraplines.exit.i ]
  %i.fu = call ptr @PyBytesWriter_FinishWithPointer(ptr noundef nonnull %i.az, ptr noundef %.6.i) #6
  br label %binascii_b2a_ascii85_impl.exit

binascii_b2a_ascii85_impl.exit:                   ; preds = %bb.ax, %bb.x, %bb.w, %bb.v, %bb.o, %bb.m, %bb.j, %bb.g, %.thread, %bb.d
  %.041 = phi ptr [ null, %.thread ], [ null, %bb.g ], [ null, %bb.m ], [ null, %bb.o ], [ null, %bb.d ], [ null, %bb.j ], [ null, %bb.w ], [ null, %bb.v ], [ %i.fu, %bb.ax ], [ null, %bb.x ]
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !25
  %.not63 = icmp eq ptr %i.fw, null
  br i1 %.not63, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %binascii_b2a_ascii85_impl.exit
  call void @PyBuffer_Release(ptr noundef nonnull %4) #6
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %binascii_b2a_ascii85_impl.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.041
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_a2b_ascii85(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %i.b = alloca [4 x ptr], align 16               ; 3 uses
  %4 = alloca %struct.Py_buffer, align 8          ; 10 uses
  %5 = alloca %struct.Py_buffer, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.e = add i64 %i.d, %2                         ; 2 uses
  %i.f = add i64 %i.e, -1                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  %i.g = icmp eq i64 %2, 1
  %i.h = icmp ne ptr %1, null
  %i.i = and i1 %i.h, %i.g
  %or.cond5 = and i1 %i.i, %.not
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @binascii_a2b_ascii85._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.b) #6 ; 2 uses
  %.not44 = icmp eq ptr %i.j, null
  br i1 %.not44, label %binascii_a2b_ascii85_impl.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %i.j, %bb.d ], [ %1, %bb.c ]   ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = call fastcc i32 @ascii_buffer_converter(ptr noundef %i.l, ptr noundef %4)
  %.not45 = icmp eq i32 %i.m, 0
  br i1 %.not45, label %binascii_a2b_ascii85_impl.exit, label %bb.e

bb.e:                                             ; preds = %.thread
  %.not46 = icmp eq i64 %i.f, 0
  br i1 %.not46, label %.thread56, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15   ; 2 uses
  %.not47 = icmp eq ptr %i.o, null
  br i1 %.not47, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.o) #6 ; 3 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %binascii_a2b_ascii85_impl.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = add i64 %i.e, -2                         ; 2 uses
  %.not48 = icmp eq i64 %i.r, 0
  br i1 %.not48, label %.thread56, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.033 = phi i64 [ %i.r, %bb.h ], [ %i.f, %bb.f ]
  %.031 = phi i32 [ %i.p, %bb.h ], [ 0, %bb.f ]   ; 4 uses
  %i.s = getelementptr i8, ptr %i.k, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15   ; 2 uses
  %.not49 = icmp eq ptr %i.t, null
  br i1 %.not49, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.t) #6 ; 3 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %binascii_a2b_ascii85_impl.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = icmp ugt i64 %.033, 1
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i
  %.0 = phi i32 [ %i.u, %bb.k ], [ 0, %bb.i ]
  %i.x = getelementptr i8, ptr %i.k, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15
  %i.z = call i32 @PyObject_GetBuffer(ptr noundef %i.y, ptr noundef nonnull %5, i32 noundef 0) #6
  %.not50 = icmp eq i32 %i.z, 0
  br i1 %.not50, label %bb.m, label %binascii_a2b_ascii85_impl.exit

.thread56:                                        ; preds = %bb.h, %bb.e
  %.132.ph = phi i32 [ 0, %bb.e ], [ %i.p, %bb.h ]
  %.val5359 = load ptr, ptr %4, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val5460 = load i64, ptr %i.aa, align 8, !tbaa !22
  br label %bb.w

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1 = phi i32 [ %.0, %bb.l ], [ %i.u, %bb.k ]
  %.val53 = load ptr, ptr %4, align 8, !tbaa !17  ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val54 = load i64, ptr %i.ab, align 8, !tbaa !22 ; 6 uses
  %.not.i = icmp eq i32 %.1, 0
  br i1 %.not.i, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = icmp slt i64 %.val54, 2
  br i1 %i.ac, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = add nsw i64 %.val54, -2                 ; 3 uses
  %i.ae = getelementptr i8, ptr %.val53, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !16
  %.not127.i = icmp eq i8 %i.af, 126
  br i1 %.not127.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr i8, ptr %.val53, i64 %.val54
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !16
  %.not128.i = icmp eq i8 %i.ai, 62
  br i1 %.not128.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.aj = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not134.i = icmp eq ptr %i.aj, null
  br i1 %.not134.i, label %binascii_a2b_ascii85_impl.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !10
  call void @PyErr_SetString(ptr noundef %i.ak, ptr noundef nonnull @.str.43) #6
  br label %binascii_a2b_ascii85_impl.exit

bb.s:                                             ; preds = %bb.p
  %i.al = icmp samesign ugt i64 %.val54, 3
  br i1 %i.al, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.am = load i8, ptr %.val53, align 1, !tbaa !16
  %i.an = icmp eq i8 %i.am, 60
  br i1 %i.an, label %bb.u, label %.thread50.i

bb.u:                                             ; preds = %bb.t
  %i.ao = getelementptr i8, ptr %.val53, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !16
  %i.aq = icmp eq i8 %i.ap, 126
  br i1 %i.aq, label %bb.v, label %.thread50.i

bb.v:                                             ; preds = %bb.u
  %i.ar = getelementptr i8, ptr %.val53, i64 2
  %i.as = add nsw i64 %.val54, -4
  br label %bb.w

.thread50.i:                                      ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  br label %.lr.ph.preheader.i

bb.w:                                             ; preds = %.thread56, %bb.v, %bb.s, %bb.m
  %.13264 = phi i32 [ %.031, %bb.v ], [ %.031, %bb.s ], [ %.031, %bb.m ], [ %.132.ph, %.thread56 ] ; 2 uses
  %.0106.i = phi i64 [ %i.as, %bb.v ], [ %i.ad, %bb.s ], [ %.val54, %bb.m ], [ %.val5460, %.thread56 ] ; 3 uses
  %.0104.i = phi ptr [ %i.ar, %bb.v ], [ %.val53, %bb.s ], [ %.val53, %bb.m ], [ %.val5359, %.thread56 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.at = icmp sgt i64 %.0106.i, 0
  br i1 %i.at, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.w, %.thread50.i
  %.13263 = phi i32 [ %.031, %.thread50.i ], [ %.13264, %bb.w ] ; 2 uses
  %.010455.i = phi ptr [ %.val53, %.thread50.i ], [ %.0104.i, %bb.w ] ; 4 uses
  %.010654.i = phi i64 [ %i.ad, %.thread50.i ], [ %.0106.i, %bb.w ] ; 6 uses
  %min.iters.check = icmp ult i64 %.010654.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %.010654.i, -4                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %vec.phi90 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bd, %vector.body ]
  %i.au = getelementptr i8, ptr %.010455.i, i64 %index ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 2
  %wide.load = load <2 x i8>, ptr %i.au, align 1, !tbaa !16
  %wide.load91 = load <2 x i8>, ptr %i.av, align 1, !tbaa !16
  %i.aw = add <2 x i8> %wide.load, splat (i8 -121)
  %i.ax = add <2 x i8> %wide.load91, splat (i8 -121)
  %i.ay = icmp ult <2 x i8> %i.aw, splat (i8 2)
  %i.az = icmp ult <2 x i8> %i.ax, splat (i8 2)
  %i.ba = zext <2 x i1> %i.ay to <2 x i64>
  %i.bb = zext <2 x i1> %i.az to <2 x i64>
  %i.bc = add <2 x i64> %vec.phi, %i.ba           ; 2 uses
  %i.bd = add <2 x i64> %vec.phi90, %i.bb         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bd, %i.bc
  %i.bf = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.010654.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.010827.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.010926.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.bf, %middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.w
  %.13262 = phi i32 [ %.13264, %bb.w ], [ %.13263, %middle.block ], [ %.13263, %.lr.ph.i ]
  %i.bg = phi i1 [ false, %bb.w ], [ true, %middle.block ], [ true, %.lr.ph.i ]
  %.010456.i = phi ptr [ %.0104.i, %bb.w ], [ %.010455.i, %middle.block ], [ %.010455.i, %.lr.ph.i ]
  %.010653.i = phi i64 [ %.0106.i, %bb.w ], [ %.010654.i, %middle.block ], [ %.010654.i, %.lr.ph.i ] ; 2 uses
  %.0109.lcssa.i = phi i64 [ 0, %bb.w ], [ %i.bf, %middle.block ], [ %spec.select.i, %.lr.ph.i ] ; 3 uses
  %i.bh = add i64 %.010653.i, 4
  %i.bi = sub i64 %i.bh, %.0109.lcssa.i
  %i.bj = udiv i64 %i.bi, 5                       ; 2 uses
  %i.bk = shl nuw i64 %i.bj, 2
  %i.bl = sub i64 9223372036854775804, %i.bk
  %i.bm = lshr exact i64 %i.bl, 2
  %i.bn = icmp ugt i64 %.0109.lcssa.i, %i.bm
  br i1 %i.bn, label %bb.x, label %bb.z

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.010827.i = phi i64 [ %i.bs, %.lr.ph.i ], [ %.010827.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.010926.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.010926.i.ph, %.lr.ph.i.preheader ]
  %i.bo = getelementptr i8, ptr %.010455.i, i64 %.010827.i
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !16
  %i.bq = add i8 %i.bp, -121
  %or.cond.i = icmp ult i8 %i.bq, 2
  %i.br = zext i1 %or.cond.i to i64
  %spec.select.i = add i64 %.010926.i, %i.br      ; 2 uses
  %i.bs = add nuw nsw i64 %.010827.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bs, %.010654.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !48

bb.x:                                             ; preds = %._crit_edge.i
  %i.bt = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.aq, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !10
  call void @PyErr_SetString(ptr noundef %i.bv, ptr noundef nonnull @.str.44) #6
  br label %bb.aq

bb.z:                                             ; preds = %._crit_edge.i
  %i.bw = add nuw nsw i64 %i.bj, %.0109.lcssa.i
  %i.bx = shl i64 %i.bw, 2
  %i.by = call ptr @PyBytesWriter_Create(i64 noundef %i.bx) #6 ; 4 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.aq, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ca = call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.by) #6 ; 3 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %.thread16.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.aa
  br i1 %i.bg, label %.lr.ph38.i, label %._crit_edge39.i

.lr.ph38.i:                                       ; preds = %.preheader.i
  %i.cc = icmp ne i32 %.13262, 0
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit.i, %.lr.ph38.i
  %i.ce = phi i1 [ false, %.lr.ph38.i ], [ %i.em, %.loopexit.i ]
  %i.cf = phi i1 [ true, %.lr.ph38.i ], [ %i.el, %.loopexit.i ]
  %.09537.i = phi i32 [ 0, %.lr.ph38.i ], [ %.297.i, %.loopexit.i ] ; 4 uses
  %.09836.i = phi i32 [ 0, %.lr.ph38.i ], [ %.2100.i, %.loopexit.i ] ; 5 uses
  %.010135.i = phi ptr [ %i.ca, %.lr.ph38.i ], [ %.2103.i, %.loopexit.i ] ; 9 uses
  %.110534.i = phi ptr [ %.010456.i, %.lr.ph38.i ], [ %i.ek, %.loopexit.i ] ; 2 uses
  %.110733.i = phi i64 [ %.010653.i, %.lr.ph38.i ], [ %i.ej, %.loopexit.i ] ; 4 uses
  %i.cg = call i64 @llvm.smax.i64(i64 %.110733.i, i64 -2)
  %i.ch = call i64 @llvm.smin.i64(i64 %i.cg, i64 1)
  br i1 %i.cf, label %bb.ac, label %.thread.i

bb.ac:                                            ; preds = %bb.ab
  %i.ci = load i8, ptr %.110534.i, align 1, !tbaa !16 ; 5 uses
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr i8, ptr @table_a2b_base85_a85, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !16
  %i.cm = zext i8 %i.cl to i32
  %i.cn = add i8 %i.ci, -33
  %i.co = icmp ult i8 %i.cn, 85
  br i1 %i.co, label %.thread.i, label %bb.ah

.thread.i:                                        ; preds = %bb.ac, %bb.ab
  %.0946.i = phi i32 [ %i.cm, %bb.ac ], [ 84, %bb.ab ] ; 3 uses
  %i.cp = icmp eq i32 %.09537.i, 4
  br i1 %i.cp, label %bb.ad, label %ignorechar.exit.thread.i

bb.ad:                                            ; preds = %.thread.i
  %i.cq = icmp ugt i32 %.09836.i, 50529027
  br i1 %i.cq, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cr = mul nuw i32 %.09836.i, 85               ; 2 uses
  %i.cs = xor i32 %.0946.i, -1
  %i.ct = icmp ugt i32 %i.cr, %i.cs
  br i1 %i.ct, label %bb.af, label %ignorechar.exit.thread.thread60.i

ignorechar.exit.thread.thread60.i:                ; preds = %bb.ae
  %i.cu = add i32 %.0946.i, %i.cr
  br label %bb.ap

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cv = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not133.i = icmp eq ptr %i.cv, null
  br i1 %.not133.i, label %.thread16.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !10
  call void @PyErr_SetString(ptr noundef %i.cw, ptr noundef nonnull @.str.45) #6
  br label %.thread16.i

bb.ah:                                            ; preds = %bb.ac
  %i.cx = zext i8 %i.ci to i32                    ; 5 uses
  %i.cy = icmp eq i8 %i.ci, 121                   ; 2 uses
  %or.cond4.i = and i1 %i.cc, %i.cy
  %i.cz = icmp eq i8 %i.ci, 122
  %or.cond7.i = or i1 %i.cz, %or.cond4.i
  br i1 %or.cond7.i, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.ce, label %bb.aj, label %.thread9.i

bb.aj:                                            ; preds = %bb.ai
  %i.da = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not131.i = icmp eq ptr %i.da, null
  br i1 %.not131.i, label %.thread16.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !10
  %i.dc = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.db, ptr noundef nonnull @.str.46, i32 noundef %i.cx) #6 ; 0 uses
  br label %.thread16.i

.thread9.i:                                       ; preds = %bb.ai
  %i.dd = select i1 %i.cy, i32 538976288, i32 0
  br label %bb.ap

bb.al:                                            ; preds = %bb.ah
  %i.de = lshr i32 %i.cx, 3
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr i8, ptr %i.a, i64 %i.df   ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !16  ; 2 uses
  %i.di = zext i8 %i.dh to i32
  %i.dj = and i32 %i.cx, 7
  %i.dk = shl nuw nsw i32 1, %i.dj                ; 2 uses
  %i.dl = and i32 %i.dk, %i.di
  %.not.i.i = icmp eq i32 %i.dl, 0
  br i1 %.not.i.i, label %bb.am, label %.loopexit.i

bb.am:                                            ; preds = %bb.al
  %i.dm = load ptr, ptr %5, align 8, !tbaa !17
  %i.dn = load i64, ptr %i.cd, align 8, !tbaa !22
  %i.do = call ptr @memchr(ptr noundef %i.dm, i32 noundef %i.cx, i64 noundef %i.dn) #7
  %.not11.i.i = icmp eq ptr %i.do, null
  br i1 %.not11.i.i, label %ignorechar.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dp = trunc nuw i32 %i.dk to i8
  %i.dq = or i8 %i.dh, %i.dp
  store i8 %i.dq, ptr %i.dg, align 1, !tbaa !16
  br label %.loopexit.i

ignorechar.exit.i:                                ; preds = %bb.am
  %i.dr = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not130.i = icmp eq ptr %i.dr, null
  br i1 %.not130.i, label %.thread16.i, label %bb.ao

bb.ao:                                            ; preds = %ignorechar.exit.i
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !10
  %i.dt = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ds, ptr noundef nonnull @.str.47, i32 noundef %i.cx) #6 ; 0 uses
  br label %.thread16.i

ignorechar.exit.thread.i:                         ; preds = %.thread.i
  %.pre.i = mul i32 %.09836.i, 85
  %i.du = add i32 %.0946.i, %.pre.i
  %i.dv = add i32 %.09537.i, 1
  br label %.loopexit.i

bb.ap:                                            ; preds = %.thread9.i, %ignorechar.exit.thread.thread60.i
  %.19915.i = phi i32 [ %i.dd, %.thread9.i ], [ %i.cu, %ignorechar.exit.thread.thread60.i ] ; 4 uses
  %i.dw = icmp sgt i64 %.110733.i, -3
  br i1 %i.dw, label %.lr.ph31.preheader.i, label %.loopexit.i

.lr.ph31.preheader.i:                             ; preds = %bb.ap
  %i.dx = add nsw i64 %i.ch, 2                    ; 2 uses
  %i.dy = lshr i32 %.19915.i, 24
  %i.dz = trunc nuw i32 %i.dy to i8
  %i.ea = getelementptr i8, ptr %.010135.i, i64 1 ; 2 uses
  store i8 %i.dz, ptr %.010135.i, align 1, !tbaa !16
  %exitcond.not = icmp eq i64 %i.dx, 0
  br i1 %exitcond.not, label %.loopexit.i, label %.lr.ph31.i.1

.lr.ph31.i.1:                                     ; preds = %.lr.ph31.preheader.i
  %i.eb = lshr i32 %.19915.i, 16
  %i.ec = trunc i32 %i.eb to i8
  %i.ed = getelementptr i8, ptr %.010135.i, i64 2 ; 2 uses
  store i8 %i.ec, ptr %i.ea, align 1, !tbaa !16
  %exitcond.not.1 = icmp eq i64 %i.dx, 1
  br i1 %exitcond.not.1, label %.loopexit.i, label %.lr.ph31.i.2

.lr.ph31.i.2:                                     ; preds = %.lr.ph31.i.1
  %i.ee = lshr i32 %.19915.i, 8
  %i.ef = trunc i32 %i.ee to i8
  %i.eg = getelementptr i8, ptr %.010135.i, i64 3 ; 2 uses
  store i8 %i.ef, ptr %i.ed, align 1, !tbaa !16
  %exitcond.not.2 = icmp eq i64 %.110733.i, 0
  br i1 %exitcond.not.2, label %.loopexit.i, label %.lr.ph31.i.3

.lr.ph31.i.3:                                     ; preds = %.lr.ph31.i.2
  %i.eh = trunc i32 %.19915.i to i8
  %i.ei = getelementptr i8, ptr %.010135.i, i64 4
  store i8 %i.eh, ptr %i.eg, align 1, !tbaa !16
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph31.preheader.i, %.lr.ph31.i.1, %.lr.ph31.i.2, %.lr.ph31.i.3, %bb.ap, %ignorechar.exit.thread.i, %bb.an, %bb.al
  %.2103.i = phi ptr [ %.010135.i, %ignorechar.exit.thread.i ], [ %.010135.i, %bb.ap ], [ %.010135.i, %bb.an ], [ %.010135.i, %bb.al ], [ %i.ea, %.lr.ph31.preheader.i ], [ %i.ed, %.lr.ph31.i.1 ], [ %i.eg, %.lr.ph31.i.2 ], [ %i.ei, %.lr.ph31.i.3 ] ; 2 uses
  %.2100.i = phi i32 [ %i.du, %ignorechar.exit.thread.i ], [ 0, %bb.ap ], [ %.09836.i, %bb.an ], [ %.09836.i, %bb.al ], [ 0, %.lr.ph31.i.3 ], [ 0, %.lr.ph31.i.2 ], [ 0, %.lr.ph31.i.1 ], [ 0, %.lr.ph31.preheader.i ]
  %.297.i = phi i32 [ %i.dv, %ignorechar.exit.thread.i ], [ 0, %bb.ap ], [ %.09537.i, %bb.an ], [ %.09537.i, %bb.al ], [ 0, %.lr.ph31.i.3 ], [ 0, %.lr.ph31.i.2 ], [ 0, %.lr.ph31.i.1 ], [ 0, %.lr.ph31.preheader.i ] ; 2 uses
  %i.ej = add i64 %.110733.i, -1                  ; 2 uses
  %i.ek = getelementptr i8, ptr %.110534.i, i64 1
  %i.el = icmp sgt i64 %i.ej, 0                   ; 2 uses
  %i.em = icmp ne i32 %.297.i, 0                  ; 2 uses
  %i.en = or i1 %i.el, %i.em
  br i1 %i.en, label %bb.ab, label %._crit_edge39.i, !llvm.loop !49

._crit_edge39.i:                                  ; preds = %.loopexit.i, %.preheader.i
  %.0101.lcssa.i = phi ptr [ %i.ca, %.preheader.i ], [ %.2103.i, %.loopexit.i ]
  %i.eo = call ptr @PyBytesWriter_FinishWithPointer(ptr noundef nonnull %i.by, ptr noundef %.0101.lcssa.i) #6
  br label %bb.aq

.thread16.i:                                      ; preds = %bb.ao, %ignorechar.exit.i, %bb.ak, %bb.aj, %bb.ag, %bb.af, %bb.aa
  call void @PyBytesWriter_Discard(ptr noundef nonnull %i.by) #6
  br label %bb.aq

bb.aq:                                            ; preds = %.thread16.i, %._crit_edge39.i, %bb.z, %bb.y, %bb.x
  %.3.i = phi ptr [ null, %bb.y ], [ null, %bb.x ], [ null, %bb.z ], [ null, %.thread16.i ], [ %i.eo, %._crit_edge39.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %binascii_a2b_ascii85_impl.exit

binascii_a2b_ascii85_impl.exit:                   ; preds = %bb.aq, %bb.r, %bb.q, %bb.l, %bb.j, %bb.g, %.thread, %bb.d
  %.034 = phi ptr [ null, %bb.g ], [ null, %bb.j ], [ null, %bb.l ], [ null, %bb.d ], [ null, %.thread ], [ %.3.i, %bb.aq ], [ null, %bb.r ], [ null, %bb.q ]
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !25
  %.not51 = icmp eq ptr %i.eq, null
  br i1 %.not51, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %binascii_a2b_ascii85_impl.exit
  call void @PyBuffer_Release(ptr noundef nonnull %4) #6
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %binascii_a2b_ascii85_impl.exit
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !25
  %.not52 = icmp eq ptr %i.es, null
  br i1 %.not52, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @PyBuffer_Release(ptr noundef nonnull %5) #6
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  ret ptr %.034
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_a2b_base85(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.Py_buffer, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %2, i8 0, i64 80, i1 false)
  %i.a = call fastcc i32 @ascii_buffer_converter(ptr noundef %1, ptr noundef %2)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call fastcc ptr @base85_decode_impl(ptr noundef %0, ptr noundef nonnull readonly %2, ptr noundef nonnull @table_a2b_base85, ptr noundef nonnull @.str.48)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %.not3 = icmp eq ptr %i.d, null
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @PyBuffer_Release(ptr noundef nonnull %2) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_b2a_base85(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  %4 = alloca %struct.Py_buffer, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.d = add i64 %i.c, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  %i.e = icmp eq i64 %2, 1
  %i.f = icmp ne ptr %1, null
  %i.g = and i1 %i.f, %i.e
  %or.cond5 = and i1 %i.g, %.not
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @binascii_b2a_base85._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #6 ; 2 uses
  %.not28 = icmp eq ptr %i.h, null
  br i1 %.not28, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.i = phi ptr [ %i.h, %bb.d ], [ %1, %bb.c ]   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.k = call i32 @PyObject_GetBuffer(ptr noundef %i.j, ptr noundef nonnull %4, i32 noundef 0) #6
  %.not29 = icmp eq i32 %i.k, 0
  br i1 %.not29, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.thread
  %.not30 = icmp eq i64 %i.d, 1
  br i1 %.not30, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.n = call i32 @PyObject_IsTrue(ptr noundef %i.m) #6 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ %i.n, %bb.f ], [ 0, %bb.e ]
  %.val32 = load ptr, ptr %4, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val33 = load i64, ptr %i.p, align 8, !tbaa !22
  %i.q = call fastcc ptr @base85_encode_impl(ptr noundef %0, ptr readonly %.val32, i64 %.val33, i32 noundef range(i32 0, -2147483648) %.0, ptr noundef nonnull @table_b2a_base85, ptr noundef nonnull @.str.48)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %.thread, %bb.d, %bb.g
  %.023 = phi ptr [ null, %.thread ], [ null, %bb.f ], [ %i.q, %bb.g ], [ null, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25
  %.not31 = icmp eq ptr %i.s, null
  br i1 %.not31, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @PyBuffer_Release(ptr noundef nonnull %4) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.023
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_a2b_z85(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.Py_buffer, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %2, i8 0, i64 80, i1 false)
  %i.a = call fastcc i32 @ascii_buffer_converter(ptr noundef %1, ptr noundef %2)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call fastcc ptr @base85_decode_impl(ptr noundef %0, ptr noundef nonnull readonly %2, ptr noundef nonnull @table_a2b_base85_z85, ptr noundef nonnull @.str.52)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %.not3 = icmp eq ptr %i.d, null
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @PyBuffer_Release(ptr noundef nonnull %2) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_b2a_z85(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  %4 = alloca %struct.Py_buffer, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.d = add i64 %i.c, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  %i.e = icmp eq i64 %2, 1
  %i.f = icmp ne ptr %1, null
  %i.g = and i1 %i.f, %i.e
  %or.cond5 = and i1 %i.g, %.not
  br i1 %or.cond5, label %.thread, label %bb.d
end_hunk_0
begin_hunk_1_@binascii_b2a_hex:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25
  %.not42 = icmp eq ptr %i.w, null
  br i1 %.not42, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @PyBuffer_Release(ptr noundef nonnull %4) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.028
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_hexlify(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 3 uses
  %4 = alloca %struct.Py_buffer, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.d = add i64 %2, -1                           ; 2 uses
  %i.e = add i64 %i.d, %i.c                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  %i.f = icmp ult i64 %i.d, 3
  %i.g = icmp ne ptr %1, null
  %i.h = and i1 %i.g, %i.f
  %or.cond5 = and i1 %.not, %i.h
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @binascii_hexlify._parser, i32 noundef 1, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #6 ; 2 uses
  %.not36 = icmp eq ptr %i.i, null
  br i1 %.not36, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.j = phi ptr [ %i.i, %bb.d ], [ %1, %bb.c ]   ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15
  %i.l = call i32 @PyObject_GetBuffer(ptr noundef %i.k, ptr noundef nonnull %4, i32 noundef 0) #6
  %.not37 = icmp eq i32 %i.l, 0
  br i1 %.not37, label %bb.e, label %bb.j

bb.e:                                             ; preds = %.thread
  %.not38 = icmp eq i64 %i.e, 0
  br i1 %.not38, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15   ; 4 uses
  %.not39 = icmp ne ptr %i.n, null
  %.not40 = icmp eq i64 %i.e, 1
  %or.cond = select i1 %.not39, i1 %.not40, i1 false
  br i1 %or.cond, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr i8, ptr %i.j, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !15
  %i.q = call i32 @PyLong_AsInt(ptr noundef %i.p) #6 ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = call ptr @PyErr_Occurred() #6
  %.not41 = icmp eq ptr %i.s, null
  br i1 %.not41, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.e
  %.1 = phi ptr [ %i.n, %bb.h ], [ %i.n, %bb.g ], [ %i.n, %bb.f ], [ null, %bb.e ]
  %.0 = phi i32 [ -1, %bb.h ], [ %i.q, %bb.g ], [ 1, %bb.f ], [ 1, %bb.e ]
  %.val43 = load ptr, ptr %4, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val44 = load i64, ptr %i.t, align 8, !tbaa !22
  %i.u = call ptr @_Py_strhex_bytes_with_sep(ptr noundef %.val43, i64 noundef %.val44, ptr noundef %.1, i32 noundef %.0) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %.thread, %bb.d, %bb.i
  %.028 = phi ptr [ null, %.thread ], [ null, %bb.h ], [ %i.u, %bb.i ], [ null, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25
  %.not42 = icmp eq ptr %i.w, null
  br i1 %.not42, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @PyBuffer_Release(ptr noundef nonnull %4) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.028
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_unhexlify(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.Py_buffer, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %2, i8 0, i64 80, i1 false)
  %i.a = call fastcc i32 @ascii_buffer_converter(ptr noundef %1, ptr noundef %2)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %2, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val4 = load i64, ptr %i.b, align 8, !tbaa !22
  %i.c = call fastcc ptr @binascii_a2b_hex_impl(ptr noundef %0, ptr readonly %.val, i64 %.val4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %.not3 = icmp eq ptr %i.e, null
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @PyBuffer_Release(ptr noundef nonnull %2) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_crc_hqx(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.Py_buffer, align 8          ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.15, i64 noundef %2, i64 noundef 2, i64 noundef 2) #6
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !15
  %i.d = call i32 @PyObject_GetBuffer(ptr noundef %i.c, ptr noundef nonnull %3, i32 noundef 0) #6
  %.not14 = icmp eq i32 %i.d, 0
  br i1 %.not14, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = call i64 @PyLong_AsNativeBytes(ptr noundef %i.f, ptr noundef nonnull %i.a, i64 noundef 4, i32 noundef 23) #6 ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = icmp samesign ugt i64 %i.g, 4
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr @PyExc_DeprecationWarning, align 8, !tbaa !15
  %i.k = call i32 @PyErr_WarnEx(ptr noundef %i.j, ptr noundef nonnull @.str.58, i64 noundef 1) #6
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = load i32, ptr %i.a, align 4, !tbaa !6
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val16 = load i64, ptr %i.n, align 8, !tbaa !22 ; 5 uses
  %i.o = and i32 %i.m, 65535                      ; 4 uses
  %i.p = icmp sgt i64 %.val16, 0
  br i1 %i.p, label %.lr.ph.i.preheader, label %binascii_crc_hqx_impl.exit

.lr.ph.i.preheader:                               ; preds = %bb.g
  %.val = load ptr, ptr %3, align 8, !tbaa !17    ; 3 uses
  %xtraiter = and i64 %.val16, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.q = add nsw i64 %.val16, -1
  %i.r = shl nuw nsw i32 %i.o, 8
  %i.s = and i32 %i.r, 65280
  %i.t = lshr i32 %i.o, 8
  %i.u = getelementptr i8, ptr %.val, i64 1
  %i.v = load i8, ptr %.val, align 1, !tbaa !16
  %i.w = zext i8 %i.v to i32
  %i.x = xor i32 %i.t, %i.w
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr [2 x i8], ptr @crctab_hqx, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !50
  %i.ab = zext i16 %i.aa to i32
  %i.ac = xor i32 %i.s, %i.ab                     ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.03.i.unr = phi i64 [ %.val16, %.lr.ph.i.preheader ], [ %i.q, %.lr.ph.i.prol ]
  %.072.i.unr = phi ptr [ %.val, %.lr.ph.i.preheader ], [ %i.u, %.lr.ph.i.prol ]
  %.081.i.unr = phi i32 [ %i.o, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %i.ad = icmp eq i64 %.val16, 1
  br i1 %i.ad, label %binascii_crc_hqx_impl.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.03.i = phi i64 [ %i.aq, %.lr.ph.i ], [ %.03.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.072.i = phi ptr [ %i.au, %.lr.ph.i ], [ %.072.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.081.i = phi i32 [ %i.bc, %.lr.ph.i ], [ %.081.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.ae = shl nuw nsw i32 %.081.i, 8
  %i.af = and i32 %i.ae, 65280
  %i.ag = lshr i32 %.081.i, 8
  %i.ah = getelementptr i8, ptr %.072.i, i64 1
  %i.ai = load i8, ptr %.072.i, align 1, !tbaa !16
  %i.aj = zext i8 %i.ai to i32
  %i.ak = xor i32 %i.ag, %i.aj
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr [2 x i8], ptr @crctab_hqx, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2, !tbaa !50
  %i.ao = zext i16 %i.an to i32                   ; 2 uses
  %i.ap = xor i32 %i.af, %i.ao
  %i.aq = add nsw i64 %.03.i, -2
  %i.ar = shl nuw nsw i32 %i.ao, 8
  %i.as = and i32 %i.ar, 65280
  %i.at = lshr i32 %i.ap, 8
  %i.au = getelementptr i8, ptr %.072.i, i64 2
  %i.av = load i8, ptr %i.ah, align 1, !tbaa !16
  %i.aw = zext i8 %i.av to i32
  %i.ax = xor i32 %i.at, %i.aw
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr [2 x i8], ptr @crctab_hqx, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !50
  %i.bb = zext i16 %i.ba to i32
  %i.bc = xor i32 %i.as, %i.bb                    ; 2 uses
  %i.bd = icmp sgt i64 %.03.i, 2
  br i1 %i.bd, label %.lr.ph.i, label %binascii_crc_hqx_impl.exit, !llvm.loop !52

binascii_crc_hqx_impl.exit:                       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.g
  %.08.lcssa.i = phi i32 [ %i.o, %bb.g ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.bc, %.lr.ph.i ]
  %i.be = zext nneg i32 %.08.lcssa.i to i64
  %i.bf = call ptr @PyLong_FromUnsignedLong(i64 noundef %i.be) #6
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.d, %bb.c, %bb.b, %binascii_crc_hqx_impl.exit
  %.012 = phi ptr [ null, %bb.c ], [ %i.bf, %binascii_crc_hqx_impl.exit ], [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.f ]
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !25
  %.not15 = icmp eq ptr %i.bh, null
  br i1 %.not15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread
  call void @PyBuffer_Release(ptr noundef nonnull %3) #6
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret ptr %.012
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_crc32(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.Py_buffer, align 8          ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !6
  %i.b = add i64 %2, -1
  %or.cond = icmp ult i64 %i.b, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.16, i64 noundef %2, i64 noundef 1, i64 noundef 2) #6
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !15
  %i.e = call i32 @PyObject_GetBuffer(ptr noundef %i.d, ptr noundef nonnull %3, i32 noundef 0) #6
  %.not17 = icmp eq i32 %i.e, 0
  br i1 %.not17, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.f = icmp slt i64 %2, 2
  br i1 %i.f, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.i = call i64 @PyLong_AsNativeBytes(ptr noundef %i.h, ptr noundef nonnull %i.a, i64 noundef 4, i32 noundef 23) #6 ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = icmp samesign ugt i64 %i.i, 4
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr @PyExc_DeprecationWarning, align 8, !tbaa !15
  %i.m = call i32 @PyErr_WarnEx(ptr noundef %i.l, ptr noundef nonnull @.str.58, i64 noundef 1) #6
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %i.o = load i32, ptr %i.a, align 4, !tbaa !6    ; 3 uses
  %.val = load ptr, ptr %3, align 8               ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val20 = load i64, ptr %i.p, align 8, !tbaa !22 ; 5 uses
  %i.q = icmp sgt i64 %.val20, 5120
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = call ptr @PyEval_SaveThread() #6
  %i.s = icmp samesign ugt i64 %.val20, 1073741824
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %.03.i = phi i32 [ %i.v, %.lr.ph.i ], [ %i.o, %bb.i ]
  %.0152.i = phi i64 [ %i.x, %.lr.ph.i ], [ %.val20, %bb.i ]
  %.0161.i = phi ptr [ %i.w, %.lr.ph.i ], [ %.val, %bb.i ] ; 2 uses
  %i.t = zext i32 %.03.i to i64
  %i.u = call i64 @crc32(i64 noundef %i.t, ptr noundef %.0161.i, i32 noundef 1073741824) #6
  %i.v = trunc i64 %i.u to i32                    ; 2 uses
  %i.w = getelementptr i8, ptr %.0161.i, i64 1073741824 ; 2 uses
  %i.x = add nsw i64 %.0152.i, -1073741824        ; 3 uses
  %i.y = icmp ugt i64 %i.x, 1073741824
  br i1 %i.y, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !53

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.i
  %.016.lcssa.i = phi ptr [ %.val, %bb.i ], [ %i.w, %.lr.ph.i ]
  %.015.lcssa.i = phi i64 [ %.val20, %bb.i ], [ %i.x, %.lr.ph.i ]
  %.0.lcssa.i = phi i32 [ %i.o, %bb.i ], [ %i.v, %.lr.ph.i ]
  %i.z = zext i32 %.0.lcssa.i to i64
  %i.aa = trunc nuw nsw i64 %.015.lcssa.i to i32
  %i.ab = call i64 @crc32(i64 noundef %i.z, ptr noundef %.016.lcssa.i, i32 noundef %i.aa) #6
  call void @PyEval_RestoreThread(ptr noundef %i.r) #6
  br label %binascii_crc32_impl.exit

bb.j:                                             ; preds = %bb.h
  %i.ac = zext i32 %i.o to i64
  %i.ad = trunc i64 %.val20 to i32
  %i.ae = call i64 @crc32(i64 noundef %i.ac, ptr noundef %.val, i32 noundef %i.ad) #6
  br label %binascii_crc32_impl.exit

binascii_crc32_impl.exit:                         ; preds = %._crit_edge.i, %bb.j
  %.1.in.i = phi i64 [ %i.ab, %._crit_edge.i ], [ %i.ae, %bb.j ]
  %i.af = and i64 %.1.in.i, 4294967295            ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967295
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %binascii_crc32_impl.exit
  %i.ah = call ptr @PyErr_Occurred() #6
  %.not18 = icmp eq ptr %i.ah, null
  br i1 %.not18, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k, %binascii_crc32_impl.exit
  %i.ai = call ptr @PyLong_FromUnsignedLong(i64 noundef %i.af) #6
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.e, %bb.k, %bb.c, %bb.b, %bb.l
  %.015 = phi ptr [ null, %bb.c ], [ null, %bb.k ], [ %i.ai, %bb.l ], [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.g ]
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !25
  %.not19 = icmp eq ptr %i.ak, null
  br i1 %.not19, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread
  call void @PyBuffer_Release(ptr noundef nonnull %3) #6
  br label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret ptr %.015
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_a2b_qp(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  %4 = alloca %struct.Py_buffer, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.d = add i64 %i.c, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  %i.e = add i64 %2, -1
  %i.f = icmp ult i64 %i.e, 2
  %i.g = icmp ne ptr %1, null
  %i.h = and i1 %i.g, %i.f
  %or.cond5 = and i1 %.not, %i.h
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @binascii_a2b_qp._parser, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #6 ; 2 uses
  %.not28 = icmp eq ptr %i.i, null
  br i1 %.not28, label %binascii_a2b_qp_impl.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.j = phi ptr [ %i.i, %bb.d ], [ %1, %bb.c ]   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15
  %i.l = call fastcc i32 @ascii_buffer_converter(ptr noundef %i.k, ptr noundef %4)
  %.not29 = icmp eq i32 %i.l, 0
  br i1 %.not29, label %binascii_a2b_qp_impl.exit, label %bb.e

bb.e:                                             ; preds = %.thread
  %.not30 = icmp eq i64 %i.d, 1
  br i1 %.not30, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.o = call i32 @PyObject_IsTrue(ptr noundef %i.n) #6 ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %binascii_a2b_qp_impl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ %i.o, %bb.f ], [ 0, %bb.e ]
  %.val32 = load ptr, ptr %4, align 8, !tbaa !17  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val33 = load i64, ptr %i.q, align 8, !tbaa !22 ; 8 uses
  %i.r = call ptr @PyMem_Calloc(i64 noundef 1, i64 noundef %.val33) #6 ; 8 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.h, label %.preheader6.i

.preheader6.i:                                    ; preds = %bb.g
  %i.t = icmp sgt i64 %.val33, 0
  br i1 %i.t, label %.lr.ph12.i, label %._crit_edge.i

.lr.ph12.i:                                       ; preds = %.preheader6.i
  %.not.i = icmp ne i32 %.0, 0
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = call ptr @PyErr_NoMemory() #6            ; 0 uses
  br label %binascii_a2b_qp_impl.exit

bb.i:                                             ; preds = %bb.v, %.lr.ph12.i
  %.08411.i = phi i64 [ 0, %.lr.ph12.i ], [ %.3.i, %bb.v ] ; 7 uses
  %.08510.i = phi i64 [ 0, %.lr.ph12.i ], [ %.186.i, %bb.v ] ; 12 uses
  %i.v = getelementptr i8, ptr %.val32, i64 %.08411.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !16    ; 3 uses
  %i.x = icmp eq i8 %i.w, 61
  br i1 %i.x, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.y = add nsw i64 %.08411.i, 1                 ; 5 uses
  %.not98.i = icmp slt i64 %i.y, %.val33
  br i1 %.not98.i, label %bb.k, label %._crit_edge.i

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr i8, ptr %.val32, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !16   ; 4 uses
  switch i8 %i.aa, label %bb.n [
    i8 61, label %bb.m
    i8 10, label %.critedge.i
    i8 13, label %.lr.ph.i
  ]

.lr.ph.i:                                         ; preds = %bb.k, %bb.l
  %.17.i = phi i64 [ %i.ad, %bb.l ], [ %i.y, %bb.k ] ; 3 uses
  %i.ab = getelementptr i8, ptr %.val32, i64 %.17.i
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !16
  %.not100.i = icmp eq i8 %i.ac, 10
  br i1 %.not100.i, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ad = add nsw i64 %.17.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %.val33
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !54

.critedge.i:                                      ; preds = %bb.l, %.lr.ph.i, %bb.k
  %.2.i = phi i64 [ %i.y, %bb.k ], [ %.17.i, %.lr.ph.i ], [ %.val33, %bb.l ] ; 2 uses
  %i.ae = icmp slt i64 %.2.i, %.val33
  %i.af = zext i1 %i.ae to i64
  %spec.select.i = add i64 %.2.i, %i.af
  br label %bb.v

bb.m:                                             ; preds = %bb.k
  %i.ag = add i64 %.08510.i, 1
  %i.ah = getelementptr i8, ptr %i.r, i64 %.08510.i
  store i8 61, ptr %i.ah, align 1, !tbaa !16
  %i.ai = add nsw i64 %.08411.i, 2
  br label %bb.v

bb.n:                                             ; preds = %bb.k
  %i.aj = add nsw i64 %.08411.i, 2                ; 2 uses
  %i.ak = icmp slt i64 %i.aj, %.val33
  br i1 %i.ak, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.al = add i8 %i.aa, -48
  %or.cond102.i = icmp ult i8 %i.al, 10
  br i1 %or.cond102.i, label %bb.p, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.o
  switch i8 %i.aa, label %bb.r [
    i8 102, label %bb.p
    i8 101, label %bb.p
    i8 100, label %bb.p
    i8 99, label %bb.p
    i8 98, label %bb.p
    i8 97, label %bb.p
    i8 70, label %bb.p
    i8 69, label %bb.p
    i8 68, label %bb.p
    i8 67, label %bb.p
    i8 66, label %bb.p
    i8 65, label %bb.p
  ]

bb.p:                                             ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %bb.o
  %i.am = getelementptr i8, ptr %.val32, i64 %i.aj
  %i.an = load i8, ptr %i.am, align 1, !tbaa !16
  %.fr16.i = freeze i8 %i.an                      ; 3 uses
  %i.ao = add i8 %.fr16.i, -48
  %or.cond105.i = icmp ult i8 %i.ao, 10
  br i1 %or.cond105.i, label %bb.q, label %switch.early.test5.i

switch.early.test5.i:                             ; preds = %bb.p
  switch i8 %.fr16.i, label %bb.r [
    i8 102, label %bb.q
    i8 101, label %bb.q
    i8 100, label %bb.q
    i8 99, label %bb.q
    i8 98, label %bb.q
    i8 97, label %bb.q
    i8 70, label %bb.q
    i8 69, label %bb.q
    i8 68, label %bb.q
    i8 67, label %bb.q
    i8 66, label %bb.q
    i8 65, label %bb.q
  ]

bb.q:                                             ; preds = %switch.early.test5.i, %switch.early.test5.i, %switch.early.test5.i, %switch.early.test5.i, %switch.early.test5.i, %switch.early.test5.i, %switch.early.test5.i, %switch.early.test5.i, %switch.early.test5.i, %switch.early.test5.i, %switch.early.test5.i, %switch.early.test5.i, %bb.p
  %i.ap = zext nneg i8 %i.aa to i64
  %i.aq = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !16
  %i.as = shl i8 %i.ar, 4
  %i.at = zext nneg i8 %.fr16.i to i64
  %i.au = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !16
  %i.aw = or i8 %i.as, %i.av
  %i.ax = add nsw i64 %.08411.i, 3
  %i.ay = add i64 %.08510.i, 1
  %i.az = getelementptr i8, ptr %i.r, i64 %.08510.i
  store i8 %i.aw, ptr %i.az, align 1, !tbaa !16
  br label %bb.v

bb.r:                                             ; preds = %switch.early.test5.i, %switch.early.test.i, %bb.n
  %i.ba = add i64 %.08510.i, 1
  %i.bb = getelementptr i8, ptr %i.r, i64 %.08510.i
  store i8 61, ptr %i.bb, align 1, !tbaa !16
  br label %bb.v

bb.s:                                             ; preds = %bb.i
  %i.bc = icmp eq i8 %i.w, 95
  %or.cond106.i = and i1 %.not.i, %i.bc
  br i1 %or.cond106.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bd = add i64 %.08510.i, 1
  %i.be = getelementptr i8, ptr %i.r, i64 %.08510.i
  store i8 32, ptr %i.be, align 1, !tbaa !16
  %i.bf = add nsw i64 %.08411.i, 1
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bg = getelementptr i8, ptr %i.r, i64 %.08510.i
  store i8 %i.w, ptr %i.bg, align 1, !tbaa !16
  %i.bh = add nsw i64 %.08411.i, 1
  %i.bi = add i64 %.08510.i, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.r, %bb.q, %bb.m, %.critedge.i
  %.186.i = phi i64 [ %i.bi, %bb.u ], [ %.08510.i, %.critedge.i ], [ %i.ag, %bb.m ], [ %i.ay, %bb.q ], [ %i.ba, %bb.r ], [ %i.bd, %bb.t ] ; 2 uses
  %.3.i = phi i64 [ %i.bh, %bb.u ], [ %spec.select.i, %.critedge.i ], [ %i.ai, %bb.m ], [ %i.ax, %bb.q ], [ %i.y, %bb.r ], [ %i.bf, %bb.t ] ; 2 uses
  %i.bj = icmp slt i64 %.3.i, %.val33
  br i1 %i.bj, label %bb.i, label %._crit_edge.i, !llvm.loop !55

._crit_edge.i:                                    ; preds = %bb.v, %bb.j, %.preheader6.i
  %.085.lcssa.i = phi i64 [ 0, %.preheader6.i ], [ %.186.i, %bb.v ], [ %.08510.i, %bb.j ]
  %i.bk = call ptr @PyBytes_FromStringAndSize(ptr noundef nonnull %i.r, i64 noundef %.085.lcssa.i) #6
  call void @PyMem_Free(ptr noundef nonnull %i.r) #6
  br label %binascii_a2b_qp_impl.exit

binascii_a2b_qp_impl.exit:                        ; preds = %._crit_edge.i, %bb.h, %bb.f, %.thread, %bb.d
  %.023 = phi ptr [ null, %bb.f ], [ null, %bb.d ], [ null, %.thread ], [ null, %bb.h ], [ %i.bk, %._crit_edge.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !25
  %.not31 = icmp eq ptr %i.bm, null
  br i1 %.not31, label %bb.x, label %bb.w

bb.w:                                             ; preds = %binascii_a2b_qp_impl.exit
  call void @PyBuffer_Release(ptr noundef nonnull %4) #6
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %binascii_a2b_qp_impl.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.023
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_b2a_qp(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 3 uses
  %4 = alloca %struct.Py_buffer, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.d = add i64 %i.c, %2                         ; 2 uses
  %i.e = add i64 %i.d, -1                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  %i.f = add i64 %2, -1
  %i.g = icmp ult i64 %i.f, 4
  %i.h = icmp ne ptr %1, null
  %i.i = and i1 %i.h, %i.g
  %or.cond5 = and i1 %.not, %i.i
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @binascii_b2a_qp._parser, i32 noundef 1, i32 noundef 4, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #6 ; 2 uses
  %.not48 = icmp eq ptr %i.j, null
  br i1 %.not48, label %binascii_b2a_qp_impl.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %i.j, %bb.d ], [ %1, %bb.c ]   ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = call i32 @PyObject_GetBuffer(ptr noundef %i.l, ptr noundef nonnull %4, i32 noundef 0) #6
  %.not49 = icmp eq i32 %i.m, 0
  br i1 %.not49, label %bb.e, label %binascii_b2a_qp_impl.exit

bb.e:                                             ; preds = %.thread
  %.not50 = icmp eq i64 %i.e, 0
  br i1 %.not50, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15   ; 2 uses
  %.not51 = icmp eq ptr %i.o, null
  br i1 %.not51, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.o) #6 ; 3 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %binascii_b2a_qp_impl.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = add i64 %i.d, -2                         ; 2 uses
  %.not52 = icmp eq i64 %i.r, 0
  br i1 %.not52, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.036 = phi i64 [ %i.r, %bb.h ], [ %i.e, %bb.f ]
  %.034 = phi i32 [ %i.p, %bb.h ], [ 0, %bb.f ]   ; 2 uses
  %i.s = getelementptr i8, ptr %i.k, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15   ; 2 uses
  %.not53 = icmp eq ptr %i.t, null
  br i1 %.not53, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.t) #6 ; 3 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %binascii_b2a_qp_impl.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = icmp ugt i64 %.036, 1
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i
  %.033 = phi i32 [ %i.u, %bb.k ], [ 1, %bb.i ]
  %i.x = getelementptr i8, ptr %i.k, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15
  %i.z = call i32 @PyObject_IsTrue(ptr noundef %i.y) #6 ; 2 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %binascii_b2a_qp_impl.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.h, %bb.e
  %.135 = phi i32 [ %.034, %bb.l ], [ %.034, %bb.k ], [ %i.p, %bb.h ], [ 0, %bb.e ]
  %.1 = phi i32 [ %.033, %bb.l ], [ %i.u, %bb.k ], [ 1, %bb.h ], [ 1, %bb.e ]
  %.0 = phi i32 [ %i.z, %bb.l ], [ 0, %bb.k ], [ 0, %bb.h ], [ 0, %bb.e ]
  %.val55 = load ptr, ptr %4, align 8, !tbaa !17  ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val56 = load i64, ptr %i.ab, align 8, !tbaa !22 ; 12 uses
  %i.ac = call ptr @memchr(ptr noundef readonly %.val55, i32 noundef 10, i64 noundef %.val56) #7 ; 2 uses
  %i.ad = icmp ugt ptr %i.ac, %.val55
  br i1 %i.ad, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr i8, ptr %i.ac, i64 -1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !16
  %i.ag = icmp ne i8 %i.af, 13
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not274.i = phi i1 [ true, %bb.m ], [ %i.ag, %bb.n ] ; 6 uses
  %i.ah = icmp sgt i64 %.val56, 0
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.o
  %.not278.i = icmp ne i32 %.0, 0                 ; 3 uses
  %.not279.i = icmp eq i32 %.1, 0                 ; 4 uses
  %.not282.i = icmp eq i32 %.135, 0               ; 2 uses
  %.300.i = select i1 %.not274.i, i64 3, i64 4
  %..i = select i1 %.not274.i, i64 5, i64 6
  br label %bb.q

bb.p:                                             ; preds = %bb.ao
  %i.ai = add i64 %.4.i, %.02396.i                ; 2 uses
  %i.aj = icmp slt i64 %.1223.i, %.val56
  br i1 %i.aj, label %bb.q, label %._crit_edge.i

bb.q:                                             ; preds = %bb.p, %.lr.ph.i
  %.02228.i = phi i64 [ 0, %.lr.ph.i ], [ %.1223.i, %bb.p ] ; 9 uses
  %.02267.i = phi i32 [ 0, %.lr.ph.i ], [ %.3229.i, %bb.p ] ; 6 uses
  %.02396.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ai, %bb.p ] ; 2 uses
  %i.ak = getelementptr i8, ptr %.val55, i64 %.02228.i ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !16  ; 12 uses
  %i.am = icmp ugt i8 %i.al, 126
  %i.an = icmp eq i8 %i.al, 61
  %or.cond293.i = or i1 %i.am, %i.an
  %i.ao = icmp eq i8 %i.al, 95
  %or.cond294.i = and i1 %.not278.i, %i.ao
  %or.cond16.i = or i1 %or.cond293.i, %or.cond294.i
  br i1 %or.cond16.i, label %bb.ab, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = icmp eq i8 %i.al, 46
  %i.aq = icmp eq i32 %.02267.i, 0
  %or.cond.i = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ar = add nsw i64 %.02228.i, 1                ; 2 uses
  %i.as = icmp eq i64 %i.ar, %.val56
  br i1 %i.as, label %bb.ab, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = getelementptr i8, ptr %.val55, i64 %i.ar
  %i.au = load i8, ptr %i.at, align 1, !tbaa !16
  switch i8 %i.au, label %bb.u [
    i8 10, label %bb.ab
    i8 13, label %bb.ab
    i8 0, label %bb.ab
  ]

bb.u:                                             ; preds = %bb.t, %bb.r
  br i1 %.not279.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  switch i8 %i.al, label %bb.y [
    i8 13, label %bb.ab
    i8 10, label %bb.ab
    i8 9, label %bb.x
    i8 32, label %bb.x
  ]

bb.w:                                             ; preds = %bb.u
  switch i8 %i.al, label %bb.y [
    i8 9, label %bb.x
    i8 32, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w, %bb.v, %bb.v
  %i.av = add nsw i64 %.02228.i, 1
  %i.aw = icmp eq i64 %i.av, %.val56
  br i1 %i.aw, label %bb.ab, label %switch.early.test.i

bb.y:                                             ; preds = %bb.w, %bb.v
end_hunk_1
begin_hunk_2_@binascii_b2a_qp:bb.a
    i8 13, label %bb.be
    i8 10, label %bb.be
  ]

bb.ay:                                            ; preds = %switch.early.test310.i
  br i1 %.not282.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  switch i8 %i.cf, label %bb.ba [
    i8 9, label %bb.be
    i8 32, label %bb.be
  ]

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.aw, %bb.au, %bb.au, %.preheader.i
  %i.cs = add i32 %.423011.i, -73
  %i.ct = icmp ult i32 %i.cs, -76
  br i1 %i.ct, label %bb.bb, label %.thread4.i

bb.bb:                                            ; preds = %bb.ba
  %i.cu = add i64 %.02319.i, 1                    ; 2 uses
  %i.cv = getelementptr i8, ptr %i.bz, i64 %.02319.i
  store i8 61, ptr %i.cv, align 1, !tbaa !16
  br i1 %.not274.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cw = add i64 %.02319.i, 2
  %i.cx = getelementptr i8, ptr %i.bz, i64 %i.cu
  store i8 13, ptr %i.cx, align 1, !tbaa !16
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.1232.i = phi i64 [ %i.cw, %bb.bc ], [ %i.cu, %bb.bb ] ; 2 uses
  %i.cy = add i64 %.1232.i, 1
  %i.cz = getelementptr i8, ptr %i.bz, i64 %.1232.i
  store i8 10, ptr %i.cz, align 1, !tbaa !16
  br label %.thread4.i

.thread4.i:                                       ; preds = %bb.bd, %bb.ba, %bb.as, %bb.as, %bb.as, %bb.ar
  %.2233.i = phi i64 [ %i.cy, %bb.bd ], [ %.02319.i, %bb.ba ], [ %.02319.i, %bb.as ], [ %.02319.i, %bb.as ], [ %.02319.i, %bb.as ], [ %.02319.i, %bb.ar ] ; 2 uses
  %.5.i = phi i32 [ 0, %bb.bd ], [ %.423011.i, %bb.ba ], [ 0, %bb.as ], [ 0, %bb.as ], [ 0, %bb.as ], [ 0, %bb.ar ]
  %i.da = getelementptr i8, ptr %i.bz, i64 %.2233.i ; 3 uses
  store i8 61, ptr %i.da, align 1, !tbaa !16
  %i.db = load i8, ptr %i.ce, align 1, !tbaa !16
  %i.dc = getelementptr i8, ptr %i.da, i64 1
  %i.dd = zext i8 %i.db to i32                    ; 2 uses
  %i.de = and i32 %i.dd, 15
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr i8, ptr @.str.62, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !16
  %i.di = getelementptr i8, ptr %i.da, i64 2
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !16
  %i.dj = lshr i32 %i.dd, 4
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr i8, ptr @.str.62, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !16
  store i8 %i.dm, ptr %i.dc, align 1, !tbaa !16
  %i.dn = add i64 %.2233.i, 3
  %i.do = add nsw i64 %.222412.i, 1
  %i.dp = add nsw i32 %.5.i, 3
  br label %bb.by

bb.be:                                            ; preds = %bb.az, %bb.az, %switch.early.test310.i, %switch.early.test310.i, %bb.ax
  br i1 %.not279.i, label %._crit_edge20.i, label %bb.bf

._crit_edge20.i:                                  ; preds = %bb.be
  %.pre21.i = add nsw i64 %.222412.i, 1
  br label %bb.bq

bb.bf:                                            ; preds = %bb.be
  %i.dq = icmp eq i8 %i.cf, 10
  br i1 %i.dq, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dr = add nsw i64 %.222412.i, 1               ; 4 uses
  %i.ds = icmp slt i64 %i.dr, %.val56
  %i.dt = icmp eq i8 %i.cf, 13
  %or.cond305.i = and i1 %i.ds, %i.dt
  br i1 %or.cond305.i, label %bb.bh, label %bb.bq

bb.bh:                                            ; preds = %bb.bg
  %i.du = getelementptr i8, ptr %.val55, i64 %i.dr
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !16
  %i.dw = icmp eq i8 %i.dv, 10
  br i1 %i.dw, label %bb.bi, label %bb.bq

bb.bi:                                            ; preds = %bb.bh, %bb.bf
  %.not275.i = icmp eq i64 %.02319.i, 0
  br i1 %.not275.i, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.dx = getelementptr i8, ptr %i.bz, i64 %.02319.i ; 3 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 -1     ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !16  ; 2 uses
  switch i8 %i.dz, label %bb.bl [
    i8 32, label %bb.bk
    i8 9, label %bb.bk
  ]

bb.bk:                                            ; preds = %bb.bj, %bb.bj
  store i8 61, ptr %i.dy, align 1, !tbaa !16
  %i.ea = zext nneg i8 %i.dz to i32               ; 2 uses
  %i.eb = and i32 %i.ea, 15
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr i8, ptr @.str.62, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !16
  %i.ef = getelementptr i8, ptr %i.dx, i64 1
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !16
  %i.eg = lshr i32 %i.ea, 4
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr i8, ptr @.str.62, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !16
  store i8 %i.ej, ptr %i.dx, align 1, !tbaa !16
  %i.ek = add i64 %.02319.i, 2
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %.3234.i = phi i64 [ %i.ek, %bb.bk ], [ %.02319.i, %bb.bj ], [ 0, %bb.bi ] ; 3 uses
  br i1 %.not274.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.el = add i64 %.3234.i, 1
  %i.em = getelementptr i8, ptr %i.bz, i64 %.3234.i
  store i8 13, ptr %i.em, align 1, !tbaa !16
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.4235.i = phi i64 [ %i.el, %bb.bm ], [ %.3234.i, %bb.bl ] ; 2 uses
  %i.en = add i64 %.4235.i, 1                     ; 2 uses
  %i.eo = getelementptr i8, ptr %i.bz, i64 %.4235.i
  store i8 10, ptr %i.eo, align 1, !tbaa !16
  %i.ep = load i8, ptr %i.ce, align 1, !tbaa !16
  %i.eq = icmp eq i8 %i.ep, 13
  br i1 %i.eq, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.er = add i64 %.222412.i, 2
  br label %bb.by

bb.bp:                                            ; preds = %bb.bn
  %i.es = add nsw i64 %.222412.i, 1
  br label %bb.by

bb.bq:                                            ; preds = %bb.bh, %bb.bg, %._crit_edge20.i
  %.pre-phi.i = phi i64 [ %.pre21.i, %._crit_edge20.i ], [ %i.dr, %bb.bh ], [ %i.dr, %bb.bg ] ; 4 uses
  %.not272.i = icmp eq i64 %.pre-phi.i, %.val56
  br i1 %.not272.i, label %bb.bv, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.et = getelementptr i8, ptr %.val55, i64 %.pre-phi.i
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !16
  %.not273.i = icmp ne i8 %i.eu, 10
  %i.ev = add i32 %.423011.i, -75
  %i.ew = icmp ult i32 %i.ev, -76
  %or.cond307.i = select i1 %.not273.i, i1 %i.ew, i1 false
  br i1 %or.cond307.i, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %bb.br
  %i.ex = add i64 %.02319.i, 1                    ; 2 uses
  %i.ey = getelementptr i8, ptr %i.bz, i64 %.02319.i
  store i8 61, ptr %i.ey, align 1, !tbaa !16
  br i1 %.not274.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ez = add i64 %.02319.i, 2
  %i.fa = getelementptr i8, ptr %i.bz, i64 %i.ex
  store i8 13, ptr %i.fa, align 1, !tbaa !16
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.5236.i = phi i64 [ %i.ez, %bb.bt ], [ %i.ex, %bb.bs ] ; 2 uses
  %i.fb = add i64 %.5236.i, 1
  %i.fc = getelementptr i8, ptr %i.bz, i64 %.5236.i
  store i8 10, ptr %i.fc, align 1, !tbaa !16
  %.pre.pre.i = load i8, ptr %i.ce, align 1, !tbaa !16
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.br, %bb.bq
  %.pre.i = phi i8 [ %.pre.pre.i, %bb.bu ], [ %i.cf, %bb.bq ], [ %i.cf, %bb.br ] ; 2 uses
  %.6237.i = phi i64 [ %i.fb, %bb.bu ], [ %.02319.i, %bb.bq ], [ %.02319.i, %bb.br ] ; 2 uses
  %.6.i = phi i32 [ 0, %bb.bu ], [ %.423011.i, %bb.bq ], [ %.423011.i, %bb.br ]
  %i.fd = add i32 %.6.i, 1                        ; 2 uses
  %i.fe = icmp eq i8 %.pre.i, 32
  %or.cond32.i = select i1 %.not278.i, i1 %i.fe, i1 false
  %i.ff = add i64 %.6237.i, 1                     ; 2 uses
  %i.fg = getelementptr i8, ptr %i.bz, i64 %.6237.i ; 2 uses
  br i1 %or.cond32.i, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i8 95, ptr %i.fg, align 1, !tbaa !16
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  store i8 %.pre.i, ptr %i.fg, align 1, !tbaa !16
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bp, %bb.bo, %.thread4.i
  %.7238.i = phi i64 [ %i.dn, %.thread4.i ], [ %i.en, %bb.bo ], [ %i.en, %bb.bp ], [ %i.ff, %bb.bw ], [ %i.ff, %bb.bx ] ; 2 uses
  %.7.i = phi i32 [ %i.dp, %.thread4.i ], [ 0, %bb.bo ], [ 0, %bb.bp ], [ %i.fd, %bb.bw ], [ %i.fd, %bb.bx ]
  %.3225.i = phi i64 [ %i.do, %.thread4.i ], [ %i.er, %bb.bo ], [ %i.es, %bb.bp ], [ %.pre-phi.i, %bb.bw ], [ %.pre-phi.i, %bb.bx ] ; 2 uses
  %i.fh = icmp slt i64 %.3225.i, %.val56
  br i1 %i.fh, label %.preheader.i, label %._crit_edge14.i, !llvm.loop !56

._crit_edge14.i:                                  ; preds = %bb.by, %._crit_edge.thread.i
  %i.fi = phi ptr [ %i.cb, %._crit_edge.thread.i ], [ %i.bz, %bb.by ] ; 2 uses
  %.0231.lcssa.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %.7238.i, %bb.by ]
  %i.fj = call ptr @PyBytes_FromStringAndSize(ptr noundef nonnull %i.fi, i64 noundef %.0231.lcssa.i) #6
  call void @PyMem_Free(ptr noundef nonnull %i.fi) #6
  br label %binascii_b2a_qp_impl.exit

binascii_b2a_qp_impl.exit:                        ; preds = %._crit_edge14.i, %bb.ap, %.thread1.i, %bb.l, %bb.j, %bb.g, %.thread, %bb.d
  %.037 = phi ptr [ null, %.thread ], [ null, %bb.g ], [ null, %bb.j ], [ null, %bb.l ], [ null, %bb.d ], [ null, %.thread1.i ], [ null, %bb.ap ], [ %i.fj, %._crit_edge14.i ]
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !25
  %.not54 = icmp eq ptr %i.fl, null
  br i1 %.not54, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %binascii_b2a_qp_impl.exit
  call void @PyBuffer_Release(ptr noundef nonnull %4) #6
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %binascii_b2a_qp_impl.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.037
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 131073) i32 @ascii_buffer_converter(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @PyBuffer_Release(ptr noundef nonnull %1) #6
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val15 = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.c = getelementptr i8, ptr %.val15, i64 168
  %.val16 = load i64, ptr %i.c, align 8, !tbaa !58
  %i.d = and i64 %.val16, 268435456
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %0, i64 32
  %.val17 = load i32, ptr %i.e, align 8           ; 2 uses
  %i.f = and i32 %.val17, 64
  %.not14 = icmp eq i32 %i.f, 0
  br i1 %.not14, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !15
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.20) #6
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.h = and i32 %.val17, 32
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.0.i.i = getelementptr i8, ptr %0, i64 40
  br label %_PyUnicode_DATA.exit

bb.h:                                             ; preds = %bb.f
  %i.i = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.i, align 8, !tbaa !16
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %.0.i.i, %bb.g ], [ %.val4.i, %bb.h ]
  store ptr %.0.i, ptr %1, align 8, !tbaa !17
  %i.j = getelementptr i8, ptr %0, i64 16
  %.val18 = load i64, ptr %i.j, align 8, !tbaa !63
  %i.k = getelementptr i8, ptr %1, i64 16
  store i64 %.val18, ptr %i.k, align 8, !tbaa !22
  %i.l = getelementptr i8, ptr %1, i64 8
  store ptr null, ptr %i.l, align 8, !tbaa !25
  br label %bb.k

bb.i:                                             ; preds = %bb.c
  %i.m = tail call i32 @PyObject_GetBuffer(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0) #6
  %.not13 = icmp eq i32 %i.m, 0
  br i1 %.not13, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !15
  %.val = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.o = getelementptr i8, ptr %.val, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.q = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.n, ptr noundef nonnull @.str.21, ptr noundef %i.p) #6 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %_PyUnicode_DATA.exit, %bb.e, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 1, %_PyUnicode_DATA.exit ], [ 0, %bb.e ], [ 0, %bb.j ], [ 131072, %bb.i ]
  ret i32 %.0
}

declare void @PyBuffer_Release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyObject_GetBuffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @PyBytesWriter_Create(i64 noundef) local_unnamed_addr #1

declare ptr @PyBytesWriter_GetData(ptr noundef) local_unnamed_addr #1

declare ptr @PyBytesWriter_Finish(ptr noundef) local_unnamed_addr #1

declare void @PyBytesWriter_Discard(ptr noundef) local_unnamed_addr #1

declare ptr @PyModule_GetState(ptr noundef) local_unnamed_addr #1

declare ptr @_PyArg_UnpackKeywords(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyObject_IsTrue(ptr noundef) local_unnamed_addr #1

declare ptr @PyBytesWriter_FinishWithPointer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @_PyLong_Size_t_Converter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @base85_decode_impl(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !17
  %i.b = getelementptr i8, ptr %1, i64 16         ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !22   ; 3 uses
  %i.d = add i64 %i.c, 4
  %i.e = udiv i64 %i.d, 5
  %i.f = shl nuw i64 %i.e, 2
  %i.g = tail call ptr @PyBytesWriter_Create(i64 noundef %i.f) #6 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.g) #6 ; 2 uses
  %i.j = icmp sgt i64 %i.c, 0
  br i1 %i.j, label %.lr.ph85, label %._crit_edge

.lr.ph85:                                         ; preds = %bb.b, %.loopexit
  %i.k = phi i1 [ %i.bb, %.loopexit ], [ true, %bb.b ]
  %.04884 = phi ptr [ %i.ba, %.loopexit ], [ %i.a, %bb.b ] ; 2 uses
  %.05083 = phi i32 [ %.151, %.loopexit ], [ 0, %bb.b ] ; 2 uses
  %.05282 = phi i32 [ %.153, %.loopexit ], [ 0, %bb.b ] ; 3 uses
  %.05481 = phi ptr [ %.2, %.loopexit ], [ %i.i, %bb.b ] ; 7 uses
  %.05780 = phi i64 [ %i.az, %.loopexit ], [ %i.c, %bb.b ] ; 7 uses
  br i1 %i.k, label %bb.c, label %.thread

bb.c:                                             ; preds = %.lr.ph85
  %i.l = load i8, ptr %.04884, align 1, !tbaa !16
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr i8, ptr %2, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !16    ; 2 uses
  %i.p = zext nneg i8 %i.o to i32
  %i.q = icmp ult i8 %i.o, 85
  br i1 %i.q, label %.thread, label %bb.i

.thread:                                          ; preds = %.lr.ph85, %bb.c
  %.04966 = phi i32 [ %i.p, %bb.c ], [ 84, %.lr.ph85 ] ; 3 uses
  %i.r = icmp eq i32 %.05083, 4
  br i1 %i.r, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.thread
  %i.s = icmp ugt i32 %.05282, 50529027
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = mul nuw i32 %.05282, 85                  ; 2 uses
  %i.u = xor i32 %.04966, -1
  %i.v = icmp ugt i32 %i.t, %i.u
  br i1 %i.v, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = tail call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not64 = icmp eq ptr %i.w, null
  br i1 %.not64, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !10
  %i.y = load i64, ptr %i.b, align 8, !tbaa !22
  %i.z = sub i64 %i.y, %.05780
  %.fr = freeze i64 %i.z                          ; 2 uses
  %i.aa = srem i64 %.fr, 5
  %i.ab = sub nsw i64 %.fr, %i.aa
  %i.ac = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.x, ptr noundef nonnull @.str.49, ptr noundef %3, i64 noundef %i.ab) #6 ; 0 uses
  br label %bb.l

bb.h:                                             ; preds = %.thread
  %i.ad = mul i32 %.05282, 85
  %i.ae = add i32 %.04966, %i.ad
  %i.af = add i32 %.05083, 1
  br label %.loopexit

bb.i:                                             ; preds = %bb.c
  %i.ag = tail call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !10
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !22
  %i.aj = sub i64 %i.ai, %.05780
  %i.ak = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ah, ptr noundef nonnull @.str.50, ptr noundef %3, i64 noundef %i.aj) #6 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.al = add i32 %.04966, %i.t                   ; 4 uses
  %i.am = icmp sgt i64 %.05780, -3
  br i1 %i.am, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.k
  %i.an = lshr i32 %i.al, 24
  %i.ao = trunc nuw i32 %i.an to i8
  %i.ap = getelementptr i8, ptr %.05481, i64 1    ; 2 uses
  store i8 %i.ao, ptr %.05481, align 1, !tbaa !16
  %.not99 = icmp eq i64 %.05780, -2
  br i1 %.not99, label %.loopexit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.aq = lshr i32 %i.al, 16
  %i.ar = trunc i32 %i.aq to i8
  %i.as = getelementptr i8, ptr %.05481, i64 2    ; 2 uses
  store i8 %i.ar, ptr %i.ap, align 1, !tbaa !16
  %i.at = icmp sgt i64 %.05780, -1
  br i1 %i.at, label %.lr.ph.2, label %.loopexit

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.au = lshr i32 %i.al, 8
  %i.av = trunc i32 %i.au to i8
  %i.aw = getelementptr i8, ptr %.05481, i64 3    ; 2 uses
  store i8 %i.av, ptr %i.as, align 1, !tbaa !16
  %.not100 = icmp eq i64 %.05780, 0
  br i1 %.not100, label %.loopexit, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.ax = trunc i32 %i.al to i8
  %i.ay = getelementptr i8, ptr %.05481, i64 4
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %bb.k, %bb.h
  %.2 = phi ptr [ %.05481, %bb.h ], [ %.05481, %bb.k ], [ %i.ap, %.lr.ph ], [ %i.as, %.lr.ph.1 ], [ %i.aw, %.lr.ph.2 ], [ %i.ay, %.lr.ph.3 ] ; 2 uses
  %.153 = phi i32 [ %i.ae, %bb.h ], [ 0, %bb.k ], [ 0, %.lr.ph.3 ], [ 0, %.lr.ph.2 ], [ 0, %.lr.ph.1 ], [ 0, %.lr.ph ]
  %.151 = phi i32 [ %i.af, %bb.h ], [ 0, %bb.k ], [ 0, %.lr.ph.3 ], [ 0, %.lr.ph.2 ], [ 0, %.lr.ph.1 ], [ 0, %.lr.ph ] ; 2 uses
  %i.az = add i64 %.05780, -1                     ; 2 uses
  %i.ba = getelementptr i8, ptr %.04884, i64 1
  %i.bb = icmp sgt i64 %i.az, 0                   ; 2 uses
  %i.bc = icmp ne i32 %.151, 0
  %i.bd = select i1 %i.bb, i1 true, i1 %i.bc
  br i1 %i.bd, label %.lr.ph85, label %._crit_edge, !llvm.loop !67

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  %.054.lcssa = phi ptr [ %i.i, %bb.b ], [ %.2, %.loopexit ]
  %i.be = tail call ptr @PyBytesWriter_FinishWithPointer(ptr noundef nonnull %i.g, ptr noundef %.054.lcssa) #6
  br label %bb.m

bb.l:                                             ; preds = %bb.f, %bb.i, %bb.g, %bb.j
  tail call void @PyBytesWriter_Discard(ptr noundef nonnull %i.g) #6
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.l, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.be, %._crit_edge ], [ null, %bb.l ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @base85_encode_impl(ptr noundef %0, ptr nofree readonly captures(none) %.0.val, i64 %.16.val, i32 noundef range(i32 0, -2147483648) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = add i64 %.16.val, 3
  %i.b = lshr i64 %i.a, 2
  %i.c = mul i64 %i.b, 5                          ; 3 uses
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = srem i64 %.16.val, 4                     ; 2 uses
  %.not80 = icmp eq i64 %i.d, 0
  br i1 %.not80, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.neg = add nsw i64 %i.d, -4
  %i.e = add i64 %.neg, %i.c
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.076 = phi i64 [ %i.c, %bb.a ], [ %i.e, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %i.f = icmp slt i64 %.076, 0
  br i1 %i.f, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.g = tail call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.j = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.i, ptr noundef nonnull @.str.51, ptr noundef %3) #6 ; 0 uses
  br label %bb.p

bb.g:                                             ; preds = %bb.d
  %i.k = tail call ptr @PyBytesWriter_Create(i64 noundef %.076) #6 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = tail call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.k) #6 ; 2 uses
  %i.n = icmp sgt i64 %.16.val, 3
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %.0703 = phi ptr [ %i.bi, %.lr.ph ], [ %.0.val, %bb.h ] ; 5 uses
  %.0732 = phi ptr [ %i.bg, %.lr.ph ], [ %i.m, %bb.h ] ; 6 uses
  %.0751 = phi i64 [ %i.bh, %.lr.ph ], [ %.16.val, %bb.h ] ; 2 uses
  %i.o = load i8, ptr %.0703, align 1, !tbaa !16
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw i32 %i.p, 24
  %i.r = getelementptr i8, ptr %.0703, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !16
  %i.t = zext i8 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 16
  %i.v = or disjoint i32 %i.u, %i.q
  %i.w = getelementptr i8, ptr %.0703, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !16
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 8
  %i.aa = or disjoint i32 %i.v, %i.z
  %i.ab = getelementptr i8, ptr %.0703, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !16
  %i.ad = zext i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.aa, %i.ad            ; 5 uses
  %i.af = urem i32 %i.ae, 85
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr i8, ptr %2, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !16
  %i.aj = getelementptr i8, ptr %.0732, i64 4
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !16
  %i.ak = udiv i32 %i.ae, 85
  %i.al = urem i32 %i.ak, 85
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr i8, ptr %2, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !16
  %i.ap = getelementptr i8, ptr %.0732, i64 3
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !16
  %i.aq = udiv i32 %i.ae, 7225
  %i.ar = urem i32 %i.aq, 85
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr i8, ptr %2, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !16
  %i.av = getelementptr i8, ptr %.0732, i64 2
  store i8 %i.au, ptr %i.av, align 1, !tbaa !16
  %i.aw = udiv i32 %i.ae, 614125
  %.lhs.trunc = trunc nuw nsw i32 %i.aw to i16
  %i.ax = urem i16 %.lhs.trunc, 85
  %i.ay = zext nneg i16 %i.ax to i64
  %i.az = getelementptr i8, ptr %2, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !16
  %i.bb = getelementptr i8, ptr %.0732, i64 1
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !16
  %i.bc = udiv i32 %i.ae, 52200625
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr i8, ptr %2, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !16
  store i8 %i.bf, ptr %.0732, align 1, !tbaa !16
  %i.bg = getelementptr i8, ptr %.0732, i64 5     ; 2 uses
  %i.bh = add nsw i64 %.0751, -4                  ; 2 uses
  %i.bi = getelementptr i8, ptr %.0703, i64 4     ; 2 uses
  %i.bj = icmp samesign ugt i64 %.0751, 7
  br i1 %i.bj, label %.lr.ph, label %._crit_edge, !llvm.loop !68

._crit_edge:                                      ; preds = %.lr.ph, %bb.h
  %.075.lcssa = phi i64 [ %.16.val, %bb.h ], [ %i.bh, %.lr.ph ] ; 4 uses
  %.073.lcssa = phi ptr [ %i.m, %bb.h ], [ %i.bg, %.lr.ph ] ; 7 uses
  %.070.lcssa = phi ptr [ %.0.val, %bb.h ], [ %i.bi, %.lr.ph ] ; 3 uses
  %i.bk = icmp sgt i64 %.075.lcssa, 0
  br i1 %i.bk, label %.preheader.1, label %bb.o

.preheader.1:                                     ; preds = %._crit_edge
  %i.bl = load i8, ptr %.070.lcssa, align 1, !tbaa !16
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %.not15 = icmp eq i64 %.075.lcssa, 1
  br i1 %.not15, label %.preheader.2.thread, label %.preheader.2

.preheader.2.thread:                              ; preds = %.preheader.1
  %i.bn = shl nuw nsw i32 %i.bm, 16
  br label %bb.j

.preheader.2:                                     ; preds = %.preheader.1
  %i.bo = getelementptr i8, ptr %.070.lcssa, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !16
  %i.bq = zext i8 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bm, 16
  %i.bs = shl nuw nsw i32 %i.bq, 8
  %i.bt = or disjoint i32 %i.br, %i.bs            ; 2 uses
  %i.bu = icmp samesign ugt i64 %.075.lcssa, 2
  br i1 %i.bu, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader.2
  %i.bv = getelementptr i8, ptr %.070.lcssa, i64 2
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !16
  %i.bx = zext i8 %i.bw to i32
  %i.by = or disjoint i32 %i.bt, %i.bx
  br label %bb.j

bb.j:                                             ; preds = %.preheader.2, %bb.i, %.preheader.2.thread
  %.168.2 = phi i32 [ %i.by, %bb.i ], [ %i.bt, %.preheader.2 ], [ %i.bn, %.preheader.2.thread ]
  %i.bz = shl nuw i32 %.168.2, 8                  ; 5 uses
  %i.ca = add nuw nsw i64 %.075.lcssa, 1
  %i.cb = select i1 %.not, i64 %i.ca, i64 5       ; 4 uses
  %i.cc = icmp samesign ugt i64 %i.cb, 4
  br i1 %i.cc, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  %i.cd = urem i32 %i.bz, 85
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr i8, ptr %2, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !16
  %i.ch = getelementptr i8, ptr %.073.lcssa, i64 4
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !16
  br label %.thread18

bb.k:                                             ; preds = %bb.j
  %i.ci = icmp eq i64 %i.cb, 4
  br i1 %i.ci, label %.thread18, label %bb.l

.thread18:                                        ; preds = %bb.k, %.thread
  %i.cj = udiv i32 %i.bz, 85
  %i.ck = urem i32 %i.cj, 85
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr i8, ptr %2, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !16
  %i.co = getelementptr i8, ptr %.073.lcssa, i64 3
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !16
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cp = icmp samesign ugt i64 %i.cb, 2
  br i1 %i.cp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread18, %bb.l
  %i.cq = udiv i32 %i.bz, 7225
  %i.cr = urem i32 %i.cq, 85
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr i8, ptr %2, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !16
  %i.cv = getelementptr i8, ptr %.073.lcssa, i64 2
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cw = udiv i32 %i.bz, 614125
  %.lhs.trunc19 = trunc nuw nsw i32 %i.cw to i16
  %i.cx = urem i16 %.lhs.trunc19, 85
  %i.cy = zext nneg i16 %i.cx to i64
  %i.cz = getelementptr i8, ptr %2, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !16
  %i.db = getelementptr i8, ptr %.073.lcssa, i64 1
  store i8 %i.da, ptr %i.db, align 1, !tbaa !16
  %i.dc = udiv i32 %i.bz, 52200625
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr i8, ptr %2, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !16
  store i8 %i.df, ptr %.073.lcssa, align 1, !tbaa !16
  %i.dg = getelementptr i8, ptr %.073.lcssa, i64 %i.cb
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %.174 = phi ptr [ %i.dg, %bb.n ], [ %.073.lcssa, %._crit_edge ]
  %i.dh = tail call ptr @PyBytesWriter_FinishWithPointer(ptr noundef nonnull %i.k, ptr noundef %.174) #6
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.g, %bb.f, %bb.e
  %.2 = phi ptr [ null, %bb.f ], [ null, %bb.e ], [ %i.dh, %bb.o ], [ null, %bb.g ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @binascii_a2b_hex_impl(ptr noundef %0, ptr nofree readonly captures(none) %.0.val, i64 %.16.val) unnamed_addr #0 {
bb.a:
  %i.a = and i64 %.16.val, 1
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !10
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.53) #6
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.e = ashr exact i64 %.16.val, 1
  %i.f = tail call ptr @PyBytesWriter_Create(i64 noundef %i.e) #6 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.f) #6
  %i.i = icmp sgt i64 %.16.val, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %bb.h
  %.0294 = phi i64 [ %i.ac, %bb.h ], [ 0, %bb.e ] ; 2 uses
  %.0303 = phi i64 [ %i.aa, %bb.h ], [ 0, %bb.e ] ; 2 uses
  %i.j = getelementptr i8, ptr %.0.val, i64 %.0294 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !16    ; 2 uses
  %i.o = getelementptr i8, ptr %i.j, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !16
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !16    ; 2 uses
  %i.t = icmp ugt i8 %i.n, 15
  %i.u = icmp ugt i8 %i.s, 15
  %or.cond = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.v = tail call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !10
  tail call void @PyErr_SetString(ptr noundef %i.x, ptr noundef nonnull @.str.54) #6
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.y = shl nuw i8 %i.n, 4
  %i.z = or disjoint i8 %i.s, %i.y
  %i.aa = add i64 %.0303, 1
  %i.ab = getelementptr i8, ptr %i.h, i64 %.0303
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !16
  %i.ac = add i64 %.0294, 2                       ; 2 uses
  %i.ad = icmp slt i64 %i.ac, %.16.val
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !69

._crit_edge:                                      ; preds = %bb.h, %bb.e
  %i.ae = tail call ptr @PyBytesWriter_Finish(ptr noundef nonnull %i.f) #6
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  tail call void @PyBytesWriter_Discard(ptr noundef nonnull %i.f) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.i, %._crit_edge, %bb.b, %bb.c
  %.2 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ %i.ae, %._crit_edge ], [ null, %bb.i ]
  ret ptr %.2
}

declare i32 @PyLong_AsInt(ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_Occurred() local_unnamed_addr #1

declare ptr @_Py_strhex_bytes_with_sep(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @PyLong_AsNativeBytes(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @PyErr_WarnEx(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyLong_FromUnsignedLong(i64 noundef) local_unnamed_addr #1

declare ptr @PyEval_SaveThread() local_unnamed_addr #1

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @PyEval_RestoreThread(ptr noundef) local_unnamed_addr #1

declare ptr @PyMem_Calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyErr_NoMemory() local_unnamed_addr #1

declare ptr @PyBytes_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @binascii_exec(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @PyModule_GetState(ptr noundef %0) #6 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !15
  %i.d = tail call ptr @PyErr_NewException(ptr noundef nonnull @.str.64, ptr noundef %i.c, ptr noundef null) #6 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !10
  %i.e = tail call i32 @PyModule_AddObjectRef(ptr noundef %0, ptr noundef nonnull @.str.65, ptr noundef %i.d) #6
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @PyErr_NewException(ptr noundef nonnull @.str.66, ptr noundef null, ptr noundef null) #6 ; 2 uses
  %i.h = getelementptr i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !14
  %i.i = tail call i32 @PyModule_AddObjectRef(ptr noundef %0, ptr noundef nonnull @.str.67, ptr noundef %i.g) #6
  %.lobit = ashr i32 %i.i, 31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ %.lobit, %bb.c ]
  ret i32 %.0
}

declare ptr @PyErr_NewException(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyModule_AddObjectRef(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 0}
!11 = !{!"binascii_state", !12, i64 0, !12, i64 8}
!12 = !{!"p1 _ZTS7_object", !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!11, !12, i64 8}
!15 = !{!12, !12, i64 0}
!16 = !{!8, !8, i64 0}
!17 = !{!18, !13, i64 0}
!18 = !{!"", !13, i64 0, !12, i64 8, !19, i64 16, !19, i64 24, !7, i64 32, !7, i64 36, !20, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !13, i64 72}
!19 = !{!"long", !8, i64 0}
!20 = !{!"p1 omnipotent char", !13, i64 0}
!21 = !{!"p1 long", !13, i64 0}
!22 = !{!18, !19, i64 16}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!18, !12, i64 8}
!26 = !{!27, !19, i64 16}
!27 = !{!"PyVarObject", !28, i64 0, !19, i64 16}
!28 = !{!"_object", !8, i64 0, !29, i64 8}
!29 = !{!"p1 _ZTS11_typeobject", !13, i64 0}
!30 = distinct !{!30, !24, !31, !32}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = !{!"branch_weights", i32 4, i32 12}
!34 = distinct !{!34, !24, !31, !32}
!35 = distinct !{!35, !24}
!36 = distinct !{!36, !24, !32, !31}
!37 = distinct !{!37, !24, !31, !32}
!38 = distinct !{!38, !24, !31, !32}
!39 = distinct !{!39, !24, !32, !31}
!40 = distinct !{!40, !24}
!41 = distinct !{!41, !24}
!42 = !{!19, !19, i64 0}
!43 = distinct !{!43, !24}
!44 = distinct !{!44, !24, !45}
!45 = !{!"llvm.loop.peeled.count", i32 1}
!46 = distinct !{!46, !24}
!47 = distinct !{!47, !24, !31, !32}
!48 = distinct !{!48, !24, !32, !31}
!49 = distinct !{!49, !24}
!50 = !{!51, !51, i64 0}
!51 = !{!"short", !8, i64 0}
!52 = distinct !{!52, !24}
!53 = distinct !{!53, !24}
!54 = distinct !{!54, !24}
!55 = distinct !{!55, !24}
!56 = distinct !{!56, !24}
!57 = !{!28, !29, i64 8}
!58 = !{!59, !19, i64 168}
!59 = !{!"_typeobject", !27, i64 0, !20, i64 24, !19, i64 32, !19, i64 40, !13, i64 48, !19, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !19, i64 168, !20, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !19, i64 208, !13, i64 216, !13, i64 224, !60, i64 232, !61, i64 240, !62, i64 248, !29, i64 256, !12, i64 264, !13, i64 272, !13, i64 280, !19, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !13, i64 360, !12, i64 368, !13, i64 376, !7, i64 384, !13, i64 392, !13, i64 400, !8, i64 408, !51, i64 410}
!60 = !{!"p1 _ZTS11PyMethodDef", !13, i64 0}
!61 = !{!"p1 _ZTS11PyMemberDef", !13, i64 0}
!62 = !{!"p1 _ZTS11PyGetSetDef", !13, i64 0}
!63 = !{!64, !19, i64 16}
!64 = !{!"", !28, i64 0, !19, i64 16, !19, i64 24, !65, i64 32}
!65 = !{!"_PyUnicodeObject_state", !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0}
!66 = !{!59, !20, i64 24}
!67 = distinct !{!67, !24}
!68 = distinct !{!68, !24}
!69 = distinct !{!69, !24}
end_hunk_2
