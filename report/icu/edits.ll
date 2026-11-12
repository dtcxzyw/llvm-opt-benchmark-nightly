Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/edits?download=true
inline.NumInlined: 102
inline.NumDeleted: 14
begin_hunk_0_@_ZN6icu_785Edits10addReplaceEii:bb.a

bb.w:                                             ; preds = %bb.u
  %i.bg = load ptr, ptr %0, align 8, !tbaa !12    ; 3 uses
  %i.bh = load i32, ptr %i.v, align 4, !tbaa !16  ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = shl nsw i64 %i.bi, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.be, ptr align 2 %i.bg, i64 %i.bj, i1 false)
  %.not.i.i.i = icmp eq ptr %i.bg, %i.av
  br i1 %.not.i.i.i, label %_ZN6icu_785Edits9growArrayEv.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @uprv_free_78(ptr noundef %i.bg)
          to label %._ZN6icu_785Edits9growArrayEv.exit_crit_edge.i unwind label %bb.y

._ZN6icu_785Edits9growArrayEv.exit_crit_edge.i:   ; preds = %bb.x
  %.pre3.pre.i = load i32, ptr %i.v, align 4, !tbaa !16
  br label %_ZN6icu_785Edits9growArrayEv.exit.i

bb.y:                                             ; preds = %bb.x
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  tail call void @__clang_call_terminate(ptr %i.bl) #13
  unreachable

_ZN6icu_785Edits9growArrayEv.exit.i:              ; preds = %._ZN6icu_785Edits9growArrayEv.exit_crit_edge.i, %bb.w
  %.pre3.i = phi i32 [ %.pre3.pre.i, %._ZN6icu_785Edits9growArrayEv.exit_crit_edge.i ], [ %i.bh, %bb.w ]
  store ptr %i.be, ptr %0, align 8, !tbaa !12
  store i32 %.0.i.i, ptr %i.as, align 8, !tbaa !17
  br label %bb.z

bb.z:                                             ; preds = %_ZN6icu_785Edits9growArrayEv.exit.i, %bb.o
  %i.bm = phi i32 [ %.pre3.i, %_ZN6icu_785Edits9growArrayEv.exit.i ], [ %i.w, %bb.o ] ; 2 uses
  %i.bn = phi ptr [ %i.be, %_ZN6icu_785Edits9growArrayEv.exit.i ], [ %.pre.i, %bb.o ]
  %i.bo = trunc i32 %i.z to i16
  %i.bp = add nsw i32 %i.bm, 1
  store i32 %i.bp, ptr %i.v, align 4, !tbaa !16
  %i.bq = sext i32 %i.bm to i64
  %i.br = getelementptr inbounds [2 x i8], ptr %i.bn, i64 %i.bq
  store i16 %i.bo, ptr %i.br, align 2, !tbaa !20
  br label %_ZN6icu_785Edits6appendEi.exit

bb.aa:                                            ; preds = %bb.k
  %i.bs = icmp slt i32 %1, 61                     ; 2 uses
  %i.bt = icmp slt i32 %2, 61                     ; 2 uses
  %or.cond11 = and i1 %i.bs, %i.bt
  br i1 %or.cond11, label %bb.ab, label %bb.an

bb.ab:                                            ; preds = %bb.aa
  %i.bu = shl nuw nsw i32 %1, 6
  %i.bv = or i32 %i.bu, %2
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !17 ; 5 uses
  %i.by = icmp slt i32 %i.w, %i.bx
  %.pre.i87 = load ptr, ptr %0, align 8, !tbaa !12 ; 2 uses
  br i1 %i.by, label %bb.am, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ca = icmp eq ptr %.pre.i87, %i.bz
  br i1 %i.ca, label %._crit_edge.i.i89, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cb = icmp eq i32 %i.bx, 2147483647
  br i1 %i.cb, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 8, ptr %i.a, align 8, !tbaa !13
  br label %_ZN6icu_785Edits6appendEi.exit

bb.af:                                            ; preds = %bb.ad
  %i.cc = icmp sgt i32 %i.bx, 1073741822
  %i.cd = shl nsw i32 %i.bx, 1
  %spec.select.i.i88 = select i1 %i.cc, i32 2147483647, i32 %i.cd
  br label %._crit_edge.i.i89

._crit_edge.i.i89:                                ; preds = %bb.af, %bb.ac
  %.0.i.i90 = phi i32 [ %spec.select.i.i88, %bb.af ], [ 2000, %bb.ac ] ; 3 uses
  %i.ce = sub nsw i32 %.0.i.i90, %i.bx
  %i.cf = icmp slt i32 %i.ce, 5
  br i1 %i.cf, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %._crit_edge.i.i89
  store i32 8, ptr %i.a, align 8, !tbaa !13
  br label %_ZN6icu_785Edits6appendEi.exit

bb.ah:                                            ; preds = %._crit_edge.i.i89
  %i.cg = sext i32 %.0.i.i90 to i64
  %i.ch = shl nsw i64 %i.cg, 1
  %i.ci = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.ch) #15 ; 4 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 7, ptr %i.a, align 8, !tbaa !13
  br label %_ZN6icu_785Edits6appendEi.exit

bb.aj:                                            ; preds = %bb.ah
  %i.ck = load ptr, ptr %0, align 8, !tbaa !12    ; 3 uses
  %i.cl = load i32, ptr %i.v, align 4, !tbaa !16  ; 2 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = shl nsw i64 %i.cm, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ci, ptr align 2 %i.ck, i64 %i.cn, i1 false)
  %.not.i.i.i91 = icmp eq ptr %i.ck, %i.bz
  br i1 %.not.i.i.i91, label %_ZN6icu_785Edits9growArrayEv.exit.i94, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void @uprv_free_78(ptr noundef %i.ck)
          to label %._ZN6icu_785Edits9growArrayEv.exit_crit_edge.i92 unwind label %bb.al

._ZN6icu_785Edits9growArrayEv.exit_crit_edge.i92: ; preds = %bb.ak
  %.pre3.pre.i93 = load i32, ptr %i.v, align 4, !tbaa !16
  br label %_ZN6icu_785Edits9growArrayEv.exit.i94

bb.al:                                            ; preds = %bb.ak
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  tail call void @__clang_call_terminate(ptr %i.cp) #13
  unreachable

_ZN6icu_785Edits9growArrayEv.exit.i94:            ; preds = %._ZN6icu_785Edits9growArrayEv.exit_crit_edge.i92, %bb.aj
  %.pre3.i95 = phi i32 [ %.pre3.pre.i93, %._ZN6icu_785Edits9growArrayEv.exit_crit_edge.i92 ], [ %i.cl, %bb.aj ]
  store ptr %i.ci, ptr %0, align 8, !tbaa !12
  store i32 %.0.i.i90, ptr %i.bw, align 8, !tbaa !17
  br label %bb.am

bb.am:                                            ; preds = %_ZN6icu_785Edits9growArrayEv.exit.i94, %bb.ab
  %i.cq = phi i32 [ %.pre3.i95, %_ZN6icu_785Edits9growArrayEv.exit.i94 ], [ %i.w, %bb.ab ] ; 2 uses
  %i.cr = phi ptr [ %i.ci, %_ZN6icu_785Edits9growArrayEv.exit.i94 ], [ %.pre.i87, %bb.ab ]
  %i.cs = trunc i32 %i.bv to i16
  %i.ct = or i16 %i.cs, 28672
  %i.cu = add nsw i32 %i.cq, 1
  store i32 %i.cu, ptr %i.v, align 4, !tbaa !16
  %i.cv = sext i32 %i.cq to i64
  %i.cw = getelementptr inbounds [2 x i8], ptr %i.cr, i64 %i.cv
  store i16 %i.ct, ptr %i.cw, align 2, !tbaa !20
  br label %_ZN6icu_785Edits6appendEi.exit

bb.an:                                            ; preds = %bb.aa
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !17
  %i.cz = sub nsw i32 %i.cy, %i.w
  %i.da = icmp sgt i32 %i.cz, 4
  br i1 %i.da, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.db = tail call noundef signext i8 @_ZN6icu_785Edits9growArrayEv(ptr noundef nonnull align 8 dereferenceable(232) %0)
  %.not79 = icmp eq i8 %i.db, 0
  br i1 %.not79, label %_ZN6icu_785Edits6appendEi.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ao
  %.pre = load i32, ptr %i.v, align 4, !tbaa !16
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge, %bb.an
  %i.dc = phi i32 [ %.pre, %._crit_edge ], [ %i.w, %bb.an ] ; 5 uses
  %i.dd = add nsw i32 %i.dc, 1                    ; 3 uses
  br i1 %i.bs, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.de = shl nuw nsw i32 %1, 6
  %i.df = or i32 %i.de, 28672
  br label %bb.au

bb.ar:                                            ; preds = %bb.ap
  %i.dg = icmp samesign ult i32 %1, 32768
  br i1 %i.dg, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.dh = trunc nuw nsw i32 %1 to i16
  %i.di = or disjoint i16 %i.dh, -32768
  %i.dj = load ptr, ptr %0, align 8, !tbaa !12
  %i.dk = add nsw i32 %i.dc, 2
  %i.dl = sext i32 %i.dd to i64
  %i.dm = getelementptr inbounds [2 x i8], ptr %i.dj, i64 %i.dl
  store i16 %i.di, ptr %i.dm, align 2, !tbaa !20
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.dn = lshr i32 %1, 24
  %i.do = and i32 %i.dn, 64
  %i.dp = or disjoint i32 %i.do, 32640
  %i.dq = lshr i32 %1, 15
  %i.dr = trunc nuw i32 %i.dq to i16
  %i.ds = or i16 %i.dr, -32768
  %i.dt = load ptr, ptr %0, align 8, !tbaa !12    ; 2 uses
  %i.du = sext i32 %i.dd to i64
  %i.dv = getelementptr inbounds [2 x i8], ptr %i.dt, i64 %i.du
  store i16 %i.ds, ptr %i.dv, align 2, !tbaa !20
  %i.dw = trunc i32 %1 to i16
  %i.dx = or i16 %i.dw, -32768
  %i.dy = add nsw i32 %i.dc, 3
  %i.dz = sext i32 %i.dc to i64
  %i.ea = getelementptr [2 x i8], ptr %i.dt, i64 %i.dz
  %i.eb = getelementptr i8, ptr %i.ea, i64 4
  store i16 %i.dx, ptr %i.eb, align 2, !tbaa !20
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at, %bb.aq
  %.070 = phi i32 [ %i.df, %bb.aq ], [ 32576, %bb.as ], [ %i.dp, %bb.at ]
  %.0 = phi i32 [ %i.dd, %bb.aq ], [ %i.dk, %bb.as ], [ %i.dy, %bb.at ] ; 5 uses
  br i1 %i.bt, label %._crit_edge98, label %bb.av

._crit_edge98:                                    ; preds = %bb.au
  %.pre99 = load ptr, ptr %0, align 8, !tbaa !12
  br label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.ec = icmp samesign ult i32 %2, 32768
  br i1 %i.ec, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ed = trunc nuw nsw i32 %2 to i16
  %i.ee = or disjoint i16 %i.ed, -32768
  %i.ef = load ptr, ptr %0, align 8, !tbaa !12    ; 2 uses
  %i.eg = add nsw i32 %.0, 1
  %i.eh = sext i32 %.0 to i64
  %i.ei = getelementptr inbounds [2 x i8], ptr %i.ef, i64 %i.eh
  store i16 %i.ee, ptr %i.ei, align 2, !tbaa !20
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.ej = lshr i32 %2, 30
  %i.ek = or disjoint i32 %i.ej, 62
  %i.el = lshr i32 %2, 15
  %i.em = trunc nuw i32 %i.el to i16
  %i.en = or i16 %i.em, -32768
  %i.eo = load ptr, ptr %0, align 8, !tbaa !12    ; 2 uses
  %i.ep = sext i32 %.0 to i64
  %i.eq = getelementptr inbounds [2 x i8], ptr %i.eo, i64 %i.ep ; 2 uses
  store i16 %i.en, ptr %i.eq, align 2, !tbaa !20
  %i.er = trunc i32 %2 to i16
  %i.es = or i16 %i.er, -32768
  %i.et = add nsw i32 %.0, 2
  %i.eu = getelementptr i8, ptr %i.eq, i64 2
  store i16 %i.es, ptr %i.eu, align 2, !tbaa !20
  br label %bb.ay

bb.ay:                                            ; preds = %._crit_edge98, %bb.aw, %bb.ax
  %i.ev = phi ptr [ %i.eo, %bb.ax ], [ %i.ef, %bb.aw ], [ %.pre99, %._crit_edge98 ]
  %.pn = phi i32 [ %i.ek, %bb.ax ], [ 61, %bb.aw ], [ %2, %._crit_edge98 ]
  %.1 = phi i32 [ %i.et, %bb.ax ], [ %i.eg, %bb.aw ], [ %.0, %._crit_edge98 ]
  %.171 = or i32 %.pn, %.070
  %i.ew = trunc nuw nsw i32 %.171 to i16
  %i.ex = sext i32 %i.dc to i64
  %i.ey = getelementptr inbounds [2 x i8], ptr %i.ev, i64 %i.ex
  store i16 %i.ew, ptr %i.ey, align 2, !tbaa !20
  store i32 %.1, ptr %i.v, align 4, !tbaa !16
  br label %_ZN6icu_785Edits6appendEi.exit

_ZN6icu_785Edits6appendEi.exit:                   ; preds = %bb.am, %bb.ai, %bb.ag, %bb.ae, %bb.z, %bb.v, %bb.t, %bb.r, %bb.i, %bb.n, %bb.ao, %bb.ay, %bb.d, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_785Edits9growArrayEv(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(232) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !17 ; 4 uses
  br i1 %i.c, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %.pre, 2147483647
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 8, ptr %i.e, align 8, !tbaa !13
  br label %bb.k

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
  store i32 8, ptr %i.k, align 8, !tbaa !13
  br label %bb.k

bb.f:                                             ; preds = %._crit_edge
  %i.l = sext i32 %.0 to i64
  %i.m = shl nsw i64 %i.l, 1
  %i.n = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.m) #15 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 7, ptr %i.p, align 8, !tbaa !13
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.n, ptr align 2 %i.q, i64 %i.u, i1 false)
  %.not.i = icmp eq ptr %i.q, %i.b
  br i1 %.not.i, label %_ZN6icu_785Edits12releaseArrayEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @uprv_free_78(ptr noundef %i.q)
          to label %_ZN6icu_785Edits12releaseArrayEv.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #13
  unreachable

_ZN6icu_785Edits12releaseArrayEv.exit:            ; preds = %bb.h, %bb.i
  store ptr %i.n, ptr %0, align 8, !tbaa !12
  store i32 %.0, ptr %i.h, align 8, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %_ZN6icu_785Edits12releaseArrayEv.exit, %bb.e, %bb.c
  %.1 = phi i8 [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.g ], [ 1, %_ZN6icu_785Edits12releaseArrayEv.exit ]
  ret i8 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_785Edits11copyErrorToER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !22
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %i.d, ptr %1, align 4, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i8 [ 1, %bb.c ], [ 1, %bb.a ], [ 0, %bb.b ]
  ret i8 %.0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(232) ptr @_ZN6icu_785Edits14mergeAndAppendERKS0_S2_R10UErrorCode(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(232) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"struct.icu_78::Edits::Iterator", align 8 ; 8 uses
  %5 = alloca %"struct.icu_78::Edits::Iterator", align 8 ; 11 uses
  %i.a = load i32, ptr %3, align 4, !tbaa !22
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZNK6icu_785Edits11copyErrorToER10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNK6icu_785Edits11copyErrorToER10UErrorCode.exit

bb.c:                                             ; preds = %bb.b
  store i32 %i.d, ptr %3, align 4, !tbaa !22
  br label %_ZNK6icu_785Edits11copyErrorToER10UErrorCode.exit.thread

_ZNK6icu_785Edits11copyErrorToER10UErrorCode.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.f = load ptr, ptr %1, align 8, !tbaa !12, !noalias !45
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !16, !noalias !45
  call void @_ZN6icu_785Edits8IteratorC1EPKtiaa(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.f, i32 noundef %i.h, i8 noundef signext 0, i8 noundef signext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.i = load ptr, ptr %2, align 8, !tbaa !12, !noalias !46
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16, !noalias !46
  call void @_ZN6icu_785Edits8IteratorC1EPKtiaa(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.i, i32 noundef %i.k, i8 noundef signext 0, i8 noundef signext 0)
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 23 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 23 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %_ZNK6icu_785Edits11copyErrorToER10UErrorCode.exit
  %.0103.ph = phi i8 [ 1, %_ZNK6icu_785Edits11copyErrorToER10UErrorCode.exit ], [ %.0103.ph.be, %.outer.backedge ] ; 2 uses
  %.0100.ph = phi i32 [ 0, %_ZNK6icu_785Edits11copyErrorToER10UErrorCode.exit ], [ %.0100.ph.be, %.outer.backedge ]
  %.097.ph = phi i32 [ 0, %_ZNK6icu_785Edits11copyErrorToER10UErrorCode.exit ], [ %.097.ph.be, %.outer.backedge ]
  %.094.ph = phi i32 [ 0, %_ZNK6icu_785Edits11copyErrorToER10UErrorCode.exit ], [ %.094.ph.be, %.outer.backedge ] ; 2 uses
  %.091.ph = phi i32 [ 0, %_ZNK6icu_785Edits11copyErrorToER10UErrorCode.exit ], [ %.091.ph.be, %.outer.backedge ] ; 2 uses
  %.087.ph = phi i32 [ 0, %_ZNK6icu_785Edits11copyErrorToER10UErrorCode.exit ], [ %.087.ph.be, %.outer.backedge ] ; 5 uses
  %.085.ph = phi i32 [ 0, %_ZNK6icu_785Edits11copyErrorToER10UErrorCode.exit ], [ %.085.ph.be, %.outer.backedge ] ; 5 uses
  %.097.ph.fr = freeze i32 %.097.ph               ; 3 uses
  %i.t = icmp eq i32 %.094.ph, 0
  %i.u = icmp ne i8 %.0103.ph, 0
  %or.cond5145 = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond5145, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.outer
  %i.v = icmp eq i32 %.097.ph.fr, 0
  %i.w = load i8, ptr %i.l, align 4, !tbaa !24
  %i.x = call noundef signext i8 @_ZN6icu_785Edits8Iterator4nextEaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 noundef signext %i.w, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.not109.us209 = icmp eq i8 %i.x, 0             ; 2 uses
  br i1 %i.v, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not109.us209, label %._crit_edge.thread, label %.lr.ph212.preheader

.lr.ph212.preheader:                              ; preds = %.lr.ph.split.us
  %i.y = load i32, ptr %i.m, align 8, !tbaa !25   ; 2 uses
  %i.z = load i32, ptr %i.n, align 4, !tbaa !26   ; 3 uses
  %i.aa = icmp eq i32 %i.y, 0
  br i1 %i.aa, label %bb.d, label %._crit_edge.thread

bb.d:                                             ; preds = %.lr.ph212.preheader
  %i.ab = add nsw i32 %i.z, %.085.ph
  call void @_ZN6icu_785Edits10addReplaceEii(ptr noundef nonnull align 8 dereferenceable(232) %0, i32 noundef %.087.ph, i32 noundef %i.ab)
  %i.ac = load i8, ptr %i.l, align 4, !tbaa !24
  %i.ad = call noundef signext i8 @_ZN6icu_785Edits8Iterator4nextEaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 noundef signext %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.not109.us.us.peel = icmp eq i8 %i.ad, 0
  br i1 %.not109.us.us.peel, label %._crit_edge.thread, label %.lr.ph212

.lr.ph212:                                        ; preds = %bb.d, %bb.e
  %i.ae = load i32, ptr %i.m, align 8, !tbaa !25  ; 2 uses
  %i.af = load i32, ptr %i.n, align 4, !tbaa !26  ; 3 uses
  %i.ag = icmp eq i32 %i.ae, 0
  br i1 %i.ag, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %.lr.ph212
  call void @_ZN6icu_785Edits10addReplaceEii(ptr noundef nonnull align 8 dereferenceable(232) %0, i32 noundef 0, i32 noundef %i.af)
  %i.ah = load i8, ptr %i.l, align 4, !tbaa !24
  %i.ai = call noundef signext i8 @_ZN6icu_785Edits8Iterator4nextEaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 noundef signext %i.ah, ptr noundef nonnull align 4 dereferenceable(4) %3)
end_hunk_0
