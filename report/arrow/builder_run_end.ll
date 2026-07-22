inline.NumInlined: 872
inline.NumDeleted: 339
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5arrow20RunEndEncodedBuilder18DoAppendArraySliceIiEENS_6StatusERKNS_9ArraySpanEll:bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.pre = load i64, ptr %i.bd, align 8, !tbaa !151
  br label %_ZN5arrow6StatusD2Ev.exit53

_ZN5arrow6StatusD2Ev.exit53:                      ; preds = %_ZN5arrow6StatusD2Ev.exit53.lr.ph, %_ZN5arrow6StatusD2Ev.exit57
  %i.bg = phi i64 [ %.pre, %_ZN5arrow6StatusD2Ev.exit53.lr.ph ], [ %i.bm, %_ZN5arrow6StatusD2Ev.exit57 ]
  %.sroa.11.081 = phi i64 [ %i.am, %_ZN5arrow6StatusD2Ev.exit53.lr.ph ], [ %i.bw, %_ZN5arrow6StatusD2Ev.exit57 ] ; 2 uses
  %.sroa.7.080 = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit53.lr.ph ], [ %.sroa.speculated.i.i, %_ZN5arrow6StatusD2Ev.exit57 ]
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.sroa.11.081 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bj = sext i32 %i.bi to i64
  %i.bk = sub nsw i64 %i.bj, %i.c
  %.sroa.speculated4.i.i.i = call i64 @llvm.smax.i64(i64 %i.bk, i64 0)
  %.sroa.speculated.i.i.i51 = call noundef i64 @llvm.smin.i64(i64 %4, i64 %.sroa.speculated4.i.i.i)
  %i.bl = sub nsw i64 %.sroa.speculated.i.i.i51, %.sroa.7.080
  %i.bm = add nsw i64 %i.bl, %i.bg                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZN5arrow20RunEndEncodedBuilder14DoAppendRunEndIiEENS_6StatusEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 noundef %i.bm)
  %i.bn = load ptr, ptr %7, align 8, !tbaa !86    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_ZN5arrow6StatusD2Ev.exit57, label %.critedge.sink.split

_ZN5arrow6StatusD2Ev.exit57:                      ; preds = %_ZN5arrow6StatusD2Ev.exit53
  %i.bp = load ptr, ptr %i.be, align 8, !tbaa !67
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !58
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 112
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !82
  store i64 %i.bs, ptr %i.ar, align 8, !tbaa !82
  store i64 %i.bm, ptr %i.bf, align 8, !tbaa !84
  store i64 %i.bm, ptr %i.bd, align 8, !tbaa !151
  %i.bt = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bu = sext i32 %i.bt to i64
  %i.bv = sub nsw i64 %i.bu, %i.c                 ; 2 uses
  %.sroa.speculated4.i.i = call i64 @llvm.smax.i64(i64 %i.bv, i64 0)
  %.sroa.speculated.i.i = call noundef i64 @llvm.smin.i64(i64 %4, i64 %.sroa.speculated4.i.i)
  %i.bw = add nsw i64 %.sroa.11.081, 1
  %.not = icmp slt i64 %i.bv, %4
  br i1 %.not, label %_ZN5arrow6StatusD2Ev.exit53, label %.critedge35, !llvm.loop !248

.critedge35:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit57, %_ZN5arrow6StatusD2Ev.exit50
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !165 ; 4 uses
  %i.bz = load ptr, ptr %i.d, align 8, !tbaa !223
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !249
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 144 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !58, !noalias !249 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !54, !noalias !249
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 88
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !249
  call void %i.cf(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(144) %i.cc, ptr noundef nonnull align 8 dereferenceable(128) %i.ca, i64 noundef %i.am, i64 noundef %i.aq), !noalias !249, !inline_history !240
  %i.cg = load ptr, ptr %5, align 8, !tbaa !86, !noalias !249 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !249
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %_ZN5arrow6StatusD2Ev.exit63, label %.critedge.sink.split

_ZN5arrow6StatusD2Ev.exit63:                      ; preds = %.critedge35
  %i.ci = load ptr, ptr %i.cb, align 8, !tbaa !58, !noalias !249 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 112
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !82, !noalias !249
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 112
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !82, !noalias !249
  %i.cm = load ptr, ptr %i.ci, align 8, !tbaa !54, !noalias !249
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !249
  %i.cp = call noundef i64 %i.co(ptr noundef nonnull align 8 dereferenceable(144) %i.ci), !noalias !249, !inline_history !241
  %i.cq = getelementptr inbounds nuw i8, ptr %i.by, i64 104
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !84, !noalias !249
  %i.cr = load ptr, ptr %i.cb, align 8, !tbaa !58, !noalias !249
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !85, !noalias !249
  %i.cu = getelementptr inbounds nuw i8, ptr %i.by, i64 96
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !85, !noalias !249
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %_ZN5arrow6StatusD2Ev.exit53, %.critedge35, %_ZN5arrow6StatusD2Ev.exit63
  %.sink = phi ptr [ %i.cg, %.critedge35 ], [ null, %_ZN5arrow6StatusD2Ev.exit63 ], [ %i.bn, %_ZN5arrow6StatusD2Ev.exit53 ]
  store ptr %.sink, ptr %0, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow20RunEndEncodedBuilder18DoAppendArraySliceIlEENS_6StatusERKNS_9ArraySpanEll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !216
  %i.c = add nsw i64 %i.b, %3                     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !223  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !216
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !224
  %i.j = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.g ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !227  ; 3 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit.thread

_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit.thread: ; preds = %bb.a
  %i.n = ptrtoint ptr %i.j to i64                 ; 2 uses
  br label %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit46

_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i: ; preds = %bb.a, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %.017.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %i.j, %bb.a ] ; 2 uses
  %.01116.i.i.i.i = phi i64 [ %.112.i.i.i.i, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %i.l, %bb.a ] ; 2 uses
  %i.o = lshr i64 %.01116.i.i.i.i, 1              ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.017.i.i.i.i, i64 %i.o ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !252
  %i.r = icmp slt i64 %i.c, %i.q                  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = xor i64 %i.o, -1
  %i.u = add nsw i64 %.01116.i.i.i.i, %i.t
  %.112.i.i.i.i = select i1 %i.r, i64 %i.o, i64 %i.u ; 2 uses
  %.1.i.i.i.i = select i1 %i.r, ptr %.017.i.i.i.i, ptr %i.s ; 2 uses
  %i.v = icmp sgt i64 %.112.i.i.i.i, 0
  br i1 %i.v, label %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit, !llvm.loop !253

_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit: ; preds = %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %i.w = add nsw i64 %4, -1
  %i.x = add nsw i64 %i.w, %i.c
  br label %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i39

_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i39: ; preds = %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i39
  %.017.i.i.i.i40 = phi ptr [ %.1.i.i.i.i45, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i39 ], [ %i.j, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit ] ; 2 uses
  %.01116.i.i.i.i41 = phi i64 [ %.112.i.i.i.i44, %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i39 ], [ %i.l, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit ] ; 2 uses
  %i.y = lshr i64 %.01116.i.i.i.i41, 1            ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.017.i.i.i.i40, i64 %i.y ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !252
  %i.ab = icmp slt i64 %i.x, %i.aa                ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = xor i64 %i.y, -1
  %i.ae = add nsw i64 %.01116.i.i.i.i41, %i.ad
  %.112.i.i.i.i44 = select i1 %i.ab, i64 %i.y, i64 %i.ae ; 2 uses
  %.1.i.i.i.i45 = select i1 %i.ab, ptr %.017.i.i.i.i40, ptr %i.ac ; 2 uses
  %i.af = icmp sgt i64 %.112.i.i.i.i44, 0
  br i1 %i.af, label %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i39, label %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit46.loopexit, !llvm.loop !253

_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit46.loopexit: ; preds = %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i39
  %i.ag = ptrtoint ptr %i.j to i64                ; 2 uses
  %i.ah = ptrtoint ptr %.1.i.i.i.i to i64
  %i.ai = sub i64 %i.ah, %i.ag
  %i.aj = ashr exact i64 %i.ai, 3
  %.pre86 = ptrtoint ptr %.1.i.i.i.i45 to i64
  br label %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit46

_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit46: ; preds = %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit46.loopexit, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit.thread
  %.pre-phi = phi i64 [ %.pre86, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit46.loopexit ], [ %i.n, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit.thread ]
  %i.ak = phi i64 [ %i.aj, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit46.loopexit ], [ 0, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit.thread ] ; 3 uses
  %i.al = phi i64 [ %i.ag, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit46.loopexit ], [ %i.n, %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit.thread ]
  %i.am = sub i64 %.pre-phi, %i.al
  %i.an = ashr exact i64 %i.am, 3
  %reass.sub = sub nsw i64 %i.an, %i.ak
  %i.ao = add nsw i64 %reass.sub, 1               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !82, !noalias !254 ; 2 uses
  %i.ar = load ptr, ptr %1, align 8, !tbaa !54, !noalias !254
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !noalias !254
  %i.au = tail call noundef i64 %i.at(ptr noundef nonnull align 8 dereferenceable(176) %1), !noalias !254, !inline_history !235
  %i.av = add nsw i64 %i.au, %i.ao                ; 2 uses
  %.not.i.i = icmp sgt i64 %i.av, %i.aq
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit.thread

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit46
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %_ZN5arrow6StatusD2Ev.exit50

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE13PhysicalIndexEl.exit46
  %i.aw = shl nsw i64 %i.aq, 1
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.av, i64 %i.aw)
  %i.ax = load ptr, ptr %1, align 8, !tbaa !54, !noalias !254
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !254
  call void %i.az(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 noundef %.sroa.speculated.i.i.i), !inline_history !235
  %.pr = load ptr, ptr %7, align 8, !tbaa !86     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.ba = icmp eq ptr %.pr, null
  br i1 %i.ba, label %_ZN5arrow6StatusD2Ev.exit50, label %.critedge

_ZN5arrow6StatusD2Ev.exit50:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %.not79 = icmp sgt i64 %4, 0
  br i1 %.not79, label %.lr.ph, label %.critedge35

.lr.ph:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit50
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.pre = load i64, ptr %i.bb, align 8, !tbaa !151
  %.pre83 = load ptr, ptr %i.bc, align 8, !tbaa !67, !noalias !259
  %.pre84 = load ptr, ptr %.pre83, align 8, !tbaa !58, !noalias !259
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5arrow6StatusD2Ev.exit57
  %i.be = phi ptr [ %.pre84, %.lr.ph ], [ %i.ct, %_ZN5arrow6StatusD2Ev.exit57 ] ; 10 uses
  %i.bf = phi i64 [ %.pre, %.lr.ph ], [ %i.bk, %_ZN5arrow6StatusD2Ev.exit57 ]
  %.sroa.11.081 = phi i64 [ %i.ak, %.lr.ph ], [ %i.cy, %_ZN5arrow6StatusD2Ev.exit57 ] ; 2 uses
  %.sroa.7.080 = phi i64 [ 0, %.lr.ph ], [ %.sroa.speculated.i.i, %_ZN5arrow6StatusD2Ev.exit57 ]
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.sroa.11.081 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !252
  %i.bi = sub nsw i64 %i.bh, %i.c
  %.sroa.speculated4.i.i.i = call i64 @llvm.smax.i64(i64 %i.bi, i64 0)
  %.sroa.speculated.i.i.i51 = call noundef i64 @llvm.smin.i64(i64 %4, i64 %.sroa.speculated4.i.i.i)
  %i.bj = sub nsw i64 %.sroa.speculated.i.i.i51, %.sroa.7.080
  %i.bk = add nsw i64 %i.bj, %i.bf                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18, !noalias !262
  %8 = getelementptr inbounds nuw i8, ptr %i.be, i64 112
  %9 = load i64, ptr %8, align 8, !tbaa !82, !noalias !265 ; 2 uses
  %i.bl = load ptr, ptr %i.be, align 8, !tbaa !54, !noalias !265
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !265
  %i.bo = call noundef i64 %i.bn(ptr noundef nonnull align 8 dereferenceable(216) %i.be), !noalias !265, !inline_history !268 ; 2 uses
  %.not.i.not.i.i = icmp slt i64 %i.bo, %9
  br i1 %.not.i.not.i.i, label %_ZN5arrow6StatusD2Ev.exit10.thread.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i

_ZN5arrow6StatusD2Ev.exit10.thread.i.i:           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !262
  br label %_ZN5arrow6StatusD2Ev.exit57

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %bb.b
  %i.bp = add nsw i64 %i.bo, 1
  %i.bq = shl nsw i64 %9, 1
  %.sroa.speculated.i.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.bp, i64 %i.bq)
  %i.br = load ptr, ptr %i.be, align 8, !tbaa !54, !noalias !265
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !265
  call void %i.bt(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(216) %i.be, i64 noundef %.sroa.speculated.i.i.i.i), !noalias !262, !inline_history !268
  %.pr.i.i = load ptr, ptr %6, align 8, !tbaa !86, !noalias !262 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !262
  %i.bu = icmp eq ptr %.pr.i.i, null
  br i1 %i.bu, label %_ZN5arrow6StatusD2Ev.exit57, label %.critedge.sink.split

_ZN5arrow6StatusD2Ev.exit57:                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i, %_ZN5arrow6StatusD2Ev.exit10.thread.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !52, !noalias !262
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 80 ; 3 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !269, !noalias !262 ; 2 uses
  %i.bz = sdiv i64 %i.by, 8
  %i.ca = getelementptr inbounds i8, ptr %i.bw, i64 %i.bz ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !65, !noalias !262
  %i.cc = srem i64 %i.by, 8
  %i.cd = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !65, !noalias !262
  %i.cf = or i8 %i.ce, %i.cb
  store i8 %i.cf, ptr %i.ca, align 1, !tbaa !65, !noalias !262
  %i.cg = load i64, ptr %i.bx, align 8, !tbaa !269, !noalias !262
  %i.ch = add nsw i64 %i.cg, 1
  store i64 %i.ch, ptr %i.bx, align 8, !tbaa !269, !noalias !262
  %i.ci = getelementptr inbounds nuw i8, ptr %i.be, i64 104 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !252, !noalias !262
  %i.ck = add nsw i64 %i.cj, 1
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !252, !noalias !262
  %i.cl = getelementptr inbounds nuw i8, ptr %i.be, i64 184
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !52, !noalias !262
  %i.cn = getelementptr inbounds nuw i8, ptr %i.be, i64 200 ; 3 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !270, !noalias !262
  %i.cp = getelementptr inbounds i8, ptr %i.cm, i64 %i.co
  store i64 %i.bk, ptr %i.cp, align 1, !noalias !262
  %i.cq = load i64, ptr %i.cn, align 8, !tbaa !270, !noalias !262
  %i.cr = add nsw i64 %i.cq, 8
  store i64 %i.cr, ptr %i.cn, align 8, !tbaa !270, !noalias !262
  %i.cs = load ptr, ptr %i.bc, align 8, !tbaa !67
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !58 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 112
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !82
  store i64 %i.cv, ptr %i.ap, align 8, !tbaa !82
  store i64 %i.bk, ptr %i.bd, align 8, !tbaa !84
  store i64 %i.bk, ptr %i.bb, align 8, !tbaa !151
  %i.cw = load i64, ptr %i.bg, align 8, !tbaa !252
  %i.cx = sub nsw i64 %i.cw, %i.c                 ; 2 uses
  %.sroa.speculated4.i.i = call i64 @llvm.smax.i64(i64 %i.cx, i64 0)
  %.sroa.speculated.i.i = call noundef i64 @llvm.smin.i64(i64 %4, i64 %.sroa.speculated4.i.i)
  %i.cy = add nsw i64 %.sroa.11.081, 1
  %.not = icmp slt i64 %i.cx, %4
  br i1 %.not, label %bb.b, label %.critedge35, !llvm.loop !271

.critedge35:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit57, %_ZN5arrow6StatusD2Ev.exit50
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !165 ; 4 uses
  %i.db = load ptr, ptr %i.d, align 8, !tbaa !223
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !272
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 144 ; 3 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !58, !noalias !272 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !54, !noalias !272
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 88
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !272
  call void %i.dh(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(144) %i.de, ptr noundef nonnull align 8 dereferenceable(128) %i.dc, i64 noundef %i.ak, i64 noundef %i.ao), !noalias !272, !inline_history !240
  %i.di = load ptr, ptr %5, align 8, !tbaa !86, !noalias !272 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !272
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %_ZN5arrow6StatusD2Ev.exit63, label %.critedge.sink.split

_ZN5arrow6StatusD2Ev.exit63:                      ; preds = %.critedge35
  %i.dk = load ptr, ptr %i.dd, align 8, !tbaa !58, !noalias !272 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 112
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !82, !noalias !272
  %i.dn = getelementptr inbounds nuw i8, ptr %i.da, i64 112
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !82, !noalias !272
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !54, !noalias !272
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !noalias !272
  %i.dr = call noundef i64 %i.dq(ptr noundef nonnull align 8 dereferenceable(144) %i.dk), !noalias !272, !inline_history !241
  %i.ds = getelementptr inbounds nuw i8, ptr %i.da, i64 104
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !84, !noalias !272
  %i.dt = load ptr, ptr %i.dd, align 8, !tbaa !58, !noalias !272
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 96
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !85, !noalias !272
  %i.dw = getelementptr inbounds nuw i8, ptr %i.da, i64 96
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !85, !noalias !272
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i, %.critedge35, %_ZN5arrow6StatusD2Ev.exit63
  %.sink = phi ptr [ %i.di, %.critedge35 ], [ null, %_ZN5arrow6StatusD2Ev.exit63 ], [ %.pr.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i ]
  store ptr %.sink, ptr %0, align 8, !tbaa !86
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define void @_ZNK5arrow20RunEndEncodedBuilder4typeEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.7") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !57
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !57
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2INS0_17RunEndEncodedTypeEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2INS0_17RunEndEncodedTypeEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2INS0_17RunEndEncodedTypeEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2INS0_17RunEndEncodedTypeEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow20RunEndEncodedBuilder14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr nofree noundef captures(none) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.47", align 8 ; 8 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %5 = alloca %"class.std::shared_ptr.50", align 8 ; 7 uses
  %6 = alloca %"class.arrow::Result", align 8     ; 13 uses
  %7 = alloca %"class.std::shared_ptr.50", align 16 ; 7 uses
  %8 = alloca %"class.arrow::Result.55", align 8  ; 13 uses
  %9 = alloca %"class.std::shared_ptr.59", align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(184) %i.b, ptr noundef nonnull %3)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !86     ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN5arrow6StatusD2Ev.exit37, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.bt

_ZN5arrow6StatusD2Ev.exit37:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.50") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit37
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !67
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !58
  invoke void @_ZN5arrow12ArrayBuilder6FinishEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %i.k)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %6, align 8, !tbaa !86
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.i, label %bb.e, !prof !275

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %0, align 8, !tbaa !86
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit37
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.g:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.h:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = load <2 x ptr>, ptr %i.q, align 8, !tbaa !57, !noalias !282
  store ptr null, ptr %i.s, align 8, !tbaa !56, !noalias !282
  store <2 x ptr> %i.t, ptr %7, align 16, !tbaa !57, !alias.scope !282
  store ptr null, ptr %i.q, align 8, !tbaa !283, !noalias !282
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.v = load i64, ptr %i.u, align 8, !tbaa !84
  invoke void @_ZN5arrow18RunEndEncodedArray4MakeElRKSt10shared_ptrINS_5ArrayEES5_l(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.55") align 8 %8, i64 noundef %i.v, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef 0)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %8, align 8, !tbaa !86
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.n, label %bb.k, !prof !275

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %0, align 8, !tbaa !86
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZN5arrow6StatusC2ERKS0_.exit38 unwind label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.m:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !286)
  call void @llvm.experimental.noalias.scope.decl(metadata !289)
end_hunk_0
begin_hunk_1_@llvm.smin.i64
!62 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!63 = !{!62, !4, i64 12}
!64 = distinct !{null, null}
!65 = !{!5, !5, i64 0}
!66 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!67 = !{!48, !49, i64 0}
!68 = !{!48, !49, i64 8}
!69 = distinct !{null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!48, !49, i64 16}
!73 = distinct !{null, null, null, null, null}
!74 = !{!75, !28, i64 176}
!75 = !{!"_ZTSN5arrow8internal20RunCompressorBuilderE", !34, i64 0, !76, i64 144, !77, i64 160, !28, i64 176}
!76 = !{!"_ZTSSt10shared_ptrIN5arrow12ArrayBuilderEE", !59, i64 0}
!77 = !{!"_ZTSSt10shared_ptrIKN5arrow6ScalarEE", !78, i64 0}
!78 = !{!"_ZTSSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE", !79, i64 0, !42, i64 8}
!79 = !{!"p1 _ZTSN5arrow6ScalarE", !36, i64 0}
!80 = !{!79, !79, i64 0}
!81 = distinct !{null, ptr @_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!82 = !{!34, !28, i64 112}
!83 = distinct !{null}
!84 = !{!34, !28, i64 104}
!85 = !{!34, !28, i64 96}
!86 = !{!87, !88, i64 0}
!87 = !{!"_ZTSN5arrow6StatusE", !88, i64 0}
!88 = !{!"p1 _ZTSN5arrow6Status5StateE", !36, i64 0}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZN5arrow6Status2OKEv: argument 0"}
!91 = distinct !{!91, !"_ZN5arrow6Status2OKEv"}
!92 = !{!78, !79, i64 0}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZN5arrow12ArrayBuilder12AppendScalarERKNS_6ScalarE: argument 0"}
!95 = distinct !{!95, !"_ZN5arrow12ArrayBuilder12AppendScalarERKNS_6ScalarE"}
!96 = distinct !{null}
!97 = !{!98, !106, i64 40}
!98 = !{!"_ZTSN5arrow6ScalarE", !99, i64 8, !103, i64 24, !106, i64 40}
!99 = !{!"_ZTSSt23enable_shared_from_thisIN5arrow6ScalarEE", !100, i64 0}
!100 = !{!"_ZTSSt8weak_ptrIN5arrow6ScalarEE", !101, i64 0}
!101 = !{!"_ZTSSt10__weak_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE", !79, i64 0, !102, i64 8}
!102 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !43, i64 0}
!103 = !{!"_ZTSSt10shared_ptrIN5arrow8DataTypeEE", !104, i64 0}
!104 = !{!"_ZTSSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE", !105, i64 0, !42, i64 8}
!105 = !{!"p1 _ZTSN5arrow8DataTypeE", !36, i64 0}
!106 = !{!"bool", !5, i64 0}
!107 = !{i8 0, i8 2}
!108 = !{}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZN5arrow12EqualOptions8DefaultsEv: argument 0"}
!111 = distinct !{!111, !"_ZN5arrow12EqualOptions8DefaultsEv"}
!112 = !{!113, !114, i64 0}
!113 = !{!"_ZTSN5arrow12EqualOptionsE", !114, i64 0, !106, i64 8, !106, i64 9, !106, i64 10, !106, i64 11, !106, i64 12, !115, i64 16}
!114 = !{!"double", !5, i64 0}
!115 = !{!"p1 _ZTSSo", !36, i64 0}
!116 = !{!113, !115, i64 16}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZN5arrow12ArrayBuilder12AppendScalarERKNS_6ScalarE: argument 0"}
!119 = distinct !{!119, !"_ZN5arrow12ArrayBuilder12AppendScalarERKNS_6ScalarE"}
!120 = !{!102, !43, i64 0}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZNKSt23enable_shared_from_thisIN5arrow6ScalarEE16shared_from_thisEv: argument 0"}
!123 = distinct !{!123, !"_ZNKSt23enable_shared_from_thisIN5arrow6ScalarEE16shared_from_thisEv"}
!124 = distinct !{!124, !71}
!125 = !{!101, !79, i64 0}
!126 = distinct !{ptr @_ZNSt10shared_ptrIKN5arrow6ScalarEEaSEOS3_, null, ptr @_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!127 = distinct !{null, ptr @_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!128 = !{!129, !129, i64 0}
!129 = !{!"p1 _ZTSSt10shared_ptrIN5arrow6ScalarEE", !36, i64 0}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZN5arrow6Status2OKEv: argument 0"}
!132 = distinct !{!132, !"_ZN5arrow6Status2OKEv"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_ZN5arrow12ArrayBuilder12AppendScalarERKNS_6ScalarE: argument 0"}
!135 = distinct !{!135, !"_ZN5arrow12ArrayBuilder12AppendScalarERKNS_6ScalarE"}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_ZN5arrow6Status2OKEv: argument 0"}
!138 = distinct !{!138, !"_ZN5arrow6Status2OKEv"}
!139 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!140 = !{!141, !141, i64 0}
!141 = !{!"p1 _ZTSN5arrow20RunEndEncodedBuilderE", !36, i64 0}
!142 = !{!104, !105, i64 0}
!143 = !{!144, !145, i64 0}
!144 = !{!"_ZTSSt12__shared_ptrIN5arrow17RunEndEncodedTypeELN9__gnu_cxx12_Lock_policyE2EE", !145, i64 0, !42, i64 8}
!145 = !{!"p1 _ZTSN5arrow17RunEndEncodedTypeE", !36, i64 0}
!146 = !{!147, !149}
!147 = distinct !{!147, !148, !"_ZSt19static_pointer_castIN5arrow17RunEndEncodedTypeENS0_8DataTypeEESt10shared_ptrIT_EOS3_IT0_E: argument 0"}
!148 = distinct !{!148, !"_ZSt19static_pointer_castIN5arrow17RunEndEncodedTypeENS0_8DataTypeEESt10shared_ptrIT_EOS3_IT0_E"}
!149 = distinct !{!149, !150, !"_ZN5arrow8internal20checked_pointer_castINS_17RunEndEncodedTypeENS_8DataTypeEEESt10shared_ptrIT_ES4_IT0_E: argument 0"}
!150 = distinct !{!150, !"_ZN5arrow8internal20checked_pointer_castINS_17RunEndEncodedTypeENS_8DataTypeEEESt10shared_ptrIT_ES4_IT0_E"}
!151 = !{!152, !28, i64 168}
!152 = !{!"_ZTSN5arrow20RunEndEncodedBuilderE", !34, i64 0, !153, i64 144, !154, i64 160, !28, i64 168}
!153 = !{!"_ZTSSt10shared_ptrIN5arrow17RunEndEncodedTypeEE", !144, i64 0}
!154 = !{!"p1 _ZTSN5arrow20RunEndEncodedBuilder15ValueRunBuilderE", !36, i64 0}
!155 = !{!156, !157, i64 0}
!156 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_Vector_impl_dataE", !157, i64 0, !157, i64 8, !157, i64 16}
!157 = !{!"p1 _ZTSSt10shared_ptrIN5arrow5FieldEE", !36, i64 0}
!158 = !{!159, !160, i64 0}
!159 = !{!"_ZTSSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EE", !160, i64 0, !42, i64 8}
!160 = !{!"p1 _ZTSN5arrow5FieldE", !36, i64 0}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZSt11make_sharedIN5arrow20RunEndEncodedBuilder15ValueRunBuilderEJRPNS0_10MemoryPoolERKSt10shared_ptrINS0_12ArrayBuilderEERKS6_INS0_8DataTypeEERS1_EES6_IT_EDpOT0_: argument 0"}
!163 = distinct !{!163, !"_ZSt11make_sharedIN5arrow20RunEndEncodedBuilder15ValueRunBuilderEJRPNS0_10MemoryPoolERKSt10shared_ptrINS0_12ArrayBuilderEERKS6_INS0_8DataTypeEERS1_EES6_IT_EDpOT0_"}
!164 = !{!154, !154, i64 0}
!165 = !{!152, !154, i64 160}
!166 = !{!167, !154, i64 0}
!167 = !{!"_ZTSSt12__shared_ptrIN5arrow20RunEndEncodedBuilder15ValueRunBuilderELN9__gnu_cxx12_Lock_policyE2EE", !154, i64 0, !42, i64 8}
!168 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!169 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow20RunEndEncodedBuilder15ValueRunBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!170 = !{!171}
!171 = distinct !{!171, !172, !"_ZN5arrow8internal20RunCompressorBuilder14ResizePhysicalEl: argument 0"}
!172 = distinct !{!172, !"_ZN5arrow8internal20RunCompressorBuilder14ResizePhysicalEl"}
!173 = !{ptr @_ZN5arrow8internal20RunCompressorBuilder14ResizePhysicalEl}
!174 = distinct !{ptr @_ZN5arrow8internal20RunCompressorBuilder14ResizePhysicalEl, null}
!175 = !{!176}
!176 = distinct !{!176, !177, !"_ZN5arrow6Status2OKEv: argument 0"}
!177 = distinct !{!177, !"_ZN5arrow6Status2OKEv"}
!178 = !{!179}
!179 = distinct !{!179, !180, !"_ZN5arrow6Status2OKEv: argument 0"}
!180 = distinct !{!180, !"_ZN5arrow6Status2OKEv"}
!181 = !{!182, !190, i64 40}
!182 = !{!"_ZTSN5arrow8DataTypeE", !183, i64 0, !187, i64 24, !190, i64 40, !191, i64 48}
!183 = !{!"_ZTSN5arrow6detail15FingerprintableE", !184, i64 8, !184, i64 16}
!184 = !{!"_ZTSSt6atomicIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !185, i64 0}
!185 = !{!"_ZTSSt13__atomic_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !186, i64 0}
!186 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !36, i64 0}
!187 = !{!"_ZTSSt23enable_shared_from_thisIN5arrow8DataTypeEE", !188, i64 0}
!188 = !{!"_ZTSSt8weak_ptrIN5arrow8DataTypeEE", !189, i64 0}
!189 = !{!"_ZTSSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE", !105, i64 0, !102, i64 8}
!190 = !{!"_ZTSN5arrow4Type4typeE", !5, i64 0}
!191 = !{!"_ZTSSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE", !192, i64 0}
!192 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE", !193, i64 0}
!193 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_Vector_implE", !156, i64 0}
!194 = !{!195, !79, i64 0}
!195 = !{!"_ZTSSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE", !79, i64 0, !42, i64 8}
!196 = !{!197}
!197 = distinct !{!197, !198, !"_ZN5arrow6Status2OKEv: argument 0"}
!198 = distinct !{!198, !"_ZN5arrow6Status2OKEv"}
!199 = !{!200}
!200 = distinct !{!200, !201, !"_ZN5arrow6Status2OKEv: argument 0"}
!201 = distinct !{!201, !"_ZN5arrow6Status2OKEv"}
!202 = !{!203}
!203 = distinct !{!203, !204, !"_ZN5arrow6Status2OKEv: argument 0"}
!204 = distinct !{!204, !"_ZN5arrow6Status2OKEv"}
!205 = !{!206, !208}
!206 = distinct !{!206, !207, !"_ZN5arrow6Status8FromArgsIJRA34_KcRKSt10shared_ptrINS_8DataTypeEEEEES0_NS_10StatusCodeEDpOT_: argument 0"}
!207 = distinct !{!207, !"_ZN5arrow6Status8FromArgsIJRA34_KcRKSt10shared_ptrINS_8DataTypeEEEEES0_NS_10StatusCodeEDpOT_"}
!208 = distinct !{!208, !209, !"_ZN5arrow6Status7InvalidIJRA34_KcRKSt10shared_ptrINS_8DataTypeEEEEES0_DpOT_: argument 0"}
!209 = distinct !{!209, !"_ZN5arrow6Status7InvalidIJRA34_KcRKSt10shared_ptrINS_8DataTypeEEEEES0_DpOT_"}
!210 = !{!211, !44, i64 0}
!211 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !212, i64 0, !28, i64 8, !5, i64 16}
!212 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !44, i64 0}
!213 = !{!214}
!214 = distinct !{!214, !215, !"_ZN5arrow6Status2OKEv: argument 0"}
!215 = distinct !{!215, !"_ZN5arrow6Status2OKEv"}
!216 = !{!217, !28, i64 24}
!217 = !{!"_ZTSN5arrow9ArraySpanE", !105, i64 0, !28, i64 8, !28, i64 16, !28, i64 24, !5, i64 32, !218, i64 104}
!218 = !{!"_ZTSSt6vectorIN5arrow9ArraySpanESaIS1_EE", !219, i64 0}
!219 = !{!"_ZTSSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EE", !220, i64 0}
!220 = !{!"_ZTSNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EE12_Vector_implE", !221, i64 0}
!221 = !{!"_ZTSNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EE17_Vector_impl_dataE", !222, i64 0, !222, i64 8, !222, i64 16}
!222 = !{!"p1 _ZTSN5arrow9ArraySpanE", !36, i64 0}
!223 = !{!221, !222, i64 0}
!224 = !{!225, !44, i64 0}
!225 = !{!"_ZTSN5arrow10BufferSpanE", !44, i64 0, !28, i64 8, !226, i64 16}
!226 = !{!"p1 _ZTSSt10shared_ptrIN5arrow6BufferEE", !36, i64 0}
!227 = !{!217, !28, i64 8}
!228 = !{!12, !12, i64 0}
!229 = distinct !{!229, !71}
!230 = !{!231, !233}
!231 = distinct !{!231, !232, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!232 = distinct !{!232, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!233 = distinct !{!233, !234, !"_ZN5arrow20RunEndEncodedBuilder15ReservePhysicalEl: argument 0"}
!234 = distinct !{!234, !"_ZN5arrow20RunEndEncodedBuilder15ReservePhysicalEl"}
!235 = distinct !{null, null}
!236 = distinct !{!236, !71}
!237 = !{!238}
!238 = distinct !{!238, !239, !"_ZN5arrow8internal20RunCompressorBuilder29AppendRunCompressedArraySliceERKNS_9ArraySpanEll: argument 0"}
!239 = distinct !{!239, !"_ZN5arrow8internal20RunCompressorBuilder29AppendRunCompressedArraySliceERKNS_9ArraySpanEll"}
!240 = !{ptr @_ZN5arrow8internal20RunCompressorBuilder29AppendRunCompressedArraySliceERKNS_9ArraySpanEll}
!241 = distinct !{ptr @_ZN5arrow8internal20RunCompressorBuilder29AppendRunCompressedArraySliceERKNS_9ArraySpanEll, null}
!242 = distinct !{!242, !71}
!243 = !{!244, !246}
!244 = distinct !{!244, !245, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!245 = distinct !{!245, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!246 = distinct !{!246, !247, !"_ZN5arrow20RunEndEncodedBuilder15ReservePhysicalEl: argument 0"}
!247 = distinct !{!247, !"_ZN5arrow20RunEndEncodedBuilder15ReservePhysicalEl"}
!248 = distinct !{!248, !71}
!249 = !{!250}
!250 = distinct !{!250, !251, !"_ZN5arrow8internal20RunCompressorBuilder29AppendRunCompressedArraySliceERKNS_9ArraySpanEll: argument 0"}
!251 = distinct !{!251, !"_ZN5arrow8internal20RunCompressorBuilder29AppendRunCompressedArraySliceERKNS_9ArraySpanEll"}
!252 = !{!28, !28, i64 0}
!253 = distinct !{!253, !71}
!254 = !{!255, !257}
!255 = distinct !{!255, !256, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!256 = distinct !{!256, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!257 = distinct !{!257, !258, !"_ZN5arrow20RunEndEncodedBuilder15ReservePhysicalEl: argument 0"}
!258 = distinct !{!258, !"_ZN5arrow20RunEndEncodedBuilder15ReservePhysicalEl"}
!259 = !{!260}
!260 = distinct !{!260, !261, !"_ZN5arrow20RunEndEncodedBuilder14DoAppendRunEndIlEENS_6StatusEl: argument 0"}
!261 = distinct !{!261, !"_ZN5arrow20RunEndEncodedBuilder14DoAppendRunEndIlEENS_6StatusEl"}
!262 = !{!263, !260}
!263 = distinct !{!263, !264, !"_ZN5arrow14NumericBuilderINS_9Int64TypeEE6AppendEl: argument 0"}
!264 = distinct !{!264, !"_ZN5arrow14NumericBuilderINS_9Int64TypeEE6AppendEl"}
!265 = !{!266, !263, !260}
!266 = distinct !{!266, !267, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!267 = distinct !{!267, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!268 = distinct !{null, null, null}
!269 = !{!37, !28, i64 56}
!270 = !{!38, !28, i64 40}
!271 = distinct !{!271, !71}
!272 = !{!273}
!273 = distinct !{!273, !274, !"_ZN5arrow8internal20RunCompressorBuilder29AppendRunCompressedArraySliceERKNS_9ArraySpanEll: argument 0"}
!274 = distinct !{!274, !"_ZN5arrow8internal20RunCompressorBuilder29AppendRunCompressedArraySliceERKNS_9ArraySpanEll"}
!275 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!276 = !{!277}
!277 = distinct !{!277, !278, !"_ZNO5arrow6ResultISt10shared_ptrINS_5ArrayEEE11ValueUnsafeEv: argument 0"}
!278 = distinct !{!278, !"_ZNO5arrow6ResultISt10shared_ptrINS_5ArrayEEE11ValueUnsafeEv"}
!279 = !{!280}
!280 = distinct !{!280, !281, !"_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE15MoveValueUnsafeEv: argument 0"}
!281 = distinct !{!281, !"_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE15MoveValueUnsafeEv"}
!282 = !{!280, !277}
!283 = !{!284, !285, i64 0}
!284 = !{!"_ZTSSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EE", !285, i64 0, !42, i64 8}
!285 = !{!"p1 _ZTSN5arrow5ArrayE", !36, i64 0}
!286 = !{!287}
!287 = distinct !{!287, !288, !"_ZNO5arrow6ResultISt10shared_ptrINS_18RunEndEncodedArrayEEE11ValueUnsafeEv: argument 0"}
!288 = distinct !{!288, !"_ZNO5arrow6ResultISt10shared_ptrINS_18RunEndEncodedArrayEEE11ValueUnsafeEv"}
!289 = !{!290}
!290 = distinct !{!290, !291, !"_ZN5arrow6ResultISt10shared_ptrINS_18RunEndEncodedArrayEEE15MoveValueUnsafeEv: argument 0"}
!291 = distinct !{!291, !"_ZN5arrow6ResultISt10shared_ptrINS_18RunEndEncodedArrayEEE15MoveValueUnsafeEv"}
!292 = !{!290, !287}
!293 = !{!294, !295, i64 0}
!294 = !{!"_ZTSSt12__shared_ptrIN5arrow18RunEndEncodedArrayELN9__gnu_cxx12_Lock_policyE2EE", !295, i64 0, !42, i64 8}
!295 = !{!"p1 _ZTSN5arrow18RunEndEncodedArrayE", !36, i64 0}
!296 = !{!297, !298, i64 0}
!297 = !{!"_ZTSSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EE", !298, i64 0, !42, i64 8}
!298 = !{!"p1 _ZTSN5arrow9ArrayDataE", !36, i64 0}
!299 = distinct !{null, null, null, null}
!300 = !{!301}
!301 = distinct !{!301, !302, !"_ZN5arrow6Status2OKEv: argument 0"}
!302 = distinct !{!302, !"_ZN5arrow6Status2OKEv"}
!303 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow18RunEndEncodedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!304 = distinct !{ptr @_ZN5arrow6ResultISt10shared_ptrINS_18RunEndEncodedArrayEEED2Ev, null, null, ptr @_ZNSt12__shared_ptrIN5arrow18RunEndEncodedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!305 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!306 = !{!307, !106, i64 1}
!307 = !{!"_ZTSN5arrow6Status5StateE", !308, i64 0, !106, i64 1, !211, i64 8, !309, i64 40}
!308 = !{!"_ZTSN5arrow10StatusCodeE", !5, i64 0}
!309 = !{!"_ZTSSt10shared_ptrIN5arrow12StatusDetailEE", !310, i64 0}
!310 = !{!"_ZTSSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EE", !311, i64 0, !42, i64 8}
!311 = !{!"p1 _ZTSN5arrow12StatusDetailE", !36, i64 0}
!312 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!313 = distinct !{ptr @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev, null, null, ptr @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!314 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!315 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow18RunEndEncodedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!316 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!317 = !{!318}
!318 = distinct !{!318, !319, !"_ZN5arrow6Status2OKEv: argument 0"}
!319 = distinct !{!319, !"_ZN5arrow6Status2OKEv"}
!320 = !{!321}
!321 = distinct !{!321, !322, !"_ZN5arrow20RunEndEncodedBuilder14DoAppendRunEndIlEENS_6StatusEl: argument 0"}
!322 = distinct !{!322, !"_ZN5arrow20RunEndEncodedBuilder14DoAppendRunEndIlEENS_6StatusEl"}
!323 = !{!324, !321}
!324 = distinct !{!324, !325, !"_ZN5arrow14NumericBuilderINS_9Int64TypeEE6AppendEl: argument 0"}
!325 = distinct !{!325, !"_ZN5arrow14NumericBuilderINS_9Int64TypeEE6AppendEl"}
!326 = !{!327, !324, !321}
!327 = distinct !{!327, !328, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!328 = distinct !{!328, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!329 = !{!330, !332}
!330 = distinct !{!330, !331, !"_ZN5arrow6Status8FromArgsIJRA34_KcRKSt10shared_ptrINS_8DataTypeEEEEES0_NS_10StatusCodeEDpOT_: argument 0"}
!331 = distinct !{!331, !"_ZN5arrow6Status8FromArgsIJRA34_KcRKSt10shared_ptrINS_8DataTypeEEEEES0_NS_10StatusCodeEDpOT_"}
!332 = distinct !{!332, !333, !"_ZN5arrow6Status7InvalidIJRA34_KcRKSt10shared_ptrINS_8DataTypeEEEEES0_DpOT_: argument 0"}
!333 = distinct !{!333, !"_ZN5arrow6Status7InvalidIJRA34_KcRKSt10shared_ptrINS_8DataTypeEEEEES0_DpOT_"}
!334 = !{!335}
!335 = distinct !{!335, !336, !"_ZN5arrow6Status2OKEv: argument 0"}
!336 = distinct !{!336, !"_ZN5arrow6Status2OKEv"}
!337 = !{!338}
!338 = distinct !{!338, !339, !"_ZN5arrow14NumericBuilderINS_9Int16TypeEE6AppendEs: argument 0"}
!339 = distinct !{!339, !"_ZN5arrow14NumericBuilderINS_9Int16TypeEE6AppendEs"}
!340 = !{!341, !338}
!341 = distinct !{!341, !342, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!342 = distinct !{!342, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!343 = distinct !{null, null}
!344 = !{!345, !338}
!345 = distinct !{!345, !346, !"_ZN5arrow6Status2OKEv: argument 0"}
!346 = distinct !{!346, !"_ZN5arrow6Status2OKEv"}
!347 = !{!348}
!348 = distinct !{!348, !349, !"_ZN5arrow14NumericBuilderINS_9Int32TypeEE6AppendEi: argument 0"}
!349 = distinct !{!349, !"_ZN5arrow14NumericBuilderINS_9Int32TypeEE6AppendEi"}
!350 = !{!351, !348}
!351 = distinct !{!351, !352, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!352 = distinct !{!352, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!353 = distinct !{null, null}
!354 = !{!355, !348}
!355 = distinct !{!355, !356, !"_ZN5arrow6Status2OKEv: argument 0"}
!356 = distinct !{!356, !"_ZN5arrow6Status2OKEv"}
!357 = !{!358}
!358 = distinct !{!358, !359, !"_ZN5arrow6Status2OKEv: argument 0"}
!359 = distinct !{!359, !"_ZN5arrow6Status2OKEv"}
!360 = !{!361}
!361 = distinct !{!361, !362, !"_ZN5arrow8internal20RunCompressorBuilder14ResizePhysicalEl: argument 0"}
!362 = distinct !{!362, !"_ZN5arrow8internal20RunCompressorBuilder14ResizePhysicalEl"}
!363 = !{!364, !361}
!364 = distinct !{!364, !365, !"_ZN5arrow6Status2OKEv: argument 0"}
!365 = distinct !{!365, !"_ZN5arrow6Status2OKEv"}
!366 = !{!367, !369}
!367 = distinct !{!367, !368, !"_ZN5arrow6Status8FromArgsIJRA34_KcRNS_8DataTypeEEEES0_NS_10StatusCodeEDpOT_: argument 0"}
!368 = distinct !{!368, !"_ZN5arrow6Status8FromArgsIJRA34_KcRNS_8DataTypeEEEES0_NS_10StatusCodeEDpOT_"}
!369 = distinct !{!369, !370, !"_ZN5arrow6Status14NotImplementedIJRA34_KcRNS_8DataTypeEEEES0_DpOT_: argument 0"}
!370 = distinct !{!370, !"_ZN5arrow6Status14NotImplementedIJRA34_KcRNS_8DataTypeEEEES0_DpOT_"}
!371 = !{!372}
!372 = distinct !{!372, !373, !"_ZN5arrow6Status2OKEv: argument 0"}
!373 = distinct !{!373, !"_ZN5arrow6Status2OKEv"}
!374 = !{!375}
!375 = distinct !{!375, !376, !"_ZN5arrow6Status2OKEv: argument 0"}
!376 = distinct !{!376, !"_ZN5arrow6Status2OKEv"}
!377 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow17RunEndEncodedTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!378 = distinct !{ptr @_ZN5arrow20RunEndEncodedBuilderD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow17RunEndEncodedTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!379 = !{ptr @_ZN5arrow20RunEndEncodedBuilderD2Ev}
!380 = !{!381}
!381 = distinct !{!381, !382, !"_ZN5arrow20RunEndEncodedBuilder14ResizePhysicalEl: argument 0"}
!382 = distinct !{!382, !"_ZN5arrow20RunEndEncodedBuilder14ResizePhysicalEl"}
!383 = !{!384, !381}
!384 = distinct !{!384, !385, !"_ZN5arrow8internal20RunCompressorBuilder14ResizePhysicalEl: argument 0"}
!385 = distinct !{!385, !"_ZN5arrow8internal20RunCompressorBuilder14ResizePhysicalEl"}
!386 = !{ptr @_ZN5arrow20RunEndEncodedBuilder14ResizePhysicalEl, ptr @_ZN5arrow8internal20RunCompressorBuilder14ResizePhysicalEl}
!387 = distinct !{ptr @_ZN5arrow20RunEndEncodedBuilder14ResizePhysicalEl, ptr @_ZN5arrow8internal20RunCompressorBuilder14ResizePhysicalEl, null}
!388 = !{ptr @_ZN5arrow20RunEndEncodedBuilder14ResizePhysicalEl}
!389 = distinct !{ptr @_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!390 = !{!391, !141, i64 184}
!391 = !{!"_ZTSN5arrow20RunEndEncodedBuilder15ValueRunBuilderE", !75, i64 0, !141, i64 184}
!392 = !{i64 8}
!393 = !{!394}
!394 = distinct !{!394, !395, !"_ZN5arrow20RunEndEncodedBuilder8CloseRunEl: argument 0"}
!395 = distinct !{!395, !"_ZN5arrow20RunEndEncodedBuilder8CloseRunEl"}
!396 = !{!397, !394}
!397 = distinct !{!397, !398, !"_ZN5arrow6Status2OKEv: argument 0"}
!398 = distinct !{!398, !"_ZN5arrow6Status2OKEv"}
!399 = !{!400}
!400 = distinct !{!400, !401, !"_ZN5arrow20RunEndEncodedBuilder8CloseRunEl: argument 0"}
!401 = distinct !{!401, !"_ZN5arrow20RunEndEncodedBuilder8CloseRunEl"}
!402 = !{!403, !400}
!403 = distinct !{!403, !404, !"_ZN5arrow6Status2OKEv: argument 0"}
!404 = distinct !{!404, !"_ZN5arrow6Status2OKEv"}
!405 = distinct !{null}
!406 = distinct !{null, null, null, null}
!407 = distinct !{!407, !71}
!408 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!409 = distinct !{null, null, null, null, null, null, null, null, null}
!410 = distinct !{!410, !71}
!411 = distinct !{null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!412 = !{!413, !115, i64 8}
!413 = !{!"_ZTSN5arrow8internal19StringStreamWrapperE", !414, i64 0, !115, i64 8}
!414 = !{!"_ZTSSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !415, i64 0}
!415 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !416, i64 0}
!416 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !417, i64 0}
!417 = !{!"_ZTSSt5tupleIJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !418, i64 0}
!418 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !419, i64 0}
!419 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEELb0EE", !420, i64 0}
!420 = !{!"p1 _ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !36, i64 0}
!421 = distinct !{null, null}
!422 = !{!423, !44, i64 8}
!423 = !{!"_ZTSSt9type_info", !44, i64 8}
!424 = !{!425}
!425 = distinct !{!425, !426, !"_ZN5arrow6Status8FromArgsIJRA45_KcRlRA4_S2_RKsRA2_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!426 = distinct !{!426, !"_ZN5arrow6Status8FromArgsIJRA45_KcRlRA4_S2_RKsRA2_S2_EEES0_NS_10StatusCodeEDpOT_"}
!427 = !{!428}
!428 = distinct !{!428, !429, !"_ZN5arrow6Status8FromArgsIJRA45_KcRlRA4_S2_RKiRA2_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!429 = distinct !{!429, !"_ZN5arrow6Status8FromArgsIJRA45_KcRlRA4_S2_RKiRA2_S2_EEES0_NS_10StatusCodeEDpOT_"}
!430 = !{!431}
!431 = distinct !{!431, !432, !"_ZN5arrow8internal12JoinToStringIJRA70_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!432 = distinct !{!432, !"_ZN5arrow8internal12JoinToStringIJRA70_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!433 = !{!434}
!434 = distinct !{!434, !435, !"_ZN5arrow8internal12JoinToStringIJRA41_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!435 = distinct !{!435, !"_ZN5arrow8internal12JoinToStringIJRA41_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
end_hunk_1
