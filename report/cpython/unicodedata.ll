inline.NumInlined: 234
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@nfc_nfkc:bb.a

bb.ad:                                            ; preds = %.lr.ph241
  %i.do = getelementptr [2 x i8], ptr %.0.i, i64 %.0123237
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !35
  %i.dq = zext i16 %i.dp to i32
  br label %PyUnicode_READ.exit169.thread

PyUnicode_READ.exit169:                           ; preds = %.lr.ph241
  %i.dr = getelementptr [4 x i8], ptr %.0.i, i64 %.0123237
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !6  ; 3 uses
  %i.dt = icmp ugt i32 %i.ds, 1114111
  br i1 %i.dt, label %_getrecord_ex.exit, label %PyUnicode_READ.exit169.thread

PyUnicode_READ.exit169.thread:                    ; preds = %bb.ad, %bb.ac, %PyUnicode_READ.exit169
  %.0.i168194 = phi i32 [ %i.ds, %PyUnicode_READ.exit169 ], [ %i.dq, %bb.ad ], [ %i.dn, %bb.ac ] ; 3 uses
  %i.du = lshr i32 %.0.i168194, 7
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr [2 x i8], ptr @index1, i64 %i.dv
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !35
  %i.dy = zext i16 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 7
  %i.ea = and i32 %.0.i168194, 127
  %i.eb = or disjoint i32 %i.dz, %i.ea
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr [2 x i8], ptr @index2, i64 %i.ec
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !35
  %i.ef = zext i16 %i.ee to i64
  br label %_getrecord_ex.exit

_getrecord_ex.exit:                               ; preds = %PyUnicode_READ.exit169, %PyUnicode_READ.exit169.thread
  %.0.i168195 = phi i32 [ %.0.i168194, %PyUnicode_READ.exit169.thread ], [ %i.ds, %PyUnicode_READ.exit169 ] ; 4 uses
  %.0.i170 = phi i64 [ %i.ef, %PyUnicode_READ.exit169.thread ], [ 0, %PyUnicode_READ.exit169 ]
  %i.eg = getelementptr [9 x i8], ptr @_PyUnicode_Database_Records, i64 %.0.i170
  %i.eh = getelementptr i8, ptr %i.eg, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !66  ; 3 uses
  %i.ej = zext i8 %i.ei to i32                    ; 2 uses
  %.not146 = icmp eq i32 %.0116239, 0
  br i1 %.not146, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %_getrecord_ex.exit
  %i.ek = icmp eq i8 %i.ei, 0
  br i1 %i.ek, label %.thread201, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not147 = icmp slt i32 %.0116239, %i.ej
  br i1 %.not147, label %bb.ag, label %bb.al, !llvm.loop !103

bb.ag:                                            ; preds = %bb.af, %_getrecord_ex.exit
  %or.cond.not27.i171 = icmp ugt i32 %.0.i168195, 767
  br i1 %or.cond.not27.i171, label %.lr.ph.i173, label %find_nfc_index.exit177.thread

bb.ah:                                            ; preds = %.lr.ph.i173
  %i.el = add i32 %.01828.i174, 1                 ; 2 uses
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr [8 x i8], ptr @nfc_last, i64 %i.em ; 2 uses
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !98 ; 2 uses
  %i.ep = add i32 %i.eo, -1
  %or.cond.not.i176 = icmp ult i32 %i.ep, %.0.i168195
  br i1 %or.cond.not.i176, label %.lr.ph.i173, label %find_nfc_index.exit177.thread, !llvm.loop !100

.lr.ph.i173:                                      ; preds = %bb.ag, %bb.ah
  %i.eq = phi i32 [ %i.eo, %bb.ah ], [ 768, %bb.ag ] ; 2 uses
  %i.er = phi ptr [ %i.en, %bb.ah ], [ @nfc_last, %bb.ag ] ; 2 uses
  %.01828.i174 = phi i32 [ %i.el, %bb.ah ], [ 0, %bb.ag ]
  %i.es = getelementptr i8, ptr %i.er, i64 4
  %i.et = load i16, ptr %i.es, align 4, !tbaa !101
  %i.eu = sext i16 %i.et to i32
  %i.ev = add i32 %i.eq, %i.eu
  %.not21.i175 = icmp ugt i32 %.0.i168195, %i.ev
  br i1 %.not21.i175, label %bb.ah, label %find_nfc_index.exit177

find_nfc_index.exit177:                           ; preds = %.lr.ph.i173
  %i.ew = sub i32 %.0.i168195, %i.eq
  %i.ex = getelementptr i8, ptr %i.er, i64 6
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !102
  %i.ez = sext i16 %i.ey to i32
  %i.fa = add i32 %i.ew, %i.ez                    ; 3 uses
  %i.fb = icmp eq i32 %i.fa, -1
  br i1 %i.fb, label %find_nfc_index.exit177.thread, label %bb.ai

find_nfc_index.exit177.thread:                    ; preds = %bb.ah, %bb.ag, %bb.ai, %find_nfc_index.exit177
  %i.fc = icmp eq i8 %i.ei, 0
  br i1 %i.fc, label %find_nfc_index.exit177.thread..thread201.loopexit210_crit_edge, label %bb.al, !llvm.loop !103

bb.ai:                                            ; preds = %find_nfc_index.exit177
  %i.fd = mul i32 %.0119238, 72
  %i.fe = add i32 %i.fa, %i.fd
  %i.ff = ashr i32 %i.fe, 2
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr [2 x i8], ptr @comp_index, i64 %i.fg
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !35
  %i.fj = zext i16 %i.fi to i32
  %i.fk = shl nuw nsw i32 %i.fj, 2
  %i.fl = and i32 %i.fa, 3
  %i.fm = or disjoint i32 %i.fk, %i.fl
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = getelementptr [4 x i8], ptr @comp_data, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !6  ; 6 uses
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %find_nfc_index.exit177.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 %i.fp, ptr %i.di, align 4, !tbaa !6
  %i.fr = add i32 %.2240, 1                       ; 4 uses
  %i.fs = sext i32 %.2240 to i64
  %i.ft = getelementptr [8 x i8], ptr %i.a, i64 %i.fs
  store i64 %.0123237, ptr %i.ft, align 8, !tbaa !76
  %or.cond.not27.i178 = icmp ugt i32 %i.fp, 59
  br i1 %or.cond.not27.i178, label %.lr.ph.i180, label %.thread201

bb.ak:                                            ; preds = %.lr.ph.i180
  %i.fu = add i32 %.01828.i181, 1                 ; 2 uses
  %i.fv = zext i32 %i.fu to i64
  %i.fw = getelementptr [8 x i8], ptr @nfc_first, i64 %i.fv ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !98 ; 2 uses
  %i.fy = add i32 %i.fx, -1
  %or.cond.not.i183 = icmp ult i32 %i.fy, %i.fp
  br i1 %or.cond.not.i183, label %.lr.ph.i180, label %.thread201, !llvm.loop !100

.lr.ph.i180:                                      ; preds = %bb.aj, %bb.ak
  %i.fz = phi i32 [ %i.fx, %bb.ak ], [ 60, %bb.aj ] ; 2 uses
  %i.ga = phi ptr [ %i.fw, %bb.ak ], [ @nfc_first, %bb.aj ] ; 2 uses
  %.01828.i181 = phi i32 [ %i.fu, %bb.ak ], [ 0, %bb.aj ]
  %i.gb = getelementptr i8, ptr %i.ga, i64 4
  %i.gc = load i16, ptr %i.gb, align 4, !tbaa !101
  %i.gd = sext i16 %i.gc to i32
  %i.ge = add i32 %i.fz, %i.gd
  %.not21.i182 = icmp ugt i32 %i.fp, %i.ge
  br i1 %.not21.i182, label %bb.ak, label %find_nfc_index.exit184

find_nfc_index.exit184:                           ; preds = %.lr.ph.i180
  %i.gf = sub i32 %i.fp, %i.fz
  %i.gg = getelementptr i8, ptr %i.ga, i64 6
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !102
  %i.gi = sext i16 %i.gh to i32
  %i.gj = add i32 %i.gf, %i.gi
  %.fr = freeze i32 %i.gj                         ; 2 uses
  %i.gk = icmp eq i32 %.fr, -1
  br i1 %i.gk, label %.thread201, label %bb.al

bb.al:                                            ; preds = %find_nfc_index.exit177.thread, %bb.af, %find_nfc_index.exit184
  %.1120 = phi i32 [ %.0119238, %bb.af ], [ %.fr, %find_nfc_index.exit184 ], [ %.0119238, %find_nfc_index.exit177.thread ]
  %.1117 = phi i32 [ %.0116239, %bb.af ], [ %.0116239, %find_nfc_index.exit184 ], [ %i.ej, %find_nfc_index.exit177.thread ]
  %.3 = phi i32 [ %.2240, %bb.af ], [ %i.fr, %find_nfc_index.exit184 ], [ %.2240, %find_nfc_index.exit177.thread ] ; 2 uses
  %.1124 = add nsw i64 %.0123237, 1               ; 2 uses
  %exitcond287.not = icmp eq i64 %.1124, %.val
  br i1 %exitcond287.not, label %.thread201, label %.lr.ph241

find_nfc_index.exit177.thread..thread201.loopexit210_crit_edge: ; preds = %find_nfc_index.exit177.thread
  br label %.thread201, !llvm.loop !103

.thread201:                                       ; preds = %bb.al, %bb.ae, %bb.aj, %find_nfc_index.exit184, %bb.ak, %find_nfc_index.exit177.thread..thread201.loopexit210_crit_edge
  %.4 = phi i32 [ %.2240, %find_nfc_index.exit177.thread..thread201.loopexit210_crit_edge ], [ %i.fr, %bb.ak ], [ %.3, %bb.al ], [ %i.fr, %bb.aj ], [ %i.fr, %find_nfc_index.exit184 ], [ %.2240, %bb.ae ]
  %i.gl = add i64 %.1122234, 1
  br label %.preheader.lr.ph.backedge

.preheader.lr.ph.backedge:                        ; preds = %.thread201, %bb.i
  %.1.ph251.be = phi i32 [ %.4, %.thread201 ], [ %i.w, %bb.i ]
  %.1122.ph250.be = phi i64 [ %i.gl, %.thread201 ], [ %.1122234, %bb.i ]
  %.1126.ph249.be = phi i64 [ %i.cz, %.thread201 ], [ %i.aa, %bb.i ]
  br label %.preheader.lr.ph, !llvm.loop !97

.outer._crit_edge:                                ; preds = %bb.i, %.backedge, %.thread201.thread, %.preheader211
  %.1122.lcssa = phi i64 [ %.1122.be, %.backedge ], [ %i.dk, %.thread201.thread ], [ 0, %.preheader211 ], [ %.1122234, %bb.i ] ; 2 uses
  %i.gm = icmp eq i64 %.1122.lcssa, %.val
  br i1 %i.gm, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.outer._crit_edge
  tail call void @PyMem_Free(ptr noundef nonnull %i.m) #10
  br label %Py_DECREF.exit150

bb.an:                                            ; preds = %.outer._crit_edge
  %i.gn = load i32, ptr %i.b, align 8, !tbaa !22  ; 2 uses
  %.not.i = icmp sgt i32 %i.gn, -1
  br i1 %.not.i, label %bb.ao, label %Py_DECREF.exit

bb.ao:                                            ; preds = %bb.an
  %i.go = add nsw i32 %i.gn, -1                   ; 2 uses
  store i32 %i.go, ptr %i.b, align 8, !tbaa !22
  %i.gp = icmp eq i32 %i.go, 0
  br i1 %i.gp, label %bb.ap, label %Py_DECREF.exit

bb.ap:                                            ; preds = %bb.ao
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.an, %bb.ao, %bb.ap
  %i.gq = tail call ptr @PyUnicode_FromKindAndData(i32 noundef 4, ptr noundef nonnull %i.m, i64 noundef %.1122.lcssa) #10
  tail call void @PyMem_Free(ptr noundef nonnull %i.m) #10
  br label %Py_DECREF.exit150

Py_DECREF.exit150:                                ; preds = %bb.g, %bb.f, %.thread, %bb.a, %Py_DECREF.exit, %bb.am
  %.0128 = phi ptr [ %i.b, %bb.am ], [ %i.gq, %Py_DECREF.exit ], [ null, %bb.a ], [ null, %.thread ], [ null, %bb.f ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.0128
}

; Function Attrs: nounwind uwtable
define internal ptr @nfd_nfkd(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i32], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val183 = load i64, ptr %i.b, align 8, !tbaa !32 ; 7 uses
  %i.c = icmp sgt i64 %.val183, 10
  %i.d = shl i64 %.val183, 1
  %i.e = icmp slt i64 %.val183, 9223372036854775798
  %i.f = add nuw nsw i64 %.val183, 10
  %spec.select = select i1 %i.e, i64 %i.f, i64 %.val183
  %.0126 = select i1 %i.c, i64 %spec.select, i64 %i.d ; 4 uses
  %i.g = icmp ugt i64 %.0126, 2305843009213693951
  br i1 %i.g, label %.loopexit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = shl nuw nsw i64 %.0126, 2
  %i.i = tail call ptr @PyMem_Malloc(i64 noundef %i.h) #10 ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.loopexit.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %1, i64 32
  %i.k = load i32, ptr %i.j, align 8              ; 3 uses
  %i.l = lshr i32 %i.k, 2
  %i.m = and i32 %i.l, 7
  %i.n = and i32 %i.k, 32
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = and i32 %i.k, 64
  %.not.i.i = icmp eq i32 %i.o, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %1, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %1, i64 56
  %.val4.i = load ptr, ptr %i.p, align 8, !tbaa !22
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %.0.i.i, %bb.d ], [ %.val4.i, %bb.e ] ; 3 uses
  %i.q = icmp sgt i64 %.val183, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_PyUnicode_DATA.exit
  %.not173 = icmp eq ptr %0, null
  %i.r = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 32
  %i.t = getelementptr i8, ptr %0, i64 24
  %i.u = icmp ne i32 %2, 0
  br label %bb.f

.loopexit282:                                     ; preds = %.loopexit281
  %exitcond.not = icmp eq i64 %i.v, %.val183
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !104

bb.f:                                             ; preds = %.lr.ph, %.loopexit282
  %.1127300 = phi i64 [ %.0126, %.lr.ph ], [ %.5131, %.loopexit282 ]
  %.0132299 = phi i64 [ %.0126, %.lr.ph ], [ %.2134, %.loopexit282 ]
  %.0136298 = phi i64 [ 0, %.lr.ph ], [ %.3139, %.loopexit282 ]
  %.0141297 = phi i64 [ 0, %.lr.ph ], [ %i.v, %.loopexit282 ] ; 4 uses
  %.0143296 = phi ptr [ %i.i, %.lr.ph ], [ %.3146, %.loopexit282 ]
  %i.v = add nuw nsw i64 %.0141297, 1             ; 2 uses
  switch i32 %i.m, label %bb.i [
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %.0.i, i64 %.0141297
  %i.x = load i8, ptr %i.w, align 1, !tbaa !22
  %i.y = zext i8 %i.x to i32
  br label %PyUnicode_READ.exit

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr [2 x i8], ptr %.0.i, i64 %.0141297
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !35
  %i.ab = zext i16 %i.aa to i32
  br label %PyUnicode_READ.exit

bb.i:                                             ; preds = %bb.f
  %i.ac = getelementptr [4 x i8], ptr %.0.i, i64 %.0141297
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !6
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.g, %bb.h, %bb.i
  %.0.i184 = phi i32 [ %i.y, %bb.g ], [ %i.ab, %bb.h ], [ %i.ad, %bb.i ]
  store i32 %.0.i184, ptr %i.a, align 16, !tbaa !6
  br label %bb.j

bb.j:                                             ; preds = %PyUnicode_READ.exit, %.loopexit281
  %.1123295 = phi i32 [ 1, %PyUnicode_READ.exit ], [ %.5, %.loopexit281 ] ; 2 uses
  %.2128294 = phi i64 [ %.1127300, %PyUnicode_READ.exit ], [ %.5131, %.loopexit281 ] ; 3 uses
  %.1133293 = phi i64 [ %.0132299, %PyUnicode_READ.exit ], [ %.2134, %.loopexit281 ] ; 2 uses
  %.1137292 = phi i64 [ %.0136298, %PyUnicode_READ.exit ], [ %.3139, %.loopexit281 ] ; 9 uses
  %.1144291 = phi ptr [ %.0143296, %PyUnicode_READ.exit ], [ %.3146, %.loopexit281 ] ; 3 uses
  %i.ae = add i32 %.1123295, -1                   ; 10 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr [4 x i8], ptr %i.a, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !6  ; 8 uses
  %i.ai = icmp slt i64 %.2128294, 3
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = add i64 %.1133293, 10                   ; 2 uses
  %i.ak = add nuw nsw i64 %.2128294, 10
  %i.al = shl i64 %i.aj, 2
  %i.am = tail call ptr @PyMem_Realloc(ptr noundef %.1144291, i64 noundef %i.al) #10 ; 2 uses
  %.not172 = icmp eq ptr %i.am, null
  br i1 %.not172, label %.thread232, label %bb.l

.thread232:                                       ; preds = %bb.k
  tail call void @PyMem_Free(ptr noundef %.1144291) #10
  br label %.loopexit.sink.split

bb.l:                                             ; preds = %bb.k, %bb.j
  %.3146 = phi ptr [ %.1144291, %bb.j ], [ %i.am, %bb.k ] ; 6 uses
  %.2134 = phi i64 [ %.1133293, %bb.j ], [ %i.aj, %bb.k ] ; 2 uses
  %.3129 = phi i64 [ %.2128294, %bb.j ], [ %i.ak, %bb.k ] ; 7 uses
  %i.an = add i32 %i.ah, -44032                   ; 2 uses
  %or.cond = icmp ult i32 %i.an, 11172
  br i1 %or.cond, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %.lhs.trunc = trunc nuw nsw i32 %i.an to i16    ; 3 uses
  %i.ao = urem i16 %.lhs.trunc, 588
  %i.ap = urem i16 %.lhs.trunc, 28                ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %.3146, i64 %.1137292
  %i.ar = add i64 %.1137292, 2                    ; 2 uses
  %i.as = insertelement <2 x i16> poison, i16 %.lhs.trunc, i64 0
  %i.at = insertelement <2 x i16> %i.as, i16 %i.ao, i64 1
  %i.au = udiv <2 x i16> %i.at, <i16 588, i16 28>
  %i.av = add nuw nsw <2 x i16> %i.au, <i16 4352, i16 4449>
  %i.aw = zext nneg <2 x i16> %i.av to <2 x i32>
  store <2 x i32> %i.aw, ptr %i.aq, align 4, !tbaa !6
  %i.ax = add nsw i64 %.3129, -2
  %.not178 = icmp eq i16 %i.ap, 0
  br i1 %.not178, label %.loopexit281, label %bb.n

bb.n:                                             ; preds = %bb.m
  %narrow280 = add nuw nsw i16 %i.ap, 4519
  %i.ay = zext nneg i16 %narrow280 to i32
  %i.az = add i64 %.1137292, 3
  %i.ba = getelementptr [4 x i8], ptr %.3146, i64 %i.ar
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !6
  %i.bb = add nsw i64 %.3129, -3
  br label %.loopexit281

bb.o:                                             ; preds = %bb.l
  br i1 %.not173, label %.thread230, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val = load ptr, ptr %i.r, align 8, !tbaa !23  ; 2 uses
  %.not.i185 = icmp eq ptr %.val, @PyModule_Type
  br i1 %.not.i185, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.p
  %i.bc = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef nonnull @PyModule_Type) #10
  %.not279 = icmp eq i32 %i.bc, 0
  br i1 %.not279, label %bb.q, label %PyObject_TypeCheck.exit.thread

bb.q:                                             ; preds = %PyObject_TypeCheck.exit
  %i.bd = load ptr, ptr %i.s, align 8, !tbaa !105
  %i.be = tail call i32 %i.bd(i32 noundef %i.ah) #10 ; 2 uses
  %.not175 = icmp eq i32 %i.be, 0
  br i1 %.not175, label %PyObject_TypeCheck.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.be, ptr %i.ag, align 4, !tbaa !6
  br label %.loopexit281

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.q, %bb.p, %PyObject_TypeCheck.exit
  %i.bf = icmp ugt i32 %i.ah, 1114111
  br i1 %i.bf, label %get_decomp_record.exit, label %bb.s

.thread230:                                       ; preds = %bb.o
  %i.bg = icmp ugt i32 %i.ah, 1114111
  br i1 %i.bg, label %get_decomp_record.exit, label %PyObject_TypeCheck.exit.thread.i

bb.s:                                             ; preds = %PyObject_TypeCheck.exit.thread
  %.val.i187 = load ptr, ptr %i.r, align 8, !tbaa !23 ; 2 uses
  %.not.i.i188 = icmp eq ptr %.val.i187, @PyModule_Type
  br i1 %.not.i.i188, label %PyObject_TypeCheck.exit.thread.i, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %bb.s
  %i.bh = tail call i32 @PyType_IsSubtype(ptr noundef %.val.i187, ptr noundef nonnull @PyModule_Type) #10
  %.not19.i = icmp eq i32 %i.bh, 0
  br i1 %.not19.i, label %bb.t, label %PyObject_TypeCheck.exit.thread.i

bb.t:                                             ; preds = %PyObject_TypeCheck.exit.i
  %i.bi = load ptr, ptr %i.t, align 8, !tbaa !52
  %i.bj = tail call ptr %i.bi(i32 noundef %i.ah) #10, !inline_history !106
  %i.bk = getelementptr i8, ptr %i.bj, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !55
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %get_decomp_record.exit, label %PyObject_TypeCheck.exit.thread.i

PyObject_TypeCheck.exit.thread.i:                 ; preds = %.thread230, %bb.t, %PyObject_TypeCheck.exit.i, %bb.s
  %i.bn = lshr i32 %i.ah, 7
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr i8, ptr @decomp_index1, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !22
  %i.br = zext i8 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 7
  %i.bt = and i32 %i.ah, 127
  %i.bu = or disjoint i32 %i.bs, %i.bt
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr [2 x i8], ptr @decomp_index2, i64 %i.bv
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !35 ; 2 uses
  %3 = zext i16 %i.bx to i32
  %i.by = zext i16 %i.bx to i64
  br label %get_decomp_record.exit

get_decomp_record.exit:                           ; preds = %bb.t, %.thread230, %PyObject_TypeCheck.exit.thread, %PyObject_TypeCheck.exit.thread.i
  %.0222 = phi i32 [ 0, %.thread230 ], [ %3, %PyObject_TypeCheck.exit.thread.i ], [ 0, %PyObject_TypeCheck.exit.thread ], [ 0, %bb.t ] ; 5 uses
  %i.bz = phi i64 [ 0, %.thread230 ], [ %i.by, %PyObject_TypeCheck.exit.thread.i ], [ 0, %PyObject_TypeCheck.exit.thread ], [ 0, %bb.t ]
  %i.ca = getelementptr [4 x i8], ptr @decomp_data, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !6  ; 3 uses
  %.not176 = icmp ult i32 %i.cb, 256
  br i1 %.not176, label %bb.v, label %bb.u

bb.u:                                             ; preds = %get_decomp_record.exit
  %4 = zext nneg i32 %.0222 to i64
  %i.cc = getelementptr [4 x i8], ptr @decomp_data, i64 %4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !6
  %i.ce = and i32 %i.cd, 255
  %i.cf = icmp eq i32 %i.ce, 0
  %or.cond4 = or i1 %i.u, %i.cf
  br i1 %or.cond4, label %.preheader.preheader, label %bb.v

.preheader.preheader:                             ; preds = %bb.u
  %i.cg = lshr i32 %i.cb, 8                       ; 2 uses
  %i.ch = zext nneg i32 %i.cg to i64              ; 6 uses
  %min.iters.check = icmp ult i32 %i.cb, 2048
  br i1 %min.iters.check, label %.preheader.preheader329, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.preheader
  %i.ci = add nsw i64 %i.ch, -1                   ; 2 uses
  %i.cj = trunc nsw i64 %i.ci to i32
  %i.ck = add i32 %i.ae, %i.cj
  %i.cl = icmp slt i32 %i.ck, %i.ae
  %i.cm = icmp ugt i64 %i.ci, 4294967295
  %i.cn = or i1 %i.cl, %i.cm
  br i1 %i.cn, label %.preheader.preheader329, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.ch, 16777208                ; 3 uses
  %i.co = and i64 %i.ch, 7
  %i.cp = trunc nuw nsw i64 %n.vec to i32
  %i.cq = add i32 %i.ae, %i.cp                    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %5 = trunc i64 %index to i32
  %6 = add i32 %i.ae, %5
  %i.cr = trunc i64 %index to i32
  %7 = sub i32 %i.cg, %i.cr
  %i.cs = add i32 %.0222, %7
  %8 = sext i32 %i.cs to i64
  %i.ct = getelementptr [4 x i8], ptr @decomp_data, i64 %8 ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 -12
  %i.cv = getelementptr i8, ptr %i.ct, i64 -28
  %wide.load = load <4 x i32>, ptr %i.cu, align 4, !tbaa !6
  %wide.load326 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !6
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse327 = shufflevector <4 x i32> %wide.load326, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.cw = sext i32 %6 to i64
  %i.cx = getelementptr [4 x i8], ptr %i.a, i64 %i.cw ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 16
  store <4 x i32> %reverse, ptr %i.cx, align 4, !tbaa !6
  store <4 x i32> %reverse327, ptr %i.cy, align 4, !tbaa !6
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ch
  br i1 %cmp.n, label %.loopexit281, label %.preheader.preheader329

.preheader.preheader329:                          ; preds = %vector.scevcheck, %.preheader.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ch, %vector.scevcheck ], [ %i.ch, %.preheader.preheader ], [ %i.co, %middle.block ] ; 5 uses
  %.4290.ph = phi i32 [ %i.ae, %vector.scevcheck ], [ %i.ae, %.preheader.preheader ], [ %i.cq, %middle.block ] ; 3 uses
  %xtraiter = and i64 %indvars.iv.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader329
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, -1
  %9 = trunc nuw nsw i64 %indvars.iv.ph to i32
  %10 = add nuw nsw i32 %.0222, %9
  %11 = zext nneg i32 %10 to i64
  %i.da = getelementptr [4 x i8], ptr @decomp_data, i64 %11
  %i.db = load i32, ptr %i.da, align 4, !tbaa !6
  %i.dc = add i32 %.4290.ph, 1                    ; 2 uses
  %i.dd = sext i32 %.4290.ph to i64
  %i.de = getelementptr [4 x i8], ptr %i.a, i64 %i.dd
  store i32 %i.db, ptr %i.de, align 4, !tbaa !6
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader329
  %.lcssa.unr = phi i32 [ poison, %.preheader.preheader329 ], [ %i.dc, %.preheader.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.preheader.preheader329 ], [ %indvars.iv.next.prol, %.preheader.prol ]
  %.4290.unr = phi i32 [ %.4290.ph, %.preheader.preheader329 ], [ %i.dc, %.preheader.prol ]
  %12 = icmp eq i64 %indvars.iv.ph, 1
  br i1 %12, label %.loopexit281, label %.preheader.preheader329.new

.preheader.preheader329.new:                      ; preds = %.preheader.prol.loopexit
  %invariant.op = add i32 -1, %.0222
  br label %.preheader

bb.v:                                             ; preds = %bb.u, %get_decomp_record.exit
  %i.df = add i64 %.1137292, 1
  %i.dg = getelementptr [4 x i8], ptr %.3146, i64 %.1137292
  store i32 %i.ah, ptr %i.dg, align 4, !tbaa !6
  %i.dh = add nsw i64 %.3129, -1
  br label %.loopexit281, !llvm.loop !108

.preheader:                                       ; preds = %.preheader, %.preheader.preheader329.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %.preheader.preheader329.new ], [ %indvars.iv.next.1, %.preheader ] ; 3 uses
  %.4290 = phi i32 [ %.4290.unr, %.preheader.preheader329.new ], [ %i.ds, %.preheader ] ; 3 uses
  %13 = trunc nsw i64 %indvars.iv to i32
  %i.di = add i32 %.0222, %13
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr [4 x i8], ptr @decomp_data, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !6
  %i.dm = add i32 %.4290, 1
  %i.dn = sext i32 %.4290 to i64
  %i.do = getelementptr [4 x i8], ptr %i.a, i64 %i.dn
  store i32 %i.dl, ptr %i.do, align 4, !tbaa !6
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %14 = trunc i64 %indvars.iv to i32
  %.reass = add i32 %14, %invariant.op
  %i.dp = sext i32 %.reass to i64
  %i.dq = getelementptr [4 x i8], ptr @decomp_data, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !6
  %i.ds = add i32 %.4290, 2                       ; 2 uses
  %i.dt = sext i32 %i.dm to i64
  %i.du = getelementptr [4 x i8], ptr %i.a, i64 %i.dt
  store i32 %i.dr, ptr %i.du, align 4, !tbaa !6
  %i.dv = icmp eq i64 %indvars.iv.next.1, 0
  br i1 %i.dv, label %.loopexit281, label %.preheader, !llvm.loop !109

.loopexit281:                                     ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block, %bb.r, %bb.m, %bb.n, %bb.v
  %.3139 = phi i64 [ %i.az, %bb.n ], [ %i.ar, %bb.m ], [ %i.df, %bb.v ], [ %.1137292, %bb.r ], [ %.1137292, %middle.block ], [ %.1137292, %.preheader ], [ %.1137292, %.preheader.prol.loopexit ] ; 3 uses
  %.5131 = phi i64 [ %i.bb, %bb.n ], [ %i.ax, %bb.m ], [ %i.dh, %bb.v ], [ %.3129, %bb.r ], [ %.3129, %middle.block ], [ %.3129, %.preheader ], [ %.3129, %.preheader.prol.loopexit ] ; 2 uses
  %.5 = phi i32 [ %i.ae, %bb.n ], [ %i.ae, %bb.m ], [ %i.ae, %bb.v ], [ %.1123295, %bb.r ], [ %i.cq, %middle.block ], [ %.lcssa.unr, %.preheader.prol.loopexit ], [ %i.ds, %.preheader ] ; 2 uses
  %.not171 = icmp eq i32 %.5, 0
  br i1 %.not171, label %.loopexit282, label %bb.j

._crit_edge:                                      ; preds = %.loopexit282, %_PyUnicode_DATA.exit
  %.0143.lcssa = phi ptr [ %i.i, %_PyUnicode_DATA.exit ], [ %.3146, %.loopexit282 ] ; 2 uses
  %.0136.lcssa = phi i64 [ 0, %_PyUnicode_DATA.exit ], [ %.3139, %.loopexit282 ]
  %i.dw = tail call ptr @PyUnicode_FromKindAndData(i32 noundef 4, ptr noundef %.0143.lcssa, i64 noundef %.0136.lcssa) #10 ; 7 uses
  tail call void @PyMem_Free(ptr noundef %.0143.lcssa) #10
  %.not168 = icmp eq ptr %i.dw, null
  br i1 %.not168, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.dx = getelementptr i8, ptr %i.dw, i64 32
  %i.dy = load i32, ptr %i.dx, align 8            ; 3 uses
  %i.dz = lshr i32 %i.dy, 2
  %i.ea = and i32 %i.dz, 7                        ; 5 uses
  %i.eb = and i32 %i.dy, 32
  %.not.i190 = icmp eq i32 %i.eb, 0
  br i1 %.not.i190, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ec = and i32 %i.dy, 64
  %.not.i.i191 = icmp eq i32 %i.ec, 0
  %.0.v.i.i192 = select i1 %.not.i.i191, i64 56, i64 40
  %.0.i.i193 = getelementptr i8, ptr %i.dw, i64 %.0.v.i.i192
  br label %_PyUnicode_DATA.exit196

bb.y:                                             ; preds = %bb.w
  %i.ed = getelementptr i8, ptr %i.dw, i64 56
  %.val4.i195 = load ptr, ptr %i.ed, align 8, !tbaa !22
  br label %_PyUnicode_DATA.exit196

_PyUnicode_DATA.exit196:                          ; preds = %bb.x, %bb.y
  %.0.i194 = phi ptr [ %.0.i.i193, %bb.x ], [ %.val4.i195, %bb.y ] ; 16 uses
  switch i32 %i.ea, label %PyUnicode_READ.exit198 [
    i32 1, label %bb.z
    i32 2, label %bb.aa
  ]

bb.z:                                             ; preds = %_PyUnicode_DATA.exit196
  %i.ee = load i8, ptr %.0.i194, align 1, !tbaa !22
  %i.ef = zext i8 %i.ee to i32
  br label %PyUnicode_READ.exit198.thread

bb.aa:                                            ; preds = %_PyUnicode_DATA.exit196
  %i.eg = load i16, ptr %.0.i194, align 2, !tbaa !35
  %i.eh = zext i16 %i.eg to i32
  br label %PyUnicode_READ.exit198.thread

PyUnicode_READ.exit198:                           ; preds = %_PyUnicode_DATA.exit196
  %i.ei = load i32, ptr %.0.i194, align 4, !tbaa !6 ; 2 uses
  %i.ej = icmp ugt i32 %i.ei, 1114111
  br i1 %i.ej, label %_getrecord_ex.exit, label %PyUnicode_READ.exit198.thread

PyUnicode_READ.exit198.thread:                    ; preds = %bb.aa, %bb.z, %PyUnicode_READ.exit198
  %.0.i197240 = phi i32 [ %i.ei, %PyUnicode_READ.exit198 ], [ %i.eh, %bb.aa ], [ %i.ef, %bb.z ] ; 2 uses
  %i.ek = lshr i32 %.0.i197240, 7
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr [2 x i8], ptr @index1, i64 %i.el
  %i.en = load i16, ptr %i.em, align 2, !tbaa !35
  %i.eo = zext i16 %i.en to i32
  %i.ep = shl nuw nsw i32 %i.eo, 7
  %i.eq = and i32 %.0.i197240, 127
  %i.er = or disjoint i32 %i.ep, %i.eq
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr [2 x i8], ptr @index2, i64 %i.es
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !35
  %i.ev = zext i16 %i.eu to i64
  br label %_getrecord_ex.exit

_getrecord_ex.exit:                               ; preds = %PyUnicode_READ.exit198, %PyUnicode_READ.exit198.thread
  %.0.i199 = phi i64 [ %i.ev, %PyUnicode_READ.exit198.thread ], [ 0, %PyUnicode_READ.exit198 ]
  %i.ew = getelementptr i8, ptr %i.dw, i64 16     ; 2 uses
  %.val182302 = load i64, ptr %i.ew, align 8, !tbaa !32 ; 2 uses
  %i.ex = icmp sgt i64 %.val182302, 1
  br i1 %i.ex, label %.lr.ph306.preheader, label %.loopexit

.lr.ph306.preheader:                              ; preds = %_getrecord_ex.exit
  %i.ey = getelementptr [9 x i8], ptr @_PyUnicode_Database_Records, i64 %.0.i199
  %i.ez = getelementptr i8, ptr %i.ey, i64 1
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !66
  br label %.lr.ph306

.lr.ph306:                                        ; preds = %.lr.ph306.preheader, %bb.al
  %.val182308 = phi i64 [ %.val182, %bb.al ], [ %.val182302, %.lr.ph306.preheader ]
  %.0120305 = phi i8 [ %.1121, %bb.al ], [ %i.fa, %.lr.ph306.preheader ] ; 2 uses
  %.1142303 = phi i64 [ %i.im, %bb.al ], [ 1, %.lr.ph306.preheader ] ; 8 uses
  switch i32 %i.ea, label %PyUnicode_READ.exit201 [
    i32 1, label %bb.ab
    i32 2, label %bb.ac
  ]

bb.ab:                                            ; preds = %.lr.ph306
  %i.fb = getelementptr i8, ptr %.0.i194, i64 %.1142303
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !22
  %i.fd = zext i8 %i.fc to i32
  br label %PyUnicode_READ.exit201.thread

bb.ac:                                            ; preds = %.lr.ph306
  %i.fe = getelementptr [2 x i8], ptr %.0.i194, i64 %.1142303
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !35
  %i.fg = zext i16 %i.ff to i32
  br label %PyUnicode_READ.exit201.thread

PyUnicode_READ.exit201:                           ; preds = %.lr.ph306
  %i.fh = getelementptr [4 x i8], ptr %.0.i194, i64 %.1142303
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !6  ; 2 uses
  %i.fj = icmp ugt i32 %i.fi, 1114111
  br i1 %i.fj, label %_getrecord_ex.exit203, label %PyUnicode_READ.exit201.thread

PyUnicode_READ.exit201.thread:                    ; preds = %bb.ac, %bb.ab, %PyUnicode_READ.exit201
  %.0.i200242 = phi i32 [ %i.fi, %PyUnicode_READ.exit201 ], [ %i.fg, %bb.ac ], [ %i.fd, %bb.ab ] ; 2 uses
  %i.fk = lshr i32 %.0.i200242, 7
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr [2 x i8], ptr @index1, i64 %i.fl
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !35
  %i.fo = zext i16 %i.fn to i32
  %i.fp = shl nuw nsw i32 %i.fo, 7
  %i.fq = and i32 %.0.i200242, 127
  %i.fr = or disjoint i32 %i.fp, %i.fq
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr [2 x i8], ptr @index2, i64 %i.fs
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !35
  %i.fv = zext i16 %i.fu to i64
  br label %_getrecord_ex.exit203

_getrecord_ex.exit203:                            ; preds = %PyUnicode_READ.exit201, %PyUnicode_READ.exit201.thread
  %.0.i202 = phi i64 [ %i.fv, %PyUnicode_READ.exit201.thread ], [ 0, %PyUnicode_READ.exit201 ]
  %i.fw = getelementptr [9 x i8], ptr @_PyUnicode_Database_Records, i64 %.0.i202
  %i.fx = getelementptr i8, ptr %i.fw, i64 1
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !66  ; 4 uses
  %i.fz = icmp ne i8 %.0120305, 0
  %i.ga = icmp ne i8 %i.fy, 0
  %or.cond7.not278 = select i1 %i.fz, i1 %i.ga, i1 false
  %.not169 = icmp ugt i8 %.0120305, %i.fy
  %or.cond179 = select i1 %or.cond7.not278, i1 %.not169, i1 false
  br i1 %or.cond179, label %bb.ad, label %bb.al

bb.ad:                                            ; preds = %_getrecord_ex.exit203
  %i.gb = add nsw i64 %.1142303, -1
  br label %bb.ae

bb.ae:                                            ; preds = %_getrecord_ex.exit212, %bb.ad
  %.4140 = phi i64 [ %i.gb, %bb.ad ], [ %i.gn, %_getrecord_ex.exit212 ] ; 6 uses
  switch i32 %i.ea, label %PyUnicode_READ.exit205 [
    i32 1, label %PyUnicode_READ.exit205.thread
    i32 2, label %PyUnicode_READ.exit205.thread246
  ]

PyUnicode_READ.exit205.thread:                    ; preds = %bb.ae
  %i.gc = getelementptr i8, ptr %.0.i194, i64 %.4140
  %i.gd = getelementptr i8, ptr %i.gc, i64 1      ; 2 uses
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !22
  %i.gf = getelementptr i8, ptr %.0.i194, i64 %.4140 ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !22
  store i8 %i.gg, ptr %i.gd, align 1, !tbaa !22
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !22
  br label %PyUnicode_WRITE.exit208

PyUnicode_READ.exit205.thread246:                 ; preds = %bb.ae
  %i.gh = getelementptr [2 x i8], ptr %.0.i194, i64 %.4140 ; 2 uses
  %i.gi = load <2 x i16>, ptr %i.gh, align 2, !tbaa !35
  %i.gj = shufflevector <2 x i16> %i.gi, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %i.gj, ptr %i.gh, align 2, !tbaa !35
  br label %PyUnicode_WRITE.exit208

PyUnicode_READ.exit205:                           ; preds = %bb.ae
  %i.gk = getelementptr [4 x i8], ptr %.0.i194, i64 %.4140 ; 2 uses
  %i.gl = load <2 x i32>, ptr %i.gk, align 4, !tbaa !6
  %i.gm = shufflevector <2 x i32> %i.gl, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.gm, ptr %i.gk, align 4, !tbaa !6
  br label %PyUnicode_WRITE.exit208

PyUnicode_WRITE.exit208:                          ; preds = %PyUnicode_READ.exit205.thread, %PyUnicode_READ.exit205.thread246, %PyUnicode_READ.exit205
  %i.gn = add nsw i64 %.4140, -1                  ; 4 uses
  %i.go = icmp slt i64 %.4140, 1
  br i1 %i.go, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %PyUnicode_WRITE.exit208
  switch i32 %i.ea, label %PyUnicode_READ.exit210 [
    i32 1, label %bb.ag
    i32 2, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.af
  %i.gp = getelementptr i8, ptr %.0.i194, i64 %i.gn
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !22
  %i.gr = zext i8 %i.gq to i32
  br label %PyUnicode_READ.exit210.thread

bb.ah:                                            ; preds = %bb.af
  %i.gs = getelementptr [2 x i8], ptr %.0.i194, i64 %i.gn
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !35
  %i.gu = zext i16 %i.gt to i32
  br label %PyUnicode_READ.exit210.thread

PyUnicode_READ.exit210:                           ; preds = %bb.af
  %i.gv = getelementptr [4 x i8], ptr %.0.i194, i64 %i.gn
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !6  ; 2 uses
  %i.gx = icmp ugt i32 %i.gw, 1114111
  br i1 %i.gx, label %_getrecord_ex.exit212, label %PyUnicode_READ.exit210.thread

PyUnicode_READ.exit210.thread:                    ; preds = %bb.ah, %bb.ag, %PyUnicode_READ.exit210
  %.0.i209265 = phi i32 [ %i.gw, %PyUnicode_READ.exit210 ], [ %i.gu, %bb.ah ], [ %i.gr, %bb.ag ] ; 2 uses
  %i.gy = lshr i32 %.0.i209265, 7
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = getelementptr [2 x i8], ptr @index1, i64 %i.gz
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !35
  %i.hc = zext i16 %i.hb to i32
  %i.hd = shl nuw nsw i32 %i.hc, 7
  %i.he = and i32 %.0.i209265, 127
  %i.hf = or disjoint i32 %i.hd, %i.he
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = getelementptr [2 x i8], ptr @index2, i64 %i.hg
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !35
  %i.hj = zext i16 %i.hi to i64
  br label %_getrecord_ex.exit212

_getrecord_ex.exit212:                            ; preds = %PyUnicode_READ.exit210, %PyUnicode_READ.exit210.thread
  %.0.i211 = phi i64 [ %i.hj, %PyUnicode_READ.exit210.thread ], [ 0, %PyUnicode_READ.exit210 ]
  %i.hk = getelementptr [9 x i8], ptr @_PyUnicode_Database_Records, i64 %.0.i211
  %i.hl = getelementptr i8, ptr %i.hk, i64 1
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !66  ; 2 uses
  %i.hn = icmp ne i8 %i.hm, 0
  %.not170 = icmp ugt i8 %i.hm, %i.fy
  %or.cond180 = select i1 %i.hn, i1 %.not170, i1 false
  br i1 %or.cond180, label %bb.ae, label %bb.ai

bb.ai:                                            ; preds = %_getrecord_ex.exit212, %PyUnicode_WRITE.exit208
  switch i32 %i.ea, label %PyUnicode_READ.exit214 [
    i32 1, label %bb.aj
    i32 2, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.ho = getelementptr i8, ptr %.0.i194, i64 %.1142303
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !22
  %i.hq = zext i8 %i.hp to i32
  br label %PyUnicode_READ.exit214.thread

bb.ak:                                            ; preds = %bb.ai
  %i.hr = getelementptr [2 x i8], ptr %.0.i194, i64 %.1142303
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !35
  %i.ht = zext i16 %i.hs to i32
  br label %PyUnicode_READ.exit214.thread

PyUnicode_READ.exit214:                           ; preds = %bb.ai
  %i.hu = getelementptr [4 x i8], ptr %.0.i194, i64 %.1142303
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !6  ; 2 uses
  %i.hw = icmp ugt i32 %i.hv, 1114111
  br i1 %i.hw, label %_getrecord_ex.exit216, label %PyUnicode_READ.exit214.thread

PyUnicode_READ.exit214.thread:                    ; preds = %bb.ak, %bb.aj, %PyUnicode_READ.exit214
  %.0.i213269 = phi i32 [ %i.hv, %PyUnicode_READ.exit214 ], [ %i.ht, %bb.ak ], [ %i.hq, %bb.aj ] ; 2 uses
  %i.hx = lshr i32 %.0.i213269, 7
  %i.hy = zext nneg i32 %i.hx to i64
  %i.hz = getelementptr [2 x i8], ptr @index1, i64 %i.hy
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !35
  %i.ib = zext i16 %i.ia to i32
  %i.ic = shl nuw nsw i32 %i.ib, 7
  %i.id = and i32 %.0.i213269, 127
  %i.ie = or disjoint i32 %i.ic, %i.id
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = getelementptr [2 x i8], ptr @index2, i64 %i.if
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !35
  %i.ii = zext i16 %i.ih to i64
  br label %_getrecord_ex.exit216

_getrecord_ex.exit216:                            ; preds = %PyUnicode_READ.exit214, %PyUnicode_READ.exit214.thread
  %.0.i215 = phi i64 [ %i.ii, %PyUnicode_READ.exit214.thread ], [ 0, %PyUnicode_READ.exit214 ]
  %i.ij = getelementptr [9 x i8], ptr @_PyUnicode_Database_Records, i64 %.0.i215
  %i.ik = getelementptr i8, ptr %i.ij, i64 1
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !66
  %.val182.pre = load i64, ptr %i.ew, align 8, !tbaa !32
  br label %bb.al

bb.al:                                            ; preds = %_getrecord_ex.exit203, %_getrecord_ex.exit216
  %.val182 = phi i64 [ %.val182.pre, %_getrecord_ex.exit216 ], [ %.val182308, %_getrecord_ex.exit203 ] ; 2 uses
  %.1121 = phi i8 [ %i.il, %_getrecord_ex.exit216 ], [ %i.fy, %_getrecord_ex.exit203 ]
  %i.im = add nuw nsw i64 %.1142303, 1            ; 2 uses
  %i.in = icmp slt i64 %i.im, %.val182
  br i1 %i.in, label %.lr.ph306, label %.loopexit, !llvm.loop !110

.loopexit.sink.split:                             ; preds = %bb.b, %bb.a, %.thread232
  %i.io = tail call ptr @PyErr_NoMemory() #10     ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.al, %.loopexit.sink.split, %_getrecord_ex.exit, %._crit_edge
  %.5153 = phi ptr [ %i.dw, %_getrecord_ex.exit ], [ null, %._crit_edge ], [ null, %.loopexit.sink.split ], [ %i.dw, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.5153
}

declare i32 @PyUnicode_Compare(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #1

declare ptr @PyErr_NoMemory() local_unnamed_addr #1

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #1

declare ptr @PyMem_Realloc(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyUnicode_FromObject(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @unicodedata_exec(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.b = tail call ptr @PyType_FromModuleAndSpec(ptr noundef %0, ptr noundef nonnull @Segment_spec, ptr noundef null) #10 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %Py_DECREF.exit23, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %.val, align 8, !tbaa !18
  %i.d = tail call ptr @PyType_FromModuleAndSpec(ptr noundef nonnull %0, ptr noundef nonnull @GraphemeBreakIterator_spec, ptr noundef null) #10 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %Py_DECREF.exit23, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %.val, i64 8
  store ptr %i.d, ptr %i.f, align 8, !tbaa !20
  %i.g = tail call i32 @PyModule_AddStringConstant(ptr noundef nonnull %0, ptr noundef nonnull @.str.553, ptr noundef nonnull @.str.554) #10
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %Py_DECREF.exit23, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @PyType_FromSpec(ptr noundef nonnull @ucd_type_spec) #10 ; 9 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %Py_DECREF.exit23, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 @PyModule_AddType(ptr noundef nonnull %0, ptr noundef nonnull %i.i) #10
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.i, align 8, !tbaa !22   ; 2 uses
  %.not.i22 = icmp sgt i32 %i.m, -1
  br i1 %.not.i22, label %bb.g, label %Py_DECREF.exit23

bb.g:                                             ; preds = %bb.f
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.i, align 8, !tbaa !22
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.h, label %Py_DECREF.exit23

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #10
  br label %Py_DECREF.exit23

bb.i:                                             ; preds = %bb.e
  %i.p = tail call ptr @_PyObject_GC_New(ptr noundef nonnull %i.i) #10 ; 6 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %new_previous_version.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr i8, ptr %i.p, i64 16
  store ptr @.str.555, ptr %i.r, align 8, !tbaa !111
  %i.s = getelementptr i8, ptr %i.p, i64 24
  store ptr @get_change_3_2_0, ptr %i.s, align 8, !tbaa !52
  %i.t = getelementptr i8, ptr %i.p, i64 32
  store ptr @normalization_3_2_0, ptr %i.t, align 8, !tbaa !105
  tail call void @PyObject_GC_Track(ptr noundef nonnull %i.p) #10
  br label %new_previous_version.exit

new_previous_version.exit:                        ; preds = %bb.i, %bb.j
  %i.u = load i32, ptr %i.i, align 8, !tbaa !22   ; 2 uses
  %.not.i = icmp sgt i32 %i.u, -1
  br i1 %.not.i, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %new_previous_version.exit
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.i, align 8, !tbaa !22
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.l, label %Py_DECREF.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %new_previous_version.exit, %bb.k, %bb.l
  %i.x = tail call i32 @PyModule_Add(ptr noundef nonnull %0, ptr noundef nonnull @.str.556, ptr noundef %i.p) #10
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %Py_DECREF.exit23, label %bb.m

bb.m:                                             ; preds = %Py_DECREF.exit
  %i.z = tail call ptr @PyMem_Malloc(i64 noundef 16) #10 ; 5 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ab = tail call ptr @PyErr_NoMemory() #10     ; 0 uses
  br label %unicodedata_create_capi.exit

bb.o:                                             ; preds = %bb.m
  store ptr @capi_getucname, ptr %i.z, align 8, !tbaa !112
  %i.ac = getelementptr i8, ptr %i.z, i64 8
  store ptr @capi_getcode, ptr %i.ac, align 8, !tbaa !114
  %i.ad = tail call ptr @PyCapsule_New(ptr noundef nonnull %i.z, ptr noundef nonnull @.str.576, ptr noundef nonnull @unicodedata_destroy_capi) #10 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.p, label %unicodedata_create_capi.exit

bb.p:                                             ; preds = %bb.o
  tail call void @PyMem_Free(ptr noundef nonnull %i.z) #10
  br label %unicodedata_create_capi.exit

unicodedata_create_capi.exit:                     ; preds = %bb.n, %bb.o, %bb.p
  %.0.i = phi ptr [ null, %bb.n ], [ null, %bb.p ], [ %i.ad, %bb.o ]
  %i.af = tail call i32 @PyModule_Add(ptr noundef nonnull %0, ptr noundef nonnull @.str.557, ptr noundef %.0.i) #10
  %.lobit = ashr i32 %i.af, 31
  br label %Py_DECREF.exit23

Py_DECREF.exit23:                                 ; preds = %bb.h, %bb.g, %bb.f, %bb.b, %bb.c, %Py_DECREF.exit, %unicodedata_create_capi.exit, %bb.d, %bb.a
  %.3 = phi i32 [ -1, %bb.a ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.d ], [ %.lobit, %unicodedata_create_capi.exit ], [ -1, %Py_DECREF.exit ], [ -1, %bb.f ], [ -1, %bb.g ], [ -1, %bb.h ]
  ret i32 %.3
}

declare ptr @PyType_FromModuleAndSpec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyModule_AddStringConstant(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyType_FromSpec(ptr noundef) local_unnamed_addr #1

declare i32 @PyModule_AddType(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal ptr @get_change_3_2_0(i32 noundef %0) #7 {
bb.a:
  %i.a = icmp ugt i32 %0, 1114111
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %0, 8
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr i8, ptr @changes_3_2_0_index, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !22
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 8
  %i.h = and i32 %0, 255
  %i.i = or disjoint i32 %i.g, %i.h
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr i8, ptr @changes_3_2_0_data, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !22
  %i.m = zext i8 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.m, %bb.b ], [ 0, %bb.a ]
  %i.n = getelementptr [16 x i8], ptr @change_records_3_2_0, i64 %.0
  ret ptr %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal range(i32 0, 136043) i32 @normalization_3_2_0(i32 noundef %0) #7 {
bb.a:
  switch i32 %0, label %bb.f [
    i32 194664, label %bb.g
    i32 194676, label %bb.b
    i32 194847, label %bb.c
    i32 194911, label %bb.d
    i32 195007, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.f ], [ 19799, %bb.e ], [ 24371, %bb.b ], [ 17323, %bb.c ], [ 31406, %bb.d ], [ 136042, %bb.a ]
  ret i32 %.0
}

declare i32 @PyModule_Add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @Segment_dealloc(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !23  ; 4 uses
  tail call void @PyObject_GC_UnTrack(ptr noundef %0) #10
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !115  ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %.not.i6 = icmp sgt i32 %i.d, -1
  br i1 %.not.i6, label %bb.b, label %Py_DECREF.exit7

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !22
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %Py_DECREF.exit7

bb.c:                                             ; preds = %bb.b
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #10
  br label %Py_DECREF.exit7

Py_DECREF.exit7:                                  ; preds = %bb.a, %bb.b, %bb.c
  %i.g = getelementptr i8, ptr %.val, i64 320
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !117
  tail call void %i.h(ptr noundef nonnull %0) #10
  %i.i = load i32, ptr %.val, align 8, !tbaa !22  ; 2 uses
  %.not.i = icmp sgt i32 %i.i, -1
  br i1 %.not.i, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %Py_DECREF.exit7
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %.val, align 8, !tbaa !22
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_DECREF.exit7, %bb.d, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @Segment_traverse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) #10 ; 2 uses
  %.not9.not = icmp eq i32 %i.c, 0
  br i1 %.not9.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ %i.c, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @Segment_str(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !118
  %i.e = getelementptr i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !119
  %i.g = tail call ptr @PyUnicode_Substring(ptr noundef %i.b, i64 noundef %i.d, i64 noundef %i.f) #10
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define internal ptr @Segment_repr(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !118
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !119
  %i.e = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.561, i64 noundef %i.b, i64 noundef %i.d) #10
  ret ptr %i.e
}

declare void @PyObject_GC_UnTrack(ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicode_Substring(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyUnicode_FromFormat(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @GBI_dealloc(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !23  ; 4 uses
  tail call void @PyObject_GC_UnTrack(ptr noundef %0) #10
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !120  ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %.not.i6 = icmp sgt i32 %i.d, -1
  br i1 %.not.i6, label %bb.b, label %Py_DECREF.exit7

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !22
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %Py_DECREF.exit7

bb.c:                                             ; preds = %bb.b
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #10
  br label %Py_DECREF.exit7

Py_DECREF.exit7:                                  ; preds = %bb.a, %bb.b, %bb.c
  %i.g = getelementptr i8, ptr %.val, i64 320
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !117
  tail call void %i.h(ptr noundef nonnull %0) #10
  %i.i = load i32, ptr %.val, align 8, !tbaa !22  ; 2 uses
  %.not.i = icmp sgt i32 %i.i, -1
  br i1 %.not.i, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %Py_DECREF.exit7
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %.val, align 8, !tbaa !22
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_DECREF.exit7, %bb.d, %bb.e
  ret void
}

declare ptr @PyObject_SelfIter(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @GBI_iternext(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !122  ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !51   ; 4 uses
  %.not.i = icmp slt i64 %i.c, %i.e
  br i1 %.not.i, label %bb.b, label %_Py_NextGraphemeBreak.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !47   ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8              ; 3 uses
  %i.i = lshr i32 %i.h, 2
  %i.j = and i32 %i.i, 7
  %i.k = and i32 %i.h, 32
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = and i32 %i.h, 64
  %.not.i.i.i = icmp eq i32 %i.l, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.f, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.f, i64 56
  %.val4.i.i = load ptr, ptr %i.m, align 8, !tbaa !22
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.c ], [ %.val4.i.i, %bb.d ] ; 3 uses
  %i.n = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %.promoted.i = load i64, ptr %i.n, align 8, !tbaa !49 ; 3 uses
  %i.o = icmp slt i64 %.promoted.i, %i.e
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_PyUnicode_DATA.exit.i
  %i.p = getelementptr i8, ptr %0, i64 52         ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 60         ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %.promoted70.i = load i32, ptr %i.p, align 4, !tbaa !123
  %.promoted71.i = load i8, ptr %i.q, align 4, !tbaa !124
  %.promoted72.i = load i32, ptr %i.r, align 8, !tbaa !125
  %.promoted73.i = load i32, ptr %i.s, align 8, !tbaa !126
  %i.t = trunc nuw i8 %.promoted71.i to i1
  br label %bb.e

bb.e:                                             ; preds = %grapheme_break.exit.thread.i, %.lr.ph.i
  %i.u = phi i32 [ %.promoted73.i, %.lr.ph.i ], [ %i.aw, %grapheme_break.exit.thread.i ] ; 8 uses
  %i.v = phi i32 [ %.promoted72.i, %.lr.ph.i ], [ %.0.i48.i, %grapheme_break.exit.thread.i ] ; 3 uses
  %i.w = phi i1 [ %i.t, %.lr.ph.i ], [ %.0.i46.i, %grapheme_break.exit.thread.i ] ; 2 uses
  %i.x = phi i32 [ %.promoted70.i, %.lr.ph.i ], [ %.0.i45.i, %grapheme_break.exit.thread.i ] ; 2 uses
  %storemerge6869.i = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %storemerge.i, %grapheme_break.exit.thread.i ] ; 8 uses
  switch i32 %i.j, label %PyUnicode_READ.exit.i [
    i32 1, label %bb.f
    i32 2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr i8, ptr %.0.i.i, i64 %storemerge6869.i
  %i.z = load i8, ptr %i.y, align 1, !tbaa !22
  %i.aa = zext i8 %i.z to i32
  br label %PyUnicode_READ.exit.thread.i

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr [2 x i8], ptr %.0.i.i, i64 %storemerge6869.i
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !35
  %i.ad = zext i16 %i.ac to i32
  br label %PyUnicode_READ.exit.thread.i

PyUnicode_READ.exit.i:                            ; preds = %bb.e
  %i.ae = getelementptr [4 x i8], ptr %.0.i.i, i64 %storemerge6869.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !6  ; 2 uses
  %i.ag = icmp ugt i32 %i.af, 1114111
  br i1 %i.ag, label %_getrecord_ex.exit.i, label %PyUnicode_READ.exit.thread.i

PyUnicode_READ.exit.thread.i:                     ; preds = %PyUnicode_READ.exit.i, %bb.g, %bb.f
  %.0.i4352.i = phi i32 [ %i.af, %PyUnicode_READ.exit.i ], [ %i.ad, %bb.g ], [ %i.aa, %bb.f ] ; 2 uses
  %i.ah = lshr i32 %.0.i4352.i, 7
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr [2 x i8], ptr @index1, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !35
  %i.al = zext i16 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 7
  %i.an = and i32 %.0.i4352.i, 127
  %i.ao = or disjoint i32 %i.am, %i.an
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr [2 x i8], ptr @index2, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !35
  %i.as = zext i16 %i.ar to i64
  br label %_getrecord_ex.exit.i

_getrecord_ex.exit.i:                             ; preds = %PyUnicode_READ.exit.thread.i, %PyUnicode_READ.exit.i
  %.0.i44.i = phi i64 [ %i.as, %PyUnicode_READ.exit.thread.i ], [ 0, %PyUnicode_READ.exit.i ] ; 5 uses
  %i.at = getelementptr [9 x i8], ptr @_PyUnicode_Database_Records, i64 %.0.i44.i ; 3 uses
  %i.au = getelementptr i8, ptr %i.at, i64 6
  %i.av = load i8, ptr %i.au, align 1, !tbaa !43  ; 6 uses
  %i.aw = zext i8 %i.av to i32                    ; 4 uses
  %i.ax = getelementptr i8, ptr %i.at, i64 8
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !46
  %.not61.i = icmp eq i8 %i.ay, 0
  br i1 %.not61.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_getrecord_ex.exit.i
  %i.az = icmp eq i32 %i.x, 2
  %i.ba = select i1 %i.az, i32 3, i32 1
  br label %update_ext_pict_state.exit.i

bb.i:                                             ; preds = %_getrecord_ex.exit.i
  %i.bb = and i32 %i.x, -3
  %or.cond.i.i = icmp eq i32 %i.bb, 1
  br i1 %or.cond.i.i, label %bb.j, label %update_ext_pict_state.exit.i

bb.j:                                             ; preds = %bb.i
  %switch.selectcmp.i.i = icmp eq i64 %.0.i44.i, 212
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 2, i32 0
  %switch.selectcmp9.i.i = icmp eq i8 %i.av, 5
  %switch.select10.i.i = select i1 %switch.selectcmp9.i.i, i32 1, i32 %switch.select.i.i
  br label %update_ext_pict_state.exit.i

update_ext_pict_state.exit.i:                     ; preds = %bb.j, %bb.i, %bb.h
  %.0.i45.i = phi i32 [ %i.ba, %bb.h ], [ %switch.select10.i.i, %bb.j ], [ 0, %bb.i ] ; 3 uses
  store i32 %.0.i45.i, ptr %i.p, align 4, !tbaa !123
  %i.bc = icmp eq i64 %.0.i44.i, 392              ; 2 uses
  %i.bd = xor i1 %i.w, true
  %.0.i46.i = and i1 %i.bc, %i.bd                 ; 2 uses
  %i.be = zext i1 %.0.i46.i to i8
  store i8 %i.be, ptr %i.q, align 4, !tbaa !124
  %i.bf = getelementptr i8, ptr %i.at, i64 7
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !45  ; 2 uses
  %i.bh = icmp eq i8 %i.bg, 2
  br i1 %i.bh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %update_ext_pict_state.exit.i
  %i.bi = icmp eq i32 %i.v, 2
  %i.bj = select i1 %i.bi, i32 3, i32 1
  br label %update_incb_state.exit.i

bb.l:                                             ; preds = %update_ext_pict_state.exit.i
  %.not.i47.i = icmp eq i32 %i.v, 0
  br i1 %.not.i47.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  switch i8 %i.bg, label %bb.o [
    i8 3, label %bb.n
    i8 1, label %update_incb_state.exit.i
  ]

bb.n:                                             ; preds = %bb.m
  %i.bk = icmp eq i32 %i.v, 2
  %i.bl = select i1 %i.bk, i32 2, i32 1
  br label %update_incb_state.exit.i

bb.o:                                             ; preds = %bb.m, %bb.l
  br label %update_incb_state.exit.i

update_incb_state.exit.i:                         ; preds = %bb.o, %bb.n, %bb.m, %bb.k
  %.0.i48.i = phi i32 [ %i.bj, %bb.k ], [ %i.bl, %bb.n ], [ 0, %bb.o ], [ 2, %bb.m ] ; 3 uses
  store i32 %.0.i48.i, ptr %i.r, align 8, !tbaa !125
  store i32 %i.aw, ptr %i.s, align 8, !tbaa !126
  %.not42.i = icmp eq i64 %storemerge6869.i, %i.c
  br i1 %.not42.i, label %grapheme_break.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %update_incb_state.exit.i
  %i.bm = icmp eq i32 %i.u, 2
  %i.bn = icmp eq i64 %.0.i44.i, 3
  %or.cond.i49.i = and i1 %i.bm, %i.bn
  br i1 %or.cond.i49.i, label %grapheme_break.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = add i32 %i.u, -2
  %or.cond5.i.i = icmp ult i32 %i.bo, 3
  br i1 %or.cond5.i.i, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = and i32 %i.aw, 254                      ; 2 uses
  %or.cond7.i.i = icmp eq i32 %i.bp, 2
  %i.bq = icmp eq i8 %i.av, 4
  %or.cond9.i.i = or i1 %i.bq, %or.cond7.i.i
  br i1 %or.cond9.i.i, label %.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = icmp eq i32 %i.u, 8
  br i1 %i.br, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %or.cond11.i.i = icmp eq i32 %i.bp, 8
  %i.bs = add i8 %i.av, -11
  %i.bt = icmp ult i8 %i.bs, 2
  %or.cond15.i.i = or i1 %i.bt, %or.cond11.i.i
  br i1 %or.cond15.i.i, label %grapheme_break.exit.thread.i, label %.thread.i.i

bb.u:                                             ; preds = %bb.s
  %i.bu = and i32 %i.u, -3
  %or.cond17.i.i = icmp eq i32 %i.bu, 9
  %i.bv = add i8 %i.av, -9
  %or.cond19.i.i = icmp ult i8 %i.bv, 2
  %or.cond57.i.i = select i1 %or.cond17.i.i, i1 %or.cond19.i.i, i1 false
  br i1 %or.cond57.i.i, label %grapheme_break.exit.thread.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.u, %bb.t
  %i.bw = icmp eq i32 %i.u, 12
  %i.bx = icmp eq i32 %i.u, 10
  %or.cond21.i.i = or i1 %i.bw, %i.bx
  %i.by = and i64 %.0.i44.i, 65534
  %i.bz = icmp eq i64 %i.by, 190
  %or.cond23.i.i = and i1 %or.cond21.i.i, %i.bz
  %i.ca = and i32 %i.aw, 247
  %or.cond25.i.i = icmp eq i32 %i.ca, 5
  %or.cond59.i.i = or i1 %or.cond23.i.i, %or.cond25.i.i
  %i.cb = icmp eq i8 %i.av, 7
  %or.cond60.i.i = or i1 %i.cb, %or.cond59.i.i
  %i.cc = icmp eq i32 %i.u, 1
  %or.cond61.i.i = or i1 %i.cc, %or.cond60.i.i
  %i.cd = icmp eq i32 %.0.i48.i, 3
  %or.cond62.i.i = or i1 %or.cond61.i.i, %i.cd
  %i.ce = icmp eq i32 %.0.i45.i, 3
  %or.cond63.i.i = or i1 %i.ce, %or.cond62.i.i
  br i1 %or.cond63.i.i, label %grapheme_break.exit.thread.i, label %grapheme_break.exit.i

grapheme_break.exit.i:                            ; preds = %.thread.i.i
  %i.cf = icmp eq i32 %i.u, 6
  %or.cond58.not.i.not64.i = and i1 %i.cf, %i.bc
  %spec.select.i.not.i = and i1 %i.w, %or.cond58.not.i.not64.i
  br i1 %spec.select.i.not.i, label %grapheme_break.exit.thread.i, label %.thread.i

.thread.i:                                        ; preds = %grapheme_break.exit.i, %bb.r, %bb.q
  store i64 %storemerge6869.i, ptr %i.b, align 8, !tbaa !50
  %storemerge60.i = add nsw i64 %storemerge6869.i, 1
  store i64 %storemerge60.i, ptr %i.n, align 8, !tbaa !49
  br label %_Py_NextGraphemeBreak.exit

grapheme_break.exit.thread.i:                     ; preds = %grapheme_break.exit.i, %.thread.i.i, %bb.u, %bb.t, %bb.p, %update_incb_state.exit.i
  %storemerge.i = add i64 %storemerge6869.i, 1    ; 3 uses
  store i64 %storemerge.i, ptr %i.n, align 8, !tbaa !49
  %exitcond.not.i = icmp eq i64 %storemerge.i, %i.e
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !127

._crit_edge.i:                                    ; preds = %grapheme_break.exit.thread.i, %_PyUnicode_DATA.exit.i
  %.lcssa.i = phi i64 [ %.promoted.i, %_PyUnicode_DATA.exit.i ], [ %i.e, %grapheme_break.exit.thread.i ] ; 2 uses
  store i64 %.lcssa.i, ptr %i.b, align 8, !tbaa !50
  br label %_Py_NextGraphemeBreak.exit

_Py_NextGraphemeBreak.exit:                       ; preds = %.thread.i, %._crit_edge.i
  %.3.i = phi i64 [ %.lcssa.i, %._crit_edge.i ], [ %storemerge6869.i, %.thread.i ] ; 2 uses
  %i.cg = icmp slt i64 %.3.i, 0
  br i1 %i.cg, label %_Py_NextGraphemeBreak.exit.thread, label %bb.v

bb.v:                                             ; preds = %_Py_NextGraphemeBreak.exit
  %i.ch = getelementptr i8, ptr %0, i64 8
  %.val18 = load ptr, ptr %i.ch, align 8, !tbaa !23
  %i.ci = tail call ptr @PyType_GetModule(ptr noundef %.val18) #10
  %i.cj = getelementptr i8, ptr %i.ci, i64 24
  %.val = load ptr, ptr %i.cj, align 8, !tbaa !10
  %i.ck = load ptr, ptr %.val, align 8, !tbaa !18
  %i.cl = tail call ptr @_PyObject_GC_New(ptr noundef %i.ck) #10 ; 6 uses
  %.not = icmp eq ptr %i.cl, null
  br i1 %.not, label %_Py_NextGraphemeBreak.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !120 ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !22 ; 2 uses
  %i.co = icmp ugt i32 %i.cn, -1073741825
  br i1 %i.co, label %_Py_NewRef.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = add nuw i32 %i.cn, 1
  store i32 %i.cp, ptr %i.cm, align 8, !tbaa !22
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.w, %bb.x
  %i.cq = getelementptr i8, ptr %i.cl, i64 16
  store ptr %i.cm, ptr %i.cq, align 8, !tbaa !115
  %i.cr = getelementptr i8, ptr %i.cl, i64 24
  store i64 %i.c, ptr %i.cr, align 8, !tbaa !118
  %i.cs = getelementptr i8, ptr %i.cl, i64 32
  store i64 %.3.i, ptr %i.cs, align 8, !tbaa !119
  tail call void @PyObject_GC_Track(ptr noundef nonnull %i.cl) #10
  br label %_Py_NextGraphemeBreak.exit.thread

_Py_NextGraphemeBreak.exit.thread:                ; preds = %bb.a, %_Py_NewRef.exit, %bb.v, %_Py_NextGraphemeBreak.exit
  %.1 = phi ptr [ null, %_Py_NextGraphemeBreak.exit ], [ %i.cl, %_Py_NewRef.exit ], [ null, %bb.v ], [ null, %bb.a ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal i32 @GBI_traverse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) #10 ; 2 uses
  %.not9.not = icmp eq i32 %i.c, 0
  br i1 %.not9.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ %i.c, %bb.b ]
  ret i32 %.1
}

declare ptr @PyType_GetModule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @ucd_dealloc(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !23  ; 3 uses
  tail call void @PyObject_GC_UnTrack(ptr noundef %0) #10
  tail call void @PyObject_GC_Del(ptr noundef %0) #10
  %i.b = load i32, ptr %.val, align 8, !tbaa !22  ; 2 uses
  %.not.i = icmp sgt i32 %i.b, -1
  br i1 %.not.i, label %bb.b, label %Py_DECREF.exit

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %i.b, -1                     ; 2 uses
  store i32 %i.c, ptr %.val, align 8, !tbaa !22
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

declare i32 @_PyObject_VisitType(ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @PyObject_GenericGetAttr(ptr noundef, ptr noundef) #1

declare void @PyObject_GC_Del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @capi_getucname(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call fastcc i32 @_getucname(ptr noundef null, i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @capi_getcode(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call fastcc i32 @_getcode(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %_check_alias_and_seq.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %3, 0
  %.pre.i = load i32, ptr %2, align 4, !tbaa !6   ; 3 uses
  %i.b = add i32 %.pre.i, -983552
  %or.cond.i = icmp ult i32 %i.b, 461
  %or.cond10.i = select i1 %.not.i, i1 %or.cond.i, i1 false
  br i1 %or.cond10.i, label %_check_alias_and_seq.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = add i32 %.pre.i, -983040
  %or.cond9.i = icmp ult i32 %i.c, 481
  br i1 %or.cond9.i, label %bb.d, label %_check_alias_and_seq.exit

bb.d:                                             ; preds = %bb.c
  %i.d = zext nneg i32 %.pre.i to i64
  %i.e = getelementptr [4 x i8], ptr @name_aliases, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -3932160
  %i.g = load i32, ptr %i.f, align 4, !tbaa !6
  store i32 %i.g, ptr %2, align 4, !tbaa !6
  br label %_check_alias_and_seq.exit

_check_alias_and_seq.exit:                        ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.d ], [ 1, %bb.c ]
  ret i32 %.0
}

declare ptr @PyCapsule_New(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @unicodedata_destroy_capi(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @PyCapsule_GetPointer(ptr noundef %0, ptr noundef nonnull @.str.576) #10
  tail call void @PyMem_Free(ptr noundef %i.a) #10
  ret void
}

declare ptr @PyCapsule_GetPointer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !14, i64 24}
!11 = !{!"", !12, i64 0, !15, i64 16, !14, i64 24, !15, i64 32, !15, i64 40, !16, i64 48, !17, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96}
!12 = !{!"_object", !8, i64 0, !13, i64 8}
!13 = !{!"p1 _ZTS11_typeobject", !14, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"p1 _ZTS7_object", !14, i64 0}
!16 = !{!"_Bool", !8, i64 0}
!17 = !{!"long", !8, i64 0}
!18 = !{!19, !15, i64 0}
!19 = !{!"", !15, i64 0, !15, i64 8}
!20 = !{!19, !15, i64 8}
!21 = !{!15, !15, i64 0}
!22 = !{!8, !8, i64 0}
!23 = !{!12, !13, i64 8}
!24 = !{!25, !17, i64 168}
!25 = !{!"_typeobject", !26, i64 0, !27, i64 24, !17, i64 32, !17, i64 40, !14, i64 48, !17, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !17, i64 168, !27, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !17, i64 208, !14, i64 216, !14, i64 224, !28, i64 232, !29, i64 240, !30, i64 248, !13, i64 256, !15, i64 264, !14, i64 272, !14, i64 280, !17, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !15, i64 336, !15, i64 344, !15, i64 352, !14, i64 360, !15, i64 368, !14, i64 376, !7, i64 384, !14, i64 392, !14, i64 400, !8, i64 408, !31, i64 410}
!26 = !{!"PyVarObject", !12, i64 0, !17, i64 16}
!27 = !{!"p1 omnipotent char", !14, i64 0}
!28 = !{!"p1 _ZTS11PyMethodDef", !14, i64 0}
!29 = !{!"p1 _ZTS11PyMemberDef", !14, i64 0}
!30 = !{!"p1 _ZTS11PyGetSetDef", !14, i64 0}
!31 = !{!"short", !8, i64 0}
!32 = !{!33, !17, i64 16}
!33 = !{!"", !12, i64 0, !17, i64 16, !17, i64 24, !34, i64 32}
!34 = !{!"_PyUnicodeObject_state", !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0}
!35 = !{!31, !31, i64 0}
!36 = !{!37, !7, i64 0}
!37 = !{!"", !7, i64 0, !7, i64 4, !31, i64 8}
!38 = !{!37, !7, i64 4}
!39 = !{!37, !31, i64 8}
!40 = !{!27, !27, i64 0}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!44, !8, i64 6}
!44 = !{!"", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!45 = !{!44, !8, i64 7}
!46 = !{!44, !8, i64 8}
!47 = !{!48, !15, i64 0}
!48 = !{!"", !15, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !16, i64 44}
!49 = !{!48, !17, i64 16}
!50 = !{!48, !17, i64 8}
!51 = !{!48, !17, i64 24}
!52 = !{!53, !14, i64 24}
!53 = !{!"previous_version", !12, i64 0, !27, i64 16, !14, i64 24, !14, i64 32}
!54 = distinct !{null}
!55 = !{!56, !8, i64 1}
!56 = !{!"change_record", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !57, i64 8}
!57 = !{!"double", !8, i64 0}
!58 = !{!56, !8, i64 2}
!59 = distinct !{null}
!60 = !{!56, !57, i64 8}
!61 = !{!44, !8, i64 0}
!62 = distinct !{null}
!63 = !{!44, !8, i64 2}
!64 = distinct !{null}
!65 = !{!56, !8, i64 0}
!66 = !{!44, !8, i64 1}
!67 = distinct !{null}
!68 = !{!44, !8, i64 3}
!69 = distinct !{null}
!70 = !{!56, !8, i64 3}
!71 = !{!44, !8, i64 4}
!72 = distinct !{null}
!73 = !{!56, !8, i64 4}
!74 = distinct !{null}
!75 = distinct !{!75, !42}
!76 = !{!17, !17, i64 0}
!77 = !{!78, !7, i64 0}
!78 = !{!"NamedSequence", !7, i64 0, !8, i64 4}
!79 = !{!44, !8, i64 5}
!80 = distinct !{!80, !42}
!81 = !{ptr @nfc_nfkc, ptr @nfd_nfkd}
!82 = distinct !{null}
!83 = !{!"branch_weights", i32 8, i32 24}
!84 = distinct !{!84, !42, !85, !86}
!85 = !{!"llvm.loop.isvectorized", i32 1}
!86 = !{!"llvm.loop.unroll.runtime.disable"}
!87 = distinct !{!87, !88}
!88 = !{!"llvm.loop.unroll.disable"}
!89 = distinct !{!89, !42, !85}
!90 = !{!91, !7, i64 8}
!91 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8}
!92 = distinct !{!92, !42}
!93 = distinct !{!93, !42}
!94 = distinct !{!94, !42}
!95 = distinct !{!95, !42}
!96 = distinct !{!96, !42}
!97 = distinct !{!97, !42}
!98 = !{!99, !7, i64 0}
!99 = !{!"reindex", !7, i64 0, !31, i64 4, !31, i64 6}
!100 = distinct !{!100, !42}
!101 = !{!99, !31, i64 4}
!102 = !{!99, !31, i64 6}
!103 = distinct !{!103, !42}
!104 = distinct !{!104, !42}
!105 = !{!53, !14, i64 32}
!106 = distinct !{null}
!107 = distinct !{!107, !42, !85, !86}
!108 = distinct !{!108, !42}
!109 = distinct !{!109, !42, !85}
!110 = distinct !{!110, !42}
!111 = !{!53, !27, i64 16}
!112 = !{!113, !14, i64 0}
!113 = !{!"", !14, i64 0, !14, i64 8}
!114 = !{!113, !14, i64 8}
!115 = !{!116, !15, i64 16}
!116 = !{!"", !12, i64 0, !15, i64 16, !17, i64 24, !17, i64 32}
!117 = !{!25, !14, i64 320}
!118 = !{!116, !17, i64 24}
!119 = !{!116, !17, i64 32}
!120 = !{!121, !15, i64 16}
!121 = !{!"", !12, i64 0, !48, i64 16}
!122 = !{!121, !17, i64 24}
!123 = !{!48, !7, i64 36}
!124 = !{!48, !16, i64 44}
!125 = !{!48, !7, i64 40}
!126 = !{!48, !7, i64 32}
!127 = distinct !{!127, !42}
end_hunk_0
