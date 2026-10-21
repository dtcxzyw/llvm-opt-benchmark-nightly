Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/loop-analysis?download=true
inline.NumInlined: 948
inline.NumDeleted: 473
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v88internal8compiler14LoopFinderImpl14FinishLoopTreeEv:bb.a
  br label %bb.f

._crit_edge77:                                    ; preds = %bb.g
  %i.ar = icmp eq ptr %.453, null
  br i1 %i.ar, label %._crit_edge77.thread, label %bb.n

bb.f:                                             ; preds = %.lr.ph76, %bb.g
  %indvars.iv91 = phi i64 [ 0, %.lr.ph76 ], [ %indvars.iv.next92, %bb.g ] ; 3 uses
  %.04873 = phi i32 [ 0, %.lr.ph76 ], [ %.4, %bb.g ]
  %.04972 = phi ptr [ null, %.lr.ph76 ], [ %.453, %bb.g ]
  %i.as = add nsw i64 %indvars.iv91, %i.aq        ; 2 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4
  %i.av = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.as
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = and i32 %i.aw, %i.au
  %i.ay = shl i64 %indvars.iv91, 5
  %i.az = and i64 %i.ay, 4294967264
  br label %bb.h

bb.g:                                             ; preds = %bb.m
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count
  br i1 %exitcond94.not, label %._crit_edge77, label %bb.f, !llvm.loop !34

bb.h:                                             ; preds = %bb.f, %bb.m
  %indvars.iv = phi i64 [ 0, %bb.f ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %.170 = phi i32 [ %.04873, %bb.f ], [ %.4, %bb.m ] ; 3 uses
  %.15069 = phi ptr [ %.04972, %bb.f ], [ %.453, %bb.m ] ; 5 uses
  %i.ba = trunc nuw nsw i64 %indvars.iv to i32
  %i.bb = shl nuw i32 1, %i.ba
  %i.bc = and i32 %i.ax, %i.bb
  %.not65 = icmp eq i32 %i.bc, 0
  br i1 %.not65, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = add nuw nsw i64 %indvars.iv, %i.az      ; 3 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = load ptr, ptr %i.l, align 8
  %i.bg = getelementptr [40 x i8], ptr %i.bf, i64 %i.bd ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 -40
  %i.bi = icmp eq ptr %.15069, null
  br i1 %i.bi, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr i8, ptr %i.bg, i64 -8
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.15069, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = icmp sgt i32 %i.bm, %i.bq
  br i1 %i.br, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bs = trunc nuw i64 %i.bd to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %bb.k, %bb.h
  %.453 = phi ptr [ %.15069, %bb.h ], [ %.15069, %bb.i ], [ %i.bh, %bb.l ], [ %.15069, %bb.k ] ; 6 uses
  %.4 = phi i32 [ %.170, %bb.h ], [ %.170, %bb.i ], [ %i.bs, %bb.l ], [ %.170, %bb.k ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %bb.g, label %bb.h, !llvm.loop !35

bb.n:                                             ; preds = %._crit_edge77
  %i.bt = load ptr, ptr %i.ag, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load i16, ptr %i.bu, align 8            ; 2 uses
  %.not64 = icmp eq i16 %i.bv, 17
  br i1 %.not64, label %bb.o, label %bb.p, !prof !8

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #12
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bw = load ptr, ptr %i.m, align 8
  %i.bx = zext nneg i32 %i.ak to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 80
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bx
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = icmp eq i32 %i.cb, %.4
  br i1 %i.cc, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %.05581, i64 8 ; 2 uses
  switch i16 %i.bv, label %bb.s [
    i16 37, label %bb.r
    i16 36, label %bb.r
    i16 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q, %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %.453, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8
  store ptr %i.cf, ptr %i.cd, align 8
  store ptr %.05581, ptr %i.ce, align 8
  br label %_ZN2v88internal8compiler14LoopFinderImpl13AddNodeToLoopEPNS1_8NodeInfoEPNS1_12TempLoopInfoEi.exit

bb.s:                                             ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %.453, i64 16 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8
  store ptr %i.ch, ptr %i.cd, align 8
  store ptr %.05581, ptr %i.cg, align 8
  br label %_ZN2v88internal8compiler14LoopFinderImpl13AddNodeToLoopEPNS1_8NodeInfoEPNS1_12TempLoopInfoEi.exit

bb.t:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %.453, i64 24 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %.05581, i64 8
  store ptr %i.cj, ptr %i.ck, align 8
  store ptr %.05581, ptr %i.ci, align 8
  br label %_ZN2v88internal8compiler14LoopFinderImpl13AddNodeToLoopEPNS1_8NodeInfoEPNS1_12TempLoopInfoEi.exit

_ZN2v88internal8compiler14LoopFinderImpl13AddNodeToLoopEPNS1_8NodeInfoEPNS1_12TempLoopInfoEi.exit: ; preds = %bb.r, %bb.s, %bb.t
  %i.cl = add i64 %.05680, 1
  br label %._crit_edge77.thread

._crit_edge77.thread:                             ; preds = %bb.e, %_ZN2v88internal8compiler14LoopFinderImpl13AddNodeToLoopEPNS1_8NodeInfoEPNS1_12TempLoopInfoEi.exit, %._crit_edge77, %bb.d
  %.258 = phi i64 [ %.05680, %bb.d ], [ %i.cl, %_ZN2v88internal8compiler14LoopFinderImpl13AddNodeToLoopEPNS1_8NodeInfoEPNS1_12TempLoopInfoEi.exit ], [ %.05680, %._crit_edge77 ], [ %.05680, %bb.e ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.05581, i64 24 ; 2 uses
  %.not62 = icmp eq ptr %i.cm, %i.f
  br i1 %.not62, label %._crit_edge85, label %bb.d

.lr.ph89:                                         ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE7reserveEm.exit, %.lr.ph89
  %.04588 = phi ptr [ %i.co, %.lr.ph89 ], [ %i.ad, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE7reserveEm.exit ] ; 2 uses
  %i.cn = load ptr, ptr %.04588, align 8
  tail call void @_ZN2v88internal8compiler14LoopFinderImpl13SerializeLoopEPNS1_8LoopTree4LoopE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %i.cn)
  %i.co = getelementptr inbounds nuw i8, ptr %.04588, i64 8 ; 2 uses
  %.not63 = icmp eq ptr %i.co, %i.af
  br i1 %.not63, label %.loopexit, label %.lr.ph89

.loopexit:                                        ; preds = %.lr.ph89, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE7reserveEm.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler14LoopFinderImpl19ResizeBackwardMarksEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = add nsw i32 %i.b, 1                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 2                   ; 2 uses
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  %i.o = load ptr, ptr %0, align 8                ; 3 uses
  %i.p = mul nsw i32 %i.c, %i.n                   ; 2 uses
  %i.q = icmp sgt i32 %i.p, -1
  br i1 %i.q, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = zext nneg i32 %i.p to i64
  %i.s = shl nuw nsw i64 %i.r, 2                  ; 2 uses
  %i.t = add nuw nsw i64 %i.s, 4
  %i.u = and i64 %i.t, 17179869176                ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = sub i64 %i.w, %i.y
  %i.aa = icmp ugt i64 %i.u, %i.z
  br i1 %i.aa, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit, !prof !8

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.o, i64 noundef %i.u) #11
  %.pre.i.i = load i64, ptr %i.x, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.ab = phi i64 [ %.pre.i.i, %bb.d ], [ %i.y, %bb.c ] ; 2 uses
  %i.ac = inttoptr i64 %i.ab to ptr               ; 3 uses
  %i.ad = add i64 %i.ab, %i.u
  store i64 %i.ad, ptr %i.x, align 8
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ac, i8 0, i64 %i.s, i1 false)
  %i.ae = load i32, ptr %i.a, align 4             ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  %i.ag = icmp sgt i32 %i.n, 0
  %or.cond = and i1 %i.af, %i.ag
  br i1 %or.cond, label %.lr.ph23.split.preheader, label %.loopexit

.lr.ph23.split.preheader:                         ; preds = %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ai = sext i32 %i.c to i64
  %wide.trip.count = and i64 %i.m, 2147483647
  br label %.lr.ph23.split

.lr.ph23.split:                                   ; preds = %.lr.ph23.split.preheader, %._crit_edge
  %i.aj = phi i32 [ %i.ae, %.lr.ph23.split.preheader ], [ %i.aq, %._crit_edge ] ; 3 uses
  %indvars.iv26 = phi i64 [ 0, %.lr.ph23.split.preheader ], [ %indvars.iv.next27, %._crit_edge ] ; 3 uses
  %i.ak = mul nsw i64 %indvars.iv26, %i.ai
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ak
  %1 = load ptr, ptr %i.ah, align 8
  %i.am = sext i32 %i.aj to i64
  %i.an = mul nsw i64 %indvars.iv26, %i.am
  %i.ao = getelementptr inbounds [4 x i8], ptr %1, i64 %i.an
  %i.ap = icmp sgt i32 %i.aj, 0
  br i1 %i.ap, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph23.split
  %i.aq = phi i32 [ %i.aj, %.lr.ph23.split ], [ %i.au, %.lr.ph ]
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next27, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph23.split, !llvm.loop !37

.lr.ph:                                           ; preds = %.lr.ph23.split, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph23.split ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  store i32 %i.as, ptr %i.at, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.au = load i32, ptr %i.a, align 4             ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next, %i.av
  br i1 %i.aw, label %.lr.ph, label %._crit_edge, !llvm.loop !38

.loopexit:                                        ; preds = %._crit_edge, %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit
  store i32 %i.c, ptr %i.a, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.ac, ptr %i.ax, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal8compiler14LoopFinderImpl14CreateLoopInfoEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 16777215
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = add nsw i32 %i.m, 1                      ; 4 uses
  store i32 %i.n, ptr %i.l, align 8
  %i.o = ashr i32 %i.n, 5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.q = load i32, ptr %i.p, align 4
  %.not = icmp slt i32 %i.o, %i.q
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal8compiler14LoopFinderImpl19ResizeBackwardMarksEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp ult ptr %i.s, %i.u
  br i1 %i.v, label %_ZN2v88internal10ZoneVectorINS0_8compiler12TempLoopInfoEE9push_backEOS3_.exit, label %bb.e, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.u to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = sdiv exact i64 %i.ab, 40
  %i.ad = add nsw i64 %i.ac, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler12TempLoopInfoEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 noundef %i.ad)
  %.pre.i.i = load ptr, ptr %i.r, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler12TempLoopInfoEE9push_backEOS3_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler12TempLoopInfoEE9push_backEOS3_.exit: ; preds = %bb.d, %bb.e
  %i.ae = phi ptr [ %i.s, %bb.d ], [ %.pre.i.i, %bb.e ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store ptr %i.af, ptr %i.r, align 8
  store ptr %1, ptr %i.ae, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, i8 0, i64 32, i1 false)
  %i.ag = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 56 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = icmp ult ptr %i.aj, %i.al
  br i1 %i.am, label %_ZN2v88internal8compiler8LoopTree7NewLoopEv.exit, label %bb.f, !prof !9

bb.f:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler12TempLoopInfoEE9push_backEOS3_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = ptrtoint ptr %i.al to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 6
  %i.au = add nsw i64 %i.at, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler8LoopTree4LoopEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 noundef %i.au)
  %.pre.i.i.i = load ptr, ptr %i.ai, align 8
  br label %_ZN2v88internal8compiler8LoopTree7NewLoopEv.exit

_ZN2v88internal8compiler8LoopTree7NewLoopEv.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler12TempLoopInfoEE9push_backEOS3_.exit, %bb.f
  %i.av = phi ptr [ %i.aj, %_ZN2v88internal10ZoneVectorINS0_8compiler12TempLoopInfoEE9push_backEOS3_.exit ], [ %.pre.i.i.i, %bb.f ] ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  store ptr %i.aw, ptr %i.ai, align 8
  store ptr null, ptr %i.av, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr %i.ah, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 -1, i64 16, i1 false)
  tail call void @_ZN2v88internal8compiler14LoopFinderImpl24SetLoopMarkForLoopHeaderEPNS1_4NodeEi(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull %1, i32 noundef %i.n)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN2v88internal8compiler8LoopTree7NewLoopEv.exit
  %.0 = phi i32 [ %i.n, %_ZN2v88internal8compiler8LoopTree7NewLoopEv.exit ], [ %i.j, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_push_back_auxIJRKS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 2305843009213693951
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = load ptr, ptr %i.ae, align 8
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.g, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3
  %i.al = sub i64 %i.ag, %i.ak
  %i.am = icmp ult i64 %i.al, 2
  br i1 %i.am, label %bb.d, label %_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE22_M_reserve_map_at_backEm.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8
  %.not5.i.i.i = icmp ult i64 %i.aq, 64
  br i1 %.not5.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.ao, align 8
  store ptr %i.ar, ptr %i.an, align 8
  br label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_allocate_nodeEv.exit

bb.g:                                             ; preds = %bb.e, %_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE22_M_reserve_map_at_backEm.exit
  %i.as = load ptr, ptr %0, align 8               ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = sub i64 %i.au, %i.aw
  %i.ay = icmp ult i64 %i.ax, 512
  br i1 %i.ay, label %bb.h, label %_ZN2v88internal13ZoneAllocatorIPNS0_8compiler4NodeEE8allocateEm.exit.i.i.i, !prof !8

bb.h:                                             ; preds = %bb.g
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.as, i64 noundef 512) #11
  %.pre.i.i.i.i.i.i = load i64, ptr %i.av, align 8
  br label %_ZN2v88internal13ZoneAllocatorIPNS0_8compiler4NodeEE8allocateEm.exit.i.i.i

_ZN2v88internal13ZoneAllocatorIPNS0_8compiler4NodeEE8allocateEm.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.az = phi i64 [ %.pre.i.i.i.i.i.i, %bb.h ], [ %i.aw, %bb.g ] ; 2 uses
end_hunk_0
