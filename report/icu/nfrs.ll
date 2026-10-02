Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/nfrs?download=true
inline.NumInlined: 161
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6icu_789NFRuleSet23setDecimalFormatSymbolsERKNS_20DecimalFormatSymbolsER10UErrorCode:bb.a

bb.e:                                             ; preds = %bb.d
  %i.bn = and i16 %i.bh, 2
  %.not.i.i.i.i.1 = icmp eq i16 %i.bn, 0
  %i.bo = load ptr, ptr %i.k, align 8
  %i.bp = select i1 %.not.i.i.i.i.1, ptr %i.bo, ptr %i.j
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !31
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i.1

_ZNK6icu_7813UnicodeString6charAtEi.exit.i.1:     ; preds = %bb.e, %bb.d
  %.0.i.i.i.1 = phi i16 [ %i.bq, %bb.e ], [ -1, %bb.d ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 14
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !40
  %i.bt = icmp eq i16 %.0.i.i.i.1, %i.bs
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br i1 %i.bt, label %.sink.split.i.1, label %_ZN6icu_789NFRuleSet19setBestFractionRuleEiPNS_6NFRuleEa.exit.1

.sink.split.i.1:                                  ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i.1
  store ptr %i.az, ptr %i.au, align 8, !tbaa !27
  br label %_ZN6icu_789NFRuleSet19setBestFractionRuleEiPNS_6NFRuleEa.exit.1

_ZN6icu_789NFRuleSet19setBestFractionRuleEiPNS_6NFRuleEa.exit.1: ; preds = %.sink.split.i.1, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i.1, %_ZNK6icu_7810NFRuleListixEj.exit28.1
  %indvars.iv.next40.1 = add nuw nsw i64 %indvars.iv39.1, 1 ; 2 uses
  %i.bu = load i32, ptr %i.e, align 8, !tbaa !23
  %i.bv = zext i32 %i.bu to i64
  %i.bw = icmp samesign ult i64 %indvars.iv.next40.1, %i.bv
  br i1 %i.bw, label %_ZNK6icu_7810NFRuleListixEj.exit28.1, label %.loopexit.1, !llvm.loop !53

.loopexit.1:                                      ; preds = %_ZN6icu_789NFRuleSet19setBestFractionRuleEiPNS_6NFRuleEa.exit.1, %.preheader29.1, %.loopexit
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !27
  %.not26.2 = icmp eq ptr %i.by, null
  br i1 %.not26.2, label %.loopexit.2, label %.preheader29.2

.preheader29.2:                                   ; preds = %.loopexit.1
  %i.bz = load i32, ptr %i.e, align 8, !tbaa !23
  %.not37.2 = icmp eq i32 %i.bz, 0
  br i1 %.not37.2, label %.loopexit.2, label %_ZNK6icu_7810NFRuleListixEj.exit28.2

_ZNK6icu_7810NFRuleListixEj.exit28.2:             ; preds = %.preheader29.2, %_ZN6icu_789NFRuleSet19setBestFractionRuleEiPNS_6NFRuleEa.exit.2
  %indvars.iv39.2 = phi i64 [ %indvars.iv.next40.2, %_ZN6icu_789NFRuleSet19setBestFractionRuleEiPNS_6NFRuleEa.exit.2 ], [ 0, %.preheader29.2 ] ; 2 uses
  %i.ca = load ptr, ptr %i.f, align 8, !tbaa !22, !nonnull !33, !noundef !33
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv39.2
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !27 ; 3 uses
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !27
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !39
  %i.cf = load i64, ptr %i.cc, align 8, !tbaa !39
  %i.cg = icmp eq i64 %i.ce, %i.cf
  br i1 %i.cg, label %bb.f, label %_ZN6icu_789NFRuleSet19setBestFractionRuleEiPNS_6NFRuleEa.exit.2

bb.f:                                             ; preds = %_ZNK6icu_7810NFRuleListixEj.exit28.2
  %i.ch = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.ci = call noundef ptr @_ZNK6icu_7821RuleBasedNumberFormat23getDecimalFormatSymbolsEv(ptr noundef nonnull align 8 dereferenceable(336) %i.ch)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.cj)
  %i.ck = load i16, ptr %i.h, align 8, !tbaa !11  ; 3 uses
  %i.cl = icmp slt i16 %i.ck, 0
  %i.cm = ashr i16 %i.ck, 5
  %i.cn = sext i16 %i.cm to i32
  %i.co = load i32, ptr %i.i, align 4
  %i.cp = select i1 %i.cl, i32 %i.co, i32 %i.cn
  %.not12.i.2 = icmp eq i32 %i.cp, 0
  br i1 %.not12.i.2, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i.2, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cq = and i16 %i.ck, 2
  %.not.i.i.i.i.2 = icmp eq i16 %i.cq, 0
  %i.cr = load ptr, ptr %i.k, align 8
  %i.cs = select i1 %.not.i.i.i.i.2, ptr %i.cr, ptr %i.j
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !31
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i.2

_ZNK6icu_7813UnicodeString6charAtEi.exit.i.2:     ; preds = %bb.g, %bb.f
  %.0.i.i.i.2 = phi i16 [ %i.ct, %bb.g ], [ -1, %bb.f ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cc, i64 14
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !40
  %i.cw = icmp eq i16 %.0.i.i.i.2, %i.cv
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br i1 %i.cw, label %.sink.split.i.2, label %_ZN6icu_789NFRuleSet19setBestFractionRuleEiPNS_6NFRuleEa.exit.2

.sink.split.i.2:                                  ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i.2
  store ptr %i.cc, ptr %i.bx, align 8, !tbaa !27
  br label %_ZN6icu_789NFRuleSet19setBestFractionRuleEiPNS_6NFRuleEa.exit.2

_ZN6icu_789NFRuleSet19setBestFractionRuleEiPNS_6NFRuleEa.exit.2: ; preds = %.sink.split.i.2, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i.2, %_ZNK6icu_7810NFRuleListixEj.exit28.2
  %indvars.iv.next40.2 = add nuw nsw i64 %indvars.iv39.2, 1 ; 2 uses
  %i.cx = load i32, ptr %i.e, align 8, !tbaa !23
  %i.cy = zext i32 %i.cx to i64
  %i.cz = icmp samesign ult i64 %indvars.iv.next40.2, %i.cy
  br i1 %i.cz, label %_ZNK6icu_7810NFRuleListixEj.exit28.2, label %.loopexit.2, !llvm.loop !53

.loopexit.2:                                      ; preds = %_ZN6icu_789NFRuleSet19setBestFractionRuleEiPNS_6NFRuleEa.exit.2, %.preheader29.2, %.loopexit.1
  %i.da = load ptr, ptr %i.d, align 8, !tbaa !27  ; 2 uses
  %.not = icmp eq ptr %i.da, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit.2
  call void @_ZN6icu_786NFRule23setDecimalFormatSymbolsERKNS_20DecimalFormatSymbolsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %i.da, ptr noundef nonnull align 8 dereferenceable(2459) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit.2
  %i.db = load ptr, ptr %i.l, align 8, !tbaa !27  ; 2 uses
  %.not.1 = icmp eq ptr %i.db, null
  br i1 %.not.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN6icu_786NFRule23setDecimalFormatSymbolsERKNS_20DecimalFormatSymbolsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %i.db, ptr noundef nonnull align 8 dereferenceable(2459) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.dc = load ptr, ptr %i.au, align 8, !tbaa !27 ; 2 uses
  %.not.2 = icmp eq ptr %i.dc, null
  br i1 %.not.2, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN6icu_786NFRule23setDecimalFormatSymbolsERKNS_20DecimalFormatSymbolsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %i.dc, ptr noundef nonnull align 8 dereferenceable(2459) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.dd = load ptr, ptr %i.bx, align 8, !tbaa !27 ; 2 uses
  %.not.3 = icmp eq ptr %i.dd, null
  br i1 %.not.3, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN6icu_786NFRule23setDecimalFormatSymbolsERKNS_20DecimalFormatSymbolsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %i.dd, ptr noundef nonnull align 8 dereferenceable(2459) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !27 ; 2 uses
  %.not.4 = icmp eq ptr %i.df, null
  br i1 %.not.4, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN6icu_786NFRule23setDecimalFormatSymbolsERKNS_20DecimalFormatSymbolsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %i.df, ptr noundef nonnull align 8 dereferenceable(2459) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !27 ; 2 uses
  %.not.5 = icmp eq ptr %i.dh, null
  br i1 %.not.5, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN6icu_786NFRule23setDecimalFormatSymbolsERKNS_20DecimalFormatSymbolsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %i.dh, ptr noundef nonnull align 8 dereferenceable(2459) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  ret void
}

declare void @_ZN6icu_786NFRule23setDecimalFormatSymbolsERKNS_20DecimalFormatSymbolsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(2459), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_789NFRuleSet6formatElRNS_13UnicodeStringEiiR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(163) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp sgt i32 %4, 63
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 27, ptr %5, align 4, !tbaa !29
  br label %_ZNK6icu_789NFRuleSet14findNormalRuleEl.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load i8, ptr %i.b, align 8, !tbaa !25
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = sitofp i64 %1 to double
  %i.e = tail call noundef ptr @_ZNK6icu_789NFRuleSet23findFractionRuleSetRuleEd(ptr noundef nonnull readonly align 8 dereferenceable(163) %0, double noundef %i.d)
  br label %_ZNK6icu_789NFRuleSet14findNormalRuleEl.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp slt i64 %1, 0
  br i1 %i.f, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27   ; 2 uses
  %.not37.i = icmp eq ptr %i.h, null
  br i1 %.not37.i, label %bb.g, label %_ZNK6icu_789NFRuleSet14findNormalRuleEl.exit.thread14

bb.g:                                             ; preds = %bb.f
  %i.i = sub nsw i64 0, %1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.029.i = phi i64 [ %i.i, %bb.g ], [ %1, %bb.e ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load i32, ptr %i.k, align 8, !tbaa !23   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.preheader.i, label %bb.m

.preheader.i:                                     ; preds = %bb.h
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  br label %_ZNK6icu_7810NFRuleListixEj.exit.thread.i

_ZNK6icu_7810NFRuleListixEj.exit.thread.i:        ; preds = %_ZNK6icu_7810NFRuleListixEj.exit41.i, %.preheader.i
  %.02566.i = phi i32 [ 0, %.preheader.i ], [ %.1.i, %_ZNK6icu_7810NFRuleListixEj.exit41.i ] ; 2 uses
  %.02665.i = phi i32 [ %i.l, %.preheader.i ], [ %.127.i, %_ZNK6icu_7810NFRuleListixEj.exit41.i ] ; 2 uses
  %i.o = add nuw nsw i32 %.02665.i, %.02566.i
  %i.p = lshr i32 %i.o, 1                         ; 3 uses
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27   ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !39   ; 2 uses
  %.not3948.i = icmp eq i64 %i.t, %.029.i
  br i1 %.not3948.i, label %_ZNK6icu_789NFRuleSet14findNormalRuleEl.exit.thread14, label %_ZNK6icu_7810NFRuleListixEj.exit41.i

_ZNK6icu_7810NFRuleListixEj.exit41.i:             ; preds = %_ZNK6icu_7810NFRuleListixEj.exit.thread.i
  %i.u = icmp sgt i64 %i.t, %.029.i               ; 2 uses
  %i.v = add nuw nsw i32 %i.p, 1
  %.127.i = select i1 %i.u, i32 %i.p, i32 %.02665.i ; 5 uses
  %.1.i = select i1 %i.u, i32 %.02566.i, i32 %i.v ; 2 uses
  %i.w = icmp slt i32 %.1.i, %.127.i
  br i1 %i.w, label %_ZNK6icu_7810NFRuleListixEj.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %_ZNK6icu_7810NFRuleListixEj.exit41.i
  %i.x = icmp eq i32 %.127.i, 0
  br i1 %i.x, label %_ZNK6icu_789NFRuleSet14findNormalRuleEl.exit.thread, label %_ZNK6icu_7810NFRuleListixEj.exit45.i

_ZNK6icu_7810NFRuleListixEj.exit45.i:             ; preds = %bb.i
  %i.y = zext nneg i32 %.127.i to i64             ; 2 uses
  %i.z = getelementptr [8 x i8], ptr %i.n, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 -8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !27 ; 2 uses
  %i.ac = tail call noundef signext i8 @_ZNK6icu_786NFRule14shouldRollBackEl(ptr noundef nonnull align 8 dereferenceable(112) %i.ab, i64 noundef %.029.i)
  %.not38.i = icmp eq i8 %i.ac, 0
  br i1 %.not38.i, label %_ZNK6icu_789NFRuleSet14findNormalRuleEl.exit.thread14, label %bb.j

bb.j:                                             ; preds = %_ZNK6icu_7810NFRuleListixEj.exit45.i
  %i.ad = icmp eq i32 %.127.i, 1
  br i1 %i.ad, label %_ZNK6icu_789NFRuleSet14findNormalRuleEl.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !22  ; 2 uses
  %.not.i46.i = icmp eq ptr %i.ae, null
  br i1 %.not.i46.i, label %_ZNK6icu_789NFRuleSet14findNormalRuleEl.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr [8 x i8], ptr %i.ae, i64 %i.y
  %i.ag = getelementptr i8, ptr %i.af, i64 -16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !27
  br label %_ZNK6icu_789NFRuleSet14findNormalRuleEl.exit

bb.m:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !27
  br label %_ZNK6icu_789NFRuleSet14findNormalRuleEl.exit

_ZNK6icu_789NFRuleSet14findNormalRuleEl.exit:     ; preds = %bb.d, %bb.l, %bb.m
  %.5.i = phi ptr [ %i.e, %bb.d ], [ %i.ah, %bb.l ], [ %i.aj, %bb.m ] ; 2 uses
  %.not = icmp eq ptr %.5.i, null
  br i1 %.not, label %_ZNK6icu_789NFRuleSet14findNormalRuleEl.exit.thread, label %_ZNK6icu_789NFRuleSet14findNormalRuleEl.exit.thread14

_ZNK6icu_789NFRuleSet14findNormalRuleEl.exit.thread14: ; preds = %_ZNK6icu_7810NFRuleListixEj.exit.thread.i, %_ZNK6icu_7810NFRuleListixEj.exit45.i, %bb.f, %_ZNK6icu_789NFRuleSet14findNormalRuleEl.exit
  %.5.i17 = phi ptr [ %.5.i, %_ZNK6icu_789NFRuleSet14findNormalRuleEl.exit ], [ %i.h, %bb.f ], [ %i.ab, %_ZNK6icu_7810NFRuleListixEj.exit45.i ], [ %i.s, %_ZNK6icu_7810NFRuleListixEj.exit.thread.i ]
  %i.ak = add nsw i32 %4, 1
  tail call void @_ZNK6icu_786NFRule8doFormatElRNS_13UnicodeStringEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %.5.i17, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %3, i32 noundef %i.ak, ptr noundef nonnull align 4 dereferenceable(4) %5)
  br label %_ZNK6icu_789NFRuleSet14findNormalRuleEl.exit.thread

_ZNK6icu_789NFRuleSet14findNormalRuleEl.exit.thread: ; preds = %bb.j, %bb.i, %bb.k, %_ZNK6icu_789NFRuleSet14findNormalRuleEl.exit, %_ZNK6icu_789NFRuleSet14findNormalRuleEl.exit.thread14, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6icu_789NFRuleSet14findNormalRuleEl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(163) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i8, ptr %i.a, align 8, !tbaa !25
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sitofp i64 %1 to double
  %i.d = tail call noundef ptr @_ZNK6icu_789NFRuleSet23findFractionRuleSetRuleEd(ptr noundef nonnull align 8 dereferenceable(163) %0, double noundef %i.c)
  br label %_ZNK6icu_7810NFRuleListixEj.exit47

bb.c:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %1, 0
  br i1 %i.e, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27   ; 2 uses
  %.not37 = icmp eq ptr %i.g, null
  br i1 %.not37, label %bb.e, label %_ZNK6icu_7810NFRuleListixEj.exit47

bb.e:                                             ; preds = %bb.d
  %i.h = sub nsw i64 0, %1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.029 = phi i64 [ %i.h, %bb.e ], [ %1, %bb.c ]  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i32, ptr %i.j, align 8, !tbaa !23   ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.f
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !22   ; 2 uses
  br label %_ZNK6icu_7810NFRuleListixEj.exit.thread

_ZNK6icu_7810NFRuleListixEj.exit.thread:          ; preds = %.preheader, %_ZNK6icu_7810NFRuleListixEj.exit41
  %.02566 = phi i32 [ 0, %.preheader ], [ %.1, %_ZNK6icu_7810NFRuleListixEj.exit41 ] ; 2 uses
  %.02665 = phi i32 [ %i.k, %.preheader ], [ %.127, %_ZNK6icu_7810NFRuleListixEj.exit41 ] ; 2 uses
  %i.n = add nuw nsw i32 %.02566, %.02665
  %i.o = lshr i32 %i.n, 1                         ; 3 uses
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27   ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !39   ; 2 uses
  %.not3948 = icmp eq i64 %i.s, %.029
  br i1 %.not3948, label %_ZNK6icu_7810NFRuleListixEj.exit47, label %_ZNK6icu_7810NFRuleListixEj.exit41

_ZNK6icu_7810NFRuleListixEj.exit41:               ; preds = %_ZNK6icu_7810NFRuleListixEj.exit.thread
  %i.t = icmp sgt i64 %i.s, %.029                 ; 2 uses
  %i.u = add nuw nsw i32 %i.o, 1
  %.127 = select i1 %i.t, i32 %i.o, i32 %.02665   ; 6 uses
  %.1 = select i1 %i.t, i32 %.02566, i32 %i.u     ; 2 uses
  %i.v = icmp slt i32 %.1, %.127
  br i1 %i.v, label %_ZNK6icu_7810NFRuleListixEj.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK6icu_7810NFRuleListixEj.exit41
  %i.w = icmp eq i32 %.127, 0
  br i1 %i.w, label %_ZNK6icu_7810NFRuleListixEj.exit47, label %_ZNK6icu_7810NFRuleListixEj.exit45

_ZNK6icu_7810NFRuleListixEj.exit45:               ; preds = %bb.g
  %i.x = zext nneg i32 %.127 to i64
  %i.y = getelementptr [8 x i8], ptr %i.m, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 -8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !27  ; 2 uses
  %i.ab = tail call noundef signext i8 @_ZNK6icu_786NFRule14shouldRollBackEl(ptr noundef nonnull align 8 dereferenceable(112) %i.aa, i64 noundef %.029)
  %.not38 = icmp eq i8 %i.ab, 0
  br i1 %.not38, label %_ZNK6icu_7810NFRuleListixEj.exit47, label %bb.h

bb.h:                                             ; preds = %_ZNK6icu_7810NFRuleListixEj.exit45
  %i.ac = icmp eq i32 %.127, 1
  br i1 %i.ac, label %_ZNK6icu_7810NFRuleListixEj.exit47, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !22  ; 2 uses
  %.not.i46 = icmp eq ptr %i.ad, null
  br i1 %.not.i46, label %_ZNK6icu_7810NFRuleListixEj.exit47, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = zext nneg i32 %.127 to i64
  %i.af = getelementptr [8 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !27
  br label %_ZNK6icu_7810NFRuleListixEj.exit47

bb.k:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !27
  br label %_ZNK6icu_7810NFRuleListixEj.exit47

_ZNK6icu_7810NFRuleListixEj.exit47:               ; preds = %_ZNK6icu_7810NFRuleListixEj.exit.thread, %bb.j, %bb.i, %bb.k, %bb.h, %_ZNK6icu_7810NFRuleListixEj.exit45, %bb.g, %bb.d, %bb.b
  %.5 = phi ptr [ %i.d, %bb.b ], [ %i.g, %bb.d ], [ %i.aj, %bb.k ], [ null, %bb.i ], [ null, %bb.g ], [ null, %bb.h ], [ %i.aa, %_ZNK6icu_7810NFRuleListixEj.exit45 ], [ %i.ah, %bb.j ], [ %i.r, %_ZNK6icu_7810NFRuleListixEj.exit.thread ]
  ret ptr %.5
}

declare void @_ZNK6icu_786NFRule8doFormatElRNS_13UnicodeStringEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112), i64 noundef, ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_789NFRuleSet6formatEdRNS_13UnicodeStringEiiR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(163) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp sgt i32 %4, 63
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 27, ptr %5, align 4, !tbaa !29
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZNK6icu_789NFRuleSet14findDoubleRuleEd(ptr noundef nonnull align 8 dereferenceable(163) %0, double noundef %1) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = add nsw i32 %4, 1
  tail call void @_ZNK6icu_786NFRule8doFormatEdRNS_13UnicodeStringEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %i.b, double noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %3, i32 noundef %i.c, ptr noundef nonnull align 4 dereferenceable(4) %5)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6icu_789NFRuleSet14findDoubleRuleEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(163) %0, double noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i8, ptr %i.a, align 8, !tbaa !25
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZNK6icu_789NFRuleSet23findFractionRuleSetRuleEd(ptr noundef nonnull align 8 dereferenceable(163) %0, double noundef %1)
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.d = tail call signext i8 @uprv_isNaN_78(double noundef %1)
  %.not25 = icmp eq i8 %i.d, 0
  br i1 %.not25, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %.not32 = icmp eq ptr %i.f, null
  br i1 %.not32, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.i = tail call noundef ptr @_ZNK6icu_7821RuleBasedNumberFormat17getDefaultNaNRuleEv(ptr noundef nonnull align 8 dereferenceable(336) %i.h)
  br label %bb.r

bb.f:                                             ; preds = %bb.c
  %i.j = fcmp olt double %1, 0.000000e+00
  br i1 %i.j, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27   ; 2 uses
  %.not26 = icmp eq ptr %i.l, null
  br i1 %.not26, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.m = fneg double %1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.017 = phi double [ %i.m, %bb.h ], [ %1, %bb.f ] ; 5 uses
  %i.n = tail call signext i8 @uprv_isInfinite_78(double noundef %.017)
  %.not27 = icmp eq i8 %i.n, 0
  br i1 %.not27, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27   ; 2 uses
  %.not31 = icmp eq ptr %i.p, null
  br i1 %.not31, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21
  %i.s = tail call noundef ptr @_ZNK6icu_7821RuleBasedNumberFormat22getDefaultInfinityRuleEv(ptr noundef nonnull align 8 dereferenceable(336) %i.r)
  br label %bb.r

bb.l:                                             ; preds = %bb.i
  %i.t = tail call double @uprv_floor_78(double noundef %.017)
  %i.u = fcmp une double %.017, %i.t
  br i1 %i.u, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.v = fcmp olt double %.017, 1.000000e+00
  br i1 %i.v, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !27   ; 2 uses
  %.not28 = icmp eq ptr %i.x, null
  br i1 %.not28, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !27   ; 2 uses
  %.not29 = icmp eq ptr %i.z, null
  br i1 %.not29, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !27 ; 2 uses
  %.not30 = icmp eq ptr %i.ab, null
  br i1 %.not30, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ac = fadd double %.017, 5.000000e-01
  %i.ad = tail call noundef i64 @_ZN6icu_7817util64_fromDoubleEd(double noundef %i.ac)
  %i.ae = tail call noundef ptr @_ZNK6icu_789NFRuleSet14findNormalRuleEl(ptr noundef nonnull align 8 dereferenceable(163) %0, i64 noundef %i.ad)
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.j, %bb.k, %bb.g, %bb.d, %bb.e, %bb.q, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.ae, %bb.q ], [ %i.i, %bb.e ], [ %i.l, %bb.g ], [ %i.s, %bb.k ], [ %i.x, %bb.n ], [ %i.z, %bb.o ], [ %i.f, %bb.d ], [ %i.p, %bb.j ], [ %i.ab, %bb.p ]
  ret ptr %.0
}

declare void @_ZNK6icu_786NFRule8doFormatEdRNS_13UnicodeStringEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112), double noundef, ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6icu_789NFRuleSet23findFractionRuleSetRuleEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(163) %0, double noundef %1) local_unnamed_addr #0 align 2 {
_ZNK6icu_7810NFRuleListixEj.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22, !nonnull !33, !noundef !33 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = load i64, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %i.g = icmp ugt i32 %i.f, 1
  br i1 %i.g, label %_ZNK6icu_7810NFRuleListixEj.exit49.preheader, label %._crit_edge

end_hunk_0
