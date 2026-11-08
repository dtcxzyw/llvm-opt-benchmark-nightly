Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/euf_egraph?download=true
inline.NumInlined: 1310
inline.NumDeleted: 546
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN3euf6egraph16reinsert_parentsEPNS_5enodeES2_:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %._crit_edge, label %_ZNK3euf13enode_parents3endEv.exit

_ZNK3euf13enode_parents3endEv.exit:               ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !131  ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %.not40 = icmp eq i32 %i.e, 0
  br i1 %.not40, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK3euf13enode_parents3endEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.p, %bb.a, %_ZNK3euf13enode_parents3endEv.exit
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.p
  %.041 = phi ptr [ %i.b, %.lr.ph ], [ %i.br, %bb.p ] ; 2 uses
  %i.l = load ptr, ptr %.041, align 8, !tbaa !65  ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !247, !range !127, !noundef !128
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.m, align 8, !tbaa !247
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 13
  %i.q = load i8, ptr %i.p, align 1, !tbaa !41, !range !127, !noundef !128
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.s = tail call { ptr, i8 } @_ZN3euf6etable6insertEPNS_5enodeE(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull %i.l) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.s, 0 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  store ptr %.fca.0.extract.i, ptr %i.t, align 8, !tbaa !141
  %.not13 = icmp eq ptr %.fca.0.extract.i, %i.l
  br i1 %.not13, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.fca.1.extract = extractvalue { ptr, i8 } %i.s, 1
  %i.u = and i8 %.fca.1.extract, 1
  %i.v = zext nneg i8 %i.u to i32
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !144  ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !131  ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !131
  %i.ac = icmp eq i32 %i.z, %i.ab
  br i1 %i.ac, label %bb.g, label %_ZN6vectorIN3euf6egraph8to_mergeELb0EjE9push_backEOS2_.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @_ZN6vectorIN3euf6egraph8to_mergeELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !144 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !131
  br label %_ZN6vectorIN3euf6egraph8to_mergeELb0EjE9push_backEOS2_.exit

_ZN6vectorIN3euf6egraph8to_mergeELb0EjE9push_backEOS2_.exit: ; preds = %bb.f, %bb.g
  %i.ad = phi i32 [ %.pre2.i, %bb.g ], [ %i.z, %bb.f ]
  %i.ae = phi ptr [ %.pre.i, %bb.g ], [ %i.w, %bb.f ]
  %i.af = zext i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.ae, i64 %i.af ; 6 uses
  store ptr %.fca.0.extract.i, ptr %i.ag, align 8, !tbaa !65
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !65
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i32 %i.v, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !146
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i32 0, ptr %.sroa.621.0..sroa_idx, align 8, !tbaa !147
  %.sroa.722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store i32 -1, ptr %.sroa.722.0..sroa_idx, align 8
  %.sroa.823.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store ptr null, ptr %.sroa.823.0..sroa_idx, align 8, !tbaa !46
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !144
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !131
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !131
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.al = load ptr, ptr %i.i, align 8, !tbaa !130 ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 -4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !131 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !131
  %i.ar = icmp eq i32 %i.ao, %i.aq
  br i1 %i.ar, label %bb.j, label %_ZN6vectorIPN3euf5enodeELb0EjE9push_backERKS2_.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @_ZN6vectorIPN3euf5enodeELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i14 = load ptr, ptr %i.i, align 8, !tbaa !130 ; 2 uses
  %.phi.trans.insert.i15 = getelementptr inbounds i8, ptr %.pre.i14, i64 -4
  %.pre2.i16 = load i32, ptr %.phi.trans.insert.i15, align 4, !tbaa !131
  br label %_ZN6vectorIPN3euf5enodeELb0EjE9push_backERKS2_.exit

_ZN6vectorIPN3euf5enodeELb0EjE9push_backERKS2_.exit: ; preds = %bb.i, %bb.j
  %i.as = phi i32 [ %.pre2.i16, %bb.j ], [ %i.ao, %bb.i ] ; 2 uses
  %i.at = phi ptr [ %.pre.i14, %bb.j ], [ %i.al, %bb.i ] ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -4
  %i.av = zext i32 %i.as to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.av
  store ptr %i.l, ptr %i.aw, align 8, !tbaa !65
  %i.ax = add i32 %i.as, 1
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !131
  br label %bb.k

bb.k:                                             ; preds = %_ZN6vectorIPN3euf5enodeELb0EjE9push_backERKS2_.exit, %_ZN6vectorIN3euf6egraph8to_mergeELb0EjE9push_backEOS2_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 15
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !164, !range !127, !noundef !128
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %.sink.split, label %bb.p

bb.l:                                             ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 15
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !164, !range !127, !noundef !128
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.be = load ptr, ptr %i.i, align 8, !tbaa !130 ; 4 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 -4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !131 ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.be, i64 -8
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !131
  %i.bk = icmp eq i32 %i.bh, %i.bj
  br i1 %i.bk, label %bb.o, label %_ZN6vectorIPN3euf5enodeELb0EjE9push_backERKS2_.exit20

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void @_ZN6vectorIPN3euf5enodeELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i17 = load ptr, ptr %i.i, align 8, !tbaa !130 ; 2 uses
  %.phi.trans.insert.i18 = getelementptr inbounds i8, ptr %.pre.i17, i64 -4
  %.pre2.i19 = load i32, ptr %.phi.trans.insert.i18, align 4, !tbaa !131
  br label %_ZN6vectorIPN3euf5enodeELb0EjE9push_backERKS2_.exit20

_ZN6vectorIPN3euf5enodeELb0EjE9push_backERKS2_.exit20: ; preds = %bb.n, %bb.o
  %i.bl = phi i32 [ %.pre2.i19, %bb.o ], [ %i.bh, %bb.n ] ; 2 uses
  %i.bm = phi ptr [ %.pre.i17, %bb.o ], [ %i.be, %bb.n ] ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -4
  %i.bo = zext i32 %i.bl to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bo
  store ptr %i.l, ptr %i.bp, align 8, !tbaa !65
  %i.bq = add i32 %i.bl, 1
  store i32 %i.bq, ptr %i.bn, align 4, !tbaa !131
  br label %.sink.split

.sink.split:                                      ; preds = %bb.k, %_ZN6vectorIPN3euf5enodeELb0EjE9push_backERKS2_.exit20
  tail call void @_ZN3euf6egraph17reinsert_equalityEPNS_5enodeE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %i.l)
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.k, %bb.l, %bb.b
  %i.br = getelementptr inbounds nuw i8, ptr %.041, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.br, %i.h
  br i1 %.not, label %._crit_edge, label %bb.b
}

declare noundef zeroext i1 @_ZNK3euf5enode9congruentEPS0_(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3euf6egraph21unmerge_justificationEPNS_5enodeE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(536) %0, ptr nofree noundef captures(none) initializes((72, 80), (104, 108), (112, 116), (120, 128)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr null, ptr %i.a, align 8, !tbaa !245
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i32 0, ptr %i.b, align 8, !tbaa !147
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 -1, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr null, ptr %.sroa.54.0..sroa_idx, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  tail call void @_ZN3euf5enode21reverse_justificationEv(ptr noundef nonnull align 8 dereferenceable(176) %i.d)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3euf6egraph9propagateEv(ptr noundef nonnull align 8 dereferenceable(536) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.euf::justification", align 8 ; 4 uses
  tail call void @_ZN3euf6egraph10force_pushEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  tail call void @_ZN3euf6egraph17propagate_pluginsEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6vectorIN3euf6egraph8to_mergeELb0EjE5resetEv.exit, label %_ZNK6vectorIN3euf6egraph8to_mergeELb0EjE4sizeEv.exit.lr.ph

_ZNK6vectorIN3euf6egraph8to_mergeELb0EjE4sizeEv.exit.lr.ph: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_ZNK6vectorIN3euf6egraph8to_mergeELb0EjE4sizeEv.exit

_ZNK6vectorIN3euf6egraph8to_mergeELb0EjE4sizeEv.exit: ; preds = %_ZNK6vectorIN3euf6egraph8to_mergeELb0EjE4sizeEv.exit.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %_ZNK6vectorIN3euf6egraph8to_mergeELb0EjE4sizeEv.exit.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.g = phi ptr [ %i.b, %_ZNK6vectorIN3euf6egraph8to_mergeELb0EjE4sizeEv.exit.lr.ph ], [ %i.ag, %bb.h ] ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !131
  %i.j = zext i32 %i.i to i64
  %i.k = icmp samesign ult i64 %indvars.iv, %i.j
  br i1 %i.k, label %bb.b, label %.critedge.thread32

bb.b:                                             ; preds = %_ZNK6vectorIN3euf6egraph8to_mergeELb0EjE4sizeEv.exit
  %i.l = load ptr, ptr %0, align 8, !tbaa !161, !nonnull !128, !align !162
  %i.m = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40) %i.l)
  br i1 %i.m, label %bb.c, label %..critedge.loopexit_crit_edge

..critedge.loopexit_crit_edge:                    ; preds = %bb.b
  %.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !144
  br label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.n = load i8, ptr %2, align 4, !tbaa !149, !range !127, !noundef !128
  %i.o = trunc nuw i8 %i.n to i1
  %.pre.pre25 = load ptr, ptr %i.a, align 8, !tbaa !144 ; 3 uses
  br i1 %i.o, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %.pre.pre25, i64 %indvars.iv ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !336  ; 2 uses
  switch i32 %i.r, label %bb.h [
    i32 0, label %bb.e
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !337
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !338
  %i.v = icmp eq i32 %i.r, 1
  %i.w = load i64, ptr %i.d, align 8, !tbaa !339  ; 2 uses
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.d, align 8, !tbaa !339
  %i.y = zext i1 %i.v to i8
  store i32 1, ptr %1, align 8, !tbaa !248, !alias.scope !340
  store i8 %i.y, ptr %i.e, align 8, !tbaa !46, !alias.scope !340
  store i64 %i.w, ptr %i.f, align 8, !tbaa !46, !alias.scope !340
  tail call void @_ZN3euf6egraph5mergeEPNS_5enodeES2_NS_13justificationE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.s, ptr noundef %i.u, ptr noundef nonnull byval(%"class.euf::justification") align 8 %1)
  br label %thread-pre-split

bb.f:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !337
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !338
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  tail call void @_ZN3euf6egraph5mergeEPNS_5enodeES2_NS_13justificationE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.z, ptr noundef %i.ab, ptr noundef nonnull byval(%"class.euf::justification") align 8 %i.ac)
  br label %thread-pre-split

bb.g:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !337
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !338
  tail call void @_ZN3euf6egraph11add_literalEPNS_5enodeES2_(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.ad, ptr noundef %i.af)
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.e, %bb.f, %bb.g
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !144
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split, %bb.d
  %i.ag = phi ptr [ %.pr, %thread-pre-split ], [ %.pre.pre25, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZN6vectorIN3euf6egraph8to_mergeELb0EjE5resetEv.exit, label %_ZNK6vectorIN3euf6egraph8to_mergeELb0EjE4sizeEv.exit, !llvm.loop !334

.critedge:                                        ; preds = %bb.c, %..critedge.loopexit_crit_edge
  %i.ai = phi ptr [ %.pre.pre, %..critedge.loopexit_crit_edge ], [ %.pre.pre25, %bb.c ] ; 2 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %_ZN6vectorIN3euf6egraph8to_mergeELb0EjE5resetEv.exit, label %.critedge.thread32

.critedge.thread32:                               ; preds = %_ZNK6vectorIN3euf6egraph8to_mergeELb0EjE4sizeEv.exit, %.critedge
  %i.aj = phi ptr [ %i.ai, %.critedge ], [ %i.g, %_ZNK6vectorIN3euf6egraph8to_mergeELb0EjE4sizeEv.exit ]
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4
  store i32 0, ptr %i.ak, align 4, !tbaa !131
  br label %_ZN6vectorIN3euf6egraph8to_mergeELb0EjE5resetEv.exit

_ZN6vectorIN3euf6egraph8to_mergeELb0EjE5resetEv.exit: ; preds = %bb.h, %bb.a, %.critedge, %.critedge.thread32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !173 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZNK6vectorIN3euf5th_eqELb0EjE4sizeEv.exit.thread, label %_ZNK6vectorIN3euf5th_eqELb0EjE4sizeEv.exit

_ZNK6vectorIN3euf5th_eqELb0EjE4sizeEv.exit:       ; preds = %_ZN6vectorIN3euf6egraph8to_mergeELb0EjE5resetEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !155
  %i.aq = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !131
  %i.as = icmp ult i32 %i.ap, %i.ar
  br i1 %i.as, label %bb.i, label %_ZNK6vectorIN3euf5th_eqELb0EjE4sizeEv.exit.thread

_ZNK6vectorIN3euf5th_eqELb0EjE4sizeEv.exit.thread: ; preds = %_ZN6vectorIN3euf6egraph8to_mergeELb0EjE5resetEv.exit, %_ZNK6vectorIN3euf5th_eqELb0EjE4sizeEv.exit
  %i.at = load i8, ptr %2, align 4, !tbaa !149, !range !127, !noundef !128
  %i.au = trunc nuw i8 %i.at to i1
  br label %bb.i

bb.i:                                             ; preds = %_ZNK6vectorIN3euf5th_eqELb0EjE4sizeEv.exit.thread, %_ZNK6vectorIN3euf5th_eqELb0EjE4sizeEv.exit
  %i.av = phi i1 [ true, %_ZNK6vectorIN3euf5th_eqELb0EjE4sizeEv.exit ], [ %i.au, %_ZNK6vectorIN3euf5th_eqELb0EjE4sizeEv.exit.thread ]
  ret i1 %i.av
}

declare noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZN3euf5enode21reverse_justificationEv(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3euf6egraph9are_diseqEPNS_5enodeES2_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(536) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 6 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !163, !range !127, !noundef !128
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.j = load i8, ptr %i.i, align 4, !tbaa !163, !range !127, !noundef !128
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.m = tail call noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.l)
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.o = tail call noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.n)
  %.not = icmp eq ptr %i.m, %i.o
  br i1 %.not, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !130  ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZNK3euf5enode11num_parentsEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 -4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !131
  br label %_ZNK3euf5enode11num_parentsEv.exit.i

_ZNK3euf5enode11num_parentsEv.exit.i:             ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.t, %bb.f ], [ 0, %bb.e ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !130  ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZNK3euf5enode11num_parentsEv.exit16.i, label %bb.g

bb.g:                                             ; preds = %_ZNK3euf5enode11num_parentsEv.exit.i
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !131
  br label %_ZNK3euf5enode11num_parentsEv.exit16.i

_ZNK3euf5enode11num_parentsEv.exit16.i:           ; preds = %bb.g, %_ZNK3euf5enode11num_parentsEv.exit.i
  %.0.i.i15.i = phi i32 [ %i.y, %bb.g ], [ 0, %_ZNK3euf5enode11num_parentsEv.exit.i ]
  %i.z = icmp ugt i32 %.0.i.i.i, %.0.i.i15.i      ; 2 uses
  %spec.select.i = select i1 %i.z, ptr %i.d, ptr %i.b
  %spec.select29.i = select i1 %i.z, ptr %i.b, ptr %i.d ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !130 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN3euf6egraph6tmp_eqEPNS_5enodeES2_.exit.thread, label %_ZNK3euf13enode_parents3endEv.exit.i

_ZNK3euf13enode_parents3endEv.exit.i:             ; preds = %_ZNK3euf5enode11num_parentsEv.exit16.i
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag
  %.not30.i = icmp eq i32 %i.ae, 0
  br i1 %.not30.i, label %_ZN3euf6egraph6tmp_eqEPNS_5enodeES2_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK3euf13enode_parents3endEv.exit.i, %bb.j
  %.01231.i = phi ptr [ %i.aw, %bb.j ], [ %i.ab, %_ZNK3euf13enode_parents3endEv.exit.i ] ; 2 uses
  %i.ai = load ptr, ptr %.01231.i, align 8, !tbaa !65 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 15
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !164, !range !127, !noundef !128
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.lr.ph.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 176
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !65
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !50
  %i.aq = icmp eq ptr %spec.select29.i, %i.ap
  br i1 %i.aq, label %_ZN3euf6egraph6tmp_eqEPNS_5enodeES2_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 184
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !65
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !50
  %i.av = icmp eq ptr %spec.select29.i, %i.au
  br i1 %i.av, label %_ZN3euf6egraph6tmp_eqEPNS_5enodeES2_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.01231.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.aw, %i.ah
  br i1 %.not.i, label %_ZN3euf6egraph6tmp_eqEPNS_5enodeES2_.exit.thread, label %.lr.ph.i

_ZN3euf6egraph6tmp_eqEPNS_5enodeES2_.exit:        ; preds = %bb.i, %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !50
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !142
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %bb.k, label %_ZN3euf6egraph6tmp_eqEPNS_5enodeES2_.exit.thread

_ZN3euf6egraph6tmp_eqEPNS_5enodeES2_.exit.thread: ; preds = %bb.j, %_ZNK3euf5enode11num_parentsEv.exit16.i, %_ZNK3euf13enode_parents3endEv.exit.i, %_ZN3euf6egraph6tmp_eqEPNS_5enodeES2_.exit
  br label %bb.k

bb.k:                                             ; preds = %_ZN3euf6egraph6tmp_eqEPNS_5enodeES2_.exit.thread, %_ZN3euf6egraph6tmp_eqEPNS_5enodeES2_.exit, %bb.d, %bb.c, %bb.a
  %.1 = phi i1 [ true, %bb.d ], [ false, %bb.a ], [ true, %bb.c ], [ false, %_ZN3euf6egraph6tmp_eqEPNS_5enodeES2_.exit.thread ], [ true, %_ZN3euf6egraph6tmp_eqEPNS_5enodeES2_.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN3euf6egraph6tmp_eqEPNS_5enodeES2_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(536) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK3euf5enode11num_parentsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !131
  br label %_ZNK3euf5enode11num_parentsEv.exit

_ZNK3euf5enode11num_parentsEv.exit:               ; preds = %bb.a, %bb.b
  %.0.i.i = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !130  ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZNK3euf5enode11num_parentsEv.exit16, label %bb.c

bb.c:                                             ; preds = %_ZNK3euf5enode11num_parentsEv.exit
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !131
  br label %_ZNK3euf5enode11num_parentsEv.exit16

_ZNK3euf5enode11num_parentsEv.exit16:             ; preds = %_ZNK3euf5enode11num_parentsEv.exit, %bb.c
  %.0.i.i15 = phi i32 [ %i.j, %bb.c ], [ 0, %_ZNK3euf5enode11num_parentsEv.exit ]
  %i.k = icmp ugt i32 %.0.i.i, %.0.i.i15          ; 2 uses
  %spec.select = select i1 %i.k, ptr %2, ptr %1
  %spec.select29 = select i1 %i.k, ptr %1, ptr %2 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %spec.select, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !130  ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %._crit_edge, label %_ZNK3euf13enode_parents3endEv.exit

_ZNK3euf13enode_parents3endEv.exit:               ; preds = %_ZNK3euf5enode11num_parentsEv.exit16
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !131  ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.r
  %.not30 = icmp eq i32 %i.p, 0
  br i1 %.not30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK3euf13enode_parents3endEv.exit, %bb.f
  %.01231 = phi ptr [ %i.ah, %bb.f ], [ %i.m, %_ZNK3euf13enode_parents3endEv.exit ] ; 2 uses
  %i.t = load ptr, ptr %.01231, align 8, !tbaa !65 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 15
  %i.v = load i8, ptr %i.u, align 1, !tbaa !164, !range !127, !noundef !128
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !65
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !50
  %i.ab = icmp eq ptr %spec.select29, %i.aa
  br i1 %i.ab, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !65
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !50
  %i.ag = icmp eq ptr %spec.select29, %i.af
  br i1 %i.ag, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %.01231, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ah, %i.s
end_hunk_0
