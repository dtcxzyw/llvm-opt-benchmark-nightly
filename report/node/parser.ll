inline.NumInlined: 10290
inline.NumDeleted: 2685
begin_hunk_0_@_ZN2v88internal10ParserBaseINS0_6ParserEE9ClassInfoC2EPS3_:bb.a
_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_25ClassLiteralStaticElementEEEJRiPS1_EEEPT_DpOT0_.exit: ; preds = %bb.i, %bb.j
  %i.bg = phi i64 [ %.pre.i.i.i.i14, %bb.j ], [ %i.bd, %bb.i ] ; 2 uses
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = add i64 %i.bg, 32
  store i64 %i.bi, ptr %i.at, align 8
  store ptr %i.bh, ptr %i.ay, align 8
  store ptr %i.ay, ptr %i.ap, align 8
  %i.bj = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 6 uses
  %i.bn = load i64, ptr %i.bm, align 8            ; 2 uses
  %i.bo = sub i64 %i.bl, %i.bn
  %i.bp = icmp ult i64 %i.bo, 16
  br i1 %i.bp, label %bb.k, label %bb.l, !prof !5

bb.k:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_25ClassLiteralStaticElementEEEJRiPS1_EEEPT_DpOT0_.exit
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bj, i64 noundef 16) #19
  %.pre.i.i20 = load i64, ptr %i.bm, align 8
  br label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_25ClassLiteralStaticElementEEEJRiPS1_EEEPT_DpOT0_.exit, %bb.k
  %i.bq = phi i64 [ %.pre.i.i20, %bb.k ], [ %i.bn, %_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_25ClassLiteralStaticElementEEEJRiPS1_EEEPT_DpOT0_.exit ] ; 2 uses
  %i.br = inttoptr i64 %i.bq to ptr               ; 5 uses
  %i.bs = add i64 %i.bq, 16
  store i64 %i.bs, ptr %i.bm, align 8
  store ptr null, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 4, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i32 0, ptr %i.bu, align 4
  %i.bv = load i64, ptr %i.bk, align 8
  %i.bw = load i64, ptr %i.bm, align 8            ; 2 uses
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = icmp ult i64 %i.bx, 32
  br i1 %i.by, label %bb.m, label %_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_20ClassLiteralPropertyEEEJRiPS1_EEEPT_DpOT0_.exit21, !prof !5

bb.m:                                             ; preds = %bb.l
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bj, i64 noundef 32) #19
  %.pre.i.i.i.i19 = load i64, ptr %i.bm, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_20ClassLiteralPropertyEEEJRiPS1_EEEPT_DpOT0_.exit21

_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_20ClassLiteralPropertyEEEJRiPS1_EEEPT_DpOT0_.exit21: ; preds = %bb.l, %bb.m
  %i.bz = phi i64 [ %.pre.i.i.i.i19, %bb.m ], [ %i.bw, %bb.l ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cb = inttoptr i64 %i.bz to ptr
  %i.cc = add i64 %i.bz, 32
  store i64 %i.cc, ptr %i.bm, align 8
  store ptr %i.cb, ptr %i.br, align 8
  store ptr %i.br, ptr %i.ca, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.cd, i8 0, i64 44, i1 false)
  store i32 -1, ptr %i.ce, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 -1, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %i.cg, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 97 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = and i8 %i.cj, -32
  store i8 %i.ck, ptr %i.ci, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10ParserBaseINS0_6ParserEE21ParseClassLiteralBodyERNS3_9ClassInfoEPKNS0_12AstRawStringEiNS0_5Token5ValueE(ptr noundef nonnull align 8 dereferenceable(390) %0, ptr noundef nonnull align 8 dereferenceable(98) %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"struct.v8::internal::ParserBase<v8::internal::Parser>::ParsePropertyInfo", align 8 ; 11 uses
  %i.a = load ptr, ptr %1, align 8
  %i.b = icmp ne ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load i8, ptr %i.g, align 8               ; 2 uses
  %.not4152 = icmp eq i8 %i.h, %4
  br i1 %.not4152, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 25 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 97 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 27 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 26
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.z = phi i8 [ %i.h, %.lr.ph ], [ %i.aj, %.backedge ]
  %i.aa = phi ptr [ %i.d, %.lr.ph ], [ %i.af, %.backedge ] ; 2 uses
  switch i8 %i.z, label %bb.e [
    i8 12, label %_ZN2v88internal10ParserBaseINS0_6ParserEE5CheckENS0_5Token5ValueE.exit
    i8 105, label %bb.c
  ]

_ZN2v88internal10ParserBaseINS0_6ParserEE5CheckENS0_5Token5ValueE.exit: ; preds = %bb.b
  %i.ab = call noundef zeroext i8 @_ZN2v88internal7Scanner4NextEv(ptr noundef nonnull align 8 dereferenceable(560) %i.aa) #19 ; 0 uses
  br label %.backedge

bb.c:                                             ; preds = %bb.b
  %i.ac = call noundef zeroext i8 @_ZN2v88internal7Scanner9PeekAheadEv(ptr noundef nonnull align 8 dereferenceable(560) %i.aa) #19
  %i.ad = icmp eq i8 %i.ac, 8
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = call noundef ptr @_ZN2v88internal10ParserBaseINS0_6ParserEE21ParseClassStaticBlockEPNS3_9ClassInfoE(ptr noundef nonnull align 8 dereferenceable(390) %0, ptr noundef nonnull %1)
  call void @_ZN2v88internal6Parser19AddClassStaticBlockEPNS0_5BlockEPNS0_10ParserBaseIS1_E9ClassInfoE(ptr noundef nonnull align 8 dereferenceable(1852) %0, ptr noundef %i.ae, ptr noundef nonnull %1)
  br label %.backedge

.backedge:                                        ; preds = %bb.d, %_ZN2v88internal16FuncNameInferrer5StateD2Ev.exit, %_ZN2v88internal16FuncNameInferrer5StateD2Ev.exit, %_ZN2v88internal10ParserBaseINS0_6ParserEE5CheckENS0_5Token5ValueE.exit
  %i.af = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load i8, ptr %i.ai, align 8             ; 2 uses
  %.not41 = icmp eq i8 %i.aj, %4
  br i1 %.not41, label %._crit_edge, label %bb.b, !llvm.loop !38

bb.e:                                             ; preds = %bb.b, %bb.c
  %i.ak = load ptr, ptr %i.k, align 8
  %i.al = load ptr, ptr %i.j, align 8
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 3 uses
  %i.ap = ashr exact i64 %i.ao, 3
  %i.aq = load i64, ptr %i.l, align 8
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.l, align 8
  %i.as = load i8, ptr %i.m, align 8, !range !6, !noundef !7
  %i.at = xor i8 %i.as, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 0, ptr %i.p, align 4
  store i8 10, ptr %i.q, align 8
  store i32 0, ptr %i.r, align 1
  store i32 1, ptr %i.o, align 8
  %i.au = call noundef ptr @_ZN2v88internal10ParserBaseINS0_6ParserEE28ParseClassPropertyDefinitionEPNS3_9ClassInfoEPNS3_17ParsePropertyInfoEb(ptr noundef nonnull align 8 dereferenceable(390) %0, ptr noundef nonnull %1, ptr noundef nonnull %5, i1 noundef zeroext %i.b) ; 4 uses
  %i.av = load ptr, ptr %i.c, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load i8, ptr %i.ay, align 8, !range !6, !noundef !7
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %_ZN2v88internal16FuncNameInferrer5InferEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = load i8, ptr %i.q, align 8              ; 5 uses
  %i.bc = icmp ult i8 %i.bb, 8
  %switch.shifted = lshr i8 -57, %i.bb
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond70 = select i1 %i.bc, i1 %switch.lobit, i1 false
  br i1 %or.cond70, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.13) #20
  unreachable

switch.lookup:                                    ; preds = %bb.f
  %switch.downshift = lshr i8 71, %i.bb           ; 2 uses
  %switch.masked = trunc i8 %switch.downshift to i1 ; 2 uses
  %switch.masked66 = icmp eq i8 %i.bb, 0
  %i.bd = shl nuw nsw i8 %i.bb, 3
  %switch.shiftamt67 = zext nneg i8 %i.bd to i64
  %switch.downshift68 = lshr i64 216172782113915140, %switch.shiftamt67
  %switch.masked69 = trunc i64 %switch.downshift68 to i8
  %i.be = load i8, ptr %i.s, align 1              ; 3 uses
  %i.bf = trunc i8 %i.be to i1
  %.not = xor i1 %i.bf, true
  %i.bg = load i8, ptr %i.t, align 1, !range !6   ; 3 uses
  %i.bh = trunc nuw i8 %i.bg to i1                ; 3 uses
  %or.cond = select i1 %.not, i1 %i.bh, i1 false
  %i.bi = load i8, ptr %i.r, align 1, !range !6
  %i.bj = trunc nuw i8 %i.bi to i1                ; 2 uses
  %or.cond5 = select i1 %or.cond, i1 %i.bj, i1 false
  br i1 %or.cond5, label %bb.h, label %bb.i

bb.h:                                             ; preds = %switch.lookup
  %i.bk = or disjoint i8 %i.be, 1                 ; 2 uses
  store i8 %i.bk, ptr %i.s, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %switch.lookup
  %i.bl = phi i8 [ %i.bk, %bb.h ], [ %i.be, %switch.lookup ] ; 2 uses
  %i.bm = load i8, ptr %i.m, align 8, !range !6, !noundef !7
  %i.bn = and i8 %i.bm, %i.at
  %6 = icmp ne i8 %i.bn, 0
  %i.bo = load i8, ptr %i.u, align 2, !range !6, !noundef !7
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.j, label %bb.l, !prof !5

bb.j:                                             ; preds = %bb.i
  %i.bq = shl nuw nsw i8 %i.bg, 3
  %7 = xor i8 %i.bq, 8
  %i.br = select i1 %switch.masked, i8 %7, i8 0
  %i.bs = and i8 %switch.downshift, %i.bg
  %.not71 = icmp eq i8 %i.bs, 0
  %.mask = and i8 %i.bl, 2
  %i.bt = select i1 %.not71, i8 %.mask, i8 2
  %.masked = and i8 %i.bl, -3
  %i.bu = or i8 %.masked, %i.br
  %i.bv = or disjoint i8 %i.bu, %i.bt
  store i8 %i.bv, ptr %i.s, align 1
  %i.bw = load ptr, ptr %0, align 8
  %i.bx = call noundef ptr @_ZN2v88internal5Scope12AsClassScopeEv(ptr noundef nonnull align 8 dereferenceable(124) %i.bw) #19
  %i.by = load ptr, ptr %i.n, align 8
  %i.bz = load i8, ptr %i.t, align 1, !range !6, !noundef !7
  %i.ca = trunc nuw i8 %i.bz to i1
  call void @_ZN2v88internal6Parser25DeclarePrivateClassMemberEPNS0_10ClassScopeEPKNS0_12AstRawStringEPNS0_20ClassLiteralPropertyENS7_4KindEbPNS0_10ParserBaseIS1_E9ClassInfoE(ptr noundef nonnull align 8 dereferenceable(1852) %0, ptr noundef %i.bx, ptr noundef %i.by, ptr noundef %i.au, i8 noundef zeroext %switch.masked69, i1 noundef zeroext %i.ca, ptr noundef nonnull %1)
  %i.cb = load ptr, ptr %i.w, align 8
  %i.cc = load ptr, ptr %i.x, align 8
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZN2v88internal16FuncNameInferrer5InferEv.exit, label %bb.k, !llvm.loop !38

bb.k:                                             ; preds = %bb.j
  br label %_ZN2v88internal16FuncNameInferrer5InferEv.exit.sink.split, !llvm.loop !38

bb.l:                                             ; preds = %bb.i
  br i1 %switch.masked, label %bb.p, label %bb.m, !prof !8

bb.m:                                             ; preds = %bb.l
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ce = load i32, ptr %i.v, align 4
  %i.cf = add nsw i32 %i.ce, 1
  store i32 %i.cf, ptr %i.v, align 4
  %i.cg = load ptr, ptr %0, align 8
  %i.ch = call noundef ptr @_ZN2v88internal5Scope12AsClassScopeEv(ptr noundef nonnull align 8 dereferenceable(124) %i.cg) #19
  %.pre = load i8, ptr %i.t, align 1, !range !6
  %.pre55 = load i8, ptr %i.r, align 1, !range !6
  %.pre56 = trunc nuw i8 %.pre to i1
  %i.ci = trunc nuw i8 %.pre55 to i1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pre-phi = phi i1 [ %.pre56, %bb.n ], [ %i.bh, %bb.m ]
  %i.cj = phi i1 [ %i.ci, %bb.n ], [ false, %bb.m ]
  %.0 = phi ptr [ %i.ch, %bb.n ], [ null, %bb.m ]
  call void @_ZN2v88internal6Parser23DeclarePublicClassFieldEPNS0_10ClassScopeEPNS0_20ClassLiteralPropertyEbbPNS0_10ParserBaseIS1_E9ClassInfoE(ptr noundef nonnull align 8 dereferenceable(1852) %0, ptr noundef %.0, ptr noundef %i.au, i1 noundef zeroext %.pre-phi, i1 noundef zeroext %i.cj, ptr noundef nonnull %1)
  %i.ck = load ptr, ptr %i.w, align 8
  %i.cl = load ptr, ptr %i.x, align 8
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZN2v88internal16FuncNameInferrer5InferEv.exit, label %_ZN2v88internal16FuncNameInferrer5InferEv.exit.sink.split

bb.p:                                             ; preds = %bb.l
  br i1 %switch.masked66, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @_ZN2v88internal6Parser31AddInstanceFieldOrStaticElementEPNS0_20ClassLiteralPropertyEPNS0_10ParserBaseIS1_E9ClassInfoEb(ptr noundef nonnull align 8 dereferenceable(1852) %0, ptr noundef %i.au, ptr noundef nonnull %1, i1 noundef zeroext %i.bh)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @_ZN2v88internal6Parser24DeclarePublicClassMethodEPKNS0_12AstRawStringEPNS0_20ClassLiteralPropertyEbPNS0_10ParserBaseIS1_E9ClassInfoE(ptr noundef nonnull align 8 dereferenceable(1852) %0, ptr noundef %2, ptr noundef %i.au, i1 noundef zeroext %6, ptr noundef nonnull %1)
  %i.cn = load ptr, ptr %i.w, align 8
  %i.co = load ptr, ptr %i.x, align 8
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZN2v88internal16FuncNameInferrer5InferEv.exit, label %_ZN2v88internal16FuncNameInferrer5InferEv.exit.sink.split

_ZN2v88internal16FuncNameInferrer5InferEv.exit.sink.split: ; preds = %bb.r, %bb.o, %bb.k
  %.1.ph = phi i32 [ 2, %bb.o ], [ 2, %bb.k ], [ 0, %bb.r ]
  call void @_ZN2v88internal16FuncNameInferrer19InferFunctionsNamesEv(ptr noundef nonnull align 8 dereferenceable(128) %i.i) #19
  br label %_ZN2v88internal16FuncNameInferrer5InferEv.exit

_ZN2v88internal16FuncNameInferrer5InferEv.exit:   ; preds = %_ZN2v88internal16FuncNameInferrer5InferEv.exit.sink.split, %bb.r, %bb.o, %bb.j, %bb.e
  %.1 = phi i32 [ 1, %bb.e ], [ 2, %bb.o ], [ 0, %bb.r ], [ 2, %bb.j ], [ %.1.ph, %_ZN2v88internal16FuncNameInferrer5InferEv.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.cq = load ptr, ptr %i.y, align 8
  %i.cr = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = icmp ugt i64 %i.ao, %i.cu
  br i1 %i.cv, label %bb.s, label %_ZN2v88internal16FuncNameInferrer5StateD2Ev.exit

bb.s:                                             ; preds = %_ZN2v88internal16FuncNameInferrer5InferEv.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal16FuncNameInferrer4NameELm8ESaIS4_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 noundef %i.ap)
  %.pre.i.i = load ptr, ptr %i.j, align 8
  br label %_ZN2v88internal16FuncNameInferrer5StateD2Ev.exit

_ZN2v88internal16FuncNameInferrer5StateD2Ev.exit: ; preds = %_ZN2v88internal16FuncNameInferrer5InferEv.exit, %bb.s
  %i.cw = phi ptr [ %.pre.i.i, %bb.s ], [ %i.cr, %_ZN2v88internal16FuncNameInferrer5InferEv.exit ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.ao
  store ptr %i.cx, ptr %i.k, align 8
  %i.cy = load i64, ptr %i.l, align 8
  %i.cz = add i64 %i.cy, -1
  store i64 %i.cz, ptr %i.l, align 8
  switch i32 %.1, label %.loopexit [
    i32 0, label %.backedge
    i32 2, label %.backedge
  ]

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.lcssa = phi ptr [ %i.d, %bb.a ], [ %i.af, %.backedge ]
  %i.da = call noundef zeroext i8 @_ZN2v88internal7Scanner4NextEv(ptr noundef nonnull align 8 dereferenceable(560) %.lcssa) #19 ; 2 uses
  %.not.i = icmp eq i8 %i.da, %4
  br i1 %.not.i, label %_ZN2v88internal10ParserBaseINS0_6ParserEE6ExpectENS0_5Token5ValueE.exit, label %bb.t, !prof !8

bb.t:                                             ; preds = %._crit_edge
  call void @_ZN2v88internal10ParserBaseINS0_6ParserEE21ReportUnexpectedTokenENS0_5Token5ValueE(ptr noundef nonnull align 8 dereferenceable(390) %0, i8 noundef zeroext %i.da)
  br label %_ZN2v88internal10ParserBaseINS0_6ParserEE6ExpectENS0_5Token5ValueE.exit

_ZN2v88internal10ParserBaseINS0_6ParserEE6ExpectENS0_5Token5ValueE.exit: ; preds = %._crit_edge, %bb.t
  %i.db = load ptr, ptr %0, align 8
  %i.dc = load ptr, ptr %i.c, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 108
  store i32 %i.dg, ptr %i.dh, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN2v88internal16FuncNameInferrer5StateD2Ev.exit, %_ZN2v88internal10ParserBaseINS0_6ParserEE6ExpectENS0_5Token5ValueE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal6Parser32CreateInstanceMembersInitializerEPKNS0_12AstRawStringEPNS0_10ParserBaseIS1_E9ClassInfoE(ptr noundef nonnull align 8 dereferenceable(1852) %0, ptr noundef %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = sub i64 %i.j, %i.l
  %i.n = icmp ult i64 %i.m, 16
  br i1 %i.n, label %bb.b, label %_ZN2v88internal14AstNodeFactory34NewInitializeClassMembersStatementEPNS0_8ZoneListIPNS0_20ClassLiteralPropertyEEEi.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 noundef 16) #19
  %.pre.i.i.i = load i64, ptr %i.k, align 8
  br label %_ZN2v88internal14AstNodeFactory34NewInitializeClassMembersStatementEPNS0_8ZoneListIPNS0_20ClassLiteralPropertyEEEi.exit

_ZN2v88internal14AstNodeFactory34NewInitializeClassMembersStatementEPNS0_8ZoneListIPNS0_20ClassLiteralPropertyEEEi.exit: ; preds = %bb.a, %bb.b
  %i.o = phi i64 [ %.pre.i.i.i, %bb.b ], [ %i.l, %bb.a ] ; 2 uses
  %i.p = inttoptr i64 %i.o to ptr                 ; 4 uses
  %i.q = add i64 %i.o, 16
  store i64 %i.q, ptr %i.k, align 8
  store i32 -1, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 20, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.g, ptr %i.s, align 8
  %i.t = tail call noundef ptr @_ZN2v88internal6Parser25CreateInitializerFunctionEPKNS0_12AstRawStringEPNS0_16DeclarationScopeEiPNS0_9StatementE(ptr noundef nonnull align 8 dereferenceable(1852) %0, ptr noundef %1, ptr noundef %i.b, i32 noundef %i.d, ptr noundef nonnull %i.p)
  ret ptr %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal6Parser31CreateStaticElementsInitializerEPKNS0_12AstRawStringEPNS0_10ParserBaseIS1_E9ClassInfoE(ptr noundef nonnull align 8 dereferenceable(1852) %0, ptr noundef %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.d = load i32, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = sub i64 %i.j, %i.l
  %i.n = icmp ult i64 %i.m, 16
  br i1 %i.n, label %bb.b, label %_ZN2v88internal14AstNodeFactory41NewInitializeClassStaticElementsStatementEPNS0_8ZoneListIPNS0_25ClassLiteralStaticElementEEEi.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 noundef 16) #19
  %.pre.i.i.i = load i64, ptr %i.k, align 8
  br label %_ZN2v88internal14AstNodeFactory41NewInitializeClassStaticElementsStatementEPNS0_8ZoneListIPNS0_25ClassLiteralStaticElementEEEi.exit

_ZN2v88internal14AstNodeFactory41NewInitializeClassStaticElementsStatementEPNS0_8ZoneListIPNS0_25ClassLiteralStaticElementEEEi.exit: ; preds = %bb.a, %bb.b
  %i.o = phi i64 [ %.pre.i.i.i, %bb.b ], [ %i.l, %bb.a ] ; 2 uses
  %i.p = inttoptr i64 %i.o to ptr                 ; 4 uses
  %i.q = add i64 %i.o, 16
  store i64 %i.q, ptr %i.k, align 8
  store i32 -1, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 21, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.g, ptr %i.s, align 8
  %i.t = tail call noundef ptr @_ZN2v88internal6Parser25CreateInitializerFunctionEPKNS0_12AstRawStringEPNS0_16DeclarationScopeEiPNS0_9StatementE(ptr noundef nonnull align 8 dereferenceable(1852) %0, ptr noundef %1, ptr noundef %i.b, i32 noundef %i.d, ptr noundef nonnull %i.p)
  ret ptr %i.t
}

declare void @_ZN2v88internal16DeclarationScope34TakeUnresolvedReferencesFromParentEv(ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal22ExpressionParsingScopeINS0_11ParserTypesINS0_6ParserEEEE18ValidateExpressionEv(ptr noundef nonnull align 8 dereferenceable(73) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
end_hunk_0
