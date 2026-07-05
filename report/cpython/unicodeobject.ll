inline.NumInlined: 2798
inline.NumDeleted: 306
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_PyUnicode_FindMaxChar:bb.a
  %i.bc = icmp ult ptr %i.s, %i.bb
  br i1 %i.bc, label %.lr.ph.i48, label %.preheader.i30

.preheader.i30:                                   ; preds = %bb.r, %bb.p
  %.034.lcssa.i31 = phi ptr [ %i.s, %bb.p ], [ %i.bh, %bb.r ] ; 2 uses
  %.029.lcssa.i32 = phi i32 [ -128, %bb.p ], [ %.0294982.i55, %bb.r ]
  %.026.lcssa.i33 = phi i32 [ 127, %bb.p ], [ %.0265081.i56, %bb.r ] ; 2 uses
  %i.bd = icmp ult ptr %.034.lcssa.i31, %i.q
  br i1 %i.bd, label %.lr.ph55.split.us.i35, label %PyUnicode_MAX_CHAR_VALUE.exit

.lr.ph.i48:                                       ; preds = %bb.p, %bb.r
  %.02650.i49 = phi i32 [ %.0265081.i56, %bb.r ], [ 127, %bb.p ]
  %.02949.i50 = phi i32 [ %.0294982.i55, %bb.r ], [ -128, %bb.p ] ; 3 uses
  %.03448.i51 = phi ptr [ %i.bh, %bb.r ], [ %i.s, %bb.p ] ; 2 uses
  %i.be = load <4 x i32>, ptr %.03448.i51, align 4, !tbaa !7
  %i.bf = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.be) ; 3 uses
  %i.bg = and i32 %i.bf, %.02949.i50
  %.not37.i52 = icmp eq i32 %i.bg, 0
  br i1 %.not37.i52, label %bb.r, label %bb.q

.lr.ph.jt4294901760.i:                            ; preds = %.lr.ph.jt4294967040.i53, %bb.q
  %.not37.jt4294901760.i = icmp ult i32 %i.bf, 65536
  br i1 %.not37.jt4294901760.i, label %bb.r, label %PyUnicode_MAX_CHAR_VALUE.exit

.lr.ph.jt4294967040.i53:                          ; preds = %bb.q
  %.not37.jt4294967040.i54 = icmp ult i32 %i.bf, 256
  br i1 %.not37.jt4294967040.i54, label %bb.r, label %.lr.ph.jt4294901760.i

bb.q:                                             ; preds = %.lr.ph.i48
  switch i32 %.02949.i50, label %.lr.ph.jt4294901760.i [
    i32 -65536, label %PyUnicode_MAX_CHAR_VALUE.exit
    i32 -128, label %.lr.ph.jt4294967040.i53
  ], !llvm.loop !298

bb.r:                                             ; preds = %.lr.ph.jt4294967040.i53, %.lr.ph.jt4294901760.i, %.lr.ph.i48
  %.0294982.i55 = phi i32 [ -65536, %.lr.ph.jt4294901760.i ], [ -256, %.lr.ph.jt4294967040.i53 ], [ %.02949.i50, %.lr.ph.i48 ] ; 2 uses
  %.0265081.i56 = phi i32 [ 65535, %.lr.ph.jt4294901760.i ], [ 255, %.lr.ph.jt4294967040.i53 ], [ %.02650.i49, %.lr.ph.i48 ] ; 2 uses
  %i.bh = getelementptr i8, ptr %.03448.i51, i64 16 ; 3 uses
  %i.bi = icmp ult ptr %i.bh, %i.bb
  br i1 %i.bi, label %.lr.ph.i48, label %.preheader.i30

.outer.i45:                                       ; preds = %bb.t, %.lr.ph55.split.us.i35
  %.us-phi.i46 = phi i32 [ %.332.ph68.i37, %.lr.ph55.split.us.i35 ], [ %.433.us.i42, %bb.t ]
  %.us-phi60.i47 = phi i32 [ %.3.ph69.i36, %.lr.ph55.split.us.i35 ], [ %.4.us.i43, %bb.t ] ; 2 uses
  %i.bj = getelementptr i8, ptr %.236.ph67.i38, i64 4 ; 2 uses
  %i.bk = icmp ult ptr %i.bj, %i.q
  br i1 %i.bk, label %.lr.ph55.split.us.i35, label %PyUnicode_MAX_CHAR_VALUE.exit, !llvm.loop !299

.lr.ph55.split.us.i35:                            ; preds = %.preheader.i30, %.outer.i45
  %.3.ph69.i36 = phi i32 [ %.us-phi60.i47, %.outer.i45 ], [ %.026.lcssa.i33, %.preheader.i30 ]
  %.332.ph68.i37 = phi i32 [ %.us-phi.i46, %.outer.i45 ], [ %.029.lcssa.i32, %.preheader.i30 ] ; 3 uses
  %.236.ph67.i38 = phi ptr [ %i.bj, %.outer.i45 ], [ %.034.lcssa.i31, %.preheader.i30 ] ; 2 uses
  %i.bl = load i32, ptr %.236.ph67.i38, align 4, !tbaa !7 ; 2 uses
  %i.bm = and i32 %i.bl, %.332.ph68.i37
  %.not.us62.i39 = icmp eq i32 %i.bm, 0
  br i1 %.not.us62.i39, label %.outer.i45, label %.lr.ph64.i40

.lr.ph64.i40:                                     ; preds = %.lr.ph55.split.us.i35, %bb.t
  %.33253.us63.i41 = phi i32 [ %.433.us.i42, %bb.t ], [ %.332.ph68.i37, %.lr.ph55.split.us.i35 ]
  switch i32 %.33253.us63.i41, label %bb.s [
    i32 -65536, label %PyUnicode_MAX_CHAR_VALUE.exit
    i32 -128, label %bb.t
  ]

bb.s:                                             ; preds = %.lr.ph64.i40
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph64.i40
  %.433.us.i42 = phi i32 [ -65536, %bb.s ], [ -256, %.lr.ph64.i40 ] ; 3 uses
  %.4.us.i43 = phi i32 [ 65535, %bb.s ], [ 255, %.lr.ph64.i40 ]
  %i.bn = and i32 %.433.us.i42, %i.bl
  %.not.us.i44 = icmp eq i32 %i.bn, 0
  br i1 %.not.us.i44, label %.outer.i45, label %.lr.ph64.i40

bb.u:                                             ; preds = %_PyUnicode_DATA.exit
  unreachable

PyUnicode_MAX_CHAR_VALUE.exit:                    ; preds = %bb.q, %.lr.ph.jt4294901760.i, %.outer.i45, %.lr.ph64.i40, %bb.m, %.lr.ph.jt4294967040.i, %.lr.ph.i.jt4294967040, %.outer.i, %.lr.ph64.i, %.thread31.i, %bb.k, %.preheader, %bb.j, %.preheader.i30, %.preheader.i29, %bb.d, %bb.c, %bb.f, %bb.e
  %.0 = phi i32 [ 127, %bb.f ], [ %.026.lcssa.i33, %.preheader.i30 ], [ 127, %bb.e ], [ 127, %bb.c ], [ %.us-phi60.i47, %.outer.i45 ], [ %switch.select6.i, %bb.d ], [ 65535, %bb.m ], [ 255, %bb.j ], [ 1114111, %.lr.ph64.i40 ], [ %.us-phi60.i, %.outer.i ], [ %.026.lcssa.i, %.preheader.i29 ], [ 65535, %.lr.ph64.i ], [ 255, %.thread31.i ], [ 127, %.preheader ], [ 127, %bb.k ], [ 65535, %.lr.ph.i.jt4294967040 ], [ 65535, %.lr.ph.jt4294967040.i ], [ 1114111, %.lr.ph.jt4294901760.i ], [ 1114111, %bb.q ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyUnicode_Copy(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val12 = load i64, ptr %i.b, align 8, !tbaa !198
  %i.c = and i64 %.val12, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.8, i32 noundef 2379) #33
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val13 = load i64, ptr %i.d, align 8, !tbaa !207 ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.val14 = load i32, ptr %i.e, align 8           ; 2 uses
  %i.f = and i32 %.val14, 64
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.d, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.d:                                             ; preds = %bb.c
  %i.g = lshr i32 %.val14, 2
  %i.h = and i32 %i.g, 7                          ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.h, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 65535, i32 1114111
  %switch.selectcmp5.i = icmp eq i32 %i.h, 1
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 255, i32 %switch.select.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit

PyUnicode_MAX_CHAR_VALUE.exit:                    ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %switch.select6.i, %bb.d ], [ 127, %bb.c ]
  %i.i = tail call ptr @PyUnicode_New(i64 noundef %.val13, i32 noundef %.0.i) ; 5 uses
  %.not11 = icmp eq ptr %i.i, null
  br i1 %.not11, label %bb.j, label %bb.e

bb.e:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit
  %i.j = getelementptr i8, ptr %i.i, i64 32
  %.val.i = load i32, ptr %i.j, align 8           ; 2 uses
  %i.k = and i32 %.val.i, 32
  %.not.i15 = icmp eq i32 %i.k, 0
  br i1 %.not.i15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = and i32 %.val.i, 64
  %.not.i.i = icmp eq i32 %i.l, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %i.i, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %i.i, i64 56
  %.val4.i = load ptr, ptr %i.m, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.f, %bb.g
  %.0.i16 = phi ptr [ %.0.i.i, %bb.f ], [ %.val4.i, %bb.g ]
  %.val.i17 = load i32, ptr %i.e, align 8         ; 3 uses
  %i.n = and i32 %.val.i17, 32
  %.not.i18 = icmp eq i32 %i.n, 0
  br i1 %.not.i18, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_PyUnicode_DATA.exit
  %i.o = and i32 %.val.i17, 64
  %.not.i.i19 = icmp eq i32 %i.o, 0
  %.0.v.i.i20 = select i1 %.not.i.i19, i64 56, i64 40
  %.0.i.i21 = getelementptr i8, ptr %0, i64 %.0.v.i.i20
  br label %_PyUnicode_DATA.exit24

bb.i:                                             ; preds = %_PyUnicode_DATA.exit
  %i.p = getelementptr i8, ptr %0, i64 56
  %.val4.i23 = load ptr, ptr %i.p, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit24

_PyUnicode_DATA.exit24:                           ; preds = %bb.h, %bb.i
  %.0.i22 = phi ptr [ %.0.i.i21, %bb.h ], [ %.val4.i23, %bb.i ]
  %i.q = lshr i32 %.val.i17, 2
  %i.r = and i32 %i.q, 7
  %i.s = zext nneg i32 %i.r to i64
  %i.t = mul i64 %.val13, %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i16, ptr align 1 %.0.i22, i64 %i.t, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit, %_PyUnicode_DATA.exit24, %bb.b
  %.0 = phi ptr [ %i.i, %_PyUnicode_DATA.exit24 ], [ null, %bb.b ], [ null, %PyUnicode_MAX_CHAR_VALUE.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_AsUCS4(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(address_is_null, ret: address, provenance) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp slt i64 %2, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.8, i32 noundef 2496) #33
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @as_ucs4(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @as_ucs4(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(address_is_null, ret: address, provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 7                          ; 2 uses
  %i.e = and i32 %i.b, 32
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.b, 64
  %.not.i.i = icmp eq i32 %i.f, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.g, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %.0.i.i, %bb.b ], [ %.val4.i, %bb.c ] ; 12 uses
  %.0.i111 = ptrtoint ptr %.0.i to i64            ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.h, align 8, !tbaa !207 ; 8 uses
  %i.i = icmp ne i32 %3, 0                        ; 3 uses
  %i.j = zext i1 %i.i to i64
  %spec.select = add i64 %.val, %i.j              ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_PyUnicode_DATA.exit
  %i.k = icmp ugt i64 %spec.select, 2305843009213693951
  br i1 %i.k, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = shl nuw nsw i64 %spec.select, 2
  %i.m = tail call ptr @PyMem_Malloc(i64 noundef %i.l) #33 ; 2 uses
  %.not89 = icmp eq ptr %i.m, null
  br i1 %.not89, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.d, %bb.e
  %i.n = tail call ptr @PyErr_NoMemory() #33      ; 0 uses
  br label %bb.n

bb.f:                                             ; preds = %_PyUnicode_DATA.exit
  %i.o = icmp slt i64 %2, %spec.select
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !194
  %i.q = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.p, ptr noundef nonnull @.str.126) #33 ; 0 uses
  %i.r = icmp ne i64 %2, 0
  %or.cond = and i1 %i.r, %i.i
  br i1 %or.cond, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %1, align 4, !tbaa !7
  br label %bb.n

bb.i:                                             ; preds = %bb.f, %bb.e
  %.076 = phi ptr [ %1, %bb.f ], [ %i.m, %bb.e ]  ; 8 uses
  switch i32 %i.d, label %bb.l [
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr i8, ptr %.0.i, i64 %.val
  %i.t = and i64 %.val, -4
  %i.u = getelementptr i8, ptr %.0.i, i64 %i.t    ; 2 uses
  %i.v = icmp ult ptr %.0.i, %i.u
  br i1 %i.v, label %.lr.ph101, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph101
  %.pre = ptrtoint ptr %i.ay to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.j
  %.083.lcssa112.pre-phi = phi i64 [ %.pre, %.preheader.loopexit ], [ %.0.i111, %bb.j ] ; 2 uses
  %.083.lcssa = phi ptr [ %i.ay, %.preheader.loopexit ], [ %.0.i, %bb.j ] ; 7 uses
  %.081.lcssa = phi ptr [ %i.az, %.preheader.loopexit ], [ %.076, %bb.j ] ; 6 uses
  %i.w = icmp ult ptr %.083.lcssa, %i.s
  br i1 %i.w, label %.lr.ph106.preheader, label %.loopexit

.lr.ph106.preheader:                              ; preds = %.preheader
  %i.x = add i64 %.val, %.0.i111                  ; 2 uses
  %i.y = sub i64 %i.x, %.083.lcssa112.pre-phi     ; 4 uses
  %scevgep = getelementptr i8, ptr %.083.lcssa, i64 %i.y ; 2 uses
  %min.iters.check135 = icmp ult i64 %i.y, 20
  br i1 %min.iters.check135, label %.lr.ph106.preheader150, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph106.preheader
  %i.z = sub i64 %i.x, %.083.lcssa112.pre-phi
  %i.aa = shl i64 %i.z, 2
  %scevgep133 = getelementptr i8, ptr %.081.lcssa, i64 %i.aa
  %bound0 = icmp ult ptr %.081.lcssa, %scevgep
  %bound1 = icmp ult ptr %.083.lcssa, %scevgep133
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph106.preheader150, label %vector.ph136

vector.ph136:                                     ; preds = %vector.memcheck
  %n.vec138 = and i64 %i.y, -8                    ; 4 uses
  %i.ab = shl i64 %n.vec138, 2
  %i.ac = getelementptr i8, ptr %.081.lcssa, i64 %i.ab
  %i.ad = getelementptr i8, ptr %.083.lcssa, i64 %n.vec138
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph136
  %index140 = phi i64 [ 0, %vector.ph136 ], [ %index.next145, %vector.body139 ] ; 3 uses
  %i.ae = shl i64 %index140, 2
  %next.gep141 = getelementptr i8, ptr %.081.lcssa, i64 %i.ae ; 2 uses
  %next.gep142 = getelementptr i8, ptr %.083.lcssa, i64 %index140 ; 2 uses
  %i.af = getelementptr i8, ptr %next.gep142, i64 4
  %wide.load143 = load <4 x i8>, ptr %next.gep142, align 1, !tbaa !205, !alias.scope !335
  %wide.load144 = load <4 x i8>, ptr %i.af, align 1, !tbaa !205, !alias.scope !335
  %i.ag = zext <4 x i8> %wide.load143 to <4 x i32>
  %i.ah = zext <4 x i8> %wide.load144 to <4 x i32>
  %i.ai = getelementptr i8, ptr %next.gep141, i64 16
  store <4 x i32> %i.ag, ptr %next.gep141, align 4, !tbaa !7, !alias.scope !338, !noalias !335
  store <4 x i32> %i.ah, ptr %i.ai, align 4, !tbaa !7, !alias.scope !338, !noalias !335
  %index.next145 = add nuw i64 %index140, 8       ; 2 uses
  %i.aj = icmp eq i64 %index.next145, %n.vec138
  br i1 %i.aj, label %middle.block146, label %vector.body139, !llvm.loop !340

middle.block146:                                  ; preds = %vector.body139
  %cmp.n147 = icmp eq i64 %i.y, %n.vec138
  br i1 %cmp.n147, label %.loopexit, label %.lr.ph106.preheader150

.lr.ph106.preheader150:                           ; preds = %vector.memcheck, %.lr.ph106.preheader, %middle.block146
  %.182105.ph = phi ptr [ %.081.lcssa, %vector.memcheck ], [ %.081.lcssa, %.lr.ph106.preheader ], [ %i.ac, %middle.block146 ]
  %.184104.ph = phi ptr [ %.083.lcssa, %vector.memcheck ], [ %.083.lcssa, %.lr.ph106.preheader ], [ %i.ad, %middle.block146 ]
  br label %.lr.ph106

.lr.ph101:                                        ; preds = %bb.j, %.lr.ph101
  %.081100 = phi ptr [ %i.az, %.lr.ph101 ], [ %.076, %bb.j ] ; 5 uses
  %.08399 = phi ptr [ %i.ay, %.lr.ph101 ], [ %.0.i, %bb.j ] ; 5 uses
  %i.ak = load i8, ptr %.08399, align 1, !tbaa !205
  %i.al = zext i8 %i.ak to i32
  store i32 %i.al, ptr %.081100, align 4, !tbaa !7
  %i.am = getelementptr i8, ptr %.08399, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !205
  %i.ao = zext i8 %i.an to i32
  %i.ap = getelementptr i8, ptr %.081100, i64 4
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !7
  %i.aq = getelementptr i8, ptr %.08399, i64 2
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !205
  %i.as = zext i8 %i.ar to i32
  %i.at = getelementptr i8, ptr %.081100, i64 8
  store i32 %i.as, ptr %i.at, align 4, !tbaa !7
  %i.au = getelementptr i8, ptr %.08399, i64 3
  %i.av = load i8, ptr %i.au, align 1, !tbaa !205
  %i.aw = zext i8 %i.av to i32
  %i.ax = getelementptr i8, ptr %.081100, i64 12
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !7
  %i.ay = getelementptr i8, ptr %.08399, i64 4    ; 4 uses
  %i.az = getelementptr i8, ptr %.081100, i64 16  ; 2 uses
  %i.ba = icmp ult ptr %i.ay, %i.u
  br i1 %i.ba, label %.lr.ph101, label %.preheader.loopexit, !llvm.loop !341

.lr.ph106:                                        ; preds = %.lr.ph106.preheader150, %.lr.ph106
  %.182105 = phi ptr [ %i.be, %.lr.ph106 ], [ %.182105.ph, %.lr.ph106.preheader150 ] ; 2 uses
  %.184104 = phi ptr [ %i.bb, %.lr.ph106 ], [ %.184104.ph, %.lr.ph106.preheader150 ] ; 2 uses
  %i.bb = getelementptr i8, ptr %.184104, i64 1   ; 2 uses
  %i.bc = load i8, ptr %.184104, align 1, !tbaa !205
  %i.bd = zext i8 %i.bc to i32
  %i.be = getelementptr i8, ptr %.182105, i64 4
  store i32 %i.bd, ptr %.182105, align 4, !tbaa !7
  %exitcond.not = icmp eq ptr %i.bb, %scevgep
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph106, !llvm.loop !342

bb.k:                                             ; preds = %bb.i
  %i.bf = getelementptr [2 x i8], ptr %.0.i, i64 %.val ; 2 uses
  %.idx = shl i64 %.val, 1                        ; 2 uses
  %i.bg = ashr exact i64 %.idx, 1
  %i.bh = and i64 %i.bg, -4
  %i.bi = getelementptr [2 x i8], ptr %.0.i, i64 %i.bh ; 2 uses
  %i.bj = icmp ult ptr %.0.i, %i.bi
  br i1 %i.bj, label %.lr.ph, label %.preheader91

.preheader91:                                     ; preds = %.lr.ph, %bb.k
  %.079.lcssa = phi ptr [ %.076, %bb.k ], [ %i.cf, %.lr.ph ] ; 3 uses
  %.078.lcssa = phi ptr [ %.0.i, %bb.k ], [ %i.ce, %.lr.ph ] ; 5 uses
  %i.bk = icmp ult ptr %.078.lcssa, %i.bf
  br i1 %i.bk, label %.lr.ph98.preheader, label %.loopexit

.lr.ph98.preheader:                               ; preds = %.preheader91
  %.078.lcssa129 = ptrtoint ptr %.078.lcssa to i64 ; 2 uses
  %i.bl = add i64 %.idx, %.0.i111
  %i.bm = add i64 %.078.lcssa129, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bl, i64 %i.bm)
  %i.bn = xor i64 %.078.lcssa129, -1
  %i.bo = add i64 %umax, %i.bn                    ; 2 uses
  %i.bp = lshr i64 %i.bo, 1
  %i.bq = add nuw i64 %i.bp, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.bo, 14
  br i1 %min.iters.check, label %.lr.ph98.preheader152, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph98.preheader
  %n.vec = and i64 %i.bq, -8                      ; 4 uses
  %i.br = shl i64 %n.vec, 1
  %i.bs = getelementptr i8, ptr %.078.lcssa, i64 %i.br
  %i.bt = shl i64 %n.vec, 2
  %i.bu = getelementptr i8, ptr %.079.lcssa, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bv = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.078.lcssa, i64 %i.bv ; 2 uses
  %i.bw = shl i64 %index, 2
  %next.gep130 = getelementptr i8, ptr %.079.lcssa, i64 %i.bw ; 2 uses
  %i.bx = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !tbaa !208
  %wide.load131 = load <4 x i16>, ptr %i.bx, align 2, !tbaa !208
  %i.by = zext <4 x i16> %wide.load to <4 x i32>
  %i.bz = zext <4 x i16> %wide.load131 to <4 x i32>
  %i.ca = getelementptr i8, ptr %next.gep130, i64 16
  store <4 x i32> %i.by, ptr %next.gep130, align 4, !tbaa !7
  store <4 x i32> %i.bz, ptr %i.ca, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !343

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph98.preheader152

.lr.ph98.preheader152:                            ; preds = %.lr.ph98.preheader, %middle.block
  %.197.ph = phi ptr [ %.078.lcssa, %.lr.ph98.preheader ], [ %i.bs, %middle.block ]
  %.18096.ph = phi ptr [ %.079.lcssa, %.lr.ph98.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph98

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %.07894 = phi ptr [ %i.ce, %.lr.ph ], [ %.0.i, %bb.k ] ; 2 uses
  %.07993 = phi ptr [ %i.cf, %.lr.ph ], [ %.076, %bb.k ] ; 2 uses
  %i.cc = load <4 x i16>, ptr %.07894, align 2, !tbaa !208
  %i.cd = zext <4 x i16> %i.cc to <4 x i32>
  store <4 x i32> %i.cd, ptr %.07993, align 4, !tbaa !7
  %i.ce = getelementptr i8, ptr %.07894, i64 8    ; 3 uses
  %i.cf = getelementptr i8, ptr %.07993, i64 16   ; 2 uses
  %i.cg = icmp ult ptr %i.ce, %i.bi
  br i1 %i.cg, label %.lr.ph, label %.preheader91, !llvm.loop !344

.lr.ph98:                                         ; preds = %.lr.ph98.preheader152, %.lr.ph98
  %.197 = phi ptr [ %i.ch, %.lr.ph98 ], [ %.197.ph, %.lr.ph98.preheader152 ] ; 2 uses
  %.18096 = phi ptr [ %i.ck, %.lr.ph98 ], [ %.18096.ph, %.lr.ph98.preheader152 ] ; 2 uses
  %i.ch = getelementptr i8, ptr %.197, i64 2      ; 2 uses
  %i.ci = load i16, ptr %.197, align 2, !tbaa !208
  %i.cj = zext i16 %i.ci to i32
  %i.ck = getelementptr i8, ptr %.18096, i64 4
  store i32 %i.cj, ptr %.18096, align 4, !tbaa !7
  %i.cl = icmp ult ptr %i.ch, %i.bf
  br i1 %i.cl, label %.lr.ph98, label %.loopexit, !llvm.loop !345

bb.l:                                             ; preds = %bb.i
  %4 = icmp eq i32 %i.d, 4
  tail call void @llvm.assume(i1 %4)
  %i.cm = shl i64 %.val, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.076, ptr align 1 %.0.i, i64 %i.cm, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph98, %.lr.ph106, %middle.block, %middle.block146, %.preheader91, %.preheader, %bb.l
  br i1 %i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit
  %i.cn = getelementptr [4 x i8], ptr %.076, i64 %.val
  store i32 0, ptr %i.cn, align 4, !tbaa !7
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %bb.m, %bb.g, %bb.h, %.thread
  %.0 = phi ptr [ null, %.thread ], [ null, %bb.g ], [ null, %bb.h ], [ %.076, %bb.m ], [ %.076, %.loopexit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_AsUCS4Copy(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @as_ucs4(ptr noundef %0, ptr noundef null, i64 noundef 0, i32 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_FromFormatV(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %struct._PyUnicodeWriter, align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @_PyUnicodeWriter_Init(ptr noundef nonnull %2) #33
  %i.a = call fastcc i32 @unicode_from_format(ptr noundef nonnull %2, ptr noundef %0, ptr noundef %1)
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_PyUnicodeWriter_Dealloc(ptr noundef nonnull %2) #33
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = call ptr @_PyUnicodeWriter_Finish(ptr noundef nonnull %2) #33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.c, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret ptr %.0
}

declare void @_PyUnicodeWriter_Init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @unicode_from_format(ptr noundef initializes((52, 53)) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [26 x i8], align 16               ; 41 uses
  %i.b = alloca [26 x i8], align 16               ; 9 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 70 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #34 ; 5 uses
  %i.d = add i64 %i.c, 100
  %i.e = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !346
  %i.g = add i64 %i.d, %i.f
  store i64 %i.g, ptr %i.e, align 8, !tbaa !346
  %i.h = getelementptr i8, ptr %0, i64 52         ; 8 uses
  store i8 1, ptr %i.h, align 4, !tbaa !347
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.va_copy.p0(ptr nonnull %3, ptr %2)
  %i.i = getelementptr i8, ptr %1, i64 %i.c       ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.thread31.i, %bb.a
  %.021.i = phi ptr [ %1, %bb.a ], [ %i.q, %.thread31.i ] ; 4 uses
  %i.j = icmp ult ptr %.021.i, %i.i
  br i1 %i.j, label %bb.c, label %ucs1lib_find_max_char.exit

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %.021.i to i64
  %i.l = and i64 %i.k, 7
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %.preheader.i, label %.thread31.i

.preheader.i:                                     ; preds = %bb.c, %bb.d
  %.019.i = phi ptr [ %i.m, %bb.d ], [ %.021.i, %bb.c ] ; 4 uses
  %i.m = getelementptr i8, ptr %.019.i, i64 8     ; 2 uses
  %.not26.i = icmp ugt ptr %i.m, %i.i
  br i1 %.not26.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.n = load i64, ptr %.019.i, align 8, !tbaa !193
  %i.o = and i64 %i.n, -9187201950435737472
  %.not27.i = icmp eq i64 %i.o, 0
  br i1 %.not27.i, label %.preheader.i, label %.critedge58, !llvm.loop !220

bb.e:                                             ; preds = %.preheader.i
  %i.p = icmp eq ptr %.019.i, %i.i
  br i1 %i.p, label %ucs1lib_find_max_char.exit, label %.thread31.i

.thread31.i:                                      ; preds = %bb.e, %bb.c
  %.223.i = phi ptr [ %.021.i, %bb.c ], [ %.019.i, %bb.e ] ; 2 uses
  %i.q = getelementptr i8, ptr %.223.i, i64 1
  %i.r = load i8, ptr %.223.i, align 1, !tbaa !205
  %.not28.i = icmp sgt i8 %i.r, -1
  br i1 %.not28.i, label %bb.b, label %.critedge58, !llvm.loop !221

ucs1lib_find_max_char.exit:                       ; preds = %bb.b, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 90 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 45 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.w = getelementptr i8, ptr %0, i64 20         ; 3 uses
  %i.x = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.y = getelementptr i8, ptr %0, i64 32         ; 18 uses
  %i.z = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 8         ; 2 uses
  br label %bb.g

.critedge58:                                      ; preds = %.thread31.i, %bb.d
  %i.ab = icmp sgt i64 %i.c, 0
  br i1 %i.ab, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.critedge58, %bb.f
  %.04074 = phi i64 [ %i.af, %bb.f ], [ 0, %.critedge58 ] ; 3 uses
  %i.ac = getelementptr i8, ptr %1, i64 %.04074
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !205
  %i.ae = icmp sgt i8 %i.ad, -1
  br i1 %i.ae, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.lr.ph
  %i.af = add nuw nsw i64 %.04074, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.c
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !348

.critedge:                                        ; preds = %.lr.ph, %bb.f, %.critedge58
  %.040.lcssa = phi i64 [ 0, %.critedge58 ], [ %i.c, %bb.f ], [ %.04074, %.lr.ph ]
  %i.ag = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  %i.ah = getelementptr i8, ptr %1, i64 %.040.lcssa
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !205
  %i.aj = zext i8 %i.ai to i32
  %i.ak = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ag, ptr noundef nonnull @.str.127, i32 noundef %i.aj) #33 ; 0 uses
  br label %.thread56

bb.g:                                             ; preds = %.backedge, %ucs1lib_find_max_char.exit
  %.037 = phi ptr [ %1, %ucs1lib_find_max_char.exit ], [ %.037.be, %.backedge ] ; 9 uses
  %i.al = load i8, ptr %.037, align 1, !tbaa !205
  switch i8 %i.al, label %bb.ki [
    i8 0, label %.thread56
    i8 37, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr i8, ptr %.037, i64 1      ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !205 ; 2 uses
  %i.ao = icmp eq i8 %i.an, 37
  br i1 %i.ao, label %bb.i, label %.preheader.i46

bb.i:                                             ; preds = %bb.h
  %i.ap = load i32, ptr %i.w, align 4, !tbaa !276
  %.not.i458.i = icmp ult i32 %i.ap, 37
  br i1 %.not.i458.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = load i64, ptr %i.x, align 8, !tbaa !278
  %i.ar = load i64, ptr %i.y, align 8, !tbaa !279 ; 2 uses
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = icmp sgt i64 %i.as, 0
  br i1 %i.at, label %.critedge.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.au = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %0, i64 noundef 1, i32 noundef 37) #33
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %.thread56, label %..critedge_crit_edge.i.i

..critedge_crit_edge.i.i:                         ; preds = %bb.k
  %.pre.i.i = load i64, ptr %i.y, align 8, !tbaa !279
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %..critedge_crit_edge.i.i, %bb.j
  %i.aw = phi i64 [ %.pre.i.i, %..critedge_crit_edge.i.i ], [ %i.ar, %bb.j ] ; 5 uses
  %i.ax = load i32, ptr %i.z, align 8, !tbaa !280
  %i.ay = load ptr, ptr %i.aa, align 8, !tbaa !281 ; 3 uses
  switch i32 %i.ax, label %bb.n [
    i32 1, label %bb.l
    i32 2, label %bb.m
  ]

bb.l:                                             ; preds = %.critedge.i.i
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.aw
  store i8 37, ptr %i.az, align 1, !tbaa !205
  %.pre11.i.i = load i64, ptr %i.y, align 8, !tbaa !279
  br label %_PyUnicodeWriter_WriteCharInline.exit.i

bb.m:                                             ; preds = %.critedge.i.i
  %i.ba = getelementptr [2 x i8], ptr %i.ay, i64 %i.aw
  store i16 37, ptr %i.ba, align 2, !tbaa !208
  br label %_PyUnicodeWriter_WriteCharInline.exit.i

bb.n:                                             ; preds = %.critedge.i.i
  %i.bb = getelementptr [4 x i8], ptr %i.ay, i64 %i.aw
  store i32 37, ptr %i.bb, align 4, !tbaa !7
  br label %_PyUnicodeWriter_WriteCharInline.exit.i

end_hunk_0
begin_hunk_1_@replace_1char_inplace:bb.a
  br i1 %.not33.i43, label %.thread.i55, label %.preheader.preheader.i44

.preheader.preheader.i44:                         ; preds = %bb.ah
  %i.es = getelementptr i8, ptr %.02248.i41, i64 8 ; 3 uses
  %i.et = icmp eq ptr %i.es, %i.em
  br i1 %i.et, label %ucs1lib_replace_1char_inplace.exit, label %bb.ai

bb.ai:                                            ; preds = %.preheader.preheader.i44
  %i.eu = load i32, ptr %i.es, align 4, !tbaa !7
  %i.ev = icmp eq i32 %i.eu, %2
  br i1 %i.ev, label %.thread.i55, label %.preheader.1.i45

.preheader.1.i45:                                 ; preds = %bb.ai
  %i.ew = getelementptr i8, ptr %.02248.i41, i64 12 ; 3 uses
  %i.ex = icmp eq ptr %i.ew, %i.em
  br i1 %i.ex, label %ucs1lib_replace_1char_inplace.exit, label %bb.aj

bb.aj:                                            ; preds = %.preheader.1.i45
  %i.ey = load i32, ptr %i.ew, align 4, !tbaa !7
  %i.ez = icmp eq i32 %i.ey, %2
  br i1 %i.ez, label %.thread.i55, label %.preheader.2.i46

.preheader.2.i46:                                 ; preds = %bb.aj
  %i.fa = getelementptr i8, ptr %.02248.i41, i64 16 ; 3 uses
  %i.fb = icmp eq ptr %i.fa, %i.em
  br i1 %i.fb, label %ucs1lib_replace_1char_inplace.exit, label %bb.ak

bb.ak:                                            ; preds = %.preheader.2.i46
  %i.fc = load i32, ptr %i.fa, align 4, !tbaa !7
  %i.fd = icmp eq i32 %i.fc, %2
  br i1 %i.fd, label %.thread.i55, label %.preheader.3.i47

.preheader.3.i47:                                 ; preds = %bb.ak
  %i.fe = getelementptr i8, ptr %.02248.i41, i64 20 ; 3 uses
  %i.ff = icmp eq ptr %i.fe, %i.em
  br i1 %i.ff, label %ucs1lib_replace_1char_inplace.exit, label %bb.al

bb.al:                                            ; preds = %.preheader.3.i47
  %i.fg = load i32, ptr %i.fe, align 4, !tbaa !7
  %i.fh = icmp eq i32 %i.fg, %2
  br i1 %i.fh, label %.thread.i55, label %.preheader.4.i48

.preheader.4.i48:                                 ; preds = %bb.al
  %i.fi = getelementptr i8, ptr %.02248.i41, i64 24 ; 3 uses
  %i.fj = icmp eq ptr %i.fi, %i.em
  br i1 %i.fj, label %ucs1lib_replace_1char_inplace.exit, label %bb.am

bb.am:                                            ; preds = %.preheader.4.i48
  %i.fk = load i32, ptr %i.fi, align 4, !tbaa !7
  %i.fl = icmp eq i32 %i.fk, %2
  br i1 %i.fl, label %.thread.i55, label %.preheader.5.i49

.preheader.5.i49:                                 ; preds = %bb.am
  %i.fm = getelementptr i8, ptr %.02248.i41, i64 28 ; 3 uses
  %i.fn = icmp eq ptr %i.fm, %i.em
  br i1 %i.fn, label %ucs1lib_replace_1char_inplace.exit, label %bb.an

bb.an:                                            ; preds = %.preheader.5.i49
  %i.fo = load i32, ptr %i.fm, align 4, !tbaa !7
  %i.fp = icmp eq i32 %i.fo, %2
  br i1 %i.fp, label %.thread.i55, label %.preheader.6.i50

.preheader.6.i50:                                 ; preds = %bb.an
  %i.fq = getelementptr i8, ptr %.02248.i41, i64 32 ; 3 uses
  %i.fr = icmp eq ptr %i.fq, %i.em
  br i1 %i.fr, label %ucs1lib_replace_1char_inplace.exit, label %bb.ao

bb.ao:                                            ; preds = %.preheader.6.i50
  %i.fs = load i32, ptr %i.fq, align 4, !tbaa !7
  %i.ft = icmp eq i32 %i.fs, %2
  br i1 %i.ft, label %.thread.i55, label %.preheader.7.i51

.preheader.7.i51:                                 ; preds = %bb.ao
  %i.fu = getelementptr i8, ptr %.02248.i41, i64 36 ; 3 uses
  %i.fv = icmp eq ptr %i.fu, %i.em
  br i1 %i.fv, label %ucs1lib_replace_1char_inplace.exit, label %bb.ap

bb.ap:                                            ; preds = %.preheader.7.i51
  %i.fw = load i32, ptr %i.fu, align 4, !tbaa !7
  %i.fx = icmp eq i32 %i.fw, %2
  br i1 %i.fx, label %.thread.i55, label %.preheader.8.i52

.preheader.8.i52:                                 ; preds = %bb.ap
  %i.fy = getelementptr i8, ptr %.02248.i41, i64 40 ; 3 uses
  %i.fz = icmp eq ptr %i.fy, %i.em
  br i1 %i.fz, label %ucs1lib_replace_1char_inplace.exit, label %bb.aq

bb.aq:                                            ; preds = %.preheader.8.i52
  %i.ga = load i32, ptr %i.fy, align 4, !tbaa !7
  %i.gb = icmp eq i32 %i.ga, %2
  br i1 %i.gb, label %.thread.i55, label %.preheader.9.i53

.preheader.9.i53:                                 ; preds = %bb.aq
  %i.gc = getelementptr i8, ptr %.02248.i41, i64 44 ; 3 uses
  %i.gd = icmp eq ptr %i.gc, %i.em
  br i1 %i.gd, label %ucs1lib_replace_1char_inplace.exit, label %bb.ar

bb.ar:                                            ; preds = %.preheader.9.i53
  %i.ge = load i32, ptr %i.gc, align 4, !tbaa !7
  %i.gf = icmp eq i32 %i.ge, %2
  br i1 %i.gf, label %.thread.i55, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gg = getelementptr i8, ptr %.02248.i41, i64 48 ; 2 uses
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = sub i64 %i.eo, %i.gh
  %i.gj = ashr exact i64 %i.gi, 2
  %i.gk = tail call ptr @wmemchr(ptr noundef %i.gg, i32 noundef %2, i64 noundef %i.gj) #34 ; 2 uses
  %.not41.i54 = icmp eq ptr %i.gk, null
  br i1 %.not41.i54, label %ucs1lib_replace_1char_inplace.exit, label %.thread.i55

.thread.i55:                                      ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %.4.i56 = phi ptr [ %i.gk, %bb.as ], [ %i.eq, %bb.ah ], [ %i.es, %bb.ai ], [ %i.ew, %bb.aj ], [ %i.fa, %bb.ak ], [ %i.fe, %bb.al ], [ %i.fi, %bb.am ], [ %i.fm, %bb.an ], [ %i.fq, %bb.ao ], [ %i.fu, %bb.ap ], [ %i.fy, %bb.aq ], [ %i.gc, %bb.ar ] ; 2 uses
  store i32 %3, ptr %.4.i56, align 4, !tbaa !7
  %i.gl = add nsw i64 %i.ep, -1                   ; 2 uses
  %.not.i57 = icmp eq i64 %i.gl, 0
  br i1 %.not.i57, label %ucs1lib_replace_1char_inplace.exit, label %bb.ag, !llvm.loop !884

ucs1lib_replace_1char_inplace.exit:               ; preds = %.thread.i37, %ucs2lib_fastsearch.exit.i, %bb.ae, %.preheader.9.i36, %.preheader.8.i35, %.preheader.7.i34, %.preheader.6.i33, %.preheader.5.i32, %.preheader.4.i31, %.preheader.3.i30, %.preheader.2.i29, %.preheader.1.i28, %.preheader.preheader.i27, %bb.s, %.thread.i, %bb.q, %.preheader.9.i, %.preheader.8.i, %.preheader.7.i, %.preheader.6.i, %.preheader.5.i, %.preheader.4.i, %.preheader.3.i, %.preheader.2.i, %.preheader.1.i, %.preheader.preheader.i, %bb.e, %.thread.i55, %bb.as, %.preheader.9.i53, %.preheader.8.i52, %.preheader.7.i51, %.preheader.6.i50, %.preheader.5.i49, %.preheader.4.i48, %.preheader.3.i47, %.preheader.2.i46, %.preheader.1.i45, %.preheader.preheader.i44, %bb.ag, %bb.af, %bb.r, %bb.d
  ret void
}

; Function Attrs: nofree nounwind memory(read, argmem: readwrite) uwtable
define internal fastcc i64 @anylib_find(i32 noundef range(i32 0, 8) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, i64 noundef %6, i64 noundef %7) unnamed_addr #29 {
bb.a:
  switch i32 %0, label %bb.l [
    i32 1, label %bb.b
    i32 2, label %bb.h
    i32 4, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %1, i64 32
  %.val24 = load i32, ptr %i.a, align 8
  %i.b = and i32 %.val24, 64
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %4, i64 32
  %.val = load i32, ptr %i.c, align 8
  %i.d = and i32 %.val, 64
  %.not23 = icmp eq i32 %i.d, 0
  br i1 %.not23, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = icmp eq i64 %6, 0
  br i1 %i.e, label %asciilib_find.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call fastcc i64 @asciilib_fastsearch(ptr noundef %2, i64 noundef %3, ptr noundef %5, i64 noundef %6, i32 noundef 1) ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  %i.h = select i1 %i.g, i64 0, i64 %7
  %spec.select.i = add i64 %i.h, %i.f
  br label %asciilib_find.exit

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.i = icmp eq i64 %6, 0
  br i1 %i.i, label %asciilib_find.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = tail call fastcc i64 @ucs1lib_fastsearch(ptr noundef %2, i64 noundef %3, ptr noundef %5, i64 noundef %6, i64 noundef -1, i32 noundef 1) ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  %i.l = select i1 %i.k, i64 0, i64 %7
  %spec.select.i25 = add i64 %i.l, %i.j
  br label %asciilib_find.exit

bb.h:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %6, 0
  br i1 %i.m, label %asciilib_find.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = tail call fastcc i64 @ucs2lib_fastsearch(ptr noundef %2, i64 noundef %3, ptr noundef %5, i64 noundef %6, i64 noundef -1, i32 noundef 1) ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  %i.p = select i1 %i.o, i64 0, i64 %7
  %spec.select.i27 = add i64 %i.p, %i.n
  br label %asciilib_find.exit

bb.j:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %6, 0
  br i1 %i.q, label %asciilib_find.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = tail call fastcc i64 @ucs4lib_fastsearch(ptr noundef %2, i64 noundef %3, ptr noundef %5, i64 noundef %6, i64 noundef -1, i32 noundef 1) ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %i.t = select i1 %i.s, i64 0, i64 %7
  %spec.select.i29 = add i64 %i.t, %i.r
  br label %asciilib_find.exit

bb.l:                                             ; preds = %bb.a
  unreachable

asciilib_find.exit:                               ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.0 = phi i64 [ %7, %bb.h ], [ %7, %bb.d ], [ %7, %bb.f ], [ %spec.select.i, %bb.e ], [ %spec.select.i25, %bb.g ], [ %spec.select.i27, %bb.i ], [ %spec.select.i29, %bb.k ], [ %7, %bb.j ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @unicode_adjust_maxchar(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !194    ; 9 uses
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %.val = load i32, ptr %i.b, align 8             ; 5 uses
  %i.c = and i32 %.val, 64
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %ucs1lib_find_max_char.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 16
  %.val39 = load i64, ptr %i.d, align 8, !tbaa !207 ; 7 uses
  %i.e = lshr i32 %.val, 2
  %i.f = and i32 %i.e, 7                          ; 2 uses
  switch i32 %i.f, label %bb.n [
    i32 1, label %bb.c
    i32 2, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %1 = and i32 %.val, 32
  %.not.i40 = icmp eq i32 %1, 0
  %2 = getelementptr i8, ptr %i.a, i64 56         ; 2 uses
  br i1 %.not.i40, label %bb.d, label %_PyUnicode_DATA.exit

bb.d:                                             ; preds = %bb.c
  %.val4.i = load ptr, ptr %2, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %.val4.i, %bb.d ], [ %2, %bb.c ] ; 2 uses
  %i.g = getelementptr i8, ptr %.0.i, i64 %.val39 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.thread31.i, %_PyUnicode_DATA.exit
  %.021.i = phi ptr [ %.0.i, %_PyUnicode_DATA.exit ], [ %i.o, %.thread31.i ] ; 4 uses
  %i.h = icmp ult ptr %.021.i, %i.g
  br i1 %i.h, label %bb.f, label %ucs1lib_find_max_char.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.i = ptrtoint ptr %.021.i to i64
  %i.j = and i64 %i.i, 7
  %.not.i41 = icmp eq i64 %i.j, 0
  br i1 %.not.i41, label %.preheader.i, label %.thread31.i

.preheader.i:                                     ; preds = %bb.f, %bb.g
  %.019.i = phi ptr [ %i.k, %bb.g ], [ %.021.i, %bb.f ] ; 4 uses
  %i.k = getelementptr i8, ptr %.019.i, i64 8     ; 2 uses
  %.not26.i = icmp ugt ptr %i.k, %i.g
  br i1 %.not26.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.l = load i64, ptr %.019.i, align 8, !tbaa !193
  %i.m = and i64 %i.l, -9187201950435737472
  %.not27.i = icmp eq i64 %i.m, 0
  br i1 %.not27.i, label %.preheader.i, label %ucs1lib_find_max_char.exit, !llvm.loop !220

bb.h:                                             ; preds = %.preheader.i
  %i.n = icmp eq ptr %.019.i, %i.g
  br i1 %i.n, label %ucs1lib_find_max_char.exit.thread, label %.thread31.i

.thread31.i:                                      ; preds = %bb.h, %bb.f
  %.223.i = phi ptr [ %.021.i, %bb.f ], [ %.019.i, %bb.h ] ; 2 uses
  %i.o = getelementptr i8, ptr %.223.i, i64 1
  %i.p = load i8, ptr %.223.i, align 1, !tbaa !205
  %.not28.i = icmp sgt i8 %i.p, -1
  br i1 %.not28.i, label %bb.e, label %ucs1lib_find_max_char.exit, !llvm.loop !221

bb.i:                                             ; preds = %bb.b
  %3 = and i32 %.val, 32
  %.not.i43 = icmp eq i32 %3, 0
  %4 = getelementptr i8, ptr %i.a, i64 56         ; 2 uses
  br i1 %.not.i43, label %bb.j, label %_PyUnicode_DATA.exit49

bb.j:                                             ; preds = %bb.i
  %.val4.i48 = load ptr, ptr %4, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit49

_PyUnicode_DATA.exit49:                           ; preds = %bb.i, %bb.j
  %.0.i47 = phi ptr [ %.val4.i48, %bb.j ], [ %4, %bb.i ] ; 5 uses
  %i.q = getelementptr [2 x i8], ptr %.0.i47, i64 %.val39 ; 2 uses
  %.idx.a = shl i64 %.val39, 1
  %i.r = ashr exact i64 %.idx.a, 1
  %i.s = and i64 %i.r, -4
  %i.t = getelementptr [2 x i8], ptr %.0.i47, i64 %i.s ; 4 uses
  %i.u = icmp ult ptr %.0.i47, %i.t
  br i1 %i.u, label %.lr.ph.i, label %.preheader.i50

.preheader.i50:                                   ; preds = %.loopexit.i, %.loopexit.i.jt4294967040, %.loopexit.i.jt4294901760, %_PyUnicode_DATA.exit49
  %.034.lcssa.i = phi ptr [ %.0.i47, %_PyUnicode_DATA.exit49 ], [ %i.ae, %.loopexit.i.jt4294901760 ], [ %i.ag, %.loopexit.i.jt4294967040 ], [ %i.ac, %.loopexit.i ] ; 2 uses
  %.029.lcssa.i = phi i32 [ -128, %_PyUnicode_DATA.exit49 ], [ -65536, %.loopexit.i.jt4294901760 ], [ -256, %.loopexit.i.jt4294967040 ], [ %.0294982.i, %.loopexit.i ]
  %.026.lcssa.i = phi i32 [ 127, %_PyUnicode_DATA.exit49 ], [ 65535, %.loopexit.i.jt4294901760 ], [ 255, %.loopexit.i.jt4294967040 ], [ %.0265081.i, %.loopexit.i ] ; 2 uses
  %i.v = icmp ult ptr %.034.lcssa.i, %i.q
  br i1 %i.v, label %.lr.ph55.split.us.i, label %ucs2lib_find_max_char.exit

.lr.ph.i:                                         ; preds = %_PyUnicode_DATA.exit49, %.loopexit.i
  %.02650.i = phi i32 [ %.0265081.i, %.loopexit.i ], [ 127, %_PyUnicode_DATA.exit49 ]
  %.02949.i = phi i32 [ %.0294982.i, %.loopexit.i ], [ -128, %_PyUnicode_DATA.exit49 ] ; 3 uses
  %.03448.i = phi ptr [ %i.ac, %.loopexit.i ], [ %.0.i47, %_PyUnicode_DATA.exit49 ] ; 4 uses
  %i.w = load <4 x i16>, ptr %.03448.i, align 2, !tbaa !208
  %i.x = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.w) ; 2 uses
  %i.y = zext i16 %i.x to i32
  %i.z = and i32 %.02949.i, %i.y
  %.not37.i = icmp eq i32 %i.z, 0
  br i1 %.not37.i, label %.loopexit.i, label %bb.k

.lr.ph.i.jt4294967040:                            ; preds = %.loopexit.i.jt4294967040
  %i.aa = load <4 x i16>, ptr %i.ag, align 2, !tbaa !208
  %i.ab = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.aa)
  %.not37.i.jt4294967040 = icmp ult i16 %i.ab, 256
  br i1 %.not37.i.jt4294967040, label %.loopexit.i, label %ucs1lib_find_max_char.exit

.lr.ph.jt4294967040.i:                            ; preds = %bb.k
  %.not37.jt4294967040.i = icmp ult i16 %i.x, 256
  br i1 %.not37.jt4294967040.i, label %.loopexit.i.jt4294967040, label %ucs1lib_find_max_char.exit

bb.k:                                             ; preds = %.lr.ph.i
  switch i32 %.02949.i, label %.loopexit.i.jt4294901760 [
    i32 -256, label %ucs1lib_find_max_char.exit
    i32 -128, label %.lr.ph.jt4294967040.i
  ], !llvm.loop !313

.loopexit.i:                                      ; preds = %.loopexit.i.jt4294901760, %.lr.ph.i.jt4294967040, %.lr.ph.i
  %.03448.i117 = phi ptr [ %.03448.i, %.lr.ph.i ], [ %i.ag, %.lr.ph.i.jt4294967040 ], [ %i.ae, %.loopexit.i.jt4294901760 ]
  %.0294982.i = phi i32 [ %.02949.i, %.lr.ph.i ], [ -256, %.lr.ph.i.jt4294967040 ], [ -65536, %.loopexit.i.jt4294901760 ] ; 2 uses
  %.0265081.i = phi i32 [ %.02650.i, %.lr.ph.i ], [ 255, %.lr.ph.i.jt4294967040 ], [ 65535, %.loopexit.i.jt4294901760 ] ; 2 uses
  %i.ac = getelementptr i8, ptr %.03448.i117, i64 8 ; 3 uses
  %i.ad = icmp ult ptr %i.ac, %i.t
  br i1 %i.ad, label %.lr.ph.i, label %.preheader.i50

.loopexit.i.jt4294901760:                         ; preds = %bb.k
  %i.ae = getelementptr i8, ptr %.03448.i, i64 8  ; 3 uses
  %i.af = icmp ult ptr %i.ae, %i.t
  br i1 %i.af, label %.loopexit.i, label %.preheader.i50

.loopexit.i.jt4294967040:                         ; preds = %.lr.ph.jt4294967040.i
  %i.ag = getelementptr i8, ptr %.03448.i, i64 8  ; 4 uses
  %i.ah = icmp ult ptr %i.ag, %i.t
  br i1 %i.ah, label %.lr.ph.i.jt4294967040, label %.preheader.i50

.outer.i:                                         ; preds = %bb.m, %.lr.ph55.split.us.i
  %.us-phi.i = phi i32 [ %.332.ph68.i, %.lr.ph55.split.us.i ], [ %.433.us.i, %bb.m ]
  %.us-phi60.i = phi i32 [ %.3.ph69.i, %.lr.ph55.split.us.i ], [ %.4.us.i, %bb.m ] ; 2 uses
  %i.ai = getelementptr i8, ptr %.236.ph67.i, i64 2 ; 2 uses
  %i.aj = icmp ult ptr %i.ai, %i.q
  br i1 %i.aj, label %.lr.ph55.split.us.i, label %ucs2lib_find_max_char.exit, !llvm.loop !314

.lr.ph55.split.us.i:                              ; preds = %.preheader.i50, %.outer.i
  %.3.ph69.i = phi i32 [ %.us-phi60.i, %.outer.i ], [ %.026.lcssa.i, %.preheader.i50 ]
  %.332.ph68.i = phi i32 [ %.us-phi.i, %.outer.i ], [ %.029.lcssa.i, %.preheader.i50 ] ; 3 uses
  %.236.ph67.i = phi ptr [ %i.ai, %.outer.i ], [ %.034.lcssa.i, %.preheader.i50 ] ; 2 uses
  %i.ak = load i16, ptr %.236.ph67.i, align 2, !tbaa !208
  %i.al = zext i16 %i.ak to i32                   ; 2 uses
  %i.am = and i32 %.332.ph68.i, %i.al
  %.not.us62.i = icmp eq i32 %i.am, 0
  br i1 %.not.us62.i, label %.outer.i, label %.lr.ph64.i

.lr.ph64.i:                                       ; preds = %.lr.ph55.split.us.i, %bb.m
  %.33253.us63.i = phi i32 [ %.433.us.i, %bb.m ], [ %.332.ph68.i, %.lr.ph55.split.us.i ]
  switch i32 %.33253.us63.i, label %bb.l [
    i32 -256, label %ucs1lib_find_max_char.exit
    i32 -128, label %bb.m
  ]

bb.l:                                             ; preds = %.lr.ph64.i
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph64.i
  %.433.us.i = phi i32 [ -65536, %bb.l ], [ -256, %.lr.ph64.i ] ; 3 uses
  %.4.us.i = phi i32 [ 65535, %bb.l ], [ 255, %.lr.ph64.i ]
  %i.an = and i32 %.433.us.i, %i.al
  %.not.us.i = icmp eq i32 %i.an, 0
  br i1 %.not.us.i, label %.outer.i, label %.lr.ph64.i

ucs2lib_find_max_char.exit:                       ; preds = %.outer.i, %.preheader.i50
  %.2.i = phi i32 [ %.026.lcssa.i, %.preheader.i50 ], [ %.us-phi60.i, %.outer.i ] ; 2 uses
  %i.ao = icmp ult i32 %.2.i, 256
  br i1 %i.ao, label %ucs1lib_find_max_char.exit.thread, label %ucs1lib_find_max_char.exit

bb.n:                                             ; preds = %bb.b
  %5 = icmp eq i32 %i.f, 4
  tail call void @llvm.assume(i1 %5)
  %6 = and i32 %.val, 32
  %.not.i52 = icmp eq i32 %6, 0
  %7 = getelementptr i8, ptr %i.a, i64 56         ; 2 uses
  br i1 %.not.i52, label %bb.o, label %_PyUnicode_DATA.exit58

bb.o:                                             ; preds = %bb.n
  %.val4.i57 = load ptr, ptr %7, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit58

_PyUnicode_DATA.exit58:                           ; preds = %bb.n, %bb.o
  %.0.i56 = phi ptr [ %.val4.i57, %bb.o ], [ %7, %bb.n ] ; 5 uses
  %i.ap = getelementptr [4 x i8], ptr %.0.i56, i64 %.val39 ; 2 uses
  %.idx89 = shl i64 %.val39, 2
  %i.aq = ashr exact i64 %.idx89, 2
  %i.ar = and i64 %i.aq, -4
  %i.as = getelementptr [4 x i8], ptr %.0.i56, i64 %i.ar ; 2 uses
  %i.at = icmp ult ptr %.0.i56, %i.as
  br i1 %i.at, label %.lr.ph.i77, label %.preheader.i59

.preheader.i59:                                   ; preds = %bb.q, %_PyUnicode_DATA.exit58
  %.034.lcssa.i60 = phi ptr [ %.0.i56, %_PyUnicode_DATA.exit58 ], [ %i.ay, %bb.q ] ; 2 uses
  %.029.lcssa.i61 = phi i32 [ -128, %_PyUnicode_DATA.exit58 ], [ %.0294982.i84, %bb.q ]
  %.026.lcssa.i62 = phi i32 [ 127, %_PyUnicode_DATA.exit58 ], [ %.0265081.i85, %bb.q ] ; 2 uses
  %i.au = icmp ult ptr %.034.lcssa.i60, %i.ap
  br i1 %i.au, label %.lr.ph55.split.us.i64, label %ucs1lib_find_max_char.exit.thread

.lr.ph.i77:                                       ; preds = %_PyUnicode_DATA.exit58, %bb.q
  %.02650.i78 = phi i32 [ %.0265081.i85, %bb.q ], [ 127, %_PyUnicode_DATA.exit58 ]
  %.02949.i79 = phi i32 [ %.0294982.i84, %bb.q ], [ -128, %_PyUnicode_DATA.exit58 ] ; 3 uses
  %.03448.i80 = phi ptr [ %i.ay, %bb.q ], [ %.0.i56, %_PyUnicode_DATA.exit58 ] ; 2 uses
  %i.av = load <4 x i32>, ptr %.03448.i80, align 4, !tbaa !7
  %i.aw = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.av) ; 3 uses
  %i.ax = and i32 %i.aw, %.02949.i79
  %.not37.i81 = icmp eq i32 %i.ax, 0
  br i1 %.not37.i81, label %bb.q, label %bb.p

.lr.ph.jt4294901760.i:                            ; preds = %.lr.ph.jt4294967040.i82, %bb.p
  %.not37.jt4294901760.i = icmp ult i32 %i.aw, 65536
  br i1 %.not37.jt4294901760.i, label %bb.q, label %ucs1lib_find_max_char.exit

.lr.ph.jt4294967040.i82:                          ; preds = %bb.p
  %.not37.jt4294967040.i83 = icmp ult i32 %i.aw, 256
  br i1 %.not37.jt4294967040.i83, label %bb.q, label %.lr.ph.jt4294901760.i

bb.p:                                             ; preds = %.lr.ph.i77
  switch i32 %.02949.i79, label %.lr.ph.jt4294901760.i [
    i32 -65536, label %ucs1lib_find_max_char.exit
    i32 -128, label %.lr.ph.jt4294967040.i82
  ], !llvm.loop !298

bb.q:                                             ; preds = %.lr.ph.jt4294967040.i82, %.lr.ph.jt4294901760.i, %.lr.ph.i77
  %.0294982.i84 = phi i32 [ -65536, %.lr.ph.jt4294901760.i ], [ -256, %.lr.ph.jt4294967040.i82 ], [ %.02949.i79, %.lr.ph.i77 ] ; 2 uses
  %.0265081.i85 = phi i32 [ 65535, %.lr.ph.jt4294901760.i ], [ 255, %.lr.ph.jt4294967040.i82 ], [ %.02650.i78, %.lr.ph.i77 ] ; 2 uses
  %i.ay = getelementptr i8, ptr %.03448.i80, i64 16 ; 3 uses
  %i.az = icmp ult ptr %i.ay, %i.as
  br i1 %i.az, label %.lr.ph.i77, label %.preheader.i59

.outer.i74:                                       ; preds = %bb.s, %.lr.ph55.split.us.i64
  %.us-phi.i75 = phi i32 [ %.332.ph68.i66, %.lr.ph55.split.us.i64 ], [ %.433.us.i71, %bb.s ]
  %.us-phi60.i76 = phi i32 [ %.3.ph69.i65, %.lr.ph55.split.us.i64 ], [ %.4.us.i72, %bb.s ] ; 2 uses
  %i.ba = getelementptr i8, ptr %.236.ph67.i67, i64 4 ; 2 uses
  %i.bb = icmp ult ptr %i.ba, %i.ap
  br i1 %i.bb, label %.lr.ph55.split.us.i64, label %ucs1lib_find_max_char.exit.thread, !llvm.loop !299

.lr.ph55.split.us.i64:                            ; preds = %.preheader.i59, %.outer.i74
  %.3.ph69.i65 = phi i32 [ %.us-phi60.i76, %.outer.i74 ], [ %.026.lcssa.i62, %.preheader.i59 ]
  %.332.ph68.i66 = phi i32 [ %.us-phi.i75, %.outer.i74 ], [ %.029.lcssa.i61, %.preheader.i59 ] ; 3 uses
  %.236.ph67.i67 = phi ptr [ %i.ba, %.outer.i74 ], [ %.034.lcssa.i60, %.preheader.i59 ] ; 2 uses
  %i.bc = load i32, ptr %.236.ph67.i67, align 4, !tbaa !7 ; 2 uses
  %i.bd = and i32 %i.bc, %.332.ph68.i66
  %.not.us62.i68 = icmp eq i32 %i.bd, 0
  br i1 %.not.us62.i68, label %.outer.i74, label %.lr.ph64.i69

.lr.ph64.i69:                                     ; preds = %.lr.ph55.split.us.i64, %bb.s
  %.33253.us63.i70 = phi i32 [ %.433.us.i71, %bb.s ], [ %.332.ph68.i66, %.lr.ph55.split.us.i64 ]
  switch i32 %.33253.us63.i70, label %bb.r [
    i32 -65536, label %ucs1lib_find_max_char.exit
    i32 -128, label %bb.s
  ]

bb.r:                                             ; preds = %.lr.ph64.i69
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph64.i69
  %.433.us.i71 = phi i32 [ -65536, %bb.r ], [ -256, %.lr.ph64.i69 ] ; 3 uses
  %.4.us.i72 = phi i32 [ 65535, %bb.r ], [ 255, %.lr.ph64.i69 ]
  %i.be = and i32 %.433.us.i71, %i.bc
  %.not.us.i73 = icmp eq i32 %i.be, 0
  br i1 %.not.us.i73, label %.outer.i74, label %.lr.ph64.i69

ucs1lib_find_max_char.exit.thread:                ; preds = %bb.e, %bb.h, %.outer.i74, %.preheader.i59, %ucs2lib_find_max_char.exit
  %.0 = phi i32 [ %.us-phi60.i76, %.outer.i74 ], [ %.2.i, %ucs2lib_find_max_char.exit ], [ %.026.lcssa.i62, %.preheader.i59 ], [ 127, %bb.h ], [ 127, %bb.e ]
  %i.bf = tail call ptr @PyUnicode_New(i64 noundef %.val39, i32 noundef %.0) ; 3 uses
  %.not38 = icmp eq ptr %i.bf, null
  br i1 %.not38, label %bb.u, label %bb.t

bb.t:                                             ; preds = %ucs1lib_find_max_char.exit.thread
  %i.bg = tail call fastcc i32 @_copy_characters(ptr noundef nonnull %i.bf, i64 noundef 0, ptr noundef %i.a, i64 noundef 0, i64 noundef %.val39, i32 noundef 0) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %ucs1lib_find_max_char.exit.thread
  %i.bh = load i32, ptr %i.a, align 8, !tbaa !205 ; 2 uses
  %.not.i = icmp sgt i32 %i.bh, -1
  br i1 %.not.i, label %bb.v, label %Py_DECREF.exit

bb.v:                                             ; preds = %bb.u
  %i.bi = add nsw i32 %i.bh, -1                   ; 2 uses
  store i32 %i.bi, ptr %i.a, align 8, !tbaa !205
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.w, label %Py_DECREF.exit

bb.w:                                             ; preds = %bb.v
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #33
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.u, %bb.v, %bb.w
  store ptr %i.bf, ptr %0, align 8, !tbaa !194
  br label %ucs1lib_find_max_char.exit

ucs1lib_find_max_char.exit:                       ; preds = %bb.k, %.lr.ph.jt4294967040.i, %.lr.ph.i.jt4294967040, %.lr.ph64.i, %.thread31.i, %bb.g, %bb.p, %.lr.ph.jt4294901760.i, %.lr.ph64.i69, %bb.a, %ucs2lib_find_max_char.exit, %Py_DECREF.exit
  ret void
}

declare ptr @PyTuple_New(i64 noundef) local_unnamed_addr #3

declare i32 @PyList_Reverse(ptr noundef) local_unnamed_addr #3

declare void @_Py_SetImmortal(ptr noundef) local_unnamed_addr #3

declare i32 @PyDict_Pop(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @PyErr_FormatUnraisable(ptr noundef, ...) local_unnamed_addr #3

declare i32 @_PyUnicode_IsPrintable(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @unicode_mod(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val4 = load i64, ptr %i.b, align 8, !tbaa !198
  %i.c = and i64 %.val4, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyUnicode_Format(ptr noundef nonnull %0, ptr noundef %1) #33
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ @_Py_NotImplementedStruct, %bb.a ]
  ret ptr %.0
}

declare ptr @PyUnicode_Format(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @unicode_length(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !207
  ret i64 %.val
}

; Function Attrs: nounwind uwtable
define internal ptr @unicode_repeat(ptr noundef %0, i64 noundef %1) #1 {
bb.a:
  %i.a = icmp slt i64 %1, 1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 1
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call fastcc ptr @unicode_result_unchanged(ptr noundef %0)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val49 = load i64, ptr %i.d, align 8, !tbaa !207 ; 2 uses
  %i.e = udiv i64 9223372036854775807, %1
  %i.f = icmp sgt i64 %.val49, %i.e
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.200) #33
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.h = mul i64 %.val49, %1                      ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.val50 = load i32, ptr %i.i, align 8           ; 2 uses
  %i.j = and i32 %.val50, 64
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.g, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.g:                                             ; preds = %bb.f
  %i.k = lshr i32 %.val50, 2
  %i.l = and i32 %i.k, 7                          ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.l, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 65535, i32 1114111
  %switch.selectcmp5.i = icmp eq i32 %i.l, 1
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 255, i32 %switch.select.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit

PyUnicode_MAX_CHAR_VALUE.exit:                    ; preds = %bb.f, %bb.g
  %.0.i = phi i32 [ %switch.select6.i, %bb.g ], [ 127, %bb.f ]
  %i.m = tail call ptr @PyUnicode_New(i64 noundef %i.h, i32 noundef %.0.i) ; 18 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit
  %.val47 = load i64, ptr %i.d, align 8, !tbaa !207 ; 2 uses
  %i.n = icmp eq i64 %.val47, 1
  %i.o = load i32, ptr %i.i, align 8              ; 5 uses
  %i.p = lshr i32 %i.o, 2
  %i.q = and i32 %i.p, 7                          ; 2 uses
  br i1 %i.n, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.r = and i32 %i.o, 32
  %.not.i51 = icmp eq i32 %i.r, 0
  br i1 %.not.i51, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = and i32 %i.o, 64
  %.not.i.i = icmp eq i32 %i.s, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.k:                                             ; preds = %bb.i
  %i.t = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.t, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.j, %bb.k
  %.0.i52 = phi ptr [ %.0.i.i, %bb.j ], [ %.val4.i, %bb.k ] ; 3 uses
  %i.u = getelementptr i8, ptr %i.m, i64 32
  %.val.i70 = load i32, ptr %i.u, align 8         ; 4 uses
  %i.v = and i32 %.val.i70, 32
  %.not.i71 = icmp eq i32 %i.v, 0                 ; 3 uses
  switch i32 %i.q, label %PyUnicode_READ.exit [
    i32 1, label %PyUnicode_READ.exit.thread
    i32 2, label %PyUnicode_READ.exit.thread96
  ]

PyUnicode_READ.exit.thread:                       ; preds = %_PyUnicode_DATA.exit
  %i.w = load i8, ptr %.0.i52, align 1, !tbaa !205
  br i1 %.not.i71, label %bb.m, label %bb.l

PyUnicode_READ.exit.thread96:                     ; preds = %_PyUnicode_DATA.exit
  %i.x = load i16, ptr %.0.i52, align 2, !tbaa !208 ; 3 uses
  br i1 %.not.i71, label %bb.o, label %bb.n

PyUnicode_READ.exit:                              ; preds = %_PyUnicode_DATA.exit
  %i.y = load i32, ptr %.0.i52, align 4, !tbaa !7 ; 2 uses
  br i1 %.not.i71, label %bb.q, label %bb.p

bb.l:                                             ; preds = %PyUnicode_READ.exit.thread
  %i.z = and i32 %.val.i70, 64
  %.not.i.i56 = icmp eq i32 %i.z, 0
  %.0.v.i.i57 = select i1 %.not.i.i56, i64 56, i64 40
  %.0.i.i58 = getelementptr i8, ptr %i.m, i64 %.0.v.i.i57
  br label %_PyUnicode_DATA.exit61

bb.m:                                             ; preds = %PyUnicode_READ.exit.thread
  %i.aa = getelementptr i8, ptr %i.m, i64 56
  %.val4.i60 = load ptr, ptr %i.aa, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit61

_PyUnicode_DATA.exit61:                           ; preds = %bb.l, %bb.m
  %.0.i59 = phi ptr [ %.0.i.i58, %bb.l ], [ %.val4.i60, %bb.m ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0.i59, i8 %i.w, i64 %1, i1 false)
  br label %.loopexit

bb.n:                                             ; preds = %PyUnicode_READ.exit.thread96
  %i.ab = and i32 %.val.i70, 64
  %.not.i.i64 = icmp eq i32 %i.ab, 0
  %.0.v.i.i65 = select i1 %.not.i.i64, i64 56, i64 40
  %.0.i.i66 = getelementptr i8, ptr %i.m, i64 %.0.v.i.i65
  br label %iter.check

bb.o:                                             ; preds = %PyUnicode_READ.exit.thread96
  %i.ac = getelementptr i8, ptr %i.m, i64 56
  %.val4.i68 = load ptr, ptr %i.ac, align 8, !tbaa !205
  br label %iter.check

iter.check:                                       ; preds = %bb.o, %bb.n
  %.0.i67 = phi ptr [ %.0.i.i66, %bb.n ], [ %.val4.i68, %bb.o ] ; 3 uses
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check110 = icmp ult i64 %1, 16
  br i1 %min.iters.check110, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %1, 12
  %n.vec = and i64 %1, 9223372036854775792        ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.x, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = getelementptr [2 x i8], ptr %.0.i67, i64 %index ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.ad, align 2, !tbaa !208
  store <8 x i16> %broadcast.splat, ptr %i.ae, align 2, !tbaa !208
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !885

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check
end_hunk_1
