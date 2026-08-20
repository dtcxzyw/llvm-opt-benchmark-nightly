inline.NumInlined: 2798
inline.NumDeleted: 306
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 38
begin_hunk_0_@charmap_encoding_error:bb.a

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr i8, ptr %2, i64 8
  %i.h = getelementptr i8, ptr %0, i64 32
  %i.i = getelementptr i8, ptr %0, i64 56         ; 6 uses
  %i.j = getelementptr i8, ptr %2, i64 16
  %i.k = getelementptr i8, ptr %2, i64 56         ; 2 uses
  %i.l = getelementptr i8, ptr %2, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Py_DECREF.exit168
  %.0132254 = phi i64 [ %.0132253, %.lr.ph ], [ %.0132, %Py_DECREF.exit168 ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %.val178 = load ptr, ptr %i.g, align 8, !tbaa !197
  %.not = icmp eq ptr %.val178, @EncodingMapType
  %i.m = load i32, ptr %i.h, align 8              ; 8 uses
  %i.n = lshr i32 %i.m, 2
  %i.o = and i32 %i.n, 7                          ; 2 uses
  %i.p = and i32 %i.m, 32
  %.not.i19.i = icmp eq i32 %i.p, 0               ; 6 uses
  br i1 %.not, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  switch i32 %i.o, label %bb.j [
    i32 1, label %bb.d
    i32 2, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i19.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = and i32 %i.m, 64
  %.not.i.i.i = icmp eq i32 %i.q, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.f:                                             ; preds = %bb.d
  %.val4.i.i = load ptr, ptr %i.i, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.f, %bb.e
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.e ], [ %.val4.i.i, %bb.f ]
  %i.r = getelementptr i8, ptr %.0.i.i, i64 %.0132254
  %i.s = load i8, ptr %i.r, align 1, !tbaa !205
  %i.t = zext i8 %i.s to i32
  br label %PyUnicode_READ_CHAR.exit.thread

bb.g:                                             ; preds = %bb.c
  br i1 %.not.i19.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = and i32 %i.m, 64
  %.not.i.i12.i = icmp eq i32 %i.u, 0
  %.0.v.i.i13.i = select i1 %.not.i.i12.i, i64 56, i64 40
  %.0.i.i14.i = getelementptr i8, ptr %0, i64 %.0.v.i.i13.i
  br label %_PyUnicode_DATA.exit17.i

bb.i:                                             ; preds = %bb.g
  %.val4.i16.i = load ptr, ptr %i.i, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit17.i

_PyUnicode_DATA.exit17.i:                         ; preds = %bb.i, %bb.h
  %.0.i15.i = phi ptr [ %.0.i.i14.i, %bb.h ], [ %.val4.i16.i, %bb.i ]
  %i.v = getelementptr [2 x i8], ptr %.0.i15.i, i64 %.0132254
  %i.w = load i16, ptr %i.v, align 2, !tbaa !208
  %i.x = zext i16 %i.w to i32
  br label %PyUnicode_READ_CHAR.exit.thread

bb.j:                                             ; preds = %bb.c
  br i1 %.not.i19.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = and i32 %i.m, 64
  %.not.i.i20.i = icmp eq i32 %i.y, 0
  %.0.v.i.i21.i = select i1 %.not.i.i20.i, i64 56, i64 40
  %.0.i.i22.i = getelementptr i8, ptr %0, i64 %.0.v.i.i21.i
  br label %PyUnicode_READ_CHAR.exit

bb.l:                                             ; preds = %bb.j
  %.val4.i24.i = load ptr, ptr %i.i, align 8, !tbaa !205
  br label %PyUnicode_READ_CHAR.exit

PyUnicode_READ_CHAR.exit:                         ; preds = %bb.k, %bb.l
  %.0.i23.i = phi ptr [ %.0.i.i22.i, %bb.k ], [ %.val4.i24.i, %bb.l ]
  %i.z = getelementptr [4 x i8], ptr %.0.i23.i, i64 %.0132254
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !7   ; 2 uses
  %i.ab = icmp ugt i32 %i.aa, 65535
  br i1 %i.ab, label %Py_DECREF.exit168, label %PyUnicode_READ_CHAR.exit.thread

PyUnicode_READ_CHAR.exit.thread:                  ; preds = %_PyUnicode_DATA.exit17.i, %_PyUnicode_DATA.exit.i, %PyUnicode_READ_CHAR.exit
  %.0.i233 = phi i32 [ %i.aa, %PyUnicode_READ_CHAR.exit ], [ %i.x, %_PyUnicode_DATA.exit17.i ], [ %i.t, %_PyUnicode_DATA.exit.i ] ; 4 uses
  %.in = lshr i32 %.0.i233, 7
  %i.ac = and i32 %.in, 15
  %i.ad = and i32 %.0.i233, 127
  %i.ae = icmp eq i32 %.0.i233, 0
  br i1 %i.ae, label %Py_DECREF.exit168.thread, label %bb.m

bb.m:                                             ; preds = %PyUnicode_READ_CHAR.exit.thread
  %i.af = lshr i32 %.0.i233, 11
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr i8, ptr %i.j, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !205 ; 2 uses
  %i.aj = icmp eq i8 %i.ai, -1
  br i1 %i.aj, label %Py_DECREF.exit168, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = zext i8 %i.ai to i32
  %i.al = shl nuw nsw i32 %i.ak, 4
  %i.am = or disjoint i32 %i.al, %i.ac
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr i8, ptr %i.k, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !205 ; 2 uses
  %i.aq = icmp eq i8 %i.ap, -1
  br i1 %i.aq, label %Py_DECREF.exit168, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = zext i8 %i.ap to i32
  %i.as = load i32, ptr %i.l, align 8, !tbaa !525
  %i.at = shl i32 %i.as, 4
  %i.au = shl nuw nsw i32 %i.ar, 7
  %i.av = or disjoint i32 %i.au, %i.ad
  %i.aw = add i32 %i.av, %i.at
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr i8, ptr %i.k, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !205
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %Py_DECREF.exit168, label %Py_DECREF.exit168.thread

bb.p:                                             ; preds = %bb.b
  switch i32 %i.o, label %bb.w [
    i32 1, label %bb.q
    i32 2, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p
  br i1 %.not.i19.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = and i32 %i.m, 64
  %.not.i.i.i188 = icmp eq i32 %i.bb, 0
  %.0.v.i.i.i189 = select i1 %.not.i.i.i188, i64 56, i64 40
  %.0.i.i.i190 = getelementptr i8, ptr %0, i64 %.0.v.i.i.i189
  br label %_PyUnicode_DATA.exit.i191

bb.s:                                             ; preds = %bb.q
  %.val4.i.i193 = load ptr, ptr %i.i, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i191

_PyUnicode_DATA.exit.i191:                        ; preds = %bb.s, %bb.r
  %.0.i.i192 = phi ptr [ %.0.i.i.i190, %bb.r ], [ %.val4.i.i193, %bb.s ]
  %i.bc = getelementptr i8, ptr %.0.i.i192, i64 %.0132254
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !205
  %i.be = zext i8 %i.bd to i32
  br label %PyUnicode_READ_CHAR.exit200

bb.t:                                             ; preds = %bb.p
  br i1 %.not.i19.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = and i32 %i.m, 64
  %.not.i.i12.i181 = icmp eq i32 %i.bf, 0
  %.0.v.i.i13.i182 = select i1 %.not.i.i12.i181, i64 56, i64 40
  %.0.i.i14.i183 = getelementptr i8, ptr %0, i64 %.0.v.i.i13.i182
  br label %_PyUnicode_DATA.exit17.i184

bb.v:                                             ; preds = %bb.t
  %.val4.i16.i187 = load ptr, ptr %i.i, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit17.i184

_PyUnicode_DATA.exit17.i184:                      ; preds = %bb.v, %bb.u
  %.0.i15.i185 = phi ptr [ %.0.i.i14.i183, %bb.u ], [ %.val4.i16.i187, %bb.v ]
  %i.bg = getelementptr [2 x i8], ptr %.0.i15.i185, i64 %.0132254
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !208
  %i.bi = zext i16 %i.bh to i32
  br label %PyUnicode_READ_CHAR.exit200

bb.w:                                             ; preds = %bb.p
  br i1 %.not.i19.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bj = and i32 %i.m, 64
  %.not.i.i20.i194 = icmp eq i32 %i.bj, 0
  %.0.v.i.i21.i195 = select i1 %.not.i.i20.i194, i64 56, i64 40
  %.0.i.i22.i196 = getelementptr i8, ptr %0, i64 %.0.v.i.i21.i195
  br label %_PyUnicode_DATA.exit25.i197

bb.y:                                             ; preds = %bb.w
  %.val4.i24.i199 = load ptr, ptr %i.i, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit25.i197

_PyUnicode_DATA.exit25.i197:                      ; preds = %bb.y, %bb.x
  %.0.i23.i198 = phi ptr [ %.0.i.i22.i196, %bb.x ], [ %.val4.i24.i199, %bb.y ]
  %i.bk = getelementptr [4 x i8], ptr %.0.i23.i198, i64 %.0132254
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit200

PyUnicode_READ_CHAR.exit200:                      ; preds = %_PyUnicode_DATA.exit.i191, %_PyUnicode_DATA.exit17.i184, %_PyUnicode_DATA.exit25.i197
  %.0.i186 = phi i32 [ %i.be, %_PyUnicode_DATA.exit.i191 ], [ %i.bi, %_PyUnicode_DATA.exit17.i184 ], [ %i.bl, %_PyUnicode_DATA.exit25.i197 ]
  %i.bm = call fastcc ptr @charmapencode_lookup(i32 noundef %.0.i186, ptr noundef %2, ptr noundef %i.b) ; 7 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %Py_DECREF.exit168.thread236, label %bb.z

Py_DECREF.exit168.thread236:                      ; preds = %PyUnicode_READ_CHAR.exit200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %.critedge155

bb.z:                                             ; preds = %PyUnicode_READ_CHAR.exit200
  %.not147 = icmp eq ptr %i.bm, @_Py_NoneStruct
  %9 = load i32, ptr %i.bm, align 8, !tbaa !205   ; 3 uses
  %.not.i165 = icmp sgt i32 %9, -1                ; 2 uses
  br i1 %.not147, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br i1 %.not.i165, label %bb.ab, label %Py_DECREF.exit168.thread

bb.ab:                                            ; preds = %bb.aa
  %i.bo = add nsw i32 %9, -1                      ; 2 uses
  store i32 %i.bo, ptr %i.bm, align 8, !tbaa !205
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.ac, label %Py_DECREF.exit168.thread

bb.ac:                                            ; preds = %bb.ab
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bm) #33
  br label %Py_DECREF.exit168.thread

bb.ad:                                            ; preds = %bb.z
  br i1 %.not.i165, label %bb.ae, label %Py_DECREF.exit168

bb.ae:                                            ; preds = %bb.ad
  %i.bq = add nsw i32 %9, -1                      ; 2 uses
  store i32 %i.bq, ptr %i.bm, align 8, !tbaa !205
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.af, label %Py_DECREF.exit168

bb.af:                                            ; preds = %bb.ae
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bm) #33
  br label %Py_DECREF.exit168

Py_DECREF.exit168.thread:                         ; preds = %PyUnicode_READ_CHAR.exit.thread, %bb.o, %bb.aa, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %.loopexit246

Py_DECREF.exit168:                                ; preds = %bb.n, %bb.m, %PyUnicode_READ_CHAR.exit, %bb.o, %bb.af, %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %.0132 = add nsw i64 %.0132254, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %.0132, %.val177
  br i1 %exitcond.not, label %.loopexit246, label %bb.b

.loopexit246:                                     ; preds = %Py_DECREF.exit168, %bb.a, %Py_DECREF.exit168.thread
  %.0132251 = phi i64 [ %.0132254, %Py_DECREF.exit168.thread ], [ %.0132253, %bb.a ], [ %.val177, %Py_DECREF.exit168 ] ; 11 uses
  %i.bs = load i32, ptr %4, align 4, !tbaa !7     ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.loopexit246
  %i.bu = tail call i32 @_Py_GetErrorHandler(ptr noundef %6) ; 2 uses
  store i32 %i.bu, ptr %4, align 4, !tbaa !7
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.loopexit246
  %i.bv = phi i32 [ %i.bu, %bb.ag ], [ %i.bs, %.loopexit246 ]
  switch i32 %i.bv, label %bb.ba [
    i32 1, label %bb.ai
    i32 3, label %.preheader
    i32 4, label %.loopexit
    i32 7, label %.preheader245
  ]

.preheader245:                                    ; preds = %bb.ah
  %i.bw = icmp slt i64 %i.d, %.0132251
  br i1 %i.bw, label %.lr.ph259, label %._crit_edge260

.lr.ph259:                                        ; preds = %.preheader245
  %i.bx = getelementptr i8, ptr %0, i64 32
  %i.by = getelementptr i8, ptr %0, i64 56        ; 3 uses
  br label %bb.an

.preheader:                                       ; preds = %bb.ah
  %i.bz = icmp slt i64 %i.d, %.0132251
  br i1 %i.bz, label %.lr.ph262, label %.loopexit

bb.ai:                                            ; preds = %bb.ah
  tail call fastcc void @make_encode_exception(ptr noundef nonnull %3, ptr noundef nonnull @.str.183, ptr noundef nonnull %0, i64 noundef %i.d, i64 noundef %.0132251, ptr noundef nonnull @.str.184)
  %i.ca = load ptr, ptr %3, align 8, !tbaa !194   ; 2 uses
  %.not.i201 = icmp eq ptr %i.ca, null
  br i1 %.not.i201, label %.critedge155, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cb = tail call ptr @PyCodec_StrictErrors(ptr noundef nonnull %i.ca) #33 ; 0 uses
  br label %.critedge155

.lr.ph262:                                        ; preds = %.preheader, %bb.am
  %.0130261 = phi i64 [ %i.cf, %bb.am ], [ %i.d, %.preheader ]
  %i.cc = tail call fastcc i32 @charmapencode_output(i32 noundef 63, ptr noundef %2, ptr noundef %7, ptr noundef %8)
  switch i32 %i.cc, label %bb.am [
    i32 2, label %.critedge155
    i32 1, label %bb.ak
  ]

bb.ak:                                            ; preds = %.lr.ph262
  tail call fastcc void @make_encode_exception(ptr noundef nonnull %3, ptr noundef nonnull @.str.183, ptr noundef %0, i64 noundef %i.d, i64 noundef %.0132251, ptr noundef nonnull @.str.184)
  %i.cd = load ptr, ptr %3, align 8, !tbaa !194   ; 2 uses
  %.not.i202 = icmp eq ptr %i.cd, null
  br i1 %.not.i202, label %.critedge155, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ce = tail call ptr @PyCodec_StrictErrors(ptr noundef nonnull %i.cd) #33 ; 0 uses
  br label %.critedge155

bb.am:                                            ; preds = %.lr.ph262
  %i.cf = add i64 %.0130261, 1                    ; 2 uses
  %exitcond284.not = icmp eq i64 %i.cf, %.0132251
  br i1 %exitcond284.not, label %.loopexit, label %.lr.ph262, !llvm.loop !532

.loopexit:                                        ; preds = %bb.am, %.preheader, %bb.ah
  store i64 %.0132251, ptr %1, align 8, !tbaa !193
  br label %.critedge155

bb.an:                                            ; preds = %.lr.ph259, %._crit_edge
  %.1131258 = phi i64 [ %i.d, %.lr.ph259 ], [ %i.de, %._crit_edge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.cg = load i32, ptr %i.bx, align 8            ; 5 uses
  %i.ch = lshr i32 %i.cg, 2
  %i.ci = and i32 %i.ch, 7
  %i.cj = and i32 %i.cg, 32
  %.not.i19.i204 = icmp eq i32 %i.cj, 0           ; 3 uses
  switch i32 %i.ci, label %bb.au [
    i32 1, label %bb.ao
    i32 2, label %bb.ar
  ]

bb.ao:                                            ; preds = %bb.an
  br i1 %.not.i19.i204, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ck = and i32 %i.cg, 64
  %.not.i.i.i212 = icmp eq i32 %i.ck, 0
  %.0.v.i.i.i213 = select i1 %.not.i.i.i212, i64 56, i64 40
  %.0.i.i.i214 = getelementptr i8, ptr %0, i64 %.0.v.i.i.i213
  br label %_PyUnicode_DATA.exit.i215

bb.aq:                                            ; preds = %bb.ao
  %.val4.i.i217 = load ptr, ptr %i.by, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i215

_PyUnicode_DATA.exit.i215:                        ; preds = %bb.aq, %bb.ap
  %.0.i.i216 = phi ptr [ %.0.i.i.i214, %bb.ap ], [ %.val4.i.i217, %bb.aq ]
  %i.cl = getelementptr i8, ptr %.0.i.i216, i64 %.1131258
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !205
  %i.cn = zext i8 %i.cm to i32
  br label %PyUnicode_READ_CHAR.exit224

bb.ar:                                            ; preds = %bb.an
  br i1 %.not.i19.i204, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.co = and i32 %i.cg, 64
  %.not.i.i12.i205 = icmp eq i32 %i.co, 0
  %.0.v.i.i13.i206 = select i1 %.not.i.i12.i205, i64 56, i64 40
  %.0.i.i14.i207 = getelementptr i8, ptr %0, i64 %.0.v.i.i13.i206
  br label %_PyUnicode_DATA.exit17.i208

bb.at:                                            ; preds = %bb.ar
  %.val4.i16.i211 = load ptr, ptr %i.by, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit17.i208

_PyUnicode_DATA.exit17.i208:                      ; preds = %bb.at, %bb.as
  %.0.i15.i209 = phi ptr [ %.0.i.i14.i207, %bb.as ], [ %.val4.i16.i211, %bb.at ]
  %i.cp = getelementptr [2 x i8], ptr %.0.i15.i209, i64 %.1131258
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !208
  %i.cr = zext i16 %i.cq to i32
  br label %PyUnicode_READ_CHAR.exit224

bb.au:                                            ; preds = %bb.an
  br i1 %.not.i19.i204, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cs = and i32 %i.cg, 64
  %.not.i.i20.i218 = icmp eq i32 %i.cs, 0
  %.0.v.i.i21.i219 = select i1 %.not.i.i20.i218, i64 56, i64 40
  %.0.i.i22.i220 = getelementptr i8, ptr %0, i64 %.0.v.i.i21.i219
  br label %_PyUnicode_DATA.exit25.i221

bb.aw:                                            ; preds = %bb.au
  %.val4.i24.i223 = load ptr, ptr %i.by, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit25.i221

_PyUnicode_DATA.exit25.i221:                      ; preds = %bb.aw, %bb.av
  %.0.i23.i222 = phi ptr [ %.0.i.i22.i220, %bb.av ], [ %.val4.i24.i223, %bb.aw ]
  %i.ct = getelementptr [4 x i8], ptr %.0.i23.i222, i64 %.1131258
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit224

PyUnicode_READ_CHAR.exit224:                      ; preds = %_PyUnicode_DATA.exit.i215, %_PyUnicode_DATA.exit17.i208, %_PyUnicode_DATA.exit25.i221
  %.0.i210 = phi i32 [ %i.cn, %_PyUnicode_DATA.exit.i215 ], [ %i.cr, %_PyUnicode_DATA.exit17.i208 ], [ %i.cu, %_PyUnicode_DATA.exit25.i221 ]
  %i.cv = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str.177, i32 noundef %.0.i210) #33 ; 0 uses
  %i.cw = load i8, ptr %i.c, align 16, !tbaa !205 ; 2 uses
  %.not149255 = icmp eq i8 %i.cw, 0
  br i1 %.not149255, label %._crit_edge, label %.lr.ph257

.lr.ph257:                                        ; preds = %PyUnicode_READ_CHAR.exit224, %bb.az
  %i.cx = phi i8 [ %i.dd, %bb.az ], [ %i.cw, %PyUnicode_READ_CHAR.exit224 ]
  %.0256 = phi ptr [ %i.dc, %bb.az ], [ %i.c, %PyUnicode_READ_CHAR.exit224 ]
  %i.cy = sext i8 %i.cx to i32
  %i.cz = tail call fastcc i32 @charmapencode_output(i32 noundef %i.cy, ptr noundef %2, ptr noundef %7, ptr noundef %8)
  switch i32 %i.cz, label %bb.az [
    i32 2, label %raise_encode_exception.exit226
    i32 1, label %bb.ax
  ]

bb.ax:                                            ; preds = %.lr.ph257
  tail call fastcc void @make_encode_exception(ptr noundef nonnull %3, ptr noundef nonnull @.str.183, ptr noundef %0, i64 noundef %i.d, i64 noundef %.0132251, ptr noundef nonnull @.str.184)
  %i.da = load ptr, ptr %3, align 8, !tbaa !194   ; 2 uses
  %.not.i225 = icmp eq ptr %i.da, null
  br i1 %.not.i225, label %raise_encode_exception.exit226, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.db = tail call ptr @PyCodec_StrictErrors(ptr noundef nonnull %i.da) #33 ; 0 uses
  br label %raise_encode_exception.exit226

bb.az:                                            ; preds = %.lr.ph257
  %i.dc = getelementptr i8, ptr %.0256, i64 1     ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !205 ; 2 uses
  %.not149 = icmp eq i8 %i.dd, 0
  br i1 %.not149, label %._crit_edge, label %.lr.ph257, !llvm.loop !533

raise_encode_exception.exit226:                   ; preds = %.lr.ph257, %bb.ay, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %.critedge155

._crit_edge:                                      ; preds = %bb.az, %PyUnicode_READ_CHAR.exit224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %i.de = add nsw i64 %.1131258, 1                ; 2 uses
  %exitcond283.not = icmp eq i64 %i.de, %.0132251
  br i1 %exitcond283.not, label %._crit_edge260, label %bb.an, !llvm.loop !534

end_hunk_0
begin_hunk_1_@charmap_encoding_error:bb.a
    i32 2, label %.split.us
    i32 1, label %.split267.us
  ]

bb.bm:                                            ; preds = %PyUnicode_READ.exit.us
  %i.er = add nuw nsw i64 %.0135263.us, 1         ; 2 uses
  %exitcond286.not = icmp eq i64 %i.er, %.val176
  br i1 %exitcond286.not, label %._crit_edge265, label %PyUnicode_READ.exit.us, !llvm.loop !535

PyUnicode_READ.exit.us270:                        ; preds = %.lr.ph264, %bb.bn
  %.0135263.us269 = phi i64 [ %i.ew, %bb.bn ], [ 0, %.lr.ph264 ] ; 2 uses
  %i.es = getelementptr [2 x i8], ptr %.0.i230, i64 %.0135263.us269
  %i.et = load i16, ptr %i.es, align 2, !tbaa !208
  %i.eu = zext i16 %i.et to i32
  %i.ev = call fastcc i32 @charmapencode_output(i32 noundef %i.eu, ptr noundef %2, ptr noundef %7, ptr noundef %8)
  switch i32 %i.ev, label %bb.bn [
    i32 2, label %.split.us
    i32 1, label %.split267.us
  ]

bb.bn:                                            ; preds = %PyUnicode_READ.exit.us270
  %i.ew = add nuw nsw i64 %.0135263.us269, 1      ; 2 uses
  %exitcond285.not = icmp eq i64 %i.ew, %.val176
  br i1 %exitcond285.not, label %._crit_edge265, label %PyUnicode_READ.exit.us270, !llvm.loop !535

PyUnicode_READ.exit:                              ; preds = %.lr.ph264, %bb.bs
  %.0135263 = phi i64 [ %i.fg, %bb.bs ], [ 0, %.lr.ph264 ] ; 2 uses
  %i.ex = getelementptr [4 x i8], ptr %.0.i230, i64 %.0135263
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !7
  %i.ez = call fastcc i32 @charmapencode_output(i32 noundef %i.ey, ptr noundef %2, ptr noundef %7, ptr noundef %8)
  switch i32 %i.ez, label %bb.bs [
    i32 2, label %.split.us
    i32 1, label %.split267.us
  ]

.split.us:                                        ; preds = %PyUnicode_READ.exit.us270, %PyUnicode_READ.exit.us, %PyUnicode_READ.exit
  %i.fa = load i32, ptr %i.df, align 8, !tbaa !205 ; 2 uses
  %.not.i159 = icmp sgt i32 %i.fa, -1
  br i1 %.not.i159, label %bb.bo, label %.critedge155

bb.bo:                                            ; preds = %.split.us
  %i.fb = add nsw i32 %i.fa, -1                   ; 2 uses
  store i32 %i.fb, ptr %i.df, align 8, !tbaa !205
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.bp, label %.critedge155

bb.bp:                                            ; preds = %bb.bo
  call void @_Py_Dealloc(ptr noundef nonnull %i.df) #33
  br label %.critedge155

.split267.us:                                     ; preds = %PyUnicode_READ.exit.us270, %PyUnicode_READ.exit.us, %PyUnicode_READ.exit
  %i.fd = load i32, ptr %i.df, align 8, !tbaa !205 ; 2 uses
  %.not.i157 = icmp sgt i32 %i.fd, -1
  br i1 %.not.i157, label %bb.bq, label %Py_DECREF.exit158

bb.bq:                                            ; preds = %.split267.us
  %i.fe = add nsw i32 %i.fd, -1                   ; 2 uses
  store i32 %i.fe, ptr %i.df, align 8, !tbaa !205
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.br, label %Py_DECREF.exit158

bb.br:                                            ; preds = %bb.bq
  call void @_Py_Dealloc(ptr noundef nonnull %i.df) #33
  br label %Py_DECREF.exit158

Py_DECREF.exit158:                                ; preds = %.split267.us, %bb.bq, %bb.br
  call fastcc void @raise_encode_exception(ptr noundef %3, ptr noundef nonnull @.str.183, ptr noundef nonnull %0, i64 noundef %i.d, i64 noundef %.0132251, ptr noundef nonnull @.str.184)
  br label %.critedge155

bb.bs:                                            ; preds = %PyUnicode_READ.exit
  %i.fg = add nuw nsw i64 %.0135263, 1            ; 2 uses
  %exitcond287.not = icmp eq i64 %i.fg, %.val176
  br i1 %exitcond287.not, label %._crit_edge265, label %PyUnicode_READ.exit, !llvm.loop !535

._crit_edge265:                                   ; preds = %bb.bn, %bb.bm, %bb.bs, %_PyUnicode_DATA.exit
  %i.fh = load i64, ptr %i.a, align 8, !tbaa !193
  store i64 %i.fh, ptr %1, align 8, !tbaa !193
  %i.fi = load i32, ptr %i.df, align 8, !tbaa !205 ; 2 uses
  %.not.i = icmp sgt i32 %i.fi, -1
  br i1 %.not.i, label %bb.bt, label %.critedge155

bb.bt:                                            ; preds = %._crit_edge265
  %i.fj = add nsw i32 %i.fi, -1                   ; 2 uses
  store i32 %i.fj, ptr %i.df, align 8, !tbaa !205
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.bu, label %.critedge155

bb.bu:                                            ; preds = %bb.bt
  call void @_Py_Dealloc(ptr noundef nonnull %i.df) #33
  br label %.critedge155

.critedge155:                                     ; preds = %.lr.ph262, %bb.bu, %bb.bt, %._crit_edge265, %bb.bp, %bb.bo, %.split.us, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %.critedge153, %raise_encode_exception.exit226, %bb.al, %bb.ak, %bb.aj, %bb.ai, %Py_DECREF.exit168.thread236, %Py_DECREF.exit158, %.loopexit, %._crit_edge260, %bb.ba
  %.8 = phi i32 [ -1, %Py_DECREF.exit168.thread236 ], [ 0, %bb.bu ], [ -1, %bb.ba ], [ -1, %bb.al ], [ 0, %.loopexit ], [ 0, %bb.bi ], [ -1, %raise_encode_exception.exit226 ], [ -1, %bb.aj ], [ -1, %bb.bf ], [ -1, %bb.bp ], [ 0, %._crit_edge260 ], [ -1, %Py_DECREF.exit158 ], [ -1, %bb.ai ], [ -1, %bb.ak ], [ -1, %.critedge153 ], [ -1, %bb.be ], [ 0, %bb.bg ], [ 0, %bb.bh ], [ -1, %.split.us ], [ -1, %bb.bo ], [ 0, %._crit_edge265 ], [ 0, %bb.bt ], [ -1, %.lr.ph262 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret i32 %.8
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 3) i32 @charmapencode_output(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.b = getelementptr i8, ptr %2, i64 264
  %.val77 = load i64, ptr %i.b, align 8, !tbaa !516 ; 3 uses
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val75 = load ptr, ptr %i.c, align 8, !tbaa !197
  %.not = icmp eq ptr %.val75, @EncodingMapType
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i32 %0, 11
  %i.e = lshr i32 %0, 7
  %i.f = and i32 %i.e, 15
  %i.g = and i32 %0, 127
  %i.h = icmp ugt i32 %0, 65535
  br i1 %i.h, label %Py_DECREF.exit70, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %0, 0
  br i1 %i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %1, i64 16
  %i.k = zext nneg i32 %i.d to i64
  %i.l = getelementptr i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !205   ; 2 uses
  %i.n = icmp eq i8 %i.m, -1
  br i1 %i.n, label %Py_DECREF.exit70, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = zext i8 %i.m to i32
  %i.p = getelementptr i8, ptr %1, i64 56         ; 2 uses
  %i.q = shl nuw nsw i32 %i.o, 4
  %i.r = or disjoint i32 %i.q, %i.f
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr i8, ptr %i.p, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !205   ; 2 uses
  %i.v = icmp eq i8 %i.u, -1
  br i1 %i.v, label %Py_DECREF.exit70, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = zext i8 %i.u to i32
  %i.x = getelementptr i8, ptr %1, i64 48
  %i.y = load i32, ptr %i.x, align 8, !tbaa !525
  %i.z = shl i32 %i.y, 4
  %i.aa = shl nuw nsw i32 %i.w, 7
  %i.ab = or disjoint i32 %i.aa, %i.g
  %i.ac = add i32 %i.ab, %i.z
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr i8, ptr %i.p, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !205 ; 2 uses
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %Py_DECREF.exit70, label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %.0.i = phi i8 [ %i.af, %bb.f ], [ 0, %bb.c ]
  %i.ah = load i64, ptr %3, align 8, !tbaa !193
  %i.ai = add i64 %i.ah, 1                        ; 2 uses
  %i.aj = icmp slt i64 %.val77, %i.ai
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = tail call i64 @PyBytesWriter_GetSize(ptr noundef nonnull %2) #33
  %i.al = shl i64 %i.ak, 1
  %spec.select.i78 = tail call i64 @llvm.smax.i64(i64 %i.ai, i64 %i.al)
  %i.am = tail call i32 @PyBytesWriter_Resize(ptr noundef nonnull %2, i64 noundef %spec.select.i78) #33
  %.not62 = icmp eq i32 %i.am, 0
  br i1 %.not62, label %bb.i, label %Py_DECREF.exit70

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.an = getelementptr i8, ptr %2, i64 256
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !529 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_PyBytesWriter_GetData.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr i8, ptr %2, i64 272
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !530
  %.not.i79 = icmp eq i32 %i.ar, 0
  br i1 %.not.i79, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr i8, ptr %i.ao, i64 40
  %.val.i = load ptr, ptr %i.as, align 8, !tbaa !397
  br label %_PyBytesWriter_GetData.exit

bb.l:                                             ; preds = %bb.j
  %i.at = getelementptr i8, ptr %i.ao, i64 32
  br label %_PyBytesWriter_GetData.exit

_PyBytesWriter_GetData.exit:                      ; preds = %bb.i, %bb.k, %bb.l
  %.0.i80 = phi ptr [ %i.at, %bb.l ], [ %.val.i, %bb.k ], [ %2, %bb.i ]
  %i.au = load i64, ptr %3, align 8, !tbaa !193   ; 2 uses
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %3, align 8, !tbaa !193
  %i.aw = getelementptr i8, ptr %.0.i80, i64 %i.au
  store i8 %.0.i, ptr %i.aw, align 1, !tbaa !205
  br label %Py_DECREF.exit70

bb.m:                                             ; preds = %bb.a
  %i.ax = call fastcc ptr @charmapencode_lookup(i32 noundef %0, ptr noundef %1, ptr noundef %i.a) ; 17 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %Py_DECREF.exit70, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = icmp eq ptr %i.ax, @_Py_NoneStruct
  br i1 %i.az, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ba = load i32, ptr %i.ax, align 8, !tbaa !205 ; 2 uses
  %.not.i69 = icmp sgt i32 %i.ba, -1
  br i1 %.not.i69, label %bb.p, label %Py_DECREF.exit70

bb.p:                                             ; preds = %bb.o
  %i.bb = add nsw i32 %i.ba, -1                   ; 2 uses
  store i32 %i.bb, ptr %i.ax, align 8, !tbaa !205
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.q, label %Py_DECREF.exit70

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ax) #33
  br label %Py_DECREF.exit70

bb.r:                                             ; preds = %bb.n
  %i.bd = getelementptr i8, ptr %i.ax, i64 8
  %.val = load ptr, ptr %i.bd, align 8, !tbaa !197
  %i.be = getelementptr i8, ptr %.val, i64 168
  %.val74 = load i64, ptr %i.be, align 8, !tbaa !198
  %i.bf = and i64 %.val74, 16777216
  %.not59 = icmp eq i64 %i.bf, 0
  br i1 %.not59, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = load i64, ptr %3, align 8, !tbaa !193
  %i.bh = add i64 %i.bg, 1                        ; 2 uses
  %i.bi = icmp slt i64 %.val77, %i.bh
  br i1 %i.bi, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.bj = tail call i64 @PyBytesWriter_GetSize(ptr noundef nonnull %2) #33
  %i.bk = shl i64 %i.bj, 1
  %spec.select.i81 = tail call i64 @llvm.smax.i64(i64 %i.bh, i64 %i.bk)
  %i.bl = tail call i32 @PyBytesWriter_Resize(ptr noundef nonnull %2, i64 noundef %spec.select.i81) #33
  %.not61 = icmp eq i32 %i.bl, 0
  br i1 %.not61, label %bb.w, label %.critedge

.critedge:                                        ; preds = %bb.t
  %i.bm = load i32, ptr %i.ax, align 8, !tbaa !205 ; 2 uses
  %.not.i67 = icmp sgt i32 %i.bm, -1
  br i1 %.not.i67, label %bb.u, label %Py_DECREF.exit70

bb.u:                                             ; preds = %.critedge
  %i.bn = add nsw i32 %i.bm, -1                   ; 2 uses
  store i32 %i.bn, ptr %i.ax, align 8, !tbaa !205
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.v, label %Py_DECREF.exit70

bb.v:                                             ; preds = %bb.u
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ax) #33
  br label %Py_DECREF.exit70

bb.w:                                             ; preds = %bb.t, %bb.s
  %i.bp = getelementptr i8, ptr %2, i64 256
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !529 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_PyBytesWriter_GetData.exit85, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bs = getelementptr i8, ptr %2, i64 272
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !530
  %.not.i82 = icmp eq i32 %i.bt, 0
  br i1 %.not.i82, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bu = getelementptr i8, ptr %i.bq, i64 40
  %.val.i83 = load ptr, ptr %i.bu, align 8, !tbaa !397
  br label %_PyBytesWriter_GetData.exit85

bb.z:                                             ; preds = %bb.x
  %i.bv = getelementptr i8, ptr %i.bq, i64 32
  br label %_PyBytesWriter_GetData.exit85

_PyBytesWriter_GetData.exit85:                    ; preds = %bb.w, %bb.y, %bb.z
  %.0.i84 = phi ptr [ %i.bv, %bb.z ], [ %.val.i83, %bb.y ], [ %2, %bb.w ]
  %i.bw = load i8, ptr %i.a, align 1, !tbaa !205
  %i.bx = load i64, ptr %3, align 8, !tbaa !193   ; 2 uses
  %i.by = add i64 %i.bx, 1
  store i64 %i.by, ptr %3, align 8, !tbaa !193
  %i.bz = getelementptr i8, ptr %.0.i84, i64 %i.bx
  store i8 %i.bw, ptr %i.bz, align 1, !tbaa !205
  br label %bb.ai

bb.aa:                                            ; preds = %bb.r
  %i.ca = getelementptr i8, ptr %i.ax, i64 32
  %i.cb = getelementptr i8, ptr %i.ax, i64 16
  %.val76 = load i64, ptr %i.cb, align 8, !tbaa !380 ; 3 uses
  %i.cc = load i64, ptr %3, align 8, !tbaa !193
  %i.cd = add i64 %i.cc, %.val76                  ; 2 uses
  %i.ce = icmp slt i64 %.val77, %i.cd
  br i1 %i.ce, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.cf = tail call i64 @PyBytesWriter_GetSize(ptr noundef nonnull %2) #33
  %i.cg = shl i64 %i.cf, 1
  %spec.select.i86 = tail call i64 @llvm.smax.i64(i64 %i.cd, i64 %i.cg)
  %i.ch = tail call i32 @PyBytesWriter_Resize(ptr noundef nonnull %2, i64 noundef %spec.select.i86) #33
  %.not60 = icmp eq i32 %i.ch, 0
  br i1 %.not60, label %bb.ae, label %.critedge64

.critedge64:                                      ; preds = %bb.ab
  %i.ci = load i32, ptr %i.ax, align 8, !tbaa !205 ; 2 uses
  %.not.i65 = icmp sgt i32 %i.ci, -1
  br i1 %.not.i65, label %bb.ac, label %Py_DECREF.exit70

bb.ac:                                            ; preds = %.critedge64
  %i.cj = add nsw i32 %i.ci, -1                   ; 2 uses
  store i32 %i.cj, ptr %i.ax, align 8, !tbaa !205
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.ad, label %Py_DECREF.exit70

bb.ad:                                            ; preds = %bb.ac
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ax) #33
  br label %Py_DECREF.exit70

bb.ae:                                            ; preds = %bb.ab, %bb.aa
  %i.cl = getelementptr i8, ptr %2, i64 256
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !529 ; 3 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %_PyBytesWriter_GetData.exit90, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.co = getelementptr i8, ptr %2, i64 272
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !530
  %.not.i87 = icmp eq i32 %i.cp, 0
  br i1 %.not.i87, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cq = getelementptr i8, ptr %i.cm, i64 40
  %.val.i88 = load ptr, ptr %i.cq, align 8, !tbaa !397
  br label %_PyBytesWriter_GetData.exit90

bb.ah:                                            ; preds = %bb.af
  %i.cr = getelementptr i8, ptr %i.cm, i64 32
  br label %_PyBytesWriter_GetData.exit90

_PyBytesWriter_GetData.exit90:                    ; preds = %bb.ae, %bb.ag, %bb.ah
  %.0.i89 = phi ptr [ %i.cr, %bb.ah ], [ %.val.i88, %bb.ag ], [ %2, %bb.ae ]
  %i.cs = load i64, ptr %3, align 8, !tbaa !193
  %i.ct = getelementptr i8, ptr %.0.i89, i64 %i.cs
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ct, ptr align 1 %i.ca, i64 %.val76, i1 false)
  %i.cu = load i64, ptr %3, align 8, !tbaa !193
  %i.cv = add i64 %i.cu, %.val76
  store i64 %i.cv, ptr %3, align 8, !tbaa !193
  br label %bb.ai

bb.ai:                                            ; preds = %_PyBytesWriter_GetData.exit90, %_PyBytesWriter_GetData.exit85
  %i.cw = load i32, ptr %i.ax, align 8, !tbaa !205 ; 2 uses
  %.not.i = icmp sgt i32 %i.cw, -1
  br i1 %.not.i, label %bb.aj, label %Py_DECREF.exit70

bb.aj:                                            ; preds = %bb.ai
  %i.cx = add nsw i32 %i.cw, -1                   ; 2 uses
  store i32 %i.cx, ptr %i.ax, align 8, !tbaa !205
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.ak, label %Py_DECREF.exit70

bb.ak:                                            ; preds = %bb.aj
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ax) #33
  br label %Py_DECREF.exit70

Py_DECREF.exit70:                                 ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.ak, %bb.aj, %bb.ai, %bb.ad, %bb.ac, %.critedge64, %bb.v, %bb.u, %.critedge, %bb.q, %bb.p, %bb.o, %bb.m, %_PyBytesWriter_GetData.exit, %bb.h
  %.3 = phi i32 [ 2, %bb.v ], [ 2, %bb.h ], [ 2, %bb.m ], [ 2, %bb.ad ], [ 1, %bb.q ], [ 0, %_PyBytesWriter_GetData.exit ], [ 0, %bb.ak ], [ 1, %bb.o ], [ 1, %bb.p ], [ 2, %.critedge ], [ 2, %bb.u ], [ 2, %.critedge64 ], [ 2, %bb.ac ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ 1, %bb.b ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret i32 %.3
}

declare ptr @PyBytesWriter_FinishWithSize(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_AsCharmapString(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val7 = load i64, ptr %i.b, align 8, !tbaa !198
  %i.c = and i64 %.val7, 268435456
  %i.d = icmp eq i64 %i.c, 0
  %i.e = icmp eq ptr %1, null
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @PyErr_BadArgument() #33   ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr @_PyUnicode_EncodeCharmap(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef null)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.g, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_Translate(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.b = getelementptr i8, ptr %.val.i, i64 168
  %.val2.i = load i64, ptr %i.b, align 8, !tbaa !198
  %i.c = and i64 %.val2.i, 268435456
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_PyUnicode_EnsureUnicode.exit.thread, label %_PyUnicode_EnsureUnicode.exit

_PyUnicode_EnsureUnicode.exit.thread:             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  %i.e = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.193, ptr noundef nonnull %0) #33 ; 0 uses
  br label %bb.b

_PyUnicode_EnsureUnicode.exit:                    ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_PyUnicode_TranslateCharmap:bb.a
  %i.bu = load i16, ptr %.0.i15.i.i, align 2, !tbaa !208
  %i.bv = zext i16 %i.bu to i32
  br label %PyUnicode_READ_CHAR.exit.i

bb.af:                                            ; preds = %bb.y
  br i1 %.not.i19.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bw = and i32 %i.bk, 64
  %.not.i.i20.i.i = icmp eq i32 %i.bw, 0
  %.0.v.i.i21.i.i = select i1 %.not.i.i20.i.i, i64 56, i64 40
  %.0.i.i22.i.i = getelementptr i8, ptr %i.ay, i64 %.0.v.i.i21.i.i
  br label %_PyUnicode_DATA.exit25.i.i

bb.ah:                                            ; preds = %bb.af
  %i.bx = getelementptr i8, ptr %i.ay, i64 56
  %.val4.i24.i.i = load ptr, ptr %i.bx, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit25.i.i

_PyUnicode_DATA.exit25.i.i:                       ; preds = %bb.ah, %bb.ag
  %.0.i23.i.i = phi ptr [ %.0.i.i22.i.i, %bb.ag ], [ %.val4.i24.i.i, %bb.ah ]
  %i.by = load i32, ptr %.0.i23.i.i, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit.i

PyUnicode_READ_CHAR.exit.i:                       ; preds = %_PyUnicode_DATA.exit25.i.i, %_PyUnicode_DATA.exit17.i.i, %_PyUnicode_DATA.exit.i.i
  %.0.i64.i = phi i32 [ %i.br, %_PyUnicode_DATA.exit.i.i ], [ %i.bv, %_PyUnicode_DATA.exit17.i.i ], [ %i.by, %_PyUnicode_DATA.exit25.i.i ] ; 2 uses
  %i.bz = icmp ugt i32 %.0.i64.i, 127
  br i1 %i.bz, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %PyUnicode_READ_CHAR.exit.i
  %i.ca = trunc nuw nsw i32 %.0.i64.i to i8
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.ai, %bb.v, %bb.r
  %.sink.i.i = phi i8 [ %i.ca, %bb.ai ], [ %i.bg, %bb.v ], [ -2, %bb.r ] ; 2 uses
  store i8 %.sink.i.i, ptr %i.at, align 1, !tbaa !205
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split.i.i, %PyUnicode_READ_CHAR.exit.i, %bb.x, %bb.w, %bb.u
  %i.cb = phi i8 [ -1, %bb.w ], [ -1, %bb.u ], [ -1, %bb.x ], [ -1, %PyUnicode_READ_CHAR.exit.i ], [ %.sink.i.i, %.sink.split.i.i ]
  %i.cc = phi i1 [ true, %bb.w ], [ true, %bb.u ], [ true, %bb.x ], [ true, %PyUnicode_READ_CHAR.exit.i ], [ false, %.sink.split.i.i ]
  %i.cd = load i32, ptr %i.ay, align 8, !tbaa !205 ; 2 uses
  %.not.i.i47.i = icmp sgt i32 %i.cd, -1
  br i1 %.not.i.i47.i, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.ce = add nsw i32 %i.cd, -1                   ; 2 uses
  store i32 %i.ce, ptr %i.ay, align 8, !tbaa !205
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @_Py_Dealloc(ptr noundef nonnull %i.ay) #33
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  br i1 %i.cc, label %._crit_edge.loopexit.i, label %.thread72.i

.thread72.i:                                      ; preds = %bb.am, %.thread.i, %.lr.ph.i
  %.133.i = phi i8 [ %i.au, %.lr.ph.i ], [ %i.cb, %bb.am ], [ %i.ar, %.thread.i ] ; 2 uses
  %i.cg = icmp eq i8 %.133.i, -2
  br i1 %i.cg, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.thread72.i
  br i1 %i.ag, label %bb.ap, label %._crit_edge.loopexit.i

bb.ao:                                            ; preds = %.thread72.i
  store i8 %.133.i, ptr %.03078.i, align 1, !tbaa !205
  %i.ch = getelementptr i8, ptr %.03078.i, i64 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.1.i = phi ptr [ %.03078.i, %bb.an ], [ %i.ch, %bb.ao ] ; 2 uses
  %i.ci = getelementptr i8, ptr %.03177.i, i64 1  ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ci, %i.ak
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !536

._crit_edge.loopexit.i:                           ; preds = %bb.ap, %bb.an, %bb.am
  %.031.lcssa.ph.i = phi ptr [ %.03177.i, %bb.an ], [ %i.ak, %bb.ap ], [ %.03177.i, %bb.am ]
  %.030.lcssa.ph.i = phi ptr [ %.03078.i, %bb.an ], [ %.1.i, %bb.ap ], [ %.03078.i, %bb.am ]
  %i.cj = phi i1 [ false, %bb.an ], [ true, %bb.ap ], [ false, %bb.am ]
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !352 ; 2 uses
  %.phi.trans.insert.i = getelementptr i8, ptr %.pre.i, i64 32
  %.val.i48.pre.i = load i32, ptr %.phi.trans.insert.i, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_PyUnicode_DATA.exit44.i
  %.val.i48.i = phi i32 [ %.val.i37.i, %_PyUnicode_DATA.exit44.i ], [ %.val.i48.pre.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.ck = phi ptr [ %i.al, %_PyUnicode_DATA.exit44.i ], [ %.pre.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.031.lcssa.i = phi ptr [ %.0.i.i69, %_PyUnicode_DATA.exit44.i ], [ %.031.lcssa.ph.i, %._crit_edge.loopexit.i ]
  %.030.lcssa.i = phi ptr [ %.0.i42.i, %_PyUnicode_DATA.exit44.i ], [ %.030.lcssa.ph.i, %._crit_edge.loopexit.i ]
  %.029.i = phi i1 [ true, %_PyUnicode_DATA.exit44.i ], [ %i.cj, %._crit_edge.loopexit.i ]
  %i.cl = and i32 %.val.i48.i, 32
  %.not.i49.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i49.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge.i
  %i.cm = and i32 %.val.i48.i, 64
  %.not.i.i50.i = icmp eq i32 %i.cm, 0
  %.0.v.i.i51.i = select i1 %.not.i.i50.i, i64 56, i64 40
  %.0.i.i52.i = getelementptr i8, ptr %i.ck, i64 %.0.v.i.i51.i
  br label %_PyUnicode_DATA.exit55.i

bb.ar:                                            ; preds = %._crit_edge.i
  %i.cn = getelementptr i8, ptr %i.ck, i64 56
  %.val4.i54.i = load ptr, ptr %i.cn, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit55.i

_PyUnicode_DATA.exit55.i:                         ; preds = %bb.ar, %bb.aq
  %.0.i53.i = phi ptr [ %.0.i.i52.i, %bb.aq ], [ %.val4.i54.i, %bb.ar ]
  %i.co = ptrtoint ptr %.030.lcssa.i to i64
  %i.cp = ptrtoint ptr %.0.i53.i to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !279
  %.val.i56.i = load i32, ptr %i.l, align 8       ; 2 uses
  %i.cs = and i32 %.val.i56.i, 32
  %.not.i57.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i57.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_PyUnicode_DATA.exit55.i
  %i.ct = and i32 %.val.i56.i, 64
  %.not.i.i58.i = icmp eq i32 %i.ct, 0
  %.0.v.i.i59.i = select i1 %.not.i.i58.i, i64 56, i64 40
  %.0.i.i60.i = getelementptr i8, ptr %0, i64 %.0.v.i.i59.i
  br label %bb.av

bb.at:                                            ; preds = %_PyUnicode_DATA.exit55.i
  %i.cu = getelementptr i8, ptr %0, i64 56
  %.val4.i62.i = load ptr, ptr %i.cu, align 8, !tbaa !205
  br label %bb.av

bb.au:                                            ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @_PyUnicodeWriter_Dealloc(ptr noundef nonnull %3) #33
  br label %Py_XDECREF.exit101

bb.av:                                            ; preds = %bb.at, %bb.as
  %.0.i61.i = phi ptr [ %.0.i.i60.i, %bb.as ], [ %.val4.i62.i, %bb.at ]
  %i.cv = ptrtoint ptr %.031.lcssa.i to i64
  %i.cw = ptrtoint ptr %.0.i61.i to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  br i1 %.029.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.cy = call ptr @_PyUnicodeWriter_Finish(ptr noundef nonnull %3) #33
  br label %Py_XDECREF.exit101

bb.ax:                                            ; preds = %bb.k, %bb.av
  %.0127 = phi i64 [ %i.cx, %bb.av ], [ 0, %bb.k ] ; 2 uses
  %i.cz = icmp slt i64 %.0127, %.val65
  br i1 %i.cz, label %.lr.ph237, label %Py_XDECREF.exit93

.lr.ph237:                                        ; preds = %bb.ax
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 8 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph237, %Py_DECREF.exit63
  %.0118235 = phi ptr [ null, %.lr.ph237 ], [ %.2120, %Py_DECREF.exit63 ] ; 13 uses
  %.0121232 = phi ptr [ null, %.lr.ph237 ], [ %.2123, %Py_DECREF.exit63 ] ; 6 uses
  %.1128231 = phi i64 [ %.0127, %.lr.ph237 ], [ %.2129, %Py_DECREF.exit63 ] ; 7 uses
  switch i32 %i.q, label %bb.bb [
    i32 1, label %bb.az
    i32 2, label %bb.ba
  ]

bb.az:                                            ; preds = %bb.ay
  %i.de = getelementptr i8, ptr %.0.i, i64 %.1128231
  %i.df = load i8, ptr %i.de, align 1, !tbaa !205
  %i.dg = zext i8 %i.df to i32
  br label %PyUnicode_READ.exit

bb.ba:                                            ; preds = %bb.ay
  %i.dh = getelementptr [2 x i8], ptr %.0.i, i64 %.1128231
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !208
  %i.dj = zext i16 %i.di to i32
  br label %PyUnicode_READ.exit

bb.bb:                                            ; preds = %bb.ay
  %i.dk = getelementptr [4 x i8], ptr %.0.i, i64 %.1128231
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !7
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.az, %bb.ba, %bb.bb
  %.0.i71 = phi i32 [ %i.dg, %bb.az ], [ %i.dj, %bb.ba ], [ %i.dl, %bb.bb ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.dm = call fastcc i32 @charmaptranslate_lookup(i32 noundef %.0.i71, ptr noundef nonnull %1, ptr noundef %i.c, ptr noundef %i.d)
  %.not.i72 = icmp eq i32 %i.dm, 0
  br i1 %.not.i72, label %bb.bc, label %charmaptranslate_output.exit.thread

bb.bc:                                            ; preds = %PyUnicode_READ.exit
  %i.dn = load ptr, ptr %i.c, align 8, !tbaa !194 ; 19 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.bd, label %bb.bj

bb.bd:                                            ; preds = %bb.bc
  %i.dp = load i32, ptr %i.u, align 4, !tbaa !276
  %.not.i27.i = icmp ugt i32 %.0.i71, %i.dp
  br i1 %.not.i27.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dq = load i64, ptr %i.da, align 8, !tbaa !278
  %i.dr = load i64, ptr %i.db, align 8, !tbaa !279 ; 2 uses
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = icmp sgt i64 %i.ds, 0
  br i1 %i.dt, label %.critedge.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.du = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %3, i64 noundef 1, i32 noundef %.0.i71) #33
  %i.dv = icmp slt i32 %i.du, 0
  br i1 %i.dv, label %charmaptranslate_output.exit.thread, label %..critedge_crit_edge.i.i

..critedge_crit_edge.i.i:                         ; preds = %bb.bf
  %.pre.i.i = load i64, ptr %i.db, align 8, !tbaa !279
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %..critedge_crit_edge.i.i, %bb.be
  %i.dw = phi i64 [ %.pre.i.i, %..critedge_crit_edge.i.i ], [ %i.dr, %bb.be ] ; 5 uses
  %i.dx = load i32, ptr %i.dc, align 8, !tbaa !280
  %i.dy = load ptr, ptr %i.dd, align 8, !tbaa !281 ; 3 uses
  switch i32 %i.dx, label %bb.bi [
    i32 1, label %bb.bg
    i32 2, label %bb.bh
  ]

bb.bg:                                            ; preds = %.critedge.i.i
  %i.dz = trunc i32 %.0.i71 to i8
  %i.ea = getelementptr i8, ptr %i.dy, i64 %i.dw
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !205
  %.pre11.i.i = load i64, ptr %i.db, align 8, !tbaa !279
  br label %_PyUnicodeWriter_WriteCharInline.exit.i

bb.bh:                                            ; preds = %.critedge.i.i
  %i.eb = trunc i32 %.0.i71 to i16
  %i.ec = getelementptr [2 x i8], ptr %i.dy, i64 %i.dw
  store i16 %i.eb, ptr %i.ec, align 2, !tbaa !208
  br label %_PyUnicodeWriter_WriteCharInline.exit.i

bb.bi:                                            ; preds = %.critedge.i.i
  %i.ed = getelementptr [4 x i8], ptr %i.dy, i64 %i.dw
  store i32 %.0.i71, ptr %i.ed, align 4, !tbaa !7
  br label %_PyUnicodeWriter_WriteCharInline.exit.i

_PyUnicodeWriter_WriteCharInline.exit.i:          ; preds = %bb.bi, %bb.bh, %bb.bg
  %i.ee = phi i64 [ %.pre11.i.i, %bb.bg ], [ %i.dw, %bb.bh ], [ %i.dw, %bb.bi ]
  %i.ef = add i64 %i.ee, 1
  store i64 %i.ef, ptr %i.db, align 8, !tbaa !279
  br label %bb.ci

bb.bj:                                            ; preds = %bb.bc
  %i.eg = icmp eq ptr %i.dn, @_Py_NoneStruct
  br i1 %i.eg, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.eh = load i32, ptr %i.dn, align 8, !tbaa !205 ; 2 uses
  %.not.i17.i = icmp sgt i32 %i.eh, -1
  br i1 %.not.i17.i, label %bb.bl, label %bb.cj

bb.bl:                                            ; preds = %bb.bk
  %i.ei = add nsw i32 %i.eh, -1                   ; 2 uses
  store i32 %i.ei, ptr %i.dn, align 8, !tbaa !205
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.bm, label %bb.cj

bb.bm:                                            ; preds = %bb.bl
  call void @_Py_Dealloc(ptr noundef nonnull %i.dn) #33
  br label %bb.cj

bb.bn:                                            ; preds = %bb.bj
  %i.ek = getelementptr i8, ptr %i.dn, i64 8
  %.val24.i = load ptr, ptr %i.ek, align 8, !tbaa !197
  %i.el = getelementptr i8, ptr %.val24.i, i64 168
  %.val26.i = load i64, ptr %i.el, align 8, !tbaa !198 ; 2 uses
  %i.em = and i64 %.val26.i, 16777216
  %.not7.i = icmp eq i64 %i.em, 0
  br i1 %.not7.i, label %bb.bz, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.en = load i32, ptr %i.d, align 4, !tbaa !7   ; 5 uses
  %i.eo = load i32, ptr %i.u, align 4, !tbaa !276
  %.not.i28.i = icmp ugt i32 %i.en, %i.eo
  br i1 %.not.i28.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ep = load i64, ptr %i.da, align 8, !tbaa !278
  %i.eq = load i64, ptr %i.db, align 8, !tbaa !279 ; 2 uses
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = icmp sgt i64 %i.er, 0
  br i1 %i.es, label %.critedge.i32.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.et = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %3, i64 noundef 1, i32 noundef %i.en) #33
  %i.eu = icmp slt i32 %i.et, 0
  br i1 %i.eu, label %bb.bu, label %..critedge_crit_edge.i29.i

..critedge_crit_edge.i29.i:                       ; preds = %bb.bq
  %.pre.i31.i = load i64, ptr %i.db, align 8, !tbaa !279
  br label %.critedge.i32.i

.critedge.i32.i:                                  ; preds = %..critedge_crit_edge.i29.i, %bb.bp
  %i.ev = phi i64 [ %.pre.i31.i, %..critedge_crit_edge.i29.i ], [ %i.eq, %bb.bp ] ; 5 uses
  %i.ew = load i32, ptr %i.dc, align 8, !tbaa !280
  %i.ex = load ptr, ptr %i.dd, align 8, !tbaa !281 ; 3 uses
  switch i32 %i.ew, label %bb.bt [
    i32 1, label %bb.br
    i32 2, label %bb.bs
  ]

bb.br:                                            ; preds = %.critedge.i32.i
  %i.ey = trunc i32 %i.en to i8
  %i.ez = getelementptr i8, ptr %i.ex, i64 %i.ev
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !205
  %.pre11.i35.i = load i64, ptr %i.db, align 8, !tbaa !279
  br label %bb.bw

bb.bs:                                            ; preds = %.critedge.i32.i
  %i.fa = trunc i32 %i.en to i16
  %i.fb = getelementptr [2 x i8], ptr %i.ex, i64 %i.ev
  store i16 %i.fa, ptr %i.fb, align 2, !tbaa !208
  br label %bb.bw

bb.bt:                                            ; preds = %.critedge.i32.i
  %i.fc = getelementptr [4 x i8], ptr %i.ex, i64 %i.ev
  store i32 %i.en, ptr %i.fc, align 4, !tbaa !7
  br label %bb.bw

bb.bu:                                            ; preds = %bb.bq
  %i.fd = load i32, ptr %i.dn, align 8, !tbaa !205 ; 2 uses
  %.not.i15.i = icmp sgt i32 %i.fd, -1
  br i1 %.not.i15.i, label %bb.bv, label %charmaptranslate_output.exit.thread

bb.bv:                                            ; preds = %bb.bu
  %i.fe = add nsw i32 %i.fd, -1                   ; 2 uses
  store i32 %i.fe, ptr %i.dn, align 8, !tbaa !205
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %charmaptranslate_output.exit.thread.sink.split, label %charmaptranslate_output.exit.thread

bb.bw:                                            ; preds = %bb.bt, %bb.bs, %bb.br
  %i.fg = phi i64 [ %.pre11.i35.i, %bb.br ], [ %i.ev, %bb.bs ], [ %i.ev, %bb.bt ]
  %i.fh = add i64 %i.fg, 1
  store i64 %i.fh, ptr %i.db, align 8, !tbaa !279
  %i.fi = load i32, ptr %i.dn, align 8, !tbaa !205 ; 2 uses
  %.not.i13.i = icmp sgt i32 %i.fi, -1
  br i1 %.not.i13.i, label %bb.bx, label %bb.ci

bb.bx:                                            ; preds = %bb.bw
  %i.fj = add nsw i32 %i.fi, -1                   ; 2 uses
  store i32 %i.fj, ptr %i.dn, align 8, !tbaa !205
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.by, label %bb.ci

bb.by:                                            ; preds = %bb.bx
  call void @_Py_Dealloc(ptr noundef nonnull %i.dn) #33
  br label %bb.ci

bb.bz:                                            ; preds = %bb.bn
  %i.fl = and i64 %.val26.i, 268435456
  %.not8.i = icmp eq i64 %i.fl, 0
  br i1 %.not8.i, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  %i.fm = load i32, ptr %i.dn, align 8, !tbaa !205 ; 2 uses
  %.not.i11.i = icmp sgt i32 %i.fm, -1
  br i1 %.not.i11.i, label %bb.cb, label %charmaptranslate_output.exit.thread

bb.cb:                                            ; preds = %bb.ca
  %i.fn = add nsw i32 %i.fm, -1                   ; 2 uses
  store i32 %i.fn, ptr %i.dn, align 8, !tbaa !205
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %charmaptranslate_output.exit.thread.sink.split, label %charmaptranslate_output.exit.thread

bb.cc:                                            ; preds = %bb.bz
  %i.fp = call i32 @_PyUnicodeWriter_WriteStr(ptr noundef nonnull %3, ptr noundef nonnull %i.dn) #33
  %i.fq = icmp slt i32 %i.fp, 0
  %i.fr = load i32, ptr %i.dn, align 8, !tbaa !205 ; 3 uses
  %.not.i9.i = icmp sgt i32 %i.fr, -1             ; 2 uses
  br i1 %i.fq, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  br i1 %.not.i9.i, label %bb.ce, label %charmaptranslate_output.exit.thread

bb.ce:                                            ; preds = %bb.cd
  %i.fs = add nsw i32 %i.fr, -1                   ; 2 uses
  store i32 %i.fs, ptr %i.dn, align 8, !tbaa !205
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %charmaptranslate_output.exit.thread.sink.split, label %charmaptranslate_output.exit.thread

bb.cf:                                            ; preds = %bb.cc
  br i1 %.not.i9.i, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.fu = add nsw i32 %i.fr, -1                   ; 2 uses
  store i32 %i.fu, ptr %i.dn, align 8, !tbaa !205
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  call void @_Py_Dealloc(ptr noundef nonnull %i.dn) #33
  br label %bb.ci

charmaptranslate_output.exit.thread.sink.split:   ; preds = %bb.ce, %bb.cb, %bb.bv
  call void @_Py_Dealloc(ptr noundef nonnull %i.dn) #33
  br label %charmaptranslate_output.exit.thread

charmaptranslate_output.exit.thread:              ; preds = %PyUnicode_READ.exit, %bb.bf, %charmaptranslate_output.exit.thread.sink.split, %bb.bu, %bb.bv, %bb.ca, %bb.cb, %bb.cd, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %bb.eb

bb.ci:                                            ; preds = %bb.by, %bb.cf, %bb.cg, %bb.bw, %bb.bx, %bb.ch, %_PyUnicodeWriter_WriteCharInline.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %i.fw = add nsw i64 %.1128231, 1
  br label %Py_DECREF.exit63, !llvm.loop !537

bb.cj:                                            ; preds = %bb.bk, %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %.0229 = add nsw i64 %.1128231, 1               ; 3 uses
  %i.fx = icmp slt i64 %.0229, %.val65
  br i1 %i.fx, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.cj, %bb.cr
  %.0230 = phi i64 [ %.0, %bb.cr ], [ %.0229, %bb.cj ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  switch i32 %i.q, label %bb.cm [
    i32 1, label %bb.ck
    i32 2, label %bb.cl
  ]

bb.ck:                                            ; preds = %.lr.ph
  %i.fy = getelementptr i8, ptr %.0.i, i64 %.0230
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !205
  %i.ga = zext i8 %i.fz to i32
  br label %PyUnicode_READ.exit75

bb.cl:                                            ; preds = %.lr.ph
  %i.gb = getelementptr [2 x i8], ptr %.0.i, i64 %.0230
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !208
  %i.gd = zext i16 %i.gc to i32
  br label %PyUnicode_READ.exit75

bb.cm:                                            ; preds = %.lr.ph
  %i.ge = getelementptr [4 x i8], ptr %.0.i, i64 %.0230
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !7
  br label %PyUnicode_READ.exit75

PyUnicode_READ.exit75:                            ; preds = %bb.ck, %bb.cl, %bb.cm
  %.0.i74 = phi i32 [ %i.ga, %bb.ck ], [ %i.gd, %bb.cl ], [ %i.gf, %bb.cm ]
  %i.gg = call fastcc i32 @charmaptranslate_lookup(i32 noundef %.0.i74, ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i)
  %.not59 = icmp eq i32 %i.gg, 0
  br i1 %.not59, label %bb.cn, label %.thread136

.thread136:                                       ; preds = %PyUnicode_READ.exit75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  br label %bb.eb

bb.cn:                                            ; preds = %PyUnicode_READ.exit75
  %i.gh = load ptr, ptr %i.h, align 8, !tbaa !194 ; 5 uses
  %.not.i76 = icmp eq ptr %i.gh, null
  br i1 %.not.i76, label %.thread139, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !205 ; 2 uses
end_hunk_2
begin_hunk_3_@unicode_askind:bb.a
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.lcssa, i64 %index ; 2 uses
  %i.cx = shl i64 %index, 2
  %next.gep165 = getelementptr i8, ptr %.082.lcssa, i64 %i.cx ; 2 uses
  %i.cy = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !205, !alias.scope !589
  %wide.load166 = load <4 x i8>, ptr %i.cy, align 1, !tbaa !205, !alias.scope !589
  %i.cz = zext <4 x i8> %wide.load to <4 x i32>
  %i.da = zext <4 x i8> %wide.load166 to <4 x i32>
  %i.db = getelementptr i8, ptr %next.gep165, i64 16
  store <4 x i32> %i.cz, ptr %next.gep165, align 4, !tbaa !7, !alias.scope !592, !noalias !589
  store <4 x i32> %i.da, ptr %i.db, align 4, !tbaa !7, !alias.scope !592, !noalias !589
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !594

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph110.preheader218

.lr.ph110.preheader218:                           ; preds = %vector.memcheck, %.lr.ph110.preheader, %middle.block
  %.1109.ph = phi ptr [ %.0.lcssa, %vector.memcheck ], [ %.0.lcssa, %.lr.ph110.preheader ], [ %i.cu, %middle.block ]
  %.183108.ph = phi ptr [ %.082.lcssa, %vector.memcheck ], [ %.082.lcssa, %.lr.ph110.preheader ], [ %i.cw, %middle.block ]
  br label %.lr.ph110

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %.0106 = phi ptr [ %i.dr, %.lr.ph ], [ %1, %bb.i ] ; 5 uses
  %.082105 = phi ptr [ %i.ds, %.lr.ph ], [ %i.bb, %bb.i ] ; 5 uses
  %i.dd = load i8, ptr %.0106, align 1, !tbaa !205
  %i.de = zext i8 %i.dd to i32
  store i32 %i.de, ptr %.082105, align 4, !tbaa !7
  %i.df = getelementptr i8, ptr %.0106, i64 1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !205
  %i.dh = zext i8 %i.dg to i32
  %i.di = getelementptr i8, ptr %.082105, i64 4
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !7
  %i.dj = getelementptr i8, ptr %.0106, i64 2
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !205
  %i.dl = zext i8 %i.dk to i32
  %i.dm = getelementptr i8, ptr %.082105, i64 8
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !7
  %i.dn = getelementptr i8, ptr %.0106, i64 3
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !205
  %i.dp = zext i8 %i.do to i32
  %i.dq = getelementptr i8, ptr %.082105, i64 12
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !7
  %i.dr = getelementptr i8, ptr %.0106, i64 4     ; 4 uses
  %i.ds = getelementptr i8, ptr %.082105, i64 16  ; 2 uses
  %i.dt = icmp ult ptr %i.dr, %i.cn
  br i1 %i.dt, label %.lr.ph, label %.preheader103.loopexit, !llvm.loop !595

.lr.ph110:                                        ; preds = %.lr.ph110.preheader218, %.lr.ph110
  %.1109 = phi ptr [ %i.du, %.lr.ph110 ], [ %.1109.ph, %.lr.ph110.preheader218 ] ; 2 uses
  %.183108 = phi ptr [ %i.dx, %.lr.ph110 ], [ %.183108.ph, %.lr.ph110.preheader218 ] ; 2 uses
  %i.du = getelementptr i8, ptr %.1109, i64 1     ; 2 uses
  %i.dv = load i8, ptr %.1109, align 1, !tbaa !205
  %i.dw = zext i8 %i.dv to i32
  %i.dx = getelementptr i8, ptr %.183108, i64 4
  store i32 %i.dw, ptr %.183108, align 4, !tbaa !7
  %exitcond.not = icmp eq ptr %i.du, %scevgep
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph110, !llvm.loop !596

.loopexit.sink.split:                             ; preds = %bb.f, %bb.e, %bb.c, %bb.b
  %i.dy = tail call ptr @PyErr_NoMemory() #33
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph110, %.lr.ph118, %.lr.ph126, %middle.block, %middle.block179, %middle.block200, %vec.epilog.middle.block, %.loopexit.sink.split, %.preheader103, %.preheader101, %.preheader
  %.092 = phi ptr [ %i.dy, %.loopexit.sink.split ], [ %i.e, %middle.block200 ], [ %i.bb, %.preheader101 ], [ %i.e, %.preheader ], [ %i.bb, %.preheader103 ], [ %i.bb, %middle.block179 ], [ %i.bb, %middle.block ], [ %i.e, %vec.epilog.middle.block ], [ %i.bb, %.lr.ph118 ], [ %i.e, %.lr.ph126 ], [ %i.bb, %.lr.ph110 ]
  ret ptr %.092
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_Concat(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.b = getelementptr i8, ptr %.val.i, i64 168
  %.val2.i = load i64, ptr %i.b, align 8, !tbaa !198
  %i.c = and i64 %.val2.i, 268435456
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_PyUnicode_EnsureUnicode.exit.thread, label %_PyUnicode_EnsureUnicode.exit

_PyUnicode_EnsureUnicode.exit.thread:             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  %i.e = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.193, ptr noundef nonnull %0) #33 ; 0 uses
  br label %bb.m

_PyUnicode_EnsureUnicode.exit:                    ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 8
  %.val37 = load ptr, ptr %i.f, align 8, !tbaa !197 ; 2 uses
  %i.g = getelementptr i8, ptr %.val37, i64 168
  %.val38 = load i64, ptr %i.g, align 8, !tbaa !198
  %i.h = and i64 %.val38, 268435456
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_PyUnicode_EnsureUnicode.exit
  %i.i = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  %i.j = getelementptr i8, ptr %.val37, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !378
  %i.l = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.i, ptr noundef nonnull @.str.107, ptr noundef %i.k) #33 ; 0 uses
  br label %bb.m

bb.c:                                             ; preds = %_PyUnicode_EnsureUnicode.exit
  %i.m = icmp eq ptr %0, getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176)
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = tail call ptr @PyUnicode_FromObject(ptr noundef nonnull %1)
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.o = icmp eq ptr %1, getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176)
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @PyUnicode_FromObject(ptr noundef %0)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %0, i64 16
  %.val40 = load i64, ptr %i.q, align 8, !tbaa !207 ; 4 uses
  %i.r = getelementptr i8, ptr %1, i64 16
  %.val39 = load i64, ptr %i.r, align 8, !tbaa !207 ; 3 uses
  %i.s = sub i64 9223372036854775807, %.val39
  %i.t = icmp sgt i64 %.val40, %i.s
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.u, ptr noundef nonnull @.str.108) #33
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.v = add i64 %.val39, %.val40
  %i.w = getelementptr i8, ptr %0, i64 32
  %.val42 = load i32, ptr %i.w, align 8           ; 2 uses
  %i.x = and i32 %.val42, 64
  %.not.i43 = icmp eq i32 %i.x, 0
  br i1 %.not.i43, label %bb.j, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.j:                                             ; preds = %bb.i
  %i.y = lshr i32 %.val42, 2
  %i.z = and i32 %i.y, 7                          ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.z, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 65535, i32 1114111
  %switch.selectcmp5.i = icmp eq i32 %i.z, 1
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 255, i32 %switch.select.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit

PyUnicode_MAX_CHAR_VALUE.exit:                    ; preds = %bb.i, %bb.j
  %.0.i44 = phi i32 [ %switch.select6.i, %bb.j ], [ 127, %bb.i ] ; 2 uses
  %i.aa = getelementptr i8, ptr %1, i64 32
  %.val41 = load i32, ptr %i.aa, align 8          ; 2 uses
  %i.ab = and i32 %.val41, 64
  %.not.i45 = icmp eq i32 %i.ab, 0
  br i1 %.not.i45, label %bb.k, label %PyUnicode_MAX_CHAR_VALUE.exit51

bb.k:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit
  %i.ac = lshr i32 %.val41, 2
  %i.ad = and i32 %i.ac, 7                        ; 2 uses
  %switch.selectcmp.i47 = icmp eq i32 %i.ad, 2
  %switch.select.i48 = select i1 %switch.selectcmp.i47, i32 65535, i32 1114111
  %switch.selectcmp5.i49 = icmp eq i32 %i.ad, 1
  %switch.select6.i50 = select i1 %switch.selectcmp5.i49, i32 255, i32 %switch.select.i48
  %i.ae = tail call i32 @llvm.umax.i32(i32 %.0.i44, i32 %switch.select6.i50)
  br label %PyUnicode_MAX_CHAR_VALUE.exit51

PyUnicode_MAX_CHAR_VALUE.exit51:                  ; preds = %PyUnicode_MAX_CHAR_VALUE.exit, %bb.k
  %.0.i46 = phi i32 [ %i.ae, %bb.k ], [ %.0.i44, %PyUnicode_MAX_CHAR_VALUE.exit ]
  %i.af = tail call ptr @PyUnicode_New(i64 noundef %i.v, i32 noundef %.0.i46) ; 4 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.m, label %bb.l

bb.l:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit51
  %i.ah = tail call fastcc i32 @_copy_characters(ptr noundef nonnull %i.af, i64 noundef 0, ptr noundef %0, i64 noundef 0, i64 noundef %.val40, i32 noundef 0) ; 0 uses
  %i.ai = tail call fastcc i32 @_copy_characters(ptr noundef nonnull %i.af, i64 noundef %.val40, ptr noundef %1, i64 noundef 0, i64 noundef %.val39, i32 noundef 0) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %_PyUnicode_EnsureUnicode.exit.thread, %bb.d, %bb.f, %bb.h, %bb.l, %PyUnicode_MAX_CHAR_VALUE.exit51, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ null, %_PyUnicode_EnsureUnicode.exit.thread ], [ %i.n, %bb.d ], [ %i.p, %bb.f ], [ null, %bb.h ], [ %i.af, %bb.l ], [ null, %PyUnicode_MAX_CHAR_VALUE.exit51 ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local void @PyUnicode_Append(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @PyErr_Occurred() #33
  %.not70 = icmp eq ptr %i.b, null
  br i1 %.not70, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.8, i32 noundef 11351) #33
  br label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !194    ; 15 uses
  %i.d = icmp eq ptr %1, null
  %i.e = icmp eq ptr %i.c, null
  %or.cond = select i1 %i.d, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %.val77 = load ptr, ptr %i.f, align 8, !tbaa !197 ; 2 uses
  %i.g = getelementptr i8, ptr %.val77, i64 168
  %.val79 = load i64, ptr %i.g, align 8, !tbaa !198
  %i.h = and i64 %.val79, 268435456
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.i, align 8, !tbaa !197 ; 2 uses
  %i.j = getelementptr i8, ptr %.val, i64 168
  %.val78 = load i64, ptr %i.j, align 8, !tbaa !198
  %i.k = and i64 %.val78, 268435456
  %.not61 = icmp eq i64 %i.k, 0
  br i1 %.not61, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.l = tail call ptr @PyErr_Occurred() #33
  %.not68 = icmp eq ptr %i.l, null
  br i1 %.not68, label %bb.h, label %bb.ac

bb.h:                                             ; preds = %bb.g
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.8, i32 noundef 11358) #33
  br label %bb.ac

bb.i:                                             ; preds = %bb.f
  %i.m = icmp eq ptr %i.c, getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176)
  br i1 %i.m, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.n = load i32, ptr %i.c, align 8, !tbaa !205  ; 2 uses
  %.not.i73 = icmp sgt i32 %i.n, -1
  br i1 %.not.i73, label %bb.k, label %Py_DECREF.exit74

bb.k:                                             ; preds = %bb.j
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.c, align 8, !tbaa !205
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.l, label %Py_DECREF.exit74

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #33
  br label %Py_DECREF.exit74

Py_DECREF.exit74:                                 ; preds = %bb.j, %bb.k, %bb.l
  %i.q = load i32, ptr %1, align 8, !tbaa !205    ; 2 uses
  %i.r = icmp ugt i32 %i.q, -1073741825
  br i1 %i.r, label %_Py_NewRef.exit, label %bb.m

bb.m:                                             ; preds = %Py_DECREF.exit74
  %i.s = add nuw i32 %i.q, 1
  store i32 %i.s, ptr %1, align 8, !tbaa !205
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %Py_DECREF.exit74, %bb.m
  store ptr %1, ptr %0, align 8, !tbaa !194
  br label %Py_DECREF.exit

bb.n:                                             ; preds = %bb.i
  %i.t = icmp eq ptr %1, getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176)
  br i1 %i.t, label %Py_DECREF.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = getelementptr i8, ptr %i.c, i64 16
  %.val83 = load i64, ptr %i.u, align 8, !tbaa !207 ; 5 uses
  %i.v = getelementptr i8, ptr %1, i64 16
  %.val82 = load i64, ptr %i.v, align 8, !tbaa !207 ; 4 uses
  %i.w = sub i64 9223372036854775807, %.val82
  %i.x = icmp sgt i64 %.val83, %i.w
  br i1 %i.x, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.y = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.y, ptr noundef nonnull @.str.108) #33
  br label %bb.ac

bb.q:                                             ; preds = %bb.o
  %i.z = add i64 %.val82, %.val83                 ; 2 uses
  %.val7.i = load i32, ptr %i.c, align 8, !tbaa !205
  %.not.i87 = icmp eq i32 %.val7.i, 1
  br i1 %.not.i87, label %bb.r, label %_PyUnicode_IsModifiable.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.aa = getelementptr i8, ptr %i.c, i64 24
  %.val8.i = load i64, ptr %i.aa, align 8, !tbaa !217
  %.not4.i = icmp eq i64 %.val8.i, -1
  br i1 %.not4.i, label %bb.s, label %_PyUnicode_IsModifiable.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.ab = getelementptr i8, ptr %i.c, i64 32
  %.val.i = load i32, ptr %i.ab, align 8          ; 3 uses
  %i.ac = and i32 %.val.i, 3
  %.not5.i = icmp eq i32 %i.ac, 0
  %.not10.i.not = icmp eq ptr %.val77, @PyUnicode_Type
  %or.cond100 = and i1 %.not10.i.not, %.not5.i
  %.not99 = icmp eq ptr %.val, @PyUnicode_Type
  %or.cond101 = and i1 %.not99, %or.cond100
  br i1 %or.cond101, label %bb.t, label %_PyUnicode_IsModifiable.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.ad = getelementptr i8, ptr %1, i64 32
  %i.ae = load i32, ptr %i.ad, align 8            ; 2 uses
  %i.af = lshr i32 %i.ae, 2
  %i.ag = and i32 %i.af, 7
  %i.ah = lshr exact i32 %.val.i, 2
  %i.ai = and i32 %i.ah, 7
  %.not64 = icmp samesign ugt i32 %i.ag, %i.ai
  br i1 %.not64, label %_PyUnicode_IsModifiable.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aj = and i32 %.val.i, 64
  %.not65 = icmp ne i32 %i.aj, 0
  %i.ak = and i32 %i.ae, 64
  %.not66 = icmp eq i32 %i.ak, 0
  %or.cond102 = and i1 %.not66, %.not65
  br i1 %or.cond102, label %_PyUnicode_IsModifiable.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.al = tail call fastcc i32 @unicode_resize(ptr noundef %0, i64 noundef %i.z)
  %.not67 = icmp eq i32 %i.al, 0
  br i1 %.not67, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  %i.am = load ptr, ptr %0, align 8, !tbaa !194
  %i.an = tail call fastcc i32 @_copy_characters(ptr noundef %i.am, i64 noundef %.val83, ptr noundef %1, i64 noundef 0, i64 noundef %.val82, i32 noundef 0) ; 0 uses
  br label %Py_DECREF.exit

_PyUnicode_IsModifiable.exit.thread:              ; preds = %bb.u, %bb.s, %bb.r, %bb.q, %bb.t
  %i.ao = getelementptr i8, ptr %i.c, i64 32
  %.val86 = load i32, ptr %i.ao, align 8          ; 2 uses
  %i.ap = and i32 %.val86, 64
  %.not.i88 = icmp eq i32 %i.ap, 0
  br i1 %.not.i88, label %bb.x, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.x:                                             ; preds = %_PyUnicode_IsModifiable.exit.thread
  %i.aq = lshr i32 %.val86, 2
  %i.ar = and i32 %i.aq, 7                        ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.ar, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 65535, i32 1114111
  %switch.selectcmp5.i = icmp eq i32 %i.ar, 1
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 255, i32 %switch.select.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit

PyUnicode_MAX_CHAR_VALUE.exit:                    ; preds = %_PyUnicode_IsModifiable.exit.thread, %bb.x
  %.0.i89 = phi i32 [ %switch.select6.i, %bb.x ], [ 127, %_PyUnicode_IsModifiable.exit.thread ] ; 2 uses
  %i.as = getelementptr i8, ptr %1, i64 32
  %.val85 = load i32, ptr %i.as, align 8          ; 2 uses
  %i.at = and i32 %.val85, 64
  %.not.i90 = icmp eq i32 %i.at, 0
  br i1 %.not.i90, label %bb.y, label %PyUnicode_MAX_CHAR_VALUE.exit96

bb.y:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit
  %i.au = lshr i32 %.val85, 2
  %i.av = and i32 %i.au, 7                        ; 2 uses
  %switch.selectcmp.i92 = icmp eq i32 %i.av, 2
  %switch.select.i93 = select i1 %switch.selectcmp.i92, i32 65535, i32 1114111
  %switch.selectcmp5.i94 = icmp eq i32 %i.av, 1
  %switch.select6.i95 = select i1 %switch.selectcmp5.i94, i32 255, i32 %switch.select.i93
  %i.aw = tail call i32 @llvm.umax.i32(i32 %.0.i89, i32 %switch.select6.i95)
  br label %PyUnicode_MAX_CHAR_VALUE.exit96

PyUnicode_MAX_CHAR_VALUE.exit96:                  ; preds = %PyUnicode_MAX_CHAR_VALUE.exit, %bb.y
  %.0.i91 = phi i32 [ %i.aw, %bb.y ], [ %.0.i89, %PyUnicode_MAX_CHAR_VALUE.exit ]
  %i.ax = tail call ptr @PyUnicode_New(i64 noundef %i.z, i32 noundef %.0.i91) ; 4 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit96
  %i.az = tail call fastcc i32 @_copy_characters(ptr noundef nonnull %i.ax, i64 noundef 0, ptr noundef nonnull %i.c, i64 noundef 0, i64 noundef %.val83, i32 noundef 0) ; 0 uses
  %i.ba = tail call fastcc i32 @_copy_characters(ptr noundef nonnull %i.ax, i64 noundef %.val83, ptr noundef %1, i64 noundef 0, i64 noundef %.val82, i32 noundef 0) ; 0 uses
  %i.bb = load i32, ptr %i.c, align 8, !tbaa !205 ; 2 uses
  %.not.i71 = icmp sgt i32 %i.bb, -1
  br i1 %.not.i71, label %bb.aa, label %Py_DECREF.exit72

bb.aa:                                            ; preds = %bb.z
  %i.bc = add nsw i32 %i.bb, -1                   ; 2 uses
  store i32 %i.bc, ptr %i.c, align 8, !tbaa !205
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.ab, label %Py_DECREF.exit72

bb.ab:                                            ; preds = %bb.aa
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #33
  br label %Py_DECREF.exit72

Py_DECREF.exit72:                                 ; preds = %bb.z, %bb.aa, %bb.ab
  store ptr %i.ax, ptr %0, align 8, !tbaa !194
  br label %Py_DECREF.exit

bb.ac:                                            ; preds = %bb.p, %bb.h, %bb.g, %bb.v, %PyUnicode_MAX_CHAR_VALUE.exit96
  %i.be = load ptr, ptr %0, align 8, !tbaa !194   ; 4 uses
  %.not69 = icmp eq ptr %i.be, null
  br i1 %.not69, label %Py_DECREF.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store ptr null, ptr %0, align 8, !tbaa !194
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !205 ; 2 uses
  %.not.i = icmp sgt i32 %i.bf, -1
  br i1 %.not.i, label %bb.ae, label %Py_DECREF.exit

bb.ae:                                            ; preds = %bb.ad
  %i.bg = add nsw i32 %i.bf, -1                   ; 2 uses
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !205
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.af, label %Py_DECREF.exit

bb.af:                                            ; preds = %bb.ae
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.be) #33
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.w, %Py_DECREF.exit72, %bb.n, %bb.b, %bb.c, %_Py_NewRef.exit
  ret void
}

declare ptr @PyErr_Occurred() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @PyUnicode_AppendAndDel(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  tail call void @PyUnicode_Append(ptr noundef %0, ptr noundef %1)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %Py_XDECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 8, !tbaa !205    ; 2 uses
  %.not.i.i = icmp sgt i32 %i.a, -1
  br i1 %.not.i.i, label %bb.c, label %Py_XDECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.b = add nsw i32 %i.a, -1                     ; 2 uses
  store i32 %i.b, ptr %1, align 8, !tbaa !205
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %Py_XDECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %1) #33
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
end_hunk_3
begin_hunk_4_@make_encode_exception:bb.a
  br i1 %i.m, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.j) #33
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.b
  ret void
}

declare i32 @PyUnicodeEncodeError_SetStart(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @PyUnicodeEncodeError_SetEnd(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @PyUnicodeEncodeError_SetReason(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @PyMapping_GetOptionalItem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @PyErr_ExceptionMatches(ptr noundef) local_unnamed_addr #3

declare i64 @PyLong_AsLong(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @EncodingMap_size(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %.val = load i32, ptr %i.a, align 8, !tbaa !525
  %i.b = getelementptr i8, ptr %0, i64 52
  %.val1 = load i32, ptr %i.b, align 4, !tbaa !527
  %i.c = shl i32 %.val, 4
  %i.d = sext i32 %i.c to i64
  %i.e = add nsw i64 %i.d, 63
  %i.f = shl i32 %.val1, 7
  %i.g = sext i32 %i.f to i64
  %i.h = add nsw i64 %i.e, %i.g
  %i.i = tail call ptr @PyLong_FromLong(i64 noundef %i.h) #33
  ret ptr %i.i
}

declare i64 @PyBytesWriter_GetSize(ptr noundef) local_unnamed_addr #3

declare i32 @PyBytesWriter_Resize(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @charmapencode_lookup(i32 noundef %0, ptr noundef nonnull %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = zext i32 %0 to i64
  %i.c = tail call ptr @PyLong_FromLong(i64 noundef %i.b) #33 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %Py_DECREF.exit17, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 @PyMapping_GetOptionalItem(ptr noundef nonnull %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #33
  %i.f = load i32, ptr %i.c, align 8, !tbaa !205  ; 2 uses
  %.not.i18 = icmp sgt i32 %i.f, -1
  br i1 %.not.i18, label %bb.c, label %Py_DECREF.exit19

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.c, align 8, !tbaa !205
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %Py_DECREF.exit19

bb.d:                                             ; preds = %bb.c
  call void @_Py_Dealloc(ptr noundef nonnull %i.c) #33
  br label %Py_DECREF.exit19

Py_DECREF.exit19:                                 ; preds = %bb.b, %bb.c, %bb.d
  %i.i = icmp eq i32 %i.e, 0
  br i1 %i.i, label %Py_DECREF.exit17, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit19
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !194  ; 5 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr @PyExc_LookupError, align 8, !tbaa !194
  %i.m = call i32 @PyErr_ExceptionMatches(ptr noundef %i.l) #33
  %.not15 = icmp eq i32 %i.m, 0
  br i1 %.not15, label %Py_DECREF.exit17, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @PyErr_Clear() #33
  br label %Py_DECREF.exit17

bb.h:                                             ; preds = %bb.e
  %i.n = icmp eq ptr %i.j, @_Py_NoneStruct
  br i1 %i.n, label %Py_DECREF.exit17, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr i8, ptr %i.j, i64 8
  %.val23 = load ptr, ptr %i.o, align 8, !tbaa !197 ; 2 uses
  %i.p = getelementptr i8, ptr %.val23, i64 168
  %.val25 = load i64, ptr %i.p, align 8, !tbaa !198 ; 2 uses
  %i.q = and i64 %.val25, 16777216
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = call i64 @PyLong_AsLong(ptr noundef nonnull %i.j) #33 ; 2 uses
  %or.cond = icmp ugt i64 %i.r, 255
  br i1 %or.cond, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.s = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  call void @PyErr_SetString(ptr noundef %i.s, ptr noundef nonnull @.str.191) #33
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !194  ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !205  ; 2 uses
  %.not.i16 = icmp sgt i32 %i.u, -1
  br i1 %.not.i16, label %bb.l, label %Py_DECREF.exit17

bb.l:                                             ; preds = %bb.k
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.t, align 8, !tbaa !205
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.m, label %Py_DECREF.exit17

bb.m:                                             ; preds = %bb.l
  call void @_Py_Dealloc(ptr noundef nonnull %i.t) #33
  br label %Py_DECREF.exit17

bb.n:                                             ; preds = %bb.j
  %i.x = trunc nuw i64 %i.r to i8
  store i8 %i.x, ptr %2, align 1, !tbaa !205
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !194
  br label %Py_DECREF.exit17

bb.o:                                             ; preds = %bb.i
  %i.z = and i64 %.val25, 134217728
  %.not14 = icmp eq i64 %i.z, 0
  br i1 %.not14, label %bb.p, label %Py_DECREF.exit17

bb.p:                                             ; preds = %bb.o
  %i.aa = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  %i.ab = getelementptr i8, ptr %.val23, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !378
  %i.ad = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.aa, ptr noundef nonnull @.str.192, ptr noundef %i.ac) #33 ; 0 uses
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !194 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !205 ; 2 uses
  %.not.i = icmp sgt i32 %i.af, -1
  br i1 %.not.i, label %bb.q, label %Py_DECREF.exit17

bb.q:                                             ; preds = %bb.p
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !205
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %Py_DECREF.exit17

bb.r:                                             ; preds = %bb.q
  call void @_Py_Dealloc(ptr noundef nonnull %i.ae) #33
  br label %Py_DECREF.exit17

Py_DECREF.exit17:                                 ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.m, %bb.l, %bb.k, %bb.g, %Py_DECREF.exit19, %bb.f, %bb.h, %bb.n, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ %i.j, %bb.o ], [ @_Py_NoneStruct, %bb.g ], [ @_Py_NoneStruct, %Py_DECREF.exit19 ], [ null, %bb.f ], [ @_Py_NoneStruct, %bb.h ], [ null, %bb.m ], [ %i.y, %bb.n ], [ null, %bb.k ], [ null, %bb.l ], [ null, %bb.p ], [ null, %bb.q ], [ null, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %.2
}

declare i64 @PyBytes_Size(ptr noundef) local_unnamed_addr #3

declare ptr @PyBytes_AsString(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @charmaptranslate_lookup(i32 noundef %0, ptr noundef nonnull %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = zext i32 %0 to i64
  %i.c = tail call ptr @PyLong_FromLong(i64 noundef %i.b) #33 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %Py_DECREF.exit22, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 @PyMapping_GetOptionalItem(ptr noundef nonnull %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #33
  %i.f = load i32, ptr %i.c, align 8, !tbaa !205  ; 2 uses
  %.not.i23 = icmp sgt i32 %i.f, -1
  br i1 %.not.i23, label %bb.c, label %Py_DECREF.exit24

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.c, align 8, !tbaa !205
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %Py_DECREF.exit24

bb.d:                                             ; preds = %bb.c
  call void @_Py_Dealloc(ptr noundef nonnull %i.c) #33
  br label %Py_DECREF.exit24

Py_DECREF.exit24:                                 ; preds = %bb.b, %bb.c, %bb.d
  %i.i = icmp eq i32 %i.e, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %Py_DECREF.exit24
  store ptr null, ptr %2, align 8, !tbaa !194
  br label %Py_DECREF.exit22

bb.f:                                             ; preds = %Py_DECREF.exit24
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !194  ; 6 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr @PyExc_LookupError, align 8, !tbaa !194
  %i.m = call i32 @PyErr_ExceptionMatches(ptr noundef %i.l) #33
  %.not20 = icmp eq i32 %i.m, 0
  br i1 %.not20, label %Py_DECREF.exit22, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @PyErr_Clear() #33
  store ptr null, ptr %2, align 8, !tbaa !194
  br label %Py_DECREF.exit22

bb.i:                                             ; preds = %bb.f
  %i.n = icmp eq ptr %i.j, @_Py_NoneStruct
  br i1 %i.n, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %i.j, ptr %2, align 8, !tbaa !194
  br label %Py_DECREF.exit22

bb.k:                                             ; preds = %bb.i
  %i.o = getelementptr i8, ptr %i.j, i64 8
  %.val27 = load ptr, ptr %i.o, align 8, !tbaa !197
  %i.p = getelementptr i8, ptr %.val27, i64 168
  %.val29 = load i64, ptr %i.p, align 8, !tbaa !198 ; 2 uses
  %i.q = and i64 %.val29, 16777216
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = call i64 @PyLong_AsLong(ptr noundef nonnull %i.j) #33 ; 2 uses
  %or.cond = icmp ugt i64 %i.r, 1114111
  br i1 %or.cond, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.s = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  %i.t = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.s, ptr noundef nonnull @.str.185, i32 noundef 1114112) #33 ; 0 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !194  ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !205  ; 2 uses
  %.not.i21 = icmp sgt i32 %i.v, -1
  br i1 %.not.i21, label %bb.n, label %Py_DECREF.exit22

bb.n:                                             ; preds = %bb.m
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.u, align 8, !tbaa !205
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.o, label %Py_DECREF.exit22

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.u) #33
  br label %Py_DECREF.exit22

bb.p:                                             ; preds = %bb.l
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !194
  store ptr %i.y, ptr %2, align 8, !tbaa !194
  %i.z = trunc nuw nsw i64 %i.r to i32
  store i32 %i.z, ptr %3, align 4, !tbaa !7
  br label %Py_DECREF.exit22

bb.q:                                             ; preds = %bb.k
  %i.aa = and i64 %.val29, 268435456
  %.not19 = icmp eq i64 %i.aa, 0
  br i1 %.not19, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr %i.j, ptr %2, align 8, !tbaa !194
  br label %Py_DECREF.exit22

bb.s:                                             ; preds = %bb.q
  %i.ab = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  call void @PyErr_SetString(ptr noundef %i.ab, ptr noundef nonnull @.str.186) #33
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !194 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !205 ; 2 uses
  %.not.i = icmp sgt i32 %i.ad, -1
  br i1 %.not.i, label %bb.t, label %Py_DECREF.exit22

bb.t:                                             ; preds = %bb.s
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !205
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.u, label %Py_DECREF.exit22

bb.u:                                             ; preds = %bb.t
  call void @_Py_Dealloc(ptr noundef nonnull %i.ac) #33
  br label %Py_DECREF.exit22

Py_DECREF.exit22:                                 ; preds = %bb.u, %bb.t, %bb.s, %bb.o, %bb.n, %bb.m, %bb.e, %bb.h, %bb.j, %bb.r, %bb.g, %bb.p, %bb.a
  %.2 = phi i32 [ -1, %bb.a ], [ 0, %bb.e ], [ 0, %bb.h ], [ -1, %bb.o ], [ 0, %bb.j ], [ -1, %bb.g ], [ 0, %bb.r ], [ 0, %bb.p ], [ -1, %bb.m ], [ -1, %bb.n ], [ -1, %bb.s ], [ -1, %bb.t ], [ -1, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret i32 %.2
}

declare ptr @_PyUnicodeTranslateError_Create(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @PyUnicodeTranslateError_SetStart(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @PyUnicodeTranslateError_SetEnd(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @PyUnicodeTranslateError_SetReason(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @_PyUnicode_IsWhitespace(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc noundef i64 @asciilib_rfind_slice(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef range(i64 2, 1) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #23 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 %3
  %i.b = sub i64 %4, %3                           ; 2 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %asciilib_rfind.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %i.b, %2
  %i.e = icmp slt i64 %2, 2
  %or.cond.i = or i1 %i.e, %i.d
  br i1 %or.cond.i, label %asciilib_rfind.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i64 %2, -1                       ; 6 uses
  %i.g = load i8, ptr %1, align 1, !tbaa !205     ; 5 uses
  %i.h = and i8 %i.g, 63
  %i.i = zext nneg i8 %i.h to i64
  %i.j = shl nuw i64 1, %i.i                      ; 2 uses
  %xtraiter = and i64 %i.f, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i70.i.i.prol.loopexit, label %.lr.ph.i70.i.i.prol

.lr.ph.i70.i.i.prol:                              ; preds = %bb.c
  %i.k = getelementptr i8, ptr %1, i64 %i.f
  %i.l = load i8, ptr %i.k, align 1, !tbaa !205   ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = zext nneg i8 %i.m to i64
  %i.o = shl nuw i64 1, %i.n
  %i.p = or i64 %i.o, %i.j                        ; 2 uses
  %i.q = icmp eq i8 %i.l, %i.g
  %i.r = add nsw i64 %2, -2                       ; 2 uses
  %spec.select.i.i.i.prol = select i1 %i.q, i64 %i.r, i64 %i.f ; 2 uses
  br label %.lr.ph.i70.i.i.prol.loopexit

.lr.ph.i70.i.i.prol.loopexit:                     ; preds = %.lr.ph.i70.i.i.prol, %bb.c
  %.060.i.i.i.unr = phi i64 [ %i.f, %bb.c ], [ %spec.select.i.i.i.prol, %.lr.ph.i70.i.i.prol ]
  %.04759.i.i.i.unr = phi i64 [ %i.f, %bb.c ], [ %i.r, %.lr.ph.i70.i.i.prol ]
  %.04958.i.i.i.unr = phi i64 [ %i.j, %bb.c ], [ %i.p, %.lr.ph.i70.i.i.prol ]
  %.lcssa.unr = phi i64 [ poison, %bb.c ], [ %i.p, %.lr.ph.i70.i.i.prol ]
  %spec.select.i.i.i.lcssa.unr = phi i64 [ poison, %bb.c ], [ %spec.select.i.i.i.prol, %.lr.ph.i70.i.i.prol ]
  %i.s = icmp eq i64 %2, 2
  br i1 %i.s, label %.preheader56.i.i.i, label %.lr.ph.i70.i.i

.preheader56.i.i.i:                               ; preds = %.lr.ph.i70.i.i, %.lr.ph.i70.i.i.prol.loopexit
  %.lcssa = phi i64 [ %.lcssa.unr, %.lr.ph.i70.i.i.prol.loopexit ], [ %i.bh, %.lr.ph.i70.i.i ] ; 2 uses
  %spec.select.i.i.i.lcssa = phi i64 [ %spec.select.i.i.i.lcssa.unr, %.lr.ph.i70.i.i.prol.loopexit ], [ %spec.select.i.i.i.1, %.lr.ph.i70.i.i ]
  %i.t = sub i64 %i.b, %2                         ; 2 uses
  %i.u = icmp sgt i64 %i.t, -1
  br i1 %i.u, label %.lr.ph66.split.us.i.i.i, label %asciilib_rfind.exit

.lr.ph66.split.us.i.i.i:                          ; preds = %.preheader56.i.i.i, %bb.i
  %.14865.us.i.i.i = phi i64 [ %i.as, %bb.i ], [ %i.t, %.preheader56.i.i.i ]
  %.14865.us.i.i.fr.i = freeze i64 %.14865.us.i.i.i ; 6 uses
  %i.v = getelementptr i8, ptr %i.a, i64 %.14865.us.i.i.fr.i ; 4 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !205
  %i.x = icmp eq i8 %i.w, %i.g
  br i1 %i.x, label %.preheader.us.i72.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph66.split.us.i.i.i
  %.not.us.i71.i.i = icmp eq i64 %.14865.us.i.i.fr.i, 0
  br i1 %.not.us.i71.i.i, label %asciilib_rfind.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr i8, ptr %i.v, i64 -1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !205
  %i.aa = and i8 %i.z, 63
  %i.ab = zext nneg i8 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = and i64 %i.ac, %.lcssa
  %.not51.us.i.i.i = icmp eq i64 %i.ad, 0
  %i.ae = select i1 %.not51.us.i.i.i, i64 %2, i64 0
  br label %bb.i

.preheader.us.i72.i.i:                            ; preds = %.lr.ph66.split.us.i.i.i, %bb.f
  %.04662.us.i.i.i = phi i64 [ %i.aj, %bb.f ], [ %i.f, %.lr.ph66.split.us.i.i.i ] ; 4 uses
  %i.af = getelementptr i8, ptr %i.v, i64 %.04662.us.i.i.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !205
  %i.ah = getelementptr i8, ptr %1, i64 %.04662.us.i.i.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !205
  %.not52.us.i.i.i = icmp eq i8 %i.ag, %i.ai
  br i1 %.not52.us.i.i.i, label %bb.f, label %.thread.us.i73.i.i

bb.f:                                             ; preds = %.preheader.us.i72.i.i
  %i.aj = add nsw i64 %.04662.us.i.i.i, -1
  %i.ak = icmp sgt i64 %.04662.us.i.i.i, 1
  br i1 %i.ak, label %.preheader.us.i72.i.i, label %asciilib_fastsearch.exit.i, !llvm.loop !661

.thread.us.i73.i.i:                               ; preds = %.preheader.us.i72.i.i
  %.not53.us.i.i.i = icmp eq i64 %.14865.us.i.i.fr.i, 0
  br i1 %.not53.us.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread.us.i73.i.i
  %i.al = getelementptr i8, ptr %i.v, i64 -1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !205
  %i.an = and i8 %i.am, 63
  %i.ao = zext nneg i8 %i.an to i64
  %i.ap = shl nuw i64 1, %i.ao
  %i.aq = and i64 %i.ap, %.lcssa
  %.not54.us.i.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not54.us.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread.us.i73.i.i
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %spec.select.lcssa.sink.i.i.i = phi i64 [ %spec.select.i.i.i.lcssa, %bb.h ], [ %i.ae, %bb.e ], [ %2, %bb.g ]
  %i.ar = sub nsw i64 %.14865.us.i.i.fr.i, %spec.select.lcssa.sink.i.i.i ; 2 uses
  %i.as = add nsw i64 %i.ar, -1
  %i.at = icmp sgt i64 %i.ar, 0
  br i1 %i.at, label %.lr.ph66.split.us.i.i.i, label %asciilib_rfind.exit, !llvm.loop !662

.lr.ph.i70.i.i:                                   ; preds = %.lr.ph.i70.i.i.prol.loopexit, %.lr.ph.i70.i.i
  %.060.i.i.i = phi i64 [ %spec.select.i.i.i.1, %.lr.ph.i70.i.i ], [ %.060.i.i.i.unr, %.lr.ph.i70.i.i.prol.loopexit ]
  %.04759.i.i.i = phi i64 [ %i.bj, %.lr.ph.i70.i.i ], [ %.04759.i.i.i.unr, %.lr.ph.i70.i.i.prol.loopexit ] ; 4 uses
end_hunk_4
