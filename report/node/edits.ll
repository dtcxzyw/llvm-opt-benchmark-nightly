Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/edits?download=true
inline.NumInlined: 94
inline.NumDeleted: 14
begin_hunk_0_@_ZN6icu_785Edits10addReplaceEii:bb.a
  %.0.i.i = phi i32 [ %spec.select.i.i, %bb.s ], [ 2000, %bb.p ] ; 3 uses
  %i.ba = sub nsw i32 %.0.i.i, %i.at
  %i.bb = icmp slt i32 %i.ba, 5
  br i1 %i.bb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i
  store i32 8, ptr %i.a, align 8
  br label %_ZN6icu_785Edits6appendEi.exit

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.bc = sext i32 %.0.i.i to i64
  %i.bd = shl nsw i64 %i.bc, 1
  %i.be = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.bd) #12 ; 4 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 7, ptr %i.a, align 8
  br label %_ZN6icu_785Edits6appendEi.exit

bb.w:                                             ; preds = %bb.u
  %i.bg = load ptr, ptr %0, align 8               ; 3 uses
  %i.bh = load i32, ptr %i.v, align 4             ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = shl nsw i64 %i.bi, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.be, ptr align 2 %i.bg, i64 %i.bj, i1 false)
  %.not.i.i.i = icmp eq ptr %i.bg, %i.av
  br i1 %.not.i.i.i, label %_ZN6icu_785Edits9growArrayEv.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @uprv_free_78(ptr noundef %i.bg) #11
  %.pre3.pre.i = load i32, ptr %i.v, align 4
  br label %_ZN6icu_785Edits9growArrayEv.exit.i

_ZN6icu_785Edits9growArrayEv.exit.i:              ; preds = %bb.x, %bb.w
  %.pre3.i = phi i32 [ %i.bh, %bb.w ], [ %.pre3.pre.i, %bb.x ]
  store ptr %i.be, ptr %0, align 8
  store i32 %.0.i.i, ptr %i.as, align 8
  br label %bb.y

bb.y:                                             ; preds = %_ZN6icu_785Edits9growArrayEv.exit.i, %bb.o
  %i.bk = phi i32 [ %.pre3.i, %_ZN6icu_785Edits9growArrayEv.exit.i ], [ %i.w, %bb.o ] ; 2 uses
  %i.bl = phi ptr [ %i.be, %_ZN6icu_785Edits9growArrayEv.exit.i ], [ %.pre.i, %bb.o ]
  %i.bm = trunc i32 %i.z to i16
  %i.bn = add nsw i32 %i.bk, 1
  store i32 %i.bn, ptr %i.v, align 4
  %i.bo = sext i32 %i.bk to i64
  %i.bp = getelementptr inbounds [2 x i8], ptr %i.bl, i64 %i.bo
  store i16 %i.bm, ptr %i.bp, align 2
  br label %_ZN6icu_785Edits6appendEi.exit

bb.z:                                             ; preds = %bb.k
  %i.bq = icmp slt i32 %1, 61                     ; 2 uses
  %i.br = icmp slt i32 %2, 61                     ; 2 uses
  %or.cond11 = and i1 %i.bq, %i.br
  br i1 %or.cond11, label %bb.aa, label %bb.al

bb.aa:                                            ; preds = %bb.z
  %i.bs = shl nuw nsw i32 %1, 6
  %i.bt = or i32 %i.bs, %2
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8            ; 5 uses
  %i.bw = icmp slt i32 %i.w, %i.bv
  %.pre.i87 = load ptr, ptr %0, align 8           ; 2 uses
  br i1 %i.bw, label %bb.ak, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.by = icmp eq ptr %.pre.i87, %i.bx
  br i1 %i.by, label %._crit_edge.i.i89, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bz = icmp eq i32 %i.bv, 2147483647
  br i1 %i.bz, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 8, ptr %i.a, align 8
  br label %_ZN6icu_785Edits6appendEi.exit

bb.ae:                                            ; preds = %bb.ac
  %i.ca = icmp sgt i32 %i.bv, 1073741822
  %i.cb = shl nsw i32 %i.bv, 1
  %spec.select.i.i88 = select i1 %i.ca, i32 2147483647, i32 %i.cb
  br label %._crit_edge.i.i89

._crit_edge.i.i89:                                ; preds = %bb.ae, %bb.ab
  %.0.i.i90 = phi i32 [ %spec.select.i.i88, %bb.ae ], [ 2000, %bb.ab ] ; 3 uses
  %i.cc = sub nsw i32 %.0.i.i90, %i.bv
  %i.cd = icmp slt i32 %i.cc, 5
  br i1 %i.cd, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i.i89
  store i32 8, ptr %i.a, align 8
  br label %_ZN6icu_785Edits6appendEi.exit

bb.ag:                                            ; preds = %._crit_edge.i.i89
  %i.ce = sext i32 %.0.i.i90 to i64
  %i.cf = shl nsw i64 %i.ce, 1
  %i.cg = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.cf) #12 ; 4 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 7, ptr %i.a, align 8
  br label %_ZN6icu_785Edits6appendEi.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ci = load ptr, ptr %0, align 8               ; 3 uses
  %i.cj = load i32, ptr %i.v, align 4             ; 2 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = shl nsw i64 %i.ck, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.cg, ptr align 2 %i.ci, i64 %i.cl, i1 false)
  %.not.i.i.i91 = icmp eq ptr %i.ci, %i.bx
  br i1 %.not.i.i.i91, label %_ZN6icu_785Edits9growArrayEv.exit.i93, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @uprv_free_78(ptr noundef %i.ci) #11
  %.pre3.pre.i92 = load i32, ptr %i.v, align 4
  br label %_ZN6icu_785Edits9growArrayEv.exit.i93

_ZN6icu_785Edits9growArrayEv.exit.i93:            ; preds = %bb.aj, %bb.ai
  %.pre3.i94 = phi i32 [ %i.cj, %bb.ai ], [ %.pre3.pre.i92, %bb.aj ]
  store ptr %i.cg, ptr %0, align 8
  store i32 %.0.i.i90, ptr %i.bu, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN6icu_785Edits9growArrayEv.exit.i93, %bb.aa
  %i.cm = phi i32 [ %.pre3.i94, %_ZN6icu_785Edits9growArrayEv.exit.i93 ], [ %i.w, %bb.aa ] ; 2 uses
  %i.cn = phi ptr [ %i.cg, %_ZN6icu_785Edits9growArrayEv.exit.i93 ], [ %.pre.i87, %bb.aa ]
  %i.co = trunc i32 %i.bt to i16
  %i.cp = or i16 %i.co, 28672
  %i.cq = add nsw i32 %i.cm, 1
  store i32 %i.cq, ptr %i.v, align 4
  %i.cr = sext i32 %i.cm to i64
  %i.cs = getelementptr inbounds [2 x i8], ptr %i.cn, i64 %i.cr
  store i16 %i.cp, ptr %i.cs, align 2
  br label %_ZN6icu_785Edits6appendEi.exit

bb.al:                                            ; preds = %bb.z
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = sub nsw i32 %i.cu, %i.w
  %i.cw = icmp sgt i32 %i.cv, 4
  br i1 %i.cw, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cx = tail call noundef signext i8 @_ZN6icu_785Edits9growArrayEv(ptr noundef nonnull align 8 dereferenceable(232) %0)
  %.not79 = icmp eq i8 %i.cx, 0
  br i1 %.not79, label %_ZN6icu_785Edits6appendEi.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.am
  %.pre = load i32, ptr %i.v, align 4
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge, %bb.al
  %i.cy = phi i32 [ %.pre, %._crit_edge ], [ %i.w, %bb.al ] ; 4 uses
  %i.cz = add nsw i32 %i.cy, 1                    ; 3 uses
  br i1 %i.bq, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.da = shl nuw nsw i32 %1, 6
  %i.db = or i32 %i.da, 28672
  br label %bb.as

bb.ap:                                            ; preds = %bb.an
  %i.dc = icmp samesign ult i32 %1, 32768
  br i1 %i.dc, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.dd = trunc nuw nsw i32 %1 to i16
  %i.de = or disjoint i16 %i.dd, -32768
  %i.df = load ptr, ptr %0, align 8
  %i.dg = add nsw i32 %i.cy, 2
  %i.dh = sext i32 %i.cz to i64
  %i.di = getelementptr inbounds [2 x i8], ptr %i.df, i64 %i.dh
  store i16 %i.de, ptr %i.di, align 2
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.dj = lshr i32 %1, 24
  %i.dk = and i32 %i.dj, 64
  %i.dl = or disjoint i32 %i.dk, 32640
  %i.dm = lshr i32 %1, 15
  %i.dn = trunc nuw i32 %i.dm to i16
  %i.do = or i16 %i.dn, -32768
  %i.dp = load ptr, ptr %0, align 8
  %i.dq = sext i32 %i.cz to i64
  %i.dr = getelementptr inbounds [2 x i8], ptr %i.dp, i64 %i.dq
  store i16 %i.do, ptr %i.dr, align 2
  %i.ds = trunc i32 %1 to i16
  %i.dt = or i16 %i.ds, -32768
  %i.du = load ptr, ptr %0, align 8
  %i.dv = add nsw i32 %i.cy, 3
  %i.dw = sext i32 %i.cy to i64
  %i.dx = getelementptr [2 x i8], ptr %i.du, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dx, i64 4
  store i16 %i.dt, ptr %i.dy, align 2
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar, %bb.ao
  %.070 = phi i32 [ %i.db, %bb.ao ], [ 32576, %bb.aq ], [ %i.dl, %bb.ar ] ; 3 uses
  %.0 = phi i32 [ %i.cz, %bb.ao ], [ %i.dg, %bb.aq ], [ %i.dv, %bb.ar ] ; 5 uses
  br i1 %i.br, label %3, label %bb.at

3:                                                ; preds = %bb.as
  %4 = or i32 %.070, %2
  br label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.dz = icmp samesign ult i32 %2, 32768
  br i1 %i.dz, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %5 = or i32 %.070, 61
  %i.ea = trunc nuw nsw i32 %2 to i16
  %i.eb = or disjoint i16 %i.ea, -32768
  %i.ec = load ptr, ptr %0, align 8
  %i.ed = add nsw i32 %.0, 1
  %i.ee = sext i32 %.0 to i64
  %i.ef = getelementptr inbounds [2 x i8], ptr %i.ec, i64 %i.ee
  store i16 %i.eb, ptr %i.ef, align 2
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.eg = lshr i32 %2, 30
  %6 = or i32 %i.eg, %.070
  %i.eh = or i32 %6, 62
  %i.ei = lshr i32 %2, 15
  %i.ej = trunc nuw i32 %i.ei to i16
  %i.ek = or i16 %i.ej, -32768
  %i.el = load ptr, ptr %0, align 8
  %i.em = sext i32 %.0 to i64                     ; 2 uses
  %i.en = getelementptr inbounds [2 x i8], ptr %i.el, i64 %i.em
  store i16 %i.ek, ptr %i.en, align 2
  %i.eo = trunc i32 %2 to i16
  %i.ep = or i16 %i.eo, -32768
  %i.eq = load ptr, ptr %0, align 8
  %i.er = add nsw i32 %.0, 2
  %i.es = getelementptr [2 x i8], ptr %i.eq, i64 %i.em
  %i.et = getelementptr i8, ptr %i.es, i64 2
  store i16 %i.ep, ptr %i.et, align 2
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av, %3
  %.pn = phi i32 [ %4, %3 ], [ %5, %bb.au ], [ %i.eh, %bb.av ]
  %.1 = phi i32 [ %.0, %3 ], [ %i.ed, %bb.au ], [ %i.er, %bb.av ]
  %i.eu = trunc nuw nsw i32 %.pn to i16
  %i.ev = load ptr, ptr %0, align 8
  %i.ew = load i32, ptr %i.v, align 4
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [2 x i8], ptr %i.ev, i64 %i.ex
  store i16 %i.eu, ptr %i.ey, align 2
  store i32 %.1, ptr %i.v, align 4
  br label %_ZN6icu_785Edits6appendEi.exit

_ZN6icu_785Edits6appendEi.exit:                   ; preds = %bb.ak, %bb.ah, %bb.af, %bb.ad, %bb.y, %bb.v, %bb.t, %bb.r, %bb.i, %bb.n, %bb.am, %bb.aw, %bb.d, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZN6icu_785Edits9growArrayEv(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(232) %0) local_unnamed_addr #0 align 2 !guid !24 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8 ; 4 uses
  br i1 %i.c, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %.pre, 2147483647
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 8, ptr %i.e, align 8
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.f = icmp sgt i32 %.pre, 1073741822
  %i.g = shl nsw i32 %.pre, 1
  %spec.select = select i1 %i.f, i32 2147483647, i32 %i.g
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ %spec.select, %bb.d ], [ 2000, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = sub nsw i32 %.0, %.pre
  %i.j = icmp slt i32 %i.i, 5
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 8, ptr %i.k, align 8
  br label %bb.j

bb.f:                                             ; preds = %._crit_edge
  %i.l = sext i32 %.0 to i64
  %i.m = shl nsw i64 %i.l, 1
  %i.n = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.m) #12 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 7, ptr %i.p, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %0, align 8                ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load i32, ptr %i.r, align 4
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.n, ptr align 2 %i.q, i64 %i.u, i1 false)
  %.not.i = icmp eq ptr %i.q, %i.b
  br i1 %.not.i, label %_ZN6icu_785Edits12releaseArrayEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @uprv_free_78(ptr noundef %i.q) #11
  br label %_ZN6icu_785Edits12releaseArrayEv.exit

_ZN6icu_785Edits12releaseArrayEv.exit:            ; preds = %bb.h, %bb.i
  store ptr %i.n, ptr %0, align 8
  store i32 %.0, ptr %i.h, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %_ZN6icu_785Edits12releaseArrayEv.exit, %bb.e, %bb.c
  %.1 = phi i8 [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.g ], [ 1, %_ZN6icu_785Edits12releaseArrayEv.exit ]
  ret i8 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_785Edits11copyErrorToER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #5 align 2 !guid !25 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %i.d, ptr %1, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i8 [ 1, %bb.c ], [ 1, %bb.a ], [ 0, %bb.b ]
  ret i8 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(232) ptr @_ZN6icu_785Edits14mergeAndAppendERKS0_S2_R10UErrorCode(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(232) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #0 align 2 !guid !32 {
bb.a:
  %4 = alloca %"struct.icu_78::Edits::Iterator", align 8 ; 11 uses
  %5 = alloca %"struct.icu_78::Edits::Iterator", align 8 ; 14 uses
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZNK6icu_785Edits11copyErrorToER10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNK6icu_785Edits11copyErrorToER10UErrorCode.exit

bb.c:                                             ; preds = %bb.b
  store i32 %i.d, ptr %3, align 4
  br label %_ZNK6icu_785Edits11copyErrorToER10UErrorCode.exit.thread

_ZNK6icu_785Edits11copyErrorToER10UErrorCode.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.f = load ptr, ptr %1, align 8, !noalias !33
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load i32, ptr %i.g, align 4, !noalias !33
  store ptr %i.f, ptr %4, align 8, !alias.scope !33
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.i, align 8, !alias.scope !33
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.h, ptr %i.j, align 4, !alias.scope !33
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.k, i8 0, i64 28, i1 false), !alias.scope !33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.l = load ptr, ptr %2, align 8, !noalias !34
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.n = load i32, ptr %i.m, align 4, !noalias !34
  store ptr %i.l, ptr %5, align 8, !alias.scope !34
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.o, align 8, !alias.scope !34
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %i.n, ptr %i.p, align 4, !alias.scope !34
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.q, i8 0, i64 28, i1 false), !alias.scope !34
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 23 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 23 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %_ZNK6icu_785Edits11copyErrorToER10UErrorCode.exit
  %.0103.ph = phi i8 [ 1, %_ZNK6icu_785Edits11copyErrorToER10UErrorCode.exit ], [ %.1104, %.outer.backedge ] ; 2 uses
  %.0100.ph = phi i32 [ 0, %_ZNK6icu_785Edits11copyErrorToER10UErrorCode.exit ], [ %.0100.ph.be, %.outer.backedge ]
  %.097.ph = phi i32 [ 0, %_ZNK6icu_785Edits11copyErrorToER10UErrorCode.exit ], [ %.097.ph.be, %.outer.backedge ] ; 3 uses
  %.094.ph = phi i32 [ 0, %_ZNK6icu_785Edits11copyErrorToER10UErrorCode.exit ], [ %.094.ph.be, %.outer.backedge ] ; 2 uses
  %.091.ph = phi i32 [ 0, %_ZNK6icu_785Edits11copyErrorToER10UErrorCode.exit ], [ %.091.ph.be, %.outer.backedge ] ; 3 uses
  %.087.ph = phi i32 [ 0, %_ZNK6icu_785Edits11copyErrorToER10UErrorCode.exit ], [ %.087.ph.be, %.outer.backedge ] ; 7 uses
  %.085.ph = phi i32 [ 0, %_ZNK6icu_785Edits11copyErrorToER10UErrorCode.exit ], [ %.085.ph.be, %.outer.backedge ] ; 6 uses
  %i.z = icmp eq i32 %.094.ph, 0
  %i.aa = icmp ne i8 %.0103.ph, 0
  %or.cond5145 = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond5145, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.outer
  %i.ab = icmp eq i32 %.097.ph, 0
  %i.ac = load i8, ptr %i.u, align 1
  %.not124 = icmp eq i8 %i.ac, 0
  %or.cond139 = select i1 %i.ab, i1 true, i1 %.not124
  %or.cond139.fr = freeze i1 %or.cond139
  %i.ad = load i8, ptr %i.r, align 4
  %i.ae = call noundef signext i8 @_ZN6icu_785Edits8Iterator4nextEaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 noundef signext %i.ad, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.not109.us205 = icmp eq i8 %i.ae, 0            ; 2 uses
  br i1 %or.cond139.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not109.us205, label %._crit_edge, label %.lr.ph208.preheader

.lr.ph208.preheader:                              ; preds = %.lr.ph.split.us
  %i.af = load i32, ptr %i.s, align 8             ; 2 uses
  %i.ag = load i32, ptr %i.t, align 4             ; 3 uses
  %i.ah = icmp eq i32 %i.af, 0
  br i1 %i.ah, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph208.preheader
  %i.ai = add nsw i32 %i.ag, %.085.ph
  tail call void @_ZN6icu_785Edits10addReplaceEii(ptr noundef nonnull align 8 dereferenceable(232) %0, i32 noundef %.087.ph, i32 noundef %i.ai)
  %i.aj = load i8, ptr %i.r, align 4
  %i.ak = call noundef signext i8 @_ZN6icu_785Edits8Iterator4nextEaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 noundef signext %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.not109.us.us.peel = icmp eq i8 %i.ak, 0
end_hunk_0
