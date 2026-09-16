Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/binascii?download=true
inline.NumInlined: 74
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@binascii_a2b_uu:bb.a
  br i1 %i.o, label %bb.j, label %.sink.split.i

bb.f:                                             ; preds = %bb.d
  %i.p = and i8 %i.l, 63
  %i.q = xor i8 %i.p, 32
  %i.r = zext nneg i8 %i.q to i32
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %switch.early.test.i, %switch.early.test.i, %.lr.ph.i
  %.065.i = phi i32 [ %i.r, %bb.f ], [ 0, %switch.early.test.i ], [ 0, %switch.early.test.i ], [ 0, %.lr.ph.i ]
  %i.s = shl i32 %.0636.i, 6
  %i.t = or i32 %.065.i, %i.s                     ; 3 uses
  %i.u = add nuw nsw i32 %.0665.i, 6
  %i.v = icmp sgt i32 %.0665.i, 1
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread.i
  %i.w = add nsw i32 %.0665.i, -2                 ; 3 uses
  %i.x = lshr i32 %i.t, %i.w
  %i.y = trunc i32 %i.x to i8
  %i.z = getelementptr i8, ptr %.08.i, i64 1
  store i8 %i.y, ptr %.08.i, align 1, !tbaa !17
  %notmask.i = shl nsw i32 -1, %i.w
  %i.aa = xor i32 %notmask.i, -1
  %i.ab = and i32 %i.t, %i.aa
  %i.ac = add nsw i64 %.0597.i, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread.i
  %.167.i = phi i32 [ %i.w, %bb.g ], [ %i.u, %.thread.i ]
  %.164.i = phi i32 [ %i.ab, %bb.g ], [ %i.t, %.thread.i ]
  %.160.i = phi i64 [ %i.ac, %bb.g ], [ %.0597.i, %.thread.i ] ; 2 uses
  %.1.i = phi ptr [ %i.z, %bb.g ], [ %.08.i, %.thread.i ]
  %.068.i = getelementptr i8, ptr %.0689.i, i64 1 ; 2 uses
  %.061.i = add i64 %.06110.i, -1                 ; 2 uses
  %i.ad = icmp sgt i64 %.160.i, 0
  br i1 %i.ad, label %.lr.ph.i, label %.preheader.i, !llvm.loop !36

.lr.ph14.i:                                       ; preds = %.preheader.i, %.backedge.i
  %.16213.i = phi i64 [ %i.ag, %.backedge.i ], [ %.061.lcssa.i, %.preheader.i ] ; 2 uses
  %.16912.i = phi ptr [ %i.af, %.backedge.i ], [ %.068.lcssa.i, %.preheader.i ] ; 2 uses
  %i.ae = load i8, ptr %.16912.i, align 1, !tbaa !17
  switch i8 %i.ae, label %bb.i [
    i8 96, label %.backedge.i
    i8 32, label %.backedge.i
    i8 13, label %.backedge.i
    i8 10, label %.backedge.i
  ]

.backedge.i:                                      ; preds = %.lr.ph14.i, %.lr.ph14.i, %.lr.ph14.i, %.lr.ph14.i
  %i.af = getelementptr i8, ptr %.16912.i, i64 1
  %i.ag = add nsw i64 %.16213.i, -1
  %i.ah = icmp sgt i64 %.16213.i, 1
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
  %i.al = load ptr, ptr %.sink21.i, align 8, !tbaa !14
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
  %.val = load i64, ptr %i.b, align 8, !tbaa !29
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
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.k = call i32 @PyObject_GetBuffer(ptr noundef %i.j, ptr noundef nonnull %4, i32 noundef 0) #6
  %.not29 = icmp eq i32 %i.k, 0
  br i1 %.not29, label %bb.e, label %binascii_b2a_uu_impl.exit

bb.e:                                             ; preds = %.thread
  %.not30 = icmp eq i64 %i.d, 1
  br i1 %.not30, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.n = call i32 @PyObject_IsTrue(ptr noundef %i.m) #6 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %binascii_b2a_uu_impl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ %i.n, %bb.f ], [ 0, %bb.e ]
  %.val32 = load ptr, ptr %4, align 8, !tbaa !22  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val33 = load i64, ptr %i.p, align 8, !tbaa !23 ; 7 uses
  %i.q = icmp sgt i64 %.val33, 45
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.r = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %binascii_b2a_uu_impl.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !14
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
  store i8 %storemerge.i, ptr %i.aa, align 1, !tbaa !17
  %i.af = icmp sgt i64 %.val33, 0
  br i1 %i.af, label %.lr.ph11.i, label %._crit_edge12.i

.lr.ph11.i:                                       ; preds = %bb.k
  br i1 %i.ab, label %.lr.ph11.split.us.i, label %.lr.ph11.split.i

.lr.ph11.split.us.i:                              ; preds = %.lr.ph11.i, %._crit_edge.split.us.us.i
  %i.ag = phi i1 [ %i.bt, %._crit_edge.split.us.us.i ], [ true, %.lr.ph11.i ]
  %.19.us.i = phi ptr [ %.2.lcssa.us.i, %._crit_edge.split.us.us.i ], [ %.0.i, %.lr.ph11.i ] ; 6 uses
  %.0398.us.i = phi i64 [ %i.br, %._crit_edge.split.us.us.i ], [ %.val33, %.lr.ph11.i ]
  %.0407.us.i = phi i32 [ %.141.us.i, %._crit_edge.split.us.us.i ], [ 0, %.lr.ph11.i ]
  %.0426.us.i = phi i32 [ %.143.lcssa.us.i, %._crit_edge.split.us.us.i ], [ 0, %.lr.ph11.i ] ; 3 uses
  %.0445.us.i = phi ptr [ %i.bs, %._crit_edge.split.us.us.i ], [ %.val32, %.lr.ph11.i ] ; 2 uses
  %i.ah = shl i32 %.0407.us.i, 8                  ; 2 uses
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph11.split.us.i
  %i.ai = load i8, ptr %.0445.us.i, align 1, !tbaa !17
  %i.aj = zext i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.ah, %i.aj
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph11.split.us.i
  %.141.us.i = phi i32 [ %i.ak, %bb.l ], [ %i.ah, %.lr.ph11.split.us.i ] ; 4 uses
  %i.al = add nsw i32 %.0426.us.i, 8              ; 6 uses
  %i.am = icmp sgt i32 %.0426.us.i, -3
  br i1 %i.am, label %iter.check87, label %._crit_edge.split.us.us.i

iter.check87:                                     ; preds = %bb.m
  %i.an = add i32 %.0426.us.i, 2                  ; 3 uses
  %i.ao = udiv i32 %i.an, 6
  %narrow108 = add nuw nsw i32 %i.ao, 1
  %i.ap = zext nneg i32 %narrow108 to i64         ; 5 uses
  %min.iters.check67 = icmp ult i32 %i.an, 42
  br i1 %min.iters.check67, label %.lr.ph.us.i.preheader, label %vector.main.loop.iter.check68

vector.main.loop.iter.check68:                    ; preds = %iter.check87
  %min.iters.check69 = icmp ult i32 %i.an, 90
  br i1 %min.iters.check69, label %vec.epilog.ph91, label %vector.ph70

vector.ph70:                                      ; preds = %vector.main.loop.iter.check68
  %i.aq = and i64 %i.ap, 8
  %n.vec71 = and i64 %i.ap, 2147483632            ; 5 uses
  %i.ar = getelementptr i8, ptr %.19.us.i, i64 %n.vec71 ; 2 uses
  %i.as = trunc nuw nsw i64 %n.vec71 to i32
  %i.at = mul i32 %i.as, -6
  %i.au = add i32 %i.al, %i.at                    ; 3 uses
  %broadcast.splatinsert72 = insertelement <16 x i32> poison, i32 %.141.us.i, i64 0
  %broadcast.splat73 = shufflevector <16 x i32> %broadcast.splatinsert72, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert74 = insertelement <16 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat75 = shufflevector <16 x i32> %broadcast.splatinsert74, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction76 = add nsw <16 x i32> %broadcast.splat75, <i32 0, i32 -6, i32 -12, i32 -18, i32 -24, i32 -30, i32 -36, i32 -42, i32 -48, i32 -54, i32 -60, i32 -66, i32 -72, i32 -78, i32 -84, i32 -90>
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph70
  %index78 = phi i64 [ 0, %vector.ph70 ], [ %index.next81, %vector.body77 ] ; 2 uses
  %vec.ind79 = phi <16 x i32> [ %induction76, %vector.ph70 ], [ %vec.ind.next82, %vector.body77 ] ; 2 uses
  %next.gep80 = getelementptr i8, ptr %.19.us.i, i64 %index78
  %i.av = add nsw <16 x i32> %vec.ind79, splat (i32 -6)
  %i.aw = lshr <16 x i32> %broadcast.splat73, %i.av
  %i.ax = trunc <16 x i32> %i.aw to <16 x i8>
  %i.ay = and <16 x i8> %i.ax, splat (i8 63)
  %i.az = add nuw nsw <16 x i8> %i.ay, splat (i8 32)
  store <16 x i8> %i.az, ptr %next.gep80, align 1, !tbaa !17
  %index.next81 = add nuw i64 %index78, 16        ; 2 uses
  %vec.ind.next82 = add nsw <16 x i32> %vec.ind79, splat (i32 -96)
  %i.ba = icmp eq i64 %index.next81, %n.vec71
  br i1 %i.ba, label %middle.block83, label %vector.body77, !llvm.loop !37

middle.block83:                                   ; preds = %vector.body77
  %cmp.n84 = icmp eq i64 %n.vec71, %i.ap
  br i1 %cmp.n84, label %._crit_edge.split.us.us.i, label %vec.epilog.iter.check89

vec.epilog.iter.check89:                          ; preds = %middle.block83
  %min.epilog.iters.check90.not.not = icmp eq i64 %i.aq, 0
  br i1 %min.epilog.iters.check90.not.not, label %.lr.ph.us.i.preheader, label %vec.epilog.ph91, !prof !44

vec.epilog.ph91:                                  ; preds = %vector.main.loop.iter.check68, %vec.epilog.iter.check89
  %vec.epilog.resume.val85 = phi i64 [ %n.vec71, %vec.epilog.iter.check89 ], [ 0, %vector.main.loop.iter.check68 ]
  %bc.resume.val86 = phi i32 [ %i.au, %vec.epilog.iter.check89 ], [ %i.al, %vector.main.loop.iter.check68 ]
  %n.vec92 = and i64 %i.ap, 2147483640            ; 4 uses
  %i.bb = getelementptr i8, ptr %.19.us.i, i64 %n.vec92 ; 2 uses
  %i.bc = trunc nuw nsw i64 %n.vec92 to i32
  %i.bd = mul i32 %i.bc, -6
  %i.be = add i32 %i.al, %i.bd                    ; 2 uses
  %broadcast.splatinsert93 = insertelement <8 x i32> poison, i32 %.141.us.i, i64 0
  %broadcast.splat94 = shufflevector <8 x i32> %broadcast.splatinsert93, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert95 = insertelement <8 x i32> poison, i32 %bc.resume.val86, i64 0
  %broadcast.splat96 = shufflevector <8 x i32> %broadcast.splatinsert95, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction97 = add nsw <8 x i32> %broadcast.splat96, <i32 0, i32 -6, i32 -12, i32 -18, i32 -24, i32 -30, i32 -36, i32 -42>
  br label %vec.epilog.vector.body98

vec.epilog.vector.body98:                         ; preds = %vec.epilog.vector.body98, %vec.epilog.ph91
  %index99 = phi i64 [ %vec.epilog.resume.val85, %vec.epilog.ph91 ], [ %index.next102, %vec.epilog.vector.body98 ] ; 2 uses
  %vec.ind100 = phi <8 x i32> [ %induction97, %vec.epilog.ph91 ], [ %vec.ind.next103, %vec.epilog.vector.body98 ] ; 2 uses
  %next.gep101 = getelementptr i8, ptr %.19.us.i, i64 %index99
  %i.bf = add nsw <8 x i32> %vec.ind100, splat (i32 -6)
  %i.bg = lshr <8 x i32> %broadcast.splat94, %i.bf
  %i.bh = trunc <8 x i32> %i.bg to <8 x i8>
  %i.bi = and <8 x i8> %i.bh, splat (i8 63)
  %i.bj = add nuw nsw <8 x i8> %i.bi, splat (i8 32)
  store <8 x i8> %i.bj, ptr %next.gep101, align 1, !tbaa !17
  %index.next102 = add nuw i64 %index99, 8        ; 2 uses
  %vec.ind.next103 = add nsw <8 x i32> %vec.ind100, splat (i32 -48)
  %i.bk = icmp eq i64 %index.next102, %n.vec92
  br i1 %i.bk, label %vec.epilog.middle.block104, label %vec.epilog.vector.body98, !llvm.loop !38

vec.epilog.middle.block104:                       ; preds = %vec.epilog.vector.body98
  %cmp.n105 = icmp eq i64 %n.vec92, %i.ap
  br i1 %cmp.n105, label %._crit_edge.split.us.us.i, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %iter.check87, %vec.epilog.iter.check89, %vec.epilog.middle.block104
  %.22.us.us.i.ph = phi ptr [ %.19.us.i, %iter.check87 ], [ %i.ar, %vec.epilog.iter.check89 ], [ %i.bb, %vec.epilog.middle.block104 ]
  %.1431.us.us.i.ph = phi i32 [ %i.al, %iter.check87 ], [ %i.au, %vec.epilog.iter.check89 ], [ %i.be, %vec.epilog.middle.block104 ]
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %.lr.ph.us.i
  %.22.us.us.i = phi ptr [ %.3.us.us.i, %.lr.ph.us.i ], [ %.22.us.us.i.ph, %.lr.ph.us.i.preheader ] ; 2 uses
  %.1431.us.us.i = phi i32 [ %i.bl, %.lr.ph.us.i ], [ %.1431.us.us.i.ph, %.lr.ph.us.i.preheader ] ; 2 uses
  %i.bl = add nsw i32 %.1431.us.us.i, -6          ; 3 uses
  %i.bm = lshr i32 %.141.us.i, %i.bl
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = and i8 %i.bn, 63
  %i.bp = add nuw nsw i8 %i.bo, 32
  %.3.us.us.i = getelementptr i8, ptr %.22.us.us.i, i64 1 ; 2 uses
  store i8 %i.bp, ptr %.22.us.us.i, align 1, !tbaa !17
  %i.bq = icmp samesign ugt i32 %.1431.us.us.i, 11
  br i1 %i.bq, label %.lr.ph.us.i, label %._crit_edge.split.us.us.i, !llvm.loop !39

._crit_edge.split.us.us.i:                        ; preds = %.lr.ph.us.i, %middle.block83, %vec.epilog.middle.block104, %bb.m
  %.143.lcssa.us.i = phi i32 [ %i.al, %bb.m ], [ %i.be, %vec.epilog.middle.block104 ], [ %i.au, %middle.block83 ], [ %i.bl, %.lr.ph.us.i ] ; 2 uses
  %.2.lcssa.us.i = phi ptr [ %.19.us.i, %bb.m ], [ %i.bb, %vec.epilog.middle.block104 ], [ %i.ar, %middle.block83 ], [ %.3.us.us.i, %.lr.ph.us.i ] ; 2 uses
  %i.br = add i64 %.0398.us.i, -1                 ; 2 uses
  %i.bs = getelementptr i8, ptr %.0445.us.i, i64 1
  %i.bt = icmp sgt i64 %i.br, 0                   ; 2 uses
  %i.bu = icmp ne i32 %.143.lcssa.us.i, 0
  %i.bv = or i1 %i.bt, %i.bu
  br i1 %i.bv, label %.lr.ph11.split.us.i, label %._crit_edge12.i, !llvm.loop !40

.lr.ph11.split.i:                                 ; preds = %.lr.ph11.i, %._crit_edge.split.i
  %i.bw = phi i1 [ %i.dq, %._crit_edge.split.i ], [ true, %.lr.ph11.i ]
  %.19.i = phi ptr [ %.2.lcssa.i, %._crit_edge.split.i ], [ %.0.i, %.lr.ph11.i ] ; 6 uses
  %.0398.i = phi i64 [ %i.do, %._crit_edge.split.i ], [ %.val33, %.lr.ph11.i ]
  %.0407.i = phi i32 [ %.141.i, %._crit_edge.split.i ], [ 0, %.lr.ph11.i ]
  %.0426.i = phi i32 [ %.143.lcssa.i, %._crit_edge.split.i ], [ 0, %.lr.ph11.i ] ; 3 uses
  %.0445.i = phi ptr [ %i.dp, %._crit_edge.split.i ], [ %.val32, %.lr.ph11.i ] ; 2 uses
  %i.bx = shl i32 %.0407.i, 8                     ; 2 uses
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph11.split.i
  %i.by = load i8, ptr %.0445.i, align 1, !tbaa !17
  %i.bz = zext i8 %i.by to i32
  %i.ca = or disjoint i32 %i.bx, %i.bz
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph11.split.i
  %.141.i = phi i32 [ %i.ca, %bb.n ], [ %i.bx, %.lr.ph11.split.i ] ; 4 uses
  %i.cb = add nsw i32 %.0426.i, 8                 ; 6 uses
  %i.cc = icmp sgt i32 %.0426.i, -3
  br i1 %i.cc, label %iter.check, label %._crit_edge.split.i

iter.check:                                       ; preds = %bb.o
  %i.cd = add i32 %.0426.i, 2                     ; 3 uses
  %i.ce = udiv i32 %i.cd, 6
  %narrow = add nuw nsw i32 %i.ce, 1
  %i.cf = zext nneg i32 %narrow to i64            ; 5 uses
  %min.iters.check = icmp ult i32 %i.cd, 18
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check49 = icmp ult i32 %i.cd, 90
  br i1 %min.iters.check49, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cg = and i64 %i.cf, 12
  %n.vec = and i64 %i.cf, 2147483632              ; 5 uses
  %i.ch = getelementptr i8, ptr %.19.i, i64 %n.vec ; 2 uses
  %i.ci = trunc nuw nsw i64 %n.vec to i32
  %i.cj = mul i32 %i.ci, -6
  %i.ck = add i32 %i.cb, %i.cj                    ; 3 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %.141.i, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert50 = insertelement <16 x i32> poison, i32 %i.cb, i64 0
  %broadcast.splat51 = shufflevector <16 x i32> %broadcast.splatinsert50, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add nsw <16 x i32> %broadcast.splat51, <i32 0, i32 -6, i32 -12, i32 -18, i32 -24, i32 -30, i32 -36, i32 -42, i32 -48, i32 -54, i32 -60, i32 -66, i32 -72, i32 -78, i32 -84, i32 -90>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.19.i, i64 %index
  %i.cl = add nsw <16 x i32> %vec.ind, splat (i32 -6)
  %i.cm = lshr <16 x i32> %broadcast.splat, %i.cl ; 2 uses
  %i.cn = and <16 x i32> %i.cm, splat (i32 63)
  %i.co = icmp eq <16 x i32> %i.cn, zeroinitializer
  %i.cp = trunc <16 x i32> %i.cm to <16 x i8>
  %i.cq = and <16 x i8> %i.cp, splat (i8 63)
  %i.cr = add nuw nsw <16 x i8> %i.cq, splat (i8 32)
  %i.cs = select <16 x i1> %i.co, <16 x i8> splat (i8 96), <16 x i8> %i.cr
  store <16 x i8> %i.cs, ptr %next.gep, align 1, !tbaa !17
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nsw <16 x i32> %vec.ind, splat (i32 -96)
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.cf
  br i1 %cmp.n, label %._crit_edge.split.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cg, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !32

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val52 = phi i32 [ %i.ck, %vec.epilog.iter.check ], [ %i.cb, %vector.main.loop.iter.check ]
  %n.vec53 = and i64 %i.cf, 2147483644            ; 4 uses
  %i.cu = getelementptr i8, ptr %.19.i, i64 %n.vec53 ; 2 uses
  %i.cv = trunc nuw nsw i64 %n.vec53 to i32
  %i.cw = mul i32 %i.cv, -6
  %i.cx = add i32 %i.cb, %i.cw                    ; 2 uses
  %broadcast.splatinsert54 = insertelement <4 x i32> poison, i32 %.141.i, i64 0
  %broadcast.splat55 = shufflevector <4 x i32> %broadcast.splatinsert54, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert56 = insertelement <4 x i32> poison, i32 %bc.resume.val52, i64 0
  %broadcast.splat57 = shufflevector <4 x i32> %broadcast.splatinsert56, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction58 = add nsw <4 x i32> %broadcast.splat57, <i32 0, i32 -6, i32 -12, i32 -18>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index59 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next62, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind60 = phi <4 x i32> [ %induction58, %vec.epilog.ph ], [ %vec.ind.next63, %vec.epilog.vector.body ] ; 2 uses
  %next.gep61 = getelementptr i8, ptr %.19.i, i64 %index59
  %i.cy = add nsw <4 x i32> %vec.ind60, splat (i32 -6)
  %i.cz = lshr <4 x i32> %broadcast.splat55, %i.cy ; 2 uses
  %i.da = and <4 x i32> %i.cz, splat (i32 63)
  %i.db = icmp eq <4 x i32> %i.da, zeroinitializer
  %i.dc = trunc <4 x i32> %i.cz to <4 x i8>
  %i.dd = and <4 x i8> %i.dc, splat (i8 63)
  %i.de = add nuw nsw <4 x i8> %i.dd, splat (i8 32)
  %i.df = select <4 x i1> %i.db, <4 x i8> splat (i8 96), <4 x i8> %i.de
  store <4 x i8> %i.df, ptr %next.gep61, align 1, !tbaa !17
  %index.next62 = add nuw i64 %index59, 4         ; 2 uses
  %vec.ind.next63 = add nsw <4 x i32> %vec.ind60, splat (i32 -24)
  %i.dg = icmp eq i64 %index.next62, %n.vec53
  br i1 %i.dg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !42

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n64 = icmp eq i64 %n.vec53, %i.cf
  br i1 %cmp.n64, label %._crit_edge.split.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.22.i.ph = phi ptr [ %.19.i, %iter.check ], [ %i.ch, %vec.epilog.iter.check ], [ %i.cu, %vec.epilog.middle.block ]
  %.1431.i.ph = phi i32 [ %i.cb, %iter.check ], [ %i.ck, %vec.epilog.iter.check ], [ %i.cx, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.22.i = phi ptr [ %.3.i, %.lr.ph.i ], [ %.22.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.1431.i = phi i32 [ %i.dh, %.lr.ph.i ], [ %.1431.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.dh = add nsw i32 %.1431.i, -6                ; 3 uses
  %i.di = lshr i32 %.141.i, %i.dh                 ; 2 uses
  %i.dj = and i32 %i.di, 63
  %.not.i = icmp eq i32 %i.dj, 0
  %i.dk = trunc i32 %i.di to i8
  %i.dl = and i8 %i.dk, 63
  %i.dm = add nuw nsw i8 %i.dl, 32
  %spec.select.i = select i1 %.not.i, i8 96, i8 %i.dm
  %.3.i = getelementptr i8, ptr %.22.i, i64 1     ; 2 uses
  store i8 %spec.select.i, ptr %.22.i, align 1, !tbaa !17
  %i.dn = icmp samesign ugt i32 %.1431.i, 11
  br i1 %i.dn, label %.lr.ph.i, label %._crit_edge.split.i, !llvm.loop !43

._crit_edge.split.i:                              ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.o
  %.143.lcssa.i = phi i32 [ %i.cb, %bb.o ], [ %i.cx, %vec.epilog.middle.block ], [ %i.ck, %middle.block ], [ %i.dh, %.lr.ph.i ] ; 2 uses
  %.2.lcssa.i = phi ptr [ %.19.i, %bb.o ], [ %i.cu, %vec.epilog.middle.block ], [ %i.ch, %middle.block ], [ %.3.i, %.lr.ph.i ] ; 2 uses
  %i.do = add i64 %.0398.i, -1                    ; 2 uses
  %i.dp = getelementptr i8, ptr %.0445.i, i64 1
  %i.dq = icmp sgt i64 %i.do, 0                   ; 2 uses
  %i.dr = icmp ne i32 %.143.lcssa.i, 0
  %i.ds = or i1 %i.dq, %i.dr
  br i1 %i.ds, label %.lr.ph11.split.i, label %._crit_edge12.i, !llvm.loop !40

._crit_edge12.i:                                  ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i, %bb.k
  %.1.lcssa.i = phi ptr [ %.0.i, %bb.k ], [ %.2.lcssa.us.i, %._crit_edge.split.us.us.i ], [ %.2.lcssa.i, %._crit_edge.split.i ] ; 2 uses
  %i.dt = getelementptr i8, ptr %.1.lcssa.i, i64 1
  store i8 10, ptr %.1.lcssa.i, align 1, !tbaa !17
  %i.du = call ptr @PyBytesWriter_FinishWithPointer(ptr noundef nonnull %i.y, ptr noundef %i.dt) #6
  br label %binascii_b2a_uu_impl.exit

binascii_b2a_uu_impl.exit:                        ; preds = %._crit_edge12.i, %bb.j, %bb.i, %bb.h, %bb.f, %.thread, %bb.d
  %.023 = phi ptr [ null, %.thread ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.h ], [ null, %bb.i ], [ %i.du, %._crit_edge12.i ], [ null, %bb.j ]
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !25
  %.not31 = icmp eq ptr %i.dw, null
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
  %.0122157.i.sroa.gep = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !29
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
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.m = call fastcc i32 @ascii_buffer_converter(ptr noundef %i.l, ptr noundef %4)
  %.not34 = icmp eq i32 %i.m, 0
  br i1 %.not34, label %bb.az, label %bb.e

bb.e:                                             ; preds = %.thread
  %.not35 = icmp eq i64 %i.f, 0
  br i1 %.not35, label %.thread42, label %bb.f

.thread42:                                        ; preds = %bb.e
  %i.n = load ptr, ptr %4, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !23
  br label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.k, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !16   ; 2 uses
  %.not36 = icmp eq ptr %i.r, null
  br i1 %.not36, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.r) #6 ; 3 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.az, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not37 = icmp eq i64 %i.f, 1
end_hunk_0
begin_hunk_1_@base85_encode_impl:bb.a
  %i.ck = urem i32 %i.cj, 85
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr i8, ptr %2, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !17
  %i.co = getelementptr i8, ptr %.070.lcssa, i64 3
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !17
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cp = icmp samesign ugt i64 %i.cb, 2
  br i1 %i.cp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread18, %bb.l
  %i.cq = udiv i32 %i.bz, 7225
  %i.cr = urem i32 %i.cq, 85
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr i8, ptr %2, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !17
  %i.cv = getelementptr i8, ptr %.070.lcssa, i64 2
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cw = udiv i32 %i.bz, 614125
  %.lhs.trunc19 = trunc nuw nsw i32 %i.cw to i16
  %i.cx = urem i16 %.lhs.trunc19, 85
  %i.cy = zext nneg i16 %i.cx to i64
  %i.cz = getelementptr i8, ptr %2, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !17
  %i.db = getelementptr i8, ptr %.070.lcssa, i64 1
  store i8 %i.da, ptr %i.db, align 1, !tbaa !17
  %i.dc = udiv i32 %i.bz, 52200625
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr i8, ptr %2, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !17
  store i8 %i.df, ptr %.070.lcssa, align 1, !tbaa !17
  %i.dg = getelementptr i8, ptr %.070.lcssa, i64 %i.cb
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %.171 = phi ptr [ %i.dg, %bb.n ], [ %.070.lcssa, %._crit_edge ]
  %i.dh = tail call ptr @PyBytesWriter_FinishWithPointer(ptr noundef nonnull %i.k, ptr noundef %.171) #6
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.g, %bb.f, %bb.e
  %.269 = phi ptr [ null, %bb.f ], [ null, %bb.e ], [ %i.dh, %bb.o ], [ null, %bb.g ]
  ret ptr %.269
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
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !14
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
  %.0294 = phi i64 [ %i.aa, %bb.h ], [ 0, %bb.e ] ; 2 uses
  %.0303 = phi i64 [ %i.ac, %bb.h ], [ 0, %bb.e ] ; 2 uses
  %i.j = getelementptr i8, ptr %.0.val, i64 %.0303 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !17
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !17    ; 2 uses
  %i.o = getelementptr i8, ptr %i.j, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !17
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !17    ; 2 uses
  %i.t = icmp ugt i8 %i.n, 15
  %i.u = icmp ugt i8 %i.s, 15
  %or.cond = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.v = tail call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !14
  tail call void @PyErr_SetString(ptr noundef %i.x, ptr noundef nonnull @.str.54) #6
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.y = shl nuw i8 %i.n, 4
  %i.z = or disjoint i8 %i.s, %i.y
  %i.aa = add i64 %.0294, 1
  %i.ab = getelementptr i8, ptr %i.h, i64 %.0294
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !17
  %i.ac = add i64 %.0303, 2                       ; 2 uses
  %i.ad = icmp slt i64 %i.ac, %.16.val
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !73

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
  %i.c = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !16
  %i.d = tail call ptr @PyErr_NewException(ptr noundef nonnull @.str.64, ptr noundef %i.c, ptr noundef null) #6 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !14
  %i.e = tail call i32 @PyModule_AddObjectRef(ptr noundef %0, ptr noundef nonnull @.str.65, ptr noundef %i.d) #6
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @PyErr_NewException(ptr noundef nonnull @.str.66, ptr noundef null, ptr noundef null) #6 ; 2 uses
  %i.h = getelementptr i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !15
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

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !24, !34}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"p1 _ZTS7_object", !11, i64 0}
!13 = !{!"binascii_state", !12, i64 0, !12, i64 8}
!14 = !{!13, !12, i64 0}
!15 = !{!13, !12, i64 8}
!16 = !{!12, !12, i64 0}
!17 = !{!8, !8, i64 0}
!18 = !{!"long", !8, i64 0}
!19 = !{!"p1 omnipotent char", !11, i64 0}
!20 = !{!"p1 long", !11, i64 0}
!21 = !{!"", !11, i64 0, !12, i64 8, !18, i64 16, !18, i64 24, !9, i64 32, !9, i64 36, !19, i64 40, !20, i64 48, !20, i64 56, !20, i64 64, !11, i64 72}
!22 = !{!21, !11, i64 0}
!23 = !{!21, !18, i64 16}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!21, !12, i64 8}
!26 = !{!"p1 _ZTS11_typeobject", !11, i64 0}
!27 = !{!"_object", !8, i64 0, !26, i64 8}
!28 = !{!"PyVarObject", !27, i64 0, !18, i64 16}
!29 = !{!28, !18, i64 16}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
!32 = !{!"branch_weights", i32 4, i32 12}
!33 = !{!18, !18, i64 0}
!34 = !{!"llvm.loop.peeled.count", i32 1}
!35 = !{!"short", !8, i64 0}
!36 = distinct !{!36, !24}
!37 = distinct !{!37, !24, !30, !31}
!38 = distinct !{!38, !24, !30, !31}
!39 = distinct !{!39, !24, !31, !30}
!40 = distinct !{!40, !24}
!41 = distinct !{!41, !24, !30, !31}
!42 = distinct !{!42, !24, !30, !31}
!43 = distinct !{!43, !24, !31, !30}
!44 = !{!"branch_weights", i32 8, i32 8}
!45 = distinct !{!45, !24}
!46 = distinct !{!46, !24}
!47 = distinct !{!47, !24}
!48 = distinct !{!48, !24}
!49 = distinct !{!49, !24, !30, !31}
!50 = distinct !{!50, !24, !31, !30}
!51 = distinct !{!51, !24, !30, !31}
!52 = distinct !{!52, !24, !30, !31}
!53 = distinct !{!53, !24, !31, !30}
!54 = distinct !{!54, !24}
!55 = distinct !{!55, !24}
!56 = !{!35, !35, i64 0}
!57 = distinct !{!57, !24}
!58 = distinct !{!58, !24}
!59 = distinct !{!59, !24}
!60 = distinct !{!60, !24}
!61 = !{!27, !26, i64 8}
!62 = !{!"p1 _ZTS11PyMethodDef", !11, i64 0}
!63 = !{!"p1 _ZTS11PyMemberDef", !11, i64 0}
!64 = !{!"p1 _ZTS11PyGetSetDef", !11, i64 0}
!65 = !{!"_typeobject", !28, i64 0, !19, i64 24, !18, i64 32, !18, i64 40, !11, i64 48, !18, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !18, i64 168, !19, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !18, i64 208, !11, i64 216, !11, i64 224, !62, i64 232, !63, i64 240, !64, i64 248, !26, i64 256, !12, i64 264, !11, i64 272, !11, i64 280, !18, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !11, i64 360, !12, i64 368, !11, i64 376, !9, i64 384, !11, i64 392, !11, i64 400, !8, i64 408, !35, i64 410}
!66 = !{!65, !18, i64 168}
!67 = !{!"_PyUnicodeObject_state", !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0}
!68 = !{!"", !27, i64 0, !18, i64 16, !18, i64 24, !67, i64 32}
!69 = !{!68, !18, i64 16}
!70 = !{!65, !19, i64 24}
!71 = distinct !{!71, !24}
!72 = distinct !{!72, !24}
!73 = distinct !{!73, !24}
end_hunk_1
