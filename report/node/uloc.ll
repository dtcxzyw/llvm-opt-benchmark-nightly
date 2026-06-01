inline.NumInlined: 705
inline.NumDeleted: 175
begin_hunk_0_@_Z26ulocimp_getKeywordValue_78PKcSt17basic_string_viewIcSt11char_traitsIcEERN6icu_788ByteSinkER10UErrorCode:bb.a
  %.not.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = load ptr, ptr %7, align 8
  call void @uprv_free_78(ptr noundef %i.al) #14
  br label %_ZN6icu_7810CharStringD2Ev.exit

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.am = load i32, ptr %4, align 4
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %_ZN12_GLOBAL__N_118_hasBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit
  %i.ao = load i32, ptr %i.h, align 8
  %.not = icmp eq i32 %i.ao, 0
  %i.ap = load ptr, ptr %5, align 8
  %spec.select = select i1 %.not, ptr %0, ptr %i.ap
  br label %_ZN12_GLOBAL__N_118_hasBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZN12_GLOBAL__N_118_hasBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %bb.n, %bb.e, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZN12_GLOBAL__N_118_hasBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZN6icu_7810CharStringD2Ev.exit
  %.066 = phi ptr [ %0, %_ZN6icu_7810CharStringD2Ev.exit ], [ %0, %bb.e ], [ %spec.select, %bb.n ], [ %0, %_ZN12_GLOBAL__N_118_hasBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ %0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.i ] ; 4 uses
  %i.aq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.066) #14 ; 2 uses
  %.not11.i = icmp eq i64 %i.aq, 0
  br i1 %.not11.i, label %.critedge78, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i80

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i80:   ; preds = %_ZN12_GLOBAL__N_118_hasBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread
  %i.ar = call ptr @memchr(ptr noundef nonnull %.066, i32 noundef 64, i64 noundef %i.aq) #14 ; 2 uses
  %.not.i.i81 = icmp eq ptr %i.ar, null
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %.066 to i64
  %i.au = sub i64 %i.as, %i.at                    ; 2 uses
  %.not.i82 = icmp eq i64 %i.au, -1
  %or.cond.i83.not100 = or i1 %.not.i.i81, %.not.i82
  br i1 %or.cond.i83.not100, label %.critedge78, label %.preheader103

.preheader103:                                    ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i80
  %i.av = getelementptr inbounds nuw i8, ptr %.066, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 13 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 56
  br label %bb.o

bb.o:                                             ; preds = %.preheader103, %_ZN6icu_7810CharStringD2Ev.exit88
  %.062114 = phi ptr [ %i.av, %.preheader103 ], [ %i.by, %_ZN6icu_7810CharStringD2Ev.exit88 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.062114, i64 1 ; 2 uses
  %i.bc = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bb, i32 noundef 61) #15 ; 6 uses
  %.not74 = icmp eq ptr %i.bc, null
  br i1 %.not74, label %bb.p, label %.preheader102

bb.p:                                             ; preds = %bb.o
  store i32 1, ptr %4, align 4
  br label %.critedge78

.preheader102:                                    ; preds = %bb.o, %.preheader102
  %.163 = phi ptr [ %i.bf, %.preheader102 ], [ %i.bb, %bb.o ] ; 6 uses
  %i.bd = load i8, ptr %.163, align 1
  %i.be = icmp eq i8 %i.bd, 32
  %i.bf = getelementptr inbounds nuw i8, ptr %.163, i64 1
  br i1 %i.be, label %.preheader102, label %.preheader101, !llvm.loop !20

.preheader101:                                    ; preds = %.preheader102
  %i.bg = icmp ugt ptr %i.bc, %.163
  br i1 %i.bg, label %.lr.ph159, label %.critedge.thread

bb.q:                                             ; preds = %.lr.ph159
  %i.bh = icmp ugt ptr %i.bi, %.163
  br i1 %i.bh, label %.lr.ph159, label %.critedge.thread, !llvm.loop !21

.lr.ph159:                                        ; preds = %.preheader101, %bb.q
  %.0158 = phi ptr [ %i.bi, %bb.q ], [ %i.bc, %.preheader101 ] ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %.0158, i64 -1 ; 4 uses
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = icmp eq i8 %i.bj, 32
  br i1 %i.bk, label %bb.q, label %.lr.ph.preheader, !llvm.loop !21

.critedge.thread:                                 ; preds = %bb.q, %.preheader101
  %.0.lcssa = phi ptr [ %i.bc, %.preheader101 ], [ %i.bi, %bb.q ]
  %i.bl = icmp eq ptr %.163, %.0.lcssa
  br i1 %i.bl, label %bb.r, label %.thread

.thread:                                          ; preds = %.critedge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  store ptr %i.aw, ptr %8, align 8
  store i32 40, ptr %i.ax, align 8
  store i8 0, ptr %i.ay, align 4
  store i32 0, ptr %i.az, align 8
  store i8 0, ptr %i.aw, align 1
  br label %._crit_edge

bb.r:                                             ; preds = %.critedge.thread
  store i32 1, ptr %4, align 4
  br label %.critedge78

.lr.ph.preheader:                                 ; preds = %.lr.ph159
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  store ptr %i.aw, ptr %8, align 8
  store i32 40, ptr %i.ax, align 8
  store i8 0, ptr %i.ay, align 4
  store i32 0, ptr %i.az, align 8
  store i8 0, ptr %i.aw, align 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.s
  %.2113 = phi ptr [ %i.br, %bb.s ], [ %.163, %.lr.ph.preheader ] ; 3 uses
  %i.bm = load i8, ptr %.2113, align 1            ; 2 uses
  %i.bn = call signext i8 @uprv_isASCIILetter_78(i8 noundef signext %i.bm) #14
  %.not.i85 = icmp ne i8 %i.bn, 0
  %i.bo = add i8 %i.bm, -48
  %i.bp = icmp ult i8 %i.bo, 10
  %i.bq = or i1 %i.bp, %.not.i85
  br i1 %i.bq, label %bb.s, label %.critedge78.critedge.sink.split

bb.s:                                             ; preds = %.lr.ph
  %i.br = getelementptr inbounds nuw i8, ptr %.2113, i64 1 ; 2 uses
  %i.bs = load i8, ptr %.2113, align 1
  %i.bt = call signext i8 @uprv_asciitolower_78(i8 noundef signext %i.bs) #14
  %i.bu = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %8, i8 noundef signext %i.bt, ptr noundef nonnull align 4 dereferenceable(4) %4) #14 ; 0 uses
  %i.bv = icmp ult ptr %i.br, %.0158
  br i1 %i.bv, label %.lr.ph, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.s, %.thread
  %i.bw = load i32, ptr %4, align 4
  %i.bx = icmp slt i32 %i.bw, 1
  br i1 %i.bx, label %bb.t, label %.critedge78.critedge

bb.t:                                             ; preds = %._crit_edge
  %i.by = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bc, i32 noundef 59) #15 ; 4 uses
  %i.bz = load i32, ptr %i.ba, align 8            ; 3 uses
  %i.ca = load i32, ptr %i.az, align 8
  %i.cb = icmp eq i32 %i.bz, %i.ca
  br i1 %i.cb, label %bb.u, label %_ZNK6icu_7810CharStringeqERKS0_.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.cc = icmp eq i32 %i.bz, 0
  br i1 %i.cc, label %_ZNK6icu_7810CharStringeqERKS0_.exit.preheader, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cd = load ptr, ptr %6, align 8
  %i.ce = load ptr, ptr %8, align 8
  %i.cf = sext i32 %i.bz to i64
  %bcmp.i = call i32 @bcmp(ptr %i.cd, ptr %i.ce, i64 %i.cf)
  %i.cg = icmp eq i32 %bcmp.i, 0
  br i1 %i.cg, label %_ZNK6icu_7810CharStringeqERKS0_.exit.preheader, label %_ZNK6icu_7810CharStringeqERKS0_.exit.thread

_ZNK6icu_7810CharStringeqERKS0_.exit.preheader:   ; preds = %bb.v, %bb.u
  br label %_ZNK6icu_7810CharStringeqERKS0_.exit

_ZNK6icu_7810CharStringeqERKS0_.exit:             ; preds = %_ZNK6icu_7810CharStringeqERKS0_.exit.preheader, %_ZNK6icu_7810CharStringeqERKS0_.exit
  %.pn = phi ptr [ %.064, %_ZNK6icu_7810CharStringeqERKS0_.exit ], [ %i.bc, %_ZNK6icu_7810CharStringeqERKS0_.exit.preheader ]
  %.064 = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 8 uses
  %i.ch = load i8, ptr %.064, align 1
  %i.ci = icmp eq i8 %i.ch, 32
  br i1 %i.ci, label %_ZNK6icu_7810CharStringeqERKS0_.exit, label %bb.w, !llvm.loop !23

bb.w:                                             ; preds = %_ZNK6icu_7810CharStringeqERKS0_.exit
  %.not76 = icmp eq ptr %i.by, null
  br i1 %.not76, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.064) #15
  %i.ck = getelementptr inbounds nuw i8, ptr %.064, i64 %i.cj
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.cl = phi ptr [ %i.ck, %bb.x ], [ %i.by, %bb.w ] ; 3 uses
  %i.cm = icmp ugt ptr %i.cl, %.064
  br i1 %i.cm, label %.lr.ph162, label %.critedge2.thread

bb.z:                                             ; preds = %.lr.ph162
  %i.cn = icmp ugt ptr %i.co, %.064
  br i1 %i.cn, label %.lr.ph162, label %.critedge2.thread, !llvm.loop !24

.lr.ph162:                                        ; preds = %bb.y, %bb.z
  %.1160 = phi ptr [ %i.co, %bb.z ], [ %i.cl, %bb.y ] ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %.1160, i64 -1 ; 4 uses
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = icmp eq i8 %i.cp, 32
  br i1 %i.cq, label %bb.z, label %.lr.ph116, !llvm.loop !24

.critedge2.thread:                                ; preds = %bb.z, %bb.y
  %.1.lcssa = phi ptr [ %i.cl, %bb.y ], [ %i.co, %bb.z ]
  %i.cr = icmp eq ptr %.064, %.1.lcssa
  br i1 %i.cr, label %.critedge78.critedge.sink.split, label %.critedge78.critedge

.lr.ph116:                                        ; preds = %.lr.ph162, %_ZN12_GLOBAL__N_125UPRV_OK_VALUE_PUNCTUATIONEc.exit.thread
  %.165115 = phi ptr [ %i.cy, %_ZN12_GLOBAL__N_125UPRV_OK_VALUE_PUNCTUATIONEc.exit.thread ], [ %.064, %.lr.ph162 ] ; 4 uses
  %i.cs = load i8, ptr %.165115, align 1          ; 2 uses
  %i.ct = call signext i8 @uprv_isASCIILetter_78(i8 noundef signext %i.cs) #14
  %.not.i86 = icmp ne i8 %i.ct, 0
  %i.cu = add i8 %i.cs, -48
  %i.cv = icmp ult i8 %i.cu, 10
  %i.cw = or i1 %i.cv, %.not.i86
  br i1 %i.cw, label %_ZN12_GLOBAL__N_125UPRV_OK_VALUE_PUNCTUATIONEc.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph116
  %i.cx = load i8, ptr %.165115, align 1
  switch i8 %i.cx, label %.critedge78.critedge.sink.split [
    i8 95, label %_ZN12_GLOBAL__N_125UPRV_OK_VALUE_PUNCTUATIONEc.exit.thread
    i8 45, label %_ZN12_GLOBAL__N_125UPRV_OK_VALUE_PUNCTUATIONEc.exit.thread
    i8 43, label %_ZN12_GLOBAL__N_125UPRV_OK_VALUE_PUNCTUATIONEc.exit.thread
    i8 47, label %_ZN12_GLOBAL__N_125UPRV_OK_VALUE_PUNCTUATIONEc.exit.thread
  ]

_ZN12_GLOBAL__N_125UPRV_OK_VALUE_PUNCTUATIONEc.exit.thread: ; preds = %bb.aa, %bb.aa, %bb.aa, %bb.aa, %.lr.ph116
  %i.cy = getelementptr inbounds nuw i8, ptr %.165115, i64 1 ; 2 uses
  %i.cz = load ptr, ptr %3, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %.165115, i32 noundef 1) #14
  %i.dc = icmp ult ptr %i.cy, %.1160
  br i1 %i.dc, label %.lr.ph116, label %.critedge78.critedge, !llvm.loop !25

_ZNK6icu_7810CharStringeqERKS0_.exit.thread:      ; preds = %bb.t, %bb.v
  %i.dd = load i8, ptr %i.ay, align 4
  %.not.i.i.i87 = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i.i87, label %_ZN6icu_7810CharStringD2Ev.exit88, label %bb.ab

bb.ab:                                            ; preds = %_ZNK6icu_7810CharStringeqERKS0_.exit.thread
  %i.de = load ptr, ptr %8, align 8
  call void @uprv_free_78(ptr noundef %i.de) #14
  br label %_ZN6icu_7810CharStringD2Ev.exit88

_ZN6icu_7810CharStringD2Ev.exit88:                ; preds = %_ZNK6icu_7810CharStringeqERKS0_.exit.thread, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %.not73 = icmp eq ptr %i.by, null
  br i1 %.not73, label %.critedge78, label %bb.o, !llvm.loop !26

.critedge78.critedge.sink.split:                  ; preds = %.lr.ph, %bb.aa, %.critedge2.thread
  store i32 1, ptr %4, align 4
  br label %.critedge78.critedge

.critedge78.critedge:                             ; preds = %._crit_edge, %_ZN12_GLOBAL__N_125UPRV_OK_VALUE_PUNCTUATIONEc.exit.thread, %.critedge78.critedge.sink.split, %.critedge2.thread
  %i.df = load i8, ptr %i.ay, align 4
  %.not.i.i.i89 = icmp eq i8 %i.df, 0
  br i1 %.not.i.i.i89, label %_ZN6icu_7810CharStringD2Ev.exit90, label %bb.ac

bb.ac:                                            ; preds = %.critedge78.critedge
  %i.dg = load ptr, ptr %8, align 8
  call void @uprv_free_78(ptr noundef %i.dg) #14
  br label %_ZN6icu_7810CharStringD2Ev.exit90

_ZN6icu_7810CharStringD2Ev.exit90:                ; preds = %.critedge78.critedge, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %.critedge78

.critedge78:                                      ; preds = %_ZN6icu_7810CharStringD2Ev.exit88, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i80, %_ZN12_GLOBAL__N_118_hasBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, %_ZN6icu_7810CharStringD2Ev.exit90, %bb.r, %bb.p, %bb.d
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.di = load i8, ptr %i.dh, align 4
  %.not.i.i.i91 = icmp eq i8 %i.di, 0
  br i1 %.not.i.i.i91, label %_ZN6icu_7810CharStringD2Ev.exit92, label %bb.ad

bb.ad:                                            ; preds = %.critedge78
  %i.dj = load ptr, ptr %6, align 8
  call void @uprv_free_78(ptr noundef %i.dj) #14
  br label %_ZN6icu_7810CharStringD2Ev.exit92

_ZN6icu_7810CharStringD2Ev.exit92:                ; preds = %.critedge78, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.dk = load i8, ptr %i.g, align 4
  %.not.i.i.i93 = icmp eq i8 %i.dk, 0
  br i1 %.not.i.i.i93, label %_ZN6icu_7810CharStringD2Ev.exit94, label %bb.ae

bb.ae:                                            ; preds = %_ZN6icu_7810CharStringD2Ev.exit92
  %i.dl = load ptr, ptr %5, align 8
  call void @uprv_free_78(ptr noundef %i.dl) #14
  br label %_ZN6icu_7810CharStringD2Ev.exit94

_ZN6icu_7810CharStringD2Ev.exit94:                ; preds = %_ZN6icu_7810CharStringD2Ev.exit92, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %_ZN6icu_7810CharStringD2Ev.exit94, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_123locale_canonKeywordNameESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %1, ptr readonly captures(address) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %"class.icu_78::CharString", align 8 ; 10 uses
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 2 uses
  store ptr %i.c, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 40, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.f, align 8
  store i8 0, ptr %i.c, align 1
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 13 ; 2 uses
  store ptr %i.g, ptr %4, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 40, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i8 0, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  store i32 0, ptr %i.j, align 8
  store i8 0, ptr %i.g, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %.not1518 = icmp samesign eq i64 %1, 0
  br i1 %.not1518, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.019 = phi ptr [ %i.s, %bb.d ], [ %2, %bb.c ]  ; 2 uses
  %i.l = load i8, ptr %.019, align 1              ; 3 uses
  %i.m = call signext i8 @uprv_isASCIILetter_78(i8 noundef signext %i.l) #14
  %.not.i = icmp ne i8 %i.m, 0
  %i.n = add i8 %i.l, -48
  %i.o = icmp ult i8 %i.n, 10
  %i.p = or i1 %i.o, %.not.i
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.q = call signext i8 @uprv_asciitolower_78(i8 noundef signext %i.l) #14
  %i.r = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %4, i8 noundef signext %i.q, ptr noundef nonnull align 4 dereferenceable(4) %3) #14 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.019, i64 1 ; 2 uses
  %.not15 = icmp eq ptr %i.s, %i.k
  br i1 %.not15, label %.critedge, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  store i32 1, ptr %3, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 2 uses
  store ptr %i.t, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 40, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.w, align 8
  store i8 0, ptr %i.t, align 1
  br label %bb.g

.critedge:                                        ; preds = %bb.d
  %.pre = load i32, ptr %i.j, align 8
  %i.x = icmp eq i32 %.pre, 0
  br i1 %i.x, label %.critedge.thread, label %bb.f

.critedge.thread:                                 ; preds = %bb.c, %.critedge
  store i32 1, ptr %3, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 2 uses
  store ptr %i.y, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 40, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.ab, align 8
  store i8 0, ptr %i.y, align 1
  br label %bb.g

bb.f:                                             ; preds = %.critedge
  call void @_ZN6icu_7810CharStringC1EOS0_(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(60) %4) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %.critedge.thread
  %i.ac = load i8, ptr %i.i, align 4
  %.not.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %4, align 8
  call void @uprv_free_78(ptr noundef %i.ad) #14
  br label %_ZN6icu_7810CharStringD2Ev.exit

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.i

bb.i:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit, %bb.b
  ret void
}

declare void @_Z25ulocimp_forLanguageTag_78PKciPiR10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::CharString") align 8, ptr noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 8 dereferenceable(60)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), i8 noundef signext, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @uloc_setKeywordValue_78(ptr noundef readonly captures(address) %0, ptr noundef readonly captures(address) %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %"class.icu_78::CheckedArrayByteSink", align 8 ; 5 uses
  %i.a = load i32, ptr %4, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %0, align 1
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 1, ptr %4, align 4
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  %i.f = icmp slt i32 %3, 2
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %4, align 4
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #15 ; 3 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %3, %i.h
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %4, align 4
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %sext = shl i64 %i.g, 32                        ; 2 uses
  %i.j = ashr exact i64 %sext, 32                 ; 2 uses
  %.not11.i = icmp eq i64 %sext, 0
  br i1 %.not11.i, label %.locale_getKeywordsStart_78.exit_crit_edge, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

.locale_getKeywordsStart_78.exit_crit_edge:       ; preds = %bb.i
  %.pre = ptrtoint ptr %2 to i64
  br label %locale_getKeywordsStart_78.exit

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.i
  %i.k = tail call ptr @memchr(ptr noundef nonnull %2, i32 noundef 64, i64 noundef %i.j) #14 ; 2 uses
  %.not.i.i = icmp ne ptr %i.k, null
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %.not.i = icmp ne i64 %i.n, -1
  %or.cond.i = select i1 %.not.i.i, i1 %.not.i, i1 false
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.n
  %spec.select = select i1 %or.cond.i, ptr %i.o, ptr null
  br label %locale_getKeywordsStart_78.exit

locale_getKeywordsStart_78.exit:                  ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %.locale_getKeywordsStart_78.exit_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.locale_getKeywordsStart_78.exit_crit_edge ], [ %i.m, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ]
  %i.p = phi ptr [ null, %.locale_getKeywordsStart_78.exit_crit_edge ], [ %spec.select, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 5 uses
  %i.q = icmp eq ptr %i.p, null                   ; 3 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.r, %.pre-phi
  %i.t = select i1 %i.q, i64 %i.g, i64 %i.s
  %i.u = trunc i64 %i.t to i32                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.v = getelementptr inbounds i8, ptr %2, i64 %i.j
  %i.w = select i1 %i.q, ptr %i.v, ptr %i.p
  %i.x = xor i32 %i.u, -1
  %i.y = add i32 %3, %i.x
  call void @_ZN6icu_7820CheckedArrayByteSinkC1EPci(ptr noundef nonnull align 8 dereferenceable(29) %5, ptr noundef nonnull %i.w, i32 noundef %i.y) #14
  br i1 %i.q, label %bb.k, label %bb.j

bb.j:                                             ; preds = %locale_getKeywordsStart_78.exit
  %i.z = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #14
  br label %bb.k

bb.k:                                             ; preds = %locale_getKeywordsStart_78.exit, %bb.j
  %.sroa.044.0 = phi i64 [ %i.z, %bb.j ], [ 0, %locale_getKeywordsStart_78.exit ]
  %i.aa = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #14
  %i.ab = icmp eq ptr %1, null
  br i1 %i.ab, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sroa.0.0 = phi i64 [ %i.ac, %bb.l ], [ 0, %bb.k ]
  %i.ad = call noundef i32 @_Z26ulocimp_setKeywordValue_78St17basic_string_viewIcSt11char_traitsIcEES2_S2_RN6icu_788ByteSinkER10UErrorCode(i64 %.sroa.044.0, ptr %i.p, i64 %i.aa, ptr nonnull %0, i64 %.sroa.0.0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %4) ; 2 uses
  %i.ae = load i32, ptr %4, align 4               ; 2 uses
  %i.af = icmp slt i32 %i.ae, 1
  br i1 %i.af, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = icmp eq i32 %i.ae, 15
  %i.ah = add nsw i32 %i.ad, %i.u
  %i.ai = select i1 %i.ag, i32 %i.ah, i32 0
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.aj = add nsw i32 %i.ad, %i.u
  %i.ak = call i32 @u_terminateChars_78(ptr noundef nonnull %2, i32 noundef %3, i32 noundef %i.aj, ptr noundef nonnull %4) #14
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0 = phi i32 [ %i.ai, %bb.n ], [ %i.ak, %bb.o ]
  call void @_ZN6icu_7820CheckedArrayByteSinkD1Ev(ptr noundef nonnull align 8 dereferenceable(29) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %bb.p, %bb.a, %bb.f, %bb.d
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.h ], [ %.0, %bb.p ]
  ret i32 %.2
}

declare void @_ZN6icu_7820CheckedArrayByteSinkC1EPci(ptr noundef nonnull align 8 dereferenceable(29), ptr noundef, i32 noundef) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z26ulocimp_setKeywordValue_78St17basic_string_viewIcSt11char_traitsIcEES2_S2_RN6icu_788ByteSinkER10UErrorCode(i64 %0, ptr %1, i64 %2, ptr readonly captures(address) %3, i64 %4, ptr readonly captures(address) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(4) %7) local_unnamed_addr #2 {
bb.a:
  %8 = alloca %"class.icu_78::CharString", align 8 ; 25 uses
  %9 = alloca %"class.icu_78::CharString", align 8 ; 12 uses
  %10 = alloca %"class.icu_78::CharString", align 8 ; 13 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %11 = alloca %"class.icu_78::CharString", align 8 ; 11 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = load i32, ptr %7, align 4                ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.ax

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 13 ; 2 uses
  store ptr %i.f, ptr %8, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 40, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  store i8 0, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  store i32 0, ptr %i.i, align 8
  store i8 0, ptr %i.f, align 1
  %i.j = icmp eq i32 %i.d, -124
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %7, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = icmp eq i64 %2, 0
  br i1 %i.k, label %.thread297, label %bb.e

.thread297:                                       ; preds = %bb.d
  store i32 1, ptr %7, align 4
  br label %_ZN6icu_7810CharStringD2Ev.exit225

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call fastcc void @_ZN12_GLOBAL__N_123locale_canonKeywordNameESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind noalias writable align 8 %9, i64 %2, ptr %3, ptr noundef nonnull align 4 dereferenceable(4) %7)
  %i.l = load i32, ptr %7, align 4
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %bb.f, label %bb.at

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 13 ; 2 uses
  store ptr %i.n, ptr %10, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 40, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  store i8 0, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 9 uses
  store i32 0, ptr %i.q, align 8
  store i8 0, ptr %i.n, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 %4
  %.not200265 = icmp samesign eq i64 %4, 0
  br i1 %.not200265, label %.critedge212.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %.critedge210
  %.0190266 = phi ptr [ %i.y, %.critedge210 ], [ %5, %bb.f ] ; 2 uses
  %i.s = load i8, ptr %.0190266, align 1          ; 4 uses
  %i.t = call signext i8 @uprv_isASCIILetter_78(i8 noundef signext %i.s) #14
  %.not.i = icmp ne i8 %i.t, 0
  %i.u = add i8 %i.s, -48
  %i.v = icmp ult i8 %i.u, 10
  %i.w = or i1 %i.v, %.not.i
  br i1 %i.w, label %.critedge210, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  switch i8 %i.s, label %_ZN12_GLOBAL__N_125UPRV_OK_VALUE_PUNCTUATIONEc.exit [
    i8 95, label %.critedge210
    i8 45, label %.critedge210
    i8 43, label %.critedge210
    i8 47, label %.critedge210
  ]

_ZN12_GLOBAL__N_125UPRV_OK_VALUE_PUNCTUATIONEc.exit: ; preds = %bb.g
  store i32 1, ptr %7, align 4
  br label %.thread

.critedge210:                                     ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %.lr.ph
  %i.x = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %10, i8 noundef signext %i.s, ptr noundef nonnull align 4 dereferenceable(4) %7) #14 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0190266, i64 1 ; 2 uses
  %.not200 = icmp eq ptr %i.y, %i.r
  br i1 %.not200, label %.critedge212, label %.lr.ph

.critedge212:                                     ; preds = %.critedge210
  %.pre = load i32, ptr %7, align 4
  %i.z = icmp slt i32 %.pre, 1
  br i1 %i.z, label %.critedge212.thread, label %.thread

.critedge212.thread:                              ; preds = %bb.f, %.critedge212
  %i.aa = icmp ult i64 %0, 2
  br i1 %i.aa, label %bb.h, label %.preheader260

.preheader260:                                    ; preds = %.critedge212.thread
  %i.ab = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 13 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  %invariant.op = sub i64 1, %i.ab
  br label %bb.m

bb.h:                                             ; preds = %.critedge212.thread
  %i.ah = load i32, ptr %i.q, align 8             ; 2 uses
  %.not257 = icmp eq i32 %i.ah, 0
  br i1 %.not257, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = add i32 %i.ah, 2
  %i.al = add i32 %i.ak, %i.aj                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4
  %i.am = load ptr, ptr %6, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call noundef ptr %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %i.al, i32 noundef %i.al, ptr noundef null, i32 noundef %i.al, ptr noundef nonnull %i.a) #14 ; 4 uses
  %i.aq = load i32, ptr %i.a, align 4
  %i.ar = icmp slt i32 %i.aq, %i.al
  %i.as = icmp eq ptr %i.ap, null
  %or.cond = or i1 %i.as, %i.ar
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 15, ptr %7, align 4
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 2 uses
  store i8 64, ptr %i.ap, align 1
  %i.au = load ptr, ptr %9, align 8
  %i.av = load i32, ptr %i.ai, align 8
  %i.aw = sext i32 %i.av to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr align 1 %i.au, i64 %i.aw, i1 false)
  %i.ax = load i32, ptr %i.ai, align 8
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %i.at, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store i8 61, ptr %i.az, align 1
  %i.bb = load ptr, ptr %10, align 8
  %i.bc = load i32, ptr %i.q, align 8
  %i.bd = sext i32 %i.bc to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr align 1 %i.bb, i64 %i.bd, i1 false)
  %i.be = load ptr, ptr %6, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %i.ap, i32 noundef %i.al) #14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.thread

bb.m:                                             ; preds = %.preheader260, %bb.ak
  %.0174 = phi i8 [ %.5179, %bb.ak ], [ 64, %.preheader260 ] ; 8 uses
  %.0167 = phi i64 [ %.4171, %bb.ak ], [ 0, %.preheader260 ] ; 2 uses
  %.0155 = phi i8 [ %.5160, %bb.ak ], [ 0, %.preheader260 ] ; 7 uses
  %.not202 = icmp eq i64 %.0167, -1
  br i1 %.not202, label %.thread249, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = add nuw i64 %.0167, 1                   ; 4 uses
  %i.bi = icmp ult i64 %i.bh, %0
  br i1 %i.bi, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, label %.thread.thread

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.n
  %i.bj = sub nuw i64 %0, %i.bh
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %i.bh
  %i.bl = call ptr @memchr(ptr noundef nonnull %i.bk, i32 noundef 61, i64 noundef %i.bj) #14 ; 2 uses
  %.not.i213 = icmp eq ptr %i.bl, null
  %i.bm = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bn = sub i64 %i.bm, %i.ab                    ; 8 uses
  %i.bo = icmp eq i64 %i.bn, -1
  %or.cond255 = select i1 %.not.i213, i1 true, i1 %i.bo
  br i1 %or.cond255, label %.thread.thread, label %.lr.ph268

.thread.thread:                                   ; preds = %bb.n, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  store i32 1, ptr %7, align 4
  br label %.thread

.lr.ph268:                                        ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.o
  %.1168267 = phi i64 [ %i.bs, %bb.o ], [ %i.bh, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 %.1168267
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = icmp eq i8 %i.bq, 32
  br i1 %i.br, label %bb.o, label %.critedge

bb.o:                                             ; preds = %.lr.ph268
  %i.bs = add i64 %.1168267, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bs, %0
  br i1 %exitcond.not, label %.critedge, label %.lr.ph268, !llvm.loop !27

.critedge:                                        ; preds = %.lr.ph268, %bb.o
  %.1168.lcssa.ph = phi i64 [ %.1168267, %.lr.ph268 ], [ %0, %bb.o ] ; 7 uses
  %umin = call i64 @llvm.umin.i64(i64 %.1168.lcssa.ph, i64 %i.bn) ; 2 uses
  %i.bt = icmp ugt i64 %i.bn, %.1168.lcssa.ph
  br i1 %i.bt, label %.lr.ph310, label %.critedge7

bb.p:                                             ; preds = %.lr.ph310
  %i.bu = icmp ugt i64 %i.bv, %.1168.lcssa.ph
  br i1 %i.bu, label %.lr.ph310, label %.critedge7, !llvm.loop !28

.lr.ph310:                                        ; preds = %.critedge, %bb.p
  %.0164309 = phi i64 [ %i.bv, %bb.p ], [ %i.bn, %.critedge ] ; 2 uses
  %i.bv = add i64 %.0164309, -1                   ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = icmp eq i8 %i.bx, 32
  br i1 %i.by, label %bb.p, label %..critedge7_crit_edge311, !llvm.loop !28

..critedge7_crit_edge311:                         ; preds = %.lr.ph310
  br label %.critedge7, !llvm.loop !28

.critedge7:                                       ; preds = %bb.p, %..critedge7_crit_edge311, %.critedge
  %.0164.lcssa = phi i64 [ %umin, %.critedge ], [ %.0164309, %..critedge7_crit_edge311 ], [ %umin, %bb.p ] ; 4 uses
  %i.bz = icmp eq i64 %.1168.lcssa.ph, %.0164.lcssa
  br i1 %i.bz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.critedge7
  store i32 1, ptr %7, align 4
  br label %.thread

bb.r:                                             ; preds = %.critedge7
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  store ptr %i.ac, ptr %11, align 8
  store i32 40, ptr %i.ad, align 8
  store i8 0, ptr %i.ae, align 4
  store i32 0, ptr %i.af, align 8
  store i8 0, ptr %i.ac, align 1
  %i.ca = icmp ult i64 %.1168.lcssa.ph, %.0164.lcssa
  br i1 %i.ca, label %.lr.ph272, label %._crit_edge

.lr.ph272:                                        ; preds = %bb.r, %bb.t
  %.2169271 = phi i64 [ %i.ch, %bb.t ], [ %.1168.lcssa.ph, %bb.r ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 %.2169271 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1             ; 2 uses
  %i.cd = call signext i8 @uprv_isASCIILetter_78(i8 noundef signext %i.cc) #14
  %.not.i214 = icmp ne i8 %i.cd, 0
  %i.ce = add i8 %i.cc, -48
  %i.cf = icmp ult i8 %i.ce, 10
  %i.cg = or i1 %i.cf, %.not.i214
  br i1 %i.cg, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph272
  store i32 1, ptr %7, align 4
  br label %bb.ai

bb.t:                                             ; preds = %.lr.ph272
  %i.ch = add i64 %.2169271, 1                    ; 2 uses
  %i.ci = load i8, ptr %i.cb, align 1
  %i.cj = call signext i8 @uprv_asciitolower_78(i8 noundef signext %i.ci) #14
  %i.ck = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %11, i8 noundef signext %i.cj, ptr noundef nonnull align 4 dereferenceable(4) %7) #14 ; 0 uses
  %exitcond278.not = icmp eq i64 %i.ch, %.0164.lcssa
  br i1 %exitcond278.not, label %._crit_edge, label %.lr.ph272, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.t, %bb.r
  %.2169.lcssa = phi i64 [ %.1168.lcssa.ph, %bb.r ], [ %.0164.lcssa, %bb.t ] ; 2 uses
  %i.cl = load i32, ptr %7, align 4
  %i.cm = icmp slt i32 %i.cl, 1
  br i1 %i.cm, label %bb.u, label %bb.ai

bb.u:                                             ; preds = %._crit_edge
  %i.cn = icmp ult i64 %i.bn, %0
  br i1 %i.cn, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i216, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit219

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i216:    ; preds = %bb.u
  %i.co = sub nuw i64 %0, %i.bn
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 %i.bn
  %i.cq = call ptr @memchr(ptr noundef %i.cp, i32 noundef 59, i64 noundef %i.co) #14 ; 2 uses
  %.not.i217 = icmp eq ptr %i.cq, null
end_hunk_0
begin_hunk_1_@uloc_toLegacyType_78:bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0.copyload = load i8, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14, !noalias !110
  %i.u = trunc nuw i8 %.sroa.6.0.copyload to i1
  %spec.select = select i1 %i.u, ptr %.sroa.4.0.copyload, ptr null
  br label %bb.i

bb.i:                                             ; preds = %_Z35ulocimp_toLegacyTypeWithFallback_78St17basic_string_viewIcSt11char_traitsIcEES2_.exit.thread, %_Z35ulocimp_toLegacyTypeWithFallback_78St17basic_string_viewIcSt11char_traitsIcEES2_.exit, %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.b ], [ %spec.select, %_Z35ulocimp_toLegacyTypeWithFallback_78St17basic_string_viewIcSt11char_traitsIcEES2_.exit ], [ %1, %_Z35ulocimp_toLegacyTypeWithFallback_78St17basic_string_viewIcSt11char_traitsIcEES2_.exit.thread ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z35ulocimp_toLegacyTypeWithFallback_78St17basic_string_viewIcSt11char_traitsIcEES2_(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::optional.30") align 8 captures(none) %0, i64 %1, ptr %2, i64 %3, ptr %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %"class.std::optional.30", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @_Z23ulocimp_toLegacyType_78St17basic_string_viewIcSt11char_traitsIcEES2_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.30") align 8 %5, i64 %1, ptr %2, i64 %3, ptr %4) #14
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !45, !noundef !46
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN12_GLOBAL__N_122isWellFormedLegacyTypeESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 %3 ; 2 uses
  %.not33.i = icmp samesign eq i64 %3, 0
  br i1 %.not33.i, label %_ZN12_GLOBAL__N_122isWellFormedLegacyTypeESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i.backedge
  %.02335.i = phi i32 [ %.02335.i.be, %.lr.ph.i.backedge ], [ 0, %bb.b ] ; 2 uses
  %.02734.i = phi ptr [ %.02734.i.be, %.lr.ph.i.backedge ], [ %4, %bb.b ] ; 3 uses
  %i.e = load i8, ptr %.02734.i, align 1          ; 3 uses
  switch i8 %i.e, label %bb.d [
    i8 95, label %bb.c
    i8 47, label %bb.c
    i8 45, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %.not32.i = icmp eq i32 %.02335.i, 0
  %i.f = getelementptr inbounds nuw i8, ptr %.02734.i, i64 1 ; 2 uses
  %.not.i14 = icmp eq ptr %i.f, %i.d
  %or.cond = select i1 %.not32.i, i1 true, i1 %.not.i14
  br i1 %or.cond, label %_ZN12_GLOBAL__N_122isWellFormedLegacyTypeESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %.lr.ph.i.backedge

.lr.ph.i.backedge:                                ; preds = %bb.c, %bb.e
  %.02335.i.be = phi i32 [ 0, %bb.c ], [ %i.k, %bb.e ]
  %.02734.i.be = phi ptr [ %i.f, %bb.c ], [ %i.l, %bb.e ]
  br label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.g = call signext i8 @uprv_isASCIILetter_78(i8 noundef signext %i.e) #14
  %.not.i.i = icmp ne i8 %i.g, 0
  %i.h = add i8 %i.e, -48
  %i.i = icmp ult i8 %i.h, 10
  %i.j = or i1 %i.i, %.not.i.i
  br i1 %i.j, label %bb.e, label %_ZN12_GLOBAL__N_122isWellFormedLegacyTypeESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.k = add nsw i32 %.02335.i, 1                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.02734.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.l, %i.d
  br i1 %.not.i, label %_ZN12_GLOBAL__N_122isWellFormedLegacyTypeESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph.i.backedge

_ZN12_GLOBAL__N_122isWellFormedLegacyTypeESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.e
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %_ZN12_GLOBAL__N_122isWellFormedLegacyTypeESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_122isWellFormedLegacyTypeESt17basic_string_viewIcSt11char_traitsIcEE.exit
  store i64 %3, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %4, ptr %.sroa.3.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.m, align 8
  br label %bb.g

_ZN12_GLOBAL__N_122isWellFormedLegacyTypeESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %bb.c, %bb.d, %bb.b, %_ZN12_GLOBAL__N_122isWellFormedLegacyTypeESt17basic_string_viewIcSt11char_traitsIcEE.exit, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_122isWellFormedLegacyTypeESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret void
}

declare void @_Z23ulocimp_toLegacyType_78St17basic_string_viewIcSt11char_traitsIcEES2_(ptr dead_on_unwind writable sret(%"class.std::optional.30") align 8, i64, ptr, i64, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6icu_7810CharStringC1EOS0_(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #5

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #3

declare signext i8 @uprv_isASCIILetter_78(i8 noundef signext) local_unnamed_addr #3

declare i32 @uprv_max_78(i32 noundef, i32 noundef) local_unnamed_addr #3

declare signext i8 @uprv_toupper_78(i8 noundef signext) local_unnamed_addr #3

declare i32 @uprv_min_78(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL21uloc_kw_closeKeywordsP12UEnumeration(ptr noundef %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @uprv_free_78(ptr noundef %i.c) #14
  %i.d = load ptr, ptr %i.a, align 8
  tail call void @uprv_free_78(ptr noundef %i.d) #14
  tail call void @uprv_free_78(ptr noundef %0) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @_ZL21uloc_kw_countKeywordsP12UEnumerationP10UErrorCode(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load i8, ptr %i.c, align 1
  %.not6 = icmp eq i8 %i.d, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.08 = phi i32 [ %i.e, %.lr.ph ], [ 0, %bb.a ]
  %.057 = phi ptr [ %i.h, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  %i.e = add nuw nsw i32 %.08, 1                  ; 2 uses
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.057) #15
  %i.g = getelementptr i8, ptr %.057, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 1        ; 2 uses
  %i.i = load i8, ptr %i.h, align 1
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !113

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.e, %.lr.ph ]
  ret i32 %.0.lcssa
}

declare ptr @uenum_unextDefault_78(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZL19uloc_kw_nextKeywordP12UEnumerationPiP10UErrorCode(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(address_is_null) %1, ptr readnone captures(none) %2) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = load i8, ptr %i.d, align 1
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #15 ; 2 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = shl i64 %i.f, 32
  %sext = add i64 %i.h, 4294967296
  %i.i = ashr exact i64 %sext, 32
  %i.j = getelementptr inbounds i8, ptr %i.d, i64 %i.i
  store ptr %i.j, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.08 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  %.0 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  %.not10 = icmp eq ptr %1, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %.0, ptr %1, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret ptr %.08
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL21uloc_kw_resetKeywordsP12UEnumerationP10UErrorCode(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

declare void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ22ulocimp_getKeywords_78St17basic_string_viewIcSt11char_traitsIcEEcbR10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_: argument 0"}
!7 = distinct !{!7, !"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ22ulocimp_getKeywords_78St17basic_string_viewIcSt11char_traitsIcEEcbR10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ26ulocimp_getKeywordValue_78PKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE3$_0vEENS_10CharStringEOT_S9_: argument 0"}
!18 = distinct !{!18, !"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ26ulocimp_getKeywordValue_78PKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE3$_0vEENS_10CharStringEOT_S9_"}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ22ulocimp_getLanguage_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_: argument 0"}
!35 = distinct !{!35, !"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ22ulocimp_getLanguage_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ20ulocimp_getScript_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_: argument 0"}
!38 = distinct !{!38, !"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ20ulocimp_getScript_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ20ulocimp_getRegion_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_: argument 0"}
!41 = distinct !{!41, !"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ20ulocimp_getRegion_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ21ulocimp_getVariant_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_: argument 0"}
!44 = distinct !{!44, !"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ21ulocimp_getVariant_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_"}
!45 = !{i8 0, i8 2}
!46 = !{}
!47 = distinct !{!47, !9}
!48 = distinct !{null}
!49 = distinct !{!49, !9}
!50 = distinct !{!50, !9}
!51 = distinct !{!51, !9}
!52 = distinct !{!52, !9}
!53 = distinct !{!53, !9}
!54 = distinct !{!54, !9}
!55 = distinct !{!55, !9}
!56 = distinct !{!56, !9}
!57 = distinct !{!57, !9, !58}
!58 = !{!"llvm.loop.peeled.count", i32 1}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_Z22ulocimp_getKeywords_78St17basic_string_viewIcSt11char_traitsIcEEcbR10UErrorCode: argument 0"}
!61 = distinct !{!61, !"_Z22ulocimp_getKeywords_78St17basic_string_viewIcSt11char_traitsIcEEcbR10UErrorCode"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ22ulocimp_getKeywords_78St17basic_string_viewIcSt11char_traitsIcEEcbR10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_: argument 0"}
!64 = distinct !{!64, !"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ22ulocimp_getKeywords_78St17basic_string_viewIcSt11char_traitsIcEEcbR10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_"}
!65 = !{!63, !60}
!66 = distinct !{null, null, ptr @_Z20ulocimp_getParent_78PKcRN6icu_788ByteSinkER10UErrorCode}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ20ulocimp_getParent_78PKcR10UErrorCodeE3$_0vEENS_10CharStringEOT_S5_: argument 0"}
!69 = distinct !{!69, !"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ20ulocimp_getParent_78PKcR10UErrorCodeE3$_0vEENS_10CharStringEOT_S5_"}
!70 = distinct !{null, null, ptr @_Z20ulocimp_getParent_78PKcRN6icu_788ByteSinkER10UErrorCode}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ18ulocimp_getName_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_: argument 0"}
!73 = distinct !{!73, !"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ18ulocimp_getName_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_"}
!74 = distinct !{!74, !9}
!75 = distinct !{!75, !9}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ22ulocimp_getBaseName_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_: argument 0"}
!78 = distinct !{!78, !"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ22ulocimp_getBaseName_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ23ulocimp_canonicalize_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_: argument 0"}
!81 = distinct !{!81, !"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ23ulocimp_canonicalize_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_Z22ulocimp_getLanguage_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode: argument 0"}
!84 = distinct !{!84, !"_Z22ulocimp_getLanguage_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ22ulocimp_getLanguage_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_: argument 0"}
!87 = distinct !{!87, !"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ22ulocimp_getLanguage_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_"}
!88 = !{!86, !83}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_Z20ulocimp_getRegion_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode: argument 0"}
!91 = distinct !{!91, !"_Z20ulocimp_getRegion_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ20ulocimp_getRegion_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_: argument 0"}
!94 = distinct !{!94, !"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ20ulocimp_getRegion_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_"}
!95 = !{!93, !90}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_Z22ulocimp_getLanguage_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode: argument 0"}
!98 = distinct !{!98, !"_Z22ulocimp_getLanguage_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ22ulocimp_getLanguage_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_: argument 0"}
!101 = distinct !{!101, !"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ22ulocimp_getLanguage_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_"}
!102 = !{!100, !97}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_Z31ulocimp_toBcpKeyWithFallback_78St17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!105 = distinct !{!105, !"_Z31ulocimp_toBcpKeyWithFallback_78St17basic_string_viewIcSt11char_traitsIcEE"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_Z32ulocimp_toBcpTypeWithFallback_78St17basic_string_viewIcSt11char_traitsIcEES2_: argument 0"}
!108 = distinct !{!108, !"_Z32ulocimp_toBcpTypeWithFallback_78St17basic_string_viewIcSt11char_traitsIcEES2_"}
!109 = distinct !{!109, !9}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_Z35ulocimp_toLegacyTypeWithFallback_78St17basic_string_viewIcSt11char_traitsIcEES2_: argument 0"}
!112 = distinct !{!112, !"_Z35ulocimp_toLegacyTypeWithFallback_78St17basic_string_viewIcSt11char_traitsIcEES2_"}
!113 = distinct !{!113, !9}
end_hunk_1
