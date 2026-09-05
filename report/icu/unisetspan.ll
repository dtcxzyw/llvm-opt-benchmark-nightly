Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/unisetspan?download=true
inline.NumInlined: 94
inline.NumDeleted: 22
begin_hunk_0_@_ZNK6icu_7820UnicodeSetStringSpan4spanEPKDsi17USetSpanCondition:bb.a
  %i.hu = sub i32 %i.hd, %i.hc
  %i.hv = trunc nuw nsw i64 %indvars.iv30.i to i32 ; 2 uses
  store i8 0, ptr %i.ht, align 1, !tbaa !35
  %i.hw = load i32, ptr %i.h, align 4, !tbaa !49
  %i.hx = add nsw i32 %i.hw, -1
  store i32 %i.hx, ptr %i.h, align 4, !tbaa !49
  store i32 %i.hv, ptr %i.i, align 8, !tbaa !50
  %i.hy = add nsw i32 %i.hu, %i.hv
  br label %_ZN6icu_7810OffsetList10popMinimumEv.exit

_ZN6icu_7810OffsetList10popMinimumEv.exit:        ; preds = %bb.bj, %bb.bk
  %.013.i = phi i32 [ %i.hq, %bb.bj ], [ %i.hy, %bb.bk ] ; 2 uses
  %i.hz = sub nsw i32 %.0150, %.013.i
  br label %.backedge

.thread235:                                       ; preds = %bb.au, %bb.bf, %bb.av, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread226, %bb.az
  %.6 = phi i32 [ %i.ga, %bb.az ], [ %2, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread226 ], [ %.0153, %bb.av ], [ %2, %bb.au ], [ %2, %bb.bf ]
  %i.ia = load ptr, ptr %4, align 8, !tbaa !47    ; 2 uses
  %.not.i223 = icmp eq ptr %i.ia, %i.f
  br i1 %.not.i223, label %_ZN6icu_7810OffsetListD2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %.thread235
  invoke void @uprv_free_78(ptr noundef %i.ia)
          to label %_ZN6icu_7810OffsetListD2Ev.exit unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ib = landingpad { ptr, i32 }
          catch ptr null
  %i.ic = extractvalue { ptr, i32 } %i.ib, 0
  call void @__clang_call_terminate(ptr %i.ic) #13
  unreachable

_ZN6icu_7810OffsetListD2Ev.exit:                  ; preds = %.thread235, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.bo

bb.bn:                                            ; preds = %bb.l, %bb.u, %bb.al, %bb.i
  %.pn191.pn.pn.pn = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.ea, %bb.al ], [ %i.ai, %bb.l ], [ %i.bo, %bb.u ]
  call void @_ZN6icu_7810OffsetListD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  resume { ptr, i32 } %.pn191.pn.pn.pn

bb.bo:                                            ; preds = %_ZN6icu_7810OffsetListD2Ev.exit, %bb.c, %bb.b
  %.8 = phi i32 [ %i.b, %bb.b ], [ %.6, %_ZN6icu_7810OffsetListD2Ev.exit ], [ %2, %bb.c ]
  ret i32 %.8
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_7820UnicodeSetStringSpan7spanNotEPKDsi(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29, !nonnull !30, !align !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !34
  %.fr = freeze i32 %i.d                          ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = icmp sgt i32 %.fr, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  br i1 %i.g, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %.fr to i64
  %wide.trip.count106 = zext nneg i32 %.fr to i64
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %._crit_edge.us
  %.044.us = phi i32 [ %3, %._crit_edge.us ], [ 0, %.split.us.preheader ] ; 2 uses
  %.042.us = phi i32 [ %4, %._crit_edge.us ], [ %2, %.split.us.preheader ] ; 3 uses
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.j = sext i32 %.044.us to i64
  %i.k = getelementptr inbounds [2 x i8], ptr %1, i64 %i.j
  %i.l = tail call noundef i32 @_ZNK6icu_7810UnicodeSet4spanEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(200) %i.i, ptr noundef %i.k, i32 noundef %.042.us, i32 noundef 0) ; 3 uses
  %i.m = icmp eq i32 %i.l, %.042.us
  br i1 %i.m, label %.thread64, label %bb.b

bb.b:                                             ; preds = %.split.us
  %i.n = add i32 %i.l, %.044.us                   ; 12 uses
  %i.o = sub nsw i32 %.042.us, %i.l               ; 4 uses
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds [2 x i8], ptr %1, i64 %i.p ; 8 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !45   ; 2 uses
  %i.s = zext i16 %i.r to i32                     ; 2 uses
  %i.t = and i16 %i.r, -1024
  %or.cond.i.us = icmp eq i16 %i.t, -10240
  %i.u = icmp sgt i32 %i.o, 1
  %or.cond4.i.us = and i1 %i.u, %or.cond.i.us
  br i1 %or.cond4.i.us, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.w = load i16, ptr %i.v, align 2, !tbaa !45
  %i.x = zext i16 %i.w to i32                     ; 2 uses
  %i.y = and i32 %i.x, 64512
  %i.z = icmp eq i32 %i.y, 56320
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aa = tail call noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %i.f, i32 noundef %i.s)
  %.not.i.us = icmp eq i8 %i.aa, 0
  br i1 %.not.i.us, label %_ZN6icu_78L7spanOneERKNS_10UnicodeSetEPKDsi.exit.us, label %.thread64

bb.e:                                             ; preds = %bb.c
  %i.ab = shl nuw nsw i32 %i.s, 10
  %i.ac = add nsw i32 %i.ab, -56613888
  %i.ad = add nuw nsw i32 %i.ac, %i.x
  %i.ae = tail call noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %i.f, i32 noundef %i.ad)
  %.not15.i.us = icmp eq i8 %i.ae, 0
  br i1 %.not15.i.us, label %_ZN6icu_78L7spanOneERKNS_10UnicodeSetEPKDsi.exit.us, label %.thread64

_ZN6icu_78L7spanOneERKNS_10UnicodeSetEPKDsi.exit.us: ; preds = %bb.e, %bb.d
  %.0.i.us = phi i32 [ -2, %bb.e ], [ -1, %bb.d ] ; 2 uses
  %i.af = sub nsw i32 %2, %i.n                    ; 2 uses
  %i.ag = icmp sgt i32 %i.n, 0
  %i.ah = getelementptr inbounds i8, ptr %i.q, i64 -2
  br i1 %i.ag, label %.lr.ph.split.us.us, label %.lr.ph.split.us88

.lr.ph.split.us88:                                ; preds = %_ZN6icu_78L7spanOneERKNS_10UnicodeSetEPKDsi.exit.us, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread.us85
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread.us85 ], [ 0, %_ZN6icu_78L7spanOneERKNS_10UnicodeSetEPKDsi.exit.us ] ; 3 uses
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !35
  %i.al = icmp eq i8 %i.ak, -1
  br i1 %i.al, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread.us85, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us88
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !29, !nonnull !30, !align !31
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  %i.ao = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.am, i32 noundef %i.an) ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i16, ptr %i.ap, align 8, !tbaa !35 ; 4 uses
  %i.ar = and i16 %i.aq, 17
  %.not.i53.us73 = icmp eq i16 %i.ar, 0
  br i1 %.not.i53.us73, label %bb.g, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.us75

bb.g:                                             ; preds = %bb.f
  %i.as = and i16 %i.aq, 2
  %.not2.i.us74 = icmp eq i16 %i.as, 0
  br i1 %.not2.i.us74, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 10
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.us75

bb.i:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !35
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.us75

_ZNK6icu_7813UnicodeString9getBufferEv.exit.us75: ; preds = %bb.i, %bb.h, %bb.f
  %.0.i54.us76 = phi ptr [ %i.av, %bb.i ], [ %i.at, %bb.h ], [ null, %bb.f ]
  %i.aw = icmp slt i16 %i.aq, 0
  %i.ax = ashr i16 %i.aq, 5
  %i.ay = sext i16 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = select i1 %i.aw, i32 %i.ba, i32 %i.ay   ; 4 uses
  %.not.us77 = icmp sgt i32 %i.bb, %i.o
  br i1 %.not.us77, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread.us85, label %.preheader95

.preheader95:                                     ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit.us75, %bb.j
  %.04.i.i.us78 = phi ptr [ %i.bf, %bb.j ], [ %i.q, %_ZNK6icu_7813UnicodeString9getBufferEv.exit.us75 ] ; 2 uses
  %.03.i.i.us79 = phi ptr [ %i.be, %bb.j ], [ %.0.i54.us76, %_ZNK6icu_7813UnicodeString9getBufferEv.exit.us75 ] ; 2 uses
  %.0.i.i.us80 = phi i32 [ %i.bg, %bb.j ], [ %i.bb, %_ZNK6icu_7813UnicodeString9getBufferEv.exit.us75 ] ; 2 uses
  %i.bc = load i16, ptr %.04.i.i.us78, align 2, !tbaa !45
  %i.bd = load i16, ptr %.03.i.i.us79, align 2, !tbaa !45
  %.not.i.i.us81 = icmp eq i16 %i.bc, %i.bd
  br i1 %.not.i.i.us81, label %bb.j, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread.us85

bb.j:                                             ; preds = %.preheader95
  %i.be = getelementptr inbounds nuw i8, ptr %.03.i.i.us79, i64 2
  %i.bf = getelementptr inbounds nuw i8, ptr %.04.i.i.us78, i64 2
  %i.bg = add nsw i32 %.0.i.i.us80, -1
  %i.bh = icmp sgt i32 %.0.i.i.us80, 1
  br i1 %i.bh, label %.preheader95, label %_ZN6icu_78L9matches16EPKDsS1_i.exit.i.us82, !llvm.loop !0

_ZN6icu_78L9matches16EPKDsS1_i.exit.i.us82:       ; preds = %bb.j
  %i.bi = icmp slt i32 %i.bb, %i.af
  br i1 %i.bi, label %bb.k, label %.thread64

bb.k:                                             ; preds = %_ZN6icu_78L9matches16EPKDsS1_i.exit.i.us82
  %i.bj = sext i32 %i.bb to i64
  %i.bk = getelementptr [2 x i8], ptr %i.q, i64 %i.bj ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 -2
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !45
  %i.bn = and i16 %i.bm, -1024
  %i.bo = icmp eq i16 %i.bn, -10240
  br i1 %i.bo, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.us83, label %.thread64

_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.us83:   ; preds = %bb.k
  %i.bp = load i16, ptr %i.bk, align 2, !tbaa !45
  %i.bq = and i16 %i.bp, -1024
  %.not69.us84 = icmp eq i16 %i.bq, -9216
  br i1 %.not69.us84, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread.us85, label %.thread64

_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread.us85: ; preds = %.preheader95, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.us83, %_ZNK6icu_7813UnicodeString9getBufferEv.exit.us75, %.lr.ph.split.us88
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %.lr.ph.split.us88, !llvm.loop !60

._crit_edge.us:                                   ; preds = %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread.us85, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread.us.us
  %3 = sub i32 %i.n, %.0.i.us
  %4 = add nsw i32 %.0.i.us, %i.o                 ; 2 uses
  %.not52.us = icmp eq i32 %4, 0
  br i1 %.not52.us, label %.thread64, label %.split.us, !llvm.loop !61

.lr.ph.split.us.us:                               ; preds = %_ZN6icu_78L7spanOneERKNS_10UnicodeSetEPKDsi.exit.us, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread.us.us
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread.us.us ], [ 0, %_ZN6icu_78L7spanOneERKNS_10UnicodeSetEPKDsi.exit.us ] ; 3 uses
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv103
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !35
  %i.bu = icmp eq i8 %i.bt, -1
  br i1 %i.bu, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread.us.us, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.us.us
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !29, !nonnull !30, !align !31
  %i.bw = trunc nuw nsw i64 %indvars.iv103 to i32
  %i.bx = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.bv, i32 noundef %i.bw) ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i16, ptr %i.by, align 8, !tbaa !35 ; 4 uses
  %i.ca = and i16 %i.bz, 17
  %.not.i53.us.us = icmp eq i16 %i.ca, 0
  br i1 %.not.i53.us.us, label %bb.m, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.us.us

bb.m:                                             ; preds = %bb.l
  %i.cb = and i16 %i.bz, 2
  %.not2.i.us.us = icmp eq i16 %i.cb, 0
  br i1 %.not2.i.us.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 10
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.us.us

bb.o:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !35
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.us.us

_ZNK6icu_7813UnicodeString9getBufferEv.exit.us.us: ; preds = %bb.o, %bb.n, %bb.l
  %.0.i54.us.us = phi ptr [ %i.ce, %bb.o ], [ %i.cc, %bb.n ], [ null, %bb.l ]
  %i.cf = icmp slt i16 %i.bz, 0
  %i.cg = ashr i16 %i.bz, 5
  %i.ch = sext i16 %i.cg to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = select i1 %i.cf, i32 %i.cj, i32 %i.ch   ; 4 uses
  %.not.us.us = icmp sgt i32 %i.ck, %i.o
  br i1 %.not.us.us, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread.us.us, label %.preheader

.preheader:                                       ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit.us.us, %bb.p
  %.04.i.i.us.us = phi ptr [ %i.co, %bb.p ], [ %i.q, %_ZNK6icu_7813UnicodeString9getBufferEv.exit.us.us ] ; 2 uses
  %.03.i.i.us.us = phi ptr [ %i.cn, %bb.p ], [ %.0.i54.us.us, %_ZNK6icu_7813UnicodeString9getBufferEv.exit.us.us ] ; 2 uses
  %.0.i.i.us.us = phi i32 [ %i.cp, %bb.p ], [ %i.ck, %_ZNK6icu_7813UnicodeString9getBufferEv.exit.us.us ] ; 2 uses
  %i.cl = load i16, ptr %.04.i.i.us.us, align 2, !tbaa !45
  %i.cm = load i16, ptr %.03.i.i.us.us, align 2, !tbaa !45
  %.not.i.i.us.us = icmp eq i16 %i.cl, %i.cm
  br i1 %.not.i.i.us.us, label %bb.p, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread.us.us

bb.p:                                             ; preds = %.preheader
  %i.cn = getelementptr inbounds nuw i8, ptr %.03.i.i.us.us, i64 2
  %i.co = getelementptr inbounds nuw i8, ptr %.04.i.i.us.us, i64 2
  %i.cp = add nsw i32 %.0.i.i.us.us, -1
  %i.cq = icmp sgt i32 %.0.i.i.us.us, 1
  br i1 %i.cq, label %.preheader, label %_ZN6icu_78L9matches16EPKDsS1_i.exit.i.us.us, !llvm.loop !0

_ZN6icu_78L9matches16EPKDsS1_i.exit.i.us.us:      ; preds = %bb.p
  %i.cr = load i16, ptr %i.ah, align 2, !tbaa !45
  %i.cs = and i16 %i.cr, -1024
  %i.ct = icmp eq i16 %i.cs, -10240
  br i1 %i.ct, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN6icu_78L9matches16EPKDsS1_i.exit.i.us.us
  %i.cu = load i16, ptr %i.q, align 2, !tbaa !45
  %i.cv = and i16 %i.cu, -1024
  %i.cw = icmp eq i16 %i.cv, -9216
  br i1 %i.cw, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread.us.us, label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN6icu_78L9matches16EPKDsS1_i.exit.i.us.us
  %i.cx = icmp slt i32 %i.ck, %i.af
  br i1 %i.cx, label %bb.s, label %.thread64

bb.s:                                             ; preds = %bb.r
  %i.cy = sext i32 %i.ck to i64
  %i.cz = getelementptr [2 x i8], ptr %i.q, i64 %i.cy ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 -2
  %i.db = load i16, ptr %i.da, align 2, !tbaa !45
  %i.dc = and i16 %i.db, -1024
  %i.dd = icmp eq i16 %i.dc, -10240
  br i1 %i.dd, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.us.us, label %.thread64

_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.us.us:  ; preds = %bb.s
  %i.de = load i16, ptr %i.cz, align 2, !tbaa !45
  %i.df = and i16 %i.de, -1024
  %.not69.us.us = icmp eq i16 %i.df, -9216
  br i1 %.not69.us.us, label %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread.us.us, label %.thread64

_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.thread.us.us: ; preds = %.preheader, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.us.us, %bb.q, %_ZNK6icu_7813UnicodeString9getBufferEv.exit.us.us, %.lr.ph.split.us.us
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %._crit_edge.us, label %.lr.ph.split.us.us, !llvm.loop !60

.split:                                           ; preds = %bb.a, %_ZN6icu_78L7spanOneERKNS_10UnicodeSetEPKDsi.exit
  %.044 = phi i32 [ %i.ed, %_ZN6icu_78L7spanOneERKNS_10UnicodeSetEPKDsi.exit ], [ 0, %bb.a ] ; 2 uses
  %.042 = phi i32 [ %i.ee, %_ZN6icu_78L7spanOneERKNS_10UnicodeSetEPKDsi.exit ], [ %2, %bb.a ] ; 3 uses
  %i.dg = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.dh = sext i32 %.044 to i64
  %i.di = getelementptr inbounds [2 x i8], ptr %1, i64 %i.dh
  %i.dj = tail call noundef i32 @_ZNK6icu_7810UnicodeSet4spanEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(200) %i.dg, ptr noundef %i.di, i32 noundef %.042, i32 noundef 0) ; 3 uses
  %i.dk = icmp eq i32 %i.dj, %.042
  br i1 %i.dk, label %.thread64, label %bb.t

bb.t:                                             ; preds = %.split
  %i.dl = add nsw i32 %i.dj, %.044                ; 4 uses
  %i.dm = sub nsw i32 %.042, %i.dj                ; 2 uses
  %i.dn = sext i32 %i.dl to i64
  %i.do = getelementptr inbounds [2 x i8], ptr %1, i64 %i.dn ; 2 uses
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !45 ; 2 uses
  %i.dq = zext i16 %i.dp to i32                   ; 2 uses
  %i.dr = and i16 %i.dp, -1024
  %or.cond.i = icmp eq i16 %i.dr, -10240
  %i.ds = icmp sgt i32 %i.dm, 1
  %or.cond4.i = and i1 %i.ds, %or.cond.i
  br i1 %or.cond4.i, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 2
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !45
  %i.dv = zext i16 %i.du to i32                   ; 2 uses
  %i.dw = and i32 %i.dv, 64512
  %i.dx = icmp eq i32 %i.dw, 56320
  br i1 %i.dx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dy = shl nuw nsw i32 %i.dq, 10
  %i.dz = add nsw i32 %i.dy, -56613888
  %i.ea = add nuw nsw i32 %i.dz, %i.dv
  %i.eb = tail call noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %i.f, i32 noundef %i.ea)
  %.not15.i = icmp eq i8 %i.eb, 0
  br i1 %.not15.i, label %_ZN6icu_78L7spanOneERKNS_10UnicodeSetEPKDsi.exit, label %.thread64

bb.w:                                             ; preds = %bb.u, %bb.t
  %i.ec = tail call noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %i.f, i32 noundef %i.dq)
  %.not.i = icmp eq i8 %i.ec, 0
  br i1 %.not.i, label %_ZN6icu_78L7spanOneERKNS_10UnicodeSetEPKDsi.exit, label %.thread64

_ZN6icu_78L7spanOneERKNS_10UnicodeSetEPKDsi.exit: ; preds = %bb.w, %bb.v
  %.0.i = phi i32 [ -2, %bb.v ], [ -1, %bb.w ]    ; 2 uses
  %i.ed = sub nsw i32 %i.dl, %.0.i
  %i.ee = add nsw i32 %.0.i, %i.dm                ; 2 uses
  %.not52 = icmp eq i32 %i.ee, 0
  br i1 %.not52, label %.thread64, label %.split, !llvm.loop !61

.thread64:                                        ; preds = %.split, %_ZN6icu_78L7spanOneERKNS_10UnicodeSetEPKDsi.exit, %bb.v, %bb.w, %._crit_edge.us, %bb.e, %bb.d, %.split.us, %_ZN6icu_78L9matches16EPKDsS1_i.exit.i.us82, %bb.k, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.us83, %bb.r, %bb.s, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.us.us
  %.5 = phi i32 [ %2, %._crit_edge.us ], [ %i.n, %_ZN6icu_78L9matches16EPKDsS1_i.exit.i.us82 ], [ %i.n, %bb.r ], [ %i.n, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.us.us ], [ %i.n, %bb.s ], [ %i.n, %_ZN6icu_78L12matches16CPBEPKDsiiS1_i.exit.us83 ], [ %i.n, %bb.k ], [ %i.n, %bb.d ], [ %i.n, %bb.e ], [ %2, %.split.us ], [ %i.dl, %bb.w ], [ %i.dl, %bb.v ], [ %2, %.split ], [ %2, %_ZN6icu_78L7spanOneERKNS_10UnicodeSetEPKDsi.exit ]
  ret i32 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_7810OffsetListD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @uprv_free_78(ptr noundef %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #13
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_7820UnicodeSetStringSpan8spanBackEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::OffsetList", align 8 ; 16 uses
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZNK6icu_7820UnicodeSetStringSpan11spanNotBackEPKDsi(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %1, i32 noundef %2)
  br label %bb.bn

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = tail call noundef i32 @_ZNK6icu_7810UnicodeSet8spanBackEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(200) %i.c, ptr noundef %1, i32 noundef %2, i32 noundef 1) ; 3 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.bn, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = sub nsw i32 %2, %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store i32 0, ptr %i.h, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 10 uses
  store i32 0, ptr %i.i, align 4, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store i32 0, ptr %i.j, align 8, !tbaa !50
  %i.k = icmp eq i32 %3, 1                        ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.m = load i32, ptr %i.l, align 4, !tbaa !37   ; 4 uses
  %i.n = icmp slt i32 %i.m, 17
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 16, ptr %i.h, align 8, !tbaa !48
  br label %_ZN6icu_7810OffsetList12setMaxLengthEi.exit

bb.g:                                             ; preds = %bb.e
  %i.o = zext nneg i32 %i.m to i64
  %i.p = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.o) #12
          to label %.noexc unwind label %bb.i     ; 3 uses

.noexc:                                           ; preds = %bb.g
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.h

._crit_edge.i:                                    ; preds = %.noexc
  %.pre.i = load i32, ptr %i.h, align 8, !tbaa !48
  %.pre = load ptr, ptr %4, align 8, !tbaa !47
  br label %_ZN6icu_7810OffsetList12setMaxLengthEi.exit

bb.h:                                             ; preds = %.noexc
  store ptr %i.p, ptr %4, align 8, !tbaa !47
  store i32 %i.m, ptr %i.h, align 8, !tbaa !48
  br label %_ZN6icu_7810OffsetList12setMaxLengthEi.exit

_ZN6icu_7810OffsetList12setMaxLengthEi.exit:      ; preds = %bb.f, %._crit_edge.i, %bb.h
  %i.q = phi ptr [ %.pre, %._crit_edge.i ], [ %i.p, %bb.h ], [ %i.g, %bb.f ]
  %i.r = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.m, %bb.h ], [ 16, %bb.f ]
  %i.s = sext i32 %i.r to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.q, i8 0, i64 %i.s, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.j:                                             ; preds = %_ZN6icu_7810OffsetList12setMaxLengthEi.exit, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29, !nonnull !30, !align !31
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !34   ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !42
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !28
  %.not = icmp eq i8 %i.ab, 0
  %i.ac = sext i32 %i.x to i64
  %.0133.idx = select i1 %.not, i64 0, i64 %i.ac
  %.0133 = getelementptr inbounds i8, ptr %i.z, i64 %.0133.idx ; 2 uses
  %i.ad = icmp sgt i32 %i.x, 0                    ; 2 uses
  %i.ae = sext i32 %2 to i64                      ; 2 uses
  %wide.trip.count = zext nneg i32 %i.x to i64
  %wide.trip.count289 = zext nneg i32 %i.x to i64
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.j
  %.0152 = phi i32 [ %i.d, %bb.j ], [ %.0152.be, %.backedge.backedge ] ; 17 uses
  %.0145 = phi i32 [ %i.f, %bb.j ], [ %.0145.be, %.backedge.backedge ] ; 4 uses
  br i1 %i.k, label %.preheader244, label %.preheader245

.preheader245:                                    ; preds = %.backedge
  br i1 %i.ad, label %.lr.ph266.preheader, label %._crit_edge

.lr.ph266.preheader:                              ; preds = %.preheader245
  %i.af = sext i32 %.0152 to i64                  ; 2 uses
  br label %.lr.ph266

.preheader244:                                    ; preds = %.backedge
  br i1 %i.ad, label %.lr.ph274.preheader, label %.thread230

.lr.ph274.preheader:                              ; preds = %.preheader244
  %i.ag = sext i32 %.0152 to i64
  %i.ah = add i32 %.0152, 1
  br label %.lr.ph274

.lr.ph274:                                        ; preds = %.lr.ph274.preheader, %.loopexit
  %indvars.iv286 = phi i64 [ 0, %.lr.ph274.preheader ], [ %indvars.iv.next287, %.loopexit ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0133, i64 %indvars.iv286
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !35  ; 3 uses
  %i.ak = zext i8 %i.aj to i32
  %i.al = icmp eq i8 %i.aj, -1
  br i1 %i.al, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %.lr.ph274
  %i.am = load ptr, ptr %i.u, align 8, !tbaa !29, !nonnull !30, !align !31
end_hunk_0
