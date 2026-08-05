inline.NumInlined: 234
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@nfc_nfkc:bb.a
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
  %.1128 = phi i32 [ %.0127237, %bb.af ], [ %.fr, %find_nfc_index.exit184 ], [ %.0127237, %find_nfc_index.exit177.thread ]
  %.1123 = phi i32 [ %.0122238, %bb.af ], [ %.0122238, %find_nfc_index.exit184 ], [ %i.ej, %find_nfc_index.exit177.thread ]
  %.3 = phi i32 [ %.2120239, %bb.af ], [ %i.fr, %find_nfc_index.exit184 ], [ %.2120239, %find_nfc_index.exit177.thread ] ; 2 uses
  %.1116 = add nsw i64 %.0115240, 1               ; 2 uses
  %exitcond287.not = icmp eq i64 %.1116, %.val
  br i1 %exitcond287.not, label %.thread201, label %.lr.ph241

find_nfc_index.exit177.thread..thread201.loopexit210_crit_edge: ; preds = %find_nfc_index.exit177.thread
  br label %.thread201, !llvm.loop !103

.thread201:                                       ; preds = %bb.al, %bb.ae, %bb.aj, %find_nfc_index.exit184, %bb.ak, %find_nfc_index.exit177.thread..thread201.loopexit210_crit_edge
  %.4 = phi i32 [ %.2120239, %find_nfc_index.exit177.thread..thread201.loopexit210_crit_edge ], [ %i.fr, %bb.ak ], [ %.3, %bb.al ], [ %i.fr, %bb.aj ], [ %i.fr, %find_nfc_index.exit184 ], [ %.2120239, %bb.ae ]
  %i.gl = add i64 %.1125233, 1
  br label %.preheader.lr.ph.backedge

.preheader.lr.ph.backedge:                        ; preds = %.thread201, %bb.i
  %.1.ph251.be = phi i64 [ %i.cz, %.thread201 ], [ %i.aa, %bb.i ]
  %.1119.ph250.be = phi i32 [ %.4, %.thread201 ], [ %i.w, %bb.i ]
  %.1125.ph249.be = phi i64 [ %i.gl, %.thread201 ], [ %.1125233, %bb.i ]
  br label %.preheader.lr.ph, !llvm.loop !97

.outer._crit_edge:                                ; preds = %bb.i, %.backedge, %.thread201.thread, %.preheader211
  %.1125.lcssa = phi i64 [ %.1125.be, %.backedge ], [ %i.dk, %.thread201.thread ], [ 0, %.preheader211 ], [ %.1125233, %bb.i ] ; 2 uses
  %i.gm = icmp eq i64 %.1125.lcssa, %.val
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
  %i.gq = tail call ptr @PyUnicode_FromKindAndData(i32 noundef 4, ptr noundef nonnull %i.m, i64 noundef %.1125.lcssa) #10
  tail call void @PyMem_Free(ptr noundef nonnull %i.m) #10
  br label %Py_DECREF.exit150

Py_DECREF.exit150:                                ; preds = %bb.g, %bb.f, %.thread, %bb.a, %Py_DECREF.exit, %bb.am
  %.0 = phi ptr [ %i.b, %bb.am ], [ %i.gq, %Py_DECREF.exit ], [ null, %bb.a ], [ null, %.thread ], [ null, %bb.f ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.0
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
  %.0140 = select i1 %i.c, i64 %spec.select, i64 %i.d ; 4 uses
  %i.g = icmp ugt i64 %.0140, 2305843009213693951
  br i1 %i.g, label %.loopexit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = shl nuw nsw i64 %.0140, 2
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
  %.0120300 = phi ptr [ %i.i, %.lr.ph ], [ %.3123, %.loopexit282 ]
  %.0125299 = phi i64 [ 0, %.lr.ph ], [ %i.v, %.loopexit282 ] ; 4 uses
  %.0127298 = phi i64 [ 0, %.lr.ph ], [ %.3130, %.loopexit282 ]
  %.0132297 = phi i64 [ %.0140, %.lr.ph ], [ %.2134, %.loopexit282 ]
  %.1141296 = phi i64 [ %.0140, %.lr.ph ], [ %.5145, %.loopexit282 ]
  %i.v = add nuw nsw i64 %.0125299, 1             ; 2 uses
  switch i32 %i.m, label %bb.i [
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %.0.i, i64 %.0125299
  %i.x = load i8, ptr %i.w, align 1, !tbaa !22
  %i.y = zext i8 %i.x to i32
  br label %PyUnicode_READ.exit

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr [2 x i8], ptr %.0.i, i64 %.0125299
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !35
  %i.ab = zext i16 %i.aa to i32
  br label %PyUnicode_READ.exit

bb.i:                                             ; preds = %bb.f
  %i.ac = getelementptr [4 x i8], ptr %.0.i, i64 %.0125299
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !6
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.g, %bb.h, %bb.i
  %.0.i184 = phi i32 [ %i.y, %bb.g ], [ %i.ab, %bb.h ], [ %i.ad, %bb.i ]
  store i32 %.0.i184, ptr %i.a, align 16, !tbaa !6
  br label %bb.j

bb.j:                                             ; preds = %PyUnicode_READ.exit, %.loopexit281
  %.1121295 = phi ptr [ %.0120300, %PyUnicode_READ.exit ], [ %.3123, %.loopexit281 ] ; 3 uses
  %.1128294 = phi i64 [ %.0127298, %PyUnicode_READ.exit ], [ %.3130, %.loopexit281 ] ; 9 uses
  %.1133293 = phi i64 [ %.0132297, %PyUnicode_READ.exit ], [ %.2134, %.loopexit281 ] ; 2 uses
  %.2142292 = phi i64 [ %.1141296, %PyUnicode_READ.exit ], [ %.5145, %.loopexit281 ] ; 3 uses
  %.1149291 = phi i32 [ 1, %PyUnicode_READ.exit ], [ %.5153, %.loopexit281 ] ; 2 uses
  %i.ae = add i32 %.1149291, -1                   ; 10 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr [4 x i8], ptr %i.a, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !6  ; 8 uses
  %i.ai = icmp slt i64 %.2142292, 3
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = add i64 %.1133293, 10                   ; 2 uses
  %i.ak = add nuw nsw i64 %.2142292, 10
  %i.al = shl i64 %i.aj, 2
  %i.am = tail call ptr @PyMem_Realloc(ptr noundef %.1121295, i64 noundef %i.al) #10 ; 2 uses
  %.not172 = icmp eq ptr %i.am, null
  br i1 %.not172, label %.thread232, label %bb.l

.thread232:                                       ; preds = %bb.k
  tail call void @PyMem_Free(ptr noundef %.1121295) #10
  br label %.loopexit.sink.split

bb.l:                                             ; preds = %bb.k, %bb.j
  %.3143 = phi i64 [ %.2142292, %bb.j ], [ %i.ak, %bb.k ] ; 7 uses
  %.2134 = phi i64 [ %.1133293, %bb.j ], [ %i.aj, %bb.k ] ; 2 uses
  %.3123 = phi ptr [ %.1121295, %bb.j ], [ %i.am, %bb.k ] ; 6 uses
  %i.an = add i32 %i.ah, -44032                   ; 2 uses
  %or.cond = icmp ult i32 %i.an, 11172
  br i1 %or.cond, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %.lhs.trunc = trunc nuw nsw i32 %i.an to i16    ; 3 uses
  %i.ao = urem i16 %.lhs.trunc, 588
  %i.ap = urem i16 %.lhs.trunc, 28                ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %.3123, i64 %.1128294
  %i.ar = add i64 %.1128294, 2                    ; 2 uses
  %3 = udiv i16 %i.ao, 28
  %4 = udiv i16 %.lhs.trunc, 588
  %narrow = add nuw nsw i16 %3, 4449
  %5 = or disjoint i16 %4, 4352
  %6 = insertelement <2 x i16> poison, i16 %5, i64 0
  %7 = insertelement <2 x i16> %6, i16 %narrow, i64 1
  %i.as = zext nneg <2 x i16> %7 to <2 x i32>
  store <2 x i32> %i.as, ptr %i.aq, align 4, !tbaa !6
  %i.at = add nsw i64 %.3143, -2
  %.not178 = icmp eq i16 %i.ap, 0
  br i1 %.not178, label %.loopexit281, label %bb.n

bb.n:                                             ; preds = %bb.m
  %narrow280 = add nuw nsw i16 %i.ap, 4519
  %i.au = zext nneg i16 %narrow280 to i32
  %i.av = add i64 %.1128294, 3
  %i.aw = getelementptr [4 x i8], ptr %.3123, i64 %i.ar
  store i32 %i.au, ptr %i.aw, align 4, !tbaa !6
  %i.ax = add nsw i64 %.3143, -3
  br label %.loopexit281

bb.o:                                             ; preds = %bb.l
  br i1 %.not173, label %.thread230, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val = load ptr, ptr %i.r, align 8, !tbaa !23  ; 2 uses
  %.not.i185 = icmp eq ptr %.val, @PyModule_Type
  br i1 %.not.i185, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.p
  %i.ay = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef nonnull @PyModule_Type) #10
  %.not279 = icmp eq i32 %i.ay, 0
  br i1 %.not279, label %bb.q, label %PyObject_TypeCheck.exit.thread

bb.q:                                             ; preds = %PyObject_TypeCheck.exit
  %i.az = load ptr, ptr %i.s, align 8, !tbaa !105
  %i.ba = tail call i32 %i.az(i32 noundef %i.ah) #10 ; 2 uses
  %.not175 = icmp eq i32 %i.ba, 0
  br i1 %.not175, label %PyObject_TypeCheck.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.ba, ptr %i.ag, align 4, !tbaa !6
  br label %.loopexit281

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.q, %bb.p, %PyObject_TypeCheck.exit
  %i.bb = icmp ugt i32 %i.ah, 1114111
  br i1 %i.bb, label %get_decomp_record.exit, label %bb.s

.thread230:                                       ; preds = %bb.o
  %i.bc = icmp ugt i32 %i.ah, 1114111
  br i1 %i.bc, label %get_decomp_record.exit, label %PyObject_TypeCheck.exit.thread.i

bb.s:                                             ; preds = %PyObject_TypeCheck.exit.thread
  %.val.i187 = load ptr, ptr %i.r, align 8, !tbaa !23 ; 2 uses
  %.not.i.i188 = icmp eq ptr %.val.i187, @PyModule_Type
  br i1 %.not.i.i188, label %PyObject_TypeCheck.exit.thread.i, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %bb.s
  %i.bd = tail call i32 @PyType_IsSubtype(ptr noundef %.val.i187, ptr noundef nonnull @PyModule_Type) #10
  %.not19.i = icmp eq i32 %i.bd, 0
  br i1 %.not19.i, label %bb.t, label %PyObject_TypeCheck.exit.thread.i

bb.t:                                             ; preds = %PyObject_TypeCheck.exit.i
  %i.be = load ptr, ptr %i.t, align 8, !tbaa !52
  %i.bf = tail call ptr %i.be(i32 noundef %i.ah) #10, !inline_history !106
  %i.bg = getelementptr i8, ptr %i.bf, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !55
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %get_decomp_record.exit, label %PyObject_TypeCheck.exit.thread.i

PyObject_TypeCheck.exit.thread.i:                 ; preds = %.thread230, %bb.t, %PyObject_TypeCheck.exit.i, %bb.s
  %i.bj = lshr i32 %i.ah, 7
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr i8, ptr @decomp_index1, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !22
  %i.bn = zext i8 %i.bm to i32
  %i.bo = shl nuw nsw i32 %i.bn, 7
  %i.bp = and i32 %i.ah, 127
  %i.bq = or disjoint i32 %i.bo, %i.bp
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr [2 x i8], ptr @decomp_index2, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !35 ; 2 uses
  %i.bu = zext i16 %i.bt to i32
  %i.bv = zext i16 %i.bt to i64
  br label %get_decomp_record.exit

get_decomp_record.exit:                           ; preds = %bb.t, %.thread230, %PyObject_TypeCheck.exit.thread, %PyObject_TypeCheck.exit.thread.i
  %.0222 = phi i32 [ 0, %.thread230 ], [ %i.bu, %PyObject_TypeCheck.exit.thread.i ], [ 0, %PyObject_TypeCheck.exit.thread ], [ 0, %bb.t ] ; 5 uses
  %i.bw = phi i64 [ 0, %.thread230 ], [ %i.bv, %PyObject_TypeCheck.exit.thread.i ], [ 0, %PyObject_TypeCheck.exit.thread ], [ 0, %bb.t ]
  %i.bx = getelementptr [4 x i8], ptr @decomp_data, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !6  ; 3 uses
  %.not176 = icmp ult i32 %i.by, 256
  br i1 %.not176, label %bb.v, label %bb.u

bb.u:                                             ; preds = %get_decomp_record.exit
  %i.bz = zext nneg i32 %.0222 to i64
  %i.ca = getelementptr [4 x i8], ptr @decomp_data, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !6
  %i.cc = and i32 %i.cb, 255
  %i.cd = icmp eq i32 %i.cc, 0
  %or.cond4 = or i1 %i.u, %i.cd
  br i1 %or.cond4, label %.preheader.preheader, label %bb.v

.preheader.preheader:                             ; preds = %bb.u
  %i.ce = lshr i32 %i.by, 8                       ; 2 uses
  %i.cf = zext nneg i32 %i.ce to i64              ; 6 uses
  %min.iters.check = icmp ult i32 %i.by, 2048
  br i1 %min.iters.check, label %.preheader.preheader329, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.preheader
  %i.cg = add nsw i64 %i.cf, -1                   ; 2 uses
  %i.ch = trunc nsw i64 %i.cg to i32
  %i.ci = add i32 %i.ae, %i.ch
  %i.cj = icmp slt i32 %i.ci, %i.ae
  %i.ck = icmp ugt i64 %i.cg, 4294967295
  %i.cl = or i1 %i.cj, %i.ck
  br i1 %i.cl, label %.preheader.preheader329, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.cf, 16777208                ; 3 uses
  %i.cm = and i64 %i.cf, 7
  %i.cn = trunc nuw nsw i64 %n.vec to i32
  %i.co = add i32 %i.ae, %i.cn                    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cp = trunc i64 %index to i32
  %i.cq = add i32 %i.ae, %i.cp
  %i.cr = trunc i64 %index to i32
  %i.cs = sub i32 %i.ce, %i.cr
  %i.ct = add i32 %.0222, %i.cs
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr [4 x i8], ptr @decomp_data, i64 %i.cu ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 -12
  %i.cx = getelementptr i8, ptr %i.cv, i64 -28
  %wide.load = load <4 x i32>, ptr %i.cw, align 4, !tbaa !6
  %wide.load326 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !6
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse327 = shufflevector <4 x i32> %wide.load326, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.cy = sext i32 %i.cq to i64
  %i.cz = getelementptr [4 x i8], ptr %i.a, i64 %i.cy ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 16
  store <4 x i32> %reverse, ptr %i.cz, align 4, !tbaa !6
  store <4 x i32> %reverse327, ptr %i.da, align 4, !tbaa !6
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.cf
  br i1 %cmp.n, label %.loopexit281, label %.preheader.preheader329

.preheader.preheader329:                          ; preds = %vector.scevcheck, %.preheader.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.cf, %vector.scevcheck ], [ %i.cf, %.preheader.preheader ], [ %i.cm, %middle.block ] ; 5 uses
  %.4152290.ph = phi i32 [ %i.ae, %vector.scevcheck ], [ %i.ae, %.preheader.preheader ], [ %i.co, %middle.block ] ; 3 uses
  %xtraiter = and i64 %indvars.iv.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader329
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, -1
  %i.dc = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.dd = add nuw nsw i32 %.0222, %i.dc
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr [4 x i8], ptr @decomp_data, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !6
  %i.dh = add i32 %.4152290.ph, 1                 ; 2 uses
  %i.di = sext i32 %.4152290.ph to i64
  %i.dj = getelementptr [4 x i8], ptr %i.a, i64 %i.di
  store i32 %i.dg, ptr %i.dj, align 4, !tbaa !6
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader329
  %.lcssa.unr = phi i32 [ poison, %.preheader.preheader329 ], [ %i.dh, %.preheader.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.preheader.preheader329 ], [ %indvars.iv.next.prol, %.preheader.prol ]
  %.4152290.unr = phi i32 [ %.4152290.ph, %.preheader.preheader329 ], [ %i.dh, %.preheader.prol ]
  %i.dk = icmp eq i64 %indvars.iv.ph, 1
  br i1 %i.dk, label %.loopexit281, label %.preheader.preheader329.new

.preheader.preheader329.new:                      ; preds = %.preheader.prol.loopexit
  %invariant.op = add i32 -1, %.0222
  br label %.preheader

bb.v:                                             ; preds = %bb.u, %get_decomp_record.exit
  %i.dl = add i64 %.1128294, 1
  %i.dm = getelementptr [4 x i8], ptr %.3123, i64 %.1128294
  store i32 %i.ah, ptr %i.dm, align 4, !tbaa !6
  %i.dn = add nsw i64 %.3143, -1
  br label %.loopexit281, !llvm.loop !108

.preheader:                                       ; preds = %.preheader, %.preheader.preheader329.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %.preheader.preheader329.new ], [ %indvars.iv.next.1, %.preheader ] ; 3 uses
  %.4152290 = phi i32 [ %.4152290.unr, %.preheader.preheader329.new ], [ %i.ea, %.preheader ] ; 3 uses
  %i.do = trunc nsw i64 %indvars.iv to i32
  %i.dp = add i32 %.0222, %i.do
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr [4 x i8], ptr @decomp_data, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !6
  %i.dt = add i32 %.4152290, 1
  %i.du = sext i32 %.4152290 to i64
  %i.dv = getelementptr [4 x i8], ptr %i.a, i64 %i.du
  store i32 %i.ds, ptr %i.dv, align 4, !tbaa !6
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.dw = trunc i64 %indvars.iv to i32
  %.reass = add i32 %i.dw, %invariant.op
  %i.dx = sext i32 %.reass to i64
end_hunk_0
