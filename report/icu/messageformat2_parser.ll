Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/messageformat2_parser?download=true
inline.NumInlined: 675
inline.NumDeleted: 175
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6icu_788message26Parser14parseSelectorsER10UErrorCode:bb.a
  tail call void @_ZN6icu_788message26Parser23parseRequiredWhitespaceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.q = load i32, ptr %i.d, align 8, !tbaa !19   ; 3 uses
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !16, !nonnull !17, !align !18 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i16, ptr %i.s, align 8, !tbaa !38   ; 2 uses
  %i.u = icmp slt i16 %i.t, 0
  %i.v = ashr i16 %i.t, 5
  %i.w = sext i16 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.y = load i32, ptr %i.x, align 4
  %i.z = select i1 %i.u, i32 %i.y, i32 %i.w
  %i.aa = icmp slt i32 %i.q, %i.z
  br i1 %i.aa, label %bb.c, label %.loopexit76

bb.c:                                             ; preds = %.critedge.peel
  %i.ab = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.r, i32 noundef %i.q)
  %.not22.peel.not = icmp eq i32 %i.ab, 36        ; 2 uses
  br i1 %.not22.peel.not, label %bb.d, label %.loopexit77

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @_ZN6icu_788message26Parser17parseVariableNameER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %2, ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !70, !nonnull !17, !align !18
  %i.ad = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_788message210data_model11MFDataModel7Builder11addSelectorEONS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.ae = load i32, ptr %1, align 4, !tbaa !28
  %i.af = icmp slt i32 %i.ae, 1
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br i1 %i.af, label %.peel.next, label %.thread

.peel.next:                                       ; preds = %bb.e, %bb.n
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !16, !nonnull !17, !align !18
  %i.ah = load i32, ptr %i.d, align 8, !tbaa !19
  %i.ai = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.ag, i32 noundef %i.ah)
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.ak = call noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %i.aj, i32 noundef %i.ai)
  %.not = icmp eq i8 %i.ak, 0
  br i1 %.not, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.peel.next
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !16, !nonnull !17, !align !18
  %i.am = load i32, ptr %i.d, align 8, !tbaa !19
  %i.an = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.al, i32 noundef %i.am)
  %i.ao = icmp eq i32 %i.an, 36
  br i1 %i.ao, label %.critedge, label %.loopexit.thread87

.critedge:                                        ; preds = %.peel.next, %bb.f
  %i.ap = load i32, ptr %i.d, align 8, !tbaa !19
  call void @_ZN6icu_788message26Parser23parseRequiredWhitespaceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.aq = load i32, ptr %i.d, align 8, !tbaa !19  ; 3 uses
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !16, !nonnull !17, !align !18 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i16, ptr %i.as, align 8, !tbaa !38 ; 2 uses
  %i.au = icmp slt i16 %i.at, 0
  %i.av = ashr i16 %i.at, 5
  %i.aw = sext i16 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = select i1 %i.au, i32 %i.ay, i32 %i.aw
  %i.ba = icmp slt i32 %i.aq, %i.az
  br i1 %i.ba, label %bb.g, label %.loopexit76

.loopexit76:                                      ; preds = %.critedge, %.critedge.peel
  %.lcssa = phi i32 [ %i.q, %.critedge.peel ], [ %i.aq, %.critedge ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !39, !nonnull !17, !align !18 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 18
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !46, !range !47, !noundef !17
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %.thread, label %.thread.sink.split

bb.g:                                             ; preds = %.critedge
  %i.bg = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.ar, i32 noundef %i.aq)
  %.not22 = icmp eq i32 %i.bg, 36
  br i1 %.not22, label %bb.m, label %.loopexit77

.loopexit77:                                      ; preds = %bb.g, %bb.c
  %.lcssa72 = phi i32 [ %i.p, %bb.c ], [ %i.ap, %bb.g ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !50, !nonnull !17, !align !18 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  %i.bk = load i16, ptr %i.bj, align 8, !tbaa !38 ; 5 uses
  %i.bl = icmp slt i16 %i.bk, 0
  %i.bm = ashr i16 %i.bk, 5
  %i.bn = sext i16 %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 12 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = select i1 %i.bl, i32 %i.bp, i32 %i.bn   ; 3 uses
  %i.br = add nsw i32 %i.bq, -1                   ; 3 uses
  %i.bs = trunc i16 %i.bk to i1
  %i.bt = icmp eq i32 %i.br, 0
  %or.cond.i = and i1 %i.bt, %i.bs
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.loopexit77
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.bi)
  br label %.loopexit

bb.i:                                             ; preds = %.loopexit77
  %.not30 = icmp eq i32 %i.bq, 0
  br i1 %.not30, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = icmp slt i32 %i.bq, 1025
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bv = and i16 %i.bk, 31
  %.tr.i.i.i = trunc i32 %i.br to i16
  %i.bw = shl i16 %.tr.i.i.i, 5
  %i.bx = or disjoint i16 %i.bw, %i.bv
  store i16 %i.bx, ptr %i.bj, align 8, !tbaa !38
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.by = or i16 %i.bk, -32
  store i16 %i.by, ptr %i.bj, align 8, !tbaa !38
  store i32 %i.br, ptr %i.bo, align 4, !tbaa !38
  br label %.loopexit

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @_ZN6icu_788message26Parser17parseVariableNameER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %2, ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.bz = load ptr, ptr %i.f, align 8, !tbaa !70, !nonnull !17, !align !18
  %i.ca = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_788message210data_model11MFDataModel7Builder11addSelectorEONS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.cb = load i32, ptr %1, align 4, !tbaa !28
  %i.cc = icmp slt i32 %i.cb, 1
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br i1 %i.cc, label %.peel.next, label %.thread, !llvm.loop !135

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  resume { ptr, i32 } %lpad.loopexit.split-lp

.loopexit:                                        ; preds = %bb.h, %bb.i, %bb.k, %bb.l
  store i32 %.lcssa72, ptr %i.d, align 8, !tbaa !19
  br i1 %.not22.peel.not, label %.loopexit.thread87, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.b, %.loopexit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !39, !nonnull !17, !align !18 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 18
  %i.cg = load i8, ptr %i.cf, align 2, !tbaa !46, !range !47, !noundef !17
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %.thread, label %bb.o

bb.o:                                             ; preds = %.loopexit.thread
  %i.ci = load i32, ptr %i.d, align 8, !tbaa !19
  br label %.thread.sink.split

.loopexit.thread87:                               ; preds = %bb.f, %.loopexit
  call void @_ZN6icu_788message26Parser23parseRequiredWhitespaceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.cj = load i32, ptr %i.d, align 8, !tbaa !19  ; 2 uses
  %i.ck = load ptr, ptr %i.c, align 8, !tbaa !16, !nonnull !17, !align !18 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load i16, ptr %i.cl, align 8, !tbaa !38 ; 2 uses
  %i.cn = icmp slt i16 %i.cm, 0
  %i.co = ashr i16 %i.cm, 5
  %i.cp = sext i16 %i.co to i32
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = select i1 %i.cn, i32 %i.cr, i32 %i.cp
  %i.ct = icmp slt i32 %i.cj, %i.cs
  br i1 %i.ct, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.loopexit.thread87
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !39, !nonnull !17, !align !18 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 18
  %i.cx = load i8, ptr %i.cw, align 2, !tbaa !46, !range !47, !noundef !17
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %.thread, label %.thread.sink.split

bb.q:                                             ; preds = %.loopexit.thread87
  call void @_ZN6icu_788message26Parser12parseVariantER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.cz = load i32, ptr %i.d, align 8, !tbaa !19  ; 2 uses
  %i.da = load ptr, ptr %i.c, align 8, !tbaa !16, !nonnull !17, !align !18 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load i16, ptr %i.db, align 8, !tbaa !38 ; 2 uses
  %i.dd = icmp slt i16 %i.dc, 0
  %i.de = ashr i16 %i.dc, 5
  %i.df = sext i16 %i.de to i32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = select i1 %i.dd, i32 %i.dh, i32 %i.df
  %i.dj = icmp slt i32 %i.cz, %i.di
  br i1 %i.dj, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.q
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 176
  br label %bb.r

bb.r:                                             ; preds = %.preheader, %bb.x
  %i.do = phi i32 [ %i.cz, %.preheader ], [ %i.es, %bb.x ]
  %i.dp = phi ptr [ %i.da, %.preheader ], [ %i.et, %bb.x ]
  %i.dq = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.dp, i32 noundef %i.do)
  %i.dr = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.ds = call noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %i.dr, i32 noundef %i.dq)
  %.not31 = icmp eq i8 %i.ds, 0
  br i1 %.not31, label %bb.s, label %.critedge2

bb.s:                                             ; preds = %bb.r
  %i.dt = load ptr, ptr %i.c, align 8, !tbaa !16, !nonnull !17, !align !18
  %i.du = load i32, ptr %i.d, align 8, !tbaa !19
  %i.dv = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.dt, i32 noundef %i.du)
  %i.dw = load ptr, ptr %i.dl, align 8, !tbaa !30
  %i.dx = call noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %i.dw, i32 noundef %i.dv)
  %.not32 = icmp eq i8 %i.dx, 0
  br i1 %.not32, label %bb.t, label %.critedge2

bb.t:                                             ; preds = %bb.s
  %i.dy = load ptr, ptr %i.c, align 8, !tbaa !16, !nonnull !17, !align !18
  %i.dz = load i32, ptr %i.d, align 8, !tbaa !19
  %i.ea = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.dy, i32 noundef %i.dz) ; 4 uses
  switch i32 %i.ea, label %bb.u [
    i32 42, label %.critedge2
    i32 124, label %.critedge2
  ]

bb.u:                                             ; preds = %bb.t
  %i.eb = load ptr, ptr %i.dm, align 8, !tbaa !34
  %i.ec = call noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %i.eb, i32 noundef %i.ea)
  %i.ed = icmp ne i8 %i.ec, 0
  %i.ee = icmp eq i32 %i.ea, 45
  %or.cond.i.i = or i1 %i.ee, %i.ed
  br i1 %or.cond.i.i, label %.critedge2, label %_ZNK6icu_788message26Parser10isKeyStartEi.exit

_ZNK6icu_788message26Parser10isKeyStartEi.exit:   ; preds = %bb.u
  %i.ef = load ptr, ptr %i.dk, align 8, !tbaa !33
  %i.eg = call noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %i.ef, i32 noundef %i.ea)
  %.not33 = icmp eq i8 %i.eg, 0
  br i1 %.not33, label %.thread, label %.critedge2

.critedge2:                                       ; preds = %bb.u, %bb.t, %bb.t, %bb.s, %bb.r, %_ZNK6icu_788message26Parser10isKeyStartEi.exit
  call void @_ZN6icu_788message26Parser23parseOptionalWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  %i.eh = load i32, ptr %i.d, align 8, !tbaa !19
  %i.ei = load ptr, ptr %i.c, align 8, !tbaa !16, !nonnull !17, !align !18 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load i16, ptr %i.ej, align 8, !tbaa !38 ; 2 uses
  %i.el = icmp slt i16 %i.ek, 0
  %i.em = ashr i16 %i.ek, 5
  %i.en = sext i16 %i.em to i32
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = select i1 %i.el, i32 %i.ep, i32 %i.en
  %i.er = icmp slt i32 %i.eh, %i.eq
  br i1 %i.er, label %bb.v, label %.thread

bb.v:                                             ; preds = %.critedge2
  call void @_ZN6icu_788message26Parser12parseVariantER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.es = load i32, ptr %i.d, align 8, !tbaa !19  ; 2 uses
  %i.et = load ptr, ptr %i.c, align 8, !tbaa !16, !nonnull !17, !align !18 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i16, ptr %i.eu, align 8, !tbaa !38 ; 2 uses
  %i.ew = icmp slt i16 %i.ev, 0
  %i.ex = ashr i16 %i.ev, 5
  %i.ey = sext i16 %i.ex to i32
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  %i.fa = load i32, ptr %i.ez, align 4
  %i.fb = select i1 %i.ew, i32 %i.fa, i32 %i.ey
  %i.fc = icmp slt i32 %i.es, %i.fb
  br i1 %i.fc, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  %i.fd = load ptr, ptr %i.dn, align 8, !tbaa !39, !nonnull !17, !align !18
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 18
  %i.ff = load i8, ptr %i.fe, align 2, !tbaa !46, !range !47, !noundef !17
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fh = load i32, ptr %1, align 4, !tbaa !28
  %i.fi = icmp slt i32 %i.fh, 1
  br i1 %i.fi, label %bb.r, label %.thread, !llvm.loop !136

.thread.sink.split:                               ; preds = %bb.p, %.loopexit76, %bb.o
  %.lcssa.sink = phi i32 [ %.lcssa, %.loopexit76 ], [ %i.ci, %bb.o ], [ %i.cj, %bb.p ]
  %.sink = phi ptr [ %i.bc, %.loopexit76 ], [ %i.ce, %bb.o ], [ %i.cv, %bb.p ]
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !25
  %i.fl = sub i32 %.lcssa.sink, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.fl, ptr %i.fm, align 8, !tbaa !26
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i16 0, ptr %i.fn, align 8, !tbaa !24
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i16 0, ptr %i.fo, align 8, !tbaa !24
  call void @_ZN6icu_788message212StaticErrors14addSyntaxErrorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(19) %.sink, ptr noundef nonnull align 4 dereferenceable(4) %1)
  br label %.thread

.thread:                                          ; preds = %bb.n, %.critedge2, %bb.w, %bb.x, %bb.v, %_ZNK6icu_788message26Parser10isKeyStartEi.exit, %.thread.sink.split, %bb.e, %.loopexit76, %.loopexit.thread, %bb.p, %bb.q, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_788message210data_model11MFDataModel7Builder11addSelectorEONS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message26Parser12errorPatternER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::message2::data_model::Pattern::Builder", align 8 ; 8 uses
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %4 = alloca %"class.icu_78::message2::data_model::Pattern", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39, !nonnull !17, !align !18
  tail call void @_ZN6icu_788message212StaticErrors14addSyntaxErrorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(19) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @_ZN6icu_788message210data_model7Pattern7BuilderC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.c = load i32, ptr %1, align 4, !tbaa !28
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  invoke void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 123)
          to label %.preheader unwind label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !16, !nonnull !17, !align !18 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i16, ptr %i.i, align 8, !tbaa !38   ; 2 uses
  %i.k = icmp slt i16 %i.j, 0
  %i.l = ashr i16 %i.j, 5
  %i.m = sext i16 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = select i1 %i.k, i32 %i.o, i32 %i.m
  %i.q = icmp slt i32 %i.g, %i.p
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %_ZN6icu_788message26Parser4nextEv.exit
  %i.r = phi ptr [ %i.y, %_ZN6icu_788message26Parser4nextEv.exit ], [ %i.h, %.preheader ]
  %i.s = phi i32 [ %i.x, %_ZN6icu_788message26Parser4nextEv.exit ], [ %i.g, %.preheader ]
  %i.t = invoke noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.r, i32 noundef %i.s)
          to label %_ZNK6icu_788message26Parser4peekEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6icu_788message26Parser4peekEv.exit:          ; preds = %.lr.ph
  %i.u = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %i.t)
          to label %_ZN6icu_7813UnicodeStringpLEi.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN6icu_7813UnicodeStringpLEi.exit:               ; preds = %_ZNK6icu_788message26Parser4peekEv.exit
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !16, !nonnull !17, !align !18
  %i.w = load i32, ptr %i.e, align 8, !tbaa !19
  %i.x = invoke noundef i32 @_ZNK6icu_7813UnicodeString11moveIndex32Eii(ptr noundef nonnull align 8 dereferenceable(64) %i.v, i32 noundef %i.w, i32 noundef 1)
          to label %_ZN6icu_788message26Parser4nextEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZN6icu_788message26Parser4nextEv.exit:           ; preds = %_ZN6icu_7813UnicodeStringpLEi.exit
  store i32 %i.x, ptr %i.e, align 8, !tbaa !19
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !16, !nonnull !17, !align !18 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !38  ; 2 uses
  %i.ab = icmp slt i16 %i.aa, 0
  %i.ac = ashr i16 %i.aa, 5
  %i.ad = sext i16 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = select i1 %i.ab, i32 %i.af, i32 %i.ad
  %i.ah = icmp slt i32 %i.x, %i.ag
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN6icu_7813UnicodeStringpLEi.exit, %_ZNK6icu_788message26Parser4peekEv.exit, %.lr.ph, %._crit_edge
  %lpad.loopexit.split-lp14 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

._crit_edge:                                      ; preds = %_ZN6icu_788message26Parser4nextEv.exit, %.preheader
  %i.aj = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 125)
          to label %_ZN6icu_7813UnicodeStringpLEi.exit11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN6icu_7813UnicodeStringpLEi.exit11:             ; preds = %._crit_edge
  %i.ak = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6icu_788message210data_model7Pattern7Builder3addEONS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %1) #8 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !70, !nonnull !17, !align !18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @_ZNK6icu_788message210data_model7Pattern7Builder5buildER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::message2::data_model::Pattern") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %1) #8
  %i.an = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_788message210data_model11MFDataModel7Builder10setPatternEONS1_7PatternE(ptr noundef nonnull align 8 dereferenceable(64) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.d unwind label %bb.f       ; 0 uses

bb.d:                                             ; preds = %_ZN6icu_7813UnicodeStringpLEi.exit11
  call void @_ZN6icu_788message210data_model7PatternD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  call void @_ZN6icu_788message210data_model7Pattern7BuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret void

bb.f:                                             ; preds = %_ZN6icu_7813UnicodeStringpLEi.exit11
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_788message210data_model7PatternD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.f ], [ %lpad.loopexit.split-lp14, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #8
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.loopexit.split-lp ], [ %i.ai, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @_ZN6icu_788message210data_model7Pattern7BuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_788message210data_model11MFDataModel7Builder10setPatternEONS1_7PatternE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message26Parser9parseBodyER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::message2::data_model::Pattern", align 8 ; 8 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !28
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16, !nonnull !17, !align !18 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i16, ptr %i.g, align 8, !tbaa !38   ; 2 uses
  %i.i = icmp slt i16 %i.h, 0
  %i.j = ashr i16 %i.h, 5
  %i.k = sext i16 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.m = load i32, ptr %i.l, align 4
  %i.n = select i1 %i.i, i32 %i.m, i32 %i.k
  %i.o = icmp slt i32 %i.d, %i.n
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6icu_788message26Parser12errorPatternER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.f, i32 noundef %i.d)
  switch i32 %i.p, label %bb.k [
    i32 123, label %bb.e
    i32 46, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !70, !nonnull !17, !align !18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  tail call void @_ZN6icu_788message26Parser10parseTokenEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef 123, ptr noundef nonnull align 4 dereferenceable(4) %1), !noalias !139
  tail call void @_ZN6icu_788message26Parser10parseTokenEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef 123, ptr noundef nonnull align 4 dereferenceable(4) %1), !noalias !139
  call void @_ZN6icu_788message26Parser18parseSimpleMessageER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::message2::data_model::Pattern") align 8 %2, ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  invoke void @_ZN6icu_788message26Parser10parseTokenEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef 125, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.f unwind label %bb.g
end_hunk_0
