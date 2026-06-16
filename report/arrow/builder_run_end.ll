inline.NumInlined: 872
inline.NumDeleted: 339
begin_hunk_0_@_ZN5arrow20RunEndEncodedBuilder18DoAppendArraySliceIiEENS_6StatusERKNS_9ArraySpanEll:bb.a
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
  %.pre84 = load ptr, ptr %.pre83, align 8, !tbaa !58, !noalias !259 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre84, i64 112
  %.pre85 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !82, !noalias !262
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5arrow6StatusD2Ev.exit57
  %i.be = phi i64 [ %.pre85, %.lr.ph ], [ %i.cv, %_ZN5arrow6StatusD2Ev.exit57 ] ; 2 uses
  %i.bf = phi ptr [ %.pre84, %.lr.ph ], [ %i.ct, %_ZN5arrow6StatusD2Ev.exit57 ] ; 9 uses
  %i.bg = phi i64 [ %.pre, %.lr.ph ], [ %i.bl, %_ZN5arrow6StatusD2Ev.exit57 ]
  %.sroa.11.081 = phi i64 [ %i.ak, %.lr.ph ], [ %i.cy, %_ZN5arrow6StatusD2Ev.exit57 ] ; 2 uses
  %.sroa.7.080 = phi i64 [ 0, %.lr.ph ], [ %.sroa.speculated.i.i, %_ZN5arrow6StatusD2Ev.exit57 ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.sroa.11.081 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !252
  %i.bj = sub nsw i64 %i.bi, %i.c
  %.sroa.speculated4.i.i.i = call i64 @llvm.smax.i64(i64 %i.bj, i64 0)
  %.sroa.speculated.i.i.i51 = call noundef i64 @llvm.smin.i64(i64 %4, i64 %.sroa.speculated4.i.i.i)
  %i.bk = sub nsw i64 %.sroa.speculated.i.i.i51, %.sroa.7.080
  %i.bl = add nsw i64 %i.bk, %i.bg                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18, !noalias !267
  %i.bm = load ptr, ptr %i.bf, align 8, !tbaa !54, !noalias !262
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !262
  %i.bp = call noundef i64 %i.bo(ptr noundef nonnull align 8 dereferenceable(216) %i.bf), !noalias !262, !inline_history !268 ; 2 uses
  %.not.i.not.i.i = icmp slt i64 %i.bp, %i.be
  br i1 %.not.i.not.i.i, label %_ZN5arrow6StatusD2Ev.exit10.thread.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i

_ZN5arrow6StatusD2Ev.exit10.thread.i.i:           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !267
  br label %_ZN5arrow6StatusD2Ev.exit57

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %bb.b
  %8 = add nsw i64 %i.bp, 1
  %i.bq = shl nsw i64 %i.be, 1
  %.sroa.speculated.i.i.i.i = call noundef i64 @llvm.smax.i64(i64 %8, i64 %i.bq)
  %i.br = load ptr, ptr %i.bf, align 8, !tbaa !54, !noalias !262
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !262
  call void %i.bt(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(216) %i.bf, i64 noundef %.sroa.speculated.i.i.i.i), !noalias !267, !inline_history !268
  %.pr.i.i = load ptr, ptr %6, align 8, !tbaa !86, !noalias !267 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !267
  %i.bu = icmp eq ptr %.pr.i.i, null
  br i1 %i.bu, label %_ZN5arrow6StatusD2Ev.exit57, label %.critedge.sink.split

_ZN5arrow6StatusD2Ev.exit57:                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i, %_ZN5arrow6StatusD2Ev.exit10.thread.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !52, !noalias !267
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bf, i64 80 ; 3 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !269, !noalias !267 ; 2 uses
  %i.bz = sdiv i64 %i.by, 8
  %i.ca = getelementptr inbounds i8, ptr %i.bw, i64 %i.bz ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !65, !noalias !267
  %i.cc = srem i64 %i.by, 8
  %i.cd = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !65, !noalias !267
  %i.cf = or i8 %i.ce, %i.cb
  store i8 %i.cf, ptr %i.ca, align 1, !tbaa !65, !noalias !267
  %i.cg = load i64, ptr %i.bx, align 8, !tbaa !269, !noalias !267
  %i.ch = add nsw i64 %i.cg, 1
  store i64 %i.ch, ptr %i.bx, align 8, !tbaa !269, !noalias !267
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bf, i64 104 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !252, !noalias !267
  %i.ck = add nsw i64 %i.cj, 1
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !252, !noalias !267
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bf, i64 184
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !52, !noalias !267
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bf, i64 200 ; 3 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !270, !noalias !267
  %i.cp = getelementptr inbounds i8, ptr %i.cm, i64 %i.co
  store i64 %i.bl, ptr %i.cp, align 1, !noalias !267
  %i.cq = load i64, ptr %i.cn, align 8, !tbaa !270, !noalias !267
  %i.cr = add nsw i64 %i.cq, 8
  store i64 %i.cr, ptr %i.cn, align 8, !tbaa !270, !noalias !267
  %i.cs = load ptr, ptr %i.bc, align 8, !tbaa !67
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !58 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 112
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !82 ; 2 uses
  store i64 %i.cv, ptr %i.ap, align 8, !tbaa !82
  store i64 %i.bl, ptr %i.bd, align 8, !tbaa !84
  store i64 %i.bl, ptr %i.bb, align 8, !tbaa !151
  %i.cw = load i64, ptr %i.bh, align 8, !tbaa !252
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
end_hunk_0
begin_hunk_1_@_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev:bb.a

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !63
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !inline_history !316
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !inline_history !316
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit, !prof !66

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !86     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread, !prof !305

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !306, !range !107, !noundef !108
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !63
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !64
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !64
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow20RunEndEncodedBuilder16FinishCurrentRunEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %2 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(184) %i.b)
  %i.f = load ptr, ptr %2, align 8, !tbaa !86     ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.i = load i64, ptr %i.h, align 8, !tbaa !84
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.n = load i64, ptr %i.m, align 8, !tbaa !82
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.n, ptr %i.o, align 8, !tbaa !82
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i64 %i.i, ptr %i.p, align 8, !tbaa !151
  store ptr null, ptr %0, align 8, !tbaa !86, !alias.scope !317
  br label %bb.b

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow20RunEndEncodedBuilder12AppendRunEndEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !155
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !142
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !181
  switch i32 %i.i, label %bb.d [
    i32 5, label %_ZN5arrow6StatusD2Ev.exit
    i32 7, label %_ZN5arrow6StatusD2Ev.exit24
    i32 9, label %bb.b
  ]

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZN5arrow20RunEndEncodedBuilder14DoAppendRunEndIsEENS_6StatusEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 noundef %2)
  %i.j = load ptr, ptr %5, align 8, !tbaa !86     ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.g, label %bb.h

_ZN5arrow6StatusD2Ev.exit24:                      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @_ZN5arrow20RunEndEncodedBuilder14DoAppendRunEndIiEENS_6StatusEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 noundef %2)
  %i.l = load ptr, ptr %6, align 8, !tbaa !86     ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !67, !noalias !320
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !58, !noalias !320 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !323
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.r = load i64, ptr %i.q, align 8, !tbaa !82, !noalias !326 ; 2 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !54, !noalias !326
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !326
  %i.v = tail call noundef i64 %i.u(ptr noundef nonnull align 8 dereferenceable(216) %i.p), !noalias !326, !inline_history !268 ; 2 uses
  %.not.i.not.i.i = icmp slt i64 %i.v, %i.r
  br i1 %.not.i.not.i.i, label %_ZN5arrow6StatusD2Ev.exit10.thread.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i

_ZN5arrow6StatusD2Ev.exit10.thread.i.i:           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !323
  br label %.thread

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %bb.b
  %7 = add nsw i64 %i.v, 1
  %i.w = shl nsw i64 %i.r, 1
  %.sroa.speculated.i.i.i.i = tail call noundef i64 @llvm.smax.i64(i64 %7, i64 %i.w)
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !54, !noalias !326
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !noalias !326
  call void %i.z(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(216) %i.p, i64 noundef %.sroa.speculated.i.i.i.i), !noalias !323, !inline_history !268
  %.pr.i.i = load ptr, ptr %4, align 8, !tbaa !86, !noalias !323 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !323
  %i.aa = icmp eq ptr %.pr.i.i, null
  br i1 %i.aa, label %.thread, label %bb.c

.thread:                                          ; preds = %_ZN5arrow6StatusD2Ev.exit10.thread.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !52, !noalias !323
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 80 ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !269, !noalias !323 ; 2 uses
  %i.af = sdiv i64 %i.ae, 8
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !65, !noalias !323
  %i.ai = srem i64 %i.ae, 8
  %i.aj = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !65, !noalias !323
  %i.al = or i8 %i.ak, %i.ah
  store i8 %i.al, ptr %i.ag, align 1, !tbaa !65, !noalias !323
  %i.am = load i64, ptr %i.ad, align 8, !tbaa !269, !noalias !323
  %i.an = add nsw i64 %i.am, 1
  store i64 %i.an, ptr %i.ad, align 8, !tbaa !269, !noalias !323
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 104 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !252, !noalias !323
  %i.aq = add nsw i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !252, !noalias !323
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 184
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !52, !noalias !323
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 200 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !270, !noalias !323
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 %i.au
  store i64 %2, ptr %i.av, align 1, !noalias !323
  %i.aw = load i64, ptr %i.at, align 8, !tbaa !270, !noalias !323
  %i.ax = add nsw i64 %i.aw, 8
  store i64 %i.ax, ptr %i.at, align 8, !tbaa !270, !noalias !323
  br label %bb.g

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  store ptr %.pr.i.i, ptr %0, align 8, !tbaa !86
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !329
  call void @_ZN5arrow8internal12JoinToStringIJRA34_KcRKSt10shared_ptrINS_8DataTypeEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(34) @.str, ptr noundef nonnull align 8 dereferenceable(16) %i.f), !noalias !329
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ay = load ptr, ptr %3, align 8, !tbaa !210, !noalias !329 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZN5arrow6Status7InvalidIJRA34_KcRKSt10shared_ptrINS_8DataTypeEEEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !65, !noalias !329
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #19
  br label %_ZN5arrow6Status7InvalidIJRA34_KcRKSt10shared_ptrINS_8DataTypeEEEEES0_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %3, align 8, !tbaa !210, !noalias !329 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.f
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !65, !noalias !329
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !329
  resume { ptr, i32 } %i.bd

_ZN5arrow6Status7InvalidIJRA34_KcRKSt10shared_ptrINS_8DataTypeEEEEES0_DpOT_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !329
  br label %bb.h

bb.g:                                             ; preds = %.thread, %_ZN5arrow6StatusD2Ev.exit24, %_ZN5arrow6StatusD2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !86, !alias.scope !334
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %_ZN5arrow6StatusD2Ev.exit24, %_ZN5arrow6StatusD2Ev.exit, %bb.g, %_ZN5arrow6Status7InvalidIJRA34_KcRKSt10shared_ptrINS_8DataTypeEEEEES0_DpOT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow20RunEndEncodedBuilder14DoAppendRunEndIsEENS_6StatusEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i16 32767, ptr %i.b, align 2, !tbaa !228
  %i.c = icmp sgt i64 %2, 32767
  br i1 %i.c, label %bb.b, label %bb.c, !prof !66

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6Status7InvalidIJRA45_KcRlRA4_S2_RKsRA2_S2_EEES0_DpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(45) @.str.5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(4) @.str.6, ptr noundef nonnull align 2 dereferenceable(2) %i.b, ptr noundef nonnull align 1 dereferenceable(2) @.str.7)
  br label %_ZN5arrow14NumericBuilderINS_9Int16TypeEE6AppendEs.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58   ; 10 uses
  %i.g = trunc i64 %2 to i16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !337
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.i = load i64, ptr %i.h, align 8, !tbaa !82, !noalias !340 ; 2 uses
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !54, !noalias !340
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !noalias !340
  %i.m = tail call noundef i64 %i.l(ptr noundef nonnull align 8 dereferenceable(216) %i.f), !noalias !340, !inline_history !343 ; 2 uses
  %.not.i.not.i = icmp slt i64 %i.m, %i.i
  br i1 %.not.i.not.i, label %_ZN5arrow6StatusD2Ev.exit10.thread.i, label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit10.thread.i:             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !337
  br label %bb.d

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c
  %4 = add nsw i64 %i.m, 1
  %i.n = shl nsw i64 %i.i, 1
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.smax.i64(i64 %4, i64 %i.n)
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !54, !noalias !340
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !noalias !340
  call void %i.q(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(216) %i.f, i64 noundef %.sroa.speculated.i.i.i), !noalias !337, !inline_history !343
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !86, !noalias !337 ; 2 uses
  store ptr %.pr.i, ptr %0, align 8, !tbaa !86, !alias.scope !337
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !337
  %i.r = icmp eq ptr %.pr.i, null
  br i1 %i.r, label %bb.d, label %_ZN5arrow14NumericBuilderINS_9Int16TypeEE6AppendEs.exit

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit10.thread.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52, !noalias !337
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !269, !noalias !337 ; 2 uses
  %i.w = sdiv i64 %i.v, 8
  %i.x = getelementptr inbounds i8, ptr %i.t, i64 %i.w ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !65, !noalias !337
  %i.z = srem i64 %i.v, 8
  %i.aa = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !65, !noalias !337
  %i.ac = or i8 %i.ab, %i.y
  store i8 %i.ac, ptr %i.x, align 1, !tbaa !65, !noalias !337
  %i.ad = load i64, ptr %i.u, align 8, !tbaa !269, !noalias !337
  %i.ae = add nsw i64 %i.ad, 1
  store i64 %i.ae, ptr %i.u, align 8, !tbaa !269, !noalias !337
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !252, !noalias !337
  %i.ah = add nsw i64 %i.ag, 1
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !252, !noalias !337
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !52, !noalias !337
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 200 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !270, !noalias !337
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 %i.al
  store i16 %i.g, ptr %i.am, align 1, !noalias !337
  %i.an = load i64, ptr %i.ak, align 8, !tbaa !270, !noalias !337
  %i.ao = add nsw i64 %i.an, 2
  store i64 %i.ao, ptr %i.ak, align 8, !tbaa !270, !noalias !337
  store ptr null, ptr %0, align 8, !tbaa !86, !alias.scope !344
  br label %_ZN5arrow14NumericBuilderINS_9Int16TypeEE6AppendEs.exit

_ZN5arrow14NumericBuilderINS_9Int16TypeEE6AppendEs.exit: ; preds = %bb.d, %_ZN5arrow6StatusD2Ev.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow20RunEndEncodedBuilder14DoAppendRunEndIiEENS_6StatusEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 2147483647, ptr %i.b, align 4, !tbaa !3
  %i.c = icmp sgt i64 %2, 2147483647
  br i1 %i.c, label %bb.b, label %bb.c, !prof !66

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6Status7InvalidIJRA45_KcRlRA4_S2_RKiRA2_S2_EEES0_DpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(45) @.str.5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(4) @.str.6, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(2) @.str.7)
  br label %_ZN5arrow14NumericBuilderINS_9Int32TypeEE6AppendEi.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58   ; 10 uses
  %i.g = trunc i64 %2 to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !347
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.i = load i64, ptr %i.h, align 8, !tbaa !82, !noalias !350 ; 2 uses
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !54, !noalias !350
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !noalias !350
  %i.m = tail call noundef i64 %i.l(ptr noundef nonnull align 8 dereferenceable(216) %i.f), !noalias !350, !inline_history !353 ; 2 uses
  %.not.i.not.i = icmp slt i64 %i.m, %i.i
  br i1 %.not.i.not.i, label %_ZN5arrow6StatusD2Ev.exit10.thread.i, label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit10.thread.i:             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !347
  br label %bb.d

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c
  %4 = add nsw i64 %i.m, 1
  %i.n = shl nsw i64 %i.i, 1
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.smax.i64(i64 %4, i64 %i.n)
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !54, !noalias !350
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !noalias !350
  call void %i.q(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(216) %i.f, i64 noundef %.sroa.speculated.i.i.i), !noalias !347, !inline_history !353
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !86, !noalias !347 ; 2 uses
  store ptr %.pr.i, ptr %0, align 8, !tbaa !86, !alias.scope !347
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !347
  %i.r = icmp eq ptr %.pr.i, null
  br i1 %i.r, label %bb.d, label %_ZN5arrow14NumericBuilderINS_9Int32TypeEE6AppendEi.exit

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit10.thread.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52, !noalias !347
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !269, !noalias !347 ; 2 uses
  %i.w = sdiv i64 %i.v, 8
  %i.x = getelementptr inbounds i8, ptr %i.t, i64 %i.w ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !65, !noalias !347
  %i.z = srem i64 %i.v, 8
  %i.aa = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !65, !noalias !347
  %i.ac = or i8 %i.ab, %i.y
  store i8 %i.ac, ptr %i.x, align 1, !tbaa !65, !noalias !347
  %i.ad = load i64, ptr %i.u, align 8, !tbaa !269, !noalias !347
  %i.ae = add nsw i64 %i.ad, 1
  store i64 %i.ae, ptr %i.u, align 8, !tbaa !269, !noalias !347
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !252, !noalias !347
  %i.ah = add nsw i64 %i.ag, 1
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !252, !noalias !347
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !52, !noalias !347
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 200 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !270, !noalias !347
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 %i.al
  store i32 %i.g, ptr %i.am, align 1, !noalias !347
  %i.an = load i64, ptr %i.ak, align 8, !tbaa !270, !noalias !347
  %i.ao = add nsw i64 %i.an, 4
  store i64 %i.ao, ptr %i.ak, align 8, !tbaa !270, !noalias !347
  store ptr null, ptr %0, align 8, !tbaa !86, !alias.scope !354
  br label %_ZN5arrow14NumericBuilderINS_9Int32TypeEE6AppendEi.exit

_ZN5arrow14NumericBuilderINS_9Int32TypeEE6AppendEi.exit: ; preds = %bb.d, %_ZN5arrow6StatusD2Ev.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow20RunEndEncodedBuilder8CloseRunEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = icmp sgt i64 %2, 2147483647
  br i1 %i.a, label %bb.b, label %bb.c, !prof !66

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA70_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(70) @.str.1)
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !151
  %i.d = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.c, i64 %2) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  %i.f = extractvalue { i64, i1 } %i.d, 0         ; 3 uses
  br i1 %i.e, label %bb.d, label %_ZN5arrow6StatusD2Ev.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5arrow6Status8FromArgsIJRA41_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(41) @.str.2)
  br label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZN5arrow20RunEndEncodedBuilder12AppendRunEndEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 noundef %i.f)
  %i.g = load ptr, ptr %3, align 8, !tbaa !86     ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN5arrow6StatusD2Ev.exit11, label %.critedge

_ZN5arrow6StatusD2Ev.exit11:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !67
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.m = load i64, ptr %i.l, align 8, !tbaa !82
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.m, ptr %i.n, align 8, !tbaa !82
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %i.f, ptr %i.o, align 8, !tbaa !84
  store i64 %i.f, ptr %i.b, align 8, !tbaa !151
  store ptr null, ptr %0, align 8, !tbaa !86, !alias.scope !357
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %_ZN5arrow6StatusD2Ev.exit11, %_ZN5arrow6StatusD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 dereferenceable(144) ptr @_ZN5arrow20RunEndEncodedBuilder13value_builderEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZNK5arrow12ArrayBuilder6lengthEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i64, ptr %i.a, align 8, !tbaa !84
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20RunCompressorBuilder6ResizeEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !360
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58, !noalias !360 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54, !noalias !360
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !noalias !360
  call void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 noundef %2), !noalias !360, !inline_history !173
  %i.f = load ptr, ptr %3, align 8, !tbaa !86, !noalias !360 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !86, !alias.scope !360
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !360
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_ZN5arrow8internal20RunCompressorBuilder14ResizePhysicalEl.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !58, !noalias !360 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load i64, ptr %i.i, align 8, !tbaa !82, !noalias !360
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.j, ptr %i.k, align 8, !tbaa !82, !noalias !360
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !54, !noalias !360
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !noalias !360
  %i.o = call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(144) %i.h), !noalias !360, !inline_history !174
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %i.o, ptr %i.p, align 8, !tbaa !84, !noalias !360
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !58, !noalias !360
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.s = load i64, ptr %i.r, align 8, !tbaa !85, !noalias !360
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %i.s, ptr %i.t, align 8, !tbaa !85, !noalias !360
  store ptr null, ptr %0, align 8, !tbaa !86, !alias.scope !363
  br label %_ZN5arrow8internal20RunCompressorBuilder14ResizePhysicalEl.exit

_ZN5arrow8internal20RunCompressorBuilder14ResizePhysicalEl.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20RunCompressorBuilder10AppendNullEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 noundef 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20RunCompressorBuilder16AppendEmptyValueEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 noundef 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow12ArrayBuilder16AppendArraySliceERKNS_9ArraySpanEll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::shared_ptr.7", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.a = load ptr, ptr %1, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %1)
  %i.d = load ptr, ptr %6, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !366
  invoke void @_ZN5arrow8internal12JoinToStringIJRA34_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(34) @.str.4, ptr noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.e = load ptr, ptr %5, align 8, !tbaa !210, !noalias !366 ; 2 uses
end_hunk_1
