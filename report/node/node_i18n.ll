Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/node_i18n?download=true
inline.NumInlined: 1939
inline.NumDeleted: 779
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4node4i18n26RegisterExternalReferencesEPNS_25ExternalReferenceRegistryE:bb.a
_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i44: ; preds = %bb.ae, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i42
  store ptr %i.ed, ptr %i.a, align 8
  store ptr %i.eg, ptr %i.b, align 8
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.eb
  store ptr %i.ek, ptr %i.d, align 8
  br label %_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit45

_ZN4node25ExternalReferenceRegistry8RegisterEPFvRKN2v820FunctionCallbackInfoINS1_5ValueEEEE.exit45: ; preds = %bb.aa, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i44
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4node4i18nL14GetStringWidthERKN2v820FunctionCallbackInfoINS1_5ValueEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #0 {
bb.a:
  %1 = alloca %"class.node::TwoByteValue", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %.not.i44 = icmp sgt i32 %i.c, 0
  br i1 %.not.i44, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = add i64 %i.g, 648
  %i.i = inttoptr i64 %i.h to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit45

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit45

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit45: ; preds = %bb.b, %bb.c
  %.sroa.057.0 = phi ptr [ %i.k, %bb.c ], [ %i.i, %bb.b ]
  %i.l = load i64, ptr %.sroa.057.0, align 8      ; 2 uses
  %i.m = and i64 %i.l, 3
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %_ZNK2v85Value13QuickIsStringEv.exit, label %_ZNK2v85Value13QuickIsStringEv.exit.thread, !prof !27

_ZNK2v85Value13QuickIsStringEv.exit:              ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit45
  %i.o = add nsw i64 %i.l, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i16, ptr %i.s, align 2
  %i.u = icmp ult i16 %i.t, 128
  br i1 %i.u, label %bb.d, label %_ZNK2v85Value13QuickIsStringEv.exit.thread, !prof !26

_ZNK2v85Value13QuickIsStringEv.exit.thread:       ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit45, %_ZNK2v85Value13QuickIsStringEv.exit
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node4i18nL14GetStringWidthERKN2v820FunctionCallbackInfoINS1_5ValueEEEE20error_and_abort_args) #25
  tail call void @abort() #26
  unreachable

bb.d:                                             ; preds = %_ZNK2v85Value13QuickIsStringEv.exit
  %.not.i42 = icmp sgt i32 %i.c, 1
  br i1 %.not.i42, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = add i64 %i.y, 648
  %i.aa = inttoptr i64 %i.z to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit43

bb.f:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit43

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit43: ; preds = %bb.e, %bb.f
  %.sroa.056.0 = phi ptr [ %i.ad, %bb.f ], [ %i.aa, %bb.e ]
  %i.ae = tail call noundef zeroext i1 @_ZNK2v85Value10FullIsTrueEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.056.0) #25 ; 2 uses
  %i.af = load i64, ptr %i.a, align 8
  %i.ag = trunc i64 %i.af to i32
  %.not.i40 = icmp sgt i32 %i.ag, 2
  br i1 %.not.i40, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit43
  %i.ah = load ptr, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = add i64 %i.ak, 648
  %i.am = inttoptr i64 %i.al to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit41

bb.h:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit43
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit41

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit41: ; preds = %bb.g, %bb.h
  %.sroa.055.0 = phi ptr [ %i.ap, %bb.h ], [ %i.am, %bb.g ]
  %i.aq = tail call noundef zeroext i1 @_ZNK2v85Value9IsBooleanEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.055.0) #25
  br i1 %i.aq, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit41
  %i.ar = load i64, ptr %i.a, align 8
  %i.as = trunc i64 %i.ar to i32
  %.not.i38 = icmp sgt i32 %i.as, 2
  br i1 %.not.i38, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %0, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = add i64 %i.aw, 648
  %i.ay = inttoptr i64 %i.ax to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit39

bb.k:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit39

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit39: ; preds = %bb.j, %bb.k
  %.sroa.054.0 = phi ptr [ %i.bb, %bb.k ], [ %i.ay, %bb.j ]
  %i.bc = tail call noundef zeroext i1 @_ZNK2v85Value10FullIsTrueEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.054.0) #25
  %i.bd = xor i1 %i.bc, true
  br label %bb.l

bb.l:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit39, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit41
  %.not = phi i1 [ false, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit41 ], [ %i.bd, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit39 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.be = load ptr, ptr %0, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = load i64, ptr %i.a, align 8
  %i.bi = trunc i64 %i.bh to i32
  %.not.i = icmp sgt i32 %i.bi, 0
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = add i64 %i.bj, 648
  %i.bl = inttoptr i64 %i.bk to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit

bb.n:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit: ; preds = %bb.m, %bb.n
  %.sroa.053.0 = phi ptr [ %i.bn, %bb.n ], [ %i.bl, %bb.m ]
  call void @_ZN4node12TwoByteValueC1EPN2v87IsolateENS1_5LocalINS1_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(2072) %1, ptr noundef %i.bg, ptr %.sroa.053.0) #25
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8            ; 6 uses
  %i.bq = load i64, ptr %1, align 8               ; 4 uses
  %.not125 = icmp eq i64 %i.bq, 0
  br i1 %.not125, label %.outer._crit_edge.thread, label %.lr.ph.lr.ph

.outer._crit_edge.thread:                         ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit
  %i.br = load ptr, ptr %0, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  br label %bb.ap

.lr.ph.lr.ph:                                     ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit
  br i1 %.not, label %.lr.ph.us, label %.lr.ph.lr.ph.split

.lr.ph.us:                                        ; preds = %.lr.ph.lr.ph, %_ZN4node4i18nL14GetColumnWidthEib.exit.us
  %i.bt = phi i64 [ %i.cx, %_ZN4node4i18nL14GetColumnWidthEib.exit.us ], [ %i.bq, %.lr.ph.lr.ph ]
  %.0.ph104.us = phi i32 [ %i.cw, %_ZN4node4i18nL14GetColumnWidthEib.exit.us ], [ 0, %.lr.ph.lr.ph ] ; 2 uses
  %.029.ph103.us = phi i64 [ %.2.us111, %_ZN4node4i18nL14GetColumnWidthEib.exit.us ], [ 0, %.lr.ph.lr.ph ]
  %.030.ph102.us = phi i32 [ %.232.us110, %_ZN4node4i18nL14GetColumnWidthEib.exit.us ], [ 0, %.lr.ph.lr.ph ]
  br label %bb.o

bb.o:                                             ; preds = %bb.u, %.lr.ph.us
  %i.bu = phi i64 [ %i.bt, %.lr.ph.us ], [ %i.cn, %bb.u ]
  %.02999.us = phi i64 [ %.029.ph103.us, %.lr.ph.us ], [ %.2.us111, %bb.u ] ; 3 uses
  %.03098.us = phi i32 [ %.030.ph102.us, %.lr.ph.us ], [ %.232.us110, %bb.u ]
  %i.bv = add nuw i64 %.02999.us, 1               ; 4 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %.02999.us
  %i.bx = load i16, ptr %i.bw, align 2
  %i.by = zext i16 %i.bx to i32                   ; 4 uses
  %i.bz = and i32 %i.by, 64512
  %i.ca = icmp ne i32 %i.bz, 55296
  %.not35.us108 = icmp eq i64 %i.bv, %i.bu
  %or.cond97.us109 = select i1 %i.ca, i1 true, i1 %.not35.us108
  br i1 %or.cond97.us109, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.bv
  %i.cc = load i16, ptr %i.cb, align 2
  %i.cd = zext i16 %i.cc to i32                   ; 2 uses
  %i.ce = and i32 %i.cd, 64512
  %i.cf = icmp eq i32 %i.ce, 56320
  br i1 %i.cf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cg = add i64 %.02999.us, 2
  %i.ch = shl nuw nsw i32 %i.by, 10
  %i.ci = add nsw i32 %i.ch, -56613888
  %i.cj = add nuw nsw i32 %i.ci, %i.cd
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.232.us110 = phi i32 [ %i.by, %bb.o ], [ %i.cj, %bb.q ], [ %i.by, %bb.p ] ; 9 uses
  %.2.us111 = phi i64 [ %i.bv, %bb.o ], [ %i.cg, %bb.q ], [ %i.bv, %bb.p ] ; 5 uses
  %2 = icmp ne i64 %.2.us111, 0
  %i.ck = icmp eq i32 %.03098.us, 8205
  %or.cond3.us = select i1 %2, i1 %i.ck, i1 false
  br i1 %or.cond3.us, label %bb.s, label %.split.us112

bb.s:                                             ; preds = %bb.r
  %i.cl = call signext i8 @u_hasBinaryProperty_78(i32 noundef %.232.us110, i32 noundef 58) #25
  %.not36.us = icmp eq i8 %i.cl, 0
  br i1 %.not36.us, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cm = call signext i8 @u_hasBinaryProperty_78(i32 noundef %.232.us110, i32 noundef 59) #25
  %.not37.us = icmp eq i8 %i.cm, 0
  br i1 %.not37.us, label %.split.us112, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cn = load i64, ptr %1, align 8               ; 2 uses
  %i.co = icmp ult i64 %.2.us111, %i.cn
  br i1 %i.co, label %bb.o, label %.outer._crit_edge, !llvm.loop !48

.split.us112:                                     ; preds = %bb.t, %bb.r
  %i.cp = call i32 @u_getIntPropertyValue_78(i32 noundef range(i32 -56613888, 10559488) %.232.us110, i32 noundef 4100) #25
  switch i32 %i.cp, label %bb.x [
    i32 3, label %_ZN4node4i18nL14GetColumnWidthEib.exit.us
    i32 5, label %_ZN4node4i18nL14GetColumnWidthEib.exit.us
    i32 1, label %bb.v
    i32 0, label %bb.w
  ]

bb.v:                                             ; preds = %.split.us112
  br i1 %i.ae, label %_ZN4node4i18nL14GetColumnWidthEib.exit.us, label %bb.w

bb.w:                                             ; preds = %bb.v, %.split.us112
  %i.cq = call signext i8 @u_hasBinaryProperty_78(i32 noundef range(i32 -56613888, 10559488) %.232.us110, i32 noundef 58) #25
  %.not.i46.us = icmp eq i8 %i.cq, 0
  br i1 %.not.i46.us, label %bb.x, label %_ZN4node4i18nL14GetColumnWidthEib.exit.us

bb.x:                                             ; preds = %bb.w, %.split.us112
  %.not9.i.us = icmp eq i32 %.232.us110, 173
  br i1 %.not9.i.us, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cr = call signext i8 @u_charType_78(i32 noundef range(i32 -56613888, 10559488) %.232.us110) #25
  %i.cs = zext nneg i8 %i.cr to i32
  %i.ct = shl nuw i32 1, %i.cs
  %i.cu = and i32 %i.ct, 98496
  %.not10.i.us = icmp eq i32 %i.cu, 0
  br i1 %.not10.i.us, label %bb.z, label %_ZN4node4i18nL14GetColumnWidthEib.exit.us

bb.z:                                             ; preds = %bb.y
  %i.cv = call signext i8 @u_hasBinaryProperty_78(i32 noundef range(i32 -56613888, 10559488) %.232.us110, i32 noundef 59) #25
  %.not11.i.us = icmp eq i8 %i.cv, 0
  br i1 %.not11.i.us, label %bb.aa, label %_ZN4node4i18nL14GetColumnWidthEib.exit.us

bb.aa:                                            ; preds = %bb.z, %bb.x
  br label %_ZN4node4i18nL14GetColumnWidthEib.exit.us

_ZN4node4i18nL14GetColumnWidthEib.exit.us:        ; preds = %bb.aa, %bb.z, %bb.y, %bb.w, %bb.v, %.split.us112, %.split.us112
  %.1.i.us = phi i32 [ 2, %bb.w ], [ 2, %bb.v ], [ 2, %.split.us112 ], [ 2, %.split.us112 ], [ 1, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.y ]
  %i.cw = add i32 %.1.i.us, %.0.ph104.us          ; 2 uses
  %i.cx = load i64, ptr %1, align 8               ; 2 uses
  %i.cy = icmp ult i64 %.2.us111, %i.cx
  br i1 %i.cy, label %.lr.ph.us, label %.outer._crit_edge, !llvm.loop !48

.lr.ph.lr.ph.split:                               ; preds = %.lr.ph.lr.ph
  br i1 %i.ae, label %.lr.ph.us115, label %.lr.ph

.lr.ph.us115:                                     ; preds = %.lr.ph.lr.ph.split, %_ZN4node4i18nL14GetColumnWidthEib.exit.us122
  %i.cz = phi i64 [ %i.dx, %_ZN4node4i18nL14GetColumnWidthEib.exit.us122 ], [ %i.bq, %.lr.ph.lr.ph.split ]
  %.0.ph104.us116 = phi i32 [ %i.dw, %_ZN4node4i18nL14GetColumnWidthEib.exit.us122 ], [ 0, %.lr.ph.lr.ph.split ]
  %.029.ph103.us117 = phi i64 [ %.2.us.us, %_ZN4node4i18nL14GetColumnWidthEib.exit.us122 ], [ 0, %.lr.ph.lr.ph.split ] ; 3 uses
  %i.da = add nuw i64 %.029.ph103.us117, 1        ; 4 uses
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %.029.ph103.us117
  %i.dc = load i16, ptr %i.db, align 2
  %i.dd = zext i16 %i.dc to i32                   ; 4 uses
  %i.de = and i32 %i.dd, 64512
  %i.df = icmp ne i32 %i.de, 55296
  %.not35.us.us = icmp eq i64 %i.da, %i.cz
  %or.cond97.us.us = select i1 %i.df, i1 true, i1 %.not35.us.us
  br i1 %or.cond97.us.us, label %.split.us.us, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.us115
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.da
  %i.dh = load i16, ptr %i.dg, align 2
  %i.di = zext i16 %i.dh to i32                   ; 2 uses
  %i.dj = and i32 %i.di, 64512
  %i.dk = icmp eq i32 %i.dj, 56320
  br i1 %i.dk, label %bb.ac, label %.split.us.us

bb.ac:                                            ; preds = %bb.ab
  %i.dl = add i64 %.029.ph103.us117, 2
  %i.dm = shl nuw nsw i32 %i.dd, 10
  %i.dn = add nsw i32 %i.dm, -56613888
  %i.do = add nuw nsw i32 %i.dn, %i.di
  br label %.split.us.us

.split.us.us:                                     ; preds = %bb.ac, %bb.ab, %.lr.ph.us115
  %.232.us.us = phi i32 [ %i.dd, %.lr.ph.us115 ], [ %i.do, %bb.ac ], [ %i.dd, %bb.ab ] ; 5 uses
  %.2.us.us = phi i64 [ %i.da, %.lr.ph.us115 ], [ %i.dl, %bb.ac ], [ %i.da, %bb.ab ] ; 2 uses
  %i.dp = call i32 @u_getIntPropertyValue_78(i32 noundef range(i32 -56613888, 10559488) %.232.us.us, i32 noundef 4100) #25
  switch i32 %i.dp, label %bb.ae [
    i32 3, label %_ZN4node4i18nL14GetColumnWidthEib.exit.us122
    i32 5, label %_ZN4node4i18nL14GetColumnWidthEib.exit.us122
    i32 1, label %_ZN4node4i18nL14GetColumnWidthEib.exit.us122
    i32 0, label %bb.ad
  ]

bb.ad:                                            ; preds = %.split.us.us
  %i.dq = call signext i8 @u_hasBinaryProperty_78(i32 noundef range(i32 -56613888, 10559488) %.232.us.us, i32 noundef 58) #25
  %.not.i46.us118 = icmp eq i8 %i.dq, 0
  br i1 %.not.i46.us118, label %bb.ae, label %_ZN4node4i18nL14GetColumnWidthEib.exit.us122

bb.ae:                                            ; preds = %bb.ad, %.split.us.us
  %.not9.i.us119 = icmp eq i32 %.232.us.us, 173
  br i1 %.not9.i.us119, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dr = call signext i8 @u_charType_78(i32 noundef range(i32 -56613888, 10559488) %.232.us.us) #25
  %i.ds = zext nneg i8 %i.dr to i32
  %i.dt = shl nuw i32 1, %i.ds
  %i.du = and i32 %i.dt, 98496
  %.not10.i.us120 = icmp eq i32 %i.du, 0
  br i1 %.not10.i.us120, label %bb.ag, label %_ZN4node4i18nL14GetColumnWidthEib.exit.us122

bb.ag:                                            ; preds = %bb.af
  %i.dv = call signext i8 @u_hasBinaryProperty_78(i32 noundef range(i32 -56613888, 10559488) %.232.us.us, i32 noundef 59) #25
  %.not11.i.us121 = icmp eq i8 %i.dv, 0
  br i1 %.not11.i.us121, label %bb.ah, label %_ZN4node4i18nL14GetColumnWidthEib.exit.us122

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  br label %_ZN4node4i18nL14GetColumnWidthEib.exit.us122

_ZN4node4i18nL14GetColumnWidthEib.exit.us122:     ; preds = %.split.us.us, %bb.ah, %bb.ag, %bb.af, %bb.ad, %.split.us.us, %.split.us.us
  %.1.i.us123 = phi i32 [ 2, %bb.ad ], [ 0, %bb.af ], [ 2, %.split.us.us ], [ 2, %.split.us.us ], [ 1, %bb.ah ], [ 0, %bb.ag ], [ 2, %.split.us.us ]
  %i.dw = add i32 %.1.i.us123, %.0.ph104.us116    ; 2 uses
  %i.dx = load i64, ptr %1, align 8               ; 2 uses
  %i.dy = icmp ult i64 %.2.us.us, %i.dx
  br i1 %i.dy, label %.lr.ph.us115, label %.outer._crit_edge, !llvm.loop !48

.lr.ph:                                           ; preds = %.lr.ph.lr.ph.split, %_ZN4node4i18nL14GetColumnWidthEib.exit
  %i.dz = phi i64 [ %i.ex, %_ZN4node4i18nL14GetColumnWidthEib.exit ], [ %i.bq, %.lr.ph.lr.ph.split ]
  %.0.ph104 = phi i32 [ %i.ew, %_ZN4node4i18nL14GetColumnWidthEib.exit ], [ 0, %.lr.ph.lr.ph.split ]
  %.029.ph103 = phi i64 [ %.2.us, %_ZN4node4i18nL14GetColumnWidthEib.exit ], [ 0, %.lr.ph.lr.ph.split ] ; 3 uses
  %i.ea = add nuw i64 %.029.ph103, 1              ; 4 uses
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %.029.ph103
  %i.ec = load i16, ptr %i.eb, align 2
  %i.ed = zext i16 %i.ec to i32                   ; 4 uses
  %i.ee = and i32 %i.ed, 64512
  %i.ef = icmp ne i32 %i.ee, 55296
  %.not35.us = icmp eq i64 %i.ea, %i.dz
  %or.cond97.us = select i1 %i.ef, i1 true, i1 %.not35.us
  br i1 %or.cond97.us, label %.split.us, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.ea
  %i.eh = load i16, ptr %i.eg, align 2
  %i.ei = zext i16 %i.eh to i32                   ; 2 uses
  %i.ej = and i32 %i.ei, 64512
  %i.ek = icmp eq i32 %i.ej, 56320
  br i1 %i.ek, label %bb.aj, label %.split.us

bb.aj:                                            ; preds = %bb.ai
  %i.el = add i64 %.029.ph103, 2
  %i.em = shl nuw nsw i32 %i.ed, 10
  %i.en = add nsw i32 %i.em, -56613888
  %i.eo = add nuw nsw i32 %i.en, %i.ei
  br label %.split.us

.split.us:                                        ; preds = %bb.aj, %bb.ai, %.lr.ph
  %.232.us = phi i32 [ %i.ed, %.lr.ph ], [ %i.eo, %bb.aj ], [ %i.ed, %bb.ai ] ; 5 uses
  %.2.us = phi i64 [ %i.ea, %.lr.ph ], [ %i.el, %bb.aj ], [ %i.ea, %bb.ai ] ; 2 uses
  %i.ep = call i32 @u_getIntPropertyValue_78(i32 noundef range(i32 -56613888, 10559488) %.232.us, i32 noundef 4100) #25
  switch i32 %i.ep, label %bb.al [
    i32 3, label %_ZN4node4i18nL14GetColumnWidthEib.exit
    i32 5, label %_ZN4node4i18nL14GetColumnWidthEib.exit
    i32 1, label %bb.ak
    i32 0, label %bb.ak
  ]

bb.ak:                                            ; preds = %.split.us, %.split.us
  %i.eq = call signext i8 @u_hasBinaryProperty_78(i32 noundef range(i32 -56613888, 10559488) %.232.us, i32 noundef 58) #25
  %.not.i46 = icmp eq i8 %i.eq, 0
  br i1 %.not.i46, label %bb.al, label %_ZN4node4i18nL14GetColumnWidthEib.exit

bb.al:                                            ; preds = %bb.ak, %.split.us
  %.not9.i = icmp eq i32 %.232.us, 173
  br i1 %.not9.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.er = call signext i8 @u_charType_78(i32 noundef range(i32 -56613888, 10559488) %.232.us) #25
  %i.es = zext nneg i8 %i.er to i32
  %i.et = shl nuw i32 1, %i.es
  %i.eu = and i32 %i.et, 98496
  %.not10.i = icmp eq i32 %i.eu, 0
  br i1 %.not10.i, label %bb.an, label %_ZN4node4i18nL14GetColumnWidthEib.exit

bb.an:                                            ; preds = %bb.am
  %i.ev = call signext i8 @u_hasBinaryProperty_78(i32 noundef range(i32 -56613888, 10559488) %.232.us, i32 noundef 59) #25
  %.not11.i = icmp eq i8 %i.ev, 0
  br i1 %.not11.i, label %bb.ao, label %_ZN4node4i18nL14GetColumnWidthEib.exit

bb.ao:                                            ; preds = %bb.an, %bb.al
  br label %_ZN4node4i18nL14GetColumnWidthEib.exit

_ZN4node4i18nL14GetColumnWidthEib.exit:           ; preds = %.split.us, %.split.us, %bb.ak, %bb.am, %bb.an, %bb.ao
  %.1.i = phi i32 [ 2, %bb.ak ], [ 0, %bb.am ], [ 2, %.split.us ], [ 2, %.split.us ], [ 1, %bb.ao ], [ 0, %bb.an ]
  %i.ew = add i32 %.1.i, %.0.ph104                ; 2 uses
  %i.ex = load i64, ptr %1, align 8               ; 2 uses
  %i.ey = icmp ult i64 %.2.us, %i.ex
  br i1 %i.ey, label %.lr.ph, label %.outer._crit_edge, !llvm.loop !48

.outer._crit_edge:                                ; preds = %_ZN4node4i18nL14GetColumnWidthEib.exit, %_ZN4node4i18nL14GetColumnWidthEib.exit.us122, %_ZN4node4i18nL14GetColumnWidthEib.exit.us, %bb.u
  %.0.ph.lcssa = phi i32 [ %i.cw, %_ZN4node4i18nL14GetColumnWidthEib.exit.us ], [ %.0.ph104.us, %bb.u ], [ %i.dw, %_ZN4node4i18nL14GetColumnWidthEib.exit.us122 ], [ %i.ew, %_ZN4node4i18nL14GetColumnWidthEib.exit ] ; 3 uses
  %i.ez = load ptr, ptr %0, align 8               ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24 ; 2 uses
  %i.fb = icmp sgt i32 %.0.ph.lcssa, -1
  br i1 %i.fb, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.outer._crit_edge.thread, %.outer._crit_edge
  %i.fc = phi ptr [ %i.bs, %.outer._crit_edge.thread ], [ %i.fa, %.outer._crit_edge ]
  %.0.ph.lcssa144 = phi i32 [ 0, %.outer._crit_edge.thread ], [ %.0.ph.lcssa, %.outer._crit_edge ]
  %i.fd = zext nneg i32 %.0.ph.lcssa144 to i64
  %i.fe = shl nuw nsw i64 %i.fd, 32
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetEj.exit

bb.aq:                                            ; preds = %.outer._crit_edge
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = call ptr @_ZN2v87Integer15NewFromUnsignedEPNS_7IsolateEj(ptr noundef %i.fg, i32 noundef %.0.ph.lcssa) #25
  %i.fi = load i64, ptr %i.fh, align 8
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetEj.exit

_ZN2v811ReturnValueINS_5ValueEE3SetEj.exit:       ; preds = %bb.ap, %bb.aq
  %i.fj = phi ptr [ %i.fa, %bb.aq ], [ %i.fc, %bb.ap ]
  %storemerge = phi i64 [ %i.fi, %bb.aq ], [ %i.fe, %bb.ap ]
  store i64 %storemerge, ptr %i.fj, align 8
  %i.fk = load ptr, ptr %i.bo, align 8            ; 3 uses
  %i.fl = icmp ne ptr %i.fk, null
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fn = icmp ne ptr %i.fk, %i.fm
  %i.fo = select i1 %i.fl, i1 %i.fn, i1 false
  br i1 %i.fo, label %bb.ar, label %_ZN4node16MaybeStackBufferItLm1024EED2Ev.exit

bb.ar:                                            ; preds = %_ZN2v811ReturnValueINS_5ValueEE3SetEj.exit
  call void @free(ptr noundef nonnull %i.fk) #25
  br label %_ZN4node16MaybeStackBufferItLm1024EED2Ev.exit

_ZN4node16MaybeStackBufferItLm1024EED2Ev.exit:    ; preds = %_ZN2v811ReturnValueINS_5ValueEE3SetEj.exit, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4node4i18n12_GLOBAL__N_112ICUErrorNameERKN2v820FunctionCallbackInfoINS2_5ValueEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %.not.i4 = icmp sgt i32 %i.c, 0
  br i1 %.not.i4, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = add i64 %i.g, 648
  %i.i = inttoptr i64 %i.h to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit5

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit5

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit5: ; preds = %bb.b, %bb.c
  %.sroa.012.0 = phi ptr [ %i.k, %bb.c ], [ %i.i, %bb.b ]
  %i.l = tail call noundef zeroext i1 @_ZNK2v85Value7IsInt32Ev(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.012.0) #25
  br i1 %i.l, label %bb.e, label %bb.d, !prof !25

bb.d:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit5
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node4i18n12_GLOBAL__N_112ICUErrorNameERKN2v820FunctionCallbackInfoINS2_5ValueEEEE20error_and_abort_args) #25
  tail call void @abort() #26
  unreachable

bb.e:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit5
  %i.m = load i64, ptr %i.a, align 8
  %i.n = trunc i64 %i.m to i32
  %.not.i = icmp sgt i32 %i.n, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = add i64 %i.r, 648
  %i.t = inttoptr i64 %i.s to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit: ; preds = %bb.f, %bb.g
  %.sroa.011.0 = phi ptr [ %i.v, %bb.g ], [ %i.t, %bb.f ]
  %i.w = tail call noundef i32 @_ZNK2v85Int325ValueEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.011.0) #25
  %i.x = load ptr, ptr %0, align 8                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call ptr @u_errorName_78(i32 noundef %i.w) #25
  %i.ab = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.z, ptr noundef %i.aa, i32 noundef 0, i32 noundef -1) #25 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.h, label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6StringEEEvNS_5LocalIT_EE.exit, !prof !22

bb.h:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  %i.ad = load ptr, ptr %i.y, align 8
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = add i64 %i.ae, 648
  %i.ag = inttoptr i64 %i.af to ptr
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6StringEEEvNS_5LocalIT_EE.exit

_ZN2v811ReturnValueINS_5ValueEE3SetINS_6StringEEEvNS_5LocalIT_EE.exit: ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit, %bb.h
  %storemerge.in = phi ptr [ %i.ag, %bb.h ], [ %i.ab, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %storemerge = load i64, ptr %storemerge.in, align 8
  store i64 %storemerge, ptr %i.ah, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4node4i18n12_GLOBAL__N_19TranscodeERKN2v820FunctionCallbackInfoINS2_5ValueEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #0 {
_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i:
  %i.a = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"class.node::ArrayBufferViewContents", align 8 ; 5 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.d) #25 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.f = tail call noundef i32 @_ZN2v87Context29GetNumberOfEmbedderDataFieldsEv(ptr noundef nonnull align 1 dereferenceable(1) %i.e) #25 ; 0 uses
  %i.g = load i64, ptr %i.e, align 8
  %i.h = add i64 %i.g, 47
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, 271
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %i.l, align 8
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = trunc i64 %i.r to i32
  %.not.i27 = icmp sgt i32 %i.s, 0
  br i1 %.not.i27, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i
end_hunk_0
