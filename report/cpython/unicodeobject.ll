Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/unicodeobject?download=true
inline.NumInlined: 2798
inline.NumDeleted: 306
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 37
begin_hunk_0_@replace:bb.a
  br label %.thread499

.lr.ph664:                                        ; preds = %.lr.ph, %.lr.ph664
  %i.fn = phi i64 [ %i.fx, %.lr.ph664 ], [ %.val.fr, %.lr.ph ] ; 2 uses
  %.1283599663 = phi i64 [ %i.fo, %.lr.ph664 ], [ %.0.i470511, %.lr.ph ]
  %.1281600662 = phi i64 [ %i.fu, %.lr.ph664 ], [ 0, %.lr.ph ] ; 2 uses
  %i.fo = add nsw i64 %.1283599663, -1            ; 2 uses
  %i.fp = mul i64 %i.fn, %i.dk
  %i.fq = getelementptr i8, ptr %.0.i484, i64 %i.fp
  %i.fr = mul i64 %.1281600662, %i.dk
  %i.fs = getelementptr i8, ptr %.2332, i64 %i.fr
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fq, ptr align 1 %i.fs, i64 %i.dk, i1 false)
  %i.ft = add i64 %i.fn, 1                        ; 2 uses
  %i.fu = add nuw nsw i64 %.1281600662, 1         ; 2 uses
  %i.fv = mul i64 %i.ft, %i.dk
  %i.fw = getelementptr i8, ptr %.0.i484, i64 %i.fv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fw, ptr align 1 %.2312, i64 %i.du, i1 false)
  %i.fx = add i64 %i.ft, %.val.fr                 ; 2 uses
  %i.fy = icmp eq i64 %i.fo, 1
  br i1 %i.fy, label %._crit_edge.loopexit, label %.lr.ph664

._crit_edge.loopexit:                             ; preds = %.lr.ph664, %.lr.ph
  %.1281600.lcssa = phi i64 [ 0, %.lr.ph ], [ %i.fu, %.lr.ph664 ]
  %.lcssa = phi i64 [ %.val.fr, %.lr.ph ], [ %i.fx, %.lr.ph664 ]
  %i.fz = mul i64 %.lcssa, %i.dk
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader598
  %.1281.lcssa = phi i64 [ 0, %.preheader598 ], [ %.1281600.lcssa, %._crit_edge.loopexit ] ; 2 uses
  %.4 = phi i64 [ 0, %.preheader598 ], [ %i.fz, %._crit_edge.loopexit ]
  %i.ga = getelementptr i8, ptr %.0.i484, i64 %.4
  %i.gb = mul i64 %.1281.lcssa, %i.dk
  %i.gc = getelementptr i8, ptr %.2332, i64 %i.gb
  %i.gd = sub i64 %.val415, %.1281.lcssa
  %i.ge = mul i64 %i.gd, %i.dk
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ga, ptr align 1 %i.gc, i64 %i.ge, i1 false)
  br label %.thread499

.thread499:                                       ; preds = %.lr.ph619, %bb.ai, %_PyUnicode_DATA.exit469, %bb.bt, %._crit_edge609, %._crit_edge, %.thread
  %i.gf = phi ptr [ %i.av, %.thread ], [ %i.dn, %._crit_edge609 ], [ %i.dn, %bb.bt ], [ %i.dn, %._crit_edge ], [ %i.bi, %_PyUnicode_DATA.exit469 ], [ %i.bi, %bb.ai ], [ %i.bi, %.lr.ph619 ]
  %.4334 = phi ptr [ %.0.i, %.thread ], [ %.2332, %._crit_edge609 ], [ %.2332, %bb.bt ], [ %.2332, %._crit_edge ], [ %.0330, %_PyUnicode_DATA.exit469 ], [ %.0330, %bb.ai ], [ %.0330, %.lr.ph619 ] ; 3 uses
  %.8326 = phi ptr [ %.0.i424, %.thread ], [ %.6324, %._crit_edge609 ], [ %.6324, %bb.bt ], [ %.6324, %._crit_edge ], [ %.2320, %_PyUnicode_DATA.exit469 ], [ %.2320, %bb.ai ], [ %.2320, %.lr.ph619 ] ; 3 uses
  %.4314 = phi ptr [ %.0.i432, %.thread ], [ %.2312, %._crit_edge609 ], [ %.2312, %bb.bt ], [ %.2312, %._crit_edge ], [ %.0310, %_PyUnicode_DATA.exit469 ], [ %.0310, %bb.ai ], [ %.0310, %.lr.ph619 ] ; 3 uses
  %.4306 = phi i32 [ 0, %.thread ], [ %.2304, %._crit_edge609 ], [ %.2304, %bb.bt ], [ %.2304, %._crit_edge ], [ %.0302, %_PyUnicode_DATA.exit469 ], [ %.0302, %bb.ai ], [ %.0302, %.lr.ph619 ] ; 3 uses
  %.8 = phi i32 [ 0, %.thread ], [ %.6300, %._crit_edge609 ], [ %.6300, %bb.bt ], [ %.6300, %._crit_edge ], [ %.2296, %_PyUnicode_DATA.exit469 ], [ %.2296, %bb.ai ], [ %.2296, %.lr.ph619 ] ; 3 uses
  %.4293 = phi i32 [ 0, %.thread ], [ %.2291, %._crit_edge609 ], [ %.2291, %bb.bt ], [ %.2291, %._crit_edge ], [ %.0289, %_PyUnicode_DATA.exit469 ], [ %.0289, %bb.ai ], [ %.0289, %.lr.ph619 ] ; 3 uses
  br i1 %i.ag, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.thread499
  call fastcc void @unicode_adjust_maxchar(ptr noundef %i.a)
  %i.gg = load ptr, ptr %i.a, align 8, !tbaa !194 ; 2 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %.thread490, label %bb.bv

bb.bv:                                            ; preds = %._crit_edge624, %.thread499, %bb.bu
  %i.gi = phi ptr [ %i.gg, %bb.bu ], [ %i.gf, %.thread499 ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %._crit_edge624 ] ; 2 uses
  %.5335 = phi ptr [ %.4334, %bb.bu ], [ %.4334, %.thread499 ], [ %.2332, %._crit_edge624 ]
  %.9327 = phi ptr [ %.8326, %bb.bu ], [ %.8326, %.thread499 ], [ %.6324, %._crit_edge624 ]
  %.5315 = phi ptr [ %.4314, %bb.bu ], [ %.4314, %.thread499 ], [ %.2312, %._crit_edge624 ]
  %.5307 = phi i32 [ %.4306, %bb.bu ], [ %.4306, %.thread499 ], [ %.2304, %._crit_edge624 ]
  %.9 = phi i32 [ %.8, %bb.bu ], [ %.8, %.thread499 ], [ %.6300, %._crit_edge624 ]
  %.5 = phi i32 [ %.4293, %bb.bu ], [ %.4293, %.thread499 ], [ %.2291, %._crit_edge624 ]
  %.not403 = icmp eq i32 %.5307, 0
  br i1 %.not403, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  tail call void @PyMem_Free(ptr noundef %.5335) #33
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.not404 = icmp eq i32 %.9, 0
  br i1 %.not404, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  tail call void @PyMem_Free(ptr noundef %.9327) #33
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.not405 = icmp eq i32 %.5, 0
  br i1 %.not405, label %.thread564, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  tail call void @PyMem_Free(ptr noundef %.5315) #33
  br label %.thread564

.thread531:                                       ; preds = %bb.au, %bb.aq, %bb.am, %anylib_count.exit, %bb.v
  %.10328 = phi ptr [ %.0318, %bb.v ], [ %.4322, %anylib_count.exit ], [ %.4322, %bb.am ], [ %.4322, %bb.aq ], [ %.4322, %bb.au ]
  %.10 = phi i32 [ %.0294, %bb.v ], [ %.4298, %anylib_count.exit ], [ %.4298, %bb.am ], [ %.4298, %bb.aq ], [ %.4298, %bb.au ]
  %.not410 = icmp eq i32 %.10, 0
  br i1 %.not410, label %.thread540, label %bb.cb

bb.cb:                                            ; preds = %.thread531
  tail call void @PyMem_Free(ptr noundef %.10328) #33
  br label %.thread540

.thread540:                                       ; preds = %PyUnicode_READ.exit, %bb.i, %bb.k, %PyUnicode_MAX_CHAR_VALUE.exit, %bb.j, %_PyUnicode_DATA.exit434, %.thread531, %bb.cb
  %i.gj = tail call fastcc ptr @unicode_result_unchanged(ptr noundef nonnull %0)
  br label %.thread564

.thread490.sink.split:                            ; preds = %bb.bi, %bb.bh
  %i.gk = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.gk, ptr noundef nonnull @.str.196) #33
  br label %.thread490

.thread490:                                       ; preds = %.thread490.sink.split, %bb.bj, %bb.ae, %bb.bu
  %.7337 = phi ptr [ %.4334, %bb.bu ], [ %.2332, %bb.bj ], [ %.0330, %bb.ae ], [ %.2332, %.thread490.sink.split ]
  %.11329 = phi ptr [ %.8326, %bb.bu ], [ %.6324, %bb.bj ], [ %.2320, %bb.ae ], [ %.6324, %.thread490.sink.split ] ; 2 uses
  %.7317 = phi ptr [ %.4314, %bb.bu ], [ %.2312, %bb.bj ], [ %.0310, %bb.ae ], [ %.2312, %.thread490.sink.split ] ; 2 uses
  %.7309 = phi i32 [ %.4306, %bb.bu ], [ %.2304, %bb.bj ], [ %.0302, %bb.ae ], [ %.2304, %.thread490.sink.split ]
  %.11 = phi i32 [ %.8, %bb.bu ], [ %.6300, %bb.bj ], [ %.2296, %bb.ae ], [ %.6300, %.thread490.sink.split ] ; 2 uses
  %.7 = phi i32 [ %.4293, %bb.bu ], [ %.2291, %bb.bj ], [ %.0289, %bb.ae ], [ %.2291, %.thread490.sink.split ] ; 2 uses
  %.not406 = icmp eq i32 %.7309, 0
  br i1 %.not406, label %.thread490.thread, label %.thread490.thread576

.thread490.thread576:                             ; preds = %bb.ad, %_PyUnicode_DATA.exit478, %.thread490
  %.7588 = phi i32 [ %.7, %.thread490 ], [ 0, %_PyUnicode_DATA.exit478 ], [ 0, %bb.ad ]
  %.11587 = phi i32 [ %.11, %.thread490 ], [ 0, %_PyUnicode_DATA.exit478 ], [ 0, %bb.ad ]
  %.7317586 = phi ptr [ %.7317, %.thread490 ], [ %.0.i432, %_PyUnicode_DATA.exit478 ], [ %.0.i432, %bb.ad ]
  %.11329585 = phi ptr [ %.11329, %.thread490 ], [ null, %_PyUnicode_DATA.exit478 ], [ null, %bb.ad ]
  %.7337584 = phi ptr [ %.7337, %.thread490 ], [ %i.cx, %_PyUnicode_DATA.exit478 ], [ %i.bg, %bb.ad ]
  tail call void @PyMem_Free(ptr noundef %.7337584) #33
  br label %.thread490.thread

.thread490.thread:                                ; preds = %bb.bb, %bb.az, %bb.x, %.thread490.thread576, %.thread490
  %.7555 = phi i32 [ %.7, %.thread490 ], [ %.7588, %.thread490.thread576 ], [ 0, %bb.az ], [ 0, %bb.x ], [ 0, %bb.bb ]
  %.11554 = phi i32 [ %.11, %.thread490 ], [ %.11587, %.thread490.thread576 ], [ %.4298, %bb.az ], [ %.0294, %bb.x ], [ %.4298, %bb.bb ]
  %.7317553 = phi ptr [ %.7317, %.thread490 ], [ %.7317586, %.thread490.thread576 ], [ null, %bb.az ], [ null, %bb.x ], [ %.0.i432, %bb.bb ]
  %.11329552 = phi ptr [ %.11329, %.thread490 ], [ %.11329585, %.thread490.thread576 ], [ %.4322, %bb.az ], [ %.0318, %bb.x ], [ %.4322, %bb.bb ]
  %.not407 = icmp eq i32 %.11554, 0
  br i1 %.not407, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.thread490.thread
  tail call void @PyMem_Free(ptr noundef %.11329552) #33
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %.thread490.thread
  %.not408 = icmp eq i32 %.7555, 0
  br i1 %.not408, label %.thread564, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  tail call void @PyMem_Free(ptr noundef %.7317553) #33
  br label %.thread564

.thread564:                                       ; preds = %bb.bz, %bb.ca, %bb.ak, %_PyUnicode_DATA.exit461, %bb.u, %PyUnicode_READ.exit453, %bb.cd, %bb.ce, %.thread540
  %.0340 = phi ptr [ %i.gj, %.thread540 ], [ null, %bb.ak ], [ null, %bb.ce ], [ null, %bb.cd ], [ null, %PyUnicode_READ.exit453 ], [ null, %bb.u ], [ null, %_PyUnicode_DATA.exit461 ], [ %i.gi, %bb.ca ], [ %i.gi, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %.0340
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_Split(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
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
  br label %bb.c

_PyUnicode_EnsureUnicode.exit:                    ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.split, label %bb.b

.split:                                           ; preds = %_PyUnicode_EnsureUnicode.exit
  %i.f = tail call fastcc ptr @split(ptr noundef nonnull %0, ptr noundef null, i64 noundef %2)
  br label %bb.c

bb.b:                                             ; preds = %_PyUnicode_EnsureUnicode.exit
  %i.g = getelementptr i8, ptr %1, i64 8
  %.val.i8 = load ptr, ptr %i.g, align 8, !tbaa !197
  %i.h = getelementptr i8, ptr %.val.i8, i64 168
  %.val2.i9 = load i64, ptr %i.h, align 8, !tbaa !198
  %i.i = and i64 %.val2.i9, 268435456
  %.not.i10 = icmp eq i64 %i.i, 0
  br i1 %.not.i10, label %_PyUnicode_EnsureUnicode.exit12.thread, label %.split6

_PyUnicode_EnsureUnicode.exit12.thread:           ; preds = %bb.b
  %i.j = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  %i.k = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.j, ptr noundef nonnull @.str.193, ptr noundef nonnull %1) #33 ; 0 uses
  br label %bb.c

.split6:                                          ; preds = %bb.b
  %i.l = tail call fastcc ptr @split(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %_PyUnicode_EnsureUnicode.exit12.thread, %_PyUnicode_EnsureUnicode.exit.thread, %.split, %.split6
  %.0 = phi ptr [ null, %_PyUnicode_EnsureUnicode.exit.thread ], [ null, %_PyUnicode_EnsureUnicode.exit12.thread ], [ %i.f, %.split ], [ %i.l, %.split6 ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @split(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val100 = load i64, ptr %i.a, align 8, !tbaa !207 ; 75 uses
  %i.b = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 9 uses
  %i.d = lshr i32 %i.c, 2
  %i.e = and i32 %i.d, 7                          ; 5 uses
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %bb.b, label %bb.fg

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %2, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %.val100, -1
  %i.i = sdiv i64 %i.h, 2
  %i.j = add nsw i64 %i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.081 = phi i64 [ %i.j, %bb.c ], [ %2, %bb.b ]  ; 16 uses
  switch i32 %i.e, label %bb.ff [
    i32 1, label %bb.e
    i32 2, label %bb.cp
    i32 4, label %bb.dx
  ]

bb.e:                                             ; preds = %bb.d
  %i.k = and i32 %i.c, 64
  %.not96 = icmp eq i32 %i.k, 0
  %i.l = and i32 %i.c, 32
  %.not.i107 = icmp eq i32 %i.l, 0                ; 2 uses
  br i1 %.not96, label %bb.av, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not.i107, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.0.i.i = getelementptr i8, ptr %0, i64 40
  br label %_PyUnicode_DATA.exit

bb.h:                                             ; preds = %bb.f
  %i.m = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.m, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %.0.i.i, %bb.g ], [ %.val4.i, %bb.h ] ; 5 uses
  %i.n = tail call i64 @llvm.smin.i64(i64 range(i64 -4611686018427387903, -9223372036854775808) %.081, i64 11)
  %i.o = add nsw i64 %i.n, 1
  %i.p = tail call ptr @PyList_New(i64 noundef %i.o) #33, !inline_history !608 ; 10 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %asciilib_split_whitespace.exit, label %.preheader130.i

.preheader130.i:                                  ; preds = %_PyUnicode_DATA.exit
  %i.r = icmp sgt i64 %.081, 0
  br i1 %i.r, label %.preheader129.lr.ph.i, label %.loopexit.i

.preheader129.lr.ph.i:                            ; preds = %.preheader130.i
  %i.s = getelementptr i8, ptr %0, i64 8
  %i.t = getelementptr i8, ptr %i.p, i64 24       ; 2 uses
  br label %.preheader129.i

.preheader129.i:                                  ; preds = %Py_DECREF.exit92.i, %.preheader129.lr.ph.i
  %.0139.i = phi i64 [ 0, %.preheader129.lr.ph.i ], [ %i.bw, %Py_DECREF.exit92.i ] ; 6 uses
  %.071138.i = phi i64 [ 0, %.preheader129.lr.ph.i ], [ %.273.i.lcssa, %Py_DECREF.exit92.i ] ; 3 uses
  %i.u = icmp slt i64 %.071138.i, %.val100
  br i1 %i.u, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.preheader129.i, %bb.k
  %.172136.i = phi i64 [ %i.ae, %bb.k ], [ %.071138.i, %.preheader129.i ] ; 3 uses
  %i.v = getelementptr i8, ptr %.0.i, i64 %.172136.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !205   ; 3 uses
  %i.x = icmp sgt i8 %i.w, -1
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  %i.y = zext nneg i8 %i.w to i64
  %i.z = getelementptr i8, ptr @_Py_ascii_whitespace, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !205
  %i.ab = zext i8 %i.aa to i32
  br label %Py_UNICODE_ISSPACE.exit.i

bb.j:                                             ; preds = %.lr.ph.i
  %i.ac = zext i8 %i.w to i32
  %i.ad = tail call i32 @_PyUnicode_IsWhitespace(i32 noundef %i.ac) #33, !inline_history !608
  br label %Py_UNICODE_ISSPACE.exit.i

Py_UNICODE_ISSPACE.exit.i:                        ; preds = %bb.j, %bb.i
  %.0.i.i104 = phi i32 [ %i.ab, %bb.i ], [ %i.ad, %bb.j ]
  %.not.i105 = icmp eq i32 %.0.i.i104, 0
  br i1 %.not.i105, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %Py_UNICODE_ISSPACE.exit.i
  %i.ae = add i64 %.172136.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ae, %.val100
  br i1 %exitcond.not.i, label %.loopexit.thread.i, label %.lr.ph.i, !llvm.loop !609

.critedge.i:                                      ; preds = %Py_UNICODE_ISSPACE.exit.i, %.preheader129.i
  %.172.lcssa.i = phi i64 [ %.071138.i, %.preheader129.i ], [ %.172136.i, %Py_UNICODE_ISSPACE.exit.i ] ; 5 uses
  %i.af = icmp eq i64 %.172.lcssa.i, %.val100
  br i1 %i.af, label %.loopexit.thread.i, label %.preheader128.i.preheader

.preheader128.i.preheader:                        ; preds = %.critedge.i
  %.273.i1318 = add i64 %.172.lcssa.i, 1          ; 3 uses
  %i.ag = icmp slt i64 %.273.i1318, %.val100
  br i1 %i.ag, label %.lr.ph1320, label %.critedge2.i

.preheader128.i:                                  ; preds = %Py_UNICODE_ISSPACE.exit103.i
  %.273.i = add i64 %.273.i1319, 1                ; 3 uses
  %i.ah = icmp slt i64 %.273.i, %.val100
  br i1 %i.ah, label %.lr.ph1320, label %.critedge2.i, !llvm.loop !610

.lr.ph1320:                                       ; preds = %.preheader128.i.preheader, %.preheader128.i
  %.273.i1319 = phi i64 [ %.273.i, %.preheader128.i ], [ %.273.i1318, %.preheader128.i.preheader ] ; 3 uses
  %i.ai = getelementptr i8, ptr %.0.i, i64 %.273.i1319
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !205 ; 3 uses
  %i.ak = icmp sgt i8 %i.aj, -1
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph1320
  %i.al = zext nneg i8 %i.aj to i64
  %i.am = getelementptr i8, ptr @_Py_ascii_whitespace, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !205
  %i.ao = zext i8 %i.an to i32
  br label %Py_UNICODE_ISSPACE.exit103.i

bb.m:                                             ; preds = %.lr.ph1320
  %i.ap = zext i8 %i.aj to i32
  %i.aq = tail call i32 @_PyUnicode_IsWhitespace(i32 noundef %i.ap) #33, !inline_history !608
  br label %Py_UNICODE_ISSPACE.exit103.i

Py_UNICODE_ISSPACE.exit103.i:                     ; preds = %bb.m, %bb.l
  %.0.i102.i = phi i32 [ %i.ao, %bb.l ], [ %i.aq, %bb.m ]
  %.not81.i = icmp eq i32 %.0.i102.i, 0
  br i1 %.not81.i, label %.preheader128.i, label %Py_UNICODE_ISSPACE.exit103.i..critedge2.i_crit_edge, !llvm.loop !610

Py_UNICODE_ISSPACE.exit103.i..critedge2.i_crit_edge: ; preds = %Py_UNICODE_ISSPACE.exit103.i
  br label %.critedge2.i, !llvm.loop !610

.critedge2.i:                                     ; preds = %.preheader128.i, %Py_UNICODE_ISSPACE.exit103.i..critedge2.i_crit_edge, %.preheader128.i.preheader
  %.273.i.lcssa = phi i64 [ %.273.i1319, %Py_UNICODE_ISSPACE.exit103.i..critedge2.i_crit_edge ], [ %.273.i1318, %.preheader128.i.preheader ], [ %.273.i, %.preheader128.i ] ; 4 uses
  %i.ar = icmp eq i64 %.172.lcssa.i, 0
  %i.as = icmp eq i64 %.273.i.lcssa, %.val100
  %or.cond.i = and i1 %i.ar, %i.as
  br i1 %or.cond.i, label %bb.n, label %bb.q

bb.n:                                             ; preds = %.critedge2.i
  %.val.i103 = load ptr, ptr %i.s, align 8, !tbaa !197
  %.not127.i = icmp eq ptr %.val.i103, @PyUnicode_Type
  br i1 %.not127.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.at = load i32, ptr %0, align 8, !tbaa !205   ; 2 uses
  %i.au = icmp ugt i32 %i.at, -1073741825
  br i1 %i.au, label %Py_INCREF.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = add nuw i32 %i.at, 1
  store i32 %i.av, ptr %0, align 8, !tbaa !205
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %bb.p, %bb.o
  %.val101.i = load ptr, ptr %i.t, align 8, !tbaa !541
  store ptr %0, ptr %.val101.i, align 8, !tbaa !194
  %i.aw = add nuw i64 %.0139.i, 1
  br label %.loopexit.thread.i

bb.q:                                             ; preds = %bb.n, %.critedge2.i
  %i.ax = getelementptr i8, ptr %.0.i, i64 %.172.lcssa.i ; 2 uses
  %i.ay = sub i64 %.273.i.lcssa, %.172.lcssa.i    ; 3 uses
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %_PyUnicode_FromASCII.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = tail call ptr @PyUnicode_New(i64 noundef %i.ay, i32 noundef 127), !inline_history !611 ; 5 uses
  %.not.i104.i = icmp eq ptr %i.ba, null
  br i1 %.not.i104.i, label %Py_DECREF.exit94.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = getelementptr i8, ptr %i.ba, i64 32
  %.val.i.i.i = load i32, ptr %i.bb, align 8      ; 2 uses
  %i.bc = and i32 %.val.i.i.i, 32
  %.not.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = and i32 %.val.i.i.i, 64
  %.not.i.i.i.i = icmp eq i32 %i.bd, 0
  %.0.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 56, i64 40
  %.0.i.i.i.i = getelementptr i8, ptr %i.ba, i64 %.0.v.i.i.i.i
  br label %_PyUnicode_FromASCII.exit.thread120.i

bb.u:                                             ; preds = %bb.s
  %i.be = getelementptr i8, ptr %i.ba, i64 56
  %.val4.i.i.i = load ptr, ptr %i.be, align 8, !tbaa !205
  br label %_PyUnicode_FromASCII.exit.thread120.i

_PyUnicode_FromASCII.exit.thread120.i:            ; preds = %bb.u, %bb.t
  %.0.i.i.i = phi ptr [ %.0.i.i.i.i, %bb.t ], [ %.val4.i.i.i, %bb.u ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i, ptr readonly align 1 %i.ax, i64 %i.ay, i1 false)
  br label %bb.v

_PyUnicode_FromASCII.exit.i:                      ; preds = %bb.q
  %i.bf = load i8, ptr %i.ax, align 1, !tbaa !205 ; 3 uses
  %i.bg = zext nneg i8 %i.bf to i64
  %i.bh = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.bg
  %i.bi = and i8 %i.bf, 127
  %i.bj = zext nneg i8 %i.bi to i64
  %i.bk = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.bj
  %i.bl = icmp slt i8 %i.bf, 0
  %i.bm = select i1 %i.bl, ptr %i.bk, ptr %i.bh   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %Py_DECREF.exit94.i, label %bb.v

bb.v:                                             ; preds = %_PyUnicode_FromASCII.exit.i, %_PyUnicode_FromASCII.exit.thread120.i
  %.0.i105122.i = phi ptr [ %i.ba, %_PyUnicode_FromASCII.exit.thread120.i ], [ %i.bm, %_PyUnicode_FromASCII.exit.i ] ; 7 uses
  %i.bo = icmp samesign ult i64 %.0139.i, 12
  br i1 %i.bo, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.val100.i = load ptr, ptr %i.t, align 8, !tbaa !541
  %i.bp = getelementptr [8 x i8], ptr %.val100.i, i64 %.0139.i
  store ptr %.0.i105122.i, ptr %i.bp, align 8, !tbaa !194
  br label %Py_DECREF.exit92.i

bb.x:                                             ; preds = %bb.v
  %i.bq = tail call i32 @PyList_Append(ptr noundef nonnull %i.p, ptr noundef nonnull %.0.i105122.i) #33, !inline_history !608
  %.not83.i = icmp eq i32 %i.bq, 0
  %i.br = load i32, ptr %.0.i105122.i, align 8, !tbaa !205 ; 3 uses
  %.not.i91.i = icmp sgt i32 %i.br, -1            ; 2 uses
  br i1 %.not83.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %.not.i91.i, label %bb.z, label %Py_DECREF.exit94.i

bb.z:                                             ; preds = %bb.y
  %i.bs = add nsw i32 %i.br, -1                   ; 2 uses
  store i32 %i.bs, ptr %.0.i105122.i, align 8, !tbaa !205
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %Py_DECREF.exit94.sink.split.i, label %Py_DECREF.exit94.i

bb.aa:                                            ; preds = %bb.x
  br i1 %.not.i91.i, label %bb.ab, label %Py_DECREF.exit92.i

bb.ab:                                            ; preds = %bb.aa
  %i.bu = add nsw i32 %i.br, -1                   ; 2 uses
  store i32 %i.bu, ptr %.0.i105122.i, align 8, !tbaa !205
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.ac, label %Py_DECREF.exit92.i

bb.ac:                                            ; preds = %bb.ab
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i105122.i) #33, !inline_history !608
  br label %Py_DECREF.exit92.i

Py_DECREF.exit92.i:                               ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.w
  %i.bw = add nuw nsw i64 %.0139.i, 1             ; 2 uses
  %exitcond150.not.i = icmp eq i64 %i.bw, %.081
  br i1 %exitcond150.not.i, label %.loopexit.i, label %.preheader129.i, !llvm.loop !612

.loopexit.i:                                      ; preds = %Py_DECREF.exit92.i, %.preheader130.i
  %.3.i = phi i64 [ 0, %.preheader130.i ], [ %.273.i.lcssa, %Py_DECREF.exit92.i ] ; 2 uses
  %.1.i = phi i64 [ 0, %.preheader130.i ], [ %.081, %Py_DECREF.exit92.i ] ; 6 uses
  %i.bx = icmp slt i64 %.3.i, %.val100
  br i1 %i.bx, label %.preheader.i, label %.loopexit.thread.i

.preheader.i:                                     ; preds = %.loopexit.i, %bb.af
  %.4144.i = phi i64 [ %i.ch, %bb.af ], [ %.3.i, %.loopexit.i ] ; 5 uses
  %i.by = getelementptr i8, ptr %.0.i, i64 %.4144.i
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !205 ; 3 uses
  %i.ca = icmp sgt i8 %i.bz, -1
  br i1 %i.ca, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.preheader.i
  %i.cb = zext nneg i8 %i.bz to i64
  %i.cc = getelementptr i8, ptr @_Py_ascii_whitespace, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !205
  %i.ce = zext i8 %i.cd to i32
  br label %Py_UNICODE_ISSPACE.exit107.i

bb.ae:                                            ; preds = %.preheader.i
  %i.cf = zext i8 %i.bz to i32
  %i.cg = tail call i32 @_PyUnicode_IsWhitespace(i32 noundef %i.cf) #33, !inline_history !608
  br label %Py_UNICODE_ISSPACE.exit107.i

Py_UNICODE_ISSPACE.exit107.i:                     ; preds = %bb.ae, %bb.ad
  %.0.i106.i = phi i32 [ %i.ce, %bb.ad ], [ %i.cg, %bb.ae ]
  %.not84.i = icmp eq i32 %.0.i106.i, 0
  br i1 %.not84.i, label %.critedge4.i, label %bb.af

bb.af:                                            ; preds = %Py_UNICODE_ISSPACE.exit107.i
  %i.ch = add i64 %.4144.i, 1                     ; 2 uses
  %exitcond151.not.i = icmp eq i64 %i.ch, %.val100
  br i1 %exitcond151.not.i, label %.loopexit.thread.i, label %.preheader.i, !llvm.loop !613

.critedge4.i:                                     ; preds = %Py_UNICODE_ISSPACE.exit107.i
  %3 = getelementptr i8, ptr %.0.i, i64 %.4144.i  ; 2 uses
  %.not85.i = icmp eq i64 %.4144.i, %.val100
  br i1 %.not85.i, label %.loopexit.thread.i, label %bb.ag

bb.ag:                                            ; preds = %.critedge4.i
  %i.ci = sub i64 %.val100, %.4144.i              ; 3 uses
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %_PyUnicode_FromASCII.exit118.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ck = tail call ptr @PyUnicode_New(i64 noundef %i.ci, i32 noundef 127), !inline_history !611 ; 5 uses
  %.not.i108.i = icmp eq ptr %i.ck, null
  br i1 %.not.i108.i, label %Py_DECREF.exit94.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cl = getelementptr i8, ptr %i.ck, i64 32
  %.val.i.i109.i = load i32, ptr %i.cl, align 8   ; 2 uses
  %i.cm = and i32 %.val.i.i109.i, 32
  %.not.i.i110.i = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i110.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cn = and i32 %.val.i.i109.i, 64
  %.not.i.i.i111.i = icmp eq i32 %i.cn, 0
  %.0.v.i.i.i112.i = select i1 %.not.i.i.i111.i, i64 56, i64 40
  %.0.i.i.i113.i = getelementptr i8, ptr %i.ck, i64 %.0.v.i.i.i112.i
  br label %_PyUnicode_FromASCII.exit118.thread124.i

bb.ak:                                            ; preds = %bb.ai
  %i.co = getelementptr i8, ptr %i.ck, i64 56
  %.val4.i.i117.i = load ptr, ptr %i.co, align 8, !tbaa !205
  br label %_PyUnicode_FromASCII.exit118.thread124.i

_PyUnicode_FromASCII.exit118.thread124.i:         ; preds = %bb.ak, %bb.aj
  %.0.i.i115.i = phi ptr [ %.0.i.i.i113.i, %bb.aj ], [ %.val4.i.i117.i, %bb.ak ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i115.i, ptr nonnull readonly align 1 %3, i64 %i.ci, i1 false)
  br label %bb.al

_PyUnicode_FromASCII.exit118.i:                   ; preds = %bb.ag
  %i.cp = load i8, ptr %3, align 1, !tbaa !205    ; 3 uses
  %i.cq = zext nneg i8 %i.cp to i64
  %i.cr = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.cq
  %i.cs = and i8 %i.cp, 127
  %i.ct = zext nneg i8 %i.cs to i64
  %i.cu = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.ct
  %i.cv = icmp slt i8 %i.cp, 0
  %i.cw = select i1 %i.cv, ptr %i.cu, ptr %i.cr   ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %Py_DECREF.exit94.i, label %bb.al

bb.al:                                            ; preds = %_PyUnicode_FromASCII.exit118.i, %_PyUnicode_FromASCII.exit118.thread124.i
  %.0.i116126.i = phi ptr [ %i.ck, %_PyUnicode_FromASCII.exit118.thread124.i ], [ %i.cw, %_PyUnicode_FromASCII.exit118.i ] ; 7 uses
  %i.cy = icmp slt i64 %.1.i, 12
  br i1 %i.cy, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.cz = getelementptr i8, ptr %i.p, i64 24
  %.val99.i = load ptr, ptr %i.cz, align 8, !tbaa !541
  %i.da = getelementptr [8 x i8], ptr %.val99.i, i64 %.1.i
  store ptr %.0.i116126.i, ptr %i.da, align 8, !tbaa !194
  br label %Py_DECREF.exit88.i

bb.an:                                            ; preds = %bb.al
  %i.db = tail call i32 @PyList_Append(ptr noundef nonnull %i.p, ptr noundef nonnull %.0.i116126.i) #33, !inline_history !608
  %.not86.i = icmp eq i32 %i.db, 0
  %i.dc = load i32, ptr %.0.i116126.i, align 8, !tbaa !205 ; 3 uses
  %.not.i87.i = icmp sgt i32 %i.dc, -1            ; 2 uses
  br i1 %.not86.i, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  br i1 %.not.i87.i, label %bb.ap, label %Py_DECREF.exit94.i

bb.ap:                                            ; preds = %bb.ao
  %i.dd = add nsw i32 %i.dc, -1                   ; 2 uses
  store i32 %i.dd, ptr %.0.i116126.i, align 8, !tbaa !205
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %Py_DECREF.exit94.sink.split.i, label %Py_DECREF.exit94.i

bb.aq:                                            ; preds = %bb.an
  br i1 %.not.i87.i, label %bb.ar, label %Py_DECREF.exit88.i

bb.ar:                                            ; preds = %bb.aq
  %i.df = add nsw i32 %i.dc, -1                   ; 2 uses
  store i32 %i.df, ptr %.0.i116126.i, align 8, !tbaa !205
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.as, label %Py_DECREF.exit88.i

bb.as:                                            ; preds = %bb.ar
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i116126.i) #33, !inline_history !608
  br label %Py_DECREF.exit88.i

Py_DECREF.exit88.i:                               ; preds = %bb.as, %bb.ar, %bb.aq, %bb.am
  %i.dh = add nuw i64 %.1.i, 1
  br label %.loopexit.thread.i

.loopexit.thread.i:                               ; preds = %.critedge.i, %bb.k, %bb.af, %Py_DECREF.exit88.i, %.critedge4.i, %.loopexit.i, %Py_INCREF.exit.i
  %.2.i = phi i64 [ %i.dh, %Py_DECREF.exit88.i ], [ %.1.i, %.critedge4.i ], [ %.1.i, %.loopexit.i ], [ %.0139.i, %bb.k ], [ %i.aw, %Py_INCREF.exit.i ], [ %.1.i, %bb.af ], [ %.0139.i, %.critedge.i ]
  %i.di = getelementptr i8, ptr %i.p, i64 16
  store i64 %.2.i, ptr %i.di, align 8, !tbaa !380
  br label %asciilib_split_whitespace.exit

Py_DECREF.exit94.sink.split.i:                    ; preds = %bb.ap, %bb.z
  %.0.i116126.sink.i = phi ptr [ %.0.i105122.i, %bb.z ], [ %.0.i116126.i, %bb.ap ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i116126.sink.i) #33, !inline_history !608
  br label %Py_DECREF.exit94.i

Py_DECREF.exit94.i:                               ; preds = %_PyUnicode_FromASCII.exit.i, %bb.r, %Py_DECREF.exit94.sink.split.i, %bb.ap, %bb.ao, %_PyUnicode_FromASCII.exit118.i, %bb.ah, %bb.z, %bb.y
  %i.dj = load i32, ptr %i.p, align 8, !tbaa !205 ; 2 uses
  %.not.i.i102 = icmp sgt i32 %i.dj, -1
  br i1 %.not.i.i102, label %bb.at, label %asciilib_split_whitespace.exit

bb.at:                                            ; preds = %Py_DECREF.exit94.i
  %i.dk = add nsw i32 %i.dj, -1                   ; 2 uses
  store i32 %i.dk, ptr %i.p, align 8, !tbaa !205
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.au, label %asciilib_split_whitespace.exit

bb.au:                                            ; preds = %bb.at
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.p) #33, !inline_history !608
  br label %asciilib_split_whitespace.exit

bb.av:                                            ; preds = %bb.e
  %i.dm = getelementptr i8, ptr %0, i64 56        ; 2 uses
  br i1 %.not.i107, label %bb.aw, label %_PyUnicode_DATA.exit113

bb.aw:                                            ; preds = %bb.av
  %.val4.i112 = load ptr, ptr %i.dm, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit113

_PyUnicode_DATA.exit113:                          ; preds = %bb.av, %bb.aw
  %.0.i111 = phi ptr [ %.val4.i112, %bb.aw ], [ %i.dm, %bb.av ] ; 7 uses
  %i.dn = tail call i64 @llvm.smin.i64(i64 range(i64 -4611686018427387903, -9223372036854775808) %.081, i64 11)
  %i.do = add nsw i64 %i.dn, 1
  %i.dp = tail call ptr @PyList_New(i64 noundef %i.do) #33, !inline_history !614 ; 10 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %asciilib_split_whitespace.exit, label %.preheader143.i

.preheader143.i:                                  ; preds = %_PyUnicode_DATA.exit113
  %i.dr = icmp sgt i64 %.081, 0
  br i1 %i.dr, label %.preheader142.lr.ph.i, label %.loopexit.i114

.preheader142.lr.ph.i:                            ; preds = %.preheader143.i
  %i.ds = getelementptr i8, ptr %0, i64 8
  %i.dt = getelementptr i8, ptr %i.dp, i64 24     ; 2 uses
  br label %.preheader142.i

.preheader142.i:                                  ; preds = %Py_DECREF.exit92.i142, %.preheader142.lr.ph.i
  %.0154.i = phi i64 [ 0, %.preheader142.lr.ph.i ], [ %i.gf, %Py_DECREF.exit92.i142 ] ; 6 uses
  %.071153.i = phi i64 [ 0, %.preheader142.lr.ph.i ], [ %.273.i136.lcssa, %Py_DECREF.exit92.i142 ] ; 3 uses
  %i.du = icmp slt i64 %.071153.i, %.val100
  br i1 %i.du, label %.lr.ph.i157, label %.critedge.i133

.lr.ph.i157:                                      ; preds = %.preheader142.i, %bb.az
  %.172151.i = phi i64 [ %i.ee, %bb.az ], [ %.071153.i, %.preheader142.i ] ; 3 uses
  %i.dv = getelementptr i8, ptr %.0.i111, i64 %.172151.i
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !205 ; 3 uses
  %i.dx = icmp sgt i8 %i.dw, -1
  br i1 %i.dx, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.lr.ph.i157
  %i.dy = zext nneg i8 %i.dw to i64
  %i.dz = getelementptr i8, ptr @_Py_ascii_whitespace, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !205
  %i.eb = zext i8 %i.ea to i32
  br label %Py_UNICODE_ISSPACE.exit.i158

bb.ay:                                            ; preds = %.lr.ph.i157
  %i.ec = zext i8 %i.dw to i32
  %i.ed = tail call i32 @_PyUnicode_IsWhitespace(i32 noundef %i.ec) #33, !inline_history !614
  br label %Py_UNICODE_ISSPACE.exit.i158

Py_UNICODE_ISSPACE.exit.i158:                     ; preds = %bb.ay, %bb.ax
  %.0.i.i159 = phi i32 [ %i.eb, %bb.ax ], [ %i.ed, %bb.ay ]
  %.not.i160 = icmp eq i32 %.0.i.i159, 0
  br i1 %.not.i160, label %.critedge.i133, label %bb.az

bb.az:                                            ; preds = %Py_UNICODE_ISSPACE.exit.i158
  %i.ee = add i64 %.172151.i, 1                   ; 2 uses
  %exitcond.not.i161 = icmp eq i64 %i.ee, %.val100
  br i1 %exitcond.not.i161, label %.loopexit.thread.i117, label %.lr.ph.i157, !llvm.loop !615

.critedge.i133:                                   ; preds = %Py_UNICODE_ISSPACE.exit.i158, %.preheader142.i
  %.172.lcssa.i134 = phi i64 [ %.071153.i, %.preheader142.i ], [ %.172151.i, %Py_UNICODE_ISSPACE.exit.i158 ] ; 5 uses
  %i.ef = icmp eq i64 %.172.lcssa.i134, %.val100
  br i1 %i.ef, label %.loopexit.thread.i117, label %.preheader141.i.preheader

.preheader141.i.preheader:                        ; preds = %.critedge.i133
  %.273.i1361323 = add i64 %.172.lcssa.i134, 1    ; 3 uses
  %i.eg = icmp slt i64 %.273.i1361323, %.val100
  br i1 %i.eg, label %.lr.ph1325, label %.critedge2.i137

.preheader141.i:                                  ; preds = %Py_UNICODE_ISSPACE.exit103.i154
  %.273.i136 = add i64 %.273.i1361324, 1          ; 3 uses
  %i.eh = icmp slt i64 %.273.i136, %.val100
  br i1 %i.eh, label %.lr.ph1325, label %.critedge2.i137, !llvm.loop !616

.lr.ph1325:                                       ; preds = %.preheader141.i.preheader, %.preheader141.i
  %.273.i1361324 = phi i64 [ %.273.i136, %.preheader141.i ], [ %.273.i1361323, %.preheader141.i.preheader ] ; 3 uses
  %i.ei = getelementptr i8, ptr %.0.i111, i64 %.273.i1361324
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !205 ; 3 uses
  %i.ek = icmp sgt i8 %i.ej, -1
  br i1 %i.ek, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.lr.ph1325
  %i.el = zext nneg i8 %i.ej to i64
  %i.em = getelementptr i8, ptr @_Py_ascii_whitespace, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !205
  %i.eo = zext i8 %i.en to i32
  br label %Py_UNICODE_ISSPACE.exit103.i154

bb.bb:                                            ; preds = %.lr.ph1325
  %i.ep = zext i8 %i.ej to i32
  %i.eq = tail call i32 @_PyUnicode_IsWhitespace(i32 noundef %i.ep) #33, !inline_history !614
  br label %Py_UNICODE_ISSPACE.exit103.i154

Py_UNICODE_ISSPACE.exit103.i154:                  ; preds = %bb.bb, %bb.ba
  %.0.i102.i155 = phi i32 [ %i.eo, %bb.ba ], [ %i.eq, %bb.bb ]
  %.not81.i156 = icmp eq i32 %.0.i102.i155, 0
  br i1 %.not81.i156, label %.preheader141.i, label %Py_UNICODE_ISSPACE.exit103.i154..critedge2.i137_crit_edge, !llvm.loop !616

Py_UNICODE_ISSPACE.exit103.i154..critedge2.i137_crit_edge: ; preds = %Py_UNICODE_ISSPACE.exit103.i154
  br label %.critedge2.i137, !llvm.loop !616

.critedge2.i137:                                  ; preds = %.preheader141.i, %Py_UNICODE_ISSPACE.exit103.i154..critedge2.i137_crit_edge, %.preheader141.i.preheader
  %.273.i136.lcssa = phi i64 [ %.273.i1361324, %Py_UNICODE_ISSPACE.exit103.i154..critedge2.i137_crit_edge ], [ %.273.i1361323, %.preheader141.i.preheader ], [ %.273.i136, %.preheader141.i ] ; 5 uses
  %i.er = icmp eq i64 %.172.lcssa.i134, 0
  %i.es = icmp eq i64 %.273.i136.lcssa, %.val100
  %or.cond.i138 = and i1 %i.er, %i.es
  br i1 %or.cond.i138, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %.critedge2.i137
  %.val.i151 = load ptr, ptr %i.ds, align 8, !tbaa !197
  %.not138.i = icmp eq ptr %.val.i151, @PyUnicode_Type
  br i1 %.not138.i, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.et = load i32, ptr %0, align 8, !tbaa !205   ; 2 uses
  %i.eu = icmp ugt i32 %i.et, -1073741825
  br i1 %i.eu, label %Py_INCREF.exit.i152, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ev = add nuw i32 %i.et, 1
  store i32 %i.ev, ptr %0, align 8, !tbaa !205
  br label %Py_INCREF.exit.i152

Py_INCREF.exit.i152:                              ; preds = %bb.be, %bb.bd
  %.val101.i153 = load ptr, ptr %i.dt, align 8, !tbaa !541
  store ptr %0, ptr %.val101.i153, align 8, !tbaa !194
  %i.ew = add nuw i64 %.0154.i, 1
  br label %.loopexit.thread.i117

bb.bf:                                            ; preds = %bb.bc, %.critedge2.i137
  %i.ex = getelementptr i8, ptr %.0.i111, i64 %.172.lcssa.i134 ; 3 uses
  %i.ey = sub i64 %.273.i136.lcssa, %.172.lcssa.i134 ; 3 uses
  switch i64 %i.ey, label %bb.bg [
    i64 0, label %_PyUnicode_FromUCS1.exit.thread.i
    i64 1, label %_PyUnicode_FromUCS1.exit.i
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.ez = getelementptr i8, ptr %.0.i111, i64 %.273.i136.lcssa ; 3 uses
  br label %bb.bh

bb.bh:                                            ; preds = %.thread31.i.i.i, %bb.bg
  %.019.i.i.i = phi ptr [ %i.ex, %bb.bg ], [ %i.fh, %.thread31.i.i.i ] ; 4 uses
  %i.fa = icmp ult ptr %.019.i.i.i, %i.ez
  br i1 %i.fa, label %bb.bi, label %ucs1lib_find_max_char.exit.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.fb = ptrtoint ptr %.019.i.i.i to i64
  %i.fc = and i64 %i.fb, 7
  %.not.i.i.i150 = icmp eq i64 %i.fc, 0
  br i1 %.not.i.i.i150, label %.preheader.i.i.i, label %.thread31.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.bi, %bb.bj
  %.017.i.i.i = phi ptr [ %i.fd, %bb.bj ], [ %.019.i.i.i, %bb.bi ] ; 4 uses
  %i.fd = getelementptr i8, ptr %.017.i.i.i, i64 8 ; 2 uses
  %.not26.i.i.i = icmp ugt ptr %i.fd, %i.ez
  br i1 %.not26.i.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.preheader.i.i.i
  %i.fe = load i64, ptr %.017.i.i.i, align 8, !tbaa !193
  %i.ff = and i64 %i.fe, -9187201950435737472
  %.not27.i.i.i = icmp eq i64 %i.ff, 0
  br i1 %.not27.i.i.i, label %.preheader.i.i.i, label %ucs1lib_find_max_char.exit.i.i, !llvm.loop !220

bb.bk:                                            ; preds = %.preheader.i.i.i
  %i.fg = icmp eq ptr %.017.i.i.i, %i.ez
  br i1 %i.fg, label %ucs1lib_find_max_char.exit.i.i, label %.thread31.i.i.i

.thread31.i.i.i:                                  ; preds = %bb.bk, %bb.bi
  %.2.i.i.i = phi ptr [ %.019.i.i.i, %bb.bi ], [ %.017.i.i.i, %bb.bk ] ; 2 uses
  %i.fh = getelementptr i8, ptr %.2.i.i.i, i64 1
  %i.fi = load i8, ptr %.2.i.i.i, align 1, !tbaa !205
  %.not28.i.i.i = icmp sgt i8 %i.fi, -1
  br i1 %.not28.i.i.i, label %bb.bh, label %ucs1lib_find_max_char.exit.i.i, !llvm.loop !221

ucs1lib_find_max_char.exit.i.i:                   ; preds = %.thread31.i.i.i, %bb.bk, %bb.bh, %bb.bj
  %.5.i.i.i = phi i32 [ 255, %bb.bj ], [ 127, %bb.bh ], [ 127, %bb.bk ], [ 255, %.thread31.i.i.i ]
  %i.fj = tail call ptr @PyUnicode_New(i64 noundef %i.ey, i32 noundef %.5.i.i.i), !inline_history !617 ; 5 uses
  %.not.i105.i = icmp eq ptr %i.fj, null
  br i1 %.not.i105.i, label %Py_DECREF.exit94.i128, label %bb.bl

bb.bl:                                            ; preds = %ucs1lib_find_max_char.exit.i.i
  %i.fk = getelementptr i8, ptr %i.fj, i64 32
  %.val.i.i.i144 = load i32, ptr %i.fk, align 8   ; 2 uses
  %i.fl = and i32 %.val.i.i.i144, 32
  %.not.i15.i.i = icmp eq i32 %i.fl, 0
  br i1 %.not.i15.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fm = and i32 %.val.i.i.i144, 64
  %.not.i.i.i.i145 = icmp eq i32 %i.fm, 0
  %.0.v.i.i.i.i146 = select i1 %.not.i.i.i.i145, i64 56, i64 40
  %.0.i.i.i.i147 = getelementptr i8, ptr %i.fj, i64 %.0.v.i.i.i.i146
  br label %_PyUnicode_DATA.exit.i.i

bb.bn:                                            ; preds = %bb.bl
  %i.fn = getelementptr i8, ptr %i.fj, i64 56
  %.val4.i.i.i149 = load ptr, ptr %i.fn, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i.i

_PyUnicode_DATA.exit.i.i:                         ; preds = %bb.bn, %bb.bm
  %.0.i.i.i148 = phi ptr [ %.0.i.i.i.i147, %bb.bm ], [ %.val4.i.i.i149, %bb.bn ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i148, ptr align 1 %i.ex, i64 %i.ey, i1 false)
  br label %_PyUnicode_FromUCS1.exit.thread.i

_PyUnicode_FromUCS1.exit.i:                       ; preds = %bb.bf
  %i.fo = load i8, ptr %i.ex, align 1, !tbaa !205 ; 3 uses
  %i.fp = zext nneg i8 %i.fo to i64
  %i.fq = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.fp
  %i.fr = and i8 %i.fo, 127
  %i.fs = zext nneg i8 %i.fr to i64
  %i.ft = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.fs
  %i.fu = icmp slt i8 %i.fo, 0
  %i.fv = select i1 %i.fu, ptr %i.ft, ptr %i.fq   ; 2 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %Py_DECREF.exit94.i128, label %_PyUnicode_FromUCS1.exit.thread.i

_PyUnicode_FromUCS1.exit.thread.i:                ; preds = %_PyUnicode_FromUCS1.exit.i, %_PyUnicode_DATA.exit.i.i, %bb.bf
  %.0.i104131.i = phi ptr [ %i.fv, %_PyUnicode_FromUCS1.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.bf ], [ %i.fj, %_PyUnicode_DATA.exit.i.i ] ; 7 uses
  %i.fx = icmp samesign ult i64 %.0154.i, 12
  br i1 %i.fx, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_PyUnicode_FromUCS1.exit.thread.i
  %.val100.i143 = load ptr, ptr %i.dt, align 8, !tbaa !541
  %i.fy = getelementptr [8 x i8], ptr %.val100.i143, i64 %.0154.i
  store ptr %.0.i104131.i, ptr %i.fy, align 8, !tbaa !194
  br label %Py_DECREF.exit92.i142

bb.bp:                                            ; preds = %_PyUnicode_FromUCS1.exit.thread.i
  %i.fz = tail call i32 @PyList_Append(ptr noundef nonnull %i.dp, ptr noundef nonnull %.0.i104131.i) #33, !inline_history !614
  %.not83.i139 = icmp eq i32 %i.fz, 0
  %i.ga = load i32, ptr %.0.i104131.i, align 8, !tbaa !205 ; 3 uses
  %.not.i91.i141 = icmp sgt i32 %i.ga, -1         ; 2 uses
  br i1 %.not83.i139, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  br i1 %.not.i91.i141, label %bb.br, label %Py_DECREF.exit94.i128

bb.br:                                            ; preds = %bb.bq
  %i.gb = add nsw i32 %i.ga, -1                   ; 2 uses
  store i32 %i.gb, ptr %.0.i104131.i, align 8, !tbaa !205
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %Py_DECREF.exit94.sink.split.i130, label %Py_DECREF.exit94.i128

bb.bs:                                            ; preds = %bb.bp
  br i1 %.not.i91.i141, label %bb.bt, label %Py_DECREF.exit92.i142

bb.bt:                                            ; preds = %bb.bs
  %i.gd = add nsw i32 %i.ga, -1                   ; 2 uses
  store i32 %i.gd, ptr %.0.i104131.i, align 8, !tbaa !205
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %bb.bu, label %Py_DECREF.exit92.i142

bb.bu:                                            ; preds = %bb.bt
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i104131.i) #33, !inline_history !614
  br label %Py_DECREF.exit92.i142

Py_DECREF.exit92.i142:                            ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.bo
  %i.gf = add nuw nsw i64 %.0154.i, 1             ; 2 uses
  %exitcond169.not.i = icmp eq i64 %i.gf, %.081
  br i1 %exitcond169.not.i, label %.loopexit.i114, label %.preheader142.i, !llvm.loop !618

.loopexit.i114:                                   ; preds = %Py_DECREF.exit92.i142, %.preheader143.i
  %.3.i115 = phi i64 [ 0, %.preheader143.i ], [ %.273.i136.lcssa, %Py_DECREF.exit92.i142 ] ; 2 uses
  %.1.i116 = phi i64 [ 0, %.preheader143.i ], [ %.081, %Py_DECREF.exit92.i142 ] ; 6 uses
  %i.gg = icmp slt i64 %.3.i115, %.val100
  br i1 %i.gg, label %.preheader.i120, label %.loopexit.thread.i117

.preheader.i120:                                  ; preds = %.loopexit.i114, %bb.bx
  %.4159.i = phi i64 [ %i.gq, %bb.bx ], [ %.3.i115, %.loopexit.i114 ] ; 5 uses
  %i.gh = getelementptr i8, ptr %.0.i111, i64 %.4159.i
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !205 ; 3 uses
  %i.gj = icmp sgt i8 %i.gi, -1
  br i1 %i.gj, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %.preheader.i120
  %i.gk = zext nneg i8 %i.gi to i64
  %i.gl = getelementptr i8, ptr @_Py_ascii_whitespace, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !205
  %i.gn = zext i8 %i.gm to i32
  br label %Py_UNICODE_ISSPACE.exit107.i121

bb.bw:                                            ; preds = %.preheader.i120
  %i.go = zext i8 %i.gi to i32
  %i.gp = tail call i32 @_PyUnicode_IsWhitespace(i32 noundef %i.go) #33, !inline_history !614
  br label %Py_UNICODE_ISSPACE.exit107.i121

Py_UNICODE_ISSPACE.exit107.i121:                  ; preds = %bb.bw, %bb.bv
  %.0.i106.i122 = phi i32 [ %i.gn, %bb.bv ], [ %i.gp, %bb.bw ]
  %.not84.i123 = icmp eq i32 %.0.i106.i122, 0
  br i1 %.not84.i123, label %.critedge4.i124, label %bb.bx

bb.bx:                                            ; preds = %Py_UNICODE_ISSPACE.exit107.i121
  %i.gq = add i64 %.4159.i, 1                     ; 2 uses
  %exitcond170.not.i = icmp eq i64 %i.gq, %.val100
  br i1 %exitcond170.not.i, label %.loopexit.thread.i117, label %.preheader.i120, !llvm.loop !619

.critedge4.i124:                                  ; preds = %Py_UNICODE_ISSPACE.exit107.i121
  %i.gr = getelementptr i8, ptr %.0.i111, i64 %.4159.i ; 3 uses
  %.not85.i125 = icmp eq i64 %.4159.i, %.val100
  br i1 %.not85.i125, label %.loopexit.thread.i117, label %4

4:                                                ; preds = %.critedge4.i124
  %5 = sub i64 %.val100, %.4159.i                 ; 3 uses
  switch i64 %5, label %bb.by [
    i64 0, label %_PyUnicode_FromUCS1.exit129.thread.i
    i64 1, label %_PyUnicode_FromUCS1.exit129.i
  ]

bb.by:                                            ; preds = %4
  %i.gs = getelementptr i8, ptr %.0.i111, i64 %.val100 ; 3 uses
  br label %bb.bz

bb.bz:                                            ; preds = %.thread31.i.i122.i, %bb.by
  %.019.i.i109.i = phi ptr [ %i.gr, %bb.by ], [ %i.ha, %.thread31.i.i122.i ] ; 4 uses
  %i.gt = icmp ult ptr %.019.i.i109.i, %i.gs
  br i1 %i.gt, label %bb.ca, label %ucs1lib_find_max_char.exit.i110.i

bb.ca:                                            ; preds = %bb.bz
  %i.gu = ptrtoint ptr %.019.i.i109.i to i64
  %i.gv = and i64 %i.gu, 7
  %.not.i.i121.i = icmp eq i64 %i.gv, 0
  br i1 %.not.i.i121.i, label %.preheader.i.i125.i, label %.thread31.i.i122.i

.preheader.i.i125.i:                              ; preds = %bb.ca, %bb.cb
  %.017.i.i126.i = phi ptr [ %i.gw, %bb.cb ], [ %.019.i.i109.i, %bb.ca ] ; 4 uses
  %i.gw = getelementptr i8, ptr %.017.i.i126.i, i64 8 ; 2 uses
  %.not26.i.i127.i = icmp ugt ptr %i.gw, %i.gs
  br i1 %.not26.i.i127.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.preheader.i.i125.i
  %i.gx = load i64, ptr %.017.i.i126.i, align 8, !tbaa !193
  %i.gy = and i64 %i.gx, -9187201950435737472
  %.not27.i.i128.i = icmp eq i64 %i.gy, 0
  br i1 %.not27.i.i128.i, label %.preheader.i.i125.i, label %ucs1lib_find_max_char.exit.i110.i, !llvm.loop !220

bb.cc:                                            ; preds = %.preheader.i.i125.i
  %i.gz = icmp eq ptr %.017.i.i126.i, %i.gs
  br i1 %i.gz, label %ucs1lib_find_max_char.exit.i110.i, label %.thread31.i.i122.i

.thread31.i.i122.i:                               ; preds = %bb.cc, %bb.ca
  %.2.i.i123.i = phi ptr [ %.019.i.i109.i, %bb.ca ], [ %.017.i.i126.i, %bb.cc ] ; 2 uses
  %i.ha = getelementptr i8, ptr %.2.i.i123.i, i64 1
  %i.hb = load i8, ptr %.2.i.i123.i, align 1, !tbaa !205
  %.not28.i.i124.i = icmp sgt i8 %i.hb, -1
  br i1 %.not28.i.i124.i, label %bb.bz, label %ucs1lib_find_max_char.exit.i110.i, !llvm.loop !221

ucs1lib_find_max_char.exit.i110.i:                ; preds = %.thread31.i.i122.i, %bb.cc, %bb.bz, %bb.cb
  %.5.i.i111.i = phi i32 [ 255, %bb.cb ], [ 127, %bb.bz ], [ 127, %bb.cc ], [ 255, %.thread31.i.i122.i ]
  %i.hc = tail call ptr @PyUnicode_New(i64 noundef %5, i32 noundef %.5.i.i111.i), !inline_history !617 ; 5 uses
  %.not.i112.i = icmp eq ptr %i.hc, null
  br i1 %.not.i112.i, label %Py_DECREF.exit94.i128, label %bb.cd

bb.cd:                                            ; preds = %ucs1lib_find_max_char.exit.i110.i
  %i.hd = getelementptr i8, ptr %i.hc, i64 32
  %.val.i.i113.i = load i32, ptr %i.hd, align 8   ; 2 uses
  %i.he = and i32 %.val.i.i113.i, 32
  %.not.i15.i114.i = icmp eq i32 %i.he, 0
  br i1 %.not.i15.i114.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.hf = and i32 %.val.i.i113.i, 64
  %.not.i.i.i115.i = icmp eq i32 %i.hf, 0
  %.0.v.i.i.i116.i = select i1 %.not.i.i.i115.i, i64 56, i64 40
  %.0.i.i.i117.i = getelementptr i8, ptr %i.hc, i64 %.0.v.i.i.i116.i
  br label %_PyUnicode_DATA.exit.i118.i

bb.cf:                                            ; preds = %bb.cd
  %i.hg = getelementptr i8, ptr %i.hc, i64 56
  %.val4.i.i120.i = load ptr, ptr %i.hg, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i118.i

_PyUnicode_DATA.exit.i118.i:                      ; preds = %bb.cf, %bb.ce
  %.0.i.i119.i = phi ptr [ %.0.i.i.i117.i, %bb.ce ], [ %.val4.i.i120.i, %bb.cf ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i119.i, ptr nonnull align 1 %i.gr, i64 %5, i1 false)
  br label %_PyUnicode_FromUCS1.exit129.thread.i

_PyUnicode_FromUCS1.exit129.i:                    ; preds = %4
  %i.hh = load i8, ptr %i.gr, align 1, !tbaa !205 ; 3 uses
  %i.hi = zext nneg i8 %i.hh to i64
  %i.hj = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.hi
  %i.hk = and i8 %i.hh, 127
  %i.hl = zext nneg i8 %i.hk to i64
  %i.hm = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.hl
  %i.hn = icmp slt i8 %i.hh, 0
  %i.ho = select i1 %i.hn, ptr %i.hm, ptr %i.hj   ; 2 uses
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %Py_DECREF.exit94.i128, label %_PyUnicode_FromUCS1.exit129.thread.i

_PyUnicode_FromUCS1.exit129.thread.i:             ; preds = %_PyUnicode_FromUCS1.exit129.i, %_PyUnicode_DATA.exit.i118.i, %4
  %.0.i108135.i = phi ptr [ %i.ho, %_PyUnicode_FromUCS1.exit129.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %4 ], [ %i.hc, %_PyUnicode_DATA.exit.i118.i ] ; 7 uses
  %i.hq = icmp slt i64 %.1.i116, 12
  br i1 %i.hq, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %_PyUnicode_FromUCS1.exit129.thread.i
  %i.hr = getelementptr i8, ptr %i.dp, i64 24
  %.val99.i132 = load ptr, ptr %i.hr, align 8, !tbaa !541
  %i.hs = getelementptr [8 x i8], ptr %.val99.i132, i64 %.1.i116
  store ptr %.0.i108135.i, ptr %i.hs, align 8, !tbaa !194
  br label %Py_DECREF.exit88.i131

bb.ch:                                            ; preds = %_PyUnicode_FromUCS1.exit129.thread.i
  %i.ht = tail call i32 @PyList_Append(ptr noundef nonnull %i.dp, ptr noundef nonnull %.0.i108135.i) #33, !inline_history !614
  %.not86.i126 = icmp eq i32 %i.ht, 0
  %i.hu = load i32, ptr %.0.i108135.i, align 8, !tbaa !205 ; 3 uses
  %.not.i87.i127 = icmp sgt i32 %i.hu, -1         ; 2 uses
  br i1 %.not86.i126, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  br i1 %.not.i87.i127, label %bb.cj, label %Py_DECREF.exit94.i128

bb.cj:                                            ; preds = %bb.ci
  %i.hv = add nsw i32 %i.hu, -1                   ; 2 uses
  store i32 %i.hv, ptr %.0.i108135.i, align 8, !tbaa !205
  %i.hw = icmp eq i32 %i.hv, 0
  br i1 %i.hw, label %Py_DECREF.exit94.sink.split.i130, label %Py_DECREF.exit94.i128

bb.ck:                                            ; preds = %bb.ch
  br i1 %.not.i87.i127, label %bb.cl, label %Py_DECREF.exit88.i131

bb.cl:                                            ; preds = %bb.ck
  %i.hx = add nsw i32 %i.hu, -1                   ; 2 uses
  store i32 %i.hx, ptr %.0.i108135.i, align 8, !tbaa !205
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %bb.cm, label %Py_DECREF.exit88.i131

bb.cm:                                            ; preds = %bb.cl
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i108135.i) #33, !inline_history !614
  br label %Py_DECREF.exit88.i131

Py_DECREF.exit88.i131:                            ; preds = %bb.cm, %bb.cl, %bb.ck, %bb.cg
  %i.hz = add nuw i64 %.1.i116, 1
  br label %.loopexit.thread.i117

.loopexit.thread.i117:                            ; preds = %.critedge.i133, %bb.az, %bb.bx, %Py_DECREF.exit88.i131, %.critedge4.i124, %.loopexit.i114, %Py_INCREF.exit.i152
  %.2.i118 = phi i64 [ %i.hz, %Py_DECREF.exit88.i131 ], [ %.1.i116, %.critedge4.i124 ], [ %.1.i116, %.loopexit.i114 ], [ %.0154.i, %bb.az ], [ %i.ew, %Py_INCREF.exit.i152 ], [ %.1.i116, %bb.bx ], [ %.0154.i, %.critedge.i133 ]
  %i.ia = getelementptr i8, ptr %i.dp, i64 16
  store i64 %.2.i118, ptr %i.ia, align 8, !tbaa !380
  br label %asciilib_split_whitespace.exit

Py_DECREF.exit94.sink.split.i130:                 ; preds = %bb.cj, %bb.br
  %.0.i108135.sink.i = phi ptr [ %.0.i104131.i, %bb.br ], [ %.0.i108135.i, %bb.cj ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i108135.sink.i) #33, !inline_history !614
  br label %Py_DECREF.exit94.i128

Py_DECREF.exit94.i128:                            ; preds = %_PyUnicode_FromUCS1.exit.i, %ucs1lib_find_max_char.exit.i.i, %Py_DECREF.exit94.sink.split.i130, %bb.cj, %bb.ci, %_PyUnicode_FromUCS1.exit129.i, %ucs1lib_find_max_char.exit.i110.i, %bb.br, %bb.bq
  %i.ib = load i32, ptr %i.dp, align 8, !tbaa !205 ; 2 uses
  %.not.i.i129 = icmp sgt i32 %i.ib, -1
  br i1 %.not.i.i129, label %bb.cn, label %asciilib_split_whitespace.exit

bb.cn:                                            ; preds = %Py_DECREF.exit94.i128
  %i.ic = add nsw i32 %i.ib, -1                   ; 2 uses
  store i32 %i.ic, ptr %i.dp, align 8, !tbaa !205
  %i.id = icmp eq i32 %i.ic, 0
  br i1 %i.id, label %bb.co, label %asciilib_split_whitespace.exit

bb.co:                                            ; preds = %bb.cn
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.dp) #33, !inline_history !614
  br label %asciilib_split_whitespace.exit

bb.cp:                                            ; preds = %bb.d
  %i.ie = and i32 %i.c, 32
  %.not.i163 = icmp eq i32 %i.ie, 0
  br i1 %.not.i163, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.if = and i32 %i.c, 64
  %.not.i.i164 = icmp eq i32 %i.if, 0
  %.0.v.i.i165 = select i1 %.not.i.i164, i64 56, i64 40
  %.0.i.i166 = getelementptr i8, ptr %0, i64 %.0.v.i.i165
  br label %_PyUnicode_DATA.exit169

bb.cr:                                            ; preds = %bb.cp
  %i.ig = getelementptr i8, ptr %0, i64 56
  %.val4.i168 = load ptr, ptr %i.ig, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit169

_PyUnicode_DATA.exit169:                          ; preds = %bb.cq, %bb.cr
  %.0.i167 = phi ptr [ %.0.i.i166, %bb.cq ], [ %.val4.i168, %bb.cr ] ; 5 uses
  %i.ih = tail call i64 @llvm.smin.i64(i64 range(i64 -4611686018427387903, -9223372036854775808) %.081, i64 11)
  %i.ii = add nsw i64 %i.ih, 1
  %i.ij = tail call ptr @PyList_New(i64 noundef %i.ii) #33, !inline_history !620 ; 10 uses
  %i.ik = icmp eq ptr %i.ij, null
  br i1 %i.ik, label %asciilib_split_whitespace.exit, label %.preheader109.i

.preheader109.i:                                  ; preds = %_PyUnicode_DATA.exit169
  %i.il = icmp sgt i64 %.081, 0
  br i1 %i.il, label %.preheader108.lr.ph.i, label %.loopexit.i170

.preheader108.lr.ph.i:                            ; preds = %.preheader109.i
  %i.im = getelementptr i8, ptr %0, i64 8
  %i.in = getelementptr i8, ptr %i.ij, i64 24     ; 2 uses
  br label %.preheader108.i

.preheader108.i:                                  ; preds = %Py_DECREF.exit92.i196, %.preheader108.lr.ph.i
  %.0119.i = phi i64 [ 0, %.preheader108.lr.ph.i ], [ %i.kd, %Py_DECREF.exit92.i196 ] ; 6 uses
  %.071118.i = phi i64 [ 0, %.preheader108.lr.ph.i ], [ %.273.i190.lcssa, %Py_DECREF.exit92.i196 ] ; 3 uses
  %i.io = icmp slt i64 %.071118.i, %.val100
  br i1 %i.io, label %.lr.ph.i204, label %.critedge.i187

.lr.ph.i204:                                      ; preds = %.preheader108.i, %bb.cu
  %.172116.i = phi i64 [ %i.iy, %bb.cu ], [ %.071118.i, %.preheader108.i ] ; 3 uses
  %i.ip = getelementptr [2 x i8], ptr %.0.i167, i64 %.172116.i
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !208 ; 3 uses
  %i.ir = icmp ult i16 %i.iq, 128
  br i1 %i.ir, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %.lr.ph.i204
  %i.is = zext nneg i16 %i.iq to i64
  %i.it = getelementptr i8, ptr @_Py_ascii_whitespace, i64 %i.is
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !205
  %i.iv = zext i8 %i.iu to i32
  br label %Py_UNICODE_ISSPACE.exit.i205

bb.ct:                                            ; preds = %.lr.ph.i204
  %i.iw = zext i16 %i.iq to i32
  %i.ix = tail call i32 @_PyUnicode_IsWhitespace(i32 noundef %i.iw) #33, !inline_history !620
  br label %Py_UNICODE_ISSPACE.exit.i205

Py_UNICODE_ISSPACE.exit.i205:                     ; preds = %bb.ct, %bb.cs
  %.0.i.i206 = phi i32 [ %i.iv, %bb.cs ], [ %i.ix, %bb.ct ]
  %.not.i207 = icmp eq i32 %.0.i.i206, 0
  br i1 %.not.i207, label %.critedge.i187, label %bb.cu

bb.cu:                                            ; preds = %Py_UNICODE_ISSPACE.exit.i205
  %i.iy = add i64 %.172116.i, 1                   ; 2 uses
  %exitcond.not.i208 = icmp eq i64 %i.iy, %.val100
  br i1 %exitcond.not.i208, label %.loopexit.thread.i173, label %.lr.ph.i204, !llvm.loop !621

.critedge.i187:                                   ; preds = %Py_UNICODE_ISSPACE.exit.i205, %.preheader108.i
  %.172.lcssa.i188 = phi i64 [ %.071118.i, %.preheader108.i ], [ %.172116.i, %Py_UNICODE_ISSPACE.exit.i205 ] ; 5 uses
  %i.iz = icmp eq i64 %.172.lcssa.i188, %.val100
  br i1 %i.iz, label %.loopexit.thread.i173, label %.preheader107.i.preheader

.preheader107.i.preheader:                        ; preds = %.critedge.i187
  %.273.i1901313 = add i64 %.172.lcssa.i188, 1    ; 3 uses
  %i.ja = icmp slt i64 %.273.i1901313, %.val100
  br i1 %i.ja, label %.lr.ph1315, label %.critedge2.i191

.preheader107.i:                                  ; preds = %Py_UNICODE_ISSPACE.exit103.i201
  %.273.i190 = add i64 %.273.i1901314, 1          ; 3 uses
  %i.jb = icmp slt i64 %.273.i190, %.val100
  br i1 %i.jb, label %.lr.ph1315, label %.critedge2.i191, !llvm.loop !622

.lr.ph1315:                                       ; preds = %.preheader107.i.preheader, %.preheader107.i
  %.273.i1901314 = phi i64 [ %.273.i190, %.preheader107.i ], [ %.273.i1901313, %.preheader107.i.preheader ] ; 3 uses
  %i.jc = getelementptr [2 x i8], ptr %.0.i167, i64 %.273.i1901314
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !208 ; 3 uses
  %i.je = icmp ult i16 %i.jd, 128
  br i1 %i.je, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %.lr.ph1315
  %i.jf = zext nneg i16 %i.jd to i64
  %i.jg = getelementptr i8, ptr @_Py_ascii_whitespace, i64 %i.jf
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !205
  %i.ji = zext i8 %i.jh to i32
  br label %Py_UNICODE_ISSPACE.exit103.i201

bb.cw:                                            ; preds = %.lr.ph1315
  %i.jj = zext i16 %i.jd to i32
  %i.jk = tail call i32 @_PyUnicode_IsWhitespace(i32 noundef %i.jj) #33, !inline_history !620
  br label %Py_UNICODE_ISSPACE.exit103.i201

Py_UNICODE_ISSPACE.exit103.i201:                  ; preds = %bb.cw, %bb.cv
  %.0.i102.i202 = phi i32 [ %i.ji, %bb.cv ], [ %i.jk, %bb.cw ]
  %.not81.i203 = icmp eq i32 %.0.i102.i202, 0
  br i1 %.not81.i203, label %.preheader107.i, label %Py_UNICODE_ISSPACE.exit103.i201..critedge2.i191_crit_edge, !llvm.loop !622

Py_UNICODE_ISSPACE.exit103.i201..critedge2.i191_crit_edge: ; preds = %Py_UNICODE_ISSPACE.exit103.i201
  br label %.critedge2.i191, !llvm.loop !622

.critedge2.i191:                                  ; preds = %.preheader107.i, %Py_UNICODE_ISSPACE.exit103.i201..critedge2.i191_crit_edge, %.preheader107.i.preheader
  %.273.i190.lcssa = phi i64 [ %.273.i1901314, %Py_UNICODE_ISSPACE.exit103.i201..critedge2.i191_crit_edge ], [ %.273.i1901313, %.preheader107.i.preheader ], [ %.273.i190, %.preheader107.i ] ; 4 uses
  %i.jl = icmp eq i64 %.172.lcssa.i188, 0
  %i.jm = icmp eq i64 %.273.i190.lcssa, %.val100
  %or.cond.i192 = and i1 %i.jl, %i.jm
  br i1 %or.cond.i192, label %bb.cx, label %bb.da

bb.cx:                                            ; preds = %.critedge2.i191
  %.val.i198 = load ptr, ptr %i.im, align 8, !tbaa !197
  %.not106.i = icmp eq ptr %.val.i198, @PyUnicode_Type
  br i1 %.not106.i, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %bb.cx
  %i.jn = load i32, ptr %0, align 8, !tbaa !205   ; 2 uses
  %i.jo = icmp ugt i32 %i.jn, -1073741825
  br i1 %i.jo, label %Py_INCREF.exit.i199, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.jp = add nuw i32 %i.jn, 1
  store i32 %i.jp, ptr %0, align 8, !tbaa !205
  br label %Py_INCREF.exit.i199

Py_INCREF.exit.i199:                              ; preds = %bb.cz, %bb.cy
  %.val101.i200 = load ptr, ptr %i.in, align 8, !tbaa !541
  store ptr %0, ptr %.val101.i200, align 8, !tbaa !194
  %i.jq = add nuw i64 %.0119.i, 1
  br label %.loopexit.thread.i173

bb.da:                                            ; preds = %bb.cx, %.critedge2.i191
  %i.jr = getelementptr [2 x i8], ptr %.0.i167, i64 %.172.lcssa.i188
  %i.js = sub i64 %.273.i190.lcssa, %.172.lcssa.i188
  %i.jt = tail call fastcc ptr @_PyUnicode_FromUCS2(ptr noundef readonly %i.jr, i64 noundef %i.js), !inline_history !620 ; 8 uses
  %i.ju = icmp eq ptr %i.jt, null
  br i1 %i.ju, label %Py_DECREF.exit94.i182, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.jv = icmp samesign ult i64 %.0119.i, 12
  br i1 %i.jv, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %.val100.i197 = load ptr, ptr %i.in, align 8, !tbaa !541
  %i.jw = getelementptr [8 x i8], ptr %.val100.i197, i64 %.0119.i
  store ptr %i.jt, ptr %i.jw, align 8, !tbaa !194
  br label %Py_DECREF.exit92.i196

bb.dd:                                            ; preds = %bb.db
  %i.jx = tail call i32 @PyList_Append(ptr noundef nonnull %i.ij, ptr noundef nonnull %i.jt) #33, !inline_history !620
  %.not83.i193 = icmp eq i32 %i.jx, 0
  %i.jy = load i32, ptr %i.jt, align 8, !tbaa !205 ; 3 uses
  %.not.i91.i195 = icmp sgt i32 %i.jy, -1         ; 2 uses
  br i1 %.not83.i193, label %bb.dg, label %bb.de

bb.de:                                            ; preds = %bb.dd
  br i1 %.not.i91.i195, label %bb.df, label %Py_DECREF.exit94.i182

bb.df:                                            ; preds = %bb.de
  %i.jz = add nsw i32 %i.jy, -1                   ; 2 uses
  store i32 %i.jz, ptr %i.jt, align 8, !tbaa !205
  %i.ka = icmp eq i32 %i.jz, 0
  br i1 %i.ka, label %Py_DECREF.exit94.sink.split.i184, label %Py_DECREF.exit94.i182

bb.dg:                                            ; preds = %bb.dd
  br i1 %.not.i91.i195, label %bb.dh, label %Py_DECREF.exit92.i196

bb.dh:                                            ; preds = %bb.dg
  %i.kb = add nsw i32 %i.jy, -1                   ; 2 uses
  store i32 %i.kb, ptr %i.jt, align 8, !tbaa !205
  %i.kc = icmp eq i32 %i.kb, 0
  br i1 %i.kc, label %bb.di, label %Py_DECREF.exit92.i196

bb.di:                                            ; preds = %bb.dh
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.jt) #33, !inline_history !620
  br label %Py_DECREF.exit92.i196

Py_DECREF.exit92.i196:                            ; preds = %bb.di, %bb.dh, %bb.dg, %bb.dc
  %i.kd = add nuw nsw i64 %.0119.i, 1             ; 2 uses
  %exitcond131.not.i = icmp eq i64 %i.kd, %.081
  br i1 %exitcond131.not.i, label %.loopexit.i170, label %.preheader108.i, !llvm.loop !623

.loopexit.i170:                                   ; preds = %Py_DECREF.exit92.i196, %.preheader109.i
  %.3.i171 = phi i64 [ 0, %.preheader109.i ], [ %.273.i190.lcssa, %Py_DECREF.exit92.i196 ] ; 2 uses
  %.1.i172 = phi i64 [ 0, %.preheader109.i ], [ %.081, %Py_DECREF.exit92.i196 ] ; 6 uses
  %i.ke = icmp slt i64 %.3.i171, %.val100
  br i1 %i.ke, label %.preheader.i176, label %.loopexit.thread.i173

.preheader.i176:                                  ; preds = %.loopexit.i170, %bb.dl
  %.4124.i = phi i64 [ %i.ko, %bb.dl ], [ %.3.i171, %.loopexit.i170 ] ; 5 uses
  %i.kf = getelementptr [2 x i8], ptr %.0.i167, i64 %.4124.i
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !208 ; 3 uses
  %i.kh = icmp ult i16 %i.kg, 128
  br i1 %i.kh, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %.preheader.i176
  %i.ki = zext nneg i16 %i.kg to i64
  %i.kj = getelementptr i8, ptr @_Py_ascii_whitespace, i64 %i.ki
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !205
  %i.kl = zext i8 %i.kk to i32
  br label %Py_UNICODE_ISSPACE.exit105.i

bb.dk:                                            ; preds = %.preheader.i176
  %i.km = zext i16 %i.kg to i32
  %i.kn = tail call i32 @_PyUnicode_IsWhitespace(i32 noundef %i.km) #33, !inline_history !620
  br label %Py_UNICODE_ISSPACE.exit105.i

Py_UNICODE_ISSPACE.exit105.i:                     ; preds = %bb.dk, %bb.dj
  %.0.i104.i = phi i32 [ %i.kl, %bb.dj ], [ %i.kn, %bb.dk ]
  %.not84.i177 = icmp eq i32 %.0.i104.i, 0
  br i1 %.not84.i177, label %.critedge4.i178, label %bb.dl

bb.dl:                                            ; preds = %Py_UNICODE_ISSPACE.exit105.i
  %i.ko = add i64 %.4124.i, 1                     ; 2 uses
  %exitcond132.not.i = icmp eq i64 %i.ko, %.val100
  br i1 %exitcond132.not.i, label %.loopexit.thread.i173, label %.preheader.i176, !llvm.loop !624

.critedge4.i178:                                  ; preds = %Py_UNICODE_ISSPACE.exit105.i
  %.not85.i179 = icmp eq i64 %.4124.i, %.val100
  br i1 %.not85.i179, label %.loopexit.thread.i173, label %bb.dm

bb.dm:                                            ; preds = %.critedge4.i178
  %i.kp = getelementptr [2 x i8], ptr %.0.i167, i64 %.4124.i
  %i.kq = sub i64 %.val100, %.4124.i
  %i.kr = tail call fastcc ptr @_PyUnicode_FromUCS2(ptr noundef nonnull readonly %i.kp, i64 noundef %i.kq), !inline_history !620 ; 8 uses
  %i.ks = icmp eq ptr %i.kr, null
  br i1 %i.ks, label %Py_DECREF.exit94.i182, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.kt = icmp slt i64 %.1.i172, 12
  br i1 %i.kt, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.ku = getelementptr i8, ptr %i.ij, i64 24
  %.val99.i186 = load ptr, ptr %i.ku, align 8, !tbaa !541
  %i.kv = getelementptr [8 x i8], ptr %.val99.i186, i64 %.1.i172
  store ptr %i.kr, ptr %i.kv, align 8, !tbaa !194
  br label %Py_DECREF.exit88.i185

bb.dp:                                            ; preds = %bb.dn
  %i.kw = tail call i32 @PyList_Append(ptr noundef nonnull %i.ij, ptr noundef nonnull %i.kr) #33, !inline_history !620
  %.not86.i180 = icmp eq i32 %i.kw, 0
  %i.kx = load i32, ptr %i.kr, align 8, !tbaa !205 ; 3 uses
  %.not.i87.i181 = icmp sgt i32 %i.kx, -1         ; 2 uses
  br i1 %.not86.i180, label %bb.ds, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  br i1 %.not.i87.i181, label %bb.dr, label %Py_DECREF.exit94.i182

bb.dr:                                            ; preds = %bb.dq
  %i.ky = add nsw i32 %i.kx, -1                   ; 2 uses
  store i32 %i.ky, ptr %i.kr, align 8, !tbaa !205
  %i.kz = icmp eq i32 %i.ky, 0
  br i1 %i.kz, label %Py_DECREF.exit94.sink.split.i184, label %Py_DECREF.exit94.i182

bb.ds:                                            ; preds = %bb.dp
  br i1 %.not.i87.i181, label %bb.dt, label %Py_DECREF.exit88.i185

bb.dt:                                            ; preds = %bb.ds
  %i.la = add nsw i32 %i.kx, -1                   ; 2 uses
  store i32 %i.la, ptr %i.kr, align 8, !tbaa !205
  %i.lb = icmp eq i32 %i.la, 0
  br i1 %i.lb, label %bb.du, label %Py_DECREF.exit88.i185

bb.du:                                            ; preds = %bb.dt
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.kr) #33, !inline_history !620
  br label %Py_DECREF.exit88.i185

Py_DECREF.exit88.i185:                            ; preds = %bb.du, %bb.dt, %bb.ds, %bb.do
  %i.lc = add nuw i64 %.1.i172, 1
  br label %.loopexit.thread.i173

.loopexit.thread.i173:                            ; preds = %.critedge.i187, %bb.cu, %bb.dl, %Py_DECREF.exit88.i185, %.critedge4.i178, %.loopexit.i170, %Py_INCREF.exit.i199
  %.2.i174 = phi i64 [ %i.lc, %Py_DECREF.exit88.i185 ], [ %.1.i172, %.critedge4.i178 ], [ %.1.i172, %.loopexit.i170 ], [ %.0119.i, %bb.cu ], [ %i.jq, %Py_INCREF.exit.i199 ], [ %.1.i172, %bb.dl ], [ %.0119.i, %.critedge.i187 ]
  %i.ld = getelementptr i8, ptr %i.ij, i64 16
  store i64 %.2.i174, ptr %i.ld, align 8, !tbaa !380
  br label %asciilib_split_whitespace.exit

Py_DECREF.exit94.sink.split.i184:                 ; preds = %bb.dr, %bb.df
  %.sink.i = phi ptr [ %i.jt, %bb.df ], [ %i.kr, %bb.dr ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink.i) #33, !inline_history !620
  br label %Py_DECREF.exit94.i182

Py_DECREF.exit94.i182:                            ; preds = %bb.da, %Py_DECREF.exit94.sink.split.i184, %bb.dr, %bb.dq, %bb.dm, %bb.df, %bb.de
  %i.le = load i32, ptr %i.ij, align 8, !tbaa !205 ; 2 uses
  %.not.i.i183 = icmp sgt i32 %i.le, -1
  br i1 %.not.i.i183, label %bb.dv, label %asciilib_split_whitespace.exit

bb.dv:                                            ; preds = %Py_DECREF.exit94.i182
  %i.lf = add nsw i32 %i.le, -1                   ; 2 uses
  store i32 %i.lf, ptr %i.ij, align 8, !tbaa !205
  %i.lg = icmp eq i32 %i.lf, 0
  br i1 %i.lg, label %bb.dw, label %asciilib_split_whitespace.exit

bb.dw:                                            ; preds = %bb.dv
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ij) #33, !inline_history !620
  br label %asciilib_split_whitespace.exit

bb.dx:                                            ; preds = %bb.d
  %i.lh = and i32 %i.c, 32
  %.not.i210 = icmp eq i32 %i.lh, 0
  br i1 %.not.i210, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.li = and i32 %i.c, 64
  %.not.i.i211 = icmp eq i32 %i.li, 0
  %.0.v.i.i212 = select i1 %.not.i.i211, i64 56, i64 40
  %.0.i.i213 = getelementptr i8, ptr %0, i64 %.0.v.i.i212
  br label %_PyUnicode_DATA.exit216

bb.dz:                                            ; preds = %bb.dx
  %i.lj = getelementptr i8, ptr %0, i64 56
  %.val4.i215 = load ptr, ptr %i.lj, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit216

_PyUnicode_DATA.exit216:                          ; preds = %bb.dy, %bb.dz
  %.0.i214 = phi ptr [ %.0.i.i213, %bb.dy ], [ %.val4.i215, %bb.dz ] ; 5 uses
  %i.lk = tail call i64 @llvm.smin.i64(i64 range(i64 -4611686018427387903, -9223372036854775808) %.081, i64 11)
  %i.ll = add nsw i64 %i.lk, 1
  %i.lm = tail call ptr @PyList_New(i64 noundef %i.ll) #33, !inline_history !625 ; 10 uses
  %i.ln = icmp eq ptr %i.lm, null
  br i1 %i.ln, label %asciilib_split_whitespace.exit, label %.preheader109.i217

.preheader109.i217:                               ; preds = %_PyUnicode_DATA.exit216
  %i.lo = icmp sgt i64 %.081, 0
  br i1 %i.lo, label %.preheader108.lr.ph.i240, label %.loopexit.i218

.preheader108.lr.ph.i240:                         ; preds = %.preheader109.i217
  %i.lp = getelementptr i8, ptr %0, i64 8
  %i.lq = getelementptr i8, ptr %i.lm, i64 24     ; 2 uses
  br label %.preheader108.i241

.preheader108.i241:                               ; preds = %Py_DECREF.exit92.i254, %.preheader108.lr.ph.i240
  %.0119.i242 = phi i64 [ 0, %.preheader108.lr.ph.i240 ], [ %i.ne, %Py_DECREF.exit92.i254 ] ; 6 uses
  %.071118.i243 = phi i64 [ 0, %.preheader108.lr.ph.i240 ], [ %.273.i248.lcssa, %Py_DECREF.exit92.i254 ] ; 3 uses
  %i.lr = icmp slt i64 %.071118.i243, %.val100
  br i1 %i.lr, label %.lr.ph.i264, label %.critedge.i244

.lr.ph.i264:                                      ; preds = %.preheader108.i241, %bb.ec
  %.172116.i265 = phi i64 [ %i.ma, %bb.ec ], [ %.071118.i243, %.preheader108.i241 ] ; 3 uses
  %i.ls = getelementptr [4 x i8], ptr %.0.i214, i64 %.172116.i265
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !7  ; 3 uses
  %i.lu = icmp ult i32 %i.lt, 128
  br i1 %i.lu, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %.lr.ph.i264
  %i.lv = zext nneg i32 %i.lt to i64
  %i.lw = getelementptr i8, ptr @_Py_ascii_whitespace, i64 %i.lv
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !205
  %i.ly = zext i8 %i.lx to i32
  br label %Py_UNICODE_ISSPACE.exit.i266

bb.eb:                                            ; preds = %.lr.ph.i264
  %i.lz = tail call i32 @_PyUnicode_IsWhitespace(i32 noundef %i.lt) #33, !inline_history !625
  br label %Py_UNICODE_ISSPACE.exit.i266

Py_UNICODE_ISSPACE.exit.i266:                     ; preds = %bb.eb, %bb.ea
  %.0.i.i267 = phi i32 [ %i.ly, %bb.ea ], [ %i.lz, %bb.eb ]
  %.not.i268 = icmp eq i32 %.0.i.i267, 0
  br i1 %.not.i268, label %.critedge.i244, label %bb.ec

bb.ec:                                            ; preds = %Py_UNICODE_ISSPACE.exit.i266
  %i.ma = add i64 %.172116.i265, 1                ; 2 uses
  %exitcond.not.i269 = icmp eq i64 %i.ma, %.val100
  br i1 %exitcond.not.i269, label %.loopexit.thread.i221, label %.lr.ph.i264, !llvm.loop !626

.critedge.i244:                                   ; preds = %Py_UNICODE_ISSPACE.exit.i266, %.preheader108.i241
  %.172.lcssa.i245 = phi i64 [ %.071118.i243, %.preheader108.i241 ], [ %.172116.i265, %Py_UNICODE_ISSPACE.exit.i266 ] ; 5 uses
  %i.mb = icmp eq i64 %.172.lcssa.i245, %.val100
  br i1 %i.mb, label %.loopexit.thread.i221, label %.preheader107.i246.preheader

.preheader107.i246.preheader:                     ; preds = %.critedge.i244
  %.273.i2481309 = add i64 %.172.lcssa.i245, 1    ; 3 uses
  %i.mc = icmp slt i64 %.273.i2481309, %.val100
  br i1 %i.mc, label %.lr.ph, label %.critedge2.i249

.preheader107.i246:                               ; preds = %Py_UNICODE_ISSPACE.exit103.i261
  %.273.i248 = add i64 %.273.i2481310, 1          ; 3 uses
  %i.md = icmp slt i64 %.273.i248, %.val100
  br i1 %i.md, label %.lr.ph, label %.critedge2.i249, !llvm.loop !627

.lr.ph:                                           ; preds = %.preheader107.i246.preheader, %.preheader107.i246
  %.273.i2481310 = phi i64 [ %.273.i248, %.preheader107.i246 ], [ %.273.i2481309, %.preheader107.i246.preheader ] ; 3 uses
  %i.me = getelementptr [4 x i8], ptr %.0.i214, i64 %.273.i2481310
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !7  ; 3 uses
  %i.mg = icmp ult i32 %i.mf, 128
  br i1 %i.mg, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %.lr.ph
  %i.mh = zext nneg i32 %i.mf to i64
  %i.mi = getelementptr i8, ptr @_Py_ascii_whitespace, i64 %i.mh
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !205
  %i.mk = zext i8 %i.mj to i32
  br label %Py_UNICODE_ISSPACE.exit103.i261

bb.ee:                                            ; preds = %.lr.ph
  %i.ml = tail call i32 @_PyUnicode_IsWhitespace(i32 noundef %i.mf) #33, !inline_history !625
  br label %Py_UNICODE_ISSPACE.exit103.i261

Py_UNICODE_ISSPACE.exit103.i261:                  ; preds = %bb.ee, %bb.ed
  %.0.i102.i262 = phi i32 [ %i.mk, %bb.ed ], [ %i.ml, %bb.ee ]
  %.not81.i263 = icmp eq i32 %.0.i102.i262, 0
  br i1 %.not81.i263, label %.preheader107.i246, label %Py_UNICODE_ISSPACE.exit103.i261..critedge2.i249_crit_edge, !llvm.loop !627

Py_UNICODE_ISSPACE.exit103.i261..critedge2.i249_crit_edge: ; preds = %Py_UNICODE_ISSPACE.exit103.i261
  br label %.critedge2.i249, !llvm.loop !627

.critedge2.i249:                                  ; preds = %.preheader107.i246, %Py_UNICODE_ISSPACE.exit103.i261..critedge2.i249_crit_edge, %.preheader107.i246.preheader
  %.273.i248.lcssa = phi i64 [ %.273.i2481310, %Py_UNICODE_ISSPACE.exit103.i261..critedge2.i249_crit_edge ], [ %.273.i2481309, %.preheader107.i246.preheader ], [ %.273.i248, %.preheader107.i246 ] ; 4 uses
  %i.mm = icmp eq i64 %.172.lcssa.i245, 0
  %i.mn = icmp eq i64 %.273.i248.lcssa, %.val100
  %or.cond.i250 = and i1 %i.mm, %i.mn
  br i1 %or.cond.i250, label %bb.ef, label %bb.ei

bb.ef:                                            ; preds = %.critedge2.i249
  %.val.i257 = load ptr, ptr %i.lp, align 8, !tbaa !197
  %.not106.i258 = icmp eq ptr %.val.i257, @PyUnicode_Type
  br i1 %.not106.i258, label %bb.eg, label %bb.ei

bb.eg:                                            ; preds = %bb.ef
  %i.mo = load i32, ptr %0, align 8, !tbaa !205   ; 2 uses
  %i.mp = icmp ugt i32 %i.mo, -1073741825
  br i1 %i.mp, label %Py_INCREF.exit.i259, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.mq = add nuw i32 %i.mo, 1
  store i32 %i.mq, ptr %0, align 8, !tbaa !205
  br label %Py_INCREF.exit.i259

Py_INCREF.exit.i259:                              ; preds = %bb.eh, %bb.eg
  %.val101.i260 = load ptr, ptr %i.lq, align 8, !tbaa !541
  store ptr %0, ptr %.val101.i260, align 8, !tbaa !194
  %i.mr = add nuw i64 %.0119.i242, 1
  br label %.loopexit.thread.i221

bb.ei:                                            ; preds = %bb.ef, %.critedge2.i249
  %i.ms = getelementptr [4 x i8], ptr %.0.i214, i64 %.172.lcssa.i245
  %i.mt = sub i64 %.273.i248.lcssa, %.172.lcssa.i245
  %i.mu = tail call fastcc ptr @_PyUnicode_FromUCS4(ptr noundef %i.ms, i64 noundef %i.mt), !inline_history !625 ; 8 uses
  %i.mv = icmp eq ptr %i.mu, null
  br i1 %i.mv, label %Py_DECREF.exit94.i234, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.mw = icmp samesign ult i64 %.0119.i242, 12
  br i1 %i.mw, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %.val100.i256 = load ptr, ptr %i.lq, align 8, !tbaa !541
  %i.mx = getelementptr [8 x i8], ptr %.val100.i256, i64 %.0119.i242
  store ptr %i.mu, ptr %i.mx, align 8, !tbaa !194
  br label %Py_DECREF.exit92.i254

bb.el:                                            ; preds = %bb.ej
  %i.my = tail call i32 @PyList_Append(ptr noundef nonnull %i.lm, ptr noundef nonnull %i.mu) #33, !inline_history !625
  %.not83.i251 = icmp eq i32 %i.my, 0
  %i.mz = load i32, ptr %i.mu, align 8, !tbaa !205 ; 3 uses
  %.not.i91.i253 = icmp sgt i32 %i.mz, -1         ; 2 uses
  br i1 %.not83.i251, label %bb.eo, label %bb.em

bb.em:                                            ; preds = %bb.el
  br i1 %.not.i91.i253, label %bb.en, label %Py_DECREF.exit94.i234

bb.en:                                            ; preds = %bb.em
  %i.na = add nsw i32 %i.mz, -1                   ; 2 uses
  store i32 %i.na, ptr %i.mu, align 8, !tbaa !205
  %i.nb = icmp eq i32 %i.na, 0
  br i1 %i.nb, label %Py_DECREF.exit94.sink.split.i236, label %Py_DECREF.exit94.i234

bb.eo:                                            ; preds = %bb.el
  br i1 %.not.i91.i253, label %bb.ep, label %Py_DECREF.exit92.i254

bb.ep:                                            ; preds = %bb.eo
  %i.nc = add nsw i32 %i.mz, -1                   ; 2 uses
  store i32 %i.nc, ptr %i.mu, align 8, !tbaa !205
  %i.nd = icmp eq i32 %i.nc, 0
  br i1 %i.nd, label %bb.eq, label %Py_DECREF.exit92.i254

bb.eq:                                            ; preds = %bb.ep
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.mu) #33, !inline_history !625
  br label %Py_DECREF.exit92.i254

Py_DECREF.exit92.i254:                            ; preds = %bb.eq, %bb.ep, %bb.eo, %bb.ek
  %i.ne = add nuw nsw i64 %.0119.i242, 1          ; 2 uses
  %exitcond131.not.i255 = icmp eq i64 %i.ne, %.081
  br i1 %exitcond131.not.i255, label %.loopexit.i218, label %.preheader108.i241, !llvm.loop !628

.loopexit.i218:                                   ; preds = %Py_DECREF.exit92.i254, %.preheader109.i217
  %.3.i219 = phi i64 [ 0, %.preheader109.i217 ], [ %.273.i248.lcssa, %Py_DECREF.exit92.i254 ] ; 2 uses
  %.1.i220 = phi i64 [ 0, %.preheader109.i217 ], [ %.081, %Py_DECREF.exit92.i254 ] ; 6 uses
  %i.nf = icmp slt i64 %.3.i219, %.val100
  br i1 %i.nf, label %.preheader.i224, label %.loopexit.thread.i221

.preheader.i224:                                  ; preds = %.loopexit.i218, %bb.et
  %.4124.i225 = phi i64 [ %i.no, %bb.et ], [ %.3.i219, %.loopexit.i218 ] ; 5 uses
  %i.ng = getelementptr [4 x i8], ptr %.0.i214, i64 %.4124.i225
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !7  ; 3 uses
  %i.ni = icmp ult i32 %i.nh, 128
  br i1 %i.ni, label %bb.er, label %bb.es

bb.er:                                            ; preds = %.preheader.i224
  %i.nj = zext nneg i32 %i.nh to i64
  %i.nk = getelementptr i8, ptr @_Py_ascii_whitespace, i64 %i.nj
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !205
  %i.nm = zext i8 %i.nl to i32
  br label %Py_UNICODE_ISSPACE.exit105.i226

bb.es:                                            ; preds = %.preheader.i224
  %i.nn = tail call i32 @_PyUnicode_IsWhitespace(i32 noundef %i.nh) #33, !inline_history !625
  br label %Py_UNICODE_ISSPACE.exit105.i226

Py_UNICODE_ISSPACE.exit105.i226:                  ; preds = %bb.es, %bb.er
  %.0.i104.i227 = phi i32 [ %i.nm, %bb.er ], [ %i.nn, %bb.es ]
  %.not84.i228 = icmp eq i32 %.0.i104.i227, 0
  br i1 %.not84.i228, label %.critedge4.i230, label %bb.et

bb.et:                                            ; preds = %Py_UNICODE_ISSPACE.exit105.i226
  %i.no = add i64 %.4124.i225, 1                  ; 2 uses
  %exitcond132.not.i229 = icmp eq i64 %i.no, %.val100
  br i1 %exitcond132.not.i229, label %.loopexit.thread.i221, label %.preheader.i224, !llvm.loop !629

.critedge4.i230:                                  ; preds = %Py_UNICODE_ISSPACE.exit105.i226
  %.not85.i231 = icmp eq i64 %.4124.i225, %.val100
  br i1 %.not85.i231, label %.loopexit.thread.i221, label %bb.eu

bb.eu:                                            ; preds = %.critedge4.i230
  %i.np = getelementptr [4 x i8], ptr %.0.i214, i64 %.4124.i225
  %i.nq = sub i64 %.val100, %.4124.i225
  %i.nr = tail call fastcc ptr @_PyUnicode_FromUCS4(ptr noundef nonnull %i.np, i64 noundef %i.nq), !inline_history !625 ; 8 uses
  %i.ns = icmp eq ptr %i.nr, null
  br i1 %i.ns, label %Py_DECREF.exit94.i234, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.nt = icmp slt i64 %.1.i220, 12
  br i1 %i.nt, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.nu = getelementptr i8, ptr %i.lm, i64 24
  %.val99.i239 = load ptr, ptr %i.nu, align 8, !tbaa !541
  %i.nv = getelementptr [8 x i8], ptr %.val99.i239, i64 %.1.i220
  store ptr %i.nr, ptr %i.nv, align 8, !tbaa !194
  br label %Py_DECREF.exit88.i238

bb.ex:                                            ; preds = %bb.ev
  %i.nw = tail call i32 @PyList_Append(ptr noundef nonnull %i.lm, ptr noundef nonnull %i.nr) #33, !inline_history !625
  %.not86.i232 = icmp eq i32 %i.nw, 0
  %i.nx = load i32, ptr %i.nr, align 8, !tbaa !205 ; 3 uses
  %.not.i87.i233 = icmp sgt i32 %i.nx, -1         ; 2 uses
  br i1 %.not86.i232, label %bb.fa, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  br i1 %.not.i87.i233, label %bb.ez, label %Py_DECREF.exit94.i234

bb.ez:                                            ; preds = %bb.ey
  %i.ny = add nsw i32 %i.nx, -1                   ; 2 uses
  store i32 %i.ny, ptr %i.nr, align 8, !tbaa !205
  %i.nz = icmp eq i32 %i.ny, 0
  br i1 %i.nz, label %Py_DECREF.exit94.sink.split.i236, label %Py_DECREF.exit94.i234

bb.fa:                                            ; preds = %bb.ex
  br i1 %.not.i87.i233, label %bb.fb, label %Py_DECREF.exit88.i238

bb.fb:                                            ; preds = %bb.fa
  %i.oa = add nsw i32 %i.nx, -1                   ; 2 uses
  store i32 %i.oa, ptr %i.nr, align 8, !tbaa !205
  %i.ob = icmp eq i32 %i.oa, 0
  br i1 %i.ob, label %bb.fc, label %Py_DECREF.exit88.i238

bb.fc:                                            ; preds = %bb.fb
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.nr) #33, !inline_history !625
  br label %Py_DECREF.exit88.i238

Py_DECREF.exit88.i238:                            ; preds = %bb.fc, %bb.fb, %bb.fa, %bb.ew
  %i.oc = add nuw i64 %.1.i220, 1
  br label %.loopexit.thread.i221

.loopexit.thread.i221:                            ; preds = %.critedge.i244, %bb.ec, %bb.et, %Py_DECREF.exit88.i238, %.critedge4.i230, %.loopexit.i218, %Py_INCREF.exit.i259
  %.2.i222 = phi i64 [ %i.oc, %Py_DECREF.exit88.i238 ], [ %.1.i220, %.critedge4.i230 ], [ %.1.i220, %.loopexit.i218 ], [ %.0119.i242, %bb.ec ], [ %i.mr, %Py_INCREF.exit.i259 ], [ %.1.i220, %bb.et ], [ %.0119.i242, %.critedge.i244 ]
  %i.od = getelementptr i8, ptr %i.lm, i64 16
  store i64 %.2.i222, ptr %i.od, align 8, !tbaa !380
  br label %asciilib_split_whitespace.exit

Py_DECREF.exit94.sink.split.i236:                 ; preds = %bb.ez, %bb.en
  %.sink.i237 = phi ptr [ %i.mu, %bb.en ], [ %i.nr, %bb.ez ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink.i237) #33, !inline_history !625
  br label %Py_DECREF.exit94.i234

Py_DECREF.exit94.i234:                            ; preds = %bb.ei, %Py_DECREF.exit94.sink.split.i236, %bb.ez, %bb.ey, %bb.eu, %bb.en, %bb.em
  %i.oe = load i32, ptr %i.lm, align 8, !tbaa !205 ; 2 uses
  %.not.i.i235 = icmp sgt i32 %i.oe, -1
  br i1 %.not.i.i235, label %bb.fd, label %asciilib_split_whitespace.exit

bb.fd:                                            ; preds = %Py_DECREF.exit94.i234
  %i.of = add nsw i32 %i.oe, -1                   ; 2 uses
  store i32 %i.of, ptr %i.lm, align 8, !tbaa !205
  %i.og = icmp eq i32 %i.of, 0
  br i1 %i.og, label %bb.fe, label %asciilib_split_whitespace.exit

bb.fe:                                            ; preds = %bb.fd
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.lm) #33, !inline_history !625
  br label %asciilib_split_whitespace.exit

bb.ff:                                            ; preds = %bb.d
  unreachable

bb.fg:                                            ; preds = %bb.a
  %i.oh = getelementptr i8, ptr %1, i64 32        ; 2 uses
  %i.oi = load i32, ptr %i.oh, align 8            ; 3 uses
  %i.oj = lshr i32 %i.oi, 2
  %i.ok = and i32 %i.oj, 7                        ; 3 uses
  %i.ol = getelementptr i8, ptr %1, i64 16
  %.val99 = load i64, ptr %i.ol, align 8, !tbaa !207 ; 16 uses
  %i.om = icmp slt i64 %2, 0
  br i1 %i.om, label %bb.fh, label %.thread

bb.fh:                                            ; preds = %bb.fg
  %i.on = icmp eq i64 %.val99, 0
  br i1 %i.on, label %.thread, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.oo = sdiv i64 %.val100, %.val99
  %.fr506 = freeze i64 %i.oo
  %i.op = add i64 %.fr506, 1                      ; 2 uses
  %i.oq = icmp slt i64 %i.op, 0
  %spec.select = select i1 %i.oq, i64 %.val100, i64 %i.op
  br label %.thread

.thread:                                          ; preds = %bb.fi, %bb.fh, %bb.fg
  %.1 = phi i64 [ %2, %bb.fg ], [ 0, %bb.fh ], [ %spec.select, %bb.fi ] ; 28 uses
  %i.or = icmp samesign ult i32 %i.e, %i.ok
  %i.os = icmp slt i64 %.val100, %.val99
  %or.cond = select i1 %i.or, i1 true, i1 %i.os
  br i1 %or.cond, label %bb.fj, label %bb.fm

bb.fj:                                            ; preds = %.thread
  %i.ot = tail call ptr @PyList_New(i64 noundef 1) #33 ; 3 uses
  %i.ou = icmp eq ptr %i.ot, null
  br i1 %i.ou, label %asciilib_split_whitespace.exit, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.ov = load i32, ptr %0, align 8, !tbaa !205   ; 2 uses
  %i.ow = icmp ugt i32 %i.ov, -1073741825
  br i1 %i.ow, label %_Py_NewRef.exit, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.ox = add nuw i32 %i.ov, 1
  store i32 %i.ox, ptr %0, align 8, !tbaa !205
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.fk, %bb.fl
  %i.oy = getelementptr i8, ptr %i.ot, i64 24
  %.val101 = load ptr, ptr %i.oy, align 8, !tbaa !541
  store ptr %0, ptr %.val101, align 8, !tbaa !194
  br label %asciilib_split_whitespace.exit

bb.fm:                                            ; preds = %.thread
  %i.oz = and i32 %i.c, 32
  %.not.i272 = icmp eq i32 %i.oz, 0
  br i1 %.not.i272, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.pa = and i32 %i.c, 64
  %.not.i.i273 = icmp eq i32 %i.pa, 0
  %.0.v.i.i274 = select i1 %.not.i.i273, i64 56, i64 40
  %.0.i.i275 = getelementptr i8, ptr %0, i64 %.0.v.i.i274
  br label %_PyUnicode_DATA.exit278

bb.fo:                                            ; preds = %bb.fm
  %i.pb = getelementptr i8, ptr %0, i64 56
  %.val4.i277 = load ptr, ptr %i.pb, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit278

_PyUnicode_DATA.exit278:                          ; preds = %bb.fn, %bb.fo
  %.0.i276 = phi ptr [ %.0.i.i275, %bb.fn ], [ %.val4.i277, %bb.fo ] ; 23 uses
  %i.pc = and i32 %i.oi, 32
  %.not.i280 = icmp eq i32 %i.pc, 0
  br i1 %.not.i280, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %_PyUnicode_DATA.exit278
  %i.pd = and i32 %i.oi, 64
  %.not.i.i281 = icmp eq i32 %i.pd, 0
  %.0.v.i.i282 = select i1 %.not.i.i281, i64 56, i64 40
  %.0.i.i283 = getelementptr i8, ptr %1, i64 %.0.v.i.i282
  br label %_PyUnicode_DATA.exit286

bb.fq:                                            ; preds = %_PyUnicode_DATA.exit278
  %i.pe = getelementptr i8, ptr %1, i64 56
  %.val4.i285 = load ptr, ptr %i.pe, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit286

_PyUnicode_DATA.exit286:                          ; preds = %bb.fp, %bb.fq
  %.0.i284 = phi ptr [ %.0.i.i283, %bb.fp ], [ %.val4.i285, %bb.fq ] ; 2 uses
  %.not = icmp eq i32 %i.ok, %i.e                 ; 2 uses
  br i1 %.not, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %_PyUnicode_DATA.exit286
  %i.pf = tail call fastcc ptr @unicode_askind(i32 noundef %i.ok, ptr noundef %.0.i284, i64 noundef %.val99, i32 noundef %i.e) ; 2 uses
  %.not93 = icmp eq ptr %i.pf, null
  br i1 %.not93, label %asciilib_split_whitespace.exit, label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %_PyUnicode_DATA.exit286
  %.080 = phi ptr [ %i.pf, %bb.fr ], [ %.0.i284, %_PyUnicode_DATA.exit286 ] ; 9 uses
  switch i32 %i.e, label %asciilib_split.exit [
    i32 1, label %bb.ft
    i32 2, label %bb.ln
    i32 4, label %bb.no
  ]

bb.ft:                                            ; preds = %bb.fs
  %.val97 = load i32, ptr %i.b, align 8
  %i.pg = and i32 %.val97, 64
  %.not94 = icmp eq i32 %i.pg, 0
  br i1 %.not94, label %bb.im, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %.val = load i32, ptr %i.oh, align 8
  %i.ph = and i32 %.val, 64
  %.not95 = icmp eq i32 %i.ph, 0
  br i1 %.not95, label %bb.im, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  switch i64 %.val99, label %bb.hg [
    i64 0, label %bb.fw
    i64 1, label %bb.fx
  ]

bb.fw:                                            ; preds = %bb.fv
  %i.pi = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.pi, ptr noundef nonnull @.str.197) #33, !inline_history !630
  br label %asciilib_split.exit

bb.fx:                                            ; preds = %bb.fv
  %i.pj = load i8, ptr %.080, align 1, !tbaa !205
  %i.pk = tail call i64 @llvm.smin.i64(i64 %.1, i64 11)
  %i.pl = add nsw i64 %i.pk, 1
  %i.pm = tail call ptr @PyList_New(i64 noundef %i.pl) #33, !inline_history !631 ; 9 uses
  %i.pn = icmp eq ptr %i.pm, null
  br i1 %i.pn, label %asciilib_split.exit, label %.lr.ph114.i.i

.lr.ph114.i.i:                                    ; preds = %bb.fx
  %i.po = getelementptr i8, ptr %i.pm, i64 24     ; 3 uses
  %i.pp = icmp sgt i64 %.1, 0
  br i1 %i.pp, label %.preheader.i.i, label %.critedge.i.i

bb.fy:                                            ; preds = %.loopexit.i.i
  %i.pq = icmp sgt i64 %.in1329, 1
  br i1 %i.pq, label %.preheader.i.i, label %.critedge.i.i, !llvm.loop !632

.preheader.i.i:                                   ; preds = %.lr.ph114.i.i, %bb.fy
  %.in1329 = phi i64 [ %i.pr, %bb.fy ], [ %.1, %.lr.ph114.i.i ] ; 2 uses
  %.056111.i.i1297 = phi i64 [ %.157.i.i, %bb.fy ], [ 0, %.lr.ph114.i.i ] ; 4 uses
  %.053112.i.i1296 = phi i64 [ %.255.i.i, %bb.fy ], [ 0, %.lr.ph114.i.i ] ; 3 uses
  %.0113.i.i1295 = phi i64 [ %.1.i.i, %bb.fy ], [ 0, %.lr.ph114.i.i ] ; 5 uses
  %i.pr = add nsw i64 %.in1329, -1
  %i.ps = icmp slt i64 %.053112.i.i1296, %.val100
  br i1 %i.ps, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.gm
  %.154109.i.i = phi i64 [ %i.qx, %bb.gm ], [ %.053112.i.i1296, %.preheader.i.i ] ; 4 uses
  %i.pt = getelementptr i8, ptr %.0.i276, i64 %.154109.i.i
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !205
  %i.pv = icmp eq i8 %i.pu, %i.pj
  br i1 %i.pv, label %bb.fz, label %bb.gm

bb.fz:                                            ; preds = %.lr.ph.i.i
  %i.pw = getelementptr i8, ptr %.0.i276, i64 %.056111.i.i1297 ; 2 uses
  %i.px = sub i64 %.154109.i.i, %.056111.i.i1297  ; 3 uses
  %i.py = icmp eq i64 %i.px, 1
  br i1 %i.py, label %_PyUnicode_FromASCII.exit.i.i, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.pz = tail call ptr @PyUnicode_New(i64 noundef %i.px, i32 noundef 127), !inline_history !633 ; 5 uses
  %.not.i83.i.i = icmp eq ptr %i.pz, null
  br i1 %.not.i83.i.i, label %Py_DECREF.exit75.i.i, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.qa = getelementptr i8, ptr %i.pz, i64 32
  %.val.i.i.i.i = load i32, ptr %i.qa, align 8    ; 2 uses
end_hunk_0
